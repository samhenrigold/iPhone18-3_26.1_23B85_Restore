uint64_t sub_1BEBD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BEE4C()
{
  sub_68CD0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF0D0()
{
  sub_68CD0((v0 + 56));
  sub_68CD0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF35C()
{
  sub_68CD0((v0 + 96));
  sub_68CD0((v0 + 56));
  sub_68CD0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF5F0()
{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1016);

  sub_1BFCD0(v6, type metadata accessor for SeriesPageStoreResourceIntent);
  sub_69198(v5, &qword_3BFEC0, &unk_2EB230);
  sub_69198(v4, &qword_3C13C8, &qword_2EB258);
  (*(v2 + 8))(v1, v3);
  sub_68CD0((v0 + 96));
  sub_68CD0((v0 + 56));
  sub_68CD0((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BF90C(uint64_t a1)
{
  v2 = sub_2C4C48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C13C8, &qword_2EB258);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2C4E88();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(a1, v8, &qword_3C13C8, &qword_2EB258);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_69198(v8, &qword_3C13C8, &qword_2EB258);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_2C4C38();
  if (qword_3BB938 != -1)
  {
    swift_once();
  }

  v14 = sub_6620C(&qword_3C13E8, &qword_2EB268);
  sub_57AD8(v14, qword_3E8948);
  sub_2C4E78();
  sub_2C4E98();

  if (qword_3BB940 != -1)
  {
    swift_once();
  }

  sub_57AD8(v14, qword_3E8960);
  sub_2C4E78();
  sub_2C4E98();

  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1BFC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7100C;

  return SeriesSeeAllPageIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_1BFCD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BFD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BFEC0, &unk_2EB230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFE40()
{
  sub_68CD0(v0 + 2);
  if (v0[11])
  {
    sub_68CD0(v0 + 8);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1BFE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BFEE0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v46 = a3;
  v47 = a2;
  v42 = a1;
  v3 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  __chkstk_darwin(v3 - 8);
  v45 = &v40 - v4;
  v5 = sub_2C5418();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C5288();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2BF368();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2BFDD8();
  v43 = *(v17 - 8);
  v44 = v17;
  __chkstk_darwin(v17);
  v48 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v40 - v21;
  LODWORD(v47) = *v47;
  (*(v14 + 16))(v16, v42, v13, v20);
  v23 = (*(v14 + 88))(v16, v13);
  if (v23 == enum case for SeriesType.audiobook(_:) || v23 == enum case for SeriesType.book(_:))
  {
    sub_2C5278();
    v24 = enum case for LocalizerLookupStrategy.default(_:);
    (*(v6 + 104))(v8, enum case for LocalizerLookupStrategy.default(_:), v5);
    sub_2BFD98();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_2BFDC8();
    (*(v14 + 8))(v16, v13);
    v24 = enum case for LocalizerLookupStrategy.default(_:);
  }

  v25 = 0x4040000000000000;
  if (v47)
  {
    v25 = 0;
  }

  v41 = v22;
  v42 = v25;
  sub_2C5278();
  (*(v6 + 104))(v8, v24, v5);
  sub_2BFD98();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v26 = v43;
  v27 = *(v43 + 16);
  v28 = v45;
  v29 = v22;
  v30 = v44;
  v27(v45, v29, v44);
  (*(v26 + 56))(v28, 0, 1, v30);
  v40 = 0x80000000003065B0;
  v31 = type metadata accessor for ContentUnavailableComponentModel(0);
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  sub_6932C(v50, v49, &unk_3BDC90, &unk_2E5620);
  v32 = v46;
  sub_2C1DB8();
  sub_69198(v50, &unk_3BDC90, &unk_2E5620);
  v33 = v31[11];
  v34 = sub_2C5018();
  (*(*(v34 - 8) + 56))(&v32[v33], 1, 1, v34);
  *v32 = xmmword_2F2360;
  v35 = v48;
  v27(&v32[v31[5]], v48, v30);
  sub_6932C(v28, &v32[v31[6]], &qword_3BEF80, &qword_2E8D50);
  v36 = &v32[v31[7]];
  v37 = v42;
  *v36 = 0;
  *(v36 + 1) = v37;
  v36[16] = v47;
  *&v50[0] = 0xD000000000000014;
  *(&v50[0] + 1) = v40;
  sub_2C61A8();
  sub_69198(v28, &qword_3BEF80, &qword_2E8D50);
  v38 = *(v26 + 8);
  v38(v35, v30);
  result = (v38)(v41, v30);
  v32[v31[8]] = 0;
  return result;
}

uint64_t sub_1C05DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_D4DF4(a3, v22 - v9);
  v11 = sub_2C5C58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_69198(v10, &unk_3BDBB0, &qword_2E47D0);
  }

  else
  {
    sub_2C5C48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2C5BB8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2C5938() + 32;

      sub_6620C(&unk_3BD1A0, &qword_2E5AD0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);
  sub_6620C(&unk_3BD1A0, &qword_2E5AD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C0888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_D4DF4(a3, v22 - v9);
  v11 = sub_2C5C58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_69198(v10, &unk_3BDBB0, &qword_2E47D0);
  }

  else
  {
    sub_2C5C48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2C5BB8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2C5938() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double PaginationController.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t sub_1C0B94(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1C0C24@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 17);
  return result;
}

double PaginationController.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

double sub_1C0C88(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v4 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v63 - v5;
  v75 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v69 = *(v75 - 8);
  v7 = *(v69 + 64);
  __chkstk_darwin(v75);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v63 - v9;
  v10 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - v11;
  v13 = sub_2C4BF8();
  __chkstk_darwin(v13 - 8);
  v72 = sub_6620C(&qword_3BD478, &unk_2E4090);
  v68 = *(v72 - 8);
  v14 = *(v68 + 64);
  __chkstk_darwin(v72);
  v70 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v63 - v16;
  v78 = sub_2C00B8();
  v17 = *(v78 - 8);
  __chkstk_darwin(v78);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  if (*(v2 + 18) != 1)
  {
    v33 = v2;
    sub_2C0088();
    v77 = a1;
    sub_691F8(a1, &v81);
    v34 = sub_2C0098();
    v35 = sub_2C5DE8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v80[0] = v37;
      *v36 = 136315138;
      sub_72084(&v81, *(&v82 + 1));
      v38 = sub_2C4A88();
      v40 = v39;
      sub_68CD0(&v81);
      v41 = sub_5CCF4(v38, v40, v80);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_0, v34, v35, "The initial page intent result hasn't come back yet. Staging this intent to be re-dispatched later: %s", v36, 0xCu);
      sub_68CD0(v37);

      (*(v17 + 8))(v19, v78);
    }

    else
    {

      (*(v17 + 8))(v19, v78);
      sub_68CD0(&v81);
    }

    sub_691F8(v77, &v81);
    swift_beginAccess();
    v42 = *(&v82 + 1);
    if (*(v33 + 48))
    {
      sub_68CD0((v33 + 24));
      if (v42)
      {
LABEL_10:
        sub_68D1C(&v81, v33 + 24);
LABEL_13:
        swift_endAccess();
        return result;
      }
    }

    else if (*(&v82 + 1))
    {
      goto LABEL_10;
    }

    v43 = v82;
    *(v33 + 24) = v81;
    *(v33 + 40) = v43;
    *(v33 + 56) = v83;
    goto LABEL_13;
  }

  swift_beginAccess();
  if (!*(v2 + 17))
  {
    v24 = v2;
    sub_2C0088();
    v77 = a1;
    sub_691F8(a1, &v81);
    v25 = sub_2C0098();
    v26 = sub_2C5DE8();
    v27 = os_log_type_enabled(v25, v26);
    v67 = v6;
    v66 = v24;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v79 = v65;
      *v28 = 136315138;
      v63 = v83;
      sub_72084(&v81, *(&v82 + 1));
      v64 = v26;
      v29 = sub_2C4A88();
      v31 = v30;
      sub_68CD0(&v81);
      v32 = sub_5CCF4(v29, v31, &v79);
      v24 = v66;

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v25, v64, "Loading next page with intent: %s", v28, 0xCu);
      sub_68CD0(v65);

      (*(v17 + 8))(v22, v78);
    }

    else
    {

      (*(v17 + 8))(v22, v78);
      sub_68CD0(&v81);
    }

    *(v24 + 17) = 1;
    sub_2C4BE8();
    sub_691F8(v77, &v81);
    v44 = sub_2BF088();
    (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
    type metadata accessor for Page(0);
    type metadata accessor for Shelf(0);
    sub_1C3638(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
    sub_1C3638(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v45 = v71;
    sub_2C10E8();
    v46 = v74;
    v47 = v75;
    sub_2C4DB8();
    v48 = sub_2C5C58();
    (*(*(v48 - 8) + 56))(v67, 1, 1, v48);
    v49 = v69;
    (*(v69 + 16))(v73, v46, v47);
    v50 = v68;
    (*(v68 + 16))(v70, v45, v72);
    sub_691F8(v77, &v81);
    sub_2C5C18();

    v51 = sub_2C5C08();
    v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v53 = (v7 + *(v50 + 80) + v52) & ~*(v50 + 80);
    v54 = (v14 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v51;
    *(v56 + 24) = &protocol witness table for MainActor;
    v57 = v56 + v52;
    v58 = v75;
    (*(v49 + 32))(v57, v73, v75);
    v59 = v56 + v53;
    v60 = v72;
    (*(v50 + 32))(v59, v70, v72);
    *(v56 + v54) = v76;
    sub_68D1C(&v81, v56 + v55);
    v61 = v66;
    *(v56 + ((v55 + 47) & 0xFFFFFFFFFFFFFFF8)) = v66;
    v62 = sub_1C0888(0, 0, v67, &unk_2F2380, v56);
    (*(v49 + 8))(v74, v58);
    (*(v50 + 8))(v71, v60);
    *(v61 + 64) = v62;
  }

  return result;
}

uint64_t sub_1C1628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a7;
  v8[30] = a8;
  v8[27] = a5;
  v8[28] = a6;
  v8[26] = a4;
  v9 = sub_2C6338();
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v10 = sub_2C6328();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v11 = sub_2C00B8();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v12 = sub_6620C(&qword_3BD858, &qword_2E8ED0);
  v8[44] = v12;
  v8[45] = *(v12 - 8);
  v8[46] = swift_task_alloc();
  v13 = sub_2C4C08();
  v8[47] = v13;
  v8[48] = *(v13 - 8);
  v8[49] = swift_task_alloc();
  sub_2C5C18();
  v8[50] = sub_2C5C08();
  v15 = sub_2C5BB8();
  v8[51] = v15;
  v8[52] = v14;

  return _swift_task_switch(sub_1C18D0, v15, v14);
}

uint64_t sub_1C18D0()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[27];
  v5 = sub_6620C(&qword_3BD478, &unk_2E4090);
  v0[5] = v5;
  v0[6] = sub_D30CC();
  v6 = sub_720C8(v0 + 2);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  (*(v2 + 104))(v1, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v3);
  v7 = swift_task_alloc();
  v0[53] = v7;
  v8 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  *v7 = v0;
  v7[1] = sub_1C1A2C;
  v9 = v0[49];
  v10 = v0[46];
  v11 = v0[28];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v9, v0 + 2, v10, v11, v8);
}

uint64_t sub_1C1A2C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    (*(v2[45] + 8))(v2[46], v2[44]);
    v3 = v2[51];
    v4 = v2[52];
    v5 = sub_1C22E0;
  }

  else
  {
    v7 = v2[48];
    v6 = v2[49];
    v8 = v2[47];
    (*(v2[45] + 8))(v2[46], v2[44]);
    (*(v7 + 8))(v6, v8);
    sub_68CD0(v2 + 2);
    v3 = v2[51];
    v4 = v2[52];
    v5 = sub_1C1B9C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1C1B9C(__n128 a1)
{
  v31 = v1;
  v2 = *(v1 + 232);
  sub_2C0088();
  sub_691F8(v2, v1 + 96);
  v3 = sub_2C0098();
  v4 = sub_2C5DE8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 344);
  v8 = *(v1 + 304);
  v7 = *(v1 + 312);
  if (v5)
  {
    v29 = *(v1 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    sub_72084((v1 + 96), *(v1 + 120));
    v11 = sub_2C4A88();
    v13 = v12;
    sub_68CD0((v1 + 96));
    v14 = sub_5CCF4(v11, v13, &v30);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "Finished loading next page with intent: %s)", v9, 0xCu);
    sub_68CD0(v10);

    v15 = *(v7 + 8);
    v15(v29, v8);
  }

  else
  {

    v15 = *(v7 + 8);
    v15(v6, v8);
    sub_68CD0((v1 + 96));
  }

  v16 = *(v1 + 432);
  *(v1 + 440) = v15;
  sub_2C5C88();
  if (v16)
  {

    v17 = *(v1 + 8);

    return v17();
  }

  else
  {
    v19 = *(v1 + 288);
    v20 = *(v1 + 272);
    v21 = *(v1 + 280);
    v22 = *(v1 + 240);
    swift_beginAccess();
    *(v22 + 17) = 2;
    sub_2C6308();
    sub_2C6318();
    v23 = *(v21 + 8);
    *(v1 + 448) = v23;
    *(v1 + 456) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v19, v20);
    *(v1 + 192) = 0;
    *(v1 + 184) = 0;
    *(v1 + 200) = 1;
    sub_2C66A8();
    v24 = swift_task_alloc();
    *(v1 + 464) = v24;
    v25 = sub_1C3638(&qword_3C5130, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    *v24 = v1;
    v24[1] = sub_1C1F38;
    v26 = *(v1 + 296);
    v27 = *(v1 + 264);
    v28 = *(v1 + 248);

    return static Task<>.sleep<A>(until:tolerance:clock:)(v26, v1 + 184, v27, v28, v25);
  }
}

uint64_t sub_1C1F38()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = v2[56];
  if (v0)
  {
    v4 = v2[37];
    v5 = v2[34];
    (*(v2[32] + 8))(v2[33], v2[31]);
    v3(v4, v5);
    v6 = v2[51];
    v7 = v2[52];
    v8 = sub_1C2704;
  }

  else
  {
    v9 = v2[37];
    v10 = v2[34];
    (*(v2[32] + 8))(v2[33], v2[31]);
    v3(v9, v10);
    v6 = v2[51];
    v7 = v2[52];
    v8 = sub_1C20B4;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1C20B4()
{

  v1 = v0[59];
  sub_2C5C88();
  if (v1)
  {

    v2 = v0[1];
  }

  else
  {
    sub_2C0088();
    v3 = sub_2C0098();
    v4 = sub_2C5DE8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "PaginationController reset to idle", v5, 2u);
    }

    v6 = v0[55];
    v7 = v0[42];
    v8 = v0[38];
    v9 = v0[30];

    v6(v7, v8);
    *(v9 + 17) = 0;
    *(v9 + 64) = 0;

    swift_beginAccess();
    *(v9 + 16) = 0;

    v2 = v0[1];
  }

  return v2();
}

uint64_t sub_1C22E0()
{
  v30 = v0;
  v1 = *(v0 + 232);
  sub_68CD0((v0 + 16));
  sub_2C0088();
  sub_691F8(v1, v0 + 56);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v8 = 136315394;
    v28 = v5;
    v29 = v27;
    sub_72084((v0 + 56), *(v0 + 80));
    v10 = sub_2C4A88();
    v12 = v11;
    sub_68CD0((v0 + 56));
    v13 = sub_5CCF4(v10, v12, &v29);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_0, v2, v3, "Failed to load next page with intent: %s, error: %@", v8, 0x16u);
    sub_69198(v9, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v27);

    v15 = *(v7 + 8);
    v15(v28, v6);
  }

  else
  {

    v15 = *(v7 + 8);
    v15(v5, v6);
    sub_68CD0((v0 + 56));
  }

  *(v0 + 440) = v15;
  sub_2C5C88();
  v16 = *(v0 + 288);
  v17 = *(v0 + 272);
  v18 = *(v0 + 280);
  v19 = *(v0 + 240);
  swift_beginAccess();
  *(v19 + 17) = 2;
  sub_2C6308();
  sub_2C6318();
  v20 = *(v18 + 8);
  *(v0 + 448) = v20;
  *(v0 + 456) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  *(v0 + 192) = 0;
  *(v0 + 184) = 0;
  *(v0 + 200) = 1;
  sub_2C66A8();
  v21 = swift_task_alloc();
  *(v0 + 464) = v21;
  v22 = sub_1C3638(&qword_3C5130, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v21 = v0;
  v21[1] = sub_1C1F38;
  v23 = *(v0 + 296);
  v24 = *(v0 + 264);
  v25 = *(v0 + 248);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v23, v0 + 184, v24, v25, v22);
}

uint64_t sub_1C2704()
{

  sub_2C0088();
  swift_errorRetain();
  v1 = sub_2C0098();
  v2 = sub_2C5DC8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to wait for 1s of settle-down time: %@", v3, 0xCu);
    sub_69198(v4, &qword_3BFEE0, &unk_2E9520);
  }

  else
  {
  }

  (*(v0 + 440))(*(v0 + 320), *(v0 + 304));
  sub_2C5C88();
  sub_2C0088();
  v6 = sub_2C0098();
  v7 = sub_2C5DE8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "PaginationController reset to idle", v8, 2u);
  }

  v9 = *(v0 + 440);
  v10 = *(v0 + 336);
  v11 = *(v0 + 304);
  v12 = *(v0 + 240);

  v9(v10, v11);
  *(v12 + 17) = 0;
  *(v12 + 64) = 0;

  swift_beginAccess();
  *(v12 + 16) = 0;

  v13 = *(v0 + 8);

  return v13();
}

void sub_1C2A4C(uint64_t a1)
{
  v3 = sub_2C00B8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 18))
  {
    return;
  }

  *(v1 + 18) = 1;
  swift_beginAccess();
  if (*(v1 + 48))
  {
    sub_691F8(v1 + 24, &v25);
  }

  else
  {
    v25 = *(v1 + 24);
    v26 = *(v1 + 40);
    v27 = *(v1 + 56);
  }

  swift_beginAccess();
  if (*(v1 + 48))
  {
    sub_68CD0((v1 + 24));
  }

  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  swift_endAccess();
  if (*(&v26 + 1))
  {
    sub_691F8(&v25, &v21);
    if (*(&v22 + 1))
    {
      v19 = v1;
      sub_68D1C(&v21, v24);
      sub_2C0088();
      sub_691F8(v24, &v21);
      v7 = sub_2C0098();
      v8 = sub_2C5DE8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v18 = a1;
        v10 = v9;
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        sub_72084(&v21, *(&v22 + 1));
        v12 = sub_2C4A88();
        v14 = v13;
        sub_68CD0(&v21);
        v15 = sub_5CCF4(v12, v14, &v20);

        *(v10 + 4) = v15;
        _os_log_impl(&dword_0, v7, v8, "Enabling pagination by re-dispatching the staged intent: %s", v10, 0xCu);
        sub_68CD0(v11);

        a1 = v18;

        (*(v4 + 8))(v6, v3);
      }

      else
      {

        (*(v4 + 8))(v6, v3);
        sub_68CD0(&v21);
      }

      sub_1C0C88(v24, a1);
      sub_68CD0(v24);
      if (*(&v26 + 1))
      {
        v16 = &v25;
        goto LABEL_18;
      }

      return;
    }
  }

  else
  {
    v21 = v25;
    v22 = v26;
    v23 = v27;
  }

  if (*(&v26 + 1))
  {
    sub_68CD0(&v25);
    if (*(&v22 + 1))
    {
      v16 = &v21;
LABEL_18:
      sub_68CD0(v16);
    }
  }
}

uint64_t sub_1C2D94(char a1)
{
  v2 = v1;
  v4 = sub_2C00B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2C0088();
  v8 = sub_2C0098();
  v9 = sub_2C5DE8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Resetting paginationController to initial state and canceling any pagination task.", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  if (*(v2 + 64))
  {

    sub_6620C(&unk_3BF5A0, &qword_2EC790);
    sub_2C5C78();
  }

  *(v2 + 64) = 0;

  swift_beginAccess();
  *(v2 + 17) = 0;
  result = swift_beginAccess();
  *(v2 + 16) = 0;
  if (a1)
  {
    *(v2 + 18) = 0;
  }

  return result;
}

void *PaginationController.deinit()
{
  if (*(v0 + 48))
  {
    sub_68CD0((v0 + 24));
  }

  return v0;
}

