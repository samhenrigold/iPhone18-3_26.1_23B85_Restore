id sub_1BD676770(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppleBalanceEnterAmountView.Coordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BD67695C@<X0>(void *a1@<X8>)
{
  result = sub_1BD675474();
  *a1 = result;
  return result;
}

uint64_t sub_1BD676984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6771D0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD6769E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6771D0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD676A4C(uint64_t a1)
{
  sub_1BD6771D0();
  sub_1BE04F964();
  __break(1u);
}

void sub_1BD676A74(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration);
  if (v3)
  {
    if (a2)
    {
      v5 = sub_1BE0533F4();
      v7 = v6;
      v9 = v8;
      v10 = v3;
      v11 = [v10 maxAmount];
      v12 = sub_1BE0533F4();
      v14 = v13;
      v16 = v15;

      sub_1BD675914(v5, v7, v9);
      if (a1)
      {
        v17 = sub_1BE0533F4();
        v19 = v18;
        v21 = v20;
        if (MEMORY[0x1BFB403F0](v12, v14, v16, v5, v7, v9))
        {
          MEMORY[0x1BFB403F0](v12, v14, v16, v17, v19, v21);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BD676B98(void *a1)
{
  if (a1)
  {
    v2 = [a1 value];
    if (v2)
    {
      v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_view);
      if (v3)
      {
        v6 = v2;
        v4 = v3;
        [v4 setCurrentAmount_];
        v5 = v4;
        sub_1BD6756EC(v3);

        v2 = v5;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void destroy for AppleBalanceEnterAmountView(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 8), v9, v10, v11, v12, v13, v14, v15;
  *(a1 + 40), v16, v17, v18, v19, v20, v21, v22;
  *(a1 + 48), v23, v24, v25, v26, v27, v28, v29;
  *(a1 + 64), v30, v31, v32, v33, v34, v35, v36;
  *(a1 + 72), v37, v38, v39, v40, v41, v42, v43;
  *(a1 + 80), v44, v45, v46, v47, v48, v49, v50;
  *(a1 + 88), v51, v52, v53, v54, v55, v56, v57;

  *(a1 + 120), v58, v59, v60, v61, v62, v63, v64;
  *(a1 + 128), v65, v66, v67, v68, v69, v70, v71;
  v79 = *(a1 + 152);

  v79, v72, v73, v74, v75, v76, v77, v78;
}

uint64_t initializeWithCopy for AppleBalanceEnterAmountView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;
  v7 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v7;
  v8 = *(a2 + 104);
  v14 = *(a2 + 112);
  *(a1 + 104) = v8;
  *(a1 + 112) = v14;
  v9 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v9;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v10 = v7;
  v11 = v8;
  v12 = v14;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  return a1;
}

uint64_t assignWithCopy for AppleBalanceEnterAmountView(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_1BE048964();
  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_1BE048964();
  v12, v13, v14, v15, v16, v17, v18, v19;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  v20 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  sub_1BE048964();
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  sub_1BE048964();
  v28, v29, v30, v31, v32, v33, v34, v35;
  *(a1 + 56) = *(a2 + 56);
  v36 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  sub_1BE048C84();
  v36, v37, v38, v39, v40, v41, v42, v43;
  v44 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  sub_1BE048964();
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  sub_1BE048964();
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  sub_1BE048964();
  v60, v61, v62, v63, v64, v65, v66, v67;
  v68 = *(a1 + 96);
  v69 = *(a2 + 96);
  *(a1 + 96) = v69;
  v70 = v69;

  v71 = *(a2 + 104);
  v72 = *(a1 + 104);
  *(a1 + 104) = v71;
  v73 = v71;

  v74 = *(a1 + 112);
  v75 = *(a2 + 112);
  *(a1 + 112) = v75;
  v76 = v75;

  v77 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  sub_1BE048964();
  v77, v78, v79, v80, v81, v82, v83, v84;
  v85 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  sub_1BE048964();
  v85, v86, v87, v88, v89, v90, v91, v92;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  v93 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);
  sub_1BE048964();
  v93, v94, v95, v96, v97, v98, v99, v100;
  return a1;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t assignWithTake for AppleBalanceEnterAmountView(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = *(a1 + 8);
  *a1 = *a2;
  v10, v11, v12, v13, v14, v15, v16, v17;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 40), v18, v19, v20, v21, v22, v23, v24;
  v25 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  v25, v26, v27, v28, v29, v30, v31, v32;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64), v33, v34, v35, v36, v37, v38, v39;
  v40 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  v40, v41, v42, v43, v44, v45, v46, v47;
  *(a1 + 80), v48, v49, v50, v51, v52, v53, v54;
  v55 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  v55, v56, v57, v58, v59, v60, v61, v62;

  v63 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);

  v64 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  v64, v65, v66, v67, v68, v69, v70, v71;
  v72 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  v72, v73, v74, v75, v76, v77, v78, v79;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  v80 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);
  v80, v81, v82, v83, v84, v85, v86, v87;
  return a1;
}

uint64_t getEnumTagSinglePayload for AppleBalanceEnterAmountView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for AppleBalanceEnterAmountView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD6771D0()
{
  result = qword_1EBD4EEF8;
  if (!qword_1EBD4EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EEF8);
  }

  return result;
}

unint64_t sub_1BD677224()
{
  result = qword_1EBD4EF20;
  if (!qword_1EBD4EF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4EF20);
  }

  return result;
}

void sub_1BD6772B8(uint64_t a1)
{
  type metadata accessor for UnifiedMerchantTokenData(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MerchantTokenIconProvider();
    if (v2 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v3 <= 0x3F)
      {
        sub_1BD677404();
        if (v4 <= 0x3F)
        {
          sub_1BD683EFC(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1BD683F4C(319, &qword_1EBD4EF50, type metadata accessor for MerchantTokenDetailView.ImageState, MEMORY[0x1E6981790]);
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

unint64_t sub_1BD677404()
{
  result = qword_1EBD4EF48;
  if (!qword_1EBD4EF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4EF48);
  }

  return result;
}

uint64_t sub_1BD677498(uint64_t a1)
{
  v1 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1BD6774F0@<X0>(char *a1@<X8>)
{
  v79 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v77 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77 - v9;
  v11 = sub_1BE04AA64();
  v80 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  v16 = type metadata accessor for UnifiedMerchantTokenData(0);
  v17 = (v1 + *(v16 + 84));
  v19 = *v17;
  v18 = v17[1];
  v20 = sub_1BE052434();
  v28 = v21;
  if (v20 == v19 && v21 == v18)
  {
    v21, v21, v22, v23, v24, v25, v26, v27;
    goto LABEL_10;
  }

  v77 = v4;
  v30 = sub_1BE053B84();
  v28, v31, v32, v33, v34, v35, v36, v37;
  if (v30)
  {
LABEL_10:
    sub_1BD0DE19C(v1 + *(v16 + 44), v10, &unk_1EBD3CF70, &qword_1BE0BA000);
    v45 = v80;
    if ((*(v80 + 48))(v10, 1, v11) != 1)
    {
      v49 = *(v45 + 32);
      v49(v15, v10, v11);
      v50 = sub_1BE04AA44();
      if (v51)
      {
        v83 = v50;
        v84 = v51;
        v81 = 0x7370747468;
        v82 = 0xE500000000000000;
        v52 = v51;
        sub_1BD0DDEBC();
        sub_1BE0535A4();
        v52, v53, v54, v55, v56, v57, v58, v59;
      }

      v60 = v79;
      v49(v79, v15, v11);
      goto LABEL_22;
    }

    v46 = v10;
    goto LABEL_12;
  }

  if (sub_1BE052434() == v19 && v38 == v18)
  {
    v38, v38, v39, v40, v41, v42, v43, v44;
    goto LABEL_17;
  }

  v61 = v38;
  v62 = sub_1BE053B84();
  v61, v63, v64, v65, v66, v67, v68, v69;
  if ((v62 & 1) == 0)
  {
    v71 = v1 + *(v16 + 44);
    v72 = v77;
    sub_1BD0DE19C(v71, v77, &unk_1EBD3CF70, &qword_1BE0BA000);
    v73 = v80;
    if ((*(v80 + 48))(v72, 1, v11) != 1)
    {
      v74 = *(v73 + 32);
      v75 = v78;
      v74(v78, v72, v11);
      v60 = v79;
      v74(v79, v75, v11);
      goto LABEL_22;
    }

    v46 = v72;
LABEL_12:
    sub_1BD0DE53C(v46, &unk_1EBD3CF70, &qword_1BE0BA000);
    v47 = type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0);
    return (*(*(v47 - 8) + 56))(v79, 1, 1, v47);
  }

LABEL_17:
  sub_1BE04AA54();
  v70 = v80;
  result = (*(v80 + 48))(v7, 1, v11);
  if (result != 1)
  {
    v60 = v79;
    (*(v70 + 32))(v79, v7, v11);
LABEL_22:
    v76 = type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v76 - 8) + 56))(v60, 0, 1, v76);
  }

  __break(1u);
  return result;
}

void sub_1BD6779F4(void *a1@<X8>)
{
  v3 = sub_1BE04AA64();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UnifiedMerchantTokenData(0);
  sub_1BD0DE19C(v1 + *(v13 + 40), v8, &qword_1EBD44D48, &qword_1BE1067C0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1BD67B8B0(v8, v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B8B0(v12, a1, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    (*(v10 + 56))(a1, 0, 1, v9);
    return;
  }

  sub_1BD0DE53C(v8, &qword_1EBD44D48, &qword_1BE1067C0);
  v14 = (v1 + *(v13 + 84));
  v15 = *v14;
  v16 = v14[1];
  v18 = sub_1BE052434();
  v24 = v17;
  if (v15 == v18 && v16 == v17)
  {
    v17, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    v25 = sub_1BE053B84();
    v24, v26, v27, v28, v29, v30, v31, v32;
    if ((v25 & 1) == 0)
    {
      (*(v10 + 56))(a1, 1, 1, v9);
      return;
    }
  }

  v33 = PKPassKitUIBundle();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1BE052404();
    v36 = sub_1BE052404();
    v37 = [v34 URLForResource:v35 withExtension:v36];

    if (v37)
    {
      sub_1BE04A9F4();

      v38 = sub_1BE04A9C4();
      (*(v42 + 8))(v5, v43);
    }

    else
    {
      v38 = 0;
    }

    v39 = a1;
    v40 = PKUIScreenScale();
    v41 = PKUIImageFromPDF(v38, 80.0, 80.0, v40);

    if (v41)
    {
      *v39 = v41;
      swift_storeEnumTagMultiPayload();
      (*(v10 + 56))(v39, 0, 1, v9);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD677DE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  v3 = type metadata accessor for MerchantTokenDetailView(0);
  v131 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v132 = v4;
  v133 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v138 = (&v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v111 - v9;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF68, &qword_1BE0ECE50);
  MEMORY[0x1EEE9AC00](v140);
  v12 = &v111 - v11;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF70, &qword_1BE0ECE58);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v141 = &v111 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF78, &qword_1BE0ECE60);
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v111 - v14;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF80, &qword_1BE0ECE68);
  MEMORY[0x1EEE9AC00](v121);
  v130 = &v111 - v15;
  v16 = type metadata accessor for MerchantTokenPresentationModel(0);
  v122 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v126 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v111 - v19;
  sub_1BD67B848(v2, &v111 - v19, type metadata accessor for UnifiedMerchantTokenData);
  v137 = v12;
  v139 = v20;
  sub_1BD6788F4(v2, v20, v12);
  v21 = *(v6 + 104);
  v136 = *MEMORY[0x1E69B8080];
  v135 = v21;
  v21(v10);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;
    v120 = v25;

    v27 = *(v6 + 8);
    v117 = v6 + 8;
    v112 = v27;
    v27(v10, v5);
    v152 = v24;
    v153 = v26;
    v118 = v3;
    v28 = *(v3 + 36);
    v119 = v2;
    v29 = (v2 + v28);
    v30 = *v29;
    v31 = *(v29 + 1);
    v150 = v30;
    v151 = v31;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    v33 = v142;
    v32 = v143;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    v35 = sub_1BD67B68C();
    v36 = sub_1BD0DDEBC();
    v113 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v116 = v36;
    v114 = v35;
    v115 = v34;
    v37 = v137;
    sub_1BE050F34();
    v120, v38, v39, v40, v41, v42, v43, v44;
    v32, v45, v46, v47, v48, v49, v50, v51;
    v33, v52, v53, v54, v55, v56, v57, v58;
    sub_1BD0DE53C(v37, &qword_1EBD4EF68, &qword_1BE0ECE50);
    v59 = v138;
    v135(v138, v136, v5);
    result = PKPassKitBundle();
    if (result)
    {
      v60 = result;
      v61 = sub_1BE04B6F4();
      v63 = v62;
      v137 = v62;

      v112(v59, v5);
      v152 = v61;
      v153 = v63;
      v64 = v119;
      v65 = v119 + *(v118 + 44);
      v66 = *v65;
      v67 = *(v65 + 8);
      v150 = v66;
      v151 = v67;
      v68 = sub_1BE0516C4();
      v138 = &v111;
      v69 = v143;
      v135 = v142;
      v136 = v144;
      MEMORY[0x1EEE9AC00](v68);
      MEMORY[0x1EEE9AC00](v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80, &qword_1BE0C9780);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
      v142 = v140;
      v143 = MEMORY[0x1E69E6158];
      v144 = v115;
      v145 = MEMORY[0x1E6981148];
      v146 = v114;
      v147 = v116;
      v148 = v113;
      v149 = MEMORY[0x1E6981138];
      swift_getOpaqueTypeConformance2();
      sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
      sub_1BD170E70();
      v71 = v129;
      v72 = v123;
      v73 = v135;
      v74 = v141;
      sub_1BE050F34();
      v137, v75, v76, v77, v78, v79, v80, v81;
      v69, v82, v83, v84, v85, v86, v87, v88;
      v73, v89, v90, v91, v92, v93, v94, v95;
      (*(v128 + 8))(v74, v71);
      v96 = v130;
      (*(v125 + 32))(v130, v72, v127);
      v97 = (v96 + *(v121 + 36));
      *v97 = sub_1BD679F20;
      v97[1] = 0;
      v97[2] = 0;
      v97[3] = 0;
      v99 = *(v64 + 16);
      v98 = *(v64 + 24);
      v100 = v139;
      v101 = v126;
      sub_1BD67B848(v139, v126, type metadata accessor for MerchantTokenPresentationModel);
      v102 = v133;
      sub_1BD67B848(v64, v133, type metadata accessor for MerchantTokenDetailView);
      v103 = (*(v122 + 80) + 16) & ~*(v122 + 80);
      v104 = (v124 + *(v131 + 80) + v103) & ~*(v131 + 80);
      v105 = swift_allocObject();
      sub_1BD67B8B0(v101, v105 + v103, type metadata accessor for MerchantTokenPresentationModel);
      sub_1BD67B8B0(v102, v105 + v104, type metadata accessor for MerchantTokenDetailView);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFC0, &qword_1BE0ECE98);
      v107 = v134;
      v108 = (v134 + *(v106 + 36));
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFC8, &unk_1BE0ECEA0);
      sub_1BE048C84();
      sub_1BE0528B4();
      v110 = (v108 + *(v109 + 40));
      *v110 = v99;
      v110[1] = v98;
      *v108 = &unk_1BE0ECE90;
      v108[1] = v105;
      sub_1BD093664(v96, v107);
      return sub_1BD67BA48(v100, type metadata accessor for MerchantTokenPresentationModel);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD6788F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a2;
  v52 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFB8, &qword_1BE0ECE80);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD8, &unk_1BE0ECEE8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A98, &unk_1BE0D2A20);
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFA0, &qword_1BE0ECE78);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFE0, &qword_1BE0ECEF8);
  v48 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v43 - v18;
  v19 = (a1 + *(type metadata accessor for MerchantTokenDetailView(0) + 32));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v55) = v20;
  v56 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  v22 = sub_1BE0516A4();
  if (v54 == 1)
  {
    v49 = v14;
    v50 = v5;
    v51 = v7;
    *v16 = sub_1BE04F7B4();
    *(v16 + 1) = 0;
    v16[16] = 1;
    (*(v9 + 104))(v11, *MEMORY[0x1E69B8080], v8);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFF8, &qword_1BE0ECF08) + 44)];
      v26 = sub_1BE04B6F4();
      v28 = v27;

      (*(v9 + 8))(v11, v8);
      v55 = v26;
      v56 = v28;
      sub_1BD0DDEBC();
      v29 = v44;
      sub_1BE04E504();
      v30 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88, &unk_1BE0ECF10) + 36)];
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0, &qword_1BE0BB6F8) + 28);
      v32 = *MEMORY[0x1E697DC10];
      v33 = sub_1BE04E364();
      (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
      *v30 = swift_getKeyPath();
      (*(v45 + 32))(v25, v29, v46);
      v34 = sub_1BD0DE4F4(&qword_1EBD4EFA8, &qword_1EBD4EFA0, &qword_1BE0ECE78, MEMORY[0x1E6981870]);
      v35 = v47;
      v36 = v49;
      sub_1BE050E74();
      sub_1BD0DE53C(v16, &qword_1EBD4EFA0, &qword_1BE0ECE78);
      v37 = v48;
      (*(v48 + 16))(v51, v35, v17);
      swift_storeEnumTagMultiPayload();
      v55 = v36;
      v56 = v34;
      swift_getOpaqueTypeConformance2();
      sub_1BD0DE4F4(&qword_1EBD4EFB0, &qword_1EBD4EFB8, &qword_1BE0ECE80, MEMORY[0x1E697CD20]);
      sub_1BE04F9A4();
      return (*(v37 + 8))(v35, v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v22);
    v38 = v49;
    *(&v43 - 2) = a1;
    *(&v43 - 1) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFE8, &qword_1BE0ECF00);
    sub_1BD0DE4F4(&qword_1EBD4EFF0, &qword_1EBD4EFE8, &qword_1BE0ECF00, MEMORY[0x1E6981F48]);
    v39 = v50;
    sub_1BE0504E4();
    v40 = v51;
    v41 = v53;
    (*(v51 + 2))(v7, v39, v53);
    swift_storeEnumTagMultiPayload();
    v42 = sub_1BD0DE4F4(&qword_1EBD4EFA8, &qword_1EBD4EFA0, &qword_1BE0ECE78, MEMORY[0x1E6981870]);
    v55 = v14;
    v56 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4EFB0, &qword_1EBD4EFB8, &qword_1BE0ECE80, MEMORY[0x1E697CD20]);
    sub_1BE04F9A4();
    return (*(v40 + 1))(v39, v41);
  }

  return result;
}

id sub_1BD67908C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v14 - v1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8080], v3, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v4 + 8))(v7, v3);
    v14[0] = v10;
    v14[1] = v12;
    sub_1BE04E1B4();
    v13 = sub_1BE04E1D4();
    (*(*(v13 - 8) + 56))(v2, 0, 1, v13);
    sub_1BD0DDEBC();
    return sub_1BE051724();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD67929C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8080], v2, v4);
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

id sub_1BD679408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v69 = a2;
  v64 = a3;
  v4 = type metadata accessor for MerchantTokenDetailView(0);
  v67 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = v5;
  v70 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - v7;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v61 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v58 - v23;
  v24 = *(a1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 68));
  v25 = *(v10 + 104);
  v66 = *MEMORY[0x1E69B8080];
  v72 = v9;
  v65 = v25;
  v25(v14);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    if (v24)
    {
      v28 = "ETAIL_DELETE_SHEET_CANCEL";
    }

    else
    {
      v28 = "ERRED_SHEET_MESSAGE";
    }

    v29 = sub_1BE04B6F4();
    v31 = v30;
    (v28 | 0x8000000000000000), v30, v32, v33, v34, v35, v36, v37;

    v38 = v72;
    v60 = *(v10 + 8);
    v60(v14, v72);
    v74 = v29;
    v75 = v31;
    sub_1BE04E194();
    v39 = sub_1BE04E1D4();
    v40 = *(v39 - 8);
    v41 = *(v40 + 56);
    v58 = v40 + 56;
    v59 = v41;
    v41(v8, 0, 1, v39);
    v42 = v70;
    sub_1BD67B848(v69, v70, type metadata accessor for MerchantTokenDetailView);
    v43 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v44 = swift_allocObject();
    sub_1BD67B8B0(v42, v44 + v43, type metadata accessor for MerchantTokenDetailView);
    sub_1BD0DDEBC();
    sub_1BE051724();
    v65(v71, v66, v38);
    result = PKPassKitBundle();
    if (result)
    {
      v45 = result;
      v46 = v71;
      v47 = sub_1BE04B6F4();
      v49 = v48;

      v60(v46, v72);
      v74 = v47;
      v75 = v49;
      sub_1BE04E1B4();
      v59(v8, 0, 1, v39);
      v50 = v61;
      sub_1BE051724();
      v51 = *(v16 + 16);
      v52 = v62;
      v53 = v73;
      v51(v62, v73, v15);
      v54 = v63;
      v51(v63, v50, v15);
      v55 = v64;
      v51(v64, v52, v15);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98, &unk_1BE0ECEC0);
      v51(&v55[*(v56 + 48)], v54, v15);
      v57 = *(v16 + 8);
      v57(v50, v15);
      v57(v53, v15);
      v57(v54, v15);
      return (v57)(v52, v15);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD679A40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MerchantTokenDetailView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32[-v10];
  v12 = v2 + *(v5 + 40);
  v13 = *v12;
  v14 = *(v12 + 8);
  v32[16] = v13;
  v33 = v14;
  v32[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = sub_1BE0528D4();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_1BD67B848(v2, v8, type metadata accessor for MerchantTokenDetailView);
  sub_1BE0528A4();
  sub_1BE048C84();
  v18 = sub_1BE052894();
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v18;
  v21[3] = v22;
  sub_1BD67B8B0(v8, v21 + v19, type metadata accessor for MerchantTokenDetailView);
  v23 = (v21 + v20);
  *v23 = v16;
  v23[1] = v15;
  v24 = sub_1BD122C00(0, 0, v11, &unk_1BE0ECED8, v21);
  v24, v25, v26, v27, v28, v29, v30, v31;
}

double sub_1BD679C98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 68));
  (*(v5 + 104))(v7, *MEMORY[0x1E69B8080], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B69E0;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1BD110550();
  *(v9 + 32) = v11;
  *(v9 + 40) = v10;
  sub_1BE048C84();
  v12 = sub_1BE04B714();
  v14 = v13;
  v9, v13, v15, v16, v17, v18, v19, v20;
  (*(v5 + 8))(v7, v4);
  *&v29 = v12;
  *(&v29 + 1) = v14;
  sub_1BD0DDEBC();
  v27[1] = sub_1BE0506C4();
  v27[2] = v21;
  v27[3] = v22 & 1;
  v27[4] = v23;
  v28 = v8 != 1;
  sub_1BE04F9A4();
  result = *&v29;
  v25 = v30;
  v26 = v31;
  *a2 = v29;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  return result;
}

void sub_1BD679F20()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  v11 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD683C44(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v12 = sub_1BE052224();
  v11, v13, v14, v15, v16, v17, v18, v19;
  [v0 subject:v1 sendEvent:v12];
}

uint64_t sub_1BD67A0A8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  v2[4] = swift_task_alloc();
  sub_1BE0528A4();
  v2[5] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD67A178, v4, v3);
}

uint64_t sub_1BD67A178()
{
  v1 = *(v0 + 32);
  sub_1BD6779F4(v1);
  v2 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v10 = *(v0 + 24);
    sub_1BD0DE53C(*(v0 + 32), &qword_1EBD44D48, &qword_1BE1067C0);
    v11 = *(v10 + *(type metadata accessor for MerchantTokenDetailView(0) + 20));
    v12 = swift_task_alloc();
    *(v0 + 64) = v12;
    *v12 = v0;
    v12[1] = sub_1BD67A2E8;
    v13 = *(v0 + 24);

    return sub_1BD67A470(v13, v11);
  }

  else
  {
    v15 = *(v0 + 32);
    *(v0 + 40), v3, v4, v5, v6, v7, v8, v9;
    sub_1BD0DE53C(v15, &qword_1EBD44D48, &qword_1BE1067C0);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1BD67A2E8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD67A408, v3, v2);
}

uint64_t sub_1BD67A408(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD67A470(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BE04D214();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MerchantTokenDetailView.ImageState(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_1BE0528A4();
  v3[10] = sub_1BE052894();
  v6 = sub_1BE052844();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD67A5A0, v6, v5);
}

uint64_t sub_1BD67A5A0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  *(v0 + 104) = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  *(v0 + 112) = v5;
  *(v0 + 120) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 2, 3, v3);
  *(v0 + 160) = *(type metadata accessor for MerchantTokenDetailView(0) + 40);
  sub_1BD67B848(v1, v2, type metadata accessor for MerchantTokenDetailView.ImageState);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30, &unk_1BE0ECDA0);
  sub_1BE0516B4();
  sub_1BD67BA48(v1, type metadata accessor for MerchantTokenDetailView.ImageState);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_1BD67A708;
  v7 = *(v0 + 16);

  return sub_1BD98A454(v7);
}

uint64_t sub_1BD67A708(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_1BD67A9B0;
  }

  else
  {
    v7 = sub_1BD67A84C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD67A84C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 144);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  if (v9)
  {
    v10 = *(v8 + 144);
    v11 = *(v8 + 32);
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    v13 = sub_1BE051D74();
    sub_1BE04E7D4();
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    v22 = *(v8 + 64);
    v21 = *(v8 + 72);
    (*(v8 + 112))(v21, 3, 3, *(v8 + 104));
    sub_1BD67B848(v21, v22, type metadata accessor for MerchantTokenDetailView.ImageState);
    sub_1BE0516B4();
    sub_1BD67BA48(v21, type metadata accessor for MerchantTokenDetailView.ImageState);
  }

  v23 = *(v8 + 8);

  return v23();
}

uint64_t sub_1BD67A9B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 152);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D144();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v8 + 152);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BD026000, v11, v12, "Error fetching icon: %@", v14, 0xCu);
    sub_1BD0DE53C(v15, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v28 = *(v8 + 152);
  v18 = v11;
  v20 = *(v8 + 104);
  v19 = *(v8 + 112);
  v22 = *(v8 + 64);
  v21 = *(v8 + 72);
  v23 = *(v8 + 48);
  v24 = *(v8 + 56);
  v25 = *(v8 + 40);

  (*(v23 + 8))(v24, v25);
  v19(v21, 3, 3, v20);
  sub_1BD67B848(v21, v22, type metadata accessor for MerchantTokenDetailView.ImageState);
  sub_1BE0516B4();

  sub_1BD67BA48(v21, type metadata accessor for MerchantTokenDetailView.ImageState);

  v26 = *(v8 + 8);

  return v26();
}

uint64_t sub_1BD67ABDC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  *(&v12 - v7) = a2;
  v9 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v8, 0, 3, v9);
  type metadata accessor for MerchantTokenDetailView(0);
  sub_1BD67B848(v8, v5, type metadata accessor for MerchantTokenDetailView.ImageState);
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30, &unk_1BE0ECDA0);
  sub_1BE0516B4();
  return sub_1BD67BA48(v8, type metadata accessor for MerchantTokenDetailView.ImageState);
}

uint64_t sub_1BD67AD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v6[26] = sub_1BE0528A4();
  v6[27] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[28] = v8;
  v6[29] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD67ADE8, v8, v7);
}

