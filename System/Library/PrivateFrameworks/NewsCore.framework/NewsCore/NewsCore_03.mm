id NotificationHistoryItem.init(_:notifiedAt:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v92 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C8, &qword_1B68123C0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v118 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v116 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v114 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v92 - v25;
  v27 = sub_1B67D877C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v32 = result;
  v33 = sub_1B67D964C();
  v111 = v34;
  v112 = v33;

  result = [a1 canonicalID];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = result;
  v110 = v8;
  v36 = sub_1B67D964C();
  v108 = v37;
  v109 = v36;

  v38 = [a1 articleID];
  v39 = sub_1B67D964C();
  v106 = v40;
  v107 = v39;
  result = [a1 clusterID];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v41 = result;
  v105 = a3;

  v98 = sub_1B67D964C();
  v97 = v42;

  v43 = [a1 channelID];
  v95 = sub_1B67D964C();
  v94 = v44;

  v103 = a1;
  v96 = [a1 source];
  v102 = v28;
  v45 = *(v28 + 16);
  v101 = v30;
  v104 = a2;
  v122 = v27;
  v100 = v28 + 16;
  v99 = v45;
  v45(v30, a2, v27);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v47 = *(*(v46 - 8) + 56);
  v47(v26, 1, 1, v46);
  v47(v24, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v121 = sub_1B67D8B3C();
  v47(v26, 1, 1, v46);
  v47(v24, 1, 1, v46);
  swift_allocObject();
  v48 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB21F80 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDB204B8;
  v49 = unk_1EDB204C0;

  v51 = sub_1B6421E80();
  v120 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v48, v50, v49, v51 & 1);
  v47(v26, 1, 1, v46);
  v47(v24, 1, 1, v46);
  swift_allocObject();
  v52 = sub_1B67D8DBC();
  if (qword_1EDB21F68 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDB20498;
  v54 = unk_1EDB204A0;

  v55 = sub_1B6421E80();
  v119 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v52, v53, v54, v55 & 1);
  v47(v26, 1, 1, v46);
  v47(v24, 1, 1, v46);
  swift_allocObject();
  v56 = sub_1B67D8DBC();
  if (qword_1EDB21F50 != -1)
  {
    swift_once();
  }

  v57 = qword_1EDB20478;
  v58 = unk_1EDB20480;

  v59 = sub_1B6421E80();
  v93 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v56, v57, v58, v59 & 1);
  v47(v26, 1, 1, v46);
  v47(v24, 1, 1, v46);
  swift_allocObject();
  v60 = sub_1B67D8DBC();
  if (qword_1EDB21F58 != -1)
  {
    swift_once();
  }

  v61 = qword_1EDB20488;
  v62 = unk_1EDB20490;

  v63 = sub_1B6421E80();
  v92 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v60, v61, v62, v63 & 1);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v65 = *(*(v64 - 8) + 56);
  v65(v113, 1, 1, v64);
  v65(v114, 1, 1, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  swift_allocObject();
  v66 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B8, &qword_1B6812388);
  v67 = v115;
  v68 = v116;
  if (qword_1EDB21F70 != -1)
  {
    swift_once();
  }

  v69 = qword_1EDB204A8;
  v70 = unk_1EDB204B0;

  v71 = sub_1B6421E80();
  v114 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v66, v69, v70, v71 & 1);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v73 = *(*(v72 - 8) + 56);
  v73(v67, 1, 1, v72);
  v73(v68, 1, 1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  v113 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  if (qword_1EDB21F88 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDB204C8;
  v75 = unk_1EDB204D0;
  sub_1B6421ED0();

  v76 = sub_1B6421E80();
  v113 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v113, v74, v75, v76 & 1);
  v73(v67, 1, 1, v72);
  v73(v68, 1, 1, v72);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v116 = sub_1B67D8B3C();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D0, &qword_1B68123C8);
  v78 = *(*(v77 - 8) + 56);
  v78(v117, 1, 1, v77);
  v78(v118, 1, 1, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D8, &qword_1B68123D0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C0, &qword_1B68123B8);
  swift_allocObject();
  v118 = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v123 = v112;
  v124 = v111;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v79 = v110;
  sub_1B67D876C();
  v80 = v102;
  v117 = *(v102 + 56);
  v81 = v122;
  (v117)(v79, 0, 1, v122);
  sub_1B67D8DDC();

  v123 = v109;
  v124 = v108;

  sub_1B67D8DDC();

  v123 = v107;
  v124 = v106;

  sub_1B67D8DDC();

  v82 = v93;
  v123 = v98;
  v124 = v97;

  sub_1B67D8DDC();

  v83 = v92;
  v123 = v95;
  v124 = v94;

  sub_1B67D8DDC();

  v84 = v114;
  v123 = v96;
  LOBYTE(v124) = 0;

  sub_1B67D8DDC();

  v85 = v113;
  v86 = v101;
  v99(v79, v101, v81);
  (v117)(v79, 0, 1, v81);

  sub_1B67D8DDC();

  v87 = v118;
  sub_1B67D8B4C();
  LOBYTE(v123) = 1;
  sub_1B67D8DDC();

  v88 = *(v80 + 8);
  v88(v104, v81);
  result = (v88)(v86, v81);
  v89 = v105;
  v90 = v120;
  *v105 = v121;
  v89[1] = v90;
  v89[2] = v119;
  v89[3] = v82;
  v89[4] = v83;
  v89[5] = v84;
  v91 = v116;
  v89[6] = v85;
  v89[7] = v91;
  v89[8] = v87;
  return result;
}

uint64_t NotificationHistoryItem.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C8, &qword_1B68123C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v65 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v22 = sub_1B67D8B3C();
  v67 = a1;
  *a1 = v22;
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  swift_allocObject();
  v23 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB21F80 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDB204B8;
  v24 = unk_1EDB204C0;

  v26 = sub_1B6421E80();
  v27 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v23, v25, v24, v26 & 1);
  v67[1] = v27;
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  swift_allocObject();
  v28 = sub_1B67D8DBC();
  if (qword_1EDB21F68 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDB20498;
  v30 = unk_1EDB204A0;

  v31 = sub_1B6421E80();
  v32 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v28, v29, v30, v31 & 1);
  v67[2] = v32;
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  swift_allocObject();
  v33 = sub_1B67D8DBC();
  if (qword_1EDB21F50 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDB20478;
  v35 = unk_1EDB20480;

  v36 = sub_1B6421E80();
  v37 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v33, v34, v35, v36 & 1);
  v38 = v67;
  v67[3] = v37;
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  swift_allocObject();
  v39 = sub_1B67D8DBC();
  if (qword_1EDB21F58 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDB20488;
  v41 = unk_1EDB20490;

  v42 = sub_1B6421E80();
  v38[4] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v39, v40, v41, v42 & 1);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v44 = *(*(v43 - 8) + 56);
  v44(v61, 1, 1, v43);
  v44(v63, 1, 1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  swift_allocObject();
  v45 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B8, &qword_1B6812388);
  v46 = v66;
  v47 = v62;
  if (qword_1EDB21F70 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDB204A8;
  v49 = unk_1EDB204B0;

  v50 = sub_1B6421E80();
  v38[5] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v45, v48, v49, v50 & 1);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v52 = *(*(v51 - 8) + 56);
  v52(v47, 1, 1, v51);
  v52(v46, 1, 1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  v63 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  if (qword_1EDB21F88 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDB204C8;
  v54 = unk_1EDB204D0;
  sub_1B67D877C();
  sub_1B6421ED0();

  v55 = sub_1B6421E80();
  v56 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v63, v53, v54, v55 & 1);
  v57 = v67;
  v67[6] = v56;
  v52(v47, 1, 1, v51);
  v52(v66, 1, 1, v51);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v57[7] = sub_1B67D8B3C();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D0, &qword_1B68123C8);
  v59 = *(*(v58 - 8) + 56);
  v59(v64, 1, 1, v58);
  v59(v65, 1, 1, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D8, &qword_1B68123D0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C0, &qword_1B68123B8);
  swift_allocObject();
  v57[8] = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v68 = 0;
  sub_1B67D8DDC();
}

uint64_t NotificationHistoryItem.fastEntity.getter()
{
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8B9C();
}

uint64_t sub_1B6475514(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x656C63697472615FLL;
    if (a1 != 2)
    {
      v6 = 0x72657473756C635FLL;
    }

    if (a1)
    {
      v5 = 0x63696E6F6E61635FLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65696669746F6E5FLL;
    v2 = 0x6465696669646F6DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C656E6E6168635FLL;
    if (a1 != 4)
    {
      v3 = 0x656372756F735FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B6475650@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B64777CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6475684(uint64_t a1)
{
  v2 = sub_1B6475C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64756C0(uint64_t a1)
{
  v2 = sub_1B6475C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationHistoryItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6E0, &qword_1B68123D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v24 = v1[2];
  v25 = v8;
  v11 = v1[5];
  v22 = v1[4];
  v23 = v10;
  v12 = v1[7];
  v20 = v1[6];
  v21 = v11;
  v18 = v1[8];
  v19 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6475C08();

  v13 = v4;
  sub_1B67DA47C();
  v27 = v9;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();
  if (v2)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v14 = v23;
    v15 = v24;

    v27 = v25;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
    sub_1B6413CCC(&qword_1EB94A6E8, &qword_1EB94A6B0, &qword_1B6812380, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA24C();
    v27 = v15;
    v26 = 2;
    sub_1B67DA24C();
    v27 = v14;
    v26 = 3;
    sub_1B67DA24C();
    v27 = v22;
    v26 = 4;
    sub_1B67DA24C();
    v27 = v21;
    v26 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B8, &qword_1B6812388);
    sub_1B6413CCC(&qword_1EB94A6F0, &qword_1EB94A6B8, &qword_1B6812388, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA24C();
    v27 = v20;
    v26 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
    sub_1B6413CCC(&qword_1EB94A5F0, &qword_1EB94A5B8, &unk_1B6812390, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA24C();
    v27 = v19;
    v26 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    v27 = v18;
    v26 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C0, &qword_1B68123B8);
    sub_1B6413CCC(&qword_1EB94A6F8, &qword_1EB94A6C0, &qword_1B68123B8, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    return (*(v5 + 8))(v7, v13);
  }
}

unint64_t sub_1B6475C08()
{
  result = qword_1EB952B80[0];
  if (!qword_1EB952B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952B80);
  }

  return result;
}

uint64_t NotificationHistoryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v83 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A700, &qword_1B68123E0);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v93 = &v82 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C8, &qword_1B68123C0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v90 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v97 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 1, 1, v21);
  v22(v18, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v101 = sub_1B67D8B3C();
  v22(v20, 1, 1, v21);
  v22(v18, 1, 1, v21);
  swift_allocObject();
  v23 = sub_1B67D8DBC();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB21F80 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDB204B8;
  v24 = unk_1EDB204C0;

  v26 = sub_1B6421E80();
  v92 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v23, v25, v24, v26 & 1);
  v22(v20, 1, 1, v21);
  v22(v18, 1, 1, v21);
  swift_allocObject();
  v27 = sub_1B67D8DBC();
  if (qword_1EDB21F68 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDB20498;
  v29 = unk_1EDB204A0;

  v30 = sub_1B6421E80();
  v100 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v27, v28, v29, v30 & 1);
  v22(v20, 1, 1, v21);
  v22(v18, 1, 1, v21);
  swift_allocObject();
  v31 = sub_1B67D8DBC();
  if (qword_1EDB21F50 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDB20478;
  v33 = unk_1EDB20480;

  v34 = sub_1B6421E80();
  v99 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v31, v32, v33, v34 & 1);
  v22(v20, 1, 1, v21);
  v22(v18, 1, 1, v21);
  swift_allocObject();
  v35 = sub_1B67D8DBC();
  if (qword_1EDB21F58 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDB20488;
  v37 = unk_1EDB20490;

  v38 = sub_1B6421E80();
  v98 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v35, v36, v37, v38 & 1);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v40 = *(*(v39 - 8) + 56);
  v40(v96, 1, 1, v39);
  v40(v97, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  swift_allocObject();
  v41 = sub_1B67D8DBC();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B8, &qword_1B6812388);
  v43 = v102;
  v44 = v88;
  if (qword_1EDB21F70 != -1)
  {
    swift_once();
  }

  v45 = qword_1EDB204A8;
  v46 = unk_1EDB204B0;

  v47 = sub_1B6421E80();
  v84 = v42;
  v97 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v41, v45, v46, v47 & 1);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v49 = *(*(v48 - 8) + 56);
  v49(v44, 1, 1, v48);
  v49(v43, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  v50 = sub_1B67D8DBC();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  v51 = v44;
  if (qword_1EDB21F88 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDB204C8;
  v53 = unk_1EDB204D0;
  sub_1B67D877C();
  sub_1B6421ED0();

  v54 = sub_1B6421E80();
  v95 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v50, v52, v53, v54 & 1);
  v49(v51, 1, 1, v48);
  v49(v102, 1, 1, v48);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v102 = sub_1B67D8B3C();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D0, &qword_1B68123C8);
  v56 = *(*(v55 - 8) + 56);
  v56(v89, 1, 1, v55);
  v56(v90, 1, 1, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D8, &qword_1B68123D0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C0, &qword_1B68123B8);
  swift_allocObject();
  v90 = sub_1B67D8B3C();
  v57 = v94;
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  sub_1B6475C08();
  v58 = v93;
  v59 = v91;
  sub_1B67DA46C();
  if (v59)
  {
    v60 = v92;
    v61 = v95;
    v65 = v102;
    __swift_destroy_boxed_opaque_existential_1(v57);
    v110 = v101;
    v111 = v60;
    v112 = v100;
    v113 = v99;
    v114 = v98;
    v115 = v97;
    v116 = v61;
    v117 = v65;
    v118 = v90;
  }

  else
  {
    LOBYTE(v104) = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    v62 = v87;
    sub_1B67DA1CC();

    v101 = v110;
    LOBYTE(v104) = 1;
    v63 = v58;
    v64 = sub_1B6413CCC(&qword_1EB94A708, &qword_1EB94A6B0, &qword_1B6812380, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA1CC();

    v67 = v64;
    v68 = v110;
    LOBYTE(v104) = 2;
    v92 = v67;
    sub_1B67DA1CC();

    v100 = v110;
    LOBYTE(v104) = 3;
    sub_1B67DA1CC();

    v99 = v110;
    LOBYTE(v104) = 4;
    sub_1B67DA1CC();

    v98 = v110;
    LOBYTE(v104) = 5;
    sub_1B6413CCC(&qword_1EB94A710, &qword_1EB94A6B8, &qword_1B6812388, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA1CC();

    v97 = v110;
    LOBYTE(v104) = 6;
    sub_1B6413CCC(&qword_1EB94A620, &qword_1EB94A5B8, &unk_1B6812390, &protocol conformance descriptor for CKColumn<A>);
    sub_1B67DA1CC();

    v69 = v110;
    LOBYTE(v104) = 7;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v70 = v110;
    v109 = 8;
    sub_1B6413CCC(&qword_1EB94A718, &qword_1EB94A6C0, &qword_1B68123B8, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();
    (*(v85 + 8))(v63, v62);

    v71 = v69;
    v95 = v69;
    v72 = v119;
    v73 = v101;
    *&v104 = v101;
    *(&v104 + 1) = v68;
    v74 = v70;
    v102 = v70;
    v75 = v100;
    v76 = v99;
    *&v105 = v100;
    *(&v105 + 1) = v99;
    v77 = v98;
    v78 = v97;
    *&v106 = v98;
    *(&v106 + 1) = v97;
    *&v107 = v71;
    *(&v107 + 1) = v74;
    v108 = v119;
    v79 = v83;
    *(v83 + 64) = v119;
    v80 = v107;
    v79[2] = v106;
    v79[3] = v80;
    v81 = v105;
    *v79 = v104;
    v79[1] = v81;
    sub_1B6476E40(&v104, &v110);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v110 = v73;
    v111 = v68;
    v112 = v75;
    v113 = v76;
    v114 = v77;
    v115 = v78;
    v116 = v95;
    v117 = v102;
    v118 = v72;
  }

  return sub_1B6476E10(&v110);
}

unint64_t sub_1B6476EB4(uint64_t a1)
{
  *(a1 + 8) = sub_1B6476EE4();
  result = sub_1B6476F38();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6476EE4()
{
  result = qword_1EDB1F320;
  if (!qword_1EDB1F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F320);
  }

  return result;
}

unint64_t sub_1B6476F38()
{
  result = qword_1EB94A720;
  if (!qword_1EB94A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94A720);
  }

  return result;
}

unint64_t sub_1B6476FC0()
{
  result = qword_1EDB1F330;
  if (!qword_1EDB1F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F330);
  }

  return result;
}

unint64_t sub_1B6477018()
{
  result = qword_1EDB1F310;
  if (!qword_1EDB1F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F310);
  }

  return result;
}

unint64_t sub_1B6477070()
{
  result = qword_1EDB1F328;
  if (!qword_1EDB1F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F328);
  }

  return result;
}

unint64_t sub_1B64770C8()
{
  result = qword_1EDB1F308;
  if (!qword_1EDB1F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F308);
  }

  return result;
}

unint64_t sub_1B6477120()
{
  result = qword_1EDB1F338[0];
  if (!qword_1EDB1F338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB1F338);
  }

  return result;
}

unint64_t sub_1B647717C()
{
  result = qword_1EDB1F2F8;
  if (!qword_1EDB1F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F2F8);
  }

  return result;
}

unint64_t sub_1B64771D0()
{
  result = qword_1EDB1F300;
  if (!qword_1EDB1F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F300);
  }

  return result;
}

unint64_t sub_1B6477244()
{
  result = qword_1EDB1F318;
  if (!qword_1EDB1F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F318);
  }

  return result;
}

