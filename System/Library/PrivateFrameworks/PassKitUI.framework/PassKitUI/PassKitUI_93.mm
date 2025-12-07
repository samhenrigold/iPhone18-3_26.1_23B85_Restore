uint64_t sub_1BD9D6AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v114 = a3;
  v121 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB0, &unk_1BE0D2EA0);
  v122 = *(v8 - 8);
  v123 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v116 = (&v113 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB8, &qword_1BE10B9C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v113 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v115 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v113 - v19;
  v124 = a1;
  v125 = a2;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  v124 = v21;
  v125 = v22;
  v27 = (v26 & 1);
  v126 = v26 & 1;
  v127 = v24;
  sub_1BE052434();
  v29 = v28;
  v120 = v20;
  sub_1BE050DE4();
  v29, v30, v31, v32, v33, v34, v35, v36;
  sub_1BD0DDF10(v21, v23, v27, v37, v38, v39, v40, v41);
  v25, v42, v43, v44, v45, v46, v47, v48;
  v49 = 1;
  if (a4)
  {
    v124 = v114;
    v125 = a4;
    sub_1BE048C84();
    v50 = sub_1BE0506C4();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = [objc_opt_self() secondaryLabelColor];
    v58 = sub_1BE0511C4();
    v59 = sub_1BE050564();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v58, v60, v62, v64, v66, v67, v68, v69;
    sub_1BD0DDF10(v50, v52, (v54 & 1), v70, v71, v72, v73, v74);
    v56, v75, v76, v77, v78, v79, v80, v81;
    v124 = v59;
    v125 = v61;
    v126 = v63 & 1;
    v127 = v65;
    sub_1BE052434();
    v83 = v82;
    v84 = v118;
    sub_1BE050DE4();
    v83, v85, v86, v87, v88, v89, v90, v91;
    sub_1BD0DDF10(v59, v61, (v63 & 1), v92, v93, v94, v95, v96);
    v65, v97, v98, v99, v100, v101, v102, v103;
    v104 = v115;
    sub_1BD0DE19C(v84, v115, &qword_1EBD452C0, &qword_1BE0B7620);
    v105 = v116;
    *v116 = 0;
    *(v105 + 8) = 1;
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CF0, &qword_1BE10B9D0);
    sub_1BD0DE19C(v104, v105 + *(v106 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v84, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v104, &qword_1EBD452C0, &qword_1BE0B7620);
    v107 = v119;
    sub_1BD0DE204(v105, v119, &qword_1EBD44CB0, &unk_1BE0D2EA0);
    v49 = 0;
  }

  else
  {
    v84 = v118;
    v107 = v119;
  }

  (*(v122 + 56))(v107, v49, 1, v123);
  v108 = v120;
  sub_1BD0DE19C(v120, v84, &qword_1EBD452C0, &qword_1BE0B7620);
  v109 = v117;
  sub_1BD0DE19C(v107, v117, &qword_1EBD44CB8, &qword_1BE10B9C0);
  v110 = v121;
  sub_1BD0DE19C(v84, v121, &qword_1EBD452C0, &qword_1BE0B7620);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B128, &qword_1BE10B9C8);
  sub_1BD0DE19C(v109, v110 + *(v111 + 48), &qword_1EBD44CB8, &qword_1BE10B9C0);
  sub_1BD0DE53C(v107, &qword_1EBD44CB8, &qword_1BE10B9C0);
  sub_1BD0DE53C(v108, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v109, &qword_1EBD44CB8, &qword_1BE10B9C0);
  return sub_1BD0DE53C(v84, &qword_1EBD452C0, &qword_1BE0B7620);
}

void sub_1BD9D7018(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1BE04FF64();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04F424();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04FB94();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B000, &qword_1BE10B820);
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B008, &qword_1BE10B828);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v14 = &v60 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B010, &qword_1BE10B830);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B018, &qword_1BE10B838);
  v18 = *(v17 - 8);
  v70 = v17;
  v71 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B020, &qword_1BE10B840);
  v22 = *(v21 - 8);
  v72 = v21;
  v73 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v60 - v23;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B028, &qword_1BE10B848);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v25 = &v60 - v24;
  v85 = a1;
  v80 = &v85;
  v81 = sub_1BD0FFA90;
  v82 = 0;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B030, &qword_1BE10B850);
  sub_1BD9D840C();
  sub_1BE0504E4();
  a1, v26, v27, v28, v29, v30, v31, v32;
  sub_1BE04FB84();
  v33 = sub_1BD0DE4F4(&qword_1EBD5B048, &qword_1EBD5B000, &qword_1BE10B820, MEMORY[0x1E697CD20]);
  v34 = MEMORY[0x1E697C750];
  sub_1BE051144();
  (*(v67 + 8))(v9, v7);
  (*(v64 + 8))(v12, v10);
  sub_1BE050234();
  v85 = v10;
  v86 = v7;
  v87 = v33;
  v88 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v65;
  sub_1BE050904();
  v37 = v36;
  (*(v66 + 8))(v14, v36);
  sub_1BE0501C4();
  v38 = v74;
  sub_1BE04F414();
  v85 = v37;
  v86 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v68;
  sub_1BE0508F4();
  (*(v75 + 8))(v38, v76);
  (*(v69 + 8))(v16, v40);
  v85 = v40;
  v86 = v39;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v63;
  v43 = v70;
  sub_1BE050D24();
  (*(v71 + 8))(v20, v43);
  v44 = v77;
  sub_1BE04FF54();
  v85 = v43;
  v86 = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v72;
  sub_1BE050D14();
  (*(v78 + 8))(v44, v79);
  (*(v73 + 8))(v42, v46);
  v47 = sub_1BE052404();
  v48 = PKLocalizedTicketingString(v47);

  if (v48)
  {
    v49 = sub_1BE052434();
    v51 = v50;

    v85 = v49;
    v86 = v51;
    v83 = v46;
    v84 = v45;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    v52 = v61;
    sub_1BE050C34();
    v51, v53, v54, v55, v56, v57, v58, v59;
    (*(v60 + 8))(v25, v52);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static TileContextDetailsListHostView.create(entries:)(uint64_t a1)
{
  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFC0, &qword_1BE10B590));
  sub_1BE048C84();
  return sub_1BE04EAC4();
}

id TileContextDetailsListHostView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TileContextDetailsListHostView.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextDetailsListHostView();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1BD9D7A84(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD9D7ABC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1BE048C84();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B050, &qword_1BE10B858);
  sub_1BE04AFE4();
  sub_1BD0DE4F4(&qword_1EBD5B058, &qword_1EBD5B050, &qword_1BE10B858, MEMORY[0x1E69E6338]);
  sub_1BD9D8490();
  sub_1BD9D8530(&qword_1EBD5B060, type metadata accessor for TileContextDetailsTableViewEntry, &protocol conformance descriptor for TileContextDetailsTableViewEntry);
  return sub_1BE0519D4();
}

uint64_t sub_1BD9D7C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v140 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v137 - v8;
  v10 = type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v137 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B068, &qword_1BE10B860);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v137 - v17;
  v20 = (&v137 + *(v19 + 56) - v17);
  sub_1BD9D85D4(a1, &v137 - v17);
  sub_1BD9D85D4(a2, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BD9D85D4(v18, v15);
    v53 = *v15;
    v52 = v15[1];
    v54 = v15[2];
    v21 = v15[3];
    v55 = v15[4];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52, v56, v57, v58, v59, v60, v61, v62;
      goto LABEL_12;
    }

    v70 = *v20;
    v71 = v20[1];
    v73 = v20[2];
    v72 = v20[3];
    v140 = v20[4];
    if (v53 == v70 && v52 == v71)
    {
      v71, v56, v70, v58, v59, v60, v61, v62;
      v52, v106, v107, v108, v109, v110, v111, v112;
    }

    else
    {
      v75 = sub_1BE053B84();
      v71, v76, v77, v78, v79, v80, v81, v82;
      v52, v83, v84, v85, v86, v87, v88, v89;
      if ((v75 & 1) == 0)
      {
        v72, v90, v91, v92, v93, v94, v95, v96;
LABEL_32:
        v21, v90, v91, v92, v93, v94, v95, v96;
        goto LABEL_33;
      }
    }

    if (v21)
    {
      if (!v72)
      {
        goto LABEL_32;
      }

      if (v54 == v73 && v21 == v72)
      {
        v21, v90, v91, v92, v93, v94, v95, v96;
        v72, v129, v130, v131, v132, v133, v134, v135;
      }

      else
      {
        v114 = sub_1BE053B84();
        v21, v115, v116, v117, v118, v119, v120, v121;
        v72, v122, v123, v124, v125, v126, v127, v128;
        if ((v114 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v72)
    {
      v21 = v72;
      goto LABEL_32;
    }

    v104 = v55 == v140;
    goto LABEL_37;
  }

  sub_1BD9D85D4(v18, v12);
  v22 = *v12;
  v21 = v12[1];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8, &unk_1BE10B580) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v20[1];
    v138 = *v20;
    v139 = v22;
    v25 = v9;
    v26 = v21;
    v27 = *(v140 + 4);
    v28 = v25;
    v27();
    (v27)(v6, v20 + v23, v4);
    if (v139 == v138 && v26 == v24)
    {
      v24, v29, v138, v30, v31, v32, v33, v34;
      v26, v97, v98, v99, v100, v101, v102, v103;
    }

    else
    {
      v36 = sub_1BE053B84();
      v24, v37, v38, v39, v40, v41, v42, v43;
      v26, v44, v45, v46, v47, v48, v49, v50;
      if ((v36 & 1) == 0)
      {
        v51 = *(v140 + 1);
        v51(v6, v4);
        v51(v28, v4);
LABEL_33:
        sub_1BD9D8578(v18);
        goto LABEL_34;
      }
    }

    v104 = sub_1BE04A9E4();
    v105 = *(v140 + 1);
    v105(v6, v4);
    v105(v28, v4);
LABEL_37:
    sub_1BD9D8578(v18);
    return v104 & 1;
  }

  (*(v140 + 1))(v12 + v23, v4);
LABEL_12:
  v21, v63, v64, v65, v66, v67, v68, v69;
  sub_1BD0DE53C(v18, &qword_1EBD5B068, &qword_1BE10B860);
LABEL_34:
  v104 = 0;
  return v104 & 1;
}

unint64_t sub_1BD9D80AC()
{
  result = qword_1EBD5AFC8;
  if (!qword_1EBD5AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AFC8);
  }

  return result;
}

uint64_t sub_1BD9D8160(uint64_t a1)
{
  result = sub_1BE04AFE4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TileContextDetailsTableViewEntry.Content(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1BD9D8284(uint64_t a1)
{
  sub_1BD9D82F8(319);
  if (v1 <= 0x3F)
  {
    sub_1BD9D8378(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD9D82F8(uint64_t a1)
{
  if (!qword_1EBD5AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD5AFF0);
    }
  }
}

void sub_1BD9D8378(uint64_t a1)
{
  if (!qword_1EBD5AFF8)
  {
    sub_1BE04AA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD5AFF8);
    }
  }
}

unint64_t sub_1BD9D840C()
{
  result = qword_1EBD5B038;
  if (!qword_1EBD5B038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B030, &qword_1BE10B850);
    sub_1BD9D8490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B038);
  }

  return result;
}

unint64_t sub_1BD9D8490()
{
  result = qword_1EBD5B040;
  if (!qword_1EBD5B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B040);
  }

  return result;
}

void *sub_1BD9D84E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *a1;
  result = v4(&v6, &v7);
  *a2 = v6;
  return result;
}

uint64_t sub_1BD9D8530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD9D8578(uint64_t a1)
{
  v2 = type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9D85D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD9D8648()
{
  result = qword_1EBD5B070;
  if (!qword_1EBD5B070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B078, &qword_1BE10B8B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B020, &qword_1BE10B840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B018, &qword_1BE10B838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B010, &qword_1BE10B830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B008, &qword_1BE10B828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B000, &qword_1BE10B820);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD5B048, &qword_1EBD5B000, &qword_1BE10B820, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD9D8530(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B070);
  }

  return result;
}

unint64_t sub_1BD9D88B0()
{
  result = qword_1EBD5B0C8;
  if (!qword_1EBD5B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B0C0, &qword_1BE10B950);
    sub_1BD9D893C();
    sub_1BD9D8A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0C8);
  }

  return result;
}

unint64_t sub_1BD9D893C()
{
  result = qword_1EBD5B0D0;
  if (!qword_1EBD5B0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B0B8, &qword_1BE10B948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47240, &qword_1BE0D9278);
    sub_1BD0DE4F4(&qword_1EBD47238, &qword_1EBD47240, &qword_1BE0D9278, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1BD9D8530(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0D0);
  }

  return result;
}

unint64_t sub_1BD9D8A68()
{
  result = qword_1EBD5B0D8;
  if (!qword_1EBD5B0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B0A0, &qword_1BE10B928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B090, &qword_1BE10B918);
    sub_1BD9D8B60();
    swift_getOpaqueTypeConformance2();
    sub_1BD9D8530(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0D8);
  }

  return result;
}

unint64_t sub_1BD9D8B60()
{
  result = qword_1EBD5B0E0;
  if (!qword_1EBD5B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B090, &qword_1BE10B918);
    sub_1BD0DE4F4(&qword_1EBD5B0E8, &qword_1EBD5B0F0, &unk_1BE10B958, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0E0);
  }

  return result;
}

unint64_t sub_1BD9D8C44()
{
  result = qword_1EBD5B0F8;
  if (!qword_1EBD5B0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B080, &qword_1BE10B908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B100, &qword_1BE10B968);
    sub_1BD9D8D3C();
    swift_getOpaqueTypeConformance2();
    sub_1BD9D8530(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B0F8);
  }

  return result;
}

unint64_t sub_1BD9D8D3C()
{
  result = qword_1EBD5B108;
  if (!qword_1EBD5B108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B100, &qword_1BE10B968);
    sub_1BD0DE4F4(&qword_1EBD53E30, &qword_1EBD53E38, &qword_1BE10B970, MEMORY[0x1E697CD10]);
    sub_1BD0DE4F4(&qword_1EBD5B110, &qword_1EBD5B118, &qword_1BE10B978, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B108);
  }

  return result;
}

unint64_t sub_1BD9D8E20()
{
  result = qword_1EBD5B138;
  if (!qword_1EBD5B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B140, &unk_1BE10B9E0);
    sub_1BD9D88B0();
    sub_1BD9D8C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B138);
  }

  return result;
}

uint64_t type metadata accessor for AppleCardBillingAddressSection(uint64_t a1)
{
  result = qword_1EBD5B148;
  if (!qword_1EBD5B148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9D8F24(uint64_t a1)
{
  sub_1BD9D9088(319, &qword_1EBD5B158, &qword_1EBD456C0, 0x1E69B91E8);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WalletSettingsModel(319);
    if (v2 <= 0x3F)
    {
      sub_1BD9D9088(319, &qword_1EBD3DB10, &qword_1EBD3CCE0, 0x1E69B8330);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PKFeatureIdentifier(319);
        if (v4 <= 0x3F)
        {
          sub_1BD10EE48();
          if (v5 <= 0x3F)
          {
            sub_1BD23BC4C(319, &qword_1EBD42960, &qword_1EBD393C8, "\b6\r");
            if (v6 <= 0x3F)
            {
              sub_1BD23BC4C(319, &qword_1EBD3E9B0, &qword_1EBD416C0, &unk_1BE0BC2A0);
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

void sub_1BD9D9088(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1BD0E5E8C(255, a3, a4);
    v5 = sub_1BE0516D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BD9D90FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for AppleCardBillingAddressSection(0);
  v4 = *(v3 - 8);
  v49 = v3 - 8;
  v50 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B160, &qword_1BE10BA68);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v45 - v9;
  v51 = v1;
  sub_1BD9D9ED4();
  sub_1BD9DA0A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B168, &qword_1BE10BA70);
  sub_1BD1103C8();
  sub_1BD9DAF24();
  sub_1BE051A34();
  sub_1BD9DB0F4(v1, v6);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1BD20FB68(v6, v12 + v11);
  v13 = &v10[*(v47 + 36)];
  *v13 = sub_1BD9DB158;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v14 = *(v2 + 72);
  v54 = *(v2 + 64);
  v55 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v16 = v52;
  v15 = v53;
  v46 = v6;
  sub_1BD9DB0F4(v2, v6);
  v17 = swift_allocObject();
  sub_1BD20FB68(v6, v17 + v11);
  sub_1BD9DB1E0();
  sub_1BD5F9944();
  v18 = v48;
  sub_1BE050F64();
  v15, v19, v20, v21, v22, v23, v24, v25;
  v17, v26, v27, v28, v29, v30, v31, v32;
  v16, v33, v34, v35, v36, v37, v38, v39;
  sub_1BD0DE53C(v10, &qword_1EBD5B160, &qword_1BE10BA68);
  v40 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1B0, &qword_1BE10BA98) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516C4();
  v41 = v46;
  sub_1BD9DB0F4(v2, v46);
  v42 = swift_allocObject();
  sub_1BD20FB68(v41, v42 + v11);
  result = type metadata accessor for ErrorAlertModifier(0);
  v44 = (v40 + *(result + 20));
  *v44 = sub_1BD9DB2FC;
  v44[1] = v42;
  return result;
}

uint64_t sub_1BD9D9510(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B180, &qword_1BE10BA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD9DAFDC();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  return sub_1BE04E844();
}

uint64_t sub_1BD9D9600(uint64_t a1)
{
  v2 = type metadata accessor for AppleCardBillingAddressSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD9DB0F4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD20FB68(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_1BE051704();
}

double sub_1BD9D972C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

id sub_1BD9D978C@<X0>(uint64_t a1@<X8>)
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

void sub_1BD9D98F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v3 = sub_1BE04BD74();
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1B8, &qword_1BE10BAB0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABE0, &unk_1BE0BC820);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1C0, &qword_1BE10BAB8);
  MEMORY[0x1EEE9AC00](v71);
  v13 = &v67 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B190, &unk_1BE10BA80);
  MEMORY[0x1EEE9AC00](v72);
  v15 = &v67 - v14;
  v75 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
  sub_1BE0516A4();
  v16 = v74;
  if (v74)
  {
    v17 = [v74 pkFormattedContactAddressWithoutName];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1BE052434();
      v21 = v20;

      *&v75 = v19;
      *(&v75 + 1) = v21;
      sub_1BD0DDEBC();
      v22 = sub_1BE0506C4();
      v24 = v23;
      v26 = v25;
      *v13 = v22;
      *(v13 + 1) = v23;
      v28 = (v27 & 1);
      v13[16] = v27 & 1;
      *(v13 + 3) = v25;
      swift_storeEnumTagMultiPayload();
      sub_1BD0D7F18(v22, v24, v28);
      sub_1BE048C84();
      sub_1BD0D7F18(v22, v24, v28);
      sub_1BD9DB068();
      sub_1BE048C84();
      sub_1BE04F9A4();

      sub_1BD0DDF10(v22, v24, v28, v29, v30, v31, v32, v33);
      v26, v34, v35, v36, v37, v38, v39, v40;
      sub_1BD0DDF10(v22, v24, v28, v41, v42, v43, v44, v45);
      v26, v46, v47, v48, v49, v50, v51, v52;
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  v68 = v9;
  v69 = v6;
  v53 = v70;
  v54 = *(a1 + 88);
  LOBYTE(v75) = *(a1 + 80);
  *(&v75 + 1) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v74)
  {
    sub_1BE04E4F4();
    v55 = &v11[*(v68 + 36)];
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0, &qword_1BE0BB6F8) + 28);
    v57 = *MEMORY[0x1E697DC20];
    v58 = sub_1BE04E364();
    (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
    *v55 = swift_getKeyPath();
    sub_1BD0DE19C(v11, v8, &qword_1EBD3ABE0, &unk_1BE0BC820);
    swift_storeEnumTagMultiPayload();
    sub_1BD171000();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v11, &qword_1EBD3ABE0, &unk_1BE0BC820);
  }

  else
  {
    (*(v53 + 104))(v5, *MEMORY[0x1E69B80F0], v3);
    v59 = PKPassKitBundle();
    if (!v59)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v60 = v59;
    v61 = sub_1BE04B6F4();
    v63 = v62;

    (*(v53 + 8))(v5, v3);
    *&v75 = v61;
    *(&v75 + 1) = v63;
    sub_1BD0DDEBC();
    *v8 = sub_1BE0506C4();
    *(v8 + 1) = v64;
    v8[16] = v65 & 1;
    *(v8 + 3) = v66;
    swift_storeEnumTagMultiPayload();
    sub_1BD171000();
    sub_1BE04F9A4();
  }

  sub_1BD0DE19C(v15, v13, &qword_1EBD5B190, &unk_1BE10BA80);
  swift_storeEnumTagMultiPayload();
  sub_1BD9DB068();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v15, &qword_1EBD5B190, &unk_1BE10BA80);
}

void sub_1BD9D9ED4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80F0], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v38 = v7;
    v39 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v14 = v13;
    v38 = v10;
    v39 = v11;
    v16 = (v15 & 1);
    v40 = v15 & 1;
    v41 = v13;
    sub_1BE052434();
    v18 = v17;
    sub_1BE050DE4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    sub_1BD0DDF10(v10, v12, v16, v26, v27, v28, v29, v30);
    v14, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD9DA0A4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80F0], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v79 = v7;
    v80 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    LOBYTE(v6) = v13;
    v15 = v14;
    LODWORD(v79) = sub_1BE04FC94();
    v16 = sub_1BE050574();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    sub_1BD0DDF10(v10, v12, (v6 & 1), v21, v23, v24, v25, v26);
    v15, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_1BE050454();
    v35 = sub_1BE0505F4();
    v37 = v36;
    LOBYTE(v15) = v38;
    v40 = v39;
    v34, v36, v38, v39, v41, v42, v43, v44;
    sub_1BD0DDF10(v16, v18, (v20 & 1), v45, v46, v47, v48, v49);
    v22, v50, v51, v52, v53, v54, v55, v56;
    v79 = v35;
    v80 = v37;
    v57 = (v15 & 1);
    v81 = v57;
    v82 = v40;
    sub_1BE052434();
    v59 = v58;
    sub_1BE050DE4();
    v59, v60, v61, v62, v63, v64, v65, v66;
    sub_1BD0DDF10(v35, v37, v57, v67, v68, v69, v70, v71);
    v40, v72, v73, v74, v75, v76, v77, v78;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD9DA31C(uint64_t a1)
{
  v2 = type metadata accessor for AppleCardBillingAddressSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE052404();
    sub_1BD9DB0F4(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    sub_1BD20FB68(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
    aBlock[4] = sub_1BD9DB424;
    v19 = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD14E1D8;
    aBlock[3] = &block_descriptor_19_6;
    v10 = _Block_copy(aBlock);
    v19, v11, v12, v13, v14, v15, v16, v17;
    [v6 userInfoForAccountIdentifier:v7 forceFetch:1 completion:v10];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD9DA4D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a1)
    {
      v3 = [a1 creditUserInfo];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 primaryUser];

        if (v5)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
          sub_1BE0516B4();
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

id sub_1BD9DA5AC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for AppleCardBillingAddressSection(0);
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v4;
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = a1[1];
  *&v46 = *a1;
  *(&v46 + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4CD90, &unk_1BE10BAA0);
  sub_1BE0516A4();
  v33 = v41;
  v13 = a1[2];
  v14 = *MEMORY[0x1E69B80F0];
  v15 = *(v6 + 104);
  v15(v11, v14, v5);
  v34 = v13;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v32 = sub_1BE04B6F4();
    v31 = v18;

    v19 = *(v6 + 8);
    v19(v11, v5);
    v15(v8, v14, v5);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();
      v23 = v22;

      v19(v8, v5);
      v24 = v37;
      sub_1BD9DB0F4(a1, v37);
      v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v26 = swift_allocObject();
      sub_1BD20FB68(v24, v26 + v25);
      *&v41 = v33;
      sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
      sub_1BE051694();
      v41 = v46;
      *&v42 = v34;
      *(&v42 + 1) = v32;
      *&v43 = v31;
      *(&v43 + 1) = v21;
      *&v44 = v23;
      BYTE8(v44) = 0;
      *(&v44 + 9) = *v40;
      HIDWORD(v44) = *&v40[3];
      *&v45 = sub_1BD9DB314;
      *(&v45 + 1) = v26;
      v47 = v34;
      v48 = v32;
      v49 = v31;
      v50 = v21;
      v51 = v23;
      v52 = 0;
      *&v53[3] = *&v40[3];
      *v53 = *v40;
      v54 = sub_1BD9DB314;
      v55 = v26;
      sub_1BD5F9A10(&v41, v39);
      result = sub_1BD5F9A48(&v46);
      v27 = v44;
      v28 = v45;
      v29 = v38;
      v38[2] = v43;
      v29[3] = v27;
      v29[4] = v28;
      v30 = v42;
      *v29 = v41;
      v29[1] = v30;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD9DA9AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppleCardBillingAddressSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = *(v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
  sub_1BE0516A4();
  v8 = v39;
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BE052404();
    sub_1BD9DB0F4(v2, &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    sub_1BD20FB68(v7, v14 + v12);
    *(v14 + v13) = v8;
    v37 = sub_1BD9DB378;
    v38 = v14;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v35 = sub_1BD14E1D8;
    v36 = &block_descriptor_236;
    v15 = _Block_copy(&aBlock);
    v16 = v38;
    v17 = v8;
    v16, v18, v19, v20, v21, v22, v23, v24;
    [v10 updateUserInfoForAccountIdentifier:v11 contact:a1 completion:v15];
    _Block_release(v15);

    v25 = *(v2 + 64);
    v26 = *(v2 + 72);
    LOBYTE(aBlock) = v25;
    *(&aBlock + 1) = v26;
    LOBYTE(v39) = 0;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
    v26, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9DAC08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for FeatureError(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for AppleCardBillingAddressSection(0);
  sub_1BD0DE19C(v5, v2, &qword_1EBD416C0, &unk_1BE0BC2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v5, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

void sub_1BD9DAD48(void *a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = a3[13];
  if (a2 || !a1)
  {
    v21 = a3[12];
    v22 = v14;
    v20 = a4;
    v16 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
    sub_1BE0516B4();
    v17 = a3[7];
    if (a2)
    {
      a2 = sub_1BE04A844();
    }

    v18 = PKAccountDisplayableError();

    FeatureError.init(feature:error:)(v17, v18, v13);
    type metadata accessor for AppleCardBillingAddressSection(0);
    sub_1BD0DE19C(v13, v10, &qword_1EBD416C0, &unk_1BE0BC2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    sub_1BE0516B4();
    sub_1BD0DE53C(v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
  }

  else
  {
    v21 = a3[12];
    v22 = v14;
    v20 = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
    sub_1BE0516B4();
  }
}

unint64_t sub_1BD9DAF24()
{
  result = qword_1EBD5B170;
  if (!qword_1EBD5B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B168, &qword_1BE10BA70);
    sub_1BD9DAFDC();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B170);
  }

  return result;
}

unint64_t sub_1BD9DAFDC()
{
  result = qword_1EBD5B178;
  if (!qword_1EBD5B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B180, &qword_1BE10BA78);
    sub_1BD9DB068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B178);
  }

  return result;
}

unint64_t sub_1BD9DB068()
{
  result = qword_1EBD5B188;
  if (!qword_1EBD5B188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B190, &unk_1BE10BA80);
    sub_1BD171000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B188);
  }

  return result;
}

uint64_t sub_1BD9DB0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardBillingAddressSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BD9DB170@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for AppleCardBillingAddressSection(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BD9DA5AC(v4, a1);
}

unint64_t sub_1BD9DB1E0()
{
  result = qword_1EBD5B198;
  if (!qword_1EBD5B198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B160, &qword_1BE10BA68);
    sub_1BD9DB26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B198);
  }

  return result;
}

