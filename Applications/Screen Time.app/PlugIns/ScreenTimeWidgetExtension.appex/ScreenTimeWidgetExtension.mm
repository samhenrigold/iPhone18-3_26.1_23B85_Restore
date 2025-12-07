uint64_t sub_100001AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_100049058();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_100001B5C(void *a1, uint64_t *a2)
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

void *sub_100001BB4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001C04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100049E08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001C50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100049058();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100048E98();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100001D6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100049058();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_100048E98();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for UsageTimelineEntry(uint64_t a1)
{
  result = qword_10005D748;
  if (!qword_10005D748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001EBC(uint64_t a1)
{
  sub_100049058();
  if (v1 <= 0x3F)
  {
    sub_100002220(319, &qword_10005D758, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_100048E98();
        if (v4 <= 0x3F)
        {
          sub_1000020F0(319, &qword_10005D760, type metadata accessor for HourlyUsage, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_100002220(319, &qword_10005D768, &type metadata for MostUsedItem, &type metadata accessor for Array);
            if (v6 <= 0x3F)
            {
              sub_100002220(319, &qword_10005D770, &type metadata for UsageItem, &type metadata accessor for Array);
              if (v7 <= 0x3F)
              {
                sub_1000020F0(319, &qword_10005D778, sub_100002154, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
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

void sub_1000020F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100002154()
{
  result = qword_10005D780;
  if (!qword_10005D780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D780);
  }

  return result;
}

__n128 sub_1000021A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000021B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000021D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100002220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100002270(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100002958();
  v3 = sub_100049DA8();

  v2(v3);
}

void sub_1000022F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedCache];
  isa = sub_100049FD8().super.isa;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100002270;
  v8[3] = &unk_100059D90;
  v7 = _Block_copy(v8);

  [v5 fetchAppInfoForBundleIdentifiers:isa completionHandler:v7];
  _Block_release(v7);
}

uint64_t sub_10000242C(uint64_t a1, void *a2)
{
  v3 = sub_1000028DC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000024B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_1000024E0, 0, 0);
}

uint64_t sub_1000024E0()
{
  v1 = v0[23];
  v2 = [objc_opt_self() sharedCache];
  v0[24] = v2;
  v3 = sub_100049DF8();
  v0[25] = v3;
  if (v1)
  {
    v4 = sub_100049DF8();
  }

  else
  {
    v4 = 0;
  }

  v0[26] = v4;
  v5 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100002678;
  v6 = swift_continuation_init();
  v0[17] = sub_1000027D4(&qword_10005D7F8, &unk_10004B100);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000242C;
  v0[13] = &unk_100059CE8;
  v0[14] = v6;
  [v2 fetchPersonImageWithDSID:v5 fullName:v3 appleID:v4 forceFetch:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100002678()
{

  return _swift_task_switch(sub_100002758, 0, 0);
}

uint64_t sub_100002758()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000027D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000282C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002890(void *a1)
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

void *sub_1000028DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002958()
{
  result = qword_10005D800;
  if (!qword_10005D800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D800);
  }

  return result;
}

__n128 sub_1000029A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000029B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100002A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100002A50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100002A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100002B04@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = sub_100049738();
  v25 = 0;
  sub_100002C84(a2, a4, v8, &v16);
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v34[0] = v16;
  v34[1] = v17;
  v34[2] = v18;
  v34[3] = v19;
  v34[4] = v20;
  v34[5] = v21;
  v34[6] = v22;
  v35 = v23;
  sub_1000055FC(&v26, &v15, &qword_10005D838, &qword_10004B2E8);
  sub_100005664(v34, &qword_10005D838, &qword_10004B2E8);
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31;
  *(&v24[6] + 7) = v32;
  *(&v24[7] + 7) = v33;
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  *(&v24[3] + 7) = v29;
  v10 = v24[5];
  *(a5 + 81) = v24[4];
  *(a5 + 97) = v10;
  *(a5 + 113) = v24[6];
  *(a5 + 122) = *(&v24[6] + 9);
  v11 = v24[1];
  *(a5 + 17) = v24[0];
  *(a5 + 33) = v11;
  result = *&v24[2];
  v13 = v24[3];
  *(a5 + 49) = v24[2];
  v14 = v25;
  *a5 = v9;
  *(a5 + 8) = 0;
  *(a5 + 16) = v14;
  *(a5 + 65) = v13;
  return result;
}

uint64_t sub_100002C84@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = a3;
  if ((result & 1) == 0)
  {
    sub_100049748();
    v7 = sub_100049928();
    v27 = v4;
    v9 = v8;
    v11 = v10;
    sub_1000498F8();
    v12 = sub_100049918();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    sub_1000036D0(v7, v9, v11 & 1);

    sub_100049B78();
    sub_100049528();
    LOBYTE(v40) = v16 & 1;
    LOBYTE(v38[0]) = 0;
    *&v31 = v12;
    *(&v31 + 1) = v14;
    LOBYTE(v32) = v16 & 1;
    v4 = v27;
    *(&v32 + 1) = v18;
    *&v36 = swift_getKeyPath();
    *(&v36 + 1) = 1;
    LOWORD(v37) = 0;
    goto LABEL_6;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a3)
  {
    v6 = *(a2 + 8 * a3 + 32);
    LOBYTE(v38[0]) = 1;
    *&v31 = v6;
    BYTE1(v37) = 1;

LABEL_6:
    sub_1000027D4(&qword_10005D840, &qword_10004B320);
    v19 = sub_100004914();
    sub_100004A50(v19, v20, v21);
    sub_1000497E8();
    v38[4] = v44;
    v38[5] = v45;
    v38[0] = v40;
    v38[1] = v41;
    v38[2] = v42;
    v38[3] = v43;
    v29[0] = v40;
    v29[1] = v41;
    v29[4] = v44;
    v29[5] = v45;
    v29[2] = v42;
    v29[3] = v43;
    v31 = v40;
    v32 = v41;
    v39 = v46;
    v30 = v46;
    LOWORD(v37) = v46;
    v35 = v44;
    v36 = v45;
    v33 = v42;
    v34 = v43;
    v28[103] = v4 == 2;
    v22 = v41;
    *a4 = v40;
    *(a4 + 16) = v22;
    v23 = v33;
    v24 = v34;
    v25 = v36;
    v26 = v37;
    *(a4 + 64) = v35;
    *(a4 + 80) = v25;
    *(a4 + 32) = v23;
    *(a4 + 48) = v24;
    *(a4 + 96) = v26;
    *(a4 + 104) = 0;
    *(a4 + 112) = v4 != 2;
    *(a4 + 113) = v4 == 2;
    sub_1000055FC(v29, v28, &qword_10005D878, &qword_10004B338);
    return sub_100005664(v38, &qword_10005D878, &qword_10004B338);
  }

  __break(1u);
  return result;
}

uint64_t sub_100002F34@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  result = sub_100049738();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1000027D4(&qword_10005D808, &unk_10004B2B0);
    swift_getKeyPath();
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
    *(v7 + 32) = v4;

    sub_1000027D4(&qword_10005D810, &qword_10004BF50);
    sub_1000027D4(&qword_10005D818, &qword_10004B2E0);
    sub_1000035A8();
    sub_100005708(&qword_10005D830, &qword_10005D818, &qword_10004B2E0, &protocol conformance descriptor for HStack<A>);
    return sub_100049B28();
  }

  return result;
}

uint64_t sub_100003094@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = sub_1000027D4(&qword_10005D880, &qword_10004B340);
  __chkstk_darwin(v7 - 8);
  v9 = v26 - v8;
  v10 = sub_1000027D4(&qword_10005D888, &qword_10004B348);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v28 = v26 - v12;
  v29 = sub_1000027D4(&qword_10005D890, &qword_10004B350) - 8;
  __chkstk_darwin(v29);
  v14 = v26 - v13;
  *v9 = sub_100049738();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v26[2] = *(sub_1000027D4(&qword_10005D898, &qword_10004B358) + 44);
  *&v31 = sub_100004AFC(a1);
  v26[1] = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v27 = a1;
  v15[4] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100004D3C;
  *(v16 + 24) = v15;

  sub_1000027D4(&qword_10005D8A0, &qword_10004B388);
  sub_1000027D4(&qword_10005D8A8, &qword_10004B390);
  sub_100005708(&qword_10005D8B0, &qword_10005D8A0, &qword_10004B388, &protocol conformance descriptor for [A]);
  sub_100005708(&qword_10005D8B8, &qword_10005D8A8, &qword_10004B390, &protocol conformance descriptor for TupleView<A>);
  sub_100049B28();
  sub_100049B78();
  sub_100049598();
  v17 = v28;
  sub_100004DF8(v9, v28, &qword_10005D880, &qword_10004B340);
  v18 = (v17 + *(v11 + 44));
  v19 = v36;
  v18[4] = v35;
  v18[5] = v19;
  v18[6] = v37;
  v20 = v32;
  *v18 = v31;
  v18[1] = v20;
  v21 = v34;
  v18[2] = v33;
  v18[3] = v21;
  v22 = sub_100049B88();
  sub_100004DF8(v17, v14, &qword_10005D888, &qword_10004B348);
  v23 = v30;
  v24 = &v14[*(v29 + 44)];
  *v24 = v22;
  v24[1] = v27;
  sub_100004DF8(v14, v23, &qword_10005D890, &qword_10004B350);
}

unint64_t sub_100003454@<X0>(unint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a2;
  v14 = *(a2 + 3);
  v15 = v10;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > result)
  {
    v12 = *(a3 + 8 * result + 32);
    v13[16] = 1;
    sub_100004E60(&v15, v13);
    sub_100004E60(&v14, v13);

    *a4 = v4;
    *(a4 + 8) = v5;
    *(a4 + 16) = v6;
    *(a4 + 24) = v7;
    *(a4 + 32) = v8;
    *(a4 + 40) = v9;
    *(a4 + 48) = v12;
    *(a4 + 56) = 0;
    *(a4 + 64) = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100003564()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000035A8()
{
  result = qword_10005D820;
  if (!qword_10005D820)
  {
    v1 = sub_100003634(&qword_10005D810, &qword_10004BF50);
    sub_10000367C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D820);
  }

  return result;
}

uint64_t sub_100003634(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005D828;
  if (!qword_10005D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D828);
  }

  return result;
}

uint64_t sub_1000036D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000036E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_100049818();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000027D4(&qword_10005D960, &qword_10004B558);
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  v47 = sub_1000027D4(&qword_10005D968, &qword_10004B560);
  __chkstk_darwin(v47);
  v49 = &v41 - v10;
  v11 = sub_100049798();
  v53 = 1;
  sub_100003D1C(v2, &v68, v12, v13);
  v64 = v78;
  v65[0] = v79[0];
  *(v65 + 9) = *(v79 + 9);
  v60 = v74;
  v61 = v75;
  v62 = v76;
  v63 = v77;
  v56 = v70;
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v54 = v68;
  v55 = v69;
  v66[9] = v77;
  v66[10] = v78;
  v67[0] = v79[0];
  *(v67 + 9) = *(v79 + 9);
  v66[6] = v74;
  v66[7] = v75;
  v66[8] = v76;
  v66[2] = v70;
  v66[3] = v71;
  v66[4] = v72;
  v66[5] = v73;
  v66[0] = v68;
  v66[1] = v69;
  sub_1000055FC(&v54, &v50, &qword_10005D970, &qword_10004B568);
  sub_100005664(v66, &qword_10005D970, &qword_10004B568);
  *(&v52[9] + 7) = v63;
  *(&v52[10] + 7) = v64;
  *(&v52[11] + 7) = v65[0];
  v52[12] = *(v65 + 9);
  *(&v52[5] + 7) = v59;
  *(&v52[6] + 7) = v60;
  *(&v52[7] + 7) = v61;
  *(&v52[8] + 7) = v62;
  *(&v52[1] + 7) = v55;
  *(&v52[2] + 7) = v56;
  *(&v52[3] + 7) = v57;
  *(&v52[4] + 7) = v58;
  *(v52 + 7) = v54;
  *&v51[145] = v52[9];
  *&v51[161] = v52[10];
  *&v51[177] = v52[11];
  *&v51[193] = *(v65 + 9);
  *&v51[81] = v52[5];
  *&v51[97] = v52[6];
  *&v51[113] = v52[7];
  *&v51[129] = v52[8];
  *&v51[17] = v52[1];
  *&v51[33] = v52[2];
  *&v51[49] = v52[3];
  *&v51[65] = v52[4];
  v50 = v11;
  v51[0] = v53;
  *&v51[1] = v52[0];
  sub_100049808();
  v14 = sub_1000027D4(&qword_10005D978, &qword_10004B570);
  v15 = sub_100005708(&qword_10005D980, &qword_10005D978, &qword_10004B570, &protocol conformance descriptor for VStack<A>);
  sub_100049A38();
  (*(v43 + 8))(v5, v44);
  v79[1] = *&v51[176];
  v79[2] = *&v51[192];
  v76 = *&v51[112];
  v77 = *&v51[128];
  v80 = v51[208];
  v78 = *&v51[144];
  v79[0] = *&v51[160];
  v72 = *&v51[48];
  v73 = *&v51[64];
  v74 = *&v51[80];
  v75 = *&v51[96];
  v68 = v50;
  v69 = *v51;
  v70 = *&v51[16];
  v71 = *&v51[32];
  v16 = sub_100005664(&v68, &qword_10005D978, &qword_10004B570);
  v17 = *(v42 + 8);
  v18 = *(v42 + 16);
  *&v50 = *v42;
  *(&v50 + 1) = v17;
  sub_100005540(v16, v19, v20);

  v21 = sub_100049938();
  v23 = v22;
  LOBYTE(v5) = v24;
  *&v50 = v14;
  *(&v50 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  v25 = v45;
  sub_1000499D8();
  sub_1000036D0(v21, v23, v5 & 1);

  (*(v46 + 8))(v9, v25);
  if (v18 < 0.0)
  {
    goto LABEL_9;
  }

  if (qword_10005D6E0 != -1)
  {
    swift_once();
  }

  v26 = qword_10005ED10;
  v27 = v18 < 60.0 ? 128 : 96;
  [qword_10005ED10 setAllowedUnits:v27];
  [v26 setUnitsStyle:3];
  v28 = [v26 stringFromTimeInterval:v18];
  if (v28)
  {
    v29 = v28;
    v30 = sub_100049E08();
    v32 = v31;
  }

  else
  {
LABEL_9:
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  if (sub_100049E58())
  {
    *&v50 = v30;
    *(&v50 + 1) = v32;
    v33 = sub_100049938();
  }

  else
  {

    sub_100049748();
    v33 = sub_100049928();
  }

  v36 = v33;
  v37 = v34;
  v38 = v35;
  v39 = v49;
  sub_100049568();
  sub_1000036D0(v36, v37, v38 & 1);

  return sub_100005594(v39);
}

uint64_t sub_100003D1C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v83 = *a1;
  v84 = v4;
  v6 = sub_100005540(a1, a3, a4);

  v45 = v6;
  v7 = sub_100049938();
  v9 = v8;
  v11 = v10;
  sub_1000498F8();
  v12 = sub_100049918();
  v14 = v13;
  v16 = v15;

  sub_1000036D0(v7, v9, v11 & 1);

  v17 = sub_100049908();
  v47 = v18;
  v48 = v17;
  v20 = v19;
  v49 = v21;
  sub_1000036D0(v12, v14, v16 & 1);

  sub_100049B78();
  sub_100049528();
  v22 = v20 & 1;
  LOBYTE(v83) = v22;
  KeyPath = swift_getKeyPath();
  if (v5 >= 0.0)
  {
    if (qword_10005D6E0 != -1)
    {
      swift_once();
    }

    v25 = qword_10005ED10;
    if (v5 < 60.0)
    {
      v26 = 128;
    }

    else
    {
      v26 = 96;
    }

    [qword_10005ED10 setAllowedUnits:{v26, v45}];
    [v25 setUnitsStyle:1];
    v27 = [v25 stringFromTimeInterval:v5];
    if (v27)
    {
      v28 = v27;
      v24 = sub_100049E08();
      v23 = v29;
    }

    else
    {
      v24 = 0;
      v23 = 0xE000000000000000;
    }
  }

  else
  {
    v23 = 0xE200000000000000;
    v24 = 11565;
  }

  v83 = v24;
  v84 = v23;
  v30 = sub_100049938();
  v32 = v31;
  v34 = v33;
  sub_1000498F8();
  v35 = sub_100049918();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_1000036D0(v30, v32, v34 & 1);

  sub_100049B78();
  sub_100049528();
  v95 = v39 & 1;
  v42 = swift_getKeyPath();
  *&v59 = v48;
  *(&v59 + 1) = v47;
  LOBYTE(v60) = v22;
  *(&v60 + 1) = v97[0];
  DWORD1(v60) = *(v97 + 3);
  v61 = v98;
  v62 = v99;
  v63 = v100;
  *(&v60 + 1) = v49;
  *&v64 = KeyPath;
  *(&v64 + 1) = 1;
  v53 = v100;
  v54 = v64;
  v51 = v59;
  v52 = v60;
  *&v66 = v35;
  *(&v66 + 1) = v37;
  LOBYTE(v67) = v39 & 1;
  DWORD1(v67) = *&v94[3];
  *(&v67 + 1) = *v94;
  *(&v67 + 1) = v41;
  v69 = v57;
  v70 = v58;
  v68 = v56;
  *&v71 = v42;
  *(&v71 + 1) = 1;
  *&v55[40] = v56;
  *&v55[24] = v67;
  *&v55[8] = v66;
  *&v55[88] = v71;
  v96 = 0;
  v65 = 0;
  v55[0] = 0;
  v72 = 0;
  v55[104] = 0;
  *&v55[72] = v58;
  *&v55[56] = v57;
  v43 = v99;
  a2[2] = v98;
  a2[3] = v43;
  *a2 = v51;
  a2[1] = v52;
  a2[6] = *v55;
  a2[7] = *&v55[16];
  a2[4] = v53;
  a2[5] = v54;
  *(a2 + 185) = *&v55[89];
  a2[10] = *&v55[64];
  a2[11] = *&v55[80];
  a2[8] = *&v55[32];
  a2[9] = *&v55[48];
  v73[0] = v35;
  v73[1] = v37;
  v74 = v39 & 1;
  *v75 = *v94;
  *&v75[3] = *&v94[3];
  v77 = v56;
  v78 = v57;
  v79 = v58;
  v76 = v41;
  v80 = v42;
  v81 = 1;
  v82 = 0;
  sub_1000055FC(&v59, &v83, &qword_10005D840, &qword_10004B320);
  sub_1000055FC(&v66, &v83, &qword_10005D840, &qword_10004B320);
  sub_100005664(v73, &qword_10005D840, &qword_10004B320);
  v83 = v48;
  v84 = v47;
  v85 = v22;
  *v86 = v97[0];
  *&v86[3] = *(v97 + 3);
  v87 = v49;
  v88 = v98;
  v89 = v99;
  v90 = v100;
  v91 = KeyPath;
  v92 = 1;
  v93 = 0;
  return sub_100005664(&v83, &qword_10005D840, &qword_10004B320);
}

uint64_t sub_100004220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = sub_1000027D4(&qword_10005D918, &qword_10004B4E0);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v93 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v82[-v7];
  v9 = sub_1000027D4(&qword_10005D920, &qword_10004B4E8);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v92 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v82[-v13];
  sub_100049748();
  v15 = sub_100049928();
  v17 = v16;
  v19 = v18;
  sub_1000498F8();
  v20 = sub_100049918();
  v84 = v21;
  v85 = v20;
  v83 = v22;
  v86 = v23;

  sub_1000036D0(v15, v17, v19 & 1);

  v24 = &v14[*(v10 + 44)];
  v90 = sub_100049588();
  v25 = *(v90 + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v89 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_100049758();
  v88 = *(*(v27 - 8) + 104);
  v88(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #4.0 }

  v87 = _Q0;
  *v24 = _Q0;
  KeyPath = swift_getKeyPath();
  v91 = sub_1000027D4(&qword_10005D928, &qword_10004B520);
  v34 = &v24[*(v91 + 36)];
  *v34 = KeyPath;
  v34[1] = a1;
  *&v24[*(sub_1000027D4(&qword_10005D930, &qword_10004B528) + 36)] = 0x3FB47AE147AE147BLL;

  LOBYTE(a1) = sub_100049898();
  sub_1000494E8();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = &v24[*(sub_1000027D4(&qword_10005D938, &qword_10004B530) + 36)];
  *v43 = a1;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = sub_100049B68();
  v46 = v45;
  v47 = &v24[*(sub_1000027D4(&qword_10005D940, &qword_10004B538) + 36)];
  *v47 = v44;
  v47[1] = v46;
  v48 = v84;
  *v14 = v85;
  *(v14 + 1) = v48;
  v14[16] = v83 & 1;
  *(v14 + 3) = v86;
  sub_100049748();
  v49 = sub_100049928();
  v51 = v50;
  v53 = v52;
  sub_1000498F8();
  v54 = sub_100049918();
  v84 = v55;
  v85 = v54;
  v83 = v56;
  v86 = v57;

  sub_1000036D0(v49, v51, v53 & 1);

  v58 = &v8[*(v4 + 44)];
  v88(&v58[*(v90 + 20)], v89, v27);
  *v58 = v87;
  v59 = [objc_opt_self() tertiarySystemFillColor];
  v60 = sub_100049AA8();
  v61 = swift_getKeyPath();
  v62 = &v58[*(v91 + 36)];
  *v62 = v61;
  v62[1] = v60;
  LOBYTE(v60) = sub_100049898();
  sub_1000494E8();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = &v58[*(sub_1000027D4(&qword_10005D948, &qword_10004B540) + 36)];
  *v71 = v60;
  *(v71 + 1) = v64;
  *(v71 + 2) = v66;
  *(v71 + 3) = v68;
  *(v71 + 4) = v70;
  v71[40] = 0;
  v72 = sub_100049B68();
  v74 = v73;
  v75 = &v58[*(sub_1000027D4(&qword_10005D950, &qword_10004B548) + 36)];
  *v75 = v72;
  v75[1] = v74;
  v76 = v84;
  *v8 = v85;
  *(v8 + 1) = v76;
  v8[16] = v83 & 1;
  *(v8 + 3) = v86;
  v77 = v92;
  sub_1000055FC(v14, v92, &qword_10005D920, &qword_10004B4E8);
  v78 = v93;
  sub_1000055FC(v8, v93, &qword_10005D918, &qword_10004B4E0);
  v79 = v94;
  sub_1000055FC(v77, v94, &qword_10005D920, &qword_10004B4E8);
  v80 = sub_1000027D4(&qword_10005D958, &qword_10004B550);
  sub_1000055FC(v78, v79 + *(v80 + 48), &qword_10005D918, &qword_10004B4E0);
  sub_100005664(v8, &qword_10005D918, &qword_10004B4E0);
  sub_100005664(v14, &qword_10005D920, &qword_10004B4E8);
  sub_100005664(v78, &qword_10005D918, &qword_10004B4E0);
  return sub_100005664(v77, &qword_10005D920, &qword_10004B4E8);
}

uint64_t sub_1000047F4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_100049798();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_1000027D4(&qword_10005D910, &qword_10004B4D8);
  return sub_100004220(v4, a2 + *(v5 + 44));
}

uint64_t sub_10000484C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000496D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100004880@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000496D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100004914()
{
  result = qword_10005D848;
  if (!qword_10005D848)
  {
    sub_100003634(&qword_10005D840, &qword_10004B320);
    sub_1000049CC();
    sub_100005708(&qword_10005D860, &qword_10005D868, &qword_10004B330, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D848);
  }

  return result;
}

unint64_t sub_1000049CC()
{
  result = qword_10005D850;
  if (!qword_10005D850)
  {
    sub_100003634(&qword_10005D858, &qword_10004B328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D850);
  }

  return result;
}

unint64_t sub_100004A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005D870;
  if (!qword_10005D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D870);
  }

  return result;
}

