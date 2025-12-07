uint64_t sub_1BD360374@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v180 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v178 = &v176 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v177 = &v176 - v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v176 = &v176 - v11;
  v181 = a1;
  v12 = [a1 bankName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE052434();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v182 = v14;
  v183 = v16;
  sub_1BD0DDEBC();
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
  if ([v181 status] == 2)
  {
    v48 = sub_1BE051234();
  }

  else
  {
    v48 = sub_1BE051224();
  }

  v49 = v48;
  v50 = sub_1BE050564();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v49, v51, v53, v55, v57, v58, v59, v60;
  sub_1BD0DDF10(v25, v27, (v29 & 1), v61, v62, v63, v64, v65);
  v31, v66, v67, v68, v69, v70, v71, v72;
  v182 = v50;
  v183 = v52;
  v184 = v54 & 1;
  v185 = v56;
  sub_1BE052434();
  v74 = v73;
  v75 = v176;
  sub_1BE050DE4();
  v74, v76, v77, v78, v79, v80, v81, v82;
  sub_1BD0DDF10(v50, v52, (v54 & 1), v83, v84, v85, v86, v87);
  v56, v88, v89, v90, v91, v92, v93, v94;
  v182 = sub_1BD41F634(v181);
  v183 = v95;
  v96 = sub_1BE0506C4();
  v98 = v97;
  LOBYTE(v74) = v99;
  v101 = v100;
  v102 = sub_1BE0502E4();
  v103 = sub_1BE0505F4();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v102, v104, v106, v108, v110, v111, v112, v113;
  sub_1BD0DDF10(v96, v98, (v74 & 1), v114, v115, v116, v117, v118);
  v101, v119, v120, v121, v122, v123, v124, v125;
  v126 = sub_1BE051234();
  v127 = sub_1BE050564();
  v129 = v128;
  LOBYTE(v98) = v130;
  v132 = v131;
  v126, v128, v130, v131, v133, v134, v135, v136;
  sub_1BD0DDF10(v103, v105, (v107 & 1), v137, v138, v139, v140, v141);
  v109, v142, v143, v144, v145, v146, v147, v148;
  v182 = v127;
  v183 = v129;
  v184 = v98 & 1;
  v185 = v132;
  sub_1BE052434();
  v150 = v149;
  v151 = v177;
  sub_1BE050DE4();
  v150, v152, v153, v154, v155, v156, v157, v158;
  sub_1BD0DDF10(v127, v129, (v98 & 1), v159, v160, v161, v162, v163);
  v132, v164, v165, v166, v167, v168, v169, v170;
  v171 = v178;
  sub_1BD0DE19C(v75, v178, &qword_1EBD452C0, &qword_1BE0B7620);
  v172 = v180;
  sub_1BD0DE19C(v151, v180, &qword_1EBD452C0, &qword_1BE0B7620);
  v173 = v179;
  sub_1BD0DE19C(v171, v179, &qword_1EBD452C0, &qword_1BE0B7620);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380, &unk_1BE0D40A0);
  sub_1BD0DE19C(v172, v173 + *(v174 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v151, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v75, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v172, &qword_1EBD452C0, &qword_1BE0B7620);
  return sub_1BD0DE53C(v171, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD3607FC@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 16);
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B20, &qword_1BE0CE568);
  sub_1BD35F968(v4, v5, (a2 + *(v6 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B28, &qword_1BE0CE570);
  v8 = a2 + *(result + 36);
  *v8 = 0;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_1BD36088C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8, &qword_1BE0B8930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD3608FC()
{
  result = qword_1EBD42B80;
  if (!qword_1EBD42B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42B28, &qword_1BE0CE570);
    sub_1BD0DE4F4(&qword_1EBD42B88, &qword_1EBD42B90, &qword_1BE0CE618, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42B80);
  }

  return result;
}

uint64_t sub_1BD360A0C@<X0>(uint64_t a2@<X8>)
{
  sub_1BE051984();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B98, &unk_1BE0CE680);
  *(a2 + *(result + 36)) = 0x3FE0000000000000;
  return result;
}

unint64_t sub_1BD360A50()
{
  result = qword_1EBD36800;
  if (!qword_1EBD36800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42B98, &unk_1BE0CE680);
    sub_1BD0FEE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36800);
  }

  return result;
}

id MerchantTokenUnifiedListViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MerchantTokenUnifiedListViewControllerProvider.init()()
{
  v1 = v0;
  sub_1BE049864();
  v12 = sub_1BE049854();
  v2 = sub_1BE0498E4();
  v12, v3, v4, v5, v6, v7, v8, v9;
  *&v1[OBJC_IVAR___PKMerchantTokenUnifiedListViewControllerProvider_coreDataContext] = v2;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for MerchantTokenUnifiedListViewControllerProvider();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t MerchantTokenUnifiedListViewController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1BD362728(a1, v5, type metadata accessor for MerchantTokenNavigationStack);
  v7 = sub_1BE04F894();
  sub_1BD362790(a1, type metadata accessor for MerchantTokenNavigationStack);
  return v7;
}

void sub_1BD360E74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v66 = a4;
  v68 = a3;
  v67 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v67);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = type metadata accessor for MerchantTokenDetailView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  v16 = (a1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 84));
  v17 = *v16;
  v18 = v16[1];
  v19 = sub_1BE052434();
  v27 = v20;
  if (v17 == v19 && v18 == v20)
  {
    v20, v20, v21, v22, v23, v24, v25, v26;
    v37 = sub_1BD3CE02C();
    if (v37)
    {
LABEL_7:
      v38 = v37;
      v39 = [objc_allocWithZone(PKMerchantTokenDetailViewController) initWithMerchantToken_];
      aBlock[4] = PKEdgeInsetsMake;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_21_0;
      v40 = _Block_copy(aBlock);
      [v39 preflightWithCompletion_];
      _Block_release(v40);
      swift_beginAccess();
      [v39 setDelegate_];
      swift_unknownObjectRelease();

      goto LABEL_10;
    }
  }

  else
  {
    v29 = sub_1BE053B84();
    v27, v30, v31, v32, v33, v34, v35, v36;
    if (v29)
    {
      v37 = sub_1BD3CE02C();
      if (v37)
      {
        goto LABEL_7;
      }
    }
  }

  sub_1BD362728(a1, v15, type metadata accessor for UnifiedMerchantTokenData);
  v41 = *(v66 + 24);
  v42 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v43 = v10[7];
  v44 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
  sub_1BE048964();
  *&v15[v43] = [v44 init];
  v45 = &v15[v10[8]];
  v72 = 0;
  sub_1BE051694();
  v46 = v71;
  *v45 = v70[0];
  *(v45 + 1) = v46;
  v47 = &v15[v10[9]];
  v72 = 0;
  sub_1BE051694();
  v48 = v71;
  *v47 = v70[0];
  *(v47 + 1) = v48;
  v49 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  (*(*(v49 - 8) + 56))(v9, 1, 3, v49);
  sub_1BD362728(v9, v6, type metadata accessor for MerchantTokenDetailView.ImageState);
  sub_1BE051694();
  sub_1BD362790(v9, type metadata accessor for MerchantTokenDetailView.ImageState);
  v50 = &v15[v10[11]];
  v72 = 0;
  sub_1BE051694();
  v51 = v71;
  *v50 = v70[0];
  *(v50 + 1) = v51;
  *&v15[v10[5]] = v41;
  v52 = v10[12];
  v53 = v68;
  v54 = v68;
  v42, v55, v56, v57, v58, v59, v60, v61;
  *&v15[v52] = v53;
  v62 = &v15[v10[6]];
  *v62 = sub_1BD362720;
  v62[1] = v42;
  sub_1BD362728(v15, v12, type metadata accessor for MerchantTokenDetailView);
  v63 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD42CC8, &qword_1BE0CE888));
  v39 = sub_1BE04F894();
  sub_1BD362790(v15, type metadata accessor for MerchantTokenDetailView);
LABEL_10:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong presentMerchantTokenViewController_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_1BD3613AC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result popViewControllerInMerchantTokenStack];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD361490(uint64_t a1, void *a2)
{
  v5 = *(v2 + qword_1EBD42BA8);
  v6 = *(v5 + 72);
  if (v6 && (*(v5 + 64) == a1 ? (v7 = v6 == a2) : (v7 = 0), v7 || (sub_1BE053B84() & 1) != 0))
  {
    *(v5 + 64) = a1;
    *(v5 + 72) = a2;
    sub_1BE048C84();

    v6, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD362360();
    sub_1BE04B584();
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
  }
}

void sub_1BD3615D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE052434();
  v6 = v5;
  v7 = a1;
  sub_1BD361490(v4, v6);

  v6, v8, v9, v10, v11, v12, v13, v14;
}

id sub_1BD3616C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BD361710(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for MerchantTokenNavigationStack(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F8B4();
  v8 = *&v7[*(v5 + 28)];
  sub_1BE048964();
  sub_1BD362790(v7, type metadata accessor for MerchantTokenNavigationStack);
  sub_1BE048C84();
  sub_1BD921B90(a1, a2, v9, v10, v11, v12, v13, v14);
  v8, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1BD3617E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MerchantTokenNavigationStack(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE052434();
  v10 = v9;
  v11 = a1;
  sub_1BE04F8B4();
  v12 = *&v7[*(v5 + 28)];
  sub_1BE048964();
  sub_1BD362790(v7, type metadata accessor for MerchantTokenNavigationStack);
  sub_1BE048C84();
  sub_1BD921B90(v8, v10, v13, v14, v15, v16, v17, v18);
  v12, v19, v20, v21, v22, v23, v24, v25;
  v10, v26, v27, v28, v29, v30, v31, v32;
}

uint64_t MerchantTokenUnifiedListViewController.init(rootView:)(uint64_t a1)
{
  v2 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD362728(a1, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
  v4 = sub_1BE04F894();
  sub_1BD362790(a1, type metadata accessor for MerchantTokenNavigationStack);
  return v4;
}

void *MerchantTokenUnifiedListViewController.__allocating_init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v2);
  sub_1BD362728(a2, v6, type metadata accessor for MerchantTokenNavigationStack);
  v8 = sub_1BE04F874();
  v9 = v8;
  sub_1BD362790(a2, type metadata accessor for MerchantTokenNavigationStack);
  if (v8)
  {
  }

  return v8;
}

void *MerchantTokenUnifiedListViewController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1BD362728(a2, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
  v5 = sub_1BE04F874();
  v6 = v5;
  sub_1BD362790(a2, type metadata accessor for MerchantTokenNavigationStack);
  if (v5)
  {
  }

  return v5;
}

id MerchantTokenUnifiedListViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MerchantTokenUnifiedListViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MerchantTokenUnifiedListViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BD361C00(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MerchantTokenUnifiedListViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_1BD361D84()
{
  v1 = *v0;
  v5[4] = PKEdgeInsetsMake;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1BD3F08C0;
  v5[3] = &block_descriptor_67;
  v2 = _Block_copy(v5);
  v3 = v1;
  [v3 preflightWithCompletion_];
  _Block_release(v2);
  return v3;
}

uint64_t sub_1BD361E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD362674();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD361E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD362674();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD361EFC(uint64_t a1)
{
  sub_1BD362674();
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD361F24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD362360();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v12;
  return sub_1BE048C84();
}

void sub_1BD361FA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE048C84();
  sub_1BD921B90(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t _s9PassKitUI46MerchantTokenUnifiedListViewControllerProviderC04makehI0So010PKMerchantefghI8Protocol_So06UIViewI0CXcyFZ_0()
{
  v0 = type metadata accessor for MerchantTokenNavigationStack(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v22 - v5);
  sub_1BE049864();
  v7 = sub_1BE049854();
  v23 = v7;
  v8 = sub_1BE0498E4();
  v7, v9, v10, v11, v12, v13, v14, v15;
  type metadata accessor for MerchantTokenListViewModel(0);
  swift_allocObject();
  v16 = sub_1BD921D3C(0, v8);
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  v17 = (v6 + *(v1 + 32));
  v22[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42CD8, &qword_1BE0CE8C8);
  sub_1BE051694();
  v18 = v24;
  *v17 = v23;
  v17[1] = v18;
  *(v6 + *(v1 + 28)) = v16;
  v19 = objc_allocWithZone(type metadata accessor for MerchantTokenUnifiedListViewController(0));
  sub_1BD362728(v6, v3, type metadata accessor for MerchantTokenNavigationStack);
  v20 = sub_1BE04F894();
  sub_1BD362790(v6, type metadata accessor for MerchantTokenNavigationStack);
  return v20;
}

id sub_1BD3621BC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PKMerchantTokenUnifiedListViewControllerProvider_coreDataContext);
  type metadata accessor for MerchantTokenListViewModel(0);
  swift_allocObject();
  v4 = a1;
  v5 = sub_1BD921D3C(a1, v3);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = v5;
  v8 = objc_allocWithZone(type metadata accessor for MerchantTokenUnifiedListEmbeddedViewController(0));
  *&v8[qword_1EBD42BA8] = v5;
  swift_retain_n();
  v9 = v4;
  sub_1BE048964();
  v10 = sub_1BE04F894();
  v11 = sub_1BE052404();
  v12 = PKLocalizedPaymentString(v11);

  [v10 setTitle_];
  v7, v13, v14, v15, v16, v17, v18, v19;

  return v10;
}

unint64_t sub_1BD362360()
{
  result = qword_1EBD42BB0;
  if (!qword_1EBD42BB0)
  {
    type metadata accessor for MerchantTokenListViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42BB0);
  }

  return result;
}

unint64_t sub_1BD362620()
{
  result = qword_1EBD42CB0;
  if (!qword_1EBD42CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42CB0);
  }

  return result;
}

unint64_t sub_1BD362674()
{
  result = qword_1EBD42CB8;
  if (!qword_1EBD42CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42CB8);
  }

  return result;
}

unint64_t sub_1BD3626C8()
{
  result = qword_1EBD42CC0;
  if (!qword_1EBD42CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD42CC0);
  }

  return result;
}

uint64_t sub_1BD362728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD362790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for FinanceKitSpendingTrend(uint64_t a1)
{
  result = qword_1EBD42CE0;
  if (!qword_1EBD42CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD362864(uint64_t a1)
{
  sub_1BD3628E8(319, &qword_1EBD42CF0);
  if (v1 <= 0x3F)
  {
    sub_1BD3628E8(319, &qword_1EBD42CF8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD3628E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BE0493F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1BD362930()
{
  result = MEMORY[0x1BFB403B0](1.0);
  qword_1EBDAAF58 = result;
  unk_1EBDAAF60 = v1;
  dword_1EBDAAF68 = v2;
  return result;
}

uint64_t sub_1BD36295C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0493C4();
  v6 = MEMORY[0x1BFB403C0](0);
  if ((MEMORY[0x1BFB403F0](v6) & 1) == 0 || (sub_1BE0493C4(), v7 = MEMORY[0x1BFB403C0](0), (MEMORY[0x1BFB403F0](v7) & 1) == 0))
  {
    v21 = type metadata accessor for FinanceKitSpendingTrend(0);
    v17 = *(*(v21 - 8) + 56);
    v20 = v21;
    v18 = a1;
    v19 = 1;
    goto LABEL_6;
  }

  v8 = sub_1BE0493C4();
  v10 = v9;
  v12 = v11;
  v13 = sub_1BE0493C4();
  if (MEMORY[0x1BFB40440](v8, v10, v12, v13, v14, v15))
  {
    v16 = type metadata accessor for FinanceKitSpendingTrend(0);
    swift_storeEnumTagMultiPayload();
    v17 = *(*(v16 - 8) + 56);
    v18 = a1;
    v19 = 0;
    v20 = v16;
LABEL_6:

    return v17(v18, v19, 1, v20);
  }

  sub_1BE0493C4();
  sub_1BE0493C4();
  sub_1BE053394();
  sub_1BE053474();
  sub_1BE0493A4();
  sub_1BE049404();
  sub_1BE0493C4();
  v23 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB403F0](v23))
  {
    sub_1BE0493C4();
    sub_1BE053474();
    sub_1BE0493C4();
    sub_1BE053354();
    MEMORY[0x1BFB403C0](100);
    sub_1BE053374();
  }

  else
  {
    sub_1BE0533A4();
  }

  if (qword_1EBD36BB0 != -1)
  {
    swift_once();
  }

  MEMORY[0x1BFB403F0]();
  v24 = sub_1BE0493C4();
  v26 = v25;
  v28 = v27;
  v29 = sub_1BE0493C4();
  MEMORY[0x1BFB403F0](v24, v26, v28, v29, v30, v31);
  (*(v3 + 32))(a1, v5, v2);
  v32 = type metadata accessor for FinanceKitSpendingTrend(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v32 - 8) + 56))(a1, 0, 1, v32);
}

uint64_t sub_1BD362DBC(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = sub_1BE0493F4();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v49 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for FinanceKitSpendingTrend(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D00, &unk_1BE0CE910);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v49 - v26;
  v29 = *(v28 + 56);
  sub_1BD363294(a1, &v49 - v26);
  sub_1BD363294(v54, &v27[v29]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BD363294(v27, v21);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = v52;
        v42 = v53;
        (*(v52 + 32))(v9, &v27[v29], v53);
        v35 = sub_1BE0493B4();
        v44 = *(v43 + 8);
        v44(v9, v42);
        v44(v21, v42);
        goto LABEL_21;
      }

      v15 = v21;
    }

    else
    {
      sub_1BD363294(v27, v24);
      if (!swift_getEnumCaseMultiPayload())
      {
        v46 = v52;
        v45 = v53;
        (*(v52 + 32))(v12, &v27[v29], v53);
        v35 = sub_1BE0493B4();
        v47 = *(v46 + 8);
        v47(v12, v45);
        v47(v24, v45);
        goto LABEL_21;
      }

      v15 = v24;
    }

LABEL_17:
    (*(v52 + 8))(v15, v53);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD363294(v27, v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v37 = v52;
      v38 = &v27[v29];
      v39 = v50;
      v40 = v53;
      (*(v52 + 32))(v50, v38, v53);
      v35 = sub_1BE0493B4();
      v41 = *(v37 + 8);
      v41(v39, v40);
      v41(v18, v40);
      goto LABEL_21;
    }

    v15 = v18;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1BD363294(v27, v15);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v32 = v51;
      v31 = v52;
      v33 = &v27[v29];
      v34 = v53;
      (*(v52 + 32))(v51, v33, v53);
      v35 = sub_1BE0493B4();
      v36 = *(v31 + 8);
      v36(v32, v34);
      v36(v15, v34);
LABEL_21:
      sub_1BD363360(v27);
      return v35 & 1;
    }

    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_18:
    sub_1BD3632F8(v27);
    v35 = 0;
    return v35 & 1;
  }

  sub_1BD363360(v27);
  v35 = 1;
  return v35 & 1;
}

uint64_t sub_1BD363294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3632F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D00, &unk_1BE0CE910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD363360(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitSpendingTrend(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD3633BC()
{
  type metadata accessor for TransferEligibilityModel(0);
  swift_allocObject();
  return sub_1BD69244C();
}

id sub_1BD3633F4()
{
  v0 = objc_allocWithZone(type metadata accessor for ApplyControllerModel(0));

  return [v0 init];
}

uint64_t sub_1BD36342C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a1;
  v173 = a2;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v172);
  v171 = (&v161 - v3);
  v4 = type metadata accessor for TransferEligibilityView(0);
  v186 = *(v4 - 8);
  v5 = *(v186 + 64);
  v6 = v4 - 8;
  v182 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v184 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v5;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D40, &qword_1BE0CE990);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v161 - v7;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D48, &qword_1BE0CE998);
  v166 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v175 = &v161 - v8;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D50, &qword_1BE0CE9A0);
  v168 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v181 = &v161 - v9;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D58, &qword_1BE0CE9A8);
  v170 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v180 = &v161 - v10;
  v11 = *(v6 + 52);
  v183 = v2;
  v12 = (v2 + v11);
  v13 = v12[1];
  v176 = *v12;
  v179 = v13;
  v178 = *(v12 + 16);
  v177 = type metadata accessor for ApplyControllerModel(0);
  v14 = sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
  v15 = sub_1BE04E3D4();
  KeyPath = swift_getKeyPath();
  v164 = v14;
  sub_1BE04E974();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;

  v24 = v189;
  v25 = v190;
  v192 = v189;
  v193 = v190;
  v26 = v2;
  v27 = v184;
  sub_1BD365DA8(v26, v184);
  v186 = *(v186 + 80);
  v28 = (v186 + 16) & ~v186;
  v29 = swift_allocObject();
  sub_1BD365E0C(v27, v29 + v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D60, &qword_1BE0CE9D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D68, &qword_1BE0CE9E0);
  sub_1BD0DE4F4(&qword_1EBD42D70, &qword_1EBD42D60, &qword_1BE0CE9D8, MEMORY[0x1E697FDF8]);
  sub_1BD365E88();
  sub_1BD365EDC();
  v30 = v161;
  sub_1BE050F74();
  *(&v24 + 1), v31, v32, v33, v34, v35, v36, v37;
  v29, v38, v39, v40, v41, v42, v43, v44;
  v24, v45, v46, v47, v48, v49, v50, v51;

  v52 = sub_1BE04E3C4();
  swift_beginAccess();
  v53 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD422A8, &unk_1BE10D0D0);
  sub_1BE04D884();
  swift_endAccess();

  v54 = v183;
  v55 = v184;
  sub_1BD365DA8(v183, v184);
  v56 = swift_allocObject();
  sub_1BD365E0C(v55, v56 + v28);
  v57 = (v30 + *(v53 + 56));
  *v57 = sub_1BD365F94;
  v57[1] = v56;
  v58 = *(v54 + 88);
  v59 = *(v54 + 96);
  *&v189 = *(v54 + 80);
  *(&v189 + 1) = v58;
  LOBYTE(v190) = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](&v192, v60);
  LOBYTE(v189) = v192;
  sub_1BD365DA8(v54, v55);
  v61 = swift_allocObject();
  sub_1BD365E0C(v55, v61 + v28);
  v163 = sub_1BD0DE4F4(&qword_1EBD42D88, &qword_1EBD42D40, &qword_1BE0CE990, MEMORY[0x1E697C278]);
  sub_1BE051064();
  v61, v62, v63, v64, v65, v66, v67, v68;
  sub_1BD061DA0(v30);
  type metadata accessor for TransferEligibilityModel(0);
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel, &unk_1BE0ED9B8);
  v69 = sub_1BE04E3C4();
  v70 = swift_getKeyPath();
  v71 = swift_getKeyPath();
  sub_1BE04D8B4(&v189);
  v70, v72, v73, v74, v75, v76, v77, v78;
  v71, v79, v80, v81, v82, v83, v84, v85;
  v69, v86, v87, v88, v89, v90, v91, v92;
  *&v192 = v189;
  sub_1BD365DA8(v54, v55);
  v174 = v28;
  v93 = swift_allocObject();
  sub_1BD365E0C(v55, v93 + v28);
  type metadata accessor for PKAccountTransferEligibility(0);
  v95 = v94;
  *&v189 = v53;
  *(&v189 + 1) = MEMORY[0x1E69E6370];
  *&v190 = v163;
  *(&v190 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = sub_1BD366710(&qword_1EBD42D90, type metadata accessor for PKAccountTransferEligibility, &unk_1BE0B31AC);
  v98 = v165;
  v99 = v175;
  sub_1BE051064();
  v93, v100, v101, v102, v103, v104, v105, v106;
  (*(v166 + 8))(v99, v98);
  v107 = v183;
  v108 = *(v183 + 32);
  v189 = *(v183 + 16);
  v190 = v108;
  v191 = *(v183 + 48);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
  MEMORY[0x1BFB3E970](&v192, v109);
  v187 = v192;
  v188 = v193;
  v110 = v107;
  v111 = v184;
  sub_1BD365DA8(v110, v184);
  v112 = v174;
  v113 = swift_allocObject();
  sub_1BD365E0C(v111, v113 + v112);
  type metadata accessor for Decimal(0);
  v175 = v114;
  *&v189 = v98;
  *(&v189 + 1) = v95;
  *&v190 = OpaqueTypeConformance2;
  *(&v190 + 1) = v97;
  v115 = swift_getOpaqueTypeConformance2();
  v116 = sub_1BD366710(&qword_1EBD42530, type metadata accessor for Decimal, MEMORY[0x1E6969FE0]);
  v117 = v167;
  v118 = v181;
  sub_1BE051074();
  v113, v119, v120, v121, v122, v123, v124, v125;
  (*(v168 + 8))(v118, v117);
  v126 = sub_1BE04E3C4();
  v127 = swift_getKeyPath();
  v128 = swift_getKeyPath();
  v129 = v171;
  sub_1BE04D8B4(v171);

  v127, v130, v131, v132, v133, v134, v135, v136;
  v128, v137, v138, v139, v140, v141, v142, v143;
  v144 = v183;
  sub_1BD365DA8(v183, v111);
  v145 = v174;
  v146 = swift_allocObject();
  sub_1BD365E0C(v111, v146 + v145);
  *&v189 = v117;
  *(&v189 + 1) = v175;
  *&v190 = v115;
  *(&v190 + 1) = v116;
  swift_getOpaqueTypeConformance2();
  sub_1BD2477C0();
  v147 = v173;
  v148 = v169;
  v149 = v180;
  sub_1BE051064();
  v146, v150, v151, v152, v153, v154, v155, v156;
  sub_1BD23C32C(v129);
  (*(v170 + 8))(v149, v148);
  v157 = v147 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D98, &qword_1BE0CEA80) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516C4();
  sub_1BD365DA8(v144, v111);
  v158 = swift_allocObject();
  sub_1BD365E0C(v111, v158 + v145);
  result = type metadata accessor for ErrorAlertModifier(0);
  v160 = (v157 + *(result + 20));
  *v160 = sub_1BD366410;
  v160[1] = v158;
  return result;
}

