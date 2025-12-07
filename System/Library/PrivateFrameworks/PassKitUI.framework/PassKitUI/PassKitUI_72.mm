void sub_1BD790E98(uint64_t a1, void *a2, void *a3)
{
  v140 = a2;
  v5 = sub_1BE04A704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v127 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v122 - v9;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A40, &qword_1BE0F6770);
  MEMORY[0x1EEE9AC00](v138);
  v147 = &v122 - v10;
  v145 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v145);
  v130 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v122 - v13;
  v14 = sub_1BE04D214();
  v132 = *(v14 - 8);
  v133 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v142 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v139 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v122 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v126 = &v122 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v143 = &v122 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v144 = &v122 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v137 = &v122 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v131 = &v122 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v141 = &v122 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v122 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v122 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v122 - v41;
  v43 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v43);
  v135 = &v122 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v122 - v46;
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v122 - v50;
  v136 = a3;
  v52 = [a3 shippingName];
  v148 = v5;
  v149 = v6;
  if (v52)
  {
    v53 = a1;
    v54 = v52;
    v55 = [v52 nameComponents];

    if (v55)
    {
      sub_1BE04A6E4();

      v56 = *(v149 + 56);
      v57 = v39;
      v58 = 0;
    }

    else
    {
      v56 = *(v149 + 56);
      v57 = v39;
      v58 = 1;
    }

    v146 = v56;
    v56(v57, v58, 1, v148);
    sub_1BD36A448(v39, v42);
    a1 = v53;
  }

  else
  {
    v146 = *(v6 + 56);
    v146(v42, 1, 1, v5);
  }

  sub_1BD36A448(v42, v51);
  v51[*(v43 + 20)] = 1;
  v59 = sub_1BD790138(a1, v51);
  sub_1BD791D58(v51, type metadata accessor for PersonNameComponentsData);
  v60 = v147;
  if (v59)
  {
    goto LABEL_41;
  }

  v61 = v142;
  sub_1BE04D084();
  v125 = a1;
  sub_1BD7904FC(a1, v47);
  v62 = sub_1BE04D204();
  v63 = sub_1BE052C54();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v150 = v123;
    *v64 = 136315138;
    sub_1BD0DE19C(v47, v36, &unk_1EBD52A20, &unk_1BE0F66E0);
    v66 = v148;
    v65 = v149;
    if ((*(v149 + 48))(v36, 1, v148) == 1)
    {
      sub_1BD0DE53C(v36, &unk_1EBD52A20, &unk_1BE0F66E0);
      v67 = 0xE300000000000000;
      v68 = 7104878;
    }

    else
    {
      v68 = sub_1BE04A6A4();
      v67 = v69;
      (*(v65 + 8))(v36, v66);
    }

    v60 = v147;
    sub_1BD791D58(v47, type metadata accessor for PersonNameComponentsData);
    v70 = sub_1BD123690(v68, v67, &v150);
    v67, v71, v72, v73, v74, v75, v76, v77;
    *(v64 + 4) = v70;
    _os_log_impl(&dword_1BD026000, v62, v63, "Callback Handling: didSelectContactName %s", v64, 0xCu);
    v78 = v123;
    __swift_destroy_boxed_opaque_existential_0(v123, v79, v80, v81, v82, v83, v84, v85);
    MEMORY[0x1BFB45F20](v78, -1, -1);
    MEMORY[0x1BFB45F20](v64, -1, -1);

    (*(v132 + 8))(v142, v133);
  }

  else
  {

    sub_1BD791D58(v47, type metadata accessor for PersonNameComponentsData);
    (*(v132 + 8))(v61, v133);
  }

  v86 = v141;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70, &qword_1BE0D5BD0);
  v87 = *(v147 + 12);
  a1 = v125;
  v88 = v134;
  sub_1BD0DE19C(v125, v134, &unk_1EBD52A20, &unk_1BE0F66E0);
  LODWORD(v142) = *(a1 + *(v43 + 20));
  *(v88 + v87) = v142;
  swift_storeEnumTagMultiPayload();
  sub_1BD6B56B4(v88, 2);
  sub_1BD791D58(v88, type metadata accessor for Analytics.StateChange);
  v89 = v131;
  sub_1BD0DE19C(a1, v131, &unk_1EBD52A20, &unk_1BE0F66E0);
  v91 = v148;
  v90 = v149;
  v92 = *(v149 + 48);
  v93 = v92(v89, 1, v148);
  v94 = v137;
  if (v93 == 1)
  {
    sub_1BD0DE53C(v89, &unk_1EBD52A20, &unk_1BE0F66E0);
    v146(v86, 1, 1, v91);
  }

  else
  {
    sub_1BE04A6C4();
    (*(v90 + 8))(v89, v91);
  }

  v95 = v143;
  v96 = v144;
  v97 = [v136 shippingName];
  if (v97)
  {
    v98 = v97;
    v99 = [v97 nameComponents];

    if (v99)
    {
      v100 = v128;
      sub_1BE04A6E4();

      v101 = v100;
      v102 = 0;
      v96 = v144;
    }

    else
    {
      v102 = 1;
      v96 = v144;
      v101 = v128;
    }

    v146(v101, v102, 1, v91);
    v103 = v101;
    v95 = v143;
    sub_1BD36A448(v103, v143);
  }

  else
  {
    v146(v95, 1, 1, v91);
  }

  v104 = v95;
  v105 = v135;
  sub_1BD36A448(v104, v135);
  sub_1BD36A448(v105, v96);
  if (v92(v96, 1, v91) == 1)
  {
    sub_1BD0DE53C(v96, &unk_1EBD52A20, &unk_1BE0F66E0);
    v146(v94, 1, 1, v91);
  }

  else
  {
    sub_1BE04A6C4();
    (*(v90 + 8))(v96, v91);
  }

  v106 = *(v138 + 48);
  sub_1BD0DE19C(v86, v60, &unk_1EBD52A20, &unk_1BE0F66E0);
  sub_1BD0DE19C(v94, v60 + v106, &unk_1EBD52A20, &unk_1BE0F66E0);
  if (v92(v60, 1, v91) == 1)
  {
    sub_1BD0DE53C(v94, &unk_1EBD52A20, &unk_1BE0F66E0);
    sub_1BD0DE53C(v86, &unk_1EBD52A20, &unk_1BE0F66E0);
    if (v92(v60 + v106, 1, v91) == 1)
    {
      sub_1BD0DE53C(v60, &unk_1EBD52A20, &unk_1BE0F66E0);
      goto LABEL_36;
    }
  }

  else
  {
    v107 = v126;
    sub_1BD0DE19C(v60, v126, &unk_1EBD52A20, &unk_1BE0F66E0);
    if (v92(v60 + v106, 1, v91) != 1)
    {
      v117 = v60;
      v118 = v149;
      v119 = v117 + v106;
      v120 = v124;
      (*(v149 + 32))(v124, v119, v91);
      sub_1BD7904A4();
      LODWORD(v144) = sub_1BE052334();
      v121 = *(v118 + 8);
      v121(v120, v148);
      sub_1BD0DE53C(v94, &unk_1EBD52A20, &unk_1BE0F66E0);
      sub_1BD0DE53C(v141, &unk_1EBD52A20, &unk_1BE0F66E0);
      v121(v107, v148);
      v91 = v148;
      a1 = v125;
      sub_1BD0DE53C(v117, &unk_1EBD52A20, &unk_1BE0F66E0);
      if (v144)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    sub_1BD0DE53C(v94, &unk_1EBD52A20, &unk_1BE0F66E0);
    sub_1BD0DE53C(v86, &unk_1EBD52A20, &unk_1BE0F66E0);
    (*(v149 + 8))(v107, v91);
  }

  sub_1BD0DE53C(v60, &unk_1EBD52A40, &qword_1BE0F6770);
LABEL_32:
  v108 = v129;
  sub_1BD0DE19C(a1, v129, &unk_1EBD52A20, &unk_1BE0F66E0);
  if (v92(v108, 1, v91) == 1)
  {
    sub_1BD0DE53C(v108, &unk_1EBD52A20, &unk_1BE0F66E0);
    v109 = v130;
    v146(v130, 1, 1, v91);
  }

  else
  {
    v109 = v130;
    sub_1BE04A6C4();
    (*(v149 + 8))(v108, v91);
  }

  *(v109 + *(v147 + 12)) = v142;
  swift_storeEnumTagMultiPayload();
  sub_1BD6B56B4(v109, 2);
  sub_1BD791D58(v109, type metadata accessor for Analytics.StateChange);
LABEL_36:
  v110 = v139;
  sub_1BD0DE19C(a1, v139, &unk_1EBD52A20, &unk_1BE0F66E0);
  if (v92(v110, 1, v91) == 1)
  {
    v111 = 0;
    v112 = v140;
LABEL_40:
    [v112 didSelectShippingName_];

LABEL_41:
    sub_1BD791D58(a1, type metadata accessor for PersonNameComponentsData);
    return;
  }

  v113 = v149;
  v114 = v127;
  (*(v149 + 32))(v127, v110, v91);
  v115 = objc_opt_self();
  v116 = sub_1BE04A6B4();
  v111 = [v115 pkContactWithNameComponents:v116 labeledValues:0];

  v112 = v140;
  if (v111)
  {
    (*(v113 + 8))(v114, v91);
    goto LABEL_40;
  }

  __break(1u);
}

uint64_t sub_1BD791D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD791DB8()
{
  type metadata accessor for TransferActionSheetObserver(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52AB8, &qword_1BE0F6880);
  sub_1BE04D874();
  *(v0 + OBJC_IVAR____TtC9PassKitUIP33_3BC4BCA10D4B1B164EF997D80A283BE127TransferActionSheetObserver_fraudStepUpTriggered) = 0;
  return v0;
}

void sub_1BD791E38(_BYTE *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v41 - v4);
  type metadata accessor for CurrencyAmountPickerView(0);
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(v5);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v22 = type metadata accessor for FeatureError(0);
  LODWORD(KeyPath) = (*(*(v22 - 8) + 48))(v5, 1, v22);
  sub_1BD0DE53C(v5, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (KeyPath == 1 || (v23 = swift_getKeyPath(), v24 = swift_getKeyPath(), sub_1BE04D8B4(&v42), v23, v25, v26, v27, v28, v29, v30, v31, v24, v32, v33, v34, v35, v36, v37, v38, v42 != 1))
  {
    v40 = 0;
  }

  else
  {
    sub_1BD791FE8();
    v40 = v39 ^ 1;
  }

  *a2 = v40 & 1;
}

void sub_1BD791FE8()
{
  v1 = type metadata accessor for CurrencyAmountPickerView(0);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v76);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v76[0];
  if (v76[0])
  {
    v19 = [v76[0] currencyCode];

    if (v19)
    {
      v20 = swift_getKeyPath();
      v21 = swift_getKeyPath();
      sub_1BE04D8B4(v76);
      v20, v22, v23, v24, v25, v26, v27, v28;
      v21, v29, v30, v31, v32, v33, v34, v35;
      v36 = *(v0 + v1[9]);
      v37 = *(v0 + v1[10]);
      v38 = v76[0];
      v39 = *(v0 + v1[8]);
      v40 = swift_getKeyPath();
      v41 = swift_getKeyPath();
      sub_1BE04D8B4(v76);
      v40, v42, v43, v44, v45, v46, v47, v48;
      v41, v49, v50, v51, v52, v53, v54, v55;
      v56 = v76[0];
      v57 = v0 + v1[22];
      v58 = *(v57 + 16);
      *v76 = *v57;
      v77 = v58;
      v78 = *(v57 + 32);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
      MEMORY[0x1BFB3E970](&v75, v59);
      v60 = sub_1BE053344();
      v61 = PKCurrencyAmountMake();

      if (v61)
      {
        if (v56)
        {
          v62 = v56;
        }

        else
        {
          v62 = MEMORY[0x1E69E7CC0];
        }

        v63 = objc_allocWithZone(MEMORY[0x1E69B8410]);
        sub_1BD0E5E8C(0, &qword_1EBD4E090, 0x1E69B83A8);
        v64 = v38;
        v65 = sub_1BE052724();
        v62, v66, v67, v68, v69, v70, v71, v72;
        v73 = [v63 initWithAccount:v64 peerPaymentAccount:v36 peerPaymentPass:v37 transferType:v39 fundingSources:v65 currencyAmount:v61];

        if (v39 == 3 && v73)
        {
          v74 = v73;
          [v74 setUseLocationBasedAuthorization_];
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1BD7922B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1BE04F434();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B40, &qword_1BE0F6AE0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B48, &qword_1BE0F6AE8);
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B50, &qword_1BE0F6AF0);
  v12 = *(v11 - 8);
  v50 = v11;
  v51 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B58, &qword_1BE0F6AF8);
  v16 = *(v15 - 8);
  v52 = v15;
  v53 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v43 - v17;
  sub_1BD7927C0(v7);
  v18 = *(type metadata accessor for CurrencyAmountPickerView(0) + 32);
  v44 = a1;
  v19 = sub_1BD793B04(*(a1 + v18));
  v21 = v20;
  v56 = v19;
  v57 = v20;
  v22 = sub_1BD79F094();
  v23 = sub_1BD0DDEBC();
  v24 = MEMORY[0x1E69E6158];
  sub_1BE050B74();
  v21, v25, v26, v27, v28, v29, v30, v31;
  sub_1BD0DE53C(v7, &qword_1EBD52B40, &qword_1BE0F6AE0);
  v33 = v48;
  v32 = v49;
  v34 = v46;
  (*(v48 + 104))(v46, *MEMORY[0x1E697C438], v49);
  v56 = v5;
  v57 = v24;
  v58 = v22;
  v59 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050E84();
  (*(v33 + 8))(v34, v32);
  (*(v47 + 8))(v10, v8);
  v55 = v44;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BC8, &qword_1BE0F6B30);
  v56 = v8;
  v57 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_1BD0DE4F4(&qword_1EBD52BD0, &qword_1EBD52BC8, &qword_1BE0F6B30, MEMORY[0x1E697C5E0]);
  v39 = v45;
  v40 = v50;
  sub_1BE051024();
  (*(v51 + 8))(v14, v40);
  v56 = v40;
  v57 = v36;
  v58 = v37;
  v59 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1BD79F4BC();
  v41 = v52;
  sub_1BE050D84();
  return (*(v53 + 8))(v39, v41);
}

id sub_1BD7927C0@<X0>(uint64_t a1@<X8>)
{
  v306 = a1;
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  v283 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v284 = v3;
  v285 = &v266 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C48, &qword_1BE0F6DB0);
  MEMORY[0x1EEE9AC00](v279);
  v295 = &v266 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v281 = &v266 - v6;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C50, &qword_1BE0F6DB8);
  MEMORY[0x1EEE9AC00](v278);
  v294 = (&v266 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v280 = &v266 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C58, &qword_1BE0F6DC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v292 = (&v266 - v11);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C60, &qword_1BE0F6DC8);
  MEMORY[0x1EEE9AC00](v273);
  v276 = &v266 - v12;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C68, &qword_1BE0F6DD0);
  MEMORY[0x1EEE9AC00](v275);
  v274 = &v266 - v13;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C70, &qword_1BE0F6DD8);
  MEMORY[0x1EEE9AC00](v277);
  v293 = &v266 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v299 = (&v266 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BA8, &qword_1BE0F6B28);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v300 = &v266 - v18;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B88, &qword_1BE0F6B18);
  MEMORY[0x1EEE9AC00](v296);
  v282 = &v266 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B78, &qword_1BE0F6B08);
  v286 = *(v20 - 8);
  v287 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v297 = &v266 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C78, &qword_1BE0F6DE0);
  v290 = *(v22 - 8);
  v291 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v298 = &v266 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B70, &qword_1BE0F6B00);
  v304 = *(v24 - 8);
  v305 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v289 = &v266 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v288 = &v266 - v27;
  v302 = v2;
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  sub_1BE04D8B4(&v333);
  KeyPath, v30, v31, v32, v33, v34, v35, v36;
  v29, v37, v38, v39, v40, v41, v42, v43;
  v44 = v333;
  v301 = v1;
  sub_1BD794A14(&v333);
  v271 = *(&v333 + 1);
  v272 = v333;
  v270 = v334;
  v45 = BYTE4(v334);
  v46 = *(&v334 + 1);
  v47 = v335;
  v48 = DWORD2(v335);
  v49 = BYTE12(v335);
  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  sub_1BE04D8B4(&v333);
  v50, v52, v53, v54, v55, v56, v57, v58;
  v51, v59, v60, v61, v62, v63, v64, v65;
  v66 = v333;
  if (!v333)
  {

    return (*(v304 + 56))(v306, 1, 1, v305);
  }

  v303 = v44;
  v67 = [v333 currencyCode];

  if (!v67)
  {

    return (*(v304 + 56))(v306, 1, 1, v305);
  }

  v68 = sub_1BE052434();
  v70 = v69;

  v78 = v303;
  if (!v303)
  {
    goto LABEL_12;
  }

  v79 = v68;
  v80 = [v303 currentBalance];
  if (!v80)
  {

LABEL_12:
    v91 = v70;
LABEL_13:
    v91, v71, v72, v73, v74, v75, v76, v77;
    return (*(v304 + 56))(v306, 1, 1, v305);
  }

  v81 = v80;
  v269 = v70;
  v82 = [v78 availableBalance];
  if (!v82)
  {

    v91 = v269;
    goto LABEL_13;
  }

  v90 = v82;
  if (v45 & 1) != 0 || (v49)
  {
    v269, v83, v84, v85, v86, v87, v88, v89;

    return (*(v304 + 56))(v306, 1, 1, v305);
  }

  v93 = sub_1BE04F7B4();
  v94 = v300;
  *v300 = v93;
  *(v94 + 1) = 0;
  v94[16] = 1;
  v95 = sub_1BE04F7B4();
  v96 = v299;
  *v299 = v95;
  v96[1] = 0;
  *(v96 + 16) = 1;
  v97 = v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C80, &qword_1BE0F6E30) + 44);
  *v97 = sub_1BE04F7B4();
  *(v97 + 1) = 0;
  v266 = v97;
  v97[16] = 0;
  v98 = sub_1BE04F7B4();
  v99 = v292;
  *v292 = v98;
  v99[1] = 0;
  *(v99 + 16) = 0;
  v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C88, &qword_1BE0F6E38) + 44);
  v267 = v90;
  v268 = v81;
  sub_1BD794D8C(v301, v79, v269, v272, v271, v270, v99 + v100, v46, v47, v48);
  v101 = sub_1BE0501E4();
  v102 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v101)
  {
    v102 = sub_1BE050214();
  }

  if (*(v301 + v302[8]) == 2)
  {
    v103 = 149.0;
  }

  else
  {
    v103 = 114.0;
  }

  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C90, &qword_1BE0F6E40);
  v105 = &v300[*(v104 + 44)];
  v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C98, &qword_1BE0F6E48) + 44);
  v107 = v276;
  v108 = &v276[*(v273 + 36)];
  *v108 = v102;
  *(v108 + 1) = v103;
  *(v108 + 2) = 0x4034000000000000;
  v109 = *(type metadata accessor for AccessibilityAdaptivePadding(0) + 28);
  *&v108[v109] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE204(v292, v107, &qword_1EBD52C58, &qword_1BE0F6DC0);
  v110 = v274;
  sub_1BD0DE204(v107, v274, &qword_1EBD52C60, &qword_1BE0F6DC8);
  *(v110 + *(v275 + 36)) = 256;
  v111 = v266;
  sub_1BD0DE204(v110, &v266[v106], &qword_1EBD52C68, &qword_1BE0F6DD0);
  LOBYTE(v110) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = &v111[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CA0, &qword_1BE0F6E80) + 36)];
  *v120 = v110;
  *(v120 + 1) = v113;
  *(v120 + 2) = v115;
  *(v120 + 3) = v117;
  *(v120 + 4) = v119;
  v120[40] = 0;
  v121 = v299;
  *(v299 + *(v277 + 36)) = 256;
  v122 = v280;
  sub_1BD797514(v280);
  LOBYTE(v110) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v131 = v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CA8, &qword_1BE0F6E88) + 36);
  *v131 = v110;
  *(v131 + 8) = v124;
  *(v131 + 16) = v126;
  *(v131 + 24) = v128;
  *(v131 + 32) = v130;
  *(v131 + 40) = 0;
  LOBYTE(v110) = sub_1BE050234();
  sub_1BE04E1F4();
  v132 = v122 + *(v278 + 36);
  *v132 = v110;
  *(v132 + 8) = v133;
  *(v132 + 16) = v134;
  *(v132 + 24) = v135;
  *(v132 + 32) = v136;
  *(v132 + 40) = 0;
  v137 = v281;
  sub_1BD797888(v281);
  LOBYTE(v110) = sub_1BE050234();
  sub_1BE04E1F4();
  v138 = v137 + *(v279 + 36);
  *v138 = v110;
  *(v138 + 8) = v139;
  *(v138 + 16) = v140;
  *(v138 + 24) = v141;
  *(v138 + 32) = v142;
  *(v138 + 40) = 0;
  sub_1BD797A80(v329);
  v143 = v293;
  sub_1BD0DE19C(v121, v293, &qword_1EBD52C70, &qword_1BE0F6DD8);
  v144 = v294;
  sub_1BD0DE19C(v122, v294, &qword_1EBD52C50, &qword_1BE0F6DB8);
  v145 = v295;
  sub_1BD0DE19C(v137, v295, &qword_1EBD52C48, &qword_1BE0F6DB0);
  v325 = v329[7];
  v326 = v329[8];
  v327 = v329[9];
  v321 = v329[3];
  v322 = v329[4];
  v323 = v329[5];
  v324 = v329[6];
  v318 = v329[0];
  v319 = v329[1];
  v328 = v330;
  v320 = v329[2];
  sub_1BD0DE19C(v143, v105, &qword_1EBD52C70, &qword_1BE0F6DD8);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CB0, &qword_1BE0F6E90);
  v147 = &v105[v146[12]];
  *v147 = 0;
  v147[8] = 1;
  sub_1BD0DE19C(v144, &v105[v146[16]], &qword_1EBD52C50, &qword_1BE0F6DB8);
  sub_1BD0DE19C(v145, &v105[v146[20]], &qword_1EBD52C48, &qword_1BE0F6DB0);
  v148 = &v105[v146[24]];
  v149 = v325;
  v331[8] = v326;
  v331[9] = v327;
  v150 = v323;
  v151 = v324;
  v331[6] = v324;
  v331[7] = v325;
  v152 = v321;
  v153 = v322;
  v331[4] = v322;
  v331[5] = v323;
  v154 = v318;
  v155 = v319;
  v331[0] = v318;
  v331[1] = v319;
  v156 = v320;
  v331[2] = v320;
  v331[3] = v321;
  v157 = v327;
  *(v148 + 8) = v326;
  *(v148 + 9) = v157;
  *(v148 + 4) = v153;
  *(v148 + 5) = v150;
  *(v148 + 6) = v151;
  *(v148 + 7) = v149;
  *v148 = v154;
  *(v148 + 1) = v155;
  v332 = v328;
  *(v148 + 20) = v328;
  *(v148 + 2) = v156;
  *(v148 + 3) = v152;
  sub_1BD0DE19C(v331, &v333, &qword_1EBD52CB8, &unk_1BE0F6E98);
  sub_1BD0DE53C(v137, &qword_1EBD52C48, &qword_1BE0F6DB0);
  sub_1BD0DE53C(v122, &qword_1EBD52C50, &qword_1BE0F6DB8);
  sub_1BD0DE53C(v299, &qword_1EBD52C70, &qword_1BE0F6DD8);
  v341 = v326;
  v342 = v327;
  v337 = v322;
  v338 = v323;
  v343 = v328;
  v339 = v324;
  v340 = v325;
  v333 = v318;
  v334 = v319;
  v335 = v320;
  v336 = v321;
  sub_1BD0DE53C(&v333, &qword_1EBD52CB8, &unk_1BE0F6E98);
  sub_1BD0DE53C(v295, &qword_1EBD52C48, &qword_1BE0F6DB0);
  sub_1BD0DE53C(v294, &qword_1EBD52C50, &qword_1BE0F6DB8);
  sub_1BD0DE53C(v293, &qword_1EBD52C70, &qword_1BE0F6DD8);
  v269, v158, v159, v160, v161, v162, v163, v164;
  v165 = sub_1BE04EC54();
  if (*(v301 + v302[14]))
  {
    v166 = sub_1BE050214();
  }

  else
  {
    v166 = sub_1BE0501F4();
  }

  v167 = v166;
  v168 = v282;
  sub_1BD0DE204(v300, v282, &qword_1EBD52BA8, &qword_1BE0F6B28);
  v169 = v168 + *(v296 + 36);
  *v169 = v165;
  *(v169 + 8) = v167;
  v170 = v301;
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver, &unk_1BE0F6954);
  v171 = sub_1BE04E3D4();
  v172 = swift_getKeyPath();
  sub_1BE04E974();
  v172, v173, v174, v175, v176, v177, v178, v179;
  v171, v180, v181, v182, v183, v184, v185, v186;
  v187 = v307;
  v188 = v308;
  v315 = v307;
  v316 = v308;
  v317 = v309;
  v189 = v170;
  v190 = v285;
  sub_1BD7A0048(v170, v285);
  v191 = (*(v283 + 80) + 16) & ~*(v283 + 80);
  v192 = swift_allocObject();
  sub_1BD7A16C8(v190, v192 + v191, type metadata accessor for CurrencyAmountPickerView);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B90, &qword_1BE0F6B20);
  v295 = sub_1BD79F31C();
  v299 = sub_1BD79F3D4();
  v193 = sub_1BD79F428();
  v194 = v296;
  sub_1BE050F74();
  v188, v195, v196, v197, v198, v199, v200, v201;
  v192, v202, v203, v204, v205, v206, v207, v208;
  v187, v209, v210, v211, v212, v213, v214, v215;
  sub_1BD0DE53C(v168, &qword_1EBD52B88, &qword_1BE0F6B18);
  v216 = sub_1BD798330();
  v300 = v217;
  v315 = v216;
  v316 = v217;
  v218 = v189 + v302[26];
  v219 = *v218;
  v220 = *(v218 + 8);
  v313 = v219;
  v314 = v220;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  v221 = sub_1BE0516C4();
  v294 = &v266;
  v222 = v308;
  v292 = v307;
  LODWORD(v293) = v309;
  MEMORY[0x1EEE9AC00](v221);
  MEMORY[0x1EEE9AC00](v223);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B80, &qword_1BE0F6B10);
  v307 = v194;
  v308 = &type metadata for TransferActionSheet;
  v309 = v285;
  v310 = v295;
  v311 = v299;
  v312 = v193;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD52BC0, &qword_1EBD52B80, &qword_1BE0F6B10, MEMORY[0x1E6981F48]);
  v224 = v287;
  v225 = v292;
  v226 = v297;
  sub_1BE050F34();
  v300, v227, v228, v229, v230, v231, v232, v233;
  v222, v234, v235, v236, v237, v238, v239, v240;
  v225, v241, v242, v243, v244, v245, v246, v247;
  (*(v286 + 8))(v226, v224);
  v248 = *(v189 + v302[6] + 8);
  type metadata accessor for FundingSourcesModel(0);
  sub_1BD79EE14(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel, &unk_1BE0EA794);
  v249 = sub_1BE04E964();
  v250 = swift_getKeyPath();
  v251 = v305;
  v252 = v289;
  v253 = &v289[*(v305 + 36)];
  sub_1BE04E974();

  v250, v254, v255, v256, v257, v258, v259, v260;
  v261 = swift_allocObject();
  *(v261 + 16) = v248;
  (*(v290 + 32))(v252, v298, v291);
  v262 = &v253[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
  *v262 = sub_1BD7A050C;
  v262[1] = v261;
  v263 = v288;
  sub_1BD0DE204(v252, v288, &qword_1EBD52B70, &qword_1BE0F6B00);
  v264 = v263;
  v265 = v306;
  sub_1BD0DE204(v264, v306, &qword_1EBD52B70, &qword_1BE0F6B00);
  (*(v304 + 56))(v265, 0, 1, v251);
  return v248;
}

id sub_1BD793B04(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v7;
  if (a1 == 3)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69B80E0], v2, v8);
    result = PKPassKitBundle();
    if (result)
    {
      v11 = result;
      v12 = sub_1BE04B6F4();
      v9 = v5;
      goto LABEL_7;
    }
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    (*(v3 + 104))(&v13 - v7, *MEMORY[0x1E69B80E0], v2, v8);
    result = PKPassKitBundle();
    if (result)
    {
      v11 = result;
      v12 = sub_1BE04B6F4();
LABEL_7:

      (*(v3 + 8))(v9, v2);
      return v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD793CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BE0, &qword_1BE0F6B38);
  MEMORY[0x1EEE9AC00](v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BE8, &qword_1BE0F6B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BF0, &qword_1BE0F6B48);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  sub_1BE04FB04();
  v16[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52BF8, &qword_1BE0F6B50);
  sub_1BD79F518();
  sub_1BE04E424();
  sub_1BE04FAE4();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C18, &qword_1BE0F6B58);
  sub_1BD79F6B0();
  sub_1BE04E424();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_1BE04F854();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

