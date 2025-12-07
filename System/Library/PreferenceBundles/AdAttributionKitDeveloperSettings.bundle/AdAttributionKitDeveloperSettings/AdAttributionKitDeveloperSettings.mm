uint64_t variable initialization expression of DevelopmentPostbacksDetail._state()
{
  type metadata accessor for ConfigurePostbacksState(0);
  swift_allocObject();
  return sub_12D98();
}

BOOL sub_15F8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

__n128 sub_1668(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_16C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DevelopmentPostbacksDetail.body.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v43 = sub_240C8();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_242C8();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1F7C(&qword_34408, &qword_24FD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = sub_1F7C(&qword_34410, &qword_24FD8);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v47 = sub_1F7C(&qword_34418, &qword_24FE0);
  v38 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v35 - v11;
  v44 = sub_1F7C(&qword_34420, &qword_24FE8);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v48 = &v35 - v13;
  v49 = v1;
  sub_1F7C(&qword_34428, &qword_24FF0);
  sub_4274(&qword_34430, &qword_34428, &qword_24FF0, &protocol conformance descriptor for TupleView<A>);
  sub_24318();
  v14 = sub_4274(&qword_34438, &qword_34408, &qword_24FD0, &protocol conformance descriptor for List<A, B>);
  sub_24368();
  (*(v5 + 8))(v7, v4);
  v15 = v37;
  sub_242B8();
  v50 = v4;
  v51 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24418();
  (*(v39 + 8))(v15, v40);
  (*(v36 + 8))(v10, v8);
  v17 = v41;
  sub_240B8();
  v50 = v8;
  v51 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v47;
  sub_243B8();
  (*(v42 + 8))(v17, v43);
  (*(v38 + 8))(v12, v19);
  v20 = v35;
  v21 = v35[1];
  v54 = *v35;
  v55 = v21;
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_24518();
  v22 = v50;
  v23 = v51;
  v24 = v52;
  swift_getKeyPath();
  v54 = v22;
  v55 = v23;
  v56 = v24;
  sub_1F7C(&qword_34448, &qword_25028);
  sub_24588();

  v59 = v21;
  v57 = *(v20 + 1);
  v58 = *(v20 + 32);
  v25 = swift_allocObject();
  v26 = *(v20 + 1);
  *(v25 + 16) = *v20;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(v20 + 32);

  sub_465C(&v59, &v50, &qword_34450, &qword_25030);
  sub_465C(&v57, &v50, &qword_34458, &qword_25038);
  sub_1F7C(&qword_34460, &qword_25040);
  v50 = v47;
  v51 = v18;
  swift_getOpaqueTypeConformance2();
  v27 = sub_26B8(&qword_34468, &qword_25048);
  v28 = type metadata accessor for ConfigurePostbacksState(255);
  v29 = sub_3DA8();
  v50 = &type metadata for ConfigureDevelopmentPostbacks;
  v51 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_3DFC();
  v50 = v27;
  v51 = v28;
  v52 = v30;
  v53 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v44;
  v33 = v48;
  sub_24468();

  return (*(v45 + 8))(v33, v32);
}

uint64_t sub_1F7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1FC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v47 = sub_1F7C(&qword_34488, ",7");
  v50 = *(v47 - 8);
  v3 = __chkstk_darwin(v47);
  v56 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v55 = &v45 - v6;
  v7 = __chkstk_darwin(v5);
  v54 = &v45 - v8;
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v48 = sub_1F7C(&qword_34490, &qword_25138);
  v46 = *(v48 - 8);
  v11 = __chkstk_darwin(v48);
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v57 = a1;
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v58 = sub_24348();
  v59 = v16;
  v60 = v17 & 1;
  v61 = v18;
  sub_1F7C(&qword_344A0, &qword_25140);
  sub_4274(&qword_344A8, &qword_344A0, &qword_25140, &protocol conformance descriptor for TupleView<A>);
  v52 = v14;
  v19 = sub_24638();
  __chkstk_darwin(v19);
  sub_24208();
  if (!sub_24808())
  {
    v20 = [objc_opt_self() mainBundle];
  }

  v58 = sub_24348();
  v59 = v21;
  v60 = v22 & 1;
  v61 = v23;
  sub_1F7C(&qword_344B0, &qword_25148);
  sub_4274(&qword_344B8, &qword_344B0, &qword_25148, &unk_27BA8);
  v24 = sub_24638();
  v51 = v10;
  __chkstk_darwin(v24);
  sub_24208();
  if (!sub_24808())
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v58 = sub_24348();
  v59 = v26;
  v60 = v27 & 1;
  v61 = v28;
  v29 = v54;
  sub_24638();
  v30 = v46;
  v31 = *(v46 + 16);
  v32 = v53;
  v33 = v48;
  v31(v53, v52, v48);
  v34 = v50;
  v35 = *(v50 + 16);
  v36 = v47;
  v35(v55, v51, v47);
  v35(v56, v29, v36);
  v37 = v49;
  v31(v49, v32, v33);
  v38 = sub_1F7C(&qword_344C0, &qword_25150);
  v39 = v55;
  v35(&v37[*(v38 + 48)], v55, v36);
  v40 = &v37[*(v38 + 64)];
  v41 = v56;
  v35(v40, v56, v36);
  v42 = *(v34 + 8);
  v42(v54, v36);
  v42(v51, v36);
  v43 = *(v30 + 8);
  v43(v52, v33);
  v42(v41, v36);
  v42(v39, v36);
  return (v43)(v53, v33);
}

uint64_t sub_26B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2700@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v69 = sub_1F7C(&qword_344C8, &qword_25178) - 8;
  v3 = __chkstk_darwin(v69);
  v70 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v73 = &v55 - v5;
  v6 = sub_1F7C(&qword_344D0, &unk_25180);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v9 = sub_1F7C(&qword_344D8, &unk_257A0);
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  __chkstk_darwin(v9);
  v12 = &v55 - v11;
  v13 = sub_1F7C(&qword_344E0, &qword_25190);
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  __chkstk_darwin(v13);
  v16 = &v55 - v15;
  v17 = sub_1F7C(&qword_344E8, &qword_25198);
  v18 = *(v17 - 8);
  v63 = v17;
  v64 = v18;
  __chkstk_darwin(v17);
  v56 = &v55 - v19;
  v20 = sub_1F7C(&qword_344F0, &qword_251A0);
  v67 = *(v20 - 8);
  v68 = v20;
  v21 = __chkstk_darwin(v20);
  v66 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v72 = &v55 - v23;
  v24 = a1[1];
  v62 = *a1;
  v59 = v24;
  *&v76 = v62;
  *(&v76 + 1) = v24;
  v65 = sub_1F7C(&qword_34440, &qword_24FF8);
  sub_24518();
  v25 = v84;
  v26 = v85;
  swift_getKeyPath();
  v82 = v25;
  v83 = v26;
  sub_1F7C(&qword_34448, &qword_25028);
  sub_24588();

  v55 = v76;
  v27 = v77;

  v84 = xmmword_24FB0;
  v85 = xmmword_24FC0;
  v86 = v55;
  v87 = v27;
  *&v88 = 0xD000000000000011;
  *(&v88 + 1) = 0x800000000002B920;
  v89 = xmmword_24FC0;
  v78 = v55;
  v79 = v27;
  v80 = v88;
  v81 = xmmword_24FC0;
  v76 = xmmword_24FB0;
  v77 = xmmword_24FC0;
  v28 = sub_453C();
  sub_24408();
  sub_4590(&v84);
  sub_242E8();
  v29 = sub_242F8();
  (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
  *&v76 = &type metadata for LabeledTextField;
  *(&v76 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v57;
  sub_24438();
  sub_46C4(v8, &qword_344D0, &unk_25180);
  (*(v58 + 8))(v12, v31);
  *&v76 = v31;
  *(&v76 + 1) = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v56;
  v34 = v60;
  sub_243C8();
  (*(v61 + 8))(v16, v34);
  v76 = *(a1 + 1);
  LOBYTE(v77) = *(a1 + 32);
  v82 = *(a1 + 1);
  LOBYTE(v83) = *(a1 + 32);
  sub_1F7C(&qword_34458, &qword_25038);
  sub_24078();
  *&v82 = v34;
  *(&v82 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v72;
  v36 = v63;
  sub_24488();

  (*(v64 + 8))(v33, v36);
  v37 = v59;
  v75 = v59;
  v38 = swift_allocObject();
  v39 = *(a1 + 1);
  *(v38 + 16) = *a1;
  *(v38 + 32) = v39;
  *(v38 + 48) = *(a1 + 32);
  v40 = v62;

  sub_465C(&v75, &v82, &qword_34450, &qword_25030);
  sub_465C(&v76, &v82, &qword_34458, &qword_25038);
  v41 = v73;
  sub_24528();
  *&v82 = v40;
  *(&v82 + 1) = v37;
  sub_244F8();
  v42 = v74;
  swift_getKeyPath();
  *&v82 = v42;
  sub_3DFC();
  sub_23F28();

  LOBYTE(v34) = *(v42 + 32);

  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v34;
  v45 = v68;
  v46 = (v41 + *(v69 + 44));
  *v46 = KeyPath;
  v46[1] = sub_4654;
  v46[2] = v44;
  v48 = v66;
  v47 = v67;
  v49 = *(v67 + 16);
  v49(v66, v35, v45);
  v50 = v70;
  sub_465C(v41, v70, &qword_344C8, &qword_25178);
  v51 = v71;
  v49(v71, v48, v45);
  v52 = sub_1F7C(&qword_34500, qword_25228);
  sub_465C(v50, &v51[*(v52 + 48)], &qword_344C8, &qword_25178);
  sub_46C4(v73, &qword_344C8, &qword_25178);
  v53 = *(v47 + 8);
  v53(v72, v45);
  sub_46C4(v50, &qword_344C8, &qword_25178);
  return (v53)(v48, v45);
}

uint64_t sub_2F9C(__int128 *a1)
{
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_244F8();
  if (*(v3 + 33) == 1)
  {
    *(v3 + 33) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  sub_1F7C(&qword_34458, &qword_25038);
  return sub_24068();
}

uint64_t sub_30F4@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_31D8(uint64_t a1)
{
  v1[5] = a1;
  sub_247B8();
  v1[6] = sub_247A8();
  v3 = sub_24798();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_3270, v3, v2);
}

uint64_t sub_3270()
{
  *(v0 + 16) = **(v0 + 40);
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_244F8();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_3344;

  return sub_1900C();
}

uint64_t sub_3344()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_3488, v3, v2);
}

uint64_t sub_3488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_34E8@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void *sub_35CC@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a1[1];
  v17 = *(a1 + 1);
  v18 = *(a1 + 32);
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  v16 = 0;

  sub_465C(&v19, v14, &qword_34450, &qword_25030);
  sub_465C(&v17, v14, &qword_34458, &qword_25038);
  result = sub_244E8();
  v12 = v14[0];
  v13 = v15;
  *a5 = a3;
  *(a5 + 8) = v9;
  *(a5 + 16) = a4;
  *(a5 + 24) = 0;
  *(a5 + 32) = v12;
  *(a5 + 40) = v13;
  return result;
}

uint64_t sub_36BC(uint64_t a1)
{
  v1[5] = a1;
  sub_247B8();
  v1[6] = sub_247A8();
  v3 = sub_24798();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_3754, v3, v2);
}

uint64_t sub_3754()
{
  *(v0 + 16) = **(v0 + 40);
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_244F8();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_3828;

  return sub_19374();
}

uint64_t sub_3828()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_4754, v3, v2);
}

uint64_t sub_396C@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_24348();
  v5 = v4;
  v7 = v6;
  sub_244C8();
  v8 = sub_24338();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_439C(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_3AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_3BA0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = sub_1F7C(&qword_34468, &qword_25048);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  type metadata accessor for ConfigurePostbacksState(0);
  sub_3DFC();
  v7 = sub_240A8();
  v9 = v8;
  sub_4180();
  sub_24098();
  v10 = v16;
  v11 = *(&v16 + 1);
  v12 = v17;
  *&v16 = v7;
  BYTE8(v16) = v9 & 1;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v13 = sub_3DA8();
  sub_24428();

  v16 = *a1;
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_244F8();
  *&v16 = &type metadata for ConfigureDevelopmentPostbacks;
  *(&v16 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  sub_24398();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_3DA8()
{
  result = qword_34470;
  if (!qword_34470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34470);
  }

  return result;
}

unint64_t sub_3DFC()
{
  result = qword_34478;
  if (!qword_34478)
  {
    type metadata accessor for ConfigurePostbacksState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34478);
  }

  return result;
}

__n128 sub_3ED0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3EE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_3F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3F80()
{
  sub_26B8(&qword_34420, &qword_24FE8);
  sub_26B8(&qword_34460, &qword_25040);
  sub_26B8(&qword_34418, &qword_24FE0);
  sub_26B8(&qword_34410, &qword_24FD8);
  sub_26B8(&qword_34408, &qword_24FD0);
  sub_4274(&qword_34438, &qword_34408, &qword_24FD0, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_26B8(&qword_34468, &qword_25048);
  type metadata accessor for ConfigurePostbacksState(255);
  sub_3DA8();
  swift_getOpaqueTypeConformance2();
  sub_3DFC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4180()
{
  result = qword_34480;
  if (!qword_34480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34480);
  }

  return result;
}

unint64_t sub_41DC()
{
  result = qword_34498;
  if (!qword_34498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34498);
  }

  return result;
}

uint64_t sub_4274(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_26B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4308()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_4750;

  return sub_36BC(v0 + 16);
}

uint64_t sub_439C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_43AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_4440;

  return sub_31D8(v0 + 16);
}

uint64_t sub_4440()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_453C()
{
  result = qword_344F8;
  if (!qword_344F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_344F8);
  }

  return result;
}

uint64_t sub_45E4()
{

  return swift_deallocObject();
}

uint64_t sub_465C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1F7C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_46C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1F7C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 sub_4758(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_476C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_47B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v3 = [objc_opt_self() mainBundle];
  }

  sub_24348();
  sub_1F7C(&qword_34520, &qword_25320);
  sub_4274(&qword_34518, &qword_34520, &qword_25320, &protocol conformance descriptor for TupleView<A>);
  return sub_24618();
}