uint64_t sub_1BD3640B4(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v46 - v6;
  v8 = *(type metadata accessor for TransferEligibilityView(0) + 44);
  v48 = a1;
  v9 = *(a1 + v8);
  type metadata accessor for ApplyControllerModel(0);
  sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
  v49 = v9;
  v10 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_1BE04D8B4(v51);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;

  if (LOBYTE(v51[0]) != 2 && (v51[0] & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    sub_1BE0516A4();
    v27 = type metadata accessor for FeatureError(0);
    v28 = (*(*(v27 - 8) + 48))(v7, 1, v27);
    sub_1BD23C32C(v7);
    if (v28 == 1)
    {
      sub_1BE04D194();
      v29 = sub_1BE04D204();
      v30 = sub_1BE052C54();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1BD026000, v29, v30, "FCC step up complete, calling eligibility again", v31, 2u);
        MEMORY[0x1BFB45F20](v31, -1, -1);
      }

      (*(v46 + 8))(v4, v47);
      v32 = v48;
      type metadata accessor for TransferEligibilityModel(0);
      sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel, &unk_1BE0ED9B8);
      v33 = sub_1BE04E3C4();
      swift_getKeyPath();
      swift_getKeyPath();
      v51[0] = 0;
      sub_1BE048964();
      sub_1BE04D8C4();
      sub_1BD692108();
      v33, v34, v35, v36, v37, v38, v39, v40;
      v41 = *(v32 + 88);
      v42 = *(v32 + 96);
      v51[0] = *(v32 + 80);
      v51[1] = v41;
      v52 = v42;
      v50 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
      sub_1BE0518F4();
    }
  }

  v43 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v51[0] = 0;
  v44 = v43;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v51[0]) = 2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD36452C@<X0>(uint64_t a1@<X8>)
{
  sub_1BD248390();
  sub_1BE050E54();
  v2 = sub_1BE04EC54();
  v3 = sub_1BE0501D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D68, &qword_1BE0CE9E0);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void sub_1BD3645B8(void *a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    sub_1BE04D194();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v8, v9, "FCC stepup finished loading", v10, 2u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v11 = *(a2 + 88);
    v12 = *(a2 + 96);
    v14 = *(a2 + 80);
    v15 = v11;
    v16 = v12;
    v13[7] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
    sub_1BE0518F4();
  }
}

uint64_t sub_1BD364740(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  v12 = *a2;
  sub_1BE04D194();
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v12;
    _os_log_impl(&dword_1BD026000, v13, v14, "Transfer eligibility loading = %{BOOL}d", v15, 8u);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  v16 = *(v6 + 8);
  v16(v11, v5);
  v17 = *(a3 + 80);
  v18 = *(a3 + 88);
  v19 = *(a3 + 96);
  v57 = v17;
  v58 = v18;
  v59 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](&v56);
  if (v56 == 1)
  {
    v54 = v18;
    v55 = v17;
    v53 = v8;
    type metadata accessor for TransferEligibilityView(0);
    type metadata accessor for TransferEligibilityModel(0);
    sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel, &unk_1BE0ED9B8);
    v21 = sub_1BE04E3C4();
    KeyPath = swift_getKeyPath();
    v23 = swift_getKeyPath();
    sub_1BE04D8B4(&v57);
    KeyPath, v24, v25, v26, v27, v28, v29, v30;
    v23, v31, v32, v33, v34, v35, v36, v37;
    v21, v38, v39, v40, v41, v42, v43, v44;
    if (v57 == 2)
    {
      sub_1BD364E38(v45);
    }

    else
    {
      if (v57 != 1)
      {
        v18 = v54;
        v17 = v55;
        if (!v57)
        {
          sub_1BD364B54(v45);
        }

        goto LABEL_13;
      }

      v46 = v53;
      sub_1BE04D194();
      v47 = sub_1BE04D204();
      v48 = sub_1BE052C54();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1BD026000, v47, v48, "Transfer eligibility already approved", v49, 2u);
        MEMORY[0x1BFB45F20](v49, -1, -1);
      }

      v16(v46, v5);
    }

    v18 = v54;
    v17 = v55;
  }

LABEL_13:
  type metadata accessor for TransferEligibilityView(0);
  type metadata accessor for TransferEligibilityModel(0);
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel, &unk_1BE0ED9B8);
  sub_1BE04E3C4();
  v57 = v17;
  v58 = v18;
  v59 = v19;
  MEMORY[0x1BFB3E970](&v56, v20);
  v50 = v56;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v57) = v50;
  return sub_1BE04D8C4();
}

void sub_1BD364B54(double a1)
{
  type metadata accessor for TransferEligibilityView(0);
  type metadata accessor for TransferEligibilityModel(0);
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel, &unk_1BE0ED9B8);
  v2 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v105);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v2, v19, v20, v21, v22, v23, v24, v25;
  if ((v105[0] & 1) == 0)
  {
    v26 = sub_1BE04E3C4();
    v27 = swift_getKeyPath();
    v28 = swift_getKeyPath();
    sub_1BE04D8B4(v105);
    v27, v29, v30, v31, v32, v33, v34, v35;
    v28, v36, v37, v38, v39, v40, v41, v42;
    v26, v43, v44, v45, v46, v47, v48, v49;
    if ((v105[0] & 1) == 0)
    {
      v50 = sub_1BE04E3C4();
      v51 = swift_getKeyPath();
      v52 = swift_getKeyPath();
      sub_1BE04D8B4(v105);
      v51, v53, v54, v55, v56, v57, v58, v59;
      v52, v60, v61, v62, v63, v64, v65, v66;
      v67 = *&v50[OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_account];
      *&v50[OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_account] = *&v105[0];
      v50, v68, v69, v70, v71, v72, v73, v74;

      v75 = sub_1BE04E3C4();
      v76 = &v75[OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_transferType];
      *v76 = *(v1 + 8);
      v76[8] = 0;
      v75, v77, v78, v79, v80, v81, v82, v83;
      v84 = sub_1BE04E3C4();
      v85 = *(v1 + 32);
      v105[0] = *(v1 + 16);
      v105[1] = v85;
      v106 = *(v1 + 48);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
      MEMORY[0x1BFB3E970](&v104, v86);
      v87 = sub_1BE053344();
      v88 = *&v84[OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_amount];
      *&v84[OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_amount] = v87;
      v84, v89, v90, v91, v92, v93, v94, v95;

      v96 = sub_1BE04E3C4();
      sub_1BD692824();
      v96, v97, v98, v99, v100, v101, v102, v103;
    }
  }
}

void sub_1BD364E38(double a1)
{
  type metadata accessor for TransferEligibilityView(0);
  type metadata accessor for ApplyControllerModel(0);
  sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
  v1 = sub_1BE04E3C4();
  v2 = &v1[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType];
  *v2 = 5;
  v2[8] = 0;

  v3 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v22);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  v20 = *&v3[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account];
  *&v3[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account] = v22;

  v21 = sub_1BE04E3C4();
  sub_1BD333918();
}

void sub_1BD364FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v146 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v145 = (&v144 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v144 - v9);
  type metadata accessor for TransferEligibilityView(0);
  v147 = a3;
  type metadata accessor for TransferEligibilityModel(0);
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel, &unk_1BE0ED9B8);
  v11 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(&v149);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  v11, v28, v29, v30, v31, v32, v33, v34;
  if (v149 == 1)
  {
    v35 = sub_1BE04E3C4();
    v36 = swift_getKeyPath();
    v37 = swift_getKeyPath();
    sub_1BE04D8B4(&v149);
    v36, v38, v39, v40, v41, v42, v43, v44;
    v37, v45, v46, v47, v48, v49, v50, v51;
    v35, v52, v53, v54, v55, v56, v57, v58;
    if ((v149 & 1) == 0)
    {
      v59 = sub_1BE04E3C4();
      v60 = swift_getKeyPath();
      v61 = swift_getKeyPath();
      sub_1BE04D8B4(v10);
      v59, v62, v63, v64, v65, v66, v67, v68;
      v60, v69, v70, v71, v72, v73, v74, v75;
      v61, v76, v77, v78, v79, v80, v81, v82;
      v83 = type metadata accessor for FeatureError(0);
      LODWORD(v59) = (*(*(v83 - 8) + 48))(v10, 1, v83);
      sub_1BD23C32C(v10);
      v84 = sub_1BE04E3C4();
      if (v59 == 1)
      {
        v85 = swift_getKeyPath();
        v86 = swift_getKeyPath();
        sub_1BE04D8B4(&v149);
        v85, v87, v88, v89, v90, v91, v92, v93;
        v86, v94, v95, v96, v97, v98, v99, v100;
        v84, v101, v102, v103, v104, v105, v106, v107;
        if (v149 == 2)
        {
          sub_1BD364E38(v108);
          return;
        }

        if (v149 == 1)
        {
          v109 = v147;
          v110 = *(v147 + 88);
          v111 = *(v147 + 96);
          v149 = *(v147 + 80);
          v150 = v110;
          v151 = v111;
          v148 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
          sub_1BE0518F4();
          v112 = *(v109 + 64);
          v113 = *(v109 + 72);
          v149 = *(v109 + 56);
          v150 = v112;
          v151 = v113;
          v148 = 1;
LABEL_12:
          sub_1BE0518F4();
          return;
        }

        if (v149)
        {
          v142 = *(v147 + 88);
          v143 = *(v147 + 96);
          v149 = *(v147 + 80);
          v150 = v142;
          v151 = v143;
          v148 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
          sub_1BE0518F4();
          sub_1BE053994();
          __break(1u);
          return;
        }

        v139 = *(v147 + 80);
        v140 = *(v147 + 88);
        v141 = *(v147 + 96);
      }

      else
      {
        v114 = swift_getKeyPath();
        v115 = swift_getKeyPath();
        v116 = v145;
        sub_1BE04D8B4(v145);
        v84, v117, v118, v119, v120, v121, v122, v123;
        v114, v124, v125, v126, v127, v128, v129, v130;
        v115, v131, v132, v133, v134, v135, v136, v137;
        sub_1BD23C2BC(v116, v146);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
        v138 = v147;
        sub_1BE0516B4();
        sub_1BD23C32C(v116);
        v139 = *(v138 + 80);
        v140 = *(v138 + 88);
        v141 = *(v138 + 96);
      }

      v149 = v139;
      v150 = v140;
      v151 = v141;
      v148 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
      goto LABEL_12;
    }
  }
}

uint64_t sub_1BD3654F4(uint64_t a1, double a2)
{
  type metadata accessor for TransferEligibilityView(0);
  type metadata accessor for TransferEligibilityModel(0);
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel, &unk_1BE0ED9B8);
  v2 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD692108();
  v2, v3, v4, v5, v6, v7, v8, v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  return sub_1BE0518F4();
}

uint64_t sub_1BD365624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v29 - v8);
  v10 = type metadata accessor for FeatureError(0);
  result = (*(*(v10 - 8) + 48))(a2, 1, v10);
  if (result != 1)
  {
    type metadata accessor for TransferEligibilityView(0);
    type metadata accessor for ApplyControllerModel(0);
    sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
    v12 = sub_1BE04E3C4();
    KeyPath = swift_getKeyPath();
    v14 = swift_getKeyPath();
    sub_1BE04D8B4(v9);

    KeyPath, v15, v16, v17, v18, v19, v20, v21;
    v14, v22, v23, v24, v25, v26, v27, v28;
    sub_1BD23C2BC(v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    sub_1BE0516B4();
    return sub_1BD23C32C(v9);
  }

  return result;
}

uint64_t sub_1BD365814()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  type metadata accessor for TransferEligibilityView(0);
  type metadata accessor for TransferEligibilityModel(0);
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel, &unk_1BE0ED9B8);
  sub_1BE04E3C4();
  v6 = type metadata accessor for FeatureError(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v5, v2);
  sub_1BE04D8C4();
  sub_1BD23C32C(v5);
  type metadata accessor for ApplyControllerModel(0);
  sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
  sub_1BE04E3C4();
  v7(v5, 1, 1, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v5, v2);
  sub_1BE04D8C4();
  return sub_1BD23C32C(v5);
}

uint64_t type metadata accessor for TransferEligibilityView(uint64_t a1)
{
  result = qword_1EBD42D08;
  if (!qword_1EBD42D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD365B10(uint64_t a1)
{
  type metadata accessor for AccountModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PKAccountTransferType(319);
    if (v2 <= 0x3F)
    {
      sub_1BD365C0C(319);
      if (v3 <= 0x3F)
      {
        sub_1BD23BBFC();
        if (v4 <= 0x3F)
        {
          sub_1BD243964(319);
          if (v5 <= 0x3F)
          {
            sub_1BD365C64(319);
            if (v6 <= 0x3F)
            {
              sub_1BD365CF8(319);
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

void sub_1BD365C0C(uint64_t a1)
{
  if (!qword_1EBD42D18)
  {
    type metadata accessor for Decimal(255);
    v1 = sub_1BE051964();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD42D18);
    }
  }
}

void sub_1BD365C64(uint64_t a1)
{
  if (!qword_1EBD42D20)
  {
    type metadata accessor for TransferEligibilityModel(255);
    sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel, &unk_1BE0ED9B8);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD42D20);
    }
  }
}

void sub_1BD365CF8(uint64_t a1)
{
  if (!qword_1EBD42D30)
  {
    type metadata accessor for ApplyControllerModel(255);
    sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD42D30);
    }
  }
}

uint64_t sub_1BD365DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferEligibilityView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD365E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferEligibilityView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD365E88()
{
  result = qword_1EBD42D78;
  if (!qword_1EBD42D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42D78);
  }

  return result;
}

unint64_t sub_1BD365EDC()
{
  result = qword_1EBD42D80;
  if (!qword_1EBD42D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D68, &qword_1BE0CE9E0);
    sub_1BD248390();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42D80);
  }

  return result;
}

void sub_1BD365F94(void *a1)
{
  v3 = *(type metadata accessor for TransferEligibilityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD3645B8(a1, v4);
}

uint64_t sub_1BD366004(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for TransferEligibilityView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD364740(a1, a2, v6);
}

void sub_1BD366084(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TransferEligibilityView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD364FB8(a1, a2, v6);
}

uint64_t sub_1BD36611C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TransferEligibilityView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD366190(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TransferEligibilityView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD365624(a1, a2, v6);
}

uint64_t objectdestroyTm_30()
{
  v1 = type metadata accessor for TransferEligibilityView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v2[2], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v2[7], v17, v18, v19, v20, v21, v22, v23;
  v2[8], v24, v25, v26, v27, v28, v29, v30;
  v2[10], v31, v32, v33, v34, v35, v36, v37;
  v2[11], v38, v39, v40, v41, v42, v43, v44;
  v45 = (v2 + v1[9]);
  v46 = type metadata accessor for FeatureError(0);
  if (!(*(*(v46 - 8) + 48))(v45, 1, v46))
  {

    v47 = *(v46 + 20);
    v48 = sub_1BE04B824();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v45 + v47, 1, v48))
    {
      (*(v49 + 8))(v45 + v47, v48);
    }
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v45 + *(v50 + 28)), v51, v52, v53, v54, v55, v56, v57;
  sub_1BD0D45CC(*(v2 + v1[10]), *(v2 + v1[10] + 8), *(v2 + v1[10] + 16), v58, v59, v60, v61, v62);
  sub_1BD035CB4(*(v2 + v1[11]), *(v2 + v1[11] + 8), *(v2 + v1[11] + 16), v63, v64, v65, v66, v67);

  return swift_deallocObject();
}

unint64_t sub_1BD36646C()
{
  result = qword_1EBD42DA0;
  if (!qword_1EBD42DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D98, &qword_1BE0CEA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D58, &qword_1BE0CE9A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D50, &qword_1BE0CE9A0);
    type metadata accessor for Decimal(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D48, &qword_1BE0CE998);
    type metadata accessor for PKAccountTransferEligibility(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D40, &qword_1BE0CE990);
    sub_1BD0DE4F4(&qword_1EBD42D88, &qword_1EBD42D40, &qword_1BE0CE990, MEMORY[0x1E697C278]);
    swift_getOpaqueTypeConformance2();
    sub_1BD366710(&qword_1EBD42D90, type metadata accessor for PKAccountTransferEligibility, &unk_1BE0B31AC);
    swift_getOpaqueTypeConformance2();
    sub_1BD366710(&qword_1EBD42530, type metadata accessor for Decimal, MEMORY[0x1E6969FE0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD2477C0();
    swift_getOpaqueTypeConformance2();
    sub_1BD366710(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42DA0);
  }

  return result;
}

uint64_t sub_1BD366710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ContactFormNameSection(uint64_t a1)
{
  result = qword_1EBD42DB0;
  if (!qword_1EBD42DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3667CC(uint64_t a1)
{
  sub_1BD36686C(319);
  if (v1 <= 0x3F)
  {
    sub_1BD366900();
    if (v2 <= 0x3F)
    {
      sub_1BD366950(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD36686C(uint64_t a1)
{
  if (!qword_1EBD42DC0)
  {
    type metadata accessor for PersonName(255);
    sub_1BD36A650(&qword_1EBD3A708, type metadata accessor for PersonName, &unk_1BE0F6734);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD42DC0);
    }
  }
}

void sub_1BD366900()
{
  if (!qword_1EBD40458)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD40458);
    }
  }
}

void sub_1BD366950(uint64_t a1)
{
  if (!qword_1EBD42DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52A20, &unk_1BE0F66E0);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD42DC8);
    }
  }
}

int *sub_1BD3669D0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for ContactFormNameSection(0);
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DD0, &qword_1BE0CEC90);
  v7 = *(v24 - 8);
  v8 = MEMORY[0x1EEE9AC00](v24);
  v10 = &v24 - v9;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8068], v3, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v4 + 8))(v6, v3);
    v28 = v13;
    v29 = v15;
    sub_1BD0DDEBC();
    v28 = sub_1BE0506C4();
    v29 = v16;
    v30 = v17 & 1;
    v31 = v18;
    MEMORY[0x1EEE9AC00](v28);
    v19 = v26;
    *(&v24 - 2) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DD8, &qword_1BE0CEC98);
    sub_1BD36A198();
    sub_1BE051A24();
    sub_1BD36A528(v19, &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v21 = swift_allocObject();
    sub_1BD36A384(&v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = v27;
    (*(v7 + 32))(v27, v10, v24);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E28, &qword_1BE0CECC0);
    v23 = (v22 + result[9]);
    *v23 = sub_1BD36A3E8;
    v23[1] = v21;
    v23[2] = 0;
    v23[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD366D68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v76 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E30, &qword_1BE0CED18);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v61 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E20, &qword_1BE0CECB8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v61 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E10, &qword_1BE0CECB0);
  MEMORY[0x1EEE9AC00](v75);
  v6 = &v61 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E38, &qword_1BE0CED20);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v61 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E40, &qword_1BE0CED28);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v61 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E00, &qword_1BE0CECA8);
  MEMORY[0x1EEE9AC00](v65);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E48, &qword_1BE0CED30);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v61 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v78 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v61 - v31;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DF0, &qword_1BE0CECA0);
  MEMORY[0x1EEE9AC00](v72);
  v34 = &v61 - v33;
  if (*(*(a1 + 8) + OBJC_IVAR____TtC9PassKitUI10PersonName_requiresPhoneticName) == 1)
  {
    v70 = v22;
    v71 = v10;
    if (qword_1EBD36F10 != -1)
    {
      v60 = &v61 - v33;
      swift_once();
      v34 = v60;
    }

    v35 = v19;
    v63 = v34;
    if (qword_1EBDAB6C0 == 2)
    {
      sub_1BD36772C(v32);
      sub_1BD367A8C(v29);
      sub_1BD367DE8(v78);
      v36 = v77;
      sub_1BD368144(v77);
      LODWORD(v69) = 0;
    }

    else
    {
      sub_1BD367DE8(v32);
      sub_1BD368144(v29);
      sub_1BD36772C(v78);
      v36 = v77;
      sub_1BD367A8C(v77);
      LODWORD(v69) = 1;
    }

    v39 = v32;
    v61 = v29;
    v62 = v32;
    v40 = *(v12 + 16);
    v41 = v70;
    v40(v70, v39, v11);
    v40(v35, v29, v11);
    v40(v16, v78, v11);
    v42 = v64;
    v40(v64, v36, v11);
    v43 = v71;
    v40(v71, v41, v11);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E58, &qword_1BE0CED40);
    v40(v43 + v44[12], v35, v11);
    v40(v43 + v44[16], v16, v11);
    v40(v43 + v44[20], v42, v11);
    v45 = *(v12 + 8);
    v45(v42, v11);
    v45(v16, v11);
    v45(v35, v11);
    v45(v41, v11);
    sub_1BD0DE19C(v43, v67, &qword_1EBD42E00, &qword_1BE0CECA8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD42DF8, &qword_1EBD42E00, &qword_1BE0CECA8, MEMORY[0x1E6981F48]);
    v46 = v63;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v43, &qword_1EBD42E00, &qword_1BE0CECA8);
    v45(v77, v11);
    v45(v78, v11);
    v45(v61, v11);
    v45(v62, v11);
    v47 = &qword_1EBD42DF0;
    v48 = &qword_1BE0CECA0;
    sub_1BD0DE19C(v46, v74, &qword_1EBD42DF0, &qword_1BE0CECA0);
    swift_storeEnumTagMultiPayload();
    sub_1BD36A224();
    sub_1BD36A2D4();
    sub_1BE04F9A4();
    v49 = v46;
  }

  else
  {
    v67 = v6;
    if (qword_1EBD36F10 != -1)
    {
      swift_once();
    }

    v37 = (v12 + 16);
    v38 = (v12 + 8);
    if (qword_1EBDAB6C0 == 2)
    {
      sub_1BD36772C(v32);
      sub_1BD367DE8(v29);
    }

    else
    {
      sub_1BD367DE8(v32);
      sub_1BD36772C(v29);
    }

    v50 = v32;
    v51 = v77;
    v52 = v78;
    v53 = *v37;
    (*v37)(v78, v50, v11);
    v53(v51, v29, v11);
    v54 = v68;
    v53(v68, v52, v11);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E50, &qword_1BE0CED38);
    v53(v54 + *(v55 + 48), v51, v11);
    v56 = v51;
    v57 = *v38;
    (*v38)(v56, v11);
    v57(v52, v11);
    sub_1BD0DE19C(v54, v71, &qword_1EBD42E20, &qword_1BE0CECB8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD42E18, &qword_1EBD42E20, &qword_1BE0CECB8, MEMORY[0x1E6981F48]);
    v58 = v67;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v54, &qword_1EBD42E20, &qword_1BE0CECB8);
    v57(v29, v11);
    v57(v50, v11);
    v47 = &qword_1EBD42E10;
    v48 = &qword_1BE0CECB0;
    sub_1BD0DE19C(v58, v74, &qword_1EBD42E10, &qword_1BE0CECB0);
    swift_storeEnumTagMultiPayload();
    sub_1BD36A224();
    sub_1BD36A2D4();
    sub_1BE04F9A4();
    v49 = v58;
  }

  return sub_1BD0DE53C(v49, v47, v48);
}

