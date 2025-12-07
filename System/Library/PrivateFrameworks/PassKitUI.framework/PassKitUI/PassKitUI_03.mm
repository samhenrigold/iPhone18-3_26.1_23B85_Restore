uint64_t sub_1BD080FA4()
{
  v1 = type metadata accessor for PaymentPassDefaultConfirmationModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));
  *v3, v4, v5, v6, v7, v8, v9, v10;
  v3[1], v11, v12, v13, v14, v15, v16, v17;
  v18 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20, &qword_1BE0DADA8) + 32));
  v19 = type metadata accessor for AvailablePass(0);
  if (!(*(*(v19 - 1) + 48))(v18, 1, v19))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v18[1], v28, v29, v30, v31, v32, v33, v34;
      v18[3], v35, v36, v37, v38, v39, v40, v41;
      v42 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v43 = sub_1BE04CF34();
      (*(*(v43 - 8) + 8))(v18 + v42, v43);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v44 = (v18 + v19[6]);
    v45 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v45 - 1) + 48))(v44, 1, v45))
    {
      v44[1], v46, v47, v48, v49, v50, v51, v52;
      v53 = v45[5];
      v54 = sub_1BE04DA84();
      (*(*(v54 - 8) + 8))(v44 + v53, v54);
      *(v44 + v45[6] + 8), v55, v56, v57, v58, v59, v60, v61;
      *(v44 + v45[7] + 8), v62, v63, v64, v65, v66, v67, v68;
      *(v44 + v45[8] + 8), v69, v70, v71, v72, v73, v74, v75;
    }

    v76 = (v18 + v19[7]);
    v77 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
    {

      v78 = *(v77 + 28);
      v79 = sub_1BE04AF64();
      v80 = *(v79 - 8);
      if (!(*(v80 + 48))(v76 + v78, 1, v79))
      {
        (*(v80 + 8))(v76 + v78, v79);
      }
    }

    v81 = v18 + v19[10];
    v82 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v82 - 8) + 48))(v81, 1, v82))
    {
      v90 = *(v81 + 2);
      if (v90 != 1)
      {
        v90, v83, v84, v85, v86, v87, v88, v89;
        *(v81 + 4), v91, v92, v93, v94, v95, v96, v97;
        *(v81 + 6), v98, v99, v100, v101, v102, v103, v104;
      }

      v149 = v1;
      v105 = *(v81 + 9);
      if (v105 != 1)
      {
        v105, v83, v84, v85, v86, v87, v88, v89;
        *(v81 + 11), v106, v107, v108, v109, v110, v111, v112;
        *(v81 + 13), v113, v114, v115, v116, v117, v118, v119;
      }

      v120 = *(v82 + 28);
      v121 = sub_1BE04AF64();
      v148 = *(v121 - 8);
      v122 = *(v148 + 48);
      if (!v122(&v81[v120], 1, v121))
      {
        (*(v148 + 8))(&v81[v120], v121);
      }

      v123 = *(v82 + 32);
      v1 = v149;
      if (!v122(&v81[v123], 1, v121))
      {
        (*(v148 + 8))(&v81[v123], v121);
      }
    }

    v124 = (v18 + v19[12]);
    if (*v124)
    {

      v124[4], v125, v126, v127, v128, v129, v130, v131;
    }

    v132 = (v18 + v19[13]);
    if (*v132)
    {

      v132[2], v133, v134, v135, v136, v137, v138, v139;
    }

    *(v18 + v19[14]), v83, v84, v85, v86, v87, v88, v89;
    *(v18 + v19[15]), v140, v141, v142, v143, v144, v145, v146;
  }

  *(v3 + *(v1 + 20) + 8), v20, v21, v22, v23, v24, v25, v26;

  return swift_deallocObject();
}

uint64_t sub_1BD0814F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F68, &qword_1BE0DB268);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D80, &qword_1BE0C9780);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F70, &qword_1BE0ECF90);
  type metadata accessor for AvailablePass(255);
  sub_1BD0DE4F4(&qword_1EBD47F78, &qword_1EBD47F68, &qword_1BE0DB268, MEMORY[0x1E697FDF8]);
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
  sub_1BD4D58A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD081670(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0, &qword_1BE0DB2F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD08172C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0, &qword_1BE0DB2F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0817DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47FB0, &qword_1BE0DB280);
  sub_1BD0DE4F4(&qword_1EBD47FD8, &qword_1EBD47FB0, &qword_1BE0DB280, MEMORY[0x1E697CCF0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD081878()
{
  v1 = (type metadata accessor for AddBankCredentialSheet(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  *(v0 + v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v0 + v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  *(v0 + v2 + 32), v17, v18, v19, v20, v21, v22, v23;
  *(v0 + v2 + 48), v24, v25, v26, v27, v28, v29, v30;
  *(v0 + v2 + 56), v31, v32, v33, v34, v35, v36, v37;
  *(v0 + v2 + 72), v38, v39, v40, v41, v42, v43, v44;
  *(v0 + v2 + 80), v45, v46, v47, v48, v49, v50, v51;
  v52 = v0 + v2 + v1[10];
  v53 = sub_1BE0492B4();
  (*(*(v53 - 8) + 8))(v52, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0, &qword_1BE0DB2F8);
  *(v52 + *(v54 + 28)), v55, v56, v57, v58, v59, v60, v61;
  *(v0 + v2 + v1[11] + 8), v62, v63, v64, v65, v66, v67, v68;

  return swift_deallocObject();
}

uint64_t sub_1BD081A2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD081AA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD081AD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1BD081C1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD081D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
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

uint64_t sub_1BD081E24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
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

uint64_t sub_1BD081F2C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD081FE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0820A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD483F0, &qword_1BE0DBFB8);
  sub_1BD4E7480();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08210C()
{
  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD08214C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48660, &qword_1BE0DC318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0821C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48660, &qword_1BE0DC318);
  sub_1BD4EB82C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD082290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_1BD4EDE3C(*a1, a3, a4, a5, a6, a7, a8, a9);
  *a2 = result;
  a2[1] = v11;
  return result;
}

uint64_t sub_1BD0822F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD08233C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04AF64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0823E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04AF64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD082498()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0824D0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD082510(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD082548()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD082580(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0825B8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0825F4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD08262C()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD082684(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0826BC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD082728()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD082760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD08282C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04AFE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD0828F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F10, &qword_1BE0DD7F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD082964()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0829A4()
{
  v0[6], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD082A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD491E8, &qword_1BE0DDD80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD082AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD491E8, &qword_1BE0DDD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD082B48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD491E8, &qword_1BE0DDD80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49210, &qword_1BE0DDDF8);
  sub_1BD50ECF0();
  sub_1BD50EE34();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD082E00(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 16), a2, a3, a4, a5, a6, a7, a8);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD082E40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD082E78(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD082EB0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD082EF0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD082F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
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

uint64_t sub_1BD083000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
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

uint64_t sub_1BD0830C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49290, &qword_1BE0DE578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD08315C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49290, &qword_1BE0DE578);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD492D0, &unk_1BE0DE5A0);
  sub_1BD5184CC();
  sub_1BD0DE4F4(&qword_1EBD492E0, &qword_1EBD492D0, &unk_1BE0DE5A0, MEMORY[0x1E697C5E0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08323C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s14MerchantOriginOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1BD08330C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s14MerchantOriginOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD0833CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD083410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1BD083558(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD083694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
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

uint64_t sub_1BD083760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
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

uint64_t sub_1BD08381C()
{
  v1 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  v10 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v11 = *(v10 + 20);
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = *(v10 + 24);
  v15 = sub_1BE0491B4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v2 + v14, 1, v15))
  {
    (*(v16 + 8))(v2 + v14, v15);
  }

  *(v2 + *(v1 + 20) + 8), v17, v18, v19, v20, v21, v22, v23;
  *(v2 + *(v1 + 24)), v24, v25, v26, v27, v28, v29, v30;

  return swift_deallocObject();
}

uint64_t sub_1BD083A04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD083A3C()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD083AD4()
{
  v1 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  *(v0 + v2 + 8), v4, v5, v6, v7, v8, v9, v10;
  v11 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v12 = *(v11 + 20);
  v13 = sub_1BE04AA64();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v2 + v12, 1, v13))
  {
    (*(v14 + 8))(v3 + v12, v13);
  }

  v15 = *(v11 + 24);
  v16 = sub_1BE0491B4();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v3 + v15, v16);
  }

  *(v3 + *(v1 + 20) + 8), v18, v19, v20, v21, v22, v23, v24;
  *(v3 + *(v1 + 24)), v25, v26, v27, v28, v29, v30, v31;

  return swift_deallocObject();
}

uint64_t sub_1BD083CC8()
{
  _Block_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1BD083D24(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680, &unk_1BE0DF290);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD083DE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680, &unk_1BE0DF290);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD083E90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700, &unk_1BE0E79F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1BD083F58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700, &unk_1BE0E79F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD084010()
{
  v1 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  *(v0 + v2 + 40), v4, v5, v6, v7, v8, v9, v10;
  *(v0 + v2 + 56), v11, v12, v13, v14, v15, v16, v17;
  *(v0 + v2 + 72), v18, v19, v20, v21, v22, v23, v24;
  *(v0 + v2 + 80), v25, v26, v27, v28, v29, v30, v31;
  *(v0 + v2 + 96), v32, v33, v34, v35, v36, v37, v38;
  *(v0 + v2 + 112), v39, v40, v41, v42, v43, v44, v45;

  *(v0 + v2 + 128), v46, v47, v48, v49, v50, v51, v52;
  v53 = v0 + v2 + *(v1 + 60);
  v54 = type metadata accessor for PaymentOfferSetupProvisioningMetadata(0);
  if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
  {
    *(v53 + 8), v55, v56, v57, v58, v59, v60, v61;
    *(v53 + 24), v62, v63, v64, v65, v66, v67, v68;
    v69 = *(v54 + 24);
    v70 = sub_1BE04AA64();
    v71 = *(v70 - 8);
    if (!(*(v71 + 48))(v53 + v69, 1, v70))
    {
      (*(v71 + 8))(v53 + v69, v70);
    }
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680, &unk_1BE0DF290);
  *(v53 + *(v72 + 28)), v73, v74, v75, v76, v77, v78, v79;
  v80 = (v0 + v2 + *(v1 + 64));

  v80[1], v81, v82, v83, v84, v85, v86, v87;
  sub_1BD528638(*(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1BD084254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49818, &qword_1BE0DF480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0842E8()
{
  v1 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  *(v0 + v2 + 40), v4, v5, v6, v7, v8, v9, v10;
  *(v0 + v2 + 56), v11, v12, v13, v14, v15, v16, v17;
  *(v0 + v2 + 72), v18, v19, v20, v21, v22, v23, v24;
  *(v0 + v2 + 80), v25, v26, v27, v28, v29, v30, v31;
  *(v0 + v2 + 96), v32, v33, v34, v35, v36, v37, v38;
  *(v0 + v2 + 112), v39, v40, v41, v42, v43, v44, v45;

  *(v0 + v2 + 128), v46, v47, v48, v49, v50, v51, v52;
  v53 = v0 + v2 + *(v1 + 60);
  v54 = type metadata accessor for PaymentOfferSetupProvisioningMetadata(0);
  if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
  {
    *(v53 + 8), v55, v56, v57, v58, v59, v60, v61;
    *(v53 + 24), v62, v63, v64, v65, v66, v67, v68;
    v69 = *(v54 + 24);
    v70 = sub_1BE04AA64();
    v71 = *(v70 - 8);
    if (!(*(v71 + 48))(v53 + v69, 1, v70))
    {
      (*(v71 + 8))(v53 + v69, v70);
    }
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680, &unk_1BE0DF290);
  *(v53 + *(v72 + 28)), v73, v74, v75, v76, v77, v78, v79;
  v80 = (v0 + v2 + *(v1 + 64));

  v80[1], v81, v82, v83, v84, v85, v86, v87;

  return swift_deallocObject();
}

uint64_t sub_1BD084630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049C34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD08469C()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1BD084728()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;
  v0[9], v22, v23, v24, v25, v26, v27, v28;
  v0[10], v29, v30, v31, v32, v33, v34, v35;

  return swift_deallocObject();
}

uint64_t sub_1BD084788(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;
  v8[8], v30, v31, v32, v33, v34, v35, v36;

  return swift_deallocObject();
}

uint64_t sub_1BD0847E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF0, &unk_1BE10FE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD084860()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C10, &qword_1BE0DFE48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C18, &qword_1BE0DFE50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C20, &qword_1BE0DFE58);
  sub_1BD53E33C();
  swift_getOpaqueTypeConformance2();
  sub_1BD0F9764();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD084AF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50, &qword_1BE0BF338);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD084B88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58, &unk_1BE0E02D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD084C44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58, &unk_1BE0E02D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD084DEC()
{
  swift_unknownObjectRelease();

  v0[9], v1, v2, v3, v4, v5, v6, v7;
  v0[11], v8, v9, v10, v11, v12, v13, v14;

  v0[13], v15, v16, v17, v18, v19, v20, v21;
  v0[15], v22, v23, v24, v25, v26, v27, v28;
  v0[16], v29, v30, v31, v32, v33, v34, v35;
  v0[17], v36, v37, v38, v39, v40, v41, v42;

  return swift_deallocObject();
}

uint64_t sub_1BD084ED0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F70, &qword_1BE0E0688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FE0, &qword_1BE0E06E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F68, &qword_1BE0E0680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FA8, &qword_1BE0E06A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F60, &qword_1BE0E0678);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F08, &unk_1BE0E0480);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F58, &qword_1BE0E0670);
  sub_1BD54C480();
  sub_1BD54C530();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BD54C5F0();
  swift_getOpaqueTypeConformance2();
  sub_1BD54C914();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD085098()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0850D0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD085158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD551860(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD085184(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD085240(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0852F4()
{
  if (*(v0 + 24))
  {
    *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  }

  if (*(v0 + 40))
  {
    *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08534C()
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

uint64_t sub_1BD085578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F364();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0855E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F224();
  *a1 = result;
  return result;
}

uint64_t sub_1BD085634(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD08566C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB3C340]();
  *a1 = result;
  return result;
}

uint64_t sub_1BD085728@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F3A4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD085804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0858D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD08599C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7F0, &qword_1BE0E1530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD085A24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7F0, &qword_1BE0E1530);
  sub_1BD55D34C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD085AA8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD085AE0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD085B1C(uint64_t *a1)
{
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v1 = sub_1BE04EBD4();
  swift_getWitnessTable();
  v5 = MEMORY[0x1E697F940];
  sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for OffsetScrollView(255, v1, WitnessTable, v3);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860, &qword_1BE0E1660);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860, &qword_1BE0E1660, v5);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868, &qword_1BE0E1668);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868, &qword_1BE0E1668, v5);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0860AC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0860EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD08612C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 24))
  {
    *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD086174(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 16))
  {
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0861B4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0861F0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD086230()
{

  return swift_deallocObject();
}

uint64_t sub_1BD086268(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0862C0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0862F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD086338()
{
  if (*(v0 + 24))
  {
    *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD086380(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  if (*(v8 + 40))
  {
    *(v8 + 48), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0863E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD08641C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 24))
  {
    *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD086464()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08649C()
{
  swift_unknownObjectRelease();

  v0[5], v1, v2, v3, v4, v5, v6, v7;
  v0[12], v8, v9, v10, v11, v12, v13, v14;
  v0[14], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD08650C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AvailablePass(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0865B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AvailablePass(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD08665C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD086694()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0866CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD08670C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE049364();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD0867D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE049364();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD086900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE20, &qword_1BE0E22A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD086A18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD086A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD086AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD086BC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 16) = (a2 + 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD086C78(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40, &unk_1BE0DFFB0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[8];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8, &unk_1BE0DFF70);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[9]];

  return v17(v18, a2, v16);
}

char *sub_1BD086E5C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40, &unk_1BE0DFFB0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8, &unk_1BE0DFF70);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BD0870F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08712C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD087174(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0871AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258, &unk_1BE0FD4A0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1BD0872F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258, &unk_1BE0FD4A0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1BD08743C()
{
  v1 = sub_1BE04D474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 32) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  v8 = v0 + v6 + v5[7];
  v9 = sub_1BE04AF64();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v10(v8 + *(v11 + 36), v9);
  *(v0 + v6 + v5[8] + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v6 + v5[9]), v19, v20, v21, v22, v23, v24, v25;
  v26 = v5[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_1BE04EB44();
    (*(*(v34 - 8) + 8))(v7 + v26, v34);
  }

  else
  {
    *(v7 + v26), v27, v28, v29, v30, v31, v32, v33;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD087684(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0876BC()
{
  v1 = (type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  *(v0 + 16), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v2;
  v11 = v0 + v2 + v1[7];
  v12 = sub_1BE04AF64();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v13(v11 + *(v14 + 36), v12);
  *(v0 + v2 + v1[8] + 8), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + v2 + v1[9]), v22, v23, v24, v25, v26, v27, v28;
  v29 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_1BE04EB44();
    (*(*(v37 - 8) + 8))(v10 + v29, v37);
  }

  else
  {
    *(v10 + v29), v30, v31, v32, v33, v34, v35, v36;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD087874()
{
  v1 = (type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v34 = *(*v1 + 64);
  v36 = sub_1BE04D474();
  v3 = *(v36 - 8);
  v4 = *(v3 + 80);
  v35 = v2;
  v5 = v0 + v2;
  v6 = v0 + v2 + v1[7];
  v7 = sub_1BE04AF64();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v8(v6 + *(v9 + 36), v7);
  *(v5 + v1[8] + 8), v10, v11, v12, v13, v14, v15, v16;
  *(v5 + v1[9]), v17, v18, v19, v20, v21, v22, v23;
  v24 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1BE04EB44();
    (*(*(v32 - 8) + 8))(v5 + v24, v32);
  }

  else
  {
    *(v5 + v24), v25, v26, v27, v28, v29, v30, v31;
  }

  (*(v3 + 8))(v0 + ((v35 + v34 + v4) & ~v4), v36);

  return swift_deallocObject();
}

uint64_t sub_1BD087AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD087B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD087BC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2B0, &qword_1BE0E2E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B310, &qword_1BE0E2EB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2A8, &qword_1BE0E2E68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB80, &qword_1BE0BD160);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2A0, &qword_1BE0E2E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B300, &unk_1BE0E2EA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B298, &qword_1BE0E2E58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B290, &qword_1BE0E2E50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2F0, &qword_1BE0E2E98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B288, &qword_1BE0E2E48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B280, &qword_1BE0E2E40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2C8, &qword_1BE0E2E88);
  sub_1BD0DE4F4(&qword_1EBD4B2D0, &qword_1EBD4B280, &qword_1BE0E2E40, MEMORY[0x1E695B218]);
  sub_1BD58D1F4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  v0 = MEMORY[0x1E695B2D0];
  sub_1BD0DE4F4(&qword_1EBD4B2F8, &qword_1EBD4B2F0, &qword_1BE0E2E98, MEMORY[0x1E695B2D0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD4B308, &qword_1EBD4B300, &unk_1BE0E2EA0, v0);
  swift_getOpaqueTypeConformance2();
  sub_1BD19CE20();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD4B318, &qword_1EBD4B310, &qword_1BE0E2EB0, MEMORY[0x1E697E378]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD087F28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD087FE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD088098()
{
  v1 = (type metadata accessor for FinanceKitTransactionTypeView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  *(v0 + v2), v4, v5, v6, v7, v8, v9, v10;
  *(v0 + v2 + 8), v11, v12, v13, v14, v15, v16, v17;
  *(v0 + v2 + 24), v18, v19, v20, v21, v22, v23, v24;
  *(v0 + v2 + 40), v25, v26, v27, v28, v29, v30, v31;
  v32 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = sub_1BE04E664();
    (*(*(v40 - 8) + 8))(v3 + v32, v40);
  }

  else
  {
    *(v3 + v32), v33, v34, v35, v36, v37, v38, v39;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0881D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371E0, &qword_1BE0B1200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD08824C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD08828C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B578, &qword_1BE0E3300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD088390()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371E0, &qword_1BE0B1200);
  sub_1BD595864();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD088404()
{

  return swift_deallocObject();
}

uint64_t sub_1BD088440(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0884FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0885B4()
{
  v1 = type metadata accessor for FavoritesView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  *(v0 + v2), v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1BE04E664();
    (*(*(v20 - 8) + 8))(v4 + v12, v20);
  }

  else
  {
    *(v4 + v12), v13, v14, v15, v16, v17, v18, v19;
  }

  *(v4 + *(v1 + 24) + 8), v21, v22, v23, v24, v25, v26, v27;

  return swift_deallocObject();
}

uint64_t sub_1BD08875C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD088818()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD088858(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0888A0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0888D8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD088920()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD08896C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0889B4()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD088A04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD088A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B890, &qword_1BE0E3B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD088B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04E724();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD088B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04E724();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD088BEC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD088C3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD088CF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD088DA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AutomaticSheetViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1BE04FC14();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_1BE04F9B4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1BD088F1C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD088F54()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD088F8C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD088FD4()
{
  v0[6], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD08904C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC30, &qword_1BE0E4DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0890C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC10, &qword_1BE0E4DB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD089130(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  v23 = *(v8 + 64);
  if (v23 >= 5)
  {
    v23, v16, v17, v18, v19, v20, v21, v22;
  }

  *(v8 + 80), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 96), v24, v25, v26, v27, v28, v29, v30;
  sub_1BD0D4604(*(v8 + 104), *(v8 + 112), v31, v32, v33, v34, v35, v36);
  sub_1BD035CB4(*(v8 + 120), *(v8 + 128), *(v8 + 136), v37, v38, v39, v40, v41);
  v49 = *(v8 + 144);
  if (v49 != 1)
  {
  }

  *(v8 + 152), v42, v43, v44, v45, v46, v47, v48;

  return swift_deallocObject();
}

uint64_t sub_1BD089204()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD089240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
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

uint64_t sub_1BD08930C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
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

uint64_t sub_1BD089408(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD089470()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0894BC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

void *sub_1BD089508@<X0>(void *a1@<X8>)
{
  sub_1BD5BCCF4();
  result = sub_1BE04F3E4();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD08955C(uint64_t *a1)
{
  sub_1BE04E924();
  sub_1BE04EC14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C070, &qword_1BE0E55D8);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD5BCC90();
  return swift_getWitnessTable();
}

void sub_1BD08963C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0D04(v1);
}

uint64_t sub_1BD08966C()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1BD08971C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0B88(v1);
}

void sub_1BD089774(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0E80(v1);
}

void sub_1BD0897CC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0714(v1);
}

void sub_1BD089824(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0A0C(v1);
}

void sub_1BD08987C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C1108(v1);
}

void sub_1BD0898D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0890(v1);
}

uint64_t sub_1BD089908(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 16))
  {
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD089948(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;

  v8[9], v30, v31, v32, v33, v34, v35, v36;

  return swift_deallocObject();
}

uint64_t sub_1BD0899B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD089A34()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD089A74()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD089AAC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD089AE4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD089B2C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD089B84()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;
  v0[10], v8, v9, v10, v11, v12, v13, v14;
  v0[11], v15, v16, v17, v18, v19, v20, v21;
  v0[12], v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1BD089BDC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD089C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C330, &qword_1BE0E5DB0);
  sub_1BD5CA4D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD089CF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD089DB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD089E68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C498, &qword_1BE0E6208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD089ED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C498, &qword_1BE0E6208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD089F40()
{
  v1 = type metadata accessor for BankAccountSheet(0);
  v2 = *(*(v1 - 8) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);
  *v3, v4, v5, v6, v7, v8, v9, v10;
  *(v3 + 16), v11, v12, v13, v14, v15, v16, v17;
  *(v3 + 32), v18, v19, v20, v21, v22, v23, v24;
  *(v3 + 48), v25, v26, v27, v28, v29, v30, v31;
  *(v3 + 64), v32, v33, v34, v35, v36, v37, v38;
  *(v3 + 72), v39, v40, v41, v42, v43, v44, v45;
  v53 = *(v3 + 80);
  if (v53)
  {
    if (v53 == 1)
    {
      goto LABEL_5;
    }
  }

  *(v3 + 96), v46, v47, v48, v49, v50, v51, v52;
  *(v3 + 104), v54, v55, v56, v57, v58, v59, v60;
LABEL_5:
  v61 = (v3 + *(v1 + 44));
  v62 = type metadata accessor for PeerPaymentModel(0);
  if (!(*(*(v62 - 1) + 48))(v61, 1, v62))
  {

    v70 = (v61 + v62[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v225 = v1;
    if (EnumCaseMultiPayload == 2)
    {
      v70[1], v72, v73, v74, v75, v76, v77, v78;
      v70[3], v79, v80, v81, v82, v83, v84, v85;
      v86 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v87 = sub_1BE04CF34();
      (*(*(v87 - 8) + 8))(v70 + v86, v87);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v88 = type metadata accessor for AvailablePass(0);
    v89 = (v70 + v88[6]);
    v90 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v90 - 1) + 48))(v89, 1, v90))
    {
      v89[1], v91, v92, v93, v94, v95, v96, v97;
      v98 = v90[5];
      v99 = sub_1BE04DA84();
      (*(*(v99 - 8) + 8))(v89 + v98, v99);
      *(v89 + v90[6] + 8), v100, v101, v102, v103, v104, v105, v106;
      *(v89 + v90[7] + 8), v107, v108, v109, v110, v111, v112, v113;
      *(v89 + v90[8] + 8), v114, v115, v116, v117, v118, v119, v120;
    }

    v121 = (v70 + v88[7]);
    v122 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v122 - 8) + 48))(v121, 1, v122))
    {

      v123 = *(v122 + 28);
      v124 = sub_1BE04AF64();
      v125 = *(v124 - 8);
      if (!(*(v125 + 48))(v121 + v123, 1, v124))
      {
        (*(v125 + 8))(v121 + v123, v124);
      }
    }

    v126 = v70 + v88[10];
    v127 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v127 - 8) + 48))(v126, 1, v127))
    {
      v135 = *(v126 + 2);
      if (v135 != 1)
      {
        v135, v128, v129, v130, v131, v132, v133, v134;
        *(v126 + 4), v136, v137, v138, v139, v140, v141, v142;
        *(v126 + 6), v143, v144, v145, v146, v147, v148, v149;
      }

      v224 = v61;
      v150 = *(v126 + 9);
      if (v150 != 1)
      {
        v150, v128, v129, v130, v131, v132, v133, v134;
        *(v126 + 11), v151, v152, v153, v154, v155, v156, v157;
        *(v126 + 13), v158, v159, v160, v161, v162, v163, v164;
      }

      v165 = *(v127 + 28);
      v166 = sub_1BE04AF64();
      v223 = *(v166 - 8);
      v167 = *(v223 + 48);
      if (!v167(&v126[v165], 1, v166))
      {
        (*(v223 + 8))(&v126[v165], v166);
      }

      v168 = *(v127 + 32);
      v61 = v224;
      if (!v167(&v126[v168], 1, v166))
      {
        (*(v223 + 8))(&v126[v168], v166);
      }
    }

    v169 = (v70 + v88[12]);
    if (*v169)
    {

      v169[4], v170, v171, v172, v173, v174, v175, v176;
    }

    v177 = (v70 + v88[13]);
    if (*v177)
    {

      v177[2], v178, v179, v180, v181, v182, v183, v184;
    }

    *(v70 + v88[14]), v128, v129, v130, v131, v132, v133, v134;
    *(v70 + v88[15]), v185, v186, v187, v188, v189, v190, v191;
    v192 = (v61 + v62[6]);
    v1 = v225;
    if (*v192 != 1)
    {

      v200 = v192[3];
      if (v200)
      {
        v200, v193, v194, v195, v196, v197, v198, v199;
        v192[5], v201, v202, v203, v204, v205, v206, v207;
        v192[7], v208, v209, v210, v211, v212, v213, v214;
        v192[9], v215, v216, v217, v218, v219, v220, v221;
      }
    }
  }

  *(v3 + *(v1 + 48) + 8), v63, v64, v65, v66, v67, v68, v69;

  return swift_deallocObject();
}

