uint64_t sub_1D6B67380@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B67B50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B673A8(uint64_t a1)
{
  v2 = sub_1D5C7FDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B673E4(uint64_t a1)
{
  v2 = sub_1D5C7FDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroup.Resolved.encode(to:)(void *a1)
{
  sub_1D5B56870(0, &qword_1EDF02680, sub_1D5C7FDF4, &_s8ResolvedV10CodingKeysON_1, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  v9 = v1[2];
  v25 = v1[3];
  v26 = v9;
  v10 = v1[4];
  v23 = v1[5];
  v24 = v10;
  v11 = v1[6];
  v21 = v1[7];
  v22 = v11;
  v12 = v1[8];
  v19 = v1[9];
  v20 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C7FDF4();
  sub_1D7264B5C();
  LOBYTE(v29) = 0;
  v13 = v27;
  sub_1D72643FC();
  if (!v13)
  {
    v15 = v23;
    v14 = v24;
    v16 = v21;
    v17 = v22;
    LOBYTE(v29) = 1;
    sub_1D72643FC();
    v29 = v14;
    v28 = 2;
    type metadata accessor for FormatPackageInventory(0);
    sub_1D5B4CE7C(&qword_1EDF0DA50, type metadata accessor for FormatPackageInventory, &protocol conformance descriptor for FormatPackageInventory);
    sub_1D726443C();
    v29 = v15;
    v28 = 3;
    sub_1D5B5AB88(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D5CB5A24(&qword_1EDF050B0, &qword_1EDF45940, &protocol conformance descriptor for FormatOption, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v29 = v17;
    v28 = 4;
    sub_1D5B567C8(0, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    sub_1D5CB5E94(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D726443C();
    v29 = v16;
    v28 = 5;
    sub_1D5B49714(0, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved);
    sub_1D6B67920();
    sub_1D726443C();
    v29 = v20;
    v28 = 6;
    sub_1D5B49714(0, &qword_1EDF04BB8, &type metadata for FormatContentSubgroupSection.Resolved);
    sub_1D6B679FC();
    sub_1D726443C();
    v29 = v19;
    v28 = 7;
    sub_1D5B49714(0, &qword_1EDF3C880, &type metadata for FormatContentSubgroupFilter);
    sub_1D6B23F18();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6B678B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D6B67920()
{
  result = qword_1EDF04FB8;
  if (!qword_1EDF04FB8)
  {
    sub_1D5B49714(255, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved);
    sub_1D6B679A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FB8);
  }

  return result;
}

unint64_t sub_1D6B679A8()
{
  result = qword_1EDF10CB0;
  if (!qword_1EDF10CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CB0);
  }

  return result;
}

unint64_t sub_1D6B679FC()
{
  result = qword_1EDF04BB0;
  if (!qword_1EDF04BB0)
  {
    sub_1D5B49714(255, &qword_1EDF04BB8, &type metadata for FormatContentSubgroupSection.Resolved);
    sub_1D6B67A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04BB0);
  }

  return result;
}

unint64_t sub_1D6B67A84()
{
  result = qword_1EDF0A998[0];
  if (!qword_1EDF0A998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0A998);
  }

  return result;
}

unint64_t sub_1D6B67AFC()
{
  result = qword_1EC8929B0;
  if (!qword_1EC8929B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929B0);
  }

  return result;
}

uint64_t sub_1D6B67B50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73E71F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1D6B67DF8()
{
  result = qword_1EC8929B8;
  if (!qword_1EC8929B8)
  {
    sub_1D5B5AB88(255, &unk_1EDF1AE60, sub_1D5B7A2B8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929B8);
  }

  return result;
}

uint64_t FormatVideoData.Assets.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FormatVideoData.Assets.stillImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatVideoData.Assets(0) + 20);

  return sub_1D5EB84C0(v3, a1);
}

id FormatVideoData.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatVideoData(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v13 = v9;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v11 = v4;

  return v13;
}

uint64_t sub_1D6B68084(uint64_t a1)
{
  result = type metadata accessor for FormatVideoData.Assets(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D6B68120(uint64_t a1)
{
  sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    sub_1D5B54AD4(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_1D6B681E4(uint64_t a1, uint64_t a2)
{
  v87 = type metadata accessor for FormatVideoData.Assets(0);
  MEMORY[0x1EEE9AC00](v87, v3);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC2BEC(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v97 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v86 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v92 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v91 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v90 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v89 = &v86 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v86 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v86 - v34;
  sub_1D5B54AD4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v88 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v86 - v41;
  v43 = MEMORY[0x1E69E6F90];
  sub_1D5B54AD4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B54AD4(0, &qword_1EC880490, sub_1D5EA74B8, v43);
  sub_1D5EA74B8(0);
  v94 = v44;
  v45 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
  v98 = *(*(v44 - 8) + 72);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D7283D60;
  v93 = v46;
  v47 = (v46 + v45);
  v99 = a2;
  sub_1D6B68FC8(a2, v35, sub_1D6AC2BEC);
  v48 = type metadata accessor for FormatVideoData(0);
  v100 = *(*(v48 - 8) + 48);
  if (v100(v35, 1, v48) == 1)
  {
    sub_1D6B69030(v35, sub_1D6AC2BEC);
    v49 = sub_1D72585BC();
    (*(*(v49 - 8) + 56))(v42, 1, 1, v49);
  }

  else
  {
    sub_1D6B68FC8(v35, v5, type metadata accessor for FormatVideoData.Assets);
    sub_1D6B69030(v35, type metadata accessor for FormatVideoData);
    v50 = sub_1D72585BC();
    v51 = *(v50 - 8);
    (*(v51 + 16))(v42, v5, v50);
    sub_1D6B69030(v5, type metadata accessor for FormatVideoData.Assets);
    (*(v51 + 56))(v42, 0, 1, v50);
  }

  sub_1D711FCD0(5001813, 0xE300000000000000, v42, v47);
  v52 = type metadata accessor for FormatInspectionItem(0);
  v53 = *(*(v52 - 8) + 56);
  v53(v47, 0, 1, v52);
  sub_1D6B68FC8(v99, v31, sub_1D6AC2BEC);
  v54 = v100(v31, 1, v48);
  v55 = v88;
  if (v54 == 1)
  {
    sub_1D6B69030(v31, sub_1D6AC2BEC);
    v56 = sub_1D72585BC();
    (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
  }

  else
  {
    sub_1D6B68FC8(v31, v5, type metadata accessor for FormatVideoData.Assets);
    sub_1D6B69030(v31, type metadata accessor for FormatVideoData);
    sub_1D5EB84C0(&v5[*(v87 + 20)], v55);
    sub_1D6B69030(v5, type metadata accessor for FormatVideoData.Assets);
  }

  v57 = v98;
  sub_1D711FCD0(0x6D492D6C6C697453, 0xEF4C525520656761, v55, &v47[v98]);
  v53(&v47[v57], 0, 1, v52);
  v58 = v99;
  sub_1D6B68FC8(v99, v27, sub_1D6AC2BEC);
  if (v100(v27, 1, v48) == 1)
  {
    sub_1D6B69030(v27, sub_1D6AC2BEC);
    v59 = 0;
  }

  else
  {
    v59 = *&v27[*(v48 + 20)];
    sub_1D6B69030(v27, type metadata accessor for FormatVideoData);
  }

  sub_1D712DB64(0x79746976617247, 0xE700000000000000, v59, &v47[2 * v57]);
  v53(&v47[2 * v57], 0, 1, v52);
  v60 = v89;
  sub_1D6B68FC8(v58, v89, sub_1D6AC2BEC);
  if (v100(v60, 1, v48) == 1)
  {
    sub_1D6B69030(v60, sub_1D6AC2BEC);
    v61 = 2;
  }

  else
  {
    v61 = *(v60 + *(v48 + 20) + 8);
    sub_1D6B69030(v60, type metadata accessor for FormatVideoData);
  }

  sub_1D711E9F0(0x6E69706F6F4C7369, 0xE900000000000067, v61, &v47[3 * v57]);
  v53(&v47[3 * v57], 0, 1, v52);
  v62 = v90;
  sub_1D6B68FC8(v58, v90, sub_1D6AC2BEC);
  v63 = v100(v62, 1, v48);
  v64 = sub_1D6AC2BEC;
  if (v63 == 1)
  {
    v65 = 0;
  }

  else
  {
    v65 = *(v62 + *(v48 + 20) + 16);
    v64 = type metadata accessor for FormatVideoData;
  }

  v66 = v62;
  v67 = v63 == 1;
  sub_1D6B69030(v66, v64);
  v68 = &v47[4 * v57];
  sub_1D712DB7C(0x6B63616279616C50, 0xE800000000000000, v65, v67, v68);
  v53(v68, 0, 1, v52);
  v69 = v91;
  sub_1D6B68FC8(v58, v91, sub_1D6AC2BEC);
  if (v100(v69, 1, v48) == 1)
  {
    sub_1D6B69030(v69, sub_1D6AC2BEC);
    v70 = 2;
  }

  else
  {
    v70 = *(v69 + *(v48 + 20) + 24);
    sub_1D6B69030(v69, type metadata accessor for FormatVideoData);
  }

  v71 = v98;
  sub_1D711E9F0(0xD000000000000018, 0x80000001D73E7210, v70, &v47[5 * v98]);
  v53(&v47[5 * v71], 0, 1, v52);
  v72 = v92;
  sub_1D6B68FC8(v58, v92, sub_1D6AC2BEC);
  if (v100(v72, 1, v48) == 1)
  {
    sub_1D6B69030(v72, sub_1D6AC2BEC);
    v73 = 2;
  }

  else
  {
    v73 = *(v72 + *(v48 + 20) + 25);
    sub_1D6B69030(v72, type metadata accessor for FormatVideoData);
  }

  sub_1D711E9F0(0x646574754D7369, 0xE700000000000000, v73, &v47[6 * v71]);
  v53(&v47[6 * v71], 0, 1, v52);
  v74 = v95;
  sub_1D6B68FC8(v58, v95, sub_1D6AC2BEC);
  if (v100(v74, 1, v48) == 1)
  {
    sub_1D6B69030(v74, sub_1D6AC2BEC);
    v75 = 0;
  }

  else
  {
    v75 = *(v74 + *(v48 + 20) + 32);
    sub_1D6B69030(v74, type metadata accessor for FormatVideoData);
  }

  sub_1D712DB94(0xD000000000000013, 0x80000001D73E7230, v75, &v47[8 * v71 - v71]);
  v53(&v47[8 * v71 - v71], 0, 1, v52);
  v76 = v97;
  sub_1D6B68FC8(v58, v97, sub_1D6AC2BEC);
  v77 = v100(v76, 1, v48);
  v78 = sub_1D6AC2BEC;
  if (v77 == 1)
  {
    v79 = 0;
  }

  else
  {
    v79 = *(v76 + *(v48 + 20) + 40);
    v78 = type metadata accessor for FormatVideoData;
  }

  v80 = v77 == 1;
  sub_1D6B69030(v76, v78);
  sub_1D712E1BC(0x6974634120646E45, 0xEA00000000006E6FLL, v79, v80, &v47[8 * v71]);
  v53(&v47[8 * v71], 0, 1, v52);
  sub_1D6795150(0x6F65646956, 0xE500000000000000, 0, 0, v93, v101);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v81 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v81 + 64) = &off_1F518B2C0;
  v82 = swift_allocObject();
  *(v81 + 32) = v82;
  *(v82 + 48) = v102;
  v83 = v101[1];
  *(v82 + 16) = v101[0];
  *(v82 + 32) = v83;
  v84 = sub_1D7073500(v81);
  swift_setDeallocating();
  sub_1D6B69030(v81 + 32, sub_1D5E4F358);
  return v84;
}

uint64_t sub_1D6B68FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B69030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BaseFeedGroupEmitterType.name.getter(uint64_t a1)
{
  swift_getDynamicType();

  return sub_1D7264C5C();
}

void BaseFeedGroupEmitterType.groupKnobs.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E6190];
  a1[3] = MEMORY[0x1E69E6158];
  a1[4] = v1;
  a1[5] = MEMORY[0x1E69E6160];
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

uint64_t BaseFeedGroupEmitterType.priority.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v9 = &v12 - v8;
  (*(a2 + 48))(a1, a2, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 112))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v9, AssociatedTypeWitness);
}

void BaseFeedGroupEmitterType.emitSettings(with:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t sub_1D6B69398(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64684;

  return ModernFeedGroupEmitterType.emitCachedGroup(with:cachedOutput:)(a1, a2, v10, a4, a5);
}

uint64_t ModernFeedGroupEmitterType.emitCachedGroup(with:cachedOutput:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6B6949C, 0, 0);
}

uint64_t sub_1D6B6949C()
{
  v1 = *(v0 + 16);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FeedGroupEmitterCachedOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t FeedGroupEmitter.__allocating_init<A>(emitter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FeedGroupEmitter.init<A>(emitter:)(a1, a2, a3);
  return v6;
}

uint64_t *FeedGroupEmitter.init<A>(emitter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v58 = a1;
  v63 = *v3;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = v8;
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v64 = v6 + 16;
  v10(v7);
  v60 = v10;
  v65 = *(v6 + 80);
  v11 = (v65 + 40) & ~v65;
  v62 = v9;
  v12 = swift_allocObject();
  v59 = *(v63 + 80);
  v12[2] = v59;
  v12[3] = a2;
  v12[4] = a3;
  v63 = *(v6 + 32);
  v13 = v57;
  (v63)(v12 + v11, v57, a2);
  v3[2] = sub_1D5C03700;
  v3[3] = v12;
  v14 = v58;
  (v10)(v13, v58, a2);
  v15 = v11;
  v56 = v11;
  v16 = swift_allocObject();
  v17 = v59;
  v16[2] = v59;
  v16[3] = a2;
  v16[4] = v66;
  v18 = v16 + v15;
  v61 = v6 + 32;
  v19 = v63;
  (v63)(v18, v13, a2);
  v3[4] = sub_1D5C0C0A4;
  v3[5] = v16;
  (v60)(v13, v14, a2);
  v20 = v56;
  v21 = swift_allocObject();
  *(v21 + 2) = v17;
  *(v21 + 3) = a2;
  v22 = v66;
  *(v21 + 4) = v66;
  v23 = v20;
  v19(&v21[v20], v13, a2);
  v3[6] = sub_1D5BC3378;
  v3[7] = v21;
  v24 = v58;
  v25 = v60;
  (v60)(v13, v58, a2);
  v26 = swift_allocObject();
  v26[2] = v59;
  v26[3] = a2;
  v26[4] = v22;
  v27 = v63;
  (v63)(v26 + v23, v13, a2);
  v3[8] = sub_1D6B69CB4;
  v3[9] = v26;
  (v25)(v13, v24, a2);
  v28 = swift_allocObject();
  v29 = v59;
  *(v28 + 2) = v59;
  *(v28 + 3) = a2;
  v30 = v66;
  *(v28 + 4) = v66;
  v31 = v57;
  v27(&v28[v23], v57, a2);
  v3[10] = sub_1D6B69CB8;
  v3[11] = v28;
  (v25)(v31, v58, a2);
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = a2;
  v32[4] = v30;
  v33 = v57;
  (v63)(v32 + v23, v57, a2);
  v3[12] = sub_1D6B69CBC;
  v3[13] = v32;
  v34 = v58;
  (v25)(v33, v58, a2);
  v35 = swift_allocObject();
  v36 = v59;
  v35[2] = v59;
  v35[3] = a2;
  v35[4] = v66;
  v37 = v35 + v23;
  v38 = v63;
  (v63)(v37, v33, a2);
  v3[14] = sub_1D6B69CC0;
  v3[15] = v35;
  (v60)(v33, v34, a2);
  v39 = v56;
  v40 = swift_allocObject();
  *(v40 + 2) = v36;
  *(v40 + 3) = a2;
  v41 = v66;
  *(v40 + 4) = v66;
  v42 = v57;
  v38(&v40[v39], v57, a2);
  v3[16] = sub_1D6B69CC4;
  v3[17] = v40;
  v43 = v36;
  v3[20] = sub_1D6B69CC8(v34, v36, a2, v41);
  v3[21] = v44;
  v3[22] = sub_1D6B69DF4(v34, v36, a2, v41);
  v3[23] = v45;
  (v60)(v42, v34, a2);
  v46 = v56;
  v47 = swift_allocObject();
  v47[2] = v43;
  v47[3] = a2;
  v47[4] = v41;
  v48 = v47 + v46;
  v49 = v46;
  v50 = v63;
  (v63)(v48, v42, a2);
  v3[18] = sub_1D6B6A114;
  v3[19] = v47;
  v50(v42, v34, a2);
  v51 = swift_allocObject();
  *(v51 + 2) = v43;
  *(v51 + 3) = a2;
  v52 = v66;
  *(v51 + 4) = v66;
  v50(&v51[v49], v42, a2);
  v3[24] = &unk_1D732BEC0;
  v3[25] = v51;
  v53 = swift_allocObject();
  *(v53 + 16) = a2;
  *(v53 + 24) = v52;
  v3[26] = &unk_1D732BED0;
  v3[27] = v53;
  return v3;
}

{
  v5 = sub_1D6B6B544(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t (*sub_1D6B69CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C8A0;
}

uint64_t (*sub_1D6B69DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C830;
}

void sub_1D6B69F20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = a1;
  v28 = a2;
  v29 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for ModernFeedGroupEmitterInitialCursorContext(0, a3, AssociatedConformanceWitness, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - v14;
  v17 = type metadata accessor for LegacyFeedGroupEmitterInitialCursorContext(0, a3, AssociatedConformanceWitness, v16);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v26 - v21;
  (*(v12 + 16))(v15, v27, v11, v20);
  LegacyFeedGroupEmitterInitialCursorContext.init(context:)(v15, a3, AssociatedConformanceWitness, v22);
  v23 = (*(a5 + 16))(v22, a4, a5);
  (*(v18 + 8))(v22, v17);
  sub_1D6B6C7D8(0);
  v24 = v29;
  v29[3] = v25;
  *v24 = v23;
}

uint64_t sub_1D6B6A154()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E77A38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D6B6A290(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6B6A2DC, 0, 0);
}

uint64_t sub_1D6B6A2DC()
{
  v1 = *(v0 + 16);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FeedGroupEmitterCachedOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D6B6A448(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D5B64680;

  return sub_1D6B6A290(a1, a2, a3, v9, v8);
}

uint64_t *FeedGroupEmitter.__allocating_init<A>(emitter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D6B6B544(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t (*sub_1D6B6A600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C770;
}

uint64_t (*sub_1D6B6A72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C934;
}

uint64_t (*sub_1D6B6A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1D6B6C930;
}

void *sub_1D6B6A984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return &unk_1D732C130;
}

uint64_t sub_1D6B6AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(a5 + 24) + **(a5 + 24));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64680;

  return v12(a1, a2, a4, a5);
}

void *sub_1D6B6ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return &unk_1D732C120;
}

uint64_t sub_1D6B6AD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = (*(a6 + 32) + **(a6 + 32));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1D5B64680;

  return v14(a1, a2, a3, a5, a6);
}

uint64_t sub_1D6B6AFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6B6AFC4, 0, 0);
}

uint64_t sub_1D6B6AFC4()
{
  v6 = (*(v0[5] + 208) + **(v0[5] + 208));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D5C43610;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return v6(v4, v2, v3);
}

uint64_t FeedGroupEmitter.deinit()
{

  return v0;
}

uint64_t FeedGroupEmitter.__deallocating_deinit()
{
  FeedGroupEmitter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6B6B194(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5BD7AA4(a1, a2);
}

uint64_t sub_1D6B6B240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return sub_1D6B6AFA0(a1, a2, a3);
}

uint64_t sub_1D6B6B43C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t static FeedGroupEmitter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(a1 + 16))();
  v5 = v4;
  if (v3 == (*(a2 + 16))() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t *sub_1D6B6B544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v61 = a1;
  v5 = *v3;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6 + 16;
  v11 = *(v6 + 16);
  v56 = v9;
  v57 = v8;
  v11(v9, v7);
  v52 = *(v6 + 80);
  v12 = v6;
  v13 = (v52 + 40) & ~v52;
  v14 = swift_allocObject();
  v15 = *(v5 + 80);
  *(v14 + 2) = v15;
  *(v14 + 3) = a2;
  v16 = v15;
  v17 = v60;
  *(v14 + 4) = v60;
  v58 = *(v12 + 32);
  v59 = v12 + 32;
  v51 = v13;
  v58(&v14[v13], v9, a2);
  v3[2] = sub_1D6B6C910;
  v3[3] = v14;
  v55 = v11;
  (v11)(v9, v61, a2);
  v54 = v10;
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = a2;
  v53 = v16;
  *(v18 + 4) = v17;
  v19 = v56;
  v58(&v18[v13], v56, a2);
  v3[4] = sub_1D6B6C91C;
  v3[5] = v18;
  v20 = v19;
  v21 = v61;
  (v11)(v20, v61, a2);
  v22 = swift_allocObject();
  *(v22 + 2) = v16;
  *(v22 + 3) = a2;
  v23 = v60;
  *(v22 + 4) = v60;
  v24 = v56;
  v25 = v58;
  v58(&v22[v13], v56, a2);
  v3[6] = sub_1D6B6C920;
  v3[7] = v22;
  v55(v24, v21, a2);
  v26 = swift_allocObject();
  *(v26 + 2) = v53;
  *(v26 + 3) = a2;
  *(v26 + 4) = v23;
  v27 = v56;
  v25(&v26[v13], v56, a2);
  v28 = v25;
  v3[8] = sub_1D6B6C924;
  v3[9] = v26;
  v29 = v55;
  v55(v27, v61, a2);
  v30 = swift_allocObject();
  v31 = v53;
  *(v30 + 2) = v53;
  *(v30 + 3) = a2;
  v32 = v60;
  *(v30 + 4) = v60;
  v28(&v30[v13], v27, a2);
  v3[10] = sub_1D6B6C928;
  v3[11] = v30;
  v33 = v61;
  v29(v27, v61, a2);
  v34 = v51;
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = a2;
  v35[4] = v32;
  v36 = v35 + v34;
  v37 = v56;
  v28(v36, v56, a2);
  v3[12] = sub_1D6B6C92C;
  v3[13] = v35;
  v29(v37, v33, a2);
  v38 = v51;
  v39 = swift_allocObject();
  v40 = v53;
  *(v39 + 2) = v53;
  *(v39 + 3) = a2;
  *(v39 + 4) = v60;
  v58(&v39[v38], v37, a2);
  v3[14] = sub_1D6B6C914;
  v3[15] = v39;
  v41 = v61;
  v55(v37, v61, a2);
  v42 = swift_allocObject();
  *(v42 + 2) = v40;
  *(v42 + 3) = a2;
  v43 = v60;
  *(v42 + 4) = v60;
  v58(&v42[v38], v37, a2);
  v3[16] = sub_1D6B6C918;
  v3[17] = v42;
  v3[18] = sub_1D6B6A600(v41, v40, a2, v43);
  v3[19] = v44;
  v3[20] = sub_1D6B6A72C(v41, v40, a2, v43);
  v3[21] = v45;
  v3[22] = sub_1D6B6A858(v41, v40, a2, v43);
  v3[23] = v46;
  v3[24] = sub_1D6B6A984(v41, v40, a2, v43);
  v3[25] = v47;
  v3[26] = sub_1D6B6ABE8(v41, v40, a2, v43);
  v3[27] = v48;
  return v3;
}

