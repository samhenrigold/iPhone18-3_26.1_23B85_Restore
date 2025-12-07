uint64_t sub_19A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19E8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_19A0(&qword_25198, &qword_19B38);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v25 - v2;
  v28 = sub_19A0(&qword_251A0, &qword_19B40);
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v25 - v4;
  v33 = v1;
  sub_19A0(&qword_251A8, &qword_19B48);
  sub_3040(&qword_251B0, &qword_251A8, &qword_19B48, &protocol conformance descriptor for TupleView<A>);
  sub_18C04();
  v6 = *(v1 + 40);
  v7 = *(v1 + 72);
  v36 = *(v1 + 56);
  v37 = v7;
  v38 = *(v1 + 88);
  v34 = *(v1 + 24);
  v35 = v6;
  sub_19A0(&qword_251B8, &qword_19B50);
  sub_18CC4();
  v41 = v44[2];
  v42 = v44[3];
  v43 = v45;
  v39 = v44[0];
  v40 = v44[1];
  v8 = swift_allocObject();
  v9 = *(v1 + 80);
  *(v8 + 80) = *(v1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(v1 + 96);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  v11 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v11;
  sub_3008(v1, &v34);
  v27 = sub_19A0(&qword_25190, &qword_19B30);
  v12 = sub_3040(&qword_251C0, &qword_251A0, &qword_19B40, &protocol conformance descriptor for List<A, B>);
  v26 = sub_3088();
  v13 = v28;
  sub_18C94();

  v46[2] = v41;
  v46[3] = v42;
  v47 = v43;
  v46[0] = v39;
  v46[1] = v40;
  sub_49A0(v46, &qword_25190, &qword_19B30);
  (*(v3 + 8))(v5, v13);
  v39 = *(v1 + 8);
  sub_19A0(&qword_251D0, &qword_19B58);
  sub_18CE4();
  v14 = swift_allocObject();
  v15 = *(v1 + 80);
  *(v14 + 80) = *(v1 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(v1 + 96);
  v16 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v16;
  v17 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v17;
  v18 = swift_allocObject();
  v19 = *(v1 + 80);
  *(v18 + 80) = *(v1 + 64);
  *(v18 + 96) = v19;
  *(v18 + 112) = *(v1 + 96);
  v20 = *(v1 + 16);
  *(v18 + 16) = *v1;
  *(v18 + 32) = v20;
  v21 = *(v1 + 48);
  *(v18 + 48) = *(v1 + 32);
  *(v18 + 64) = v21;
  sub_3008(v1, &v34);
  sub_3008(v1, &v34);
  sub_19A0(&qword_251D8, &qword_19B60);
  *&v34 = v13;
  *(&v34 + 1) = v27;
  *&v35 = v12;
  *(&v35 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  sub_3728();
  v22 = v29;
  v23 = v32;
  sub_18C84();

  return (*(v31 + 8))(v23, v22);
}

uint64_t sub_1EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = sub_18DA4();
  v87 = *(v3 - 8);
  v88 = v3;
  __chkstk_darwin(v3);
  v86 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18E04();
  __chkstk_darwin(v5 - 8);
  v85 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19A0(&qword_25210, &qword_19C78);
  v8 = __chkstk_darwin(v7 - 8);
  v94 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v82 - v10;
  v12 = sub_19A0(&qword_25218, &qword_19C80);
  __chkstk_darwin(v12 - 8);
  v14 = v82 - v13;
  v15 = sub_18A24();
  __chkstk_darwin(v15 - 8);
  v17 = (v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_189D4();
  __chkstk_darwin(v18 - 8);
  v20 = (v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_18E24();
  __chkstk_darwin(v21 - 8);
  v96 = sub_189E4();
  v101 = *(v96 - 8);
  v22 = __chkstk_darwin(v96);
  v24 = v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v102 = v82 - v25;
  v26 = type metadata accessor for DefaultAppSection(0);
  v90 = *(v26 - 8);
  v91 = v26;
  v27 = __chkstk_darwin(v26);
  v99 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v100 = v82 - v29;
  v30 = sub_18F54();
  v92 = sub_18F44();
  v97 = v30;
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_18DB4();
  sub_AC04(v20);
  sub_18A14();
  sub_189F4();
  sub_2AD8(a1);
  sub_AC04(v20);
  sub_18A14();
  sub_189F4();
  v31 = *(*a1 + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_isCallingAppMDMAllowed);
  v93 = v11;
  v98 = v24;
  if (v31 == 1)
  {
    v32 = [objc_opt_self() currentDevice];
    [v32 userInterfaceIdiom];
  }

  v33 = v96;
  v34 = v101;
  sub_18DB4();
  sub_AC04(v20);
  sub_18A14();
  sub_189F4();
  v35 = *(v34 + 56);
  v101 = v34 + 56;
  v83 = v35;
  v36 = v35(v14, 0, 1, v33);
  v37 = *a1;
  v89 = (*&stru_158.segname[(swift_isaMask & **a1) + 8])(v36);
  sub_3008(a1, &v109);
  v38 = sub_18F44();
  v82[1] = v17;
  v39 = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = &protocol witness table for MainActor;
  v41 = *(a1 + 80);
  *(v40 + 96) = *(a1 + 64);
  *(v40 + 112) = v41;
  *(v40 + 128) = *(a1 + 96);
  v42 = *(a1 + 16);
  *(v40 + 32) = *a1;
  *(v40 + 48) = v42;
  v43 = *(a1 + 48);
  *(v40 + 64) = *(a1 + 32);
  *(v40 + 80) = v43;
  sub_3008(a1, &v109);
  v44 = sub_18F44();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = &protocol witness table for MainActor;
  v46 = *(a1 + 80);
  *(v45 + 96) = *(a1 + 64);
  *(v45 + 112) = v46;
  *(v45 + 128) = *(a1 + 96);
  v47 = *(a1 + 16);
  *(v45 + 32) = *a1;
  *(v45 + 48) = v47;
  v48 = *(a1 + 48);
  *(v45 + 64) = *(a1 + 32);
  *(v45 + 80) = v48;
  v49 = sub_18D24();
  v115[2] = v111;
  v115[3] = v112;
  v115[4] = v113;
  v116 = v114;
  v115[0] = v109;
  v115[1] = v110;
  v50 = (*(&stru_68.reserved2 + (swift_isaMask & *v37)))(v49);
  v84 = v14;
  v51 = sub_C470(0, v102, v98, v14, v89, v115, (v50 & 1) == 0, v100);
  v52 = (*(&stru_B8.size + (swift_isaMask & *v37)))(v51);
  v53 = 1;
  v54 = v93;
  if (v52)
  {
    sub_18DB4();
    sub_AC04(v20);
    v82[0] = v20;
    sub_18A14();
    sub_189F4();
    sub_18DF4();
    v117._countAndFlagsBits = 0;
    v117._object = 0xE000000000000000;
    sub_18DE4(v117);
    v56 = v87;
    v55 = v88;
    v57 = v54;
    v58 = v86;
    (*(v87 + 104))(v86, enum case for String.LocalizationValue.Placeholder.object(_:), v88);
    sub_18DC4();
    v59 = v58;
    v54 = v57;
    (*(v56 + 8))(v59, v55);
    v118._countAndFlagsBits = 0xD000000000000075;
    v118._object = 0x800000000001BF30;
    sub_18DE4(v118);
    sub_18E14();
    sub_AC04(v82[0]);
    sub_18A14();
    v60 = v98;
    sub_189F4();
    v61 = v84;
    v62 = v83(v84, 1, 1, v96);
    v63 = (*(&stru_158.reserved2 + (swift_isaMask & *v37)))(v62);
    sub_3008(a1, &v109);
    v64 = sub_18F44();
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v65 + 24) = &protocol witness table for MainActor;
    v66 = *(a1 + 80);
    *(v65 + 96) = *(a1 + 64);
    *(v65 + 112) = v66;
    *(v65 + 128) = *(a1 + 96);
    v67 = *(a1 + 16);
    *(v65 + 32) = *a1;
    *(v65 + 48) = v67;
    v68 = *(a1 + 48);
    *(v65 + 64) = *(a1 + 32);
    *(v65 + 80) = v68;
    sub_3008(a1, &v109);
    v69 = sub_18F44();
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = &protocol witness table for MainActor;
    v71 = *(a1 + 80);
    *(v70 + 96) = *(a1 + 64);
    *(v70 + 112) = v71;
    *(v70 + 128) = *(a1 + 96);
    v72 = *(a1 + 16);
    *(v70 + 32) = *a1;
    *(v70 + 48) = v72;
    v73 = *(a1 + 48);
    *(v70 + 64) = *(a1 + 32);
    *(v70 + 80) = v73;
    sub_18D24();
    v111 = v105;
    v112 = v106;
    v113 = v107;
    v114 = v108;
    v109 = v103;
    v110 = v104;
    v74 = variable initialization expression of DefaultCallingAppsSettingsProvider.isAppSubPane();
    v75 = v99;
    sub_C470(1, v102, v60, v61, v63, &v109, v74 & 1, v99);
    sub_4D58(v75, v54);
    v53 = 0;
  }

  (*(v90 + 56))(v54, v53, 1, v91);
  v76 = v99;
  v77 = v100;
  sub_48D4(v100, v99);
  v78 = v94;
  sub_4938(v54, v94, &qword_25210, &qword_19C78);
  v79 = v95;
  sub_48D4(v76, v95);
  v80 = sub_19A0(&unk_25220, qword_19C88);
  sub_4938(v78, v79 + *(v80 + 48), &qword_25210, &qword_19C78);
  sub_49A0(v54, &qword_25210, &qword_19C78);
  sub_4A00(v77);
  sub_49A0(v78, &qword_25210, &qword_19C78);
  sub_4A00(v76);
}

uint64_t sub_2A90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2AD8(void *a1)
{
  v2 = sub_18DA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18E04();
  __chkstk_darwin(v6 - 8);
  if (*(*a1 + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_isCallingAppMDMAllowed) == 1)
  {
    sub_18DF4();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    sub_18DE4(v10);
    (*(v3 + 104))(v5, enum case for String.LocalizationValue.Placeholder.object(_:), v2);
    sub_18DC4();
    (*(v3 + 8))(v5, v2);
    v11._countAndFlagsBits = 0xD00000000000005BLL;
    v11._object = 0x800000000001C0F0;
    sub_18DE4(v11);
    return sub_18E14();
  }

  else
  {

    return sub_18DB4();
  }
}

uint64_t sub_2CD4(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v4 = a2[3];
  v49 = a2[2];
  v50 = v4;
  v51 = *(a2 + 8);
  v5 = a2[1];
  v47 = *a2;
  v48 = v5;
  sub_18F54();
  sub_18F44();
  sub_18F04();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v7 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
    (*(&stru_108.reloff + (swift_isaMask & **(v2 + 16))))(&v42, isCurrentExecutor);
    v8 = v42;
    v9 = v47;
    v38 = v48;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    *&v27 = v47;
    *(&v27 + 1) = v7;
    v28 = v48;
    v29 = v49;
    v30 = v50;
    v31 = v51;
    v24 = v49;
    v25 = v50;
    v26 = v51;
    v22 = v27;
    v23 = v48;
    if (*(&v42 + 1))
    {
      v18 = v43;
      v19 = v44;
      v20 = v45;
      v21 = v46;
      v17 = v42;
      sub_4938(&v47, v15, &qword_25190, &qword_19B30);
      sub_4938(&v27, v15, &qword_25190, &qword_19B30);
      sub_310C();
      v10 = sub_18D94();
      v13[2] = v19;
      v13[3] = v20;
      v14 = v21;
      v13[0] = v17;
      v13[1] = v18;
      sub_467C(v13);
      v15[2] = v24;
      v15[3] = v25;
      v16 = v26;
      v15[0] = v22;
      v15[1] = v23;
      sub_467C(v15);
      *&v17 = v9;
      *(&v17 + 1) = v7;
      v18 = v38;
      v19 = v39;
      v20 = v40;
      v21 = v41;
      sub_49A0(&v17, &qword_25190, &qword_19B30);
      v11 = v10 ^ 1;
    }

    else
    {
      v19 = v29;
      v20 = v30;
      v21 = v31;
      v17 = v27;
      v18 = v28;
      sub_4938(&v47, v15, &qword_25190, &qword_19B30);
      sub_4938(&v27, v15, &qword_25190, &qword_19B30);
      sub_467C(&v17);
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v34 = v43;
      *&v27 = v9;
      *(&v27 + 1) = v7;
      v31 = v41;
      v32 = v8;
      v35 = v44;
      v36 = v45;
      v33 = 0;
      v37 = v46;
      sub_49A0(&v27, &qword_25208, &qword_19C70);
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v27 = *(v3 + 24);
  LOBYTE(v22) = v11 & 1;
  sub_19A0(&qword_251D0, &qword_19B58);
  sub_18CD4();
}

uint64_t sub_3040(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2A90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_3088()
{
  result = qword_251C8;
  if (!qword_251C8)
  {
    sub_2A90(&qword_25190, &qword_19B30);
    sub_310C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_251C8);
  }

  return result;
}

unint64_t sub_310C()
{
  result = qword_25290;
  if (!qword_25290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25290);
  }

  return result;
}

uint64_t sub_3160(uint64_t a1)
{
  v2 = sub_18AA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_AD88();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_18A84();
  v8 = sub_18FC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "User validation sheet dismissed.", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(a1 + 40);
  v11 = *(a1 + 72);
  v23[2] = *(a1 + 56);
  v23[3] = v11;
  v23[4] = *(a1 + 88);
  v23[0] = *(a1 + 24);
  v23[1] = v10;
  v12 = *(a1 + 40);
  v13 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v13;
  v21 = *(a1 + 88);
  v17 = *(a1 + 24);
  v18 = v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_4938(v23, v22, &qword_251B8, &qword_19B50);
  sub_19A0(&qword_251B8, &qword_19B50);
  sub_18CD4();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v21;
  v22[0] = v17;
  v22[1] = v18;
  sub_49A0(v22, &qword_251B8, &qword_19B50);
}

uint64_t sub_33F4()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

__n128 sub_3460@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(v1 + 56);
  v5 = *(v1 + 88);
  v34 = *(v1 + 72);
  v35 = v5;
  v36 = *(v1 + 104);
  v32 = *(v1 + 40);
  v33 = v4;
  sub_19A0(&qword_251B8, &qword_19B50);
  v6 = sub_18CC4();
  if (*(&v42[0] + 1))
  {
    v45 = v42[0];
    v46 = v42[1];
    v47 = v42[2];
    v48 = v42[3];
    v49 = v43;
    (*(&stru_108.reloff + (swift_isaMask & **(v1 + 16))))(v44, v6);
    v7 = swift_allocObject();
    v8 = *(v2 + 96);
    *(v7 + 80) = *(v2 + 80);
    *(v7 + 96) = v8;
    *(v7 + 112) = *(v2 + 112);
    v9 = *(v2 + 32);
    *(v7 + 16) = *(v2 + 16);
    *(v7 + 32) = v9;
    v10 = *(v2 + 64);
    *(v7 + 48) = *(v2 + 48);
    *(v7 + 64) = v10;
    v11 = v46;
    *(v7 + 120) = v45;
    v12 = v47;
    v13 = v48;
    *(v7 + 184) = v49;
    *(v7 + 168) = v13;
    *(v7 + 152) = v12;
    *(v7 + 136) = v11;
    sub_3008(v2 + 16, &v32);
    sub_4938(v42, &v32, &qword_25190, &qword_19B30);
    sub_17D44(v44, &v45, sub_3FBC, v7, v21);
    v14 = sub_18AE4();
    v15 = sub_18BF4();

    v28 = v21[6];
    v29 = v21[7];
    v30 = v21[8];
    *v31 = v21[9];
    v24 = v21[2];
    v25 = v21[3];
    v26 = v21[4];
    v27 = v21[5];
    v22 = v21[0];
    v23 = v21[1];
    *&v31[16] = v14;
    v31[24] = v15;
    nullsub_1();
    v40 = v30;
    v41[0] = *v31;
    *(v41 + 9) = *&v31[9];
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
  }

  else
  {

    sub_3F10(&v32);
  }

  v16 = v41[0];
  *(a1 + 128) = v40;
  *(a1 + 144) = v16;
  *(a1 + 153) = *(v41 + 9);
  v17 = v37;
  *(a1 + 64) = v36;
  *(a1 + 80) = v17;
  v18 = v39;
  *(a1 + 96) = v38;
  *(a1 + 112) = v18;
  v19 = v33;
  *a1 = v32;
  *(a1 + 16) = v19;
  result = v35;
  *(a1 + 32) = v34;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_3728()
{
  result = qword_251E0;
  if (!qword_251E0)
  {
    sub_2A90(&qword_251D8, &qword_19B60);
    sub_37A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_251E0);
  }

  return result;
}

unint64_t sub_37A0()
{
  result = qword_251E8;
  if (!qword_251E8)
  {
    sub_2A90(&qword_251F0, &qword_19B68);
    sub_3820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_251E8);
  }

  return result;
}

unint64_t sub_3820()
{
  result = qword_251F8;
  if (!qword_251F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_251F8);
  }

  return result;
}

uint64_t sub_3874(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AD88();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_18A84();
  v12 = sub_18FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    *&v41[0] = v15;
    *v14 = 136446210;
    if (a1)
    {
      v16 = 0x616D7269666E6F63;
    }

    else
    {
      v16 = 0x74616C65636E6163;
    }

    v28 = a1;
    if (a1)
    {
      v17 = 0xEC0000006E6F6974;
    }

    else
    {
      v17 = 0xEB000000006E6F69;
    }

    v18 = sub_3FCC(v16, v17, v41);
    v27 = v6;
    v19 = v18;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v11, v12, "User validation sheet returned %{public}s via button.", v14, 0xCu);
    sub_4574(v15);

    a3 = v29;

    (*(v7 + 8))(v9, v27);
    v20 = v28;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    v20 = a1;
  }

  v21 = *(a2 + 40);
  v22 = *(a2 + 72);
  v41[2] = *(a2 + 56);
  v41[3] = v22;
  v41[4] = *(a2 + 88);
  v41[0] = *(a2 + 24);
  v41[1] = v21;
  v23 = *(a2 + 40);
  v24 = *(a2 + 72);
  v37 = *(a2 + 56);
  v38 = v24;
  v39 = *(a2 + 88);
  v35 = *(a2 + 24);
  v36 = v23;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  sub_4938(v41, v40, &qword_251B8, &qword_19B50);
  sub_19A0(&qword_251B8, &qword_19B50);
  sub_18CD4();
  v40[2] = v37;
  v40[3] = v38;
  v40[4] = v39;
  v40[0] = v35;
  v40[1] = v36;
  result = sub_49A0(v40, &qword_251B8, &qword_19B50);
  if (v20)
  {
    return (*&stru_1A8.segname[(swift_isaMask & **a2) + 8])(a3);
  }

  return result;
}

