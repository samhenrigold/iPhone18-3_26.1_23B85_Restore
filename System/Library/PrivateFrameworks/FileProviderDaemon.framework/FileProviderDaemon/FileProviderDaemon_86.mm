uint64_t objectdestroy_448Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF8F7F94(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v5);
  v9 = *(v1 + v6);
  v10 = *v8;
  v11 = v8[1];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8ADBFC(a1, v1 + v4, v10, v11, v9, v12, v13);
}

uint64_t objectdestroy_403Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_362Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_351Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_340Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_330Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_224Tm()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t objectdestroy_209Tm_0()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_215Tm()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF8F841C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 0;
  v5 = 0;
  return v2(a1, &v5, &v4);
}

uint64_t objectdestroy_147Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_140Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_127Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1CF8F85EC(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1CF863A10(a1, v6, v1 + v4, v7, v9, v10);
}

uint64_t sub_1CF8F869C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CF0264D8;

  return sub_1CF863384(v2, v3, v4);
}

uint64_t objectdestroy_102Tm_0()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1CF8F884C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  sub_1CF8575D4(a1, v7, v1 + v4, v9, v10, v11);
}

uint64_t objectdestroy_84Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_70Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_41Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1CF8F89F4(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

unint64_t sub_1CF8F8A20(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t objectdestroy_1840Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  if (!(*(*(v5 - 1) + 48))(v0 + v2, 1, v5))
  {
    v34 = v3;
    v6 = sub_1CF9E5D98();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = v5[5];
    v8 = sub_1CF9E5CF8();
    v9 = *(v8 - 8);
    v10 = *(v9 + 8);
    v10(v4 + v7, v8);
    v11 = v5[6];
    if (!(*(v9 + 48))(v4 + v11, 1, v8))
    {
      v10(v4 + v11, v8);
    }

    *(v4 + v5[7]), v12, v13, v14, v15, v16, v17, v18;
    *(v4 + v5[8]), v19, v20, v21, v22, v23, v24, v25;
    *(v4 + v5[9]), v26, v27, v28, v29, v30, v31, v32;

    v10(v4 + v5[13], v8);
    v3 = v34;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF8F8D2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CF0264D8;

  return sub_1CF810E34(a1, v4, v5, v6);
}

uint64_t sub_1CF8F8DE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CF0264D8;

  return sub_1CF811050(a1, v4, v5, v6);
}

void sub_1CF8F8F14(void *a1@<X0>, void *a2@<X8>)
{
  sub_1CF7FBE94(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = v5;
  }
}

void sub_1CF8F8F44()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF7F0FF8(v3, (v0 + 24), v0 + v2, v4);
}

void *sub_1CF8F9070@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_1CF8F90B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

void sub_1CF8F9304(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF35BCF4(v3, v1, v2);
}

void sub_1CF8F9370(uint64_t a1)
{
  v3 = *(type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF86F980(a1, v5, v6, v1 + v4, v8, v7);
}

uint64_t sub_1CF8F9414(uint64_t a1)
{
  v3 = *(type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF86FB6C(*(v1 + 24), a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF8F9524(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v3 + 16);
  v7 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v6, v3 + v5, v7);
}

unint64_t sub_1CF8F95C4()
{
  result = qword_1EC4C4E90;
  if (!qword_1EC4C4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4E90);
  }

  return result;
}

uint64_t sub_1CF8F9640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 64);
  v9 = *(a1 + 96);
  v17 = *(a1 + 80);
  v8 = v17;
  v18 = v9;
  v19 = *(a1 + 112);
  v10 = v19;
  v11 = *(a1 + 16);
  v16[0] = *a1;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = v7;
  *a5 = v16[0];
  *(a5 + 16) = v11;
  *(a5 + 32) = v12;
  *(a5 + 48) = v13;
  *(a5 + 64) = v7;
  *(a5 + 80) = v8;
  *(a5 + 96) = v9;
  *(a5 + 112) = v10;
  sub_1CEFCCBDC(v16, v15, a2, a3);
  return a4(a5, 0x16180000D034200);
}

uint64_t sub_1CF8F9704(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8377D0(a1, v1 + v4, v5);
}

void sub_1CF8F97A0()
{
  if (*(v0 + 16))
  {
    sub_1CF6C0474();
  }
}

uint64_t objectdestroy_28Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF8F9824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF835EFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF8F98EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CF0264D8;

  return sub_1CF881F8C(a1, v4, v5, v6);
}

unint64_t sub_1CF8F99A0(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void sub_1CF8F99BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t sub_1CF8F99E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[0] = 0;
  v4[1] = 0;
  return v2(v4, a1);
}

uint64_t sub_1CF8F9A6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF805EF4(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1CF8F9ACC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF742688(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1CF8F9B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CF8F9B78()
{
  result = qword_1EC4C4F10;
  if (!qword_1EC4C4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4F10);
  }

  return result;
}

uint64_t sub_1CF8F9BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF8D7818(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF8F9CC0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48) | (*(v1 + 49) << 8);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0262EC;

  return sub_1CF8D5CC0(a1, v11, v4, v5, v6, v7, v8, v1 + 64);
}

void sub_1CF8F9F6C(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1CF9E5A58() - 8);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = v1 + ((*(v9 + 80) + v8 + 8) & ~*(v9 + 80));

  sub_1CF84F278(a1, v1 + v4, v10, v11, v12, v13, v14, v15);
}

uint64_t objectdestroy_2359Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v135 = *(*(v1 - 1) + 80);
  v133 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v136 = *(v2 - 8);
  v137 = v2;
  v132 = *(v136 + 80);

  v134 = (v135 + 24) & ~v135;
  v3 = v0 + v134;
  *(v0 + v134 + 40), v4, v5, v6, v7, v8, v9, v10;
  v11 = v0 + v134 + v1[7];
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  *(v11 + v12[14] + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v12[30];
  if (!(*(v15 + 48))(v11 + v24, 1, v14))
  {
    v16(v11 + v24, v14);
  }

  *(v11 + v12[31]), v25, v26, v27, v28, v29, v30, v31;
  *(v11 + v12[33]), v32, v33, v34, v35, v36, v37, v38;
  v45 = (v11 + v12[34]);
  v46 = v45[1];
  if (v46 >> 60 != 15)
  {
    sub_1CEFE4714(*v45, v46);
  }

  *(v11 + v12[38] + 8), v46, v39, v40, v41, v42, v43, v44;
  v47 = v3 + v1[8];
  v48 = *(v47 + 16);
  if (v48 != 1)
  {

    *(v47 + 48), v49, v50, v51, v52, v53, v54, v55;
    *(v47 + 64), v56, v57, v58, v59, v60, v61, v62;
    *(v47 + 88), v63, v64, v65, v66, v67, v68, v69;

    *(v47 + 120), v70, v71, v72, v73, v74, v75, v76;
    *(v47 + 136), v77, v78, v79, v80, v81, v82, v83;
    *(v47 + 152), v84, v85, v86, v87, v88, v89, v90;
    *(v47 + 168), v91, v92, v93, v94, v95, v96, v97;
    *(v47 + 184), v98, v99, v100, v101, v102, v103, v104;
    v112 = *(v47 + 192);
    if (v112)
    {
      v112, v105, v106, v107, v108, v109, v110, v111;
      *(v47 + 200), v113, v114, v115, v116, v117, v118, v119;
    }

    *(v47 + 224), v105, v106, v107, v108, v109, v110, v111;
    *(v47 + 240), v120, v121, v122, v123, v124, v125, v126;
  }

  v127 = v1[12];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v128 - 8) + 48))(v3 + v127, 1, v128) && !(*(v136 + 48))(v3 + v127, 1, v137))
  {
    (*(v136 + 8))(v3 + v127, v137);
  }

  v129 = (v133 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CEFD0A98(*(v0 + v129));

  (*(v136 + 8))(v0 + ((v132 + ((v130 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v132), v137);

  return swift_deallocObject();
}

uint64_t sub_1CF8FA488(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void, void, void, void, unint64_t))
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1CF9E5A58() - 8);
  return a2(a1, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((*(v9 + 80) + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v9 + 80)));
}

uint64_t objectdestroy_2265Tm()
{

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

double sub_1CF8FA5EC(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_1CF8CBF28(a1, v4, v5, v6, v9, v7, v8, v10);
}

uint64_t sub_1CF8FA66C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5[0] = 0;
  v5[1] = 0;
  v4 = 0;
  return v2(v5, &v4, a1);
}

uint64_t sub_1CF8FA6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v7 = a3;
  return v5(v8, &v7, a4);
}

void sub_1CF8FA810(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8CD304(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + v6), v1 + v8, *(v1 + v9), *(v1 + v9 + 8));
}

void sub_1CF8FA950(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) - 8);
  v10 = (*(v9 + 80) + v8 + 8) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8CE080(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), v1 + v10, *(v1 + v11), *(v1 + v11 + 8));
}