uint64_t sub_1D6B6BA80(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6B6BABC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of ModernFeedGroupEmitterType.emitNextGroup(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ModernFeedGroupEmitterType.emitCachedGroup(with:cachedOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64684;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of FeedGroupEmitter.__allocating_init<A>(emitter:)()
{
  return (*(v0 + 200))();
}

{
  return (*(v0 + 208))();
}

uint64_t dispatch thunk of FeedGroupEmitter.emitNextGroup(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 304) + **(*v2 + 304));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D5B64680;

  return v8(a1, a2);
}

uint64_t dispatch thunk of FeedGroupEmitter.emitCachedGroup(with:cachedOutput:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 312) + **(*v3 + 312));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D5B64680;

  return v10(a1, a2, a3);
}

uint64_t sub_1D6B6C580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = (*(*(v8 - 8) + 80) + 40) & ~*(*(v8 - 8) + 80);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D5B64680;

  return sub_1D6B6AD14(a1, a2, a3, v3 + v10, v8, v9);
}

uint64_t sub_1D6B6C680(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D5B64680;

  return sub_1D6B6AAB0(a1, a2, v2 + v8, v6, v7);
}

void sub_1D6B6C7D8(uint64_t a1)
{
  if (!qword_1EDF3B8E8)
  {
    sub_1D5BE1404();
    v1 = sub_1D725BC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B8E8);
    }
  }
}

uint64_t static FormatRecipeOverrides.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);
  return sub_1D6B6DE74(v3, a1, type metadata accessor for FormatRecipeOverrides);
}

double sub_1D6B6C9BC()
{
  v0 = type metadata accessor for FormatRecipeOverrides(0);
  __swift_allocate_value_buffer(v0, qword_1EDF0DF50);
  v1 = __swift_project_value_buffer(v0, qword_1EDF0DF50);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for FormatThumbnail(0);
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  result = 0.0;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  return result;
}

uint64_t FormatRecipeOverrides.init(title:shortExcerpt:thumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for FormatRecipeOverrides(0);
  return sub_1D5CE4644(a5, a6 + *(v8 + 24), sub_1D5B5CFA0);
}

uint64_t FormatRecipeOverrides.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatRecipeOverrides.shortExcerpt.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6B6CB54()
{
  v1 = 0x63784574726F6873;
  if (*v0 != 1)
  {
    v1 = 0x69616E626D756874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D6B6CBB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B6DD54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B6CBE0(uint64_t a1)
{
  v2 = sub_1D6B6DA68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6CC1C(uint64_t a1)
{
  v2 = sub_1D6B6DA68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRecipeOverrides.encode(to:)(void *a1)
{
  sub_1D6B6DABC(0, &qword_1EDF02658, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B6DA68();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D726437C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D726437C();
    type metadata accessor for FormatRecipeOverrides(0);
    v10[13] = 2;
    type metadata accessor for FormatThumbnail(0);
    sub_1D6B6DBCC(&qword_1EDF117E8, type metadata accessor for FormatThumbnail, &protocol conformance descriptor for FormatThumbnail);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

void FormatRecipeOverrides.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D5B5CFA0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B6DABC(0, &unk_1EDF03A08, MEMORY[0x1E69E6F48]);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for FormatRecipeOverrides(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B6DA68();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = v12;
    v16 = v23;
    v17 = v24;
    v27 = 0;
    *v15 = sub_1D726422C();
    v15[1] = v18;
    v20[1] = v18;
    v26 = 1;
    v15[2] = sub_1D726422C();
    v15[3] = v19;
    type metadata accessor for FormatThumbnail(0);
    v25 = 2;
    sub_1D6B6DBCC(qword_1EDF41148, type metadata accessor for FormatThumbnail, &protocol conformance descriptor for FormatThumbnail);
    sub_1D726427C();
    (*(v16 + 8))(v11, v17);
    sub_1D5CE4644(v7, v15 + *(v21 + 24), sub_1D5B5CFA0);
    sub_1D6B6DE74(v15, v22, type metadata accessor for FormatRecipeOverrides);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D6B6DF40(v15, type metadata accessor for FormatRecipeOverrides);
  }
}

uint64_t sub_1D6B6D1FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5CFA0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatRecipeOverrides(0);
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a1 appliedOverrideMetadata];
  if (!v14)
  {

    goto LABEL_19;
  }

  v15 = v14;
  v32 = a2;
  v16 = [v14 title];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = sub_1D726207C();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

LABEL_7:
    v18 = 0;
    v20 = 0;
  }

  v22 = [v15 shortExcerpt];
  if (!v22)
  {
LABEL_13:
    v24 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  v23 = v22;
  v24 = sub_1D726207C();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    goto LABEL_13;
  }

LABEL_14:
  a2 = v32;
  sub_1D6B6D4D4(v15, v7);
  swift_unknownObjectRelease();

  if (!(v26 | v20))
  {
    v28 = type metadata accessor for FormatThumbnail(0);
    if ((*(*(v28 - 8) + 48))(v7, 1, v28) == 1)
    {
      sub_1D6B6DF40(v7, sub_1D5B5CFA0);
LABEL_19:
      v29 = 1;
      return (*(v9 + 56))(a2, v29, 1, v8);
    }
  }

  *v13 = v31;
  v13[1] = v20;
  v13[2] = v24;
  v13[3] = v26;
  sub_1D5CE4644(v7, v13 + *(v8 + 24), sub_1D5B5CFA0);
  sub_1D5CE4644(v13, a2, type metadata accessor for FormatRecipeOverrides);
  v29 = 0;
  return (*(v9 + 56))(a2, v29, 1, v8);
}

uint64_t sub_1D6B6D4D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5CFA0(0);
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 formatThumbnail];
  if (v9)
  {
    v10 = v9;
    v11 = v9;
    sub_1D5EFB8E4(v10, v8);
    v12 = type metadata accessor for FormatThumbnail(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {

      sub_1D6B6DF40(v8, sub_1D5B5CFA0);
      return (*(v13 + 56))(a2, 1, 1, v12);
    }

    else
    {
      v17 = sub_1D5EFA80C();

      if (v17)
      {
        v18 = 1;
      }

      else
      {
        sub_1D6B6DE74(v8, a2, type metadata accessor for FormatThumbnail);
        v18 = 0;
      }

      (*(v13 + 56))(a2, v18, 1, v12);
      return sub_1D6B6DF40(v8, type metadata accessor for FormatThumbnail);
    }
  }

  else
  {
    v15 = type metadata accessor for FormatThumbnail(0);
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }
}

BOOL _s8NewsFeed21FormatRecipeOverridesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FormatThumbnail(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5CFA0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B6DEDC(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v19 = a2[1];
  if (v18)
  {
    if (!v19 || (*a1 != *a2 || v18 != v19) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = a1[3];
  v21 = a2[3];
  if (v20)
  {
    if (!v21 || (a1[2] != a2[2] || v20 != v21) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = *(type metadata accessor for FormatRecipeOverrides(0) + 24);
  v23 = *(v14 + 48);
  sub_1D6B6DE74(a1 + v22, v17, sub_1D5B5CFA0);
  sub_1D6B6DE74(a2 + v22, &v17[v23], sub_1D5B5CFA0);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v23], 1, v4) == 1)
    {
      sub_1D6B6DF40(v17, sub_1D5B5CFA0);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1D6B6DE74(v17, v12, sub_1D5B5CFA0);
  if (v24(&v17[v23], 1, v4) == 1)
  {
    sub_1D6B6DF40(v12, type metadata accessor for FormatThumbnail);
LABEL_20:
    sub_1D6B6DF40(v17, sub_1D6B6DEDC);
    return 0;
  }

  sub_1D5CE4644(&v17[v23], v8, type metadata accessor for FormatThumbnail);
  v26 = _s8NewsFeed15FormatThumbnailV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1D6B6DF40(v8, type metadata accessor for FormatThumbnail);
  sub_1D6B6DF40(v12, type metadata accessor for FormatThumbnail);
  sub_1D6B6DF40(v17, sub_1D5B5CFA0);
  return v26;
}

unint64_t sub_1D6B6DA68()
{
  result = qword_1EDF0DF78;
  if (!qword_1EDF0DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF78);
  }

  return result;
}

void sub_1D6B6DABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B6DA68();
    v7 = a3(a1, &type metadata for FormatRecipeOverrides.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6B6DB20(void *a1)
{
  a1[1] = sub_1D6B6DBCC(&qword_1EDF0DF38, type metadata accessor for FormatRecipeOverrides, &protocol conformance descriptor for FormatRecipeOverrides);
  a1[2] = sub_1D6B6DBCC(&qword_1EDF0DF40, type metadata accessor for FormatRecipeOverrides, &protocol conformance descriptor for FormatRecipeOverrides);
  result = sub_1D6B6DBCC(&qword_1EC8929C0, type metadata accessor for FormatRecipeOverrides, &protocol conformance descriptor for FormatRecipeOverrides);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6B6DBCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6B6DC50()
{
  result = qword_1EC8929C8;
  if (!qword_1EC8929C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929C8);
  }

  return result;
}

unint64_t sub_1D6B6DCA8()
{
  result = qword_1EDF0DF68;
  if (!qword_1EDF0DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF68);
  }

  return result;
}

unint64_t sub_1D6B6DD00()
{
  result = qword_1EDF0DF70;
  if (!qword_1EDF0DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF70);
  }

  return result;
}

uint64_t sub_1D6B6DD54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63784574726F6873 && a2 == 0xEC00000074707265 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6B6DE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6B6DEDC(uint64_t a1)
{
  if (!qword_1EDF117E0)
  {
    sub_1D5B5CFA0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF117E0);
    }
  }
}

uint64_t sub_1D6B6DF40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatFontWidth.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x61707845696D6573;
    v7 = 0x6465646E61707865;
    if (v1 != 8)
    {
      v7 = 0x7078456172747865;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x646E6F43696D6573;
    if (v1 != 5)
    {
      v8 = 0x647261646E617473;
    }

    if (*v0 <= 6u)
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
    v2 = 0x6D6F436172746C75;
    v3 = 0x73736572706D6F63;
    v4 = 0x6E6F436172747865;
    if (v1 != 3)
    {
      v4 = 0x65736E65646E6F63;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6D6F436172747865;
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
}

NewsFeed::FormatFontWidth_optional __swiftcall FormatFontWidth.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D6B6E178()
{
  result = qword_1EC8929D0;
  if (!qword_1EC8929D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929D0);
  }

  return result;
}

uint64_t sub_1D6B6E1CC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694FD84(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6B6E21C(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694FD84(v4, v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D6B6E26C@<X0>(uint64_t *a1@<X8>)
{
  result = FormatFontWidth.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D6B6E294(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B6E2C4();
  result = sub_1D6B6E318();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B6E2C4()
{
  result = qword_1EC8929D8;
  if (!qword_1EC8929D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929D8);
  }

  return result;
}

unint64_t sub_1D6B6E318()
{
  result = qword_1EDF31990;
  if (!qword_1EDF31990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31990);
  }

  return result;
}

unint64_t sub_1D6B6E36C(uint64_t a1)
{
  result = sub_1D6B6E394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B6E394()
{
  result = qword_1EC8929E0;
  if (!qword_1EC8929E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929E0);
  }

  return result;
}

unint64_t sub_1D6B6E3E8(void *a1)
{
  a1[1] = sub_1D668AA74();
  a1[2] = sub_1D668AC6C();
  result = sub_1D6B6E178();
  a1[3] = result;
  return result;
}

uint64_t FormatGroupNodeDataLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatGroupNodeDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatGroupNodeDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double FormatGroupNodeDataLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 104);

  return result;
}

double FormatGroupNodeDataLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatGroupNodeDataLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
}

void FormatGroupNodeDataLayoutAttributes.maskLayoutAttributes.getter(uint64_t *a1@<X8>)
{
  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[22];
  v6 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_1D61CC60C(v2, v3, v4, v5, v6);
}

uint64_t FormatGroupNodeDataLayoutAttributes.__allocating_init(layoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:maskLayoutAttributes:style:canFlatten:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char a5, uint64_t *a6, __int128 *a7, uint64_t a8, char a9)
{
  v14 = swift_allocObject();
  v15 = *a2;
  v16 = *a4;
  v17 = *a6;
  v18 = *(a6 + 8);
  v25 = *(a7 + 4);
  v19 = *(a1 + 56);
  *(v14 + 16) = *(a1 + 48);
  *(v14 + 24) = v19;
  v20 = *(a1 + 72);
  *(v14 + 32) = *(a1 + 64);
  *(v14 + 40) = v20;
  v21 = *(a1 + 88);
  *(v14 + 48) = *(a1 + 80);
  *(v14 + 56) = v21;
  *(v14 + 64) = a1;
  swift_beginAccess();
  v22 = *(a1 + 32);
  *(v14 + 72) = *(a1 + 16);
  *(v14 + 88) = v22;
  *(v14 + 104) = v15;
  *(v14 + 112) = a3;
  *(v14 + 120) = v16;
  *(v14 + 128) = a5;
  *(v14 + 136) = v17;
  *(v14 + 144) = v18;
  v23 = *a7;
  *(v14 + 168) = a7[1];
  *(v14 + 152) = v23;
  *(v14 + 184) = v25;
  *(v14 + 192) = a8;
  *(v14 + 200) = MEMORY[0x1E69E7CD0];
  *(v14 + 208) = a9;

  return v14;
}

uint64_t FormatGroupNodeDataLayoutAttributes.init(layoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:maskLayoutAttributes:style:canFlatten:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char a5, uint64_t *a6, __int128 *a7, uint64_t a8, char a9)
{
  v12 = *a2;
  v13 = *a4;
  v14 = *a6;
  v15 = *(a6 + 8);
  v23 = *(a7 + 4);
  v16 = *(a1 + 56);
  *(v9 + 16) = *(a1 + 48);
  *(v9 + 24) = v16;
  v17 = *(a1 + 72);
  *(v9 + 32) = *(a1 + 64);
  *(v9 + 40) = v17;
  v18 = *(a1 + 88);
  *(v9 + 48) = *(a1 + 80);
  *(v9 + 56) = v18;
  *(v9 + 64) = a1;
  swift_beginAccess();
  v19 = *(a1 + 32);
  *(v9 + 72) = *(a1 + 16);
  *(v9 + 88) = v19;
  *(v9 + 104) = v12;
  *(v9 + 112) = a3;
  *(v9 + 120) = v13;
  *(v9 + 128) = a5;
  *(v9 + 136) = v14;
  *(v9 + 144) = v15;
  v20 = *a7;
  *(v9 + 168) = a7[1];
  *(v9 + 152) = v20;
  *(v9 + 184) = v23;
  *(v9 + 192) = a8;
  *(v9 + 200) = MEMORY[0x1E69E7CD0];
  *(v9 + 208) = a9;

  return v9;
}

uint64_t FormatGroupNodeDataLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 120));
  sub_1D61CC678(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));

  return v0;
}