uint64_t sub_1BD67ADE8(uint64_t a1)
{
  v2 = *(v1 + 200);
  v9 = *(v1 + 184);
  v3 = sub_1BE052894();
  *(v1 + 240) = v3;
  v4 = swift_task_alloc();
  *(v1 + 248) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v1 + 256) = v5;
  *v5 = v1;
  v5[1] = sub_1BD67AF08;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v1 + 272, v3, v6, 0x6F546574656C6564, 0xEF293A5F286E656BLL, sub_1BD682D2C, v4, v7);
}

uint64_t sub_1BD67AF08()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v10 = *(v2 + 224);
    v11 = *(v2 + 232);
    v12 = sub_1BD67B2D8;
  }

  else
  {
    *(v2 + 240), v3, v4, v5, v6, v7, v8, v9;

    v10 = *(v2 + 224);
    v11 = *(v2 + 232);
    v12 = sub_1BD67B02C;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD67B02C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 184);
  *(v8 + 216), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(v8 + 272);
  v11 = objc_opt_self();
  v12 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v14 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v15 = sub_1BE052434();
  v16 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v15;
  *(inited + 48) = v17;
  v18 = *v16;
  *(inited + 56) = *v16;
  v19 = sub_1BE052434();
  v20 = MEMORY[0x1E69BA440];
  *(inited + 64) = v19;
  *(inited + 72) = v21;
  v22 = *v20;
  *(inited + 80) = *v20;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v23;
  v24 = v14;
  v25 = v18;
  v26 = v22;
  v27 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD683C44(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v28 = sub_1BE052224();
  v27, v29, v30, v31, v32, v33, v34, v35;
  [v11 subject:v12 sendEvent:v28];

  v36 = type metadata accessor for MerchantTokenDetailView(0);
  v37 = (v9 + v36[8]);
  v38 = *v37;
  v39 = *(v37 + 1);
  *(v8 + 152) = v38;
  *(v8 + 160) = v39;
  *(v8 + 275) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  v40 = sub_1BE0516B4();
  if (v10 == 1)
  {
    (*(*(v8 + 184) + v36[6]))(v40);
  }

  else
  {
    v41 = (*(v8 + 184) + v36[9]);
    v42 = *v41;
    v43 = *(v41 + 1);
    *(v8 + 168) = v42;
    *(v8 + 176) = v43;
    *(v8 + 276) = 1;
    sub_1BE0516B4();
  }

  v44 = *(v8 + 8);

  return v44();
}

uint64_t sub_1BD67B2D8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 264);
  v10 = *(v8 + 240);
  v11 = *(v8 + 184);
  *(v8 + 216), a2, a3, a4, a5, a6, a7, a8;
  v10, v12, v13, v14, v15, v16, v17, v18;

  v19 = type metadata accessor for MerchantTokenDetailView(0);
  v20 = (v11 + *(v19 + 32));
  v21 = *v20;
  v22 = *(v20 + 1);
  *(v8 + 120) = v21;
  *(v8 + 128) = v22;
  *(v8 + 273) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v23 = v11 + *(v19 + 36);
  v24 = *(v23 + 8);
  *(v8 + 136) = *v23;
  *(v8 + 144) = v24;
  *(v8 + 274) = 1;
  sub_1BE048964();
  sub_1BE0516B4();

  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = *(v8 + 8);

  return v32();
}

void sub_1BD67B3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0, &qword_1BE0ECEE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = *(a2 + *(type metadata accessor for MerchantTokenDetailView(0) + 28));
  v11 = sub_1BE052404();
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(&v13[v12], v9, v6);
  aBlock[4] = sub_1BD682D38;
  v23 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3CC8C0;
  aBlock[3] = &block_descriptor_151;
  v14 = _Block_copy(aBlock);
  v23, v15, v16, v17, v18, v19, v20, v21;
  [v10 revokeMerchantTokenWithIdentifier:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1BD67B5DC(uint64_t result, id a2)
{
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0, &qword_1BE0ECEE0);
    return sub_1BE052864();
  }

  else if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0, &qword_1BE0ECEE0);
    return sub_1BE052854();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD67B68C()
{
  result = qword_1EBD4EF88;
  if (!qword_1EBD4EF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF68, &qword_1BE0ECE50);
    sub_1BD67B710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EF88);
  }

  return result;
}

unint64_t sub_1BD67B710()
{
  result = qword_1EBD4EF90;
  if (!qword_1EBD4EF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF98, &qword_1BE0ECE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EFA0, &qword_1BE0ECE78);
    sub_1BD0DE4F4(&qword_1EBD4EFA8, &qword_1EBD4EFA0, &qword_1BE0ECE78, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4EFB0, &qword_1EBD4EFB8, &qword_1BE0ECE80, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EF90);
  }

  return result;
}

uint64_t sub_1BD67B848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD67B8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD67B918()
{
  v2 = *(type metadata accessor for MerchantTokenPresentationModel(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for MerchantTokenDetailView(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BD126968;

  return sub_1BD67A0A8(v0 + v3, v0 + v6);
}

uint64_t sub_1BD67BA48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD67BAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v60 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F000, &qword_1BE0ECF50);
  v67 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F008, &qword_1BE0ECF58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F010, &qword_1BE0ECF60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F018, &qword_1BE0ECF68);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v63 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v50 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F020, &qword_1BE0ECF70);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F028, &qword_1BE0ECF78);
  v57 = *(v62 - 8);
  v26 = v57;
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v50 - v29;
  *v25 = sub_1BE04F7B4();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F030, &qword_1BE0ECF80);
  sub_1BD67DC1C(a2, a1, &v25[*(v31 + 44)]);
  sub_1BD0DE4F4(&qword_1EBD4F038, &qword_1EBD4F020, &qword_1BE0ECF70, MEMORY[0x1E6981870]);
  v32 = v30;
  v56 = v30;
  sub_1BE051A24();
  v55 = v22;
  sub_1BD67C1F4(a2, v22);
  v54 = v17;
  sub_1BD67C840(a2, v17);
  v53 = v12;
  sub_1BD67CE38(a2, v12);
  v68 = a1;
  v69 = a2;
  sub_1BD681CD4(a2, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F040, &qword_1BE0ECF88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F70, &qword_1BE0ECF90);
  sub_1BD682DD4();
  sub_1BD4D58A4();
  v33 = v65;
  sub_1BE051A54();
  v51 = *(v26 + 16);
  v34 = v61;
  v35 = v32;
  v36 = v62;
  v51(v61, v35, v62);
  v37 = v63;
  sub_1BD0DE19C(v22, v63, &qword_1EBD4F018, &qword_1BE0ECF68);
  v38 = v64;
  sub_1BD0DE19C(v17, v64, &qword_1EBD4F010, &qword_1BE0ECF60);
  v39 = v66;
  sub_1BD0DE19C(v12, v66, &qword_1EBD4F008, &qword_1BE0ECF58);
  v52 = *(v67 + 16);
  v40 = v58;
  v41 = v33;
  v42 = v59;
  v52(v58, v41, v59);
  v43 = v60;
  v51(v60, v34, v36);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F060, &qword_1BE0ECFA0);
  sub_1BD0DE19C(v37, &v43[v44[12]], &qword_1EBD4F018, &qword_1BE0ECF68);
  sub_1BD0DE19C(v38, &v43[v44[16]], &qword_1EBD4F010, &qword_1BE0ECF60);
  sub_1BD0DE19C(v39, &v43[v44[20]], &qword_1EBD4F008, &qword_1BE0ECF58);
  v52(&v43[v44[24]], v40, v42);
  v45 = *(v67 + 8);
  v46 = v42;
  v45(v65, v42);
  sub_1BD0DE53C(v53, &qword_1EBD4F008, &qword_1BE0ECF58);
  sub_1BD0DE53C(v54, &qword_1EBD4F010, &qword_1BE0ECF60);
  sub_1BD0DE53C(v55, &qword_1EBD4F018, &qword_1BE0ECF68);
  v47 = *(v57 + 8);
  v48 = v62;
  v47(v56, v62);
  v45(v40, v46);
  sub_1BD0DE53C(v66, &qword_1EBD4F008, &qword_1BE0ECF58);
  sub_1BD0DE53C(v64, &qword_1EBD4F010, &qword_1BE0ECF60);
  sub_1BD0DE53C(v63, &qword_1EBD4F018, &qword_1BE0ECF68);
  return (v47)(v61, v48);
}

id sub_1BD67C1F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F108, &qword_1BE0ED070);
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v45 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F110, &qword_1BE0ED078);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v45 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F118, &qword_1BE0ED080);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v45 - v16;
  if (*(*(a1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 88)) + 16))
  {
    v47 = &v45;
    v48 = v15;
    v49 = v7;
    v50 = v4;
    v55 = a1;
    v56 = v2;
    v17 = *MEMORY[0x1E69B8080];
    v46 = *(v9 + 104);
    v46(v14, v17, v8);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();
      v22 = v21;

      v23 = *(v9 + 8);
      v23(v14, v8);
      v61 = v20;
      v62 = v22;
      sub_1BD0DDEBC();
      v61 = sub_1BE0506C4();
      v62 = v24;
      v63 = v25 & 1;
      v64 = v26;
      v46(v11, v17, v8);
      v27 = sub_1BE04B714();
      v29 = v28;
      v23(v11, v8);
      v57 = v27;
      v58 = v29;
      v57 = sub_1BE0506C4();
      v58 = v30;
      v59 = v31 & 1;
      v60 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F120, &qword_1BE0ED088);
      sub_1BD0DE4F4(&qword_1EBD4F128, &qword_1EBD4F120, &qword_1BE0ED088, MEMORY[0x1E6981F48]);
      v33 = v51;
      sub_1BE051A34();
      v34 = v48;
      v35 = v52;
      (*(v52 + 16))(v49, v33, v48);
      swift_storeEnumTagMultiPayload();
      sub_1BD68360C();
      sub_1BD6836C8();
      sub_1BE04F9A4();
      return (*(v35 + 8))(v33, v34);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v55 = v2;
    v56 = a1;
    v36 = v7;
    (*(v9 + 104))(v11, *MEMORY[0x1E69B8080], v8);
    v37 = sub_1BE04B714();
    v39 = v38;
    (*(v9 + 8))(v11, v8);
    v61 = v37;
    v62 = v39;
    sub_1BD0DDEBC();
    v61 = sub_1BE0506C4();
    v62 = v40;
    v63 = v41 & 1;
    v64 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F148, &qword_1BE0ED090);
    sub_1BD683760();
    v43 = v49;
    sub_1BE051A54();
    v44 = v50;
    (*(v50 + 16))(v36, v43, v4);
    swift_storeEnumTagMultiPayload();
    sub_1BD68360C();
    sub_1BD6836C8();
    sub_1BE04F9A4();
    return (*(v44 + 8))(v43, v4);
  }

  return result;
}

id sub_1BD67C840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = sub_1BE04BD74();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0B8, &qword_1BE0ED010);
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MerchantTokenPresentationModel.Card(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v49 - v18;
  v19 = type metadata accessor for UnifiedMerchantTokenData(0);
  v20 = *(v19 + 76);
  v58 = a1;
  v21 = (a1 + v20);
  v22 = v21[1];
  if (!v22)
  {
    return (*(v57 + 56))(a2, 1, 1, v5);
  }

  v23 = v19;
  v51 = *v21;
  sub_1BD0DE19C(v58 + *(v19 + 72), v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
    return (*(v57 + 56))(a2, 1, 1, v5);
  }

  v49 = v5;
  v50 = a2;
  v25 = *(v11 + 32);
  v25(v13, v9, v10);
  v26 = (v58 + *(v23 + 80));
  v28 = *v26;
  v27 = v26[1];
  v29 = *(v14 + 24);
  v25(&v16[v29], v13, v10);
  (*(v11 + 56))(&v16[v29], 0, 1, v10);
  *v16 = v51;
  *(v16 + 1) = v22;
  *(v16 + 2) = v28;
  *(v16 + 3) = v27;
  v30 = v55;
  v31 = sub_1BD67B8B0(v16, v55, type metadata accessor for MerchantTokenPresentationModel.Card);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v33 = v53;
  v34 = v54;
  v35 = v56;
  (*(v54 + 104))(v53, *MEMORY[0x1E69B8080], v56, v32);
  sub_1BE048C84();
  sub_1BE048C84();
  result = PKPassKitBundle();
  if (result)
  {
    v36 = result;
    v37 = v33;
    v38 = sub_1BE04B6F4();
    v40 = v39;

    (*(v34 + 8))(v37, v35);
    v60 = v38;
    v61 = v40;
    sub_1BD0DDEBC();
    v60 = sub_1BE0506C4();
    v61 = v41;
    v62 = v42 & 1;
    v63 = v43;
    sub_1BD68048C(v58, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0C0, &unk_1BE0ED018);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
    sub_1BD0DE4F4(&qword_1EBD4F0C8, &qword_1EBD4F0C0, &unk_1BE0ED018, MEMORY[0x1E69817F8]);
    sub_1BD12E194();
    v44 = v52;
    sub_1BE051A34();
    v45 = v57;
    v46 = v50;
    v47 = v44;
    v48 = v49;
    (*(v57 + 32))(v50, v47, v49);
    (*(v45 + 56))(v46, 0, 1, v48);
    return sub_1BD67BA48(v30, type metadata accessor for MerchantTokenPresentationModel.Card);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD67CE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F070, &qword_1BE0ECFE0);
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for UnifiedMerchantTokenData(0);
  if (*(*(a1 + *(v11 + 92)) + 16))
  {
    v22 = &v22;
    v12 = MEMORY[0x1EEE9AC00](v11);
    *(&v22 - 2) = a1;
    (*(v5 + 104))(v7, *MEMORY[0x1E69B8080], v4, v12);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v17 = v16;

      (*(v5 + 8))(v7, v4);
      v24 = v15;
      v25 = v17;
      sub_1BD0DDEBC();
      v24 = sub_1BE0506C4();
      v25 = v18;
      v26 = v19 & 1;
      v27 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F078, &qword_1BE0ECFE8);
      sub_1BD6834F4();
      sub_1BE051A24();
      (*(v23 + 32))(a2, v10, v8);
      return (*(v23 + 56))(a2, 0, 1, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = *(v23 + 56);

    return v21(a2, 1, 1, v8);
  }

  return result;
}

void *sub_1BD67D168@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v57 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F160, &qword_1BE0ED0A0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = v43 - v3;
  v4 = sub_1BE04FF64();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MerchantTokenDetailView(0);
  v43[0] = *(v6 - 8);
  v7 = *(v43[0] + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v10 = v43 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F168, &qword_1BE0ED0A8);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = v43 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F158, &qword_1BE0ED098);
  MEMORY[0x1EEE9AC00](v54);
  v48 = v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F170, &qword_1BE0ED0B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v43 - v14;
  v16 = type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v43 - v21;
  v50 = a1;
  sub_1BD6774F0(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1BD0DE53C(v15, &qword_1EBD4F170, &qword_1BE0ED0B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD6837EC();
    return sub_1BE04F9A4();
  }

  else
  {
    sub_1BD67B8B0(v15, v22, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
    sub_1BD67B848(v43[1], v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenDetailView);
    sub_1BD67B848(v22, v19, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
    v24 = (*(v43[0] + 80) + 16) & ~*(v43[0] + 80);
    v25 = (v7 + *(v17 + 80) + v24) & ~*(v17 + 80);
    v26 = swift_allocObject();
    sub_1BD67B8B0(v8, v26 + v24, type metadata accessor for MerchantTokenDetailView);
    v27 = sub_1BD67B8B0(v19, v26 + v25, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
    MEMORY[0x1EEE9AC00](v27);
    v43[-2] = v50;
    sub_1BE051704();
    v28 = v51;
    sub_1BE04FF44();
    v29 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v31 = v45;
    v30 = v46;
    sub_1BE050D14();
    (*(v52 + 8))(v28, v53);
    (*(v44 + 8))(v10, v30);
    sub_1BE052434();
    v33 = v32;
    v58 = v30;
    v59 = v29;
    swift_getOpaqueTypeConformance2();
    v35 = v48;
    v34 = v49;
    sub_1BE050DE4();
    v33, v36, v37, v38, v39, v40, v41, v42;
    (*(v47 + 8))(v31, v34);
    sub_1BD0DE19C(v35, v56, &qword_1EBD4F158, &qword_1BE0ED098);
    swift_storeEnumTagMultiPayload();
    sub_1BD6837EC();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v35, &qword_1EBD4F158, &qword_1BE0ED098);
    return sub_1BD67BA48(v22, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
  }
}

uint64_t sub_1BD67D8A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for MerchantTokenDetailView(0) + 48)))
  {
    v11 = MEMORY[0x1E69BB6F8];
  }

  else
  {
    v11 = MEMORY[0x1E69BB718];
  }

  v12 = *v11;
  sub_1BD6B9D70(v12, *(a1 + 64), *(a1 + 72));

  sub_1BD67B848(a2, v10, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
  swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v7, v10, v4);
  v13 = sub_1BE04A9C4();
  PKOpenURL();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BD67DA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8080], v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B69E0;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1BD110550();
  *(v9 + 32) = v11;
  *(v9 + 40) = v10;
  sub_1BE048C84();
  v12 = sub_1BE04B714();
  v14 = v13;
  v9, v13, v15, v16, v17, v18, v19, v20;
  (*(v5 + 8))(v8, v4);
  v25[0] = v12;
  v25[1] = v14;
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v24;
  return result;
}

uint64_t sub_1BD67DC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F200, &qword_1BE0ED140) - 8;
  MEMORY[0x1EEE9AC00](v97);
  v6 = &v91 - v5;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F208, &qword_1BE0ED148) - 8;
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v91 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F210, &unk_1BE0ED150);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - v16;
  sub_1BD67E31C(a1, a2, (&v91 - v16));
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F218, &unk_1BE1067D0) + 36);
  v103 = v17;
  v19 = &v17[v18];
  v20 = v104[1];
  *v19 = v104[0];
  *(v19 + 1) = v20;
  *(v19 + 2) = v104[2];
  v21 = &v17[*(v13 + 44)];
  v22 = *(sub_1BE04EDE4() + 20);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_1BE04F684();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #14.0 }

  *v21 = _Q0;
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v95 = v105;
  v94 = v107;
  v93 = v109;
  v92 = v110;
  v120 = 1;
  v119 = v106;
  v118 = v108;
  v30 = *(a1 + 40);
  *&v111 = *(a1 + 32);
  *(&v111 + 1) = v30;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v31 = sub_1BE0506C4();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_1BE050294();
  sub_1BE050364();
  v39 = sub_1BE0503F4();
  v38, v40, v41, v42, v43, v44, v45, v46;
  v47 = sub_1BE0505F4();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v39, v48, v50, v52, v54, v55, v56, v57;
  sub_1BD0DDF10(v31, v33, (v35 & 1), v58, v59, v60, v61, v62);
  v37, v63, v64, v65, v66, v67, v68, v69;
  v70 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30) + 36)];
  v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v72 = sub_1BE0505C4();
  (*(*(v72 - 8) + 56))(v70 + v71, 1, 1, v72);
  *v70 = swift_getKeyPath();
  *v6 = v47;
  *(v6 + 1) = v49;
  v6[16] = v51 & 1;
  *(v6 + 3) = v53;
  v73 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v75 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F220, &qword_1BE0ED1C0) + 36)];
  *v75 = KeyPath;
  v75[1] = v73;
  v76 = swift_getKeyPath();
  v77 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F228, &qword_1BE0ED1F8) + 36)];
  *v77 = v76;
  *(v77 + 1) = 2;
  v77[16] = 0;
  *&v6[*(v97 + 44)] = 256;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v78 = v96;
  sub_1BD0DE204(v6, v96, &qword_1EBD4F200, &qword_1BE0ED140);
  v79 = (v78 + *(v100 + 44));
  v80 = v116;
  v79[4] = v115;
  v79[5] = v80;
  v79[6] = v117;
  v81 = v112;
  *v79 = v111;
  v79[1] = v81;
  v82 = v114;
  v79[2] = v113;
  v79[3] = v82;
  v83 = v99;
  sub_1BD0DE204(v78, v99, &qword_1EBD4F208, &qword_1BE0ED148);
  v84 = v98;
  sub_1BD0DE19C(v103, v98, &qword_1EBD4F210, &unk_1BE0ED150);
  LOBYTE(v78) = v120;
  LOBYTE(KeyPath) = v119;
  LOBYTE(v47) = v118;
  v85 = v101;
  sub_1BD0DE19C(v83, v101, &qword_1EBD4F208, &qword_1BE0ED148);
  v86 = v102;
  sub_1BD0DE19C(v84, v102, &qword_1EBD4F210, &unk_1BE0ED150);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F230, &qword_1BE0ED200);
  v88 = v86 + *(v87 + 48);
  *v88 = 0;
  *(v88 + 8) = v78;
  *(v88 + 16) = v95;
  *(v88 + 24) = KeyPath;
  *(v88 + 32) = v94;
  *(v88 + 40) = v47;
  v89 = v92;
  *(v88 + 48) = v93;
  *(v88 + 56) = v89;
  sub_1BD0DE19C(v85, v86 + *(v87 + 64), &qword_1EBD4F208, &qword_1BE0ED148);
  sub_1BD0DE53C(v83, &qword_1EBD4F208, &qword_1BE0ED148);
  sub_1BD0DE53C(v103, &qword_1EBD4F210, &unk_1BE0ED150);
  sub_1BD0DE53C(v85, &qword_1EBD4F208, &qword_1BE0ED148);
  return sub_1BD0DE53C(v84, &qword_1EBD4F210, &unk_1BE0ED150);
}

void *sub_1BD67E31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v78 = a2;
  v83 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = v74 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F240, &qword_1BE0ED218);
  MEMORY[0x1EEE9AC00](v82);
  v81 = (v74 - v6);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F248, &qword_1BE0ED220);
  MEMORY[0x1EEE9AC00](v79);
  v8 = v74 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F250, &qword_1BE0ED228);
  MEMORY[0x1EEE9AC00](v84);
  v80 = v74 - v9;
  v10 = type metadata accessor for MerchantTokenIconView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v74 - v17;
  v19 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v75 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v74 - v23;
  v76 = a1;
  sub_1BD6779F4(v18);
  v25 = *(v20 + 48);
  if (v25(v18, 1, v19) == 1)
  {
    v74[1] = v10;
    v26 = v80;
    sub_1BD0DE53C(v18, &qword_1EBD44D48, &qword_1BE1067C0);
    type metadata accessor for MerchantTokenDetailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30, &unk_1BE0ECDA0);
    sub_1BE0516A4();
    if (v25(v15, 3, v19))
    {
      sub_1BD67BA48(v15, type metadata accessor for MerchantTokenDetailView.ImageState);
      v27 = *(v76 + 32);
      v28 = *(v76 + 40);
      sub_1BE048C84();
      sub_1BE050384();
      v29 = sub_1BE050354();
      v30 = v77;
      (*(*(v29 - 8) + 56))(v77, 1, 1, v29);
      sub_1BE048C84();
      v31 = sub_1BE0503B4();
      sub_1BD0DE53C(v30, &qword_1EBD49130, &qword_1BE0C7180);
      v32 = sub_1BE0524C4();
      v34 = v33;
      sub_1BE048964();
      v35 = sub_1BD683A34(1, v32, v34);
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v34, v36, v38, v40, v42, v43, v44, v45;
      v46 = MEMORY[0x1BFB3F570](v35, v37, v39, v41);
      v48 = v47;
      v41, v47, v49, v50, v51, v52, v53, v54;
      v31, v55, v56, v57, v58, v59, v60, v61;
      v28, v62, v63, v64, v65, v66, v67, v68;
      v69 = v81;
      *v81 = v27;
      v69[1] = v28;
      v69[2] = v31;
      v69[3] = 0;
      v69[4] = v46;
      v69[5] = v48;
      swift_storeEnumTagMultiPayload();
      sub_1BD683C8C();
      sub_1BD683D40();
      return sub_1BE04F9A4();
    }

    v73 = v75;
    sub_1BD67B8B0(v15, v75, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v73, v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v12, v8, type metadata accessor for MerchantTokenIconView);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C44(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView, &unk_1BE1062D8);
    sub_1BE04F9A4();
    sub_1BD0DE19C(v26, v81, &qword_1EBD4F250, &qword_1BE0ED228);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C8C();
    sub_1BD683D40();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v26, &qword_1EBD4F250, &qword_1BE0ED228);
    sub_1BD67BA48(v12, type metadata accessor for MerchantTokenIconView);
    v72 = v73;
  }

  else
  {
    sub_1BD67B8B0(v18, v24, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v24, v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v12, v8, type metadata accessor for MerchantTokenIconView);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C44(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView, &unk_1BE1062D8);
    v71 = v80;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v71, v81, &qword_1EBD4F250, &qword_1BE0ED228);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C8C();
    sub_1BD683D40();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v71, &qword_1EBD4F250, &qword_1BE0ED228);
    sub_1BD67BA48(v12, type metadata accessor for MerchantTokenIconView);
    v72 = v24;
  }

  return sub_1BD67BA48(v72, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
}

uint64_t sub_1BD67EB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v91 = a2;
  v92 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F148, &qword_1BE0ED090);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v81 - v7);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F178, &qword_1BE0ED0B8);
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81 - v11;
  v13 = type metadata accessor for UnifiedMerchantTokenData(0);
  v101[0] = *(a1 + *(v13 + 88));
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F180, &qword_1BE0ED0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F188, &qword_1BE0ED0C8);
  sub_1BD0DE4F4(&qword_1EBD4F190, &qword_1EBD4F180, &qword_1BE0ED0C0, MEMORY[0x1E69E6338]);
  v14 = a1;
  sub_1BD0DE4F4(&qword_1EBD4F198, &qword_1EBD4F188, &qword_1BE0ED0C8, MEMORY[0x1E69817F8]);
  sub_1BD683C44(&qword_1EBD4F1A0, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment, &unk_1BE0D3304);
  v15 = v12;
  sub_1BE0519D4();
  v16 = 0;
  if (*(a1 + *(v13 + 52) + 8) && (v17 = sub_1BE052404(), v18 = [v17 pk_stringIfNotEmpty], v17, v18))
  {
    sub_1BE052434();
    v20 = v19;

    v21 = sub_1BE050454();
    v22 = sub_1BE0505F4();
    v24 = v23;
    v26 = v25;
    v27 = v8;
    v29 = v28;
    v20, v23, v25, v28, v30, v31, v32, v33;
    v21, v34, v35, v36, v37, v38, v39, v40;
    LODWORD(v101[0]) = sub_1BE04FC94();
    v89 = sub_1BE050574();
    v88 = v41;
    LOBYTE(v21) = v42;
    v87 = v43;
    sub_1BD0DDF10(v22, v24, (v26 & 1), v43, v44, v45, v46, v47);
    v48 = v29;
    v8 = v27;
    v48, v49, v50, v51, v52, v53, v54, v55;
    KeyPath = swift_getKeyPath();
    LOBYTE(v22) = sub_1BE050234();
    sub_1BE04E1F4();
    v16 = v56;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    LOBYTE(v101[0]) = v21 & 1;
    LOBYTE(v96) = 0;
    v63 = v21 & 1;
    v85 = v22;
  }

  else
  {
    v89 = 0;
    v88 = 0;
    v87 = 0;
    KeyPath = 0;
    v85 = 0;
    v63 = 0;
    v58 = 0;
    v60 = 0;
    v62 = 0;
  }

  v82 = v63;
  sub_1BD67D168(v14, v8);
  v64 = v90;
  v65 = *(v90 + 16);
  v83 = v8;
  v66 = v95;
  v84 = v15;
  v67 = v94;
  v65(v95, v15, v94);
  v68 = v93;
  sub_1BD0DE19C(v8, v93, &qword_1EBD4F148, &qword_1BE0ED090);
  v69 = v92;
  v65(v92, v66, v67);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1A8, &qword_1BE0ED0D0);
  v71 = &v69[*(v70 + 48)];
  v72 = v89;
  *&v96 = v89;
  v73 = v88;
  *(&v96 + 1) = v88;
  *&v97 = v63;
  v74 = v87;
  *(&v97 + 1) = v87;
  v75 = KeyPath;
  v98 = KeyPath;
  v76 = v85;
  *&v99 = v85;
  *(&v99 + 1) = v16;
  *v100 = v58;
  *&v100[8] = v60;
  *&v100[16] = v62;
  v100[24] = 0;
  v77 = v97;
  *v71 = v96;
  *(v71 + 1) = v77;
  v78 = v99;
  *(v71 + 2) = v98;
  *(v71 + 3) = v78;
  *(v71 + 4) = *v100;
  *(v71 + 73) = *&v100[9];
  sub_1BD0DE19C(v68, &v69[*(v70 + 64)], &qword_1EBD4F148, &qword_1BE0ED090);
  sub_1BD0DE19C(&v96, v101, &qword_1EBD4F1B0, &qword_1BE0ED0D8);
  sub_1BD0DE53C(v83, &qword_1EBD4F148, &qword_1BE0ED090);
  v79 = *(v64 + 8);
  v79(v84, v67);
  sub_1BD0DE53C(v68, &qword_1EBD4F148, &qword_1BE0ED090);
  v101[0] = v72;
  v101[1] = v73;
  v101[2] = v82;
  v101[3] = v74;
  v101[4] = v75;
  v101[5] = 0;
  v101[6] = v76;
  v101[7] = v16;
  v101[8] = v58;
  v101[9] = v60;
  v101[10] = v62;
  v102 = 0;
  sub_1BD0DE53C(v101, &qword_1EBD4F1B0, &qword_1BE0ED0D8);
  return (v79)(v95, v67);
}