uint64_t sub_1BD08A554()
{
  v1 = v0;
  v2 = type metadata accessor for BankAccountSheet(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64) + v4 + 7;
  v6 = v0 + v4;
  *v6, v7, v8, v9, v10, v11, v12, v13;
  *(v6 + 16), v14, v15, v16, v17, v18, v19, v20;
  *(v6 + 32), v21, v22, v23, v24, v25, v26, v27;
  *(v6 + 48), v28, v29, v30, v31, v32, v33, v34;
  *(v6 + 64), v35, v36, v37, v38, v39, v40, v41;
  *(v6 + 72), v42, v43, v44, v45, v46, v47, v48;
  v56 = *(v6 + 80);
  if (v56)
  {
    if (v56 == 1)
    {
      goto LABEL_5;
    }
  }

  *(v6 + 96), v49, v50, v51, v52, v53, v54, v55;
  *(v6 + 104), v57, v58, v59, v60, v61, v62, v63;
LABEL_5:
  v64 = v5 & 0xFFFFFFFFFFFFFFF8;
  v65 = (v6 + *(v2 + 44));
  v66 = type metadata accessor for PeerPaymentModel(0);
  if (!(*(*(v66 - 1) + 48))(v65, 1, v66))
  {

    v74 = (v65 + v66[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v247 = v64;
    v248 = v2;
    if (EnumCaseMultiPayload == 2)
    {
      v74[1], v76, v77, v78, v79, v80, v81, v82;
      v74[3], v83, v84, v85, v86, v87, v88, v89;
      v90 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v91 = sub_1BE04CF34();
      (*(*(v91 - 8) + 8))(v74 + v90, v91);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v92 = type metadata accessor for AvailablePass(0);
    v93 = (v74 + v92[6]);
    v94 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v94 - 1) + 48))(v93, 1, v94))
    {
      v93[1], v95, v96, v97, v98, v99, v100, v101;
      v102 = v94[5];
      v103 = sub_1BE04DA84();
      (*(*(v103 - 8) + 8))(v93 + v102, v103);
      *(v93 + v94[6] + 8), v104, v105, v106, v107, v108, v109, v110;
      *(v93 + v94[7] + 8), v111, v112, v113, v114, v115, v116, v117;
      *(v93 + v94[8] + 8), v118, v119, v120, v121, v122, v123, v124;
    }

    v125 = (v74 + v92[7]);
    v126 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v126 - 8) + 48))(v125, 1, v126))
    {

      v127 = *(v126 + 28);
      v128 = sub_1BE04AF64();
      v129 = *(v128 - 8);
      if (!(*(v129 + 48))(v125 + v127, 1, v128))
      {
        (*(v129 + 8))(v125 + v127, v128);
      }
    }

    v130 = v74 + v92[10];
    v131 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v131 - 8) + 48))(v130, 1, v131))
    {
      v139 = *(v130 + 2);
      if (v139 != 1)
      {
        v139, v132, v133, v134, v135, v136, v137, v138;
        *(v130 + 4), v140, v141, v142, v143, v144, v145, v146;
        *(v130 + 6), v147, v148, v149, v150, v151, v152, v153;
      }

      v245 = v65;
      v246 = v1;
      v154 = *(v130 + 9);
      if (v154 != 1)
      {
        v154, v132, v133, v134, v135, v136, v137, v138;
        *(v130 + 11), v155, v156, v157, v158, v159, v160, v161;
        *(v130 + 13), v162, v163, v164, v165, v166, v167, v168;
      }

      v169 = *(v131 + 28);
      v170 = sub_1BE04AF64();
      v244 = *(v170 - 8);
      v171 = *(v244 + 48);
      if (!v171(&v130[v169], 1, v170))
      {
        (*(v244 + 8))(&v130[v169], v170);
      }

      v172 = *(v131 + 32);
      v173 = v171(&v130[v172], 1, v170);
      v65 = v245;
      v1 = v246;
      if (!v173)
      {
        (*(v244 + 8))(&v130[v172], v170);
      }
    }

    v174 = (v74 + v92[12]);
    if (*v174)
    {

      v174[4], v175, v176, v177, v178, v179, v180, v181;
    }

    v182 = (v74 + v92[13]);
    if (*v182)
    {

      v182[2], v183, v184, v185, v186, v187, v188, v189;
    }

    *(v74 + v92[14]), v132, v133, v134, v135, v136, v137, v138;
    *(v74 + v92[15]), v190, v191, v192, v193, v194, v195, v196;
    v197 = (v65 + v66[6]);
    v64 = v247;
    v2 = v248;
    if (*v197 != 1)
    {

      v205 = v197[3];
      if (v205)
      {
        v205, v198, v199, v200, v201, v202, v203, v204;
        v197[5], v206, v207, v208, v209, v210, v211, v212;
        v197[7], v213, v214, v215, v216, v217, v218, v219;
        v197[9], v220, v221, v222, v223, v224, v225, v226;
      }
    }
  }

  *(v6 + *(v2 + 48) + 8), v67, v68, v69, v70, v71, v72, v73;
  v234 = (v1 + v64);
  v235 = *(v1 + v64);
  if (v235)
  {
  }

  v234[2], v227, v228, v229, v230, v231, v232, v233;
  v234[3], v236, v237, v238, v239, v240, v241, v242;

  return swift_deallocObject();
}

uint64_t sub_1BD08AB80()
{
  v1 = v0;
  v2 = type metadata accessor for BankAccountSheet(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;
  *v6, v7, v8, v9, v10, v11, v12, v13;
  *(v6 + 16), v14, v15, v16, v17, v18, v19, v20;
  *(v6 + 32), v21, v22, v23, v24, v25, v26, v27;
  *(v6 + 48), v28, v29, v30, v31, v32, v33, v34;
  *(v6 + 64), v35, v36, v37, v38, v39, v40, v41;
  *(v6 + 72), v42, v43, v44, v45, v46, v47, v48;
  v56 = *(v6 + 80);
  if (v56)
  {
    if (v56 == 1)
    {
      goto LABEL_5;
    }
  }

  *(v6 + 96), v49, v50, v51, v52, v53, v54, v55;
  *(v6 + 104), v57, v58, v59, v60, v61, v62, v63;
LABEL_5:
  v64 = (v6 + *(v2 + 44));
  v65 = type metadata accessor for PeerPaymentModel(0);
  if (!(*(*(v65 - 1) + 48))(v64, 1, v65))
  {

    v73 = (v64 + v65[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v232 = v4;
    v233 = v2;
    v231 = v5;
    if (EnumCaseMultiPayload == 2)
    {
      v73[1], v75, v76, v77, v78, v79, v80, v81;
      v73[3], v82, v83, v84, v85, v86, v87, v88;
      v89 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v90 = sub_1BE04CF34();
      (*(*(v90 - 8) + 8))(v73 + v89, v90);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v91 = type metadata accessor for AvailablePass(0);
    v92 = (v73 + v91[6]);
    v93 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v93 - 1) + 48))(v92, 1, v93))
    {
      v92[1], v94, v95, v96, v97, v98, v99, v100;
      v101 = v93[5];
      v102 = sub_1BE04DA84();
      (*(*(v102 - 8) + 8))(v92 + v101, v102);
      *(v92 + v93[6] + 8), v103, v104, v105, v106, v107, v108, v109;
      *(v92 + v93[7] + 8), v110, v111, v112, v113, v114, v115, v116;
      *(v92 + v93[8] + 8), v117, v118, v119, v120, v121, v122, v123;
    }

    v124 = (v73 + v91[7]);
    v125 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v125 - 8) + 48))(v124, 1, v125))
    {

      v126 = *(v125 + 28);
      v127 = sub_1BE04AF64();
      v128 = *(v127 - 8);
      if (!(*(v128 + 48))(v124 + v126, 1, v127))
      {
        (*(v128 + 8))(v124 + v126, v127);
      }
    }

    v129 = v73 + v91[10];
    v130 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v130 - 8) + 48))(v129, 1, v130))
    {
      v138 = *(v129 + 2);
      if (v138 != 1)
      {
        v138, v131, v132, v133, v134, v135, v136, v137;
        *(v129 + 4), v139, v140, v141, v142, v143, v144, v145;
        *(v129 + 6), v146, v147, v148, v149, v150, v151, v152;
      }

      v229 = v64;
      v230 = v1;
      v153 = *(v129 + 9);
      if (v153 != 1)
      {
        v153, v131, v132, v133, v134, v135, v136, v137;
        *(v129 + 11), v154, v155, v156, v157, v158, v159, v160;
        *(v129 + 13), v161, v162, v163, v164, v165, v166, v167;
      }

      v168 = *(v130 + 28);
      v169 = sub_1BE04AF64();
      v228 = *(v169 - 8);
      v170 = *(v228 + 48);
      if (!v170(&v129[v168], 1, v169))
      {
        (*(v228 + 8))(&v129[v168], v169);
      }

      v171 = *(v130 + 32);
      v172 = v170(&v129[v171], 1, v169);
      v64 = v229;
      v1 = v230;
      if (!v172)
      {
        (*(v228 + 8))(&v129[v171], v169);
      }
    }

    v173 = (v73 + v91[12]);
    if (*v173)
    {

      v173[4], v174, v175, v176, v177, v178, v179, v180;
    }

    v181 = (v73 + v91[13]);
    v5 = v231;
    if (*v181)
    {

      v181[2], v182, v183, v184, v185, v186, v187, v188;
    }

    *(v73 + v91[14]), v131, v132, v133, v134, v135, v136, v137;
    *(v73 + v91[15]), v189, v190, v191, v192, v193, v194, v195;
    v196 = (v64 + v65[6]);
    v4 = v232;
    v2 = v233;
    if (*v196 != 1)
    {

      v204 = v196[3];
      if (v204)
      {
        v204, v197, v198, v199, v200, v201, v202, v203;
        v196[5], v205, v206, v207, v208, v209, v210, v211;
        v196[7], v212, v213, v214, v215, v216, v217, v218;
        v196[9], v219, v220, v221, v222, v223, v224, v225;
      }
    }
  }

  v226 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v6 + *(v2 + 48) + 8), v66, v67, v68, v69, v70, v71, v72;

  return swift_deallocObject();
}

uint64_t sub_1BD08B1A0()
{
  v1 = type metadata accessor for BankAccountSheet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  *(v0 + 16), v5, v6, v7, v8, v9, v10, v11;
  v12 = (v0 + v3);
  *(v0 + v3), v13, v14, v15, v16, v17, v18, v19;
  *(v0 + v3 + 16), v20, v21, v22, v23, v24, v25, v26;
  *(v0 + v3 + 32), v27, v28, v29, v30, v31, v32, v33;
  *(v0 + v3 + 48), v34, v35, v36, v37, v38, v39, v40;
  *(v0 + v3 + 64), v41, v42, v43, v44, v45, v46, v47;
  *(v0 + v3 + 72), v48, v49, v50, v51, v52, v53, v54;
  v62 = *(v0 + v3 + 80);
  if (v62)
  {
    if (v62 == 1)
    {
      goto LABEL_5;
    }
  }

  v12[12], v55, v56, v57, v58, v59, v60, v61;
  v12[13], v63, v64, v65, v66, v67, v68, v69;
LABEL_5:
  v70 = (v12 + *(v1 + 44));
  v71 = type metadata accessor for PeerPaymentModel(0);
  if (!(*(*(v71 - 1) + 48))(v70, 1, v71))
  {
    v243 = v1;

    v79 = (v70 + v71[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v242 = v4;
    v241 = v70;
    if (EnumCaseMultiPayload == 2)
    {
      v79[1], v81, v82, v83, v84, v85, v86, v87;
      v79[3], v88, v89, v90, v91, v92, v93, v94;
      v95 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v96 = sub_1BE04CF34();
      (*(*(v96 - 8) + 8))(v79 + v95, v96);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v97 = type metadata accessor for AvailablePass(0);
    v98 = (v79 + v97[6]);
    v99 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v99 - 1) + 48))(v98, 1, v99))
    {
      v98[1], v100, v101, v102, v103, v104, v105, v106;
      v107 = v99[5];
      v108 = sub_1BE04DA84();
      (*(*(v108 - 8) + 8))(v98 + v107, v108);
      *(v98 + v99[6] + 8), v109, v110, v111, v112, v113, v114, v115;
      *(v98 + v99[7] + 8), v116, v117, v118, v119, v120, v121, v122;
      *(v98 + v99[8] + 8), v123, v124, v125, v126, v127, v128, v129;
    }

    v130 = (v79 + v97[7]);
    v131 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v131 - 8) + 48))(v130, 1, v131))
    {

      v132 = *(v131 + 28);
      v133 = sub_1BE04AF64();
      v134 = *(v133 - 8);
      if (!(*(v134 + 48))(v130 + v132, 1, v133))
      {
        (*(v134 + 8))(v130 + v132, v133);
      }
    }

    v135 = v79 + v97[10];
    v136 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v136 - 8) + 48))(v135, 1, v136))
    {
      v144 = *(v135 + 2);
      if (v144 != 1)
      {
        v144, v137, v138, v139, v140, v141, v142, v143;
        *(v135 + 4), v145, v146, v147, v148, v149, v150, v151;
        *(v135 + 6), v152, v153, v154, v155, v156, v157, v158;
      }

      v240 = v0;
      v159 = *(v135 + 9);
      if (v159 != 1)
      {
        v159, v137, v138, v139, v140, v141, v142, v143;
        *(v135 + 11), v160, v161, v162, v163, v164, v165, v166;
        *(v135 + 13), v167, v168, v169, v170, v171, v172, v173;
      }

      v174 = *(v136 + 28);
      v175 = sub_1BE04AF64();
      v239 = *(v175 - 8);
      v176 = *(v239 + 48);
      if (!v176(&v135[v174], 1, v175))
      {
        (*(v239 + 8))(&v135[v174], v175);
      }

      v177 = *(v136 + 32);
      v0 = v240;
      if (!v176(&v135[v177], 1, v175))
      {
        (*(v239 + 8))(&v135[v177], v175);
      }
    }

    v178 = (v79 + v97[12]);
    if (*v178)
    {

      v178[4], v179, v180, v181, v182, v183, v184, v185;
    }

    v186 = (v79 + v97[13]);
    if (*v186)
    {

      v186[2], v187, v188, v189, v190, v191, v192, v193;
    }

    *(v79 + v97[14]), v137, v138, v139, v140, v141, v142, v143;
    *(v79 + v97[15]), v194, v195, v196, v197, v198, v199, v200;
    v201 = (v241 + v71[6]);
    v4 = v242;
    v3 = (v2 + 24) & ~v2;
    if (*v201 != 1)
    {

      v209 = v201[3];
      if (v209)
      {
        v209, v202, v203, v204, v205, v206, v207, v208;
        v201[5], v210, v211, v212, v213, v214, v215, v216;
        v201[7], v217, v218, v219, v220, v221, v222, v223;
        v201[9], v224, v225, v226, v227, v228, v229, v230;
      }
    }

    v1 = v243;
  }

  *(v12 + *(v1 + 48) + 8), v72, v73, v74, v75, v76, v77, v78;
  *(v0 + ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v231, v232, v233, v234, v235, v236, v237;

  return swift_deallocObject();
}

uint64_t sub_1BD08B7D4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 56), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 72), v16, v17, v18, v19, v20, v21, v22;
  v30 = *(v8 + 88);
  if (v30)
  {
    v30, v23, v24, v25, v26, v27, v28, v29;
    *(v8 + 112), v31, v32, v33, v34, v35, v36, v37;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08B830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6E8, &qword_1BE0E64A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD08B898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C6E8, &qword_1BE0E64A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD08B928(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C6C0, &qword_1BE0E6480);
  sub_1BD0DE4F4(&qword_1EBD4C6C8, &qword_1EBD4C6C0, &qword_1BE0E6480, MEMORY[0x1E697C5E0]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  type metadata accessor for PushNavigationStack(255, OpaqueTypeMetadata2, OpaqueTypeConformance2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1BD08BAD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD08BB0C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  swift_unknownObjectRelease();
  v8[8], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD08BD84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD08BE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Passes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BD08BEFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Passes(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD08BFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C978, &unk_1BE0E6BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD08C02C()
{
  v1 = type metadata accessor for IdentityPassMethodSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  *(v0 + 16), v5, v6, v7, v8, v9, v10, v11;
  v12 = v0 + v3;
  v13 = (v0 + v3 + v1[5]);
  v14 = type metadata accessor for AvailablePass(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v218 = v4;
    v219 = (v2 + 24) & ~v2;
    if (EnumCaseMultiPayload == 2)
    {
      v13[1], v16, v17, v18, v19, v20, v21, v22;
      v13[3], v23, v24, v25, v26, v27, v28, v29;
      v30 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v31 = sub_1BE04CF34();
      (*(*(v31 - 8) + 8))(v13 + v30, v31);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v32 = (v13 + v14[6]);
    v33 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v33 - 1) + 48))(v32, 1, v33))
    {
      v32[1], v34, v35, v36, v37, v38, v39, v40;
      v41 = v33[5];
      v42 = sub_1BE04DA84();
      (*(*(v42 - 8) + 8))(v32 + v41, v42);
      *(v32 + v33[6] + 8), v43, v44, v45, v46, v47, v48, v49;
      *(v32 + v33[7] + 8), v50, v51, v52, v53, v54, v55, v56;
      *(v32 + v33[8] + 8), v57, v58, v59, v60, v61, v62, v63;
    }

    v64 = (v13 + v14[7]);
    v65 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
    {

      v66 = *(v65 + 28);
      v67 = sub_1BE04AF64();
      v68 = *(v67 - 8);
      if (!(*(v68 + 48))(v64 + v66, 1, v67))
      {
        (*(v68 + 8))(v64 + v66, v67);
      }
    }

    v69 = v13 + v14[10];
    v70 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v70 - 8) + 48))(v69, 1, v70))
    {
      v78 = *(v69 + 2);
      if (v78 != 1)
      {
        v78, v71, v72, v73, v74, v75, v76, v77;
        *(v69 + 4), v79, v80, v81, v82, v83, v84, v85;
        *(v69 + 6), v86, v87, v88, v89, v90, v91, v92;
      }

      v93 = *(v69 + 9);
      if (v93 != 1)
      {
        v93, v71, v72, v73, v74, v75, v76, v77;
        *(v69 + 11), v94, v95, v96, v97, v98, v99, v100;
        *(v69 + 13), v101, v102, v103, v104, v105, v106, v107;
      }

      v108 = *(v70 + 28);
      v109 = sub_1BE04AF64();
      v217 = *(v109 - 8);
      v216 = v108;
      v110 = &v69[v108];
      v111 = *(v217 + 48);
      if (!v111(v110, 1, v109))
      {
        (*(v217 + 8))(&v69[v216], v109);
      }

      v112 = *(v70 + 32);
      if (!v111(&v69[v112], 1, v109))
      {
        (*(v217 + 8))(&v69[v112], v109);
      }
    }

    v113 = (v13 + v14[12]);
    if (*v113)
    {

      v113[4], v114, v115, v116, v117, v118, v119, v120;
    }

    v121 = (v13 + v14[13]);
    v4 = v218;
    if (*v121)
    {

      v121[2], v122, v123, v124, v125, v126, v127, v128;
    }

    *(v13 + v14[14]), v71, v72, v73, v74, v75, v76, v77;
    *(v13 + v14[15]), v129, v130, v131, v132, v133, v134, v135;
    v3 = v219;
  }

  v136 = type metadata accessor for Passes(0);

  *(v13 + v136[7]), v137, v138, v139, v140, v141, v142, v143;
  *(v13 + v136[9]), v144, v145, v146, v147, v148, v149, v150;
  *(v13 + v136[11]), v151, v152, v153, v154, v155, v156, v157;
  *(v12 + v1[6] + 8), v158, v159, v160, v161, v162, v163, v164;
  *(v12 + v1[7] + 8), v165, v166, v167, v168, v169, v170, v171;
  *(v12 + v1[8] + 8), v172, v173, v174, v175, v176, v177, v178;
  *(v12 + v1[9] + 8), v179, v180, v181, v182, v183, v184, v185;
  *(v12 + v1[10]), v186, v187, v188, v189, v190, v191, v192;
  *(v12 + v1[11] + 8), v193, v194, v195, v196, v197, v198, v199;
  v207 = v12 + v1[12];
  if (*(v207 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v207, v200, v201, v202, v203, v204, v205, v206);
  }

  *(v207 + 40), v200, v201, v202, v203, v204, v205, v206;
  *(v0 + ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v208, v209, v210, v211, v212, v213, v214;

  return swift_deallocObject();
}

uint64_t sub_1BD08C620()
{
  v1 = v0;
  v2 = type metadata accessor for IdentityPassMethodSheet(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(*(v2 - 1) + 64);
  v6 = type metadata accessor for AvailablePass(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v332 = *(v7 + 64);
  v10 = v1 + v4;
  v11 = (v1 + v4 + v2[5]);
  v333 = v8;
  if (!(*(v7 + 48))(v11, 1, v6))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v330 = v9;
    if (EnumCaseMultiPayload == 2)
    {
      v11[1], v13, v14, v15, v16, v17, v18, v19;
      v11[3], v20, v21, v22, v23, v24, v25, v26;
      v27 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v28 = sub_1BE04CF34();
      (*(*(v28 - 8) + 8))(v11 + v27, v28);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v29 = (v11 + v6[6]);
    v30 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v30 - 1) + 48))(v29, 1, v30))
    {
      v29[1], v31, v32, v33, v34, v35, v36, v37;
      v38 = v30[5];
      v39 = sub_1BE04DA84();
      (*(*(v39 - 8) + 8))(v29 + v38, v39);
      *(v29 + v30[6] + 8), v40, v41, v42, v43, v44, v45, v46;
      *(v29 + v30[7] + 8), v47, v48, v49, v50, v51, v52, v53;
      *(v29 + v30[8] + 8), v54, v55, v56, v57, v58, v59, v60;
    }

    v61 = (v11 + v6[7]);
    v62 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v62 - 8) + 48))(v61, 1, v62))
    {

      v63 = *(v62 + 28);
      v64 = sub_1BE04AF64();
      v65 = *(v64 - 8);
      if (!(*(v65 + 48))(v61 + v63, 1, v64))
      {
        (*(v65 + 8))(v61 + v63, v64);
      }
    }

    v66 = v11 + v6[10];
    v67 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
    {
      v75 = *(v66 + 2);
      if (v75 != 1)
      {
        v75, v68, v69, v70, v71, v72, v73, v74;
        *(v66 + 4), v76, v77, v78, v79, v80, v81, v82;
        *(v66 + 6), v83, v84, v85, v86, v87, v88, v89;
      }

      v90 = *(v66 + 9);
      if (v90 != 1)
      {
        v90, v68, v69, v70, v71, v72, v73, v74;
        *(v66 + 11), v91, v92, v93, v94, v95, v96, v97;
        *(v66 + 13), v98, v99, v100, v101, v102, v103, v104;
      }

      v105 = *(v67 + 28);
      v106 = sub_1BE04AF64();
      v329 = *(v106 - 8);
      v107 = *(v329 + 48);
      if (!v107(&v66[v105], 1, v106))
      {
        (*(v329 + 8))(&v66[v105], v106);
      }

      v108 = *(v67 + 32);
      v8 = v333;
      if (!v107(&v66[v108], 1, v106))
      {
        (*(v329 + 8))(&v66[v108], v106);
      }
    }

    v109 = (v11 + v6[12]);
    if (*v109)
    {

      v109[4], v110, v111, v112, v113, v114, v115, v116;
    }

    v117 = (v11 + v6[13]);
    v9 = v330;
    if (*v117)
    {

      v117[2], v118, v119, v120, v121, v122, v123, v124;
    }

    *(v11 + v6[14]), v68, v69, v70, v71, v72, v73, v74;
    *(v11 + v6[15]), v125, v126, v127, v128, v129, v130, v131;
  }

  v132 = v9 & ~v8;
  v133 = type metadata accessor for Passes(0);

  *(v11 + v133[7]), v134, v135, v136, v137, v138, v139, v140;
  *(v11 + v133[9]), v141, v142, v143, v144, v145, v146, v147;
  *(v11 + v133[11]), v148, v149, v150, v151, v152, v153, v154;
  *(v10 + v2[6] + 8), v155, v156, v157, v158, v159, v160, v161;
  *(v10 + v2[7] + 8), v162, v163, v164, v165, v166, v167, v168;
  *(v10 + v2[8] + 8), v169, v170, v171, v172, v173, v174, v175;
  *(v10 + v2[9] + 8), v176, v177, v178, v179, v180, v181, v182;
  *(v10 + v2[10]), v183, v184, v185, v186, v187, v188, v189;
  *(v10 + v2[11] + 8), v190, v191, v192, v193, v194, v195, v196;
  v204 = v10 + v2[12];
  if (*(v204 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v204, v197, v198, v199, v200, v201, v202, v203);
  }

  *(v204 + 40), v197, v198, v199, v200, v201, v202, v203;
  v205 = (v1 + v132);
  type metadata accessor for WrappedPass(0);
  v206 = swift_getEnumCaseMultiPayload();
  v331 = v132;
  if (v206 == 2)
  {
    v205[1], v207, v208, v209, v210, v211, v212, v213;
    v205[3], v214, v215, v216, v217, v218, v219, v220;
    v221 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v222 = sub_1BE04CF34();
    (*(*(v222 - 8) + 8))(v205 + v221, v222);
  }

  else if (v206 <= 1)
  {
  }

  v223 = (v205 + v6[6]);
  v224 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v224 - 1) + 48))(v223, 1, v224))
  {
    v223[1], v225, v226, v227, v228, v229, v230, v231;
    v232 = v224[5];
    v233 = sub_1BE04DA84();
    (*(*(v233 - 8) + 8))(v223 + v232, v233);
    *(v223 + v224[6] + 8), v234, v235, v236, v237, v238, v239, v240;
    *(v223 + v224[7] + 8), v241, v242, v243, v244, v245, v246, v247;
    *(v223 + v224[8] + 8), v248, v249, v250, v251, v252, v253, v254;
  }

  v255 = (v205 + v6[7]);
  v256 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v256 - 8) + 48))(v255, 1, v256))
  {

    v257 = *(v256 + 28);
    v258 = sub_1BE04AF64();
    v259 = *(v258 - 8);
    if (!(*(v259 + 48))(v255 + v257, 1, v258))
    {
      (*(v259 + 8))(v255 + v257, v258);
    }
  }

  v260 = v205 + v6[10];
  v261 = type metadata accessor for PassEligibleRewardsInfo(0);
  if (!(*(*(v261 - 8) + 48))(v260, 1, v261))
  {
    v269 = *(v260 + 2);
    if (v269 != 1)
    {
      v269, v262, v263, v264, v265, v266, v267, v268;
      *(v260 + 4), v270, v271, v272, v273, v274, v275, v276;
      *(v260 + 6), v277, v278, v279, v280, v281, v282, v283;
    }

    v284 = v1;
    v285 = *(v260 + 9);
    if (v285 != 1)
    {
      v285, v262, v263, v264, v265, v266, v267, v268;
      *(v260 + 11), v286, v287, v288, v289, v290, v291, v292;
      *(v260 + 13), v293, v294, v295, v296, v297, v298, v299;
    }

    v300 = *(v261 + 28);
    v301 = sub_1BE04AF64();
    v302 = *(v301 - 8);
    v303 = *(v302 + 48);
    if (!v303(&v260[v300], 1, v301))
    {
      (*(v302 + 8))(&v260[v300], v301);
    }

    v304 = *(v261 + 32);
    v1 = v284;
    if (!v303(&v260[v304], 1, v301))
    {
      (*(v302 + 8))(&v260[v304], v301);
    }
  }

  v305 = (v205 + v6[12]);
  if (*v305)
  {

    v305[4], v306, v307, v308, v309, v310, v311, v312;
  }

  v313 = (v205 + v6[13]);
  if (*v313)
  {

    v313[2], v314, v315, v316, v317, v318, v319, v320;
  }

  *(v205 + v6[14]), v262, v263, v264, v265, v266, v267, v268;
  *(v205 + v6[15]), v321, v322, v323, v324, v325, v326, v327;

  return swift_deallocObject();
}

