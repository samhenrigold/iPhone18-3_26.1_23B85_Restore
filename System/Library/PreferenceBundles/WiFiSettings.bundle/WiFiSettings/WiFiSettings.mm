Swift::Int sub_2FE8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_7D10();
  sub_7C60();
  sub_7D20(v1);
  sub_7D20(v2);
  return sub_7D30();
}

void sub_3054(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_7C60();
  sub_7D20(v2);
  sub_7D20(v3);
}

Swift::Int sub_30A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_7D10();
  sub_7C60();
  sub_7D20(v2);
  sub_7D20(v3);
  return sub_7D30();
}

BOOL sub_3108(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_5418(0, &qword_11930, NSObject_ptr);
  v6 = sub_7C50();
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t sub_3198()
{
  v0 = sub_79B0();
  sub_5140(v0, qword_12210);
  sub_4E6C(v0, qword_12210);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_7B90();
  }

  return sub_79A0();
}

uint64_t sub_3288@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = sub_7980();
  __chkstk_darwin(v5 - 8);
  v6 = sub_7960();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4CF4(&qword_118B8, &qword_9090);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = sub_4CF4(&qword_118B0, &qword_9088);
  v15 = *(v14 - 8);
  v42 = v14;
  v43 = v15;
  __chkstk_darwin(v14);
  v39 = &v37 - v16;
  sub_5418(0, &qword_11920, &off_C518);
  sub_7970();
  sub_7950();
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  v38 = v17;
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v45 = v17;
  v46 = v18;
  v37 = sub_4F0C();
  swift_bridgeObjectRetain_n();
  v19 = sub_7A90();
  v21 = v20;
  v23 = v22;
  v24 = sub_5060(&qword_118C0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_7AC0();
  sub_51A4(v19, v21, v23 & 1);

  (*(v7 + 8))(v9, v6);
  v45 = v6;
  v46 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_4DC4();
  v36 = sub_4E18();
  v28 = v39;
  v27 = v40;
  sub_7AD0();
  (*(v41 + 8))(v13, v27);
  v45 = v38;
  v46 = v18;
  v29 = sub_7A90();
  v31 = v30;
  v33 = v32;
  v45 = v27;
  v46 = &type metadata for CurrentNetworkDetailViewInput;
  v47 = &type metadata for WiFiSettingsViewProviderViewControllerRepresentable;
  v48 = OpaqueTypeConformance2;
  v49 = v26;
  v50 = v36;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  sub_7AA0();
  sub_51A4(v29, v31, v33 & 1);

  return (*(v43 + 8))(v28, v34);
}

uint64_t sub_36FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  return _objc_retain_x1();
}

uint64_t sub_3710(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = sub_7AE0();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = sub_7B00();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  sub_4CF4(&qword_118E0, &qword_90A0);
  v2[24] = swift_task_alloc();
  v5 = sub_78E0();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = sub_79D0();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v7 = sub_7910();
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v2[33] = *(v8 + 64);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  sub_7BF0();
  v2[37] = sub_7BE0();
  v10 = sub_7BD0();

  return _swift_task_switch(sub_39CC, v10, v9);
}