uint64_t sub_1BD67F1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1C0, &qword_1BE0ED118);
  MEMORY[0x1EEE9AC00](v44);
  v4 = &v42 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1C8, &qword_1BE0ED120);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1D0, &qword_1BE0ED128);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0) + 24);
  v46 = a1;
  sub_1BD0DE19C(a1 + v19, v9, &qword_1EBD44D48, &qword_1BE1067C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD44D48, &qword_1BE1067C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD683AD0();
    sub_1BE04F9A4();
  }

  else
  {
    sub_1BD67B8B0(v9, v13, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v13, v4, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v20 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1E8, &qword_1BE0ED130) + 36)];
    v21 = v58[1];
    *v20 = v58[0];
    *(v20 + 1) = v21;
    *(v20 + 2) = v58[2];
    v22 = &v4[*(v44 + 36)];
    v23 = *(sub_1BE04EDE4() + 20);
    v24 = *MEMORY[0x1E697F468];
    v25 = sub_1BE04F684();
    (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
    __asm { FMOV            V0.2D, #4.0 }

    *v22 = _Q0;
    *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    sub_1BD0DE19C(v4, v6, &qword_1EBD4F1C0, &qword_1BE0ED118);
    swift_storeEnumTagMultiPayload();
    sub_1BD683AD0();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v4, &qword_1EBD4F1C0, &qword_1BE0ED118);
    sub_1BD67BA48(v13, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  v31 = sub_1BE04F7C4();
  LOBYTE(v52[0]) = 1;
  sub_1BD67F7C8(v49);
  *&v48[7] = v49[0];
  *&v48[23] = v49[1];
  *&v48[39] = v49[2];
  *&v48[55] = v49[3];
  v32 = v52[0];
  v33 = v45;
  sub_1BD0DE19C(v18, v45, &qword_1EBD4F1D0, &qword_1BE0ED128);
  v34 = v47;
  sub_1BD0DE19C(v33, v47, &qword_1EBD4F1D0, &qword_1BE0ED128);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1F8, &qword_1BE0ED138) + 48);
  v50[0] = v31;
  v50[1] = 0;
  v51[0] = v32;
  *&v51[1] = *v48;
  *&v51[17] = *&v48[16];
  *&v51[33] = *&v48[32];
  *&v51[49] = *&v48[48];
  v36 = *&v48[63];
  *&v51[64] = *&v48[63];
  v37 = *v51;
  *v35 = v31;
  *(v35 + 16) = v37;
  v38 = *&v51[16];
  v39 = *&v51[32];
  v40 = *&v51[48];
  *(v35 + 80) = v36;
  *(v35 + 48) = v39;
  *(v35 + 64) = v40;
  *(v35 + 32) = v38;
  sub_1BD0DE19C(v50, v52, &qword_1EBD3B940, &qword_1BE0BCCE0);
  sub_1BD0DE53C(v18, &qword_1EBD4F1D0, &qword_1BE0ED128);
  v52[0] = v31;
  v52[1] = 0;
  v53 = v32;
  v55 = *&v48[16];
  v56 = *&v48[32];
  *v57 = *&v48[48];
  *&v57[15] = *&v48[63];
  v54 = *v48;
  sub_1BD0DE53C(v52, &qword_1EBD3B940, &qword_1BE0BCCE0);
  return sub_1BD0DE53C(v33, &qword_1EBD4F1D0, &qword_1BE0ED128);
}

void sub_1BD67F7C8(uint64_t a2@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1BE050324();
  v11 = sub_1BE0505F4();
  v107 = v12;
  v106 = v13;
  v15 = v14;
  v10, v12, v13, v14, v16, v17, v18, v19;
  sub_1BD0DDF10(v3, v5, (v7 & 1), v20, v21, v22, v23, v24);
  v9, v25, v26, v27, v28, v29, v30, v31;
  sub_1BD3D1E44();
  if (v32)
  {
    v33 = sub_1BE0506C4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = sub_1BE0502A4();
    v41 = sub_1BE0505F4();
    v43 = v42;
    v104 = v11;
    v105 = v15;
    v45 = v44;
    v47 = v46;
    v40, v42, v44, v46, v48, v49, v50, v51;
    sub_1BD0DDF10(v33, v35, (v37 & 1), v52, v53, v54, v55, v56);
    v39, v57, v58, v59, v60, v61, v62, v63;
    sub_1BE04FC94();
    v64 = sub_1BE050574();
    v66 = v65;
    LOBYTE(v35) = v67;
    v69 = v68;
    v70 = (v45 & 1);
    v15 = v105;
    sub_1BD0DDF10(v41, v43, v70, v68, v71, v72, v73, v74);
    v75 = v47;
    v11 = v104;
    v75, v76, v77, v78, v79, v80, v81, v82;
    v83 = v35 & 1;
    sub_1BD0D7F18(v64, v66, v35 & 1);
    sub_1BE048C84();
  }

  else
  {
    v64 = 0;
    v66 = 0;
    v83 = 0;
    v69 = 0;
  }

  sub_1BD0D7F18(v11, v107, v106 & 1);
  sub_1BE048C84();
  sub_1BD1969AC(v64, v66, v83, v69);
  sub_1BD1969F0(v64, v66, v83, v69, v84, v85, v86, v87);
  *a2 = v11;
  *(a2 + 8) = v107;
  *(a2 + 16) = v106 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v64;
  *(a2 + 40) = v66;
  *(a2 + 48) = v83;
  *(a2 + 56) = v69;
  sub_1BD1969F0(v64, v66, v83, v69, v88, v89, v90, v91);
  sub_1BD0DDF10(v11, v107, (v106 & 1), v92, v93, v94, v95, v96);
  v15, v97, v98, v99, v100, v101, v102, v103;
}

uint64_t sub_1BD67FA3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1BE04F504();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(a1);
}

uint64_t sub_1BD67FAAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0D8, &qword_1BE0ED030);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0E0, &qword_1BE0ED038);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v59 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = *(type metadata accessor for MerchantTokenPresentationModel.Card(0) + 24);
  v58 = a1;
  sub_1BD0DE19C(a1 + v19, v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
    v20 = 1;
    v21 = v56;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v6, v13, v10);
    type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    swift_storeEnumTagMultiPayload();
    v22 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0F0, &unk_1BE0ED050) + 36)];
    *v22 = 0x3FF89DB22D0E5604;
    *(v22 + 4) = 256;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v23 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0F8, &unk_1BE106770) + 36)];
    v24 = v71[1];
    *v23 = v71[0];
    *(v23 + 1) = v24;
    *(v23 + 2) = v71[2];
    v25 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F100, &unk_1BE0ED060) + 36)];
    v26 = *(sub_1BE04EDE4() + 20);
    v27 = *MEMORY[0x1E697F468];
    v28 = sub_1BE04F684();
    (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
    __asm { FMOV            V0.2D, #3.0 }

    *v25 = _Q0;
    *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    LOBYTE(v27) = sub_1BE050224();
    sub_1BE04E1F4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    (*(v11 + 8))(v13, v10);
    v42 = v56;
    v43 = &v6[*(v56 + 36)];
    *v43 = v27;
    *(v43 + 1) = v35;
    *(v43 + 2) = v37;
    *(v43 + 3) = v39;
    *(v43 + 4) = v41;
    v43[40] = 0;
    sub_1BD0DE204(v6, v18, &qword_1EBD4F0D8, &qword_1BE0ED030);
    v20 = 0;
    v21 = v42;
  }

  (*(v57 + 56))(v18, v20, 1, v21);
  v44 = sub_1BE04F7C4();
  LOBYTE(v65[0]) = 1;
  sub_1BD6800A4(v58, v62);
  *&v61[7] = v62[0];
  *&v61[23] = v62[1];
  *&v61[39] = v62[2];
  *&v61[55] = v62[3];
  v45 = v65[0];
  v46 = v59;
  sub_1BD0DE19C(v18, v59, &qword_1EBD4F0E0, &qword_1BE0ED038);
  v47 = v60;
  sub_1BD0DE19C(v46, v60, &qword_1EBD4F0E0, &qword_1BE0ED038);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0E8, &unk_1BE0ED040) + 48);
  v63[0] = v44;
  v63[1] = 0;
  v64[0] = v45;
  *&v64[1] = *v61;
  *&v64[17] = *&v61[16];
  *&v64[33] = *&v61[32];
  *&v64[49] = *&v61[48];
  v49 = *&v61[63];
  *&v64[64] = *&v61[63];
  v50 = *v64;
  *v48 = v44;
  *(v48 + 16) = v50;
  v51 = *&v64[16];
  v52 = *&v64[32];
  v53 = *&v64[48];
  *(v48 + 80) = v49;
  *(v48 + 48) = v52;
  *(v48 + 64) = v53;
  *(v48 + 32) = v51;
  sub_1BD0DE19C(v63, v65, &qword_1EBD3B940, &qword_1BE0BCCE0);
  sub_1BD0DE53C(v18, &qword_1EBD4F0E0, &qword_1BE0ED038);
  v65[0] = v44;
  v65[1] = 0;
  v66 = v45;
  v68 = *&v61[16];
  v69 = *&v61[32];
  *v70 = *&v61[48];
  *&v70[15] = *&v61[63];
  v67 = *v61;
  sub_1BD0DE53C(v65, &qword_1EBD3B940, &qword_1BE0BCCE0);
  return sub_1BD0DE53C(v46, &qword_1EBD4F0E0, &qword_1BE0ED038);
}

void sub_1BD6800A4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v146 = a2;
  v3 = sub_1BE050404();
  v144 = *(v3 - 8);
  v145 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v143 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[1];
  v147 = *a1;
  v148 = v5;
  v6 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v142 = v6;
  v7 = sub_1BE0506C4();
  v9 = v8;
  v11 = v10;
  v41 = v12;
  v13 = sub_1BE050324();
  v14 = sub_1BE0505F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v13, v15, v17, v19, v21, v22, v23, v24;
  sub_1BD0DDF10(v7, v9, (v11 & 1), v25, v26, v27, v28, v29);
  v41, v30, v31, v32, v33, v34, v35, v36;
  LODWORD(v147) = sub_1BE04FC74();
  v37 = sub_1BE050574();
  v39 = v38;
  LODWORD(v41) = v40;
  v43 = v42;
  sub_1BD0DDF10(v14, v16, (v18 & 1), v42, v44, v45, v46, v47);
  v20, v48, v49, v50, v51, v52, v53, v54;
  if (!a1[3])
  {
    v100 = 0;
    v102 = 0;
    v117 = 0;
    v105 = 0;
    goto LABEL_5;
  }

  HIDWORD(v139) = v41;
  v140 = v37;
  v141 = v43;
  v55 = sub_1BE052404();
  v56 = PKMaskedPaymentPAN();

  if (v56)
  {
    v57 = sub_1BE052434();
    v59 = v58;

    v147 = v57;
    v148 = v59;
    v60 = sub_1BE0506C4();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = sub_1BE050454();
    v69 = v143;
    v68 = v144;
    v70 = v145;
    (*(v144 + 104))(v143, *MEMORY[0x1E6980EA8], v145);
    v71 = sub_1BE050434();
    v67, v72, v73, v74, v75, v76, v77, v78;
    (*(v68 + 8))(v69, v70);
    v79 = sub_1BE0505F4();
    v41 = v80;
    LOBYTE(v70) = v81;
    v83 = v82;
    v71, v80, v81, v82, v84, v85, v86, v87;
    sub_1BD0DDF10(v60, v62, (v64 & 1), v88, v89, v90, v91, v92);
    v66, v93, v94, v95, v96, v97, v98, v99;
    LODWORD(v147) = sub_1BE04FC94();
    v100 = sub_1BE050574();
    v102 = v101;
    LOBYTE(v60) = v103;
    v105 = v104;
    sub_1BD0DDF10(v79, v41, (v70 & 1), v104, v106, v107, v108, v109);
    v83, v110, v111, v112, v113, v114, v115, v116;
    v117 = v60 & 1;
    sub_1BD0D7F18(v100, v102, v60 & 1);
    sub_1BE048C84();
    v37 = v140;
    v43 = v141;
    LOBYTE(v41) = BYTE4(v139);
LABEL_5:
    sub_1BD0D7F18(v37, v39, v41 & 1);
    sub_1BE048C84();
    sub_1BD1969AC(v100, v102, v117, v105);
    sub_1BD1969F0(v100, v102, v117, v105, v118, v119, v120, v121);
    LOBYTE(v147) = v41 & 1;
    v122 = v146;
    *v146 = v37;
    v122[1] = v39;
    *(v122 + 16) = v41 & 1;
    v122[3] = v43;
    v122[4] = v100;
    v122[5] = v102;
    v122[6] = v117;
    v122[7] = v105;
    sub_1BD1969F0(v100, v102, v117, v105, v123, v124, v125, v126);
    sub_1BD0DDF10(v37, v39, (v41 & 1), v127, v128, v129, v130, v131);
    v43, v132, v133, v134, v135, v136, v137, v138;
    return;
  }

  __break(1u);
}

uint64_t sub_1BD68048C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = sub_1BE04A564();
  v66 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v65 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BE04A574();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04A594();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1BE04BD74();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0, &qword_1BE0BEB50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = v53 - v12;
  v13 = sub_1BE04A5B4();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v56 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = v53 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v53 - v21;
  v23 = sub_1BE04AA64();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for UnifiedMerchantTokenData(0);
  v28 = (a1 + *(result + 60));
  v29 = v28[1];
  if (v29)
  {
    v55 = *v28;
    sub_1BD0DE19C(a1 + *(result + 56), v22, &unk_1EBD3CF70, &qword_1BE0BA000);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      result = sub_1BD0DE53C(v22, &unk_1EBD3CF70, &qword_1BE0BA000);
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v29 = 0;
    }

    else
    {
      (*(v24 + 32))(v26, v22, v23);
      v53[1] = "ETAIL_PAYMENT_METHOD";
      (*(v8 + 104))(v10, *MEMORY[0x1E69B8080], v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BE0B6CA0;
      v54 = v3;
      v31 = MEMORY[0x1E69E6158];
      *(v30 + 56) = MEMORY[0x1E69E6158];
      v32 = sub_1BD110550();
      *(v30 + 64) = v32;
      *(v30 + 32) = v55;
      *(v30 + 40) = v29;
      sub_1BE048C84();
      v33 = sub_1BE04A9B4();
      *(v30 + 96) = v31;
      *(v30 + 104) = v32;
      *(v30 + 72) = v33;
      *(v30 + 80) = v34;
      sub_1BE04B714();
      v30, v35, v36, v37, v38, v39, v40, v41;
      (*(v8 + 8))(v10, v67);
      (*(v24 + 56))(v19, 1, 1, v23);
      (*(v59 + 104))(v62, *MEMORY[0x1E6968750], v61);
      (*(v66 + 104))(v65, *MEMORY[0x1E6968728], v54);
      sub_1BE04A584();
      v42 = v60;
      sub_1BE04A5A4();
      v48 = v63;
      v47 = v64;
      (*(v63 + 56))(v42, 0, 1, v64);
      v49 = v57;
      (*(v48 + 32))(v57, v42, v47);
      (*(v48 + 16))(v56, v49, v47);
      v43 = sub_1BE0506A4();
      v44 = v50;
      LOBYTE(v42) = v51;
      v29 = v52;
      (*(v48 + 8))(v49, v47);
      result = (*(v24 + 8))(v26, v23);
      v45 = v42 & 1;
    }
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  v46 = v68;
  *v68 = v43;
  v46[1] = v44;
  v46[2] = v45;
  v46[3] = v29;
  return result;
}

uint64_t sub_1BD680BE4(uint64_t a1)
{
  type metadata accessor for UnifiedMerchantTokenData(0);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F098, &qword_1BE0ECFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F090, &qword_1BE0ECFF0);
  sub_1BD0DE4F4(&qword_1EBD4F0A0, &qword_1EBD4F098, &qword_1BE0ECFF8, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD4F088, &qword_1EBD4F090, &qword_1BE0ECFF0, MEMORY[0x1E69817F8]);
  sub_1BD683C44(&qword_1EBD4F0A8, type metadata accessor for UnifiedMerchantTokenData.PastPayment, &unk_1BE0D33A4);
  return sub_1BE0519D4();
}

double sub_1BD680D4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v22 = 1;
  sub_1BD680EF4(a1, &v12);
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v20;
  v33 = v20;
  v32[0] = v12;
  v32[1] = v13;
  sub_1BD0DE19C(&v23, v11, &qword_1EBD4F0B0, &unk_1BE0ED000);
  sub_1BD0DE53C(v32, &qword_1EBD4F0B0, &unk_1BE0ED000);
  *(&v21[6] + 7) = v29;
  *(&v21[5] + 7) = v28;
  *(&v21[2] + 7) = v25;
  *(&v21[1] + 7) = v24;
  *(&v21[7] + 7) = v30;
  *(&v21[8] + 7) = v31;
  *(&v21[3] + 7) = v26;
  *(&v21[4] + 7) = v27;
  *(v21 + 7) = v23;
  v5 = v21[4];
  *(a2 + 97) = v21[5];
  v6 = v21[7];
  *(a2 + 113) = v21[6];
  *(a2 + 129) = v6;
  *(a2 + 144) = *(&v21[7] + 15);
  v7 = v21[0];
  *(a2 + 33) = v21[1];
  result = *&v21[2];
  v9 = v21[3];
  *(a2 + 49) = v21[2];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v10 = v22;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_1BD680EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04B0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04F7C4();
  LOBYTE(v42) = 1;
  sub_1BD681160(a1, v39);
  *&v38[7] = v39[0];
  *&v38[23] = v39[1];
  *&v38[39] = v39[2];
  *&v38[55] = v39[3];
  v9 = v42;
  type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  sub_1BE04B054();
  v10 = sub_1BE0493E4();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v42 = v10;
  v43 = v12;
  sub_1BD0DDEBC();
  v13 = sub_1BE0506C4();
  v15 = v14;
  v17 = v16;
  v40[0] = v8;
  v40[1] = 0;
  v41[0] = v9;
  *&v41[1] = *v38;
  *&v41[17] = *&v38[16];
  *&v41[33] = *&v38[32];
  *&v41[49] = *&v38[48];
  *&v41[64] = *&v38[63];
  v37[8] = 1;
  v19 = (v18 & 1);
  v37[0] = v18 & 1;
  v20 = *v41;
  *a2 = v8;
  *(a2 + 16) = v20;
  v21 = *&v41[16];
  v22 = *&v41[48];
  v23 = *&v41[64];
  *(a2 + 48) = *&v41[32];
  *(a2 + 64) = v22;
  *(a2 + 32) = v21;
  *(a2 + 80) = v23;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v13;
  *(a2 + 112) = v14;
  *(a2 + 120) = v18 & 1;
  *(a2 + 128) = v16;
  sub_1BD0DE19C(v40, &v42, &qword_1EBD3B890, &unk_1BE0C2FD0);
  sub_1BD0D7F18(v13, v15, v19);
  sub_1BE048C84();
  sub_1BD0DDF10(v13, v15, v19, v24, v25, v26, v27, v28);
  v17, v29, v30, v31, v32, v33, v34, v35;
  v42 = v8;
  v43 = 0;
  v44 = v9;
  v46 = *&v38[16];
  v47 = *&v38[32];
  *v48 = *&v38[48];
  *&v48[15] = *&v38[63];
  v45 = *v38;
  return sub_1BD0DE53C(&v42, &qword_1EBD3B890, &unk_1BE0C2FD0);
}

void sub_1BD681160(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE050654();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v124[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  (*(v10 + 16))(v12, a1 + *(v13 + 24), v9);
  sub_1BE050634();
  v14 = v4;
  v15 = sub_1BE050684();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_1BE050324();
  v23 = sub_1BE0505F4();
  v126 = v24;
  v127 = v23;
  v125 = v25;
  v128 = v26;
  v22, v24, v25, v26, v27, v28, v29, v30;
  sub_1BD0DDF10(v15, v17, (v19 & 1), v31, v32, v33, v34, v35);
  v21, v36, v37, v38, v39, v40, v41, v42;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B80D8], v14);
  v43 = PKPassKitBundle();
  if (v43)
  {
    v44 = v43;
    v45 = sub_1BE04B6F4();
    v47 = v46;

    (*(v5 + 8))(v7, v14);
    v130 = v45;
    v131 = v47;
    sub_1BD0DDEBC();
    v48 = sub_1BE0506C4();
    v50 = v49;
    LOBYTE(v47) = v51;
    v53 = v52;
    v54 = sub_1BE050454();
    v55 = sub_1BE0505F4();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v54, v56, v58, v60, v62, v63, v64, v65;
    sub_1BD0DDF10(v48, v50, (v47 & 1), v66, v67, v68, v69, v70);
    v53, v71, v72, v73, v74, v75, v76, v77;
    LODWORD(v130) = sub_1BE04FC94();
    v78 = sub_1BE050574();
    v80 = v79;
    LOBYTE(v47) = v81;
    v83 = v82;
    sub_1BD0DDF10(v55, v57, (v59 & 1), v82, v84, v85, v86, v87);
    v61, v88, v89, v90, v91, v92, v93, v94;
    v95 = v125 & 1;
    v129 = v125 & 1;
    LOBYTE(v130) = v125 & 1;
    v96 = (v47 & 1);
    v132 = v47 & 1;
    v98 = v126;
    v97 = v127;
    *a2 = v127;
    *(a2 + 8) = v98;
    *(a2 + 16) = v95;
    v99 = v128;
    *(a2 + 24) = v128;
    *(a2 + 32) = v78;
    *(a2 + 40) = v80;
    *(a2 + 48) = v96;
    *(a2 + 56) = v83;
    sub_1BD0D7F18(v97, v98, v95);
    sub_1BE048C84();
    sub_1BD0D7F18(v78, v80, v96);
    sub_1BE048C84();
    sub_1BD0DDF10(v78, v80, v96, v100, v101, v102, v103, v104);
    v83, v105, v106, v107, v108, v109, v110, v111;
    sub_1BD0DDF10(v97, v98, v129, v112, v113, v114, v115, v116);
    v99, v117, v118, v119, v120, v121, v122, v123;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD681564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v43 = a3;
  v4 = sub_1BE04FF64();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MerchantTokenDetailView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F050, &qword_1BE0ECF98);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F068, &qword_1BE0ECFA8);
  v16 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v18 = &v38 - v17;
  sub_1BE04E194();
  v19 = sub_1BE04E1D4();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  sub_1BD67B848(a1, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenDetailView);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_1BD67B8B0(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for MerchantTokenDetailView);
  v22 = v39;
  v44 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
  sub_1BD170E70();
  sub_1BE0516F4();
  LOBYTE(v22) = *(v22 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 64));
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = &v15[*(v13 + 36)];
  *v25 = KeyPath;
  v25[1] = sub_1BD10DF54;
  v25[2] = v24;
  sub_1BE04FF44();
  v26 = sub_1BD682ECC();
  sub_1BE050D14();
  (*(v41 + 8))(v6, v42);
  sub_1BD0DE53C(v15, &qword_1EBD4F050, &qword_1BE0ECF98);
  sub_1BE052434();
  v28 = v27;
  v45 = v13;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v40;
  sub_1BE050DE4();
  v28, v30, v31, v32, v33, v34, v35, v36;
  return (*(v16 + 8))(v18, v29);
}

void sub_1BD6819F8(uint64_t a1)
{
  v2 = type metadata accessor for MerchantTokenDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  if (*(a1 + *(v2 + 48)))
  {
    v3 = MEMORY[0x1E69BB6F8];
  }

  else
  {
    v3 = MEMORY[0x1E69BB718];
  }

  v4 = *v3;
  sub_1BD6B2184(14, 0xBu, v4);
}

double sub_1BD681AB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *(a1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 68));
  (*(v5 + 104))(v7, *MEMORY[0x1E69B8080], v4);
  v8 = (v5 + 8);
  if (a1 == 1)
  {
    v9 = sub_1BE04B714();
    v11 = v10;
    (*v8)(v7, v4);
    *&v30 = v9;
    *(&v30 + 1) = v11;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v26 = v12;
    v27 = v13 & 1;
    v28 = v14;
    v29 = 0;
  }

  else
  {
    v15 = sub_1BE04B714();
    v17 = v16;
    (*v8)(v7, v4);
    *&v30 = v15;
    *(&v30 + 1) = v17;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v26 = v19;
    v27 = v18 & 1;
    v28 = v20;
    v29 = 1;
  }

  sub_1BE04F9A4();
  result = *&v30;
  v22 = v31;
  v23 = v32;
  *a2 = v30;
  *(a2 + 16) = v22;
  *(a2 + 32) = v23;
  return result;
}

