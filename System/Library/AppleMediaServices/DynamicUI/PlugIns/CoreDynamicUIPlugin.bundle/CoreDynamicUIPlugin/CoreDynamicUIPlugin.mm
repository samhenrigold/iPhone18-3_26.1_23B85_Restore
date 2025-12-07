void sub_2490(id a1)
{
  v1 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v1 getActivePairedDevice];

  v2 = [v5 objectForKeyedSubscript:NRDevicePropertySystemVersion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = qword_C7568;
  qword_C7568 = v3;
}

__n128 sub_279C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_27BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return sub_42B0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_8F0C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_28A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v76 = a3;
  v4 = sub_8EFE4();
  sub_42F8();
  v94 = v5;
  __chkstk_darwin(v6);
  sub_42D0();
  sub_4290();
  __chkstk_darwin(v7);
  sub_4290();
  __chkstk_darwin(v8);
  v10 = &v75 - v9;
  v11 = sub_332C(&qword_C2DD0, &unk_935C0);
  __chkstk_darwin(v11 - 8);
  sub_42D0();
  sub_4290();
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  v15 = sub_8F0C4();
  sub_42F8();
  v83 = v16;
  __chkstk_darwin(v17);
  sub_42BC();
  v80 = v18;
  v19 = type metadata accessor for AcknowledgePrivacyAction(0);
  sub_4248();
  __chkstk_darwin(v20);
  sub_42BC();
  v84 = v21;
  sub_8E394();
  inited = swift_initStackObject();
  v87 = a1;
  sub_8EFF4();
  v22 = sub_8EFB4();
  v86 = v4;
  if ((v22 & 1) == 0)
  {
    v23 = v80;
    v24 = v94;
    v25 = v77;
    sub_315C(v10, v82, v77);
    v26 = sub_33C0(v25, 1, v15);
    v27 = v15;
    if (v26 != 1)
    {
      v39 = sub_42E4(v24);
      v40(v39);
      v41 = *(v83 + 32);
      v41(v14, v77, v15);
      sub_33E8(v14, 0, 1, v15);
      v38 = v23;
      v41(v23, v14, v27);
      v37 = v27;
      goto LABEL_8;
    }

    sub_3410(v77, &qword_C2DD0, &unk_935C0);
  }

  sub_8F504();
  sub_4230();
  v30 = sub_3E84(v28, v29, &protocol conformance descriptor for JSONError);
  sub_4264(v30);
  strcpy(v31, "actionMetrics");
  *(v31 + 7) = -4864;
  *(v31 + 2) = v19;
  sub_42A0();
  (*(v32 + 104))();
  swift_willThrow();
  v81 = 0;
  v33 = sub_42E4(v94);
  v34(v33);

  sub_33E8(v14, 1, 1, v15);
  v35 = v80;
  sub_8F0B4();
  v36 = sub_33C0(v14, 1, v15);
  v37 = v15;
  v38 = v35;
  if (v36 != 1)
  {
    sub_3410(v14, &qword_C2DD0, &unk_935C0);
  }

LABEL_8:
  v42 = v84;
  v43 = *(v83 + 32);
  v79 = v19[5];
  v80 = v37;
  v43(v84 + v79, v38, v37);
  sub_8EFF4();
  v44 = sub_8EFB4();
  v45 = v82;
  if (v44)
  {
LABEL_11:
    sub_8F504();
    sub_4230();
    v50 = sub_3E84(v48, v49, &protocol conformance descriptor for JSONError);
    v47 = sub_4264(v50);
    strcpy(v51, "failureAction");
    *(v51 + 7) = -4864;
    *(v51 + 2) = v19;
    sub_42A0();
    (*(v52 + 104))();
    swift_willThrow();
    sub_4284();
    sub_4320();
    v53();

    sub_430C();
    goto LABEL_12;
  }

  v46 = v81;
  sub_8E384();
  v47 = v46;
  if (v46)
  {

    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    sub_3410(&v88, &qword_C2DE0, &qword_91DB0);
    goto LABEL_11;
  }

  sub_4284();
  sub_4320();
  v73();
  sub_3A94(&v88, &v91);
LABEL_12:
  v54 = v42 + v19[7];
  v55 = v92;
  *v54 = v91;
  *(v54 + 16) = v55;
  *(v54 + 32) = v93;
  sub_8EFF4();
  if (sub_8EFB4())
  {
LABEL_15:
    sub_8F504();
    sub_4230();
    v58 = sub_3E84(v56, v57, &protocol conformance descriptor for JSONError);
    v47 = sub_4264(v58);
    strcpy(v59, "successAction");
    *(v59 + 7) = -4864;
    *(v59 + 2) = v19;
    sub_42A0();
    (*(v60 + 104))();
    swift_willThrow();
    sub_4284();
    sub_4320();
    v61();

    sub_430C();
    goto LABEL_16;
  }

  sub_8E384();
  if (v47)
  {

    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    sub_3410(&v88, &qword_C2DE0, &qword_91DB0);
    goto LABEL_15;
  }

  sub_4284();
  sub_4320();
  v74();
  sub_3A94(&v88, &v91);
LABEL_16:
  v62 = v84;
  v63 = v84 + v19[6];
  v64 = v92;
  *v63 = v91;
  *(v63 + 16) = v64;
  *(v63 + 32) = v93;
  v65 = v87;
  v66 = sub_473C0();
  if (v47)
  {
    sub_4284();
    v85(v65, v86);
    sub_8F004();
    sub_4248();
    (*(v68 + 8))(v45);
    (*(v83 + 8))(v62 + v79, v80);
    sub_3410(v63, &qword_C2DE0, &qword_91DB0);
    return sub_3410(v54, &qword_C2DE0, &qword_91DB0);
  }

  else
  {
    v70 = v66;
    v71 = v67;
    sub_4284();
    v85(v65, v86);
    *v62 = v70;
    v62[1] = v71;
    sub_39D4(v62, v76);
    sub_8F004();
    sub_4248();
    (*(v72 + 8))(v45);
    return sub_3A38(v62);
  }
}

uint64_t sub_315C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F0A4();
  v13 = sub_8F0C4();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_332C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for AcknowledgePrivacyAction(uint64_t a1)
{
  result = qword_C2EB8;
  if (!qword_C2EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3410(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_332C(a2, a3);
  sub_4248();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_348C(uint64_t a1, id *a2)
{
  result = sub_8F5D4();
  *a2 = 0;
  return result;
}

uint64_t sub_3520(uint64_t a1, id *a2)
{
  v3 = sub_8F5E4();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_35A0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_4154(a2);
  *a1 = result;
  return result;
}

uint64_t sub_35CC()
{
  v1 = sub_4258();
  result = sub_35F4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_35F8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_8F5C4();

  *a2 = v3;
  return result;
}

uint64_t sub_3640(uint64_t a1)
{
  v2 = sub_3E84(&qword_C2F70, type metadata accessor for Kind, &unk_921B8);
  v3 = sub_3E84(&qword_C2F78, type metadata accessor for Kind, &unk_92158);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_36FC(uint64_t a1)
{
  v2 = sub_3E84(&qword_C2F80, type metadata accessor for Context, &unk_9209C);
  v3 = sub_3E84(&qword_C2F88, type metadata accessor for Context, &unk_9203C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_37B8(uint64_t a1)
{
  v2 = sub_3E84(&qword_C2F90, type metadata accessor for Size, &unk_91F80);
  v3 = sub_3E84(&qword_C2F98, type metadata accessor for Size, &unk_91F20);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3890(uint64_t a1)
{
  sub_8F5F4();
  v1 = sub_8F664();

  return v1;
}

uint64_t sub_38E4(uint64_t a1, uint64_t a2)
{
  sub_8F5F4();
  sub_8F644();
}

Swift::Int sub_3954(uint64_t a1, uint64_t a2)
{
  sub_8F5F4();
  sub_8FC04();
  sub_8F644();
  v2 = sub_8FC24();

  return v2;
}

uint64_t sub_39D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcknowledgePrivacyAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3A38(uint64_t a1)
{
  v2 = type metadata accessor for AcknowledgePrivacyAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3A94(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_3AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_8F0C4();
    v9 = a1 + *(a3 + 20);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_3B98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_8F0C4();
    v8 = v5 + *(a4 + 20);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

void sub_3C18(uint64_t a1)
{
  sub_8F0C4();
  if (v1 <= 0x3F)
  {
    sub_3CAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3CAC(uint64_t a1)
{
  if (!qword_C2EC8)
  {
    sub_3D10(&unk_C2ED0, &qword_91E80);
    v1 = sub_8F924();
    if (!v2)
    {
      atomic_store(v1, &qword_C2EC8);
    }
  }
}

uint64_t sub_3D10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_3D6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3D78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_42B0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3D90(uint64_t result, int a2, int a3)
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

void sub_3DE0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_3E2C(uint64_t a1)
{
  result = sub_3E84(&qword_C2F20, type metadata accessor for AcknowledgePrivacyAction, &unk_91D50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NSString sub_4154(uint64_t a1)
{
  sub_8F5F4();
  v1 = sub_8F5C4();

  return v1;
}

uint64_t sub_418C(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C2DE0, &qword_91DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4264(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_42E4@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 216) = *(a1 + 8);
  return result;
}

double sub_430C()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t sub_432C(uint64_t *a1)
{
  v2 = v1;
  sub_4D28();
  sub_8F164();
  v4 = aBlock;
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v5 = sub_8E304();
  sub_4D6C(v5, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92300;
  v23 = type metadata accessor for AcknowledgePrivacyActionImplementation();
  aBlock = v1;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&aBlock);
  aBlock = 0;
  v21 = 0xE000000000000000;
  sub_8F9E4(41);

  aBlock = 0xD000000000000027;
  v21 = 0x800000000009D960;
  v9 = *a1;
  v8 = a1[1];
  v27._countAndFlagsBits = v9;
  v27._object = v8;
  sub_8F654(v27);
  v23 = &type metadata for String;
  sub_8E264();
  sub_4DA4(&aBlock);
  aBlock = 0x3A746E756F636361;
  v21 = 0xE900000000000020;
  v26 = v4;
  v10 = v4;
  sub_332C(&qword_C3128, &qword_92388);
  v28._countAndFlagsBits = sub_8F604();
  sub_8F654(v28);

  v23 = &type metadata for String;
  sub_8E264();
  sub_4DA4(&aBlock);
  sub_8E2E4();

  v11 = objc_allocWithZone(AMSAcknowledgePrivacyTask);
  v12 = v10;

  v13 = sub_4E0C(v9, v8, v4);
  v14 = [v13 acknowledgePrivacy];

  sub_332C(&qword_C3130, qword_92390);
  v15 = sub_8F444();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v15;
  v24 = sub_4EB0;
  v25 = v16;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_271E8;
  v23 = &unk_B7538;
  v17 = _Block_copy(&aBlock);

  [v14 addFinishBlock:v17];
  _Block_release(v17);
  v23 = sub_8F224();
  v24 = &protocol witness table for SyncTaskScheduler;
  sub_4ED0(&aBlock);
  sub_8F214();
  v18 = sub_8F3B4();

  sub_4F30(&aBlock);
  return v18;
}

void sub_4770(char a1, uint64_t a2, unint64_t a3)
{
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v5 = sub_8E304();
  sub_4D6C(v5, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v6 = type metadata accessor for AcknowledgePrivacyActionImplementation();
  v20 = v6;
  v18 = a3;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&v18);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_8F9E4(26);

  v18 = 0xD000000000000018;
  v19 = 0x800000000009D9B0;
  if (a1)
  {
    v9._countAndFlagsBits = 1702195828;
  }

  else
  {
    v9._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v9._object = v10;
  sub_8F654(v9);

  v20 = &type metadata for String;
  sub_8E264();
  sub_4DA4(&v18);
  sub_8E2E4();

  if (a2)
  {
    *(swift_allocObject() + 16) = xmmword_92310;
    v20 = v6;
    v18 = a3;

    swift_errorRetain();
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(&v18);
    v18 = 0;
    v19 = 0xE000000000000000;
    v21._countAndFlagsBits = 0x203A726F727245;
    v21._object = 0xE700000000000000;
    sub_8F654(v21);
    sub_332C(&unk_C3EF0, &qword_93430);
    sub_8FA64();
    v20 = &type metadata for String;
    sub_8E264();
    sub_4DA4(&v18);
    sub_8E2D4();

    sub_8F3F4();
  }

  else if (a1)
  {
    LOBYTE(v18) = 1;
    sub_8F414();
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_92310;
    v20 = v6;
    v18 = a3;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(&v18);
    v20 = &type metadata for String;
    v18 = 0xD000000000000019;
    v19 = 0x800000000009D9D0;
    sub_8E264();
    sub_4DA4(&v18);
    sub_8E2D4();

    v15 = sub_8F5C4();
    v16 = AMSError();

    sub_8F3F4();
  }
}

char *sub_4C5C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *(a2 + 24) = &type metadata for Bool;
  *a2 = v2;
  return result;
}

unint64_t sub_4CAC()
{
  result = qword_C2F20;
  if (!qword_C2F20)
  {
    type metadata accessor for AcknowledgePrivacyAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2F20);
  }

  return result;
}

unint64_t sub_4D28()
{
  result = qword_C3120;
  if (!qword_C3120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C3120);
  }

  return result;
}

uint64_t sub_4D6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_4DA4(uint64_t a1)
{
  v2 = sub_332C(&unk_C3EB0, &qword_92380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_4E0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_8F5C4();

  v6 = [v3 initWithPrivacyIdentifier:v5 account:a3];

  return v6;
}

uint64_t sub_4E70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4EB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_4ED0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_4F30(void *a1)
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

unint64_t sub_4F7C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B6848;
  v6._object = a2;
  v4 = sub_8FB14(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_4FC8(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x657263536C6C7566;
  }

  return 0xD000000000000011;
}

unint64_t sub_504C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4F7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_507C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4FC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_50A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_8F0C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_511C(uint64_t a1, uint64_t a2)
{
  sub_8948();
  v77 = v2;
  v87 = v3;
  v5 = v4;
  v71 = v6;
  v7 = sub_332C(&qword_C2DD0, &unk_935C0);
  __chkstk_darwin(v7 - 8);
  v78 = &v70 - v8;
  sub_8EFE4();
  sub_42F8();
  v81 = v9;
  v82 = v10;
  v11 = __chkstk_darwin(v9);
  v72 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v70 - v13;
  v83 = sub_8F0C4();
  sub_42F8();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_8814();
  v76 = v19 - v18;
  v20 = type metadata accessor for ActivityShelfPageAction(0);
  __chkstk_darwin(v20);
  sub_8814();
  v23 = (v22 - v21);
  v25 = v22 - v21 + *(v24 + 28);
  sub_8E394();
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v80 = v25;
  *(v25 + 32) = 0;
  inited = swift_initStackObject();
  sub_8EFF4();
  v27 = sub_8EFB4();
  v79 = v16;
  if (v27)
  {
    goto LABEL_4;
  }

  v70 = inited;
  v28 = v82;
  v73 = v20;
  v74 = v5;
  v75 = v23;
  sub_88EC();
  v29 = v78;
  sub_782C(v14, v87, v30, v78);
  v31 = v83;
  if (sub_33C0(v29, 1, v83) == 1)
  {
    sub_6678(v29, &qword_C2DD0, &unk_935C0);
    v23 = v75;
    v5 = v74;
    sub_8978();
LABEL_4:
    sub_8F504();
    sub_87A8();
    v34 = sub_8708(v32, v33, &protocol conformance descriptor for JSONError);
    sub_4264(v34);
    strcpy(v35, "actionMetrics");
    *(v35 + 7) = -4864;
    *(v35 + 2) = v20;
    sub_42A0();
    (*(v36 + 104))();
    swift_willThrow();

    v37 = v81;
    v38 = *(v82 + 1);
    v38(v5, v81);
    v38(v14, v37);
    v39 = 0;
    v40 = v83;
    v41 = v80;
    v42 = v23;
    goto LABEL_5;
  }

  v44 = *(v28 + 1);
  v45 = v81;
  v44(v14, v81);
  v46 = *(v79 + 32);
  v47 = v76;
  v46(v76, v29, v31);
  sub_8978();
  v42 = v75;
  v46(&v75[*(v20 + 24)], v47, v31);
  v48 = v74;
  v49 = v77;
  v50 = sub_47508();
  if (!v49)
  {
    v82 = v44;
    *v42 = v50 & 1;
    sub_8EFF4();
    v51 = sub_8EFB4();
    v52 = v80;
    if (v51)
    {
      v53 = sub_8F504();
      sub_87A8();
      sub_8708(v54, v55, &protocol conformance descriptor for JSONError);
      swift_allocError();
      *v56 = 0x697463417478656ELL;
      v56[1] = 0xEA00000000006E6FLL;
      sub_8978();
      *(v57 + 16) = 0xEA00000000006E6FLL;
      (*(*(v53 - 8) + 104))();
      swift_willThrow();
      v58 = sub_8990();
      v59(v58);

      v86 = 0;
      memset(v85, 0, sizeof(v85));
    }

    else
    {
      sub_8E384();
      v68 = sub_8990();
      v69(v68);
      sub_3A94(&v84, v85);
      sub_8978();
    }

    sub_66CC(v85, v52);
    v60 = v74;
    sub_58E4(0x656C797473, 0xE500000000000000, 0xEA00000000006E6FLL, sub_7A9C, &type metadata for ActivityShelfPageAction.Style, v61, v62, v63, v70, v71, SWORD2(v71), SBYTE6(v71), HIBYTE(v71));
    v64 = v75;
    v66 = v65;
    v82(v60, v44);
    *(v64 + 1) = v66;
    sub_79DC(v64, v71);
    sub_8F004();
    sub_887C();
    (*(v67 + 8))(v87);
    sub_7A40(v64);
    goto LABEL_8;
  }

  v40 = v31;
  v44(v48, v45);

  v39 = 1;
  v41 = v80;
LABEL_5:
  sub_8F004();
  sub_887C();
  (*(v43 + 8))(v87);
  if (v39)
  {
    (*(v79 + 8))(&v42[*(v20 + 24)], v40);
  }

  sub_6678(v41, &qword_C2DE0, &qword_91DB0);
LABEL_8:
  sub_8960();
}

void sub_58E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  sub_8948();
  v14 = v13;
  sub_88AC(v15, v16, v17);
  sub_42F8();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_87E4();
  sub_88D0();
  if ((sub_8EFB4() & 1) != 0 || (v21 = v14(), sub_8904(v21), a13 == 3))
  {
    sub_8F504();
    sub_87A8();
    v24 = sub_8708(v22, v23, &protocol conformance descriptor for JSONError);
    v25 = sub_4264(v24);
    v27 = sub_8890(v25, v26);
    sub_8984(v27, v28);
    sub_42A0();
    (*(v29 + 104))();
    swift_willThrow();
    v30 = *(v19 + 8);

    v31 = sub_88A0();
    v30(v31);
  }

  else
  {
    v32 = sub_88A0();
    v33(v32);
  }

  sub_8960();
}

void sub_5B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_8948();
  v44 = v20;
  v45 = v21;
  v23 = v22;
  v25 = v24;
  sub_88AC(v26, v27, v28);
  sub_42F8();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_87E4();
  sub_88D0();
  if ((sub_8EFB4() & 1) != 0 || (v25(0), sub_8708(v23, v44, v45), sub_8EF54(), !a10))
  {
    sub_8F504();
    sub_87A8();
    v36 = sub_8708(v34, v35, &protocol conformance descriptor for JSONError);
    v37 = sub_4264(v36);
    v39 = sub_8890(v37, v38);
    sub_8984(v39, v40);
    sub_42A0();
    (*(v41 + 104))();
    swift_willThrow();
    v42 = *(v30 + 8);

    v43 = sub_88A0();
    v42(v43);
  }

  else
  {
    v32 = sub_88A0();
    v33(v32);
  }

  sub_8960();
}

void sub_5DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_8948();
  v14 = v13;
  sub_88AC(v15, v16, v17);
  sub_42F8();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_87E4();
  sub_88D0();
  if ((sub_8EFB4() & 1) != 0 || (v21 = v14(), sub_8904(v21), a13 == 2))
  {
    sub_8F504();
    sub_87A8();
    v24 = sub_8708(v22, v23, &protocol conformance descriptor for JSONError);
    v25 = sub_4264(v24);
    v27 = sub_8890(v25, v26);
    sub_8984(v27, v28);
    sub_42A0();
    (*(v29 + 104))();
    swift_willThrow();
    v30 = *(v19 + 8);

    v31 = sub_88A0();
    v30(v31);
  }

  else
  {
    v32 = sub_88A0();
    v33(v32);
  }

  sub_8960();
}

uint64_t sub_5FD0()
{
  sub_8924();
  sub_42F8();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_87E4();
  sub_88D0();
  if ((sub_8EFB4() & 1) != 0 || (sub_7C94(), sub_8EF54(), v4 = v17, v17 == 4))
  {
    v4 = sub_8F504();
    sub_87A8();
    v7 = sub_8708(v5, v6, &protocol conformance descriptor for JSONError);
    v8 = sub_4264(v7);
    sub_8890(v8, v9);
    *(v10 + 16) = v0;
    sub_42A0();
    (*(v11 + 104))();
    swift_willThrow();
    v12 = *(v2 + 8);

    v13 = sub_88A0();
    v12(v13);
  }

  else
  {
    v14 = sub_88A0();
    v15(v14);
  }

  return v4;
}

void sub_6180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_8948();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_8EFE4();
  sub_42F8();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_87E4();
  sub_8EFF4();
  if (sub_8EFB4() & 1) != 0 || (v22 = v14(), sub_8904(v22), (a13))
  {
    sub_8F504();
    sub_87A8();
    v25 = sub_8708(v23, v24, &protocol conformance descriptor for JSONError);
    sub_4264(v25);
    *v26 = v18;
    v26[1] = v16;
    sub_8984(v26, v26);
    sub_42A0();
    (*(v27 + 104))();
    swift_willThrow();
    v28 = *(v20 + 8);

    v29 = sub_88A0();
    v28(v29);
  }

  else
  {
    v30 = sub_88A0();
    v31(v30);
  }

  sub_8960();
}

uint64_t sub_6374()
{
  sub_8924();
  sub_42F8();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_87E4();
  sub_88D0();
  if ((sub_8EFB4() & 1) != 0 || (sub_7FDC(), sub_8EF54(), v4 = v17, v17 == 5))
  {
    v4 = sub_8F504();
    sub_87A8();
    v7 = sub_8708(v5, v6, &protocol conformance descriptor for JSONError);
    v8 = sub_4264(v7);
    sub_8890(v8, v9);
    *(v10 + 16) = v0;
    sub_42A0();
    (*(v11 + 104))();
    swift_willThrow();
    v12 = *(v2 + 8);

    v13 = sub_88A0();
    v12(v13);
  }

  else
  {
    v14 = sub_88A0();
    v15(v14);
  }

  return v4;
}

uint64_t type metadata accessor for ActivityShelfPageAction(uint64_t a1)
{
  result = qword_C3268;
  if (!qword_C3268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6678(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_332C(a2, a3);
  sub_887C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_66CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C2DE0, &qword_91DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_673C(uint64_t a1, uint64_t a2)
{
  sub_89B8();
  sub_885C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_87FC();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v5);
  v7 = sub_87C0(v6, v11);
  v8(v7);
  v9 = sub_8824();
  v10(v9);
  sub_7BEC();
  sub_8838();
  sub_8F914();
  if (v3)
  {

    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 1;
    v2[5] = 0;
    v2[6] = 0;
    v2[4] = 0;
  }

  sub_89A4();
}

void sub_6878(uint64_t a1, uint64_t a2)
{
  sub_89B8();
  sub_885C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_87FC();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v5);
  v7 = sub_87C0(v6, v14);
  v8(v7);
  v9 = sub_8824();
  v10(v9);
  v11 = sub_8838();
  sub_4E988(v11, v12, v13);
  if (v3)
  {

    *(v2 + 48) = 0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
  }

  sub_89A4();
}

void sub_69D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_89B8();
  v4 = v3;
  v6 = v5;
  sub_8F004();
  sub_42F8();
  __chkstk_darwin(v7);
  sub_87FC();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v8);
  v10 = sub_87C0(v9, v15);
  v11(v10);
  v12 = sub_8824();
  v13(v12);
  v14 = sub_884C();
  v4(v14);
  if (v6)
  {
  }

  sub_89A4();
}

void sub_6B18(uint64_t a1, uint64_t a2)
{
  sub_89B8();
  sub_885C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_87FC();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v5);
  v7 = sub_87C0(v6, v11);
  v8(v7);
  v9 = sub_8824();
  v10(v9);
  sub_8838();
  sub_5BD78();
  if (v3)
  {

    *v2 = xmmword_923B0;
    bzero(v2 + 1, 0x88uLL);
  }

  sub_89A4();
}

void sub_6C90(uint64_t a1, uint64_t a2)
{
  sub_89B8();
  sub_885C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_87FC();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v5);
  v7 = sub_87C0(v6, v14);
  v8(v7);
  v9 = sub_8824();
  v10(v9);
  sub_7DE4();
  sub_884C();
  sub_8F914();
  if (v3)
  {

    v11 = xmmword_923C0;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    v11 = v15;
    v12 = v16;
    v13 = v17;
  }

  *v2 = v11;
  v2[1] = v12;
  v2[2] = v13;
  sub_89A4();
}

void sub_6DE0(uint64_t a1, uint64_t a2)
{
  sub_89B8();
  sub_885C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_87FC();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v5);
  v7 = sub_87C0(v6, v11);
  v8(v7);
  v9 = sub_8824();
  v10(v9);
  sub_7EE0();
  sub_8838();
  sub_8F914();
  if (v3)
  {

    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    *(v2 + 48) = 254;
  }

  sub_89A4();
}

uint64_t sub_6F5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_8F004();
  sub_42F8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_8814();
  v12 = v11 - v10;
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v13);
  sub_8814();
  (*(v16 + 16))(v15 - v14, a1);
  v17 = (*(v8 + 16))(v12, a2, v6);
  a3(v17);
  return sub_8F914();
}

void sub_70F8(uint64_t a1, uint64_t a2)
{
  sub_89B8();
  sub_885C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_87FC();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v5);
  v7 = sub_87C0(v6, v14);
  v8(v7);
  v9 = sub_8824();
  v10(v9);
  sub_884C();
  sub_5C0A4();
  if (v3)
  {

    v11 = xmmword_923B0;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    v11 = v15;
    v12 = v16;
    v13 = v17;
  }

  *v2 = v11;
  v2[1] = v12;
  v2[2] = v13;
  sub_89A4();
}

uint64_t sub_7238(uint64_t a1, uint64_t a2)
{
  v5 = sub_8F004();
  sub_42F8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_8814();
  v11 = v10 - v9;
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v12);
  sub_87FC();
  (*(v13 + 16))(v2, a1);
  (*(v7 + 16))(v11, a2, v5);
  sub_80D8();
  sub_8F914();
  if (v17)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return v14 | v16;
}