uint64_t PaginationController.__deallocating_deinit()
{
  if (*(v0 + 48))
  {
    sub_68CD0((v0 + 24));
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1C2FEC()
{
  v1 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_6620C(&qword_3BD478, &unk_2E4090);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v10 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  sub_68CD0((v0 + v10));

  return _swift_deallocObject(v0, ((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v12 | 7);
}

uint64_t sub_1C3198(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_6620C(&qword_3BD1B0, &qword_2E3F70) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_6620C(&qword_3BD478, &unk_2E4090) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = *(v1 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_7100C;

  return sub_1C1628(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11, v15);
}

unint64_t sub_1C3360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C4FD8;
  if (!qword_3C4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4FD8);
  }

  return result;
}

uint64_t sub_1C33B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C33FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1C3440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1C3488(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 17) = v2;
  return result;
}

uint64_t sub_1C3638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PageAlert.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2C0368();
  v4 = *(*(v2 - 8) + 56);
  (v4)((v2 - 8), a1, 1, 1, v2);
  sub_69198(a1, &qword_3C1E38, &unk_2EC5F0);

  return v4(a1, 1, 1, v2);
}

BOOL sub_1C3738()
{
  v1 = sub_6620C(&qword_3C1E38, &unk_2EC5F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  sub_6932C(v0, &v7 - v2, &qword_3C1E38, &unk_2EC5F0);
  v4 = sub_2C0368();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_69198(v3, &qword_3C1E38, &unk_2EC5F0);
  return v5;
}

void *sub_1C3820()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for PageAlertViewModifier(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1C3980@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageAlertViewModifier(0);
  result = sub_6932C(v1 + *(v7 + 24), v11, &unk_3C24B0, &qword_2F2640);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_2C5DD8();
    v10 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1C3AFC@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3C4360, qword_2ED140);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PageAlertViewModifier(0);
  sub_6932C(v1 + *(v10 + 28), v9, &unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BFF28();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PageAlertViewModifier.init(alert:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PageAlertViewModifier(0);
  v6 = a2 + v5[5];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a2 + v5[6];
  *v7 = swift_getKeyPath();
  *(v7 + 40) = 0;
  v8 = v5[7];
  *(a2 + v8) = swift_getKeyPath();
  sub_6620C(&unk_3C4360, qword_2ED140);
  swift_storeEnumTagMultiPayload();
  return sub_69130(a1, a2, &qword_3C0C70, &qword_2F2510);
}

uint64_t PageAlertViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a1;
  v75 = a2;
  v4 = type metadata accessor for PageAlertViewModifier(0);
  v72 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v73 = v5;
  v74 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C1E38, &unk_2EC5F0);
  v69 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v71 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = v55 - v9;
  v70 = v10;
  __chkstk_darwin(v11);
  v66 = v55 - v12;
  v13 = sub_6620C(&qword_3C0C70, &qword_2F2510);
  __chkstk_darwin(v13);
  v15 = v55 - v14;
  v16 = sub_2C0368();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PageAlert(0);
  __chkstk_darwin(v20 - 8);
  v61 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v55 - v23;
  __chkstk_darwin(v25);
  v27 = v55 - v26;
  v28 = sub_6620C(&qword_3C5138, &qword_2F2518);
  v64 = *(v28 - 8);
  v65 = v28;
  __chkstk_darwin(v28);
  v62 = v55 - v29;
  sub_2C44C8();
  v30 = *(v17 + 48);
  v60 = v17 + 48;
  v59 = v30;
  v31 = v30(v27, 1, v16);
  v63 = v16;
  if (v31)
  {
    sub_1C65F0(v27, type metadata accessor for PageAlert);
  }

  else
  {
    (*(v17 + 16))(v19, v27, v16);
    sub_1C65F0(v27, type metadata accessor for PageAlert);
    v32 = sub_2C02D8();
    v33 = v34;
    (*(v17 + 8))(v19, v16);
    if (v33)
    {
      goto LABEL_5;
    }
  }

  v32 = 0;
  v33 = 0xE000000000000000;
LABEL_5:
  v79 = v32;
  v80 = v33;
  sub_2C44F8();
  swift_getKeyPath();
  sub_2C44E8();

  sub_69198(v15, &qword_3C0C70, &qword_2F2510);
  v55[1] = v76;
  v55[0] = v77;
  v56 = v78;
  v35 = sub_2C44C8();
  v57 = v55;
  __chkstk_darwin(v35);
  sub_6620C(&qword_3C5140, &qword_2F2548);
  v58 = v13;
  v36 = v3;
  sub_6620C(&qword_3C5148, &unk_2F2550);
  sub_6620C(&qword_3BF818, &qword_2E8A08);
  v37 = sub_72B74(&qword_3C5150, &qword_3C5140, &qword_2F2548, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_7212C(v37, v38, v39);
  sub_1C60EC();
  sub_CEDAC();
  v40 = v63;
  v41 = v62;
  sub_2C4068();

  sub_69198(v24, &qword_3C1E38, &unk_2EC5F0);
  v42 = v61;
  sub_2C44C8();
  v43 = v42;
  v44 = v66;
  sub_69130(v43, v66, &qword_3C1E38, &unk_2EC5F0);
  v45 = v59(v44, 1, v40) != 1;
  sub_69198(v44, &qword_3C1E38, &unk_2EC5F0);
  sub_2C44C8();
  v46 = v68;
  sub_69130(v24, v68, &qword_3C1E38, &unk_2EC5F0);
  v47 = v74;
  sub_1C619C(v36, v74);
  v48 = v71;
  sub_69130(v46, v71, &qword_3C1E38, &unk_2EC5F0);
  v49 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v50 = (v73 + *(v69 + 80) + v49) & ~*(v69 + 80);
  v51 = swift_allocObject();
  sub_1C64AC(v47, v51 + v49);
  sub_69130(v48, v51 + v50, &qword_3C1E38, &unk_2EC5F0);
  v52 = v75;
  (*(v64 + 32))(v75, v41, v65);
  result = sub_6620C(&qword_3C5170, &qword_2F2568);
  v54 = v52 + *(result + 36);
  *v54 = v45;
  *(v54 + 8) = sub_1C6510;
  *(v54 + 16) = v51;
  return result;
}

uint64_t sub_1C45C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_6620C(&qword_3C1E38, &unk_2EC5F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_6932C(a1, &v9 - v5, &qword_3C1E38, &unk_2EC5F0);
  v7 = sub_2C0368();
  LOBYTE(a1) = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  result = sub_69198(v6, &qword_3C1E38, &unk_2EC5F0);
  *a2 = a1;
  return result;
}

_BYTE *sub_1C46B8(_BYTE *result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    sub_69198(a2, &qword_3C1E38, &unk_2EC5F0);
    v4 = sub_2C0368();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1C4748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v19 = a3;
  v16 = sub_2C0368();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v16);
  v6 = type metadata accessor for PageAlertViewModifier(0);
  v15 = *(v6 - 8);
  v7 = *(v15 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_6620C(&qword_3C52E0, &qword_2F2608);
  __chkstk_darwin(v18);
  v20 = sub_2C0348();
  sub_6620C(&qword_3C52E8, &qword_2F2610);
  sub_72B74(&qword_3C52F0, &qword_3C52E8, &qword_2F2610, &protocol conformance descriptor for [A]);
  sub_2BFF38();
  swift_getKeyPath();
  sub_1C619C(v17, v8);
  v9 = v16;
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v10 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v11 = (v7 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1C64AC(v8, v12 + v10);
  (*(v4 + 32))(v12 + v11, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C714C;
  *(v13 + 24) = v12;
  sub_6620C(&qword_3C5168, &qword_2F2560);
  sub_72B74(&qword_3C52F8, &qword_3C52E0, &qword_2F2608, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  sub_72B74(&qword_3C5160, &qword_3C5168, &qword_2F2560, &protocol conformance descriptor for Button<A>);
  return sub_2C4558();
}

uint64_t sub_1C4AC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v45 = a2;
  v46 = a3;
  v49 = sub_2C0338();
  v43 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v6;
  v51 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2C0368();
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = v8;
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageAlertViewModifier(0);
  v40 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v42 = v11;
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C24B8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&unk_3C43D0, &qword_2F1180);
  __chkstk_darwin(v17 - 8);
  v19 = v39 - v18;
  v52 = sub_2C0318();
  v53 = v20;
  v47 = a1;
  v21 = sub_2C02F8();
  v50 = a4;
  v39[1] = v19;
  if (v22)
  {
    v23 = v22;
    if (v21 == sub_2C0298() && v23 == v24)
    {
    }

    else
    {
      v25 = sub_2C65B8();

      if ((v25 & 1) == 0)
      {
        sub_2C2488();
        goto LABEL_9;
      }
    }

    sub_2C24A8();
LABEL_9:
    (*(v14 + 32))(v19, v16, v13);
    (*(v14 + 56))(v19, 0, 1, v13);
    goto LABEL_10;
  }

  (*(v14 + 56))(v19, 1, 1, v13);
LABEL_10:
  sub_1C619C(v45, v12);
  v26 = v7;
  v27 = *(v7 + 16);
  v28 = v41;
  v27(v9, v46, v41);
  v29 = v43;
  v30 = v49;
  (*(v43 + 16))(v51, v47, v49);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = (v42 + *(v26 + 80) + v31) & ~*(v26 + 80);
  v33 = (v44 + *(v29 + 80) + v32) & ~*(v29 + 80);
  v34 = swift_allocObject();
  sub_1C64AC(v12, v34 + v31);
  (*(v26 + 32))(v34 + v32, v9, v28);
  v35 = (*(v29 + 32))(v34 + v33, v51, v30);
  sub_7212C(v35, v36, v37);
  return sub_2C43E8();
}

uint64_t sub_1C4F68()
{
  v0 = sub_2BFF28();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = (&v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_2BEBB8();
  v35 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2BE888();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3820();
  v9 = &unk_2E3000;
  if (v8)
  {
    v10 = v8;
    sub_2C02A8();
    sub_6620C(&unk_3C43E0, &unk_2E9610);
    v11 = sub_2BE798();
    v12 = *(v11 - 8);
    v13 = *(v12 + 80);
    v30 = v2;
    v14 = (v13 + 32) & ~v13;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2E3F30;
    (*(v12 + 104))(v15 + v14, enum case for DataEventTrait.onlyOnce(_:), v11);
    sub_1C6EAC(&qword_3C2C38, &type metadata accessor for DialogData, &protocol conformance descriptor for DialogData);
    sub_1C6EAC(&qword_3C52D8, &type metadata accessor for DialogData, &protocol conformance descriptor for DialogData);
    v2 = v30;
    sub_2BEFE8();

    (*(v5 + 8))(v7, v4);
    v9 = &unk_2E3000;
  }

  v16 = v9;
  v17 = sub_1C3820();
  if (v17)
  {
    v18 = v17;
    v19 = v34;
    sub_2C02E8();
    sub_6620C(&unk_3C43E0, &unk_2E9610);
    v20 = sub_2BE798();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v16[243];
    (*(v21 + 104))(v23 + v22, enum case for DataEventTrait.onlyOnce(_:), v20);
    sub_1C6EAC(&qword_3C2C30, &type metadata accessor for DialogActionData, &protocol conformance descriptor for DialogActionData);
    sub_1C6EAC(&qword_3C5308, &type metadata accessor for DialogActionData, &protocol conformance descriptor for DialogActionData);
    sub_2BEFE8();

    (*(v35 + 8))(v19, v2);
  }

  v24 = sub_1C3820();
  if (v24)
  {
    v25 = v24;
    sub_2BEC18();
    sub_1C6EAC(&qword_3C2C40, &type metadata accessor for DialogActionEvent, &protocol conformance descriptor for DialogActionEvent);
    sub_2BF018();
  }

  sub_2C0328();
  if (v37)
  {
    sub_693D0(&v36, v38);
    sub_1C3980(&v36);
    if (v37)
    {
      sub_72084(&v36, v37);
      v26 = v31;
      sub_1C3AFC(v31);
      sub_2BFCD8();
      (*(v32 + 8))(v26, v33);
      sub_68CD0(v38);
      return sub_68CD0(&v36);
    }

    sub_68CD0(v38);
    v28 = &qword_3BC840;
    v29 = &qword_2ED0A0;
  }

  else
  {
    v28 = &unk_3BDC90;
    v29 = &unk_2E5620;
  }

  return sub_69198(&v36, v28, v29);
}

uint64_t sub_1C55A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2C0358();
  if (v3)
  {
    sub_7212C(v2, v3, v4);
    result = sub_2C3A48();
    v8 = v7 & 1;
  }

  else
  {
    result = 0;
    v8 = 0;
    v6 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

id sub_1C5614(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v5 = sub_6620C(&qword_3BCE28, &qword_2E9620);
  __chkstk_darwin(v5 - 8);
  v57 = &v54 - v6;
  v7 = sub_2BEF28();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BE888();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C1E38, &unk_2EC5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_2C0368();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v61 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v18 - 8);
  v20 = &v54 - v19;
  v21 = sub_2C30F8();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v25 = a2 + *(type metadata accessor for PageAlertViewModifier(0) + 20);
    v26 = *v25;
    if (*(v25 + 8) == 1)
    {
      result = v26;
      if (!v26)
      {
        return result;
      }
    }

    else
    {

      sub_2C5DD8();
      v28 = sub_2C3718();
      sub_2C0058();

      sub_2C30E8();
      swift_getAtKeyPath();
      sub_9E94C(v26, 0);
      result = (*(v22 + 8))(v24, v21);
      v26 = v63;
      if (!v63)
      {
        return result;
      }
    }

    sub_2BECD8();
    v29 = sub_2BE588();
    (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
    sub_1C6EAC(&qword_3C52D0, &type metadata accessor for DialogExposureEvent, &protocol conformance descriptor for DialogExposureEvent);
    sub_2BEFF8();

    return sub_69198(v20, &qword_3BC418, &unk_2E9200);
  }

  sub_6932C(v62, v14, &qword_3C1E38, &unk_2EC5F0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_69198(v14, &qword_3C1E38, &unk_2EC5F0);
  }

  v54 = v16;
  v30 = *(v16 + 32);
  v31 = v61;
  v62 = v15;
  v30(v61, v14, v15);
  v32 = sub_1C3820();
  v33 = &unk_2E3000;
  if (v32)
  {
    v34 = v32;
    sub_2C02A8();
    sub_6620C(&unk_3C43E0, &unk_2E9610);
    v35 = sub_2BE798();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2E3F30;
    (*(v36 + 104))(v38 + v37, enum case for DataEventTrait.onlyOnce(_:), v35);
    sub_1C6EAC(&qword_3C2C38, &type metadata accessor for DialogData, &protocol conformance descriptor for DialogData);
    sub_1C6EAC(&qword_3C52D8, &type metadata accessor for DialogData, &protocol conformance descriptor for DialogData);
    v39 = v56;
    sub_2BEFE8();

    (*(v55 + 8))(v11, v39);
    v33 = &unk_2E3000;
  }

  v40 = v33;
  v41 = sub_1C3820();
  if (v41)
  {
    v42 = v41;
    v43 = v57;
    sub_2C02B8();
    v44 = sub_2C0778();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v45 = v58;
    LinkData.init(actionOrigin:)(v43, v58);
    sub_6620C(&unk_3C43E0, &unk_2E9610);
    v46 = sub_2BE798();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v40[243];
    v50 = v49 + v48;
    v31 = v61;
    (*(v47 + 104))(v50, enum case for DataEventTrait.onlyOnce(_:), v46);
    sub_1C6EAC(&qword_3C13A0, &type metadata accessor for LinkData, &protocol conformance descriptor for LinkData);
    sub_1C6EAC(&qword_3C13A8, &type metadata accessor for LinkData, &protocol conformance descriptor for LinkData);
    v51 = v60;
    sub_2BEFE8();

    (*(v59 + 8))(v45, v51);
  }

  v52 = sub_1C3820();
  if (v52)
  {
    v53 = v52;
    sub_2BECD8();
    sub_1C6EAC(&qword_3C52D0, &type metadata accessor for DialogExposureEvent, &protocol conformance descriptor for DialogExposureEvent);
    sub_2BF018();
  }

  return (*(v54 + 8))(v31, v62);
}

uint64_t View.alert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PageAlertViewModifier(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(a1, v6, &qword_3C0C70, &qword_2F2510);
  v7 = &v6[v4[5]];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = &v6[v4[6]];
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  v9 = v4[7];
  *&v6[v9] = swift_getKeyPath();
  sub_6620C(&unk_3C4360, qword_2ED140);
  swift_storeEnumTagMultiPayload();
  sub_2C40E8();
  return sub_1C65F0(v6, type metadata accessor for PageAlertViewModifier);
}

unint64_t sub_1C60EC()
{
  result = qword_3C5158;
  if (!qword_3C5158)
  {
    sub_718D4(&qword_3C5148, &unk_2F2550);
    sub_72B74(&qword_3C5160, &qword_3C5168, &qword_2F2560, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5158);
  }

  return result;
}

uint64_t sub_1C619C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageAlertViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6200()
{
  v1 = type metadata accessor for PageAlertViewModifier(0);
  v18 = *(*(v1 - 1) + 80);
  v2 = (v18 + 16) & ~v18;
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = *(sub_6620C(&qword_3C1E38, &unk_2EC5F0) - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  v6 = v0 + v2;

  v7 = *(sub_6620C(&qword_3C0C70, &qword_2F2510) + 32);
  v8 = sub_2C0368();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v11 = v3 + v5;
  sub_9E94C(*(v6 + v1[5]), *(v6 + v1[5] + 8));
  v12 = v6 + v1[6];
  if (*(v12 + 40))
  {
    if (*(v12 + 24))
    {
      sub_68CD0(v12);
    }
  }

  else
  {
  }

  v13 = v11 & ~v5;
  v14 = v1[7];
  sub_6620C(&unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2BFF28();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
  }

  if (!v10(v0 + v13, 1, v8))
  {
    (*(v9 + 8))(v0 + v13, v8);
  }

  return _swift_deallocObject(v0, v13 + v17, v18 | v5 | 7);
}

uint64_t sub_1C64AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageAlertViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1C6510(_BYTE *a1)
{
  v3 = *(type metadata accessor for PageAlertViewModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_6620C(&qword_3C1E38, &unk_2EC5F0) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1C5614(a1, v1 + v4, v7);
}

uint64_t sub_1C65F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6680(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C1E38, &unk_2EC5F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C670C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C1E38, &unk_2EC5F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1C6788(uint64_t a1)
{
  sub_1C6C04(319, &unk_3C51E0, &type metadata accessor for BooksAlertAction, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C6838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C0C70, &qword_2F2510);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_6620C(&qword_3BC7B8, &unk_2ED100);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3C0C70, &qword_2F2510);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = sub_6620C(&qword_3BC7B8, &unk_2ED100);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1C6AC0(uint64_t a1)
{
  sub_1C6C04(319, &unk_3C5278, type metadata accessor for PageAlert, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_CEAF8(319, &qword_3BDD98, &qword_3BDDA0, &qword_2E5200);
    if (v2 <= 0x3F)
    {
      sub_CEAF8(319, &qword_3BC838, &qword_3BC840, &qword_2ED0A0);
      if (v3 <= 0x3F)
      {
        sub_1C6C04(319, &qword_3BC848, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C6C6C()
{
  result = qword_3C52B0;
  if (!qword_3C52B0)
  {
    sub_718D4(&qword_3C5170, &qword_2F2568);
    sub_718D4(&qword_3C5140, &qword_2F2548);
    sub_718D4(&qword_3C5148, &unk_2F2550);
    sub_718D4(&qword_3BF818, &qword_2E8A08);
    sub_2C0368();
    v3 = sub_72B74(&qword_3C5150, &qword_3C5140, &qword_2F2548, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_7212C(v3, v1, v2);
    sub_1C60EC();
    sub_CEDAC();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C52B8, &qword_3C52C0, &unk_2F25F8, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C52B0);
  }

  return result;
}

uint64_t sub_1C6E10(uint64_t *a1)
{
  type metadata accessor for PageAlertViewModifier(255);
  sub_2C2A08();
  sub_1C6EAC(&qword_3C52C8, type metadata accessor for PageAlertViewModifier, &protocol conformance descriptor for PageAlertViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1C6EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6EF4()
{
  v1 = type metadata accessor for PageAlertViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v4 = sub_2C0368();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = *(sub_6620C(&qword_3C0C70, &qword_2F2510) + 32);
  if (!(*(v5 + 48))(v0 + v3 + v9, 1, v4))
  {
    (*(v5 + 8))(v8 + v9, v4);
  }

  sub_9E94C(*(v8 + v1[5]), *(v8 + v1[5] + 8));
  v10 = v8 + v1[6];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      sub_68CD0(v10);
    }
  }

  else
  {
  }

  v11 = v1[7];
  sub_6620C(&unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2BFF28();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v2 | v6;
  v14 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v14, v4);

  return _swift_deallocObject(v0, v14 + v7, v13 | 7);
}

uint64_t sub_1C714C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PageAlertViewModifier(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2C0368() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1C4AC4(a1, v2 + v6, v9, a2);
}

uint64_t sub_1C7238()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C7270(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_6620C(&qword_3C5300, &qword_2F2638);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1C72D8()
{
  v1 = type metadata accessor for PageAlertViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = sub_2C0368();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  v18 = sub_2C0338();
  v6 = *(v18 - 8);
  v7 = *(v6 + 80);
  v17 = *(v6 + 64);
  v8 = v0 + ((v2 + 16) & ~v2);

  v9 = *(sub_6620C(&qword_3C0C70, &qword_2F2510) + 32);
  if (!(*(v4 + 48))(v8 + v9, 1, v3))
  {
    (*(v4 + 8))(v8 + v9, v3);
  }

  sub_9E94C(*(v8 + v1[5]), *(v8 + v1[5] + 8));
  v10 = v8 + v1[6];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      sub_68CD0(v10);
    }
  }

  else
  {
  }

  v11 = v1[7];
  sub_6620C(&unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2BFF28();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = (((v2 + 16) & ~v2) + v19 + v5) & ~v5;
  v14 = (v13 + v16 + v7) & ~v7;
  (*(v4 + 8))(v0 + v13, v3);
  (*(v6 + 8))(v0 + v14, v18);

  return _swift_deallocObject(v0, v14 + v17, v2 | v5 | v7 | 7);
}

uint64_t sub_1C75C0()
{
  type metadata accessor for PageAlertViewModifier(0);
  sub_2C0368();
  sub_2C0338();

  return sub_1C4F68();
}

uint64_t static FlowActionDestination<>.page(intent:pageMetadata:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C0838();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_691F8(a1, v10);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for Page(0);
  sub_1C77F0();
  return sub_2C04C8();
}

unint64_t sub_1C77F0()
{
  result = qword_3BD4F0;
  if (!qword_3BD4F0)
  {
    type metadata accessor for Page(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4F0);
  }

  return result;
}

uint64_t FlowActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_2C0578();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_6620C(&qword_3BDAB8, &unk_2E8250);

  v13 = sub_2C5738();
  v14 = sub_2C5C58();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2F2650;
  v15[5] = v12;
  v15[6] = v13;

  sub_1CDB58(0, 0, v6, &unk_2E4D80, v15);

  return v13;
}

uint64_t sub_1C7AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_2C5C18();
  v3[3] = sub_2C5C08();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_DD4E8;

  return sub_1C7D1C(a1, a2, a3);
}

uint64_t sub_1C7B74()
{
  v1 = sub_2C0578();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C7C10(uint64_t a1)
{
  v4 = *(sub_2C0578() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_1C7AAC(a1, v1 + v5, v6);
}

uint64_t sub_1C7D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[89] = a3;
  v3[88] = a2;
  v3[87] = a1;
  v4 = sub_2C04A8();
  v3[90] = v4;
  v3[91] = *(v4 - 8);
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v5 = sub_2BF7B8();
  v3[94] = v5;
  v3[95] = *(v5 - 8);
  v3[96] = swift_task_alloc();
  sub_6620C(&qword_3C48E8, &unk_2F1990);
  v3[97] = swift_task_alloc();
  v6 = sub_2C51D8();
  v3[98] = v6;
  v3[99] = *(v6 - 8);
  v3[100] = swift_task_alloc();
  v7 = sub_2C2338();
  v3[101] = v7;
  v3[102] = *(v7 - 8);
  v3[103] = swift_task_alloc();
  sub_6620C(&qword_3C5310, &qword_2F26F8);
  v3[104] = swift_task_alloc();
  v8 = sub_2C0538();
  v3[105] = v8;
  v3[106] = *(v8 - 8);
  v3[107] = swift_task_alloc();
  sub_6620C(&qword_3BCE28, &qword_2E9620);
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  sub_2C5C18();
  v3[110] = sub_2C5C08();
  v10 = sub_2C5BB8();
  v3[111] = v10;
  v3[112] = v9;

  return _swift_task_switch(sub_1C804C, v10, v9);
}

uint64_t sub_1C804C()
{
  v1 = v0[109];
  sub_2C0568();
  v2 = sub_2C0778();
  v0[113] = v2;
  v3 = *(v2 - 8);
  v0[114] = v3;
  v4 = *(v3 + 48);
  v0[115] = v4;
  v0[116] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[109];
  if (v5 == 1)
  {
    sub_69198(v0[109], &qword_3BCE28, &qword_2E9620);
    v7 = 0;
  }

  else
  {
    v7 = ActionOrigin.appAnalyticsMetricsFeedOptions.getter();
    (*(v3 + 8))(v6, v2);
  }

  v0[117] = v7;
  v0[86] = v7;
  v8 = sub_6620C(&qword_3BCE30, qword_2E3D60);
  v9 = swift_task_alloc();
  v0[118] = v9;
  *v9 = v0;
  v9[1] = sub_1C81E0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v8, v8);
}

uint64_t sub_1C81E0()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  v3 = *(v2 + 896);
  v4 = *(v2 + 888);
  if (v0)
  {
    v5 = sub_1CA21C;
  }

  else
  {
    v5 = sub_1C831C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1C831C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_72084((v0 + 16), v1);
  if ((*(v2 + 8))(v1, v2))
  {
    v3 = 1;
  }

  else
  {
    v4 = sub_2C0478();
    v6 = v5;
    if (v4 == sub_2C5318() && v6 == v7)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_2C65B8();
    }
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  sub_72084((v0 + 16), v9);
  if ((*(v10 + 16))(v9, v10))
  {
    goto LABEL_20;
  }

  v11 = sub_2C0478();
  v13 = v12;
  if (sub_2C5318() == v11 && v14 == v13)
  {
    goto LABEL_18;
  }

  v16 = sub_2C65B8();

  if (v16)
  {
LABEL_19:

LABEL_20:
    v18 = 1;
    goto LABEL_21;
  }

  if (sub_2C5338() == v11 && v17 == v13)
  {
    goto LABEL_18;
  }

  v24 = sub_2C65B8();

  if (v24)
  {
    goto LABEL_19;
  }

  if (sub_2C52D8() == v11 && v25 == v13)
  {
    goto LABEL_18;
  }

  v26 = sub_2C65B8();

  if (v26)
  {
    goto LABEL_19;
  }

  if (sub_2C52E8() == v11 && v27 == v13)
  {
LABEL_18:

    goto LABEL_19;
  }

  v28 = sub_2C65B8();

  if (v28)
  {
    goto LABEL_19;
  }

  if (sub_2C5348() == v11 && v29 == v13)
  {
    goto LABEL_33;
  }

  v30 = sub_2C65B8();

  if (v30)
  {
    goto LABEL_35;
  }

  if (sub_2C5328() == v11 && v33 == v13)
  {
LABEL_33:

LABEL_35:

LABEL_36:
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    sub_72084((v0 + 16), v31);
    v18 = (*(v32 + 16))(v31, v32);
    goto LABEL_21;
  }

  v34 = sub_2C65B8();

  if (v34)
  {
    goto LABEL_35;
  }

  if (sub_2C52F8() == v11 && v35 == v13)
  {
    goto LABEL_42;
  }

  v36 = sub_2C65B8();

  if (v36)
  {
    goto LABEL_48;
  }

  if (sub_2C5358() == v11 && v37 == v13)
  {
    goto LABEL_42;
  }

  v38 = sub_2C65B8();

  if (v38)
  {
    goto LABEL_48;
  }

  if (sub_2C5308() == v11 && v39 == v13)
  {
LABEL_42:

LABEL_48:

    v18 = 0;
    goto LABEL_21;
  }

  v40 = sub_2C65B8();

  v18 = 0;
  if ((v40 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  *(v0 + 1032) = v18 & 1;
  v19 = swift_task_alloc();
  *(v0 + 960) = v19;
  *v19 = v0;
  v19[1] = sub_1C874C;
  v20 = *(v0 + 936);
  v21 = *(v0 + 712);
  v22 = *(v0 + 704);

  return sub_1CA6D0(v22, v21, (v0 + 1032), v3 & 1, v20);
}

uint64_t sub_1C874C(uint64_t a1)
{
  v3 = *v2;
  v3[121] = a1;
  v3[122] = v1;

  v4 = v3[112];
  v5 = v3[111];
  if (v1)
  {
    v6 = sub_1CA328;
  }

  else
  {
    v6 = sub_1C886C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1C886C(__n128 a1)
{
  v2 = sub_2C0478();
  v4 = v3;
  if (sub_2C5318() == v2 && v5 == v4)
  {

LABEL_8:

    sub_2C0468();
    sub_6620C(&qword_3C48F8, &unk_2F19B0);
    v8 = swift_dynamicCast();
    v9 = v1[106];
    v10 = v1[105];
    v11 = v1[104];
    if (v8)
    {
      v12 = v1[107];
      v13 = v1[103];
      v14 = v1[102];
      v15 = v1[101];
      (*(v9 + 56))(v1[104], 0, 1, v1[105]);
      (*(v9 + 32))(v12, v11, v10);
      sub_2C0528();
      v16 = sub_2C2328();
      v1[123] = v16;
      (*(v14 + 8))(v13, v15);
      v1[85] = v16;
      v17 = swift_task_alloc();
      v1[124] = v17;
      *v17 = v1;
      v17[1] = sub_1C961C;
      v18 = v1[97];

      return BaseObjectGraph.injectIfAvailable<A>(_:)(v18);
    }

    v19 = v1[121];
    v20 = v1[87];

    (*(v9 + 56))(v11, 1, 1, v10);
    sub_69198(v11, &qword_3C5310, &qword_2F26F8);
    goto LABEL_13;
  }

  v7 = sub_2C65B8();

  if (v7)
  {
    goto LABEL_8;
  }

  if (sub_2C5338() == v2 && v22 == v4)
  {

    goto LABEL_18;
  }

  v23 = sub_2C65B8();

  if (v23)
  {
LABEL_18:

    v24 = v1[121];

    if (v24)
    {
      v25 = v1[121];
      v26 = [objc_allocWithZone(BSUINavigationController) initWithRootViewController:v25];
      [v26 setModalPresentationStyle:2];
      v27 = [v26 sheetPresentationController];
      if (v27)
      {
        v28 = v27;
        sub_2C5F18();
      }

      v20 = v1[87];
      v29 = v1[5];
      v30 = v1[6];
      sub_72084(v1 + 2, v29);
      (*(v30 + 72))(v26, 1, v29, v30);

      goto LABEL_29;
    }

    goto LABEL_44;
  }

  if (sub_2C5348() == v2 && v31 == v4)
  {

    goto LABEL_26;
  }

  v32 = sub_2C65B8();

  if ((v32 & 1) == 0)
  {
    if (sub_2C5328() == v2 && v41 == v4)
    {

LABEL_37:

      v43 = v1[121];

      if (!v43)
      {
        goto LABEL_44;
      }

      v34 = v1[121];
      v44 = v1[96];
      v45 = v1[95];
      v46 = v1[94];
      (*(v45 + 104))(v44, enum case for BooksUIKitFeatureFlag.fluidTransitions(_:), v46);
      v47 = sub_2BF6A8();
      (*(v45 + 8))(v44, v46);
      if ((v47 & 1) == 0)
      {
        goto LABEL_28;
      }

      v48 = sub_2C04E8();
      if (!v49)
      {
        goto LABEL_28;
      }

      v50 = v48;
      v51 = v49;
      v52 = v1[5];
      v53 = v1[6];
      sub_72084(v1 + 2, v52);
      v54 = (*(v53 + 32))(v52, v53);
      if (v54)
      {
        v55 = v54;
        objc_opt_self();
        v56 = swift_dynamicCastObjCClass();
        if (v56)
        {
          v57 = v56;
          v58 = sub_2C5888();
          v59 = [v58 tui_identiferFromString];

          v60 = [v57 descendentViewWithIdentifier:v59];
          swift_unknownObjectRelease();
          if (v60)
          {

            sub_66278(0, &qword_3C5318, UIViewControllerTransition_ptr);
            v61 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v62 = swift_allocObject();
            v62[2] = v61;
            v62[3] = v50;
            v62[4] = v51;

            v63 = sub_2C5EF8();

            [v34 setPreferredTransition:v63];

            goto LABEL_28;
          }

          goto LABEL_67;
        }
      }

      v88 = v1[5];
      v89 = v1[6];
      sub_72084(v1 + 2, v88);
      v90 = (*(v89 + 32))(v88, v89);
      if (!v90)
      {
LABEL_68:

        goto LABEL_28;
      }

      v55 = v90;
      type metadata accessor for PageHostingController(0);
      v91 = swift_dynamicCastClass();
      if (!v91)
      {
LABEL_67:

        goto LABEL_68;
      }

      v92 = v91;
      v1[82] = v50;
      v1[83] = v51;
      v18 = [v91 view];
      if (v18)
      {
        v93 = v18;
        v94 = sub_2C5F68();

        if (v94)
        {

          sub_66278(0, &qword_3C5318, UIViewControllerTransition_ptr);
          v95 = swift_allocObject();
          v95[2] = v92;
          v95[3] = v50;
          v95[4] = v51;
          v96 = v55;
          v97 = sub_2C5EF8();

          [v34 setPreferredTransition:v97];

          goto LABEL_28;
        }

        goto LABEL_67;
      }

LABEL_79:
      __break(1u);
      return BaseObjectGraph.injectIfAvailable<A>(_:)(v18);
    }

    v42 = sub_2C65B8();

    if (v42)
    {
      goto LABEL_37;
    }

    if (sub_2C52E8() == v2 && v64 == v4)
    {
    }

    else
    {
      v65 = sub_2C65B8();

      if ((v65 & 1) == 0)
      {
        v84 = v1[121];
        v20 = v1[87];

        sub_2C5358();

        goto LABEL_13;
      }
    }

    v66 = v1[121];
    if (!v66)
    {
      v20 = v1[87];

      goto LABEL_13;
    }

    sub_2C0468();
    sub_6620C(&qword_3C48F8, &unk_2F19B0);
    if (!swift_dynamicCast())
    {

      if (swift_dynamicCast())
      {
        (*(v1[91] + 32))(v1[92], v1[93], v1[90]);
        v85 = sub_2C0498();
        v86 = sub_1CDA28(v85);

        if (v86)
        {
          type metadata accessor for BSUINavigationControllerOptionsKey(0);
          sub_1CEB40(&qword_3BC478, type metadata accessor for BSUINavigationControllerOptionsKey, &unk_2E33B8);
          v87.super.isa = sub_2C57C8().super.isa;
        }

        else
        {
          v87.super.isa = 0;
        }

        v98 = [objc_allocWithZone(BSUINavigationController) initWithOptions:v87.super.isa];

        sub_6620C(&qword_3BFDD8, qword_2E9490);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_2E9480;
        *(v99 + 32) = v66;
        sub_66278(0, &qword_3BEFB0, UIViewController_ptr);
        v67 = v98;
        v100 = v66;
        isa = sub_2C5B18().super.isa;

        [v67 setViewControllers:isa animated:0];

        v102 = sub_2C0488();
        if ((v104 & 1) == 0)
        {
          [v67 setPreferredContentSize:{*&v102, v103}];
        }

        (*(v1[91] + 8))(v1[92], v1[90]);
      }

      else
      {
        v67 = [objc_allocWithZone(BSUINavigationController) initWithRootViewController:v66];
      }

      goto LABEL_77;
    }

    v67 = [objc_allocWithZone(BSUINavigationController) initWithRootViewController:v66];
    [v67 setModalPresentationStyle:2];
    v68 = v1[5];
    v69 = v1[6];
    sub_72084(v1 + 2, v68);
    v70 = (*(v69 + 32))(v68, v69);
    if (v70)
    {
      v71 = v70;
      v72 = [v70 view];

      if (!v72)
      {
        __break(1u);
        goto LABEL_79;
      }

      v73 = [v72 window];

      if (v73)
      {
        v74 = [v73 safeAreaLayoutGuide];
        [v74 layoutFrame];
        v76 = v75;
        v78 = v77;
        v80 = v79;
        v82 = v81;

        v108.origin.x = v76;
        v108.origin.y = v78;
        v108.size.width = v80;
        v108.size.height = v82;
        Height = CGRectGetHeight(v108);
        if (Height < 1024.0)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {

      v73 = 0;
    }

    Height = 1024.0;
LABEL_72:
    [v67 setPreferredContentSize:Height * 0.0625 * 9.0];

    sub_1CE550((v1 + 12));
LABEL_77:
    v20 = v1[87];
    sub_68CD0(v1 + 7);
    v105 = v1[5];
    v106 = v1[6];
    sub_72084(v1 + 2, v105);
    (*(v106 + 72))(v67, 1, v105, v106);

    goto LABEL_29;
  }

LABEL_26:

  v33 = v1[121];

  if (v33)
  {
    v34 = v1[121];
LABEL_28:
    v20 = v1[87];
    v35 = v1[5];
    v36 = v1[6];
    sub_72084(v1 + 2, v35);
    (*(v36 + 40))(v34, 1, v35, v36);

LABEL_29:
    v21 = &enum case for ActionOutcome.performed(_:);
    goto LABEL_30;
  }

LABEL_44:
  v20 = v1[87];
LABEL_13:
  v21 = &enum case for ActionOutcome.unsupported(_:);
LABEL_30:
  v37 = *v21;
  v38 = sub_2C4C08();
  (*(*(v38 - 8) + 104))(v20, v37, v38);
  sub_68CD0(v1 + 2);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1C961C()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  v3 = *(v2 + 896);
  v4 = *(v2 + 888);
  if (v0)
  {
    v5 = sub_1CA43C;
  }

  else
  {
    v5 = sub_1C9758;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1C9758()
{
  v41 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_69198(v3, &qword_3C48E8, &unk_2F1990);
    goto LABEL_18;
  }

  v4 = *(v0 + 936);
  (*(v1 + 32))(*(v0 + 800), v3, v2);
  if (v4)
  {
    if (*(*(v0 + 984) + 16) && (v5 = sub_5D228(25705, 0xE200000000000000), (v6 & 1) != 0) && (sub_68C64(*(*(v0 + 984) + 56) + 32 * v5, v0 + 256), sub_6620C(&qword_3C4900, &unk_2F19C0), swift_dynamicCast()))
    {
      v7 = *(v0 + 624);
      v8 = *(v0 + 632);
    }

    else
    {
      v8 = 0;
      v7 = 0;
      *(v0 + 624) = 0;
      *(v0 + 632) = 0;
    }

    v9 = *(v0 + 920);
    v10 = *(v0 + 904);
    v11 = *(v0 + 864);
    *(v0 + 640) = v7;
    *(v0 + 648) = v8;

    sub_6620C(&qword_3BDB00, &qword_2E6E10);
    sub_1CEAC4();
    sub_2C61A8();
    sub_2C0568();
    if (v9(v11, 1, v10) == 1)
    {
      sub_69198(*(v0 + 864), &qword_3BCE28, &qword_2E9620);
    }

    else
    {
      v12 = *(v0 + 912);
      v13 = *(v0 + 904);
      v14 = *(v0 + 864);
      v15 = sub_2C06B8();
      v17 = v16;
      (*(v12 + 8))(v14, v13);
      if (v17)
      {
        *(v0 + 608) = v15;
        *(v0 + 616) = v17;
        sub_2C61A8();
        goto LABEL_15;
      }
    }

    *(v0 + 208) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
LABEL_15:
    v18 = sub_285C2C(v0 + 216, v0 + 176);
    sub_69198(v0 + 176, &qword_3BE008, &unk_2E5630);
    sub_68D90(v0 + 216);

    v19 = *(v0 + 800);
    v20 = *(v0 + 792);
    v21 = *(v0 + 784);
    if (v18)
    {
      v22 = sub_6620C(&qword_3BD860, &qword_2EB540);
      *(v0 + 600) = v22;
      *(v0 + 576) = v18;
      sub_693CC((v0 + 576), (v0 + 288));
      v23 = *(v0 + 688);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v23;
      v25 = *(v0 + 312);
      v26 = sub_8C564(v0 + 288, v25);
      v27 = *(v25 - 8);
      v28 = swift_task_alloc();
      (*(v27 + 16))(v28, v26, v25);
      sub_1AC51C(v28, 0xD000000000000013, 0x80000000003061C0, isUniquelyReferenced_nonNull_native, &v40, v22);
      (*(v20 + 8))(v19, v21);
      sub_68CD0((v0 + 288));

      *(v0 + 688) = v40;
    }

    else
    {
      sub_24DAE8(0xD000000000000013, 0x80000000003061C0, (v0 + 320));
      sub_69198(v0 + 320, &qword_3C4908, &unk_2F19D0);
      (*(v20 + 8))(v19, v21);
    }

    goto LABEL_18;
  }

  (*(*(v0 + 792) + 8))(*(v0 + 800), *(v0 + 784));
LABEL_18:
  v29 = *(v0 + 688);
  *(v0 + 1008) = v29;
  if (v29)
  {
    v30 = sub_6620C(&qword_3BC208, &qword_2E2EE0);
    *(v0 + 376) = v30;
    *(v0 + 352) = v29;
    sub_693CC((v0 + 352), (v0 + 544));

    v31 = *(v0 + 680);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v31;
    v33 = *(v0 + 568);
    v34 = sub_8C564(v0 + 544, v33);
    v35 = *(v33 - 8);
    v36 = swift_task_alloc();
    (*(v35 + 16))(v36, v34, v33);
    sub_1AC51C(v36, 0xD000000000000013, 0x8000000000302260, v32, &v40, v30);
    sub_68CD0((v0 + 544));

    *(v0 + 680) = v40;
  }

  else
  {
    sub_24DAE8(0xD000000000000013, 0x8000000000302260, (v0 + 384));
    sub_69198(v0 + 384, &qword_3C4908, &unk_2F19D0);
  }

  v37 = sub_6620C(&qword_3C0248, &unk_2E9B50);
  v38 = swift_task_alloc();
  *(v0 + 1016) = v38;
  *v38 = v0;
  v38[1] = sub_1C9D48;

  return BaseObjectGraph.inject<A>(_:)(v0 + 672, v37, v37);
}

uint64_t sub_1C9D48()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  v3 = *(v2 + 896);
  v4 = *(v2 + 888);
  if (v0)
  {
    v5 = sub_1CA588;
  }

  else
  {
    v5 = sub_1C9E84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1C9E84()
{
  v26 = v0;
  v1 = *(v0 + 968);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v23 = *(v0 + 856);
  v24 = *(v0 + 696);

  v4 = *(v0 + 672);
  *(v0 + 440) = swift_getObjectType();
  *(v0 + 416) = v4;
  sub_693CC((v0 + 416), (v0 + 448));
  v5 = *(v0 + 680);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v5;
  v7 = *(v0 + 472);
  v8 = sub_8C564(v0 + 448, v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  sub_1AC51C(v10, 0xD000000000000013, 0x80000000003061E0, isUniquelyReferenced_nonNull_native, &v25, v7);
  sub_68CD0((v0 + 448));

  v11 = v25;
  *(v0 + 680) = v25;
  *(v0 + 504) = &type metadata for Bool;
  *(v0 + 480) = 1;
  sub_693CC((v0 + 480), (v0 + 512));
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v11;
  v13 = sub_8C564(v0 + 512, *(v0 + 536));
  sub_1CE8E8(*v13, 0x647261436E497369, 0xE800000000000000, v12, &v25);
  sub_68CD0((v0 + 512));
  v14 = v25;
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  sub_72084((v0 + 16), v15);
  sub_6620C(&qword_3BC1F0, &unk_2F2710);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2E3F30;
  *(v17 + 32) = sub_2936E0(v14);
  v18 = sub_6864C(_swiftEmptyArrayStorage);
  (*(v16 + 88))(v17, 0, 1, v18, v15, v16);

  (*(v2 + 8))(v23, v3);
  v19 = enum case for ActionOutcome.performed(_:);
  v20 = sub_2C4C08();
  (*(*(v20 - 8) + 104))(v24, v19, v20);

  sub_68CD0((v0 + 16));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1CA21C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CA328()
{

  sub_68CD0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CA43C()
{
  v1 = v0[121];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];

  (*(v3 + 8))(v2, v4);

  sub_68CD0(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CA588()
{
  v1 = v0[121];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];

  (*(v3 + 8))(v2, v4);

  sub_68CD0(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CA6D0(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5)
{
  *(v5 + 872) = a5;
  *(v5 + 1331) = a4;
  *(v5 + 864) = a2;
  *(v5 + 856) = a1;
  v7 = sub_2C4478();
  *(v5 + 880) = v7;
  *(v5 + 888) = *(v7 - 8);
  *(v5 + 896) = swift_task_alloc();
  v8 = sub_2C1A28();
  *(v5 + 904) = v8;
  *(v5 + 912) = *(v8 - 8);
  *(v5 + 920) = swift_task_alloc();
  v9 = sub_2C04A8();
  *(v5 + 928) = v9;
  *(v5 + 936) = *(v9 - 8);
  *(v5 + 944) = swift_task_alloc();
  *(v5 + 952) = swift_task_alloc();
  *(v5 + 960) = type metadata accessor for RootHostingControllerConfiguration(0);
  *(v5 + 968) = swift_task_alloc();
  *(v5 + 976) = swift_task_alloc();
  *(v5 + 984) = swift_task_alloc();
  *(v5 + 992) = swift_task_alloc();
  *(v5 + 1000) = swift_task_alloc();
  *(v5 + 1008) = sub_6620C(&qword_3BCE28, &qword_2E9620);
  *(v5 + 1016) = swift_task_alloc();
  *(v5 + 1024) = swift_task_alloc();
  *(v5 + 1032) = swift_task_alloc();
  *(v5 + 1040) = swift_task_alloc();
  *(v5 + 1048) = swift_task_alloc();
  *(v5 + 1056) = swift_task_alloc();
  v10 = sub_2C0838();
  *(v5 + 1064) = v10;
  *(v5 + 1072) = *(v10 - 8);
  *(v5 + 1080) = swift_task_alloc();
  v11 = sub_6620C(&qword_3BD490, &unk_2F2730);
  *(v5 + 1088) = v11;
  *(v5 + 1096) = *(v11 - 8);
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1332) = *a3;
  v12 = sub_2BF028();
  *(v5 + 1120) = v12;
  v13 = swift_task_alloc();
  *(v5 + 1128) = v13;
  *v13 = v5;
  v13[1] = sub_1CAA70;

  return BaseObjectGraph.inject<A>(_:)(v5 + 752, v12, v12);
}

uint64_t sub_1CAA70()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1CCF14;
  }

  else
  {
    v2 = sub_1CAB84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CAB84(__n128 a1)
{
  v23 = v1;
  v2 = *(v1 + 752);
  *(v1 + 1144) = v2;
  sub_2C0468();
  sub_6620C(&qword_3C48F8, &unk_2F19B0);
  if (swift_dynamicCast())
  {
    (*(*(v1 + 1096) + 32))(*(v1 + 1104), *(v1 + 1112), *(v1 + 1088));
    v3 = swift_task_alloc();
    *(v1 + 1152) = v3;
    *v3 = v1;
    v3[1] = sub_1CB0E8;
    v4 = &type metadata for FigaroPageConfiguration;
    v5 = v1 + 1330;
LABEL_3:
    v6 = &type metadata for FigaroPageConfiguration;
LABEL_12:

    return BaseObjectGraph.inject<A>(_:)(v5, v4, v6);
  }

  if (swift_dynamicCast())
  {
    v7 = *(v1 + 872);
    (*(*(v1 + 936) + 32))(*(v1 + 944), *(v1 + 952), *(v1 + 928));
    v8 = sub_2C0498();
    *(v1 + 776) = v8;
    if (v7)
    {
      v9 = v8;
      v10 = *(v1 + 872);
      v11 = sub_6620C(&qword_3BC208, &qword_2E2EE0);
      *(v1 + 680) = v11;
      *(v1 + 656) = v10;
      sub_693CC((v1 + 656), (v1 + 464));

      LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
      v22 = v9;
      v12 = *(v1 + 488);
      v13 = sub_8C564(v1 + 464, v12);
      v14 = *(v12 - 8);
      v15 = swift_task_alloc();
      (*(v14 + 16))(v15, v13, v12);
      sub_1AC51C(v15, 0xD000000000000013, 0x8000000000302260, v10, &v22, v11);
      sub_68CD0((v1 + 464));

      *(v1 + 776) = v22;
    }

    else
    {
      sub_24DAE8(0xD000000000000013, 0x8000000000302260, (v1 + 624));
      sub_69198(v1 + 624, &qword_3C4908, &unk_2F19D0);
    }

    v18 = sub_6620C(&qword_3C0248, &unk_2E9B50);
    v19 = swift_task_alloc();
    *(v1 + 1216) = v19;
    *v19 = v1;
    v19[1] = sub_1CB8B0;
    v5 = v1 + 808;
    v4 = v18;
    v6 = v18;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v16 = *(v1 + 200);
    *(v1 + 224) = *(v1 + 184);
    *(v1 + 240) = v16;
    *(v1 + 256) = *(v1 + 216);
    sub_691F8(v1 + 224, v1 + 264);
    sub_6620C(&qword_3C5338, &unk_2F2740);
    if (swift_dynamicCast())
    {
      *(v1 + 1256) = *(v1 + 840);
      v17 = swift_task_alloc();
      *(v1 + 1264) = v17;
      *v17 = v1;
      v17[1] = sub_1CBE68;
      v4 = &type metadata for FigaroPageConfiguration;
      v5 = v1 + 1329;
      goto LABEL_3;
    }

    sub_1CE550(v1 + 224);
  }

  sub_68CD0((v1 + 144));

  v20 = *(v1 + 8);

  return v20(0);
}

uint64_t sub_1CB0E8()
{
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v2 = sub_1CD07C;
  }

  else
  {
    v2 = sub_1CB1FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CB1FC()
{
  if (*(v0 + 1330))
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2C0558() ^ 1;
  }

  *(v0 + 1333) = v1 & 1;
  v2 = swift_task_alloc();
  *(v0 + 1168) = v2;
  *v2 = v0;
  v2[1] = sub_1CB2C8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 832, &type metadata for PageControllerFactory, &type metadata for PageControllerFactory);
}

uint64_t sub_1CB2C8()
{
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2 = sub_1CD218;
  }

  else
  {
    v2 = sub_1CB3DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CB3DC()
{
  v15 = *(v0 + 1332);
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1000);
  v13 = *(v0 + 960);
  v14 = *(v0 + 1064);
  v4 = *(v0 + 832);
  *(v0 + 1184) = v4;
  sub_2C04B8();
  sub_2C07D8();
  sub_2C07E8();
  sub_2C04D8();
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  v7 = sub_72084((v0 + 304), v5);
  *(v0 + 848) = v4;
  sub_2C0568();
  (*(v2 + 16))(&v3[*(v13 + 20)], v1, v14);
  *v3 = v15;
  v8 = swift_task_alloc();
  *(v0 + 1192) = v8;
  *v8 = v0;
  v8[1] = sub_1CB568;
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1056);
  v11 = *(v0 + 1000);

  return PageControllerFactory.create<A>(intent:parentTracker:origin:configuration:)(v7, v9, v10, v11, v5, v6);
}

uint64_t sub_1CB568(uint64_t a1)
{
  v4 = *v2;
  (*v2)[150] = v1;

  if (v1)
  {
    v5 = v4[132];
    sub_E060C(v4[125]);
    sub_69198(v5, &qword_3BCE28, &qword_2E9620);
    v6 = sub_1CD3B4;
  }

  else
  {
    v7 = v4[132];
    v8 = v4[125];
    v4[151] = a1;
    sub_E060C(v8);
    sub_69198(v7, &qword_3BCE28, &qword_2E9620);
    v6 = sub_1CB6D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1CB6D4()
{
  v10 = v0[151];
  v1 = v0[143];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[134];
  v7 = v0[133];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_68CD0(v0 + 38);
  sub_68CD0(v0 + 18);

  v8 = v0[1];

  return v8(v10);
}

uint64_t sub_1CB8B0()
{
  *(*v1 + 1224) = v0;

  if (v0)
  {

    v2 = sub_1CD588;
  }

  else
  {
    v2 = sub_1CB9CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CB9CC()
{
  v16 = v0;
  v1 = *(v0 + 1331);
  v2 = *(v0 + 808);
  *(v0 + 616) = swift_getObjectType();
  *(v0 + 592) = v2;
  sub_693CC((v0 + 592), (v0 + 560));
  v3 = *(v0 + 776);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v3;
  v5 = *(v0 + 584);
  v6 = sub_8C564(v0 + 560, v5);
  v7 = *(v5 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v5);
  sub_1AC51C(v8, 0xD000000000000013, 0x80000000003061E0, isUniquelyReferenced_nonNull_native, &v15, v5);
  sub_68CD0((v0 + 560));

  v9 = v15;
  *(v0 + 776) = v15;
  *(v0 + 552) = &type metadata for Bool;
  *(v0 + 528) = v1;
  sub_693CC((v0 + 528), (v0 + 496));
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v15 = v9;
  v11 = sub_8C564(v0 + 496, *(v0 + 520));
  sub_1CE8E8(*v11, 0x647261436E497369, 0xE800000000000000, v10, &v15);
  sub_68CD0((v0 + 496));
  *(v0 + 1232) = sub_2936E0(v15);

  sub_2C5C18();
  *(v0 + 1240) = sub_2C5C08();
  v13 = sub_2C5BB8();

  return _swift_task_switch(sub_1CBBF0, v13, v12);
}

uint64_t sub_1CBBF0()
{

  v1 = objc_allocWithZone(BSUIFeedViewController);
  isa = sub_2C57C8().super.isa;

  *(v0 + 1248) = [v1 initWithOptions:isa];

  return _swift_task_switch(sub_1CBCC0, 0, 0);
}

uint64_t sub_1CBCC0()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);

  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 1248);
  sub_68CD0((v0 + 144));

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_1CBE68()
{
  *(*v1 + 1272) = v0;

  if (v0)
  {
    v2 = sub_1CD724;
  }

  else
  {
    v2 = sub_1CBF7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CBF7C(uint64_t a1)
{
  if (*(v1 + 1329))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2C0558() ^ 1;
  }

  *(v1 + 1334) = v2 & 1;
  sub_2C0568();
  *(v1 + 1280) = sub_2C5C18();
  *(v1 + 1288) = sub_2C5C08();
  v3 = swift_task_alloc();
  *(v1 + 1296) = v3;
  *v3 = v1;
  v3[1] = sub_1CC058;

  return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
}

uint64_t sub_1CC058(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1304) = a1;
  *(v3 + 1312) = v1;

  v5 = sub_2C5BB8();
  if (v1)
  {
    v6 = sub_1CCD10;
  }

  else
  {
    v6 = sub_1CC1BC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1CC1BC()
{
  v49 = *(v0 + 1256);
  v42 = *(v0 + 1144);
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v52 = *(v0 + 1024);
  v41 = *(v0 + 1016);
  v4 = *(v0 + 992);
  v53 = *(v0 + 984);
  v51 = *(v0 + 976);
  v45 = *(v0 + 968);
  v5 = *(v0 + 920);
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  v46 = *(v0 + 896);
  v47 = *(v0 + 888);
  v48 = *(v0 + 880);

  sub_6932C(v1, v2, &qword_3BCE28, &qword_2E9620);
  (*(v6 + 104))(v5, enum case for NavigationBarTitleStyle.inline(_:), v7);
  sub_2C0808();
  *v4 = 1;
  v50 = v3;
  sub_6932C(v2, v3, &qword_3BCE28, &qword_2E9620);
  sub_78BA4(v4, v53);
  v8 = objc_allocWithZone(type metadata accessor for YearInReviewHostingController(0));
  sub_6932C(v3, v52, &qword_3BCE28, &qword_2E9620);
  sub_78BA4(v53, v51);
  *&v8[qword_3BCB60 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = &v8[qword_3BCC58];
  *v9 = 0;
  v9[8] = 1;
  v8[qword_3BCB80] = 0;
  *&v8[qword_3BCC60] = &_swiftEmptySetSingleton;
  v40 = type metadata accessor for HostProxy(0);
  swift_allocObject();

  v10 = v42;
  v11 = sub_C2644();
  v37 = qword_3BCB68;
  *&v8[qword_3BCB68] = v11;
  sub_2C09A8();
  swift_allocObject();
  v12 = sub_2C0998();
  v36 = qword_3BCC48;
  *&v8[qword_3BCC48] = v12;
  v39 = type metadata accessor for NavigationProvider();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = qword_3BCC50;
  *&v8[qword_3BCC50] = v13;
  sub_2BEED8();
  swift_allocObject();
  v14 = sub_2BEEC8();
  v35 = qword_3BCB90;
  *&v8[qword_3BCB90] = v14;
  sub_78BA4(v51, &v8[qword_3E8830]);
  sub_6620C(&qword_3BC330, &unk_2E3D50);
  sub_2C4968();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2E3BC0;
  sub_6932C(v52, v41, &qword_3BCE28, &qword_2E9620);
  sub_2C4958();
  *(v0 + 824) = v10;
  v44 = v10;
  sub_2C4958();
  sub_2BEC48();
  swift_allocObject();
  *(v0 + 816) = sub_2BEC38();
  sub_2C4958();
  *(v0 + 1328) = sub_2C07D8() & 1;
  sub_2C4958();
  *(v0 + 800) = *&v8[v36];

  sub_2C4958();
  *(v0 + 792) = *&v8[v35];

  sub_2C4958();
  *(v0 + 784) = *&v8[v37];

  sub_2C4958();
  sub_6620C(&unk_3BFED0, &unk_2E7D50);
  sub_2C53F8();
  *(v0 + 736) = sub_2C53E8();
  *(v0 + 744) = &protocol witness table for BasicImpressionsTracker;
  sub_2C4958();
  sub_6620C(&qword_3BCE30, qword_2E3D60);
  v15 = *&v8[v38];
  *(v0 + 368) = v39;
  *(v0 + 376) = &protocol witness table for NavigationProvider;
  *(v0 + 344) = v15;

  sub_2C4958();
  type metadata accessor for PageLifecycleHandler();
  v16 = swift_allocObject();
  type metadata accessor for Page.LifecycleInfo();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyDictionarySingleton;
  *(v16 + 16) = v17;
  *(v0 + 768) = v16;
  sub_2C4958();
  sub_6620C(&qword_3BCE38, &unk_2E7D60);
  v18 = *&v8[v37];
  *(v0 + 408) = v40;
  *(v0 + 416) = sub_1CEB40(&qword_3BCE40, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  *(v0 + 384) = v18;

  sub_2C4958();
  sub_6620C(&qword_3BCE48, &unk_2E3DB0);
  v19 = *&v8[v37];
  *(v0 + 448) = v40;
  *(v0 + 456) = sub_1CEB40(&unk_3BCE50, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  *(v0 + 424) = v19;

  sub_2C4958();
  sub_78BA4(v51, v45);
  sub_2C4958();
  *(v0 + 760) = v43;
  sub_6620C(&unk_3BD220, &qword_2E3FF0);
  sub_8A870();
  v20 = sub_2C4DF8();

  sub_2C4468();
  sub_2C46F8();
  (*(v47 + 8))(v46, v48);
  v21 = sub_2C25E8();
  *(v0 + 80) = v20;
  *(v0 + 112) = &type metadata for YearInReviewRootView;
  v24 = sub_1CEB88(v21, v22, v23);
  *(v0 + 88) = v49;
  *(v0 + 96) = v20;
  *(v0 + 104) = v21;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 120) = v24;
  sub_77E04(v0 + 80, v0 + 16);

  v25 = sub_2C3398();
  *(v0 + 1320) = v25;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_731AC();
  sub_73578();

  sub_E060C(v51);
  sub_69198(v52, &qword_3BCE28, &qword_2E9620);
  sub_77C1C(v0 + 80);
  sub_E060C(v53);
  sub_69198(v50, &qword_3BCE28, &qword_2E9620);
  v26 = [v25 view];
  if (v26)
  {
    v29 = v26;
    v30 = *(v0 + 1048);
    v31 = *(v0 + 1040);
    v32 = *(v0 + 992);
    sub_66278(0, &qword_3C5348, UIColor_ptr);
    sub_2C1408();
    v33 = sub_2C5FD8();
    [v29 setBackgroundColor:v33];

    sub_E060C(v32);
    sub_69198(v31, &qword_3BCE28, &qword_2E9620);
    sub_69198(v30, &qword_3BCE28, &qword_2E9620);
    v26 = sub_1CCB7C;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v26, v27, v28);
}

uint64_t sub_1CCB7C()
{
  v1 = *(v0 + 1144);

  sub_1CE550(v0 + 224);
  v4 = *(v0 + 1320);
  sub_68CD0((v0 + 144));

  v2 = *(v0 + 8);

  return v2(v4);
}

uint64_t sub_1CCD10()
{
  v1 = *(v0 + 1048);

  sub_69198(v1, &qword_3BCE28, &qword_2E9620);

  return _swift_task_switch(sub_1CCD94, 0, 0);
}

uint64_t sub_1CCD94()
{
  sub_1CE550(v0 + 224);
  sub_68CD0((v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CCF14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CD07C()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  (*(v2 + 8))(v1, v3);
  sub_68CD0((v0 + 144));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CD218()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  (*(v2 + 8))(v1, v3);
  sub_68CD0((v0 + 144));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CD3B4()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1064);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  sub_68CD0((v0 + 304));
  sub_68CD0((v0 + 144));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1CD588()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);

  (*(v2 + 8))(v1, v3);
  sub_68CD0((v0 + 144));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CD724()
{
  sub_1CE550(v0 + 224);
  sub_68CD0((v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1CD8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = sub_2C5888();
    v5 = [v4 tui_identiferFromString];

    v6 = [Strong descendentViewWithIdentifier:v5];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = [v6 window];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      if (v7)
      {
        Strong = v6;
      }

      else
      {
        Strong = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return Strong;
}

id sub_1CD990(int a1, id a2, uint64_t a3, uint64_t a4)
{
  result = [a2 view];
  if (result)
  {
    v5 = result;
    v6 = sub_2C5F68();

    v7 = [v6 window];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (!v7)
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1CDA28(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_6620C(&qword_3C5328, &qword_2F2720);
    result = sub_2C63C8();
  }

  else
  {
    result = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  v6 = v5 & v4;
  if ((v5 & v4) != 0)
  {

    v7 = __clz(__rbit64(v6));
LABEL_12:
    v12 = *(a1 + 56);
    v13 = (*(a1 + 48) + 16 * v7);
    v15 = *v13;
    v14 = v13[1];
    sub_68C64(v12 + 32 * v7, &v17);
    v16[0] = v15;
    v16[1] = v14;

    sub_69198(v16, &qword_3C5330, &qword_2F2728);
    return 0;
  }

  else
  {
    v8 = ((v3 + 63) >> 6) - 1;
    v9 = (a1 + 72);
    while (v8)
    {
      v11 = *v9++;
      v10 = v11;
      --v8;
      v6 -= 64;
      if (v11)
      {

        v7 = __clz(__rbit64(v10)) - v6;
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1CDB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_6932C(a3, v23 - v10, &unk_3BDBB0, &qword_2E47D0);
  v12 = sub_2C5C58();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_69198(v11, &unk_3BDBB0, &qword_2E47D0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2C5C48();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2C5BB8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2C5938() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);

    return v21;
  }

LABEL_8:
  sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1CDE54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CDF4C;

  return v6(a1);
}

uint64_t sub_1CDF4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CE044(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_2C4C08();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_1CE1A4;

  return v12(v9);
}

uint64_t sub_1CE1A4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1CE348;
  }

  else
  {
    v2 = sub_1CE2B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CE2B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2C5718();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CE348()
{
  sub_2C5708();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CE3C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1CE460()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1CE498(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_88BE0;

  return sub_1CDE54(a1, v4);
}

uint64_t sub_1CE5A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1CE5F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1CE628()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1CE674(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_2C50A8();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_1CE7D4;

  return v12(v9);
}

uint64_t sub_1CE7D4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1CEBDC;
  }

  else
  {
    v2 = sub_1CEBE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

_OWORD *sub_1CE8E8(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = &type metadata for Bool;
  v9 = *a5;
  v11 = sub_5D228(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_68CD0(v18);
      return sub_693CC(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_64184();
    goto LABEL_7;
  }

  sub_6086C(v14, a4 & 1);
  v20 = sub_5D228(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_8C564(&v23, &type metadata for Bool);
  sub_1CEA40(v11, a2, a3, *v22, v17);

  return sub_68CD0(&v23);
}

_OWORD *sub_1CEA40(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_693CC(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1CEAC4()
{
  result = qword_3C5320;
  if (!qword_3C5320)
  {
    sub_718D4(&qword_3BDB00, &qword_2E6E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5320);
  }

  return result;
}

uint64_t sub_1CEB40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CEB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5340;
  if (!qword_3C5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5340);
  }

  return result;
}

void sub_1CEBE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall BATracker.privateContentData(_:completion:)(JSValue _, JSValue completion)
{
  v3 = [(objc_class *)_.super.isa toString];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2C58C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2].super.isa = v8;
  v9[3].super.isa = completion.super.isa;
  v9[4].super.isa = v5;
  v9[5].super.isa = v7;

  v10 = completion.super.isa;
  sub_2BEFB8();
}

uint64_t sub_1CED64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1CED9C(uint64_t a1, objc_class *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((sub_2C5F78() & 1) == 0)
    {
      if (a4)
      {
        v18._countAndFlagsBits = a3;
        v18._object = a4;
        v9 = sub_2BEFA8(v18);
        if (v10)
        {
          sub_1B6334(v9, v10, 0xD000000000000010, 0x80000000003068C0);
        }

        v19._countAndFlagsBits = a3;
        v19._object = a4;
        v11 = sub_2BEF98(v19);
        if (v12)
        {
          sub_1B6334(v11, v12, 0x55746E65746E6F63, 0xED00004449726573);
        }
      }

      v13 = [objc_opt_self() sharedInstance];
      sub_6620C(&qword_3BC308, &qword_2E2FE0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2E3F30;
      *(v14 + 56) = sub_6620C(&qword_3BD8A8, qword_2EEA20);
      *(v14 + 32) = _swiftEmptyDictionarySingleton;
      v17.is_nil = 111;
      v20._countAndFlagsBits = 0x8000000000306850;
      v15.super.isa = a2;
      v17.value._rawValue = v14;
      v20._object = &stru_20 + 2;
      sub_2C6078(v15, v17, v20, v16);
    }
  }
}

void sub_1CEF50(id a1, SEL a2, id a3, id a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  BATracker.privateContentData(_:completion:)(v6, v7);
}

JSValue __swiftcall BATracker.privateContentData(_:)(JSValue a1)
{
  v3 = [(objc_class *)a1.super.isa context];
  v4 = swift_allocObject();
  v4[2].super.isa = v1;
  v4[3].super.isa = a1.super.isa;
  v10[4] = sub_1CF2A0;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1CEBE8;
  v10[3] = &unk_3912F0;
  v5 = _Block_copy(v10);
  v6 = v1;
  v7 = a1.super.isa;

  v8 = [objc_opt_self() valueWithNewPromiseInContext:v3 fromExecutor:v5];
  _Block_release(v5);

  if (v8)
  {
    return v8;
  }

  __break(1u);
  return result;
}

double sub_1CF0F0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v14 = a1;
    if ([v14 isObject])
    {
      v5 = [a4 toString];
      if (v5)
      {
        v6 = v5;
        v7 = sub_2C58C8();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v14;
      v12[4] = v7;
      v12[5] = v9;
      v13 = v14;

      sub_2BEFB8();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1CF260()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1CF2A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1CF2C0(id a1, SEL a2, id a3)
{
  v4 = a3;
  v5 = a1;
  v6.super.isa = BATracker.privateContentData(_:)(v4).super.isa;

  return v6.super.isa;
}

uint64_t sub_1CF320()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1CF384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2C1A28();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1CF458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2C1A28();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor(uint64_t a1)
{
  result = qword_3C53A8;
  if (!qword_3C53A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF560(uint64_t a1)
{
  result = sub_2C1A28();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HostProxy(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1CF5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*v3)
    {
      v6 = 1;
    }

    else
    {
      v7 = sub_2C1A18();
      v6 = sub_166BF0(v7);
    }

    [v5 bsui_configureHideSmallTitleOnScroll:v6 & 1];
  }
}

uint64_t MenuLikeStateController.init(authStatusProvider:authServiceProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_68D1C(a1, a3);

  return sub_68D1C(a2, a3 + 40);
}

uint64_t sub_1CF6DC()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C53E8);
  sub_57AD8(v0, qword_3C53E8);
  return sub_2C00A8();
}

uint64_t sub_1CF780(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CF81C;

  return AccountController.signIn(enableAccountCreation:)(a1);
}

uint64_t sub_1CF81C(char a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v10 = *(v13 + 8);
  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1 & 1;
    v8 = a2;
    v9 = a3;
  }

  return v10(v11, v8, v9);
}

uint64_t MenuLikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 56) = a4;
  *(v6 + 120) = a1;
  return _swift_task_switch(sub_1CF964, 0, 0);
}

uint64_t sub_1CF964()
{
  v1 = *(v0 + 72);
  v2 = v1[3];
  v3 = v1[4];
  sub_72084(v1, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 120);
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    *(v7 + 25) = 2;
    *(v7 + 32) = v4;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    type metadata accessor for ContentTasteType(0);
    *v8 = v0;
    v8[1] = sub_1CFCF4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD00000000000004CLL, 0x8000000000306AC0, sub_1D25D0, v7, v9);
  }

  else
  {
    v10 = *(v0 + 72);
    v11 = v10[8];
    v12 = v10[9];
    sub_72084(v10 + 5, v11);
    v15 = (*(v12 + 8) + **(v12 + 8));
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = sub_1CFBB4;

    return v15(0, v11, v12);
  }
}

uint64_t sub_1CFBB4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  *(*v4 + 88) = v3;

  if (v3)
  {
    v7 = sub_1D00CC;
  }

  else
  {

    *(v6 + 121) = a1 & 1;
    v7 = sub_1CFE90;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1CFCF4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1CFE2C;
  }

  else
  {

    v2 = sub_1CFE10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CFE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFE90()
{
  if (*(v0 + 121) == 1)
  {
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v3 = *(v0 + 120);
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    *(v4 + 25) = 2;
    *(v4 + 32) = v1;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    type metadata accessor for ContentTasteType(0);
    *v5 = v0;
    v5[1] = sub_1CFCF4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD00000000000004CLL, 0x8000000000306AC0, sub_1D25D0, v4, v6);
  }

  else
  {
    if (qword_3BB908 != -1)
    {
      swift_once();
    }

    v7 = sub_2C00B8();
    sub_57AD8(v7, qword_3C53E8);
    v8 = sub_2C0098();
    v9 = sub_2C5DC8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Unable to submit dislike state because account sign in failed", v10, 2u);
    }

    sub_1D257C(v11, v12, v13);
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1D00CC()
{
  v12 = v0;
  if (qword_3BB908 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C53E8);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_2C66B8();
    v8 = sub_5CCF4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "error trying to authenticate with error : %s", v4, 0xCu);
    sub_68CD0(v5);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t MenuLikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[7] = a3;
  return _swift_task_switch(sub_1D02A4, 0, 0);
}

uint64_t sub_1D02A4()
{
  v1 = v0[9];
  v2 = v1[3];
  v3 = v1[4];
  sub_72084(v1, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = 258;
    *(v6 + 32) = v4;
    v7 = swift_task_alloc();
    v0[13] = v7;
    type metadata accessor for ContentTasteType(0);
    *v7 = v0;
    v7[1] = sub_1D062C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD00000000000004CLL, 0x8000000000306AC0, sub_1D3070, v6, v8);
  }

  else
  {
    v9 = v0[9];
    v10 = v9[8];
    v11 = v9[9];
    sub_72084(v9 + 5, v10);
    v14 = (*(v11 + 8) + **(v11 + 8));
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = sub_1D04EC;

    return v14(0, v10, v11);
  }
}

uint64_t sub_1D04EC(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  *(*v4 + 88) = v3;

  if (v3)
  {
    v7 = sub_1D00CC;
  }

  else
  {

    *(v6 + 120) = a1 & 1;
    v7 = sub_1D0748;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1D062C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1CFE2C;
  }

  else
  {

    v2 = sub_7E77C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1D0748()
{
  if (*(v0 + 120) == 1)
  {
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = 258;
    *(v3 + 32) = v1;
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    type metadata accessor for ContentTasteType(0);
    *v4 = v0;
    v4[1] = sub_1D062C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD00000000000004CLL, 0x8000000000306AC0, sub_1D3070, v3, v5);
  }

  else
  {
    if (qword_3BB908 != -1)
    {
      swift_once();
    }

    v6 = sub_2C00B8();
    sub_57AD8(v6, qword_3C53E8);
    v7 = sub_2C0098();
    v8 = sub_2C5DC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Unable to submit dislike state because account sign in failed", v9, 2u);
    }

    sub_1D257C(v10, v11, v12);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

double sub_1D097C(uint64_t a1, uint64_t a2, char a3, int a4, void *a5)
{
  v25 = a4;
  v9 = sub_6620C(&qword_3C5410, &unk_2F29C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24[-v12];
  v14 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v24[-v15];
  v17 = sub_2C5C58();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_691F8(a2, v26);
  (*(v10 + 16))(v13, a1, v9);
  sub_2C5C18();
  v18 = a5;
  v19 = sub_2C5C08();
  v20 = (*(v10 + 80) + 74) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = &protocol witness table for MainActor;
  sub_68D1C(v26, v22 + 32);
  *(v22 + 72) = a3;
  *(v22 + 73) = v25;
  (*(v10 + 32))(v22 + v20, v13, v9);
  *(v22 + v21) = a5;
  sub_249B98(0, 0, v16, &unk_2F29D8, v22);

  return result;
}

uint64_t sub_1D0BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 296) = a7;
  *(v8 + 304) = a8;
  *(v8 + 282) = a6;
  *(v8 + 281) = a5;
  *(v8 + 288) = a4;
  sub_2C5C18();
  *(v8 + 312) = sub_2C5C08();
  v10 = sub_2C5BB8();
  *(v8 + 320) = v10;
  *(v8 + 328) = v9;

  return _swift_task_switch(sub_1D0C6C, v10, v9);
}

uint64_t sub_1D0C6C()
{
  v1 = v0[36];
  v2 = v1[3];
  v3 = v1[4];
  sub_72084(v1, v2);
  v4 = (*(v3 + 288))(v2, v3);
  v0[42] = v4;
  v0[43] = v5;
  if (v5)
  {
    v6 = objc_opt_self();
    v0[44] = v6;
    v7 = [v6 sharedController];
    v0[45] = v7;
    v8 = sub_2C5888();
    v0[46] = v8;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_1D0E10;
    v9 = swift_continuation_init();
    v0[33] = sub_6620C(&qword_3C5418, &unk_2F29E0);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1D1A24;
    v0[29] = &unk_3914B0;
    v0[30] = v9;
    [v7 fetchTasteTypeForStoreID:v8 completion:v0 + 26];
    v4 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v4);
}

uint64_t sub_1D0E10()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_1D0F18, v2, v1);
}

uint64_t sub_1D0F18()
{
  v1 = v0 + 272;
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 281);
  v5 = *(v0 + 272);
  *(v0 + 376) = v5;

  if (v4 == 2)
  {
    *(v0 + 283) = 1;
    *(v0 + 408) = v5;
    v6 = *(v0 + 282);
    if (v6 == 2)
    {

      if (*(v0 + 283) == 1)
      {
        v7 = *(v0 + 304);
        if (v7 && (v8 = *(v0 + 408), v9 = *(v0 + 344), *(v0 + 376) != v8))
        {
          v23 = *(v0 + 336);
          sub_691F8(*(v0 + 288), v0 + 208);
          v24 = swift_allocObject();
          v24[2] = v23;
          v24[3] = v9;
          sub_68D1C((v0 + 208), (v24 + 4));
          v24[9] = v7;
          v24[10] = v8;
          v25 = v7;
          sub_2BEF88();
        }

        else
        {
        }

        *(v0 + 208) = *(v0 + 408);
        sub_6620C(&qword_3C5410, &unk_2F29C0);
        sub_2C5BD8();
      }

      else
      {

        sub_1D257C(v15, v16, v17);
        v18 = swift_allocError();
        *v19 = 1;
        *(v0 + 208) = v18;
        sub_6620C(&qword_3C5410, &unk_2F29C0);
        sub_2C5BC8();
      }

      goto LABEL_27;
    }

    v11 = [*(v0 + 352) sharedController];
    *(v0 + 416) = v11;
    v12 = sub_2C5888();
    *(v0 + 424) = v12;
    *(v0 + 80) = v0;
    *(v0 + 120) = v1;
    *(v0 + 88) = sub_1D1778;
    v13 = swift_continuation_init();
    *(v0 + 264) = sub_6620C(&qword_3BE890, &qword_2E6F90);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_B2618;
    *(v0 + 232) = &unk_391500;
    *(v0 + 240) = v13;
    [v11 setExplicitlyDeclined:v6 & 1 forStoreID:v12 completion:v0 + 208];
    v14 = v0 + 80;
  }

  else
  {
    if (v5 == 2)
    {
      v10 = *(v0 + 281) & 1;
    }

    else if (v5 == 1)
    {
      if (*(v0 + 281))
      {
        v10 = 0;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      if (v5)
      {

LABEL_27:
        v26 = *(v0 + 8);

        return v26();
      }

      if (*(v0 + 281))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    *(v0 + 384) = v10;
    v20 = [*(v0 + 352) sharedController];
    *(v0 + 392) = v20;
    v21 = sub_2C5888();
    *(v0 + 400) = v21;
    *(v0 + 144) = v0;
    *(v0 + 184) = v1;
    *(v0 + 152) = sub_1D1378;
    v22 = swift_continuation_init();
    *(v0 + 264) = sub_6620C(&qword_3BE890, &qword_2E6F90);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_B2618;
    *(v0 + 232) = &unk_391528;
    *(v0 + 240) = v22;
    [v20 setTasteType:v10 forStoreID:v21 completion:v0 + 208];
    v14 = v0 + 144;
  }

  return _swift_continuation_await(v14);
}

uint64_t sub_1D1378()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_1D1480, v2, v1);
}

uint64_t sub_1D1480()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 272);

  v3 = *(v0 + 384);
  *(v0 + 283) = v2;
  *(v0 + 408) = v3;
  v4 = *(v0 + 282);
  if (v4 == 2)
  {

    if (*(v0 + 283) == 1)
    {
      v5 = *(v0 + 304);
      if (v5 && (v6 = *(v0 + 408), v7 = *(v0 + 344), *(v0 + 376) != v6))
      {
        v16 = *(v0 + 336);
        sub_691F8(*(v0 + 288), v0 + 208);
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = v7;
        sub_68D1C((v0 + 208), (v17 + 4));
        v17[9] = v5;
        v17[10] = v6;
        v18 = v5;
        sub_2BEF88();
      }

      else
      {
      }

      *(v0 + 208) = *(v0 + 408);
      sub_6620C(&qword_3C5410, &unk_2F29C0);
      sub_2C5BD8();
    }

    else
    {

      sub_1D257C(v11, v12, v13);
      v14 = swift_allocError();
      *v15 = 1;
      *(v0 + 208) = v14;
      sub_6620C(&qword_3C5410, &unk_2F29C0);
      sub_2C5BC8();
    }

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v8 = [*(v0 + 352) sharedController];
    *(v0 + 416) = v8;
    v9 = sub_2C5888();
    *(v0 + 424) = v9;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 272;
    *(v0 + 88) = sub_1D1778;
    v10 = swift_continuation_init();
    *(v0 + 264) = sub_6620C(&qword_3BE890, &qword_2E6F90);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_B2618;
    *(v0 + 232) = &unk_391500;
    *(v0 + 240) = v10;
    [v8 setExplicitlyDeclined:v4 & 1 forStoreID:v9 completion:v0 + 208];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_1D1778()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_1D1880, v2, v1);
}

uint64_t sub_1D1880()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  if (*(v0 + 283) == 1)
  {
    v3 = *(v0 + 304);
    if (v3 && (v4 = *(v0 + 408), v5 = *(v0 + 344), *(v0 + 376) != v4))
    {
      v11 = *(v0 + 336);
      sub_691F8(*(v0 + 288), v0 + 208);
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v5;
      sub_68D1C((v0 + 208), (v12 + 4));
      v12[9] = v3;
      v12[10] = v4;
      v13 = v3;
      sub_2BEF88();
    }

    else
    {
    }

    *(v0 + 208) = *(v0 + 408);
    sub_6620C(&qword_3C5410, &unk_2F29C0);
    sub_2C5BD8();
  }

  else
  {

    sub_1D257C(v6, v7, v8);
    v9 = swift_allocError();
    *v10 = 1;
    *(v0 + 208) = v9;
    sub_6620C(&qword_3C5410, &unk_2F29C0);
    sub_2C5BC8();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1A24(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *sub_72084((a1 + 32), *(a1 + 56));
  v6 = *(*(v5 + 64) + 40);
  *v6 = a2;
  *(v6 + 8) = a3;

  return _swift_continuation_resume(v5);
}

uint64_t sub_1D1A88(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5, uint64_t a6)
{
  v89 = a6;
  v90 = a1;
  v85 = a5;
  v80 = a3;
  v92 = a2;
  v7 = sub_6620C(&qword_3C5420, &qword_2F29F0);
  __chkstk_darwin(v7 - 8);
  v83 = &v74[-v8];
  v9 = sub_6620C(&qword_3C5428, &qword_2F29F8);
  __chkstk_darwin(v9 - 8);
  v81 = &v74[-v10];
  v11 = sub_6620C(&qword_3C5430, &qword_2F2A00);
  __chkstk_darwin(v11 - 8);
  v91 = &v74[-v12];
  v13 = sub_6620C(&qword_3C5438, &qword_2F2A08);
  __chkstk_darwin(v13 - 8);
  v15 = &v74[-v14];
  v16 = sub_6620C(&qword_3C5440, &unk_2F2A10);
  __chkstk_darwin(v16 - 8);
  v18 = &v74[-v17];
  v19 = sub_2BE988();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_2BE968();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v74[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_2BF558();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v74[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v25 + 104))(v28, enum case for BooksFeatureFlag.unifiedProductPage(_:), v24, v26);
  sub_1D3020(&qword_3BD678, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
  sub_1D2FBC();
  v75 = sub_2C5A78();
  (*(v25 + 8))(v28, v24);
  v29 = a4[3];
  v30 = a4[4];
  sub_72084(a4, v29);
  v31 = (*(v30 + 16))(v29, v30);
  v32 = *(v20 + 104);
  v33 = &enum case for ContentType.audiobook(_:);
  if (v31 != 3)
  {
    v33 = &enum case for ContentType.book(_:);
  }

  v34 = *v33;
  v82 = v22;
  v32(v22, v34, v19);
  v35 = v92;
  v94._countAndFlagsBits = v92;
  v36 = v80;
  v94._object = v80;
  v37 = sub_2BEFA8(v94);
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v78 = v40;
  v79 = v39;
  v95._countAndFlagsBits = v35;
  v95._object = v36;
  v41 = sub_2BEF98(v95);
  if (v42)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  v77 = v43;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  v76 = v44;
  v45 = enum case for ContentAcquisitionType.storeBought(_:);
  v46 = sub_2BED78();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v18, v45, v46);
  v48 = *(v47 + 56);
  v84 = v18;
  v48(v18, 0, 1, v46);
  v49 = sub_2BEB18();
  v50 = *(*(v49 - 8) + 56);
  v85 = v15;
  v50(v15, 1, 1, v49);
  v51 = a4[3];
  v52 = a4[4];
  sub_72084(a4, v51);
  (*(v52 + 304))(v51, v52);
  sub_2C6098();
  sub_2BEAD8();
  v53 = sub_2BEAC8();
  sub_2BEAB8();

  v54 = enum case for ProductionType.unknown(_:);
  v55 = sub_2BEB38();
  v56 = *(v55 - 8);
  v57 = v81;
  (*(v56 + 104))(v81, v54, v55);
  (*(v56 + 56))(v57, 0, 1, v55);
  v58 = sub_2BF0E8();
  (*(*(v58 - 8) + 56))();
  if (v75)
  {
    v59 = a4[3];
    v60 = a4[4];
    sub_72084(a4, v59);
    (*(v60 + 296))(v59, v60);
    v61 = a4[3];
    v62 = a4[4];
    sub_72084(a4, v61);
    (*(v62 + 56))(v61, v62);
  }

  LOBYTE(v93[0]) = 1;
  v63 = v87;
  sub_2BE938();
  sub_6620C(&unk_3C43E0, &unk_2E9610);
  v64 = sub_2BE798();
  v65 = *(v64 - 8);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_2E3F30;
  (*(v65 + 104))(v67 + v66, enum case for DataEventTrait.onlyOnce(_:), v64);
  sub_1D3020(&qword_3BF460, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
  v68 = v88;
  sub_2BE768();

  v69 = (v86 + 8);
  if (v89 == 1)
  {
    sub_2BF0D8();
    v70 = &unk_3C5450;
    v71 = &type metadata accessor for LoveEvent;
    v72 = &protocol conformance descriptor for LoveEvent;
  }

  else
  {
    sub_2BEA48();
    v70 = &unk_3C5448;
    v71 = &type metadata accessor for DislikeEvent;
    v72 = &protocol conformance descriptor for DislikeEvent;
  }

  sub_1D3020(v70, v71, v72);
  memset(v93, 0, 32);
  sub_2BE778();
  sub_7A844(v93);
  return (*v69)(v63, v68);
}

uint64_t sub_1D242C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_B5FE4;

  return MenuLikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)(a1, v10, v11, a4, a5);
}

uint64_t sub_1D24D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_7100C;

  return MenuLikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(v7, v8, a3, a4);
}

unint64_t sub_1D257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5400;
  if (!qword_3C5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5400);
  }

  return result;
}

uint64_t dispatch thunk of LikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D273C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1D273C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of LikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_7100C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AuthenticationServiceProvider.signIn(enableAccountCreation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D2ABC;

  return v9(a1, a2, a3);
}

uint64_t sub_1D2ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

__n128 sub_1D2BD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D2BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D2C34(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1D2CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5408;
  if (!qword_3C5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5408);
  }

  return result;
}

uint64_t sub_1D2D00()
{
  v1 = sub_6620C(&qword_3C5410, &unk_2F29C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 74) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_68CD0((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D2DEC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_6620C(&qword_3C5410, &unk_2F29C0) - 8);
  v6 = (*(v5 + 80) + 74) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v1 + 73);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_7100C;

  return sub_1D0BC8(a1, v7, v8, v1 + 32, v11, v10, v1 + v6, v9);
}

uint64_t sub_1D2F64()
{

  sub_68CD0((v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_1D2FBC()
{
  result = qword_3BD680;
  if (!qword_3BD680)
  {
    sub_718D4(&qword_3BD688, &unk_2E4CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD680);
  }

  return result;
}

uint64_t sub_1D3020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1D3080()
{
  v0 = UIFontDescriptorSystemDesignSerif;
  v1 = UIFontTextStyleTitle2;
  *&v4 = UIFontDescriptorSystemDesignSerif;
  *(&v4 + 1) = UIFontWeightBold;
  LOBYTE(v5) = 0;
  *(&v5 + 1) = UIFontTextStyleTitle2;
  *&v6 = 0;
  BYTE8(v6) = 1;
  LOWORD(v7) = 0;
  LOBYTE(v8) = 1;
  v2 = TextAttributesBuilder.build()();
  v9[2] = v6;
  v9[3] = 0uLL;
  v9[4] = v7;
  v9[5] = v8;
  v9[0] = v4;
  v9[1] = v5;
  sub_FED60(v9);
  return v2;
}

void *sub_1D3154()
{
  *&v2 = 0;
  *(&v2 + 1) = UIFontWeightBold;
  LOBYTE(v3) = 0;
  *&v4 = 0;
  BYTE8(v4) = 1;
  LOWORD(v5) = 0;
  LOBYTE(v6) = 1;
  *(&v6 + 1) = sub_1D3080();
  v0 = TextAttributesBuilder.build()();
  v7[2] = v4;
  v7[3] = 0uLL;
  v7[4] = v5;
  v7[5] = v6;
  v7[0] = v2;
  v7[1] = v3;
  sub_FED60(v7);
  return v0;
}

void *sub_1D3204(double a1)
{
  v2 = UIFontDescriptorSystemDesignDefault;
  v3 = UIFontTextStyleSubheadline;
  *&v6 = UIFontDescriptorSystemDesignDefault;
  *(&v6 + 1) = a1;
  LOBYTE(v7) = 0;
  *(&v7 + 1) = UIFontTextStyleSubheadline;
  *&v8 = 0;
  BYTE8(v8) = 1;
  LOWORD(v9) = 0;
  LOBYTE(v10) = 1;
  v4 = TextAttributesBuilder.build()();
  v11[2] = v8;
  v11[3] = 0uLL;
  v11[4] = v9;
  v11[5] = v10;
  v11[0] = v6;
  v11[1] = v7;
  sub_FED60(v11);
  return v4;
}

void *_s11BookStoreUI21ToolKitTextAttributesV13toolbarHeader4withSDySo21NSAttributedStringKeyaypGSo17UITraitCollectionC_tFZ_0(void *a1)
{
  LOBYTE(v14[0]) = 1;
  LOBYTE(v8) = 1;
  v2 = UIFontDescriptorSystemDesignSerif;
  v15 = 0;
  v3 = UIFontTextStyleTitle0;
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    v4 = UIContentSizeCategoryAccessibilityMedium;
    v5 = UIContentSizeCategoryAccessibilityMedium;
  }

  else
  {
    v4 = 0;
  }

  *&v9 = v2;
  *(&v9 + 1) = UIFontWeightBold;
  LOBYTE(v10) = 0;
  *(&v10 + 1) = v3;
  *&v11 = 0;
  BYTE8(v11) = 1;
  LOWORD(v12) = 0;
  LOBYTE(v13) = 1;
  v6 = TextAttributesBuilder.build()();
  v14[2] = v11;
  v14[3] = v4;
  v14[4] = v12;
  v14[5] = v13;
  v14[0] = v9;
  v14[1] = v10;
  sub_FED60(v14);
  return v6;
}

void sub_1D33EC(uint64_t *a1)
{
  v2 = *(type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_111AB8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D7024(v5);
  *a1 = v3;
}

void *sub_1D3494(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C5650, &qword_2F2BE8);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v20 = &v19 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = *(sub_2BF168() - 8);
  v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  v14 = _swiftEmptyArrayStorage;
  v19 = v13;
  do
  {
    sub_1D3778(v12, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_69198(v4, &qword_3C5650, &qword_2F2BE8);
    }

    else
    {
      v15 = v20;
      sub_1D98F4(v4, v20, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      sub_1D98F4(v15, v21, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_5C4A0(0, v14[2] + 1, 1, v14);
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_5C4A0((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      sub_1D98F4(v21, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v13 = v19;
    }

    v12 += v13;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_1D3778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = sub_2BF168();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2BF138();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_2BE588();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2BF158();
  sub_1D3CAC(v17, v18, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_69198(v12, &qword_3BC418, &unk_2E9200);
    if (qword_3BB848 != -1)
    {
      swift_once();
    }

    v19 = sub_2C00B8();
    sub_57AD8(v19, qword_3C3170);
    v21 = v41;
    v20 = v42;
    v22 = v43;
    (*(v42 + 16))(v41, a1, v43);
    v23 = sub_2C0098();
    v24 = sub_2C5DC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136315138;
      v27 = sub_2BF158();
      v28 = v21;
      v30 = v29;
      (*(v20 + 8))(v28, v22);
      v31 = sub_5CCF4(v27, v30, &v45);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_0, v23, v24, "Error creating dayEntry. Unable to make date from string '%s'", v25, 0xCu);
      sub_68CD0(v26);
    }

    else
    {

      (*(v20 + 8))(v21, v22);
    }

    v38 = v44;
    v39 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
    return (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  }

  else
  {
    v43 = *(v14 + 32);
    v43(v16, v12, v13);
    sub_2BF148();
    v42 = sub_2BF118();
    v32 = *(v7 + 8);
    v32(v9, v6);
    sub_2BF148();
    v41 = sub_2BF128();
    v32(v9, v6);
    sub_2BF148();
    v33 = sub_2BF108();
    v32(v9, v6);
    v34 = v44;
    v43(v44, v16, v13);
    v35 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
    v36 = v41;
    *(v34 + v35[5]) = v42;
    *(v34 + v35[6]) = v36;
    *(v34 + v35[7]) = v33 & 1;
    return (*(*(v35 - 1) + 56))(v34, 0, 1, v35);
  }
}

uint64_t sub_1D3CAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_3BB910 != -1)
  {
    swift_once();
  }

  v6 = qword_3C5458;
  v7 = sub_2C5888();
  v8 = [v6 dateFromString:v7];

  if (v8)
  {
    sub_2BE538();

    v9 = 0;
  }

  else
  {
    if (qword_3BB848 != -1)
    {
      swift_once();
    }

    v10 = sub_2C00B8();
    sub_57AD8(v10, qword_3C3170);

    v11 = sub_2C0098();
    v12 = sub_2C5DC8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_5CCF4(a1, a2, &v18);
      _os_log_impl(&dword_0, v11, v12, "Error creating date from string: %s", v13, 0xCu);
      sub_68CD0(v14);
    }

    v9 = 1;
  }

  v15 = sub_2BE588();
  v16 = *(*(v15 - 8) + 56);

  return v16(a3, v9, 1, v15);
}

void sub_1D3ED8(uint64_t a1)
{
  v1 = sub_6620C(&qword_3C5628, &unk_2F2BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v27 = &v25 - v8;

  v10 = sub_1D9428(v9);

  v11 = v10 + 8;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10[8];
  v15 = (v12 + 63) >> 6;
  v28 = v5;
  v16 = (v5 + 48);
  v17 = v10;

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v29 = v4;
  for (i = v17; v14; v17 = i)
  {
LABEL_10:
    while (1)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v31[0] = *(v17[7] + ((v18 << 9) | (8 * v21)));
      sub_1D484C(v31, v3);
      if ((*v16)(v3, 1, v4) != 1)
      {
        break;
      }

      sub_69198(v3, &qword_3C5628, &unk_2F2BC0);
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v22 = v27;
    sub_1D98F4(v3, v27, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    sub_1D98F4(v22, v30, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_5C4C8(0, v19[2] + 1, 1, v19);
    }

    v24 = v19[2];
    v23 = v19[3];
    if (v24 >= v23 >> 1)
    {
      v19 = sub_5C4C8((v23 > 1), v24 + 1, 1, v19);
    }

    v19[2] = v24 + 1;
    sub_1D98F4(v30, v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v4 = v29;
  }

LABEL_6:
  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      v31[0] = v19;

      sub_1D33EC(v31);

      return;
    }

    v14 = v11[v20];
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1D4244@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v50 = sub_2BE588();
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v47 = sub_2BE698();
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BE298();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE608();
  sub_6620C(&qword_3C5630, &qword_2F2BD8);
  v11 = sub_2BE678();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2E15C0;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, enum case for Calendar.Component.year(_:), v11);
  v18 = v16 + v13;
  v19 = v46;
  v17(v18, enum case for Calendar.Component.month(_:), v11);
  sub_1D9108(v15);
  swift_setDeallocating();
  v20 = v10;
  v21 = v50;
  v22 = v51;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2BE618();

  v23 = *(v5 + 8);
  v24 = v47;
  v23(v7, v47);
  sub_2BE608();
  sub_2BE638();
  v23(v7, v24);
  if ((*(v19 + 48))(v4, 1, v21) == 1)
  {
    v25 = v48;
    v26 = v49;
    sub_69198(v4, &qword_3BC418, &unk_2E9200);
    if (qword_3BB848 != -1)
    {
      swift_once();
    }

    v27 = sub_2C00B8();
    sub_57AD8(v27, qword_3C3170);
    v28 = v45;
    (*(v19 + 16))(v45, v22, v21);
    v29 = sub_2C0098();
    v30 = sub_2C5DC8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v20;
      v33 = v32;
      v53 = v32;
      *v31 = 136315138;
      sub_1D995C(&qword_3C5620, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v34 = sub_2C6568();
      v35 = v28;
      v36 = v34;
      v38 = v37;
      (*(v19 + 8))(v35, v21);
      v39 = sub_5CCF4(v36, v38, &v53);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_0, v29, v30, "Error getting first day of month for date: %s", v31, 0xCu);
      sub_68CD0(v33);

      (*(v25 + 8))(v51, v26);
    }

    else
    {

      (*(v19 + 8))(v28, v21);
      (*(v25 + 8))(v20, v26);
    }

    v41 = 1;
    v42 = v52;
  }

  else
  {
    (*(v48 + 8))(v20, v49);
    v40 = v52;
    (*(v19 + 32))(v52, v4, v21);
    v41 = 0;
    v42 = v40;
  }

  return (*(v19 + 56))(v42, v41, 1, v21);
}

uint64_t sub_1D484C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2BE588();
  v9 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = sub_2BE228();
  v18 = __chkstk_darwin(v14);
  v19 = *a1;
  v20 = *(v19 + 16);
  if (v20)
  {
    v43 = v17;
    v44 = v15;
    v45 = a2;
    v47 = v5;
    v48 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    a2 = *(v6 + 72);
    v46 = v21 + a2 * (v20 - 1);
    v22 = *(v9 + 16);
    v23 = v50;
    v22(v13, v21, v50, v18);
    (v22)(v49, v46, v23);
    v24 = v48;
    sub_2BE1F8();
    v25 = 0;
    v26 = *(v47 + 20);
    while (1)
    {
      sub_1D982C(v21, v8, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v27 = *&v8[v26];
      sub_1D9894(v8, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v28 = __OFADD__(v25, v27);
      v25 += v27;
      if (v28)
      {
        break;
      }

      v21 += a2;
      if (!--v20)
      {
        v29 = v45;
        *v45 = v25;
        v30 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
        (*(v43 + 32))(&v29[*(v30 + 20)], v24, v44);
        return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_3BB848 != -1)
  {
LABEL_11:
    swift_once();
  }

  v32 = sub_2C00B8();
  sub_57AD8(v32, qword_3C3170);

  v33 = sub_2C0098();
  v34 = sub_2C5DC8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v51 = v36;
    *v35 = 136315138;
    v37 = sub_2C5B38();
    v39 = a2;
    v40 = sub_5CCF4(v37, v38, &v51);

    *(v35 + 4) = v40;
    a2 = v39;
    _os_log_impl(&dword_0, v33, v34, "Error getting first or last entry from entries: %s", v35, 0xCu);
    sub_68CD0(v36);
  }

  v41 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  return (*(*(v41 - 8) + 56))(a2, 1, 1, v41);
}

BOOL sub_1D4CF0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v27 = a1;
  v30 = sub_2BE588();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2BE678();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2BE698();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE608();
  v26 = enum case for Calendar.Component.month(_:);
  v25 = *(v6 + 104);
  v25(v8);
  v24 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  sub_2BE208();
  v27 = sub_2BE688();
  v12 = *(v2 + 8);
  v22 = v2 + 8;
  v23 = v12;
  v12(v4, v30);
  v13 = *(v6 + 8);
  v20 = v5;
  v21 = v6 + 8;
  v14 = v5;
  v13(v8, v5);
  v15 = *(v9 + 8);
  v16 = v28;
  v15(v11, v28);
  sub_2BE608();
  (v25)(v8, v26, v14);
  sub_2BE208();
  v17 = sub_2BE688();
  v23(v4, v30);
  v13(v8, v20);
  v15(v11, v16);
  return v27 < v17;
}

uint64_t sub_1D5008()
{
  sub_2C61F8(53);
  v5._countAndFlagsBits = 0x203A65746164;
  v5._object = 0xE600000000000000;
  sub_2C5978(v5);
  sub_2BE588();
  sub_1D995C(&qword_3C5620, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v6._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v6);

  v7._object = 0x8000000000306BD0;
  v7._countAndFlagsBits = 0xD000000000000010;
  sub_2C5978(v7);
  v1 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v8._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v8);

  v9._countAndFlagsBits = 0x3A6C616F67202D20;
  v9._object = 0xE900000000000020;
  sub_2C5978(v9);
  v10._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v10);

  v11._countAndFlagsBits = 0x6165727453736920;
  v11._object = 0xEE00203A7961446BLL;
  sub_2C5978(v11);
  if (*(v0 + *(v1 + 28)))
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_2C5978(v2);

  return 0;
}

uint64_t sub_1D5208()
{
  v22 = sub_2BE588();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2BE678();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2BE698();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_2C61F8(49);

  v25 = 0x203A72616579;
  v26 = 0xE600000000000000;
  sub_2BE608();
  v20 = *(v4 + 104);
  v20(v6, enum case for Calendar.Component.year(_:), v3);
  v23 = *(type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0) + 20);
  sub_2BE208();
  v10 = sub_2BE688();
  v11 = *(v0 + 8);
  v17[2] = v0 + 8;
  v18 = v11;
  v11(v2, v22);
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v7 + 8);
  v17[1] = v7 + 8;
  v13(v9, v21);
  v24 = v10;
  v27._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v27);

  v28._countAndFlagsBits = 0x203A68746E6F6D20;
  v28._object = 0xE800000000000000;
  sub_2C5978(v28);
  sub_2BE608();
  v20(v6, enum case for Calendar.Component.month(_:), v3);
  v14 = v19;
  sub_2BE208();
  v15 = sub_2BE688();
  v18(v2, v22);
  v12(v6, v3);
  v13(v9, v21);
  v24 = v15;
  v29._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v29);

  v30._object = 0x8000000000306BB0;
  v30._countAndFlagsBits = 0xD000000000000013;
  sub_2C5978(v30);
  v24 = *v14;
  v31._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v31);

  v32._countAndFlagsBits = 0x203A65676E617220;
  v32._object = 0xE800000000000000;
  sub_2C5978(v32);
  sub_2BE228();
  sub_1D995C(&qword_3C5618, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  v33._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v33);

  return v25;
}

uint64_t ReadingInsightsDataProvider.MonthTotal.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2BE588();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingInsightsDataProvider.MonthTotal.description.getter()
{
  v0 = sub_2BE478();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2BE4B8();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2BE498();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BE4D8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_2C61F8(18);

  v36 = 0x203A65746164;
  v37 = 0xE600000000000000;
  sub_2BE198();
  sub_2BE488();
  sub_2BE448();
  (*(v5 + 8))(v7, v28);
  v21 = *(v9 + 8);
  v21(v11, v8);
  sub_2BE4A8();
  sub_2BE458();
  (*(v29 + 8))(v4, v30);
  v21(v14, v8);
  v22 = v31;
  sub_2BE468();
  sub_2BE438();
  (*(v32 + 8))(v22, v33);
  v21(v17, v8);
  sub_1D995C(&qword_3BE900, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  v23 = v34;
  sub_2BE568();
  v21(v20, v8);
  sub_2C5978(v35);

  v38._countAndFlagsBits = 0x203A65756C617620;
  v38._object = 0xE800000000000000;
  sub_2C5978(v38);
  sub_6620C(&qword_3BE868, &unk_2F0B20);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2E3F30;
  v25 = *(v23 + *(type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0) + 20));
  *(v24 + 56) = &type metadata for Double;
  *(v24 + 64) = &protocol witness table for Double;
  *(v24 + 32) = v25;
  v39._countAndFlagsBits = sub_2C58E8();
  sub_2C5978(v39);

  return v36;
}

BOOL static ReadingInsightsDataProvider.MonthTotal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2BE528() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1D5CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2BE588();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2BE588();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DB8(uint64_t a1)
{
  result = sub_2BE588();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2BE228();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D5ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2BE228();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D5F68(uint64_t a1)
{
  result = sub_2BE228();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2BE588();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D60D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2BE588();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D61B0(uint64_t a1)
{
  result = sub_2BE588();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6230@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_2BE228();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v69 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v68 - v7;
  v8 = sub_2BE588();
  v83 = *(v8 - 8);
  __chkstk_darwin(v8);
  v88 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v68 - v11;
  __chkstk_darwin(v12);
  v71 = &v68 - v13;
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  v17 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v82 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6620C(&qword_3BE6D8, &qword_2F2BF0);
  __chkstk_darwin(v20 - 8);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v86 = &v68 - v23;
  __chkstk_darwin(v24);
  v85 = &v68 - v25;
  __chkstk_darwin(v26);
  v84 = &v68 - v27;
  __chkstk_darwin(v28);
  v30 = &v68 - v29;
  v32 = __chkstk_darwin(v31);
  v34 = &v68 - v33;
  v35 = *v2;
  v91 = v4;
  v37 = v4 + 56;
  v36 = *(v4 + 7);
  v36(&v68 - v33, 1, 1, v3, v32);
  v90 = v30;
  v38 = v30;
  v39 = v34;
  v93 = v36;
  v94 = v37;
  (v36)(v38, 1, 1, v3);
  v40 = *(v35 + 16);
  if (v40)
  {
    v41 = v35 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v92 = (v91 + 48);
    v42 = *(v82 + 72);
    v79 = (v83 + 16);
    v70 = (v83 + 32);
    v74 = (v91 + 32);
    v73 = (v91 + 8);
    v78 = (v83 + 8);
    v82 = v17;
    v83 = v3;
    v75 = v8;
    v80 = v42;
    v81 = v39;
    v89 = v19;
    v72 = v16;
    do
    {
      sub_1D982C(v41, v19, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      if (v19[*(v17 + 28)] == 1)
      {
        v91 = *v92;
        v43 = (v91)(v39, 1, v3);
        v44 = v79;
        if (v43)
        {
          v45 = *v79;
          v19 = v89;
          (*v79)(v16, v89, v8);
        }

        else
        {
          v46 = v71;
          sub_2BE208();
          (*v70)(v16, v46, v8);
          v45 = *v44;
          v19 = v89;
        }

        v45(v87, v16, v8);
        v47 = v16;
        v48 = v8;
        v45(v88, v19, v8);
        v49 = v84;
        sub_2BE1F8();
        v3 = v83;
        (v93)(v49, 0, 1, v83);
        sub_1D99A4(v49, v39);
        v50 = v85;
        sub_1D9A14(v39, v85);
        v51 = v86;
        sub_1D9A14(v90, v86);
        v52 = v91;
        if ((v91)(v51, 1, v3) == 1)
        {
          sub_69198(v50, &qword_3BE6D8, &qword_2F2BF0);
          (*v78)(v47, v48);
          sub_1D9894(v19, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
          sub_69198(v51, &qword_3BE6D8, &qword_2F2BF0);
          v8 = v48;
          v16 = v47;
          v39 = v81;
          v17 = v82;
          v42 = v80;
        }

        else
        {
          v54 = v51;
          v55 = *v74;
          v56 = v50;
          v57 = v77;
          (*v74)(v77, v54, v3);
          v58 = v76;
          sub_1D9A14(v56, v76);
          if (v52(v58, 1, v3) == 1)
          {
            (*v73)(v57, v3);
            sub_69198(v56, &qword_3BE6D8, &qword_2F2BF0);
            v59 = v58;
            v16 = v72;
            v8 = v75;
            (*v78)(v72, v75);
            v19 = v89;
            sub_1D9894(v89, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
            sub_69198(v59, &qword_3BE6D8, &qword_2F2BF0);
            v39 = v81;
            v17 = v82;
            v42 = v80;
            goto LABEL_4;
          }

          v60 = v57;
          v61 = v69;
          v55(v69, v58, v3);
          sub_2BE218();
          v63 = v62;
          sub_2BE218();
          v65 = v64;
          v66 = *v73;
          (*v73)(v61, v3);
          v66(v60, v3);
          sub_69198(v56, &qword_3BE6D8, &qword_2F2BF0);
          v16 = v72;
          v8 = v75;
          (*v78)(v72, v75);
          v19 = v89;
          sub_1D9894(v89, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
          v39 = v81;
          v17 = v82;
          v42 = v80;
          if (v65 > v63)
          {
            goto LABEL_4;
          }
        }

        v53 = v90;
        sub_69198(v90, &qword_3BE6D8, &qword_2F2BF0);
        sub_1D9A14(v39, v53);
      }

      else
      {
        sub_1D9894(v19, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
        sub_69198(v39, &qword_3BE6D8, &qword_2F2BF0);
        (v93)(v39, 1, 1, v3);
      }

LABEL_4:
      v41 += v42;
      --v40;
    }

    while (v40);
  }

  sub_69130(v90, v68, &qword_3BE6D8, &qword_2F2BF0);
  return sub_69198(v39, &qword_3BE6D8, &qword_2F2BF0);
}

void sub_1D6B0C()
{
  v1 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = *v0;
  v9 = *(*v0 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    v18 = v4;
    v19 = v1;
    while (v10 < *(v8 + 16))
    {
      v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v13 = *(v2 + 72);
      sub_1D982C(v8 + v12 + v13 * v10, v7, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      if (v7[*(v1 + 28)] == 1)
      {
        sub_1D98F4(v7, v4, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_6471C(0, v11[2] + 1, 1);
          v11 = v20;
        }

        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          sub_6471C((v15 > 1), v16 + 1, 1);
          v11 = v20;
        }

        v11[2] = v16 + 1;
        v4 = v18;
        sub_1D98F4(v18, v11 + v12 + v16 * v13, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
        v1 = v19;
      }

      else
      {
        sub_1D9894(v7, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void *sub_1D6D4C()
{
  v18 = type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0);
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 8);
  v9 = *(v8 + 16);
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = *(v5 + 72);
  v12 = _swiftEmptyArrayStorage;
  do
  {
    sub_1D982C(v10, v7, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v13 = *v7;
    sub_2BE208();
    sub_1D9894(v7, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    *&v3[*(v18 + 20)] = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_5BE1C(0, v12[2] + 1, 1, v12);
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_5BE1C((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    sub_1D98F4(v3, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v15, type metadata accessor for ReadingInsightsDataProvider.MonthTotal);
    v10 += v11;
    --v9;
  }

  while (v9);
  return v12;
}

void sub_1D6FB0()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = sub_2C5888();
  [v0 setDateFormat:v1];

  qword_3C5458 = v0;
}

void sub_1D7024(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2C6548(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
        v6 = sub_2C5B68();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1D7728(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D7150(0, v2, 1, a1);
  }
}

void sub_1D7150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = a1;
  v68 = sub_2BE588();
  v7 = *(v68 - 8);
  __chkstk_darwin(v68);
  v53 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_2BE678();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_2BE698();
  v11 = *(v67 - 8);
  __chkstk_darwin(v67);
  v50 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  __chkstk_darwin(v13);
  v45 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v66 = &v36[-v16];
  __chkstk_darwin(v17);
  v65 = &v36[-v19];
  v38 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v63 = enum case for Calendar.Component.month(_:);
    v48 = (v7 + 8);
    v49 = (v9 + 104);
    v47 = (v9 + 8);
    v46 = (v11 + 8);
    v22 = v20 + v21 * (a3 - 1);
    v43 = -v21;
    v23 = v62 - a3;
    v44 = v20;
    v37 = v21;
    v24 = v20 + v21 * a3;
    v64 = v13;
    v25 = v50;
LABEL_5:
    v42 = a3;
    v39 = v24;
    v40 = v23;
    v54 = v23;
    v41 = v22;
    while (1)
    {
      v61 = v22;
      v62 = v24;
      v60 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
      sub_1D982C(v24, v65, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      sub_1D982C(v22, v66, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      sub_2BE608();
      v58 = *v49;
      v27 = v51;
      v26 = v52;
      v58(v51, v63, v52);
      v28 = v53;
      sub_2BE208();
      v59 = sub_2BE688();
      v57 = *v48;
      v57(v28, v68);
      v56 = *v47;
      v56(v27, v26);
      v55 = *v46;
      v55(v25, v67);
      sub_2BE608();
      v58(v27, v63, v26);
      v29 = v66;
      sub_2BE208();
      v30 = sub_2BE688();
      v57(v28, v68);
      v56(v27, v26);
      v31 = v62;
      v55(v25, v67);
      v32 = v60;
      v33 = v61;
      sub_1D9894(v29, v60);
      sub_1D9894(v65, v32);
      if (v59 >= v30)
      {
LABEL_4:
        a3 = v42 + 1;
        v22 = v41 + v37;
        v23 = v40 - 1;
        v24 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v34 = v45;
      sub_1D98F4(v31, v45, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D98F4(v34, v33, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      v22 = v33 + v43;
      v24 = v31 + v43;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D7728(uint64_t (**a1)(uint64_t a1), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v168 = sub_2BE588();
  v8 = *(v168 - 8);
  __chkstk_darwin(v168);
  v153 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2BE678();
  v10 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_2BE698();
  v12 = *(v167 - 8);
  __chkstk_darwin(v167);
  v150 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  v14 = *(v154 - 8);
  __chkstk_darwin(v154);
  v127 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v145 = &v126 - v17;
  __chkstk_darwin(v18);
  v166 = &v126 - v19;
  __chkstk_darwin(v20);
  v165 = &v126 - v21;
  __chkstk_darwin(v22);
  v129 = &v126 - v23;
  __chkstk_darwin(v24);
  v128 = &v126 - v25;
  v26 = a3[1];
  v137 = a3;
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_97:
    v8 = *v133;
    if (!*v133)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_99;
  }

  v27 = 0;
  v164 = enum case for Calendar.Component.month(_:);
  v148 = (v8 + 8);
  v149 = (v10 + 104);
  v147 = (v10 + 8);
  v146 = (v12 + 8);
  v28 = _swiftEmptyArrayStorage;
  v141 = v14;
  v132 = a4;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    v134 = v27;
    if (v27 + 1 >= v26)
    {
      v40 = v27 + 1;
      v56 = v133;
    }

    else
    {
      v142 = v26;
      v31 = v27;
      v32 = *a3;
      v33 = *(v14 + 9);
      v34 = *a3 + v33 * v30;
      v35 = v128;
      sub_1D982C(v34, v128, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      v36 = v129;
      sub_1D982C(v32 + v33 * v31, v129, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      LODWORD(v143) = sub_1D4CF0(v35, v36);
      if (v5)
      {
        sub_1D9894(v36, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        sub_1D9894(v35, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        goto LABEL_110;
      }

      v130 = v28;
      v131 = 0;
      v8 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
      sub_1D9894(v36, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      sub_1D9894(v35, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      v37 = (v31 + 2);
      v38 = (v32 + v33 * (v31 + 2));
      v39 = v33;
      v144 = v33;
      while (1)
      {
        v40 = v142;
        if (v142 == v37)
        {
          break;
        }

        v160 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
        v161 = v37;
        v163 = v38;
        sub_1D982C(v38, v165, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        sub_1D982C(v34, v166, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        v162 = v34;
        v41 = v150;
        sub_2BE608();
        v158 = *v149;
        v43 = v151;
        v42 = v152;
        (v158)(v151, v164, v152);
        v28 = v153;
        sub_2BE208();
        v159 = sub_2BE688();
        v157 = *v148;
        (v157)(v28, v168);
        v156 = *v147;
        v156(v43, v42);
        v155 = *v146;
        (v155)(v41, v167);
        sub_2BE608();
        (v158)(v43, v164, v42);
        v44 = v166;
        sub_2BE208();
        v45 = sub_2BE688();
        (v157)(v28, v168);
        v156(v43, v42);
        v46 = v41;
        v47 = v162;
        (v155)(v46, v167);
        v48 = v44;
        v8 = v160;
        sub_1D9894(v48, v160);
        sub_1D9894(v165, v8);
        v39 = v144;
        v37 = v161 + 1;
        v38 = (v144 + v163);
        v34 = v144 + v47;
        if (((v143 ^ (v159 >= v45)) & 1) == 0)
        {
          v40 = v161;
          break;
        }
      }

      a4 = v132;
      v5 = v131;
      v14 = v141;
      a3 = v137;
      v29 = v134;
      if ((v143 & 1) == 0)
      {
        goto LABEL_24;
      }

      v49 = v127;
      if (v40 < v134)
      {
        goto LABEL_131;
      }

      if (v134 < v40)
      {
        v50 = v39 * (v40 - 1);
        v51 = v40 * v39;
        v142 = v40;
        v52 = v40;
        v53 = v134;
        v54 = v134 * v39;
        v28 = v130;
        do
        {
          if (v53 != --v52)
          {
            v55 = *v137;
            if (!*v137)
            {
              goto LABEL_135;
            }

            v8 = v55 + v54;
            sub_1D98F4(v55 + v54, v49, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
            if (v54 < v50 || v8 >= v55 + v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != v50)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D98F4(v49, v55 + v50, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
            v39 = v144;
          }

          ++v53;
          v50 -= v39;
          v51 -= v39;
          v54 += v39;
        }

        while (v53 < v52);
        v5 = v131;
        v14 = v141;
        v56 = v133;
        a4 = v132;
        a3 = v137;
        v29 = v134;
        v40 = v142;
      }

      else
      {
LABEL_24:
        v56 = v133;
        v28 = v130;
      }
    }

    v57 = a3[1];
    if (v40 < v57)
    {
      if (__OFSUB__(v40, v29))
      {
        goto LABEL_128;
      }

      if (v40 - v29 < a4)
      {
        if (__OFADD__(v29, a4))
        {
          goto LABEL_129;
        }

        if (v29 + a4 >= v57)
        {
          v58 = a3[1];
        }

        else
        {
          v58 = v29 + a4;
        }

        if (v58 < v29)
        {
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          v28 = sub_111978(v28);
LABEL_99:
          v169 = v28;
          v121 = *(v28 + 16);
          if (v121 >= 2)
          {
            do
            {
              v122 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v123 = *(v28 + 16 * v121);
              a3 = v28;
              v124 = *(v28 + 16 * (v121 - 1) + 32);
              v28 = *(v28 + 16 * (v121 - 1) + 40);
              sub_1D86A8((v122 + *(v14 + 9) * v123), (v122 + *(v14 + 9) * v124), (v122 + *(v14 + 9) * v28), v8);
              if (v5)
              {
                break;
              }

              if (v28 < v123)
              {
                goto LABEL_125;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a3 = sub_111978(a3);
              }

              if (v121 - 2 >= a3[2])
              {
                goto LABEL_126;
              }

              v125 = &a3[2 * v121];
              *v125 = v123;
              v125[1] = v28;
              v169 = a3;
              sub_1118EC(v121 - 1);
              v28 = v169;
              v121 = *(v169 + 16);
              a3 = v137;
            }

            while (v121 > 1);
          }

LABEL_110:

          return;
        }

        if (v40 != v58)
        {
          break;
        }
      }
    }

    v27 = v40;
    if (v40 < v29)
    {
      goto LABEL_127;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_5BFE4(0, *(v28 + 16) + 1, 1, v28);
    }

    v8 = *(v28 + 16);
    v59 = *(v28 + 24);
    v60 = v8 + 1;
    if (v8 >= v59 >> 1)
    {
      v28 = sub_5BFE4((v59 > 1), v8 + 1, 1, v28);
    }

    *(v28 + 16) = v60;
    v61 = v28 + 16 * v8;
    *(v61 + 32) = v134;
    *(v61 + 40) = v27;
    if (!*v56)
    {
      goto LABEL_137;
    }

    if (v8)
    {
      v14 = *v56;
      while (1)
      {
        v62 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v63 = *(v28 + 32);
          v64 = *(v28 + 40);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_56:
          if (v66)
          {
            goto LABEL_116;
          }

          v79 = (v28 + 16 * v60);
          v81 = *v79;
          v80 = v79[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_119;
          }

          v85 = (v28 + 32 + 16 * v62);
          v87 = *v85;
          v86 = v85[1];
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_123;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v60 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v89 = (v28 + 16 * v60);
        v91 = *v89;
        v90 = v89[1];
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_70:
        if (v84)
        {
          goto LABEL_118;
        }

        v92 = v28 + 16 * v62;
        v94 = *(v92 + 32);
        v93 = *(v92 + 40);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_121;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_77:
        v8 = v62 - 1;
        if (v62 - 1 >= v60)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_130;
        }

        v100 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v101 = a3;
        v102 = *(v28 + 32 + 16 * v8);
        a3 = *(v28 + 32 + 16 * v62 + 8);
        sub_1D86A8((v100 + *(v141 + 9) * v102), (v100 + *(v141 + 9) * *(v28 + 32 + 16 * v62)), (v100 + *(v141 + 9) * a3), v14);
        if (v5)
        {
          goto LABEL_110;
        }

        if (a3 < v102)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_111978(v28);
        }

        if (v8 >= *(v28 + 16))
        {
          goto LABEL_113;
        }

        v103 = v28 + 16 * v8;
        *(v103 + 32) = v102;
        *(v103 + 40) = a3;
        v169 = v28;
        sub_1118EC(v62);
        v28 = v169;
        v60 = *(v169 + 16);
        a3 = v101;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = v28 + 32 + 16 * v60;
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_114;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_115;
      }

      v74 = (v28 + 16 * v60);
      v76 = *v74;
      v75 = v74[1];
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_117;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_120;
      }

      if (v78 >= v70)
      {
        v96 = (v28 + 32 + 16 * v62);
        v98 = *v96;
        v97 = v96[1];
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_124;
        }

        if (v65 < v99)
        {
          v62 = v60 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v26 = a3[1];
    a4 = v132;
    v14 = v141;
    if (v27 >= v26)
    {
      goto LABEL_97;
    }
  }

  v130 = v28;
  v131 = v5;
  v104 = *a3;
  v105 = *(v14 + 9);
  v106 = *a3 + v105 * (v40 - 1);
  v143 = -v105;
  v107 = (v29 - v40);
  v144 = v104;
  v135 = v105;
  v8 = v104 + v40 * v105;
  v136 = v58;
LABEL_88:
  v142 = v40;
  v138 = v8;
  v139 = v107;
  v108 = v107;
  v140 = v106;
  while (1)
  {
    v156 = v8;
    v157 = v108;
    v163 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
    sub_1D982C(v8, v165, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v155 = v106;
    sub_1D982C(v106, v166, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v109 = v150;
    sub_2BE608();
    v161 = *v149;
    v110 = v151;
    v111 = v152;
    (v161)(v151, v164, v152);
    v112 = v153;
    sub_2BE208();
    v162 = sub_2BE688();
    v14 = v148;
    v160 = *v148;
    (v160)(v112, v168);
    v159 = *v147;
    v159(v110, v111);
    v158 = *v146;
    (v158)(v109, v167);
    sub_2BE608();
    (v161)(v110, v164, v111);
    v113 = v166;
    sub_2BE208();
    v114 = sub_2BE688();
    (v160)(v112, v168);
    v159(v110, v111);
    (v158)(v109, v167);
    v115 = v163;
    sub_1D9894(v113, v163);
    sub_1D9894(v165, v115);
    if (v162 >= v114)
    {
LABEL_87:
      v40 = v142 + 1;
      v106 = v140 + v135;
      v107 = (v139 - 1);
      v8 = v138 + v135;
      v27 = v136;
      if (v142 + 1 != v136)
      {
        goto LABEL_88;
      }

      v5 = v131;
      a3 = v137;
      v56 = v133;
      v28 = v130;
      if (v136 < v134)
      {
        goto LABEL_127;
      }

      goto LABEL_36;
    }

    v116 = v157;
    if (!v144)
    {
      break;
    }

    v117 = v156;
    v118 = v145;
    sub_1D98F4(v156, v145, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v119 = v155;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D98F4(v118, v119, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v106 = v119 + v143;
    v8 = v117 + v143;
    v120 = __CFADD__(v116, 1);
    v108 = (v116 + 1);
    if (v120)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

void sub_1D86A8(uint64_t (*a1)(uint64_t a1), uint64_t (*a2)(uint64_t a1), uint64_t (*a3)(uint64_t a1), char *a4)
{
  v82 = sub_2BE588();
  v8 = *(v82 - 8);
  __chkstk_darwin(v82);
  v67 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2BE678();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2BE698();
  v12 = *(v81 - 8);
  __chkstk_darwin(v81);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  __chkstk_darwin(v83);
  v80 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v52 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_63;
  }

  v20 = (a2 - a1) / v18;
  v86 = a1;
  v85 = a4;
  if (v20 >= v19 / v18)
  {
    v78 = v8;
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      v23 = v12;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v23 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v37 = &a4[v22];
    if (v22 >= 1)
    {
      v38 = -v18;
      v58 = (v10 + 104);
      v74 = enum case for Calendar.Component.month(_:);
      v57 = (v78 + 8);
      v56 = (v10 + 8);
      v55 = (v23 + 8);
      v39 = v37;
      v76 = a4;
      v77 = a1;
      v59 = -v18;
      v40 = v56;
      while (2)
      {
        while (1)
        {
          v53 = v37;
          v41 = a2;
          v42 = (a2 + v38);
          v78 = v42;
          v60 = v41;
          while (1)
          {
            if (v41 <= a1)
            {
              v86 = v41;
              v84 = v53;
              goto LABEL_60;
            }

            v54 = v37;
            v75 = (a3 + v38);
            v72 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
            v61 = &v39[v38];
            v73 = a3;
            sub_1D982C(&v39[v38], v79, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
            sub_1D982C(v42, v80, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
            v43 = v64;
            sub_2BE608();
            v69 = *v58;
            v44 = v65;
            v45 = v66;
            (v69)(v65, v74, v66);
            v71 = v39;
            v46 = v67;
            sub_2BE208();
            v70 = sub_2BE688();
            v68 = *v57;
            v68(v46, v82);
            v63 = *v40;
            (v63)(v44, v45);
            v62 = *v55;
            v62(v43, v81);
            sub_2BE608();
            (v69)(v44, v74, v45);
            v47 = v80;
            sub_2BE208();
            v48 = sub_2BE688();
            v68(v46, v82);
            (v63)(v44, v45);
            v62(v43, v81);
            v49 = v72;
            sub_1D9894(v47, v72);
            sub_1D9894(v79, v49);
            if (v70 < v48)
            {
              break;
            }

            v50 = v61;
            v37 = v61;
            a3 = v75;
            if (v73 < v71 || v75 >= v71)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v77;
              v42 = v78;
              v38 = v59;
            }

            else
            {
              a1 = v77;
              v42 = v78;
              v38 = v59;
              if (v73 != v71)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v37;
            v41 = v60;
            if (v50 <= v76)
            {
              a2 = v60;
              goto LABEL_59;
            }
          }

          v39 = v71;
          a3 = v75;
          v51 = v76;
          if (v73 < v60 || v75 >= v60)
          {
            break;
          }

          a1 = v77;
          a2 = v78;
          v37 = v54;
          v38 = v59;
          if (v73 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v51)
          {
            goto LABEL_59;
          }
        }

        a2 = v78;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v77;
        v37 = v54;
        v38 = v59;
        if (v39 > v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v86 = a2;
    v84 = v37;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = &a4[v21];
    v84 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v74 = enum case for Calendar.Component.month(_:);
      v61 = (v10 + 104);
      v60 = (v8 + 8);
      v59 = v10 + 8;
      v58 = (v12 + 8);
      v75 = a3;
      v62 = v18;
      v25 = v64;
      do
      {
        v76 = a4;
        v77 = a1;
        v73 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
        v78 = a2;
        sub_1D982C(a2, v79, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        sub_1D982C(a4, v80, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        sub_2BE608();
        v71 = *v61;
        v27 = v65;
        v26 = v66;
        (v71)(v65, v74, v66);
        v28 = v67;
        sub_2BE208();
        v72 = sub_2BE688();
        v70 = *v60;
        v70(v28, v82);
        v69 = *v59;
        v69(v27, v26);
        v68 = *v58;
        v68(v25, v81);
        sub_2BE608();
        (v71)(v27, v74, v26);
        v29 = v80;
        sub_2BE208();
        v30 = sub_2BE688();
        v70(v28, v82);
        v69(v27, v26);
        v68(v25, v81);
        v31 = v29;
        v32 = v73;
        sub_1D9894(v31, v73);
        sub_1D9894(v79, v32);
        if (v72 >= v30)
        {
          v34 = v77;
          a2 = v78;
          v33 = v62;
          a4 = v62 + v76;
          if (v77 < v76 || v77 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v75;
          }

          else
          {
            v36 = v75;
            if (v77 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v85 = a4;
        }

        else
        {
          v33 = v62;
          v34 = v77;
          v35 = (v62 + v78);
          a4 = v76;
          if (v77 < v78 || v77 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            v36 = v75;
          }

          else
          {
            v36 = v75;
            if (v77 != v78)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        a1 = (v33 + v34);
        v86 = a1;
      }

      while (a4 < v63 && a2 < v36);
    }
  }

LABEL_60:
  sub_1119A4(&v86, &v85, &v84);
}

void *sub_1D9108(uint64_t a1)
{
  v2 = sub_2BE678();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_6620C(&qword_3C5638, &qword_2F2BE0);
    v9 = sub_2C61D8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D995C(&qword_3C5640, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_2C5828();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1D995C(&qword_3C5648, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_2C5878();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1D9428(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BC418, &unk_2E9200);
  v44 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v39 - v3;
  v5 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0) - 8;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = _swiftEmptyDictionarySingleton;
  v47 = _swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v39 = v2;
  v41 = *(v9 + 80);
  v14 = *(v9 + 72);
  v46 = (v41 + 32) & ~v41;
  v15 = a1 + v46;
  v40 = xmmword_2E3F30;
  v42 = v4;
  v43 = v7;
  v45 = v14;
  while (1)
  {
    sub_1D982C(v15, v11, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
    sub_1D4244(v4);
    v19 = sub_5D508(v4);
    v20 = v12[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v12[3] < v22)
    {
      sub_60304(v22, 1);
      v12 = v47;
      v24 = sub_5D508(v4);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {
      sub_69198(v4, &qword_3BC418, &unk_2E9200);
      v26 = v11;
      v27 = v12[7];
      v28 = v26;
      sub_1D98F4(v26, v7, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v29 = *(v27 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v19) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_5C4A0(0, v29[2] + 1, 1, v29);
        *(v27 + 8 * v19) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v29 = sub_5C4A0((v31 > 1), v32 + 1, 1, v29);
        *(v27 + 8 * v19) = v29;
      }

      v11 = v28;
      v29[2] = v32 + 1;
      v16 = v45;
      v17 = v29 + v46 + v32 * v45;
      v7 = v43;
      sub_1D98F4(v43, v17, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v4 = v42;
    }

    else
    {
      sub_6620C(&qword_3BC430, &qword_2F2BD0);
      v33 = v46;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      sub_1D98F4(v11, v34 + v33, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v12[(v19 >> 6) + 8] |= 1 << v19;
      sub_69130(v4, v12[6] + *(v44 + 72) * v19, &qword_3BC418, &unk_2E9200);
      *(v12[7] + 8 * v19) = v34;
      v35 = v12[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v12[2] = v37;
      v16 = v45;
    }

    v15 += v16;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2C6678();
  __break(1u);
  return result;
}

uint64_t sub_1D982C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D98F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D995C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D99A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE6D8, &qword_2F2BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE6D8, &qword_2F2BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double JSShelfPaginationIntentProvider.paginationIntent(for:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3C2AC0, &unk_2EE760);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_2C0E58();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Shelf(0);
  sub_1D9D50(a1 + *(v15 + 72), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D9DC0(v7);
  }

  else
  {
    v28 = a1;
    v29 = v2;
    v16 = *(v9 + 32);
    v16(v14, v7, v8);
    v16(v11, v14, v8);
    if ((*(v9 + 88))(v11, v8) == enum case for PaginationInfo.nextHref(_:))
    {
      (*(v9 + 96))(v11, v8);
      v27 = *v11;
      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      v20 = *v28;
      v19 = v28[1];
      v21 = *(*(v28 + *(v15 + 68)) + 16);
      v22 = type metadata accessor for JSShelfPaginationIntent(0);
      *(a2 + 24) = v22;
      *(a2 + 32) = sub_1D9E28();
      v23 = sub_720C8(a2);
      v24 = *(v22 + 32);
      v25 = sub_2C49F8();
      (*(*(v25 - 8) + 16))(v23 + v24, v29, v25);
      *v23 = v20;
      v23[1] = v19;
      *(v23 + 1) = v27;
      v23[4] = v18;
      v23[5] = v17;
      v23[6] = v21;

      return result;
    }

    (*(v9 + 8))(v11, v8);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D9D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C2AC0, &unk_2EE760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9DC0(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C2AC0, &unk_2EE760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9E28()
{
  result = qword_3BD2F0;
  if (!qword_3BD2F0)
  {
    type metadata accessor for JSShelfPaginationIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD2F0);
  }

  return result;
}

uint64_t sub_1D9EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C49F8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D9F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C49F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for JSShelfPaginationIntentProvider(uint64_t a1)
{
  result = qword_3C56B0;
  if (!qword_3C56B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9FE8(uint64_t a1)
{
  result = sub_2C49F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DA078(uint64_t a1)
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = sub_2C5888();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_2C58C8();
  return v7;
}

uint64_t sub_1DA178(uint64_t a1, int a2)
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

uint64_t sub_1DA1C0(uint64_t result, int a2, int a3)
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

void sub_1DA218(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_111ACC(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1DB2B4(v4);
  *a1 = v2;
}

uint64_t sub_1DA284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DBD50(a1, a2, a3);

  return ReflectedStringConvertible.description.getter(a1, v4);
}

void sub_1DA2C0()
{
  v1 = v0;
  v2 = 0;
  v3 = sub_2C1BC8();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v86 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2C1BE8();
  __chkstk_darwin(v5 - 8);
  v91 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2BE5F8();
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C1B18();
  v92 = *(v9 - 8);
  v93 = v9;
  __chkstk_darwin(v9);
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v87 = &v81 - v12;
  sub_6620C(&qword_3BC4E0, &qword_2E34E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2F1A80;
  sub_72084(v0, v0[3]);
  sub_284714();
  *(v13 + 32) = v14;
  *(v13 + 40) = 2;
  sub_72084(v1, v1[3]);
  sub_284A3C();
  *(v13 + 48) = v15;
  *(v13 + 56) = 4;
  v16 = sub_72084(v1, v1[3]);
  v17 = 0.0;
  if (v16[4] >= 2)
  {
    v18 = v16[2];
    v19 = sub_1DAFF0(v16[5]);
    v20 = v19;
    v21 = v19 + 8;
    v22 = 1 << *(v19 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v19[8];
    if (v24)
    {
      v81 = v18;
      v82 = 0;
      v25 = 0;
      v26 = __clz(__rbit64(v24));
      v27 = (v24 - 1) & v24;
      v28 = (v22 + 63) >> 6;
LABEL_10:
      v2 = *(v19[6] + 16 * v26 + 8);
      v31 = *(v19[7] + 8 * v26);

      if (!v27)
      {
        goto LABEL_13;
      }

      do
      {
LABEL_11:
        while (1)
        {
          v32 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v33 = v32 | (v25 << 6);
          v34 = *(v20[7] + 8 * v33);
          if (v31 < v34)
          {
            break;
          }

          if (!v27)
          {
            goto LABEL_13;
          }
        }

        v36 = *(v20[6] + 16 * v33 + 8);

        v2 = v36;
        v31 = v34;
      }

      while (v27);
      while (1)
      {
LABEL_13:
        v35 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v35 >= v28)
        {
          break;
        }

        v27 = v21[v35];
        ++v25;
        if (v27)
        {
          v25 = v35;
          goto LABEL_11;
        }
      }

      if (v31 >= 2)
      {
        v17 = v31 / *(v81 + 16);
      }

      v2 = v82;
    }

    else
    {
      v29 = 0;
      v28 = (v22 + 63) >> 6;
      while (v28 - 1 != v24)
      {
        v25 = v24 + 1;
        v30 = v19[v24 + 9];
        v29 -= 64;
        ++v24;
        if (v30)
        {
          v81 = v18;
          v82 = 0;
          v27 = (v30 - 1) & v30;
          v26 = __clz(__rbit64(v30)) - v29;
          goto LABEL_10;
        }
      }
    }
  }

  *(v13 + 64) = v17;
  *(v13 + 72) = 3;
  sub_72084(v1, v1[3]);
  sub_284B44();
  *(v13 + 80) = v37;
  *(v13 + 88) = 0;
  sub_72084(v1, v1[3]);
  sub_284CDC();
  *(v13 + 96) = v38;
  *(v13 + 104) = 1;
  *(v13 + 112) = 0x3FD0000000000000;
  *(v13 + 120) = 5;
  if (qword_3BB828 != -1)
  {
LABEL_44:
    swift_once();
  }

  v39 = sub_2C00B8();
  sub_57AD8(v39, qword_3C3110);

  v40 = sub_2C0098();
  v41 = sub_2C5DE8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v94 = v43;
    *v42 = 136315138;
    v44 = sub_2C5B38();
    v46 = sub_5CCF4(v44, v45, &v94);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_0, v40, v41, "scoreList: %s", v42, 0xCu);
    sub_68CD0(v43);
  }

  v47 = *(v13 + 16);
  if (v47)
  {
    v48 = (v13 + 40);
    v49 = _swiftEmptyArrayStorage;
    do
    {
      v53 = *(v48 - 1);
      if (v53 > 0.0)
      {
        v54 = *v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_64B94(0, *(v49 + 2) + 1, 1);
          v49 = v94;
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          sub_64B94((v50 > 1), v51 + 1, 1);
          v49 = v94;
        }

        *(v49 + 2) = v51 + 1;
        v52 = &v49[16 * v51];
        *(v52 + 4) = v53;
        v52[40] = v54;
      }

      v48 += 2;
      --v47;
    }

    while (v47);
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
  }

  v94 = v49;

  sub_1DA218(&v94);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    if (*(v94 + 2))
    {
      v56 = *(v94 + 4);
      v57 = v94[40];
    }

    else
    {
      v56 = 0;
      v57 = 6;
    }

    v58 = sub_2C0098();
    v59 = sub_2C5DE8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v96[0] = v61;
      *v60 = 136315138;
      v94 = v56;
      v95 = v57;
      sub_6620C(&qword_3C5788, &qword_2F2CA8);
      v62 = sub_2C5918();
      v64 = sub_5CCF4(v62, v63, v96);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_0, v58, v59, "selected score: %s", v60, 0xCu);
      sub_68CD0(v61);
    }

    v65 = *sub_72084(v1, v1[3]);
    v66 = v83;
    sub_2BE5E8();
    v67 = sub_1E2374(v65, v66);
    v69 = v68;
    v70 = v85;
    v71 = *(v84 + 8);
    v71(v66, v85);
    v72 = v87;
    sub_1DAC88(v57, v67, v69);

    sub_6620C(&qword_3BC400, &unk_2E3430);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_2E15C0;
    v74 = *sub_72084(v1, v1[3]);
    sub_2BE5E8();
    v75 = sub_1E2374(v74, v66);
    v77 = v76;
    v71(v66, v70);
    v78 = v86;
    *v86 = v75;
    v78[1] = v77;
    (*(v89 + 104))(v78, enum case for TransitionFrameViewModel.Section.readerType(_:), v90);
    sub_2C1BD8();
    *(v73 + 56) = sub_2C0FD8();
    *(v73 + 64) = sub_1DAFA8(&qword_3BE6B0, &type metadata accessor for TransitionFrame, &protocol conformance descriptor for TransitionFrame);
    sub_720C8((v73 + 32));
    sub_2C0FC8();
    v80 = v92;
    v79 = v93;
    (*(v92 + 16))(v88, v72, v93);
    *(v73 + 96) = sub_2C0FA8();
    *(v73 + 104) = sub_1DAFA8(&qword_3C5780, &type metadata accessor for ReaderTypeFrame, &protocol conformance descriptor for ReaderTypeFrame);
    sub_720C8((v73 + 72));
    sub_2C0F98();
    (*(v80 + 8))(v72, v79);
  }
}

uint64_t sub_1DAC88(char a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a2;
  v4 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v7 - 8);
  v9 = v22 - v8;
  v10 = sub_2BEB08();
  __chkstk_darwin(v10 - 8);
  v11 = sub_2C1AF8();
  v12 = __chkstk_darwin(v11);
  v14 = *(&off_391790 + a1);
  v15 = *(&off_3917C8 + a1);
  (*(v16 + 104))(v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *v14, v12);
  v17 = sub_2BF0C8();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = *v15;
  v19 = sub_2BE8D8();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v6, v18, v19);
  (*(v20 + 56))(v6, 0, 1, v19);

  sub_2BEAF8();
  return sub_2C1B08();
}

uint64_t sub_1DAFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_1DAFF0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1DB150(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1DB23C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1DB150(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 2)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_61C48(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_61C48(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1DB23C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1DB150(result, a2, a3);

    return v6;
  }

  return result;
}

void sub_1DB2B4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2C6548(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_2C5B68();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1DB440(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DB3AC(0, v2, 1, a1);
  }
}

uint64_t sub_1DB3AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    v9 = v5;
    while (1)
    {
      v10 = *v8;
      v11 = *(v8 + 8);
      v12 = *(v9 - 2);
      v9 -= 2;
      v13 = v12 < *v8;
      v14 = v11 < *(v8 - 8);
      if (*v8 != v12)
      {
        v14 = v13;
      }

      if (!v14)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v8 = *v9;
      *(v8 - 2) = v10;
      *(v8 - 8) = v11;
      v8 = v9;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1DB440(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_97:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_129:
      v10 = sub_111978(v10);
    }

    v91 = *(v10 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = *&v10[16 * v91];
        v93 = *&v10[16 * v91 + 24];
        sub_1DBA24((*a3 + 16 * v92), (*a3 + 16 * *&v10[16 * v91 + 16]), (*a3 + 16 * v93), v5);
        if (v4)
        {
          goto LABEL_107;
        }

        if (v93 < v92)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_111978(v10);
        }

        if (v91 - 2 >= *(v10 + 2))
        {
          goto LABEL_123;
        }

        v94 = &v10[16 * v91];
        *v94 = v92;
        *(v94 + 1) = v93;
        sub_1118EC(v91 - 1);
        v91 = *(v10 + 2);
        if (v91 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = v14 < *(v16 + 8);
      if (v13 != *v16)
      {
        v17 = *v16 < v13;
      }

      v18 = v11 + 2;
      v19 = (v16 + 24);
      while (v7 != v18)
      {
        v20 = v19[1];
        v21 = *(v19 - 1);
        v22 = *v19;
        v23 = *(v19 + 16);
        v19 += 2;
        v24 = v23 >= v22;
        if (v20 != v21)
        {
          v24 = v21 >= v20;
        }

        ++v18;
        if (v17 == v24)
        {
          v9 = v18 - 1;
          if (!v17)
          {
            goto LABEL_27;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v17)
      {
        goto LABEL_27;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_126;
      }

      if (v11 < v9)
      {
        v25 = 16 * v9 - 16;
        v26 = v9;
        v27 = v11;
        do
        {
          if (v27 != --v26)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_132;
            }

            v30 = (v29 + v15);
            v31 = (v29 + v25);
            v32 = *(v29 + v15);
            v33 = *(v29 + v15 + 8);
            if (v15 != v25 || v30 >= v31 + 1)
            {
              *v30 = *v31;
            }

            v28 = v29 + v25;
            *v28 = v32;
            *(v28 + 8) = v33;
          }

          ++v27;
          v25 -= 16;
          v15 += 16;
        }

        while (v27 < v26);
        v7 = a3[1];
      }
    }

LABEL_27:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_125;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_127;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_46:
    if (v9 < v11)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_5BFE4(0, *(v10 + 2) + 1, 1, v10);
    }

    v5 = *(v10 + 2);
    v46 = *(v10 + 3);
    v47 = v5 + 1;
    if (v5 >= v46 >> 1)
    {
      v10 = sub_5BFE4((v46 > 1), v5 + 1, 1, v10);
    }

    *(v10 + 2) = v47;
    v48 = &v10[16 * v5];
    *(v48 + 4) = v11;
    *(v48 + 5) = v9;
    v49 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (v5)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v10 + 4);
          v52 = *(v10 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_66:
          if (v54)
          {
            goto LABEL_113;
          }

          v67 = &v10[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_116;
          }

          v73 = &v10[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_120;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v77 = &v10[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_80:
        if (v72)
        {
          goto LABEL_115;
        }

        v80 = &v10[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_118;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_87:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v89 = *&v10[16 * v88 + 32];
        v5 = *&v10[16 * v50 + 40];
        sub_1DBA24((*a3 + 16 * v89), (*a3 + 16 * *&v10[16 * v50 + 32]), (*a3 + 16 * v5), v49);
        if (v4)
        {
          goto LABEL_107;
        }

        if (v5 < v89)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_111978(v10);
        }

        if (v88 >= *(v10 + 2))
        {
          goto LABEL_110;
        }

        v90 = &v10[16 * v88];
        *(v90 + 4) = v89;
        *(v90 + 5) = v5;
        sub_1118EC(v50);
        v47 = *(v10 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v10[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_111;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v62 = &v10[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_114;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_117;
      }

      if (v66 >= v58)
      {
        v84 = &v10[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_97;
    }
  }

  v34 = *a3;
  v35 = *a3 + 16 * v9;
  v36 = v11 - v9;
LABEL_37:
  v37 = v36;
  v38 = v35;
  v39 = v35;
  while (1)
  {
    v40 = *v38;
    v41 = *(v38 + 8);
    v42 = *(v39 - 2);
    v39 -= 2;
    v43 = v42 < *v38;
    v44 = v41 < *(v38 - 8);
    if (*v38 != v42)
    {
      v44 = v43;
    }

    if (!v44)
    {
LABEL_36:
      ++v9;
      v35 += 16;
      --v36;
      if (v9 != v7)
      {
        goto LABEL_37;
      }

      v9 = v7;
      goto LABEL_46;
    }

    if (!v34)
    {
      break;
    }

    *v38 = *v39;
    *(v38 - 2) = v40;
    *(v38 - 8) = v41;
    v38 = v39;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_36;
    }
  }

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
}