__n128 sub_1BD681CD4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v111 = a2;
  v3 = sub_1BE04A564();
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v105 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BE04A574();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04A594();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0, &qword_1BE0BEB50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v93 - v13;
  v14 = sub_1BE04A5B4();
  v108 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v93 - v22;
  v24 = sub_1BE04AA64();
  v110 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UnifiedMerchantTokenData(0);
  v28 = v27;
  v29 = MEMORY[0x1E69B8080];
  if (*(a1 + *(v27 + 64)) == 1)
  {
    v109 = v8;
    sub_1BD0DE19C(a1 + *(v27 + 56), v23, &unk_1EBD3CF70, &qword_1BE0BA000);
    v30 = v110;
    if ((*(v110 + 48))(v23, 1, v24) == 1)
    {
      sub_1BD0DE53C(v23, &unk_1EBD3CF70, &qword_1BE0BA000);
    }

    else
    {
      (*(v30 + 32))(v26, v23, v24);
      v31 = (a1 + *(v28 + 60));
      v32 = v31[1];
      if (v32)
      {
        v97 = v14;
        v96 = *v31;
        v95 = "ETAIL_DELETE_DEFERRED_FOOTER";
        v33 = *MEMORY[0x1E69B8080];
        v34 = *(v9 + 104);
        v94 = v32;
        v34(v11, v33, v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v35 = v26;
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1BE0B6CA0;
        *(v36 + 56) = MEMORY[0x1E69E6158];
        v37 = sub_1BD110550();
        *(v36 + 64) = v37;
        v38 = v94;
        *(v36 + 32) = v96;
        *(v36 + 40) = v38;
        sub_1BE048C84();
        v96 = v35;
        v39 = sub_1BE04A9B4();
        *(v36 + 96) = MEMORY[0x1E69E6158];
        *(v36 + 104) = v37;
        *(v36 + 72) = v39;
        *(v36 + 80) = v40;
        sub_1BE04B714();
        v95 = v41;
        v36, v41, v42, v43, v44, v45, v46, v47;
        (*(v9 + 8))(v11, v109);
        (*(v110 + 56))(v20, 1, 1, v24);
        (*(v101 + 104))(v104, *MEMORY[0x1E6968750], v103);
        (*(v106 + 104))(v105, *MEMORY[0x1E6968728], v107);
        sub_1BE04A584();
        v48 = v102;
        sub_1BE04A5A4();
        v87 = v108;
        v88 = v97;
        (*(v108 + 56))(v48, 0, 1, v97);
        v89 = v99;
        (*(v87 + 32))(v99, v48, v88);
        (*(v87 + 16))(v98, v89, v88);
        v112.n128_u64[0] = sub_1BE0506A4();
        v112.n128_u64[1] = v90;
        v113.n128_u64[0] = v91 & 1;
        v113.n128_u64[1] = v92;
        v114 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
        sub_1BD170E70();
        sub_1BE04F9A4();
        (*(v87 + 8))(v89, v88);
        (*(v110 + 8))(v96, v24);
        goto LABEL_12;
      }

      (*(v30 + 8))(v26, v24);
    }

    v8 = v109;
    v29 = MEMORY[0x1E69B8080];
  }

  v49 = *(a1 + *(v28 + 68));
  (*(v9 + 104))(v11, *v29, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v50 = v8;
  if (v49 == 1)
  {
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1BE0B6CA0;
    v53 = *(a1 + 32);
    v52 = *(a1 + 40);
    v54 = MEMORY[0x1E69E6158];
    *(v51 + 56) = MEMORY[0x1E69E6158];
    v55 = sub_1BD110550();
    *(v51 + 32) = v53;
    *(v51 + 40) = v52;
    *(v51 + 96) = v54;
    *(v51 + 104) = v55;
    *(v51 + 64) = v55;
    *(v51 + 72) = v53;
    *(v51 + 80) = v52;
    swift_bridgeObjectRetain_n();
    v56 = sub_1BE04B714();
    v58 = v57;
    v51, v57, v59, v60, v61, v62, v63, v64;
    (*(v9 + 8))(v11, v50);
    v115.n128_u64[0] = v56;
    v115.n128_u64[1] = v58;
    sub_1BD0DDEBC();
    v112.n128_u64[0] = sub_1BE0506C4();
    v112.n128_u64[1] = v65;
    v113.n128_u64[0] = v66 & 1;
    v113.n128_u64[1] = v67;
    LOBYTE(v114) = 0;
  }

  else
  {
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1BE0B69E0;
    v70 = *(a1 + 32);
    v69 = *(a1 + 40);
    *(v68 + 56) = MEMORY[0x1E69E6158];
    *(v68 + 64) = sub_1BD110550();
    *(v68 + 32) = v70;
    *(v68 + 40) = v69;
    sub_1BE048C84();
    v71 = sub_1BE04B714();
    v73 = v72;
    v68, v72, v74, v75, v76, v77, v78, v79;
    (*(v9 + 8))(v11, v50);
    v115.n128_u64[0] = v71;
    v115.n128_u64[1] = v73;
    sub_1BD0DDEBC();
    v112.n128_u64[0] = sub_1BE0506C4();
    v112.n128_u64[1] = v81;
    v113.n128_u64[0] = v80 & 1;
    v113.n128_u64[1] = v82;
    LOBYTE(v114) = 1;
  }

  sub_1BE04F9A4();
  v112 = v115;
  v113 = v116;
  LOBYTE(v114) = v117;
  HIBYTE(v114) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
  sub_1BD170E70();
  sub_1BE04F9A4();
LABEL_12:
  result = v116;
  v84 = v117;
  v85 = v118;
  v86 = v111;
  *v111 = v115;
  v86[1] = result;
  v86[2].n128_u8[0] = v84;
  v86[2].n128_u8[1] = v85;
  return result;
}

uint64_t sub_1BD6827BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F238, &unk_1BE0ED208);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD0DE19C(a1, &v5 - v3, &qword_1EBD4F238, &unk_1BE0ED208);
  return sub_1BE04F334();
}

uint64_t sub_1BD682864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F268, &unk_1BE0ED230);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1BD67B848(a1, &v20 - v12, type metadata accessor for MerchantTokenDetailView.ImageState);
  sub_1BD67B848(a2, &v13[v15], type metadata accessor for MerchantTokenDetailView.ImageState);
  v16 = *(v5 + 48);
  v17 = v16(v13, 3, v4);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16(&v13[v15], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v16(&v13[v15], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1BD0DE53C(v13, &qword_1EBD4F268, &unk_1BE0ED230);
    v18 = 0;
    return v18 & 1;
  }

  if (!v17)
  {
    sub_1BD67B848(v13, v10, type metadata accessor for MerchantTokenDetailView.ImageState);
    if (!v16(&v13[v15], 3, v4))
    {
      sub_1BD67B8B0(&v13[v15], v7, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      v18 = sub_1BD3D8E1C(v10, v7);
      sub_1BD67BA48(v7, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BD67BA48(v10, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BD67BA48(v13, type metadata accessor for MerchantTokenDetailView.ImageState);
      return v18 & 1;
    }

    sub_1BD67BA48(v10, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1BD67BA48(v13, type metadata accessor for MerchantTokenDetailView.ImageState);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1BD682BFC(uint64_t a1)
{
  v4 = *(type metadata accessor for MerchantTokenDetailView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD67AD48(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1BD682D38(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0, &qword_1BE0ECEE0);

  return sub_1BD67B5DC(a1, a2);
}

unint64_t sub_1BD682DD4()
{
  result = qword_1EBD4F048;
  if (!qword_1EBD4F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F040, &qword_1BE0ECF88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F050, &qword_1BE0ECF98);
    sub_1BD682ECC();
    swift_getOpaqueTypeConformance2();
    sub_1BD683C44(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F048);
  }

  return result;
}

unint64_t sub_1BD682ECC()
{
  result = qword_1EBD4F058;
  if (!qword_1EBD4F058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F050, &qword_1BE0ECF98);
    sub_1BD0DE4F4(&qword_1EBD46600, &qword_1EBD46608, &unk_1BE0D7130, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F058);
  }

  return result;
}

uint64_t objectdestroy_17Tm_1()
{
  v1 = type metadata accessor for MerchantTokenDetailView(0);
  v168 = *(*(v1 - 1) + 80);
  v2 = (v0 + ((v168 + 16) & ~v168));
  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v2[5], v17, v18, v19, v20, v21, v22, v23;
  v2[7], v24, v25, v26, v27, v28, v29, v30;
  v2[9], v31, v32, v33, v34, v35, v36, v37;
  v2[11], v38, v39, v40, v41, v42, v43, v44;
  v45 = type metadata accessor for UnifiedMerchantTokenData(0);
  v46 = (v2 + v45[10]);
  v47 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v167 = *(*(v47 - 8) + 48);
  if (!v167(v46, 1, v47))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v46, v46[1], v152, v153, v154, v155, v156, v157);
        break;
      case 0:
        v158 = sub_1BE04AA64();
        (*(*(v158 - 8) + 8))(v46, v158);
        break;
    }
  }

  v166 = v47;
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
  v134 = (v2 + v1[10]);
  if (!v167(v134, 3, v166))
  {
    v159 = swift_getEnumCaseMultiPayload();
    switch(v159)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v134, v134[1], v160, v161, v162, v163, v164, v165);
        break;
      case 0:
        (*(v50 + 8))(v134, v49);
        break;
    }
  }

  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30, &unk_1BE0ECDA0);
  *(v134 + *(v135 + 28)), v136, v137, v138, v139, v140, v141, v142;
  *(v2 + v1[11] + 8), v143, v144, v145, v146, v147, v148, v149;

  return swift_deallocObject();
}

void sub_1BD683484()
{
  v1 = *(type metadata accessor for MerchantTokenDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD6819F8(v2);
}

unint64_t sub_1BD6834F4()
{
  result = qword_1EBD4F080;
  if (!qword_1EBD4F080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F078, &qword_1BE0ECFE8);
    sub_1BD0DE4F4(&qword_1EBD4F088, &qword_1EBD4F090, &qword_1BE0ECFF0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F080);
  }

  return result;
}

unint64_t sub_1BD68360C()
{
  result = qword_1EBD4F130;
  if (!qword_1EBD4F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F118, &qword_1BE0ED080);
    sub_1BD0DE4F4(&qword_1EBD4F128, &qword_1EBD4F120, &qword_1BE0ED088, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F130);
  }

  return result;
}

unint64_t sub_1BD6836C8()
{
  result = qword_1EBD4F138;
  if (!qword_1EBD4F138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F108, &qword_1BE0ED070);
    sub_1BD683760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F138);
  }

  return result;
}

unint64_t sub_1BD683760()
{
  result = qword_1EBD4F140;
  if (!qword_1EBD4F140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F148, &qword_1BE0ED090);
    sub_1BD6837EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F140);
  }

  return result;
}

unint64_t sub_1BD6837EC()
{
  result = qword_1EBD4F150;
  if (!qword_1EBD4F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F158, &qword_1BE0ED098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_1BD683C44(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F150);
  }

  return result;
}

uint64_t sub_1BD683960()
{
  v1 = *(type metadata accessor for MerchantTokenDetailView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD67D8A0(v0 + v2, v5);
}

uint64_t sub_1BD683A34(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BE052544();

    return sub_1BE052654();
  }

  return result;
}

unint64_t sub_1BD683AD0()
{
  result = qword_1EBD4F1D8;
  if (!qword_1EBD4F1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F1C0, &qword_1BE0ED118);
    sub_1BD683B88();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F1D8);
  }

  return result;
}

unint64_t sub_1BD683B88()
{
  result = qword_1EBD4F1E0;
  if (!qword_1EBD4F1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F1E8, &qword_1BE0ED130);
    sub_1BD683C44(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView, &unk_1BE1062D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F1E0);
  }

  return result;
}

uint64_t sub_1BD683C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD683C8C()
{
  result = qword_1EBD4F258;
  if (!qword_1EBD4F258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F250, &qword_1BE0ED228);
    sub_1BD683C44(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView, &unk_1BE1062D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F258);
  }

  return result;
}

unint64_t sub_1BD683D40()
{
  result = qword_1EBD4F260;
  if (!qword_1EBD4F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F260);
  }

  return result;
}

uint64_t sub_1BD683D94(uint64_t a1)
{
  result = sub_1BE04AA64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BD683E1C(uint64_t a1)
{
  sub_1BD683EFC(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BD683F4C(319, &qword_1EBD45140, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD683EFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD683F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD683FD8(uint64_t a1)
{
  result = type metadata accessor for UnifiedMerchantTokenData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD684044()
{
  result = qword_1EBD4F2A0;
  if (!qword_1EBD4F2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EFC0, &qword_1BE0ECE98);
    sub_1BD6840FC();
    sub_1BD0DE4F4(&qword_1EBD4F2B0, &qword_1EBD4EFC8, &unk_1BE0ECEA0, MEMORY[0x1E697C520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F2A0);
  }

  return result;
}

unint64_t sub_1BD6840FC()
{
  result = qword_1EBD4F2A8;
  if (!qword_1EBD4F2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF80, &qword_1BE0ECE68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF70, &qword_1BE0ECE58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D80, &qword_1BE0C9780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF68, &qword_1BE0ECE50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    sub_1BD67B68C();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
    sub_1BD170E70();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F2A8);
  }

  return result;
}

uint64_t sub_1BD68436C(uint64_t a1)
{
  result = type metadata accessor for PassRow.Pass(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BD6843F0(uint64_t a1)
{
  sub_1BD684464(319);
  if (v1 <= 0x3F)
  {
    sub_1BD6844EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD684464(uint64_t a1)
{
  if (!qword_1EBD4F2D8)
  {
    type metadata accessor for AvailablePass(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F2E0, "l8\n");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD4F2D8);
    }
  }
}

void sub_1BD6844EC(uint64_t a1)
{
  if (!qword_1EBD4F2E8)
  {
    type metadata accessor for UnavailablePass(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD4F2E8);
    }
  }
}

uint64_t sub_1BD684558(uint64_t a1)
{
  result = sub_1BE051C54();
  v2 = 51.0;
  if (result)
  {
    v2 = 36.0;
  }

  qword_1EBDAB3C8 = *&v2;
  return result;
}

uint64_t sub_1BD684594(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD68C394(v3, v12, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68CEDC(v12, v6, type metadata accessor for UnavailablePass);
    sub_1BD68C394(v6, v15, type metadata accessor for WrappedPass);
    v16 = type metadata accessor for UnavailablePass;
    v17 = v6;
  }

  else
  {

    sub_1BD68CEDC(v12, v9, type metadata accessor for AvailablePass);
    sub_1BD68C394(v9, v15, type metadata accessor for WrappedPass);
    v16 = type metadata accessor for AvailablePass;
    v17 = v9;
  }

  v18 = sub_1BD68C19C(v17, v16);
  v19 = a1(v18);
  sub_1BD68C19C(v15, type metadata accessor for WrappedPass);
  return v19;
}

uint64_t sub_1BD68482C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = 0x72616D6B63656863;
  v10 = 0xE90000000000006BLL;
  if (v8 != 1)
  {
    v9 = 0x72656E6E697073;
    v10 = 0xE700000000000000;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 1701736302;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = 0x72616D6B63656863;
  v14 = 0xE90000000000006BLL;
  if (*a2 != 1)
  {
    v13 = 0x72656E6E697073;
    v14 = 0xE700000000000000;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 1701736302;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1BE053B84();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_1BD684930()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = 0xE90000000000006BLL;
  if (v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD6849D0(uint64_t a1)
{
  v2 = 0xE90000000000006BLL;
  if (*v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  sub_1BE052524();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD684A5C(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v3 = 0xE700000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

unint64_t sub_1BD684AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD68CF44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD684B28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE90000000000006BLL;
  v5 = 0x72616D6B63656863;
  if (v2 != 1)
  {
    v5 = 0x72656E6E697073;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1BD684B88()
{
  result = qword_1EBD4F2F0;
  if (!qword_1EBD4F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F2F0);
  }

  return result;
}

uint64_t sub_1BD684BF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1BE04FF64();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F2F8, &qword_1BE0ED3A8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F300, &qword_1BE0ED3B0);
  v66 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v13 = &v66 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F308, &qword_1BE0ED3B8);
  MEMORY[0x1EEE9AC00](v68);
  v15 = &v66 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F310, &qword_1BE0ED3C0);
  MEMORY[0x1EEE9AC00](v71);
  v17 = &v66 - v16;
  v25 = *(v2 + *(type metadata accessor for PassRow(0) + 20));
  v74 = v6;
  v75 = a1;
  v72 = v17;
  v73 = v4;
  if (v25)
  {
    if (v25 == 1)
    {
      v26 = 1;
      v27 = 0xE90000000000006BLL;
      goto LABEL_7;
    }

    v27 = 0xE700000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  v26 = sub_1BE053B84();
LABEL_7:
  v27, v18, v19, v20, v21, v22, v23, v24;
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0x4020000000000000;
  v11[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F318, &qword_1BE0ED3C8);
  v29 = v26 & 1;
  sub_1BD685228(v2, v26 & 1, &v11[*(v28 + 44)]);
  sub_1BE04FF44();
  v30 = v2;
  v31 = sub_1BD0DE4F4(&qword_1EBD4F320, &qword_1EBD4F2F8, &qword_1BE0ED3A8, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v67 + 8))(v8, v70);
  sub_1BD0DE53C(v11, &qword_1EBD4F2F8, &qword_1BE0ED3A8);
  sub_1BE052434();
  v33 = v32;
  *&v76[0] = v9;
  *(&v76[0] + 1) = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v69;
  sub_1BE050DE4();
  v33, v35, v36, v37, v38, v39, v40, v41;
  (*(v66 + 8))(v13, v34);
  v42 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F328, &qword_1BE0ED3D0) + 36)];
  *v42 = 0;
  v42[8] = v29;
  v43 = sub_1BE051DA4();
  sub_1BD689748(v76);
  v44 = v77;
  v45 = &v15[*(v68 + 36)];
  *v45 = v43;
  v46 = v76[1];
  *(v45 + 8) = v76[0];
  *(v45 + 24) = v46;
  v45[40] = v44;
  v47 = v74;
  sub_1BD68C394(v30, v74, type metadata accessor for PassRow.Pass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = type metadata accessor for PassRow.Pass;
  if (EnumCaseMultiPayload != 1)
  {

    v49 = type metadata accessor for AvailablePass;
  }

  v50 = v72;
  v51 = EnumCaseMultiPayload == 1;
  sub_1BD68C19C(v47, v49);
  KeyPath = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  sub_1BD0DE204(v15, v50, &qword_1EBD4F308, &qword_1BE0ED3B8);
  v54 = (v50 + *(v71 + 36));
  *v54 = KeyPath;
  v54[1] = sub_1BD10DF54;
  v54[2] = v53;
  LOBYTE(KeyPath) = sub_1BE050234();
  sub_1BE04E1F4();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v75;
  sub_1BD0DE204(v50, v75, &qword_1EBD4F310, &qword_1BE0ED3C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F330, &qword_1BE0ED408);
  v65 = v63 + *(result + 36);
  *v65 = KeyPath;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  return result;
}

uint64_t sub_1BD685228@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v156 = a2;
  v165 = a3;
  v147 = sub_1BE04F6E4();
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v144 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8, &qword_1BE0B8930);
  MEMORY[0x1EEE9AC00](v149);
  v146 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v148 = &v142 - v7;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADC0, &qword_1BE0E20A8);
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v142 - v8;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F338, &qword_1BE0ED410);
  MEMORY[0x1EEE9AC00](v160);
  v152 = &v142 - v9;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F340, &qword_1BE0ED418);
  v154 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v153 = &v142 - v10;
  v155 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v155);
  v143 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v142 - v13;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F348, &qword_1BE0ED420);
  MEMORY[0x1EEE9AC00](v157);
  v159 = &v142 - v14;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F350, &qword_1BE0ED428);
  MEMORY[0x1EEE9AC00](v158);
  v16 = &v142 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F358, &qword_1BE0ED430);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v164 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v166 = &v142 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F360, &qword_1BE0ED438);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v142 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F368, &qword_1BE0ED440);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v163 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v142 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v142 - v31;
  *v23 = sub_1BE04F504();
  *(v23 + 1) = 0x4030000000000000;
  v23[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F370, &qword_1BE0ED448);
  sub_1BD6860A0(a1, &v23[*(v33 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v23, v29, &qword_1EBD4F360, &qword_1BE0ED438);
  v34 = &v29[*(v25 + 44)];
  v35 = v178;
  *(v34 + 4) = v177;
  *(v34 + 5) = v35;
  *(v34 + 6) = v179;
  v36 = v174;
  *v34 = v173;
  *(v34 + 1) = v36;
  v37 = v176;
  *(v34 + 2) = v175;
  *(v34 + 3) = v37;
  v162 = v32;
  sub_1BD0DE204(v29, v32, &qword_1EBD4F368, &qword_1BE0ED440);
  v38 = type metadata accessor for PassRow(0);
  if (*(a1 + *(v38 + 20)))
  {
    if (*(a1 + *(v38 + 20)) != 1)
    {
      0xE700000000000000, v39, v40, v41, v42, v43, v44, v45;
      v47 = v166;
      goto LABEL_10;
    }

    v46 = 0xE90000000000006BLL;
  }

  else
  {
    v46 = 0xE400000000000000;
  }

  v47 = v166;
  v48 = sub_1BE053B84();
  v46, v49, v50, v51, v52, v53, v54, v55;
  if (v48)
  {
LABEL_10:
    sub_1BE04E4F4();
    v58 = sub_1BE0502D4();
    KeyPath = swift_getKeyPath();
    v60 = &v16[*(v158 + 36)];
    *v60 = KeyPath;
    v60[1] = v58;
    sub_1BD0DE19C(v16, v159, &qword_1EBD4F350, &qword_1BE0ED428);
    swift_storeEnumTagMultiPayload();
    sub_1BD68C2B0();
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F388, &qword_1BE0ED4C0);
    v62 = v47;
    v63 = sub_1BD68C1FC(&qword_1EBD4F390, &qword_1EBD4F338, &qword_1BE0ED410, sub_1BD5717A4);
    v64 = v160;
    v167 = v160;
    v168 = v63;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v167 = v64;
    v168 = MEMORY[0x1E6981CD8];
    v169 = v61;
    v170 = v63;
    v47 = v62;
    v171 = MEMORY[0x1E6981CD0];
    v172 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v16, &qword_1EBD4F350, &qword_1BE0ED428);
    v57 = 0;
    goto LABEL_11;
  }

  if ((v156 & 1) == 0)
  {
    v56 = v142;
    sub_1BD68C394(a1, v142, type metadata accessor for PassRow.Pass);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BD68C19C(v56, type metadata accessor for PassRow.Pass);
      v57 = 1;
LABEL_11:
      v66 = v165;
      goto LABEL_23;
    }

    sub_1BD68C19C(v56, type metadata accessor for AvailablePass);
  }

  v67 = sub_1BE051574();
  v68 = sub_1BE0502D4();
  v69 = swift_getKeyPath();
  v70 = a1;
  v71 = v143;
  sub_1BD68C394(v70, v143, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v72 = type metadata accessor for UnavailablePass;
    v73 = sub_1BE051234();
  }

  else
  {
    v72 = type metadata accessor for PassRow.Pass;
    v73 = sub_1BE0511E4();
  }

  v74 = v73;
  sub_1BD68C19C(v71, v72);
  v75 = swift_getKeyPath();
  v167 = v67;
  v168 = v69;
  v169 = v68;
  v170 = v75;
  v171 = v74;
  v76 = v144;
  sub_1BE04F6B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170, &qword_1BE0C8110);
  sub_1BD0F1430();
  v77 = v146;
  sub_1BE050DA4();
  (*(v145 + 8))(v76, v147);
  v74, v78, v79, v80, v81, v82, v83, v84;
  v75, v85, v86, v87, v88, v89, v90, v91;
  v68, v92, v93, v94, v95, v96, v97, v98;
  v69, v99, v100, v101, v102, v103, v104, v105;
  v67, v106, v107, v108, v109, v110, v111, v112;
  LOBYTE(v75) = v156;
  v113 = ~v156;
  v114 = v148;
  sub_1BE04EBA4();
  sub_1BD0DE53C(v77, &qword_1EBD38BA8, &qword_1BE0B8930);
  if (v75)
  {
    v115 = 1.0;
  }

  else
  {
    v115 = 0.0;
  }

  v116 = v151;
  sub_1BD0DE204(v114, v151, &qword_1EBD38BA8, &qword_1BE0B8930);
  *(v116 + *(v150 + 36)) = v115;
  if (v113)
  {
    v118 = 0xE000000000000000;
  }

  else
  {
    sub_1BE052434();
    v118 = v117;
  }

  v66 = v165;
  sub_1BD5717A4();
  v119 = v152;
  sub_1BE050DE4();
  v118, v120, v121, v122, v123, v124, v125, v126;
  sub_1BD0DE53C(v116, &qword_1EBD4ADC0, &qword_1BE0E20A8);
  sub_1BE051C64();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F388, &qword_1BE0ED4C0);
  v128 = sub_1BD68C1FC(&qword_1EBD4F390, &qword_1EBD4F338, &qword_1BE0ED410, sub_1BD5717A4);
  v129 = v160;
  v167 = v160;
  v168 = v128;
  v141 = swift_getOpaqueTypeConformance2();
  v130 = v153;
  sub_1BE0510C4();
  sub_1BD0DE53C(v119, &qword_1EBD4F338, &qword_1BE0ED410);
  v131 = v154;
  v132 = v161;
  (*(v154 + 16))(v159, v130, v161);
  swift_storeEnumTagMultiPayload();
  sub_1BD68C2B0();
  v167 = v129;
  v168 = MEMORY[0x1E6981CD8];
  v169 = v127;
  v170 = v128;
  v171 = MEMORY[0x1E6981CD0];
  v172 = v141;
  swift_getOpaqueTypeConformance2();
  v47 = v166;
  sub_1BE04F9A4();
  (*(v131 + 8))(v130, v132);
  v57 = 0;
LABEL_23:
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F378, &qword_1BE0ED450);
  (*(*(v133 - 8) + 56))(v47, v57, 1, v133);
  v134 = v162;
  v135 = v163;
  sub_1BD0DE19C(v162, v163, &qword_1EBD4F368, &qword_1BE0ED440);
  v136 = v47;
  v137 = v47;
  v138 = v164;
  sub_1BD094604(v136, v164);
  sub_1BD0DE19C(v135, v66, &qword_1EBD4F368, &qword_1BE0ED440);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F380, &qword_1BE0ED458);
  sub_1BD094604(v138, v66 + *(v139 + 48));
  sub_1BD0DE53C(v137, &qword_1EBD4F358, &qword_1BE0ED430);
  sub_1BD0DE53C(v134, &qword_1EBD4F368, &qword_1BE0ED440);
  sub_1BD0DE53C(v138, &qword_1EBD4F358, &qword_1BE0ED430);
  return sub_1BD0DE53C(v135, &qword_1EBD4F368, &qword_1BE0ED440);
}

uint64_t sub_1BD6860A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v53 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3A0, &qword_1BE0ED4C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v7 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB0, &unk_1BE0C2840);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v50 - v27;
  sub_1BD68C394(v55, v15, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68CEDC(v15, v9, type metadata accessor for UnavailablePass);
    sub_1BD68C394(v9, v18, type metadata accessor for WrappedPass);
    v29 = type metadata accessor for UnavailablePass;
    v30 = v9;
  }

  else
  {

    sub_1BD68CEDC(v15, v12, type metadata accessor for AvailablePass);
    sub_1BD68C394(v12, v18, type metadata accessor for WrappedPass);
    v29 = type metadata accessor for AvailablePass;
    v30 = v12;
  }

  sub_1BD68C19C(v30, v29);
  if (qword_1EBD36CF0 != -1)
  {
    swift_once();
  }

  v31 = *&qword_1EBDAB3C8;
  PKPassFrontFaceContentSize();
  v21[3] = v31;
  v21[4] = v31 * (v33 / v32);
  sub_1BD68CEDC(v18, v21 + v19[6], type metadata accessor for WrappedPass);
  *v21 = sub_1BD70C870;
  v21[1] = 0.0;
  *(v21 + 16) = 0;
  *(v21 + v19[7]) = 0;
  *(v21 + v19[8]) = 1911;
  v34 = sub_1BE050234();
  sub_1BE04E1F4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1BD68CEDC(v21, v25, type metadata accessor for PassImage);
  v43 = &v25[*(v51 + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  sub_1BD0DE204(v25, v28, &qword_1EBD3DDB0, &unk_1BE0C2840);
  *v6 = sub_1BE04F7C4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3A8, &qword_1BE0ED4D0);
  sub_1BD686690(&v6[*(v44 + 44)]);
  v45 = v52;
  sub_1BD0DE19C(v28, v52, &qword_1EBD3DDB0, &unk_1BE0C2840);
  v46 = v54;
  sub_1BD0DE19C(v6, v54, &qword_1EBD4F3A0, &qword_1BE0ED4C8);
  v47 = v53;
  sub_1BD0DE19C(v45, v53, &qword_1EBD3DDB0, &unk_1BE0C2840);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3B0, &qword_1BE0ED4D8);
  sub_1BD0DE19C(v46, v47 + *(v48 + 48), &qword_1EBD4F3A0, &qword_1BE0ED4C8);
  sub_1BD0DE53C(v6, &qword_1EBD4F3A0, &qword_1BE0ED4C8);
  sub_1BD0DE53C(v28, &qword_1EBD3DDB0, &unk_1BE0C2840);
  sub_1BD0DE53C(v46, &qword_1EBD4F3A0, &qword_1BE0ED4C8);
  return sub_1BD0DE53C(v45, &qword_1EBD3DDB0, &unk_1BE0C2840);
}