uint64_t sub_1B6477298(uint64_t a1)
{
  v2 = sub_1B6476FC0();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64772E4(uint64_t a1)
{
  v2 = sub_1B6476FC0();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B6477330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6476FC0();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B6477394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6476FC0();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64773E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6476FC0();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6477434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6476FC0();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B64774BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B6477504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationHistoryItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationHistoryItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B64776C8()
{
  result = qword_1EB952D10[0];
  if (!qword_1EB952D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952D10);
  }

  return result;
}

unint64_t sub_1B6477720()
{
  result = qword_1EB952E20;
  if (!qword_1EB952E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB952E20);
  }

  return result;
}

unint64_t sub_1B6477778()
{
  result = qword_1EB952E28[0];
  if (!qword_1EB952E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952E28);
  }

  return result;
}

uint64_t sub_1B64777CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63696E6F6E61635FLL && a2 == 0xEC00000044496C61 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C63697472615FLL && a2 == 0xEA00000000004449 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72657473756C635FLL && a2 == 0xEA00000000004449 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C656E6E6168635FLL && a2 == 0xEA00000000004449 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F735FLL && a2 == 0xE700000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65696669746F6E5FLL && a2 == 0xEB00000000744164 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B6828BB0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t NotificationHistoryType.add(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v15[2] = a1[2];
  v15[3] = v6;
  v16 = *(a1 + 8);
  v7 = a1[1];
  v15[0] = *a1;
  v15[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A728, &unk_1B68127B0);
  v8 = swift_allocObject();
  v9 = a1[2];
  v10 = a1[3];
  v11 = *a1;
  *(v8 + 48) = a1[1];
  *(v8 + 64) = v9;
  *(v8 + 80) = v10;
  *(v8 + 96) = *(a1 + 8);
  *(v8 + 16) = xmmword_1B68100D0;
  *(v8 + 32) = v11;
  v12 = *(a3 + 24);
  sub_1B6476E40(v15, v14);
  v12(v8, a2, a3);
}

uint64_t sub_1B6477BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PrivateZoneLocation(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A730, &qword_1B68127C0);
  sub_1B6418A50(a2, v9);
  v11 = sub_1B67D8A9C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = PrivateZone.__allocating_init(context:location:logger:)(a1, v9, v6);
  sub_1B6416298(a2);
  *(v10 + 16) = v12;
  return v10;
}

uint64_t sub_1B6477D2C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B6477D74, 0, 0);
}

uint64_t sub_1B6477D74()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = *(v0[7] + 16);
  v0[9] = v3;
  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B68100D0;

  *(v4 + 32) = *sub_1B6416A90();
  v0[4] = v4;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580, MEMORY[0x1E69E6328]);
  sub_1B67D9E5C();
  v0[5] = v0[3];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A748, &qword_1B68127E0);
  *(v2 + 24) = v6;
  *(v2 + 32) = sub_1B6413CCC(&qword_1EDB1E610, &qword_1EB94A748, &qword_1B68127E0, MEMORY[0x1E69E6340]);
  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A730, &qword_1B68127C0);
  v9 = sub_1B6413CCC(&qword_1EB94A750, &qword_1EB94A730, &qword_1B68127C0, &protocol conformance descriptor for PrivateZone<A, B>);
  *v7 = v0;
  v7[1] = sub_1B6477FE0;
  v10 = v0[6];

  return PrivateZoneType.query<A>(options:executor:)(v10, v0 + 5, sub_1B64784D4, v5, v8, v6, v9);
}

uint64_t sub_1B6477FE0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6478158, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B6478158()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B64781BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v21 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v21 - v3);
  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B67D8B1C();
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6472384();

  sub_1B67D876C();
  v24[3] = v5;
  v24[4] = MEMORY[0x1E69D6130];
  __swift_allocate_boxed_opaque_existential_0(v24);
  sub_1B67D870C();
  (*(v6 + 8))(v8, v5);
  sub_1B67D8C9C();

  __swift_destroy_boxed_opaque_existential_1(v24);
  v13 = v12[1];
  *v4 = *v12;
  v4[1] = v13;
  v14 = *MEMORY[0x1E69D6220];
  v15 = sub_1B67D8E4C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);

  v17 = v24[6];
  v18 = sub_1B67D8D2C();
  if (v17)
  {
    sub_1B6479254(v4);
    return (*(v9 + 8))(v11, v22);
  }

  else
  {
    v20 = v18;
    sub_1B6479254(v4);
    result = (*(v9 + 8))(v11, v22);
    *v21 = v20;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B8C96DF0);
  }

  return result;
}

uint64_t sub_1B647853C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B6478560, 0, 0);
}

uint64_t sub_1B6478560()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = *(v0[9] + 16);
  v0[10] = v3;
  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B68100D0;

  *(v4 + 32) = *sub_1B6416A90();
  v0[4] = v4;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580, MEMORY[0x1E69E6328]);
  sub_1B67D9E5C();
  v0[5] = v0[3];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A730, &qword_1B68127C0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A758, &qword_1B68127F0);
  v9 = sub_1B6413CCC(&qword_1EB94A750, &qword_1EB94A730, &qword_1B68127C0, &protocol conformance descriptor for PrivateZone<A, B>);
  *v6 = v0;
  v6[1] = sub_1B6478794;
  v10 = v0[6];

  return PrivateZoneType.query<A>(options:executor:)(v10, v0 + 5, sub_1B6478B68, v5, v7, v8, v9);
}

uint64_t sub_1B6478794()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B647890C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B6478924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v19[-1] - v6);
  v8 = sub_1B67D8B1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6472244();
  v19[3] = MEMORY[0x1E69E6158];
  v19[4] = MEMORY[0x1E69D62D8];
  v19[0] = a2;
  v19[1] = a3;

  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(v19);
  v12 = sub_1B6472384();
  v13 = v12[1];
  *v7 = *v12;
  v7[1] = v13;
  v14 = *MEMORY[0x1E69D6220];
  v15 = sub_1B67D8E4C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v7, v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);

  sub_1B67D8D1C();
  sub_1B6479254(v7);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B6478B84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B6478BBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B642694C;

  return sub_1B6477D2C(a1);
}

uint64_t sub_1B6478C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B6422E9C;

  return sub_1B647853C(a1, a2, a3);
}

uint64_t sub_1B6478D54()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B6478DEC;

  return sub_1B64FA510();
}

uint64_t sub_1B6478DEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B6478F00()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B64792BC;

  return sub_1B64FABC0();
}

uint64_t dispatch thunk of NotificationHistoryType.recentHistoryItems()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B642694C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of NotificationHistoryType.historyItem(canonicalID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B6422E9C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1B6479254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B64792C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v60 = a1;
  v62 = a2;
  v4 = sub_1B67D8A9C();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A760, &qword_1B6812880);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v49 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A768, &qword_1B6812888);
  v55 = *(v61 - 8);
  v8 = MEMORY[0x1EEE9AC00](v61);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v49 - v12;
  sub_1B644E570();
  v13 = *(v2 + 16);

  v14 = [objc_msgSend(v13 appConfigurationManager)];
  swift_unknownObjectRelease();
  if ([v14 respondsToSelector_])
  {
    [v14 isSmarterFetchEnabledForLatest];
  }

  swift_unknownObjectRelease();
  sub_1B6479B80();
  v15 = sub_1B67D880C();

  if (v15)
  {
    MEMORY[0x1EEE9AC00](v16);
    v17 = v60;
    *(&v49 - 4) = v60;
    *(&v49 - 24) = 0;
    *(&v49 - 2) = v3;
    (*(v57 + 104))(v56, *MEMORY[0x1E69E8790], v58);
    v18 = v59;
    sub_1B67D9ADC();
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    *(v19 + 24) = v17;
    v21 = v61;
    v20 = v62;
    v62[3] = v61;
    v20[4] = sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888, MEMORY[0x1E69E87D0]);
    __swift_allocate_boxed_opaque_existential_0(v20);

    v22 = v17;
    sub_1B644ABA0(sub_1B647DBA0, v19, v21);

    return (*(v55 + 8))(v18, v21);
  }

  else
  {
    sub_1B644E900();

    v24 = [objc_msgSend(v13 appConfigurationManager)];
    swift_unknownObjectRelease();
    if ([v24 respondsToSelector_])
    {
      [v24 isSmarterFetchEnabledForSupplementalLatest];
    }

    swift_unknownObjectRelease();
    v25 = sub_1B67D880C();

    if (v25)
    {
      v26 = sub_1B6471774();
      v28 = v50;
      v27 = v51;
      v29 = v52;
      (*(v51 + 16))(v50, v26, v52);
      v30 = sub_1B67D8A7C();
      v31 = sub_1B67D9C8C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1B63EF000, v30, v31, "will fetch My Articles from CK with supplementation from Smarter Fetch", v32, 2u);
        MEMORY[0x1B8C96DF0](v32, -1, -1);
      }

      v33 = (*(v27 + 8))(v28, v29);
      MEMORY[0x1EEE9AC00](v33);
      v34 = v60;
      *(&v49 - 2) = v60;
      *(&v49 - 1) = v3;
      v35 = *MEMORY[0x1E69E8790];
      v36 = v56;
      v37 = *(v57 + 104);
      v38 = v58;
      v37(v56, v35, v58);
      v39 = sub_1B67D9ADC();
      MEMORY[0x1EEE9AC00](v39);
      *(&v49 - 4) = v34;
      *(&v49 - 24) = 1;
      *(&v49 - 2) = v3;
      v37(v36, v35, v38);
      v40 = v53;
      sub_1B67D9ADC();
      v41 = v54;
      v42 = v61;
      sub_1B644ABA0(sub_1B6479F04, 0, v61);
      v43 = *(v55 + 8);
      v43(v40, v42);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A770, &qword_1B6812890);
      v45 = v62;
      v62[3] = v44;
      v45[4] = sub_1B6413CCC(&qword_1EB94A778, &qword_1EB94A770, &qword_1B6812890, MEMORY[0x1E698D2E0]);
      __swift_allocate_boxed_opaque_existential_0(v45);
      sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888, MEMORY[0x1E69E87D0]);
      v46 = v59;
      sub_1B67D8A5C();
      v43(v41, v42);
      return (v43)(v46, v42);
    }

    else
    {
      v47 = v62;
      v62[3] = v61;
      v47[4] = sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888, MEMORY[0x1E69E87D0]);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
      MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
      *(&v49 - 2) = v60;
      *(&v49 - 1) = v3;
      (*(v57 + 104))(v56, *MEMORY[0x1E69E8790], v58);
      return sub_1B67D9ADC();
    }
  }
}

unint64_t sub_1B6479B80()
{
  result = qword_1EDB1ED10;
  if (!qword_1EDB1ED10)
  {
    type metadata accessor for MyArticlesService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1ED10);
  }

  return result;
}

uint64_t sub_1B6479BD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a3;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A760, &qword_1B6812880);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = sub_1B67D8A9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6471774();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a1;
  v15 = sub_1B67D8A7C();
  v16 = sub_1B67D9C8C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    v19 = a1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1B63EF000, v15, v16, "failed fetch My Articles from Smarter Fetch, falling back to CK, error=%{public}@", v17, 0xCu);
    sub_1B6418AB4(v18, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v18, -1, -1);
    MEMORY[0x1B8C96DF0](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A768, &qword_1B6812888);
  a4[4] = sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888, MEMORY[0x1E69E87D0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
  v22 = v27;
  *(&v24 - 2) = v26;
  *(&v24 - 1) = v22;
  (*(v24 + 104))(v8, *MEMORY[0x1E69E8790], v25);
  return sub_1B67D9ADC();
}

uint64_t sub_1B6479F04@<X0>(uint64_t *a1@<X8>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A760, &qword_1B6812880);
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v15 - v3;
  v5 = sub_1B67D8A9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6471774();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_1B67D8A7C();
  v11 = sub_1B67D9C9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = v4;
    v13 = v12;
    *v12 = 0;
    _os_log_impl(&dword_1B63EF000, v10, v11, "ignoring failure to supplement My Articles from Smarter Fetch", v12, 2u);
    v4 = v16;
    MEMORY[0x1B8C96DF0](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8790], v17);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A768, &qword_1B6812888);
  a1[4] = sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888, MEMORY[0x1E69E87D0]);
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1B67D9ADC();
}

uint64_t sub_1B647A200(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  v7 = *(v6 - 8);
  v81 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v72 - v8;
  v9 = sub_1B67D8A9C();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v83 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1B6480148();
  v12 = [objc_allocWithZone(FCFeedRequestOperation) init];
  v13 = *(a3 + 16);
  [v12 setContext_];
  [v12 setFeedDatabase_];
  v14 = [objc_msgSend(v13 configurationManager)];
  swift_unknownObjectRelease();
  [v12 setConfiguration_];
  swift_unknownObjectRelease();
  sub_1B63F3DA0(0, &unk_1EDB1E5A0, off_1E7C344C0);
  v15 = sub_1B67D97AC();
  [v12 setFeedRequests_];

  [v12 setExpectedNetworkEventCount_];
  if (a2[OBJC_IVAR___FCMyArticlesRequest_isFullFetch] == 1)
  {
    [v12 setPrewarmRequestKey_];
    swift_unknownObjectRelease();
  }

  v16 = sub_1B6471774();
  v18 = v83;
  v17 = v84;
  v19 = v85;
  (*(v84 + 16))(v83, v16, v85);
  v20 = v12;
  v21 = a2;

  v22 = sub_1B67D8A7C();
  LODWORD(v79) = sub_1B67D9C9C();
  v23 = os_log_type_enabled(v22, v79);
  v86 = v6;
  v87 = a1;
  v80 = v20;
  if (!v23)
  {

    swift_bridgeObjectRelease_n();
    (*(v17 + 8))(v18, v19);
LABEL_20:
    v55 = sub_1B64802E0();
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v57 = a1;
    v58 = v56;
    v85 = *(v7 + 16);
    v59 = v82;
    v60 = v86;
    v85(v82, v57, v86);
    v61 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v62 = (v81 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v58;
    v79 = v58;
    v84 = *(v7 + 32);
    (v84)(v63 + v61, v59, v60);
    *(v63 + v62) = v55;
    v93 = sub_1B647FA28;
    v94 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v83 = &v91;
    v91 = sub_1B647ACDC;
    v92 = &block_descriptor_31;
    v64 = _Block_copy(&aBlock);

    v65 = v80;
    [v80 setProgressHandler_];
    _Block_release(v64);
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = v86;
    v85(v59, v87, v86);
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    (v84)(v68 + v61, v59, v67);
    *(v68 + v62) = v79;
    v93 = sub_1B647FBE0;
    v94 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = sub_1B647B218;
    v92 = &block_descriptor_40;
    v69 = _Block_copy(&aBlock);

    [v65 setRequestCompletionHandler_];
    _Block_release(v69);
    *(swift_allocObject() + 16) = v65;
    v70 = v65;
    sub_1B67D9A4C();
    [v70 start];
  }

  v78 = v22;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  aBlock = v77;
  *v24 = 136446722;
  v26 = [v20 shortOperationDescription];

  if (!v26)
  {
    goto LABEL_22;
  }

  v27 = sub_1B67D964C();
  v29 = v28;

  v30 = sub_1B6456540(v27, v29, &aBlock);

  *(v24 + 4) = v30;
  *(v24 + 12) = 2114;
  v31 = *&v21[OBJC_IVAR___FCMyArticlesRequest_dateRange];
  *(v24 + 14) = v31;
  *v25 = v31;
  *(v24 + 22) = 2082;
  v76 = v21;
  v75 = v24;
  v74 = v25;
  if (v11 >> 62)
  {
    v32 = sub_1B67DA04C();
    if (v32)
    {
      goto LABEL_7;
    }

LABEL_18:
    v46 = v31;

    v35 = MEMORY[0x1E69E7CC0];
    v45 = v83;
    a1 = v87;
LABEL_19:
    v47 = MEMORY[0x1B8C94A20](v35, MEMORY[0x1E69E6158]);
    v49 = v48;

    v50 = sub_1B6456540(v47, v49, &aBlock);

    v51 = v75;
    *(v75 + 24) = v50;
    v52 = v78;
    _os_log_impl(&dword_1B63EF000, v78, v79, "will fetch My Articles from CK, operation=%{public}s, range=%{public}@, feeds=%{public}s", v51, 0x20u);
    v53 = v74;
    sub_1B6418AB4(v74, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v53, -1, -1);
    v54 = v77;
    swift_arrayDestroy();
    MEMORY[0x1B8C96DF0](v54, -1, -1);
    MEMORY[0x1B8C96DF0](v51, -1, -1);

    (*(v84 + 8))(v45, v85);
    goto LABEL_20;
  }

  v32 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_18;
  }

LABEL_7:
  v88 = MEMORY[0x1E69E7CC0];
  v33 = v31;
  sub_1B6456B24(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v73 = v7;
    v34 = 0;
    v35 = v88;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1B8C95180](v34, v11);
      }

      else
      {
        v36 = *(v11 + 8 * v34 + 32);
      }

      v37 = v36;
      v38 = [v37 feedID];
      v39 = sub_1B67D964C();
      v41 = v40;

      v88 = v35;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1B6456B24((v42 > 1), v43 + 1, 1);
        v35 = v88;
      }

      ++v34;
      *(v35 + 16) = v43 + 1;
      v44 = v35 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
    }

    while (v32 != v34);

    a1 = v87;
    v7 = v73;
    v45 = v83;
    goto LABEL_19;
  }

  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1B647AB64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A798, &qword_1B6812A18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  if (a1 >> 62)
  {
    v11 = sub_1B67DA04C();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = __OFADD__(v13, v11);
  v15 = v13 + v11;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v15;
    v16[1] = a1;
    v16[2] = a4;
    v16[3] = 1;
    v17 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
    sub_1B67D9A6C();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1B647ACDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1B63F3DA0(0, &qword_1EDB1E5C8, 0x1E69B6E30);
  v3 = sub_1B67D97BC();

  v2(v3);
}

