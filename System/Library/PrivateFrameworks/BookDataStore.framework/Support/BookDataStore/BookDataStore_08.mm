uint64_t sub_100120D10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15PersistentStateO2V1V10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15PersistentStateO2V1V10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100120ED4()
{
  result = qword_100271D70;
  if (!qword_100271D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D70);
  }

  return result;
}

unint64_t sub_100120F2C()
{
  result = qword_100271D78;
  if (!qword_100271D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D78);
  }

  return result;
}

unint64_t sub_100120F84()
{
  result = qword_100271D80;
  if (!qword_100271D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D80);
  }

  return result;
}

unint64_t sub_100120FDC()
{
  result = qword_100271D88;
  if (!qword_100271D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D88);
  }

  return result;
}

unint64_t sub_100121034()
{
  result = qword_100271D90;
  if (!qword_100271D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D90);
  }

  return result;
}

unint64_t sub_10012108C()
{
  result = qword_100271D98;
  if (!qword_100271D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D98);
  }

  return result;
}

uint64_t sub_1001210E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4964656B63617274 && a2 == 0xEC000000736D6574;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C616564 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353657461647075 && a2 == 0xEE00656C75646568 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEA00000000006574 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F724665726F7473 && a2 == 0xEC0000004449746ELL || (sub_1001C6D08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657268546C616564 && a2 == 0xED0000646C6F6873 || (sub_1001C6D08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002021B0 == a2 || (sub_1001C6D08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696D694C64726163 && a2 == 0xE900000000000074)
  {

    return 7;
  }

  else
  {
    v6 = sub_1001C6D08();

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

unint64_t sub_100121464()
{
  result = qword_100271DA0;
  if (!qword_100271DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271DA0);
  }

  return result;
}

unint64_t sub_1001214B8()
{
  result = qword_100271DA8;
  if (!qword_100271DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271DA8);
  }

  return result;
}

uint64_t sub_10012150C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:14 inDomains:1];

  v4 = sub_1001C4B28();
  v5 = sub_1001C6298();
  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  (*(*(v4 - 8) + 16))(a1, v5 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);
}

uint64_t static CRDTModelFileSyncContextStore.persistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v21 = "q_handle, no delta";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_10012150C(v12);
  sub_1001C4AA8();
  v15 = *(v6 + 8);
  v15(v12, v5);
  v16 = [objc_opt_self() books];
  v17 = [v16 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v15(v9, v5);
  v18 = *(v22 + 96);
  v25[0] = *(v22 + 80);
  v25[1] = v18;
  type metadata accessor for _CRDTModelContextStore(0, v25);
  (*(v6 + 16))(v4, v12, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v19 = sub_100121928(v14, v4, v23, v24);
  sub_10008875C(v4, &unk_10026EF10, &unk_1001F1FA0);
  v15(v12, v5);
  v15(v14, v5);
  return v19;
}

uint64_t sub_100121928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v7 = sub_1001C4988();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v10 = __chkstk_darwin(v9 - 8);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v14 = sub_1001C4B28();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v51 - v22;
  __chkstk_darwin(v21);
  v24 = *(v15 + 16);
  v60 = &v51 - v25;
  v52 = v24;
  v51 = v15 + 16;
  (v24)(&v51 - v25);
  *&v62 = a3;
  *(&v62 + 1) = a4;

  v65._countAndFlagsBits = 45;
  v65._object = 0xE100000000000000;
  sub_1001C6138(v65);
  v66._countAndFlagsBits = sub_100122588();
  sub_1001C6138(v66);

  v26 = v62;
  v61 = v23;
  sub_1001C4AA8();
  sub_100122BBC(v56, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_10008875C(v13, &unk_10026EF10, &unk_1001F1FA0);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    sub_100122608(a1, v20, v26, *(&v26 + 1));

    (*(v15 + 8))(v20, v14);
  }

  v27 = sub_1001C65B8();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v28 = qword_10026F958;
  v55 = sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001F0670;
  v30 = sub_1001C4A58();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  v33 = sub_100084570();
  *(v29 + 64) = v33;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v56 = v28;
  sub_1001C5118(v27, &_mh_execute_header, v28, "CRDTModelContextStore storeDirectory = %@", 41, 2, v29);

  v34 = v57;
  sub_1001C4978();
  sub_1001C4968();
  v35 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v36);
  v38 = v37;
  *&v62 = 0;
  LODWORD(v29) = [v35 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v62];

  if (v29)
  {
    v39 = v62;
    sub_1001C4A78();
    sub_1001C5E38();
    v40 = v61;
    v52(v53, v61, v14);
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    (*(v15 + 56))(v54, 1, 1, v14);
    v50 = sub_1001C5E28();
  }

  else
  {
    v41 = v62;
    sub_1001C4A28();

    swift_willThrow();
    v42 = sub_1001C6598();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1001F0660;
    v40 = v61;
    v44 = sub_1001C4A58();
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = v33;
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    swift_getErrorValue();
    v46 = sub_1001C6D98();
    *(v43 + 96) = &type metadata for String;
    *(v43 + 104) = v33;
    *(v43 + 72) = v46;
    *(v43 + 80) = v47;
    sub_1001C5118(v42, &_mh_execute_header, v56, "CRDTModelContextStore unable to create CRContext at %@ error=%@", 63, 2, v43);

    sub_1001C5E38();
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v50 = sub_1001C5E18();

    sub_10008875C(&v62, &unk_10026EF20, &unk_1001F1FB0);
  }

  (*(v58 + 8))(v34, v59);
  v48 = *(v15 + 8);
  v48(v40, v14);
  v48(v60, v14);
  return v50;
}

uint64_t static CRDTModelFileSyncContextStore.groupPersistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1001C4B28();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = [objc_opt_self() books];
  v16 = [v15 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v17 = *(v9 + 8);
  v17(v12, v8);
  v18 = *(v3 + 96);
  v23[0] = *(v3 + 80);
  v23[1] = v18;
  type metadata accessor for _CRDTModelContextStore(0, v23);
  (*(v9 + 56))(v7, 1, 1, v8);
  v19 = sub_100121928(v14, v7, a1, v22);
  sub_10008875C(v7, &unk_10026EF10, &unk_1001F1FA0);
  v17(v14, v8);
  return v19;
}

uint64_t static CRDTModelLocalFileContextStore.persistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v21 = "ReadingHistoryModel";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_10012150C(v12);
  sub_1001C4AA8();
  v15 = *(v6 + 8);
  v15(v12, v5);
  v16 = [objc_opt_self() books];
  v17 = [v16 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v15(v9, v5);
  v18 = *(v22 + 96);
  v25[0] = *(v22 + 80);
  v25[1] = v18;
  type metadata accessor for _CRDTModelContextStore(0, v25);
  (*(v6 + 16))(v4, v12, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v19 = sub_100121928(v14, v4, v23, v24);
  sub_10008875C(v4, &unk_10026EF10, &unk_1001F1FA0);
  v15(v12, v5);
  v15(v14, v5);
  return v19;
}

uint64_t sub_100122588()
{
  v2 = (*(*(v0 + 104) + 8))();

  v3._countAndFlagsBits = 0x2E747865746E6F43;
  v3._object = 0xEA00000000006264;
  sub_1001C6138(v3);

  return v2;
}

void sub_100122608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v66 = &v60 - v11;
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  sub_1001C4AA8();
  v14 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v15 = sub_1001C5FE8();

  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    v61 = a1;
    v62 = v5;
    v64 = v9;
    v65 = v6;
    v63 = v14;
    v17 = sub_1001C65B8();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    v18 = qword_10026F958;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v19 = swift_allocObject();
    v60 = xmmword_1001F0670;
    *(v19 + 16) = xmmword_1001F0670;
    v20 = sub_1001C4A58();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    v23 = sub_100084570();
    *(v19 + 64) = v23;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v24 = v18;
    sub_1001C5118(v17, &_mh_execute_header, v18, "CRDTModelContextStore found CRContext file at legacyUrl = %{public}@", 68, 2, v19);

    v25 = v66;
    v26 = v62;
    (*(v65 + 16))(v66, v61, v62);
    v27 = v64;
    sub_1001C4AA8();
    sub_1001C4AF8();
    v28 = sub_1001C5FE8();

    v29 = v63;
    LODWORD(v20) = [v63 fileExistsAtPath:v28];

    if (v20)
    {
      v31 = sub_1001C6598();
      v32 = v24;
      v33 = swift_allocObject();
      *(v33 + 16) = v60;
      v34 = sub_1001C4A58();
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = v23;
      *(v33 + 32) = v34;
      *(v33 + 40) = v35;
      sub_1001C5118(v31, &_mh_execute_header, v32, "CRDTModelContextStore file already exists at url = %{public}@", 61, 2, v33);
    }

    else
    {
      v61 = v24;
      sub_1001C4A88(v30);
      v37 = v36;
      v67 = 0;
      v38 = [v29 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v67];

      v39 = v67;
      if (v38 && (v40 = v67, sub_1001C4A88(v41), v43 = v42, sub_1001C4A88(v44), v46 = v45, v67 = 0, v47 = [v29 moveItemAtURL:v43 toURL:v45 error:&v67], v43, v46, v39 = v67, v47))
      {
        v48 = v67;
        v49 = sub_1001C65B8();
        v50 = swift_allocObject();
        *(v50 + 16) = v60;
        v51 = sub_1001C4A58();
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = v23;
        *(v50 + 32) = v51;
        *(v50 + 40) = v52;
        sub_1001C5118(v49, &_mh_execute_header, v61, "CRDTModelContextStore migrated CRContext file to %{public}@ error=%{public}@", 76, 2, v50);
      }

      else
      {
        v53 = v39;
        sub_1001C4A28();

        swift_willThrow();
        LODWORD(v60) = sub_1001C6598();
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1001F0660;
        v55 = sub_1001C4A58();
        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = v23;
        *(v54 + 32) = v55;
        *(v54 + 40) = v56;
        swift_getErrorValue();
        v57 = sub_1001C6D98();
        *(v54 + 96) = &type metadata for String;
        *(v54 + 104) = v23;
        *(v54 + 72) = v57;
        *(v54 + 80) = v58;
        sub_1001C5118(v60, &_mh_execute_header, v61, "CRDTModelContextStore unable to migrate CRContext file to %{public}@ error=%{public}@", 85, 2, v54);
      }
    }

    v59 = *(v65 + 8);
    v59(v27, v26);
    v59(v25, v26);
    v59(v13, v26);
  }

  else
  {
    (*(v6 + 8))(v13, v5);
  }
}

uint64_t sub_100122BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CRDTModelLocalFileManager.DefaultConfig.storeDirectory.getter()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() books];
  v5 = [v4 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();

  return (*(v1 + 8))(v3, v0);
}

uint64_t CRDTModelLocalFileManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CRDTModelLocalFileManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100122ED8;
}

void sub_100122ED8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t sub_100122F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for ModelState(0, v3, *(*v1 + 88), *(*v1 + 96));
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v7, v3);
  return (*(v5 + 8))(v7, v4);
}

BOOL sub_1001230B0()
{
  v1 = type metadata accessor for ModelState(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;

  MutableObservableContainer.value.getter();

  v5 = v4[*(v1 + 44)];
  (*(v2 + 8))(v4, v1);
  return static CRDTModelLocalFileManager.SyncError.__derived_enum_equals(_:_:)(v5, 1);
}

uint64_t CRDTModelLocalFileManager.observable.getter()
{
  v1 = type metadata accessor for ModelState(255, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v1, WitnessTable, v3);
  sub_1001C6688();
  return v5;
}

uint64_t sub_10012336C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = type metadata accessor for ModelState(0, v3, *(*a1 + 88), *(*a1 + 96));
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a2, v7, v3);
  return (*(v5 + 8))(v7, v4);
}

uint64_t CRDTModelLocalFileManager.enableCloudSync.getter()
{
  v1 = direct field offset for CRDTModelLocalFileManager.enableCloudSync;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRDTModelLocalFileManager.enableCloudSync.setter(char a1)
{
  v3 = direct field offset for CRDTModelLocalFileManager.enableCloudSync;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRDTModelLocalFileManager.__allocating_init(clientName:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v4[11];
  v9 = v4[12];
  v10 = v4[13];
  v14 = v4[10];
  v7 = v14;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  type metadata accessor for CRDTModelLocalFileContextStore(0, &v14);
  v11 = static CRDTModelLocalFileContextStore.persistentContext(_:)(a1, a2);

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v17 = type metadata accessor for CRDTModelLocalFileManager.DefaultConfig(0, &v14);
  v18 = &protocol witness table for CRDTModelLocalFileManager<A>.DefaultConfig;
  v14 = v11;
  v12 = swift_allocObject();
  CRDTModelLocalFileManager.init(config:delegate:)(&v14, 0, 0);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t CRDTModelLocalFileManager.__allocating_init(config:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CRDTModelLocalFileManager.init(config:delegate:)(a1, a2, a3);
  return v6;
}

void *CRDTModelLocalFileManager.init(config:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v97 = a3;
  v112 = a2;
  v114 = a1;
  v5 = *v3;
  v104 = sub_1001C5648();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1001C4B28();
  v111 = *(v105 - 8);
  v7 = __chkstk_darwin(v105);
  v93 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v113 = v86 - v9;
  v10 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v10 - 8);
  v96 = v86 - v11;
  v90 = v5;
  v12 = v5[10];
  v13 = v5[12];
  v14 = v5[11];
  v91 = v14;
  v95 = v13;
  v15 = type metadata accessor for ModelState.Source(0, v12, v14, v13);
  __chkstk_darwin(v15 - 8);
  v94 = v86 - v16;
  v110 = v12;
  v109 = type metadata accessor for ModelState(0, v12, v14, v13);
  v101 = *(v109 - 8);
  v17 = __chkstk_darwin(v109);
  v107 = v86 - v18;
  v108 = *(v12 - 8);
  v19 = __chkstk_darwin(v17);
  v92 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v106 = v86 - v21;
  v22 = sub_1001C6668();
  v89 = v22;
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1001C6638();
  __chkstk_darwin(v98);
  v100 = sub_1001C5688();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v27 = v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v28 = qword_100271FD0;
  v88 = sub_1000C5A14();
  sub_1001C5678();
  sub_1001C6628();
  v29 = *(v23 + 104);
  v29(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v22);
  *(v4 + v28) = sub_1001C66A8();
  v87 = qword_100271FD8;
  v86[1] = "ileManager.model";
  sub_1001C5668();
  aBlock = _swiftEmptyArrayStorage;
  sub_10012779C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  v29(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v89);
  v98 = v27;
  *(v4 + v87) = sub_1001C66A8();
  v30 = qword_100271FE8;
  v31 = [objc_allocWithZone(BDSOSTransactionProvider) init];
  type metadata accessor for ObservableTransaction(0);
  v32 = swift_allocObject();
  *(v4 + v30) = sub_1000879B0(0xD000000000000035, 0x80000001001FDE40, v31, v32);
  *(v4 + direct field offset for CRDTModelLocalFileManager.enableCloudSync) = 0;
  aBlock = 0;
  v117 = 0xE000000000000000;
  sub_1001C69C8(21);

  aBlock = 0xD000000000000013;
  v117 = 0x80000001001FDE80;
  v90 = v90[13];
  v89 = v90[1];
  v33 = v110;
  v122._countAndFlagsBits = (v89)(v110);
  sub_1001C6138(v122);

  v34 = v93;
  sub_1001C5138();
  v35 = v106;
  v36 = v91;
  sub_1001C5B38();
  v37 = v114[3];
  v38 = v114[4];
  sub_10009BB74(v114, v37);
  *(v4 + qword_100271FF0) = (*(v38 + 8))(v37, v38);
  swift_beginAccess();
  v4[3] = v97;
  swift_unknownObjectWeakAssign();
  v39 = v108;
  v40 = v92;
  (*(v108 + 16))(v92, v35, v33);
  v41 = v94;
  (*(v39 + 56))(v94, 1, 2, v33);
  v42 = type metadata accessor for CRDTModelRevisionInfo(0);
  v43 = v96;
  (*(*(v42 - 8) + 56))(v96, 1, 1, v42);
  v44 = v107;
  ModelState.init(model:loaded:source:revisionInfo:)(v40, 0, v41, v43, v33, v36, v95, v107);
  v45 = v109;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v45, WitnessTable, v47);
  v4[4] = sub_10015C6B4(v44);
  v48 = v114[3];
  v49 = v114[4];
  sub_10009BB74(v114, v48);
  (*(v49 + 16))(v48, v49);
  v50 = v111;
  v89();
  sub_1001C4AA8();

  v51 = v34;
  v52 = v105;
  (*(v50 + 32))(v4 + qword_100271FF8, v34);

  v53 = sub_1001C5128();
  v54 = sub_1001C6588();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock = v56;
    *v55 = 136315138;
    (*(v50 + 16))(v51, v4 + qword_100271FF8, v52);
    sub_10012779C(qword_100272010, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v57 = sub_1001C6CC8();
    v59 = v58;

    (*(v50 + 8))(v51, v52);
    v60 = sub_1001874E8(v57, v59, &aBlock);

    *(v55 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "CRDTModelLocalFileManager Init: modelFileURL: %s", v55, 0xCu);
    sub_10008E7BC(v56);
  }

  else
  {
  }

  v61 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v62);
  v64 = v63;
  aBlock = 0;
  v65 = [v61 createDirectoryAtURL:v63 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  if (v65)
  {
    v66 = aBlock;
  }

  else
  {
    v67 = aBlock;
    sub_1001C4A28();

    swift_willThrow();
    v68 = sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    v69 = qword_10026F958;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1001F0660;
    v71 = sub_1001C4A58();
    v73 = v72;
    *(v70 + 56) = &type metadata for String;
    v74 = sub_100084570();
    *(v70 + 64) = v74;
    *(v70 + 32) = v71;
    *(v70 + 40) = v73;
    swift_getErrorValue();
    v75 = sub_1001C6D98();
    *(v70 + 96) = &type metadata for String;
    *(v70 + 104) = v74;
    *(v70 + 72) = v75;
    *(v70 + 80) = v76;
    sub_1001C5118(v68, &_mh_execute_header, v69, "CRDTModelLocalFileManager unable to create directory at %@ error=%@", 67, 2, v70);
  }

  v77 = v111;
  v78 = v4[4] + *(*v4[4] + 128);
  swift_beginAccess();
  *(v78 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  *(v4 + qword_100272000) = _swiftEmptyArrayStorage;
  v79 = os_transaction_create();
  v111 = *(v4 + qword_100271FD8);
  v80 = swift_allocObject();
  *(v80 + 16) = v4;
  *(v80 + 24) = v79;
  v120 = sub_100127760;
  v121 = v80;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_1000DD4AC;
  v119 = &unk_100249680;
  v81 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();
  v82 = v98;
  sub_1001C5668();
  v115 = _swiftEmptyArrayStorage;
  sub_10012779C(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v83 = v102;
  v84 = v104;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v81);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v103 + 8))(v83, v84);
  (*(v99 + 8))(v82, v100);
  (*(v77 + 8))(v113, v105);
  (*(v101 + 8))(v107, v109);
  (*(v108 + 8))(v106, v110);

  sub_10008E7BC(v114);
  return v4;
}