double sub_3BB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18CB4();
  sub_19A0(&qword_25190, &qword_19B30);
  sub_18CB4();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(&v5 + 1);
  *(a2 + 40) = v6;
  *(a2 + 56) = v7;
  *(a2 + 72) = v8;
  result = *&v9;
  *(a2 + 88) = v9;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_3D1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_3D34(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_3D60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_3DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3E10()
{
  sub_2A90(&qword_25198, &qword_19B38);
  sub_2A90(&qword_251D8, &qword_19B60);
  sub_2A90(&qword_251A0, &qword_19B40);
  sub_2A90(&qword_25190, &qword_19B30);
  sub_3040(&qword_251C0, &qword_251A0, &qword_19B40, &protocol conformance descriptor for List<A, B>);
  sub_3088();
  swift_getOpaqueTypeConformance2();
  sub_3728();
  return swift_getOpaqueTypeConformance2();
}

double sub_3F10(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 153) = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_3F30()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

unint64_t sub_3FCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4098(v11, 0, 0, 1, a1, a2);
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
    sub_45C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4574(v11);
  return v7;
}

unint64_t sub_4098(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_41A4(a5, a6);
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
    result = sub_19044();
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

char *sub_41A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_41F0(a1, a2);
  sub_4320(&off_20CF0);
  return v3;
}

char *sub_41F0(uint64_t a1, unint64_t a2)
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

  v6 = sub_440C(v5, 0);
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

  result = sub_19044();
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
        v10 = sub_18ED4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_440C(v10, 0);
        result = sub_19034();
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

uint64_t sub_4320(uint64_t result)
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

  result = sub_4480(result, v11, 1, v3);
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

void *sub_440C(uint64_t a1, uint64_t a2)
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

  sub_19A0(&qword_25200, &qword_19F80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4480(char *result, int64_t a2, char a3, char *a4)
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
    sub_19A0(&qword_25200, &qword_19F80);
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

uint64_t sub_4574(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_45C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_46D4@<Q0>(uint64_t a1@<X8>)
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*&stru_108.segname[(swift_isaMask & **(v1 + 32)) - 8])(v6, isCurrentExecutor);

  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_47D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v6 = *(a1 + 64);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*&stru_1A8.segname[swift_isaMask & **(v1 + 32)])(v5);
}

uint64_t sub_48D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4938(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_19A0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_49A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_19A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_4A00(uint64_t a1)
{
  v2 = type metadata accessor for DefaultAppSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_4A5C@<Q0>(uint64_t a1@<X8>)
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(&stru_108.reloff + (swift_isaMask & **(v1 + 32))))(v6, isCurrentExecutor);

  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_4B60()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_4BD4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v2;
  v15 = *(a1 + 64);
  v3 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v3;
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(v1 + 72);
  v5 = *(v1 + 104);
  v13[2] = *(v1 + 88);
  v13[3] = v5;
  v13[4] = *(v1 + 120);
  v13[0] = *(v1 + 56);
  v13[1] = v4;
  v9 = *(v1 + 88);
  v10 = *(v1 + 104);
  v11 = *(v1 + 120);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  sub_4620(v14, v12);
  sub_4938(v13, v12, &qword_251B8, &qword_19B50);
  sub_19A0(&qword_251B8, &qword_19B50);
  sub_18CD4();
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v11;
  v12[0] = v7;
  v12[1] = v8;
  sub_49A0(v12, &qword_251B8, &qword_19B50);
}

uint64_t sub_4D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4DE8()
{
  v0 = sub_18A24();
  __chkstk_darwin(v0 - 8);
  v1 = sub_18E24();
  __chkstk_darwin(v1 - 8);
  sub_18DB4();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  result = sub_18E84();
  qword_262D8 = result;
  unk_262E0 = v3;
  return result;
}

uint64_t sub_4F24()
{
  v0 = sub_18A24();
  __chkstk_darwin(v0 - 8);
  v1 = sub_18E24();
  __chkstk_darwin(v1 - 8);
  sub_18DB4();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  result = sub_18E84();
  qword_262E8 = result;
  unk_262F0 = v3;
  return result;
}

uint64_t sub_5050()
{
  v0 = sub_18A24();
  __chkstk_darwin(v0 - 8);
  v1 = sub_18E24();
  __chkstk_darwin(v1 - 8);
  sub_18DB4();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  result = sub_18E84();
  qword_262F8 = result;
  unk_26300 = v3;
  return result;
}

uint64_t sub_5184()
{
  v0 = sub_18A24();
  __chkstk_darwin(v0 - 8);
  v1 = sub_18E24();
  __chkstk_darwin(v1 - 8);
  sub_18DB4();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  result = sub_18E84();
  qword_26308 = result;
  unk_26310 = v3;
  return result;
}

uint64_t sub_52AC()
{
  v0 = sub_18A24();
  __chkstk_darwin(v0 - 8);
  v1 = sub_18E24();
  __chkstk_darwin(v1 - 8);
  sub_18DB4();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  result = sub_18E84();
  qword_26318 = result;
  unk_26320 = v3;
  return result;
}

uint64_t sub_53DC()
{
  if (qword_25890 != -1)
  {
    swift_once();
  }

  *&xmmword_26328 = 0xD000000000000012;
  *(&xmmword_26328 + 1) = 0x800000000001C2D0;
  qword_26338 = qword_262D8;
  unk_26340 = unk_262E0;
  xmmword_26348 = 0uLL;
  xmmword_26358 = xmmword_19CA0;
  qword_26368 = 0;
}

__int128 *sub_5478()
{
  if (qword_258B8 != -1)
  {
    swift_once();
  }

  return &xmmword_26328;
}

id sub_54C8()
{
  if (qword_25898 != -1)
  {
    swift_once();
  }

  v1 = qword_262E8;
  v0 = unk_262F0;
  v2 = objc_opt_self();

  result = [v2 sharedInstance];
  if (result)
  {
    v4 = result;
    v5 = [result deviceType];

    if (v5 == &dword_0 + 2)
    {
      if (qword_258B0 != -1)
      {
        swift_once();
      }

      v6 = &qword_26318;
    }

    else
    {
      if (qword_258A0 != -1)
      {
        swift_once();
      }

      v6 = &qword_262F8;
    }

    v7 = *v6;

    *&xmmword_26370 = 0xD000000000000015;
    *(&xmmword_26370 + 1) = 0x800000000001C2B0;
    qword_26380 = v1;
    unk_26388 = v0;
    *&xmmword_26390 = v7;
    *(&xmmword_26390 + 1) = result;
    xmmword_263A0 = xmmword_19CA0;
    qword_263B0 = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int128 *sub_5638()
{
  if (qword_258C0 != -1)
  {
    swift_once();
  }

  return &xmmword_26370;
}

uint64_t sub_5688()
{
  if (qword_258A0 != -1)
  {
    swift_once();
  }

  *&xmmword_263B8 = 0xD00000000000003ALL;
  *(&xmmword_263B8 + 1) = 0x800000000001C150;
  qword_263C8 = qword_262F8;
  unk_263D0 = unk_26300;
  xmmword_263D8 = 0uLL;
  xmmword_263E8 = xmmword_19CA0;
  qword_263F8 = 2;
}

uint64_t sub_5728()
{
  if (qword_258A8 != -1)
  {
    swift_once();
  }

  *&xmmword_26400 = 0xD00000000000002FLL;
  *(&xmmword_26400 + 1) = 0x800000000001C190;
  qword_26410 = qword_26308;
  unk_26418 = unk_26310;
  xmmword_26420 = 0uLL;
  xmmword_26430 = xmmword_19CA0;
  qword_26440 = 1;
}

Swift::Int sub_57C8()
{
  v1 = v0[5];
  sub_19094();
  sub_18EC4();
  sub_18EC4();
  if (!v1)
  {
    sub_190B4(0);
    if (v0[7])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_190B4(0);
    goto LABEL_6;
  }

  sub_190B4(1u);
  sub_18EC4();
  if (!v0[7])
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_190B4(1u);
  sub_18EC4();
LABEL_6:
  sub_190A4(v0[8]);
  return sub_190C4();
}

uint64_t sub_58C0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_58D0(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[7];
  v4 = v1[8];
  sub_18EC4();
  sub_18EC4();
  if (!v2)
  {
    sub_190B4(0);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_190B4(0);
    goto LABEL_6;
  }

  sub_190B4(1u);
  sub_18EC4();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_190B4(1u);
  sub_18EC4();
LABEL_6:
  sub_190A4(v4);
}

Swift::Int sub_59A4(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[7];
  v4 = v1[8];
  sub_19094();
  sub_18EC4();
  sub_18EC4();
  if (!v2)
  {
    sub_190B4(0);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_190B4(0);
    goto LABEL_6;
  }

  sub_190B4(1u);
  sub_18EC4();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_190B4(1u);
  sub_18EC4();
LABEL_6:
  sub_190A4(v4);
  return sub_190C4();
}

BOOL sub_5A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_A5D0(v7, v9);
}

void sub_5AF4(void *a1)
{
  v1 = *&stru_1A8.segname[(swift_isaMask & *a1) + 16];
  v2 = a1;
  v1();
}

uint64_t sub_5B9C()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    if (*(v0 + 16))
    {
      v2 = 9;
    }

    else
    {
      v2 = 4;
    }

    v3 = v1;
    v4 = [v1 canChangeDefaultAppForCategory:v2];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_5C50(uint64_t a1, char a2)
{
  *(v3 + 459) = a2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v2;
  v4 = sub_18AA4();
  *(v3 + 424) = v4;
  *(v3 + 432) = *(v4 - 8);
  *(v3 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_5D14, v2, 0);
}

uint64_t sub_5D14()
{
  v42 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = sub_ACA0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_18A84();
  v6 = sub_18FC4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 432);
    v38 = *(v0 + 440);
    v8 = *(v0 + 424);
    v9 = *(v0 + 459);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136446210;
    v12 = v9 & 1;
    *(v0 + 458) = v9 & 1;
    sub_A718();
    v13 = sub_19074();
    v15 = sub_3FCC(v13, v14, &v41);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "Fetching default app for %{public}s", v10, 0xCu);
    sub_4574(v11);

    (*(v7 + 8))(v38, v8);
  }

  else
  {
    v17 = *(v0 + 432);
    v16 = *(v0 + 440);
    v18 = *(v0 + 424);
    v19 = *(v0 + 459);

    (*(v17 + 8))(v16, v18);
    v12 = v19 & 1;
  }

  *(v0 + 456) = v12;
  *(v0 + 457) = 0;
  sub_A6C4();
  sub_18EE4();
  sub_18EE4();
  if (*(v0 + 376) == *(v0 + 392) && *(v0 + 384) == *(v0 + 400))
  {
  }

  else
  {
    v20 = sub_19084();

    if ((v20 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (([*(*(v0 + 416) + 112) phoneAppCoupledRelayEnabled] & 1) == 0)
  {
    v21 = defaultAppRelayTelephonySetting();
    if (v21 == 2)
    {
      if (qword_258C8 != -1)
      {
        swift_once();
      }

      *(v0 + 152) = qword_263F8;
      v33 = xmmword_263D8;
      *(v0 + 136) = xmmword_263E8;
      *(v0 + 120) = v33;
      v34 = xmmword_263B8;
      *(v0 + 104) = *&qword_263C8;
      *(v0 + 88) = v34;
      v25 = *(v0 + 152);
      v37 = *(v0 + 120);
      v39 = *(v0 + 136);
      v26 = *(v0 + 104);
      v27 = *(v0 + 112);
      v28 = *(v0 + 88);
      v29 = *(v0 + 96);
      v22 = v0 + 88;
      v30 = v0 + 160;
      goto LABEL_20;
    }

    if (v21 == 1)
    {
      v22 = v0 + 232;
      if (qword_258D0 != -1)
      {
        swift_once();
        v22 = v0 + 232;
      }

      *(v22 + 64) = qword_26440;
      v23 = xmmword_26430;
      *(v22 + 32) = xmmword_26420;
      *(v22 + 48) = v23;
      v24 = *&qword_26410;
      *v22 = xmmword_26400;
      *(v22 + 16) = v24;
      v25 = *(v0 + 296);
      v37 = *(v0 + 264);
      v39 = *(v0 + 280);
      v26 = *(v0 + 248);
      v27 = *(v0 + 256);
      v28 = *(v0 + 232);
      v29 = *(v0 + 240);
      v30 = v0 + 304;
LABEL_20:
      sub_4620(v22, v30);
      v35 = *(v0 + 408);
      *v35 = v28;
      *(v35 + 8) = v29;
      *(v35 + 16) = v26;
      *(v35 + 24) = v27;
      *(v35 + 32) = v37;
      *(v35 + 48) = v39;
      *(v35 + 64) = v25;

      v36 = *(v0 + 8);

      return v36();
    }
  }

LABEL_14:
  v40 = (*(**(v0 + 416) + 112) + **(**(v0 + 416) + 112));
  v31 = swift_task_alloc();
  *(v0 + 448) = v31;
  *v31 = v0;
  v31[1] = sub_61D4;

  return v40(v0 + 16, v12);
}

uint64_t sub_61D4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 408);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  *v6 = *(v1 + 16);
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 32) = v7;
  *(v6 + 48) = v8;
  *(v6 + 64) = v3;

  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_6350(uint64_t a1, char a2)
{
  *(v3 + 969) = a2;
  *(v3 + 880) = a1;
  v4 = sub_18AA4();
  *(v3 + 888) = v4;
  *(v3 + 896) = *(v4 - 8);
  *(v3 + 904) = swift_task_alloc();
  *(v3 + 912) = swift_task_alloc();
  *(v3 + 920) = swift_task_alloc();
  *(v3 + 928) = swift_task_alloc();
  *(v3 + 936) = swift_task_alloc();
  *(v3 + 944) = swift_task_alloc();
  *(v3 + 952) = swift_task_alloc();

  return _swift_task_switch(sub_6490, v2, 0);
}