uint64_t sub_1B647AD60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v5 = sub_1B67D8A9C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A798, &qword_1B6812A18);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = v5;
    v37 = v11;
    v17 = Strong;
    v18 = [Strong networkEvents];
    sub_1B63F3DA0(0, &qword_1EDB1E570, off_1E7C34970);
    v19 = sub_1B67D97BC();

    v40 = 0;
    v41 = 0;
    v39 = v19;
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
    sub_1B67D9A6C();

    v5 = v36;
    v11 = v37;
    (*(v13 + 8))(v15, v12);
  }

  if (a1)
  {
    v20 = a1;
    v21 = sub_1B6471774();
    (*(v6 + 16))(v11, v21, v5);
    v22 = a1;
    v23 = sub_1B67D8A7C();
    v24 = sub_1B67D9C9C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = a1;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1B63EF000, v23, v24, "failed to fetch My Articles from CK, error=%{public}@", v25, 0xCu);
      sub_1B6418AB4(v26, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v26, -1, -1);
      MEMORY[0x1B8C96DF0](v25, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    v39 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  }

  else
  {
    v29 = sub_1B6471774();
    (*(v6 + 16))(v9, v29, v5);
    v30 = v38;

    v31 = sub_1B67D8A7C();
    v32 = sub_1B67D9C9C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134349056;
      swift_beginAccess();
      *(v33 + 4) = *(v30 + 16);

      _os_log_impl(&dword_1B63EF000, v31, v32, "did fetch My Articles from CK, unique items=%{public}ld", v33, 0xCu);
      MEMORY[0x1B8C96DF0](v33, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    v43 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  }

  return sub_1B67D9A7C();
}

uint64_t sub_1B647B218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1B63F3DA0(0, &unk_1EDB1E580, off_1E7C344D0);
    v6 = sub_1B67D97BC();
  }

  if (a3)
  {
    sub_1B63F3DA0(0, &qword_1EDB1E5C8, 0x1E69B6E30);
    a3 = sub_1B67D97BC();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t sub_1B647B2F8(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1B67D993C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  (*(v9 + 32))(v17 + v16, v11, v8);
  v18 = a2;

  sub_1B644BCA8(0, 0, v14, &unk_1B6812A08, v17);
}

uint64_t sub_1B647B510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 400) = a6;
  *(v7 + 408) = a7;
  *(v7 + 281) = a5;
  *(v7 + 392) = a4;
  type metadata accessor for SmarterFetchRequest(0);
  *(v7 + 416) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A798, &qword_1B6812A18);
  *(v7 + 424) = v8;
  *(v7 + 432) = *(v8 - 8);
  *(v7 + 440) = swift_task_alloc();
  v9 = sub_1B67D8A9C();
  *(v7 + 448) = v9;
  *(v7 + 456) = *(v9 - 8);
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  v10 = sub_1B67D87BC();
  *(v7 + 504) = v10;
  *(v7 + 512) = *(v10 - 8);
  *(v7 + 520) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B647B6F8, 0, 0);
}

uint64_t sub_1B647B6F8(uint64_t a1)
{
  v44 = v1;
  v2 = *(v1 + 520);
  v3 = *(v1 + 504);
  v4 = *(v1 + 512);
  v5 = *(v1 + 496);
  v6 = *(v1 + 448);
  v7 = *(v1 + 456);
  v8 = *(v1 + 392);
  sub_1B67D87AC();
  v9 = sub_1B67D879C();
  v11 = v10;
  v42 = v9;
  *(v1 + 528) = v9;
  *(v1 + 536) = v10;
  (*(v4 + 8))(v2, v3);
  v12 = sub_1B6471AF8();
  *(v1 + 544) = *v12;
  *(v1 + 552) = v12[1];
  v13 = *&v8[OBJC_IVAR___FCMyArticlesRequest_dateRange];
  v14 = objc_opt_self();
  *(v1 + 560) = v14;

  v15 = [v14 feedRangeFromDateRange_];
  *(v1 + 568) = v15;
  v16 = sub_1B6471774();
  *(v1 + 576) = v16;
  v17 = *(v7 + 16);
  *(v1 + 584) = v17;
  *(v1 + 592) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v5, v16, v6);
  v18 = v8;

  v19 = sub_1B67D8A7C();
  v20 = sub_1B67D9C9C();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v1 + 496);
  v23 = *(v1 + 448);
  v24 = *(v1 + 456);
  if (v21)
  {
    v25 = *(v1 + 281);
    v40 = *(v1 + 496);
    v26 = swift_slowAlloc();
    v41 = v15;
    v27 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    *v26 = 136446722;
    if (v25)
    {
      v28 = 1702195828;
    }

    else
    {
      v28 = 0x65736C6166;
    }

    v39 = v23;
    if (v25)
    {
      v29 = 0xE400000000000000;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    v30 = sub_1B6456540(v28, v29, &v43);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2114;
    *(v26 + 14) = v13;
    *v27 = v13;
    *(v26 + 22) = 2082;
    v31 = v13;
    *(v26 + 24) = sub_1B6456540(v42, v11, &v43);
    _os_log_impl(&dword_1B63EF000, v19, v20, "will fetch My Articles from Smarter Fetch, supplemental=%{public}s, range=%{public}@, id=%{public}s", v26, 0x20u);
    sub_1B6418AB4(v27, &qword_1EB94A780, &qword_1B6810140);
    v32 = v27;
    v15 = v41;
    MEMORY[0x1B8C96DF0](v32, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B8C96DF0](v38, -1, -1);
    MEMORY[0x1B8C96DF0](v26, -1, -1);

    v33 = *(v24 + 8);
    v33(v40, v39);
  }

  else
  {

    v33 = *(v24 + 8);
    v33(v22, v23);
  }

  *(v1 + 600) = v33;
  v34 = *(*(v1 + 400) + 24);
  *(v1 + 608) = v34;
  v35 = sub_1B67D963C();
  *(v1 + 616) = v35;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 352;
  *(v1 + 24) = sub_1B647BB00;
  v36 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7A0, &qword_1B6812A20);
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1B647CC28;
  *(v1 + 104) = &block_descriptor_4;
  *(v1 + 112) = v36;
  [v34 lookupFeedItemsForFeedID:v35 feedRange:v15 completion:v1 + 80];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_1B647BB00()
{

  return MEMORY[0x1EEE6DFA0](sub_1B647BBE0, 0, 0);
}

unint64_t sub_1B647BBE0()
{
  v82 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  inited = *(v0 + 488);
  v4 = *(v0 + 448);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  *(v0 + 624) = v6;

  v2(inited, v3, v4);

  v7 = sub_1B67D8A7C();
  LOBYTE(inited) = sub_1B67D9C9C();

  v9 = v5 >> 62;
  v79 = v6;
  if (!os_log_type_enabled(v7, inited))
  {
    v17 = *(v0 + 600);
    v18 = *(v0 + 488);
    v19 = *(v0 + 448);

    v17(v18, v19);
    v11 = v6;
    goto LABEL_8;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v81[0] = v11;
  *v10 = 134349570;
  if (v6 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B67DA04C())
  {
    *(v10 + 4) = i;

    *(v10 + 12) = 2050;
    v13 = v9 ? sub_1B67DA04C() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = *(v0 + 536);
    v15 = *(v0 + 528);
    v73 = *(v0 + 488);
    v74 = *(v0 + 600);
    v16 = *(v0 + 448);
    *(v10 + 14) = v13;

    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_1B6456540(v15, v14, v81);
    _os_log_impl(&dword_1B63EF000, v7, inited, "retrieved %{public}ld feed items from the cache, missingRanges=%{public}ld, id=%{public}s", v10, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
    MEMORY[0x1B8C96DF0](v10, -1, -1);

    v74(v73, v16);
    v11 = v79;
LABEL_8:
    v20 = *(v0 + 552);
    v21 = *(v0 + 544);
    v23 = *(v0 + 432);
    v22 = *(v0 + 440);
    v75 = *(v0 + 424);
    v7 = *(v0 + 408);
    *(v0 + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7A8, &qword_1B6812A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    *(inited + 32) = v21;
    *(inited + 40) = v20;
    v24 = objc_opt_self();
    *(v0 + 640) = v24;

    *(inited + 48) = [v24 feedContextForSmarterFetch];
    v25 = sub_1B645C624(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A7B0, &qword_1B6812A30);
    *(v0 + 256) = v11;
    *(v0 + 264) = v25;
    *(v0 + 272) = 2;
    *(v0 + 280) = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
    LOBYTE(inited) = v26;
    *(v0 + 648) = v26;
    sub_1B67D9A6C();
    v27 = *(v23 + 8);
    *(v0 + 656) = v27;
    *(v0 + 664) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v22, v75);
    if (v5 >> 62)
    {
      v10 = sub_1B67DA04C();
      if (!v10)
      {
LABEL_30:
        v55 = *(v0 + 584);
        v56 = *(v0 + 576);
        v57 = *(v0 + 464);
        v58 = *(v0 + 448);

        v55(v57, v56, v58);

        v59 = sub_1B67D8A7C();
        v60 = sub_1B67D9C9C();

        v61 = os_log_type_enabled(v59, v60);
        v62 = *(v0 + 600);
        v63 = *(v0 + 536);
        if (v61)
        {
          v80 = *(v0 + 600);
          v64 = *(v0 + 528);
          v78 = *(v0 + 464);
          v65 = *(v0 + 448);
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v81[0] = v67;
          *v66 = 136446210;
          v68 = sub_1B6456540(v64, v63, v81);

          *(v66 + 4) = v68;
          _os_log_impl(&dword_1B63EF000, v59, v60, "finished with just the contents of the cache, id=%{public}s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v67);
          MEMORY[0x1B8C96DF0](v67, -1, -1);
          MEMORY[0x1B8C96DF0](v66, -1, -1);

          v80(v78, v65);
        }

        else
        {
          v69 = *(v0 + 464);
          v70 = *(v0 + 448);

          v62(v69, v70);
        }

        v71 = *(v0 + 568);
        *(v0 + 384) = 0;
        sub_1B67D9A7C();

        v72 = *(v0 + 8);

        return v72();
      }
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_30;
      }
    }

    v9 = v5 & 0xC000000000000001;
    if ((v5 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v5 + 32);
      goto LABEL_13;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v28 = MEMORY[0x1B8C95180](0, v5);
LABEL_13:
  inited = v28;
  v11 = &selRef_stringByAppendingPathComponent_;
  v7 = [v28 top];

  if (!v7)
  {
    v7 = [*(v0 + 568) top];
  }

  result = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v9)
  {
    v30 = MEMORY[0x1B8C95180](result, v5);
    goto LABEL_21;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (result >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v30 = *(v5 + 8 * result + 32);
LABEL_21:
  v31 = v30;

  v32 = [v31 bottom];

  if (!v32)
  {
    v32 = [*(v0 + 568) bottom];
  }

  v33 = *(v0 + 584);
  v34 = *(v0 + 576);
  v35 = *(v0 + 480);
  v36 = *(v0 + 448);
  v37 = [*(v0 + 560) feedRangeWithTop:v7 bottom:v32];
  *(v0 + 672) = v37;

  v33(v35, v34, v36);

  v38 = v37;
  v39 = sub_1B67D8A7C();
  v40 = sub_1B67D9C9C();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 600);
  if (v41)
  {
    v43 = *(v0 + 536);
    v44 = *(v0 + 528);
    v76 = *(v0 + 448);
    v77 = *(v0 + 480);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v81[0] = v47;
    *v45 = 138543874;
    *(v45 + 4) = v38;
    *v46 = v38;
    *(v45 + 12) = 2114;
    v48 = [v38 dateRange];
    *(v45 + 14) = v48;
    v46[1] = v48;
    *(v45 + 22) = 2082;
    *(v45 + 24) = sub_1B6456540(v44, v43, v81);
    _os_log_impl(&dword_1B63EF000, v39, v40, "will fetch from feedRange=%{public}@, dateRange=%{public}@, id=%{public}s", v45, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
    swift_arrayDestroy();
    MEMORY[0x1B8C96DF0](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1B8C96DF0](v47, -1, -1);
    MEMORY[0x1B8C96DF0](v45, -1, -1);

    v49 = v76;
    v50 = v77;
  }

  else
  {
    v51 = *(v0 + 480);
    v52 = *(v0 + 448);

    v50 = v51;
    v49 = v52;
  }

  v42(v50, v49);
  sub_1B647CCE0(*(v0 + 281), *(v0 + 400), v38, *(v0 + 528), *(v0 + 536), *(v0 + 416));
  v53 = swift_task_alloc();
  *(v0 + 680) = v53;
  *v53 = v0;
  v53[1] = sub_1B647C578;
  v54 = *(v0 + 416);

  return sub_1B647D144(v54);
}

uint64_t sub_1B647C578(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[86] = a2;
  v5[87] = v2;

  if (v2)
  {

    v6 = sub_1B647CB20;
  }

  else
  {
    v5[88] = a1;
    v6 = sub_1B647C6C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B647C6C0()
{
  v40 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 608);
  v35 = *(v0 + 584);
  v3 = *(v0 + 472);
  v31 = *(v0 + 448);
  v33 = *(v0 + 576);
  v4 = sub_1B647F5A0(*(v0 + 704), *(v0 + 624), v1);

  sub_1B63F3DA0(0, &qword_1EDB1E5C8, 0x1E69B6E30);
  v5 = sub_1B67D97AC();
  v6 = sub_1B67D963C();
  [v2 saveFeedItems:v5 feedID:v6 feedRange:v1];

  v35(v3, v33, v31);

  v38 = v4;

  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 134349314;
    if (v38 >> 62)
    {
      v11 = sub_1B67DA04C();
    }

    else
    {
      v11 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = *(v0 + 600);
    v12 = *(v0 + 536);
    v13 = *(v0 + 528);
    v14 = *(v0 + 472);
    v15 = *(v0 + 448);
    *(v9 + 4) = v11;

    *(v9 + 12) = 2082;
    v16 = sub_1B6456540(v13, v12, &v39);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1B63EF000, v7, v8, "saved %{public}ld feed items to the cache, id=%{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
    MEMORY[0x1B8C96DF0](v9, -1, -1);

    v36(v14, v15);
  }

  else
  {
    v17 = *(v0 + 600);
    v18 = *(v0 + 472);
    v19 = *(v0 + 448);

    v17(v18, v19);
  }

  v30 = *(v0 + 688);
  v29 = *(v0 + 656);
  v20 = *(v0 + 640);
  v32 = *(v0 + 568);
  v21 = *(v0 + 552);
  v22 = *(v0 + 544);
  v23 = *(v0 + 440);
  v24 = *(v0 + 424);
  v34 = *(v0 + 416);
  v37 = *(v0 + 672);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = v22;
  *(inited + 40) = v21;
  *(inited + 48) = [v20 feedContextForSmarterFetch];
  v26 = sub_1B645C624(inited);
  swift_setDeallocating();
  sub_1B6418AB4(inited + 32, &qword_1EB94A7B0, &qword_1B6812A30);
  *(v0 + 288) = v38;
  *(v0 + 296) = v26;
  *(v0 + 304) = 2;
  *(v0 + 312) = 0;
  sub_1B67D9A6C();
  v29(v23, v24);
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 320) = v30;
  *(v0 + 344) = 1;
  sub_1B67D9A6C();
  v29(v23, v24);
  *(v0 + 376) = 0;
  sub_1B67D9A7C();

  sub_1B6467DA0(v34);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1B647CB20()
{
  sub_1B6467DA0(v0[52]);
  v1 = v0[87];
  v2 = v0[84];
  v3 = v0[71];
  v0[46] = v1;
  v4 = v1;
  sub_1B67D9A7C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B647CC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1B63F3DA0(0, &qword_1EDB1E5C8, 0x1E69B6E30);
  v4 = sub_1B67D97BC();
  sub_1B63F3DA0(0, &qword_1EB94A650, off_1E7C344B8);
  v5 = sub_1B67D97BC();
  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return MEMORY[0x1EEE6DED8](v3);
}

void sub_1B647CCE0(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v42 = a6;
  v43 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v48 = sub_1B67D877C();
  v15 = *(v48 - 8);
  v16 = MEMORY[0x1EEE9AC00](v48);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - v22;
  v24 = a2 + 32;
  if (a1)
  {
    sub_1B6431D18(v24, v45);
    v25 = v46;
    v41 = v47;
    v40 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v26 = [a3 dateRange];
    v27 = [v26 laterDate];

    if (v27)
    {
      sub_1B67D874C();

      v28 = [a3 dateRange];
      v29 = [v28 earlierDate];

      if (v29)
      {
        sub_1B67D874C();

        v30 = v48;
        (*(v15 + 32))(v14, v21, v48);
        v31 = 0;
      }

      else
      {
        v31 = 1;
        v30 = v48;
      }

      (*(v15 + 56))(v14, v31, 1, v30);
      (*(v41 + 32))(v23, v14, v43, v44, v25);
      sub_1B6418AB4(v14, &unk_1EB94A100, &qword_1B680FD50);
      (*(v15 + 8))(v23, v30);
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v45);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_1B6431D18(v24, v45);
    v32 = v46;
    v41 = v47;
    v40 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v33 = [a3 dateRange];
    v34 = [v33 laterDate];

    if (v34)
    {
      sub_1B67D874C();

      v35 = [a3 dateRange];
      v36 = [v35 earlierDate];

      if (v36)
      {
        sub_1B67D874C();

        v37 = v48;
        (*(v15 + 32))(v12, v21, v48);
        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v48;
      }

      (*(v15 + 56))(v12, v38, 1, v37);
      (*(v41 + 8))(v18, v12, v43, v44, v32);
      sub_1B6418AB4(v12, &unk_1EB94A100, &qword_1B680FD50);
      (*(v15 + 8))(v18, v37);
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B647D144(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A310, &unk_1B6812A70);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A7F0, &qword_1B6811318);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B647D2A4, 0, 0);
}

uint64_t sub_1B647D2A4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = MEMORY[0x1E69E7CC0];
  v0[4] = MEMORY[0x1E69E7CC0];
  v0[5] = v3;
  v4 = v1[12];
  v5 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v4);
  (*(v5 + 8))(v2, v4, v5);
  sub_1B67D9A9C();
  v0[17] = v3;
  v0[18] = v3;
  v0[16] = v3;
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1B647D400;
  v7 = v0[10];

  return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v7, v0 + 6);
}

uint64_t sub_1B647D400()
{

  if (v0)
  {

    v1 = sub_1B647D874;
  }

  else
  {
    v1 = sub_1B647D554;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B647D554()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) <= 1u)
  {
    if (!*(v0 + 24))
    {
      sub_1B6449D2C(*(v0 + 16), 0);
LABEL_13:
      v11 = swift_task_alloc();
      *(v0 + 152) = v11;
      *v11 = v0;
      v11[1] = sub_1B647D400;
      v12 = *(v0 + 80);

      return MEMORY[0x1EEE6DB90](v0 + 16, 0, 0, v12, v0 + 48);
    }

    v5 = *(*(v0 + 72) + 112);
    *(v0 + 56) = 0;
    v6 = [v5 feedItemFromPBRecord:v1 error:v0 + 56];
    v7 = *(v0 + 56);
    if (!v6)
    {
      v19 = v7;
      v20 = sub_1B67D855C();

      swift_willThrow();
      sub_1B6449D2C(v1, 1);

      goto LABEL_13;
    }

    v8 = v6;
    v9 = v7;
    [v8 setSurfacedByFlags_];
    v10 = v8;
    MEMORY[0x1B8C949F0]();
    if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B67D97FC();
    }

    sub_1B67D983C();
    sub_1B6449D2C(v1, 1);

    v4 = *(v0 + 136);
    *(v0 + 128) = *(v0 + 32);
LABEL_12:
    *(v0 + 136) = v4;
    goto LABEL_13;
  }

  if (*(v0 + 24) == 2)
  {
    v2 = (v0 + 40);
    v3 = v1;
    MEMORY[0x1B8C949F0]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B67D97FC();
    }

    sub_1B67D983C();
    sub_1B6449D2C(v1, 2);
    v4 = vld1q_dup_f64(v2);
    goto LABEL_12;
  }

  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 104);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  (*(v14 + 8))(v13, v15);

  v16 = *(v0 + 8);
  v17 = *(v0 + 144);
  v18 = *(v0 + 128);

  return v16(v18, v17);
}