uint64_t sub_49B4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = a3 >> 8;
  v48 = sub_1F7C(&qword_34528, &qword_25328);
  v61 = *(v48 - 8);
  v8 = __chkstk_darwin(v48);
  v57 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v47 = &v42 - v11;
  v12 = __chkstk_darwin(v10);
  v46 = &v42 - v13;
  v14 = __chkstk_darwin(v12);
  v52 = &v42 - v15;
  v16 = __chkstk_darwin(v14);
  v51 = &v42 - v17;
  __chkstk_darwin(v16);
  v63 = &v42 - v18;
  v62 = 0x800000000002B960;
  swift_getKeyPath();
  v90 = a1;
  v91 = a2;
  LOBYTE(v92) = a3;
  BYTE1(v92) = v7;
  v44 = v7;
  LODWORD(v49) = WORD1(a3) & 1;
  BYTE2(v92) = BYTE2(a3) & 1;
  BYTE3(v92) = BYTE3(a3) & 1;
  BYTE4(v92) = BYTE4(a3) & 1;
  sub_1F7C(&qword_34530, &qword_25350);
  sub_24588();

  v59 = v79;
  v60 = v78;
  v58 = v80;
  v56 = 0x800000000002B980;
  swift_getKeyPath();
  *&v50 = a1;
  v90 = a1;
  v91 = a2;
  LOBYTE(v92) = a3;
  BYTE1(v92) = v7;
  LOBYTE(v7) = v49;
  BYTE2(v92) = v49;
  BYTE3(v92) = BYTE3(a3) & 1;
  BYTE4(v92) = BYTE4(a3) & 1;
  sub_24588();

  v54 = v79;
  v55 = v78;
  v53 = v80;
  swift_getKeyPath();
  v90 = a1;
  v91 = a2;
  v19 = a2;
  v45 = a2;
  LOBYTE(v92) = a3;
  LOBYTE(a2) = v44;
  BYTE1(v92) = v44;
  BYTE2(v92) = v7;
  BYTE3(v92) = BYTE3(a3) & 1;
  BYTE4(v92) = BYTE4(a3) & 1;
  sub_24588();

  sub_24568();
  swift_getKeyPath();
  v90 = v50;
  v91 = v19;
  LOBYTE(v92) = a3;
  BYTE1(v92) = a2;
  v20 = a2;
  LOBYTE(v19) = v49;
  BYTE2(v92) = v49;
  BYTE3(v92) = BYTE3(a3) & 1;
  BYTE4(v92) = BYTE4(a3) & 1;
  sub_24588();

  v21 = v51;
  sub_24568();
  swift_getKeyPath();
  v90 = v50;
  v91 = v45;
  LOBYTE(v92) = a3;
  BYTE1(v92) = v20;
  BYTE2(v92) = v19;
  BYTE3(v92) = BYTE3(a3) & 1;
  BYTE4(v92) = BYTE4(a3) & 1;
  sub_24588();

  v22 = v52;
  sub_24568();
  v23 = *(v61 + 16);
  v24 = v46;
  v25 = v48;
  v23(v46, v63, v48);
  v26 = v47;
  v23(v47, v21, v25);
  v23(v57, v22, v25);
  v49 = 0xD000000000000018;
  *&v64 = 0xD000000000000018;
  *(&v64 + 1) = v62;
  v65 = xmmword_24FC0;
  v50 = xmmword_24FC0;
  *&v66 = v60;
  *(&v66 + 1) = v59;
  LOBYTE(v67) = v58;
  v45 = sub_5138;
  *(&v67 + 1) = sub_5138;
  *&v68 = 0;
  v44 = sub_515C;
  *(&v68 + 1) = sub_515C;
  v69 = 0uLL;
  v70 = 0;
  v27 = v42;
  *(v42 + 96) = 0;
  v28 = v69;
  *(v27 + 64) = v68;
  *(v27 + 80) = v28;
  v29 = v65;
  *v27 = v64;
  *(v27 + 16) = v29;
  v30 = v67;
  *(v27 + 32) = v66;
  *(v27 + 48) = v30;
  *&v71 = 0xD000000000000015;
  *(&v71 + 1) = v56;
  v72 = xmmword_24FC0;
  *&v73 = v55;
  *(&v73 + 1) = v54;
  LOBYTE(v74) = v53;
  v43 = sub_5240;
  *(&v74 + 1) = sub_5240;
  *&v75 = 0;
  *(&v75 + 1) = sub_5274;
  v76 = 0uLL;
  v77 = 0;
  v31 = v74;
  *(v27 + 136) = v73;
  v32 = v71;
  *(v27 + 120) = v72;
  *(v27 + 104) = v32;
  v33 = v75;
  v34 = v76;
  *(v27 + 200) = 0;
  *(v27 + 184) = v34;
  *(v27 + 168) = v33;
  *(v27 + 152) = v31;
  v35 = v27;
  v36 = sub_1F7C(&qword_34538, &qword_253D8);
  v37 = v24;
  v23((v35 + v36[16]), v24, v25);
  v38 = v26;
  v23((v35 + v36[20]), v26, v25);
  v39 = v57;
  v23((v35 + v36[24]), v57, v25);
  sub_465C(&v64, &v90, &qword_34540, &qword_253E0);
  sub_465C(&v71, &v90, &qword_34548, &qword_253E8);
  v40 = *(v61 + 8);
  v40(v52, v25);
  v40(v51, v25);
  v40(v63, v25);
  v40(v39, v25);
  v40(v38, v25);
  v40(v37, v25);
  v78 = 0xD000000000000015;
  v79 = v56;
  v80 = v50;
  v81 = v55;
  v82 = v54;
  v83 = v53;
  v84 = v43;
  v85 = 0;
  v86 = sub_5274;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  sub_46C4(&v78, &qword_34548, &qword_253E8);
  v90 = v49;
  v91 = v62;
  v92 = v50;
  v93 = v60;
  v94 = v59;
  v95 = v58;
  v96 = v45;
  v97 = 0;
  v98 = v44;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  return sub_46C4(&v90, &qword_34540, &qword_253E0);
}

unsigned __int8 *sub_5138@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result + 50;
  *(a2 + 8) = 0xE100000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_515C@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

char *sub_5240@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *&aNone_0[8 * v2];
  v4 = qword_25418[v2];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_5274@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_5358(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x800000000002B9C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

void sub_5388(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x800000000002B9A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

double sub_53B8@<D0>(uint64_t a1@<X8>)
{
  result = 3.03668898e-152;
  *a1 = xmmword_25240;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_53D8()
{
  sub_1F7C(&qword_34508, &qword_25318);
  sub_5484();
  return sub_24318();
}

unint64_t sub_5484()
{
  result = qword_34510;
  if (!qword_34510)
  {
    sub_26B8(&qword_34508, &qword_25318);
    sub_4274(&qword_34518, &qword_34520, &qword_25320, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34510);
  }

  return result;
}

uint64_t sub_5560(uint64_t (*a1)(void, void, unint64_t))
{
  v2 = 0x10000;
  if (!*(v1 + 34))
  {
    v2 = 0;
  }

  v3 = *(v1 + 32) | v2;
  v4 = 0x1000000;
  if (!*(v1 + 35))
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if (!*(v1 + 36))
  {
    v5 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), v3 | v4 | v5);
}

uint64_t sub_5600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_565C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_56E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a2;
  v99 = a3;
  v98 = sub_1F7C(&qword_34560, &qword_255C0);
  v97 = *(v98 - 8);
  v4 = __chkstk_darwin(v98);
  v96 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v95 = &v73 - v6;
  v91 = sub_241A8();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_240C8();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_242C8();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1F7C(&qword_345B0, &qword_25610);
  v73 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v73 - v11;
  v13 = sub_1F7C(&qword_345A8, &qword_25608);
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v73 - v14;
  v16 = sub_1F7C(&qword_345A0, &qword_25600);
  v76 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v73 - v17;
  v85 = sub_1F7C(&qword_34598, &qword_255F8);
  v82 = *(v85 - 8);
  __chkstk_darwin(v85);
  v20 = &v73 - v19;
  v87 = sub_1F7C(&qword_34590, &qword_255F0);
  v84 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v73 - v21;
  v100 = sub_1F7C(&qword_34580, &qword_255E0);
  v88 = *(v100 - 8);
  __chkstk_darwin(v100);
  v86 = &v73 - v22;
  v94 = sub_1F7C(&qword_34570, &qword_255D0);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v101 = &v73 - v23;
  v92 = a1;
  v103 = a1;
  sub_1F7C(&qword_345D0, &qword_25618);
  v24 = v16;
  sub_4274(&qword_345D8, &qword_345D0, &qword_25618, &protocol conformance descriptor for TupleView<A>);
  sub_24318();
  v25 = sub_4274(&qword_345B8, &qword_345B0, &qword_25610, &protocol conformance descriptor for List<A, B>);
  sub_24368();
  (*(v73 + 8))(v12, v10);
  v26 = v75;
  sub_242B8();
  v108 = v10;
  v109 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24418();
  (*(v77 + 8))(v26, v78);
  (*(v74 + 8))(v15, v13);
  v28 = v79;
  sub_240B8();
  v108 = v13;
  v109 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v20;
  sub_243B8();
  (*(v80 + 8))(v28, v81);
  (*(v76 + 8))(v18, v24);
  sub_24208();
  v81 = sub_41DC();
  if (!sub_24808())
  {
    v31 = [objc_opt_self() mainBundle];
  }

  v32 = sub_24348();
  v34 = v33;
  v36 = v35;
  v108 = v24;
  v109 = v29;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v83;
  v39 = v85;
  sub_243F8();
  sub_439C(v32, v34, v36 & 1);

  (*(v82 + 8))(v30, v39);
  v40 = v90;
  v41 = v89;
  v42 = v91;
  (*(v90 + 104))(v89, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v91);
  v108 = v39;
  v109 = v37;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v86;
  v45 = v87;
  sub_24448();
  (*(v40 + 8))(v41, v42);
  v46 = (*(v84 + 8))(v38, v45);
  __chkstk_darwin(v46);
  v47 = sub_1F7C(&qword_34588, &qword_255E8);
  v108 = v45;
  v109 = v43;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_4274(&qword_345C0, &qword_34588, &qword_255E8, &protocol conformance descriptor for TupleToolbarContent<A>);
  v50 = v100;
  v92 = v47;
  v91 = v48;
  v90 = v49;
  sub_24498();
  (*(v88 + 8))(v44, v50);
  sub_24208();
  if (!sub_24808())
  {
    v51 = [objc_opt_self() mainBundle];
  }

  v89 = sub_24348();
  v88 = v52;
  LODWORD(v86) = v53;
  v87 = v54;
  v55 = swift_projectBox();
  v56 = v97;
  v57 = *(v97 + 16);
  v58 = v96;
  v59 = v98;
  v57(v96, v55, v98);
  v60 = v95;
  sub_24668();
  v61 = *(v56 + 8);
  v61(v58, v59);
  swift_getKeyPath();
  sub_24688();

  v61(v60, v59);
  v95 = v112;
  LODWORD(v97) = v113;
  v57(v58, v55, v59);
  sub_24658();
  v61(v58, v59);
  v62 = v108;
  swift_getKeyPath();
  v108 = v62;
  sub_3DFC();
  sub_23F28();

  v63 = v62[19];
  v65 = v62[21];
  v64 = v62[22];
  v66 = v62[20];
  v98 = v66;
  v67 = v64;
  v96 = v64;
  sub_D784(v63, v66, v65, v64);

  v108 = v63;
  v109 = v66;
  v110 = v65;
  v111 = v67;
  sub_1F7C(&qword_34578, &qword_255D8);
  v104 = v100;
  v105 = v92;
  v106 = v91;
  v107 = v90;
  swift_getOpaqueTypeConformance2();
  sub_4274(&qword_345C8, &qword_34578, &qword_255D8, &protocol conformance descriptor for Button<A>);
  v68 = v94;
  LOBYTE(v60) = v86;
  v69 = v89;
  v70 = v88;
  v71 = v101;
  sub_24458();

  sub_439C(v69, v70, v60 & 1);

  sub_D844(v63, v98, v65, v96);
  return (*(v93 + 8))(v71, v68);
}

uint64_t sub_6664@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v85 = a2;
  v107 = sub_1F7C(&qword_34488, ",7");
  v86 = *(v107 - 8);
  v3 = __chkstk_darwin(v107);
  v106 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v96 = &v82 - v5;
  v105 = sub_1F7C(&qword_34680, &qword_25750);
  v111 = *(v105 - 8);
  v6 = __chkstk_darwin(v105);
  v104 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v82 - v8;
  v97 = sub_1F7C(&qword_34688, &qword_25758);
  v110 = *(v97 - 8);
  v10 = __chkstk_darwin(v97);
  v103 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v82 - v12;
  v102 = sub_1F7C(&qword_34690, &qword_25760);
  v109 = *(v102 - 8);
  v14 = __chkstk_darwin(v102);
  v101 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v100 = &v82 - v16;
  v17 = sub_24178();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1F7C(&qword_34698, &qword_25768);
  v92 = *(v93 - 8);
  v21 = __chkstk_darwin(v93);
  v91 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v99 = &v82 - v23;
  v124 = *(a1 + 8);
  v108 = a1;
  v24 = *a1;
  v123 = v24;
  LODWORD(v90) = v124;
  v95 = v9;
  v94 = v13;
  v84 = v17;
  v83 = v18;
  if (v124 == 1)
  {
    v119 = v24;
  }

  else
  {

    sub_247F8();
    v25 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v123, &qword_34668, &qword_256D8);
    (*(v18 + 8))(v20, v17);
  }

  v89 = sub_1F7C(&qword_34560, &qword_255C0);
  swift_allocBox();
  v26 = type metadata accessor for ConfigurePostbacksState(0);
  v27 = sub_3DFC();
  v88 = v26;
  v87 = v27;
  v28 = sub_24678();
  __chkstk_darwin(v28);
  sub_24208();
  v98 = sub_41DC();
  if (!sub_24808())
  {
    v29 = [objc_opt_self() mainBundle];
  }

  v119 = sub_24348();
  v120 = v30;
  v121 = v31 & 1;
  v122 = v32;
  sub_9B74(v116);
  sub_1F7C(&qword_346A0, &qword_25770);
  sub_4274(&qword_346A8, &qword_346A0, &qword_25770, &protocol conformance descriptor for TupleView<A>);
  sub_24628();

  if (v90)
  {
    v119 = v24;
  }

  else
  {

    sub_247F8();
    v33 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v123, &qword_34668, &qword_256D8);
    (*(v83 + 8))(v20, v84);
  }

  swift_allocBox();
  v34 = sub_24678();
  __chkstk_darwin(v34);
  sub_24208();
  if (!sub_24808())
  {
    v35 = [objc_opt_self() mainBundle];
  }

  v119 = sub_24348();
  v120 = v36;
  v121 = v37 & 1;
  v122 = v38;
  sub_1F7C(&qword_346B0, &qword_25778);
  sub_4274(&qword_346B8, &qword_346B0, &qword_25778, &protocol conformance descriptor for TupleView<A>);
  sub_24618();

  if (v90)
  {
    v119 = v24;
  }

  else
  {

    sub_247F8();
    v39 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v123, &qword_34668, &qword_256D8);
    (*(v83 + 8))(v20, v84);
  }

  swift_allocBox();
  v40 = sub_24678();
  v90 = &v82;
  __chkstk_darwin(v40);
  sub_24208();
  if (!sub_24808())
  {
    v41 = [objc_opt_self() mainBundle];
  }

  v119 = sub_24348();
  v120 = v42;
  v121 = v43 & 1;
  v122 = v44;
  sub_24208();
  if (!sub_24808())
  {
    v45 = [objc_opt_self() mainBundle];
  }

  v116[0] = sub_24348();
  v116[1] = v46;
  v117 = v47 & 1;
  v118 = v48;
  sub_1F7C(&qword_346C0, &unk_25780);
  v49 = sub_26B8(&qword_344E8, &qword_25198);
  v50 = sub_26B8(&qword_346C8, &unk_25790);
  v51 = sub_26B8(&qword_344E0, &qword_25190);
  v52 = sub_26B8(&qword_344D8, &unk_257A0);
  v53 = sub_453C();
  v112 = &type metadata for LabeledTextField;
  v113 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112 = v52;
  v113 = OpaqueTypeConformance2;
  v55 = swift_getOpaqueTypeConformance2();
  v112 = v51;
  v113 = v55;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = sub_DCF0();
  v112 = v49;
  v113 = v50;
  v114 = v56;
  v115 = v57;
  swift_getOpaqueTypeConformance2();
  v58 = v94;
  sub_24628();

  v59 = v95;
  v60 = sub_78B4(v95);
  __chkstk_darwin(v60);
  sub_24208();
  if (!sub_24808())
  {
    v61 = [objc_opt_self() mainBundle];
  }

  v119 = sub_24348();
  v120 = v62;
  v121 = v63 & 1;
  v122 = v64;
  sub_1F7C(&qword_344B0, &qword_25148);
  sub_4274(&qword_344B8, &qword_344B0, &qword_25148, &unk_27BA8);
  v65 = v96;
  sub_24638();
  v88 = *(v92 + 16);
  v66 = v91;
  v67 = v93;
  v88(v91, v99, v93);
  v108 = *(v109 + 16);
  v108(v101, v100, v102);
  v98 = *(v110 + 16);
  v98(v103, v58, v97);
  v90 = *(v111 + 16);
  (v90)(v104, v59, v105);
  v68 = v86;
  v89 = *(v86 + 16);
  v89(v106, v65, v107);
  v69 = v85;
  v88(v85, v66, v67);
  v70 = sub_1F7C(&qword_346D8, &qword_257B0);
  v108(&v69[v70[12]], v101, v102);
  v71 = v97;
  v98(&v69[v70[16]], v103, v97);
  v72 = v105;
  (v90)(&v69[v70[20]], v104, v105);
  v73 = v107;
  v89(&v69[v70[24]], v106, v107);
  v74 = *(v68 + 8);
  v74(v96, v73);
  v75 = *(v111 + 8);
  v111 += 8;
  v75(v95, v72);
  v76 = *(v110 + 8);
  v110 += 8;
  v76(v94, v71);
  v77 = *(v109 + 8);
  v109 += 8;
  v78 = v102;
  v77(v100, v102);
  v79 = *(v92 + 8);
  v80 = v93;
  v79(v99, v93);
  v74(v106, v107);
  v75(v104, v105);
  v76(v103, v71);
  v77(v101, v78);
  return (v79)(v91, v80);
}