void *sub_1BD794008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C40, &qword_1BE0F6DA8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v31 - v4;
  v6 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500, &unk_1BE0C4310);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C10, &unk_1BE0FD490);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for CurrencyAmountPickerView(0);
  if (*(a1 + *(v16 + 56)))
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD79F5A4();
    return sub_1BE04F9A4();
  }

  else
  {
    v18 = v16;
    sub_1BE04E1B4();
    v19 = (a1 + *(v18 + 44));
    v20 = *v19;
    v21 = v19[1];
    sub_1BE048964();
    MEMORY[0x1BFB3E7A0](v8, v20, v21);
    sub_1BE052434();
    v23 = v22;
    sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500, &unk_1BE0C4310, MEMORY[0x1E697D680]);
    sub_1BE050DE4();
    v23, v24, v25, v26, v27, v28, v29, v30;
    (*(v10 + 8))(v12, v9);
    sub_1BD0DE19C(v15, v5, &qword_1EBD52C10, &unk_1BE0FD490);
    swift_storeEnumTagMultiPayload();
    sub_1BD79F5A4();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v15, &qword_1EBD52C10, &unk_1BE0FD490);
  }
}

void *sub_1BD794334@<X0>(void *a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C30, &unk_1BE0F6B60);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C38, &qword_1BE0F6B70);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v61 - v23;
  if ((*(v1 + *(v2 + 56)) & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD79F73C();
    return sub_1BE04F9A4();
  }

  v61 = v21;
  v62 = v2;
  v63 = v1;
  v64 = v12;
  v25 = *(v1 + *(v2 + 32));
  v26 = *MEMORY[0x1E69B80E0];
  v27 = *(v14 + 104);
  v65 = v8;
  if (v25 != 2)
  {
    v27(v16, v26, v13, v22);
    result = PKPassKitBundle();
    if (result)
    {
      v29 = result;
      v30 = sub_1BE04B6F4();
      v32 = v33;
      v19 = v16;
      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v27(v19, v26, v13, v22);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = result;
  v30 = sub_1BE04B6F4();
  v32 = v31;
LABEL_8:
  v34 = v63;

  (*(v14 + 8))(v19, v13);
  *&v75 = v30;
  *(&v75 + 1) = v32;
  v35 = v67;
  sub_1BD7A0048(v34, v67);
  v36 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v37 = swift_allocObject();
  sub_1BD7A16C8(v35, v37 + v36, type metadata accessor for CurrencyAmountPickerView);
  sub_1BD0DDEBC();
  v38 = v68;
  sub_1BE051744();
  sub_1BE052434();
  v40 = v39;
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  v41 = v72;
  v42 = v70;
  sub_1BE050DE4();
  v40, v43, v44, v45, v46, v47, v48, v49;
  (*(v69 + 8))(v38, v42);
  v50 = v62;
  v51 = v34 + *(v62 + 84);
  v52 = *v51;
  v53 = *(v51 + 8);
  LOBYTE(v75) = v52;
  *(&v75 + 1) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v74)
  {
    v54 = 1;
    v56 = v64;
    v55 = v65;
  }

  else
  {
    v75 = *(v34 + *(v50 + 116));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68, &qword_1BE0D8770);
    sub_1BE0516A4();
    v56 = v64;
    v55 = v65;
    if (v74)
    {

      v54 = 1;
    }

    else
    {
      v54 = 0;
    }
  }

  KeyPath = swift_getKeyPath();
  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  v59 = v71;
  sub_1BD0DE204(v41, v71, &unk_1EBD45200, &qword_1BE0BB900);
  v60 = (v59 + *(v55 + 36));
  *v60 = KeyPath;
  v60[1] = sub_1BD10DF54;
  v60[2] = v58;
  sub_1BD0DE204(v59, v56, &qword_1EBD52C30, &unk_1BE0F6B60);
  sub_1BD0DE19C(v56, v24, &qword_1EBD52C30, &unk_1BE0F6B60);
  swift_storeEnumTagMultiPayload();
  sub_1BD79F73C();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v56, &qword_1EBD52C30, &unk_1BE0F6B60);
}

void sub_1BD794A14(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CurrencyAmountPickerView(0);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v66);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  v20 = *(v1 + *(v3 + 32));
  v21 = v66;
  v22 = v20 == 2;
  if (v20 == 2)
  {
    v23 = &selRef_oneTimeDepositFeatureDescriptor;
  }

  else
  {
    v23 = &selRef_oneTimeWithdrawalFeatureDescriptor;
  }

  if (v22)
  {
    v24 = &selRef_oneTimeDepositWithAppleCashFeatureDescriptor;
  }

  else
  {
    v24 = &selRef_oneTimeWithdrawalWithAppleCashFeatureDescriptor;
  }

  v25 = [v66 *v23];
  v65 = v21;
  v26 = [v21 *v24];
  if (v25 && (v27 = [v25 minimumAmount]) != 0)
  {
    v28 = v27;
    v29 = sub_1BE0533F4();
    v31 = v30;
    v33 = v32;

    v34 = 0;
    if (!v26)
    {
LABEL_15:
      if (v34)
      {
        v64 = 0;
        v39 = 0;
        LODWORD(v41) = 0;
        v60 = 1;
      }

      else
      {
        v60 = 0;
        v64 = v29;
        v39 = v31;
        LODWORD(v41) = v33;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v33 = 0;
    v34 = 1;
    if (!v26)
    {
      goto LABEL_15;
    }
  }

  v35 = [v26 minimumAmount];
  if (!v35)
  {
    goto LABEL_15;
  }

  v63 = v29;
  v36 = v35;
  v37 = sub_1BE0533F4();
  v39 = v38;
  v41 = v40;

  if (v34)
  {
    v64 = v37;
    v60 = 0;
  }

  else
  {
    v60 = 0;
    if ((MEMORY[0x1BFB403F0](v37, v39, v41, v63, v31, v33) & 1) == 0)
    {
      LODWORD(v41) = v33;
      v39 = v31;
      v37 = v63;
    }

    v64 = v37;
  }

LABEL_21:
  v62 = v39;
  v61 = v41;
  if (v25 && (v42 = [v25 maximumAmount]) != 0)
  {
    v43 = v42;
    v44 = sub_1BE0533F4();
    v46 = v45;
    v48 = v47;

    v49 = 0;
    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 1;
    if (!v26)
    {
LABEL_29:
      if (v49)
      {
        v59 = v26;
        LODWORD(v26) = 0;
        v54 = 0;
        v52 = 0;
        v56 = 1;
        goto LABEL_31;
      }

      v56 = 0;
LABEL_35:
      v57 = v62;
      goto LABEL_36;
    }
  }

  v50 = [v26 maximumAmount];
  if (!v50)
  {
    goto LABEL_29;
  }

  v51 = v50;
  v59 = v26;
  v52 = sub_1BE0533F4();
  v54 = v53;
  v26 = v55;

  if ((v49 & 1) == 0)
  {
    v58 = MEMORY[0x1BFB403F0](v52, v54, v26, v44, v46, v48);

    v56 = 0;
    if ((v58 & 1) == 0)
    {
      LODWORD(v48) = v26;
      v46 = v54;
      v44 = v52;
    }

    goto LABEL_35;
  }

  v56 = 0;
LABEL_31:
  v57 = v62;

  v44 = v52;
  v46 = v54;
  LODWORD(v48) = v26;
LABEL_36:
  *a1 = v64;
  *(a1 + 8) = v57;
  *(a1 + 16) = v61;
  *(a1 + 20) = v60;
  *(a1 + 24) = v44;
  *(a1 + 32) = v46;
  *(a1 + 40) = v48;
  *(a1 + 44) = v56;
}

uint64_t sub_1BD794D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int a12)
{
  LODWORD(v337) = a8;
  *&v336 = a6;
  *(&v336 + 1) = a7;
  v334 = a2;
  v302 = a9;
  v335 = a12;
  v333 = a11;
  v332 = a10;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v291);
  v294 = &v288 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EE8, &qword_1BE0F7180);
  v292 = *(v15 - 8);
  v293 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v290 = &v288 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EF0, &qword_1BE0F7188);
  v299 = *(v17 - 8);
  v300 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v289 = &v288 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EF8, &qword_1BE0F7190);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v301 = &v288 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v347 = &v288 - v22;
  v23 = sub_1BE04BD74();
  v345 = *(v23 - 8);
  v346 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v344 = &v288 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v340);
  v339 = &v288 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v338 = &v288 - v27;
  v28 = type metadata accessor for CurrencyAmountPickerView(0);
  v29 = *(v28 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v331 = v30;
  v350 = &v288 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F00, &qword_1BE0F7198);
  MEMORY[0x1EEE9AC00](v354);
  v353 = &v288 - v31;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F08, &qword_1BE0F71A0);
  v341 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357);
  v355 = &v288 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F10, &qword_1BE0F71A8);
  v34 = *(v33 - 8);
  v342 = v33;
  v343 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v356 = &v288 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F18, &qword_1BE0F71B0);
  v309 = *(v36 - 8);
  v310 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v349 = &v288 - v37;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F20, &qword_1BE0F71B8);
  MEMORY[0x1EEE9AC00](v308);
  v298 = &v288 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v307 = &v288 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v348 = &v288 - v42;
  v329 = a1 + v28[22];
  v43 = *(v329 + 16);
  *v378 = *v329;
  *&v378[2] = v43;
  LODWORD(v378[4]) = *(v329 + 32);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
  sub_1BE051914();
  v44 = (a1 + v28[23]);
  v45 = *v44;
  v46 = v44[1];
  v47 = v44[2];
  v305 = v46;
  v306 = v45;
  *&v367[0] = v45;
  *(&v367[0] + 1) = v46;
  v304 = v47;
  *&v367[1] = v47;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516C4();
  v326 = *v378;
  v324 = v378[3];
  v325 = v378[2];
  v48 = (a1 + v28[24]);
  v49 = *v48;
  v296 = v48[1];
  v297 = v49;
  *&v367[0] = v49;
  *(&v367[0] + 1) = v296;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F28, &qword_1BE101330);
  sub_1BE0516C4();
  v321 = v378[1];
  v322 = v378[0];
  v320 = v378[2];
  v50 = sub_1BE0533F4();
  v318 = v51;
  v319 = v50;
  v323 = v52;
  v53 = sub_1BE0533F4();
  v315 = v54;
  v316 = v53;
  v317 = v55;
  v56 = a1;
  v327 = *(a1 + v28[8]);
  v57 = v327;
  v58 = (a1 + v28[21]);
  v59 = *v58;
  v60 = *(v58 + 1);
  LOBYTE(v367[0]) = v59;
  *(&v367[0] + 1) = v60;
  sub_1BE048C84();
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v61 = v378[1];
  v311 = v378[0];
  v313 = LOBYTE(v378[2]);
  sub_1BD796378();
  v312 = v62;
  v63 = v28[14];
  v358 = v28;
  v64 = *(v56 + v63);
  KeyPath = swift_getKeyPath();
  v375 = v367[19];
  v376 = v367[20];
  LODWORD(v377) = v368;
  v369 = 0;
  v65 = v350;
  sub_1BD7A0048(v56, v350);
  v352 = *(v29 + 80);
  v66 = (v352 + 16) & ~v352;
  v330 = v66;
  v67 = swift_allocObject();
  v351 = type metadata accessor for CurrencyAmountPickerView;
  sub_1BD7A16C8(v65, v67 + v66, type metadata accessor for CurrencyAmountPickerView);
  *&v367[2] = v377;
  *(&v367[3] + 1) = v325;
  *&v367[4] = v324;
  *(&v367[4] + 1) = v322;
  *&v367[5] = v321;
  *(&v367[5] + 1) = v320;
  *&v367[6] = v334;
  *(&v367[6] + 1) = a3;
  *&v367[7] = v319;
  *(&v367[7] + 1) = v318;
  *(&v367[8] + 4) = v316;
  *(&v367[8] + 12) = v315;
  LODWORD(v367[8]) = v323;
  DWORD1(v367[9]) = v317;
  v367[10] = v336;
  *(&v367[11] + 4) = v332;
  *(&v367[11] + 12) = v333;
  LODWORD(v367[11]) = v337;
  DWORD1(v367[12]) = v335;
  *(&v367[12] + 1) = v311;
  *&v367[13] = v61;
  *(&v367[9] + 1) = v57;
  v367[0] = v375;
  v367[1] = v376;
  *(&v367[2] + 8) = v326;
  BYTE8(v367[13]) = v313;
  HIDWORD(v367[13]) = *&v374[3];
  *(&v367[13] + 9) = *v374;
  *&v367[14] = v312;
  BYTE8(v367[15]) = (v64 & 1) == 0;
  *(&v367[16] + 9) = 256;
  *(&v367[15] + 9) = 256;
  HIBYTE(v367[15]) = v373;
  *(&v367[15] + 11) = v372;
  *&v367[16] = KeyPath;
  *(&v367[14] + 1) = sub_1BD7969D4;
  *&v367[15] = 0;
  BYTE8(v367[16]) = 0;
  *(&v367[16] + 11) = v370;
  HIBYTE(v367[16]) = v371;
  *&v367[17] = sub_1BD7A11DC;
  *(&v367[17] + 1) = v67;
  v367[18] = 0uLL;
  v68 = v56 + v28[20];
  LOBYTE(v378[0]) = *v68;
  v378[1] = *(v68 + 8);
  LOBYTE(v378[2]) = *(v68 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570, &qword_1BE0F71F0);
  sub_1BE04E244();
  v69 = v361;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F30, &qword_1BE0F71F8);
  sub_1BD7A1268();
  v70 = v353;
  sub_1BE050FC4();
  *(&v69 + 1), v71, v72, v73, v74, v75, v76, v77;
  v69, v78, v79, v80, v81, v82, v83, v84;
  memcpy(v378, v367, 0x130uLL);
  sub_1BD0DE53C(v378, &qword_1EBD52F30, &qword_1BE0F71F8);
  v85 = v358;
  v86 = *(v56 + v358[5] + 8);
  v87 = *(v329 + 16);
  v367[0] = *v329;
  v367[1] = v87;
  LODWORD(v367[2]) = *(v329 + 32);
  sub_1BE051914();
  v88 = (v56 + v85[16]);
  v89 = v56;
  v359 = v56;
  DWORD2(v336) = *v88;
  *&v336 = *(v88 + 1);
  LOBYTE(v361) = BYTE8(v336);
  *(&v361 + 1) = v336;
  sub_1BE0516C4();
  v90 = v367[0];
  LOBYTE(v56) = v367[1];
  v91 = v89 + v85[17];
  v92 = *v91;
  v93 = *(v91 + 8);
  LOBYTE(v361) = v92;
  *(&v361 + 1) = v93;
  sub_1BE0516C4();
  v94 = v367[0];
  v95 = v367[1];
  v96 = &v70[*(v354 + 36)];
  v97 = v327;
  *v96 = v86;
  *(v96 + 1) = v97;
  v98 = *&v378[41];
  *(v96 + 1) = *&v378[39];
  *(v96 + 2) = v98;
  *(v96 + 12) = v379;
  *(v96 + 56) = v90;
  v96[72] = v56;
  *(v96 + 5) = v94;
  v96[96] = v95;
  v99 = type metadata accessor for TransferEligibilityView(0);
  v100 = type metadata accessor for FeatureError(0);
  v101 = v338;
  (*(*(v100 - 8) + 56))(v338, 1, 1, v100);
  sub_1BD0DE19C(v101, v339, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v337 = v86;
  sub_1BE051694();
  sub_1BD0DE53C(v101, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v102 = &v96[*(v99 + 40)];
  *v102 = sub_1BD3633BC;
  *(v102 + 1) = 0;
  v102[16] = 0;
  v103 = &v96[*(v99 + 44)];
  *v103 = sub_1BD3633F4;
  *(v103 + 1) = 0;
  v103[16] = 0;
  v104 = v359;
  v105 = swift_getKeyPath();
  v106 = swift_getKeyPath();
  sub_1BE04D8B4(v367);
  v105, v107, v108, v109, v110, v111, v112, v113;
  v106, v114, v115, v116, v117, v118, v119, v120;
  v121 = v104;
  v122 = v350;
  sub_1BD7A0048(v121, v350);
  v123 = v330;
  v124 = swift_allocObject();
  v125 = v351;
  sub_1BD7A16C8(v122, v124 + v123, v351);
  v126 = sub_1BD7A13EC();
  v127 = v354;
  v128 = v353;
  sub_1BE051064();
  v124, v129, v130, v131, v132, v133, v134, v135;
  sub_1BD0DE53C(v128, &qword_1EBD52F00, &qword_1BE0F7198);
  LOBYTE(v367[0]) = BYTE8(v336);
  *(&v367[0] + 1) = v336;
  sub_1BE0516A4();
  v136 = v359;
  sub_1BD7A0048(v359, v122);
  v137 = swift_allocObject();
  sub_1BD7A16C8(v122, v137 + v123, v125);
  *&v367[0] = v127;
  *(&v367[0] + 1) = MEMORY[0x1E69E6370];
  *&v367[1] = v126;
  *(&v367[1] + 1) = MEMORY[0x1E69E6388];
  v354 = MEMORY[0x1E6981440];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v139 = v357;
  v140 = v355;
  sub_1BE051064();
  v137, v141, v142, v143, v144, v145, v146, v147;
  (*(v341 + 8))(v140, v139);
  v148 = v136 + v358[27];
  v149 = *v148;
  v150 = *(v148 + 8);
  LOBYTE(v361) = v149;
  *(&v361 + 1) = v150;
  sub_1BE0516C4();
  v151 = v367[0];
  sub_1BD7A0048(v136, v122);
  v152 = swift_allocObject();
  sub_1BD7A16C8(v122, v152 + v123, v351);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F68, &qword_1BE0F7208);
  *&v367[0] = v357;
  *(&v367[0] + 1) = MEMORY[0x1E69E6370];
  *&v367[1] = OpaqueTypeConformance2;
  *(&v367[1] + 1) = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1BD7A1600();
  v153 = v342;
  v154 = v356;
  sub_1BE050F64();
  *(&v151 + 1), v155, v156, v157, v158, v159, v160, v161;
  v152, v162, v163, v164, v165, v166, v167, v168;
  v151, v169, v170, v171, v172, v173, v174, v175;
  (*(v343 + 8))(v154, v153);
  v176 = swift_getKeyPath();
  v177 = swift_getKeyPath();
  sub_1BE04D8B4(v367);
  v176, v178, v179, v180, v181, v182, v183, v184;
  v177, v185, v186, v187, v188, v189, v190, v191;
  v192 = *&v367[0];
  if (*&v367[0] && (v193 = [*&v367[0] contactNumber], v192, v193))
  {
    v194 = sub_1BE052434();
    v196 = v195;
  }

  else
  {
    v194 = 0;
    v196 = 0;
  }

  v197 = v348;
  v199 = v345;
  v198 = v346;
  v200 = v344;
  (*(v345 + 104))(v344, *MEMORY[0x1E69B80E0], v346);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_14;
  }

  v202 = result;
  v203 = sub_1BE04B6F4();
  v205 = v204;

  (*(v199 + 8))(v200, v198);
  v206 = (v359 + v358[28]);
  v207 = *v206;
  v208 = *(v206 + 1);
  LOBYTE(v361) = v207;
  *(&v361 + 1) = v208;
  sub_1BE0516C4();
  v209 = v367[0];
  v210 = v367[1];
  v211 = v307;
  (*(v309 + 32))(v307, v349, v310);
  v212 = v211 + *(v308 + 36);
  *v212 = v194;
  *(v212 + 8) = v196;
  *(v212 + 16) = v203;
  *(v212 + 24) = v205;
  *(v212 + 32) = 0;
  *(v212 + 40) = v209;
  *(v212 + 56) = v210;
  sub_1BD0DE204(v211, v197, &qword_1EBD52F20, &qword_1BE0F71B8);
  *&v367[0] = v306;
  *(&v367[0] + 1) = v305;
  *&v367[1] = v304;
  sub_1BE0516A4();
  v213 = *(&v361 + 1);
  v214 = v347;
  if (!*(&v361 + 1))
  {
LABEL_11:
    (*(v299 + 56))(v214, 1, 1, v300);
    goto LABEL_12;
  }

  v215 = v361;
  *&v367[0] = v297;
  *(&v367[0] + 1) = v296;
  sub_1BE0516A4();
  v223 = v361;
  if (!v361)
  {
    v213, v216, v217, v218, v219, v220, v221, v222;
    goto LABEL_11;
  }

  *&v367[0] = v215;
  *(&v367[0] + 1) = v213;
  sub_1BD0DDEBC();
  v224 = sub_1BE0506C4();
  v226 = v225;
  v228 = v227;
  v230 = v229;
  sub_1BE048964();
  v231 = sub_1BE050564();
  v233 = v232;
  v235 = v234;
  v237 = v236;
  v223, v232, v234, v236, v238, v239, v240, v241;
  sub_1BD0DDF10(v224, v226, (v228 & 1), v242, v243, v244, v245, v246);
  v230, v247, v248, v249, v250, v251, v252, v253;
  LOBYTE(v224) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v366 = v235 & 1;
  v365 = 0;
  *&v361 = v231;
  *(&v361 + 1) = v233;
  LOBYTE(v362) = v235 & 1;
  *(&v362 + 1) = v237;
  LOBYTE(v363) = v224;
  *(&v363 + 1) = v254;
  *&v364[0] = v255;
  *(&v364[0] + 1) = v256;
  *&v364[1] = v257;
  BYTE8(v364[1]) = 0;
  v258 = *MEMORY[0x1E697E6D0];
  v259 = sub_1BE04EB24();
  v260 = v294;
  (*(*(v259 - 8) + 104))(v294, v258, v259);
  sub_1BD79EE14(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1BE052334();
  if (result)
  {
    v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    v262 = sub_1BD2A275C();
    v263 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    v264 = v290;
    v265 = v291;
    sub_1BE050B34();
    sub_1BD0DE53C(v260, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
    v367[2] = v363;
    v367[3] = v364[0];
    *(&v367[3] + 9) = *(v364 + 9);
    v367[0] = v361;
    v367[1] = v362;
    sub_1BD0DE53C(v367, &unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BE052434();
    v267 = v266;
    *&v361 = v261;
    *(&v361 + 1) = v265;
    *&v362 = v262;
    *(&v362 + 1) = v263;
    swift_getOpaqueTypeConformance2();
    v268 = v289;
    v269 = v293;
    sub_1BE050DE4();
    v223, v270, v271, v272, v273, v274, v275, v276;
    v267, v277, v278, v279, v280, v281, v282, v283;
    (*(v292 + 8))(v264, v269);
    v214 = v347;
    sub_1BD0DE204(v268, v347, &qword_1EBD52EF0, &qword_1BE0F7188);
    (*(v299 + 56))(v214, 0, 1, v300);
    v197 = v348;
LABEL_12:
    v284 = v298;
    sub_1BD0DE19C(v197, v298, &qword_1EBD52F20, &qword_1BE0F71B8);
    v285 = v301;
    sub_1BD0DE19C(v214, v301, &qword_1EBD52EF8, &qword_1BE0F7190);
    v286 = v302;
    sub_1BD0DE19C(v284, v302, &qword_1EBD52F20, &qword_1BE0F71B8);
    v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F78, &unk_1BE0F7210);
    sub_1BD0DE19C(v285, v286 + *(v287 + 48), &qword_1EBD52EF8, &qword_1BE0F7190);
    sub_1BD0DE53C(v214, &qword_1EBD52EF8, &qword_1BE0F7190);
    sub_1BD0DE53C(v197, &qword_1EBD52F20, &qword_1BE0F71B8);
    sub_1BD0DE53C(v285, &qword_1EBD52EF8, &qword_1BE0F7190);
    return sub_1BD0DE53C(v284, &qword_1EBD52F20, &qword_1BE0F71B8);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1BD796378()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CurrencyAmountPickerView(0);
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(&v150);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v22 = v150;
  if (*(v0 + v5[8]) != 2 || (v23 = *(v0 + v5[9]), v24 = *(v0 + v5[10]), !PKPeerPaymentCanPerformAccountServicePayments()) || !v23 || (v25 = [v23 currentBalance]) == 0)
  {

    return;
  }

  v26 = v25;
  v27 = [v25 amount];
  if (!v27 || (v150 = 0, v151 = 0, v152 = 0, v153 = 1, v28 = v27, sub_1BE0533E4(), v28, v153 == 1) || (v29 = v150, v30 = v151, LODWORD(v149) = v152, (v31 = [v26 currency]) == 0))
  {

    return;
  }

  v32 = v31;
  v147 = v30;
  v148 = v29;
  v33 = sub_1BE052434();
  v35 = v34;
  v36 = [v22 oneTimeDepositWithAppleCashFeatureDescriptor];
  if (!v36)
  {
    v35, v37, v38, v39, v40, v41, v42, v43;
LABEL_15:

    return;
  }

  v145 = v33;
  v44 = v36;
  v45 = [v44 minimumAmount];
  if (!v45)
  {

    v35, v55, v56, v57, v58, v59, v60, v61;
    return;
  }

  v146 = v44;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 1;
  v46 = v45;
  sub_1BE0533E4();

  if (v153 == 1)
  {

    v35, v47, v48, v49, v50, v51, v52, v53;
    v54 = v146;

    return;
  }

  v143 = v150;
  v144 = v35;
  v142 = v151;
  v141 = v152;
  v62 = v146;
  v63 = [v146 maximumAmount];

  if (!v63)
  {

    goto LABEL_21;
  }

  v150 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 1;
  sub_1BE0533E4();

  if (v153 == 1)
  {

LABEL_21:
    v144, v64, v65, v66, v67, v68, v69, v70;

    return;
  }

  v139 = v151;
  v140 = v150;
  v138 = v152;
  v72 = v147;
  v71 = v148;
  if (MEMORY[0x1BFB403F0](v148, v147, v149, v143, v142, v141))
  {
    v144, v73, v74, v75, v76, v77, v78, v79;

    goto LABEL_15;
  }

  LODWORD(v143) = MEMORY[0x1BFB403F0](v140, v139, v138, v71, v72, v149);
  if (v143)
  {
    v80 = v140;
  }

  else
  {
    v80 = v71;
  }

  if (v143)
  {
    v81 = v139;
  }

  else
  {
    v81 = v72;
  }

  if (v143)
  {
    v82 = v138;
  }

  else
  {
    v82 = v149;
  }

  v148 = v81;
  v149 = v80;
  LODWORD(v147) = v82;
  v83 = sub_1BE053344();
  v84 = PKCurrencyAmountMake();

  if (!v84)
  {
    v144, v85, v86, v87, v88, v89, v90, v91;

LABEL_43:
    return;
  }

  v142 = objc_allocWithZone(MEMORY[0x1E69B8410]);
  sub_1BD0E5E8C(0, &qword_1EBD4E090, 0x1E69B83A8);
  v92 = v22;
  v93 = v84;
  v94 = sub_1BE052724();
  v95 = [v142 initWithAccount:v92 peerPaymentAccount:v23 peerPaymentPass:v24 transferType:2 fundingSources:v94 currencyAmount:v93];
  v142 = v92;

  v96 = v93;
  if (!v95)
  {

    v144, v130, v131, v132, v133, v134, v135, v136;
    goto LABEL_43;
  }

  if (v143)
  {
    v97 = "APPLE_CASH_TRANSFER_LIMIT_LABEL";
  }

  else
  {
    v97 = "APPLE_CASH_BALANCE_LABEL";
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1BE0B7020;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B80E0], v1);
  v99 = PKPassKitBundle();
  if (v99)
  {
    v100 = v99;
    v101 = v97 - 32;
    sub_1BE04B6F4();
    v103 = v102;

    (*(v2 + 8))(v4, v1);
    v104 = sub_1BE053344();
    v105 = sub_1BE052404();
    v103, v106, v107, v108, v109, v110, v111, v112;
    v113 = v144;
    v114 = sub_1BE052404();
    v115 = [objc_opt_self() suggestionWithTitle:v105 value:v104 currencyCode:v114];

    if (v115)
    {
      (v101 | 0x8000000000000000), v116, v117, v118, v119, v120, v121, v122;
      v113, v123, v124, v125, v126, v127, v128, v129;
      *(v98 + 32) = v115;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD7969DC(uint64_t a1)
{
  type metadata accessor for CurrencyAmountPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570, &qword_1BE0F71F0);
  return sub_1BE04E234();
}

void sub_1BD796A64(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (*result & 1) == 0 && *a2 && (sub_1BD796AD0())
  {
    v4 = type metadata accessor for CurrencyAmountPickerView(0);
    if (*(a3 + *(v4 + 56)))
    {
      sub_1BD796F50(0);
    }

    else
    {
      (*(a3 + *(v4 + 48)))();
    }
  }
}

uint64_t sub_1BD796AD0()
{
  v1 = v0;
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v141);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  v28 = v141;
  if (!v141 || (v141 >> 62 ? (v135 = v141, v29 = sub_1BE053704(), v28 = v135) : (v29 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10)), (v28, v21, v22, v23, v24, v25, v26, v27, v29 < 1) || (v30 = swift_getKeyPath(), v31 = swift_getKeyPath(), sub_1BE04D8B4(&v141), v30, v32, v33, v34, v35, v36, v37, v38, v31, v39, v40, v41, v42, v43, v44, v45, (v53 = v141) != 0) && (v141 >> 62 ? (v138 = v141, v54 = sub_1BE053704(), v53 = v138) : (v54 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10)), v53, v46, v47, v48, v49, v50, v51, v52, v54 > 0)) || (sub_1BD79D880(), (v55 & 1) != 0))
  {
    sub_1BD791FE8();
    if (v56)
    {
      v57 = swift_getKeyPath();
      v58 = swift_getKeyPath();
      sub_1BE04D8B4(&v141);
      v57, v59, v60, v61, v62, v63, v64, v65;
      v58, v66, v67, v68, v69, v70, v71, v72;
      v80 = v141;
      if (v141)
      {
        if (v141 >> 62)
        {
          v137 = v141;
          v81 = sub_1BE053704();
          v80 = v137;
        }

        else
        {
          v81 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v80, v73, v74, v75, v76, v77, v78, v79;
        if (v81 > 0)
        {
          return 1;
        }
      }

      sub_1BD79D880();
      if (v82)
      {
        return 1;
      }
    }

    v84 = swift_getKeyPath();
    v85 = swift_getKeyPath();
    sub_1BE04D8B4(&v141);
    v84, v86, v87, v88, v89, v90, v91, v92;
    v85, v93, v94, v95, v96, v97, v98, v99;
    v107 = v141;
    if (!v141 || (v141 >> 62 ? (v136 = v141, v108 = sub_1BE053704(), v107 = v136) : (v108 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10)), v107, v100, v101, v102, v103, v104, v105, v106, v108 <= 0))
    {
      sub_1BD7A0048(v1, &v139[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      sub_1BE0528A4();
      v109 = sub_1BE052894();
      v110 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v111 = swift_allocObject();
      v112 = MEMORY[0x1E69E85E0];
      *(v111 + 16) = v109;
      *(v111 + 24) = v112;
      sub_1BD7A16C8(&v139[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v111 + v110, type metadata accessor for CurrencyAmountPickerView);
      v113 = sub_1BE052894();
      v114 = swift_allocObject();
      *(v114 + 16) = v113;
      *(v114 + 24) = v112;
      sub_1BE051934();
      v115 = v141;
      v116 = v142;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
      MEMORY[0x1BFB3E970](&v140, v117);
      LOBYTE(v113) = v140;
      v116, v118, v119, v120, v121, v122, v123, v124;
      v115, v125, v126, v127, v128, v129, v130, v131;
      if ((v113 & 1) == 0)
      {
        sub_1BD798E3C(0);
      }
    }
  }

  else
  {
    v132 = v1 + *(v2 + 104);
    v133 = *v132;
    v134 = *(v132 + 8);
    LOBYTE(v141) = v133;
    v142 = v134;
    v140 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }

  return 0;
}

void sub_1BD796F50(char a1)
{
  v2 = v1;
  v4 = sub_1BE050144();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CurrencyAmountPickerView(0);
  v12 = (v1 + v11[16]);
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v32) = v13;
  *(&v32 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v31 == 1)
  {
    sub_1BE04D1E4();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v4;
      v18 = a1;
      v19 = v17;
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "Transfer eligibility already approved in currency picker", v17, 2u);
      v20 = v19;
      a1 = v18;
      v4 = v29;
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v32 = *(v2 + v11[29]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68, &qword_1BE0D8770);
    sub_1BE0516A4();
    if (v31)
    {
    }

    else
    {
      v27 = sub_1BD70A4F8(v6);
      MEMORY[0x1EEE9AC00](v27);
      *(&v28 - 2) = v2;
      *(&v28 - 8) = a1 & 1;
      sub_1BE050134();
      (*(v30 + 8))(v6, v4);
    }
  }

  else
  {
    v21 = (v1 + v11[18]);
    v22 = *v21;
    v23 = *(v21 + 1);
    LOBYTE(v32) = v22;
    *(&v32 + 1) = v23;
    LOBYTE(v31) = a1 & 1;
    sub_1BE0516B4();
    v24 = (v1 + v11[17]);
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v32) = v25;
    *(&v32 + 1) = v26;
    LOBYTE(v31) = 1;
    sub_1BE0516B4();
  }
}