uint64_t sub_1B647D874()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B647D954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B67DA3DC();
  sub_1B67DA3FC();
  if (a2)
  {
    sub_1B67D967C();
  }

  v7 = sub_1B67DA41C();
  v8 = a3 + 56;
  v9 = -1 << *(a3 + 32);
  v10 = v7 & ~v9;
  if ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(a3 + 48);
    do
    {
      v13 = (v12 + 16 * v10);
      v14 = v13[1];
      if (v14)
      {
        if (a2)
        {
          v15 = *v13 == a1 && v14 == a2;
          if (v15 || (sub_1B67DA2DC() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!a2)
      {
        return 1;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return 0;
}

BOOL sub_1B647DA7C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1B67DA3CC();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1B647DB24()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B647DC00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B647DC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1B647DCAC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B642694C;

  return sub_1B647B510(v7, v8, v9, v4, v5, v6, v0 + v3);
}

char *sub_1B647DDD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B647DE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B647DDF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B647DF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B647DE14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A7D0, &unk_1B6812A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1B647DF18(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A7E0, &unk_1B6814DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C0, &qword_1B6812A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B647E04C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1B67DA3CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1B647E754(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B647E12C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B67DA3DC();
  sub_1B67DA3FC();
  if (a3)
  {
    sub_1B67D967C();
  }

  v8 = sub_1B67DA41C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B647E874(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_1B67DA2DC() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_1B647E2B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7B8, &qword_1B6812A48);
  result = sub_1B67D9ECC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1B67DA3CC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B647E4D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C8, &qword_1B6812A58);
  result = sub_1B67D9ECC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_1B67DA3DC();
      sub_1B67DA3FC();
      if (v19)
      {
        sub_1B67D967C();
      }

      result = sub_1B67DA41C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B647E754(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B647E2B4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B647EA30();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B647ECC8(v5 + 1);
  }

  v8 = *v3;
  result = sub_1B67DA3CC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B67DA33C();
  __break(1u);
  return result;
}

uint64_t sub_1B647E874(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_1B647E4D8(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1B647EB70();
      goto LABEL_22;
    }

    sub_1B647EEB8(v9 + 1);
  }

  v11 = *v4;
  sub_1B67DA3DC();
  sub_1B67DA3FC();
  if (a2)
  {
    sub_1B67D967C();
  }

  result = sub_1B67DA41C();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          v18 = *v16 == v8 && v17 == a2;
          if (v18 || (result = sub_1B67DA2DC(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C0, &qword_1B6812A50);
            result = sub_1B67DA33C();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_1B647EA30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7B8, &qword_1B6812A48);
  v2 = *v0;
  v3 = sub_1B67D9EBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1B647EB70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C8, &qword_1B6812A58);
  v2 = *v0;
  v3 = sub_1B67D9EBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1B647ECC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7B8, &qword_1B6812A48);
  result = sub_1B67D9ECC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1B67DA3CC();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B647EEB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C8, &qword_1B6812A58);
  result = sub_1B67D9ECC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1B67DA3DC();
      sub_1B67DA3FC();
      if (v18)
      {

        sub_1B67D967C();
      }

      result = sub_1B67DA41C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B647F10C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C0, &qword_1B6812A50);
  v4 = sub_1B647F9AC();
  result = MEMORY[0x1B8C94D60](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_1B647E12C(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1B647F1B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C94D60](v2, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1B647E04C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_1B647F22C(id result, unint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v41 = result;
  if (a2 >> 62)
  {
LABEL_38:
    v38 = a2 & 0xFFFFFFFFFFFFFF8;
    v34 = result;
    v7 = sub_1B67DA04C();
    result = v34;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    v38 = a2 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  v8 = 0;
  do
  {
    v35 = result;
    for (i = v8; ; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1B8C95180](i, a2);
      }

      else
      {
        if (i >= *(v38 + 16))
        {
          goto LABEL_37;
        }

        result = *(a2 + 8 * i + 32);
      }

      v10 = result;
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v11 = *a3;

      v12 = [v10 articleID];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1B67D964C();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v17 = sub_1B647D954(v14, v16, v11);

      if ((v17 & 1) == 0)
      {
        break;
      }

      if (v8 == v7)
      {
        return v35;
      }
    }

    v18 = [a4 clampOrder_];
    if (sub_1B647DA7C(v18, *a5))
    {
      v19 = [a4 maxOrder];
      if (v19)
      {
        v20 = v19;
        while (1)
        {
          v21 = *a5;
          if (!*(*a5 + 16))
          {
            break;
          }

          v22 = sub_1B67DA3CC();
          v23 = -1 << *(v21 + 32);
          v24 = v22 & ~v23;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          while (*(*(v21 + 48) + 8 * v24) != v20)
          {
            v24 = (v24 + 1) & v25;
            if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          v18 = 0;
          if (!--v20)
          {
            goto LABEL_29;
          }
        }

LABEL_27:
        v18 = v20;
      }

      else
      {
        v18 = 0;
      }
    }

LABEL_29:
    v26 = sub_1B67D963C();
    [v10 setFeedID_];

    [v10 setOrder_];
    v27 = [v10 articleID];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1B67D964C();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    sub_1B647E12C(&v40, v29, v31);

    sub_1B647E04C(&v40, v18);
    v32 = v10;
    MEMORY[0x1B8C949F0]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B67D97FC();
    }

    sub_1B67D983C();
    v33 = v41;

    result = v33;
  }

  while (v8 != v7);
  return result;
}

id sub_1B647F5A0(unint64_t a1, unint64_t a2, void *a3)
{
  v49 = a3;
  v5 = sub_1B6471AF8();
  v6 = *v5;
  v7 = v5[1];
  if (a2 >> 62)
  {
    v8 = sub_1B67DA04C();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v8 & ~(v8 >> 63);
  v50 = v6;
  if (v8)
  {
    v52 = MEMORY[0x1E69E7CC0];

    result = sub_1B647DDF4(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v46 = v8 & ~(v8 >> 63);
    v47 = a1;
    v48 = v7;
    v11 = v52;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        MEMORY[0x1B8C95180](v12, a2);
        v13 = [swift_unknownObjectRetain() articleID];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1B67D964C();
          v17 = v16;
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease_n();
          v15 = 0;
          v17 = 0;
        }

        v52 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B647DDF4((v18 > 1), v19 + 1, 1);
          v11 = v52;
        }

        ++v12;
        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v8 != v12);
    }

    else
    {
      v21 = (a2 + 32);
      v22 = v8;
      do
      {
        v23 = *v21;
        v24 = [v23 articleID];
        if (v24)
        {
          v25 = v24;
          v26 = sub_1B67D964C();
          v28 = v27;
        }

        else
        {

          v26 = 0;
          v28 = 0;
        }

        v52 = v11;
        v30 = *(v11 + 16);
        v29 = *(v11 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1B647DDF4((v29 > 1), v30 + 1, 1);
          v11 = v52;
        }

        *(v11 + 16) = v30 + 1;
        v31 = v11 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        ++v21;
        --v22;
      }

      while (v22);
    }

    a1 = v47;
    v9 = v8 & ~(v8 >> 63);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1B647F10C(v11);

  v52 = v32;
  v33 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
LABEL_35:
    v43 = sub_1B647F1B8(v33);

    v51 = v43;

    v44 = v49;
    v45 = sub_1B647F22C(MEMORY[0x1E69E7CC0], a1, &v52, v44, &v51, v50);

    swift_bridgeObjectRelease_n();

    return v45;
  }

  v51 = MEMORY[0x1E69E7CC0];
  result = sub_1B647DDD4(0, v9, 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v33 = v51;
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        v35 = [MEMORY[0x1B8C95180](i a2)];
        swift_unknownObjectRelease();
        v51 = v33;
        v37 = *(v33 + 16);
        v36 = *(v33 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1B647DDD4((v36 > 1), v37 + 1, 1);
          v33 = v51;
        }

        *(v33 + 16) = v37 + 1;
        *(v33 + 8 * v37 + 32) = v35;
      }
    }

    else
    {
      v38 = (a2 + 32);
      do
      {
        v39 = [*v38 order];
        v51 = v33;
        v41 = *(v33 + 16);
        v40 = *(v33 + 24);
        if (v41 >= v40 >> 1)
        {
          v42 = v39;
          sub_1B647DDD4((v40 > 1), v41 + 1, 1);
          v39 = v42;
          v33 = v51;
        }

        *(v33 + 16) = v41 + 1;
        *(v33 + 8 * v41 + 32) = v39;
        ++v38;
        --v8;
      }

      while (v8);
    }

    goto LABEL_35;
  }

LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1B647F9AC()
{
  result = qword_1EDB1E638;
  if (!qword_1EDB1E638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94A7C0, &qword_1B6812A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E638);
  }

  return result;
}

uint64_t sub_1B647FA28(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B647AB64(a1, v5, v1 + v4, v6);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_27Tm(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v1 + v6, v3);
  a1(*(v1 + v7));

  return MEMORY[0x1EEE6BDD0](v1, v7 + 8, v5 | 7);
}

uint64_t sub_1B647FBE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B647AD60(a3, v7, v3 + v6, v8);
}