uint64_t sub_78B4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_24178();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1F7C(&qword_34560, &qword_255C0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - v11;
  __chkstk_darwin(v10);
  v29 = &v26 - v13;
  v40 = *(v1 + 8);
  v39 = *v1;
  v14 = v40;

  if ((v14 & 1) == 0)
  {
    sub_247F8();
    v15 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v39, &qword_34668, &qword_256D8);
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for ConfigurePostbacksState(0);
  sub_3DFC();
  sub_24678();
  sub_24668();
  swift_getKeyPath();
  sub_24688();

  v16 = *(v7 + 8);
  v16(v12, v6);
  v30 = v41;
  v31 = v42;
  v32 = v43;
  sub_1F7C(&qword_346E0, &qword_257F0);
  sub_4274(&qword_346E8, &qword_346F0, &qword_257F8, &protocol conformance descriptor for [A]);
  sub_245A8();
  v18 = v37;
  v17 = v38;

  v19 = v27;
  sub_24668();
  swift_getKeyPath();
  sub_24688();

  v26 = v7 + 8;
  v27 = v16;
  v16(v19, v6);
  v41 = v18;
  v42 = v17;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  sub_DE58(&v41);

  __chkstk_darwin(v20);
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v21 = [objc_opt_self() mainBundle];
  }

  v30 = sub_24348();
  v31 = v22;
  LOBYTE(v32) = v23 & 1;
  v33 = v24;
  sub_1F7C(&qword_346F8, &qword_25800);
  sub_E3E8();
  sub_24618();

  return (v27)(v29, v6);
}

uint64_t sub_7DD0()
{
  v0 = sub_1F7C(&qword_345E0, &qword_25670);
  __chkstk_darwin(v0);
  v2 = &v13 - v1;
  v3 = sub_1F7C(&qword_345E8, &qword_25678);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_1F7C(&qword_345F0, &qword_25680);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_8000(&v13 - v9);
  sub_82BC(v6);
  v11 = *(v0 + 48);
  (*(v8 + 16))(v2, v10, v7);
  (*(v4 + 16))(&v2[v11], v6, v3);
  sub_24238();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_8000@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v16[0] = sub_1F7C(&qword_34678, &qword_25718);
  __chkstk_darwin(v16[0]);
  v3 = v16 - v2;
  v4 = sub_24288();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1F7C(&qword_34608, &qword_25698);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v16 - v10;
  sub_24268();
  v18 = v1;
  sub_1F7C(&qword_34578, &qword_255D8);
  sub_4274(&qword_345C8, &qword_34578, &qword_255D8, &protocol conformance descriptor for Button<A>);
  sub_240D8();
  sub_24258();
  v17 = v1;
  sub_240D8();
  v12 = *(v16[0] + 48);
  v13 = *(v6 + 16);
  v13(v3, v11, v5);
  v13(&v3[v12], v9, v5);
  sub_24238();
  v14 = *(v6 + 8);
  v14(v9, v5);
  return (v14)(v11, v5);
}