uint64_t sub_100124788(uint64_t a1)
{
  v1 = sub_1001C5128();
  v2 = sub_1001C65B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "CRDTModelLocalFileManager Init: About to load data", v3, 2u);
  }

  v4 = sub_1001C4B48();
  v6 = v5;
  sub_10009AD9C(v4, v5);
  sub_1001248DC(v4, v6, 0);
  sub_1000887D0(v4, v6);

  return sub_1000887D0(v4, v6);
}

uint64_t sub_1001248DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001C5648();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001C5638();
  v13 = v3;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  sub_1001C6678();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100124A04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93 = a1;
  v95 = *v3;
  v96 = a2;
  v6 = sub_1001C5AC8();
  v91 = *(v6 - 8);
  v92 = v6;
  __chkstk_darwin(v6);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v95 + 80);
  v10 = sub_1001C67F8();
  v94 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v84 - v12;
  v99 = v9;
  v98 = *(v9 - 8);
  v14 = __chkstk_darwin(v11);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v84 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v84 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v84 - v24;
  __chkstk_darwin(v23);
  v97 = &v84 - v26;
  sub_100122F5C(&v84 - v26);
  if (a3)
  {
    swift_errorRetain();
    v27 = sub_1001C5128();
    v28 = sub_1001C6598();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v100[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_1001C6D98();
      v33 = sub_1001874E8(v31, v32, v100);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "CRDTModelLocalFileManager Init: couldn't load existing data: %s", v29, 0xCu);
      sub_10008E7BC(v30);
    }
  }

  else
  {
    v88 = v22;
    v89 = v10;
    v85 = v19;
    v86 = v16;
    v87 = v8;
    v90 = v4;
    v34 = sub_1001C5128();
    v35 = sub_1001C65B8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "CRDTModelLocalFileManager Init: About to deserialize existing data", v36, 2u);
    }

    v38 = v95;
    v37 = v96;
    if (v96 >> 60 == 15)
    {
      v4 = v90;
      v42 = sub_1001C5128();
      v43 = sub_1001C6598();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "CRDTModelLocalFileManager Init: couldn't deserialize existing data", v44, 2u);
      }
    }

    else
    {
      v84 = v25;
      v39 = v93;
      sub_10009AD88(v93, v96);
      sub_10009AD9C(v39, v37);
      v40 = v99;
      v41 = *(*(*(v38 + 88) + 8) + 8);
      sub_1001C5AA8();
      v94 = v41;
      v48 = v98;
      (*(v98 + 56))(v13, 0, 1, v40);
      v49 = v84;
      (*(v48 + 32))(v84, v13, v40);
      v50 = v88;
      v4 = v90;
      sub_100122F5C(v88);
      v51 = sub_1001C5C38();
      v52 = *(v48 + 8);
      v52(v50, v40);
      v53 = *(v48 + 16);
      if (v51)
      {
        v54 = v85;
        v53(v85, v49, v99);
        v55 = sub_1001C5128();
        v56 = sub_1001C65B8();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = v52;
          v89 = v48 + 8;
          v59 = v57;
          v100[0] = swift_slowAlloc();
          *v59 = 136315394;
          v60 = v99;
          v61 = sub_1001C6CC8();
          v62 = v54;
          v64 = v63;
          v52(v62, v60);
          v65 = sub_1001874E8(v61, v64, v100);

          *(v59 + 4) = v65;
          *(v59 + 12) = 2080;
          swift_beginAccess();
          v66 = sub_1001C6CC8();
          v68 = sub_1001874E8(v66, v67, v100);

          *(v59 + 14) = v68;
          _os_log_impl(&_mh_execute_header, v55, v56, "CRDTModelLocalFileManager Init: loaded stored model=%s, merging into existing=%s", v59, 0x16u);
          swift_arrayDestroy();

          v70 = v92;
          v69 = v93;
          v71 = v91;
          v72 = v87;
        }

        else
        {

          v52(v54, v99);
          v70 = v92;
          v69 = v93;
          v71 = v91;
          v72 = v87;
          v58 = v52;
        }

        swift_beginAccess();
        v81 = v84;
        v82 = v99;
        sub_1001C5AB8();
        swift_endAccess();
        sub_1000887BC(v69, v96);
        (*(v71 + 8))(v72, v70);
        v58(v81, v82);
      }

      else
      {
        v73 = v86;
        v53(v86, v49, v99);
        v74 = sub_1001C5128();
        v75 = sub_1001C65B8();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v100[0] = v94;
          *v76 = 136315138;
          v77 = sub_1001C6CC8();
          v79 = v78;
          v52(v73, v99);
          v80 = sub_1001874E8(v77, v79, v100);

          *(v76 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v74, v75, "CRDTModelLocalFileManager Init: loaded stored model=%s, no delta", v76, 0xCu);
          sub_10008E7BC(v94);

          sub_1000887BC(v93, v96);
          v52(v49, v99);
        }

        else
        {

          sub_1000887BC(v93, v96);
          v83 = v99;
          v52(v73, v99);
          v52(v49, v83);
        }
      }
    }
  }

  v45 = v4;
  v46 = v97;
  sub_1001256C4(v45, v97);
  return (*(v98 + 8))(v46, v99);
}

uint64_t sub_1001253F8()
{
  v20 = sub_1001C5688();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C5648();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100272000;
  swift_beginAccess();
  v8 = *(v0 + v7);
  *(v0 + v7) = _swiftEmptyArrayStorage;
  v18 = v8;
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v18 + 32);
    v11 = (v1 + 8);
    v12 = (v4 + 8);
    do
    {
      v13 = swift_allocObject();
      v14 = *v10++;
      *(v13 + 16) = v14;

      sub_1001C5638();
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1000F4A98;
      *(v15 + 24) = v13;
      aBlock[4] = sub_10009A564;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_1002498D8;
      v16 = _Block_copy(aBlock);

      sub_1001C5668();
      sub_1001C6698();
      _Block_release(v16);

      (*v11)(v3, v20);
      (*v12)(v6, v19);

      --v9;
    }

    while (v9);
  }
}

uint64_t sub_1001256C4(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 96);
  v4[1] = *(*a1 + 80);
  v4[2] = v2;
  v5 = a2;

  MutableObservableContainer.mutate(_:)(sub_100127BCC, v4);
}

uint64_t sub_100125748(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = a2;
  v30 = *v3;
  v6 = v30[10];
  v7 = v30[12];
  v28 = v30[11];
  v29 = v6;
  v27 = v7;
  v8 = type metadata accessor for ModelState(0, v6, v28, v7);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  (*(v9 + 16))(&v24 - v10, a1, v8);

  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = a1;
    v31 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1001874E8(v26, a3, &v31);
    *(v14 + 12) = 2080;
    v16 = ModelState.description.getter(v8);
    v18 = v17;
    (*(v9 + 8))(v11, v8);
    v19 = sub_1001874E8(v16, v18, &v31);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "CRDTModelLocalFileManager q_updateState (%s) -- newState=%s", v14, 0x16u);
    swift_arrayDestroy();
    a1 = v25;
  }

  else
  {

    v20 = (*(v9 + 8))(v11, v8);
  }

  __chkstk_darwin(v20);
  v21 = v28;
  *(&v24 - 6) = v29;
  *(&v24 - 5) = v21;
  v22 = v30[13];
  *(&v24 - 4) = v27;
  *(&v24 - 3) = v22;
  *(&v24 - 2) = a1;

  MutableObservableContainer.mutate(_:)(sub_100127A64, (&v24 - 8));
}