uint64_t sub_1B647FCAC()
{
  v1 = 0x747865746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x646E657078457369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B647FD04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6481E08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B647FD38(uint64_t a1)
{
  v2 = sub_1B6482BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B647FD74(uint64_t a1)
{
  v2 = sub_1B6482BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B647FDB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = a5;
  v12[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A858, &qword_1B6812D70);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6482BC4();
  sub_1B67DA47C();
  v16 = 0;
  sub_1B67DA20C();
  if (!v5)
  {
    v12[1] = v12[0];
    v15 = 1;
    sub_1B63F3DA0(0, &qword_1EDB1E5B0, off_1E7C34420);
    sub_1B6481CF8(&qword_1EDB1E5C0, &qword_1EDB1E5B0, off_1E7C34420, &protocol conformance descriptor for FCFeedContext);
    sub_1B67DA24C();
    v14 = 2;
    sub_1B67DA21C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B647FFB4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B6481F1C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t MyArticlesRequest.feedIDs.getter()
{
  v1 = *(v0 + OBJC_IVAR___FCMyArticlesRequest_feeds);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1B6456B24((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1B6480148()
{
  v1 = [objc_opt_self() feedRangeFromDateRange_];
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR___FCMyArticlesRequest_feeds);
  v4 = *(v3 + 16);
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1B67D9FAC();
    v6 = *(v0 + OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed);
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = (v3 + 56);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v7 += 32;
        v10 = objc_allocWithZone(FCFeedRequest);

        v11 = v8;
        v12 = v2;
        v13 = sub_1B67D963C();

        [v10 initWithFeedID:v13 feedRange:v12 maxCount:v6 isExpendable:v9 cachedOnly:0 requiredFeature:0];

        sub_1B67D9F7C();
        sub_1B67D9FBC();
        sub_1B67D9FCC();
        sub_1B67D9F8C();
        --v4;
      }

      while (v4);

      return v14;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1B64802E0()
{
  v1 = *(v0 + OBJC_IVAR___FCMyArticlesRequest_feeds);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 < *(v1 + 16))
  {
    v9 = *(v4 - 2);
    v8 = *(v4 - 1);
    v10 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_1B6456E70(v9, v8);
    v14 = v5[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v5[3] < v17)
    {
      sub_1B64817EC(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1B6456E70(v9, v8);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v12;
    sub_1B6481A90();
    v12 = v23;
    if (v18)
    {
LABEL_3:
      v6 = v5[7];
      v7 = *(v6 + 8 * v12);
      *(v6 + 8 * v12) = v10;

      goto LABEL_4;
    }

LABEL_12:
    v5[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v5[6] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    *(v5[7] + 8 * v12) = v10;

    v21 = v5[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v5[2] = v22;
LABEL_4:
    ++v3;
    v4 += 4;
    if (v2 == v3)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1B67DA34C();
  __break(1u);
  return result;
}

void sub_1B64804AC(unint64_t a1, uint64_t a2, void *a3, unint64_t a4, char a5)
{
  v6 = v5;
  LOBYTE(v7) = a5;
  v10 = a1;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      v47 = MEMORY[0x1E69E7CC0];
      sub_1B64816C0(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        break;
      }

      v36 = a4;
      v37 = v7;
      v38 = v6;
      a4 = 0;
      v12 = v47;
      v42 = v10;
      v43 = v10 & 0xC000000000000001;
      v39 = a3;
      v40 = v10 & 0xFFFFFFFFFFFFFF8;
      v41 = v11;
      while (1)
      {
        v13 = a4 + 1;
        if (__OFADD__(a4, 1))
        {
          break;
        }

        if (v43)
        {
          v14 = v12;
          v15 = MEMORY[0x1B8C95180](a4, v10);
        }

        else
        {
          if (a4 >= *(v40 + 16))
          {
            goto LABEL_19;
          }

          v14 = v12;
          v15 = *(v10 + 8 * a4 + 32);
        }

        v16 = v15;
        v17 = [v15 feedID];
        v18 = sub_1B67D964C();
        v20 = v19;

        if (!*(a2 + 16))
        {

LABEL_17:

          v30 = [v16 feedID];
          v31 = sub_1B67D964C();
          v33 = v32;

          sub_1B6481BFC();
          swift_allocError();
          *v34 = v31;
          v34[1] = v33;
          swift_willThrow();

          return;
        }

        v21 = sub_1B6456E70(v18, v20);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }

        v45 = *(*(a2 + 56) + 8 * v21);
        v24 = [v16 feedID];
        v6 = sub_1B67D964C();
        v26 = v25;

        v27 = [v16 isExpendable];
        v12 = v14;
        v47 = v14;
        v7 = *(v14 + 16);
        v28 = *(v12 + 24);
        a3 = (v7 + 1);
        if (v7 >= v28 >> 1)
        {
          sub_1B64816C0((v28 > 1), v7 + 1, 1);
          v12 = v47;
        }

        *(v12 + 16) = a3;
        v29 = v12 + 32 * v7;
        *(v29 + 32) = v6;
        *(v29 + 40) = v26;
        *(v29 + 48) = v45;
        *(v29 + 56) = v27;
        ++a4;
        v10 = v42;
        if (v13 == v41)
        {

          a3 = v39;
          v6 = v38;
          LOBYTE(v7) = v37;
          a4 = v36;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v11 = sub_1B67DA04C();
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v12 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v35 = objc_allocWithZone(v6);
    *&v35[OBJC_IVAR___FCMyArticlesRequest_feeds] = v12;
    *&v35[OBJC_IVAR___FCMyArticlesRequest_dateRange] = a3;
    *&v35[OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed] = a4;
    v35[OBJC_IVAR___FCMyArticlesRequest_isFullFetch] = v7 & 1;
    v46.receiver = v35;
    v46.super_class = v6;
    objc_msgSendSuper2(&v46, sel_init);
  }
}

id MyArticlesRequest.copy(with:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___FCMyArticlesRequest_feeds);
  v5 = *(v1 + OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed);
  v6 = *(v1 + OBJC_IVAR___FCMyArticlesRequest_isFullFetch);
  v7 = objc_allocWithZone(ObjectType);
  *&v7[OBJC_IVAR___FCMyArticlesRequest_feeds] = v4;
  *&v7[OBJC_IVAR___FCMyArticlesRequest_dateRange] = a1;
  *&v7[OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed] = v5;
  v7[OBJC_IVAR___FCMyArticlesRequest_isFullFetch] = v6;
  v10.receiver = v7;
  v10.super_class = ObjectType;

  v8 = a1;
  return objc_msgSendSuper2(&v10, sel_init);
}

id MyArticlesRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B6480950()
{
  v1 = 0x676E615265746164;
  v2 = 0x7364656566;
  if (*v0 != 2)
  {
    v2 = 0x736D65744978616DLL;
  }

  if (*v0)
  {
    v1 = 0x65466C6C75467369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B64809E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B64821B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6480A08(uint64_t a1)
{
  v2 = sub_1B6481C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6480A44(uint64_t a1)
{
  v2 = sub_1B6481C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id MyArticlesRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MyArticlesRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A828, &qword_1B6812A90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6481C50();
  sub_1B67DA47C();
  v11 = *(v3 + OBJC_IVAR___FCMyArticlesRequest_dateRange);
  HIBYTE(v10) = 0;
  sub_1B63F3DA0(0, &qword_1EDB1E5D0, off_1E7C34370);
  sub_1B6481CF8(&unk_1EDB1E5E0, &qword_1EDB1E5D0, off_1E7C34370, &protocol conformance descriptor for FCDateRange);
  sub_1B67DA24C();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1B67DA21C();
    v11 = *(v3 + OBJC_IVAR___FCMyArticlesRequest_feeds);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A830, &qword_1B6812A98);
    sub_1B6481D3C(&qword_1EDB1E628, sub_1B6481CA4, MEMORY[0x1E69E6300]);
    sub_1B67DA24C();
    LOBYTE(v11) = 3;
    sub_1B67DA22C();
  }

  return (*(v6 + 8))(v8, v5);
}

char *MyArticlesRequest.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A838, &unk_1B6812AA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6481C50();
  sub_1B67DA46C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B63F3DA0(0, &qword_1EDB1E5D0, off_1E7C34370);
    v12 = 0;
    sub_1B6481CF8(&qword_1EDB1E5D8, &qword_1EDB1E5D0, off_1E7C34370, &protocol conformance descriptor for FCDateRange);
    sub_1B67DA1CC();
    *(v1 + OBJC_IVAR___FCMyArticlesRequest_dateRange) = v13;
    LOBYTE(v13) = 1;
    *(v1 + OBJC_IVAR___FCMyArticlesRequest_isFullFetch) = sub_1B67DA1AC() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A830, &qword_1B6812A98);
    v12 = 2;
    sub_1B6481D3C(&qword_1EDB1E620, sub_1B6481DB4, MEMORY[0x1E69E6330]);
    sub_1B67DA1CC();
    *(v1 + OBJC_IVAR___FCMyArticlesRequest_feeds) = v13;
    LOBYTE(v13) = 3;
    *(v1 + OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed) = sub_1B67DA1BC();
    v11.receiver = v1;
    v11.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v11, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

char *sub_1B6481188@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = MyArticlesRequest.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MyArticlesRequest.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6812A80;
  *(inited + 32) = 0x7364656546;
  *(inited + 40) = 0xE500000000000000;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 48) = *(*(v2 + OBJC_IVAR___FCMyArticlesRequest_feeds) + 16);
  *(inited + 72) = v5;
  *(inited + 80) = 0x6E61522065746144;
  *(inited + 88) = 0xEA00000000006567;
  v6 = *(v2 + OBJC_IVAR___FCMyArticlesRequest_dateRange);
  *(inited + 120) = sub_1B63F3DA0(0, &qword_1EDB1E5D0, off_1E7C34370);
  *(inited + 96) = v6;
  v7 = v6;
  sub_1B6482328(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A848, &qword_1B6812AB0);
  swift_arrayDestroy();
  a1[3] = sub_1B67D895C();
  a1[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1B67D894C();
}

id sub_1B648140C@<X0>(uint64_t *a3@<X8>)
{
  result = _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvgZ_0();
  *a3 = result;
  return result;
}

void sub_1B6481434(id *a1)
{
  v1 = *a1;
  v2 = *a1;

  _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvsZ_0(v1);
}

void (*static MyArticlesRequest.lastRequestIssued.modify(void *a1))(void **a1, char a2)
{
  v2 = sub_1B67D85FC();
  v3 = *(v2 - 8);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  v5 = v4;
  a1[2] = v4;
  result = FCURLForMyArticlesRequest();
  if (result)
  {
    v7 = result;
    sub_1B67D85AC();

    v8 = sub_1B67D860C();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    sub_1B67D83AC();
    swift_allocObject();
    sub_1B67D839C();
    sub_1B6482928(&qword_1EDB1ED18, &protocol conformance descriptor for MyArticlesRequest);
    sub_1B67D838C();
    sub_1B645745C(v8, v10);

    *a1 = a1[1];
    return sub_1B648165C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B648165C(void **a1, char a2)
{
  v2 = *a1;
  v3 = a1[2];
  if (a2)
  {
    v4 = v2;
    _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvsZ_0(v2);
  }

  else
  {
    _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvsZ_0(*a1);
  }

  free(v3);
}

char *sub_1B64816C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B64816E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B64816E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A870, &qword_1B6812D88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B64817EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A800, &qword_1B6810CE0);
  v35 = v4;
  result = sub_1B67DA0CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1B6481A90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A800, &qword_1B6810CE0);
  v2 = *v0;
  v3 = sub_1B67DA0BC();
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

        result = v20;
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

unint64_t sub_1B6481BFC()
{
  result = qword_1EB952EB0[0];
  if (!qword_1EB952EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952EB0);
  }

  return result;
}

unint64_t sub_1B6481C50()
{
  result = qword_1EDB22FC8[0];
  if (!qword_1EDB22FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB22FC8);
  }

  return result;
}

unint64_t sub_1B6481CA4()
{
  result = qword_1EDB22C80[0];
  if (!qword_1EDB22C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB22C80);
  }

  return result;
}

uint64_t sub_1B6481CF8(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B63F3DA0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6481D3C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94A830, &qword_1B6812A98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6481DB4()
{
  result = qword_1EDB22C78;
  if (!qword_1EDB22C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22C78);
  }

  return result;
}

uint64_t sub_1B6481E08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E657078457369 && a2 == 0xEC000000656C6261)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B6481F1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A860, &qword_1B6812D78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6482BC4();
  sub_1B67DA46C();
  if (!v1)
  {
    v12 = 0;
    v7 = sub_1B67DA19C();
    sub_1B63F3DA0(0, &qword_1EDB1E5B0, off_1E7C34420);
    v11 = 1;
    sub_1B6481CF8(&qword_1EDB1E5B8, &qword_1EDB1E5B0, off_1E7C34420, &protocol conformance descriptor for FCFeedContext);
    sub_1B67DA1CC();
    v10 = 2;
    v9 = 0;
    sub_1B67DA1AC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1B64821B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E615265746164 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65466C6C75467369 && a2 == 0xEB00000000686374 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364656566 && a2 == 0xE500000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D65744978616DLL && a2 == 0xEF64656546726550)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1B6482328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A868, &qword_1B6812D80);
    v3 = sub_1B67DA0EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B6482C18(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B6456E70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B644A4F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvgZ_0()
{
  v0 = sub_1B67D85FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForMyArticlesRequest();
  if (result)
  {
    v5 = result;
    sub_1B67D85AC();

    v6 = sub_1B67D860C();
    v8 = v7;
    (*(v1 + 8))(v3, v0);
    sub_1B67D83AC();
    swift_allocObject();
    sub_1B67D839C();
    type metadata accessor for MyArticlesRequest();
    sub_1B6482928(&qword_1EDB1ED18, &protocol conformance descriptor for MyArticlesRequest);
    sub_1B67D838C();
    sub_1B645745C(v6, v8);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvsZ_0(void *a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B67D85FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - v7;
  if (a1)
  {
    sub_1B67D83FC();
    swift_allocObject();
    v9 = a1;
    sub_1B67D83EC();
    v25[0] = v9;
    type metadata accessor for MyArticlesRequest();
    sub_1B6482928(qword_1EDB1ED20, &protocol conformance descriptor for MyArticlesRequest);
    v17 = sub_1B67D83DC();
    v19 = v18;

    v20 = FCURLForMyArticlesRequest();
    if (v20)
    {
      v21 = v20;
      sub_1B67D85AC();

      sub_1B67D867C();
      sub_1B645745C(v17, v19);

      (*(v3 + 8))(v8, v2);
      return;
    }

    goto LABEL_13;
  }

  v10 = [objc_opt_self() defaultManager];
  v11 = FCURLForMyArticlesRequest();
  if (!v11)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_1B67D85AC();

  v13 = sub_1B67D858C();
  (*(v3 + 8))(v6, v2);
  v25[0] = 0;
  v14 = [v10 removeItemAtURL:v13 error:v25];

  v15 = v25[0];
  if (v14)
  {

    v16 = v15;
  }

  else
  {
    v24[0] = v25[0];
    v22 = v25[0];
    v23 = sub_1B67D855C();

    swift_willThrow();
  }
}

uint64_t sub_1B6482928(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MyArticlesRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6482A00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B6482A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B6482AC0()
{
  result = qword_1EB952F40[0];
  if (!qword_1EB952F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952F40);
  }

  return result;
}

unint64_t sub_1B6482B18()
{
  result = qword_1EDB22FB0;
  if (!qword_1EDB22FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22FB0);
  }

  return result;
}

unint64_t sub_1B6482B70()
{
  result = qword_1EDB22FB8;
  if (!qword_1EDB22FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22FB8);
  }

  return result;
}

unint64_t sub_1B6482BC4()
{
  result = qword_1EDB22E20[0];
  if (!qword_1EDB22E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB22E20);
  }

  return result;
}

uint64_t sub_1B6482C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A848, &qword_1B6812AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MyArticlesRequest.Feed.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MyArticlesRequest.Feed.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B6482DDC()
{
  result = qword_1EB9530D0[0];
  if (!qword_1EB9530D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9530D0);
  }

  return result;
}

unint64_t sub_1B6482E34()
{
  result = qword_1EDB22E10;
  if (!qword_1EDB22E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22E10);
  }

  return result;
}

unint64_t sub_1B6482E8C()
{
  result = qword_1EDB22E18;
  if (!qword_1EDB22E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22E18);
  }

  return result;
}

uint64_t sub_1B6482EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1B6484FB4;

  return sub_1B6484AF4(a1, a2, a3, a7, a8);
}

uint64_t MyArticlesRequestFactoryType.createRequest(dateRange:configuration:sidecar:maxFeeds:maxItemsPerFeed:binOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1B6484FB4;

  return sub_1B6484AF4(a1, a2, a3, a7, a8);
}

uint64_t sub_1B64830A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[32] = a6;
  v7[33] = v6;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B64830D4, 0, 0);
}

uint64_t sub_1B64830D4()
{
  v1 = *(*(v0 + 264) + 16);
  *(v0 + 272) = v1;
  v2 = [v1 pptContext];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v0 + 224);
  *(v0 + 368) = [v2 isRunningPPT];
  swift_unknownObjectRelease();
  v4 = [v1 subscriptionList];
  *(v0 + 280) = v4;
  if (v3)
  {
    v5 = *(v0 + 224);
    goto LABEL_5;
  }

  v5 = [objc_msgSend(v1 configurationManager)];
  v2 = swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v2);
  }