void sub_1BD797290(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_1BE050144();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a2 == 1)
  {
    v9 = type metadata accessor for CurrencyAmountPickerView(0);
    if (*(a3 + *(v9 + 60)))
    {
      v10 = (a3 + *(v9 + 72));
      v11 = *v10;
      v12 = *(v10 + 1);
      LOBYTE(v18) = v11;
      *(&v18 + 1) = v12;
      v13 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516A4();
      v14 = v17;
      v18 = *(a3 + *(v13 + 116));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68, &qword_1BE0D8770);
      sub_1BE0516A4();
      if (v17)
      {
      }

      else
      {
        v15 = sub_1BD70A4F8(v8);
        MEMORY[0x1EEE9AC00](v15);
        *(&v16 - 2) = a3;
        *(&v16 - 8) = v14;
        sub_1BE050134();
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

uint64_t sub_1BD797458@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for CurrencyAmountPickerView(0);
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v22);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v22;
  v20 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithUnavailableFundingSourceTopicForAccount_];
  result = sub_1BE0501F4();
  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BD797514@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EB0, &qword_1BE0F70F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for CurrencyAmountPickerView(0);
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(v46);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  v24 = v46[0];
  if (!v46[0])
  {
    goto LABEL_13;
  }

  v25 = [v46[0] currentBalance];
  v26 = [v24 availableBalance];
  v27 = v26;
  if (!v25)
  {
    if (!v26)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v26)
  {
    v27 = v25;
LABEL_9:

    goto LABEL_10;
  }

  sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
  v28 = sub_1BE053074();

  if ((v28 & 1) == 0)
  {
LABEL_10:
    if (*(v1 + *(v7 + 32)) == 3 && (*(v1 + *(v7 + 56)) & 1) == 0)
    {
      v45 = sub_1BE0501B4();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EB8, &qword_1BE0F70F8);
      v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52EC0, &qword_1BE0F7100);
      v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
      v33 = sub_1BD7A106C();
      v34 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
      v46[0] = v31;
      v46[1] = v32;
      v46[2] = v33;
      v46[3] = v34;
      swift_getOpaqueTypeConformance2();
      sub_1BE04E304();
      *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EE0, &qword_1BE0F7118) + 36)] = 256;
      LOBYTE(v33) = sub_1BE0501F4();
      sub_1BE04E1F4();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v43 = &v6[*(v3 + 36)];
      *v43 = v33;
      *(v43 + 1) = v36;
      *(v43 + 2) = v38;
      *(v43 + 3) = v40;
      *(v43 + 4) = v42;
      v43[40] = 0;
      sub_1BD0DE204(v6, a1, &qword_1EBD52EB0, &qword_1BE0F70F0);
      v29 = 0;
      return (*(v4 + 56))(a1, v29, 1, v3);
    }
  }

LABEL_12:

LABEL_13:
  v29 = 1;
  return (*(v4 + 56))(a1, v29, 1, v3);
}

uint64_t sub_1BD797888@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CC8, &qword_1BE0F6F00);
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  v6 = type metadata accessor for CurrencyAmountPickerView(0);
  if (*(v1 + *(v6 + 56)) == 1 && (v7 = *(v1 + *(v6 + 60))) != 0)
  {
    v8 = v7;
    *v5 = sub_1BE04F7B4();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CD0, &qword_1BE0F6F08);
    sub_1BD799558(v1, v8, &v5[*(v9 + 44)]);
    v10 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = &v5[*(v3 + 36)];
    *v19 = v10;
    *(v19 + 1) = v12;
    *(v19 + 2) = v14;
    *(v19 + 3) = v16;
    *(v19 + 4) = v18;
    v19[40] = 0;
    sub_1BD0DE204(v5, a1, &qword_1EBD52CC8, &qword_1BE0F6F00);
    return (*(v23 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v21 = *(v23 + 56);

    return v21(a1, 1, 1, v3);
  }
}

void sub_1BD797A80(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CurrencyAmountPickerView(0);
  v60 = *(v4 - 1);
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + v4[14]))
  {
    sub_1BD1E49FC(&v67);
LABEL_12:
    v49 = v76;
    *(a1 + 128) = v75;
    *(a1 + 144) = v49;
    *(a1 + 160) = v77;
    v50 = v72;
    *(a1 + 64) = v71;
    *(a1 + 80) = v50;
    v51 = v74;
    *(a1 + 96) = v73;
    *(a1 + 112) = v51;
    v52 = v68;
    *a1 = v67;
    *(a1 + 16) = v52;
    v53 = v70;
    *(a1 + 32) = v69;
    *(a1 + 48) = v53;
    return;
  }

  v57 = v5;
  v11 = v2 + v4[17];
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v67) = v12;
  *(&v67 + 1) = v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v61)
  {
    v14 = 1;
  }

  else
  {
    v58 = *(v2 + v4[6] + 8);
    KeyPath = swift_getKeyPath();
    v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = KeyPath;
    v17 = swift_getKeyPath();
    sub_1BE04D8B4(&v67);
    v18 = v16;
    v6 = v56;
    v18, v19, v20, v21, v22, v23, v24, v25;
    v17, v26, v27, v28, v29, v30, v31, v32;
    v14 = v67;
  }

  LODWORD(v58) = v14;
  (*(v8 + 104))(v10, *MEMORY[0x1E69B80D8], v7);
  v33 = PKPassKitBundle();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1BE04B6F4();
    v55 = v36;
    v56 = v35;

    (*(v8 + 8))(v10, v7);
    v37 = v2 + v4[21];
    v38 = *v37;
    v39 = *(v37 + 8);
    LOBYTE(v67) = *v37;
    *(&v67 + 1) = v39;
    sub_1BE0516A4();
    v40 = v61;
    sub_1BD7A0048(v2, v6);
    v41 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v42 = swift_allocObject();
    sub_1BD7A16C8(v6, v42 + v41, type metadata accessor for CurrencyAmountPickerView);
    if (qword_1EBD36ED8 != -1)
    {
      swift_once();
    }

    v43 = qword_1EBDAB648;
    v44 = qword_1EBD36EE0;
    sub_1BE048964();
    if (v44 != -1)
    {
      swift_once();
    }

    v45 = qword_1EBDAB650;
    LOBYTE(v67) = v38;
    *(&v67 + 1) = v39;
    sub_1BE048964();
    sub_1BE0516A4();
    v46 = v61;
    v47 = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    *&v61 = v56;
    *(&v61 + 1) = v55;
    *&v62 = v43;
    *(&v62 + 1) = v45;
    LOBYTE(v63) = v58;
    BYTE1(v63) = v40;
    *(&v63 + 1) = sub_1BD7A065C;
    *&v64[0] = v42;
    *(v64 + 8) = 0u;
    *(&v64[1] + 8) = 0u;
    *(&v64[2] + 8) = 0u;
    *(&v64[3] + 8) = 0u;
    *(&v64[4] + 8) = 0u;
    *(&v64[5] + 1) = 0;
    *&v65 = v47;
    *(&v65 + 1) = sub_1BD185ABC;
    v66 = v48;
    PKEdgeInsetsMake();
    v75 = v64[5];
    v76 = v65;
    v77 = v66;
    v71 = v64[1];
    v72 = v64[2];
    v73 = v64[3];
    v74 = v64[4];
    v67 = v61;
    v68 = v62;
    v69 = v63;
    v70 = v64[0];
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1BD797F28(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD797FA8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

double sub_1BD79801C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for CurrencyAmountPickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - v12;
  if ((a1 & 1) == 0)
  {
    v16 = *(v3 + *(v11 + 20) + 8);
    sub_1BD7A0048(v3, &v59 - v12);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    sub_1BD7A16C8(v13, v18 + v17, type metadata accessor for CurrencyAmountPickerView);
    KeyPath = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v21 = v16;
    sub_1BE04D8B4(v65);
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    v20, v29, v30, v31, v32, v33, v34, v35;
    if (*&v65[0])
    {
      if (*&v65[0] >> 62)
      {
        v45 = *&v65[0];
        v46 = sub_1BE053704();
        v45, v47, v48, v49, v50, v51, v52, v53;
        if (v46)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v43 = *((*&v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        *&v65[0], v36, v37, v38, v39, v40, v41, v42;
        if (v43)
        {
          goto LABEL_6;
        }
      }

      v44 = 1;
      goto LABEL_9;
    }

LABEL_6:
    v44 = 0;
LABEL_9:
    type metadata accessor for AccountModel(0);
    sub_1BD79EE14(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
    v60 = sub_1BE04E954();
    v61 = v54;
    v62 = sub_1BD7A0580;
    v63 = v18;
    v64 = v44;
    goto LABEL_10;
  }

  sub_1BD7A0048(v3, v9);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_1BD7A16C8(v9, v15 + v14, type metadata accessor for CurrencyAmountPickerView);
  v60 = sub_1BD7A0568;
  v61 = v15;
  v62 = 0;
  v63 = 0;
  v64 = 256;
LABEL_10:
  sub_1BD5A3BE4();
  sub_1BD47BCBC();
  sub_1BE04F9A4();
  result = *v65;
  v56 = v65[1];
  v57 = v66;
  v58 = v67;
  *a2 = v65[0];
  *(a2 + 16) = v56;
  *(a2 + 32) = v57;
  *(a2 + 33) = v58;
  return result;
}

id sub_1BD798330()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  type metadata accessor for CurrencyAmountPickerView(0);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1BE04D8B4(&v37);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v30 = v37;
  if (v37 && (v37 >> 62 ? (v35 = v37, v31 = sub_1BE053704(), v30 = v35) : (v31 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10)), v30, v23, v24, v25, v26, v27, v28, v29, v31 == 1))
  {
    (*(v1 + 104))(v6, *MEMORY[0x1E69B80E0], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();
LABEL_9:

      (*(v1 + 8))(v6, v0);
      return v34;
    }
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x1E69B80E0], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();
      v6 = v3;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD7985A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for CurrencyAmountPickerView(0);
  v71 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = v4;
  v79 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v63 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - v25;
  v27 = *(v6 + 104);
  v77 = *MEMORY[0x1E69B80E0];
  v76 = v27;
  v27(v12, v24);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v29 = result;
  v30 = sub_1BE04B6F4();
  v32 = v31;

  v33 = *(v6 + 8);
  v72 = v6 + 8;
  v34 = v33;
  v33(v12, v5);
  v80 = v30;
  v81 = v32;
  v73 = a1;
  v35 = v79;
  sub_1BD7A0048(a1, v79);
  v36 = (v71[80] + 16) & ~v71[80];
  v37 = swift_allocObject();
  sub_1BD7A16C8(v35, v37 + v36, type metadata accessor for CurrencyAmountPickerView);
  sub_1BD0DDEBC();
  v71 = v26;
  sub_1BE051744();
  v38 = v70;
  v76(v70, v77, v5);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v39 = result;
  v40 = sub_1BE04B6F4();
  v42 = v41;

  v34(v38, v5);
  v80 = v40;
  v81 = v42;
  v43 = v79;
  sub_1BD7A0048(v73, v79);
  v44 = swift_allocObject();
  sub_1BD7A16C8(v43, v44 + v36, type metadata accessor for CurrencyAmountPickerView);
  sub_1BE051744();
  v45 = v69;
  v76(v69, v77, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v46 = result;
    v47 = sub_1BE04B6F4();
    v49 = v48;

    v34(v45, v5);
    v80 = v47;
    v81 = v49;
    v50 = v79;
    sub_1BD7A0048(v73, v79);
    v51 = swift_allocObject();
    sub_1BD7A16C8(v50, v51 + v36, type metadata accessor for CurrencyAmountPickerView);
    v52 = v65;
    sub_1BE051744();
    v53 = v63;
    v54 = v64;
    v55 = *(v63 + 16);
    v56 = v74;
    v55(v74, v71, v64);
    v57 = v66;
    v58 = v75;
    v55(v66, v75, v54);
    v59 = v67;
    v55(v67, v52, v54);
    v60 = v68;
    v55(v68, v56, v54);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CC0, &qword_1BE0F6EA8);
    v55(&v60[*(v61 + 48)], v57, v54);
    v55(&v60[*(v61 + 64)], v59, v54);
    v62 = *(v53 + 8);
    v62(v52, v54);
    v62(v58, v54);
    v62(v71, v54);
    v62(v59, v54);
    v62(v57, v54);
    return (v62)(v74, v54);
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1BD798CEC(uint64_t a1)
{
  type metadata accessor for CurrencyAmountPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  [objc_opt_self() deviceSupportsBusinessChat];
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD798DC0(uint64_t a1)
{
  type metadata accessor for CurrencyAmountPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return sub_1BD798E3C(0);
}

uint64_t sub_1BD798E3C(int a1)
{
  v34 = a1;
  v35 = sub_1BE04D214();
  v1 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrencyAmountPickerView(0);
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver, &unk_1BE0F6954);
  v4 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v37);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  v4, v21, v22, v23, v24, v25, v26, v27;
  if (v37 == 2)
  {
    sub_1BE04E3C4();
    v28 = v34 & 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v28;
    return sub_1BE04D8C4();
  }

  else
  {
    sub_1BE04D1E4();
    v30 = sub_1BE04D204();
    v31 = sub_1BE052C34();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1BD026000, v30, v31, "Transfer action sheet already set, ignoring", v32, 2u);
      MEMORY[0x1BFB45F20](v32, -1, -1);
    }

    return (*(v1 + 8))(v3, v35);
  }
}

uint64_t sub_1BD7990B8@<X0>(uint64_t a1@<X8>)
{
  sub_1BD799114();
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id sub_1BD799114()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v89 - v5;
  type metadata accessor for CurrencyAmountPickerView(0);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1BE04D8B4(&v90);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v30 = v90;
  if (!v90 || (v90 >> 62 ? (v88 = v90, v31 = sub_1BE053704(), v30 = v88) : (v31 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10)), (v30, v23, v24, v25, v26, v27, v28, v29, v31 != 1) || (v32 = swift_getKeyPath(), v33 = swift_getKeyPath(), sub_1BE04D8B4(&v90), v32, v34, v35, v36, v37, v38, v39, v40, v33, v41, v42, v43, v44, v45, v46, v47, (v55 = v90) == 0)))
  {
LABEL_21:
    (*(v1 + 104))(v3, *MEMORY[0x1E69B80E0], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v65 = result;
      v80 = sub_1BE04B6F4();
      v6 = v3;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (!(v90 >> 62))
  {
    result = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_20:
    v55, v48, v49, v50, v51, v52, v53, v54;
    goto LABEL_21;
  }

LABEL_8:
  if ((v55 & 0xC000000000000001) != 0)
  {
    v57 = MEMORY[0x1BFB40900](0, v55);
  }

  else
  {
    if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v57 = *(v55 + 32);
  }

  v65 = v57;
  v55, v58, v59, v60, v61, v62, v63, v64;
  v66 = [v65 fundingDetails];
  if (!v66)
  {

    goto LABEL_21;
  }

  v67 = v66;
  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  if (!v68)
  {

    goto LABEL_21;
  }

  v69 = v68;
  (*(v1 + 104))(v6, *MEMORY[0x1E69B80E0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1BE0B6CA0;
  result = [v69 name];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v71 = result;
  v72 = sub_1BE052434();
  v74 = v73;

  *(v70 + 56) = MEMORY[0x1E69E6158];
  v75 = sub_1BD110550();
  *(v70 + 64) = v75;
  *(v70 + 32) = v72;
  *(v70 + 40) = v74;
  result = [v65 accountSuffix];
  if (result)
  {
    v76 = result;
    v89 = "AVAILABLE_MESSAGE";
    v77 = sub_1BE052434();
    v79 = v78;

    *(v70 + 96) = MEMORY[0x1E69E6158];
    *(v70 + 104) = v75;
    *(v70 + 72) = v77;
    *(v70 + 80) = v79;
    v80 = sub_1BE04B714();

    v70, v81, v82, v83, v84, v85, v86, v87;
LABEL_23:

    (*(v1 + 8))(v6, v0);
    return v80;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BD799558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CD8, &qword_1BE0F6F10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CE0, &qword_1BE0F6F18);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  *v17 = sub_1BE04F7B4();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CE8, &qword_1BE0F6F20);
  sub_1BD7997A0(a1, a2, &v17[*(v18 + 44)]);
  *v11 = sub_1BE0501B4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CF0, &qword_1BE0F6F28);
  sub_1BD79BDB0(a1, &v11[*(v19 + 44)]);
  sub_1BD0DE19C(v17, v14, &qword_1EBD52CE0, &qword_1BE0F6F18);
  sub_1BD0DE19C(v11, v8, &qword_1EBD52CD8, &qword_1BE0F6F10);
  sub_1BD0DE19C(v14, a3, &qword_1EBD52CE0, &qword_1BE0F6F18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CF8, &qword_1BE0F6F30);
  sub_1BD0DE19C(v8, a3 + *(v20 + 48), &qword_1EBD52CD8, &qword_1BE0F6F10);
  sub_1BD0DE53C(v11, &qword_1EBD52CD8, &qword_1BE0F6F10);
  sub_1BD0DE53C(v17, &qword_1EBD52CE0, &qword_1BE0F6F18);
  sub_1BD0DE53C(v8, &qword_1EBD52CD8, &qword_1BE0F6F10);
  return sub_1BD0DE53C(v14, &qword_1EBD52CE0, &qword_1BE0F6F18);
}

uint64_t sub_1BD7997A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v58 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D78, &qword_1BE0F6FC0);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D80, &qword_1BE0F6FC8) - 8;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - v7;
  v8 = type metadata accessor for CurrencyAmountPickerView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = v11;
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D88, &qword_1BE0F6FD0);
  v13 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D90, &qword_1BE0F6FD8);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v43 - v20;
  v43 = a1;
  sub_1BD7A0048(a1, v12);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v47 = type metadata accessor for CurrencyAmountPickerView;
  sub_1BD7A16C8(v12, v22 + v21, type metadata accessor for CurrencyAmountPickerView);
  v61 = a1;
  v62 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D98, &qword_1BE0F6FE0);
  sub_1BD7A0960();
  sub_1BE051704();
  v63 = 1;
  v46 = MEMORY[0x1E697D680];
  sub_1BD0DE4F4(&qword_1EBD52DB8, &qword_1EBD52D88, &qword_1BE0F6FD0, MEMORY[0x1E697D680]);
  v45 = sub_1BD7A0A8C();
  v23 = v44;
  v24 = v49;
  sub_1BE0508A4();
  (*(v13 + 8))(v15, v24);
  v25 = *(v9 + 40);
  v26 = v43;
  v27 = *(v43 + v25);
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = v27 == 3;
  v30 = (v23 + *(v17 + 44));
  *v30 = KeyPath;
  v30[1] = sub_1BD185ABC;
  v30[2] = v29;
  sub_1BD7A0048(v26, v12);
  v31 = swift_allocObject();
  sub_1BD7A16C8(v12, v31 + v21, v47);
  v59 = v26;
  v60 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DC8, &qword_1BE0F6FF0);
  sub_1BD7A0B00();
  v32 = v52;
  sub_1BE051704();
  v63 = 256;
  sub_1BD0DE4F4(&qword_1EBD52DE8, &qword_1EBD52D78, &qword_1BE0F6FC0, v46);
  v33 = v51;
  v34 = v53;
  sub_1BE0508A4();
  (*(v55 + 8))(v32, v34);
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v27 == 2;
  v37 = (v33 + *(v54 + 44));
  *v37 = v35;
  v37[1] = sub_1BD185ABC;
  v37[2] = v36;
  v38 = v50;
  sub_1BD0DE19C(v23, v50, &qword_1EBD52D90, &qword_1BE0F6FD8);
  v39 = v56;
  sub_1BD0DE19C(v33, v56, &qword_1EBD52D80, &qword_1BE0F6FC8);
  v40 = v57;
  sub_1BD0DE19C(v38, v57, &qword_1EBD52D90, &qword_1BE0F6FD8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DF0, &qword_1BE0F7000);
  sub_1BD0DE19C(v39, v40 + *(v41 + 48), &qword_1EBD52D80, &qword_1BE0F6FC8);
  sub_1BD0DE53C(v33, &qword_1EBD52D80, &qword_1BE0F6FC8);
  sub_1BD0DE53C(v23, &qword_1EBD52D90, &qword_1BE0F6FD8);
  sub_1BD0DE53C(v39, &qword_1EBD52D80, &qword_1BE0F6FC8);
  return sub_1BD0DE53C(v38, &qword_1EBD52D90, &qword_1BE0F6FD8);
}

void sub_1BD799E58(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32)) == 2)
  {
    sub_1BD799E98(1);
  }
}

void sub_1BD799E98(char a1)
{
  v3 = type metadata accessor for CurrencyAmountPickerView(0);
  v4 = *(v1 + v3[6] + 8);
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4((&v55 + 1));
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  if ((v55 & 0x100) != 0 || (v21 = swift_getKeyPath(), v22 = swift_getKeyPath(), sub_1BE04D8B4(&v55), v21, v23, v24, v25, v26, v27, v28, v29, v22, v30, v31, v32, v33, v34, v35, v36, v55 != 1))
  {
    v37 = swift_getKeyPath();
    v38 = swift_getKeyPath();
    sub_1BE04D8B4(&v54);
    v37, v39, v40, v41, v42, v43, v44, v45;
    v38, v46, v47, v48, v49, v50, v51, v52;
    v53 = *(v4 + OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_account);
    *(v4 + OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_account) = v54;

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1C8))();
  }

  else if (sub_1BD796AD0())
  {
    if (*(v1 + v3[14]))
    {
      sub_1BD796F50(a1 & 1);
    }

    else
    {
      (*(v1 + v3[12]))();
    }
  }
}

uint64_t sub_1BD79A074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a3;
  v27[0] = sub_1BE04FF64();
  v5 = *(v27[0] - 8);
  MEMORY[0x1EEE9AC00](v27[0]);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DA8, &qword_1BE0F6FE8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E50, &qword_1BE0F70B0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E58, &qword_1BE0F70B8);
  sub_1BD79A340(a1, a2, &v10[*(v15 + 44)]);
  sub_1BE04FF44();
  v16 = sub_1BD0DE4F4(&qword_1EBD52DB0, &qword_1EBD52DA8, &qword_1BE0F6FE8, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v5 + 8))(v7, v27[0]);
  sub_1BD0DE53C(v10, &qword_1EBD52DA8, &qword_1BE0F6FE8);
  sub_1BE052434();
  v18 = v17;
  v27[2] = v8;
  v27[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v18, v19, v20, v21, v22, v23, v24, v25;
  return (*(v12 + 8))(v14, v11);
}