uint64_t sub_1BD686690@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3B8, &qword_1BE0ED4E0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v43 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3C0, &qword_1BE0ED4E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3C8, &qword_1BE0ED4F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v46 = &v43 - v14;
  sub_1BD686A84();
  sub_1BD686D78(v3);
  sub_1BE052434();
  v17 = v16;
  sub_1BD68C3FC();
  v44 = v9;
  sub_1BE050DE4();
  v17, v18, v19, v20, v21, v22, v23, v24;
  sub_1BD0DE53C(v3, &qword_1EBD4F3B8, &qword_1BE0ED4E0);
  sub_1BD688FB4(v55);
  sub_1BD6892DC(&v59);
  v25 = v59;
  v26 = v60;
  v47 = v12;
  sub_1BD0DE19C(v15, v12, &qword_1EBD4F3C8, &qword_1BE0ED4F0);
  v45 = v6;
  sub_1BD0DE19C(v9, v6, &qword_1EBD4F3C0, &qword_1BE0ED4E8);
  v53 = v55[4];
  v54[0] = v56[0];
  *(v54 + 9) = *(v56 + 9);
  v49 = v55[0];
  v50 = v55[1];
  v51 = v55[2];
  v52 = v55[3];
  v27 = v12;
  v28 = v48;
  sub_1BD0DE19C(v27, v48, &qword_1EBD4F3C8, &qword_1BE0ED4F0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F8, &qword_1BE0ED580);
  sub_1BD0DE19C(v6, v28 + v29[12], &qword_1EBD4F3C0, &qword_1BE0ED4E8);
  v30 = (v28 + v29[16]);
  v31 = v53;
  v32 = v54[0];
  v57[4] = v53;
  v58[0] = v54[0];
  v33 = *(v54 + 9);
  *(v58 + 9) = *(v54 + 9);
  v34 = v50;
  v57[0] = v49;
  v57[1] = v50;
  v36 = v51;
  v35 = v52;
  v57[2] = v51;
  v57[3] = v52;
  *v30 = v49;
  v30[1] = v34;
  v30[4] = v31;
  v30[5] = v32;
  v30[2] = v36;
  v30[3] = v35;
  *(v30 + 89) = v33;
  v37 = (v28 + v29[20]);
  *v37 = v25;
  v37[1] = v26;
  sub_1BD0DE19C(v57, &v59, &qword_1EBD4F500, &qword_1BE0ED588);
  sub_1BD68CD54(v25, *(&v25 + 1), v26, *(&v26 + 1));
  sub_1BD0DE53C(v44, &qword_1EBD4F3C0, &qword_1BE0ED4E8);
  sub_1BD0DE53C(v46, &qword_1EBD4F3C8, &qword_1BE0ED4F0);
  sub_1BD27273C(v25, *(&v25 + 1), v26, *(&v26 + 1), v38, v39, v40, v41);
  v63 = v53;
  v64[0] = v54[0];
  *(v64 + 9) = *(v54 + 9);
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v62 = v52;
  sub_1BD0DE53C(&v59, &qword_1EBD4F500, &qword_1BE0ED588);
  sub_1BD0DE53C(v45, &qword_1EBD4F3C0, &qword_1BE0ED4E8);
  return sub_1BD0DE53C(v47, &qword_1EBD4F3C8, &qword_1BE0ED4F0);
}

uint64_t sub_1BD686A84()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F538, &qword_1BE0ED648);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F540, &qword_1BE0ED650);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  if (PKBankConnectEnabled())
  {
    *v10 = sub_1BE04F504();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F550, &qword_1BE0ED658);
    sub_1BD689920(v1, &v10[*(v11 + 44)]);
    sub_1BD0DE19C(v10, v7, &qword_1EBD4F540, &qword_1BE0ED650);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD4F548, &qword_1EBD4F540, &qword_1BE0ED650, MEMORY[0x1E69817F8]);
    sub_1BD68C1FC(&qword_1EBD3C0F8, &qword_1EBD3C0E8, &qword_1BE0C4010, sub_1BD1B9C50);
    sub_1BE04F9A4();
    v12 = v10;
    v13 = &qword_1EBD4F540;
    v14 = &qword_1BE0ED650;
  }

  else
  {
    sub_1BD689F58(v4);
    sub_1BD0DE19C(v4, v7, &qword_1EBD3C0E8, &qword_1BE0C4010);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD4F548, &qword_1EBD4F540, &qword_1BE0ED650, MEMORY[0x1E69817F8]);
    sub_1BD68C1FC(&qword_1EBD3C0F8, &qword_1EBD3C0E8, &qword_1BE0C4010, sub_1BD1B9C50);
    sub_1BE04F9A4();
    v12 = v4;
    v13 = &qword_1EBD3C0E8;
    v14 = &qword_1BE0C4010;
  }

  return sub_1BD0DE53C(v12, v13, v14);
}

uint64_t sub_1BD686D78@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v395 = a1;
  v390 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v390);
  v392 = &v366 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F510, &qword_1BE0ED598);
  MEMORY[0x1EEE9AC00](v393);
  v394 = (&v366 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190, &qword_1BE0C5788);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v368 = &v366 - v6;
  v7 = type metadata accessor for IdentityCredential(0);
  v366 = *(v7 - 8);
  v367 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v370 = &v366 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4B0, &qword_1BE0ED558);
  MEMORY[0x1EEE9AC00](v382);
  v373 = &v366 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B068, &qword_1BE0E27B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v366 - v11;
  v13 = type metadata accessor for AppleCardRewardsInfoView(0);
  v375 = *(v13 - 8);
  v376 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v377 = &v366 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F518, &qword_1BE0ED5A0);
  MEMORY[0x1EEE9AC00](v387);
  v389 = (&v366 - v15);
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F520, &qword_1BE0ED5A8);
  MEMORY[0x1EEE9AC00](v383);
  v385 = (&v366 - v16);
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F528, &qword_1BE0ED5B0);
  MEMORY[0x1EEE9AC00](v379);
  v380 = (&v366 - v17);
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F410, &qword_1BE0ED510);
  MEMORY[0x1EEE9AC00](v384);
  v381 = &v366 - v18;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F400, &qword_1BE0ED508);
  MEMORY[0x1EEE9AC00](v388);
  v386 = &v366 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v366 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v366 - v24;
  v26 = type metadata accessor for BalanceInfo(0);
  v374 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v372 = (&v366 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v371 = (&v366 - v29);
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3E0, &qword_1BE0ED4F8);
  MEMORY[0x1EEE9AC00](v396);
  v391 = &v366 - v30;
  v31 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v366 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v366 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = v2;
  sub_1BD68C394(v2, v36, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1BD68CEDC(v36, v33, type metadata accessor for AvailablePass);
    v98 = v33[v31[5]];
    v99 = v33;
    v369 = v33;
    if (v98 == 1)
    {
      v100 = *&v33[v31[9]];
      if (v100)
      {
        v101 = v100;
        v102 = [v101 formattedStringValue];
        v392 = v101;
        if (v102)
        {
          v103 = v102;
          v104 = sub_1BE052434();
          v106 = v105;
        }

        else
        {

          v100 = 0;
          v104 = 0;
          v106 = 0;
        }

        v404 = v100;
        *&v405 = v104;
        *(&v405 + 1) = v106;
        LOBYTE(v406) = 0;
        sub_1BD68CE48(v100, 0, v104, v106);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450, &qword_1BE0ED530);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468, &qword_1BE0ED538);
        sub_1BD68C684(&qword_1EBD4F448, &qword_1EBD4F450, &qword_1BE0ED530, sub_1BD68C870);
        sub_1BD68C684(&qword_1EBD4F460, &qword_1EBD4F468, &qword_1BE0ED538, sub_1BD68C8C4);
        sub_1BE04F9A4();
        v397 = v413;
        v398 = v414;
        LOBYTE(v399) = v415;
        sub_1BD094690(&v397);
        v408 = v401;
        v409 = v402;
        v410[0] = v403[0];
        *(v410 + 11) = *(v403 + 11);
        v404 = v397;
        v405 = v398;
        v406 = v399;
        v407 = v400;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440, &qword_1BE0ED528);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480, &qword_1BE0ED540);
        sub_1BD68C78C();
        sub_1BD68C918();
        sub_1BE04F9A4();

        sub_1BD68CE88(v100, 0, v104, v106);
        v408 = v417;
        v409 = v418;
        v410[0] = v419[0];
LABEL_23:
        *(v410 + 11) = *(v419 + 11);
        v404 = v413;
        v405 = v414;
        v406 = v415;
        v407 = v416;
        PKEdgeInsetsMake();
        v417 = v408;
        v418 = v409;
        v419[0] = v410[0];
        *(v419 + 11) = *(v410 + 11);
        v413 = v404;
        v414 = v405;
        v415 = v406;
        v416 = v407;
        v158 = v391;
LABEL_24:
        v159 = v418;
        v160 = v380;
        v380[4] = v417;
        v160[5] = v159;
        v160[6] = v419[0];
        *(v160 + 107) = *(v419 + 11);
        v161 = v414;
        *v160 = v413;
        v160[1] = v161;
        v162 = v416;
        v160[2] = v415;
        v160[3] = v162;
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE19C(&v413, &v404, &qword_1EBD4F420, &qword_1BE0ED518);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F420, &qword_1BE0ED518);
        sub_1BD68C684(&qword_1EBD4F418, &qword_1EBD4F420, &qword_1BE0ED518, sub_1BD68C700);
        sub_1BD68CA5C();
        v163 = v381;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v163, v385, &qword_1EBD4F410, &qword_1BE0ED510);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4C0, &qword_1BE0ED560);
        sub_1BD68C5CC();
        sub_1BD68CB60();
        v164 = v386;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v163, &qword_1EBD4F410, &qword_1BE0ED510);
        sub_1BD0DE19C(v164, v389, &qword_1EBD4F400, &qword_1BE0ED508);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
        sub_1BD68C540();
        sub_1BD68CCD0();
        sub_1BE04F9A4();
        sub_1BD0DE53C(&v413, &qword_1EBD4F420, &qword_1BE0ED518);
        sub_1BD0DE53C(v164, &qword_1EBD4F400, &qword_1BE0ED508);
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3F0, &qword_1BE0ED500);
        (*(*(v165 - 8) + 56))(v158, 0, 1, v165);
        v166 = v394;
        v108 = v158;
LABEL_42:
        sub_1BD0DE19C(v108, v166, &qword_1EBD4F3E0, &qword_1BE0ED4F8);
        swift_storeEnumTagMultiPayload();
        sub_1BD68C684(&qword_1EBD4F3D8, &qword_1EBD4F3E0, &qword_1BE0ED4F8, sub_1BD68C4B4);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v108, &qword_1EBD4F3E0, &qword_1BE0ED4F8);
        v96 = type metadata accessor for AvailablePass;
        v97 = v369;
        return sub_1BD68C19C(v97, v96);
      }

      v147 = &v33[v31[8]];
      v148 = *(v147 + 1);
      v149 = v391;
      if (v148)
      {
        v150 = *v147;
        v151 = v148;
        v152 = [v151 formattedStringValue];
        v392 = v151;
        if (v152)
        {
          v153 = v152;
          v154 = sub_1BE052434();
          v156 = v155;

          v157 = v150 & 1;
        }

        else
        {

          v157 = 0;
          v148 = 0;
          v154 = 0;
          v156 = 0;
        }

        v390 = v154;
        *&v404 = v157;
        *(&v404 + 1) = v148;
        *&v405 = v154;
        *(&v405 + 1) = v156;
        LOBYTE(v406) = 1;
        sub_1BD68CDC8(v157, v148, v154, v156);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450, &qword_1BE0ED530);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468, &qword_1BE0ED538);
        sub_1BD68C684(&qword_1EBD4F448, &qword_1EBD4F450, &qword_1BE0ED530, sub_1BD68C870);
        sub_1BD68C684(&qword_1EBD4F460, &qword_1EBD4F468, &qword_1BE0ED538, sub_1BD68C8C4);
        sub_1BE04F9A4();
        v397 = v413;
        v398 = v414;
        LOBYTE(v399) = v415;
        sub_1BD094690(&v397);
        v408 = v401;
        v409 = v402;
        v410[0] = v403[0];
        *(v410 + 11) = *(v403 + 11);
        v404 = v397;
        v405 = v398;
        v406 = v399;
        v407 = v400;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440, &qword_1BE0ED528);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480, &qword_1BE0ED540);
        sub_1BD68C78C();
        sub_1BD68C918();
        sub_1BE04F9A4();

        sub_1BD68CE08(v157, v148, v390, v156);
        v408 = v417;
        v409 = v418;
        v410[0] = v419[0];
        goto LABEL_23;
      }

      sub_1BD0DE19C(&v99[v31[7]], v25, &qword_1EBD39FF0, &unk_1BE0B9CA0);
      if ((*(v374 + 48))(v25, 1, v26) == 1)
      {
        sub_1BD0DE53C(v25, &qword_1EBD39FF0, &unk_1BE0B9CA0);
      }

      else
      {
        v284 = v25;
        v285 = v371;
        sub_1BD68CEDC(v284, v371, type metadata accessor for BalanceInfo);
        v286 = [*v285 formattedStringValue];
        if (v286)
        {
          v287 = v286;
          v288 = sub_1BE052434();
          v290 = v289;

          sub_1BD68A8CC(v285, v288, v290, &v413);
          v290, v291, v292, v293, v294, v295, v296, v297;
          v401 = v417;
          v402 = v418;
          v403[0] = v419[0];
          *(v403 + 10) = *(v419 + 10);
          v397 = v413;
          v398 = v414;
          v399 = v415;
          v400 = v416;
          sub_1BD094684(&v397);
          v408 = v401;
          v409 = v402;
          v410[0] = v403[0];
          *(v410 + 11) = *(v403 + 11);
          v404 = v397;
          v405 = v398;
          v406 = v399;
          v407 = v400;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440, &qword_1BE0ED528);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480, &qword_1BE0ED540);
          sub_1BD68C78C();
          sub_1BD68C918();
          sub_1BE04F9A4();
          v408 = v417;
          v409 = v418;
          v410[0] = v419[0];
          *(v410 + 11) = *(v419 + 11);
          v404 = v413;
          v405 = v414;
          v406 = v415;
          v407 = v416;
          PKEdgeInsetsMake();
          sub_1BD68C19C(v285, type metadata accessor for BalanceInfo);
          v417 = v408;
          v418 = v409;
          v419[0] = v410[0];
          *(v419 + 11) = *(v410 + 11);
          v413 = v404;
          v414 = v405;
          v415 = v406;
          v416 = v407;
LABEL_50:
          v158 = v149;
          goto LABEL_24;
        }

        sub_1BD68C19C(v285, type metadata accessor for BalanceInfo);
      }

      sub_1BD68CDA0(&v413);
      goto LABEL_50;
    }

    sub_1BD68B458(v33, v12);
    if ((*(v375 + 48))(v12, 1, v376) != 1)
    {
      v132 = v377;
      sub_1BD68CEDC(v12, v377, type metadata accessor for AppleCardRewardsInfoView);
      v133 = sub_1BE0501E4();
      sub_1BE04E1F4();
      v135 = v134;
      v137 = v136;
      v139 = v138;
      v141 = v140;
      v142 = v132;
      v143 = v373;
      sub_1BD68C394(v142, v373, type metadata accessor for AppleCardRewardsInfoView);
      v144 = v143 + *(v382 + 36);
      *v144 = v133;
      *(v144 + 8) = v135;
      *(v144 + 16) = v137;
      *(v144 + 24) = v139;
      *(v144 + 32) = v141;
      *(v144 + 40) = 0;
      sub_1BD0DE19C(v143, v380, &qword_1EBD4F4B0, &qword_1BE0ED558);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F420, &qword_1BE0ED518);
      sub_1BD68C684(&qword_1EBD4F418, &qword_1EBD4F420, &qword_1BE0ED518, sub_1BD68C700);
      sub_1BD68CA5C();
      v145 = v381;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v145, v385, &qword_1EBD4F410, &qword_1BE0ED510);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4C0, &qword_1BE0ED560);
      sub_1BD68C5CC();
      sub_1BD68CB60();
      v146 = v386;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v145, &qword_1EBD4F410, &qword_1BE0ED510);
      sub_1BD0DE19C(v146, v389, &qword_1EBD4F400, &qword_1BE0ED508);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
      sub_1BD68C540();
      sub_1BD68CCD0();
      v108 = v391;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v146, &qword_1EBD4F400, &qword_1BE0ED508);
      sub_1BD0DE53C(v143, &qword_1EBD4F4B0, &qword_1BE0ED558);
      sub_1BD68C19C(v377, type metadata accessor for AppleCardRewardsInfoView);
      goto LABEL_41;
    }

    sub_1BD0DE53C(v12, &qword_1EBD4B068, &qword_1BE0E27B8);
    sub_1BD689748(&v420);
    v107 = v420;
    v108 = v391;
    if (v420)
    {
      v423 = v422;
      if (v422)
      {
        v109 = [v422 primaryTitle];
        if (v109)
        {
          v110 = v109;
          v111 = sub_1BE052434();
          v113 = v112;

          LOBYTE(v110) = sub_1BE0501F4();
          sub_1BE04E1F4();
          v115 = v114;
          v117 = v116;
          v119 = v118;
          v121 = v120;
          LOBYTE(v413) = 0;
          v122 = sub_1BE0501E4();
          sub_1BE04E1F4();
          *&v413 = v111;
          *(&v413 + 1) = v113;
          LOBYTE(v414) = v110;
          *(&v414 + 1) = v115;
          *&v415 = v117;
          *(&v415 + 1) = v119;
          *&v416 = v121;
          BYTE8(v416) = 0;
          LOBYTE(v417) = v122;
          *(&v417 + 1) = v123;
          *&v418 = v124;
          *(&v418 + 1) = v125;
          *&v419[0] = v126;
          BYTE8(v419[0]) = 0;
          sub_1BD094690(&v413);
          v401 = v417;
          v402 = v418;
          v403[0] = v419[0];
          *(v403 + 11) = *(v419 + 11);
          v397 = v413;
          v398 = v414;
          v399 = v415;
          v400 = v416;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4D0, &qword_1BE0ED568);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480, &qword_1BE0ED540);
          sub_1BD68CF90(&qword_1EBD4F4C8, &qword_1EBD4F4D0, &qword_1BE0ED568, sub_1BD68CC18);
          sub_1BD68C918();
          sub_1BE04F9A4();
          v127 = v409;
          v128 = v385;
          v385[4] = v408;
          v128[5] = v127;
          v128[6] = v410[0];
          *(v128 + 107) = *(v410 + 11);
          v129 = v405;
          *v128 = v404;
          v128[1] = v129;
          v130 = v407;
          v128[2] = v406;
          v128[3] = v130;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4C0, &qword_1BE0ED560);
          sub_1BD68C5CC();
          sub_1BD68CB60();
          v131 = v386;
          sub_1BE04F9A4();
          sub_1BD0DE19C(v131, v389, &qword_1EBD4F400, &qword_1BE0ED508);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
          sub_1BD68C540();
          sub_1BD68CCD0();
          sub_1BE04F9A4();

          v404 = v421;
          sub_1BD1BCDE4(&v404);
          sub_1BD0DE53C(&v423, &qword_1EBD4F530, &unk_1BE0EF380);
          sub_1BD0DE53C(v131, &qword_1EBD4F400, &qword_1BE0ED508);
LABEL_41:
          v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3F0, &qword_1BE0ED500);
          (*(*(v282 - 8) + 56))(v108, 0, 1, v282);
          v166 = v394;
          goto LABEL_42;
        }

        v424[0] = v421;
        sub_1BD1BCDE4(v424);
        sub_1BD0DE53C(&v423, &qword_1EBD4F530, &unk_1BE0EF380);
      }

      else
      {

        v424[0] = v421;
        sub_1BD1BCDE4(v424);
      }
    }

    sub_1BD0DE19C(&v33[v31[7]], v22, &qword_1EBD39FF0, &unk_1BE0B9CA0);
    if ((*(v374 + 48))(v22, 1, v26) == 1)
    {
      sub_1BD0DE53C(v22, &qword_1EBD39FF0, &unk_1BE0B9CA0);
    }

    else
    {
      v167 = v22;
      v168 = v372;
      sub_1BD68CEDC(v167, v372, type metadata accessor for BalanceInfo);
      v169 = [*v168 formattedStringValue];
      if (v169)
      {
        v170 = v169;
        v171 = sub_1BE052434();
        v173 = v172;

        sub_1BD68A8CC(v168, v171, v173, &v413);
        v173, v174, v175, v176, v177, v178, v179, v180;
        v411[4] = v417;
        v411[5] = v418;
        v412[0] = v419[0];
        *(v412 + 10) = *(v419 + 10);
        v411[0] = v413;
        v411[1] = v414;
        v411[2] = v415;
        v411[3] = v416;
        v419[0] = v412[0];
        sub_1BD094684(&v413);
        v401 = v417;
        v402 = v418;
        v403[0] = v419[0];
        *(v403 + 11) = *(v419 + 11);
        v397 = v413;
        v398 = v414;
        v399 = v415;
        v400 = v416;
        sub_1BD0DE19C(v411, &v404, &qword_1EBD4F480, &qword_1BE0ED540);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4D0, &qword_1BE0ED568);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480, &qword_1BE0ED540);
        sub_1BD68CF90(&qword_1EBD4F4C8, &qword_1EBD4F4D0, &qword_1BE0ED568, sub_1BD68CC18);
        sub_1BD68C918();
        sub_1BE04F9A4();
        v181 = v409;
        v182 = v385;
        v385[4] = v408;
        v182[5] = v181;
        v182[6] = v410[0];
        *(v182 + 107) = *(v410 + 11);
        v183 = v405;
        *v182 = v404;
        v182[1] = v183;
        v184 = v407;
        v182[2] = v406;
        v182[3] = v184;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4C0, &qword_1BE0ED560);
        sub_1BD68C5CC();
        sub_1BD68CB60();
        v185 = v386;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v185, v389, &qword_1EBD4F400, &qword_1BE0ED508);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
        sub_1BD68C540();
        sub_1BD68CCD0();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v411, &qword_1EBD4F480, &qword_1BE0ED540);
        sub_1BD0DE53C(v185, &qword_1EBD4F400, &qword_1BE0ED508);
        v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3F0, &qword_1BE0ED500);
        (*(*(v186 - 8) + 56))(v108, 0, 1, v186);
        sub_1BD68C19C(v168, type metadata accessor for BalanceInfo);
        v166 = v394;
        goto LABEL_42;
      }

      sub_1BD68C19C(v168, type metadata accessor for BalanceInfo);
    }

    v187 = sub_1BD494550();
    v166 = v394;
    if (v188)
    {
      v189 = v187;
      v190 = v188;
      if (PKBankConnectEnabled())
      {
        v190, v191, v192, v193, v194, v195, v196, v197;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
      }

      else
      {
        *&v413 = v189;
        *(&v413 + 1) = v190;
        sub_1BD0DDEBC();
        v210 = sub_1BE0506C4();
        v212 = v211;
        v214 = v213;
        v216 = v215;
        v217 = sub_1BE0502E4();
        v218 = sub_1BE0505F4();
        v220 = v219;
        v222 = v221;
        v224 = v223;
        v217, v219, v221, v223, v225, v226, v227, v228;
        sub_1BD0DDF10(v210, v212, (v214 & 1), v229, v230, v231, v232, v233);
        v216, v234, v235, v236, v237, v238, v239, v240;
        v241 = sub_1BE051234();
        v198 = sub_1BE050564();
        v199 = v242;
        LOBYTE(v217) = v243;
        v201 = v244;
        v241, v242, v243, v244, v245, v246, v247, v248;
        sub_1BD0DDF10(v218, v220, (v222 & 1), v249, v250, v251, v252, v253);
        v224, v254, v255, v256, v257, v258, v259, v260;
        v200 = (v217 & 1);
        sub_1BD0D7F18(v198, v199, v217 & 1);
        sub_1BE048C84();
      }

      v385 = v201;
      v392 = v200;
      *&v404 = v198;
      *(&v404 + 1) = v199;
      *&v405 = v200;
      *(&v405 + 1) = v201;
      LOBYTE(v406) = 0;
      sub_1BD1969AC(v198, v199, v200, v201);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
      sub_1BD12E194();
      sub_1BE04F9A4();
      v261 = v413;
      v263 = *(&v414 + 1);
      v262 = v414;
      v264 = v415;
      v265 = v389;
      *v389 = v413;
      v390 = v261;
      v265[1] = __PAIR128__(v263, v262);
      v386 = v263;
      *(v265 + 32) = v264;
      swift_storeEnumTagMultiPayload();
      sub_1BD68CD98(v261, *(&v261 + 1), v262, v263);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
      v266 = v198;
      sub_1BD68C540();
      v267 = v199;
      sub_1BD68CCD0();
      v108 = v391;
      sub_1BE04F9A4();
      v268 = v392;
      v269 = v385;
      sub_1BD1969F0(v266, v267, v392, v385, v270, v271, v272, v273);
      sub_1BD68CD9C(v390, *(&v261 + 1), v262, v386);
      v278 = v266;
      v279 = v267;
      v280 = v268;
      v281 = v269;
LABEL_40:
      sub_1BD1969F0(v278, v279, v280, v281, v274, v275, v276, v277);
      goto LABEL_41;
    }

    v202 = WrappedPass.secureElementPass.getter();
    if (v202)
    {
      v203 = v202;
      if ([v202 isIdentityPass])
      {
        v392 = v203;
        v204 = v368;
        sub_1BD0DE19C(&v369[v31[6]], v368, &qword_1EBD3F190, &qword_1BE0C5788);
        v205 = v367;
        if ((*(v366 + 48))(v204, 1, v367) == 1)
        {
          sub_1BD0DE53C(v204, &qword_1EBD3F190, &qword_1BE0C5788);
          v206 = 0;
          v207 = 0;
          v208 = 0;
          v209 = 0;
        }

        else
        {
          v299 = v204;
          v300 = v370;
          sub_1BD68CEDC(v299, v370, type metadata accessor for IdentityCredential);
          v301 = (v300 + *(v205 + 28));
          v302 = v301[1];
          *&v413 = *v301;
          *(&v413 + 1) = v302;
          sub_1BD0DDEBC();
          sub_1BE048C84();
          v303 = sub_1BE0506C4();
          v305 = v304;
          v307 = v306;
          v309 = v308;
          v310 = sub_1BE0502C4();
          v311 = sub_1BE0505F4();
          v313 = v312;
          v315 = v314;
          v317 = v316;
          v310, v312, v314, v316, v318, v319, v320, v321;
          sub_1BD0DDF10(v303, v305, (v307 & 1), v322, v323, v324, v325, v326);
          v309, v327, v328, v329, v330, v331, v332, v333;
          v334 = sub_1BE051234();
          v206 = sub_1BE050564();
          v207 = v335;
          LOBYTE(v309) = v336;
          v209 = v337;
          v334, v335, v336, v337, v338, v339, v340, v341;
          sub_1BD0DDF10(v311, v313, (v315 & 1), v342, v343, v344, v345, v346);
          v317, v347, v348, v349, v350, v351, v352, v353;
          sub_1BD68C19C(v370, type metadata accessor for IdentityCredential);
          v208 = v309 & 1;
          sub_1BD0D7F18(v206, v207, v309 & 1);
          sub_1BE048C84();
        }

        v384 = v208;
        v390 = v209;
        *&v404 = v206;
        *(&v404 + 1) = v207;
        *&v405 = v208;
        *(&v405 + 1) = v209;
        LOBYTE(v406) = 1;
        sub_1BD1969AC(v206, v207, v208, v209);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
        sub_1BD12E194();
        sub_1BE04F9A4();
        v354 = v413;
        v355 = v414;
        v356 = v415;
        v357 = v389;
        *v389 = v413;
        v357[1] = v355;
        v386 = v355;
        *(v357 + 32) = v356;
        LODWORD(v385) = v356;
        swift_storeEnumTagMultiPayload();
        sub_1BD68CD98(v354, *(&v354 + 1), v355, *(&v355 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
        v358 = v206;
        sub_1BD68C540();
        v359 = v207;
        sub_1BD68CCD0();
        v108 = v391;
        sub_1BE04F9A4();

        v360 = v384;
        v361 = v390;
        sub_1BD1969F0(v358, v359, v384, v390, v362, v363, v364, v365);
        sub_1BD68CD9C(v354, *(&v354 + 1), v386, *(&v355 + 1));
        v278 = v358;
        v279 = v359;
        v280 = v360;
        v281 = v361;
        goto LABEL_40;
      }
    }

    v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3F0, &qword_1BE0ED500);
    (*(*(v298 - 8) + 56))(v108, 1, 1, v298);
    goto LABEL_42;
  }

  v37 = v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E28, &qword_1BE0DB0B8) + 48)];
  v38 = v36;
  v39 = v392;
  sub_1BD68CEDC(v38, v392, type metadata accessor for UnavailablePass);
  *&v413 = sub_1BD68BA18(*&v39[v390[7]], *&v39[v390[7] + 8], v39[v390[7] + 16], v37);
  *(&v413 + 1) = v40;
  sub_1BD0DDEBC();
  v41 = sub_1BE0506C4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = sub_1BE0502E4();
  v49 = sub_1BE0505F4();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v48, v50, v52, v54, v56, v57, v58, v59;
  sub_1BD0DDF10(v41, v43, (v45 & 1), v60, v61, v62, v63, v64);
  v47, v65, v66, v67, v68, v69, v70, v71;
  v72 = sub_1BE051234();
  v73 = sub_1BE050564();
  v75 = v74;
  LOBYTE(v47) = v76;
  v78 = v77;
  v72, v74, v76, v77, v79, v80, v81, v82;
  sub_1BD0DDF10(v49, v51, (v53 & 1), v83, v84, v85, v86, v87);
  v55, v88, v89, v90, v91, v92, v93, v94;
  v95 = v394;
  *v394 = v73;
  v95[1] = v75;
  *(v95 + 16) = v47 & 1;
  v95[3] = v78;
  swift_storeEnumTagMultiPayload();
  sub_1BD68C684(&qword_1EBD4F3D8, &qword_1EBD4F3E0, &qword_1BE0ED4F8, sub_1BD68C4B4);
  sub_1BE04F9A4();
  v96 = type metadata accessor for UnavailablePass;
  v97 = v392;
  return sub_1BD68C19C(v97, v96);
}