uint64_t sub_100004AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000495F8();
  *a1 = result;
  return result;
}

void *sub_100004AFC(void *result)
{
  v1 = result[2];
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 9;
    v25 = result[2];
    while (1)
    {
      v8 = *(v6 - 5);
      v7 = *(v6 - 4);
      v9 = *(v6 - 3);
      v11 = *(v6 - 2);
      v10 = *(v6 - 1);
      v26 = *v6;
      if (v4)
      {

        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v13 = v2[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_1000027D4(&qword_10005D8C0, &qword_10004B398);
        v16 = swift_allocObject();
        v17 = (j__malloc_size(v16) - 32) / 56;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = v16 + 4;
        v19 = v2[3] >> 1;
        v5 = &v16[7 * v19 + 4];
        v20 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        if (v2[2])
        {
          if (v16 != v2 || v18 >= &v2[7 * v19 + 4])
          {
            memmove(v18, v2 + 4, 56 * v19);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v16;
        v1 = v25;
        v12 = __OFSUB__(v20, 1);
        v4 = v20 - 1;
        if (v12)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      v6 += 6;
      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v9;
      v5[4] = v11;
      v5[5] = v10;
      v5[6] = v26;
      v5 += 7;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v22 = v2[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v12 = __OFSUB__(v23, v4);
    v24 = v23 - v4;
    if (v12)
    {
      goto LABEL_30;
    }

    v2[2] = v24;
  }

  return v2;
}

uint64_t sub_100004CFC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004D48()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_100004D80@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = *(a1 + 3);
  v11[0] = *(a1 + 1);
  v11[1] = v6;
  v11[2] = *(a1 + 5);
  v4(v9, v5, v11);
  v7 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v10;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100004DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000027D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_100004EC0(void *result)
{
  v1 = result[2];
  v2 = _swiftEmptyArrayStorage;
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 4;
    while (1)
    {
      v7 = v6[v4];
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        sub_1000027D4(&qword_10005D8D0, &qword_10004B3A8);
        v11 = swift_allocObject();
        v12 = j__malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[2 * v16 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v16);
          }

          v2[2] = 0;
        }

        v5 = (v15 + 16 * v16);
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v18 = __OFSUB__(v3--, 1);
      if (v18)
      {
        break;
      }

      *v5 = v4;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v19 = v2[3];
  if (v19 < 2)
  {
    return v2;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v3);
  v21 = v20 - v3;
  if (!v18)
  {
    v2[2] = v21;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_10000502C(char *result)
{
  v1 = *(result + 2);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = (result + 80);
    v33 = *(result + 2);
    while (1)
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *v6;
      v34 = *(v6 - 1);
      v35 = *(v6 - 6);
      if (v4)
      {

        v12 = v8;
        v13 = v9;

        v14 = __OFSUB__(v4--, 1);
        if (v14)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v15 = *(v2 + 3);
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        sub_1000027D4(&qword_10005D8C8, &qword_10004B3A0);
        v18 = swift_allocObject();
        v19 = j__malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 + 31;
        }

        v21 = v20 >> 6;
        *(v18 + 2) = v17;
        *(v18 + 3) = 2 * (v20 >> 6);
        v22 = v18 + 32;
        v23 = *(v2 + 3) >> 1;
        v5 = &v18[64 * v23 + 32];
        v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
        if (*(v2 + 2))
        {
          v25 = v2 + 32;
          if (v18 != v2 || v22 >= &v25[64 * v23])
          {
            memmove(v22, v25, v23 << 6);
          }

          v26 = v8;
          v27 = v9;

          *(v2 + 2) = 0;
        }

        else
        {

          v28 = v8;
          v29 = v9;
        }

        v2 = v18;
        v1 = v33;
        v14 = __OFSUB__(v24, 1);
        v4 = v24 - 1;
        if (v14)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      v6 += 7;
      *v5 = v3;
      *(v5 + 1) = v35;
      *(v5 + 2) = v7;
      *(v5 + 3) = v8;
      *(v5 + 4) = v9;
      *(v5 + 5) = v10;
      *(v5 + 6) = v34;
      *(v5 + 7) = v11;
      v5 += 64;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v30 = *(v2 + 3);
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v14 = __OFSUB__(v31, v4);
    v32 = v31 - v4;
    if (v14)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v32;
  }

  return v2;
}

__n128 sub_100005238(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100005254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10000529C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100005340()
{
  result = qword_10005D8E8;
  if (!qword_10005D8E8)
  {
    sub_100003634(&qword_10005D890, &qword_10004B350);
    sub_1000053F8();
    sub_100005708(&qword_10005D900, &qword_10005D908, qword_10004B430, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D8E8);
  }

  return result;
}

unint64_t sub_1000053F8()
{
  result = qword_10005D8F0;
  if (!qword_10005D8F0)
  {
    sub_100003634(&qword_10005D888, &qword_10004B348);
    sub_100005708(&qword_10005D8F8, &qword_10005D880, &qword_10004B340, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D8F0);
  }

  return result;
}

uint64_t sub_1000054E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000495F8();
  *a1 = result;
  return result;
}

unint64_t sub_100005540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005D988;
  if (!qword_10005D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D988);
  }

  return result;
}

uint64_t sub_100005594(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005D968, &qword_10004B560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000055FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000027D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005664(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000027D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005708(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003634(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005754()
{
  result = qword_10005D9A0;
  if (!qword_10005D9A0)
  {
    sub_100003634(&qword_10005D968, &qword_10004B560);
    sub_100003634(&qword_10005D978, &qword_10004B570);
    sub_100005708(&qword_10005D980, &qword_10005D978, &qword_10004B570, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100005850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D9A0);
  }

  return result;
}

unint64_t sub_100005850()
{
  result = qword_10005D9A8;
  if (!qword_10005D9A8)
  {
    sub_100049848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D9A8);
  }

  return result;
}

uint64_t sub_1000058C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100048E98();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100005A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100048E98();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ScreenTimeWidgetGraph(uint64_t a1)
{
  result = qword_10005DA10;
  if (!qword_10005DA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005B88(uint64_t a1)
{
  sub_100005C84(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100005C84(319, &qword_10005D760, type metadata accessor for HourlyUsage, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100048E98();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100005C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100005D04()
{
  sub_1000027D4(&qword_10005DBF8, &qword_10004CE70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004B580;
  v1 = objc_opt_self();
  v2 = [v1 systemBlueColor];
  *(v0 + 32) = sub_100049AA8();
  v3 = [v1 systemTealColor];
  *(v0 + 40) = sub_100049AA8();
  v4 = [v1 systemOrangeColor];
  *(v0 + 48) = sub_100049AA8();
  v5 = [v1 systemGray3Color];
  result = sub_100049AA8();
  *(v0 + 56) = result;
  qword_100060280 = v0;
  return result;
}

uint64_t sub_100005DE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100049708();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000AB54(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100049C78();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10004A098();
    v13 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100005FCC()
{
  v1 = type metadata accessor for HourlyUsage(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  result = type metadata accessor for ScreenTimeWidgetGraph(0);
  v9 = *(v0 + *(result + 20));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v1 + 20);
    v12 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    v14 = 0.0;
    do
    {
      sub_10000A418(v12, v7, type metadata accessor for HourlyUsage);
      v15 = *&v7[v11];
      result = sub_10000A480(v7);
      if (v14 <= v15)
      {
        v14 = v15;
      }

      v12 += v13;
      --v10;
    }

    while (v10);
  }

  v16 = *(v9 + 16);
  if (v16)
  {
    v17 = *(v1 + 20);
    v18 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v19 = *(v2 + 72);
    v20 = 0.0;
    do
    {
      sub_10000A418(v18, v5, type metadata accessor for HourlyUsage);
      v21 = *&v5[v17];
      result = sub_10000A480(v5);
      if (v20 <= v21)
      {
        v20 = v21;
      }

      v18 += v19;
      --v16;
    }

    while (v16);
  }

  return result;
}

char *sub_1000061D4(double a1, double a2, double a3)
{
  v6 = sub_10000A3A4(a1, a2, a3);
  result = sub_100023884(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  result = _swiftEmptyArrayStorage;
  v8 = 0;
  v9 = 0;
  if (!v6)
  {
    v12 = a1;
    goto LABEL_16;
  }

  v10 = a1;
  do
  {
    v11 = v10 <= a2;
    if (a3 > 0.0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      if (v8 & 1 | (v10 != a2))
      {
        goto LABEL_28;
      }

      v8 = 1;
      v12 = v10;
    }

    else
    {
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_29;
      }

      v12 = a1 + v9 * a3;
    }

    v20 = result;
    v15 = *(result + 2);
    v14 = *(result + 3);
    if (v15 >= v14 >> 1)
    {
      sub_100023884((v14 > 1), v15 + 1, 1);
      result = v20;
    }

    *(result + 2) = v15 + 1;
    *&result[8 * v15 + 32] = v10;
    v10 = v12;
    --v6;
  }

  while (v6);
  while (1)
  {
LABEL_16:
    v16 = v12 <= a2;
    if (a3 > 0.0)
    {
      v16 = v12 >= a2;
    }

    if (!v16)
    {
      break;
    }

    if ((v12 != a2) | v8 & 1)
    {
      return result;
    }

    v8 = 1;
    v17 = v12;
LABEL_23:
    v21 = result;
    v19 = *(result + 2);
    v18 = *(result + 3);
    if (v19 >= v18 >> 1)
    {
      sub_100023884((v18 > 1), v19 + 1, 1);
      result = v21;
    }

    *(result + 2) = v19 + 1;
    *&result[8 * v19 + 32] = v12;
    v12 = v17;
  }

  v13 = __OFADD__(v9++, 1);
  if (!v13)
  {
    v17 = a1 + v9 * a3;
    goto LABEL_23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000063B4(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v84 = a1;
  v73 = sub_100049088();
  v60 = *(v73 - 8);
  __chkstk_darwin(v73);
  v59 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100049098();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v69 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100049078();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v77 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000027D4(&qword_10005DC00, &qword_10004B7B0);
  __chkstk_darwin(v6 - 8);
  v55 = &v53 - v7;
  v8 = sub_1000027D4(&qword_10005DC08, &qword_10004B7B8);
  __chkstk_darwin(v8 - 8);
  v54 = &v53 - v9;
  v58 = sub_100048EB8();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v74 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  __chkstk_darwin(v11 - 8);
  v75 = &v53 - v12;
  v79 = sub_1000490D8();
  v13 = *(v79 - 1);
  __chkstk_darwin(v79);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100049058();
  v17 = *(v16 - 8);
  v18 = v17;
  v19 = __chkstk_darwin(v16);
  v85 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v53 - v22;
  v24 = __chkstk_darwin(v21);
  v56 = &v53 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v53 - v27;
  __chkstk_darwin(v26);
  v30 = &v53 - v29;
  sub_100048E88();
  sub_1000027D4(&qword_10005DA58, &qword_10004B648);
  v31 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v83 = *(v17 + 72);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10004B590;
  v33 = *(v18 + 16);
  v81 = v18 + 16;
  v82 = v31;
  v80 = v33;
  v33((v32 + v31), v30, v16);
  v66 = enum case for Calendar.Component.hour(_:);
  v34 = v13;
  v35 = *(v13 + 104);
  v64 = v13 + 104;
  v65 = v35;
  v36 = v15;
  v35(v15);
  sub_100048E88();
  v67 = sub_1000490E8();
  v76 = v18;
  v37 = *(v18 + 8);
  v37(v28, v16);
  v38 = *(v34 + 8);
  v62 = v34 + 8;
  v63 = v38;
  v39 = v79;
  v38(v36, v79);
  v61 = v36;
  v65(v36, v66, v39);
  sub_100048E68();
  v40 = v67 | sub_1000490E8();
  v37(v28, v16);
  v63(v61, v79);
  if (v40)
  {
    goto LABEL_5;
  }

  sub_100048E88();
  v41 = sub_1000490F8();
  (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
  v42 = sub_100049108();
  (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
  sub_100048EA8();
  (*(v68 + 104))(v77, enum case for Calendar.MatchingPolicy.nextTime(_:), v70);
  (*(v71 + 104))(v69, enum case for Calendar.RepeatedTimePolicy.first(_:), v72);
  v43 = v60;
  v44 = v59;
  (*(v60 + 104))(v59, enum case for Calendar.SearchDirection.forward(_:), v73);
  sub_1000490C8();
  (*(v43 + 8))(v44, v73);
  (*(v71 + 8))(v69, v72);
  (*(v68 + 8))(v77, v70);
  (*(v57 + 8))(v74, v58);
  v37(v28, v16);
  v45 = v76;
  if ((*(v76 + 48))(v75, 1, v16) != 1)
  {
    v79 = *(v76 + 32);
    v46 = v56;
    (v79)(v56, v75, v16);
    v80(v28, v46, v16);
    v32 = sub_1000231CC(1, 2, 1, v32);
    v37(v30, v16);
    *(v32 + 16) = 2;
    v47 = v79;
    (v79)(v32 + v82 + v83, v28, v16);
    v47(v30, v56, v16);
LABEL_5:
    v45 = v76;
    goto LABEL_6;
  }

  sub_100005664(v75, &qword_10005DC10, &qword_10004B7C0);
LABEL_6:
  for (i = (v45 + 32); ; (*i)(v32 + v82 + v51 * v83, v85, v16))
  {
    sub_100048E68();
    sub_100048FE8();
    v37(v23, v16);
    v49 = sub_100048FD8();
    v37(v28, v16);
    if ((v49 & 1) == 0)
    {
      break;
    }

    sub_100049018();
    v80(v85, v30, v16);
    v51 = *(v32 + 16);
    v50 = *(v32 + 24);
    if (v51 >= v50 >> 1)
    {
      v32 = sub_1000231CC((v50 > 1), v51 + 1, 1, v32);
    }

    *(v32 + 16) = v51 + 1;
  }

  v37(v30, v16);
  return v32;
}

double sub_100006EB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a6;
  v62 = a5;
  v68 = a1;
  v67 = a7;
  v10 = sub_1000027D4(&qword_10005DA68, &qword_10004B658);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_1000027D4(&qword_10005DA70, &qword_10004B660);
  v54 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v56 = sub_1000027D4(&qword_10005DA78, &qword_10004B668);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v49 - v16;
  v59 = sub_1000027D4(&qword_10005DA80, &qword_10004B670);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = &v49 - v17;
  v61 = sub_1000027D4(&qword_10005DA88, &qword_10004B678);
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v55 = &v49 - v18;
  v64 = sub_1000027D4(&qword_10005DA90, &qword_10004B680);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v49 - v19;
  v49 = a2;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_1000027D4(&qword_10005DA98, &qword_10004B688);
  sub_100009D0C();
  sub_100049418();
  sub_1000027D4(&qword_10005DAD8, &qword_10004B6B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10004B5A0;
  *(v20 + 32) = 0;
  sub_100005FCC();
  *(v20 + 40) = v21;
  *&v75 = v20;
  v22 = sub_1000494D8();
  v23 = *(v22 - 8);
  v50 = *(v23 + 56);
  v51 = v23 + 56;
  v50(v12, 1, 1, v22);
  v24 = sub_1000027D4(&qword_10005DAE0, &qword_10004B6B8);
  v25 = sub_100005708(&qword_10005DAE8, &qword_10005DA70, &qword_10004B660, &protocol conformance descriptor for Chart<A>);
  v26 = sub_100009F40(&qword_10005DAF0, &qword_10005DAE0, &qword_10004B6B8, &protocol witness table for Double);
  v27 = v52;
  sub_100049988();
  sub_100005664(v12, &qword_10005DA68, &qword_10004B658);

  (*(v54 + 8))(v15, v13);
  v70 = v49;
  v28 = sub_1000027D4(&qword_10005DAF8, &qword_10004B6C0);
  *&v75 = v13;
  *(&v75 + 1) = v24;
  *&v76 = v25;
  *(&v76 + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_100005708(&qword_10005DB00, &qword_10005DAF8, &qword_10004B6C0, &protocol conformance descriptor for AxisMarks<A>);
  v31 = v53;
  v32 = v56;
  sub_100049958();
  (*(v57 + 8))(v27, v32);
  v74 = v62;
  v50(v12, 1, 1, v22);
  v33 = sub_1000027D4(&qword_10005DB08, &qword_10004B6C8);
  *&v75 = v32;
  *(&v75 + 1) = v28;
  *&v76 = OpaqueTypeConformance2;
  *(&v76 + 1) = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_100009F40(&qword_10005DB10, &qword_10005DB08, &qword_10004B6C8, &protocol witness table for Date);
  v36 = v55;
  v37 = v59;
  sub_100049978();
  sub_100005664(v12, &qword_10005DA68, &qword_10004B658);
  (*(v60 + 8))(v31, v37);
  v69 = v66;
  v38 = sub_1000027D4(&qword_10005DB18, &qword_10004B6D0);
  *&v75 = v37;
  *(&v75 + 1) = v33;
  *&v76 = v34;
  *(&v76 + 1) = v35;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_100005708(&qword_10005DB20, &qword_10005DB18, &qword_10004B6D0, &protocol conformance descriptor for AxisMarks<A>);
  v41 = v58;
  v42 = v61;
  sub_100049948();
  (*(v63 + 8))(v36, v42);
  *&v75 = v42;
  *(&v75 + 1) = v38;
  *&v76 = v39;
  *(&v76 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v67;
  v44 = v64;
  sub_100049968();
  (*(v65 + 8))(v41, v44);
  v45 = (v43 + *(sub_1000027D4(&qword_10005DB28, &qword_10004B6D8) + 36));
  sub_1000027D4(&qword_10005DB30, &qword_10004B6E0);
  sub_1000495A8();
  *v45 = swift_getKeyPath();
  sub_100049538();
  sub_100049538();
  sub_100049B68();
  sub_100049528();
  v46 = (v43 + *(sub_1000027D4(&qword_10005DB38, &qword_10004B718) + 36));
  v47 = v76;
  *v46 = v75;
  v46[1] = v47;
  result = *&v77;
  v46[2] = v77;
  return result;
}

uint64_t sub_100007804(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for ScreenTimeWidgetGraph(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v12[1] = *(a1 + *(__chkstk_darwin(v6 - 8) + 28));
  sub_10000A418(a1, v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScreenTimeWidgetGraph);
  v9 = (*(v7 + 80) + 25) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_10000A924(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ScreenTimeWidgetGraph);

  sub_1000027D4(&qword_10005DBA8, &qword_10004B758);
  sub_100048E98();
  sub_1000027D4(&qword_10005DAB0, &qword_10004B690);
  sub_100005708(&qword_10005DBB0, &qword_10005DBA8, &qword_10004B758, &protocol conformance descriptor for [A]);
  sub_100009D90();
  sub_10000AB04(&qword_10005DBB8, type metadata accessor for HourlyUsage, &unk_10004C990);
  return sub_100049B08();
}

uint64_t sub_100007A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v32 = a5;
  v8 = type metadata accessor for ScreenTimeWidgetGraph(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = type metadata accessor for HourlyUsage(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v15 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = sub_100004EC0(*(a1 + *(v14 + 36)));
  KeyPath = swift_getKeyPath();
  sub_10000A418(a1, v15, type metadata accessor for HourlyUsage);
  sub_10000A418(a4, &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ScreenTimeWidgetGraph);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v9 + 80) + v17 + 9) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_10000A924(v15, v19 + v16, type metadata accessor for HourlyUsage);
  v20 = v19 + v17;
  *v20 = a2;
  *(v20 + 8) = v30;
  sub_10000A924(&v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18, type metadata accessor for ScreenTimeWidgetGraph);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10000A98C;
  *(v21 + 24) = v19;
  sub_1000027D4(&qword_10005DBC8, &qword_10004B788);
  sub_1000027D4(&qword_10005DBD0, &qword_10004B790);
  sub_100005708(&qword_10005DBD8, &qword_10005DBC8, &qword_10004B788, &protocol conformance descriptor for [A]);
  v22 = sub_100003634(&qword_10005DAB8, &qword_10004B698);
  v23 = sub_100003634(&qword_10005DAC0, &qword_10004B6A0);
  v33 = sub_100049438();
  v34 = &type metadata for Color;
  v35 = &protocol witness table for BarMark;
  v36 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_100003634(&qword_10005DAC8, &qword_10004B6A8);
  v26 = sub_100005708(&qword_10005DAD0, &qword_10005DAC8, &qword_10004B6A8, &protocol conformance descriptor for PlaceholderContentView<A>);
  v33 = v25;
  v34 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v33 = v22;
  v34 = v23;
  v35 = OpaqueTypeConformance2;
  v36 = v27;
  swift_getOpaqueTypeConformance2();
  return sub_100049B18();
}

uint64_t sub_100007E1C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v32 = a5;
  v33 = a6;
  v36 = a4;
  v35 = a3;
  v37 = a1;
  v9 = sub_1000027D4(&qword_10005DBE0, &qword_10004B798);
  __chkstk_darwin(v9 - 8);
  v34 = &v26 - v10;
  v11 = sub_1000027D4(&qword_10005DBE8, &unk_10004B7A0);
  __chkstk_darwin(v11 - 8);
  v12 = sub_100049438();
  v27 = *(v12 - 8);
  v28 = v12;
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000027D4(&qword_10005DAB8, &qword_10004B698);
  v30 = *(v15 - 8);
  v31 = v15;
  __chkstk_darwin(v15);
  v29 = &v26 - v16;
  sub_100049748();
  v17 = type metadata accessor for HourlyUsage(0);
  sub_100049058();
  sub_10000AB04(&qword_10005DBF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100049388();

  sub_100049748();
  v38 = *(a2 + *(v17 + 20)) * a7;
  sub_100049398();

  result = sub_100049428();
  if (qword_10005D690 == -1)
  {
    v19 = v37;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = swift_once();
  v19 = v37;
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(qword_100060280 + 16) > v19)
  {
    v38 = *(qword_100060280 + 8 * v19 + 32);
    v20 = *&v28;
    v21 = v29;
    sub_1000492F8();
    v22 = (*(v27 + 8))(v14, COERCE_DOUBLE(*&v20));
    __chkstk_darwin(v22);
    sub_1000027D4(&qword_10005DAC0, &qword_10004B6A0);
    v38 = v20;
    v39 = &type metadata for Color;
    v40 = &protocol witness table for BarMark;
    v41 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    *&v23 = COERCE_DOUBLE(sub_100003634(&qword_10005DAC8, &qword_10004B6A8));
    v24 = sub_100005708(&qword_10005DAD0, &qword_10005DAC8, &qword_10004B6A8, &protocol conformance descriptor for PlaceholderContentView<A>);
    v38 = *&v23;
    v39 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v31;
    sub_100049308();
    return (*(v30 + 8))(v21, v25);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100008364()
{
  v0 = sub_100049C78();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  sub_100005DE4(&v9 - v5);
  sub_100049C68();
  sub_100049C58();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  sub_1000027D4(&qword_10005DAC8, &qword_10004B6A8);
  sub_100005708(&qword_10005DAD0, &qword_10005DAC8, &qword_10004B6A8, &protocol conformance descriptor for PlaceholderContentView<A>);
  return sub_100049998();
}

uint64_t sub_1000084EC(uint64_t a1)
{
  v2 = sub_1000493B8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100049358();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for ScreenTimeWidgetGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  result = sub_100005FCC();
  if (v8 * 0.5 == 0.0)
  {
    __break(1u);
  }

  else
  {
    sub_1000061D4(0.0, v8, v8 * 0.5);
    sub_10000A418(a1, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ScreenTimeWidgetGraph);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    sub_10000A924(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for ScreenTimeWidgetGraph);
    sub_100049348();
    sub_1000493A8();
    sub_1000027D4(&qword_10005DB70, &qword_10004B738);
    sub_10000A260();
    return sub_1000494B8();
  }

  return result;
}

uint64_t sub_10000872C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = sub_1000027D4(&qword_10005DB90, &qword_10004B748) - 8;
  __chkstk_darwin(v43);
  v42 = &v37 - v5;
  v41 = sub_1000492E8();
  v37 = *(v41 - 8);
  v6 = v37;
  v7 = __chkstk_darwin(v41);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = sub_1000493D8();
  __chkstk_darwin(v11 - 8);
  v12 = sub_100049408();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000027D4(&qword_10005DB88, &qword_10004B740);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v45 = a1;
  v46 = a2;
  sub_1000493F8();
  sub_1000493C8();
  sub_1000027D4(&qword_10005DB98, &qword_10004B750);
  sub_10000A328();
  v20 = v19;
  v39 = v19;
  sub_100049378();
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v21 = v10;
  v38 = v10;
  sub_1000492D8();
  v22 = *(v14 + 16);
  v23 = v17;
  v22(v17, v20, v13);
  v24 = *(v6 + 16);
  v25 = v40;
  v26 = v21;
  v27 = v41;
  v24(v40, v26, v41);
  sub_100005708(&qword_10005DB80, &qword_10005DB88, &qword_10004B740, &protocol conformance descriptor for AxisValueLabel<A>);
  v28 = v42;
  v22(v42, v23, v13);
  v29 = v43;
  v30 = *(v43 + 56);
  v24(&v28[v30], v25, v27);
  v31 = v44;
  (*(v14 + 32))(v44, v28, v13);
  v32 = *(v29 + 56);
  v33 = v37;
  (*(v37 + 32))(v31 + v32, &v28[v30], v27);
  v34 = *(v33 + 8);
  v34(v38, v27);
  v35 = *(v14 + 8);
  v35(v39, v13);
  v34(v25, v27);
  return (v35)(v23, v13);
}

uint64_t sub_100008BC0@<X0>(uint64_t *a1@<X8>)
{
  sub_1000494C8();
  if (v18)
  {
    result = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = sub_100005FCC();
    if (v17 != 0.0)
    {
      v10 = v9;
      v11 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      v12 = v11;
      if (v10 > 3600.0)
      {
        v13 = 32;
      }

      else
      {
        v13 = 64;
      }

      [v11 setAllowedUnits:v13];
      [v12 setUnitsStyle:1];
      v14 = [v12 stringFromTimeInterval:v17];
      if (v14)
      {
        v15 = v14;
        sub_100049E08();
      }

      else
      {
      }
    }

    sub_100005540(v6, v7, v8);
    result = sub_100049938();
    v4 = v16 & 1;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100008D2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000027D4(&qword_10005DB68, &qword_10004B730);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_1000027D4(&qword_10005DB58, &qword_10004B728);
  sub_100005708(&qword_10005DB50, &qword_10005DB58, &qword_10004B728, &protocol conformance descriptor for AxisValueLabel<A>);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = sub_1000492E8();
  v11 = *(v5 + 56);
  v19 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  v13 = sub_100049478();
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v14], v15, v13);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v19], v10);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v7[v14], v13);
}

uint64_t sub_100008F6C(uint64_t a1)
{
  v1 = sub_1000493B8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100049358();
  __chkstk_darwin(v2 - 8);

  sub_100049348();
  sub_1000493A8();
  sub_1000027D4(&qword_10005DB40, &qword_10004B720);
  sub_100049058();
  sub_100009FB8();
  return sub_1000494B8();
}

uint64_t sub_1000090B4@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_100049458();
  __chkstk_darwin(v1 - 8);
  v59 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100049478();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = __chkstk_darwin(v3);
  v65 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v47 - v6;
  v58 = sub_1000492E8();
  v55 = *(v58 - 8);
  v7 = __chkstk_darwin(v58);
  v64 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v47 - v9;
  v10 = sub_1000493D8();
  __chkstk_darwin(v10 - 8);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100049408();
  __chkstk_darwin(v12 - 8);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100048F88();
  v14 = *(v51 - 8);
  __chkstk_darwin(v51);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100048F98();
  v17 = *(v50 - 8);
  __chkstk_darwin(v50);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100048FA8();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v52 = sub_1000027D4(&qword_10005DB58, &qword_10004B728);
  v63 = *(v52 - 8);
  v25 = __chkstk_darwin(v52);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v47 - v28;
  sub_100048E38();
  sub_100048F78();
  sub_100048F68();
  (*(v14 + 8))(v16, v51);
  sub_100048F58();
  (*(v17 + 8))(v19, v50);
  (*(v21 + 8))(v24, v20);
  sub_1000493E8();
  sub_1000493C8();
  sub_10000AB04(&qword_10005DB60, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  v48 = v29;
  sub_100049368();
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v30 = v56;
  sub_1000492D8();
  sub_100049448();
  v31 = v57;
  sub_100049468();
  v32 = *(v63 + 16);
  v49 = v27;
  v33 = v52;
  v32(v27, v29, v52);
  v66[0] = v27;
  v34 = v55;
  v35 = v64;
  v36 = v30;
  v37 = v58;
  (*(v55 + 16))(v64, v30, v58);
  v66[1] = v35;
  v39 = v60;
  v38 = v61;
  v40 = v65;
  (*(v60 + 16))(v65, v31, v61);
  v66[2] = v40;
  sub_100008D2C(v66, v62);
  v41 = *(v39 + 8);
  v42 = v31;
  v43 = v38;
  v41(v42, v38);
  v44 = *(v34 + 8);
  v44(v36, v37);
  v45 = *(v63 + 8);
  v45(v48, v33);
  v41(v65, v43);
  v44(v64, v37);
  return (v45)(v49, v33);
}

uint64_t sub_1000097F8@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v2;
  v24 = a2;
  v4 = a1 - 8;
  v23 = *(a1 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(a1);
  v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000490F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000027D4(&qword_10005DA58, &qword_10004B648);
  sub_100049058();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10004B5A0;
  v11 = *(v4 + 32);
  sub_100048E88();
  sub_100048E68();
  sub_1000490B8();
  v12 = sub_1000063B4(v2 + v11, v9);
  (*(v7 + 8))(v9, v6);
  v13 = v22;
  sub_10000A418(v3, v22, type metadata accessor for ScreenTimeWidgetGraph);
  v14 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v15 = (v14 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  result = sub_10000A924(v13, v17 + v14, type metadata accessor for ScreenTimeWidgetGraph);
  v19 = v17 + v15;
  *v19 = 0x4018000000000000;
  *(v19 + 8) = 0;
  *(v17 + v16) = v10;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v20 = v24;
  *v24 = sub_100009C34;
  v20[1] = v17;
  return result;
}

uint64_t sub_100009AB4()
{
  v1 = type metadata accessor for ScreenTimeWidgetGraph(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_100049C78();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  v7 = sub_100048E98();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, ((((v4 + v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

double sub_100009C34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreenTimeWidgetGraph(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v2 + v8;
  v11 = *v10;
  v12 = *(v2 + v9);
  v13 = *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v10 + 8);

  return sub_100006EB4(a1, v2 + v6, v11, v14, v12, v13, a2);
}

unint64_t sub_100009D0C()
{
  result = qword_10005DAA0;
  if (!qword_10005DAA0)
  {
    sub_100003634(&qword_10005DA98, &qword_10004B688);
    sub_100009D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DAA0);
  }

  return result;
}

unint64_t sub_100009D90()
{
  result = qword_10005DAA8;
  if (!qword_10005DAA8)
  {
    sub_100003634(&qword_10005DAB0, &qword_10004B690);
    sub_100003634(&qword_10005DAB8, &qword_10004B698);
    sub_100003634(&qword_10005DAC0, &qword_10004B6A0);
    sub_100049438();
    swift_getOpaqueTypeConformance2();
    sub_100003634(&qword_10005DAC8, &qword_10004B6A8);
    sub_100005708(&qword_10005DAD0, &qword_10005DAC8, &qword_10004B6A8, &protocol conformance descriptor for PlaceholderContentView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DAA8);
  }

  return result;
}

uint64_t sub_100009F40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003634(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100009FB8()
{
  result = qword_10005DB48;
  if (!qword_10005DB48)
  {
    sub_100003634(&qword_10005DB40, &qword_10004B720);
    sub_100005708(&qword_10005DB50, &qword_10005DB58, &qword_10004B728, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DB48);
  }

  return result;
}

uint64_t sub_10000A084()
{
  v1 = type metadata accessor for ScreenTimeWidgetGraph(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_100049C78();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  v7 = sub_100048E98();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreenTimeWidgetGraph(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000872C(a1, v6, a2);
}

unint64_t sub_10000A260()
{
  result = qword_10005DB78;
  if (!qword_10005DB78)
  {
    sub_100003634(&qword_10005DB70, &qword_10004B738);
    sub_100005708(&qword_10005DB80, &qword_10005DB88, &qword_10004B740, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DB78);
  }

  return result;
}

unint64_t sub_10000A328()
{
  result = qword_10005DBA0;
  if (!qword_10005DBA0)
  {
    sub_100003634(&qword_10005DB98, &qword_10004B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DBA0);
  }

  return result;
}

uint64_t sub_10000A3A4(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10000A418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A480(uint64_t a1)
{
  v2 = type metadata accessor for HourlyUsage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A4DC()
{
  v1 = type metadata accessor for ScreenTimeWidgetGraph(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_100049C78();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  v7 = sub_100048E98();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreenTimeWidgetGraph(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_100007A28(a1, v6, v7, v8, a2);
}

uint64_t sub_10000A6C0()
{
  v1 = v0;
  v2 = (type metadata accessor for HourlyUsage(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for ScreenTimeWidgetGraph(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7 + 9) & ~v7;
  v17 = *(*(v6 - 8) + 64);
  v9 = v1 + v4;
  v10 = sub_100048E98();
  v11 = (*(v10 - 8) + 8);
  v16 = *v11;
  (*v11)(v9, v10);
  v12 = v2[8];
  v13 = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
  (*(*(v13 - 8) + 8))(v9 + v12, v13);

  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_100049C78();
    (*(*(v14 - 8) + 8))(v1 + v8, v14);
  }

  else
  {
  }

  v16(v1 + v8 + *(v6 + 24), v10);

  return _swift_deallocObject(v1, v8 + v17, v3 | v7 | 7);
}

uint64_t sub_10000A924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A98C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = *(type metadata accessor for HourlyUsage(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for ScreenTimeWidgetGraph(0) - 8);
  v11 = *(v3 + v9);
  v12 = *(v3 + v9 + 8);
  v13 = v3 + ((v9 + *(v10 + 80) + 9) & ~*(v10 + 80));

  return sub_100007E1C(a1, v3 + v8, v11, v12, v13, a2, a3);
}

uint64_t sub_10000AA98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AB04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000AB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000AC08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10000AC70()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005DC28);
  sub_1000143C0(v0, qword_10005DC28);
  return sub_1000492B8();
}

void sub_10000ACF0(unint64_t a1)
{
  sub_10000AE58(a1);
  v4 = v3 >> 1;
  v5 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v5)
  {
LABEL_12:
    swift_unknownObjectRelease();
    sub_100018840(_swiftEmptyArrayStorage);

    return;
  }

  v6 = v1;
  v7 = v2;
  sub_1000238A4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v7 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 - v7;
    v10 = (v6 + 8 * v7);
    while (v9)
    {
      v11 = *v10;
      v12 = [v11 identifier];
      v13 = sub_100049E08();
      v15 = v14;

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000238A4((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      --v9;
      ++v10;
      if (!--v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_10000AE58(unint64_t a1)
{
  v3 = *v1;
  v20 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10004A308())
  {
    v19 = a1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10004A1F8();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      a1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 type] == 1 || objc_msgSend(v7, "type") == 2)
      {
        sub_10004A218();
        sub_10004A258();
        sub_10004A268();
        sub_10004A228();
      }

      else
      {
      }

      ++v5;
      if (a1 == i)
      {
        v8 = v20;
        a1 = v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_19:

  v20 = sub_100016620(v9);
  sub_100015048(&v20);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_41:
    v17 = sub_10004A308();
    if (sub_10004A308() < 0)
    {
LABEL_52:
      __break(1u);

      __break(1u);
      return result;
    }

    if (v17 >= a1)
    {
      v18 = a1;
    }

    else
    {
      v18 = v17;
    }

    if (v17 < 0)
    {
      v18 = a1;
    }

    if (a1)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

    if (sub_10004A308() >= v12)
    {
      goto LABEL_31;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = v20;
  LODWORD(i) = v20 < 0 || (v20 & 0x4000000000000000) != 0;
  if (i)
  {
    goto LABEL_41;
  }

  v10 = *(v20 + 16);
  if (v10 >= a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = *(v20 + 16);
  }

  if (a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10 < v12)
  {
    goto LABEL_51;
  }

LABEL_31:
  if ((v8 & 0xC000000000000001) != 0 && v12)
  {
    sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_10004A1E8(v13);
      v13 = v14;
    }

    while (v12 != v14);
  }

  else
  {
  }

  if (i)
  {
    v15 = sub_10004A318();

    return v15;
  }

  return v8;
}

uint64_t sub_10000B12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000055FC(a1, &v9, &qword_10005DD80, &qword_10004B888);
  if (v10)
  {
    sub_10001435C(&v9, &v11);
  }

  else
  {
    v12 = &type metadata for ScreenTimeAppInfoCache;
    v13 = &off_100059D78;
  }

  sub_10001435C(&v11, v3 + 16);
  sub_1000055FC(a2, &v9, &qword_10005DD88, &unk_10004B890);
  if (v10)
  {
    sub_10001435C(&v9, &v11);
  }

  else
  {
    v12 = &type metadata for ScreenTimeIconCache;
    v13 = &off_100059D50;
  }

  sub_10001435C(&v11, v3 + 56);
  sub_1000055FC(a3, &v9, &qword_10005DD90, &unk_10004C8D0);
  if (v10)
  {
    sub_100005664(a3, &qword_10005DD90, &unk_10004C8D0);
    sub_100005664(a2, &qword_10005DD88, &unk_10004B890);
    sub_100005664(a1, &qword_10005DD80, &qword_10004B888);
    sub_10001435C(&v9, &v11);
  }

  else
  {
    if (qword_10005D6C0 != -1)
    {
      swift_once();
    }

    v7 = qword_100060290;
    v12 = type metadata accessor for XPCPersistentStoreManager();
    v13 = &off_10005AA70;
    *&v11 = v7;

    sub_100005664(a3, &qword_10005DD90, &unk_10004C8D0);
    sub_100005664(a2, &qword_10005DD88, &unk_10004B890);
    sub_100005664(a1, &qword_10005DD80, &qword_10004B888);
    if (v10)
    {
      sub_100005664(&v9, &qword_10005DD90, &unk_10004C8D0);
    }
  }

  sub_10001435C(&v11, v3 + 96);
  return v3;
}

uint64_t sub_10000B35C()
{
  v7 = sub_10004A0E8();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10004A0C8();
  __chkstk_darwin(v3);
  v4 = sub_100049BE8();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10001B134(0, &qword_10005DDC8, OS_dispatch_queue_ptr);
  sub_100049BD8();
  v8 = _swiftEmptyArrayStorage;
  sub_10001B1D0(&qword_10005DF20, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000027D4(&qword_10005DF28, qword_10004B920);
  sub_100005708(&qword_10005DF30, &qword_10005DF28, qword_10004B920, &protocol conformance descriptor for [A]);
  sub_10004A178();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_10004A118();
  qword_100060288 = result;
  return result;
}

uint64_t sub_10000B5D0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t), double a9, double a10)
{
  v26 = a7;
  v27 = a8;
  v25 = a6;
  v14 = a3;
  v17 = sub_1000027D4(&qword_10005DEF0, &unk_10004B910);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25 - v19;
  sub_10001A938(a2 + 96, v28);
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = swift_allocObject();
  (*(v18 + 32))(v22 + v21, v20, v17);
  v23 = sub_1000028DC(v28, v28[3]);
  sub_1000168F0(v14, a4, a5, v25, v26, v27, *v23, sub_10001AA30, a9, a10, v22, a2);

  return sub_100002890(v28);
}

uint64_t sub_10000B78C(uint64_t a1)
{
  v2 = type metadata accessor for UsageTimelineEntry(0);
  __chkstk_darwin(v2 - 8);
  sub_10001B218(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageTimelineEntry);
  sub_1000027D4(&qword_10005DEF0, &unk_10004B910);
  return sub_100049FA8();
}

uint64_t sub_10000B840(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double a8, double a9)
{
  v91 = a7;
  v84 = a6;
  v89 = a4;
  v92 = a3;
  v93 = a2;
  v13 = sub_100049CB8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000490F8();
  v100 = *(v17 - 8);
  v101 = v17;
  v18 = __chkstk_darwin(v17);
  v99 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v96 = (&v83 - v20);
  v105 = sub_100049058();
  v88 = *(v105 - 8);
  v21 = __chkstk_darwin(v105);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v98 = &v83 - v25;
  __chkstk_darwin(v24);
  v95 = (&v83 - v26);
  v27 = sub_100048E98();
  v103 = *(v27 - 8);
  v104 = v27;
  v28 = __chkstk_darwin(v27);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v102 = &v83 - v31;
  v32 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v33 = __chkstk_darwin(v32 - 8);
  v94 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v83 - v35;
  v37 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v38 = __chkstk_darwin(v37 - 8);
  v85 = &v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v106 = &v83 - v40;
  v97 = type metadata accessor for UsageTimelineEntry(0);
  v41 = __chkstk_darwin(v97);
  v43 = &v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v87 = &v83 - v44;
  swift_beginAccess();
  *(a1 + 16) = 1;
  if (qword_10005D698 != -1)
  {
    swift_once();
  }

  v45 = sub_1000492C8();
  sub_1000143C0(v45, qword_10005DC28);
  v46 = sub_1000492A8();
  v47 = sub_10004A088();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v83 = v16;
    *v48 = 134349056;
    *(v48 + 4) = 20;
    _os_log_impl(&_mh_execute_header, v46, v47, "Failed to return widget data in %{public}ld seconds. Returning placeholder", v48, 0xCu);
    v16 = v83;
  }

  v49 = v88;
  (*(v88 + 56))(v106, 1, 1, v105);
  (*(v103 + 56))(v36, 1, 1, v104);
  sub_100049038();
  sub_1000490B8();
  (*(v14 + 16))(v16, v84, v13);
  v50 = (*(v14 + 88))(v16, v13);
  v51 = v98;
  v90 = v30;
  v86 = v36;
  if (v50 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_6;
  }

  if (v50 == enum case for WidgetFamily.systemMedium(_:))
  {
    v52 = a5;
    v53 = v102;
    v54 = 15;
    goto LABEL_9;
  }

  if (v50 == enum case for WidgetFamily.systemLarge(_:) || v50 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v52 = a5;
    v56 = v95;
    v55 = v96;
    sub_10001C284(v95, v102);
    goto LABEL_10;
  }

  if (v50 == enum case for WidgetFamily.accessoryCircular(_:) || v50 == enum case for WidgetFamily.accessoryRectangular(_:) || v50 == enum case for WidgetFamily.accessoryInline(_:))
  {
LABEL_6:
    v52 = a5;
    v53 = v102;
    v54 = 9;
LABEL_9:
    v56 = v95;
    v55 = v96;
    sub_100022910(v54, v95, v96, v53);
LABEL_10:
    v96 = *(v100 + 8);
    (v96)(v55, v101);
    v57 = v105;
    v95 = *(v49 + 8);
    (v95)(v56, v105);
    goto LABEL_11;
  }

  v52 = a5;
  v81 = v95;
  v80 = v96;
  sub_10001C284(v95, v102);
  v96 = *(v100 + 8);
  (v96)(v80, v101);
  v82 = v13;
  v57 = v105;
  v95 = *(v49 + 8);
  (v95)(v81, v105);
  (*(v14 + 8))(v16, v82);
LABEL_11:
  sub_100049038();
  sub_1000490B8();
  *v43 = 0;
  v58 = v85;
  sub_1000055FC(v106, v85, &qword_10005DC10, &qword_10004B7C0);
  v59 = *(v49 + 48);
  v60 = v59(v58, 1, v57);
  v61 = v104;
  v62 = v51;
  v63 = v94;
  if (v60 == 1)
  {
    (*(v49 + 16))(v23, v62, v57);
    if (v59(v58, 1, v57) != 1)
    {
      sub_100005664(v58, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(v49 + 32))(v23, v58, v57);
  }

  v64 = v97;
  v65 = &v43[v97[6]];
  v66 = &v43[v97[8]];
  (*(v49 + 32))(&v43[v97[5]], v23, v57);
  *v65 = 0;
  v65[1] = 0;
  v67 = &v43[v64[7]];
  *v67 = a8;
  v67[1] = a9;
  *v66 = v89;
  v66[1] = v52;
  v68 = v86;
  sub_1000055FC(v86, v63, &qword_10005DE00, &qword_10004B8D8);
  v69 = v103;
  v70 = *(v103 + 48);
  if (v70(v63, 1, v61) == 1)
  {

    v71 = v90;
    v72 = v98;
    v73 = v99;
    sub_10001C284(v98, v90);
    (v96)(v73, v101);
    v74 = v94;
    (v95)(v72, v105);
    sub_100005664(v68, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v106, &qword_10005DC10, &qword_10004B7C0);
    if (v70(v74, 1, v61) != 1)
    {
      sub_100005664(v74, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {

    (v96)(v99, v101);
    (v95)(v98, v57);
    sub_100005664(v68, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v106, &qword_10005DC10, &qword_10004B7C0);
    v71 = v90;
    (*(v69 + 32))(v90, v63, v61);
  }

  v75 = v97;
  v76 = v97[18];
  v77 = *(v69 + 32);
  v77(&v43[v97[9]], v71, v61);
  v77(&v43[v75[10]], v102, v61);
  *&v43[v75[11]] = _swiftEmptyArrayStorage;
  v43[v75[12]] = v91 & 1;
  *&v43[v75[13]] = _swiftEmptyArrayStorage;
  v43[v75[14]] = 0;
  v43[v75[15]] = 0;
  *&v43[v75[16]] = _swiftEmptyArrayStorage;
  *&v43[v75[17]] = 0;
  *&v43[v76] = 0;
  v78 = v87;
  sub_10001A5E0(v43, v87, type metadata accessor for UsageTimelineEntry);
  v93(v78);
  return sub_10001AAAC(v78, type metadata accessor for UsageTimelineEntry);
}

uint64_t sub_10000C3B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, void (*a12)(void), uint64_t a13)
{
  v269 = a7;
  v267 = a6;
  v258 = a5;
  v268 = a4;
  v262 = a3;
  v260 = a2;
  v266 = a1;
  v261 = a13;
  v263 = a12;
  v16 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v17 = __chkstk_darwin(v16 - 8);
  v224 = v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v228 = v213 - v20;
  v21 = __chkstk_darwin(v19);
  v223 = v213 - v22;
  __chkstk_darwin(v21);
  v227 = v213 - v23;
  v24 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v25 = __chkstk_darwin(v24 - 8);
  v220 = v213 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v243 = v213 - v28;
  v29 = __chkstk_darwin(v27);
  v216 = v213 - v30;
  __chkstk_darwin(v29);
  v242 = v213 - v31;
  v253 = sub_1000490F8();
  v252 = *(v253 - 8);
  v32 = __chkstk_darwin(v253);
  v241 = v213 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v214 = v213 - v35;
  v36 = __chkstk_darwin(v34);
  v237 = v213 - v37;
  __chkstk_darwin(v36);
  v233 = v213 - v38;
  v245 = sub_100049058();
  v244 = *(v245 - 8);
  v39 = __chkstk_darwin(v245);
  v217 = v213 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v238 = v213 - v42;
  v43 = __chkstk_darwin(v41);
  v234 = v213 - v44;
  v45 = __chkstk_darwin(v43);
  v215 = v213 - v46;
  v47 = __chkstk_darwin(v45);
  v235 = v213 - v48;
  __chkstk_darwin(v47);
  v232 = v213 - v49;
  v255 = sub_100048E98();
  v254 = *(v255 - 8);
  v50 = __chkstk_darwin(v255);
  v221 = v213 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v240 = v213 - v53;
  v54 = __chkstk_darwin(v52);
  v248 = v213 - v55;
  v56 = __chkstk_darwin(v54);
  v218 = v213 - v57;
  v58 = __chkstk_darwin(v56);
  v236 = v213 - v59;
  __chkstk_darwin(v58);
  v246 = v213 - v60;
  v256 = type metadata accessor for UsageTimelineEntry(0);
  v61 = __chkstk_darwin(v256);
  v249 = (v213 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __chkstk_darwin(v61);
  v222 = v213 - v64;
  v65 = __chkstk_darwin(v63);
  v247 = v213 - v66;
  __chkstk_darwin(v65);
  v219 = v213 - v67;
  v251 = type metadata accessor for UsageData(0);
  v250 = *(v251 - 1);
  __chkstk_darwin(v251);
  v239 = v213 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  v70 = __chkstk_darwin(v69 - 8);
  v229 = v213 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v257 = v213 - v72;
  v73 = sub_100049CB8();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  v76 = __chkstk_darwin(v73);
  v226 = v213 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v76);
  v225 = v213 - v78;
  v79 = __chkstk_darwin(v77);
  v81 = v213 - v80;
  __chkstk_darwin(v79);
  v83 = v213 - v82;
  v84 = *(v74 + 16);
  v84(v213 - v82, a11, v73);
  v259 = v81;
  v231 = v74 + 16;
  v230 = v84;
  v84(v81, v83, v73);
  v85 = (*(v74 + 80) + 40) & ~*(v74 + 80);
  v86 = v85 + v75;
  v87 = (v85 + v75) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 31) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  v90[2] = v269;
  v90[3] = a8;
  v91 = v266;
  v90[4] = v266;
  v264 = v74;
  v265 = v73;
  v92 = v74;
  v93 = v90;
  (*(v92 + 32))(v90 + v85, v83, v73);
  LOBYTE(v73) = v260;
  *(v93 + v86) = v260;
  v94 = (v93 + v87);
  v95 = v261;
  v94[1] = a9;
  v94[2] = a10;
  v96 = (v93 + v88);
  v98 = v262;
  v97 = v263;
  v99 = v268;
  *v96 = v262;
  v96[1] = v99;
  v100 = (v93 + v89);
  *v100 = v97;
  v100[1] = v95;
  sub_10001A938(v91 + 96, v271);
  v101 = sub_1000028DC(v271, v271[3]);
  v102 = swift_allocObject();
  *(v102 + 16) = sub_10001AF4C;
  *(v102 + 24) = v93;
  *(v102 + 32) = v73;
  *(v102 + 40) = v98;
  *(v102 + 48) = v99;
  v103 = v258;
  *(v102 + 56) = v91;
  *(v102 + 64) = v103;
  *(v102 + 72) = v267;
  v104 = *v101;
  v105 = v269;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1000345C4();
  if (*(v104 + 24) != 1)
  {
LABEL_4:
    v258 = a8;
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v110 = sub_1000492C8();
    sub_1000143C0(v110, qword_10005DC28);
    v111 = sub_1000492A8();
    v112 = sub_10004A088();
    v113 = os_log_type_enabled(v111, v112);
    v114 = v257;
    v115 = v250;
    if (v113)
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Since persistence stores can't be loaded, no usage data can be retrieved.", v116, 2u);
    }

    v117 = v251;
    v115[7](v114, 1, 1, v251);
    swift_beginAccess();
    if (*(v105 + 16))
    {
      goto LABEL_47;
    }

    v260 &= 1u;
    sub_100049C28();
    v118 = v229;
    sub_1000055FC(v114, v229, &qword_10005DD98, &unk_10004B8A0);
    v119 = (v115[6])(v118, 1, v117);
    v213[1] = v93;
    if (v119 == 1)
    {
      sub_100005664(v118, &qword_10005DD98, &unk_10004B8A0);
      sub_100049038();
      sub_1000490B8();
      v120 = v225;
      v121 = v265;
      v230(v225, v259, v265);
      v122 = (*(v264 + 88))(v120, v121);
      v123 = v245;
      v124 = v244;
      v125 = v235;
      v126 = v215;
      if (v122 != enum case for WidgetFamily.systemSmall(_:))
      {
        if (v122 == enum case for WidgetFamily.systemMedium(_:))
        {
          v127 = v246;
          v128 = 15;
          goto LABEL_18;
        }

        if (v122 == enum case for WidgetFamily.systemLarge(_:) || v122 == enum case for WidgetFamily.systemExtraLarge(_:))
        {
          v143 = v232;
          v144 = v233;
          sub_10001C284(v232, v246);
          goto LABEL_19;
        }

        if (v122 != enum case for WidgetFamily.accessoryCircular(_:) && v122 != enum case for WidgetFamily.accessoryRectangular(_:) && v122 != enum case for WidgetFamily.accessoryInline(_:))
        {
          v210 = v232;
          v211 = v233;
          sub_10001C284(v232, v246);
          v251 = *(v252 + 8);
          (v251)(v211, v253);
          v250 = *(v124 + 8);
          (v250)(v210, v123);
          (*(v264 + 8))(v225, v265);
          goto LABEL_20;
        }
      }

      v127 = v246;
      v128 = 9;
LABEL_18:
      v143 = v232;
      v144 = v233;
      sub_100022910(v128, v232, v233, v127);
LABEL_19:
      v251 = *(v252 + 8);
      (v251)(v144, v253);
      v250 = *(v124 + 8);
      (v250)(v143, v123);
LABEL_20:
      v145 = sub_1000492A8();
      v146 = sub_10004A0A8();
      v147 = os_log_type_enabled(v145, v146);
      v148 = v227;
      if (v147)
      {
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&_mh_execute_header, v145, v146, "getCoreDataEntry returning placeholder", v149, 2u);
      }

      v150 = v242;
      (*(v124 + 56))(v242, 1, 1, v123);
      v151 = v254;
      v152 = v255;
      (*(v254 + 56))(v148, 1, 1, v255);
      (*(v151 + 16))(v236, v246, v152);
      sub_100049038();
      sub_1000490B8();
      *v247 = 0;
      v153 = v150;
      v154 = v216;
      sub_1000055FC(v153, v216, &qword_10005DC10, &qword_10004B7C0);
      v155 = *(v124 + 48);
      if (v155(v154, 1, v123) == 1)
      {
        (*(v124 + 16))(v126, v125, v123);
        if (v155(v154, 1, v123) != 1)
        {
          sub_100005664(v154, &qword_10005DC10, &qword_10004B7C0);
        }
      }

      else
      {
        (*(v124 + 32))(v126, v154, v123);
      }

      v168 = v256;
      v169 = v247;
      v170 = &v247[v256[6]];
      v171 = &v247[v256[8]];
      (*(v124 + 32))(&v247[v256[5]], v126, v123);
      *v170 = 0;
      *(v170 + 1) = 0;
      v172 = &v169[v168[7]];
      *v172 = a9;
      v172[1] = a10;
      *v171 = 0;
      *(v171 + 1) = 0;
      v173 = v223;
      sub_1000055FC(v148, v223, &qword_10005DE00, &qword_10004B8D8);
      v174 = v123;
      v175 = v254;
      v176 = *(v254 + 48);
      v177 = v255;
      if (v176(v173, 1, v255) == 1)
      {
        v178 = v218;
        v249 = v176;
        v179 = v235;
        v180 = v237;
        sub_10001C284(v235, v218);
        (v251)(v180, v253);
        (v250)(v179, v174);
        sub_100005664(v227, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v242, &qword_10005DC10, &qword_10004B7C0);
        (*(v175 + 8))(v246, v177);
        v181 = v177;
        if (v249(v173, 1, v177) != 1)
        {
          sub_100005664(v173, &qword_10005DE00, &qword_10004B8D8);
        }
      }

      else
      {
        (v251)(v237, v253);
        (v250)(v235, v174);
        sub_100005664(v148, &qword_10005DE00, &qword_10004B8D8);
        sub_100005664(v242, &qword_10005DC10, &qword_10004B7C0);
        (*(v175 + 8))(v246, v177);
        v178 = v218;
        (*(v175 + 32))(v218, v173, v177);
        v181 = v177;
      }

      v196 = v256;
      v197 = v256[18];
      v198 = *(v175 + 32);
      v199 = v247;
      v198(&v247[v256[9]], v178, v181);
      v198((v199 + v196[10]), v236, v181);
      *(v199 + v196[11]) = _swiftEmptyArrayStorage;
      *(v199 + v196[12]) = v260;
      *(v199 + v196[13]) = _swiftEmptyArrayStorage;
      *(v199 + v196[14]) = 0;
      *(v199 + v196[15]) = 0;
      *(v199 + v196[16]) = _swiftEmptyArrayStorage;
      *(v199 + v196[17]) = 0;
      *(v199 + v197) = 0;
      v200 = v219;
      sub_10001A5E0(v199, v219, type metadata accessor for UsageTimelineEntry);
      v201 = (v200 + v196[8]);
      v202 = v268;

      *v201 = v262;
      v201[1] = v202;
      v263(v200);
LABEL_46:
      sub_10001AAAC(v200, type metadata accessor for UsageTimelineEntry);
      v114 = v257;
LABEL_47:
      sub_100005664(v114, &qword_10005DD98, &unk_10004B8A0);

      goto LABEL_48;
    }

    sub_10001A5E0(v118, v239, type metadata accessor for UsageData);
    v129 = sub_1000492A8();
    v130 = sub_10004A0A8();
    v131 = os_log_type_enabled(v129, v130);
    v132 = v245;
    v133 = v244;
    if (v131)
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&_mh_execute_header, v129, v130, "getCoreDataEntry returning entry", v134, 2u);
    }

    sub_100049038();
    v135 = v214;
    sub_1000490B8();
    v136 = v226;
    v137 = v265;
    v230(v226, v259, v265);
    v138 = (*(v264 + 88))(v136, v137);
    v139 = v238;
    v140 = v217;
    if (v138 != enum case for WidgetFamily.systemSmall(_:))
    {
      if (v138 == enum case for WidgetFamily.systemMedium(_:))
      {
        v141 = v248;
        v142 = 15;
        goto LABEL_27;
      }

      if (v138 == enum case for WidgetFamily.systemLarge(_:) || v138 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        v156 = v234;
        sub_10001C284(v234, v248);
        goto LABEL_28;
      }

      if (v138 != enum case for WidgetFamily.accessoryCircular(_:) && v138 != enum case for WidgetFamily.accessoryRectangular(_:) && v138 != enum case for WidgetFamily.accessoryInline(_:))
      {
        v212 = v234;
        sub_10001C284(v234, v248);
        v251 = *(v252 + 8);
        (v251)(v135, v253);
        v250 = *(v133 + 8);
        (v250)(v212, v132);
        (*(v264 + 8))(v226, v265);
        goto LABEL_29;
      }
    }

    v141 = v248;
    v142 = 9;
LABEL_27:
    v156 = v234;
    sub_100022910(v142, v234, v135, v141);
LABEL_28:
    v251 = *(v252 + 8);
    (v251)(v135, v253);
    v250 = *(v133 + 8);
    (v250)(v156, v132);
LABEL_29:
    v157 = sub_1000492A8();
    v158 = sub_10004A0A8();
    v159 = os_log_type_enabled(v157, v158);
    v160 = v228;
    if (v159)
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&_mh_execute_header, v157, v158, "getCoreDataEntry returning placeholder", v161, 2u);
    }

    v162 = v243;
    (*(v133 + 56))(v243, 1, 1, v132);
    v163 = v254;
    v164 = v255;
    (*(v254 + 56))(v160, 1, 1, v255);
    (*(v163 + 16))(v240, v248, v164);
    sub_100049038();
    sub_1000490B8();
    *v249 = 0;
    v165 = v162;
    v166 = v220;
    sub_1000055FC(v165, v220, &qword_10005DC10, &qword_10004B7C0);
    v167 = *(v133 + 48);
    if (v167(v166, 1, v132) == 1)
    {
      (*(v133 + 16))(v140, v139, v132);
      if (v167(v166, 1, v132) != 1)
      {
        sub_100005664(v166, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      (*(v133 + 32))(v140, v166, v132);
    }

    v182 = v256;
    v183 = v249;
    v184 = v249 + v256[6];
    v185 = v249 + v256[8];
    (*(v133 + 32))(v249 + v256[5], v140, v132);
    *v184 = 0;
    *(v184 + 1) = 0;
    v186 = (v183 + v182[7]);
    *v186 = a9;
    v186[1] = a10;
    *v185 = 0;
    *(v185 + 1) = 0;
    v187 = v224;
    sub_1000055FC(v160, v224, &qword_10005DE00, &qword_10004B8D8);
    v188 = v132;
    v189 = v254;
    v190 = *(v254 + 48);
    v191 = v255;
    if ((v190)(v187, 1, v255) == 1)
    {
      v192 = v221;
      v247 = v190;
      v193 = v238;
      v194 = v241;
      sub_10001C284(v238, v221);
      (v251)(v194, v253);
      (v250)(v193, v188);
      sub_100005664(v228, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v243, &qword_10005DC10, &qword_10004B7C0);
      (*(v189 + 8))(v248, v191);
      v195 = v191;
      if ((v247)(v187, 1, v191) != 1)
      {
        sub_100005664(v187, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      (v251)(v241, v253);
      (v250)(v238, v188);
      sub_100005664(v160, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v243, &qword_10005DC10, &qword_10004B7C0);
      (*(v189 + 8))(v248, v191);
      v192 = v221;
      (*(v189 + 32))(v221, v187, v191);
      v195 = v191;
    }

    v203 = v256;
    v204 = v256[18];
    v205 = *(v189 + 32);
    v206 = v249;
    v205(v249 + v256[9], v192, v195);
    v205((v206 + v203[10]), v240, v195);
    *(v206 + v203[11]) = _swiftEmptyArrayStorage;
    *(v206 + v203[12]) = v260;
    *(v206 + v203[13]) = _swiftEmptyArrayStorage;
    *(v206 + v203[14]) = 0;
    *(v206 + v203[15]) = 0;
    *(v206 + v203[16]) = _swiftEmptyArrayStorage;
    *(v206 + v203[17]) = 0;
    *(v206 + v204) = 0;
    v200 = v222;
    sub_10001A5E0(v206, v222, type metadata accessor for UsageTimelineEntry);
    v207 = (v200 + v203[8]);
    v208 = v268;

    *v207 = v262;
    v207[1] = v208;
    v263(v200);
    sub_10001AAAC(v239, type metadata accessor for UsageData);
    goto LABEL_46;
  }

  v106 = [*(v104 + 16) newBackgroundContext];
  [v106 setAutomaticallyMergesChangesFromParent:1];
  [v106 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v93 = swift_allocObject();
  v93[2] = sub_10001B098;
  v93[3] = v102;
  v93[4] = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_10001B110;
  *(v107 + 24) = v93;
  aBlock[4] = sub_10001B12C;
  aBlock[5] = v107;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003BBCC;
  aBlock[3] = &unk_10005A3E0;
  v108 = _Block_copy(aBlock);

  v109 = v106;

  [v109 performBlockAndWait:v108];

  _Block_release(v108);
  LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

  if (v109)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_48:

  (*(v264 + 8))(v259, v265);

  swift_bridgeObjectRelease_n();
  return sub_100002890(v271);
}

uint64_t sub_10000E290(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, void (*a14)(_BYTE *), uint64_t a15)
{
  v62 = a10;
  v60 = a4;
  v61 = a3;
  v64 = a2;
  v63 = type metadata accessor for UsageTimelineEntry(0);
  v19 = __chkstk_darwin(v63);
  v59 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v22 = &v53[-v21];
  v23 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v53[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = &v53[-v27];
  v29 = type metadata accessor for UsageData(0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v53[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if ((*(a5 + 16) & 1) == 0)
  {
    v57 = a15;
    v58 = a14;
    v56 = a12;
    sub_100049C28();
    sub_1000055FC(a1, v28, &qword_10005DD98, &unk_10004B8A0);
    v55 = v30;
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {
      sub_100005664(v28, &qword_10005DD98, &unk_10004B8A0);
      sub_10000E7B8(v60 & 0x101, v62, v61 & 1, a1, a11 & 1, v22, a6, a7);
      v34 = v63;
      v35 = &v22[*(v63 + 32)];

      *v35 = v56;
      v35[1] = a13;
      v36 = v64;
      if (v64)
      {
        v37 = *(v34 + 72);
        v38 = *&v22[v37];
        v39 = v64;

        *&v22[v37] = v36;
      }

      v58(v22);
      v40 = v22;
    }

    else
    {
      v54 = a11;
      v41 = v56;
      v42 = v32;
      sub_10001A5E0(v28, v32, type metadata accessor for UsageData);
      if (qword_10005D698 != -1)
      {
        swift_once();
      }

      v43 = sub_1000492C8();
      sub_1000143C0(v43, qword_10005DC28);
      v44 = sub_1000492A8();
      v45 = sub_10004A0A8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "getCoreDataEntry returning entry", v46, 2u);
      }

      sub_10001B218(v32, v26, type metadata accessor for UsageData);
      (*(v55 + 56))(v26, 0, 1, v29);
      v40 = v59;
      sub_10000E7B8(v60 & 0x101, v62, v61 & 1, v26, v54 & 1, v59, a6, a7);
      sub_100005664(v26, &qword_10005DD98, &unk_10004B8A0);
      v47 = v63;
      v48 = &v40[*(v63 + 32)];

      *v48 = v41;
      v48[1] = a13;
      v49 = v64;
      if (v64)
      {
        v50 = *(v47 + 72);
        v51 = *&v40[v50];
        v52 = v64;

        *&v40[v50] = v49;
      }

      v58(v40);
      sub_10001AAAC(v42, type metadata accessor for UsageData);
    }

    return sub_10001AAAC(v40, type metadata accessor for UsageTimelineEntry);
  }

  return result;
}

uint64_t sub_10000E774(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000E7B8@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v292 = a5;
  v265 = a4;
  v286 = a3;
  v293 = a6;
  v12 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  __chkstk_darwin(v12 - 8);
  v267 = &v246 - v13;
  v264 = type metadata accessor for UsageData(0);
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  v278 = &v246 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for UsageTimelineEntry(0);
  v15 = __chkstk_darwin(v297);
  v253 = &v246 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v277 = &v246 - v18;
  v19 = __chkstk_darwin(v17);
  v276 = &v246 - v20;
  __chkstk_darwin(v19);
  v295 = (&v246 - v21);
  v22 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v23 = __chkstk_darwin(v22 - 8);
  v255 = &v246 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v275 = &v246 - v26;
  v27 = __chkstk_darwin(v25);
  v254 = &v246 - v28;
  v29 = __chkstk_darwin(v27);
  v273 = &v246 - v30;
  v31 = __chkstk_darwin(v29);
  v272 = &v246 - v32;
  v33 = __chkstk_darwin(v31);
  v285 = (&v246 - v34);
  v35 = __chkstk_darwin(v33);
  v284 = &v246 - v36;
  __chkstk_darwin(v35);
  v282 = &v246 - v37;
  v38 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v39 = __chkstk_darwin(v38 - 8);
  v249 = &v246 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v268 = &v246 - v42;
  v43 = __chkstk_darwin(v41);
  v252 = &v246 - v44;
  v45 = __chkstk_darwin(v43);
  v271 = &v246 - v46;
  v47 = __chkstk_darwin(v45);
  v262 = &v246 - v48;
  v49 = __chkstk_darwin(v47);
  v283 = &v246 - v50;
  v51 = __chkstk_darwin(v49);
  v281 = &v246 - v52;
  __chkstk_darwin(v51);
  v290 = (&v246 - v53);
  v54 = sub_100049CB8();
  v55 = *(v54 - 8);
  v56 = __chkstk_darwin(v54);
  v259 = &v246 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v59 = &v246 - v58;
  v300 = sub_1000490F8();
  v298 = *(v300 - 8);
  v60 = __chkstk_darwin(v300);
  v261 = &v246 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v269 = &v246 - v63;
  v64 = __chkstk_darwin(v62);
  v280 = &v246 - v65;
  v66 = __chkstk_darwin(v64);
  v289 = &v246 - v67;
  __chkstk_darwin(v66);
  v69 = &v246 - v68;
  v299 = sub_100049058();
  v301 = *(v299 - 8);
  v70 = __chkstk_darwin(v299);
  v246 = &v246 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v70);
  v247 = &v246 - v73;
  v74 = __chkstk_darwin(v72);
  v250 = &v246 - v75;
  v76 = __chkstk_darwin(v74);
  v274 = &v246 - v77;
  v78 = __chkstk_darwin(v76);
  v256 = &v246 - v79;
  v80 = __chkstk_darwin(v78);
  v258 = &v246 - v81;
  v82 = __chkstk_darwin(v80);
  v84 = &v246 - v83;
  v85 = __chkstk_darwin(v82);
  v287 = &v246 - v86;
  __chkstk_darwin(v85);
  v88 = &v246 - v87;
  v296 = sub_100048E98();
  v294 = *(v296 - 8);
  v89 = __chkstk_darwin(v296);
  v248 = &v246 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __chkstk_darwin(v89);
  v257 = &v246 - v92;
  v93 = __chkstk_darwin(v91);
  v251 = &v246 - v94;
  v95 = __chkstk_darwin(v93);
  v266 = &v246 - v96;
  v97 = __chkstk_darwin(v95);
  v260 = &v246 - v98;
  v99 = __chkstk_darwin(v97);
  v101 = &v246 - v100;
  v102 = __chkstk_darwin(v99);
  v279 = &v246 - v103;
  v104 = __chkstk_darwin(v102);
  v288 = &v246 - v105;
  __chkstk_darwin(v104);
  v302 = &v246 - v106;
  sub_100049038();
  sub_1000490B8();
  v107 = *(v55 + 16);
  v270 = a2;
  v107(v59, a2, v54);
  v108 = (*(v55 + 88))(v59, v54);
  if (v108 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_2;
  }

  if (v108 == enum case for WidgetFamily.systemMedium(_:))
  {
    v109 = v302;
    v110 = 15;
    goto LABEL_5;
  }

  if (v108 == enum case for WidgetFamily.systemLarge(_:) || v108 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_10001C284(v88, v302);
LABEL_6:
    v291 = *(v298 + 8);
    v291(v69, v300);
    v111 = *(v301 + 8);
    (v111)(v88, v299);
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_21:
    v285 = v111;
    v128 = v282;
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v129 = sub_1000492C8();
    sub_1000143C0(v129, qword_10005DC28);
    v130 = sub_1000492A8();
    v131 = sub_10004A0A8();
    v132 = os_log_type_enabled(v130, v131);
    v133 = v294;
    v134 = v299;
    v135 = v281;
    v136 = v287;
    if (v132)
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v130, v131, "getCoreDataEntry returning placeholder", v137, 2u);
    }

    v138 = v301;
    v139 = v290;
    (*(v301 + 56))(v290, 1, 1, v134);
    v140 = v296;
    (*(v133 + 56))(v128, 1, 1, v296);
    (*(v133 + 16))(v288, v302, v140);
    sub_100049038();
    sub_1000490B8();
    *v295 = 0;
    sub_1000055FC(v139, v135, &qword_10005DC10, &qword_10004B7C0);
    v141 = *(v138 + 48);
    if (v141(v135, 1, v134) == 1)
    {
      (*(v138 + 16))(v84, v136, v134);
      if (v141(v135, 1, v134) != 1)
      {
        sub_100005664(v135, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      (*(v138 + 32))(v84, v135, v134);
    }

    v155 = v297;
    v156 = v295;
    v157 = (v295 + v297[6]);
    v158 = (v295 + v297[8]);
    (*(v138 + 32))(v295 + v297[5], v84, v134);
    *v157 = 0;
    v157[1] = 0;
    v159 = (v156 + v155[7]);
    *v159 = a7;
    v159[1] = a8;
    *v158 = 0;
    v158[1] = 0;
    v160 = v128;
    v161 = v128;
    v162 = v284;
    sub_1000055FC(v160, v284, &qword_10005DE00, &qword_10004B8D8);
    v163 = *(v133 + 48);
    v164 = v296;
    if (v163(v162, 1, v296) == 1)
    {
      v165 = v279;
      v166 = v136;
      v167 = v161;
      v168 = v289;
      sub_10001C284(v166, v279);
      v291(v168, v300);
      (v285)(v287, v134);
      sub_100005664(v167, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v290, &qword_10005DC10, &qword_10004B7C0);
      (*(v133 + 8))(v302, v164);
      if (v163(v162, 1, v164) != 1)
      {
        sub_100005664(v162, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      v291(v289, v300);
      (v285)(v136, v134);
      sub_100005664(v161, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v290, &qword_10005DC10, &qword_10004B7C0);
      (*(v133 + 8))(v302, v164);
      v165 = v279;
      (*(v133 + 32))(v279, v162, v164);
    }

    v169 = v297;
    v170 = v297[18];
    v171 = *(v133 + 32);
    v172 = v295;
    v171(v295 + v297[9], v165, v164);
    v171(&v172[v169[10]], v288, v164);
    *&v172[v169[11]] = _swiftEmptyArrayStorage;
    v172[v169[12]] = v292 & 1;
    *&v172[v169[13]] = _swiftEmptyArrayStorage;
    v172[v169[14]] = 0;
    v172[v169[15]] = 0;
    *&v172[v169[16]] = _swiftEmptyArrayStorage;
    *&v172[v169[17]] = 0;
    *&v172[v170] = 0;
    v173 = v172;
    return sub_10001A5E0(v173, v293, type metadata accessor for UsageTimelineEntry);
  }

  if (v108 == enum case for WidgetFamily.accessoryCircular(_:) || v108 == enum case for WidgetFamily.accessoryRectangular(_:) || v108 == enum case for WidgetFamily.accessoryInline(_:))
  {
LABEL_2:
    v109 = v302;
    v110 = 9;
LABEL_5:
    sub_100022910(v110, v88, v69, v109);
    goto LABEL_6;
  }

  sub_10001C284(v88, v302);
  v291 = *(v298 + 8);
  v291(v69, v300);
  v111 = *(v301 + 8);
  (v111)(v88, v299);
  (*(v55 + 8))(v59, v54);
  if ((a1 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((a1 & 0x100) == 0)
  {
    v112 = v301;
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v295 = v101;
    v113 = sub_1000492C8();
    sub_1000143C0(v113, qword_10005DC28);
    v114 = sub_1000492A8();
    v115 = sub_10004A0A8();
    v116 = os_log_type_enabled(v114, v115);
    v117 = v296;
    v118 = v294;
    v119 = v262;
    v120 = v276;
    if (v116)
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "getCoreDataEntry returning ask to sign into iCloud view", v121, 2u);
    }

    v122 = v283;
    v123 = v299;
    (*(v112 + 56))(v283, 1, 1, v299);
    (*(v118 + 56))(v285, 1, 1, v117);
    (*(v118 + 16))(v295, v302, v117);
    v124 = v258;
    sub_100049038();
    sub_1000490B8();
    *v120 = 1;
    sub_1000055FC(v122, v119, &qword_10005DC10, &qword_10004B7C0);
    v125 = *(v112 + 48);
    v126 = v117;
    if (v125(v119, 1, v123) == 1)
    {
      v127 = v256;
      (*(v301 + 16))(v256, v124, v123);
      if (v125(v119, 1, v123) != 1)
      {
        sub_100005664(v119, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      v127 = v256;
      (*(v301 + 32))(v256, v119, v123);
    }

    v174 = v297;
    v175 = &v120[v297[6]];
    v176 = &v120[v297[8]];
    (*(v301 + 32))(&v120[v297[5]], v127, v123);
    *v175 = 0;
    v175[1] = 0;
    v177 = &v120[v174[7]];
    *v177 = a7;
    v177[1] = a8;
    *v176 = 0;
    v176[1] = 0;
    v178 = v285;
    v179 = v272;
    sub_1000055FC(v285, v272, &qword_10005DE00, &qword_10004B8D8);
    v180 = v294;
    v181 = v126;
    v290 = *(v294 + 48);
    if ((v290)(v179, 1, v126) == 1)
    {
      v182 = v260;
      v183 = v280;
      sub_10001C284(v124, v260);
      v184 = v183;
      v120 = v276;
      v291(v184, v300);
      v185 = v124;
      v186 = v182;
      (v111)(v185, v123);
      sub_100005664(v178, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v283, &qword_10005DC10, &qword_10004B7C0);
      (*(v180 + 8))(v302, v181);
      v126 = v181;
      if ((v290)(v179, 1, v181) != 1)
      {
        sub_100005664(v179, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      v291(v280, v300);
      (v111)(v124, v123);
      sub_100005664(v178, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v283, &qword_10005DC10, &qword_10004B7C0);
      (*(v180 + 8))(v302, v126);
      v186 = v260;
      (*(v180 + 32))(v260, v179, v126);
    }

    v193 = v297;
    v194 = v297[18];
    v195 = *(v180 + 32);
    v195(&v120[v297[9]], v186, v126);
    v195(&v120[v193[10]], v295, v126);
    *&v120[v193[11]] = _swiftEmptyArrayStorage;
    v120[v193[12]] = v292 & 1;
    *&v120[v193[13]] = _swiftEmptyArrayStorage;
    v120[v193[14]] = 0;
    v120[v193[15]] = v286 & 1;
    *&v120[v193[16]] = _swiftEmptyArrayStorage;
    v196 = v193[17];
LABEL_56:
    *&v120[v196] = 0;
    *&v120[v194] = 0;
    v173 = v120;
    return sub_10001A5E0(v173, v293, type metadata accessor for UsageTimelineEntry);
  }

  v285 = v111;
  v142 = v267;
  sub_1000055FC(v265, v267, &qword_10005DD98, &unk_10004B8A0);
  if ((*(v263 + 48))(v142, 1, v264) == 1)
  {
    sub_100005664(v142, &qword_10005DD98, &unk_10004B8A0);
    v143 = v301;
    v144 = v268;
    v145 = v299;
    (*(v301 + 56))(v268, 1, 1, v299);
    v146 = v294;
    v147 = v296;
    (*(v294 + 56))(v275, 1, 1, v296);
    (*(v146 + 16))(v257, v302, v147);
    v148 = v247;
    sub_100049038();
    sub_1000490B8();
    v120 = v253;
    *v253 = 0;
    v149 = v249;
    sub_1000055FC(v144, v249, &qword_10005DC10, &qword_10004B7C0);
    v150 = *(v143 + 48);
    if (v150(v149, 1, v145) == 1)
    {
      v151 = v246;
      (*(v143 + 16))(v246, v148, v145);
      v152 = v150(v149, 1, v145) == 1;
      v153 = v149;
      v154 = v255;
      if (!v152)
      {
        sub_100005664(v153, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      v151 = v246;
      (*(v143 + 32))(v246, v149, v145);
      v154 = v255;
    }

    v197 = v297;
    v198 = &v120[v297[6]];
    v199 = &v120[v297[8]];
    (*(v143 + 32))(&v120[v297[5]], v151, v145);
    *v198 = 0;
    v198[1] = 0;
    v200 = &v120[v197[7]];
    *v200 = a7;
    v200[1] = a8;
    *v199 = 0;
    v199[1] = 0;
    v201 = v275;
    sub_1000055FC(v275, v154, &qword_10005DE00, &qword_10004B8D8);
    v202 = *(v146 + 48);
    v203 = v296;
    if (v202(v154, 1, v296) == 1)
    {
      v204 = v248;
      v205 = v148;
      v206 = v148;
      v207 = v261;
      sub_10001C284(v205, v248);
      v291(v207, v300);
      v208 = v255;
      (v285)(v206, v145);
      sub_100005664(v275, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v268, &qword_10005DC10, &qword_10004B7C0);
      (*(v146 + 8))(v302, v203);
      if (v202(v208, 1, v203) != 1)
      {
        sub_100005664(v208, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {
      v291(v261, v300);
      (v285)(v148, v145);
      sub_100005664(v201, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v268, &qword_10005DC10, &qword_10004B7C0);
      (*(v146 + 8))(v302, v203);
      v204 = v248;
      (*(v146 + 32))(v248, v154, v203);
    }

    v216 = v297;
    v194 = v297[18];
    v217 = *(v146 + 32);
    v217(&v120[v297[9]], v204, v203);
    v217(&v120[v216[10]], v257, v203);
    *&v120[v216[11]] = _swiftEmptyArrayStorage;
    v120[v216[12]] = v292 & 1;
    *&v120[v216[13]] = _swiftEmptyArrayStorage;
    v120[v216[14]] = 0;
    v120[v216[15]] = v286 & 1;
    *&v120[v216[16]] = _swiftEmptyArrayStorage;
    v196 = v216[17];
    goto LABEL_56;
  }

  v187 = v278;
  sub_10001A5E0(v142, v278, type metadata accessor for UsageData);
  v188 = *(v55 + 104);
  v189 = v259;
  v188(v259, enum case for WidgetFamily.systemLarge(_:), v54);
  sub_10001B1D0(&qword_10005DE08, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100049F38();
  sub_100049F38();
  v190 = *(v55 + 8);
  v190(v189, v54);
  if (v304 == v303)
  {
    v295 = sub_10001893C(*(v187 + 16));
    sub_100018C4C(v187, 6uLL);
    v192 = v191;
  }

  else
  {
    v192 = _swiftEmptyArrayStorage;
    v295 = _swiftEmptyArrayStorage;
  }

  v209 = v273;
  v210 = v259;
  v188(v259, enum case for WidgetFamily.systemMedium(_:), v54);
  sub_100049F38();
  sub_100049F38();
  v190(v210, v54);
  if (v304 == v303)
  {

    v211 = v278;
    sub_100018C4C(v278, 4uLL);
    v192 = v212;
    v213 = v296;
    v214 = v294;
    v215 = v299;
  }

  else
  {
    v213 = v296;
    v214 = v294;
    v215 = v299;
    v211 = v278;
  }

  v219 = v301;
  v220 = v271;
  (*(v301 + 56))(v271, 1, 1, v215);
  (*(v214 + 56))(v209, 1, 1, v213);
  v221 = v302;
  (*(v214 + 16))(v266, v302, v213);
  v290 = sub_100019170(*(v211 + 24), *(v211 + 8), v221);
  v222 = *(v211 + 32);
  v223 = v274;
  sub_100049038();
  sub_1000490B8();
  *v277 = 0;
  v224 = v252;
  sub_1000055FC(v220, v252, &qword_10005DC10, &qword_10004B7C0);
  v225 = *(v219 + 48);
  v226 = v225(v224, 1, v215);
  v299 = v192;
  if (v226 == 1)
  {
    v227 = v250;
    (*(v219 + 16))(v250, v223, v215);
    if (v225(v224, 1, v215) != 1)
    {
      sub_100005664(v224, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    v227 = v250;
    (*(v219 + 32))(v250, v224, v215);
  }

  v228 = v297;
  v229 = v277;
  v230 = &v277[v297[6]];
  v231 = &v277[v297[8]];
  (*(v219 + 32))(&v277[v297[5]], v227, v215);
  *v230 = 0;
  v230[1] = 0;
  v232 = &v229[v228[7]];
  *v232 = a7;
  v232[1] = a8;
  *v231 = 0;
  v231[1] = 0;
  v233 = v273;
  v234 = v254;
  sub_1000055FC(v273, v254, &qword_10005DE00, &qword_10004B8D8);
  v235 = *(v214 + 48);
  if (v235(v234, 1, v213) == 1)
  {
    v236 = v251;
    v237 = v213;
    v238 = v269;
    sub_10001C284(v274, v251);
    v239 = v238;
    v213 = v237;
    v291(v239, v300);
    (v285)(v274, v215);
    sub_100005664(v233, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v271, &qword_10005DC10, &qword_10004B7C0);
    (*(v214 + 8))(v302, v237);
    v240 = v235(v234, 1, v237);
    v241 = v299;
    if (v240 != 1)
    {
      sub_100005664(v234, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v291(v269, v300);
    (v285)(v274, v215);
    sub_100005664(v233, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v271, &qword_10005DC10, &qword_10004B7C0);
    (*(v214 + 8))(v302, v213);
    v236 = v251;
    (*(v214 + 32))(v251, v234, v213);
    v241 = v299;
  }

  v242 = v297;
  v243 = v297[18];
  v244 = *(v214 + 32);
  v245 = v277;
  v244(&v277[v297[9]], v236, v213);
  v244((v245 + v242[10]), v266, v213);
  *(v245 + v242[11]) = v290;
  *(v245 + v242[12]) = v292 & 1;
  *(v245 + v242[13]) = v241;
  *(v245 + v242[14]) = 0;
  *(v245 + v242[15]) = v286 & 1;
  *(v245 + v242[16]) = v295;
  *(v245 + v242[17]) = v222;
  *(v245 + v243) = 0;
  sub_10001A5E0(v245, v293, type metadata accessor for UsageTimelineEntry);
  return sub_10001AAAC(v278, type metadata accessor for UsageData);
}

void sub_1000109B0(void *a1, void (*a2)(uint64_t, void, uint64_t, uint64_t), NSObject *a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v13) = a4;
  v275 = a2;
  v16 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v245 - v17;
  v273 = sub_100049058();
  v19 = __chkstk_darwin(*(v273 - 8));
  v20 = __chkstk_darwin(v19);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v24 = (&v245 - v23);
  v25 = __chkstk_darwin(v22);
  v30 = &v245 - v29;
  if (!a1)
  {
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v38 = sub_1000492C8();
    sub_1000143C0(v38, qword_10005DC28);
    v39 = sub_1000492A8();
    v40 = sub_10004A088();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Since persistence stores can't be loaded, no usage data can be retrieved.", v41, 2u);
    }

    v42 = type metadata accessor for UsageData(0);
    (*(*(v42 - 8) + 56))(v18, 1, 1, v42);
    v275(v18, 0, 0, 0);
    goto LABEL_140;
  }

  v266 = v27;
  v267 = v25;
  v262 = v26;
  v263 = v28;
  v264 = a8;
  v265 = a7;
  v31 = qword_10005D698;
  v274 = a1;
  v272 = a6;
  v269 = a5;
  LODWORD(v271) = v13;
  if (v13)
  {
    v270 = a3;
    v268 = v18;
    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_1000492C8();
    sub_1000143C0(v32, qword_10005DC28);

    v33 = sub_1000492A8();
    v34 = sub_10004A0A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v278 = v36;
      *v35 = 136446210;
      v37 = v269;
      *(v35 + 4) = sub_10003C4F8(v269, v272, &v278);
      _os_log_impl(&_mh_execute_header, v33, v34, "Fetching information for user with dsid: %{public}s.", v35, 0xCu);
      sub_100002890(v36);

      a6 = v272;
    }

    else
    {

      v37 = v269;
    }

    v48 = [objc_opt_self() fetchRequest];
    sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
    sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_10004B5A0;
    *(v52 + 56) = &type metadata for String;
    v55 = sub_10001B17C(v52, v53, v54);
    *(v52 + 32) = 1684632420;
    *(v52 + 40) = 0xE400000000000000;
    *(v52 + 96) = &type metadata for String;
    *(v52 + 104) = v55;
    *(v52 + 64) = v55;
    *(v52 + 72) = v37;
    *(v52 + 80) = a6;

    v56 = sub_10004A068();
    [v48 setPredicate:v56];

    v278 = 0;
    v57 = [v48 execute:&v278];
    v58 = v278;
    if (!v57)
    {
      v95 = v278;
      sub_100048F28();

      swift_willThrow();

      v96 = sub_1000492A8();
      v97 = sub_10004A088();
      if (!os_log_type_enabled(v96, v97))
      {
        v99 = 0;
        v18 = v268;
LABEL_138:

        v240 = 0;
        goto LABEL_139;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Fetching user information returned nil results", v98, 2u);
      v99 = 0;
      v18 = v268;
LABEL_136:

      goto LABEL_138;
    }

    v13 = v57;
    sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
    v50 = sub_100049F58();
    v59 = v58;

    v18 = v268;
    a3 = v270;
    a6 = v272;
    LOBYTE(v13) = v271;
  }

  else
  {
    if (v31 != -1)
    {
      swift_once();
    }

    v43 = sub_1000492C8();
    sub_1000143C0(v43, qword_10005DC28);
    v44 = sub_1000492A8();
    v45 = sub_10004A0A8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Fetching local user information", v46, 2u);
      LOBYTE(v13) = v271;
      a6 = v272;
    }

    v47 = [objc_opt_self() fetchRequestMatchingLocalUser];
    v278 = 0;
    v48 = [v47 execute:&v278];

    v49 = v278;
    if (!v48)
    {
      v270 = a3;
      v93 = v278;
      v94 = sub_100048F28();

      swift_willThrow();
      LODWORD(a3) = 0;
      v61 = 0;
      goto LABEL_51;
    }

    sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
    v50 = sub_100049F58();
    v51 = v49;
  }

  if (v50 >> 62)
  {
    v61 = sub_10004A308() > 0;
    if (sub_10004A308())
    {
      goto LABEL_23;
    }

    goto LABEL_130;
  }

  v60 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = v60 != 0;
  if (!v60)
  {
LABEL_130:

    if (v61)
    {
      v240 = 256;
      v99 = 1;
LABEL_139:
      v244 = type metadata accessor for UsageData(0);
      (*(*(v244 - 8) + 56))(v18, 1, 1, v244);
      v275(v18, 0, 0, v240 | v99);

LABEL_140:
      sub_100005664(v18, &qword_10005DD98, &unk_10004B8A0);
      return;
    }

    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v241 = sub_1000492C8();
    sub_1000143C0(v241, qword_10005DC28);
    v96 = sub_1000492A8();
    v242 = sub_10004A088();
    if (!os_log_type_enabled(v96, v242))
    {
      v99 = 1;
      goto LABEL_138;
    }

    v243 = swift_slowAlloc();
    *v243 = 0;
    _os_log_impl(&_mh_execute_header, v96, v242, "Fetching user information returned empty results", v243, 2u);
    v99 = 1;
    goto LABEL_136;
  }

LABEL_23:
  v260 = v61;
  if ((v50 & 0xC000000000000001) != 0)
  {
    goto LABEL_142;
  }

  if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_144;
  }

  v62 = *(v50 + 32);
LABEL_26:
  v63 = v62;

  if (![v63 screenTimeEnabled])
  {
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v87 = sub_1000492C8();
    sub_1000143C0(v87, qword_10005DC28);
    v88 = sub_1000492A8();
    v89 = sub_10004A0A8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "ScreenTime is disabled.", v90, 2u);
    }

    v91 = type metadata accessor for UsageData(0);
    (*(*(v91 - 8) + 56))(v18, 1, 1, v91);
    if (v260)
    {
      v92 = 257;
    }

    else
    {
      v92 = 1;
    }

    v275(v18, 0, 0, v92);

    goto LABEL_140;
  }

  if (qword_10005D698 != -1)
  {
LABEL_146:
    swift_once();
  }

  v64 = sub_1000492C8();
  v261 = sub_1000143C0(v64, qword_10005DC28);
  v65 = sub_1000492A8();
  v66 = sub_10004A0A8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "ScreenTime is enabled.", v67, 2u);
    LOBYTE(v13) = v271;
    a6 = v272;
  }

  v68 = objc_opt_self();
  v278 = 0;
  v69 = [v68 fetchOrCreateUsageRequestForUser:v63 inContext:v274 error:&v278];
  v270 = a3;
  if (!v69)
  {
    v100 = v278;
    v94 = sub_100048F28();

    swift_willThrow();
    goto LABEL_50;
  }

  v70 = v69;
  v71 = v278;
  sub_100049048();
  isa = sub_100048FB8().super.isa;
  [v70 setRequestedDate:isa];

  v252 = v70;
  [v70 setIsBackgroundTask:1];
  v73 = [objc_allocWithZone(NSDateFormatter) init];
  v74 = v267[2].isa;
  v250 = v267 + 2;
  v249 = v74;
  v74(v24, v30, v273);
  v75 = v73;
  v76 = sub_1000492A8();
  LODWORD(v70) = sub_10004A0A8();

  LODWORD(v254) = v70;
  v256 = v76;
  v77 = os_log_type_enabled(v76, v70);
  v257 = v63;
  v268 = v18;
  v258 = v75;
  if (v77)
  {
    v13 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v278 = v78;
    *v13 = 136446210;
    v79 = sub_100048FB8().super.isa;
    v80 = [v75 stringFromDate:v79];

    v81 = sub_100049E08();
    v82 = v30;
    v84 = v83;

    v63 = v257;
    v259 = v267[1].isa;
    v259(v24, v273);
    v85 = sub_10003C4F8(v81, v84, &v278);
    v30 = v82;

    *(v13 + 4) = v85;
    v86 = v256;
    _os_log_impl(&_mh_execute_header, v256, v254, "Creating usage request with timestamp %{public}s", v13, 0xCu);
    sub_100002890(v78);
    v18 = v268;

    LOBYTE(v13) = v271;
    a6 = v272;
  }

  else
  {

    v259 = v267[1].isa;
    v259(v24, v273);
  }

  v278 = 0;
  if (![v274 save:&v278])
  {
    v105 = v278;
    v94 = sub_100048F28();

    swift_willThrow();
    v259(v30, v273);
LABEL_50:
    LODWORD(a3) = 1;
    v61 = v260;
LABEL_51:
    v278 = v94;
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    swift_dynamicCast();
    v50 = v276;
    if (qword_10005D698 == -1)
    {
LABEL_52:
      v106 = sub_1000492C8();
      sub_1000143C0(v106, qword_10005DC28);
      v107 = v50;
      v108 = sub_1000492A8();
      v109 = sub_10004A088();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = v61;
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v111 = 138543362;
        *(v111 + 4) = v107;
        *v112 = v107;
        v113 = v107;
        _os_log_impl(&_mh_execute_header, v108, v109, "Failed to fetch local user: %{public}@", v111, 0xCu);
        sub_100005664(v112, &qword_10005DDB0, &qword_10004B8B0);

        v61 = v110;
      }

      v114 = type metadata accessor for UsageData(0);
      (*(*(v114 - 8) + 56))(v18, 1, 1, v114);
      if (v61)
      {
        v115 = 256;
      }

      else
      {
        v115 = 0;
      }

      v275(v18, 0, 0, v115 | a3);

      sub_100005664(v18, &qword_10005DD98, &unk_10004B8A0);

      return;
    }

LABEL_144:
    swift_once();
    goto LABEL_52;
  }

  v246 = a9;
  a3 = v267 + 1;
  v101 = v278;
  v102 = 1;
  v103 = &CoreDataUsageProvider;
  *&v104 = 136380931;
  v248 = v104;
  *&v104 = 138543362;
  v247 = v104;
  *&v104 = 134349314;
  v251 = v104;
  v256 = a3;
  v255 = v30;
  while (1)
  {
    sleep(2u);
    v118 = [v63 v103[53].base_meths];
    v267 = v102;
    if (!v118)
    {
      break;
    }

    v119 = [v63 v103[53].base_meths];
    if (!v119 || (v120 = v119, v121 = [v119 device], v120, !v121))
    {
      v160 = sub_1000492A8();
      v161 = sub_10004A088();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        *v162 = 0;
        _os_log_impl(&_mh_execute_header, v160, v161, "The user local device state did not contain device information.", v162, 2u);
      }

      v163 = type metadata accessor for UsageData(0);
      (*(*(v163 - 8) + 56))(v18, 1, 1, v163);
      if (v260)
      {
        v164 = 257;
      }

      else
      {
        v164 = 1;
      }

      v275(v18, 0, 1, v164);

      goto LABEL_115;
    }

    v122 = [objc_opt_self() fetchRequestMatchingUser:v63 device:v121];
    v278 = 0;
    v123 = [v122 execute:&v278];

    v24 = v278;
    if (v123)
    {
      sub_10001B134(0, &qword_10005DF00, STUsage_ptr);
      v124 = sub_100049F58();
      v125 = v24;

      goto LABEL_68;
    }

    v148 = v278;
    v94 = sub_100048F28();

    v24 = v94;
    swift_willThrow();

LABEL_81:
    v278 = v94;
    swift_errorRetain();
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    if (!swift_dynamicCast())
    {
      v259(v30, v273);

      goto LABEL_50;
    }

    v150 = v276;
    if (v13)
    {

      v151 = v150;
      v152 = sub_1000492A8();
      v153 = sub_10004A088();

      if (os_log_type_enabled(v152, v153))
      {
        v24 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v277 = v155;
        *v24 = v248;
        *(v24 + 4) = sub_10003C4F8(v269, a6, &v277);
        *(v24 + 6) = 2114;
        *(v24 + 14) = v151;
        *v154 = v151;
        v156 = v151;
        _os_log_impl(&_mh_execute_header, v152, v153, "Failed to fetch usage for user with dsid %{private}s: %{public}@", v24, 0x16u);
        sub_100005664(v154, &qword_10005DDB0, &qword_10004B8B0);
        v63 = v257;

        sub_100002890(v155);
      }

      else
      {
      }

      LOBYTE(v13) = v271;
    }

    else
    {
      v24 = v276;
      v157 = sub_1000492A8();
      v158 = sub_10004A088();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v159 = v247;
        *(v159 + 4) = v24;
        *v13 = v24;
        v24 = v24;
        _os_log_impl(&_mh_execute_header, v157, v158, "Failed to fetch usage for local user: %{public}@", v159, 0xCu);
        sub_100005664(v13, &qword_10005DDB0, &qword_10004B8B0);
        LOBYTE(v13) = v271;
        a6 = v272;

        v63 = v257;
      }

      else
      {
      }
    }

    v116 = v267;
    v103 = &CoreDataUsageProvider;
    if (v267 == 5)
    {
      v259(v30, v273);

      return;
    }

LABEL_60:
    v117 = __OFADD__(v116, 1);
    v102 = &v116->isa + 1;
    if (v117)
    {
      __break(1u);
LABEL_142:
      v62 = sub_10004A1F8();
      goto LABEL_26;
    }
  }

  v126 = [objc_opt_self() fetchRequestMatchingUser:v63 device:0];
  v278 = 0;
  v121 = [v126 execute:&v278];

  v127 = v278;
  if (!v121)
  {
    v149 = v278;
    v94 = sub_100048F28();

    v24 = v94;
    swift_willThrow();
    goto LABEL_81;
  }

  sub_10001B134(0, &qword_10005DF00, STUsage_ptr);
  v124 = sub_100049F58();
  v128 = v127;
LABEL_68:

  if (v124 >> 62)
  {
    if (!sub_10004A308())
    {
LABEL_98:

      if (v13)
      {

        v165 = sub_1000492A8();
        v166 = sub_10004A088();

        v167 = os_log_type_enabled(v165, v166);
        v168 = v274;
        if (v167)
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v278 = v170;
          *v169 = 136380675;
          *(v169 + 4) = sub_10003C4F8(v269, a6, &v278);
          _os_log_impl(&_mh_execute_header, v165, v166, "Fetching usage for user with dsid %{private}s returned empty results", v169, 0xCu);
          sub_100002890(v170);
          v63 = v257;
        }

        v171 = v258;
      }

      else
      {
        v217 = sub_1000492A8();
        v218 = sub_10004A088();
        v219 = os_log_type_enabled(v217, v218);
        v168 = v274;
        v171 = v258;
        if (v219)
        {
          v220 = swift_slowAlloc();
          *v220 = 0;
          _os_log_impl(&_mh_execute_header, v217, v218, "Fetching usage for local user returned empty results.", v220, 2u);
        }

        v63 = v257;
      }

      v221 = type metadata accessor for UsageData(0);
      (*(*(v221 - 8) + 56))(v18, 1, 1, v221);
      if (v260)
      {
        v222 = 257;
      }

      else
      {
        v222 = 1;
      }

      v275(v18, 0, 1, v222);

LABEL_115:
      sub_100005664(v18, &qword_10005DD98, &unk_10004B8A0);
      v259(v30, v273);
      return;
    }
  }

  else if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_98;
  }

  if ((v124 & 0xC000000000000001) != 0)
  {
    v129 = sub_10004A1F8();
    v13 = 0x10005C000;
  }

  else
  {
    v13 = &CoreDataUsageProvider;
    if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_146;
    }

    v129 = *(v124 + 32);
  }

  [v274 refreshObject:v129 mergeChanges:1];
  v130 = v258;
  v24 = v129;
  v131 = sub_1000492A8();
  v132 = sub_10004A0A8();

  v133 = os_log_type_enabled(v131, v132);
  v254 = v130;
  if (v133)
  {
    v134 = v130;
    v135 = swift_slowAlloc();
    v253 = swift_slowAlloc();
    v278 = v253;
    *v135 = v251;
    *(v135 + 4) = v267;
    *(v135 + 12) = 2082;
    v136 = [v24 *(v13 + 3680)];
    v137 = v266;
    sub_100049028();

    v138 = sub_100048FB8().super.isa;
    a3 = v256;
    v259(v137, v273);
    v139 = [v134 stringFromDate:v138];

    v140 = sub_100049E08();
    v142 = v141;

    v143 = sub_10003C4F8(v140, v142, &v278);
    v63 = v257;

    *(v135 + 14) = v143;
    _os_log_impl(&_mh_execute_header, v131, v132, "Attempt %{public}ld: Usage retrieved as of %{public}s", v135, 0x16u);
    sub_100002890(v253);
    a6 = v272;

    v144 = v259;
  }

  else
  {

    v144 = v259;
    v137 = v266;
    a3 = v256;
  }

  v145 = [v24 *(v13 + 3680)];
  sub_100049028();

  sub_10001B1D0(&qword_10005DBF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v30 = v255;
  v146 = v273;
  LOBYTE(v145) = sub_100049DC8();
  v144(v137, v146);
  v147 = v24;
  if (v145)
  {
    v116 = v267;
    if (v267 != 5)
    {

      v18 = v268;
      LOBYTE(v13) = v271;
      v103 = &CoreDataUsageProvider;
      goto LABEL_60;
    }

    v195 = v262;
    v249(v262, v30, v273);
    v196 = v254;
    v197 = v147;
    v198 = sub_1000492A8();
    v199 = sub_10004A088();

    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      v278 = v268;
      *v200 = 136446466;
      v201 = [v197 lastUpdatedDate];
      LODWORD(v267) = v199;
      v202 = v201;
      v203 = v266;
      sub_100049028();

      v204 = sub_100048FB8().super.isa;
      v205 = v273;
      v271 = v197;
      v259(v203, v273);
      v206 = [v196 stringFromDate:v204];

      v207 = sub_100049E08();
      v209 = v208;

      v210 = sub_10003C4F8(v207, v209, &v278);

      *(v200 + 4) = v210;
      *(v200 + 12) = 2082;
      v211 = sub_100048FB8().super.isa;
      v212 = [v196 stringFromDate:v211];

      v213 = sub_100049E08();
      v215 = v214;

      v193 = v259;
      v259(v195, v205);
      v197 = v271;
      v216 = sub_10003C4F8(v213, v215, &v278);
      v63 = v257;

      *(v200 + 14) = v216;
      _os_log_impl(&_mh_execute_header, v198, v267, "Returning the usage updated at %{public}s but requested at %{public}s", v200, 0x16u);
      swift_arrayDestroy();

      v30 = v255;
    }

    else
    {

      v193 = v259;
      v259(v195, v273);
    }

    v231 = v272;

    v232 = sub_100012D08(v269, v231);
    if ((v233 & 1) == 0)
    {
      v234 = [objc_allocWithZone(NSNumber) initWithInteger:v232];
      v235 = [v63 appleID];
      if (v235)
      {
        v236 = v235;
        v237 = sub_100049E08();
        v239 = v238;
      }

      else
      {
        v237 = 0;
        v239 = 0;
      }

      sub_100013008(v197, v234, v264, v246, v237, v239, v275, v270);

      goto LABEL_128;
    }

LABEL_148:
    __break(1u);
    return;
  }

  v172 = v263;
  v249(v263, v30, v273);
  v173 = v254;
  v174 = v147;
  v175 = sub_1000492A8();
  v176 = sub_10004A0A8();

  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    v268 = swift_slowAlloc();
    v278 = v268;
    *v177 = 136446466;
    v178 = [v174 lastUpdatedDate];
    LODWORD(v267) = v176;
    v179 = v178;
    v180 = v266;
    sub_100049028();

    v181 = sub_100048FB8().super.isa;
    v182 = v273;
    v271 = v174;
    v259(v180, v273);
    v183 = [v173 stringFromDate:v181];

    v184 = sub_100049E08();
    v186 = v185;

    v187 = sub_10003C4F8(v184, v186, &v278);

    *(v177 + 4) = v187;
    *(v177 + 12) = 2082;
    v188 = sub_100048FB8().super.isa;
    v189 = [v173 stringFromDate:v188];

    v190 = sub_100049E08();
    v192 = v191;

    v193 = v259;
    v259(v172, v182);
    v174 = v271;
    v194 = sub_10003C4F8(v190, v192, &v278);
    a6 = v272;

    *(v177 + 14) = v194;
    _os_log_impl(&_mh_execute_header, v175, v267, "Returning the usage updated at %{public}s requested at %{public}s", v177, 0x16u);
    swift_arrayDestroy();

    v30 = v255;
  }

  else
  {

    v193 = v259;
    v259(v172, v273);
  }

  v223 = sub_100012D08(v269, a6);
  if (v224)
  {
    __break(1u);
    goto LABEL_148;
  }

  v225 = [objc_allocWithZone(NSNumber) initWithInteger:v223];
  v226 = [v257 appleID];
  if (v226)
  {
    v227 = v226;
    v228 = sub_100049E08();
    v230 = v229;
  }

  else
  {
    v228 = 0;
    v230 = 0;
  }

  sub_100013008(v174, v225, v264, v246, v228, v230, v275, v270);

LABEL_128:

  v193(v30, v273);
}

unint64_t sub_100012D08(unint64_t result, unint64_t a2)
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
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
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
        result = sub_10004A208();
        v3 = v26;
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
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
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
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
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
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100015C0C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100013008(uint64_t (*a1)(uint64_t a1), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void, void, uint64_t), uint64_t a8)
{
  v128 = a8;
  v124 = a7;
  v102 = a6;
  v101[1] = a5;
  v107 = a4;
  v101[2] = a3;
  v106 = a2;
  v116 = a1;
  v8 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  __chkstk_darwin(v8 - 8);
  v104 = v101 - v9;
  v115 = sub_100049BB8();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100049BE8();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for UsageData(0);
  isa = v117[-1].isa;
  v12 = __chkstk_darwin(v117);
  v109 = v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v13;
  __chkstk_darwin(v12);
  v103 = (v101 - v14);
  v15 = sub_100048E98();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100049058();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v101 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = v101 - v28;
  __chkstk_darwin(v27);
  v31 = v101 - v30;
  v127 = sub_1000490F8();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v33 = v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000490B8();
  sub_100049048();
  v122 = v33;
  sub_100049068();
  v120 = *(v20 + 8);
  v121 = v20 + 8;
  v120(v29, v19);
  sub_100049048();
  v34 = *(v20 + 16);
  v123 = v31;
  v35 = v31;
  v36 = v116;
  v34(v29, v35, v19);
  v126 = v26;
  v118 = v19;
  v34(v23, v26, v19);
  sub_100048E78();
  v37 = objc_allocWithZone(STUsageReporter);
  v38 = sub_100048E48().super.isa;
  v39 = [v37 initWithUsage:v36 dateInterval:v38];

  (*(v16 + 8))(v18, v15);
  aBlock = 0;
  if ([v39 generateReport:&aBlock])
  {
    v40 = aBlock;
    v41 = [v39 applicationAndWebUsage];
    sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);
    v42 = sub_100049F58();

    v43 = [v39 categoryRatiosPerCalendarUnit:32 numberOfCategories:3];
    sub_1000027D4(&qword_10005DDC0, &qword_10004B8B8);
    v44 = sub_100049F58();

    v45 = [v39 categoryUsage];
    v46 = sub_100049F58();

    v47 = [v39 screenTimeUsagePerCalendarUnit:32];
    v48 = sub_100049F58();

    v104 = v39;
    [v39 totalScreenTime];
    v50 = v49;
    v51 = [v36 lastUpdatedDate];
    v52 = v103;
    sub_100049028();

    *v52 = v42;
    v52[1] = v44;
    v52[2] = v46;
    v52[3] = v48;
    v52[4] = v50;
    sub_10000ACF0(6uLL);
    v54 = v53;
    v55 = dispatch_group_create();
    dispatch_group_enter(v55);
    v56 = v105;
    sub_10001A938(v105 + 16, &aBlock);
    sub_1000028DC(&aBlock, v133);
    v57 = swift_allocObject();
    v57[2] = v54;
    v57[3] = v55;
    v57[4] = v56;

    v117 = v55;

    sub_1000022F4(v54, sub_1000144C8, v57);

    sub_100002890(&aBlock);
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    v59 = v106;
    v60 = v52;
    if ([v106 integerValue] >= 1 && v107)
    {
      v61 = v117;
      dispatch_group_enter(v117);
      v62 = swift_allocObject();
      *(v62 + 16) = v58;
      *(v62 + 24) = v61;
      v63 = objc_opt_self();
      v64 = v61;

      v65 = [v63 sharedCache];
      v66 = sub_100049DF8();
      if (v102)
      {
        v67 = sub_100049DF8();
      }

      else
      {
        v67 = 0;
      }

      v83 = swift_allocObject();
      *(v83 + 16) = sub_10001472C;
      *(v83 + 24) = v62;
      v134 = sub_10001476C;
      v135 = v83;
      aBlock = _NSConcreteStackBlock;
      v131 = 1107296256;
      v132 = sub_10000AC08;
      v133 = &unk_10005A1B0;
      v84 = _Block_copy(&aBlock);

      [v65 fetchPersonImageWithDSID:v59 fullName:v66 appleID:v67 forceFetch:0 completionHandler:v84];
      _Block_release(v84);
    }

    sub_10001B134(0, &qword_10005DDC8, OS_dispatch_queue_ptr);
    v85 = sub_10004A0F8();
    v116 = type metadata accessor for UsageData;
    v86 = v109;
    sub_10001B218(v60, v109, type metadata accessor for UsageData);
    v87 = (*(isa + 80) + 32) & ~*(isa + 80);
    v88 = v58;
    v89 = (v108 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = swift_allocObject();
    v91 = v128;
    *(v90 + 16) = v124;
    *(v90 + 24) = v91;
    sub_10001A5E0(v86, v90 + v87, type metadata accessor for UsageData);
    v92 = v90 + v89;
    *v92 = v88;
    *(v92 + 8) = 257;
    v134 = sub_100014628;
    v135 = v90;
    aBlock = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = sub_10001B29C;
    v133 = &unk_10005A138;
    v93 = _Block_copy(&aBlock);

    v94 = v60;
    v95 = v110;
    sub_100049BC8();
    v129 = _swiftEmptyArrayStorage;
    sub_10001B1D0(&qword_10005DDD0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000027D4(&qword_10005DDD8, &qword_10004B8C0);
    sub_100005708(&qword_10005DDE0, &qword_10005DDD8, &qword_10004B8C0, &protocol conformance descriptor for [A]);
    v96 = v112;
    v97 = v115;
    sub_10004A178();
    v98 = v117;
    sub_10004A0B8();
    _Block_release(v93);

    (*(v114 + 8))(v96, v97);
    (*(v111 + 8))(v95, v113);
    sub_10001AAAC(v94, v116);
    v99 = v118;
    v100 = v120;
    v120(v126, v118);
    v100(v123, v99);
    (*(v125 + 8))(v122, v127);
  }

  else
  {
    v68 = v117;
    v69 = aBlock;
    v70 = sub_100048F28();

    swift_willThrow();
    aBlock = v70;
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    swift_dynamicCast();
    v71 = v129;
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v72 = sub_1000492C8();
    sub_1000143C0(v72, qword_10005DC28);
    v73 = v71;
    v74 = sub_1000492A8();
    v75 = sub_10004A088();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138543362;
      *(v76 + 4) = v73;
      *v77 = v73;
      v78 = v73;
      _os_log_impl(&_mh_execute_header, v74, v75, "Failed to generate usage report: %{public}@", v76, 0xCu);
      sub_100005664(v77, &qword_10005DDB0, &qword_10004B8B0);
    }

    v79 = v104;
    (*(isa + 7))(v104, 1, 1, v68);
    v124(v79, 0, 0, 257);

    sub_100005664(v79, &qword_10005DD98, &unk_10004B8A0);
    v80 = v118;
    v81 = v120;
    v120(v126, v118);
    v81(v123, v80);
    (*(v125 + 8))(v122, v127);
  }
}

void sub_100013F04(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v17 = v19;

  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      dispatch_group_leave(a3);
      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;

        dispatch_group_enter(a3);
        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        v12 = objc_opt_self();
        v13 = a3;
        v14 = sub_100049DF8();

        v15 = swift_allocObject();
        *(v15 + 16) = sub_100014774;
        *(v15 + 24) = v11;
        v19[2] = sub_10001477C;
        v19[3] = v15;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v19[0] = sub_10000AC08;
        v19[1] = &unk_10005A228;
        v16 = _Block_copy(aBlock);

        [v12 iconImageForBundleIdentifier:v14 completionHandler:{v16, v17}];
        _Block_release(v16);
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
}

void sub_100014130(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;

  v7 = a1;
  dispatch_group_leave(a3);
}

uint64_t sub_100014194(void (*a1)(char *, void *, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v9 = sub_1000027D4(&qword_10005DD98, &unk_10004B8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  sub_10001B218(a3, &v16 - v10, type metadata accessor for UsageData);
  v12 = type metadata accessor for UsageData(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  swift_beginAccess();
  v13 = *(a4 + 16);
  v14 = v13;
  a1(v11, v13, 1, a5 & 0x101);

  return sub_100005664(v11, &qword_10005DD98, &unk_10004B8A0);
}

uint64_t sub_1000142F0()
{
  sub_100002890(v0 + 2);
  sub_100002890(v0 + 7);
  sub_100002890(v0 + 12);

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_10001435C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for UsageData(uint64_t a1)
{
  result = qword_10005DE98;
  if (!qword_10005DE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000143C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_1000143F8(uint64_t a1, uint64_t a2)
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

  sub_1000027D4(&qword_10005DDF8, &qword_10004B8D0);
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

uint64_t sub_100014480()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000144D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001450C()
{
  v1 = (type metadata accessor for UsageData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[11];
  v6 = sub_100049058();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 10, v2 | 7);
}

uint64_t sub_100014628()
{
  v1 = *(type metadata accessor for UsageData(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  return sub_100014194(v3, v4, v0 + v2, v6, v8 | v7);
}

uint64_t sub_1000146D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000146EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014734()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014784(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10004A418();
  sub_100049E48();
  v8 = sub_10004A448();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10004A398() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100014B34(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000148D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000027D4(&qword_10005DDE8, &qword_10004B8C8);
  result = sub_10004A1B8();
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
      v19 = *v18;
      v20 = v18[1];
      sub_10004A418();
      sub_100049E48();
      result = sub_10004A448();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

uint64_t sub_100014B34(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000148D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100014CB4();
      goto LABEL_16;
    }

    sub_100014E10(v8 + 1);
  }

  v10 = *v4;
  sub_10004A418();
  sub_100049E48();
  result = sub_10004A448();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10004A398();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10004A3B8();
  __break(1u);
  return result;
}

void *sub_100014CB4()
{
  v1 = v0;
  sub_1000027D4(&qword_10005DDE8, &qword_10004B8C8);
  v2 = *v0;
  v3 = sub_10004A1A8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_100014E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000027D4(&qword_10005DDE8, &qword_10004B8C8);
  result = sub_10004A1B8();
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
      v18 = *v17;
      v19 = v17[1];
      sub_10004A418();

      sub_100049E48();
      result = sub_10004A448();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100015048(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000260E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000150C4(v6);
  return sub_10004A228();
}

void sub_1000150C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10004A368(v2);
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
        sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);
        v6 = sub_100049F68();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1000152D4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1000151D8(0, v2, 1, a1);
  }
}

void sub_1000151D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 quantity];
      v15 = v14;
      [v13 quantity];
      v17 = v16;

      if (v17 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000152D4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_10002432C(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_10001594C((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10002432C(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_1000242A0(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 quantity];
      v19 = v18;
      [v17 quantity];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 quantity];
        v27 = v26;
        [v25 quantity];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 < v19 == v29 >= v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1000231F4(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_1000231F4((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_10001594C((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10002432C(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_1000242A0(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 quantity];
    v48 = v47;
    [v46 quantity];
    v50 = v49;

    if (v50 >= v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if (v110 + 1 != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_10001594C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 quantity];
        v35 = v34;
        [v33 quantity];
        v37 = v36;

        if (v37 < v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 quantity];
        v19 = v18;
        [v17 quantity];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

unsigned __int8 *sub_100015C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100049EC8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100016198(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      result = sub_10004A208();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100016198(uint64_t a1, unint64_t a2)
{
  v2 = sub_100049ED8();
  v6 = sub_100016218(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100016218(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_10004A158();
    if (!v9 || (v10 = v9, v11 = sub_10003C938(v9, 0), v12 = sub_100016370(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100049E38();

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
      return sub_100049E38();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_10004A208();
LABEL_4:

  return sub_100049E38();
}

unint64_t sub_100016370(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100016590(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100049EA8();
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
          result = sub_10004A208();
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

    result = sub_100016590(v12, a6, a7);
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

    result = sub_100049E88();
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

unint64_t sub_100016590(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100049EB8();
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
    v5 = sub_100049E98();
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

void *sub_100016620(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10004A308();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000143F8(v3, 0);
  sub_1000166B4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000166B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10004A308();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10004A308();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100005708(&qword_10005DDF0, &qword_10005DDC0, &qword_10004B8B8, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1000027D4(&qword_10005DDC0, &qword_10004B8B8);
            v9 = sub_100016868(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001B134(0, &qword_10005DDB8, STUsageDetailItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100016868(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10004A1F8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000168E8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000168F0(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7, void (*a8)(void), double a9, double a10, uint64_t a11, uint64_t a12)
{
  v253 = a6;
  v254 = a8;
  v223 = a5;
  v222 = a4;
  v246 = a2;
  LODWORD(v245) = a1;
  v255 = a11;
  v252 = sub_1000490F8();
  v251 = *(v252 - 8);
  v16 = __chkstk_darwin(v252);
  v244 = &v203 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v228 = &v203 - v19;
  v20 = __chkstk_darwin(v18);
  v225 = &v203 - v21;
  __chkstk_darwin(v20);
  v206 = &v203 - v22;
  v248 = sub_100049058();
  v238 = *(v248 - 8);
  v23 = __chkstk_darwin(v248);
  v230 = &v203 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v231 = &v203 - v26;
  v27 = __chkstk_darwin(v25);
  v227 = &v203 - v28;
  v29 = __chkstk_darwin(v27);
  v207 = &v203 - v30;
  v31 = __chkstk_darwin(v29);
  v210 = &v203 - v32;
  __chkstk_darwin(v31);
  v205 = &v203 - v33;
  v249 = sub_100048E98();
  v257 = *(v249 - 8);
  v34 = __chkstk_darwin(v249);
  v232 = &v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v243 = &v203 - v37;
  v38 = __chkstk_darwin(v36);
  v211 = &v203 - v39;
  __chkstk_darwin(v38);
  v224 = &v203 - v40;
  v41 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v42 = __chkstk_darwin(v41 - 8);
  v237 = (&v203 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __chkstk_darwin(v42);
  v242 = (&v203 - v45);
  v46 = __chkstk_darwin(v44);
  v209 = &v203 - v47;
  __chkstk_darwin(v46);
  v49 = &v203 - v48;
  v50 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v51 = __chkstk_darwin(v50 - 8);
  v226 = &v203 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v55 = &v203 - v54;
  v56 = __chkstk_darwin(v53);
  v204 = &v203 - v57;
  __chkstk_darwin(v56);
  v234 = &v203 - v58;
  v59 = type metadata accessor for UsageTimelineEntry(0);
  v60 = __chkstk_darwin(v59);
  v62 = &v203 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __chkstk_darwin(v60);
  v229 = (&v203 - v64);
  v65 = __chkstk_darwin(v63);
  v235 = &v203 - v66;
  __chkstk_darwin(v65);
  v208 = &v203 - v67;
  v68 = sub_100049BE8();
  v221 = *(v68 - 8);
  __chkstk_darwin(v68);
  v220 = &v203 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_100049BA8();
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v214 = (&v203 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v217 = sub_100049C08();
  v215 = *(v217 - 8);
  v71 = __chkstk_darwin(v217);
  v212 = &v203 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v213 = &v203 - v73;
  v241 = sub_100049BB8();
  v219 = *(v241 - 1);
  __chkstk_darwin(v241);
  v240 = &v203 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_100049CB8();
  v250 = *(v256 - 8);
  v75 = *(v250 + 64);
  v76 = __chkstk_darwin(v256);
  v77 = &v203 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __chkstk_darwin(v76);
  v203 = &v203 - v79;
  __chkstk_darwin(v78);
  v239 = &v203 - v80;
  v81 = type metadata accessor for XPCPersistentStoreManager();
  v265[3] = v81;
  v265[4] = &off_10005AA70;
  v265[0] = a7;

  v247 = objc_autoreleasePoolPush();
  v82 = *(*sub_1000028DC(v265, v81) + 24) == 1;
  v236 = v59;
  if (v82)
  {
    if (qword_10005D698 != -1)
    {
      swift_once();
    }

    v233 = a3;
    v231 = v68;
    v232 = v49;
    v83 = sub_1000492C8();
    v228 = sub_1000143C0(v83, qword_10005DC28);
    v84 = sub_1000492A8();
    v85 = sub_10004A0A8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Successfully loaded persistent store.", v86, 2u);
    }

    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    v88 = v250;
    v89 = *(v250 + 16);
    v90 = v239;
    v91 = v256;
    v242 = (v250 + 16);
    v237 = v89;
    v89(v239, v253, v256);
    v92 = (*(v88 + 80) + 72) & ~*(v88 + 80);
    v244 = *(v88 + 80);
    v93 = swift_allocObject();
    v94 = v254;
    v95 = v255;
    *(v93 + 16) = v87;
    *(v93 + 24) = v94;
    *(v93 + 32) = v95;
    *(v93 + 40) = a9;
    *(v93 + 48) = a10;
    v96 = v233;
    *(v93 + 56) = v246;
    *(v93 + 64) = v96;
    v97 = *(v88 + 32);
    v230 = (v88 + 32);
    v229 = v97;
    (v97)(v93 + v92, v90, v91);
    LODWORD(v243) = v245 & 1;
    *(v93 + v92 + v75) = v245 & 1;
    v263 = sub_10001ABF4;
    v264 = v93;
    aBlock = _NSConcreteStackBlock;
    v260 = 1107296256;
    v261 = sub_10001B29C;
    v262 = &unk_10005A2C8;
    _Block_copy(&aBlock);
    v258 = _swiftEmptyArrayStorage;
    v98 = sub_10001B1D0(&qword_10005DDD0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v245 = v87;

    v99 = sub_1000027D4(&qword_10005DDD8, &qword_10004B8C0);
    v100 = sub_100005708(&qword_10005DDE0, &qword_10005DDD8, &qword_10004B8C0, &protocol conformance descriptor for [A]);
    sub_10004A178();
    sub_100049C38();
    swift_allocObject();
    v101 = sub_100049C18();

    if (v96)
    {
      v251 = v100;
      v252 = v99;
      v257 = v98;
      v250 = a12;
      v102 = ~v244;
      sub_10001B134(0, &qword_10005DDC8, OS_dispatch_queue_ptr);

      v103 = sub_10004A0F8();
      v104 = v212;
      sub_100049BF8();
      v105 = v214;
      *v214 = 20;
      v106 = v216;
      v107 = v218;
      (*(v216 + 104))(v105, enum case for DispatchTimeInterval.seconds(_:), v218);
      v108 = v213;
      sub_100049C48();
      (*(v106 + 8))(v105, v107);
      v109 = *(v215 + 8);
      v110 = v217;
      v109(v104, v217);
      sub_10004A0D8();

      v109(v108, v110);
      if (qword_10005D6A0 != -1)
      {
        swift_once();
      }

      v249 = qword_100060288;
      v111 = v239;
      v112 = v256;
      v237(v239, v253, v256);
      v113 = (v244 + 80) & v102;
      v114 = (v75 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
      v115 = swift_allocObject();
      *(v115 + 16) = v250;
      *(v115 + 24) = v243;
      v116 = v233;
      *(v115 + 32) = v246;
      *(v115 + 40) = v116;
      v117 = v223;
      *(v115 + 48) = v222;
      *(v115 + 56) = v117;
      *(v115 + 64) = v245;
      *(v115 + 72) = v101;
      (v229)(v115 + v113, v111, v112);
      v118 = (v115 + v114);
      *v118 = a9;
      v118[1] = a10;
      v119 = (v115 + ((v114 + 23) & 0xFFFFFFFFFFFFFFF8));
      v120 = v255;
      *v119 = v254;
      v119[1] = v120;
      v263 = sub_10001AD88;
      v264 = v115;
      aBlock = _NSConcreteStackBlock;
      v260 = 1107296256;
      v261 = sub_10001B29C;
      v262 = &unk_10005A318;
      v121 = _Block_copy(&aBlock);

      v122 = v220;
      sub_100049BC8();
      v258 = _swiftEmptyArrayStorage;
      v123 = v240;
      v124 = v241;
      sub_10004A178();
      sub_10004A108();
      _Block_release(v121);

      (*(v219 + 8))(v123, v124);
      (*(v221 + 8))(v122, v231);

LABEL_53:

      goto LABEL_54;
    }

    v244 = v101;
    v167 = sub_1000492A8();
    v168 = sub_10004A088();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&_mh_execute_header, v167, v168, "Failed to provide non-null dsid. Returning placeholder.", v169, 2u);
    }

    v170 = v238;
    v171 = v248;
    (*(v238 + 56))(v234, 1, 1);
    v172 = v249;
    (*(v257 + 56))(v232, 1, 1);
    v173 = v205;
    sub_100049038();
    v174 = v206;
    sub_1000490B8();
    v175 = v203;
    v176 = v256;
    v237(v203, v253, v256);
    v177 = (*(v250 + 88))(v175, v176);
    v178 = v210;
    v179 = v209;
    v180 = v207;
    v181 = v236;
    if (v177 != enum case for WidgetFamily.systemSmall(_:))
    {
      if (v177 == enum case for WidgetFamily.systemMedium(_:))
      {
        v182 = v224;
        v183 = 15;
        goto LABEL_42;
      }

      if (v177 == enum case for WidgetFamily.systemLarge(_:) || v177 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        sub_10001C284(v173, v224);
        goto LABEL_43;
      }

      if (v177 != enum case for WidgetFamily.accessoryCircular(_:) && v177 != enum case for WidgetFamily.accessoryRectangular(_:) && v177 != enum case for WidgetFamily.accessoryInline(_:))
      {
        sub_10001C284(v173, v224);
        v253 = *(v251 + 8);
        v253(v174, v252);
        v242 = *(v170 + 8);
        (v242)(v173, v171);
        (*(v250 + 8))(v175, v256);
        goto LABEL_44;
      }
    }

    v182 = v224;
    v183 = 9;
LABEL_42:
    sub_100022910(v183, v173, v174, v182);
LABEL_43:
    v253 = *(v251 + 8);
    v253(v174, v252);
    v242 = *(v170 + 8);
    (v242)(v173, v171);
LABEL_44:
    sub_100049038();
    sub_1000490B8();
    *v235 = 0;
    v184 = v204;
    sub_1000055FC(v234, v204, &qword_10005DC10, &qword_10004B7C0);
    v185 = v170;
    v186 = *(v170 + 48);
    if (v186(v184, 1, v171) == 1)
    {
      (*(v185 + 16))(v180, v178, v171);
      if (v186(v184, 1, v171) != 1)
      {
        sub_100005664(v184, &qword_10005DC10, &qword_10004B7C0);
      }
    }

    else
    {
      (*(v185 + 32))(v180, v184, v171);
    }

    v187 = v235;
    v188 = &v235[v181[6]];
    v189 = &v235[v181[8]];
    (*(v185 + 32))(&v235[v181[5]], v180, v171);
    *v188 = 0;
    v188[1] = 0;
    v190 = &v187[v181[7]];
    *v190 = a9;
    v190[1] = a10;
    *v189 = v246;
    v189[1] = 0;
    v191 = v232;
    sub_1000055FC(v232, v179, &qword_10005DE00, &qword_10004B8D8);
    v192 = v257;
    v193 = *(v257 + 48);
    if (v193(v179, 1, v172) == 1)
    {

      v194 = v191;
      v195 = v225;
      sub_10001C284(v178, v211);
      v253(v195, v252);
      (v242)(v178, v171);
      sub_100005664(v194, &qword_10005DE00, &qword_10004B8D8);
      v192 = v257;
      sub_100005664(v234, &qword_10005DC10, &qword_10004B7C0);
      v196 = v193(v179, 1, v172);
      v197 = v211;
      if (v196 != 1)
      {
        sub_100005664(v179, &qword_10005DE00, &qword_10004B8D8);
      }
    }

    else
    {

      v253(v225, v252);
      (v242)(v178, v171);
      sub_100005664(v191, &qword_10005DE00, &qword_10004B8D8);
      sub_100005664(v234, &qword_10005DC10, &qword_10004B7C0);
      v197 = v211;
      (*(v192 + 32))(v211, v179, v172);
    }

    v198 = v181[18];
    v199 = *(v192 + 32);
    v200 = v235;
    v199(&v235[v181[9]], v197, v172);
    v199((v200 + v181[10]), v224, v172);
    *(v200 + v181[11]) = _swiftEmptyArrayStorage;
    *(v200 + v181[12]) = v243;
    *(v200 + v181[13]) = _swiftEmptyArrayStorage;
    *(v200 + v181[14]) = 0;
    *(v200 + v181[15]) = 0;
    *(v200 + v181[16]) = _swiftEmptyArrayStorage;
    *(v200 + v181[17]) = 0;
    *(v200 + v198) = 0;
    v201 = v208;
    sub_10001A5E0(v200, v208, type metadata accessor for UsageTimelineEntry);
    v254(v201);

    sub_10001AAAC(v201, type metadata accessor for UsageTimelineEntry);
    goto LABEL_53;
  }

  if (qword_10005D698 != -1)
  {
    swift_once();
  }

  v125 = sub_1000492C8();
  sub_1000143C0(v125, qword_10005DC28);
  v126 = sub_1000492A8();
  v127 = sub_10004A088();
  v128 = os_log_type_enabled(v126, v127);
  v129 = v249;
  v130 = v257;
  v246 = v55;
  if (v128)
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&_mh_execute_header, v126, v127, "Failed to initialize persistent store. Returning placeholder timeline entry", v131, 2u);
  }

  v132 = v238;
  (*(v238 + 56))(v246, 1, 1, v248);
  (*(v130 + 56))(v242, 1, 1, v129);
  v133 = v227;
  sub_100049038();
  v134 = v228;
  sub_1000490B8();
  v135 = v250;
  v136 = v256;
  (*(v250 + 16))(v77, v253, v256);
  v137 = (*(v135 + 88))(v77, v136);
  v138 = v231;
  if (v137 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v137 == enum case for WidgetFamily.systemMedium(_:))
    {
      v139 = v243;
      v140 = 15;
      goto LABEL_19;
    }

    if (v137 == enum case for WidgetFamily.systemLarge(_:) || v137 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      sub_10001C284(v133, v243);
      goto LABEL_20;
    }

    if (v137 != enum case for WidgetFamily.accessoryCircular(_:) && v137 != enum case for WidgetFamily.accessoryRectangular(_:) && v137 != enum case for WidgetFamily.accessoryInline(_:))
    {
      sub_10001C284(v133, v243);
      v253 = *(v251 + 8);
      v253(v134, v252);
      v141 = v248;
      v241 = *(v238 + 8);
      (v241)(v133, v248);
      v132 = v238;
      (*(v135 + 8))(v77, v256);
      goto LABEL_21;
    }
  }

  v139 = v243;
  v140 = 9;
LABEL_19:
  sub_100022910(v140, v133, v134, v139);
LABEL_20:
  v253 = *(v251 + 8);
  v253(v134, v252);
  v141 = v248;
  v241 = *(v132 + 8);
  (v241)(v133, v248);
LABEL_21:
  sub_100049038();
  sub_1000490B8();
  *v62 = 0;
  v142 = v226;
  sub_1000055FC(v246, v226, &qword_10005DC10, &qword_10004B7C0);
  v143 = *(v132 + 48);
  v144 = v143(v142, 1, v141);
  v145 = v237;
  v146 = v230;
  if (v144 == 1)
  {
    (*(v132 + 16))(v230, v138, v141);
    if (v143(v142, 1, v141) != 1)
    {
      sub_100005664(v142, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(v132 + 32))(v230, v142, v141);
  }

  v147 = &v62[v59[6]];
  v148 = &v62[v59[8]];
  (*(v132 + 32))(&v62[v59[5]], v146, v141);
  *v147 = 0;
  v147[1] = 0;
  v149 = &v62[v59[7]];
  *v149 = a9;
  v149[1] = a10;
  *v148 = 0;
  v148[1] = 0;
  v150 = v242;
  sub_1000055FC(v242, v145, &qword_10005DE00, &qword_10004B8D8);
  v151 = v257;
  v152 = *(v257 + 48);
  v153 = v249;
  if (v152(v145, 1, v249) == 1)
  {
    v154 = v232;
    v155 = v138;
    v156 = v150;
    v157 = v138;
    v158 = v244;
    sub_10001C284(v155, v232);
    v253(v158, v252);
    v159 = v237;
    (v241)(v157, v141);
    v160 = v156;
    v151 = v257;
    sub_100005664(v160, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v246, &qword_10005DC10, &qword_10004B7C0);
    v161 = v154;
    if (v152(v159, 1, v153) != 1)
    {
      sub_100005664(v159, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v253(v244, v252);
    (v241)(v138, v141);
    sub_100005664(v150, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v246, &qword_10005DC10, &qword_10004B7C0);
    v161 = v232;
    (*(v151 + 32))(v232, v145, v153);
  }

  v162 = v236;
  v163 = v236[18];
  v164 = *(v151 + 32);
  v164(&v62[v236[9]], v161, v153);
  v164(&v62[v162[10]], v243, v153);
  *&v62[v162[11]] = _swiftEmptyArrayStorage;
  v62[v162[12]] = v245 & 1;
  *&v62[v162[13]] = _swiftEmptyArrayStorage;
  v62[v162[14]] = 0;
  v62[v162[15]] = 0;
  *&v62[v162[16]] = _swiftEmptyArrayStorage;
  *&v62[v162[17]] = 0;
  *&v62[v163] = 0;
  v165 = v62;
  v166 = v229;
  sub_10001A5E0(v165, v229, type metadata accessor for UsageTimelineEntry);
  v254(v166);
  sub_10001AAAC(v166, type metadata accessor for UsageTimelineEntry);
LABEL_54:
  objc_autoreleasePoolPop(v247);
  return sub_100002890(v265);
}