uint64_t FormatGroupNodeDataLayoutAttributes.__deallocating_deinit()
{
  FormatGroupNodeDataLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatSourceMapEntry(uint64_t a1)
{
  result = qword_1EC8929E8;
  if (!qword_1EC8929E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6B6E978(uint64_t a1)
{
  sub_1D6B6EA0C();
  if (v1 <= 0x3F)
  {
    sub_1D69F80E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D6B6EA0C()
{
  if (!qword_1EDF1B2E0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B2E0);
    }
  }
}

uint64_t sub_1D6B6EA5C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6F65646976;
  }

  else
  {
    v2 = 0x6567616D69;
  }

  if (*a2)
  {
    v3 = 0x6F65646976;
  }

  else
  {
    v3 = 0x6567616D69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D6B6EADC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6B6EB4C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6B6EBA0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6B6EC0C(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D6B6EC6C(uint64_t *a1@<X8>)
{
  v2 = 0x6567616D69;
  if (*v1)
  {
    v2 = 0x6F65646976;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_1D6B6ED4C()
{
  v1 = 0x73746365666665;
  if (*v0 != 1)
  {
    v1 = 0x6165724165666173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564496567616D69;
  }
}

uint64_t sub_1D6B6EDB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B740A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B6EDDC(uint64_t a1)
{
  v2 = sub_1D6B72E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6EE18(uint64_t a1)
{
  v2 = sub_1D6B72E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B6EE54@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D6B722CC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1D6B6EEA0()
{
  v1 = 0x6564496F65646976;
  v2 = 0x73746365666665;
  if (*v0 != 2)
  {
    v2 = 0x6165724165666173;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_1D6B6EF2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B741C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B6EF54(uint64_t a1)
{
  v2 = sub_1D6B72EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6EF90(uint64_t a1)
{
  v2 = sub_1D6B72EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D6B6EFCC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6B72594(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D6B6F018(uint64_t a1)
{
  v2 = sub_1D6B72DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6F054(uint64_t a1)
{
  v2 = sub_1D6B72DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D6B6F090@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6B72970(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D6B6F0DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B6F140(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D6B6F18C(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

uint64_t sub_1D6B6F258()
{
  v1 = 0x6564496567616D69;
  v2 = 0x6F697469646E6F63;
  if (*v0 != 2)
  {
    v2 = 0x6165724165666173;
  }

  if (*v0)
  {
    v1 = 0x73746365666665;
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

uint64_t sub_1D6B6F2E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B73F2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B6F30C(uint64_t a1)
{
  v2 = sub_1D6B73090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6F348(uint64_t a1)
{
  v2 = sub_1D6B73090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B6F384@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D6B71C4C(a2, v8);
  if (!v2)
  {
    v5 = v12;
    a1[4] = v11;
    a1[5] = v5;
    a1[6] = v13[0];
    *(a1 + 105) = *(v13 + 9);
    v6 = v8[1];
    *a1 = v8[0];
    a1[1] = v6;
    result = *&v9;
    v7 = v10;
    a1[2] = v9;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1D6B6F3E0(uint64_t a1)
{
  v2 = sub_1D6B72FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6F41C(uint64_t a1)
{
  v2 = sub_1D6B72FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D6B6F458@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6B7208C(a2, v5);
  if (!v2)
  {
    return sub_1D6B72FB8(v5, a1);
  }

  return result;
}

uint64_t sub_1D6B6F4A0()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

void sub_1D6B6F4D4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D6B6F5A8(uint64_t a1)
{
  v2 = sub_1D6B7345C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6F5E4(uint64_t a1)
{
  v2 = sub_1D6B7345C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6B6F620(double *a1@<X8>, void *a2@<X0>, __n128 a3@<Q0>)
{
  v5 = sub_1D6B71A4C(a2, a3);
  if (!v3)
  {
    *a1 = v5;
    *(a1 + 1) = v6;
  }
}

uint64_t sub_1D6B6F64C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1702521203;
  if (v2 != 1)
  {
    v4 = 0x617053726F6C6F63;
    v3 = 0xEA00000000006563;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7465737361;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702521203;
  if (*a2 != 1)
  {
    v8 = 0x617053726F6C6F63;
    v7 = 0xEA00000000006563;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7465737361;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6B6F744()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6B6F7E0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6B6F868(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6B6F900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6B71730(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6B6F930(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  if (v2 != 1)
  {
    v5 = 0x617053726F6C6F63;
    v4 = 0xEA00000000006563;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465737361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6B6F988()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x617053726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465737361;
  }
}

unint64_t sub_1D6B6F9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B71730(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B6FA04(uint64_t a1)
{
  v2 = sub_1D6B73204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B6FA40(uint64_t a1)
{
  v2 = sub_1D6B73204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6B6FA7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_1D6B731A0(0, &qword_1EDF17330, MEMORY[0x1E69D7570], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v43 = &v36 - v5;
  v42 = sub_1D725C9DC();
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B733FC(0, &qword_1EDF03B10, sub_1D6B73204, &type metadata for LayeredMedia.ImageResource.CodingKeys);
  v44 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for LayeredMedia.ImageResource(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B73204();
  v17 = v45;
  sub_1D7264B0C();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v37 = v13;
    v38 = v8;
    v45 = v16;
    v18 = a1;
    v19 = v43;
    v21 = v41;
    v20 = v42;
    LOBYTE(v46) = 0;
    v22 = sub_1D72642BC();
    v23 = v45;
    *v45 = v22;
    v23[1] = v24;
    v47 = 1;
    sub_1D6B73258();
    sub_1D726431C();
    *(v23 + 1) = v46;
    LOBYTE(v46) = 2;
    sub_1D6B732AC(&qword_1EDF17338, MEMORY[0x1E69D7570], MEMORY[0x1E69D7578]);
    v25 = v20;
    v26 = v19;
    v27 = v44;
    sub_1D726421C();
    (*(v21 + 8))(v12, v27);
    v28 = v39;
    v29 = *(v39 + 48);
    if (v29(v19, 1, v25) == 1)
    {
      v30 = v38;
      (*(v28 + 104))(v38, *MEMORY[0x1E69D7568], v25);
      v31 = v29(v26, 1, v25);
      v32 = v40;
      v33 = v37;
      if (v31 != 1)
      {
        sub_1D6B732F4(v43, &qword_1EDF17330, MEMORY[0x1E69D7570], MEMORY[0x1E69E6720], sub_1D6B731A0);
      }
    }

    else
    {
      v30 = v38;
      (*(v28 + 32))(v38, v26, v25);
      v32 = v40;
      v33 = v37;
    }

    v34 = *(v33 + 24);
    v35 = v45;
    (*(v28 + 32))(v45 + v34, v30, v25);
    sub_1D610D094(v35, v32);
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_1D610D0F8(v35);
  }
}

uint64_t sub_1D6B6FF8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x706D2F6F65646976;
  v4 = 0xE900000000000034;
  if (v2 != 1)
  {
    v3 = 0x75712F6F65646976;
    v4 = 0xEF656D69746B6369;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x2D782F6F65646976;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB0000000076346DLL;
  }

  v7 = 0x706D2F6F65646976;
  v8 = 0xE900000000000034;
  if (*a2 != 1)
  {
    v7 = 0x75712F6F65646976;
    v8 = 0xEF656D69746B6369;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x2D782F6F65646976;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB0000000076346DLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6B700B4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6B70170(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6B70218(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6B702D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6B717C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6B70300(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000076346DLL;
  v4 = 0xE900000000000034;
  v5 = 0x706D2F6F65646976;
  if (v2 != 1)
  {
    v5 = 0x75712F6F65646976;
    v4 = 0xEF656D69746B6369;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x2D782F6F65646976;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6B703D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1702521203;
  if (v2 != 1)
  {
    v4 = 0x65707954656D696DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7465737361;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702521203;
  if (*a2 != 1)
  {
    v8 = 0x65707954656D696DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7465737361;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6B704C8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6B70560(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6B705E4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6B70678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6B7177C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6B706A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  if (v2 != 1)
  {
    v5 = 0x65707954656D696DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465737361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6B706FC()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x65707954656D696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465737361;
  }
}

unint64_t sub_1D6B7074C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B7177C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B70774(uint64_t a1)
{
  v2 = sub_1D6B73354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B707B0(uint64_t a1)
{
  v2 = sub_1D6B73354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B707EC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6B71814(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6B70834()
{
  v1 = 1702060386;
  v2 = 0x7365526567616D69;
  if (*v0 != 2)
  {
    v2 = 0x7365526F65646976;
  }

  if (*v0)
  {
    v1 = 0x73726579616CLL;
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

uint64_t sub_1D6B708BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B72C3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B708E4(uint64_t a1)
{
  v2 = sub_1D6B70D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B70920(uint64_t a1)
{
  v2 = sub_1D6B70D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LayeredMedia.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6B733FC(0, &qword_1EDF03B18, sub_1D6B70D88, &type metadata for LayeredMedia.CodingKeys);
  v24 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - v9;
  v11 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D6B70D88();
  sub_1D7264B0C();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    v34 = 0;
    sub_1D6B70DDC();
    sub_1D726431C();
    v41 = v37;
    *v42 = v38[0];
    *&v42[9] = *(v38 + 9);
    v39 = v35;
    v40 = v36;
    sub_1D5B58388(0, &qword_1EDF05080, &type metadata for LayeredMedia.Layer, MEMORY[0x1E69E62F8]);
    LOBYTE(v25[0]) = 1;
    sub_1D6B7121C(&qword_1EDF05078, &qword_1EDF05080, &type metadata for LayeredMedia.Layer, sub_1D6B70E30);
    sub_1D726431C();
    v23 = *&v28[0];
    sub_1D6B70EB4(0);
    LOBYTE(v25[0]) = 2;
    sub_1D6B70F98();
    sub_1D726427C();
    v22 = *&v28[0];
    sub_1D6B710E4(0);
    v32 = 3;
    sub_1D6B71170();
    sub_1D726427C();
    (*(v7 + 8))(v10, v24);
    v12 = v33;
    v14 = *v42;
    v13 = *&v42[16];
    v25[3] = *v42;
    v25[4] = *&v42[16];
    v16 = v40;
    v15 = v41;
    v25[1] = v40;
    v25[2] = v41;
    v17 = v39;
    v25[0] = v39;
    v19 = v22;
    v18 = v23;
    *&v26 = v23;
    *(&v26 + 1) = v22;
    v27 = v33;
    *(a2 + 96) = v33;
    *(a2 + 32) = v15;
    *(a2 + 48) = v14;
    *a2 = v17;
    *(a2 + 16) = v16;
    v20 = v26;
    *(a2 + 64) = v13;
    *(a2 + 80) = v20;
    sub_1D6B712FC(v25, v28);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v28[2] = v41;
    v28[3] = *v42;
    v28[4] = *&v42[16];
    v28[0] = v39;
    v28[1] = v40;
    v29 = v18;
    v30 = v19;
    v31 = v12;
    sub_1D6762EA0(v28);
  }
}

unint64_t sub_1D6B70D88()
{
  result = qword_1EDF121F0;
  if (!qword_1EDF121F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121F0);
  }

  return result;
}

unint64_t sub_1D6B70DDC()
{
  result = qword_1EDF12030;
  if (!qword_1EDF12030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12030);
  }

  return result;
}

unint64_t sub_1D6B70E30()
{
  result = qword_1EDF12090;
  if (!qword_1EDF12090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12090);
  }

  return result;
}

void sub_1D6B70EB4(uint64_t a1)
{
  if (!qword_1EDF056E0)
  {
    sub_1D6B731A0(255, &qword_1EDF050A0, type metadata accessor for LayeredMedia.ImageResource, MEMORY[0x1E69E62F8]);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF056E0);
    }
  }
}

uint64_t type metadata accessor for LayeredMedia.ImageResource(uint64_t a1)
{
  result = qword_1EDF121B0;
  if (!qword_1EDF121B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D6B70F98()
{
  result = qword_1EDF056D8;
  if (!qword_1EDF056D8)
  {
    sub_1D6B70EB4(255);
    sub_1D6B71018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF056D8);
  }

  return result;
}

unint64_t sub_1D6B71018()
{
  result = qword_1EDF05098;
  if (!qword_1EDF05098)
  {
    sub_1D6B731A0(255, &qword_1EDF050A0, type metadata accessor for LayeredMedia.ImageResource, MEMORY[0x1E69E62F8]);
    sub_1D6B732AC(&qword_1EDF121C0, type metadata accessor for LayeredMedia.ImageResource, &unk_1D732C8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05098);
  }

  return result;
}

void sub_1D6B710E4(uint64_t a1)
{
  if (!qword_1EDF056D0)
  {
    sub_1D5B58388(255, &qword_1EDF05090, &type metadata for LayeredMedia.VideoResource, MEMORY[0x1E69E62F8]);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF056D0);
    }
  }
}

unint64_t sub_1D6B71170()
{
  result = qword_1EDF056C8;
  if (!qword_1EDF056C8)
  {
    sub_1D6B710E4(255);
    sub_1D6B7121C(&qword_1EDF05088, &qword_1EDF05090, &type metadata for LayeredMedia.VideoResource, sub_1D6B712A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF056C8);
  }

  return result;
}

uint64_t sub_1D6B7121C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58388(255, a2, a3, MEMORY[0x1E69E62F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6B712A8()
{
  result = qword_1EDF120F8;
  if (!qword_1EDF120F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120F8);
  }

  return result;
}

uint64_t sub_1D6B71358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 57);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D6B713A4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = -a2 << 8;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6B7145C(uint64_t a1)
{
  result = sub_1D725C9DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22LayeredMediaConditionsVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6B71524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 57);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D6B71570(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 73) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = -a2 << 8;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6B715EC(uint64_t result, char a2)
{
  v2 = *(result + 72) & 1 | (a2 << 7);
  *(result + 56) = *(result + 56);
  *(result + 72) = v2;
  return result;
}

unint64_t sub_1D6B7162C()
{
  result = qword_1EC8929F8;
  if (!qword_1EC8929F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929F8);
  }

  return result;
}

unint64_t sub_1D6B71684()
{
  result = qword_1EDF121E0;
  if (!qword_1EDF121E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121E0);
  }

  return result;
}

unint64_t sub_1D6B716DC()
{
  result = qword_1EDF121E8;
  if (!qword_1EDF121E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121E8);
  }

  return result;
}

unint64_t sub_1D6B71730(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6B7177C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6B717C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6B71814@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D6B733FC(0, &qword_1EDF03B08, sub_1D6B73354, &type metadata for LayeredMedia.VideoResource.CodingKeys);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B73354();
  sub_1D7264B0C();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  v12 = v20;
  LOBYTE(v21) = 0;
  v14 = sub_1D72642BC();
  v16 = v15;
  v24 = 1;
  sub_1D6B73258();
  sub_1D726421C();
  if (v23)
  {
    v17 = 1.79769313e308;
  }

  else
  {
    v17 = v21;
  }

  if (v23)
  {
    v18 = 1.79769313e308;
  }

  else
  {
    v18 = v22;
  }

  v24 = 2;
  sub_1D6B733A8();
  sub_1D726421C();
  (*(v11 + 8))(v10, v6);
  v19 = LOBYTE(v21);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v12 = v14;
  *(v12 + 8) = v16;
  *(v12 + 16) = v17;
  *(v12 + 24) = v18;
  *(v12 + 32) = v19;
  return result;
}

double sub_1D6B71A4C(void *a1, __n128 a2)
{
  sub_1D6B733FC(0, &qword_1EDF03B00, sub_1D6B7345C, &type metadata for LayeredMedia.Size.CodingKeys);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B7345C();
  sub_1D7264B0C();
  if (!v2)
  {
    v13 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v3 = v14;
    v13 = 1;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void sub_1D6B71C4C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v25 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AF8, sub_1D6B73090, &type metadata for LayeredMedia.Layer.ImageLayer.CodingKeys);
  v51 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B73090();
  sub_1D7264B0C();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v25;
    LOBYTE(v29) = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v24 = v11;
    LOBYTE(v26) = 1;
    sub_1D6B72EA8();
    sub_1D726427C();
    v20 = v29;
    v22 = v31;
    v23 = v30;
    v21 = v32;
    v44 = 2;
    sub_1D6B730E4();
    sub_1D726427C();
    *(v50 + 7) = v45;
    *(&v50[1] + 7) = v46;
    *(&v50[2] + 7) = v47;
    *(&v50[3] + 7) = v48;
    v41 = 3;
    sub_1D5B57870();
    sub_1D726427C();
    (*(v6 + 8))(v9, v51);
    *(&v28[1] + 9) = v50[1];
    *(&v28[2] + 9) = v50[2];
    *(&v28[3] + 9) = v50[3];
    v51 = v42;
    v14 = v43;
    v49 = v43;
    v15 = v24;
    *&v26 = v24;
    *(&v26 + 1) = v13;
    v16 = v20;
    *&v27 = v20;
    *(&v27 + 1) = v23;
    *&v28[0] = v22;
    BYTE8(v28[0]) = v21;
    *(v28 + 9) = v50[0];
    *(&v28[4] + 1) = *(&v50[3] + 15);
    *&v28[5] = v42;
    BYTE8(v28[5]) = v43;
    sub_1D6B73138(&v26, &v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = v50[1];
    v37 = v50[2];
    *v38 = v50[3];
    v29 = v15;
    v30 = v13;
    v31 = v16;
    v32 = v23;
    v33 = v22;
    v34 = v21;
    v35 = v50[0];
    *&v38[15] = *(&v50[3] + 15);
    v39 = v51;
    v40 = v14;
    sub_1D6B73170(&v29);
    v17 = v28[3];
    v10[4] = v28[2];
    v10[5] = v17;
    v10[6] = v28[4];
    *(v10 + 105) = *(&v28[4] + 9);
    v18 = v27;
    *v10 = v26;
    v10[1] = v18;
    v19 = v28[1];
    v10[2] = v28[0];
    v10[3] = v19;
  }
}

_OWORD *sub_1D6B7208C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AF0, sub_1D6B72FE8, &type metadata for LayeredMedia.Layer.CodingKeys);
  v6 = v5;
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B72FE8();
  sub_1D7264B0C();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v14;
  v11 = v27;
  sub_1D6B7303C();
  sub_1D726431C();
  sub_1D5B68374(a1, v24);
  sub_1D6B71C4C(v24, v25);
  v19 = v25[4];
  v20 = v25[5];
  v21[0] = v26[0];
  *(v21 + 9) = *(v26 + 9);
  v15 = v25[0];
  v16 = v25[1];
  v17 = v25[2];
  v18 = v25[3];
  (*(v10 + 8))(v9, v6);
  v22[4] = v19;
  v22[5] = v20;
  v23[0] = v21[0];
  *(v23 + 9) = *(v21 + 9);
  v22[0] = v15;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  nullsub_1();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6B72FB8(v22, v11);
}

void sub_1D6B722CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AE8, sub_1D6B72E54, &type metadata for LayeredMedia.BaseLayer.ImageLayer.CodingKeys);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B72E54();
  sub_1D7264B0C();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v7;
    v12 = v23;
    LOBYTE(v25) = 0;
    v13 = sub_1D72642BC();
    v15 = v14;
    v16 = v13;
    v29[0] = 1;
    sub_1D6B72EA8();
    sub_1D726427C();
    v21 = v26;
    v22 = v25;
    v20 = v27;
    HIDWORD(v19) = v28;
    v30 = 2;
    sub_1D5B57870();
    sub_1D726427C();
    (*(v11 + 8))(v10, v6);
    v17 = v25;
    v24 = v26;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *v12 = v16;
    *(v12 + 8) = v15;
    v18 = v21;
    *(v12 + 16) = v22;
    *(v12 + 24) = v18;
    *(v12 + 32) = v20;
    *(v12 + 40) = BYTE4(v19);
    *(v12 + 41) = *v29;
    *(v12 + 44) = *&v29[3];
    *(v12 + 48) = v17;
    *(v12 + 56) = v24;
  }
}

void sub_1D6B72594(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AE0, sub_1D6B72EFC, &type metadata for LayeredMedia.BaseLayer.VideoLayer.CodingKeys);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B72EFC();
  sub_1D7264B0C();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v7;
    LOBYTE(v38) = 0;
    v12 = v6;
    v13 = sub_1D72642BC();
    v15 = v14;
    v33 = v13;
    LOBYTE(v38) = 1;
    v16 = sub_1D72642BC();
    v18 = v17;
    v32 = v16;
    LOBYTE(v34) = 2;
    sub_1D6B72EA8();
    sub_1D726427C();
    v29 = v38;
    v28 = v39;
    v31 = v40;
    v30 = v41;
    v49 = 3;
    sub_1D5B57870();
    sub_1D726427C();
    (*(v11 + 8))(v10, v12);
    v27 = v50;
    LOBYTE(v12) = v51;
    v52 = v51;
    v19 = v33;
    *&v34 = v33;
    *(&v34 + 1) = v15;
    v20 = v32;
    *&v35 = v32;
    *(&v35 + 1) = v18;
    v21 = v29;
    v22 = v28;
    *&v36 = v29;
    *(&v36 + 1) = v28;
    *v37 = v31;
    v37[8] = v30;
    *&v37[9] = v53[0];
    *&v37[12] = *(v53 + 3);
    *&v37[16] = v50;
    v37[24] = v51;
    sub_1D6B72F50(&v34, &v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = v19;
    v39 = v15;
    v40 = v20;
    v41 = v18;
    v42 = v21;
    v43 = v22;
    v44 = v31;
    v45 = v30;
    *v46 = v53[0];
    *&v46[3] = *(v53 + 3);
    v47 = v27;
    v48 = v12;
    sub_1D6B72F88(&v38);
    v23 = *v37;
    v24 = v54;
    v54[2] = v36;
    v24[3] = v23;
    *(v24 + 57) = *&v37[9];
    v25 = v35;
    *v24 = v34;
    v24[1] = v25;
  }
}

uint64_t sub_1D6B72970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1D6B733FC(0, &qword_1EDF03AD8, sub_1D6B72DAC, &type metadata for LayeredMedia.BaseLayer.CodingKeys);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B72DAC();
  sub_1D7264B0C();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v27;
  sub_1D6B72E00();
  v12 = v10;
  sub_1D726431C();
  if (v41)
  {
    sub_1D5B68374(a1, v28);
    sub_1D6B72594(v28, v34);
    v26 = v34[1];
    v25 = v34[0];
    v24 = v35;
    v14 = v6;
    v23 = v36;
    v15 = v37;
    v16 = v38;
    v17 = v39;
    v18 = v40;
    (*(v7 + 8))(v10, v14);
    v19 = v18 & 1 | 0x80;
    v12 = v17;
    v20 = v23;
  }

  else
  {
    sub_1D5B68374(a1, v28);
    sub_1D6B722CC(v28, v29);
    v26 = v29[1];
    v25 = v29[0];
    v20 = v31;
    v24 = v30;
    v21 = v6;
    v15 = v32;
    v16 = v33;
    (*(v7 + 8))(v10, v21);
    v19 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v22 = v26;
  *v11 = v25;
  *(v11 + 16) = v22;
  *(v11 + 32) = v24;
  *(v11 + 40) = v20;
  *(v11 + 48) = v15;
  *(v11 + 56) = v16;
  *(v11 + 64) = v12;
  *(v11 + 72) = v19;
  return result;
}

uint64_t sub_1D6B72C3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726579616CLL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365526567616D69 && a2 == 0xEE0073656372756FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365526F65646976 && a2 == 0xEE0073656372756FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t sub_1D6B72DAC()
{
  result = qword_1EDF12048;
  if (!qword_1EDF12048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12048);
  }

  return result;
}

unint64_t sub_1D6B72E00()
{
  result = qword_1EDF12050;
  if (!qword_1EDF12050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12050);
  }

  return result;
}

unint64_t sub_1D6B72E54()
{
  result = qword_1EDF12088;
  if (!qword_1EDF12088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12088);
  }

  return result;
}

unint64_t sub_1D6B72EA8()
{
  result = qword_1EDF0F838;
  if (!qword_1EDF0F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F838);
  }

  return result;
}

unint64_t sub_1D6B72EFC()
{
  result = qword_1EDF12070;
  if (!qword_1EDF12070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12070);
  }

  return result;
}

_OWORD *sub_1D6B72FB8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  a2[2] = a1[2];
  a2[3] = v4;
  *a2 = v2;
  a2[1] = v3;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  *(a2 + 105) = *(a1 + 105);
  a2[5] = v6;
  a2[6] = v7;
  a2[4] = v5;
  return a2;
}

unint64_t sub_1D6B72FE8()
{
  result = qword_1EDF120A8;
  if (!qword_1EDF120A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120A8);
  }

  return result;
}

unint64_t sub_1D6B7303C()
{
  result = qword_1EDF120B0;
  if (!qword_1EDF120B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120B0);
  }

  return result;
}

unint64_t sub_1D6B73090()
{
  result = qword_1EDF120D0;
  if (!qword_1EDF120D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120D0);
  }

  return result;
}

unint64_t sub_1D6B730E4()
{
  result = qword_1EDF0D998;
  if (!qword_1EDF0D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D998);
  }

  return result;
}

void sub_1D6B731A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6B73204()
{
  result = qword_1EDF121D8;
  if (!qword_1EDF121D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121D8);
  }

  return result;
}

unint64_t sub_1D6B73258()
{
  result = qword_1EDF120D8;
  if (!qword_1EDF120D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120D8);
  }

  return result;
}

uint64_t sub_1D6B732AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6B732F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D6B73354()
{
  result = qword_1EDF12120[0];
  if (!qword_1EDF12120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF12120);
  }

  return result;
}

unint64_t sub_1D6B733A8()
{
  result = qword_1EDF12100;
  if (!qword_1EDF12100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12100);
  }

  return result;
}

void sub_1D6B733FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D726435C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D6B7345C()
{
  result = qword_1EDF120F0;
  if (!qword_1EDF120F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120F0);
  }

  return result;
}

unint64_t sub_1D6B73594()
{
  result = qword_1EC892A08;
  if (!qword_1EC892A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A08);
  }

  return result;
}

unint64_t sub_1D6B735EC()
{
  result = qword_1EC892A10;
  if (!qword_1EC892A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A10);
  }

  return result;
}

unint64_t sub_1D6B73644()
{
  result = qword_1EC892A18;
  if (!qword_1EC892A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A18);
  }

  return result;
}

unint64_t sub_1D6B7369C()
{
  result = qword_1EC892A20;
  if (!qword_1EC892A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A20);
  }

  return result;
}

unint64_t sub_1D6B736F4()
{
  result = qword_1EC892A28;
  if (!qword_1EC892A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A28);
  }

  return result;
}

unint64_t sub_1D6B7374C()
{
  result = qword_1EC892A30;
  if (!qword_1EC892A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A30);
  }

  return result;
}

unint64_t sub_1D6B737A4()
{
  result = qword_1EC892A38;
  if (!qword_1EC892A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A38);
  }

  return result;
}

unint64_t sub_1D6B737FC()
{
  result = qword_1EC892A40;
  if (!qword_1EC892A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A40);
  }

  return result;
}

unint64_t sub_1D6B73854()
{
  result = qword_1EC892A48;
  if (!qword_1EC892A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A48);
  }

  return result;
}

unint64_t sub_1D6B738AC()
{
  result = qword_1EC892A50;
  if (!qword_1EC892A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A50);
  }

  return result;
}

unint64_t sub_1D6B73904()
{
  result = qword_1EC892A58;
  if (!qword_1EC892A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A58);
  }

  return result;
}

unint64_t sub_1D6B7395C()
{
  result = qword_1EDF120E0;
  if (!qword_1EDF120E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120E0);
  }

  return result;
}

unint64_t sub_1D6B739B4()
{
  result = qword_1EDF120E8;
  if (!qword_1EDF120E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120E8);
  }

  return result;
}

unint64_t sub_1D6B73A0C()
{
  result = qword_1EDF12110;
  if (!qword_1EDF12110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12110);
  }

  return result;
}

unint64_t sub_1D6B73A64()
{
  result = qword_1EDF12118;
  if (!qword_1EDF12118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12118);
  }

  return result;
}