id sub_1BD79A340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v97 = a2;
  v103 = a3;
  v93 = sub_1BE04C744();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BE04C734();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v90 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E08, &qword_1BE0F7018);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v90 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E60, &qword_1BE0F70C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v90 - v14;
  v15 = sub_1BE04BD74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v99 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v90 - v22;
  v24 = a1;
  v25 = *(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32));
  (*(v16 + 104))(v18, *MEMORY[0x1E69B80E0], v15);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v95 = v25;
    v28 = sub_1BE04B6F4();
    v30 = v29;
    0xED00004D4F52465FLL, v29, v31, v32, v33, v34, v35, v36;

    (*(v16 + 8))(v18, v15);
    *&v113 = v28;
    *(&v113 + 1) = v30;
    sub_1BD0DDEBC();
    v37 = sub_1BE0506C4();
    v39 = v38;
    v41 = v40;
    *&v113 = v37;
    *(&v113 + 1) = v38;
    v43 = (v42 & 1);
    LOBYTE(v114) = v42 & 1;
    *(&v114 + 1) = v40;
    sub_1BE052434();
    v45 = v44;
    v104 = v23;
    sub_1BE050DE4();
    v45, v46, v47, v48, v49, v50, v51, v52;
    sub_1BD0DDF10(v37, v39, v43, v53, v54, v55, v56, v57);
    v41, v58, v59, v60, v61, v62, v63, v64;
    sub_1BD79AB74(v24, v97, &v113);
    LOBYTE(v39) = v115;
    v65 = BYTE1(v115);
    v97 = v113;
    v94 = v114;
    KeyPath = swift_getKeyPath();
    v111 = v65;
    v110 = 0;
    v67 = sub_1BE051494();
    v68 = swift_getKeyPath();
    v106 = v94;
    v105 = v97;
    LOBYTE(v107) = v39;
    BYTE1(v107) = v111;
    *(&v107 + 1) = KeyPath;
    *&v108 = 1;
    BYTE8(v108) = v110;
    *(&v108 + 9) = *v112;
    HIDWORD(v108) = *&v112[3];
    *&v109 = v68;
    *(&v109 + 1) = v67;
    sub_1BE052434();
    v70 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E68, &qword_1BE0F70C8);
    sub_1BD7A0DC8();
    v71 = v96;
    sub_1BE050DE4();
    v70, v72, v73, v74, v75, v76, v77, v78;
    v115 = v107;
    v116 = v108;
    v117 = v109;
    v113 = v105;
    v114 = v106;
    sub_1BD0DE53C(&v113, &qword_1EBD52E68, &qword_1BE0F70C8);
    v79 = 1;
    v80 = v101;
    v81 = v100;
    if (v95 == 2)
    {
      (*(v92 + 104))(v91, *MEMORY[0x1E69BC950], v93);
      v82 = v90;
      sub_1BE04C724();
      (*(v81 + 32))(v10, v82, v80);
      v79 = 0;
    }

    (*(v81 + 56))(v10, v79, 1, v80);
    v83 = v99;
    sub_1BD0DE19C(v104, v99, &qword_1EBD452C0, &qword_1BE0B7620);
    v84 = v71;
    v85 = v98;
    sub_1BD0DE19C(v71, v98, &qword_1EBD52E60, &qword_1BE0F70C0);
    v86 = v102;
    sub_1BD0DE19C(v10, v102, &qword_1EBD52E08, &qword_1BE0F7018);
    v87 = v103;
    sub_1BD0DE19C(v83, v103, &qword_1EBD452C0, &qword_1BE0B7620);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EA8, &qword_1BE0F70E8);
    v89 = v87 + v88[12];
    *v89 = 0;
    *(v89 + 8) = 1;
    sub_1BD0DE19C(v85, v87 + v88[16], &qword_1EBD52E60, &qword_1BE0F70C0);
    sub_1BD0DE19C(v86, v87 + v88[20], &qword_1EBD52E08, &qword_1BE0F7018);
    sub_1BD0DE53C(v10, &qword_1EBD52E08, &qword_1BE0F7018);
    sub_1BD0DE53C(v84, &qword_1EBD52E60, &qword_1BE0F70C0);
    sub_1BD0DE53C(v104, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v86, &qword_1EBD52E08, &qword_1BE0F7018);
    sub_1BD0DE53C(v85, &qword_1EBD52E60, &qword_1BE0F70C0);
    return sub_1BD0DE53C(v83, &qword_1EBD452C0, &qword_1BE0B7620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD79AB74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  if (*(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32)) == 2)
  {
    if (![a2 accountPaymentUsePeerPaymentBalance])
    {
      v28 = [a2 defaultBankAccount];
      v29 = [v28 bankName];

      if (v29)
      {
        v30 = sub_1BE052434();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0xE000000000000000;
      }

      *&v42 = v30;
      *(&v42 + 1) = v32;
      sub_1BD0DDEBC();
      *&v39 = sub_1BE0506C4();
      *(&v39 + 1) = v34;
      *&v40 = v33 & 1;
      *(&v40 + 1) = v35;
      LOBYTE(v41) = 1;
      goto LABEL_11;
    }

    (*(v7 + 104))(v12, *MEMORY[0x1E69B80E0], v6);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v17 = v16;

      (*(v7 + 8))(v12, v6);
      *&v42 = v15;
      *(&v42 + 1) = v17;
      sub_1BD0DDEBC();
      *&v39 = sub_1BE0506C4();
      *(&v39 + 1) = v18;
      *&v40 = v19 & 1;
      *(&v40 + 1) = v20;
      LOBYTE(v41) = 0;
LABEL_11:
      sub_1BE04F9A4();
      v39 = v42;
      v40 = v43;
      v41 = v44;
      goto LABEL_12;
    }
  }

  else
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E69B80E0], v6);
    result = PKPassKitBundle();
    if (result)
    {
      v21 = result;
      v22 = sub_1BE04B6F4();
      v24 = v23;

      (*(v7 + 8))(v9, v6);
      *&v42 = v22;
      *(&v42 + 1) = v24;
      sub_1BD0DDEBC();
      *&v39 = sub_1BE0506C4();
      *(&v39 + 1) = v26;
      *&v40 = v25 & 1;
      *(&v40 + 1) = v27;
      v41 = 256;
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
      sub_1BD170E70();
      result = sub_1BE04F9A4();
      v36 = v43;
      v37 = v44;
      v38 = v45;
      *a3 = v42;
      *(a3 + 16) = v36;
      *(a3 + 32) = v37;
      *(a3 + 33) = v38;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD79AF14(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32)) == 3)
  {
    sub_1BD799E98(1);
  }
}

uint64_t sub_1BD79AF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a3;
  v27[0] = sub_1BE04FF64();
  v5 = *(v27[0] - 8);
  MEMORY[0x1EEE9AC00](v27[0]);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DD8, &qword_1BE0F6FF8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52DF8, &qword_1BE0F7008);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E00, &qword_1BE0F7010);
  sub_1BD79B220(a1, a2, &v10[*(v15 + 44)]);
  sub_1BE04FF44();
  v16 = sub_1BD0DE4F4(&qword_1EBD52DE0, &qword_1EBD52DD8, &qword_1BE0F6FF8, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v5 + 8))(v7, v27[0]);
  sub_1BD0DE53C(v10, &qword_1EBD52DD8, &qword_1BE0F6FF8);
  sub_1BE052434();
  v18 = v17;
  v27[2] = v8;
  v27[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v18, v19, v20, v21, v22, v23, v24, v25;
  return (*(v12 + 8))(v14, v11);
}

id sub_1BD79B220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v94 = a2;
  v100 = a3;
  v91 = sub_1BE04C744();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1BE04C734();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v88 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E08, &qword_1BE0F7018);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v88 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E10, &unk_1BE0F7020);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - v14;
  v16 = sub_1BE04BD74();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v95 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v88 - v24;
  (*(v17 + 104))(v19, *MEMORY[0x1E69B80E0], v16, v23);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v30 = v29;

    (*(v17 + 8))(v19, v16);
    *&v109 = v28;
    *(&v109 + 1) = v30;
    sub_1BD0DDEBC();
    v31 = sub_1BE0506C4();
    v33 = v32;
    v35 = v34;
    *&v109 = v31;
    *(&v109 + 1) = v32;
    v37 = (v36 & 1);
    LOBYTE(v110) = v36 & 1;
    *(&v110 + 1) = v34;
    sub_1BE052434();
    v39 = v38;
    v93 = v25;
    sub_1BE050DE4();
    v39, v40, v41, v42, v43, v44, v45, v46;
    sub_1BD0DDF10(v31, v33, v37, v47, v48, v49, v50, v51);
    v35, v52, v53, v54, v55, v56, v57, v58;
    sub_1BD79BA10(a1, v94, &v109);
    LOBYTE(v33) = v111;
    v59 = BYTE1(v111);
    v94 = v109;
    v92 = v110;
    KeyPath = swift_getKeyPath();
    v107 = v59;
    v106 = 0;
    v61 = sub_1BE051494();
    v62 = swift_getKeyPath();
    v102 = v92;
    v101 = v94;
    LOBYTE(v103) = v33;
    BYTE1(v103) = v107;
    *(&v103 + 1) = KeyPath;
    *&v104 = 1;
    BYTE8(v104) = v106;
    *(&v104 + 9) = *v108;
    HIDWORD(v104) = *&v108[3];
    *&v105 = v62;
    *(&v105 + 1) = v61;
    sub_1BE052434();
    v64 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E18, &qword_1BE0F7090);
    sub_1BD7A0C2C();
    sub_1BE050DE4();
    v64, v65, v66, v67, v68, v69, v70, v71;
    v111 = v103;
    v112 = v104;
    v113 = v105;
    v109 = v101;
    v110 = v102;
    sub_1BD0DE53C(&v109, &qword_1EBD52E18, &qword_1BE0F7090);
    v72 = type metadata accessor for CurrencyAmountPickerView(0);
    v73 = 1;
    v74 = v97;
    v75 = v96;
    if (*(a1 + *(v72 + 32)) == 3)
    {
      (*(v90 + 104))(v89, *MEMORY[0x1E69BC950], v91);
      v76 = v88;
      sub_1BE04C724();
      (*(v75 + 32))(v10, v76, v74);
      v73 = 0;
    }

    (*(v75 + 56))(v10, v73, 1, v74);
    v77 = v93;
    v78 = v95;
    sub_1BD0DE19C(v93, v95, &qword_1EBD452C0, &qword_1BE0B7620);
    v79 = v15;
    v80 = v15;
    v81 = v98;
    sub_1BD0DE19C(v80, v98, &qword_1EBD52E10, &unk_1BE0F7020);
    v82 = v99;
    sub_1BD0DE19C(v10, v99, &qword_1EBD52E08, &qword_1BE0F7018);
    v83 = v10;
    v84 = v81;
    v85 = v100;
    sub_1BD0DE19C(v78, v100, &qword_1EBD452C0, &qword_1BE0B7620);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52E48, &qword_1BE0F70A8);
    v87 = v85 + v86[12];
    *v87 = 0;
    *(v87 + 8) = 1;
    sub_1BD0DE19C(v84, v85 + v86[16], &qword_1EBD52E10, &unk_1BE0F7020);
    sub_1BD0DE19C(v82, v85 + v86[20], &qword_1EBD52E08, &qword_1BE0F7018);
    sub_1BD0DE53C(v83, &qword_1EBD52E08, &qword_1BE0F7018);
    sub_1BD0DE53C(v79, &qword_1EBD52E10, &unk_1BE0F7020);
    sub_1BD0DE53C(v77, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v82, &qword_1EBD52E08, &qword_1BE0F7018);
    sub_1BD0DE53C(v84, &qword_1EBD52E10, &unk_1BE0F7020);
    return sub_1BD0DE53C(v78, &qword_1EBD452C0, &qword_1BE0B7620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD79BA10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  if (*(a1 + *(type metadata accessor for CurrencyAmountPickerView(0) + 32)) != 2)
  {
    if ([a2 accountPaymentUsePeerPaymentBalance])
    {
      (*(v7 + 104))(v9, *MEMORY[0x1E69B80E0], v6);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_14;
      }

      v21 = result;
      v22 = sub_1BE04B6F4();
      v24 = v23;

      (*(v7 + 8))(v9, v6);
      *&v42 = v22;
      *(&v42 + 1) = v24;
      sub_1BD0DDEBC();
      *&v39 = sub_1BE0506C4();
      *(&v39 + 1) = v25;
      *&v40 = v26 & 1;
      *(&v40 + 1) = v27;
      LOBYTE(v41) = 0;
    }

    else
    {
      v28 = [a2 defaultBankAccount];
      v29 = [v28 bankName];

      if (v29)
      {
        v30 = sub_1BE052434();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0xE000000000000000;
      }

      *&v42 = v30;
      *(&v42 + 1) = v32;
      sub_1BD0DDEBC();
      *&v39 = sub_1BE0506C4();
      *(&v39 + 1) = v34;
      *&v40 = v33 & 1;
      *(&v40 + 1) = v35;
      LOBYTE(v41) = 1;
    }

    sub_1BE04F9A4();
    v39 = v42;
    v40 = v43;
    LOBYTE(v41) = v44;
    HIBYTE(v41) = 1;
    goto LABEL_12;
  }

  (*(v7 + 104))(v12, *MEMORY[0x1E69B80E0], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v7 + 8))(v12, v6);
    *&v42 = v15;
    *(&v42 + 1) = v17;
    sub_1BD0DDEBC();
    *&v39 = sub_1BE0506C4();
    *(&v39 + 1) = v18;
    *&v40 = v19 & 1;
    *(&v40 + 1) = v20;
    v41 = 0;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
    sub_1BD170E70();
    result = sub_1BE04F9A4();
    v36 = v43;
    v37 = v44;
    v38 = v45;
    *a3 = v42;
    *(a3 + 16) = v36;
    *(a3 + 32) = v37;
    *(a3 + 33) = v38;
    return result;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1BD79BDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D00, &qword_1BE0F6F38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D08, &qword_1BE0F6F40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D10, &qword_1BE0F6F48);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D18, &qword_1BE0F6F50);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0x4028000000000000;
  v11[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D20, &qword_1BE0F6F58);
  sub_1BD79C458(&v11[*(v22 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v11, v15, &qword_1EBD52D08, &qword_1BE0F6F40);
  v23 = &v15[*(v13 + 44)];
  v24 = v52;
  *(v23 + 4) = v51;
  *(v23 + 5) = v24;
  *(v23 + 6) = v53;
  v25 = v48;
  *v23 = v47;
  *(v23 + 1) = v25;
  v26 = v50;
  *(v23 + 2) = v49;
  *(v23 + 3) = v26;
  LOBYTE(v11) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1BD0DE204(v15, v21, &qword_1EBD52D10, &qword_1BE0F6F48);
  v35 = &v21[*(v16 + 36)];
  v43 = v21;
  *v35 = v11;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v46 = a1;
  sub_1BE0501B4();
  sub_1BD7A06E4();
  sub_1BE04E304();
  sub_1BD0DE19C(v21, v18, &qword_1EBD52D18, &qword_1BE0F6F50);
  v36 = *(v4 + 16);
  v37 = v44;
  v36(v44, v8, v3);
  v38 = v45;
  sub_1BD0DE19C(v18, v45, &qword_1EBD52D18, &qword_1BE0F6F50);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D40, &unk_1BE0F6F60);
  v36((v38 + *(v39 + 48)), v37, v3);
  v40 = *(v4 + 8);
  v40(v8, v3);
  sub_1BD0DE53C(v43, &qword_1EBD52D18, &qword_1BE0F6F50);
  v40(v37, v3);
  return sub_1BD0DE53C(v18, &qword_1EBD52D18, &qword_1BE0F6F50);
}

uint64_t sub_1BD79C234@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D08, &qword_1BE0F6F40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D10, &qword_1BE0F6F48);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - v7;
  *v4 = sub_1BE04F7C4();
  *(v4 + 1) = 0x4028000000000000;
  v4[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D20, &qword_1BE0F6F58);
  sub_1BD79C458(&v4[*(v9 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v4, v8, &qword_1EBD52D08, &qword_1BE0F6F40);
  v10 = &v8[*(v6 + 44)];
  v11 = v25[5];
  *(v10 + 4) = v25[4];
  *(v10 + 5) = v11;
  *(v10 + 6) = v25[6];
  v12 = v25[1];
  *v10 = v25[0];
  *(v10 + 1) = v12;
  v13 = v25[3];
  *(v10 + 2) = v25[2];
  *(v10 + 3) = v13;
  v14 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1BD0DE204(v8, a1, &qword_1EBD52D10, &qword_1BE0F6F48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D18, &qword_1BE0F6F50);
  v24 = a1 + *(result + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_1BD79C458@<X0>(uint64_t a1@<X8>)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v95);
  v3 = &v91 - v2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D48, &qword_1BE0F6F70);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v91 - v6;
  v7 = PKSavingsFDICSignageEnabled();
  v100 = v3;
  if (v7)
  {
    v8 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    LOBYTE(v106[0]) = 0;
    v94 = v8;
    v92 = 0x1000000;
    v91 = 1;
    v93 = 5;
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v92 = 0;
    v10 = 0;
    v91 = 2;
    v12 = 0;
    v14 = 0;
    v16 = 0;
  }

  *&v106[0] = sub_1BD79CA1C();
  *(&v106[0] + 1) = v17;
  sub_1BD0DDEBC();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1BE050454();
  v26 = sub_1BE0505F4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v25, v27, v29, v31, v33, v34, v35, v36;
  sub_1BD0DDF10(v18, v20, (v22 & 1), v37, v38, v39, v40, v41);
  v24, v42, v43, v44, v45, v46, v47, v48;
  v49 = sub_1BE051494();
  v50 = sub_1BE050564();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v49, v51, v53, v55, v57, v58, v59, v60;
  sub_1BD0DDF10(v26, v28, (v30 & 1), v61, v62, v63, v64, v65);
  v32, v66, v67, v68, v69, v70, v71, v72;
  KeyPath = swift_getKeyPath();
  v74 = sub_1BE0501E4();
  sub_1BE04E1F4();
  LOBYTE(v106[0]) = v54 & 1;
  *&v101 = v50;
  *(&v101 + 1) = v52;
  LOBYTE(v102) = v54 & 1;
  *(&v102 + 1) = v56;
  *&v103 = KeyPath;
  *(&v103 + 1) = 0xC014000000000000;
  LOBYTE(v104) = v74;
  *(&v104 + 1) = v75;
  *v105 = v76;
  *&v105[8] = v77;
  *&v105[16] = v78;
  v105[24] = 0;
  *&v105[25] = 256;
  v79 = *MEMORY[0x1E697E6D0];
  v80 = sub_1BE04EB24();
  v81 = v100;
  (*(*(v80 - 8) + 104))(v100, v79, v80);
  sub_1BD79EE14(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1BE052334();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D50, &qword_1BE0F6FA8);
    sub_1BD7A0828();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    v83 = v96;
    sub_1BE050B34();
    sub_1BD0DE53C(v81, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
    v106[2] = v103;
    v106[3] = v104;
    *v107 = *v105;
    *&v107[11] = *&v105[11];
    v106[0] = v101;
    v106[1] = v102;
    sub_1BD0DE53C(v106, &qword_1EBD52D50, &qword_1BE0F6FA8);
    v84 = v92 | v91;
    v85 = v98;
    v86 = *(v98 + 16);
    v87 = v97;
    v88 = v99;
    v86(v97, v83, v99);
    *a1 = v93;
    *(a1 + 8) = v84;
    *(a1 + 16) = v94;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 40) = v14;
    *(a1 + 48) = v16;
    *(a1 + 56) = 0;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52D70, &qword_1BE0F6FB8);
    v86((a1 + *(v89 + 48)), v87, v88);
    v90 = *(v85 + 8);
    v90(v83, v88);
    return (v90)(v87, v88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD79CA1C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for CurrencyAmountPickerView(0);
  v9 = *(v0 + *(v8 + 32));
  v10 = *(v0 + *(v8 + 60));
  if (v9 == 2)
  {
    if (v10 && ([v10 accountPaymentUsePeerPaymentBalance] & 1) != 0)
    {
      v11 = "FUNDS_IN_ACH_FOOTER";
    }

    else
    {
      v11 = "FUNDS_OUT_APPLE_CASH_FOOTER";
    }
  }

  else if (v10 && ([v10 accountPaymentUsePeerPaymentBalance] & 1) != 0)
  {
    v11 = "AMOUNT_PICKER_FDIC_FOOTER";
  }

  else
  {
    v11 = "BANK_ACCOUNT_UNAVAILABLE_TITLE";
  }

  v39 = v4;
  v12 = *MEMORY[0x1E69B80E0];
  v13 = *(v2 + 104);
  v13(v7, v12, v1);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;
    (v11 | 0x8000000000000000), v17, v19, v20, v21, v22, v23, v24;

    v25 = *(v2 + 8);
    v25(v7, v1);
    v40 = v16;
    v41 = v18;
    if (!PKSavingsFDICSignageEnabled())
    {
      return v16;
    }

    MEMORY[0x1BFB3F610](2570, 0xE200000000000000);
    v26 = v39;
    v13(v39, v12, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v27 = result;
      v28 = sub_1BE04B6F4();
      v30 = v29;

      v25(v26, v1);
      MEMORY[0x1BFB3F610](v28, v30);
      v30, v31, v32, v33, v34, v35, v36, v37;
      return v40;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD79CCDC@<X0>(uint64_t a1@<X8>)
{
  v28[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v28 - v2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80E0], v4, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v5 + 8))(v8, v4);
    *&v34[0] = v11;
    *(&v34[0] + 1) = v13;
    sub_1BD0DDEBC();
    v14 = sub_1BE0506C4();
    v16 = v15;
    LOBYTE(v10) = v17;
    v19 = v18;
    KeyPath = swift_getKeyPath();
    v21 = sub_1BE051494();
    v22 = swift_getKeyPath();
    v23 = v10 & 1;
    v35 = v10 & 1;
    v24 = sub_1BE050454();
    v25 = swift_getKeyPath();
    *&v29 = v14;
    *(&v29 + 1) = v16;
    LOBYTE(v30) = v23;
    *(&v30 + 1) = v19;
    *&v31 = KeyPath;
    BYTE8(v31) = 1;
    *&v32 = v22;
    *(&v32 + 1) = v21;
    *&v33 = v25;
    *(&v33 + 1) = v24;
    v26 = *MEMORY[0x1E697E6D0];
    v27 = sub_1BE04EB24();
    (*(*(v27 - 8) + 104))(v3, v26, v27);
    sub_1BD79EE14(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    result = sub_1BE052334();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52EC0, &qword_1BE0F7100);
      sub_1BD7A106C();
      sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
      sub_1BE050B34();
      sub_1BD0DE53C(v3, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
      v34[2] = v31;
      v34[3] = v32;
      v34[4] = v33;
      v34[0] = v29;
      v34[1] = v30;
      return sub_1BD0DE53C(v34, &qword_1EBD52EC0, &qword_1BE0F7100);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD79D064(void *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for CurrencyAmountPickerView(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v113 - v13;
  v15 = *(a2 + *(v11 + 60));
  if (a3)
  {
    if (v15)
    {
      [*(a2 + *(v11 + 60)) setInitialAction_];
    }
  }

  if (a1)
  {
    v16 = [a1 view];
    if (!v16)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v17 = v16;
    v18 = [v16 window];

    if (v18)
    {
      v19 = *(a2 + v6[7]);
      v118 = *(a2 + v6[5] + 8);
      v119 = v19;
      sub_1BD7A0048(a2, v14);
      v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v124 = swift_allocObject();
      sub_1BD7A16C8(v14, v124 + v20, type metadata accessor for CurrencyAmountPickerView);
      v21 = (a2 + v6[11]);
      v23 = *v21;
      v22 = v21[1];
      v117 = v23;
      v120 = v22;
      v115 = a2;
      sub_1BD7A0048(a2, v9);
      v125 = swift_allocObject();
      sub_1BD7A16C8(v9, v125 + v20, type metadata accessor for CurrencyAmountPickerView);
      v122 = type metadata accessor for AccountTransferAuthorizationController(0);
      v24 = objc_allocWithZone(v122);
      v25 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentWebService;
      v26 = objc_opt_self();
      v116 = v15;
      v121 = v18;
      v123 = v18;
      v27 = [v26 sharedService];
      v114 = v25;
      *&v24[v25] = v27;
      v28 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest;
      *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest] = 0;
      v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_authorized] = 0;
      v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_presentFraudStepUp] = 0;
      v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction] = 0;
      v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate] = 0;
      *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData] = 0;
      v29 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountService;
      *&v24[v29] = [objc_opt_self() sharedInstance];
      v30 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer;
      *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissalTimer] = 3;
      v31 = *MEMORY[0x1E69E7F48];
      v32 = sub_1BE051F44();
      v33 = *(v32 - 8);
      (*(v33 + 104))(&v24[v30], v31, v32);
      *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_pastUpdateLeeway] = 0x4024000000000000;
      if (v15)
      {
        v41 = v116;
        *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentRequest] = v116;
        v43 = v118;
        v42 = v119;
        *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountModel] = v118;
        *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferModel] = v42;
        v44 = objc_allocWithZone(PKPaymentAuthorizationController);
        v45 = v41;
        v46 = v43;
        sub_1BE048964();
        v47 = [v44 initWithPaymentRequest_];
        *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController] = v47;
        v48 = v120;
        *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_window] = v121;
        v49 = &v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_stepUpAction];
        v51 = v124;
        v50 = v125;
        *v49 = sub_1BD7A03C4;
        v49[1] = v51;
        v52 = &v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_dismissAction];
        *v52 = v117;
        v52[1] = v48;
        v53 = &v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transferDidFinish];
        *v53 = sub_1BD7A03DC;
        v53[1] = v50;
        KeyPath = swift_getKeyPath();
        v55 = swift_getKeyPath();
        v56 = v123;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04D8B4(v127);
        KeyPath, v57, v58, v59, v60, v61, v62, v63;
        v55, v64, v65, v66, v67, v68, v69, v70;
        v71 = v127[0];
        v72 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccount_];

        v73 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
        v74 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
        v75 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v73 paymentDataProvider:v74];

        if (v75)
        {
          *&v24[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_transactionFetcher] = v75;
          v128.receiver = v24;
          v128.super_class = v122;
          v76 = objc_msgSendSuper2(&v128, sel_init);
          v77 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController;
          v78 = *&v76[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentAuthorizationController];
          v79 = v76;
          [v78 setDelegate_];
          [*&v76[v77] setPrivateDelegate_];

          v51, v80, v81, v82, v83, v84, v85, v86;
          v125, v87, v88, v89, v90, v91, v92, v93;

          [*&v76[v77] presentWithCompletion_];
          v94 = (v115 + v6[29]);
          v95 = v94[1];
          v127[0] = *v94;
          v96 = v127[0];
          v127[1] = v95;
          v126 = v76;
          sub_1BE048964();
          v97 = v96;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68, &qword_1BE0D8770);
          sub_1BE0516B4();
          v95, v98, v99, v100, v101, v102, v103, v104;

          return;
        }

        goto LABEL_13;
      }

      v124, v34, v35, v36, v37, v38, v39, v40;
      v125, v105, v106, v107, v108, v109, v110, v111;
      v112 = v123;

      swift_unknownObjectRelease();
      (*(v33 + 8))(&v24[v30], v32);
      swift_deallocPartialClassInstance();
    }
  }
}

void sub_1BD79D744(uint64_t a1)
{
  type metadata accessor for CurrencyAmountPickerView(0);
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver, &unk_1BE0F6954);
  v1 = sub_1BE04E3C4();
  v1[OBJC_IVAR____TtC9PassKitUIP33_3BC4BCA10D4B1B164EF997D80A283BE127TransferActionSheetObserver_fraudStepUpTriggered] = 1;

  v1, v2, v3, v4, v5, v6, v7, v8;
}

double sub_1BD79D7FC(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  (*(a1 + *(v2 + 52)))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F68, &qword_1BE0D8770);
  sub_1BE0516B4();
  return result;
}

void sub_1BD79D880()
{
  v1 = sub_1BE04D214();
  v78 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v73 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - v7;
  v9 = type metadata accessor for CurrencyAmountPickerView(0);
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(&v85);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v0 + v9[8]);
  v27 = &selRef_oneTimeDepositWithAppleCashFeatureDescriptor;
  v28 = v85;
  if (v26 != 2)
  {
    v27 = &selRef_oneTimeWithdrawalWithAppleCashFeatureDescriptor;
  }

  v29 = [v85 *v27];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 maximumAmount];
    if (v31 && (v81 = 0, v82 = 0, v83 = 0, v84 = 1, v32 = v31, sub_1BE0533E4(), v32, (v84 & 1) == 0))
    {
      v75 = v0;
      v76 = v1;
      v57 = v81;
      v58 = v82;
      v59 = v83;
      v60 = (v0 + v9[22]);
      v61 = v60[1];
      v85 = *v60;
      v86 = v61;
      v87 = *(v60 + 8);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
      MEMORY[0x1BFB3E970](v79, v62);
      if (MEMORY[0x1BFB403F0](v57, v58, v59, v79[0], v79[1], v80))
      {
        sub_1BE04D1E4();
        v63 = sub_1BE04D204();
        v64 = sub_1BE052C54();
        v65 = os_log_type_enabled(v63, v64);
        v66 = v76;
        if (v65)
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_1BD026000, v63, v64, "Amount is outside Apple Cash transfer limit", v67, 2u);
          MEMORY[0x1BFB45F20](v67, -1, -1);
          v68 = v30;
        }

        else
        {
          v68 = v63;
          v63 = v28;
          v28 = v30;
        }

        (*(v78 + 8))(v8, v66);
        return;
      }

      v0 = v75;
      v1 = v76;
    }

    else
    {
    }
  }

  v33 = *(v0 + v9[9]);
  if (v33)
  {
    v34 = *(v0 + v9[10]);
    if (v34)
    {
      v35 = v34;
      v36 = v33;
      if ((PKPeerPaymentNeedsResolutionToPerformAccountServicePayments() & 1) != 0 || PKPeerPaymentCanPerformAccountServicePayments())
      {
        if (v26 != 2)
        {
          goto LABEL_17;
        }

        v37 = (v0 + v9[22]);
        v38 = v37[1];
        v85 = *v37;
        v86 = v38;
        v87 = *(v37 + 8);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
        MEMORY[0x1BFB3E970](&v81, v39);
        v40 = v81;
        v41 = WORD2(v81);
        v75 = HIWORD(v81);
        v42 = v82;
        v43 = v83;
        v44 = [v36 currentBalance];
        if (v44)
        {
          v45 = v44;
          v74 = v41;
          v76 = v1;
          v46 = [v44 amount];

          if (v46)
          {
            v47 = sub_1BE0533F4();
            v49 = v48;
            v51 = v50;

            if (MEMORY[0x1BFB403F0](v47, v49, v51, v40 | (v74 << 32) | (v75 << 48), v42, v43))
            {
              v52 = v77;
              sub_1BE04D1E4();
              v53 = sub_1BE04D204();
              v54 = sub_1BE052C54();
              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                *v55 = 0;
                _os_log_impl(&dword_1BD026000, v53, v54, "Amount exceeds Apple Cash balance", v55, 2u);
                MEMORY[0x1BFB45F20](v55, -1, -1);
                v56 = v36;
              }

              else
              {
                v56 = v53;
                v53 = v36;
              }

              v72 = v76;

              (*(v78 + 8))(v52, v72);
              return;
            }

LABEL_17:

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }
  }

  sub_1BE04D1E4();
  v69 = sub_1BE04D204();
  v70 = sub_1BE052C54();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_1BD026000, v69, v70, "Apple Cash account or pass is not valid", v71, 2u);
    MEMORY[0x1BFB45F20](v71, -1, -1);
  }

  (*(v78 + 8))(v3, v1);
}