unint64_t sub_1BD9DB26C()
{
  result = qword_1EBD5B1A0;
  if (!qword_1EBD5B1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B1A8, &qword_1BE10BA90);
    sub_1BD1103C8();
    sub_1BD9DAF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B1A0);
  }

  return result;
}

void sub_1BD9DB378(void *a1, void *a2)
{
  v5 = *(type metadata accessor for AppleCardBillingAddressSection(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD9DAD48(a1, a2, (v2 + v6), v7);
}

double sub_1BD9DB424(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppleCardBillingAddressSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD9DA4D0(a1, a2, v6);
}

uint64_t objectdestroyTm_117()
{
  v1 = (type metadata accessor for AppleCardBillingAddressSection(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[2], v10, v11, v12, v13, v14, v15, v16;

  v2[4], v17, v18, v19, v20, v21, v22, v23;
  v2[6], v24, v25, v26, v27, v28, v29, v30;
  v2[9], v31, v32, v33, v34, v35, v36, v37;
  v2[11], v38, v39, v40, v41, v42, v43, v44;

  v2[13], v45, v46, v47, v48, v49, v50, v51;
  v52 = (v2 + v1[14]);
  v53 = type metadata accessor for FeatureError(0);
  if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
  {

    v54 = *(v53 + 20);
    v55 = sub_1BE04B824();
    v56 = *(v55 - 8);
    if (!(*(v56 + 48))(v52 + v54, 1, v55))
    {
      (*(v56 + 8))(v52 + v54, v55);
    }
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v52 + *(v57 + 28)), v58, v59, v60, v61, v62, v63, v64;

  return swift_deallocObject();
}

uint64_t sub_1BD9DB6B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppleCardBillingAddressSection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD9DB724()
{
  result = qword_1EBD5B1C8;
  if (!qword_1EBD5B1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B1B0, &qword_1BE10BA98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B160, &qword_1BE10BA68);
    sub_1BD9DB1E0();
    sub_1BD5F9944();
    swift_getOpaqueTypeConformance2();
    sub_1BD9DB838(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B1C8);
  }

  return result;
}

uint64_t sub_1BD9DB838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD9DB888()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD9DB8FC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI19PresentationContext__presenter;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3E0, &unk_1BE0C1168);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PresentationContext(uint64_t a1)
{
  result = qword_1EBD361A0;
  if (!qword_1EBD361A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9DB9F8(uint64_t a1)
{
  sub_1BD9DBA88(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD9DBA88(uint64_t a1)
{
  if (!qword_1EBD368B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D3F8, &qword_1BE10BB10);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD368B0);
    }
  }
}

uint64_t sub_1BD9DBAEC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PresentationContext(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

id HowToUseWalletViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HowToUseWalletViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HowToUseWalletViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HowToUseWalletViewProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HowToUseWalletViewProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *_s9PassKitUI26HowToUseWalletViewProviderC04makeH10Controller5model15destinationCardSo06UIViewK0CSgSo05PKHowefG5ModelC_So0pefgN0CSgtFZ_0(void *a1, void *a2)
{
  if (!PKEvergreenEducationEnabled())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1D0, &qword_1BE10BBD0);
  sub_1BE051694();
  v4 = a2;
  v5 = a1;
  sub_1BE051694();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B1D8, &qword_1BE10BBD8));
  v7 = sub_1BE04F894();
  v8 = [v5 titleKey];
  if (v8 && (v9 = v8, v10 = [v5 localizationBundle], v11 = PKLocalizedHowToUseWalletStringWithBundle(v9, v10), v9, v10, v11))
  {
    v12 = [v7 navigationItem];
    [v12 setTitle_];
  }

  else
  {
    v12 = [v7 navigationItem];
    v13 = sub_1BE052404();
    v11 = PKLocalizedPaymentString(v13);

    [v12 setTitle_];
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:0 action:0];
  sub_1BD3FB6B0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_1BE0530B4();
  [v14 setPrimaryAction_];

  v17 = v7;
  v18 = [v17 navigationItem];
  [v18 setRightBarButtonItem_];

  return v7;
}

id sub_1BD9DBF48(void *a1, uint64_t a2)
{
  if (a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    v4 = sub_1BE052724();
    a1, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(a2, 1, v12) != 1)
  {
    v14 = sub_1BE04A9C4();
    (*(v13 + 8))(a2, v12);
  }

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStoreIDs:v4 defaultLaunchURL:v14];

  return v15;
}

id sub_1BD9DC084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_linkedApplication] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_identifier];
  *v8 = 0xD000000000000013;
  *(v8 + 1) = 0x80000001BE146760;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_product] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_inApp] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD9DC238(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_inApp);
  if (v16)
  {
    v37 = v2;
    v38 = a2;
    v17 = v16;
    v18 = [v17 associatedStoreIdentifiers];
    if (v18)
    {
      v19 = v18;
      sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
      v20 = sub_1BE052744();
    }

    else
    {
      v20 = 0;
    }

    v21 = [v17 appLaunchURL];
    if (v21)
    {
      v22 = v21;
      sub_1BE04A9F4();

      (*(v6 + 32))(v15, v8, v5);
      (*(v6 + 56))(v15, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v15, 1, 1, v5);
    }

    sub_1BD0E5E8C(0, &unk_1EBD5B210, off_1E80052C0);
    sub_1BD38F438(v15, v11);
    v23 = sub_1BD9DBF48(v20, v11);
    v24 = v23;
    if (v23 && ![v23 state])
    {
      v25 = swift_allocObject();
      v26 = v38;
      *(v25 + 16) = a1;
      *(v25 + 24) = v26;
      aBlock[4] = sub_1BD19E0B8;
      v40 = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_237;
      v27 = _Block_copy(aBlock);
      v28 = v40;
      sub_1BE048964();
      v28, v29, v30, v31, v32, v33, v34, v35;
      [v24 reloadApplicationStateIfNecessaryWithCompletion_];

      _Block_release(v27);
      sub_1BD226BBC(v15);
      v36 = *(v37 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_linkedApplication);
      *(v37 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_linkedApplication) = v24;
    }

    else
    {
      a1(1);

      sub_1BD226BBC(v15);
    }
  }

  else
  {
    (a1)(0, v13);
  }
}

uint64_t sub_1BD9DC5B0()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_linkedApplication);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  v7 = v0;
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v2 + 8))(v4, v1);
  v9 = [objc_allocWithZone(PKPaymentSetupAppRequiredViewController) initWithSetupContext:v8 product:*(v7 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_product) linkedApplication:v6];
  if (v9)
  {
    sub_1BE052434();
    v11 = v10;
    v12 = v9;
    v13 = sub_1BE04BB74();
    v11, v14, v15, v16, v17, v18, v19, v20;
    [v12 setReporter_];
  }

  return v9;
}

uint64_t sub_1BD9DC758()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9DC794(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupAppRequiredFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD9DC8AC(void (*a1)(void, void, void, void), uint64_t a2)
{
  v69 = a2;
  v68 = a1;
  v2 = sub_1BE04BD74();
  v70 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v65 - v5;
  v7 = sub_1BE04B8D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  v14 = sub_1BE04B944();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v15 + 8))(v17, v14);
  (*(v8 + 104))(v10, *MEMORY[0x1E69B7F80], v7);
  sub_1BD9DD4AC(&qword_1EBD55170, MEMORY[0x1E69B7F90], MEMORY[0x1E69B7F98]);
  v18 = sub_1BE052334();
  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  if (v18)
  {
    v68(0, 0, 0, 0);
    return;
  }

  v66 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2B0, &unk_1BE0CCA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  *(inited + 32) = 2;
  v65 = inited + 32;
  v21 = *(v70 + 104);
  v21(v6, *MEMORY[0x1E69B80F8], v2);
  v22 = PKPassKitBundle();
  if (!v22)
  {
    __break(1u);
    goto LABEL_8;
  }

  v23 = v22;
  v24 = sub_1BE04B6F4();
  v26 = v25;

  v27 = *(v70 + 8);
  v27(v6, v2);
  v28 = MEMORY[0x1E69E6158];
  *(inited + 40) = v24;
  *(inited + 48) = v26;
  *(inited + 64) = v28;
  *(inited + 72) = 1021;
  v29 = v67;
  v21(v67, *MEMORY[0x1E69B80D0], v2);
  v30 = PKPassKitBundle();
  if (!v30)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = sub_1BE04B6F4();
  v34 = v33;

  v27(v29, v2);
  *(inited + 80) = v32;
  *(inited + 88) = v34;
  *(inited + 104) = MEMORY[0x1E69E6158];
  *(inited + 112) = 1062;
  *(inited + 144) = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  v35 = sub_1BD1AB050(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE20, &unk_1BE10BC70);
  swift_arrayDestroy();
  v36 = sub_1BD1A7FCC(v35);
  v35, v37, v38, v39, v40, v41, v42, v43;
  v44 = sub_1BE052224();
  v36, v45, v46, v47, v48, v49, v50, v51;
  v52 = swift_allocObject();
  v53 = v69;
  v52[2] = v68;
  v52[3] = v53;
  v54 = v66;
  v52[4] = v66;
  aBlock[4] = sub_1BD9DD430;
  v72 = v52;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD1AA864;
  aBlock[3] = &block_descriptor_238;
  v55 = _Block_copy(aBlock);
  v56 = v72;
  sub_1BE048964();
  v57 = v54;
  v56, v58, v59, v60, v61, v62, v63, v64;
  [v57 evaluatePolicy:1025 options:v44 reply:v55];
  _Block_release(v55);
}

uint64_t sub_1BD9DCEE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1BE051F54();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE051FA4();
  v13 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v31 = sub_1BE052D54();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1BD9DD43C;
  v35 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_9_10;
  v17 = _Block_copy(aBlock);
  v18 = v35;
  sub_1BE048C84();
  v19 = a2;
  sub_1BE048964();
  v20 = a5;
  v18, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD9DD4AC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v28 = v31;
  MEMORY[0x1BFB3FDF0](0, v15, v12, v17);
  _Block_release(v17);

  (*(v33 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v32);
}

uint64_t sub_1BD9DD1CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9DD208(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD9DD258()
{
  v1 = [objc_allocWithZone(PKCurrentDevicePasscodeViewController) initWithDelegate_];
  sub_1BE052434();
  v3 = v2;
  v4 = sub_1BE04BB74();
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 setReporter_];

  return v1;
}

id sub_1BD9DD35C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_identifier];
  *v5 = 0xD000000000000032;
  *(v5 + 1) = 0x80000001BE10BC00;
  *&v2[OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_context] = a1;
  swift_unknownObjectWeakAssign();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  sub_1BE048964();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1BD9DD43C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v2 = 0x6961662068747561;
    v3 = 0xEB0000000064656CLL;
    v4 = 3;
  }

  return (*(v0 + 32))(v2, v3, 0, v4);
}

uint64_t sub_1BD9DD4AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD9DD4F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v3 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_context);
    objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeNewPasscodeFlowItem());
    sub_1BE048964();
    sub_1BE048C84();
    v23 = v7;
    v9 = sub_1BD302300(v8, a1, a2, v23);
    v8, v10, v11, v12, v13, v14, v15, v16;

    v17 = v3 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD865948(v3, &off_1F3BCB0F0, v9, &off_1F3B9DD48, ObjectType, v18);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v20 = v3 + OBJC_IVAR____TtC9PassKitUI50ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 8);
      v22 = swift_getObjectType();
      sub_1BD8659A4(v3, &off_1F3BCB0F0, v22, v21);

      swift_unknownObjectRelease();
    }
  }
}

id PKPaymentTransactionFoundInMailViewCell.configure(messageID:senderEmailAddress:dateSent:title:subject:subtitle:deeplinkURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2B8, &unk_1BE10BC80);
  v13[4] = sub_1BD9DD8F4();
  __swift_allocate_boxed_opaque_existential_1(v13);
  type metadata accessor for FinanceKitFoundInMailRowView(0);
  sub_1BD9DD958();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FD10](v13);
  return [v11 setNeedsUpdateConfiguration];
}

double sub_1BD9DD76C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = type metadata accessor for FinanceKitFoundInMailRowView(0);
  v17 = v16[6];
  v18 = sub_1BE04AF64();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a9[v17], a5, v18);
  (*(v19 + 56))(&a9[v17], 0, 1, v18);
  sub_1BD38F438(a13, &a9[v16[10]]);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v20 = &a9[v16[7]];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &a9[v16[8]];
  *v21 = a8;
  *(v21 + 1) = a10;
  v22 = &a9[v16[9]];
  *v22 = a11;
  *(v22 + 1) = a12;
  v23 = &a9[v16[11]];
  *v23 = 0;
  *(v23 + 1) = 0;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();

  sub_1BE048C84();
  return result;
}

unint64_t sub_1BD9DD8F4()
{
  result = qword_1EBD5B2C0;
  if (!qword_1EBD5B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2B8, &unk_1BE10BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B2C0);
  }

  return result;
}

unint64_t sub_1BD9DD958()
{
  result = qword_1EBD5AAB8;
  if (!qword_1EBD5AAB8)
  {
    type metadata accessor for FinanceKitFoundInMailRowView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AAB8);
  }

  return result;
}

id PKPaymentTransactionFoundInMailViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v7];

  return v15;
}

id PKPaymentTransactionFoundInMailViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v15;
}

id PKPaymentTransactionFoundInMailViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentTransactionFoundInMailViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKPaymentTransactionFoundInMailViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD9DE0A8(void *a1)
{
  v1 = [a1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v2 = sub_1BE052744();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    v2, v3, v4, v5, v6, v7, v8, v9;
    return 0;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1BFB40900](0, v2);
LABEL_6:
    v19 = v11;
    v2, v12, v13, v14, v15, v16, v17, v18;
    v20 = [v19 value];

    if (v20)
    {
      v21 = sub_1BE052434();

      return v21;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_1BD9DE1C4(uint64_t a1, uint64_t a2, char a3, id a4)
{
  [a4 mutableCopy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD4DF70, 0x1E695CF18);
  swift_dynamicCast();
  v5 = sub_1BE052404();
  v6 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0B7020;
  *(v7 + 32) = v6;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v9 = sub_1BE052724();
  v7, v10, v11, v12, v13, v14, v15, v16;
  [v29 setEmailAddresses_];

  sub_1BD6B04D8(a3);
  v18 = v17;
  v19 = v29;
  v20 = sub_1BE052404();
  v18, v21, v22, v23, v24, v25, v26, v27;
  [v19 setValueSource_];

  return v19;
}

id sub_1BD9DE3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  result = sub_1BD9DE1C4(a1, a2, a3, *v4);
  *a4 = result;
  return result;
}

unint64_t sub_1BD9DE3CC(uint64_t a1)
{
  *(a1 + 8) = sub_1BD9DE3FC();
  result = sub_1BD9DE450();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BD9DE3FC()
{
  result = qword_1EBD5B2C8;
  if (!qword_1EBD5B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B2C8);
  }

  return result;
}

unint64_t sub_1BD9DE450()
{
  result = qword_1EBD5B2D0;
  if (!qword_1EBD5B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B2D0);
  }

  return result;
}