unint64_t sub_1D6B73ABC()
{
  result = qword_1EDF121C8;
  if (!qword_1EDF121C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121C8);
  }

  return result;
}

unint64_t sub_1D6B73B14()
{
  result = qword_1EDF121D0;
  if (!qword_1EDF121D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF121D0);
  }

  return result;
}

unint64_t sub_1D6B73B6C()
{
  result = qword_1EDF120C0;
  if (!qword_1EDF120C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120C0);
  }

  return result;
}

unint64_t sub_1D6B73BC4()
{
  result = qword_1EDF120C8;
  if (!qword_1EDF120C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120C8);
  }

  return result;
}

unint64_t sub_1D6B73C1C()
{
  result = qword_1EDF12098;
  if (!qword_1EDF12098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12098);
  }

  return result;
}

unint64_t sub_1D6B73C74()
{
  result = qword_1EDF120A0;
  if (!qword_1EDF120A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120A0);
  }

  return result;
}

unint64_t sub_1D6B73CCC()
{
  result = qword_1EDF12060;
  if (!qword_1EDF12060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12060);
  }

  return result;
}

unint64_t sub_1D6B73D24()
{
  result = qword_1EDF12068;
  if (!qword_1EDF12068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12068);
  }

  return result;
}

unint64_t sub_1D6B73D7C()
{
  result = qword_1EDF12078;
  if (!qword_1EDF12078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12078);
  }

  return result;
}

unint64_t sub_1D6B73DD4()
{
  result = qword_1EDF12080;
  if (!qword_1EDF12080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12080);
  }

  return result;
}

unint64_t sub_1D6B73E2C()
{
  result = qword_1EDF12038;
  if (!qword_1EDF12038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12038);
  }

  return result;
}

unint64_t sub_1D6B73E84()
{
  result = qword_1EDF12040;
  if (!qword_1EDF12040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12040);
  }

  return result;
}

unint64_t sub_1D6B73ED8()
{
  result = qword_1EDF12058;
  if (!qword_1EDF12058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12058);
  }

  return result;
}

uint64_t sub_1D6B73F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496567616D69 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746365666665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6B740A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496567616D69 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746365666665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6B741C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496F65646976 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73E73F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746365666665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t sub_1D6B74334()
{
  result = qword_1EDF120B8;
  if (!qword_1EDF120B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF120B8);
  }

  return result;
}

unint64_t sub_1D6B74388()
{
  result = qword_1EDF12108;
  if (!qword_1EDF12108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12108);
  }

  return result;
}