uint64_t sub_82BC@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v56 = sub_1F7C(&qword_345F8, &qword_25688);
  __chkstk_darwin(v56);
  v55 = v50 - v2;
  v63 = sub_1F7C(&qword_34600, &qword_25690);
  v57 = *(v63 - 8);
  __chkstk_darwin(v63);
  v53 = v50 - v3;
  v59 = sub_1F7C(&qword_34608, &qword_25698);
  v52 = *(v59 - 8);
  __chkstk_darwin(v59);
  v51 = v50 - v4;
  v5 = sub_1F7C(&qword_34610, &qword_256A0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = v50 - v9;
  v10 = sub_1F7C(&qword_34618, &qword_256A8);
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v12 = v50 - v11;
  v13 = sub_24288();
  __chkstk_darwin(v13 - 8);
  v54 = sub_1F7C(&qword_34620, &qword_256B0);
  v14 = *(v54 - 8);
  v15 = __chkstk_darwin(v54);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v50 - v18;
  sub_24278();
  v66 = v1;
  sub_1F7C(&qword_34628, &qword_256B8);
  sub_D8B8();
  v20 = v19;
  sub_240D8();
  sub_24278();
  v65 = v1;
  v21 = v17;
  sub_240D8();
  sub_24278();
  v58 = v12;
  sub_240D8();
  v68 = *(v1 + 16);
  v69 = *(v1 + 32);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v22 = 2;
  v23 = &byte_31060;
  do
  {
    v25 = *v23++;
    v24 = v25;
    if (v25 == 5)
    {
      if (v67 == 5)
      {
LABEL_6:
        v26 = sub_24278();
        v50[1] = v50;
        __chkstk_darwin(v26);
        v50[-2] = v1;
        sub_1F7C(&qword_34578, &qword_255D8);
        v27 = v59;
        sub_4274(&qword_345C8, &qword_34578, &qword_255D8, &protocol conformance descriptor for Button<A>);
        v28 = v51;
        sub_240D8();
        v29 = sub_4274(&qword_34660, &qword_34608, &qword_25698, &protocol conformance descriptor for ToolbarItem<A, B>);
        v30 = v53;
        v31 = v27;
        sub_24298();
        v32 = v57;
        v33 = v63;
        (*(v57 + 16))(v8, v30, v63);
        (*(v32 + 56))(v8, 0, 1, v33);
        *&v68 = v31;
        *(&v68 + 1) = v29;
        swift_getOpaqueTypeConformance2();
        sub_242A8();
        sub_D9A4(v8);
        (*(v32 + 8))(v30, v33);
        (*(v52 + 8))(v28, v31);
        goto LABEL_8;
      }
    }

    else if (v24 == v67)
    {
      goto LABEL_6;
    }

    --v22;
  }

  while (v22);
  (*(v57 + 56))(v8, 1, 1, v63);
  v34 = sub_4274(&qword_34660, &qword_34608, &qword_25698, &protocol conformance descriptor for ToolbarItem<A, B>);
  *&v68 = v59;
  *(&v68 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  sub_242A8();
  sub_D9A4(v8);
LABEL_8:
  v35 = v56[12];
  v36 = v56[16];
  v63 = v56[20];
  v37 = v14;
  v38 = *(v14 + 16);
  v39 = v55;
  v40 = v20;
  v41 = v20;
  v42 = v54;
  v38(v55, v41, v54);
  v38(&v39[v35], v21, v42);
  v44 = v60;
  v43 = v61;
  v45 = &v39[v36];
  v46 = v58;
  (*(v60 + 16))(v45, v58, v61);
  v47 = v64;
  sub_DA0C(v64, &v39[v63]);
  sub_24238();
  sub_D9A4(v47);
  (*(v44 + 8))(v46, v43);
  v48 = *(v37 + 8);
  v48(v21, v42);
  return (v48)(v40, v42);
}

uint64_t sub_8B08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_8BA8(uint64_t a1)
{
  v1 = sub_1F7C(&qword_34560, &qword_255C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_24658();
  (*(v2 + 8))(v4, v1);
  v6 = v10;
  if (*(v10 + 144) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v9 - 2) = v6;
    *(&v9 - 8) = 0;
    v10 = v6;
    sub_3DFC();
    sub_23F18();
  }

  else
  {
    *(v10 + 144) = 0;
  }

  sub_12B44(0, 0, 0, 0);
}

uint64_t sub_8D90@<X0>(uint64_t a2@<X8>)
{
  sub_41DC();

  if (!sub_24808())
  {
    v3 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_8E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a2;
  v48 = a1;
  v55 = a3;
  v3 = sub_1F7C(&qword_344D0, &unk_25180);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_1F7C(&qword_34560, &qword_255C0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v43 = sub_1F7C(&qword_344D8, &unk_257A0);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v14 = &v42 - v13;
  v46 = sub_1F7C(&qword_344E0, &qword_25190);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v16 = &v42 - v15;
  v50 = sub_1F7C(&qword_344E8, &qword_25198);
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v42 = &v42 - v17;
  v53 = sub_1F7C(&qword_346C0, &unk_25780);
  v51 = *(v53 - 8);
  v18 = __chkstk_darwin(v53);
  v49 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v45 = &v42 - v20;
  v21 = swift_projectBox();
  (*(v7 + 16))(v10, v21, v6);
  sub_24668();
  v22 = *(v7 + 8);
  v22(v10, v6);
  swift_getKeyPath();
  sub_24688();

  v22(v12, v6);
  v65[1] = xmmword_24FC0;
  v65[2] = v59;
  v65[3] = v60;
  *&v66 = 0xD000000000000013;
  *(&v66 + 1) = 0x800000000002BD90;
  v67 = xmmword_24FC0;
  v61 = v59;
  v62 = v60;
  v63 = v66;
  v64 = xmmword_24FC0;
  v65[0] = xmmword_25430;
  v59 = xmmword_25430;
  v60 = xmmword_24FC0;
  v23 = sub_453C();
  sub_24408();
  sub_4590(v65);
  sub_242E8();
  v24 = sub_242F8();
  (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
  *&v59 = &type metadata for LabeledTextField;
  *(&v59 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v43;
  sub_24438();
  sub_46C4(v5, &qword_344D0, &unk_25180);
  (*(v44 + 8))(v14, v26);
  *&v59 = v26;
  *(&v59 + 1) = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v42;
  v29 = v46;
  sub_243C8();
  (*(v47 + 8))(v16, v29);
  v59 = *(v54 + 16);
  LOBYTE(v60) = *(v54 + 32);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24078();
  v59 = v57;
  LOBYTE(v60) = v58;
  v56 = 0;
  sub_1F7C(&qword_346C8, &unk_25790);
  *&v57 = v29;
  *(&v57 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_DCF0();
  v30 = v45;
  v31 = v50;
  sub_24478();

  (*(v52 + 8))(v28, v31);
  LOBYTE(v57) = 0;
  v32 = v48;

  sub_244E8();
  LOBYTE(v10) = v59;
  v33 = *(&v59 + 1);
  v34 = v51;
  v35 = *(v51 + 16);
  v36 = v49;
  v37 = v53;
  v35(v49, v30, v53);
  v38 = v55;
  v35(v55, v36, v37);
  v39 = &v38[*(sub_1F7C(&qword_34768, &unk_259F0) + 48)];
  *v39 = &unk_259E8;
  *(v39 + 1) = v32;
  *(v39 + 2) = sub_9A90;
  *(v39 + 3) = 0;
  v39[32] = v10;
  *(v39 + 5) = v33;
  v40 = *(v34 + 8);

  v40(v30, v37);

  return (v40)(v36, v37);
}

uint64_t sub_96F8(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1F7C(&qword_34560, &qword_255C0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_247B8();
  v1[7] = sub_247A8();
  v4 = sub_24798();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_97F8, v4, v3);
}

uint64_t sub_97F8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_projectBox();
  (*(v2 + 16))(v1, v4, v3);
  sub_24658();
  (*(v2 + 8))(v1, v3);
  v0[10] = v0[2];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_98E4;

  return sub_F988();
}

uint64_t sub_98E4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_9A28, v3, v2);
}

uint64_t sub_9A28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9A90@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_9B74@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1F7C(&qword_34560, &qword_255C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = sub_241F8();
  __chkstk_darwin(v7 - 8);
  sub_241E8();
  v19._countAndFlagsBits = 0x100000000000003BLL;
  v19._object = 0x800000000002BD30;
  sub_241D8(v19);
  v8 = swift_projectBox();
  (*(v4 + 16))(v6, v8, v3);
  sub_24658();
  (*(v4 + 8))(v6, v3);
  v9 = v18;
  swift_getKeyPath();
  v18 = v9;
  sub_3DFC();
  sub_23F28();

  v10 = *(v9 + 16);
  v11 = *(v9 + 24);

  v20._countAndFlagsBits = v10;
  v20._object = v11;
  sub_241C8(v20);

  v21._object = 0x800000000002BD70;
  v21._countAndFlagsBits = 0x1000000000000010;
  sub_241D8(v21);
  sub_24218();
  sub_41DC();
  if (!sub_24808())
  {
    v12 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_9E2C@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v128 = a2;
  v117 = a3;
  v3 = sub_1F7C(&qword_34738, &qword_25870);
  v4 = *(v3 - 8);
  v113 = v3;
  v114 = v4;
  __chkstk_darwin(v3);
  v112 = &v97 - v5;
  v116 = sub_1F7C(&qword_34740, &qword_25878);
  v133 = *(v116 - 8);
  v6 = __chkstk_darwin(v116);
  v131 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v142 = &v97 - v8;
  v9 = sub_1F7C(&qword_344D0, &unk_25180);
  __chkstk_darwin(v9 - 8);
  v126 = &v97 - v10;
  v11 = sub_1F7C(&qword_34560, &qword_255C0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v97 - v16;
  v18 = sub_1F7C(&qword_344D8, &unk_257A0);
  v138 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v97 - v19;
  v120 = sub_1F7C(&qword_344E0, &qword_25190);
  v137 = *(v120 - 8);
  __chkstk_darwin(v120);
  v124 = &v97 - v21;
  *&v121 = sub_1F7C(&qword_344E8, &qword_25198);
  v136 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = (&v97 - v22);
  v115 = sub_1F7C(&qword_346C0, &unk_25780);
  v132 = *(v115 - 8);
  v23 = __chkstk_darwin(v115);
  v130 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v129 = &v97 - v26;
  v27 = __chkstk_darwin(v25);
  v140 = &v97 - v28;
  __chkstk_darwin(v27);
  v141 = &v97 - v29;
  v143 = swift_projectBox();
  v30 = *(v12 + 16);
  v127 = (v12 + 16);
  v139 = v30;
  v30(v15, v143, v11);
  sub_24668();
  v31 = *(v12 + 8);
  v31(v15, v11);
  v134 = (v12 + 8);
  v135 = v31;
  swift_getKeyPath();
  v118 = v17;
  sub_24688();

  v31(v17, v11);
  v144 = xmmword_24FC0;
  v147[0] = xmmword_25440;
  v147[1] = xmmword_24FC0;
  v147[2] = v197;
  v147[3] = v198;
  *&v148 = 0xD000000000000012;
  *(&v148 + 1) = 0x800000000002BC00;
  v149 = xmmword_24FC0;
  v199 = v197;
  v200 = v198;
  v201 = v148;
  v202 = xmmword_24FC0;
  v197 = xmmword_25440;
  v198 = xmmword_24FC0;
  v32 = sub_453C();
  v100 = v32;
  sub_24408();
  sub_4590(v147);
  v33 = v126;
  sub_242E8();
  v110 = sub_242F8();
  v34 = *(v110 - 8);
  v109 = *(v34 + 56);
  v111 = v34 + 56;
  v109(v33, 0, 1, v110);
  *&v197 = &type metadata for LabeledTextField;
  *(&v197 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v124;
  v37 = OpaqueTypeConformance2;
  v106 = OpaqueTypeConformance2;
  v104 = v20;
  sub_24438();
  sub_46C4(v33, &qword_344D0, &unk_25180);
  v38 = *(v138 + 8);
  v138 += 8;
  v108 = v38;
  v105 = v18;
  v38(v20, v18);
  *&v197 = v18;
  *(&v197 + 1) = v37;
  v39 = swift_getOpaqueTypeConformance2();
  v41 = v119;
  v40 = v120;
  v42 = v39;
  v101 = v39;
  sub_243C8();
  v43 = *(v137 + 8);
  v137 += 8;
  v107 = v43;
  v43(v36, v40);
  v145 = *(v128 + 16);
  v146 = *(v128 + 32);
  v197 = *(v128 + 16);
  LOBYTE(v198) = *(v128 + 32);
  v125 = sub_1F7C(&qword_34658, &qword_256D0);
  sub_24078();
  v197 = v185;
  LOBYTE(v198) = v186;
  LOBYTE(v173[0]) = 1;
  v122 = sub_1F7C(&qword_346C8, &unk_25790);
  *&v185 = v40;
  *(&v185 + 1) = v42;
  v99 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v103 = swift_getOpaqueTypeConformance2();
  v123 = sub_DCF0();
  v44 = v121;
  sub_24478();

  v45 = *(v136 + 8);
  v136 += 8;
  v102 = v45;
  v45(v41, v44);
  v46 = v15;
  v98 = v15;
  v47 = v143;
  v139(v15, v143, v11);
  v48 = v118;
  sub_24668();
  v49 = v135;
  v135(v46, v11);
  swift_getKeyPath();
  sub_24688();

  v49(v48, v11);
  v50 = v197;
  v51 = v198;
  *&v197 = 0xD000000000000011;
  *(&v197 + 1) = 0x800000000002BC20;
  v198 = v144;
  v199 = v50;
  v200 = v51;
  v201 = xmmword_25450;
  v202 = v144;
  v52 = v112;
  v53 = v100;
  sub_243C8();
  v150[2] = v199;
  v150[3] = v200;
  v150[4] = v201;
  v150[5] = v202;
  v150[0] = v197;
  v150[1] = v198;
  sub_4590(v150);
  v197 = *(v128 + 16);
  LOBYTE(v198) = *(v128 + 32);
  sub_24078();
  v197 = v185;
  LOBYTE(v198) = v186;
  LOBYTE(v173[0]) = 2;
  *&v185 = &type metadata for LabeledTextField;
  *(&v185 + 1) = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v113;
  sub_24478();

  (*(v114 + 8))(v52, v54);
  v55 = v98;
  v139(v98, v47, v11);
  sub_24668();
  v56 = v135;
  v135(v55, v11);
  swift_getKeyPath();
  sub_24688();

  v56(v48, v11);
  v151[0] = xmmword_25240;
  v151[1] = v144;
  v151[2] = v197;
  v151[3] = v198;
  v151[4] = xmmword_25460;
  v151[5] = v144;
  v199 = v197;
  v200 = v198;
  v201 = xmmword_25460;
  v202 = v144;
  v197 = xmmword_25240;
  v198 = v144;
  v57 = v104;
  sub_24408();
  sub_4590(v151);
  v58 = v126;
  sub_242D8();
  v109(v58, 0, 1, v110);
  v59 = v124;
  v60 = v105;
  sub_24438();
  sub_46C4(v58, &qword_344D0, &unk_25180);
  v108(v57, v60);
  v62 = v119;
  v61 = v120;
  sub_243C8();
  v107(v59, v61);
  v197 = v145;
  LOBYTE(v198) = v146;
  sub_24078();
  v197 = v185;
  LOBYTE(v198) = v186;
  LOBYTE(v185) = 3;
  v63 = v121;
  sub_24478();

  v102(v62, v63);
  v138 = 0x800000000002BC40;
  v64 = v139;
  v139(v55, v143, v11);
  v65 = v118;
  sub_24668();
  v66 = v135;
  v135(v55, v11);
  swift_getKeyPath();
  sub_24688();

  v66(v65, v11);
  v136 = *(&v197 + 1);
  v137 = v197;
  LODWORD(v128) = v198;
  v64(v55, v143, v11);
  sub_24668();
  v66(v55, v11);
  swift_getKeyPath();
  sub_24688();

  v66(v65, v11);
  v125 = *(&v197 + 1);
  v126 = v197;
  LODWORD(v124) = v198;
  v123 = 0x800000000002BC60;
  v64(v55, v143, v11);
  sub_24668();
  v66(v55, v11);
  swift_getKeyPath();
  sub_24688();

  v66(v65, v11);
  v139 = *(&v197 + 1);
  v143 = v197;
  LODWORD(v135) = v198;
  v67 = *(v132 + 16);
  v68 = v129;
  v69 = v115;
  v67(v129, v141, v115);
  v134 = *(v133 + 16);
  v70 = v131;
  v71 = v116;
  v134(v131, v142, v116);
  v72 = v130;
  v67(v130, v140, v69);
  v73 = v117;
  v74 = v68;
  v75 = v69;
  v67(v117, v74, v69);
  v76 = sub_1F7C(&qword_34748, &qword_25970);
  v134(&v73[v76[12]], v70, v71);
  v67(&v73[v76[16]], v72, v75);
  v77 = &v73[v76[20]];
  v134 = 0xD000000000000010;
  *&v155[0] = 0xD000000000000010;
  *(&v155[0] + 1) = v138;
  v78 = v144;
  v155[1] = v144;
  *&v156 = v137;
  *(&v156 + 1) = v136;
  LOBYTE(v157) = v128;
  *(&v157 + 1) = *v152;
  DWORD1(v157) = *&v152[3];
  v127 = sub_B1A4;
  *(&v157 + 1) = sub_B1A4;
  *&v158 = 0;
  v122 = sub_B1E8;
  *(&v158 + 1) = sub_B1E8;
  v159 = 0uLL;
  v160 = 0;
  v79 = v144;
  v80 = v156;
  *v77 = v155[0];
  *(v77 + 1) = v79;
  v81 = v157;
  v82 = v158;
  v83 = v159;
  *(v77 + 12) = 0;
  *(v77 + 4) = v82;
  *(v77 + 5) = v83;
  *(v77 + 2) = v80;
  *(v77 + 3) = v81;
  v84 = &v73[v76[24]];
  v121 = xmmword_25470;
  v161[0] = xmmword_25470;
  v161[1] = v78;
  *&v162 = v126;
  *(&v162 + 1) = v125;
  LOBYTE(v163) = v124;
  DWORD1(v163) = *&v153[3];
  *(&v163 + 1) = *v153;
  v120 = sub_B2CC;
  *(&v163 + 1) = sub_B2CC;
  *&v164 = 0;
  v119 = sub_B300;
  v166 = 0;
  *(&v164 + 1) = sub_B300;
  v165 = 0uLL;
  *v84 = xmmword_25470;
  *(v84 + 1) = v78;
  v85 = v162;
  v86 = v163;
  v87 = v164;
  v88 = v165;
  *(v84 + 12) = 0;
  *(v84 + 4) = v87;
  *(v84 + 5) = v88;
  *(v84 + 2) = v85;
  *(v84 + 3) = v86;
  v89 = &v73[v76[28]];
  *&v167[0] = 0xD000000000000012;
  *(&v167[0] + 1) = v123;
  v167[1] = v78;
  *&v168 = v143;
  *(&v168 + 1) = v139;
  LOBYTE(v169) = v135;
  DWORD1(v169) = *&v154[3];
  *(&v169 + 1) = *v154;
  *(&v169 + 1) = sub_B3E4;
  *&v170 = 0;
  *(&v170 + 1) = sub_B414;
  v171 = 0uLL;
  v172 = 0;
  *v89 = v167[0];
  *(v89 + 1) = v78;
  v90 = v168;
  v91 = v169;
  v92 = v170;
  v93 = v171;
  *(v89 + 12) = 0;
  *(v89 + 4) = v92;
  *(v89 + 5) = v93;
  *(v89 + 2) = v90;
  *(v89 + 3) = v91;
  sub_465C(v155, &v197, &qword_34750, &qword_25978);
  sub_465C(v161, &v197, &qword_34758, &qword_25980);
  sub_465C(v167, &v197, &qword_34760, &qword_25988);
  v94 = *(v132 + 8);
  v94(v140, v75);
  v95 = *(v133 + 8);
  v95(v142, v71);
  v94(v141, v75);
  v173[0] = 0xD000000000000012;
  v173[1] = v123;
  v174 = v144;
  v175 = v143;
  v176 = v139;
  v177 = v135;
  *v178 = *v154;
  *&v178[3] = *&v154[3];
  v179 = sub_B3E4;
  v180 = 0;
  v181 = sub_B414;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  sub_46C4(v173, &qword_34760, &qword_25988);
  v185 = v121;
  v186 = v144;
  v187 = v126;
  v188 = v125;
  v189 = v124;
  *v190 = *v153;
  *&v190[3] = *&v153[3];
  v191 = v120;
  v192 = 0;
  v193 = v119;
  v194 = 0;
  v195 = 0;
  v196 = 0;
  sub_46C4(&v185, &qword_34758, &qword_25980);
  *&v197 = v134;
  *(&v197 + 1) = v138;
  v198 = v144;
  *&v199 = v137;
  *(&v199 + 1) = v136;
  LOBYTE(v200) = v128;
  *(&v200 + 1) = *v152;
  DWORD1(v200) = *&v152[3];
  *(&v200 + 1) = v127;
  *&v201 = 0;
  *(&v201 + 1) = v122;
  v202 = 0uLL;
  v203 = 0;
  sub_46C4(&v197, &qword_34750, &qword_25978);
  v94(v130, v75);
  v95(v131, v71);
  return (v94)(v129, v75);
}

_BYTE *sub_B1A4@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2003134806;
  if (*result)
  {
    v2 = 0x6B63696C43;
  }

  v3 = 0xE400000000000000;
  if (*result)
  {
    v3 = 0xE500000000000000;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_B1E8@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

char *sub_B2CC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *&aDownloadredown[8 * v2];
  v4 = *&aDownloadredown[8 * v2 + 24];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_B300@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

_BYTE *sub_B3E4@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 49;
  if (*result)
  {
    v2 = 51;
  }

  *a2 = v2;
  *(a2 + 8) = 0xE100000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_B414@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_B4F8(uint64_t a1)
{
  v7 = a1;
  KeyPath = swift_getKeyPath();

  v2 = sub_1F7C(&qword_34718, &qword_25830);
  v3 = sub_1F7C(&qword_34710, &qword_25808);
  v4 = sub_4274(&qword_34720, &qword_34718, &qword_25830, &protocol conformance descriptor for [A]);
  v5 = sub_4274(&qword_34708, &qword_34710, &qword_25808, &protocol conformance descriptor for NavigationLink<A, B>);
  return sub_245F8(&v7, KeyPath, sub_B6CC, 0, v2, v3, v4, &protocol witness table for Int, v5);
}

uint64_t sub_B62C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v3._countAndFlagsBits = sub_24948();
    sub_246F8(v3);

    *a2 = 0x6B63616274736F50;
    *(a2 + 8) = 0xE900000000000020;
    *(a2 + 16) = 0;
    *(a2 + 24) = &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_B6CC(uint64_t a1)
{
  sub_E4A0();

  return sub_24108();
}

uint64_t sub_B784@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  v3 = sub_1F7C(&qword_344D0, &unk_25180);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_1F7C(&qword_34560, &qword_255C0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v31 = sub_1F7C(&qword_344D8, &unk_257A0);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v14 = &v29 - v13;
  v33 = sub_1F7C(&qword_344E0, &qword_25190);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v16 = &v29 - v15;
  v35 = sub_1F7C(&qword_344E8, &qword_25198);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = &v29 - v17;
  v18 = swift_projectBox();
  (*(v7 + 16))(v10, v18, v6);
  sub_24668();
  v19 = *(v7 + 8);
  v19(v10, v6);
  swift_getKeyPath();
  sub_24688();

  v19(v12, v6);
  v48[1] = xmmword_24FC0;
  v48[2] = v42;
  v48[3] = v43;
  v48[4] = xmmword_25490;
  v48[5] = xmmword_24FC0;
  v44 = v42;
  v45 = v43;
  v46 = xmmword_25490;
  v47 = xmmword_24FC0;
  v48[0] = xmmword_25480;
  v42 = xmmword_25480;
  v43 = xmmword_24FC0;
  v20 = sub_453C();
  sub_24408();
  sub_4590(v48);
  sub_242E8();
  v21 = sub_242F8();
  (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
  *&v42 = &type metadata for LabeledTextField;
  *(&v42 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v31;
  sub_24438();
  sub_46C4(v5, &qword_344D0, &unk_25180);
  (*(v32 + 8))(v14, v23);
  *&v42 = v23;
  *(&v42 + 1) = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v30;
  v26 = v33;
  sub_243C8();
  (*(v34 + 8))(v16, v26);
  v42 = *(v37 + 16);
  LOBYTE(v43) = *(v37 + 32);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24078();
  v42 = v40;
  LOBYTE(v43) = v41;
  v39 = 4;
  sub_1F7C(&qword_346C8, &unk_25790);
  *&v40 = v26;
  *(&v40 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  sub_DCF0();
  v27 = v35;
  sub_24478();

  return (*(v36 + 8))(v25, v27);
}

void *sub_BE10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  v12 = *(a1 + 1);
  v13 = *(a1 + 32);
  v4 = swift_allocObject();
  v5 = *(a1 + 1);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v11 = 0;
  sub_465C(&v14, v9, &qword_34668, &qword_256D8);
  sub_465C(&v12, v9, &qword_34658, &qword_256D0);
  result = sub_244E8();
  v7 = v9[0];
  v8 = v10;
  *a2 = &unk_257C0;
  *(a2 + 8) = v4;
  *(a2 + 16) = sub_C318;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_BF14(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_24178();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_247B8();
  v1[9] = sub_247A8();
  v4 = sub_24798();
  v1[10] = v4;
  v1[11] = v3;

  return _swift_task_switch(sub_C008, v4, v3);
}

uint64_t sub_C008()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 8);
  v3 = *v1;
  *(v0 + 16) = *v1;
  *(v0 + 24) = v2;
  v4 = v2;

  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);
    sub_247F8();
    v8 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(v0 + 16, &qword_34668, &qword_256D8);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 32);
  }

  *(v0 + 96) = v3;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_C16C;

  return sub_113E8();
}

uint64_t sub_C16C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_C2B0, v3, v2);
}

uint64_t sub_C2B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_C318@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_C3FC(uint64_t *a1)
{
  v2 = sub_24178();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v6 = *a1;
  v13 = v6;
  v7 = v14;

  if ((v7 & 1) == 0)
  {
    sub_247F8();
    v8 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v13, &qword_34668, &qword_256D8);
    (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (*(v6 + 33))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v11 - 2) = v6;
    *(&v11 - 8) = 0;
    v12 = v6;
    sub_3DFC();
    sub_23F18();
  }

  else
  {
    *(v6 + 33) = 0;
  }
}

uint64_t sub_C620(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v9 = *(a1 + 1);
  v10 = *(a1 + 32);
  v5 = swift_allocObject();
  v6 = *(a1 + 1);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  sub_465C(&v11, v8, &qword_34668, &qword_256D8);
  sub_465C(&v9, v8, &qword_34658, &qword_256D0);
  return sub_24528();
}

uint64_t sub_C708(uint64_t *a1)
{
  v2 = sub_24178();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  v12 = *a1;
  v6 = v13;

  if ((v6 & 1) == 0)
  {
    sub_247F8();
    v7 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v12, &qword_34668, &qword_256D8);
    (*(v3 + 8))(v5, v2);
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_246A8();
  [v8 removeObjectForKey:v9];

  sub_12E10(1);
}

uint64_t sub_C8E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1F7C(&qword_34640, &qword_256C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6];
  v20 = *a1;
  v21 = *(a1 + 8);
  v18 = *(a1 + 1);
  v19 = *(a1 + 32);
  v8 = swift_allocObject();
  v9 = *(a1 + 1);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  sub_465C(&v20, &v16, &qword_34668, &qword_256D8);
  sub_465C(&v18, &v16, &qword_34658, &qword_256D0);
  sub_24528();
  v16 = v18;
  v17 = v19;
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v10 = 0x21u >> v15[15];
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10 & 1;
  (*(v5 + 32))(a2, v7, v4);
  result = sub_1F7C(&qword_34628, &qword_256B8);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_E934;
  v14[2] = v12;
  return result;
}

uint64_t sub_CB30(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(&v5 + 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  sub_465C(&v7, &v2, &qword_34670, &qword_25710);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v3 = v5;
  v4 = v6;
  LOBYTE(v2) = 0x50302010005uLL >> (8 * v2);
  sub_24068();
  return sub_46C4(&v5, &qword_34658, &qword_256D0);
}

uint64_t sub_CC18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_244D8();
  *a1 = result;
  return result;
}

uint64_t sub_CC58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1F7C(&qword_34640, &qword_256C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6];
  v20 = *a1;
  v21 = *(a1 + 8);
  v18 = *(a1 + 1);
  v19 = *(a1 + 32);
  v8 = swift_allocObject();
  v9 = *(a1 + 1);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  sub_465C(&v20, &v16, &qword_34668, &qword_256D8);
  sub_465C(&v18, &v16, &qword_34658, &qword_256D0);
  sub_24528();
  v16 = v18;
  v17 = v19;
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v10 = 0x30u >> v15[15];
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10 & 1;
  (*(v5 + 32))(a2, v7, v4);
  result = sub_1F7C(&qword_34628, &qword_256B8);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_DC08;
  v14[2] = v12;
  return result;
}