void sub_1BD9DE4A4(uint64_t a1, void *a2, char a3)
{
  v4 = objc_opt_self();
  v5 = sub_1BE052724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B69E0;
  sub_1BE052434();
  v8 = v7;
  v9 = sub_1BE052404();
  v10 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
  v11 = sub_1BE052404();
  v8, v12, v13, v14, v15, v16, v17, v18;
  v19 = [v10 initWithLabel:v11 value:v9];

  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  *(v6 + 32) = v19;
  v20 = sub_1BE052724();
  v6, v21, v22, v23, v24, v25, v26, v27;
  v28 = sub_1BE052724();
  v29 = [v4 pkContactWithNameComponents:0 postalAddresses:v5 emailAddresses:v20 phoneNumbers:v28];

  if (v29)
  {
    a2, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD6B04D8(a3);
    v38 = v37;
    v39 = v29;
    v40 = sub_1BE052404();
    v38, v41, v42, v43, v44, v45, v46, v47;
    [v39 setValueSource_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9DE6A4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  sub_1BD0D4534((v8 + 4));
  v8[7], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocClassInstance();
}

char *sub_1BD9DE718(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BE0B98D0;
    v38 = *(v2 + 16);
    v37 = *(v2 + 24);
    v39 = objc_allocWithZone(type metadata accessor for ProvisioningInAppHeroFlowItem());
    sub_1BE048964();
    sub_1BE048964();
    *(v36 + 32) = sub_1BD2AF2E8(v38, v37);
    *(v36 + 40) = &off_1F3B9B580;
    v40 = objc_allocWithZone(type metadata accessor for ProvisioningDevicePickerFlowItem());
    v41 = sub_1BD7311A0(v38, v37);
    v38, v42, v43, v44, v45, v46, v47, v48;
    v37, v49, v50, v51, v52, v53, v54, v55;
    *(v36 + 48) = v41;
    *(v36 + 56) = &off_1F3BB8EE0;
    v56 = type metadata accessor for ProvisioningDeviceFullFlowItem();
    v57 = objc_allocWithZone(v56);
    v57[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete] = 0;
    *&v57[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v58 = &v57[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_identifier];
    *v58 = 0xD000000000000012;
    v58[1] = 0x80000001BE12B2F0;
    v59 = OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_dismissalConfiguration;
    v57[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_dismissalConfiguration] = 2;
    *&v57[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_context] = v38;
    *&v57[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_configuration] = v37;
    v57[v59] = 1;
    v63.receiver = v57;
    v63.super_class = v56;
    sub_1BE048964();
    sub_1BE048964();
    *(v36 + 64) = objc_msgSendSuper2(&v63, sel_init);
    *(v36 + 72) = &off_1F3BC2038;
    type metadata accessor for UIStaticFlowSection();
    v60 = swift_allocObject();
    *(v60 + 24) = 0;
    swift_unknownObjectWeakInit();
    result = v60;
    *(v60 + 40) = 0x626E4F7070416E49;
    *(v60 + 48) = 0xEF676E696472616FLL;
    *(v60 + 56) = v36;
    *(v60 + 32) = 514;
    return result;
  }

  ObjectType = swift_getObjectType();
  if ((*(a2 + 8))(ObjectType, a2) == 0x626E4F7070416E49 && v5 == 0xEF676E696472616FLL)
  {
    v5, v5, v6, v7, v8, v9, v10, v11;
    goto LABEL_12;
  }

  v13 = v5;
  v14 = sub_1BE053B84();
  v13, v15, v16, v17, v18, v19, v20, v21;
  if (v14)
  {
LABEL_12:
    v61 = *(v2 + 16);
    v62 = *(v2 + 24);
    objc_allocWithZone(type metadata accessor for ProvisioningInAppAddPassFlowItem());
    sub_1BE048964();
    sub_1BE048964();
    return sub_1BDA8F780(v61, v62);
  }

  type metadata accessor for ProvisioningInAppAddPassFlowItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v23 = *&result[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_provisionedPasses];
    if (v23)
    {
      v24 = *(v2 + 16);
      v25 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
      v26 = v23;
      v27 = sub_1BE048964();
      v28 = sub_1BD989980(v27, v26);
      v24, v29, v30, v31, v32, v33, v34, v35;

      return v28;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1BD9DEAAC(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PKPaymentRewardsRedemptionStatus(319);
    if (v2 <= 0x3F)
    {
      sub_1BD9DEC28(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        sub_1BD9DEC28(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
        if (v4 <= 0x3F)
        {
          sub_1BD0E5E8C(319, &qword_1EBD43B00, 0x1E69B8780);
          if (v5 <= 0x3F)
          {
            sub_1BD9DEC7C(319);
            if (v6 <= 0x3F)
            {
              sub_1BD0E5E8C(319, qword_1EBD4F790, 0x1E69DCAB8);
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

void sub_1BD9DEC28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1BD9DEC7C(uint64_t a1)
{
  if (!qword_1EBD56518)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43B00, 0x1E69B8780);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD56518);
    }
  }
}

uint64_t sub_1BD9DECE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v68 - v21;
  v22 = sub_1BD9DF62C();
  if (v22 && (v23 = v22, v24 = [v22 monetaryValue], v23, (v78 = v24) != 0))
  {
    v80 = v9;
    v25 = [a1 details];
    v26 = [v25 originalTransaction];

    v27 = [a1 identifier];
    v28 = sub_1BE052434();
    v76 = v29;
    v77 = v28;

    if (v26 && (v30 = [v26 merchantRawName]) != 0)
    {
      v31 = v30;
      v32 = sub_1BE052434();
      v74 = v33;
      v75 = v32;
    }

    else
    {
      v74 = 0;
      v75 = 0;
    }

    v37 = sub_1BD9DF6D0();
    v72 = v38;
    v73 = v37;
    v71 = [v26 monetaryValue];
    if (v26)
    {
      v39 = [v26 descriptionText];
      if (v39)
      {
        v40 = v39;
        v69 = sub_1BE052434();
        v70 = v41;
      }

      else
      {
        v69 = 0;
        v70 = 0;
      }

      v43 = [v26 timestamp];
      if (v43)
      {
        v44 = v43;
        sub_1BE04AEE4();

        v42 = *(v5 + 56);
        v42(v19, 0, 1, v4);
      }

      else
      {
        v42 = *(v5 + 56);
        v42(v19, 1, 1, v4);
      }

      sub_1BD0DE204(v19, v83, &unk_1EBD39970, &unk_1BE0B9F80);
    }

    else
    {
      v42 = *(v5 + 56);
      v42(v83, 1, 1, v4);
      v69 = 0;
      v70 = 0;
    }

    v68 = [a1 status];
    v45 = [a1 statusLink];
    if (v45)
    {
      v46 = v80;
      v47 = v45;
      sub_1BE04A9F4();

      v48 = 0;
    }

    else
    {
      v48 = 1;
      v46 = v80;
    }

    v49 = sub_1BE04AA64();
    (*(*(v49 - 8) + 56))(v46, v48, 1, v49);
    v50 = [a1 createdAt];
    if (v50)
    {
      v51 = v81;
      v52 = v50;
      sub_1BE04AEE4();

      v53 = *(v5 + 32);
      v53(v14, v51, v4);
      v42(v14, 0, 1, v4);
      v54 = v82;
      v53(v82, v14, v4);
      v42(v54, 0, 1, v4);
    }

    else
    {
      v55 = 1;
      v42(v14, 1, 1, v4);
      v56 = [a1 updatedAt];
      if (v56)
      {
        v57 = v79;
        v58 = v56;
        sub_1BE04AEE4();

        v59 = v57;
        v55 = 0;
      }

      else
      {
        v59 = v79;
      }

      v42(v59, v55, 1, v4);
      v54 = v82;
      sub_1BD0DE204(v59, v82, &unk_1EBD39970, &unk_1BE0B9F80);
      if ((*(v5 + 48))(v14, 1, v4) != 1)
      {
        sub_1BD0DE53C(v14, &unk_1EBD39970, &unk_1BE0B9F80);
      }
    }

    v60 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];

    v61 = v76;
    *a2 = v77;
    a2[1] = v61;
    v62 = v74;
    a2[2] = v75;
    a2[3] = v62;
    v63 = type metadata accessor for RedemptionPresentation(0);
    *(a2 + v63[9]) = v78;
    v64 = (a2 + v63[10]);
    v65 = v72;
    *v64 = v73;
    v64[1] = v65;
    *(a2 + v63[12]) = v71;
    sub_1BD0DE204(v83, a2 + v63[11], &unk_1EBD39970, &unk_1BE0B9F80);
    v66 = (a2 + v63[13]);
    v67 = v70;
    *v66 = v69;
    v66[1] = v67;
    a2[4] = v68;
    sub_1BD0DE204(v80, a2 + v63[7], &unk_1EBD3CF70, &qword_1BE0BA000);
    sub_1BD0DE204(v54, a2 + v63[8], &unk_1EBD39970, &unk_1BE0B9F80);
    *(a2 + v63[14]) = v60;
    return (*(*(v63 - 1) + 56))(a2, 0, 1, v63);
  }

  else
  {

    v34 = type metadata accessor for RedemptionPresentation(0);
    v35 = *(*(v34 - 8) + 56);

    return v35(a2, 1, 1, v34);
  }
}

id sub_1BD9DF44C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for RedemptionPresentation(0) + 52) + 8) && (v5 = sub_1BE052404(), v6 = PKMerchantFormattedDisplayName(), v5, v6))
  {
    v7 = sub_1BE052434();

    return v7;
  }

  else if (*(v0 + 24) && (v9 = sub_1BE052404(), v10 = PKMerchantFormattedDisplayName(), v9, v10))
  {
    v11 = sub_1BE052434();

    return v11;
  }

  else
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69B8088], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();

      (*(v2 + 8))(v4, v1);
      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1BD9DF62C()
{
  v1 = [v0 details];
  if (!v1 || (v2 = v1, v3 = [v1 redeemed], v2, (result = v3) == 0))
  {
    result = [v0 details];
    if (result)
    {
      v5 = result;
      v6 = [result intended];

      return v6;
    }
  }

  return result;
}

id sub_1BD9DF6D0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - v5;
  result = sub_1BD9DF62C();
  if (result)
  {
    v8 = result;
    v9 = [result type];
    if (v9 == 3)
    {
      (*(v1 + 104))(v6, *MEMORY[0x1E69B8088], v0);
      result = PKPassKitBundle();
      if (result)
      {
        v10 = result;
        v11 = sub_1BE04B6F4();

        (*(v1 + 8))(v6, v0);
        return v11;
      }

      __break(1u);
    }

    else
    {
      if ((v9 - 1) <= 1)
      {
        v12 = [v8 value];
        if (v12)
        {
          v25[1] = 0;
          v25[2] = 0;
          v26 = 0;
          v27 = 1;
          v13 = v12;
          sub_1BE0533E4();

          if (v27 != 1)
          {
            v14 = sub_1BE053454();
            v16 = v15;
            (*(v1 + 104))(v3, *MEMORY[0x1E69B8088], v0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
            v17 = swift_allocObject();
            *(v17 + 16) = xmmword_1BE0B69E0;
            *(v17 + 56) = MEMORY[0x1E69E6158];
            *(v17 + 64) = sub_1BD110550();
            *(v17 + 32) = v14;
            *(v17 + 40) = v16;
            v11 = sub_1BE04B714();
            v17, v18, v19, v20, v21, v22, v23, v24;

            (*(v1 + 8))(v3, v0);
            return v11;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_1BD9DF9BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v63[-v5];
  sub_1BD9DF44C();
  v8 = v7;
  v9 = sub_1BE052404();
  v8, v10, v11, v12, v13, v14, v15, v16;
  [a1 setPrimaryString_];

  sub_1BE052F14();
  v18 = v17;
  v19 = sub_1BE052404();
  v18, v20, v21, v22, v23, v24, v25, v26;
  [a1 setSecondaryString_];

  v27 = type metadata accessor for RedemptionPresentation(0);
  sub_1BD0DE19C(v2 + v27[8], v6, &unk_1EBD39970, &unk_1BE0B9F80);
  v28 = sub_1BE04AF64();
  v29 = *(v28 - 8);
  v30 = 0;
  if ((*(v29 + 48))(v6, 1, v28) != 1)
  {
    v30 = sub_1BE04AE64();
    (*(v29 + 8))(v6, v28);
  }

  v31 = PKRelativeDateStringWithFullDateForUnits();

  if (v31)
  {
    sub_1BE052434();
    v33 = v32;

    v34 = sub_1BE052404();
    v33, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    v34 = 0;
  }

  [a1 setTertiaryString_];

  [a1 setPrimaryImage_];
  [a1 setShowsDisclosureView_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8, &unk_1BE0F47B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v43 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v44 = sub_1BD0E5E8C(0, &qword_1EBD43100, 0x1E69DC888);
  v45 = v43;
  sub_1BE051224();
  *(inited + 40) = sub_1BE052FE4();
  v46 = *MEMORY[0x1E69DB600];
  *(inited + 64) = v44;
  *(inited + 72) = v46;
  v47 = objc_opt_self();
  v48 = v46;
  v49 = [v47 clearColor];
  *(inited + 104) = v44;
  *(inited + 80) = v49;
  v50 = sub_1BD1ACD28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF68, &unk_1BE0CF350);
  swift_arrayDestroy();
  v51 = [*(v2 + v27[9]) formattedStringValue];
  if (v51)
  {
    v52 = v51;
    v53 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    type metadata accessor for Key(0);
    sub_1BD9E1D18(&qword_1EBD37B80, type metadata accessor for Key, &unk_1BE0B3A08);
    v54 = sub_1BE052224();
    v50, v55, v56, v57, v58, v59, v60, v61;
    v62 = [v53 initWithString:v52 attributes:v54];

    [a1 setTransactionValueAttributedText_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9DFDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E1D18(&qword_1EBD5B450, type metadata accessor for RedemptionView, &unk_1BE10C078);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD9DFE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E1D18(&qword_1EBD5B450, type metadata accessor for RedemptionView, &unk_1BE10C078);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD9DFEEC(uint64_t a1)
{
  sub_1BD9E1D18(&qword_1EBD5B450, type metadata accessor for RedemptionView, &unk_1BE10C078);
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD9DFF44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B340, &qword_1BE10BF48);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v30 - v2;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v31);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  v20 = v31;
  swift_getKeyPath();
  sub_1BD9E1D18(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_1BE04A5E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B348, &qword_1BE10BFB8);
  sub_1BD0DE4F4(&qword_1EBD5B350, &qword_1EBD5B348, &qword_1BE10BFB8, MEMORY[0x1E69E5DE8]);
  sub_1BD0DE4F4(&qword_1EBD5B358, &qword_1EBD5B340, &qword_1BE10BF48, MEMORY[0x1E6968898]);
  v21 = sub_1BE052664();
  (*(v1 + 8))(v3, v0);
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21;
}

uint64_t sub_1BD9E0170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v41 = sub_1BE04E2E4();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2E8, &qword_1BE10BEF8);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2F0, &qword_1BE10BF00);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2F8, &qword_1BE10BF08);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v37 - v13;
  v43 = v2;
  v14 = sub_1BE04F7B4();
  LOBYTE(v45[0]) = 1;
  sub_1BD9E0C2C(v51);
  v44[3] = *&v52[9];
  *(&v44[2] + 7) = *v52;
  *(&v44[1] + 7) = v51[1];
  *(v44 + 7) = v51[0];
  v15 = v45[0];
  v45[0] = v14;
  v45[1] = 0;
  v46 = v15;
  v50 = v44[3];
  v49 = v44[2];
  v48 = v44[1];
  v47 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B300, &qword_1BE10BF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B308, &qword_1BE10BF18);
  sub_1BD0DE4F4(&qword_1EBD5B310, &qword_1EBD5B300, &qword_1BE10BF10, MEMORY[0x1E6981870]);
  sub_1BD9E1AA4();
  sub_1BE051A24();
  v16 = v39;
  v17 = v41;
  (*(v39 + 104))(v4, *MEMORY[0x1E697DAD8], v41);
  sub_1BD9E1B88();
  v18 = v38;
  sub_1BE050B84();
  (*(v16 + 8))(v4, v17);
  (*(v40 + 8))(v6, v18);
  v19 = &v10[*(v8 + 44)];
  *v19 = 0x4008000000000000;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v19[32] = 0;
  v20 = sub_1BD9DFF44();
  v21 = v20[2];
  v20, v22, v23, v24, v25, v26, v27, v28;
  if (v21)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = v37;
  sub_1BD0DE204(v10, v37, &qword_1EBD5B2F0, &qword_1BE10BF00);
  *(v30 + *(v12 + 44)) = v29;
  v31 = swift_allocObject();
  v32 = *(v2 + 16);
  *(v31 + 16) = *v2;
  *(v31 + 32) = v32;
  *(v31 + 48) = *(v2 + 32);
  *(v31 + 64) = *(v2 + 48);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B338, &qword_1BE10BF40);
  v34 = v42;
  v35 = (v42 + *(v33 + 36));
  sub_1BE04E7B4();
  sub_1BD9E1CE0(v2, v45);
  sub_1BE0528B4();
  *v35 = &unk_1BE10BF38;
  v35[1] = v31;
  return sub_1BD0DE204(v30, v34, &qword_1EBD5B2F8, &qword_1BE10BF08);
}

double sub_1BD9E064C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BD9DFF44();
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = *(a1 + 48);
  v32 = v4;
  sub_1BD9E1CE0(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B360, &qword_1BE10BFE0);
  sub_1BD9E1DC4();
  sub_1BE0504E4();
  v4, v8, v9, v10, v11, v12, v13, v14;
  v6, v15, v16, v17, v18, v19, v20, v21;
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B308, &qword_1BE10BF18) + 36);
  *(v29 + 32) = 0;
  result = 0.0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  return result;
}

uint64_t sub_1BD9E0784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for RedemptionPresentation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BD6065D0(a1, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v10 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_1BD605158(v9, v12 + v10);
  v13 = v12 + v11;
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  sub_1BD6065D0(a1, v9);
  v15 = swift_allocObject();
  sub_1BD605158(v9, v15 + v10);
  *a3 = sub_1BD9E1EB4;
  a3[1] = v12;
  a3[2] = sub_1BD9E1F50;
  a3[3] = v15;
  return sub_1BD9E1CE0(a2, v18);
}

double sub_1BD9E090C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for RedemptionPresentation(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD6065D0(a1, v9);
  v26 = *(a2 + 16);
  v10 = v7[12];
  v11 = *&v9[v7[11]];
  v13 = *&v9[v10];
  v12 = *&v9[v10 + 8];
  v14 = v7[13];
  v15 = type metadata accessor for PaymentRewardsDetailItem(0);
  sub_1BD0DE19C(&v9[v14], a3 + v15[6], &unk_1EBD39970, &unk_1BE0B9F80);
  v16 = *(v9 + 4);
  v17 = *&v9[v7[14]];
  sub_1BD0DE19C(&v9[v7[9]], a3 + v15[9], &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BD206260(&v26, v25);
  v18 = v17;
  v19 = v11;
  sub_1BE048C84();
  v20 = sub_1BD9DF44C();
  v22 = v21;
  sub_1BD606634(v9);
  *a3 = v19;
  a3[1] = v13;
  a3[2] = v12;
  *(a3 + v15[7]) = v16;
  *(a3 + v15[8]) = v17;
  v23 = (a3 + v15[10]);
  *v23 = v20;
  v23[1] = v22;
  result = *&v26;
  *(a3 + v15[11]) = v26;
  return result;
}

uint64_t sub_1BD9E0A8C(uint64_t a1)
{
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B390, &qword_1BE10BFF8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1BD6065D0(a1, &v12 - v7);
  v9 = sub_1BE04F794();
  v10 = &v8[*(v6 + 36)];
  *v10 = v9;
  v10[1] = sub_1BD9E0C24;
  v10[2] = 0;
  sub_1BE04FF44();
  sub_1BD9E1FC0();
  sub_1BE050D14();
  (*(v3 + 8))(v5, v2);
  return sub_1BD0DE53C(v8, &qword_1EBD5B390, &qword_1BE10BFF8);
}

void sub_1BD9E0C2C(uint64_t a1@<X8>)
{
  v3 = sub_1BE050474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v84[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 104))(v11, *MEMORY[0x1E69B8088], v7, v9);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v85 = v14;
    v86 = v16;
    sub_1BD0DDEBC();
    v17 = sub_1BE0506C4();
    v19 = v18;
    LOBYTE(v13) = v20;
    v22 = v21;
    (*(v4 + 104))(v6, *MEMORY[0x1E6980F08], v3);
    sub_1BE050364();
    v23 = sub_1BE050284();
    (*(v4 + 8))(v6, v3);
    v24 = sub_1BE0505F4();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v23, v25, v27, v29, v31, v32, v33, v34;
    sub_1BD0DDF10(v17, v19, (v13 & 1), v35, v36, v37, v38, v39);
    v22, v40, v41, v42, v43, v44, v45, v46;
    v47 = sub_1BE051224();
    v85 = v47;
    v48 = sub_1BE050574();
    v50 = v49;
    LOBYTE(v22) = v51;
    v53 = v52;
    sub_1BD0DDF10(v24, v26, (v28 & 1), v52, v54, v55, v56, v57);
    v47, v58, v59, v60, v61, v62, v63, v64;
    v30, v65, v66, v67, v68, v69, v70, v71;
    LOBYTE(v85) = 0;
    v88 = v22 & 1;
    v87 = 0;
    *a1 = 0x4018000000000000;
    *(a1 + 8) = 0;
    *(a1 + 16) = v48;
    *(a1 + 24) = v50;
    *(a1 + 32) = v22 & 1;
    *(a1 + 40) = v53;
    *(a1 + 48) = 0x4018000000000000;
    *(a1 + 56) = 0;
    sub_1BD0D7F18(v48, v50, v22 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v48, v50, (v22 & 1), v72, v73, v74, v75, v76);
    v53, v77, v78, v79, v80, v81, v82, v83;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9E0F70(uint64_t a1)
{
  v1[2] = a1;
  sub_1BE0528A4();
  v1[3] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD9E1008, v3, v2);
}

uint64_t sub_1BD9E1008(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 16);
  v10 = v9[5];
  if (v10)
  {
    v11 = v9[4];
    v12 = v9[6];
    v13 = swift_task_alloc();
    *(v8 + 48) = v13;
    *v13 = v8;
    v13[1] = sub_1BD24D250;

    return sub_1BD5FDFB8(v11, v10, v12);
  }

  else
  {
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
    v15 = *(v8 + 8);

    return v15();
  }
}

uint64_t sub_1BD9E1140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a7;
  v25 = a3;
  v26 = a4;
  v27 = a9;
  v23 = a2;
  v36 = MEMORY[0x1E6981E70];
  v37 = a6;
  v38 = MEMORY[0x1E6981E60];
  v39 = a8;
  sub_1BE04E8F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v13 = sub_1BE051874();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  v28 = a5;
  v29 = a6;
  v30 = v24;
  v31 = a8;
  v32 = a1;
  v33 = v23;
  v34 = v25;
  v35 = v26;
  sub_1BE051CD4();
  sub_1BE051864();
  swift_getWitnessTable();
  sub_1BD147308();
  v20 = *(v14 + 8);
  v20(v16, v13);
  sub_1BD147308();
  return (v20)(v19, v13);
}

uint64_t sub_1BD9E1378@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a5;
  v49 = a7;
  v51 = a4;
  v52 = a3;
  v45 = a1;
  v46 = a2;
  v53 = a9;
  v50 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v43 - v13;
  v57 = MEMORY[0x1E6981E70];
  v58 = v14;
  v15 = MEMORY[0x1E6981E60];
  v59 = MEMORY[0x1E6981E60];
  v60 = v16;
  v17 = sub_1BE04E8F4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  v21 = sub_1BE04EBD4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v43 - v26;
  sub_1BDA5C818(v45, v46, PKEdgeInsetsMake, 0, MEMORY[0x1E6981E70], a6, v15, a8);
  WitnessTable = swift_getWitnessTable();
  sub_1BE050FE4();
  (*(v18 + 8))(v20, v17);
  v56[2] = WitnessTable;
  v56[3] = MEMORY[0x1E697E5C0];
  v29 = v21;
  v45 = swift_getWitnessTable();
  v30 = v27;
  v43 = v24;
  sub_1BD147308();
  v31 = v22;
  v46 = *(v22 + 8);
  v32 = v46(v24, v29);
  v33 = v47;
  v52(v32);
  v34 = v44;
  v35 = v48;
  v36 = v49;
  sub_1BD147308();
  v37 = v50;
  v52 = *(v50 + 8);
  (v52)(v33, v35);
  v38 = *(v31 + 16);
  v39 = v43;
  v38(v43, v30, v29);
  v57 = v39;
  (*(v37 + 16))(v33, v34, v35);
  v58 = v33;
  v56[0] = v29;
  v56[1] = v35;
  v54 = v45;
  v55 = v36;
  sub_1BD13A4C4(&v57, 2uLL, v56);
  v40 = v52;
  (v52)(v34, v35);
  v41 = v46;
  v46(v30, v29);
  (v40)(v33, v35);
  return v41(v39, v29);
}

uint64_t sub_1BD9E17C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B380, &qword_1BE10BFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B378, &qword_1BE10BFE8);
  sub_1BD0DE4F4(&qword_1EBD5B388, &qword_1EBD5B380, &qword_1BE10BFF0, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD5B370, &qword_1EBD5B378, &qword_1BE10BFE8, &unk_1BE10C158);
  return sub_1BE0519C4();
}

void sub_1BD9E1928(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PaymentRewardsLatestRedemptionsViewModel(0);
  sub_1BD9E1D18(&qword_1EBD4FD10, type metadata accessor for PaymentRewardsLatestRedemptionsViewModel, &unk_1BE0E7BB8);
  sub_1BE048964();
  v4 = sub_1BE04E954();
  v6 = v5;
  v7 = [a1 programName];
  v8 = sub_1BE052434();
  v10 = v9;

  v11 = [a1 passUniqueID];
  v12 = sub_1BE052434();
  v14 = v13;

  v15 = [a1 transactionSourceIdentifiers];
  v16 = sub_1BE052A34();

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v14;
  a2[6] = v16;
}

unint64_t sub_1BD9E1AA4()
{
  result = qword_1EBD5B318;
  if (!qword_1EBD5B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B308, &qword_1BE10BF18);
    sub_1BD0DE4F4(&qword_1EBD5B320, &qword_1EBD5B328, &unk_1BE10BF20, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B318);
  }

  return result;
}

unint64_t sub_1BD9E1B88()
{
  result = qword_1EBD5B330;
  if (!qword_1EBD5B330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2E8, &qword_1BE10BEF8);
    sub_1BD0DE4F4(&qword_1EBD5B310, &qword_1EBD5B300, &qword_1BE10BF10, MEMORY[0x1E6981870]);
    sub_1BD9E1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B330);
  }

  return result;
}

uint64_t sub_1BD9E1C4C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD9E0F70(v0 + 16);
}

uint64_t sub_1BD9E1D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_118(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;
  v8[8], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

unint64_t sub_1BD9E1DC4()
{
  result = qword_1EBD5B368;
  if (!qword_1EBD5B368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B360, &qword_1BE10BFE0);
    sub_1BD0DE4F4(&qword_1EBD5B370, &qword_1EBD5B378, &qword_1BE10BFE8, &unk_1BE10C158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B368);
  }

  return result;
}

double sub_1BD9E1E74@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

double sub_1BD9E1EB4@<D0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for RedemptionPresentation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BD9E090C(v1 + v4, v5, a1);
}

uint64_t sub_1BD9E1F50()
{
  v1 = *(type metadata accessor for RedemptionPresentation(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD9E0A8C(v2);
}

unint64_t sub_1BD9E1FC0()
{
  result = qword_1EBD5B398;
  if (!qword_1EBD5B398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B390, &qword_1BE10BFF8);
    sub_1BD9E1D18(&qword_1EBD5B3A0, type metadata accessor for RedemptionView, &unk_1BE10C108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B398);
  }

  return result;
}

uint64_t sub_1BD9E20C4(uint64_t a1)
{
  result = type metadata accessor for RedemptionPresentation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD9E2130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BD9E2184()
{
  result = qword_1EBD5B438;
  if (!qword_1EBD5B438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B338, &qword_1BE10BF40);
    sub_1BD9E2240();
    sub_1BD9E1D18(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B438);
  }

  return result;
}

unint64_t sub_1BD9E2240()
{
  result = qword_1EBD5B440;
  if (!qword_1EBD5B440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2F8, &qword_1BE10BF08);
    sub_1BD9E22CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B440);
  }

  return result;
}

unint64_t sub_1BD9E22CC()
{
  result = qword_1EBD5B448;
  if (!qword_1EBD5B448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2F0, &qword_1BE10BF00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B2E8, &qword_1BE10BEF8);
    sub_1BD9E1B88();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B448);
  }

  return result;
}