uint64_t sub_6490()
{
  v135 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 896);
  v3 = sub_ACA0();
  v4 = *(v2 + 16);
  v130 = v3;
  v4(v1);
  v5 = sub_18A84();
  v6 = sub_18FC4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 896);
    v120 = *(v0 + 888);
    v123 = *(v0 + 952);
    v8 = *(v0 + 969);
    v9 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v134[0] = v11;
    *v10 = 136446210;
    *(v0 + 968) = v8 & 1;
    sub_A718();
    v12 = sub_19074();
    v14 = sub_3FCC(v12, v13, v134);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "Fetching LaunchServices backed default app for %{public}s", v10, 0xCu);
    sub_4574(v11);

    v4 = v9;

    v15 = *(v7 + 8);
    v15(v123, v120);
  }

  else
  {
    v16 = *(v0 + 952);
    v17 = *(v0 + 896);
    v18 = *(v0 + 888);

    v15 = *(v17 + 8);
    v15(v16, v18);
  }

  v19 = [objc_opt_self() defaultWorkspace];
  if (!v19)
  {
    (v4)(*(v0 + 936), v130, *(v0 + 888));
    v32 = sub_18A84();
    v33 = sub_18FC4();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 936);
    v36 = *(v0 + 888);
    v37 = *(v0 + 969);
    if (v34)
    {
      v121 = v4;
      v38 = swift_slowAlloc();
      v124 = v15;
      v39 = swift_slowAlloc();
      v134[0] = v39;
      *v38 = 136446210;
      *(v0 + 962) = v37 & 1;
      sub_A718();
      v40 = sub_19074();
      v42 = sub_3FCC(v40, v41, v134);

      *(v38 + 4) = v42;
      v43 = v33;
      v44 = v37 & 1;
      _os_log_impl(&dword_0, v32, v43, "Fetched nil defaultApp for category %{public}s", v38, 0xCu);
      sub_4574(v39);
      v15 = v124;

      v4 = v121;

      v124(v35, v36);
    }

    else
    {

      v15(v35, v36);
      v44 = v37 & 1;
    }

    *(v0 + 966) = v44;
    *(v0 + 965) = 0;
    sub_A6C4();
    sub_18EE4();
    sub_18EE4();
    if (*(v0 + 808) == *(v0 + 824) && *(v0 + 816) == *(v0 + 832))
    {
    }

    else
    {
      v63 = sub_19084();

      if ((v63 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (supportsDefaultAppRelayTelephonySetting())
    {
      (v4)(*(v0 + 928), v130, *(v0 + 888));
      v64 = sub_18A84();
      v65 = sub_18FC4();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_0, v64, v65, "We are on iPad, returning None for default calling app", v66, 2u);
      }

      v67 = *(v0 + 928);
      v68 = *(v0 + 888);

      v15(v67, v68);
      if (qword_258D0 != -1)
      {
        swift_once();
      }

      *(v0 + 512) = qword_26440;
      v69 = xmmword_26430;
      *(v0 + 480) = xmmword_26420;
      *(v0 + 496) = v69;
      v70 = *&qword_26410;
      *(v0 + 448) = xmmword_26400;
      *(v0 + 464) = v70;
      v71 = *(v0 + 512);
      v129 = *(v0 + 480);
      v132 = *(v0 + 496);
      v72 = *(v0 + 464);
      v29 = *(v0 + 472);
      v31 = *(v0 + 448);
      v27 = *(v0 + 456);
      sub_4620(v0 + 448, v0 + 520);
      v73 = v72;
      v75 = v129;
      v74 = v132;
      v76 = v71;
      goto LABEL_53;
    }

LABEL_26:
    (v4)(*(v0 + 920), v130, *(v0 + 888));
    v77 = sub_18A84();
    v78 = sub_18FB4();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v0 + 920);
    v81 = *(v0 + 888);
    if (v79)
    {
      v82 = v44;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v134[0] = v84;
      *v83 = 136446210;
      *(v0 + 963) = v82;
      sub_A718();
      v85 = sub_19074();
      v126 = v15;
      v87 = sub_3FCC(v85, v86, v134);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_0, v77, v78, "Couldn't fetch default %{public}s app: no defaultApplication exists", v83, 0xCu);
      sub_4574(v84);

      v126(v80, v81);
    }

    else
    {

      v15(v80, v81);
    }

    v99 = v0 + 232;
    if (qword_258B8 != -1)
    {
      swift_once();
      v99 = v0 + 232;
    }

    *(v99 + 64) = qword_26368;
    v100 = xmmword_26358;
    *(v99 + 32) = xmmword_26348;
    *(v99 + 48) = v100;
    v101 = *&qword_26338;
    *v99 = xmmword_26328;
    *(v99 + 16) = v101;
    v28 = *(v0 + 296);
    v128 = *(v0 + 264);
    v131 = *(v0 + 280);
    v30 = *(v0 + 248);
    v29 = *(v0 + 256);
    v31 = *(v0 + 232);
    v27 = *(v0 + 240);
    sub_4620(v99, v0 + 304);
    goto LABEL_34;
  }

  if (*(v0 + 969))
  {
    v20 = 9;
  }

  else
  {
    v20 = 4;
  }

  *(v0 + 872) = 0;
  v21 = v19;
  v22 = [v19 defaultApplicationForCategory:v20 error:v0 + 872];

  v23 = *(v0 + 872);
  if (!v22)
  {
    v125 = v15;
    v45 = *(v0 + 912);
    v46 = *(v0 + 888);
    v47 = v23;
    sub_189C4();

    swift_willThrow();
    (v4)(v45, v130, v46);
    swift_errorRetain();
    v48 = sub_18A84();
    v49 = sub_18FB4();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 912);
    v52 = *(v0 + 888);
    v53 = *(v0 + 969);
    if (v50)
    {
      v122 = v4;
      v54 = swift_slowAlloc();
      v119 = v52;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v134[0] = v56;
      *v54 = 136446466;
      v118 = v51;
      v57 = v53 & 1;
      *(v0 + 964) = v53 & 1;
      sub_A718();
      v58 = sub_19074();
      v60 = sub_3FCC(v58, v59, v134);

      *(v54 + 4) = v60;
      *(v54 + 12) = 2112;
      swift_errorRetain();
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 14) = v61;
      *v55 = v61;
      _os_log_impl(&dword_0, v48, v49, "Couldn’t fetch default %{public}s app: %@", v54, 0x16u);
      sub_49A0(v55, &qword_25240, &qword_19CE8);

      sub_4574(v56);

      v4 = v122;

      v62 = v125;
      v125(v118, v119);
    }

    else
    {

      v62 = v125;
      v125(v51, v52);
      v57 = v53 & 1;
    }

    *(v0 + 960) = v57;
    *(v0 + 961) = 0;
    sub_A6C4();
    sub_18EE4();
    sub_18EE4();
    if (*(v0 + 840) == *(v0 + 856) && *(v0 + 848) == *(v0 + 864))
    {
    }

    else
    {
      v102 = sub_19084();

      if ((v102 & 1) == 0)
      {
LABEL_46:
        if (qword_258B8 != -1)
        {
          swift_once();
        }

        v110 = qword_26368;
        v111 = xmmword_26358;
        *(v0 + 48) = xmmword_26348;
        *(v0 + 64) = v111;
        *(v0 + 80) = v110;
        v112 = *&qword_26338;
        *(v0 + 16) = xmmword_26328;
        *(v0 + 32) = v112;
        sub_4620(v0 + 16, v0 + 736);

        v76 = *(v0 + 80);
        v75 = *(v0 + 48);
        v74 = *(v0 + 64);
        v73 = *(v0 + 32);
        v29 = *(v0 + 40);
        v31 = *(v0 + 16);
        v27 = *(v0 + 24);
        goto LABEL_53;
      }
    }

    if (supportsDefaultAppRelayTelephonySetting())
    {
      (v4)(*(v0 + 904), v130, *(v0 + 888));
      v103 = sub_18A84();
      v104 = sub_18FC4();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_0, v103, v104, "We are on iPad, returning None for default calling app", v105, 2u);
      }

      v106 = *(v0 + 904);
      v107 = *(v0 + 888);

      v62(v106, v107);
      if (qword_258D0 != -1)
      {
        swift_once();
      }

      v108 = xmmword_26430;
      *(v0 + 624) = xmmword_26420;
      *(v0 + 640) = v108;
      *(v0 + 656) = qword_26440;
      v109 = *&qword_26410;
      *(v0 + 592) = xmmword_26400;
      *(v0 + 608) = v109;
      sub_4620(v0 + 592, v0 + 376);

      v76 = *(v0 + 656);
      v75 = *(v0 + 624);
      v74 = *(v0 + 640);
      v73 = *(v0 + 608);
      v29 = *(v0 + 616);
      v31 = *(v0 + 592);
      v27 = *(v0 + 600);
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  v24 = v4;
  v25 = v23;
  v26 = v22;
  sub_A378(v26, v0 + 664);
  v27 = *(v0 + 672);
  if (v27)
  {
    v28 = *(v0 + 728);
    v128 = *(v0 + 696);
    v131 = *(v0 + 712);
    v29 = *(v0 + 688);
    v30 = *(v0 + 680);
    v31 = *(v0 + 664);

LABEL_34:
    v73 = v30;
    v75 = v128;
    v74 = v131;
    v76 = v28;
    goto LABEL_53;
  }

  (v24)(*(v0 + 944), v130, *(v0 + 888));
  v88 = sub_18A84();
  v89 = sub_18FB4();
  v90 = os_log_type_enabled(v88, v89);
  v91 = *(v0 + 944);
  v92 = *(v0 + 888);
  if (v90)
  {
    v133 = *(v0 + 944);
    v93 = *(v0 + 969);
    v94 = swift_slowAlloc();
    v127 = v15;
    v95 = swift_slowAlloc();
    v134[0] = v95;
    *v94 = 136446210;
    *(v0 + 967) = v93 & 1;
    sub_A718();
    v96 = sub_19074();
    v98 = sub_3FCC(v96, v97, v134);

    *(v94 + 4) = v98;
    _os_log_impl(&dword_0, v88, v89, "Couldn't fetch default %{public}s app: missing workspace or bundle ID", v94, 0xCu);
    sub_4574(v95);

    v127(v133, v92);
  }

  else
  {

    v15(v91, v92);
  }

  if (qword_258B8 != -1)
  {
    swift_once();
  }

  v113 = xmmword_26358;
  *(v0 + 192) = xmmword_26348;
  *(v0 + 208) = v113;
  *(v0 + 224) = qword_26368;
  v114 = *&qword_26338;
  *(v0 + 160) = xmmword_26328;
  *(v0 + 176) = v114;
  sub_4620(v0 + 160, v0 + 88);

  v76 = *(v0 + 224);
  v75 = *(v0 + 192);
  v74 = *(v0 + 208);
  v73 = *(v0 + 176);
  v29 = *(v0 + 184);
  v31 = *(v0 + 160);
  v27 = *(v0 + 168);
LABEL_53:
  v115 = *(v0 + 880);
  *v115 = v31;
  *(v115 + 8) = v27;
  *(v115 + 16) = v73;
  *(v115 + 24) = v29;
  *(v115 + 32) = v75;
  *(v115 + 48) = v74;
  *(v115 + 64) = v76;

  v116 = *(v0 + 8);

  return v116();
}

uint64_t sub_72CC(char a1)
{
  *(v2 + 1160) = v1;
  *(v2 + 1228) = a1;
  v3 = sub_19A0(&qword_25248, &qword_19CF8);
  *(v2 + 1168) = v3;
  *(v2 + 1176) = *(v3 - 8);
  *(v2 + 1184) = swift_task_alloc();
  v4 = sub_18AA4();
  *(v2 + 1192) = v4;
  *(v2 + 1200) = *(v4 - 8);
  *(v2 + 1208) = swift_task_alloc();
  *(v2 + 1216) = swift_task_alloc();

  return _swift_task_switch(sub_7404, v1, 0);
}