void sub_1BD79DE10(void *a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1BE051FA4();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CurrencyAmountPickerView(0);
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1BE051FC4();
  v66 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v63 - v13;
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver, &unk_1BE0F6954);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 2;
  sub_1BE04D8C4();
  if (a1)
  {
    v14 = a1;
    sub_1BD647830(v14);
    sub_1BD791FE8();
    if (v15 & 1) != 0 && ((KeyPath = swift_getKeyPath(), v17 = swift_getKeyPath(), sub_1BE04D8B4(aBlock), KeyPath, v18, v19, v20, v21, v22, v23, v24, v17, v25, v26, v27, v28, v29, v30, v31, (v39 = aBlock[0]) != 0) && (aBlock[0] >> 62 ? (v62 = aBlock[0], v40 = sub_1BE053704(), v39 = v62) : (v40 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10)), v39, v32, v33, v34, v35, v36, v37, v38, v40 > 0) || (sub_1BD79D880(), (v41)))
    {
      sub_1BD796F50(0);
    }

    else
    {
      v42 = [v14 fundingDetails];
      if (v42)
      {
        v43 = v42;
        objc_opt_self();
        v44 = swift_dynamicCastObjCClass();
        if (v44)
        {
          v45 = v44;
          if ([v44 status] == 2)
          {
            v46 = [v45 verificationDetails];
            if (!v46)
            {
              sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
              v64 = sub_1BE052D54();
              sub_1BE051FB4();
              sub_1BE051FF4();
              v66 = *(v66 + 8);
              (v66)(v11, v74);
              sub_1BD7A0048(a2, &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
              v47 = (*(v65 + 80) + 16) & ~*(v65 + 80);
              v48 = swift_allocObject();
              sub_1BD7A16C8(v9, v48 + v47, type metadata accessor for CurrencyAmountPickerView);
              aBlock[4] = sub_1BD7A05F0;
              v76 = v48;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1BD126964;
              aBlock[3] = &block_descriptor_177;
              v49 = _Block_copy(aBlock);
              v76, v50, v51, v52, v53, v54, v55, v56;
              v57 = v67;
              sub_1BE051F74();
              aBlock[0] = MEMORY[0x1E69E7CC0];
              sub_1BD79EE14(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
              sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
              v58 = v69;
              v59 = v72;
              sub_1BE053664();
              v60 = v73;
              v61 = v64;
              MEMORY[0x1BFB3FD90](v73, v57, v58, v49);

              _Block_release(v49);
              (*(v71 + 8))(v58, v59);
              (*(v68 + 8))(v57, v70);
              (v66)(v60, v74);
              return;
            }

            (*(a2 + *(v7 + 44)))();
          }
        }

        return;
      }
    }
  }
}

double sub_1BD79E4CC(uint64_t a1, char a2)
{
  type metadata accessor for CurrencyAmountPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD79E540(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  type metadata accessor for TransferActionSheetObserver(0);
  sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver, &unk_1BE0F6954);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_1BE04D8C4();
  return (*(a1 + *(v2 + 44)))(v3);
}

uint64_t sub_1BD79E63C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B38, &qword_1BE0F6AD8);
  return sub_1BD7922B8(v2, a2 + *(v4 + 44));
}

uint64_t sub_1BD79E690()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD79E704()
{
  v1 = OBJC_IVAR____TtC9PassKitUIP33_3BC4BCA10D4B1B164EF997D80A283BE127TransferActionSheetObserver__presentedSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52AD0, &qword_1BE0F69D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD79E7D4(uint64_t a1)
{
  sub_1BD79EFAC(319, &qword_1EBD52AB0, &qword_1EBD52AB8, &qword_1BE0F6880, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1BD79E8AC()
{
  result = qword_1EBD52AC0;
  if (!qword_1EBD52AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52AC0);
  }

  return result;
}

uint64_t sub_1BD79E900@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TransferActionSheetObserver(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

unint64_t sub_1BD79E944()
{
  result = qword_1EBD52AC8;
  if (!qword_1EBD52AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52AC8);
  }

  return result;
}

void sub_1BD79E9E0(uint64_t a1)
{
  sub_1BD79EEB4(319, &qword_1EBD46E10, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1BD2D63D4(319);
    if (v2 <= 0x3F)
    {
      sub_1BD79ED80(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AccountScheduleTransferModel();
        if (v4 <= 0x3F)
        {
          type metadata accessor for PKAccountTransferType(319);
          if (v5 <= 0x3F)
          {
            sub_1BD10315C(319, &qword_1EBD52AF0, &qword_1EBD4AD68, 0x1E69B8F00);
            if (v6 <= 0x3F)
            {
              sub_1BD10315C(319, &unk_1EBD49728, &unk_1EBD40340, 0x1E69B8D08);
              if (v7 <= 0x3F)
              {
                sub_1BD1030A8();
                if (v8 <= 0x3F)
                {
                  sub_1BD10315C(319, &qword_1EBD52AF8, &qword_1EBD52B00, 0x1E69B8410);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD10EE48();
                    if (v10 <= 0x3F)
                    {
                      sub_1BD10315C(319, &qword_1EBD52B08, &qword_1EBD45630, 0x1E69B8EF8);
                      if (v11 <= 0x3F)
                      {
                        sub_1BD79EE5C();
                        if (v12 <= 0x3F)
                        {
                          sub_1BD79EEB4(319, &qword_1EBD42D18, type metadata accessor for Decimal, MEMORY[0x1E6981948]);
                          if (v13 <= 0x3F)
                          {
                            sub_1BD79EFAC(319, &qword_1EBD47B10, &qword_1EBD3A5C8, &qword_1BE0BAA50, MEMORY[0x1E6981790]);
                            if (v14 <= 0x3F)
                            {
                              sub_1BD79EFAC(319, &qword_1EBD52B18, &qword_1EBD3DC88, &unk_1BE0C88A0, MEMORY[0x1E6981790]);
                              if (v15 <= 0x3F)
                              {
                                sub_1BD79EF18(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_1BD79EFAC(319, &qword_1EBD46E08, &qword_1EBD3BD40, &qword_1BE0F6A10, MEMORY[0x1E6981790]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1BD79EEB4(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                                    if (v18 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD79ED80(uint64_t a1)
{
  if (!qword_1EBD52AE8)
  {
    type metadata accessor for FundingSourcesModel(255);
    sub_1BD79EE14(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel, &unk_1BE0EA794);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD52AE8);
    }
  }
}

uint64_t sub_1BD79EE14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD79EE5C()
{
  if (!qword_1EBD52B10)
  {
    v0 = sub_1BE04E294();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD52B10);
    }
  }
}

void sub_1BD79EEB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD79EF18(uint64_t a1)
{
  if (!qword_1EBD52B20)
  {
    type metadata accessor for TransferActionSheetObserver(255);
    sub_1BD79EE14(&qword_1EBD52B28, type metadata accessor for TransferActionSheetObserver, &unk_1BE0F6954);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD52B20);
    }
  }
}

void sub_1BD79EFAC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1BD79F024()
{
  result = qword_1EBD52B30;
  if (!qword_1EBD52B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52B30);
  }

  return result;
}

unint64_t sub_1BD79F094()
{
  result = qword_1EBD52B60;
  if (!qword_1EBD52B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B40, &qword_1BE0F6AE0);
    sub_1BD79F118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52B60);
  }

  return result;
}

unint64_t sub_1BD79F118()
{
  result = qword_1EBD52B68;
  if (!qword_1EBD52B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B70, &qword_1BE0F6B00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B78, &qword_1BE0F6B08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B80, &qword_1BE0F6B10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B88, &qword_1BE0F6B18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B90, &qword_1BE0F6B20);
    sub_1BD79F31C();
    sub_1BD79F3D4();
    sub_1BD79F428();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD52BC0, &qword_1EBD52B80, &qword_1BE0F6B10, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    sub_1BD79EE14(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52B68);
  }

  return result;
}

unint64_t sub_1BD79F31C()
{
  result = qword_1EBD52B98;
  if (!qword_1EBD52B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B88, &qword_1BE0F6B18);
    sub_1BD0DE4F4(&qword_1EBD52BA0, &qword_1EBD52BA8, &qword_1BE0F6B28, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52B98);
  }

  return result;
}

unint64_t sub_1BD79F3D4()
{
  result = qword_1EBD52BB0;
  if (!qword_1EBD52BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52BB0);
  }

  return result;
}

unint64_t sub_1BD79F428()
{
  result = qword_1EBD52BB8;
  if (!qword_1EBD52BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B90, &qword_1BE0F6B20);
    sub_1BD5A3BE4();
    sub_1BD47BCBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52BB8);
  }

  return result;
}

unint64_t sub_1BD79F4BC()
{
  result = qword_1EBD52BD8;
  if (!qword_1EBD52BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52BD8);
  }

  return result;
}

unint64_t sub_1BD79F518()
{
  result = qword_1EBD52C00;
  if (!qword_1EBD52C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52BF8, &qword_1BE0F6B50);
    sub_1BD79F5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52C00);
  }

  return result;
}

unint64_t sub_1BD79F5A4()
{
  result = qword_1EBD52C08;
  if (!qword_1EBD52C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52C10, &unk_1BE0FD490);
    sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500, &unk_1BE0C4310, MEMORY[0x1E697D680]);
    sub_1BD79EE14(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52C08);
  }

  return result;
}

unint64_t sub_1BD79F6B0()
{
  result = qword_1EBD52C20;
  if (!qword_1EBD52C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52C18, &qword_1BE0F6B58);
    sub_1BD79F73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52C20);
  }

  return result;
}

unint64_t sub_1BD79F73C()
{
  result = qword_1EBD52C28;
  if (!qword_1EBD52C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52C30, &unk_1BE0F6B60);
    sub_1BD35CEE0();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52C28);
  }

  return result;
}

uint64_t sub_1BD79F7F4(uint64_t a1)
{
  result = sub_1BE051C54();
  v2 = 12.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_1EBD52A80 = *&v2;
  return result;
}

uint64_t sub_1BD79F824(uint64_t a1)
{
  result = sub_1BE051C54();
  v2 = 10.0;
  if (result)
  {
    v2 = 26.0;
  }

  qword_1EBD52A88 = *&v2;
  return result;
}

uint64_t sub_1BD79F854@<X0>(__int16 a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_1BE051994();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v61 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F90, &qword_1BE0F7318);
  v9 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v11 = (&v61 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F98, &qword_1BE0F7320);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v61 - v13;
  sub_1BE04FE14();
  v15 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FA0, &qword_1BE0F7328) + 36);
  *v24 = v15;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  v25 = sub_1BE050234();
  if (qword_1EBD36F18 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FA8, &qword_1BE0F7330) + 36);
  *v34 = v25;
  *(v34 + 8) = v27;
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  v35 = sub_1BE051CD4();
  v37 = v36;
  v38 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FB0, &qword_1BE0F7338) + 36);
  sub_1BD79FD08(a2 & 0x101, v38);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FB8, &qword_1BE0F7340) + 36));
  *v39 = v35;
  v39[1] = v37;
  v40 = sub_1BE051CC4();
  v42 = v41;
  if ((a2 & 0x100) != 0)
  {
    (*(v9 + 56))(v14, 1, 1, v66);
  }

  else
  {
    *v11 = sub_1BE051CD4();
    v11[1] = v43;
    sub_1BE051984();
    if (sub_1BE051C54())
    {
      v44 = sub_1BE0501C4();
    }

    else
    {
      v44 = sub_1BE050204();
    }

    v45 = v44;
    v46 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FC0, &qword_1BE0F7348) + 44);
    sub_1BE04E1F4();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = v63;
    (*(v64 + 32))(v63, v7, v65);
    v56 = v55 + *(v62 + 36);
    *v56 = v45;
    *(v56 + 8) = v48;
    *(v56 + 16) = v50;
    *(v56 + 24) = v52;
    *(v56 + 32) = v54;
    *(v56 + 40) = 0;
    v57 = sub_1BE0513B4();
    sub_1BD0DE204(v55, v46, &qword_1EBD390F8, &qword_1BE0BA700);
    *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FC8, &qword_1BE0F7350) + 36)) = v57;
    sub_1BD0DE204(v11, v14, &qword_1EBD52F90, &qword_1BE0F7318);
    (*(v9 + 56))(v14, 0, 1, v66);
  }

  v58 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FD0, &qword_1BE0F7358) + 36);
  sub_1BD0DE204(v14, v58, &qword_1EBD52F98, &qword_1BE0F7320);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FD8, &qword_1BE0F7360);
  v60 = (v58 + *(result + 36));
  *v60 = v40;
  v60[1] = v42;
  return result;
}

uint64_t sub_1BD79FD08@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051AF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04FCF4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && qword_1EBD36F20 != -1)
  {
    swift_once();
  }

  if ((a1 & 0x100) != 0 && qword_1EBD36F20 != -1)
  {
    swift_once();
  }

  if ((a1 & 1) != 0 && qword_1EBD36F20 != -1)
  {
    swift_once();
  }

  sub_1BE04FA24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(v8 + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1BE04F684();
  (*(*(v21 - 8) + 104))(&v10[v19], v20, v21);
  *v10 = v12;
  *(v10 + 1) = v14;
  *(v10 + 2) = v16;
  *(v10 + 3) = v18;
  v22 = [objc_opt_self() secondarySystemBackgroundColor];
  v23 = sub_1BE0511C4();
  v24 = sub_1BE0513F4();
  sub_1BE04FE24();
  sub_1BE051AE4();
  v25 = sub_1BE0513A4();
  v23, v26, v27, v28, v29, v30, v31, v32;
  v24, v33, v34, v35, v36, v37, v38, v39;
  (*(v5 + 8))(v7, v4);
  sub_1BD7A16C8(v10, a2, MEMORY[0x1E697FF20]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52FE0, qword_1BE0F7368);
  *(a2 + *(result + 36)) = v25;
  return result;
}

uint64_t sub_1BD7A002C@<X0>(uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1BD79F854(v3 | *v2, a2);
}

uint64_t sub_1BD7A0048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrencyAmountPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_89()
{
  v1 = type metadata accessor for CurrencyAmountPickerView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD48, &qword_1BE0BD880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE050144();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
  }

  else
  {
    *v3, v4, v5, v6, v7, v8, v9, v10;
  }

  *(v3 + v1[7]), v12, v13, v14, v15, v16, v17, v18;
  *(v3 + v1[11] + 8), v19, v20, v21, v22, v23, v24, v25;
  *(v3 + v1[12] + 8), v26, v27, v28, v29, v30, v31, v32;
  *(v3 + v1[13] + 8), v33, v34, v35, v36, v37, v38, v39;

  *(v3 + v1[16] + 8), v40, v41, v42, v43, v44, v45, v46;
  *(v3 + v1[17] + 8), v47, v48, v49, v50, v51, v52, v53;
  *(v3 + v1[18] + 8), v54, v55, v56, v57, v58, v59, v60;

  *(v3 + v1[20] + 8), v61, v62, v63, v64, v65, v66, v67;
  *(v3 + v1[21] + 8), v68, v69, v70, v71, v72, v73, v74;
  v75 = (v3 + v1[22]);
  *v75, v76, v77, v78, v79, v80, v81, v82;
  v75[1], v83, v84, v85, v86, v87, v88, v89;
  v90 = (v3 + v1[23]);
  v90[1], v91, v92, v93, v94, v95, v96, v97;
  v90[2], v98, v99, v100, v101, v102, v103, v104;
  v105 = (v3 + v1[24]);
  *v105, v106, v107, v108, v109, v110, v111, v112;
  v105[1], v113, v114, v115, v116, v117, v118, v119;
  sub_1BD0D45CC(*(v3 + v1[25]), *(v3 + v1[25] + 8), *(v3 + v1[25] + 16), v120, v121, v122, v123, v124);
  *(v3 + v1[26] + 8), v125, v126, v127, v128, v129, v130, v131;
  *(v3 + v1[27] + 8), v132, v133, v134, v135, v136, v137, v138;
  *(v3 + v1[28] + 8), v139, v140, v141, v142, v143, v144, v145;
  v146 = (v3 + v1[29]);

  v146[1], v147, v148, v149, v150, v151, v152, v153;
  v154 = v1[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v162 = sub_1BE04EB24();
    (*(*(v162 - 8) + 8))(v3 + v154, v162);
  }

  else
  {
    *(v3 + v154), v155, v156, v157, v158, v159, v160, v161;
  }

  return swift_deallocObject();
}

void sub_1BD7A03F4(_BYTE *a1@<X8>)
{
  type metadata accessor for CurrencyAmountPickerView(0);

  sub_1BD791E38(a1);
}

double sub_1BD7A0468@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CurrencyAmountPickerView(0);
  sub_1BD79801C(*a1, v8);
  v4 = v9;
  v5 = v10;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  return result;
}

void sub_1BD7A0580(void *a1)
{
  v3 = *(type metadata accessor for CurrencyAmountPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD79DE10(a1, v4);
}

unint64_t sub_1BD7A06E4()
{
  result = qword_1EBD52D28;
  if (!qword_1EBD52D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D18, &qword_1BE0F6F50);
    sub_1BD7A0770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52D28);
  }

  return result;
}

unint64_t sub_1BD7A0770()
{
  result = qword_1EBD52D30;
  if (!qword_1EBD52D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D10, &qword_1BE0F6F48);
    sub_1BD0DE4F4(&qword_1EBD52D38, &qword_1EBD52D08, &qword_1BE0F6F40, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52D30);
  }

  return result;
}

unint64_t sub_1BD7A0828()
{
  result = qword_1EBD52D58;
  if (!qword_1EBD52D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D50, &qword_1BE0F6FA8);
    sub_1BD7A08B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52D58);
  }

  return result;
}

unint64_t sub_1BD7A08B4()
{
  result = qword_1EBD52D60;
  if (!qword_1EBD52D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D68, &qword_1BE0F6FB0);
    sub_1BD166FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52D60);
  }

  return result;
}

unint64_t sub_1BD7A0960()
{
  result = qword_1EBD52DA0;
  if (!qword_1EBD52DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52D98, &qword_1BE0F6FE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52DA8, &qword_1BE0F6FE8);
    sub_1BD0DE4F4(&qword_1EBD52DB0, &qword_1EBD52DA8, &qword_1BE0F6FE8, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD79EE14(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52DA0);
  }

  return result;
}

unint64_t sub_1BD7A0A8C()
{
  result = qword_1EBD52DC0;
  if (!qword_1EBD52DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52DC0);
  }

  return result;
}

unint64_t sub_1BD7A0B00()
{
  result = qword_1EBD52DD0;
  if (!qword_1EBD52DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52DC8, &qword_1BE0F6FF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52DD8, &qword_1BE0F6FF8);
    sub_1BD0DE4F4(&qword_1EBD52DE0, &qword_1EBD52DD8, &qword_1BE0F6FF8, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD79EE14(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52DD0);
  }

  return result;
}

unint64_t sub_1BD7A0C2C()
{
  result = qword_1EBD52E20;
  if (!qword_1EBD52E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52E18, &qword_1BE0F7090);
    sub_1BD7A0CE4();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E20);
  }

  return result;
}

unint64_t sub_1BD7A0CE4()
{
  result = qword_1EBD52E28;
  if (!qword_1EBD52E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52E30, &qword_1BE0F7098);
    sub_1BD7A0F64(&qword_1EBD52E38, &qword_1EBD52E40, &qword_1BE0F70A0, sub_1BD4D58A4);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E28);
  }

  return result;
}

unint64_t sub_1BD7A0DC8()
{
  result = qword_1EBD52E70;
  if (!qword_1EBD52E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52E68, &qword_1BE0F70C8);
    sub_1BD7A0E80();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E70);
  }

  return result;
}

unint64_t sub_1BD7A0E80()
{
  result = qword_1EBD52E78;
  if (!qword_1EBD52E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52E80, &qword_1BE0F70D0);
    sub_1BD7A0F64(&qword_1EBD52E88, &qword_1EBD52E90, &qword_1BE0F70D8, sub_1BD7A0FE0);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E78);
  }

  return result;
}

uint64_t sub_1BD7A0F64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD7A0FE0()
{
  result = qword_1EBD52E98;
  if (!qword_1EBD52E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52EA0, &qword_1BE0F70E0);
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52E98);
  }

  return result;
}

unint64_t sub_1BD7A106C()
{
  result = qword_1EBD52EC8;
  if (!qword_1EBD52EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52EC0, &qword_1BE0F7100);
    sub_1BD7A1124();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52EC8);
  }

  return result;
}

unint64_t sub_1BD7A1124()
{
  result = qword_1EBD52ED0;
  if (!qword_1EBD52ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52ED8, &unk_1BE0F7108);
    sub_1BD0FF49C();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52ED0);
  }

  return result;
}

uint64_t sub_1BD7A11F4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CurrencyAmountPickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD7A1268()
{
  result = qword_1EBD52F38;
  if (!qword_1EBD52F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F30, &qword_1BE0F71F8);
    sub_1BD7A12F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F38);
  }

  return result;
}

unint64_t sub_1BD7A12F4()
{
  result = qword_1EBD52F40;
  if (!qword_1EBD52F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F48, &qword_1BE0F7200);
    sub_1BD7A1380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F40);
  }

  return result;
}

unint64_t sub_1BD7A1380()
{
  result = qword_1EBD52F50;
  if (!qword_1EBD52F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F50);
  }

  return result;
}

unint64_t sub_1BD7A13EC()
{
  result = qword_1EBD52F58;
  if (!qword_1EBD52F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F00, &qword_1BE0F7198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F30, &qword_1BE0F71F8);
    sub_1BD7A1268();
    swift_getOpaqueTypeConformance2();
    sub_1BD79EE14(&qword_1EBD52F60, type metadata accessor for TransferEligibilityView, &unk_1BE0CE940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F58);
  }

  return result;
}

uint64_t sub_1BD7A14FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CurrencyAmountPickerView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1BD7A1590@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CurrencyAmountPickerView(0);

  return sub_1BD797458(a1);
}

unint64_t sub_1BD7A1600()
{
  result = qword_1EBD52F70;
  if (!qword_1EBD52F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F68, &qword_1BE0F7208);
    sub_1BD21AE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52F70);
  }

  return result;
}

uint64_t sub_1BD7A16C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD7A1730()
{
  result = qword_1EBD52FE8;
  if (!qword_1EBD52FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52FD0, &qword_1BE0F7358);
    sub_1BD7A17E8();
    sub_1BD0DE4F4(&unk_1EBD53010, &qword_1EBD52FD8, &qword_1BE0F7360, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52FE8);
  }

  return result;
}

unint64_t sub_1BD7A17E8()
{
  result = qword_1EBD52FF0;
  if (!qword_1EBD52FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52FB0, &qword_1BE0F7338);
    sub_1BD7A18A0();
    sub_1BD0DE4F4(&qword_1EBD53008, &qword_1EBD52FB8, &qword_1BE0F7340, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52FF0);
  }

  return result;
}

unint64_t sub_1BD7A18A0()
{
  result = qword_1EBD52FF8;
  if (!qword_1EBD52FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52FA8, &qword_1BE0F7330);
    sub_1BD7A192C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52FF8);
  }

  return result;
}

unint64_t sub_1BD7A192C()
{
  result = qword_1EBD53000;
  if (!qword_1EBD53000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52FA0, &qword_1BE0F7328);
    sub_1BD79EE14(&qword_1EBD3EFA8, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53000);
  }

  return result;
}

void sub_1BD7A1AB4(void (*a1)(unint64_t, unint64_t, unint64_t, uint64_t), uint64_t a2)
{
  v50 = a2;
  v51 = a1;
  v3 = sub_1BE04B944();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BAC4();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BE04BC84();
  KeyPath = swift_getKeyPath();
  v49 = v2;
  v8 = sub_1BD1882D8(v2, KeyPath);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v23 = v8 + 4;
  v24 = v8[2];
  v54 = 0x80000001BE1182F0;
  v55 = 0x80000001BE118310;
  v52 = 0x80000001BE118260;
  v53 = 0x80000001BE118280;
  while (2)
  {
    if (v24)
    {
      v25 = 0xEF65636976654420;
      switch(*v23)
      {
        case 1:
          v25 = 0x80000001BE118230;
          goto LABEL_3;
        case 2:
          v25 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v25 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          v25 = v52;
          goto LABEL_3;
        case 5:
          v25 = v53;
          goto LABEL_3;
        case 6:
          v8, v16, v17, v18, v19, v20, v21, v22;
          v8 = 0x80000001BE1182A0;
          goto LABEL_25;
        case 7:
          v25 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v25 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v25 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v25 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v25 = v54;
          goto LABEL_3;
        case 0xC:
          v25 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v25 = v55;
          goto LABEL_3;
        default:
LABEL_3:
          v26 = sub_1BE053B84();
          v25, v27, v28, v29, v30, v31, v32, v33;
          ++v23;
          --v24;
          if ((v26 & 1) == 0)
          {
            continue;
          }

LABEL_25:
          v8, v16, v17, v18, v19, v20, v21, v22;
          v34 = 0x6F63206775626564;
          v35 = 0xEC0000006769666ELL;
          v36 = 0;
          break;
      }
    }

    else
    {
      v8, v16, v17, v18, v19, v20, v21, v22;
      if (([v56 isCarKeyPass] & 1) == 0)
      {
        v37 = v46;
        sub_1BE04BC34();
        v38 = sub_1BE04B964();
        (*(v47 + 8))(v37, v48);
        if (v38)
        {
          v39 = v43;
          sub_1BE04BB94();
          v40 = sub_1BE04B8E4();
          (*(v44 + 8))(v39, v45);
          v41 = [objc_opt_self() shouldShowWatchExtensionInstallViewControllerForSecureElementPass:v56 webService:v40];
          v51(v41, 0xD000000000000022, 0x80000001BE1394D0, 2);
        }

        else
        {
          v51(0xD000000000000014, 0x80000001BE1394B0, 0, 1);
        }

        return;
      }

      v34 = 0x2079656B20726163;
      v35 = 0xEC00000073736170;
      v36 = 1;
    }

    break;
  }

  v51(v34, v35, 0, v36);
  v42 = v56;
}

id sub_1BD7A2004()
{
  v26 = sub_1BE04BAC4();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04B944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BC84();
  v25 = v0;
  v9 = sub_1BE04BBD4();
  sub_1BE04BB94();
  v10 = sub_1BE04B8E4();
  (*(v5 + 8))(v7, v4);
  sub_1BE04BC34();
  v11 = sub_1BE04B9A4();
  (*(v1 + 8))(v3, v26);
  v12 = [objc_allocWithZone(PKWatchExtensionInstallViewController) initWithSecureElementPass:v8 provisioningController:v9 webService:v10 context:v11];

  if (v12)
  {
    [v12 setFlowItemDelegate_];
    sub_1BE052434();
    v14 = v13;
    v15 = v12;
    v16 = sub_1BE04BB74();
    v14, v17, v18, v19, v20, v21, v22, v23;
    [v15 setReporter_];
  }

  return v12;
}