uint64_t sub_1BD9E248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v47 = a1;
  v50 = a3;
  v49 = sub_1BE04FF64();
  v4 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8F0, &qword_1BE0C3FE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8F8, &qword_1BE0C3FE8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E900, &qword_1BE0C3FF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E908, &qword_1BE0C3FF8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E910, &qword_1BE0C4000);
  sub_1BD9E28E8(v47, v48, &v9[*(v21 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v9, v13, &qword_1EBD3E8F0, &qword_1BE0C3FE0);
  v22 = &v13[*(v11 + 44)];
  v23 = v58;
  *(v22 + 4) = v57;
  *(v22 + 5) = v23;
  *(v22 + 6) = v59;
  v24 = v54;
  *v22 = v53;
  *(v22 + 1) = v24;
  v25 = v56;
  *(v22 + 2) = v55;
  *(v22 + 3) = v25;
  LOBYTE(v11) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1BD0DE204(v13, v16, &qword_1EBD3E8F8, &qword_1BE0C3FE8);
  v34 = &v16[*(v14 + 36)];
  *v34 = v11;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_1BE04FF44();
  v35 = sub_1BD238ED0();
  sub_1BE050D14();
  (*(v4 + 8))(v6, v49);
  sub_1BD0DE53C(v16, &qword_1EBD3E900, &qword_1BE0C3FF0);
  sub_1BE052434();
  v37 = v36;
  v51 = v14;
  v52 = v35;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v37, v38, v39, v40, v41, v42, v43, v44;
  return (*(v18 + 8))(v20, v17);
}

id sub_1BD9E28E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v191 = a1;
  v192 = a2;
  v195 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930, &qword_1BE0C4008);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v196 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v194 = &v191 - v6;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v193 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v197 = &v191 - v15;
  (*(v8 + 104))(v10, *MEMORY[0x1E69B8068], v7, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v8 + 8))(v10, v7);
    v198 = v18;
    v199 = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v23 = v22;
    LOBYTE(v17) = v24;
    v26 = v25;
    v27 = sub_1BE050324();
    v28 = sub_1BE0505F4();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v27, v29, v31, v33, v35, v36, v37, v38;
    sub_1BD0DDF10(v21, v23, (v17 & 1), v39, v40, v41, v42, v43);
    v26, v44, v45, v46, v47, v48, v49, v50;
    v51 = sub_1BE051224();
    v52 = sub_1BE050564();
    v54 = v53;
    LOBYTE(v27) = v55;
    v57 = v56;
    v51, v53, v55, v56, v58, v59, v60, v61;
    sub_1BD0DDF10(v28, v30, (v32 & 1), v62, v63, v64, v65, v66);
    v34, v67, v68, v69, v70, v71, v72, v73;
    KeyPath = swift_getKeyPath();
    v198 = v52;
    v199 = v54;
    v200 = v27 & 1;
    v201 = v57;
    v202 = KeyPath;
    v203 = 1;
    v204 = 0;
    sub_1BE052434();
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
    sub_1BD1B9C50();
    sub_1BE050DE4();
    v76, v77, v78, v79, v80, v81, v82, v83;
    sub_1BD0DDF10(v52, v54, (v27 & 1), v84, v85, v86, v87, v88);
    KeyPath, v89, v90, v91, v92, v93, v94, v95;
    v57, v96, v97, v98, v99, v100, v101, v102;
    v198 = v191;
    v199 = v192;
    sub_1BE048C84();
    v103 = sub_1BE0506C4();
    v105 = v104;
    LOBYTE(v57) = v106;
    v108 = v107;
    v109 = sub_1BE050324();
    v110 = sub_1BE0505F4();
    v112 = v111;
    LOBYTE(v54) = v113;
    v115 = v114;
    v109, v111, v113, v114, v116, v117, v118, v119;
    sub_1BD0DDF10(v103, v105, (v57 & 1), v120, v121, v122, v123, v124);
    v108, v125, v126, v127, v128, v129, v130, v131;
    v132 = sub_1BE051234();
    v133 = sub_1BE050564();
    v135 = v134;
    LOBYTE(v108) = v136;
    v138 = v137;
    v132, v134, v136, v137, v139, v140, v141, v142;
    sub_1BD0DDF10(v110, v112, (v54 & 1), v143, v144, v145, v146, v147);
    v115, v148, v149, v150, v151, v152, v153, v154;
    v155 = swift_getKeyPath();
    v198 = v133;
    v199 = v135;
    v156 = (v108 & 1);
    v200 = v156;
    v201 = v138;
    v202 = v155;
    LOBYTE(v203) = 0;
    sub_1BE052434();
    v158 = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0, &unk_1BE0B8220);
    sub_1BD0FF49C();
    v159 = v194;
    sub_1BE050DE4();
    v158, v160, v161, v162, v163, v164, v165, v166;
    sub_1BD0DDF10(v133, v135, v156, v167, v168, v169, v170, v171);
    v155, v172, v173, v174, v175, v176, v177, v178;
    v138, v179, v180, v181, v182, v183, v184, v185;
    v186 = v197;
    v187 = v193;
    sub_1BD0DE19C(v197, v193, &qword_1EBD3C0E8, &qword_1BE0C4010);
    v188 = v196;
    sub_1BD0DE19C(v159, v196, &qword_1EBD3E930, &qword_1BE0C4008);
    v189 = v195;
    sub_1BD0DE19C(v187, v195, &qword_1EBD3C0E8, &qword_1BE0C4010);
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E938, qword_1BE0C4078);
    sub_1BD0DE19C(v188, v189 + *(v190 + 48), &qword_1EBD3E930, &qword_1BE0C4008);
    sub_1BD0DE53C(v159, &qword_1EBD3E930, &qword_1BE0C4008);
    sub_1BD0DE53C(v186, &qword_1EBD3C0E8, &qword_1BE0C4010);
    sub_1BD0DE53C(v188, &qword_1EBD3E930, &qword_1BE0C4008);
    return sub_1BD0DE53C(v187, &qword_1EBD3C0E8, &qword_1BE0C4010);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD9E2ED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A0, &qword_1BE0C3FB8);
  v6 = a1 + v5[21];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + v5[22];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  result = sub_1BD9E248C(v3, v4, a1);
  v9 = a1 + v5[19];
  *v9 = 0x4020000000000000;
  *(v9 + 8) = 0;
  *(a1 + v5[20]) = 1;
  return result;
}

void sub_1BD9E2F94(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BD9E2FF4()
{
  v1 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BD9E3048(uint64_t a1)
{
  v3 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CredentialCenterViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CredentialCenterViewController.init()()
{
  sub_1BE051694();
  v1 = v9;
  v12[0] = v8;
  type metadata accessor for CredentialCenterModel(0);
  swift_allocObject();
  CredentialCenterModel.init(userDefaultCredentialIdentifier:)(0, 0);
  sub_1BD324AE4();
  v8 = sub_1BE04E954();
  v9 = v2;
  v10 = v12[0];
  v11 = v1;
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B460, &unk_1BE10C320));
  *&v0[OBJC_IVAR___PKCredentialCenterViewController_hostingVC] = sub_1BE04F894();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CredentialCenterViewController();
  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  v5 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  [v4 addChildViewController_];
  return v4;
}

uint64_t CredentialCenterView.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051694();
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  type metadata accessor for CredentialCenterModel(0);
  swift_allocObject();
  CredentialCenterModel.init(userDefaultCredentialIdentifier:)(0, 0);
  sub_1BD324AE4();
  result = sub_1BE04E954();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

id sub_1BD9E339C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CredentialCenterViewController();
  objc_msgSendSuper2(&v5, sel_loadView);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
    swift_beginAccess();
    result = [*&v0[v3] view];
    if (result)
    {
      v4 = result;
      [v2 addSubview_];

      return [*&v0[v3] didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id CredentialCenterViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
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

id CredentialCenterViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CredentialCenterViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CredentialCenterView.$model.getter()
{
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD324AE4();

  return sub_1BE04E964();
}

uint64_t CredentialCenterView.showingFailureAlert.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  return v1;
}

void *sub_1BD9E37D8@<X0>(_BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  result = sub_1BE0516A4();
  *a2 = v4;
  return result;
}

double sub_1BD9E3838(char *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

double CredentialCenterView.showingFailureAlert.setter(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

void (*CredentialCenterView.showingFailureAlert.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 50) = v5;
  v6 = *(v1 + 24);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_1BE048964();
  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  return sub_1BD9E39A0;
}

void sub_1BD9E39A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_1BE0516B4();
  v3, v4, v5, v6, v7, v8, v9, v10;

  free(v1);
}

uint64_t CredentialCenterView.$showingFailureAlert.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  return v1;
}

void CredentialCenterView.body.getter()
{
  sub_1BE048964();
  sub_1BE051694();
  v0 = v40;
  LOBYTE(v38) = 0;
  sub_1BE051694();
  v1 = v40;
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD324AE4();
  sub_1BE04E954();
  v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  sub_1BD9E3CA8();
  sub_1BE050EE4();
  v39, v3, v4, v5, v6, v7, v8, v9;
  v38, v10, v11, v12, v13, v14, v15, v16;
  v41, v17, v18, v19, v20, v21, v22, v23;
  v0, v24, v25, v26, v27, v28, v29, v30;
  v1, v31, v32, v33, v34, v35, v36, v37;
}

void sub_1BD9E3BF0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  sub_1BE048964();
  sub_1BE048964();
  static BankCredentialListView.genericErrorAlert(action:)(sub_1BD9E3DE0, a5);

  v10, v11, v12, v13, v14, v15, v16, v17;
}

unint64_t sub_1BD9E3CA8()
{
  result = qword_1EBD5B468;
  if (!qword_1EBD5B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B468);
  }

  return result;
}

double sub_1BD9E3DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD9E3E4C(_OWORD *a1, _OWORD *a2)
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
  return sub_1BD9E3E98(v7, v8) & 1;
}

uint64_t sub_1BD9E3E98(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  if (sub_1BE053074())
  {
    v8 = a1[7];
    v9 = a2[7];
    if (v8)
    {
      if (v9)
      {
        sub_1BD0E5E8C(0, &unk_1EBD5B470, 0x1E69B9110);
        v10 = v9;
        v11 = v8;
        v12 = sub_1BE053074();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t HowToUseWalletView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B480, &qword_1BE10C490);
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v3 = &v52 - v2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B488, &qword_1BE10C498);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v52 = &v52 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B490, &qword_1BE10C4A0) - 8;
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v52 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B498, &qword_1BE10C4A8) - 8;
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v52 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4A0, &qword_1BE10C4B0) - 8;
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v52 - v7;
  v8 = v1[1];
  v74 = *v1;
  v75 = v8;
  v76 = *(v1 + 4);
  v64 = &v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4A8, &qword_1BE10C4B8);
  sub_1BD9E4A64(&qword_1EBD5B4B0, &qword_1EBD5B4A8, &qword_1BE10C4B8, sub_1BD9E4858);
  sub_1BE0504E4();
  v65 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4F8, &qword_1BE10C4D8);
  sub_1BE0516C4();
  v9 = v67;
  v10 = v68;
  v65 = v67;
  v66 = v68;
  v11 = swift_allocObject();
  v12 = v75;
  *(v11 + 16) = v74;
  *(v11 + 32) = v12;
  *(v11 + 48) = v76;
  sub_1BD9E5554(&v74, &v67);
  sub_1BD0E5E8C(0, &qword_1EBD5B500, 0x1E69B8900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B508, &qword_1BE10C4E0);
  sub_1BD0DE4F4(&qword_1EBD5B510, &qword_1EBD5B480, &qword_1BE10C490, MEMORY[0x1E697CD20]);
  sub_1BD54BCFC(&qword_1EBD5B518, &qword_1EBD5B500, 0x1E69B8900, &protocol conformance descriptor for PKHowToUseWalletCard);
  sub_1BD9E558C();
  v13 = v52;
  v14 = v54;
  sub_1BE050F74();
  *(&v9 + 1), v15, v16, v17, v18, v19, v20, v21;
  v11, v22, v23, v24, v25, v26, v27, v28;
  v9, v29, v30, v31, v32, v33, v34, v35;

  (*(v56 + 8))(v3, v14);
  sub_1BE051CD4();
  sub_1BE04EE54();
  v36 = v53;
  (*(v57 + 32))(v53, v13, v59);
  v37 = &v36[*(v55 + 44)];
  v38 = v72;
  *(v37 + 4) = v71;
  *(v37 + 5) = v38;
  *(v37 + 6) = v73;
  v39 = v68;
  *v37 = v67;
  *(v37 + 1) = v39;
  v40 = v70;
  *(v37 + 2) = v69;
  *(v37 + 3) = v40;
  v41 = [objc_opt_self() systemGroupedBackgroundColor];
  v42 = sub_1BE0511C4();
  v43 = sub_1BE0501D4();
  v44 = v36;
  v45 = v58;
  sub_1BD0DE204(v44, v58, &qword_1EBD5B490, &qword_1BE10C4A0);
  v46 = v45 + *(v61 + 44);
  *v46 = v42;
  *(v46 + 8) = v43;
  v47 = swift_allocObject();
  v48 = v75;
  *(v47 + 16) = v74;
  *(v47 + 32) = v48;
  *(v47 + 48) = v76;
  v49 = v60;
  sub_1BD0DE204(v45, v60, &qword_1EBD5B498, &qword_1BE10C4A8);
  v50 = (v49 + *(v62 + 44));
  *v50 = sub_1BD9E578C;
  v50[1] = v47;
  v50[2] = 0;
  v50[3] = 0;
  sub_1BD0DE204(v49, v63, &qword_1EBD5B4A0, &qword_1BE10C4B0);
  return sub_1BD9E5554(&v74, &v65);
}

uint64_t sub_1BD9E465C(uint64_t a1)
{
  v2 = [*(a1 + 16) sections];
  sub_1BD0E5E8C(0, &qword_1EBD5B620, 0x1E69B8910);
  v3 = sub_1BE052744();

  v4 = sub_1BD6CB840(v3);
  v3, v5, v6, v7, v8, v9, v10, v11;
  v17 = v4;
  swift_getKeyPath();
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1BD9E672C;
  *(v14 + 24) = v12;
  sub_1BD9E5554(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B628, &qword_1BE10C918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4C0, &qword_1BE10C4C0);
  sub_1BD0DE4F4(&qword_1EBD5B630, &qword_1EBD5B628, &qword_1BE10C918, MEMORY[0x1E69E6338]);
  sub_1BD54BCFC(&qword_1EBD5B638, &qword_1EBD5B620, 0x1E69B8910, MEMORY[0x1E69E81B8]);
  sub_1BD9E4858();
  return sub_1BE0519C4();
}

unint64_t sub_1BD9E4858()
{
  result = qword_1EBD5B4B8;
  if (!qword_1EBD5B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B4C0, &qword_1BE10C4C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B4C8, &qword_1BE10C4C8);
    sub_1BD9E494C();
    swift_getOpaqueTypeConformance2();
    sub_1BD9E4A64(&qword_1EBD5B4E0, &qword_1EBD5B4E8, &qword_1BE10C4D0, sub_1BD9E4AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B4B8);
  }

  return result;
}

unint64_t sub_1BD9E494C()
{
  result = qword_1EBD5B4D0;
  if (!qword_1EBD5B4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B4C8, &qword_1BE10C4C8);
    sub_1BD9E4A10();
    sub_1BD9E4A64(&qword_1EBD5B4E0, &qword_1EBD5B4E8, &qword_1BE10C4D0, sub_1BD9E4AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B4D0);
  }

  return result;
}

unint64_t sub_1BD9E4A10()
{
  result = qword_1EBD5B4D8;
  if (!qword_1EBD5B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B4D8);
  }

  return result;
}

uint64_t sub_1BD9E4A64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD9E4AE0()
{
  result = qword_1EBD5B4F0;
  if (!qword_1EBD5B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B4F0);
  }

  return result;
}

uint64_t sub_1BD9E4B34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4E8, &qword_1BE10C4D0);
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v54 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B640, &qword_1BE10C920);
  MEMORY[0x1EEE9AC00](v63);
  v11 = &v54 - v10;
  v12 = sub_1BE04E2E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4C8, &qword_1BE10C4C8);
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v55 = &v54 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B648, &qword_1BE10C928);
  v58 = *(v62 - 8);
  v17 = MEMORY[0x1EEE9AC00](v62);
  v57 = &v54 - v18;
  if (a1 && (v19 = [a2 titleKey]) != 0 && (v20 = v19, v21 = objc_msgSend(a2, sel_localizationBundle), v54 = a3, v22 = v15, v23 = a2, v24 = v13, v25 = v11, v26 = a4, v27 = v8, v28 = v21, v29 = PKLocalizedHowToUseWalletStringWithBundle(v20, v21), v20, v28, v8 = v27, v30 = v26, v11 = v25, v31 = v12, v32 = v24, a2 = v23, v33 = v22, a3 = v54, v29))
  {
    v34 = sub_1BE052434();
    v59 = v11;
    v35 = v34;
    v37 = v36;

    v60 = v30;
    v64 = v35;
    v65 = v37;
    MEMORY[0x1EEE9AC00](v38);
    sub_1BD9E4A10();
    sub_1BD9E4A64(&qword_1EBD5B4E0, &qword_1EBD5B4E8, &qword_1BE10C4D0, sub_1BD9E4AE0);
    v39 = v55;
    sub_1BE051A24();
    (*(v32 + 104))(v33, *MEMORY[0x1E697DAD8], v31);
    v40 = sub_1BD9E494C();
    v41 = v57;
    v42 = v31;
    v43 = v61;
    sub_1BE050B84();
    (*(v32 + 8))(v33, v42);
    (*(v56 + 8))(v39, v43);
    v44 = v58;
    v45 = v62;
    (*(v58 + 16))(v59, v41, v62);
    swift_storeEnumTagMultiPayload();
    v64 = v43;
    v65 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v44 + 8))(v41, v45);
  }

  else
  {
    v47 = [a2 cards];
    sub_1BD0E5E8C(0, &qword_1EBD5B500, 0x1E69B8900);
    v48 = sub_1BE052744();

    v66 = v48;
    v49 = swift_allocObject();
    v50 = *(a3 + 16);
    *(v49 + 16) = *a3;
    *(v49 + 32) = v50;
    *(v49 + 48) = *(a3 + 32);
    sub_1BD9E5554(a3, &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B650, &qword_1BE10C930);
    sub_1BD0DE4F4(&qword_1EBD5B658, &qword_1EBD5B650, &qword_1BE10C930, MEMORY[0x1E69E6338]);
    sub_1BD9E4AE0();
    sub_1BD54BCFC(&qword_1EBD5B518, &qword_1EBD5B500, 0x1E69B8900, &protocol conformance descriptor for PKHowToUseWalletCard);
    v51 = v59;
    sub_1BE0519D4();
    v52 = v60;
    (v60[2])(v11, v51, v8);
    swift_storeEnumTagMultiPayload();
    v53 = sub_1BD9E494C();
    v64 = v61;
    v65 = v53;
    swift_getOpaqueTypeConformance2();
    sub_1BD9E4A64(&qword_1EBD5B4E0, &qword_1EBD5B4E8, &qword_1BE10C4D0, sub_1BD9E4AE0);
    sub_1BE04F9A4();
    return (v52[1])(v51, v8);
  }
}

uint64_t sub_1BD9E527C(uint64_t a1, id a2)
{
  v3 = [a2 cards];
  sub_1BD0E5E8C(0, &qword_1EBD5B500, 0x1E69B8900);
  v4 = sub_1BE052744();

  v9 = v4;
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  sub_1BD9E5554(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B650, &qword_1BE10C930);
  sub_1BD0DE4F4(&qword_1EBD5B658, &qword_1EBD5B650, &qword_1BE10C930, MEMORY[0x1E69E6338]);
  sub_1BD9E4AE0();
  sub_1BD54BCFC(&qword_1EBD5B518, &qword_1EBD5B500, 0x1E69B8900, &protocol conformance descriptor for PKHowToUseWalletCard);
  return sub_1BE0519D4();
}

double sub_1BD9E540C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4F8, &qword_1BE10C4D8);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD9E5460@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v5 = v3;
  v6 = sub_1BE0501E4();
  *(inited + 32) = v6;
  v7 = sub_1BE0501F4();
  *(inited + 33) = v7;
  v8 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v6)
  {
    v8 = sub_1BE050214();
  }

  inited, v9, v10, v11, v12, v13, v14, v15;
  sub_1BE050214();
  if (sub_1BE050214() != v7)
  {
    v8 = sub_1BE050214();
  }

  result = sub_1BE04EC54();
  *a2 = v5;
  *(a2 + 8) = result;
  *(a2 + 16) = v8;
  return result;
}

unint64_t sub_1BD9E558C()
{
  result = qword_1EBD5B520;
  if (!qword_1EBD5B520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B508, &qword_1BE10C4E0);
    sub_1BD9E5618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B520);
  }

  return result;
}

unint64_t sub_1BD9E5618()
{
  result = qword_1EBD5B528;
  if (!qword_1EBD5B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B528);
  }

  return result;
}

void *sub_1BD9E566C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6 = v1;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4F8, &qword_1BE10C4D8);
  result = sub_1BE0516A4();
  if (v9)
  {
    v4 = v9;
    sub_1BE0516B4();
    v8 = v1;
    v9 = v2;
    v6 = v1;
    v7 = v2;
    v5[1] = 0;
    sub_1BD0DE19C(&v8, v5, &qword_1EBD5B1D0, &qword_1BE10BBD0);
    sub_1BD0DE19C(&v9, v5, &unk_1EBD5B610, &unk_1BE10C8E8);
    sub_1BE0516B4();

    sub_1BD0DE53C(&v8, &qword_1EBD5B1D0, &qword_1BE10BBD0);
    return sub_1BD0DE53C(&v9, &unk_1EBD5B610, &unk_1BE10C8E8);
  }

  return result;
}

id sub_1BD9E5794@<X0>(id *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4F8, &qword_1BE10C4D8);
  sub_1BE0516C4();
  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v5;

  return v5;
}

void sub_1BD9E5814(uint64_t a3@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1BE0503D4();
  v12 = sub_1BE0505F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v11, v13, v15, v17, v19, v20, v21, v22;
  sub_1BD0DDF10(v4, v6, (v8 & 1), v23, v24, v25, v26, v27);
  v10, v28, v29, v30, v31, v32, v33, v34;
  sub_1BE050364();
  v35 = sub_1BE050544();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1BD0DDF10(v12, v14, (v16 & 1), v40, v42, v43, v44, v45);
  v18, v46, v47, v48, v49, v50, v51, v52;
  LOBYTE(v12) = v39 & 1;
  v53 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  LOBYTE(v11) = sub_1BE0501F4();
  sub_1BE04E1F4();
  *a3 = v35;
  *(a3 + 8) = v37;
  *(a3 + 16) = v12;
  *(a3 + 24) = v41;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = v53;
  *(a3 + 80) = v55;
  *(a3 + 88) = v57;
  *(a3 + 96) = v59;
  *(a3 + 104) = v61;
  *(a3 + 112) = 0;
  *(a3 + 120) = v11;
  *(a3 + 128) = v62;
  *(a3 + 136) = v63;
  *(a3 + 144) = v64;
  *(a3 + 152) = v65;
  *(a3 + 160) = 0;
}

uint64_t sub_1BD9E59BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5C0, &qword_1BE10C8B0);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5C8, &qword_1BE10C8B8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5D0, &qword_1BE10C8C0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v20 = a3;
  v21 = a4;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v41 = v21;
  *(&v41 + 1) = sub_1BD9E6470;
  *&v42 = v19;
  sub_1BE04E554();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5D8, &qword_1BE10C8C8);
  sub_1BD9E647C();
  v22 = v37;
  sub_1BE050BB4();
  v50[6] = v47;
  v50[7] = v48;
  v51 = v49;
  v50[2] = v43;
  v50[3] = v44;
  v50[4] = v45;
  v50[5] = v46;
  v50[0] = v41;
  v50[1] = v42;
  sub_1BD0DE53C(v50, &qword_1EBD5B5D8, &qword_1BE10C8C8);
  *&v41 = sub_1BE051404();
  v23 = sub_1BE0518D4();
  (*(v38 + 32))(v14, v22, v39);
  *&v14[*(v12 + 44)] = v23;
  sub_1BD0DE204(v14, v18, &qword_1EBD5B5C8, &qword_1BE10C8B8);
  v24 = &v18[*(v16 + 44)];
  v24[32] = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  LOBYTE(v23) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v40;
  sub_1BD0DE204(v18, v40, &qword_1EBD5B5D0, &qword_1BE10C8C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5F0, &qword_1BE10C8D0);
  v35 = v33 + *(result + 36);
  *v35 = v23;
  *(v35 + 8) = v26;
  *(v35 + 16) = v28;
  *(v35 + 24) = v30;
  *(v35 + 32) = v32;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_1BD9E5D70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5F8, &unk_1BE10C8D8);
  return sub_1BE0518F4();
}

uint64_t PKHowToUseWalletCard.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_1BE052434();

  return v2;
}

id sub_1BD9E5E58(int a1, id a2)
{
  v3 = [a2 article];
  v4 = [objc_allocWithZone(PKDiscoveryArticleViewController) initWithArticleLayout:v3 referrerIdentifier:0 cardSize:{objc_msgSend(a2, sel_cardSizeType)}];

  if (v4)
  {
    v5 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];

    return v5;
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x1E69DD258]);

    return [v7 init];
  }
}

uint64_t sub_1BD9E5F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E655C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD9E5F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E655C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD9E6000(uint64_t a1)
{
  sub_1BD9E655C();
  sub_1BE0500A4();
  __break(1u);
}

id sub_1BD9E60CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoveryCardView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD9E613C()
{
  result = qword_1EBD5B5A0;
  if (!qword_1EBD5B5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B4A0, &qword_1BE10C4B0);
    sub_1BD9E61C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5A0);
  }

  return result;
}

unint64_t sub_1BD9E61C8()
{
  result = qword_1EBD5B5A8;
  if (!qword_1EBD5B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B498, &qword_1BE10C4A8);
    sub_1BD9E6280();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5A8);
  }

  return result;
}

unint64_t sub_1BD9E6280()
{
  result = qword_1EBD5B5B0;
  if (!qword_1EBD5B5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B490, &qword_1BE10C4A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B480, &qword_1BE10C490);
    sub_1BD0E5E8C(255, &qword_1EBD5B500, 0x1E69B8900);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B508, &qword_1BE10C4E0);
    sub_1BD0DE4F4(&qword_1EBD5B510, &qword_1EBD5B480, &qword_1BE10C490, MEMORY[0x1E697CD20]);
    sub_1BD54BCFC(&qword_1EBD5B518, &qword_1EBD5B500, 0x1E69B8900, &protocol conformance descriptor for PKHowToUseWalletCard);
    sub_1BD9E558C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5B0);
  }

  return result;
}

unint64_t sub_1BD9E647C()
{
  result = qword_1EBD5B5E0;
  if (!qword_1EBD5B5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5D8, &qword_1BE10C8C8);
    sub_1BD9E6508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5E0);
  }

  return result;
}

unint64_t sub_1BD9E6508()
{
  result = qword_1EBD5B5E8;
  if (!qword_1EBD5B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5E8);
  }

  return result;
}

unint64_t sub_1BD9E655C()
{
  result = qword_1EBD5B600;
  if (!qword_1EBD5B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B600);
  }

  return result;
}

void *sub_1BD9E65B8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for DiscoveryCardView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV9PassKitUIP33_FFC9451F794D8546D0BF2DCB4E84C2B017DiscoveryCardView11Coordinator_cardTapped];
  *v7 = v4;
  v7[1] = v3;
  sub_1BD0D44B8(v4, v3);
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD9E663C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E6BB8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD9E66A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E6BB8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD9E6704(uint64_t a1)
{
  sub_1BD9E6BB8();
  sub_1BE04F964();
  __break(1u);
}