uint64_t sub_CEA0(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(&v5 + 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  sub_465C(&v7, &v2, &qword_34670, &qword_25710);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v3 = v5;
  v4 = v6;
  LOBYTE(v2) = 0x50504030201uLL >> (8 * v2);
  sub_24068();
  return sub_46C4(&v5, &qword_34658, &qword_256D0);
}

uint64_t sub_CF88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_244D8();
  *a1 = result;
  return result;
}

uint64_t sub_CFEC@<X0>(uint64_t a3@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v4 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

Swift::Int sub_D0B8()
{
  v1 = *v0;
  sub_249A8();
  sub_249B8(v1);
  return sub_249D8();
}

Swift::Int sub_D12C(uint64_t a1)
{
  v2 = *v1;
  sub_249A8();
  sub_249B8(v2);
  return sub_249D8();
}

uint64_t sub_D184()
{
  v2 = *v0;
  sub_1F7C(&qword_34560, &qword_255C0);
  swift_allocBox();
  sub_D5F8(v2, SBYTE8(v2));
  type metadata accessor for ConfigurePostbacksState(0);
  sub_3DFC();
  sub_24678();
  sub_1F7C(&qword_34568, &qword_255C8);
  sub_26B8(&qword_34570, &qword_255D0);
  sub_26B8(&qword_34578, &qword_255D8);
  sub_26B8(&qword_34580, &qword_255E0);
  sub_26B8(&qword_34588, &qword_255E8);
  sub_26B8(&qword_34590, &qword_255F0);
  sub_26B8(&qword_34598, &qword_255F8);
  sub_26B8(&qword_345A0, &qword_25600);
  sub_26B8(&qword_345A8, &qword_25608);
  sub_26B8(&qword_345B0, &qword_25610);
  sub_4274(&qword_345B8, &qword_345B0, &qword_25610, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_4274(&qword_345C0, &qword_34588, &qword_255E8, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeConformance2();
  sub_4274(&qword_345C8, &qword_34578, &qword_255D8, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  sub_24138();
}

void sub_D514(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = v3[19];
  v5 = v3[20];
  v6 = v3[21];
  v7 = v3[22];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_D784(v4, v5, v6, v7);
}

void sub_D598(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_D784(*a1, v2, v3, v4);
  sub_12B44(v1, v2, v3, v4);
}

uint64_t sub_D5F8(uint64_t a1, char a2)
{
  v4 = sub_24178();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_247F8();
    v8 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

void sub_D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_D7C8()
{

  return sub_24528();
}

void sub_D844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_D8B8()
{
  result = qword_34630;
  if (!qword_34630)
  {
    sub_26B8(&qword_34628, &qword_256B8);
    sub_4274(&qword_34638, &qword_34640, &qword_256C0, &protocol conformance descriptor for Button<A>);
    sub_4274(&qword_34648, &qword_34650, &qword_256C8, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34630);
  }

  return result;
}

uint64_t sub_D9A4(uint64_t a1)
{
  v2 = sub_1F7C(&qword_34610, &qword_256A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DA0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1F7C(&qword_34610, &qword_256A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DB34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24148();
  *a1 = result & 1;
  return result;
}

uint64_t sub_DB64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24148();
  *a1 = result & 1;
  return result;
}

unint64_t sub_DCF0()
{
  result = qword_346D0;
  if (!qword_346D0)
  {
    sub_26B8(&qword_346C8, &unk_25790);
    sub_4180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_346D0);
  }

  return result;
}

uint64_t sub_DD7C()
{

  return swift_deallocObject();
}

uint64_t sub_DDBC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_4440;

  return sub_BF14(v0 + 16);
}

char *sub_DE58(char *result)
{
  v1 = *(result + 1);
  v14 = *result;
  v2 = v1 - *result;
  if (__OFSUB__(v1, *result))
  {
    goto LABEL_31;
  }

  v3 = sub_E4F4();
  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    if (v4 <= 0)
    {
      v5 = &_swiftEmptyArrayStorage;
    }

    else
    {
      sub_1F7C(&qword_34730, &unk_25838);
      v5 = swift_allocObject();
      v6 = j__malloc_size(v5);
      v7 = v6 - 32;
      if (v6 < 32)
      {
        v7 = v6 - 1;
      }

      v5[2] = v4;
      v5[3] = 2 * (v7 >> 5);
    }
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  v8 = v5[3];

  sub_1F7C(&qword_346E0, &qword_257F0);
  sub_4274(&qword_346E8, &qword_346F0, &qword_257F8, &protocol conformance descriptor for [A]);
  result = sub_24598();
  if (v4 < 0)
  {
    goto LABEL_32;
  }

  v9 = v8 >> 1;
  if (v4)
  {
    if (v1 < v14)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v1 == v14)
    {
      __break(1u);
    }

    else if (v14 < v1)
    {
      result = sub_245B8();
LABEL_29:
      __break(1u);
      __break(1u);
LABEL_30:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v14 != v1)
  {
    if (v1 < v14)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v1 == v14)
    {
      goto LABEL_30;
    }

    sub_245B8();
  }

  result = v5;
  v10 = v5[3];
  if (v10 >= 2)
  {
    v11 = v10 >> 1;
    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (v12)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v5[2] = v13;
  }

  return result;
}

unint64_t sub_E3E8()
{
  result = qword_34700;
  if (!qword_34700)
  {
    sub_26B8(&qword_346F8, &qword_25800);
    sub_4274(&qword_34708, &qword_34710, &qword_25808, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34700);
  }

  return result;
}

unint64_t sub_E4A0()
{
  result = qword_34728;
  if (!qword_34728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34728);
  }

  return result;
}

void *sub_E4F4()
{
  sub_1F7C(&qword_346E0, &qword_257F0);
  sub_4274(&qword_346E8, &qword_346F0, &qword_257F8, &protocol conformance descriptor for [A]);
  sub_24598();
  sub_245B8();
  return 0;
}

uint64_t sub_E67C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_4750;

  return sub_96F8(v0);
}

uint64_t getEnumTagSinglePayload for ConfigureDevelopmentPostbacks.FocusedTextField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigureDevelopmentPostbacks.FocusedTextField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_E8C8()
{
  result = qword_34780;
  if (!qword_34780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34780);
  }

  return result;
}

uint64_t sub_E938(uint64_t a1)
{
  if ((*(a1 + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_E950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_E96C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_E9BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_EA48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v33 = sub_1F7C(&qword_34790, &qword_25C70);
  v31 = *(v33 - 8);
  v3 = __chkstk_darwin(v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = *a1;
  v8 = a1[1];
  if (a1[2] < 0)
  {

    v28 = 0;
    v29 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_41DC();

    if (!sub_24808())
    {
      v9 = [objc_opt_self() mainBundle];
    }

    LOWORD(v26) = 256;
    v25 = 0;
    v7 = sub_24348();
    v8 = v10;
    v28 = v11;
    v29 = v12;
  }

  v27 = v8;

  v13 = sub_ED90();
  __chkstk_darwin(v13);
  v26 = &protocol witness table for Text;
  v24[1] = v24;
  v25 = &type metadata for Text;
  v24[0] = sub_F094;
  sub_24698();
  v15 = v31;
  v14 = v32;
  v16 = *(v31 + 16);
  v17 = v33;
  v16(v32, v6, v33);
  v18 = v30;
  *v30 = v7;
  v18[1] = v8;
  v19 = v28 & 1;
  *(v18 + 16) = v28 & 1;
  v18[3] = v29;
  v20 = sub_1F7C(&qword_34798, &qword_25C78);
  v16(v18 + *(v20 + 48), v14, v17);
  v21 = v27;
  sub_F09C(v7, v27, v19);
  v22 = *(v15 + 8);

  v22(v6, v17);
  v22(v14, v17);
  sub_439C(v7, v21, v19);
}

uint64_t sub_ED90()
{
  v1 = v0[10];
  if (v1 >> 1 == 0xFFFFFFFF)
  {
    v2 = *v0;
    if (v0[2] < 0)
    {

      return v2;
    }

    sub_41DC();

    if (!sub_24808())
    {
      v3 = [objc_opt_self() mainBundle];
    }
  }

  else
  {
    v2 = v0[8];
    if ((v1 & 0x8000000000000000) != 0)
    {
      sub_F0AC(v0[8], v0[9], v0[10], v0[11]);
      return v2;
    }

    sub_41DC();

    if (!sub_24808())
    {
      v4 = [objc_opt_self() mainBundle];
    }
  }

  return sub_24348();
}

uint64_t sub_EF28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (a1[2] < 0)
  {

    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_41DC();

    if (!sub_24808())
    {
      v5 = [objc_opt_self() mainBundle];
    }

    result = sub_24348();
    v3 = result;
    v4 = v9;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_F020@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[3];
  v16[2] = v9[2];
  v16[3] = v11;
  v12 = v9[5];
  v16[4] = v9[4];
  v16[5] = v12;
  v13 = v9[1];
  v16[0] = *v9;
  v16[1] = v13;
  *a9 = sub_241B8();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v14 = sub_1F7C(&qword_34788, &qword_25C68);
  return sub_EA48(v16, (a9 + *(v14 + 44)));
}

uint64_t sub_F09C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {

    v4 = vars8;
  }
}

unint64_t sub_F0F0()
{
  result = qword_347A0;
  if (!qword_347A0)
  {
    sub_26B8(&qword_347A8, &qword_25C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_347A0);
  }

  return result;
}

uint64_t sub_F154()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_F1D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_F268(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_24958() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;

    return sub_127DC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_F39C(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_F47C()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 32);
}

uint64_t sub_F4EC()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 33);
}

uint64_t sub_F55C()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 144);
}