void sub_73C4(uint64_t a1, uint64_t a2)
{
  sub_89B8();
  sub_885C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_87FC();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v5);
  v7 = sub_87C0(v6, v11);
  v8(v7);
  v9 = sub_8824();
  v10(v9);
  sub_8838();
  sub_5AD3C();
  if (v3)
  {

    bzero(v2, 0x1D8uLL);
    v2[59] = 1;
    bzero(v2 + 60, 0xE3uLL);
  }

  sub_89A4();
}

uint64_t sub_7544(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v13 = sub_8F004();
  sub_42F8();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_87E4();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v17);
  sub_8814();
  (*(v20 + 16))(v19 - v18, a1);
  (*(v15 + 16))(v6, a2, v13);
  a3(0);
  sub_8708(a4, a5, a6);
  sub_8F914();
  return v22;
}

void sub_76E8(uint64_t a1, uint64_t a2)
{
  sub_89B8();
  sub_885C();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_87FC();
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v5);
  v7 = sub_87C0(v6, v14);
  v8(v7);
  v9 = sub_8824();
  v10(v9);
  v11 = sub_8838();
  sub_5E4DC(v11, v12, v13);
  if (v3)
  {

    bzero(v2, 0x325uLL);
  }

  sub_89A4();
}

uint64_t sub_782C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_8F004();
  sub_42F8();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_8814();
  v15 = v14 - v13;
  v16 = sub_8EFE4();
  sub_42F8();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_8814();
  v22 = v21 - v20;
  v23 = a3(0);
  (*(v18 + 16))(v22, a1, v16);
  (*(v11 + 16))(v15, a2, v9);
  sub_8F1A4();
  return sub_33E8(a5, 0, 1, v23);
}

uint64_t sub_79DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityShelfPageAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7A40(uint64_t a1)
{
  v2 = type metadata accessor for ActivityShelfPageAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_7A9C()
{
  result = qword_C3138;
  if (!qword_C3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3138);
  }

  return result;
}

unint64_t sub_7AF0()
{
  result = qword_C3140;
  if (!qword_C3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3140);
  }

  return result;
}

unint64_t sub_7B44()
{
  result = qword_C3148;
  if (!qword_C3148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3148);
  }

  return result;
}

unint64_t sub_7B98()
{
  result = qword_C3150;
  if (!qword_C3150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3150);
  }

  return result;
}

unint64_t sub_7BEC()
{
  result = qword_C3158;
  if (!qword_C3158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3158);
  }

  return result;
}

unint64_t sub_7C40()
{
  result = qword_C3160;
  if (!qword_C3160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3160);
  }

  return result;
}

unint64_t sub_7C94()
{
  result = qword_C3168;
  if (!qword_C3168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3168);
  }

  return result;
}

unint64_t sub_7CE8()
{
  result = qword_C3170;
  if (!qword_C3170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3170);
  }

  return result;
}

unint64_t sub_7D3C()
{
  result = qword_C3178;
  if (!qword_C3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3178);
  }

  return result;
}

unint64_t sub_7D90()
{
  result = qword_C3180;
  if (!qword_C3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3180);
  }

  return result;
}

unint64_t sub_7DE4()
{
  result = qword_C3190;
  if (!qword_C3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3190);
  }

  return result;
}

unint64_t sub_7E38()
{
  result = qword_C3198;
  if (!qword_C3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3198);
  }

  return result;
}

unint64_t sub_7E8C()
{
  result = qword_C31A0;
  if (!qword_C31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31A0);
  }

  return result;
}

unint64_t sub_7EE0()
{
  result = qword_C31A8;
  if (!qword_C31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31A8);
  }

  return result;
}

unint64_t sub_7F34()
{
  result = qword_C31B0;
  if (!qword_C31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31B0);
  }

  return result;
}

unint64_t sub_7F88()
{
  result = qword_C31B8;
  if (!qword_C31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31B8);
  }

  return result;
}

unint64_t sub_7FDC()
{
  result = qword_C31C0;
  if (!qword_C31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31C0);
  }

  return result;
}

unint64_t sub_8030()
{
  result = qword_C31C8;
  if (!qword_C31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31C8);
  }

  return result;
}

unint64_t sub_8084()
{
  result = qword_C31D0;
  if (!qword_C31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31D0);
  }

  return result;
}

unint64_t sub_80D8()
{
  result = qword_C31D8;
  if (!qword_C31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31D8);
  }

  return result;
}

unint64_t sub_812C()
{
  result = qword_C31E0;
  if (!qword_C31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31E0);
  }

  return result;
}

unint64_t sub_8180()
{
  result = qword_C31F0;
  if (!qword_C31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31F0);
  }

  return result;
}

unint64_t sub_81D4()
{
  result = qword_C31F8;
  if (!qword_C31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C31F8);
  }

  return result;
}

unint64_t sub_8228()
{
  result = qword_C3200;
  if (!qword_C3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3200);
  }

  return result;
}