uint64_t type metadata accessor for FormatLayoutViewRoute(uint64_t a1)
{
  result = qword_1EC892A60;
  if (!qword_1EC892A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6B74434(uint64_t a1)
{
  type metadata accessor for FeedItem(319);
  if (v1 <= 0x3F)
  {
    sub_1D61CCC84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D6B744A8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  *&v96 = a1;
  v2 = sub_1D72585BC();
  v94 = *(v2 - 8);
  *&v95 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v91 - v8;
  sub_1D5C4E168(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v91 - v21;
  sub_1D5C8E028(0);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v62 = *(v26 + 16);
        v63 = *(v26 + 24);
        v64 = v26;

        v65 = sub_1D5F9D31C(v96, v62, v63);

        v66 = swift_allocObject();
        v67 = swift_allocObject();
        v68 = MEMORY[0x1E69E7CC0];
        *(v67 + 16) = v65 & 1;
        *(v67 + 24) = v68;
        *(v66 + 16) = v64;
        *(v66 + 24) = v67;
        *v97 = v66 | 0x8000000000000000;
LABEL_28:

        return;
      }

      if (v29 == 1)
      {
        v40 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v102[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v102[1] = v40;
        v103 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v41 = v26;
        sub_1D66665DC(v102, &v99);
        sub_1D6B7D36C(v96, &v99);
        sub_1D6666638(v102);
        v42 = v100;
        v95 = v101;
        v96 = v99;
        v34 = swift_allocObject();
        v43 = swift_allocObject();
        v44 = v95;
        *(v43 + 16) = v96;
        *(v43 + 32) = v42;
        *(v43 + 40) = v44;
        v36 = v43 | 0x1000000000000000;
        goto LABEL_24;
      }

      v92 = v26;
      v69 = swift_projectBox();
      sub_1D5D2878C(v69, v28, sub_1D5C8E028);
      sub_1D5F9D418(v22);
      v70 = swift_allocObject();
      *&v96 = swift_allocBox();
      v72 = v71;
      v73 = *(v93 + 32);
      v73(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v73(v72, v18, v15);
      *&v72[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v74 = v96 | 0x2000000000000000;
      *(v70 + 16) = v92;
      *(v70 + 24) = v74;
      v75 = v70 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5F9D460(v96, v31, v30);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v97 = v34 | 0x8000000000000000;
          goto LABEL_28;
        }

        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v41 = v26;

        v78 = sub_1D5F9D564(v96, v77, v76);

        v34 = swift_allocObject();
        v79 = swift_allocObject();
        v80 = MEMORY[0x1E69E7CC0];
        *(v79 + 16) = v78;
        *(v79 + 24) = v80;
        v36 = v79 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v41;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v54 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v57 = v26;

        v58 = sub_1D5F9D660(v96, v55, v54, v56);
        v60 = v59;

        v34 = swift_allocObject();
        v61 = swift_allocObject();
        *(v61 + 16) = v58;
        *(v61 + 24) = v60;
        *(v61 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v61 | 0x5000000000000000;
        *(v34 + 16) = v57;
        goto LABEL_25;
      }

      v92 = v26;
      v81 = swift_projectBox();
      sub_1D5D2878C(v81, v14, sub_1D5C4E168);
      sub_1D5F9D780(v9);
      v82 = swift_allocObject();
      v83 = swift_allocBox();
      v85 = v84;
      v86 = *(v94 + 32);
      v87 = v9;
      v88 = v95;
      v86(v5, v87, v95);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v86(v85, v5, v88);
      *&v85[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v82 + 16) = v92;
      *(v82 + 24) = v83 | 0x6000000000000000;
      v75 = v82 | 0x8000000000000000;
    }

    *v97 = v75;
    goto LABEL_28;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v98;
      v39 = swift_allocObject();

      sub_1D5FA6CB0(v96, v38, (v39 + 16));

      if (v37)
      {
        goto LABEL_17;
      }

      *v97 = v39 | 0x7000000000000000;
      return;
    }

LABEL_18:
    *v97 = v26;

    return;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v45 = v98;
  v46 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v47 = swift_allocObject();
  v48 = v47;
  if (v46 >> 61 == 3)
  {
    v49 = v46 & 0x1FFFFFFFFFFFFFFFLL;
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    v52 = *(v49 + 32);
    v53 = *(v49 + 40);

    sub_1D5F58038(v50, v51, v52, v53);
    sub_1D5F501D4(v96, v50, v51, v52, v53, &v99);
    if (v45)
    {
      sub_1D5F57FEC(v50, v51, v52, v53);

LABEL_17:
      swift_deallocUninitializedObject();
      return;
    }

    v89 = v99;
    v90 = swift_allocObject();
    *(v90 + 16) = v50;
    *(v90 + 24) = v51;
    *(v90 + 32) = v52;
    *(v90 + 40) = v53;
    *(v90 + 48) = v89;
    *(v48 + 16) = v90 | 0x8000000000000000;
  }

  else
  {
    *(v47 + 16) = v46;
  }

  *v97 = v48 | 0xC000000000000000;
}

void sub_1D6B74D28(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  *&v96 = a1;
  v2 = sub_1D72585BC();
  v94 = *(v2 - 8);
  *&v95 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v91 - v8;
  sub_1D5C4E168(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v91 - v21;
  sub_1D5C8E028(0);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v62 = *(v26 + 16);
        v63 = *(v26 + 24);
        v64 = v26;

        v65 = sub_1D5F9DA9C(v96, v62, v63);

        v66 = swift_allocObject();
        v67 = swift_allocObject();
        v68 = MEMORY[0x1E69E7CC0];
        *(v67 + 16) = v65 & 1;
        *(v67 + 24) = v68;
        *(v66 + 16) = v64;
        *(v66 + 24) = v67;
        *v97 = v66 | 0x8000000000000000;
LABEL_28:

        return;
      }

      if (v29 == 1)
      {
        v40 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v102[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v102[1] = v40;
        v103 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v41 = v26;
        sub_1D66665DC(v102, &v99);
        sub_1D6B7D490(v96, &v99);
        sub_1D6666638(v102);
        v42 = v100;
        v95 = v101;
        v96 = v99;
        v34 = swift_allocObject();
        v43 = swift_allocObject();
        v44 = v95;
        *(v43 + 16) = v96;
        *(v43 + 32) = v42;
        *(v43 + 40) = v44;
        v36 = v43 | 0x1000000000000000;
        goto LABEL_24;
      }

      v92 = v26;
      v69 = swift_projectBox();
      sub_1D5D2878C(v69, v28, sub_1D5C8E028);
      sub_1D5F9DBB0(v22);
      v70 = swift_allocObject();
      *&v96 = swift_allocBox();
      v72 = v71;
      v73 = *(v93 + 32);
      v73(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v73(v72, v18, v15);
      *&v72[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v74 = v96 | 0x2000000000000000;
      *(v70 + 16) = v92;
      *(v70 + 24) = v74;
      v75 = v70 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5F9DBF8(v96, v31, v30);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v97 = v34 | 0x8000000000000000;
          goto LABEL_28;
        }

        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v41 = v26;

        v78 = sub_1D5F9DD0C(v96, v77, v76);

        v34 = swift_allocObject();
        v79 = swift_allocObject();
        v80 = MEMORY[0x1E69E7CC0];
        *(v79 + 16) = v78;
        *(v79 + 24) = v80;
        v36 = v79 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v41;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v54 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v57 = v26;

        v58 = sub_1D5F9DE20(v96, v55, v54, v56);
        v60 = v59;

        v34 = swift_allocObject();
        v61 = swift_allocObject();
        *(v61 + 16) = v58;
        *(v61 + 24) = v60;
        *(v61 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v61 | 0x5000000000000000;
        *(v34 + 16) = v57;
        goto LABEL_25;
      }

      v92 = v26;
      v81 = swift_projectBox();
      sub_1D5D2878C(v81, v14, sub_1D5C4E168);
      sub_1D5F9DF50(v9);
      v82 = swift_allocObject();
      v83 = swift_allocBox();
      v85 = v84;
      v86 = *(v94 + 32);
      v87 = v9;
      v88 = v95;
      v86(v5, v87, v95);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v86(v85, v5, v88);
      *&v85[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v82 + 16) = v92;
      *(v82 + 24) = v83 | 0x6000000000000000;
      v75 = v82 | 0x8000000000000000;
    }

    *v97 = v75;
    goto LABEL_28;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v98;
      v39 = swift_allocObject();

      sub_1D5FA74A4(v96, v38, (v39 + 16));

      if (v37)
      {
        goto LABEL_17;
      }

      *v97 = v39 | 0x7000000000000000;
      return;
    }

LABEL_18:
    *v97 = v26;

    return;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v45 = v98;
  v46 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v47 = swift_allocObject();
  v48 = v47;
  if (v46 >> 61 == 3)
  {
    v49 = v46 & 0x1FFFFFFFFFFFFFFFLL;
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    v52 = *(v49 + 32);
    v53 = *(v49 + 40);

    sub_1D5F58038(v50, v51, v52, v53);
    sub_1D5F5022C(v96, v50, v51, v52, v53, &v99);
    if (v45)
    {
      sub_1D5F57FEC(v50, v51, v52, v53);

LABEL_17:
      swift_deallocUninitializedObject();
      return;
    }

    v89 = v99;
    v90 = swift_allocObject();
    *(v90 + 16) = v50;
    *(v90 + 24) = v51;
    *(v90 + 32) = v52;
    *(v90 + 40) = v53;
    *(v90 + 48) = v89;
    *(v48 + 16) = v90 | 0x8000000000000000;
  }

  else
  {
    *(v47 + 16) = v46;
  }

  *v97 = v48 | 0xC000000000000000;
}

void sub_1D6B755A8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  *&v96 = a1;
  v2 = sub_1D72585BC();
  v94 = *(v2 - 8);
  *&v95 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v91 - v8;
  sub_1D5C4E168(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v91 - v21;
  sub_1D5C8E028(0);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v62 = *(v26 + 16);
        v63 = *(v26 + 24);
        v64 = v26;

        v65 = sub_1D5F9E298(v96, v62, v63);

        v66 = swift_allocObject();
        v67 = swift_allocObject();
        v68 = MEMORY[0x1E69E7CC0];
        *(v67 + 16) = v65 & 1;
        *(v67 + 24) = v68;
        *(v66 + 16) = v64;
        *(v66 + 24) = v67;
        *v97 = v66 | 0x8000000000000000;
LABEL_28:

        return;
      }

      if (v29 == 1)
      {
        v40 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v102[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v102[1] = v40;
        v103 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v41 = v26;
        sub_1D66665DC(v102, &v99);
        sub_1D6B7D5C4(v96, &v99);
        sub_1D6666638(v102);
        v42 = v100;
        v95 = v101;
        v96 = v99;
        v34 = swift_allocObject();
        v43 = swift_allocObject();
        v44 = v95;
        *(v43 + 16) = v96;
        *(v43 + 32) = v42;
        *(v43 + 40) = v44;
        v36 = v43 | 0x1000000000000000;
        goto LABEL_24;
      }

      v92 = v26;
      v69 = swift_projectBox();
      sub_1D5D2878C(v69, v28, sub_1D5C8E028);
      sub_1D5F9E394(v22);
      v70 = swift_allocObject();
      *&v96 = swift_allocBox();
      v72 = v71;
      v73 = *(v93 + 32);
      v73(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v73(v72, v18, v15);
      *&v72[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v74 = v96 | 0x2000000000000000;
      *(v70 + 16) = v92;
      *(v70 + 24) = v74;
      v75 = v70 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5F9E3DC(v96, v31, v30);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v97 = v34 | 0x8000000000000000;
          goto LABEL_28;
        }

        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v41 = v26;

        v78 = sub_1D5F9E4E0(v96, v77, v76);

        v34 = swift_allocObject();
        v79 = swift_allocObject();
        v80 = MEMORY[0x1E69E7CC0];
        *(v79 + 16) = v78;
        *(v79 + 24) = v80;
        v36 = v79 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v41;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v54 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v57 = v26;

        v58 = sub_1D5F9E5DC(v96, v55, v54, v56);
        v60 = v59;

        v34 = swift_allocObject();
        v61 = swift_allocObject();
        *(v61 + 16) = v58;
        *(v61 + 24) = v60;
        *(v61 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v61 | 0x5000000000000000;
        *(v34 + 16) = v57;
        goto LABEL_25;
      }

      v92 = v26;
      v81 = swift_projectBox();
      sub_1D5D2878C(v81, v14, sub_1D5C4E168);
      sub_1D5F9E6FC(v9);
      v82 = swift_allocObject();
      v83 = swift_allocBox();
      v85 = v84;
      v86 = *(v94 + 32);
      v87 = v9;
      v88 = v95;
      v86(v5, v87, v95);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v86(v85, v5, v88);
      *&v85[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v82 + 16) = v92;
      *(v82 + 24) = v83 | 0x6000000000000000;
      v75 = v82 | 0x8000000000000000;
    }

    *v97 = v75;
    goto LABEL_28;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v98;
      v39 = swift_allocObject();

      sub_1D5FA7DC4(v96, v38, (v39 + 16));

      if (v37)
      {
        goto LABEL_17;
      }

      *v97 = v39 | 0x7000000000000000;
      return;
    }

LABEL_18:
    *v97 = v26;

    return;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v45 = v98;
  v46 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v47 = swift_allocObject();
  v48 = v47;
  if (v46 >> 61 == 3)
  {
    v49 = v46 & 0x1FFFFFFFFFFFFFFFLL;
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    v52 = *(v49 + 32);
    v53 = *(v49 + 40);

    sub_1D5F58038(v50, v51, v52, v53);
    sub_1D5F506C0(v96, v50, v51, v52, v53, &v99);
    if (v45)
    {
      sub_1D5F57FEC(v50, v51, v52, v53);

LABEL_17:
      swift_deallocUninitializedObject();
      return;
    }

    v89 = v99;
    v90 = swift_allocObject();
    *(v90 + 16) = v50;
    *(v90 + 24) = v51;
    *(v90 + 32) = v52;
    *(v90 + 40) = v53;
    *(v90 + 48) = v89;
    *(v48 + 16) = v90 | 0x8000000000000000;
  }

  else
  {
    *(v47 + 16) = v46;
  }

  *v97 = v48 | 0xC000000000000000;
}

void sub_1D6B75E28(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  *&v96 = a1;
  v2 = sub_1D72585BC();
  v94 = *(v2 - 8);
  *&v95 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v91 - v8;
  sub_1D5C4E168(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v91 - v21;
  sub_1D5C8E028(0);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v62 = *(v26 + 16);
        v63 = *(v26 + 24);
        v64 = v26;

        v65 = sub_1D5F9F81C(v96, v62, v63);

        v66 = swift_allocObject();
        v67 = swift_allocObject();
        v68 = MEMORY[0x1E69E7CC0];
        *(v67 + 16) = v65 & 1;
        *(v67 + 24) = v68;
        *(v66 + 16) = v64;
        *(v66 + 24) = v67;
        *v97 = v66 | 0x8000000000000000;
LABEL_28:

        return;
      }

      if (v29 == 1)
      {
        v40 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v102[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v102[1] = v40;
        v103 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v41 = v26;
        sub_1D66665DC(v102, &v99);
        sub_1D6B7D6E8(&v99);
        sub_1D6666638(v102);
        v42 = v100;
        v95 = v101;
        v96 = v99;
        v34 = swift_allocObject();
        v43 = swift_allocObject();
        v44 = v95;
        *(v43 + 16) = v96;
        *(v43 + 32) = v42;
        *(v43 + 40) = v44;
        v36 = v43 | 0x1000000000000000;
        goto LABEL_24;
      }

      v92 = v26;
      v69 = swift_projectBox();
      sub_1D5D2878C(v69, v28, sub_1D5C8E028);
      sub_1D5F9F8F0(v22);
      v70 = swift_allocObject();
      *&v96 = swift_allocBox();
      v72 = v71;
      v73 = *(v93 + 32);
      v73(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v73(v72, v18, v15);
      *&v72[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v74 = v96 | 0x2000000000000000;
      *(v70 + 16) = v92;
      *(v70 + 24) = v74;
      v75 = v70 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5F9F938(v30, v96, v31);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v97 = v34 | 0x8000000000000000;
          goto LABEL_28;
        }

        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v41 = v26;

        v78 = sub_1D5F9FA0C(v96, v77, v76);

        v34 = swift_allocObject();
        v79 = swift_allocObject();
        v80 = MEMORY[0x1E69E7CC0];
        *(v79 + 16) = v78;
        *(v79 + 24) = v80;
        v36 = v79 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v41;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v54 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v57 = v26;

        v58 = sub_1D5F9FAE0(v96, v55, v54, v56);
        v60 = v59;

        v34 = swift_allocObject();
        v61 = swift_allocObject();
        *(v61 + 16) = v58;
        *(v61 + 24) = v60;
        *(v61 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v61 | 0x5000000000000000;
        *(v34 + 16) = v57;
        goto LABEL_25;
      }

      v92 = v26;
      v81 = swift_projectBox();
      sub_1D5D2878C(v81, v14, sub_1D5C4E168);
      sub_1D5F9FBD0(v9);
      v82 = swift_allocObject();
      v83 = swift_allocBox();
      v85 = v84;
      v86 = *(v94 + 32);
      v87 = v9;
      v88 = v95;
      v86(v5, v87, v95);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v86(v85, v5, v88);
      *&v85[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v82 + 16) = v92;
      *(v82 + 24) = v83 | 0x6000000000000000;
      v75 = v82 | 0x8000000000000000;
    }

    *v97 = v75;
    goto LABEL_28;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v98;
      v39 = swift_allocObject();

      sub_1D5FA85A4(v96, v38, (v39 + 16));

      if (v37)
      {
        goto LABEL_17;
      }

      *v97 = v39 | 0x7000000000000000;
      return;
    }

LABEL_18:
    *v97 = v26;

    return;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v45 = v98;
  v46 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v47 = swift_allocObject();
  v48 = v47;
  if (v46 >> 61 == 3)
  {
    v49 = v46 & 0x1FFFFFFFFFFFFFFFLL;
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    v52 = *(v49 + 32);
    v53 = *(v49 + 40);

    sub_1D5F58038(v50, v51, v52, v53);
    sub_1D5F50C20(v96, v50, v51, v52, v53, &v99);
    if (v45)
    {
      sub_1D5F57FEC(v50, v51, v52, v53);

LABEL_17:
      swift_deallocUninitializedObject();
      return;
    }

    v89 = v99;
    v90 = swift_allocObject();
    *(v90 + 16) = v50;
    *(v90 + 24) = v51;
    *(v90 + 32) = v52;
    *(v90 + 40) = v53;
    *(v90 + 48) = v89;
    *(v48 + 16) = v90 | 0x8000000000000000;
  }

  else
  {
    *(v47 + 16) = v46;
  }

  *v97 = v48 | 0xC000000000000000;
}

void sub_1D6B766A8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  *&v96 = a1;
  v2 = sub_1D72585BC();
  v94 = *(v2 - 8);
  *&v95 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v91 - v8;
  sub_1D5C4E168(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v91 - v21;
  sub_1D5C8E028(0);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v62 = *(v26 + 16);
        v63 = *(v26 + 24);
        v64 = v26;

        v65 = sub_1D5FA0108(v96, v62, v63);

        v66 = swift_allocObject();
        v67 = swift_allocObject();
        v68 = MEMORY[0x1E69E7CC0];
        *(v67 + 16) = v65 & 1;
        *(v67 + 24) = v68;
        *(v66 + 16) = v64;
        *(v66 + 24) = v67;
        *v97 = v66 | 0x8000000000000000;
LABEL_28:

        return;
      }

      if (v29 == 1)
      {
        v40 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v102[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v102[1] = v40;
        v103 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v41 = v26;
        sub_1D66665DC(v102, &v99);
        sub_1D6B7D7DC(&v99);
        sub_1D6666638(v102);
        v42 = v100;
        v95 = v101;
        v96 = v99;
        v34 = swift_allocObject();
        v43 = swift_allocObject();
        v44 = v95;
        *(v43 + 16) = v96;
        *(v43 + 32) = v42;
        *(v43 + 40) = v44;
        v36 = v43 | 0x1000000000000000;
        goto LABEL_24;
      }

      v92 = v26;
      v69 = swift_projectBox();
      sub_1D5D2878C(v69, v28, sub_1D5C8E028);
      sub_1D5FA0200(v22);
      v70 = swift_allocObject();
      *&v96 = swift_allocBox();
      v72 = v71;
      v73 = *(v93 + 32);
      v73(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v73(v72, v18, v15);
      *&v72[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v74 = v96 | 0x2000000000000000;
      *(v70 + 16) = v92;
      *(v70 + 24) = v74;
      v75 = v70 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5FA0248(v30, v96, v31);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v97 = v34 | 0x8000000000000000;
          goto LABEL_28;
        }

        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v41 = v26;

        v78 = sub_1D5FA0348(v96, v77, v76);

        v34 = swift_allocObject();
        v79 = swift_allocObject();
        v80 = MEMORY[0x1E69E7CC0];
        *(v79 + 16) = v78;
        *(v79 + 24) = v80;
        v36 = v79 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v41;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v54 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v57 = v26;

        v58 = sub_1D5FA0440(v96, v55, v54, v56);
        v60 = v59;

        v34 = swift_allocObject();
        v61 = swift_allocObject();
        *(v61 + 16) = v58;
        *(v61 + 24) = v60;
        *(v61 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v61 | 0x5000000000000000;
        *(v34 + 16) = v57;
        goto LABEL_25;
      }

      v92 = v26;
      v81 = swift_projectBox();
      sub_1D5D2878C(v81, v14, sub_1D5C4E168);
      sub_1D5FA055C(v9);
      v82 = swift_allocObject();
      v83 = swift_allocBox();
      v85 = v84;
      v86 = *(v94 + 32);
      v87 = v9;
      v88 = v95;
      v86(v5, v87, v95);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v86(v85, v5, v88);
      *&v85[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v82 + 16) = v92;
      *(v82 + 24) = v83 | 0x6000000000000000;
      v75 = v82 | 0x8000000000000000;
    }

    *v97 = v75;
    goto LABEL_28;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v98;
      v39 = swift_allocObject();

      sub_1D5FA8D3C(v96, v38, (v39 + 16));

      if (v37)
      {
        goto LABEL_17;
      }

      *v97 = v39 | 0x7000000000000000;
      return;
    }

LABEL_18:
    *v97 = v26;

    return;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v45 = v98;
  v46 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v47 = swift_allocObject();
  v48 = v47;
  if (v46 >> 61 == 3)
  {
    v49 = v46 & 0x1FFFFFFFFFFFFFFFLL;
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    v52 = *(v49 + 32);
    v53 = *(v49 + 40);

    sub_1D5F58038(v50, v51, v52, v53);
    sub_1D5F50E54(v96, v50, v51, v52, v53, &v99);
    if (v45)
    {
      sub_1D5F57FEC(v50, v51, v52, v53);

LABEL_17:
      swift_deallocUninitializedObject();
      return;
    }

    v89 = v99;
    v90 = swift_allocObject();
    *(v90 + 16) = v50;
    *(v90 + 24) = v51;
    *(v90 + 32) = v52;
    *(v90 + 40) = v53;
    *(v90 + 48) = v89;
    *(v48 + 16) = v90 | 0x8000000000000000;
  }

  else
  {
    *(v47 + 16) = v46;
  }

  *v97 = v48 | 0xC000000000000000;
}

void sub_1D6B76F28(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  *&v96 = a1;
  v2 = sub_1D72585BC();
  v94 = *(v2 - 8);
  *&v95 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v91 - v8;
  sub_1D5C4E168(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v91 - v21;
  sub_1D5C8E028(0);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v62 = *(v26 + 16);
        v63 = *(v26 + 24);
        v64 = v26;

        v65 = sub_1D5FA0AEC(v96, v62, v63);

        v66 = swift_allocObject();
        v67 = swift_allocObject();
        v68 = MEMORY[0x1E69E7CC0];
        *(v67 + 16) = v65 & 1;
        *(v67 + 24) = v68;
        *(v66 + 16) = v64;
        *(v66 + 24) = v67;
        *v97 = v66 | 0x8000000000000000;
LABEL_28:

        return;
      }

      if (v29 == 1)
      {
        v40 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v102[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v102[1] = v40;
        v103 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v41 = v26;
        sub_1D66665DC(v102, &v99);
        sub_1D6B7D900(v96, &v99);
        sub_1D6666638(v102);
        v42 = v100;
        v95 = v101;
        v96 = v99;
        v34 = swift_allocObject();
        v43 = swift_allocObject();
        v44 = v95;
        *(v43 + 16) = v96;
        *(v43 + 32) = v42;
        *(v43 + 40) = v44;
        v36 = v43 | 0x1000000000000000;
        goto LABEL_24;
      }

      v92 = v26;
      v69 = swift_projectBox();
      sub_1D5D2878C(v69, v28, sub_1D5C8E028);
      sub_1D5FA0BA8(v96, v22);
      v70 = swift_allocObject();
      *&v96 = swift_allocBox();
      v72 = v71;
      v73 = *(v93 + 32);
      v73(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v73(v72, v18, v15);
      *&v72[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v74 = v96 | 0x2000000000000000;
      *(v70 + 16) = v92;
      *(v70 + 24) = v74;
      v75 = v70 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5FA0BF0(v96, v31, v30);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v97 = v34 | 0x8000000000000000;
          goto LABEL_28;
        }

        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v41 = v26;

        v78 = sub_1D5FA0CAC(v96, v77, v76);

        v34 = swift_allocObject();
        v79 = swift_allocObject();
        v80 = MEMORY[0x1E69E7CC0];
        *(v79 + 16) = v78;
        *(v79 + 24) = v80;
        v36 = v79 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v41;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v54 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v57 = v26;

        v58 = sub_1D5FA0D68(v96, v55, v54, v56);
        v60 = v59;

        v34 = swift_allocObject();
        v61 = swift_allocObject();
        *(v61 + 16) = v58;
        *(v61 + 24) = v60;
        *(v61 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v61 | 0x5000000000000000;
        *(v34 + 16) = v57;
        goto LABEL_25;
      }

      v92 = v26;
      v81 = swift_projectBox();
      sub_1D5D2878C(v81, v14, sub_1D5C4E168);
      sub_1D5FA0E40(v96, v9);
      v82 = swift_allocObject();
      v83 = swift_allocBox();
      v85 = v84;
      v86 = *(v94 + 32);
      v87 = v9;
      v88 = v95;
      v86(v5, v87, v95);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v86(v85, v5, v88);
      *&v85[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v82 + 16) = v92;
      *(v82 + 24) = v83 | 0x6000000000000000;
      v75 = v82 | 0x8000000000000000;
    }

    *v97 = v75;
    goto LABEL_28;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v98;
      v39 = swift_allocObject();

      sub_1D5FA94D4(v96, v38, (v39 + 16));

      if (v37)
      {
        goto LABEL_17;
      }

      *v97 = v39 | 0x7000000000000000;
      return;
    }

LABEL_18:
    *v97 = v26;

    return;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v45 = v98;
  v46 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v47 = swift_allocObject();
  v48 = v47;
  if (v46 >> 61 == 3)
  {
    v49 = v46 & 0x1FFFFFFFFFFFFFFFLL;
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    v52 = *(v49 + 32);
    v53 = *(v49 + 40);

    sub_1D5F58038(v50, v51, v52, v53);
    sub_1D5F512D8(v96, v50, v51, v52, v53, &v99);
    if (v45)
    {
      sub_1D5F57FEC(v50, v51, v52, v53);

LABEL_17:
      swift_deallocUninitializedObject();
      return;
    }

    v89 = v99;
    v90 = swift_allocObject();
    *(v90 + 16) = v50;
    *(v90 + 24) = v51;
    *(v90 + 32) = v52;
    *(v90 + 40) = v53;
    *(v90 + 48) = v89;
    *(v48 + 16) = v90 | 0x8000000000000000;
  }

  else
  {
    *(v47 + 16) = v46;
  }

  *v97 = v48 | 0xC000000000000000;
}

void sub_1D6B777A8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  *&v96 = a1;
  v2 = sub_1D72585BC();
  v94 = *(v2 - 8);
  *&v95 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v91 - v8;
  sub_1D5C4E168(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725891C();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v91 - v21;
  sub_1D5C8E028(0);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v29 <= 2)
    {
      if (!v29)
      {
        v62 = *(v26 + 16);
        v63 = *(v26 + 24);
        v64 = v26;

        v65 = sub_1D5FA10D8(v96, v62, v63);

        v66 = swift_allocObject();
        v67 = swift_allocObject();
        v68 = MEMORY[0x1E69E7CC0];
        *(v67 + 16) = v65 & 1;
        *(v67 + 24) = v68;
        *(v66 + 16) = v64;
        *(v66 + 24) = v67;
        *v97 = v66 | 0x8000000000000000;
LABEL_28:

        return;
      }

      if (v29 == 1)
      {
        v40 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v102[0] = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v102[1] = v40;
        v103 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v41 = v26;
        sub_1D66665DC(v102, &v99);
        sub_1D6B7D9D8(v96, &v99);
        sub_1D6666638(v102);
        v42 = v100;
        v95 = v101;
        v96 = v99;
        v34 = swift_allocObject();
        v43 = swift_allocObject();
        v44 = v95;
        *(v43 + 16) = v96;
        *(v43 + 32) = v42;
        *(v43 + 40) = v44;
        v36 = v43 | 0x1000000000000000;
        goto LABEL_24;
      }

      v92 = v26;
      v69 = swift_projectBox();
      sub_1D5D2878C(v69, v28, sub_1D5C8E028);
      sub_1D5FA1238(v96, v22);
      v70 = swift_allocObject();
      *&v96 = swift_allocBox();
      v72 = v71;
      v73 = *(v93 + 32);
      v73(v18, v22, v15);
      sub_1D6B850C8(v28, sub_1D5C8E028);
      v73(v72, v18, v15);
      *&v72[*(v24 + 36)] = MEMORY[0x1E69E7CC0];
      v74 = v96 | 0x2000000000000000;
      *(v70 + 16) = v92;
      *(v70 + 24) = v74;
      v75 = v70 | 0x8000000000000000;
    }

    else
    {
      if (v29 <= 4)
      {
        if (v29 == 3)
        {
          v30 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v26;

          v33 = sub_1D5FA1280(v96, v31, v30);

          v34 = swift_allocObject();
          v35 = swift_allocObject();
          *(v35 + 16) = v33;
          *(v35 + 24) = MEMORY[0x1E69E7CC0];
          v36 = v35 | 0x3000000000000000;
          *(v34 + 16) = v32;
LABEL_25:
          *(v34 + 24) = v36;
          *v97 = v34 | 0x8000000000000000;
          goto LABEL_28;
        }

        v77 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v41 = v26;

        v78 = sub_1D5FA13E0(v96, v77, v76);

        v34 = swift_allocObject();
        v79 = swift_allocObject();
        v80 = MEMORY[0x1E69E7CC0];
        *(v79 + 16) = v78;
        *(v79 + 24) = v80;
        v36 = v79 | 0x4000000000000000;
LABEL_24:
        *(v34 + 16) = v41;
        goto LABEL_25;
      }

      if (v29 == 5)
      {
        v55 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v54 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v56 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v57 = v26;

        v58 = sub_1D5FA1540(v96, v55, v54, v56);
        v60 = v59;

        v34 = swift_allocObject();
        v61 = swift_allocObject();
        *(v61 + 16) = v58;
        *(v61 + 24) = v60;
        *(v61 + 32) = MEMORY[0x1E69E7CC0];
        v36 = v61 | 0x5000000000000000;
        *(v34 + 16) = v57;
        goto LABEL_25;
      }

      v92 = v26;
      v81 = swift_projectBox();
      sub_1D5D2878C(v81, v14, sub_1D5C4E168);
      sub_1D5FA16C4(v96, v9);
      v82 = swift_allocObject();
      v83 = swift_allocBox();
      v85 = v84;
      v86 = *(v94 + 32);
      v87 = v9;
      v88 = v95;
      v86(v5, v87, v95);
      sub_1D6B850C8(v14, sub_1D5C4E168);
      v86(v85, v5, v88);
      *&v85[*(v11 + 36)] = MEMORY[0x1E69E7CC0];
      *(v82 + 16) = v92;
      *(v82 + 24) = v83 | 0x6000000000000000;
      v75 = v82 | 0x8000000000000000;
    }

    *v97 = v75;
    goto LABEL_28;
  }

  if (v29 <= 11)
  {
    if ((v29 - 8) >= 4)
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = v98;
      v39 = swift_allocObject();

      sub_1D5FA9D9C(v96, v38, (v39 + 16));

      if (v37)
      {
        goto LABEL_17;
      }

      *v97 = v39 | 0x7000000000000000;
      return;
    }