uint64_t sub_7404()
{
  v157 = v0;
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1200);
  v151 = sub_ACA0();
  v149 = *(v2 + 16);
  v149(v1);
  v3 = sub_18A84();
  v4 = sub_18FC4();
  if (os_log_type_enabled(v3, v4))
  {
    v153 = *(v0 + 1216);
    v5 = *(v0 + 1200);
    v6 = *(v0 + 1192);
    v7 = *(v0 + 1228);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v156[0] = v9;
    *v8 = 136446210;
    *(v0 + 1227) = v7 & 1;
    sub_A718();
    v10 = sub_19074();
    v12 = sub_3FCC(v10, v11, v156);

    *(v8 + 4) = v12;
    v13 = v4;
    v14 = v7 & 1;
    _os_log_impl(&dword_0, v3, v13, "Fetching available apps for %{public}s", v8, 0xCu);
    sub_4574(v9);

    v147 = *(v5 + 8);
    v147(v153, v6);
  }

  else
  {
    v15 = *(v0 + 1216);
    v16 = *(v0 + 1200);
    v17 = *(v0 + 1192);
    v18 = *(v0 + 1228);

    v147 = *(v16 + 8);
    v147(v15, v17);
    v14 = v18 & 1;
  }

  v154 = (v0 + 1144);
  *(v0 + 1144) = &_swiftEmptyArrayStorage;
  *(v0 + 1225) = v14;
  *(v0 + 1224) = 0;
  sub_A6C4();
  sub_18EE4();
  sub_18EE4();
  if (*(v0 + 1112) == *(v0 + 1128) && *(v0 + 1120) == *(v0 + 1136))
  {

LABEL_8:
    sub_9940(v19);
    if (!v21)
    {
      v21 = &_swiftEmptyArrayStorage;
    }

    sub_8380(v21);
    goto LABEL_11;
  }

  v20 = sub_19084();

  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = v0 + 16;
  if (*(v0 + 1228))
  {
    v23 = 9;
  }

  else
  {
    v23 = 4;
  }

  v24 = [objc_opt_self() enumeratorForViableDefaultAppsForCategory:v23 options:0];
  v25 = sub_A0F0();

  v26 = v25[2];
  if (v26)
  {
    v137 = v14;
    v27 = (v0 + 1024);
    v28 = (v25 + 4);
    do
    {
      sub_45C0(v28, v0 + 1080);
      sub_AB54(0, &qword_25250, LSApplicationRecord_ptr);
      if (swift_dynamicCast())
      {
        v31 = *(v0 + 1152);
        sub_A378(v31, v0 + 736);
        v32 = *(v0 + 744);
        if (v32)
        {
          v33 = *(v0 + 736);
          v34 = *(v0 + 768);
          *v27 = *(v0 + 752);
          *(v0 + 1040) = v34;
          *(v0 + 1056) = *(v0 + 784);
          *(v0 + 1072) = *(v0 + 800);
          v35 = *v154;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_9D90(0, *(v35 + 2) + 1, 1, v35);
          }

          v37 = *(v35 + 2);
          v36 = *(v35 + 3);
          if (v37 >= v36 >> 1)
          {
            v35 = sub_9D90((v36 > 1), v37 + 1, 1, v35);
          }

          *(v35 + 2) = v37 + 1;
          v38 = &v35[72 * v37];
          *(v38 + 4) = v33;
          *(v38 + 5) = v32;
          v39 = *v27;
          v40 = *(v0 + 1040);
          v41 = *(v0 + 1056);
          *(v38 + 12) = *(v0 + 1072);
          *(v38 + 4) = v40;
          *(v38 + 5) = v41;
          *(v38 + 3) = v39;
          *v154 = v35;
        }

        else
        {
          (v149)(*(v0 + 1208), v151, *(v0 + 1192));
          v42 = v31;
          v43 = sub_18A84();
          v44 = sub_18FB4();

          if (os_log_type_enabled(v43, v44))
          {
            v143 = v44;
            v45 = swift_slowAlloc();
            v156[0] = swift_slowAlloc();
            *v45 = 136446466;
            *(v0 + 1226) = v137;
            sub_A718();
            v46 = sub_19074();
            v48 = sub_3FCC(v46, v47, v156);

            *(v45 + 4) = v48;
            *(v45 + 12) = 2080;
            v49 = [v42 bundleIdentifier];
            if (v49)
            {
              v50 = v49;
              v51 = sub_18E74();
              v53 = v52;
            }

            else
            {
              v53 = 0xE300000000000000;
              v51 = 7104878;
            }

            v54 = *(v0 + 1208);
            v139 = *(v0 + 1192);
            v55 = sub_3FCC(v51, v53, v156);

            *(v45 + 14) = v55;
            _os_log_impl(&dword_0, v43, v143, "Couldn’t initialize %{public}s app: %s", v45, 0x16u);
            swift_arrayDestroy();

            v147(v54, v139);
          }

          else
          {
            v29 = *(v0 + 1208);
            v30 = *(v0 + 1192);

            v147(v29, v30);
          }
        }
      }

      v28 += 32;
      --v26;
    }

    while (v26);

    v22 = v0 + 16;
  }

  else
  {
  }

  v56 = *(v0 + 1184);
  v57 = *(v0 + 1176);
  v58 = *(v0 + 1168);
  swift_getKeyPath();
  sub_189B4();
  sub_19A0(&qword_25258, &unk_19D20);
  sub_3040(&qword_25260, &qword_25258, &unk_19D20, &protocol conformance descriptor for [A]);
  sub_3040(&qword_25268, &qword_25258, &unk_19D20, &protocol conformance descriptor for [A]);
  sub_3040(&qword_25270, &qword_25248, &qword_19CF8, &protocol conformance descriptor for KeyPathComparator<A>);
  sub_18D84();
  (*(v57 + 8))(v56, v58);
  v59 = *(v0 + 1144);
  if (qword_258D0 != -1)
  {
    swift_once();
  }

  v60 = qword_26440;
  v61 = xmmword_26430;
  *(v22 + 32) = xmmword_26420;
  *(v22 + 48) = v61;
  *(v22 + 64) = v60;
  v62 = *&qword_26410;
  *v22 = xmmword_26400;
  *(v22 + 16) = v62;
  v63 = swift_task_alloc();
  *(v63 + 16) = v22;
  v64 = sub_9FBC(sub_A76C, v63, v59);

  if ((v64 & 1) == 0)
  {
    goto LABEL_80;
  }

  v65 = *(v59 + 16);
  if (!v65)
  {
    goto LABEL_68;
  }

  v134 = (v0 + 376);
  v130 = (v0 + 592);
  v131 = (v0 + 664);

  v66 = 0;
  v67 = 0;
  v141 = v65;
  v144 = v65 - 1;
  for (i = v59; ; v59 = i)
  {
    *(v0 + 808) = *(v59 + v66 + 32);
    v68 = *(v59 + v66 + 48);
    v69 = *(v59 + v66 + 64);
    v70 = *(v59 + v66 + 80);
    *(v0 + 872) = *(v59 + v66 + 96);
    *(v0 + 840) = v69;
    *(v0 + 856) = v70;
    *(v0 + 824) = v68;
    v71 = *(v0 + 808);
    v72 = *(v0 + 816);
    sub_4620(v0 + 808, v0 + 88);
    if (qword_258D0 != -1)
    {
      swift_once();
    }

    v73 = xmmword_26400;
    v74 = qword_26410;
    v75 = xmmword_26420;
    v155 = unk_26418;
    v152 = *(&xmmword_26430 + 1);
    v150 = xmmword_26430;
    v148 = qword_26440;
    if (__PAIR128__(v72, v71) != xmmword_26400 && (sub_19084() & 1) == 0 || (*(v0 + 824) != v74 || *(v0 + 832) != v155) && (sub_19084() & 1) == 0)
    {
LABEL_55:
      sub_467C(v0 + 808);
      goto LABEL_56;
    }

    if (*(v0 + 848))
    {
      if (!*(&v75 + 1) || *(v0 + 840) != v75 && (sub_19084() & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(&v75 + 1))
    {
      goto LABEL_55;
    }

    v76 = *(v0 + 864);
    if (!v76)
    {
      break;
    }

    if (!v152)
    {
      goto LABEL_55;
    }

    if (*(v0 + 856) == v150 && v76 == v152)
    {
      result = sub_467C(v0 + 808);
    }

    else
    {
      v78 = sub_19084();
      result = sub_467C(v0 + 808);
      if ((v78 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    if (*(v0 + 872) == v148)
    {
      goto LABEL_87;
    }

LABEL_56:
    if (v144 == v67)
    {
      v59 = i;
      v79 = i;
      v65 = v141;
      goto LABEL_65;
    }

    v66 += 72;
    ++v67;
  }

  result = sub_467C(v0 + 808);
  if (v152 || *(v0 + 872) != v148)
  {
    goto LABEL_56;
  }

  v152 = 0;
LABEL_87:
  v97 = v67 + 1;
  if (__OFADD__(v67, 1))
  {
    goto LABEL_134;
  }

  if (v97 == v141)
  {
    v79 = i;
LABEL_90:
    v65 = v67;
    v59 = i;
LABEL_65:
    v80 = *(v79 + 2);
    if (v80 < v65)
    {
LABEL_129:
      __break(1u);
    }

    else
    {
      if (v65 < 0)
      {
        __break(1u);
LABEL_68:

        v80 = 0;
        v79 = v59;
      }

      if (!__OFADD__(v80, v65 - v80))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156[0] = v79;
        if (!isUniquelyReferenced_nonNull_native || v65 > *(v79 + 3) >> 1)
        {
          if (v80 <= v65)
          {
            v82 = v65;
          }

          else
          {
            v82 = v80;
          }

          v79 = sub_9D90(isUniquelyReferenced_nonNull_native, v82, 1, v79);
          v156[0] = v79;
        }

        sub_A7CC(v65, v80, 0);
        if (qword_258D0 == -1)
        {
LABEL_77:
          v83 = xmmword_26430;
          *(v0 + 192) = xmmword_26420;
          *(v0 + 208) = v83;
          *(v0 + 224) = qword_26440;
          v84 = *&qword_26410;
          *(v0 + 160) = xmmword_26400;
          *(v0 + 176) = v84;
          sub_4620(v0 + 160, v0 + 232);
          v86 = *(v79 + 2);
          v85 = *(v79 + 3);
          if (v86 >= v85 >> 1)
          {
            v79 = sub_9D90((v85 > 1), v86 + 1, 1, v79);
          }

          *(v79 + 2) = v86 + 1;
          v87 = &v79[72 * v86];
          *(v87 + 2) = *(v0 + 160);
          v88 = *(v0 + 176);
          v89 = *(v0 + 192);
          v90 = *(v0 + 208);
          *(v87 + 12) = *(v0 + 224);
          *(v87 + 4) = v89;
          *(v87 + 5) = v90;
          *(v87 + 3) = v88;

          v59 = v79;
LABEL_80:
          if (!*(v59 + 16))
          {

            sub_19A0(&qword_25278, &qword_1A2B0);
            v59 = swift_allocObject();
            *(v59 + 16) = xmmword_19CB0;
            if (qword_258B8 != -1)
            {
              swift_once();
            }

            v91 = xmmword_26348;
            v92 = xmmword_26358;
            *(v0 + 984) = xmmword_26348;
            *(v0 + 1000) = v92;
            v93 = qword_26368;
            *(v0 + 1016) = qword_26368;
            v95 = xmmword_26328;
            v94 = *&qword_26338;
            *(v0 + 952) = xmmword_26328;
            *(v0 + 968) = v94;
            *(v59 + 64) = v91;
            *(v59 + 80) = v92;
            *(v59 + 96) = v93;
            *(v59 + 32) = v95;
            *(v59 + 48) = v94;
            sub_4620(v0 + 952, v0 + 880);
          }

          v96 = *(v0 + 8);

          return v96(v59);
        }

LABEL_131:
        swift_once();
        goto LABEL_77;
      }
    }

    __break(1u);
    goto LABEL_131;
  }

  v129 = v76;
  v98 = v66 + 104;
  v79 = i;
  v99 = *(i + 16);
  while (2)
  {
    if (v97 >= v99)
    {
      __break(1u);
      goto LABEL_129;
    }

    v138 = v99;
    v140 = v98;
    v142 = v97;
    v145 = v79;
    v100 = &v79[v98];
    result = *v100;
    v101 = v100[2];
    v102 = v100[3];
    v103 = v100[5];
    v135 = v100[4];
    v136 = v100[7];
    v132 = v100[6];
    v133 = v100[8];
    v104 = *v100 == v73 && v100[1] == *(&v73 + 1);
    if (v104 || (result = sub_19084(), (result & 1) != 0))
    {
      v105 = v101 == v74 && v102 == v155;
      if (v105 || (result = sub_19084(), (result & 1) != 0))
      {
        if (v103)
        {
          if (!*(&v75 + 1))
          {
            break;
          }

          if (__PAIR128__(v103, v135) != v75)
          {
            result = sub_19084();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        else if (*(&v75 + 1))
        {
          break;
        }

        if (v136)
        {
          if (!v129)
          {
            break;
          }

          result = v132;
          if (v132 != v150 || v136 != v152)
          {
            result = sub_19084();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        else if (v129)
        {
          break;
        }

        if (v133 != v148)
        {
          break;
        }

        v106 = v142;
        v79 = v145;
        v107 = v140;
LABEL_126:
        v97 = v106 + 1;
        v99 = *(v79 + 2);
        v98 = v107 + 72;
        if (v97 == v99)
        {
          goto LABEL_90;
        }

        continue;
      }
    }

    break;
  }

  v106 = v142;
  if (v142 == v67)
  {
    v79 = v145;
    v107 = v140;
LABEL_125:
    ++v67;
    goto LABEL_126;
  }

  v79 = v145;
  if (v67 < v138)
  {
    v108 = v145 + 32 + 72 * v67;
    *v134 = *v108;
    v109 = *(v108 + 16);
    v110 = *(v108 + 32);
    v111 = *(v108 + 48);
    *(v0 + 440) = *(v108 + 64);
    *(v0 + 408) = v110;
    *(v0 + 424) = v111;
    *(v0 + 392) = v109;
    v113 = *(v100 + 2);
    v112 = *(v100 + 3);
    v114 = *(v100 + 1);
    *(v0 + 368) = v100[8];
    *(v0 + 336) = v113;
    *(v0 + 352) = v112;
    *(v0 + 320) = v114;
    *(v0 + 304) = *v100;
    sub_4620(v134, v0 + 448);
    sub_4620(v0 + 304, v0 + 520);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_A0DC(v145);
    }

    v107 = v140;
    v115 = &v79[72 * v67];
    *v131 = *(v115 + 2);
    v116 = *(v115 + 3);
    v117 = *(v115 + 4);
    v118 = *(v115 + 5);
    *(v0 + 728) = *(v115 + 12);
    *(v0 + 696) = v117;
    *(v0 + 712) = v118;
    *(v0 + 680) = v116;
    v120 = *(v0 + 336);
    v119 = *(v0 + 352);
    v121 = *(v0 + 320);
    *(v115 + 12) = *(v0 + 368);
    *(v115 + 4) = v120;
    *(v115 + 5) = v119;
    *(v115 + 3) = v121;
    *(v115 + 2) = *(v0 + 304);
    result = sub_467C(v131);
    if (v142 >= *(v79 + 2))
    {
      goto LABEL_133;
    }

    v122 = &v79[v140];
    *v130 = *&v79[v140];
    v123 = *&v79[v140 + 16];
    v124 = *&v79[v140 + 32];
    v125 = *&v79[v140 + 48];
    *(v0 + 656) = *&v79[v140 + 64];
    *(v0 + 624) = v124;
    *(v0 + 640) = v125;
    *(v0 + 608) = v123;
    v127 = *(v0 + 408);
    v126 = *(v0 + 424);
    v128 = *(v0 + 392);
    *(v122 + 8) = *(v0 + 440);
    *(v122 + 2) = v127;
    *(v122 + 3) = v126;
    *(v122 + 1) = v128;
    *v122 = *v134;
    sub_467C(v130);
    goto LABEL_125;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_8380(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_9D90(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_8478(uint64_t a1, char a2)
{
  *(v3 + 602) = a2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v2;
  v4 = sub_19A0(&qword_25280, &qword_19D38);
  *(v3 + 456) = v4;
  *(v3 + 464) = *(v4 - 8);
  *(v3 + 472) = swift_task_alloc();
  v5 = sub_18AA4();
  *(v3 + 480) = v5;
  *(v3 + 488) = *(v5 - 8);
  *(v3 + 496) = swift_task_alloc();
  *(v3 + 504) = swift_task_alloc();

  return _swift_task_switch(sub_85B0, v2, 0);
}

uint64_t sub_85B0()
{
  v54 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = sub_ACA0();
  *(v0 + 512) = v4;
  v5 = *(v3 + 16);
  *(v0 + 520) = v5;
  *(v0 + 528) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_18A84();
  v7 = sub_18FC4();
  if (os_log_type_enabled(v6, v7))
  {
    v50 = *(v0 + 504);
    v9 = *(v0 + 480);
    v8 = *(v0 + 488);
    v10 = *(v0 + 602);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53 = v12;
    *v11 = 136446210;
    v13 = v10 & 1;
    *(v0 + 601) = v10 & 1;
    sub_A718();
    v14 = sub_19074();
    v16 = sub_3FCC(v14, v15, &v53);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v6, v7, "Setting default app for %{public}s", v11, 0xCu);
    sub_4574(v12);

    v17 = *(v8 + 8);
    v17(v50, v9);
  }

  else
  {
    v18 = *(v0 + 504);
    v19 = *(v0 + 480);
    v20 = *(v0 + 488);
    v21 = *(v0 + 602);

    v17 = *(v20 + 8);
    v17(v18, v19);
    v13 = v21 & 1;
  }

  *(v0 + 536) = v17;
  *(v0 + 603) = v13;
  *(v0 + 592) = v13;
  *(v0 + 593) = 0;
  *(v0 + 544) = sub_A6C4();
  sub_18EE4();
  sub_18EE4();
  if (*(v0 + 344) == *(v0 + 360) && *(v0 + 352) == *(v0 + 368))
  {
  }

  else
  {
    v22 = sub_19084();

    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (([*(*(v0 + 448) + 112) phoneAppCoupledRelayEnabled] & 1) == 0)
  {
    v23 = *(*(v0 + 440) + 64);
    setDefaultAppRelayTelephonySetting();
    if (v23)
    {
      goto LABEL_36;
    }
  }

LABEL_10:
  *(v0 + 594) = v13;
  *(v0 + 595) = 0;
  sub_18EE4();
  sub_18EE4();
  if (*(v0 + 376) == *(v0 + 392) && *(v0 + 384) == *(v0 + 400))
  {
  }

  else
  {
    v24 = sub_19084();

    if ((v24 & 1) == 0)
    {
      v36 = *(v0 + 440);
      v27 = *v36;
      v26 = v36[1];
LABEL_22:
      objc_allocWithZone(LSApplicationRecord);

      v37 = sub_9BCC(v27, v26, 1);
      *(v0 + 568) = v37;
      v38 = v37;
      v39 = [objc_opt_self() defaultWorkspace];
      *(v0 + 576) = v39;
      if (v39)
      {
        v40 = v39;
        v30 = v0 + 16;
        v41 = *(v0 + 464);
        v42 = *(v0 + 472);
        v43 = *(v0 + 456);
        v44 = 4;
        if (*(v0 + 602))
        {
          v44 = 9;
        }

        v52 = v44;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 597;
        *(v0 + 24) = sub_9198;
        swift_continuation_init();
        *(v0 + 272) = v43;
        v45 = sub_A8A4((v0 + 248));
        v46 = v38;
        sub_19A0(&qword_25288, qword_19D40);
        sub_18F14();
        (*(v41 + 32))(v45, v42, v43);
        *(v0 + 216) = _NSConcreteStackBlock;
        *(v0 + 224) = 1107296256;
        *(v0 + 232) = sub_989C;
        *(v0 + 240) = &unk_20FB8;
        [v40 setDefaultApplicationForCategory:v52 toApplicationRecord:v46 completionHandler:?];
        (*(v41 + 8))(v45, v43);
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  v25 = *(v0 + 440);
  v27 = *v25;
  v26 = v25[1];
  if ((*v25 != 0xD00000000000002FLL || 0x800000000001C190 != v26) && (sub_19084() & 1) == 0)
  {
    goto LABEL_22;
  }

  v28 = [objc_opt_self() defaultWorkspace];
  *(v0 + 552) = v28;
  if (v28)
  {
    v29 = v28;
    v30 = v0 + 80;
    v32 = *(v0 + 464);
    v31 = *(v0 + 472);
    v33 = *(v0 + 456);
    v34 = 4;
    if (*(v0 + 602))
    {
      v34 = 9;
    }

    v51 = v34;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 600;
    *(v0 + 88) = sub_8F48;
    swift_continuation_init();
    *(v0 + 336) = v33;
    v35 = sub_A8A4((v0 + 312));
    sub_19A0(&qword_25288, qword_19D40);
    sub_18F14();
    (*(v32 + 32))(v35, v31, v33);
    *(v0 + 280) = _NSConcreteStackBlock;
    *(v0 + 288) = 1107296256;
    *(v0 + 296) = sub_989C;
    *(v0 + 304) = &unk_20FE0;
    [v29 setPreferenceForNoHandlerForCategory:v51 completionHandler:v0 + 280];
    (*(v32 + 8))(v35, v33);
LABEL_26:

    return _swift_continuation_await(v30);
  }

LABEL_30:
  *(v0 + 598) = *(v0 + 603);
  *(v0 + 599) = 0;
  sub_18EE4();
  sub_18EE4();
  if (*(v0 + 408) == *(v0 + 424) && *(v0 + 416) == *(v0 + 432))
  {

    goto LABEL_34;
  }

  v47 = sub_19084();

  if (v47)
  {
LABEL_34:
    if ([*(*(v0 + 448) + 112) phoneAppCoupledRelayEnabled])
    {
      TUUserManuallySetDefaultCallingApp();
    }
  }

LABEL_36:

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_8F48()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 560) = v2;
  v3 = *(v1 + 448);
  if (v2)
  {
    v4 = sub_93F8;
  }

  else
  {
    v4 = sub_9068;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_9068()
{
  *(v0 + 598) = *(v0 + 603);
  *(v0 + 599) = 0;
  sub_18EE4();
  sub_18EE4();
  if (*(v0 + 408) == *(v0 + 424) && *(v0 + 416) == *(v0 + 432))
  {
  }

  else
  {
    v2 = sub_19084();

    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([*(*(v0 + 448) + 112) phoneAppCoupledRelayEnabled])
  {
    TUUserManuallySetDefaultCallingApp();
  }

LABEL_10:

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_9198()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 584) = v2;
  v3 = *(v1 + 448);
  if (v2)
  {
    v4 = sub_9644;
  }

  else
  {
    v4 = sub_92B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_92B8()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);

  *(v0 + 598) = *(v0 + 603);
  *(v0 + 599) = 0;
  sub_18EE4();
  sub_18EE4();
  if (*(v0 + 408) == *(v0 + 424) && *(v0 + 416) == *(v0 + 432))
  {
  }

  else
  {
    v3 = sub_19084();

    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if ([*(*(v0 + 448) + 112) phoneAppCoupledRelayEnabled])
  {
    TUUserManuallySetDefaultCallingApp();
  }

LABEL_7:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_93F8()
{
  v20 = v0;
  v1 = *(v0 + 552);
  swift_willThrow();

  v2 = *(v0 + 440);
  (*(v0 + 520))(*(v0 + 496), *(v0 + 512), *(v0 + 480));
  sub_4620(v2, v0 + 144);
  v3 = sub_18A84();
  v4 = sub_18FB4();
  sub_467C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 603);
    v17 = *(v0 + 496);
    v18 = *(v0 + 536);
    v16 = *(v0 + 480);
    v6 = *(v0 + 440);
    v7 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v0 + 596) = v5;
    sub_A718();
    v8 = sub_19074();
    v10 = sub_3FCC(v8, v9, v19);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_3FCC(*v6, *(v6 + 8), v19);
    _os_log_impl(&dword_0, v3, v4, "Couldn’t change default %{public}s app: %s", v7, 0x16u);
    swift_arrayDestroy();

    v18(v17, v16);
  }

  else
  {
    v11 = *(v0 + 536);
    v12 = *(v0 + 496);
    v13 = *(v0 + 480);

    v11(v12, v13);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_9644()
{
  v21 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  swift_willThrow();

  v3 = *(v0 + 440);
  (*(v0 + 520))(*(v0 + 496), *(v0 + 512), *(v0 + 480));
  sub_4620(v3, v0 + 144);
  v4 = sub_18A84();
  v5 = sub_18FB4();
  sub_467C(v3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 603);
    v18 = *(v0 + 496);
    v19 = *(v0 + 536);
    v17 = *(v0 + 480);
    v7 = *(v0 + 440);
    v8 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v0 + 596) = v6;
    sub_A718();
    v9 = sub_19074();
    v11 = sub_3FCC(v9, v10, v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_3FCC(*v7, *(v7 + 8), v20);
    _os_log_impl(&dword_0, v4, v5, "Couldn’t change default %{public}s app: %s", v8, 0x16u);
    swift_arrayDestroy();

    v19(v18, v17);
  }

  else
  {
    v12 = *(v0 + 536);
    v13 = *(v0 + 496);
    v14 = *(v0 + 480);

    v12(v13, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_989C(uint64_t a1, char a2, void *a3)
{
  sub_AAB8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_19A0(&qword_25280, &qword_19D38);
    sub_18F24();
  }

  else
  {
    sub_19A0(&qword_25280, &qword_19D38);
    sub_18F34();
  }
}

__n128 sub_9940(uint64_t a1)
{
  if (supportsDefaultAppRelayTelephonySetting())
  {
    sub_19A0(&qword_25278, &qword_1A2B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_19CB0;
    if (qword_258D0 != -1)
    {
      v16 = v3;
      swift_once();
      v3 = v16;
    }

    v4 = xmmword_26430;
    v23[2] = xmmword_26420;
    v23[3] = xmmword_26430;
    v5 = qword_26440;
    v24 = qword_26440;
    v7 = xmmword_26400;
    v6 = *&qword_26410;
    v23[0] = xmmword_26400;
    v23[1] = *&qword_26410;
    *(v3 + 64) = xmmword_26420;
    *(v3 + 80) = v4;
    *(v3 + 96) = v5;
    *(v3 + 32) = v7;
    *(v3 + 48) = v6;
    v8 = v3;
    v9 = objc_opt_self();
    sub_4620(v23, &v18);
    if ((([v9 isRelayCallingEnabled] & 1) != 0 || objc_msgSend(v9, "isThumperCallingEnabled")) && (objc_msgSend(*(v1 + 112), "phoneAppCoupledRelayEnabled") & 1) == 0)
    {
      if (qword_258C8 != -1)
      {
        swift_once();
      }

      v20 = xmmword_263D8;
      v21 = xmmword_263E8;
      v22 = qword_263F8;
      v18 = xmmword_263B8;
      v19 = *&qword_263C8;
      sub_4620(&v18, v17);
      v10 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v10 = sub_9D90((v11 > 1), v12 + 1, 1, v8);
      }

      *(v10 + 2) = v12 + 1;
      v13 = &v10[72 * v12];
      *(v13 + 2) = v18;
      result = v19;
      v14 = v20;
      v15 = v21;
      *(v13 + 12) = v22;
      *(v13 + 4) = v14;
      *(v13 + 5) = v15;
      *(v13 + 3) = result;
    }
  }

  return result;
}

uint64_t sub_9B34()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_9B6C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(TUFeatureFlags) init];
  return v0;
}

id sub_9BCC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_18E64();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_189C4();

    swift_willThrow();
  }

  return v6;
}

void *sub_9CA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_9CC4()
{
  v1 = *v0;
  sub_19094();
  sub_190A4(v1);
  return sub_190C4();
}

Swift::Int sub_9D38(uint64_t a1)
{
  v2 = *v1;
  sub_19094();
  sub_190A4(v2);
  return sub_190C4();
}

char *sub_9D90(char *result, int64_t a2, char a3, char *a4)
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
    sub_19A0(&qword_25278, &qword_1A2B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_9EB8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_19084() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_19084() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_19084() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a2[7];
  if (v8)
  {
    if (v9 && (a1[6] == a2[6] && v8 == v9 || (sub_19084() & 1) != 0))
    {
      return a1[8] == a2[8];
    }
  }

  else if (!v9)
  {
    return a1[8] == a2[8];
  }

  return 0;
}

uint64_t sub_9FBC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = a3 + 32;
    v8 = v5 - 1;
    while (1)
    {
      v9 = *(v7 + 16);
      v10 = *(v7 + 48);
      v27 = *(v7 + 32);
      v28 = v10;
      v11 = *(v7 + 16);
      v26[0] = *v7;
      v26[1] = v11;
      v12 = *(v7 + 48);
      v23 = v27;
      v24 = v12;
      v29 = *(v7 + 64);
      v25 = *(v7 + 64);
      v21 = v26[0];
      v22 = v9;
      sub_4620(v26, &v16);
      v13 = a1(&v21);
      if (v3)
      {
        break;
      }

      v4 = v13;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      v17 = v22;
      sub_467C(&v16);
      v14 = v8-- == 0;
      v7 += 72;
      if ((v4 | v14))
      {
        return v4 & 1;
      }
    }

    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_467C(&v16);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void *sub_A0F0()
{
  v0 = sub_18A04();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F94();
  sub_AAFC(&qword_253F0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  sub_19004();
  v3 = &_swiftEmptyArrayStorage;
  v4 = 0;
  if (v24)
  {
    v5 = (&_swiftEmptyArrayStorage + 32);
    while (1)
    {
      result = sub_AB44(v23, v25);
      if (!v4)
      {
        v7 = v3[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_19A0(&unk_25400, &qword_19F78);
        v10 = swift_allocObject();
        v11 = j__malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 1;
        }

        v13 = v12 >> 5;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 5);
        v14 = (v10 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          v16 = v3 + 4;
          if (v10 != v3 || v14 >= v16 + 32 * v15)
          {
            memmove(v10 + 4, v16, 32 * v15);
          }

          v3[2] = 0;
        }

        v5 = (v14 + 32 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v10;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      sub_AB44(v25, v5);
      v5 += 2;
      sub_19004();
      if (!v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  (*(v22 + 8))(v2, v0);
  result = sub_49A0(v23, &qword_253F8, &qword_19F70);
  v18 = v3[3];
  if (v18 < 2)
  {
    return v3;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v3[2] = v20;
    return v3;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_A378(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 bundleIdentifier];
  if (!v4)
  {

    v6 = 0;
    v8 = 0;
    v13 = 0;
    v14 = 0;
LABEL_15:
    v17 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    goto LABEL_16;
  }

  v5 = v4;
  v6 = sub_18E74();
  v8 = v7;

  if (qword_258B8 != -1)
  {
    swift_once();
  }

  v9 = &xmmword_26328;
  v10 = xmmword_26328 == v6 && *(&xmmword_26328 + 1) == v8;
  if (!v10 && (sub_19084() & 1) == 0)
  {
    if (qword_258C0 != -1)
    {
      swift_once();
    }

    v9 = &xmmword_26370;
    if (xmmword_26370 != __PAIR128__(v8, v6) && (sub_19084() & 1) == 0)
    {
      v18 = [v3 localizedName];

      v13 = sub_18E74();
      v14 = v19;

      v20 = [v3 iTunesMetadata];
      v21 = [v20 artistName];

      if (v21)
      {
        v22 = sub_18E74();
        v24 = v23;

        v17 = 0;
        *&v16 = v22;
        *(&v16 + 1) = v24;
        v15 = 0uLL;
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v11 = v9[3];
  v28 = v9[2];
  v29 = v11;
  v30 = *(v9 + 8);
  v12 = v9[1];
  v26 = *v9;
  v27 = v12;
  sub_4620(&v26, v25);

  v8 = *(&v26 + 1);
  v6 = v26;
  v14 = *(&v27 + 1);
  v13 = v27;
  v15 = v28;
  v16 = v29;
  v17 = v30;
LABEL_16:
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
}

BOOL sub_A5D0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_19084() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_19084() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_19084() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a2[7];
  if (v8)
  {
    if (v9 && (a1[6] == a2[6] && v8 == v9 || (sub_19084() & 1) != 0))
    {
      return a1[8] == a2[8];
    }
  }

  else if (!v9)
  {
    return a1[8] == a2[8];
  }

  return 0;
}

unint64_t sub_A6C4()
{
  result = qword_25230;
  if (!qword_25230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25230);
  }

  return result;
}

unint64_t sub_A718()
{
  result = qword_25238;
  if (!qword_25238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25238);
  }

  return result;
}

BOOL sub_A76C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v3;
  v9 = *(a1 + 64);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v5 = *(v2 + 48);
  v10[2] = *(v2 + 32);
  v10[3] = v5;
  v11 = *(v2 + 64);
  v6 = *(v2 + 16);
  v10[0] = *v2;
  v10[1] = v6;
  return sub_9EB8(v8, v10);
}

unint64_t sub_A7CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  if (result != v13 || result >= v13 + 72 * v12)
  {
    result = memmove(result, v13, 72 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t *sub_A8A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 sub_A930(uint64_t a1, uint64_t a2)
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

uint64_t sub_A954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_A99C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void type metadata accessor for TUDefaultAppRelayTelephonySetting()
{
  if (!qword_253E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_253E0);
    }
  }
}

void *sub_AAB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_AAFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_AB44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_AB54(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_ABA8()
{
  type metadata accessor for DefaultCallingAppsSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

uint64_t sub_AC04@<X0>(uint64_t *a1@<X8>)
{
  *a1 = type metadata accessor for DefaultCallingAppsSettingsProvider();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = sub_189D4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_ACC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_AD10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18AA4();
  sub_AE00(v5, a2);
  sub_ACC4(v5, a2);
  return sub_18A94();
}

uint64_t sub_ADAC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_18AA4();

  return sub_ACC4(v4, a2);
}

uint64_t *sub_AE00(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t type metadata accessor for DefaultAppSection(uint64_t a1)
{
  result = qword_25CF0;
  if (!qword_25CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_18F54();
  v31 = sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = sub_19A0(&qword_254A0, &qword_19F98);
  v30 = &v23;
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v23 - v3;
  v5 = sub_19A0(&qword_254A8, &qword_19FA0);
  v26 = &v23;
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v39 = 0;
  v40 = 0xE000000000000000;
  v27 = type metadata accessor for DefaultAppSection(0);
  v8 = (a1 + *(v27 + 36));
  v9 = v8[3];
  v35 = v8[2];
  v36 = v9;
  v37 = v8[4];
  v38 = *(v8 + 10);
  v10 = v8[1];
  v33 = *v8;
  v34 = v10;
  sub_19A0(&qword_25480, &qword_19F88);
  v11 = sub_18D14();
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v33 = v41;
  v34 = v42;
  __chkstk_darwin(v11);
  sub_19A0(&qword_255B0, &qword_1A048);
  sub_D130();
  sub_D184();
  v24 = a1;
  sub_C2CC();
  sub_18CF4();
  v12 = sub_18B34();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B24();
  v16 = sub_3040(&qword_254B0, &qword_254A8, &qword_19FA0, &protocol conformance descriptor for Picker<A, B, C>);
  sub_18C54();
  (*(v13 + 8))(v15, v12);
  (*(v25 + 8))(v7, v5);
  *&v33 = v5;
  *(&v33 + 1) = v12;
  *&v34 = v16;
  *(&v34 + 1) = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v17 = v32;
  v18 = v28;
  sub_18C64();
  (*(v29 + 8))(v4, v18);
  LOBYTE(v16) = *(v24 + *(v27 + 40));
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;

  result = sub_19A0(&qword_25490, &qword_19F90);
  v22 = (v17 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_D284;
  v22[2] = v20;
  return result;
}

uint64_t sub_B3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = type metadata accessor for DefaultAppSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12[5] = *(a1 + *(v3 + 32));
  swift_getKeyPath();
  sub_48D4(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_4D58(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  sub_19A0(&qword_25258, &unk_19D20);
  sub_19A0(&qword_255D0, &qword_1A0A8);
  sub_D4CC();
  v8 = sub_D130();
  v9 = sub_2A90(&qword_254C8, &qword_19FB8);
  v10 = sub_3040(&qword_255C8, &qword_254C8, &qword_19FB8, &protocol conformance descriptor for Label<A, B>);
  v12[1] = v9;
  v12[2] = &_s3AppVN;
  v12[3] = v10;
  v12[4] = v8;
  swift_getOpaqueTypeConformance2();
  sub_18D34();
}

uint64_t sub_B668@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v34 = a1[2];
  v35 = v5;
  v36 = *(a1 + 8);
  v6 = a1[1];
  v32 = *a1;
  v33 = v6;
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_19A0(&qword_254C8, &qword_19FB8);
  v18[1] = v18;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = __chkstk_darwin(v9);
  v18[-2] = &v32;
  v18[-1] = a2;
  __chkstk_darwin(v12);
  v18[-2] = v13;
  v18[-1] = a2;
  sub_19A0(&qword_255D8, &qword_1A0B0);
  sub_D630();
  sub_18CA4();
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v20 = v32;
  v21 = v33;
  v27 = v34;
  v28[0] = v35;
  *&v28[1] = v36;
  v25 = v32;
  v26 = v33;
  BYTE8(v28[1]) = 1;
  (*(v8 + 32))(a3, v11, v7);
  v14 = (a3 + *(sub_19A0(&qword_254D0, &qword_19FC0) + 36));
  v15 = v28[0];
  v14[2] = v27;
  v14[3] = v15;
  *(v14 + 57) = *(v28 + 9);
  v16 = v26;
  *v14 = v25;
  v14[1] = v16;
  v29[2] = v22;
  v29[3] = v23;
  v30 = v24;
  v29[0] = v20;
  v29[1] = v21;
  v31 = 1;
  sub_4620(&v32, v19);
  sub_4938(&v25, v19, &qword_254D8, qword_19FC8);
  sub_49A0(v29, &qword_254D8, qword_19FC8);
}

uint64_t sub_B958@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_19A0(&qword_255D8, &qword_1A0B0);
  __chkstk_darwin(v5);
  v7 = &v26[-v6];
  v8 = sub_19A0(&qword_255F0, &qword_1A0B8);
  v28 = v26;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26[-v10];
  v12 = *a2;
  v13 = *a1;
  v14 = a1[1];
  v15 = sub_4DD0();
  if (*v15 == v13 && v15[1] == v14 || (sub_19084() & 1) != 0)
  {
    goto LABEL_6;
  }

  v22 = sub_4DDC();
  if (*v22 == v13 && v22[1] == v14 || (sub_19084() & 1) != 0)
  {
    v23 = [objc_opt_self() genericApplicationIcon];
    goto LABEL_8;
  }

  v24 = sub_5638();
  if ((*v24 != v13 || *(v24 + 1) != v14) && (sub_19084() & 1) == 0)
  {
    goto LABEL_25;
  }

  v35 = v12;
  v34 = 0;
  sub_A6C4();
  sub_18EE4();
  sub_18EE4();
  if (v32 != v30 || v33 != v31)
  {
    v27 = sub_19084();

    if (v27)
    {
      goto LABEL_6;
    }

LABEL_25:
    v25 = objc_allocWithZone(ISIcon);
    v17 = sub_18E64();
    [v25 initWithBundleIdentifier:v17];
    goto LABEL_7;
  }

LABEL_6:
  v16 = objc_allocWithZone(ISIcon);
  v17 = sub_18E64();
  [v16 initWithType:v17];
LABEL_7:

LABEL_8:
  v18 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  sub_18A74();
  v19 = sub_4DDC();
  if (v13 != *v19 || (v20 = 0.0, v14 != v19[1]))
  {
    if (sub_19084())
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0;
    }
  }

  (*(v9 + 32))(v7, v11, v8);
  *&v7[*(v5 + 36)] = v20;
  sub_D6D0(v7, v29, &qword_255D8, &qword_1A0B0);
}

uint64_t sub_BD8C()
{
  v1 = v0;
  v37 = sub_18E54();
  v36 = *(v37 - 8);
  v2 = __chkstk_darwin(v37);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v35 - v4;
  v6 = sub_19A0(&qword_25218, &qword_19C80);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_189E4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for DefaultAppSection(0);
  sub_4938(&v1[v16[7]], v8, &qword_25218, &qword_19C80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_49A0(v8, &qword_25218, &qword_19C80);
LABEL_12:
    sub_18E44();
    sub_19A0(&qword_255A0, &qword_1A040);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_19CB0;
    v27 = &v1[v16[9]];
    v28 = *(v27 + 3);
    v43 = *(v27 + 2);
    v44 = v28;
    v45 = *(v27 + 4);
    v46 = *(v27 + 10);
    v29 = *(v27 + 1);
    v41 = *v27;
    v42 = v29;
    sub_19A0(&qword_25480, &qword_19F88);
    sub_18D04();
    v31 = v47[2];
    v30 = v47[3];

    sub_467C(v47);
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_D0D4();
    *(v26 + 32) = v31;
    *(v26 + 40) = v30;
    sub_18E34();
    (*(v10 + 16))(v13, &v1[v16[6]], v9);
    v32 = v36;
    v33 = v37;
    (*(v36 + 16))(v35, v5, v37);
    v25 = sub_18E94();
    (*(v32 + 8))(v5, v33);
    return v25;
  }

  (*(v10 + 32))(v15, v8, v9);
  v17 = &v1[v16[9]];
  v18 = *(v17 + 3);
  v43 = *(v17 + 2);
  v44 = v18;
  v45 = *(v17 + 4);
  v46 = *(v17 + 10);
  v19 = *(v17 + 1);
  v41 = *v17;
  v42 = v19;
  sub_19A0(&qword_25480, &qword_19F88);
  sub_18D04();
  v20 = v47[0];
  v21 = v47[1];
  v22 = sub_5638();
  if (v20 == *v22 && v21 == *(v22 + 1))
  {
    sub_467C(v47);
  }

  else
  {
    v23 = sub_19084();
    sub_467C(v47);
    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v40 = *v1;
  v39 = 0;
  sub_A6C4();
  sub_18EE4();
  sub_18EE4();
  if (v41 != v38)
  {
    v24 = sub_19084();

    if (v24)
    {
      goto LABEL_10;
    }

LABEL_11:
    (*(v10 + 8))(v15, v9);
    goto LABEL_12;
  }

LABEL_10:
  (*(v10 + 16))(v13, v15, v9);
  v25 = sub_18EA4();
  (*(v10 + 8))(v15, v9);
  return v25;
}

unint64_t sub_C2CC()
{
  result = qword_25488;
  if (!qword_25488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25488);
  }

  return result;
}

unint64_t sub_C320()
{
  result = qword_25498;
  if (!qword_25498)
  {
    sub_2A90(&qword_25490, &qword_19F90);
    sub_2A90(&qword_254A0, &qword_19F98);
    sub_2A90(&qword_254A8, &qword_19FA0);
    sub_18B34();
    sub_3040(&qword_254B0, &qword_254A8, &qword_19FA0, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_3040(&qword_254B8, &qword_254C0, &unk_19FA8, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25498);
  }

  return result;
}

__n128 sub_C470@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, _BYTE *a8@<X8>)
{
  *a8 = a1 & 1;
  v13 = type metadata accessor for DefaultAppSection(0);
  v14 = v13[5];
  v15 = sub_189E4();
  v16 = *(*(v15 - 8) + 32);
  v16(&a8[v14], a2, v15);
  v16(&a8[v13[6]], a3, v15);
  sub_D6D0(a4, &a8[v13[7]], &qword_25218, &qword_19C80);
  *&a8[v13[8]] = a5;
  v17 = &a8[v13[9]];
  v18 = *(a6 + 48);
  *(v17 + 2) = *(a6 + 32);
  *(v17 + 3) = v18;
  *(v17 + 4) = *(a6 + 64);
  *(v17 + 10) = *(a6 + 80);
  result = *a6;
  v20 = *(a6 + 16);
  *v17 = *a6;
  *(v17 + 1) = v20;
  a8[v13[10]] = a7;
  return result;
}

uint64_t sub_C5A4(uint64_t a1)
{
  v3 = sub_189E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = v1;
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v4 + 16))(v6, v1 + *(a1 + 20), v3);
  v7 = sub_18C14();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v29 = v7;
  v30 = v9;
  v31 = v11 & 1;
  v32 = v13;
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = sub_BD8C();
  v26 = v14;
  sub_C2CC();
  v15 = sub_18C24();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v25 = v15;
  v26 = v17;
  v27 = v19 & 1;
  v28 = v21;
  sub_19A0(&qword_25490, &qword_19F90);
  sub_C320();
  return sub_18D44();
}

uint64_t sub_C818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18B04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_C870()
{
  sub_A6C4();
  sub_18EE4();
  sub_18EE4();
  if (v7 != v5 || v8 != v6)
  {
    v2 = sub_19084();

    if ((v2 & 1) != 0 && *(v0 + 40))
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = v0 + 16;
    return *v3;
  }

  if (!*(v0 + 40))
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = v0 + 32;
  return *v3;
}

uint64_t sub_C954(uint64_t *a1)
{
  if (sub_184BC(2, 26, 0, 0))
  {
    sub_18B54();
  }

  else
  {
    sub_18AF4();
    swift_getWitnessTable();
    sub_18B44();
    sub_18AD4();
    sub_18FF4();
    swift_getWitnessTable();
    sub_18AF4();
    swift_getWitnessTable();
    sub_18B44();
  }

  return sub_18AD4();
}

uint64_t sub_CA7C(uint64_t *a1)
{
  if (sub_184BC(2, 26, 0, 0))
  {
    sub_18B54();
    sub_18AD4();
  }

  else
  {
    sub_18AF4();
    swift_getWitnessTable();
    sub_18B44();
    sub_18AD4();
    sub_18FF4();
    swift_getWitnessTable();
    sub_18AF4();
    swift_getWitnessTable();
    sub_18B44();
    sub_18AD4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_CC70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_189E4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_19A0(&qword_25218, &qword_19C80);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_CD98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_189E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_19A0(&qword_25218, &qword_19C80);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_CEA8(uint64_t a1)
{
  sub_189E4();
  if (v1 <= 0x3F)
  {
    sub_CFA0(319);
    if (v2 <= 0x3F)
    {
      sub_CFF8(319, &qword_25540, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_CFF8(319, &unk_25548, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_CFA0(uint64_t a1)
{
  if (!qword_25538)
  {
    sub_189E4();
    v1 = sub_18FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_25538);
    }
  }
}

void sub_CFF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &_s3AppVN);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_D050()
{
  result = qword_25590;
  if (!qword_25590)
  {
    sub_2A90(&qword_25598, &qword_1A038);
    sub_C320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25590);
  }

  return result;
}

unint64_t sub_D0D4()
{
  result = qword_255A8;
  if (!qword_255A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_255A8);
  }

  return result;
}

unint64_t sub_D130()
{
  result = qword_255B8;
  if (!qword_255B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_255B8);
  }

  return result;
}

unint64_t sub_D184()
{
  result = qword_255C0;
  if (!qword_255C0)
  {
    sub_2A90(&qword_255B0, &qword_1A048);
    sub_2A90(&qword_254C8, &qword_19FB8);
    sub_3040(&qword_255C8, &qword_254C8, &qword_19FB8, &protocol conformance descriptor for Label<A, B>);
    sub_D130();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_255C0);
  }

  return result;
}

uint64_t sub_D29C()
{
  v1 = type metadata accessor for DefaultAppSection(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(*(v1 - 1) + 64);
  v4 = v1[5];
  v5 = sub_189E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3 + v4, v5);
  v7(v0 + v3 + v1[6], v5);
  v8 = v1[7];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return _swift_deallocObject(v0, v3 + v10, v2 | 7);
}

uint64_t sub_D44C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DefaultAppSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_B668(a1, v6, a2);
}

unint64_t sub_D4CC()
{
  result = qword_25268;
  if (!qword_25268)
  {
    sub_2A90(&qword_25258, &unk_19D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25268);
  }

  return result;
}

uint64_t sub_D530@<X0>(uint64_t a1@<X8>)
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_C870();
  sub_C2CC();

  v2 = sub_18C24();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_D630()
{
  result = qword_255E0;
  if (!qword_255E0)
  {
    sub_2A90(&qword_255D8, &qword_1A0B0);
    sub_3040(&qword_255E8, &qword_255F0, &qword_1A0B8, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_255E0);
  }

  return result;
}

uint64_t sub_D6D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_19A0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t DefaultCallingAppsSettingsProvider.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_id);

  return v1;
}

uint64_t variable initialization expression of DefaultCallingAppsSettingsProvider.localizedTitle()
{
  v0 = sub_18A24();
  __chkstk_darwin(v0 - 8);
  v1 = sub_18E24();
  __chkstk_darwin(v1 - 8);
  sub_18DB4();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  return sub_18E84();
}

uint64_t DefaultCallingAppsSettingsProvider.localizedTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_localizedTitle);

  return v1;
}

uint64_t variable initialization expression of DefaultCallingAppsSettingsProvider.localizedNavigationTitle()
{
  v0 = sub_18A24();
  __chkstk_darwin(v0 - 8);
  v1 = sub_18E24();
  __chkstk_darwin(v1 - 8);
  sub_18DB4();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  return sub_18E84();
}

uint64_t DefaultCallingAppsSettingsProvider.localizedNavigationTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_localizedNavigationTitle);

  return v1;
}

uint64_t sub_DA58()
{
  v0 = sub_18AA4();
  sub_AE00(v0, qword_25D18);
  sub_ACC4(v0, qword_25D18);
  return sub_18A94();
}

NSString sub_DAD8()
{
  result = sub_18E64();
  qword_25D38 = result;
  return result;
}

uint64_t DefaultCallingAppsSettingsProvider.localizedDetail.getter()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider__viewModel];
  v3 = *&v0[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider__viewModel + 8];
  v64 = *&v0[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider__viewModel];
  v65 = v3;
  sub_19A0(&qword_25618, &qword_1A0D0);
  v4 = sub_18CC4();
  v5 = v63[0];
  (*&stru_108.segname[(swift_isaMask & *v63[0]) - 8])(v60, v4);

  v6 = v60[4];
  v7 = v60[5];

  sub_467C(v60);
  if (v7)
  {
    v56 = v6;
  }

  else
  {
    v8 = v2[1];
    v64 = *v2;
    v65 = v8;
    v9 = sub_18CC4();
    v10 = v63[0];
    (*&stru_108.segname[(swift_isaMask & *v63[0]) - 8])(v61, v9);

    v7 = v61[3];
    v56 = v61[2];

    sub_467C(v61);
  }

  v11 = v2[1];
  v64 = *v2;
  v65 = v11;
  v12 = sub_18CC4();
  v13 = v63[0];
  (*(&stru_108.reloff + (swift_isaMask & *v63[0])))(v62, v12);

  v14 = v62[3];
  v55 = v62[2];

  sub_467C(v62);
  if (qword_25D10 != -1)
  {
    swift_once();
  }

  v15 = sub_18AA4();
  sub_ACC4(v15, qword_25D18);
  v16 = v1;

  v17 = sub_18A84();
  v18 = sub_18FA4();

  v57 = v14;
  if (os_log_type_enabled(v17, v18))
  {
    v54 = v18;
    v19 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v19 = 136315650;
    if (v16[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_isAppSubPane] == 1)
    {
      v20 = *&v16[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_bundleID + 8];
      if (v20)
      {
        v21 = *&v16[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_bundleID];
        v22 = "DEFAULT CALLING APP [FACETIME]:";
        v23 = 0xD00000000000001CLL;
        if (v21 != 0xD000000000000015 || 0x800000000001C2B0 != v20)
        {
          if (sub_19084())
          {
            v23 = 0xD00000000000001CLL;
          }

          else
          {
            v22 = "DEFAULT CALLING APP [APP]:";
            v23 = 0xD00000000000001FLL;
            if (v21 != 0xD000000000000012 || 0x800000000001C2D0 != v20)
            {
              v39 = sub_19084();
              v23 = 0xD00000000000001FLL;
              if ((v39 & 1) == 0)
              {
                v23 = 0xD00000000000001ALL;
                v22 = "APP [UNKNOWN APP]:";
              }
            }
          }
        }
      }

      else
      {
        v22 = "DEFAULT CALLING APP [GLOBAL]:";
        v23 = 0xD000000000000022;
      }
    }

    else
    {
      v22 = "Navigation bar title";
      v23 = 0xD00000000000001DLL;
    }

    v24 = sub_3FCC(v23, v22 | 0x8000000000000000, v59);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_3FCC(v56, v7, v59);
    *(v19 + 22) = 2080;
    v25 = v2[1];
    v64 = *v2;
    v65 = v25;
    v26 = sub_18CC4();
    v27 = v63[0];
    (*&stru_108.segname[(swift_isaMask & *v63[0]) - 8])(v63, v26);

    v28 = v63[0];
    v29 = v63[1];

    sub_467C(v63);
    v30 = sub_3FCC(v28, v29, v59);

    *(v19 + 24) = v30;
    _os_log_impl(&dword_0, v17, v54, "%s: Current default calling app: '%s' (id: %s)", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v31 = v16;
  v32 = sub_18A84();
  v33 = sub_18FA4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v34 = 136315650;
    if (v31[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_isAppSubPane] == 1)
    {
      v35 = *&v31[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_bundleID + 8];
      if (v35)
      {
        v36 = *&v31[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_bundleID];
        v37 = "DEFAULT CALLING APP [FACETIME]:";
        v38 = 0xD00000000000001CLL;
        if (v36 != 0xD000000000000015 || 0x800000000001C2B0 != v35)
        {
          if (sub_19084())
          {
            v38 = 0xD00000000000001CLL;
          }

          else
          {
            v37 = "DEFAULT CALLING APP [APP]:";
            v38 = 0xD00000000000001FLL;
            if (v36 != 0xD000000000000012 || 0x800000000001C2D0 != v35)
            {
              v40 = sub_19084();
              v41 = (v40 & 1) == 0;
              v38 = (v40 & 1) != 0 ? 0xD00000000000001FLL : 0xD00000000000001ALL;
              if (v41)
              {
                v37 = "APP [UNKNOWN APP]:";
              }
            }
          }
        }
      }

      else
      {
        v37 = "DEFAULT CALLING APP [GLOBAL]:";
        v38 = 0xD000000000000022;
      }
    }

    else
    {
      v37 = "Navigation bar title";
      v38 = 0xD00000000000001DLL;
    }

    v42 = sub_3FCC(v38, v37 | 0x8000000000000000, v59);

    *(v34 + 4) = v42;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_3FCC(v55, v57, v59);
    *(v34 + 22) = 2080;
    v43 = v2[1];
    v64 = *v2;
    v65 = v43;
    v44 = sub_18CC4();
    (*(&stru_108.reloff + (swift_isaMask & *v58)))(&v64, v44);

    v45 = v64;
    v46 = v65;

    sub_467C(&v64);
    v47 = sub_3FCC(v45, v46, v59);

    *(v34 + 24) = v47;
    _os_log_impl(&dword_0, v32, v33, "%s: Current default dialier app: '%s' (id: %s)", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v48 = v2[1];
  v59[0] = *v2;
  v59[1] = v48;
  v49 = sub_18CC4();
  v50 = (*(&stru_B8.size + (swift_isaMask & *v58)))(v49);

  if (v50)
  {
    v51 = v56;
    if (v56 == v55 && v7 == v57)
    {
    }

    else
    {
      v53 = sub_19084();

      if ((v53 & 1) == 0)
      {

        v59[0] = 2;
        sub_F490();
        return sub_19014();
      }
    }
  }

  else
  {

    return v56;
  }

  return v51;
}

uint64_t DefaultCallingAppsSettingsProvider.available.getter()
{
  v1 = OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_available;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t property wrapper backing initializer of DefaultCallingAppsSettingsProvider.viewModel(uint64_t a1)
{
  type metadata accessor for DefaultCallingAppsModel(0);
  sub_18CB4();
  return v2;
}

id variable initialization expression of DefaultCallingAppsSettingsProvider._viewModel()
{
  v0 = *sub_105C4();

  return v0;
}

id DefaultCallingAppsSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultCallingAppsSettingsProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjectType());
  v1 = DefaultCallingAppsSettingsProvider.init(for:)(0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

id DefaultCallingAppsSettingsProvider.init(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_18A24();
  __chkstk_darwin(v7 - 8);
  v8 = sub_18E24();
  __chkstk_darwin(v8 - 8);
  v9 = &v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_id];
  *v9 = 0xD000000000000024;
  *(v9 + 1) = 0x800000000001C4F0;
  v10 = &v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_localizedTitle];
  sub_18DB4();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  *v10 = sub_18E84();
  v10[1] = v11;
  v12 = &v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_localizedNavigationTitle];
  sub_18DB4();
  sub_ABA8();
  sub_18A14();
  *v12 = sub_18E84();
  v12[1] = v13;
  v14 = &v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider__viewModel];
  v32 = *sub_105C4();
  type metadata accessor for DefaultCallingAppsModel(0);
  v15 = v32;
  sub_18CB4();
  v16 = v34;
  *v14 = v33;
  *(v14 + 1) = v16;
  v17 = OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_isAppSubPane;
  v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_isAppSubPane] = 0;
  v18 = &v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_bundleID];
  *v18 = a1;
  *(v18 + 1) = a2;
  if (a2)
  {
    v2[v17] = 1;
    v19 = objc_allocWithZone(LSApplicationRecord);

    v22 = sub_9BCC(a1, a2, 1);
    v23 = [v22 supportedDefaultAppCategories];

    v3[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_available] = (v23 & 0x210) != 0;
    v30.receiver = v3;
    v30.super_class = ObjectType;
    v24 = objc_msgSendSuper2(&v30, "init");
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 defaultCenter];
  }

  else
  {
    v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_available] = 1;
    v31.receiver = v2;
    v31.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v31, "init");
    v21 = objc_opt_self();
    v26 = v20;
    v27 = [v21 defaultCenter];
  }

  v28 = v27;
  if (qword_25D30 != -1)
  {
    swift_once();
  }

  [v28 addObserver:v26 selector:? name:? object:?];

  return v26;
}

uint64_t sub_EA88()
{
  v1 = sub_18D54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18D74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_25D10 != -1)
  {
    swift_once();
  }

  v9 = sub_18AA4();
  sub_ACC4(v9, qword_25D18);
  v10 = v0;
  v11 = sub_18A84();
  v12 = sub_18FA4();

  if (os_log_type_enabled(v11, v12))
  {
    v28 = v6;
    v29 = v5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = v10[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_isAppSubPane];
    v30 = v2;
    if (v15 == 1)
    {
      v16 = *&v10[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_bundleID + 8];
      if (v16)
      {
        v17 = "DEFAULT CALLING APP [FACETIME]:";
        v18 = 0xD00000000000001CLL;
        if (*&v10[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_bundleID] != 0xD000000000000015 || 0x800000000001C2B0 != v16)
        {
          v26 = *&v10[OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_bundleID];
          v27 = 0xD00000000000001CLL;
          if (sub_19084())
          {
            v18 = v27;
          }

          else
          {
            v17 = "DEFAULT CALLING APP [APP]:";
            v18 = 0xD00000000000001FLL;
            if (v26 != 0xD000000000000012 || 0x800000000001C2D0 != v16)
            {
              v27 = 0xD00000000000001FLL;
              v25 = sub_19084();
              v18 = v27;
              if ((v25 & 1) == 0)
              {
                v18 = 0xD00000000000001ALL;
                v17 = "APP [UNKNOWN APP]:";
              }
            }
          }
        }
      }

      else
      {
        v17 = "DEFAULT CALLING APP [GLOBAL]:";
        v18 = 0xD000000000000022;
      }
    }

    else
    {
      v17 = "Navigation bar title";
      v18 = 0xD00000000000001DLL;
    }

    v19 = sub_3FCC(v18, v17 | 0x8000000000000000, aBlock);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v11, v12, "%s: Shared model updated, refreshing UI", v13, 0xCu);
    sub_4574(v14);

    v5 = v29;
    v2 = v30;
    v6 = v28;
  }

  else
  {
  }

  sub_AB54(0, &qword_25688, OS_dispatch_queue_ptr);
  v20 = sub_18FD4();
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  aBlock[4] = sub_F7DC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_EFB8;
  aBlock[3] = &unk_21158;
  v22 = _Block_copy(aBlock);
  v23 = v10;
  sub_18D64();
  v31 = &_swiftEmptyArrayStorage;
  sub_F958(&qword_25690, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_19A0(&qword_25698, &unk_1A200);
  sub_F8F4();
  sub_19024();
  sub_18FE4();
  _Block_release(v22);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_EFB8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t DefaultCallingAppsSettingsProvider.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider__viewModel + 8);
  *&v12[0] = *(v1 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider__viewModel);
  *(&v12[0] + 1) = v3;
  sub_19A0(&qword_25618, &qword_1A0D0);
  sub_18CC4();
  sub_3BB4(v11, v12);
  v4 = swift_allocObject();
  *(v4 + 16) = v10;
  v5 = v12[5];
  *(a1 + 64) = v12[4];
  *(a1 + 80) = v5;
  v6 = v13;
  v7 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v7;
  v8 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v8;
  *(a1 + 96) = v6;
  *(a1 + 104) = sub_F51C;
  *(a1 + 112) = v4;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;

  return _objc_retain_x1();
}

id DefaultCallingAppsSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_F260()
{
  v1 = *(*v0 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_id);

  return v1;
}

uint64_t sub_F2A0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_available;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_F2E8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_localizedTitle);

  return v1;
}