uint64_t sub_1CF8FAAB0(uint64_t a1, NSObject *a2, void *a3, uint64_t a4, uint64_t a5, objc_class **a6, _DWORD *a7, void *a8)
{
  v17 = *(type metadata accessor for StagedRemoteVersion(0) - 8);
  v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8CF150(a1, a2, a3, a4, a5, a6, a7, a8, v8 + v18, *(v8 + v19), *(v8 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v8 + ((((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF8FABC0(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 16) & ~v4;
  v9 = (v6 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8CF9B0(a1, *(v1 + 16), v1 + v5, *(v1 + v7), *(v1 + v7 + 8), v1 + v8, *(v1 + v9), *(v1 + v10), v1 + v12, *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF8FAD64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v6 = *(v1 + 32);
  v5 = v3;
  return v2(&v6, &v5, a1);
}

uint64_t objectdestroy_640Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v4));

  return swift_deallocObject();
}

double sub_1CF8FAE94(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8C53A0(a1, v5, v6, v7, v8, v1 + v4, v9);
}

double sub_1CF8FAF38(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8C56BC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1CF8FAFF8()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 584) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C8968(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), (v0 + 64), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FB0B8(char *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C5EE8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF8FB178(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8C6C78(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FB254(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C701C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FB3B0(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 568) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C961C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + 48, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FB498(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8CA160(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_2605Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF8FB658()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 32);

  return sub_1CF28BD04(v3, v4, v8, v5, v6, v0 + v2, v7);
}

uint64_t objectdestroy_2268Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v5));

  return swift_deallocObject();
}

void sub_1CF8FB838(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF84DB6C(a1, v6, v7, v1 + v4, v9, v10, v11);
}

uint64_t objectdestroy_637Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4 + 8), v5, v6, v7, v8, v9, v10, v11;
  sub_1CEFD0A98(*(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

double sub_1CF8FB9F0(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8C0EA8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FBAB0(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C11F8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FBB8C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C34E0(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF8FBC7C(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF80B204(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v7 + 9), *(v1 + ((v7 + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_1829Tm(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return swift_deallocObject();
}

void sub_1CF8FBDD0(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF80BB68(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v7 + 9), *(v1 + ((v7 + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_2809Tm()
{

  sub_1CEFD0A98(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t objectdestroy_2816Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4 + 8), v5, v6, v7, v8, v9, v10, v11;

  return swift_deallocObject();
}

uint64_t sub_1CF8FC124()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + 32);

  return sub_1CF289008(v3, v4, v10, v5, v6, v0 + v2, v8, v9);
}

uint64_t objectdestroy_3051Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_3088Tm()
{

  return swift_deallocObject();
}

void sub_1CF8FC3E0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = [*(a1 + 48) getAlternateContentsURLWrapperForItemID_];
  v2();
}

uint64_t objectdestroy_77Tm_0(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1CF8FC49C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  [*(a1 + 48) setAlternateContentsURLWrapper:v1[2] forDocumentWithItemID:v2];
  return v3(v2, 0);
}

uint64_t objectdestroy_3211Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_3285Tm()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1CF8FC8B8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF5AD9F8(v3, v1, v2);
}

unint64_t sub_1CF8FC9C0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1CEFD0A98(result);
  }

  return result;
}

uint64_t objectdestroy_3371Tm()
{

  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_3282Tm()
{

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

void sub_1CF8FCB1C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v3 = *(v1 + 16);

  sub_1CF81C408(a1, v3);
}

uint64_t objectdestroy_875Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

void sub_1CF8FCD38(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1CF9E5A58() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8B496C(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), (v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_2496Tm()
{

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF8FCF24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 0;
  v5 = 0;
  return v2(&v5, &v4, a1);
}

uint64_t sub_1CF8FCF78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

double sub_1CF8FCFF0(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1CF9E5A58() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1CF8B2048(a1, *(v1 + 16), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), (v1 + v8), *v9, *(v9 + 8));
}

void sub_1CF8FD168(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8B36B8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FD23C(void *a1, char a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));
  v10 = *(v9 + *(v5 + 64));

  sub_1CF8B12B4(a1, a2 & 1, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_3621Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1CF8FD3B4(unint64_t a1, void *a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));
  v10 = v9[*(v5 + 64)];

  sub_1CF8B1504(a1, a2, v6, v7, v8, v9, v10);
}

id sub_1CF8FD45C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_1CF8B0088(*a1, *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t sub_1CF8FD4A4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v5 = v1[5];
  v6 = v3;
  return v2(&v6, &v5, a1);
}

void sub_1CF8FD4EC(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1CF9E5A58() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8AFD10(a1, (v1 + v4), v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FD604(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1CF9E5A58() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  sub_1CF8AE234(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), v1 + v8, *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_3743Tm()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t objectdestroy_435Tm()
{
  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

ssize_t sub_1CF8FD974@<X0>(ssize_t *a1@<X8>)
{
  result = fgetxattr(*(v1 + 16), "com.apple.fileprovider.trash-put-back#PN", 0, 0, 0, 0);
  *a1 = result;
  return result;
}

ssize_t sub_1CF8FD9D8@<X0>(ssize_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 32) - v3;
  }

  else
  {
    v4 = 0;
  }

  result = fgetxattr(*(v1 + 16), "com.apple.fileprovider.trash-put-back#PN", v3, v4, 0, 0);
  *a1 = result;
  return result;
}

void sub_1CF8FDA2C(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1CF8FDA7C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t objectdestroy_3812Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_3816Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v157 = (((((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v3 = v0 + v2;
  *(v0 + v2 + 24), v4, v5, v6, v7, v8, v9, v10;
  v11 = v3 + v1[12];
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  *(v11 + v12[14] + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v12[30];
  if (!(*(v15 + 48))(v11 + v24, 1, v14))
  {
    v16(v11 + v24, v14);
  }

  v32 = (((((((v157 + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v11 + v12[31]), v25, v26, v27, v28, v29, v30, v31;
  *(v11 + v12[33]), v33, v34, v35, v36, v37, v38, v39;
  v46 = (v11 + v12[34]);
  v47 = v46[1];
  if (v47 >> 60 != 15)
  {
    sub_1CEFE4714(*v46, v47);
  }

  *(v11 + v12[38] + 8), v47, v40, v41, v42, v43, v44, v45;

  *(v0 + v157 + 32), v48, v49, v50, v51, v52, v53, v54;
  *(v0 + v157 + 64), v55, v56, v57, v58, v59, v60, v61;
  *(v0 + v157 + 72), v62, v63, v64, v65, v66, v67, v68;
  *(v0 + v157 + 88), v69, v70, v71, v72, v73, v74, v75;

  v76 = v0 + v32;
  v77 = *(v0 + v32 + 16);
  if (v77 != 1)
  {

    *(v76 + 48), v78, v79, v80, v81, v82, v83, v84;
    *(v76 + 64), v85, v86, v87, v88, v89, v90, v91;
    *(v76 + 88), v92, v93, v94, v95, v96, v97, v98;

    *(v76 + 120), v99, v100, v101, v102, v103, v104, v105;
    *(v76 + 136), v106, v107, v108, v109, v110, v111, v112;
    *(v76 + 152), v113, v114, v115, v116, v117, v118, v119;
    *(v76 + 168), v120, v121, v122, v123, v124, v125, v126;
    *(v76 + 184), v127, v128, v129, v130, v131, v132, v133;
    v141 = *(v76 + 192);
    if (v141)
    {
      v141, v134, v135, v136, v137, v138, v139, v140;
      *(v76 + 200), v142, v143, v144, v145, v146, v147, v148;
    }

    *(v76 + 224), v134, v135, v136, v137, v138, v139, v140;
    *(v76 + 240), v149, v150, v151, v152, v153, v154, v155;
  }

  return swift_deallocObject();
}

id sub_1CF8FDE38(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_521Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF8FDECC()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1CF89C600(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v2, *v3, v3[1]);
}

void sub_1CF8FDFDC()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = *(v1 + 80);
  sub_1CF896D34(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v0 + ((v2 + 96) & ~v2), v0 + ((*(v1 + 64) + v2 + ((v2 + 96) & ~v2)) & ~v2));
}

uint64_t sub_1CF8FE0B0(uint64_t (*a1)(void, void, void, void, void, void, char *, char *, void, void, void))
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  return a1(*(v1 + 2), *(v1 + 3), *(v1 + 4), *(v1 + 5), *(v1 + 6), *(v1 + 7), &v1[v5], &v1[v7], *&v1[(v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8], *&v1[(((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8], *&v1[((((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8]);
}

uint64_t objectdestroy_4054Tm()
{

  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

void sub_1CF8FE238()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1CF8247B4(v2, v3, v4, v5);
}

uint64_t sub_1CF8FE2A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1CF8253D0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1CF8FE39C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CF0264D8;

  return sub_1CF025C74(a1, v4, v5, v6, v1 + 5, v7, v8, v9);
}

uint64_t sub_1CF8FE49C(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1CF7D8E9C(a1, a2 & 1, v6, v7, v8);
}

uint64_t objectdestroy_854Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2310Tm(uint64_t a1)
{

  sub_1CEFD0A98(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_2936Tm()
{
  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_387Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 40));
  sub_1CEFD0A98(*(v2 + 48));

  return swift_deallocObject();
}

uint64_t sub_1CF8FE800()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF2A7478(v0 + v2, v3);
}

uint64_t sub_1CF8FE974(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void, void))
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a2(a1, *(v2 + 16), v2 + v6, *v7, v7[1]);
}

uint64_t sub_1CF8FEA80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3181Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_4702Tm()
{
  sub_1CF8F99BC(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF8FED0C()
{
  result = *(*(v0 + 16) + 16);
  if ((*(result + qword_1EDEBBE10) & 1) == 0)
  {
    v2 = *(v0 + 32);
    *(result + qword_1EDEBBE10) = 1;
    return sub_1CF8306AC(result, v2);
  }

  return result;
}

void sub_1CF8FEE44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF87D638(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v2, *(v0 + v4) | (*(v0 + v4 + 4) << 32), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 9), *(v0 + v6 + 10), *(v0 + ((v5 + 35) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 35) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_597Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 24));
  a2(*(v3 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF8FF0CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF806838(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), sub_1CF3C81F4);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CF8FF13C@<X0>(uint64_t (*a1)(void, void, void, void, void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF8FF198@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF806838(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), sub_1CF3C7FA4);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1CF8FF208(void *a1@<X8>)
{
  sub_1CF742834(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t objectdestroy_842Tm()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF8FF2D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1CF8FF314(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1CF4E43E0(MEMORY[0x1E69E7CC0]);
  v3(v4, a1);

  v4, v5, v6, v7, v8, v9, v10, v11;
}

void sub_1CF8FF464(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF87563C(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FF5AC(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8750A0(a1, *(v1 + 16), (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_4994Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v133 = *(*(v1 - 1) + 80);
  v131 = *(*(v1 - 1) + 64);

  v132 = (v133 + 24) & ~v133;
  v2 = v0 + v132;
  *(v0 + v132 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v132 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  sub_1CEFD0A98(*(v0 + ((((v131 + v132 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF8FF9E0(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF80E7B0(a1, *(v1 + 16), (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1CF8FFA94(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8771F4(a1, v5, v1 + v4, v6);
}

uint64_t objectdestroy_5037Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v131 + 24) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_180Tm(uint64_t a1)
{

  return swift_deallocObject();
}

void sub_1CF900054()
{
  v1 = *(v0 + 16);
  v2 = sub_1CF8403B4();
  v1(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0, v2);
}

uint64_t sub_1CF900104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = a3;
  v7 = a2;
  return v4(a1, &v7, &v6);
}

uint64_t objectdestroy_162Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF90019C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v5 = v1[5];
  v6 = v3;
  return v2(a1, &v6, &v5);
}

uint64_t objectdestroy_4184Tm(uint64_t a1)
{

  sub_1CEFD0A98(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1CF900244(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF86721C(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF9002F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 0;
  return v2(&v4, a1);
}

uint64_t sub_1CF900360@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_fget_parent_syncroot();
  *a1 = result;
  return result;
}

uint64_t sub_1CF900398@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_fget_syncroot();
  *a1 = result;
  return result;
}

uint64_t sub_1CF9003D8(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1CF9E5A58() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1CF862764(a1, v1 + v4, v7, v8, v9);
}

uint64_t objectdestroy_815Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF900518(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF860BD8(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t objectdestroy_3607Tm(void (*a1)(void))
{

  a1(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1CF900634(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF85B210(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF9006E8@<X0>(_DWORD *a1@<X8>)
{
  if (*(v1 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v1 + 40);
  if (*(v1 + 42))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1CF9CAD3C(*(v1 + 16), *(v1 + 24), *(v1 + 32), v4 | v5, *(v1 + 44), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  *a1 = result;
  return result;
}

uint64_t objectdestroy_2836Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for TelemetrySignpost(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = *(type metadata accessor for TelemetrySignposter(0) + 24);
    v5 = sub_1CF9E6098();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF9008C8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1CF808658(a1, v1 + v4, v6, v7);
}

uint64_t objectdestroy_2839Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_1CEFD0A98(*(v0 + 16));
  v4 = type metadata accessor for TelemetrySignpost(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    v5 = *(type metadata accessor for TelemetrySignposter(0) + 24);
    v6 = sub_1CF9E6098();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF900B28(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8089EC(a1, *(v1 + 16), v1 + v4, *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1CF900C5C(void *a1@<X8>)
{
  sub_1CF7424E0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
  }
}

uint64_t objectdestroy_99Tm_0()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v4));

  return swift_deallocObject();
}

void sub_1CF900DFC()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 17);

  sub_1CF85547C(v4, (v0 + v2), v5, v7, v8, v9, v10);
}

uint64_t sub_1CF900ED0(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void))
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return a2(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_4786Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1CF9010AC(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1CF85808C(a1, v1 + v4, v6, v7);
}

void sub_1CF90114C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_1CF855990(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

uint64_t sub_1CF901218@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

void sub_1CF90124C(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF856A90(a1, *(v1 + 16), (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1CF901334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CF0262EC;

  return sub_1CF025C74(a1, v4, v5, v6, v1 + 5, v7, v8, v9);
}

uint64_t objectdestroy_5656Tm()
{

  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_5687Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v133 = *(*(v1 - 1) + 80);
  v131 = *(*(v1 - 1) + 64);

  v132 = (v133 + 40) & ~v133;
  v2 = v0 + v132;
  *(v0 + v132 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v132 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  sub_1CEFD0A98(*(v0 + ((v131 + v132 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

void sub_1CF901918(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for VFSItem(0) - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF852BAC(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3);
}

uint64_t objectdestroy_4262Tm()
{
  swift_unknownObjectRelease();

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_3279Tm()
{

  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_3269Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_3365Tm()
{

  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_230Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_5742Tm()
{

  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

void sub_1CF901E74(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8482C8(a1, (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF901FB0(void *a1, _TtC18FileProviderDaemon8FSTester *a2, _TtC18FileProviderDaemon8FSTester *a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a4)
  {
  }

  else
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    a3, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1CF902000()
{
  if (*(v0 + 40) == 1)
  {
    sub_1CF746824(*(v0 + 16));
  }
}

double sub_1CF902038(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v5 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1CF902088@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CF8035F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
  return result;
}

uint64_t objectdestroy_1306Tm()
{

  return swift_deallocObject();
}

void sub_1CF90218C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF8070F8(v3, v0 + v2, v4);
}

uint64_t objectdestroy_5861Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF9022FC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1CF9023AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a3(a1, v3 + v6, v8, v9);
}

uint64_t objectdestroy_227Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_34Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroy_1653Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = sub_1CF9E5A58();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1CF902604()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1CF806CE8((v0 + v2), *v3, v3[1]);
}

uint64_t sub_1CF9026C4(uint64_t a1)
{
  result = type metadata accessor for VFSCounters(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DBCounters(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SnapshotCounters(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1CF902760()
{
  result = qword_1EC4C5118;
  if (!qword_1EC4C5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5118);
  }

  return result;
}

unint64_t sub_1CF9027C8()
{
  result = qword_1EC4C5158;
  if (!qword_1EC4C5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5158);
  }

  return result;
}

unint64_t sub_1CF902820()
{
  result = qword_1EC4C5160;
  if (!qword_1EC4C5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5160);
  }

  return result;
}

unint64_t sub_1CF902878()
{
  result = qword_1EC4C5168;
  if (!qword_1EC4C5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5168);
  }

  return result;
}

void sub_1CF9034D8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for FPFSMaterializedSetAnchor(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5B88();
  v13 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(v12);
      sub_1CEFE4714(v11, v12);
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    v21 = HIDWORD(v11);
    v22 = v11;
    sub_1CEFE4714(v11, v12);
    if (!__OFSUB__(v21, v22))
    {
      if (v21 == v22)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    return;
  }

  if (v13 != 2)
  {
    v23 = v12;
    v24 = v11;

    sub_1CEFE4714(v24, v23);
    goto LABEL_14;
  }

  v16 = *(v11 + 16);
  v15 = *(v11 + 24);
  sub_1CEFE4714(v11, v12);
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v15 == v16)
  {
LABEL_12:

LABEL_14:
    v25 = sub_1CF9E5D98();
    (*(*(v25 - 8) + 32))(a3, a2, v25);
LABEL_15:
    *(a3 + *(v8 + 20)) = 0;
    return;
  }

LABEL_8:
  v30 = a2;
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v17 = sub_1CF9E5B88();
  v19 = v18;
  sub_1CF9040B4(&qword_1EC4C5170, type metadata accessor for FPFSMaterializedSetAnchor, &unk_1CFA1876C);
  sub_1CF9E5668();
  if (v4)
  {
    v20 = sub_1CF9E5D98();
    (*(*(v20 - 8) + 8))(v30, v20);
    sub_1CEFE4714(v17, v19);

    return;
  }

  sub_1CEFE4714(v17, v19);
  v26 = sub_1CF9E5D98();
  sub_1CF9040B4(&qword_1EDEAECC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v27 = v30;
  v28 = sub_1CF9E6868();

  if ((v28 & 1) == 0)
  {
    sub_1CF903868(v10);
    (*(*(v26 - 8) + 32))(a3, v27, v26);
    goto LABEL_15;
  }

  (*(*(v26 - 8) + 8))(v27, v26);
  sub_1CF9038C4(v10, a3);
}

uint64_t type metadata accessor for FPFSMaterializedSetAnchor(uint64_t a1)
{
  result = qword_1EC4C5178;
  if (!qword_1EC4C5178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF903868(uint64_t a1)
{
  v2 = type metadata accessor for FPFSMaterializedSetAnchor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF9038C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPFSMaterializedSetAnchor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF903950(uint64_t a1)
{
  result = sub_1CF9E5D98();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF9039C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5188, &qword_1CFA187C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF904060();
  sub_1CF9E82A8();
  v8[15] = 0;
  sub_1CF9E5D98();
  sub_1CF9040B4(&qword_1EDEAECC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1CF9E7F08();
  if (!v1)
  {
    type metadata accessor for FPFSMaterializedSetAnchor(0);
    v8[14] = 1;
    sub_1CF9E7EE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CF903B7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v20 = sub_1CF9E5D98();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5198, &qword_1CFA187C8);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for FPFSMaterializedSetAnchor(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF904060();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v10;
  v11 = v18;
  v23 = 0;
  sub_1CF9040B4(&qword_1EDEAECB8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v12 = v20;
  sub_1CF9E7D88();
  v13 = v16;
  (*(v11 + 32))(v16, v5, v12);
  v22 = 1;
  v14 = sub_1CF9E7D78();
  (*(v19 + 8))(v7, v21);
  *(v13 + *(v8 + 20)) = v14;
  sub_1CF9040FC(v13, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF903868(v13);
}

uint64_t sub_1CF903EB8()
{
  if (*v0)
  {
    return 0x726F68636E61;
  }

  else
  {
    return 0x444955556264;
  }
}

void sub_1CF903EE4(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, int64_t a3@<X2>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x444955556264 && a2 == 0xE600000000000000;
  if (v12 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {
    0xE600000000000000, a2, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_1CF903FB8(uint64_t a1)
{
  v2 = sub_1CF904060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF903FF4(uint64_t a1)
{
  v2 = sub_1CF904060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF904060()
{
  result = qword_1EC4C5190;
  if (!qword_1EC4C5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5190);
  }

  return result;
}

uint64_t sub_1CF9040B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF9040FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPFSMaterializedSetAnchor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CF904174()
{
  result = qword_1EC4C51A0;
  if (!qword_1EC4C51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C51A0);
  }

  return result;
}

unint64_t sub_1CF9041CC()
{
  result = qword_1EC4C51A8;
  if (!qword_1EC4C51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C51A8);
  }

  return result;
}

unint64_t sub_1CF904224()
{
  result = qword_1EC4C51B0;
  if (!qword_1EC4C51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C51B0);
  }

  return result;
}

uint64_t sub_1CF9042D0(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), uint64_t (*a3)(uint64_t))
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v20 = a2(a1, v17);
  if (v20)
  {
    v21 = v20;
    v22 = [v20 date];

    sub_1CF9E5CB8();
    (*(v7 + 56))(v19, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v19, 1, 1, v6);
  }

  sub_1CEFCCBDC(v19, v15, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_1CEFCCC44(v19, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CF9E5CE8();
    v9 = v12;
    sub_1CF9E5C98();
    v24 = v23;
    v25 = *(v7 + 8);
    v7 += 8;
    result = v25(v12, v6);
    v27 = v24 * 1000000000.0;
    if (COERCE__INT64(fabs(v24 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v27 <= -9.22337204e18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v27 < 9.22337204e18)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  (*(v7 + 32))(v12, v15, v6);
  (*(v7 + 16))(v9, v12, v6);
  sub_1CF9E5C98();
  v29 = v28;
  v30 = *(v7 + 8);
  v30(v9, v6);
  v30(v12, v6);
  result = sub_1CEFCCC44(v19, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v31 = v29 * 1000000000.0;
  if (COERCE__INT64(fabs(v29 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
  result = a3(a1);
  if (v32)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CF90467C(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, void (*a5)(_OWORD *, id), uint64_t a6)
{
  v7 = v6;
  v95 = a5;
  v96 = a6;
  v90 = a4;
  v92 = a3;
  v93 = a1;
  v94 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v87 = *(v91 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v85 = &v79 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v79 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v79 - v15;
  v16 = sub_1CF9E63D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v79 - v20;
  v21 = sub_1CF9E6448();
  v88 = *(v21 - 8);
  v89 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v82 = (&v79 - v9);
  v28 = sub_1CF9E64A8();
  v29 = *v28[-1].tester;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = (&v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v7 + 64);
  *v32 = v33;
  (*(v29 + 104))(v32, *MEMORY[0x1E69E8020], v28, v30);
  v34 = v33;
  v35 = sub_1CF9E64D8();
  (*(v29 + 8))(v32, v28);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*(v7 + 152) == 1)
  {
    v98 = 0;
    memset(v97, 0, sizeof(v97));
    v36 = FPDomainUnavailableError();
    v95(v97, v36);

    return sub_1CEFCCC44(v97, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v35 = qword_1EC4EBD78;
  swift_beginAccess();
  if (!*(*(v7 + v35) + 16) || (sub_1CF7BF2C0(v93, v94), (v38 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
    v43 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1CF9FA450;
    v45 = (v44 + v43);
    qos_class_self();
    sub_1CF9E63B8();
    v46 = *(v17 + 48);
    v47 = v46(v13, 1, v16);
    v80 = v35;
    if (v47 == 1)
    {
      (*(v17 + 104))(v86, *MEMORY[0x1E69E7FA0], v16);
      if (v46(v13, 1, v16) != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v17 + 32))(v86, v13, v16);
    }

    sub_1CF9E6428();
    v48 = v91;
    v49 = *(v91 + 64);
    v50 = v89;
    v51 = *(v88 + 32);
    v52 = v85;
    v51(&v85[v49], v23, v89);
    v53 = v92;
    v54 = v90;
    *v45 = v92;
    v45[1] = v54;
    v51(v45 + *(v48 + 64), &v52[v49], v50);
    v55 = (v45 + *(v48 + 80));
    v56 = swift_allocObject();
    v57 = v96;
    *(v56 + 16) = v95;
    *(v56 + 24) = v57;
    *v55 = sub_1CF926640;
    v55[1] = v56;
    v35 = v80;
    swift_beginAccess();

    sub_1CEFD09A0(v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v7 + v35);
    *(v7 + v35) = 0x8000000000000000;
    sub_1CF1D35F8(v44, v93, v94, isUniquelyReferenced_nonNull_native);
    v59 = v99;
    goto LABEL_26;
  }

  qos_class_self();
  v39 = v83;
  sub_1CF9E63B8();
  v40 = *(v17 + 48);
  if (v40(v39, 1, v16) == 1)
  {
    (*(v17 + 104))(v81, *MEMORY[0x1E69E7FA0], v16);
    v41 = v40(v39, 1, v16);
    v42 = v82;
    if (v41 != 1)
    {
      sub_1CEFCCC44(v39, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v17 + 32))(v81, v39, v16);
    v42 = v82;
  }

  sub_1CF9E6428();
  v60 = v91;
  v61 = *(v91 + 64);
  v62 = v89;
  v63 = *(v88 + 32);
  v13 = v84;
  v63(&v84[v61], v26, v89);
  v64 = v92;
  v65 = v90;
  *v42 = v92;
  v42[1] = v65;
  v63(v42 + *(v60 + 64), &v13[v61], v62);
  v66 = (v42 + *(v60 + 80));
  v67 = swift_allocObject();
  v68 = v96;
  *(v67 + 16) = v95;
  *(v67 + 24) = v68;
  *v66 = sub_1CF9284B8;
  v66[1] = v67;
  swift_beginAccess();

  sub_1CEFD09A0(v64);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *(v7 + v35);
  v28 = v99;
  *(v7 + v35) = 0x8000000000000000;
  v17 = sub_1CF7BF2C0(v93, v94);
  v71 = *v28->tree;
  v72 = (v70 & 1) == 0;
  v73 = v71 + v72;
  if (__OFADD__(v71, v72))
  {
    goto LABEL_28;
  }

  v74 = v70;
  v13 = v42;
  if (*v28->tester >= v73)
  {
    if (v69)
    {
      if (v70)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1CF7D296C();
      if (v74)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1CF7CAB14(v73, v69);
  v75 = sub_1CF7BF2C0(v93, v94);
  if ((v74 & 1) == (v76 & 1))
  {
    v17 = v75;
    if ((v74 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_22:
    v28 = *(*v99[1].tester + 8 * v17);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v78 = *v28->tree;
      v77 = *v28->tester;
      if (v78 >= v77 >> 1)
      {
        v28 = sub_1CF1F7C20((v77 > 1), v78 + 1, 1, v28);
      }

      *v28->tree = v78 + 1;
      sub_1CEFE55D0(v13, v28 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v78, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v59 = v99;
      *(*v99[1].tester + 8 * v17) = v28;
LABEL_26:
      *(v7 + v35) = v59;
      return swift_endAccess();
    }

LABEL_29:
    v28 = sub_1CF1F7C20(0, *v28->tree + 1, 1, v28);
    goto LABEL_23;
  }

LABEL_32:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF904FE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  result = swift_allocObject();
  *(result + 152) = a2;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a3;
  *(result + 128) = a4;
  *(result + 136) = a5;
  *(result + 144) = a1;
  v11 = 270592;
  if ((a5 & 0x8000) != 0)
  {
    v11 = 2367744;
  }

  *(result + 88) = 0;
  *(result + 96) = v11;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF905084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
  result = swift_allocObject();
  *(result + 48) = 1;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4;
  *(result + 144) = a1;
  v9 = 270592;
  if ((a4 & 0x8000) != 0)
  {
    v9 = 2367744;
  }

  *(result + 88) = 0;
  *(result + 96) = v9;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

double sub_1CF905118@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1CF0271B0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1CEFD1104(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1CF90517C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1CEFE863C(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF9051CC(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    v13 = 0x28726568746F2ELL;
    v2 = NSFileProviderItemIdentifier.description.getter(a1);
  }

  else
  {
    v13 = 0x286E69616D2ELL;
    v2 = VFSItemID.description.getter(a1);
  }

  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v13;
}

uint64_t sub_1CF905264(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    v13 = 0x28726568746F2ELL;
    v2 = VFSItemID.description.getter(a1);
  }

  else
  {
    v13 = 0x286E69616D2ELL;
    v2 = NSFileProviderItemIdentifier.description.getter(a1);
  }

  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v13;
}

void *sub_1CF905324(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = v3;
  result[4] = v3;
  result[5] = v3;
  result[6] = 0;
  return result;
}

uint64_t sub_1CF90535C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1CF9E59D8();
    v10 = sub_1CF9E5A58();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1CF9E5A58();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF9054B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1CEFCCBDC(a1, &v13 - v7, &unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1CF9E5928();
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v12 = sub_1CF9E57E8();
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, v11, v12);
}

uint64_t sub_1CF90560C()
{
  sub_1CF9E7948();
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8 = sub_1CF255338();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](980444704, 0xE400000000000000);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v19 = *(v0 + v18[13]);
  if (v19)
  {
    v20 = NSFileProviderItemIdentifier.description.getter(v19);
    v22 = v21;
  }

  else
  {
    v22 = 0xE90000000000003ELL;
    v20 = 0x6E776F6E6B6E753CLL;
  }

  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x3A6E656464696820, 0xE800000000000000);
  if (*(v0 + v18[14]))
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (*(v0 + v18[14]))
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v30, v31);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0x6574726F706D6920, 0xEA00000000003A64);
  if (*(v0 + v18[15]))
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (*(v0 + v18[15]))
  {
    v40 = 0xE400000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v39, v40);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 980641340;
}

void sub_1CF9057BC(void *a1, uint64_t a2, void *a3, void (*a4)(_OWORD *), uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1CF554678(a3, 0, v12, v10, v11, &v62);
  if (!v5)
  {
    if (v64)
    {
      v65 = a5;
      v13 = v62;
      v14 = v63;
      v60 = v62;
      v16 = a1[3];
      v15 = a1[4];
      v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
      v18 = a3[5];
      (*(*v18 + 288))(&v58, &v60, v17, v16, v15);
      v26 = v14;
      v27 = v58;
      if (v58)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v28 = swift_allocObject();
        *(v28 + 42) = 0;
        *(v28 + 32) = v27;
        *(v28 + 40) = 256;
        *(v28 + 16) = v27;
        *(v28 + 24) = 256;
        v55[0] = v28;
        LOBYTE(v55[1]) = 0;
        v29 = v27;

        a4(v55);

        v30 = v13;
LABEL_14:
        sub_1CEFD0994(v30, v26, 1);
        return;
      }

      v40 = v18[2];
      v55[0] = 0uLL;
      *&v55[1] = 1;
      memset(&v55[1] + 8, 0, 40);

      v32 = objc_sync_enter(a3);
      v41 = v13;
      v42 = v65;
      if (!v32)
      {
        v43 = *(a3 + qword_1EDEADB30);
        v48 = v43;
        v35 = objc_sync_exit(a3);
        if (!v35)
        {
          v44 = swift_allocObject();
          v44[2] = a4;
          v44[3] = v42;
          v44[4] = v41;
          v45 = *(*v40 + 136);

          sub_1CEFD0988(v41, v26, 1);
          v45(&v60, v55, v43, 0, sub_1CF9272BC, v44);

          v49 = v55[0];
          v50 = v55[1];
          v51 = v55[2];
          v52 = v55[3];
          sub_1CEFCCC44(&v49, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v30 = v41;
          goto LABEL_14;
        }

LABEL_18:
        MEMORY[0x1EEE9AC00](v35);
        v47 = a3;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v46, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }
    }

    else
    {
      v60 = v62;
      v61 = v63;
      v19 = a1[3];
      v20 = a1[4];
      v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
      v22 = a3[4];
      (*(*v22 + 288))(&v58, &v60, v21, v19, v20);
      v23 = v59;
      if (v59 != 255)
      {
        v24 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v25 = swift_allocObject();
        *(v25 + 32) = v24;
        *(v25 + 40) = v23;
        *(v25 + 41) = 0;
        *(v25 + 16) = v24;
        *(v25 + 24) = v23;
        *(v25 + 25) = 0;
        v55[0] = v25;
        LOBYTE(v55[1]) = 0;

        a4(v55);

        return;
      }

      v31 = v22[2];
      v56 = 0u;
      v57 = 0u;
      memset(v55, 0, sizeof(v55));

      v32 = objc_sync_enter(a3);
      if (!v32)
      {
        v33 = *(a3 + qword_1EDEADB30);
        v34 = v33;
        v35 = objc_sync_exit(a3);
        if (!v35)
        {
          v36 = v60;
          v37 = v61;
          v38 = swift_allocObject();
          *(v38 + 16) = a4;
          *(v38 + 24) = a5;
          *(v38 + 32) = v36;
          *(v38 + 40) = v37;
          v39 = *(*v31 + 136);

          v39(&v60, v55, v33, 0, sub_1CF9272C8, v38);

          v51 = v55[2];
          v52 = v55[3];
          v53 = v56;
          v54 = v57;
          v49 = v55[0];
          v50 = v55[1];
          sub_1CEFCCC44(&v49, &unk_1EC4BECD0, &unk_1CF9FEF80);
          return;
        }

        goto LABEL_18;
      }
    }

    MEMORY[0x1EEE9AC00](v32);
    v47 = a3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v46, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }
}

void sub_1CF905E20(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21[-1] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v21[-1] - v13);
  sub_1CEFCCBDC(a1, &v21[-1] - v13, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = 0;
    v16 = *v14;
    v17 = 1;
  }

  else
  {
    sub_1CEFE55D0(v14, v11, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v16 = sub_1CF905FD0(v11, a4, v5);
    v15 = v18;
    v17 = v19;
    sub_1CEFCCC44(v11, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v21[0] = v16;
  v21[1] = v15;
  v22 = v17 & 1;
  a2(v21);
  sub_1CF9272D8(v16, v15, v17 & 1);
}

char *sub_1CF905FD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for VFSItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v8, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1CEFDA05C(v8, v12, type metadata accessor for VFSItem);
    v15 = *(v12 + 2);
    v16 = v12[24];
    sub_1CEFD5398(v12, type metadata accessor for VFSItem);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    result = swift_allocObject();
    *(result + 4) = v15;
    result[40] = v16;
    *(result + 41) = 0;
    *(result + 2) = v15;
    result[24] = v16;
    result[25] = 0;
    return result;
  }

  v13 = sub_1CEFCCC44(v8, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (a3 == 2 && !a2)
  {
    v14 = MEMORY[0x1E6967258];
LABEL_9:
    v18 = *v14;
    goto LABEL_11;
  }

  if (a3 == 2 && a2 == 1)
  {
    v14 = MEMORY[0x1E6967280];
    goto LABEL_9;
  }

  v40 = 0x2F73662F70665F5FLL;
  v41 = 0xE800000000000000;
  v38 = a2;
  v39 = a3;
  v19 = VFSItemID.description.getter(v13);
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = v41;
  v18 = sub_1CF9E6888();
  v29, v30, v31, v32, v33, v34, v35, v36;
LABEL_11:
  v37 = FPItemNotFoundError();

  result = v37;
  if (!v37)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF906288(void *a1, void *a2)
{
  if (a1)
  {
    v3 = sub_1CF0689E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v4 = swift_allocObject();
    *(v4 + 42) = 0;
    *(v4 + 32) = v3;
    *(v4 + 40) = 256;
    *(v4 + 16) = v3;
    *(v4 + 24) = 256;
    v5 = v3;
    v6 = [a1 itemID];
    [v6 identifier];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v4 = swift_allocError();
    *v8 = a2;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 73) = 0u;
    v9 = a2;
  }

  return v4;
}

void sub_1CF9063D8(void *a1, char *a2, unsigned __int8 *a3, int a4, unsigned int a5, void (*a6)(char *), uint64_t a7, unint64_t a8)
{
  v103 = a8;
  v106 = a6;
  v107 = a7;
  v109 = a5;
  LODWORD(v108) = a4;
  v110 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v104);
  v11 = &v100 - v10;
  v12 = sub_1CF9E6118();
  v105 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = a3;
  v19 = v119;
  sub_1CF554678(a3, 0, v17, v16, v15, &v116);
  if (!v19)
  {
    v20 = v109;
    v21 = v108;
    v102 = v12;
    v110 = v11;
    v119 = 0;
    if (v118)
    {
      v22 = v14;
      v23 = v116;
      v24 = v117;
      v25 = fpfs_current_or_default_log();
      v26 = v22;
      sub_1CF9E6128();
      v27 = v103;
      sub_1CEFD09A0(v103);
      sub_1CEFD09A0(v27);
      sub_1CEFD0988(v23, v24, 1);
      v28 = sub_1CF9E6108();
      v29 = sub_1CF9E7298();
      v30 = os_log_type_enabled(v28, v29);
      v109 = v24;
      if (v30)
      {
        v31 = v27;
        v32 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v113 = v101;
        *v32 = 136315394;
        v33 = NSFileProviderItemIdentifier.description.getter(v23);
        v108 = v26;
        v34 = v23;
        v35 = v33;
        v37 = v36;
        sub_1CEFD0994(v34, v24, 1);
        v38 = sub_1CEFD0DF0(v35, v37, v113);
        v37, v39, v40, v41, v42, v43, v44, v45;
        *(v32 + 4) = v38;
        *(v32 + 12) = 2080;
        v46 = sub_1CF913458(v31);
        v48 = v47;
        sub_1CEFD0A98(v31);
        sub_1CEFD0A98(v31);
        v49 = sub_1CEFD0DF0(v46, v48, v113);
        v48, v50, v51, v52, v53, v54, v55, v56;
        *(v32 + 14) = v49;
        v23 = v34;
        _os_log_impl(&dword_1CEFC7000, v28, v29, "no vfsItemID found for item %s, request %s", v32, 0x16u);
        v57 = v101;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v57, -1, -1);
        MEMORY[0x1D386CDC0](v32, -1, -1);

        v105[1](v108, v102);
      }

      else
      {
        sub_1CEFD0A98(v27);
        sub_1CEFD0A98(v27);
        sub_1CEFD0994(v23, v24, 1);

        v105[1](v22, v102);
      }

      v68 = v106;
      v69 = v110;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
      (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
      swift_storeEnumTagMultiPayload();
      v68(v69);
      sub_1CEFD0994(v23, v109, 1);
      v71 = &qword_1EC4C5020;
      v72 = &qword_1CFA0A278;
      v73 = v69;
      goto LABEL_14;
    }

    v114 = v116;
    v115 = v117;
    v58 = objc_sync_enter(a3);
    if (v58)
    {
      MEMORY[0x1EEE9AC00](v58);
      v96 = &v100 - 4;
      *(&v100 - 2) = a3;
      v97 = sub_1CF1C5288;
      goto LABEL_46;
    }

    v59 = qword_1EDEADAA8;
    v60 = a3[qword_1EDEADAA8];
    v61 = objc_sync_exit(v18);
    if (v61)
    {
      MEMORY[0x1EEE9AC00](v61);
      v98 = &v100 - 4;
      *(&v100 - 2) = v18;
      v99 = sub_1CF1C5290;
      goto LABEL_48;
    }

    v62 = a1;
    v64 = a1[3];
    v63 = a1[4];
    v65 = __swift_project_boxed_opaque_existential_1(v62, v64);
    if (v60)
    {
      v66 = v119;
      sub_1CF68DDB0(&v114, v65, v64, v63, v113);
      if (v66)
      {
        return;
      }

      v119 = 0;
      memcpy(v112, v113, sizeof(v112));
      if (sub_1CEFF755C() == 1)
      {
        memcpy(v111, v113, sizeof(v111));
        sub_1CEFCCC44(v111, &unk_1EC4BFC20, &unk_1CFA0A290);
        if (v21)
        {
          v67 = 0;
        }

        else
        {
          v67 = 0;
          if (v114)
          {
            v79 = 0;
          }

          else
          {
            v79 = v115 == 2;
          }

          if (!v79 && (v20 & 1) == 0)
          {
            v80 = objc_sync_enter(v18);
            if (v80)
            {
LABEL_49:
              MEMORY[0x1EEE9AC00](v80);
              v96 = &v100 - 4;
              *(&v100 - 2) = v18;
              v97 = sub_1CF1C546C;
LABEL_46:
              fp_preconditionFailure(_:file:line:)(v97, v96, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
            }

            v67 = v18[v59];
            v81 = objc_sync_exit(v18);
            if (v81)
            {
LABEL_50:
              MEMORY[0x1EEE9AC00](v81);
              v98 = &v100 - 4;
              *(&v100 - 2) = v18;
              v99 = sub_1CF1C5468;
LABEL_48:
              fp_preconditionFailure(_:file:line:)(v99, v98, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }
          }
        }

        v76 = 0;
        v75 = 0;
      }

      else
      {
        memcpy(v111, v113, sizeof(v111));
        v76 = BYTE1(v111[17]) == 6;
        v75 = v111[31];
        if ((v21 & 1) != 0 || (!v114 ? (v77 = v115 == 2) : (v77 = 0), v77))
        {
          v67 = 0;
        }

        else if (BYTE1(v111[17]) >= 7u)
        {
          v67 = 1;
        }

        else
        {
          v67 = 0x23u >> SBYTE1(v111[17]);
        }

        v78 = v111[31];
        sub_1CEFCCC44(v111, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

LABEL_34:
      v82 = v62[3];
      v83 = v62[4];
      v84 = __swift_project_boxed_opaque_existential_1(v62, v82);
      v85 = *(v18 + 4);
      v86 = v119;
      (*(*v85 + 656))(v113, &v114, v84, v82, v83);
      v119 = v86;
      if (v86)
      {

        return;
      }

      if (*&v113[64])
      {
        v87 = 3;
      }

      else
      {
        v87 = 515;
      }

      v88 = v85[2];

      v80 = objc_sync_enter(v18);
      if (!v80)
      {
        v108 = v87;
        v109 = v76;
        LODWORD(v110) = v67;
        v89 = *&v18[qword_1EDEADB30];
        v105 = v89;
        v81 = objc_sync_exit(v18);
        if (!v81)
        {
          v90 = v114;
          v91 = v115;
          v92 = swift_allocObject();
          v93 = v107;
          *(v92 + 16) = v106;
          *(v92 + 24) = v93;
          *(v92 + 32) = v90;
          *(v92 + 40) = v91;
          *(v92 + 48) = v75;
          *(v92 + 56) = v110 & 1;
          *(v92 + 57) = v109;
          v94 = *(*v88 + 136);
          v95 = v75;

          v94(&v114, v113, v89, v108, sub_1CF926648, v92);

          *&v112[32] = *&v113[32];
          *&v112[48] = *&v113[48];
          *&v112[64] = *&v113[64];
          *&v112[80] = *&v113[80];
          *v112 = *v113;
          *&v112[16] = *&v113[16];
          v71 = &unk_1EC4BECD0;
          v72 = &unk_1CF9FEF80;
          v73 = v112;
LABEL_14:
          sub_1CEFCCC44(v73, v71, v72);
          return;
        }

        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v74 = v119;
    (*(**(v18 + 2) + 160))(v113, &v114, v65, v64, v63);
    if (!v74)
    {
      v119 = 0;
      v67 = 0;
      v75 = *v113;
      v76 = *v113 != 0;
      goto LABEL_34;
    }
  }
}

uint64_t sub_1CF906D4C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, void *a6, int a7, int a8)
{
  v45 = a8;
  v41 = a7;
  v46 = a6;
  v47 = a1;
  v43 = a5;
  v42 = a4;
  v48 = a3;
  v49 = a2;
  v39 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VFSItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v38 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v38 - v24);
  sub_1CEFCCBDC(v47, v22, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v25 = *v22;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1CEFE55D0(v22, v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCBDC(v19, v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if ((*(v10 + 48))(v16, 1, v9) == 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v26 = swift_allocError();
      *v27 = v42;
      *(v27 + 8) = v43;
      *(v27 + 16) = 0u;
      *(v27 + 32) = 0u;
      *(v27 + 48) = 0u;
      *(v27 + 64) = 0u;
      *(v27 + 80) = 0u;
      *(v27 + 96) = 0u;
      *(v27 + 112) = 0u;
      sub_1CF2A8DE0(v27);
      *v25 = v26;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v28 = v40;
      sub_1CEFDA05C(v16, v40, type metadata accessor for VFSItem);
      v29 = v44;
      sub_1CEFDA2E4(v28, v44, type metadata accessor for VFSItem);
      if ((v41 & 1) != 0 && (v30 = v28 + *(v9 + 28), (*(v30 + *(v39 + 64)) & 1) == 0))
      {
        v36 = v38;
        sub_1CEFDA2E4(v30, v38, type metadata accessor for ItemMetadata);
        sub_1CEFD5398(v28, type metadata accessor for VFSItem);
        v37 = *(v36 + *(v39 + 68));
        sub_1CEFD5398(v36, type metadata accessor for ItemMetadata);
        if (v37 == 2)
        {
          v31 = 1;
        }

        else
        {
          v31 = v37 ^ 1;
        }
      }

      else
      {
        sub_1CEFD5398(v28, type metadata accessor for VFSItem);
        v31 = 0;
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
      v33 = v46;
      *(v25 + v32[13]) = v46;
      sub_1CEFDA05C(v29, v25, type metadata accessor for VFSItem);
      *(v25 + v32[14]) = v31 & 1;
      *(v25 + v32[15]) = v45 & 1;
      (*(*(v32 - 1) + 56))(v25, 0, 1, v32);
      swift_storeEnumTagMultiPayload();
      v34 = v33;
    }

    sub_1CEFCCC44(v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v49(v25);
  return sub_1CEFCCC44(v25, &qword_1EC4C5020, &qword_1CFA0A278);
}

void sub_1CF9072F8(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a5;
  v93 = a6;
  v94 = a1;
  v95 = a4;
  v8 = sub_1CF9E5CF8();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v85 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v85 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v85 - v18;
  v20 = [objc_allocWithZone(FPLoggerScope) init];
  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);
  v101 = a2;
  v22 = v20;
  v23 = sub_1CF9E6108();
  v24 = sub_1CF9E7298();

  v25 = os_log_type_enabled(v23, v24);
  v99 = v10;
  v89 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v86 = v27;
    v100 = swift_slowAlloc();
    v102 = v100;
    *v26 = 138412802;
    v28 = [v22 enter];
    *(v26 + 4) = v28;
    *v27 = v28;
    *(v26 + 12) = 2080;
    v29 = v101;
    v30 = NSFileProviderItemIdentifier.description.getter(v101);
    v32 = v31;

    v33 = sub_1CEFD0DF0(v30, v32, &v102);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v26 + 14) = v33;
    *(v26 + 22) = 2080;
    v41 = sub_1CF913458(a3);
    v43 = v42;
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);
    v44 = sub_1CEFD0DF0(v41, v43, &v102);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v26 + 24) = v44;
    _os_log_impl(&dword_1CEFC7000, v23, v24, "%@ 🥄 Request to propagate item with ID %s for %s", v26, 0x20u);
    v52 = v86;
    sub_1CEFCCC44(v86, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v52, -1, -1);
    v53 = v100;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v53, -1, -1);
    MEMORY[0x1D386CDC0](v26, -1, -1);

    v100 = *(v11 + 8);
    v54 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55 = v99;
    v100(v19, v99);
  }

  else
  {
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);

    v100 = *(v11 + 8);
    v54 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v100(v19, v10);
    v55 = v10;
  }

  v56 = sub_1CF9042D0(a3, sub_1CF90C7D0, sub_1CF91591C);
  v58 = v57;
  v59 = fpfs_current_or_default_log();
  v60 = v91;
  sub_1CF9E6128();
  v61 = sub_1CF9E7298();
  v62 = sub_1CF19C478(v61, "propagation to FS", 17, 2, v92, v93);
  v64 = v63;
  v93 = v54;
  v100(v60, v55);
  v65 = v101;
  sub_1CF907AAC(v101, a3, v58, v62, v64);

  v66 = v94[3];
  v67 = v94[4];
  v68 = __swift_project_boxed_opaque_existential_1(v94, v66);
  sub_1CF033A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
  v69 = swift_allocObject();
  *(v69 + 16) = 0u;
  *(v69 + 32) = 0u;
  *(v69 + 48) = 1;
  *(v69 + 56) = 0u;
  *(v69 + 72) = 0u;
  *(v69 + 88) = 0;
  *(v69 + 120) = v56;
  *(v69 + 128) = v58;
  *(v69 + 136) = 0x800000;
  *(v69 + 144) = v65;
  *(v69 + 96) = xmmword_1CFA04E20;
  *(v69 + 112) = 0;
  v70 = v65;
  v71 = v96;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v73 = v72;
  (*(v97 + 8))(v71, v98);
  v74 = v73 * 1000000000.0;
  if (COERCE__INT64(fabs(v73 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v74 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v74 < 9.22337204e18)
  {
    v75 = v90;
    sub_1CF5215C0(v69, v74, v68, v66, v67);
    if (v75)
    {

      v76 = fpfs_current_or_default_log();
      v77 = v88;
      sub_1CF9E6128();
      v78 = v89;
      v79 = sub_1CF9E6108();
      v80 = sub_1CF9E7298();

      if (os_log_type_enabled(v79, v80))
      {
        goto LABEL_11;
      }
    }

    else
    {

      v81 = fpfs_current_or_default_log();
      v77 = v87;
      sub_1CF9E6128();
      v78 = v89;
      v79 = sub_1CF9E6108();
      v80 = sub_1CF9E7298();

      if (os_log_type_enabled(v79, v80))
      {
LABEL_11:
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        v84 = [v78 leave];
        *(v82 + 4) = v84;
        *v83 = v84;
        _os_log_impl(&dword_1CEFC7000, v79, v80, "%@", v82, 0xCu);
        sub_1CEFCCC44(v83, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v83, -1, -1);
        MEMORY[0x1D386CDC0](v82, -1, -1);
      }
    }

    v100(v77, v99);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1CF907AAC(void *a1, unint64_t a2, unint64_t a3, void (*a4)(_OWORD *, id), uint64_t a5)
{
  v6 = v5;
  v104 = a4;
  v105 = a5;
  v100 = a3;
  v102 = a2;
  v103 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v97 = *(v101 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = &v90 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v90 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v90 - v14;
  v15 = sub_1CF9E63D8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v90 - v19;
  v20 = sub_1CF9E6448();
  v98 = *(v20 - 8);
  v99 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v92 = (&v90 - v8);
  v27 = sub_1CF9E64A8();
  v28 = *v27[-1].tester;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = (&v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v6 + 64);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x1E69E8020], v27, v29);
  v33 = v32;
  v34 = sub_1CF9E64D8();
  v36 = *(v28 + 8);
  v35 = (v28 + 8);
  v36(v31, v27);
  if ((v34 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*(v6 + 152) == 1)
  {
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    v37 = FPDomainUnavailableError();
    v104(v106, v37);

    return sub_1CEFCCC44(v106, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v31 = qword_1EC4EBD70;
  swift_beginAccess();
  v39 = *(v31 + v6);
  if (!*v39->tree || (, sub_1CEFE863C(v103), v41 = v40, v39, v40, v42, v43, v44, v45, v46, v47, (v41 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C00, &qword_1CFA18A10);
    v51 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1CF9FA450;
    v53 = (v52 + v51);
    qos_class_self();
    sub_1CF9E63B8();
    v54 = *(v16 + 48);
    v55 = v54(v12, 1, v15);
    v90 = v31;
    if (v55 == 1)
    {
      (*(v16 + 104))(v96, *MEMORY[0x1E69E7FA0], v15);
      if (v54(v12, 1, v15) != 1)
      {
        sub_1CEFCCC44(v12, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v16 + 32))(v96, v12, v15);
    }

    sub_1CF9E6428();
    v56 = v101;
    v57 = *(v101 + 64);
    v58 = v99;
    v59 = *(v98 + 32);
    v60 = v95;
    v59(&v95[v57], v22, v99);
    v61 = v102;
    v62 = v100;
    *v53 = v102;
    v53[1] = v62;
    v59(v53 + *(v56 + 64), &v60[v57], v58);
    v63 = (v53 + *(v56 + 80));
    v64 = swift_allocObject();
    v65 = v105;
    *(v64 + 16) = v104;
    *(v64 + 24) = v65;
    *v63 = sub_1CF9284B8;
    v63[1] = v64;
    v31 = v90;
    swift_beginAccess();

    sub_1CEFD09A0(v61);
    v66 = v103;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(v31 + v6);
    *(v31 + v6) = 0x8000000000000000;
    sub_1CF1D348C(v52, v66, isUniquelyReferenced_nonNull_native);

    v68 = v108;
    goto LABEL_26;
  }

  qos_class_self();
  v48 = v93;
  sub_1CF9E63B8();
  v49 = *(v16 + 48);
  if (v49(v48, 1, v15) == 1)
  {
    (*(v16 + 104))(v91, *MEMORY[0x1E69E7FA0], v15);
    v50 = v49(v48, 1, v15);
    v35 = v92;
    if (v50 != 1)
    {
      sub_1CEFCCC44(v48, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v16 + 32))(v91, v48, v15);
    v35 = v92;
  }

  sub_1CF9E6428();
  v69 = v101;
  v70 = *(v101 + 64);
  v71 = *(v98 + 32);
  v72 = v94;
  v73 = v25;
  v74 = v99;
  v71(&v94[v70], v73, v99);
  v75 = v102;
  v76 = v100;
  *v35 = v102;
  v35[1] = v76;
  v71(v35 + *(v69 + 64), &v72[v70], v74);
  v77 = (v35 + *(v69 + 80));
  v78 = swift_allocObject();
  v79 = v105;
  *(v78 + 16) = v104;
  *(v78 + 24) = v79;
  *v77 = sub_1CF9284B8;
  v77[1] = v78;
  swift_beginAccess();

  sub_1CEFD09A0(v75);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *(v31 + v6);
  v27 = v108;
  *(v31 + v6) = 0x8000000000000000;
  v34 = sub_1CEFE863C(v103);
  v82 = *v27->tree;
  v83 = (v81 & 1) == 0;
  v84 = v82 + v83;
  if (__OFADD__(v82, v83))
  {
    goto LABEL_28;
  }

  v85 = v81;
  if (*v27->tester >= v84)
  {
    if (v80)
    {
      if (v81)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1CF7D2808();
      if (v85)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1CF7CA84C(v84, v80);
  v86 = sub_1CEFE863C(v103);
  if ((v85 & 1) == (v87 & 1))
  {
    v34 = v86;
    if ((v85 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_22:
    v27 = *(*v108[1].tester + 8 * v34);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v89 = *v27->tree;
      v88 = *v27->tester;
      if (v89 >= v88 >> 1)
      {
        v27 = sub_1CF1F7BFC((v88 > 1), v89 + 1, 1, v27);
      }

      *v27->tree = v89 + 1;
      sub_1CEFE55D0(v35, v27 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v89, &qword_1EC4BE670, &qword_1CF9FE4D0);
      v68 = v108;
      *(*v108[1].tester + 8 * v34) = v27;
LABEL_26:
      *(v31 + v6) = v68;
      return swift_endAccess();
    }

LABEL_29:
    v27 = sub_1CF1F7BFC(0, *v27->tree + 1, 1, v27);
    goto LABEL_23;
  }

LABEL_32:
  type metadata accessor for NSFileProviderItemIdentifier(0);
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF908418(void *a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t))
{
  v95 = a6;
  v96 = a7;
  v101 = a5;
  v103 = a3;
  v97 = a1;
  v9 = sub_1CF9E5CF8();
  v99 = *(v9 - 8);
  v100 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v87 - v19;
  v21 = [objc_allocWithZone(FPLoggerScope) init];
  v22 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);
  v23 = v21;
  v24 = sub_1CF9E6108();
  v25 = sub_1CF9E7298();

  v26 = os_log_type_enabled(v24, v25);
  v102 = v11;
  v91 = v23;
  v93 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v106 = v88;
    *v27 = 138412802;
    v29 = [v23 enter];
    *(v27 + 4) = v29;
    *v28 = v29;
    *(v27 + 12) = 2080;
    v104 = a2;
    v105 = v103;
    v30 = VFSItemID.description.getter(v29);
    v32 = v31;
    v33 = sub_1CEFD0DF0(v30, v31, &v106);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v27 + 14) = v33;
    *(v27 + 22) = 2080;
    v41 = sub_1CEFD11AC(a4);
    v43 = v42;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v44 = sub_1CEFD0DF0(v41, v43, &v106);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v27 + 24) = v44;
    _os_log_impl(&dword_1CEFC7000, v24, v25, "%@ 🥄 Request to propagate item with ID %s for %s", v27, 0x20u);
    sub_1CEFCCC44(v28, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v52 = v28;
    v11 = v102;
    MEMORY[0x1D386CDC0](v52, -1, -1);
    v53 = v88;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v53, -1, -1);
    MEMORY[0x1D386CDC0](v27, -1, -1);
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
  }

  v54 = *(v12 + 8);
  v55 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54(v20, v11);
  v56 = v54;
  v57 = sub_1CF9042D0(a4, sub_1CF90C94C, sub_1CF915948);
  v59 = v58;
  v60 = fpfs_current_or_default_log();
  v61 = v94;
  sub_1CF9E6128();
  v62 = sub_1CF9E7298();
  v63 = sub_1CF19C478(v62, "propagation to FP", 17, 2, v95, v96);
  v65 = v64;
  v95 = v55;
  v96 = v56;
  v56(v61, v11);
  v66 = v93;
  LOBYTE(v55) = v103;
  sub_1CF90467C(v93, v103, a4, v59, v63, v65);

  v67 = v97[3];
  v94 = v97[4];
  v68 = __swift_project_boxed_opaque_existential_1(v97, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v69 = swift_allocObject();
  *(v69 + 152) = v55;
  *(v69 + 16) = 0u;
  *(v69 + 32) = 0u;
  *(v69 + 48) = 1;
  *(v69 + 56) = 0u;
  *(v69 + 72) = 0u;
  *(v69 + 88) = 0;
  *(v69 + 120) = v57;
  *(v69 + 128) = v59;
  *(v69 + 136) = 0x800000;
  *(v69 + 144) = v66;
  *(v69 + 96) = xmmword_1CFA04E20;
  *(v69 + 112) = 0;
  v70 = v98;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v72 = v71;
  (*(v99 + 8))(v70, v100);
  v73 = v72 * 1000000000.0;
  if (COERCE__INT64(fabs(v72 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v73 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v73 < 9.22337204e18)
  {
    v74 = v92;
    sub_1CF5215C0(v69, v73, v68, v67, v94);
    if (v74)
    {

      v75 = fpfs_current_or_default_log();
      v76 = v90;
      sub_1CF9E6128();
      v77 = v91;
      v78 = sub_1CF9E6108();
      v79 = sub_1CF9E7298();

      v80 = os_log_type_enabled(v78, v79);
      v81 = v96;
      if (v80)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v82 = fpfs_current_or_default_log();
      v76 = v89;
      sub_1CF9E6128();
      v77 = v91;
      v78 = sub_1CF9E6108();
      v79 = sub_1CF9E7298();

      v83 = os_log_type_enabled(v78, v79);
      v81 = v96;
      if (v83)
      {
LABEL_11:
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138412290;
        v86 = [v77 leave];
        *(v84 + 4) = v86;
        *v85 = v86;
        _os_log_impl(&dword_1CEFC7000, v78, v79, "%@", v84, 0xCu);
        sub_1CEFCCC44(v85, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v85, -1, -1);
        MEMORY[0x1D386CDC0](v84, -1, -1);
      }
    }

    v81(v76, v102);
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1CF908B8C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), void *a5, int a6, void *a7, int a8, char a9)
{
  v274 = a8;
  v292 = a7;
  v258 = a6;
  v289 = a4;
  v290 = a5;
  v293 = a2;
  v266 = sub_1CF9E63D8();
  v265 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v264 = &v253 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v263 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v282 = (&v253 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v271 = &v253 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v283 = &v253 - v19;
  v291 = sub_1CF9E6068();
  v276 = *(v291 - 1);
  MEMORY[0x1EEE9AC00](v291);
  v261 = &v253 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v269 = &v253 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v259 = &v253 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v272 = &v253 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v267 = &v253 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v279 = &v253 - v30;
  v275 = type metadata accessor for Signpost(0);
  v277 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v262 = &v253 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v260 = &v253 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v273 = &v253 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v270 = &v253 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v268 = &v253 - v39;
  v278 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v280 = &v253 - v42;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v285 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v44 = (&v253 - v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v45);
  v286 = &v253 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v284 = &v253 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v253 - v50;
  v52 = sub_1CF9E6118();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v253 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v288 = a1;
  v57 = v293;
  sub_1CEFCCBDC(a1, v51, &qword_1EC4C5020, &qword_1CFA0A278);
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);

  v58 = sub_1CF9E6108();
  v59 = sub_1CF9E7298();
  if (os_log_type_enabled(v58, v59))
  {
    v254 = v59;
    v255 = v53;
    v256 = v52;
    v257 = a3;
    v281 = v44;
    v60 = swift_slowAlloc();
    v253 = swift_slowAlloc();
    v294 = v253;
    *v60 = 136315650;
    v61 = swift_beginAccess();
    v62 = *(v57 + 32);
    v63 = *(v57 + 40);
    if (*(v57 + 41))
    {
      v64 = NSFileProviderItemIdentifier.description.getter(v62);
      v66 = v65;
      sub_1CEFD0994(v62, v63, 1);
    }

    else
    {
      *&aBlock = *(v57 + 32);
      BYTE8(aBlock) = v63;
      v64 = VFSItemID.description.getter(v61);
      v66 = v68;
    }

    v69 = sub_1CEFD0DF0(v64, v66, &v294);
    v66, v70, v71, v72, v73, v74, v75, v76;
    *(v60 + 4) = v69;
    *(v60 + 12) = 2080;
    a3 = v257;
    v77 = sub_1CF913458(v257);
    v79 = v78;
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);
    v80 = sub_1CEFD0DF0(v77, v79, &v294);
    v79, v81, v82, v83, v84, v85, v86, v87;
    *(v60 + 14) = v80;
    *(v60 + 22) = 2080;
    sub_1CEFCCBDC(v51, v284, &qword_1EC4C5020, &qword_1CFA0A278);
    v88 = sub_1CF9E6948();
    v90 = v89;
    sub_1CEFCCC44(v51, &qword_1EC4C5020, &qword_1CFA0A278);
    v91 = sub_1CEFD0DF0(v88, v90, &v294);
    v90, v92, v93, v94, v95, v96, v97, v98;
    *(v60 + 24) = v91;
    _os_log_impl(&dword_1CEFC7000, v58, v254, "finished VFS item lookup for %s request %s: %s", v60, 0x20u);
    v99 = v253;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v99, -1, -1);
    MEMORY[0x1D386CDC0](v60, -1, -1);

    (*(v255 + 8))(v55, v256);
    v67 = v292;
    v57 = v293;
    v44 = v281;
  }

  else
  {
    sub_1CEFD0A98(a3);

    sub_1CEFD0A98(a3);

    sub_1CEFCCC44(v51, &qword_1EC4C5020, &qword_1CFA0A278);
    (*(v53 + 8))(v55, v52);
    v67 = v292;
  }

  v100 = v288;
  v101 = v286;
  sub_1CEFCCBDC(v288, v286, &qword_1EC4C5020, &qword_1CFA0A278);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v103 = v291;
  v104 = v287;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCC44(v101, &qword_1EC4C5020, &qword_1CFA0A278);
LABEL_9:
    v289(v100);
    return;
  }

  if ((*(v285 + 48))(v101, 1, v287) == 1)
  {
    if ((*(v57 + 25) & 1) == 0)
    {
      goto LABEL_9;
    }

    v105 = *(v57 + 16);
    v106 = *(v57 + 24);
    v107 = swift_allocObject();
    *(v107 + 16) = v57;
    *(v107 + 24) = a3;
    v108 = v290;
    *(v107 + 32) = v289;
    *(v107 + 40) = v108;
    *(v107 + 48) = v67;
    *(v107 + 56) = v274 & 1;
    *(v107 + 57) = a9 & 1;
    v109 = swift_allocObject();
    v109[2] = v105;
    v109[3] = a3;
    v109[4] = v67;
    v109[5] = sub_1CF92705C;
    v287 = v109;
    v109[6] = v107;
    v110 = swift_allocObject();
    *(v110 + 16) = sub_1CF92705C;
    *(v110 + 24) = v107;
    v293 = v110;
    sub_1CEFD09A0(a3);

    sub_1CEFD0988(v105, v106, 1);

    sub_1CEFD09A0(a3);

    v289 = v105;
    LODWORD(v290) = v106;
    sub_1CEFD0988(v105, v106, 1);
    v288 = v107;

    v286 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v111 = qword_1EDEBBE40;
    v112 = v276;
    v113 = v272;
    (*(v276 + 56))(v272, 1, 1, v103);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v114 = sub_1CF9E7988();
    v116 = v115;
    MEMORY[0x1D3868CC0](v114);
    v116, v117, v118, v119, v120, v121, v122, v123;
    v124 = *(&aBlock + 1);
    v285 = aBlock;
    v125 = v113;
    v126 = v259;
    sub_1CEFCCBDC(v125, v259, &unk_1EC4BED20, &unk_1CFA00700);
    v127 = *(v112 + 48);
    if (v127(v126, 1, v103) == 1)
    {
      v128 = v111;
      v129 = v261;
      sub_1CF9E6048();
      if (v127(v126, 1, v103) != 1)
      {
        sub_1CEFCCC44(v126, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v129 = v261;
      (*(v112 + 32))(v261, v126, v103);
    }

    v207 = v273;
    (*(v112 + 16))(v273, v129, v103);
    v208 = v275;
    *(v207 + *(v275 + 20)) = v111;
    v209 = v207 + *(v208 + 24);
    *v209 = "DB queue wait";
    *(v209 + 8) = 13;
    *(v209 + 16) = 2;
    v210 = v111;
    v211 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v212 = swift_allocObject();
    *(v212 + 16) = xmmword_1CF9FA450;
    *(v212 + 56) = MEMORY[0x1E69E6158];
    *(v212 + 64) = sub_1CEFD51C4();
    *(v212 + 32) = v285;
    *(v212 + 40) = v124;
    sub_1CF9E6028(v211, &dword_1CEFC7000, v210, "DB queue wait", 13, 2, v207, "%s", 2);
    v212, v213, v214, v215, v216, v217, v218, v219;
    (*(v112 + 8))(v129, v103);
    sub_1CEFCCC44(v272, &unk_1EC4BED20, &unk_1CFA00700);
    v285 = v67[21];
    v291 = v67[8];
    v283 = sub_1CF9E6448();
    v284 = *(v283 - 8);
    (*(v284 + 56))(v282, 1, 1, v283);
    v220 = v260;
    sub_1CEFDA2E4(v207, v260, type metadata accessor for Signpost);
    v221 = (*(v277 + 80) + 16) & ~*(v277 + 80);
    v222 = (v278 + v221 + 7) & 0xFFFFFFFFFFFFFFF8;
    v223 = swift_allocObject();
    sub_1CEFDA05C(v220, v223 + v221, type metadata accessor for Signpost);
    v224 = (v223 + v222);
    v281 = sub_1CF928480;
    v225 = v293;
    *v224 = sub_1CF928480;
    v224[1] = v225;
    v226 = v207;
    v227 = v262;
    sub_1CEFDA2E4(v226, v262, type metadata accessor for Signpost);
    v228 = (v222 + 23) & 0xFFFFFFFFFFFFFFF8;
    v229 = (v228 + 15) & 0xFFFFFFFFFFFFFFF8;
    v230 = (v229 + 25) & 0xFFFFFFFFFFFFFFF8;
    v231 = swift_allocObject();
    v232 = v284;
    sub_1CEFDA05C(v227, v231 + v221, type metadata accessor for Signpost);
    v233 = (v231 + v222);
    *v233 = sub_1CF045408;
    v233[1] = 0;
    v234 = v293;
    *(v231 + v228) = v292;
    v235 = v231 + v229;
    *v235 = "propagateToFS(itemID:request:completion:)";
    *(v235 + 8) = 41;
    *(v235 + 16) = 2;
    v236 = (v231 + v230);
    *v236 = v281;
    v236[1] = v234;
    v237 = (v231 + ((v230 + 23) & 0xFFFFFFFFFFFFFFF8));
    v238 = v287;
    *v237 = sub_1CF927074;
    v237[1] = v238;
    v239 = swift_allocObject();
    v239[2] = sub_1CF75C120;
    v239[3] = v223;
    v240 = v285;
    v239[4] = v285;
    swift_retain_n();

    v241 = v240;

    v242 = fpfs_current_log();
    v292 = *(v241 + 16);
    v243 = v263;
    sub_1CEFCCBDC(v282, v263, &unk_1EC4BE370, qword_1CFA01B30);
    v244 = v283;
    if ((*(v232 + 48))(v243, 1) == 1)
    {
      sub_1CEFCCC44(v243, &unk_1EC4BE370, qword_1CFA01B30);
      v245 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v246 = v264;
      sub_1CF9E6438();
      (*(v232 + 8))(v243, v244);
      v245 = sub_1CF9E63C8();
      (*(v265 + 8))(v246, v266);
    }

    v247 = swift_allocObject();
    v247[2] = v242;
    v247[3] = sub_1CF4858EC;
    v247[4] = v231;
    v298 = sub_1CF2BA17C;
    v299 = v247;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v296 = sub_1CEFCA444;
    v297 = &block_descriptor_311_0;
    v248 = _Block_copy(&aBlock);
    v249 = v242;

    v298 = sub_1CF2BA180;
    v299 = v239;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v296 = sub_1CEFCA444;
    v297 = &block_descriptor_314;
    v250 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v292, v291, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v245, v248, v250);
    _Block_release(v250);
    _Block_release(v248);

    sub_1CEFCCC44(v282, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5398(v273, type metadata accessor for Signpost);
    v251 = v286;
    v252 = fpfs_adopt_log();

    sub_1CEFD0994(v289, v290, 1);
  }

  else
  {
    sub_1CEFE55D0(v101, v44, &qword_1EC4C5220, &qword_1CFA0A270);
    if ((*(v44 + *(v104 + 56)) & 1) != 0 || (v258 & 1) != 0 && !*(v44 + *(v104 + 52)))
    {
      v130 = *v44;
      v131 = *(v44 + 8);
      if (((a3 >> 58) & 0x3C | (a3 >> 1) & 3) == 0x1E)
      {
        v132 = *((a3 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v133 = v132;
      }

      else
      {
        v135 = swift_allocObject();
        *(v135 + 16) = a3;
        v133 = v135 | 0x7000000000000004;
        v132 = a3;
      }

      v281 = v44;
      sub_1CEFD09A0(v132);
      v136 = swift_allocObject();
      *(v136 + 16) = v57;
      *(v136 + 24) = a3;
      v137 = v290;
      *(v136 + 32) = v289;
      *(v136 + 40) = v137;
      *(v136 + 48) = v67;
      *(v136 + 56) = v274 & 1;
      *(v136 + 57) = a9 & 1;
      v138 = swift_allocObject();
      *(v138 + 16) = v130;
      *(v138 + 24) = v131;
      *(v138 + 32) = v133;
      *(v138 + 40) = v67;
      *(v138 + 48) = sub_1CF927140;
      *(v138 + 56) = v136;
      v287 = v138;
      v139 = swift_allocObject();
      *(v139 + 16) = sub_1CF927140;
      *(v139 + 24) = v136;
      v293 = v139;

      sub_1CEFD09A0(a3);

      v289 = v136;

      sub_1CEFD09A0(v133);
      v290 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v140 = qword_1EDEBBE40;
      v141 = v276;
      v142 = v279;
      (*(v276 + 56))(v279, 1, 1, v103);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v143 = sub_1CF9E7988();
      v145 = v144;
      MEMORY[0x1D3868CC0](v143);
      v145, v146, v147, v148, v149, v150, v151, v152;
      v153 = *(&aBlock + 1);
      v286 = aBlock;
      v154 = v267;
      sub_1CEFCCBDC(v142, v267, &unk_1EC4BED20, &unk_1CFA00700);
      v155 = *(v141 + 48);
      v156 = v155(v154, 1, v103);
      v288 = v133;
      if (v156 == 1)
      {
        v157 = v140;
        v158 = v269;
        sub_1CF9E6048();
        if (v155(v154, 1, v103) != 1)
        {
          sub_1CEFCCC44(v154, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v158 = v269;
        (*(v141 + 32))(v269, v154, v103);
      }

      v159 = v280;
      (*(v141 + 16))(v280, v158, v103);
      v160 = v275;
      *(v159 + *(v275 + 20)) = v140;
      v161 = v159 + *(v160 + 24);
      *v161 = "DB queue wait";
      *(v161 + 8) = 13;
      *(v161 + 16) = 2;
      v162 = v140;
      v163 = v141;
      v164 = v162;
      v165 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v166 = swift_allocObject();
      *(v166 + 16) = xmmword_1CF9FA450;
      *(v166 + 56) = MEMORY[0x1E69E6158];
      *(v166 + 64) = sub_1CEFD51C4();
      *(v166 + 32) = v286;
      *(v166 + 40) = v153;
      sub_1CF9E6028(v165, &dword_1CEFC7000, v164, "DB queue wait", 13, 2, v159, "%s", 2);
      v166, v167, v168, v169, v170, v171, v172, v173;
      (*(v163 + 8))(v158, v103);
      sub_1CEFCCC44(v279, &unk_1EC4BED20, &unk_1CFA00700);
      v286 = v67[21];
      v291 = v67[8];
      v284 = sub_1CF9E6448();
      v285 = *(v284 - 8);
      (*(v285 + 56))(v283, 1, 1, v284);
      v174 = v268;
      sub_1CEFDA2E4(v159, v268, type metadata accessor for Signpost);
      v175 = (*(v277 + 80) + 16) & ~*(v277 + 80);
      v176 = (v278 + v175 + 7) & 0xFFFFFFFFFFFFFFF8;
      v177 = swift_allocObject();
      sub_1CEFDA05C(v174, &v177[v175], type metadata accessor for Signpost);
      v178 = &v177[v176];
      v282 = sub_1CF928480;
      v179 = v293;
      *v178 = sub_1CF928480;
      *(v178 + 1) = v179;
      v180 = v270;
      sub_1CEFDA2E4(v159, v270, type metadata accessor for Signpost);
      v181 = (v176 + 23) & 0xFFFFFFFFFFFFFFF8;
      v182 = (v181 + 15) & 0xFFFFFFFFFFFFFFF8;
      v183 = (v182 + 25) & 0xFFFFFFFFFFFFFFF8;
      v184 = swift_allocObject();
      v185 = v180;
      v186 = v284;
      sub_1CEFDA05C(v185, v184 + v175, type metadata accessor for Signpost);
      v187 = (v184 + v176);
      *v187 = sub_1CF045408;
      v187[1] = 0;
      *(v184 + v181) = v292;
      v188 = v184 + v182;
      *v188 = "propagateToFP(itemID:request:completion:)";
      *(v188 + 8) = 41;
      *(v188 + 16) = 2;
      v189 = (v184 + v183);
      v190 = v293;
      *v189 = v282;
      v189[1] = v190;
      v191 = (v184 + ((v183 + 23) & 0xFFFFFFFFFFFFFFF8));
      v192 = v287;
      *v191 = sub_1CF928484;
      v191[1] = v192;
      v193 = swift_allocObject();
      v193[2] = sub_1CF75C120;
      v193[3] = v177;
      v194 = v286;
      v193[4] = v286;
      swift_retain_n();

      v292 = v177;
      v195 = v285;

      v196 = fpfs_current_log();
      v286 = *(v194 + 2);
      v197 = v271;
      sub_1CEFCCBDC(v283, v271, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v195 + 48))(v197, 1, v186) == 1)
      {
        sub_1CEFCCC44(v197, &unk_1EC4BE370, qword_1CFA01B30);
        v198 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v199 = v264;
        sub_1CF9E6438();
        (*(v195 + 8))(v197, v186);
        v198 = sub_1CF9E63C8();
        (*(v265 + 8))(v199, v266);
      }

      v200 = v288;
      v201 = swift_allocObject();
      v201[2] = v196;
      v201[3] = sub_1CF4858EC;
      v201[4] = v184;
      v298 = sub_1CF2BA17C;
      v299 = v201;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v296 = sub_1CEFCA444;
      v297 = &block_descriptor_347;
      v202 = _Block_copy(&aBlock);
      v203 = v196;

      v298 = sub_1CF2BA180;
      v299 = v193;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v296 = sub_1CEFCA444;
      v297 = &block_descriptor_350;
      v204 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v286, v291, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v198, v202, v204);
      _Block_release(v204);
      _Block_release(v202);

      sub_1CEFCCC44(v283, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5398(v280, type metadata accessor for Signpost);
      v205 = v290;
      v206 = fpfs_adopt_log();

      sub_1CEFD0A98(v200);
      v134 = v281;
    }

    else
    {
      v289(v100);
      v134 = v44;
    }

    sub_1CEFCCC44(v134, &qword_1EC4C5220, &qword_1CFA0A270);
  }
}

double sub_1CF90A844(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, int a8, char a9)
{
  v82 = a8;
  v83 = a6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v80);
  v81 = (&v74 - v14);
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v20 = a2;
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7298();

  if (os_log_type_enabled(v21, v22))
  {
    v75 = v22;
    v76 = v16;
    v77 = v15;
    v78 = a5;
    v79 = a7;
    v23 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v86 = v74;
    *v23 = 136315650;
    v24 = swift_beginAccess();
    v25 = *(a3 + 32);
    v26 = *(a3 + 40);
    if (*(a3 + 41))
    {
      v27 = NSFileProviderItemIdentifier.description.getter(v25);
      v29 = v28;
      sub_1CEFD0994(v25, v26, 1);
    }

    else
    {
      v84 = *(a3 + 32);
      v85 = v26;
      v27 = VFSItemID.description.getter(v24);
      v29 = v30;
    }

    v31 = sub_1CEFD0DF0(v27, v29, &v86);
    v29, v32, v33, v34, v35, v36, v37, v38;
    *(v23 + 4) = v31;
    *(v23 + 12) = 2080;
    v39 = sub_1CF913458(a4);
    v41 = v40;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v42 = sub_1CEFD0DF0(v39, v41, &v86);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v23 + 14) = v42;
    *(v23 + 22) = 2080;
    v84 = a2;
    v50 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v51 = sub_1CF9E6948();
    v53 = v52;
    v54 = sub_1CEFD0DF0(v51, v52, &v86);
    v53, v55, v56, v57, v58, v59, v60, v61;
    *(v23 + 24) = v54;
    _os_log_impl(&dword_1CEFC7000, v21, v75, "finished propagating to FP %s request %s: %s", v23, 0x20u);
    v62 = v74;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v62, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);

    (*(v76 + 8))(v18, v77);
    a5 = v78;
    a7 = v79;
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    (*(v16 + 8))(v18, v15);
  }

  v63 = v83;
  v64 = v82;
  if (a2)
  {
    v65 = v81;
    *v81 = a2;
    swift_storeEnumTagMultiPayload();
    v66 = a2;
    a5(v65);
    sub_1CEFCCC44(v65, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  else
  {
    v68 = swift_allocObject();
    v69 = a5;
    v70 = v68;
    v68[2] = a3;
    v68[3] = a4;
    v68[4] = v69;
    v68[5] = v63;
    v71 = swift_allocObject();
    *(v71 + 16) = a3;
    *(v71 + 24) = a7;
    *(v71 + 32) = a9 & 1;
    *(v71 + 33) = v64 & 1;
    *(v71 + 40) = sub_1CF9271C0;
    *(v71 + 48) = v70;
    *(v71 + 56) = a4;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1CF9271C0;
    *(v72 + 24) = v70;
    v73 = *(*a7 + 472);

    sub_1CEFD09A0(a4);

    sub_1CEFD09A0(a4);

    v73("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v72, sub_1CF796A9C, v71);
  }

  return result;
}

double sub_1CF90AD9C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, int a8, char a9)
{
  v82 = a8;
  v83 = a6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v80);
  v81 = (&v74 - v14);
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v20 = a2;
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7298();

  if (os_log_type_enabled(v21, v22))
  {
    v75 = v22;
    v76 = v16;
    v77 = v15;
    v78 = a5;
    v79 = a7;
    v23 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v86 = v74;
    *v23 = 136315650;
    v24 = swift_beginAccess();
    v25 = *(a3 + 32);
    v26 = *(a3 + 40);
    if (*(a3 + 41))
    {
      v27 = NSFileProviderItemIdentifier.description.getter(v25);
      v29 = v28;
      sub_1CEFD0994(v25, v26, 1);
    }

    else
    {
      v84 = *(a3 + 32);
      v85 = v26;
      v27 = VFSItemID.description.getter(v24);
      v29 = v30;
    }

    v31 = sub_1CEFD0DF0(v27, v29, &v86);
    v29, v32, v33, v34, v35, v36, v37, v38;
    *(v23 + 4) = v31;
    *(v23 + 12) = 2080;
    v39 = sub_1CF913458(a4);
    v41 = v40;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v42 = sub_1CEFD0DF0(v39, v41, &v86);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v23 + 14) = v42;
    *(v23 + 22) = 2080;
    v84 = a2;
    v50 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v51 = sub_1CF9E6948();
    v53 = v52;
    v54 = sub_1CEFD0DF0(v51, v52, &v86);
    v53, v55, v56, v57, v58, v59, v60, v61;
    *(v23 + 24) = v54;
    _os_log_impl(&dword_1CEFC7000, v21, v75, "finished propagating to FS %s request %s: %s", v23, 0x20u);
    v62 = v74;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v62, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);

    (*(v76 + 8))(v18, v77);
    a5 = v78;
    a7 = v79;
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    (*(v16 + 8))(v18, v15);
  }

  v63 = v83;
  v64 = v82;
  if (a2)
  {
    v65 = v81;
    *v81 = a2;
    swift_storeEnumTagMultiPayload();
    v66 = a2;
    a5(v65);
    sub_1CEFCCC44(v65, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  else
  {
    *(a3 + 42) = 0;
    v68 = swift_allocObject();
    v69 = a5;
    v70 = v68;
    v68[2] = a3;
    v68[3] = a4;
    v68[4] = v69;
    v68[5] = v63;
    v71 = swift_allocObject();
    *(v71 + 16) = a3;
    *(v71 + 24) = a7;
    *(v71 + 32) = a9 & 1;
    *(v71 + 33) = v64 & 1;
    *(v71 + 40) = sub_1CF9271E8;
    *(v71 + 48) = v70;
    *(v71 + 56) = a4;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1CF9271E8;
    *(v72 + 24) = v70;
    v73 = *(*a7 + 472);

    sub_1CEFD09A0(a4);

    sub_1CEFD09A0(a4);

    v73("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v72, sub_1CF796A9C, v71);
  }

  return result;
}

uint64_t sub_1CF90B2F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, const char *a6)
{
  v73 = a6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(a1, v14, &qword_1EC4C5020, &qword_1CFA0A278);
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);

  v20 = sub_1CF9E6108();
  v70 = sub_1CF9E7298();
  if (os_log_type_enabled(v20, v70))
  {
    v64 = v20;
    v65 = v16;
    v66 = v15;
    v67 = a1;
    v68 = a5;
    v69 = a4;
    v21 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v76 = v63;
    *v21 = 136315650;
    v22 = swift_beginAccess();
    v23 = *(a2 + 32);
    v24 = *(a2 + 40);
    if (*(a2 + 41))
    {
      v25 = NSFileProviderItemIdentifier.description.getter(v23);
      v27 = v26;
      sub_1CEFD0994(v23, v24, 1);
    }

    else
    {
      v74 = *(a2 + 32);
      v75 = v24;
      v25 = VFSItemID.description.getter(v22);
      v27 = v28;
    }

    v29 = sub_1CEFD0DF0(v25, v27, &v76);
    v27, v30, v31, v32, v33, v34, v35, v36;
    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v37 = sub_1CF913458(a3);
    v39 = v38;
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);
    v40 = sub_1CEFD0DF0(v37, v39, &v76);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v21 + 14) = v40;
    *(v21 + 22) = 2080;
    sub_1CEFCCBDC(v14, v71, &qword_1EC4C5020, &qword_1CFA0A278);
    v48 = sub_1CF9E6948();
    v50 = v49;
    sub_1CEFCCC44(v14, &qword_1EC4C5020, &qword_1CFA0A278);
    v51 = sub_1CEFD0DF0(v48, v50, &v76);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v21 + 24) = v51;
    v59 = v64;
    _os_log_impl(&dword_1CEFC7000, v64, v70, v73, v21, 0x20u);
    v60 = v63;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v60, -1, -1);
    MEMORY[0x1D386CDC0](v21, -1, -1);

    (*(v65 + 8))(v18, v66);
    a4 = v69;
    a1 = v67;
  }

  else
  {
    sub_1CEFD0A98(a3);

    sub_1CEFD0A98(a3);

    sub_1CEFCCC44(v14, &qword_1EC4C5020, &qword_1CFA0A278);
    (*(v16 + 8))(v18, v15);
  }

  return a4(a1);
}

void sub_1CF90B718(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v99) = a4;
  v98 = a3;
  v4 = sub_1CF9E63D8();
  v97 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v90 - v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - v18;
  v20 = type metadata accessor for Signpost(0);
  v100 = *(v20 - 8);
  v21 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v101 = (&v90 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v90 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v90 = v4;
      v30 = swift_allocObject();
      v31 = v98;
      *(v30 + 16) = v27;
      *(v30 + 24) = v31;
      *(v30 + 32) = v99;
      v95 = v30;
      *(v30 + 40) = v29;
      v104 = v27;

      v99 = v29;
      v98 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v32 = qword_1EDEBBE40;
      (*(v11 + 56))(v19, 1, 1, v10);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v33 = sub_1CF9E7988();
      v35 = v34;
      MEMORY[0x1D3868CC0](v33);
      v35, v36, v37, v38, v39, v40, v41, v42;
      v93 = *(&aBlock + 1);
      v94 = aBlock;
      sub_1CEFCCBDC(v19, v16, &unk_1EC4BED20, &unk_1CFA00700);
      v43 = *(v11 + 48);
      if (v43(v16, 1, v10) == 1)
      {
        v44 = v32;
        sub_1CF9E6048();
        v45 = v13;
        if (v43(v16, 1, v10) != 1)
        {
          sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v45 = v13;
        (*(v11 + 32))(v13, v16, v10);
      }

      v46 = v105;
      (*(v11 + 16))(v105, v45, v10);
      *(v46 + *(v20 + 20)) = v32;
      v47 = v46 + *(v20 + 24);
      *v47 = "DB queue wait";
      *(v47 + 8) = 13;
      *(v47 + 16) = 2;
      v48 = v32;
      v49 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1CF9FA450;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = sub_1CEFD51C4();
      v51 = v93;
      *(v50 + 32) = v94;
      *(v50 + 40) = v51;
      sub_1CF9E6028(v49, &dword_1CEFC7000, v48, "DB queue wait", 13, 2, v46, "%s", 2);
      v50, v52, v53, v54, v55, v56, v57, v58;
      (*(v11 + 8))(v45, v10);
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
      v93 = *(v104 + 168);
      v94 = *(v104 + 64);
      v92 = sub_1CF9E6448();
      v91 = *(v92 - 8);
      (*(v91 + 56))(v106, 1, 1, v92);
      v59 = v101;
      sub_1CEFDA2E4(v46, v101, type metadata accessor for Signpost);
      v60 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v61 = (v21 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      sub_1CEFDA05C(v59, v62 + v60, type metadata accessor for Signpost);
      v63 = (v62 + v61);
      v101 = nullsub_1;
      *v63 = nullsub_1;
      v63[1] = 0;
      v64 = v102;
      sub_1CEFDA2E4(v46, v102, type metadata accessor for Signpost);
      v65 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = (v66 + 25) & 0xFFFFFFFFFFFFFFF8;
      v68 = swift_allocObject();
      v69 = v91;
      sub_1CEFDA05C(v64, v68 + v60, type metadata accessor for Signpost);
      v70 = (v68 + v61);
      v71 = v104;
      *v70 = sub_1CF045408;
      v70[1] = 0;
      *(v68 + v65) = v71;
      v72 = v68 + v66;
      *v72 = "materialize(_:request:options:qos:completion:)";
      *(v72 + 8) = 46;
      *(v72 + 16) = 2;
      v73 = (v68 + v67);
      *v73 = v101;
      v73[1] = 0;
      v74 = (v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8));
      v75 = v95;
      *v74 = sub_1CF552D20;
      v74[1] = v75;
      v76 = swift_allocObject();
      v76[2] = sub_1CF75C120;
      v76[3] = v62;
      v77 = v93;
      v76[4] = v93;
      v78 = v92;

      v102 = v62;

      v79 = fpfs_current_log();
      v80 = *(v77 + 16);
      v81 = v103;
      sub_1CEFCCBDC(v106, v103, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v69 + 48))(v81, 1, v78) == 1)
      {
        sub_1CEFCCC44(v81, &unk_1EC4BE370, qword_1CFA01B30);
        v82 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v83 = v96;
        sub_1CF9E6438();
        (*(v69 + 8))(v81, v78);
        v82 = sub_1CF9E63C8();
        (*(v97 + 8))(v83, v90);
      }

      v84 = swift_allocObject();
      v84[2] = v79;
      v84[3] = sub_1CF4858EC;
      v84[4] = v68;
      v110 = sub_1CF2BA17C;
      v111 = v84;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v108 = sub_1CEFCA444;
      v109 = &block_descriptor_257;
      v85 = _Block_copy(&aBlock);
      v86 = v79;

      v110 = sub_1CF2BA180;
      v111 = v76;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v108 = sub_1CEFCA444;
      v109 = &block_descriptor_260;
      v87 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v80, v94, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v82, v85, v87);
      _Block_release(v87);
      _Block_release(v85);

      sub_1CEFCCC44(v106, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5398(v105, type metadata accessor for Signpost);
      v88 = v98;
      v89 = fpfs_adopt_log();
    }

    else
    {
    }
  }
}

void sub_1CF90C290(void *a1, uint64_t a2, unint64_t a3, void **a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v98 = a2;
  v99 = a3;
  v100 = a10;
  v16 = sub_1CF9E5CF8();
  v17 = *(v16 - 8);
  v96 = v16;
  v97 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6118();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a5;
  v104 = a6;
  v23 = a8;
  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v25 = sub_1CF9E7298();
  v26 = sub_1CF19C010(v25, "materialization waiter", 22, 2, v98, v99);
  v28 = v27;
  (*(v20 + 8))(v22, v19);
  v29 = a1[3];
  v30 = a1[4];
  v31 = __swift_project_boxed_opaque_existential_1(a1, v29);
  v93 = *(v30 + 8);
  v99 = a7;
  v32 = a7;
  v33 = a4;
  if ((sub_1CF599234(&v103, v32, v23, v101, v100, v31, v26, v28, v29, v93) - 1) >= 2u)
  {

    return;
  }

  v101 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E7CC0];
  v34[2] = MEMORY[0x1E69E7CC0];
  v34[3] = v35;
  v34[4] = v35;
  v34[5] = v35;
  v34[6] = 0;
  inited = swift_initStackObject();
  *(inited + 16) = v35;
  *(inited + 24) = v35;
  *(inited + 32) = v35;
  *(inited + 40) = v35;
  *(inited + 48) = 0;
  if ((v23 & 2) != 0)
  {
    v37 = 0x400000800000;
  }

  else
  {
    v37 = 0x800000;
  }

  v38 = a1[3];
  v39 = a1[4];
  v40 = __swift_project_boxed_opaque_existential_1(a1, v38);
  v41 = sub_1CF9042D0(v99, sub_1CF90C94C, sub_1CF915948);
  v43 = v42;
  v44 = *(v39 + 8);

  v45 = v41;
  v46 = v102;
  sub_1CF5666D4(&v103, v45, v43, v37, v33, v34, inited, v40, v38, v44);
  if (v46)
  {

    return;
  }

  v100 = v33;
  v102 = 0;

  v47 = a1[3];
  v48 = a1[4];
  v49 = __swift_project_boxed_opaque_existential_1(a1, v47);
  v50 = v95;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v52 = v51;
  v53 = v97 + 8;
  v54 = *(v97 + 8);
  v54(v50, v96);
  v55 = v52 * 1000000000.0;
  if (COERCE__INT64(fabs(v52 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  v97 = v53;
  if (v55 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v56 = v102;
  sub_1CF521850(v34, v55, v49, v47, v48);
  if (v56)
  {
LABEL_16:

    return;
  }

  v102 = 0;
  v57 = a1[3];
  v58 = a1[4];
  v59 = __swift_project_boxed_opaque_existential_1(a1, v57);
  v60 = v95;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v62 = v61;
  v54(v60, v96);
  v63 = v62 * 1000000000.0;
  if (COERCE__INT64(fabs(v62 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (v63 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v63 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v64 = v102;
  sub_1CF521850(inited, v63, v59, v57, v58);
  if (v64)
  {
    goto LABEL_16;
  }

  swift_setDeallocating();
  *(inited + 16), v65, v66, v67, v68, v69, v70, v71;
  *(inited + 24), v72, v73, v74, v75, v76, v77, v78;
  *(inited + 32), v79, v80, v81, v82, v83, v84, v85;
  *(inited + 40), v86, v87, v88, v89, v90, v91, v92;
}

void *sub_1CF90C7D0(unint64_t a1)
{
  v1 = 0;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 0uLL:
      v1 = *(a1 + 32);
      goto LABEL_19;
    case 1uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x16uLL:
    case 0x24uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      goto LABEL_19;
    case 2uLL:
      v7 = &unk_1EC4C4F40;
      v8 = qword_1CFA0F4C0;
      goto LABEL_17;
    case 6uLL:
    case 7uLL:
    case 0x14uLL:
    case 0x21uLL:
    case 0x25uLL:
    case 0x2CuLL:
      v2 = &qword_1EC4C20E8;
      v3 = &unk_1CFA0F480;
      goto LABEL_7;
    case 0xEuLL:
    case 0xFuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      goto LABEL_19;
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      goto LABEL_19;
    case 0x1AuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (!v1)
      {
        return v1;
      }

      goto LABEL_19;
    case 0x20uLL:
      v7 = &unk_1EC4C5210;
      v8 = &unk_1CFA0F4B0;
      goto LABEL_17;
    case 0x23uLL:
      v7 = &unk_1EC4C5200;
      v8 = "hx\t";
      goto LABEL_17;
    case 0x26uLL:
      v7 = &qword_1EC4C20F0;
      v8 = &unk_1CFA0F4A0;
      goto LABEL_17;
    case 0x27uLL:
      v7 = &unk_1EC4C4AF0;
      v8 = "pN\t";
      goto LABEL_17;
    case 0x28uLL:
    case 0x29uLL:
      v2 = &unk_1EC4C51F0;
      v3 = qword_1CFA17B30;
LABEL_7:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
      v5 = swift_projectBox();
      v6 = *(v4 + 48);
      goto LABEL_18;
    case 0x2AuLL:
      v7 = &unk_1EC4C4B00;
      v8 = &unk_1CFA0F490;
LABEL_17:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      v5 = swift_projectBox();
      v6 = *(v9 + 64);
LABEL_18:
      v1 = *(v5 + v6);
LABEL_19:
      v10 = v1;
      break;
    default:
      return v1;
  }

  return v1;
}

void *sub_1CF90C94C(unint64_t a1)
{
  v1 = 0;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 0uLL:
      v1 = *(a1 + 24);
      goto LABEL_19;
    case 1uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x16uLL:
    case 0x24uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      goto LABEL_19;
    case 2uLL:
      v7 = &unk_1EC4C4F40;
      v8 = qword_1CFA0F4C0;
      goto LABEL_17;
    case 6uLL:
    case 7uLL:
    case 0x14uLL:
    case 0x21uLL:
    case 0x25uLL:
    case 0x2CuLL:
      v2 = &qword_1EC4C20E8;
      v3 = &unk_1CFA0F480;
      goto LABEL_7;
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      goto LABEL_19;
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      goto LABEL_19;
    case 0x1AuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (!v1)
      {
        return v1;
      }

      goto LABEL_19;
    case 0x20uLL:
      v7 = &unk_1EC4C5210;
      v8 = &unk_1CFA0F4B0;
      goto LABEL_17;
    case 0x23uLL:
      v7 = &unk_1EC4C5200;
      v8 = "hx\t";
      goto LABEL_17;
    case 0x26uLL:
      v7 = &qword_1EC4C20F0;
      v8 = &unk_1CFA0F4A0;
      goto LABEL_17;
    case 0x27uLL:
      v7 = &unk_1EC4C4AF0;
      v8 = "pN\t";
      goto LABEL_17;
    case 0x28uLL:
    case 0x29uLL:
      v2 = &unk_1EC4C51F0;
      v3 = qword_1CFA17B30;
LABEL_7:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
      v5 = swift_projectBox();
      v6 = *(v4 + 48);
      goto LABEL_18;
    case 0x2AuLL:
      v7 = &unk_1EC4C4B00;
      v8 = &unk_1CFA0F490;
LABEL_17:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      v5 = swift_projectBox();
      v6 = *(v9 + 64);
LABEL_18:
      v1 = *(v5 + v6);
LABEL_19:
      v10 = v1;
      break;
    default:
      return v1;
  }

  return v1;
}

double sub_1CF90CAC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(**(*(v3 + 40) + 16) + 96))(&v19);
  v8 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
  v9 = swift_allocObject();
  *(v9 + 42) = 0;
  *(v9 + 32) = v8;
  *(v9 + 40) = 256;
  *(v9 + 16) = v8;
  *(v9 + 24) = 256;
  if (((a1 >> 58) & 0x3C | (a1 >> 1) & 3) == 0x1E)
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v11 = v10;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v11 = v12 | 0x7000000000000004;
    v10 = a1;
  }

  sub_1CEFD09A0(v10);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = v4;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v4;
  *(v14 + 32) = 256;
  *(v14 + 40) = sub_1CF9264FC;
  *(v14 + 48) = v13;
  *(v14 + 56) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF9264FC;
  *(v15 + 24) = v13;
  v16 = *(*v4 + 472);

  sub_1CEFD09A0(a1);

  v17 = v8;

  sub_1CEFD09A0(v11);
  v16("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v15, sub_1CF796A9C, v14);

  sub_1CEFD0A98(v11);

  return result;
}

void sub_1CF90CD54(uint64_t a1, void (*a2)(uint64_t), void *a3, unint64_t a4, void *a5)
{
  v144 = a4;
  v145 = a5;
  v146 = a2;
  v147 = a3;
  v132 = sub_1CF9E63D8();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v141 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v127 - v10;
  v12 = sub_1CF9E6068();
  v138 = *(v12 - 8);
  v139 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v133 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v127 - v17;
  v134 = type metadata accessor for Signpost(0);
  v136 = *(v134 - 8);
  v18 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v140 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v137 = (&v127 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v127 - v22;
  v23 = sub_1CF9E6118();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v127 - v28;
  sub_1CEFCCBDC(a1, &v127 - v28, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = &qword_1EC4C5020;
    v31 = &qword_1CFA0A278;
LABEL_7:
    sub_1CEFCCC44(v29, v30, v31);
    v146(a1);
    return;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  if ((*(*(v32 - 8) + 48))(v29, 1, v32) != 1)
  {
    v30 = &qword_1EC4C5228;
    v31 = &unk_1CFA189E0;
    goto LABEL_7;
  }

  v33 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v34 = v144;
  sub_1CEFD09A0(v144);
  v35 = sub_1CF9E6108();
  v36 = sub_1CF9E7298();
  v37 = os_log_type_enabled(v35, v36);
  v129 = v11;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&aBlock = v39;
    *v38 = 136315138;
    sub_1CEFD09A0(v34);
    v40 = sub_1CEFD11AC(v34);
    v42 = v41;
    sub_1CEFD0A98(v144);
    sub_1CEFD0A98(v144);
    v43 = sub_1CEFD0DF0(v40, v42, &aBlock);
    v44 = v42;
    v11 = v129;
    v44, v45, v46, v47, v48, v49, v50, v51;
    *(v38 + 4) = v43;
    v34 = v144;
    _os_log_impl(&dword_1CEFC7000, v35, v36, "Waiting for propagation of root to the FP request %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1D386CDC0](v39, -1, -1);
    MEMORY[0x1D386CDC0](v38, -1, -1);
  }

  else
  {
    sub_1CEFD0A98(v34);
  }

  v52 = (*(v24 + 8))(v26, v23);
  v53 = v135;
  v54 = v145;
  (*(**(v145[4] + 16) + 96))(&v153, v52);
  v55 = swift_allocObject();
  v56 = v147;
  *(v55 + 2) = v146;
  *(v55 + 3) = v56;
  *(v55 + 4) = v34;
  *(v55 + 5) = v54;
  v57 = v153;
  v58 = v154;
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v58;
  *(v59 + 32) = v34;
  *(v59 + 40) = v54;
  *(v59 + 48) = sub_1CF926508;
  *(v59 + 56) = v55;
  v144 = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1CF926508;
  *(v60 + 24) = v55;
  v146 = v60;
  sub_1CEFD09A0(v34);

  sub_1CEFD09A0(v34);

  v135 = v55;

  v147 = fpfs_adopt_log();
  v61 = v138;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v62 = qword_1EDEBBE40;
  v63 = v142;
  v64 = v139;
  (*(v61 + 56))(v142, 1, 1, v139);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v65 = sub_1CF9E7988();
  v67 = v66;
  MEMORY[0x1D3868CC0](v65);
  v67, v68, v69, v70, v71, v72, v73, v74;
  v127 = *(&aBlock + 1);
  v128 = aBlock;
  v75 = v63;
  v76 = v133;
  sub_1CEFCCBDC(v75, v133, &unk_1EC4BED20, &unk_1CFA00700);
  v77 = *(v61 + 48);
  if (v77(v76, 1, v64) == 1)
  {
    v78 = v62;
    sub_1CF9E6048();
    if (v77(v76, 1, v64) != 1)
    {
      sub_1CEFCCC44(v76, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v61 + 32))(v53, v76, v64);
  }

  v79 = v143;
  (*(v61 + 16))(v143, v53, v64);
  v80 = v134;
  *(v79 + *(v134 + 20)) = v62;
  v81 = v79 + *(v80 + 24);
  *v81 = "DB queue wait";
  *(v81 + 8) = 13;
  *(v81 + 16) = 2;
  v82 = v62;
  v83 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v84 = v53;
  v85 = v61;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1CF9FA450;
  *(v86 + 56) = MEMORY[0x1E69E6158];
  *(v86 + 64) = sub_1CEFD51C4();
  v87 = v127;
  *(v86 + 32) = v128;
  *(v86 + 40) = v87;
  sub_1CF9E6028(v83, &dword_1CEFC7000, v82, "DB queue wait", 13, 2, v79, "%s", 2);
  v86, v88, v89, v90, v91, v92, v93, v94;
  (*(v85 + 8))(v84, v64);
  sub_1CEFCCC44(v142, &unk_1EC4BED20, &unk_1CFA00700);
  v139 = v145[21];
  v142 = v145[8];
  v138 = sub_1CF9E6448();
  v134 = *(v138 - 8);
  (*(v134 + 56))(v11, 1, 1, v138);
  v95 = v137;
  sub_1CEFDA2E4(v79, v137, type metadata accessor for Signpost);
  v96 = (*(v136 + 80) + 16) & ~*(v136 + 80);
  v97 = (v18 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  sub_1CEFDA05C(v95, v98 + v96, type metadata accessor for Signpost);
  v99 = (v98 + v97);
  v137 = sub_1CF92663C;
  v100 = v146;
  *v99 = sub_1CF92663C;
  v99[1] = v100;
  v101 = v140;
  sub_1CEFDA2E4(v79, v140, type metadata accessor for Signpost);
  v102 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v103 + 25) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  sub_1CEFDA05C(v101, v105 + v96, type metadata accessor for Signpost);
  v106 = (v105 + v97);
  *v106 = sub_1CF045408;
  v106[1] = 0;
  v107 = v146;
  *(v105 + v102) = v145;
  v108 = v105 + v103;
  v109 = v134;
  *v108 = "propagateToFP(itemID:request:completion:)";
  *(v108 + 8) = 41;
  *(v108 + 16) = 2;
  v110 = (v105 + v104);
  *v110 = v137;
  v110[1] = v107;
  v111 = (v105 + ((v104 + 23) & 0xFFFFFFFFFFFFFFF8));
  v112 = v144;
  *v111 = sub_1CF926624;
  v111[1] = v112;
  v113 = swift_allocObject();
  v113[2] = sub_1CF5526E8;
  v113[3] = v98;
  v114 = v139;
  v113[4] = v139;
  swift_retain_n();

  v145 = v98;
  v115 = v138;

  v116 = fpfs_current_log();
  v117 = *(v114 + 16);
  v118 = v141;
  sub_1CEFCCBDC(v129, v141, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v109 + 48))(v118, 1, v115) == 1)
  {
    sub_1CEFCCC44(v118, &unk_1EC4BE370, qword_1CFA01B30);
    v119 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v120 = v130;
    sub_1CF9E6438();
    (*(v109 + 8))(v118, v115);
    v119 = sub_1CF9E63C8();
    (*(v131 + 8))(v120, v132);
  }

  v121 = swift_allocObject();
  v121[2] = v116;
  v121[3] = sub_1CF48100C;
  v121[4] = v105;
  v151 = sub_1CEFCA438;
  v152 = v121;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v149 = sub_1CEFCA444;
  v150 = &block_descriptor_129;
  v122 = _Block_copy(&aBlock);
  v123 = v116;

  v151 = sub_1CF2AF9E8;
  v152 = v113;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v149 = sub_1CEFCA444;
  v150 = &block_descriptor_132_0;
  v124 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v117, v142, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v119, v122, v124);
  _Block_release(v124);
  _Block_release(v122);

  sub_1CEFCCC44(v129, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5398(v143, type metadata accessor for Signpost);
  v125 = v147;
  v126 = fpfs_adopt_log();
}

double sub_1CF90DC04(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, unint64_t a5, void *a6)
{
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  if (a2)
  {
    *v17 = a2;
    swift_storeEnumTagMultiPayload();
    v18 = a2;
    a3(v17);
    sub_1CEFCCC44(v17, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  else
  {
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(a5);
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E7298();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51 = a6;
      v52 = v24;
      v25 = v24;
      *v23 = 136315138;
      sub_1CEFD09A0(a5);
      v26 = sub_1CEFD11AC(a5);
      v49 = a3;
      v50 = a4;
      v27 = v26;
      v29 = v28;
      sub_1CEFD0A98(a5);
      sub_1CEFD0A98(a5);
      v30 = sub_1CEFD0DF0(v27, v29, &v52);
      v31 = v29;
      a4 = v50;
      v31, v32, v33, v34, v35, v36, v37, v38;
      *(v23 + 4) = v30;
      a3 = v49;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "Root propagated, retry lookup request %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v39 = v25;
      a6 = v51;
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(a5);
    }

    v40 = (*(v12 + 8))(v14, v11);
    (*(**(a6[5] + 16) + 96))(&v52, v40);
    v41 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v42 = swift_allocObject();
    *(v42 + 42) = 0;
    *(v42 + 32) = v41;
    *(v42 + 40) = 256;
    *(v42 + 16) = v41;
    *(v42 + 24) = 256;
    if (((a5 >> 58) & 0x3C | (a5 >> 1) & 3) == 0x1E)
    {
      a5 = *((a5 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v43 = a5;
    }

    else
    {
      v44 = swift_allocObject();
      *(v44 + 16) = a5;
      v43 = v44 | 0x7000000000000004;
    }

    sub_1CEFD09A0(a5);
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = a6;
    *(v45 + 32) = 256;
    *(v45 + 40) = a3;
    *(v45 + 48) = a4;
    *(v45 + 56) = v43;
    v46 = swift_allocObject();
    *(v46 + 16) = a3;
    *(v46 + 24) = a4;
    v47 = *(*a6 + 472);
    swift_retain_n();
    v48 = v41;

    sub_1CEFD09A0(v43);
    v47("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v46, sub_1CF796A9C, v45);

    sub_1CEFD0A98(v43);
  }

  return result;
}

void sub_1CF90E07C(uint64_t a1, int a2, int a3, unint64_t a4, void *a5, void (*a6)(void, void, void, void, void, void, void, void), void (*a7)(uint64_t), uint64_t a8)
{
  v157 = a7;
  v158 = a6;
  v149 = a5;
  v148 = a3;
  v156 = a2;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v150);
  v151 = (&v146 - v11);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v146 - v16;
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();
  if (os_log_type_enabled(v19, v20))
  {
    v152 = v13;
    v153 = v12;
    v155 = a8;
    v21 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v160 = v147;
    *v21 = 136315906;
    v22 = swift_beginAccess();
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v25 = NSFileProviderItemIdentifier.description.getter(v23);
      v27 = v26;
      sub_1CEFD0994(v23, v24, 1);
    }

    else
    {
      v162[1] = *(a1 + 32);
      v163 = v24;
      v25 = VFSItemID.description.getter(v22);
      v27 = v30;
    }

    v31 = sub_1CEFD0DF0(v25, v27, &v160);
    v27, v32, v33, v34, v35, v36, v37, v38;
    *(v21 + 4) = v31;
    *(v21 + 12) = 2080;
    a8 = v155;
    v13 = v152;
    if (v156)
    {
      if (v156 == 1)
      {
        v39 = 0x74616761706F7270;
      }

      else
      {
        v39 = 0xD000000000000010;
      }

      if (v156 == 1)
      {
        v40 = 0xED000053466F5465;
      }

      else
      {
        v40 = 0x80000001CFA2C3C0;
      }
    }

    else
    {
      v40 = 0x80000001CFA2C390;
      v39 = 0xD000000000000013;
    }

    v41 = sub_1CEFD0DF0(v39, v40, &v160);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v21 + 14) = v41;
    *(v21 + 22) = 2080;
    v49 = sub_1CEFD11AC(a4);
    v51 = v50;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v52 = sub_1CEFD0DF0(v49, v51, &v160);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v21 + 24) = v52;
    *(v21 + 32) = 2048;
    v29 = v158;
    *(v21 + 34) = v158;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "Lookup itemID %s with behavior %s request %s iteration %ld", v21, 0x2Au);
    v60 = v147;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v60, -1, -1);
    MEMORY[0x1D386CDC0](v21, -1, -1);

    v28 = *(v13 + 8);
    v12 = v153;
    v28(v17, v153);
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    v28 = *(v13 + 8);
    v28(v17, v12);
    v29 = v158;
  }

  v61 = v29 < 51;
  v62 = v159;
  if (v61)
  {
    swift_beginAccess();
    v73 = *(a1 + 32);
    v74 = *(a1 + 40);
    if (*(a1 + 41) == 1)
    {
      v75 = qword_1EDEA34B0;
      v76 = v73;
      if (v75 != -1)
      {
        swift_once();
      }

      v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v79 = v78;
      v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v87 = v80;
      if (v77 == v81 && v79 == v80)
      {
        v79, v80, v81, v82, v83, v84, v85, v86;
        v87, v88, v89, v90, v91, v92, v93, v94;
        sub_1CEFD0994(v73, v74, 1);
LABEL_28:
        sub_1CF90CAC8(a4, v157, a8);
        return;
      }

      v95 = sub_1CF9E8048();
      v79, v96, v97, v98, v99, v100, v101, v102;
      v87, v103, v104, v105, v106, v107, v108, v109;
      sub_1CEFD0994(v73, v74, 1);
      if (v95)
      {
        goto LABEL_28;
      }
    }

    else if (!v73 && v74 == 2)
    {
      goto LABEL_28;
    }

    if (((a4 >> 58) & 0x3C | (a4 >> 1) & 3) == 0x1E)
    {
      v110 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v111 = v110;
    }

    else
    {
      v136 = swift_allocObject();
      *(v136 + 16) = a4;
      v111 = v136 | 0x7000000000000004;
      v110 = a4;
    }

    sub_1CEFD09A0(v110);
    v137 = swift_allocObject();
    *(v137 + 16) = v157;
    *(v137 + 24) = a8;
    v138 = v154;
    *(v137 + 32) = v154;
    *(v137 + 40) = v156;
    *(v137 + 48) = a4;
    *(v137 + 56) = a1;
    v139 = v148 & 1;
    *(v137 + 64) = v148 & 1;
    v140 = v149;
    v141 = v158;
    *(v137 + 72) = v149;
    *(v137 + 80) = v141;
    v142 = swift_allocObject();
    *(v142 + 16) = a1;
    *(v142 + 24) = v138;
    *(v142 + 32) = v139;
    *(v142 + 33) = 0;
    *(v142 + 40) = sub_1CF796A90;
    *(v142 + 48) = v137;
    *(v142 + 56) = v111;
    v143 = swift_allocObject();
    *(v143 + 16) = sub_1CF796A90;
    *(v143 + 24) = v137;
    v144 = *v138;
    v158 = *(*v138 + 472);
    v159 = (v144 + 472);

    sub_1CEFD09A0(a4);

    v145 = v140;
    sub_1CEFD09A0(v111);
    v158("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v143, sub_1CF796A9C, v142);

    sub_1CEFD0A98(v111);
    return;
  }

  v63 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v64 = sub_1CF9E6108();
  v65 = sub_1CF9E72B8();
  if (os_log_type_enabled(v64, v65))
  {
    v152 = v13;
    v153 = v12;
    v155 = a8;
    v66 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v162[0] = v158;
    *v66 = 136446466;
    v67 = swift_beginAccess();
    v68 = *(a1 + 32);
    v69 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v70 = NSFileProviderItemIdentifier.description.getter(v68);
      v72 = v71;
      sub_1CEFD0994(v68, v69, 1);
    }

    else
    {
      v160 = *(a1 + 32);
      v161 = v69;
      v70 = VFSItemID.description.getter(v67);
      v72 = v112;
    }

    v113 = sub_1CEFD0DF0(v70, v72, v162);
    v72, v114, v115, v116, v117, v118, v119, v120;
    *(v66 + 4) = v113;
    *(v66 + 12) = 2082;
    v121 = sub_1CEFD11AC(a4);
    v123 = v122;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v124 = sub_1CEFD0DF0(v121, v123, v162);
    v123, v125, v126, v127, v128, v129, v130, v131;
    *(v66 + 14) = v124;
    _os_log_impl(&dword_1CEFC7000, v64, v65, "Recursion too deep for lookup of itemID %{public}s request %{public}s", v66, 0x16u);
    v132 = v158;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v132, -1, -1);
    MEMORY[0x1D386CDC0](v66, -1, -1);

    v28(v159, v153);
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    v28(v62, v12);
  }

  v133 = sub_1CF9E6888();
  v134 = FPInvalidParameterError();

  if (v134)
  {
    v135 = v151;
    *v151 = v134;
    swift_storeEnumTagMultiPayload();
    v157(v135);
    sub_1CEFCCC44(v135, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  else
  {
    __break(1u);
  }
}

double sub_1CF90EA40(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, int a8, void *a9, char *a10)
{
  v195 = a8;
  v197 = a7;
  v198 = a6;
  LODWORD(v199) = a5;
  v196 = a4;
  v13 = sub_1CF9E6118();
  v192 = *(v13 - 8);
  v193 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v190 = &v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v194 = &v187 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v187 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v21);
  v191 = &v187 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v187 - v24;
  sub_1CEFCCBDC(a1, &v187 - v24, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v25, &qword_1EC4C5020, &qword_1CFA0A278);
    a2(a1);
    return result;
  }

  v188 = a3;
  v189 = a2;
  v27 = 0xED000053466F5465;
  if ((*(v18 + 48))(v25, 1, v17) != 1)
  {
    sub_1CEFE55D0(v25, v20, &qword_1EC4C5220, &qword_1CFA0A270);
    v68 = v198;
    if (v199)
    {
      v57 = v188;
      v69 = v189;
      if (v199 != 1)
      {
        v27 = 0x80000001CFA2C3C0;
        v70 = 1;
LABEL_21:
        v27, v61, v62, v63, v64, v65, v66, v67;
        if (sub_1CF9267E4(v20, v70 & 1, v68))
        {
          v69(a1);
          sub_1CEFCCC44(v20, &qword_1EC4C5220, &qword_1CFA0A270);
          return result;
        }

        sub_1CEFCCC44(v20, &qword_1EC4C5220, &qword_1CFA0A270);
        v45 = v197;
        goto LABEL_31;
      }
    }

    else
    {
      v27 = 0x80000001CFA2C390;
      v57 = v188;
      v69 = v189;
    }

    v70 = sub_1CF9E8048();
    goto LABEL_21;
  }

  if (!v199)
  {
    0x80000001CFA2C390, v28, v29, v30, v31, v32, v33, v34;
    v45 = v197;
    v36 = v194;
    goto LABEL_16;
  }

  if (v199 == 1)
  {
    v35 = 0xED000053466F5465;
  }

  else
  {
    v35 = 0x80000001CFA2C3C0;
  }

  v36 = v194;
  v37 = sub_1CF9E8048();
  v35, v38, v39, v40, v41, v42, v43, v44;
  v45 = v197;
  if (v37)
  {
LABEL_16:
    v71 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v72 = v198;
    sub_1CEFD09A0(v198);

    sub_1CEFD09A0(v72);
    v73 = sub_1CF9E6108();
    v74 = sub_1CF9E7298();
    if (os_log_type_enabled(v73, v74))
    {
      LODWORD(v197) = v74;
      v199 = v17;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v202 = v76;
      *v75 = 136315394;
      v77 = swift_beginAccess();
      v78 = *(v45 + 32);
      v79 = v45;
      v80 = *(v45 + 40);
      if (*(v79 + 41))
      {
        v81 = NSFileProviderItemIdentifier.description.getter(v78);
        v83 = v82;
        sub_1CEFD0994(v78, v80, 1);
      }

      else
      {
        v200 = v78;
        v201 = v80;
        v81 = VFSItemID.description.getter(v77);
        v83 = v85;
      }

      v86 = sub_1CEFD0DF0(v81, v83, &v202);
      v83, v87, v88, v89, v90, v91, v92, v93;
      *(v75 + 4) = v86;
      *(v75 + 12) = 2080;
      v94 = v198;
      v95 = sub_1CEFD11AC(v198);
      v97 = v96;
      sub_1CEFD0A98(v94);
      sub_1CEFD0A98(v94);
      v98 = sub_1CEFD0DF0(v95, v97, &v202);
      v97, v99, v100, v101, v102, v103, v104, v105;
      *(v75 + 14) = v98;
      _os_log_impl(&dword_1CEFC7000, v73, v197, "Item cannot be found on disk, only looking for existing item %s, request %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v76, -1, -1);
      MEMORY[0x1D386CDC0](v75, -1, -1);

      (*(v192 + 8))(v194, v193);
      v84 = v189;
      v17 = v199;
    }

    else
    {
      sub_1CEFD0A98(v72);
      sub_1CEFD0A98(v72);

      (*(v192 + 8))(v36, v193);
      v84 = v189;
    }

    v106 = v191;
    (*(v18 + 56))(v191, 1, 1, v17);
    swift_storeEnumTagMultiPayload();
    v84(v106);
    sub_1CEFCCC44(v106, &qword_1EC4C5020, &qword_1CFA0A278);
    return result;
  }

  v46 = fpfs_current_or_default_log();
  v47 = v190;
  sub_1CF9E6128();
  v48 = v198;
  sub_1CEFD09A0(v198);

  sub_1CEFD09A0(v48);
  v49 = sub_1CF9E6108();
  v50 = sub_1CF9E7298();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v202 = v52;
    *v51 = 136315394;
    v53 = swift_beginAccess();
    v54 = *(v45 + 32);
    v55 = v45;
    v56 = *(v45 + 40);
    v57 = v188;
    if (*(v55 + 41))
    {
      v58 = NSFileProviderItemIdentifier.description.getter(v54);
      v60 = v59;
      sub_1CEFD0994(v54, v56, 1);
    }

    else
    {
      v204 = v54;
      v205 = v56;
      v58 = VFSItemID.description.getter(v53);
      v60 = v107;
    }

    v45 = v55;
    v108 = sub_1CEFD0DF0(v58, v60, &v202);
    v60, v109, v110, v111, v112, v113, v114, v115;
    *(v51 + 4) = v108;
    *(v51 + 12) = 2080;
    v116 = v198;
    v117 = sub_1CEFD11AC(v198);
    v119 = v118;
    sub_1CEFD0A98(v116);
    sub_1CEFD0A98(v116);
    v120 = sub_1CEFD0DF0(v117, v119, &v202);
    v119, v121, v122, v123, v124, v125, v126, v127;
    *(v51 + 14) = v120;
    v68 = v116;
    _os_log_impl(&dword_1CEFC7000, v49, v50, "Item cannot be found on disk, looking for parent for %s request %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v51, -1, -1);

    (*(v192 + 8))(v190, v193);
    v69 = v189;
  }

  else
  {
    sub_1CEFD0A98(v48);
    sub_1CEFD0A98(v48);

    (*(v192 + 8))(v47, v193);
    v57 = v188;
    v69 = v189;
    v68 = v48;
  }

LABEL_31:
  v128 = swift_allocObject();
  *(v128 + 16) = v69;
  *(v128 + 24) = v57;
  v129 = v196;
  *(v128 + 32) = v45;
  *(v128 + 40) = v129;
  *(v128 + 48) = v199;
  v130 = v195 & 1;
  *(v128 + 49) = v195 & 1;
  *(v128 + 56) = v68;
  *(v128 + 64) = a9;
  v194 = a10;
  *(v128 + 72) = a10;
  swift_beginAccess();
  v131 = *(v45 + 32);
  v132 = *(v45 + 40);
  v133 = *(v45 + 41);
  LODWORD(v193) = v130;
  if (v133 == 1)
  {

    sub_1CEFD09A0(v68);
    v134 = a9;

    sub_1CEFD09A0(v68);
    v135 = v134;
    sub_1CEFD0988(v131, v132, 1);
    if (qword_1EDEA3498 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v136 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v138 = v137;
      v140 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v146 = v139;
      if (v136 == v140 && v138 == v139)
      {
        v138, v139, v140, v141, v142, v143, v144, v145;
        v146, v147, v148, v149, v150, v151, v152, v153;
        sub_1CEFD0994(v131, v132, 1);
        v69 = v189;
      }

      else
      {
        v167 = sub_1CF9E8048();
        v138, v168, v169, v170, v171, v172, v173, v174;
        v146, v175, v176, v177, v178, v179, v180, v181;
        sub_1CEFD0994(v131, v132, 1);
        v69 = v189;
        if ((v167 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

LABEL_38:
      v156 = v196;
      (*(**(*(v196 + 32) + 16) + 96))(&v202);
      v157 = v202;
      v158 = v203;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      v159 = swift_allocObject();
      *(v159 + 32) = v157;
      *(v159 + 40) = v158;
      *(v159 + 41) = 0;
      *(v159 + 16) = v157;
      *(v159 + 24) = v158;
      *(v159 + 25) = 0;
      v160 = (v194 + 1);
      if (!__OFADD__(v194, 1))
      {
        break;
      }

      __break(1u);
LABEL_43:
      swift_once();
    }

    v161 = v159;
    v162 = swift_allocObject();
    *(v162 + 16) = v69;
    *(v162 + 24) = v57;
    v163 = v199;
    *(v162 + 32) = v199;
    v164 = v198;
    *(v162 + 40) = v197;
    *(v162 + 48) = v164;
    *(v162 + 56) = v156;
    *(v162 + 64) = v193;
    *(v162 + 72) = v161;
    *(v162 + 80) = 0;
    *(v162 + 88) = a9;

    sub_1CEFD09A0(v164);
    v165 = a9;

    sub_1CF90E07C(v166, v163, v195 & 1, v164, v165, v160, sub_1CF926790, v162);

    sub_1CEFD0A98(v164);
  }

  else
  {

    sub_1CEFD09A0(v68);
    v154 = a9;

    sub_1CEFD09A0(v68);
    v155 = v154;
    if (v132 >= 2 && v131)
    {
      goto LABEL_38;
    }

LABEL_41:
    v182 = v196;

    v183 = v197;

    sub_1CEFD0A98(v198);

    v184 = swift_allocObject();
    v184[2] = v183;
    v184[3] = v182;
    v184[4] = sub_1CF926664;
    v184[5] = v128;
    v185 = swift_allocObject();
    *(v185 + 16) = sub_1CF926664;
    *(v185 + 24) = v128;
    v186 = *(*v182 + 472);
    swift_retain_n();

    v186("findParentID(for:completionHandler:)", 36, 2, 2, sub_1CF92672C, v185, sub_1CF92670C, v184);
  }

  return result;
}

void sub_1CF90F7BC(void *a1, void *a2, char a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unint64_t a10, void *a11, uint64_t a12)
{
  v33 = a8;
  v32 = a11;
  v31 = a9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v30 - v20);
  if (a3)
  {
    *v21 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    a4(v21);
    sub_1CEFCCC44(v21, &qword_1EC4C5020, &qword_1CFA0A278);
    return;
  }

  if (!a2)
  {

    v23 = (a12 + 1);
    if (!__OFADD__(a12, 1))
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
  a6 = swift_allocObject();
  *(a6 + 42) = 0;
  *(a6 + 32) = a2;
  *(a6 + 40) = 256;
  *(a6 + 16) = a2;
  *(a6 + 24) = 256;
  v23 = (a12 + 1);
  if (__OFADD__(a12, 1))
  {
    goto LABEL_10;
  }

LABEL_5:
  v30 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  v25 = v33;
  *(v24 + 32) = v33;
  *(v24 + 40) = a6;
  *(v24 + 48) = a10;
  *(v24 + 56) = a7;
  v26 = v31 & 1;
  *(v24 + 64) = v26;
  *(v24 + 72) = a1;
  *(v24 + 80) = a2;
  v27 = v32;
  *(v24 + 88) = v32;
  v28 = a2;

  sub_1CEFD09A0(a10);

  v29 = v27;
  sub_1CF90E07C(a1, v25, v26, a10, v29, v30, sub_1CF928474, v24);
}

uint64_t sub_1CF90FA18(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, int a4, uint64_t (*a5)(uint64_t a1, uint64_t a2), id a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, id a11)
{
  v407 = a8;
  v424 = a7;
  v419 = a6;
  v411 = a5;
  LODWORD(v422) = a4;
  v426 = a2;
  v427 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v404 = &v380 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v418 = &v380 - v16;
  v402 = sub_1CF9E6068();
  v401 = *(v402 - 8);
  MEMORY[0x1EEE9AC00](v402);
  v400 = &v380 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v395 = &v380 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v412 = &v380 - v21;
  v396 = type metadata accessor for Signpost(0);
  v397 = *(v396 - 8);
  MEMORY[0x1EEE9AC00](v396);
  v403 = &v380 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v399 = &v380 - v24;
  v398 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v414 = &v380 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v392 = &v380 - v29;
  v410 = sub_1CF9E63D8();
  v409 = *(v410 - 8);
  MEMORY[0x1EEE9AC00](v410);
  v385 = &v380 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v405 = &v380 - v32;
  v417 = sub_1CF9E6448();
  v416 = *(v417 - 8);
  MEMORY[0x1EEE9AC00](v417);
  v394 = &v380 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v413 = &v380 - v35;
  v421 = sub_1CF9E6118();
  v420 = *(v421 - 1);
  MEMORY[0x1EEE9AC00](v421);
  v388 = &v380 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v386 = &v380 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v387 = &v380 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v406 = &v380 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v415 = &v380 - v44;
  v408 = type metadata accessor for VFSItem(0);
  v389 = *(v408 - 8);
  MEMORY[0x1EEE9AC00](v408);
  v391 = &v380 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v425 = (&v380 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v380 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v380 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v423 = &v380 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v380 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v380 - v61;
  sub_1CEFCCBDC(a1, &v380 - v61, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v62, &qword_1EC4C5020, &qword_1CFA0A278);
    return v426(a1);
  }

  if ((*(v49 + 48))(v62, 1, v48) == 1)
  {
    return v426(a1);
  }

  v64 = v62;
  v65 = v423;
  sub_1CEFE55D0(v64, v423, &qword_1EC4C5220, &qword_1CFA0A270);
  if (*(v65 + *(v48 + 56)))
  {
    (*(v49 + 56))(v59, 1, 1, v48);
    swift_storeEnumTagMultiPayload();
    v426(v59);
    sub_1CEFCCC44(v59, &qword_1EC4C5020, &qword_1CFA0A278);
    return sub_1CEFCCC44(v65, &qword_1EC4C5220, &qword_1CFA0A270);
  }

  v66 = 0xED000053466F5465;
  sub_1CEFDA2E4(v65, v425, type metadata accessor for VFSItem);
  if (v422)
  {
    v74 = 0xED000053466F5465;
    v75 = v419;
    if (v422 != 1)
    {
      v383 = 0x80000001CFA2C3C0;
      0x80000001CFA2C3C0, v67, v68, v69, v70, v71, v72, v73;
      goto LABEL_14;
    }
  }

  else
  {
    v74 = 0x80000001CFA2C390;
    v75 = v419;
  }

  v76 = sub_1CF9E8048();
  v74, v77, v78, v79, v80, v81, v82, v83;
  v383 = 0x80000001CFA2C3C0;
  if (v76 & 1) == 0 && (*(v65 + *(v48 + 60)))
  {
    v84 = v411;
    swift_beginAccess();
    v85 = *(v84 + 41);
    goto LABEL_15;
  }

LABEL_14:
  v85 = 1;
LABEL_15:
  v384 = v85;
  v86 = v415;
  v87 = a9;
  v88 = a10;
  v89 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v65, v54, &qword_1EC4C5220, &qword_1CFA0A270);
  sub_1CEFD09A0(v75);
  sub_1CEFD09A0(v75);
  v90 = sub_1CF9E6108();
  v91 = sub_1CF9E7298();
  if (os_log_type_enabled(v90, v91))
  {
    v381 = a10;
    v380 = v90;
    v382 = a9;
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&aBlock = v93;
    *v92 = 136315906;
    sub_1CEFCCBDC(v54, v51, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CEFCCC44(v54, &qword_1EC4C5220, &qword_1CFA0A270);
    v94 = sub_1CF90560C();
    v96 = v95;
    sub_1CEFCCC44(v51, &qword_1EC4C5220, &qword_1CFA0A270);
    v97 = sub_1CEFD0DF0(v94, v96, &aBlock);
    v96, v98, v99, v100, v101, v102, v103, v104;
    *(v92 + 4) = v97;
    *(v92 + 12) = 2080;
    if (v422)
    {
      v105 = 0xD000000000000010;
      v106 = v383;
      v66 = 0xED000053466F5465;
      if (v422 == 1)
      {
        v105 = 0x74616761706F7270;
        v106 = 0xED000053466F5465;
      }
    }

    else
    {
      v106 = 0x80000001CFA2C390;
      v105 = 0xD000000000000013;
      v66 = 0xED000053466F5465;
    }

    v108 = sub_1CEFD0DF0(v105, v106, &aBlock);
    v106, v109, v110, v111, v112, v113, v114, v115;
    *(v92 + 14) = v108;
    *(v92 + 22) = 1024;
    *(v92 + 24) = v384;
    *(v92 + 28) = 2080;
    v116 = sub_1CEFD11AC(v75);
    v118 = v117;
    sub_1CEFD0A98(v75);
    sub_1CEFD0A98(v75);
    v119 = sub_1CEFD0DF0(v116, v118, &aBlock);
    v118, v120, v121, v122, v123, v124, v125, v126;
    *(v92 + 30) = v119;
    v127 = v380;
    _os_log_impl(&dword_1CEFC7000, v380, v91, "Found parent %s, behavior: %s, shouldReconcile: %{BOOL}d request %s", v92, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v93, -1, -1);
    MEMORY[0x1D386CDC0](v92, -1, -1);

    v107 = v420[1];
    (v107)(v415, v421);
    v87 = v382;
    v88 = v381;
  }

  else
  {
    sub_1CEFD0A98(v75);
    sub_1CEFCCC44(v54, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CEFD0A98(v75);

    v107 = v420[1];
    (v107)(v86, v421);
  }

  v128 = v425 + *(v408 + 28);
  LOBYTE(v128) = *(v128 + *(type metadata accessor for ItemMetadata(0) + 80));
  v129 = fpfs_current_or_default_log();
  if (v128)
  {
    v130 = v406;
    sub_1CF9E6128();
    sub_1CEFD09A0(v75);
    sub_1CEFD09A0(v75);
    v131 = v88;

    v132 = sub_1CF9E6108();
    v133 = sub_1CF9E7298();
    if (!os_log_type_enabled(v132, v133))
    {
      sub_1CEFD0A98(v75);
      sub_1CEFD0A98(v75);

      (v107)(v130, v421);
LABEL_41:
      v191 = v411;
LABEL_42:
      v218 = [a11 totalUnitCount];
      if (__OFADD__(v218, 1))
      {
        __break(1u);
      }

      else
      {
        v421 = a11;
        [a11 setTotalUnitCount_];
        v219 = *v425;
        v220 = *(v425 + 8);
        v221 = v391;
        sub_1CEFDA2E4(v425, v391, type metadata accessor for VFSItem);
        v222 = (*(v389 + 80) + 48) & ~*(v389 + 80);
        v223 = (v390 + v222 + 7) & 0xFFFFFFFFFFFFFFF8;
        v224 = swift_allocObject();
        v225 = v427;
        *(v224 + 2) = v426;
        *(v224 + 3) = v225;
        *(v224 + 4) = v191;
        *(v224 + 5) = v75;
        sub_1CEFDA05C(v221, v224 + v222, type metadata accessor for VFSItem);
        v426 = v224;
        v226 = v224 + v223;
        *v226 = v424;
        v226[8] = v407 & 1;
        v226[9] = v422;
        sub_1CEFD09A0(v75);

        qos_class_self();
        v227 = v392;
        sub_1CF9E63B8();
        v228 = v409;
        v229 = *(v409 + 48);
        v230 = v410;
        if (v229(v227, 1, v410) == 1)
        {
          (*(v228 + 104))(v405, *MEMORY[0x1E69E7FA0], v230);
          if (v229(v227, 1, v230) != 1)
          {
            sub_1CEFCCC44(v227, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v228 + 32))(v405, v227, v230);
        }

        v231 = v413;
        sub_1CF9E6428();
        v232 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
        [v232 setCancellable_];
        v233 = swift_allocObject();
        v234 = v424;
        swift_weakInit();
        v235 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v236 = swift_allocObject();
        *(v236 + 16) = v233;
        *(v236 + 24) = v235;
        *(v236 + 32) = v219;
        *(v236 + 40) = v220;
        v431 = sub_1CF926F34;
        v432 = v236;
        *&aBlock = MEMORY[0x1E69E9820];
        v11 = 1107296256;
        *(&aBlock + 1) = 1107296256;
        v429 = sub_1CEFCA444;
        v430 = &block_descriptor_235;
        v237 = _Block_copy(&aBlock);
        LODWORD(v427) = v220;
        v238 = v219;
        v239 = v237;

        sub_1CF03C63C(sub_1CF926F34, v236);

        [v232 setCancellationHandler_];
        _Block_release(v239);

        v240 = v416;
        v241 = v394;
        v242 = v417;
        (*(v416 + 16))(v394, v231, v417);
        v243 = (*(v240 + 80) + 80) & ~*(v240 + 80);
        v244 = swift_allocObject();
        v245 = v426;
        *(v244 + 16) = sub_1CF926E84;
        *(v244 + 24) = v245;
        *(v244 + 32) = v234;
        *(v244 + 40) = v238;
        *(v244 + 48) = v427;
        v246 = v419;
        *(v244 + 56) = v419;
        *(v244 + 64) = 1;
        *(v244 + 72) = v232;
        v247 = *(v240 + 32);
        v422 = v244;
        v247(v244 + v243, v241, v242);
        v248 = swift_allocObject();
        *(v248 + 16) = sub_1CF926E84;
        *(v248 + 24) = v245;
        v427 = v248;

        sub_1CEFD09A0(v246);

        v420 = v232;
        v419 = fpfs_adopt_log();
        if (qword_1EDEAE980 == -1)
        {
          goto LABEL_48;
        }
      }

      swift_once();
LABEL_48:
      v249 = qword_1EDEBBE40;
      v250 = v401;
      v251 = v412;
      v252 = v402;
      (*(v401 + 56))(v412, 1, 1, v402);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v253 = sub_1CF9E7988();
      v255 = v254;
      MEMORY[0x1D3868CC0](v253);
      v255, v256, v257, v258, v259, v260, v261, v262;
      v263 = *(&aBlock + 1);
      v415 = aBlock;
      v264 = v251;
      v265 = v395;
      sub_1CEFCCBDC(v264, v395, &unk_1EC4BED20, &unk_1CFA00700);
      v266 = *(v250 + 48);
      v267 = v266(v265, 1, v252);
      v268 = v400;
      if (v267 == 1)
      {
        v269 = v249;
        sub_1CF9E6048();
        v270 = v266(v265, 1, v252);
        v271 = v417;
        if (v270 != 1)
        {
          sub_1CEFCCC44(v265, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v250 + 32))(v400, v265, v252);
        v271 = v417;
      }

      v272 = v414;
      (*(v250 + 16))(v414, v268, v252);
      v273 = v396;
      *(v272 + *(v396 + 20)) = v249;
      v274 = v272 + *(v273 + 24);
      *v274 = "DB queue wait";
      *(v274 + 8) = 13;
      *(v274 + 16) = 2;
      v275 = v249;
      v276 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v277 = swift_allocObject();
      *(v277 + 16) = xmmword_1CF9FA450;
      *(v277 + 56) = MEMORY[0x1E69E6158];
      *(v277 + 64) = sub_1CEFD51C4();
      *(v277 + 32) = v415;
      *(v277 + 40) = v263;
      sub_1CF9E6028(v276, &dword_1CEFC7000, v275, "DB queue wait", 13, 2, v272, "%s", 2);
      v277, v278, v279, v280, v281, v282, v283, v284;
      (*(v250 + 8))(v268, v252);
      sub_1CEFCCC44(v412, &unk_1EC4BED20, &unk_1CFA00700);
      v412 = *(v424 + 168);
      v415 = *(v424 + 64);
      (*(v416 + 56))(v418, 1, 1, v271);
      v285 = v399;
      sub_1CEFDA2E4(v272, v399, type metadata accessor for Signpost);
      v286 = (*(v397 + 80) + 16) & ~*(v397 + 80);
      v287 = (v398 + v286 + 7) & 0xFFFFFFFFFFFFFFF8;
      v288 = swift_allocObject();
      sub_1CEFDA05C(v285, v288 + v286, type metadata accessor for Signpost);
      v289 = (v288 + v287);
      v411 = sub_1CF4814BC;
      v290 = v427;
      *v289 = sub_1CF4814BC;
      v289[1] = v290;
      v291 = v403;
      sub_1CEFDA2E4(v272, v403, type metadata accessor for Signpost);
      v292 = (v287 + 23) & 0xFFFFFFFFFFFFFFF8;
      v293 = (v292 + 15) & 0xFFFFFFFFFFFFFFF8;
      v294 = (v293 + 25) & 0xFFFFFFFFFFFFFFF8;
      v295 = swift_allocObject();
      sub_1CEFDA05C(v291, v295 + v286, type metadata accessor for Signpost);
      v296 = (v295 + v287);
      *v296 = sub_1CF045408;
      v296[1] = 0;
      *(v295 + v292) = v424;
      v297 = v295 + v293;
      v298 = v417;
      *v297 = "materialize(_:request:options:qos:completion:)";
      *(v297 + 8) = 46;
      *(v297 + 16) = 2;
      v299 = (v295 + v294);
      v300 = v427;
      *v299 = v411;
      v299[1] = v300;
      v301 = (v295 + ((v294 + 23) & 0xFFFFFFFFFFFFFFF8));
      v302 = v416;
      v303 = v422;
      *v301 = sub_1CF926F44;
      v301[1] = v303;
      v304 = swift_allocObject();
      v304[2] = sub_1CF75C120;
      v304[3] = v288;
      v305 = v412;
      v304[4] = v412;
      swift_retain_n();

      v424 = v288;

      v306 = fpfs_current_log();
      v412 = *(v305 + 2);
      v307 = v404;
      sub_1CEFCCBDC(v418, v404, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v302 + 48))(v307, 1, v298) == 1)
      {
        sub_1CEFCCC44(v307, &unk_1EC4BE370, qword_1CFA01B30);
        v308 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v309 = v385;
        sub_1CF9E6438();
        (*(v302 + 8))(v307, v298);
        v308 = sub_1CF9E63C8();
        (*(v409 + 8))(v309, v410);
      }

      v310 = swift_allocObject();
      v310[2] = v306;
      v310[3] = sub_1CF4858EC;
      v310[4] = v295;
      v431 = sub_1CF2BA17C;
      v432 = v310;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = v11;
      v429 = sub_1CEFCA444;
      v430 = &block_descriptor_229_0;
      v311 = _Block_copy(&aBlock);
      v312 = v306;

      v431 = sub_1CF2BA180;
      v432 = v304;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = v11;
      v429 = sub_1CEFCA444;
      v430 = &block_descriptor_232_0;
      v313 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v412, v415, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v308, v311, v313);
      _Block_release(v313);
      _Block_release(v311);

      sub_1CEFCCC44(v418, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5398(v414, type metadata accessor for Signpost);
      v314 = v419;
      v315 = fpfs_adopt_log();

      (*(v302 + 8))(v413, v298);
      v316 = v420;
      [v421 addChild:v420 withPendingUnitCount:1];

      goto LABEL_73;
    }

    v415 = v107;
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v434 = v135;
    *v134 = 136315394;
    v136 = swift_beginAccess();
    v137 = *(v87 + 32);
    v138 = *(v87 + 40);
    if (*(v87 + 41))
    {
      v139 = NSFileProviderItemIdentifier.description.getter(v137);
      v141 = v140;
      sub_1CEFD0994(v137, v138, 1);
    }

    else
    {
      *&aBlock = *(v87 + 32);
      BYTE8(aBlock) = v138;
      v139 = VFSItemID.description.getter(v136);
      v141 = v168;
    }

    v169 = sub_1CEFD0DF0(v139, v141, &v434);
    v141, v170, v171, v172, v173, v174, v175, v176;
    *(v134 + 4) = v169;
    *(v134 + 12) = 2080;
    v177 = v419;
    v178 = sub_1CEFD11AC(v419);
    v180 = v179;
    sub_1CEFD0A98(v177);
    sub_1CEFD0A98(v177);
    v181 = sub_1CEFD0DF0(v178, v180, &v434);
    v180, v182, v183, v184, v185, v186, v187, v188;
    *(v134 + 14) = v181;
    _os_log_impl(&dword_1CEFC7000, v132, v133, "Parent item is dataless, materializing %s request %s", v134, 0x16u);
    swift_arrayDestroy();
    v189 = v135;
    v75 = v177;
    MEMORY[0x1D386CDC0](v189, -1, -1);
    MEMORY[0x1D386CDC0](v134, -1, -1);

    v190 = &v433;
LABEL_40:
    (v415)(*(v190 - 32), v421);
    goto LABEL_41;
  }

  if (v384)
  {
    v415 = v107;
    v142 = v387;
    sub_1CF9E6128();
    sub_1CEFD09A0(v75);
    sub_1CEFD09A0(v75);
    v143 = v75;
    v144 = v88;

    v145 = sub_1CF9E6108();
    v146 = sub_1CF9E7298();
    if (!os_log_type_enabled(v145, v146))
    {
      sub_1CEFD0A98(v143);
      sub_1CEFD0A98(v143);

      (v415)(v142, v421);
      v191 = v411;
      v75 = v143;
      goto LABEL_42;
    }

    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v434 = v148;
    *v147 = 136315394;
    v149 = swift_beginAccess();
    v150 = *(v87 + 32);
    v151 = *(v87 + 40);
    if (*(v87 + 41))
    {
      v152 = NSFileProviderItemIdentifier.description.getter(v150);
      v154 = v153;
      sub_1CEFD0994(v150, v151, 1);
    }

    else
    {
      *&aBlock = *(v87 + 32);
      BYTE8(aBlock) = v151;
      v152 = VFSItemID.description.getter(v149);
      v154 = v198;
    }

    v199 = sub_1CEFD0DF0(v152, v154, &v434);
    v154, v200, v201, v202, v203, v204, v205, v206;
    *(v147 + 4) = v199;
    *(v147 + 12) = 2080;
    v75 = v419;
    v207 = sub_1CEFD11AC(v419);
    v209 = v208;
    sub_1CEFD0A98(v75);
    sub_1CEFD0A98(v75);
    v210 = sub_1CEFD0DF0(v207, v209, &v434);
    v209, v211, v212, v213, v214, v215, v216, v217;
    *(v147 + 14) = v210;
    _os_log_impl(&dword_1CEFC7000, v145, v146, "Parent item must be imported, materializing %s request %s", v147, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v148, -1, -1);
    MEMORY[0x1D386CDC0](v147, -1, -1);

    v190 = &v419;
    goto LABEL_40;
  }

  v155 = v386;
  sub_1CF9E6128();
  sub_1CEFD09A0(v75);
  sub_1CEFD09A0(v75);
  v156 = v411;

  v157 = sub_1CF9E6108();
  v158 = sub_1CF9E7298();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = v107;
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v434 = v161;
    *v160 = 136315394;
    v162 = swift_beginAccess();
    v163 = *(v156 + 4);
    v164 = *(v156 + 40);
    if (*(v156 + 41))
    {
      v165 = NSFileProviderItemIdentifier.description.getter(v163);
      v167 = v166;
      sub_1CEFD0994(v163, v164, 1);
    }

    else
    {
      *&aBlock = *(v156 + 4);
      BYTE8(aBlock) = v164;
      v165 = VFSItemID.description.getter(v162);
      v167 = v317;
    }

    v318 = sub_1CEFD0DF0(v165, v167, &v434);
    v167, v319, v320, v321, v322, v323, v324, v325;
    *(v160 + 4) = v318;
    *(v160 + 12) = 2080;
    v75 = v419;
    v326 = sub_1CEFD11AC(v419);
    v328 = v327;
    sub_1CEFD0A98(v75);
    sub_1CEFD0A98(v75);
    v329 = sub_1CEFD0DF0(v326, v328, &v434);
    v328, v330, v331, v332, v333, v334, v335, v336;
    *(v160 + 14) = v329;
    _os_log_impl(&dword_1CEFC7000, v157, v158, "Parent item is not dataless, lookup and propagate %s request %s", v160, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v161, -1, -1);
    MEMORY[0x1D386CDC0](v160, -1, -1);

    v107 = v159;
    (v159)(v386, v421);
    v66 = 0xED000053466F5465;
  }

  else
  {
    sub_1CEFD0A98(v75);
    sub_1CEFD0A98(v75);

    (v107)(v155, v421);
  }

  v337 = v383;
  if (!v422)
  {
    v66 = 0x80000001CFA2C390;
    goto LABEL_62;
  }

  if (v422 == 1)
  {
LABEL_62:
    LODWORD(v422) = sub_1CF9E8048();
    v337 = v66;
    goto LABEL_63;
  }

  LODWORD(v422) = 1;
LABEL_63:
  v337, v192, v193, v337, v194, v195, v196, v197;
  if (((v75 >> 58) & 0x3C | (v75 >> 1) & 3) == 0x1E)
  {
    v75 = *((v75 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v338 = v75;
  }

  else
  {
    v339 = swift_allocObject();
    *(v339 + 16) = v75;
    v338 = v339 | 0x7000000000000004;
  }

  sub_1CEFD09A0(v75);
  v340 = fpfs_current_or_default_log();
  v341 = v388;
  sub_1CF9E6128();
  sub_1CEFD09A0(v338);

  sub_1CEFD09A0(v338);
  v342 = sub_1CF9E6108();
  v343 = sub_1CF9E7298();
  if (os_log_type_enabled(v342, v343))
  {
    v415 = v107;
    v344 = swift_slowAlloc();
    v345 = swift_slowAlloc();
    v436 = v345;
    *v344 = 136315394;
    v346 = swift_beginAccess();
    v347 = *(v156 + 4);
    v348 = *(v156 + 40);
    if (*(v156 + 41))
    {
      v349 = NSFileProviderItemIdentifier.description.getter(v347);
      v351 = v350;
      sub_1CEFD0994(v347, v348, 1);
    }

    else
    {
      v434 = *(v156 + 4);
      v435 = v348;
      v349 = VFSItemID.description.getter(v346);
      v351 = v352;
    }

    v353 = sub_1CEFD0DF0(v349, v351, &v436);
    v351, v354, v355, v356, v357, v358, v359, v360;
    *(v344 + 4) = v353;
    *(v344 + 12) = 2080;
    v361 = sub_1CF913458(v338);
    v363 = v362;
    sub_1CEFD0A98(v338);
    sub_1CEFD0A98(v338);
    v364 = sub_1CEFD0DF0(v361, v363, &v436);
    v363, v365, v366, v367, v368, v369, v370, v371;
    *(v344 + 14) = v364;
    _os_log_impl(&dword_1CEFC7000, v342, v343, "looking up VFS item for %s request %s", v344, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v345, -1, -1);
    MEMORY[0x1D386CDC0](v344, -1, -1);

    (v415)(v388, v421);
  }

  else
  {
    sub_1CEFD0A98(v338);
    sub_1CEFD0A98(v338);

    (v107)(v341, v421);
  }

  v372 = swift_allocObject();
  *(v372 + 16) = v156;
  *(v372 + 24) = v338;
  v373 = v156;
  v374 = v427;
  *(v372 + 32) = v426;
  *(v372 + 40) = v374;
  *(v372 + 48) = v422 & 1;
  v375 = v424;
  *(v372 + 56) = v424;
  *(v372 + 64) = 1;
  v376 = v407 & 1;
  *(v372 + 65) = v407 & 1;
  v377 = swift_allocObject();
  *(v377 + 16) = v373;
  *(v377 + 24) = v375;
  *(v377 + 32) = v376;
  *(v377 + 33) = 1;
  *(v377 + 40) = sub_1CF926E80;
  *(v377 + 48) = v372;
  *(v377 + 56) = v338;
  v378 = swift_allocObject();
  *(v378 + 16) = sub_1CF926E80;
  *(v378 + 24) = v372;
  v379 = *(*v375 + 472);

  sub_1CEFD09A0(v338);

  sub_1CEFD09A0(v338);

  v379("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v378, sub_1CF796A9C, v377);

  sub_1CEFD0A98(v338);
LABEL_73:
  sub_1CEFD5398(v425, type metadata accessor for VFSItem);
  return sub_1CEFCCC44(v423, &qword_1EC4C5220, &qword_1CFA0A270);
}

uint64_t sub_1CF91200C(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, int a8, char a9)
{
  v136 = a8;
  v135 = a5;
  v137 = a4;
  v14 = sub_1CF9E6118();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v126 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v126 - v22);
  if (a1)
  {
    *v23 = a1;
    swift_storeEnumTagMultiPayload();
    v24 = a1;
    a2(v23);
    return sub_1CEFCCC44(v23, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  v26 = a3;
  v131 = v17;
  v133 = v15;
  v134 = v14;
  v27 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v28 = v135;
  sub_1CEFD09A0(v135);
  sub_1CEFD09A0(v28);

  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E7298();
  v31 = os_log_type_enabled(v29, v30);
  v132 = v26;
  if (v31)
  {
    v128 = v20;
    v129 = a2;
    v130 = a7;
    v32 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v138 = v127;
    *v32 = 136315394;
    v33 = v137;
    v34 = swift_beginAccess();
    v35 = *(v33 + 32);
    v36 = *(v33 + 40);
    if (*(v33 + 41))
    {
      v37 = NSFileProviderItemIdentifier.description.getter(v35);
      v39 = v38;
      sub_1CEFD0994(v35, v36, 1);
    }

    else
    {
      v140 = *(v33 + 32);
      v141 = v36;
      v37 = VFSItemID.description.getter(v34);
      v39 = v45;
    }

    v43 = v28;
    v46 = sub_1CEFD0DF0(v37, v39, &v138);
    v39, v47, v48, v49, v50, v51, v52, v53;
    *(v32 + 4) = v46;
    *(v32 + 12) = 2080;
    v54 = sub_1CEFD11AC(v28);
    v56 = v55;
    sub_1CEFD0A98(v28);
    sub_1CEFD0A98(v28);
    v57 = sub_1CEFD0DF0(v54, v56, &v138);
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(v32 + 14) = v57;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "Parent is materialized, lookup %s again request %s", v32, 0x16u);
    v65 = v127;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v65, -1, -1);
    MEMORY[0x1D386CDC0](v32, -1, -1);

    v40 = *(v133 + 8);
    v40(v128, v134);
    v42 = v129;
    v41 = v130;
    v44 = v132;
  }

  else
  {
    sub_1CEFD0A98(v28);
    sub_1CEFD0A98(v28);

    v40 = *(v133 + 8);
    v40(v20, v134);
    v41 = a7;
    v42 = a2;
    v43 = v28;
    v44 = v26;
  }

  v66 = v137;
  *(v137 + 42) = 0;
  v67 = a6 + *(type metadata accessor for VFSItem(0) + 28);
  v68 = type metadata accessor for ItemMetadata(0);
  v76 = v136;
  v77 = v66;
  if (*(v67 + *(v68 + 80)) != 1)
  {
    if (a9)
    {
      if (a9 != 1)
      {
        v79 = 0x80000001CFA2C3C0;
        LODWORD(v85) = 1;
        goto LABEL_20;
      }

      v79 = 0xED000053466F5465;
    }

    else
    {
      v79 = 0x80000001CFA2C390;
    }

    LODWORD(v85) = sub_1CF9E8048();
LABEL_20:
    v79, v69, v70, v71, v72, v73, v74, v75;
    v135 = v40;
    if (((v43 >> 58) & 0x3C | (v43 >> 1) & 3) == 0x1E)
    {
      v43 = *((v43 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v86 = v43;
    }

    else
    {
      v87 = swift_allocObject();
      *(v87 + 16) = v43;
      v86 = v87 | 0x7000000000000004;
    }

    sub_1CEFD09A0(v43);
    v88 = fpfs_current_or_default_log();
    v89 = v131;
    sub_1CF9E6128();
    sub_1CEFD09A0(v86);

    sub_1CEFD09A0(v86);
    v90 = sub_1CF9E6108();
    v91 = sub_1CF9E7298();
    if (os_log_type_enabled(v90, v91))
    {
      LODWORD(v128) = v85;
      v129 = v42;
      v130 = v41;
      v85 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v142[0] = v92;
      *v85 = 136315394;
      v93 = swift_beginAccess();
      v94 = *(v77 + 32);
      v95 = *(v77 + 40);
      if (*(v77 + 41))
      {
        v96 = NSFileProviderItemIdentifier.description.getter(v94);
        v98 = v97;
        sub_1CEFD0994(v94, v95, 1);
      }

      else
      {
        v138 = *(v77 + 32);
        v139 = v95;
        v96 = VFSItemID.description.getter(v93);
        v98 = v99;
      }

      v100 = v77;

      v101 = sub_1CEFD0DF0(v96, v98, v142);
      v98, v102, v103, v104, v105, v106, v107, v108;
      *(v85 + 4) = v101;
      *(v85 + 12) = 2080;
      v109 = sub_1CF913458(v86);
      v111 = v110;
      sub_1CEFD0A98(v86);
      sub_1CEFD0A98(v86);
      v112 = sub_1CEFD0DF0(v109, v111, v142);
      v111, v113, v114, v115, v116, v117, v118, v119;
      *(v85 + 14) = v112;
      _os_log_impl(&dword_1CEFC7000, v90, v91, "looking up VFS item for %s request %s", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v92, -1, -1);
      MEMORY[0x1D386CDC0](v85, -1, -1);

      v135(v131, v134);
      v42 = v129;
      v41 = v130;
      v77 = v100;
      LOBYTE(v85) = v128;
    }

    else
    {
      sub_1CEFD0A98(v86);
      sub_1CEFD0A98(v86);

      v135(v89, v134);
    }

    v120 = swift_allocObject();
    *(v120 + 16) = v77;
    *(v120 + 24) = v86;
    v121 = v132;
    *(v120 + 32) = v42;
    *(v120 + 40) = v121;
    *(v120 + 48) = v85 & 1;
    *(v120 + 56) = v41;
    *(v120 + 64) = 1;
    v122 = v136 & 1;
    *(v120 + 65) = v136 & 1;
    v123 = swift_allocObject();
    *(v123 + 16) = v77;
    *(v123 + 24) = v41;
    *(v123 + 32) = v122;
    *(v123 + 33) = 1;
    *(v123 + 40) = sub_1CF928470;
    *(v123 + 48) = v120;
    *(v123 + 56) = v86;
    v124 = swift_allocObject();
    *(v124 + 16) = sub_1CF928470;
    *(v124 + 24) = v120;
    v125 = *(*v41 + 472);

    sub_1CEFD09A0(v86);

    sub_1CEFD09A0(v86);

    v125("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v124, sub_1CF796A9C, v123);

    v84 = v86;
    return sub_1CEFD0A98(v84);
  }

  if (((v43 >> 58) & 0x3C | (v43 >> 1) & 3) == 0x1E)
  {
    v43 = *((v43 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v78 = v43;
  }

  else
  {
    v80 = swift_allocObject();
    *(v80 + 16) = v43;
    v78 = v80 | 0x7000000000000004;
  }

  sub_1CEFD09A0(v43);
  v81 = swift_allocObject();
  *(v81 + 16) = v77;
  *(v81 + 24) = v41;
  *(v81 + 32) = v76 & 1;
  *(v81 + 33) = 1;
  *(v81 + 40) = v42;
  *(v81 + 48) = v44;
  *(v81 + 56) = v78;
  v82 = swift_allocObject();
  *(v82 + 16) = v42;
  *(v82 + 24) = v44;
  v83 = *(*v41 + 472);
  swift_retain_n();

  sub_1CEFD09A0(v78);
  v83("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v82, sub_1CF796A9C, v81);

  v84 = v78;
  return sub_1CEFD0A98(v84);
}

uint64_t sub_1CF912A20(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, unint64_t a4)
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5228, &unk_1CFA189E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v16 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v16 - v13);
  sub_1CEFCCBDC(a1, v11, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v14 = *v11;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1CEFE55D0(v11, v8, &qword_1EC4C5228, &unk_1CFA189E0);
    sub_1CF912C1C(v8, v17, v14);
    sub_1CEFCCC44(v8, &qword_1EC4C5228, &unk_1CFA189E0);
  }

  a2(v14);
  return sub_1CEFCCC44(v14, &unk_1EC4BF300, &unk_1CFA006B0);
}

void sub_1CF912C1C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v56 = a3;
  v4 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E5268();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6118();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5228, &unk_1CFA189E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - v18;
  v20 = type metadata accessor for VFSItem(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v43 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v43 - v27;
  v50 = a1;
  sub_1CEFCCBDC(a1, v16, &qword_1EC4C5228, &unk_1CFA189E0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v30 = *(*(v29 - 8) + 48);
  if (v30(v16, 1, v29) == 1)
  {
    sub_1CEFCCC44(v16, &qword_1EC4C5228, &unk_1CFA189E0);
    (*(v21 + 56))(v19, 1, 1, v20);
  }

  else
  {
    if (v16[*(v29 + 56)])
    {
      v31 = 1;
    }

    else
    {
      sub_1CEFDA2E4(v16, v19, type metadata accessor for VFSItem);
      v31 = 0;
    }

    (*(v21 + 56))(v19, v31, 1, v20);
    sub_1CEFCCC44(v16, &qword_1EC4C5220, &qword_1CFA0A270);
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      sub_1CEFDA05C(v19, v28, type metadata accessor for VFSItem);
      sub_1CEFDA05C(v28, v56, type metadata accessor for VFSItem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
LABEL_20:
      swift_storeEnumTagMultiPayload();
      return;
    }
  }

  sub_1CEFCCC44(v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (((v55 >> 58) & 0x3C | (v55 >> 1) & 3) != 3)
  {
LABEL_19:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v40 = v51;
    v41 = v54;
    sub_1CF9E57D8();
    v42 = sub_1CF9E50D8();
    (*(v53 + 8))(v40, v41);
    *v56 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
    goto LABEL_20;
  }

  sub_1CEFCCBDC(v50, v13, &qword_1EC4C5228, &unk_1CFA189E0);
  if (v30(v13, 1, v29) == 1)
  {
    sub_1CEFCCC44(v13, &qword_1EC4C5228, &unk_1CFA189E0);
    goto LABEL_19;
  }

  sub_1CEFDA2E4(v13, v23, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v13, &qword_1EC4C5220, &qword_1CFA0A270);
  v32 = v49;
  sub_1CEFDA05C(v23, v49, type metadata accessor for VFSItem);
  v33 = v48;
  sub_1CEFDA2E4(v32 + *(v20 + 28), v48, type metadata accessor for ItemMetadata);
  sub_1CF9E5C98();
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v34 < 9.22337204e18)
  {
    is_busy_date = fpfs_is_busy_date();
    sub_1CEFD5398(v33, type metadata accessor for ItemMetadata);
    if (is_busy_date)
    {
      v36 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v37 = sub_1CF9E6108();
      v38 = sub_1CF9E7298();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1CEFC7000, v37, v38, "🏗 Forcing busy item return for URL resolution", v39, 2u);
        MEMORY[0x1D386CDC0](v39, -1, -1);
      }

      (*(v44 + 8))(v46, v45);
      sub_1CEFDA05C(v32, v56, type metadata accessor for VFSItem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
      goto LABEL_20;
    }

    sub_1CEFD5398(v32, type metadata accessor for VFSItem);
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

char *sub_1CF913458(unint64_t a1)
{
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v672 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v672 - v8;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      v300 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v301 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v302 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v681[0] = 0;
      v681[1] = 0xE000000000000000;
      v14 = v300;
      sub_1CF9E7948();
      v681[1], v303, v304, v305, v306, v307, v308, v309;
      v681[0] = 0xD000000000000010;
      v681[1] = 0x80000001CFA55EB0;
      v679 = v301;
      v680 = v302;
      v311 = VFSItemID.description.getter(v310);
      v313 = v312;
      MEMORY[0x1D3868CC0](v311);
      v313, v314, v315, v316, v317, v318, v319, v320;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v33 = [v14 description];
      goto LABEL_70;
    case 2uLL:
      v38 = v7;
      v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v224 = swift_projectBox();
      v225 = *v224;
      v226 = *(v224 + 1);
      v227 = *&v224[*(v223 + 64)];
      (*(v3 + 16))(v10, &v224[*(v223 + 48)], v38);
      v681[0] = 0;
      v681[1] = 0xE000000000000000;

      v42 = v227;
      sub_1CF9E7948();
      v681[1], v228, v229, v230, v231, v232, v233, v234;
      strcpy(v681, "coordination(");
      HIWORD(v681[1]) = -4864;
      MEMORY[0x1D3868CC0](v225, v226);
      v226, v235, v236, v237, v238, v239, v240, v241;
      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      v242 = sub_1CF9E5928();
      v243 = [v242 fp_shortDescription];

      v244 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v246 = v245;

      MEMORY[0x1D3868CC0](v244, v246);
      v246, v247, v248, v249, v250, v251, v252, v253;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 3uLL:
      v272 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v273 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v274 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v681, "itemID->URL(");
      BYTE5(v681[1]) = 0;
      HIWORD(v681[1]) = -5120;
      v679 = v273;
      v680 = v274;
      v14 = v272;
      v275 = VFSItemID.description.getter(v14);
      v277 = v276;
      MEMORY[0x1D3868CC0](v275);
      v277, v278, v279, v280, v281, v282, v283, v284;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v33 = [v14 description];
      goto LABEL_70;
    case 4uLL:
      v166 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v167 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v167 == 255)
      {
        v681[0] = 0xD00000000000001ALL;
        v681[1] = 0x80000001CFA55E70;
        v179 = [v166 description];
      }

      else
      {
        v168 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
        strcpy(v681, "enumeration(");
        BYTE5(v681[1]) = 0;
        HIWORD(v681[1]) = -5120;
        v679 = v168;
        v680 = v167;
        v169 = VFSItemID.description.getter(v7);
        v171 = v170;
        MEMORY[0x1D3868CC0](v169);
        v171, v172, v173, v174, v175, v176, v177, v178;
        MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
        v179 = [v166 description];
      }

      goto LABEL_92;
    case 5uLL:
      v364 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v365 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v365 == 255)
      {
        v681[0] = 0xD00000000000001BLL;
        v681[1] = 0x80000001CFA55E50;
        v179 = [v364 description];
      }

      else
      {
        v366 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
        strcpy(v681, "itemCreation(");
        HIWORD(v681[1]) = -4864;
        v679 = v366;
        v680 = v365;
        v367 = VFSItemID.description.getter(v7);
        v369 = v368;
        MEMORY[0x1D3868CC0](v367);
        v369, v370, v371, v372, v373, v374, v375, v376;
        MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
        v179 = [v364 description];
      }

      goto LABEL_92;
    case 6uLL:
      v38 = v7;
      v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v401 = swift_projectBox();
      v402 = *(v401 + *(v400 + 48));
      (*(v3 + 16))(v10, v401, v38);
      strcpy(v681, "eviction(");
      WORD1(v681[1]) = 0;
      HIDWORD(v681[1]) = -385875968;
      v42 = v402;
      v403 = sub_1CF9E5928();
      v404 = [v403 fp_shortDescription];

      v405 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v407 = v406;

      MEMORY[0x1D3868CC0](v405, v407);
      v407, v408, v409, v410, v411, v412, v413, v414;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 7uLL:
      v38 = v7;
      v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v286 = swift_projectBox();
      v287 = *(v286 + *(v285 + 48));
      (*(v3 + 16))(v10, v286, v38);
      v681[0] = 0x676E496563726F66;
      v681[1] = 0xEF286E6F69747365;
      v42 = v287;
      v288 = sub_1CF9E5928();
      v289 = [v288 fp_shortDescription];

      v290 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v292 = v291;

      MEMORY[0x1D3868CC0](v290, v292);
      v292, v293, v294, v295, v296, v297, v298, v299;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 8uLL:
      v439 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v440 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v441 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v681[0] = 0;
      v681[1] = 0xE000000000000000;
      v14 = v439;
      sub_1CF9E7948();
      v681[1], v442, v443, v444, v445, v446, v447, v448;
      v681[0] = 0xD000000000000018;
      v681[1] = 0x80000001CFA55EF0;
      v679 = v440;
      v680 = v441;
      v450 = VFSItemID.description.getter(v449);
      v452 = v451;
      MEMORY[0x1D3868CC0](v450);
      v452, v453, v454, v455, v456, v457, v458, v459;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v33 = [v14 description];
      goto LABEL_70;
    case 9uLL:
      v208 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v209 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v210 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v681, "eviction(");
      WORD1(v681[1]) = 0;
      HIDWORD(v681[1]) = -385875968;
      v679 = v209;
      v680 = v210;
      v14 = v208;
      v211 = VFSItemID.description.getter(v14);
      v213 = v212;
      MEMORY[0x1D3868CC0](v211);
      v213, v214, v215, v216, v217, v218, v219, v220;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v33 = [v14 description];
      goto LABEL_70;
    case 0xAuLL:
      v426 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v427 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v428 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v681[0] = 0xD000000000000010;
      v681[1] = 0x80000001CFA55E30;
      v679 = v427;
      v680 = v428;
      v14 = v426;
      v429 = VFSItemID.description.getter(v14);
      v431 = v430;
      MEMORY[0x1D3868CC0](v429);
      v431, v432, v433, v434, v435, v436, v437, v438;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v33 = [v14 description];
      goto LABEL_70;
    case 0xBuLL:
      v164 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v165 = 0xEB0000000028646ELL;
      goto LABEL_43;
    case 0xCuLL:
      v195 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v196 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v197 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v681, "pinItem(");
      BYTE1(v681[1]) = 0;
      WORD1(v681[1]) = 0;
      HIDWORD(v681[1]) = -402653184;
      v679 = v196;
      v680 = v197;
      v14 = v195;
      v198 = VFSItemID.description.getter(v14);
      v200 = v199;
      MEMORY[0x1D3868CC0](v198);
      v200, v201, v202, v203, v204, v205, v206, v207;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v33 = [v14 description];
      goto LABEL_70;
    case 0xDuLL:
      v387 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v388 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v389 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v681, "unpinItem(");
      BYTE3(v681[1]) = 0;
      HIDWORD(v681[1]) = -369098752;
      v679 = v388;
      v680 = v389;
      v14 = v387;
      v390 = VFSItemID.description.getter(v14);
      v392 = v391;
      MEMORY[0x1D3868CC0](v390);
      v392, v393, v394, v395, v396, v397, v398, v399;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v33 = [v14 description];
      goto LABEL_70;
    case 0xEuLL:
      v678 = &v672 - v8;
      v129 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v130 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v681, "detachRoots(");
      BYTE5(v681[1]) = 0;
      HIWORD(v681[1]) = -5120;
      if (v129 >> 62)
      {
        v669 = v7;
        v670 = v129;
        v671 = sub_1CF9E7818();
        v129 = v670;
        v131 = v671;
        v7 = v669;
      }

      else
      {
        v131 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v132 = MEMORY[0x1E69E7CC0];
      if (!v131)
      {
        goto LABEL_89;
      }

      v133 = v129;
      v674 = v130;
      v677 = v7;
      v679 = MEMORY[0x1E69E7CC0];
      result = sub_1CEFE95CC(0, v131 & ~(v131 >> 63), 0);
      if (v131 < 0)
      {
        __break(1u);
      }

      else
      {
        v134 = 0;
        v132 = v679;
        v135 = v133;
        v675 = v133 & 0xC000000000000001;
        v676 = v133;
        v136 = (v3 + 8);
        do
        {
          if (v675)
          {
            v137 = MEMORY[0x1D3869C30](v134, v135);
          }

          else
          {
            v137 = v135[v134 + 4];
          }

          v138 = v137;
          v139 = [v138 knownFolder];
          v140 = v678;
          sub_1CF9E59D8();

          v141 = sub_1CF9E5928();
          v142 = [v141 fp_shortDescription];

          v143 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v145 = v144;

          (*v136)(v140, v677);
          v679 = v132;
          v147 = *v132->tree;
          v146 = *v132->tester;
          if (v147 >= v146 >> 1)
          {
            sub_1CEFE95CC((v146 > 1), v147 + 1, 1);
            v132 = v679;
          }

          ++v134;
          *v132->tree = v147 + 1;
          v148 = v132 + 16 * v147;
          *(v148 + 4) = v143;
          *(v148 + 5) = v145;
          v135 = v676;
        }

        while (v131 != v134);
        v130 = v674;
LABEL_89:
        v679 = v132;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
        sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
        v649 = sub_1CF9E67D8();
        v651 = v650;
        v132, v650, v652, v653, v654, v655, v656, v657;
        MEMORY[0x1D3868CC0](v649, v651);
        v651, v658, v659, v660, v661, v662, v663, v664;
        MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
        v179 = [v130 description];
LABEL_92:
        v665 = v179;
        v666 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v668 = v667;

        MEMORY[0x1D3868CC0](v666, v668);
        v601 = v668;
LABEL_93:
        v601, v594, v595, v596, v597, v598, v599, v600;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        return v681[0];
      }

      return result;
    case 0xFuLL:
      v254 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v255 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v681, "attachRoots(");
      BYTE5(v681[1]) = 0;
      HIWORD(v681[1]) = -5120;
      v256 = *(v254 + 16);
      v257 = MEMORY[0x1E69E7CC0];
      if (v256)
      {
        v673 = v255;
        v677 = v7;
        v678 = &v672 - v8;
        v679 = MEMORY[0x1E69E7CC0];
        sub_1CEFE95CC(0, v256, 0);
        v257 = v679;
        v259 = *(v3 + 16);
        v258 = v3 + 16;
        v260 = v254 + ((*(v258 + 64) + 32) & ~*(v258 + 64));
        v675 = *(v258 + 56);
        v676 = v259;
        v674 = (v258 - 8);
        do
        {
          v262 = v677;
          v261 = v678;
          v263 = v258;
          (v676)(v678, v260, v677);
          v264 = sub_1CF9E5928();
          v265 = [v264 fp_shortDescription];

          v266 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v268 = v267;

          (*v674)(v261, v262);
          v679 = v257;
          v270 = *v257->tree;
          v269 = *v257->tester;
          if (v270 >= v269 >> 1)
          {
            sub_1CEFE95CC((v269 > 1), v270 + 1, 1);
            v257 = v679;
          }

          *v257->tree = v270 + 1;
          v271 = v257 + 16 * v270;
          *(v271 + 4) = v266;
          *(v271 + 5) = v268;
          v260 += v675;
          --v256;
          v258 = v263;
        }

        while (v256);
        v255 = v673;
      }

      v679 = v257;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
      v633 = sub_1CF9E67D8();
      v635 = v634;
      v257, v634, v636, v637, v638, v639, v640, v641;
      MEMORY[0x1D3868CC0](v633, v635);
      v635, v642, v643, v644, v645, v646, v647, v648;
      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v179 = [v255 description];
      goto LABEL_92;
    case 0x10uLL:
      v101 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v96 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v98 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      strcpy(v681, "ignoreItem(");
      HIDWORD(v681[1]) = -352321536;
      v102 = v101;
      sub_1CF48034C(v96, v97, v98);
      v103 = sub_1CF905264(v96, v97 | (v98 << 8));
      v105 = v104;
      MEMORY[0x1D3868CC0](v103);
      v105, v106, v107, v108, v109, v110, v111, v112;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v113 = [v102 description];
      goto LABEL_73;
    case 0x11uLL:
      v323 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v96 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v98 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      strcpy(v681, "unignoreItem(");
      HIWORD(v681[1]) = -4864;
      v102 = v323;
      sub_1CF48034C(v96, v97, v98);
      v324 = sub_1CF905264(v96, v97 | (v98 << 8));
      v326 = v325;
      MEMORY[0x1D3868CC0](v324);
      v326, v327, v328, v329, v330, v331, v332, v333;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v113 = [v102 description];
      goto LABEL_73;
    case 0x12uLL:
      v415 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v96 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v98 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v681[0] = 0xD000000000000011;
      v681[1] = 0x80000001CFA55E90;
      v102 = v415;
      sub_1CF48034C(v96, v97, v98);
      v416 = sub_1CF905264(v96, v97 | (v98 << 8));
      v418 = v417;
      MEMORY[0x1D3868CC0](v416);
      v418, v419, v420, v421, v422, v423, v424, v425;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v113 = [v102 description];
      goto LABEL_73;
    case 0x13uLL:
      v542 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v96 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v98 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v681[0] = 0x6D6574496B6C7562;
      v681[1] = 0xEF2865676E616843;
      v102 = v542;
      sub_1CF48034C(v96, v97, v98);
      v543 = sub_1CF905264(v96, v97 | (v98 << 8));
      v545 = v544;
      MEMORY[0x1D3868CC0](v543);
      v545, v546, v547, v548, v549, v550, v551, v552;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v113 = [v102 description];
LABEL_73:
      v553 = v113;
      v554 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v556 = v555;

      MEMORY[0x1D3868CC0](v554, v556);
      v556, v557, v558, v559, v560, v561, v562, v563;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      goto LABEL_74;
    case 0x14uLL:
      v38 = v7;
      v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v350 = swift_projectBox();
      v351 = *(v350 + *(v349 + 48));
      (*(v3 + 16))(v10, v350, v38);
      strcpy(v681, "trashItem(");
      BYTE3(v681[1]) = 0;
      HIDWORD(v681[1]) = -369098752;
      v42 = v351;
      v352 = sub_1CF9E5928();
      v353 = [v352 fp_shortDescription];

      v354 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v356 = v355;

      MEMORY[0x1D3868CC0](v354, v356);
      v356, v357, v358, v359, v360, v361, v362, v363;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 0x15uLL:
      v96 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v98 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v99 = 0x80000001CFA55E10;
      v100 = 0xD00000000000001BLL;
      goto LABEL_50;
    case 0x16uLL:
      v502 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v503 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v504 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v681, "uploadBarrier(");
      HIBYTE(v681[1]) = -18;
      v679 = v503;
      v680 = v504;
      v14 = v502;
      v505 = VFSItemID.description.getter(v14);
      v507 = v506;
      MEMORY[0x1D3868CC0](v505);
      v507, v508, v509, v510, v511, v512, v513, v514;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v33 = [v14 description];
      goto LABEL_70;
    case 0x17uLL:
      v592 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v681[0] = 0xD000000000000011;
      v681[1] = 0x80000001CFA55DC0;
      v179 = [v592 description];
      goto LABEL_92;
    case 0x18uLL:
      v222 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v681[0] = 0xD00000000000001ALL;
      v681[1] = 0x80000001CFA55D90;
      v179 = [v222 description];
      goto LABEL_92;
    case 0x19uLL:
      v221 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v681[0] = 0xD000000000000019;
      v681[1] = 0x80000001CFA55D70;
      v179 = [v221 description];
      goto LABEL_92;
    case 0x1AuLL:
      v629 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v681[0] = 0xD00000000000001ELL;
      v681[1] = 0x80000001CFA55D50;
      if (v629)
      {
        v630 = [v629 description];
        v631 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v593 = v632;
      }

      else
      {
        v593 = 0xE600000000000000;
        v631 = 0x29656E6F6E28;
      }

      v321 = v631;
      goto LABEL_81;
    case 0x1BuLL:
      return 0xD000000000000016;
    case 0x1CuLL:
      return 0xD000000000000019;
    case 0x1DuLL:
      v34 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v35 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v36 = 0x80000001CFA55CD0;
      v37 = 0xD000000000000016;
      goto LABEL_79;
    case 0x1EuLL:
      v460 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v460);
      v461 = sub_1CEFD11AC(v460);
      sub_1CEFD0A98(v460);
      return v461;
    case 0x1FuLL:
      v164 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v165 = 0xEF286B726F57646ELL;
LABEL_43:
      v681[0] = 0x756F72676B636162;
      v681[1] = v165;
      v321 = sub_1CF7F5068(v164);
      goto LABEL_80;
    case 0x20uLL:
      v462 = v7;
      v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v464 = swift_projectBox();
      v465 = *(v464 + *(v463 + 48));
      v466 = *(v464 + *(v463 + 64));
      (*(v3 + 16))(v5, v464, v462);
      strcpy(v681, "itemID(");
      v681[1] = 0xE700000000000000;
      v467 = v466;
      v468 = sub_1CF9E5928();
      v469 = [v468 fp_shortDescription];

      v470 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v472 = v471;

      MEMORY[0x1D3868CC0](v470, v472);
      v472, v473, v474, v475, v476, v477, v478, v479;
      MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA55C70);
      if (v465)
      {
        v480 = 1702195828;
      }

      else
      {
        v480 = 0x65736C6166;
      }

      if (v465)
      {
        v481 = 0xE400000000000000;
      }

      else
      {
        v481 = 0xE500000000000000;
      }

      MEMORY[0x1D3868CC0](v480, v481);
      v481, v482, v483, v484, v485, v486, v487, v488;
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v489 = [v467 description];
      v490 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v492 = v491;

      MEMORY[0x1D3868CC0](v490, v492);
      v492, v493, v494, v495, v496, v497, v498, v499;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      v500 = v681[0];
      (*(v3 + 8))(v5, v462);
      return v500;
    case 0x21uLL:
      v38 = v7;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v150 = swift_projectBox();
      v151 = *(v150 + *(v149 + 48));
      (*(v3 + 16))(v10, v150, v38);
      v681[0] = 0xD000000000000010;
      v681[1] = 0x80000001CFA55C30;
      v42 = v151;
      v152 = sub_1CF9E5928();
      v153 = [v152 fp_shortDescription];

      v154 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v156 = v155;

      MEMORY[0x1D3868CC0](v154, v156);
      v156, v157, v158, v159, v160, v161, v162, v163;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 0x22uLL:
      v96 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v98 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v99 = 0x80000001CFA55DE0;
      v100 = 0xD000000000000025;
LABEL_50:
      v681[0] = v100;
      v681[1] = v99;
      sub_1CF48034C(v96, v97, v98);
      v377 = sub_1CF905264(v96, v97 | (v98 << 8));
      v379 = v378;
      MEMORY[0x1D3868CC0](v377);
      v379, v380, v381, v382, v383, v384, v385, v386;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
LABEL_74:
      sub_1CF1E53F8(v96, v97, v98);
      return v681[0];
    case 0x23uLL:
      v38 = v7;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v57 = swift_projectBox();
      v58 = *(v57 + *(v56 + 48));
      v59 = *(v57 + *(v56 + 64));
      (*(v3 + 16))(v10, v57, v38);
      strcpy(v681, "itemForURL(");
      HIDWORD(v681[1]) = -352321536;
      v42 = v59;
      v60 = sub_1CF9E5928();
      v61 = [v60 fp_shortDescription];

      v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v64 = v63;

      MEMORY[0x1D3868CC0](v62, v64);
      v64, v65, v66, v67, v68, v69, v70, v71;
      MEMORY[0x1D3868CC0](0x6E6F6974706F202CLL, 0xED00007830203A73);
      v679 = v58;
      sub_1CF66DD74();
      v72 = sub_1CF9E6B28();
      v74 = v73;
      MEMORY[0x1D3868CC0](v72);
      v74, v75, v76, v77, v78, v79, v80, v81;
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 0x24uLL:
      v82 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v83 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v84 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v681, "itemForURL(");
      HIDWORD(v681[1]) = -352321536;
      v679 = v83;
      v680 = v84;
      v14 = v82;
      v85 = VFSItemID.description.getter(v14);
      v87 = v86;
      MEMORY[0x1D3868CC0](v85);
      v87, v88, v89, v90, v91, v92, v93, v94;
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v33 = [v14 description];
      goto LABEL_70;
    case 0x25uLL:
      v38 = v7;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v40 = swift_projectBox();
      v41 = *(v40 + *(v39 + 48));
      (*(v3 + 16))(v10, v40, v38);
      v681[0] = 0xD000000000000018;
      v681[1] = 0x80000001CFA55C50;
      v42 = v41;
      v43 = sub_1CF9E5928();
      v44 = [v43 fp_shortDescription];

      v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v47 = v46;

      MEMORY[0x1D3868CC0](v45, v47);
      v47, v48, v49, v50, v51, v52, v53, v54;
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 0x26uLL:
      v38 = v7;
      v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v603 = swift_projectBox();
      v604 = *(v603 + *(v602 + 48));
      v605 = *(v603 + *(v602 + 64));
      (*(v3 + 16))(v10, v603, v38);
      v681[0] = 0;
      v681[1] = 0xE000000000000000;
      v42 = v605;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x636E7953656C6966, 0xEE00286573756150);
      v606 = sub_1CF9E5928();
      v607 = [v606 fp_shortDescription];

      v608 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v610 = v609;

      MEMORY[0x1D3868CC0](v608, v610);
      v610, v611, v612, v613, v614, v615, v616, v617;
      MEMORY[0x1D3868CC0](0x697661686562202CLL, 0xEC000000203A726FLL);
      v679 = v604;
      type metadata accessor for FPPauseBehavior(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 0x27uLL:
      v38 = v7;
      v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v527 = swift_projectBox();
      v528 = *(v527 + *(v526 + 48));
      v529 = *(v527 + *(v526 + 64));
      (*(v3 + 16))(v10, v527, v38);
      v681[0] = 0;
      v681[1] = 0xE000000000000000;
      v42 = v529;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x636E7953656C6966, 0xEF28656D75736552);
      v530 = sub_1CF9E5928();
      v531 = [v530 fp_shortDescription];

      v532 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v534 = v533;

      MEMORY[0x1D3868CC0](v532, v534);
      v534, v535, v536, v537, v538, v539, v540, v541;
      MEMORY[0x1D3868CC0](0x697661686562202CLL, 0xEC000000203A726FLL);
      v679 = v528;
      type metadata accessor for FPResumeBehavior(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 0x28uLL:
      v38 = v7;
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v181 = swift_projectBox();
      v182 = *(v181 + *(v180 + 48));
      (*(v3 + 16))(v10, v181, v38);
      v681[0] = 0xD000000000000017;
      v681[1] = 0x80000001CFA55C10;
      v42 = v182;
      v183 = sub_1CF9E5928();
      v184 = [v183 fp_shortDescription];

      v185 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v187 = v186;

      MEMORY[0x1D3868CC0](v185, v187);
      v187, v188, v189, v190, v191, v192, v193, v194;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 0x29uLL:
      v38 = v7;
      v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v335 = swift_projectBox();
      v336 = *(v335 + *(v334 + 48));
      (*(v3 + 16))(v10, v335, v38);
      v681[0] = 0xD000000000000013;
      v681[1] = 0x80000001CFA55BD0;
      v42 = v336;
      v337 = sub_1CF9E5928();
      v338 = [v337 fp_shortDescription];

      v339 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v341 = v340;

      MEMORY[0x1D3868CC0](v339, v341);
      v341, v342, v343, v344, v345, v346, v347, v348;
      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v55 = [v42 description];
      goto LABEL_83;
    case 0x2AuLL:
      v38 = v7;
      v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v565 = swift_projectBox();
      v566 = *(v565 + *(v564 + 48));
      v567 = *(v565 + *(v564 + 64));
      (*(v3 + 16))(v10, v565, v38);
      v681[0] = 0;
      v681[1] = 0xE000000000000000;
      v568 = v567;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA55BF0);
      v569 = sub_1CF9E5928();
      v570 = [v569 fp_shortDescription];

      v571 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v573 = v572;

      MEMORY[0x1D3868CC0](v571, v573);
      v573, v574, v575, v576, v577, v578, v579, v580;
      MEMORY[0x1D3868CC0](0x7963696C6F70202CLL, 0xEA0000000000203ALL);
      v679 = v566;
      type metadata accessor for NSFileManagerUploadLocalVersionConflictPolicy(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v581 = [v568 description];
      v582 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v584 = v583;

      MEMORY[0x1D3868CC0](v582, v584);
      v584, v585, v586, v587, v588, v589, v590, v591;
      goto LABEL_84;
    case 0x2BuLL:
      v34 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v35 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v36 = 0x80000001CFA55BB0;
      v37 = 0xD000000000000013;
LABEL_79:
      v681[0] = v37;
      v681[1] = v36;
      v679 = v34;
      v680 = v35;
      v321 = VFSItemID.description.getter(v7);
LABEL_80:
      v593 = v322;
LABEL_81:
      MEMORY[0x1D3868CC0](v321);
      v601 = v593;
      goto LABEL_93;
    case 0x2CuLL:
      v38 = v7;
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v115 = swift_projectBox();
      v116 = *(v115 + *(v114 + 48));
      (*(v3 + 16))(v10, v115, v38);
      v681[0] = 0xD000000000000010;
      v681[1] = 0x80000001CFA55B90;
      v42 = v116;
      v117 = sub_1CF9E5928();
      v118 = [v117 fp_shortDescription];

      v119 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v121 = v120;

      MEMORY[0x1D3868CC0](v119, v121);
      v121, v122, v123, v124, v125, v126, v127, v128;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v55 = [v42 description];
LABEL_83:
      v618 = v55;
      v619 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v621 = v620;

      MEMORY[0x1D3868CC0](v619, v621);
      v621, v622, v623, v624, v625, v626, v627, v628;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

LABEL_84:
      v500 = v681[0];
      (*(v3 + 8))(v10, v38);
      return v500;
    case 0x2DuLL:
      v501 = 0xD000000000000015;
      if (a1 == 0xB00000000000000ALL)
      {
        v501 = 0xD000000000000018;
      }

      if (a1 == 0xB000000000000002)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return v501;
      }

    default:
      v11 = *(a1 + 32);
      v12 = *(a1 + 16);
      v13 = *(a1 + 24);
      v681[0] = 0;
      v681[1] = 0xE000000000000000;
      v14 = v11;
      sub_1CF9E7948();
      v681[1], v15, v16, v17, v18, v19, v20, v21;
      v681[0] = 0xD000000000000010;
      v681[1] = 0x80000001CFA55ED0;
      v679 = v12;
      v680 = v13;
      v23 = VFSItemID.description.getter(v22);
      v25 = v24;
      MEMORY[0x1D3868CC0](v23);
      v25, v26, v27, v28, v29, v30, v31, v32;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v33 = [v14 description];
LABEL_70:
      v515 = v33;
      v516 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v518 = v517;

      MEMORY[0x1D3868CC0](v516, v518);
      v518, v519, v520, v521, v522, v523, v524, v525;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      return v681[0];
  }
}

void *sub_1CF915974(unint64_t a1, uint64_t (*a2)(unint64_t), uint64_t (*a3)(unint64_t, __n128))
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v12 <= 27)
  {
    switch(v12)
    {
      case 21:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      case 26:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      case 27:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    }
  }

  else
  {
    if (v12 <= 30)
    {
      if (v12 != 28)
      {
        if (v12 == 30)
        {
          v13 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
          sub_1CEFD09A0(v13);
          v14 = a2(v13);
          sub_1CEFD0A98(v13);
          return v14;
        }

        goto LABEL_13;
      }

      return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    }

    if (v12 == 31)
    {
      return 0;
    }

    if (v12 == 34)
    {
      return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
    }
  }

LABEL_13:
  v16 = v8;
  result = a3(a1, v9);
  if (result)
  {
    v17 = result;
    v18 = [result qos];
    v19 = 0x6000000000000000;
    v20 = 0x4000000000000000;
    if (v18 <= 0x14)
    {
      v20 = (v18 - 17 < 0xFFFFFFF0) << 61;
    }

    if (v18 <= 0x18)
    {
      v19 = v20;
    }

    if (v18 >= 0x21)
    {
      v21 = 0x8000000000000000;
    }

    else
    {
      v21 = v19;
    }

    v22 = [v17 date];
    sub_1CF9E5CB8();

    sub_1CF9E5C98();
    v24 = v23;

    result = (*(v7 + 8))(v11, v16);
    v25 = v24 * 1000000000.0;
    if (COERCE__INT64(fabs(v24 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        return ((v25 & ~(v25 >> 63)) + v21);
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF915C14(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5248, &qword_1CFA189F8);
  v4 = swift_allocObject();
  *(v4 + 24) = v3;
  swift_weakInit();
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5250, &unk_1CFA18A00);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  *(v1 + 16) = v4;
  *(v1 + 24) = v6;
  *(v1 + 32) = v8;
  *(v1 + 40) = v7;
  *(v1 + 48) = v9;
  swift_weakAssign();
  swift_weakAssign();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_unknownObjectRetain();

    swift_weakAssign();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}