uint64_t sub_1BD08D120(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 24))
  {
    *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08D168(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD08D1A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD08D1E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08D234()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[6], v15, v16, v17, v18, v19, v20, v21;
  v0[9], v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1BD08D29C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CBA0, &qword_1BE0E7270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD08D318(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD08D370()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08D438()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371F8, &qword_1BE0B1218);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CB40, &qword_1BE0E70F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CB48, &qword_1BE0E70F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CB50, &unk_1BE0E7100);
  sub_1BD5F55F0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08D58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for PaymentPassDetailsButton(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  (*(*(v5 - 8) + 8))(v4 + v7, v5);
  v15 = v4 + v7 + v6[11];
  if (*v15)
  {
    *(v15 + 8), v8, v9, v10, v11, v12, v13, v14;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08D688(void *a1)
{
  sub_1BE051754();

  return swift_getWitnessTable();
}

uint64_t sub_1BD08D6DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CD70, &qword_1BE0E7638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DC0, &qword_1BE0C97E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CD78, &unk_1BE0E7640);
  sub_1BD2D5A00();
  sub_1BD5F98B8();
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8, MEMORY[0x1E69E6550], MEMORY[0x1E69E7C80]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08D800()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[4], v8, v9, v10, v11, v12, v13, v14;
  v0[6], v15, v16, v17, v18, v19, v20, v21;
  v0[8], v22, v23, v24, v25, v26, v27, v28;
  v0[11], v29, v30, v31, v32, v33, v34, v35;

  return swift_deallocObject();
}

uint64_t sub_1BD08D8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD08D95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD08D9CC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08DA04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + 16), v5, v6, v7, v8, v9, v10, v11;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08DB00()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08DB38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  *(v0 + 16), v4, v5, v6, v7, v8, v9, v10;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08DC08()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  *(v0 + 32), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v3, v1);

  *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v13, v14, v15, v16, v17, v18, v19;

  return swift_deallocObject();
}

uint64_t sub_1BD08DD14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CE70, &unk_1BE0E79C8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PaymentOfferSetupAuthenticationResult(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  *(v0 + 16), v7, v8, v9, v10, v11, v12, v13;
  (*(v2 + 8))(v0 + v3, v1);
  v14 = v0 + v6;
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    *(v14 + 8), v15, v16, v17, v18, v19, v20, v21;
    *(v14 + 24), v22, v23, v24, v25, v26, v27, v28;
    v29 = *(type metadata accessor for PaymentOfferSetupProvisioningMetadata(0) + 24);
    v30 = sub_1BE04AA64();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v14 + v29, 1, v30))
    {
      (*(v31 + 8))(v14 + v29, v30);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08DF04()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD08DF4C()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[6], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD08DF9C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD08DFD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38, &qword_1BE0E7C80);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v0[4], v4, v5, v6, v7, v8, v9, v10;

  v0[10], v11, v12, v13, v14, v15, v16, v17;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08E0CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38, &qword_1BE0E7C80);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v0[10], v4, v5, v6, v7, v8, v9, v10;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08E1C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v0[4], v4, v5, v6, v7, v8, v9, v10;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08E2BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08E304()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD08E344()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08E37C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08E448(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1BE0493F4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_1BE04A974();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[11];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[12];

  return v19(v20, a2, v18);
}