id sub_1BD36772C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for ContactFormNameSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B8068], v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v34 = v14;
    v35 = v13;

    (*(v7 + 8))(v10, v6);
    v15 = *(v2 + 56);
    v37 = *(v2 + 40);
    *&v38 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
    sub_1BE0516C4();
    v33 = v46;
    v16 = *(&v47 + 1);
    v32 = v47;
    v17 = *MEMORY[0x1E69B97C8];
    v19 = sub_1BD368AC0(v18);
    sub_1BD36A528(v2, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    sub_1BD36A384(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = sub_1BE04E274();
    v24 = v23;
    v25 = v22 & 1;
    v27 = v26 & 1;
    KeyPath = swift_getKeyPath();
    v29 = sub_1BE052434();
    *&v37 = v35;
    *(&v37 + 1) = v34;
    v38 = v33;
    *&v39 = v32;
    *(&v39 + 1) = v16;
    *&v40 = v17;
    *(&v40 + 1) = v19;
    v41 = 0uLL;
    *&v42 = sub_1BD36A9B0;
    *(&v42 + 1) = v21;
    LOBYTE(v43) = v25;
    *(&v43 + 1) = v24;
    LOBYTE(v44) = v27;
    *(&v44 + 1) = KeyPath;
    *&v45 = v29;
    *(&v45 + 1) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498, &unk_1BE0C8090);
    sub_1BD2A21D8();
    sub_1BE050C44();
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v46 = v37;
    v47 = v38;
    return sub_1BD0DE53C(&v46, &qword_1EBD40498, &unk_1BE0C8090);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD367A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for ContactFormNameSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B8068], v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v34 = v14;
    v35 = v13;

    (*(v7 + 8))(v10, v6);
    v15 = *(v2 + 104);
    v37 = *(v2 + 88);
    *&v38 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
    sub_1BE0516C4();
    v33 = v46;
    v16 = *(&v47 + 1);
    v32 = v47;
    v17 = *MEMORY[0x1E69B9AA0];
    v19 = sub_1BD369A4C(v18);
    sub_1BD36A528(v2, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    sub_1BD36A384(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = sub_1BE04E274();
    v24 = v23;
    v25 = v22 & 1;
    v27 = v26 & 1;
    KeyPath = swift_getKeyPath();
    v29 = sub_1BE052434();
    *&v37 = v35;
    *(&v37 + 1) = v34;
    v38 = v33;
    *&v39 = v32;
    *(&v39 + 1) = v16;
    *&v40 = v17;
    *(&v40 + 1) = v19;
    v41 = 0uLL;
    *&v42 = sub_1BD36A9B0;
    *(&v42 + 1) = v21;
    LOBYTE(v43) = v25;
    *(&v43 + 1) = v24;
    LOBYTE(v44) = v27;
    *(&v44 + 1) = KeyPath;
    *&v45 = v29;
    *(&v45 + 1) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498, &unk_1BE0C8090);
    sub_1BD2A21D8();
    sub_1BE050C44();
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v46 = v37;
    v47 = v38;
    return sub_1BD0DE53C(&v46, &qword_1EBD40498, &unk_1BE0C8090);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD367DE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for ContactFormNameSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B8068], v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v34 = v14;
    v35 = v13;

    (*(v7 + 8))(v10, v6);
    v15 = *(v2 + 32);
    v37 = *(v2 + 16);
    *&v38 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
    sub_1BE0516C4();
    v33 = v46;
    v16 = *(&v47 + 1);
    v32 = v47;
    v17 = *MEMORY[0x1E69B9838];
    v19 = sub_1BD368AC0(v18);
    sub_1BD36A528(v2, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    sub_1BD36A384(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = sub_1BE04E274();
    v24 = v23;
    v25 = v22 & 1;
    v27 = v26 & 1;
    KeyPath = swift_getKeyPath();
    v29 = sub_1BE052434();
    *&v37 = v35;
    *(&v37 + 1) = v34;
    v38 = v33;
    *&v39 = v32;
    *(&v39 + 1) = v16;
    *&v40 = v17;
    *(&v40 + 1) = v19;
    v41 = 0uLL;
    *&v42 = sub_1BD36A9B0;
    *(&v42 + 1) = v21;
    LOBYTE(v43) = v25;
    *(&v43 + 1) = v24;
    LOBYTE(v44) = v27;
    *(&v44 + 1) = KeyPath;
    *&v45 = v29;
    *(&v45 + 1) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498, &unk_1BE0C8090);
    sub_1BD2A21D8();
    sub_1BE050C44();
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v46 = v37;
    v47 = v38;
    return sub_1BD0DE53C(&v46, &qword_1EBD40498, &unk_1BE0C8090);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD368144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for ContactFormNameSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B8068], v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v34 = v14;
    v35 = v13;

    (*(v7 + 8))(v10, v6);
    v15 = *(v2 + 80);
    v37 = *(v2 + 64);
    *&v38 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
    sub_1BE0516C4();
    v33 = v46;
    v16 = *(&v47 + 1);
    v32 = v47;
    v17 = *MEMORY[0x1E69B9AA8];
    v19 = sub_1BD369A4C(v18);
    sub_1BD36A528(v2, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    sub_1BD36A384(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = sub_1BE04E274();
    v24 = v23;
    v25 = v22 & 1;
    v27 = v26 & 1;
    KeyPath = swift_getKeyPath();
    v29 = sub_1BE052434();
    *&v37 = v35;
    *(&v37 + 1) = v34;
    v38 = v33;
    *&v39 = v32;
    *(&v39 + 1) = v16;
    *&v40 = v17;
    *(&v40 + 1) = v19;
    v41 = 0uLL;
    *&v42 = sub_1BD36A698;
    *(&v42 + 1) = v21;
    LOBYTE(v43) = v25;
    *(&v43 + 1) = v24;
    LOBYTE(v44) = v27;
    *(&v44 + 1) = KeyPath;
    *&v45 = v29;
    *(&v45 + 1) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498, &unk_1BE0C8090);
    sub_1BD2A21D8();
    sub_1BE050C44();
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v46 = v37;
    v47 = v38;
    return sub_1BD0DE53C(&v46, &qword_1EBD40498, &unk_1BE0C8090);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD3684A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v95 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v94 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v94 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v94 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v94 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - v20;
  v22 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = (&v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  sub_1BE04D8B4(v24);
  KeyPath, v27, v28, v29, v30, v31, v32, v33;
  v26, v34, v35, v36, v37, v38, v39, v40;
  sub_1BD36A448(v24, v21);
  type metadata accessor for ContactFormNameSection(0);
  sub_1BD36A4B8(v21, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8, &unk_1BE0CEC10);
  sub_1BE0516B4();
  sub_1BD0DE53C(v21, &unk_1EBD52A20, &unk_1BE0F66E0);
  sub_1BE0516A4();
  v41 = sub_1BE04A704();
  v42 = *(*(v41 - 8) + 48);
  if (v42(v15, 1, v41))
  {
    sub_1BD0DE53C(v15, &unk_1EBD52A20, &unk_1BE0F66E0);
LABEL_3:
    0, v43, v44, v45, v46, v47, v48, v49;
    v50 = 0;
    v51 = 0xE000000000000000;
    goto LABEL_5;
  }

  v50 = sub_1BE04A664();
  v51 = v52;
  sub_1BD0DE53C(v15, &unk_1EBD52A20, &unk_1BE0F66E0);
  if (!v51)
  {
    goto LABEL_3;
  }

LABEL_5:
  v53 = *(a1 + 32);
  v101 = *(a1 + 16);
  v102 = v53;
  v99 = v50;
  v100 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516B4();
  sub_1BE0516A4();
  if (v42(v12, 1, v41))
  {
    sub_1BD0DE53C(v12, &unk_1EBD52A20, &unk_1BE0F66E0);
LABEL_7:
    0, v54, v55, v56, v57, v58, v59, v60;
    v61 = 0;
    v62 = 0xE000000000000000;
    goto LABEL_9;
  }

  v61 = sub_1BE04A684();
  v62 = v63;
  sub_1BD0DE53C(v12, &unk_1EBD52A20, &unk_1BE0F66E0);
  if (!v62)
  {
    goto LABEL_7;
  }

LABEL_9:
  v64 = v96;
  v65 = *(a1 + 56);
  v101 = *(a1 + 40);
  v102 = v65;
  v99 = v61;
  v100 = v62;
  sub_1BE0516B4();
  v66 = v97;
  sub_1BE0516A4();
  if (v42(v66, 1, v41))
  {
LABEL_12:
    sub_1BD0DE53C(v66, &unk_1EBD52A20, &unk_1BE0F66E0);
LABEL_13:
    0, v67, v68, v69, v70, v71, v72, v73;
    v74 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_14;
  }

  sub_1BE04A6C4();
  if (v42(v64, 1, v41))
  {
    sub_1BD0DE53C(v64, &unk_1EBD52A20, &unk_1BE0F66E0);
    goto LABEL_12;
  }

  v74 = sub_1BE04A664();
  v90 = v64;
  v91 = v66;
  v75 = v92;
  sub_1BD0DE53C(v90, &unk_1EBD52A20, &unk_1BE0F66E0);
  sub_1BD0DE53C(v91, &unk_1EBD52A20, &unk_1BE0F66E0);
  if (!v75)
  {
    goto LABEL_13;
  }

LABEL_14:
  v76 = *(a1 + 80);
  v101 = *(a1 + 64);
  v102 = v76;
  v99 = v74;
  v100 = v75;
  sub_1BE0516B4();
  v77 = v98;
  sub_1BE0516A4();
  if (!v42(v77, 1, v41))
  {
    v78 = v95;
    sub_1BE04A6C4();
    if (!v42(v78, 1, v41))
    {
      v86 = sub_1BE04A684();
      v87 = v93;
      sub_1BD0DE53C(v78, &unk_1EBD52A20, &unk_1BE0F66E0);
      sub_1BD0DE53C(v77, &unk_1EBD52A20, &unk_1BE0F66E0);
      if (v87)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    sub_1BD0DE53C(v78, &unk_1EBD52A20, &unk_1BE0F66E0);
  }

  sub_1BD0DE53C(v77, &unk_1EBD52A20, &unk_1BE0F66E0);
LABEL_18:
  0, v79, v80, v81, v82, v83, v84, v85;
  v86 = 0;
  v87 = 0xE000000000000000;
LABEL_19:
  v88 = *(a1 + 104);
  v101 = *(a1 + 88);
  v102 = v88;
  v99 = v86;
  v100 = v87;
  sub_1BE0516B4();
  return result;
}

void *sub_1BD368AC0(double a1)
{
  v2 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v179 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v179 - v12;
  v180 = v1;
  v14 = *(v1 + 8);
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v179[1] = v14;
  sub_1BE04D8B4(v7);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  sub_1BD36A448(v7, v13);
  v31 = sub_1BE04A704();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v13, 1, v31) == 1)
  {
    sub_1BD0DE53C(v13, &unk_1EBD52A20, &unk_1BE0F66E0);
  }

  else
  {
    v179[0] = sub_1BE04A664();
    v42 = v41;
    (*(v32 + 8))(v13, v31);
    if (v42)
    {
      goto LABEL_5;
    }
  }

  0, v34, v35, v36, v37, v38, v39, v40;
  v179[0] = 0;
  v42 = 0xE000000000000000;
LABEL_5:
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  sub_1BE04D8B4(v4);
  v43, v45, v46, v47, v48, v49, v50, v51;
  v44, v52, v53, v54, v55, v56, v57, v58;
  sub_1BD36A448(v4, v10);
  if (v33(v10, 1, v31) == 1)
  {
    sub_1BD0DE53C(v10, &unk_1EBD52A20, &unk_1BE0F66E0);
    v66 = v180;
  }

  else
  {
    v67 = sub_1BE04A684();
    v69 = v68;
    (*(v32 + 8))(v10, v31);
    v66 = v180;
    if (v69)
    {
      goto LABEL_9;
    }
  }

  0, v59, v60, v61, v62, v63, v64, v65;
  v67 = 0;
  v69 = 0xE000000000000000;
LABEL_9:
  v70 = swift_getKeyPath();
  v71 = swift_getKeyPath();
  sub_1BE04D8B4(&v183);
  v70, v72, v73, v74, v75, v76, v77, v78;
  v71, v79, v80, v81, v82, v83, v84, v85;
  v93 = v183;
  if (!(v183 >> 62))
  {
    result = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_25:
    v93, v86, v87, v88, v89, v90, v91, v92;
    v69, v172, v173, v174, v175, v176, v177, v178;
    v171 = v42;
    goto LABEL_26;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((v93 & 0xC000000000000001) != 0)
  {
    v95 = MEMORY[0x1BFB40900](0, v93);
LABEL_14:
    v103 = v95;
    v93, v96, v97, v98, v99, v100, v101, v102;
    v104 = *(v66 + 32);
    v183 = *(v66 + 16);
    v184 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
    sub_1BE0516A4();
    v111 = v182;
    if (v179[0] == v181 && v42 == v182)
    {
      v182, v105, v181, v106, v107, v108, v109, v110;
      v42, v112, v113, v114, v115, v116, v117, v118;
      goto LABEL_18;
    }

    v119 = sub_1BE053B84();
    v111, v120, v121, v122, v123, v124, v125, v126;
    v42, v127, v128, v129, v130, v131, v132, v133;
    if (v119)
    {
LABEL_18:
      v134 = *(v66 + 56);
      v183 = *(v66 + 40);
      v184 = v134;
      sub_1BE0516A4();
      v141 = v182;
      if (v67 == v181 && v69 == v182)
      {
        v182, v135, v181, v136, v137, v138, v139, v140;
        v69, v142, v143, v144, v145, v146, v147, v148;
        return v103;
      }

      v149 = sub_1BE053B84();
      v141, v150, v151, v152, v153, v154, v155, v156;
      v69, v157, v158, v159, v160, v161, v162, v163;
      if (v149)
      {
        return v103;
      }

      return 0;
    }

    v171 = v69;
LABEL_26:
    v171, v164, v165, v166, v167, v168, v169, v170;
    return 0;
  }

  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v95 = *(v93 + 32);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD368F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A40, &qword_1BE0F6770);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v82 - v3;
  v4 = sub_1BE04A704();
  v92 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v82 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v82 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v82 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v82 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v82 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v82 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v82 - v28;
  sub_1BD36A010(&v82 - v28);
  v30 = v1[2];
  v31 = v1[3];
  v32 = v1[4];
  *&v98 = v30;
  *(&v98 + 1) = v31;
  v99 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v34 = v96;
  v33 = v97;
  v97, v35, v36, v37, v38, v39, v40, v41;
  v42 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v42 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    goto LABEL_12;
  }

  v43 = v2[7];
  v98 = *(v2 + 5);
  v99 = v43;
  sub_1BE0516A4();
  v45 = v96;
  v44 = v97;
  v97, v46, v47, v48, v49, v50, v51, v52;
  v53 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v53 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (v53 || (v54 = *(v92 + 48), v54(v29, 1, v4) != 1))
  {
LABEL_12:
    v58 = v89;
    sub_1BE04A6F4();
    *&v98 = v30;
    *(&v98 + 1) = v31;
    v99 = v32;
    sub_1BE0516A4();
    sub_1BE04A674();
    v59 = v2[7];
    v98 = *(v2 + 5);
    v99 = v59;
    sub_1BE0516A4();
    sub_1BE04A694();
    sub_1BD36A4B8(v29, v22);
    v60 = v92;
    v86 = *(v92 + 48);
    v61 = (v86)(v22, 1, v4);
    v87 = v29;
    v62 = v60;
    if (v61 == 1)
    {
      sub_1BD0DE53C(v22, &unk_1EBD52A20, &unk_1BE0F66E0);
      v63 = *(v60 + 16);
    }

    else
    {
      v64 = *(v60 + 32);
      v65 = v84;
      v64(v84, v22, v4);
      v63 = *(v62 + 16);
      v66 = v83;
      v63(v83, v65, v4);
      (*(v62 + 56))(v66, 0, 1, v4);
      sub_1BE04A6D4();
      (*(v62 + 8))(v65, v4);
    }

    v67 = v58;
    v68 = v95;
    v63(v95, v67, v4);
    v69 = *(v62 + 56);
    v69(v68, 0, 1, v4);
    v70 = v94;
    v63(v94, v67, v4);
    v69(v70, 0, 1, v4);
    type metadata accessor for ContactFormNameSection(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8, &unk_1BE0CEC10);
    v71 = v93;
    sub_1BE0516A4();
    v72 = *(v88 + 48);
    v73 = v90;
    sub_1BD36A4B8(v70, v90);
    sub_1BD36A4B8(v71, v73 + v72);
    v74 = v86;
    if ((v86)(v73, 1, v4) == 1)
    {
      sub_1BD0DE53C(v71, &unk_1EBD52A20, &unk_1BE0F66E0);
      sub_1BD0DE53C(v70, &unk_1EBD52A20, &unk_1BE0F66E0);
      (*(v62 + 8))(v67, v4);
      if ((v74)(v73 + v72, 1, v4) == 1)
      {
        sub_1BD0DE53C(v73, &unk_1EBD52A20, &unk_1BE0F66E0);
        v57 = 1;
LABEL_24:
        v29 = v87;
        goto LABEL_25;
      }
    }

    else
    {
      v75 = v85;
      sub_1BD36A4B8(v73, v85);
      if ((v74)(v73 + v72, 1, v4) != 1)
      {
        v77 = v82;
        (*(v62 + 32))(v82, v73 + v72, v4);
        sub_1BD36A650(&qword_1EBD42E60, MEMORY[0x1E6968A70], MEMORY[0x1E6968A88]);
        v78 = sub_1BE052334();
        v79 = *(v62 + 8);
        v79(v77, v4);
        sub_1BD0DE53C(v93, &unk_1EBD52A20, &unk_1BE0F66E0);
        sub_1BD0DE53C(v94, &unk_1EBD52A20, &unk_1BE0F66E0);
        v79(v67, v4);
        v79(v75, v4);
        sub_1BD0DE53C(v73, &unk_1EBD52A20, &unk_1BE0F66E0);
        if (v78)
        {
          v57 = 1;
        }

        else
        {
          v57 = 6;
        }

        goto LABEL_24;
      }

      sub_1BD0DE53C(v93, &unk_1EBD52A20, &unk_1BE0F66E0);
      sub_1BD0DE53C(v94, &unk_1EBD52A20, &unk_1BE0F66E0);
      v76 = *(v62 + 8);
      v76(v67, v4);
      v76(v75, v4);
    }

    sub_1BD0DE53C(v73, &unk_1EBD52A40, &qword_1BE0F6770);
    v57 = 6;
    goto LABEL_24;
  }

  v55 = v86;
  (*(v92 + 56))(v86, 1, 1, v4);
  type metadata accessor for ContactFormNameSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8, &unk_1BE0CEC10);
  v56 = v87;
  sub_1BE0516A4();
  if (v54(v56, 1, v4) == 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = 6;
  }

  sub_1BD0DE53C(v56, &unk_1EBD52A20, &unk_1BE0F66E0);
  v95 = v55;
LABEL_25:
  v80 = v91;
  sub_1BD36A448(v95, v91);
  *(v80 + *(type metadata accessor for PersonNameComponentsData(0) + 20)) = v57;
  return sub_1BD0DE53C(v29, &unk_1EBD52A20, &unk_1BE0F66E0);
}

void sub_1BD369898(char a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  if ((a1 & 1) == 0)
  {
    v11 = *(a2 + 8);
    sub_1BE048964();
    sub_1BD368F9C(v10);
    v12 = &v11[OBJC_IVAR____TtC9PassKitUI10PersonName_context];
    v13 = *&v11[OBJC_IVAR____TtC9PassKitUI10PersonName_context];
    if (v13)
    {
      v15 = *(v12 + 4);
      v14 = *(v12 + 5);
      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      v18 = *(v12 + 1);
      sub_1BD36A528(v10, v7, type metadata accessor for PersonNameComponentsData);
      sub_1BD36A5EC(v13, v18, v17, v16, v15);
      sub_1BD790E98(v7, v13, v15);
      v11, v19, v20, v21, v22, v23, v24, v25;
      v14, v26, v27, v28, v29, v30, v31, v32;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD36A528(v10, v7, type metadata accessor for PersonNameComponentsData);
      sub_1BE04D8C4();
    }

    sub_1BD36A590(v10, v33);
  }
}

void *sub_1BD369A4C(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v192 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v194 = &v192 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v192 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v192 - v18;
  v20 = *(v2 + 8);
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v196 = v20;
  sub_1BE04D8B4(v8);
  KeyPath, v23, v24, v25, v26, v27, v28, v29;
  v22, v30, v31, v32, v33, v34, v35, v36;
  sub_1BD36A448(v8, v16);
  v37 = sub_1BE04A704();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v16, 1, v37) == 1)
  {
    goto LABEL_4;
  }

  v193 = v2;
  sub_1BE04A6C4();
  v40 = *(v38 + 8);
  v40(v16, v37);
  if (v39(v19, 1, v37) == 1)
  {
    v16 = v19;
    v2 = v193;
LABEL_4:
    sub_1BD0DE53C(v16, &unk_1EBD52A20, &unk_1BE0F66E0);
LABEL_5:
    0, v41, v42, v43, v44, v45, v46, v47;
    v195 = 0;
    v48 = 0xE000000000000000;
    goto LABEL_6;
  }

  v195 = sub_1BE04A664();
  v158 = v157;
  v40(v19, v37);
  v2 = v193;
  if (!v158)
  {
    goto LABEL_5;
  }

  v48 = v158;
LABEL_6:
  v49 = swift_getKeyPath();
  v50 = swift_getKeyPath();
  sub_1BE04D8B4(v5);
  v49, v51, v52, v53, v54, v55, v56, v57;
  v50, v58, v59, v60, v61, v62, v63, v64;
  sub_1BD36A448(v5, v11);
  if (v39(v11, 1, v37) == 1)
  {
LABEL_9:
    v68 = v48;
    sub_1BD0DE53C(v11, &unk_1EBD52A20, &unk_1BE0F66E0);
LABEL_10:
    0, v69, v70, v71, v72, v73, v74, v75;
    v76 = 0;
    v77 = 0xE000000000000000;
    goto LABEL_11;
  }

  v65 = v2;
  v66 = v194;
  sub_1BE04A6C4();
  v67 = *(v38 + 8);
  v67(v11, v37);
  if (v39(v66, 1, v37) == 1)
  {
    v11 = v66;
    v2 = v65;
    goto LABEL_9;
  }

  v159 = sub_1BE04A684();
  v160 = v66;
  v76 = v159;
  v77 = v161;
  v67(v160, v37);
  v2 = v65;
  v68 = v48;
  if (!v77)
  {
    goto LABEL_10;
  }

LABEL_11:
  v78 = swift_getKeyPath();
  v79 = swift_getKeyPath();
  sub_1BE04D8B4(&v199);
  v78, v80, v81, v82, v83, v84, v85, v86;
  v79, v87, v88, v89, v90, v91, v92, v93;
  v101 = v199;
  if (!(v199 >> 62))
  {
    result = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_31:
    v101, v94, v95, v96, v97, v98, v99, v100;
    v77, v185, v186, v187, v188, v189, v190, v191;
    v184 = v68;
    goto LABEL_32;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((v101 & 0xC000000000000001) != 0)
  {
    v103 = MEMORY[0x1BFB40900](0, v101);
LABEL_16:
    v111 = v103;
    v101, v104, v105, v106, v107, v108, v109, v110;
    v112 = *(v2 + 80);
    v199 = *(v2 + 64);
    v200 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
    sub_1BE0516A4();
    v119 = v198;
    if (v195 == v197 && v68 == v198)
    {
      v198, v113, v197, v114, v115, v116, v117, v118;
      v68, v120, v121, v122, v123, v124, v125, v126;
      goto LABEL_20;
    }

    v127 = sub_1BE053B84();
    v119, v128, v129, v130, v131, v132, v133, v134;
    v68, v135, v136, v137, v138, v139, v140, v141;
    if (v127)
    {
LABEL_20:
      v142 = *(v2 + 104);
      v199 = *(v2 + 88);
      v200 = v142;
      sub_1BE0516A4();
      v149 = v198;
      if (v76 == v197 && v77 == v198)
      {
        v198, v143, v197, v144, v145, v146, v147, v148;
        v77, v150, v151, v152, v153, v154, v155, v156;
        return v111;
      }

      v162 = sub_1BE053B84();
      v149, v163, v164, v165, v166, v167, v168, v169;
      v77, v170, v171, v172, v173, v174, v175, v176;
      if (v162)
      {
        return v111;
      }

      return 0;
    }

    v184 = v77;
LABEL_32:
    v184, v177, v178, v179, v180, v181, v182, v183;
    return 0;
  }

  if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v103 = *(v101 + 32);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD36A010@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v22, v2, v3, v4, v5, v6, v7, v8;
  v9 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v9 = *v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  sub_1BE0516A4();
  v22, v10, v11, v12, v13, v14, v15, v16;
  v17 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v17 = *v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
LABEL_7:
    sub_1BE04A6F4();
    sub_1BE0516A4();
    sub_1BE04A674();
    sub_1BE0516A4();
    sub_1BE04A694();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_1BE04A704();
  return (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
}

unint64_t sub_1BD36A198()
{
  result = qword_1EBD42DE0;
  if (!qword_1EBD42DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42DD8, &qword_1BE0CEC98);
    sub_1BD36A224();
    sub_1BD36A2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42DE0);
  }

  return result;
}

unint64_t sub_1BD36A224()
{
  result = qword_1EBD42DE8;
  if (!qword_1EBD42DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42DF0, &qword_1BE0CECA0);
    sub_1BD0DE4F4(&qword_1EBD42DF8, &qword_1EBD42E00, &qword_1BE0CECA8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42DE8);
  }

  return result;
}

unint64_t sub_1BD36A2D4()
{
  result = qword_1EBD42E08;
  if (!qword_1EBD42E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42E10, &qword_1BE0CECB0);
    sub_1BD0DE4F4(&qword_1EBD42E18, &qword_1EBD42E20, &qword_1BE0CECB8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42E08);
  }

  return result;
}