LABEL_5:
  *(v0 + 288) = v5;
  swift_unknownObjectRetain();
  v6 = FCCurrentQoSOrUtilityIfMain();
  *(v0 + 296) = v6;
  v7 = FCDispatchQueueForQualityOfService(v6);
  *(v0 + 304) = v7;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 208;
  *(v0 + 24) = sub_1B64832E0;
  v8 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A880, &unk_1B6812EB8);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1B6484074;
  *(v0 + 168) = &block_descriptor_5;
  *(v0 + 176) = v8;
  [v4 performFirstSyncWithCallbackQueue:v7 completion:v0 + 144];
  v2 = (v0 + 16);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B64832E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_1B6483C94;
  }

  else
  {
    v2 = sub_1B64833F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64833F0()
{
  v1 = *(v0 + 280);

  v2 = [v1 allSubscribedTagIDs];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *(v0 + 280);
  sub_1B67D9AFC();

  v5 = sub_1B67D9AEC();
  *(v0 + 320) = v5;

  v2 = [v4 mutedTagIDs];
  if (!v2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v2;
  v7 = *(v0 + 272);
  sub_1B67D9AFC();

  v8 = sub_1B67D9AEC();
  *(v0 + 328) = v8;

  v2 = [v7 purchaseController];
  if (!v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v2;
  v2 = [v2 allPurchasedTagIDs];
  if (!v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v2;
  v22 = v8;
  v11 = *(v0 + 272);

  sub_1B67D9AFC();
  v12 = sub_1B67D9AEC();
  *(v0 + 336) = v12;

  v2 = [v11 bundleSubscriptionManager];
  *(v0 + 344) = v2;
  if (!v2)
  {
LABEL_13:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v2);
  }

  v13 = v2;
  v14 = *(v0 + 296);
  v21 = *(v0 + 288);
  v15 = *(v0 + 368);
  v16 = *(v0 + 272);
  v17 = objc_opt_self();
  *(v0 + 352) = v17;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_1B6483704;
  v18 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A888, &qword_1B6812EC8);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1B6484140;
  *(v0 + 168) = &block_descriptor_5;
  *(v0 + 176) = v18;
  LOBYTE(v20) = (v15 & 1) == 0;
  [v17 fetchTagsForQueryingWithSubscribedTagIDs:v5 mutedTagIDs:v22 purchasedTagIDs:v12 bundleSubscriptionProvider:v13 configuration:v21 contentContext:v16 fallbackToPresubscribedTagIDs:v20 qualityOfService:v14 completionHandler:v0 + 144];
  v2 = (v0 + 80);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B6483704()
{
  v1 = *(*v0 + 112);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_1B6483FBC;
  }

  else
  {
    v2 = sub_1B6483814;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1B6483814()
{
  v1 = v0[42];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v5 = v0[33];
  v36 = v0[32];
  v37 = v0[34];
  v6 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  swift_unknownObjectRelease();

  v34 = [objc_opt_self() feedRangeFromDateRange_];
  v9 = NewsCoreUserDefaults();
  LOBYTE(v1) = [v9 BOOLForKey_];

  sub_1B648422C(v1, v4);
  sub_1B6484420(v6, v8, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = v36;
  *(v10 + 24) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A390, &qword_1B6812ED0);
  v11 = sub_1B67D97AC();
  v0[22] = sub_1B6484C58;
  v0[23] = v10;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B648488C;
  v0[21] = &block_descriptor_8;
  v12 = _Block_copy(v0 + 18);

  v13 = sub_1B67D97AC();
  result = [v37 purchaseController];
  if (!result)
  {
    goto LABEL_9;
  }

  v15 = result;
  v38 = v11;
  result = [result allPurchasedTagIDs];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  v17 = v0[34];

  sub_1B67D9AFC();
  v18 = sub_1B67D9AEC();

  result = [v17 bundleSubscriptionManager];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = v0[31];

  if (v20 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v0[31];
  v33 = v0[30];
  v35 = v0[27];
  LOBYTE(v32) = *(v0 + 368);
  v22 = [v0[44] feedRequestsForTags:v38 tagBinProvider:v12 hiddenFeedIDs:v13 allowPaidBundleFeed:1 purchasedTagIDs:v18 bundleSubscriptionProvider:v19 configuration:v0[36] maxCount:v21 feedRange:v34 sidecar:v0[29] isRunningPPT:v32];
  swift_unknownObjectRelease();

  _Block_release(v12);
  type metadata accessor for MyArticlesRequest();
  v23 = [v22 allRequests];
  sub_1B63F3DA0(0, &unk_1EDB1E5A0, off_1E7C344C0);
  v24 = sub_1B67D97BC();

  v25 = [v22 feedContextByFeedID];
  sub_1B63F3DA0(0, &qword_1EDB1E5B0, off_1E7C34420);
  v26 = sub_1B67D954C();

  sub_1B64804AC(v24, v26, v35, v21, v33 == 0);
  v28 = v27;
  v29 = v0[38];
  v30 = v0[35];

  swift_unknownObjectRelease();

  v31 = v0[1];

  return v31(v28);
}

uint64_t sub_1B6483C94(uint64_t a1)
{
  v2 = *(v1 + 312);
  swift_willThrow();

  v3 = *(v1 + 280);
  v4 = [v3 allSubscribedTagIDs];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = *(v1 + 280);
  sub_1B67D9AFC();

  v7 = sub_1B67D9AEC();
  *(v1 + 320) = v7;

  v4 = [v6 mutedTagIDs];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v4;
  v9 = *(v1 + 272);
  sub_1B67D9AFC();

  v10 = sub_1B67D9AEC();
  *(v1 + 328) = v10;

  v4 = [v9 purchaseController];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v4;
  v4 = [v4 allPurchasedTagIDs];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v4;
  v24 = v10;
  v13 = *(v1 + 272);

  sub_1B67D9AFC();
  v14 = sub_1B67D9AEC();
  *(v1 + 336) = v14;

  v4 = [v13 bundleSubscriptionManager];
  *(v1 + 344) = v4;
  if (!v4)
  {
LABEL_13:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v4);
  }

  v15 = v4;
  v16 = *(v1 + 296);
  v23 = *(v1 + 288);
  v17 = *(v1 + 368);
  v18 = *(v1 + 272);
  v19 = objc_opt_self();
  *(v1 + 352) = v19;
  *(v1 + 80) = v1;
  *(v1 + 120) = v1 + 208;
  *(v1 + 88) = sub_1B6483704;
  v20 = swift_continuation_init();
  *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A888, &qword_1B6812EC8);
  *(v1 + 144) = MEMORY[0x1E69E9820];
  *(v1 + 152) = 1107296256;
  *(v1 + 160) = sub_1B6484140;
  *(v1 + 168) = &block_descriptor_5;
  *(v1 + 176) = v20;
  LOBYTE(v22) = (v17 & 1) == 0;
  [v19 fetchTagsForQueryingWithSubscribedTagIDs:v7 mutedTagIDs:v24 purchasedTagIDs:v14 bundleSubscriptionProvider:v15 configuration:v23 contentContext:v18 fallbackToPresubscribedTagIDs:v22 qualityOfService:v16 completionHandler:v1 + 144];
  v4 = (v1 + 80);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1B6483FBC(uint64_t a1)
{
  v2 = v1[42];
  v4 = v1[40];
  v3 = v1[41];
  v5 = v1[38];
  v6 = v1[35];
  swift_willThrow();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v7 = v1[1];

  return v7();
}

uint64_t sub_1B6484074(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1B6484140(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A390, &qword_1B6812ED0);
    **(*(v4 + 64) + 40) = sub_1B67D97BC();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1B648422C(char a1, id a2)
{
  if (a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = [a2 hiddenFeedIDs];
  if (v3)
  {
    v4 = v3;
    sub_1B67D97BC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A910, &qword_1B6812FF0);
  sub_1B67D9DEC();

  if (v6)
  {
    v5 = sub_1B648430C(v6);

    if (v5)
    {
      return v5;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B648430C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B6456B24(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B6458B54(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B6456B24((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1B6484420(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a1 < 1)
  {

    return;
  }

  v4 = a1;
  v5 = *(a3 + 24);
  v6 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_48;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  if (v7)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    v43 = v5;
    v45 = v6;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = v3;
      v9 = 0;
      do
      {
        MEMORY[0x1B8C95180](v9, v8);
        v10 = [swift_unknownObjectRetain() identifier];
        v11 = sub_1B67D964C();
        v13 = v12;
        swift_unknownObjectRelease_n();

        v15 = *(v47 + 16);
        v14 = *(v47 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1B6456B24((v14 > 1), v15 + 1, 1);
        }

        ++v9;
        *(v47 + 16) = v15 + 1;
        v16 = v47 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (v7 != v9);
    }

    else
    {
      v8 = v3;
      v17 = v3 + 32;
      do
      {
        v18 = [swift_unknownObjectRetain_n() identifier];
        v19 = sub_1B67D964C();
        v21 = v20;
        swift_unknownObjectRelease_n();

        v23 = *(v47 + 16);
        v22 = *(v47 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B6456B24((v22 > 1), v23 + 1, 1);
        }

        *(v47 + 16) = v23 + 1;
        v24 = v47 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v17 += 8;
        --v7;
      }

      while (v7);
    }

    v3 = v8;
    v5 = v43;
    v6 = v45;
  }

  v25 = sub_1B67D97AC();

  v26 = [v5 rankTagIDsDescending_];

  if (!v26)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v27 = sub_1B67D97BC();

  v28 = *(v27 + 16);
  if (v28 >= v4)
  {
    v28 = v4;
  }

  v4 = sub_1B6484A30(v27 + 32, 0, (2 * v28) | 1);
  swift_unknownObjectRelease();
  if (v6)
  {
    v5 = sub_1B67DA04C();
    if (v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_24:
      v29 = 0;
      v44 = v3 & 0xFFFFFFFFFFFFFF8;
      v46 = v3 & 0xC000000000000001;
      v42 = v3;
      v3 += 32;
      v30 = v4 + 56;
      do
      {
        if (v46)
        {
          v6 = MEMORY[0x1B8C95180](v29, v42);
          v31 = __OFADD__(v29++, 1);
          if (v31)
          {
LABEL_43:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v29 >= *(v44 + 16))
          {
            __break(1u);
LABEL_48:
            v7 = sub_1B67DA04C();
            goto LABEL_4;
          }

          v6 = *(v3 + 8 * v29);
          swift_unknownObjectRetain();
          v31 = __OFADD__(v29++, 1);
          if (v31)
          {
            goto LABEL_43;
          }
        }

        v32 = [v6 identifier];
        v33 = sub_1B67D964C();
        v35 = v34;

        if (*(v4 + 16) && (sub_1B67DA3DC(), sub_1B67D967C(), v36 = sub_1B67DA41C(), v37 = -1 << *(v4 + 32), v38 = v36 & ~v37, ((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
        {
          v39 = ~v37;
          while (1)
          {
            v40 = (*(v4 + 48) + 16 * v38);
            v41 = *v40 == v33 && v40[1] == v35;
            if (v41 || (sub_1B67DA2DC() & 1) != 0)
            {
              break;
            }

            v38 = (v38 + 1) & v39;
            if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          sub_1B67D9F7C();
          sub_1B67D9FBC();
          sub_1B67D9FCC();
          sub_1B67D9F8C();
        }

        else
        {
LABEL_25:

          swift_unknownObjectRelease();
        }
      }

      while (v29 != v5);
    }
  }
}

uint64_t sub_1B648488C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1B64848E8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6484928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B6435678;

  return sub_1B64830A8(a1, a2, a3, a4, a5, a6);
}

void *sub_1B6484A14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B6484A30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x1B8C94D60](result, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_1B6469928(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B6484AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B6484FB4;

  return v13(a1, a2, a3, 0, 0, 0, a4, a5);
}

uint64_t sub_1B6484C58(void *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2;
  }

  v3 = *(v1 + 24);
  if ([a1 tagType] != 1)
  {
    return 3;
  }

  v4 = *(v3 + 16);

  return FCFeedBinForTopicsInForYou(v4);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_7(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t dispatch thunk of MyArticlesRequestFactoryType.createRequest(dateRange:configuration:sidecar:maxFeeds:maxItemsPerFeed:binOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B6484E3C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B6484E3C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1B6484F60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B6484FB8@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = sub_1B67D85FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() smarterFetchBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_1B67D85AC();

    (*(v9 + 56))(v5, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v5, 1, 1, v8);
  }

  sub_1B648A08C(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B6418AB4(v7, &unk_1EB94BB50, &qword_1B6814FD0);
    sub_1B6489830();
    swift_allocError();
    *v13 = 1;
    *(v13 + 8) = 1;
    return swift_willThrow();
  }

  else
  {
    sub_1B67D859C();
    (*(v9 + 8))(v7, v8);
    return (*(v9 + 32))(v16, v11, v8);
  }
}

void sub_1B648526C(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1B67D963C();
  v4 = [v2 URLSessionWithSourceApplicationBundleIdentifier_];

  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64852FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A990, &qword_1B6813028);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = v32 - v5;
  Request = type metadata accessor for SmarterFetchRequest(0);
  MEMORY[0x1EEE9AC00](Request);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D8A9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B67D877C();
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  v16 = sub_1B6471844();
  v17 = *(v10 + 16);
  v33 = v9;
  v17(v12, v16, v9);
  v39 = a1;
  sub_1B6489884(a1, v8, type metadata accessor for SmarterFetchRequest);
  v18 = sub_1B67D8A7C();
  v19 = sub_1B67D9C9C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32[0] = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32[1] = a2;
    v23 = v22;
    v40 = v22;
    *v21 = 136446210;
    sub_1B643034C(&qword_1EB94A998, type metadata accessor for SmarterFetchRequest, &unk_1B681A1D8);
    v24 = sub_1B67DA28C();
    v26 = v25;
    sub_1B6467DA0(v8);
    v27 = sub_1B6456540(v24, v26, &v40);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1B63EF000, v18, v19, "will issue Smarter Fetch request, request=%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1B8C96DF0](v23, -1, -1);
    v28 = v21;
    v4 = v32[0];
    MEMORY[0x1B8C96DF0](v28, -1, -1);
  }

  else
  {

    sub_1B6467DA0(v8);
  }

  v29 = (*(v10 + 8))(v12, v33);
  MEMORY[0x1EEE9AC00](v29);
  v30 = v39;
  v32[-4] = v38;
  v32[-3] = v30;
  v32[-2] = v15;
  (*(v37 + 104))(v36, *MEMORY[0x1E69E8790], v4);
  sub_1B67D9ADC();
  return (*(v34 + 8))(v15, v35);
}

uint64_t sub_1B6485750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v31 = a2;
  v28 = a3;
  v29 = a1;
  v32 = sub_1B67D877C();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v25 - v8;
  v25 = &v25 - v8;
  Request = type metadata accessor for SmarterFetchRequest(0);
  v11 = *(Request - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Request - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_1B67D993C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1B6489884(v28, v13, type metadata accessor for SmarterFetchRequest);
  v18 = v9;
  v19 = v27;
  (*(v6 + 16))(v18, v29, v27);
  (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v32);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = (v12 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = (v7 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v31;
  sub_1B6489628(v13, &v23[v20]);
  (*(v6 + 32))(&v23[v21], v25, v19);
  (*(v4 + 32))(&v23[v22], v26, v32);

  sub_1B644BCA8(0, 0, v16, &unk_1B68130F0, v23);
}

uint64_t sub_1B6485AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  type metadata accessor for SmarterFetchRequest(0);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v10 = sub_1B67D877C();
  v7[10] = v10;
  v7[11] = *(v10 - 8);
  v7[12] = swift_task_alloc();
  v11 = sub_1B67D8A9C();
  v7[13] = v11;
  v7[14] = *(v11 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[17] = v12;
  *v12 = v7;
  v12[1] = sub_1B6485C80;

  return sub_1B6486344(a5, a6);
}

uint64_t sub_1B6485C80()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B6486048;
  }

  else
  {
    v2 = sub_1B6485D94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B6485D94()
{
  v34 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v9 = v0[5];
  v10 = sub_1B6471844();
  (*(v3 + 16))(v1, v10, v2);
  (*(v5 + 16))(v4, v8, v6);
  sub_1B6489884(v9, v7, type metadata accessor for SmarterFetchRequest);
  v11 = sub_1B67D8A7C();
  v12 = sub_1B67D9C9C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[9];
  v20 = v0[10];
  if (v13)
  {
    v32 = v0[13];
    v21 = swift_slowAlloc();
    v30 = v12;
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 134349314;
    v31 = v14;
    v23 = sub_1B644C390();
    (*(v18 + 8))(v17, v20);
    *(v21 + 4) = v23;
    *(v21 + 12) = 2082;
    v24 = sub_1B650D90C();
    v26 = v25;
    sub_1B6467DA0(v19);
    v27 = sub_1B6456540(v24, v26, &v33);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_1B63EF000, v11, v30, "finished Smarter Fetch request, time=%{public}lldms, id=%{public}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1B8C96DF0](v22, -1, -1);
    MEMORY[0x1B8C96DF0](v21, -1, -1);

    (*(v15 + 8))(v31, v32);
  }

  else
  {
    (*(v18 + 8))(v0[12], v0[10]);

    sub_1B6467DA0(v19);
    (*(v15 + 8))(v14, v16);
  }

  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
  sub_1B67D9A7C();

  v28 = v0[1];

  return v28();
}

uint64_t sub_1B6486048()
{
  v38 = v0;
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[8];
  v6 = v0[5];
  v7 = sub_1B6471844();
  (*(v3 + 16))(v2, v7, v4);
  sub_1B6489884(v6, v5, type metadata accessor for SmarterFetchRequest);
  v8 = v1;
  v9 = sub_1B67D8A7C();
  v10 = sub_1B67D9C8C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[18];
    v12 = v0[14];
    v35 = v0[13];
    v36 = v0[15];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v14 = 138543618;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v18;
    *v15 = v18;
    *(v14 + 12) = 2082;
    v19 = sub_1B650D90C();
    v21 = v20;
    sub_1B6467DA0(v13);
    v22 = sub_1B6456540(v19, v21, &v37);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1B63EF000, v9, v10, "Smarter Fetch request failed, error=%{public}@, id=%{public}s", v14, 0x16u);
    sub_1B6418AB4(v15, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C96DF0](v16, -1, -1);
    MEMORY[0x1B8C96DF0](v14, -1, -1);

    (*(v12 + 8))(v36, v35);
  }

  else
  {
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];
    v26 = v0[8];

    sub_1B6467DA0(v26);
    (*(v24 + 8))(v23, v25);
  }

  v27 = v0[18];
  v28 = v0[4];
  v29 = sub_1B6503C10();
  v30 = *(v28 + 16);
  v31 = *(v28 + 24);
  v32 = *v29;
  sub_1B6503F04(v27, v30, v31);

  v0[2] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
  sub_1B67D9A7C();

  v33 = v0[1];

  return v33();
}

uint64_t sub_1B6486344(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AAA0, &qword_1B6813110);
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = type metadata accessor for SmarterFetchRequest(0);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v5 = sub_1B67D8A9C();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v6 = sub_1B67D877C();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v7 = sub_1B67D837C();
  v3[50] = v7;
  v3[51] = *(v7 - 8);
  v3[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64865AC, 0, 0);
}

uint64_t sub_1B64865AC(uint64_t a1)
{
  v2 = v1[31];
  v3 = sub_1B6503C10();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *v3;
  sub_1B6503D88(v4, v5);
  v7 = v1[29];

  sub_1B64884B4(v7);
  v8 = [objc_allocWithZone(type metadata accessor for SmarterFetchURLSessionDelegate()) init];
  v1[53] = v8;
  sub_1B67D876C();
  v9 = swift_task_alloc();
  v1[54] = v9;
  *v9 = v1;
  v9[1] = sub_1B64867B0;
  v10 = v1[52];
  v11 = v1[31];

  return sub_1B64887BC(v11, v10, v8);
}

uint64_t sub_1B64867B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v5 = sub_1B6487DB4;
  }

  else
  {
    v5 = sub_1B64868C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B64868C8()
{
  v126 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 448);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    if ([v3 statusCode] >= 200 && objc_msgSend(v3, sel_statusCode) < 300 || objc_msgSend(v3, sel_statusCode) == 304)
    {
      v6 = *(v0 + 384);
      v5 = *(v0 + 392);
      v7 = *(v0 + 352);
      v8 = *(v0 + 360);
      v9 = *(v0 + 344);
      v10 = *(v0 + 312);
      v11 = *(v0 + 320);
      v119 = *(v0 + 304);
      v123 = *(v0 + 448);
      v12 = *(v0 + 232);
      v13 = sub_1B6471844();
      *(v0 + 464) = v13;
      v14 = *(v11 + 16);
      *(v0 + 472) = v14;
      *(v0 + 480) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v14(v9, v13, v10);
      v15 = *(v8 + 16);
      *(v0 + 488) = v15;
      *(v0 + 496) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v15(v6, v5, v7);
      sub_1B6489884(v12, v119, type metadata accessor for SmarterFetchRequest);
      v16 = v123;
      v17 = sub_1B67D8A7C();
      LOBYTE(v5) = sub_1B67D9C9C();

      v124 = v5;
      v18 = os_log_type_enabled(v17, v5);
      v19 = *(v0 + 384);
      v20 = *(v0 + 352);
      v21 = *(v0 + 360);
      v22 = *(v0 + 344);
      v23 = *(v0 + 312);
      v24 = *(v0 + 320);
      v25 = *(v0 + 304);
      if (v18)
      {
        v120 = *(v0 + 312);
        v26 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v125[0] = v115;
        *v26 = 134349570;
        v117 = v22;
        v27 = sub_1B644C390();
        loga = v17;
        v28 = *(v21 + 8);
        v28(v19, v20);
        *(v26 + 4) = v27;
        *(v26 + 12) = 2082;
        v29 = sub_1B650D90C();
        v31 = v30;
        sub_1B6467DA0(v25);
        v32 = sub_1B6456540(v29, v31, v125);

        *(v26 + 14) = v32;
        *(v26 + 22) = 2082;
        v33 = [v3 allHeaderFields];
        sub_1B67D954C();

        v34 = sub_1B67D955C();
        v36 = v35;

        v37 = sub_1B6456540(v34, v36, v125);
        v38 = v28;

        *(v26 + 24) = v37;
        _os_log_impl(&dword_1B63EF000, loga, v124, "received Smarter Fetch response, time=%{public}lldms, id=%{public}s, headers=%{public}s", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v115, -1, -1);
        MEMORY[0x1B8C96DF0](v26, -1, -1);

        v41 = *(v24 + 8);
        v40 = v24 + 8;
        v39 = v41;
        v41(v117, v120);
      }

      else
      {
        v38 = *(v21 + 8);
        v38(*(v0 + 384), *(v0 + 352));

        sub_1B6467DA0(v25);
        v93 = *(v24 + 8);
        v40 = v24 + 8;
        v39 = v93;
        v93(v22, v23);
      }

      *(v0 + 520) = v38;
      *(v0 + 504) = v40;
      *(v0 + 512) = v39;
      v94 = *(v0 + 440);
      sub_1B67D876C();
      type metadata accessor for SmarterFetchResponseDecoder();
      sub_1B64B2B4C(v94, (v0 + 56));
      v95 = *(v0 + 80);
      v96 = __swift_project_boxed_opaque_existential_1((v0 + 56), v95);
      v97 = *(v95 - 8);
      v98 = swift_task_alloc();
      (*(v97 + 16))(v98, v96, v95);
      *(v0 + 40) = swift_getAssociatedTypeWitness();
      *(v0 + 48) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_1B67D9A2C();

      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
      v99 = swift_task_alloc();
      *(v0 + 528) = v99;
      *v99 = v0;
      v99[1] = sub_1B64873C4;
      v68 = v0 + 128;
      v69 = 0;
      v70 = 0;

      return MEMORY[0x1EEE6D8D0](v68, v69, v70);
    }

    v63 = *(v0 + 448);
    v64 = objc_opt_self();
    v65 = v63;
    v66 = sub_1B67D963C();
    v67 = [v64 fc:v3 HTTPErrorWithURLResponse:v66 requestUUID:?];

    if (!v67)
    {
      __break(1u);
      return MEMORY[0x1EEE6D8D0](v68, v69, v70);
    }

    v71 = *(v0 + 440);
    v72 = *(v0 + 448);
    v73 = *(v0 + 424);
    swift_willThrow();

    v74 = *(v73 + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

    os_unfair_lock_lock((v74 + 24));
    v75 = *(v74 + 16);
    v76 = v75;
    os_unfair_lock_unlock((v74 + 24));

    if (v75)
    {
      v77 = *(v0 + 280);
      v78 = *(v0 + 232);
      v122 = v76;
      sub_1B67D869C();
      v80 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1B68100D0;
      *(v81 + 32) = sub_1B648901C();
      *(v81 + 40) = v82;
      v83 = *(v78 + *(v77 + 56) + 8);
      v84 = sub_1B67D963C();
      v85 = sub_1B67D97AC();

      if (v83)
      {
        v86 = sub_1B67D963C();
      }

      else
      {
        v86 = 0;
      }

      v57 = *(v0 + 408);
      v116 = *(v0 + 400);
      v118 = *(v0 + 416);
      v58 = *(v0 + 360);
      v112 = *(v0 + 352);
      log = *(v0 + 392);
      v100 = *(v0 + 264);
      v107 = *(v0 + 272);
      v109 = *(v0 + 424);
      v101 = *(v0 + 248);
      v111 = *(v0 + 256);
      v102 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v122 requestUUID:v84 startTime:v85 smarterFetchSources:v86 smarterFetchStrategy:v80];

      [*(v101 + 40) logNetworkEvent_];
      *(v0 + 208) = v102;
      *(v0 + 216) = 2;
      v103 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();

      (*(v100 + 8))(v107, v111);
LABEL_22:
      (*(v58 + 8))(log, v112);
      (*(v57 + 8))(v118, v116);
      goto LABEL_23;
    }
  }

  else
  {
    v42 = *(v0 + 440);
    v43 = *(v0 + 424);
    sub_1B6489830();
    swift_allocError();
    *v44 = 3;
    *(v44 + 8) = 1;
    swift_willThrow();

    v45 = *(v43 + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

    os_unfair_lock_lock((v45 + 24));
    v46 = *(v45 + 16);
    v47 = v46;
    os_unfair_lock_unlock((v45 + 24));

    if (v46)
    {
      v48 = *(v0 + 280);
      v49 = *(v0 + 232);
      v121 = v47;
      sub_1B67D869C();
      v51 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1B68100D0;
      *(v52 + 32) = sub_1B648901C();
      *(v52 + 40) = v53;
      v54 = *(v49 + *(v48 + 56) + 8);
      v55 = sub_1B67D963C();
      v56 = sub_1B67D97AC();

      if (v54)
      {
        v54 = sub_1B67D963C();
      }

      v57 = *(v0 + 408);
      v116 = *(v0 + 400);
      v118 = *(v0 + 416);
      v58 = *(v0 + 360);
      v112 = *(v0 + 352);
      log = *(v0 + 392);
      v59 = *(v0 + 264);
      v106 = *(v0 + 272);
      v108 = *(v0 + 424);
      v60 = *(v0 + 248);
      v110 = *(v0 + 256);
      v61 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v121 requestUUID:v55 startTime:v56 smarterFetchSources:v54 smarterFetchStrategy:v51];

      [*(v60 + 40) logNetworkEvent_];
      *(v0 + 112) = v61;
      *(v0 + 120) = 2;
      v62 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();

      (*(v59 + 8))(v106, v110);
      goto LABEL_22;
    }
  }

  v87 = *(v0 + 416);
  v88 = *(v0 + 400);
  v89 = *(v0 + 408);
  v90 = *(v0 + 392);
  v91 = *(v0 + 352);
  v92 = *(v0 + 360);

  (*(v92 + 8))(v90, v91);
  (*(v89 + 8))(v87, v88);
LABEL_23:

  v104 = *(v0 + 8);

  return v104();
}

uint64_t sub_1B64873C4()
{

  if (v0)
  {
    v1 = sub_1B6488110;
  }

  else
  {
    v1 = sub_1B64874D4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B64874D4()
{
  v96 = v0;
  v1 = *(v0 + 128);
  v2 = v0 + 16;
  v3 = *(v0 + 136);
  if (v3 == 255)
  {
    v88 = *(v0 + 488);
    v7 = *(v0 + 472);
    v8 = *(v0 + 464);
    v10 = *(v0 + 368);
    v9 = *(v0 + 376);
    v11 = *(v0 + 352);
    v12 = *(v0 + 328);
    v13 = *(v0 + 312);
    v83 = *(v0 + 288);
    v14 = *(v0 + 232);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v7(v12, v8, v13);
    v88(v10, v9, v11);
    sub_1B6489884(v14, v83, type metadata accessor for SmarterFetchRequest);
    v15 = sub_1B67D8A7C();
    v16 = sub_1B67D9C9C();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 520);
    v19 = *(v0 + 512);
    v20 = *(v0 + 368);
    v89 = *(v0 + 448);
    v92 = *(v0 + 376);
    v84 = *(v0 + 328);
    v79 = *(v0 + 440);
    v81 = *(v0 + 312);
    v21 = *(v0 + 288);
    if (v17)
    {
      v77 = *(v0 + 352);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v95 = v23;
      *v22 = 134349314;
      v75 = v19;
      v24 = sub_1B644C390();
      v18(v20, v77);
      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      v25 = sub_1B650D90C();
      v27 = v26;
      sub_1B6467DA0(v21);
      v28 = sub_1B6456540(v25, v27, &v95);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_1B63EF000, v15, v16, "finished processing records from Smarter Fetch, time=%{public}lldms, id=%{public}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1B8C96DF0](v23, -1, -1);
      MEMORY[0x1B8C96DF0](v22, -1, -1);

      v75(v84, v81);
      v18(v92, v77);
    }

    else
    {
      v43 = *(v0 + 352);
      v18(*(v0 + 368), v43);

      sub_1B6467DA0(v21);
      v19(v84, v81);
      v18(v92, v43);
    }

    v44 = *(*(v0 + 424) + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

    os_unfair_lock_lock((v44 + 24));
    v45 = *(v44 + 16);
    v46 = v45;
    os_unfair_lock_unlock((v44 + 24));

    if (v45)
    {
      v47 = *(v0 + 280);
      v48 = *(v0 + 232);
      v94 = v46;
      sub_1B67D869C();
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1B68100D0;
      *(v51 + 32) = sub_1B648901C();
      *(v51 + 40) = v52;
      v53 = *(v48 + *(v47 + 56) + 8);
      v54 = sub_1B67D963C();
      v55 = sub_1B67D97AC();

      if (v53)
      {
        v53 = sub_1B67D963C();
      }

      v91 = *(v0 + 416);
      v56 = *(v0 + 408);
      v82 = *(v0 + 520);
      v87 = *(v0 + 400);
      v80 = *(v0 + 392);
      v78 = *(v0 + 352);
      v57 = *(v0 + 264);
      v58 = *(v0 + 272);
      v59 = *(v0 + 248);
      v74 = *(v0 + 424);
      v76 = *(v0 + 256);
      v60 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v94 requestUUID:v54 startTime:v55 smarterFetchSources:v53 smarterFetchStrategy:v50];

      [*(v59 + 40) logNetworkEvent_];
      *(v0 + 160) = v60;
      *(v0 + 168) = 2;
      v61 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();

      (*(v57 + 8))(v58, v76);
      v82(v80, v78);
      (*(v56 + 8))(v91, v87);
    }

    else
    {
      v66 = *(v0 + 520);
      v67 = *(v0 + 416);
      v68 = *(v0 + 400);
      v69 = *(v0 + 408);
      v70 = *(v0 + 392);
      v71 = *(v0 + 352);

      v66(v70, v71);
      (*(v69 + 8))(v67, v68);
    }

    v72 = *(v0 + 8);

    return v72();
  }

  else
  {
    if (v3)
    {
      v4 = *(v0 + 264);
      v5 = *(v0 + 272);
      v6 = *(v0 + 256);
      *(v0 + 176) = v1;
      *(v0 + 184) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();
      (*(v4 + 8))(v5, v6);
    }

    else
    {
      v29 = *(v0 + 296);
      v30 = *(v0 + 232);
      (*(v0 + 472))(*(v0 + 336), *(v0 + 464), *(v0 + 312));
      sub_1B6489884(v30, v29, type metadata accessor for SmarterFetchRequest);
      v85 = v1;
      v31 = sub_1B67D8A7C();
      v32 = sub_1B67D9C9C();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 512);
      v90 = *(v0 + 312);
      v93 = *(v0 + 336);
      v35 = *(v0 + 296);
      if (v33)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v95 = v37;
        *v36 = 67240450;
        *(v36 + 4) = [v85 recordCount];
        sub_1B6449D2C(v1, v3);
        *(v36 + 8) = 2082;
        v38 = sub_1B650D90C();
        v86 = v34;
        v40 = v39;
        sub_1B6467DA0(v35);
        v41 = sub_1B6456540(v38, v40, &v95);

        *(v36 + 10) = v41;
        _os_log_impl(&dword_1B63EF000, v31, v32, "will process records from Smarter Fetch, count=%{public}d, id=%{public}s", v36, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v37);
        v42 = v37;
        v2 = v0 + 16;
        MEMORY[0x1B8C96DF0](v42, -1, -1);
        MEMORY[0x1B8C96DF0](v36, -1, -1);

        v86(v93, v90);
      }

      else
      {

        sub_1B6449D2C(v1, v3);
        sub_1B6467DA0(v35);
        v34(v93, v90);
      }

      v63 = *(v0 + 264);
      v62 = *(v0 + 272);
      v64 = *(v0 + 256);
      *(v0 + 192) = v1;
      *(v0 + 200) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
      sub_1B67D9A6C();
      (*(v63 + 8))(v62, v64);
    }

    __swift_mutable_project_boxed_opaque_existential_1(v2, *(v0 + 40));
    v65 = swift_task_alloc();
    *(v0 + 528) = v65;
    *v65 = v0;
    v65[1] = sub_1B64873C4;

    return MEMORY[0x1EEE6D8D0](v0 + 128, 0, 0);
  }
}

uint64_t sub_1B6487DB4()
{
  v1 = *(*(v0 + 424) + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));

  if (v2)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 232);
    v34 = v3;
    sub_1B67D869C();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B68100D0;
    *(v8 + 32) = sub_1B648901C();
    *(v8 + 40) = v9;
    v10 = *(v5 + *(v4 + 56) + 8);
    v11 = sub_1B67D963C();
    v12 = sub_1B67D97AC();

    if (v10)
    {
      v10 = sub_1B67D963C();
    }

    v32 = *(v0 + 400);
    v33 = *(v0 + 416);
    v30 = *(v0 + 392);
    v31 = *(v0 + 408);
    v13 = *(v0 + 360);
    v14 = *(v0 + 264);
    v26 = *(v0 + 272);
    v27 = *(v0 + 424);
    v15 = *(v0 + 248);
    v28 = *(v0 + 256);
    v29 = *(v0 + 352);
    v16 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v34 requestUUID:v11 startTime:v12 smarterFetchSources:v10 smarterFetchStrategy:v7];

    [*(v15 + 40) logNetworkEvent_];
    *(v0 + 96) = v16;
    *(v0 + 104) = 2;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
    sub_1B67D9A6C();

    (*(v14 + 8))(v26, v28);
    (*(v13 + 8))(v30, v29);
    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v18 = *(v0 + 416);
    v19 = *(v0 + 400);
    v20 = *(v0 + 408);
    v21 = *(v0 + 392);
    v22 = *(v0 + 352);
    v23 = *(v0 + 360);

    (*(v23 + 8))(v21, v22);
    (*(v20 + 8))(v18, v19);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1B6488110()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 376);
  v5 = *(v0 + 352);

  v1(v4, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = *(v3 + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  v8 = v7;
  os_unfair_lock_unlock((v6 + 24));

  if (v7)
  {
    v9 = *(v0 + 280);
    v10 = *(v0 + 232);
    v39 = v8;
    sub_1B67D869C();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B68100D0;
    *(v13 + 32) = sub_1B648901C();
    *(v13 + 40) = v14;
    v15 = *(v10 + *(v9 + 56) + 8);
    v16 = sub_1B67D963C();
    v17 = sub_1B67D97AC();

    if (v15)
    {
      v15 = sub_1B67D963C();
    }

    v38 = *(v0 + 416);
    v18 = *(v0 + 408);
    v36 = *(v0 + 520);
    v37 = *(v0 + 400);
    v34 = *(v0 + 352);
    v35 = *(v0 + 392);
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 248);
    v32 = *(v0 + 424);
    v33 = *(v0 + 256);
    v22 = [objc_allocWithZone(FCNetworkEvent) initWithType:26 URLSessionTask:v39 requestUUID:v16 startTime:v17 smarterFetchSources:v15 smarterFetchStrategy:v12];

    [*(v21 + 40) logNetworkEvent_];
    *(v0 + 144) = v22;
    *(v0 + 152) = 2;
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
    sub_1B67D9A6C();

    (*(v20 + 8))(v19, v33);
    v36(v35, v34);
    (*(v18 + 8))(v38, v37);
  }

  else
  {
    v24 = *(v0 + 520);
    v25 = *(v0 + 416);
    v26 = *(v0 + 400);
    v27 = *(v0 + 408);
    v28 = *(v0 + 392);
    v29 = *(v0 + 352);

    v24(v28, v29);
    (*(v27 + 8))(v25, v26);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1B64884B4(uint64_t a1)
{
  v3 = sub_1B67D85FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  result = sub_1B6484FB8(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v1)
  {
    sub_1B67D834C();
    sub_1B64898EC(a1);
    sub_1B67D835C();
    sub_1B67D833C();
    sub_1B67D836C();
    sub_1B67D836C();
    v6 = [objc_opt_self() sharedAccount];
    v7 = [v6 endpointConnectionClientID];

    if (v7)
    {
      sub_1B67D964C();
    }

    sub_1B67D836C();

    type metadata accessor for SmarterFetchRequest(0);
    sub_1B67D964C();
    sub_1B67D836C();

    v8 = FCClientInfoHeaderValue();
    sub_1B67D964C();

    sub_1B67D964C();
    sub_1B67D836C();

    v9 = FCUserAgentHeaderValue();
    sub_1B67D964C();

    sub_1B67D964C();
    sub_1B67D836C();
  }

  return result;
}

uint64_t sub_1B64887BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_1B67D85FC();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B648888C, 0, 0);
}

uint64_t sub_1B648888C()
{
  v1 = v0[6];
  if (FCProcessIsMemoryConstrained())
  {
    sub_1B67D89CC();
    v0[11] = v0[3];
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1B64889D4;
    v3 = v0[10];
    v4 = v0[5];

    return MEMORY[0x1EEDC6278](v3, v4, v1);
  }

  else
  {
    sub_1B67D89CC();
    v0[15] = v0[2];
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1B6488C54;
    v6 = v0[5];

    return MEMORY[0x1EEDC6260](v6, v1);
  }
}

uint64_t sub_1B64889D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1B6488E3C;
  }

  else
  {

    v4 = sub_1B6488AF0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6488AF0()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  type metadata accessor for URLResponsePayload(0);
  (*(v5 + 16))(v2, v3, v4);
  v6 = URLResponsePayload.__allocating_init(_:)(v2);
  if (v1)
  {
    v7 = v0[13];
    (*(v0[8] + 8))(v0[10], v0[7]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v6;
    (*(v0[8] + 8))(v0[10], v0[7]);
    v11 = v0[13];

    v12 = v0[1];

    return v12(v10, v11);
  }
}

uint64_t sub_1B6488C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 136) = v3;

  if (v3)
  {
    v9 = sub_1B6488EB0;
  }

  else
  {

    *(v8 + 144) = a3;
    *(v8 + 152) = a2;
    *(v8 + 160) = a1;
    v9 = sub_1B6488D98;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B6488D98()
{
  type metadata accessor for URLResponsePayload(0);
  v1 = URLResponsePayload.__allocating_init(_:)();
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1B6488E3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B6488EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B6488F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B67DA3DC();
  sub_1B67D967C();
  v6 = sub_1B67DA41C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B67DA2DC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B648901C()
{
  v1 = type metadata accessor for SmarterFetchRequest.DataType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6489884(v0, v3, type metadata accessor for SmarterFetchRequest.DataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
        sub_1B6418AB4(&v3[*(v6 + 48)], &unk_1EB94A100, &qword_1B680FD50);
        v7 = sub_1B67D877C();
        (*(*(v7 - 8) + 8))(v3, v7);
        return 0xD000000000000011;
      }

      else
      {
        return 5002053;
      }
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
      sub_1B6418AB4(&v3[*(v8 + 48)], &unk_1EB94A100, &qword_1B680FD50);
      v9 = sub_1B67D877C();
      (*(*(v9 - 8) + 8))(v3, v9);
      return 0x54534554414CLL;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x505055535F4C5345;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x455F4C41424F4C47;
  }

  else
  {
    return 0x5F4741545F524550;
  }
}

uint64_t sub_1B6489278()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1B6489414()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B648945C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1B64895E4(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_1B6489628(uint64_t a1, uint64_t a2)
{
  Request = type metadata accessor for SmarterFetchRequest(0);
  (*(*(Request - 8) + 32))(a2, a1, Request);
  return a2;
}

uint64_t sub_1B648968C()
{
  v2 = *(type metadata accessor for SmarterFetchRequest(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1B67D877C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 32);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B642694C;

  return sub_1B6485AD0(v11, v12, v13, v10, v0 + v3, v0 + v6, v0 + v9);
}

unint64_t sub_1B6489830()
{
  result = qword_1EB9532E0[0];
  if (!qword_1EB9532E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9532E0);
  }

  return result;
}

uint64_t sub_1B6489884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1B64898EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v60 - v6;
  Request = type metadata accessor for SmarterFetchRequest(0);
  v8 = *(a1 + Request[8]);
  if (v8 > 3)
  {
    v9 = 1;
  }

  else
  {
    v9 = dword_1B6813010[v8];
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69B7050]);
  v11 = sub_1B67D963C();
  v12 = sub_1B67D97AC();
  v67 = [v10 initWithStorefrontID:v11 preferredLanguages:v12 subscriberType:v9];

  if (*(a1 + Request[15] + 8) >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1B67D864C();
  }

  v66 = [objc_allocWithZone(MEMORY[0x1E69B6F08]) initWithUserInterestVector:v13 uivModelID:0];

  MEMORY[0x1EEE9AC00](v14);
  v59 = a1;
  v65 = sub_1B644F358(sub_1B6489FC0, &v57, v15);
  v63 = v1;
  v16 = *(a1 + Request[11]);
  v17 = *(v16 + 16);
  if (v17)
  {
    v64 = sub_1B646682C(*(v16 + 16), 0);
    v18 = sub_1B648945C(&v69, (v64 + 32), v17, v16);
    v19 = v69;

    sub_1B6449D40(v19);
    if (v18 == v17)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B68100E0;
  v21 = [objc_opt_self() fc_articleRecordType];
  v22 = v21;
  v23 = *(a1 + Request[13]);
  v24 = *(v23 + 16);
  if (v24)
  {
    v61 = v21;
    v62 = v20;
    v69 = MEMORY[0x1E69E7CC0];
    sub_1B67D9FAC();
    v25 = v23 + 40;
    do
    {
      v26 = objc_allocWithZone(MEMORY[0x1E69B6D80]);

      v27 = sub_1B67D963C();

      [v26 initWithName_];

      sub_1B67D9F7C();
      sub_1B67D9FBC();
      sub_1B67D9FCC();
      sub_1B67D9F8C();
      v25 += 16;
      --v24;
    }

    while (v24);
    v22 = v61;
    v20 = v62;
  }

  v28 = objc_allocWithZone(MEMORY[0x1E69B6E40]);
  sub_1B63F3DA0(0, &qword_1EB94AAC0, 0x1E69B6D80);
  v29 = sub_1B67D97AC();

  v30 = [v28 initWithRecordType:v22 desiredFields:v29 linkedFields:0];

  *(v20 + 32) = v30;
  sub_1B648901C();
  v31 = (a1 + Request[14]);
  v32 = v31[1];
  v62 = *v31;
  sub_1B650CA94(v68);
  sub_1B650CC38(v70);
  sub_1B63F3DA0(0, &qword_1EB94AAA8, 0x1E69B6FE8);
  v33 = v66;
  v34 = v67;
  v66 = sub_1B67D97AC();

  v65 = sub_1B67D97AC();

  sub_1B63F3DA0(0, &unk_1EB94AAB0, 0x1E69B6E40);
  v64 = sub_1B67D97AC();

  v35 = sub_1B67D963C();

  v67 = v34;
  v36 = v33;
  if (v32)
  {
    v62 = sub_1B67D963C();
  }

  else
  {
    v62 = 0;
  }

  v37 = sub_1B67D877C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v40 = v68;
  v41 = 0;
  if (v39(v68, 1, v37) != 1)
  {
    v41 = sub_1B67D86DC();
    (*(v38 + 8))(v40, v37);
  }

  v42 = v70;
  v43 = v35;
  if (v39(v70, 1, v37) == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_1B67D86DC();
    (*(v38 + 8))(v42, v37);
  }

  v45 = v36;
  v46 = v67;
  v47 = objc_allocWithZone(MEMORY[0x1E69B6FD0]);
  v58 = v41;
  v70 = v41;
  v48 = v62;
  v49 = v36;
  v51 = v65;
  v50 = v66;
  v52 = v64;
  v53 = [v47 initWithUserInfo:v46 personalizationParams:v49 tagsFollowed:v66 mutedTagIDs:v65 fetchRecordSpecs:v64 fetchSource:v43 fetchStrategy:v62 fromDate:v58 toDate:v44];

  result = [v53 data];
  if (result)
  {
    v55 = result;
    v56 = sub_1B67D866C();

    return v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B6489FC0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  Request = type metadata accessor for SmarterFetchRequest(0);
  v8 = sub_1B6488F24(v5, v6, *(v4 + *(Request + 40)));
  LOBYTE(Request) = sub_1B6488F24(v5, v6, *(v4 + *(Request + 48)));
  v9 = objc_allocWithZone(MEMORY[0x1E69B6FE8]);
  v10 = sub_1B67D963C();
  v11 = [v9 initWithTagID:v10 followMode:v8 & 1 isALaCarteSubscribed:Request & 1];

  *a2 = v11;
}

uint64_t sub_1B648A08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SmarterFetchService.Errors(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SmarterFetchService.Errors(uint64_t result, int a2, int a3)
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

uint64_t sub_1B648A160(uint64_t a1)
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

uint64_t sub_1B648A17C(uint64_t result, int a2)
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

uint64_t static FCCKResponseDecoder.processResponse(payload:operationHandler:recordHandler:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_1B67D993C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a1;
  v18[9] = a6;
  v18[10] = a7;

  v19 = a1;

  sub_1B644BCA8(0, 0, v16, &unk_1B68131B0, v18);
}

uint64_t sub_1B648A308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[84] = v13;
  v8[83] = v12;
  v8[82] = a8;
  v8[81] = a7;
  v8[80] = a6;
  v8[79] = a5;
  v8[78] = a4;
  v8[85] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB40, &qword_1B6813200);
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v9 = sub_1B67D9C5C();
  v8[88] = v9;
  v8[89] = *(v9 - 8);
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = sub_1B67D9C3C();
  v8[93] = swift_task_alloc();
  v8[94] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB48, &qword_1B6813208);
  v8[95] = swift_task_alloc();
  v8[96] = swift_task_alloc();
  v8[97] = type metadata accessor for URLResponsePayload.Kind(0);
  v8[98] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B648A4E4, 0, 0);
}

uint64_t sub_1B648A4E4()
{
  sub_1B648CE30(v0[82] + OBJC_IVAR___FCURLResponsePayload_kind, v0[98]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[98];
      v3 = v0[96];
      v4 = v0[95];
      v5 = v0[94];
      v6 = v0[93];
      v7 = v0[92];
      v0[105] = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB78, &qword_1B6813230) + 48));
      sub_1B67D9C4C();
      v8 = sub_1B648CEF4(&qword_1EB94AB80, MEMORY[0x1E6969E90], MEMORY[0x1E6969E98]);
      sub_1B648D654(v6, v7, v8, v3);
      sub_1B648FCB4(v5, v4);
      v9 = sub_1B6413CCC(&qword_1EB94AB88, &qword_1EB94AB48, &qword_1B6813208, &unk_1B68136C8);
      v10 = swift_task_alloc();
      v0[106] = v10;
      *v10 = v0;
      v10[1] = sub_1B648B198;
      v11 = v0[94];
      v12 = v0 + 69;
    }

    else
    {
      v18 = v0[98];
      v19 = v0[91];
      v20 = v0[90];
      v21 = v0[89];
      v22 = v0[88];
      v23 = v0[87];
      v24 = v0[86];
      v25 = v0[85];

      (*(v21 + 32))(v19, v18, v22);
      (*(v21 + 16))(v20, v19, v22);
      v26 = sub_1B648CEF4(&qword_1EB94AB58, MEMORY[0x1E6969EA0], MEMORY[0x1E6969EA8]);
      sub_1B648D654(v20, v22, v26, v23);
      sub_1B648FCB4(v25, v24);
      v9 = sub_1B6413CCC(&qword_1EB94AB60, &qword_1EB94AB40, &qword_1B6813200, &unk_1B68136C8);
      v27 = swift_task_alloc();
      v0[109] = v27;
      *v27 = v0;
      v27[1] = sub_1B648BA30;
      v11 = v0[85];
      v12 = v0 + 67;
    }
  }

  else
  {
    v13 = v0[98];
    v14 = *v13;
    v0[99] = *v13;
    v15 = v13[1];
    v0[100] = v15;
    sub_1B646B894(v14, v15);
    sub_1B648FFD4((v0 + 2), v14, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB90, &unk_1B6813238);
    v0[101] = v16;
    sub_1B6490A0C(v16, (v0 + 13));
    v9 = sub_1B6413CCC(qword_1EDB20370, &qword_1EB94AB90, &unk_1B6813238, &unk_1B6813768);
    v17 = swift_task_alloc();
    v0[102] = v17;
    *v17 = v0;
    v17[1] = sub_1B648A93C;
    v11 = v0[101];
    v12 = v0 + 71;
  }

  return MEMORY[0x1EEE6D8C8](v12, v11, v9);
}