uint64_t objectdestroyTm_119()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;

  v0[6], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

unint64_t sub_1BD9E67AC()
{
  result = qword_1EBD5B660;
  if (!qword_1EBD5B660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B668, &qword_1BE10C938);
    sub_1BD9E6838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B660);
  }

  return result;
}

unint64_t sub_1BD9E6838()
{
  result = qword_1EBD5B670;
  if (!qword_1EBD5B670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B678, &unk_1BE10C940);
    sub_1BD9E68C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B670);
  }

  return result;
}

unint64_t sub_1BD9E68C4()
{
  result = qword_1EBD5B680;
  if (!qword_1EBD5B680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38D88, &qword_1BE0E9090);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B680);
  }

  return result;
}

unint64_t sub_1BD9E697C()
{
  result = qword_1EBD5B690;
  if (!qword_1EBD5B690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5F0, &qword_1BE10C8D0);
    sub_1BD9E6A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B690);
  }

  return result;
}

unint64_t sub_1BD9E6A08()
{
  result = qword_1EBD5B698;
  if (!qword_1EBD5B698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5D0, &qword_1BE10C8C0);
    sub_1BD9E6AC0();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B698);
  }

  return result;
}

unint64_t sub_1BD9E6AC0()
{
  result = qword_1EBD5B6A0;
  if (!qword_1EBD5B6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5C8, &qword_1BE10C8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5D8, &qword_1BE10C8C8);
    sub_1BD9E647C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B6A0);
  }

  return result;
}

unint64_t sub_1BD9E6BB8()
{
  result = qword_1EBD5B6B8;
  if (!qword_1EBD5B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B6B8);
  }

  return result;
}

id sub_1BD9E6C0C(int a1, id a2)
{
  v3 = [a2 cardSizeType];
  v4 = [a2 article];
  if (v3 == 1)
  {
    v5 = [objc_allocWithZone(PKDiscoveryCardMiniView) initWithArticleLayout_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B6C0, &unk_1BE10CA30);
    sub_1BE04FF74();
    v4 = v8;
    [v5 setDelegate_];
  }

  else
  {
    v6 = [objc_allocWithZone(PKDiscoveryCardViewTemplateInformation) initWithCardSize:objc_msgSend(a2 displayType:{sel_cardSizeType), 0}];
    v5 = [objc_allocWithZone(PKDiscoveryCardView) initWithArticleLayout:v4 cardTemplateInformation:v6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B6C0, &unk_1BE10CA30);
    sub_1BE04FF74();
    [v5 setDelegate_];
  }

  return v5;
}

id sub_1BD9E6E80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddressEditorView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD9E6F28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BD9E6F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1BD9E6FD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = type metadata accessor for AddressEditorView.Coordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV9PassKitUI17AddressEditorView11Coordinator_address] = v3;
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUI17AddressEditorView11Coordinator_dismiss];
  *v8 = v5;
  *(v8 + 1) = v4;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = v3;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD9E7088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E7178();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD9E70EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E7178();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD9E7150(uint64_t a1)
{
  sub_1BD9E7178();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD9E7178()
{
  result = qword_1EBD5B740;
  if (!qword_1EBD5B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B740);
  }

  return result;
}

id sub_1BD9E71CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v6 = sub_1BE052724();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(PKAddressEditorViewController) initWithContact:a2 requiredKeys:v6 highlightedKeys:0 errors:0 style:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B748, &qword_1BE10CB98);
  sub_1BE050154();
  [v7 setDelegate_];

  [v7 setCountryIsEditable_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v8;
}