uint64_t sub_1BD36A384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactFormNameSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BD36A3E8()
{
  v1 = *(type metadata accessor for ContactFormNameSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD3684A0(v2);
}

uint64_t sub_1BD36A448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD36A4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD36A528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD36A590(uint64_t a1, double a2)
{
  v3 = type metadata accessor for PersonNameComponentsData(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1BD36A5EC(void *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (result)
  {
    v6 = result;
    v7 = a4;
    v8 = a5;
    sub_1BE048964();
    v9 = v6;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1BD36A650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_31()
{
  v1 = (type metadata accessor for ContactFormNameSection(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v2[4], v17, v18, v19, v20, v21, v22, v23;
  v2[6], v24, v25, v26, v27, v28, v29, v30;
  v2[7], v31, v32, v33, v34, v35, v36, v37;
  v2[9], v38, v39, v40, v41, v42, v43, v44;
  v2[10], v45, v46, v47, v48, v49, v50, v51;
  v2[12], v52, v53, v54, v55, v56, v57, v58;
  v2[13], v59, v60, v61, v62, v63, v64, v65;
  v66 = v2 + v1[11];
  v67 = sub_1BE04A704();
  v68 = *(v67 - 8);
  if (!(*(v68 + 48))(v66, 1, v67))
  {
    (*(v68 + 8))(v66, v67);
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8, &unk_1BE0CEC10);
  *&v66[*(v69 + 28)], v70, v71, v72, v73, v74, v75, v76;

  return swift_deallocObject();
}

unint64_t sub_1BD36A88C()
{
  result = qword_1EBD42E68;
  if (!qword_1EBD42E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42E28, &qword_1BE0CECC0);
    sub_1BD36A918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42E68);
  }

  return result;
}

unint64_t sub_1BD36A918()
{
  result = qword_1EBD42E70;
  if (!qword_1EBD42E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42DD0, &qword_1BE0CEC90);
    sub_1BD36A198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42E70);
  }

  return result;
}

uint64_t sub_1BD36A9B4()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  sub_1BD2217E0(qword_1EBD42EA0, *algn_1EBD42EA8);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 remoteImage];
    if (!v2)
    {
      IsAutomatic = 1;
      v4 = v1;
LABEL_11:

      return IsAutomatic;
    }

    v3 = v2;
    PKScreenScale();
    v4 = [v3 imageForScaleFactorValue_];

    if (v4)
    {
      [v4 width];
      if (PKRemoteImageDimensionIsAutomatic())
      {
        [v4 height];
        IsAutomatic = PKRemoteImageDimensionIsAutomatic();
      }

      else
      {
        IsAutomatic = 0;
      }

      goto LABEL_11;
    }
  }

  return 1;
}

double sub_1BD36AABC()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  sub_1BD2217E0(qword_1EBD42EA0, *algn_1EBD42EA8);
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  v2 = [v0 remoteImage];
  if (!v2)
  {

LABEL_10:
    if (qword_1EBD370B0 != -1)
    {
      swift_once();
    }

    return *&qword_1EBDAB948;
  }

  v3 = v2;
  PKScreenScale();
  v4 = [v3 imageForScaleFactorValue_];

  if (!v4)
  {
    goto LABEL_10;
  }

  [v4 width];
  if (!PKRemoteImageDimensionIsAutomatic())
  {

    return 0.0;
  }

  [v4 height];
  IsAutomatic = PKRemoteImageDimensionIsAutomatic();

  result = 0.0;
  if (IsAutomatic)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1BD36ABF8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state];
  if (v9 < 3)
  {
    return sub_1BD36BCB0();
  }

  if (v9 == 4)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69B80B0], v1);
    v9 = PKPassKitBundle();
    if (v9)
    {
      v11 = v9;
      v12 = sub_1BE04B6E4();

      (*(v2 + 8))(v4, v1);
      return v12;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v9 != 3)
  {
LABEL_12:
    v16[2] = 0;
    v16[3] = 0xE000000000000000;
    v15 = v9;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD000000000000026, 0x80000001BE124F40);
    v16[1] = v15;
    type metadata accessor for PKAccountPromotionState(0);
    sub_1BE053974();
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  (*(v2 + 104))(v8, *MEMORY[0x1E69B80B0], v1);
  v9 = PKPassKitBundle();
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v9;
  v14 = sub_1BE04B6E4();

  (*(v2 + 8))(v8, v1);
  return v14;
}

id sub_1BD36AEE0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state] == 3)
  {
    return 0;
  }

  result = sub_1BD36BFB4();
  if (result)
  {
    v7 = result;
    v8 = sub_1BD36C240();

    if (!v8)
    {
      return 0;
    }

    v9 = [v8 formattedStringValue];

    if (!v9)
    {
      return 0;
    }

    v10 = sub_1BE052434();
    v12 = v11;

    (*(v2 + 104))(v5, *MEMORY[0x1E69B80B0], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BE0B69E0;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1BD110550();
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B704();
      v13, v16, v17, v18, v19, v20, v21, v22;

      (*(v2 + 8))(v5, v1);
      return v15;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_1BD36B104()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  sub_1BD2217E0(qword_1EBD42EA0, *algn_1EBD42EA8);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 remoteImage];
    if (!v2)
    {
      v6 = 0.0;
      v4 = v1;
LABEL_13:

      return v6;
    }

    v3 = v2;
    PKScreenScale();
    v4 = [v3 imageForScaleFactorValue_];

    if (v4)
    {
      sub_1BD36C3B0();
      if (v5)
      {
        sub_1BD36C4B4();
        v6 = 0.0;
        if (v7)
        {
          [v4 width];
          v6 = v8;
          [v4 height];
        }
      }

      else
      {
        v6 = 45.0;
      }

      goto LABEL_13;
    }
  }

  return 0.0;
}

uint64_t sub_1BD36B238()
{
  result = sub_1BE052434();
  qword_1EBD42E80 = result;
  *algn_1EBD42E88 = v1;
  return result;
}

uint64_t sub_1BD36B268()
{
  result = sub_1BE052434();
  qword_1EBD42E90 = result;
  *algn_1EBD42E98 = v1;
  return result;
}

uint64_t sub_1BD36B298()
{
  result = sub_1BE052434();
  qword_1EBD42EA0 = result;
  *algn_1EBD42EA8 = v1;
  return result;
}

uint64_t sub_1BD36B2C8()
{
  result = sub_1BE052434();
  qword_1EBD42EB0 = result;
  *algn_1EBD42EB8 = v1;
  return result;
}

uint64_t sub_1BD36B2F8()
{
  result = sub_1BE052434();
  qword_1EBD42EC0 = result;
  *algn_1EBD42EC8 = v1;
  return result;
}

uint64_t sub_1BD36B328()
{
  result = sub_1BE052434();
  qword_1EBD42ED0 = result;
  *algn_1EBD42ED8 = v1;
  return result;
}

uint64_t sub_1BD36B358()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

char *sub_1BD36B3CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FA8, &unk_1BE0EDBC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - v7;
  v9 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x1E69B83C0]) init];
  v10 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_layout;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x1E69B8828]) init];
  v11 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_template;
  *(v1 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_template) = 0;
  v48 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication;
  *(v1 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication) = 0;
  v12 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel__appStoreButtonTitle;
  v51 = 0;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BE04D874();
  v49 = v6;
  (v6)[4](v1 + v12, v8, v5);
  v13 = *(v1 + v9);
  *(v1 + v9) = a1;
  v14 = a1;

  v15 = [v14 layout];
  if (v15)
  {
    v16 = *(v1 + v10);
    *(v1 + v10) = v15;
    v17 = v15;

    v18 = [v14 templateIdentifier];
    if (v18)
    {
      v19 = sub_1BD36CDC4(v18);
      if (v19 == 5)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      *(v1 + v11) = v20;
    }

    v21 = type metadata accessor for AccountPromotionViewModel(0);
    v50.receiver = v1;
    v50.super_class = v21;
    v13 = objc_msgSendSuper2(&v50, sel_init);
    if (([*&v13[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion] isInTerminalState] & 1) == 0)
    {
      if (qword_1EBD36BD8 != -1)
      {
        swift_once();
      }

      sub_1BD2220F0(qword_1EBD42EC0, *algn_1EBD42EC8);
      if (v22)
      {
        v23 = v22;
        v24 = [v22 adamID];
        if (v24)
        {
          v25 = v24;
          v49 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1BE0B7020;
          *(v26 + 32) = v25;
          v27 = sub_1BE04AA64();
          v28 = *(v27 - 8);
          v29 = v47;
          (*(v28 + 56))(v47, 1, 1, v27);
          sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
          v48 = v25;
          v30 = sub_1BE052724();
          v26, v31, v32, v33, v34, v35, v36, v37;
          v38 = 0;
          if ((*(v28 + 48))(v29, 1, v27) != 1)
          {
            v38 = sub_1BE04A9C4();
            (*(v28 + 8))(v29, v27);
          }

          v39 = [objc_allocWithZone(PKLinkedApplication) initWithStoreIDs:v30 defaultLaunchURL:v38];

          v40 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication;
          v41 = *&v13[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication];
          *&v13[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication] = v39;

          v42 = *&v13[v40];
          if (v42)
          {
            [v42 addObserver_];
            v43 = *&v13[v40];
            if (v43)
            {
              v44 = v43;
              [v44 reloadApplicationStateIfNecessary];
            }
          }

          goto LABEL_21;
        }
      }
    }

    v17 = *&v13[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication];
    *&v13[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication] = 0;
LABEL_21:

    return v13;
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
  swift_willThrow();

  (*(v49 + 1))(v1 + v12, v5);
  type metadata accessor for AccountPromotionViewModel(0);
  swift_deallocPartialClassInstance();
  return v13;
}

id sub_1BD36B960()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication];
  if (v1)
  {
    [v1 removeObserver_];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AccountPromotionViewModel(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for AccountPromotionViewModel(uint64_t a1)
{
  result = qword_1EBD42F10;
  if (!qword_1EBD42F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD36BB58(uint64_t a1)
{
  sub_1BD36BC0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD36BC0C(uint64_t a1)
{
  if (!qword_1EBD42F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD42F20);
    }
  }
}

uint64_t sub_1BD36BC70@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountPromotionViewModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD36BCB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v25 - v2;
  v4 = sub_1BE04B2F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion;
  v10 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) hideTimeRemaining];
  result = 0;
  if ((v10 & 1) == 0)
  {
    [*(v0 + v9) timeRemaining];
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    v15 = v14;
    if (v13 >= 86400.0)
    {
      v16 = 24;
    }

    else
    {
      v16 = 48;
    }

    [v14 setAllowedUnits_];
    [v15 setUnitsStyle_];
    [v15 setIncludesTimeRemainingPhrase_];
    sub_1BE04B2A4();
    sub_1BE04AFF4();
    v17 = sub_1BE04B0F4();
    (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
    sub_1BE04B284();
    v18 = sub_1BE04B1D4();
    [v15 setCalendar_];

    [v15 setFormattingContext_];
    v19 = [v15 stringFromTimeInterval_];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1BE052434();
      v23 = v22;

      v25[0] = v21;
      v25[1] = v23;
      MEMORY[0x1BFB3F610](0x696E69616D655220, 0xEA0000000000676ELL);

      v24 = v25[0];
      (*(v5 + 8))(v8, v4);
      return v24;
    }

    else
    {
      (*(v5 + 8))(v8, v4);

      return 0;
    }
  }

  return result;
}

void *sub_1BD36BFB4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) completionSteps];
  if (v1)
  {
    v2 = v1;
    sub_1BD0E5E8C(0, &qword_1EBD42FA0, 0x1E69B83C8);
    v3 = sub_1BE052744();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v12 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB40900](v12, v3);
        }

        else
        {
          if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v13 = *(v3 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v13 progressType] == 1)
        {
          v3, v16, v17, v18, v19, v20, v21, v22;
          return v14;
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
    v3, v4, v5, v6, v7, v8, v9, v10;
  }

  return 0;
}

id sub_1BD36C0FC()
{
  if ([v0 progressType] - 1 > 2)
  {
    return 0;
  }

  result = [v0 currentValue];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [v0 endValue];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = [objc_opt_self() zero];
  v6 = [v4 compare_];

  if (!v6)
  {

    return 0;
  }

  v7 = [v2 decimalNumberByDividingBy_];
  [v7 doubleValue];
  v9 = v8;

  v10 = 0.0;
  if (v9 > 0.0)
  {
    v10 = v9;
  }

  if (v10 > 1.0)
  {
    v10 = 1.0;
  }

  return *&v10;
}

id sub_1BD36C240()
{
  v1 = v0;
  if ([v0 progressType] != 1)
  {
    return 0;
  }

  result = [v0 currentValue];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [v0 endValue];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  v6 = [v1 currencyCode];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = [v5 decimalNumberBySubtracting_];
  if ([v8 pk_isNegativeNumber])
  {
    v9 = [objc_opt_self() zero];

    v8 = v9;
  }

  else if ([v8 pk:v5 isGreaterThan:?])
  {

    v8 = v5;
  }

  v10 = PKCurrencyAmountMake();

  return v10;
}

void sub_1BD36C3B0()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  sub_1BD2217E0(qword_1EBD42EA0, *algn_1EBD42EA8);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 remoteImage];
    if (v2)
    {
      v3 = v2;
      PKScreenScale();
      v4 = [v3 imageForScaleFactorValue_];

      if (v4)
      {
        [v4 width];
        if (PKRemoteImageDimensionIsAutomatic())
        {
          [v4 height];
          PKRemoteImageDimensionIsAutomatic();
        }
      }
    }

    else
    {
    }
  }
}

void sub_1BD36C4B4()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  sub_1BD2217E0(qword_1EBD42EA0, *algn_1EBD42EA8);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 remoteImage];
    if (v2)
    {
      v3 = v2;
      PKScreenScale();
      v4 = [v3 imageForScaleFactorValue_];

      if (v4)
      {
        [v4 width];
        if (PKRemoteImageDimensionIsMaximum() & 1) != 0 || ([v4 width], (PKRemoteImageDimensionIsAutomatic()) || (objc_msgSend(v4, sel_height), (PKRemoteImageDimensionIsMaximum()))
        {
        }

        else
        {
          [v4 height];
          PKRemoteImageDimensionIsAutomatic();
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1BD36C5DC()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v8 = sub_1BE052D54();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD36CDBC;
  v20 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_68;
  v10 = _Block_copy(aBlock);
  v20, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BD36C8D0()
{
  result = qword_1EBD42F90;
  if (!qword_1EBD42F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42F90);
  }

  return result;
}

uint64_t sub_1BD36C954()
{
  v1 = [v0 configuration];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BE052244();

    if (v3[2] && (v11 = sub_1BD148F70(0x6F69746F6D6F7270, 0xEE0065746174536ELL), (v4 & 1) != 0))
    {
      sub_1BD038CD0(v3[7] + 32 * v11, v30);
      v3, v12, v13, v14, v15, v16, v17, v18;
      if (swift_dynamicCast())
      {
        v19 = sub_1BE052404();
        v29, v20, v21, v22, v23, v24, v25, v26;
        v27 = PKAccountPromotionStateFromString();

        return v27;
      }
    }

    else
    {
      v3, v4, v5, v6, v7, v8, v9, v10;
    }
  }

  return 0;
}

uint64_t sub_1BD36CA98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 osVersionRange];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = sub_1BE052404();
  v8 = [v6 versionMeetsRequirements:a2 deviceClass:v7];

  return v8;
}