uint64_t sub_F5CC(uint64_t result)
{
  if (*(v1 + 144) == (result & 1))
  {
    *(v1 + 144) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_F6AC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_3DFC();
  sub_23F28();

  v1 = v0[19];
  sub_D784(v1, v3[20], v3[21], v3[22]);
  return v1;
}

uint64_t sub_F744()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_F7C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_F858(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (sub_24958() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_F988()
{
  v1[3] = v0;
  v2 = sub_23EE8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1F7C(&qword_34958, &qword_264E8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_FA8C, 0, 0);
}

uint64_t sub_FA8C()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_3DFC();
  sub_23F28();

  v2 = *(v1 + 16);
  v0[9] = v2;
  v3 = *(v1 + 24);
  v0[10] = v3;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_FB94;
  v5 = v0[8];

  return static DeveloperMode.retrieveDeveloperPostbackURL(forBundleID:)(v5, v2, v3);
}

uint64_t sub_FB94()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_FFF0;
  }

  else
  {
    v2 = sub_FCA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FCA8()
{
  v28 = v0;
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_18F9C(v0[8], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_46C4(v0[7], &qword_34958, &qword_264E8);
    sub_18E44();
    v5 = swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_46C4(v4, &qword_34958, &qword_264E8);
    if (qword_34400 != -1)
    {
      swift_once();
    }

    v7 = sub_24048();
    sub_17824(v7, qword_38D60);

    swift_errorRetain();
    v8 = sub_24028();
    v9 = sub_247E8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[10];
    if (v10)
    {
      v12 = v0[9];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v13 = 136315394;
      v16 = sub_178B0(v12, v11, &v27);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_0, v8, v9, "Failed to retrieve developer postback url for bundle id: %s with error: %@", v13, 0x16u);
      sub_46C4(v14, &qword_34950, &qword_26370);

      sub_1B870(v15);
    }

    else
    {
    }

    sub_13814(v5);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[4];

    (*(v21 + 32))(v20, v19, v22);
    v23 = sub_23EB8();
    sub_F858(v23, v24);
    (*(v21 + 8))(v20, v22);
    sub_46C4(v18, &qword_34958, &qword_264E8);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_FFF0()
{
  v16 = v0;
  v1 = v0[12];
  if (qword_34400 != -1)
  {
    swift_once();
  }

  v2 = sub_24048();
  sub_17824(v2, qword_38D60);

  swift_errorRetain();
  v3 = sub_24028();
  v4 = sub_247E8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    v11 = sub_178B0(v7, v6, &v15);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_0, v3, v4, "Failed to retrieve developer postback url for bundle id: %s with error: %@", v8, 0x16u);
    sub_46C4(v9, &qword_34950, &qword_26370);

    sub_1B870(v10);
  }

  else
  {
  }

  sub_13814(v1);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10234()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_102B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_10348(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (sub_24958() & 1) != 0)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_10478()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_104F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_1058C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (sub_24958() & 1) != 0)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_106BC()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1073C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_107D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (sub_24958() & 1) != 0)
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_10900()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 88);
}

uint64_t sub_10970@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_10A10(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_10AF0()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 89);
}

uint64_t sub_10B60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 89);
  return result;
}

uint64_t sub_10C00(uint64_t result)
{
  if (*(v1 + 89) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_10CD8()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 112);
}

uint64_t sub_10D48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_10DE8(char a1)
{
  if (*(v1 + 112) == (a1 & 1))
  {
    *(v1 + 112) = a1 & 1;
    swift_getKeyPath();
    sub_3DFC();
    sub_23F28();

    if (*(v1 + 112))
    {
      v4 = &off_31010;
    }

    else
    {
      v4 = &off_30FE8;
    }

    return sub_11048(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_10F2C()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();
}

uint64_t sub_10FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 136);
}

uint64_t sub_11048(uint64_t a1)
{
  if (sub_18A48(*(v1 + 136), a1))
  {
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_1115C()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_111DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 128);
  *a2 = *(v3 + 120);
  a2[1] = v4;
}

uint64_t sub_11270(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_112B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120) == a1 && *(v2 + 128) == a2;
  if (v5 || (sub_24958() & 1) != 0)
  {
    *(v2 + 120) = a1;
    *(v2 + 128) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_113E8()
{
  v1[13] = v0;
  v2 = sub_23FD8();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = sub_23FE8();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v4 = sub_23FC8();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v5 = sub_24008();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v6 = sub_23FA8();
  v1[29] = v6;
  v1[30] = *(v6 - 8);
  v1[31] = swift_task_alloc();
  sub_1F7C(&qword_34958, &qword_264E8);
  v1[32] = swift_task_alloc();
  v7 = sub_23EE8();
  v1[33] = v7;
  v1[34] = *(v7 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_116DC, 0, 0);
}

uint64_t sub_116DC()
{
  v76 = v0;
  v1 = v0[34];
  v73 = v0[33];
  v2 = v0[32];
  v3 = v0[13];
  swift_getKeyPath();
  v0[37] = OBJC_IVAR____TtC33AdAttributionKitDeveloperSettings23ConfigurePostbacksState___observationRegistrar;
  v0[2] = v3;
  v0[38] = sub_3DFC();
  sub_23F28();

  v0[39] = *(v3 + 16);
  v0[40] = *(v3 + 24);
  swift_getKeyPath();
  v0[3] = v3;

  sub_23F28();

  sub_23ED8();

  if ((*(v1 + 48))(v2, 1, v73) == 1)
  {
    sub_46C4(v0[32], &qword_34958, &qword_264E8);
LABEL_29:
    sub_18E44();
    v20 = swift_allocError();
    *v40 = 1;
    swift_willThrow();
LABEL_32:
    if (qword_34400 != -1)
    {
      swift_once();
    }

    v41 = sub_24048();
    sub_17824(v41, qword_38D60);

    swift_errorRetain();
    v42 = sub_24028();
    v43 = sub_247E8();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[40];
    if (v44)
    {
      v46 = v0[39];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v75 = v49;
      *v47 = 136315394;
      v50 = sub_178B0(v46, v45, &v75);

      *(v47 + 4) = v50;
      *(v47 + 12) = 2112;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v51;
      *v48 = v51;
      _os_log_impl(&dword_0, v42, v43, "Failed to create development postbacks for bundle id: %s with error: %@", v47, 0x16u);
      sub_46C4(v48, &qword_34950, &qword_26370);

      sub_1B870(v49);
    }

    else
    {
    }

    sub_13814(v20);

    v52 = v0[1];

    return v52();
  }

  (*(v0[34] + 32))(v0[36], v0[32], v0[33]);
  v4 = sub_23EC8();
  if (v5)
  {
    if (v4 == 1886680168 && v5 == 0xE400000000000000)
    {
      goto LABEL_10;
    }

    v6 = sub_24958();

    if (v6)
    {
      goto LABEL_11;
    }
  }

  v7 = sub_23EC8();
  if (!v8)
  {
    goto LABEL_28;
  }

  if (v7 == 0x7370747468 && v8 == 0xE500000000000000)
  {
LABEL_10:

    goto LABEL_11;
  }

  v39 = sub_24958();

  if ((v39 & 1) == 0)
  {
LABEL_28:
    (*(v0[34] + 8))(v0[36], v0[33]);
    goto LABEL_29;
  }

LABEL_11:
  v9 = v0[13];
  swift_getKeyPath();
  v0[4] = v9;
  sub_23F28();

  v10 = *(v9 + 64);
  v11 = *(v9 + 56) & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  if (!v11)
  {
    v16 = v0[36];
    v17 = v0[33];
    v18 = v0[34];
    sub_18E44();
    v20 = swift_allocError();
    v21 = 2;
    goto LABEL_31;
  }

  v12 = v0[13];
  swift_getKeyPath();
  v0[5] = v12;
  sub_23F28();

  v13 = *(v12 + 72);
  v14 = *(v12 + 80);

  sub_13F90(v13, v14);
  if (v15)
  {
    v16 = v0[36];
    v17 = v0[33];
    v18 = v0[34];
    sub_18E44();
    v20 = swift_allocError();
    v21 = 3;
LABEL_31:
    *v19 = v21;
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
    goto LABEL_32;
  }

  v22 = v0[13];
  swift_getKeyPath();
  v0[6] = v22;
  sub_23F28();

  v23 = sub_246E8();

  if (v23 != 2)
  {
    v16 = v0[36];
    v17 = v0[33];
    v18 = v0[34];
    sub_18E44();
    v20 = swift_allocError();
    v21 = 4;
    goto LABEL_31;
  }

  v24 = v0[13];
  swift_getKeyPath();
  v0[7] = v24;
  sub_23F28();

  v25 = *(v24 + 136);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v0[30];
    v28 = v0[26];
    v75 = &_swiftEmptyArrayStorage;

    sub_18850(0, v26, 0);
    v29 = &_swiftEmptyArrayStorage;
    v64 = enum case for ConversionValueTier.fine(_:);
    v70 = *(v28 + 104);
    v65 = enum case for ConversionValueTier.coarse(_:);
    v69 = enum case for ConversionValueTier.none(_:);
    v71 = v27;
    v30 = v25 + 36;
    do
    {
      v72 = v26;
      v74 = v29;
      v31 = v69;
      if (*(v30 - 3))
      {
        v31 = v65;
        if (*(v30 - 3) != 1)
        {
          v31 = v64;
        }
      }

      v33 = v0[27];
      v32 = v0[28];
      v34 = v0[25];
      v70(v33, v31, v34);
      (*(v28 + 32))(v32, v33, v34);
      sub_23F98();
      v29 = v74;
      v75 = v74;
      v36 = v74[2];
      v35 = v74[3];
      if (v36 >= v35 >> 1)
      {
        sub_18850((v35 > 1), v36 + 1, 1);
        v29 = v75;
      }

      v37 = v0[31];
      v38 = v0[29];
      v29[2] = v36 + 1;
      (*(v71 + 32))(v29 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v36, v37, v38);
      v30 += 5;
      --v26;
    }

    while (v72 != 1);
  }

  sub_14290();
  v67 = v0[20];
  v68 = v0[21];
  v54 = v0[19];
  v66 = v0[18];
  v55 = v0[13];
  (*(v0[34] + 16))(v0[35], v0[36], v0[33]);
  swift_getKeyPath();
  v0[8] = v55;
  sub_23F28();

  swift_getKeyPath();
  v0[9] = v55;

  sub_23F28();

  swift_getKeyPath();
  v0[10] = v55;

  sub_23F28();

  v56 = &enum case for InteractionType.click(_:);
  if (!*(v55 + 88))
  {
    v56 = &enum case for InteractionType.view(_:);
  }

  (*(v54 + 104))(v67, *v56, v66);
  (*(v54 + 32))(v68, v67, v66);
  swift_getKeyPath();
  v0[11] = v55;
  sub_23F28();

  v57 = *(&off_31F78 + *(v55 + 89));
  v59 = v0[16];
  v58 = v0[17];
  v61 = v0[14];
  v60 = v0[15];
  (*(v60 + 104))(v59, *v57, v61);
  (*(v60 + 32))(v58, v59, v61);

  sub_23FB8();
  v62 = swift_task_alloc();
  v0[41] = v62;
  *v62 = v0;
  v62[1] = sub_12234;
  v63 = v0[24];

  return static DeveloperMode.createDevelopmentPostbacks(with:)(v63);
}

uint64_t sub_12234()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1250C;
  }

  else
  {

    v2 = sub_12350;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_12350(uint64_t a1)
{
  v2 = v1[13];
  if (*(v2 + 33))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v1[12] = v2;
    sub_23F18();
  }

  else
  {
    *(v2 + 33) = 0;
  }

  v4 = v1[36];
  v5 = v1[33];
  v6 = v1[34];
  v8 = v1[23];
  v7 = v1[24];
  v9 = v1[22];
  sub_1466C();
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1250C()
{
  v19 = v0;
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[42];
  if (qword_34400 != -1)
  {
    swift_once();
  }

  v5 = sub_24048();
  sub_17824(v5, qword_38D60);

  swift_errorRetain();
  v6 = sub_24028();
  v7 = sub_247E8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[40];
  if (v8)
  {
    v10 = v0[39];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    v14 = sub_178B0(v10, v9, &v18);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_0, v6, v7, "Failed to create development postbacks for bundle id: %s with error: %@", v11, 0x16u);
    sub_46C4(v12, &qword_34950, &qword_26370);

    sub_1B870(v13);
  }

  else
  {
  }

  sub_13814(v4);

  v16 = v0[1];

  return v16();
}

uint64_t sub_127DC()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 24);
  v3 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if ((*(v0 + 32) ^ (v3 == 0)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_23F18();
  }

  else
  {
    *(v0 + 32) = v3 == 0;
  }

  return result;
}

uint64_t sub_12914@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_129B4(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_12A9C(uint64_t a1, char a2)
{
  *(a1 + 112) = a2 & 1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  if (*(a1 + 112))
  {
    v3 = &off_31010;
  }

  else
  {
    v3 = &off_30FE8;
  }

  return sub_11048(v3);
}

void sub_12B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[19];
  v9 = v4[20];
  v12 = v4[21];
  v11 = v4[22];
  if (!v9)
  {
    if (!a2)
    {
      v14 = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    sub_D784(v4[19], v4[20], v4[21], v4[22]);
    sub_D784(a1, a2, a3, a4);
    sub_D844(v10, v9, v12, v11);
    sub_D844(a1, a2, a3, a4);
    goto LABEL_7;
  }

  sub_D784(v4[19], v4[20], v4[21], v4[22]);
  sub_D784(v10, v9, v12, v11);
  sub_D784(a1, a2, a3, a4);
  v13 = sub_24228();

  sub_D844(v10, v9, v12, v11);

  if ((v13 & 1) == 0)
  {
LABEL_7:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
    sub_D844(a1, a2, a3, a4);

    return;
  }

  v10 = v4[19];
  v14 = v4[20];
  v12 = v4[21];
  v11 = v4[22];
LABEL_9:
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;

  sub_D844(v10, v14, v12, v11);
}

uint64_t sub_12D98()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = &_swiftEmptyArrayStorage;
  *(v0 + 144) = 0;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  sub_23F38();
  sub_12E10(0);
  return v0;
}