uint64_t sub_1BD08E668(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BE04AF64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1BE0493F4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1BE04A974();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[12];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1BD08E888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8, &unk_1BE0E7DD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_1BD08E95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8, &unk_1BE0E7DD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BD08EA2C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08EA64(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  v8[7], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD08EABC(void *a1)
{
  sub_1BE04EBD4();
  sub_1BD275CC0();
  return swift_getWitnessTable();
}

uint64_t sub_1BD08EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_1BD08EBF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BD08ECD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08ED3C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08ED74()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08EDB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD08EE70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD08EF4C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD0D4604(*(v8 + 32), *(v8 + 40), v9, v10, v11, v12, v13, v14);
  *(v8 + 56), v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD08EFF0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD08F028()
{
  v1 = (type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = (v0 + v2);
  v4[1], v5, v6, v7, v8, v9, v10, v11;
  v4[3], v12, v13, v14, v15, v16, v17, v18;
  v4[5], v19, v20, v21, v22, v23, v24, v25;
  v4[7], v26, v27, v28, v29, v30, v31, v32;
  v4[9], v33, v34, v35, v36, v37, v38, v39;
  v4[11], v40, v41, v42, v43, v44, v45, v46;
  v47 = v4 + v1[12];
  v48 = sub_1BE051AD4();
  (*(*(v48 - 8) + 8))(v47, v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  *&v47[*(v49 + 28)], v50, v51, v52, v53, v54, v55, v56;
  *(v0 + v3), v57, v58, v59, v60, v61, v62, v63;

  return swift_deallocObject();
}

uint64_t sub_1BD08F178()
{
  v1 = (type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1BE049364();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (v0 + v2);
  v7[1], v8, v9, v10, v11, v12, v13, v14;
  v7[3], v15, v16, v17, v18, v19, v20, v21;
  v7[5], v22, v23, v24, v25, v26, v27, v28;
  v7[7], v29, v30, v31, v32, v33, v34, v35;
  v7[9], v36, v37, v38, v39, v40, v41, v42;
  v7[11], v43, v44, v45, v46, v47, v48, v49;
  v50 = v7 + v1[12];
  v51 = sub_1BE051AD4();
  (*(*(v51 - 8) + 8))(v50, v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  *&v50[*(v52 + 28)], v53, v54, v55, v56, v57, v58, v59;
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD08F3AC()
{
  v1 = sub_1BE049364();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + 16), v5, v6, v7, v8, v9, v10, v11;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD08F484()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD08F56C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE049A94();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1BE049184();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1BD08F674(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BE049A94();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_1BE049184();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1BD08F778()
{
  v1 = (type metadata accessor for FinanceKitInternalTransactionCell(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  *(v0 + v2), v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[7];
  v11 = sub_1BE049A94();
  (*(*(v11 - 8) + 8))(v0 + v2 + v10, v11);
  v12 = v1[8];
  v13 = sub_1BE049184();
  (*(*(v13 - 8) + 8))(v0 + v2 + v12, v13);

  v14 = (v0 + v2 + v1[10]);
  v14[1], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD08F8D0()
{
  v1 = (type metadata accessor for FinanceKitInternalTransactionCell(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[7];
  v11 = sub_1BE049A94();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  v12 = v1[8];
  v13 = sub_1BE049184();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  v14 = (v2 + v1[10]);
  v14[1], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD08FD3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37228, &qword_1BE0B1248);
  sub_1BD62ABF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08FDA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D878, &qword_1BE0E8FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD08FE0C()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;
  v0[9], v22, v23, v24, v25, v26, v27, v28;
  v0[11], v29, v30, v31, v32, v33, v34, v35;

  return swift_deallocObject();
}

uint64_t sub_1BD08FE8C()
{
  v1 = sub_1BE049184();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + v4 + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v4 + 24), v19, v20, v21, v22, v23, v24, v25;
  *(v0 + v4 + 40), v26, v27, v28, v29, v30, v31, v32;
  *(v0 + v4 + 56), v33, v34, v35, v36, v37, v38, v39;

  return swift_deallocObject();
}

uint64_t sub_1BD08FF54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37210, &unk_1BE0B1230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D878, &qword_1BE0E8FA8);
  sub_1BD62B094();
  sub_1BD0F9764();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD090084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D980, &qword_1BE0E9418);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  *(v0 + 16), v4, v5, v6, v7, v8, v9, v10;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD090158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1BE04C744();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1BD090210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v7 = sub_1BE04C744();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0902B4()
{
  v1 = (type metadata accessor for PaymentOfferInstallmentSummaryView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1BD630FA8(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *(v2 + 48), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 56), v10, v11, v12, v13, v14, v15, v16;
  v17 = v1[10];
  v18 = sub_1BE04C744();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_1BD090414(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 16), a2, a3, a4, a5, a6, a7, a8);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD090454()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

id sub_1BD09048C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BD0904F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BD090550(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_1BD0905A4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1BD0905FC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1BD0906D4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD090724()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  v0[8], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD090794()
{
  swift_unknownObjectRelease();

  v0[7], v1, v2, v3, v4, v5, v6, v7;
  v0[10], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD090848(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD090904(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD090A04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD090A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEB0, &qword_1BE0E9F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD090D20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SecondarySheet(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1BE04FC14();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD090E28()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD090E60(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD090EF0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091028()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD091060(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0910A0()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[4], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0910EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0911A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD091358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1A0, &qword_1BE0EB170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD09146C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0914A8(void *a1)
{
  sub_1BE04EBD4();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E340, &qword_1BE0EB4C0);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();

  return swift_getWitnessTable();
}

uint64_t sub_1BD091628()
{
  if (*(v0 + 40))
  {
    *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  }

  if (*(v0 + 64))
  {
    *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD091688()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0916C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD091784(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD091838()
{
  v1 = type metadata accessor for TaxFormCell(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[5];
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
  *(v4 + *(v7 + 28)), v8, v9, v10, v11, v12, v13, v14;
  *(v3 + v1[6] + 8), v15, v16, v17, v18, v19, v20, v21;

  *(v3 + v1[8]), v22, v23, v24, v25, v26, v27, v28;
  v29 = (v3 + v1[9]);
  v29[1], v30, v31, v32, v33, v34, v35, v36;
  v29[3], v37, v38, v39, v40, v41, v42, v43;
  v29[5], v44, v45, v46, v47, v48, v49, v50;
  v51 = v3 + v1[10];
  *(v51 + 8), v52, v53, v54, v55, v56, v57, v58;
  *(v51 + 16), v59, v60, v61, v62, v63, v64, v65;

  return swift_deallocObject();
}

uint64_t sub_1BD091A00()
{
  v1 = type metadata accessor for TaxFormCell(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v0 + v2 + v1[5];
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
  *(v5 + *(v8 + 28)), v9, v10, v11, v12, v13, v14, v15;
  *(v4 + v1[6] + 8), v16, v17, v18, v19, v20, v21, v22;

  *(v4 + v1[8]), v23, v24, v25, v26, v27, v28, v29;
  v30 = (v4 + v1[9]);
  v30[1], v31, v32, v33, v34, v35, v36, v37;
  v30[3], v38, v39, v40, v41, v42, v43, v44;
  v30[5], v45, v46, v47, v48, v49, v50, v51;
  v52 = v4 + v1[10];
  *(v52 + 8), v53, v54, v55, v56, v57, v58, v59;
  *(v52 + 16), v60, v61, v62, v63, v64, v65, v66;
  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v67, v68, v69, v70, v71, v72, v73;

  return swift_deallocObject();
}

uint64_t sub_1BD091C20()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091C60()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091C98()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD091CD0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD091D1C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091D58()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091D98(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD091DD0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091E18()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD091E54()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD091E90()
{

  return swift_deallocObject();
}

uint64_t sub_1BD091EC8()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD091F08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830, &unk_1BE0EBFE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD091FC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E830, &unk_1BE0EBFE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0920F0(uint64_t a1, uint64_t a2)
{
  v4 = _s15PaymentDateInfoVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD09215C(uint64_t a1, uint64_t a2)
{
  v4 = _s15PaymentDateInfoVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD092220(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0922DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0923B8()
{
  v1 = (type metadata accessor for TransactionPickerView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  *(v0 + v2), v4, v5, v6, v7, v8, v9, v10;
  *(v0 + v2 + 8), v11, v12, v13, v14, v15, v16, v17;
  v18 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_1BE04E354();
    (*(*(v26 - 8) + 8))(v3 + v18, v26);
  }

  else
  {
    *(v3 + v18), v19, v20, v21, v22, v23, v24, v25;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD092570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EB00, &unk_1BE0EC6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD09260C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ED38, &qword_1BE0ECA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0926A0()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0926E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD09276C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAD0, &unk_1BE0EC6B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37240, &unk_1BE0B1260);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAD8, &qword_1BE0EC6C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAE0, &qword_1BE0EC6D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAE8, &qword_1BE0EC6D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAF0, &unk_1BE0EC6E0);
  sub_1BD672F14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB40, &qword_1BE0EC720);
  sub_1BE04F554();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB48, &qword_1BE0EC728);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB50, &qword_1BE0EC730);
  sub_1BD0DDEBC();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD4EB58, &qword_1EBD4EB50, &qword_1BE0EC730, MEMORY[0x1E697C5E0]);
  swift_getOpaqueTypeConformance2();
  sub_1BD673298(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB68, &qword_1BE0EC738);
  sub_1BE04F844();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB70, &qword_1BE0EC740);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB78, &qword_1BE0EC748);
  sub_1BD0DE4F4(&qword_1EBD4EB80, &qword_1EBD4EB78, &qword_1BE0EC748, MEMORY[0x1E697BEF0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BD673298(&qword_1EBD4EB88, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BD672EB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD092BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnifiedMerchantTokenData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30, &unk_1BE0ECDA0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BD092CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnifiedMerchantTokenData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30, &unk_1BE0ECDA0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BD092E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD092E78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BD092EFC()
{
  v1 = *(type metadata accessor for MerchantTokenPresentationModel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for MerchantTokenDetailView(0);
  v279 = *(*(v4 - 1) + 80);
  v5 = v0 + v2;
  *(v0 + v2 + 8), v6, v7, v8, v9, v10, v11, v12;
  *(v0 + v2 + 24), v13, v14, v15, v16, v17, v18, v19;
  *(v0 + v2 + 40), v20, v21, v22, v23, v24, v25, v26;
  *(v0 + v2 + 56), v27, v28, v29, v30, v31, v32, v33;
  *(v0 + v2 + 72), v34, v35, v36, v37, v38, v39, v40;
  *(v0 + v2 + 88), v41, v42, v43, v44, v45, v46, v47;
  v48 = type metadata accessor for UnifiedMerchantTokenData(0);
  v49 = v0 + v2 + v48[10];
  v50 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v276 = *(*(v50 - 8) + 48);
  v277 = v50;
  if (!v276(v49, 1))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v49, *(v49 + 8), v253, v254, v255, v256, v257, v258);
        break;
      case 0:
        v259 = sub_1BE04AA64();
        (*(*(v259 - 8) + 8))(v49, v259);
        break;
    }
  }

  v51 = v48[11];
  v52 = sub_1BE04AA64();
  v278 = *(v52 - 8);
  v53 = *(v278 + 48);
  if (!v53(v5 + v51, 1, v52))
  {
    (*(v278 + 8))(v5 + v51, v52);
  }

  v54 = v3 + v279;
  v55 = v48[12];
  v56 = sub_1BE04AF64();
  v274 = *(v56 - 8);
  v275 = *(v274 + 48);
  if (!v275(v5 + v55, 1, v56))
  {
    (*(v274 + 8))(v5 + v55, v56);
  }

  v64 = v2 + v54;
  *(v5 + v48[13] + 8), v57, v58, v59, v60, v61, v62, v63;
  v65 = v48[14];
  if (!v53(v5 + v65, 1, v52))
  {
    (*(v278 + 8))(v5 + v65, v52);
  }

  v73 = v64 & ~v279;
  *(v5 + v48[15] + 8), v66, v67, v68, v69, v70, v71, v72;
  v74 = v48[18];
  if (!v53(v5 + v74, 1, v52))
  {
    (*(v278 + 8))(v5 + v74, v52);
  }

  *(v5 + v48[19] + 8), v75, v76, v77, v78, v79, v80, v81;
  *(v5 + v48[20] + 8), v82, v83, v84, v85, v86, v87, v88;
  *(v5 + v48[21] + 8), v89, v90, v91, v92, v93, v94, v95;
  *(v5 + v48[22]), v96, v97, v98, v99, v100, v101, v102;
  *(v5 + v48[23]), v103, v104, v105, v106, v107, v108, v109;
  v110 = (v0 + v73);
  v110[1], v111, v112, v113, v114, v115, v116, v117;
  v110[3], v118, v119, v120, v121, v122, v123, v124;
  v110[5], v125, v126, v127, v128, v129, v130, v131;
  v110[7], v132, v133, v134, v135, v136, v137, v138;
  v110[9], v139, v140, v141, v142, v143, v144, v145;
  v110[11], v146, v147, v148, v149, v150, v151, v152;
  v153 = (v110 + v48[10]);
  if (!(v276)(v153, 1, v277))
  {
    v260 = swift_getEnumCaseMultiPayload();
    switch(v260)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v153, v153[1], v261, v262, v263, v264, v265, v266);
        break;
      case 0:
        (*(v278 + 8))(v153, v52);
        break;
    }
  }

  v154 = v48[11];
  if (!v53(v110 + v154, 1, v52))
  {
    (*(v278 + 8))(v110 + v154, v52);
  }

  v155 = v48[12];
  if (!v275(v110 + v155, 1, v56))
  {
    (*(v274 + 8))(v110 + v155, v56);
  }

  *(v110 + v48[13] + 8), v156, v157, v158, v159, v160, v161, v162;
  v163 = v48[14];
  if (!v53(v110 + v163, 1, v52))
  {
    (*(v278 + 8))(v110 + v163, v52);
  }

  *(v110 + v48[15] + 8), v164, v165, v166, v167, v168, v169, v170;
  v171 = v48[18];
  if (!v53(v110 + v171, 1, v52))
  {
    (*(v278 + 8))(v110 + v171, v52);
  }

  *(v110 + v48[19] + 8), v172, v173, v174, v175, v176, v177, v178;
  *(v110 + v48[20] + 8), v179, v180, v181, v182, v183, v184, v185;
  *(v110 + v48[21] + 8), v186, v187, v188, v189, v190, v191, v192;
  *(v110 + v48[22]), v193, v194, v195, v196, v197, v198, v199;
  *(v110 + v48[23]), v200, v201, v202, v203, v204, v205, v206;
  *(v110 + v4[5]), v207, v208, v209, v210, v211, v212, v213;
  *(v110 + v4[6] + 8), v214, v215, v216, v217, v218, v219, v220;

  *(v110 + v4[8] + 8), v221, v222, v223, v224, v225, v226, v227;
  *(v110 + v4[9] + 8), v228, v229, v230, v231, v232, v233, v234;
  v235 = (v110 + v4[10]);
  if (!(v276)(v235, 3, v277))
  {
    v267 = swift_getEnumCaseMultiPayload();
    switch(v267)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v235, v235[1], v268, v269, v270, v271, v272, v273);
        break;
      case 0:
        (*(v278 + 8))(v235, v52);
        break;
    }
  }

  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30, &unk_1BE0ECDA0);
  *(v235 + *(v236 + 28)), v237, v238, v239, v240, v241, v242, v243;
  *(v110 + v4[11] + 8), v244, v245, v246, v247, v248, v249, v250;

  return swift_deallocObject();
}

uint64_t sub_1BD093664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF80, &qword_1BE0ECE68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0936D8()
{
  v1 = type metadata accessor for MerchantTokenDetailView(0);
  v177 = *(*(v1 - 1) + 80);
  v175 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v178 = v0;
  v176 = (v177 + 32) & ~v177;
  v2 = v0 + v176;
  *(v0 + v176 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v0 + v176 + 24), v10, v11, v12, v13, v14, v15, v16;
  *(v0 + v176 + 40), v17, v18, v19, v20, v21, v22, v23;
  *(v0 + v176 + 56), v24, v25, v26, v27, v28, v29, v30;
  *(v0 + v176 + 72), v31, v32, v33, v34, v35, v36, v37;
  *(v0 + v176 + 88), v38, v39, v40, v41, v42, v43, v44;
  v45 = type metadata accessor for UnifiedMerchantTokenData(0);
  v46 = v0 + v176 + v45[10];
  v47 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v174 = *(*(v47 - 8) + 48);
  if (!v174(v46, 1, v47))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v46, *(v46 + 8), v159, v160, v161, v162, v163, v164);
        break;
      case 0:
        v165 = sub_1BE04AA64();
        (*(*(v165 - 8) + 8))(v46, v165);
        break;
    }
  }

  v173 = v47;
  v48 = v45[11];
  v49 = sub_1BE04AA64();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  if (!v51(v2 + v48, 1, v49))
  {
    (*(v50 + 8))(v2 + v48, v49);
  }

  v52 = v45[12];
  v53 = sub_1BE04AF64();
  v54 = *(v53 - 8);
  if (!(*(v54 + 48))(v2 + v52, 1, v53))
  {
    (*(v54 + 8))(v2 + v52, v53);
  }

  *(v2 + v45[13] + 8), v55, v56, v57, v58, v59, v60, v61;
  v62 = v45[14];
  if (!v51(v2 + v62, 1, v49))
  {
    (*(v50 + 8))(v2 + v62, v49);
  }

  *(v2 + v45[15] + 8), v63, v64, v65, v66, v67, v68, v69;
  v70 = v45[18];
  if (!v51(v2 + v70, 1, v49))
  {
    (*(v50 + 8))(v2 + v70, v49);
  }

  *(v2 + v45[19] + 8), v71, v72, v73, v74, v75, v76, v77;
  *(v2 + v45[20] + 8), v78, v79, v80, v81, v82, v83, v84;
  *(v2 + v45[21] + 8), v85, v86, v87, v88, v89, v90, v91;
  *(v2 + v45[22]), v92, v93, v94, v95, v96, v97, v98;
  *(v2 + v45[23]), v99, v100, v101, v102, v103, v104, v105;
  *(v2 + v1[5]), v106, v107, v108, v109, v110, v111, v112;
  *(v2 + v1[6] + 8), v113, v114, v115, v116, v117, v118, v119;

  *(v2 + v1[8] + 8), v120, v121, v122, v123, v124, v125, v126;
  *(v2 + v1[9] + 8), v127, v128, v129, v130, v131, v132, v133;
  v134 = v2 + v1[10];
  if (!v174(v134, 3, v173))
  {
    v166 = swift_getEnumCaseMultiPayload();
    switch(v166)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v134, *(v134 + 8), v167, v168, v169, v170, v171, v172);
        break;
      case 0:
        (*(v50 + 8))(v134, v49);
        break;
    }
  }

  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30, &unk_1BE0ECDA0);
  *(v134 + *(v135 + 28)), v136, v137, v138, v139, v140, v141, v142;
  *(v2 + v1[11] + 8), v143, v144, v145, v146, v147, v148, v149;

  *(v178 + ((v175 + v176 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v150, v151, v152, v153, v154, v155, v156;

  return swift_deallocObject();
}

uint64_t sub_1BD093BD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0, &qword_1BE0ECEE0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD093C8C()
{
  v1 = type metadata accessor for MerchantTokenDetailView(0);
  v170 = *(*(v1 - 1) + 80);
  v167 = *(*(v1 - 1) + 64);
  v169 = *(*(type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0) - 8) + 80);
  v168 = (v170 + 16) & ~v170;
  v171 = v0;
  v2 = v0 + v168;
  *(v0 + v168 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v0 + v168 + 24), v10, v11, v12, v13, v14, v15, v16;
  *(v0 + v168 + 40), v17, v18, v19, v20, v21, v22, v23;
  *(v0 + v168 + 56), v24, v25, v26, v27, v28, v29, v30;
  *(v0 + v168 + 72), v31, v32, v33, v34, v35, v36, v37;
  *(v0 + v168 + 88), v38, v39, v40, v41, v42, v43, v44;
  v45 = type metadata accessor for UnifiedMerchantTokenData(0);
  v46 = v0 + v168 + v45[10];
  v47 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v166 = *(*(v47 - 8) + 48);
  if (!v166(v46, 1, v47))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v46, *(v46 + 8), v152, v153, v154, v155, v156, v157);
        break;
      case 0:
        v158 = sub_1BE04AA64();
        (*(*(v158 - 8) + 8))(v46, v158);
        break;
    }
  }

  v48 = v45[11];
  v49 = sub_1BE04AA64();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  if (!v51(v2 + v48, 1, v49))
  {
    (*(v50 + 8))(v2 + v48, v49);
  }

  v52 = v45[12];
  v53 = sub_1BE04AF64();
  v54 = *(v53 - 8);
  if (!(*(v54 + 48))(v2 + v52, 1, v53))
  {
    (*(v54 + 8))(v2 + v52, v53);
  }

  *(v2 + v45[13] + 8), v55, v56, v57, v58, v59, v60, v61;
  v62 = v45[14];
  if (!v51(v2 + v62, 1, v49))
  {
    (*(v50 + 8))(v2 + v62, v49);
  }

  *(v2 + v45[15] + 8), v63, v64, v65, v66, v67, v68, v69;
  v70 = v45[18];
  if (!v51(v2 + v70, 1, v49))
  {
    (*(v50 + 8))(v2 + v70, v49);
  }

  *(v2 + v45[19] + 8), v71, v72, v73, v74, v75, v76, v77;
  *(v2 + v45[20] + 8), v78, v79, v80, v81, v82, v83, v84;
  *(v2 + v45[21] + 8), v85, v86, v87, v88, v89, v90, v91;
  *(v2 + v45[22]), v92, v93, v94, v95, v96, v97, v98;
  *(v2 + v45[23]), v99, v100, v101, v102, v103, v104, v105;
  *(v2 + v1[5]), v106, v107, v108, v109, v110, v111, v112;
  *(v2 + v1[6] + 8), v113, v114, v115, v116, v117, v118, v119;

  *(v2 + v1[8] + 8), v120, v121, v122, v123, v124, v125, v126;
  *(v2 + v1[9] + 8), v127, v128, v129, v130, v131, v132, v133;
  v134 = v2 + v1[10];
  if (!v166(v134, 3, v47))
  {
    v159 = swift_getEnumCaseMultiPayload();
    switch(v159)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v134, *(v134 + 8), v160, v161, v162, v163, v164, v165);
        break;
      case 0:
        (*(v50 + 8))(v134, v49);
        break;
    }
  }

  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30, &unk_1BE0ECDA0);
  *(v134 + *(v135 + 28)), v136, v137, v138, v139, v140, v141, v142;
  *(v2 + v1[11] + 8), v143, v144, v145, v146, v147, v148, v149;

  (*(v50 + 8))(v171 + ((v168 + v167 + v169) & ~v169), v49);

  return swift_deallocObject();
}

uint64_t sub_1BD09422C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0942E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD094398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD094404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD09447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PassRow.Pass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD094534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PassRow.Pass(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1BD094604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F358, &qword_1BE0ED430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0946F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD09472C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD09476C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0947A4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0947E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD09486C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1BD09499C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD094B5C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD094B94(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD094BE4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD094C24()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD094C7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE04DA84();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD094D28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04DA84();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD094E74(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD094EBC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD094F4C()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD094F94(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F818, &qword_1BE0EDDE8);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();

  return swift_getWitnessTable();
}

uint64_t sub_1BD095044(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948, &unk_1BE0CE200);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD095100(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948, &unk_1BE0CE200);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0951B8()
{
  v1 = type metadata accessor for NonMeCardAddressSection(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  *(v0 + v2), v4, v5, v6, v7, v8, v9, v10;

  sub_1BD35D02C(*(v3 + 24), *(v3 + 32), *(v3 + 40), v11, v12, v13, v14, v15, v92, v93, v94);
  *(v0 + v2 + 56), v16, v17, v18, v19, v20, v21, v22;
  *(v0 + v2 + 72), v23, v24, v25, v26, v27, v28, v29;

  *(v0 + v2 + 104), v30, v31, v32, v33, v34, v35, v36;
  *(v0 + v2 + 120), v37, v38, v39, v40, v41, v42, v43;
  *(v0 + v2 + 136), v44, v45, v46, v47, v48, v49, v50;
  *(v0 + v2 + 152), v51, v52, v53, v54, v55, v56, v57;
  v58 = (v0 + v2 + *(v1 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v66 - 8) + 48))(v58, 1, v66))
    {
      *v58, v67, v68, v69, v70, v71, v72, v73;
      v58[1], v74, v75, v76, v77, v78, v79, v80;
      v81 = *(v66 + 32);
      v82 = sub_1BE051AD4();
      (*(*(v82 - 8) + 8))(v58 + v81, v82);
    }
  }

  else
  {
    *v58, v59, v60, v61, v62, v63, v64, v65;
  }

  v83 = (v3 + *(v1 + 36));

  v83[1], v84, v85, v86, v87, v88, v89, v90;

  return swift_deallocObject();
}

uint64_t sub_1BD0953B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD095424(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0954CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD095514(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 24))
  {
    *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD095568()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0955DC()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v1770 = *(*(v1 - 1) + 80);
  v1767 = *(*(v1 - 1) + 64);
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840) - 8) + 80);
  v1768 = (v1770 + 16) & ~v1770;
  v1771 = v0;
  v3 = v0 + v1768;
  v4 = (v0 + v1768 + v1[6]);
  v5 = type metadata accessor for AvailablePass(0);
  v1774 = *(*(v5 - 1) + 48);
  v1772 = v2;
  v1773 = v5;
  if (!v1774(v4, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v4[1], v7, v8, v9, v10, v11, v12, v13;
      v4[3], v14, v15, v16, v17, v18, v19, v20;
      v21 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v22 = sub_1BE04CF34();
      (*(*(v22 - 8) + 8))(v4 + v21, v22);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v23 = (v4 + v5[6]);
    v24 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v24 - 1) + 48))(v23, 1, v24))
    {
      v23[1], v25, v26, v27, v28, v29, v30, v31;
      v32 = v24[5];
      v33 = sub_1BE04DA84();
      (*(*(v33 - 8) + 8))(v23 + v32, v33);
      *(v23 + v24[6] + 8), v34, v35, v36, v37, v38, v39, v40;
      *(v23 + v24[7] + 8), v41, v42, v43, v44, v45, v46, v47;
      *(v23 + v24[8] + 8), v48, v49, v50, v51, v52, v53, v54;
    }

    v55 = (v4 + v5[7]);
    v56 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
    {

      v57 = *(v56 + 28);
      v58 = sub_1BE04AF64();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(v55 + v57, 1, v58))
      {
        (*(v59 + 8))(v55 + v57, v58);
      }
    }

    v60 = v4 + v5[10];
    v61 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
    {
      v69 = *(v60 + 2);
      if (v69 != 1)
      {
        v69, v62, v63, v64, v65, v66, v67, v68;
        *(v60 + 4), v70, v71, v72, v73, v74, v75, v76;
        *(v60 + 6), v77, v78, v79, v80, v81, v82, v83;
      }

      v84 = *(v60 + 9);
      if (v84 != 1)
      {
        v84, v62, v63, v64, v65, v66, v67, v68;
        *(v60 + 11), v85, v86, v87, v88, v89, v90, v91;
        *(v60 + 13), v92, v93, v94, v95, v96, v97, v98;
      }

      v99 = *(v61 + 28);
      v100 = sub_1BE04AF64();
      v101 = *(v100 - 8);
      v102 = *(v101 + 48);
      if (!v102(&v60[v99], 1, v100))
      {
        (*(v101 + 8))(&v60[v99], v100);
      }

      v103 = *(v61 + 32);
      v104 = v102(&v60[v103], 1, v100);
      v2 = v1772;
      v5 = v1773;
      if (!v104)
      {
        (*(v101 + 8))(&v60[v103], v100);
      }
    }

    v105 = (v4 + v5[12]);
    if (*v105)
    {

      v105[4], v106, v107, v108, v109, v110, v111, v112;
    }

    v113 = (v4 + v5[13]);
    if (*v113)
    {

      v113[2], v114, v115, v116, v117, v118, v119, v120;
    }

    *(v4 + v5[14]), v62, v63, v64, v65, v66, v67, v68;
    *(v4 + v5[15]), v121, v122, v123, v124, v125, v126, v127;
  }

  v128 = type metadata accessor for Passes(0);

  *(v4 + v128[7]), v129, v130, v131, v132, v133, v134, v135;
  *(v4 + v128[9]), v136, v137, v138, v139, v140, v141, v142;
  *(v4 + v128[11]), v143, v144, v145, v146, v147, v148, v149;
  v150 = v3 + v1[7];
  if (*(v150 + 48))
  {
    sub_1BD0D455C(*v150, *(v150 + 8), *(v150 + 16));

    *(v150 + 48), v151, v152, v153, v154, v155, v156, v157;
    *(v150 + 64), v158, v159, v160, v161, v162, v163, v164;
  }

  v165 = (v3 + v1[8]);
  v166 = type metadata accessor for PeerPaymentModel(0);
  v167 = *(*(v166 - 1) + 48);
  if (!v167(v165, 1, v166))
  {

    v168 = (v165 + v166[5]);
    type metadata accessor for WrappedPass(0);
    v169 = swift_getEnumCaseMultiPayload();
    v1760 = v128;
    v1756 = v167;
    if (v169 == 2)
    {
      v168[1], v170, v171, v172, v173, v174, v175, v176;
      v168[3], v177, v178, v179, v180, v181, v182, v183;
      v184 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v185 = sub_1BE04CF34();
      (*(*(v185 - 8) + 8))(v168 + v184, v185);
    }

    else if (v169 <= 1)
    {
    }

    v186 = (v168 + v5[6]);
    v187 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v187 - 1) + 48))(v186, 1, v187))
    {
      v186[1], v188, v189, v190, v191, v192, v193, v194;
      v195 = v187[5];
      v196 = sub_1BE04DA84();
      (*(*(v196 - 8) + 8))(v186 + v195, v196);
      *(v186 + v187[6] + 8), v197, v198, v199, v200, v201, v202, v203;
      *(v186 + v187[7] + 8), v204, v205, v206, v207, v208, v209, v210;
      *(v186 + v187[8] + 8), v211, v212, v213, v214, v215, v216, v217;
    }

    v218 = (v168 + v5[7]);
    v219 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v219 - 8) + 48))(v218, 1, v219))
    {

      v220 = *(v219 + 28);
      v221 = sub_1BE04AF64();
      v222 = *(v221 - 8);
      if (!(*(v222 + 48))(v218 + v220, 1, v221))
      {
        (*(v222 + 8))(v218 + v220, v221);
      }
    }

    v223 = v168 + v5[10];
    v224 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v224 - 8) + 48))(v223, 1, v224))
    {
      v232 = *(v223 + 2);
      if (v232 != 1)
      {
        v232, v225, v226, v227, v228, v229, v230, v231;
        *(v223 + 4), v233, v234, v235, v236, v237, v238, v239;
        *(v223 + 6), v240, v241, v242, v243, v244, v245, v246;
      }

      v1751 = v166;
      v247 = *(v223 + 9);
      if (v247 != 1)
      {
        v247, v225, v226, v227, v228, v229, v230, v231;
        *(v223 + 11), v248, v249, v250, v251, v252, v253, v254;
        *(v223 + 13), v255, v256, v257, v258, v259, v260, v261;
      }

      v262 = *(v224 + 28);
      v263 = sub_1BE04AF64();
      v1758 = *(v263 - 8);
      v264 = *(v1758 + 48);
      if (!v264(&v223[v262], 1, v263))
      {
        (*(v1758 + 8))(&v223[v262], v263);
      }

      v265 = *(v224 + 32);
      v166 = v1751;
      if (!v264(&v223[v265], 1, v263))
      {
        (*(v1758 + 8))(&v223[v265], v263);
      }
    }

    v5 = v1773;
    v266 = (v168 + v1773[12]);
    if (*v266)
    {

      v266[4], v267, v268, v269, v270, v271, v272, v273;
    }

    v274 = (v168 + v1773[13]);
    v2 = v1772;
    if (*v274)
    {

      v274[2], v275, v276, v277, v278, v279, v280, v281;
    }

    *(v168 + v1773[14]), v225, v226, v227, v228, v229, v230, v231;
    *(v168 + v1773[15]), v282, v283, v284, v285, v286, v287, v288;
    v289 = (v165 + v166[6]);
    v128 = v1760;
    if (*v289 != 1)
    {

      v297 = v289[3];
      if (v297)
      {
        v297, v290, v291, v292, v293, v294, v295, v296;
        v289[5], v298, v299, v300, v301, v302, v303, v304;
        v289[7], v305, v306, v307, v308, v309, v310, v311;
        v289[9], v312, v313, v314, v315, v316, v317, v318;
      }
    }

    v167 = v1756;
  }

  v319 = (v3 + v1[9]);
  v320 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v320 - 1) + 48))(v319, 1, v320))
  {

    v319[4], v321, v322, v323, v324, v325, v326, v327;
    v319[6], v328, v329, v330, v331, v332, v333, v334;
    v1754 = _s11TotalAmountVMa(0);
    v335 = (v319 + v1754[10]);
    _s22SummaryItemPricingTypeOMa(0);
    v336 = swift_getEnumCaseMultiPayload();
    v1759 = v319;
    switch(v336)
    {
      case 2:
        v335[1], v337, v338, v339, v340, v341, v342, v343;
        break;
      case 1:
        v378 = sub_1BE04AF64();
        (*(*(v378 - 8) + 8))(v335, v378);
        break;
      case 0:
        v1757 = v167;
        v1748 = v320;
        v1752 = v166;
        v344 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v345 = v344[6];
        v346 = sub_1BE04AF64();
        v347 = *(v346 - 8);
        v348 = *(v347 + 48);
        if (!v348(v335 + v345, 1, v346))
        {
          (*(v347 + 8))(v335 + v345, v346);
        }

        v349 = v344[7];
        if (!v348(v335 + v349, 1, v346))
        {
          (*(v347 + 8))(v335 + v349, v346);
        }

        *(v335 + v344[9] + 8), v350, v351, v352, v353, v354, v355, v356;
        *(v335 + v344[10] + 8), v357, v358, v359, v360, v361, v362, v363;
        *(v335 + v344[11] + 8), v364, v365, v366, v367, v368, v369, v370;
        *(v335 + v344[12] + 8), v371, v372, v373, v374, v375, v376, v377;
        v2 = v1772;
        v320 = v1748;
        v166 = v1752;
        v167 = v1757;
        break;
    }

    v1755 = v3;
    v379 = v2;
    v380 = v1754;
    v381 = v1759;

    v382 = (v1759 + v1754[15]);
    v383 = v167(v382, 1, v166);
    v384 = v1773;
    if (!v383)
    {

      v385 = (v382 + v166[5]);
      type metadata accessor for WrappedPass(0);
      v386 = swift_getEnumCaseMultiPayload();
      v1761 = v128;
      v1749 = v320;
      if (v386 == 2)
      {
        v385[1], v387, v388, v389, v390, v391, v392, v393;
        v385[3], v395, v396, v397, v398, v399, v400, v401;
        v402 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v403 = sub_1BE04CF34();
        (*(*(v403 - 8) + 8))(v385 + v402, v403);
        v394 = v1773;
      }

      else
      {
        v394 = v1773;
        if (v386 <= 1)
        {
        }
      }

      v1753 = v166;
      v404 = (v385 + v394[6]);
      v405 = v394;
      v406 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v406 - 1) + 48))(v404, 1, v406))
      {
        v404[1], v407, v408, v409, v410, v411, v412, v413;
        v414 = v406[5];
        v415 = sub_1BE04DA84();
        (*(*(v415 - 8) + 8))(v404 + v414, v415);
        *(v404 + v406[6] + 8), v416, v417, v418, v419, v420, v421, v422;
        *(v404 + v406[7] + 8), v423, v424, v425, v426, v427, v428, v429;
        *(v404 + v406[8] + 8), v430, v431, v432, v433, v434, v435, v436;
      }

      v437 = (v385 + v405[7]);
      v438 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v438 - 8) + 48))(v437, 1, v438))
      {

        v439 = *(v438 + 28);
        v440 = sub_1BE04AF64();
        v441 = *(v440 - 8);
        if (!(*(v441 + 48))(v437 + v439, 1, v440))
        {
          (*(v441 + 8))(v437 + v439, v440);
        }
      }

      v442 = v385 + v405[10];
      v443 = type metadata accessor for PassEligibleRewardsInfo(0);
      if (!(*(*(v443 - 8) + 48))(v442, 1, v443))
      {
        v451 = *(v442 + 2);
        if (v451 != 1)
        {
          v451, v444, v445, v446, v447, v448, v449, v450;
          *(v442 + 4), v452, v453, v454, v455, v456, v457, v458;
          *(v442 + 6), v459, v460, v461, v462, v463, v464, v465;
        }

        v466 = *(v442 + 9);
        if (v466 != 1)
        {
          v466, v444, v445, v446, v447, v448, v449, v450;
          *(v442 + 11), v467, v468, v469, v470, v471, v472, v473;
          *(v442 + 13), v474, v475, v476, v477, v478, v479, v480;
        }

        v481 = *(v443 + 28);
        v482 = sub_1BE04AF64();
        v483 = *(v482 - 8);
        v484 = *(v483 + 48);
        if (!v484(&v442[v481], 1, v482))
        {
          (*(v483 + 8))(&v442[v481], v482);
        }

        v485 = *(v443 + 32);
        if (!v484(&v442[v485], 1, v482))
        {
          (*(v483 + 8))(&v442[v485], v482);
        }
      }

      v486 = (v385 + v1773[12]);
      if (*v486)
      {

        v486[4], v487, v488, v489, v490, v491, v492, v493;
      }

      v494 = (v385 + v1773[13]);
      v379 = v1772;
      v320 = v1749;
      if (*v494)
      {

        v494[2], v495, v496, v497, v498, v499, v500, v501;
      }

      *(v385 + v1773[14]), v444, v445, v446, v447, v448, v449, v450;
      *(v385 + v1773[15]), v502, v503, v504, v505, v506, v507, v508;
      v509 = (v382 + v1753[6]);
      v128 = v1761;
      if (*v509 != 1)
      {

        v517 = v509[3];
        if (v517)
        {
          v517, v510, v511, v512, v513, v514, v515, v516;
          v509[5], v518, v519, v520, v521, v522, v523, v524;
          v509[7], v525, v526, v527, v528, v529, v530, v531;
          v509[9], v532, v533, v534, v535, v536, v537, v538;
        }
      }

      v384 = v1773;

      v380 = v1754;
      v381 = v1759;
    }

    v539 = (v381 + v380[16]);
    v2 = v379;
    v5 = v384;
    v3 = v1755;
    if (!(*(*(v128 - 1) + 48))(v539, 1, v128))
    {
      if (!v1774(v539, 1, v384))
      {
        type metadata accessor for WrappedPass(0);
        v547 = swift_getEnumCaseMultiPayload();
        v1762 = v128;
        if (v547 == 2)
        {
          v539[1], v548, v549, v550, v551, v552, v553, v554;
          v539[3], v555, v556, v557, v558, v559, v560, v561;
          v562 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v563 = sub_1BE04CF34();
          (*(*(v563 - 8) + 8))(v539 + v562, v563);
        }

        else if (v547 <= 1)
        {
        }

        v564 = (v539 + v384[6]);
        v565 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v565 - 1) + 48))(v564, 1, v565))
        {
          v564[1], v566, v567, v568, v569, v570, v571, v572;
          v573 = v565[5];
          v574 = sub_1BE04DA84();
          (*(*(v574 - 8) + 8))(v564 + v573, v574);
          *(v564 + v565[6] + 8), v575, v576, v577, v578, v579, v580, v581;
          *(v564 + v565[7] + 8), v582, v583, v584, v585, v586, v587, v588;
          *(v564 + v565[8] + 8), v589, v590, v591, v592, v593, v594, v595;
        }

        v1750 = v320;
        v596 = (v539 + v5[7]);
        v597 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v597 - 8) + 48))(v596, 1, v597))
        {

          v598 = *(v597 + 28);
          v599 = sub_1BE04AF64();
          v600 = *(v599 - 8);
          if (!(*(v600 + 48))(v596 + v598, 1, v599))
          {
            (*(v600 + 8))(v596 + v598, v599);
          }
        }

        v601 = v539 + v5[10];
        v602 = type metadata accessor for PassEligibleRewardsInfo(0);
        if (!(*(*(v602 - 8) + 48))(v601, 1, v602))
        {
          v610 = *(v601 + 2);
          if (v610 != 1)
          {
            v610, v603, v604, v605, v606, v607, v608, v609;
            *(v601 + 4), v611, v612, v613, v614, v615, v616, v617;
            *(v601 + 6), v618, v619, v620, v621, v622, v623, v624;
          }

          v625 = *(v601 + 9);
          if (v625 != 1)
          {
            v625, v603, v604, v605, v606, v607, v608, v609;
            *(v601 + 11), v626, v627, v628, v629, v630, v631, v632;
            *(v601 + 13), v633, v634, v635, v636, v637, v638, v639;
          }

          v640 = *(v602 + 28);
          v641 = sub_1BE04AF64();
          v642 = *(v641 - 8);
          v643 = *(v642 + 48);
          if (!v643(&v601[v640], 1, v641))
          {
            (*(v642 + 8))(&v601[v640], v641);
          }

          v644 = *(v602 + 32);
          if (!v643(&v601[v644], 1, v641))
          {
            (*(v642 + 8))(&v601[v644], v641);
          }
        }

        v5 = v1773;
        v645 = (v539 + v1773[12]);
        if (*v645)
        {

          v645[4], v646, v647, v648, v649, v650, v651, v652;
        }

        v653 = (v539 + v1773[13]);
        v2 = v1772;
        v320 = v1750;
        if (*v653)
        {

          v653[2], v654, v655, v656, v657, v658, v659, v660;
        }

        *(v539 + v1773[14]), v603, v604, v605, v606, v607, v608, v609;
        *(v539 + v1773[15]), v661, v662, v663, v664, v665, v666, v667;
        v128 = v1762;
      }

      *(v539 + v128[7]), v668, v669, v670, v671, v672, v673, v674;
      *(v539 + v128[9]), v675, v676, v677, v678, v679, v680, v681;
      *(v539 + v128[11]), v682, v683, v684, v685, v686, v687, v688;
      v381 = v1759;
    }

    *(v381 + v320[5]), v540, v541, v542, v543, v544, v545, v546;
    *(v381 + v320[6] + 8), v689, v690, v691, v692, v693, v694, v695;
    v703 = v381 + v320[7];
    v704 = *(v703 + 8);
    if (v704)
    {
      v704, v696, v697, v698, v699, v700, v701, v702;
      *(v703 + 24), v705, v706, v707, v708, v709, v710, v711;
    }

    v712 = v381 + v320[9];
    v713 = *(v712 + 8);
    if (v713)
    {
      v713, v696, v697, v698, v699, v700, v701, v702;
      *(v712 + 24), v714, v715, v716, v717, v718, v719, v720;
      *(v712 + 40), v721, v722, v723, v724, v725, v726, v727;
    }

    v728 = v381 + v320[10];
    v729 = *(v728 + 8);
    if (v729)
    {
      v729, v696, v697, v698, v699, v700, v701, v702;
      *(v728 + 24), v730, v731, v732, v733, v734, v735, v736;
      *(v728 + 40), v737, v738, v739, v740, v741, v742, v743;
    }

    v744 = (v381 + v320[11]);
    v745 = type metadata accessor for DeferredPaymentRequest(0);
    if (!(*(*(v745 - 1) + 48))(v744, 1, v745))
    {
      v744[1], v746, v747, v748, v749, v750, v751, v752;
      v744[3], v753, v754, v755, v756, v757, v758, v759;
      v744[5], v760, v761, v762, v763, v764, v765, v766;
      v767 = v745[7];
      v768 = sub_1BE04AF64();
      v769 = *(v768 - 8);
      if (!(*(v769 + 48))(v744 + v767, 1, v768))
      {
        (*(v769 + 8))(v744 + v767, v768);
      }

      v770 = v745[8];
      v771 = sub_1BE04B3B4();
      v772 = *(v771 - 8);
      if (!(*(v772 + 48))(v744 + v770, 1, v771))
      {
        (*(v772 + 8))(v744 + v770, v771);
      }

      v2 = v1772;
    }

    *(v381 + v320[12]), v746, v747, v748, v749, v750, v751, v752;
  }

  *(v3 + v1[12] + 8), v773, v774, v775, v776, v777, v778, v779;
  *(v3 + v1[13] + 8), v780, v781, v782, v783, v784, v785, v786;
  *(v3 + v1[14] + 8), v787, v788, v789, v790, v791, v792, v793;
  *(v3 + v1[15] + 8), v794, v795, v796, v797, v798, v799, v800;
  *(v3 + v1[16] + 8), v801, v802, v803, v804, v805, v806, v807;
  *(v3 + v1[17] + 8), v808, v809, v810, v811, v812, v813, v814;
  *(v3 + v1[18] + 8), v815, v816, v817, v818, v819, v820, v821;
  *(v3 + v1[19] + 8), v822, v823, v824, v825, v826, v827, v828;
  *(v3 + v1[20] + 8), v829, v830, v831, v832, v833, v834, v835;
  *(v3 + v1[21]), v836, v837, v838, v839, v840, v841, v842;
  *(v3 + v1[22]), v843, v844, v845, v846, v847, v848, v849;
  *(v3 + v1[23] + 8), v850, v851, v852, v853, v854, v855, v856;
  v864 = v3 + v1[24];
  if (*v864)
  {
    *(v864 + 8), v857, v858, v859, v860, v861, v862, v863;
  }

  *(v3 + v1[26]), v857, v858, v859, v860, v861, v862, v863;
  v872 = v3 + v1[27];
  v873 = *(v872 + 8);
  if (v873)
  {
    v873, v865, v866, v867, v868, v869, v870, v871;
    *(v872 + 24), v874, v875, v876, v877, v878, v879, v880;
  }

  *(v872 + 48), v865, v866, v867, v868, v869, v870, v871;
  *(v3 + v1[28]), v881, v882, v883, v884, v885, v886, v887;
  v888 = (v3 + v1[29]);

  v888[1], v889, v890, v891, v892, v893, v894, v895;
  v896 = (v3 + v1[30]);
  if (!v1774(v896, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    v897 = swift_getEnumCaseMultiPayload();
    if (v897 == 2)
    {
      v896[1], v898, v899, v900, v901, v902, v903, v904;
      v896[3], v905, v906, v907, v908, v909, v910, v911;
      v912 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v913 = sub_1BE04CF34();
      (*(*(v913 - 8) + 8))(v896 + v912, v913);
    }

    else if (v897 <= 1)
    {
    }

    v914 = (v896 + v5[6]);
    v915 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v915 - 1) + 48))(v914, 1, v915))
    {
      v914[1], v916, v917, v918, v919, v920, v921, v922;
      v923 = v915[5];
      v924 = sub_1BE04DA84();
      (*(*(v924 - 8) + 8))(v914 + v923, v924);
      *(v914 + v915[6] + 8), v925, v926, v927, v928, v929, v930, v931;
      *(v914 + v915[7] + 8), v932, v933, v934, v935, v936, v937, v938;
      *(v914 + v915[8] + 8), v939, v940, v941, v942, v943, v944, v945;
    }

    v946 = (v896 + v5[7]);
    v947 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v947 - 8) + 48))(v946, 1, v947))
    {

      v948 = *(v947 + 28);
      v949 = sub_1BE04AF64();
      v950 = *(v949 - 8);
      if (!(*(v950 + 48))(v946 + v948, 1, v949))
      {
        (*(v950 + 8))(v946 + v948, v949);
      }
    }

    v951 = v896 + v5[10];
    v952 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v952 - 8) + 48))(v951, 1, v952))
    {
      v960 = *(v951 + 2);
      if (v960 != 1)
      {
        v960, v953, v954, v955, v956, v957, v958, v959;
        *(v951 + 4), v961, v962, v963, v964, v965, v966, v967;
        *(v951 + 6), v968, v969, v970, v971, v972, v973, v974;
      }

      v975 = *(v951 + 9);
      if (v975 != 1)
      {
        v975, v953, v954, v955, v956, v957, v958, v959;
        *(v951 + 11), v976, v977, v978, v979, v980, v981, v982;
        *(v951 + 13), v983, v984, v985, v986, v987, v988, v989;
      }

      v990 = *(v952 + 28);
      v991 = sub_1BE04AF64();
      v992 = *(v991 - 8);
      v993 = *(v992 + 48);
      if (!v993(&v951[v990], 1, v991))
      {
        (*(v992 + 8))(&v951[v990], v991);
      }

      v994 = *(v952 + 32);
      v2 = v1772;
      v5 = v1773;
      if (!v993(&v951[v994], 1, v991))
      {
        (*(v992 + 8))(&v951[v994], v991);
      }
    }

    v995 = (v896 + v5[12]);
    if (*v995)
    {

      v995[4], v996, v997, v998, v999, v1000, v1001, v1002;
    }

    v1003 = (v896 + v5[13]);
    if (*v1003)
    {

      v1003[2], v1004, v1005, v1006, v1007, v1008, v1009, v1010;
    }

    *(v896 + v5[14]), v953, v954, v955, v956, v957, v958, v959;
    *(v896 + v5[15]), v1011, v1012, v1013, v1014, v1015, v1016, v1017;
  }

  v1018 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  *(v896 + *(v1018 + 28)), v1019, v1020, v1021, v1022, v1023, v1024, v1025;
  v1026 = (v3 + v1[31]);

  v1026[1], v1027, v1028, v1029, v1030, v1031, v1032, v1033;
  v1034 = (v3 + v1[32]);
  v1035 = _s11DetailSheetOMa(0);
  if (!(*(*(v1035 - 8) + 48))(v1034, 1, v1035))
  {
    v1036 = swift_getEnumCaseMultiPayload();
    if (v1036 <= 1)
    {
      if (!v1036)
      {
        if (!v1774(v1034, 1, v5))
        {
          type metadata accessor for WrappedPass(0);
          v1054 = swift_getEnumCaseMultiPayload();
          if (v1054 == 2)
          {
            v1034[1], v1055, v1056, v1057, v1058, v1059, v1060, v1061;
            v1034[3], v1288, v1289, v1290, v1291, v1292, v1293, v1294;
            v1295 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v1296 = sub_1BE04CF34();
            (*(*(v1296 - 8) + 8))(v1034 + v1295, v1296);
          }

          else if (v1054 <= 1)
          {
          }

          v1765 = v1018;
          v1297 = (v1034 + v5[6]);
          v1298 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v1298 - 1) + 48))(v1297, 1, v1298))
          {
            v1297[1], v1299, v1300, v1301, v1302, v1303, v1304, v1305;
            v1306 = v1298[5];
            v1307 = sub_1BE04DA84();
            (*(*(v1307 - 8) + 8))(v1297 + v1306, v1307);
            *(v1297 + v1298[6] + 8), v1308, v1309, v1310, v1311, v1312, v1313, v1314;
            *(v1297 + v1298[7] + 8), v1315, v1316, v1317, v1318, v1319, v1320, v1321;
            *(v1297 + v1298[8] + 8), v1322, v1323, v1324, v1325, v1326, v1327, v1328;
          }

          v1329 = (v1034 + v5[7]);
          v1330 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v1330 - 8) + 48))(v1329, 1, v1330))
          {

            v1331 = *(v1330 + 28);
            v1332 = sub_1BE04AF64();
            v1333 = *(v1332 - 8);
            if (!(*(v1333 + 48))(v1329 + v1331, 1, v1332))
            {
              (*(v1333 + 8))(v1329 + v1331, v1332);
            }
          }

          v1334 = v1034 + v5[10];
          v1335 = type metadata accessor for PassEligibleRewardsInfo(0);
          if (!(*(*(v1335 - 8) + 48))(v1334, 1, v1335))
          {
            v1343 = *(v1334 + 2);
            if (v1343 != 1)
            {
              v1343, v1336, v1337, v1338, v1339, v1340, v1341, v1342;
              *(v1334 + 4), v1344, v1345, v1346, v1347, v1348, v1349, v1350;
              *(v1334 + 6), v1351, v1352, v1353, v1354, v1355, v1356, v1357;
            }

            v1358 = *(v1334 + 9);
            if (v1358 != 1)
            {
              v1358, v1336, v1337, v1338, v1339, v1340, v1341, v1342;
              *(v1334 + 11), v1359, v1360, v1361, v1362, v1363, v1364, v1365;
              *(v1334 + 13), v1366, v1367, v1368, v1369, v1370, v1371, v1372;
            }

            v1373 = *(v1335 + 28);
            v1374 = sub_1BE04AF64();
            v1375 = *(v1374 - 8);
            v1376 = *(v1375 + 48);
            if (!v1376(&v1334[v1373], 1, v1374))
            {
              (*(v1375 + 8))(&v1334[v1373], v1374);
            }

            v1377 = *(v1335 + 32);
            v5 = v1773;
            if (!v1376(&v1334[v1377], 1, v1374))
            {
              (*(v1375 + 8))(&v1334[v1377], v1374);
            }
          }

          v1378 = (v1034 + v5[12]);
          v1018 = v1765;
          if (*v1378)
          {

            v1378[4], v1379, v1380, v1381, v1382, v1383, v1384, v1385;
          }

          v1386 = (v1034 + v5[13]);
          v2 = v1772;
          if (*v1386)
          {

            v1386[2], v1387, v1388, v1389, v1390, v1391, v1392, v1393;
          }

          *(v1034 + v5[14]), v1336, v1337, v1338, v1339, v1340, v1341, v1342;
          *(v1034 + v5[15]), v1394, v1395, v1396, v1397, v1398, v1399, v1400;
        }

        v1401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

        v1402 = (v1034 + *(v1401 + 64));
        v1402[1], v1403, v1404, v1405, v1406, v1407, v1408, v1409;
        v1402[3], v1410, v1411, v1412, v1413, v1414, v1415, v1416;
        v1045 = v1402[4];
        goto LABEL_240;
      }

      if (v1036 != 1)
      {
        goto LABEL_241;
      }