unint64_t sub_827C()
{
  result = qword_C3208;
  if (!qword_C3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityShelfPageAction.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActivityShelfPageAction.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x8430);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_8490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8F0C4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return sub_33C0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_8564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_8F0C4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return sub_33E8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void sub_8614(uint64_t a1)
{
  sub_8F0C4();
  if (v1 <= 0x3F)
  {
    sub_3CAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_86B0(uint64_t a1)
{
  result = sub_8708(&qword_C32A8, type metadata accessor for ActivityShelfPageAction, &unk_923D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_8708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_8754()
{
  result = qword_C32B0;
  if (!qword_C32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32B0);
  }

  return result;
}

uint64_t sub_885C()
{

  return sub_8F004();
}

void *sub_8890(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t sub_88AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 88) = a3;

  return sub_8EFE4();
}

uint64_t sub_88D0()
{

  return sub_8EFF4();
}

void *sub_8904(uint64_t a1)
{

  return sub_8EF54();
}

uint64_t sub_8924()
{

  return sub_8EFE4();
}

uint64_t sub_89CC(char *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_78C2C(*a1, a1[1]);
    swift_unknownObjectRelease();
  }

  sub_332C(&qword_C3398, &qword_92E60);
  return sub_8F3E4();
}

uint64_t sub_8A40()
{
  sub_8B1C(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_8AA0()
{
  result = qword_C32A8;
  if (!qword_C32A8)
  {
    type metadata accessor for ActivityShelfPageAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32A8);
  }

  return result;
}

unint64_t sub_8B44(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B68B0;
  v6._object = a2;
  v4 = sub_8FB14(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_8B90(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 0x746C7561666564;
  }

  return 0x7463757274736564;
}

unint64_t sub_8C10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_8B44(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_8C40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8B90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_8C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v45 = a3;
  v5 = sub_8EFE4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  sub_8E394();
  inited = swift_initStackObject();
  sub_8E544();
  v11 = swift_initStackObject();
  v12 = sub_473C0();
  if (v3)
  {
    (*(v6 + 8))(a1, v5);
    sub_8F004();
    sub_887C();
    return (*(v14 + 8))(v55);
  }

  v40 = 0;
  v43 = v11;
  v44 = inited;
  v50[0] = v12;
  v50[1] = v13;
  v41 = v13;
  sub_8EFF4();
  v16 = sub_8EFB4();
  v42 = v9;
  if (v16)
  {
    goto LABEL_6;
  }

  v17 = v40;
  sub_8E384();
  if (v17)
  {

    sub_9524();
    sub_6678(v46, &qword_C2DE0, &qword_91DB0);
LABEL_6:
    v18 = sub_8F504();
    v19 = sub_923C();
    sub_4264(v19);
    *v20 = 0x6575676573;
    v20[1] = 0xE500000000000000;
    v20[2] = &_s9SelectionVN;
    (*(*(v18 - 8) + 104))(v20, enum case for JSONError.missingProperty(_:), v18);
    swift_willThrow();
    v21 = sub_955C();
    enum case for JSONError.missingProperty(_:)(v21);

    v49 = 0;
    v48 = 0u;
    v47 = 0u;
    goto LABEL_7;
  }

  v36 = sub_955C();
  enum case for JSONError.missingProperty(_:)(v36);
  sub_3A94(v46, &v47);
LABEL_7:
  v51[0] = v47;
  v51[1] = v48;
  v52 = v49;
  sub_58B0(0x656C797473, 0xE500000000000000, &_s9SelectionVN, v22, v23, v24, v25, v26);
  v27 = v42;
  v39[1] = v6;
  v40 = v5;
  v53 = v28;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    v30 = sub_8F504();
    v31 = sub_923C();
    sub_4264(v31);
    *v32 = 0x656C746974;
    v32[1] = 0xE500000000000000;
    v32[2] = &_s9SelectionVN;
    (*(*(v30 - 8) + 104))(v32, enum case for JSONError.missingProperty(_:), v30);
    swift_willThrow();

    v33 = sub_9544();
    enum case for JSONError.missingProperty(_:)(v33);
    enum case for JSONError.missingProperty(_:)(v27);
    v34 = v55;
    sub_8F004();
    sub_887C();
    (*(v35 + 8))(v34);

    return sub_6678(v51, &qword_C2DE0, &qword_91DB0);
  }

  else
  {
    v29 = v55;
    sub_8E534();
    v37 = sub_9544();
    enum case for JSONError.missingProperty(_:)(v37);
    enum case for JSONError.missingProperty(_:)(v27);
    sub_3A94(v46, &v47);
    sub_3A94(&v47, &v54);
    sub_9294(v50, v45);
    sub_8F004();
    sub_887C();
    (*(v38 + 8))(v29);
    return sub_92CC(v50);
  }
}

unint64_t sub_923C()
{
  result = qword_C2DD8;
  if (!qword_C2DD8)
  {
    sub_8F504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2DD8);
  }

  return result;
}

_BYTE *_s9SelectionV5StyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x93C8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_9400(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_9420(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9460(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_94CC()
{
  result = qword_C33A0;
  if (!qword_C33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C33A0);
  }

  return result;
}

double sub_9524()
{
  *(v0 - 288) = 0;
  result = 0.0;
  *(v0 - 304) = 0u;
  *(v0 - 320) = 0u;
  return result;
}

void sub_95A0()
{
  sub_8948();
  v16 = v2;
  v4 = v3;
  sub_8EFE4();
  sub_BB5C();
  __chkstk_darwin(v5);
  sub_BB2C();
  if (sub_8EFB4() & 1) != 0 || (v16(&v14, v1), (v15))
  {
    sub_8F504();
    v6 = sub_923C();
    v7 = sub_4264(v6);
    sub_BB74(v7, v8);
    *(v9 + 16) = v4;
    sub_42A0();
    (*(v10 + 104))();
    swift_willThrow();
    sub_BC14();
    v11 = sub_BBBC();
    v0(v11);
  }

  else
  {
    v12 = sub_BBBC();
    v13(v12);
  }

  sub_BBF8();
  sub_8960();
}

void sub_9700()
{
  sub_8948();
  sub_BBC8(v3, v4, v5, v6, v7);
  sub_BB5C();
  __chkstk_darwin(v8);
  sub_BB2C();
  if ((sub_8EFB4() & 1) != 0 || (v9 = sub_BC2C(), v10(v9), v20 == 2))
  {
    sub_8F504();
    v11 = sub_923C();
    v12 = sub_4264(v11);
    sub_BB74(v12, v13);
    *(v14 + 16) = v2;
    sub_42A0();
    (*(v15 + 104))();
    swift_willThrow();
    sub_BC14();
    v16 = sub_BBBC();
    v0(v16);
  }

  else
  {
    v17 = sub_BBBC();
    v18(v17);
    *v1 = v19;
    *(v1 + 8) = v20;
    *(v1 + 16) = v21;
    *(v1 + 32) = v22;
  }

  sub_BBF8();
  sub_8960();
}

void sub_9844()
{
  sub_8948();
  sub_BBC8(v3, v4, v5, v6, v7);
  sub_BB5C();
  __chkstk_darwin(v8);
  sub_BB2C();
  if ((sub_8EFB4() & 1) != 0 || (v9 = sub_BC2C(), v10(v9), v20 == 1))
  {
    sub_8F504();
    v11 = sub_923C();
    v12 = sub_4264(v11);
    sub_BB74(v12, v13);
    *(v14 + 16) = v2;
    sub_42A0();
    (*(v15 + 104))();
    swift_willThrow();
    sub_BC14();
    v16 = sub_BBBC();
    v0(v16);
  }

  else
  {
    v17 = sub_BBBC();
    v18(v17);
    *v1 = v19;
    *(v1 + 8) = v20;
    *(v1 + 16) = v21;
    *(v1 + 32) = v22;
  }

  sub_BBF8();
  sub_8960();
}

void sub_9988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_8948();
  sub_BB84(v24, v25, v26, v27);
  sub_BB5C();
  __chkstk_darwin(v28);
  sub_BB2C();
  if (sub_8EFB4() & 1) != 0 || (v29 = sub_BC04(), v30(v29), (a12))
  {
    sub_8F504();
    v31 = sub_923C();
    v32 = sub_4264(v31);
    sub_BB74(v32, v33);
    *(v34 + 16) = v23;
    sub_42A0();
    (*(v35 + 104))();
    swift_willThrow();
    sub_BC14();
    v36 = sub_BBBC();
    v22(v36);
  }

  else
  {
    v37 = sub_BBBC();
    v38(v37);
  }

  sub_BBF8();
  sub_8960();
}

void sub_9AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_8948();
  sub_BB84(v22, v23, v24, v25);
  sub_BB5C();
  __chkstk_darwin(v26);
  sub_BB2C();
  if ((sub_8EFB4() & 1) != 0 || (v27 = sub_BC04(), v28(v27), a10 == 1))
  {
    sub_8F504();
    v29 = sub_923C();
    v30 = sub_4264(v29);
    sub_BB74(v30, v31);
    *(v32 + 16) = v21;
    sub_42A0();
    (*(v33 + 104))();
    swift_willThrow();
    sub_BC14();
    v34 = sub_BBBC();
    v20(v34);
  }

  else
  {
    v35 = sub_BBBC();
    v36(v35);
  }

  sub_BBF8();
  sub_8960();
}

void sub_9C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_8948();
  sub_BB84(v22, v23, v24, v25);
  sub_BB5C();
  __chkstk_darwin(v26);
  sub_BB2C();
  if ((sub_8EFB4() & 1) != 0 || (v27 = sub_BC04(), v28(v27), !a10))
  {
    sub_8F504();
    v31 = sub_923C();
    v32 = sub_4264(v31);
    sub_BB74(v32, v33);
    *(v34 + 16) = v21;
    sub_42A0();
    (*(v35 + 104))();
    swift_willThrow();
    sub_BC14();
    v36 = sub_BBBC();
    v20(v36);
  }

  else
  {
    v29 = sub_BBBC();
    v30(v29);
  }

  sub_BBF8();
  sub_8960();
}

uint64_t sub_9D3C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_B6918;
  v7._object = a2;
  v4 = sub_8FB14(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_9D90(char a1)
{
  if (a1)
  {
    return 0x7472656C61;
  }

  else
  {
    return 0x68536E6F69746361;
  }
}

uint64_t sub_9DF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9D3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_9E20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_9D90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_9E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_8F0C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_9EC0()
{
  sub_8948();
  v73 = v0;
  v88 = v1;
  v3 = v2;
  v72 = v4;
  v5 = sub_332C(&qword_C2DD0, &unk_935C0);
  __chkstk_darwin(v5 - 8);
  v81 = &v69 - v6;
  v7 = sub_8EFE4();
  sub_42F8();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v71 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v80 = &v69 - v14;
  __chkstk_darwin(v13);
  v16 = &v69 - v15;
  v17 = sub_8F0C4();
  sub_42F8();
  v78 = v18;
  __chkstk_darwin(v19);
  sub_42BC();
  v75 = v20;
  v21 = type metadata accessor for AlertAction(0);
  sub_BBB0();
  __chkstk_darwin(v22);
  sub_42BC();
  v82 = v23;
  sub_8E544();
  inited = swift_initStackObject();
  v24 = v3;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v79 = v21;
  v76 = v3;
  v77 = v7;
  v25 = v81;
  sub_A738(v16, v88, v81);
  if (sub_33C0(v25, 1, v17) == 1)
  {
    sub_6678(v25, &qword_C2DD0, &unk_935C0);
    v24 = v76;
    v7 = v77;
    v21 = v79;
LABEL_4:
    sub_8F504();
    v26 = sub_923C();
    sub_4264(v26);
    strcpy(v27, "actionMetrics");
    *(v27 + 7) = -4864;
    *(v27 + 2) = v21;
    sub_42A0();
    (*(v28 + 104))();
    swift_willThrow();
    v29 = *(v9 + 8);
    v29(v24, v7);
    v29(v16, v7);
    sub_8F004();
    sub_887C();
    (*(v30 + 8))(v88);
    goto LABEL_5;
  }

  v31 = v17;
  v32 = *(v9 + 8);
  v33 = v77;
  v32(v16, v77);
  v34 = *(v78 + 32);
  v35 = v75;
  v34(v75, v25, v31);
  v36 = v31;
  v37 = v79;
  v70 = *(v79 + 32);
  v81 = v36;
  (v34)(v82 + v70, v35);
  v38 = v80;
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    v39 = v32;
    v40 = v73;
    sub_8E534();
    if (!v40)
    {
      v32(v38, v77);
      v45 = sub_9520(v83, &v85);
      goto LABEL_10;
    }

    v84 = 0;
    memset(v83, 0, sizeof(v83));
    sub_6678(v83, &unk_C55C0, &unk_92720);
    v37 = v79;
    v33 = v77;
  }

  sub_8F504();
  v41 = sub_923C();
  sub_BC40(v41);
  *v42 = 0x6567617373656DLL;
  v42[1] = 0xE700000000000000;
  v42[2] = v37;
  sub_BBB0();
  (*(v43 + 104))();
  swift_willThrow();
  v44 = v33;
  v39 = v32;
  v32(v80, v44);

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
LABEL_10:
  v46 = v86;
  v47 = v82;
  *v82 = v85;
  v47[1] = v46;
  *(v47 + 4) = v87;
  __chkstk_darwin(v45);
  *(&v69 - 2) = v88;
  v48 = v76;
  sub_9C0C(0x6F697463656C6573, 0xEA0000000000736ELL, v49, sub_B4B0, (&v69 - 4), v50, v51, v52, v69, v70, v71, v72, v73, inited, v75, v76, v77, v78, v79, v80);
  *(v47 + 5) = v53;
  sub_5A50(0x656C797473, 0xE500000000000000, v79, v54, v55, v56, v57, v58);
  *(v47 + 48) = v59 & 1;
  v60 = v71;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    v61 = sub_923C();
    sub_BC40(v61);
    *v62 = 0x656C746974;
    v62[1] = 0xE500000000000000;
    v62[2] = v79;
    sub_BBB0();
    (*(v63 + 104))();
    swift_willThrow();

    v64 = v77;
    v39(v48, v77);
    v39(v60, v64);

    v87 = 0;
    v85 = 0u;
    v86 = 0u;
  }

  else
  {
    sub_8E534();

    v68 = v77;
    v39(v76, v77);
    v39(v60, v68);
    sub_9520(v83, &v85);
  }

  v65 = v86;
  v66 = v82;
  *(v82 + 56) = v85;
  *(v66 + 72) = v65;
  *(v66 + 88) = v87;
  sub_B4F8(v66, v72);
  sub_8F004();
  sub_887C();
  (*(v67 + 8))(v88);
  sub_B55C(v66);
LABEL_5:
  sub_8960();
}

uint64_t sub_A738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F0A4();
  v13 = sub_8F0C4();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t type metadata accessor for AlertAction(uint64_t a1)
{
  result = qword_C3408;
  if (!qword_C3408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_332C(&qword_C33A8, &qword_96160);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  sub_8EF94();
  v7 = sub_8F4F4();
  v8 = sub_33C0(v6, 1, v7);
  if (v8 == 1)
  {
    sub_6678(v6, &qword_C33A8, &qword_96160);
    return 0;
  }

  else
  {
    __chkstk_darwin(v8);
    *&v12[-16] = a2;
    v9 = sub_8F4E4();
    sub_BBB0();
    (*(v10 + 8))(v6, v7);
  }

  return v9;
}

uint64_t sub_AB08(uint64_t a1, uint64_t a2)
{
  v3 = sub_332C(&qword_C33A8, &qword_96160);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  sub_8EF94();
  v6 = sub_8F4F4();
  v7 = sub_33C0(v5, 1, v6);
  if (v7 == 1)
  {
    sub_6678(v5, &qword_C33A8, &qword_96160);
    return 0;
  }

  else
  {
    __chkstk_darwin(v7);
    *&v11[-16] = a2;
    type metadata accessor for Shelf(0);
    v8 = sub_8F4E4();
    sub_BBB0();
    (*(v9 + 8))(v5, v6);
  }

  return v8;
}

double sub_AC6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_8F004();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_8EFE4();
  __chkstk_darwin(v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1);
  (*(v8 + 16))(v10, a2, v7);
  sub_8C6C(v13, v10, a3);
  if (v3)
  {

    *(a3 + 96) = 0;
    result = 0.0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_AE10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_8F004();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_8EFE4();
  __chkstk_darwin(v11);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v8 + 16))(v10, a2, v7);
  sub_8E464();
  if (v3)
  {

    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_AFB4(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_8F004();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_8EFE4();
  __chkstk_darwin(v11);
  (*(v13 + 16))(&v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v8 + 16))(v10, a2, v7);
  sub_5BD78();
  if (v3)
  {

    *a3 = xmmword_923B0;
    bzero(a3 + 1, 0x88uLL);
  }
}

uint64_t sub_B15C(uint64_t a1, uint64_t a2)
{
  v5 = sub_8F004();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8EFE4();
  __chkstk_darwin(v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  (*(v6 + 16))(v8, a2, v5);
  v19 = sub_5DC48(v11, v8, v13, v14, v15, v16, v17, v18);
  if (!v2)
  {
    return v19 & 0xFFFFFF01;
  }

  return 2;
}

uint64_t sub_B2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_8F004();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_8EFE4();
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1);
  (*(v8 + 16))(v10, a2, v7);
  sub_58E08(v13, v10, a3);
  if (v3)
  {

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for Shelf(0);
  return sub_33E8(a3, v15, 1, v16);
}

uint64_t sub_B4B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_A970(a1, *(v2 + 16), sub_B5B8);
  *a2 = result;
  return result;
}

uint64_t sub_B4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B55C(uint64_t a1)
{
  v2 = type metadata accessor for AlertAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  result = sub_B15C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertAction.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AlertAction.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xB7C4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_B81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_8F0C4();
    v10 = a1 + *(a3 + 32);

    return sub_33C0(v10, a2, v9);
  }
}

uint64_t sub_B8C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_8F0C4();
    v8 = v5 + *(a4 + 32);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_B944(uint64_t a1)
{
  sub_BA38(319, &qword_C3418, &qword_C55D0, &qword_92750);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_BA38(319, &qword_C3420, &unk_C3428, qword_92758);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_8F0C4();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_BA38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_3D10(a3, a4);
    v5 = sub_8F924();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_BA90()
{
  result = qword_C3468;
  if (!qword_C3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3468);
  }

  return result;
}

uint64_t sub_BB2C()
{

  return sub_8EFF4();
}

void *sub_BB74(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t sub_BB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 88) = a4;

  return sub_8EFE4();
}

uint64_t sub_BBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 160) = a5;
  *(v5 - 144) = a4;

  return sub_8EFE4();
}

uint64_t sub_BC14()
{
}

uint64_t sub_BC40(uint64_t a1)
{

  return swift_allocError();
}

Swift::Int NetworkInterface.hashValue.getter(unsigned __int8 a1)
{
  sub_8FC04();
  sub_8FC14(a1);
  return sub_8FC24();
}

Swift::Int sub_BCFC(uint64_t a1)
{
  v2 = *v1;
  sub_8FC04();
  sub_8FC14(v2);
  return sub_8FC24();
}

uint64_t sub_BD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AlertAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_332C(&qword_C3398, &qword_92E60);
  v8 = sub_8F444();
  sub_8E5C4();
  sub_8F174();
  v9 = sub_8F394();
  v10 = (*(*aBlock + 11))(v9);
  if (v10 && (v11 = v10, v12 = [v10 topViewController], v11, v12))
  {
    v55 = v12;
    v56 = v6;
    v57 = v7;
    v58 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = *(a1 + 40);
    v59 = a3;
    if (v13)
    {
      v14 = *(v13 + 16);
      v15 = &_swiftEmptyArrayStorage;
      if (v14)
      {
        v52[1] = aBlock;
        v53 = a1;
        v54 = v8;
        v68 = &_swiftEmptyArrayStorage;
        sub_8FA34();
        sub_CE5C(0, &qword_C3540, AMSDialogAction_ptr);
        v16 = v13 + 32;
        do
        {
          sub_9294(v16, &aBlock);
          sub_CD08(v67, v67[3]);
          v17 = sub_D0C8();
          v19 = v18(v17);
          v21 = v20;
          v22 = aBlock;
          v23 = v61;

          v24 = sub_C2E0(v19, v21, v22, v23);
          [v24 setStyle:qword_92910[v66]];
          sub_92CC(&aBlock);
          sub_8FA14();
          sub_8FA44();
          sub_8FA54();
          sub_8FA24();
          v16 += 104;
          --v14;
        }

        while (v14);
        v15 = v68;
        a1 = v53;
        v8 = v54;
      }
    }

    else
    {
      v15 = &_swiftEmptyArrayStorage;
    }

    sub_CD4C(a1 + 56, &aBlock, &unk_C55C0, &unk_92720);
    if (v63)
    {
      sub_CD08(&aBlock, v63);
      v27 = sub_D0C8();
      v29 = v28(v27);
      v31 = v30;
      sub_4F30(&aBlock);
    }

    else
    {
      sub_3410(&aBlock, &unk_C55C0, &unk_92720);
      v29 = 0;
      v31 = 0;
    }

    sub_CD4C(a1, &aBlock, &unk_C55C0, &unk_92720);
    v32 = v63;
    if (v63)
    {
      sub_CD08(&aBlock, v63);
      v33 = sub_D0C8();
      v35 = v34(v33);
      v32 = v36;
      sub_4F30(&aBlock);
    }

    else
    {
      sub_3410(&aBlock, &unk_C55C0, &unk_92720);
      v35 = 0;
    }

    v37 = objc_allocWithZone(AMSDialogRequest);
    v38 = sub_C998(v29, v31, v35, v32);
    v39 = v38;
    if (*(a1 + 48))
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    [v38 setStyle:v40];
    sub_CA38(v15, v39);
    sub_CE5C(0, &unk_C74A0, AMSUIAlertDialogTask_ptr);
    v41 = v39;
    v42 = v55;
    v43 = sub_8DEB0();
    v44 = [v43 present];
    v45 = a1;
    v46 = v58;
    sub_B4F8(v45, v58);
    v47 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v48 = (v57 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 16) = v8;
    sub_CBDC(v46, v49 + v47);
    *(v49 + v48) = v59;
    v64 = sub_CC40;
    v65 = v49;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_8DEC8;
    v63 = &unk_B77D8;
    v50 = _Block_copy(&aBlock);

    [v44 addFinishBlock:v50];
    _Block_release(v50);
  }

  else
  {
    sub_C944();
    swift_allocError();
    *v25 = 1;
    v26 = sub_8F3D4();

    return v26;
  }

  return v8;
}

id sub_C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v5 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = sub_8F5C4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = sub_8F5C4();

LABEL_6:
  v7 = [swift_getObjCClassFromMetadata() actionWithTitle:v5 identifier:v6];

  return v7;
}

void sub_C38C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_8E5D4();
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_8F264();
  v14 = __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