uint64_t sub_1BD688FB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD68C394(v2, v6, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for PassRow.Pass;
    v11 = v6;
LABEL_6:
    result = sub_1BD68C19C(v11, v10);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v26 = xmmword_1BE0B8E00;
    v27 = 0uLL;
    v28 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    goto LABEL_7;
  }

  sub_1BD68CEDC(v6, v9, type metadata accessor for AvailablePass);
  v12 = &v9[*(v7 + 48)];
  v13 = *(v12 + 1);
  v40 = *v12;
  *v41 = v13;
  *&v41[9] = *(v12 + 25);
  v14 = v40;
  if (!v40)
  {
    v10 = type metadata accessor for AvailablePass;
    v11 = v9;
    goto LABEL_6;
  }

  v15 = *&v41[8];
  v42 = *v41;
  v43 = *&v41[16];
  sub_1BD0DE19C(&v40, v37, &qword_1EBD4F508, &qword_1BE0ED590);
  v16 = v14;
  sub_1BD0DE19C(&v42, v37, &qword_1EBD4C870, &unk_1BE0E2B40);
  v17 = v15;
  sub_1BD0DE19C(&v43, v37, &qword_1EBD39330, &qword_1BE0B8568);
  sub_1BD586664(&v40, 0, 0, v37);
  v18 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v33 = v19;
  v34 = v20;
  v32 = v21;
  v35 = v22;

  sub_1BD0DE53C(&v42, &qword_1EBD4C870, &unk_1BE0E2B40);
  sub_1BD0DE53C(&v43, &qword_1EBD39330, &qword_1BE0B8568);
  result = sub_1BD68C19C(v9, type metadata accessor for AvailablePass);
  *&v25 = v32;
  *&v24 = v33;
  *(&v24 + 1) = v34;
  *(&v25 + 1) = v35;
  v26 = v37[0];
  v27 = v37[1];
  v28 = v37[2];
  v29 = v38;
  v30 = v39;
  v31 = v18;
  v36 = 0;
LABEL_7:
  *a1 = v26;
  *(a1 + 16) = v27;
  *(a1 + 32) = v28;
  *(a1 + 48) = v29;
  *(a1 + 56) = v30;
  *(a1 + 64) = v31;
  *(a1 + 72) = v24;
  *(a1 + 88) = v25;
  *(a1 + 104) = 0;
  return result;
}

void sub_1BD6892DC(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!PKOslo2024UIUpdatesEnabled())
  {
    goto LABEL_13;
  }

  sub_1BD68C394(v1, v8, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68C19C(v8, type metadata accessor for UnavailablePass);
LABEL_13:
    v26 = 0;
    v28 = 0;
LABEL_14:
    v31 = 0;
    v33 = 0;
    goto LABEL_15;
  }

  sub_1BD68CEDC(v8, v5, type metadata accessor for AvailablePass);
  v9 = &v5[*(v3 + 52)];
  v10 = *v9;
  v11 = *(v9 + 2);
  v12 = *(v9 + 3);
  sub_1BD2EE178(*v9, *(v9 + 1), v11, v12);
  sub_1BD68C19C(v5, type metadata accessor for AvailablePass);
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v12)
  {
LABEL_12:
    v11, v13, v14, v15, v16, v17, v18, v19;

    goto LABEL_13;
  }

  v20 = [v12 secondaryOfferItem];
  if (!v20)
  {

    goto LABEL_12;
  }

  v21 = v20;
  v22 = [v20 merchandisingDynamicContent];
  if (!v22)
  {

    v11, v41, v42, v43, v44, v45, v46, v47;
    goto LABEL_13;
  }

  v23 = v22;
  v24 = [v22 title];
  if (!v24)
  {

    v11, v48, v49, v50, v51, v52, v53, v54;
    goto LABEL_13;
  }

  v25 = v24;
  v26 = sub_1BE052434();
  v28 = v27;

  v29 = [v23 systemIcon];
  if (!v29)
  {

    v11, v55, v56, v57, v58, v59, v60, v61;
    goto LABEL_14;
  }

  v30 = v29;
  v63 = [v29 imageName];

  v31 = sub_1BE052434();
  v33 = v32;

  v11, v34, v35, v36, v37, v38, v39, v40;
LABEL_15:
  *a1 = v26;
  a1[1] = v28;
  a1[2] = v31;
  a1[3] = v33;
}

uint64_t sub_1BD6895F4()
{
  v0 = sub_1BE04EB24();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E697E728], v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F338, &qword_1BE0ED410);
  sub_1BD68C1FC(&qword_1EBD4F390, &qword_1EBD4F338, &qword_1BE0ED410, sub_1BD5717A4);
  sub_1BE050B24();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BD689748@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKOslo2024UIUpdatesEnabled();
  if (result)
  {
    sub_1BD68C394(v1, v8, type metadata accessor for PassRow.Pass);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_1BD68CEDC(v8, v5, type metadata accessor for AvailablePass);
      v15 = &v5[*(v3 + 52)];
      v10 = *v15;
      v11 = *(v15 + 1);
      v12 = *(v15 + 2);
      v13 = *(v15 + 3);
      v14 = v15[32];
      sub_1BD2EE178(*v15, v11, v12, v13);
      result = sub_1BD68C19C(v5, type metadata accessor for AvailablePass);
      goto LABEL_6;
    }

    result = sub_1BD68C19C(v8, type metadata accessor for UnavailablePass);
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_6:
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_1BD689920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB0, &unk_1BE0D2EA0);
  v3 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v129[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v129[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v129[-v9];
  v10 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v129[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB8, &qword_1BE10B9C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v129[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v129[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v129[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v129[-v23];
  sub_1BD689F58(&v129[-v23]);
  sub_1BD68C394(a1, v12, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68C19C(v12, type metadata accessor for PassRow.Pass);
    v25 = 1;
  }

  else
  {

    sub_1BD68C19C(v12, type metadata accessor for AvailablePass);
    v26 = sub_1BD684594(sub_1BD494550);
    v25 = 1;
    if (v27)
    {
      v140 = v26;
      v141 = v27;
      sub_1BD0DDEBC();
      v28 = sub_1BE0506C4();
      v30 = v29;
      v135 = v3;
      v32 = v31;
      v133 = v7;
      v34 = v33;
      v35 = sub_1BE050324();
      v134 = v15;
      v36 = v35;
      v37 = sub_1BE050304();
      v36, v38, v39, v40, v41, v42, v43, v44;
      v131 = sub_1BE0505F4();
      v132 = v21;
      v46 = v45;
      LOBYTE(v36) = v47;
      v49 = v48;
      v37, v45, v47, v48, v50, v51, v52, v53;
      sub_1BD0DDF10(v28, v30, (v32 & 1), v54, v55, v56, v57, v58);
      v34, v59, v60, v61, v62, v63, v64, v65;
      v66 = sub_1BE051224();
      v67 = v24;
      v68 = v18;
      v69 = v36;
      v70 = v131;
      v71 = v46;
      v72 = sub_1BE050564();
      v74 = v73;
      v130 = v75;
      v77 = v76;
      v66, v73, v75, v76, v78, v79, v80, v81;
      v82 = (v69 & 1);
      v18 = v68;
      v24 = v67;
      sub_1BD0DDF10(v70, v71, v82, v83, v84, v85, v86, v87);
      v88 = v49;
      v21 = v132;
      v88, v89, v90, v91, v92, v93, v94, v95;
      v96 = v72;
      v140 = v72;
      v141 = v74;
      v97 = (v130 & 1);
      v142 = v130 & 1;
      v143 = v77;
      v98 = v77;
      sub_1BE052434();
      v100 = v99;
      v101 = v136;
      sub_1BE050DE4();
      v102 = v100;
      v15 = v134;
      v102, v103, v104, v105, v106, v107, v108, v109;
      sub_1BD0DDF10(v96, v74, v97, v110, v111, v112, v113, v114);
      v115 = v98;
      v3 = v135;
      v115, v116, v117, v118, v119, v120, v121, v122;
      v123 = v133;
      sub_1BD0DE19C(v101, v133, &qword_1EBD452C0, &qword_1BE0B7620);
      v124 = v137;
      *v137 = 0;
      *(v124 + 8) = 1;
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CF0, &qword_1BE10B9D0);
      sub_1BD0DE19C(v123, v124 + *(v125 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v101, &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v123, &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE204(v124, v18, &qword_1EBD44CB0, &unk_1BE0D2EA0);
      v25 = 0;
    }
  }

  (*(v3 + 56))(v18, v25, 1, v138);
  sub_1BD0DE19C(v24, v21, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE19C(v18, v15, &qword_1EBD44CB8, &qword_1BE10B9C0);
  v126 = v139;
  sub_1BD0DE19C(v21, v139, &qword_1EBD3C0E8, &qword_1BE0C4010);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F558, &qword_1BE0ED660);
  sub_1BD0DE19C(v15, v126 + *(v127 + 48), &qword_1EBD44CB8, &qword_1BE10B9C0);
  sub_1BD0DE53C(v18, &qword_1EBD44CB8, &qword_1BE10B9C0);
  sub_1BD0DE53C(v24, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE53C(v15, &qword_1EBD44CB8, &qword_1BE10B9C0);
  return sub_1BD0DE53C(v21, &qword_1EBD3C0E8, &qword_1BE0C4010);
}

void sub_1BD689F58(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1BD68A214();
  v98 = v5;
  sub_1BD0DDEBC();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1BE050324();
  v94 = sub_1BE0505F4();
  v95 = v14;
  v16 = v15;
  v18 = v17;
  v13, v15, v17, v14, v19, v20, v21, v22;
  sub_1BD0DDF10(v6, v8, (v10 & 1), v23, v24, v25, v26, v27);
  v12, v28, v29, v30, v31, v32, v33, v34;
  sub_1BD68C394(v1, v4, type metadata accessor for PassRow.Pass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = type metadata accessor for UnavailablePass;
  if (EnumCaseMultiPayload == 1 || (v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0, &qword_1BE0DB0D0), *&v4[*(v37 + 48)], v36 = type metadata accessor for AvailablePass, (v4[*(v37 + 64)] & 1) != 0))
  {
    sub_1BD68C19C(v4, v36);
    v38 = sub_1BE051234();
  }

  else
  {
    v38 = sub_1BE051224();
    sub_1BD68C19C(v4, type metadata accessor for AvailablePass);
  }

  v40 = v94;
  v39 = v95;
  v41 = sub_1BE050564();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v38, v42, v44, v46, v48, v49, v50, v51;
  sub_1BD0DDF10(v40, v16, (v18 & 1), v52, v53, v54, v55, v56);
  v39, v57, v58, v59, v60, v61, v62, v63;
  KeyPath = swift_getKeyPath();
  v97 = v41;
  v98 = v43;
  v65 = (v45 & 1);
  v99 = v65;
  v100 = v47;
  v101 = KeyPath;
  v102 = 1;
  v103 = 0;
  sub_1BE052434();
  v67 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
  sub_1BD1B9C50();
  sub_1BE050DE4();
  v67, v68, v69, v70, v71, v72, v73, v74;
  sub_1BD0DDF10(v41, v43, v65, v75, v76, v77, v78, v79);
  KeyPath, v80, v81, v82, v83, v84, v85, v86;
  v47, v87, v88, v89, v90, v91, v92, v93;
}

uint64_t sub_1BD68A214()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190, &qword_1BE0C5788);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = &v69 - v3;
  v4 = type metadata accessor for IdentityCredential(0);
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - v11;
  v13 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BD684594(sub_1BD4943B0);
  v27 = v26;
  v76 = v25;
  v79 = v25;
  v80 = v26;
  sub_1BD68C394(v0, v21, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68CEDC(v21, v8, type metadata accessor for UnavailablePass);
    sub_1BD68C394(v8, v24, type metadata accessor for WrappedPass);
    v28 = type metadata accessor for UnavailablePass;
    v29 = v8;
  }

  else
  {

    sub_1BD68CEDC(v21, v12, type metadata accessor for AvailablePass);
    sub_1BD68C394(v12, v24, type metadata accessor for WrappedPass);
    v28 = type metadata accessor for AvailablePass;
    v29 = v12;
  }

  sub_1BD68C19C(v29, v28);
  v30 = WrappedPass.secureElementPass.getter();
  sub_1BD68C19C(v24, type metadata accessor for WrappedPass);
  if (v30 && (v31 = [v30 isIdentityPass], v30, v31))
  {
    sub_1BD68C394(v1, v18, type metadata accessor for PassRow.Pass);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = type metadata accessor for PassRow.Pass;
      v33 = v18;
LABEL_10:
      sub_1BD68C19C(v33, v32);
      return v76;
    }

    v56 = v72;
    sub_1BD68CEDC(v18, v72, type metadata accessor for AvailablePass);
    v57 = v75;
    sub_1BD0DE19C(v56 + *(v71 + 24), v75, &qword_1EBD3F190, &qword_1BE0C5788);
    sub_1BD68C19C(v56, type metadata accessor for AvailablePass);
    v58 = v74;
    if ((*(v73 + 48))(v57, 1, v74) == 1)
    {
      sub_1BD0DE53C(v57, &qword_1EBD3F190, &qword_1BE0C5788);
      return v76;
    }

    else
    {
      v27, v59, v60, v61, v62, v63, v64, v65;
      v66 = v57;
      v67 = v70;
      sub_1BD68CEDC(v66, v70, type metadata accessor for IdentityCredential);
      v68 = *(v67 + *(v58 + 24));
      sub_1BE048C84();
      sub_1BD68C19C(v67, type metadata accessor for IdentityCredential);
      return v68;
    }
  }

  else
  {
    sub_1BD68C394(v1, v15, type metadata accessor for PassRow.Pass);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = type metadata accessor for UnavailablePass;
      v33 = v15;
      goto LABEL_10;
    }

    v35 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0, &qword_1BE0DB0D0) + 48)];
    sub_1BD68C19C(v15, type metadata accessor for AvailablePass);
    result = v76;
    if (v35)
    {
      v36 = v76;
      v37 = [v35 displayName];

      result = v36;
      if (v37)
      {
        v38 = sub_1BE052434();
        v40 = v39;

        v77 = 10272;
        v78 = 0xE200000000000000;
        MEMORY[0x1BFB3F610](v38, v40);
        v40, v41, v42, v43, v44, v45, v46, v47;
        MEMORY[0x1BFB3F610](41, 0xE100000000000000);
        v48 = v78;
        MEMORY[0x1BFB3F610](v77, v78);
        v48, v49, v50, v51, v52, v53, v54, v55;
        return v79;
      }
    }
  }

  return result;
}

void *sub_1BD68A8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v291 = a4;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v284 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v284 - v12;
  if ((*(a1 + 8) & 1) == 0)
  {
    *&v336 = sub_1BD68B6BC(a1, a2, a3);
    *(&v336 + 1) = v155;
    sub_1BD0DDEBC();
    v156 = sub_1BE0506C4();
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v163 = sub_1BE0502E4();
    v164 = sub_1BE0505F4();
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v163, v165, v167, v169, v171, v172, v173, v174;
    sub_1BD0DDF10(v156, v158, (v160 & 1), v175, v176, v177, v178, v179);
    v162, v180, v181, v182, v183, v184, v185, v186;
    v187 = sub_1BE051234();
    v188 = sub_1BE050564();
    v190 = v189;
    LOBYTE(v162) = v191;
    v193 = v192;
    v187, v189, v191, v192, v194, v195, v196, v197;
    sub_1BD0DDF10(v164, v166, (v168 & 1), v198, v199, v200, v201, v202);
    v170, v203, v204, v205, v206, v207, v208, v209;
    KeyPath = swift_getKeyPath();
    v211 = swift_getKeyPath();
    LOBYTE(v162) = v162 & 1;
    LOBYTE(v336) = v162;
    LOBYTE(v322) = 0;
    v212 = swift_getKeyPath();
    *&v322 = v188;
    *(&v322 + 1) = v190;
    LOBYTE(v323) = v162;
    *(&v323 + 1) = v193;
    *&v324 = KeyPath;
    *(&v324 + 1) = 1;
    LOBYTE(v325) = 0;
    *(&v325 + 1) = v211;
    LOBYTE(v326) = 1;
    *(&v326 + 1) = v212;
    *&v327 = 0x3FE999999999999ALL;
    sub_1BD68CED4(&v322);
    v319 = v326;
    v320 = v327;
    v321[0] = v328[0];
    *(v321 + 10) = *(v328 + 10);
    v315 = v322;
    v316 = v323;
    v317 = v324;
    v318 = v325;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C8, &qword_1BE0D1AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F490, &qword_1BE0ED548);
    sub_1BD3B15F4();
    sub_1BD68C9A4();
    result = sub_1BE04F9A4();
LABEL_10:
    v280 = v341;
    v281 = v291;
    v291[4] = v340;
    v281[5] = v280;
    v281[6] = *v342;
    *(v281 + 106) = *&v342[10];
    v282 = v337;
    *v281 = v336;
    v281[1] = v282;
    v283 = v339;
    v281[2] = v338;
    v281[3] = v283;
    return result;
  }

  if (*(a1 + 9) == 1 && PKConnectedCardLowBalanceEnabled())
  {
    *&v336 = sub_1BD68B6BC(a1, a2, a3);
    *(&v336 + 1) = v14;
    v284[1] = sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = sub_1BE0502E4();
    v23 = sub_1BE0505F4();
    v286 = v24;
    v287 = v23;
    v26 = v25;
    v285 = v27;
    v22, v24, v25, v27, v28, v29, v30, v31;
    sub_1BD0DDF10(v15, v17, (v19 & 1), v32, v33, v34, v35, v36);
    v21, v37, v38, v39, v40, v41, v42, v43;
    v44 = sub_1BE051234();
    v46 = v286;
    v45 = v287;
    v47 = v285;
    v48 = sub_1BE050564();
    v289 = v49;
    v290 = v48;
    LOBYTE(v21) = v50;
    v288 = v51;
    v44, v49, v50, v51, v52, v53, v54, v55;
    sub_1BD0DDF10(v45, v46, (v26 & 1), v56, v57, v58, v59, v60);
    v47, v61, v62, v63, v64, v65, v66, v67;
    v68 = swift_getKeyPath();
    v69 = swift_getKeyPath();
    LOBYTE(v21) = v21 & 1;
    LOBYTE(v336) = v21;
    LOBYTE(v322) = 0;
    v70 = swift_getKeyPath();
    *&v309 = v290;
    *(&v309 + 1) = v289;
    LOBYTE(v310) = v21;
    *(&v310 + 1) = v288;
    *&v311 = v68;
    *(&v311 + 1) = 1;
    LOBYTE(v312) = 0;
    *(&v312 + 1) = v69;
    LOBYTE(v313) = 1;
    *(&v313 + 1) = v336;
    DWORD1(v313) = *(&v336 + 3);
    *(&v313 + 1) = v70;
    v314 = 0x3FE999999999999ALL;
    (*(v8 + 104))(v13, *MEMORY[0x1E69B8068], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v72 = result;
      v73 = sub_1BE04B6F4();
      v75 = v74;

      (*(v8 + 8))(v13, v7);
      *&v336 = v73;
      *(&v336 + 1) = v75;
      v76 = sub_1BE0506C4();
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v83 = sub_1BE0502E4();
      v84 = sub_1BE0505F4();
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v83, v85, v87, v89, v91, v92, v93, v94;
      sub_1BD0DDF10(v76, v78, (v80 & 1), v95, v96, v97, v98, v99);
      v82, v100, v101, v102, v103, v104, v105, v106;
      v107 = sub_1BE051264();
      v108 = sub_1BE050564();
      v110 = v109;
      LOBYTE(v83) = v111;
      v113 = v112;
      v107, v109, v111, v112, v114, v115, v116, v117;
      sub_1BD0DDF10(v84, v86, (v88 & 1), v118, v119, v120, v121, v122);
      v90, v123, v124, v125, v126, v127, v128, v129;
      v297 = v313;
      v293 = v309;
      v294 = v310;
      v299[0] = v309;
      v299[1] = v310;
      v295 = v311;
      v296 = v312;
      v299[3] = v312;
      v299[4] = v313;
      v299[2] = v311;
      v298 = v314;
      v300 = v314;
      v301 = v309;
      v302 = v310;
      v306 = v314;
      v304 = v312;
      v305 = v313;
      v303 = v311;
      v130 = (v83 & 1);
      v292 = v83 & 1;
      sub_1BD0DE19C(&v309, &v336, &qword_1EBD442C8, &qword_1BE0D1AA8);
      sub_1BD0D7F18(v108, v110, v83 & 1);
      sub_1BE048C84();
      sub_1BD0DE19C(v299, &v336, &qword_1EBD442C8, &qword_1BE0D1AA8);
      sub_1BD0D7F18(v108, v110, v83 & 1);
      sub_1BE048C84();
      sub_1BD0DDF10(v108, v110, v130, v131, v132, v133, v134, v135);
      v113, v136, v137, v138, v139, v140, v141, v142;
      v307[2] = v295;
      v307[3] = v296;
      v307[4] = v297;
      v308 = v298;
      v307[0] = v293;
      v307[1] = v294;
      sub_1BD0DE53C(v307, &qword_1EBD442C8, &qword_1BE0D1AA8);
      v338 = v303;
      v339 = v304;
      v340 = v305;
      v336 = v301;
      v337 = v302;
      *&v341 = v306;
      *(&v341 + 1) = v108;
      *v342 = v110;
      v342[8] = v83 & 1;
      *&v342[16] = v113;
      sub_1BD55AC90(&v336);
      v319 = v340;
      v320 = v341;
      v321[0] = *v342;
      *(v321 + 9) = *&v342[9];
      v315 = v336;
      v316 = v337;
      v317 = v338;
      v318 = v339;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4A0, &qword_1BE0ED550);
      sub_1BD0DE4F4(&qword_1EBD4F498, &qword_1EBD4F4A0, &qword_1BE0ED550, MEMORY[0x1E6981F48]);
      sub_1BE04F9A4();
      sub_1BD0DDF10(v108, v110, v130, v143, v144, v145, v146, v147);
      v113, v148, v149, v150, v151, v152, v153, v154;
      sub_1BD0DE53C(&v309, &qword_1EBD442C8, &qword_1BE0D1AA8);
      v333 = v326;
      v334 = v327;
      v335[0] = v328[0];
      *(v335 + 9) = *(v328 + 9);
      v329 = v322;
      v330 = v323;
      v331 = v324;
      v332 = v325;
LABEL_9:
      v326 = v333;
      v327 = v334;
      v328[0] = v335[0];
      *(v328 + 9) = *(v335 + 9);
      v322 = v329;
      v323 = v330;
      v324 = v331;
      v325 = v332;
      sub_1BD68CEC8(&v322);
      v319 = v326;
      v320 = v327;
      v321[0] = v328[0];
      *(v321 + 10) = *(v328 + 10);
      v315 = v322;
      v316 = v323;
      v317 = v324;
      v318 = v325;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C8, &qword_1BE0D1AA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F490, &qword_1BE0ED548);
      sub_1BD3B15F4();
      sub_1BD68C9A4();
      result = sub_1BE04F9A4();
      goto LABEL_10;
    }
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B8050], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v213 = result;
      sub_1BE04B6F4();
      v215 = v214;

      (*(v8 + 8))(v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v216 = swift_allocObject();
      *(v216 + 16) = xmmword_1BE0B69E0;
      *(v216 + 56) = MEMORY[0x1E69E6158];
      *(v216 + 64) = sub_1BD110550();
      *(v216 + 32) = a2;
      *(v216 + 40) = a3;
      sub_1BE048C84();
      v217 = sub_1BE052454();
      v219 = v218;
      v215, v218, v220, v221, v222, v223, v224, v225;
      *&v336 = v217;
      *(&v336 + 1) = v219;
      sub_1BD0DDEBC();
      v226 = sub_1BE0506C4();
      v228 = v227;
      v230 = v229;
      v232 = v231;
      v233 = sub_1BE0502E4();
      v234 = sub_1BE0505F4();
      v236 = v235;
      v238 = v237;
      v240 = v239;
      v233, v235, v237, v239, v241, v242, v243, v244;
      sub_1BD0DDF10(v226, v228, (v230 & 1), v245, v246, v247, v248, v249);
      v232, v250, v251, v252, v253, v254, v255, v256;
      v257 = sub_1BE051264();
      v258 = sub_1BE050564();
      v260 = v259;
      LOBYTE(v232) = v261;
      v263 = v262;
      v257, v259, v261, v262, v264, v265, v266, v267;
      sub_1BD0DDF10(v234, v236, (v238 & 1), v268, v269, v270, v271, v272);
      v240, v273, v274, v275, v276, v277, v278, v279;
      *&v336 = v258;
      *(&v336 + 1) = v260;
      LOBYTE(v337) = v232 & 1;
      *(&v337 + 1) = v263;
      sub_1BD55AC84(&v336);
      v326 = v340;
      v327 = v341;
      v328[0] = *v342;
      *(v328 + 9) = *&v342[9];
      v322 = v336;
      v323 = v337;
      v324 = v338;
      v325 = v339;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4A0, &qword_1BE0ED550);
      sub_1BD0DE4F4(&qword_1EBD4F498, &qword_1EBD4F4A0, &qword_1BE0ED550, MEMORY[0x1E6981F48]);
      sub_1BE04F9A4();
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD68B458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940, &unk_1BE0CDD90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for PassEligibleRewardsInfo(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for AvailablePass(0);
  sub_1BD0DE19C(a1 + *(v14 + 40), v6, &unk_1EBD4C940, &unk_1BE0CDD90);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BD0DE53C(v6, &unk_1EBD4C940, &unk_1BE0CDD90);
  }

  else
  {
    sub_1BD68CEDC(v6, v13, type metadata accessor for PassEligibleRewardsInfo);
    if (sub_1BD57A1B8())
    {
      sub_1BD68C394(v13, v10, type metadata accessor for PassEligibleRewardsInfo);
      sub_1BD38BA78(v10, a2);
      return sub_1BD68C19C(v13, type metadata accessor for PassEligibleRewardsInfo);
    }

    sub_1BD68C19C(v13, type metadata accessor for PassEligibleRewardsInfo);
  }

  v16 = type metadata accessor for AppleCardRewardsInfoView(0);
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