LABEL_18:
    *v97 = v26;

    return;
  }

  if (v29 != 12)
  {
    goto LABEL_18;
  }

  v45 = v98;
  v46 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v47 = swift_allocObject();
  v48 = v47;
  if (v46 >> 61 == 3)
  {
    v49 = v46 & 0x1FFFFFFFFFFFFFFFLL;
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    v52 = *(v49 + 32);
    v53 = *(v49 + 40);

    sub_1D5F58038(v50, v51, v52, v53);
    sub_1D5F516EC(v96, v50, v51, v52, v53);
    if (v45)
    {
      sub_1D5F57FEC(v50, v51, v52, v53);

LABEL_17:
      swift_deallocUninitializedObject();
      return;
    }

    v89 = v99;
    v90 = swift_allocObject();
    *(v90 + 16) = v50;
    *(v90 + 24) = v51;
    *(v90 + 32) = v52;
    *(v90 + 40) = v53;
    *(v90 + 48) = v89;
    *(v48 + 16) = v90 | 0x8000000000000000;
  }

  else
  {
    *(v47 + 16) = v46;
  }

  *v97 = v48 | 0xC000000000000000;
}

uint64_t sub_1D6B78028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20[-v8];
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B76B10(a1, v20);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_1D6B79734(a2, MEMORY[0x1E69E7CC0], boxed_opaque_existential_1);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_1D5D282A8(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v19 = 5001813;
    v19[1] = 0xE300000000000000;
    v19[2] = 7958081;
    v19[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D6B782E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void (*a3)(void, __n128)@<X3>, void (*a4)(void, __n128)@<X4>, uint64_t *a5@<X8>)
{
  v24 = a4;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23[-v11];
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B76B10(a1, v23);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v12, 0, 1, v13);
    (*(v14 + 32))(v17, v12, v13);
    a5[3] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    sub_1D6B79C88(a2, MEMORY[0x1E69E7CC0], a3, v24, boxed_opaque_existential_1);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v19(v12, 1, 1, v13);
    sub_1D5D282A8(v12, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v22 = 5001813;
    v22[1] = 0xE300000000000000;
    v22[2] = 7958081;
    v22[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D6B785B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20[-v8];
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B76B10(a1, v20);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_1D6B79C88(a2, MEMORY[0x1E69E7CC0], sub_1D6B85498, sub_1D6B85498, boxed_opaque_existential_1);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_1D5D282A8(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v19 = 5001813;
    v19[1] = 0xE300000000000000;
    v19[2] = 7958081;
    v19[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D6B78890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, __n128)@<X3>, void (*a5)(void, __n128)@<X4>, uint64_t *a6@<X8>)
{
  v27 = a5;
  v25 = a4;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B76B10(a1, v26);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v13, 0, 1, v14);
    (*(v15 + 32))(v18, v13, v14);
    a6[3] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
    sub_1D6B7A77C(a2, a3, MEMORY[0x1E69E7CC0], v25, v27, boxed_opaque_existential_1);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v20(v13, 1, 1, v14);
    sub_1D5D282A8(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v23 = 5001813;
    v23[1] = 0xE300000000000000;
    v23[2] = 7958081;
    v23[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D6B78B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20[-v8];
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B76B10(a1, v20);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_1D6B7ACBC(a2, MEMORY[0x1E69E7CC0], boxed_opaque_existential_1);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_1D5D282A8(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v19 = 5001813;
    v19[1] = 0xE300000000000000;
    v19[2] = 7958081;
    v19[3] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

void FormatImageNodeBinding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v4 = type metadata accessor for FormatOption(0);
  v46 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27E80(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v45 - v15;
  v17 = *v2;
  v18 = *(v2 + 8);
  v20 = *(v2 + 16);
  v19 = *(v2 + 24);
  v21 = *(v2 + 32);
  v22 = *(v2 + 40);
  v23 = (v22 >> 1) & 0xF;
  if (v23 <= 3)
  {
    if (v23 < 2)
    {
      return;
    }

    if (v23 == 2)
    {
      v49 = *v2;
      v50 = v18;
      v51 = v20;
      v52 = v19;
      v53 = v21;
      v54 = v22 & 0xE1;
      FormatGroupBinding.Image.bind(binder:context:)(v47, v48, v14);
      return;
    }

    v25 = (v18 >> 59) & 2 | (v18 >> 2) & 1;
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        return;
      }

      v27 = *(v2 + 24);
      v49 = v18 & 0xEFFFFFFFFFFFFFFBLL;

      v29 = v47;
      v28 = v48;
      FormatFont.bind(binder:context:)(v47, v48);
      if (v3)
      {

        return;
      }

      sub_1D620B270(v29, v28, v20);

      v34 = v29;
      v35 = v28;
      v36 = v27;
    }

    else
    {
      v26 = *(v2 + 24);
      if (v25)
      {
        v49 = v18 & 0xEFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v49 = *(v2 + 8);
      }

      v33 = v47;
      v32 = v48;
      FormatFont.bind(binder:context:)(v47, v48);

      if (v3)
      {
        return;
      }

      sub_1D620B270(v33, v32, v20);

      v34 = v33;
      v35 = v32;
      v36 = v26;
    }

    sub_1D620B270(v34, v35, v36);

    return;
  }

  if (((v22 >> 1) & 0xF) < 7)
  {
    return;
  }

  if (v23 == 7)
  {
    v49 = *v2;
    v50 = v18;
    v51 = v20;
    v55 = 8;
    sub_1D62B4B68(v17, v18, v20, v19, v21, v22, v14);
    v24 = sub_1D703E0C8(&v49, &v55);
    v47 = v3;
    if (!v3)
    {
      v30 = v24;
      v31 = v48;
      FormatOptionCollection.subscript.getter(v17, v18, v11);
      if ((*(v46 + 48))(v11, 1, v4) == 1)
      {

        sub_1D5D282A8(v11, &qword_1EDF337F0, type metadata accessor for FormatOption, sub_1D5D27E80);
        if ((*(v31 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v38 = v17;
          v38[1] = v18;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        (*(v46 + 56))(v16, 1, 1, v4);
      }

      else
      {
        sub_1D5D5E544(v11, v7, type metadata accessor for FormatOption);
        v49 = v7[2];

        FormatOptionValue.type.getter(v37, &v55);
        if ((sub_1D6183C84(v55, v30) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v40 = v39;
          v42 = *v7;
          v41 = v7[1];
          v49 = v7[2];

          FormatOptionValue.type.getter(v43, &v55);
          v44 = v55;
          *v40 = v42;
          *(v40 + 8) = v41;
          *(v40 + 16) = v44;
          *(v40 + 24) = v30;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D6B850C8(v7, type metadata accessor for FormatOption);
          return;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D5E544(v7, v16, type metadata accessor for FormatOption);
        (*(v46 + 56))(v16, 0, 1, v4);
      }

      sub_1D5D282A8(v16, &qword_1EDF337F0, type metadata accessor for FormatOption, sub_1D5D27E80);
    }
  }

  else if (v23 == 8)
  {
    v49 = *v2;
    v50 = v18;
    v51 = v20;
    v52 = v19;
    v53 = v21;
    v54 = v22 & 1;
    FormatSportsEventBinding.Image.bind(binder:context:)(v47, v48);
  }
}

void sub_1D6B7947C(uint64_t *a1, __n128 a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = (v9 >> 1) & 0xF;
  if (v10 <= 3)
  {
    if (v10 < 2)
    {
      return;
    }

    if (v10 == 2)
    {
      v20 = *v2;
      v21 = v5;
      v22 = v7;
      v23 = v6;
      v24 = v8;
      v25 = v9 & 0xE1;
      sub_1D6291A5C(a1);
      return;
    }

    v14 = (v5 >> 59) & 2 | (v5 >> 2) & 1;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        return;
      }

      v20 = v5 & 0xEFFFFFFFFFFFFFFBLL;

      sub_1D6290ACC(a1);
      if (v3)
      {

        return;
      }

      sub_1D6273544(a1, v7);

      v17 = a1;
      v18 = v6;
    }

    else
    {
      if (v14)
      {
        v20 = v5 & 0xEFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v20 = *(v2 + 8);
      }

      sub_1D6290ACC(a1);

      if (v3)
      {
        return;
      }

      sub_1D6273544(a1, v7);

      v17 = a1;
      v18 = v6;
    }

    sub_1D6273544(v17, v18);

    return;
  }

  if (((v9 >> 1) & 0xF) >= 7)
  {
    if (v10 == 7)
    {
      v20 = *v2;
      v21 = v5;
      v22 = v7;
      v19 = 8;
      sub_1D62B4B68(v4, v5, v7, v6, v8, v9, a2);
      v11 = sub_1D703E0C8(&v20, &v19);
      if (!v3)
      {
        v12 = v11;
        v13 = swift_allocObject();
        *(v13 + 16) = v4;
        *(v13 + 24) = v5;
        *(v13 + 32) = v12;
        *(v13 + 40) = 0;

        sub_1D6C4D24C(v13 | 0x3000000000000000);
      }
    }

    else if (v10 == 8)
    {
      v20 = *v2;
      v21 = v5;
      v22 = v7;
      v23 = v6;
      v24 = v8;
      v25 = v9 & 1;
      sub_1D6291E90(a1);
    }
  }
}

uint64_t sub_1D6B79734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v42 - v9;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = sub_1D7257C7C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v42 - v22;
  if (*(a1 + 16) || *(a2 + 16))
  {
    sub_1D7257BCC();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1D5D282A8(v14, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v24 = sub_1D72585BC();
      return (*(*(v24 - 8) + 16))(a3, v3, v24);
    }

    else
    {
      v43 = v3;
      (*(v16 + 32))(v23, v14, v15);
      v26 = MEMORY[0x1E69E7CC0];
      if (*(a2 + 16))
      {
        v42 = a3;
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v27)
        {
          sub_1D7257C1C();
        }

        v28 = sub_1D7257B6C();
        v30 = v26;
        if (v28)
        {
          v26 = v28;
        }

        MEMORY[0x1EEE9AC00](v28, v29);
        *(&v42 - 2) = v45;
        v31 = sub_1D5FBB260(sub_1D6B85498, (&v42 - 4), a2);
        v44 = v26;
        v26 = v30;
        sub_1D69852E4(v31);
        v32 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v32);
        sub_1D7257C5C();
        (*(v16 + 8))(v19, v15);
        a3 = v42;
      }

      v33 = sub_1D7257B6C();
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v26;
      }

      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v42 - 2) = v45;
      v36 = sub_1D5FBB260(sub_1D6B85304, (&v42 - 4), a1);
      v44 = v35;
      sub_1D69852E4(v36);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v16 + 8))(v23, v15);
      v37 = sub_1D72585BC();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v10, 1, v37) == 1)
      {
        (*(v38 + 16))(a3, v43, v37);
        result = v39(v10, 1, v37);
        if (result != 1)
        {
          return sub_1D5D282A8(v10, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v38 + 32))(a3, v10, v37);
      }
    }
  }

  else
  {
    v40 = sub_1D72585BC();
    v41 = *(*(v40 - 8) + 16);

    return v41(a3, v3, v40);
  }

  return result;
}

uint64_t sub_1D6B79C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, __n128)@<X2>, void (*a4)(void, __n128)@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a5;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v45 - v11;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v45 - v15;
  v17 = sub_1D7257C7C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v45 - v24;
  if (*(a1 + 16) || *(a2 + 16))
  {
    sub_1D7257BCC();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_1D5D282A8(v16, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v26 = sub_1D72585BC();
      return (*(*(v26 - 8) + 16))(v47, v5, v26);
    }

    else
    {
      v45 = v5;
      (*(v18 + 32))(v25, v16, v17);
      v28 = MEMORY[0x1E69E7CC0];
      if (*(a2 + 16))
      {
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v29)
        {
          sub_1D7257C1C();
        }

        v30 = sub_1D7257B6C();
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1EEE9AC00](v30, v31);
        *(&v45 - 2) = &v49;
        v33 = sub_1D5FBB260(a4, (&v45 - 4), a2);
        v48 = v32;
        v28 = MEMORY[0x1E69E7CC0];
        sub_1D69852E4(v33);
        v34 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v34);
        sub_1D7257C5C();
        (*(v18 + 8))(v21, v17);
      }

      v35 = sub_1D7257B6C();
      if (v35)
      {
        v28 = v35;
      }

      MEMORY[0x1EEE9AC00](v35, v36);
      *(&v45 - 2) = &v49;
      v37 = sub_1D5FBB260(v46, (&v45 - 4), a1);
      v48 = v28;
      sub_1D69852E4(v37);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v18 + 8))(v25, v17);
      v38 = sub_1D72585BC();
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);
      if (v40(v12, 1, v38) == 1)
      {
        (*(v39 + 16))(v47, v45, v38);
        result = v40(v12, 1, v38);
        if (result != 1)
        {
          return sub_1D5D282A8(v12, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v39 + 32))(v47, v12, v38);
      }
    }
  }

  else
  {
    v41 = sub_1D72585BC();
    v42 = *(*(v41 - 8) + 16);
    v43 = v41;
    v44 = v47;

    return v42(v44, v5, v43);
  }

  return result;
}

uint64_t sub_1D6B7A1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v42 - v9;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = sub_1D7257C7C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v42 - v22;
  if (*(a1 + 16) || *(a2 + 16))
  {
    sub_1D7257BCC();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1D5D282A8(v14, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v24 = sub_1D72585BC();
      return (*(*(v24 - 8) + 16))(a3, v3, v24);
    }

    else
    {
      v43 = v3;
      (*(v16 + 32))(v23, v14, v15);
      v26 = MEMORY[0x1E69E7CC0];
      if (*(a2 + 16))
      {
        v42 = a3;
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v27)
        {
          sub_1D7257C1C();
        }

        v28 = sub_1D7257B6C();
        v30 = v26;
        if (v28)
        {
          v26 = v28;
        }

        MEMORY[0x1EEE9AC00](v28, v29);
        *(&v42 - 2) = v45;
        v31 = sub_1D5FBB260(sub_1D6B85498, (&v42 - 4), a2);
        v44 = v26;
        v26 = v30;
        sub_1D69852E4(v31);
        v32 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v32);
        sub_1D7257C5C();
        (*(v16 + 8))(v19, v15);
        a3 = v42;
      }

      v33 = sub_1D7257B6C();
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v26;
      }

      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v42 - 2) = v45;
      v36 = sub_1D5FBB260(sub_1D6B85304, (&v42 - 4), a1);
      v44 = v35;
      sub_1D69852E4(v36);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v16 + 8))(v23, v15);
      v37 = sub_1D72585BC();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v10, 1, v37) == 1)
      {
        (*(v38 + 16))(a3, v43, v37);
        result = v39(v10, 1, v37);
        if (result != 1)
        {
          return sub_1D5D282A8(v10, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v38 + 32))(a3, v10, v37);
      }
    }
  }

  else
  {
    v40 = sub_1D72585BC();
    v41 = *(*(v40 - 8) + 16);

    return v41(a3, v3, v40);
  }

  return result;
}

uint64_t sub_1D6B7A77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, __n128)@<X3>, void (*a5)(void, __n128)@<X4>, uint64_t a6@<X8>)
{
  v52 = a1;
  v53 = a4;
  v54 = a6;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v49 - v12;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v49 - v16;
  v18 = sub_1D7257C7C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v49 - v25;
  if (*(a2 + 16) || *(a3 + 16))
  {
    sub_1D7257BCC();
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_1D5D282A8(v17, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v27 = sub_1D72585BC();
      return (*(*(v27 - 8) + 16))(v54, v6, v27);
    }

    else
    {
      v50 = v6;
      (*(v19 + 32))(v26, v17, v18);
      v29 = *(a3 + 16);
      v30 = MEMORY[0x1E69E7CC0];
      v51 = a2;
      if (v29)
      {
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v31)
        {
          sub_1D7257C1C();
        }

        v32 = sub_1D7257B6C();
        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1EEE9AC00](v32, v33);
        v35 = v52;
        *(&v49 - 2) = v52;
        v36 = sub_1D5FBB260(a5, (&v49 - 4), a3);
        v55 = v34;
        v30 = MEMORY[0x1E69E7CC0];
        sub_1D69852E4(v36);
        v37 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v37);
        sub_1D7257C5C();
        (*(v19 + 8))(v22, v18);
      }

      else
      {
        v35 = v52;
      }

      v38 = sub_1D7257B6C();
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = v30;
      }

      MEMORY[0x1EEE9AC00](v38, v39);
      *(&v49 - 2) = v35;
      v41 = sub_1D5FBB260(v53, (&v49 - 4), v51);
      v55 = v40;
      sub_1D69852E4(v41);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v19 + 8))(v26, v18);
      v42 = sub_1D72585BC();
      v43 = *(v42 - 8);
      v44 = *(v43 + 48);
      if (v44(v13, 1, v42) == 1)
      {
        (*(v43 + 16))(v54, v50, v42);
        result = v44(v13, 1, v42);
        if (result != 1)
        {
          return sub_1D5D282A8(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v43 + 32))(v54, v13, v42);
      }
    }
  }

  else
  {
    v45 = sub_1D72585BC();
    v46 = *(*(v45 - 8) + 16);
    v47 = v45;
    v48 = v54;

    return v46(v48, v6, v47);
  }

  return result;
}