LABEL_2:
    swift_errorRetain();
    sub_8F3F4();

    return;
  }

  if (!a1)
  {
    sub_C944();
    swift_allocError();
    *v29 = 0;
    goto LABEL_2;
  }

  v46 = a1;
  v47 = a3;
  v18 = *(a4 + 40);
  if (v18)
  {
    v41 = v12;
    v42 = a5;
    v43 = v17;
    v44 = v15;
    v45 = v14;
    v19 = *(v18 + 16);
    v20 = v18 + 32;
    v48 = a1;
    for (i = 0; v19 != i; ++i)
    {
      if (i >= *(v18 + 16))
      {
        __break(1u);
        return;
      }

      sub_9294(v20, v52);
      v22 = v52[0];
      v23 = [v48 selectedActionIdentifier];
      v24 = sub_8F5F4();
      v26 = v25;

      if (v22 == v24 && *(&v22 + 1) == v26)
      {

LABEL_20:
        memcpy(__dst, v52, 0x68uLL);
        sub_CD4C(&__dst[16], &v49, &qword_C2DE0, &qword_91DB0);
        if (*(&v50 + 1))
        {
          sub_3A94(&v49, v52);
          sub_8E5F4();
          sub_8F174();
          v32 = v42;
          sub_8F394();
          v33 = v49;
          v34 = v43;
          v35 = v45;
          sub_8F394();
          v36 = v44;
          v37 = v41;
          (*(v44 + 16))(v41, v34, v35);
          v38 = sub_332C(&unk_C5850, &unk_92840);
          sub_33E8(v37, 0, 1, v38);
          v49 = 0u;
          v50 = 0u;
          LOBYTE(v51) = -1;
          (*(*v33 + 216))(v52, v37, v32, &v49);
          sub_3410(&v49, &qword_C3940, &unk_92AE0);
          sub_CE00(v37);
          *(&v50 + 1) = sub_8F224();
          v51 = &protocol witness table for SyncTaskScheduler;
          sub_4ED0(&v49);
          sub_8F214();
          v39 = sub_8F3B4();

          sub_4F30(&v49);
          sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);
          v40 = sub_8F7D4();
          sub_CE9C(v39, v40, v47);

          (*(v36 + 8))(v34, v35);
          sub_4F30(v52);
        }

        else
        {
          sub_3410(&v49, &qword_C2DE0, &qword_91DB0);
          memset(v52, 0, 32);
          sub_8F414();

          sub_CDAC(v52);
        }

        sub_92CC(__dst);
        return;
      }

      v28 = sub_8FB54();

      if (v28)
      {
        goto LABEL_20;
      }

      sub_92CC(v52);
      v20 += 104;
    }
  }

  else
  {
    v30 = a1;
  }

  sub_C944();
  swift_allocError();
  *v31 = 2;
  sub_8F3F4();
}

double sub_C8A0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_C8D4()
{
  result = qword_C3510;
  if (!qword_C3510)
  {
    type metadata accessor for AlertAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3510);
  }

  return result;
}

unint64_t sub_C944()
{
  result = qword_C3538;
  if (!qword_C3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3538);
  }

  return result;
}

id sub_C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_8F5C4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_8F5C4();

LABEL_6:
  v8 = [v4 initWithTitle:v6 message:v7];

  return v8;
}

void sub_CA38(uint64_t a1, void *a2)
{
  sub_CE5C(0, &qword_C3540, AMSDialogAction_ptr);
  isa = sub_8F6B4().super.isa;

  [a2 setButtonActions:isa];
}

uint64_t sub_CABC()
{
  v1 = type metadata accessor for AlertAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  if (*(v0 + v3 + 24))
  {
    sub_4F30((v0 + v3));
  }

  if (*(v5 + 80))
  {
    sub_4F30((v5 + 56));
  }

  v6 = *(v1 + 32);
  sub_8F0C4();
  sub_4248();
  (*(v7 + 8))(v5 + v6);

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_CBDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_CC40(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AlertAction(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_C38C(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_CCF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_CD08(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_CD4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_332C(a3, a4);
  sub_4248();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_CE00(uint64_t a1)
{
  v2 = sub_8E5D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CE5C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_CE9C(uint64_t a1, void *a2, uint64_t a3)
{
  v6[3] = sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);
  v6[4] = &protocol witness table for OS_dispatch_queue;
  v6[0] = a2;
  swift_retain_n();
  v4 = a2;
  sub_8F3C4();

  return sub_4F30(v6);
}

_BYTE *storeEnumTagSinglePayload for AlertActionImplementation.PresentationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xD038);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_D074()
{
  result = qword_C3548;
  if (!qword_C3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3548);
  }

  return result;
}

id sub_D0E0()
{
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19AlertViewController____lazy_storage___contentUnavailableView;
  v2 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19AlertViewController____lazy_storage___contentUnavailableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19AlertViewController____lazy_storage___contentUnavailableView);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(_UIContentUnavailableView);
  result = sub_40538(0, 0xE000000000000000, 0, 0.0, 0.0, 0.0, 0.0);
  if (result)
  {
    v7 = *(v0 + v1);
    *(v4 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_D178(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin19AlertViewController____lazy_storage___contentUnavailableView] = 0;
  v3 = &v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin19AlertViewController_alertTitle];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for AlertViewController();
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

void sub_D1D0()
{
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19AlertViewController____lazy_storage___contentUnavailableView) = 0;
  sub_8FAA4();
  __break(1u);
}

id sub_D294()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v5 = [v2 navigationItem];

      return v5;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for AlertViewController();
  v3 = objc_msgSendSuper2(&v6, "navigationItem");

  return v3;
}

void sub_D358()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AlertViewController();
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_primaryBackground];
  [v1 setBackgroundColor:v2];
}

void sub_D438()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for AlertViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_D5B4();
}

void sub_D4B8()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AlertViewController();
  objc_msgSendSuper2(&v11, "viewWillLayoutSubviews");
  v1 = sub_D0E0();
  v2 = [v0 view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
}

void sub_D5B4()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_D60C();
}

void sub_D60C()
{
  v1 = sub_D0E0();
  [v1 setButtonAction:0];

  v2 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19AlertViewController____lazy_storage___contentUnavailableView;
  [*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin19AlertViewController____lazy_storage___contentUnavailableView] setButtonTitle:0];
  [*&v0[v2] setMessage:0];
  v3 = *&v0[v2];
  v4 = sub_8F5C4();
  [v3 setTitle:v4];

  v5 = [v0 view];
  [v5 addSubview:*&v0[v2]];
}

id sub_D7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppAlertFooter(uint64_t a1)
{
  result = qword_C35F8;
  if (!qword_C35F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D964@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v69 = a3;
  v4 = sub_332C(&qword_C3590, &qword_929E8);
  __chkstk_darwin(v4 - 8);
  sub_42D0();
  v72 = v5;
  __chkstk_darwin(v6);
  v75 = &v65 - v7;
  v8 = sub_8EFE4();
  sub_42F8();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_42D0();
  v74 = v12;
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v16 = type metadata accessor for Button(0);
  sub_4248();
  __chkstk_darwin(v17);
  sub_42D0();
  v70 = v18;
  __chkstk_darwin(v19);
  v73 = &v65 - v20;
  v21 = type metadata accessor for AppAlertFooter(0);
  sub_4248();
  __chkstk_darwin(v22);
  sub_8814();
  v25 = v24 - v23;
  v27 = *(v26 + 28);
  v28 = sub_8F204();
  v76 = v27;
  v68 = v28;
  sub_33E8(v25 + v27, 1, 1, v28);
  v29 = v25 + *(v21 + 32);
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v77 = v25;
  v78 = v29;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v67 = v21;
  v30 = a1;
  v31 = v75;
  sub_E0A8(v15, v81, v75);
  v66 = v16;
  if (sub_33C0(v31, 1, v16) != 1)
  {
    v40 = v15;
    v41 = v8;
    v65 = *(v10 + 8);
    v65(v40, v8);
    v42 = v73;
    sub_E294(v31, v73);
    v38 = v77;
    sub_E294(v42, v77);
    v43 = v74;
    sub_8EFF4();
    if ((sub_8EFB4() & 1) == 0)
    {
      v44 = v65;
      v45 = v72;
      sub_E0A8(v43, v81, v72);
      if (sub_33C0(v45, 1, v66) != 1)
      {
        v44(v43, v41);
        v57 = v45;
        v58 = v70;
        sub_E294(v57, v70);
        sub_E294(v58, v38 + *(v67 + 20));
        v59 = v71;
        v60 = sub_473C0();
        if (!v59)
        {
          v79 = v60;
          v80 = v61;
          sub_8F9B4();
          v44(v30, v41);
          v62 = v76;
          sub_6678(v38 + v76, &qword_C3598, &unk_929F0);
          sub_33E8(v38 + v62, 1, 1, v68);
          v63 = v78;
          sub_6678(v78, &qword_C2DE0, &qword_91DB0);
          *v63 = 0u;
          *(v63 + 16) = 0u;
          *(v63 + 32) = 0;
          sub_E2F8(v38, v69);
          sub_8F004();
          sub_887C();
          (*(v64 + 8))(v81);
          return sub_E35C(v38, type metadata accessor for AppAlertFooter);
        }

        v44(v30, v41);
        v52 = 1;
        goto LABEL_11;
      }

      sub_6678(v45, &qword_C3590, &qword_929E8);
    }

    v46 = v41;
    v47 = sub_8F504();
    sub_E70C();
    sub_E24C(v48, v49, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v50 = 0x7261646E6F636573;
    v50[1] = 0xEF6E6F7474754279;
    v50[2] = v67;
    (*(*(v47 - 8) + 104))(v50, enum case for JSONError.missingProperty(_:), v47);
    swift_willThrow();
    v51 = v65;
    v65(v30, v46);
    v51(v74, v46);
    v52 = 0;
LABEL_11:
    sub_8F004();
    sub_887C();
    (*(v53 + 8))(v81);
    sub_E6F4();
    sub_E35C(v38, v54);
    if (v52)
    {
      sub_E6F4();
      sub_E35C(v38 + v55, v56);
    }

    goto LABEL_5;
  }

  sub_6678(v31, &qword_C3590, &qword_929E8);
  a1 = v30;
  v21 = v67;
LABEL_4:
  v32 = sub_8F504();
  sub_E70C();
  sub_E24C(v33, v34, &protocol conformance descriptor for JSONError);
  swift_allocError();
  strcpy(v35, "primaryButton");
  *(v35 + 7) = -4864;
  *(v35 + 2) = v21;
  (*(*(v32 - 8) + 104))(v35, enum case for JSONError.missingProperty(_:), v32);
  swift_willThrow();
  v36 = *(v10 + 8);
  v36(a1, v8);
  v36(v15, v8);
  sub_8F004();
  sub_887C();
  (*(v37 + 8))(v81);
  v38 = v77;
LABEL_5:
  sub_6678(v38 + v76, &qword_C3598, &unk_929F0);
  return sub_6678(v78, &qword_C2DE0, &qword_91DB0);
}

uint64_t sub_E0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  sub_42F8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_8814();
  v12 = (v11 - v10);
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v13);
  sub_8814();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14, a1);
  (*(v8 + 16))(v12, a2, v6);
  sub_168E0(v16, v12, a3);
  v18 = type metadata accessor for Button(0);
  return sub_33E8(a3, 0, 1, v18);
}

uint64_t sub_E24C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Button(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAlertFooter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E35C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_887C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_E420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Button(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_33C0(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_332C(&qword_C3598, &unk_929F0);
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_E514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Button(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_332C(&qword_C3598, &unk_929F0);
    v10 = a1 + *(a4 + 28);
  }

  return sub_33E8(v10, a2, a2, v9);
}

void sub_E5F0(uint64_t a1)
{
  type metadata accessor for Button(319);
  if (v1 <= 0x3F)
  {
    sub_E69C(319);
    if (v2 <= 0x3F)
    {
      sub_3CAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E69C(uint64_t a1)
{
  if (!qword_C3608)
  {
    sub_8F204();
    v1 = sub_8F924();
    if (!v2)
    {
      atomic_store(v1, &qword_C3608);
    }
  }
}

uint64_t sub_E724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Button(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  swift_getKeyPath();
  sub_332C(&qword_C36A0, &qword_92A68);
  sub_8F044();

  swift_getKeyPath();
  sub_8F044();

  sub_ED48(v9, v7, a3);
  sub_EBA4(v7);
  return sub_EBA4(v9);
}

uint64_t sub_E858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppAlertFooterComponent(0);

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppAlertFooterComponent(0);

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_E928(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_E9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_EA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_EAF4()
{
  result = qword_C3648;
  if (!qword_C3648)
  {
    type metadata accessor for AppAlertFooter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3648);
  }

  return result;
}

unint64_t sub_EB50()
{
  result = qword_C3650;
  if (!qword_C3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3650);
  }

  return result;
}

uint64_t sub_EBA4(uint64_t a1)
{
  v2 = type metadata accessor for Button(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_EC00(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_primaryButtonView;
  v10 = type metadata accessor for DynamicButton(0);
  *&v4[v9] = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_secondaryButtonView;
  *&v4[v11] = [objc_allocWithZone(v10) init];
  v12 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_primaryButtonModel;
  v13 = type metadata accessor for Button(0);
  sub_33E8(&v4[v12], 1, 1, v13);
  sub_33E8(&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_secondaryButtonModel], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_objectGraph] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AppAlertFooterComponent(0);
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_F7DC();

  return v14;
}

void sub_ED48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_332C(&qword_C3590, &qword_929E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  sub_FC90(a1, &v12 - v8);
  type metadata accessor for Button(0);
  sub_FDF0();
  v10 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_primaryButtonModel;
  swift_beginAccess();
  sub_FD4C(v9, v3 + v10);
  swift_endAccess();
  sub_FC90(a2, v9);
  sub_FDF0();
  v11 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_secondaryButtonModel;
  swift_beginAccess();
  sub_FD4C(v9, v3 + v11);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_objectGraph) = a3;

  sub_EEB8(*(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_primaryButtonView), a1, a3);
  sub_EEB8(*(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_secondaryButtonView), a2, a3);
}

void sub_EEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_378C4(a2 + 64, a3);
  sub_CD4C(a2 + 24, &v9, &unk_C55C0, &unk_92720);
  if (v10)
  {
    sub_3A94(&v9, v11);
    sub_378B8(v11, a3);
    sub_4F30(v11);
  }

  else
  {
    sub_3410(&v9, &unk_C55C0, &unk_92720);
    sub_3794C();
  }

  v6 = *a2;
  v7 = *a2;
  sub_35D98(v6);
  v8 = *(a2 + 18);
  *(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_style) = v8;
  sub_36834(v8);
}

id sub_EF98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppAlertFooterComponent(0);
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_3794C();
  sub_37958();
  sub_3794C();
  return sub_37958();
}

id sub_F078()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for AppAlertFooterComponent(0);
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v1 verticalSizeClass];

  if (v2 == &def_4BB18 + 1)
  {
    v3 = [v0 contentView];
    [(SEL *)v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    v12 = (CGRectGetWidth(v28) + -32.0 + -10.0) * 0.5;
    v13 = sub_FDBC(OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_secondaryButtonView);
    v15 = v14;
    [v13 v16];
    return [*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_primaryButtonView] v3[259]];
  }

  else
  {
    sub_48798();
    v19 = v18;
    [objc_msgSend(v0 "contentView")];
    sub_FDD0();
    v20 = fmin(sub_FE10() - (v19 + v19), 400.0);
    v21 = [v0 contentView];
    [(SEL *)v21 bounds];
    sub_FDD0();
    v22 = (sub_FE10() - v20) * 0.5;
    v23 = sub_FDBC(OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_primaryButtonView);
    v25 = v24;
    [v23 v26];
    return [*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_secondaryButtonView] v21[259]];
  }
}

uint64_t sub_F344(uint64_t *a1)
{
  v3 = type metadata accessor for Button(0);
  sub_4248();
  __chkstk_darwin(v4);
  sub_8814();
  v7 = v6 - v5;
  v8 = sub_332C(&qword_C3590, &qword_929E8);
  __chkstk_darwin(v8 - 8);
  v10 = v14 - v9 + 16;
  v11 = *a1;
  swift_beginAccess();
  sub_CD4C(v1 + v11, v10, &qword_C3590, &qword_929E8);
  if (sub_33C0(v10, 1, v3))
  {
    sub_3410(v10, &qword_C3590, &qword_929E8);
    memset(v14, 0, sizeof(v14));
    v15 = 0;
  }

  else
  {
    sub_FC90(v10, v7);
    sub_3410(v10, &qword_C3590, &qword_929E8);
    sub_CD4C(v7 + *(v3 + 44), v14, &qword_C2DE0, &qword_91DB0);
    sub_FCF4(v7, type metadata accessor for Button);
  }

  sub_F544(v14);
  return sub_3410(v14, &qword_C2DE0, &qword_91DB0);
}

uint64_t sub_F544(uint64_t a1)
{
  v3 = sub_8E5D4();
  __chkstk_darwin(v3 - 8);
  sub_8814();
  v6 = v5 - v4;
  v7 = sub_8F264();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  sub_8814();
  v11 = v10 - v9;
  sub_CD4C(a1, &v16, &qword_C2DE0, &qword_91DB0);
  if (!*(&v17 + 1))
  {
    return sub_3410(&v16, &qword_C2DE0, &qword_91DB0);
  }

  sub_3A94(&v16, v19);
  v12 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_objectGraph);
  if (v12)
  {
    sub_8E5F4();
    sub_8F174();

    sub_8F394();
    v13 = v16;
    sub_8F394();
    (*(v8 + 16))(v6, v11, v7);
    v14 = sub_332C(&unk_C5850, &unk_92840);
    sub_33E8(v6, 0, 1, v14);
    v16 = 0u;
    v17 = 0u;
    v18 = -1;
    (*(*v13 + 216))(v19, v6, v12, &v16);

    sub_3410(&v16, &qword_C3940, &unk_92AE0);
    sub_FCF4(v6, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
    (*(v8 + 8))(v11, v7);
  }

  return sub_4F30(v19);
}

id sub_F7DC()
{
  v1 = [v0 contentView];
  v2 = [objc_opt_self() ams_clear];
  [v1 setBackgroundColor:v2];

  v3 = [v0 contentView];
  v4 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_primaryButtonView];
  [v3 addSubview:v4];

  v5 = [v0 contentView];
  v6 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23AppAlertFooterComponent_secondaryButtonView];
  [v5 addSubview:v6];

  [v4 addTarget:v0 action:"primaryButtonAction" forControlEvents:64];

  return [v6 addTarget:v0 action:"secondaryButtonAction" forControlEvents:64];
}