uint64_t sub_1BD68B6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04BD74();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v34 - v10;
  v12 = sub_1BE04AF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BalanceInfo(0);
  sub_1BD0DE19C(a1 + *(v16 + 28), v11, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BE048C84();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v34[1] = "INSUFFICIENT_BALANCE_FMT";
    v17 = v35;
    (*(v35 + 104))(v8, *MEMORY[0x1E69B8040], v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0B6CA0;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1BD110550();
    *(v18 + 64) = v19;
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    v20 = objc_allocWithZone(type metadata accessor for BankConnectFormatter(0));
    sub_1BE048C84();
    v21 = [v20 init];
    BankConnectFormatter.formatAsOfDate(_:hasMultipleBalances:)(v15, 0);
    v23 = v22;
    v25 = v24;

    *(v18 + 96) = MEMORY[0x1E69E6158];
    *(v18 + 104) = v19;
    *(v18 + 72) = v23;
    *(v18 + 80) = v25;
    a2 = sub_1BE04B714();
    v18, v26, v27, v28, v29, v30, v31, v32;
    (*(v17 + 8))(v8, v36);
    (*(v13 + 8))(v15, v12);
  }

  return a2;
}

id sub_1BD68BA18(unint64_t a1, uint64_t a2, unsigned __int8 a3, int a4)
{
  v101 = a4;
  v7 = sub_1BE04BD74();
  v102 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v100[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v100[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v100[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v100[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v100[-v23];
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v29 = &v100[-v26];
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v33 = v27;
      v34 = [a1 deviceName];
      if (v34)
      {
        v35 = v34;
        v36 = sub_1BE052434();
        v38 = v37;

        v46 = HIBYTE(v38) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v46 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (v46)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1BE0B69E0;
          *(v47 + 56) = MEMORY[0x1E69E6158];
          *(v47 + 64) = sub_1BD110550();
          *(v47 + 32) = v36;
          *(v47 + 40) = v38;
          v48 = v102;
          (*(v102 + 104))(v15, *MEMORY[0x1E69B8068], v33);
          v49 = sub_1BE04B714();
          v47, v50, v51, v52, v53, v54, v55, v56;
          (*(v48 + 8))(v15, v33);
          return v49;
        }

        v38, v39, v40, v41, v42, v43, v44, v45;
      }

      v84 = v102;
      (*(v102 + 104))(v9, *MEMORY[0x1E69B8068], v33);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v85 = result;
      v49 = sub_1BE04B6F4();

      (*(v84 + 8))(v9, v33);
    }

    else
    {
      if (a1 > 2)
      {
        if (!(a1 ^ 3 | a2))
        {
          v89 = v102;
          v90 = v27;
          (*(v102 + 104))(v18, *MEMORY[0x1E69B8068], v27, v28.n128_f64[0]);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v91 = result;
          if (v101)
          {
            v92 = "REASON_PASS_NOT_SUPPORTED";
          }

          else
          {
            v92 = "ABEL_NOT_SUPPORTED";
          }

          v49 = sub_1BE04B6F4();
          (v92 | 0x8000000000000000), v93, v94, v95, v96, v97, v98, v99;

          (*(v89 + 8))(v18, v90);
          return v49;
        }

        if (!(a1 ^ 4 | a2))
        {
          v70 = v102;
          v71 = v27;
          (*(v102 + 104))(v12, *MEMORY[0x1E69B8068], v27, v28.n128_f64[0]);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_45:
            __break(1u);
            return result;
          }

          v72 = result;
          if (v101)
          {
            v73 = "REASON_NETWORK_NOT_SUPPORTED";
          }

          else
          {
            v73 = "ELIGIBLE_AMOUNT_RANGE";
          }

          v49 = sub_1BE04B6F4();
          (v73 | 0x8000000000000000), v74, v75, v76, v77, v78, v79, v80;

          (*(v70 + 8))(v12, v71);
          return v49;
        }
      }

      else
      {
        if (!(a1 | a2))
        {
          v86 = v102;
          v87 = v27;
          (*(v102 + 104))(&v100[-v26], *MEMORY[0x1E69B8050], v27, v28.n128_f64[0]);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v88 = result;
          v49 = sub_1BE04B6F4();

          (*(v86 + 8))(v29, v87);
          return v49;
        }

        if (!(a1 ^ 1 | a2))
        {
          v67 = v102;
          v68 = v27;
          (*(v102 + 104))(v24, *MEMORY[0x1E69B8050], v27, v28.n128_f64[0]);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v69 = result;
          v49 = sub_1BE04B6F4();

          (*(v67 + 8))(v24, v68);
          return v49;
        }
      }

      v81 = v102;
      v82 = v27;
      (*(v102 + 104))(v21, *MEMORY[0x1E69B8050], v27, v28);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v83 = result;
      v49 = sub_1BE04B6F4();

      (*(v81 + 8))(v21, v82);
    }
  }

  else
  {
    if (!a3)
    {
      result = PKDisplayableStringForPaymentApplicationState();
      if (result)
      {
        v31 = result;
        v32 = sub_1BE052434();

        return v32;
      }

      __break(1u);
      goto LABEL_40;
    }

    v57 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1BE0B69E0;
    *(v58 + 56) = MEMORY[0x1E69E6158];
    *(v58 + 64) = sub_1BD110550();
    *(v58 + 32) = a1;
    *(v58 + 40) = a2;
    v59 = v102;
    (*(v102 + 104))(v15, *MEMORY[0x1E69B8068], v57);
    sub_1BE048C84();
    v49 = sub_1BE04B714();
    v58, v60, v61, v62, v63, v64, v65, v66;
    (*(v59 + 8))(v15, v57);
  }

  return v49;
}

uint64_t sub_1BD68C19C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD68C1FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD68CB18(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD68C2B0()
{
  result = qword_1EBD4F398;
  if (!qword_1EBD4F398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F350, &qword_1BE0ED428);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F398);
  }

  return result;
}

uint64_t sub_1BD68C394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD68C3FC()
{
  result = qword_1EBD4F3D0;
  if (!qword_1EBD4F3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F3B8, &qword_1BE0ED4E0);
    sub_1BD68C684(&qword_1EBD4F3D8, &qword_1EBD4F3E0, &qword_1BE0ED4F8, sub_1BD68C4B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F3D0);
  }

  return result;
}

unint64_t sub_1BD68C4B4()
{
  result = qword_1EBD4F3E8;
  if (!qword_1EBD4F3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F3F0, &qword_1BE0ED500);
    sub_1BD68C540();
    sub_1BD68CCD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F3E8);
  }

  return result;
}

unint64_t sub_1BD68C540()
{
  result = qword_1EBD4F3F8;
  if (!qword_1EBD4F3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F400, &qword_1BE0ED508);
    sub_1BD68C5CC();
    sub_1BD68CB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F3F8);
  }

  return result;
}

unint64_t sub_1BD68C5CC()
{
  result = qword_1EBD4F408;
  if (!qword_1EBD4F408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F410, &qword_1BE0ED510);
    sub_1BD68C684(&qword_1EBD4F418, &qword_1EBD4F420, &qword_1BE0ED518, sub_1BD68C700);
    sub_1BD68CA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F408);
  }

  return result;
}

uint64_t sub_1BD68C684(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD68C700()
{
  result = qword_1EBD4F428;
  if (!qword_1EBD4F428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F430, &qword_1BE0ED520);
    sub_1BD68C78C();
    sub_1BD68C918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F428);
  }

  return result;
}

unint64_t sub_1BD68C78C()
{
  result = qword_1EBD4F438;
  if (!qword_1EBD4F438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F440, &qword_1BE0ED528);
    sub_1BD68C684(&qword_1EBD4F448, &qword_1EBD4F450, &qword_1BE0ED530, sub_1BD68C870);
    sub_1BD68C684(&qword_1EBD4F460, &qword_1EBD4F468, &qword_1BE0ED538, sub_1BD68C8C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F438);
  }

  return result;
}

unint64_t sub_1BD68C870()
{
  result = qword_1EBD4F458;
  if (!qword_1EBD4F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F458);
  }

  return result;
}

unint64_t sub_1BD68C8C4()
{
  result = qword_1EBD4F470;
  if (!qword_1EBD4F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F470);
  }

  return result;
}

unint64_t sub_1BD68C918()
{
  result = qword_1EBD4F478;
  if (!qword_1EBD4F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F480, &qword_1BE0ED540);
    sub_1BD3B15F4();
    sub_1BD68C9A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F478);
  }

  return result;
}

unint64_t sub_1BD68C9A4()
{
  result = qword_1EBD4F488;
  if (!qword_1EBD4F488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F490, &qword_1BE0ED548);
    sub_1BD0DE4F4(&qword_1EBD4F498, &qword_1EBD4F4A0, &qword_1BE0ED550, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F488);
  }

  return result;
}

unint64_t sub_1BD68CA5C()
{
  result = qword_1EBD4F4A8;
  if (!qword_1EBD4F4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F4B0, &qword_1BE0ED558);
    sub_1BD68CB18(&qword_1EBD4B108, type metadata accessor for AppleCardRewardsInfoView, &unk_1BE0D02BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F4A8);
  }

  return result;
}

uint64_t sub_1BD68CB18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD68CB60()
{
  result = qword_1EBD4F4B8;
  if (!qword_1EBD4F4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F4C0, &qword_1BE0ED560);
    sub_1BD68CF90(&qword_1EBD4F4C8, &qword_1EBD4F4D0, &qword_1BE0ED568, sub_1BD68CC18);
    sub_1BD68C918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F4B8);
  }

  return result;
}

unint64_t sub_1BD68CC18()
{
  result = qword_1EBD4F4D8;
  if (!qword_1EBD4F4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F4E0, &qword_1BE0ED570);
    sub_1BD68C684(&qword_1EBD43A18, &qword_1EBD43A20, &qword_1BE0D0318, sub_1BD38C118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F4D8);
  }

  return result;
}

unint64_t sub_1BD68CCD0()
{
  result = qword_1EBD4F4E8;
  if (!qword_1EBD4F4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F4E8);
  }

  return result;
}

double sub_1BD68CD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1BE048C84();

    sub_1BE048C84();
  }

  return result;
}

double sub_1BD68CDA0(uint64_t a1)
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
  *(a1 + 122) = -1;
  *(a1 + 120) = 0;
  return result;
}

double sub_1BD68CDC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;

    sub_1BE048C84();
  }

  return result;
}

void sub_1BD68CE08(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {

    a4, v5, v6, v7, v8, v9, v10, v11;
  }
}

double sub_1BD68CE48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a1;

    sub_1BE048C84();
  }

  return result;
}

void sub_1BD68CE88(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {

    a4, v5, v6, v7, v8, v9, v10, v11;
  }
}

uint64_t sub_1BD68CEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD68CF44(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BD68CF90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD68D014()
{
  result = qword_1EBD4F568;
  if (!qword_1EBD4F568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F310, &qword_1BE0ED3C0);
    sub_1BD68D0CC();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F568);
  }

  return result;
}

unint64_t sub_1BD68D0CC()
{
  result = qword_1EBD4F570;
  if (!qword_1EBD4F570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F308, &qword_1BE0ED3B8);
    sub_1BD68D184();
    sub_1BD0DE4F4(&qword_1EBD4F590, &qword_1EBD4F598, &unk_1BE0ED670, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F570);
  }

  return result;
}

unint64_t sub_1BD68D184()
{
  result = qword_1EBD4F578;
  if (!qword_1EBD4F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F328, &qword_1BE0ED3D0);
    sub_1BD68D23C();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F578);
  }

  return result;
}

unint64_t sub_1BD68D23C()
{
  result = qword_1EBD4F580;
  if (!qword_1EBD4F580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F588, &qword_1BE0ED668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F2F8, &qword_1BE0ED3A8);
    sub_1BD0DE4F4(&qword_1EBD4F320, &qword_1EBD4F2F8, &qword_1BE0ED3A8, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD68CB18(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F580);
  }

  return result;
}

void sub_1BD68D44C(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04B944();
  v95 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v89 - v9;
  v10 = sub_1BE04BDB4();
  v109 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v89 - v13;
  v14 = sub_1BE04BDF4();
  v106 = *(v14 - 8);
  v107 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v89 - v17;
  v19 = sub_1BE04BAC4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_context];
  sub_1BE04BC34();
  v23 = sub_1BE04BA54();
  (*(v20 + 8))(v22, v19);
  if (v23)
  {
    a1(0xD00000000000001BLL, 0x80000001BE134050, 0, 1);
    return;
  }

  v90 = v6;
  v91 = a1;
  v92 = a2;
  v89 = v3;
  v31 = *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_requirements];
  v104 = *(v31 + 16);
  if (!v104)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_16:
    if (v33[2] && (v47 = sub_1BD68DC7C(v33), v24 != 2))
    {
      v51 = v24;
      v52 = v47;
      v53 = v94;
      sub_1BE04BB94();
      v54 = sub_1BE04B934();
      v55 = *(v95 + 8);
      v56 = v90;
      v55(v53, v90);
      if ([v54 respondsToSelector_])
      {
        v57 = [v54 supportsCheckingProvisioningRequirements];
        swift_unknownObjectRelease();
        if (v57)
        {
          sub_1BD0E5E8C(0, &unk_1EBD444B0, 0x1E69B90F0);
          v65 = sub_1BE052F24();
          v66 = v93;
          sub_1BE04BB94();
          v67 = sub_1BE04B934();
          v55(v66, v56);
          if ([v67 respondsToSelector_])
          {
            v68 = swift_allocObject();
            v69 = v92;
            *(v68 + 16) = v91;
            *(v68 + 24) = v69;
            v70 = v89;
            *(v68 + 32) = v89;
            *(v68 + 40) = v52;
            *(v68 + 48) = v51 & 1;
            aBlock[4] = sub_1BD68F340;
            v113 = v68;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD3B6174;
            aBlock[3] = &block_descriptor_28_3;
            v71 = _Block_copy(aBlock);
            v72 = v113;
            v73 = v65;
            sub_1BE048964();
            v74 = v70;
            sub_1BE048964();
            v72, v75, v76, v77, v78, v79, v80, v81;
            [v67 meetsProvisioningRequirements:v73 completion:v71];
            _Block_release(v71);
            v68, v82, v83, v84, v85, v86, v87, v88;
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          return;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v33, v58, v59, v60, v61, v62, v63, v64;
      v49 = 0;
      v48 = 0;
      v50 = 0;
    }

    else
    {
      v33, v24, v25, v26, v27, v28, v29, v30;
      v48 = 0x80000001BE134030;
      v49 = 0xD000000000000014;
      v50 = 1;
    }

    v91(v49, v48, 0, v50);
    return;
  }

  v32 = 0;
  v102 = v106 + 16;
  v110 = (v109 + 11);
  v101 = *MEMORY[0x1E69B8128];
  v98 = *MEMORY[0x1E69B8118];
  v97 = (v106 + 8);
  v108 = (v106 + 32);
  ++v109;
  v33 = MEMORY[0x1E69E7CC0];
  v100 = v10;
  v34 = v107;
  v103 = v31;
  while (v32 < *(v31 + 16))
  {
    v35 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v36 = *(v106 + 72);
    (*(v106 + 16))(v18, v31 + v35 + v36 * v32, v34);
    v37 = v105;
    sub_1BE04BDE4();
    v38 = *v110;
    v39 = (*v110)(v37, v10);
    v40 = *v109;
    (*v109)(v37, v10);
    if (v39 == v101 || (v41 = v99, sub_1BE04BDE4(), v42 = v38(v41, v10), v40(v41, v10), v42 == v98))
    {
      v34 = v107;
      v43 = *v108;
      (*v108)(v111, v18, v107);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD531998(0, v33[2] + 1, 1);
        v33 = aBlock[0];
      }

      v46 = v33[2];
      v45 = v33[3];
      if (v46 >= v45 >> 1)
      {
        sub_1BD531998((v45 > 1), v46 + 1, 1);
        v33 = aBlock[0];
      }

      v33[2] = v46 + 1;
      v43(v33 + v35 + v46 * v36, v111, v34);
      v10 = v100;
    }

    else
    {
      v34 = v107;
      (*v97)(v18, v107);
    }

    ++v32;
    v31 = v103;
    if (v104 == v32)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1BD68DC7C(uint64_t a1)
{
  v28 = sub_1BE04BDB4();
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BDF4();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v14 = *(v6 + 16);
    v13 = v6 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v26 = *(v13 + 56);
    v27 = v14;
    v16 = (v2 + 88);
    v25 = *MEMORY[0x1E69B8120];
    v24 = *MEMORY[0x1E69B8128];
    v23 = *MEMORY[0x1E69B8118];
    v22 = *MEMORY[0x1E69B8130];
    v17 = (v13 - 8);
    v21 = (v2 + 8);
    while (1)
    {
      v18 = v13;
      v27(v9, v15, v5, v7);
      sub_1BE04BDE4();
      v19 = (*v16)(v4, v28);
      if (v19 == v25)
      {
        v12 |= 4uLL;
        if (v11)
        {
          goto LABEL_16;
        }
      }

      else if (v19 == v24)
      {
        v12 |= 0x98uLL;
        if (v11)
        {
          goto LABEL_16;
        }
      }

      else if (v19 == v23)
      {
        v12 |= 0x20uLL;
        if (v11)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v19 != v22)
        {
          (*v17)(v9, v5);
          (*v21)(v4, v28);
          goto LABEL_4;
        }

        v12 |= 0x40uLL;
        if (v11)
        {
LABEL_16:
          (*v17)(v9, v5);
          v11 = 1;
          goto LABEL_4;
        }
      }

      v11 = sub_1BE04BDD4();
      (*v17)(v9, v5);
LABEL_4:
      v15 += v26;
      --v10;
      v13 = v18;
      if (!v10)
      {
        return v12;
      }
    }
  }

  return 0;
}

uint64_t sub_1BD68DF8C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v33 = a7;
  v31 = a3;
  v32 = a6;
  v10 = sub_1BE051F54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BE051FA4();
  v14 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v17 = sub_1BE052D54();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = v32;
  *(v18 + 24) = v31;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = v19;
  *(v18 + 56) = v33;
  aBlock[4] = sub_1BD68F350;
  v36 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_34_0;
  v20 = _Block_copy(aBlock);
  v21 = v36;
  sub_1BE048964();
  v22 = a5;
  v21, v23, v24, v25, v26, v27, v28, v29;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v16, v13, v20);
  _Block_release(v20);

  (*(v11 + 8))(v13, v10);
  return (*(v14 + 8))(v16, v34);
}

uint64_t sub_1BD68E24C(char a1, uint64_t (*a2)(unint64_t, unint64_t, void, uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE04BAC4();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = 0x80000001BE134070;
    v15 = 0xD000000000000017;
    v16 = 1;
  }

  else
  {
    if (*(a4 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature + 8))
    {
      v17 = 0;
    }

    else
    {
      v17 = *(a4 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature);
    }

    sub_1BE04BC34();
    v18 = sub_1BE04B9A4();
    (*(v10 + 8))(v13, v9);
    v19 = [objc_allocWithZone(PKSecurityCapabilitiesController) initWithRequirements:a5 feature:v17 context:v18];
    v20 = *(a4 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_securityController);
    *(a4 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_securityController) = v19;

    v15 = 0;
    v14 = 0;
    v16 = 0;
  }

  return a2(v15, v14, 0, v16, v11);
}

uint64_t sub_1BD68E3E8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 32))(v0, &off_1F3BB44C8, ObjectType, v3);
    v7 = v6;
    swift_unknownObjectRelease();
    if (v5)
    {
      v8 = swift_getObjectType();
      v9 = (*(v7 + 56))(v8, v7);
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_securityController);
        if (v10)
        {
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v24[4] = sub_1BD68F288;
          v25 = v11;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 1107296256;
          v24[2] = sub_1BD68F010;
          v24[3] = &block_descriptor_152;
          v12 = _Block_copy(v24);
          v13 = v25;
          v14 = v10;
          v15 = v9;
          v13, v16, v17, v18, v19, v20, v21, v22;
          [v14 presentSecurityRepairFlowWithPresentingViewController:v15 suppressHSA2Alert:1 completion:v12];
          _Block_release(v12);

          return 1;
        }
      }
    }
  }

  return 2;
}

uint64_t sub_1BD68E5A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE051FA4();
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1BD68F290;
  v29 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_10_3;
  v16 = _Block_copy(aBlock);
  v17 = v29;
  v18 = a2;
  v17, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v16);
  _Block_release(v16);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v27);
}

void sub_1BD68E88C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [*(Strong + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_reporter) reportViewAppeared];
    if (a2 != 3)
    {
      if (!a2)
      {
        v9 = 0u;
        v10 = 0u;
        v7 = -1;
LABEL_8:
        v11 = v7;
        sub_1BD68E968(&v9);

        sub_1BD12FF7C(&v9);
        return;
      }

      if (a3)
      {
        v8 = a3;
        sub_1BD68EA40(a3, a2);

        return;
      }
    }

    v9 = 0u;
    v10 = 0u;
    v7 = 2;
    goto LABEL_8;
  }
}

uint64_t sub_1BD68E968(uint64_t a1)
{
  sub_1BD39F6D4(a1, v9);
  if (v10)
  {
    if (v10 == 255)
    {
      sub_1BD12FF7C(v9);
    }

    else
    {
      sub_1BD39F670(v9);
    }

    v3 = 0;
  }

  else
  {
    sub_1BD39F670(v9);
    v3 = 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_reporter);
  if (v4)
  {
    [v4 reportPageCompleted:v3 context:0];
  }

  v5 = v1 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865A00(v1, &off_1F3BB44C8, a1, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD68EA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v83 - v9;
  v11 = *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_reporter];
  if (v11)
  {
    v12 = sub_1BE04A844();
    [v11 reportError:v12 context:0];
  }

  if (v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature + 8])
  {
    v13 = sub_1BE04A844();
    v14 = PKTitleForDisplayableError();

    if (v14)
    {
      v84 = sub_1BE052434();
      v16 = v15;
    }

    else
    {
      v84 = 0;
      v16 = 0;
    }

    v21 = sub_1BE04A844();
    v22 = MEMORY[0x1BFB42D10]();

    if (v22)
    {
      v83 = sub_1BE052434();
      v24 = v23;

      goto LABEL_15;
    }
  }

  else
  {
    v17 = *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature];
    v18 = objc_opt_self();
    v19 = sub_1BE04A844();
    v4 = [v18 displayableErrorForError:v19 featureIdentifier:v17 genericErrorTitle:0 genericErrorMessage:0];

    if (v4)
    {
      v20 = v4;
      v10 = sub_1BE04A844();
    }

    else
    {
      v10 = 0;
    }

    v25 = swift_allocObject();
    v25[2] = v2;
    v89 = sub_1BD68F2F8;
    v90 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = sub_1BD126964;
    v88 = &block_descriptor_22_4;
    v16 = _Block_copy(&aBlock);
    v26 = v90;
    v27 = v2;
    v26, v28, v29, v30, v31, v32, v33, v34;
    v7 = PKAlertForDisplayableErrorWithCancelHandler(v10, 0, v16);
    _Block_release(v16);

    if (v7)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v83 = 0;
  v24 = 0;
LABEL_15:
  v35 = *MEMORY[0x1E69B80D8];
  v36 = *(v5 + 104);
  if (v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_isRequirementOptional] != 1 || a2 == 4)
  {
    v36(v7, v35, v4);
    v38 = PKPassKitBundle();
    if (v38)
    {
      v39 = v38;
      sub_1BE04B6F4();
      v41 = v40;
      v10 = v7;
      goto LABEL_24;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v36(v10, v35, v4);
  v42 = PKPassKitBundle();
  if (!v42)
  {
    goto LABEL_35;
  }

  v39 = v42;
  sub_1BE04B6F4();
  v41 = v43;
LABEL_24:

  (*(v5 + 8))(v10, v4);
  if (!v16)
  {
    v44 = 0;
    if (v24)
    {
      goto LABEL_26;
    }

LABEL_28:
    v52 = 0;
    goto LABEL_29;
  }

  v44 = sub_1BE052404();
  v16, v45, v46, v47, v48, v49, v50, v51;
  if (!v24)
  {
    goto LABEL_28;
  }

LABEL_26:
  v52 = sub_1BE052404();
  v24, v53, v54, v55, v56, v57, v58, v59;
LABEL_29:
  v60 = [objc_opt_self() alertControllerWithTitle:v44 message:v52 preferredStyle:1];

  v4 = v60;
  PKApplyDefaultIconToAlertController();
  v61 = swift_allocObject();
  v61[2] = v2;
  v62 = v2;
  v63 = sub_1BE052404();
  v41, v64, v65, v66, v67, v68, v69, v70;
  v89 = sub_1BD68F29C;
  v90 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = sub_1BD198918;
  v88 = &block_descriptor_16_5;
  v71 = _Block_copy(&aBlock);
  v90, v72, v73, v74, v75, v76, v77, v78;
  v79 = [objc_opt_self() actionWithTitle:v63 style:1 handler:v71];
  _Block_release(v71);

  [v4 addAction_];
  v7 = v4;
LABEL_30:

  v80 = &v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v81 = *(v80 + 1);
    ObjectType = swift_getObjectType();
    (*(v81 + 24))(v7, ObjectType, v81);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD68F010(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1BE048964();
  v14 = a3;
  v6(a2, a3);
  v5, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD68F088()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD68F0C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD68F128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_securityController] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_promptedUserToUpgrade] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_isRequirementOptional] = 1;
  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_identifier];
  *v11 = 0xD000000000000014;
  v11[1] = 0x80000001BE133FC0;
  v12 = OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_dismissalConfiguration;
  v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_dismissalConfiguration] = 2;
  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_context] = a1;
  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_requirements] = a2;
  v13 = &v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature];
  *v13 = a3;
  v13[8] = a4 & 1;
  v5[v12] = 1;
  sub_1BE052434();
  v15 = v14;
  sub_1BE048964();
  v16 = sub_1BE04BB74();
  v15, v17, v18, v19, v20, v21, v22, v23;
  *&v5[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_reporter] = v16;
  v25.receiver = v5;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_1BD68F29C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_isRequirementOptional))
  {
    v1 = -1;
  }

  else
  {
    v1 = 2;
  }

  memset(v3, 0, sizeof(v3));
  v4 = v1;
  sub_1BD68E968(v3);
  return sub_1BD12FF7C(v3);
}