void sub_1BD36CB24(uint64_t a1)
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication);
    if (!v9)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v23 = 0;
      v24 = 0;
      sub_1BE04D8C4();
      return;
    }

    v10 = v9;
    v11 = [v10 isInstalled];
    v12 = *MEMORY[0x1E69B80B0];
    v13 = *(v2 + 104);
    if (v11)
    {
      v13(v7, v12, v1);
      v14 = PKPassKitBundle();
      if (v14)
      {
        v15 = v14;
        v16 = sub_1BE04B6E4();
        v18 = v17;

        (*(v2 + 8))(v7, v1);
LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        v23 = v16;
        v24 = v18;
        sub_1BE04D8C4();

        return;
      }

      __break(1u);
    }

    else
    {
      v13(v4, v12, v1);
      v19 = PKPassKitBundle();
      if (v19)
      {
        v20 = v19;
        v16 = sub_1BE04B6E4();
        v18 = v21;

        (*(v2 + 8))(v4, v1);
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD36CDC4(void *a1)
{
  v2 = sub_1BE052434();
  v4 = v3;
  v6 = sub_1BE052434();
  v7 = v2;
  v8 = v5;
  if (v7 == v6 && v4 == v5)
  {

    v4, v25, v26, v27, v28, v29, v30, v31;
    v8, v32, v33, v34, v35, v36, v37, v38;
    return 0;
  }

  v10 = sub_1BE053B84();
  v4, v11, v12, v13, v14, v15, v16, v17;
  v8, v18, v19, v20, v21, v22, v23, v24;
  if (v10)
  {

    return 0;
  }

  v40 = sub_1BE052434();
  v42 = v41;
  v44 = sub_1BE052434();
  v45 = v40;
  v46 = v43;
  if (v45 == v44 && v42 == v43)
  {

    v42, v63, v64, v65, v66, v67, v68, v69;
    v46, v70, v71, v72, v73, v74, v75, v76;
    return 1;
  }

  else
  {
    v48 = sub_1BE053B84();
    v42, v49, v50, v51, v52, v53, v54, v55;
    v46, v56, v57, v58, v59, v60, v61, v62;
    if (v48)
    {

      return 1;
    }

    else
    {
      v77 = sub_1BE052434();
      v79 = v78;
      v81 = sub_1BE052434();
      v82 = v77;
      v83 = v80;
      if (v82 == v81 && v79 == v80)
      {

        v79, v84, v85, v86, v87, v88, v89, v90;
        v83, v91, v92, v93, v94, v95, v96, v97;
        return 2;
      }

      else
      {
        v98 = sub_1BE053B84();
        v79, v99, v100, v101, v102, v103, v104, v105;
        v83, v106, v107, v108, v109, v110, v111, v112;
        if (v98)
        {

          return 2;
        }

        else
        {
          v113 = sub_1BE052434();
          v115 = v114;
          v117 = sub_1BE052434();
          v118 = v113;
          v119 = v116;
          if (v118 == v117 && v115 == v116)
          {

            v115, v120, v121, v122, v123, v124, v125, v126;
            v119, v127, v128, v129, v130, v131, v132, v133;
            return 3;
          }

          else
          {
            v134 = sub_1BE053B84();
            v115, v135, v136, v137, v138, v139, v140, v141;
            v119, v142, v143, v144, v145, v146, v147, v148;
            if (v134)
            {

              return 3;
            }

            else
            {
              v149 = sub_1BE052434();
              v151 = v150;
              v153 = sub_1BE052434();
              v154 = v149;
              v155 = v152;
              if (v154 == v153 && v151 == v152)
              {

                v151, v156, v157, v158, v159, v160, v161, v162;
                v155, v163, v164, v165, v166, v167, v168, v169;
                return 4;
              }

              else
              {
                v170 = sub_1BE053B84();

                v151, v171, v172, v173, v174, v175, v176, v177;
                v155, v178, v179, v180, v181, v182, v183, v184;
                if (v170)
                {
                  return 4;
                }

                else
                {
                  return 5;
                }
              }
            }
          }
        }
      }
    }
  }
}

id FinanceKitSpendingSummaryDataProviderWrapper.__allocating_init(accountIdentifier:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = objc_allocWithZone(v2);
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = objc_allocWithZone(v2);
  v12(v7, v10, v4);
  type metadata accessor for FinanceKitSpendingSummaryDataProvider(0);
  swift_allocObject();
  sub_1BD9FD7C4(v7);
  *&v13[OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider] = v14;
  v18.receiver = v13;
  v18.super_class = v2;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = *(v5 + 8);
  v16(a1, v4);
  v16(v10, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

id FinanceKitSpendingSummaryDataProviderWrapper.init(accountIdentifier:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(v4 + 16);
  v11(&v17 - v9, a1, v3, v8);
  v12 = objc_allocWithZone(ObjectType);
  (v11)(v6, v10, v3);
  type metadata accessor for FinanceKitSpendingSummaryDataProvider(0);
  swift_allocObject();
  sub_1BD9FD7C4(v6);
  *&v12[OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider] = v13;
  v17.receiver = v12;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = *(v4 + 8);
  v15(a1, v3);
  v15(v10, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t FinanceKitSpendingSummaryDataProviderWrapper.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider);
  v4 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID;
  v5 = sub_1BE04AFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t FinanceKitSpendingSummaryDataProviderWrapper.startAndCacheCurrentlySelectedSpendingSummary()()
{
  v1[2] = v0;
  v2 = sub_1BE04B2D4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD36D958, 0, 0);
}

uint64_t sub_1BD36D958()
{
  v0[13] = *(v0[2] + OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1BD36D9F8;

  return sub_1BD9FDE08();
}

uint64_t sub_1BD36D9F8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 104);

    return MEMORY[0x1EEE6DFA0](sub_1BD36DB78, v6, 0);
  }
}

uint64_t sub_1BD36DB78()
{
  v1 = *(v0 + 104);
  *(v0 + 168) = sub_1BD9FBA80();

  return MEMORY[0x1EEE6DFA0](sub_1BD36DBE4, v1, 0);
}

uint64_t sub_1BD36DBE4()
{
  v1 = (v0[13] + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v2 = *v1;
  v0[15] = *v1;
  v3 = v1[1];
  v0[16] = v3;
  v4 = v1[2];
  v0[17] = v4;
  sub_1BD298E60(v2, v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1BD36DC74, 0, 0);
}

uint64_t sub_1BD36DC74(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 120);
  if (!*(v8 + 168))
  {
    if (v9)
    {
      v12 = *(v8 + 136);
      v13 = *(v8 + 80);
      *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
      v12, v14, v15, v16, v17, v18, v19, v20;
      v21 = *(v9 + 16);
      if (v21 >= 2)
      {
        v22 = v21 - 2;
      }

      else
      {
        v22 = 0;
      }

      v23 = v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      result = *(v8 + 120);
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v10 = v8 + 128;
  if (*(v8 + 168) == 1)
  {
    v11 = (v8 + 136);
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v11 = (v8 + 128);
  v10 = v8 + 136;
  if (!v9)
  {
LABEL_18:

    v34 = *(v8 + 8);

    return v34();
  }

LABEL_11:
  v25 = *v11;
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  v25, v26, v27, v28, v29, v30, v31, v32;
  result = *v10;
  v21 = *(*v10 + 16);
  if (v21 >= 2)
  {
    v22 = v21 - 2;
  }

  else
  {
    v22 = 0;
  }

  if (!result)
  {
    goto LABEL_18;
  }

  v33 = *(*(v8 + 80) + 80);
  v23 = result + ((v33 + 32) & ~v33);
LABEL_16:
  *(v8 + 144) = result;
  if (v22 == v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  if (v21 <= v22)
  {
    __break(1u);
  }

  else
  {
    v35 = *(v8 + 88);
    v36 = *(v8 + 72);
    v37 = *(v8 + 80);
    v38 = *(v8 + 64);
    v39 = *(v37 + 72);
    sub_1BD36E78C(v23 + v39 * (v21 - 1), *(v8 + 96));
    v40 = *(v37 + 56);
    v40(v38, 1, 1, v36);
    sub_1BD36E78C(v23 + v39 * v22, v35);
    sub_1BE04AF64();
    sub_1BD36E7FC();
    if (sub_1BE052334() & 1) != 0 && (sub_1BE052334())
    {
      sub_1BD0DE53C(*(v8 + 88), &qword_1EBD38DB8, &unk_1BE0BD340);
    }

    else
    {
      v41 = *(v8 + 88);
      v43 = *(v8 + 64);
      v42 = *(v8 + 72);
      sub_1BD0DE53C(v43, &qword_1EBD402D0, &unk_1BE0C7D50);
      sub_1BD36E854(v41, v43);
      v40(v43, 0, 1, v42);
    }

    v44 = *(v8 + 24);
    v45 = *(v8 + 32);
    v47 = *(v8 + 40);
    v46 = *(v8 + 48);
    (*(v45 + 104))(v47, **(&unk_1E800FA30 + *(v8 + 168)), v44);
    (*(v45 + 32))(v46, v47, v44);
    v48 = swift_task_alloc();
    *(v8 + 152) = v48;
    *v48 = v8;
    v48[1] = sub_1BD36DFC8;
    v49 = *(v8 + 96);
    v50 = *(v8 + 56);
    v51 = *(v8 + 64);
    v52 = *(v8 + 48);

    return sub_1BD9FC674(v50, v49, v51, v52);
  }

  return result;
}

uint64_t sub_1BD36DFC8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1BD36E22C;
  }

  else
  {
    sub_1BD36E8C4(*(v2 + 56));
    v6 = sub_1BD36E148;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BD36E148()
{
  v1 = v0[12];
  v2 = v0[8];
  swift_unknownObjectRelease();
  sub_1BD0DE53C(v2, &qword_1EBD402D0, &unk_1BE0C7D50);
  sub_1BD0DE53C(v1, &qword_1EBD38DB8, &unk_1BE0BD340);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD36E22C()
{
  v1 = v0[12];
  v2 = v0[8];
  swift_unknownObjectRelease();
  sub_1BD0DE53C(v2, &qword_1EBD402D0, &unk_1BE0C7D50);
  sub_1BD0DE53C(v1, &qword_1EBD38DB8, &unk_1BE0BD340);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD36E484(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BD36E52C;

  return FinanceKitSpendingSummaryDataProviderWrapper.startAndCacheCurrentlySelectedSpendingSummary()();
}

uint64_t sub_1BD36E52C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1BE04A844();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id FinanceKitSpendingSummaryDataProviderWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitSpendingSummaryDataProviderWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD36E78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD36E7FC()
{
  result = qword_1EBD3E460;
  if (!qword_1EBD3E460)
  {
    sub_1BE04AF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E460);
  }

  return result;
}

uint64_t sub_1BD36E854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD36E8C4(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD36E95C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD36E484(v2, v3);
}

id sub_1BD36EA34@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v113 = a3;
  v112 = sub_1BE04BD74();
  v6 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v102 - v9;
  type metadata accessor for PhoneNumbers(0);
  sub_1BD36EFC0();
  v11 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v11, v20, v21, v22, v23, v24, v25, v26;
  v27 = v119;
  v110 = v120;
  v28 = sub_1BE04E964();
  v29 = swift_getKeyPath();
  sub_1BE04E974();
  v29, v30, v31, v32, v33, v34, v35, v36;
  v28, v37, v38, v39, v40, v41, v42, v43;
  v44 = v116;
  v45 = v117;
  v106 = v118;
  v46 = swift_getKeyPath();
  v47 = swift_getKeyPath();
  sub_1BE04D8B4(&v115);
  v46, v48, v49, v50, v51, v52, v53, v54;
  v47, v55, v56, v57, v58, v59, v60, v61;
  v69 = v115;
  if (v115 >> 62)
  {
    result = sub_1BE053704();
  }

  else
  {
    result = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v112;
  v108 = v44;
  v109 = v27;
  v107 = v45;
  if (result)
  {
    if ((v69 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x1BFB40900](0, v69);
    }

    else
    {
      if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v72 = *(v69 + 32);
    }

    v105 = v72;
    v69, v73, v74, v75, v76, v77, v78, v79;
  }

  else
  {
    v69, v62, v63, v64, v65, v66, v67, v68;
    v105 = 0;
  }

  v80 = swift_allocObject();
  *(v80 + 16) = sub_1BD36F018;
  *(v80 + 24) = a2;
  v81 = *MEMORY[0x1E69B8068];
  v82 = *(v6 + 104);
  v82(v10, v81, v71);
  v83 = v113;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v84 = v71;
  v85 = result;
  v104 = sub_1BE04B6F4();
  v103 = v86;

  v87 = *(v6 + 8);
  v87(v10, v84);
  v88 = v111;
  v82(v111, v81, v84);
  result = PKPassKitBundle();
  if (result)
  {
    v89 = result;
    v90 = v88;
    v91 = sub_1BE04B6F4();
    v93 = v92;

    v87(v90, v84);
    v94 = v107;
    *(a4 + 24) = v108;
    *(a4 + 32) = v94;
    *(a4 + 40) = v106;
    v114 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FB8, &unk_1BE0D4ED0);
    sub_1BE051694();
    v95 = *(&v115 + 1);
    *(a4 + 120) = v115;
    *(a4 + 128) = v95;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FC0, &qword_1BE0CF140);
    v97 = *(v96 + 92);
    *(a4 + v97) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
    swift_storeEnumTagMultiPayload();
    v98 = *(v96 + 96);
    v114 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FC8, &qword_1BE0CF180);
    sub_1BE051694();
    *(a4 + v98) = v115;
    result = sub_1BE04E284();
    *a4 = v109;
    *(a4 + 8) = v110;
    v99 = v104;
    *(a4 + 48) = v105;
    *(a4 + 56) = sub_1BD36F034;
    v100 = v113;
    *(a4 + 64) = v80;
    *(a4 + 72) = v100;
    *(a4 + 80) = 1;
    v101 = v103;
    *(a4 + 88) = v99;
    *(a4 + 96) = v101;
    *(a4 + 104) = v91;
    *(a4 + 112) = v93;
    *(a4 + 136) = 1;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1BD36EF34(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

unint64_t sub_1BD36EFC0()
{
  result = qword_1EBD3A700;
  if (!qword_1EBD3A700)
  {
    type metadata accessor for PhoneNumbers(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A700);
  }

  return result;
}

unint64_t sub_1BD36F060()
{
  result = qword_1EBD42FD0;
  if (!qword_1EBD42FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42FC0, &qword_1BE0CF140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42FD0);
  }

  return result;
}

uint64_t _s11BillPaymentVMa(uint64_t a1)
{
  result = qword_1EBD42FD8;
  if (!qword_1EBD42FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD36F138(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BD36F1CC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD36F1CC(uint64_t a1)
{
  if (!qword_1EBD42FE8)
  {
    _s15PaymentDateInfoVMa(255);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD42FE8);
    }
  }
}

id sub_1BD36F228@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 merchantName];
  if (result)
  {
    v5 = result;
    v6 = sub_1BE052434();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
    v9 = [a1 transactionAmount];
    v10 = [a1 currencyCode];
    v11 = PKFormattedCurrencyStringFromNumber();

    if (v11)
    {
      v12 = sub_1BE052434();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = [a1 transactionAmount];
    v16 = [objc_opt_self() zero];
    v24 = v16;
    if (v15)
    {
      if (!v16)
      {

        goto LABEL_13;
      }

      sub_1BD1973C4();
      v25 = sub_1BE053074();

      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (v16)
    {

LABEL_13:
      a2[2] = v12;
      a2[3] = v14;
      v26 = _s11BillPaymentVMa(0);
      return sub_1BD15F6A4(a1, a2 + *(v26 + 24));
    }

    v14, v17, v18, v19, v20, v21, v22, v23;
    v12 = 0;
    v14 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

BOOL sub_1BD36F3C4(void *a1, void *a2)
{
  v4 = _s15PaymentDateInfoVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510, &qword_1BE0D4430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD42FF0, &qword_1BE0CF208);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = *(_s11BillPaymentVMa(0) + 24);
  v17 = *(v11 + 48);
  sub_1BD36F6AC(a1 + v16, v13);
  sub_1BD36F6AC(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1BD36F6AC(v13, v10);
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1BD36F71C(v10);
      goto LABEL_15;
    }

    sub_1BD160130(&v13[v17], v7);
    v20 = sub_1BD15FA30(v10, v7);
    sub_1BD36F71C(v7);
    sub_1BD36F71C(v10);
    sub_1BD0DE53C(v13, &qword_1EBD45510, &qword_1BE0D4430);
    return v20;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
LABEL_15:
    sub_1BD0DE53C(v13, &unk_1EBD42FF0, &qword_1BE0CF208);
    return 0;
  }

  sub_1BD0DE53C(v13, &qword_1EBD45510, &qword_1BE0D4430);
  return 1;
}

uint64_t sub_1BD36F6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510, &qword_1BE0D4430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD36F71C(uint64_t a1)
{
  v2 = _s15PaymentDateInfoVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static Color.peerPayment(_:)(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() clearColor];
  v3 = v1 >> 13;
  if (v1 >> 13 <= 1)
  {
LABEL_7:
    if (v3)
    {
LABEL_19:
      v7 = objc_opt_self();
      if ((v1 & 1) == 0)
      {
LABEL_31:
        v6 = [v7 secondaryButtonTextPressedColor];
        if (v6)
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_33;
      }

      if ([v7 secondaryButtonTextColor])
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_22;
    }

    v5 = objc_opt_self();
    if ((v1 & 1) == 0)
    {
LABEL_29:
      v7 = [v5 platterPressedColor];
      if (v7)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_31;
    }

    if ([v5 platterColor])
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v3 == 2)
  {
LABEL_11:
    if ((v1 & 0x100) != 0)
    {
LABEL_22:
      v4 = [objc_opt_self() bubbleBackgroundWatchColor];
      if (v4)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_24;
    }

    v6 = objc_opt_self();
    if ((v1 & 1) == 0)
    {
LABEL_33:
      if ([v6 bubbleBackgroundColor])
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_35;
    }

    if ([v6 bubbleBackgroundInvalidColor])
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_15:
    if (v1 > 24831)
    {
      goto LABEL_26;
    }

    if (v1 != 24576)
    {
LABEL_35:
      if ([objc_opt_self() separatorColor])
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_37;
    }

    if ([objc_opt_self() backgroundColor])
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_19;
  }

  v4 = objc_opt_self();
  if (v1 == 0x8000)
  {
    if ([v4 disabledTextColor])
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_24:
  if ([v4 primaryNavigationTintColor])
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_26:
  if (v1 == 24832)
  {
    v5 = [objc_opt_self() primaryTextColor];
    if (v5)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_37:
  result = [objc_opt_self() secondaryTextColor];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_38:

  return sub_1BE0511C4();
}

uint64_t _s16PeerPaymentColorOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 49156 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49156 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49156;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49156;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49156;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 13) | (8 * ((*a1 >> 2) & 0x780 | (*a1 >> 1)))) ^ 0x3FFF;
  if (v6 >= 0x3FFB)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *_s16PeerPaymentColorOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49156 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49156 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 2 >= 0xFFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 2 > 0xFFE)
  {
    v6 = ((a2 - 16380) >> 16) + 1;
    *result = a2 - 16380;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1BD36FB84(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 13;
  v3 = (v1 & 1 | (4 * (v1 >> 13)) | (v1 >> 7) & 2) - 9;
  if (v2 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

_WORD *sub_1BD36FBC0(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x101 | (a2 << 13);
  }

  else
  {
    *result = (((a2 - 3) << 7) & 0x100 | (a2 - 3) & 1 | (((a2 - 3) >> 2) << 13)) + 24576;
  }

  return result;
}

id sub_1BD36FC80(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___PKTileImagePreviewViewController_imageView;
  *&v3[OBJC_IVAR___PKTileImagePreviewViewController_imageView] = 0;
  v13 = OBJC_IVAR___PKTileImagePreviewViewController_scrollView;
  *&v3[OBJC_IVAR___PKTileImagePreviewViewController_scrollView] = 0;
  v14 = [a1 image];
  if (!v14)
  {

    a3, v53, v54, v55, v56, v57, v58, v59;
    swift_deallocPartialClassInstance();
    return 0;
  }

  v63 = a1;
  *&v3[OBJC_IVAR___PKTileImagePreviewViewController_image] = v14;
  v66.receiver = v3;
  v66.super_class = ObjectType;
  v15 = v14;
  v16 = objc_msgSendSuper2(&v66, sel_initWithNibName_bundle_, 0, 0);
  [v16 setEdgesForExtendedLayout_];
  v17 = [v16 navigationItem];
  v18 = sub_1BE052404();
  a3, v19, v20, v21, v22, v23, v24, v25;
  [v17 setTitle_];

  [v17 _setPreferredNavigationBarVisibility_];
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80D8], v7);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    sub_1BE04B6F4();
    v29 = v28;

    (*(v8 + 8))(v11, v7);
    v65 = ObjectType;
    v64[0] = v16;
    v30 = v16;
    v31 = sub_1BE052404();
    v29, v32, v33, v34, v35, v36, v37, v38;
    v39 = v65;
    if (v65)
    {
      v40 = __swift_project_boxed_opaque_existential_1(v64, v65);
      v41 = *(v39 - 8);
      v42 = MEMORY[0x1EEE9AC00](v40);
      v44 = &v62 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v44, v42);
      v45 = sub_1BE053B74();
      (*(v41 + 8))(v44, v39);
      __swift_destroy_boxed_opaque_existential_0(v64, v46, v47, v48, v49, v50, v51, v52);
    }

    else
    {
      v45 = 0;
    }

    v60 = v63;
    v61 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v31 style:0 target:v45 action:sel_close];

    swift_unknownObjectRelease();
    [v17 setRightBarButtonItem_];

    return v30;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TileImagePreviewViewController.loadView()()
{
  v67.receiver = v0;
  v67.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v67, sel_loadView);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor_];

  v5 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  v6 = OBJC_IVAR___PKTileImagePreviewViewController_scrollView;
  v7 = *&v0[OBJC_IVAR___PKTileImagePreviewViewController_scrollView];
  *&v0[OBJC_IVAR___PKTileImagePreviewViewController_scrollView] = v5;
  v8 = v5;

  if (!v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = [v0 view];
  if (!v9)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  v19 = *&v0[v6];
  if (!v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v19 setDelegate_];
  v20 = *&v0[v6];
  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v20 setMaximumZoomScale_];
  v21 = *&v0[v6];
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v21 setMinimumZoomScale_];
  v22 = *&v0[v6];
  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v22 setBouncesZoom_];
  v23 = *&v0[v6];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v3 clearColor];
  [v24 setBackgroundColor_];

  v26 = *&v0[v6];
  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v28 = v0;
  v29 = v26;
  v30 = [v27 initWithTarget:v28 action:sel_tapped_];
  [v29 addGestureRecognizer_];

  v31 = [objc_allocWithZone(MEMORY[0x1E69DCFC8]) initWithTarget:v28 action:sel_swiped_];
  [v31 setDirection_];
  v32 = *&v0[v6];
  if (!v32)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v32 addGestureRecognizer_];
  v33 = *&v0[v6];
  if (!v33)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v34 = *&v28[OBJC_IVAR___PKTileImagePreviewViewController_image];
  [v33 bounds];
  [v34 pkui:v35 alignmentSizeThatFits:v36];
  v37 = *&v0[v6];
  if (!v37)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v37 bounds];
  v39 = v38;
  v41 = v40;
  v43.n128_u64[0] = v42;
  v45 = v44;
  v46.n128_u64[0] = v65;
  v47.n128_u64[0] = v66;
  v48.n128_u64[0] = v39;
  v49.n128_u64[0] = v41;
  v50.n128_u64[0] = v43.n128_u64[0];
  v51.n128_u64[0] = v45;
  PKSizeAlignedInRect(0x100000001, v46, v47, v48, v49, v50, v51, v43);
  v56 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v57 = OBJC_IVAR___PKTileImagePreviewViewController_imageView;
  v58 = *&v28[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  *&v28[OBJC_IVAR___PKTileImagePreviewViewController_imageView] = v56;
  v59 = v56;

  if (!v59)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v59 setImage_];

  v60 = *&v28[v57];
  if (!v60)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v60 setAutoresizingMask_];
  v61 = *&v28[v57];
  if (!v61)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v61 setContentMode_];
  v62 = *&v0[v6];
  if (!v62)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!*&v28[v57])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v62 addSubview_];
  v63 = [v28 view];
  if (!v63)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (*&v0[v6])
  {
    v64 = v63;
    [v63 addSubview_];

    return;
  }

LABEL_39:
  __break(1u);
}

Swift::Void __swiftcall TileImagePreviewViewController.scrollViewDidZoom(_:)(UIScrollView *a1)
{
  [(UIScrollView *)a1 zoomScale];
  v3 = v2;
  v4 = [v1 navigationController];
  if (v3 < 1.0)
  {
    if (v4)
    {
      v8 = v4;
      [v4 setNavigationBarHidden:1 animated:1];
    }

    v5 = OBJC_IVAR___PKTileImagePreviewViewController_scrollView;
    v6 = *&v1[OBJC_IVAR___PKTileImagePreviewViewController_scrollView];
    if (v6)
    {
      [v6 removeAllGestureRecognizers];
      v7 = *&v1[v5];
      if (v7)
      {
        [v7 setUserInteractionEnabled_];

        [v1 dismissViewControllerAnimated:1 completion:0];
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

  if (v4)
  {
    v9 = v4;
    if (([v4 isNavigationBarHidden] & 1) == 0)
    {
      [v9 setNavigationBarHidden:1 animated:1];
    }
  }
}

id sub_1BD370B6C()
{
  v1 = OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() blackColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1BD370C20()
{
  v16 = [v0 containerView];
  if (v16)
  {
    v1 = sub_1BD370B6C();
    [v16 bounds];
    [v1 setFrame_];

    v2 = OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView;
    [*&v0[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView] setAlpha_];
    [v16 addSubview_];
    v3 = [v0 presentingViewController];
    v4 = [v3 transitionCoordinator];

    if (v4)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      aBlock[4] = sub_1BD372364;
      v18 = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD370DE8;
      aBlock[3] = &block_descriptor_46_1;
      v6 = _Block_copy(aBlock);
      v7 = v18;
      v8 = v0;
      v7, v9, v10, v11, v12, v13, v14, v15;
      [v4 animateAlongsideTransition:v6 completion:0];
      _Block_release(v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1BD370DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1BE048964();
  v4 = swift_unknownObjectRetain();
  v3(v4);
  v2, v5, v6, v7, v8, v9, v10, v11;

  return swift_unknownObjectRelease();
}

void sub_1BD370EF4()
{
  v1 = [v0 presentingViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = sub_1BD370B6C();
    v4 = [*&v0[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView] superview];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v7 = 0.0;
      v9 = 0.0;
      v11 = 0.0;
      v13 = 0.0;
    }

    [v3 setFrame_];

    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    v25[4] = sub_1BD37235C;
    v26 = v14;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1107296256;
    v25[2] = sub_1BD370DE8;
    v25[3] = &block_descriptor_40_0;
    v15 = _Block_copy(v25);
    v16 = v26;
    v17 = v0;
    v16, v18, v19, v20, v21, v22, v23, v24;
    [v2 animateAlongsideTransition:v15 completion:0];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }
}

void sub_1BD3711E8(id a1)
{
  if (*(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_isPresenting) == 1)
  {
    v8 = [a1 viewControllerForKey_];
    if (v8)
    {
      v3 = [a1 containerView];
      v4 = [v8 view];
      if (v4)
      {
        v5 = v4;
        [v3 insertSubview:v4 atIndex:1];

        v6 = [v8 view];
        if (v6)
        {
          v7 = v6;
          [v6 layoutIfNeeded];

          sub_1BD371370(a1);

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

    [a1 completeTransition_];
  }

  else
  {

    sub_1BD371648(a1);
  }
}

void sub_1BD371370(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  v5 = v4;

  if (v4)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = [v6 view];

    if (v7)
    {
      [v7 bounds];
      v9 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize) / v8;
      v10 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize + 8) / (*(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize + 8) / v9);
      v11 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalCenter);
      v12 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalCenter + 8);
      v13 = v5;
      [v7 layoutMargins];
      [v13 pkui:0 setPosition:v11 animated:v12 - v10 * v14];
      CGAffineTransformMakeScale(&v38, v9, v10);
      [v13 setTransform_];

      [v13 pkui:3 setMaskType:?];
    }

    v15 = objc_opt_self();
    v16 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_springFactory);
    v17 = swift_allocObject();
    *(v17 + 16) = v5;
    *&v38.tx = sub_1BD3722F0;
    *&v38.ty = v17;
    *&v38.a = MEMORY[0x1E69E9820];
    *&v38.b = 1107296256;
    *&v38.c = sub_1BD126964;
    *&v38.d = &block_descriptor_69;
    v18 = _Block_copy(&v38);
    ty = v38.ty;
    v20 = v5;
    *&ty, v21, v22, v23, v24, v25, v26, v27;
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    *&v38.tx = sub_1BD3727AC;
    *&v38.ty = v28;
    *&v38.a = MEMORY[0x1E69E9820];
    *&v38.b = 1107296256;
    *&v38.c = sub_1BD3F08C0;
    *&v38.d = &block_descriptor_22_0;
    v29 = _Block_copy(&v38);
    v30 = v38.ty;
    swift_unknownObjectRetain();
    *&v30, v31, v32, v33, v34, v35, v36, v37;
    [v15 pkui:v16 animateUsingFactory:0 withDelay:v18 options:v29 animations:0.0 completion:?];

    _Block_release(v29);
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD371648(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  v5 = v4;

  if (v4)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = [v6 view];

    if (v7)
    {
      v8 = v5;
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v8 superview];
      [v7 convertRect:v17 fromView:{v10, v12, v14, v16}];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      [v8 setFrame_];
      v26 = [v8 image];
      if (v26)
      {
        v27 = v26;
        [v26 size];
        v29 = v28;
        [v27 size];
        v31 = v29 / v30;
        [v8 frame];
        v33 = v32;
        [v8 frame];
        v35 = v31 * v34;
        [v8 frame];
        v37 = v36;
        v39 = v38;
        v41.n128_u64[0] = v40;
        v43 = v42;
        v44.n128_u64[0] = v33;
        v45.n128_f64[0] = v35;
        v46.n128_u64[0] = v37;
        v47.n128_u64[0] = v39;
        v48.n128_u64[0] = v41.n128_u64[0];
        v49.n128_u64[0] = v43;
        PKSizeAlignedInRect(0x100000001, v44, v45, v46, v47, v48, v49, v41);
        [v8 setFrame_];
      }

      [v7 addSubview_];
      [v7 bounds];
      CGAffineTransformMakeScale(&aBlock, *&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize] / v50, *&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize + 8] / (*&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize + 8] / (*&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize] / v50)));
      v77 = *&aBlock.a;
      v78 = *&aBlock.c;
      tx = aBlock.tx;
      ty = aBlock.ty;
    }

    else
    {
      v78 = xmmword_1BE0CF250;
      v77 = xmmword_1BE0CF260;
      tx = 0.0;
      ty = 0.0;
    }

    v53 = objc_opt_self();
    v54 = *&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_springFactory];
    v55 = swift_allocObject();
    *(v55 + 16) = v5;
    *(v55 + 40) = v78;
    *(v55 + 24) = v77;
    *(v55 + 56) = tx;
    *(v55 + 64) = ty;
    *(v55 + 72) = v1;
    *&aBlock.tx = sub_1BD3722F8;
    *&aBlock.ty = v55;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1BD126964;
    *&aBlock.d = &block_descriptor_28_1;
    v56 = _Block_copy(&aBlock);
    v57 = aBlock.ty;
    v58 = v5;
    v59 = v1;
    *&v57, v60, v61, v62, v63, v64, v65, v66;
    v67 = swift_allocObject();
    *(v67 + 16) = a1;
    *&aBlock.tx = sub_1BD372308;
    *&aBlock.ty = v67;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1BD3F08C0;
    *&aBlock.d = &block_descriptor_34;
    v68 = _Block_copy(&aBlock);
    v69 = aBlock.ty;
    swift_unknownObjectRetain();
    *&v69, v70, v71, v72, v73, v74, v75, v76;
    [v53 pkui:v54 animateUsingFactory:0 withDelay:v56 options:v68 animations:0.0 completion:?];

    _Block_release(v68);
    _Block_release(v56);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD371AA8(void *a1)
{
  v13[0] = 0x3FF0000000000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x3FF0000000000000;
  v13[4] = 0;
  v13[5] = 0;
  [a1 setTransform_];
  v2 = [a1 superview];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
    v9 = 0.0;
    v11 = 0.0;
  }

  [a1 setFrame_];
  return [a1 pkui:0 setMaskType:?];
}

id sub_1BD371B88(void *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  [a1 setTransform_];
  [a1 setCenter_];
  return [a1 pkui:3 setMaskType:?];
}

id TileImagePreviewViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
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

void _s9PassKitUI30TileImagePreviewViewControllerC7present05imageG05title10presentingySo07UIImageG0C_SSSo06UIViewH0CtFZ_0(void *a1, uint64_t a2, void *a3, void *a4)
{
  objc_allocWithZone(type metadata accessor for TileImagePreviewViewController());
  sub_1BE048C84();
  v8 = a1;
  v9 = sub_1BD36FC80(v8, a2, a3);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
    [v11 setModalPresentationStyle_];
    v12 = type metadata accessor for TileImagePreviewViewController.ImagePreviewScaleModalTransitionController();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalCenter];
    *v14 = 0;
    *(v14 + 1) = 0;
    v14[16] = 1;
    v15 = &v13[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalSize];
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = 1;
    swift_unknownObjectUnownedInit();
    *&v13[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_sourceImageView] = v8;
    v16 = &v13[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_title];
    *v16 = a2;
    *(v16 + 1) = a3;
    v39.receiver = v13;
    v39.super_class = v12;
    sub_1BE048C84();
    v17 = v8;
    v18 = objc_msgSendSuper2(&v39, sel_init);
    [v11 setTransitioningDelegate_];

    v19 = v11;
    v20 = [v19 navigationBar];
    v21 = objc_opt_self();
    v22 = [v21 blackColor];
    [v20 setBarTintColor_];

    v23 = [v19 navigationBar];
    v24 = [v21 whiteColor];
    [v23 setTintColor_];

    v25 = [v19 navigationBar];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8, &unk_1BE0F47B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v27 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v28 = v27;
    v29 = [v21 whiteColor];
    *(inited + 64) = sub_1BD1F2290();
    *(inited + 40) = v29;
    v30 = sub_1BD1ACD28(inited);
    swift_setDeallocating();
    sub_1BD3726C0(inited + 32);
    type metadata accessor for Key(0);
    sub_1BD372728();
    v31 = sub_1BE052224();
    v30, v32, v33, v34, v35, v36, v37, v38;
    [v25 setTitleTextAttributes_];

    [a4 presentViewController:v19 animated:1 completion:0];
  }
}

id sub_1BD372104()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 setNavigationBarHidden:1 animated:1];
  }

  v3 = OBJC_IVAR___PKTileImagePreviewViewController_scrollView;
  result = *&v0[OBJC_IVAR___PKTileImagePreviewViewController_scrollView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  [result removeAllGestureRecognizers];
  result = *&v0[v3];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [result setUserInteractionEnabled_];

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

uint64_t _s9PassKitUI30TileImagePreviewViewControllerC14viewForZooming2inSo6UIViewCSgSo08UIScrollG0C_tF_0()
{
  if ([v0 isBeingDismissed])
  {
    return 0;
  }

  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isBeingDismissed];

    if (v3)
    {
      return 0;
    }
  }

  v4 = *&v0[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  if (!v4)
  {
    return 0;
  }

  v5 = *&v0[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  v6 = v4;
  return v5;
}

id sub_1BD37230C()
{
  v1 = *(v0 + 16);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition_];
}