LABEL_171:
      v1045 = *v1034;
LABEL_240:

      goto LABEL_241;
    }

    if (v1036 != 2)
    {
      if (v1036 != 3)
      {
        if (v1036 != 4)
        {
          goto LABEL_241;
        }

        type metadata accessor for WrappedPass(0);
        v1037 = swift_getEnumCaseMultiPayload();
        if (v1037 == 2)
        {
          v1034[1], v1038, v1039, v1040, v1041, v1042, v1043, v1044;
          v1034[3], v1175, v1176, v1177, v1178, v1179, v1180, v1181;
          v1182 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v1183 = sub_1BE04CF34();
          (*(*(v1183 - 8) + 8))(v1034 + v1182, v1183);
        }

        else if (v1037 <= 1)
        {
        }

        v1764 = v1018;
        v1184 = (v1034 + v5[6]);
        v1185 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v1185 - 1) + 48))(v1184, 1, v1185))
        {
          v1184[1], v1186, v1187, v1188, v1189, v1190, v1191, v1192;
          v1193 = v1185[5];
          v1194 = sub_1BE04DA84();
          (*(*(v1194 - 8) + 8))(v1184 + v1193, v1194);
          *(v1184 + v1185[6] + 8), v1195, v1196, v1197, v1198, v1199, v1200, v1201;
          *(v1184 + v1185[7] + 8), v1202, v1203, v1204, v1205, v1206, v1207, v1208;
          *(v1184 + v1185[8] + 8), v1209, v1210, v1211, v1212, v1213, v1214, v1215;
        }

        v1216 = (v1034 + v5[7]);
        v1217 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v1217 - 8) + 48))(v1216, 1, v1217))
        {

          v1218 = *(v1217 + 28);
          v1219 = sub_1BE04AF64();
          v1220 = *(v1219 - 8);
          if (!(*(v1220 + 48))(v1216 + v1218, 1, v1219))
          {
            (*(v1220 + 8))(v1216 + v1218, v1219);
          }
        }

        v1221 = v1034 + v5[10];
        v1222 = type metadata accessor for PassEligibleRewardsInfo(0);
        if (!(*(*(v1222 - 8) + 48))(v1221, 1, v1222))
        {
          v1230 = *(v1221 + 2);
          if (v1230 != 1)
          {
            v1230, v1223, v1224, v1225, v1226, v1227, v1228, v1229;
            *(v1221 + 4), v1231, v1232, v1233, v1234, v1235, v1236, v1237;
            *(v1221 + 6), v1238, v1239, v1240, v1241, v1242, v1243, v1244;
          }

          v1245 = *(v1221 + 9);
          if (v1245 != 1)
          {
            v1245, v1223, v1224, v1225, v1226, v1227, v1228, v1229;
            *(v1221 + 11), v1246, v1247, v1248, v1249, v1250, v1251, v1252;
            *(v1221 + 13), v1253, v1254, v1255, v1256, v1257, v1258, v1259;
          }

          v1260 = *(v1222 + 28);
          v1261 = sub_1BE04AF64();
          v1262 = *(v1261 - 8);
          v1263 = *(v1262 + 48);
          if (!v1263(&v1221[v1260], 1, v1261))
          {
            (*(v1262 + 8))(&v1221[v1260], v1261);
          }

          v1264 = *(v1222 + 32);
          v5 = v1773;
          if (!v1263(&v1221[v1264], 1, v1261))
          {
            (*(v1262 + 8))(&v1221[v1264], v1261);
          }
        }

        v1265 = (v1034 + v5[12]);
        v1018 = v1764;
        if (*v1265)
        {

          v1265[4], v1266, v1267, v1268, v1269, v1270, v1271, v1272;
        }

        v1273 = (v1034 + v5[13]);
        v2 = v1772;
        if (*v1273)
        {

          v1273[2], v1274, v1275, v1276, v1277, v1278, v1279, v1280;
        }

        *(v1034 + v5[14]), v1223, v1224, v1225, v1226, v1227, v1228, v1229;
        *(v1034 + v5[15]), v1281, v1282, v1283, v1284, v1285, v1286, v1287;
        v1045 = *(v1034 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60, &unk_1BE0DAEA8) + 48));
        goto LABEL_240;
      }

      goto LABEL_171;
    }

    type metadata accessor for WrappedPass(0);
    v1046 = swift_getEnumCaseMultiPayload();
    if (v1046 == 2)
    {
      v1034[1], v1047, v1048, v1049, v1050, v1051, v1052, v1053;
      v1034[3], v1062, v1063, v1064, v1065, v1066, v1067, v1068;
      v1069 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1070 = sub_1BE04CF34();
      (*(*(v1070 - 8) + 8))(v1034 + v1069, v1070);
    }

    else if (v1046 <= 1)
    {
    }

    v1763 = v1018;
    v1071 = (v1034 + v5[6]);
    v1072 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1072 - 1) + 48))(v1071, 1, v1072))
    {
      v1071[1], v1073, v1074, v1075, v1076, v1077, v1078, v1079;
      v1080 = v1072[5];
      v1081 = sub_1BE04DA84();
      (*(*(v1081 - 8) + 8))(v1071 + v1080, v1081);
      *(v1071 + v1072[6] + 8), v1082, v1083, v1084, v1085, v1086, v1087, v1088;
      *(v1071 + v1072[7] + 8), v1089, v1090, v1091, v1092, v1093, v1094, v1095;
      *(v1071 + v1072[8] + 8), v1096, v1097, v1098, v1099, v1100, v1101, v1102;
    }

    v1103 = (v1034 + v5[7]);
    v1104 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1104 - 8) + 48))(v1103, 1, v1104))
    {

      v1105 = *(v1104 + 28);
      v1106 = sub_1BE04AF64();
      v1107 = *(v1106 - 8);
      if (!(*(v1107 + 48))(v1103 + v1105, 1, v1106))
      {
        (*(v1107 + 8))(v1103 + v1105, v1106);
      }
    }

    v1108 = v1034 + v5[10];
    v1109 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1109 - 8) + 48))(v1108, 1, v1109))
    {
      v1117 = *(v1108 + 2);
      if (v1117 != 1)
      {
        v1117, v1110, v1111, v1112, v1113, v1114, v1115, v1116;
        *(v1108 + 4), v1118, v1119, v1120, v1121, v1122, v1123, v1124;
        *(v1108 + 6), v1125, v1126, v1127, v1128, v1129, v1130, v1131;
      }

      v1132 = *(v1108 + 9);
      if (v1132 != 1)
      {
        v1132, v1110, v1111, v1112, v1113, v1114, v1115, v1116;
        *(v1108 + 11), v1133, v1134, v1135, v1136, v1137, v1138, v1139;
        *(v1108 + 13), v1140, v1141, v1142, v1143, v1144, v1145, v1146;
      }

      v1147 = *(v1109 + 28);
      v1148 = sub_1BE04AF64();
      v1149 = *(v1148 - 8);
      v1150 = *(v1149 + 48);
      if (!v1150(&v1108[v1147], 1, v1148))
      {
        (*(v1149 + 8))(&v1108[v1147], v1148);
      }

      v1151 = *(v1109 + 32);
      v5 = v1773;
      if (!v1150(&v1108[v1151], 1, v1148))
      {
        (*(v1149 + 8))(&v1108[v1151], v1148);
      }
    }

    v1152 = (v1034 + v5[12]);
    v1018 = v1763;
    if (*v1152)
    {

      v1152[4], v1153, v1154, v1155, v1156, v1157, v1158, v1159;
    }

    v1160 = (v1034 + v5[13]);
    v2 = v1772;
    if (*v1160)
    {

      v1160[2], v1161, v1162, v1163, v1164, v1165, v1166, v1167;
    }

    *(v1034 + v5[14]), v1110, v1111, v1112, v1113, v1114, v1115, v1116;
    *(v1034 + v5[15]), v1168, v1169, v1170, v1171, v1172, v1173, v1174;
  }