uint64_t sub_1BD68F2F8()
{
  memset(v1, 0, sizeof(v1));
  v2 = 2;
  sub_1BD68E968(v1);
  return sub_1BD12FF7C(v1);
}

uint64_t sub_1BD68F38C(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t static LiveActivityTapIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A598];
  v3 = sub_1BE048EA4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static LiveActivityTapIntent.supportedModes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F5F0, &qword_1BE0ED6C0);
  sub_1BE048624();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  sub_1BE048614();
  sub_1BD68F5BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F600, &qword_1BE0ED6C8);
  sub_1BD0DE4F4(&qword_1EBD4F608, &qword_1EBD4F600, &qword_1BE0ED6C8, MEMORY[0x1E69E6328]);
  return sub_1BE053664();
}

unint64_t sub_1BD68F5BC()
{
  result = qword_1EBD4F5F8;
  if (!qword_1EBD4F5F8)
  {
    sub_1BE048624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F5F8);
  }

  return result;
}

uint64_t static LiveActivityTapIntent.requiredCapabilities.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F610, &unk_1BE0ED6D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B69E0;
  v1 = sub_1BE048AD4();
  v2 = MEMORY[0x1E695A260];
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  sub_1BE048AE4();
  return v0;
}

uint64_t LiveActivityTapIntent.init(passUniqueID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v24 = a3;
  v3 = sub_1BE048D74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F618, &unk_1BE0ED6E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_1BE04A884();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F620, &qword_1BE0ED6F0);
  sub_1BE04A864();
  (*(v17 + 56))(v15, 1, 1, v16);
  v18 = sub_1BE052344();
  v27 = 0;
  v28 = 0;
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_1BE048654();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v4 + 104))(v6, *MEMORY[0x1E695A500], v3);
  v20 = sub_1BE0488F4();
  v21 = v25;
  *v24 = v20;
  v27 = v21;
  v28 = v26;
  return sub_1BE048884();
}

uint64_t LiveActivityTapIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_1BE048D74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F618, &unk_1BE0ED6E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_1BE04A884();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F620, &qword_1BE0ED6F0);
  sub_1BE04A864();
  (*(v15 + 56))(v13, 1, 1, v14);
  v16 = sub_1BE052344();
  v21 = 0;
  v22 = 0;
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_1BE048654();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, *MEMORY[0x1E695A500], v1);
  *v20 = sub_1BE0488F4();
  v21 = 0;
  v22 = 0;
  return sub_1BE048884();
}

uint64_t LiveActivityTapIntent.perform()(uint64_t a1)
{
  v2[20] = a1;
  v3 = sub_1BE04D214();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[23] = v4;
  v2[24] = v5;
  sub_1BE0528A4();
  v2[25] = sub_1BE052894();
  v7 = sub_1BE052844();
  v2[26] = v7;
  v2[27] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD68FE64, v7, v6);
}

uint64_t sub_1BD68FE64()
{
  sub_1BE048874();
  v1 = v0[19];
  if (v1)
  {
    v2 = [objc_opt_self() sharedInstance];
    v0[28] = v2;
    if (v2)
    {
      v10 = v2;
      v11 = sub_1BE052404();
      v0[29] = v11;
      v1, v12, v13, v14, v15, v16, v17, v18;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_1BD690078;
      v19 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980, &unk_1BE0ED700);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1BD68F38C;
      v0[13] = &block_descriptor_153;
      v0[14] = v19;
      [v10 presentContactlessInterfaceForPassWithUniqueIdentifier:v11 fromSource:3 completion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v1, v3, v4, v5, v6, v7, v8, v9;
  }

  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_1BD690298;

  return sub_1BD0D7278();
}

uint64_t sub_1BD690078()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1BD690180, v2, v1);
}

uint64_t sub_1BD690180()
{
  v1 = *(v0 + 248);

  v9 = *(v0 + 224);
  if (v1 == 1)
  {
    *(v0 + 200), v2, v3, v4, v5, v6, v7, v8;
    sub_1BE048774();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {

    v12 = swift_task_alloc();
    *(v0 + 240) = v12;
    *v12 = v0;
    v12[1] = sub_1BD690298;

    return sub_1BD0D7278();
  }
}

uint64_t sub_1BD690298(char a1)
{
  v2 = *v1;
  *(*v1 + 249) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1BD6903C0, v4, v3);
}

uint64_t sub_1BD6903C0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 249);
  *(v8 + 200), a2, a3, a4, a5, a6, a7, a8;
  if ((v9 & 1) == 0)
  {
    sub_1BE04D074();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "Failed to open Wallet from live activity", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    v14 = *(v8 + 176);
    v13 = *(v8 + 184);
    v15 = *(v8 + 168);

    (*(v14 + 8))(v13, v15);
  }

  sub_1BE048774();

  v16 = *(v8 + 8);

  return v16();
}

uint64_t sub_1BD6904F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F5F0, &qword_1BE0ED6C0);
  sub_1BE048624();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  sub_1BE048614();
  sub_1BD68F5BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F600, &qword_1BE0ED6C8);
  sub_1BD0DE4F4(&qword_1EBD4F608, &qword_1EBD4F600, &qword_1BE0ED6C8, MEMORY[0x1E69E6328]);
  return sub_1BE053664();
}

uint64_t sub_1BD69063C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A598];
  v3 = sub_1BE048EA4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BD6906B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return LiveActivityTapIntent.perform()(a1);
}

uint64_t sub_1BD69074C(uint64_t a1)
{
  v2 = sub_1BD6908A4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD69078C()
{
  result = qword_1EBD4F628;
  if (!qword_1EBD4F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F628);
  }

  return result;
}

unint64_t sub_1BD6907E4()
{
  result = qword_1EBD4F630;
  if (!qword_1EBD4F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F630);
  }

  return result;
}

unint64_t sub_1BD6908A4()
{
  result = qword_1EBD4F638;
  if (!qword_1EBD4F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F638);
  }

  return result;
}

uint64_t sub_1BD690908()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for UnavailableIdentityMethodItem(0);
  sub_1BD0DE19C(v1 + *(v15 + 20), v8, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v16 = type metadata accessor for UnavailablePass(0);
  if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD3C3F8, &qword_1BE0DB080);
    return 0;
  }

  else
  {
    sub_1BD691E00(v8, v11, type metadata accessor for WrappedPass);
    sub_1BD692040(v8, type metadata accessor for UnavailablePass);
    sub_1BD6920A0(v11, v14, type metadata accessor for WrappedPass);
    v17 = sub_1BD4943B0();
    v19 = v18;
    v20 = *(v1 + *(v15 + 24));
    if (v20)
    {
      v21 = [v20 displayName];
      if (v21)
      {
        v22 = v21;
        v38 = sub_1BE052434();
        v24 = v23;

        (*(v3 + 104))(v5, *MEMORY[0x1E69B8068], v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1BE0B6CA0;
        v26 = MEMORY[0x1E69E6158];
        *(v25 + 56) = MEMORY[0x1E69E6158];
        v27 = sub_1BD110550();
        *(v25 + 32) = v17;
        *(v25 + 40) = v19;
        *(v25 + 96) = v26;
        *(v25 + 104) = v27;
        v28 = v38;
        *(v25 + 64) = v27;
        *(v25 + 72) = v28;
        *(v25 + 80) = v24;
        v17 = sub_1BE04B714();
        v25, v29, v30, v31, v32, v33, v34, v35;
        (*(v3 + 8))(v5, v2);
      }
    }

    sub_1BD692040(v14, type metadata accessor for WrappedPass);
  }

  return v17;
}

uint64_t sub_1BD690CA8()
{
  sub_1BE053D04();
  sub_1BD690DD4();
  v1 = v0;
  sub_1BE052524();
  v1, v2, v3, v4, v5, v6, v7, v8;
  return sub_1BE053D64();
}

void sub_1BD690D04(uint64_t a1)
{
  sub_1BD690DD4();
  v2 = v1;
  sub_1BE052524();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD690D54(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BD690DD4();
  v2 = v1;
  sub_1BE052524();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1BE053D64();
}

uint64_t sub_1BD690DAC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BD690DD4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BD690DD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v45 - v6;
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_1BD0DE19C(v1, v45 - v6, &qword_1EBD520A0, &qword_1BE0B9840);
  v8 = type metadata accessor for AvailablePass(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1BD0DE53C(v7, &qword_1EBD520A0, &qword_1BE0B9840);
  }

  else
  {
    v9 = sub_1BD49C81C();
    v11 = v10;
    sub_1BD692040(v7, type metadata accessor for AvailablePass);
    MEMORY[0x1BFB3F610](v9, v11);
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = type metadata accessor for UnavailableIdentityMethodItem(0);
  sub_1BD0DE19C(v1 + *(v19 + 20), v4, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v20 = type metadata accessor for UnavailablePass(0);
  if ((*(*(v20 - 8) + 48))(v4, 1, v20) == 1)
  {
    sub_1BD0DE53C(v4, &qword_1EBD3C3F8, &qword_1BE0DB080);
  }

  else
  {
    v21 = sub_1BD495408();
    v23 = v22;
    sub_1BD692040(v4, type metadata accessor for UnavailablePass);
    MEMORY[0x1BFB3F610](v21, v23);
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  v31 = *(v1 + *(v19 + 24));
  if (v31)
  {
    v32 = [v31 applicationIdentifier];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1BE052434();
      v36 = v35;

      MEMORY[0x1BFB3F610](v34, v36);
      v36, v37, v38, v39, v40, v41, v42, v43;
    }
  }

  return v45[0];
}

uint64_t sub_1BD69108C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnavailablePass(0);
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = &v81 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E20, &qword_1BE0DB0B0);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v81 - v8;
  v9 = type metadata accessor for AvailablePass(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v81 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738, &qword_1BE0DA100);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v81 - v17;
  v20 = *(v19 + 56);
  v87 = a1;
  sub_1BD0DE19C(a1, &v81 - v17, &qword_1EBD520A0, &qword_1BE0B9840);
  v88 = a2;
  sub_1BD0DE19C(a2, &v18[v20], &qword_1EBD520A0, &qword_1BE0B9840);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_1BD0DE53C(v18, &qword_1EBD520A0, &qword_1BE0B9840);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &qword_1EBD39738;
    v23 = &qword_1BE0DA100;
    v24 = v18;
LABEL_15:
    sub_1BD0DE53C(v24, v22, v23);
    goto LABEL_16;
  }

  sub_1BD0DE19C(v18, v15, &qword_1EBD520A0, &qword_1BE0B9840);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    sub_1BD692040(v15, type metadata accessor for AvailablePass);
    goto LABEL_6;
  }

  sub_1BD6920A0(&v18[v20], v12, type metadata accessor for AvailablePass);
  v25 = sub_1BD495008(v15, v12);
  sub_1BD692040(v12, type metadata accessor for AvailablePass);
  sub_1BD692040(v15, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v18, &qword_1EBD520A0, &qword_1BE0B9840);
  if ((v25 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v26 = type metadata accessor for UnavailableIdentityMethodItem(0);
  v27 = *(v26 + 20);
  v28 = *(v83 + 48);
  v30 = v86;
  v29 = v87;
  sub_1BD0DE19C(v87 + v27, v86, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v31 = v88 + v27;
  v32 = v88;
  sub_1BD0DE19C(v31, v30 + v28, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v33 = v85;
  v34 = *(v84 + 48);
  if (v34(v30, 1, v85) != 1)
  {
    v35 = v82;
    sub_1BD0DE19C(v30, v82, &qword_1EBD3C3F8, &qword_1BE0DB080);
    if (v34(v30 + v28, 1, v33) == 1)
    {
      sub_1BD692040(v35, type metadata accessor for UnavailablePass);
      goto LABEL_13;
    }

    v38 = v30 + v28;
    v39 = v81;
    sub_1BD6920A0(v38, v81, type metadata accessor for UnavailablePass);
    v40 = sub_1BD492F00();
    v42 = v41;
    v44 = sub_1BD492F00();
    v50 = v40;
    v51 = v43;
    if (v50 == v44 && v42 == v43)
    {
      v42, v43, v44, v45, v46, v47, v48, v49;
      v51, v52, v53, v54, v55, v56, v57, v58;
    }

    else
    {
      v59 = sub_1BE053B84();
      v42, v60, v61, v62, v63, v64, v65, v66;
      v51, v67, v68, v69, v70, v71, v72, v73;
      if ((v59 & 1) == 0)
      {
        sub_1BD692040(v39, type metadata accessor for UnavailablePass);
        sub_1BD692040(v35, type metadata accessor for UnavailablePass);
        v22 = &qword_1EBD3C3F8;
        v23 = &qword_1BE0DB080;
        goto LABEL_14;
      }
    }

    v74 = *(v33 + 28);
    v75 = sub_1BD498408(*(v35 + v74), *(v35 + v74 + 8), *(v35 + v74 + 16), *(v39 + v74), *(v39 + v74 + 8), *(v39 + v74 + 16));
    sub_1BD692040(v39, type metadata accessor for UnavailablePass);
    sub_1BD692040(v35, type metadata accessor for UnavailablePass);
    sub_1BD0DE53C(v30, &qword_1EBD3C3F8, &qword_1BE0DB080);
    if (v75)
    {
      goto LABEL_23;
    }

LABEL_16:
    v36 = 0;
    return v36 & 1;
  }

  if (v34(v30 + v28, 1, v33) != 1)
  {
LABEL_13:
    v22 = &qword_1EBD47E20;
    v23 = &qword_1BE0DB0B0;
LABEL_14:
    v24 = v30;
    goto LABEL_15;
  }

  sub_1BD0DE53C(v30, &qword_1EBD3C3F8, &qword_1BE0DB080);
LABEL_23:
  v76 = *(v26 + 24);
  v77 = *(v29 + v76);
  v78 = *(v32 + v76);
  v36 = (v77 | v78) == 0;
  if (v77 && v78)
  {
    sub_1BD131A80();
    v79 = v78;
    v80 = v77;
    v36 = sub_1BE053074();
  }

  return v36 & 1;
}

void *sub_1BD69175C(uint64_t a1, double a2)
{
  v3 = type metadata accessor for UnavailableIdentityMethodItem(0);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for UnavailablePass(0);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Passes(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v14, &unk_1EBD43B40, &qword_1BE0D42C0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BD0DE53C(v14, &unk_1EBD43B40, &qword_1BE0D42C0);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BD6920A0(v14, v18, type metadata accessor for Passes);
  v20 = *&v18[*(v15 + 36)];
  v21 = *(v20 + 16);
  v39 = v18;
  if (v21)
  {
    v22 = v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v41 = (v40 + 56);
    v47 = MEMORY[0x1E69E7CC0];
    v23 = *(v40 + 72);
    v40 = v23;
    while (1)
    {
      sub_1BD691E00(v22, v11, type metadata accessor for UnavailablePass);
      sub_1BD691E00(v11, v9, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v27 = v45;
          sub_1BD6920A0(v9, v45, type metadata accessor for PlaceholderPass);
          v26 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
          [v26 setCardType_];
          sub_1BD692040(v27, type metadata accessor for PlaceholderPass);
LABEL_13:
          if ([v26 isIdentityPass])
          {
            v28 = v7;
            v29 = v44;
            v30 = *(v44 + 20);
            v31 = v46;
            sub_1BD691E00(v11, &v46[v30], type metadata accessor for UnavailablePass);
            (*v41)(&v31[v30], 0, 1, v42);
            *&v31[*(v29 + 24)] = 0;
            v32 = type metadata accessor for AvailablePass(0);
            (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
            v33 = v47;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_1BD1D7CFC(0, v33[2] + 1, 1, v33);
            }

            v35 = v33[2];
            v34 = v33[3];
            v47 = v33;
            if (v35 >= v34 >> 1)
            {
              v47 = sub_1BD1D7CFC((v34 > 1), v35 + 1, 1, v47);
            }

            sub_1BD692040(v11, type metadata accessor for UnavailablePass);
            v36 = v46;
            v37 = v47;
            v47[2] = v35 + 1;
            sub_1BD6920A0(v36, v37 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35, type metadata accessor for UnavailableIdentityMethodItem);
            v7 = v28;
            v23 = v40;
          }

          else
          {
            sub_1BD692040(v11, type metadata accessor for UnavailablePass);
          }

          goto LABEL_6;
        }

        sub_1BD692040(v9, type metadata accessor for WrappedPass);
      }

      else
      {
        v25 = *v9;
        v26 = [*v9 secureElementPass];

        if (v26)
        {
          goto LABEL_13;
        }
      }

      sub_1BD692040(v11, type metadata accessor for UnavailablePass);
LABEL_6:
      v22 += v23;
      if (!--v21)
      {
        goto LABEL_20;
      }
    }
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_20:
  sub_1BD692040(v39, type metadata accessor for Passes);
  return v47;
}

uint64_t type metadata accessor for UnavailableIdentityMethodItem(uint64_t a1)
{
  result = qword_1EBD4F640;
  if (!qword_1EBD4F640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD691E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BD691E90(uint64_t a1)
{
  sub_1BD691F80(319, &qword_1EBD365F8, type metadata accessor for AvailablePass);
  if (v1 <= 0x3F)
  {
    sub_1BD691F80(319, &qword_1EBD4F650, type metadata accessor for UnavailablePass);
    if (v2 <= 0x3F)
    {
      sub_1BD691F80(319, &qword_1EBD392F0, sub_1BD131A80);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD691F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BD691FE8()
{
  result = qword_1EBD4F658;
  if (!qword_1EBD4F658)
  {
    type metadata accessor for UnavailableIdentityMethodItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F658);
  }

  return result;
}

uint64_t sub_1BD692040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD6920A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1BD692108()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v59);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  result = PKAccountTransferEligibilityToString();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE052434();
    v24 = v23;

    sub_1BE04D194();
    sub_1BE048C84();
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C54();
    v24, v27, v28, v29, v30, v31, v32, v33;
    if (os_log_type_enabled(v25, v26))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v59 = v35;
      *v34 = 136315138;
      v36 = sub_1BD123690(v22, v24, &v59);
      v24, v37, v38, v39, v40, v41, v42, v43;
      *(v34 + 4) = v36;
      _os_log_impl(&dword_1BD026000, v25, v26, "Transfer eligibility set to %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35, v44, v45, v46, v47, v48, v49, v50);
      MEMORY[0x1BFB45F20](v35, -1, -1);
      MEMORY[0x1BFB45F20](v34, -1, -1);
    }

    else
    {

      v24, v51, v52, v53, v54, v55, v56, v57;
    }

    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD692338()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD6923AC(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD69244C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0, &qword_1BE0CB0E0);
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v26 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F6A0, &qword_1BE0EDB18);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__eligibility;
  v32 = 0;
  type metadata accessor for PKAccountTransferEligibility(0);
  sub_1BE04D874();
  (*(v13 + 32))(v0 + v16, v15, v12);
  v17 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__error;
  v18 = type metadata accessor for FeatureError(0);
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_1BD23C2BC(v11, v8);
  sub_1BE04D874();
  sub_1BD23C32C(v11);
  (*(v4 + 32))(v0 + v17, v6, v27);
  v19 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__loadingTransferEligibility;
  v31 = 0;
  sub_1BE04D874();
  v20 = v29;
  v21 = *(v28 + 32);
  v21(v0 + v19, v3, v29);
  v22 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__loaded;
  v30 = 0;
  sub_1BE04D874();
  v21(v0 + v22, v3, v20);
  *(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_account) = 0;
  v23 = v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_transferType;
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_amount) = 0;
  v24 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_paymentWebService;
  *(v0 + v24) = [objc_opt_self() sharedService];
  return v0;
}

void sub_1BD692824()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(aBlock);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  if ((aBlock[0] & 1) == 0)
  {
    v26 = swift_getKeyPath();
    v27 = swift_getKeyPath();
    sub_1BE04D8B4(aBlock);
    v26, v28, v29, v30, v31, v32, v33, v34;
    v27, v35, v36, v37, v38, v39, v40, v41;
    if ((aBlock[0] & 1) == 0)
    {
      v42 = *(v1 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_account);
      if (v42)
      {
        if ((*(v1 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_transferType + 8) & 1) == 0)
        {
          v43 = *(v1 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_amount);
          if (v43)
          {
            v59 = *(v1 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_transferType);
            sub_1BD14BE3C();
            v44 = v42;
            v45 = v43;
            v60 = sub_1BE052D54();
            v46 = swift_allocObject();
            swift_weakInit();
            v47 = swift_allocObject();
            v47[2] = v46;
            v47[3] = v44;
            v47[4] = v59;
            v47[5] = v45;
            aBlock[4] = sub_1BD693C84;
            v62 = v47;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD126964;
            aBlock[3] = &block_descriptor_154;
            v48 = _Block_copy(aBlock);
            v49 = v62;
            v59 = v44;
            v50 = v45;
            v49, v51, v52, v53, v54, v55, v56, v57;
            sub_1BE051F74();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            sub_1BD14EC84();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
            sub_1BD14ECDC();
            sub_1BE053664();
            v58 = v60;
            MEMORY[0x1BFB3FDF0](0, v9, v5, v48);
            _Block_release(v48);

            (*(v3 + 8))(v5, v2);
            (*(v7 + 8))(v9, v6);
          }
        }
      }
    }
  }
}

void sub_1BD692BD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  v12 = [a2 savingsDetails];
  if (!v12)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 fccStepUpRequired];

  if (!v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 0;
    sub_1BE048964();
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD692108();
    v11, v19, v20, v21, v22, v23, v24, v25;
    return;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69B84E0]) init];
  v16 = [a2 accountBaseURL];
  if (v16)
  {
    v17 = v16;
    sub_1BE04A9F4();

    v18 = sub_1BE04A9C4();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v18 = 0;
  }

  [v15 setBaseURL_];

  v26 = [a2 accountIdentifier];
  [v15 setAccountIdentifier_];

  [v15 setType_];
  v27 = [a2 savingsDetails];
  if (!v27)
  {
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 currencyCode];

  v30 = PKCurrencyAmountMake();
  [v15 setCurrencyAmount_];

  v38 = *&v11[OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_paymentWebService];
  if (v38)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v11;
    *(v39 + 24) = a2;
    aBlock[4] = sub_1BD693C90;
    v60 = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD14E1D8;
    aBlock[3] = &block_descriptor_54_0;
    v40 = _Block_copy(aBlock);
    v41 = v60;
    sub_1BE048964();
    v42 = v38;
    v15 = v15;
    v43 = a2;
    v41, v44, v45, v46, v47, v48, v49, v50;
    [v42 transferEligibilityWithRequest:v15 completion:v40];

    _Block_release(v40);
    v11, v51, v52, v53, v54, v55, v56, v57;
  }

  else
  {
    v11, v31, v32, v33, v34, v35, v36, v37;
  }
}

uint64_t sub_1BD69304C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE051F54();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BE051FA4();
  v10 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v14;
  v15[5] = a4;
  aBlock[4] = sub_1BD693C98;
  v32 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_61_1;
  v16 = _Block_copy(aBlock);
  v17 = v32;
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v17, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v16);
  _Block_release(v16);

  (*(v30 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v29);
}

uint64_t sub_1BD693314(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27[-v11];
  if (a1 && !a2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = a1;
      v18 = [v17 eligibility];
      swift_getKeyPath();
      swift_getKeyPath();
      v28 = v18;
      sub_1BE048964();
      sub_1BE04D8C4();
      sub_1BD692108();
      v16, v19, v20, v21, v22, v23, v24, v25;
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = [a4 feature];
      v14 = a2;
      FeatureError.init(feature:error:)(v13, a2, v12);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD23C2BC(v12, v9);
      sub_1BE04D8C4();
      sub_1BD23C32C(v12);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v27[8] = 0;
    sub_1BE04D8C4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v27[7] = 1;
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD6935AC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__eligibility;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F6A0, &qword_1BE0EDB18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__error;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0, &qword_1BE0CB0E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__loadingTransferEligibility;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel__loaded, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransferEligibilityModel(uint64_t a1)
{
  result = qword_1EBD4F688;
  if (!qword_1EBD4F688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6937A0(uint64_t a1)
{
  sub_1BD6938BC(319);
  if (v1 <= 0x3F)
  {
    sub_1BD693914(319);
    if (v2 <= 0x3F)
    {
      sub_1BD1E1120();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD6938BC(uint64_t a1)
{
  if (!qword_1EBD4F698)
  {
    type metadata accessor for PKAccountTransferEligibility(255);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4F698);
    }
  }
}

void sub_1BD693914(uint64_t a1)
{
  if (!qword_1EBD416B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD416B8);
    }
  }
}

uint64_t sub_1BD693978@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TransferEligibilityModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD6939B8(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

id sub_1BD693A38(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD692108();
}

void sub_1BD693AB0(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD693B2C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1BD23C2BC(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v8, v5);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD23C32C(v8);
}

void sub_1BD693CD4(uint64_t a1)
{
  sub_1BD6979CC(319, &unk_1EBD4F710, &qword_1EBD3F140, &qword_1BE0C55B8, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1BD6979CC(319, &qword_1EBD42F20, &qword_1EBD3A5C8, &qword_1BE0BAA50, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      sub_1BD6979CC(319, &qword_1EBD4F720, &unk_1EBD4AB00, &qword_1BE0C85C0, MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        sub_1BD6979CC(319, &qword_1EBD4F730, &qword_1EBD4F738, qword_1BE0EDB78, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1BD693EF8()
{
  v1[12] = v0;
  v2 = sub_1BE04D214();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for IdentityWebPresentmentBrand(0);
  v1[18] = swift_task_alloc();
  v3 = sub_1BE04DB44();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_1BE04CF34();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v5 = sub_1BE04DB14();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();
  v6 = sub_1BE04DB54();
  v1[28] = v6;
  v1[29] = *(v6 - 8);
  v1[30] = swift_task_alloc();
  v7 = sub_1BE04DB84();
  v1[31] = v7;
  v1[32] = *(v7 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738, qword_1BE0EDB78);
  v1[35] = swift_task_alloc();
  v8 = sub_1BE04DBC4();
  v1[36] = v8;
  v1[37] = *(v8 - 8);
  v1[38] = swift_task_alloc();
  sub_1BE0528A4();
  v1[39] = sub_1BE052894();
  v10 = sub_1BE052844();
  v1[40] = v10;
  v1[41] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD6942C0, v10, v9);
}