uint64_t sub_39CC()
{
  v97 = v0;

  sub_7B30();
  sub_7B20();
  if (qword_11780 != -1)
  {
LABEL_34:
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[32];
  v5 = sub_79B0();
  sub_4E6C(v5, qword_12210);
  v93 = *(v4 + 16);
  v93(v1, v2, v3);
  v6 = sub_7990();
  v7 = sub_7C10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  v10 = v0[31];
  v11 = v0[32];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v96 = v91;
    *v12 = 136315138;
    sub_5060(&qword_11910, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = sub_7CF0();
    v90 = v7;
    v15 = v14;
    v16 = *(v11 + 8);
    v16(v9, v10);
    v17 = sub_68AC(v13, v15, &v96);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v90, "settings experience handling URL for %s", v12, 0xCu);
    sub_50F0(v91);
  }

  else
  {

    v16 = *(v11 + 8);
    v16(v9, v10);
  }

  v18 = v0[34];
  v19 = v0[31];
  v20 = v0[25];
  v21 = v0[26];
  v22 = v0[24];
  sub_7B30();
  sub_78C0();
  v16(v18, v19);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    v23 = v0[36];
    v25 = v0[30];
    v24 = v0[31];
    v26 = v0[28];
    v27 = v0[29];
    sub_4EA4(v0[24]);
    sub_7B40();
    (*(v27 + 8))(v25, v26);
    v16(v23, v24);
  }

  else
  {
    v92 = v16;
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    v0[11] = sub_78D0();
    v0[12] = v28;
    v0[13] = 47;
    v0[14] = 0xE100000000000000;
    sub_4F0C();
    v29 = sub_7C70();

    v30 = 0;
    v31 = *(v29 + 16);
    v32 = &_swiftEmptyArrayStorage;
LABEL_8:
    v33 = (v29 + 40 + 16 * v30);
    while (v31 != v30)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v35 = *(v33 - 1);
      v34 = *v33;
      v33 += 2;
      ++v30;
      v36 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v36 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_4A7C(0, v32[2] + 1, 1);
          v32 = v96;
        }

        v39 = v32[2];
        v38 = v32[3];
        if (v39 >= v38 >> 1)
        {
          sub_4A7C((v38 > 1), v39 + 1, 1);
          v32 = v96;
        }

        v32[2] = v39 + 1;
        v40 = &v32[2 * v39];
        *(v40 + 4) = v35;
        *(v40 + 5) = v34;
        goto LABEL_8;
      }
    }

    v41 = v32 + 5;
    v42 = -v32[2];
    v43 = -1;
    do
    {
      if (v42 + v43 == -1)
      {
        v59 = v0[36];
        v60 = v0[34];
        v62 = v0[31];
        v61 = v0[32];
        v88 = v0[29];
        v89 = v0[28];
        v87 = v0[27];
        v84 = v0[26];
        v85 = v0[30];
        v86 = v0[25];
        v79 = v0[23];
        v81 = v59;
        v82 = v0[22];
        v63 = v0[20];
        v64 = v0[18];
        v65 = v0[19];
        v83 = v0[21];

        sub_5418(0, &qword_118F0, OS_dispatch_queue_ptr);
        v80 = sub_7C30();
        v93(v60, v59, v62);
        v66 = (*(v61 + 80) + 16) & ~*(v61 + 80);
        v67 = swift_allocObject();
        (*(v61 + 32))(v67 + v66, v60, v62);
        v0[6] = sub_4FE8;
        v0[7] = v67;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_4530;
        v0[5] = &unk_C988;
        v68 = _Block_copy(v0 + 2);

        sub_7AF0();
        v0[15] = &_swiftEmptyArrayStorage;
        sub_5060(&qword_118F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_4CF4(&qword_11900, &qword_90A8);
        sub_50A8(&qword_11908, &qword_11900, &qword_90A8, &protocol conformance descriptor for [A]);
        sub_7C80();
        sub_7C40();
        _Block_release(v68);

        (*(v65 + 8))(v63, v64);
        (*(v82 + 8))(v79, v83);
        sub_7B40();
        (*(v84 + 8))(v87, v86);
        (*(v88 + 8))(v85, v89);
        v58 = v62;
        v57 = v81;
        goto LABEL_28;
      }

      if (++v43 >= v32[2])
      {
        goto LABEL_33;
      }

      v44 = v41 + 2;
      v46 = *(v41 - 1);
      v45 = *v41;

      LOBYTE(v46) = sub_42F0(0x446B726F7774654ELL, 0xEE00736C69617465, v46, v45);

      v41 = v44;
    }

    while ((v46 & 1) == 0);

    v47 = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
    [v47 activate];
    v48 = [v47 currentScanResult];
    if (v48 && (v49 = v48, v50 = [v48 matchingKnownNetworkProfile], v49, v50))
    {
      v51 = v0[30];
      v94 = v0[31];
      v95 = v0[36];
      v52 = v0[28];
      v53 = v0[29];
      v54 = v0[26];
      v55 = v0[27];
      v56 = v0[25];
      v0[8] = v50;
      sub_4DC4();
      v0[9] = 0;
      v0[10] = 0;
      sub_79C0();
      sub_7B40();

      (*(v54 + 8))(v55, v56);
      (*(v53 + 8))(v51, v52);
      v58 = v94;
      v57 = v95;
    }

    else
    {
      v69 = v0[36];
      v71 = v0[30];
      v70 = v0[31];
      v72 = v0[28];
      v73 = v0[29];
      v75 = v0[26];
      v74 = v0[27];
      v76 = v0[25];
      sub_7B40();

      (*(v75 + 8))(v74, v76);
      (*(v73 + 8))(v71, v72);
      v57 = v69;
      v58 = v70;
    }

LABEL_28:
    v92(v57, v58);
  }

  v77 = v0[1];

  return v77();
}