id sub_F958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppAlertFooterComponent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppAlertFooterComponent(uint64_t a1)
{
  result = qword_C36F8;
  if (!qword_C36F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FA88(uint64_t a1)
{
  sub_FB34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_FB34(uint64_t a1)
{
  if (!qword_C3708)
  {
    type metadata accessor for Button(255);
    v1 = sub_8F924();
    if (!v2)
    {
      atomic_store(v1, &qword_C3708);
    }
  }
}

id sub_FB8C(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 verticalSizeClass];

  v3 = objc_opt_self();
  v4 = [v3 fractionalWidthDimension:1.0];
  v5 = 105.0;
  if (v2 == &def_4BB18 + 1)
  {
    v5 = 50.0;
  }

  v6 = [v3 absoluteDimension:v5];
  v7 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:v6];

  return v7;
}

uint64_t sub_FC90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Button(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FCF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_4248();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_FD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C3590, &qword_929E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_FDD0()
{
}

uint64_t sub_FDF0()
{

  return sub_33E8(v0, 0, 1, v1);
}

CGFloat sub_FE10()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetWidth(*&v5);
}

uint64_t type metadata accessor for ASCLockupWrapper(uint64_t a1)
{
  result = qword_C3780;
  if (!qword_C3780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FF38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v96 = a3;
  v5 = sub_332C(&qword_C3598, &unk_929F0);
  __chkstk_darwin(v5 - 8);
  sub_42D0();
  v99 = v6;
  __chkstk_darwin(v7);
  v97 = &v88 - v8;
  v107 = sub_8EFE4();
  sub_42F8();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_42D0();
  v98 = v12;
  v14 = __chkstk_darwin(v13);
  v100 = &v88 - v15;
  __chkstk_darwin(v14);
  v17 = &v88 - v16;
  v18 = type metadata accessor for ASCLockupWrapper(0);
  sub_4248();
  __chkstk_darwin(v19);
  v21 = (&v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_8E394();
  inited = swift_initStackObject();
  v23 = a1;
  v24 = sub_473C0();
  if (v3)
  {
    (*(v10 + 8))(a1, v107);
    sub_8F004();
    sub_4248();
    (*(v26 + 8))(v101);
    return;
  }

  v27 = v24;
  v28 = v25;
  v93 = v17;
  v94 = inited;
  v95 = v10;
  sub_10FE0();
  v29 = sub_10A14(v27, v28);
  *v21 = v29;
  v21[1] = sub_5AB8(1684957547, 0xE400000000000000, v18);
  v30 = sub_5B14(0x6F4370756B636F6CLL, 0xED0000747865746ELL, v18);
  v90 = 0;
  v91 = v29;
  v92 = v21;
  v21[2] = v30;
  v31 = sub_10B1C(0xD000000000000011, 0x800000000009DD60, v18, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v92[3] = v31;
  v32 = sub_10B1C(0xD000000000000010, 0x800000000009DD80, v18, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
  v92[4] = v32;
  v33 = sub_473C0();
  v34 = v92;
  v92[5] = v33;
  v34[6] = v35;
  v36 = 0x800000000009DDC0;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_115B0();
    v39 = sub_11024(v37, v38);
    v40 = sub_BC40(v39);
    sub_115F0(v40, v41);
    *v42 = v43;
    v42[1] = 0x800000000009DDC0;
    v42[2] = v18;
    sub_BBB0();
    (*(v44 + 104))();
    swift_willThrow();
    v45 = sub_115C8();
    v46(v45);

    v106 = 0;
    v104 = 0u;
    v105 = 0u;
  }

  else
  {
    sub_8E384();
    v68 = sub_115C8();
    v69(v68);
    sub_3A94(v102, &v104);
  }

  v47 = v105;
  v48 = v92;
  *(v92 + 7) = v104;
  *(v48 + 9) = v47;
  v48[11] = v106;
  v93 = v18;
  v49 = sub_5D00(1702521203, 0xE400000000000000, v18);
  v50 = v100;
  v51 = v99;
  v92[12] = v49;
  v52 = sub_473C0();
  v99 = 0;
  *&v104 = v52;
  *(&v104 + 1) = v53;
  sub_8F9B4();
  sub_8EFF4();
  v54 = sub_8EFB4();
  v55 = v97;
  if (v54)
  {
    goto LABEL_9;
  }

  sub_10CF4(v50, v101, v51);
  v56 = sub_8F204();
  if (sub_33C0(v51, 1, v56) == 1)
  {
    sub_3410(v51, &qword_C3598, &unk_929F0);
LABEL_9:
    sub_8F504();
    sub_115B0();
    v59 = sub_11024(v57, v58);
    v60 = sub_BC40(v59);
    sub_115F0(v60, v61);
    *v62 = v63;
    v62[1] = 0x800000000009DDE0;
    sub_11604();
    *(v64 + 16) = 0x800000000009DDC0;
    sub_BBB0();
    (*(v65 + 104))();
    swift_willThrow();
    v66 = v89;
    v89(v50, v107);

    v67 = sub_8F204();
    sub_33E8(v55, 1, 1, v67);
    v99 = 0;
    goto LABEL_11;
  }

  v70 = v50;
  v71 = v89;
  v89(v70, v107);
  sub_BBB0();
  v73 = v51;
  v66 = v71;
  (*(v72 + 32))(v55, v73, v56);
  sub_33E8(v55, 0, 1, v56);
  sub_11604();
LABEL_11:
  sub_11068(v55, v92 + MEMORY[0x800000000009DDF4]);
  v74 = v98;
  v75 = v23;
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    v36 = v74;
    v76 = v101;
    v77 = v99;
    sub_8E384();
    if (!v77)
    {

      v87 = v107;
      v66(v23, v107);
      v66(v36, v87);
      sub_3A94(v102, &v104);
      sub_11604();
      goto LABEL_15;
    }

    v103 = 0;
    memset(v102, 0, sizeof(v102));
    sub_3410(v102, &qword_C2DE0, &qword_91DB0);
    v75 = v23;
    v74 = v36;
    sub_11604();
  }

  sub_8F504();
  sub_115B0();
  sub_11024(v78, v79);
  sub_115E4();
  swift_allocError();
  *v80 = 0x6575676573;
  v80[1] = 0xE500000000000000;
  v80[2] = v36;
  sub_BBB0();
  (*(v81 + 104))();
  swift_willThrow();

  v82 = v107;
  v66(v75, v107);
  v66(v74, v82);

  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  v76 = v101;
LABEL_15:
  v83 = v92;
  v84 = v92 + *(v36 + 56);
  v85 = v105;
  *v84 = v104;
  *(v84 + 1) = v85;
  *(v84 + 4) = v106;
  sub_110D8(v83, v96);
  sub_8F004();
  sub_4248();
  (*(v86 + 8))(v76);
  sub_1113C(v83);
}

id sub_10A14(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_8F5C4();

  v4 = [v2 initWithStringValue:v3];

  return v4;
}

uint64_t sub_10B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v26 = a3;
  v10 = sub_8EFE4();
  sub_42F8();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8EFF4();
  if ((sub_8EFB4() & 1) != 0 || (v16 = sub_10EC0(v15, a4, a5, v25)) == 0)
  {
    v17 = sub_8F504();
    sub_115B0();
    sub_11024(v18, v19);
    sub_115E4();
    swift_allocError();
    *v20 = a1;
    v20[1] = a2;
    v20[2] = v26;
    sub_BBB0();
    (*(v21 + 104))();
    swift_willThrow();
    v22 = *(v12 + 8);

    v22(v15, v10);
  }

  else
  {
    v17 = v16;
    (*(v12 + 8))(v15, v10);
  }

  return v17;
}

uint64_t sub_10CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F1C4();
  v13 = sub_8F204();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_10EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_332C(&qword_C3720, &qword_92B88);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_8EF34();
  v7 = sub_8F144();
  if (sub_33C0(v6, 1, v7) == 1)
  {
    sub_3410(v6, &qword_C3720, &qword_92B88);
    return 0;
  }

  else
  {
    v8 = sub_8F134();
    sub_BBB0();
    (*(v9 + 8))(v6, v7);
  }

  return v8;
}

unint64_t sub_10FE0()
{
  result = qword_C3718;
  if (!qword_C3718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C3718);
  }

  return result;
}

uint64_t sub_11024(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_115E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_11068(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C3598, &unk_929F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_110D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCLockupWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1113C(uint64_t a1)
{
  v2 = type metadata accessor for ASCLockupWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_111AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_332C(&qword_C3598, &unk_929F0);
    v9 = a1 + *(a3 + 52);

    return sub_33C0(v9, a2, v8);
  }
}

void *sub_11254(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598, &unk_929F0);
    v8 = v5 + *(a4 + 52);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_112E0(uint64_t a1)
{
  v1 = sub_10FE0();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Kind(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      type metadata accessor for Context(319);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_11510(319, &qword_C3790, &qword_C3798, &unk_92D60);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_11510(319, &qword_C37A0, &qword_C7480, &qword_92BB0);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_114C0();
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_11510(319, &qword_C2EC8, &unk_C2ED0, &qword_91E80);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_11560(319, &unk_C37B0, type metadata accessor for Size);
                if (v16 > 0x3F)
                {
                  return v15;
                }

                sub_11560(319, &qword_C3608, &type metadata accessor for ImpressionMetrics);
                if (v17 > 0x3F)
                {
                  return v15;
                }

                else
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_114C0()
{
  if (!qword_C37A8)
  {
    v0 = sub_8F924();
    if (!v1)
    {
      atomic_store(v0, &qword_C37A8);
    }
  }
}

void sub_11510(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_3D10(a3, a4);
    sub_115E4();
    v5 = sub_8F924();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_11560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_115E4();
    v4 = sub_8F924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_115C8()
{
  result = v0;
  *(v2 - 296) = *(v1 + 8);
  return result;
}

uint64_t sub_11610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_332C(&unk_C3860, &qword_92C08);
  sub_8F044();

  swift_getKeyPath();
  sub_8F044();

  swift_getKeyPath();
  sub_8F044();

  swift_getKeyPath();
  sub_8F044();

  swift_getKeyPath();
  sub_8F044();

  swift_getKeyPath();
  sub_8F044();

  swift_getKeyPath();
  sub_8F044();

  sub_11F54(v5, v11, v10, v9, v8, v7[5], v7[0], v7[1]);

  swift_getKeyPath();
  sub_8F044();

  if (!v6)
  {
    return sub_11BB0(&v5);
  }

  sub_3A94(&v5, v7);
  sub_12828(v7, a3);
  return sub_4F30(v7);
}

uint64_t sub_11840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ASCLockupWrapperComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_118A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ASCLockupWrapperComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_11910(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_11964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_119E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_11A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_11B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_11BB0(uint64_t a1)
{
  v2 = sub_332C(&qword_C2DE0, &qword_91DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_11C18(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_defaultIdentifier];
  *v9 = 0xD00000000000001CLL;
  *(v9 + 1) = 0x800000000009E090;
  v10 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_postInstallAction];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_actionRunner];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_additionalMetrics] = 0;
  v12 = OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_lockupView;
  *&v4[v12] = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ASCLockupWrapperComponent();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_12C64();

  return v13;
}

void sub_11E14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASCLockupWrapperComponent();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_lockupView];
  [v1 bounds];
  [v2 setFrame:?];
}

void sub_11F54(void *a1, void *a2, void *a3, uint64_t a4, objc_class *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a8)
  {
    v15 = a8;
  }

  else
  {
    a7 = *&v9[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_defaultIdentifier];
    v15 = *&v9[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_defaultIdentifier + 8];
  }

  v46 = a7;
  if (a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = ASCLockupViewSizeMediumOfferButton;
  }

  v17 = OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_lockupView;
  v18 = *&v9[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_lockupView];

  v19 = a5;
  [v18 setLockupSize:v16];
  *&v9[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_additionalMetrics] = a4;

  v47 = a3;
  v48 = v16;
  if (!a6)
  {
    goto LABEL_13;
  }

  v20 = sub_8F5F4();
  v22 = v21;
  if (v20 == sub_8F5F4() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_8FB54();

    if ((v25 & 1) == 0)
    {
LABEL_13:
      if (qword_C2CE0 != -1)
      {
        sub_13E98(&qword_C2CE0);
      }

      v26 = sub_8E304();
      sub_4D6C(v26, qword_D0378);
      sub_332C(&unk_C3920, &unk_92D50);
      v27 = sub_8E2A4();
      sub_13EB8(v27);
      *(swift_allocObject() + 16) = xmmword_92310;
      v50 = type metadata accessor for ASCLockupWrapperComponent();
      aBlock[0] = v9;
      v28 = v9;
      v29 = AMSLogKey();
      if (v29)
      {
        v30 = v29;
        sub_8F5F4();
      }

      sub_8E284();

      sub_4F30(aBlock);
      sub_8E244();
      sub_8E2E4();

      v36 = *&v9[v17];
      sub_CE5C(0, &qword_C3948, ASCLockupRequest_ptr);
      v37 = v36;
      v38 = sub_44514(a1, a2, v47, v46, v15);
      [v37 setRequest:v38];

      isa = v48;
      goto LABEL_24;
    }
  }

  if (qword_C2CE0 != -1)
  {
    sub_13E98(&qword_C2CE0);
  }

  v31 = sub_8E304();
  sub_4D6C(v31, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  v32 = sub_8E2A4();
  sub_13EB8(v32);
  *(swift_allocObject() + 16) = xmmword_92310;
  v50 = type metadata accessor for ASCLockupWrapperComponent();
  aBlock[0] = v9;
  v33 = v9;
  v34 = AMSLogKey();
  if (v34)
  {
    v35 = v34;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(aBlock);
  sub_8E244();
  sub_8E2E4();

  v40 = objc_allocWithZone(ASCLockupViewGroup);
  v38 = sub_13C2C(0xD000000000000012, 0x800000000009DFF0);
  isa = sub_8F554().super.isa;
  sub_13EC8();
  v41 = swift_allocObject();
  *(v41 + 16) = v33;
  v51 = sub_13E84;
  v52 = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279C;
  v50 = &unk_B7A00;
  v42 = _Block_copy(aBlock);
  v43 = v33;

  [v38 _lockupFromMediaAPIResponse:isa withContext:v47 completionBlock:v42];

  _Block_release(v42);
LABEL_24:
}

void sub_12524(void *a1, uint64_t a2, char *a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v4 = sub_8E304();
    sub_4D6C(v4, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v15[3] = type metadata accessor for ASCLockupWrapperComponent();
    v15[0] = a3;
    v5 = a3;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v15);
    sub_8E244();
    sub_8E2D4();
  }

  else if (a1)
  {
    v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_lockupView;
    v10 = *&a3[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_lockupView];
    v11 = objc_opt_self();
    v14 = a1;
    v12 = v10;
    v13 = [v11 blueTheme];
    [v12 setOfferTheme:v13];

    [*&a3[v9] setLockup:v14];
  }
}

void sub_1279C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_12828(uint64_t a1, uint64_t a2)
{
  sub_13D04(a1, v12);
  v4 = OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_postInstallAction;
  swift_beginAccess();
  sub_66CC(v12, v2 + v4);
  swift_endAccess();
  sub_13EC8();
  v5 = swift_allocObject();
  swift_weakInit();
  sub_13EC8();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_13D04(a1, v12);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_3A94(v12, v7 + 32);
  v8 = (v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_actionRunner);
  v9 = *(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_actionRunner);
  v10 = v8[1];
  *v8 = sub_13E18;
  v8[1] = v7;

  sub_13CA0(v9, v10);
}

uint64_t sub_12960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_8E5D4();
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_8F264();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_postInstallAction;
      swift_beginAccess();
      sub_418C(v14 + v15, &v19);

      if (*(&v20 + 1))
      {
        sub_13E24(&v19, &qword_C2DE0, &qword_91DB0);
        sub_8E5F4();
        sub_8F174();
        sub_8F394();
        v16 = v19;
        sub_8F394();
        (*(v8 + 16))(v6, v10, v7);
        v17 = sub_332C(&unk_C5850, &unk_92840);
        sub_33E8(v6, 0, 1, v17);
        v19 = 0u;
        v20 = 0u;
        LOBYTE(v21) = -1;
        (*(*v16 + 216))(a3, v6, v12, &v19);

        sub_13E24(&v19, &qword_C3940, &unk_92AE0);
        sub_CE00(v6);
        return (*(v8 + 8))(v10, v7);
      }
    }

    else
    {

      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    return sub_13E24(&v19, &qword_C2DE0, &qword_91DB0);
  }

  return result;
}

id sub_12C64()
{
  v1 = objc_opt_self();
  sub_13EC8();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v10[4] = sub_13CE4;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_445BC;
  v10[3] = &unk_B7938;
  v3 = _Block_copy(v10);
  v4 = v0;

  [v1 createConnectionWithCompletionBlock:v3];
  _Block_release(v3);
  v5 = OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_lockupView;
  [*&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_lockupView] setShowsPlaceholderContent:1];
  [*&v4[v5] setDelegate:v4];
  v6 = [v4 contentView];
  v7 = [objc_opt_self() ams_clear];
  [v6 setBackgroundColor:v7];

  v8 = [v4 contentView];
  [v8 addSubview:*&v4[v5]];

  [v4 setIsAccessibilityElement:1];
  return [v4 setAccessibilityTraits:UIAccessibilityTraitButton];
}

uint64_t sub_12E38(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v3 = sub_8E304();
    sub_4D6C(v3, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92300;
    v15 = type metadata accessor for ASCLockupWrapperComponent();
    v14[0] = a2;
    v4 = a2;
    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v14);
    sub_8E244();
    swift_getErrorValue();
    v15 = v13;
    v11 = sub_4ED0(v14);
    (*(*(v13 - 8) + 16))(v11);
    sub_8E264();
    sub_13E24(v14, &unk_C3EB0, &qword_92380);
    sub_8E2D4();
  }

  else
  {
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v7 = sub_8E304();
    sub_4D6C(v7, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v15 = type metadata accessor for ASCLockupWrapperComponent();
    v14[0] = a2;
    v8 = a2;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v14);
    sub_8E244();
    sub_8E2E4();
  }
}

id sub_1323C(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ASCLockupWrapperComponent();
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_13330(void *a1)
{
  [objc_msgSend(a1 "container")];
  swift_unknownObjectRelease();
  v2 = [a1 container];
  swift_getObjectType();
  sub_48804();
  swift_unknownObjectRelease();
  [objc_msgSend(a1 "container")];
  swift_unknownObjectRelease();
  v3 = [a1 traitCollection];
  ASCLockupViewSizeGetEstimatedSize();
  v5 = v4;
  v7 = v6;

  v8 = objc_opt_self();
  v9 = [v8 estimatedDimension:v5];
  v10 = [v8 estimatedDimension:v7];
  v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

  return v11;
}

uint64_t sub_1350C(uint64_t a1, uint64_t a2)
{
  v3 = sub_8F5F4();
  v5 = v4;
  if (v3 == sub_8F5F4() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_8FB54();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_C2CE0 != -1)
  {
    sub_13E98(&qword_C2CE0);
  }

  v10 = sub_8E304();
  sub_4D6C(v10, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  v11 = sub_8E2A4();
  sub_13EB8(v11);
  *(swift_allocObject() + 16) = xmmword_92310;
  v12 = type metadata accessor for ASCLockupWrapperComponent();
  v23 = v12;
  v22[0] = v2;
  v13 = v2;
  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v22);
  sub_8E244();
  sub_8E2E4();

  v16 = *&v13[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_actionRunner];
  if (v16)
  {
    v17 = *&v13[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_actionRunner + 8];
    *(swift_allocObject() + 16) = xmmword_92310;
    v23 = v12;
    v22[0] = v13;
    v18 = v13;
    sub_13C90(v16, v17);
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v22);
    sub_8E244();
    sub_8E2E4();

    v16(v21);
    return sub_13CA0(v16, v17);
  }

  return result;
}