uint64_t CRDTModelLocalFileManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001C5638();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  sub_1001C6678();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100125BBC(_BYTE *a1, int a2)
{
  v3 = v2;
  v128 = a2;
  v5 = *v2;
  v130 = v5;
  v117 = sub_1001C5648();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v102[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = sub_1001C5688();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v102[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v5[10];
  v9 = v5[11];
  v10 = v5[12];
  v121 = type metadata accessor for ModelState(0, v8, v9, v10);
  v111 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v102[-v11];
  v132 = v10;
  v110 = type metadata accessor for ModelState.Source(0, v8, v9, v10);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v119 = &v102[-v12];
  v13 = sub_1001C5BD8();
  v125 = *(v13 - 8);
  v126 = v13;
  v14 = __chkstk_darwin(v13);
  v124 = &v102[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v8 - 8);
  v17 = __chkstk_darwin(v14);
  v122 = &v102[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v118 = &v102[-v20];
  v21 = __chkstk_darwin(v19);
  v133 = &v102[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v102[-v24];
  __chkstk_darwin(v23);
  v27 = &v102[-v26];
  v134 = os_transaction_create();
  sub_100122F5C(v27);
  v129 = v9;
  v28 = a1;
  v123 = *(v9 + 8);
  LOBYTE(v10) = sub_1001C5C38();
  v29 = v16 + 8;
  v135 = *(v16 + 8);
  v135(v27, v8);
  v30 = qword_1002818E0;
  v108 = v16;
  v33 = *(v16 + 16);
  v32 = v16 + 16;
  v31 = v33;
  if (v10)
  {
    v122 = v28;
    v107 = v31;
    v106 = v32;
    v31(v25, v28, v8);

    v34 = sub_1001C5128();
    v35 = sub_1001C65B8();

    v36 = os_log_type_enabled(v34, v35);
    v131 = v29;
    v105 = v30;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      aBlock = v104;
      *v37 = 67109634;
      *(v37 + 4) = v128 & 1;
      *(v37 + 8) = 2080;
      v103 = v35;
      v38 = sub_1001C6CC8();
      v40 = v39;
      v135(v25, v8);
      v41 = sub_1001874E8(v38, v40, &aBlock);

      *(v37 + 10) = v41;
      *(v37 + 18) = 2080;
      sub_100122F5C(v27);
      v42 = sub_1001C6CC8();
      v44 = v43;
      v45 = v135;
      v135(v27, v8);
      v46 = sub_1001874E8(v42, v44, &aBlock);

      *(v37 + 20) = v46;
      _os_log_impl(&_mh_execute_header, v34, v103, "CRDTModelLocalFileManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v37, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v45 = v135;
      v135(v25, v8);
    }

    v64 = v8;
    sub_100122F5C(v27);
    v65 = v133;
    sub_1001C5C78();
    v45(v27, v8);
    v67 = v124;
    v66 = v125;
    v68 = v126;
    (*(v125 + 104))(v124, enum case for CRCodableVersion.version3(_:), v126);
    v69 = v64;
    v70 = v127;
    v71 = sub_1001C5A98();
    if (v70)
    {

      (*(v66 + 8))(v67, v68);
      v73 = v118;
      v107(v118, v65, v64);
      v74 = sub_1001C5128();
      v75 = sub_1001C6598();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        aBlock = v77;
        *v76 = 136315138;
        v78 = v73;
        v79 = v132;
        v80 = sub_1001C6CC8();
        v82 = v81;
        v135(v78, v69);
        v83 = sub_1001874E8(v80, v82, &aBlock);

        *(v76 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v74, v75, "CRDTModelLocalFileManager q_sync: couldn't serialize model to sync: %s", v76, 0xCu);
        sub_10008E7BC(v77);

        v84 = v135;
      }

      else
      {

        v84 = v135;
        v135(v73, v64);
        v79 = v132;
      }

      v92 = v130[13];
      aBlock = v69;
      v137 = v129;
      v138 = v79;
      v139 = v92;
      type metadata accessor for CRDTModelLocalFileManager.SyncError(0, &aBlock);
      swift_getWitnessTable();
      swift_allocError();
      *v93 = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
      return v84(v133, v69);
    }

    else
    {
      v88 = v122;
      v132 = v72;
      v89 = v71;
      (*(v66 + 8))(v67, v68);
      if (v128)
      {
        v90 = v119;
        v107(v119, v88, v69);
        v91 = 0;
      }

      else
      {
        v91 = 1;
        v90 = v119;
      }

      (*(v108 + 56))(v90, v91, 2, v69);
      v94 = v132;
      sub_10009AD9C(v89, v132);

      v95 = v120;
      MutableObservableContainer.value.getter();

      ModelState.updating(model:source:)(v133, v90, v121);
      sub_100125748(v95, 0x636E79735F71, 0xE600000000000000);
      v130 = *(v3 + qword_100271FD8);
      v96 = swift_allocObject();
      v96[2] = v3;
      v96[3] = v89;
      v97 = v134;
      v96[4] = v94;
      v96[5] = v97;
      v140 = sub_1001279D0;
      v141 = v96;
      aBlock = _NSConcreteStackBlock;
      v137 = 1107296256;
      v138 = sub_1000DD4AC;
      v139 = &unk_100249838;
      v129 = _Block_copy(&aBlock);

      sub_10009AD9C(v89, v94);
      swift_unknownObjectRetain();
      v98 = v112;
      sub_1001C5668();
      v142 = _swiftEmptyArrayStorage;
      sub_10012779C(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
      v99 = v114;
      v100 = v117;
      sub_1001C68C8();
      v101 = v129;
      sub_1001C6698();
      _Block_release(v101);
      swift_unknownObjectRelease();
      sub_1000887D0(v89, v94);
      sub_1000887D0(v89, v94);
      (*(v116 + 8))(v99, v100);
      (*(v113 + 8))(v98, v115);
      (*(v111 + 8))(v120, v121);
      (*(v109 + 8))(v119, v110);
      v135(v133, v69);
    }
  }

  else
  {
    v47 = v122;
    v31(v122, v28, v8);

    v48 = sub_1001C5128();
    v49 = sub_1001C65B8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v131 = v29;
      v51 = v50;
      v133 = swift_slowAlloc();
      aBlock = v133;
      *v51 = 67109634;
      *(v51 + 4) = v128 & 1;
      *(v51 + 8) = 2080;
      v128 = v49;
      v52 = v132;
      v53 = sub_1001C6CC8();
      v127 = v48;
      v55 = v54;
      v56 = v47;
      v57 = v135;
      v135(v56, v8);
      v58 = sub_1001874E8(v53, v55, &aBlock);

      *(v51 + 10) = v58;
      *(v51 + 18) = 2080;
      sub_100122F5C(v27);
      v59 = sub_1001C6CC8();
      v61 = v60;
      v57(v27, v8);
      v62 = sub_1001874E8(v59, v61, &aBlock);

      *(v51 + 20) = v62;
      v63 = v127;
      _os_log_impl(&_mh_execute_header, v127, v128, "CRDTModelLocalFileManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v51, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v135(v47, v8);
      v52 = v132;
    }

    v85 = v130[13];
    aBlock = v8;
    v137 = v129;
    v138 = v52;
    v139 = v85;
    type metadata accessor for CRDTModelLocalFileManager.SyncError(0, &aBlock);
    swift_getWitnessTable();
    swift_allocError();
    *v86 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t CRDTModelLocalFileManager.syncAfterLoaded(_:isRemote:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1001C5648();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001C5638();
  v15 = v4;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1001C6678();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100126C38(uint64_t a1, _BYTE *a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1001230B0();
  v11 = a3 & 1;
  if (!v10)
  {
    return sub_100126CCC(a2, v11, a4, a5);
  }

  v12 = sub_100125BBC(a2, v11);
  if (v5)
  {
  }

  return a4(v12);
}

uint64_t sub_100126CCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v29 = a4;
  HIDWORD(v27) = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v27 - v11;
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "CRDTModelLocalFileManager q_enqueuePendingSync", v15, 2u);
  }

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = *(v7 + 88);
  *(v17 + 40) = *(v7 + 104);
  *(v17 + 48) = v5;
  (*(v9 + 32))(v17 + v16, v12, v8);
  *(v17 + v16 + v10) = BYTE4(v27) & 1;
  v18 = v17 + ((v16 + v10) & 0xFFFFFFFFFFFFFFF8);
  v19 = v29;
  *(v18 + 8) = v28;
  *(v18 + 16) = v19;
  v20 = qword_100272000;
  swift_beginAccess();
  v21 = *(v5 + v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v20) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1000ADC10(0, v21[2] + 1, 1, v21);
    *(v5 + v20) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1000ADC10((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[2 * v24];
  v25[4] = sub_100127B1C;
  v25[5] = v17;
  *(v5 + v20) = v21;
  return swift_endAccess();
}

uint64_t sub_100126F94(uint64_t a1, _BYTE *a2, char a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CRDTModelLocalFileManager q_enqueuePendingSync -- about to run", v9, 2u);
  }

  v10 = sub_100125BBC(a2, a3 & 1);
  return a4(v10);
}

uint64_t sub_100127088(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001C4BB8();

  return sub_100127214(v2);
}

uint64_t sub_100127214(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    v7 = (*(*(v2 + 104) + 8))();
    v9 = sub_1001874E8(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "CRDTModelLocalFileManager: Model did save %s", v5, 0xCu);
    sub_10008E7BC(v6);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CRDTModelLocalFileManager.deinit()
{
  sub_1000CEB00(v0 + 16);

  v1 = qword_100271FF8;
  v2 = sub_1001C4B28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_1002818E0;
  v4 = sub_1001C5148();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CRDTModelLocalFileManager.__deallocating_deinit()
{
  CRDTModelLocalFileManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100127508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ModelState.Source(0, a3, a4, a5);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v17 = *(a3 - 8);
  __chkstk_darwin(v14);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ModelState(0, a3, a4, a5);
  (*(*(v20 - 8) + 8))(a1, v20);
  swift_beginAccess();
  (*(v17 + 16))(v19, a2, a3);
  (*(v17 + 56))(v16, 2, 2, a3);
  v21 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  return ModelState.init(model:loaded:source:revisionInfo:)(v19, 1, v16, v12, a3, a4, a5, a1);
}

uint64_t sub_100127784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012779C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100127850(uint64_t a1)
{
  result = sub_1001C4B28();
  if (v2 <= 0x3F)
  {
    result = sub_1001C5148();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100127974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001279FC(uint64_t a1)
{
  v2 = sub_100084528(&unk_1002718E0, &qword_1001F31F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100127A64(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[6];
  v7 = type metadata accessor for ModelState(0, v3, v4, v5);
  v10 = *(v7 - 8);
  (*(v10 + 8))(a1, v7);
  v8 = *(v10 + 16);

  return v8(a1, v6, v7);
}

uint64_t sub_100127BEC()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_100272198);
  sub_100083274(v0, qword_100272198);
  return sub_1001C5138();
}

uint64_t static SecureEngagementDataHelper.mergedTimeSliceData(local:remote:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v35 = a1;
  v36 = a2;
  v6 = sub_100084528(&qword_1002721B0, &unk_1001F51F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_1001C4F38();
  v10 = __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for PBPropertyTimeSlice(0);
  v34 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = (&v32 - v16);
  __chkstk_darwin(v15);
  v19 = (&v32 - v18);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_10009AD9C(a3, a4);
  sub_1001C4F28();
  sub_10012CB50(&qword_1002721B8, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);
  sub_1001C5028();
  v32 = v14;
  v20 = v34;
  if (!*(*v19 + 16))
  {
    if (qword_10026EBF8 != -1)
    {
      swift_once();
    }

    v22 = sub_1001C5148();
    sub_100083274(v22, qword_100272198);
    v23 = sub_1001C5128();
    v24 = sub_1001C6588();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Not merging empty secure engagement data", v25, 2u);
    }

    sub_10012D108(v19, type metadata accessor for PBPropertyTimeSlice);
    return 0;
  }

  v33 = v19;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_10009AD9C(v35, v36);
  sub_1001C4F28();
  v21 = v17;
  sub_1001C5028();
  v26 = v17;
  v27 = v33;
  static SecureEngagementDataHelper.mergeIntoTimeSlice(_:from:)(v26, v33, v8);
  v28 = (*(v20 + 48))(v8, 1, v11);
  if (v28 == 1)
  {
    sub_10012D108(v21, type metadata accessor for PBPropertyTimeSlice);
    sub_10012D108(v27, type metadata accessor for PBPropertyTimeSlice);
    sub_10008875C(v8, &qword_1002721B0, &unk_1001F51F0);
    return 0;
  }

  v30 = v32;
  sub_10012CAE8(v8, v32, type metadata accessor for PBPropertyTimeSlice);
  v31 = sub_1001C5038();
  sub_10012D108(v30, type metadata accessor for PBPropertyTimeSlice);
  sub_10012D108(v21, type metadata accessor for PBPropertyTimeSlice);
  sub_10012D108(v33, type metadata accessor for PBPropertyTimeSlice);
  return v31;
}

uint64_t static SecureEngagementDataHelper.mergeIntoTimeSlice(_:from:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v323 = a1;
  v301 = a3;
  v4 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  __chkstk_darwin(v4 - 8);
  v307 = &v290 - v5;
  v306 = type metadata accessor for PBPropertyConfiguration(0);
  v331 = *(v306 - 8);
  __chkstk_darwin(v306);
  v305 = (&v290 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PBPropertyValue(0);
  v330 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v296 = &v290 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v316 = &v290 - v11;
  __chkstk_darwin(v10);
  v293 = &v290 - v12;
  v304 = type metadata accessor for PBPropertyBundle(0);
  v326 = *(v304 - 8);
  v13 = __chkstk_darwin(v304);
  v315 = &v290 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v320 = &v290 - v16;
  v17 = __chkstk_darwin(v15);
  v327 = &v290 - v18;
  v19 = __chkstk_darwin(v17);
  v314 = &v290 - v20;
  v21 = __chkstk_darwin(v19);
  v319 = &v290 - v22;
  v23 = __chkstk_darwin(v21);
  v322 = &v290 - v24;
  v25 = __chkstk_darwin(v23);
  v312 = &v290 - v26;
  v27 = __chkstk_darwin(v25);
  v303 = &v290 - v28;
  v29 = __chkstk_darwin(v27);
  v294 = &v290 - v30;
  v31 = __chkstk_darwin(v29);
  v332 = &v290 - v32;
  v33 = __chkstk_darwin(v31);
  v292 = &v290 - v34;
  v35 = __chkstk_darwin(v33);
  v317 = (&v290 - v36);
  __chkstk_darwin(v35);
  v336 = (&v290 - v37);
  v38 = sub_1001C4EE8();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v324 = &v290 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v334 = &v290 - v43;
  v44 = __chkstk_darwin(v42);
  v325 = &v290 - v45;
  __chkstk_darwin(v44);
  *&v328 = &v290 - v46;
  v47 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v48 = __chkstk_darwin(v47 - 8);
  v313 = &v290 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v52 = &v290 - v51;
  v53 = __chkstk_darwin(v50);
  v333 = &v290 - v54;
  v55 = __chkstk_darwin(v53);
  v321 = &v290 - v56;
  v57 = __chkstk_darwin(v55);
  v311 = &v290 - v58;
  v59 = __chkstk_darwin(v57);
  v61 = &v290 - v60;
  __chkstk_darwin(v59);
  v63 = &v290 - v62;
  v64 = type metadata accessor for PBPropertyTimeSlice(0);
  v299 = *(v64 - 8);
  __chkstk_darwin(v64);
  v66 = (&v290 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v66 = _swiftEmptyArrayStorage;
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v67 = *(v64 + 24);
  v68 = v39[7];
  v329 = v66;
  v337 = v67;
  v338 = v68;
  v339 = (v39 + 7);
  (v68)(v67 + v66, 1, 1, v38);
  v69 = *(v64 + 24);
  v318 = a2;
  v335 = v69;
  sub_10009ADF0(v69 + a2, v63, &qword_1002705B8, &unk_1001F2BE0);
  v340 = v39;
  v70 = v39[6];
  LODWORD(a2) = v70(v63, 1, v38);
  sub_10008875C(v63, &qword_1002705B8, &unk_1001F2BE0);
  v300 = v64;
  v71 = *(v64 + 24);
  if (a2 == 1)
  {
    v72 = v323;
    sub_10009ADF0(v323 + v71, v52, &qword_1002705B8, &unk_1001F2BE0);
    v73 = v70(v52, 1, v38);
    sub_10008875C(v52, &qword_1002705B8, &unk_1001F2BE0);
    if (v73 == 1)
    {
      LODWORD(v321) = 0;
      v74 = v316;
      v75 = v322;
      v76 = v332;
      goto LABEL_26;
    }

    v81 = v313;
    sub_10009ADF0(v72 + v71, v313, &qword_1002705B8, &unk_1001F2BE0);
    if (v70(v81, 1, v38) == 1)
    {
      v82 = v324;
      sub_1001C4ED8();
      v83 = v70(v81, 1, v38);
      v84 = v340;
      if (v83 != 1)
      {
        sub_10008875C(v81, &qword_1002705B8, &unk_1001F2BE0);
      }
    }

    else
    {
      v84 = v340;
      v82 = v324;
      (v340[4])(v324, v81, v38);
    }

    LODWORD(v321) = 0;
    v74 = v316;
    v75 = v322;
    v76 = v332;
  }

  else
  {
    v77 = v323;
    sub_10009ADF0(v323 + v71, v61, &qword_1002705B8, &unk_1001F2BE0);
    v78 = v70(v61, 1, v38);
    sub_10008875C(v61, &qword_1002705B8, &unk_1001F2BE0);
    if (v78 == 1)
    {
      v79 = 0;
      v75 = v322;
      v76 = v332;
      v80 = v333;
    }

    else
    {
      v85 = v77;
      v86 = v311;
      sub_10009ADF0(v335 + v318, v311, &qword_1002705B8, &unk_1001F2BE0);
      v87 = v70(v86, 1, v38);
      v75 = v322;
      v76 = v332;
      v80 = v333;
      if (v87 == 1)
      {
        sub_1001C4ED8();
        v88 = v70(v86, 1, v38);
        v89 = v340;
        if (v88 != 1)
        {
          sub_10008875C(v86, &qword_1002705B8, &unk_1001F2BE0);
        }
      }

      else
      {
        v89 = v340;
        (v340[4])(v328, v86, v38);
      }

      v90 = v85 + v71;
      v91 = v321;
      sub_10009ADF0(v90, v321, &qword_1002705B8, &unk_1001F2BE0);
      if (v70(v91, 1, v38) == 1)
      {
        v92 = v325;
        sub_1001C4ED8();
        if (v70(v91, 1, v38) != 1)
        {
          sub_10008875C(v91, &qword_1002705B8, &unk_1001F2BE0);
        }
      }

      else
      {
        v92 = v325;
        (v89[4])(v325, v91, v38);
      }

      sub_10012CB50(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
      v93 = v328;
      v94 = sub_1001C5FD8();
      v95 = v92;
      v96 = v94;
      v97 = v89[1];
      v97(v95, v38);
      v97(v93, v38);
      v79 = v96 ^ 1;
    }

    sub_10009ADF0(v335 + v318, v80, &qword_1002705B8, &unk_1001F2BE0);
    v98 = v70(v80, 1, v38);
    v82 = v334;
    LODWORD(v321) = v79;
    if (v98 == 1)
    {
      sub_1001C4ED8();
      v99 = v70(v80, 1, v38);
      v84 = v340;
      if (v99 != 1)
      {
        sub_10008875C(v80, &qword_1002705B8, &unk_1001F2BE0);
      }
    }

    else
    {
      v84 = v340;
      (v340[4])(v334, v80, v38);
    }

    v74 = v316;
  }

  v100 = v329;
  v101 = v337;
  sub_10008875C(v337 + v329, &qword_1002705B8, &unk_1001F2BE0);
  (v84[4])(v101 + v100, v82, v38);
  (v338)(v101 + v100, 0, 1, v38);
LABEL_26:
  v102 = sub_10012A87C(v323);
  v104 = v103;
  v335 = sub_10012A87C(v318);
  v106 = v105;

  v298 = v106;
  v297 = v104;
  v108 = sub_10012AC10(v107, v104);
  v109 = v108;
  v110 = *(v108 + 16);
  if (v110)
  {
    v111 = sub_10012B568(*(v108 + 16), 0, &qword_10026F7B0, &unk_1001F13E0);
    v112 = sub_10012C928(&v341, v111 + 4, v110, v109);
    sub_100005064(v341);
    if (v112 == v110)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v111 = _swiftEmptyArrayStorage;
LABEL_30:
  v341 = v111;

  sub_10012B3D8(&v341);
  v313 = 0;

  v114 = v341;
  v334 = *(v341 + 2);
  v115 = v323;
  if (!v334)
  {
    goto LABEL_143;
  }

  v116 = 0;
  v333 = v341 + 32;
  v310 = (v331 + 56);
  v302 = (v331 + 48);
  *&v113 = 136315138;
  v328 = v113;
  v337 = _swiftEmptyArrayStorage;
  v324 = v102;
  v325 = v341;
  while (2)
  {
    v117 = &v333[16 * v116];
    v119 = *v117;
    v118 = v117[1];
    v339 = v116 + 1;
    v120 = *(v102 + 2);

    if (!v120 || (v121 = sub_100187B3C(v119, v118), (v122 & 1) == 0))
    {
      v143 = v335;
      if (v335[2])
      {
        v144 = sub_100187B3C(v119, v118);
        v146 = v145;

        if (v146)
        {
          v147 = *(v143[7] + 8 * v144);
          if ((v147 & 0x8000000000000000) != 0)
          {
            goto LABEL_152;
          }

          if (v147 >= *(*v318 + 16))
          {
            goto LABEL_154;
          }

          v148 = (*(v326 + 80) + 32) & ~*(v326 + 80);
          v149 = *(v326 + 72);
          v150 = v327;
          sub_10012CA80(*v318 + v148 + v149 * v147, v327, type metadata accessor for PBPropertyBundle);
          sub_10012CA80(v150, v320, type metadata accessor for PBPropertyBundle);
          v151 = v76;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v337 = sub_1000AE3E0(0, v337[2] + 1, 1, v337);
          }

          v152 = v115;
          v154 = v337[2];
          v153 = v337[3];
          v155 = v74;
          if (v154 >= v153 >> 1)
          {
            v337 = sub_1000AE3E0((v153 > 1), v154 + 1, 1, v337);
          }

          v156 = v337;
          v337[2] = v154 + 1;
          sub_10012CAE8(v320, v156 + v148 + v154 * v149, type metadata accessor for PBPropertyBundle);
          *v329 = v156;
          if (qword_10026EBF8 != -1)
          {
            swift_once();
          }

          v157 = sub_1001C5148();
          sub_100083274(v157, qword_100272198);
          v158 = v327;
          v159 = v315;
          sub_10012CA80(v327, v315, type metadata accessor for PBPropertyBundle);
          v160 = sub_1001C5128();
          v161 = sub_1001C6588();
          v162 = v155;
          if (os_log_type_enabled(v160, v161))
          {
            v163 = v159;
            v164 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v341 = v165;
            *v164 = v328;
            sub_1000D70AC();
            v167 = v166;
            v169 = v168;
            sub_10012D108(v163, type metadata accessor for PBPropertyBundle);
            v170 = v167;
            v76 = v332;
            v171 = sub_1001874E8(v170, v169, &v341);

            *(v164 + 4) = v171;
            _os_log_impl(&_mh_execute_header, v160, v161, "Taking on cloud property bundle %s", v164, 0xCu);
            sub_10008E7BC(v165);

            v75 = v322;
            v115 = v323;
            sub_10012D108(v327, type metadata accessor for PBPropertyBundle);
            v102 = v324;
            v116 = v339;
          }

          else
          {

            sub_10012D108(v159, type metadata accessor for PBPropertyBundle);
            sub_10012D108(v158, type metadata accessor for PBPropertyBundle);
            v102 = v324;
            v116 = v339;
            v115 = v152;
            v76 = v151;
          }

          if (v116 != v334)
          {
            v74 = v162;
            LODWORD(v321) = 1;
            v114 = v325;
            goto LABEL_35;
          }

          v287 = v301;
          goto LABEL_146;
        }

        v114 = v325;
      }

      else
      {
      }

LABEL_33:
      v116 = v339;
      goto LABEL_34;
    }

    v123 = *(*(v102 + 7) + 8 * v121);
    if (!v335[2] || (v124 = sub_100187B3C(v119, v118), (v125 & 1) == 0))
    {

      if ((v123 & 0x8000000000000000) != 0)
      {
        goto LABEL_153;
      }

      if (v123 >= *(*v115 + 16))
      {
        goto LABEL_155;
      }

      v172 = (*(v326 + 80) + 32) & ~*(v326 + 80);
      v173 = *(v326 + 72);
      sub_10012CA80(*v115 + v172 + v173 * v123, v75, type metadata accessor for PBPropertyBundle);
      v174 = v75;
      sub_10012CA80(v75, v319, type metadata accessor for PBPropertyBundle);
      v175 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v337 = sub_1000AE3E0(0, v337[2] + 1, 1, v337);
      }

      v176 = v115;
      v178 = v337[2];
      v177 = v337[3];
      v179 = v74;
      if (v178 >= v177 >> 1)
      {
        v337 = sub_1000AE3E0((v177 > 1), v178 + 1, 1, v337);
      }

      v180 = v337;
      v337[2] = v178 + 1;
      sub_10012CAE8(v319, v180 + v172 + v178 * v173, type metadata accessor for PBPropertyBundle);
      *v329 = v180;
      if (qword_10026EBF8 != -1)
      {
        swift_once();
      }

      v181 = sub_1001C5148();
      sub_100083274(v181, qword_100272198);
      v182 = v314;
      sub_10012CA80(v174, v314, type metadata accessor for PBPropertyBundle);
      v183 = sub_1001C5128();
      v184 = sub_1001C6588();
      v74 = v179;
      if (!os_log_type_enabled(v183, v184))
      {

        sub_10012D108(v182, type metadata accessor for PBPropertyBundle);
        sub_10012D108(v174, type metadata accessor for PBPropertyBundle);
        v102 = v324;
        v116 = v339;
        v115 = v176;
        v76 = v175;
        v75 = v174;
        goto LABEL_34;
      }

      v185 = v182;
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v341 = v187;
      *v186 = v328;
      sub_1000D70AC();
      v189 = v188;
      v191 = v190;
      v192 = v185;
      v76 = v332;
      sub_10012D108(v192, type metadata accessor for PBPropertyBundle);
      v193 = sub_1001874E8(v189, v191, &v341);

      *(v186 + 4) = v193;
      _os_log_impl(&_mh_execute_header, v183, v184, "Keeping local property bundle %s unchanged", v186, 0xCu);
      sub_10008E7BC(v187);

      v75 = v322;
      v115 = v323;
      sub_10012D108(v322, type metadata accessor for PBPropertyBundle);
      v102 = v324;
      goto LABEL_33;
    }

    if ((v123 & 0x8000000000000000) != 0)
    {
      goto LABEL_156;
    }

    v126 = *v115;
    if (v123 >= *(*v115 + 16))
    {
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v127 = *(v335[7] + 8 * v124);
    v128 = (*(v326 + 80) + 32) & ~*(v326 + 80);
    v129 = *(v326 + 72);
    sub_10012CA80(v126 + v128 + v129 * v123, v336, type metadata accessor for PBPropertyBundle);
    if ((v127 & 0x8000000000000000) != 0)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v130 = *v318;
    if (v127 >= *(*v318 + 16))
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v309 = v128;
    v308 = v129;
    v131 = v130 + v128 + v129 * v127;
    v132 = v317;
    sub_10012CA80(v131, v317, type metadata accessor for PBPropertyBundle);
    v133 = sub_10012AD14(v336);
    v135 = v134;
    v136 = sub_10012AD14(v132);

    v138 = sub_10012AC10(v137, v135);
    v139 = v138;
    v140 = *(v138 + 16);
    if (v140)
    {
      v141 = sub_10012B568(*(v138 + 16), 0, &qword_10026F7B0, &unk_1001F13E0);
      v142 = sub_10012C928(&v341, v141 + 4, v140, v139);
      sub_100005064(v341);
      if (v142 != v140)
      {
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }
    }

    else
    {

      v141 = _swiftEmptyArrayStorage;
    }

    v341 = v141;

    v194 = v313;
    sub_10012B3D8(&v341);
    v313 = v194;
    if (v194)
    {
LABEL_165:

      __break(1u);
      return result;
    }

    v195 = v341;
    v196 = *(v341 + 2);
    if (!v196)
    {

      LODWORD(v311) = 0;
      v340 = _swiftEmptyArrayStorage;
      goto LABEL_129;
    }

    v197 = 0;
    v198 = 0;
    v338 = -v196;
    v199 = v341 + 40;
    v340 = _swiftEmptyArrayStorage;
    v331 = v341;
    v295 = v341 + 40;
    while (2)
    {
      LODWORD(v311) = v197;
      v200 = &v199[16 * v198++];
      while (1)
      {
        if ((v198 - 1) >= *(v195 + 2))
        {
          __break(1u);
          goto LABEL_149;
        }

        v202 = *(v200 - 1);
        v201 = *v200;
        v203 = v133[2];

        if (!v203)
        {
          break;
        }

        v204 = sub_100187B3C(v202, v201);
        if ((v205 & 1) == 0)
        {
          break;
        }

        v206 = *(v133[7] + 8 * v204);
        if (v136[2])
        {
          v207 = sub_100187B3C(v202, v201);
          v209 = v208;

          if (v209)
          {
            v245 = *(v136[7] + 8 * v207);
            if ((v245 & 0x8000000000000000) != 0)
            {
              goto LABEL_163;
            }

            if (v245 >= *(*v317 + 16))
            {
              goto LABEL_164;
            }

            v246 = (*(v330 + 80) + 32) & ~*(v330 + 80);
            v247 = *(v330 + 72);
            sub_10012CA80(*v317 + v246 + v247 * v245, v293, type metadata accessor for PBPropertyValue);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v340 = sub_1000AE408(0, v340[2] + 1, 1, v340);
            }

            v249 = v340[2];
            v248 = v340[3];
            if (v249 >= v248 >> 1)
            {
              v340 = sub_1000AE408((v248 > 1), v249 + 1, 1, v340);
            }

            v250 = v340;
            v340[2] = v249 + 1;
            sub_10012CAE8(v293, v250 + v246 + v249 * v247, type metadata accessor for PBPropertyValue);
            if (qword_10026EBF8 != -1)
            {
              swift_once();
            }

            v251 = sub_1001C5148();
            sub_100083274(v251, qword_100272198);
            v235 = v292;
            sub_10012CA80(v317, v292, type metadata accessor for PBPropertyBundle);
            v236 = sub_1001C5128();
            v252 = sub_1001C6588();
            if (os_log_type_enabled(v236, v252))
            {
              v253 = swift_slowAlloc();
              v291 = v253;
              v311 = swift_slowAlloc();
              v341 = v311;
              *v253 = v328;
              sub_1000D70AC();
              v255 = v254;
              v257 = v256;
              sub_10012D108(v235, type metadata accessor for PBPropertyBundle);
              v258 = sub_1001874E8(v255, v257, &v341);

              v259 = v291;
              *(v291 + 1) = v258;
              _os_log_impl(&_mh_execute_header, v236, v252, "Taking on cloud property value %s instead of the local version", v259, 0xCu);
              sub_10008E7BC(v311);

              goto LABEL_123;
            }

            goto LABEL_124;
          }

          if ((v206 & 0x8000000000000000) != 0)
          {
            goto LABEL_150;
          }
        }

        else
        {

          if ((v206 & 0x8000000000000000) != 0)
          {
            goto LABEL_150;
          }
        }

        if (v206 >= *(*v336 + 16))
        {
          goto LABEL_151;
        }

        v213 = (*(v330 + 80) + 32) & ~*(v330 + 80);
        v214 = *(v330 + 72);
        sub_10012CA80(*v336 + v213 + v214 * v206, v74, type metadata accessor for PBPropertyValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v340 = sub_1000AE408(0, v340[2] + 1, 1, v340);
        }

        v216 = v340[2];
        v215 = v340[3];
        if (v216 >= v215 >> 1)
        {
          v340 = sub_1000AE408((v215 > 1), v216 + 1, 1, v340);
        }

        v217 = v340;
        v340[2] = v216 + 1;
        sub_10012CAE8(v74, v217 + v213 + v216 * v214, type metadata accessor for PBPropertyValue);
        if (qword_10026EBF8 != -1)
        {
          swift_once();
        }

        v218 = sub_1001C5148();
        sub_100083274(v218, qword_100272198);
        sub_10012CA80(v336, v76, type metadata accessor for PBPropertyBundle);
        v219 = sub_1001C5128();
        v220 = sub_1001C6588();
        if (os_log_type_enabled(v219, v220))
        {
          v221 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v341 = v222;
          *v221 = v328;
          sub_1000D70AC();
          v224 = v223;
          v226 = v225;
          sub_10012D108(v332, type metadata accessor for PBPropertyBundle);
          v227 = sub_1001874E8(v224, v226, &v341);
          v76 = v332;

          *(v221 + 4) = v227;
          _os_log_impl(&_mh_execute_header, v219, v220, "Keeping property bundle %s unchanged", v221, 0xCu);
          sub_10008E7BC(v222);
          v74 = v316;
        }

        else
        {

          sub_10012D108(v76, type metadata accessor for PBPropertyBundle);
        }

        v195 = v331;
LABEL_80:
        ++v198;
        v200 += 2;
        if (v338 + v198 == 1)
        {

          goto LABEL_129;
        }
      }

      if (!v136[2])
      {

        goto LABEL_80;
      }

      v210 = sub_100187B3C(v202, v201);
      v212 = v211;

      if ((v212 & 1) == 0)
      {
        goto LABEL_80;
      }

      v228 = *(v136[7] + 8 * v210);
      if ((v228 & 0x8000000000000000) != 0)
      {
        goto LABEL_161;
      }

      if (v228 >= *(*v317 + 16))
      {
        goto LABEL_162;
      }

      v229 = (*(v330 + 80) + 32) & ~*(v330 + 80);
      v230 = *(v330 + 72);
      sub_10012CA80(*v317 + v229 + v230 * v228, v296, type metadata accessor for PBPropertyValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v340 = sub_1000AE408(0, v340[2] + 1, 1, v340);
      }

      v232 = v340[2];
      v231 = v340[3];
      if (v232 >= v231 >> 1)
      {
        v340 = sub_1000AE408((v231 > 1), v232 + 1, 1, v340);
      }

      v233 = v340;
      v340[2] = v232 + 1;
      sub_10012CAE8(v296, v233 + v229 + v232 * v230, type metadata accessor for PBPropertyValue);
      if (qword_10026EBF8 != -1)
      {
        swift_once();
      }

      v234 = sub_1001C5148();
      sub_100083274(v234, qword_100272198);
      v235 = v294;
      sub_10012CA80(v317, v294, type metadata accessor for PBPropertyBundle);
      v236 = sub_1001C5128();
      v237 = sub_1001C6588();
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v341 = v239;
        *v238 = v328;
        sub_1000D70AC();
        v241 = v240;
        v243 = v242;
        sub_10012D108(v235, type metadata accessor for PBPropertyBundle);
        v244 = sub_1001874E8(v241, v243, &v341);
        v74 = v316;

        *(v238 + 4) = v244;
        _os_log_impl(&_mh_execute_header, v236, v237, "Taking on cloud property value %s", v238, 0xCu);
        sub_10008E7BC(v239);
        v76 = v332;

LABEL_123:

        goto LABEL_125;
      }

LABEL_124:

      sub_10012D108(v235, type metadata accessor for PBPropertyBundle);
LABEL_125:
      v195 = v331;
      v197 = 1;
      v199 = v295;
      if (v338 + v198)
      {
        continue;
      }

      break;
    }

    LODWORD(v311) = 1;
LABEL_129:

    v260 = v303;
    *v303 = _swiftEmptyArrayStorage;
    *(v260 + 1) = _swiftEmptyArrayStorage;
    v261 = v304;
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    v262 = *v310;
    v263 = v306;
    (*v310)(&v260[*(v261 + 28)], 1, 1, v306);
    v264 = v307;
    sub_10009ADF0(v317 + *(v261 + 28), v307, &qword_1002705A8, &unk_1001F5200);
    v265 = *v302;
    v266 = (*v302)(v264, 1, v263);
    v267 = v305;
    if (v266 == 1)
    {
      *v305 = 0;
      v267[1] = 0;
      v267[2] = 0;
      v267[3] = 0xE000000000000000;
      v267[4] = 0;
      _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
      v268 = v265(v264, 1, v263);
      v114 = v325;
      if (v268 != 1)
      {
        sub_10008875C(v264, &qword_1002705A8, &unk_1001F5200);
      }
    }

    else
    {
      sub_10012CAE8(v264, v305, type metadata accessor for PBPropertyConfiguration);
      v114 = v325;
    }

    swift_beginAccess();
    v269 = *(v261 + 28);
    sub_10008875C(&v260[v269], &qword_1002705A8, &unk_1001F5200);
    sub_10012CAE8(v267, &v260[v269], type metadata accessor for PBPropertyConfiguration);
    v262(&v260[v269], 0, 1, v263);
    *v260 = v340;

    sub_10012CA80(v260, v312, type metadata accessor for PBPropertyBundle);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v337 = sub_1000AE3E0(0, v337[2] + 1, 1, v337);
    }

    v270 = v309;
    v271 = v308;
    v273 = v337[2];
    v272 = v337[3];
    if (v273 >= v272 >> 1)
    {
      v337 = sub_1000AE3E0((v272 > 1), v273 + 1, 1, v337);
    }

    v274 = v337;
    v337[2] = v273 + 1;
    sub_10012CAE8(v312, v274 + v270 + v273 * v271, type metadata accessor for PBPropertyBundle);
    *v329 = v274;
    if (qword_10026EBF8 != -1)
    {
      swift_once();
    }

    v275 = sub_1001C5148();
    sub_100083274(v275, qword_100272198);
    v276 = sub_1001C5128();
    v277 = sub_1001C6588();
    v278 = os_log_type_enabled(v276, v277);
    v279 = v321;
    if (v278)
    {
      v280 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      v341 = v281;
      *v280 = v328;
      sub_1000D70AC();
      v284 = v260;
      v285 = sub_1001874E8(v282, v283, &v341);

      *(v280 + 4) = v285;

      _os_log_impl(&_mh_execute_header, v276, v277, "Merged property bundle %s", v280, 0xCu);
      sub_10008E7BC(v281);

      v115 = v323;
    }

    else
    {

      v115 = v323;
      v284 = v260;
    }

    v75 = v322;
    v102 = v324;
    v116 = v339;
    LODWORD(v321) = v279 | v311;
    sub_10012D108(v317, type metadata accessor for PBPropertyBundle);
    sub_10012D108(v336, type metadata accessor for PBPropertyBundle);
    sub_10012D108(v284, type metadata accessor for PBPropertyBundle);
    v76 = v332;
LABEL_34:
    if (v116 != v334)
    {
LABEL_35:
      if (v116 < *(v114 + 2))
      {
        continue;
      }

LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    break;
  }

LABEL_143:

  v286 = v321;

  v287 = v301;
  if ((v286 & 1) == 0)
  {
    sub_10012D108(v329, type metadata accessor for PBPropertyTimeSlice);
    v288 = 1;
    return (*(v299 + 56))(v287, v288, 1, v300);
  }

LABEL_146:
  sub_10012CAE8(v329, v287, type metadata accessor for PBPropertyTimeSlice);
  v288 = 0;
  return (*(v299 + 56))(v287, v288, 1, v300);
}

void *sub_10012A87C(uint64_t *a1)
{
  v2 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for PBPropertyConfiguration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for PBPropertyBundle(0);
  __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[2] = &_swiftEmptySetSingleton;
  v12 = *a1;
  v27 = *(*a1 + 16);
  if (!v27)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v13 = 0;
  v14 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v25 = *(v9 + 72);
  v15 = &_swiftEmptyDictionarySingleton;
  v16 = (v6 + 48);
  v26 = v5;
  v24 = (v6 + 48);
  do
  {
    sub_10012CA80(v14, v11, type metadata accessor for PBPropertyBundle);
    sub_10009ADF0(&v11[*(v28 + 28)], v4, &qword_1002705A8, &unk_1001F5200);
    v22 = *v16;
    if ((*v16)(v4, 1, v5) == 1)
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = 0xE000000000000000;
      v8[4] = 0;
      _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
      sub_10012D108(v11, type metadata accessor for PBPropertyBundle);
      if (v22(v4, 1, v5) != 1)
      {
        sub_10008875C(v4, &qword_1002705A8, &unk_1001F5200);
      }
    }

    else
    {
      sub_10012D108(v11, type metadata accessor for PBPropertyBundle);
      sub_10012CAE8(v4, v8, type metadata accessor for PBPropertyConfiguration);
    }

    v17 = v4;
    v19 = v8[2];
    v18 = v8[3];

    sub_10012D108(v8, type metadata accessor for PBPropertyConfiguration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29[0] = v15;
    sub_10017B498(v13, v19, v18, isUniquelyReferenced_nonNull_native);
    v15 = v29[0];
    v21 = v18;
    v4 = v17;
    sub_100178A6C(v29, v19, v21);

    v5 = v26;
    v14 += v25;
    ++v13;
    v16 = v24;
  }

  while (v27 != v13);
  return v15;
}

uint64_t sub_10012AC10(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100178A6C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_10012AD14(uint64_t *a1)
{
  v47 = sub_1001C4C28();
  v2 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001C4CA8();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_1001C4EE8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for PBPropertyValue(0);
  __chkstk_darwin(v48);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = &_swiftEmptySetSingleton;
  v16 = *a1;
  v43 = *(*a1 + 16);
  if (!v43)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v17 = 0;
  v18 = v4;
  v19 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v41 = *(v13 + 72);
  v20 = (v10 + 48);
  v38 = (v2 + 8);
  v39 = (v10 + 8);
  v36 = (v10 + 32);
  v37 = (v18 + 8);
  v21 = &_swiftEmptyDictionarySingleton;
  v40 = v20;
  v42 = v8;
  do
  {
    sub_10012CA80(v19, v15, type metadata accessor for PBPropertyValue);
    sub_10009ADF0(&v15[*(v48 + 28)], v8, &qword_1002705B8, &unk_1001F2BE0);
    v25 = *v20;
    if ((*v20)(v8, 1, v9) == 1)
    {
      sub_1001C4ED8();
      if (v25(v8, 1, v9) != 1)
      {
        sub_10008875C(v8, &qword_1002705B8, &unk_1001F2BE0);
      }
    }

    else
    {
      (*v36)(v12, v8, v9);
    }

    v26 = v44;
    sub_1001C4EC8();
    v27 = v12;
    v28 = v9;
    (*v39)(v12, v9);
    v29 = v46;
    sub_1001C4738();
    sub_10012CB50(&qword_1002721F0, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
    v30 = v47;
    sub_1001C4C88();
    (*v38)(v29, v30);
    (*v37)(v26, v45);
    v32 = v49;
    v31 = v50;
    v33 = &v15[*(v48 + 32)];
    v34 = v33[1];
    if (v34)
    {
      v49 = *v33;
      v50 = v34;
      swift_bridgeObjectRetain_n();
      v53._countAndFlagsBits = 124;
      v53._object = 0xE100000000000000;
      sub_1001C6138(v53);

      v54._countAndFlagsBits = v32;
      v54._object = v31;
      sub_1001C6138(v54);
    }

    else
    {
      v49 = 124;
      v50 = 0xE100000000000000;
      v52._countAndFlagsBits = v32;
      v52._object = v31;
      sub_1001C6138(v52);
    }

    v22 = v49;
    v23 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v21;
    sub_10017B498(v17, v22, v23, isUniquelyReferenced_nonNull_native);
    v21 = v49;
    sub_100178A6C(&v49, v22, v23);

    sub_10012D108(v15, type metadata accessor for PBPropertyValue);
    v19 += v41;
    ++v17;
    v9 = v28;
    v12 = v27;
    v8 = v42;
    v20 = v40;
  }

  while (v43 != v17);
  return v21;
}

id SecureEngagementDataHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureEngagementDataHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id SecureEngagementDataHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SecureEngagementDataHelper();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Int sub_10012B3D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AACD8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10012B6FC(v5);
  *a1 = v2;
  return result;
}

void *sub_10012B458(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100084528(&qword_10026F900, &qword_1001F14D0);
  v4 = *(sub_1001C4CA8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10012B568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100084528(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_10012B5E4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100084528(&qword_10026F770, &qword_1001F13A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_10012B674(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100084528(&qword_100270AB0, &qword_1001F52C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_10012B6FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1001C62D8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10012B8C4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10012B7F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10012B7F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1001C6D08(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10012B8C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1001A97CC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10012BEA0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1001C6D08();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1001C6D08();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1000AD9F0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10012BEA0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001A97CC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1001A9740(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1001C6D08(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10012BEA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1001C6D08() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1001C6D08() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_10012C0C8(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10012C1C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1001C4CA8();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10012C46C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

uint64_t sub_10012C5C4(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_22:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v14 = 0;
    a3 = 0;
    goto LABEL_33;
  }

  result = sub_1001C6AE8();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (!a3)
  {
    v14 = 0;
    goto LABEL_33;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1001C6B18())
      {
        goto LABEL_32;
      }

      swift_unknownObjectRelease();
      sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
      swift_dynamicCast();
      result = v24;
      v14 = v11;
      if (!v24)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    if (!v10)
    {
      break;
    }

    v14 = v11;
LABEL_17:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v14 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_33;
    }

LABEL_18:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_32:
      v14 = v11;
      goto LABEL_33;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v14 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v14);
    ++v15;
    if (v10)
    {
      v11 = v14;
      goto LABEL_17;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v14 = v21 - 1;
LABEL_33:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v14;
  v7[4] = v10;
  return a3;
}

void *sub_10012C7C8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10012C928(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10012CA80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012CAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012CB50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10012CB98(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1001C68F8();
  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  sub_10012D0A0();
  result = sub_1001C6418();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1001C6928())
      {
        goto LABEL_30;
      }

      sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

BOOL _s14bookdatastored26SecureEngagementDataHelperC7isEmpty9timeSliceSb10Foundation0D0V_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001C4F38();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for PBPropertyTimeSlice(0);
  __chkstk_darwin(v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = 0;
  memset(&v11[16], 0, 32);
  sub_10009AD9C(a1, a2);
  sub_1001C4F28();
  sub_10012CB50(&qword_1002721B8, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);
  sub_1001C5028();
  v8 = *v7;

  sub_10012D108(v7, type metadata accessor for PBPropertyTimeSlice);
  v9 = *(v8 + 16);

  return v9 == 0;
}

unint64_t sub_10012D0A0()
{
  result = qword_100273B10;
  if (!qword_100273B10)
  {
    sub_100088714(255, &qword_100270F20, CKRecordZoneID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273B10);
  }

  return result;
}

uint64_t sub_10012D108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012D168(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *(_s8CardItemVMa(0) - 8);
  v2[6] = swift_task_alloc();
  sub_1001C6068();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10012D250, 0, 0);
}

uint64_t sub_10012D250()
{
  v53 = v0;
  v1 = *(v0 + 24);
  v2 = **(v0 + 32);
  v3 = sub_10012F72C(v2);
  v50 = v0;
  if (sub_100194320(v1, v3))
  {

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v4 = sub_1001C5148();
    sub_100083274(v4, qword_100281898);

    v5 = sub_1001C5128();
    v6 = sub_1001C65B8();

    v49 = v6;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 24);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      v51 = v9;
      *v8 = 136315138;
      v11 = *(v7 + 16);
      if (v11)
      {
        v46 = v9;
        v47 = v8;
        v48 = v5;
        v12 = *(v0 + 40);
        v13 = *(v0 + 48);
        v14 = *(v0 + 24);
        v52 = _swiftEmptyArrayStorage;
        sub_1000D3980(0, v11, 0);
        v15 = _swiftEmptyArrayStorage;
        v16 = v14 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v17 = *(v12 + 72);
        do
        {
          v18 = *(v0 + 48);
          sub_1000C6648(v16, v18);
          v19 = *v18;
          v20 = *(v13 + 8);
          v21 = *(v13 + 16);

          sub_1000C66AC(v18);
          v52 = v15;
          v23 = v15[2];
          v22 = v15[3];
          if (v23 >= v22 >> 1)
          {
            sub_1000D3980((v22 > 1), v23 + 1, 1);
            v15 = v52;
          }

          v15[2] = v23 + 1;
          v24 = &v15[3 * v23];
          v24[4] = v19;
          v24[5] = v20;
          *(v24 + 48) = v21;
          v16 += v17;
          --v11;
          v0 = v50;
        }

        while (v11);
        v8 = v47;
        v5 = v48;
        v10 = v46;
      }

      v36 = sub_1001C62A8();
      v38 = v37;

      v39 = sub_1001874E8(v36, v38, &v51);

      *(v8 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v5, v49, "[CardManager] Ignoring card list %s because it is unchanged", v8, 0xCu);
      sub_10008E7BC(v10);
    }
  }

  else
  {
    *(v0 + 16) = *(v0 + 24);
    sub_100110FC0();
    v25 = sub_1001C4808();
    v27 = v26;
    sub_1001C6058();
    v28 = sub_1001C6038();
    if (v29)
    {
      v30 = *(v0 + 24);
      v31 = v28;
      v32 = v29;
      v33 = sub_1001C5FE8();
      [v2 setObject:v33 forKey:@"BDSPriceTracker_CardManager_cardListV1"];

      sub_10012DD7C(v3, v30, v31, v32);

      v34 = [objc_opt_self() defaultCenter];
      v35 = sub_1001C5FE8();
      [v34 postNotificationName:@"BDSPriceTrackerCardListDidChangeNotification" object:v35];

      sub_1000887D0(v25, v27);
    }

    else
    {

      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v40 = sub_1001C5148();
      sub_100083274(v40, qword_100281898);
      v41 = sub_1001C5128();
      v42 = sub_1001C6598();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "[CardManager] Card list data is invalid", v43, 2u);
      }

      sub_1000887D0(v25, v27);
    }
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_10012D85C(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100084528(&qword_100272200, &qword_1001F5258);
  if (swift_dynamicCast())
  {
    sub_100100DF0(__src, &v43);
    sub_10009BB74(&v43, v44);
    sub_1001C4958();
    __src[0] = v42;
    sub_10008E7BC(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10008875C(__src, &qword_100272208, &unk_1001F5260);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1001C6A38();
  }

  sub_10012EE64(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10012F58C(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_10012EF2C(sub_10012F9E8, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1001C4B78();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1000D8E7C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1001C6158();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1001C6198();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1001C6A38();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1000D8E7C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1001C6168();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1001C4B88();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1001C4B88();
    sub_1000887BC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1000887BC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_10009AD9C(*&__src[0], *(&__src[0] + 1));

  sub_1000887D0(v32, *(&v32 + 1));
  return v32;
}

void sub_10012DD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v156 = a4;
  v150 = a3;
  v154 = a2;
  v158 = _s8CardItemVMa(0);
  v5 = *(v158 - 8);
  v6 = __chkstk_darwin(v158);
  v161 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v168 = &v150 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v150 - v11;
  v13 = __chkstk_darwin(v10);
  v160 = &v150 - v14;
  v15 = __chkstk_darwin(v13);
  v152 = &v150 - v16;
  v17 = __chkstk_darwin(v15);
  v151 = &v150 - v18;
  v19 = __chkstk_darwin(v17);
  v174 = &v150 - v20;
  v21 = __chkstk_darwin(v19);
  *&v166 = &v150 - v22;
  v23 = __chkstk_darwin(v21);
  v159 = &v150 - v24;
  v25 = __chkstk_darwin(v23);
  *&v172 = &v150 - v26;
  v27 = __chkstk_darwin(v25);
  v165 = &v150 - v28;
  v29 = __chkstk_darwin(v27);
  v171 = &v150 - v30;
  __chkstk_darwin(v29);
  v31 = *(a1 + 16);
  v32 = _swiftEmptyArrayStorage;
  v170 = v12;
  v155 = v5;
  v164 = v31;
  v153 = &v150 - v33;
  if (v31)
  {
    v175 = _swiftEmptyArrayStorage;
    sub_1000D3980(0, v31, 0);
    v34 = v153;
    v32 = v175;
    v35 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v173 = *(v5 + 72);
    do
    {
      sub_1000C6648(v35, v34);
      v37 = *v34;
      v36 = *(v34 + 8);
      v38 = *(v34 + 16);

      sub_1000C66AC(v34);
      v175 = v32;
      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        sub_1000D3980((v39 > 1), v40 + 1, 1);
        v34 = v153;
        v32 = v175;
      }

      v32[2] = v40 + 1;
      v41 = &v32[3 * v40];
      v41[4] = v37;
      v41[5] = v36;
      *(v41 + 48) = v38;
      v35 += v173;
      --v31;
    }

    while (v31);
    v12 = v170;
    v5 = v155;
  }

  v42 = sub_1001575F4(v32);

  v43 = *(v154 + 16);
  v162 = a1;
  v163 = v43;
  if (v43)
  {
    v44 = 0;
    v157 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v45 = v154 + v157;
    v173 = *(v5 + 72);
    v46 = v42 + 56;
    v169 = _swiftEmptyArrayStorage;
    v167 = v42;
    do
    {
      sub_1000C6648(v45 + v173 * v44, v171);
      if (*(v42 + 16))
      {
        v49 = *v171;
        v48 = *(v171 + 8);
        v50 = *(v171 + 16);
        v51 = v167;
        sub_1001C6DF8();
        sub_1001C60E8();
        sub_1001C6E18(v50);
        v52 = sub_1001C6E28();
        v53 = -1 << *(v51 + 32);
        v54 = v52 & ~v53;
        if ((*(v46 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
        {
          v55 = ~v53;
          v56 = *(v167 + 48);
          do
          {
            v57 = v56 + 24 * v54;
            v58 = *(v57 + 16);
            if (*v57 == v49 && *(v57 + 8) == v48)
            {
              if (v50 == v58)
              {
                goto LABEL_9;
              }
            }

            else if ((sub_1001C6D08() & 1) != 0 && ((v50 ^ v58) & 1) == 0)
            {
LABEL_9:
              sub_1000C66AC(v171);
              a1 = v162;
              v47 = v169;
              v42 = v167;
              goto LABEL_10;
            }

            v54 = (v54 + 1) & v55;
          }

          while (((*(v46 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0);
        }
      }

      sub_10012F930(v171, v165);
      v47 = v169;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D391C(0, *(v47 + 16) + 1, 1);
        v47 = v177;
      }

      a1 = v162;
      v42 = v167;
      v62 = *(v47 + 16);
      v61 = *(v47 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1000D391C((v61 > 1), v62 + 1, 1);
        v47 = v177;
      }

      *(v47 + 16) = v62 + 1;
      sub_10012F930(v165, v47 + v157 + v62 * v173);
LABEL_10:
      v169 = v47;
      ++v44;
    }

    while (v44 != v163);

    v175 = _swiftEmptyArrayStorage;
    v63 = v163;
    sub_1000D3980(0, v163, 0);
    v64 = v175;
    v65 = v153;
    do
    {
      sub_1000C6648(v45, v65);
      v67 = *v65;
      v66 = *(v65 + 8);
      v68 = *(v65 + 16);

      sub_1000C66AC(v65);
      v175 = v64;
      v70 = v64[2];
      v69 = v64[3];
      if (v70 >= v69 >> 1)
      {
        sub_1000D3980((v69 > 1), v70 + 1, 1);
        v65 = v153;
        v64 = v175;
      }

      v64[2] = v70 + 1;
      v71 = &v64[3 * v70];
      v71[4] = v67;
      v71[5] = v66;
      *(v71 + 48) = v68;
      v45 += v173;
      --v63;
    }

    while (v63);
    v12 = v170;
    v5 = v155;
  }

  else
  {

    v64 = _swiftEmptyArrayStorage;
    v169 = _swiftEmptyArrayStorage;
  }

  v72 = sub_1001575F4(v64);

  v73 = v174;
  if (v164)
  {
    v74 = 0;
    v165 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v167 = a1 + v165;
    v171 = *(v5 + 72);
    v75 = v72 + 56;
    v173 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000C6648(v167 + v171 * v74, v172);
      v77 = v72;
      if (*(v72 + 16))
      {
        v79 = *v172;
        v78 = *(v172 + 8);
        v80 = *(v172 + 16);
        sub_1001C6DF8();
        sub_1001C60E8();
        sub_1001C6E18(v80);
        v81 = sub_1001C6E28();
        v82 = -1 << *(v72 + 32);
        v83 = v81 & ~v82;
        if ((*(v75 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
        {
          v84 = ~v82;
          v85 = *(v77 + 48);
          do
          {
            v86 = v85 + 24 * v83;
            v87 = *(v86 + 16);
            if (*v86 == v79 && *(v86 + 8) == v78)
            {
              if (v80 == v87)
              {
                goto LABEL_36;
              }
            }

            else if ((sub_1001C6D08() & 1) != 0 && ((v80 ^ v87) & 1) == 0)
            {
LABEL_36:
              sub_1000C66AC(v172);
              v12 = v170;
              v76 = v173;
              v73 = v174;
              goto LABEL_37;
            }

            v83 = (v83 + 1) & v84;
          }

          while (((*(v75 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) != 0);
        }
      }

      sub_10012F930(v172, v166);
      v76 = v173;
      v89 = swift_isUniquelyReferenced_nonNull_native();
      v177 = v76;
      if ((v89 & 1) == 0)
      {
        sub_1000D391C(0, *(v76 + 16) + 1, 1);
        v76 = v177;
      }

      v12 = v170;
      v91 = *(v76 + 16);
      v90 = *(v76 + 24);
      v73 = v174;
      if (v91 >= v90 >> 1)
      {
        sub_1000D391C((v90 > 1), v91 + 1, 1);
        v76 = v177;
      }

      *(v76 + 16) = v91 + 1;
      sub_10012F930(v166, v76 + v165 + v91 * v171);
LABEL_37:
      v173 = v76;
      ++v74;
      v72 = v77;
    }

    while (v74 != v164);
  }

  else
  {
    v173 = _swiftEmptyArrayStorage;
  }

  v93 = v168;
  v94 = v169[2];
  v95 = "' is now being tracked";
  v96 = v161;
  if (v94)
  {
    v97 = v169 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
    *&v172 = *(v155 + 72);
    *&v92 = 136315650;
    v166 = v92;
    v98 = v156;
    v99 = v152;
    v100 = v151;
    v101 = v159;
    do
    {
      sub_1000C6648(v97, v101);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v102 = sub_1001C5148();
      sub_100083274(v102, qword_100281898);
      sub_1000C6648(v101, v73);
      sub_1000C6648(v101, v100);
      sub_10012F930(v101, v99);
      v103 = sub_1001C5128();
      v104 = sub_1001C65B8();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v177 = v171;
        *v105 = v166;
        v106 = *v174;
        v107 = *(v174 + 8);
        v108 = *(v174 + 16);
        v175 = 0;
        v176 = 0xE000000000000000;
        if (v108)
        {
          v109 = 65;
        }

        else
        {
          v109 = 66;
        }

        LODWORD(v167) = v104;
        v178._countAndFlagsBits = v109;
        v93 = v168;
        v178._object = 0xE100000000000000;
        sub_1001C6138(v178);

        v179._countAndFlagsBits = 46;
        v179._object = 0xE100000000000000;
        sub_1001C6138(v179);
        v180._countAndFlagsBits = v106;
        v180._object = v107;
        sub_1001C6138(v180);

        v110 = v175;
        v111 = v176;
        sub_1000C66AC(v174);
        v112 = sub_1001874E8(v110, v111, &v177);

        *(v105 + 4) = v112;
        *(v105 + 12) = 2082;
        v113 = v158;
        sub_1001C4CA8();
        sub_1000D74B0();
        v114 = sub_1001C6CC8();
        v116 = v115;
        sub_1000C66AC(v100);
        v117 = sub_1001874E8(v114, v116, &v177);

        *(v105 + 14) = v117;
        v98 = v156;
        *(v105 + 22) = 2048;
        v118 = *(v113 + 28);
        v96 = v161;
        v119 = *(v99 + v118);
        sub_1000C66AC(v99);
        *(v105 + 24) = v119;
        _os_log_impl(&_mh_execute_header, v103, v167, "[CardManager] Added card: %s, date: %{public}s, reference price: %f", v105, 0x20u);
        swift_arrayDestroy();

        v73 = v174;
      }

      else
      {

        sub_1000C66AC(v99);
        sub_1000C66AC(v100);
        sub_1000C66AC(v73);
      }

      v97 += v172;
      --v94;
      v101 = v159;
    }

    while (v94);

    v12 = v170;
    v95 = "[State] Item '%s' is now being tracked" + 16;
  }

  else
  {

    v98 = v156;
  }

  v121 = *(v173 + 16);
  if (v121)
  {
    v122 = v173 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
    v123 = *(v155 + 72);
    *&v120 = *(v95 + 412);
    v172 = v120;
    v124 = v160;
    v174 = v123;
    do
    {
      sub_1000C6648(v122, v124);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v125 = sub_1001C5148();
      sub_100083274(v125, qword_100281898);
      sub_1000C6648(v124, v12);
      sub_1000C6648(v124, v93);
      sub_10012F930(v124, v96);
      v126 = sub_1001C5128();
      v127 = sub_1001C65B8();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        *v128 = v172;
        v129 = *v12;
        v130 = *(v12 + 1);
        v131 = v12[16];
        v175 = 0;
        v176 = 0xE000000000000000;
        if (v131)
        {
          v132 = 65;
        }

        else
        {
          v132 = 66;
        }

        v181._countAndFlagsBits = v132;
        v181._object = 0xE100000000000000;
        sub_1001C6138(v181);

        v182._countAndFlagsBits = 46;
        v182._object = 0xE100000000000000;
        sub_1001C6138(v182);
        v183._countAndFlagsBits = v129;
        v183._object = v130;
        sub_1001C6138(v183);
        v96 = v161;

        v133 = v175;
        v134 = v176;
        sub_1000C66AC(v170);
        v135 = sub_1001874E8(v133, v134, &v177);

        *(v128 + 4) = v135;
        *(v128 + 12) = 2082;
        v136 = v158;
        sub_1001C4CA8();
        sub_1000D74B0();
        v137 = sub_1001C6CC8();
        v139 = v138;
        sub_1000C66AC(v168);
        v140 = sub_1001874E8(v137, v139, &v177);
        v12 = v170;

        *(v128 + 14) = v140;
        *(v128 + 22) = 2048;
        v141 = *(v96 + *(v136 + 28));
        sub_1000C66AC(v96);
        *(v128 + 24) = v141;
        _os_log_impl(&_mh_execute_header, v126, v127, "[CardManager] Removed card: %s, date: %{public}s, reference price: %f", v128, 0x20u);
        swift_arrayDestroy();
        v93 = v168;

        v123 = v174;
      }

      else
      {

        sub_1000C66AC(v96);
        sub_1000C66AC(v93);
        sub_1000C66AC(v12);
      }

      v122 += v123;
      --v121;
      v124 = v160;
    }

    while (v121);

    v98 = v156;
  }

  else
  {
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v142 = sub_1001C5148();
  sub_100083274(v142, qword_100281898);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v143 = v98;
  v144 = sub_1001C5128();
  v145 = sub_1001C65B8();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *v146 = 136446978;
    v147 = sub_1001C6018();
    v149 = sub_1001874E8(v147, v148, &v175);

    *(v146 + 4) = v149;
    *(v146 + 12) = 2048;

    *(v146 + 14) = v164;

    *(v146 + 22) = 2048;

    *(v146 + 24) = v163;

    *(v146 + 32) = 2080;
    *(v146 + 34) = sub_1001874E8(v150, v143, &v175);
    _os_log_impl(&_mh_execute_header, v144, v145, "[CardManager] %{public}s (%ld) → (%ld) %s", v146, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t *sub_10012EE64@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_10012F4D4(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1001C48F8();
      swift_allocObject();
      v8 = sub_1001C48A8();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1001C4B68();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_10012EF2C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1000887D0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000887D0(v7, v6);
    *v4 = xmmword_1001F5240;
    sub_1000887D0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1001C48B8() && __OFSUB__(v7, sub_1001C48E8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1001C48F8();
      swift_allocObject();
      v14 = sub_1001C4898();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_10012F3D0(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1000887D0(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1001F5240;
    sub_1000887D0(0, 0xC000000000000000);
    sub_1001C4B38();
    result = sub_10012F3D0(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_10012F2D0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10012F4D4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10012F62C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10012F6A8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10012F364(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10012F3D0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1001C48B8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1001C48E8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1001C48D8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10012F484@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1001C69D8();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
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

uint64_t sub_10012F4D4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10012F58C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1001C48F8();
      swift_allocObject();
      sub_1001C48C8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1001C4B68();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10012F62C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1001C48F8();
  swift_allocObject();
  result = sub_1001C48A8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1001C4B68();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10012F6A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1001C48F8();
  swift_allocObject();
  result = sub_1001C48A8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_10012F72C(void *a1)
{
  v1 = [a1 stringForKey:@"BDSPriceTracker_CardManager_cardListV1"];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = sub_1001C6018();
  v5 = v4;

  v6 = sub_10012D85C(v3, v5);
  v8 = v7;
  sub_10012F994();
  sub_1001C4768();
  sub_1000887D0(v6, v8);
  return v10;
}

uint64_t sub_10012F930(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardItemVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012F994()
{
  result = qword_1002721F8;
  if (!qword_1002721F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002721F8);
  }

  return result;
}

void *sub_10012F9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10012F364(sub_10012FA50, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10012FA70@<X0>(void *a3@<X8>)
{
  sub_1001C4788();
  swift_allocObject();
  sub_1001C4778();
  v4 = [objc_opt_self() books];
  v5 = [v4 userDefaults];

  v6 = sub_1001C5FE8();
  v7 = [v5 dataForKey:v6];

  if (v7)
  {
    v8 = sub_1001C4BA8();
    v10 = v9;

    v11 = type metadata accessor for CRDTModelRevisionInfo(0);
    sub_10009AD9C(v8, v10);
    sub_100130418(&unk_1002722C8, &protocol conformance descriptor for CRDTModelRevisionInfo);
    sub_1001C4768();
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    sub_1000887D0(v8, v10);
    sub_1000887D0(v8, v10);
  }

  else
  {
    v12 = type metadata accessor for CRDTModelRevisionInfo(0);
    (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t sub_10012FDE0()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_10012FE54(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = 0xD000000000000029;
  result[3] = 0x80000001001FE5F0;
  result[4] = 0xD000000000000029;
  result[5] = 0x80000001001FE620;
  result[6] = 0xD000000000000031;
  result[7] = 0x80000001001FE650;
  result[8] = a1;
  return result;
}

uint64_t sub_10012FED0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  sub_1001C4828();
  swift_allocObject();
  sub_1001C4818();
  sub_100130378();
  v12 = sub_1001C4808();
  v14 = v13;
  v15 = [objc_opt_self() books];
  v16 = [v15 userDefaults];

  v31 = v14;
  isa = sub_1001C4B98().super.isa;
  v18 = sub_1001C5FE8();
  [v16 setValue:isa forKey:v18];

  v19 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v20 = qword_1002711E8;
  sub_100113858(a3, v11);
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32[0] = v30;
    *v21 = 136315394;
    *(v21 + 4) = sub_1001874E8(a1, a2, v32);
    *(v21 + 12) = 2080;
    sub_100113858(v11, v9);
    v22 = type metadata accessor for CRDTModelRevisionInfo(0);
    v23 = (*(*(v22 - 8) + 48))(v9, 1, v22);
    v24 = v31;
    if (v23 == 1)
    {
      sub_10013045C(v9);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v26 = CRDTModelRevisionInfo.description.getter();
      v25 = v28;
      sub_1000B6930(v9);
    }

    sub_10013045C(v11);
    v29 = sub_1001874E8(v26, v25, v32);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v19, "ReadingHistoryServiceContext saved revisionInfo for %s: %s", v21, 0x16u);
    swift_arrayDestroy();

    sub_1000887D0(v12, v24);
  }

  else
  {
    sub_1000887D0(v12, v31);

    return sub_10013045C(v11);
  }
}

unint64_t sub_100130378()
{
  result = qword_1002722D8;
  if (!qword_1002722D8)
  {
    sub_1000885AC(&unk_10026F410, &unk_1001F0E40);
    sub_100130418(&unk_1002722E0, &protocol conformance descriptor for CRDTModelRevisionInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002722D8);
  }

  return result;
}

uint64_t sub_100130418(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRDTModelRevisionInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10013045C(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CloudSyncDiagnosticCloudFetcher.__allocating_init(cloudKitDatabaseController:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1001C5138();
  *&v3[OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t CloudSyncDiagnosticCloudFetcher.fetchZone(zoneName:recordBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10013058C, 0, 0);
}

uint64_t sub_10013058C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  v11 = *(v0 + 32);
  v3 = sub_1001C6018();
  v5 = v4;

  v13._countAndFlagsBits = v2;
  v13._object = v1;
  v14._countAndFlagsBits = v3;
  v14._object = v5;
  isa = sub_1001C65C8(v13, v14).super.isa;
  *(v0 + 56) = isa;
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  swift_unknownObjectWeakInit();
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = isa;
  *(v8 + 32) = v11;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_100130728;

  return withCheckedContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000001ELL, 0x8000000100202590, sub_100130E58, v8, &type metadata for () + 8);
}

uint64_t sub_100130728()
{

  return _swift_task_switch(sub_10013085C, 0, 0);
}

uint64_t sub_10013085C()
{
  v1 = *(v0 + 8);

  return v1();
}

id CloudSyncDiagnosticCloudFetcher.init(cloudKitDatabaseController:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1001C5138();
  *&v1[OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t CloudSyncDiagnosticCloudFetcher.fetchZone(zoneID:recordBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100130A30, 0, 0);
}

uint64_t sub_100130A30()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  v6 = *(v0 + 16);
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v6;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_100130B68;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001ELL, 0x8000000100202590, sub_100132264, v3, &type metadata for () + 8);
}

uint64_t sub_100130B68()
{

  return _swift_task_switch(sub_100130C9C, 0, 0);
}

void sub_100130CB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&qword_100272340, &qword_1001F5308);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*(v10 + 16))(v12, a1, v9);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = swift_allocObject();
    (*(v10 + 32))(v16 + v15, v12, v9);
    CloudSyncDiagnosticCloudFetcher._fetchZoneChanges(zoneID:recordBlock:completion:)(a3, a4, a5, sub_1001321F8, v16);
  }

  else
  {
    sub_1001C6328();
  }
}

void CloudSyncDiagnosticCloudFetcher._fetchZoneChanges(zoneID:recordBlock:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v44 = a2;
  v45 = a3;
  v6 = sub_1001C5148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
  [v9 setPreviousServerChangeToken:0];
  sub_100088714(0, &qword_1002722F0, CKFetchRecordZoneChangesOperation_ptr);
  sub_100084528(&qword_100270AB0, &qword_1001F52C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001F31C0;
  *(v10 + 32) = a1;
  sub_100084528(&qword_1002722F8, &qword_1001F52C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  *(inited + 32) = a1;
  *(inited + 40) = v9;
  v12 = a1;
  v46 = v9;
  LOBYTE(a1) = sub_100119588(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_100272300, &unk_1001F52D0);
  v53.value._rawValue = v10;
  v53.is_nil = a1;
  isa = sub_1001C6718(v53, v54).super.super.super.super.isa;
  v42 = OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_logger;
  v14 = v7;
  v15 = *(v7 + 16);
  v52 = v7 + 16;
  v49 = v15;
  v16 = v51;
  v17 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v17, v51 + OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_logger, v6);
  v18 = *(v14 + 80);
  v19 = v14;
  v50 = ((v18 + 16) & ~v18) + v8;
  v40 = (v18 + 16) & ~v18;
  v20 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v20;
  v39[0] = v18;
  v21 = swift_allocObject();
  v41 = *(v19 + 32);
  v41(v21 + ((v18 + 16) & ~v18), v17, v6);
  v39[1] = v19 + 32;
  v22 = (v21 + v20);
  v23 = v45;
  *v22 = v44;
  v22[1] = v23;

  sub_1001C6728();
  v24 = v42;
  v25 = v16 + v42;
  v26 = v6;
  v27 = v49;
  v49(v17, v25, v6);
  v28 = swift_allocObject();
  v30 = v40;
  v29 = v41;
  v31 = v17;
  v41(v28 + v40, v17, v26);
  sub_1001C6738();
  v32 = v51;
  v27(v17, v51 + v24, v26);
  v33 = swift_allocObject();
  v29(v33 + v30, v17, v26);
  sub_1001C6708();
  v49(v17, v32 + v24, v26);
  v34 = v43;
  v35 = swift_allocObject();
  v29(v35 + v30, v31, v26);
  v36 = (v35 + v34);
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;

  sub_1001C66F8();
  v38 = [*(v32 + OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController) database];
  [v38 addOperation:isa];
}

void sub_1001312C4(void *a1, void *a2, char a3, uint64_t a4, NSObject *a5)
{
  if (a3)
  {
    sub_1001321E0(a2, 1);
    v7 = a1;
    oslog = sub_1001C5128();
    v8 = sub_1001C6598();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412546;
      *(v9 + 4) = v7;
      *v10 = v7;
      *(v9 + 12) = 2112;
      sub_1001321E0(a2, 1);
      v11 = v7;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      v10[1] = v12;
      _os_log_impl(&_mh_execute_header, oslog, v8, "recordWasChangedBlock - %@, error:%@", v9, 0x16u);
      sub_100084528(&unk_1002718E0, &qword_1001F31F0);
      swift_arrayDestroy();

      sub_1001321EC(a2, 1);

      return;
    }

    v29 = a2;
    v30 = 1;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = a2;
    v16 = [v14 localIdentifierFromRecord:v15];
    v17 = sub_1001C6018();
    v19 = v18;

    sub_1001321E0(a2, 0);
    v20 = a1;

    v21 = sub_1001C5128();
    v22 = sub_1001C6578();

    sub_1001321EC(a2, 0);
    if (os_log_type_enabled(v21, v22))
    {
      osloga = a5;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v23 = 138412802;
      *(v23 + 4) = v20;
      *v24 = v20;
      *(v23 + 12) = 2080;
      v26 = v20;
      v27 = sub_1001874E8(v17, v19, &v33);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2112;
      *(v23 + 24) = v15;
      v24[1] = a2;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v21, v22, "recordWasChangedBlock - %@ (localId:%s) %@", v23, 0x20u);
      sub_100084528(&unk_1002718E0, &qword_1001F31F0);
      swift_arrayDestroy();

      sub_10008E7BC(v25);

      a5 = osloga;
    }

    else
    {
    }

    (a5)(v15);
    v29 = a2;
    v30 = 0;
  }

  sub_1001321EC(v29, v30);
}

void sub_10013165C(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;

  oslog = sub_1001C5128();
  v6 = sub_1001C6578();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2080;
    v10 = v5;
    *(v7 + 14) = sub_1001874E8(a2, a3, &v12);
    _os_log_impl(&_mh_execute_header, oslog, v6, "recordWithIDWasDeletedBlock - %@ (%s)", v7, 0x16u);
    sub_10008875C(v8, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v9);
  }
}

void sub_1001317D0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100) == 0)
  {
    oslog = sub_1001C5128();
    v6 = sub_1001C65B8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a5 & 1;
      _os_log_impl(&_mh_execute_header, oslog, v6, "recordZoneFetchCompletionBlock - moreComing:%{BOOL}d", v7, 8u);
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  oslog = sub_1001C5128();
  v11 = sub_1001C6598();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, oslog, v11, "recordZoneFetchCompletionBlock - error: %@", v12, 0xCu);
    sub_10008875C(v13, &unk_1002718E0, &qword_1001F31F0);

    sub_10013218C(a2, a3, a4, a5, 1);
LABEL_6:

    return;
  }

  sub_10013218C(a2, a3, a4, a5, 1);
}

uint64_t sub_1001319DC(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    v6 = sub_1001C5128();
    v7 = sub_1001C6598();
    if (!os_log_type_enabled(v6, v7))
    {

      v13 = sub_100132180(a1, 1);
      return a4(v13);
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "fetchRecordZoneChangesCompletionBlock - error:%@", v8, 0xCu);
    sub_10008875C(v9, &unk_1002718E0, &qword_1001F31F0);

    sub_100132180(a1, 1);
  }

  else
  {
    v6 = sub_1001C5128();
    v11 = sub_1001C65B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v11, "fetchRecordZoneChangesCompletionBlock", v12, 2u);
    }
  }

  return a4(v13);
}

Swift::Void __swiftcall CloudSyncDiagnosticCloudFetcher._addOperation(_:)(CKDatabaseOperation a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController) database];
  [v3 addOperation:a1.super.super.super.isa];
}

void sub_100131CD0(void *a1, void *a2, char a3)
{
  v7 = *(sub_1001C5148() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001312C4(a1, a2, a3 & 1, v3 + v8, v9);
}

void sub_100131D88(void *a1, uint64_t a2, unint64_t a3)
{
  sub_1001C5148();

  sub_10013165C(a1, a2, a3);
}

uint64_t sub_100131E10()
{
  v1 = sub_1001C5148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100131E98(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, __int16 a5)
{
  sub_1001C5148();

  sub_1001317D0(a1, a2, a3, a4, a5 & 0x1FF);
}

uint64_t sub_100131F40()
{
  v1 = sub_1001C5148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100131FE0(uint64_t a1, char a2)
{
  v5 = *(sub_1001C5148() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001319DC(a1, a2 & 1, v2 + v6, v7);
}

uint64_t type metadata accessor for CloudSyncDiagnosticCloudFetcher(uint64_t a1)
{
  result = qword_100272330;
  if (!qword_100272330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001320E4(uint64_t a1)
{
  result = sub_1001C5148();
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

uint64_t sub_100132180(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10013218C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_1000887BC(a2, a3);
  }
}

id sub_1001321E0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1001321EC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t _s4DealVMa(uint64_t a1)
{
  result = qword_1002723A0;
  if (!qword_1002723A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001322DC(uint64_t a1)
{
  result = sub_1001C4B28();
  if (v2 <= 0x3F)
  {
    result = sub_1001C4CA8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100132388(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100272408, &qword_1001F5398);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_10009BB74(a1, a1[3]);
  sub_100132E18();
  sub_1001C6E78();
  v9 = v3[1];
  v10 = *(v3 + 16);
  v13 = *v3;
  v14 = v9;
  v15 = v10;
  v12[7] = 0;
  sub_100132F80();
  sub_1001C6CA8();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1001C6C68();
    _s4DealVMa(0);
    LOBYTE(v13) = 2;
    sub_1001C4B28();
    sub_100132FD4(&qword_100270698, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_1001C6CA8();
    LOBYTE(v13) = 3;
    sub_1001C4CA8();
    sub_100132FD4(&qword_10026F970, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1001C6CA8();
    LOBYTE(v13) = 4;
    sub_1001C6C88();
    LOBYTE(v13) = 5;
    sub_1001C6C68();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100132688@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1001C4CA8();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C4B28();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&qword_1002723E8, &qword_1001F5390);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = _s4DealVMa(0);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v44 = a1;
  sub_10009BB74(a1, v16);
  sub_100132E18();
  v42 = v12;
  v17 = v43;
  sub_1001C6E58();
  if (v17)
  {
    return sub_10008E7BC(v44);
  }

  v34 = v5;
  v35 = v8;
  v43 = v13;
  v18 = v39;
  v48 = 0;
  sub_100132E6C();
  v19 = v40;
  sub_1001C6C28();
  v20 = v46;
  v21 = v47;
  v22 = v15;
  *v15 = v45;
  *(v15 + 1) = v20;
  v15[16] = v21;
  LOBYTE(v45) = 1;
  *(v15 + 3) = sub_1001C6BE8();
  *(v15 + 4) = v23;
  LOBYTE(v45) = 2;
  sub_100132FD4(&qword_100272400, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v24 = v35;
  sub_1001C6C28();
  (*(v37 + 32))(v22 + v43[6], v24, v6);
  LOBYTE(v45) = 3;
  sub_100132FD4(&qword_10026F980, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v25 = v34;
  v35 = 0;
  sub_1001C6C28();
  (*(v38 + 32))(v22 + v43[7], v25, v18);
  LOBYTE(v45) = 4;
  sub_1001C6C08();
  v26 = v43;
  *(v22 + v43[8]) = v27;
  LOBYTE(v45) = 5;
  v28 = sub_1001C6BE8();
  v34 = v29;
  v30 = v28;
  (*(v41 + 8))(v42, v19);
  v31 = (v22 + v26[9]);
  v32 = v34;
  *v31 = v30;
  v31[1] = v32;
  sub_100132EC0(v22, v36);
  sub_10008E7BC(v44);
  return sub_100132F24(v22);
}

uint64_t sub_100132C84()
{
  v1 = *v0;
  v2 = 0x44496D657469;
  v3 = 1702125924;
  v4 = 0x636E657265666572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 7107189;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100132D38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001333A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100132D6C(uint64_t a1)
{
  v2 = sub_100132E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100132DA8(uint64_t a1)
{
  v2 = sub_100132E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100132E18()
{
  result = qword_1002723F0;
  if (!qword_1002723F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002723F0);
  }

  return result;
}

unint64_t sub_100132E6C()
{
  result = qword_1002723F8;
  if (!qword_1002723F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002723F8);
  }

  return result;
}

uint64_t sub_100132EC0(uint64_t a1, uint64_t a2)
{
  v4 = _s4DealVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100132F24(uint64_t a1)
{
  v2 = _s4DealVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100132F80()
{
  result = qword_100272410;
  if (!qword_100272410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272410);
  }

  return result;
}

uint64_t sub_100132FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013301C(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1001C6D08();
    result = 0;
    if (v7 & 1) == 0 || ((v4 ^ v5))
    {
      return result;
    }
  }

  v9 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v9 && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  v10 = _s4DealVMa(0);
  if ((sub_1001C4AC8() & 1) == 0 || (sub_1001C4C68() & 1) == 0 || *(a1 + *(v10 + 32)) != *(a2 + *(v10 + 32)))
  {
    return 0;
  }

  v11 = *(v10 + 36);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_1001C6D08();
}

uint64_t _s4DealV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4DealV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10013329C()
{
  result = qword_100272418;
  if (!qword_100272418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272418);
  }

  return result;
}

unint64_t sub_1001332F4()
{
  result = qword_100272420;
  if (!qword_100272420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272420);
  }

  return result;
}

unint64_t sub_10013334C()
{
  result = qword_100272428;
  if (!qword_100272428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272428);
  }

  return result;
}

uint64_t sub_1001333A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xEE00656369725065 || (sub_1001C6D08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100202640 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *ReadingHistoryBackupManager.__allocating_init(transactionProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0xD000000000000055;
  result[3] = 0x80000001001FDEE0;
  result[4] = 0xD000000000000012;
  result[5] = 0x80000001001FDF40;
  result[6] = 0xD000000000000013;
  result[7] = 0x80000001001FDF60;
  result[8] = 0x736B6F6F42;
  result[9] = 0xE500000000000000;
  result[10] = 0xD000000000000019;
  result[11] = 0x80000001001FDF80;
  result[12] = a1;
  return result;
}

uint64_t ReadingHistoryBackupManager.backup(name:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v3[10] = swift_task_alloc();
  v4 = sub_1001C4B28();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100133778, 0, 0);
}

uint64_t sub_100133778()
{
  v49 = v0;
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1002711E8;
  if (os_log_type_enabled(qword_1002711E8, v1))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v48 = v6;
    *v5 = 136315138;
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v4 = 7104878;
      v7 = 0xE300000000000000;
    }

    v8 = sub_1001874E8(v4, v7, &v48);

    *(v5 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v1, "ReadingHistoryBackupManager backup: %s", v5, 0xCu);
    sub_10008E7BC(v6);
  }

  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[10];
  v13 = v0[7];
  v12 = v0[8];
  v14 = [*(v0[9] + 96) createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryBackupManager.backup"];
  sub_100136638(v13, v12, v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_10008875C(v0[10], &unk_10026EF10, &unk_1001F1FA0);
    sub_100137428();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    v16 = [objc_opt_self() defaultManager];
    sub_1001C4AF8();
    v17 = sub_1001C5FE8();

    v18 = [v16 fileExistsAtPath:v17];

    v20 = v0[13];
    if (v18)
    {
      v21 = v0[12];
      v46 = v0[11];
      v22 = sub_1001C6598();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1001F0670;
      v24 = sub_1001C4AF8();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_100084570();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      sub_1001C5118(v22, &_mh_execute_header, v2, "ReadingHistoryBackupManager Backup folder already exists. Aborting (path=%{public}@)", 84, 2, v23);

      sub_100137428();
      swift_allocError();
      *v27 = 0;
      swift_willThrow();

      (*(v21 + 8))(v20, v46);
    }

    else
    {
      sub_1001C4A88(v19);
      v29 = v28;
      v0[5] = 0;
      v30 = [v16 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v0 + 5];

      v31 = v0[5];
      v32 = v0[13];
      if (v30)
      {
        v33 = v31;
        sub_100136DF0(v32);
        (*(v0[12] + 8))();

        v43 = v0[1];
        goto LABEL_16;
      }

      v45 = v0[12];
      v47 = v0[11];
      v34 = v31;
      sub_1001C4A28();

      swift_willThrow();
      v44 = sub_1001C6598();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1001F0660;
      v36 = sub_1001C4AF8();
      v38 = v37;
      *(v35 + 56) = &type metadata for String;
      v39 = sub_100084570();
      *(v35 + 64) = v39;
      *(v35 + 32) = v36;
      *(v35 + 40) = v38;
      swift_getErrorValue();
      v40 = sub_1001C6D98();
      *(v35 + 96) = &type metadata for String;
      *(v35 + 104) = v39;
      *(v35 + 72) = v40;
      *(v35 + 80) = v41;
      sub_1001C5118(v44, &_mh_execute_header, v2, "ReadingHistoryBackupManager Failed to create backup folder: %{public}@, error: %@", 81, 2, v35);

      swift_willThrow();

      (*(v45 + 8))(v32, v47);
    }
  }

  v43 = v0[1];
LABEL_16:

  return v43();
}

uint64_t sub_100133D3C()
{
  v1[3] = v0;
  sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100133E34, 0, 0);
}

uint64_t sub_100133E34()
{
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v42 = v1;
    swift_once();
    v1 = v42;
  }

  v43 = qword_1002711E8;
  sub_1001C5118(v1, &_mh_execute_header, qword_1002711E8, "ReadingHistoryBackupManager listBackup", 38, 2, _swiftEmptyArrayStorage);
  v2 = [objc_opt_self() bu_booksGroupContainerURL];
  if (v2)
  {
    v3 = v2;
    sub_1001C4AD8();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = sub_1001C4B28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v6, v4, 1, v8);
  sub_10009AE58(v6, v5, &unk_10026EF10, &unk_1001F1FA0);
  sub_10009ADF0(v5, v7, &unk_10026EF10, &unk_1001F1FA0);
  v11 = *(v9 + 48);
  if (v11(v7, 1, v8) == 1)
  {
    sub_10008875C(v0[5], &unk_10026EF10, &unk_1001F1FA0);
    v12 = 1;
  }

  else
  {
    v13 = v0[5];
    sub_1001C4A98();
    (*(v9 + 8))(v13, v8);
    v12 = 0;
  }

  v14 = v0[6];
  v15 = v0[4];
  v10(v14, v12, 1, v8);
  sub_10009ADF0(v14, v15, &unk_10026EF10, &unk_1001F1FA0);
  if (v11(v15, 1, v8) == 1)
  {
    v16 = v0[8];
    v17 = v0[6];
    sub_10008875C(v0[4], &unk_10026EF10, &unk_1001F1FA0);
    v18 = sub_1001C6598();
    sub_1001C5118(v18, &_mh_execute_header, v43, "ReadingHistoryBackupManager listBackup - backupContainerURL path is nil", 71, 2, _swiftEmptyArrayStorage);
    sub_100137428();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
LABEL_19:
    sub_10008875C(v17, &unk_10026EF10, &unk_1001F1FA0);
    sub_10008875C(v16, &unk_10026EF10, &unk_1001F1FA0);

    v37 = v0[1];

    return v37();
  }

  v20 = v0[4];
  sub_1001C4AF8();
  (*(v9 + 8))(v20, v8);
  v21 = [objc_opt_self() defaultManager];
  v22 = sub_1001C5FE8();

  v0[2] = 0;
  v23 = [v21 contentsOfDirectoryAtPath:v22 error:v0 + 2];

  v24 = v0[2];
  if (!v23)
  {
    v16 = v0[8];
    v17 = v0[6];
    v36 = v24;
    sub_1001C4A28();

    swift_willThrow();
    goto LABEL_19;
  }

  v44 = v21;
  v25 = sub_1001C6298();
  v26 = v24;

  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = sub_1000ADC34(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = *(v28 + 2);
    v30 = 16 * v29;
    v31 = (v25 + 40);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;
      v34 = *(v28 + 3);

      if (v29 >= v34 >> 1)
      {
        v28 = sub_1000ADC34((v34 > 1), v29 + 1, 1, v28);
      }

      *(v28 + 2) = v29 + 1;
      v35 = &v28[v30];
      *(v35 + 4) = v33;
      *(v35 + 5) = v32;
      v30 += 16;
      v31 += 2;
      ++v29;
      --v27;
    }

    while (v27);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v39 = v0[8];
  v40 = v0[6];

  sub_10008875C(v40, &unk_10026EF10, &unk_1001F1FA0);
  sub_10008875C(v39, &unk_10026EF10, &unk_1001F1FA0);

  v41 = v0[1];

  return v41(v28);
}

uint64_t ReadingHistoryBackupManager.restore(name:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v4 = sub_1001C4B28();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100134580, 0, 0);
}

uint64_t sub_100134580()
{
  v76 = v0;
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1002711E8;
  if (os_log_type_enabled(qword_1002711E8, v1))
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v75 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1001874E8(v4, v3, &v75);
    _os_log_impl(&_mh_execute_header, v2, v1, "ReadingHistoryBackupManager restore: %s", v5, 0xCu);
    sub_10008E7BC(v6);
  }

  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = v0[7];
  v11 = v0[6];
  v12 = [*(v0[8] + 96) createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryBackupManager.restore"];
  sub_100136638(v11, v10, v9);
  v13 = *(v7 + 48);
  if (v13(v9, 1, v8) == 1)
  {
    sub_10008875C(v0[12], &unk_10026EF10, &unk_1001F1FA0);
    sub_100137428();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
  }

  else
  {
    v73 = v2;
    v71 = *(v0[14] + 32);
    v71(v0[19], v0[12], v0[13]);
    v15 = [objc_opt_self() bu_booksGroupContainerURL];
    v74 = v12;
    if (v15)
    {
      v16 = v15;
      sub_1001C4AD8();

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = v0[13];
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[9];
    (*(v0[14] + 56))(v20, v17, 1, v18);
    sub_10009AE58(v20, v19, &unk_10026EF10, &unk_1001F1FA0);
    sub_10009ADF0(v19, v21, &unk_10026EF10, &unk_1001F1FA0);
    v22 = v13(v21, 1, v18);
    v23 = v0[19];
    if (v22 == 1)
    {
      v25 = v0[13];
      v24 = v0[14];
      v26 = v0[11];
      sub_10008875C(v0[9], &unk_10026EF10, &unk_1001F1FA0);
      v27 = sub_1001C6598();
      sub_1001C5118(v27, &_mh_execute_header, v73, "ReadingHistoryBackupManager restore - groupContainerURL is nil", 62, 2, _swiftEmptyArrayStorage);
      sub_100137428();
      swift_allocError();
      *v28 = 1;
      swift_willThrow();

      sub_10008875C(v26, &unk_10026EF10, &unk_1001F1FA0);
      (*(v24 + 8))(v23, v25);
    }

    else
    {
      v29 = v0[16];
      v30 = v0[13];
      v31 = v0[14];
      v71(v0[18], v0[9], v30);
      sub_1001C4A98();
      sub_1001C4AA8();
      v72 = *(v31 + 8);
      v72(v29, v30);
      v32 = [objc_opt_self() defaultManager];
      sub_1001C4AF8();
      v33 = sub_1001C5FE8();

      v70 = v32;
      v34 = [v32 fileExistsAtPath:v33];

      if (v34)
      {
        v35 = v0[16];
        v36 = v0[13];
        sub_1001C4A98();
        sub_1001C4AA8();
        v72(v35, v36);
        sub_1001C4AF8();
        v37 = sub_1001C5FE8();

        v38 = [v70 fileExistsAtPath:v37];

        if (v38)
        {
          sub_100136ED0(v0[17], v0[15]);
          v64 = v0[18];
          v66 = v0[19];
          v39 = v0[17];
          v59 = v0[15];
          v60 = v0[13];
          v61 = v0[11];

          v72(v59, v60);
          v72(v39, v60);
          v72(v64, v60);
          sub_10008875C(v61, &unk_10026EF10, &unk_1001F1FA0);
          v72(v66, v60);

          v62 = v0[1];
          goto LABEL_18;
        }

        v63 = v0[17];
        v65 = v0[18];
        v50 = v0[15];
        v51 = v0[13];
        v67 = v0[11];
        v69 = v0[19];
        v52 = sub_1001C6598();
        sub_100084528(&qword_10026FEE0, &unk_1001F0690);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1001F0670;
        v54 = sub_1001C4AF8();
        v56 = v55;
        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = sub_100084570();
        *(v53 + 32) = v54;
        *(v53 + 40) = v56;
        sub_1001C5118(v52, &_mh_execute_header, v2, "ReadingHistoryBackupManager restore - Destination local sync file not found, destLocalFileURL=%{public}@", 104, 2, v53);

        sub_100137428();
        swift_allocError();
        *v57 = 1;
        swift_willThrow();

        v72(v50, v51);
        v72(v63, v51);
        v72(v65, v51);
        sub_10008875C(v67, &unk_10026EF10, &unk_1001F1FA0);
        v72(v69, v51);
      }

      else
      {
        v40 = v0[18];
        v68 = v0[19];
        v41 = v0[17];
        v42 = v0[13];
        v43 = v0[11];
        v44 = sub_1001C6598();
        sub_100084528(&qword_10026FEE0, &unk_1001F0690);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1001F0670;
        v46 = sub_1001C4AF8();
        v48 = v47;
        *(v45 + 56) = &type metadata for String;
        *(v45 + 64) = sub_100084570();
        *(v45 + 32) = v46;
        *(v45 + 40) = v48;
        sub_1001C5118(v44, &_mh_execute_header, v73, "ReadingHistoryBackupManager restore - Backup for local sync file not found, backupLocalFileURL=%{public}@", 105, 2, v45);

        sub_100137428();
        swift_allocError();
        *v49 = 1;
        swift_willThrow();

        v72(v41, v42);
        v72(v40, v42);
        sub_10008875C(v43, &unk_10026EF10, &unk_1001F1FA0);
        v72(v68, v42);
      }
    }
  }

  v62 = v0[1];
LABEL_18:

  return v62();
}

uint64_t sub_100134FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v7 = sub_1001C4988();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v10 = __chkstk_darwin(v9 - 8);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = sub_1001C4B28();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v51 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - v22;
  __chkstk_darwin(v21);
  v24 = *(v15 + 16);
  v57 = &v50 - v25;
  v50 = v24;
  v24();
  *&v59 = a3;
  *(&v59 + 1) = a4;

  v62._countAndFlagsBits = 45;
  v62._object = 0xE100000000000000;
  sub_1001C6138(v62);
  v63._object = 0x8000000100202F90;
  v63._countAndFlagsBits = 0xD000000000000026;
  sub_1001C6138(v63);
  v26 = v59;
  v56 = v23;
  sub_1001C4AA8();
  sub_10009ADF0(v53, v13, &unk_10026EF10, &unk_1001F1FA0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_10008875C(v13, &unk_10026EF10, &unk_1001F1FA0);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    sub_100136018(a1, v20, v26, *(&v26 + 1));

    (*(v15 + 8))(v20, v14);
  }

  v27 = sub_1001C65B8();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v28 = qword_10026F958;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001F0670;
  v30 = sub_1001C4A58();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  v33 = sub_100084570();
  *(v29 + 64) = v33;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v53 = v28;
  sub_1001C5118(v27, &_mh_execute_header, v28, "CRDTModelContextStore storeDirectory = %@", 41, 2, v29);

  sub_1001C4978();
  sub_1001C4968();
  v34 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v35);
  v37 = v36;
  *&v59 = 0;
  LODWORD(v29) = [v34 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v59];

  if (v29)
  {
    v38 = v59;
    sub_1001C4A78();
    sub_1001C5E38();
    v39 = v56;
    (v50)(v51, v56, v14);
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    (*(v15 + 56))(v52, 1, 1, v14);
    v49 = sub_1001C5E28();
  }

  else
  {
    v40 = v59;
    sub_1001C4A28();

    swift_willThrow();
    v39 = v56;
    v41 = sub_1001C6598();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1001F0660;
    v43 = sub_1001C4A58();
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v33;
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    swift_getErrorValue();
    v45 = sub_1001C6D98();
    *(v42 + 96) = &type metadata for String;
    *(v42 + 104) = v33;
    *(v42 + 72) = v45;
    *(v42 + 80) = v46;
    sub_1001C5118(v41, &_mh_execute_header, v53, "CRDTModelContextStore unable to create CRContext at %@ error=%@", 63, 2, v42);

    sub_1001C5E38();
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v49 = sub_1001C5E18();

    sub_10008875C(&v59, &unk_10026EF20, &unk_1001F1FB0);
  }

  (*(v54 + 8))(v58, v55);
  v47 = *(v15 + 8);
  v47(v39, v14);
  v47(v57, v14);
  return v49;
}

uint64_t sub_100135698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v7 = sub_1001C4988();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v10 = __chkstk_darwin(v9 - 8);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = sub_1001C4B28();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v51 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - v22;
  __chkstk_darwin(v21);
  v24 = *(v15 + 16);
  v57 = &v50 - v25;
  v50 = v24;
  v24();
  *&v59 = a3;
  *(&v59 + 1) = a4;

  v62._countAndFlagsBits = 45;
  v62._object = 0xE100000000000000;
  sub_1001C6138(v62);
  v63._object = 0x8000000100202A00;
  v63._countAndFlagsBits = 0xD00000000000001DLL;
  sub_1001C6138(v63);
  v26 = v59;
  v56 = v23;
  sub_1001C4AA8();
  sub_10009ADF0(v53, v13, &unk_10026EF10, &unk_1001F1FA0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_10008875C(v13, &unk_10026EF10, &unk_1001F1FA0);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    sub_100136018(a1, v20, v26, *(&v26 + 1));

    (*(v15 + 8))(v20, v14);
  }

  v27 = sub_1001C65B8();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v28 = qword_10026F958;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001F0670;
  v30 = sub_1001C4A58();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  v33 = sub_100084570();
  *(v29 + 64) = v33;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v53 = v28;
  sub_1001C5118(v27, &_mh_execute_header, v28, "CRDTModelContextStore storeDirectory = %@", 41, 2, v29);

  sub_1001C4978();
  sub_1001C4968();
  v34 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v35);
  v37 = v36;
  *&v59 = 0;
  LODWORD(v29) = [v34 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v59];

  if (v29)
  {
    v38 = v59;
    sub_1001C4A78();
    sub_1001C5E38();
    v39 = v56;
    (v50)(v51, v56, v14);
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    (*(v15 + 56))(v52, 1, 1, v14);
    v49 = sub_1001C5E28();
  }

  else
  {
    v40 = v59;
    sub_1001C4A28();

    swift_willThrow();
    v39 = v56;
    v41 = sub_1001C6598();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1001F0660;
    v43 = sub_1001C4A58();
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v33;
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    swift_getErrorValue();
    v45 = sub_1001C6D98();
    *(v42 + 96) = &type metadata for String;
    *(v42 + 104) = v33;
    *(v42 + 72) = v45;
    *(v42 + 80) = v46;
    sub_1001C5118(v41, &_mh_execute_header, v53, "CRDTModelContextStore unable to create CRContext at %@ error=%@", 63, 2, v42);

    sub_1001C5E38();
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v49 = sub_1001C5E18();

    sub_10008875C(&v59, &unk_10026EF20, &unk_1001F1FB0);
  }

  (*(v54 + 8))(v58, v55);
  v47 = *(v15 + 8);
  v47(v39, v14);
  v47(v57, v14);
  return v49;
}

uint64_t sub_100135D5C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v20 - v11;
  __chkstk_darwin(v10);
  v14 = v20 - v13;
  v20[1] = "ReadingHistoryModel";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_10012150C(v12);
  sub_1001C4AA8();
  v15 = *(v6 + 8);
  v15(v12, v5);
  v16 = [objc_opt_self() books];
  v17 = [v16 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v15(v9, v5);
  (*(v6 + 16))(v4, v12, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v18 = sub_100135698(v14, v4, v21, v22);
  sub_10008875C(v4, &unk_10026EF10, &unk_1001F1FA0);
  v15(v12, v5);
  v15(v14, v5);
  return v18;
}

void sub_100136018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v66 = &v60 - v11;
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  sub_1001C4AA8();
  v14 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v15 = sub_1001C5FE8();

  v16 = [v14 fileExistsAtPath:v15];

  if (!v16)
  {
    (*(v6 + 8))(v13, v5);

    return;
  }

  v61 = a1;
  v62 = v5;
  v64 = v9;
  v65 = v6;
  v63 = v14;
  v17 = sub_1001C65B8();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v18 = qword_10026F958;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v19 = swift_allocObject();
  v60 = xmmword_1001F0670;
  *(v19 + 16) = xmmword_1001F0670;
  v20 = sub_1001C4A58();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v23 = sub_100084570();
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v24 = v18;
  sub_1001C5118(v17, &_mh_execute_header, v18, "CRDTModelContextStore found CRContext file at legacyUrl = %{public}@", 68, 2, v19);

  v25 = v66;
  v26 = v62;
  (*(v65 + 16))(v66, v61, v62);
  v27 = v64;
  sub_1001C4AA8();
  sub_1001C4AF8();
  v28 = sub_1001C5FE8();

  v29 = v63;
  LOBYTE(v20) = [v63 fileExistsAtPath:v28];

  if (v20)
  {
    v31 = sub_1001C6598();
    v32 = v24;
    v33 = swift_allocObject();
    *(v33 + 16) = v60;
    v34 = sub_1001C4A58();
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v23;
    *(v33 + 32) = v34;
    *(v33 + 40) = v35;
    sub_1001C5118(v31, &_mh_execute_header, v32, "CRDTModelContextStore file already exists at url = %{public}@", 61, 2, v33);
  }

  else
  {
    v61 = v24;
    sub_1001C4A88(v30);
    v37 = v36;
    v67 = 0;
    v38 = [v29 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v67];

    v39 = v67;
    if ((v38 & 1) == 0 || (v40 = v67, sub_1001C4A88(v41), v43 = v42, sub_1001C4A88(v44), v46 = v45, v67 = 0, v47 = [v29 moveItemAtURL:v43 toURL:v45 error:&v67], v43, v46, v39 = v67, !v47))
    {
      v53 = v39;
      sub_1001C4A28();

      swift_willThrow();
      LODWORD(v60) = sub_1001C6598();
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1001F0660;
      v55 = sub_1001C4A58();
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = v23;
      *(v54 + 32) = v55;
      *(v54 + 40) = v56;
      swift_getErrorValue();
      v57 = sub_1001C6D98();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v23;
      *(v54 + 72) = v57;
      *(v54 + 80) = v58;
      sub_1001C5118(v60, &_mh_execute_header, v61, "CRDTModelContextStore unable to migrate CRContext file to %{public}@ error=%{public}@", 85, 2, v54);

      goto LABEL_12;
    }

    v48 = v67;
    v49 = sub_1001C65B8();
    v50 = swift_allocObject();
    *(v50 + 16) = v60;
    v51 = sub_1001C4A58();
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = v23;
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    sub_1001C5118(v49, &_mh_execute_header, v61, "CRDTModelContextStore migrated CRContext file to %{public}@ error=%{public}@", 76, 2, v50);
  }

LABEL_12:
  v59 = *(v65 + 8);
  v59(v27, v26);
  v59(v25, v26);
  v59(v13, v26);
}

void *ReadingHistoryBackupManager.init(transactionProvider:)(uint64_t a1)
{
  v1[2] = 0xD000000000000055;
  v1[3] = 0x80000001001FDEE0;
  v1[4] = 0xD000000000000012;
  v1[5] = 0x80000001001FDF40;
  v1[6] = 0xD000000000000013;
  v1[7] = 0x80000001001FDF60;
  v1[8] = 0x736B6F6F42;
  v1[9] = 0xE500000000000000;
  v1[10] = 0xD000000000000019;
  v1[11] = 0x80000001001FDF80;
  v1[12] = a1;
  return v1;
}

uint64_t sub_100136638@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v58 = a1;
  v4 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v5 = __chkstk_darwin(v4 - 8);
  v57 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v56 = &v55 - v8;
  v9 = __chkstk_darwin(v7);
  v59 = &v55 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = __chkstk_darwin(v11);
  v63 = &v55 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v55 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v27 = [objc_opt_self() bu_booksGroupContainerURL];
  v60 = a3;
  if (v27)
  {
    v28 = v27;
    sub_1001C4AD8();

    v29 = sub_1001C4B28();
    (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
  }

  else
  {
    v29 = sub_1001C4B28();
    (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  }

  sub_10009AE58(v24, v26, &unk_10026EF10, &unk_1001F1FA0);
  v61 = v26;
  sub_10009ADF0(v26, v18, &unk_10026EF10, &unk_1001F1FA0);
  sub_1001C4B28();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v18, 1, v29) == 1)
  {
    sub_10008875C(v18, &unk_10026EF10, &unk_1001F1FA0);
    v32 = 1;
  }

  else
  {
    sub_1001C4A98();
    (*(v30 + 8))(v18, v29);
    v32 = 0;
  }

  v33 = v63;
  v64 = *(v30 + 56);
  v64(v21, v32, 1, v29);
  sub_100137508(v58, v62);
  v62 = v21;
  sub_10009ADF0(v21, v13, &unk_10026EF10, &unk_1001F1FA0);
  if (v31(v13, 1, v29) == 1)
  {

    sub_10008875C(v13, &unk_10026EF10, &unk_1001F1FA0);
    v34 = 1;
  }

  else
  {
    sub_1001C4A98();

    (*(v30 + 8))(v13, v29);
    v34 = 0;
  }

  v35 = v59;
  v64(v33, v34, 1, v29);
  sub_10009ADF0(v33, v35, &unk_10026EF10, &unk_1001F1FA0);
  if (v31(v35, 1, v29) == 1)
  {
    sub_10008875C(v35, &unk_10026EF10, &unk_1001F1FA0);
    LODWORD(v59) = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v58 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1001F0660;
    v37 = v56;
    sub_10009ADF0(v61, v56, &unk_10026EF10, &unk_1001F1FA0);
    if (v31(v37, 1, v29) == 1)
    {
      sub_10008875C(v37, &unk_10026EF10, &unk_1001F1FA0);
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v38 = sub_1001C4AF8();
      v39 = v42;
      (*(v30 + 8))(v37, v29);
    }

    *(v36 + 56) = &type metadata for String;
    v43 = sub_100084570();
    *(v36 + 64) = v43;
    if (v39)
    {
      v44 = v38;
    }

    else
    {
      v44 = 0x296C696E28;
    }

    v45 = 0xE500000000000000;
    if (v39)
    {
      v45 = v39;
    }

    *(v36 + 32) = v44;
    *(v36 + 40) = v45;
    v46 = v57;
    sub_10009ADF0(v62, v57, &unk_10026EF10, &unk_1001F1FA0);
    if (v31(v46, 1, v29) == 1)
    {
      sub_10008875C(v46, &unk_10026EF10, &unk_1001F1FA0);
      v47 = (v36 + 72);
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v43;
      v48 = v63;
      v49 = v61;
    }

    else
    {
      v50 = v46;
      v51 = sub_1001C4AF8();
      v53 = v52;
      (*(v30 + 8))(v50, v29);
      v47 = (v36 + 72);
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v43;
      v49 = v61;
      if (v53)
      {
        *v47 = v51;
        v48 = v63;
LABEL_28:
        *(v36 + 80) = v53;
        sub_1001C5118(v59, &_mh_execute_header, v58, "ReadingHistoryBackupManager - Failed to construct backup destination path. groupContainerURL=%{public}@, backupContainerURL=%{public}@", 134, 2, v36);

        sub_10008875C(v48, &unk_10026EF10, &unk_1001F1FA0);
        sub_10008875C(v62, &unk_10026EF10, &unk_1001F1FA0);
        sub_10008875C(v49, &unk_10026EF10, &unk_1001F1FA0);
        v41 = 1;
        v40 = v60;
        return (v64)(v40, v41, 1, v29);
      }

      v48 = v63;
    }

    *v47 = 0x296C696E28;
    v53 = 0xE500000000000000;
    goto LABEL_28;
  }

  sub_10008875C(v33, &unk_10026EF10, &unk_1001F1FA0);
  sub_10008875C(v62, &unk_10026EF10, &unk_1001F1FA0);
  sub_10008875C(v61, &unk_10026EF10, &unk_1001F1FA0);
  v40 = v60;
  (*(v30 + 32))(v60, v35, v29);
  v41 = 0;
  return (v64)(v40, v41, 1, v29);
}

uint64_t sub_100136DF0(uint64_t a1)
{
  result = sub_1001386A8();
  if (!v2)
  {
    sub_100138E70(0xD000000000000010, 0x80000001001FE190, 0xD00000000000002CLL, 0x8000000100202A20, a1);
    sub_100138E70(0xD000000000000011, 0x8000000100200DA0, 0xD00000000000001CLL, 0x8000000100200DC0, a1);
    sub_100138E70(0xD000000000000018, 0x8000000100200E50, 0xD000000000000035, 0x8000000100202A50, a1);
    return sub_100138E70(v1[4], v1[5], v1[6], v1[7], a1);
  }

  return result;
}

uint64_t sub_100136ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C5BD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReadingHistoryModel(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  result = sub_1001C4B48();
  if (!v2)
  {
    v16 = result;
    v17 = v15;
    v44 = v7;
    v45 = v5;
    v47 = v11;
    v48 = a2;
    v18 = v49;
    sub_10009AD9C(result, v15);
    sub_10013ACE4(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
    sub_1001C5C58();
    v19 = sub_1001C4B48();
    v46 = 0;
    v21 = v20;
    v42 = v13;
    v22 = v19;
    sub_10009AD9C(v19, v20);
    v23 = v46;
    v24 = v47;
    v43 = v22;
    sub_1001C5C58();
    v46 = v23;
    if (v23)
    {
      sub_10013AD2C(v42, type metadata accessor for ReadingHistoryModel);
      sub_1000887D0(v16, v17);
      return sub_1000887D0(v43, v21);
    }

    else
    {
      v41 = v21;
      v25 = v42;
      sub_100139720(v42, v24);
      v26 = sub_100135D5C(*(v18 + 64), *(v18 + 72));
      v27 = v45;
      v28 = *(v45 + 104);
      v29 = v4;
      v30 = v44;
      v49 = v29;
      v28();
      v31 = v46;
      v32 = sub_1001C5C48();
      v46 = v31;
      if (v31)
      {

        sub_1000887D0(v43, v41);
        sub_1000887D0(v16, v17);
        (*(v27 + 8))(v30, v49);
        sub_10013AD2C(v24, type metadata accessor for ReadingHistoryModel);
        return sub_10013AD2C(v25, type metadata accessor for ReadingHistoryModel);
      }

      else
      {
        v34 = v33;
        v35 = v32;
        (*(v27 + 8))(v30, v49);
        v36 = v46;
        sub_1001C4BB8();
        if (v36)
        {
          sub_1000887D0(v35, v34);

          sub_1000887D0(v43, v41);
          sub_1000887D0(v16, v17);
          v37 = v47;
        }

        else
        {
          v38 = sub_1001C65B8();
          v39 = v41;
          v40 = v47;
          if (qword_10026EBE8 != -1)
          {
            LODWORD(v49) = v38;
            swift_once();
            v38 = v49;
          }

          sub_1001C5118(v38, &_mh_execute_header, qword_1002711E8, "ReadingHistoryBackupManager restore success", 43, 2, _swiftEmptyArrayStorage);
          sub_1000887D0(v35, v34);

          sub_1000887D0(v43, v39);
          sub_1000887D0(v16, v17);
          v37 = v40;
        }

        sub_10013AD2C(v37, type metadata accessor for ReadingHistoryModel);
        return sub_10013AD2C(v25, type metadata accessor for ReadingHistoryModel);
      }
    }
  }

  return result;
}

void *ReadingHistoryBackupManager.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ReadingHistoryBackupManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_100137428()
{
  result = qword_100272438;
  if (!qword_100272438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272438);
  }

  return result;
}

unint64_t sub_100137480()
{
  result = qword_100272440;
  if (!qword_100272440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272440);
  }

  return result;
}

uint64_t sub_100137508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v12 = [objc_allocWithZone(NSDateFormatter) init];
    sub_1001C4CD8();
    isa = sub_1001C4D08().super.isa;
    (*(v9 + 8))(v11, v8);
    [v12 setCalendar:isa];

    v14 = sub_1001C5FE8();
    [v12 setDateFormat:v14];

    sub_1001C4C98();
    v15 = sub_1001C4C38().super.isa;
    (*(v5 + 8))(v7, v4);
    v16 = [v12 stringFromDate:v15];

    v17 = sub_1001C6018();
    v19 = v18;

    v21[0] = 0x2D70756B636142;
    v21[1] = 0xE700000000000000;
    v22._countAndFlagsBits = v17;
    v22._object = v19;
    sub_1001C6138(v22);

    a1 = v21[0];
  }

  return a1;
}

unint64_t sub_100137794()
{
  sub_100084528(&qword_100272570, &qword_1001F0CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0680;
  sub_1001C6018();
  sub_1001C6968();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_1001C6018();
  sub_1001C6968();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  sub_1001C6018();
  sub_1001C6968();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = 1;
  v1 = sub_100118A6C(inited);
  swift_setDeallocating();
  sub_100084528(&qword_10026F280, &qword_1001F5620);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1001378DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001C6608();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098D64();
  v7 = v6;
  v14[2] = sub_1001C69E8();
  v14[3] = v8;
  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_1001C6138(v15);
  v14[5] = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v16._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v16);

  v9 = objc_allocWithZone(BCCloudDataSource);
  v10 = sub_1001C5FE8();

  v11 = [v9 initWithManagedObjectModel:v7 nameOnDisk:v10];

  v12 = [v11 persistentStoreCoordinator];
  sub_100137794();
  sub_1001C65F8();
  sub_1001C66E8();
  (*(v3 + 8))(v5, v2);
}

void sub_100137AD8(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v6 = sub_1001C5FE8();

  v7 = [v5 fileExistsAtPath:v6];

  if (!v7)
  {
    v22 = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v23 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001F0670;
    v25 = sub_1001C4AF8();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100084570();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_1001C5118(v22, &_mh_execute_header, v23, "ReadingHistoryBackupManager - Database not found at %{public}@", 62, 2, v24);

    sub_100137428();
    swift_allocError();
    *v28 = 1;
    goto LABEL_9;
  }

  v30 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v8 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001F0660;
  v10 = sub_1001C4AF8();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100084570();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_1001C4AF8();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  sub_1001C5118(v30, &_mh_execute_header, v8, "ReadingHistoryBackupManager - About to copy database\n  - src=%{public}@\n  - dest=%{public}@", 91, 2, v9);

  sub_1001378DC(a1, a2);
  if (v2)
  {
    v16 = sub_1001C6598();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1001F0660;
    v18 = sub_1001C4AF8();
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = v13;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    swift_getErrorValue();
    v20 = sub_1001C6D98();
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v13;
    *(v17 + 72) = v20;
    *(v17 + 80) = v21;
    sub_1001C5118(v16, &_mh_execute_header, v8, "ReadingHistoryBackupManager - Error copying database to %{public}@, error: %{public}@", 85, 2, v17);

LABEL_9:
    swift_willThrow();

    return;
  }

  v29 = sub_1001C65B8();
  sub_1001C5118(v29, &_mh_execute_header, v8, "ReadingHistoryBackupManager - Copy database successful", 54, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100137E58(uint64_t a1)
{
  v2 = sub_1001C4B28();
  v79 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v63 - v5;
  v6 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v7 = __chkstk_darwin(v6 - 8);
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v75 = &v63 - v10;
  v11 = __chkstk_darwin(v9);
  v74 = &v63 - v12;
  v13 = __chkstk_darwin(v11);
  v77 = &v63 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v63 - v16;
  v18 = __chkstk_darwin(v15);
  v78 = &v63 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v63 - v21;
  __chkstk_darwin(v20);
  v24 = &v63 - v23;
  v25 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v26 = qword_1002711E8;
  v65 = sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1001F0670;
  v71 = a1;
  v28 = sub_1001C4AF8();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v67 = sub_100084570();
  *(v27 + 64) = v67;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v68 = v26;
  sub_1001C5118(v25, &_mh_execute_header, v26, "ReadingHistoryBackupManager About to save database to %{public}@", 64, 2, v27);

  v31 = [objc_opt_self() bu_booksGroupContainerDocumentsURL];
  if (v31)
  {
    v32 = v31;
    sub_1001C4AD8();

    v33 = v79;
    v34 = *(v79 + 56);
    v35 = v22;
    v36 = 0;
  }

  else
  {
    v33 = v79;
    v34 = *(v79 + 56);
    v35 = v22;
    v36 = 1;
  }

  v80 = v34;
  v34(v35, v36, 1, v2);
  sub_10009AE58(v22, v24, &unk_10026EF10, &unk_1001F1FA0);
  v76 = v24;
  sub_10009ADF0(v24, v17, &unk_10026EF10, &unk_1001F1FA0);
  v37 = *(v33 + 48);
  if (v37(v17, 1, v2) == 1)
  {
    sub_10008875C(v17, &unk_10026EF10, &unk_1001F1FA0);
    v38 = 1;
    v39 = v78;
  }

  else
  {
    v39 = v78;
    sub_1001C4AA8();
    (*(v33 + 8))(v17, v2);
    v38 = 0;
  }

  v80(v39, v38, 1, v2);
  v81 = sub_1001C69E8();
  v82 = v40;
  v84._countAndFlagsBits = 45;
  v84._object = 0xE100000000000000;
  sub_1001C6138(v84);
  v83 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v85._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v85);

  v42 = v81;
  v41 = v82;
  v43 = v74;
  sub_10009ADF0(v39, v74, &unk_10026EF10, &unk_1001F1FA0);
  v72 = v37;
  v44 = v37(v43, 1, v2);
  v73 = v41;
  v64 = v42;
  if (v44 == 1)
  {
    sub_10008875C(v43, &unk_10026EF10, &unk_1001F1FA0);
    v45 = 1;
    v46 = v77;
  }

  else
  {
    v47 = v66;
    sub_1001C4A98();
    v48 = *(v33 + 8);
    v48(v43, v2);
    v46 = v77;
    sub_1001C4A98();
    v48(v47, v2);
    v39 = v78;
    v45 = 0;
  }

  v80(v46, v45, 1, v2);
  v49 = v75;
  sub_10009ADF0(v46, v75, &unk_10026EF10, &unk_1001F1FA0);
  v50 = v72;
  if (v72(v49, 1, v2) == 1)
  {
    v51 = 0x296C696E28;
    sub_10008875C(v49, &unk_10026EF10, &unk_1001F1FA0);
    LODWORD(v80) = sub_1001C6598();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1001F0660;
    v53 = v70;
    sub_10009ADF0(v39, v70, &unk_10026EF10, &unk_1001F1FA0);
    if (v50(v53, 1, v2) == 1)
    {
      sub_10008875C(v53, &unk_10026EF10, &unk_1001F1FA0);
      v54 = v67;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = v54;
      v55 = 0xE500000000000000;
    }

    else
    {
      v58 = sub_1001C4AF8();
      v55 = v59;
      (*(v79 + 8))(v53, v2);
      v54 = v67;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = v54;
      if (v55)
      {
        v51 = v58;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      v46 = v77;
    }

    v60 = v73;
    *(v52 + 32) = v51;
    *(v52 + 40) = v55;
    *(v52 + 96) = &type metadata for String;
    *(v52 + 104) = v54;
    *(v52 + 72) = v64;
    *(v52 + 80) = v60;
    sub_1001C5118(v80, &_mh_execute_header, v68, "ReadingHistoryBackupManager - Failed to construct source path for database. rootDirectory=%{public}@, storeFileName=%{public}@", 126, 2, v52);

    sub_100137428();
    swift_allocError();
    *v61 = 2;
    swift_willThrow();
  }

  else
  {

    v56 = v79;
    v57 = v69;
    (*(v79 + 32))(v69, v49, v2);
    sub_100137AD8(v57, v71);
    (*(v56 + 8))(v57, v2);
  }

  sub_10008875C(v46, &unk_10026EF10, &unk_1001F1FA0);
  sub_10008875C(v39, &unk_10026EF10, &unk_1001F1FA0);
  return sub_10008875C(v76, &unk_10026EF10, &unk_1001F1FA0);
}