LABEL_241:
  v1417 = v1768 + v1767;
  v1418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  *(v1034 + *(v1418 + 28)), v1419, v1420, v1421, v1422, v1423, v1424, v1425;
  *(v3 + v1[33] + 8), v1426, v1427, v1428, v1429, v1430, v1431, v1432;
  v1440 = v3 + v1[34];
  if (*(v1440 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + v1[34]), v1433, v1434, v1435, v1436, v1437, v1438, v1439);
  }

  v1441 = v1417 + v2;
  *(v1440 + 40), v1433, v1434, v1435, v1436, v1437, v1438, v1439;
  v1442 = (v3 + v1[35]);
  if (!v1774(v1442, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    v1450 = swift_getEnumCaseMultiPayload();
    v1769 = v1417 + v2;
    if (v1450 == 2)
    {
      v1442[1], v1451, v1452, v1453, v1454, v1455, v1456, v1457;
      v1442[3], v1458, v1459, v1460, v1461, v1462, v1463, v1464;
      v1465 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1466 = sub_1BE04CF34();
      (*(*(v1466 - 8) + 8))(v1442 + v1465, v1466);
    }

    else if (v1450 <= 1)
    {
    }

    v1467 = (v1442 + v5[6]);
    v1468 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1468 - 1) + 48))(v1467, 1, v1468))
    {
      v1467[1], v1469, v1470, v1471, v1472, v1473, v1474, v1475;
      v1476 = v1468[5];
      v1477 = sub_1BE04DA84();
      (*(*(v1477 - 8) + 8))(v1467 + v1476, v1477);
      *(v1467 + v1468[6] + 8), v1478, v1479, v1480, v1481, v1482, v1483, v1484;
      *(v1467 + v1468[7] + 8), v1485, v1486, v1487, v1488, v1489, v1490, v1491;
      *(v1467 + v1468[8] + 8), v1492, v1493, v1494, v1495, v1496, v1497, v1498;
    }

    v1766 = v1018;
    v1499 = (v1442 + v5[7]);
    v1500 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1500 - 8) + 48))(v1499, 1, v1500))
    {

      v1501 = *(v1500 + 28);
      v1502 = sub_1BE04AF64();
      v1503 = *(v1502 - 8);
      if (!(*(v1503 + 48))(v1499 + v1501, 1, v1502))
      {
        (*(v1503 + 8))(v1499 + v1501, v1502);
      }
    }

    v1504 = v1442 + v5[10];
    v1505 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1505 - 8) + 48))(v1504, 1, v1505))
    {
      v1513 = *(v1504 + 2);
      if (v1513 != 1)
      {
        v1513, v1506, v1507, v1508, v1509, v1510, v1511, v1512;
        *(v1504 + 4), v1514, v1515, v1516, v1517, v1518, v1519, v1520;
        *(v1504 + 6), v1521, v1522, v1523, v1524, v1525, v1526, v1527;
      }

      v1528 = *(v1504 + 9);
      if (v1528 != 1)
      {
        v1528, v1506, v1507, v1508, v1509, v1510, v1511, v1512;
        *(v1504 + 11), v1529, v1530, v1531, v1532, v1533, v1534, v1535;
        *(v1504 + 13), v1536, v1537, v1538, v1539, v1540, v1541, v1542;
      }

      v1543 = *(v1505 + 28);
      v1544 = sub_1BE04AF64();
      v1545 = *(v1544 - 8);
      v1546 = *(v1545 + 48);
      if (!v1546(&v1504[v1543], 1, v1544))
      {
        (*(v1545 + 8))(&v1504[v1543], v1544);
      }

      v1547 = *(v1505 + 32);
      v2 = v1772;
      if (!v1546(&v1504[v1547], 1, v1544))
      {
        (*(v1545 + 8))(&v1504[v1547], v1544);
      }
    }

    v5 = v1773;
    v1548 = (v1442 + v1773[12]);
    if (*v1548)
    {

      v1548[4], v1549, v1550, v1551, v1552, v1553, v1554, v1555;
    }

    v1556 = (v1442 + v1773[13]);
    v1018 = v1766;
    if (*v1556)
    {

      v1556[2], v1557, v1558, v1559, v1560, v1561, v1562, v1563;
    }

    *(v1442 + v1773[14]), v1506, v1507, v1508, v1509, v1510, v1511, v1512;
    *(v1442 + v1773[15]), v1564, v1565, v1566, v1567, v1568, v1569, v1570;
    v1441 = v1769;
  }

  v1571 = v1441 & ~v2;
  *(v1442 + *(v1018 + 28)), v1443, v1444, v1445, v1446, v1447, v1448, v1449;
  v1572 = (v3 + v1[36]);
  *v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579;
  v1572[1], v1580, v1581, v1582, v1583, v1584, v1585, v1586;
  v1587 = v3 + v1[37];
  *(v1587 + 8), v1588, v1589, v1590, v1591, v1592, v1593, v1594;
  *(v1587 + 16), v1595, v1596, v1597, v1598, v1599, v1600, v1601;
  *(v3 + v1[38] + 8), v1602, v1603, v1604, v1605, v1606, v1607, v1608;
  *(v3 + v1[39] + 8), v1609, v1610, v1611, v1612, v1613, v1614, v1615;
  v1616 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1624 = sub_1BE04C884();
    (*(*(v1624 - 8) + 8))(v3 + v1616, v1624);
  }

  else
  {
    *(v3 + v1616), v1617, v1618, v1619, v1620, v1621, v1622, v1623;
  }

  v1625 = (v1771 + v1571);
  if (!v1774((v1771 + v1571), 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    v1626 = swift_getEnumCaseMultiPayload();
    if (v1626 == 2)
    {
      v1625[1], v1627, v1628, v1629, v1630, v1631, v1632, v1633;
      v1625[3], v1634, v1635, v1636, v1637, v1638, v1639, v1640;
      v1641 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1642 = sub_1BE04CF34();
      (*(*(v1642 - 8) + 8))(v1625 + v1641, v1642);
    }

    else if (v1626 <= 1)
    {
    }

    v1643 = (v1625 + v5[6]);
    v1644 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1644 - 1) + 48))(v1643, 1, v1644))
    {
      v1643[1], v1645, v1646, v1647, v1648, v1649, v1650, v1651;
      v1652 = v1644[5];
      v1653 = sub_1BE04DA84();
      (*(*(v1653 - 8) + 8))(v1643 + v1652, v1653);
      *(v1643 + v1644[6] + 8), v1654, v1655, v1656, v1657, v1658, v1659, v1660;
      *(v1643 + v1644[7] + 8), v1661, v1662, v1663, v1664, v1665, v1666, v1667;
      *(v1643 + v1644[8] + 8), v1668, v1669, v1670, v1671, v1672, v1673, v1674;
    }

    v1675 = (v1625 + v5[7]);
    v1676 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1676 - 8) + 48))(v1675, 1, v1676))
    {

      v1677 = *(v1676 + 28);
      v1678 = sub_1BE04AF64();
      v1679 = *(v1678 - 8);
      if (!(*(v1679 + 48))(v1675 + v1677, 1, v1678))
      {
        (*(v1679 + 8))(v1675 + v1677, v1678);
      }
    }

    v1680 = v1625 + v5[10];
    v1681 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1681 - 8) + 48))(v1680, 1, v1681))
    {
      v1689 = *(v1680 + 2);
      if (v1689 != 1)
      {
        v1689, v1682, v1683, v1684, v1685, v1686, v1687, v1688;
        *(v1680 + 4), v1690, v1691, v1692, v1693, v1694, v1695, v1696;
        *(v1680 + 6), v1697, v1698, v1699, v1700, v1701, v1702, v1703;
      }

      v1704 = *(v1680 + 9);
      if (v1704 != 1)
      {
        v1704, v1682, v1683, v1684, v1685, v1686, v1687, v1688;
        *(v1680 + 11), v1705, v1706, v1707, v1708, v1709, v1710, v1711;
        *(v1680 + 13), v1712, v1713, v1714, v1715, v1716, v1717, v1718;
      }

      v1719 = *(v1681 + 28);
      v1720 = sub_1BE04AF64();
      v1721 = *(v1720 - 8);
      v1722 = *(v1721 + 48);
      if (!v1722(&v1680[v1719], 1, v1720))
      {
        (*(v1721 + 8))(&v1680[v1719], v1720);
      }

      v1723 = *(v1681 + 32);
      v5 = v1773;
      if (!v1722(&v1680[v1723], 1, v1720))
      {
        (*(v1721 + 8))(&v1680[v1723], v1720);
      }
    }

    v1724 = (v1625 + v5[12]);
    if (*v1724)
    {

      v1724[4], v1725, v1726, v1727, v1728, v1729, v1730, v1731;
    }

    v1732 = (v1625 + v5[13]);
    if (*v1732)
    {

      v1732[2], v1733, v1734, v1735, v1736, v1737, v1738, v1739;
    }

    *(v1625 + v5[14]), v1682, v1683, v1684, v1685, v1686, v1687, v1688;
    *(v1625 + v5[15]), v1740, v1741, v1742, v1743, v1744, v1745, v1746;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD098ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBD8, &qword_1BE0EEEC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD098B64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD098B9C()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD098BDC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD098C24(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD098C5C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD098D30(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD098DEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD098E9C()
{
  v1 = (type metadata accessor for PKDashboardRewardsBalanceDetailsView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  sub_1BD0D45CC(*(v2 + 16), *(v2 + 24), *(v2 + 32), v10, v11, v12, v13, v14);
  v15 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1BE04E664();
    (*(*(v23 - 8) + 8))(v2 + v15, v23);
  }

  else
  {
    *(v2 + v15), v16, v17, v18, v19, v20, v21, v22;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD098FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDB8, &qword_1BE0EF500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD09903C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDB8, &qword_1BE0EF500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0990A4()
{
  v1 = (type metadata accessor for PKDashboardRewardsBalanceDetailsView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  *(v0 + v2 + 8), v8, v9, v10, v11, v12, v13, v14;
  sub_1BD0D45CC(*(v7 + 16), *(v7 + 24), *(v7 + 32), v15, v16, v17, v18, v19);
  v20 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_1BE04E664();
    (*(*(v28 - 8) + 8))(v7 + v20, v28);
  }

  else
  {
    *(v7 + v20), v21, v22, v23, v24, v25, v26, v27;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1BD099268@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F104();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0992E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE48, &qword_1BE0EF738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD099378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04F684();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD099448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04F684();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD099518(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD099550(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0995B8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0995F8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD099630()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD099668()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0996A8()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0996F8()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;

  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD099758()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0997A0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0997D8()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD099828(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  v8[6], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD099880()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0998B8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD099900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalanceInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0999BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BalanceInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD099AC0()
{

  return swift_deallocObject();
}

id sub_1BD099BB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) attributedText];
  *a2 = result;
  return result;
}

id sub_1BD099C00(void *a1, void **a2)
{
  v2 = *a2;
  [*(*a2 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) setAttributedText_];

  return [v2 setNeedsLayout];
}

__n128 sub_1BD099C60@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BD099CD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD099D10(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD099D50(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD099D88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD099E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD099EF4()
{
  v1 = (type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E354();
    (*(*(v11 - 8) + 8))(v2 + v3, v11);
  }

  else
  {
    *(v2 + v3), v4, v5, v6, v7, v8, v9, v10;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD09A01C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD09A060(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD09A098(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD09A110()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD09A14C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD09A184(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD09A1C0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v1 = sub_1BE04EBD4();
  v5 = MEMORY[0x1E697F940];
  sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for OffsetScrollView(255, v1, WitnessTable, v3);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE0534B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50520, &qword_1BE0F0CD0);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD50528, &qword_1EBD50520, &qword_1BE0F0CD0, v5);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD09A588()
{

  return swift_deallocObject();
}

uint64_t sub_1BD09A5C0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD09A5F8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD09A648()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v1651 = *(*(v1 - 1) + 80);
  *(v0 + 16), v2, v3, v4, v5, v6, v7, v8;
  v9 = v0 + ((v1651 + 24) & ~v1651);
  v10 = (v9 + v1[6]);
  v11 = type metadata accessor for AvailablePass(0);
  v12 = *(*(v11 - 1) + 48);
  v1652 = v12;
  v1653 = v11;
  if (!v12(v10, 1, v11))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v10[1], v14, v15, v16, v17, v18, v19, v20;
      v10[3], v21, v22, v23, v24, v25, v26, v27;
      v28 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v29 = sub_1BE04CF34();
      (*(*(v29 - 8) + 8))(v10 + v28, v29);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v30 = (v10 + v11[6]);
    v31 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v31 - 1) + 48))(v30, 1, v31))
    {
      v30[1], v32, v33, v34, v35, v36, v37, v38;
      v39 = v31[5];
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(v30 + v39, v40);
      *(v30 + v31[6] + 8), v41, v42, v43, v44, v45, v46, v47;
      *(v30 + v31[7] + 8), v48, v49, v50, v51, v52, v53, v54;
      *(v30 + v31[8] + 8), v55, v56, v57, v58, v59, v60, v61;
    }

    v62 = (v10 + v11[7]);
    v63 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
    {

      v64 = *(v63 + 28);
      v65 = sub_1BE04AF64();
      v66 = *(v65 - 8);
      if (!(*(v66 + 48))(v62 + v64, 1, v65))
      {
        (*(v66 + 8))(v62 + v64, v65);
      }
    }

    v67 = v10 + v11[10];
    v68 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v68 - 8) + 48))(v67, 1, v68))
    {
      v76 = *(v67 + 2);
      if (v76 != 1)
      {
        v76, v69, v70, v71, v72, v73, v74, v75;
        *(v67 + 4), v77, v78, v79, v80, v81, v82, v83;
        *(v67 + 6), v84, v85, v86, v87, v88, v89, v90;
      }

      v91 = *(v67 + 9);
      if (v91 != 1)
      {
        v91, v69, v70, v71, v72, v73, v74, v75;
        *(v67 + 11), v92, v93, v94, v95, v96, v97, v98;
        *(v67 + 13), v99, v100, v101, v102, v103, v104, v105;
      }

      v106 = *(v68 + 28);
      v107 = sub_1BE04AF64();
      v108 = *(v107 - 8);
      v109 = *(v108 + 48);
      if (!v109(&v67[v106], 1, v107))
      {
        (*(v108 + 8))(&v67[v106], v107);
      }

      v110 = *(v68 + 32);
      v111 = v109(&v67[v110], 1, v107);
      v12 = v1652;
      v11 = v1653;
      if (!v111)
      {
        (*(v108 + 8))(&v67[v110], v107);
      }
    }

    v112 = (v10 + v11[12]);
    if (*v112)
    {

      v112[4], v113, v114, v115, v116, v117, v118, v119;
    }

    v120 = (v10 + v11[13]);
    if (*v120)
    {

      v120[2], v121, v122, v123, v124, v125, v126, v127;
    }

    *(v10 + v11[14]), v69, v70, v71, v72, v73, v74, v75;
    *(v10 + v11[15]), v128, v129, v130, v131, v132, v133, v134;
  }

  v135 = type metadata accessor for Passes(0);

  *(v10 + v135[7]), v136, v137, v138, v139, v140, v141, v142;
  *(v10 + v135[9]), v143, v144, v145, v146, v147, v148, v149;
  *(v10 + v135[11]), v150, v151, v152, v153, v154, v155, v156;
  v157 = v9 + v1[7];
  if (*(v157 + 48))
  {
    sub_1BD0D455C(*v157, *(v157 + 8), *(v157 + 16));

    *(v157 + 48), v158, v159, v160, v161, v162, v163, v164;
    *(v157 + 64), v165, v166, v167, v168, v169, v170, v171;
  }

  v172 = (v9 + v1[8]);
  v173 = type metadata accessor for PeerPaymentModel(0);
  v174 = *(*(v173 - 1) + 48);
  if (!v174(v172, 1, v173))
  {

    v175 = (v172 + v173[5]);
    type metadata accessor for WrappedPass(0);
    v176 = swift_getEnumCaseMultiPayload();
    v1641 = v135;
    if (v176 == 2)
    {
      v175[1], v177, v178, v179, v180, v181, v182, v183;
      v175[3], v184, v185, v186, v187, v188, v189, v190;
      v191 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v192 = sub_1BE04CF34();
      (*(*(v192 - 8) + 8))(v175 + v191, v192);
    }

    else if (v176 <= 1)
    {
    }

    v1636 = v174;
    v193 = (v175 + v11[6]);
    v194 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v194 - 1) + 48))(v193, 1, v194))
    {
      v193[1], v195, v196, v197, v198, v199, v200, v201;
      v202 = v194[5];
      v203 = sub_1BE04DA84();
      (*(*(v203 - 8) + 8))(v193 + v202, v203);
      *(v193 + v194[6] + 8), v204, v205, v206, v207, v208, v209, v210;
      *(v193 + v194[7] + 8), v211, v212, v213, v214, v215, v216, v217;
      *(v193 + v194[8] + 8), v218, v219, v220, v221, v222, v223, v224;
    }

    v225 = (v175 + v11[7]);
    v226 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v226 - 8) + 48))(v225, 1, v226))
    {

      v227 = *(v226 + 28);
      v228 = sub_1BE04AF64();
      v229 = *(v228 - 8);
      if (!(*(v229 + 48))(v225 + v227, 1, v228))
      {
        (*(v229 + 8))(v225 + v227, v228);
      }
    }

    v230 = v175 + v11[10];
    v231 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v231 - 8) + 48))(v230, 1, v231))
    {
      v239 = *(v230 + 2);
      if (v239 != 1)
      {
        v239, v232, v233, v234, v235, v236, v237, v238;
        *(v230 + 4), v240, v241, v242, v243, v244, v245, v246;
        *(v230 + 6), v247, v248, v249, v250, v251, v252, v253;
      }

      v1632 = v173;
      v254 = *(v230 + 9);
      if (v254 != 1)
      {
        v254, v232, v233, v234, v235, v236, v237, v238;
        *(v230 + 11), v255, v256, v257, v258, v259, v260, v261;
        *(v230 + 13), v262, v263, v264, v265, v266, v267, v268;
      }

      v269 = *(v231 + 28);
      v270 = sub_1BE04AF64();
      v1639 = *(v270 - 8);
      v271 = *(v1639 + 48);
      if (!v271(&v230[v269], 1, v270))
      {
        (*(v1639 + 8))(&v230[v269], v270);
      }

      v272 = *(v231 + 32);
      v173 = v1632;
      if (!v271(&v230[v272], 1, v270))
      {
        (*(v1639 + 8))(&v230[v272], v270);
      }
    }

    v11 = v1653;
    v273 = (v175 + v1653[12]);
    v135 = v1641;
    v174 = v1636;
    if (*v273)
    {

      v273[4], v274, v275, v276, v277, v278, v279, v280;
    }

    v281 = (v175 + v1653[13]);
    v12 = v1652;
    if (*v281)
    {

      v281[2], v282, v283, v284, v285, v286, v287, v288;
    }

    *(v175 + v1653[14]), v232, v233, v234, v235, v236, v237, v238;
    *(v175 + v1653[15]), v289, v290, v291, v292, v293, v294, v295;
    v296 = (v172 + v173[6]);
    if (*v296 != 1)
    {

      v304 = v296[3];
      if (v304)
      {
        v304, v297, v298, v299, v300, v301, v302, v303;
        v296[5], v305, v306, v307, v308, v309, v310, v311;
        v296[7], v312, v313, v314, v315, v316, v317, v318;
        v296[9], v319, v320, v321, v322, v323, v324, v325;
      }
    }
  }

  v326 = (v9 + v1[9]);
  v327 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v327 - 8) + 48))(v326, 1, v327))
  {

    v326[4], v328, v329, v330, v331, v332, v333, v334;
    v326[6], v335, v336, v337, v338, v339, v340, v341;
    v1638 = _s11TotalAmountVMa(0);
    v342 = (v326 + *(v1638 + 40));
    _s22SummaryItemPricingTypeOMa(0);
    v343 = swift_getEnumCaseMultiPayload();
    v1635 = v327;
    v1640 = v326;
    if (v343 == 2)
    {
      v342[1], v344, v345, v346, v347, v348, v349, v350;
    }

    else if (v343 == 1)
    {
      v386 = sub_1BE04AF64();
      (*(*(v386 - 8) + 8))(v342, v386);
    }

    else
    {
      v351 = v1638;
      if (v343)
      {
LABEL_67:
        v387 = v12;
        v388 = v1640;

        v389 = (v1640 + v351[15]);
        v390 = v174(v389, 1, v173);
        v391 = v1653;
        if (!v390)
        {

          v1647 = v389;
          v392 = (v389 + v173[5]);
          type metadata accessor for WrappedPass(0);
          v393 = v392;
          v394 = swift_getEnumCaseMultiPayload();
          v1642 = v135;
          if (v394 == 2)
          {
            v392[1], v395, v396, v397, v398, v399, v400, v401;
            v392[3], v404, v405, v406, v407, v408, v409, v410;
            v411 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v412 = sub_1BE04CF34();
            (*(*(v412 - 8) + 8))(v393 + v411, v412);
            v402 = v1653;
            v403 = v393;
          }

          else
          {
            v402 = v1653;
            if (v394 == 1)
            {
              v403 = v392;
            }

            else
            {
              v403 = v392;
              if (!v394)
              {
              }
            }
          }

          v1634 = v173;
          v413 = (v403 + v402[6]);
          v414 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v414 - 1) + 48))(v413, 1, v414))
          {
            v413[1], v415, v416, v417, v418, v419, v420, v421;
            v422 = v414[5];
            v423 = sub_1BE04DA84();
            (*(*(v423 - 8) + 8))(v413 + v422, v423);
            *(v413 + v414[6] + 8), v424, v425, v426, v427, v428, v429, v430;
            *(v413 + v414[7] + 8), v431, v432, v433, v434, v435, v436, v437;
            *(v413 + v414[8] + 8), v438, v439, v440, v441, v442, v443, v444;
          }

          v445 = (v403 + v402[7]);
          v446 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v446 - 8) + 48))(v445, 1, v446))
          {

            v447 = *(v446 + 28);
            v448 = sub_1BE04AF64();
            v449 = *(v448 - 8);
            if (!(*(v449 + 48))(v445 + v447, 1, v448))
            {
              (*(v449 + 8))(v445 + v447, v448);
            }
          }

          v450 = v403 + v402[10];
          v451 = type metadata accessor for PassEligibleRewardsInfo(0);
          if (!(*(*(v451 - 8) + 48))(v450, 1, v451))
          {
            v459 = *(v450 + 2);
            if (v459 != 1)
            {
              v459, v452, v453, v454, v455, v456, v457, v458;
              *(v450 + 4), v460, v461, v462, v463, v464, v465, v466;
              *(v450 + 6), v467, v468, v469, v470, v471, v472, v473;
            }

            v474 = *(v450 + 9);
            if (v474 != 1)
            {
              v474, v452, v453, v454, v455, v456, v457, v458;
              *(v450 + 11), v475, v476, v477, v478, v479, v480, v481;
              *(v450 + 13), v482, v483, v484, v485, v486, v487, v488;
            }

            v489 = *(v451 + 28);
            v490 = sub_1BE04AF64();
            v491 = *(v490 - 8);
            v492 = *(v491 + 48);
            if (!v492(&v450[v489], 1, v490))
            {
              (*(v491 + 8))(&v450[v489], v490);
            }

            v493 = *(v451 + 32);
            if (!v492(&v450[v493], 1, v490))
            {
              (*(v491 + 8))(&v450[v493], v490);
            }
          }

          v494 = (v403 + v1653[12]);
          v135 = v1642;
          if (*v494)
          {

            v494[4], v495, v496, v497, v498, v499, v500, v501;
          }

          v502 = (v403 + v1653[13]);
          if (*v502)
          {

            v502[2], v503, v504, v505, v506, v507, v508, v509;
          }

          *(v403 + v1653[14]), v452, v453, v454, v455, v456, v457, v458;
          *(v403 + v1653[15]), v510, v511, v512, v513, v514, v515, v516;
          v517 = (v1647 + v1634[6]);
          if (*v517 != 1)
          {

            v525 = v517[3];
            if (v525)
            {
              v525, v518, v519, v520, v521, v522, v523, v524;
              v517[5], v526, v527, v528, v529, v530, v531, v532;
              v517[7], v533, v534, v535, v536, v537, v538, v539;
              v517[9], v540, v541, v542, v543, v544, v545, v546;
            }
          }

          v391 = v1653;
          v387 = v1652;

          v351 = v1638;
          v388 = v1640;
        }

        v547 = (v388 + v351[16]);
        v12 = v387;
        v11 = v391;
        if (!(*(*(v135 - 1) + 48))(v547, 1, v135))
        {
          if (!v387(v547, 1, v391))
          {
            type metadata accessor for WrappedPass(0);
            v555 = swift_getEnumCaseMultiPayload();
            v1643 = v135;
            if (v555 == 2)
            {
              v547[1], v556, v557, v558, v559, v560, v561, v562;
              v547[3], v563, v564, v565, v566, v567, v568, v569;
              v570 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v571 = sub_1BE04CF34();
              (*(*(v571 - 8) + 8))(v547 + v570, v571);
            }

            else if (v555 <= 1)
            {
            }

            v572 = (v547 + v391[6]);
            v573 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v573 - 1) + 48))(v572, 1, v573))
            {
              v572[1], v574, v575, v576, v577, v578, v579, v580;
              v581 = v573[5];
              v582 = sub_1BE04DA84();
              (*(*(v582 - 8) + 8))(v572 + v581, v582);
              *(v572 + v573[6] + 8), v583, v584, v585, v586, v587, v588, v589;
              *(v572 + v573[7] + 8), v590, v591, v592, v593, v594, v595, v596;
              *(v572 + v573[8] + 8), v597, v598, v599, v600, v601, v602, v603;
            }

            v604 = (v547 + v391[7]);
            v605 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v605 - 8) + 48))(v604, 1, v605))
            {

              v606 = *(v605 + 28);
              v607 = sub_1BE04AF64();
              v608 = *(v607 - 8);
              if (!(*(v608 + 48))(v604 + v606, 1, v607))
              {
                (*(v608 + 8))(v604 + v606, v607);
              }
            }

            v609 = v547 + v11[10];
            v610 = type metadata accessor for PassEligibleRewardsInfo(0);
            if (!(*(*(v610 - 8) + 48))(v609, 1, v610))
            {
              v618 = *(v609 + 2);
              if (v618 != 1)
              {
                v618, v611, v612, v613, v614, v615, v616, v617;
                *(v609 + 4), v619, v620, v621, v622, v623, v624, v625;
                *(v609 + 6), v626, v627, v628, v629, v630, v631, v632;
              }

              v633 = *(v609 + 9);
              if (v633 != 1)
              {
                v633, v611, v612, v613, v614, v615, v616, v617;
                *(v609 + 11), v634, v635, v636, v637, v638, v639, v640;
                *(v609 + 13), v641, v642, v643, v644, v645, v646, v647;
              }

              v648 = *(v610 + 28);
              v649 = sub_1BE04AF64();
              v650 = *(v649 - 8);
              v651 = *(v650 + 48);
              if (!v651(&v609[v648], 1, v649))
              {
                (*(v650 + 8))(&v609[v648], v649);
              }

              v652 = *(v610 + 32);
              if (!v651(&v609[v652], 1, v649))
              {
                (*(v650 + 8))(&v609[v652], v649);
              }
            }

            v11 = v1653;
            v653 = (v547 + v1653[12]);
            v135 = v1643;
            if (*v653)
            {

              v653[4], v654, v655, v656, v657, v658, v659, v660;
            }

            v661 = (v547 + v1653[13]);
            v12 = v1652;
            if (*v661)
            {

              v661[2], v662, v663, v664, v665, v666, v667, v668;
            }

            *(v547 + v1653[14]), v611, v612, v613, v614, v615, v616, v617;
            *(v547 + v1653[15]), v669, v670, v671, v672, v673, v674, v675;
          }

          *(v547 + v135[7]), v676, v677, v678, v679, v680, v681, v682;
          *(v547 + v135[9]), v683, v684, v685, v686, v687, v688, v689;
          *(v547 + v135[11]), v690, v691, v692, v693, v694, v695, v696;
          v388 = v1640;
        }

        v697 = v1635;
        *(v388 + v1635[5]), v548, v549, v550, v551, v552, v553, v554;
        *(v388 + v1635[6] + 8), v698, v699, v700, v701, v702, v703, v704;
        v712 = v388 + v1635[7];
        v713 = *(v712 + 8);
        if (v713)
        {
          v713, v705, v706, v707, v708, v709, v710, v711;
          *(v712 + 24), v714, v715, v716, v717, v718, v719, v720;
        }

        v721 = v388 + v1635[9];
        v722 = *(v721 + 8);
        if (v722)
        {
          v722, v705, v706, v707, v708, v709, v710, v711;
          *(v721 + 24), v723, v724, v725, v726, v727, v728, v729;
          *(v721 + 40), v730, v731, v732, v733, v734, v735, v736;
        }

        v737 = v388 + v1635[10];
        v738 = *(v737 + 8);
        if (v738)
        {
          v738, v705, v706, v707, v708, v709, v710, v711;
          *(v737 + 24), v739, v740, v741, v742, v743, v744, v745;
          *(v737 + 40), v746, v747, v748, v749, v750, v751, v752;
        }

        v753 = (v388 + v1635[11]);
        v754 = type metadata accessor for DeferredPaymentRequest(0);
        if (!(*(*(v754 - 1) + 48))(v753, 1, v754))
        {
          v753[1], v755, v756, v757, v758, v759, v760, v761;
          v753[3], v762, v763, v764, v765, v766, v767, v768;
          v753[5], v769, v770, v771, v772, v773, v774, v775;
          v776 = v754[7];
          v777 = sub_1BE04AF64();
          v778 = *(v777 - 8);
          if (!(*(v778 + 48))(v753 + v776, 1, v777))
          {
            (*(v778 + 8))(v753 + v776, v777);
          }

          v779 = v754[8];
          v780 = sub_1BE04B3B4();
          v781 = *(v780 - 8);
          if (!(*(v781 + 48))(v753 + v779, 1, v780))
          {
            (*(v781 + 8))(v753 + v779, v780);
          }

          v12 = v1652;
          v697 = v1635;
        }

        *(v388 + v697[12]), v755, v756, v757, v758, v759, v760, v761;
        goto LABEL_136;
      }

      v1637 = v174;
      v1633 = v173;
      v352 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v353 = v352[6];
      v354 = sub_1BE04AF64();
      v355 = *(v354 - 8);
      v356 = *(v355 + 48);
      if (!v356(v342 + v353, 1, v354))
      {
        (*(v355 + 8))(v342 + v353, v354);
      }

      v357 = v352[7];
      if (!v356(v342 + v357, 1, v354))
      {
        (*(v355 + 8))(v342 + v357, v354);
      }

      *(v342 + v352[9] + 8), v358, v359, v360, v361, v362, v363, v364;
      *(v342 + v352[10] + 8), v365, v366, v367, v368, v369, v370, v371;
      *(v342 + v352[11] + 8), v372, v373, v374, v375, v376, v377, v378;
      *(v342 + v352[12] + 8), v379, v380, v381, v382, v383, v384, v385;
      v12 = v1652;
      v173 = v1633;
      v174 = v1637;
    }

    v351 = v1638;
    goto LABEL_67;
  }

LABEL_136:

  *(v9 + v1[12] + 8), v782, v783, v784, v785, v786, v787, v788;
  *(v9 + v1[13] + 8), v789, v790, v791, v792, v793, v794, v795;
  *(v9 + v1[14] + 8), v796, v797, v798, v799, v800, v801, v802;
  *(v9 + v1[15] + 8), v803, v804, v805, v806, v807, v808, v809;
  *(v9 + v1[16] + 8), v810, v811, v812, v813, v814, v815, v816;
  *(v9 + v1[17] + 8), v817, v818, v819, v820, v821, v822, v823;
  *(v9 + v1[18] + 8), v824, v825, v826, v827, v828, v829, v830;
  *(v9 + v1[19] + 8), v831, v832, v833, v834, v835, v836, v837;
  *(v9 + v1[20] + 8), v838, v839, v840, v841, v842, v843, v844;
  *(v9 + v1[21]), v845, v846, v847, v848, v849, v850, v851;
  *(v9 + v1[22]), v852, v853, v854, v855, v856, v857, v858;
  *(v9 + v1[23] + 8), v859, v860, v861, v862, v863, v864, v865;
  v873 = v9 + v1[24];
  if (*v873)
  {
    *(v873 + 8), v866, v867, v868, v869, v870, v871, v872;
  }

  *(v9 + v1[26]), v866, v867, v868, v869, v870, v871, v872;
  v881 = v9 + v1[27];
  v882 = *(v881 + 8);
  if (v882)
  {
    v882, v874, v875, v876, v877, v878, v879, v880;
    *(v881 + 24), v883, v884, v885, v886, v887, v888, v889;
  }

  *(v881 + 48), v874, v875, v876, v877, v878, v879, v880;
  *(v9 + v1[28]), v890, v891, v892, v893, v894, v895, v896;
  v897 = (v9 + v1[29]);

  v897[1], v898, v899, v900, v901, v902, v903, v904;
  v905 = (v9 + v1[30]);
  if (!v12(v905, 1, v11))
  {
    type metadata accessor for WrappedPass(0);
    v906 = swift_getEnumCaseMultiPayload();
    if (v906 == 2)
    {
      v905[1], v907, v908, v909, v910, v911, v912, v913;
      v905[3], v914, v915, v916, v917, v918, v919, v920;
      v921 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v922 = sub_1BE04CF34();
      (*(*(v922 - 8) + 8))(v905 + v921, v922);
    }

    else if (v906 <= 1)
    {
    }

    v923 = (v905 + v11[6]);
    v924 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v924 - 1) + 48))(v923, 1, v924))
    {
      v923[1], v925, v926, v927, v928, v929, v930, v931;
      v932 = v924[5];
      v933 = sub_1BE04DA84();
      (*(*(v933 - 8) + 8))(v923 + v932, v933);
      *(v923 + v924[6] + 8), v934, v935, v936, v937, v938, v939, v940;
      *(v923 + v924[7] + 8), v941, v942, v943, v944, v945, v946, v947;
      *(v923 + v924[8] + 8), v948, v949, v950, v951, v952, v953, v954;
    }

    v955 = (v905 + v11[7]);
    v956 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v956 - 8) + 48))(v955, 1, v956))
    {

      v957 = *(v956 + 28);
      v958 = sub_1BE04AF64();
      v959 = *(v958 - 8);
      if (!(*(v959 + 48))(v955 + v957, 1, v958))
      {
        (*(v959 + 8))(v955 + v957, v958);
      }
    }

    v960 = v905 + v11[10];
    v961 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v961 - 8) + 48))(v960, 1, v961))
    {
      v969 = *(v960 + 2);
      if (v969 != 1)
      {
        v969, v962, v963, v964, v965, v966, v967, v968;
        *(v960 + 4), v970, v971, v972, v973, v974, v975, v976;
        *(v960 + 6), v977, v978, v979, v980, v981, v982, v983;
      }

      v984 = *(v960 + 9);
      if (v984 != 1)
      {
        v984, v962, v963, v964, v965, v966, v967, v968;
        *(v960 + 11), v985, v986, v987, v988, v989, v990, v991;
        *(v960 + 13), v992, v993, v994, v995, v996, v997, v998;
      }

      v999 = *(v961 + 28);
      v1000 = sub_1BE04AF64();
      v1001 = *(v1000 - 8);
      v1002 = *(v1001 + 48);
      if (!v1002(&v960[v999], 1, v1000))
      {
        (*(v1001 + 8))(&v960[v999], v1000);
      }

      v1003 = *(v961 + 32);
      v12 = v1652;
      v11 = v1653;
      if (!v1002(&v960[v1003], 1, v1000))
      {
        (*(v1001 + 8))(&v960[v1003], v1000);
      }
    }

    v1004 = (v905 + v11[12]);
    if (*v1004)
    {

      v1004[4], v1005, v1006, v1007, v1008, v1009, v1010, v1011;
    }

    v1012 = (v905 + v11[13]);
    if (*v1012)
    {

      v1012[2], v1013, v1014, v1015, v1016, v1017, v1018, v1019;
    }

    *(v905 + v11[14]), v962, v963, v964, v965, v966, v967, v968;
    *(v905 + v11[15]), v1020, v1021, v1022, v1023, v1024, v1025, v1026;
  }

  v1027 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  *(v905 + *(v1027 + 28)), v1028, v1029, v1030, v1031, v1032, v1033, v1034;
  v1035 = (v9 + v1[31]);

  v1035[1], v1036, v1037, v1038, v1039, v1040, v1041, v1042;
  v1043 = (v9 + v1[32]);
  v1044 = _s11DetailSheetOMa(0);
  if (!(*(*(v1044 - 8) + 48))(v1043, 1, v1044))
  {
    v1045 = swift_getEnumCaseMultiPayload();
    if (v1045 <= 1)
    {
      if (!v1045)
      {
        if (!v12(v1043, 1, v11))
        {
          type metadata accessor for WrappedPass(0);
          v1063 = swift_getEnumCaseMultiPayload();
          if (v1063 == 2)
          {
            v1043[1], v1064, v1065, v1066, v1067, v1068, v1069, v1070;
            v1043[3], v1297, v1298, v1299, v1300, v1301, v1302, v1303;
            v1304 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v1305 = sub_1BE04CF34();
            (*(*(v1305 - 8) + 8))(v1043 + v1304, v1305);
          }

          else if (v1063 <= 1)
          {
          }

          v1306 = (v1043 + v11[6]);
          v1307 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v1307 - 1) + 48))(v1306, 1, v1307))
          {
            v1306[1], v1308, v1309, v1310, v1311, v1312, v1313, v1314;
            v1315 = v1307[5];
            v1316 = sub_1BE04DA84();
            (*(*(v1316 - 8) + 8))(v1306 + v1315, v1316);
            *(v1306 + v1307[6] + 8), v1317, v1318, v1319, v1320, v1321, v1322, v1323;
            *(v1306 + v1307[7] + 8), v1324, v1325, v1326, v1327, v1328, v1329, v1330;
            *(v1306 + v1307[8] + 8), v1331, v1332, v1333, v1334, v1335, v1336, v1337;
          }

          v1650 = v1027;
          v1338 = (v1043 + v11[7]);
          v1339 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v1339 - 8) + 48))(v1338, 1, v1339))
          {

            v1340 = *(v1339 + 28);
            v1341 = sub_1BE04AF64();
            v1342 = *(v1341 - 8);
            if (!(*(v1342 + 48))(v1338 + v1340, 1, v1341))
            {
              (*(v1342 + 8))(v1338 + v1340, v1341);
            }
          }

          v1343 = v1043 + v11[10];
          v1344 = type metadata accessor for PassEligibleRewardsInfo(0);
          if (!(*(*(v1344 - 8) + 48))(v1343, 1, v1344))
          {
            v1352 = *(v1343 + 2);
            if (v1352 != 1)
            {
              v1352, v1345, v1346, v1347, v1348, v1349, v1350, v1351;
              *(v1343 + 4), v1353, v1354, v1355, v1356, v1357, v1358, v1359;
              *(v1343 + 6), v1360, v1361, v1362, v1363, v1364, v1365, v1366;
            }

            v1367 = *(v1343 + 9);
            if (v1367 != 1)
            {
              v1367, v1345, v1346, v1347, v1348, v1349, v1350, v1351;
              *(v1343 + 11), v1368, v1369, v1370, v1371, v1372, v1373, v1374;
              *(v1343 + 13), v1375, v1376, v1377, v1378, v1379, v1380, v1381;
            }

            v1382 = *(v1344 + 28);
            v1383 = sub_1BE04AF64();
            v1384 = *(v1383 - 8);
            v1385 = *(v1384 + 48);
            if (!v1385(&v1343[v1382], 1, v1383))
            {
              (*(v1384 + 8))(&v1343[v1382], v1383);
            }

            v1646 = v1384;
            v1386 = *(v1344 + 32);
            v12 = v1652;
            v11 = v1653;
            if (!v1385(&v1343[v1386], 1, v1383))
            {
              (*(v1646 + 8))(&v1343[v1386], v1383);
            }
          }

          v1387 = (v1043 + v11[12]);
          if (*v1387)
          {

            v1387[4], v1388, v1389, v1390, v1391, v1392, v1393, v1394;
          }

          v1395 = (v1043 + v11[13]);
          v1027 = v1650;
          if (*v1395)
          {

            v1395[2], v1396, v1397, v1398, v1399, v1400, v1401, v1402;
          }

          *(v1043 + v11[14]), v1345, v1346, v1347, v1348, v1349, v1350, v1351;
          *(v1043 + v11[15]), v1403, v1404, v1405, v1406, v1407, v1408, v1409;
        }

        v1410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

        v1411 = (v1043 + *(v1410 + 64));
        v1411[1], v1412, v1413, v1414, v1415, v1416, v1417, v1418;
        v1411[3], v1419, v1420, v1421, v1422, v1423, v1424, v1425;
        v1054 = v1411[4];
        goto LABEL_243;
      }

      if (v1045 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v1054 = *v1043;
LABEL_243:

      goto LABEL_244;
    }

    if (v1045 != 2)
    {
      if (v1045 != 3)
      {
        if (v1045 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v1046 = swift_getEnumCaseMultiPayload();
        if (v1046 == 2)
        {
          v1043[1], v1047, v1048, v1049, v1050, v1051, v1052, v1053;
          v1043[3], v1184, v1185, v1186, v1187, v1188, v1189, v1190;
          v1191 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v1192 = sub_1BE04CF34();
          (*(*(v1192 - 8) + 8))(v1043 + v1191, v1192);
        }

        else if (v1046 <= 1)
        {
        }

        v1193 = (v1043 + v11[6]);
        v1194 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v1194 - 1) + 48))(v1193, 1, v1194))
        {
          v1193[1], v1195, v1196, v1197, v1198, v1199, v1200, v1201;
          v1202 = v1194[5];
          v1203 = sub_1BE04DA84();
          (*(*(v1203 - 8) + 8))(v1193 + v1202, v1203);
          *(v1193 + v1194[6] + 8), v1204, v1205, v1206, v1207, v1208, v1209, v1210;
          *(v1193 + v1194[7] + 8), v1211, v1212, v1213, v1214, v1215, v1216, v1217;
          *(v1193 + v1194[8] + 8), v1218, v1219, v1220, v1221, v1222, v1223, v1224;
        }

        v1649 = v1027;
        v1225 = (v1043 + v11[7]);
        v1226 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v1226 - 8) + 48))(v1225, 1, v1226))
        {

          v1227 = *(v1226 + 28);
          v1228 = sub_1BE04AF64();
          v1229 = *(v1228 - 8);
          if (!(*(v1229 + 48))(v1225 + v1227, 1, v1228))
          {
            (*(v1229 + 8))(v1225 + v1227, v1228);
          }
        }

        v1230 = v1043 + v11[10];
        v1231 = type metadata accessor for PassEligibleRewardsInfo(0);
        if (!(*(*(v1231 - 8) + 48))(v1230, 1, v1231))
        {
          v1239 = *(v1230 + 2);
          if (v1239 != 1)
          {
            v1239, v1232, v1233, v1234, v1235, v1236, v1237, v1238;
            *(v1230 + 4), v1240, v1241, v1242, v1243, v1244, v1245, v1246;
            *(v1230 + 6), v1247, v1248, v1249, v1250, v1251, v1252, v1253;
          }

          v1254 = *(v1230 + 9);
          if (v1254 != 1)
          {
            v1254, v1232, v1233, v1234, v1235, v1236, v1237, v1238;
            *(v1230 + 11), v1255, v1256, v1257, v1258, v1259, v1260, v1261;
            *(v1230 + 13), v1262, v1263, v1264, v1265, v1266, v1267, v1268;
          }

          v1269 = *(v1231 + 28);
          v1270 = sub_1BE04AF64();
          v1271 = *(v1270 - 8);
          v1272 = *(v1271 + 48);
          if (!v1272(&v1230[v1269], 1, v1270))
          {
            (*(v1271 + 8))(&v1230[v1269], v1270);
          }

          v1645 = v1271;
          v1273 = *(v1231 + 32);
          v12 = v1652;
          v11 = v1653;
          if (!v1272(&v1230[v1273], 1, v1270))
          {
            (*(v1645 + 8))(&v1230[v1273], v1270);
          }
        }

        v1274 = (v1043 + v11[12]);
        if (*v1274)
        {

          v1274[4], v1275, v1276, v1277, v1278, v1279, v1280, v1281;
        }

        v1282 = (v1043 + v11[13]);
        v1027 = v1649;
        if (*v1282)
        {

          v1282[2], v1283, v1284, v1285, v1286, v1287, v1288, v1289;
        }

        *(v1043 + v11[14]), v1232, v1233, v1234, v1235, v1236, v1237, v1238;
        *(v1043 + v11[15]), v1290, v1291, v1292, v1293, v1294, v1295, v1296;
        v1054 = *(v1043 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60, &unk_1BE0DAEA8) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v1055 = swift_getEnumCaseMultiPayload();
    if (v1055 == 2)
    {
      v1043[1], v1056, v1057, v1058, v1059, v1060, v1061, v1062;
      v1043[3], v1071, v1072, v1073, v1074, v1075, v1076, v1077;
      v1078 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1079 = sub_1BE04CF34();
      (*(*(v1079 - 8) + 8))(v1043 + v1078, v1079);
    }

    else if (v1055 <= 1)
    {
    }

    v1080 = (v1043 + v11[6]);
    v1081 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1081 - 1) + 48))(v1080, 1, v1081))
    {
      v1080[1], v1082, v1083, v1084, v1085, v1086, v1087, v1088;
      v1089 = v1081[5];
      v1090 = sub_1BE04DA84();
      (*(*(v1090 - 8) + 8))(v1080 + v1089, v1090);
      *(v1080 + v1081[6] + 8), v1091, v1092, v1093, v1094, v1095, v1096, v1097;
      *(v1080 + v1081[7] + 8), v1098, v1099, v1100, v1101, v1102, v1103, v1104;
      *(v1080 + v1081[8] + 8), v1105, v1106, v1107, v1108, v1109, v1110, v1111;
    }

    v1648 = v1027;
    v1112 = (v1043 + v11[7]);
    v1113 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1113 - 8) + 48))(v1112, 1, v1113))
    {

      v1114 = *(v1113 + 28);
      v1115 = sub_1BE04AF64();
      v1116 = *(v1115 - 8);
      if (!(*(v1116 + 48))(v1112 + v1114, 1, v1115))
      {
        (*(v1116 + 8))(v1112 + v1114, v1115);
      }
    }

    v1117 = v1043 + v11[10];
    v1118 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1118 - 8) + 48))(v1117, 1, v1118))
    {
      v1126 = *(v1117 + 2);
      if (v1126 != 1)
      {
        v1126, v1119, v1120, v1121, v1122, v1123, v1124, v1125;
        *(v1117 + 4), v1127, v1128, v1129, v1130, v1131, v1132, v1133;
        *(v1117 + 6), v1134, v1135, v1136, v1137, v1138, v1139, v1140;
      }

      v1141 = *(v1117 + 9);
      if (v1141 != 1)
      {
        v1141, v1119, v1120, v1121, v1122, v1123, v1124, v1125;
        *(v1117 + 11), v1142, v1143, v1144, v1145, v1146, v1147, v1148;
        *(v1117 + 13), v1149, v1150, v1151, v1152, v1153, v1154, v1155;
      }

      v1156 = *(v1118 + 28);
      v1157 = sub_1BE04AF64();
      v1158 = *(v1157 - 8);
      v1159 = *(v1158 + 48);
      if (!v1159(&v1117[v1156], 1, v1157))
      {
        (*(v1158 + 8))(&v1117[v1156], v1157);
      }

      v1644 = v1158;
      v1160 = *(v1118 + 32);
      v12 = v1652;
      v11 = v1653;
      if (!v1159(&v1117[v1160], 1, v1157))
      {
        (*(v1644 + 8))(&v1117[v1160], v1157);
      }
    }

    v1161 = (v1043 + v11[12]);
    if (*v1161)
    {

      v1161[4], v1162, v1163, v1164, v1165, v1166, v1167, v1168;
    }

    v1169 = (v1043 + v11[13]);
    v1027 = v1648;
    if (*v1169)
    {

      v1169[2], v1170, v1171, v1172, v1173, v1174, v1175, v1176;
    }

    *(v1043 + v11[14]), v1119, v1120, v1121, v1122, v1123, v1124, v1125;
    *(v1043 + v11[15]), v1177, v1178, v1179, v1180, v1181, v1182, v1183;
  }