uint64_t sub_1B648A93C()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = sub_1B648AEA8;
  }

  else
  {
    v2 = sub_1B648AA50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B648AA50()
{
  *(v0 + 832) = *(v0 + 568);
  *(v0 + 545) = *(v0 + 576);
  return MEMORY[0x1EEE6DFA0](sub_1B648AA7C, 0, 0);
}

uint64_t sub_1B648AA7C()
{
  v1 = *(v0 + 545);
  if (v1 == 255)
  {
    v4 = *(v0 + 800);
    v5 = *(v0 + 792);
    v6 = *(v0 + 152);
    *(v0 + 312) = *(v0 + 136);
    *(v0 + 328) = v6;
    *(v0 + 344) = *(v0 + 168);
    *(v0 + 360) = *(v0 + 184);
    v7 = *(v0 + 120);
    *(v0 + 280) = *(v0 + 104);
    *(v0 + 296) = v7;
    sub_1B6418AB4(v0 + 280, &qword_1EB94AB90, &unk_1B6813238);
    sub_1B645745C(v5, v4);
    sub_1B6418AB4(v0 + 16, &qword_1EB94AB90, &unk_1B6813238);
    (*(v0 + 664))(0);
  }

  else
  {
    v2 = *(v0 + 832);
    v3 = objc_autoreleasePoolPush();
    if (v1)
    {
      (*(v0 + 624))(v2);
LABEL_10:
      v24 = *(v0 + 832);
      v25 = *(v0 + 545);
      objc_autoreleasePoolPop(v3);
      sub_1B6449D2C(v24, v25);
      v26 = sub_1B6413CCC(qword_1EDB20370, &qword_1EB94AB90, &unk_1B6813238, &unk_1B6813768);
      v27 = swift_task_alloc();
      *(v0 + 816) = v27;
      *v27 = v0;
      v27[1] = sub_1B648A93C;
      v28 = *(v0 + 808);

      return MEMORY[0x1EEE6D8C8](v0 + 568, v28, v26);
    }

    v8 = (*(v0 + 640))(v2);
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *(v0 + 832);
    v10 = *(v0 + 800);
    v11 = *(v0 + 792);
    v12 = *(v0 + 545);
    v13 = v8;
    swift_willThrow();
    objc_autoreleasePoolPop(v3);
    sub_1B6418AB4(v0 + 16, &qword_1EB94AB90, &unk_1B6813238);
    sub_1B6449D2C(v9, v12);
    sub_1B645745C(v11, v10);
    v14 = *(v0 + 152);
    *(v0 + 400) = *(v0 + 136);
    *(v0 + 416) = v14;
    *(v0 + 432) = *(v0 + 168);
    *(v0 + 448) = *(v0 + 184);
    v15 = *(v0 + 120);
    *(v0 + 368) = *(v0 + 104);
    *(v0 + 384) = v15;
    sub_1B6418AB4(v0 + 368, &qword_1EB94AB90, &unk_1B6813238);
    v16 = *(v0 + 664);
    type metadata accessor for CKUnderlyingError(0);
    *(v0 + 600) = 1005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    *(inited + 32) = sub_1B67D964C();
    *(inited + 40) = v18;
    v19 = sub_1B67D854C();
    *(inited + 72) = sub_1B648CEA8();
    *(inited + 48) = v19;
    sub_1B6482328(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
    sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);
    sub_1B67D853C();
    v20 = *(v0 + 592);
    v21 = v20;
    v16(v20);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1B648AEA8()
{
  *(v0 + 616) = *(v0 + 824);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1B648AF38, 0, 0);
}

uint64_t sub_1B648AF38()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  sub_1B6418AB4(v0 + 16, &qword_1EB94AB90, &unk_1B6813238);
  sub_1B645745C(v2, v1);
  v3 = *(v0 + 152);
  *(v0 + 224) = *(v0 + 136);
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v0 + 168);
  *(v0 + 272) = *(v0 + 184);
  v4 = *(v0 + 120);
  *(v0 + 192) = *(v0 + 104);
  *(v0 + 208) = v4;
  sub_1B6418AB4(v0 + 192, &qword_1EB94AB90, &unk_1B6813238);
  v5 = *(v0 + 824);
  v6 = *(v0 + 664);
  type metadata accessor for CKUnderlyingError(0);
  *(v0 + 600) = 1005;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = sub_1B67D964C();
  *(inited + 40) = v8;
  v9 = sub_1B67D854C();
  *(inited + 72) = sub_1B648CEA8();
  *(inited + 48) = v9;
  sub_1B6482328(inited);
  swift_setDeallocating();
  sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
  sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);
  sub_1B67D853C();
  v10 = *(v0 + 592);
  v11 = v10;
  v6(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B648B198()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_1B648B730;
  }

  else
  {
    v2 = sub_1B648B2AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B648B2AC()
{
  *(v0 + 864) = *(v0 + 552);
  *(v0 + 546) = *(v0 + 560);
  return MEMORY[0x1EEE6DFA0](sub_1B648B2D8, 0, 0);
}

uint64_t sub_1B648B2D8()
{
  v1 = *(v0 + 546);
  if (v1 == 255)
  {
    v4 = *(v0 + 784);
    v5 = *(v0 + 768);
    v6 = *(v0 + 760);

    sub_1B6418AB4(v6, &qword_1EB94AB48, &qword_1B6813208);
    sub_1B6418AB4(v5, &qword_1EB94AB48, &qword_1B6813208);
    v7 = sub_1B67D85FC();
    (*(*(v7 - 8) + 8))(v4, v7);
    (*(v0 + 664))(0);
  }

  else
  {
    v2 = *(v0 + 864);
    v3 = objc_autoreleasePoolPush();
    if (v1)
    {
      (*(v0 + 624))(v2);
LABEL_10:
      v25 = *(v0 + 864);
      v26 = *(v0 + 546);
      objc_autoreleasePoolPop(v3);
      sub_1B6449D2C(v25, v26);
      v27 = sub_1B6413CCC(&qword_1EB94AB88, &qword_1EB94AB48, &qword_1B6813208, &unk_1B68136C8);
      v28 = swift_task_alloc();
      *(v0 + 848) = v28;
      *v28 = v0;
      v28[1] = sub_1B648B198;
      v29 = *(v0 + 752);

      return MEMORY[0x1EEE6D8C8](v0 + 552, v29, v27);
    }

    v8 = (*(v0 + 640))(v2);
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *(v0 + 864);
    v10 = *(v0 + 840);
    v11 = *(v0 + 784);
    v12 = *(v0 + 768);
    v13 = *(v0 + 760);
    v14 = *(v0 + 546);
    v15 = v8;
    swift_willThrow();
    objc_autoreleasePoolPop(v3);

    sub_1B6449D2C(v9, v14);
    sub_1B6418AB4(v13, &qword_1EB94AB48, &qword_1B6813208);
    sub_1B6418AB4(v12, &qword_1EB94AB48, &qword_1B6813208);
    v16 = sub_1B67D85FC();
    (*(*(v16 - 8) + 8))(v11, v16);
    v17 = *(v0 + 664);
    type metadata accessor for CKUnderlyingError(0);
    *(v0 + 600) = 1005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    *(inited + 32) = sub_1B67D964C();
    *(inited + 40) = v19;
    v20 = sub_1B67D854C();
    *(inited + 72) = sub_1B648CEA8();
    *(inited + 48) = v20;
    sub_1B6482328(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
    sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);
    sub_1B67D853C();
    v21 = *(v0 + 592);
    v22 = v21;
    v17(v21);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1B648B730()
{
  *(v0 + 608) = *(v0 + 856);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1B648B7C0, 0, 0);
}

uint64_t sub_1B648B7C0()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);

  sub_1B6418AB4(v3, &qword_1EB94AB48, &qword_1B6813208);
  sub_1B6418AB4(v2, &qword_1EB94AB48, &qword_1B6813208);
  v4 = sub_1B67D85FC();
  (*(*(v4 - 8) + 8))(v1, v4);
  v5 = *(v0 + 856);
  v6 = *(v0 + 664);
  type metadata accessor for CKUnderlyingError(0);
  *(v0 + 600) = 1005;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = sub_1B67D964C();
  *(inited + 40) = v8;
  v9 = sub_1B67D854C();
  *(inited + 72) = sub_1B648CEA8();
  *(inited + 48) = v9;
  sub_1B6482328(inited);
  swift_setDeallocating();
  sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
  sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);
  sub_1B67D853C();
  v10 = *(v0 + 592);
  v11 = v10;
  v6(v10);

  v12 = *(v0 + 8);

  return v12();
}