uint64_t sub_F34C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_localizedNavigationTitle);

  return v1;
}

id sub_F3B0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

id sub_F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(v3);
  result = DefaultCallingAppsSettingsProvider.init(for:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F434@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_18AB4();
  *a2 = result;
  return result;
}

uint64_t sub_F474@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

unint64_t sub_F490()
{
  result = qword_25620;
  if (!qword_25620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25620);
  }

  return result;
}

uint64_t sub_F4E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F51C()
{
  v1 = *(v0 + 16);
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v1 + OBJC_IVAR____TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider_isAppSubPane) == 1)
  {
    sub_19A0(&qword_25618, &qword_1A0D0);
    v2 = sub_18CC4();
    (*&stru_1A8.segname[(swift_isaMask & *v4) + 16])(v2);
  }

  else
  {
  }
}

unint64_t sub_F708()
{
  result = qword_25670;
  if (!qword_25670)
  {
    sub_2A90(&qword_25678, &qword_1A1F8);
    sub_F788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25670);
  }

  return result;
}

unint64_t sub_F788()
{
  result = qword_25680;
  if (!qword_25680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25680);
  }

  return result;
}

uint64_t sub_F7DC()
{
  swift_getObjectType();
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_F958(&qword_256A8, v0, type metadata accessor for DefaultCallingAppsSettingsProvider, &protocol conformance descriptor for DefaultCallingAppsSettingsProvider);
  sub_18AB4();
  sub_18AC4();
}