LABEL_244:
  v1426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  *(v1043 + *(v1426 + 28)), v1427, v1428, v1429, v1430, v1431, v1432, v1433;
  *(v9 + v1[33] + 8), v1434, v1435, v1436, v1437, v1438, v1439, v1440;
  v1448 = v9 + v1[34];
  if (*(v1448 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v9 + v1[34]), v1441, v1442, v1443, v1444, v1445, v1446, v1447);
  }

  *(v1448 + 40), v1441, v1442, v1443, v1444, v1445, v1446, v1447;
  v1449 = (v9 + v1[35]);
  if (!v12(v1449, 1, v11))
  {
    type metadata accessor for WrappedPass(0);
    v1457 = swift_getEnumCaseMultiPayload();
    if (v1457 == 2)
    {
      v1449[1], v1458, v1459, v1460, v1461, v1462, v1463, v1464;
      v1449[3], v1465, v1466, v1467, v1468, v1469, v1470, v1471;
      v1472 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1473 = sub_1BE04CF34();
      (*(*(v1473 - 8) + 8))(v1449 + v1472, v1473);
    }

    else if (v1457 <= 1)
    {
    }

    v1474 = (v1449 + v11[6]);
    v1475 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1475 - 1) + 48))(v1474, 1, v1475))
    {
      v1474[1], v1476, v1477, v1478, v1479, v1480, v1481, v1482;
      v1483 = v1475[5];
      v1484 = sub_1BE04DA84();
      (*(*(v1484 - 8) + 8))(v1474 + v1483, v1484);
      *(v1474 + v1475[6] + 8), v1485, v1486, v1487, v1488, v1489, v1490, v1491;
      *(v1474 + v1475[7] + 8), v1492, v1493, v1494, v1495, v1496, v1497, v1498;
      *(v1474 + v1475[8] + 8), v1499, v1500, v1501, v1502, v1503, v1504, v1505;
    }

    v1506 = (v1449 + v11[7]);
    v1507 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1507 - 8) + 48))(v1506, 1, v1507))
    {

      v1508 = *(v1507 + 28);
      v1509 = sub_1BE04AF64();
      v1510 = *(v1509 - 8);
      if (!(*(v1510 + 48))(v1506 + v1508, 1, v1509))
      {
        (*(v1510 + 8))(v1506 + v1508, v1509);
      }
    }

    v1511 = v1449 + v11[10];
    v1512 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1512 - 8) + 48))(v1511, 1, v1512))
    {
      v1520 = *(v1511 + 2);
      if (v1520 != 1)
      {
        v1520, v1513, v1514, v1515, v1516, v1517, v1518, v1519;
        *(v1511 + 4), v1521, v1522, v1523, v1524, v1525, v1526, v1527;
        *(v1511 + 6), v1528, v1529, v1530, v1531, v1532, v1533, v1534;
      }

      v1535 = *(v1511 + 9);
      if (v1535 != 1)
      {
        v1535, v1513, v1514, v1515, v1516, v1517, v1518, v1519;
        *(v1511 + 11), v1536, v1537, v1538, v1539, v1540, v1541, v1542;
        *(v1511 + 13), v1543, v1544, v1545, v1546, v1547, v1548, v1549;
      }

      v1550 = *(v1512 + 28);
      v1551 = sub_1BE04AF64();
      v1552 = *(v1551 - 8);
      v1553 = *(v1552 + 48);
      if (!v1553(&v1511[v1550], 1, v1551))
      {
        (*(v1552 + 8))(&v1511[v1550], v1551);
      }

      v1554 = *(v1512 + 32);
      v11 = v1653;
      if (!v1553(&v1511[v1554], 1, v1551))
      {
        (*(v1552 + 8))(&v1511[v1554], v1551);
      }
    }

    v1555 = (v1449 + v11[12]);
    if (*v1555)
    {

      v1555[4], v1556, v1557, v1558, v1559, v1560, v1561, v1562;
    }

    v1563 = (v1449 + v11[13]);
    if (*v1563)
    {

      v1563[2], v1564, v1565, v1566, v1567, v1568, v1569, v1570;
    }

    *(v1449 + v11[14]), v1513, v1514, v1515, v1516, v1517, v1518, v1519;
    *(v1449 + v11[15]), v1571, v1572, v1573, v1574, v1575, v1576, v1577;
  }

  *(v1449 + *(v1027 + 28)), v1450, v1451, v1452, v1453, v1454, v1455, v1456;
  v1578 = (v9 + v1[36]);
  *v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585;
  v1578[1], v1586, v1587, v1588, v1589, v1590, v1591, v1592;
  v1593 = v9 + v1[37];
  *(v1593 + 8), v1594, v1595, v1596, v1597, v1598, v1599, v1600;
  *(v1593 + 16), v1601, v1602, v1603, v1604, v1605, v1606, v1607;
  *(v9 + v1[38] + 8), v1608, v1609, v1610, v1611, v1612, v1613, v1614;
  *(v9 + v1[39] + 8), v1615, v1616, v1617, v1618, v1619, v1620, v1621;
  v1622 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1630 = sub_1BE04C884();
    (*(*(v1630 - 8) + 8))(v9 + v1622, v1630);
  }

  else
  {
    *(v9 + v1622), v1623, v1624, v1625, v1626, v1627, v1628, v1629;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD09D648()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v1644 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v1644 + 24) & ~v1644);
  v3 = (v2 + v1[6]);
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 1) + 48);
  v1645 = v5;
  v1646 = v4;
  if (!v5(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v3[1], v7, v8, v9, v10, v11, v12, v13;
      v3[3], v14, v15, v16, v17, v18, v19, v20;
      v21 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v22 = sub_1BE04CF34();
      (*(*(v22 - 8) + 8))(v3 + v21, v22);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v23 = (v3 + v4[6]);
    v24 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v24 - 1) + 48))(v23, 1, v24))
    {
      v23[1], v25, v26, v27, v28, v29, v30, v31;
      v32 = v24[5];
      v33 = sub_1BE04DA84();
      (*(*(v33 - 8) + 8))(v23 + v32, v33);
      *(v23 + v24[6] + 8), v34, v35, v36, v37, v38, v39, v40;
      *(v23 + v24[7] + 8), v41, v42, v43, v44, v45, v46, v47;
      *(v23 + v24[8] + 8), v48, v49, v50, v51, v52, v53, v54;
    }

    v55 = (v3 + v4[7]);
    v56 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
    {

      v57 = *(v56 + 28);
      v58 = sub_1BE04AF64();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(v55 + v57, 1, v58))
      {
        (*(v59 + 8))(v55 + v57, v58);
      }
    }

    v60 = v3 + v4[10];
    v61 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
    {
      v69 = *(v60 + 2);
      if (v69 != 1)
      {
        v69, v62, v63, v64, v65, v66, v67, v68;
        *(v60 + 4), v70, v71, v72, v73, v74, v75, v76;
        *(v60 + 6), v77, v78, v79, v80, v81, v82, v83;
      }

      v84 = *(v60 + 9);
      if (v84 != 1)
      {
        v84, v62, v63, v64, v65, v66, v67, v68;
        *(v60 + 11), v85, v86, v87, v88, v89, v90, v91;
        *(v60 + 13), v92, v93, v94, v95, v96, v97, v98;
      }

      v99 = *(v61 + 28);
      v100 = sub_1BE04AF64();
      v101 = *(v100 - 8);
      v102 = *(v101 + 48);
      if (!v102(&v60[v99], 1, v100))
      {
        (*(v101 + 8))(&v60[v99], v100);
      }

      v103 = *(v61 + 32);
      v104 = v102(&v60[v103], 1, v100);
      v5 = v1645;
      v4 = v1646;
      if (!v104)
      {
        (*(v101 + 8))(&v60[v103], v100);
      }
    }

    v105 = (v3 + v4[12]);
    if (*v105)
    {

      v105[4], v106, v107, v108, v109, v110, v111, v112;
    }

    v113 = (v3 + v4[13]);
    if (*v113)
    {

      v113[2], v114, v115, v116, v117, v118, v119, v120;
    }

    *(v3 + v4[14]), v62, v63, v64, v65, v66, v67, v68;
    *(v3 + v4[15]), v121, v122, v123, v124, v125, v126, v127;
  }

  v128 = type metadata accessor for Passes(0);

  *(v3 + v128[7]), v129, v130, v131, v132, v133, v134, v135;
  *(v3 + v128[9]), v136, v137, v138, v139, v140, v141, v142;
  *(v3 + v128[11]), v143, v144, v145, v146, v147, v148, v149;
  v150 = v2 + v1[7];
  if (*(v150 + 48))
  {
    sub_1BD0D455C(*v150, *(v150 + 8), *(v150 + 16));

    *(v150 + 48), v151, v152, v153, v154, v155, v156, v157;
    *(v150 + 64), v158, v159, v160, v161, v162, v163, v164;
  }

  v165 = (v2 + v1[8]);
  v166 = type metadata accessor for PeerPaymentModel(0);
  v167 = *(*(v166 - 1) + 48);
  if (!v167(v165, 1, v166))
  {

    v168 = (v165 + v166[5]);
    type metadata accessor for WrappedPass(0);
    v169 = swift_getEnumCaseMultiPayload();
    v1634 = v128;
    if (v169 == 2)
    {
      v168[1], v170, v171, v172, v173, v174, v175, v176;
      v168[3], v177, v178, v179, v180, v181, v182, v183;
      v184 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v185 = sub_1BE04CF34();
      (*(*(v185 - 8) + 8))(v168 + v184, v185);
    }

    else if (v169 <= 1)
    {
    }

    v1629 = v167;
    v186 = (v168 + v4[6]);
    v187 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v187 - 1) + 48))(v186, 1, v187))
    {
      v186[1], v188, v189, v190, v191, v192, v193, v194;
      v195 = v187[5];
      v196 = sub_1BE04DA84();
      (*(*(v196 - 8) + 8))(v186 + v195, v196);
      *(v186 + v187[6] + 8), v197, v198, v199, v200, v201, v202, v203;
      *(v186 + v187[7] + 8), v204, v205, v206, v207, v208, v209, v210;
      *(v186 + v187[8] + 8), v211, v212, v213, v214, v215, v216, v217;
    }

    v218 = (v168 + v4[7]);
    v219 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v219 - 8) + 48))(v218, 1, v219))
    {

      v220 = *(v219 + 28);
      v221 = sub_1BE04AF64();
      v222 = *(v221 - 8);
      if (!(*(v222 + 48))(v218 + v220, 1, v221))
      {
        (*(v222 + 8))(v218 + v220, v221);
      }
    }

    v223 = v168 + v4[10];
    v224 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v224 - 8) + 48))(v223, 1, v224))
    {
      v232 = *(v223 + 2);
      if (v232 != 1)
      {
        v232, v225, v226, v227, v228, v229, v230, v231;
        *(v223 + 4), v233, v234, v235, v236, v237, v238, v239;
        *(v223 + 6), v240, v241, v242, v243, v244, v245, v246;
      }

      v1625 = v166;
      v247 = *(v223 + 9);
      if (v247 != 1)
      {
        v247, v225, v226, v227, v228, v229, v230, v231;
        *(v223 + 11), v248, v249, v250, v251, v252, v253, v254;
        *(v223 + 13), v255, v256, v257, v258, v259, v260, v261;
      }

      v262 = *(v224 + 28);
      v263 = sub_1BE04AF64();
      v1632 = *(v263 - 8);
      v264 = *(v1632 + 48);
      if (!v264(&v223[v262], 1, v263))
      {
        (*(v1632 + 8))(&v223[v262], v263);
      }

      v265 = *(v224 + 32);
      v166 = v1625;
      if (!v264(&v223[v265], 1, v263))
      {
        (*(v1632 + 8))(&v223[v265], v263);
      }
    }

    v4 = v1646;
    v266 = (v168 + v1646[12]);
    v128 = v1634;
    v167 = v1629;
    if (*v266)
    {

      v266[4], v267, v268, v269, v270, v271, v272, v273;
    }

    v274 = (v168 + v1646[13]);
    v5 = v1645;
    if (*v274)
    {

      v274[2], v275, v276, v277, v278, v279, v280, v281;
    }

    *(v168 + v1646[14]), v225, v226, v227, v228, v229, v230, v231;
    *(v168 + v1646[15]), v282, v283, v284, v285, v286, v287, v288;
    v289 = (v165 + v166[6]);
    if (*v289 != 1)
    {

      v297 = v289[3];
      if (v297)
      {
        v297, v290, v291, v292, v293, v294, v295, v296;
        v289[5], v298, v299, v300, v301, v302, v303, v304;
        v289[7], v305, v306, v307, v308, v309, v310, v311;
        v289[9], v312, v313, v314, v315, v316, v317, v318;
      }
    }
  }

  v319 = (v2 + v1[9]);
  v320 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v320 - 8) + 48))(v319, 1, v320))
  {

    v319[4], v321, v322, v323, v324, v325, v326, v327;
    v319[6], v328, v329, v330, v331, v332, v333, v334;
    v1631 = _s11TotalAmountVMa(0);
    v335 = (v319 + *(v1631 + 40));
    _s22SummaryItemPricingTypeOMa(0);
    v336 = swift_getEnumCaseMultiPayload();
    v1628 = v320;
    v1633 = v319;
    if (v336 == 2)
    {
      v335[1], v337, v338, v339, v340, v341, v342, v343;
    }

    else if (v336 == 1)
    {
      v379 = sub_1BE04AF64();
      (*(*(v379 - 8) + 8))(v335, v379);
    }

    else
    {
      v344 = v1631;
      if (v336)
      {
LABEL_67:
        v380 = v5;
        v381 = v1633;

        v382 = (v1633 + v344[15]);
        v383 = v167(v382, 1, v166);
        v384 = v1646;
        if (!v383)
        {

          v1640 = v382;
          v385 = (v382 + v166[5]);
          type metadata accessor for WrappedPass(0);
          v386 = v385;
          v387 = swift_getEnumCaseMultiPayload();
          v1635 = v128;
          if (v387 == 2)
          {
            v385[1], v388, v389, v390, v391, v392, v393, v394;
            v385[3], v397, v398, v399, v400, v401, v402, v403;
            v404 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v405 = sub_1BE04CF34();
            (*(*(v405 - 8) + 8))(v386 + v404, v405);
            v395 = v1646;
            v396 = v386;
          }

          else
          {
            v395 = v1646;
            if (v387 == 1)
            {
              v396 = v385;
            }

            else
            {
              v396 = v385;
              if (!v387)
              {
              }
            }
          }

          v1627 = v166;
          v406 = (v396 + v395[6]);
          v407 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v407 - 1) + 48))(v406, 1, v407))
          {
            v406[1], v408, v409, v410, v411, v412, v413, v414;
            v415 = v407[5];
            v416 = sub_1BE04DA84();
            (*(*(v416 - 8) + 8))(v406 + v415, v416);
            *(v406 + v407[6] + 8), v417, v418, v419, v420, v421, v422, v423;
            *(v406 + v407[7] + 8), v424, v425, v426, v427, v428, v429, v430;
            *(v406 + v407[8] + 8), v431, v432, v433, v434, v435, v436, v437;
          }

          v438 = (v396 + v395[7]);
          v439 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v439 - 8) + 48))(v438, 1, v439))
          {

            v440 = *(v439 + 28);
            v441 = sub_1BE04AF64();
            v442 = *(v441 - 8);
            if (!(*(v442 + 48))(v438 + v440, 1, v441))
            {
              (*(v442 + 8))(v438 + v440, v441);
            }
          }

          v443 = v396 + v395[10];
          v444 = type metadata accessor for PassEligibleRewardsInfo(0);
          if (!(*(*(v444 - 8) + 48))(v443, 1, v444))
          {
            v452 = *(v443 + 2);
            if (v452 != 1)
            {
              v452, v445, v446, v447, v448, v449, v450, v451;
              *(v443 + 4), v453, v454, v455, v456, v457, v458, v459;
              *(v443 + 6), v460, v461, v462, v463, v464, v465, v466;
            }

            v467 = *(v443 + 9);
            if (v467 != 1)
            {
              v467, v445, v446, v447, v448, v449, v450, v451;
              *(v443 + 11), v468, v469, v470, v471, v472, v473, v474;
              *(v443 + 13), v475, v476, v477, v478, v479, v480, v481;
            }

            v482 = *(v444 + 28);
            v483 = sub_1BE04AF64();
            v484 = *(v483 - 8);
            v485 = *(v484 + 48);
            if (!v485(&v443[v482], 1, v483))
            {
              (*(v484 + 8))(&v443[v482], v483);
            }

            v486 = *(v444 + 32);
            if (!v485(&v443[v486], 1, v483))
            {
              (*(v484 + 8))(&v443[v486], v483);
            }
          }

          v487 = (v396 + v1646[12]);
          v128 = v1635;
          if (*v487)
          {

            v487[4], v488, v489, v490, v491, v492, v493, v494;
          }

          v495 = (v396 + v1646[13]);
          if (*v495)
          {

            v495[2], v496, v497, v498, v499, v500, v501, v502;
          }

          *(v396 + v1646[14]), v445, v446, v447, v448, v449, v450, v451;
          *(v396 + v1646[15]), v503, v504, v505, v506, v507, v508, v509;
          v510 = (v1640 + v1627[6]);
          if (*v510 != 1)
          {

            v518 = v510[3];
            if (v518)
            {
              v518, v511, v512, v513, v514, v515, v516, v517;
              v510[5], v519, v520, v521, v522, v523, v524, v525;
              v510[7], v526, v527, v528, v529, v530, v531, v532;
              v510[9], v533, v534, v535, v536, v537, v538, v539;
            }
          }

          v384 = v1646;
          v380 = v1645;

          v344 = v1631;
          v381 = v1633;
        }

        v540 = (v381 + v344[16]);
        v5 = v380;
        v4 = v384;
        if (!(*(*(v128 - 1) + 48))(v540, 1, v128))
        {
          if (!v380(v540, 1, v384))
          {
            type metadata accessor for WrappedPass(0);
            v548 = swift_getEnumCaseMultiPayload();
            v1636 = v128;
            if (v548 == 2)
            {
              v540[1], v549, v550, v551, v552, v553, v554, v555;
              v540[3], v556, v557, v558, v559, v560, v561, v562;
              v563 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v564 = sub_1BE04CF34();
              (*(*(v564 - 8) + 8))(v540 + v563, v564);
            }

            else if (v548 <= 1)
            {
            }

            v565 = (v540 + v384[6]);
            v566 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v566 - 1) + 48))(v565, 1, v566))
            {
              v565[1], v567, v568, v569, v570, v571, v572, v573;
              v574 = v566[5];
              v575 = sub_1BE04DA84();
              (*(*(v575 - 8) + 8))(v565 + v574, v575);
              *(v565 + v566[6] + 8), v576, v577, v578, v579, v580, v581, v582;
              *(v565 + v566[7] + 8), v583, v584, v585, v586, v587, v588, v589;
              *(v565 + v566[8] + 8), v590, v591, v592, v593, v594, v595, v596;
            }

            v597 = (v540 + v384[7]);
            v598 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v598 - 8) + 48))(v597, 1, v598))
            {

              v599 = *(v598 + 28);
              v600 = sub_1BE04AF64();
              v601 = *(v600 - 8);
              if (!(*(v601 + 48))(v597 + v599, 1, v600))
              {
                (*(v601 + 8))(v597 + v599, v600);
              }
            }

            v602 = v540 + v4[10];
            v603 = type metadata accessor for PassEligibleRewardsInfo(0);
            if (!(*(*(v603 - 8) + 48))(v602, 1, v603))
            {
              v611 = *(v602 + 2);
              if (v611 != 1)
              {
                v611, v604, v605, v606, v607, v608, v609, v610;
                *(v602 + 4), v612, v613, v614, v615, v616, v617, v618;
                *(v602 + 6), v619, v620, v621, v622, v623, v624, v625;
              }

              v626 = *(v602 + 9);
              if (v626 != 1)
              {
                v626, v604, v605, v606, v607, v608, v609, v610;
                *(v602 + 11), v627, v628, v629, v630, v631, v632, v633;
                *(v602 + 13), v634, v635, v636, v637, v638, v639, v640;
              }

              v641 = *(v603 + 28);
              v642 = sub_1BE04AF64();
              v643 = *(v642 - 8);
              v644 = *(v643 + 48);
              if (!v644(&v602[v641], 1, v642))
              {
                (*(v643 + 8))(&v602[v641], v642);
              }

              v645 = *(v603 + 32);
              if (!v644(&v602[v645], 1, v642))
              {
                (*(v643 + 8))(&v602[v645], v642);
              }
            }

            v4 = v1646;
            v646 = (v540 + v1646[12]);
            v128 = v1636;
            if (*v646)
            {

              v646[4], v647, v648, v649, v650, v651, v652, v653;
            }

            v654 = (v540 + v1646[13]);
            v5 = v1645;
            if (*v654)
            {

              v654[2], v655, v656, v657, v658, v659, v660, v661;
            }

            *(v540 + v1646[14]), v604, v605, v606, v607, v608, v609, v610;
            *(v540 + v1646[15]), v662, v663, v664, v665, v666, v667, v668;
          }

          *(v540 + v128[7]), v669, v670, v671, v672, v673, v674, v675;
          *(v540 + v128[9]), v676, v677, v678, v679, v680, v681, v682;
          *(v540 + v128[11]), v683, v684, v685, v686, v687, v688, v689;
          v381 = v1633;
        }

        v690 = v1628;
        *(v381 + v1628[5]), v541, v542, v543, v544, v545, v546, v547;
        *(v381 + v1628[6] + 8), v691, v692, v693, v694, v695, v696, v697;
        v705 = v381 + v1628[7];
        v706 = *(v705 + 8);
        if (v706)
        {
          v706, v698, v699, v700, v701, v702, v703, v704;
          *(v705 + 24), v707, v708, v709, v710, v711, v712, v713;
        }

        v714 = v381 + v1628[9];
        v715 = *(v714 + 8);
        if (v715)
        {
          v715, v698, v699, v700, v701, v702, v703, v704;
          *(v714 + 24), v716, v717, v718, v719, v720, v721, v722;
          *(v714 + 40), v723, v724, v725, v726, v727, v728, v729;
        }

        v730 = v381 + v1628[10];
        v731 = *(v730 + 8);
        if (v731)
        {
          v731, v698, v699, v700, v701, v702, v703, v704;
          *(v730 + 24), v732, v733, v734, v735, v736, v737, v738;
          *(v730 + 40), v739, v740, v741, v742, v743, v744, v745;
        }

        v746 = (v381 + v1628[11]);
        v747 = type metadata accessor for DeferredPaymentRequest(0);
        if (!(*(*(v747 - 1) + 48))(v746, 1, v747))
        {
          v746[1], v748, v749, v750, v751, v752, v753, v754;
          v746[3], v755, v756, v757, v758, v759, v760, v761;
          v746[5], v762, v763, v764, v765, v766, v767, v768;
          v769 = v747[7];
          v770 = sub_1BE04AF64();
          v771 = *(v770 - 8);
          if (!(*(v771 + 48))(v746 + v769, 1, v770))
          {
            (*(v771 + 8))(v746 + v769, v770);
          }

          v772 = v747[8];
          v773 = sub_1BE04B3B4();
          v774 = *(v773 - 8);
          if (!(*(v774 + 48))(v746 + v772, 1, v773))
          {
            (*(v774 + 8))(v746 + v772, v773);
          }

          v5 = v1645;
          v690 = v1628;
        }

        *(v381 + v690[12]), v748, v749, v750, v751, v752, v753, v754;
        goto LABEL_136;
      }

      v1630 = v167;
      v1626 = v166;
      v345 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v346 = v345[6];
      v347 = sub_1BE04AF64();
      v348 = *(v347 - 8);
      v349 = *(v348 + 48);
      if (!v349(v335 + v346, 1, v347))
      {
        (*(v348 + 8))(v335 + v346, v347);
      }

      v350 = v345[7];
      if (!v349(v335 + v350, 1, v347))
      {
        (*(v348 + 8))(v335 + v350, v347);
      }

      *(v335 + v345[9] + 8), v351, v352, v353, v354, v355, v356, v357;
      *(v335 + v345[10] + 8), v358, v359, v360, v361, v362, v363, v364;
      *(v335 + v345[11] + 8), v365, v366, v367, v368, v369, v370, v371;
      *(v335 + v345[12] + 8), v372, v373, v374, v375, v376, v377, v378;
      v5 = v1645;
      v166 = v1626;
      v167 = v1630;
    }

    v344 = v1631;
    goto LABEL_67;
  }