uint64_t sub_1D6B7ACBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v42 - v9;
  sub_1D5D27E80(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = sub_1D7257C7C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v42 - v22;
  if (*(a1 + 16) || *(a2 + 16))
  {
    sub_1D7257BCC();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1D5D282A8(v14, &unk_1EDF43B50, MEMORY[0x1E69681B8], sub_1D5D27E80);
      v24 = sub_1D72585BC();
      return (*(*(v24 - 8) + 16))(a3, v3, v24);
    }

    else
    {
      v43 = v3;
      (*(v16 + 32))(v23, v14, v15);
      v26 = MEMORY[0x1E69E7CC0];
      if (*(a2 + 16))
      {
        v42 = a3;
        sub_1D7257C6C();
        sub_1D7257C4C();
        if (v27)
        {
          sub_1D7257C1C();
        }

        v28 = sub_1D7257B6C();
        v30 = v26;
        if (v28)
        {
          v26 = v28;
        }

        MEMORY[0x1EEE9AC00](v28, v29);
        *(&v42 - 2) = v45;
        v31 = sub_1D5FBB260(sub_1D6B85498, (&v42 - 4), a2);
        v44 = v26;
        v26 = v30;
        sub_1D69852E4(v31);
        v32 = sub_1D7257B7C();
        MEMORY[0x1DA6EF2A0](v32);
        sub_1D7257C5C();
        (*(v16 + 8))(v19, v15);
        a3 = v42;
      }

      v33 = sub_1D7257B6C();
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v26;
      }

      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v42 - 2) = v45;
      v36 = sub_1D5FBB260(sub_1D6B85304, (&v42 - 4), a1);
      v44 = v35;
      sub_1D69852E4(v36);
      sub_1D7257B7C();
      sub_1D7257BDC();
      (*(v16 + 8))(v23, v15);
      v37 = sub_1D72585BC();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v10, 1, v37) == 1)
      {
        (*(v38 + 16))(a3, v43, v37);
        result = v39(v10, 1, v37);
        if (result != 1)
        {
          return sub_1D5D282A8(v10, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
        }
      }

      else
      {
        return (*(v38 + 32))(a3, v10, v37);
      }
    }
  }

  else
  {
    v40 = sub_1D72585BC();
    v41 = *(*(v40 - 8) + 16);

    return v41(a3, v3, v40);
  }

  return result;
}

uint64_t sub_1D6B7B210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedRecipe(0);
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF34D20, type metadata accessor for FeedRecipe, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedRecipe);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v13 = 0x6963655264656546;
    *(v13 + 8) = 0xEA00000000006570;
    *(v13 + 56) = 6;
    return swift_willThrow();
  }
}

void sub_1D6B7B418(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v47);
      sub_1D5EFF46C();
      if (swift_dynamicCast())
      {
        break;
      }

      --v2;
      sub_1D5F588A0(&v13);
      v43 = v25;
      v44 = v26;
      v45 = v27;
      v39 = v21;
      v40 = v22;
      v41 = v23;
      v42 = v24;
      v35 = v17;
      v36 = v18;
      v37 = v19;
      v38 = v20;
      v31 = v13;
      v32 = v14;
      v33 = v15;
      v34 = v16;
      v29[12] = v25;
      v29[13] = v26;
      v29[14] = v27;
      v29[8] = v21;
      v29[9] = v22;
      v29[10] = v23;
      v29[11] = v24;
      v29[4] = v17;
      v29[5] = v18;
      v29[6] = v19;
      v29[7] = v20;
      v29[0] = v13;
      v29[1] = v14;
      v46 = v28;
      v30 = v28;
      v29[2] = v15;
      v29[3] = v16;
      sub_1D5D282A8(v29, qword_1EDF34BC0, &type metadata for FeedPaywall, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    nullsub_1();
    v6 = v44;
    *(a2 + 192) = v43;
    *(a2 + 208) = v6;
    *(a2 + 224) = v45;
    *(a2 + 240) = v46;
    v7 = v40;
    *(a2 + 128) = v39;
    *(a2 + 144) = v7;
    v8 = v42;
    *(a2 + 160) = v41;
    *(a2 + 176) = v8;
    v9 = v36;
    *(a2 + 64) = v35;
    *(a2 + 80) = v9;
    v10 = v38;
    *(a2 + 96) = v37;
    *(a2 + 112) = v10;
    v11 = v32;
    *a2 = v31;
    *(a2 + 16) = v11;
    v12 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v12;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v5 = 0x7779615064656546;
    *(v5 + 8) = 0xEB000000006C6C61;
    *(v5 + 56) = 6;
    swift_willThrow();
  }
}

uint64_t sub_1D6B7B65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v9);
      sub_1D5EFF46C();
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

      --v2;
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_1D5F5885C(0, 0, 0);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    *a2 = *&v7[0];
    *(a2 + 8) = *(v7 + 8);
    *(a2 + 24) = *(&v7[1] + 1);
    *(a2 + 32) = v8 & 1;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v6 = 0x726F705364656546;
    *(v6 + 8) = 0xEF746E6576457374;
    *(v6 + 56) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6B7B794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF39CF0, type metadata accessor for FeedCustomItem);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedCustomItem(0);
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF39CF0, type metadata accessor for FeedCustomItem, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedCustomItem);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    strcpy(v13, "FeedCustomItem");
    v13[15] = -18;
    v13[56] = 6;
    return swift_willThrow();
  }
}

uint64_t sub_1D6B7B9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedPuzzleStatistic(0);
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedPuzzleStatistic);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v13 = 0xD000000000000013;
    *(v13 + 8) = 0x80000001D73C3770;
    *(v13 + 56) = 6;
    return swift_willThrow();
  }
}

uint64_t sub_1D6B7BBAC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v14);
      sub_1D5EFF46C();
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

      --v2;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      memset(v9, 0, sizeof(v9));
      sub_1D5D282A8(v9, &unk_1EDF154F0, &type metadata for FeedPuzzleType, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v7 = v11;
    *a2 = v10;
    a2[1] = v7;
    v8 = v13;
    a2[2] = v12;
    a2[3] = v8;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    strcpy(v6, "FeedPuzzleType");
    v6[15] = -18;
    v6[56] = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6B7BCEC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v26);
      sub_1D5EFF46C();
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

      --v2;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      sub_1D5D282A8(&v13, &qword_1EDF12E30, &type metadata for FeedPuzzle, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v7 = v24;
    a2[10] = v23;
    a2[11] = v7;
    a2[12] = v25;
    v8 = v20;
    a2[6] = v19;
    a2[7] = v8;
    v9 = v22;
    a2[8] = v21;
    a2[9] = v9;
    v10 = v16;
    a2[2] = v15;
    a2[3] = v10;
    v11 = v18;
    a2[4] = v17;
    a2[5] = v11;
    v12 = v14;
    *a2 = v13;
    a2[1] = v12;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v6 = 0x7A7A755064656546;
    *(v6 + 8) = 0xEA0000000000656CLL;
    *(v6 + 56) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6B7BE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedWebEmbed(0);
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF34968, type metadata accessor for FeedWebEmbed, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedWebEmbed);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    strcpy(v13, "FeedWebEmbed");
    v13[13] = 0;
    *(v13 + 7) = -5120;
    v13[56] = 6;
    return swift_willThrow();
  }
}

uint64_t sub_1D6B7C06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v21);
      sub_1D5EFF46C();
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

      --v2;
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      sub_1D5D282A8(&v11, &unk_1EDF34F60, &type metadata for FeedTag, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v7 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v7;
    *(a2 + 128) = v19;
    *(a2 + 144) = v20;
    v8 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v8;
    v9 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v9;
    v10 = v12;
    *a2 = v11;
    *(a2 + 16) = v10;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v6 = 0x67615464656546;
    *(v6 + 8) = 0xE700000000000000;
    *(v6 + 56) = 6;
    return swift_willThrow();
  }

  return result;
}

void sub_1D6B7C1C8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40 * v2 - 8;
    while (1)
    {
      sub_1D5B68374(v4, v28);
      sub_1D5EFF46C();
      if (swift_dynamicCast())
      {
        break;
      }

      --v2;
      sub_1D5D62850(&v10);
      v26 = v16;
      v27[0] = v17[0];
      *(v27 + 9) = *(v17 + 9);
      v22 = v12;
      v23 = v13;
      v24 = v14;
      v25 = v15;
      v20 = v10;
      v21 = v11;
      v18[6] = v16;
      v19[0] = v17[0];
      *(v19 + 9) = *(v17 + 9);
      v18[2] = v12;
      v18[3] = v13;
      v18[4] = v14;
      v18[5] = v15;
      v18[0] = v10;
      v18[1] = v11;
      sub_1D5D282A8(v18, &qword_1EDF34E30, &type metadata for FeedIssue, sub_1D5B49CBC);
      v4 -= 40;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    nullsub_1();
    v6 = v27[0];
    a2[6] = v26;
    a2[7] = v6;
    *(a2 + 121) = *(v27 + 9);
    v7 = v23;
    a2[2] = v22;
    a2[3] = v7;
    v8 = v25;
    a2[4] = v24;
    a2[5] = v8;
    v9 = v21;
    *a2 = v20;
    a2[1] = v9;
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    *v5 = 0x7573734964656546;
    *(v5 + 8) = 0xE900000000000065;
    *(v5 + 56) = 6;
    swift_willThrow();
  }
}

uint64_t sub_1D6B7C374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D27E80(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6 - 8];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40 * v8 - 8;
    while (1)
    {
      sub_1D5B68374(v9, v16);
      sub_1D5EFF46C();
      v10 = type metadata accessor for FeedHeadline(0);
      v11 = swift_dynamicCast();
      v12 = *(*(v10 - 8) + 56);
      if (v11)
      {
        break;
      }

      --v8;
      v12(v7, 1, 1, v10);
      sub_1D5D282A8(v7, qword_1EDF42030, type metadata accessor for FeedHeadline, sub_1D5D27E80);
      v9 -= 40;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v12(v7, 0, 1, v10);
    return sub_1D5D5E544(v7, a2, type metadata accessor for FeedHeadline);
  }

  else
  {
LABEL_5:
    sub_1D6752B3C();
    swift_allocError();
    strcpy(v13, "FeedHeadline");
    v13[13] = 0;
    *(v13 + 7) = -5120;
    v13[56] = 6;
    return swift_willThrow();
  }
}

double sub_1D6B7C580@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v117 = a3;
  v118 = a4;
  v110 = a2;
  v119 = a1;
  v5 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v116 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v113, v8);
  v114 = (&v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27E80(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v110 - v12;
  v14 = type metadata accessor for FormatOption(0);
  v115 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeedPuzzleStatistic(0);
  v111 = *(v18 - 8);
  v19 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v112 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v110 - v23;
  v25 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v4;
  v30 = *(v4 + 8);
  v31 = *(v4 + 16);
  v32 = *(v4 + 24);
  v33 = *(v4 + 32);
  v34 = *(v4 + 40);
  v35 = (v34 >> 1) & 0xF;
  if (v35 > 4)
  {
    if (((v34 >> 1) & 0xF) <= 6)
    {
      v56 = v141;
      if (v35 == 5)
      {
        sub_1D6B7BBAC(*(v119 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v140);
        if (!v56)
        {
          v57 = swift_allocObject();
          v58 = v117;
          v59 = *(v117 + 96);
          v134 = *(v117 + 80);
          v135 = v59;
          v136 = *(v117 + 112);
          LOBYTE(v137) = *(v117 + 128);
          v60 = *(v117 + 64);
          v132 = *(v117 + 48);
          v133 = v60;
          v61 = swift_allocObject();
          v62 = v140[1];
          v61[1] = v140[0];
          v61[2] = v62;
          v63 = v140[3];
          v61[3] = v140[2];
          v61[4] = v63;
          *(v57 + 16) = 0u;
          *(v57 + 32) = 0u;
          v64 = *(v58 + 96);
          *(v57 + 88) = *(v58 + 80);
          *(v57 + 104) = v64;
          *(v57 + 120) = *(v58 + 112);
          v65 = *(v58 + 64);
          *(v57 + 56) = *(v58 + 48);
          *(v57 + 48) = 1;
          *(v57 + 136) = *(v58 + 128);
          *(v57 + 72) = v65;
          *(v57 + 144) = sub_1D6A3CDCC;
          *(v57 + 152) = v61;
          *v118 = v57 | 0x2000000000000000;
          sub_1D673F334(&v132, &v123);
        }
      }

      else
      {
        v85 = v29;
        sub_1D6B7B9A4(*(v119 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v24);
        if (!v56)
        {
          if (v85)
          {
            v86 = swift_allocObject();
            v87 = *(v117 + 96);
            v134 = *(v117 + 80);
            v135 = v87;
            v136 = *(v117 + 112);
            LOBYTE(v137) = *(v117 + 128);
            v88 = *(v117 + 64);
            v132 = *(v117 + 48);
            v133 = v88;
            v89 = v112;
            sub_1D5D5E544(v24, v112, type metadata accessor for FeedPuzzleStatistic);
            v90 = (*(v111 + 80) + 16) & ~*(v111 + 80);
            v91 = swift_allocObject();
            sub_1D5D5E544(v89, v91 + v90, type metadata accessor for FeedPuzzleStatistic);
            *(v86 + 16) = 0u;
            *(v86 + 32) = 0u;
            v92 = v135;
            *(v86 + 88) = v134;
            *(v86 + 104) = v92;
            *(v86 + 120) = v136;
            v93 = v133;
            *(v86 + 56) = v132;
            *(v86 + 48) = 1;
            *(v86 + 136) = v137;
            *(v86 + 72) = v93;
            v94 = sub_1D683EA90;
          }

          else
          {
            v86 = swift_allocObject();
            v96 = *(v117 + 96);
            v134 = *(v117 + 80);
            v135 = v96;
            v136 = *(v117 + 112);
            LOBYTE(v137) = *(v117 + 128);
            v97 = *(v117 + 64);
            v132 = *(v117 + 48);
            v133 = v97;
            v98 = v112;
            sub_1D5D5E544(v24, v112, type metadata accessor for FeedPuzzleStatistic);
            v99 = (*(v111 + 80) + 16) & ~*(v111 + 80);
            v91 = swift_allocObject();
            sub_1D5D5E544(v98, v91 + v99, type metadata accessor for FeedPuzzleStatistic);
            *(v86 + 16) = 0u;
            *(v86 + 32) = 0u;
            v100 = v135;
            *(v86 + 88) = v134;
            *(v86 + 104) = v100;
            *(v86 + 120) = v136;
            v101 = v133;
            *(v86 + 56) = v132;
            *(v86 + 48) = 1;
            *(v86 + 136) = v137;
            *(v86 + 72) = v101;
            v94 = sub_1D683EB10;
          }

          *(v86 + 144) = v94;
          *(v86 + 152) = v91;
          *v118 = v86 | 0x2000000000000000;
          sub_1D673F334(&v132, &v123);
        }
      }
    }

    else
    {
      v43 = v141;
      if (v35 == 7)
      {
        v66 = v31;
        v67 = v119;
        v68 = v29;
        v69 = v30;

        FormatOptionCollection.subscript.getter(v68, v69, v13);
        if ((*(v115 + 48))(v13, 1, v14) == 1)
        {
          sub_1D5D282A8(v13, &qword_1EDF337F0, type metadata accessor for FormatOption, sub_1D5D27E80);
          v70 = v114;
          *v114 = v68;
          *(v70 + 8) = v69;
          swift_storeEnumTagMultiPayload();
          v71 = *(v67 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          v73 = swift_allocError();
          if ((v71 & 1) == 0)
          {
            sub_1D5D2878C(v70, v72, type metadata accessor for FormatLayoutError);
            swift_willThrow();
            v54 = type metadata accessor for FormatLayoutError;
            v55 = v70;
LABEL_36:
            sub_1D6B850C8(v55, v54);
            return result;
          }

          sub_1D5D5E544(v70, v72, type metadata accessor for FormatLayoutError);

          v74 = 0x9000000000000000;
        }

        else
        {

          sub_1D5D5E544(v13, v17, type metadata accessor for FormatOption);

          v95 = v141;
          sub_1D6B744A8(v67, &v123);
          if (v95)
          {
            sub_1D6B850C8(v17, type metadata accessor for FormatOption);

            return result;
          }

          sub_1D6B8227C(v123, v68, v69, v66, v67, &v132);
          v141 = 0;
          sub_1D6B850C8(v17, type metadata accessor for FormatOption);

          v74 = v132;
        }

        *&v132 = v74;
        sub_1D6F7D724(v67, v110, v117, v118);

        return result;
      }

      v44 = v29;
      v45 = v119;
      if (v35 != 8)
      {
        v84 = v116;
        sub_1D6B7B210(*(v119 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v116);
        if (v43)
        {
          return result;
        }

        LOBYTE(v132) = v44 & 1;
        sub_1D6AD0E24(*(v84 + 56), v117, v118);
        v54 = type metadata accessor for FeedRecipe;
        v55 = v84;
        goto LABEL_36;
      }

      v46 = v32;
      v47 = v31;
      v48 = v30;
      sub_1D6B7B65C(*(v119 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v132);
      if (!v43)
      {
        v49 = v132;
        v50 = v133;
        v51 = v134;
        *&v132 = v44;
        *(&v132 + 1) = v48;
        *&v133 = v47;
        *(&v133 + 1) = v46;
        *&v134 = v33;
        BYTE8(v134) = v34 & 1;
        v123 = v49;
        v124 = v50;
        LOBYTE(v125) = v51;
        sub_1D715CD38(&v123, v45, v117, v118);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (((v34 >> 1) & 0xF) > 1)
    {
      v36 = v141;
      v37 = v119;
      if (v35 == 2)
      {
        *&v132 = v29;
        *(&v132 + 1) = v30;
        *&v133 = v31;
        *(&v133 + 1) = v32;
        *&v134 = v33;
        BYTE8(v134) = v34 & 0xE1;
        sub_1D71D9B70(v119, v117, v118);
      }

      else
      {
        v38 = v29;
        if (v35 == 3)
        {
          v39 = v32;
          v40 = v31;
          v41 = v30;
          sub_1D6B7C06C(*(v119 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v132);
          if (!v36)
          {
            *&v123 = v38;
            *(&v123 + 1) = v41;
            *&v124 = v40;
            *(&v124 + 1) = v39;
            sub_1D6AC722C(v133, v37, v117, v118);
            sub_1D5EE5B54(&v132);
          }
        }

        else
        {
          sub_1D6B7BCEC(*(v119 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v132);
          if (!v36)
          {
            v75 = *(&v135 + 1);
            if (v38)
            {
              v76 = swift_allocObject();
              v77 = v117;
              v78 = *(v117 + 96);
              v125 = *(v117 + 80);
              v126 = v78;
              v127 = *(v117 + 112);
              LOBYTE(v128) = *(v117 + 128);
              v79 = *(v117 + 64);
              v123 = *(v117 + 48);
              v124 = v79;
              v80 = swift_allocObject();
              *(v76 + 16) = 0u;
              *(v76 + 32) = 0u;
              v81 = *(v77 + 96);
              *(v76 + 88) = *(v77 + 80);
              *(v76 + 104) = v81;
              *(v76 + 120) = *(v77 + 112);
              v82 = *(v77 + 64);
              *(v76 + 56) = *(v77 + 48);
              *(v80 + 16) = v75;
              *(v76 + 48) = 1;
              *(v76 + 136) = *(v77 + 128);
              *(v76 + 72) = v82;
              if (v38 == 1)
              {
                v83 = sub_1D6B8529C;
              }

              else
              {
                v83 = sub_1D6B85294;
              }

              *(v76 + 144) = v83;
              *(v76 + 152) = v80;
              v109 = v76 | 0x2000000000000000;
            }

            else
            {
              v102 = v117;
              v103 = *(v117 + 96);
              v125 = *(v117 + 80);
              v126 = v103;
              v127 = *(v117 + 112);
              LOBYTE(v128) = *(v117 + 128);
              v104 = *(v117 + 64);
              v123 = *(v117 + 48);
              v124 = v104;
              v105 = swift_allocObject();
              v106 = *(v102 + 96);
              *&v131[39] = *(v102 + 80);
              *&v131[55] = v106;
              *&v131[71] = *(v102 + 112);
              v107 = *(v102 + 64);
              *&v131[7] = *(v102 + 48);
              *(v105 + 16) = v75;
              LOBYTE(v120[0]) = 1;
              v131[87] = *(v102 + 128);
              *&v131[23] = v107;
              v108 = swift_allocObject();
              *(v108 + 16) = 0u;
              *(v108 + 32) = 0u;
              *(v108 + 48) = 1;
              *(v108 + 81) = *&v131[32];
              *(v108 + 97) = *&v131[48];
              *(v108 + 113) = *&v131[64];
              *(v108 + 129) = *&v131[80];
              *(v108 + 49) = *v131;
              *(v108 + 65) = *&v131[16];
              *(v108 + 144) = sub_1D673F3C4;
              *(v108 + 152) = v105;
              v109 = v108 | 0x2000000000000000;
            }

            *v118 = v109;
            sub_1D673F334(&v123, v120);
            swift_unknownObjectRetain();
            sub_1D5F2DF58(&v132);
          }
        }
      }

      return result;
    }

    v52 = v29;
    v53 = v141;
    if (!v35)
    {
      sub_1D6B7C374(*(v119 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v28);
      if (v53)
      {
        return result;
      }

      LOBYTE(v132) = v52;
      FormatHeadlineBinding.Image.image(from:imageContext:)(v28, v117, v118);
      v54 = type metadata accessor for FeedHeadline;
      v55 = v28;
      goto LABEL_36;
    }

    sub_1D6B7C1C8(*(v119 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v132);
    if (!v53)
    {
      v129 = v138;
      v130[0] = v139[0];
      *(v130 + 9) = *(v139 + 9);
      v125 = v134;
      v126 = v135;
      v127 = v136;
      v128 = v137;
      v123 = v132;
      v124 = v133;
      v120[6] = v138;
      *v121 = v139[0];
      *&v121[9] = *(v139 + 9);
      v120[2] = v134;
      v120[3] = v135;
      v120[4] = v136;
      v120[5] = v137;
      v122 = v52 & 1;
      v120[0] = v132;
      v120[1] = v133;
      sub_1D6AEFF4C(v120, v117, v118);
      sub_1D5ECF320(&v123);
    }
  }

  return result;
}

double sub_1D6B7D36C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  if (*(*(v2 + 32) + 16))
  {
    v4 = *(v2 + 16);
    v14[0] = *v2;
    v14[1] = v4;
    v15 = *(v2 + 32);
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v10, a2);
  }

  else
  {
    v11 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v11;
    *(a2 + 32) = *(v2 + 32);
    sub_1D66665DC(v2, v14);
  }

  return result;
}

double sub_1D6B7D490@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v23 = a1[5];
  v24 = v4;
  v5 = a1[4];
  v21 = a1[3];
  v22 = v5;
  v6 = a1[2];
  v19 = a1[1];
  v20 = v6;
  v18 = *a1;
  if (*(*(v2 + 32) + 16))
  {
    v7 = *(v2 + 16);
    v16[0] = *v2;
    v16[1] = v7;
    v17 = *(v2 + 32);
    v8 = off_1F51B1B90(&type metadata for FormatPrefetchContext);
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v15 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v15;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v12, a2);
  }

  else
  {
    v13 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v2 + 32);
    sub_1D66665DC(v2, v16);
  }

  return result;
}

double sub_1D6B7D5C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  if (*(*(v2 + 32) + 16))
  {
    v4 = *(v2 + 16);
    v14[0] = *v2;
    v14[1] = v4;
    v15 = *(v2 + 32);
    v5 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v10, a2);
  }

  else
  {
    v11 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v11;
    *(a2 + 32) = *(v2 + 32);
    sub_1D66665DC(v2, v14);
  }

  return result;
}

double sub_1D6B7D6E8@<D0>(uint64_t a2@<X8>)
{
  if (*(*(v2 + 32) + 16))
  {
    v4 = *(v2 + 16);
    v13[0] = *v2;
    v13[1] = v4;
    v14 = *(v2 + 32);
    v5 = sub_1D6C4356C();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v9, a2);
  }

  else
  {
    v10 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v2 + 32);
    sub_1D66665DC(v2, v13);
  }

  return result;
}

double sub_1D6B7D7DC@<D0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 32) + 16))
  {
    v3 = *(v1 + 16);
    v13[0] = *v1;
    v13[1] = v3;
    v14 = *(v1 + 32);
    v4 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v5 = v4();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v9, a1);
  }

  else
  {
    v10 = *(v1 + 16);
    *a1 = *v1;
    *(a1 + 16) = v10;
    *(a1 + 32) = *(v1 + 32);
    sub_1D66665DC(v1, v13);
  }

  return result;
}