void sub_1BD37236C(double a1)
{
  v2 = sub_1BD370B6C();
  [v2 setAlpha_];
}

id sub_1BD3723CC()
{
  v1 = *(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_sourceImageView);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    [v1 center];
    [v3 convertPoint:0 toView:?];
    v23 = v4;
    v24 = v5;

    *&v6 = v23;
    *(&v6 + 1) = v24;
  }

  else
  {
    v6 = 0uLL;
  }

  v7 = (v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalCenter);
  *v7 = v6;
  *(v7 + 16) = 0;
  [v1 bounds];
  v9 = v8;
  v11 = v10;
  v12 = v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalSize;
  *v12 = v8;
  *(v12 + 8) = v10;
  *(v12 + 16) = 0;
  result = swift_unknownObjectUnownedLoadStrong();
  if (v7[2])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v16 = *v7;
    v15 = v7[1];
    v17 = type metadata accessor for TileImagePreviewViewController.ImagePreviewScaleModalAnimationAnimatedTransitioninHandler();
    v18 = objc_allocWithZone(v17);
    v19 = OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_springFactory;
    *&v18[v19] = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
    swift_unknownObjectUnownedInit();
    v20 = &v18[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalCenter];
    *v20 = v16;
    v20[1] = v15;
    v21 = &v18[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize];
    *v21 = v9;
    v21[1] = v11;
    v18[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_isPresenting] = 1;
    v25.receiver = v18;
    v25.super_class = v17;
    v22 = objc_msgSendSuper2(&v25, sel_init);

    return v22;
  }

  return result;
}

id sub_1BD372588()
{
  result = swift_unknownObjectUnownedLoadStrong();
  v2 = (v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalCenter);
  if (*(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalCenter + 16))
  {
    __break(1u);
  }

  else
  {
    v3 = (v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalSize);
    if ((*(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalSize + 16) & 1) == 0)
    {
      v4 = result;
      v6 = *v3;
      v5 = v3[1];
      v8 = *v2;
      v7 = v2[1];
      v9 = type metadata accessor for TileImagePreviewViewController.ImagePreviewScaleModalAnimationAnimatedTransitioninHandler();
      v10 = objc_allocWithZone(v9);
      v11 = OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_springFactory;
      *&v10[v11] = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
      swift_unknownObjectUnownedInit();
      v12 = &v10[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalCenter];
      *v12 = v8;
      v12[1] = v7;
      v13 = &v10[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize];
      *v13 = v6;
      v13[1] = v5;
      v10[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_isPresenting] = 0;
      v15.receiver = v10;
      v15.super_class = v9;
      v14 = objc_msgSendSuper2(&v15, sel_init);

      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3726C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF68, &unk_1BE0CF350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD372728()
{
  result = qword_1EBD37B80;
  if (!qword_1EBD37B80)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37B80);
  }

  return result;
}

uint64_t sub_1BD3727C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3729B8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD372824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3729B8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD372888(uint64_t a1)
{
  sub_1BD3729B8();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD3728B4()
{
  result = qword_1EBD43108;
  if (!qword_1EBD43108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43108);
  }

  return result;
}

unint64_t sub_1BD37290C()
{
  result = qword_1EBD43110;
  if (!qword_1EBD43110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43110);
  }

  return result;
}

unint64_t sub_1BD372964()
{
  result = qword_1EBD43118;
  if (!qword_1EBD43118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43118);
  }

  return result;
}

unint64_t sub_1BD3729B8()
{
  result = qword_1EBD43120;
  if (!qword_1EBD43120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43120);
  }

  return result;
}

uint64_t sub_1BD372A38@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v239 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930, &qword_1BE0C4008);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v240 = &v220 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v237 = &v220 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43138, &qword_1BE0CF5C0);
  MEMORY[0x1EEE9AC00](v7);
  v238 = &v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v243 = (&v220 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43140, &qword_1BE0CF5C8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v220 - v13;
  v232 = sub_1BE051994();
  v15 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v230 = &v220 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43148, &qword_1BE0CF5D0);
  MEMORY[0x1EEE9AC00](v228);
  v18 = &v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v229 = &v220 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v234 = &v220 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43150, &qword_1BE0CF5D8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v233 = &v220 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v231 = &v220 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43158, &qword_1BE0CF5E0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v236 = &v220 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v241 = a1;
  v242 = &v220 - v31;
  v32 = a1[2];
  v235 = a1[3];
  v33 = a1[7];
  if (v33)
  {
    *&v251 = v241[6];
    *(&v251 + 1) = v33;
    sub_1BD0DDEBC();
    v223 = v18;
    sub_1BE048C84();
    v34 = sub_1BE0506C4();
    v36 = v35;
    v227 = v7;
    v38 = v37;
    v225 = v11;
    v40 = v39;
    v41 = sub_1BE0502A4();
    v224 = v12;
    v42 = v41;
    v43 = sub_1BE0505F4();
    v221 = v15;
    v222 = v14;
    v45 = v44;
    v226 = v32;
    v47 = v46;
    v49 = v48;
    v42, v44, v46, v48, v50, v51, v52, v53;
    sub_1BD0DDF10(v34, v36, (v38 & 1), v54, v55, v56, v57, v58);
    v40, v59, v60, v61, v62, v63, v64, v65;
    v66 = sub_1BE051234();
    v67 = sub_1BE050564();
    v69 = v68;
    LOBYTE(v42) = v70;
    v72 = v71;
    v66, v68, v70, v71, v73, v74, v75, v76;
    sub_1BD0DDF10(v43, v45, (v47 & 1), v77, v78, v79, v80, v81);
    v49, v82, v83, v84, v85, v86, v87, v88;
    KeyPath = swift_getKeyPath();
    LOBYTE(v43) = sub_1BE050224();
    sub_1BE04E1F4();
    v245 = v42 & 1;
    v244 = 0;
    *&v251 = v67;
    *(&v251 + 1) = v69;
    LOBYTE(v252) = v42 & 1;
    *(&v252 + 1) = v72;
    *&v253 = KeyPath;
    BYTE8(v253) = 0;
    LOBYTE(v254) = v43;
    *(&v254 + 1) = v90;
    *v255 = v91;
    *&v255[8] = v92;
    *&v255[16] = v93;
    v255[24] = 0;
    sub_1BE052434();
    v95 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43170, &qword_1BE1054E0);
    sub_1BD373AC4();
    v96 = v231;
    sub_1BE050DE4();
    v95, v97, v98, v99, v100, v101, v102, v103;
    v248 = v253;
    v249 = v254;
    v250[0] = *v255;
    *(v250 + 9) = *&v255[9];
    v246 = v251;
    v247 = v252;
    sub_1BD0DE53C(&v246, &qword_1EBD43170, &qword_1BE1054E0);
    v104 = v230;
    sub_1BE051984();
    sub_1BE051CE4();
    sub_1BE04EE54();
    v105 = v229;
    (*(v221 + 32))(v229, v104, v232);
    v106 = &v105[*(v228 + 36)];
    v107 = *&v255[16];
    *(v106 + 4) = *v255;
    *(v106 + 5) = v107;
    *(v106 + 6) = v256;
    v108 = v252;
    *v106 = v251;
    *(v106 + 1) = v108;
    v109 = v254;
    *(v106 + 2) = v253;
    *(v106 + 3) = v109;
    v110 = v105;
    v111 = v234;
    sub_1BD0DE204(v110, v234, &qword_1EBD43148, &qword_1BE0CF5D0);
    v112 = v233;
    sub_1BD0DE19C(v96, v233, &qword_1EBD43150, &qword_1BE0CF5D8);
    v113 = v223;
    sub_1BD0DE19C(v111, v223, &qword_1EBD43148, &qword_1BE0CF5D0);
    v114 = v222;
    sub_1BD0DE19C(v112, v222, &qword_1EBD43150, &qword_1BE0CF5D8);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43180, &qword_1BE0CF630);
    sub_1BD0DE19C(v113, v114 + *(v115 + 48), &qword_1EBD43148, &qword_1BE0CF5D0);
    sub_1BD0DE53C(v111, &qword_1EBD43148, &qword_1BE0CF5D0);
    sub_1BD0DE53C(v96, &qword_1EBD43150, &qword_1BE0CF5D8);
    v7 = v227;
    sub_1BD0DE53C(v113, &qword_1EBD43148, &qword_1BE0CF5D0);
    v32 = v226;
    sub_1BD0DE53C(v112, &qword_1EBD43150, &qword_1BE0CF5D8);
    v116 = v242;
    sub_1BD0DE204(v114, v242, &qword_1EBD43140, &qword_1BE0CF5C8);
    (*(v224 + 56))(v116, 0, 1, v225);
  }

  else
  {
    (*(v12 + 56))(v242, 1, 1, v11, v30);
  }

  v117 = sub_1BE04F504();
  v118 = v243;
  *v243 = v117;
  v118[1] = 0;
  *(v118 + 16) = 1;
  v119 = v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43160, &qword_1BE0CF5E8);
  v121 = v119;
  sub_1BD37354C(v241, v119 + *(v120 + 44));
  LOBYTE(v119) = sub_1BE050224();
  sub_1BE04E1F4();
  v122 = v121 + *(v7 + 36);
  *v122 = v119;
  *(v122 + 8) = v123;
  *(v122 + 16) = v124;
  *(v122 + 24) = v125;
  *(v122 + 32) = v126;
  *(v122 + 40) = 0;
  *&v246 = v32;
  *(&v246 + 1) = v235;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v127 = sub_1BE0506C4();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = sub_1BE050454();
  v135 = sub_1BE0505F4();
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v134, v136, v138, v140, v142, v143, v144, v145;
  sub_1BD0DDF10(v127, v129, (v131 & 1), v146, v147, v148, v149, v150);
  v133, v151, v152, v153, v154, v155, v156, v157;
  v158 = sub_1BE051234();
  v159 = sub_1BE050564();
  v161 = v160;
  LOBYTE(v134) = v162;
  v164 = v163;
  v241 = v163;
  v158, v160, v162, v163, v165, v166, v167, v168;
  sub_1BD0DDF10(v135, v137, (v139 & 1), v169, v170, v171, v172, v173);
  v141, v174, v175, v176, v177, v178, v179, v180;
  v181 = swift_getKeyPath();
  *&v246 = v159;
  *(&v246 + 1) = v161;
  v182 = (v134 & 1);
  LOBYTE(v247) = v182;
  *(&v247 + 1) = v164;
  *&v248 = v181;
  BYTE8(v248) = 0;
  sub_1BE052434();
  v184 = v183;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0, &unk_1BE0B8220);
  sub_1BD0FF49C();
  v185 = v237;
  sub_1BE050DE4();
  v184, v186, v187, v188, v189, v190, v191, v192;
  sub_1BD0DDF10(v159, v161, v182, v193, v194, v195, v196, v197);
  v181, v198, v199, v200, v201, v202, v203, v204;
  v241, v205, v206, v207, v208, v209, v210, v211;
  v212 = v242;
  v213 = v236;
  sub_1BD0DE19C(v242, v236, &qword_1EBD43158, &qword_1BE0CF5E0);
  v214 = v243;
  v215 = v238;
  sub_1BD0DE19C(v243, v238, &qword_1EBD43138, &qword_1BE0CF5C0);
  v216 = v240;
  sub_1BD0DE19C(v185, v240, &qword_1EBD3E930, &qword_1BE0C4008);
  v217 = v239;
  sub_1BD0DE19C(v213, v239, &qword_1EBD43158, &qword_1BE0CF5E0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43168, &unk_1BE0CF620);
  sub_1BD0DE19C(v215, v217 + *(v218 + 48), &qword_1EBD43138, &qword_1BE0CF5C0);
  sub_1BD0DE19C(v216, v217 + *(v218 + 64), &qword_1EBD3E930, &qword_1BE0C4008);
  sub_1BD0DE53C(v185, &qword_1EBD3E930, &qword_1BE0C4008);
  sub_1BD0DE53C(v214, &qword_1EBD43138, &qword_1BE0CF5C0);
  sub_1BD0DE53C(v212, &qword_1EBD43158, &qword_1BE0CF5E0);
  sub_1BD0DE53C(v216, &qword_1EBD3E930, &qword_1BE0C4008);
  sub_1BD0DE53C(v215, &qword_1EBD43138, &qword_1BE0CF5C0);
  return sub_1BD0DE53C(v213, &qword_1EBD43158, &qword_1BE0CF5E0);
}

uint64_t sub_1BD37354C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930, &qword_1BE0C4008);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v192 = v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v191 = v187 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v190 = v187 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v194 = v187 - v10;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[4];
  v188 = a1[5];
  v189 = v13;
  v195 = v11;
  v196 = v12;
  v187[1] = sub_1BD0DDEBC();
  sub_1BE048C84();
  v14 = sub_1BE0506C4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_1BE050324();
  v22 = sub_1BE0505F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v21, v23, v25, v27, v29, v30, v31, v32;
  sub_1BD0DDF10(v14, v16, (v18 & 1), v33, v34, v35, v36, v37);
  v20, v38, v39, v40, v41, v42, v43, v44;
  v45 = sub_1BE051224();
  v46 = sub_1BE050564();
  v48 = v47;
  LOBYTE(v16) = v49;
  v51 = v50;
  v45, v47, v49, v50, v52, v53, v54, v55;
  sub_1BD0DDF10(v22, v24, (v26 & 1), v56, v57, v58, v59, v60);
  v28, v61, v62, v63, v64, v65, v66, v67;
  KeyPath = swift_getKeyPath();
  v195 = v46;
  v196 = v48;
  v197 = v16 & 1;
  v198 = v51;
  v199 = KeyPath;
  v200 = 0;
  sub_1BE052434();
  v70 = v69;
  v187[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0, &unk_1BE0B8220);
  sub_1BD0FF49C();
  sub_1BE050DE4();
  v70, v71, v72, v73, v74, v75, v76, v77;
  sub_1BD0DDF10(v46, v48, (v16 & 1), v78, v79, v80, v81, v82);
  KeyPath, v83, v84, v85, v86, v87, v88, v89;
  v51, v90, v91, v92, v93, v94, v95, v96;
  v195 = v189;
  v196 = v188;
  sub_1BE048C84();
  v97 = sub_1BE0506C4();
  v99 = v98;
  LOBYTE(v46) = v100;
  v102 = v101;
  v103 = sub_1BE050324();
  v104 = sub_1BE0505F4();
  v106 = v105;
  LOBYTE(v70) = v107;
  v109 = v108;
  v103, v105, v107, v108, v110, v111, v112, v113;
  sub_1BD0DDF10(v97, v99, (v46 & 1), v114, v115, v116, v117, v118);
  v102, v119, v120, v121, v122, v123, v124, v125;
  v126 = sub_1BE051224();
  v127 = sub_1BE050564();
  v129 = v128;
  LOBYTE(v103) = v130;
  v132 = v131;
  v126, v128, v130, v131, v133, v134, v135, v136;
  sub_1BD0DDF10(v104, v106, (v70 & 1), v137, v138, v139, v140, v141);
  v109, v142, v143, v144, v145, v146, v147, v148;
  v149 = swift_getKeyPath();
  v195 = v127;
  v196 = v129;
  v150 = (v103 & 1);
  v197 = v150;
  v198 = v132;
  v199 = v149;
  v200 = 2;
  sub_1BE052434();
  v152 = v151;
  v153 = v190;
  sub_1BE050DE4();
  v152, v154, v155, v156, v157, v158, v159, v160;
  sub_1BD0DDF10(v127, v129, v150, v161, v162, v163, v164, v165);
  v149, v166, v167, v168, v169, v170, v171, v172;
  v132, v173, v174, v175, v176, v177, v178, v179;
  v180 = v194;
  v181 = v191;
  sub_1BD0DE19C(v194, v191, &qword_1EBD3E930, &qword_1BE0C4008);
  v182 = v192;
  sub_1BD0DE19C(v153, v192, &qword_1EBD3E930, &qword_1BE0C4008);
  v183 = v193;
  sub_1BD0DE19C(v181, v193, &qword_1EBD3E930, &qword_1BE0C4008);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43188, &qword_1BE0CF638);
  v185 = v183 + *(v184 + 48);
  *v185 = 0;
  *(v185 + 8) = 1;
  sub_1BD0DE19C(v182, v183 + *(v184 + 64), &qword_1EBD3E930, &qword_1BE0C4008);
  sub_1BD0DE53C(v153, &qword_1EBD3E930, &qword_1BE0C4008);
  sub_1BD0DE53C(v180, &qword_1EBD3E930, &qword_1BE0C4008);
  sub_1BD0DE53C(v182, &qword_1EBD3E930, &qword_1BE0C4008);
  return sub_1BD0DE53C(v181, &qword_1EBD3E930, &qword_1BE0C4008);
}

uint64_t sub_1BD3739FC@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v18[0] = *v2;
  v18[1] = v4;
  v5 = v2[3];
  v18[2] = v2[2];
  v18[3] = v5;
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43128, &qword_1BE0CF5A8);
  sub_1BD372A38(v18, a2 + *(v6 + 44));
  v7 = sub_1BE050234();
  sub_1BE04E1F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43130, &unk_1BE0CF5B0);
  v17 = a2 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

unint64_t sub_1BD373AC4()
{
  result = qword_1EBD43178;
  if (!qword_1EBD43178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43170, &qword_1BE1054E0);
    sub_1BD0FF49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43178);
  }

  return result;
}

unint64_t sub_1BD373B50()
{
  result = qword_1EBD43190;
  if (!qword_1EBD43190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43130, &unk_1BE0CF5B0);
    sub_1BD0DE4F4(&qword_1EBD43198, &qword_1EBD431A0, &unk_1BE0CF640, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43190);
  }

  return result;
}

char *sub_1BD373C08(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v6 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v7 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E695D0C8]) init];
  v8 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v2[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_context] = a1;
  v72.receiver = v2;
  v72.super_class = type metadata accessor for NearbyPeerPaymentAppearAsView();
  v10 = objc_msgSendSuper2(&v72, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider;
    v12 = *&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider];
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 separatorColor];
    [v14 setBackgroundColor_];

    [v10 addSubview_];
  }

  v16 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView;
  [*&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView] setContentMode_];
  [*&v10[v16] setUserInteractionEnabled_];
  [v10 addSubview_];
  v17 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  [v17 setContactType_];
  v18 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController;
  v19 = *&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BE0B7020;
  *(v20 + 32) = v17;
  sub_1BD0E8CBC();
  v21 = v19;
  v71 = v17;
  v22 = sub_1BE052724();
  v20, v23, v24, v25, v26, v27, v28, v29;
  [v21 setContacts_];

  v30 = [*&v10[v18] view];
  [v10 addSubview_];

  v31 = a2;
  sub_1BD374824(a2);
  v32 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel;
  v33 = *&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel];
  sub_1BD42DD88(a1);
  v35 = v34;
  v36 = sub_1BE052404();
  v35, v37, v38, v39, v40, v41, v42, v43;
  [v33 setText_];

  v44 = *&v10[v32];
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 secondaryLabelColor];
  [v46 setTextColor_];

  v48 = *&v10[v32];
  v49 = objc_opt_self();
  v50 = *MEMORY[0x1E69DDD08];
  v51 = v48;
  v52 = [v49 preferredFontForTextStyle_];
  [v51 setFont_];

  [*&v10[v32] setNumberOfLines_];
  [*&v10[v32] setAccessibilityIdentifier_];
  [v10 addSubview_];
  v53 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel;
  v54 = *&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel];
  v55 = [v31 displayName];
  if (!v55)
  {
    sub_1BE052434();
    v57 = v56;
    v55 = sub_1BE052404();
    v57, v58, v59, v60, v61, v62, v63, v64;
  }

  [v54 setText_];

  v65 = *MEMORY[0x1E69DDD80];
  v66 = *MEMORY[0x1E69DDC20];
  v67 = *MEMORY[0x1E69DB980];
  v68 = *&v10[v53];
  v69 = PKFontForDefaultDesign(v65, v66, v67);
  [v68 setFont_];

  [*&v10[v53] setNumberOfLines_];
  [*&v10[v53] setAccessibilityIdentifier_];
  [v10 addSubview_];
  [v10 setAccessibilityIdentifier_];

  return v10;
}

id sub_1BD374178()
{
  v64 = *MEMORY[0x1E69E9840];
  v63.receiver = v0;
  v63.super_class = type metadata accessor for NearbyPeerPaymentAppearAsView();
  objc_msgSendSuper2(&v63, sel_layoutSubviews);
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider];
    [v0 bounds];
    Width = CGRectGetWidth(v65);
    [v1 setFrame_];
  }

  [v0 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v66, &slice, &remainder, 16.0, CGRectMinXEdge);
  v67 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v67, &slice, &remainder, 16.0, CGRectMaxXEdge);
  v68 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v68, &slice, &remainder, 8.0, CGRectMinYEdge);
  v69 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v69, &slice, &remainder, 8.0, CGRectMaxYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  v5 = remainder.size.width;
  height = remainder.size.height;
  v7 = [v0 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  LOBYTE(v7) = sub_1BE052E84();
  v15.n128_u64[0] = 0x4044000000000000;
  if (v7)
  {
    v15.n128_f64[0] = 60.0;
  }

  v9.n128_u64[0] = v15.n128_u64[0];
  v10.n128_f64[0] = x;
  v11.n128_f64[0] = y;
  v12.n128_f64[0] = v5;
  v13.n128_f64[0] = height;
  PKSizeAlignedInRect(0x100000000, v15, v9, v10, v11, v12, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [*&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView] setFrame_];
  v24 = [*&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController] view];
  [v24 setFrame_];

  v70.origin.x = v17;
  v70.origin.y = v19;
  v70.size.width = v21;
  v70.size.height = v23;
  v25 = CGRectGetWidth(v70) + 10.0;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = v5;
  v71.size.height = height;
  CGRectDivide(v71, &slice, &remainder, v25, CGRectMinXEdge);
  v26 = remainder.origin.x;
  v27 = remainder.origin.y;
  v28 = remainder.size.width;
  v29 = remainder.size.height;
  v30 = *&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel];
  [v30 sizeThatFits_];
  v32 = v31;
  v34 = v33;
  v35 = *&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel];
  v72.origin.x = v26;
  v72.origin.y = v27;
  v72.size.width = v28;
  v72.size.height = v29;
  v36 = CGRectGetWidth(v72);
  v73.origin.x = v26;
  v73.origin.y = v27;
  v73.size.width = v28;
  v73.size.height = v29;
  [v35 sizeThatFits_];
  v60 = v38;
  v39 = *&v37;
  memset(&slice, 0, sizeof(slice));
  if ((v29 - (v34 + v37)) * 0.5 > 0.0)
  {
    v40 = (v29 - (v34 + v37)) * 0.5;
  }

  else
  {
    v40 = 0.0;
  }

  memset(&remainder, 0, sizeof(remainder));
  v74.origin.x = v26;
  v74.origin.y = v27;
  v74.size.width = v28;
  v74.size.height = v29;
  CGRectDivide(v74, &slice, &remainder, v40, CGRectMinYEdge);
  v75 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v75, &slice, &remainder, v40, CGRectMaxYEdge);
  v41 = remainder.origin.x;
  v42 = remainder.origin.y;
  v43 = remainder.size.width;
  v44 = remainder.size.height;
  v45.n128_u64[0] = v32;
  v46.n128_f64[0] = v34;
  v47.n128_u64[0] = *&remainder.origin.x;
  v48.n128_u64[0] = *&remainder.origin.y;
  v49.n128_u64[0] = *&remainder.size.width;
  v50.n128_u64[0] = *&remainder.size.height;
  PKSizeAlignedInRect(0, v45, v46, v47, v48, v49, v50, v51);
  [v30 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v76.origin.x = v41;
  v76.origin.y = v42;
  v76.size.width = v43;
  v76.size.height = v44;
  CGRectDivide(v76, &slice, &remainder, v34, CGRectMinYEdge);
  v52.n128_u64[0] = *&remainder.origin.x;
  v53.n128_u64[0] = *&remainder.origin.y;
  v54.n128_u64[0] = *&remainder.size.width;
  v55.n128_u64[0] = *&remainder.size.height;
  v56.n128_u64[0] = v60;
  v57.n128_u64[0] = v39;
  PKSizeAlignedInRect(0, v56, v57, v52, v53, v54, v55, v58);
  return [v35 setFrame_];
}

double sub_1BD374624(double a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1BE052E84();
  v5 = 50.0;
  if (v3)
  {
    v5 = 70.0;
  }

  v6 = a1 + -32.0 - v5;
  [*&v1[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel] sizeThatFits_];
  [*&v1[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel] sizeThatFits_];
  return a1;
}

id sub_1BD374780(void *a1)
{
  sub_1BD374824(a1);
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel];
  v4 = [a1 displayName];
  if (!v4)
  {
    sub_1BE052434();
    v6 = v5;
    v4 = sub_1BE052404();
    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  [v3 setText_];

  return [v1 setNeedsLayout];
}