uint64_t sub_1BD7A2274()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD7A22B0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI41ProvisioningWatchExtensionInstallFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for ContactEmailEditingSection(uint64_t a1)
{
  result = qword_1EBD530B0;
  if (!qword_1EBD530B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD7A241C(uint64_t a1)
{
  sub_1BD7A24B8(319);
  if (v1 <= 0x3F)
  {
    sub_1BD7A254C(319);
    if (v2 <= 0x3F)
    {
      sub_1BD2A1EF0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD7A24B8(uint64_t a1)
{
  if (!qword_1EBD530C0)
  {
    type metadata accessor for EmailAddresses(255);
    sub_1BD7A5368(&qword_1EBD3A6F8, type metadata accessor for EmailAddresses, &unk_1BE0F5E64);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD530C0);
    }
  }
}

void sub_1BD7A254C(uint64_t a1)
{
  if (!qword_1EBD469B0)
  {
    sub_1BD55B2AC();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD469B0);
    }
  }
}

id sub_1BD7A25C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v142 = *(v3 - 8);
  v143 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v141 = v129 - v7;
  v8 = *(v1 + 8);
  v9 = type metadata accessor for EmailAddresses(0);
  v10 = sub_1BD7A5368(&qword_1EBD3A6F8, type metadata accessor for EmailAddresses, &unk_1BE0F5E64);
  v11 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v11, v20, v21, v22, v23, v24, v25, v26;
  v27 = v149;
  v140 = v150;
  v28 = sub_1BE04E964();
  v29 = swift_getKeyPath();
  sub_1BE04E974();
  v29, v30, v31, v32, v33, v34, v35, v36;
  v28, v37, v38, v39, v40, v41, v42, v43;
  v137 = v147;
  v138 = v146;
  v44 = v148;
  v45 = swift_getKeyPath();
  v46 = swift_getKeyPath();
  sub_1BE04D8B4(&v145);
  v45, v47, v48, v49, v50, v51, v52, v53;
  v46, v54, v55, v56, v57, v58, v59, v60;
  v68 = v145;
  if (v145 >> 62)
  {
    result = sub_1BE053704();
  }

  else
  {
    result = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v129[1] = v10;
  v139 = v27;
  v136 = v44;
  if (result)
  {
    if ((v68 & 0xC000000000000001) != 0)
    {
      v70 = MEMORY[0x1BFB40900](0, v68);
    }

    else
    {
      if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v70 = *(v68 + 32);
    }

    v134 = v70;
    v68, v71, v72, v73, v74, v75, v76, v77;
  }

  else
  {
    v68, v61, v62, v63, v64, v65, v66, v67;
    v134 = 0;
  }

  v78 = v5;
  v129[0] = v9;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1BD7A515C;
  *(v79 + 24) = v8;
  v133 = v79;
  v135 = v1;
  v80 = *(v1 + 16);
  v81 = *MEMORY[0x1E69B8068];
  v83 = v141;
  v82 = v142;
  v84 = *(v142 + 104);
  v85 = v143;
  v84(v141, v81, v143);
  v132 = v80;
  v86 = v80;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v87 = result;
  v131 = sub_1BE04B6F4();
  v130 = v88;

  v89 = v83;
  v90 = *(v82 + 8);
  v90(v89, v85);
  v84(v78, v81, v85);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v91 = result;
  v142 = sub_1BE04B6F4();
  v93 = v92;

  v90(v78, v85);
  v94 = swift_getKeyPath();
  v95 = swift_getKeyPath();
  sub_1BE04D8B4(&v145);
  v94, v96, v97, v98, v99, v100, v101, v102;
  v95, v103, v104, v105, v106, v107, v108, v109;
  if (v145 == 1)
  {
    sub_1BE048964();
    v110 = sub_1BE04E954();
    v112 = v111;
  }

  else
  {
    v110 = 0;
    v112 = 0;
  }

  v113 = v136;
  v114 = sub_1BD7A2C2C();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v121 = v137;
  *(a1 + 24) = v138;
  *(a1 + 32) = v121;
  *(a1 + 136) = v110;
  *(a1 + 144) = v112;
  *a1 = v139;
  *(a1 + 8) = v140;
  v122 = v134;
  *(a1 + 40) = v113;
  *(a1 + 48) = v122;
  v123 = v133;
  *(a1 + 56) = sub_1BD7A5178;
  *(a1 + 64) = v123;
  *(a1 + 72) = v132;
  *(a1 + 80) = 0;
  v124 = v130;
  *(a1 + 88) = v131;
  *(a1 + 96) = v124;
  *(a1 + 104) = v142;
  *(a1 + 112) = v93;
  v144 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52748, &qword_1BE0F5B48);
  sub_1BE051694();
  v125 = *(&v145 + 1);
  *(a1 + 120) = v145;
  *(a1 + 128) = v125;
  *(a1 + 152) = v114;
  *(a1 + 160) = v116;
  *(a1 + 168) = v118;
  *(a1 + 176) = v120;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530C8, &qword_1BE0F7540);
  v127 = *(v126 + 92);
  *(a1 + v127) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  v128 = *(v126 + 96);
  v144 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52738, &qword_1BE0F5B40);
  sub_1BE051694();
  *(a1 + v128) = v145;
  return sub_1BE04E284();
}

void sub_1BD7A2BAC(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

id sub_1BD7A2C2C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(v25);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  result = 0;
  if (LOBYTE(v25[0]) == 1)
  {
    (*(v1 + 104))(v3, *MEMORY[0x1E69B8048], v0, 0);
    result = PKPassKitBundle();
    if (result)
    {
      v21 = result;
      v22 = sub_1BE04B6F4();
      v24 = v23;

      (*(v1 + 8))(v3, v0);
      v25[0] = v22;
      v25[1] = v24;
      sub_1BD0DDEBC();
      return sub_1BE0506C4();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD7A2DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a3;
  v5 = sub_1BE04FF64();
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1BE04F6E4();
  v96 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530D8, &qword_1BE0F7640);
  MEMORY[0x1EEE9AC00](v89);
  v9 = &v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530E0, &qword_1BE0F7648);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530E8, &qword_1BE0F7650);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v88 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530F0, &qword_1BE0F7658);
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v91 = &v88 - v14;
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD530F8, &qword_1BE0F7660);
  sub_1BD7A34E8(a2, &v9[*(v15 + 44)]);
  type metadata accessor for EmailAddresses(0);
  sub_1BD7A5368(&qword_1EBD3A6F8, type metadata accessor for EmailAddresses, &unk_1BE0F5E64);
  v16 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v16, v25, v26, v27, v28, v29, v30, v31;
  v32 = v107;
  v33 = v108;
  v104 = v107;
  v105 = v108;
  v106 = v109;
  v102 = a1;
  v103 = a2;
  sub_1BD0DE4F4(&qword_1EBD53100, &qword_1EBD530D8, &qword_1BE0F7640, MEMORY[0x1E69817F8]);
  sub_1BD7A51D8();
  sub_1BE050EF4();
  v33, v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  sub_1BD0DE53C(v9, &qword_1EBD530D8, &qword_1BE0F7640);
  v48 = sub_1BE051CD4();
  v50 = v49;
  v51 = &v12[*(v10 + 36)];
  sub_1BD7A4ACC(a1, a2, v51);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53110, &qword_1BE0F7690) + 36));
  *v52 = v48;
  v52[1] = v50;
  v53 = swift_getKeyPath();
  v54 = swift_getKeyPath();
  sub_1BE04D8B4(&v107);
  v53, v55, v56, v57, v58, v59, v60, v61;
  v54, v62, v63, v64, v65, v66, v67, v68;
  if (v107 == 1)
  {
    v69 = v92;
    sub_1BE04F6B4();
    v70 = v93;
  }

  else
  {
    v107 = MEMORY[0x1E69E7CC0];
    sub_1BD7A5368(&qword_1EBD3E638, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640, &qword_1BE0C8100);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640, &qword_1BE0C8100, MEMORY[0x1E69E6328]);
    v69 = v92;
    v71 = v93;
    sub_1BE053664();
    v70 = v71;
  }

  sub_1BD7A522C();
  v72 = v90;
  sub_1BE050DA4();
  (*(v96 + 8))(v69, v70);
  sub_1BD0DE53C(v12, &qword_1EBD530E0, &qword_1BE0F7648);
  v73 = v98;
  sub_1BE04FF44();
  v74 = sub_1BD7A5480(&qword_1EBD53128, &qword_1EBD530E8, &qword_1BE0F7650, sub_1BD7A522C);
  v75 = v91;
  v76 = v94;
  sub_1BE050D14();
  (*(v99 + 8))(v73, v100);
  sub_1BD0DE53C(v72, &qword_1EBD530E8, &qword_1BE0F7650);
  sub_1BE052434();
  v78 = v77;
  v107 = v76;
  v108 = v74;
  swift_getOpaqueTypeConformance2();
  v79 = v97;
  sub_1BE050DE4();
  v78, v80, v81, v82, v83, v84, v85, v86;
  return (*(v95 + 8))(v75, v79);
}

uint64_t sub_1BD7A34E8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40558, &qword_1BE0FE400);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53130, &unk_1BE0F7720);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v104 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v109 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v104 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53138, &qword_1BE0F7730);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v111 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v104 - v15);
  v113 = sub_1BE04F7C4();
  LOBYTE(v116) = 1;
  sub_1BD7A3BD4(a2, v121);
  *&v120[23] = v121[1];
  *&v120[39] = v121[2];
  *&v120[55] = v121[3];
  *&v120[71] = v122;
  *&v120[7] = v121[0];
  v112 = v116;
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  sub_1BE04D8B4(&v116);
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v18, v26, v27, v28, v29, v30, v31, v32;
  if (v116 == 1)
  {
    sub_1BE04E4F4();
    v33 = v109;
    v109[2](v8, v11, v9);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD7A5480(&qword_1EBD40568, &qword_1EBD40558, &qword_1BE0FE400, sub_1BD2A298C);
    sub_1BE04F9A4();
    (v33[1])(v11, v9);
    v34 = 0;
    v35 = v16;
  }

  else
  {
    v109 = v16;
    v105 = v8;
    v106 = v6;
    v107 = v9;
    v36 = swift_getKeyPath();
    v37 = swift_getKeyPath();
    sub_1BE04D8B4(&v116);
    v36, v38, v39, v40, v41, v42, v43, v44;
    v37, v45, v46, v47, v48, v49, v50, v51;
    if (v116 == 1)
    {
      v52 = sub_1BE051574();
      v53 = sub_1BE0502D4();
      v54 = swift_getKeyPath();
      v55 = sub_1BE0511E4();
      v56 = swift_getKeyPath();
      v116 = v52;
      v117 = v54;
      *v118 = v53;
      *&v118[8] = v56;
      v57 = v53;
      *&v118[16] = v55;
      *&v118[24] = sub_1BD1F3E44;
      *&v118[32] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40578, &qword_1BE0C8108);
      sub_1BD2A298C();
      v58 = v108;
      sub_1BE050A24();
      v55, v59, v60, v61, v62, v63, v64, v65;
      v56, v66, v67, v68, v69, v70, v71, v72;
      v57, v73, v74, v75, v76, v77, v78, v79;
      v54, v80, v81, v82, v83, v84, v85, v86;
      v52, v87, v88, v89, v90, v91, v92, v93;
      sub_1BD0DE19C(v58, v105, &qword_1EBD40558, &qword_1BE0FE400);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
      sub_1BD7A5480(&qword_1EBD40568, &qword_1EBD40558, &qword_1BE0FE400, sub_1BD2A298C);
      v35 = v109;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v58, &qword_1EBD40558, &qword_1BE0FE400);
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v35 = v109;
    }
  }

  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53140, &qword_1BE0F7780);
  (*(*(v94 - 8) + 56))(v35, v34, 1, v94);
  v95 = v111;
  sub_1BD0DE19C(v35, v111, &qword_1EBD53138, &qword_1BE0F7730);
  v96 = v113;
  v114[0] = v113;
  v114[1] = 0;
  v97 = v112;
  LOBYTE(v115[0]) = v112;
  *(v115 + 1) = *v120;
  *(&v115[1] + 1) = *&v120[16];
  *(&v115[2] + 1) = *&v120[32];
  *(&v115[3] + 10) = *&v120[57];
  *(&v115[3] + 1) = *&v120[48];
  v98 = v115[0];
  *a3 = v113;
  *(a3 + 16) = v98;
  v99 = v115[1];
  v100 = v115[2];
  v101 = v115[3];
  *(a3 + 74) = *(&v115[3] + 10);
  *(a3 + 48) = v100;
  *(a3 + 64) = v101;
  *(a3 + 32) = v99;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53148, &qword_1BE0F7788);
  sub_1BD0DE19C(v95, a3 + *(v102 + 64), &qword_1EBD53138, &qword_1BE0F7730);
  sub_1BD0DE19C(v114, &v116, &qword_1EBD53150, &qword_1BE0F7790);
  sub_1BD0DE53C(v35, &qword_1EBD53138, &qword_1BE0F7730);
  sub_1BD0DE53C(v95, &qword_1EBD53138, &qword_1BE0F7730);
  v116 = v96;
  v117 = 0;
  v118[0] = v97;
  *&v118[17] = *&v120[16];
  *&v118[33] = *&v120[32];
  *v119 = *&v120[48];
  *&v119[9] = *&v120[57];
  *&v118[1] = *v120;
  return sub_1BD0DE53C(&v116, &qword_1EBD53150, &qword_1BE0F7790);
}

void sub_1BD7A3BD4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v369 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v369 - v10;
  v12 = *(v5 + 104);
  LODWORD(v371) = *MEMORY[0x1E69B8048];
  v370 = v12;
  v12(&v369 - v10, v9);
  v13 = PKPassKitBundle();
  if (!v13)
  {
    goto LABEL_38;
  }

  v14 = v13;
  v15 = sub_1BE04B6F4();
  v17 = v16;

  v369 = *(v5 + 8);
  v369(v11, v4);
  v381 = v15;
  v382 = v17;
  sub_1BD0DDEBC();
  v18 = sub_1BE0506C4();
  v373 = v19;
  v374 = v18;
  v372 = v20;
  v375 = v21;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  sub_1BE04D8B4(&v381);
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v23, v31, v32, v33, v34, v35, v36, v37;
  if (v381 == 4)
  {
    v38 = swift_getKeyPath();
    v39 = swift_getKeyPath();
    sub_1BE04D8B4(&v381);
    v38, v40, v41, v42, v43, v44, v45, v46;
    v39, v47, v48, v49, v50, v51, v52, v53;
    v61 = v381;
    if (v381 >> 62)
    {
      v62 = sub_1BE053704();
    }

    else
    {
      v62 = *((v381 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = v62 != 0;
    if (v62)
    {
      if ((v61 & 0xC000000000000001) == 0)
      {
        v64 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v61, v54, v55, v56, v57, v58, v59, v60;
        if (!v64)
        {
          __break(1u);
          goto LABEL_34;
        }

        goto LABEL_8;
      }

      MEMORY[0x1BFB40900](0, v61);
      swift_unknownObjectRelease();
    }

    v61, v54, v55, v56, v57, v58, v59, v60;
    goto LABEL_9;
  }

LABEL_8:
  v63 = 1;
LABEL_9:
  v65 = swift_getKeyPath();
  v66 = swift_getKeyPath();
  sub_1BE04D8B4(&v381);
  v65, v67, v68, v69, v70, v71, v72, v73;
  v66, v74, v75, v76, v77, v78, v79, v80;
  if (!v63 || !v381)
  {
    v211 = *(a1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString + 8);
    if (!v211)
    {
      v276 = 0;
      v277 = 0;
      v278 = 0;
      v279 = 0;
      v346 = 65280;
      goto LABEL_28;
    }

    v212 = *(a1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
    v370(v7, v371, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v213 = swift_allocObject();
    *(v213 + 16) = xmmword_1BE0B69E0;
    *(v213 + 56) = MEMORY[0x1E69E6158];
    *(v213 + 64) = sub_1BD110550();
    *(v213 + 32) = v212;
    *(v213 + 40) = v211;
    sub_1BE048C84();
    v214 = sub_1BE04B714();
    v216 = v215;
    v213, v215, v217, v218, v219, v220, v221, v222;
    v369(v7, v4);
    v381 = v214;
    v382 = v216;
    v223 = sub_1BE0506C4();
    v225 = v224;
    LOBYTE(v216) = v226;
    v228 = v227;
    v229 = sub_1BE050454();
    v230 = sub_1BE0505F4();
    v232 = v231;
    v234 = v233;
    v236 = v235;
    v229, v231, v233, v235, v237, v238, v239, v240;
    sub_1BD0DDF10(v223, v225, (v216 & 1), v241, v242, v243, v244, v245);
    v228, v246, v247, v248, v249, v250, v251, v252;
    v253 = sub_1BE051234();
    v254 = sub_1BE050564();
    v256 = v255;
    LOBYTE(v228) = v257;
    v259 = v258;
    v253, v255, v257, v258, v260, v261, v262, v263;
    sub_1BD0DDF10(v230, v232, (v234 & 1), v264, v265, v266, v267, v268);
    v236, v269, v270, v271, v272, v273, v274, v275;
    v376 = v254;
    v377 = v256;
    v378 = v228 & 1;
    v379 = v259;
    v380 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53158, &unk_1BE0F7850);
    sub_1BD7A5634();
    sub_1BE04F9A4();
    v276 = v381;
    v277 = v382;
    v278 = v383;
    v279 = v384;
    v280 = v386;
    v281 = v385;
    if (v386)
    {
      v282 = 256;
    }

    else
    {
      v282 = 0;
    }

LABEL_27:
    v346 = v282 | v281;
    sub_1BD7A554C(v276, v277, v278, v279, v281, v280);
LABEL_28:
    v347 = (v372 & 1);
    v349 = v373;
    v348 = v374;
    sub_1BD0D7F18(v374, v373, v372 & 1);
    v350 = v375;
    sub_1BE048C84();
    sub_1BD7A5534(v276, v277, v278, v279, v346);
    sub_1BD7A55B4(v276, v277, v278, v279, v346, v351, v352, v353);
    LOBYTE(v381) = v347;
    *a2 = v348;
    *(a2 + 8) = v349;
    *(a2 + 16) = v347;
    *(a2 + 24) = v350;
    *(a2 + 32) = v276;
    *(a2 + 40) = v277;
    *(a2 + 48) = v278;
    *(a2 + 56) = v279;
    *(a2 + 64) = v346;
    sub_1BD7A55B4(v276, v277, v278, v279, v346, v354, v355, v356);
    sub_1BD0DDF10(v348, v349, v347, v357, v358, v359, v360, v361);
    v350, v362, v363, v364, v365, v366, v367, v368;
    return;
  }

  v81 = swift_getKeyPath();
  v82 = swift_getKeyPath();
  sub_1BE04D8B4(&v381);
  v81, v83, v84, v85, v86, v87, v88, v89;
  v82, v90, v91, v92, v93, v94, v95, v96;
  if (v381 != 4)
  {
    v381 = sub_1BD785584(v381);
    v382 = v283;
    v284 = sub_1BE0506C4();
    v286 = v285;
    v288 = v287;
    v290 = v289;
    v291 = sub_1BE050454();
    v292 = sub_1BE0505F4();
    v294 = v293;
    v296 = v295;
    v298 = v297;
    v291, v293, v295, v297, v299, v300, v301, v302;
    sub_1BD0DDF10(v284, v286, (v288 & 1), v303, v304, v305, v306, v307);
    v290, v308, v309, v310, v311, v312, v313, v314;
    v315 = sub_1BE051264();
    v316 = sub_1BE050564();
    v318 = v317;
    LOBYTE(v290) = v319;
    v321 = v320;
    v315, v317, v319, v320, v322, v323, v324, v325;
    sub_1BD0DDF10(v292, v294, (v296 & 1), v326, v327, v328, v329, v330);
    v298, v331, v332, v333, v334, v335, v336, v337;
    v376 = v316;
    v377 = v318;
    v378 = v290 & 1;
    v379 = v321;
    LOBYTE(v380) = 0;
    sub_1BE04F9A4();
    goto LABEL_23;
  }

  v97 = swift_getKeyPath();
  v98 = swift_getKeyPath();
  sub_1BE04D8B4(&v381);
  v97, v99, v100, v101, v102, v103, v104, v105;
  v98, v106, v107, v108, v109, v110, v111, v112;
  v4 = v381;
  if (v381 >> 62)
  {
LABEL_34:
    if (sub_1BE053704())
    {
      goto LABEL_14;
    }

LABEL_35:
    v4, v113, v114, v115, v116, v117, v118, v119;
    v338 = 0;
    v339 = 0;
    v340 = 0;
    v341 = 0;
    v342 = -1;
LABEL_24:
    v376 = v338;
    v377 = v339;
    v378 = v340;
    v379 = v341;
    v380 = v342;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53158, &unk_1BE0F7850);
    sub_1BD7A5634();
    sub_1BE04F9A4();
    sub_1BD7A561C(v338, v339, v340, v341, v342, v343, v344, v345);
    v276 = v381;
    v277 = v382;
    v278 = v383;
    v279 = v384;
    v280 = v386;
    v281 = v385;
    if (v386)
    {
      v282 = 256;
    }

    else
    {
      v282 = 0;
    }

    goto LABEL_27;
  }

  if (!*((v381 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_14:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v120 = MEMORY[0x1BFB40900](0, v4);
    goto LABEL_17;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v120 = *(v4 + 32);
LABEL_17:
    v128 = v120;
    v371 = v120;
    v4, v121, v122, v123, v124, v125, v126, v127;
    v129 = [v128 localizedDescription];
    v130 = sub_1BE052434();
    v132 = v131;

    v381 = v130;
    v382 = v132;
    v133 = sub_1BE0506C4();
    v135 = v134;
    LOBYTE(v132) = v136;
    v138 = v137;
    v139 = sub_1BE050454();
    v140 = sub_1BE0505F4();
    v142 = v141;
    v144 = v143;
    v146 = v145;
    v139, v141, v143, v145, v147, v148, v149, v150;
    sub_1BD0DDF10(v133, v135, (v132 & 1), v151, v152, v153, v154, v155);
    v138, v156, v157, v158, v159, v160, v161, v162;
    v163 = sub_1BE051264();
    v164 = v146;
    v165 = sub_1BE050564();
    v167 = v166;
    LOBYTE(v135) = v168;
    v170 = v169;
    v163, v166, v168, v169, v171, v172, v173, v174;
    sub_1BD0DDF10(v140, v142, (v144 & 1), v175, v176, v177, v178, v179);
    v164, v180, v181, v182, v183, v184, v185, v186;
    v376 = v165;
    v377 = v167;
    v378 = v135 & 1;
    v379 = v170;
    LOBYTE(v380) = 1;
    sub_1BD0D7F18(v165, v167, v135 & 1);
    sub_1BE048C84();
    sub_1BD0D7F18(v165, v167, v135 & 1);
    sub_1BE048C84();
    sub_1BE04F9A4();

    sub_1BD0DDF10(v165, v167, (v135 & 1), v187, v188, v189, v190, v191);
    v170, v192, v193, v194, v195, v196, v197, v198;
    sub_1BD0DDF10(v165, v167, (v135 & 1), v199, v200, v201, v202, v203);
    v170, v204, v205, v206, v207, v208, v209, v210;
LABEL_23:
    v338 = v381;
    v339 = v382;
    v340 = v383;
    v341 = v384;
    v342 = v385;
    sub_1BD1970E0(v381, v382, v383, v384);
    goto LABEL_24;
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

id sub_1BD7A4610@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v72 = a1;
  v73 = a2;
  v75 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8, &qword_1BE0D1620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = v67 - v4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v76 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v67 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v67 - v13;
  v15 = *MEMORY[0x1E69B8048];
  v77 = *(v6 + 104);
  v77(v67 - v13, v15, v5, v12);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = result;
  v18 = sub_1BE04B6F4();
  v20 = v19;

  v21 = *(v6 + 8);
  v21(v14, v5);
  v78 = v18;
  v79 = v20;
  sub_1BD0DDEBC();
  v22 = sub_1BE0506C4();
  v70 = v23;
  v71 = v22;
  v68 = v24;
  v69 = v25;
  v26 = v77;
  (v77)(v10, v15, v5);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v27 = result;
  v28 = sub_1BE04B6F4();
  v30 = v29;

  v21(v10, v5);
  v78 = v28;
  v79 = v30;
  v31 = sub_1BE0506C4();
  v67[0] = v32;
  v67[1] = v31;
  v33 = v76;
  (v26)(v76, *MEMORY[0x1E69B8068], v5);
  result = PKPassKitBundle();
  if (result)
  {
    v34 = result;
    v35 = sub_1BE04B6F4();
    v37 = v36;

    v21(v33, v5);
    v78 = v35;
    v79 = v37;
    v38 = sub_1BE0506C4();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = swift_allocObject();
    v45[2] = v72;
    v45[3] = v73;
    sub_1BE048964();
    v46 = v74;
    sub_1BE051194();
    v45, v47, v48, v49, v50, v51, v52, v53;
    sub_1BD0DDF10(v38, v40, (v42 & 1), v54, v55, v56, v57, v58);
    v44, v59, v60, v61, v62, v63, v64, v65;
    v66 = sub_1BE0511A4();
    (*(*(v66 - 8) + 56))(v46, 0, 1, v66);
    return sub_1BE051174();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD7A4A58(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD7A4ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40508, &unk_1BE0C80E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404E8, &qword_1BE0C80D0);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v48 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1BE048964();
  sub_1BE051704();
  (*(v6 + 104))(v8, *MEMORY[0x1E69B8068], v5);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v6 + 8))(v8, v5);
    v51 = v18;
    v52 = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v23 = v22;
    LOBYTE(v17) = v24;
    v26 = v25;
    sub_1BD0DE4F4(&qword_1EBD40500, &qword_1EBD40508, &unk_1BE0C80E0, MEMORY[0x1E697D680]);
    sub_1BE050C24();
    sub_1BD0DDF10(v21, v23, (v17 & 1), v27, v28, v29, v30, v31);
    v26, v32, v33, v34, v35, v36, v37, v38;
    (*(v10 + 8))(v12, v9);
    sub_1BE052434();
    v40 = v39;
    sub_1BE04EBB4();
    v40, v41, v42, v43, v44, v45, v46, v47;
    return sub_1BD0DE53C(v14, &qword_1EBD404E8, &qword_1BE0C80D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD7A4E50(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v44 - v5;
  v7 = *&a2[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail];
  if (v7)
  {
    v8 = &a2[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
    v9 = *&a2[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
    if (v9)
    {
      v11 = *(v8 + 4);
      v10 = *(v8 + 5);
      v12 = *(v8 + 2);
      v44[0] = *(v8 + 3);
      v13 = *(v8 + 1);
      v14 = v7;
      sub_1BE048964();
      v15 = v14;
      sub_1BD36A5EC(v9, v13, v12, v44[0], v11);
      sub_1BD785FE0(v7, v9, v11);
      v10, v16, v17, v18, v19, v20, v21, v22;

      a2, v23, v24, v25, v26, v27, v28, v29;
      swift_unknownObjectRelease();
      v30 = v44[0];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v44[1] = v7;
      v43 = v7;
      sub_1BE048964();
      sub_1BE04D8C4();
    }
  }

  else
  {
    v31 = sub_1BE0528D4();
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    sub_1BE0528A4();
    sub_1BE048964();
    v32 = sub_1BE052894();
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E85E0];
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = a1;
    v33[5] = a2;
    v35 = sub_1BD122C00(0, 0, v6, &unk_1BE0F76E8, v33);
    v35, v36, v37, v38, v39, v40, v41, v42;
  }
}

uint64_t sub_1BD7A50A4()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return sub_1BD782DA8();
}

unint64_t sub_1BD7A51D8()
{
  result = qword_1EBD53108;
  if (!qword_1EBD53108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53108);
  }

  return result;
}

unint64_t sub_1BD7A522C()
{
  result = qword_1EBD53118;
  if (!qword_1EBD53118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD530E0, &qword_1BE0F7648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD530D8, &qword_1BE0F7640);
    sub_1BD0DE4F4(&qword_1EBD53100, &qword_1EBD530D8, &qword_1BE0F7640, MEMORY[0x1E69817F8]);
    sub_1BD7A51D8();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD53120, &qword_1EBD53110, &qword_1BE0F7690, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53118);
  }

  return result;
}

uint64_t sub_1BD7A5368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD7A53B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD7A50A4();
}

uint64_t sub_1BD7A5480(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD7A5368(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BD7A5534(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    sub_1BD7A554C(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

void sub_1BD7A554C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1BD0D7F18(a1, a2, a3 & 1);

    sub_1BE048C84();
  }

  else
  {

    sub_1BD7A559C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1BD7A559C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1BD1970E0(a1, a2, a3, a4);
  }

  return a1;
}

void sub_1BD7A55B4(void *result, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  if (BYTE1(a5) != 255)
  {
    sub_1BD7A55CC(result, a2, a3, a4, a5, ((a5 >> 8) & 1), a7, a8);
  }
}

void sub_1BD7A55CC(void *a1, char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a6)
  {
    sub_1BD0DDF10(a1, a2, (a3 & 1), a4, a5, a6, a7, a8);

    a4, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {

    sub_1BD7A561C(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1BD7A561C(void *a1, char *a2, char a3, void *a4, char a5, void *a6, void *a7, void *a8)
{
  if (a5 != -1)
  {
    sub_1BD19711C(a1, a2, a3, a4, (a5 & 1), a6, a7, a8);
  }
}

unint64_t sub_1BD7A5634()
{
  result = qword_1EBD53160;
  if (!qword_1EBD53160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53158, &unk_1BE0F7850);
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53160);
  }

  return result;
}

unint64_t sub_1BD7A56B8()
{
  result = qword_1EBD53168;
  if (!qword_1EBD53168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53170, &unk_1BE0F7860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD530E8, &qword_1BE0F7650);
    sub_1BD7A5480(&qword_1EBD53128, &qword_1EBD530E8, &qword_1BE0F7650, sub_1BD7A522C);
    swift_getOpaqueTypeConformance2();
    sub_1BD7A5368(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53168);
  }

  return result;
}

unint64_t sub_1BD7A5810(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_26:

    return sub_1BE050324();
  }

LABEL_3:
  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  v9 = *MEMORY[0x1E69DB648];
  do
  {
    if (v8)
    {
      v10 = MEMORY[0x1BFB40900](v7, a1);
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v10 = *(a1 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v6 = sub_1BE053704();
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_3;
    }

    v13 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v14 = sub_1BE052404();
    v15 = [v13 initWithString_];

    v41[0] = v9;
    v41[4] = sub_1BD7A5BB8();
    v41[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF60, &qword_1BE0BDC80);
    v16 = sub_1BE053A04();
    v17 = v9;
    v18 = v11;
    sub_1BD7A5C04(v41, &v39);
    v19 = v39;
    v20 = sub_1BD14BFD0();
    if (v21)
    {
      goto LABEL_23;
    }

    v16[(v20 >> 6) + 8] |= 1 << v20;
    *(v16[6] + 8 * v20) = v19;
    sub_1BD1B6140(&v40, (v16[7] + 32 * v20));
    v22 = v16[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_24;
    }

    v16[2] = v24;
    sub_1BD3726C0(v41);
    type metadata accessor for Key(0);
    sub_1BD372728();
    v25 = sub_1BE052224();
    v16, v26, v27, v28, v29, v30, v31, v32;
    [v15 sizeWithAttributes_];
    v34 = v33;

    if (v34 <= a4)
    {
      v35 = v18;
      v36 = sub_1BE050484();

      return v36;
    }

    ++v7;
  }

  while (v12 != v6);
  result = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v8)
  {
LABEL_30:
    MEMORY[0x1BFB40900](result, a1);
    return sub_1BE050484();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(a1 + 32 + 8 * result);
    return sub_1BE050484();
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7A5B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BD7A5810(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53178, &qword_1BE0F7940);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53180, qword_1BE0F7948);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v5;
  return result;
}

unint64_t sub_1BD7A5BB8()
{
  result = qword_1EBD53188;
  if (!qword_1EBD53188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD53188);
  }

  return result;
}

uint64_t sub_1BD7A5C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF68, &unk_1BE0CF350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7A5C74()
{
  result = qword_1EBD53190;
  if (!qword_1EBD53190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53180, qword_1BE0F7948);
    sub_1BD0DE4F4(&qword_1EBD53198, &qword_1EBD53178, &qword_1BE0F7940, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53190);
  }

  return result;
}

id sub_1BD7A5D58(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem__isManualProvisioning] = &type metadata for IsManualProvisioning;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_identifier];
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x80000001BE139690;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_provisionedPasses] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD7A5F20(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v63 = a2;
  v64 = a1;
  v3 = sub_1BE04BAC4();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v62 = v2;
  v6 = sub_1BD1881C0(v2, KeyPath);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v21 = v6 + 4;
  v22 = v6[2];
  v67 = 0x80000001BE1182A0;
  v68 = 0x80000001BE118310;
  v65 = 0x80000001BE118260;
  v66 = 0x80000001BE118280;
  while (2)
  {
    if (v22)
    {
      v23 = 0xEF65636976654420;
      switch(*v21)
      {
        case 1:
          v23 = 0x80000001BE118230;
          goto LABEL_3;
        case 2:
          v23 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v23 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          v23 = v65;
          goto LABEL_3;
        case 5:
          v23 = v66;
          goto LABEL_3;
        case 6:
          v23 = v67;
          goto LABEL_3;
        case 7:
          v23 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v23 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v23 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v23 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v6, v14, v15, v16, v17, v18, v19, v20;
          v6 = 0x80000001BE1182F0;
          goto LABEL_33;
        case 0xC:
          v23 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v23 = v68;
          goto LABEL_3;
        default:
LABEL_3:
          v24 = sub_1BE053B84();
          v23, v25, v26, v27, v28, v29, v30, v31;
          ++v21;
          --v22;
          if ((v24 & 1) == 0)
          {
            continue;
          }

LABEL_33:
          v6, v14, v15, v16, v17, v18, v19, v20;
          v43 = 0x6F63206775626564;
          v56 = 0xEC0000006769666ELL;
          break;
      }

      goto LABEL_34;
    }

    break;
  }

  v6, v14, v15, v16, v17, v18, v19, v20;
  v32 = swift_getKeyPath();
  v33 = v62;
  v34 = sub_1BD1881E0(v62, v32);
  v32, v35, v36, v37, v38, v39, v40, v41;
  if (v34)
  {
    v42 = "does not support auto reload";
    v43 = 0xD000000000000010;
    goto LABEL_27;
  }

  v44 = swift_getKeyPath();
  v45 = sub_1BD18820C(v33, v44);
  v44, v46, v47, v48, v49, v50, v51, v52;
  if ((v45 & 1) == 0)
  {
    v42 = "owItem";
    v43 = 0xD000000000000017;
    goto LABEL_27;
  }

  v53 = sub_1BE04BC84();
  v68 = [v53 paymentPass];

  if (!v68)
  {
LABEL_24:
    v54 = v59;
    sub_1BE04BC34();
    v55 = sub_1BE04BA54();
    (*(v60 + 8))(v54, v61);
    if ((v55 & 1) == 0)
    {
      v43 = 0;
      v56 = 0;
LABEL_34:
      v57 = 0;
      goto LABEL_35;
    }

    v42 = "manatee not required";
    v43 = 0xD00000000000001BLL;
LABEL_27:
    v56 = v42 | 0x8000000000000000;
    v57 = 1;
LABEL_35:
    v64(v43, v56, 0, v57);
    return;
  }

  if ([objc_opt_self() shouldOfferAutoReloadForPass_])
  {

    goto LABEL_24;
  }

  v64(0xD00000000000001CLL, 0x80000001BE139650, 0, 1);
  v58 = v68;
}