double sub_1D6B7D900@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + 32) + 16))
  {
    v4 = *(v2 + 16);
    v13[0] = *v2;
    v13[1] = v4;
    v14 = *(v2 + 32);
    v5 = *(a1 + 88);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);
      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D6E182F8(v9, a2);
  }

  else
  {
    v10 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v2 + 32);
    sub_1D66665DC(v2, v13);
  }

  return result;
}

void sub_1D6B7D9D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + 32) + 16))
  {
    v4 = *(v2 + 16);
    v13[0] = *v2;
    v13[1] = v4;
    v14 = *(v2 + 32);
    v5 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v5;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v7;
    v9 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v9;
    v10 = *(v7 + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      sub_1D6F622E0(v9);
      sub_1D5B886D0(v11);
    }

    else
    {
      v9 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    sub_1D6E182F8(v9, a2);
  }

  else
  {
    v12 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v12;
    *(a2 + 32) = *(v2 + 32);
    sub_1D66665DC(v2, v13);
  }
}

unint64_t sub_1D6B7DC5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v9 = a5[5];
  v37 = a5[4];
  v38 = v9;
  v39 = a5[6];
  v10 = a5[1];
  v33 = *a5;
  v34 = v10;
  v11 = a5[3];
  v12 = a1 >> 60;
  v35 = a5[2];
  v36 = v11;
  if ((a1 >> 60) > 0xD)
  {
LABEL_14:
    if (v12)
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v31[3] = MEMORY[0x1E69E6158];
      v31[0] = v27;
      v31[1] = v26;
      MEMORY[0x1EEE9AC00](v26, a2);

      sub_1D632A5E4(v31, sub_1D6B85540, a4, v32);
      v19 = v31;
      if (v5)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(v31);
      sub_1D5B76B10(v32, v31);
      if (swift_dynamicCast())
      {
        goto LABEL_5;
      }

      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v29 = a2;
      v29[1] = a3;
      v29[2] = 0x676E69727453;
      v29[3] = 0xE600000000000000;
      v29[4] = 0x676E69727453;
      v29[5] = 0xE600000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_7:
      v19 = v32;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v19);
      return a3;
    }

    goto LABEL_3;
  }

  if (((1 << v12) & 0x36FC) == 0)
  {
    if (v12 == 8)
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v21 = a5[5];
      v40[4] = a5[4];
      v40[5] = v21;
      v40[6] = a5[6];
      v22 = a5[1];
      v40[0] = *a5;
      v40[1] = v22;
      v23 = a5[3];
      v40[2] = a5[2];
      v40[3] = v23;
      swift_retain_n();

      v24 = sub_1D6B7DC5C(v20, a2, a3, a4, v40);
      if (!v5)
      {
        a3 = v24;
      }

      return a3;
    }

    if (v12 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v25 = a2;
      v25[1] = a3;
      v25[2] = 0x676E69727453;
      v25[3] = 0xE600000000000000;
      v25[4] = 0x7463617274736261;
      v25[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return a3;
    }

    goto LABEL_14;
  }

LABEL_3:
  v30 = a1;
  sub_1D6BE73AC(v31);
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_1D632A5E4(v31, sub_1D6B85540, a4, v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  if (!v5)
  {
    sub_1D5B76B10(v32, v31);
    if (swift_dynamicCast())
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v32);
      return v30;
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    v16 = v15;
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    swift_getDynamicType();

    v17 = sub_1D7264C5C();
    *v16 = a2;
    v16[1] = a3;
    v16[2] = 0x676E69727453;
    v16[3] = 0xE600000000000000;
    v16[4] = v17;
    v16[5] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  return a3;
}

void sub_1D6B7E138(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, unint64_t *a6@<X8>)
{
  v11 = a5[5];
  v37 = a5[4];
  v38 = v11;
  v39 = a5[6];
  v12 = a5[1];
  v33 = *a5;
  v34 = v12;
  v13 = a5[3];
  v14 = a1 >> 60;
  v35 = a5[2];
  v36 = v13;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v30 = a1;
      sub_1D6BE73AC(v31);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v31, sub_1D6B85540, a4, v32);
      __swift_destroy_boxed_opaque_existential_1(v31);
      if (v6)
      {
        return;
      }

      sub_1D5B76B10(v32, v31);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v32);
        *a6 = v30;
        return;
      }

      sub_1D5C8500C(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      swift_getDynamicType();

      v19 = sub_1D7264C5C();
      *v18 = a2;
      v18[1] = a3;
      v18[2] = 0x6F4674616D726F46;
      v18[3] = 0xEA0000000000746ELL;
      v18[4] = v19;
      v18[5] = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v23 = a5[5];
      v40[4] = a5[4];
      v40[5] = v23;
      v40[6] = a5[6];
      v24 = a5[1];
      v40[0] = *a5;
      v40[1] = v24;
      v25 = a5[3];
      v40[2] = a5[2];
      v40[3] = v25;
      swift_retain_n();

      sub_1D6B7E138(v22, a2, a3, a4, v40, a6);

      return;
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v26 = a2;
      v26[1] = a3;
      v26[2] = 0x6F4674616D726F46;
      v26[3] = 0xEA0000000000746ELL;
      v26[4] = 0x7463617274736261;
      v26[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v31[3] = MEMORY[0x1E69E6158];
  v31[0] = v28;
  v31[1] = v27;
  MEMORY[0x1EEE9AC00](v27, a2);

  sub_1D632A5E4(v31, sub_1D6B85540, a4, v32);
  v21 = v31;
  if (v6)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1D5B76B10(v32, v31);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C8500C(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v29 = a2;
  v29[1] = a3;
  v29[2] = 0x6F4674616D726F46;
  v29[3] = 0xEA0000000000746ELL;
  v29[4] = 0x676E69727453;
  v29[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v21 = v32;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1D6B7E640(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, unint64_t *a6@<X8>)
{
  v11 = a5[5];
  v37 = a5[4];
  v38 = v11;
  v39 = a5[6];
  v12 = a5[1];
  v33 = *a5;
  v34 = v12;
  v13 = a5[3];
  v14 = a1 >> 60;
  v35 = a5[2];
  v36 = v13;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v30 = a1;
      sub_1D6BE73AC(v31);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v31, sub_1D6B85540, a4, v32);
      __swift_destroy_boxed_opaque_existential_1(v31);
      if (v6)
      {
        return;
      }

      sub_1D5B76B10(v32, v31);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v32);
        *a6 = v30;
        return;
      }

      sub_1D5C84FF4(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      swift_getDynamicType();

      v19 = sub_1D7264C5C();
      *v18 = a2;
      v18[1] = a3;
      v18[2] = 0x6F4374616D726F46;
      v18[3] = 0xEB00000000726F6CLL;
      v18[4] = v19;
      v18[5] = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v23 = a5[5];
      v40[4] = a5[4];
      v40[5] = v23;
      v40[6] = a5[6];
      v24 = a5[1];
      v40[0] = *a5;
      v40[1] = v24;
      v25 = a5[3];
      v40[2] = a5[2];
      v40[3] = v25;
      swift_retain_n();

      sub_1D6B7E640(v22, a2, a3, a4, v40, a6);

      return;
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v26 = a2;
      v26[1] = a3;
      v26[2] = 0x6F4374616D726F46;
      v26[3] = 0xEB00000000726F6CLL;
      v26[4] = 0x7463617274736261;
      v26[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v31[3] = MEMORY[0x1E69E6158];
  v31[0] = v28;
  v31[1] = v27;
  MEMORY[0x1EEE9AC00](v27, a2);

  sub_1D632A5E4(v31, sub_1D6B85540, a4, v32);
  v21 = v31;
  if (v6)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1D5B76B10(v32, v31);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C84FF4(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v29 = a2;
  v29[1] = a3;
  v29[2] = 0x6F4374616D726F46;
  v29[3] = 0xEB00000000726F6CLL;
  v29[4] = 0x676E69727453;
  v29[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v21 = v32;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1D6B7EB54(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, char *a6@<X8>)
{
  v57 = a3;
  v58 = a4;
  v55 = a6;
  v56 = a2;
  sub_1D5D27E80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v54 - v14;
  v16 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v25 = &v54 - v24;
  v26 = a5[5];
  v62[4] = a5[4];
  v62[5] = v26;
  v62[6] = a5[6];
  v27 = a5[1];
  v62[0] = *a5;
  v62[1] = v27;
  v28 = a5[3];
  v29 = a1 >> 60;
  v62[2] = a5[2];
  v62[3] = v28;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v29) & 0x36FC) != 0)
    {
LABEL_3:
      v30 = v23;
      v59 = a1;
      sub_1D6BE73AC(v60);
      MEMORY[0x1EEE9AC00](v31, v32);
      *(&v54 - 2) = v62;
      v33 = v64;
      sub_1D632A5E4(v60, sub_1D6B85540, v58, v61);
      __swift_destroy_boxed_opaque_existential_1(v60);
      if (v33)
      {
        return;
      }

      sub_1D5B76B10(v61, v60);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v61);
        (*(v30 + 56))(v15, 0, 1, v16);
        v34 = *(v30 + 32);
        v34(v25, v15, v16);
        v34(v55, v25, v16);
        return;
      }

      (*(v30 + 56))(v15, 1, 1, v16);
      sub_1D5D282A8(v15, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v36 = v35;
      __swift_project_boxed_opaque_existential_1(v61, v61[3]);
      swift_getDynamicType();
      v37 = v57;

      v38 = sub_1D7264C5C();
      *v36 = v56;
      v36[1] = v37;
      v36[2] = 5001813;
      v36[3] = 0xE300000000000000;
      v36[4] = v38;
      v36[5] = v39;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v29 == 8)
    {
      v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v42 = a5[5];
      v63[4] = a5[4];
      v63[5] = v42;
      v63[6] = a5[6];
      v43 = a5[1];
      v63[0] = *a5;
      v63[1] = v43;
      v44 = a5[3];
      v63[2] = a5[2];
      v63[3] = v44;
      swift_retain_n();

      sub_1D6B7EB54(v41, v56, v57, v58, v63, v55);

      return;
    }

    if (v29 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v45 = v57;
      *v46 = v56;
      v46[1] = v45;
      v46[2] = 5001813;
      v46[3] = 0xE300000000000000;
      v46[4] = 0x7463617274736261;
      v46[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v29)
  {
    goto LABEL_3;
  }

  v47 = v23;
  v49 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v60[3] = MEMORY[0x1E69E6158];
  v60[0] = v49;
  v60[1] = v48;
  MEMORY[0x1EEE9AC00](v48, v22);
  *(&v54 - 2) = v62;

  v50 = v64;
  sub_1D632A5E4(v60, sub_1D6B85464, v58, v61);
  v40 = v60;
  if (v50)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v60);
  sub_1D5B76B10(v61, v60);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
    (*(v47 + 56))(v11, 0, 1, v16);
    v51 = *(v47 + 32);
    v51(v19, v11, v16);
    v51(v55, v19, v16);
    return;
  }

  (*(v47 + 56))(v11, 1, 1, v16);
  sub_1D5D282A8(v11, &qword_1EDF45B40, MEMORY[0x1E6968FB0], sub_1D5D27E80);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  v52 = v57;
  *v53 = v56;
  v53[1] = v52;
  v53[2] = 5001813;
  v53[3] = 0xE300000000000000;
  v53[4] = 0x676E69727453;
  v53[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v40 = v61;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v40);
}

void sub_1D6B7F2F4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void (*a7)(_OWORD *__return_ptr, void *, uint64_t *)@<X7>, unint64_t *a8@<X8>)
{
  v33[4] = a5;
  v14 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v31 = a1;
      sub_1D6BE73AC(v32);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v32, a7, a4, v33);
      __swift_destroy_boxed_opaque_existential_1(v32);
      if (v8)
      {
        return;
      }

      sub_1D5B76B10(v33, v32);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v33);
        *a8 = v31;
        return;
      }

      sub_1D5C8500C(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      swift_getDynamicType();

      v19 = sub_1D7264C5C();
      *v18 = a2;
      v18[1] = a3;
      v18[2] = 0x6F4674616D726F46;
      v18[3] = 0xEA0000000000746ELL;
      v18[4] = v19;
      v18[5] = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      a6(v22, a2, a3, a4, a5);

      return;
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v25 = a2;
      v25[1] = a3;
      v25[2] = 0x6F4674616D726F46;
      v25[3] = 0xEA0000000000746ELL;
      v25[4] = 0x7463617274736261;
      v25[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v32[3] = MEMORY[0x1E69E6158];
  v32[0] = v27;
  v32[1] = v26;
  MEMORY[0x1EEE9AC00](v26, a2);
  v29 = v28;

  sub_1D632A5E4(v32, v29, a4, v33);
  v21 = v32;
  if (v8)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_1D5B76B10(v33, v32);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C8500C(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v30 = a2;
  v30[1] = a3;
  v30[2] = 0x6F4674616D726F46;
  v30[3] = 0xEA0000000000746ELL;
  v30[4] = 0x676E69727453;
  v30[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v21 = v33;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1D6B7F7F8(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void (*a7)(_OWORD *__return_ptr, void *, uint64_t *)@<X7>, unint64_t *a8@<X8>)
{
  v33[4] = a5;
  v14 = a1 >> 60;
  if ((a1 >> 60) <= 0xD)
  {
    if (((1 << v14) & 0x36FC) != 0)
    {
LABEL_3:
      v31 = a1;
      sub_1D6BE73AC(v32);
      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D632A5E4(v32, a7, a4, v33);
      __swift_destroy_boxed_opaque_existential_1(v32);
      if (v8)
      {
        return;
      }

      sub_1D5B76B10(v33, v32);
      if (swift_dynamicCast())
      {
LABEL_5:
        __swift_destroy_boxed_opaque_existential_1(v33);
        *a8 = v31;
        return;
      }

      sub_1D5C84FF4(0xF000000000000007);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      swift_getDynamicType();

      v19 = sub_1D7264C5C();
      *v18 = a2;
      v18[1] = a3;
      v18[2] = 0x6F4374616D726F46;
      v18[3] = 0xEB00000000726F6CLL;
      v18[4] = v19;
      v18[5] = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_7;
    }

    if (v14 == 8)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      a6(v22, a2, a3, a4, a5);

      return;
    }

    if (v14 == 11)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v25 = a2;
      v25[1] = a3;
      v25[2] = 0x6F4374616D726F46;
      v25[3] = 0xEB00000000726F6CLL;
      v25[4] = 0x7463617274736261;
      v25[5] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v32[3] = MEMORY[0x1E69E6158];
  v32[0] = v27;
  v32[1] = v26;
  MEMORY[0x1EEE9AC00](v26, a2);
  v29 = v28;

  sub_1D632A5E4(v32, v29, a4, v33);
  v21 = v32;
  if (v8)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_1D5B76B10(v33, v32);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_1D5C84FF4(0xF000000000000007);
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v30 = a2;
  v30[1] = a3;
  v30[2] = 0x6F4374616D726F46;
  v30[3] = 0xEB00000000726F6CLL;
  v30[4] = 0x676E69727453;
  v30[5] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_7:
  v21 = v33;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v21);
}