uint64_t sub_42F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_7BB0();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_7BB0();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_7D00();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_7BB0();
      v7 = v9;
    }

    while (v9);
  }

  sub_7BB0();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_444C()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v6 = [v0 airportController];

    if (v6)
    {
      if ([v6 respondsToSelector:"handleURL:"])
      {
        sub_78F0(v2);
        v4 = v3;
        [v6 handleURL:v3];

        v5 = v4;
      }

      else
      {
        v5 = v6;
      }
    }
  }
}

uint64_t sub_4530(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_4574()
{
  v1 = sub_4CF4(&qword_118A0, &qword_9078);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_4CF4(&qword_118A8, &qword_9080);
  v8 = sub_4D7C(&qword_118B0, &qword_9088);
  v9 = sub_4D7C(&qword_118B8, &qword_9090);
  v10 = sub_7960();
  v11 = sub_5060(&qword_118C0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v17 = v10;
  v18 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_4DC4();
  v14 = sub_4E18();
  v17 = v9;
  v18 = &type metadata for CurrentNetworkDetailViewInput;
  v19 = &type metadata for WiFiSettingsViewProviderViewControllerRepresentable;
  v20 = OpaqueTypeConformance2;
  v21 = v13;
  v22 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v17 = v8;
  v18 = v15;
  swift_getOpaqueTypeConformance2();
  sub_7B50();
  sub_50A8(&qword_118D8, &qword_118A0, &qword_9078, &protocol conformance descriptor for SettingsPane<A>);
  sub_7B10();
  return (*(v2 + 8))(v4, v1);
}

id sub_481C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4BA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_489C()
{
  result = qword_11898;
  if (!qword_11898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11898);
  }

  return result;
}

BOOL sub_4928(void *a1, uint64_t *a2)
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

Swift::Int sub_4984()
{
  v1 = *v0;
  sub_7D10();
  sub_7D20(v1);
  return sub_7D30();
}

Swift::Int sub_49FC(uint64_t a1)
{
  v2 = *v1;
  sub_7D10();
  sub_7D20(v2);
  return sub_7D30();
}

void *sub_4A40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_4A7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_4A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_4A9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_4CF4(&qword_11918, &qword_90B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_4BA8()
{
  v0 = objc_allocWithZone(NSBundle);
  v1 = sub_7B80();
  v2 = [v0 initWithPath:v1];

  if (!v2)
  {
    return v2;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    MobileGestalt_get_wapiCapability();

    v5 = sub_7B80();

    v6 = sub_7B80();
    v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

    v2 = sub_7B90();
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_4CF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4D3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4D7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_4DC4()
{
  result = qword_118C8;
  if (!qword_118C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118C8);
  }

  return result;
}

unint64_t sub_4E18()
{
  result = qword_118D0;
  if (!qword_118D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118D0);
  }

  return result;
}

uint64_t sub_4E6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_4EA4(uint64_t a1)
{
  v2 = sub_4CF4(&qword_118E0, &qword_90A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4F0C()
{
  result = qword_118E8;
  if (!qword_118E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118E8);
  }

  return result;
}

uint64_t sub_4F60()
{
  v1 = sub_7910();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_4FE8()
{
  sub_7910();

  sub_444C();
}

uint64_t sub_5048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_50A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_4D7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_50F0(void *a1)
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

uint64_t *sub_5140(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_51A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_51B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_51C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_521C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_527C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_5290(uint64_t *a1, int a2)
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

uint64_t sub_52D8(uint64_t result, int a2, int a3)
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

uint64_t sub_5328()
{
  sub_4D7C(&qword_118A0, &qword_9078);
  sub_50A8(&qword_118D8, &qword_118A0, &qword_9078, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_53C4()
{
  result = qword_11928;
  if (!qword_11928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11928);
  }

  return result;
}

uint64_t sub_5418(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_5488(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_557C()
{
  v0 = sub_79B0();
  sub_5140(v0, qword_12228);
  sub_4E6C(v0, qword_12228);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_7B90();
  }

  return sub_79A0();
}

Swift::Void __swiftcall WFSettingsKitViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WFSettingsKitViewController();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1);
  v3 = *&v1[OBJC_IVAR___WFSettingsKitViewController_hostingController];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 parentViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationItem];
    }

    else
    {
      v7 = 0;
    }

    [v4 _setExistingNavigationItem:v7];
  }
}

Swift::Void __swiftcall WFSettingsKitViewController.loadView()()
{
  v1 = v0;
  v2 = sub_7940();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v44 - v7;
  v9 = type metadata accessor for WFSettingsKitViewController();
  v46.receiver = v1;
  v46.super_class = v9;
  objc_msgSendSuper2(&v46, "loadView");
  sub_7930();
  (*(v3 + 16))(v6, v8, v2);
  v10 = objc_allocWithZone(sub_4CF4(&qword_11A28, &qword_9330));
  v11 = sub_79E0();
  v12 = *&v1[OBJC_IVAR___WFSettingsKitViewController_hostingController];
  *&v1[OBJC_IVAR___WFSettingsKitViewController_hostingController] = v11;
  v13 = v11;

  v14 = v13;
  [v1 addChildViewController:v14];
  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v1 view];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
  v27 = [v14 view];

  if (!v27)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v27 setAutoresizingMask:18];

  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    if (qword_11788 != -1)
    {
      swift_once();
    }

    v30 = sub_79B0();
    sub_4E6C(v30, qword_12228);
    v31 = v29;
    v32 = sub_7990();
    v33 = sub_7C20();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v45 = v2;
      v35 = v34;
      v36 = swift_slowAlloc();
      v44 = v3;
      v37 = v36;
      *v35 = 138412290;
      *(v35 + 4) = v31;
      *v36 = v29;
      v38 = v31;
      _os_log_impl(&dword_0, v32, v33, "View unwrapped: %@", v35, 0xCu);
      sub_6F6C(v37, &qword_11A30, &qword_9338);
      v3 = v44;

      v2 = v45;

      v31 = v32;
      v32 = v38;
    }
  }

  v39 = [v1 view];
  if (!v39)
  {
    goto LABEL_18;
  }

  v40 = v39;
  v41 = [v14 view];

  if (!v41)
  {
LABEL_19:
    __break(1u);
    return;
  }

  [v40 addSubview:v41];

  [v14 didMoveToParentViewController:v1];
  v42 = [v14 navigationController];

  if (v42)
  {
    v43 = [v42 navigationBar];

    [v43 setPrefersLargeTitles:1];
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    (*(v3 + 8))(v8, v2);
  }
}

id WFSettingsKitViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFSettingsKitViewController.init()()
{
  *&v0[OBJC_IVAR___WFSettingsKitViewController_hostingController] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSettingsKitViewController();
  return objc_msgSendSuper2(&v2, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall WFSettingsKitViewController.handleURLDict(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_7910();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v63[-v9];
  v69 = sub_4CF4(&qword_11A38, &qword_9340);
  v11 = __chkstk_darwin(v69);
  v13 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v70 = &v63[-v15];
  v16 = __chkstk_darwin(v14);
  v18 = &v63[-v17];
  __chkstk_darwin(v16);
  v20 = &v63[-v19];
  v71 = 1752457584;
  v72 = 0xE400000000000000;
  sub_7CB0();
  if (*(a1._rawValue + 2) && (v21 = sub_6E64(v73), (v22 & 1) != 0))
  {
    sub_7024(*(a1._rawValue + 7) + 32 * v21, v74);
    sub_6EA8(v73);
    swift_dynamicCast();
  }

  else
  {
    sub_6EA8(v73);
  }

  sub_7900();

  if (![v1 isViewLoaded] || (v23 = *&v1[OBJC_IVAR___WFSettingsKitViewController_hostingController]) == 0)
  {
LABEL_9:
    if (qword_11788 != -1)
    {
      swift_once();
    }

    v24 = sub_79B0();
    sub_4E6C(v24, qword_12228);
    sub_6EFC(v20, v13);
    v25 = v2;

    v26 = v25;
    v27 = sub_7990();
    v28 = sub_7C20();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v29 = 136315906;
      v30 = sub_7B70();
      v32 = sub_68AC(v30, v31, v73);

      *(v29 + 4) = v32;
      *(v29 + 12) = 1024;
      v33 = [v26 isViewLoaded];

      *(v29 + 14) = v33;
      *(v29 + 18) = 2080;
      v74[0] = *&v26[OBJC_IVAR___WFSettingsKitViewController_hostingController];
      v34 = v74[0];
      sub_4CF4(&qword_11A40, &qword_9348);
      v35 = sub_7BA0();
      v37 = sub_68AC(v35, v36, v73);

      *(v29 + 20) = v37;
      *(v29 + 28) = 2080;
      sub_6EFC(v13, v70);
      v38 = sub_7BA0();
      v40 = v39;
      sub_6F6C(v13, &qword_11A38, &qword_9340);
      v41 = sub_68AC(v38, v40, v73);

      *(v29 + 30) = v41;
      _os_log_impl(&dword_0, v27, v28, "Could not handle URL with resource dictionary: %s, viewLoaded: %{BOOL}d, hostingController: %s, url: %s", v29, 0x26u);
      swift_arrayDestroy();
    }

    else
    {

      sub_6F6C(v13, &qword_11A38, &qword_9340);
    }

    v42 = v20;
    goto LABEL_21;
  }

  sub_6EFC(v20, v18);
  if ((*(v5 + 48))(v18, 1, v4) == 1)
  {
    sub_6F6C(v18, &qword_11A38, &qword_9340);
    goto LABEL_9;
  }

  (*(v5 + 32))(v10, v18, v4);
  v43 = qword_11788;
  v69 = v23;
  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_79B0();
  sub_4E6C(v44, qword_12228);
  v68 = *(v5 + 16);
  v68(v8, v10, v4);

  v45 = sub_7990();
  v46 = sub_7C00();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v67 = v5 + 16;
    v48 = v47;
    v66 = swift_slowAlloc();
    v73[0] = v66;
    *v48 = 136315650;
    *(v48 + 4) = sub_68AC(0xD000000000000011, 0x800000000000A950, v73);
    *(v48 + 12) = 2080;
    sub_6FCC();
    v65 = v45;
    v49 = sub_7CF0();
    v64 = v46;
    v51 = v50;
    v52 = v8;
    v53 = *(v5 + 8);
    v53(v52, v4);
    v54 = sub_68AC(v49, v51, v73);

    *(v48 + 14) = v54;
    *(v48 + 22) = 2080;
    v55 = sub_7B70();
    v57 = sub_68AC(v55, v56, v73);

    *(v48 + 24) = v57;
    v58 = v65;
    _os_log_impl(&dword_0, v65, v64, "%s called url: %s with resource dict %s", v48, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v59 = v8;
    v53 = *(v5 + 8);
    v53(v59, v4);
  }

  v60 = v70;
  v68(v70, v10, v4);
  (*(v5 + 56))(v60, 0, 1, v4);
  v61 = v69;
  v62 = sub_79F0();
  sub_7920();
  v62(v73, 0);

  v53(v10, v4);
  v42 = v20;
LABEL_21:
  sub_6F6C(v42, &qword_11A38, &qword_9340);
}

id WFSettingsKitViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_7B80();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFSettingsKitViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSettingsKitViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_67DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_6850(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_68AC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_68AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_6978(v11, 0, 0, 1, a1, a2);
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
    sub_7024(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_50F0(v11);
  return v7;
}

unint64_t sub_6978(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_6A84(a5, a6);
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
    result = sub_7CD0();
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

char *sub_6A84(uint64_t a1, unint64_t a2)
{
  v3 = sub_6AD0(a1, a2);
  sub_6C00(&off_C8D0);
  return v3;
}

char *sub_6AD0(uint64_t a1, unint64_t a2)
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

  v6 = sub_6CEC(v5, 0);
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

  result = sub_7CD0();
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
        v10 = sub_7BC0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_6CEC(v10, 0);
        result = sub_7CC0();
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

uint64_t sub_6C00(uint64_t result)
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

  result = sub_6D60(result, v11, 1, v3);
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

void *sub_6CEC(uint64_t a1, uint64_t a2)
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

  sub_4CF4(&unk_11A70, &unk_9380);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_6D60(char *result, int64_t a2, char a3, char *a4)
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
    sub_4CF4(&unk_11A70, &unk_9380);
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

_BYTE **sub_6E54(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_6E64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7C90(*(v2 + 40));

  return sub_7080(a1, v4);
}

uint64_t sub_6EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4CF4(&qword_11A38, &qword_9340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4CF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_6FCC()
{
  result = qword_11910;
  if (!qword_11910)
  {
    sub_7910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11910);
  }

  return result;
}

uint64_t sub_7024(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_7080(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_7148(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_7CA0();
      sub_6EA8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_71A4()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_7200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WFNetworkViewController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = [objc_allocWithZone(WFNetworkListController) initWithViewController:v6];
  sub_4CF4(&qword_11BF8, &qword_9500);
  sub_7A80();
  v8 = *(v13 + 16);
  *(v13 + 16) = v7;
  v9 = v7;

  v10 = swift_dynamicCastObjCProtocolUnconditional();
  v11 = v6;
  v12 = [v9 networkListViewController:v11 showSettingsForNetwork:v10 context:a3 scrollToCellType:a4 controller:{v9, &OBJC_PROTOCOL___WFNetworkListRecord}];

  if (v12)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7364@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WiFiSettingsViewProviderViewControllerRepresentable.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_73D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_786C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_786C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_74BC(uint64_t a1)
{
  sub_786C();
  sub_7A60();
  __break(1u);
}

id sub_75F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_showOtherNetwork] = 0;
  *&v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetworkScaledRSSI] = 0;
  *&v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork] = 0;
  *&v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetworkState] = 0;
  *&v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_deviceCapability] = 0;
  if (a2)
  {
    v5 = sub_7B80();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for WFNetworkViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_7710(void *a1)
{
  v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_showOtherNetwork] = 0;
  *&v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetworkScaledRSSI] = 0;
  *&v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork] = 0;
  *&v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetworkState] = 0;
  *&v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_deviceCapability] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFNetworkViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_77E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFNetworkViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_786C()
{
  result = qword_11BF0;
  if (!qword_11BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11BF0);
  }

  return result;
}