void sub_1BD374824(void *a1)
{
  v2 = [a1 imageData];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1BE04AAC4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1BD041A38(v4, v6);
    v8 = sub_1BE04AAB4();
    v9 = [v7 initWithData_];

    sub_1BD1245AC(v4, v6, v10, v11, v12, v13, v14, v15);
    if (v9)
    {
      v22 = *(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView);
      [v22 setImage_];
      [v22 setHidden_];
      v23 = [*(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController) view];
      [v23 setHidden_];

      sub_1BD1245AC(v4, v6, v24, v25, v26, v27, v28, v29);
      return;
    }

    sub_1BD1245AC(v4, v6, v16, v17, v18, v19, v20, v21);
  }

  v30 = [*(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController) view];
  [v30 setHidden_];

  v31 = *(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView);

  [v31 setHidden_];
}

id NearbyPeerPaymentAppearAsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentAppearAsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentAppearAsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD374B94()
{
  v1 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E695D0C8]) init];
  v4 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD374C98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD374CE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD374D60@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431D8, &qword_1BE0CF740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41[-v4];
  *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431E0, &qword_1BE0CF748);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v41[-v6];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431E8, &qword_1BE0CF750);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41[-v13];
  v15 = *(v1 + 48);
  *&v46 = *(v1 + 40);
  *(&v46 + 1) = v15;
  sub_1BE048964();
  v42 = sub_1BE051C54();
  v45 = sub_1BE0501D4();
  *v5 = sub_1BE04F7B4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431F0, &unk_1BE0CF758);
  sub_1BD3751FC(v1, &v5[*(v16 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v18 = sub_1BE0501C4();
  *(inited + 32) = v18;
  v19 = sub_1BE0501F4();
  *(inited + 33) = v19;
  v20 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v18)
  {
    v20 = sub_1BE050214();
  }

  inited, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE050214();
  if (sub_1BE050214() != v19)
  {
    v20 = sub_1BE050214();
  }

  if (v42)
  {
    v28 = 10.0;
  }

  else
  {
    v28 = 18.0;
  }

  sub_1BD0DE204(v5, v7, &qword_1EBD431D8, &qword_1BE0CF740);
  v7[*(v44 + 36)] = v20;
  KeyPath = swift_getKeyPath();
  sub_1BD0DE204(v7, v11, &qword_1EBD431E0, &qword_1BE0CF748);
  v30 = &v11[*(v43 + 36)];
  *v30 = KeyPath;
  v30[8] = 1;
  sub_1BD0DE204(v11, v14, &qword_1EBD431E8, &qword_1BE0CF750);
  v31 = v47;
  sub_1BD0DE19C(v14, v47, &qword_1EBD431E8, &qword_1BE0CF750);
  v48[0] = 0;
  v48[1] = 0;
  strcpy(&v49, "ApplePayLogo");
  BYTE13(v49) = 0;
  HIWORD(v49) = -5120;
  v32 = v46;
  v50 = v46;
  LOBYTE(v51) = 0;
  *(&v51 + 1) = PKEdgeInsetsMake;
  *&v52 = 0;
  *(&v52 + 1) = 0x4032000000000000;
  *v53 = v28;
  v44 = xmmword_1BE0B7110;
  *(v53 + 8) = xmmword_1BE0B7110;
  v33 = v14;
  v34 = v45;
  BYTE8(v53[1]) = v45;
  v35 = v49;
  *a1 = 0u;
  a1[1] = v35;
  v36 = v50;
  v37 = v51;
  *(a1 + 89) = *(v53 + 9);
  v38 = v53[0];
  a1[4] = v52;
  a1[5] = v38;
  a1[2] = v36;
  a1[3] = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431F8, &qword_1BE0CF798);
  sub_1BD0DE19C(v31, a1 + *(v39 + 48), &qword_1EBD431E8, &qword_1BE0CF750);
  sub_1BD0DE19C(v48, v54, &qword_1EBD43200, &qword_1BE0CF7A0);
  sub_1BD0DE53C(v33, &qword_1EBD431E8, &qword_1BE0CF750);
  sub_1BD0DE53C(v31, &qword_1EBD431E8, &qword_1BE0CF750);
  v54[0] = 0;
  v54[1] = 0;
  strcpy(v55, "ApplePayLogo");
  HIBYTE(v55[6]) = 0;
  v55[7] = -5120;
  v56 = v32;
  v57 = 0;
  v58 = PKEdgeInsetsMake;
  v59 = 0;
  v60 = 0x4032000000000000;
  v61 = v28;
  v62 = v44;
  v63 = v34;
  return sub_1BD0DE53C(v54, &qword_1EBD43200, &qword_1BE0CF7A0);
}

id sub_1BD3751FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43208, &qword_1BE0CF7A8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  sub_1BD375654(a1, &v38 - v11);
  v13 = sub_1BE0501C4();
  if (qword_1EBD36D58 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v14 = &v12[*(v7 + 36)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B80E0], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v39 = sub_1BE04B6F4();
    v41 = v21;

    (*(v4 + 8))(v6, v3);
    v22 = *(a1 + 32);
    v40 = *(a1 + 24);
    if (qword_1EBD36ED8 != -1)
    {
      swift_once();
    }

    v23 = qword_1EBDAB648;
    v24 = qword_1EBD36EE0;
    sub_1BE048964();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = qword_1EBDAB650;
    sub_1BE048964();
    sub_1BE048964();
    v26 = sub_1BE0501F4();
    v38 = v22;
    v27 = v26;
    sub_1BD0DE19C(v12, v9, &qword_1EBD43208, &qword_1BE0CF7A8);
    v28 = v42;
    sub_1BD0DE19C(v9, v42, &qword_1EBD43208, &qword_1BE0CF7A8);
    v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43210, &qword_1BE0CF7B0) + 48);
    v31 = v39;
    v30 = v40;
    v32 = v12;
    v33 = v41;
    *&v43 = v39;
    *(&v43 + 1) = v41;
    *&v44 = v23;
    *(&v44 + 1) = v25;
    LOWORD(v45) = 0;
    *(&v45 + 2) = v61;
    WORD3(v45) = v62;
    *(&v45 + 1) = v40;
    *&v46[0] = v22;
    *(v46 + 8) = 0u;
    *(&v46[1] + 8) = 0u;
    *(&v46[2] + 8) = 0u;
    *(&v46[3] + 8) = 0u;
    *(&v46[4] + 8) = 0u;
    *(&v46[5] + 1) = 0;
    v47 = v27;
    *(v29 + 144) = v27;
    v34 = v46[4];
    *(v29 + 96) = v46[3];
    *(v29 + 112) = v34;
    *(v29 + 128) = v46[5];
    v35 = v46[0];
    *(v29 + 32) = v45;
    *(v29 + 48) = v35;
    v36 = v46[2];
    *(v29 + 64) = v46[1];
    *(v29 + 80) = v36;
    v37 = v44;
    *v29 = v43;
    *(v29 + 16) = v37;
    sub_1BD0DE19C(&v43, v48, &qword_1EBD43218, &qword_1BE0CF7B8);
    sub_1BD0DE53C(v32, &qword_1EBD43208, &qword_1BE0CF7A8);
    v48[0] = v31;
    v48[1] = v33;
    v48[2] = v23;
    v48[3] = v25;
    v49 = 0;
    v50 = v61;
    v51 = v62;
    v52 = v30;
    v53 = v38;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
    v60 = v27;
    sub_1BD0DE53C(v48, &qword_1EBD43218, &qword_1BE0CF7B8);
    return sub_1BD0DE53C(v9, &qword_1EBD43208, &qword_1BE0CF7A8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD375654@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43220, &qword_1BE0CF7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  sub_1BD375804(a1, &v24[-v8]);
  if (PKSavingsFDICSignageEnabled())
  {
    v10 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v24[8] = 0;
    v19 = v10;
    v20 = 1;
    v21 = 5;
  }

  else
  {
    v21 = 0;
    v19 = 0;
    v12 = 0;
    v20 = 2;
    v14 = 0;
    v16 = 0;
    v18 = 0;
  }

  sub_1BD0DE19C(v9, v6, &qword_1EBD43220, &qword_1BE0CF7C0);
  sub_1BD0DE19C(v6, a2, &qword_1EBD43220, &qword_1BE0CF7C0);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43228, &qword_1BE0CF7C8) + 48);
  *v22 = v21;
  *(v22 + 8) = v20;
  *(v22 + 16) = v19;
  *(v22 + 24) = v12;
  *(v22 + 32) = v14;
  *(v22 + 40) = v16;
  *(v22 + 48) = v18;
  *(v22 + 56) = 0;
  sub_1BD0DE53C(v9, &qword_1EBD43220, &qword_1BE0CF7C0);
  return sub_1BD0DE53C(v6, &qword_1EBD43220, &qword_1BE0CF7C0);
}

uint64_t sub_1BD375804@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v84 = sub_1BE04FA44();
  v83 = *(v84 - 1);
  MEMORY[0x1EEE9AC00](v84);
  v77 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43230, &qword_1BE0CF7D0);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43238, &unk_1BE0CF7D8);
  v85 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v71 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v74);
  v11 = &v71 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43240, &unk_1BE0CF7E8);
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB0, &unk_1BE0C2840);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = type metadata accessor for PassImage(0);
  v23 = *a1;
  *&v21[v22[6]] = *a1;
  type metadata accessor for WrappedPass(0);
  swift_storeEnumTagMultiPayload();
  v24 = v23;
  PKPassFrontFaceContentSize();
  *(v21 + 3) = 0x4064400000000000;
  *(v21 + 4) = v26 / v25 * 162.0;
  *v21 = sub_1BD70C870;
  *(v21 + 1) = 0;
  v21[16] = 0;
  v21[v22[7]] = 0;
  *&v21[v22[8]] = 887;
  LOBYTE(v22) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v27 = *(v17 + 44);
  v87 = v21;
  v28 = &v21[v27];
  *v28 = v22;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v75 = a1;
  sub_1BD3761C0();
  *&v95[0] = v33;
  *(&v95[0] + 1) = v34;
  sub_1BD0DDEBC();
  v35 = sub_1BE0506C4();
  v37 = v36;
  LOBYTE(v23) = v38;
  v40 = v39;
  LOBYTE(v21) = sub_1BE0501F4();
  sub_1BE04E1F4();
  LOBYTE(v95[0]) = v23 & 1;
  *&v91 = v35;
  *(&v91 + 1) = v37;
  LOBYTE(v92) = v23 & 1;
  *(&v92 + 1) = v40;
  LOBYTE(v93) = v21;
  *(&v93 + 1) = v41;
  *v94 = v42;
  *&v94[8] = v43;
  *&v94[16] = v44;
  v94[24] = 0;
  *&v94[25] = 256;
  v45 = *MEMORY[0x1E697E6D0];
  v46 = sub_1BE04EB24();
  (*(*(v46 - 8) + 104))(v11, v45, v46);
  sub_1BD3768A8();
  result = sub_1BE052334();
  if (result)
  {
    v72 = v6;
    v73 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43248, &qword_1BE0CF7F8);
    sub_1BD376900();
    v48 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    v86 = v15;
    v49 = v74;
    sub_1BE050B34();
    sub_1BD0DE53C(v11, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
    v95[2] = v93;
    *v96 = *v94;
    *&v96[11] = *&v94[11];
    v95[0] = v91;
    v95[1] = v92;
    v50 = sub_1BD0DE53C(v95, &qword_1EBD43248, &qword_1BE0CF7F8);
    MEMORY[0x1EEE9AC00](v50);
    *(&v71 - 2) = v75;
    sub_1BE0501B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43278, &unk_1BE0CF810);
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FE98, &qword_1BE0C70C8);
    v52 = sub_1BD376AA0(&qword_1EBD3FE90, &qword_1EBD3FE98, &qword_1BE0C70C8, sub_1BD281F28);
    *&v91 = v51;
    *(&v91 + 1) = v49;
    *&v92 = v52;
    *(&v92 + 1) = v48;
    swift_getOpaqueTypeConformance2();
    v53 = v76;
    sub_1BE04E304();
    v54 = v77;
    sub_1BE04FA34();
    v55 = sub_1BE0501B4();
    sub_1BE0501A4();
    sub_1BE0501A4();
    if (sub_1BE0501A4() != v55)
    {
      sub_1BE0501A4();
    }

    sub_1BD0DE4F4(&qword_1EBD43280, &qword_1EBD43230, &qword_1BE0CF7D0, MEMORY[0x1E697BE60]);
    v56 = v89;
    v57 = v81;
    sub_1BE050D34();
    (*(v83 + 8))(v54, v84);
    (*(v79 + 8))(v53, v57);
    v58 = v88;
    sub_1BD0DE19C(v87, v88, &qword_1EBD3DDB0, &unk_1BE0C2840);
    v59 = v80;
    v84 = *(v80 + 16);
    v60 = v78;
    v61 = v82;
    v84(v78, v86, v82);
    v62 = v85;
    v63 = *(v85 + 16);
    v64 = v72;
    v63(v90, v56, v72);
    v65 = v73;
    sub_1BD0DE19C(v58, v73, &qword_1EBD3DDB0, &unk_1BE0C2840);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43288, &unk_1BE0CF820);
    v84((v65 + *(v66 + 48)), v60, v61);
    v67 = v65 + *(v66 + 64);
    v68 = v90;
    v63(v67, v90, v64);
    v69 = *(v62 + 8);
    v69(v89, v64);
    v70 = *(v59 + 8);
    v70(v86, v61);
    sub_1BD0DE53C(v87, &qword_1EBD3DDB0, &unk_1BE0C2840);
    v69(v68, v64);
    v70(v60, v61);
    return sub_1BD0DE53C(v88, &qword_1EBD3DDB0, &unk_1BE0C2840);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD3761C0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v6;
  v9 = *MEMORY[0x1E69B80E0];
  v10 = *(v2 + 104);
  if (*(v0 + 56))
  {
    v10(&v27 - v6, v9, v1, v7);
    v11 = PKPassKitBundle();
    if (v11)
    {
      v12 = v11;
      sub_1BE04B6F4();

LABEL_7:
      (*(v2 + 8))(v8, v1);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  v10(v4, v9, v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B69E0;
  v14 = [*(v0 + 8) currentBalance];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v14 formattedStringValue];

  if (v16)
  {
    v17 = sub_1BE052434();
    v19 = v18;

    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1BD110550();
    *(v13 + 32) = v17;
    *(v13 + 40) = v19;
    sub_1BE04B714();
    v13, v20, v21, v22, v23, v24, v25, v26;
    v8 = v4;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_1BD376420()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v25 - v1;
  v25 = sub_1BD376638();
  v26 = v3;
  sub_1BD0DDEBC();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  v25 = v4;
  v26 = v5;
  v10 = (v9 & 1);
  v27 = v9 & 1;
  v28 = v7;
  v11 = *MEMORY[0x1E697E6D0];
  v12 = sub_1BE04EB24();
  (*(*(v12 - 8) + 104))(v2, v11, v12);
  sub_1BD3768A8();
  if (sub_1BE052334())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE98, &qword_1BE0C70C8);
    sub_1BD376AA0(&qword_1EBD3FE90, &qword_1EBD3FE98, &qword_1BE0C70C8, sub_1BD281F28);
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    sub_1BE050B34();
    sub_1BD0DE53C(v2, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
    sub_1BD0DDF10(v4, v6, v10, v13, v14, v15, v16, v17);
    v8, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD376638()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v6;
  if (*(v0 + 56))
  {
    v9 = *(v0 + 72);
    if (v9)
    {
      v10 = *(v0 + 64);
      (*(v2 + 104))(&v22 - v6, *MEMORY[0x1E69B80E0], v1, v7.n128_f64[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1BE0B69E0;
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = sub_1BD110550();
      *(v11 + 32) = v10;
      *(v11 + 40) = v9;
      sub_1BE048C84();
      v12 = sub_1BE04B714();
      v11, v13, v14, v15, v16, v17, v18, v19;
      v4 = v8;
LABEL_6:
      (*(v2 + 8))(v4, v1);
      return v12;
    }
  }

  (*(v2 + 104))(v4, *MEMORY[0x1E69B80E0], v1, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v12 = sub_1BE04B6F4();

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD3768A8()
{
  result = qword_1EBD3C218;
  if (!qword_1EBD3C218)
  {
    sub_1BE04EB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C218);
  }

  return result;
}

unint64_t sub_1BD376900()
{
  result = qword_1EBD43250;
  if (!qword_1EBD43250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43248, &qword_1BE0CF7F8);
    sub_1BD37698C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43250);
  }

  return result;
}

unint64_t sub_1BD37698C()
{
  result = qword_1EBD43258;
  if (!qword_1EBD43258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FF20, &unk_1BE0CF800);
    sub_1BD376AA0(&qword_1EBD43260, &qword_1EBD43268, &qword_1BE0D0F70, sub_1BD376A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43258);
  }

  return result;
}

unint64_t sub_1BD376A44()
{
  result = qword_1EBD43270;
  if (!qword_1EBD43270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43270);
  }

  return result;
}

uint64_t sub_1BD376AA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

void sub_1BD376B24(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v48 = a2;
  v47 = sub_1BE04B944();
  v7 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton] = 0;
  v10 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton] = 2;
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally] = 1;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_provisioningContext] = a1;
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_reporter] = a3;
  v50 = 2;
  v11 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderAnimationView());
  v46 = a3;
  sub_1BE048964();
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView] = ProvisioningCardReaderAnimationView.init(state:)(&v50);
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x1E69B92B0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
  v14 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderBlurView());
  v45 = v13;
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView] = sub_1BD606998(v45, 10.0, -0.05);
  v15 = sub_1BE052404();
  v16 = PKUIImageNamed(v15);

  v17 = [objc_opt_self() effectWithVariableBlurRadius:v16 imageMask:10.0];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView] = v18;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v20 = [objc_opt_self() blackColor];
  [v19 setBackgroundColor_];

  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView] = v19;
  v21 = objc_allocWithZone(MEMORY[0x1E6979398]);
  v22 = v19;
  v23 = [v21 init];
  v24 = sub_1BE052404();
  v25 = PKUIImageNamed(v24);

  if (v25)
  {
    v26 = [v25 CGImage];

    [v23 setContents_];
    v27 = [v22 layer];
    [v27 setMask_];

    *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundMask] = v23;
    v28 = v23;
    sub_1BE04BB94();
    v29 = sub_1BE04B8E4();
    (*(v7 + 8))(v9, v47);
    v30 = type metadata accessor for CardReaderViewController();
    v49.receiver = v4;
    v49.super_class = v30;
    v31 = v48;
    v32 = objc_msgSendSuper2(&v49, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v29, 0, 0, v48);

    if (v32)
    {
      v33 = objc_opt_self();
      v34 = v32;
      v35 = [v33 defaultCenter];
      [v35 addObserver:v34 selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
      [v35 addObserver:v34 selector:sel_didBecomeActiveNotification name:*MEMORY[0x1E69DDAB0] object:0];
      v36 = v34;
      [v36 setOverrideUserInterfaceStyle_];
      [v36 setModalPresentationStyle_];
      [v36 setTransitioningDelegate_];
      a1, v37, v38, v39, v40, v41, v42, v43;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD3770DC()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CardReaderViewController();
  v55.receiver = v0;
  v55.super_class = v5;
  objc_msgSendSuper2(&v55, sel_loadView);
  if ((v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally] & 1) == 0)
  {
    sub_1BD37834C();
  }

  v6 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView];
  v7 = objc_opt_self();
  v8 = [v7 systemBlackColor];
  [v6 setBackgroundColor_];

  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  v11 = [v7 clearColor];
  [v10 setBackgroundColor_];

  [v0 setHideFooterBlurView_];
  v12 = [v0 tableView];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  [v12 setBackgroundColor_];
  [v13 setShowsVerticalScrollIndicator_];
  v14 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
  if (!v14)
  {
    goto LABEL_13;
  }

  v53 = v6;
  v54 = v2;
  v15 = v14;
  v16 = [v0 view];
  if (!v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v16;
  v18 = v1;
  v19 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView];
  [v16 addSubview_];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  [v20 sendSubviewToBack_];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  v24 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView];
  [v22 insertSubview:v24 belowSubview:v19];

  v25 = [v0 view];
  if (!v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v25;
  v27 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView];
  [v25 insertSubview:v27 belowSubview:v24];

  v28 = [v0 view];
  if (!v28)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = v28;
  [v28 insertSubview:v15 belowSubview:v27];

  v30 = [v0 view];
  if (v30)
  {
    v31 = v30;
    v1 = v18;
    [v30 insertSubview:v53 belowSubview:v15];

    v2 = v54;
LABEL_13:
    v32 = [v0 dockView];
    if (v32)
    {
      v33 = v32;
      v54 = v13;
      v34 = [v32 footerView];
      if (v34)
      {
        v35 = v34;
        [v34 setSetUpLaterButton_];
        v36 = [v35 createPrimaryButton];
        (*(v2 + 13))(v4, *MEMORY[0x1E69B80D8], v1);
        v37 = v36;
        v38 = PKPassKitBundle();
        if (v38)
        {
          v39 = v38;
          sub_1BE04B6F4();
          v41 = v40;

          (*(v2 + 1))(v4, v1);
          v42 = sub_1BE052404();
          v41, v43, v44, v45, v46, v47, v48, v49;
          [v37 setTitle:v42 forState:0];

          [v37 pkui:0 setAlpha:0.0 animated:?];
          [v37 addTarget:v0 action:sel_tryAgainButtonPressed forControlEvents:0x2000];
          [v35 setSecondaryActionButton_];
          v50 = *MEMORY[0x1E69B9BE0];
          v51 = v37;
          PKAccessibilityIDSet(v51, v50);

          v52 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton];
          *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton] = v37;

          return;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
}

void sub_1BD377664(char a1)
{
  [v1 _setPrimaryButtonEnabled_];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CardReaderViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
  v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] = 0;
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];
    v6 = [objc_opt_self() systemWhiteColor];
    [v5 setTintColor_];
  }

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    if (*&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView])
    {
      ProvisioningCardReaderAnimationView.updateMotionMonitoring(shouldMonitor:)(1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD377830(uint64_t a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CardReaderViewController();
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, v2 & 1);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_reporter);
  if (v3)
  {
    v4 = *MEMORY[0x1E69BB1D8];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    [v3 setProductType:v4 subtype:0];
  }

  v6 = [v3 reportViewAppeared];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x250))(v6);
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView))
  {
    ProvisioningCardReaderAnimationView.updateMotionMonitoring(shouldMonitor:)(1);
  }
}

id sub_1BD377A30(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CardReaderViewController();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, v2 & 1);
  if ((*(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) = 1;
    *(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = 0;
    sub_1BD3789BC(0);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x258))();
  }

  result = [v1 isMovingFromParentViewController];
  if (result)
  {
    result = *(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_reporter);
    if (result)
    {
      return [result resetProductTypes];
    }
  }

  return result;
}

void sub_1BD377B6C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  v3 = [v0 tableView];
  if (!v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  [v2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v2 safeAreaInsets];
  v14 = v13;
  v15 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
  if (v15)
  {
    v72 = v13;
    v73 = v8;
    v74 = v6;
    v16 = PKEdgeInsetsInsetRectTm(v6, v8, v10, v12, 0.0, 0.0);
    v18 = v17;
    *&v20 = v19;
    v22 = v21;
    v23 = v19 * 0.85 * 2.12;
    v24 = v15;
    v25.n128_f64[0] = v23;
    PKFloatRoundToPixel(v25, v26);
    v28 = v27;
    v29 = PKContentAlignmentMake();
    v30.n128_u64[0] = v20;
    v31.n128_u64[0] = v28;
    v32.n128_f64[0] = v16;
    v33.n128_u64[0] = v18;
    v34.n128_u64[0] = v20;
    v35.n128_u64[0] = v22;
    PKSizeAlignedInRect(v29, v30, v31, v32, v33, v34, v35, v36);
    v41 = v37.n128_f64[0];
    v42 = v38.n128_f64[0] + 40.0;
    v43 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state;
    v44 = *&v20;
    if (v24[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state] - 5 < 2)
    {
      v37.n128_f64[0] = *&v20 * 0.75;
      v45 = v39;
      v46 = v40;
      PKFloatRoundToPixel(v37, v38);
      v40 = v46;
      v39 = v45;
      v44 = v47;
    }

    v75 = v42;
    v76 = v41;
    v48 = v41;
    v49 = v42;
    v71 = v39;
    v77 = v40;
    MinY = CGRectGetMinY(*(&v39 - 2));
    v51 = [v0 tableView];
    if (v51)
    {
      v52 = v51;
      [v52 contentInset];
      v55 = v54.n128_f64[0];
      v57 = v56;
      v59 = v58;
      if (v24[v43] - 5 < 2)
      {
        v53.n128_f64[0] = *&v20 * 0.75;
        PKFloatRoundToPixel(v53, v54);
        v20 = v60;
      }

      v61 = v44 + MinY;
      [v52 setContentInset_];

      v8 = v73;
      v6 = v74;
      v62 = v71;
      v14 = v72;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v20 = *MEMORY[0x1E69DDCE0];
  v61 = 0.0;
  v62 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  v75 = 0.0;
LABEL_11:
  v78.receiver = v0;
  v78.super_class = type metadata accessor for CardReaderViewController();
  objc_msgSendSuper2(&v78, sel_viewWillLayoutSubviews);
  [v4 contentOffset];
  v64 = v14 + *&v20 + v63;
  if (v15)
  {
    [v15 setFrame_];
  }

  v65 = v61 - v64 + 40.0;
  v79.origin.x = v6;
  v79.origin.y = v8;
  v79.size.width = v10;
  v79.size.height = v12;
  Width = CGRectGetWidth(v79);
  v80.origin.x = v6;
  v80.origin.y = v8;
  v80.size.width = v10;
  v80.size.height = v12;
  Height = CGRectGetHeight(v80);
  v81.origin.x = 0.0;
  v81.size.height = 0.0;
  v81.origin.y = v65;
  v81.size.width = Width;
  v68 = Height - CGRectGetMinY(v81);
  [*&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView] setFrame_];
  v69 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView];
  [v69 setFrame_];
  v70 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundMask];
  [v69 bounds];
  [v70 setFrame_];
  [*&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView] setFrame_];
  [*&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView] setFrame_];
}