LABEL_136:

  *(v2 + v1[12] + 8), v775, v776, v777, v778, v779, v780, v781;
  *(v2 + v1[13] + 8), v782, v783, v784, v785, v786, v787, v788;
  *(v2 + v1[14] + 8), v789, v790, v791, v792, v793, v794, v795;
  *(v2 + v1[15] + 8), v796, v797, v798, v799, v800, v801, v802;
  *(v2 + v1[16] + 8), v803, v804, v805, v806, v807, v808, v809;
  *(v2 + v1[17] + 8), v810, v811, v812, v813, v814, v815, v816;
  *(v2 + v1[18] + 8), v817, v818, v819, v820, v821, v822, v823;
  *(v2 + v1[19] + 8), v824, v825, v826, v827, v828, v829, v830;
  *(v2 + v1[20] + 8), v831, v832, v833, v834, v835, v836, v837;
  *(v2 + v1[21]), v838, v839, v840, v841, v842, v843, v844;
  *(v2 + v1[22]), v845, v846, v847, v848, v849, v850, v851;
  *(v2 + v1[23] + 8), v852, v853, v854, v855, v856, v857, v858;
  v866 = v2 + v1[24];
  if (*v866)
  {
    *(v866 + 8), v859, v860, v861, v862, v863, v864, v865;
  }

  *(v2 + v1[26]), v859, v860, v861, v862, v863, v864, v865;
  v874 = v2 + v1[27];
  v875 = *(v874 + 8);
  if (v875)
  {
    v875, v867, v868, v869, v870, v871, v872, v873;
    *(v874 + 24), v876, v877, v878, v879, v880, v881, v882;
  }

  *(v874 + 48), v867, v868, v869, v870, v871, v872, v873;
  *(v2 + v1[28]), v883, v884, v885, v886, v887, v888, v889;
  v890 = (v2 + v1[29]);

  v890[1], v891, v892, v893, v894, v895, v896, v897;
  v898 = (v2 + v1[30]);
  if (!v5(v898, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v899 = swift_getEnumCaseMultiPayload();
    if (v899 == 2)
    {
      v898[1], v900, v901, v902, v903, v904, v905, v906;
      v898[3], v907, v908, v909, v910, v911, v912, v913;
      v914 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v915 = sub_1BE04CF34();
      (*(*(v915 - 8) + 8))(v898 + v914, v915);
    }

    else if (v899 <= 1)
    {
    }

    v916 = (v898 + v4[6]);
    v917 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v917 - 1) + 48))(v916, 1, v917))
    {
      v916[1], v918, v919, v920, v921, v922, v923, v924;
      v925 = v917[5];
      v926 = sub_1BE04DA84();
      (*(*(v926 - 8) + 8))(v916 + v925, v926);
      *(v916 + v917[6] + 8), v927, v928, v929, v930, v931, v932, v933;
      *(v916 + v917[7] + 8), v934, v935, v936, v937, v938, v939, v940;
      *(v916 + v917[8] + 8), v941, v942, v943, v944, v945, v946, v947;
    }

    v948 = (v898 + v4[7]);
    v949 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v949 - 8) + 48))(v948, 1, v949))
    {

      v950 = *(v949 + 28);
      v951 = sub_1BE04AF64();
      v952 = *(v951 - 8);
      if (!(*(v952 + 48))(v948 + v950, 1, v951))
      {
        (*(v952 + 8))(v948 + v950, v951);
      }
    }

    v953 = v898 + v4[10];
    v954 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v954 - 8) + 48))(v953, 1, v954))
    {
      v962 = *(v953 + 2);
      if (v962 != 1)
      {
        v962, v955, v956, v957, v958, v959, v960, v961;
        *(v953 + 4), v963, v964, v965, v966, v967, v968, v969;
        *(v953 + 6), v970, v971, v972, v973, v974, v975, v976;
      }

      v977 = *(v953 + 9);
      if (v977 != 1)
      {
        v977, v955, v956, v957, v958, v959, v960, v961;
        *(v953 + 11), v978, v979, v980, v981, v982, v983, v984;
        *(v953 + 13), v985, v986, v987, v988, v989, v990, v991;
      }

      v992 = *(v954 + 28);
      v993 = sub_1BE04AF64();
      v994 = *(v993 - 8);
      v995 = *(v994 + 48);
      if (!v995(&v953[v992], 1, v993))
      {
        (*(v994 + 8))(&v953[v992], v993);
      }

      v996 = *(v954 + 32);
      v5 = v1645;
      v4 = v1646;
      if (!v995(&v953[v996], 1, v993))
      {
        (*(v994 + 8))(&v953[v996], v993);
      }
    }

    v997 = (v898 + v4[12]);
    if (*v997)
    {

      v997[4], v998, v999, v1000, v1001, v1002, v1003, v1004;
    }

    v1005 = (v898 + v4[13]);
    if (*v1005)
    {

      v1005[2], v1006, v1007, v1008, v1009, v1010, v1011, v1012;
    }

    *(v898 + v4[14]), v955, v956, v957, v958, v959, v960, v961;
    *(v898 + v4[15]), v1013, v1014, v1015, v1016, v1017, v1018, v1019;
  }

  v1020 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  *(v898 + *(v1020 + 28)), v1021, v1022, v1023, v1024, v1025, v1026, v1027;
  v1028 = (v2 + v1[31]);

  v1028[1], v1029, v1030, v1031, v1032, v1033, v1034, v1035;
  v1036 = (v2 + v1[32]);
  v1037 = _s11DetailSheetOMa(0);
  if (!(*(*(v1037 - 8) + 48))(v1036, 1, v1037))
  {
    v1038 = swift_getEnumCaseMultiPayload();
    if (v1038 <= 1)
    {
      if (!v1038)
      {
        if (!v5(v1036, 1, v4))
        {
          type metadata accessor for WrappedPass(0);
          v1056 = swift_getEnumCaseMultiPayload();
          if (v1056 == 2)
          {
            v1036[1], v1057, v1058, v1059, v1060, v1061, v1062, v1063;
            v1036[3], v1290, v1291, v1292, v1293, v1294, v1295, v1296;
            v1297 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v1298 = sub_1BE04CF34();
            (*(*(v1298 - 8) + 8))(v1036 + v1297, v1298);
          }

          else if (v1056 <= 1)
          {
          }

          v1299 = (v1036 + v4[6]);
          v1300 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v1300 - 1) + 48))(v1299, 1, v1300))
          {
            v1299[1], v1301, v1302, v1303, v1304, v1305, v1306, v1307;
            v1308 = v1300[5];
            v1309 = sub_1BE04DA84();
            (*(*(v1309 - 8) + 8))(v1299 + v1308, v1309);
            *(v1299 + v1300[6] + 8), v1310, v1311, v1312, v1313, v1314, v1315, v1316;
            *(v1299 + v1300[7] + 8), v1317, v1318, v1319, v1320, v1321, v1322, v1323;
            *(v1299 + v1300[8] + 8), v1324, v1325, v1326, v1327, v1328, v1329, v1330;
          }

          v1643 = v1020;
          v1331 = (v1036 + v4[7]);
          v1332 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v1332 - 8) + 48))(v1331, 1, v1332))
          {

            v1333 = *(v1332 + 28);
            v1334 = sub_1BE04AF64();
            v1335 = *(v1334 - 8);
            if (!(*(v1335 + 48))(v1331 + v1333, 1, v1334))
            {
              (*(v1335 + 8))(v1331 + v1333, v1334);
            }
          }

          v1336 = v1036 + v4[10];
          v1337 = type metadata accessor for PassEligibleRewardsInfo(0);
          if (!(*(*(v1337 - 8) + 48))(v1336, 1, v1337))
          {
            v1345 = *(v1336 + 2);
            if (v1345 != 1)
            {
              v1345, v1338, v1339, v1340, v1341, v1342, v1343, v1344;
              *(v1336 + 4), v1346, v1347, v1348, v1349, v1350, v1351, v1352;
              *(v1336 + 6), v1353, v1354, v1355, v1356, v1357, v1358, v1359;
            }

            v1360 = *(v1336 + 9);
            if (v1360 != 1)
            {
              v1360, v1338, v1339, v1340, v1341, v1342, v1343, v1344;
              *(v1336 + 11), v1361, v1362, v1363, v1364, v1365, v1366, v1367;
              *(v1336 + 13), v1368, v1369, v1370, v1371, v1372, v1373, v1374;
            }

            v1375 = *(v1337 + 28);
            v1376 = sub_1BE04AF64();
            v1377 = *(v1376 - 8);
            v1378 = *(v1377 + 48);
            if (!v1378(&v1336[v1375], 1, v1376))
            {
              (*(v1377 + 8))(&v1336[v1375], v1376);
            }

            v1639 = v1377;
            v1379 = *(v1337 + 32);
            v5 = v1645;
            v4 = v1646;
            if (!v1378(&v1336[v1379], 1, v1376))
            {
              (*(v1639 + 8))(&v1336[v1379], v1376);
            }
          }

          v1380 = (v1036 + v4[12]);
          if (*v1380)
          {

            v1380[4], v1381, v1382, v1383, v1384, v1385, v1386, v1387;
          }

          v1388 = (v1036 + v4[13]);
          v1020 = v1643;
          if (*v1388)
          {

            v1388[2], v1389, v1390, v1391, v1392, v1393, v1394, v1395;
          }

          *(v1036 + v4[14]), v1338, v1339, v1340, v1341, v1342, v1343, v1344;
          *(v1036 + v4[15]), v1396, v1397, v1398, v1399, v1400, v1401, v1402;
        }

        v1403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

        v1404 = (v1036 + *(v1403 + 64));
        v1404[1], v1405, v1406, v1407, v1408, v1409, v1410, v1411;
        v1404[3], v1412, v1413, v1414, v1415, v1416, v1417, v1418;
        v1047 = v1404[4];
        goto LABEL_243;
      }

      if (v1038 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v1047 = *v1036;
LABEL_243:

      goto LABEL_244;
    }

    if (v1038 != 2)
    {
      if (v1038 != 3)
      {
        if (v1038 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v1039 = swift_getEnumCaseMultiPayload();
        if (v1039 == 2)
        {
          v1036[1], v1040, v1041, v1042, v1043, v1044, v1045, v1046;
          v1036[3], v1177, v1178, v1179, v1180, v1181, v1182, v1183;
          v1184 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v1185 = sub_1BE04CF34();
          (*(*(v1185 - 8) + 8))(v1036 + v1184, v1185);
        }

        else if (v1039 <= 1)
        {
        }

        v1186 = (v1036 + v4[6]);
        v1187 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v1187 - 1) + 48))(v1186, 1, v1187))
        {
          v1186[1], v1188, v1189, v1190, v1191, v1192, v1193, v1194;
          v1195 = v1187[5];
          v1196 = sub_1BE04DA84();
          (*(*(v1196 - 8) + 8))(v1186 + v1195, v1196);
          *(v1186 + v1187[6] + 8), v1197, v1198, v1199, v1200, v1201, v1202, v1203;
          *(v1186 + v1187[7] + 8), v1204, v1205, v1206, v1207, v1208, v1209, v1210;
          *(v1186 + v1187[8] + 8), v1211, v1212, v1213, v1214, v1215, v1216, v1217;
        }

        v1642 = v1020;
        v1218 = (v1036 + v4[7]);
        v1219 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v1219 - 8) + 48))(v1218, 1, v1219))
        {

          v1220 = *(v1219 + 28);
          v1221 = sub_1BE04AF64();
          v1222 = *(v1221 - 8);
          if (!(*(v1222 + 48))(v1218 + v1220, 1, v1221))
          {
            (*(v1222 + 8))(v1218 + v1220, v1221);
          }
        }

        v1223 = v1036 + v4[10];
        v1224 = type metadata accessor for PassEligibleRewardsInfo(0);
        if (!(*(*(v1224 - 8) + 48))(v1223, 1, v1224))
        {
          v1232 = *(v1223 + 2);
          if (v1232 != 1)
          {
            v1232, v1225, v1226, v1227, v1228, v1229, v1230, v1231;
            *(v1223 + 4), v1233, v1234, v1235, v1236, v1237, v1238, v1239;
            *(v1223 + 6), v1240, v1241, v1242, v1243, v1244, v1245, v1246;
          }

          v1247 = *(v1223 + 9);
          if (v1247 != 1)
          {
            v1247, v1225, v1226, v1227, v1228, v1229, v1230, v1231;
            *(v1223 + 11), v1248, v1249, v1250, v1251, v1252, v1253, v1254;
            *(v1223 + 13), v1255, v1256, v1257, v1258, v1259, v1260, v1261;
          }

          v1262 = *(v1224 + 28);
          v1263 = sub_1BE04AF64();
          v1264 = *(v1263 - 8);
          v1265 = *(v1264 + 48);
          if (!v1265(&v1223[v1262], 1, v1263))
          {
            (*(v1264 + 8))(&v1223[v1262], v1263);
          }

          v1638 = v1264;
          v1266 = *(v1224 + 32);
          v5 = v1645;
          v4 = v1646;
          if (!v1265(&v1223[v1266], 1, v1263))
          {
            (*(v1638 + 8))(&v1223[v1266], v1263);
          }
        }

        v1267 = (v1036 + v4[12]);
        if (*v1267)
        {

          v1267[4], v1268, v1269, v1270, v1271, v1272, v1273, v1274;
        }

        v1275 = (v1036 + v4[13]);
        v1020 = v1642;
        if (*v1275)
        {

          v1275[2], v1276, v1277, v1278, v1279, v1280, v1281, v1282;
        }

        *(v1036 + v4[14]), v1225, v1226, v1227, v1228, v1229, v1230, v1231;
        *(v1036 + v4[15]), v1283, v1284, v1285, v1286, v1287, v1288, v1289;
        v1047 = *(v1036 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60, &unk_1BE0DAEA8) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v1048 = swift_getEnumCaseMultiPayload();
    if (v1048 == 2)
    {
      v1036[1], v1049, v1050, v1051, v1052, v1053, v1054, v1055;
      v1036[3], v1064, v1065, v1066, v1067, v1068, v1069, v1070;
      v1071 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1072 = sub_1BE04CF34();
      (*(*(v1072 - 8) + 8))(v1036 + v1071, v1072);
    }

    else if (v1048 <= 1)
    {
    }

    v1073 = (v1036 + v4[6]);
    v1074 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1074 - 1) + 48))(v1073, 1, v1074))
    {
      v1073[1], v1075, v1076, v1077, v1078, v1079, v1080, v1081;
      v1082 = v1074[5];
      v1083 = sub_1BE04DA84();
      (*(*(v1083 - 8) + 8))(v1073 + v1082, v1083);
      *(v1073 + v1074[6] + 8), v1084, v1085, v1086, v1087, v1088, v1089, v1090;
      *(v1073 + v1074[7] + 8), v1091, v1092, v1093, v1094, v1095, v1096, v1097;
      *(v1073 + v1074[8] + 8), v1098, v1099, v1100, v1101, v1102, v1103, v1104;
    }

    v1641 = v1020;
    v1105 = (v1036 + v4[7]);
    v1106 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1106 - 8) + 48))(v1105, 1, v1106))
    {

      v1107 = *(v1106 + 28);
      v1108 = sub_1BE04AF64();
      v1109 = *(v1108 - 8);
      if (!(*(v1109 + 48))(v1105 + v1107, 1, v1108))
      {
        (*(v1109 + 8))(v1105 + v1107, v1108);
      }
    }

    v1110 = v1036 + v4[10];
    v1111 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1111 - 8) + 48))(v1110, 1, v1111))
    {
      v1119 = *(v1110 + 2);
      if (v1119 != 1)
      {
        v1119, v1112, v1113, v1114, v1115, v1116, v1117, v1118;
        *(v1110 + 4), v1120, v1121, v1122, v1123, v1124, v1125, v1126;
        *(v1110 + 6), v1127, v1128, v1129, v1130, v1131, v1132, v1133;
      }

      v1134 = *(v1110 + 9);
      if (v1134 != 1)
      {
        v1134, v1112, v1113, v1114, v1115, v1116, v1117, v1118;
        *(v1110 + 11), v1135, v1136, v1137, v1138, v1139, v1140, v1141;
        *(v1110 + 13), v1142, v1143, v1144, v1145, v1146, v1147, v1148;
      }

      v1149 = *(v1111 + 28);
      v1150 = sub_1BE04AF64();
      v1151 = *(v1150 - 8);
      v1152 = *(v1151 + 48);
      if (!v1152(&v1110[v1149], 1, v1150))
      {
        (*(v1151 + 8))(&v1110[v1149], v1150);
      }

      v1637 = v1151;
      v1153 = *(v1111 + 32);
      v5 = v1645;
      v4 = v1646;
      if (!v1152(&v1110[v1153], 1, v1150))
      {
        (*(v1637 + 8))(&v1110[v1153], v1150);
      }
    }

    v1154 = (v1036 + v4[12]);
    if (*v1154)
    {

      v1154[4], v1155, v1156, v1157, v1158, v1159, v1160, v1161;
    }

    v1162 = (v1036 + v4[13]);
    v1020 = v1641;
    if (*v1162)
    {

      v1162[2], v1163, v1164, v1165, v1166, v1167, v1168, v1169;
    }

    *(v1036 + v4[14]), v1112, v1113, v1114, v1115, v1116, v1117, v1118;
    *(v1036 + v4[15]), v1170, v1171, v1172, v1173, v1174, v1175, v1176;
  }

LABEL_244:
  v1419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  *(v1036 + *(v1419 + 28)), v1420, v1421, v1422, v1423, v1424, v1425, v1426;
  *(v2 + v1[33] + 8), v1427, v1428, v1429, v1430, v1431, v1432, v1433;
  v1441 = v2 + v1[34];
  if (*(v1441 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + v1[34]), v1434, v1435, v1436, v1437, v1438, v1439, v1440);
  }

  *(v1441 + 40), v1434, v1435, v1436, v1437, v1438, v1439, v1440;
  v1442 = (v2 + v1[35]);
  if (!v5(v1442, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v1450 = swift_getEnumCaseMultiPayload();
    if (v1450 == 2)
    {
      v1442[1], v1451, v1452, v1453, v1454, v1455, v1456, v1457;
      v1442[3], v1458, v1459, v1460, v1461, v1462, v1463, v1464;
      v1465 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1466 = sub_1BE04CF34();
      (*(*(v1466 - 8) + 8))(v1442 + v1465, v1466);
    }

    else if (v1450 <= 1)
    {
    }

    v1467 = (v1442 + v4[6]);
    v1468 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1468 - 1) + 48))(v1467, 1, v1468))
    {
      v1467[1], v1469, v1470, v1471, v1472, v1473, v1474, v1475;
      v1476 = v1468[5];
      v1477 = sub_1BE04DA84();
      (*(*(v1477 - 8) + 8))(v1467 + v1476, v1477);
      *(v1467 + v1468[6] + 8), v1478, v1479, v1480, v1481, v1482, v1483, v1484;
      *(v1467 + v1468[7] + 8), v1485, v1486, v1487, v1488, v1489, v1490, v1491;
      *(v1467 + v1468[8] + 8), v1492, v1493, v1494, v1495, v1496, v1497, v1498;
    }

    v1499 = (v1442 + v4[7]);
    v1500 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1500 - 8) + 48))(v1499, 1, v1500))
    {

      v1501 = *(v1500 + 28);
      v1502 = sub_1BE04AF64();
      v1503 = *(v1502 - 8);
      if (!(*(v1503 + 48))(v1499 + v1501, 1, v1502))
      {
        (*(v1503 + 8))(v1499 + v1501, v1502);
      }
    }

    v1504 = v1442 + v4[10];
    v1505 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1505 - 8) + 48))(v1504, 1, v1505))
    {
      v1513 = *(v1504 + 2);
      if (v1513 != 1)
      {
        v1513, v1506, v1507, v1508, v1509, v1510, v1511, v1512;
        *(v1504 + 4), v1514, v1515, v1516, v1517, v1518, v1519, v1520;
        *(v1504 + 6), v1521, v1522, v1523, v1524, v1525, v1526, v1527;
      }

      v1528 = *(v1504 + 9);
      if (v1528 != 1)
      {
        v1528, v1506, v1507, v1508, v1509, v1510, v1511, v1512;
        *(v1504 + 11), v1529, v1530, v1531, v1532, v1533, v1534, v1535;
        *(v1504 + 13), v1536, v1537, v1538, v1539, v1540, v1541, v1542;
      }

      v1543 = *(v1505 + 28);
      v1544 = sub_1BE04AF64();
      v1545 = *(v1544 - 8);
      v1546 = *(v1545 + 48);
      if (!v1546(&v1504[v1543], 1, v1544))
      {
        (*(v1545 + 8))(&v1504[v1543], v1544);
      }

      v1547 = *(v1505 + 32);
      v4 = v1646;
      if (!v1546(&v1504[v1547], 1, v1544))
      {
        (*(v1545 + 8))(&v1504[v1547], v1544);
      }
    }

    v1548 = (v1442 + v4[12]);
    if (*v1548)
    {

      v1548[4], v1549, v1550, v1551, v1552, v1553, v1554, v1555;
    }

    v1556 = (v1442 + v4[13]);
    if (*v1556)
    {

      v1556[2], v1557, v1558, v1559, v1560, v1561, v1562, v1563;
    }

    *(v1442 + v4[14]), v1506, v1507, v1508, v1509, v1510, v1511, v1512;
    *(v1442 + v4[15]), v1564, v1565, v1566, v1567, v1568, v1569, v1570;
  }

  *(v1442 + *(v1020 + 28)), v1443, v1444, v1445, v1446, v1447, v1448, v1449;
  v1571 = (v2 + v1[36]);
  *v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578;
  v1571[1], v1579, v1580, v1581, v1582, v1583, v1584, v1585;
  v1586 = v2 + v1[37];
  *(v1586 + 8), v1587, v1588, v1589, v1590, v1591, v1592, v1593;
  *(v1586 + 16), v1594, v1595, v1596, v1597, v1598, v1599, v1600;
  *(v2 + v1[38] + 8), v1601, v1602, v1603, v1604, v1605, v1606, v1607;
  *(v2 + v1[39] + 8), v1608, v1609, v1610, v1611, v1612, v1613, v1614;
  v1615 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1623 = sub_1BE04C884();
    (*(*(v1623 - 8) + 8))(v2 + v1615, v1623);
  }

  else
  {
    *(v2 + v1615), v1616, v1617, v1618, v1619, v1620, v1621, v1622;
  }

  return swift_deallocObject();
}