uint64_t sub_F8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_F8F4()
{
  result = qword_256A0;
  if (!qword_256A0)
  {
    sub_2A90(&qword_25698, &unk_1A200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_256A0);
  }

  return result;
}

uint64_t sub_F958(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_F9B8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(&stru_68.reserved2 + (swift_isaMask & **a1)))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_FA94(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(&stru_1A8.offset + (swift_isaMask & *v2)))();

  return *(v2 + *a2);
}

uint64_t sub_FB10@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(&stru_B8.size + (swift_isaMask & **a1)))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_FBC0(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    (*(&stru_1A8.reloff + (swift_isaMask & *v4)))(v7, a4);
  }

  return result;
}

__n128 sub_FCE0@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*&stru_108.segname[(swift_isaMask & **a1) - 8])(v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_FDE0@<Q0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  (*(&stru_1A8.offset + (swift_isaMask & *v3)))();

  v6 = v3 + *a2;
  v7 = *(v6 + 3);
  v14 = *(v6 + 2);
  v15 = v7;
  v16 = *(v6 + 8);
  v8 = *(v6 + 1);
  v12 = *v6;
  v13 = v8;
  sub_4620(&v12, v11);
  v9 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v9;
  *(a3 + 64) = v16;
  result = v13;
  *a3 = v12;
  *(a3 + 16) = result;
  return result;
}

__n128 sub_FEA4@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*(&stru_108.reloff + (swift_isaMask & **a1)))(v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_FF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v6 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v6;
  v11 = *(a1 + 64);
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  sub_4620(v10, v9);
  return a5(v10);
}

uint64_t sub_FFCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 + *a2;
  v8 = *(v7 + 2);
  v20 = *(v7 + 3);
  v21 = *(v7 + 8);
  v9 = *v7;
  v18 = *(v7 + 1);
  v19 = v8;
  v17 = v9;
  sub_310C();
  if (sub_18D94())
  {
    v10 = *(v7 + 2);
    v20 = *(v7 + 3);
    v21 = *(v7 + 8);
    v11 = *v7;
    v18 = *(v7 + 1);
    v19 = v10;
    v17 = v11;
    v12 = *(a1 + 48);
    *(v7 + 2) = *(a1 + 32);
    *(v7 + 3) = v12;
    *(v7 + 8) = *(a1 + 64);
    v13 = *(a1 + 16);
    *v7 = *a1;
    *(v7 + 1) = v13;
    return sub_467C(&v17);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v16 = __chkstk_darwin(KeyPath);
    (*(&stru_1A8.reloff + (swift_isaMask & *v4)))(v16, a4);
    sub_467C(a1);
  }
}