void sub_1BD377FBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (*(v8 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard) == 1 && (v9 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling, (*(v8 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) & 1) == 0))
  {
    if (*(v8 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView) && (v13 = 2, ProvisioningCardReaderAnimationView.set(state:animated:)(&v13, 0, a3, a4, a5, a6, a7, a8), (*(v8 + v9) & 1) != 0))
    {
      v10 = 1;
    }

    else
    {
      v10 = 1;
      *(v8 + v9) = 1;
      *(v8 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = 0;
      sub_1BD3789BC(0);
      (*((*MEMORY[0x1E69E7D40] & *v8) + 0x258))();
    }
  }

  else
  {
    v10 = 0;
  }

  *(v8 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = v10;
  v11 = *(v8 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView);
  if (v11 && *(v11 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) == 1)
  {
    *(v11 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = 0;
    v12 = *(v11 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager);

    [v12 stopDeviceMotionUpdates];
  }
}

void sub_1BD37816C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) = 0;
    *(v0 + v1) = 0;
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))();
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView);
  if (v2)
  {
    if ((*(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = 1;
      v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager);
      v4 = [objc_opt_self() mainQueue];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14[4] = sub_1BD14E904;
      v15 = v5;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = sub_1BD14E1D8;
      v14[3] = &block_descriptor_158;
      v6 = _Block_copy(v14);
      v15, v7, v8, v9, v10, v11, v12, v13;
      [v3 startDeviceMotionUpdatesToQueue:v4 withHandler:v6];
      _Block_release(v6);
    }
  }
}

void sub_1BD37834C()
{
  [v0 setHidesBackButton:1 animated:0];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelButtonPressed];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B7020;
  *(v2 + 32) = v1;
  sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
  v3 = v1;
  v11 = sub_1BE052724();
  v2, v4, v5, v6, v7, v8, v9, v10;
  [v0 _setLeftBarButtonItems_animated_];
}

void sub_1BD3784E8()
{
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) = 1;
    *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = 0;
    sub_1BD3789BC(0);
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x258))();
  }

  if (*(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally) == 1)
  {

    [v0 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
    }
  }
}

void sub_1BD3786DC(uint64_t a1, unsigned __int8 a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v13 = a2;
  ProvisioningCardReaderAnimationView.set(state:animated:)(&v13, 1, a3, a4, a5, a6, a7, a8);
  v9 = [a3 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  [v9 setNeedsLayout];

  v11 = [a3 view];
  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 layoutIfNeeded];
}

void sub_1BD378794(void *a1, char a2, void *a3, void *a4)
{
  [a1 setOverrideUserInterfaceStyle_];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    [a1 setTransitioningDelegate_];
    [a1 setModalPresentationStyle_];
    v9 = v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton];
    sub_1BD3789BC(0);
    v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton] = v9;
  }

  if (a3)
  {
    v19[4] = a3;
    v20 = a4;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1BD126964;
    v19[3] = &block_descriptor_164;
    a3 = _Block_copy(v19);
    v10 = v20;
    sub_1BE048964();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  v18 = type metadata accessor for CardReaderViewController();
  v21.receiver = v4;
  v21.super_class = v18;
  objc_msgSendSuper2(&v21, sel_presentViewController_animated_completion_, a1, a2 & 1, a3);
  _Block_release(a3);
}

void sub_1BD3789BC(char a1)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FC4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - v17;
  v19 = *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton];
  if (v19)
  {
    v72 = v16;
    v73 = v15;
    v74 = v19;
    v20 = [v1 presentedViewController];
    if (v20)
    {

      v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton] = a1 & 1;
      v21 = *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex] = v23;
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    v71 = v8;
    v24 = a1 & 1;
    if (v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton] == (a1 & 1))
    {
      v51 = v74;
    }

    else
    {
      v69 = v4;
      v70 = v7;
      v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton] = v24;
      v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton] = 2;
      v25 = *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex];
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex] = v26;
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;
      v68 = v26;
      *(v28 + 32) = v24;
      v29 = v28;
      if (a1)
      {
        v30 = [v1 dockView];
        if (v30)
        {
          v31 = v30;
          v32 = [v30 footerView];

          v33 = v70;
          if (v32)
          {
            [v32 setSecondaryActionButton_];

            sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
            v68 = sub_1BE052D54();
            sub_1BE051FB4();
            sub_1BE051FF4();
            v72 = *(v72 + 8);
            (v72)(v13, v73);
            aBlock[4] = sub_1BD37DC34;
            v76 = v29;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD126964;
            aBlock[3] = &block_descriptor_152;
            v34 = _Block_copy(aBlock);
            v35 = v76;
            sub_1BE048964();
            v35, v36, v37, v38, v39, v40, v41, v42;
            sub_1BE051F74();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            sub_1BD14EC84();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
            sub_1BD14ECDC();
            sub_1BE053664();
            v43 = v68;
            MEMORY[0x1BFB3FD90](v18, v10, v6, v34);
            _Block_release(v34);

            v29, v44, v45, v46, v47, v48, v49, v50;
            (*(v69 + 8))(v6, v3);
            (*(v71 + 8))(v10, v33);
            (v72)(v18, v73);
            return;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v52 = sub_1BE048964();
      sub_1BD378F38(v52, v68, 0);
      v29, v53, v54, v55, v56, v57, v58, v59;

      v27, v60, v61, v62, v63, v64, v65, v66;
    }
  }
}

void sub_1BD378F38(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*&Strong[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex] != a2)
    {
      v10 = Strong;
LABEL_10:

      return;
    }

    v7 = [Strong dockView];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 footerView];

      if (v9)
      {
        v10 = [v9 secondaryActionButton];

        if (v10)
        {
          v11 = 0.0;
          if (a3)
          {
            [v10 pkui:0 setAlpha:0.0 animated:?];
            v11 = 1.0;
          }

          [v10 pkui:*&v6[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory] setAlpha:0 withAnimationFactory:v11 completion:?];

          goto LABEL_10;
        }

LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id sub_1BD379070()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80D8], v0, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE04B6F4();

    (*(v1 + 8))(v4, v0);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3791E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardReaderViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD379758(void *a1)
{
  v3 = [a1 viewControllerForKey_];
  if (!v3)
  {
LABEL_7:

    [a1 completeTransition_];
    return;
  }

  v4 = v3;
  v5 = [a1 viewControllerForKey_];
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 view];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 containerView];
      v12 = *&v1[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory];
      v40 = v12;
      v13 = [a1 isAnimated];
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      *(v14 + 24) = v10;
      *(v14 + 32) = v6;
      *(v14 + 40) = v8;
      *(v14 + 48) = v11;
      *(v14 + 56) = v13;
      *(v14 + 64) = a1;
      *(v14 + 72) = v4;
      *(v14 + 80) = v12;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1BD37DAC4;
      *(v15 + 24) = v14;
      aBlock[4] = sub_1BD1839E8;
      v42 = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD5B974C;
      aBlock[3] = &block_descriptor_87_0;
      v16 = _Block_copy(aBlock);
      v17 = v42;
      v18 = v1;
      v19 = v10;
      v20 = v6;
      v21 = v8;
      v22 = v11;
      swift_unknownObjectRetain();
      v23 = v4;
      v24 = v40;
      v17, v25, v26, v27, v28, v29, v30, v31;
      v32 = v16;
      PKCATrackedLayoutPerform();

      _Block_release(v32);
      v14, v33, v34, v35, v36, v37, v38, v39;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD379A00(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8, uint64_t a9)
{
  v109[1] = *MEMORY[0x1E69E9840];
  Tracker = PKCATrackedLayoutGetTracker();
  if (*(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type) <= 1u)
  {
    if (!*(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type))
    {
      v17 = [objc_opt_self() clearColor];
      [a2 setBackgroundColor_];

      [a3 setOverrideUserInterfaceStyle_];
      [a3 setModalPresentationCapturesStatusBarAppearance_];
      [a4 safeAreaInsets];
      [a3 setAdditionalSafeAreaInsets_];
    }

    [a5 bounds];
    [a2 setFrame_];
    [a5 addSubview_];
    if ((a6 & 1) != 0 && *(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController))
    {
      v18 = sub_1BD37A2C4(a8, a7, Tracker);
      v109[0] = 0;
      CATransform3DMakeScale(&aBlock, 1.04, 1.04, 1.0);
      v19 = *(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
      [a2 pkui:&aBlock setTransform:v19 withAdditiveAnimationFactory:v109 animation:?];

      v109[0] = 0;
      CATransform3DMakeScale(&aBlock, 1.0, 1.0, 1.0);
      [a2 pkui:&aBlock setTransform:v19 withAdditiveAnimationFactory:v109 animation:?];
      v20 = v109[0];
      if (v109[0])
      {
        v21 = v109[0];
        [v21 setBeginTime_];
        [Tracker trackAnimation_];
        v22 = [a2 layer];
        v23 = sub_1BE052404();
        [v22 addAnimation:v21 forKey:v23];

        v20 = v109[0];
      }

      sub_1BD37A6D8(Tracker);
      v24 = swift_allocObject();
      v24[2] = a7;
      v24[3] = v18;
      if (Tracker)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = sub_1BD37DB98;
        *(v25 + 24) = v24;
        *&aBlock.m21 = sub_1BD37DBE4;
        *&aBlock.m22 = v25;
        *&aBlock.m11 = MEMORY[0x1E69E9820];
        *&aBlock.m12 = 1107296256;
        *&aBlock.m13 = sub_1BD84D338;
        *&aBlock.m14 = &block_descriptor_111;
        v26 = _Block_copy(&aBlock);
        m22 = aBlock.m22;
        v28 = v18;
        sub_1BE048964();
        swift_unknownObjectRetain();
        *&m22, v29, v30, v31, v32, v33, v34, v35;
        [Tracker addAbsoluteCompletion_];
        v24, v36, v37, v38, v39, v40, v41, v42;

        v43 = v26;
LABEL_20:
        _Block_release(v43);

        return;
      }

      v90 = v18;
      [swift_unknownObjectRetain() completeTransition_];
      [v90 removeFromSuperview];
      v24, v91, v92, v93, v94, v95, v96, v97;

      return;
    }

LABEL_21:
    [a7 completeTransition_];

    return;
  }

  if (*(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type) != 2)
  {
    [a5 addSubview_];
    [a5 addSubview_];
  }

  if ((a6 & 1) == 0)
  {
    goto LABEL_21;
  }

  v44 = swift_allocObject();
  v44[2] = a4;
  v44[3] = a7;
  if (*(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController))
  {
    v109[0] = 0;
    swift_unknownObjectRetain();
    v45 = a4;
    CATransform3DMakeScale(&aBlock, 1.04, 1.04, 1.0);
    v46 = *(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
    [v45 pkui:&aBlock setTransform:v46 withAdditiveAnimationFactory:v109 animation:?];
    v47 = v109[0];
    v105 = v45;
    if (v109[0])
    {
      v48 = v109[0];
      [Tracker trackAnimation_];
      v49 = [v45 layer];
      v50 = sub_1BE052404();
      [v49 addAnimation:v48 forKey:v50];

      v47 = v109[0];
    }

    v108 = 0;
    CATransform3DMakeScale(&aBlock, 0.961538462, 0.961538462, 1.0);
    [a2 pkui:&aBlock setTransform:v46 withAdditiveAnimationFactory:&v108 animation:?];

    v108 = 0;
    CATransform3DMakeScale(&aBlock, 1.0, 1.0, 1.0);
    [a2 pkui:&aBlock setTransform:v46 withAdditiveAnimationFactory:&v108 animation:?];
    v51 = v108;
    if (v108)
    {
      v52 = v108;
      [v52 setBeginTime_];
      [Tracker trackAnimation_];
      v53 = [a2 layer];
      v54 = sub_1BE052404();
      [v53 addAnimation:v52 forKey:v54];

      v51 = v108;
    }

    sub_1BD37AF78(Tracker);
    if (Tracker)
    {
      v55 = swift_allocObject();
      *(v55 + 16) = sub_1BD37DB00;
      *(v55 + 24) = v44;
      *&aBlock.m21 = sub_1BD19E0B8;
      *&aBlock.m22 = v55;
      *&aBlock.m11 = MEMORY[0x1E69E9820];
      *&aBlock.m12 = 1107296256;
      *&aBlock.m13 = sub_1BD84D338;
      *&aBlock.m14 = &block_descriptor_102;
      v56 = _Block_copy(&aBlock);
      v57 = aBlock.m22;
      sub_1BE048964();
      *&v57, v58, v59, v60, v61, v62, v63, v64;
      [Tracker addAbsoluteCompletion_];
      v44, v65, v66, v67, v68, v69, v70, v71;
      v43 = v56;
      goto LABEL_20;
    }

    [v105 removeFromSuperview];
    [a7 completeTransition_];
    v44, v98, v99, v100, v101, v102, v103, v104;
  }

  else
  {
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1BD37DB00;
    *(v72 + 24) = v44;
    *&aBlock.m21 = sub_1BD19E0B8;
    *&aBlock.m22 = v72;
    *&aBlock.m11 = MEMORY[0x1E69E9820];
    *&aBlock.m12 = 1107296256;
    *&aBlock.m13 = sub_1BD976224;
    *&aBlock.m14 = &block_descriptor_96;
    v73 = _Block_copy(&aBlock);
    v74 = aBlock.m22;
    swift_unknownObjectRetain();
    v75 = a4;
    sub_1BE048964();
    *&v74, v76, v77, v78, v79, v80, v81, v82;
    [v75 pkui:a9 setAlpha:v73 withAnimationFactory:0.0 completion:?];
    v44, v83, v84, v85, v86, v87, v88, v89;

    _Block_release(v73);
  }
}

id sub_1BD37A2C4(void *a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 view];
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  v23 = v3;
  v7 = [a2 containerView];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v9 = [objc_opt_self() systemBlackColor];
  [v8 setBackgroundColor_];

  [v7 bounds];
  [v8 setFrame_];
  [v7 insertSubview:v8 atIndex:0];
  v10 = [v6 snapshotView];
  if (!v10)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  [v6 frame];
  [v6 convertRect:v7 toCoordinateSpace:?];
  [v10 setFrame_];
  [v8 addSubview_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69B92B0]) initWithMass:1.0 stiffness:500.0 damping:50.0];
  objc_allocWithZone(type metadata accessor for ProvisioningCardReaderBlurView());
  v22 = v11;
  v12 = sub_1BD606998(v22, 10.0, -0.05);
  [v8 bounds];
  [v12 setFrame_];
  [v8 addSubview_];
  sub_1BD6066F8(1, 1);
  v27[0] = 0;
  v13 = *(v23 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
  [v10 pkui:v13 setAlpha:v27 withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
  v14 = v27[0];
  if (v27[0])
  {
    v15 = v27[0];
    [a3 trackAnimation_];
    v16 = [v10 layer];
    v17 = sub_1BE052404();
    [v16 addAnimation:v15 forKey:v17];

    v14 = v27[0];
  }

  v26 = 0;
  CATransform3DMakeScale(&v25, 0.961538462, 0.961538462, 1.0);
  [v10 pkui:&v25 setTransform:v13 withAdditiveAnimationFactory:&v26 animation:?];
  if (v26)
  {
    v18 = v26;
    [a3 &selRef:v18 setWebsiteDataStore:? + 3];
    v19 = [v10 layer];
    v20 = sub_1BE052404();
    [v19 &selRef:v18 authorizationDidAuthorizePayment:v20];
  }

  return v8;
}

void sub_1BD37A6D8(void *a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FC4();
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v17 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController);
  if (v17)
  {
    v71 = v16;
    v72 = &v66 - v14;
    v73 = v15;
    v74 = v10;
    v79 = v3;
    v80 = v13;
    v75 = v8;
    v76 = v6;
    v78 = v4;
    v18 = v17;
    sub_1BD37B7E8(0, 0, 1, 0, 0, 0.0);
    v19 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView;
    v20 = *&v18[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView];
    v81 = v1;
    aBlock[0] = 0;
    v21 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
    v22 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
    [v20 pkui:v21 setAlpha:aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];

    v69 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView;
    v23 = *&v18[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView];
    aBlock[0] = 0;
    [v23 pkui:v21 setAlpha:aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];

    v70 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView;
    v24 = *&v18[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView];
    aBlock[0] = 0;
    [v24 pkui:v21 setAlpha:aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];

    v25 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView;
    v26 = *&v18[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
    if (v26)
    {
      aBlock[0] = 0;
      [v26 pkui:v21 setAlpha:aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    }

    v77 = v7;
    v27 = *&v18[v19];
    aBlock[0] = 0;
    [v27 pkui:v21 setAlpha:aBlock withAnimationFactory:0 animation:1.0 removePriorAnimation:?];
    if (aBlock[0])
    {
      v67 = v21;
      v28 = aBlock[0];
      [v28 setBeginTime_];
      [a1 trackAnimation_];
      v29 = [v27 0x1FADAE878];
      v30 = sub_1BE052404();
      [v29 addAnimation:v28 forKey:v30];

      v22 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      v31 = *&v18[v25];
      v21 = v67;
      if (!v31)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v31 = *&v18[v25];
      if (!v31)
      {
LABEL_15:
        sub_1BD37B7E8(1, 0x3FE199999999999ALL, 0, 0, a1, 1.0);

        return;
      }
    }

    v32 = v31;
    aBlock[0] = 0;
    [v32 v22[430]];
    v33 = aBlock[0];
    if (aBlock[0])
    {
      v34 = aBlock[0];
      [v34 setBeginTime_];
      [a1 trackAnimation_];
      v35 = [v32 0x1FADAE878];
      v36 = v22;
      v37 = sub_1BE052404();
      [v35 addAnimation:v34 forKey:v37];

      v22 = v36;
      v33 = aBlock[0];
    }

    v38 = *&v18[v69];
    aBlock[0] = 0;
    [v38 v22[430]];
    v39 = aBlock[0];
    if (aBlock[0])
    {
      v40 = aBlock[0];
      [v40 setBeginTime_];
      [a1 trackAnimation_];
      v41 = [v38 layer];
      v42 = v22;
      v43 = sub_1BE052404();
      [v41 addAnimation:v40 forKey:v43];

      v22 = v42;
      v39 = aBlock[0];
    }

    v44 = *&v18[v70];
    aBlock[0] = 0;
    [v44 v22[430]];
    v45 = aBlock[0];
    v68 = a1;
    v67 = v32;
    if (aBlock[0])
    {
      v46 = aBlock[0];
      [v46 setBeginTime_];
      [a1 trackAnimation_];
      v47 = [v44 layer];
      v48 = sub_1BE052404();
      [v47 addAnimation:v46 forKey:v48];

      v45 = aBlock[0];
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v49 = sub_1BE052D54();
    v50 = v71;
    sub_1BE051FB4();
    v51 = v72;
    sub_1BE051FF4();
    v73 = *(v73 + 8);
    (v73)(v50, v80);
    v52 = swift_allocObject();
    *(v52 + 16) = v18;
    aBlock[4] = sub_1BD37DC14;
    v83 = v52;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_117;
    v53 = _Block_copy(aBlock);
    v54 = v83;
    v55 = v18;
    v54, v56, v57, v58, v59, v60, v61, v62;
    v63 = v74;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v64 = v76;
    v65 = v79;
    sub_1BE053664();
    MEMORY[0x1BFB3FD90](v51, v63, v64, v53);
    _Block_release(v53);

    (*(v78 + 8))(v64, v65);
    (*(v75 + 8))(v63, v77);
    (v73)(v51, v80);
    a1 = v68;
    goto LABEL_15;
  }
}

void sub_1BD37AF78(void *a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView;
    v5 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
    if (v5)
    {
      v5[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_hapticsEnabled] = 0;
      aBlock = 0;
      v6 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
      v7 = v2;
      v8 = v5;
      [v8 &selRef:v6 peerPaymentAccountResolutionController:&aBlock requestsPresentViewController:0 animated:0.0 + 2];
      if (aBlock)
      {
        v9 = aBlock;
        [a1 trackAnimation_];
        v10 = [v8 layer];
        v11 = sub_1BE052404();
        [v10 addAnimation:v9 forKey:v11];
      }

      v12 = *&v2[v4];
      if (v12)
      {
        v13 = v12;
        v14 = [v7 view];
        if (v14)
        {
          v15 = v14;
          v78 = v2;
          [v14 setNeedsLayout];

          v16 = [v7 view];
          if (v16)
          {
            v17 = v16;
            [v16 layoutIfNeeded];

            v77 = objc_opt_self();
            v18 = *&v7[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
            v19 = swift_allocObject();
            *(v19 + 16) = v13;
            *(v19 + 24) = 5;
            *(v19 + 32) = v7;
            v83 = sub_1BD37DCBC;
            v84 = v19;
            aBlock = MEMORY[0x1E69E9820];
            v80 = 1107296256;
            v81 = sub_1BD126964;
            v82 = &block_descriptor_142_0;
            v20 = _Block_copy(&aBlock);
            v21 = v84;
            v22 = v7;
            v23 = v13;
            v21, v24, v25, v26, v27, v28, v29, v30;
            v83 = PKEdgeInsetsMake;
            v84 = 0;
            aBlock = MEMORY[0x1E69E9820];
            v80 = 1107296256;
            v81 = sub_1BD3F08C0;
            v82 = &block_descriptor_145;
            v31 = _Block_copy(&aBlock);
            [v77 pkui:v18 animateUsingFactory:0 withDelay:v20 options:v31 animations:0.0 completion:?];

            _Block_release(v31);
            _Block_release(v20);
            v2 = v78;
            goto LABEL_11;
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

    else
    {
      v32 = v2;
    }

LABEL_11:
    v33 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type);
    if (*(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type))
    {
      v34 = v33 == 2;
    }

    else
    {
      v34 = 1;
    }

    v35 = !v34;
    sub_1BD37B7E8(1, 0x3FC3333333333333, 0, v35, a1, 0.0);
    v36 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView];
    aBlock = 0;
    v37 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
    [v36 pkui:v37 setAlpha:&aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    v38 = aBlock;
    if (aBlock)
    {
      v39 = aBlock;
      [v39 setBeginTime_];
      [a1 trackAnimation_];
      v40 = [v36 layer];
      v41 = sub_1BE052404();
      [v40 addAnimation:v39 forKey:v41];

      v38 = aBlock;
    }

    v42 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView];
    aBlock = 0;
    [v42 pkui:v37 setAlpha:&aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    v43 = aBlock;
    if (aBlock)
    {
      v44 = aBlock;
      [v44 setBeginTime_];
      [a1 trackAnimation_];
      v45 = [v42 layer];
      v46 = sub_1BE052404();
      [v45 addAnimation:v44 forKey:v46];

      v43 = aBlock;
    }

    v47 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView];
    aBlock = 0;
    [v47 pkui:v37 setAlpha:&aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    v48 = aBlock;
    if (aBlock)
    {
      v49 = aBlock;
      [v49 setBeginTime_];
      [a1 trackAnimation_];
      v50 = [v47 layer];
      v51 = sub_1BE052404();
      [v50 addAnimation:v49 forKey:v51];

      v48 = aBlock;
    }

    v52 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView];
    aBlock = 0;
    [v52 pkui:v37 setAlpha:&aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    if (aBlock)
    {
      v53 = aBlock;
      [v53 setBeginTime_];
      [a1 trackAnimation_];
      v54 = [v52 layer];
      v55 = sub_1BE052404();
      [v54 addAnimation:v53 forKey:v55];

      if (!v33)
      {
        goto LABEL_29;
      }
    }

    else if (!v33)
    {
LABEL_29:

      return;
    }

    if (v33 != 2)
    {
      v56 = objc_opt_self();
      [v37 mass];
      v58 = v57;
      [v37 stiffness];
      v60 = v59;
      [v37 damping];
      v62 = v61;
      [v37 velocity];
      v64 = v63;
      v65 = swift_allocObject();
      *(v65 + 16) = v2;
      v83 = sub_1BD37DC2C;
      v84 = v65;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = sub_1BD126964;
      v82 = &block_descriptor_132_1;
      v66 = _Block_copy(&aBlock);
      v67 = v84;
      v68 = v2;
      v67, v69, v70, v71, v72, v73, v74, v75;
      v83 = PKEdgeInsetsMake;
      v84 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = sub_1BD3F08C0;
      v82 = &block_descriptor_135;
      v76 = _Block_copy(&aBlock);
      [v56 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];

      _Block_release(v76);
      _Block_release(v66);
      return;
    }

    goto LABEL_29;
  }
}