void sub_1BD9E72CC(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1BD9E7BCC(319, &qword_1EBD3D040, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AuthenticatorModel(319);
          if (v5 <= 0x3F)
          {
            sub_1BD9E7B68();
            if (v6 <= 0x3F)
            {
              sub_1BD1030A8();
              if (v7 <= 0x3F)
              {
                sub_1BD259880(319);
                if (v8 <= 0x3F)
                {
                  sub_1BD0EDFE4(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD9E7BCC(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      sub_1BD9E7BCC(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                      if (v11 <= 0x3F)
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

uint64_t sub_1BD9E74B8(unsigned __int8 *a1, unsigned int a2, void *a3)
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

  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = v8;
  }

  v10 = a3[4];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v6 + 80);
  v14 = *(v11 + 80);
  if (v12 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  if (v7)
  {
    v16 = *(*(a3[3] - 8) + 64);
  }

  else
  {
    v16 = *(*(a3[3] - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(v10 - 8) + 64) + 23;
  if (v15 < a2)
  {
    v19 = ((((((((((((((v18 + ((v16 + v14 + (v17 & ~v13)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
    v20 = (a2 - v15 + 255) >> 8;
    if (v19 <= 3)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *&a1[v19];
        if (*&a1[v19])
        {
          goto LABEL_31;
        }
      }

      else
      {
        v24 = *&a1[v19];
        if (v24)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v23)
    {
      v24 = a1[v19];
      if (a1[v19])
      {
LABEL_31:
        v25 = (v24 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v26 = *a1;
        }

        else
        {
          v25 = 0;
          v26 = *a1;
        }

        return v15 + (v26 | v25) + 1;
      }
    }
  }

  if (v5 == v15)
  {
    v27 = *(v4 + 48);
    v28 = *(v4 + 84);
    v29 = a3[2];

    return v27(a1, v28, v29);
  }

  v31 = &a1[v17] & ~v13;
  if (v8 == v15)
  {
    if (v7 >= 2)
    {
      v32 = (*(v6 + 48))(v31);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  a1 = ((v31 + v16 + v14) & ~v14);
  if (v12 == v15)
  {
    v27 = *(v11 + 48);
    v28 = *(v11 + 84);
    v29 = a3[4];

    return v27(a1, v28, v29);
  }

  v33 = *(&a1[v18] & 0xFFFFFFFFFFFFFFF8);
  if (v33 >= 0xFFFFFFFF)
  {
    LODWORD(v33) = -1;
  }

  return (v33 + 1);
}

void sub_1BD9E77D8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  v7 = *(a4[2] - 8);
  v8 = *(v7 + 84);
  v9 = *(a4[3] - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = a4[4];
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v9 + 80);
  v18 = *(v14 + 80);
  if (v15 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  if (v10)
  {
    v20 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v20 = *(*(a4[3] - 8) + 64) + 1;
  }

  v21 = *(*(v13 - 8) + 64) + 23;
  v22 = ((((((((((((((v21 + ((v20 + v18 + ((v16 + v17) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 < a3)
  {
    v23 = (a3 - v19 + 255) >> 8;
    if (v22 <= 3)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v6 = 4;
    }

    else
    {
      v6 = 2;
    }

    if (v24 < 0x100)
    {
      v6 = 1;
    }

    if (v24 < 2)
    {
      v6 = 0;
    }
  }

  if (v19 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v22] = 0;
        if (!a2)
        {
          return;
        }

LABEL_44:
        if (v8 == v19)
        {
          v27 = *(v7 + 56);
          v28 = a1;
        }

        else
        {
          v29 = &a1[v16 + v17] & ~v17;
          if (v11 == v19)
          {
            v30 = *(v9 + 56);
            v31 = a2 + 1;

            v30(v29, v31, v10);
            return;
          }

          v28 = ((v29 + v20 + v18) & ~v18);
          if (v15 != v19)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v32 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v32 = a2 - 1;
            }

            *(&v28[v21] & 0xFFFFFFFFFFFFFFF8) = v32;
            return;
          }

          v27 = *(v14 + 56);
        }

        v27(v28);
        return;
      }

      *&a1[v22] = 0;
    }

    else if (v6)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  v25 = ~v19 + a2;
  bzero(a1, v22);
  if (v22 <= 3)
  {
    v26 = (v25 >> 8) + 1;
  }

  else
  {
    v26 = 1;
  }

  if (v22 <= 3)
  {
    *a1 = v25;
    if (v6 > 1)
    {
LABEL_32:
      if (v6 == 2)
      {
        *&a1[v22] = v26;
      }

      else
      {
        *&a1[v22] = v26;
      }

      return;
    }
  }

  else
  {
    *a1 = v25;
    if (v6 > 1)
    {
      goto LABEL_32;
    }
  }

  if (v6)
  {
    a1[v22] = v26;
  }
}

unint64_t sub_1BD9E7B68()
{
  result = qword_1EBD5B750;
  if (!qword_1EBD5B750)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBD5B750);
  }

  return result;
}

void sub_1BD9E7BCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD9E7C68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, id *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16)
{
  v65 = a12;
  v66 = a13;
  v67 = a14;
  v68 = a15;
  v69 = a16;
  v19 = type metadata accessor for PaymentRequestView(0, &v65);
  v20 = (a9 + v19[26]);
  sub_1BD250AA8();
  sub_1BD9EBD2C(&qword_1EBD35E40, sub_1BD250AA8, &protocol conformance descriptor for PKPaymentSheetExperiment);
  *v20 = sub_1BE04EEC4();
  v20[1] = v21;
  v22 = (a9 + v19[27]);
  sub_1BE04CDA4();
  sub_1BD9EBD2C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *v22 = sub_1BE04EEC4();
  v22[1] = v23;
  v24 = a9 + v19[28];
  LOBYTE(v64[0]) = 0;
  sub_1BE051694();
  v25 = v66;
  *v24 = v65;
  *(v24 + 8) = v25;
  v26 = a9 + v19[29];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = *(a12 - 1);
  v59 = a1;
  (*(v27 + 16))(a9, a1, a12);
  v28 = v19[17];
  v29 = sub_1BE0534B4();
  v30 = *(v29 - 8);
  (*(v30 + 16))(a9 + v28, a2, v29);
  v31 = *(a14 - 8);
  (*(v31 + 16))(a9 + v19[18], a3, a14);
  *(a9 + v19[19]) = a4;
  *(a9 + v19[20]) = a5;
  *(a9 + v19[21]) = a6;
  sub_1BD0EE8CC(a7, a9 + v19[22]);
  *(a9 + v19[23]) = a8;
  v32 = (a9 + v19[25]);
  *v32 = a10;
  v32[1] = a11;
  sub_1BD0EE8CC(a7, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998, &unk_1BE0F7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0, &unk_1BE0B74C0);
  if (swift_dynamicCast())
  {
    sub_1BD0EF554(v62, &v65);
    v40 = v68;
    __swift_project_boxed_opaque_existential_1(&v65, v68);
    (*(*(&v40 + 1) + 56))(v64, v40, *(&v40 + 1));
    __swift_destroy_boxed_opaque_existential_0(a7, v41, v42, v43, v44, v45, v46, v47);
    (*(v31 + 8))(a3, a14);
    (*(v30 + 8))(a2, v29);
    (*(v27 + 8))(v59, a12);
    *(a9 + v19[24]) = v64[0];
    __swift_destroy_boxed_opaque_existential_0(&v65, v48, v49, v50, v51, v52, v53, v54);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a7, v33, v34, v35, v36, v37, v38, v39);
    (*(v31 + 8))(a3, a14);
    (*(v30 + 8))(a2, v29);
    (*(v27 + 8))(v59, a12);
    v63 = 0;
    memset(v62, 0, sizeof(v62));
    sub_1BD0DE53C(v62, &qword_1EBD389A0, &qword_1BE0F7D40);
    *(a9 + v19[24]) = 2;
  }
}

uint64_t sub_1BD9E80CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD9E8124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = a2;
  v5 = sub_1BE04FF64();
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a1 - 8);
  v74 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55600, &qword_1BE0D4A30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B758, &qword_1BE10CC48);
  v79 = *(a1 + 16);
  v71 = *(a1 + 32);
  v10 = sub_1BE04EBD4();
  v11 = *(a1 + 48);
  v68 = *(a1 + 40);
  v12 = v68;
  v69 = v11;
  v70 = *(a1 + 56);
  v89 = v70;
  v90 = MEMORY[0x1E697E5D8];
  v67 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v84 = v79;
  v85 = v10;
  v86 = v12;
  v87 = v11;
  v88 = WitnessTable;
  v14 = type metadata accessor for PaymentSheetContentContainer(255, &v84);
  v15 = swift_getWitnessTable();
  type metadata accessor for AuthorizationSheet(255, v14, v15, v16);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v17 = sub_1BE051874();
  v18 = sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600, &qword_1BE0D4A30, MEMORY[0x1E695C068]);
  v19 = swift_getWitnessTable();
  *&v84 = v9;
  *(&v84 + 1) = v17;
  v85 = v18;
  v86 = v19;
  sub_1BE04EE14();
  v20 = sub_1BE04EBD4();
  v82 = swift_getWitnessTable();
  v83 = MEMORY[0x1E6980A30];
  v62 = v20;
  v61 = swift_getWitnessTable();
  v22 = type metadata accessor for PaymentRequestViewContainer(0, v20, v61, v21);
  v65 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v57 - v23);
  v58 = swift_getWitnessTable();
  *&v84 = v22;
  *(&v84 + 1) = v58;
  v63 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v26 = &v57 - v25;
  sub_1BE0500D4();
  v27 = sub_1BE04EBD4();
  v66 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v57 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v60 = &v57 - v31;
  v32 = a1;
  v33 = v72;
  v34 = v73;
  (*(v72 + 16))(v73, v3, v32, v30);
  v35 = (*(v33 + 80) + 64) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *&v37 = v71;
  *(&v37 + 1) = v68;
  *(v36 + 32) = v37;
  *(v36 + 16) = v79;
  v38 = v70;
  *(v36 + 48) = v69;
  *(v36 + 56) = v38;
  (*(v33 + 32))(v36 + v35, v34, v32);
  sub_1BE048964();
  sub_1BD9EA9D8(sub_1BD9EAB0C, v36, v62, v61, v24);
  v39 = v75;
  sub_1BE04FF54();
  v40 = v58;
  sub_1BE050D14();
  (*(v76 + 8))(v39, v77);
  (*(v65 + 8))(v24, v22);
  sub_1BE052434();
  v42 = v41;
  *&v84 = v22;
  *(&v84 + 1) = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v57;
  v45 = OpaqueTypeMetadata2;
  sub_1BE050DE4();
  v42, v46, v47, v48, v49, v50, v51, v52;
  (*(v64 + 8))(v26, v45);
  v53 = sub_1BD9EBD2C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v80 = OpaqueTypeConformance2;
  v81 = v53;
  swift_getWitnessTable();
  v54 = v60;
  sub_1BD147308();
  v55 = *(v66 + 8);
  v55(v44, v27);
  sub_1BD147308();
  return (v55)(v54, v27);
}

uint64_t sub_1BD9E8934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v76 = a1;
  v82 = a8;
  v92 = a2;
  v93 = a3;
  v70 = a2;
  v94 = a4;
  v95 = a5;
  v73 = a4;
  v96 = a6;
  v97 = a7;
  v72 = a7;
  v77 = type metadata accessor for PaymentRequestView(0, &v92);
  v79 = *(v77 - 8);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v67 = v14;
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v61 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B758, &qword_1BE10CC48);
  v16 = sub_1BE04EBD4();
  v90 = a7;
  v91 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v92 = a2;
  v93 = a3;
  v62 = a3;
  v94 = v16;
  v95 = a5;
  v18 = a5;
  v61 = a5;
  v96 = a6;
  v97 = WitnessTable;
  v19 = a6;
  v63 = a6;
  v20 = type metadata accessor for PaymentSheetContentContainer(255, &v92);
  v21 = swift_getWitnessTable();
  type metadata accessor for AuthorizationSheet(255, v20, v21, v22);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v23 = sub_1BE051874();
  v65 = v23;
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v61 - v24;
  v25 = sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600, &qword_1BE0D4A30, MEMORY[0x1E695C068]);
  v68 = v25;
  v66 = swift_getWitnessTable();
  v92 = v14;
  v93 = v23;
  v94 = v25;
  v95 = v66;
  v69 = sub_1BE04EE14();
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v27 = &v61 - v26;
  sub_1BE051CC4();
  v28 = v70;
  v83 = v70;
  v84 = a3;
  v29 = v73;
  v85 = v73;
  v86 = v18;
  v30 = v72;
  v87 = v19;
  v88 = v72;
  v31 = v76;
  v89 = v76;
  sub_1BE051864();
  v32 = v77;
  v33 = v31;
  v34 = sub_1BD9EB594(v77);
  sub_1BE048964();
  v35 = v75;
  sub_1BE04CD04();
  v34, v36, v37, v38, v39, v40, v41, v42;
  v43 = v79;
  v44 = v78;
  (*(v79 + 16))(v78, v33, v32);
  v45 = (*(v43 + 80) + 64) & ~*(v43 + 80);
  v46 = swift_allocObject();
  v47 = v62;
  *(v46 + 2) = v28;
  *(v46 + 3) = v47;
  v48 = v61;
  *(v46 + 4) = v29;
  *(v46 + 5) = v48;
  *(v46 + 6) = v63;
  *(v46 + 7) = v30;
  (*(v43 + 32))(&v46[v45], v44, v32);
  v49 = v65;
  v50 = v67;
  v51 = v64;
  sub_1BE051154();
  v46, v52, v53, v54, v55, v56, v57, v58;
  (*(v81 + 8))(v35, v50);
  (*(v74 + 8))(v51, v49);
  sub_1BE04EC54();
  sub_1BE0501D4();
  v59 = v69;
  swift_getWitnessTable();
  sub_1BE050B64();
  return (*(v71 + 8))(v27, v59);
}

uint64_t sub_1BD9E8FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v181 = a8;
  v15 = sub_1BE04EBD4();
  v203 = a7;
  v204 = MEMORY[0x1E697E5D8];
  v197 = a2;
  v198 = a3;
  v199 = v15;
  v200 = a5;
  v201 = a6;
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for PaymentSheetContentContainer(0, &v197);
  MEMORY[0x1EEE9AC00](v16);
  v171 = (&v155 - v17);
  v18 = swift_getWitnessTable();
  v170 = v16;
  v169 = v18;
  v20 = type metadata accessor for AuthorizationSheet(0, v16, v18, v19);
  v173 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v172 = &v155 - v21;
  v174 = v22;
  v23 = sub_1BE04EBD4();
  v175 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v186 = &v155 - v24;
  v176 = v25;
  v180 = sub_1BE04EBD4();
  v177 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v178 = &v155 - v28;
  v190 = a2;
  v197 = a2;
  v198 = a3;
  v192 = a6;
  v193 = a4;
  v199 = a4;
  v200 = a5;
  v191 = a5;
  v201 = a6;
  WitnessTable = a7;
  v189 = a7;
  v29 = type metadata accessor for PaymentRequestView(0, &v197);
  v183 = *(v29 - 8);
  v188 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v182 = &v155 - v30;
  v163 = sub_1BE04F454();
  v160 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v157 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B760, &qword_1BE10CC80);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v159 = &v155 - v34;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B768, &qword_1BE10CC88);
  MEMORY[0x1EEE9AC00](v165);
  v36 = &v155 - v35;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B770, &qword_1BE10CC90);
  v37 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v155 - v38;
  v39 = sub_1BE04C884();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v155 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v155 - v44;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B758, &qword_1BE10CC48);
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v187 = &v155 - v48;
  v49 = *(v29 + 112);
  v184 = a1;
  v50 = (a1 + v49);
  v51 = *v50;
  v52 = *(v50 + 1);
  LOBYTE(v197) = v51;
  v198 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v185 = a3;
  if (LOBYTE(v196[0]) == 1)
  {
    sub_1BE04C794();
    (*(v40 + 104))(v42, *MEMORY[0x1E69BC9B0], v39);
    sub_1BD9EBD2C(&qword_1EBD36A18, MEMORY[0x1E69BC9D0], MEMORY[0x1E69BC9D8]);
    v53 = sub_1BE052334();
    v54 = *(v40 + 8);
    v54(v42, v39);
    v54(v45, v39);
    if ((v53 & 1) == 0)
    {
      sub_1BE051C64();
      sub_1BE051C74();
      v58 = v157;
      sub_1BE04F444();
      v156 = v36;
      v59 = v184;
      v60 = sub_1BD9EB594(v29);
      sub_1BE048964();
      sub_1BE04CD14();
      v60, v61, v62, v63, v64, v65, v66, v67;
      v68 = sub_1BE051D94();
      v69 = sub_1BD9EBD2C(&unk_1EBD367A0, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
      v70 = v159;
      v71 = v163;
      sub_1BE04E324();
      v68, v72, v73, v74, v75, v76, v77, v78;
      (*(v160 + 8))(v58, v71);
      v79 = v161;
      v80 = v162;
      (*(v161 + 16))(v158, v70, v162);
      v197 = v71;
      v198 = v69;
      swift_getOpaqueTypeConformance2();
      v81 = sub_1BE04E644();
      (*(v79 + 8))(v70, v80);
      v82 = v156;
      *&v156[*(v165 + 36)] = v81;
      v83 = v183;
      v84 = v182;
      (*(v183 + 16))(v182, v59, v29);
      v85 = (*(v83 + 80) + 64) & ~*(v83 + 80);
      v86 = swift_allocObject();
      v55 = v185;
      *(v86 + 2) = v190;
      *(v86 + 3) = v55;
      v87 = v191;
      v88 = v192;
      *(v86 + 4) = v193;
      *(v86 + 5) = v87;
      v89 = v189;
      *(v86 + 6) = v88;
      *(v86 + 7) = v89;
      (*(v83 + 32))(&v86[v85], v84, v29);
      sub_1BD9EB7F8();
      v90 = v164;
      sub_1BE0509D4();
      v86, v91, v92, v93, v94, v95, v96, v97;
      sub_1BD0DE53C(v82, &qword_1EBD5B768, &qword_1BE10CC88);
      v98 = v166;
      (*(v37 + 32))(v187, v90, v166);
      v57 = v98;
      v56 = 0;
      goto LABEL_7;
    }

    v55 = v185;
    v56 = 1;
  }

  else
  {
    v55 = a3;
    v56 = 1;
  }

  v57 = v166;
LABEL_7:
  (*(v37 + 56))(v187, v56, 1, v57);
  v99 = v29;
  v100 = v184;
  sub_1BE048964();
  v101 = v171;
  sub_1BD9EA15C(v99, v171);
  v102 = *(v100 + v99[23]);
  v103 = sub_1BD9EA5F4(v99);
  v105 = v104;
  v106 = v99[25];
  LOBYTE(v197) = *(v100 + v99[24]);
  v107 = *(v100 + v106);
  v108 = *(v100 + v106 + 8);
  sub_1BE048964();
  v109 = v170;
  v110 = v169;
  v111 = sub_1BD9531F8();
  v154 = v109;
  v112 = v172;
  sub_1BD95326C(v111, v113, v101, v102, &v197, v107, v108, v172, v103, v105, v154, v110);
  v114 = v183;
  v171 = *(v183 + 16);
  v115 = v182;
  (v171)(v182, v100, v99);
  v116 = (*(v114 + 80) + 64) & ~*(v114 + 80);
  v117 = swift_allocObject();
  v117[2] = v190;
  v117[3] = v55;
  v118 = v191;
  v119 = v192;
  v117[4] = v193;
  v117[5] = v118;
  v120 = v189;
  v117[6] = v119;
  v117[7] = v120;
  v183 = *(v114 + 32);
  (v183)(v117 + v116, v115, v99);
  v121 = v174;
  v170 = swift_getWitnessTable();
  sub_1BE051054();
  v117, v122, v123, v124, v125, v126, v127, v128;
  (*(v173 + 8))(v112, v121);
  (v171)(v115, v100, v99);
  v129 = swift_allocObject();
  v130 = v185;
  v129[2] = v190;
  v129[3] = v130;
  v131 = v191;
  v132 = v192;
  v129[4] = v193;
  v129[5] = v131;
  v133 = v189;
  v129[6] = v132;
  v129[7] = v133;
  (v183)(v129 + v116, v115, v99);
  v134 = MEMORY[0x1E69805D0];
  v196[4] = v170;
  v196[5] = MEMORY[0x1E69805D0];
  v135 = v176;
  v136 = swift_getWitnessTable();
  v137 = v179;
  v138 = v186;
  sub_1BE050914();
  v129, v139, v140, v141, v142, v143, v144, v145;
  (*(v175 + 8))(v138, v135);
  v196[2] = v136;
  v196[3] = v134;
  v146 = v180;
  v147 = swift_getWitnessTable();
  v148 = v178;
  sub_1BD147308();
  v149 = v177;
  v150 = *(v177 + 8);
  v150(v137, v146);
  v151 = v187;
  v152 = v168;
  sub_1BD0CB964(v187, v168);
  v197 = v152;
  (*(v149 + 16))(v137, v148, v146);
  v198 = v137;
  v196[0] = v167;
  v196[1] = v146;
  v194 = sub_1BD9EB738();
  v195 = v147;
  sub_1BD13A4C4(&v197, 2uLL, v196);
  v150(v148, v146);
  sub_1BD0CB9D4(v151);
  v150(v137, v146);
  return sub_1BD0CB9D4(v152);
}

void sub_1BD9E9F68(uint64_t *a2@<X8>)
{
  v3 = sub_1BE0513F4();
  v4 = sub_1BE051454();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_1BD9E9FB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE051294();
  *a1 = result;
  return result;
}

uint64_t sub_1BD9E9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1BE04C974();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v18 = type metadata accessor for PaymentRequestView(0, v21);
  result = sub_1BE04CAE4();
  if ((result & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((a1 + *(v18 + 88)), *(a1 + *(v18 + 88) + 24));
    (*(v15 + 104))(v17, *MEMORY[0x1E69BCA58], v14);
    sub_1BE04CC64();
    v20 = (*(v15 + 8))(v17, v14);
    return (*(a1 + *(v18 + 100)))(v20);
  }

  return result;
}

uint64_t sub_1BD9EA15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v48 = *(a1 + 24);
  v5 = v48;
  v6 = sub_1BE0534B4();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v37 - v7;
  v8 = *(a1 + 16);
  v42 = *(*&v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + 32);
  v11 = sub_1BE04EBD4();
  v12 = *(a1 + 40);
  v45 = *(a1 + 48);
  v13 = v45;
  v46 = v12;
  v54[6] = *(a1 + 56);
  v54[7] = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  *v54 = v8;
  v54[1] = v5;
  v14 = v8;
  v54[2] = v11;
  v54[3] = v12;
  v38 = v11;
  v54[4] = v13;
  v54[5] = WitnessTable;
  v39 = type metadata accessor for PaymentSheetContentContainer(0, v54);
  v49 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v37 - v17;
  v18 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  sub_1BE0501F4();
  sub_1BD9EA5F4(a1);
  sub_1BE051014();
  v25 = v47;
  v26 = v14;
  (*(v42 + 16))(v47, v3, COERCE_DOUBLE(*&v14));
  v27 = v50;
  (*(v51 + 16))(v50, v3 + *(a1 + 68), v52);
  v28 = v38;
  (*(v18 + 16))(v21, v24, v38);
  v29 = *(v3 + *(a1 + 76));
  LOBYTE(v3) = *(v3 + *(a1 + 80));
  sub_1BE048964();
  *(&v36 + 1) = v45;
  *&v36 = v46;
  v30 = v40;
  v31 = sub_1BD56188C(v25, v27, v21, v29, v3, v26, v48, v28, v40, v36, WitnessTable);
  (*(v18 + 8))(v24, v28, v31);
  v32 = v39;
  swift_getWitnessTable();
  v33 = v43;
  sub_1BD147308();
  v34 = *(v49 + 8);
  v34(v30, v32);
  sub_1BD147308();
  return (v34)(v33, v32);
}

double sub_1BD9EA5F4(uint64_t a1)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 116);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v9 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v8, 0, v10, v11, v12, v13, v14, v15);
    (*(v4 + 8))(v6, v3);
  }

  _UISolariumFeatureFlagEnabled();
  return 0.0;
}

void sub_1BD9EA760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v8 = type metadata accessor for PaymentRequestView(0, v14);
  v9 = *(*(a1 + *(v8 + 84)) + qword_1EBDAADA8 + 32);
  v10 = *(a1 + *(v8 + 104));
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    sub_1BD6BA48C(v12);
  }

  else
  {
    sub_1BD250AA8();
    sub_1BD9EBD2C(&qword_1EBD35E40, sub_1BD250AA8, &protocol conformance descriptor for PKPaymentSheetExperiment);
    v13 = v9;
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD9EA858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v7 = *(*(a1 + *(type metadata accessor for PaymentRequestView(0, v8) + 84)) + qword_1EBDAADA8 + 32);
  sub_1BD6BAE0C(v7);
}

void sub_1BD9EA8C4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1BE051D74();
  sub_1BE04E7D4();
  v8, v9, v10, v11, v12, v13, v14, v15;
}

double sub_1BD9EA944(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a8;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v9 = (a1 + *(type metadata accessor for PaymentRequestView(0, &v13) + 112));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v13) = v10;
  v14 = v11;
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD9EA9D8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for PaymentRequestViewContainer(0, a4, a5, v11);
  v13 = (a6 + *(v12 + 36));
  sub_1BD9EBD2C(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  result = sub_1BE04E954();
  *v13 = result;
  v13[1] = v15;
  v16 = (a6 + *(v12 + 40));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t sub_1BD9EAB0C@<X0>(uint64_t a1@<X8>)
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
  v9 = *(type metadata accessor for PaymentRequestView(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1BD9E8934(v10, v3, v4, v5, v6, v7, v8, a1);
}

uint64_t sub_1BD9EABE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v63 = a1;
  v3 = *(a1 + 16);
  v4 = sub_1BE04EBD4();
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v53 - v7;
  v59 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v53 - v11;
  v12 = sub_1BE04F9B4();
  v61 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v53 - v13;
  v14 = sub_1BE04C884();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v68 = v12;
  v64 = v4;
  v67 = sub_1BE04F9B4();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v53 - v21;
  v58 = v2;
  sub_1BD70A520(v20);
  v22 = *(v15 + 104);
  v22(v17, *MEMORY[0x1E69BC9B0], v14);
  sub_1BD9EBD2C(&qword_1EBD36A10, MEMORY[0x1E69BC9D0], MEMORY[0x1E69BC9E0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v23 = *(v15 + 8);
  v23(v17, v14);
  v24 = (v23)(v20, v14);
  if (v89 == v88)
  {
    v25 = *(v63 + 24);
    v26 = v60;
    v27 = MEMORY[0x1E6981E60];
    v28 = MEMORY[0x1E6980A30];
    sub_1BD13A700(v24, MEMORY[0x1E6981E70]);
    v72 = v27;
    v73 = v25;
    v29 = v68;
    swift_getWitnessTable();
    v70 = v25;
    v71 = v28;
    swift_getWitnessTable();
    v30 = v65;
    sub_1BD13A700(v26, v29);
    (*(v61 + 8))(v26, v29);
    v31 = v27;
  }

  else
  {
    v53 = v3;
    v32 = v58;
    sub_1BD70A520(v20);
    v22(v17, *MEMORY[0x1E69BC9B8], v14);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v23(v17, v14);
    v23(v20, v14);
    if (v89 == v88 || (sub_1BE04CCA4() & 1) != 0)
    {
      v33 = v63;
      v34 = v57;
      (*(v32 + *(v63 + 40)))();
      v25 = *(v33 + 24);
      v35 = v53;
      sub_1BD147308();
      v63 = *(v59 + 8);
      (v63)(v34, v35);
      sub_1BD147308();
      v36 = v60;
      v37 = MEMORY[0x1E6981E60];
      sub_1BD13A7F8(v34, MEMORY[0x1E6981E70], v35);
      v76 = v37;
      v77 = v25;
      v38 = v68;
      swift_getWitnessTable();
      v74 = v25;
      v28 = MEMORY[0x1E6980A30];
      v75 = MEMORY[0x1E6980A30];
      swift_getWitnessTable();
      v30 = v65;
      sub_1BD13A700(v36, v38);
      (*(v61 + 8))(v36, v38);
      v39 = v34;
      v40 = v63;
      (v63)(v39, v35);
      v40(v62, v35);
      v31 = MEMORY[0x1E6981E60];
    }

    else
    {
      v41 = v63;
      v42 = v62;
      (*(v32 + *(v63 + 40)))();
      sub_1BE04EC64();
      sub_1BE0501D4();
      v25 = *(v41 + 24);
      v43 = v55;
      v44 = v53;
      sub_1BE050B64();
      (*(v59 + 8))(v42, v44);
      v86 = v25;
      v28 = MEMORY[0x1E6980A30];
      v87 = MEMORY[0x1E6980A30];
      v45 = v64;
      swift_getWitnessTable();
      v46 = v54;
      sub_1BD147308();
      v47 = *(v56 + 8);
      v47(v43, v45);
      sub_1BD147308();
      v84 = MEMORY[0x1E6981E60];
      v85 = v25;
      v48 = v68;
      swift_getWitnessTable();
      v30 = v65;
      v31 = MEMORY[0x1E6981E60];
      sub_1BD13A7F8(v43, v48, v45);
      v47(v43, v45);
      v47(v46, v45);
    }
  }

  v82 = v31;
  v83 = v25;
  WitnessTable = swift_getWitnessTable();
  v80 = v25;
  v81 = v28;
  v50 = swift_getWitnessTable();
  v78 = WitnessTable;
  v79 = v50;
  v51 = v67;
  swift_getWitnessTable();
  sub_1BD147308();
  return (*(v66 + 8))(v30, v51);
}

uint64_t sub_1BD9EB594(uint64_t a1)
{
  result = *(v1 + *(a1 + 108));
  if (!result)
  {
    sub_1BE04CDA4();
    sub_1BD9EBD2C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BD9EB618(char *a1)
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
  v9 = *(type metadata accessor for PaymentRequestView(0, v11) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  sub_1BD9EA8C4(a1, v10, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1BD9EB738()
{
  result = qword_1EBD5B778;
  if (!qword_1EBD5B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B758, &qword_1BE10CC48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B768, &qword_1BE10CC88);
    sub_1BD9EB7F8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B778);
  }

  return result;
}

unint64_t sub_1BD9EB7F8()
{
  result = qword_1EBD5B780;
  if (!qword_1EBD5B780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B768, &qword_1BE10CC88);
    sub_1BD9EB8B0();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0, &unk_1BE0C9F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B780);
  }

  return result;
}

unint64_t sub_1BD9EB8B0()
{
  result = qword_1EBD5B788;
  if (!qword_1EBD5B788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B790, &qword_1BE10CC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B788);
  }

  return result;
}

uint64_t objectdestroyTm_120()
{
  v1 = *(v0 + 24);
  v58[0] = *(v0 + 16);
  v2 = v58[0];
  v58[1] = v1;
  v3 = *(v0 + 48);
  v57 = *(v0 + 32);
  v59 = v57;
  v60 = v3;
  v4 = type metadata accessor for PaymentRequestView(0, v58);
  v5 = v0 + ((*(*(v4 - 1) + 80) + 64) & ~*(*(v4 - 1) + 80));
  (*(*(v2 - 8) + 8))(v5, v2);
  v6 = v4[17];
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  (*(*(v57 - 8) + 8))(v5 + v4[18]);
  *(v5 + v4[19]), v8, v9, v10, v11, v12, v13, v14;
  *(v5 + v4[21]), v15, v16, v17, v18, v19, v20, v21;
  __swift_destroy_boxed_opaque_existential_0((v5 + v4[22]), v22, v23, v24, v25, v26, v27, v28);
  *(v5 + v4[25] + 8), v29, v30, v31, v32, v33, v34, v35;

  *(v5 + v4[27]), v36, v37, v38, v39, v40, v41, v42;
  *(v5 + v4[28] + 8), v43, v44, v45, v46, v47, v48, v49;
  sub_1BD0D4604(*(v5 + v4[29]), *(v5 + v4[29] + 8), v50, v51, v52, v53, v54, v55);
  return swift_deallocObject();
}

uint64_t sub_1BD9EBB5C(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v12[0] = v1[2];
  v2 = v12[0];
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v8 = *(type metadata accessor for PaymentRequestView(0, v12) - 8);
  v9 = v1 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return a1(v9, v2, v3, v4, v5, v6, v7);
}

void sub_1BD9EBC24(uint64_t a1)
{
  sub_1BD14639C(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0EDF50(319);
    if (v2 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD9EBD2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD9EBD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8100], v4, v6);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BE0B69E0;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1BD110550();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    sub_1BE048C84();
    v10 = sub_1BE04B714();
    v9, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v10 = sub_1BE04B714();
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

void sub_1BD9EBF5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v139 = a1;
  v140 = a2;
  v132 = a3;
  v3 = sub_1BE04F734();
  v127 = *(v3 - 8);
  v128 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v126 = &v117[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8, &qword_1BE0D73A0);
  v121 = *(v5 - 8);
  v122 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v120 = &v117[-v6];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55728, &qword_1BE10CE30);
  MEMORY[0x1EEE9AC00](v119);
  v123 = &v117[-v7];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7C8, &qword_1BE10CE38);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v117[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7D0, &qword_1BE10CE40);
  v130 = *(v9 - 8);
  v131 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v117[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v117[-v12];
  v13 = sub_1BE050404();
  v135 = *(v13 - 8);
  *&v136 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v134 = &v117[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1BE04F6E4();
  KeyPath = *(v15 - 8);
  v138 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v117[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1BE051584();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v117[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(&v136 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7D8, &qword_1BE10CE48);
  MEMORY[0x1EEE9AC00](*(&v136 + 1));
  v141 = &v117[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v117[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v117[-v27];
  v28 = sub_1BE052404();
  v29 = sub_1BE052404();
  v30 = PKUIDynamicImageNamed(v28, v29);

  if (v30)
  {
    v31 = sub_1BE051544();
    (*(v19 + 104))(v21, *MEMORY[0x1E6981630], v18);
    v32 = sub_1BE0515E4();
    v31, v33, v34, v35, v36, v37, v38, v39;
    (*(v19 + 8))(v21, v18);
    sub_1BE051CD4();
    sub_1BE04EE54();
    *&v168[54] = v173;
    *&v168[70] = v174;
    *&v168[86] = v175;
    *&v168[102] = v176;
    *&v168[6] = v170;
    *&v168[22] = v171;
    *&v168[38] = v172;
    *&v156[66] = *&v168[64];
    *&v156[82] = *&v168[80];
    *&v156[98] = *&v168[96];
    *&v156[18] = *&v168[16];
    *&v156[34] = *&v168[32];
    *&v156[50] = *&v168[48];
    v169 = 1;
    v155 = v32;
    *v156 = 1;
    *&v156[112] = *(&v176 + 1);
    *&v156[2] = *v168;
    sub_1BE04F6C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E270, &unk_1BE10CE50);
    sub_1BD223BC4();
    sub_1BE050E34();
    (*(KeyPath + 8))(v17, v138);
    v166[6] = *&v156[80];
    v166[7] = *&v156[96];
    v167 = *&v156[112];
    v166[2] = *&v156[16];
    v166[3] = *&v156[32];
    v166[4] = *&v156[48];
    v166[5] = *&v156[64];
    v166[0] = v155;
    v166[1] = *v156;
    sub_1BD0DE53C(v166, &qword_1EBD3E270, &unk_1BE10CE50);
    sub_1BE04EBA4();
    sub_1BD0DE53C(v25, &qword_1EBD5B7D8, &qword_1BE10CE48);
    *&v155 = sub_1BD9EBD74(v139, v140);
    *(&v155 + 1) = v40;
    sub_1BD0DDEBC();
    v41 = sub_1BE0506C4();
    v138 = v42;
    v139 = v41;
    v44 = v43;
    v140 = v45;
    KeyPath = swift_getKeyPath();
    v46 = sub_1BE0502A4();
    v48 = v134;
    v47 = v135;
    v49 = v136;
    (*(v135 + 104))(v134, *MEMORY[0x1E6980EA8], v136);
    *(&v136 + 1) = sub_1BE050434();
    v46, v50, v51, v52, v53, v54, v55, v56;
    (*(v47 + 8))(v48, v49);
    *&v136 = swift_getKeyPath();
    v133 = v44 & 1;
    LOBYTE(v155) = v44 & 1;
    LODWORD(v135) = sub_1BE04FC94();
    LODWORD(v134) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    LOBYTE(v155) = 0;
    v118 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = sub_1BE052404();
    v74 = PKLocalizedTicketingString(v73);

    if (v74)
    {
      v75 = sub_1BE052434();
      v77 = v76;

      *&v155 = v75;
      *(&v155 + 1) = v77;
      MEMORY[0x1EEE9AC00](v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
      sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
      v79 = v120;
      sub_1BE051704();
      v77, v80, v81, v82, v83, v84, v85, v86;
      v87 = sub_1BE0513C4();
      v88 = swift_getKeyPath();
      v89 = v123;
      (*(v121 + 32))(v123, v79, v122);
      v90 = (v89 + *(v119 + 36));
      *v90 = v88;
      v90[1] = v87;
      v91 = v125;
      v92 = &v125[*(v124 + 36)];
      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0, &qword_1BE0BB6F8) + 28);
      v94 = *MEMORY[0x1E697DC10];
      v95 = sub_1BE04E364();
      (*(*(v95 - 8) + 104))(v92 + v93, v94, v95);
      *v92 = swift_getKeyPath();
      sub_1BD84552C(v89, v91);
      v96 = v126;
      sub_1BE04F724();
      sub_1BD9ED2D4();
      sub_1BD9ED470();
      v97 = v142;
      v98 = v128;
      sub_1BE050894();
      (*(v127 + 8))(v96, v98);
      sub_1BD0DE53C(v91, &qword_1EBD5B7C8, &qword_1BE10CE38);
      v99 = v141;
      sub_1BD0DE19C(v143, v141, &qword_1EBD5B7D8, &qword_1BE10CE48);
      v101 = v129;
      v100 = v130;
      v102 = *(v130 + 16);
      v103 = v97;
      v104 = v131;
      v102(v129, v103, v131);
      v105 = v99;
      v106 = v132;
      sub_1BD0DE19C(v105, v132, &qword_1EBD5B7D8, &qword_1BE10CE48);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7F0, &qword_1BE10CF38);
      v108 = v106 + *(v107 + 48);
      *&v144 = v139;
      *(&v144 + 1) = v138;
      LOBYTE(v145) = v133;
      *(&v145 + 1) = *v162;
      DWORD1(v145) = *&v162[3];
      *(&v145 + 1) = v140;
      *&v146 = KeyPath;
      BYTE8(v146) = 1;
      *(&v146 + 9) = *v161;
      HIDWORD(v146) = *&v161[3];
      v147 = v136;
      LODWORD(v148) = v135;
      BYTE8(v148) = v134;
      *(&v148 + 9) = v163[0];
      HIDWORD(v148) = *(v163 + 3);
      *&v149 = v58;
      *(&v149 + 1) = v60;
      *&v150 = v62;
      *(&v150 + 1) = v64;
      LOBYTE(v151) = 0;
      *(&v151 + 1) = *v165;
      DWORD1(v151) = *&v165[3];
      LOBYTE(v94) = v118;
      BYTE8(v151) = v118;
      HIDWORD(v151) = *&v164[3];
      *(&v151 + 9) = *v164;
      *&v152 = v66;
      *(&v152 + 1) = v68;
      *&v153 = v70;
      *(&v153 + 1) = v72;
      v154 = 0;
      v109 = v152;
      v110 = v153;
      *(v108 + 160) = 0;
      *(v108 + 128) = v109;
      *(v108 + 144) = v110;
      v111 = v145;
      *v108 = v144;
      *(v108 + 16) = v111;
      v112 = v146;
      v113 = v147;
      v114 = v151;
      *(v108 + 96) = v150;
      *(v108 + 112) = v114;
      v115 = v149;
      *(v108 + 64) = v148;
      *(v108 + 80) = v115;
      *(v108 + 32) = v112;
      *(v108 + 48) = v113;
      v102((v106 + *(v107 + 64)), v101, v104);
      sub_1BD0DE19C(&v144, &v155, &qword_1EBD5B7F8, &unk_1BE10CF40);
      v116 = *(v100 + 8);
      v116(v142, v104);
      sub_1BD0DE53C(v143, &qword_1EBD5B7D8, &qword_1BE10CE48);
      v116(v101, v104);
      *&v155 = v139;
      *(&v155 + 1) = v138;
      v156[0] = v133;
      *&v156[1] = *v162;
      *&v156[4] = *&v162[3];
      *&v156[8] = v140;
      *&v156[16] = KeyPath;
      v156[24] = 1;
      *&v156[25] = *v161;
      *&v156[28] = *&v161[3];
      *&v156[32] = v136;
      *&v156[48] = v135;
      v156[56] = v134;
      *&v156[60] = *(v163 + 3);
      *&v156[57] = v163[0];
      *&v156[64] = v58;
      *&v156[72] = v60;
      *&v156[80] = v62;
      *&v156[88] = v64;
      v156[96] = 0;
      *&v156[97] = *v165;
      *&v156[100] = *&v165[3];
      v156[104] = v94;
      *&v156[105] = *v164;
      *&v156[108] = *&v164[3];
      *&v156[112] = v66;
      v157 = v68;
      v158 = v70;
      v159 = v72;
      v160 = 0;
      sub_1BD0DE53C(&v155, &qword_1EBD5B7F8, &unk_1BE10CF40);
      sub_1BD0DE53C(v141, &qword_1EBD5B7D8, &qword_1BE10CE48);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD9ECCE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1BE04AA54();
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1BE04A9C4();
    (*(v4 + 8))(v2, v3);
    PKOpenURL();
  }
}

uint64_t sub_1BD9ECE0C()
{
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7A0, &qword_1BE10CE10);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v9 = *v0;
  v8 = v0[1];
  *v7 = sub_1BE04F7B4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7A8, &qword_1BE10CE18);
  sub_1BD9EBF5C(v9, v8, &v7[*(v10 + 44)]);
  LOBYTE(v8) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v11 = &v7[*(v5 + 36)];
  *v11 = v8;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  sub_1BE04FF44();
  sub_1BD9ED21C();
  sub_1BE050D14();
  (*(v2 + 8))(v4, v1);
  return sub_1BD0CBFFC(v7);
}

uint64_t sub_1BD9ECFBC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1BE053B84();
    }
  }

  return result;
}

uint64_t static TileContextFindMyViewHost.create(eventName:)(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B798, &unk_1BE10CD20));
  sub_1BE048C84();
  return sub_1BE04EAC4();
}

id TileContextFindMyViewHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TileContextFindMyViewHost.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextFindMyViewHost();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TileContextFindMyViewHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextFindMyViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD9ED21C()
{
  result = qword_1EBD5B7B0;
  if (!qword_1EBD5B7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B7A0, &qword_1BE10CE10);
    sub_1BD0DE4F4(&qword_1EBD5B7B8, &qword_1EBD5B7C0, &unk_1BE10CE20, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B7B0);
  }

  return result;
}

unint64_t sub_1BD9ED2D4()
{
  result = qword_1EBD5B7E0;
  if (!qword_1EBD5B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B7C8, &qword_1BE10CE38);
    sub_1BD9ED38C();
    sub_1BD0DE4F4(&qword_1EBD3ABE8, &qword_1EBD3ABF0, &qword_1BE0BB6F8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B7E0);
  }

  return result;
}

unint64_t sub_1BD9ED38C()
{
  result = qword_1EBD5B7E8;
  if (!qword_1EBD5B7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55728, &qword_1BE10CE30);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B7E8);
  }

  return result;
}

unint64_t sub_1BD9ED470()
{
  result = qword_1EBD4C718;
  if (!qword_1EBD4C718)
  {
    sub_1BE04F734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C718);
  }

  return result;
}

char *sub_1BD9ED5AC(uint64_t a1)
{
  if (!a1)
  {
    return sub_1BD9ED6E8();
  }

  type metadata accessor for ProvisioningCredentialFlowItem();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses);
      *(v1 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses) = v3;
      v5 = v3;
      swift_unknownObjectRetain();
LABEL_8:

      v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
      v10 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
      v11 = sub_1BE048964();
      v12 = sub_1BD989980(v11, v5);
      swift_unknownObjectRelease();
      v9, v13, v14, v15, v16, v17, v18, v19;

      return v12;
    }
  }

  type metadata accessor for ProvisioningCarKeyCredentialFlowItem();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v7 = *&result[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_provisionedPasses];
  if (v7)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses);
    *(v1 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses) = v7;
    v8 = v7;
    swift_unknownObjectRetain();
    v5 = v8;
    goto LABEL_8;
  }

  return 0;
}

id sub_1BD9ED6E8()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential);
  v7 = [v6 remoteCredential];
  if (v7)
  {
    v8 = v7;
    v9 = v7;
    if ([v9 cardType] == 4)
    {
      v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
      v11 = v9;
      sub_1BE048964();
      sub_1BD4B7714(v11);
      v13 = v12;
      type metadata accessor for PaymentSetupIdentityFlowSection();
      swift_allocObject();
      v14 = sub_1BD4B7FFC(v10, v13, 0, v8, 0, 0);
      v10, v15, v16, v17, v18, v19, v20, v21;

LABEL_4:
      type metadata accessor for UIFlowModifier();
      v22 = swift_allocObject();
      v23 = byte_1EBDAB281;
      *(v22 + 32) = byte_1EBDAB280;
      *(v22 + 33) = v23;
      *(v22 + 48) = 0;
      swift_unknownObjectWeakInit();

      result = v22;
      *(v22 + 16) = v14;
      *(v22 + 24) = &off_1F3B98C00;
      *(v22 + 33) = 1;
      return result;
    }
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v27 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
    v28 = type metadata accessor for ProvisioningPeerPaymentCredentialFlowItem();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v30 = &v29[OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_identifier];
    *v30 = 0xD00000000000001DLL;
    *(v30 + 1) = 0x80000001BE146C90;
    *&v29[OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_context] = v27;
    *&v29[OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_credential] = v26;
    v103.receiver = v29;
    v103.super_class = v28;
    v31 = v6;
    sub_1BE048964();
    return objc_msgSendSuper2(&v103, sel_init);
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    objc_allocWithZone(type metadata accessor for ProvisioningAppleCardFlowItem());
    v34 = v6;
    v35 = sub_1BE048964();
    return sub_1BD1CDC48(v35, v33);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
    v36 = sub_1BE04C384();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1BE0B69E0;
    *(v39 + v38) = v6;
    (*(v37 + 104))(v39 + v38, *MEMORY[0x1E69B82A8], v36);
    sub_1BE04C3D4();
    swift_allocObject();
    v40 = v6;
    v41 = v0;
    v42 = sub_1BE04C394();
    v43 = *(v41 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
    type metadata accessor for ProvisioningCarPairingFlowSection();
    v44 = swift_allocObject();
    *(v44 + 48) = 0;
    swift_unknownObjectWeakInit();
    sub_1BE048964();

    result = v44;
    *(v44 + 56) = 0xD000000000000015;
    *(v44 + 64) = 0x80000001BE124930;
    *(v44 + 16) = v43;
    *(v44 + 24) = v42;
    *(v44 + 32) = 1;
    return result;
  }

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v46 = v45;
    v47 = v6;
    if ([v46 transferType] == 2)
    {
LABEL_17:
      v51 = objc_allocWithZone(type metadata accessor for ProvisioningCarKeyCredentialFlowItem());
      v52 = sub_1BE048964();
      return sub_1BD99DF50(v52, v46);
    }
  }

  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v46 = v48;
    v49 = v6;
    sub_1BE04BC34();
    v50 = sub_1BE04BAB4();
    (*(v2 + 8))(v5, v1);
    if (v50)
    {
      goto LABEL_17;
    }

    v59 = objc_allocWithZone(type metadata accessor for ProvisioningCarAddToWatchFlowItem());
    v60 = sub_1BE048964();
    return sub_1BD6096B0(v60, v46, 0);
  }

  else
  {
    v53 = [v6 statefulTransferCredential];
    if (v53)
    {
      v54 = v53;
      v55 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
      v56 = type metadata accessor for ProvisioningCarKeyInvitationFlowItem();
      v57 = objc_allocWithZone(v56);
      *&v57[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator] = 0;
      *&v57[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v58 = &v57[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_identifier];
      *v58 = 0xD000000000000018;
      *(v58 + 1) = 0x80000001BE1248F0;
      *&v57[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_context] = v55;
      *&v57[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential] = v54;
      v104.receiver = v57;
      v104.super_class = v56;
      sub_1BE048964();
      return objc_msgSendSuper2(&v104, sel_init);
    }

    else
    {
      objc_opt_self();
      v61 = swift_dynamicCastObjCClass();
      if (v61)
      {
        v62 = v61;
        v63 = v6;
        v64 = [v62 paymentPass];
        if (v64)
        {
          v65 = v64;
          v66 = [v64 cardType];

          if (v66 == 4)
          {
            v67 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
            v11 = v63;
            sub_1BE048964();
            sub_1BD4B799C(v62);
            v13 = v68;
            type metadata accessor for PaymentSetupIdentityFlowSection();
            swift_allocObject();
            v14 = sub_1BD4B7FFC(v67, v13, 0, v62, 0, 0);
            v67, v69, v70, v71, v72, v73, v74, v75;
            goto LABEL_4;
          }
        }
      }

      v76 = [v6 requiresVerificationCredential];
      if (v76)
      {
        v77 = v76;
        v78 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
        sub_1BE048964();
        result = [v77 pass];
        if (result)
        {
          v79 = result;
          objc_opt_self();
          v80 = swift_dynamicCastObjCClass();
          if (v80)
          {
            v81 = v80;
            sub_1BE04BD64();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_1BE0B7020;
            *(v82 + 32) = v81;
            v83 = v79;
            sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
            v84 = sub_1BE04BC64();
            sub_1BD29011C(v78, v84);
            v86 = v85;

            return v86;
          }

          else
          {

            v78, v88, v89, v90, v91, v92, v93, v94;
            return 0;
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        if (*(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms))
        {
          v87 = 1;
        }

        else
        {
          v87 = [v6 isPurchasedProductCredential];
        }

        v95 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
        v96 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product);
        v97 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry);
        v98 = type metadata accessor for ProvisioningCredentialFlowItem();
        v99 = objc_allocWithZone(v98);
        *&v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_viewController] = 0;
        v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_isShowingViewController] = 0;
        *&v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
        *&v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
        *&v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses] = 0;
        *&v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v100 = &v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_identifier];
        *v100 = 0xD000000000000012;
        v100[1] = 0x80000001BE146C70;
        *&v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_context] = v95;
        *&v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_credential] = v6;
        *&v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_product] = v96;
        v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_allowManualEntry] = v97;
        v99[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_previouslyAcceptedTerms] = v87;
        v105.receiver = v99;
        v105.super_class = v98;
        v101 = v6;
        sub_1BE048964();
        v102 = v96;
        return objc_msgSendSuper2(&v105, sel_init);
      }
    }
  }

  return result;
}