uint64_t sub_10184(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + *a1;
  v5 = *(v2 + 32);
  v4 = *(v2 + 48);
  v6 = *(v2 + 16);
  *(v3 + 64) = *(v2 + 64);
  *v3 = *v2;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  sub_4620(v2, v8);
}

uint64_t sub_10238@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*&stru_158.segname[(swift_isaMask & **a1) + 8])();
  *a2 = result;
  return result;
}

uint64_t sub_10304(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(&stru_1A8.offset + (swift_isaMask & *v2)))();
}

uint64_t sub_10390@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(&stru_158.reserved2 + (swift_isaMask & **a1)))();
  *a2 = result;
  return result;
}

uint64_t sub_10448(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;

  v9 = sub_14484(v8, a1);

  if (v9)
  {
    *(v4 + v7) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v13 = v4;
    v14 = a1;
    (*(&stru_1A8.reloff + (swift_isaMask & *v4)))(v12, a4);
  }
}

id sub_10590()
{
  result = [objc_allocWithZone(type metadata accessor for DefaultCallingAppsModel(0)) init];
  qword_26478 = result;
  return result;
}

uint64_t *sub_105C4()
{
  if (qword_25EC0 != -1)
  {
    swift_once();
  }

  return &qword_26478;
}

uint64_t sub_10614()
{
  v0 = sub_18AA4();
  sub_AE00(v0, qword_25ED0);
  sub_ACC4(v0, qword_25ED0);
  return sub_18A94();
}

void *sub_10694()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__canChangeCallingApp] = 0;
  v0[OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__canChangeDialerApp] = 0;
  v2 = sub_5478();
  v28[0] = *v2;
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[1];
  v29 = *(v2 + 8);
  v28[3] = v3;
  v28[1] = v5;
  v28[2] = v4;
  memmove(&v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__defaultCallingApp], v2, 0x48uLL);
  v30[0] = *v2;
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[1];
  v31 = *(v2 + 8);
  v30[2] = v7;
  v30[3] = v6;
  v30[1] = v8;
  memmove(&v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__defaultDialerApp], v2, 0x48uLL);
  sub_19A0(&qword_25278, &qword_1A2B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19CB0;
  v32[0] = *v2;
  v11 = v2[2];
  v10 = v2[3];
  v12 = v2[1];
  v33 = *(v2 + 8);
  v32[2] = v11;
  v32[3] = v10;
  v32[1] = v12;
  memmove((v9 + 32), v2, 0x48uLL);
  *&v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__availableCallingApps] = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19CB0;
  v34[0] = *v2;
  v15 = v2[2];
  v14 = v2[3];
  v16 = v2[1];
  v35 = *(v2 + 8);
  v34[2] = v15;
  v34[3] = v14;
  v34[1] = v16;
  memmove((v13 + 32), v2, 0x48uLL);
  *&v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__availableDialerApps] = v13;
  v17 = objc_opt_self();
  sub_4620(v28, v27);
  sub_4620(v30, v27);
  sub_4620(v32, v27);
  sub_4620(v34, v27);
  result = [v17 sharedConnection];
  if (result)
  {
    v19 = result;
    v20 = OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_isCallingAppMDMAllowed;
    v21 = [result isDefaultCallingAppModificationAllowed];

    v1[v20] = v21;
    v22 = OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_launchServices;
    _s19LaunchServicesActorCMa();
    *&v1[v22] = sub_9B6C();
    sub_18A54();
    v26.receiver = v1;
    v26.super_class = type metadata accessor for DefaultCallingAppsModel(0);
    v23 = objc_msgSendSuper2(&v26, "init");
    (*&stru_1A8.segname[(swift_isaMask & *v23) + 16])();
    v24 = [objc_opt_self() defaultWorkspace];
    if (v24)
    {
      v25 = v24;
      [v24 addObserver:v23];
    }

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10A20()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    [v1 removeObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DefaultCallingAppsModel(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10C40(__int128 *a1)
{
  v2 = sub_19A0(&qword_256F0, &qword_1A308);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-1] - v3;
  if (qword_25EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_18AA4();
  sub_ACC4(v5, qword_25ED0);
  sub_4620(a1, v20);
  v6 = sub_18A84();
  v7 = sub_18FA4();
  sub_467C(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_3FCC(*a1, *(a1 + 1), v20);
    _os_log_impl(&dword_0, v6, v7, "DEFAULT CALLING APPS MODEL: Setting default calling app to %s STARTED", v8, 0xCu);
    sub_4574(v9);
  }

  v10 = sub_18F84();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18F54();
  sub_4620(a1, v20);

  v12 = sub_18F44();
  v13 = swift_allocObject();
  v14 = *a1;
  *(v13 + 56) = a1[1];
  v15 = a1[3];
  *(v13 + 72) = a1[2];
  *(v13 + 88) = v15;
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v11;
  *(v13 + 104) = *(a1 + 8);
  *(v13 + 40) = v14;

  sub_11AD4(0, 0, v4, &unk_1A318, v13);

  v16 = sub_18A84();
  v17 = sub_18FA4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "DEFAULT CALLING APPS MODEL: Setting default calling app DONE, all providers notified", v18, 2u);
  }
}

uint64_t sub_10F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  sub_19A0(&qword_256F0, &qword_1A308);
  v5[31] = swift_task_alloc();
  v5[32] = sub_18F54();
  v5[33] = sub_18F44();
  v7 = sub_18F04();
  v5[34] = v7;
  v5[35] = v6;

  return _swift_task_switch(sub_1102C, v7, v6);
}

uint64_t sub_1102C()
{
  v24 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_launchServices);
    *(v0 + 288) = v2;
    v3 = Strong;

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      (*&stru_108.segname[(swift_isaMask & *v4) - 8])(v22);

      v6 = v22[0];
      *(v0 + 104) = v22[1];
      v7 = v22[3];
      *(v0 + 120) = v22[2];
      *(v0 + 136) = v7;
      *(v0 + 152) = v23;
      *(v0 + 88) = v6;
    }

    else
    {
      *(v0 + 152) = 0;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
    }

    v16 = *(v0 + 88);
    *(v0 + 80) = *(v0 + 152);
    v17 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v17;
    v18 = *(v0 + 104);
    *(v0 + 16) = v16;
    *(v0 + 32) = v18;
    v21 = (*(*v2 + 128) + **(*v2 + 128));
    v19 = swift_task_alloc();
    *(v0 + 296) = v19;
    *v19 = v0;
    v19[1] = sub_113B8;
    v20 = *(v0 + 240);

    return v21(v20, 0, v0 + 16);
  }

  else
  {

    v8 = *(v0 + 248);
    v9 = sub_18F84();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v12 = sub_18F44();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;

    sub_11AD4(0, 0, v8, &unk_1A4D8, v13);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_113B8()
{
  v1 = *v0;

  sub_49A0(v1 + 88, &qword_25190, &qword_19B30);

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_11510, v3, v2);
}

uint64_t sub_11510()
{

  v1 = *(v0 + 248);
  v2 = sub_18F84();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v5 = sub_18F44();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v3;

  sub_11AD4(0, 0, v1, &unk_1A4D8, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1167C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_18F54();
  v4[15] = sub_18F44();
  v6 = sub_18F04();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_11714, v6, v5);
}

uint64_t sub_11714()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_launchServices);
    v0[19] = v2;
    v3 = *(*v2 + 104);

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_118B4;

    return (v7)(v0 + 2, 0);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_118B4()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_119F8, v3, v2);
}

uint64_t sub_119F8()
{
  v1 = *(v0 + 144);

  sub_FD84(v0 + 16);
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_18E64();
  [v2 postNotificationName:v3 object:0];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_11AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19A0(&qword_256F0, &qword_1A308);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_14D10(a3, v25 - v10);
  v12 = sub_18F84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_49A0(v11, &qword_256F0, &qword_1A308);
  }

  else
  {
    sub_18F74();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_18F04();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_18EB4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_49A0(a3, &qword_256F0, &qword_1A308);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_49A0(a3, &qword_256F0, &qword_1A308);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_11DC4(__int128 *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_19A0(&qword_256F0, &qword_1A308);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-1] - v4;
  if (qword_25EC8 != -1)
  {
    swift_once();
  }

  v6 = sub_18AA4();
  sub_ACC4(v6, qword_25ED0);
  sub_4620(a1, v22);
  v7 = sub_18A84();
  v8 = sub_18FA4();
  sub_467C(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_3FCC(*a1, *(a1 + 1), v22);
    _os_log_impl(&dword_0, v7, v8, "DEFAULT CALLING APPS MODEL: Setting default dialer app to %s STARTED", v9, 0xCu);
    sub_4574(v10);
  }

  v11 = sub_18F84();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18F54();
  sub_4620(a1, v22);

  v13 = sub_18F44();
  v14 = swift_allocObject();
  v15 = *a1;
  *(v14 + 56) = a1[1];
  v16 = a1[3];
  *(v14 + 72) = a1[2];
  *(v14 + 88) = v16;
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v12;
  v17 = *(a1 + 8);
  *(v14 + 40) = v15;
  *(v14 + 104) = v17;
  *(v14 + 112) = ObjectType;

  sub_11AD4(0, 0, v5, &unk_1A328, v14);

  v18 = sub_18A84();
  v19 = sub_18FA4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "DEFAULT CALLING APPS MODEL: Setting default dialer app DONE, all providers notified", v20, 2u);
  }
}

uint64_t sub_120F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  sub_19A0(&qword_256F0, &qword_1A308);
  v6[20] = swift_task_alloc();
  v6[21] = sub_18F54();
  v6[22] = sub_18F44();
  v8 = sub_18F04();
  v6[23] = v8;
  v6[24] = v7;

  return _swift_task_switch(sub_121C8, v8, v7);
}

uint64_t sub_121C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_launchServices);
    *(v0 + 200) = v2;
    v3 = Strong;

    *(v0 + 80) = 0;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v15 = (*(*v2 + 128) + **(*v2 + 128));
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_12494;
    v5 = *(v0 + 144);

    return v15(v5, 1, v0 + 16);
  }

  else
  {

    v7 = *(v0 + 160);
    v8 = *(v0 + 152);
    v9 = sub_18F84();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v12 = sub_18F44();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;
    v13[5] = v8;

    sub_11AD4(0, 0, v7, &unk_1A4A0, v13);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_12494()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_125D8, v3, v2);
}

uint64_t sub_125D8()
{

  v1 = v0[20];
  v2 = v0[19];
  v3 = sub_18F84();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v6 = sub_18F44();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;
  v7[5] = v2;

  sub_11AD4(0, 0, v1, &unk_1A4A0, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_12750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_18F54();
  v4[15] = sub_18F44();
  v6 = sub_18F04();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_127E8, v6, v5);
}

uint64_t sub_127E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_launchServices);
    v0[19] = v2;
    v3 = *(*v2 + 104);

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_12988;

    return (v7)(v0 + 2, 1);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_12988()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_12ACC, v3, v2);
}

uint64_t sub_12ACC()
{

  sub_FFA4(v0 + 16);
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_18E64();
  [v1 postNotificationName:v2 object:0];

  if (qword_25EC8 != -1)
  {
    swift_once();
  }

  v3 = sub_18AA4();
  sub_ACC4(v3, qword_25ED0);
  v4 = sub_18A84();
  v5 = sub_18FA4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v4, v5, "DEFAULT CALLING APPS MODEL: Setting default dialer app DONE", v8, 2u);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_12C60()
{
  v1 = sub_19A0(&qword_256F0, &qword_1A308);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_18F84();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_11AD4(0, 0, v3, &unk_1A338, v5);
}

uint64_t sub_12D64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_12DF4;

  return sub_12EE8();
}

uint64_t sub_12DF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_12EE8()
{
  v1[24] = v0;
  v1[25] = sub_18F54();
  v1[26] = sub_18F44();
  v3 = sub_18F04();
  v1[27] = v3;
  v1[28] = v2;

  return _swift_task_switch(sub_12F84, v3, v2);
}

uint64_t sub_12F84()
{
  v1 = *(v0[24] + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_launchServices);
  v0[29] = v1;
  v2 = *(*v1 + 96);
  v3 = *v1 + 96;
  v0[30] = v2;
  v0[31] = v3 & 0xFFFFFFFFFFFFLL | 0x4B64000000000000;
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_130B8;

  return v6(0);
}

uint64_t sub_130B8(char a1)
{
  v2 = *v1;
  *(*v1 + 344) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_131E0, v4, v3);
}

uint64_t sub_131E0()
{
  if (*(v0 + 344) == 1)
  {
    v2 = *(*(v0 + 192) + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel_isCallingAppMDMAllowed);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 345) = v2;
  v5 = (*(v0 + 240) + **(v0 + 240));
  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = sub_132F4;

  return v5(1);
}

uint64_t sub_132F4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(v2 + 346) = a1;

  v4 = *(*v3 + 104);
  v7 = *v3 + 104;
  *(v2 + 272) = v4;
  *(v2 + 280) = v7 & 0xFFFFFFFFFFFFLL | 0x8814000000000000;
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 288) = v5;
  *v5 = v9;
  v5[1] = sub_134E0;

  return (v8)(v2 + 88, 0);
}

uint64_t sub_134E0()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *v0;

  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 296) = v4;
  *v4 = v3;
  v4[1] = sub_136B0;

  return v6(v1 + 16, 1);
}

uint64_t sub_136B0()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v8 = *v0;

  v3 = *(*v2 + 120);
  v6 = *v2 + 120;
  v1[38] = v3;
  v1[39] = v6 & 0xFFFFFFFFFFFFLL | 0xE75D000000000000;
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v1[40] = v4;
  *v4 = v8;
  v4[1] = sub_1388C;

  return v7(0);
}

uint64_t sub_1388C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[20] = v1;
  v3[21] = a1;
  v4 = v2[38];
  v5 = *v1;

  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  v3[41] = v6;
  *v6 = v5;
  v6[1] = sub_13A58;

  return v8(1);
}

uint64_t sub_13A58(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 176) = v1;
  *(v2 + 184) = a1;

  return _swift_task_switch(sub_13B58, 0, 0);
}

uint64_t sub_13B58(uint64_t a1)
{
  *(v1 + 336) = sub_18F44();
  v3 = sub_18F04();

  return _swift_task_switch(sub_13BE4, v3, v2);
}

uint64_t sub_13BE4()
{

  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 345);
  if (v2 == *(v1 + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__canChangeCallingApp))
  {
    *(v1 + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__canChangeCallingApp) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    (*(&stru_1A8.reloff + (swift_isaMask & *v1)))(KeyPath, sub_15018, v4, &type metadata for ()[8]);
  }

  v5 = *(v0 + 346);
  v6 = *(v0 + 192);
  if (v5 == *(v6 + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__canChangeDialerApp))
  {
    *(v6 + OBJC_IVAR____TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel__canChangeDialerApp) = v5;
  }

  else
  {
    v7 = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    (*(&stru_1A8.reloff + (swift_isaMask & *v6)))(v7, sub_15030, v8, &type metadata for ()[8]);
  }

  v9 = *(v0 + 168);
  v10 = *(v0 + 184);
  sub_FD84(v0 + 88);
  sub_FFA4(v0 + 16);
  sub_102C8(v9);
  sub_10420(v10);

  v11 = *(v0 + 216);
  v12 = *(v0 + 224);

  return _swift_task_switch(sub_13E74, v11, v12);
}

uint64_t sub_13E74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_13ED4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72656C616964;
  }

  else
  {
    v3 = 0x676E696C6C6163;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x72656C616964;
  }

  else
  {
    v5 = 0x676E696C6C6163;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19084();
  }

  return v8 & 1;
}

Swift::Int sub_13F78()
{
  sub_19094();
  sub_18EC4();

  return sub_190C4();
}

uint64_t sub_13FF8(uint64_t a1)
{
  sub_18EC4();
}

Swift::Int sub_14064(uint64_t a1)
{
  sub_19094();
  sub_18EC4();

  return sub_190C4();
}

uint64_t sub_140E0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_21180;
  v8._object = v3;
  v5 = sub_19064(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_14140(uint64_t *a1@<X8>)
{
  v2 = 0x676E696C6C6163;
  if (*v1)
  {
    v2 = 0x72656C616964;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1417C()
{
  if (*v0)
  {
    return 0x72656C616964;
  }

  else
  {
    return 0x676E696C6C6163;
  }
}

uint64_t sub_14294(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1438C;

  return v6(a1);
}

uint64_t sub_1438C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_14484(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v37 = v2;
  v38 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v32 = *(v6 + 8);
    v31[2] = v12;
    v31[3] = v13;
    v31[0] = v10;
    v31[1] = v11;
    v19 = v12;
    v20 = v13;
    v21 = v32;
    v17 = v10;
    v18 = v11;
    sub_4620(v27, v16);
    sub_4620(v31, v16);
    sub_310C();
    v14 = sub_18D94();
    v33[2] = v19;
    v33[3] = v20;
    v34 = v21;
    v33[0] = v17;
    v33[1] = v18;
    sub_467C(v33);
    v35[2] = v24;
    v35[3] = v25;
    v36 = v26;
    v35[0] = v22;
    v35[1] = v23;
    sub_467C(v35);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 += 72;
  }

  return 1;
}

uint64_t sub_14628(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t type metadata accessor for DefaultCallingAppsModel(uint64_t a1)
{
  result = qword_261A0;
  if (!qword_261A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_146B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_146F8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_15014;

  return sub_10F58(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_14798(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_14804()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 112);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_15014;

  return sub_120F0(v4, v5, v6, v2, v0 + 40, v3);
}

uint64_t sub_148AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_148EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_12DF4;

  return sub_12D64();
}

unint64_t sub_14980()
{
  result = qword_256F8;
  if (!qword_256F8)
  {
    type metadata accessor for DefaultCallingAppsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_256F8);
  }

  return result;
}

unint64_t sub_149DC()
{
  result = qword_25700;
  if (!qword_25700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25700);
  }

  return result;
}

uint64_t sub_14A38(uint64_t a1)
{
  result = sub_18A64();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultCallingAppsModel.DefaultCallingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultCallingAppsModel.DefaultCallingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_14C7C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_15014;

  return sub_12750(v3, v4, v5, v2);
}

uint64_t sub_14D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A0(&qword_256F0, &qword_1A308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14D80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_14DB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_15014;

  return sub_14294(a1, v4);
}

uint64_t sub_14E70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_12DF4;

  return sub_14294(a1, v4);
}

uint64_t sub_14F30(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_14F7C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_15014;

  return sub_1167C(v3, v4, v5, v2);
}

uint64_t sub_15098(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_confirmationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_15104(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_confirmationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_151A4;
}

void sub_151A4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_15270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_18A24();
  __chkstk_darwin(v6 - 8);
  v7 = sub_18E24();
  __chkstk_darwin(v7 - 8);
  v8 = sub_18E04();
  __chkstk_darwin(v8 - 8);
  *&v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_confirmationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_previousApp];
  v10 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v10;
  *(v9 + 8) = *(a1 + 64);
  v11 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v11;
  v12 = &v2[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_newApp];
  *(v12 + 8) = *(a2 + 64);
  v13 = *(a2 + 48);
  *(v12 + 2) = *(a2 + 32);
  *(v12 + 3) = v13;
  v14 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 1) = v14;
  sub_4620(a2, v21);
  sub_18DF4();
  v22._object = 0x800000000001C910;
  v22._countAndFlagsBits = 0x1000000000000018;
  sub_18DE4(v22);
  sub_18DD4(*(a2 + 16));
  sub_467C(a2);
  v23._countAndFlagsBits = 1067286754;
  v23._object = 0xA400000000000000;
  sub_18DE4(v23);
  sub_18E14();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  sub_18E84();
  sub_18DB4();
  sub_ABA8();
  sub_18A14();
  sub_18E84();
  v15 = objc_allocWithZone(OBWelcomeController);
  v16 = sub_18E64();

  v17 = sub_18E64();

  v18 = [v15 initWithTitle:v16 detailText:v17 icon:0];

  *&v3[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_onBoardingKitController] = v18;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for DialingAppChangeConfirmationViewController();
  return objc_msgSendSuper2(&v20, "initWithRootViewController:", v18);
}