id sub_1389C()
{
  v1 = sub_8E304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_C2CE0 != -1)
  {
    sub_13E98(&qword_C2CE0);
  }

  v5 = sub_4D6C(v1, qword_D0378);
  (*(v2 + 16))(v4, v5, v1);
  sub_332C(&unk_C3920, &unk_92D50);
  v6 = sub_8E2A4();
  sub_13EB8(v6);
  *(swift_allocObject() + 16) = xmmword_92300;
  v16 = type metadata accessor for ASCLockupWrapperComponent();
  v15[0] = v0;
  v7 = v0;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v15);
  sub_8E244();
  v10 = OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_additionalMetrics;
  v11 = *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin25ASCLockupWrapperComponent_additionalMetrics];
  if (v11)
  {
    v12 = sub_332C(&qword_C3798, &unk_92D60);
  }

  else
  {
    v12 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v11;
  v16 = v12;

  sub_8E264();
  sub_13E24(v15, &unk_C3EB0, &qword_92380);
  sub_8E2E4();

  (*(v2 + 8))(v4, v1);
  if (*&v7[v10])
  {
    v13 = *&v7[v10];
  }

  else
  {
    v13 = sub_8F574();
  }

  sub_CE5C(0, &unk_C3930, ASCMetricsActivity_ptr);

  return sub_44628(v13);
}

id sub_13C2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_8F5C4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithName:v3];

  return v4;
}

uint64_t sub_13C90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_13CA0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_13CB0()
{
  sub_13EC8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_13CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_13D04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_13D68()
{
  swift_weakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_13D9C()
{
  swift_unknownObjectWeakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_13DD0()
{

  sub_4F30((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_13E24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_332C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_13E98(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_13ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v66 = a3;
  v5 = sub_332C(&qword_C2DD0, &unk_935C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v60 - v6;
  sub_8EFE4();
  sub_42F8();
  v70 = v9;
  v71 = v8;
  v10 = __chkstk_darwin(v8);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v64 = &v60 - v13;
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v16 = sub_8F0C4();
  sub_42F8();
  v63 = v17;
  __chkstk_darwin(v18);
  v62 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AuthenticateAction(0);
  sub_BBB0();
  __chkstk_darwin(v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E394();
  inited = swift_initStackObject();
  v24 = a1;
  v25 = sub_47508();
  v69 = v20;
  if (v3)
  {

    v26 = 2;
  }

  else
  {
    v26 = v25 & 1;
  }

  v68 = v23;
  *v23 = v26;
  v27 = a1;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_7;
  }

  sub_6658(v15, v75, v28);
  if (sub_33C0(v7, 1, v16) != 1)
  {
    v70 = *(v70 + 8);
    (v70)(v15, v71);
    v35 = *(v63 + 32);
    v36 = v62;
    v35(v62, v7, v16);
    v37 = v69;
    v35(&v68[*(v69 + 20)], v36, v16);
    v38 = v64;
    sub_8EFF4();
    v39 = sub_8EFB4();
    v61 = v24;
    if (v39)
    {
      v40 = sub_8F504();
      sub_14AC4();
      v43 = sub_14A7C(v41, v42, &protocol conformance descriptor for JSONError);
      sub_BC40(v43);
      strcpy(v44, "failureAction");
      *(v44 + 7) = -4864;
      *(v44 + 2) = v37;
      sub_BBB0();
      (*(v45 + 104))();
      swift_willThrow();
      (v70)(v38, v71);

      sub_14AF0();
    }

    else
    {
      sub_8E384();
      v40 = 0;
      (v70)(v38, v71);
      sub_3A94(v72, v74);
    }

    sub_14ADC(&v68[*(v37 + 24)]);
    v46 = v65;
    v47 = v61;
    sub_8EFF4();
    if ((sub_8EFB4() & 1) == 0)
    {
      sub_8E384();
      if (!v40)
      {

        v59 = v70;
        v58 = v71;
        (v70)(v47, v71);
        v59(v46, v58);
        sub_3A94(v72, v74);
        goto LABEL_15;
      }

      v73 = 0;
      memset(v72, 0, sizeof(v72));
      sub_146E0(v72, &qword_C2DE0, &qword_91DB0);
    }

    sub_8F504();
    sub_14AC4();
    v50 = sub_14A7C(v48, v49, &protocol conformance descriptor for JSONError);
    sub_BC40(v50);
    strcpy(v51, "successAction");
    *(v51 + 7) = -4864;
    *(v51 + 2) = v37;
    sub_BBB0();
    (*(v52 + 104))();
    swift_willThrow();

    v54 = v70;
    v53 = v71;
    (v70)(v47, v71);
    v54(v46, v53);

    sub_14AF0();
LABEL_15:
    sub_14ADC(&v68[*(v37 + 28)]);
    sub_1473C(v55, v66);
    goto LABEL_16;
  }

  sub_146E0(v7, &qword_C2DD0, &unk_935C0);
  v27 = a1;
LABEL_7:
  sub_8F504();
  sub_14AC4();
  sub_14A7C(v29, v30, &protocol conformance descriptor for JSONError);
  swift_allocError();
  strcpy(v31, "actionMetrics");
  *(v31 + 7) = -4864;
  *(v31 + 2) = v69;
  sub_BBB0();
  (*(v32 + 104))();
  swift_willThrow();
  v33 = v71;
  v34 = *(v70 + 8);
  v34(v27, v71);
  v34(v15, v33);
LABEL_16:
  sub_8F004();
  sub_BBB0();
  return (*(v56 + 8))(v75);
}

uint64_t type metadata accessor for AuthenticateAction(uint64_t a1)
{
  result = qword_C39A8;
  if (!qword_C39A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_146E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_332C(a2, a3);
  sub_BBB0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1473C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticateAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_147B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8F0C4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_33C0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_14888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_8F0C4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_33E8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

void sub_14938(uint64_t a1)
{
  sub_149D4();
  if (v1 <= 0x3F)
  {
    sub_8F0C4();
    if (v2 <= 0x3F)
    {
      sub_3CAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_149D4()
{
  if (!qword_C39B8)
  {
    v0 = sub_8F924();
    if (!v1)
    {
      atomic_store(v0, &qword_C39B8);
    }
  }
}

uint64_t sub_14A24(uint64_t a1)
{
  result = sub_14A7C(&qword_C39F0, type metadata accessor for AuthenticateAction, &unk_92D70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_14A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_14ADC@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 144);
  v3 = *(v1 - 128);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 - 112);
  return result;
}

double sub_14AF0()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

Swift::Int sub_14B2C()
{
  sub_8FC04();
  sub_8FC14(0);
  return sub_8FC24();
}

Swift::Int sub_14B80(uint64_t a1)
{
  sub_8FC04();
  sub_8FC14(0);
  return sub_8FC24();
}

uint64_t sub_14BC0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_332C(&qword_C3398, &qword_92E60);
  v80 = sub_8F444();
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v6 = sub_8E304();
  sub_4D6C(v6, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v71 = type metadata accessor for AuthenticateActionImplementation();
  v84 = v71;
  aBlock = v3;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&aBlock);
  sub_8E244();
  sub_8E2E4();

  sub_8E564();
  sub_8F174();
  sub_8F394();
  v9 = aBlock;
  sub_16238(&type metadata for JSService, v10, v11, v12, v13, v14, v15, v16, v51, v55, v59, v63, v67, v71, 2, 4);
  v17 = aBlock;
  v18 = sub_CE5C(0, &unk_C3F50, AMSProcessInfo_ptr);
  sub_16238(v18, v19, v20, v21, v22, v23, v24, v25, v52, v56, v60, v64, v68, v72, v75, v78);
  v26 = aBlock;
  v27 = *a1;
  if (v27 != 2 && (v27 & 1) != 0)
  {
    [aBlock setAccountMediaType:AMSAccountMediaTypeAppStoreSandbox];
  }

  v28 = sub_8E5C4();
  v36 = sub_16238(v28, v29, v30, v31, v32, v33, v34, v35, v53, v57, v61, v65, v69, v73, v76, v79);
  v37 = (*(*aBlock + 88))(v36);
  if (v37 && (v38 = v37, v39 = [v37 topViewController], v38, v39))
  {
    v40 = [objc_allocWithZone(AMSAuthenticateOptions) init];
    [v40 setCanMakeAccountActive:1];
    [v40 setEnableAccountCreation:1];
    v70 = v26;
    [v40 setClientInfo:v26];
    sub_CE5C(0, &qword_C3AC0, AMSAuthenticateRequest_ptr);
    v66 = v40;
    v41 = sub_15268(0, v40);
    sub_CE5C(0, &qword_C3AC8, AMSUIAuthenticateTask_ptr);
    v62 = v41;
    v54 = v39;
    v58 = sub_8DEB0();
    v42 = [v58 performAuthentication];
    *(swift_allocObject() + 16) = v77;
    v84 = v74;
    aBlock = v4;

    v43 = AMSLogKey();
    if (v43)
    {
      v44 = v43;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(&aBlock);
    sub_8E244();
    sub_8E2E4();

    v46 = swift_allocObject();
    v45 = v80;
    v46[2] = v4;
    v46[3] = v9;
    v46[4] = v17;
    v46[5] = v80;
    v85 = sub_15FD8;
    v86 = v46;
    aBlock = _NSConcreteStackBlock;
    v82 = 1107296256;
    v83 = sub_15BDC;
    v84 = &unk_B7A70;
    v47 = _Block_copy(&aBlock);

    [v42 addSuccessBlock:v47];
    _Block_release(v47);
    v48 = swift_allocObject();
    *(v48 + 16) = v4;
    *(v48 + 24) = v80;
    v85 = sub_15FFC;
    v86 = v48;
    aBlock = _NSConcreteStackBlock;
    v82 = 1107296256;
    v83 = sub_15E1C;
    v84 = &unk_B7AC0;
    v49 = _Block_copy(&aBlock);

    [v42 addErrorBlock:v49];
    _Block_release(v49);
  }

  else
  {
    sub_15F34();
    swift_allocError();
    v45 = sub_8F3D4();
  }

  return v45;
}

id sub_15268(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 options:a2];

  return v4;
}

uint64_t sub_152C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v6 = sub_8E304();
  sub_4D6C(v6, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v7 = type metadata accessor for AuthenticateActionImplementation();
  v23 = v7;
  v22[0] = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v22);
  sub_8E244();
  sub_8E2E4();

  (*(*a3 + 136))([a1 account]);
  *(swift_allocObject() + 16) = xmmword_92310;
  v23 = v7;
  v22[0] = a2;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v22);
  sub_8E244();
  sub_8E2E4();

  v12 = [a1 account];
  sub_8E654();

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a5;
  v15 = sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);
  swift_retain_n();
  swift_retain_n();
  v16 = a1;
  v17 = sub_8F7D4();
  v23 = v15;
  v24 = &protocol witness table for OS_dispatch_queue;
  v22[0] = v17;
  sub_8F3C4();

  return sub_4F30(v22);
}

uint64_t sub_156B8(int a1, id a2, uint64_t a3)
{
  v4 = [a2 account];
  v5 = [v4 ams_DSID];

  if (v5)
  {
    v6 = [v5 stringValue];

    v5 = sub_8F5F4();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_332C(&qword_C3AD0, &qword_92E68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_92E10;
  strcpy((inited + 32), "account_dsid");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v5;
  *(inited + 56) = v8;
  sub_332C(&qword_C3AD8, &qword_92E70);
  v10 = sub_8F574();
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v11 = sub_8E304();
  sub_4D6C(v11, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v16 = type metadata accessor for AuthenticateActionImplementation();
  v15[0] = a3;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v15);
  sub_8E244();
  sub_8E2E4();

  v16 = sub_332C(&qword_C3AE0, &qword_92E78);
  v15[0] = v10;
  sub_8F414();
  return sub_CDAC(v15);
}

uint64_t sub_159A4(uint64_t a1, uint64_t a2)
{
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v3 = sub_8E304();
  sub_4D6C(v3, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92300;
  v10 = type metadata accessor for AuthenticateActionImplementation();
  v9[0] = a2;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v9);
  sub_8E244();
  swift_getErrorValue();
  v10 = v8;
  v6 = sub_4ED0(v9);
  (*(*(v8 - 8) + 16))(v6);
  sub_8E264();
  sub_4DA4(v9);
  sub_8E2D4();

  return sub_8F3F4();
}

uint64_t sub_15BE4(uint64_t a1, uint64_t a2)
{
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v3 = sub_8E304();
  sub_4D6C(v3, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92300;
  v10 = type metadata accessor for AuthenticateActionImplementation();
  v9[0] = a2;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v9);
  sub_8E244();
  swift_getErrorValue();
  v10 = v8;
  v6 = sub_4ED0(v9);
  (*(*(v8 - 8) + 16))(v6);
  sub_8E264();
  sub_4DA4(v9);
  sub_8E2D4();

  return sub_8F3F4();
}

void sub_15E24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_15EB8()
{
  result = qword_C39F0;
  if (!qword_C39F0)
  {
    type metadata accessor for AuthenticateAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C39F0);
  }

  return result;
}

unint64_t sub_15F34()
{
  result = qword_C3AB8;
  if (!qword_C3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AB8);
  }

  return result;
}

uint64_t sub_15F88()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_15FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_16004()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1605C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for AuthenticateActionImplementation.PresentationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AuthenticateActionImplementation.PresentationError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x16194);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_161D8()
{
  result = qword_C3AE8;
  if (!qword_C3AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AE8);
  }

  return result;
}

void *sub_16238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  return sub_8F394();
}

id sub_16258()
{
  sub_162A4();
  result = sub_162E8(0xD000000000000040, 0x800000000009E1D0);
  qword_D0310 = result;
  return result;
}

unint64_t sub_162A4()
{
  result = qword_C3AF0;
  if (!qword_C3AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C3AF0);
  }

  return result;
}

id sub_162E8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_8F5C4();

  v4 = [v2 initWithPath:v3];

  return v4;
}

id sub_1635C()
{
  sub_162A4();
  result = sub_162E8(0xD000000000000047, 0x800000000009E220);
  qword_D0318 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Button.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x16474);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_164C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_332C(&qword_C3598, &unk_929F0);
    v9 = a1 + *(a3 + 40);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_16568(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598, &unk_929F0);
    v8 = v5 + *(a4 + 40);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Button(uint64_t a1)
{
  result = qword_C3B50;
  if (!qword_C3B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_16640(uint64_t a1)
{
  sub_1688C(319, &qword_C3B60, sub_1679C);
  if (v1 <= 0x3F)
  {
    sub_167E0();
    if (v2 <= 0x3F)
    {
      sub_BA38(319, &qword_C3418, &qword_C55D0, &qword_92750);
      if (v3 <= 0x3F)
      {
        sub_16830();
        if (v4 <= 0x3F)
        {
          sub_1688C(319, &qword_C3608, &type metadata accessor for ImpressionMetrics);
          if (v5 <= 0x3F)
          {
            sub_BA38(319, &qword_C2EC8, &unk_C2ED0, &qword_91E80);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1679C()
{
  result = qword_C3B68;
  if (!qword_C3B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C3B68);
  }

  return result;
}

void sub_167E0()
{
  if (!qword_C3B70)
  {
    v0 = sub_8F924();
    if (!v1)
    {
      atomic_store(v0, &qword_C3B70);
    }
  }
}

unint64_t sub_16830()
{
  result = qword_C3B78;
  if (!qword_C3B78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_C3B78);
  }

  return result;
}

void sub_1688C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_8F924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_168E0(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v95 = sub_8EFE4();
  v102 = *(v95 - 8);
  v6 = __chkstk_darwin(v95);
  v91 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v90 = &v85 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v85 - v11;
  __chkstk_darwin(v10);
  v14 = &v85 - v13;
  v15 = sub_332C(&qword_C3598, &unk_929F0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v85 - v19;
  v21 = type metadata accessor for Button(0);
  sub_4248();
  __chkstk_darwin(v22);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E394();
  inited = swift_initStackObject();
  sub_8E544();
  v94 = swift_initStackObject();
  v96 = a2;
  v97 = a2;
  v25 = sub_BAFC();
  if (v3)
  {

    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  *v24 = v26;
  v27 = sub_473C0();
  v86 = v12;
  v87 = 0;
  v85 = v26;
  *&v99 = v27;
  *(&v99 + 1) = v28;
  sub_8F9B4();
  v92 = a1;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_7;
  }

  sub_17714(v14, v96, v18);
  v29 = sub_8F204();
  if (sub_33C0(v18, 1, v29) == 1)
  {
    sub_3410(v18, &qword_C3598, &unk_929F0);
LABEL_7:
    sub_8F504();
    sub_17B38();
    sub_17AE8(v30, v31, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v32 = 0xD000000000000011;
    v32[1] = 0x800000000009DDE0;
    v32[2] = v21;
    sub_BBB0();
    (*(v33 + 104))();
    swift_willThrow();
    v34 = sub_17B84();
    MEMORY[0x800000000009DDE0](v34);

    v35 = sub_8F204();
    sub_33E8(v20, 1, 1, v35);
    v36 = 0;
    goto LABEL_9;
  }

  v37 = sub_17B84();
  MEMORY[0x800000000009DDE0](v37);
  sub_BBB0();
  (*(v38 + 32))(v20, v18, v29);
  sub_33E8(v20, 0, 1, v29);
  v36 = v87;
LABEL_9:
  sub_11068(v20, &v24[*(v21 + 40)]);
  v39 = v86;
  sub_8EFF4();
  if (sub_8EFB4())
  {
LABEL_12:
    sub_8F504();
    sub_17B38();
    v42 = sub_17AE8(v40, v41, &protocol conformance descriptor for JSONError);
    v36 = sub_4264(v42);
    *v43 = 0x6575676573;
    v43[1] = 0xE500000000000000;
    v43[2] = v21;
    sub_BBB0();
    (*(v44 + 104))();
    swift_willThrow();
    sub_4284();
    MEMORY[0x800000000009DDE0](v39, v95);

    sub_17B98();
    goto LABEL_13;
  }

  sub_8E384();
  if (v36)
  {

    sub_17B74();
    sub_3410(v98, &qword_C2DE0, &qword_91DB0);
    goto LABEL_12;
  }

  sub_4284();
  MEMORY[0x800000000009DDE0](v39, v95);
  sub_3A94(v98, &v99);
LABEL_13:
  v50 = &v24[*(v21 + 44)];
  v51 = v100;
  *v50 = v99;
  *(v50 + 1) = v51;
  *(v50 + 4) = v101;
  sub_5A84(0x656C797473, 0xE500000000000000, v21, v45, v46, v47, v48, v49);
  if (v36)
  {

    v52 = 0;
    v36 = 0;
  }

  v53 = v90;
  v24[18] = v52;
  sub_8EFF4();
  v54 = sub_8EFB4();
  v88 = 0x800000000009DDE0;
  if (v54)
  {
    sub_8F504();
    sub_17B38();
    v57 = sub_17AE8(v55, v56, &protocol conformance descriptor for JSONError);
    v36 = sub_4264(v57);
    *v58 = 0x656C746974627573;
    v58[1] = 0xE800000000000000;
    v58[2] = v21;
    sub_BBB0();
    (*(v59 + 104))();
    swift_willThrow();
    sub_4284();
    v60 = v53;
    v75 = v95;
    MEMORY[0x800000000009DDE0](v60, v95);

    sub_17B98();
  }

  else
  {
    sub_8E534();
    sub_4284();
    v74 = v53;
    v75 = v95;
    MEMORY[0x800000000009DDE0](v74, v95);
    sub_3A94(v98, &v99);
  }

  v61 = v100;
  *(v24 + 24) = v99;
  *(v24 + 40) = v61;
  *(v24 + 7) = v101;
  v62 = v91;
  v63 = v92;
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    v64 = v96;
    sub_8E534();
    if (!v36)
    {
      sub_4284();
      v102 = v76;
      v88(v62, v95);
      sub_3A94(v98, &v99);
      v77 = sub_3A94(&v99, (v24 + 64));
      v94 = &v85;
      __chkstk_darwin(v77);
      *(&v85 - 2) = v64;
      sub_BAE4();
      v79 = v78;
      v81 = v80;
      v82 = sub_17B50();
      v83(v82);
      *(v24 + 1) = v79;
      v24[16] = v81 & 1;
      v24[17] = 0;
      sub_FC90(v24, v89);
      sub_8F004();
      sub_4248();
      (*(v84 + 8))(v96);
      sub_EBA4(v24);
      return;
    }

    sub_17B74();
    sub_3410(v98, &unk_C55C0, &unk_92720);
    v75 = v95;
  }

  sub_8F504();
  sub_17B38();
  v67 = sub_17AE8(v65, v66, &protocol conformance descriptor for JSONError);
  sub_4264(v67);
  *v68 = 1954047348;
  v68[1] = 0xE400000000000000;
  v68[2] = v21;
  sub_BBB0();
  (*(v69 + 104))();
  swift_willThrow();

  v70 = v88;
  v88(v63, v75);
  v70(v62, v75);
  v71 = v85;
  v72 = v87;
  sub_8F004();
  sub_4248();
  (*(v73 + 8))(v96);

  if (!v72)
  {
    sub_3410((v24 + 24), &unk_C55C0, &unk_92720);
    sub_17A94((v24 + 104));
    sub_3410(&v24[*(v21 + 40)], &qword_C3598, &unk_929F0);
    sub_3410(&v24[*(v21 + 44)], &qword_C2DE0, &qword_91DB0);
  }
}

unint64_t sub_17454(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B6968;
  v6._object = a2;
  v4 = sub_8FB14(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_174A0(char a1)
{
  if (!a1)
  {
    return 0x656E6961746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6365537373616C67;
  }

  return 1954047348;
}

unint64_t sub_17524@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_17454(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_17554@<X0>(uint64_t *a1@<X8>)
{
  result = sub_174A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_17634()
{
  result = qword_C3BC8;
  if (!qword_C3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BC8);
  }

  return result;
}

uint64_t sub_17688@<X0>(uint64_t *a3@<X8>)
{
  sub_8E344();
  swift_allocObject();
  v4 = sub_8E334();

  *a3 = v4;
  return result;
}

uint64_t sub_17714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F1C4();
  v13 = sub_8F204();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_178C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  result = sub_420D4(v12, v9);
  *a3 = result;
  *(a3 + 8) = v15 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t sub_17AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_17B74()
{
  *(v0 - 176) = 0;
  result = 0.0;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0u;
  return result;
}

double sub_17B98()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

void sub_17BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_8E324();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_332C(&qword_C3C20, &qword_930E8);
  sub_8F044();

  if (v22)
  {
    sub_9520(&v21, &v23);
    sub_378B8(&v23, a3);
    sub_4F30(&v23);
  }

  else
  {
    sub_13E24(&v21, &unk_C55C0, &unk_92720);
    sub_3794C();
  }

  if (!_UISolariumEnabled() || ((*(v7 + 104))(v9, enum case for FlagKeys.Solarium(_:), v6), v10 = sub_8E314(), (*(v7 + 8))(v9, v6), (v10 & 1) == 0))
  {
    KeyPath = swift_getKeyPath();
    sub_18244(KeyPath);

    if ((v25 & 1) == 0)
    {
      v12 = *&v23;
      v13 = v24;
      [v4 bounds];
      CGRectGetWidth(v27);
      if (v13)
      {
        if (v12 == 0.0)
        {
          v14 = 16.0;
        }

        else
        {
          sub_42330();
        }
      }

      else
      {
        v14 = v12;
      }

      *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_widthInset] = v14;
    }
  }

  v15 = swift_getKeyPath();
  sub_18244(v15);

  sub_378C4(&v23, a3);
  sub_4F30(&v23);
  v16 = swift_getKeyPath();
  sub_18244(v16);

  v17 = v23;
  v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_style] = v23;
  sub_18B4C(v17);
  v18 = swift_getKeyPath();
  sub_18244(v18);

  sub_18364(v23);
  v19 = swift_getKeyPath();
  sub_18244(v19);

  v20 = v26 != 0;
  sub_13E24(&v23, &qword_C2DE0, &qword_91DB0);
  v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_isEnabled] = v20;
  sub_18260();
}

uint64_t sub_17ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ButtonComponent(0);

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_17F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ButtonComponent(0);

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_17FA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_17FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_18074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_180F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_181FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18244(uint64_t a1)
{

  return sub_8F044();
}

void sub_18260()
{
  *(*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_dynamicButtonView) + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_isEnabled) = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_isEnabled);
  sub_38380();
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_style;
  v2 = sub_18F90(*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_style));
  sub_18F1C(v2, *(v0 + v1));
}

void sub_182F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_color);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_style);
    v3 = v1;
    sub_18F1C(v3, v2);
  }
}

void sub_18364(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_color);
  *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_color) = a1;
  v3 = a1;

  sub_182F0();
}