uint64_t sub_1BD9EE118()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9EE154(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD9EE1A0(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1BE04BBD4();
  [v2 resetForNewProvisioningForce_];

  return a1(1);
}

char *DynamicPaymentButtonSlotView.__allocating_init(type:style:paymentRequest:buttonSize:interfaceStyle:action:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v9 = v8;
  v58 = v9;
  v18 = objc_allocWithZone(v9);
  v19 = v18;
  v20 = &v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_action];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_paymentRequest;
  *&v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_paymentRequest] = 0;
  *&v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_type] = a1;
  *&v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_style] = a2;
  *&v18[v21] = a3;
  *v20 = a5;
  *(v20 + 1) = a6;
  v22 = a7 == 0.0;
  v23 = a8 == 0.0;
  v24 = &v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_buttonSize];
  v25 = 150.0;
  if (!v22 || !v23)
  {
    v25 = a7;
  }

  v26 = 40.0;
  if (!v22 || !v23)
  {
    v26 = a8;
  }

  *v24 = v25;
  v24[1] = v26;
  *&v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_interfaceStyle] = a4;
  v57 = a3;
  v59 = a5;
  v60 = a6;
  sub_1BD0D44B8(a5, a6);
  v56 = sub_1BD9EE8C0(a1);
  v28 = v27;
  v29 = [objc_opt_self() mainBundle];
  v30 = [v29 bundleIdentifier];

  if (v30)
  {
    v31 = sub_1BE052434();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [objc_allocWithZone(MEMORY[0x1E69DD730]) init];
  *&v19[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView] = v34;
  v35 = type metadata accessor for DynamicPaymentButtonSlotTag();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = a1;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = a2;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = a3;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = a4;
  v37 = &v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v37 = v56;
  v37[1] = v28;
  v38 = &v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v38 = v31;
  v38[1] = v33;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = a7;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = a8;
  v63.receiver = v36;
  v63.super_class = v35;
  v39 = v57;
  v40 = objc_msgSendSuper2(&v63, sel_init);
  v41 = type metadata accessor for DynamicPaymentButtonSlotDelegate();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate_tag] = v40;
  v62.receiver = v42;
  v62.super_class = v41;
  v43 = v40;
  *&v19[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotDelegate] = objc_msgSendSuper2(&v62, sel_init);
  v61.receiver = v19;
  v61.super_class = v58;
  v44 = objc_msgSendSuper2(&v61, sel_initWithFrame_, 0.0, 0.0, a7, a8);
  v45 = OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView;
  v46 = *&v44[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView];
  v47 = *&v44[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotDelegate];
  v48 = v44;
  [v46 _setContentDelegate_];
  [*&v44[v45] setUserInteractionEnabled_];
  [v48 addSubview_];

  sub_1BD0D4744(v59, v60, v49, v50, v51, v52, v53, v54);
  return v48;
}

char *DynamicPaymentButtonSlotView.init(type:style:paymentRequest:buttonSize:interfaceStyle:action:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v17 = &v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_action];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_paymentRequest;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_paymentRequest] = 0;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_type] = a1;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_style] = a2;
  *&v8[v18] = a3;
  *v17 = a5;
  *(v17 + 1) = a6;
  v19 = a7 == 0.0;
  v20 = a8 == 0.0;
  v21 = &v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_buttonSize];
  v22 = 150.0;
  if (!v19 || !v20)
  {
    v22 = a7;
  }

  v23 = 40.0;
  if (!v19 || !v20)
  {
    v23 = a8;
  }

  *v21 = v22;
  v21[1] = v23;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_interfaceStyle] = a4;
  v54 = a3;
  v55 = a5;
  v56 = a6;
  sub_1BD0D44B8(a5, a6);
  v53 = sub_1BD9EE8C0(a1);
  v25 = v24;
  v26 = [objc_opt_self() mainBundle];
  v27 = [v26 bundleIdentifier];

  if (v27)
  {
    v28 = sub_1BE052434();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E69DD730]) init];
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView] = v31;
  v32 = type metadata accessor for DynamicPaymentButtonSlotTag();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = a1;
  *&v33[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = a2;
  *&v33[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = a3;
  *&v33[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = a4;
  v34 = &v33[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v34 = v53;
  v34[1] = v25;
  v35 = &v33[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v35 = v28;
  v35[1] = v30;
  *&v33[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = a7;
  *&v33[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = a8;
  v59.receiver = v33;
  v59.super_class = v32;
  v36 = v54;
  v37 = objc_msgSendSuper2(&v59, sel_init);
  v38 = type metadata accessor for DynamicPaymentButtonSlotDelegate();
  v39 = objc_allocWithZone(v38);
  *&v39[OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection] = 0;
  *&v39[OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate_tag] = v37;
  v58.receiver = v39;
  v58.super_class = v38;
  v40 = v37;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotDelegate] = objc_msgSendSuper2(&v58, sel_init);
  v57.receiver = v8;
  v57.super_class = type metadata accessor for DynamicPaymentButtonSlotView();
  v41 = objc_msgSendSuper2(&v57, sel_initWithFrame_, 0.0, 0.0, a7, a8);
  v42 = OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView;
  v43 = *&v41[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView];
  v44 = *&v41[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotDelegate];
  v45 = v41;
  [v43 _setContentDelegate_];
  [*&v41[v42] setUserInteractionEnabled_];
  [v45 addSubview_];

  sub_1BD0D4744(v55, v56, v46, v47, v48, v49, v50, v51);
  return v45;
}

uint64_t sub_1BD9EE8C0(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = "IN_APP_DYNAMIC_PAYMENT_BUTTON_BUY_WITH";
  }

  else
  {
    if (a1 != 3)
    {
      return 0;
    }

    v1 = "IN_APP_DYNAMIC_PAYMENT_BUTTON_PAY_WITH";
  }

  v2 = v1 - 32;
  v3 = sub_1BE052404();
  (v2 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  v11 = PKLocalizedPaymentString(v3);

  if (v11)
  {
    v12 = sub_1BE052434();

    return v12;
  }

  return 0;
}

id DynamicPaymentButtonSlotView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1BD9EECE8()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection);
  }

  else
  {
    v4 = sub_1BD9EED48();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BD9EED48()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v1 = sub_1BE052404();
  v2 = [v0 initWithServiceName_];

  v3 = UISSlotMachineInterface();
  [v2 setRemoteObjectInterface_];

  v11 = sub_1BD9EEEF4;
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1BD126964;
  v10 = &block_descriptor_239;
  v4 = _Block_copy(&v7);
  [v2 setInterruptionHandler_];
  _Block_release(v4);
  v11 = sub_1BD9EEF00;
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1BD126964;
  v10 = &block_descriptor_42_4;
  v5 = _Block_copy(&v7);
  [v2 setInvalidationHandler_];
  _Block_release(v5);
  [v2 resume];
  return v2;
}

uint64_t sub_1BD9EEF0C(const char *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D124();
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v6, v7, a1, v8, 2u);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD9EF074(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D124();
  v6 = a1;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = a1;
    v32 = v10;
    *v9 = 136315138;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v12 = sub_1BE0524A4();
    v14 = v13;
    v15 = sub_1BD123690(v12, v13, &v32);
    v14, v16, v17, v18, v19, v20, v21, v22;
    *(v9 + 4) = v15;
    _os_log_impl(&dword_1BD026000, v7, v8, "#DynamicButton Error getting remote proxy (%s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1BD9EF248(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1BE048964();
  v12 = a2;
  v4();
  v3, v5, v6, v7, v8, v9, v10, v11;
}

id sub_1BD9EF4D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD9EF554(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_1BE04D124();
    v6 = sub_1BE04D204();
    v7 = sub_1BE052C54();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v6, v7, "Produced final content successfully.", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return a1;
}

uint64_t sub_1BD9EF6A4(char a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  if (a1)
  {
    sub_1BE04D124();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    if (!os_log_type_enabled(v9, v10))
    {
      v5 = v8;
      goto LABEL_8;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v9, v10, "Slot view has been set successfully.", v11, 2u);
    v5 = v8;
    goto LABEL_6;
  }

  sub_1BE04D124();
  v9 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v12))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v9, v12, "Failed to set slot view content.", v11, 2u);
LABEL_6:
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

LABEL_8:

  return (*(v3 + 8))(v5, v2);
}

uint64_t type metadata accessor for SavingsFCCStepUpPresenter(uint64_t a1)
{
  result = qword_1EBD5B908;
  if (!qword_1EBD5B908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9EF8FC(uint64_t a1)
{
  sub_1BD957184();
  if (v1 <= 0x3F)
  {
    sub_1BD23BBFC();
    if (v2 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v3 <= 0x3F)
      {
        sub_1BD243964(319);
        if (v4 <= 0x3F)
        {
          sub_1BD365CF8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD9EF9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v111 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v110);
  v106 = (&v100 - v3);
  v4 = type metadata accessor for SavingsFCCStepUpPresenter(0);
  v103 = *(v4 - 8);
  v5 = v4 - 8;
  v108 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = v6;
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B918, &qword_1BE10D088);
  MEMORY[0x1EEE9AC00](v113);
  v104 = &v100 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B920, &qword_1BE10D090);
  v109 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v119 = &v100 - v9;
  v10 = v2 + *(v5 + 40);
  v112 = v2;
  v11 = *v10;
  v117 = *(v10 + 8);
  v118 = v11;
  v116 = *(v10 + 16);
  v115 = type metadata accessor for ApplyControllerModel(0);
  v114 = sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
  v12 = sub_1BE04E3D4();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;

  v22 = v120;
  v21 = v121;
  v23 = v122;
  v124[0] = v120;
  v124[1] = v121;
  v124[2] = v122;
  v101 = v7;
  sub_1BD9F0E1C(v2, v7);
  v103 = *(v103 + 80);
  v24 = (v103 + 16) & ~v103;
  v25 = swift_allocObject();
  sub_1BD9F0E80(v7, v25 + v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B928, &unk_1BE10D0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D68, &qword_1BE0CE9E0);
  sub_1BD0DE4F4(&qword_1EBD5B930, &qword_1EBD5B928, &unk_1BE10D0C0, MEMORY[0x1E697FDF8]);
  sub_1BD365E88();
  sub_1BD365EDC();
  v26 = v104;
  sub_1BE050F74();
  v21, v27, v28, v29, v30, v31, v32, v33;
  v25, v34, v35, v36, v37, v38, v39, v40;
  v22, v41, v42, v43, v44, v45, v46, v47;

  v48 = sub_1BE04E3C4();
  swift_beginAccess();
  v49 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD422A8, &unk_1BE10D0D0);
  sub_1BE04D884();
  swift_endAccess();

  v50 = v112;
  v51 = v101;
  sub_1BD9F0E1C(v112, v101);
  v52 = swift_allocObject();
  sub_1BD9F0E80(v51, v52 + v24);
  v53 = (v26 + *(v49 + 56));
  *v53 = sub_1BD9F0EFC;
  v53[1] = v52;
  v54 = *(v50 + 16);
  v55 = *(v50 + 24);
  v120 = *(v50 + 8);
  v121 = v54;
  LOBYTE(v122) = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](v124, v56);
  LOBYTE(v120) = v124[0];
  sub_1BD9F0E1C(v50, v51);
  v57 = swift_allocObject();
  sub_1BD9F0E80(v51, v57 + v24);
  v58 = sub_1BD0DE4F4(&qword_1EBD5B938, &qword_1EBD5B918, &qword_1BE10D088, MEMORY[0x1E697C278]);
  sub_1BE051064();
  v57, v59, v60, v61, v62, v63, v64, v65;
  sub_1BD0CC298(v26);
  v66 = sub_1BE04E3C4();
  v67 = swift_getKeyPath();
  v68 = swift_getKeyPath();
  v69 = v106;
  sub_1BE04D8B4(v106);

  v67, v70, v71, v72, v73, v74, v75, v76;
  v68, v77, v78, v79, v80, v81, v82, v83;
  v84 = v112;
  sub_1BD9F0E1C(v112, v51);
  v85 = swift_allocObject();
  sub_1BD9F0E80(v51, v85 + v24);
  v120 = v113;
  v121 = MEMORY[0x1E69E6370];
  v122 = v58;
  v123 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1BD2477C0();
  v86 = v111;
  v87 = v107;
  v88 = v119;
  sub_1BE051064();
  v85, v89, v90, v91, v92, v93, v94, v95;
  sub_1BD23C32C(v69);
  (*(v109 + 8))(v88, v87);
  v96 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B940, &qword_1BE10D128) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516C4();
  sub_1BD9F0E1C(v84, v51);
  v97 = swift_allocObject();
  sub_1BD9F0E80(v51, v97 + v24);
  result = type metadata accessor for ErrorAlertModifier(0);
  v99 = (v96 + *(result + 20));
  *v99 = sub_1BD9F1240;
  v99[1] = v97;
  return result;
}

id sub_1BD9F01A8(id *a1)
{
  v2 = sub_1BE04D214();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  type metadata accessor for SavingsFCCStepUpPresenter(0);
  v40 = a1;
  type metadata accessor for ApplyControllerModel(0);
  sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
  v7 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(&v43);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;

  if (v43 == 2)
  {
    goto LABEL_8;
  }

  if ((v43 & 1) == 0)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516A4();
  v24 = type metadata accessor for FeatureError(0);
  v25 = (*(*(v24 - 8) + 48))(v6, 1, v24);
  sub_1BD23C32C(v6);
  if (v25 != 1)
  {
    goto LABEL_8;
  }

  v26 = v37;
  sub_1BE04D1E4();
  v27 = sub_1BE04D204();
  v28 = sub_1BE052C54();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1BD026000, v27, v28, "FCC step up completed, sheet dismissing, updating account", v29, 2u);
    MEMORY[0x1BFB45F20](v29, -1, -1);
  }

  (*(v38 + 8))(v26, v39);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v31 = result;
    v32 = v40;
    v33 = [*v40 accountIdentifier];
    [v31 updateAccountWithIdentifier:v33 extended:0 completion:0];

    (v32[4])();
LABEL_8:
    v34 = sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = 0;
    v35 = v34;
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = 2;
    return sub_1BE04D8C4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD9F05A8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v16 = *(a2 + 8);
  v17 = v9;
  v18 = v10;
  v15[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  result = sub_1BE0518F4();
  if (v8)
  {
    sub_1BE04D1E4();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C54();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "FCC step up finished loading, sheet will present", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_1BD9F072C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  sub_1BE04D1E4();
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&dword_1BD026000, v10, v11, "FCC step up loading = %{BOOL}d", v12, 8u);
    MEMORY[0x1BFB45F20](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v17 = *(a3 + 8);
  v18 = v13;
  v19 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970]((&v16 + 7), v15);
  if (HIBYTE(v16) == 1)
  {
    sub_1BD9F08C8();
  }
}

void sub_1BD9F08C8()
{
  type metadata accessor for SavingsFCCStepUpPresenter(0);
  type metadata accessor for ApplyControllerModel(0);
  sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
  v1 = sub_1BE04E3C4();
  v2 = &v1[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType];
  *v2 = 5;
  v2[8] = 0;

  v3 = sub_1BE04E3C4();
  v4 = *v0;
  v5 = *&v3[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account];
  *&v3[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account] = v4;
  v6 = v4;

  v7 = sub_1BE04E3C4();
  sub_1BD333918();
}

uint64_t sub_1BD9F0A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-v9];
  v11 = type metadata accessor for FeatureError(0);
  if ((*(*(v11 - 8) + 48))(a2, 1, v11) != 1)
  {
    type metadata accessor for SavingsFCCStepUpPresenter(0);
    type metadata accessor for ApplyControllerModel(0);
    sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
    v12 = sub_1BE04E3C4();
    KeyPath = swift_getKeyPath();
    v14 = swift_getKeyPath();
    sub_1BE04D8B4(v10);

    KeyPath, v15, v16, v17, v18, v19, v20, v21;
    v14, v22, v23, v24, v25, v26, v27, v28;
    sub_1BD23C2BC(v10, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    sub_1BE0516B4();
    sub_1BD23C32C(v10);
  }

  v29 = *(a3 + 16);
  v30 = *(a3 + 24);
  v33 = *(a3 + 8);
  v34 = v29;
  v35 = v30;
  v32[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  return sub_1BE0518F4();
}

uint64_t sub_1BD9F0C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-v6];
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v13 = *(a1 + 8);
  v14 = v8;
  v15 = v9;
  v12[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  sub_1BE0518F4();
  type metadata accessor for SavingsFCCStepUpPresenter(0);
  type metadata accessor for ApplyControllerModel(0);
  sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel, &unk_1BE0CCE80);
  sub_1BE04E3C4();
  v10 = type metadata accessor for FeatureError(0);
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v7, v4);
  sub_1BE04D8C4();
  return sub_1BD23C32C(v7);
}

uint64_t sub_1BD9F0E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsFCCStepUpPresenter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F0E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsFCCStepUpPresenter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F0EFC(uint64_t *a1)
{
  v3 = *(type metadata accessor for SavingsFCCStepUpPresenter(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD9F05A8(a1, v4);
}

void sub_1BD9F0F6C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for SavingsFCCStepUpPresenter(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD9F072C(a1, a2, v6);
}

uint64_t sub_1BD9F0FEC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SavingsFCCStepUpPresenter(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD9F0A10(a1, a2, v6);
}

uint64_t objectdestroyTm_121()
{
  v1 = type metadata accessor for SavingsFCCStepUpPresenter(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[2], v10, v11, v12, v13, v14, v15, v16;
  v2[5], v17, v18, v19, v20, v21, v22, v23;
  v24 = (v2 + *(v1 + 28));
  v25 = type metadata accessor for FeatureError(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {

    v26 = *(v25 + 20);
    v27 = sub_1BE04B824();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v24 + v26, 1, v27))
    {
      (*(v28 + 8))(v24 + v26, v27);
    }
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v24 + *(v29 + 28)), v30, v31, v32, v33, v34, v35, v36;
  sub_1BD035CB4(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8), *(v2 + *(v1 + 32) + 16), v37, v38, v39, v40, v41);

  return swift_deallocObject();
}

uint64_t sub_1BD9F1258(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SavingsFCCStepUpPresenter(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD9F12CC()
{
  result = qword_1EBD5B948;
  if (!qword_1EBD5B948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B940, &qword_1BE10D128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B920, &qword_1BE10D090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B918, &qword_1BE10D088);
    sub_1BD0DE4F4(&qword_1EBD5B938, &qword_1EBD5B918, &qword_1BE10D088, MEMORY[0x1E697C278]);
    swift_getOpaqueTypeConformance2();
    sub_1BD2477C0();
    swift_getOpaqueTypeConformance2();
    sub_1BD9F1468(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B948);
  }

  return result;
}

uint64_t sub_1BD9F1468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall PKPaymentTransactionDetailTitleHeaderView.configure(title:)(Swift::String title)
{
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B950, &qword_1BE10D1D0);
  v2[4] = sub_1BD0DE4F4(&qword_1EBD5B958, &qword_1EBD5B950, &qword_1BE10D1D0, MEMORY[0x1E697C858]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
  sub_1BD0DE43C();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FC20](v2);
  [v1 setNeedsUpdateConfiguration];
}

uint64_t sub_1BD9F15F0@<X0>(uint64_t a3@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1BE051464();
  v12 = sub_1BE050564();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v11, v13, v15, v17, v19, v20, v21, v22;
  sub_1BD0DDF10(v4, v6, (v8 & 1), v23, v24, v25, v26, v27);
  v10, v28, v29, v30, v31, v32, v33, v34;
  v35 = sub_1BE0503E4();
  v36 = sub_1BE0505F4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v35, v37, v39, v41, v43, v44, v45, v46;
  sub_1BD0DDF10(v12, v14, (v16 & 1), v47, v48, v49, v50, v51);
  v18, v52, v53, v54, v55, v56, v57, v58;
  sub_1BE0503A4();
  v59 = sub_1BE050544();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  sub_1BD0DDF10(v36, v38, (v40 & 1), v64, v66, v67, v68, v69);
  v42, v70, v71, v72, v73, v74, v75, v76;
  v77 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30) + 36));
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v79 = sub_1BE0505C4();
  (*(*(v79 - 8) + 56))(&v77[v78], 1, 1, v79);
  result = swift_getKeyPath();
  *v77 = result;
  *a3 = v59;
  *(a3 + 8) = v61;
  *(a3 + 16) = v63 & 1;
  *(a3 + 24) = v65;
  return result;
}