id sub_1BD7A6454()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BC84();
  v7 = [v6 paymentPass];

  if (v7)
  {
    sub_1BE04BC34();
    v8 = sub_1BE04BAB4();
    (*(v3 + 8))(v5, v2);
    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v10 = v7;
    v11 = sub_1BE04BBD4();
    v12 = [objc_allocWithZone(PKPaymentAutoReloadSetupController) initWithPass:v10 provisioningController:v11 viewStyle:v9 delegate:v1];

    v13 = OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller;
    v14 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller);
    *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller) = v12;

    v15 = *(v1 + v13);
    if (v15)
    {
      sub_1BE052434();
      v17 = v16;
      v18 = v15;
      v19 = sub_1BE04BB74();
      v17, v20, v21, v22, v23, v24, v25, v26;
      [v18 setReporter_];
    }
  }

  result = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_controller);
  if (result)
  {
    return [result thresholdTopUpSetupViewController];
  }

  return result;
}

uint64_t sub_1BD7A6664()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

void sub_1BD7A66B4(void *a1, void *a2)
{
  v3 = v2;
  sub_1BE052434();
  v7 = v6;
  v8 = sub_1BE04BB74();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = *(v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_provisionedPasses);
  v17 = type metadata accessor for ProvisioningAutoReloadCompleteFlowItem();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller] = 0;
  *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = &v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_identifier];
  *v19 = 0xD00000000000001ALL;
  *(v19 + 1) = 0x80000001BE1396F0;
  *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_provisionedPasses] = v16;
  *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_amount] = a1;
  *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_threshold] = a2;
  *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_reporter] = v8;
  v28.receiver = v18;
  v28.super_class = v17;
  v20 = v16;
  v21 = a1;
  v22 = a2;
  v23 = v8;
  v24 = objc_msgSendSuper2(&v28, sel_init);
  v25 = v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAutoReloadSetUpFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v3, &off_1F3BBB650, v24, &off_1F3BBB5F8, ObjectType, v26);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD7A69D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

void *sub_1BD7A6A20(uint64_t a1)
{
  v1 = sub_1BD7A6B0C(a1);
  sub_1BD28B498(v1);
  return v1;
}

void sub_1BD7A6A60(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = &a1[*a4];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = a1;
    sub_1BD8659A4(v10, a5, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD7A6B0C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BE04BC84();
  v4 = [v3 paymentPass];

  if (v4)
  {
    v5 = [objc_allocWithZone(PKPaymentAutoReloadSetupCompleteViewController) initWithPass:v4 amount:*(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_amount) threshold:*(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_threshold) setupMode:2 paymentDataProvider:0 delegate:v2];
    v6 = OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller;
    v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller);
    *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller) = v5;

    v8 = *(v2 + v6);
    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_reporter);
      v10 = v8;
      [v10 setReporter_];
    }
  }

  return *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningAutoReloadCompleteFlowItem_controller);
}

id AccountAutomaticPaymentsViewController.__allocating_init(controller:showSetupPrompt:)(void *a1, char a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC] = 0;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  swift_allocObject();
  v7 = a1;
  AccountAutomaticPaymentsModel.init(controller:)(v7);
  *&v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model] = v8;
  v6[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt] = a2;
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);

  return v9;
}

id AccountAutomaticPaymentsViewController.init(controller:showSetupPrompt:)(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC] = 0;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  swift_allocObject();
  v7 = a1;
  AccountAutomaticPaymentsModel.init(controller:)(v7);
  *&v3[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model] = v8;
  v3[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);

  return v9;
}

Swift::Void __swiftcall AccountAutomaticPaymentsViewController.loadView()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v57.receiver = v1;
  v57.super_class = ObjectType;
  objc_msgSendSuper2(&v57, sel_loadView, v9);
  v12 = *&v1[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_model];
  v13 = v1[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_showSetupPrompt];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  LOBYTE(v54) = 0;
  sub_1BE048964();
  sub_1BE051694();
  v15 = v56;
  v7[16] = v55;
  *(v7 + 3) = v15;
  v16 = v3[6];
  *&v7[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  v54 = v12;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE048964();
  sub_1BE051694();
  v17 = v56;
  *v7 = v55;
  *(v7 + 1) = v17;
  v7[v3[8]] = v13;
  v18 = &v7[v3[9]];
  *v18 = sub_1BD26717C;
  v18[1] = v14;
  sub_1BDA1BD2C();
  if (!v19)
  {
    v35 = 0;
    goto LABEL_6;
  }

  v20 = v19;
  v52 = v11;
  v21 = [*(v12 + 48) account];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = v21;
  v23 = [objc_opt_self() sharedService];
  if (v23)
  {
    v24 = v23;
    v25 = [*(v12 + 48) paymentSetupContext];
    v26 = objc_allocWithZone(PKAccountTermsAndConditionsController);
    v27 = sub_1BE052404();
    v20, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v26 initWithAccount:v22 webService:v24 context:v25 termsIdentifier:v27];

    v11 = v52;
LABEL_6:
    *&v7[v3[7]] = v35;
    sub_1BD7A7570(v7, v11);
    v14, v36, v37, v38, v39, v40, v41, v42;
    sub_1BD64081C(v11, v53);
    v43 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53308, &qword_1BE0F7A78));
    v44 = sub_1BE04F894();
    v45 = *&v1[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC];
    *&v1[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC] = v44;
    v46 = v44;

    v47 = v46;
    [v1 addChildViewController_];
    v48 = [v1 view];
    if (v48)
    {
      v49 = v48;
      v50 = [v47 view];

      if (v50)
      {
        [v49 addSubview_];

        [v47 didMoveToParentViewController_];
        sub_1BD640B5C(v11);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

Swift::Void __swiftcall AccountAutomaticPaymentsViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *&v0[OBJC_IVAR___PKAccountAutomaticPaymentsViewController_hostingVC];
    if (v11)
    {
      v12 = v11;
      v13 = [v12 view];
      [v13 setFrame_];
    }
  }

  else
  {
    __break(1u);
  }
}

id AccountAutomaticPaymentsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
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

id AccountAutomaticPaymentsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD7A7570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAutomaticPaymentsHeroView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD7A7624(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BE04CDA4();
  sub_1BD7A8B90(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  a2[4] = sub_1BE04EEC4();
  a2[5] = v4;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1BD0DE19C(v49, v48, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(v49, &qword_1EBD51EC0, &qword_1BE0B7120);
  v48[0] = 0;
  sub_1BE051694();
  v5 = *(&v49[0] + 1);
  a2[13] = *&v49[0];
  a2[14] = v5;
  v6 = type metadata accessor for VirtualCardSheet(0);
  v7 = v6[10];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v6[11];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = v6[12];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  v10 = v6[13];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  swift_storeEnumTagMultiPayload();
  a2[6] = a1;
  type metadata accessor for VirtualCardAuthorizationModel(0);
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = a1;
  sub_1BE04D8B4(v49);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v12, v21, v22, v23, v24, v25, v26, v27;
  sub_1BD7A8B90(&qword_1EBD53310, type metadata accessor for VirtualCardAuthorizationModel, MEMORY[0x1E69BCA10]);
  *a2 = sub_1BE04E954();
  a2[1] = v28;
  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  sub_1BE04D8B4(v49);
  v29, v31, v32, v33, v34, v35, v36, v37;
  v30, v38, v39, v40, v41, v42, v43, v44;
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD7A8B90(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v45 = sub_1BE04E954();
  v47 = v46;

  a2[2] = v45;
  a2[3] = v47;
}

uint64_t type metadata accessor for VirtualCardSheet(uint64_t a1)
{
  result = qword_1EBD53318;
  if (!qword_1EBD53318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD7A79BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53338, &qword_1BE0F7CB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v100 = v83 - v4;
  v5 = type metadata accessor for VirtualCardSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53340, &qword_1BE0F7CB8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53348, &unk_1BE0F7CC0);
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v94 = v83 - v14;
  v15 = sub_1BD7A83F0();
  v17 = v16;
  v102 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD7A8900(v1, v102);
  v101 = *(v6 + 80);
  v18 = (v101 + 16) & ~v101;
  v19 = swift_allocObject();
  sub_1BD7A8964(v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v99 = *(v1 + 24);
  v20 = sub_1BE04CAE4();
  v21 = sub_1BE051C54();
  v22 = 18.0;
  v113 = 0uLL;
  if (v21)
  {
    v22 = 10.0;
  }

  *&v114 = v15;
  *(&v114 + 1) = v17;
  *&v115 = sub_1BD7A8F5C;
  *(&v115 + 1) = v19;
  LOBYTE(v116) = v20 & 1;
  *&v117 = 0;
  *(&v116 + 1) = 0;
  *(&v117 + 1) = 0x4032000000000000;
  *v118 = v22;
  *&v118[8] = xmmword_1BE0B7110;
  v119[0] = 0;
  v119[1] = 0;
  v119[2] = v15;
  v119[3] = v17;
  v119[4] = sub_1BD7A8F5C;
  v119[5] = v19;
  v120 = v20 & 1;
  v121 = 0;
  v122 = 0;
  v123 = 0x4032000000000000;
  v124 = v22;
  v125 = xmmword_1BE0B7110;
  sub_1BD0DE19C(&v113, v112, &qword_1EBD38AC8, &qword_1BE0EB100);
  sub_1BD0DE53C(v119, &qword_1EBD38AC8, &qword_1BE0EB100);
  sub_1BE051C64();
  v105 = v2;
  v104 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53350, &unk_1BE0F7CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCC8, &qword_1BE0E9A68);
  sub_1BD0DE4F4(&qword_1EBD53358, &qword_1EBD53350, &unk_1BE0F7CD0, MEMORY[0x1E69817F8]);
  sub_1BD7A89D8();
  v23 = v100;
  sub_1BE051C74();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53378, &unk_1BE0F7CF0);
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  v25 = v102;
  sub_1BD7A8900(v2, v102);
  v91 = swift_allocObject();
  sub_1BD7A8964(v25, v91 + v18);
  LOBYTE(v112[0]) = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v109[0]) = 0;
  v83[2] = sub_1BE04CDA4();
  v83[1] = sub_1BD7A8B90(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  swift_retain_n();
  v26 = sub_1BE04EEC4();
  v88 = v27;
  v89 = v26;
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD7A8B90(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v28 = sub_1BE04E954();
  v84 = v29;
  v85 = v28;
  v86 = LOBYTE(v112[0]);
  v87 = LOBYTE(v109[0]);
  v30 = *(v2 + 48);
  v112[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4E8, &qword_1BE0C12C8);
  v112[4] = sub_1BD0DE4F4(&qword_1EBD53380, &qword_1EBD3D4E8, &qword_1BE0C12C8, &unk_1BE0D59B8);
  v112[0] = v30;
  v97 = v2;
  sub_1BD7A8900(v2, v25);
  v31 = swift_allocObject();
  v92 = v18;
  sub_1BD7A8964(v25, v31 + v18);
  v32 = &v10[v8[26]];
  sub_1BD250AA8();
  sub_1BD7A8B90(&qword_1EBD35E40, sub_1BD250AA8, &protocol conformance descriptor for PKPaymentSheetExperiment);
  v33 = v30;
  *v32 = sub_1BE04EEC4();
  v32[1] = v34;
  v35 = &v10[v8[27]];
  *v35 = sub_1BE04EEC4();
  v35[1] = v36;
  v37 = v100;
  v38 = &v10[v8[28]];
  LOBYTE(v108[0]) = 0;
  sub_1BE051694();
  v39 = v109[1];
  *v38 = v109[0];
  *(v38 + 1) = v39;
  v40 = &v10[v8[29]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  *(v10 + 12) = *&v118[16];
  v41 = *v118;
  *(v10 + 4) = v117;
  *(v10 + 5) = v41;
  v42 = v114;
  *v10 = v113;
  *(v10 + 1) = v42;
  v43 = v116;
  *(v10 + 2) = v115;
  *(v10 + 3) = v43;
  sub_1BD0DE19C(v37, &v10[v8[17]], &qword_1EBD53338, &qword_1BE0F7CB0);
  v44 = &v10[v8[18]];
  v45 = v84;
  *v44 = v85;
  *(v44 + 1) = v45;
  *(v44 + 2) = sub_1BD31FF5C;
  *(v44 + 3) = 0;
  v44[32] = v86;
  *(v44 + 5) = KeyPath;
  v44[48] = v87;
  v46 = v88;
  *(v44 + 7) = v89;
  *(v44 + 8) = v46;
  v47 = v91;
  *(v44 + 9) = sub_1BD7A8ABC;
  *(v44 + 10) = v47;
  *(v44 + 11) = 0;
  *(v44 + 12) = 0;
  *(v44 + 13) = 0x4014000000000000;
  *&v10[v8[19]] = 0;
  v10[v8[20]] = 1;
  *&v10[v8[21]] = v99;
  sub_1BD0EE8CC(v112, &v10[v8[22]]);
  v10[v8[23]] = 1;
  v48 = &v10[v8[25]];
  *v48 = sub_1BD7A8B1C;
  *(v48 + 1) = v31;
  sub_1BD0EE8CC(v112, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998, &unk_1BE0F7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0, &unk_1BE0B74C0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v106, v109);
    v49 = v110;
    v50 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v50 + 56))(v108, v49, v50);
    sub_1BD0DE53C(v37, &qword_1EBD53338, &qword_1BE0F7CB0);
    __swift_destroy_boxed_opaque_existential_0(v112, v51, v52, v53, v54, v55, v56, v57);
    v10[v8[24]] = v108[0];
    __swift_destroy_boxed_opaque_existential_0(v109, v58, v59, v60, v61, v62, v63, v64);
  }

  else
  {
    sub_1BD0DE53C(v37, &qword_1EBD53338, &qword_1BE0F7CB0);
    __swift_destroy_boxed_opaque_existential_0(v112, v65, v66, v67, v68, v69, v70, v71);
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    sub_1BD0DE53C(v106, &qword_1EBD389A0, &qword_1BE0F7D40);
    v10[v8[24]] = 2;
  }

  v72 = v93;
  sub_1BD7A8BD8(v10, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
  v73 = v97;
  sub_1BE0516C4();
  sub_1BD0DE4F4(&qword_1EBD53388, &qword_1EBD53340, &qword_1BE0F7CB8, &unk_1BE10CBC8);
  v74 = v94;
  sub_1BE050704();
  sub_1BD0DE53C(v112, &qword_1EBD51FA0, &unk_1BE0BA2A0);
  sub_1BD0DE53C(v72, &qword_1EBD53340, &qword_1BE0F7CB8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53390, &qword_1BE0F7D48);
  v76 = v98;
  sub_1BE04C924();
  v77 = v73;
  v78 = v102;
  sub_1BD7A8900(v77, v102);
  v79 = v92;
  v80 = swift_allocObject();
  sub_1BD7A8964(v78, v80 + v79);
  result = (*(v95 + 32))(v76, v74, v96);
  v82 = (v76 + *(v75 + 56));
  *v82 = sub_1BD7A8EEC;
  v82[1] = v80;
  return result;
}

uint64_t sub_1BD7A83F0()
{
  result = [*(*(v0 + 48) + *((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v2 = result;
    v3 = 0x796150656C707041;
    v4 = [result virtualCardEnrollmentRequest];

    if (v4)
    {
      v5 = [v4 isPeerPaymentPass];

      if (v5)
      {
        return 0x736143656C707041;
      }
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD7A8514(uint64_t a1)
{
  sub_1BD7A8788(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0EDF50(319);
    if (v2 <= 0x3F)
    {
      sub_1BD0EDFE4(319);
      if (v3 <= 0x3F)
      {
        sub_1BD7A881C(319, &qword_1EBD53330, type metadata accessor for VirtualCardAuthorizationModel, type metadata accessor for PaymentAuthorizationStateMachineWrapper);
        if (v4 <= 0x3F)
        {
          sub_1BD7A8880(319, &qword_1EBD388E0, &qword_1EBD51EC0, &qword_1BE0B7120, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1BD0EE078(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1BD7A881C(319, &qword_1EBD388F8, MEMORY[0x1E69BC9D0], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1BD0EE078(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1BD7A881C(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD7A8880(319, &qword_1EBD38908, &qword_1EBD38898, &unk_1BE0B72C0, MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
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
}

void sub_1BD7A8788(uint64_t a1)
{
  if (!qword_1EBD53328)
  {
    type metadata accessor for VirtualCardAuthorizationModel(255);
    sub_1BD7A8B90(&qword_1EBD53310, type metadata accessor for VirtualCardAuthorizationModel, MEMORY[0x1E69BCA10]);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD53328);
    }
  }
}

void sub_1BD7A881C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD7A8880(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1BD7A8900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualCardSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7A8964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualCardSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7A89D8()
{
  result = qword_1EBD53360;
  if (!qword_1EBD53360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DCC8, &qword_1BE0E9A68);
    sub_1BD0DE4F4(&qword_1EBD53368, &qword_1EBD53370, &unk_1BE0F7CE0, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0, &unk_1BE0E1690, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53360);
  }

  return result;
}

id sub_1BD7A8B20()
{
  type metadata accessor for VirtualCardSheet(0);
  sub_1BD6B2184(1, 1u, 0);
  return sub_1BD7429E4();
}

uint64_t sub_1BD7A8B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD7A8BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53340, &qword_1BE0F7CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_90()
{
  v1 = type metadata accessor for VirtualCardSheet(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 32), v17, v18, v19, v20, v21, v22, v23;

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56), v24, v25, v26, v27, v28, v29, v30);
  }

  *(v2 + 96), v24, v25, v26, v27, v28, v29, v30;
  *(v2 + 112), v31, v32, v33, v34, v35, v36, v37;
  v38 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_1BE04C884();
    (*(*(v46 - 8) + 8))(v2 + v38, v46);
  }

  else
  {
    *(v2 + v38), v39, v40, v41, v42, v43, v44, v45;
  }

  sub_1BD0D4604(*(v2 + v1[11]), *(v2 + v1[11] + 8), v47, v48, v49, v50, v51, v52);
  v53 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = sub_1BE04EB24();
    (*(*(v61 - 8) + 8))(v2 + v53, v61);
  }

  else
  {
    *(v2 + v53), v54, v55, v56, v57, v58, v59, v60;
  }

  v62 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = sub_1BE04FD04();
    v71 = *(v70 - 8);
    if (!(*(v71 + 48))(v2 + v62, 1, v70))
    {
      (*(v71 + 8))(v2 + v62, v70);
    }
  }

  else
  {
    *(v2 + v62), v63, v64, v65, v66, v67, v68, v69;
  }

  return swift_deallocObject();
}

void sub_1BD7A8EEC(uint64_t a1)
{
  type metadata accessor for VirtualCardSheet(0);

  sub_1BD0EBE44(a1);
}

uint64_t sub_1BD7A8F8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(&v27);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = a4;
  v25 = a2;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41C00, &qword_1BE0CB9F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533C0, &qword_1BE0F7E08);
  sub_1BD0DE4F4(&qword_1EBD53410, &qword_1EBD41C00, &qword_1BE0CB9F8, MEMORY[0x1E69E6338]);
  sub_1BD7A9D6C();
  sub_1BD7AB7B0();
  return sub_1BE0519D4();
}

uint64_t sub_1BD7A9104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v5;
  v22 = *(a1 + 32);
  v23 = *(a1 + 48);
  v6 = sub_1BE04F7C4();
  v17 = 0;
  sub_1BD7A94D4(v21, &v18);
  v24 = v18;
  v25 = *v19;
  v26 = *&v19[16];
  v27 = *&v19[32];
  v28[0] = v18;
  v28[1] = *v19;
  v28[2] = *&v19[16];
  v28[3] = *&v19[32];
  sub_1BD0DE19C(&v24, &v13, &qword_1EBD53420, &qword_1BE0F7EB0);
  sub_1BD0DE53C(v28, &qword_1EBD53420, &qword_1BE0F7EB0);
  *&v16[55] = v27;
  *&v16[39] = v26;
  *&v16[23] = v25;
  *&v16[7] = v24;
  v18 = v6;
  v19[0] = v17;
  *&v19[1] = *v16;
  *&v20[15] = *(&v27 + 1);
  *v20 = *&v16[48];
  *&v19[33] = *&v16[32];
  *&v19[17] = *&v16[16];
  if (*(&v22 + 1))
  {
    v13 = v22;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v7 = sub_1BE0506C4();
    v11 = v10 & 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v11 = 0;
    v9 = 0;
  }

  *&v13 = v7;
  *(&v13 + 1) = v8;
  v14 = v11;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533D0, &qword_1BE0F7E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533E0, &qword_1BE0F7E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD0DE4F4(&qword_1EBD533C8, &qword_1EBD533D0, &qword_1BE0F7E10, MEMORY[0x1E6981870]);
  sub_1BD7A9E64(&qword_1EBD533D8, &qword_1EBD533E0, &qword_1BE0F7E18, sub_1BD7A9EE0);
  sub_1BD12E194();
  return sub_1BE051A34();
}

uint64_t sub_1BD7A9388(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  sub_1BE048C84();
  v10 = a3;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53428, &qword_1BE0F7EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533F0, &qword_1BE0F7E20);
  sub_1BD0DE4F4(&qword_1EBD53430, &qword_1EBD53428, &qword_1BE0F7EB8, MEMORY[0x1E69E6338]);
  sub_1BD7A9EE0();
  sub_1BD7ABAAC();
  return sub_1BE0519D4();
}

void sub_1BD7A94D4(uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 8);
  v98 = *a2;
  v103 = v5;
  v6 = *(a2 + 24);
  v99 = *(a2 + 16);
  v100 = v6;
  v7 = *(a2 + 40);
  v101 = *(a2 + 32);
  v102 = v7;
  v97 = *(a2 + 48);
  v96 = sub_1BE04BD74();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v91[-v10];
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_1BE04D8B4(v106);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  v34 = v106[0];
  if (!*(v106[0] + 2))
  {
    v106[0], v27, v28, v29, v30, v31, v32, v33;
    v41 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    v37 = 0;
    v35 = 0;
    goto LABEL_7;
  }

  v35 = *(v106[0] + 4);
  v36 = *(v106[0] + 5);
  v37 = *(v106[0] + 6);
  v38 = *(v106[0] + 7);
  v40 = *(v106[0] + 8);
  v39 = *(v106[0] + 9);
  v41 = *(v106[0] + 10);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v34, v42, v43, v44, v45, v46, v47, v48;
  if (!v36)
  {
LABEL_7:
    v49 = v103;
    if (!v103)
    {
      sub_1BD7AB814(a2, v106);
      sub_1BD7AB870(v35, 0, v37, v38, v40, v39, v41, v67);
      goto LABEL_13;
    }

    v36 = 0;
    goto LABEL_9;
  }

  v49 = v103;
  if (!v103)
  {
LABEL_9:
    sub_1BD7AB814(a2, v106);
    sub_1BD7AB870(v35, v36, v37, v38, v40, v39, v41, v54);
    sub_1BD7AB870(v98, v49, v99, v100, v101, v102, v97, v55);
LABEL_10:
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 1;
    v60 = *(a2 + 24);
    if (!v60)
    {
LABEL_16:
      v61 = 0;
      v66 = 0;
      v64 = 0;
      goto LABEL_17;
    }

LABEL_11:
    v104[0] = *(a2 + 16);
    v104[1] = v60;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v61 = sub_1BE0506C4();
    v60 = v62;
    v64 = v63;
    v66 = v65 & 1;
    sub_1BD0D7F18(v61, v62, v65 & 1);
    sub_1BE048C84();
LABEL_17:
    sub_1BD7AB8D4(v56, v59, v57, v58);
    sub_1BD1969AC(v61, v60, v66, v64);
    sub_1BD1969F0(v61, v60, v66, v64, v79, v80, v81, v82);
    *a3 = v56;
    a3[1] = v59;
    a3[2] = v57;
    a3[3] = v58;
    a3[4] = v61;
    a3[5] = v60;
    a3[6] = v66;
    a3[7] = v64;
    sub_1BD1969F0(v61, v60, v66, v64, v83, v84, v85, v86);
    sub_1BD7AB91C(v56, v59, v57, v58, v87, v88, v89, v90);
    return;
  }

  v106[0] = v98;
  v106[1] = v103;
  v106[2] = v99;
  v106[3] = v100;
  v106[4] = v101;
  v106[5] = v102;
  v50 = v97;
  v106[6] = v97;
  v105[0] = v35;
  v105[1] = v36;
  v105[2] = v37;
  v105[3] = v38;
  v105[4] = v40;
  v105[5] = v39;
  v105[6] = v41;
  sub_1BD7AB814(a2, v104);
  sub_1BD7AB964(v35, v36, v37, v38, v40, v39, v41);
  v92 = sub_1BD314FC4(v105, v106);
  sub_1BD7AB870(v98, v103, v99, v100, v101, v102, v50, v51);
  sub_1BD7AB870(v35, v36, v37, v38, v40, v39, v41, v52);
  sub_1BD7AB870(v35, v36, v37, v38, v40, v39, v41, v53);
  if (!v92)
  {
    goto LABEL_10;
  }

LABEL_13:
  v68 = *MEMORY[0x1E69B80B0];
  v69 = v95;
  v70 = v94;
  v71 = v96;
  v103 = *(v95 + 104);
  (v103)(v94, v68, v96);
  v72 = PKPassKitBundle();
  if (v72)
  {
    v73 = v72;
    v56 = sub_1BE04B6F4();
    v59 = v74;

    v102 = *(v69 + 8);
    (v102)(v70, v71);
    v75 = v93;
    (v103)(v93, v68, v71);
    v76 = PKPassKitBundle();
    if (v76)
    {
      v77 = v76;
      v57 = sub_1BE04B6F4();
      v58 = v78;

      (v102)(v75, v71);
      v60 = *(a2 + 24);
      if (!v60)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD7A9AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04E2E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533A0, &qword_1BE0F7DF8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-v9];
  v11 = v1[3];
  v16 = *v1;
  v17 = *(v1 + 1);
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD533A8, &qword_1BE0F7E00);
  sub_1BD7A9E64(&qword_1EBD533B0, &qword_1EBD533A8, &qword_1BE0F7E00, sub_1BD7A9D6C);
  sub_1BE0504E4();
  (*(v4 + 104))(v6, *MEMORY[0x1E697DAD8], v3);
  sub_1BD0DE4F4(&qword_1EBD53400, &qword_1EBD533A0, &qword_1BE0F7DF8, MEMORY[0x1E697CD20]);
  sub_1BE050B84();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53408, &qword_1BE0F7E58);
  v14 = a1 + *(result + 36);
  *v14 = KeyPath;
  *(v14 + 8) = 0x4028000000000000;
  *(v14 + 16) = 0;
  return result;
}

unint64_t sub_1BD7A9D6C()
{
  result = qword_1EBD533B8;
  if (!qword_1EBD533B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD533C0, &qword_1BE0F7E08);
    sub_1BD0DE4F4(&qword_1EBD533C8, &qword_1EBD533D0, &qword_1BE0F7E10, MEMORY[0x1E6981870]);
    sub_1BD7A9E64(&qword_1EBD533D8, &qword_1EBD533E0, &qword_1BE0F7E18, sub_1BD7A9EE0);
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD533B8);
  }

  return result;
}

uint64_t sub_1BD7A9E64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD7A9EE0()
{
  result = qword_1EBD533E8;
  if (!qword_1EBD533E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD533F0, &qword_1BE0F7E20);
    sub_1BD7A9F98();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD533E8);
  }

  return result;
}