id sub_183BC(double a1, double a2, double a3, double a4)
{
  v9 = sub_8EB34();
  __chkstk_darwin(v9 - 8);
  sub_8814();
  v10 = sub_8EB64();
  sub_42F8();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_8814();
  v16 = v15 - v14;
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_widthInset] = 0x4030000000000000;
  v17 = OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_dynamicButtonView;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for DynamicButtonView()) init];
  sub_8EB24();
  sub_8EB74();
  sub_8EB54();
  (*(v12 + 8))(v16, v10);
  v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_isEnabled] = 1;
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_color] = 0;
  v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_style] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ButtonComponent(0);
  v18 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  sub_18A90();

  return v18;
}

uint64_t sub_18640()
{
  v1 = [*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_dynamicButtonView) accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_8F5F4();

  return v3;
}

id sub_18750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonComponent(0);
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_187DC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ButtonComponent(0);
  objc_msgSendSuper2(&v4, "setHighlighted:", a1 & 1);
  return sub_18828();
}

id sub_18828()
{
  v1 = [v0 isHighlighted];
  if (v1)
  {
    v1 = v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_isEnabled];
  }

  return sub_88C40(v1, 1);
}

id sub_18870()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonComponent(0);
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_3794C();
  return sub_37958();
}

id sub_1890C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ButtonComponent(0);
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_dynamicButtonView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  return [v1 setFrame:{v4, v6, v8, v10}];
}

id sub_18A90()
{
  v1 = [v0 contentView];
  v2 = [objc_opt_self() ams_clear];
  [v1 setBackgroundColor:v2];

  [v0 setIsAccessibilityElement:1];
  v3 = UIAccessibilityTraitButton;

  return [v0 setAccessibilityTraits:v3];
}

void sub_18B4C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_18C60(a1);
  if (!v3)
  {
    *(*&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_dynamicButtonView] + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style) = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    *(*&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_dynamicButtonView] + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style) = 1;
LABEL_5:
    sub_383B0();
    sub_18C9C();
    goto LABEL_7;
  }

  sub_8F8A4();
  v4 = [v1 contentView];
  [v4 addSubview:*&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_dynamicButtonView]];

LABEL_7:
  v5 = sub_18F90(v3);
  sub_18F1C(v5, v3);
}

void sub_18C9C()
{
  v1 = sub_332C(&qword_C52A0, &unk_93200);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-1] - v2;
  sub_8EA64();
  v4 = sub_8EA74();
  sub_33E8(v3, 0, 1, v4);
  sub_8F8B4();
  v5 = sub_8EB64();
  v9[3] = v5;
  v9[4] = &protocol witness table for _Glass;
  v6 = sub_4ED0(v9);
  (*(*(v5 - 8) + 16))(v6, &v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_glassView], v5);
  sub_8F8A4();
  v7 = [v0 contentView];
  [v7 addSubview:*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_dynamicButtonView]];
}

void sub_18DD0(void *a1)
{
  v2 = v1;
  v4 = sub_8EB64();
  sub_42F8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_8814();
  v10 = v9 - v8;
  if (*(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_isEnabled) == 1)
  {
    v11 = a1;
  }

  else
  {
    v11 = [a1 colorWithAlphaComponent:0.5];
  }

  v12 = v11;
  (*(v6 + 16))(v10, v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_glassView, v4);
  v13[3] = v4;
  v13[4] = &protocol witness table for _Glass;
  sub_4ED0(v13);
  sub_8EB44();
  (*(v6 + 8))(v10, v4);
  sub_8F8A4();
}

void sub_18F1C(void *a1, unsigned __int8 a2)
{
  v4 = a2;
  [*(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_dynamicButtonView) setTintColor:a1];
  if (v4 <= 1)
  {

    sub_18DD0(a1);
  }
}