id PKPaymentTransactionDetailTitleHeaderView.__allocating_init(reuseIdentifier:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_1BE052404();
    a2, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  v12 = [objc_allocWithZone(v2) initWithReuseIdentifier_];

  return v12;
}

id PKPaymentTransactionDetailTitleHeaderView.init(reuseIdentifier:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_1BE052404();
    a2, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v5 = 0;
  }

  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithReuseIdentifier_, v5);

  return v13;
}

id PKPaymentTransactionDetailTitleHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentTransactionDetailTitleHeaderView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKPaymentTransactionDetailTitleHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD9F1BEC(char a1)
{
  result = 0x6573616863727570;
  switch(a1)
  {
    case 1:
      result = 0x646E75666572;
      break;
    case 2:
      result = 0x7469736E617274;
      break;
    case 3:
      v3 = 1919247728;
      goto LABEL_21;
    case 4:
      result = 6645094;
      break;
    case 5:
      result = 0x6172646874646977;
      break;
    case 6:
      result = 0x7055706F74;
      break;
    case 7:
      result = 0x656D7473756A6461;
      break;
    case 8:
      result = 0x6573727562736964;
      break;
    case 9:
      result = 0x73647261776572;
      break;
    case 10:
      v3 = 1819044194;
LABEL_21:
      result = v3 | 0x6D79615000000000;
      break;
    case 11:
      result = 0x7473657265746E69;
      break;
    case 12:
      result = 0x4173647261776572;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x6D6C6C6174736E69;
      break;
    case 15:
      result = 0x646E656469766964;
      break;
    case 16:
      result = 1851879276;
      break;
    case 17:
      result = 0x676E69646E617473;
      break;
    case 18:
      result = 0x6544746365726964;
      break;
    case 19:
      result = 0x726566736E617274;
      break;
    case 20:
      result = 0x6B63656863;
      break;
    case 21:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BD9F1E38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BD9F1BEC(*a1);
  v5 = v4;
  v6 = sub_1BD9F1BEC(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1BE053B84();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

unint64_t sub_1BD9F1EC4()
{
  result = qword_1EBD5B960;
  if (!qword_1EBD5B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B960);
  }

  return result;
}

uint64_t sub_1BD9F1F18()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD9F1BEC(v1);
  v3 = v2;
  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD9F1F7C(uint64_t a1)
{
  sub_1BD9F1BEC(*v1);
  v3 = v2;
  sub_1BE052524();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD9F1FD0(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  sub_1BD9F1BEC(v2);
  v4 = v3;
  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

unint64_t sub_1BD9F2030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD9F4670(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BD9F2060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD9F1BEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BD9F2090()
{
  result = qword_1EBD5B968;
  if (!qword_1EBD5B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B968);
  }

  return result;
}

unint64_t sub_1BD9F20E8()
{
  result = qword_1EBD5B970;
  if (!qword_1EBD5B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B970);
  }

  return result;
}

unint64_t sub_1BD9F2140()
{
  result = qword_1EBD5B978;
  if (!qword_1EBD5B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B978);
  }

  return result;
}

unint64_t sub_1BD9F2198()
{
  result = qword_1EBD5B980;
  if (!qword_1EBD5B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B980);
  }

  return result;
}

unint64_t sub_1BD9F21EC()
{
  result = qword_1EBD5B988;
  if (!qword_1EBD5B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B988);
  }

  return result;
}

unint64_t sub_1BD9F2240()
{
  result = qword_1EBD5B990;
  if (!qword_1EBD5B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B990);
  }

  return result;
}

uint64_t sub_1BD9F2298()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04A874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A884();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1BE048E94();
  __swift_allocate_value_buffer(v10, qword_1EBDAB8C0);
  __swift_project_value_buffer(v10, qword_1EBDAB8C0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_1EBDAB400);
  (*(v4 + 16))(v6, v11, v3);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_1BE048E84();
}

uint64_t sub_1BD9F25B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v116 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v116 - v4;
  v6 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04A874();
  v139 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1BE04A884();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B9C0, &qword_1BE10D4F8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEC8, &qword_1BE10D500);
  v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v133 = *(*(v17 - 8) + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE10D230;
  v119 = v19;
  v136 = v17;
  v120 = *(v17 + 48);
  v132 = v19 + v18;
  *(v19 + v18) = 0;
  v20 = v14;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v134 = __swift_project_value_buffer(v9, qword_1EBDAB400);
  v130 = *(v139 + 16);
  v139 += 16;
  v21 = v11;
  v130(v11, v134, v9);
  sub_1BE04B0A4();
  v22 = v16;
  v23 = v20;
  sub_1BE04A894();
  v24 = v135 + 56;
  v128 = *(v135 + 56);
  v128(v5, 1, 1, v137);
  v135 = v24;
  v126 = sub_1BE048BB4();
  v25 = *(v126 - 8);
  v129 = *(v25 + 56);
  v127 = v25 + 56;
  v129(v2, 1, 1, v126);
  v26 = v132;
  sub_1BE048BD4();
  v131 = v9;
  v120 = *(v136 + 48);
  *(v26 + v133) = 1;
  sub_1BE052354();
  v138 = v8;
  v123 = v23;
  v27 = v130;
  v130(v21, v134, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v124 = v5;
  v28 = v137;
  v128(v5, 1, 1, v137);
  v125 = v2;
  v29 = v126;
  v129(v2, 1, 1, v126);
  v30 = v22;
  sub_1BE048BD4();
  v120 = 2 * v133;
  v117 = (v132 + 2 * v133);
  v31 = v136;
  v118 = *(v136 + 48);
  *v117 = 2;
  sub_1BE052354();
  v27(v21, v134, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v32 = v124;
  v33 = v128;
  v128(v124, 1, 1, v28);
  v129(v125, 1, 1, v29);
  v34 = v32;
  sub_1BE048BD4();
  v35 = v132;
  v118 = v132 + v120 + v133;
  v120 = *(v31 + 48);
  *v118 = 3;
  sub_1BE052354();
  v130(v21, v134, v131);
  sub_1BE04B0A4();
  v36 = v30;
  sub_1BE04A894();
  v37 = v137;
  v33(v34, 1, 1, v137);
  v38 = v129;
  v129(v125, 1, 1, v126);
  sub_1BE048BD4();
  v39 = v133;
  v120 = 4 * v133;
  v117 = (v35 + 4 * v133);
  v40 = v136;
  v118 = *(v136 + 48);
  *v117 = 4;
  sub_1BE052354();
  v41 = v134;
  v130(v21, v134, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v128(v124, 1, 1, v37);
  v42 = v125;
  v43 = v126;
  v38(v125, 1, 1, v126);
  sub_1BE048BD4();
  v118 = v132 + v120 + v39;
  v120 = *(v40 + 48);
  *v118 = 5;
  sub_1BE052354();
  v122 = v21;
  v44 = v130;
  v130(v21, v41, v131);
  sub_1BE04B0A4();
  v121 = v36;
  sub_1BE04A894();
  v45 = v128;
  v128(v124, 1, 1, v137);
  v46 = v43;
  v47 = v129;
  v129(v42, 1, 1, v46);
  sub_1BE048BD4();
  v118 = v132 + 6 * v133;
  v120 = *(v136 + 48);
  *v118 = 6;
  sub_1BE052354();
  v48 = v122;
  v44(v122, v134, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v49 = v137;
  v45(v124, 1, 1, v137);
  v47(v42, 1, 1, v126);
  sub_1BE048BD4();
  v120 = 8 * v133;
  v117 = (v132 + 7 * v133);
  v118 = *(v136 + 48);
  *v117 = 7;
  sub_1BE052354();
  v50 = v130;
  v51 = v131;
  v130(v48, v134, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v52 = v49;
  v45(v124, 1, 1, v49);
  v53 = v126;
  v54 = v129;
  v129(v125, 1, 1, v126);
  sub_1BE048BD4();
  v117 = (v132 + v120);
  v118 = *(v136 + 48);
  *v117 = 8;
  sub_1BE052354();
  v55 = v122;
  v50(v122, v134, v51);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v56 = v124;
  v128(v124, 1, 1, v52);
  v54(v125, 1, 1, v53);
  sub_1BE048BD4();
  v57 = v132;
  v118 = v132 + v120 + v133;
  v120 = *(v136 + 48);
  *v118 = 9;
  sub_1BE052354();
  v58 = v134;
  v59 = v130;
  v130(v55, v134, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v60 = v128;
  v128(v56, 1, 1, v137);
  v61 = v126;
  v129(v125, 1, 1, v126);
  sub_1BE048BD4();
  v118 = v57 + 10 * v133;
  v62 = v136;
  v120 = *(v136 + 48);
  *v118 = 10;
  sub_1BE052354();
  v63 = v131;
  v59(v55, v58, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v60(v56, 1, 1, v137);
  v64 = v129;
  v129(v125, 1, 1, v61);
  sub_1BE048BD4();
  v65 = v133;
  v118 = v132 + 11 * v133;
  v120 = *(v62 + 48);
  *v118 = 11;
  sub_1BE052354();
  v66 = v122;
  v67 = v130;
  v130(v122, v134, v63);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v68 = v128;
  v128(v124, 1, 1, v137);
  v69 = v126;
  v64(v125, 1, 1, v126);
  sub_1BE048BD4();
  v70 = v132;
  v120 = *(v136 + 48);
  *(v132 + 12 * v65) = 12;
  sub_1BE052354();
  v67(v66, v134, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v68(v124, 1, 1, v137);
  v71 = v125;
  v129(v125, 1, 1, v69);
  sub_1BE048BD4();
  v72 = v133;
  v118 = v70 + 13 * v133;
  v73 = v136;
  v120 = *(v136 + 48);
  *v118 = 13;
  sub_1BE052354();
  v74 = v131;
  v130(v66, v134, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v128(v124, 1, 1, v137);
  v129(v71, 1, 1, v126);
  sub_1BE048BD4();
  v120 = *(v73 + 48);
  *(v132 + 14 * v72) = 14;
  sub_1BE052354();
  v75 = v66;
  v76 = v66;
  v77 = v134;
  v78 = v130;
  v130(v76, v134, v74);
  sub_1BE04B0A4();
  v79 = v75;
  sub_1BE04A894();
  v80 = v124;
  v81 = v128;
  v128(v124, 1, 1, v137);
  v82 = v71;
  v83 = v126;
  v129(v82, 1, 1, v126);
  sub_1BE048BD4();
  v120 = 16 * v133;
  v84 = v132;
  v117 = (v132 + 15 * v133);
  v118 = *(v136 + 48);
  *v117 = 15;
  sub_1BE052354();
  v85 = v79;
  v86 = v131;
  v78(v85, v77, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v87 = v137;
  v81(v80, 1, 1, v137);
  v88 = v125;
  v89 = v83;
  v90 = v129;
  v129(v125, 1, 1, v89);
  sub_1BE048BD4();
  v117 = (v84 + v120);
  v118 = *(v136 + 48);
  *v117 = 16;
  sub_1BE052354();
  v91 = v122;
  v92 = v134;
  v130(v122, v134, v86);
  sub_1BE04B0A4();
  v93 = v91;
  sub_1BE04A894();
  v94 = v124;
  v128(v124, 1, 1, v87);
  v95 = v126;
  v90(v88, 1, 1, v126);
  sub_1BE048BD4();
  v96 = v132;
  v118 = v132 + v120 + v133;
  v120 = *(v136 + 48);
  *v118 = 17;
  sub_1BE052354();
  v97 = v131;
  v130(v93, v92, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v98 = v128;
  v128(v94, 1, 1, v137);
  v99 = v95;
  v100 = v129;
  v129(v88, 1, 1, v99);
  sub_1BE048BD4();
  v101 = v136;
  v120 = *(v136 + 48);
  *(v96 + 18 * v133) = 18;
  sub_1BE052354();
  v130(v122, v134, v97);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v102 = v124;
  v98(v124, 1, 1, v137);
  v103 = v126;
  v100(v125, 1, 1, v126);
  v104 = v102;
  sub_1BE048BD4();
  v106 = v132;
  v105 = v133;
  v118 = v132 + 19 * v133;
  v120 = *(v101 + 48);
  *v118 = 19;
  sub_1BE052354();
  v107 = v134;
  v130(v122, v134, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v108 = v137;
  v128(v104, 1, 1, v137);
  v109 = v103;
  v110 = v129;
  v129(v125, 1, 1, v109);
  sub_1BE048BD4();
  v120 = *(v136 + 48);
  *(v106 + 20 * v105) = 20;
  sub_1BE052354();
  v111 = v122;
  v130(v122, v107, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v112 = v124;
  v128(v124, 1, 1, v108);
  v113 = v125;
  v110(v125, 1, 1, v126);
  sub_1BE048BD4();
  *(v132 + 21 * v133) = 21;
  sub_1BE052354();
  v130(v111, v134, v131);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v128(v112, 1, 1, v137);
  v129(v113, 1, 1, v126);
  sub_1BE048BD4();
  v114 = sub_1BD1AEB38(v119);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAB8D8 = v114;
  return result;
}

uint64_t sub_1BD9F4194@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB8C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD9F428C(uint64_t a1)
{
  v2 = sub_1BD51C94C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD9F42DC()
{
  result = qword_1EBD5B998;
  if (!qword_1EBD5B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B998);
  }

  return result;
}

unint64_t sub_1BD9F4334()
{
  result = qword_1EBD5B9A0;
  if (!qword_1EBD5B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B9A0);
  }

  return result;
}

unint64_t sub_1BD9F438C()
{
  result = qword_1EBD5B9A8;
  if (!qword_1EBD5B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B9A8);
  }

  return result;
}

double sub_1BD9F43E0()
{
  if (qword_1EBD37000 != -1)
  {
    swift_once();
  }

  sub_1BE048C84();
  return result;
}

uint64_t sub_1BD9F443C(uint64_t a1)
{
  sub_1BD51AC14();

  return sub_1BE048E14();
}

unint64_t sub_1BD9F448C()
{
  result = qword_1EBD5B9B0;
  if (!qword_1EBD5B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B9B8, &qword_1BE10D498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B9B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionEntityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BD9F4650(unint64_t a1)
{
  if (a1 > 0x16)
  {
    return 21;
  }

  else
  {
    return byte_1BE10D50A[a1];
  }
}

unint64_t sub_1BD9F4670(uint64_t a1, void *a2)
{
  v3 = sub_1BE053BC4();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v3;
  }
}

char *sub_1BD9F46CC(uint64_t a1, void *a2, double a3)
{
  v293 = sub_1BE04A264();
  v5 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v281 = &v270 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v295 = (&v270 - v8);
  v279 = sub_1BE04AF64();
  v9 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v278 = &v270 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v277 = &v270 - v12;
  v290 = sub_1BE04B104();
  v13 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v289 = &v270 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_1BE04B2F4();
  v15 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v287 = &v270 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = sub_1BE04B0F4();
  v17 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v285 = &v270 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BD3FD30C(a1);
  v27 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
    return v27;
  }

  v310 = MEMORY[0x1E69E7CC0];
  v28 = (v19 & 0xFFFFFFFFFFFFFF8);
  v298 = v19;
  if (v19 >> 62)
  {
LABEL_62:
    v29 = sub_1BE053704();
    if (v29)
    {
      goto LABEL_4;
    }

    goto LABEL_63;
  }

  v29 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
LABEL_63:
    v298, v20, v21, v22, v23, v24, v25, v26;
    v28 = MEMORY[0x1E69E7CC0];
LABEL_64:
    v27 = sub_1BD3F0588(v28, v256, v257, v258, v259, v260, v261, v262);
    v28, v263, v264, v265, v266, v267, v268, v269;
    return v27;
  }

LABEL_4:
  v297 = v28;
  v30 = 0;
  v303 = v298 & 0xC000000000000001;
  v276 = v17 + 1;
  v275 = (v13 + 104);
  v274 = (v13 + 8);
  v13 = v298;
  v273 = v15 + 1;
  v271 = (v9 + 32);
  v270 = (v9 + 8);
  v291 = (v5 + 8);
  v302 = *MEMORY[0x1E6998FF0];
  v294 = *MEMORY[0x1E69BC1D0];
  v301 = *MEMORY[0x1E6998FF8];
  v282 = *MEMORY[0x1E69BC1B0];
  v272 = *MEMORY[0x1E6969868];
  v300 = *MEMORY[0x1E6999000];
  v28 = MEMORY[0x1E69E7CC0];
  v280 = *MEMORY[0x1E69BC220];
  v292 = a2;
  v299 = v29;
  while (1)
  {
    if (v303)
    {
      v39 = MEMORY[0x1BFB40900](v30, v13);
    }

    else
    {
      if (v30 >= v297[2])
      {
        goto LABEL_61;
      }

      v39 = *&v13[8 * v30 + 32];
    }

    v17 = v39;
    v40 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v41 = [v39 type];
    if (!v41)
    {
      sub_1BE052434();
LABEL_22:
      v46, v46, v47, v48, v49, v50, v51, v52;
      sub_1BE052434();
      v63, v63, v64, v65, v66, v67, v68, v69;
      sub_1BE052434();
      v70, v70, v71, v72, v73, v74, v75, v76;
LABEL_23:
      v5 = v17;
      v9 = &v310;
      MEMORY[0x1BFB3F7A0]();
      if (*((v310 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v310 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();

      v28 = v310;
      goto LABEL_6;
    }

    v42 = v41;
    v43 = sub_1BE052434();
    v5 = v44;

    v45 = sub_1BE052434();
    if (!v5)
    {
      v29 = v299;
      goto LABEL_22;
    }

    if (v43 == v45 && v5 == v46)
    {
      v46, v46, v45, v48, v49, v50, v51, v52;
    }

    else
    {
      v54 = v46;
      v55 = sub_1BE053B84();
      v54, v56, v57, v58, v59, v60, v61, v62;
      if ((v55 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v77 = [v17 stringValue];
    if (!v77)
    {
      goto LABEL_30;
    }

    v9 = v77;
    v78 = [a2 paymentSetupFieldWithIdentifier_];
    if (!v78)
    {
      break;
    }

    v31 = v78;
    v5, v79, v80, v81, v82, v83, v84, v85;
    [v31 setCurrentValue_];
    [v31 setOriginalCameraCaptureValue_];

    [v31 setSource_];
    v13 = v298;
    v29 = v299;
LABEL_6:
    ++v30;
    if (v40 == v29)
    {
      v13, v32, v33, v34, v35, v36, v37, v38;
      goto LABEL_64;
    }
  }

LABEL_30:
  v296 = v28;
  v87 = sub_1BE052434();
  v93 = v86;
  if (v43 == v87 && v5 == v86)
  {
    v86, v86, v87, v88, v89, v90, v91, v92;
    goto LABEL_34;
  }

  v94 = sub_1BE053B84();
  v93, v95, v96, v97, v98, v99, v100, v101;
  if (v94)
  {
LABEL_34:
    objc_opt_self();
    v102 = swift_dynamicCastObjCClass();
    if (v102)
    {
      v103 = v102;
      v104 = v17;
      v105 = [a2 paymentSetupFieldWithIdentifier_];
      if (v105)
      {
        v283 = v105;
        v284 = v104;
        v308 = 0;
        v309 = 0xE000000000000000;
        v306 = 0;
        v307 = 0xE000000000000000;
        v106 = [v103 dayValue];
        if (v106)
        {
          v107 = v106;
          MEMORY[0x1BFB3F610](3105892, 0xE300000000000000);
          v108 = [v107 description];
          v109 = sub_1BE052434();
          v111 = v110;

          v304 = v109;
          v305 = v111;
          a2 = v292;
          MEMORY[0x1BFB3F610](47, 0xE100000000000000);
          v112 = v305;
          MEMORY[0x1BFB3F610](v304, v305);

          v112, v113, v114, v115, v116, v117, v118, v119;
        }

        v120 = [v103 monthValue];
        if (v120)
        {
          v121 = v120;
          MEMORY[0x1BFB3F610](3099981, 0xE300000000000000);
          v122 = [v121 description];
          v123 = sub_1BE052434();
          v125 = v124;

          v304 = v123;
          v305 = v125;
          a2 = v292;
          MEMORY[0x1BFB3F610](47, 0xE100000000000000);
          v126 = v305;
          MEMORY[0x1BFB3F610](v304, v305);

          v126, v127, v128, v129, v130, v131, v132, v133;
        }

        v134 = [v103 yearValue];
        if (v134)
        {
          v135 = v134;
          MEMORY[0x1BFB3F610](31097, 0xE200000000000000);
          v136 = [v135 description];
          v137 = sub_1BE052434();
          v139 = v138;

          MEMORY[0x1BFB3F610](v137, v139);
          v139, v140, v141, v142, v143, v144, v145, v146;
        }

        v15 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        v147 = v285;
        sub_1BE04AFF4();
        v148 = sub_1BE04B044();
        (*v276)(v147, v286);
        [v15 setLocale_];

        v149 = v289;
        v150 = v290;
        (*v275)(v289, v272, v290);
        v151 = v287;
        sub_1BE04B114();
        (*v274)(v149, v150);
        v152 = sub_1BE04B1D4();
        (*v273)(v151, v288);
        [v15 setCalendar_];

        v153 = v309;
        v154 = sub_1BE052404();
        v153, v155, v156, v157, v158, v159, v160, v161;
        [v15 setDateFormat_];

        v162 = v307;
        v163 = sub_1BE052404();
        v162, v164, v165, v166, v167, v168, v169, v170;
        v171 = [v15 dateFromString_];

        if (v171)
        {
          v5, v172, v173, v174, v175, v176, v177, v178;
          v179 = v284;

          v180 = v278;
          sub_1BE04AEE4();

          v9 = v277;
          v181 = v279;
          (*v271)(v277, v180, v279);
          v182 = sub_1BE04AE64();
          v17 = v283;
          [v283 setCurrentValue_];

          v5 = sub_1BE04AE64();
          [v17 setOriginalCameraCaptureValue_];

          [v17 setSource_];
          (*v270)(v9, v181);
LABEL_58:
          v13 = v298;
          v29 = v299;
          v28 = v296;
          goto LABEL_6;
        }
      }

      else
      {
      }
    }
  }

  v184 = sub_1BE052434();
  v190 = v183;
  if (v43 == v184 && v5 == v183)
  {
    v5, v183, v184, v185, v186, v187, v188, v189;
    v190, v191, v192, v193, v194, v195, v196, v197;
    v15 = v295;
    v13 = v298;
    v29 = v299;
  }

  else
  {
    v198 = sub_1BE053B84();
    v5, v199, v200, v201, v202, v203, v204, v205;
    v190, v206, v207, v208, v209, v210, v211, v212;
    v15 = v295;
    v13 = v298;
    v29 = v299;
    if ((v198 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v213 = [v17 stringValue];
  if (!v213)
  {
    goto LABEL_23;
  }

  v214 = v213;
  v215 = [a2 paymentSetupFieldWithIdentifier_];
  if (!v215)
  {

    goto LABEL_23;
  }

  v5 = v215;
  [v215 setCurrentValue_];
  [v5 setOriginalCameraCaptureValue_];

  [v5 setSource_];
  v216 = v281;
  sub_1BE04A214();
  sub_1BE04A244();
  v217 = *v291;
  (*v291)(v216, v293);
  result = [v17 formattedStringValue];
  if (result)
  {
    v219 = result;
    v220 = sub_1BE052434();
    v222 = v221;

    v308 = v220;
    v309 = v222;
    sub_1BD0DDEBC();
    v223 = sub_1BE053524();
    v222, v224, v225, v226, v227, v228, v229, v230;
    v308 = v223;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
    sub_1BD03B274();
    v231 = v15;
    v15 = sub_1BE0522E4();
    v9 = v232;
    v223, v232, v233, v234, v235, v236, v237, v238;
    v239 = [v5 textFieldObject];
    if (v239)
    {
      v240 = v239;
      v241 = sub_1BE052404();
      v9, v242, v243, v244, v245, v246, v247, v248;
      [v240 updateDisplayFormat_];

      v217(v231, v293);
    }

    else
    {
      v217(v231, v293);
      v9, v249, v250, v251, v252, v253, v254, v255;
    }

    a2 = v292;
    goto LABEL_58;
  }

  __break(1u);
  return result;
}