void sub_15758()
{
  v1 = sub_19A0(&qword_256F0, &qword_1A308);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = objc_allocWithZone(ISIcon);
  v5 = sub_18E64();
  v27 = [v4 initWithBundleIdentifier:v5];

  v6 = [v0 traitCollection];
  [v6 displayScale];
  v8 = v7;

  v9 = [objc_allocWithZone(ISImageDescriptor) initWithSize:80.0 scale:{80.0, v8}];
  v10 = objc_allocWithZone(ISIcon);
  v11 = sub_18E64();
  v12 = [v10 initWithType:v11];

  v13 = [v0 traitCollection];
  [v13 displayScale];
  v15 = v14;

  v28 = [objc_allocWithZone(ISImageDescriptor) initWithSize:30.0 scale:{30.0, v15}];
  v16 = [*&v0[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_onBoardingKitController] headerView];
  v17 = [v16 customIconContainerView];

  if (v17)
  {
    sub_18F64();
    v18 = sub_18F84();
    (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    v20 = v27;
    *(v19 + 32) = v27;
    *(v19 + 40) = v9;
    *(v19 + 48) = v12;
    *(v19 + 56) = v28;
    *(v19 + 64) = v17;
    *(v19 + 72) = xmmword_1A4E0;
    *(v19 + 88) = 0x4010000000000000;
    v21 = v20;
    v22 = v9;
    v23 = v12;
    v24 = v28;
    v25 = v17;
    sub_16464(0, 0, v3, &unk_1A548, v19);

    sub_17890(v3);
  }

  else
  {

    v26 = v28;
  }
}

uint64_t sub_15AC0(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 64) = a2;
  *(v11 + 72) = a3;
  *(v11 + 56) = a1;
  *(v11 + 40) = a10;
  *(v11 + 48) = a11;
  *(v11 + 24) = a8;
  *(v11 + 32) = a9;
  *(v11 + 16) = a7;
  sub_19A0(&qword_256F0, &qword_1A308);
  *(v11 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_15B6C, 0, 0);
}

uint64_t sub_15B6C()
{
  v1 = [*(v0 + 16) prepareImageForDescriptor:*(v0 + 24)];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 CGImage];

    if (v3)
    {
      v4 = [*(v0 + 32) prepareImageForDescriptor:*(v0 + 40)];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 CGImage];

        if (v6)
        {
          v7 = *(v0 + 80);
          v8 = *(v0 + 72);
          v18 = *(v0 + 56);
          v9 = *(v0 + 48);
          v10 = sub_18F84();
          (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
          sub_18F54();
          v11 = v3;
          v12 = v9;
          v13 = v6;
          v14 = sub_18F44();
          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          *(v15 + 24) = &protocol witness table for MainActor;
          *(v15 + 32) = v11;
          *(v15 + 40) = v12;
          *(v15 + 48) = v13;
          *(v15 + 56) = v18;
          *(v15 + 72) = v8;
          sub_11AD4(0, 0, v7, &unk_1A570, v15);
        }
      }
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_15D58(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  *(v9 + 40) = a1;
  *(v9 + 24) = a8;
  *(v9 + 32) = a9;
  *(v9 + 16) = a7;
  sub_18F54();
  *(v9 + 64) = sub_18F44();
  v11 = sub_18F04();

  return _swift_task_switch(sub_15DFC, v11, v10);
}

uint64_t sub_15DFC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = *(v0 + 3);
  v4 = *(v0 + 4);
  v6 = *(v0 + 2);

  v7 = [objc_allocWithZone(UIImage) initWithCGImage:v6];
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  v9 = v8;
  [v5 addSubview:v9];
  v10 = [objc_allocWithZone(UIImage) initWithCGImage:v4];
  v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];

  v12 = v11;
  [v5 addSubview:v12];
  v13 = [v12 layer];
  v14 = [objc_opt_self() blackColor];
  v15 = [v14 CGColor];

  [v13 setShadowColor:v15];
  v16 = [v12 layer];

  LODWORD(v17) = 1045220557;
  [v16 setShadowOpacity:v17];

  v18 = [v12 layer];
  [v18 setShadowOffset:{0.0, 1.0}];

  v19 = [v12 layer];
  [v19 setShadowRadius:2.0];

  [v5 setClipsToBounds:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = objc_opt_self();
  sub_19A0(&qword_25778, &qword_1A578);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A4F0;
  v21 = [v9 widthAnchor];

  v22 = [v21 constraintEqualToConstant:v3];
  *(v20 + 32) = v22;
  v23 = [v9 heightAnchor];

  v24 = [v9 widthAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v20 + 40) = v25;
  v26 = [v9 centerXAnchor];

  v27 = [v5 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v20 + 48) = v28;
  v29 = [v9 centerYAnchor];

  v30 = [v5 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v20 + 56) = v31;
  v32 = [v12 widthAnchor];

  v33 = [v32 constraintEqualToConstant:v2];
  *(v20 + 64) = v33;
  v34 = [v12 heightAnchor];

  v35 = [v12 widthAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v20 + 72) = v36;
  v37 = [v12 bottomAnchor];

  v38 = [v9 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:v1];

  *(v20 + 80) = v39;
  v40 = [v12 trailingAnchor];

  v41 = [v9 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:v1];

  *(v20 + 88) = v42;
  sub_AB54(0, &qword_25780, NSLayoutConstraint_ptr);
  isa = sub_18EF4().super.isa;

  [v46 activateConstraints:isa];

  v44 = *(v0 + 1);

  return v44();
}

uint64_t sub_16464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19A0(&qword_256F0, &qword_1A308);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_14D10(a3, v25 - v10);
  v12 = sub_18F84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_17890(v11);
  }

  else
  {
    sub_18F74();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_18F04();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_18EB4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_16704()
{
  v1 = v0;
  v2 = sub_18E04();
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A24();
  __chkstk_darwin(v5 - 8);
  v6 = sub_18E24();
  __chkstk_darwin(v6 - 8);
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() systemGreenColor];
    [v8 setTintColor:v9];

    v10 = *&v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_newApp];
    v11 = *&v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_newApp + 8];
    v12 = sub_5638();
    v13 = *v12;
    v14 = *(v12 + 1);
    if (v10 == *v12 && v11 == v14)
    {
      LODWORD(v43) = 1;
    }

    else
    {
      LODWORD(v43) = sub_19084();
    }

    v15 = *&v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_previousApp];
    v16 = *&v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_previousApp + 8];
    v40 = &v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_previousApp];
    v41 = v4;
    if (v15 == v13 && v16 == v14)
    {
      v45 = 1;
    }

    else
    {
      v45 = sub_19084();
    }

    v17 = [objc_opt_self() configurationWithWeight:6];
    sub_18DB4();
    v18 = sub_AB54(0, &unk_25410, NSBundle_ptr);
    sub_ABA8();
    sub_18A14();
    sub_18E84();
    v19 = *&v1[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_onBoardingKitController];
    v20 = sub_18E64();

    v21 = sub_18E64();
    v22 = v17;
    v23 = sub_18E64();
    v24 = objc_opt_self();
    v25 = [v24 systemImageNamed:v23 withConfiguration:v22];

    if (!v25)
    {
      v25 = [objc_allocWithZone(UIImage) init];
    }

    [v19 addBulletedListItemWithTitle:v20 description:v21 image:{v25, v40, v41}];

    sub_18DB4();
    v44 = v18;
    sub_ABA8();
    sub_18A14();
    sub_18E84();
    v26 = sub_18E64();

    v27 = sub_18E64();
    v28 = v22;
    v29 = sub_18E64();
    v30 = [v24 systemImageNamed:v29 withConfiguration:v28];

    v42 = v24;
    if (!v30)
    {
      v30 = [objc_allocWithZone(UIImage) init];
    }

    [v19 addBulletedListItemWithTitle:v26 description:v27 image:v30];

    if ((v43 & 1) == 0)
    {
      v43 = v19;
      sub_18DB4();
      sub_ABA8();
      sub_18A14();
      sub_18E84();
      v31 = sub_18E64();

      v32 = sub_18E64();
      v33 = v28;
      v34 = sub_18E64();
      v35 = [v42 systemImageNamed:v34 withConfiguration:v33];

      if (!v35)
      {
        v35 = [objc_allocWithZone(UIImage) init];
      }

      v19 = v43;
      [v43 addBulletedListItemWithTitle:v31 description:v32 image:v35];
    }

    v36 = v28;
    if ((v45 & 1) == 0)
    {
      sub_18DF4();
      v46._countAndFlagsBits = 10256610;
      v46._object = 0xA300000000000000;
      sub_18DE4(v46);
      sub_18DD4(v40[1]);
      v47._object = 0x800000000001CD00;
      v47._countAndFlagsBits = 0x1000000000000034;
      sub_18DE4(v47);
      sub_18E14();
      sub_ABA8();
      sub_18A14();
      sub_18E84();
      v37 = sub_18E64();

      v36 = sub_18E64();
      v38 = sub_18E64();
      v39 = [v42 systemImageNamed:v38 withConfiguration:v28];

      if (!v39)
      {
        v39 = [objc_allocWithZone(UIImage) init];
      }

      [v19 addBulletedListItemWithTitle:v37 description:v36 image:v39];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_16E34()
{
  v1 = v0;
  v2 = sub_18A24();
  __chkstk_darwin(v2 - 8);
  v3 = sub_18E24();
  __chkstk_darwin(v3 - 8);
  v4 = *(v0 + OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_onBoardingKitController);
  v5 = [v4 navigationItem];
  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelChange"];
  [v5 setRightBarButtonItem:v6];

  v7 = [objc_opt_self() boldButton];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemRedColor];
  [v9 setTintColor:v10];

  sub_18DB4();
  sub_AB54(0, &unk_25410, NSBundle_ptr);
  sub_ABA8();
  sub_18A14();
  sub_18E84();
  v11 = sub_18E64();

  [v9 setTitle:v11 forState:0];

  [v9 addTarget:v1 action:"confirmChange" forControlEvents:64];
  v12 = [objc_opt_self() linkButton];
  sub_18DB4();
  sub_ABA8();
  sub_18A14();
  sub_18E84();
  v13 = sub_18E64();

  [v12 setTitle:v13 forState:0];

  [v12 addTarget:v1 action:"cancelChange" forControlEvents:64];
  v14 = [v4 buttonTray];
  [v14 addButton:v9];

  v15 = [v4 buttonTray];
  [v15 addButton:v12];
}

uint64_t sub_17214(const char *a1, char a2)
{
  v5 = v2;
  v6 = sub_18AA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AD88();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_18A84();
  v12 = sub_18FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a1, v13, 2u);
  }

  v14 = (*(v7 + 8))(v9, v6);
  result = (*&stru_68.segname[(swift_isaMask & *v5) - 8])(v14);
  if (result)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(v5, a2 & 1, ObjectType, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1740C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_1759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_17630()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DialingAppChangeConfirmationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_17750()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_177B0()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_12DF4;

  return sub_15AC0(v7, v8, v9, v10, v11, v12, v2, v3, v4, v5, v6);
}

uint64_t sub_17890(uint64_t a1)
{
  v2 = sub_19A0(&qword_256F0, &qword_1A308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_178F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_17948()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_15014;

  return sub_15D58(v5, v6, v7, v8, v9, v10, v2, v3, v4);
}

uint64_t sub_17A14()
{

  return _swift_deallocObject(v0, 32, 7);
}

void type metadata accessor for CGImage()
{
  if (!qword_25788)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_25788);
    }
  }
}

id sub_17AA4(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtCVC26DefaultCallingAppsSettings24DialerAppChangeValidator5Sheet11Coordinator_completion];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_17B28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_18AA4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AD88();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_18A84();
  v11 = sub_18FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a2 & 1;
    _os_log_impl(&dword_0, v10, v11, "Will change dialing app: %{BOOL}d", v12, 8u);
  }

  (*(v6 + 8))(v8, v5);
  return (*(v3 + OBJC_IVAR____TtCVC26DefaultCallingAppsSettings24DialerAppChangeValidator5Sheet11Coordinator_completion))(a2 & 1);
}

__n128 sub_17D44@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v9[40] = *(a2 + 32);
  *&v9[24] = *(a2 + 16);
  *&v9[56] = *(a2 + 48);
  *&v9[72] = *(a2 + 64);
  *&v9[8] = *a2;
  *v9 = *(a1 + 8);
  v8 = a1[1];
  v5 = *a1;
  v6 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v6;
  *a5 = v5;
  *(a5 + 16) = v8;
  result = *&v9[48];
  *(a5 + 112) = *&v9[48];
  *(a5 + 128) = *&v9[64];
  *(a5 + 80) = *&v9[16];
  *(a5 + 96) = *&v9[32];
  *(a5 + 64) = *v9;
  *(a5 + 144) = a3;
  *(a5 + 152) = a4;
  return result;
}

id sub_17DB4()
{
  v1 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v1;
  v10 = *(v0 + 64);
  v2 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v2;
  v3 = *(v0 + 88);
  v4 = *(v0 + 120);
  v11[2] = *(v0 + 104);
  v11[3] = v4;
  v12 = *(v0 + 136);
  v11[0] = *(v0 + 72);
  v11[1] = v3;
  sub_4620(v9, v8);
  sub_4620(v11, v8);
  sub_19A0(&qword_25798, &qword_1A5A0);
  sub_18BE4();
  v5 = sub_181F8(v9, v11, v8[0]);
  v6 = *&v5[OBJC_IVAR____TtC26DefaultCallingAppsSettings24DialerAppChangeValidator_viewController];

  return v6;
}

void *sub_17EB8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 144);
  v3 = *(v1 + 152);
  v5 = type metadata accessor for DialerAppChangeValidator.Sheet.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCVC26DefaultCallingAppsSettings24DialerAppChangeValidator5Sheet11Coordinator_completion];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

void sub_18040(uint64_t a1)
{
  sub_18460();
  sub_18BC4();
  __break(1u);
}

id sub_1810C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_181F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DialerAppChangeValidator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC26DefaultCallingAppsSettings24DialerAppChangeValidator_previousApp];
  *v8 = *a1;
  v10 = *(a1 + 32);
  v9 = *(a1 + 48);
  v11 = *(a1 + 16);
  *(v8 + 8) = *(a1 + 64);
  *(v8 + 2) = v10;
  *(v8 + 3) = v9;
  *(v8 + 1) = v11;
  v12 = &v7[OBJC_IVAR____TtC26DefaultCallingAppsSettings24DialerAppChangeValidator_newApp];
  *v12 = *a2;
  v14 = *(a2 + 32);
  v13 = *(a2 + 48);
  v15 = *(a2 + 16);
  *(v12 + 8) = *(a2 + 64);
  *(v12 + 2) = v14;
  *(v12 + 3) = v13;
  *(v12 + 1) = v15;
  type metadata accessor for DialingAppChangeConfirmationViewController();
  sub_4620(a1, v21);
  sub_4620(a2, v21);
  v16 = sub_1522C(a1, a2);
  v17 = *&stru_68.segname[swift_isaMask & *v16];
  v18 = swift_unknownObjectRetain();
  v17(v18, &off_21470);

  *&v7[OBJC_IVAR____TtC26DefaultCallingAppsSettings24DialerAppChangeValidator_viewController] = v16;
  v20.receiver = v7;
  v20.super_class = v6;
  return objc_msgSendSuper2(&v20, "init");
}

__n128 sub_18374(uint64_t a1, uint64_t a2)
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

uint64_t sub_183A0(uint64_t a1, int a2)
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

uint64_t sub_183E8(uint64_t result, int a2, int a3)
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

unint64_t sub_18460()
{
  result = qword_25808;
  if (!qword_25808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25808);
  }

  return result;
}

uint64_t sub_184BC(int a1, int a2, int a3, int a4)
{
  if (qword_262C8 == -1)
  {
    if (qword_262D0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_18984();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_262D0)
    {
      return _availability_version_check();
    }
  }

  if (qword_262C0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1899C();
    a3 = v10;
    a4 = v9;
    v8 = dword_262B0 < v11;
    if (dword_262B0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_262B4 > a3)
      {
        return 1;
      }

      if (dword_262B4 >= a3)
      {
        return dword_262B8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_262B0 < a2;
  if (dword_262B0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_18650(uint64_t result)
{
  v1 = qword_262D0;
  if (qword_262D0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_262D0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_262B0, &dword_262B4, &dword_262B8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}