uint64_t sub_12E10(char a1)
{
  v2 = v1;
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_246A8();
  v5 = [v3 dataForKey:v4];

  if (v5)
  {
    v6 = sub_23F08();
    v8 = v7;

    sub_23E68();
    swift_allocObject();
    sub_23E58();
    sub_177D0();
    sub_23E48();
    sub_1785C(v6, v8);

    v9 = v59;
    v10 = v60;
    v11 = v61;
    v12 = v62;
    v13 = v63;
    v14 = v64;
    v15 = v65;
    v57 = v66;
    v51 = v67;
    v56 = v68;
    v54 = v69;
    v53 = v70;
    v45 = v71;
    v44 = v72 | (v73 << 32);
    v50 = v74;
    v55 = v75;
    v52 = v76;
    v58[0] = xmmword_25CA0;
    memset(&v58[1], 0, 96);
    sub_46C4(v58, &qword_34940, &qword_26368);
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v57 = 0;
    v51 = 0;
    v56 = 0;
    v54 = 0;
    v53 = 0;
    v45 = 0;
    v50 = 0;
    v55 = 0;
    v52 = 0;
    v44 = 0;
    v10 = 1;
  }

  if ((a1 & 1) == 0)
  {
    if (v10 >= 2)
    {

      v16 = v9;
      v17 = v10;
    }

    else
    {

      v16 = 0;
      v17 = 0xE000000000000000;
    }

    sub_F268(v16, v17);
  }

  if (v10 == 1 || !v12)
  {

    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {

    v18 = v11;
    v19 = v12;
  }

  sub_F858(v18, v19);
  if (v10 == 1 || !v14)
  {

    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {

    v20 = v13;
    v21 = v14;
  }

  sub_10348(v20, v21);
  if (v10 == 1 || !v57)
  {

    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {

    v22 = v15;
    v23 = v57;
  }

  sub_1058C(v22, v23);
  v47 = v14;
  if (v10 == 1 || !v56)
  {

    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {

    v24 = v51;
    v25 = v56;
  }

  v46 = v15;
  v49 = v13;
  v26 = v10 != 1;
  sub_107D0(v24, v25);
  v43 = v12;
  if ((v26 & v54) == v2[88])
  {
    v2[88] = v26 & v54;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v59 = v2;
    sub_3DFC();
    sub_23F18();
  }

  if (v53 == 3 || v10 == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v53;
  }

  if (v2[89] != v29)
  {
    v30 = swift_getKeyPath();
    __chkstk_darwin(v30);
    v59 = v2;
    sub_3DFC();
    sub_23F18();
  }

  if (v10 == 1 || !v55)
  {

    v31 = 0;
    v32 = 0xE000000000000000;
  }

  else
  {

    v31 = v50;
    v32 = v55;
  }

  sub_112B8(v31, v32);
  if ((v26 & v45) == v2[112])
  {
    v2[112] = v26 & v45;
    swift_getKeyPath();
    v59 = v2;
    sub_3DFC();
    sub_23F28();

    v36 = v47;
    if (v2[112])
    {
      v37 = &off_31010;
    }

    else
    {
      v37 = &off_30FE8;
    }

    sub_11048(v37);
    v34 = v11;
    v35 = v43;
  }

  else
  {
    v33 = swift_getKeyPath();
    __chkstk_darwin(v33);
    v59 = v2;
    sub_3DFC();
    sub_23F18();

    v34 = v11;
    v35 = v12;
    v36 = v47;
  }

  v38 = v52;
  if (v10 == 1 || !v52)
  {
    goto LABEL_53;
  }

  swift_getKeyPath();
  v59 = v2;
  sub_3DFC();

  sub_23F28();

  v39 = *(v52 + 16);
  if (!v39)
  {
    goto LABEL_52;
  }

  v40 = 3;
  if (!v2[112])
  {
    v40 = 1;
  }

  v41 = v52;
  if (v39 != v40)
  {
LABEL_52:

LABEL_53:
    swift_getKeyPath();
    v59 = v2;
    sub_3DFC();
    sub_23F28();

    if (v2[112])
    {
      v41 = &off_31010;
    }

    else
    {
      v41 = &off_30FE8;
    }

    v38 = v52;
  }

  sub_11048(v41);
  v59 = v9;
  v60 = v10;
  v61 = v34;
  v62 = v35;
  v63 = v49;
  v64 = v36;
  v65 = v46;
  v66 = v57;
  v67 = v51;
  v68 = v56;
  v69 = v54;
  v70 = v53;
  v71 = v45;
  v73 = BYTE4(v44);
  v72 = v44;
  v74 = v50;
  v75 = v55;
  v76 = v38;
  return sub_46C4(&v59, &qword_34940, &qword_26368);
}

void sub_13814(uint64_t a1)
{
  v52 = a1;
  v2 = sub_1F7C(&qword_34980, &qword_26500);
  __chkstk_darwin(v2 - 8);
  v4 = v47 - v3;
  v5 = sub_23FF8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v47 - v10;
  v12 = sub_241F8();
  __chkstk_darwin(v12 - 8);
  v13 = sub_24208();
  v15 = v14;
  v49 = v16;
  v50 = v13;
  v18 = v17;
  v19 = *(v1 + 144);
  v51 = v4;
  if (v19 == 1)
  {
    *(v1 + 144) = 1;
  }

  else
  {
    v47[0] = swift_getKeyPath();
    v47[1] = v47;
    v48 = v15;
    __chkstk_darwin(v47[0]);
    v47[-2] = v1;
    LOBYTE(v47[-1]) = 1;
    v54 = v1;
    sub_3DFC();
    sub_23F18();
    v15 = v48;
  }

  v20 = v52;
  v54 = v52;
  swift_errorRetain();
  sub_1F7C(&qword_34988, &qword_26508);
  if (swift_dynamicCast())
  {

    if (v53[0] > 2u || v53[0])
    {
      v29 = sub_24208();
      v30 = v42 & 1;
    }

    else
    {
      sub_241E8();
      v57._object = 0x800000000002C120;
      v57._countAndFlagsBits = 0x100000000000003FLL;
      v38 = v1;
      sub_241D8(v57);
      swift_getKeyPath();
      v54 = v1;
      sub_3DFC();
      sub_23F28();

      v39 = *(v1 + 16);
      v40 = *(v38 + 24);

      v58._countAndFlagsBits = v39;
      v58._object = v40;
      sub_241C8(v58);

      v59._countAndFlagsBits = 781811938;
      v59._object = 0xA400000000000000;
      sub_241D8(v59);
      v29 = sub_24218();
      v30 = v41 & 1;
    }

    goto LABEL_17;
  }

  v54 = v20;
  swift_errorRetain();
  v21 = v51;
  v22 = swift_dynamicCast();
  v23 = *(v6 + 56);
  if (!v22)
  {
    v23(v21, 1, 1, v5);
    sub_46C4(v21, &qword_34980, &qword_26500);
    v29 = v50;
    v30 = v49 & 1;
    v31 = v15;
    v32 = v18;
LABEL_17:
    sub_12B44(v29, v31, v30, v32);
    return;
  }

  v23(v21, 0, 1, v5);
  (*(v6 + 32))(v11, v21, v5);
  (*(v6 + 16))(v9, v11, v5);
  v24 = (*(v6 + 88))(v9, v5);
  if (v24 == enum case for DeveloperModeError.unknown(_:))
  {
    goto LABEL_10;
  }

  if (v24 == enum case for DeveloperModeError.appNotInstalled(_:))
  {

    sub_241E8();
    v55._object = 0x800000000002BF80;
    v55._countAndFlagsBits = 0xD000000000000014;
    v33 = v1;
    sub_241D8(v55);
    swift_getKeyPath();
    v54 = v1;
    sub_3DFC();
    sub_23F28();

    v34 = *(v1 + 16);
    v35 = *(v33 + 24);

    v56._countAndFlagsBits = v34;
    v56._object = v35;
    sub_241C8(v56);

    v36 = " postback copy URL.";
    v37._countAndFlagsBits = 0xD00000000000003CLL;
LABEL_20:
    v37._object = (v36 | 0x8000000000000000);
    sub_241D8(v37);
    v25 = sub_24218();
    v26 = v46 & 1;
    goto LABEL_21;
  }

  if (v24 == enum case for DeveloperModeError.developerPostbackCopyURLMalformed(_:))
  {

    sub_241E8();
    v60._object = 0x800000000002BF80;
    v60._countAndFlagsBits = 0xD000000000000014;
    v43 = v1;
    sub_241D8(v60);
    swift_getKeyPath();
    v54 = v1;
    sub_3DFC();
    sub_23F28();

    v44 = *(v1 + 16);
    v45 = *(v43 + 24);

    v61._countAndFlagsBits = v44;
    v61._object = v45;
    sub_241C8(v61);

    v36 = "App with bundle id '";
    v37._countAndFlagsBits = 0xD000000000000023;
    goto LABEL_20;
  }

  (*(v6 + 8))(v9, v5);
LABEL_10:
  v25 = v50;
  v26 = v49 & 1;
  v27 = v15;
  v28 = v18;
LABEL_21:
  sub_12B44(v25, v27, v26, v28);
  (*(v6 + 8))(v11, v5);
}

unint64_t sub_13F90(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24878();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_17E58(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_14290()
{
  v1 = v0;
  swift_getKeyPath();
  v29[0] = v0;
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 128);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(v0 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  swift_getKeyPath();
  v29[0] = v0;
  sub_23F28();

  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_70;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {

    v26 = sub_17E58(v6, v5, 10);
    v28 = v27;

    if (v28)
    {
      goto LABEL_70;
    }

    return v26;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v29[0] = *(v1 + 120);
    v29[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v6 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        return result;
      }

      if (--v7)
      {
        result = 0;
        v20 = v29 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          if (!is_mul_ok(result, 0xAuLL))
          {
            break;
          }

          v14 = __CFADD__(10 * result, v21);
          result = 10 * result + v21;
          if (v14)
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v6 == 45)
    {
      if (!v7)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if (--v7)
      {
        result = 0;
        v15 = v29 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          if (!is_mul_ok(result, 0xAuLL))
          {
            break;
          }

          v14 = 10 * result >= v16;
          result = 10 * result - v16;
          if (!v14)
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v7)
    {
      result = 0;
      v23 = v29;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          break;
        }

        if (!is_mul_ok(result, 0xAuLL))
        {
          break;
        }

        v14 = __CFADD__(10 * result, v24);
        result = 10 * result + v24;
        if (v14)
        {
          break;
        }

        ++v23;
        if (!--v7)
        {
          goto LABEL_69;
        }
      }
    }
  }

  else
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24878();
      v7 = result;
    }

    v10 = *v7;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v17 = v8 - 1;
        if (v8 != 1)
        {
          result = 0;
          if (!v7)
          {
            goto LABEL_69;
          }

          v18 = (v7 + 1);
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(result, 0xAuLL))
            {
              break;
            }

            v14 = __CFADD__(10 * result, v19);
            result = 10 * result + v19;
            if (v14)
            {
              break;
            }

            ++v18;
            if (!--v17)
            {
LABEL_60:
              LOBYTE(v7) = 0;
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_77;
    }

    if (v10 == 45)
    {
      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          result = 0;
          if (!v7)
          {
            goto LABEL_69;
          }

          v12 = (v7 + 1);
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            if (!is_mul_ok(result, 0xAuLL))
            {
              break;
            }

            v14 = 10 * result >= v13;
            result = 10 * result - v13;
            if (!v14)
            {
              break;
            }

            ++v12;
            if (!--v11)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_68;
      }

      __break(1u);
      goto LABEL_76;
    }

    if (v8)
    {
      result = 0;
      if (!v7)
      {
        goto LABEL_69;
      }

      while (1)
      {
        v22 = *v7 - 48;
        if (v22 > 9)
        {
          break;
        }

        if (!is_mul_ok(result, 0xAuLL))
        {
          break;
        }

        v14 = __CFADD__(10 * result, v22);
        result = 10 * result + v22;
        if (v14)
        {
          break;
        }

        ++v7;
        if (!--v8)
        {
          goto LABEL_60;
        }
      }
    }
  }

LABEL_68:
  result = 0;
  LOBYTE(v7) = 1;
LABEL_69:
  v30 = v7;
  if (v7)
  {
LABEL_70:
    sub_18E44();
    swift_allocError();
    *v25 = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1466C()
{
  swift_getKeyPath();
  v24[0] = v0;
  sub_3DFC();
  sub_23F28();

  v22 = *(v0 + 24);
  v23 = *(v0 + 16);
  swift_getKeyPath();
  v24[0] = v0;

  sub_23F28();

  v20 = *(v0 + 48);
  v21 = *(v0 + 40);
  swift_getKeyPath();

  sub_23F28();

  v18 = *(v0 + 64);
  v19 = *(v0 + 56);
  swift_getKeyPath();
  v24[0] = v0;

  sub_23F28();

  v16 = *(v0 + 80);
  v17 = *(v0 + 72);
  swift_getKeyPath();

  sub_23F28();

  v1 = *(v0 + 104);
  v15 = *(v0 + 96);
  swift_getKeyPath();
  v24[0] = v0;

  sub_23F28();

  v14 = *(v0 + 88);
  swift_getKeyPath();
  sub_23F28();

  v2 = *(v0 + 89);
  swift_getKeyPath();
  v24[0] = v0;
  sub_23F28();

  v3 = *(v0 + 112);
  swift_getKeyPath();
  sub_23F28();

  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  swift_getKeyPath();
  v24[0] = v0;

  sub_23F28();

  v6 = *(v0 + 136);
  v24[0] = v23;
  v24[1] = v22;
  v24[2] = v21;
  v24[3] = v20;
  v24[4] = v19;
  v24[5] = v18;
  v24[6] = v17;
  v24[7] = v16;
  v24[8] = v15;
  v24[9] = v1;
  v25 = v14;
  v26 = v2;
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  sub_23E98();
  swift_allocObject();

  sub_23E88();
  sub_18E98();
  v7 = sub_23E78();
  v9 = v8;

  sub_18EEC(v24);
  v10 = [objc_opt_self() standardUserDefaults];
  isa = sub_23EF8().super.isa;
  v12 = sub_246A8();
  [v10 setObject:isa forKey:v12];

  return sub_1785C(v7, v9);
}

uint64_t sub_14BD0(uint64_t a1)
{
  v2 = sub_1BCAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14C0C(uint64_t a1)
{
  v2 = sub_1BCAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_14C48(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1F7C(&qword_34AA8, &qword_265B8);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1F7C(&qword_34AB0, &qword_265C0);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1F7C(&qword_34AB8, &qword_265C8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1B7D8(a1, a1[3]);
  sub_1BC58();
  sub_249F8();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1BCAC();
    sub_248F8();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1BD00();
    sub_248F8();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_14F24()
{
  if (*v0)
  {
    return 0x6B63696C63;
  }

  else
  {
    return 2003134838;
  }
}

uint64_t sub_14F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v5 || (sub_24958() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63696C63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24958();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_15038(uint64_t a1)
{
  v2 = sub_1BC58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15074(uint64_t a1)
{
  v2 = sub_1BC58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_150B0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_150EC(uint64_t a1)
{
  v2 = sub_1BD00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15128(uint64_t a1)
{
  v2 = sub_1BD00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15180@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_19720(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_151CC(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1F7C(&qword_34A58, &qword_26580);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1F7C(&qword_34A60, &qword_26588);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1F7C(&qword_34A68, &qword_26590);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1F7C(&qword_34A70, &qword_26598);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_1B7D8(a1, a1[3]);
  sub_1BB08();
  sub_249F8();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1BBB0();
      sub_248F8();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1BB5C();
      v16 = v22;
      sub_248F8();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1BC04();
    sub_248F8();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1554C()
{
  v1 = 0x6F6C6E776F646572;
  if (*v0 != 1)
  {
    v1 = 0x656761676E656572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C6E776F64;
  }
}

uint64_t sub_155B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19B5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_155E8(uint64_t a1)
{
  v2 = sub_1BB08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15624(uint64_t a1)
{
  v2 = sub_1BB08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15660(uint64_t a1)
{
  v2 = sub_1BC04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1569C(uint64_t a1)
{
  v2 = sub_1BC04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_156D8(uint64_t a1)
{
  v2 = sub_1BBB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15714(uint64_t a1)
{
  v2 = sub_1BBB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15750(uint64_t a1)
{
  v2 = sub_1BB5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1578C(uint64_t a1)
{
  v2 = sub_1BB5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_157D8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_19C80(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_15820(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1F7C(&qword_34A00, &qword_26548);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1F7C(&qword_34A08, &qword_26550);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1F7C(&qword_34A10, &qword_26558);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1B7D8(a1, a1[3]);
  sub_1BA0C();
  sub_249F8();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1BA60();
    sub_248F8();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1BAB4();
    sub_248F8();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_15ADC()
{
  if (*v0)
  {
    return 0x6565726874;
  }

  else
  {
    return 6647407;
  }
}

uint64_t sub_15B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6647407 && a2 == 0xE300000000000000;
  if (v5 || (sub_24958() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6565726874 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24958();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_15BE4(uint64_t a1)
{
  v2 = sub_1BA0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15C20(uint64_t a1)
{
  v2 = sub_1BA0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15C5C(uint64_t a1)
{
  v2 = sub_1BAB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15C98(uint64_t a1)
{
  v2 = sub_1BAB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15CD4(uint64_t a1)
{
  v2 = sub_1BA60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15D10(uint64_t a1)
{
  v2 = sub_1BA60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15D5C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A210(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_15DA8(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1F7C(&qword_34C58, &qword_272A0);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1F7C(&qword_34C60, &qword_272A8);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1F7C(&qword_34C68, &qword_272B0);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1F7C(&qword_34C70, &qword_272B8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_1B7D8(a1, a1[3]);
  sub_1CC18();
  sub_249F8();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1CCC0();
      sub_248F8();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1CC6C();
      v16 = v22;
      sub_248F8();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1CD14();
    sub_248F8();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_16128()
{
  v1 = 0x6565726874;
  if (*v0 != 1)
  {
    v1 = 1920298854;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7305076;
  }
}

uint64_t sub_16170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A64C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_16198(uint64_t a1)
{
  v2 = sub_1CC18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_161D4(uint64_t a1)
{
  v2 = sub_1CC18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16210(uint64_t a1)
{
  v2 = sub_1CC6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1624C(uint64_t a1)
{
  v2 = sub_1CC6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16288(uint64_t a1)
{
  v2 = sub_1CCC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_162C4(uint64_t a1)
{
  v2 = sub_1CCC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16300(uint64_t a1)
{
  v2 = sub_1CD14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1633C(uint64_t a1)
{
  v2 = sub_1CD14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16388@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A760(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_163D0(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1F7C(&qword_34C78, &qword_272C0);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1F7C(&qword_34C80, &qword_272C8);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1F7C(&qword_34C88, &qword_272D0);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1F7C(&qword_34C90, &qword_272D8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_1B7D8(a1, a1[3]);
  sub_1CD68();
  sub_249F8();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1CE10();
      sub_248F8();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1CDBC();
      v16 = v22;
      sub_248F8();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1CE64();
    sub_248F8();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_16750(void *a1, unint64_t a2)
{
  v3 = a2;
  v5 = sub_1F7C(&qword_349B0, &qword_26520);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1B7D8(a1, a1[3]);
  sub_1B81C();
  sub_249F8();
  v10[15] = v3;
  v10[14] = 0;
  sub_1B964();
  sub_24938();
  if (!v2)
  {
    v10[13] = HIBYTE(v3);
    v10[12] = 1;
    sub_1B9B8();
    sub_24938();
    v10[11] = 2;
    sub_24928();
    v10[10] = 3;
    sub_24928();
    v10[9] = 4;
    sub_24928();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_16958(unint64_t a1)
{
  sub_249A8();
  sub_249B8(a1);
  sub_249B8(BYTE1(a1));
  sub_249C8(BYTE2(a1) & 1);
  sub_249C8(BYTE3(a1) & 1);
  sub_249C8(BYTE4(a1) & 1);
  return sub_249D8();
}

uint64_t sub_169D0(uint64_t a1)
{
  v2 = sub_1CE10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16A0C(uint64_t a1)
{
  v2 = sub_1CE10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16A48()
{
  v1 = 1701734758;
  if (*v0 == 1)
  {
    v1 = 0x657372616F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_16A90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1ACF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_16AB8(uint64_t a1)
{
  v2 = sub_1CD68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16AF4(uint64_t a1)
{
  v2 = sub_1CD68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16B30(uint64_t a1)
{
  v2 = sub_1CDBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16B6C(uint64_t a1)
{
  v2 = sub_1CDBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16BA8(uint64_t a1)
{
  v2 = sub_1CE64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16BE4(uint64_t a1)
{
  v2 = sub_1CE64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16C30@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AE08(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_16C78()
{
  v1 = *v0;
  v2 = 0x4449656372756F73;
  v3 = 0xD000000000000015;
  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_16D2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B398(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_16D60(uint64_t a1)
{
  v2 = sub_1B81C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16D9C(uint64_t a1)
{
  v2 = sub_1B81C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_16DD8()
{
  v1 = 0x100000000;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  return sub_16958(v3 | *v0 | (v0[1] << 8) | v2 | v1);
}

void sub_16E24()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_249B8(*v0);
  sub_249B8(v1);
  sub_249C8(v2);
  sub_249C8(v3);
  sub_249C8(v4);
}

Swift::Int sub_16E90(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_249A8();
  sub_249B8(v2);
  sub_249B8(v3);
  sub_249C8(v4);
  sub_249C8(v5);
  sub_249C8(v6);
  return sub_249D8();
}

uint64_t sub_16F24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = 0x100000000;
  if (a1[4])
  {
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0;
  v14 = 0x1000000;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x1000000;
  }

  v13 = v4 == 0;
  v16 = 0x10000;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000;
  }

  v18 = v17 | v2 | (v3 << 8);
  if (!v10)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v14 = 0;
  }

  if (!v8)
  {
    v16 = 0;
  }

  return sub_196DC(v18 | v15 | v12, v16 | v6 | (v7 << 8) | v14 | v11);
}

uint64_t sub_16FAC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B554(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result) & 1;
    *(a1 + 3) = BYTE3(result) & 1;
    *(a1 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_16FF8(void *a1)
{
  v2 = 0x100000000;
  if (!v1[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!v1[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!v1[2])
  {
    v4 = 0;
  }

  return sub_16750(a1, v4 | *v1 | (v1[1] << 8) | v3 | v2);
}

char *sub_17068()
{

  sub_D844(v0[19], v0[20], v0[21], v0[22]);
  v1 = OBJC_IVAR____TtC33AdAttributionKitDeveloperSettings23ConfigurePostbacksState___observationRegistrar;
  v2 = sub_23F48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1710C()
{
  sub_17068();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ConfigurePostbacksState(uint64_t a1)
{
  result = qword_347E0;
  if (!qword_347E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_171B8(uint64_t a1)
{
  result = sub_23F48();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConfigurePostbacksState.PostbackConfigurationModel(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurePostbacksState.PostbackConfigurationModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurePostbacksState.PostbackConfigurationModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_17390()
{
  result = qword_348D8;
  if (!qword_348D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_348D8);
  }

  return result;
}

unint64_t sub_17418()
{
  result = qword_348F0;
  if (!qword_348F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_348F0);
  }

  return result;
}

unint64_t sub_17470()
{
  result = qword_348F8;
  if (!qword_348F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_348F8);
  }

  return result;
}

unint64_t sub_174F8()
{
  result = qword_34910;
  if (!qword_34910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34910);
  }

  return result;
}

unint64_t sub_17550()
{
  result = qword_34918;
  if (!qword_34918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34918);
  }

  return result;
}

unint64_t sub_175D8()
{
  result = qword_34930;
  if (!qword_34930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34930);
  }

  return result;
}

unint64_t sub_17630()
{
  result = qword_34938;
  if (!qword_34938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34938);
  }

  return result;
}

void sub_1768C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v2[19];
  v7 = v2[20];
  v8 = v2[21];
  v9 = v2[22];
  v2[19] = v1;
  v2[20] = v3;
  v2[21] = v4;
  v2[22] = v5;
  sub_D784(v1, v3, v4, v5);
  sub_D844(v6, v7, v8, v9);
}

unint64_t sub_177D0()
{
  result = qword_34948;
  if (!qword_34948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34948);
  }

  return result;
}

uint64_t sub_17824(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1785C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_178B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1797C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_18F40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1B870(v11);
  return v7;
}

unint64_t sub_1797C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_17A88(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24878();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_17A88(uint64_t a1, unint64_t a2)
{
  v3 = sub_17AD4(a1, a2);
  sub_17C04(&off_31068);
  return v3;
}

char *sub_17AD4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_17CF0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24878();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24708();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_17CF0(v10, 0);
        result = sub_24838();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_17C04(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_17D64(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_17CF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1F7C(&qword_34970, &qword_264F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_17D64(char *result, int64_t a2, char a3, char *a4)
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
    sub_1F7C(&qword_34970, &qword_264F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unsigned __int8 *sub_17E58(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_24758();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_183DC(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24878();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_183DC(uint64_t a1, unint64_t a2)
{
  v2 = sub_24768();
  v6 = sub_1845C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1845C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24828();
    if (!v9 || (v10 = v9, v11 = sub_17CF0(v9, 0), v12 = sub_185B4(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_246D8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_246D8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24878();
LABEL_4:

  return sub_246D8();
}

unint64_t sub_185B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_187D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24738();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24878();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_187D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24718();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_187D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24748();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_24728();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_18850(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18870(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1F7C(&qword_34978, &qword_264F8);
  v10 = *(sub_23FA8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23FA8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_18A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 36);
  v4 = (a2 + 36);
  do
  {
    v6 = *(v3 - 4) != *(v4 - 4) || *(v3 - 3) != *(v4 - 3);
    v7 = v6 | *(v3 - 2) ^ *(v4 - 2) | *(v3 - 1) ^ *(v4 - 1) | *v3 ^ *v4;
    if (v7)
    {
      break;
    }

    v3 += 5;
    v4 += 5;
    --v2;
  }

  while (v2);
  return (v7 ^ 1) & 1;
}

uint64_t sub_18B34()
{
  *(*(v0 + 16) + 136) = *(v0 + 24);
}

uint64_t sub_18B8C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 120) = v0[3];
  *(v1 + 128) = v2;
}

uint64_t sub_18BE8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

uint64_t sub_18C44()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 72) = v0[3];
  *(v1 + 80) = v2;
}

uint64_t sub_18CA0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
}

uint64_t sub_18CFC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_18D58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_18DA0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;

  return sub_127DC();
}

unint64_t sub_18E44()
{
  result = qword_34960;
  if (!qword_34960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34960);
  }

  return result;
}

unint64_t sub_18E98()
{
  result = qword_34968;
  if (!qword_34968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34968);
  }

  return result;
}

uint64_t sub_18F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1F7C(&qword_34958, &qword_264E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1900C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1909C;

  return static DeveloperMode.transmitDevelopmentPostbacks()();
}

uint64_t sub_1909C()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_191D0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_191D0()
{
  if (qword_34400 != -1)
  {
    swift_once();
  }

  v1 = sub_24048();
  sub_17824(v1, qword_38D60);
  swift_errorRetain();
  v2 = sub_24028();
  v3 = sub_247E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to transmit development postbacks with error: %@", v4, 0xCu);
    sub_46C4(v5, &qword_34950, &qword_26370);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_19374()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19404;

  return static DeveloperMode.clearDevelopmentPostbacks()();
}

uint64_t sub_19404()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_19538, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19538()
{
  if (qword_34400 != -1)
  {
    swift_once();
  }

  v1 = sub_24048();
  sub_17824(v1, qword_38D60);
  swift_errorRetain();
  v2 = sub_24028();
  v3 = sub_247E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to clear development postbacks with error: %@", v4, 0xCu);
    sub_46C4(v5, &qword_34950, &qword_26370);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_19720(void *a1)
{
  v24 = sub_1F7C(&qword_34A78, &qword_265A0);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_1F7C(&qword_34A80, &qword_265A8);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1F7C(&qword_34A88, &qword_265B0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_1B7D8(a1, a1[3]);
  sub_1BC58();
  v10 = v26;
  sub_249E8();
  if (v10)
  {
    return sub_1B870(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_248E8();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_24868();
    swift_allocError();
    v18 = v17;
    sub_1F7C(&qword_349E8, &qword_26540);
    *v18 = &type metadata for ConfigurePostbacksState.InteractionType;
    sub_24898();
    sub_24858();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_1B870(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1BCAC();
    sub_24888();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1BD00();
    sub_24888();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_1B870(v26);
  return v27;
}

uint64_t sub_19B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000;
  if (v4 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6E776F646572 && a2 == 0xEA00000000006461 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656761676E656572 && a2 == 0xEC000000746E656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24958();

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

uint64_t sub_19C80(void *a1)
{
  v29 = sub_1F7C(&qword_34A18, &qword_26560);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_1F7C(&qword_34A20, &qword_26568);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_1F7C(&qword_34A28, &qword_26570);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1F7C(&qword_34A30, &qword_26578);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_1B7D8(a1, a1[3]);
  sub_1BB08();
  v12 = v35;
  sub_249E8();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = sub_248E8();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = sub_24868();
    swift_allocError();
    v21 = v20;
    sub_1F7C(&qword_349E8, &qword_26540);
    *v21 = &type metadata for ConfigurePostbacksState.ConversionType;
    sub_24898();
    sub_24858();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_1B870(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_1BC04();
    v22 = v11;
    sub_24888();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_1BBB0();
    v22 = v11;
    sub_24888();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_1BB5C();
  sub_24888();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_1B870(v35);
  return v36;
}

uint64_t sub_1A210(void *a1)
{
  v24 = sub_1F7C(&qword_349C8, &qword_26528);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_1F7C(&qword_349D0, &qword_26530);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1F7C(&qword_349D8, &qword_26538);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_1B7D8(a1, a1[3]);
  sub_1BA0C();
  v10 = v26;
  sub_249E8();
  if (v10)
  {
    return sub_1B870(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_248E8();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_24868();
    swift_allocError();
    v18 = v17;
    sub_1F7C(&qword_349E8, &qword_26540);
    *v18 = &type metadata for ConfigurePostbacksState.ConversionWindows;
    sub_24898();
    sub_24858();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_1B870(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1BA60();
    sub_24888();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1BAB4();
    sub_24888();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_1B870(v26);
  return v27;
}

uint64_t sub_1A64C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7305076 && a2 == 0xE300000000000000;
  if (v3 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6565726874 && a2 == 0xE500000000000000 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1920298854 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24958();

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

uint64_t sub_1A760(void *a1)
{
  v29 = sub_1F7C(&qword_34BD8, &qword_27260);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_1F7C(&qword_34BE0, &qword_27268);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_1F7C(&qword_34BE8, &qword_27270);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1F7C(&qword_34BF0, &qword_27278);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_1B7D8(a1, a1[3]);
  sub_1CC18();
  v12 = v35;
  sub_249E8();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = sub_248E8();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = sub_24868();
    swift_allocError();
    v21 = v20;
    sub_1F7C(&qword_349E8, &qword_26540);
    *v21 = &type metadata for ConfigurePostbacksState.PostbackConfigurationModel.SourceIDDigits;
    sub_24898();
    sub_24858();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_1B870(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_1CD14();
    v22 = v11;
    sub_24888();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_1CCC0();
    v22 = v11;
    sub_24888();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_1CC6C();
  sub_24888();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_1B870(v35);
  return v36;
}

uint64_t sub_1ACF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657372616F63 && a2 == 0xE600000000000000 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701734758 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24958();

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