unint64_t sub_1BD7A9F98()
{
  result = qword_1EBD533F8;
  if (!qword_1EBD533F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD533F8);
  }

  return result;
}

__n128 sub_1BD7A9FEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53470, &qword_1BE0F80C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v18 - v11;
  *v12 = sub_1BE04F7B4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53478, &qword_1BE0F80D0);
  sub_1BD7AA168(a1, a2, a3, a4, &v12[*(v13 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v12, a5, &qword_1EBD53470, &qword_1BE0F80C8);
  v14 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53480, &qword_1BE0F80D8) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

void sub_1BD7AA168(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v206 = a4;
  v197 = a3;
  v196 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53488, &unk_1BE0F80E0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v214 = &v196 - v9;
  v10 = sub_1BE050404();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v196 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51268, &unk_1BE0F2A38);
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v196 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53490, &qword_1BE0F80F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v209 = &v196 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v208 = &v196 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v207 = &v196 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v215 = &v196 - v25;
  v26 = sub_1BE052404();
  v27 = PKUIImageNamed(v26);

  if (v27)
  {
    v205 = a5;
    v204 = sub_1BE051544();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v203 = v218;
    v202 = v219;
    v201 = v220;
    v200 = v221;
    v199 = v222;
    v198 = v223;
    v210 = v8;
    v211 = v7;
    if (a2)
    {
      v216 = v196;
      v217 = a2;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v28 = sub_1BE0506C4();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = sub_1BE050294();
      (*(v11 + 104))(v13, *MEMORY[0x1E6980EA8], v10);
      v36 = sub_1BE050434();
      v35, v37, v38, v39, v40, v41, v42, v43;
      (*(v11 + 8))(v13, v10);
      v44 = sub_1BE0505F4();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v36, v45, v47, v49, v51, v52, v53, v54;
      sub_1BD0DDF10(v28, v30, (v32 & 1), v55, v56, v57, v58, v59);
      v34, v60, v61, v62, v63, v64, v65, v66;
      sub_1BE050364();
      v67 = sub_1BE050544();
      v69 = v68;
      LOBYTE(v36) = v70;
      v72 = v71;
      sub_1BD0DDF10(v44, v46, (v48 & 1), v71, v73, v74, v75, v76);
      v50, v77, v78, v79, v80, v81, v82, v83;
      v84 = sub_1BE051464();
      v85 = sub_1BE050564();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v84, v86, v88, v90, v92, v93, v94, v95;
      v96 = (v36 & 1);
      v97 = v210;
      sub_1BD0DDF10(v67, v69, v96, v98, v99, v100, v101, v102);
      v72, v103, v104, v105, v106, v107, v108, v109;
      KeyPath = swift_getKeyPath();
      v111 = &v17[*(v212 + 36)];
      v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
      v113 = sub_1BE0505C4();
      (*(*(v113 - 8) + 56))(v111 + v112, 1, 1, v113);
      *v111 = swift_getKeyPath();
      *v17 = v85;
      *(v17 + 1) = v87;
      v17[16] = v89 & 1;
      *(v17 + 3) = v91;
      *(v17 + 4) = KeyPath;
      v17[40] = 1;
      v7 = v211;
      v114 = v213;
      sub_1BD0DE19C(v17, v213, &qword_1EBD51268, &unk_1BE0F2A38);
      v115 = v214;
      sub_1BD0DE19C(v114, v214, &qword_1EBD51268, &unk_1BE0F2A38);
      v116 = v115 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD534A0, &qword_1BE0F8168) + 48);
      *v116 = 0x402E000000000000;
      *(v116 + 8) = 0;
      sub_1BD0DE53C(v17, &qword_1EBD51268, &unk_1BE0F2A38);
      sub_1BD0DE53C(v114, &qword_1EBD51268, &unk_1BE0F2A38);
      v117 = v215;
      sub_1BD0DE204(v115, v215, &qword_1EBD53488, &unk_1BE0F80E0);
      v118 = *(v97 + 56);
      v118(v117, 0, 1, v7);
    }

    else
    {
      v118 = *(v8 + 56);
      v118(v215, 1, 1, v7);
    }

    if (v206)
    {
      v216 = v197;
      v217 = v206;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v119 = sub_1BE0506C4();
      v121 = v120;
      v123 = v122;
      v125 = v124;
      v126 = sub_1BE050324();
      v127 = sub_1BE0505F4();
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v126, v128, v130, v132, v134, v135, v136, v137;
      sub_1BD0DDF10(v119, v121, (v123 & 1), v138, v139, v140, v141, v142);
      v125, v143, v144, v145, v146, v147, v148, v149;
      v150 = sub_1BE051494();
      v151 = sub_1BE050564();
      v153 = v152;
      LOBYTE(v119) = v154;
      v156 = v155;
      v150, v152, v154, v155, v157, v158, v159, v160;
      sub_1BD0DDF10(v127, v129, (v131 & 1), v161, v162, v163, v164, v165);
      v133, v166, v167, v168, v169, v170, v171, v172;
      v173 = swift_getKeyPath();
      v174 = &v17[*(v212 + 36)];
      v175 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
      v176 = sub_1BE0505C4();
      (*(*(v176 - 8) + 56))(v174 + v175, 1, 1, v176);
      *v174 = swift_getKeyPath();
      *v17 = v151;
      *(v17 + 1) = v153;
      v17[16] = v119 & 1;
      *(v17 + 3) = v156;
      *(v17 + 4) = v173;
      v17[40] = 1;
      v177 = v213;
      sub_1BD0DE19C(v17, v213, &qword_1EBD51268, &unk_1BE0F2A38);
      v178 = v214;
      sub_1BD0DE19C(v177, v214, &qword_1EBD51268, &unk_1BE0F2A38);
      v179 = v178 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD534A0, &qword_1BE0F8168) + 48);
      *v179 = 0x403A000000000000;
      *(v179 + 8) = 0;
      sub_1BD0DE53C(v17, &qword_1EBD51268, &unk_1BE0F2A38);
      sub_1BD0DE53C(v177, &qword_1EBD51268, &unk_1BE0F2A38);
      v180 = v207;
      sub_1BD0DE204(v178, v207, &qword_1EBD53488, &unk_1BE0F80E0);
      (*(v210 + 56))(v180, 0, 1, v211);
    }

    else
    {
      v180 = v207;
      v118(v207, 1, 1, v7);
    }

    v181 = v215;
    v182 = v208;
    sub_1BD0DE19C(v215, v208, &qword_1EBD53490, &qword_1BE0F80F0);
    v183 = v209;
    sub_1BD0DE19C(v180, v209, &qword_1EBD53490, &qword_1BE0F80F0);
    v184 = v205;
    v185 = v204;
    v186 = v203;
    *v205 = v204;
    v184[1] = v186;
    *(v184 + 16) = v202;
    v184[3] = v201;
    *(v184 + 32) = v200;
    v187 = v198;
    v184[5] = v199;
    v184[6] = v187;
    v184[7] = 0x4034000000000000;
    *(v184 + 64) = 0;
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53498, &qword_1BE0F80F8);
    sub_1BD0DE19C(v182, v184 + *(v188 + 64), &qword_1EBD53490, &qword_1BE0F80F0);
    sub_1BD0DE19C(v183, v184 + *(v188 + 80), &qword_1EBD53490, &qword_1BE0F80F0);
    sub_1BE048964();
    sub_1BD0DE53C(v180, &qword_1EBD53490, &qword_1BE0F80F0);
    sub_1BD0DE53C(v181, &qword_1EBD53490, &qword_1BE0F80F0);
    sub_1BD0DE53C(v183, &qword_1EBD53490, &qword_1BE0F80F0);
    sub_1BD0DE53C(v182, &qword_1EBD53490, &qword_1BE0F80F0);
    v185, v189, v190, v191, v192, v193, v194, v195;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD7AAB8C()
{
  v1 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v2 = sub_1BE052404();
  [v1 setIdentifier_];

  if (*(v0 + 24))
  {
    v3 = sub_1BE052404();
  }

  else
  {
    v3 = 0;
  }

  [v1 setTitle_];

  if (*(v0 + 40))
  {
    v4 = sub_1BE052404();
  }

  else
  {
    v4 = 0;
  }

  [v1 setMessage_];

  if (*(v0 + 56))
  {
    v5 = *(v0 + 64);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1BE052404();
      v8 = [objc_opt_self() systemImageNamed_];

      if (v8)
      {
        v9 = [v8 imageWithTintColor:v6 renderingMode:1];
      }

      else
      {
        v9 = 0;
      }

      [v1 setMessageImage_];
    }
  }

  v10 = *(v0 + 112);
  if (v10)
  {
    v11 = sub_1BE052404();
  }

  else
  {
    v11 = 0;
  }

  [v1 setButtonTitle_];

  [v1 setShowDisclosure_];
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  if (v12)
  {
    v14 = objc_allocWithZone(PKDashboardPassMessageImageDescriptorImageAsset);
    v15 = v12;
    v16 = [v14 initWithImage:v15 tintColor:0 backgroundColor:v13];
    [v1 setImageDescriptor_];
  }

  [v1 setStrokeImage_];
  if ((*(v0 + 96) & 1) == 0)
  {
    [v1 setImageContentMode_];
  }

  return v1;
}

double sub_1BD7AAE00@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04F7B4();
  v33 = 0;
  sub_1BD7AAFF4(a1, a2, &v17);
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v49[12] = v29;
  v49[13] = v30;
  v49[14] = v31;
  v49[8] = v25;
  v49[9] = v26;
  v49[11] = v28;
  v49[10] = v27;
  v49[4] = v21;
  v49[5] = v22;
  v49[7] = v24;
  v49[6] = v23;
  v49[0] = v17;
  v49[1] = v18;
  v49[2] = v19;
  v49[3] = v20;
  sub_1BD0DE19C(&v34, &v16, &qword_1EBD53460, &qword_1BE0F80B0);
  sub_1BD0DE53C(v49, &qword_1EBD53460, &qword_1BE0F80B0);
  *&v32[183] = v45;
  *&v32[199] = v46;
  *&v32[215] = v47;
  *&v32[231] = v48;
  *&v32[119] = v41;
  *&v32[135] = v42;
  *&v32[151] = v43;
  *&v32[167] = v44;
  *&v32[55] = v37;
  *&v32[71] = v38;
  *&v32[87] = v39;
  *&v32[103] = v40;
  *&v32[7] = v34;
  *&v32[23] = v35;
  *&v32[39] = v36;
  v7 = *&v32[208];
  *(a3 + 209) = *&v32[192];
  *(a3 + 225) = v7;
  *(a3 + 241) = *&v32[224];
  v8 = *&v32[144];
  *(a3 + 145) = *&v32[128];
  *(a3 + 161) = v8;
  v9 = *&v32[176];
  *(a3 + 177) = *&v32[160];
  *(a3 + 193) = v9;
  v10 = *&v32[80];
  *(a3 + 81) = *&v32[64];
  *(a3 + 97) = v10;
  v11 = *&v32[112];
  *(a3 + 113) = *&v32[96];
  *(a3 + 129) = v11;
  v12 = *&v32[16];
  *(a3 + 17) = *v32;
  *(a3 + 33) = v12;
  result = *&v32[32];
  v14 = *&v32[48];
  *(a3 + 49) = *&v32[32];
  v15 = v33;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v15;
  *(a3 + 256) = *&v32[239];
  *(a3 + 65) = v14;
  return result;
}

void sub_1BD7AAFF4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 112))
  {
    v5 = a1;
    v6 = sub_1BE0513E4();
    PKUIPixelLength();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v49[6] = v98;
    *&v49[22] = v99;
    *&v49[38] = v100;
    sub_1BE051CD4();
    sub_1BE04EE54();
    v7 = sub_1BE050204();
    sub_1BE04E1F4();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v50 = 0;
    *v39 = v6;
    *&v39[8] = 256;
    *&v39[10] = *v49;
    *&v39[26] = *&v49[16];
    *&v39[42] = *&v49[32];
    *&v39[56] = *(&v100 + 1);
    v40 = v32;
    v41 = v33;
    v45 = v37;
    v46 = v38;
    v43 = v35;
    v44 = v36;
    v42 = v34;
    LOBYTE(v47) = v7;
    *(&v47 + 1) = v8;
    *v48 = v10;
    *&v48[8] = v12;
    *&v48[16] = v14;
    v48[24] = 0;
    v69 = *v39;
    v70 = *&v39[16];
    v73 = v32;
    v74 = v33;
    v71 = *&v39[32];
    v72 = *&v39[48];
    v77 = v36;
    v78 = v37;
    v75 = v34;
    v76 = v35;
    *&v81[9] = *&v48[9];
    v80 = v47;
    *v81 = *v48;
    v79 = v38;
    v16 = v5;
    sub_1BD0DE19C(v39, &v101, &qword_1EBD3BAB8, &qword_1BE0BCFB0);
    v53 = *v49;
    v54 = *&v49[16];
    *v55 = *&v49[32];
    v59 = v35;
    v60 = v36;
    v61 = v37;
    v62 = v38;
    v56 = v32;
    v57 = v33;
    v51 = v6;
    v52 = 256;
    *&v55[14] = *&v49[46];
    v58 = v34;
    v63 = v7;
    v64 = v9;
    v65 = v11;
    v66 = v13;
    v67 = v15;
    v68 = 0;
    sub_1BD0DE53C(&v51, &qword_1EBD3BAB8, &qword_1BE0BCFB0);
    v93 = v79;
    v94 = v80;
    v95 = *v81;
    v96 = *&v81[16];
    v89 = v75;
    v90 = v76;
    v91 = v77;
    v92 = v78;
    v85 = v71;
    v86 = v72;
    v87 = v73;
    v88 = v74;
    v83 = v69;
    v84 = v70;
    v97 = v16;
    PKEdgeInsetsMake();
    v113 = v95;
    v114 = v96;
    v115 = v97;
    v109 = v91;
    v110 = v92;
    v112 = v94;
    v111 = v93;
    v105 = v87;
    v106 = v88;
    v108 = v90;
    v107 = v89;
    v101 = v83;
    v102 = v84;
    v104 = v86;
    v103 = v85;
  }

  else
  {
    sub_1BD2FA3D8(&v101);
    v17 = a1;
  }

  v18 = v113;
  v95 = v113;
  v96 = v114;
  v19 = v109;
  v91 = v109;
  v92 = v110;
  v20 = v111;
  v94 = v112;
  v93 = v111;
  v21 = v105;
  v87 = v105;
  v88 = v106;
  v22 = v107;
  v89 = v107;
  v90 = v108;
  v23 = v101;
  v83 = v101;
  v84 = v102;
  v24 = v103;
  v85 = v103;
  v86 = v104;
  v25 = v114;
  *v81 = v113;
  *&v81[16] = v114;
  v26 = v110;
  v77 = v109;
  v78 = v110;
  v79 = v111;
  v80 = v112;
  v27 = v106;
  v73 = v105;
  v74 = v106;
  v28 = v108;
  v75 = v107;
  v76 = v108;
  v29 = v102;
  v69 = v101;
  v70 = v102;
  v30 = v104;
  v71 = v103;
  v72 = v104;
  *(a3 + 184) = v112;
  *(a3 + 200) = v18;
  *(a3 + 216) = v25;
  *(a3 + 120) = v28;
  *(a3 + 136) = v19;
  *(a3 + 152) = v26;
  *(a3 + 168) = v20;
  *(a3 + 56) = v30;
  *(a3 + 72) = v21;
  *(a3 + 88) = v27;
  *(a3 + 104) = v22;
  *(a3 + 8) = v23;
  *(a3 + 24) = v29;
  v97 = v115;
  v82 = v115;
  *a3 = a1;
  *(a3 + 232) = v115;
  *(a3 + 40) = v24;
  v31 = a1;
  sub_1BD0DE19C(&v69, &v51, &qword_1EBD53468, &unk_1BE0F80B8);
  sub_1BD0DE53C(&v83, &qword_1EBD53468, &unk_1BE0F80B8);
}

uint64_t sub_1BD7AB4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[7];
  v28 = v1[6];
  *v29 = v4;
  *&v29[16] = v1[8];
  v5 = v1[1];
  v6 = v1[3];
  v24 = v1[2];
  v25 = v6;
  v7 = v1[5];
  v8 = v1[3];
  v26 = v1[4];
  v27 = v7;
  v9 = v1[1];
  v22 = *v1;
  v23 = v9;
  v35 = v26;
  v36 = v3;
  v37 = v28;
  v31 = v22;
  v32 = v5;
  v30 = *(v1 + 18);
  v38 = *(v1 + 14);
  v33 = v24;
  v34 = v8;
  v20 = *&v29[8];
  v39 = *&v29[8];
  v10 = sub_1BD7AAB8C();
  v11 = swift_allocObject();
  v12 = *v29;
  *(v11 + 112) = v28;
  *(v11 + 128) = v12;
  *(v11 + 144) = *&v29[16];
  *(v11 + 160) = v30;
  v13 = v25;
  *(v11 + 48) = v24;
  *(v11 + 64) = v13;
  v14 = v27;
  *(v11 + 80) = v26;
  *(v11 + 96) = v14;
  v15 = v23;
  *(v11 + 16) = v22;
  *(v11 + 32) = v15;
  sub_1BD7ABCE8(&v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53448, &qword_1BE0F8070);
  sub_1BD0DE4F4(&qword_1EBD53450, &qword_1EBD53448, &qword_1BE0F8070, MEMORY[0x1E6981870]);
  sub_1BE051704();

  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v20 == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53458, &qword_1BE0F80A8);
  v19 = (a1 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = sub_1BD10DF54;
  v19[2] = v17;
  return result;
}

void sub_1BD7AB6AC(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD7AB72C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

unint64_t sub_1BD7AB7B0()
{
  result = qword_1EBD53418;
  if (!qword_1EBD53418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53418);
  }

  return result;
}

void sub_1BD7AB870(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v11, v12, v13, v14, v15, v16, v17;
    a6, v18, v19, v20, v21, v22, v23, v24;

    a7, v25, v26, v27, v28, v29, v30, v31;
  }
}

double sub_1BD7AB8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_1BE048C84();

    sub_1BE048C84();
  }

  return result;
}

void sub_1BD7AB91C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    a4, v10, v11, v12, v13, v14, v15, v16;
  }
}

double sub_1BD7AB964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();

    sub_1BE048C84();
  }

  return result;
}

uint64_t objectdestroyTm_91()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD7ABA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 112);
  v24 = *(a1 + 96);
  v25 = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  v20 = *(a1 + 32);
  v7 = v20;
  v21 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v22 = *(a1 + 64);
  v10 = v22;
  v23 = v9;
  v11 = *(a1 + 16);
  v19[0] = *a1;
  v12 = v19[0];
  v19[1] = v11;
  v13 = *(a1 + 112);
  *(a2 + 96) = v24;
  *(a2 + 112) = v13;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v26 = *(a1 + 128);
  v16 = *(a1 + 128);
  *a2 = v12;
  *(a2 + 16) = v5;
  *(a2 + 128) = v16;
  *(a2 + 136) = v14;
  *(a2 + 144) = v15;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0;
  sub_1BD31435C(v19, &v18);
  return sub_1BE048964();
}

unint64_t sub_1BD7ABAAC()
{
  result = qword_1EBD53438;
  if (!qword_1EBD53438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53438);
  }

  return result;
}

unint64_t sub_1BD7ABB20()
{
  result = qword_1EBD53440;
  if (!qword_1EBD53440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53408, &qword_1BE0F7E58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD533A0, &qword_1BE0F7DF8);
    sub_1BD0DE4F4(&qword_1EBD53400, &qword_1EBD533A0, &qword_1BE0F7DF8, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3A8A0, &qword_1EBD3A8A8, &unk_1BE0D8670, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53440);
  }

  return result;
}

uint64_t sub_1BD7ABC80()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v7[6] = *(v0 + 112);
  v7[7] = v2;
  v8 = *(v0 + 144);
  v3 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v3;
  v4 = *(v0 + 96);
  v7[4] = *(v0 + 80);
  v7[5] = v4;
  v5 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v5;
  return v1(v7);
}

unint64_t sub_1BD7ABD20()
{
  result = qword_1EBD534A8;
  if (!qword_1EBD534A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53458, &qword_1BE0F80A8);
    sub_1BD0DE4F4(&qword_1EBD534B0, &qword_1EBD534B8, &unk_1BE0F8170, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD534A8);
  }

  return result;
}

unint64_t sub_1BD7ABE04()
{
  result = qword_1EBD534C0;
  if (!qword_1EBD534C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53480, &qword_1BE0F80D8);
    sub_1BD0DE4F4(&qword_1EBD534C8, &qword_1EBD53470, &qword_1BE0F80C8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD534C0);
  }

  return result;
}

id FinanceKitSpendingSummariesViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitSpendingSummariesViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitSpendingSummariesViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FinanceKitSpendingSummariesViewControllerProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FinanceKitSpendingSummariesViewControllerProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s9PassKitUI07FinanceB39SpendingSummariesViewControllerProviderC04makegH04with010navigationH0So06UIViewH0CAA0dbe11SummaryDataI7WrapperC_So012UINavigationH0CtFZ_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider);
  v4 = sub_1BE048964();
  sub_1BD740AB0(v4, v18);
  v3, v5, v6, v7, v8, v9, v10, v11;
  type metadata accessor for NavigationController();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_1BD51DBA8();
  v13 = a2;
  v19 = sub_1BE04D804();
  v20 = v12;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD534D0, &qword_1BE0F81C8));
  v15 = sub_1BE04F894();
  v16 = [v15 navigationItem];
  [v16 setLargeTitleDisplayMode_];

  return v15;
}

id AppleCardFeaturesAndBenefitsViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleCardFeaturesAndBenefitsViewController.init()()
{
  *&v0[OBJC_IVAR___PKAppleCardFeaturesAndBenefitsViewController_dataManager] = [objc_allocWithZone(type metadata accessor for AppleCardFeaturesAndBenefitsManager(0)) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsViewController();
  return objc_msgSendSuper2(&v2, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1BD7AC298()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___PKAppleCardFeaturesAndBenefitsViewController_dataManager];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AppleCardFeaturesAndBenefitsManager(0);
  sub_1BD7AC490();
  v4 = v2;
  v8 = sub_1BE04E954();
  v9 = v5;
  v10 = v3;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD534E8, &unk_1BE0F81D0));
  v7 = sub_1BE04EAC4();
  [v1 setView_];
}

void sub_1BD7AC37C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(a1 + 120);
    if (v5)
    {
      v6 = *(a1 + 128);
      v7 = swift_allocObject();
      v8 = *(a1 + 112);
      *(v7 + 112) = *(a1 + 96);
      *(v7 + 128) = v8;
      v9 = *(a1 + 128);
      v10 = *(a1 + 48);
      *(v7 + 48) = *(a1 + 32);
      *(v7 + 64) = v10;
      v11 = *(a1 + 80);
      *(v7 + 80) = *(a1 + 64);
      *(v7 + 96) = v11;
      v12 = *(a1 + 16);
      *(v7 + 16) = *a1;
      *(v7 + 32) = v12;
      *(v7 + 144) = v9;
      *(v7 + 152) = v4;
      sub_1BD0D44B8(v5, v6);
      sub_1BD31435C(a1, &v27);
      v13 = v4;
      v5(sub_1BD7AC74C, v7);
      v7, v14, v15, v16, v17, v18, v19, v20;

      sub_1BD0D4744(v5, v6, v21, v22, v23, v24, v25, v26);
    }

    else
    {
    }
  }
}