id sub_18F90(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = [objc_opt_self() ams_clear];

      return v2;
    }
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_color];
    if (v4)
    {
LABEL_10:

      return v4;
    }

    result = [v1 tintColor];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v4 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin15ButtonComponent_color];
  if (v4)
  {
    goto LABEL_10;
  }

  result = [v1 tintColor];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_190A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonComponent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ButtonComponent(uint64_t a1)
{
  result = qword_C3C68;
  if (!qword_C3C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_191B8(uint64_t a1)
{
  result = sub_8EB64();
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

id sub_19280(void *a1)
{
  v2 = sub_8E324();
  sub_42F8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_8814();
  v8 = v7 - v6;
  if (_UISolariumEnabled() && (v9 = sub_19500(), v10(v9), v11 = sub_8E314(), (*(v4 + 8))(v8, v2), (v11 & 1) != 0))
  {
    [objc_msgSend(a1 "container")];
    v13 = v12;
    swift_unknownObjectRelease();
    v14 = [a1 container];
    swift_getObjectType();
    sub_48804();
    v16 = v15;
    swift_unknownObjectRelease();
    v17 = v13 - (v16 + v16);
  }

  else
  {
    [objc_msgSend(a1 "container")];
    v17 = v18;
    swift_unknownObjectRelease();
  }

  if (_UISolariumEnabled())
  {
    v19 = sub_19500();
    v20(v19);
    v21 = sub_8E314();
    (*(v4 + 8))(v8, v2);
    if (v21)
    {
      v17 = fmin(v17, 360.0);
    }
  }

  v22 = [objc_opt_self() absoluteDimension:v17];
  v23 = [objc_opt_self() estimatedDimension:50.0];
  v24 = [objc_opt_self() sizeWithWidthDimension:v22 heightDimension:v23];

  return v24;
}

uint64_t sub_19538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_8F0C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_195AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v83 = a3;
  v4 = sub_332C(&qword_C2DD0, &unk_935C0);
  __chkstk_darwin(v4 - 8);
  v89 = v81 - v5;
  v6 = sub_8EFE4();
  sub_42F8();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v82 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v81[2] = v81 - v13;
  __chkstk_darwin(v12);
  v15 = v81 - v14;
  v16 = sub_8F0C4();
  sub_42F8();
  v87 = v17;
  __chkstk_darwin(v18);
  sub_42BC();
  v85 = v19;
  v20 = type metadata accessor for BuyAction(0);
  sub_BBB0();
  __chkstk_darwin(v21);
  sub_42BC();
  v90 = v22;
  sub_8E394();
  inited = swift_initStackObject();
  v23 = a1;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v88 = v20;
  v25 = a1;
  v26 = v89;
  sub_6658(v15, v96, v24);
  if (sub_33C0(v26, 1, v16) == 1)
  {
    sub_6678(v26, &qword_C2DD0, &unk_935C0);
    v23 = a1;
    v20 = v88;
LABEL_4:
    sub_8F504();
    sub_1A378();
    v29 = sub_1A330(v27, v28, &protocol conformance descriptor for JSONError);
    sub_4264(v29);
    strcpy(v30, "actionMetrics");
    *(v30 + 7) = -4864;
    *(v30 + 2) = v20;
    sub_BBB0();
    (*(v31 + 104))();
    swift_willThrow();
    v32 = *(v8 + 8);
    v32(v23, v6);
    v32(v15, v6);
    sub_8F004();
    sub_887C();
    return (*(v33 + 8))(v96);
  }

  v35 = *(v8 + 8);
  v81[1] = v8 + 8;
  v81[0] = v35;
  v35(v15, v6);
  v36 = *(v87 + 32);
  v37 = v85;
  v36(v85, v26, v16);
  v38 = *(v88 + 40);
  v89 = v16;
  v36(v90 + v38, v37, v16);
  v39 = sub_1A3BC();
  v40 = v25;
  v41 = v86;
  v44 = sub_10A88(v39, v42, v43);
  if (v41)
  {

    v45 = 0;
    v41 = 0;
  }

  else
  {
    v45 = v44;
  }

  *v90 = v45;
  v49 = v6;
  v46 = sub_1A3BC();
  v50 = sub_10AE8(v46, v47, v48);
  v51 = v90;
  v90[1] = v50;
  v51[2] = sub_473C0();
  v51[3] = v52;
  sub_1A3AC();
  v51[5] = sub_47648(v53, v54, v55);
  sub_1A3AC();
  *(v51 + 32) = sub_47508() & 1;
  sub_1A3AC();
  v51[6] = sub_10AE8(v56, v57, v58);
  v59 = sub_478DC();
  v60 = v88;
  *(v90 + *(v88 + 52)) = v59;
  sub_1A3F8();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_1A378();
    v63 = sub_1A330(v61, v62, &protocol conformance descriptor for JSONError);
    v64 = sub_4264(v63);
    strcpy(v65, "failureAction");
    *(v65 + 7) = -4864;
    *(v65 + 2) = v60;
    sub_BBB0();
    (*(v66 + 104))();
    v41 = v64;
    swift_willThrow();
    v67 = sub_1A390();
    v68(v67);

    v95 = 0;
    v93 = 0u;
    v94 = 0u;
  }

  else
  {
    sub_1A3D4();
    v78 = sub_1A390();
    v79(v78);
    sub_3A94(v91, &v93);
    v60 = v88;
  }

  sub_14ADC(v90 + *(v60 + 44));
  v69 = v82;
  sub_1A3F8();
  if ((sub_8EFB4() & 1) == 0)
  {
    sub_1A3D4();
    if (!v41)
    {

      v80 = v81[0];
      (v81[0])(v40, v49);
      v80(v69, v49);
      sub_3A94(v91, &v93);
      v60 = v88;
      goto LABEL_15;
    }

    v92 = 0;
    memset(v91, 0, sizeof(v91));
    sub_6678(v91, &qword_C2DE0, &qword_91DB0);
    v60 = v88;
  }

  sub_8F504();
  sub_1A378();
  v72 = sub_1A330(v70, v71, &protocol conformance descriptor for JSONError);
  sub_4264(v72);
  strcpy(v73, "successAction");
  *(v73 + 7) = -4864;
  *(v73 + 2) = v60;
  sub_BBB0();
  (*(v74 + 104))();
  swift_willThrow();

  v75 = v81[0];
  (v81[0])(v40, v49);
  v75(v69, v49);

  v95 = 0;
  v93 = 0u;
  v94 = 0u;
LABEL_15:
  v76 = v90;
  sub_14ADC(v90 + *(v60 + 48));
  sub_19F68(v76, v83);
  sub_8F004();
  sub_887C();
  (*(v77 + 8))(v96);
  return sub_19FCC(v76);
}

uint64_t type metadata accessor for BuyAction(uint64_t a1)
{
  result = qword_C3CD0;
  if (!qword_C3CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuyAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19FCC(uint64_t a1)
{
  v2 = type metadata accessor for BuyAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_8F0C4();
    v9 = a1 + *(a3 + 40);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_1A0D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_8F0C4();
    v8 = v5 + *(a4 + 40);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A158(uint64_t a1)
{
  sub_BA38(319, &qword_C3790, &qword_C3798, &unk_92D60);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_BA38(319, &qword_C3CE0, &qword_C3CE8, &qword_93288);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_BA38(319, &qword_C3CF0, &unk_C3CF8, &unk_93290);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        v2 = sub_8F0C4();
        if (v8 <= 0x3F)
        {
          sub_BA38(319, &qword_C2EC8, &unk_C2ED0, &qword_91E80);
          v2 = v9;
          if (v10 <= 0x3F)
          {
            type metadata accessor for AMSPurchaseType(319);
            v2 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1A2D8(uint64_t a1)
{
  result = sub_1A330(&qword_C3E70, type metadata accessor for BuyAction, &unk_93210);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1A3D4()
{

  return sub_8E384();
}

uint64_t sub_1A3F8()
{

  return sub_8EFF4();
}

uint64_t sub_1A418(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a1;
  v6 = sub_332C(&qword_C50D0, &qword_93420);
  __chkstk_darwin(v6 - 8);
  v54 = &v50 - v7;
  v59 = sub_8F364();
  sub_42F8();
  v55 = v8;
  __chkstk_darwin(v9);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_8E304();
  sub_42F8();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_CE5C(0, &qword_C3120, ACAccount_ptr);
  v52 = a3;
  sub_8F164();
  v56 = v60;
  if (qword_C2CE0 != -1)
  {
    sub_13E98(&qword_C2CE0);
  }

  v18 = sub_4D6C(v11, qword_D0378);
  v19 = *(v13 + 16);
  v51 = v11;
  v19(v16, v18, v11);
  sub_332C(&unk_C3920, &unk_92D50);
  v20 = sub_8E2A4();
  sub_13EB8(v20);
  *(swift_allocObject() + 16) = xmmword_92300;
  v63 = type metadata accessor for BuyActionImplementation(0);
  v60 = v4;
  v21 = v4;
  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&v60);
  sub_8E244();
  v24 = v59;
  if (!v56)
  {
    v17 = 0;
    v61 = 0;
    v62 = 0;
  }

  v60 = v56;
  v63 = v17;
  v53 = v56;
  sub_8E294();
  sub_13E24(&v60, &unk_C3EB0, &qword_92380);
  sub_8E2E4();

  (*(v13 + 8))(v16, v51);
  sub_8F174();
  sub_8F394();
  v25 = sub_CE5C(0, &unk_C3F50, AMSProcessInfo_ptr);
  sub_209A8(v25);
  v51 = v60;
  v26 = sub_8E524();
  sub_209A8(v26);
  v27 = v60;
  sub_209A8(&type metadata for MetricsContext);
  v28 = v61;
  v29 = sub_8E5C4();
  sub_209A8(v29);
  v30 = v60;
  if (!v28)
  {
    v28 = sub_8F574();
  }

  if (v57[1])
  {
    v31 = v57[1];
  }

  else
  {
    v31 = sub_8F574();
  }

  v32 = sub_1AAF8(v31, v28);
  v33 = v54;
  v34 = v55;
  v35 = v58;
  (*(v55 + 16))(v54, v58, v24);
  sub_33E8(v33, 0, 1, v24);
  v36 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23BuyActionImplementation_bag;
  swift_beginAccess();
  sub_204F4(v33, &v21[v36]);
  swift_endAccess();
  v37 = v57;
  *&v21[OBJC_IVAR____TtC19CoreDynamicUIPlugin23BuyActionImplementation_downloadableSystemBundleIds] = v57[5];

  v21[OBJC_IVAR____TtC19CoreDynamicUIPlugin23BuyActionImplementation_enableCheckDownload] = *(v37 + 32);
  v39 = (*(*v30 + 88))(v38);
  v40 = [v39 topViewController];

  swift_unknownObjectWeakAssign();
  v41 = *v37;
  v42 = v37[2];
  v43 = v37[3];
  v44 = *(v37 + *(type metadata accessor for BuyAction(0) + 52));
  v49 = v37[6];
  v45 = v51;
  sub_1AC28(v56, v41, v35, v51, v42, v43, v44, v32, v49);

  sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);

  v46 = sub_8F7D4();
  sub_20574(v46, sub_20564, v27);

  v63 = sub_8F224();
  v64 = &protocol witness table for SyncTaskScheduler;
  sub_4ED0(&v60);
  sub_8F214();
  v47 = sub_8F3B4();

  (*(v34 + 8))(v35, v59);
  sub_4F30(&v60);
  return v47;
}

uint64_t sub_1AAF8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1FAA0(a1, sub_40938, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1ABC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1FCD0(*a1);
  v4 = result;
  if (result)
  {
    result = sub_332C(&qword_C7480, &qword_92BB0);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = result;
  return result;
}

uint64_t sub_1AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, Class a8, uint64_t a9)
{
  v10 = v9;
  sub_CE5C(0, &qword_C3F18, AMSBuyParams_ptr);

  v18 = sub_1AF3C(a5, a6);
  v19 = [objc_allocWithZone(AMSPurchase) initWithPurchaseType:a7 buyParams:v18];
  [v19 setAccount:a1];
  if (a2)
  {
    v20.super.isa = sub_8F554().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  [v19 setAdditionalHeaders:v20.super.isa];

  [v19 setClientInfo:a4];
  [v19 setUserInitiated:1];
  if (a8)
  {
    sub_3D230(a8);
    a8 = sub_8F554().super.isa;
  }

  [v19 setMetricsOverlay:a8];

  [v19 setRequiresAccount:1];
  if (a9)
  {
    sub_3D230(a9);
    v21.super.isa = sub_8F554().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  [v19 setPerformanceMetricsOverlay:v21.super.isa];

  sub_CE5C(0, &qword_C3F20, AMSUIPurchaseTask_ptr);
  v22 = v19;
  v23 = sub_8F334();
  v24 = sub_1AFB0(v22, v23);
  [v24 setDelegate:v10];
  sub_332C(&qword_C3F28, &qword_93478);
  v25 = [v24 performPurchase];
  sub_8F424();
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);
  v27 = v22;
  v28 = sub_8F7D4();
  v29 = sub_20370(sub_20360, v26, v28);

  return v29;
}

id sub_1AF3C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_8F5C4();

  v4 = [v2 initWithString:v3];

  return v4;
}

id sub_1AFB0(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPurchase:a1 bag:a2];

  swift_unknownObjectRelease();
  return v3;
}

id sub_1B010(uint64_t a1, void *a2)
{
  v3 = sub_8E084();
  sub_332C(&qword_C3F38, &unk_93480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_92E10;
  sub_8F9B4();
  *(inited + 96) = sub_CE5C(0, &unk_C3F40, AMSPurchase_ptr);
  *(inited + 72) = a2;
  v5 = a2;
  sub_8F574();
  isa = sub_8F554().super.isa;

  v7 = [v3 ams_errorByAddingUserInfo:isa];

  return v7;
}

id sub_1B14C()
{
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23BuyActionImplementation_bag;
  v2 = sub_8F364();
  sub_33E8(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23BuyActionImplementation_downloadableSystemBundleIds] = 0;
  v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23BuyActionImplementation_enableCheckDownload] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BuyActionImplementation(0);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1B200()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuyActionImplementation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BuyActionImplementation(uint64_t a1)
{
  result = qword_C3D98;
  if (!qword_C3D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B2F8(uint64_t a1)
{
  sub_1B3A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B3A4(uint64_t a1)
{
  if (!qword_C3DA8)
  {
    sub_8F364();
    v1 = sub_8F924();
    if (!v2)
    {
      atomic_store(v1, &qword_C3DA8);
    }
  }
}

uint64_t sub_1B420(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  return sub_20938();
}

uint64_t sub_1B434()
{
  sub_209F8();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[21] = Strong;
  if (!Strong)
  {
    sub_1EE78();
    sub_20990();
    v17 = swift_allocError();
    sub_20968(v17, v18);
    swift_willThrow();
    sub_20978();
    sub_20BBC();

    __asm { BRAA            X1, X16 }
  }

  sub_20A78();
  sub_CE5C(0, &qword_C3AC8, AMSUIAuthenticateTask_ptr);
  v5 = v2;
  v6 = v0;
  v7 = sub_8DEB0();
  v1[22] = v7;
  v8 = [v7 performAuthentication];
  sub_20AE4();
  v1[23] = v9;
  v1[2] = v10;
  v1[7] = v3;
  v11 = sub_20A9C();
  v12 = sub_332C(&qword_C3F10, &qword_93470);
  sub_20918(v12);
  v1[11] = 1107296256;
  v1[12] = sub_208D0;
  v1[13] = &unk_B7F10;
  v1[14] = v11;
  v13 = sub_20AD8();
  [v13 v14];
  sub_20BBC();

  return _swift_continuation_await(v15);
}

uint64_t sub_1B5E0()
{
  sub_209C8();
  sub_209E0();
  sub_20984();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_20894;
  }

  else
  {
    v5 = sub_208CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1B6E4(uint64_t a1, uint64_t a2)
{
  sub_332C(&unk_C3EF0, &qword_93430);
  sub_20990();
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1B78C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_20898;

  return sub_1B420(v10, v9);
}

uint64_t sub_1B85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&unk_C3EA0, &qword_93380);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_8F754();
  sub_33E8(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_93390;
  v9[5] = v8;
  sub_1F428(0, 0, v6, &unk_933A0, v9);
}

uint64_t sub_1B96C(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  return sub_20938();
}

uint64_t sub_1B980()
{
  sub_209F8();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[21] = Strong;
  if (!Strong)
  {
    sub_1EE78();
    sub_20990();
    v17 = swift_allocError();
    sub_20968(v17, v18);
    swift_willThrow();
    sub_20978();
    sub_20BBC();

    __asm { BRAA            X1, X16 }
  }

  sub_20A78();
  sub_CE5C(0, &unk_C74A0, AMSUIAlertDialogTask_ptr);
  v5 = v2;
  v6 = v0;
  v7 = sub_8DEB0();
  v1[22] = v7;
  v8 = [v7 present];
  sub_20AE4();
  v1[23] = v9;
  v1[2] = v10;
  v1[7] = v3;
  v11 = sub_20A9C();
  v12 = sub_332C(&unk_C3F00, &qword_93450);
  sub_20918(v12);
  v1[11] = 1107296256;
  v1[12] = sub_208D0;
  v1[13] = &unk_B7EC0;
  v1[14] = v11;
  v13 = sub_20AD8();
  [v13 v14];
  sub_20BBC();

  return _swift_continuation_await(v15);
}

uint64_t sub_1BB2C()
{
  sub_209C8();
  sub_209E0();
  sub_20984();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_1BCA4;
  }

  else
  {
    v5 = sub_1BC30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1BC30()
{
  sub_209C8();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  v3 = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1BCA4()
{
  sub_209EC();
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  sub_20978();

  return v4();
}

uint64_t *sub_1BD24(uint64_t a1, void *a2, void *a3)
{
  result = sub_CD08((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1B6E4(v6, a3);
  }

  if (a2)
  {
    return sub_1B74C(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDB0(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1BE80;

  return sub_1B96C(v10, v9);
}

uint64_t sub_1BE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_20B4C();
  sub_209F8();
  sub_20AE4();
  v12 = *v11;
  v13 = *(*v11 + 32);
  v14 = *(*v11 + 24);
  v15 = *(*v11 + 16);
  v16 = *v11;
  sub_20948();
  *v17 = v16;

  v18 = *(v12 + 40);
  if (v10)
  {
    v19 = sub_8E084();

    (v18)[2](v18, 0, v19);

    _Block_release(v18);
  }

  else
  {
    v18[2](*(v12 + 40), 0, 0);
    _Block_release(v18);
  }

  sub_20BA4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1C038()
{
  sub_209C8();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  sub_332C(&qword_C50D0, &qword_93420);
  v1[25] = swift_task_alloc();
  v4 = sub_8F364();
  v1[26] = v4;
  sub_13EB8(v4);
  v1[27] = v5;
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_1C128, 0, 0);
}

uint64_t sub_1C128()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23BuyActionImplementation_bag;
  swift_beginAccess();
  sub_20154(v3 + v4, v1, &qword_C50D0, &qword_93420);
  if (sub_33C0(v1, 1, v2) == 1)
  {
    sub_13E24(v0[25], &qword_C50D0, &qword_93420);
    sub_1EE78();
    sub_20990();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
LABEL_8:

    sub_20978();

    return v26();
  }

  (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (!Strong)
  {
    v22 = v0[27];
    v21 = v0[28];
    v23 = v0[26];
    sub_1EE78();
    sub_20990();
    v24 = swift_allocError();
    sub_20968(v24, v25);
    swift_willThrow();
    (*(v22 + 8))(v21, v23);
    goto LABEL_8;
  }

  v7 = Strong;
  v8 = v0[22];
  v9 = v0[23];
  sub_CE5C(0, &qword_C3EE0, AMSUIEngagementTask_ptr);
  v10 = v9;
  v11 = sub_8F334();
  v12 = sub_1C698(v10, v11, v7);
  v0[30] = v12;
  v13 = [v8 clientInfo];
  [v12 setClientInfo:v13];

  v14 = [v12 presentEngagement];
  sub_20AE4();
  v0[31] = v15;
  v0[2] = v16;
  v0[7] = v0 + 21;
  v17 = sub_20A9C();
  v18 = sub_332C(&qword_C3EE8, &qword_93428);
  sub_20918(v18);
  v0[11] = 1107296256;
  v0[12] = sub_208D0;
  v0[13] = &unk_B7E70;
  v0[14] = v17;
  v19 = sub_20AD8();
  [v19 v20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1C438()
{
  sub_209C8();
  sub_209E0();
  sub_20984();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 256) = v4;
  if (v4)
  {
    v5 = sub_1C5F0;
  }

  else
  {
    v5 = sub_1C53C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1C53C()
{
  sub_209EC();
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);

  (*(v5 + 8))(v2, v4);
  v6 = *(v0 + 168);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1C5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_20B4C();
  sub_209F8();
  v11 = v10[31];
  v13 = v10[29];
  v12 = v10[30];
  v15 = v10[27];
  v14 = v10[28];
  v16 = v10[26];
  swift_willThrow();

  (*(v15 + 8))(v14, v16);

  sub_20978();
  sub_20BA4();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

id sub_1C698(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 bag:a2 presentingViewController:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1C724(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_20898;

  return sub_1C038();
}

void sub_1C7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&unk_C3EA0, &qword_93380);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  if (*(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23BuyActionImplementation_enableCheckDownload) == 1)
  {
    v7 = sub_1CC10(0xD000000000000010, 0x800000000009E720, a2);
    v8 = v7;
    if (v7 && [v7 BOOLValue])
    {
      v9 = sub_8F754();
      sub_33E8(v6, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v2;
      v11 = v2;
      sub_1D9DC(0, 0, v6, &unk_933D0, v10);
    }

    else
    {
      if (qword_C2CE0 != -1)
      {
        sub_13E98(&qword_C2CE0);
      }

      v17 = sub_8E304();
      sub_4D6C(v17, qword_D0378);
      sub_332C(&unk_C3920, &unk_92D50);
      v18 = sub_8E2A4();
      sub_13EB8(v18);
      *(swift_allocObject() + 16) = xmmword_92310;
      v23 = type metadata accessor for BuyActionImplementation(0);
      v22[0] = v2;
      v19 = v2;
      v20 = AMSLogKey();
      if (v20)
      {
        v21 = v20;
        sub_8F5F4();
      }

      sub_8E284();

      sub_4F30(v22);
      sub_8E244();
      sub_8E2E4();
    }
  }

  else
  {
    if (qword_C2CE0 != -1)
    {
      sub_13E98(&qword_C2CE0);
    }

    v12 = sub_8E304();
    sub_4D6C(v12, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    v13 = sub_8E2A4();
    sub_13EB8(v13);
    *(swift_allocObject() + 16) = xmmword_92310;
    v23 = type metadata accessor for BuyActionImplementation(0);
    v22[0] = v2;
    v14 = v2;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v22);
    sub_8E244();
    sub_8E2E4();
  }
}

uint64_t sub_1CC10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_8F9B4();
  sub_1E1D0(a3, v27, v26);
  sub_17A94(v26);
  if (!v28)
  {
    sub_13E24(v27, &unk_C3EB0, &qword_92380);
LABEL_5:

    sub_8F9B4();
    sub_1E1D0(a3, v27, v26);
    v9 = sub_17A94(v26);
    if (v28)
    {
      if (sub_20B0C(v9, v10, v11, &type metadata for String, v12))
      {
        v13 = [objc_allocWithZone(NSNumberFormatter) init];
        [v13 setNumberStyle:1];
        v14 = sub_8F5C4();
        v8 = [v13 numberFromString:v14];

        if (v8)
        {

LABEL_23:

          return v8;
        }

        v15 = sub_8F614();
        v17 = v16;

        v18 = v15 == 7562617 && v17 == 0xE300000000000000;
        if (v18 || (sub_20A30(7562617, 0xE300000000000000) & 1) != 0 || (v15 == 1702195828 ? (v19 = v17 == 0xE400000000000000) : (v19 = 0), v19 || (sub_20A30(1702195828, 0xE400000000000000) & 1) != 0))
        {

          v20 = [objc_allocWithZone(NSNumber) initWithBool:1];
LABEL_22:
          v8 = v20;
          goto LABEL_23;
        }

        v22 = v15 == 28526 && v17 == 0xE200000000000000;
        if (v22 || (sub_20A30(28526, 0xE200000000000000) & 1) != 0 || (v15 == 0x65736C6166 ? (v23 = v17 == 0xE500000000000000) : (v23 = 0), v23))
        {
        }

        else
        {
          v24 = sub_20A30(0x65736C6166, 0xE500000000000000);

          if ((v24 & 1) == 0)
          {

            return 0;
          }
        }

        v20 = [objc_allocWithZone(NSNumber) initWithBool:0];
        goto LABEL_22;
      }
    }

    else
    {
      sub_13E24(v27, &unk_C3EB0, &qword_92380);
    }

    return 0;
  }

  v4 = sub_CE5C(0, &qword_C3ED0, NSNumber_ptr);
  if ((sub_20B0C(v4, v5, v6, v4, v7) & 1) == 0)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_1CEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = a4;
  sub_8E224();
  *(v4 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1CF88, 0, 0);
}

uint64_t sub_1CF88(uint64_t a1, uint64_t a2)
{
  sub_20B4C();
  sub_209F8();
  if (qword_C2CE0 != -1)
  {
    sub_13E98(&qword_C2CE0);
  }

  v3 = *(v2 + 272);
  v4 = sub_8E304();
  *(v2 + 288) = sub_4D6C(v4, qword_D0378);
  *(v2 + 296) = sub_332C(&unk_C3920, &unk_92D50);
  v5 = sub_8E2A4();
  sub_13EB8(v5);
  *(v2 + 304) = *(v6 + 72);
  *(v2 + 344) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_92310;
  v8 = type metadata accessor for BuyActionImplementation(0);
  *(v2 + 312) = v8;
  *(v2 + 40) = v8;
  *(v2 + 16) = v3;
  v9 = v3;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30((v2 + 16));
  sub_8E244();
  sub_8E2E4();

  type metadata accessor for CheckDownloadQueueActionImplementation();
  *(v2 + 320) = sub_27260();
  sub_332C(&qword_C3398, &qword_92E60);
  sub_1FFA4();
  v12 = swift_task_alloc();
  *(v2 + 328) = v12;
  *v12 = v2;
  v12[1] = sub_1D1D8;
  sub_20BA4();

  return dispatch thunk of Future.then()(v13);
}