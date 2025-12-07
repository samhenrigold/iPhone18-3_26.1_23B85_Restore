void ReadingGoalReachedEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1E1150();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_284498, &qword_1F4580);
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for ReadingGoalReachedEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v34 = a1;
  sub_48B8(a1, v13);
  sub_BDEAC();
  sub_1E1DF0();
  if (!v2)
  {
    v28 = v10;
    v29 = v6;
    v21 = v32;
    v37 = 0;
    sub_BE29C();
    v22 = v33;
    sub_1E1C20();
    v23 = v36;
    v24 = v12;
    *v12 = v35;
    *(v12 + 1) = v23;
    v37 = 1;
    sub_4602C();
    sub_1E1C20();
    v25 = v36;
    v12[16] = v35;
    *(v12 + 3) = v25;
    LOBYTE(v35) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v26 = v29;
    sub_1E1C20();
    (*(v21 + 8))(v9, v22);
    (*(v30 + 32))(v24 + *(v28 + 24), v26, v4);
    sub_BE2F0(v24, v31);
  }

  sub_4E48(v34, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t sub_BE29C()
{
  result = qword_2844A0;
  if (!qword_2844A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DailyGoalsReachedData, &type metadata for DailyGoalsReachedData, v0, v1);
    atomic_store(result, &qword_2844A0);
  }

  return result;
}

uint64_t sub_BE2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingGoalReachedEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BE3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284470, &qword_1F4560);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_284478, &unk_1F4568);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_BE52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_284470, &qword_1F4560);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_284478, &unk_1F4568);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_BE6A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_284470, &qword_1F4560);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_284478, &unk_1F4568);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_BE814(uint64_t a1)
{
  sub_BE920(319, &qword_284510, sub_BE29C, sub_BDF00, &type metadata for DailyGoalsReachedData);
  if (v1 <= 0x3F)
  {
    sub_BE920(319, &unk_284518, sub_4602C, sub_46084, &type metadata for YearlyGoalsReachedData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_BE920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_BE9B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_BEA68(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_BEB08(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_BEBA0()
{
  result = qword_2845E8;
  if (!qword_2845E8)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for ReadingGoalReachedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2845E8);
  }

  return result;
}

unint64_t sub_BEBF8()
{
  result = qword_2845F0;
  if (!qword_2845F0)
  {
    result = swift_getWitnessTable(byte_1F468C, &type metadata for ReadingGoalReachedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2845F0);
  }

  return result;
}

unint64_t sub_BEC50()
{
  result = qword_2845F8;
  if (!qword_2845F8)
  {
    result = swift_getWitnessTable(asc_1F46B4, &type metadata for ReadingGoalReachedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2845F8);
  }

  return result;
}

uint64_t sub_BECA4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000215B20;
  if (a1 == 0xD000000000000015 && 0x8000000000215B20 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000215B40;
    if (a1 == 0xD000000000000016 && 0x8000000000215B40 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

BookAnalytics::DailyReadingGoalStatus_optional __swiftcall DailyReadingGoalStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260670;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 4;
  if (v5 < 4)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t DailyReadingGoalStatus.rawValue.getter()
{
  v1 = 16718;
  v2 = 0x6572676F72506E69;
  if (*v0 != 2)
  {
    v2 = 0x7472617453746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x64656863616572;
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

unint64_t sub_BEEBC()
{
  result = qword_284600;
  if (!qword_284600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DailyReadingGoalStatus, &type metadata for DailyReadingGoalStatus, v0, v1);
    atomic_store(result, &qword_284600);
  }

  return result;
}

Swift::Int sub_BEF10()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE200000000000000;
  v3 = 0xEA00000000007373;
  if (v1 != 2)
  {
    v3 = 0xEA00000000006465;
  }

  if (v1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_BEFD4(uint64_t a1)
{
  v2 = 0xE200000000000000;
  v3 = 0xEA00000000007373;
  if (*v1 != 2)
  {
    v3 = 0xEA00000000006465;
  }

  if (*v1)
  {
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_BF084(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE200000000000000;
  v4 = 0xEA00000000007373;
  if (v2 != 2)
  {
    v4 = 0xEA00000000006465;
  }

  if (v2)
  {
    v3 = 0xE700000000000000;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_BF150(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 16718;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x7472617453746F6ELL;
    v4 = 0xEA00000000006465;
  }

  if (*v1)
  {
    v3 = 0x64656863616572;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_BF290()
{
  result = qword_284608;
  if (!qword_284608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DailyReadingGoalStatus, &type metadata for DailyReadingGoalStatus, v0, v1);
    atomic_store(result, &qword_284608);
  }

  return result;
}

BAEventReporter *sub_BF2E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E1640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 isOwned])
  {
    if ([a1 isStoreAsset])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v54 = v10;
  }

  else
  {
    v54 = 0;
  }

  result = [a1 assetID];
  if (!result)
  {
    goto LABEL_33;
  }

  v12 = result;
  v13 = sub_1E1780();
  v15 = v14;

  v16 = [a1 assetType];
  sub_4C270();
  *v9 = sub_1E19E0();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v17 = sub_1E1660();
  result = (*(v7 + 8))(v9, v6);
  if ((v17 & 1) == 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v52[0] = v16;
  v52[1] = a2;
  v53 = a3;
  sub_3D68(&qword_281B70, &qword_1E9980);
  sub_1E1330();
  v25 = v56[0];
  result = v56[0] + 2;
  v26 = -v56[0][1].super.isa;
  v27 = -1;
  while (1)
  {
    v28 = v26 + v27;
    if (v26 + v27 == -1)
    {
      break;
    }

    if (++v27 >= v25[1].super.isa)
    {
      __break(1u);
      goto LABEL_32;
    }

    dataProviders = result[2].dataProviders;
    sub_4C2BC(result, v56);
    v30 = v57;
    v31 = v58;
    sub_48B8(v56, v57);
    v32 = (*(v31 + 8))(v55, v13, v15, v30, v31);
    sub_4E48(v56, v33, v34, v35, v36, v37, v38, v39);
    result = dataProviders;
    if (v32)
    {
      v25, v18, v19, v20, v21, v22, v23, v24;
      v40 = [v32 intValue];

      goto LABEL_15;
    }
  }

  v25, v18, v19, v20, v21, v22, v23, v24;
  v40 = 0;
LABEL_15:
  v41 = v28 == -1;
  if (v52[0] >= 7uLL)
  {
    v42 = 0;
  }

  else
  {
    v42 = 0x2000503040100uLL >> (8 * LOBYTE(v52[0]));
  }

  v43._countAndFlagsBits = v13;
  v43._object = v15;
  v44 = BATracker.contentPrivateID(for:)(v43);
  if (v44.value._object)
  {
    countAndFlagsBits = v44.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v44.value._object)
  {
    object = v44.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  v47._countAndFlagsBits = v13;
  v47._object = v15;
  v48 = BATracker.contentUserID(for:)(v47);
  result = v48.value._countAndFlagsBits;
  v49 = v53;
  *v53 = v13;
  v49[1] = v15;
  if (v48.value._object)
  {
    v50 = v48.value._countAndFlagsBits;
  }

  else
  {
    v50 = 0;
  }

  if (v48.value._object)
  {
    v51 = v48.value._object;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  *(v49 + 16) = v42;
  v49[3] = countAndFlagsBits;
  v49[4] = object;
  v49[5] = v50;
  v49[6] = v51;
  *(v49 + 56) = v54;
  *(v49 + 57) = 4;
  *(v49 + 15) = v40;
  *(v49 + 64) = v41;
  *(v49 + 17) = 0;
  *(v49 + 72) = 1;
  *(v49 + 73) = 33751044;
  *(v49 + 77) = 2;
  v49[10] = 0;
  v49[11] = 0;
  return result;
}

uint64_t EventReporter.userEmbeddingData()(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_BF66C, 0, 0);
}

BAEventReporter *sub_BF66C()
{
  sub_3D68(&qword_281B70, &qword_1E9980);
  sub_1E1330();
  result = v0[7];
  v0[11] = result;
  isa = result[1].super.isa;
  v0[12] = isa;
  if (isa)
  {
    v0[13] = 0;
    if (result[1].super.isa)
    {
      sub_4C2BC(&result[2], (v0 + 2));
      v10 = v0[5];
      v11 = v0[6];
      sub_48B8(v0 + 2, v10);
      v16 = (*(v11 + 16) + **(v11 + 16));
      v12 = swift_task_alloc();
      v0[14] = v12;
      *v12 = v0;
      v12[1] = sub_BF848;
      v13 = v0[10];

      return v16(v0 + 8, v13, v10, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = v0[9];
    result, v1, v2, v3, v4, v5, v6, v7;
    *v14 = 0;
    v15 = v0[1];

    return v15();
  }

  return result;
}

uint64_t sub_BF848()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v10 = *(v2 + 88);
    sub_4E48((v2 + 16), v3, v4, v5, v6, v7, v8, v9);
    v10, v11, v12, v13, v14, v15, v16, v17;
    v18 = sub_BFB60;
  }

  else
  {
    sub_4E48((v2 + 16), v3, v4, v5, v6, v7, v8, v9);
    v18 = sub_BF978;
  }

  return _swift_task_switch(v18, 0, 0);
}

void sub_BF978(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = *(v8 + 64);
  if (v9)
  {
    v10 = *(v8 + 72);
    *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
    *v10 = v9;
LABEL_5:
    v13 = *(v8 + 8);

    v13();
    return;
  }

  v11 = *(v8 + 104) + 1;
  if (v11 == *(v8 + 96))
  {
    v12 = *(v8 + 72);
    *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
    *v12 = 0;
    goto LABEL_5;
  }

  *(v8 + 104) = v11;
  v14 = *(v8 + 88);
  if (v11 >= *(v14 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_4C2BC(v14 + 40 * v11 + 32, v8 + 16);
    v15 = *(v8 + 40);
    v16 = *(v8 + 48);
    sub_48B8((v8 + 16), v15);
    v19 = (*(v16 + 16) + **(v16 + 16));
    v17 = swift_task_alloc();
    *(v8 + 112) = v17;
    *v17 = v8;
    v17[1] = sub_BF848;
    v18 = *(v8 + 80);

    v19(v8 + 64, v18, v15, v16);
  }
}

id sub_BFB78()
{
  if (qword_27D050 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1360();
  sub_3B2C(v0, qword_2802D8);
  v1 = sub_1E1340();
  v2 = sub_1E1990();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Fallback tracker should only be computed on main thread for thread-safety", v3, 2u);
  }

  result = [objc_opt_self() _applicationKeyWindow];
  if (result)
  {
    v5 = result;
    v6 = [result rootViewController];

    if (v6)
    {
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7 && (v8 = [v7 ba_deepestVisibleChildViewControllerIncludePresented:1]) != 0)
      {
        v9 = v8;
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (v10)
        {
          v11 = v10;
          v12 = v9;
          v13 = [v11 ba_effectiveAnalyticsTracker];

          return v13;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

void sub_BFD68(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000000002156D0 == a2)
  {
    a2, 0x80000000002156D0, 0xD000000000000010, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_BFDFC(uint64_t a1)
{
  v2 = sub_C015C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BFE38(uint64_t a1)
{
  v2 = sub_C015C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScrollViewSettingData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_284670, &qword_1F48E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_C015C();
  sub_1E1E00();
  v10 = v7;
  sub_C01B0();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void ScrollViewSettingData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_284688, &qword_1F48E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_C015C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_C0204();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_C015C()
{
  result = qword_284678;
  if (!qword_284678)
  {
    result = swift_getWitnessTable(byte_1F4ABC, &type metadata for ScrollViewSettingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284678);
  }

  return result;
}

unint64_t sub_C01B0()
{
  result = qword_284680;
  if (!qword_284680)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewStatus, &type metadata for ScrollViewStatus, v0, v1);
    atomic_store(result, &qword_284680);
  }

  return result;
}

unint64_t sub_C0204()
{
  result = qword_284690;
  if (!qword_284690)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewStatus, &type metadata for ScrollViewStatus, v0, v1);
    atomic_store(result, &qword_284690);
  }

  return result;
}

unint64_t sub_C025C()
{
  result = qword_284698;
  if (!qword_284698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewSettingData, &type metadata for ScrollViewSettingData, v0, v1);
    atomic_store(result, &qword_284698);
  }

  return result;
}

unint64_t sub_C02B4()
{
  result = qword_2846A0;
  if (!qword_2846A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewSettingData, &type metadata for ScrollViewSettingData, v0, v1);
    atomic_store(result, &qword_2846A0);
  }

  return result;
}

unint64_t sub_C032C()
{
  result = qword_2846A8;
  if (!qword_2846A8)
  {
    result = swift_getWitnessTable(aJ, &type metadata for ScrollViewSettingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2846A8);
  }

  return result;
}

unint64_t sub_C0384()
{
  result = qword_2846B0;
  if (!qword_2846B0)
  {
    result = swift_getWitnessTable(byte_1F4A04, &type metadata for ScrollViewSettingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2846B0);
  }

  return result;
}

unint64_t sub_C03DC()
{
  result = qword_2846B8;
  if (!qword_2846B8)
  {
    result = swift_getWitnessTable(byte_1F4A2C, &type metadata for ScrollViewSettingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2846B8);
  }

  return result;
}

uint64_t GenreExposureEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GenreExposureEvent.genreData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GenreExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenreExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenreExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenreExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenreExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GenreExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t GenreExposureEvent.Model.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

uint64_t SeriesExposureEvent.Model.exposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v4 = v1[6];
  v8 = v1[5];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_17AA4(v7, &v6, &qword_27F500, &unk_210330);
}

uint64_t SeriesExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 192);
  v20 = *(v1 + 208);
  v21 = v2;
  v4 = *(v1 + 224);
  v22 = *(v1 + 240);
  v5 = *(v1 + 160);
  v7 = *(v1 + 128);
  v16 = *(v1 + 144);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 160);
  v9 = *(v1 + 192);
  v18 = *(v1 + 176);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 128);
  v15[0] = *(v1 + 112);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 240);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 256);
  *(a1 + 144) = *(v1 + 256);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_17AA4(v15, v14, &qword_27E4A0, &qword_1E8860);
}

uint64_t GenreExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.Model.init(genreData:exposureData:linkData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 8);
  *a6 = *a1;
  *(a6 + 8) = v9;
  v10 = *(a1 + 32);
  *(a6 + 16) = *(a1 + 16);
  *(a6 + 32) = v10;
  v11 = a2[1];
  *(a6 + 48) = *a2;
  *(a6 + 64) = v11;
  v12 = a2[3];
  *(a6 + 80) = a2[2];
  *(a6 + 96) = v12;
  v13 = *(a3 + 16);
  *(a6 + 112) = *a3;
  *(a6 + 128) = v13;
  v14 = *(a3 + 32);
  v15 = *(a3 + 48);
  v16 = *(a3 + 80);
  *(a6 + 176) = *(a3 + 64);
  *(a6 + 192) = v16;
  *(a6 + 144) = v14;
  *(a6 + 160) = v15;
  v17 = *(a3 + 96);
  v18 = *(a3 + 112);
  v19 = *(a3 + 128);
  *(a6 + 256) = *(a3 + 144);
  *(a6 + 224) = v18;
  *(a6 + 240) = v19;
  *(a6 + 208) = v17;
  v20 = type metadata accessor for GenreExposureEvent.Model(0);
  v21 = *(v20 + 28);
  v22 = sub_1E1150();
  (*(*(v22 - 8) + 32))(a6 + v21, a4, v22);
  v23 = *(v20 + 32);
  v24 = sub_1E11A0();
  v25 = *(*(v24 - 8) + 32);

  return v25(a6 + v23, a5, v24);
}

uint64_t sub_C10BC()
{
  v1 = *v0;
  v2 = 0x74614465726E6567;
  v3 = 0x617461446B6E696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657275736F707865;
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

uint64_t sub_C1158@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_C2C88(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_C1180(uint64_t a1)
{
  v2 = sub_C16EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C11BC(uint64_t a1)
{
  v2 = sub_C16EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenreExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2846F0, &qword_1F4B18);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v66 - v6;
  sub_48B8(a1, a1[3]);
  sub_C16EC();
  sub_1E1E00();
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[5];
  v98 = *v2;
  v99 = v8;
  v100 = v9;
  v101 = *(v2 + 3);
  v102 = v10;
  v97 = 0;
  sub_81F40();

  v11 = v7;

  v12 = v103;
  sub_1E1CF0();
  if (v12)
  {
    v20 = v101;
    v21 = v102;
    v99, v13, v14, v15, v16, v17, v18, v19;
    v20, v22, v23, v24, v25, v26, v27, v28;
    v21, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    v36 = v101;
    v103 = v11;
    v37 = v102;
    v99, v13, v14, v15, v16, v17, v18, v19;
    v36, v38, v39, v40, v41, v42, v43, v44;
    v37, v45, v46, v47, v48, v49, v50, v51;
    v52 = *(v2 + 4);
    v96[0] = *(v2 + 3);
    v96[1] = v52;
    v53 = *(v2 + 6);
    v55 = *(v2 + 3);
    v54 = *(v2 + 4);
    v96[2] = *(v2 + 5);
    v96[3] = v53;
    v92 = v55;
    v93 = v54;
    v56 = *(v2 + 6);
    v94 = *(v2 + 5);
    v95 = v56;
    v91 = 1;
    sub_17AA4(v96, v82, &qword_27F500, &unk_210330);
    sub_38C28();
    sub_1E1C80();
    v81[0] = v92;
    v81[1] = v93;
    v81[2] = v94;
    v81[3] = v95;
    sub_18E48(v81, &qword_27F500, &unk_210330);
    v57 = *(v2 + 14);
    v58 = *(v2 + 12);
    v87 = *(v2 + 13);
    v88 = v57;
    v59 = *(v2 + 14);
    v89 = *(v2 + 15);
    v60 = *(v2 + 10);
    v61 = *(v2 + 8);
    v83 = *(v2 + 9);
    v84 = v60;
    v62 = *(v2 + 10);
    v63 = *(v2 + 12);
    v85 = *(v2 + 11);
    v86 = v63;
    v64 = *(v2 + 8);
    v82[0] = *(v2 + 7);
    v82[1] = v64;
    v77 = v87;
    v78 = v59;
    v79 = *(v2 + 15);
    v73 = v83;
    v74 = v62;
    v75 = v85;
    v76 = v58;
    v90 = v2[32];
    v80 = v2[32];
    v71 = v82[0];
    v72 = v61;
    v70 = 2;
    sub_17AA4(v82, v68, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v68[6] = v77;
    v68[7] = v78;
    v68[8] = v79;
    v69 = v80;
    v68[2] = v73;
    v68[3] = v74;
    v68[4] = v75;
    v68[5] = v76;
    v68[0] = v71;
    v68[1] = v72;
    sub_18E48(v68, &qword_27E4A0, &qword_1E8860);
    type metadata accessor for GenreExposureEvent.Model(0);
    v67 = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v67 = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v11 = v103;
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v11, v4);
}

unint64_t sub_C16EC()
{
  result = qword_2846F8;
  if (!qword_2846F8)
  {
    result = swift_getWitnessTable(asc_1F4CFC, &type metadata for GenreExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2846F8);
  }

  return result;
}

void GenreExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = sub_1E11A0();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_3D68(&qword_284700, &qword_1F4B20);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = v39 - v7;
  v9 = type metadata accessor for GenreExposureEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_C16EC();
  v48 = v8;
  v12 = v66;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v46;
    v40 = v9;
    v66 = v4;
    LOBYTE(v62) = 0;
    sub_827D8();
    sub_1E1C20();
    v21 = *(&v51 + 1);
    *v11 = v51;
    *(v11 + 1) = v21;
    v22 = v53;
    *(v11 + 1) = v52;
    *(v11 + 2) = v22;
    v61 = 1;
    sub_393C4();
    sub_1E1BB0();
    v23 = v63;
    *(v11 + 3) = v62;
    *(v11 + 4) = v23;
    v24 = v65;
    *(v11 + 5) = v64;
    *(v11 + 6) = v24;
    v50 = 2;
    sub_18FA4();
    v39[1] = 0;
    sub_1E1BB0();
    v25 = v58;
    *(v11 + 13) = v57;
    *(v11 + 14) = v25;
    *(v11 + 15) = v59;
    *(v11 + 32) = v60;
    v26 = v54;
    *(v11 + 9) = v53;
    *(v11 + 10) = v26;
    v27 = v56;
    *(v11 + 11) = v55;
    *(v11 + 12) = v27;
    v28 = v52;
    *(v11 + 7) = v51;
    *(v11 + 8) = v28;
    v49 = 3;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v29 = v66;
    sub_1E1C20();
    (*(v45 + 32))(&v11[*(v40 + 28)], v6, v29);
    v49 = 4;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v30 = v44;
    v31 = v43;
    sub_1E1C20();
    (*(v20 + 8))(v48, v47);
    (*(v41 + 32))(&v11[*(v40 + 32)], v30, v31);
    sub_C1EB0(v11, v42);
    sub_4E48(a1, v32, v33, v34, v35, v36, v37, v38);
    sub_C1F14(v11);
  }
}

uint64_t sub_C1EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenreExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C1F14(uint64_t a1)
{
  v2 = type metadata accessor for GenreExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C2010@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_C21F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_C2414(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_C262C(uint64_t a1)
{
  sub_C27A0(319, &unk_281E50, sub_827D8, sub_81F40, &type metadata for GenreData);
  if (v1 <= 0x3F)
  {
    sub_C27A0(319, &unk_27F598, sub_393C4, sub_38C28, &type metadata for ExposureData);
    if (v2 <= 0x3F)
    {
      sub_C27A0(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          sub_5750(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C27A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_C2830(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_C2968(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_C2A8C(uint64_t a1)
{
  sub_19FE0(319, &unk_27F640, &type metadata for ExposureData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &unk_27E650, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        sub_1E11A0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_C2B84()
{
  result = qword_284848;
  if (!qword_284848)
  {
    result = swift_getWitnessTable(byte_1F4CD4, &type metadata for GenreExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284848);
  }

  return result;
}

unint64_t sub_C2BDC()
{
  result = qword_284850;
  if (!qword_284850)
  {
    result = swift_getWitnessTable(asc_1F4C44, &type metadata for GenreExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284850);
  }

  return result;
}

unint64_t sub_C2C34()
{
  result = qword_284858;
  if (!qword_284858)
  {
    result = swift_getWitnessTable(asc_1F4C6C, &type metadata for GenreExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284858);
  }

  return result;
}

uint64_t sub_C2C88(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x74614465726E6567 && a2 == 0xE900000000000061;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEC00000061746144;
    if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }
}

void __swiftcall ReadingSessionData.init(percentCompletionStart:percentCompletionEnd:isFreeSample:deviceOrientation:)(BookAnalytics::ReadingSessionData *__return_ptr retstr, Swift::Float_optional *percentCompletionStart, Swift::Float_optional *percentCompletionEnd, Swift::Bool isFreeSample, BookAnalytics::DeviceOrientation_optional deviceOrientation)
{
  v5 = *deviceOrientation.value;
  LODWORD(retstr->percentCompletionStart.value) = percentCompletionStart;
  retstr->percentCompletionStart.is_nil = BYTE4(percentCompletionStart) & 1;
  LODWORD(retstr->percentCompletionEnd.value) = percentCompletionEnd;
  retstr->percentCompletionEnd.is_nil = BYTE4(percentCompletionEnd) & 1;
  retstr->isFreeSample = isFreeSample;
  retstr->deviceOrientation.value = v5;
}

unint64_t sub_C2EE0()
{
  v1 = 0x6153656572467369;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000014;
  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_C2F68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_C392C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_C2F90(uint64_t a1)
{
  v2 = sub_C364C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C2FCC(uint64_t a1)
{
  v2 = sub_C364C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingSessionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_284860, &qword_1F4D50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = *(v1 + 4);
  v15 = *(v1 + 8);
  v8 = *(v1 + 12);
  v13 = *(v1 + 13);
  v14 = v8;
  HIDWORD(v12) = *(v1 + 14);
  sub_48B8(a1, a1[3]);
  sub_C364C();
  sub_1E1E00();
  v23 = 0;
  v20 = v7;
  v9 = v16;
  sub_1E1C70();
  if (!v9)
  {
    v10 = BYTE4(v12);
    v22 = 1;
    v17 = v14;
    sub_1E1C70();
    v21 = 2;
    sub_1E1CC0();
    v19 = v10;
    v18 = 3;
    sub_C36A0();
    sub_1E1C80();
  }

  return (*(v4 + 8))(v6, v3);
}

void ReadingSessionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_284878, &qword_1F4D58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_48B8(a1, a1[3]);
  sub_C364C();
  sub_1E1DF0();
  if (!v2)
  {
    v26 = 0;
    v16 = sub_1E1BA0();
    v25 = 1;
    v17 = sub_1E1BA0();
    v24 = 2;
    v21 = sub_1E1BF0();
    v22 = 3;
    sub_C36F4();
    sub_1E1BB0();
    v18 = v21 & 1;
    (*(v6 + 8))(v8, v5);
    v19 = v23;
    *a2 = v16;
    *(a2 + 4) = BYTE4(v16) & 1;
    *(a2 + 8) = v17;
    *(a2 + 12) = BYTE4(v17) & 1;
    *(a2 + 13) = v18;
    *(a2 + 14) = v19;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics18ReadingSessionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 13);
  v10 = *(a1 + 14);
  v11 = *(a2 + 4);
  v12 = *(a2 + 14);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    result = 0;
    if (!*(a2 + 12))
    {
      return result;
    }
  }

  else
  {
    if (*(a2 + 12))
    {
      return 0;
    }

    result = 0;
    if (v8 != *(a2 + 8))
    {
      return result;
    }
  }

  if ((v9 ^ *(a2 + 13)))
  {
    return result;
  }

  if (v10 == 3)
  {
    if (v12 == 3)
    {
      return 1;
    }
  }

  else if (v12 != 3)
  {
    v14 = 0x6E776F6E6B6E75;
    if (v10)
    {
      if (v10 == 1)
      {
        v15 = 0xE800000000000000;
        v16 = 0x7469617274726F70;
      }

      else
      {
        v16 = 0x70616373646E616CLL;
        v15 = 0xE900000000000065;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
    }

    if (*(a2 + 14))
    {
      if (v12 == 1)
      {
        v17 = 0xE800000000000000;
        v14 = 0x7469617274726F70;
      }

      else
      {
        v14 = 0x70616373646E616CLL;
        v17 = 0xE900000000000065;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    if (v16 == v14 && v15 == v17)
    {
      v15, a2, v14, a4, a5, a6, a7, a8;
      v17, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      v25 = sub_1E1D30();
      v15, v26, v27, v28, v29, v30, v31, v32;
      v17, v33, v34, v35, v36, v37, v38, v39;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

unint64_t sub_C364C()
{
  result = qword_284868;
  if (!qword_284868)
  {
    result = swift_getWitnessTable(aA_9, &type metadata for ReadingSessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284868);
  }

  return result;
}

unint64_t sub_C36A0()
{
  result = qword_284870;
  if (!qword_284870)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceOrientation, &type metadata for DeviceOrientation, v0, v1);
    atomic_store(result, &qword_284870);
  }

  return result;
}

unint64_t sub_C36F4()
{
  result = qword_284880;
  if (!qword_284880)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceOrientation, &type metadata for DeviceOrientation, v0, v1);
    atomic_store(result, &qword_284880);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ReadingSessionData(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ReadingSessionData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 15))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 13);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingSessionData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 15) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 15) = 0;
    }

    if (a2)
    {
      *(result + 13) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_C3828()
{
  result = qword_284888;
  if (!qword_284888)
  {
    result = swift_getWitnessTable(aY_8, &type metadata for ReadingSessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284888);
  }

  return result;
}

unint64_t sub_C3880()
{
  result = qword_284890;
  if (!qword_284890)
  {
    result = swift_getWitnessTable(byte_1F4E80, &type metadata for ReadingSessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284890);
  }

  return result;
}

unint64_t sub_C38D8()
{
  result = qword_284898;
  if (!qword_284898)
  {
    result = swift_getWitnessTable(byte_1F4EA8, &type metadata for ReadingSessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284898);
  }

  return result;
}

uint64_t sub_C392C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002155B0;
  v11 = a1 == 0xD000000000000016 && 0x80000000002155B0 == a2;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x80000000002155E0;
    if (a1 == 0xD000000000000014 && 0x80000000002155E0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0xEC000000656C706DLL;
      if (a1 == 0x6153656572467369 && a2 == 0xEC000000656C706DLL || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000000215610 == a2)
      {
        a2, 0x8000000000215610, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v15 = sub_1E1D30();
        a2, v16, v17, v18, v19, v20, v21, v22;
        if (v15)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t CollectionAddEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionAddEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionAddEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionAddEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionAddEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for CollectionAddEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t CollectionAddEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionAddEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionAddEvent.Model.init(singleCollectionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  v7 = *(type metadata accessor for CollectionAddEvent.Model(0) + 20);
  v8 = sub_1E1150();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_C3EDC(uint64_t a1)
{
  v2 = sub_C412C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C3F18(uint64_t a1)
{
  v2 = sub_C412C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionAddEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2848D0, &qword_1F4F90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  sub_48B8(a1, a1[3]);
  sub_C412C();
  sub_1E1E00();
  v9 = v3[1];
  v10 = *(v3 + 4);
  v20 = *v3;
  v21 = v9;
  v22 = v10;
  v19[7] = 0;
  sub_12578();

  sub_1E1CF0();
  v21, v11, v12, v13, v14, v15, v16, v17;
  if (!v2)
  {
    type metadata accessor for CollectionAddEvent.Model(0);
    LOBYTE(v20) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_C412C()
{
  result = qword_2848D8;
  if (!qword_2848D8)
  {
    result = swift_getWitnessTable(asc_1F514C, &type metadata for CollectionAddEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2848D8);
  }

  return result;
}

void CollectionAddEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = sub_1E1150();
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3D68(&qword_2848E0, &qword_1F4F98);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = &v31 - v6;
  v8 = type metadata accessor for CollectionAddEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_C412C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v32 = v8;
    v18 = v10;
    v20 = v35;
    v19 = v36;
    v41 = 0;
    sub_12520();
    v21 = v37;
    sub_1E1C20();
    v22 = v39;
    v23 = v40;
    *v18 = v38;
    *(v18 + 8) = v22;
    *(v18 + 16) = v23;
    LOBYTE(v38) = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v7, v21);
    (*(v33 + 32))(v18 + *(v32 + 20), v5, v19);
    sub_C4498(v18, v34);
    sub_4E48(a1, v24, v25, v26, v27, v28, v29, v30);
    sub_C44FC(v18);
  }
}

uint64_t sub_C4498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionAddEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C44FC(uint64_t a1)
{
  v2 = type metadata accessor for CollectionAddEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281010, &qword_1EC770);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_C4728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281010, &qword_1EC770);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_C4850(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C4910(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_C49C8()
{
  result = qword_284A08;
  if (!qword_284A08)
  {
    result = swift_getWitnessTable(aE_5, &type metadata for CollectionAddEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284A08);
  }

  return result;
}

unint64_t sub_C4A20()
{
  result = qword_284A10;
  if (!qword_284A10)
  {
    result = swift_getWitnessTable(byte_1F5094, &type metadata for CollectionAddEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284A10);
  }

  return result;
}

unint64_t sub_C4A78()
{
  result = qword_284A18;
  if (!qword_284A18)
  {
    result = swift_getWitnessTable(aU_8, &type metadata for CollectionAddEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284A18);
  }

  return result;
}

BookAnalytics::PageTurnType_optional __swiftcall PageTurnType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2606F0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t PageTurnType.rawValue.getter()
{
  v1 = 1819440483;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564696C73;
  }
}

uint64_t _s13BookAnalytics19PageTurnFeatureDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 1819440483;
  if (v8 != 1)
  {
    v9 = 1701736302;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6564696C73;
  }

  if (v8)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = 1819440483;
  if (*a2 != 1)
  {
    v12 = 1701736302;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x6564696C73;
  }

  if (*a2)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
  }

  v11, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

unint64_t sub_C4C54()
{
  result = qword_284A20;
  if (!qword_284A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PageTurnType, &type metadata for PageTurnType, v0, v1);
    atomic_store(result, &qword_284A20);
  }

  return result;
}

Swift::Int sub_C4CA8()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_C4D38(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_C4DB4(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_C4E4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 1819440483;
  if (v2 != 1)
  {
    v4 = 1701736302;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6564696C73;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_C4F58()
{
  result = qword_284A28;
  if (!qword_284A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PageTurnType, &type metadata for PageTurnType, v0, v1);
    atomic_store(result, &qword_284A28);
  }

  return result;
}

uint64_t WantListAddEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 28);
  v4 = sub_3D68(&qword_284A60, &qword_2061E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 28);
  v4 = sub_3D68(&qword_284A60, &qword_2061E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 32);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 32);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 36);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 36);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WantListAddEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_284A60, &qword_2061E0);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t GiftEvent.Model.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v11 = *(v1 + 168);
  v5 = *(v1 + 200);
  v12 = *(v1 + 184);
  v4 = v12;
  v13 = v5;
  v14 = *(v1 + 216);
  v6 = v14;
  v15 = v2;
  v7 = *(v1 + 264);
  v16 = v3;
  v17[0] = v7;
  *(v17 + 14) = *(v1 + 278);
  v8 = *(v17 + 14);
  *a1 = v11;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v7;
  *(a1 + 110) = v8;
  return sub_17AA4(&v11, v10, &qword_27FFF8, &qword_1F06D0);
}

uint64_t WantListAddEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[21];
  v10 = v1[20];
  v11 = v2;
  v4 = v1[23];
  v12 = v1[22];
  v3 = v12;
  v13 = v4;
  v6 = v1[19];
  v9[0] = v1[18];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_17AA4(v9, &v8, &qword_284A68, &qword_1F52B0);
}

uint64_t WantListAddEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 400);
  *a1 = *(v1 + 384);
  *(a1 + 16) = v2;
}

uint64_t WantListAddEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[51];
  v3 = v1[52];
  v4 = v1[53];
  v5 = v1[54];
  v6 = v1[55];
  v7 = v1[56];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t WantListAddEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent.Model(0) + 44);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.Model.init(contentData:contentStoreData:contentExposureData:notificationData:upSellData:seriesData:suggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *(a5 + 16);
  v12 = *a7;
  v13 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v13;
  v14 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v14;
  v15 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v15;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  *(a9 + 157) = *(a2 + 61);
  *(a9 + 128) = v18;
  *(a9 + 144) = v19;
  *(a9 + 96) = v16;
  *(a9 + 112) = v17;
  v20 = *(a3 + 16);
  *(a9 + 168) = *a3;
  *(a9 + 184) = v20;
  v21 = *(a3 + 48);
  *(a9 + 200) = *(a3 + 32);
  *(a9 + 278) = *(a3 + 110);
  v22 = *(a3 + 80);
  *(a9 + 264) = *(a3 + 96);
  v23 = *(a3 + 64);
  *(a9 + 248) = v22;
  *(a9 + 232) = v23;
  *(a9 + 216) = v21;
  v24 = a4[5];
  *(a9 + 352) = a4[4];
  *(a9 + 368) = v24;
  v25 = a4[3];
  *(a9 + 320) = a4[2];
  *(a9 + 336) = v25;
  v26 = a4[1];
  *(a9 + 288) = *a4;
  *(a9 + 304) = v26;
  *(a9 + 384) = *a5;
  *(a9 + 400) = v11;
  v27 = a6[1];
  *(a9 + 408) = *a6;
  *(a9 + 424) = v27;
  *(a9 + 440) = a6[2];
  *(a9 + 456) = v12;
  v28 = *(type metadata accessor for WantListAddEvent.Model(0) + 44);
  v29 = sub_1E1150();
  v30 = *(*(v29 - 8) + 32);

  return v30(a9 + v28, a8, v29);
}

unint64_t sub_C5FA0()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6974736567677573;
  if (v1 != 6)
  {
    v3 = 0x746144746E657665;
  }

  v4 = 0x61446C6C65537075;
  if (v1 != 4)
  {
    v4 = 0x6144736569726573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_C60CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_C8184(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_C60F4(uint64_t a1)
{
  v2 = sub_C6820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C6130(uint64_t a1)
{
  v2 = sub_C6820();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WantListAddEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_284A70, &qword_1F52B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  sub_48B8(a1, a1[3]);
  sub_C6820();
  sub_1E1E00();
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v102 = *(v3 + 32);
  v103 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v104 = *(v3 + 64);
  v105 = v12;
  v13 = *(v3 + 16);
  v101[0] = *v3;
  v101[1] = v13;
  v97 = v102;
  v98 = v11;
  v14 = *(v3 + 80);
  v99 = v104;
  v100 = v14;
  v95 = v101[0];
  v96 = v10;
  v94 = 0;
  sub_13A5C(v101, &v78);
  sub_143D0();
  sub_1E1CF0();
  if (v2)
  {
    v80 = v97;
    v81 = v98;
    v82 = v99;
    v83 = v100;
    v78 = v95;
    v79 = v96;
    sub_14424(&v78);
  }

  else
  {
    v90[2] = v97;
    v90[3] = v98;
    v90[4] = v99;
    v90[5] = v100;
    v90[0] = v95;
    v90[1] = v96;
    sub_14424(v90);
    v15 = *(v3 + 112);
    v16 = *(v3 + 144);
    v92 = *(v3 + 128);
    *v93 = v16;
    v17 = *(v3 + 112);
    v91[0] = *(v3 + 96);
    v91[1] = v17;
    v18 = *(v3 + 144);
    v88 = v92;
    v89[0] = v18;
    *&v93[13] = *(v3 + 157);
    *(v89 + 13) = *(v3 + 157);
    v86 = v91[0];
    v87 = v15;
    v85 = 1;
    sub_17AA4(v91, &v78, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v76[2] = v88;
    v77[0] = v89[0];
    *(v77 + 13) = *(v89 + 13);
    v76[0] = v86;
    v76[1] = v87;
    sub_18E48(v76, &qword_27FFF0, &unk_1E9C00);
    v19 = *(v3 + 248);
    v82 = *(v3 + 232);
    v83 = v19;
    *v84 = *(v3 + 264);
    *&v84[14] = *(v3 + 278);
    v20 = *(v3 + 184);
    v78 = *(v3 + 168);
    v79 = v20;
    v21 = *(v3 + 216);
    v80 = *(v3 + 200);
    v81 = v21;
    v22 = *(v3 + 248);
    v73 = *(v3 + 232);
    v74 = v22;
    v75[0] = *(v3 + 264);
    *(v75 + 14) = *(v3 + 278);
    v23 = *(v3 + 184);
    v69 = *(v3 + 168);
    v70 = v23;
    v24 = *(v3 + 216);
    v71 = *(v3 + 200);
    v72 = v24;
    v68 = 2;
    sub_17AA4(&v78, v66, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v66[4] = v73;
    v66[5] = v74;
    *v67 = v75[0];
    *&v67[14] = *(v75 + 14);
    v66[0] = v69;
    v66[1] = v70;
    v66[2] = v71;
    v66[3] = v72;
    sub_18E48(v66, &qword_27FFF8, &qword_1F06D0);
    v25 = *(v3 + 336);
    v26 = *(v3 + 304);
    v62 = *(v3 + 320);
    v63 = v25;
    v27 = *(v3 + 336);
    v28 = *(v3 + 368);
    v64 = *(v3 + 352);
    v65 = v28;
    v29 = *(v3 + 304);
    v61[0] = *(v3 + 288);
    v61[1] = v29;
    v57 = v62;
    v58 = v27;
    v30 = *(v3 + 368);
    v59 = v64;
    v60 = v30;
    v55 = v61[0];
    v56 = v26;
    v54 = 3;
    sub_17AA4(v61, v53, &qword_284A68, &qword_1F52B0);
    sub_6EA1C();
    sub_1E1C80();
    v53[2] = v57;
    v53[3] = v58;
    v53[4] = v59;
    v53[5] = v60;
    v53[0] = v55;
    v53[1] = v56;
    sub_18E48(v53, &qword_284A68, &qword_1F52B0);
    v31 = *(v3 + 400);
    v47 = *(v3 + 384);
    v48 = v31;
    v52 = 4;
    sub_28450();

    sub_1E1C80();
    v48, v32, v33, v34, v35, v36, v37, v38;
    v39 = *(v3 + 416);
    v40 = *(v3 + 424);
    v41 = *(v3 + 432);
    v42 = *(v3 + 440);
    v43 = *(v3 + 448);
    *&v47 = *(v3 + 408);
    *(&v47 + 1) = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    v51 = v43;
    v52 = 5;
    sub_13BDC(v47, v39, v40, v41, v42, v43);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v47, *(&v47 + 1), v48, v49, v50, v51, v44, v45);
    LOBYTE(v47) = *(v3 + 456);
    v52 = 6;
    sub_284F8();
    sub_1E1C80();
    type metadata accessor for WantListAddEvent.Model(0);
    LOBYTE(v47) = 7;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_C6820()
{
  result = qword_284A78;
  if (!qword_284A78)
  {
    result = swift_getWitnessTable(byte_1F54BC, &type metadata for WantListAddEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284A78);
  }

  return result;
}

void WantListAddEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1E1150();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_3D68(&qword_284A80, &qword_1F52C0);
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v42 - v6;
  v8 = type metadata accessor for WantListAddEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v81 = a1;
  sub_48B8(a1, v11);
  sub_C6820();
  v47 = v7;
  v12 = v49;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v81, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v43 = v8;
    v49 = v5;
    v20 = v46;
    v67 = 0;
    sub_14CB8();
    sub_1E1C20();
    v21 = v71;
    *(v10 + 2) = v70;
    *(v10 + 3) = v21;
    v22 = v73;
    *(v10 + 4) = v72;
    *(v10 + 5) = v22;
    v23 = v69;
    *v10 = v68;
    *(v10 + 1) = v23;
    v62 = 1;
    sub_4FB64();
    sub_1E1BB0();
    v24 = *v66;
    *(v10 + 8) = v65;
    *(v10 + 9) = v24;
    *(v10 + 157) = *&v66[13];
    v25 = v64;
    *(v10 + 6) = v63;
    *(v10 + 7) = v25;
    v61 = 2;
    sub_4FBB8();
    sub_1E1BB0();
    v26 = v79;
    *(v10 + 232) = v78;
    *(v10 + 248) = v26;
    v27 = v75;
    *(v10 + 168) = v74;
    *(v10 + 184) = v27;
    v28 = v77;
    *(v10 + 200) = v76;
    *(v10 + 216) = v28;
    *(v10 + 264) = v80[0];
    *(v10 + 278) = *(v80 + 14);
    v54 = 3;
    sub_6E9C4();
    v29 = v48;
    sub_1E1BB0();
    v30 = v58;
    *(v10 + 20) = v57;
    *(v10 + 21) = v30;
    v31 = v60;
    *(v10 + 22) = v59;
    *(v10 + 23) = v31;
    v32 = v56;
    *(v10 + 18) = v55;
    *(v10 + 19) = v32;
    v53 = 4;
    sub_28EF4();
    sub_1E1BB0();
    v33 = v51;
    *(v10 + 24) = v50;
    *(v10 + 50) = v33;
    v53 = 5;
    sub_DAD8();
    sub_1E1BB0();
    v34 = v51;
    *(v10 + 408) = v50;
    *(v10 + 424) = v34;
    *(v10 + 440) = v52;
    v53 = 6;
    sub_28F9C();
    sub_1E1BB0();
    v10[456] = v50;
    LOBYTE(v50) = 7;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v47, v29);
    (*(v44 + 32))(&v10[*(v43 + 44)], v49, v3);
    sub_C7018(v10, v45);
    sub_4E48(v81, v35, v36, v37, v38, v39, v40, v41);
    sub_C707C(v10);
  }
}

uint64_t sub_C7018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WantListAddEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C707C(uint64_t a1)
{
  v2 = type metadata accessor for WantListAddEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C7178@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_284A60, &qword_2061E0);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v16 - 8) + 104))(a2 + v15, v7, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v18 - 8) + 104))(a2 + v17, v7, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

uint64_t sub_C7440(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  v14 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  v15 = sub_3D68(&qword_284A60, &qword_2061E0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  v17 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[11];

  return v21(v22, a2, v20);
}

uint64_t sub_C775C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  v16 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  v17 = sub_3D68(&qword_284A60, &qword_2061E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + a4[11];

  return v23(v24, a2, a2, v22);
}

void sub_C7A70(uint64_t a1)
{
  sub_C7D0C(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_C7D0C(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_C7D0C(319, &qword_2800E0, sub_4FBB8, sub_4F070, &type metadata for ContentExposureData);
      if (v3 <= 0x3F)
      {
        sub_C7D0C(319, &unk_284AF0, sub_6E9C4, sub_6EA1C, &type metadata for NotificationData);
        if (v4 <= 0x3F)
        {
          sub_C7D0C(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
          if (v5 <= 0x3F)
          {
            sub_C7D0C(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
            if (v6 <= 0x3F)
            {
              sub_C7D0C(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
              if (v7 <= 0x3F)
              {
                sub_5684(319);
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

void sub_C7D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_C7D9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C7E5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C7F00(uint64_t a1)
{
  sub_19FE0(319, &qword_2801C0, &type metadata for ContentStoreData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C8, &type metadata for ContentExposureData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &unk_284BA0, &type metadata for NotificationData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
          if (v5 <= 0x3F)
          {
            sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
            if (v6 <= 0x3F)
            {
              sub_1E1150();
              if (v7 <= 0x3F)
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

unint64_t sub_C8080()
{
  result = qword_284BE8;
  if (!qword_284BE8)
  {
    result = swift_getWitnessTable(asc_1F5494, &type metadata for WantListAddEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284BE8);
  }

  return result;
}

unint64_t sub_C80D8()
{
  result = qword_284BF0;
  if (!qword_284BF0)
  {
    result = swift_getWitnessTable(byte_1F5404, &type metadata for WantListAddEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284BF0);
  }

  return result;
}

unint64_t sub_C8130()
{
  result = qword_284BF8;
  if (!qword_284BF8)
  {
    result = swift_getWitnessTable(byte_1F542C, &type metadata for WantListAddEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284BF8);
  }

  return result;
}

uint64_t sub_C8184(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000213F30;
    if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x8000000000213F50;
      if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0x8000000000215B60;
        if (a1 == 0xD000000000000010 && 0x8000000000215B60 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else
        {
          v16 = 0xEE00617461446E6FLL;
          if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 6;
          }

          else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
          {
            0xE900000000000061, v16, a3, a4, a5, a6, a7, a8;
            return 7;
          }

          else
          {
            v17 = sub_1E1D30();
            a2, v18, v19, v20, v21, v22, v23, v24;
            if (v17)
            {
              return 7;
            }

            else
            {
              return 8;
            }
          }
        }
      }
    }
  }
}

BookAnalytics::MessageType_optional __swiftcall MessageType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260758;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 7;
  if (v5 < 7)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t MessageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7542656E694C6E69;
  v3 = 0x4279616C7265766FLL;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0x72656E6E6162;
  if (v1 != 3)
  {
    v4 = 0x7473616F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C62627562;
  if (v1 != 1)
  {
    v5 = 0x6142656E694C6E69;
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

unint64_t sub_C8598()
{
  result = qword_284C00;
  if (!qword_284C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageType, &type metadata for MessageType, v0, v1);
    atomic_store(result, &qword_284C00);
  }

  return result;
}

void sub_C85F8(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xEC000000656C6262;
  v4 = 0xED0000656C626275;
  if (v2 != 5)
  {
    v4 = 0xE700000000000000;
  }

  v5 = 0xE600000000000000;
  if (v2 != 3)
  {
    v5 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  if (v2 != 1)
  {
    v6 = 0xEC00000072656E6ELL;
  }

  if (*v1)
  {
    v3 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();

  v7, v8, v9, v10, v11, v12, v13, v14;
}

void sub_C872C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656C6262;
  v4 = 0x7542656E694C6E69;
  v5 = 0xED0000656C626275;
  v6 = 0x4279616C7265766FLL;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656E6E6162;
  if (v2 != 3)
  {
    v8 = 0x7473616F74;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656C62627562;
  if (v2 != 1)
  {
    v10 = 0x6142656E694C6E69;
    v9 = 0xEC00000072656E6ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_C88DC()
{
  result = qword_284C08;
  if (!qword_284C08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageType, &type metadata for MessageType, v0, v1);
    atomic_store(result, &qword_284C08);
  }

  return result;
}

void EventReporter.emitGoalStateEvent(using:readingGoalsData:booksGoalsData:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v6 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v6;
  *(v5 + 73) = *(a2 + 57);
  v7 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  v8 = *(a3 + 16);
  *(v5 + 96) = *a3;
  *(v5 + 112) = v8;
  *(v5 + 128) = *(a3 + 32);
  v9 = swift_allocObject();
  v9[1].super.isa = sub_C8D0C;
  *v9[1].dataProviders = v5;

  sub_1E10C0();
  v5, v10, v11, v12, v13, v14, v15, v16;

  v9, v17, v18, v19, v20, v21, v22, v23;
}

uint64_t sub_C8A18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2 != 3)
  {
    *&v29[24] = *(a2 + 3);
    v30 = *(a2 + 5);
    v31 = *(a2 + 7);
    v32 = *(a2 + 72);
    *&v29[8] = *(a2 + 1);
    *v29 = v4;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v5 = sub_1E0CB0();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E9970;
    (*(v6 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
    sub_C9598();
    sub_1E0C00();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  if ((*(a3 + 32) & 1) == 0)
  {
    v16 = *(a3 + 16);
    *v29 = *a3;
    *&v29[16] = v16;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v17 = sub_1E0CB0();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1E9970;
    (*(v18 + 104))(v20 + v19, enum case for DataEventTrait.onlyOnce(_:), v17);
    sub_C9544();
    sub_1E0C00();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  type metadata accessor for GoalStateEvent(0);
  sub_C94FC(&qword_284C40, type metadata accessor for GoalStateEvent, protocol conformance descriptor for GoalStateEvent);
  memset(v29, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v29);
}

void EventReporter.emitReadingGoalReachedEvent(using:dailyGoalsReachedData:yearlyGoalsReachedData:)(uint64_t a1, char *a2, char *a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *a3;
  v6 = *(a3 + 1);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = swift_allocObject();
  v8[1].super.isa = sub_C9344;
  *v8[1].dataProviders = v7;

  sub_1E10C0();
  v7, v9, v10, v11, v12, v13, v14, v15;

  v8, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_C8DF8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  LOBYTE(v27[0]) = a2;
  *(&v27[0] + 1) = a3;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_C9454();
  sub_1E0C00();
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E9970;
  v10(v18 + v7, v9, v5);
  sub_C94A8();
  sub_1E0C00();
  v18, v19, v20, v21, v22, v23, v24, v25;
  type metadata accessor for ReadingGoalReachedEvent(0);
  sub_C94FC(&qword_284C38, type metadata accessor for ReadingGoalReachedEvent, protocol conformance descriptor for ReadingGoalReachedEvent);
  memset(v27, 0, sizeof(v27));
  sub_1E0C10();
  return sub_4C1B8(v27);
}

void EventReporter.emitReadingGoalChangedEvent(using:durationData:yearlyData:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v19 = *a3;
  v20 = *a2;
  v3 = swift_allocObject();
  *(v3 + 16) = v20;
  *(v3 + 32) = v19;
  v4 = swift_allocObject();
  v4[1].super.isa = sub_C9368;
  *v4[1].dataProviders = v3;

  sub_1E10C0();
  v3, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_C9110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v27[0] = a2;
  *(&v27[0] + 1) = a3;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_C93AC();
  sub_1E0C00();
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E9970;
  v10(v18 + v7, v9, v5);
  sub_C9400();
  sub_1E0C00();
  v18, v19, v20, v21, v22, v23, v24, v25;
  type metadata accessor for ReadingGoalChangedEvent(0);
  sub_C94FC(&qword_284C20, type metadata accessor for ReadingGoalChangedEvent, protocol conformance descriptor for ReadingGoalChangedEvent);
  memset(v27, 0, sizeof(v27));
  sub_1E0C10();
  return sub_4C1B8(v27);
}

uint64_t sub_C9374(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

unint64_t sub_C93AC()
{
  result = qword_284C10;
  if (!qword_284C10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingGoalsDurationData, &type metadata for ReadingGoalsDurationData, v0, v1);
    atomic_store(result, &qword_284C10);
  }

  return result;
}

unint64_t sub_C9400()
{
  result = qword_284C18;
  if (!qword_284C18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingGoalYearlyData, &type metadata for ReadingGoalYearlyData, v0, v1);
    atomic_store(result, &qword_284C18);
  }

  return result;
}

unint64_t sub_C9454()
{
  result = qword_284C28;
  if (!qword_284C28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DailyGoalsReachedData, &type metadata for DailyGoalsReachedData, v0, v1);
    atomic_store(result, &qword_284C28);
  }

  return result;
}

unint64_t sub_C94A8()
{
  result = qword_284C30;
  if (!qword_284C30)
  {
    result = swift_getWitnessTable("i?\a", &type metadata for YearlyGoalsReachedData, v0, v1);
    atomic_store(result, &qword_284C30);
  }

  return result;
}

uint64_t sub_C94FC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_C9544()
{
  result = qword_284C48;
  if (!qword_284C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BooksGoalsData, &type metadata for BooksGoalsData, v0, v1);
    atomic_store(result, &qword_284C48);
  }

  return result;
}

unint64_t sub_C9598()
{
  result = qword_284C50;
  if (!qword_284C50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingGoalsData, &type metadata for ReadingGoalsData, v0, v1);
    atomic_store(result, &qword_284C50);
  }

  return result;
}

uint64_t static ContentSettingsData.data(bookmarkCount:noteCount:highlightCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = BARoundIntegerToSignificantFigures(a1, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = BARoundIntegerToSignificantFigures(a3, 2);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result <= 0x7FFFFFFF)
  {
    *a4 = v8;
    a4[1] = v9;
    a4[2] = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t GiftFailEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftFailEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftFailEvent.giftFailData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 28);
  v4 = sub_3D68(&qword_284C88, &qword_1F5630);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.giftFailData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 28);
  v4 = sub_3D68(&qword_284C88, &qword_1F5630);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftFailEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftFailEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GiftFailEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_284C88, &qword_1F5630);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t GiftFailEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.Model.init(contentData:contentStoreData:contentExposureData:giftFailData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v8;
  v9 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v9;
  v10 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v10;
  v11 = *(a2 + 48);
  *(a6 + 128) = *(a2 + 32);
  *(a6 + 144) = v11;
  v12 = *(a2 + 16);
  *(a6 + 96) = *a2;
  *(a6 + 112) = v12;
  v13 = a6 + 168;
  v14 = *(a3 + 80);
  *(a6 + 232) = *(a3 + 64);
  *(a6 + 248) = v14;
  *(v13 + 96) = *(a3 + 96);
  v15 = *(a3 + 16);
  *(a6 + 168) = *a3;
  *(a6 + 184) = v15;
  v16 = *(a3 + 48);
  *(a6 + 200) = *(a3 + 32);
  v17 = *a4;
  *(a6 + 157) = *(a2 + 61);
  *(v13 + 110) = *(a3 + 110);
  *(a6 + 216) = v16;
  *(a6 + 286) = v17;
  v18 = *(type metadata accessor for GiftFailEvent.Model(0) + 32);
  v19 = sub_1E1150();
  v20 = *(*(v19 - 8) + 32);

  return v20(a6 + v18, a5, v19);
}

unint64_t sub_CA068()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0xD000000000000013;
  v4 = 0x6C69614674666967;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_CA124@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_CB9E0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_CA14C(uint64_t a1)
{
  v2 = sub_CA6AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CA188(uint64_t a1)
{
  v2 = sub_CA6AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GiftFailEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_284C90, &qword_1F5638);
  v72 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  sub_48B8(a1, a1[3]);
  sub_CA6AC();
  v7 = v4;
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v68 = *(v2 + 32);
  v69 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v70 = *(v2 + 64);
  v71 = v11;
  v12 = *(v2 + 16);
  v67[0] = *v2;
  v67[1] = v12;
  v63 = v68;
  v64 = v10;
  v13 = *(v2 + 80);
  v65 = v70;
  v66 = v13;
  v61 = v67[0];
  v62 = v9;
  v60 = 0;
  sub_13A5C(v67, &v43);
  sub_143D0();
  v14 = v6;
  v15 = v28;
  sub_1E1CF0();
  if (v15)
  {
    v45 = v63;
    v46 = v64;
    v47 = v65;
    v48 = v66;
    v43 = v61;
    v44 = v62;
    sub_14424(&v43);
    return (*(v72 + 8))(v6, v7);
  }

  else
  {
    v17 = v72;
    v55[2] = v63;
    v55[3] = v64;
    v55[4] = v65;
    v55[5] = v66;
    v55[0] = v61;
    v55[1] = v62;
    sub_14424(v55);
    v18 = *(v2 + 128);
    v19 = *(v2 + 96);
    v57 = *(v2 + 112);
    v58 = v18;
    v20 = *(v2 + 128);
    *v59 = *(v2 + 144);
    v56 = *(v2 + 96);
    v21 = *(v2 + 144);
    v53 = v20;
    v54[0] = v21;
    *&v59[13] = *(v2 + 157);
    *(v54 + 13) = *(v2 + 157);
    v51 = v19;
    v52 = v57;
    v50 = 1;
    sub_17AA4(&v56, &v43, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v41[2] = v53;
    v42[0] = v54[0];
    *(v42 + 13) = *(v54 + 13);
    v41[0] = v51;
    v41[1] = v52;
    sub_18E48(v41, &qword_27FFF0, &unk_1E9C00);
    v22 = *(v2 + 248);
    v47 = *(v2 + 232);
    v48 = v22;
    *v49 = *(v2 + 264);
    *&v49[14] = *(v2 + 278);
    v23 = *(v2 + 184);
    v43 = *(v2 + 168);
    v44 = v23;
    v24 = *(v2 + 216);
    v45 = *(v2 + 200);
    v46 = v24;
    v25 = *(v2 + 248);
    v38 = *(v2 + 232);
    v39 = v25;
    v40[0] = *(v2 + 264);
    *(v40 + 14) = *(v2 + 278);
    v26 = *(v2 + 184);
    v34 = *(v2 + 168);
    v35 = v26;
    v27 = *(v2 + 216);
    v36 = *(v2 + 200);
    v37 = v27;
    v33 = 2;
    sub_17AA4(&v43, v31, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v31[4] = v38;
    v31[5] = v39;
    *v32 = v40[0];
    *&v32[14] = *(v40 + 14);
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v31[3] = v37;
    sub_18E48(v31, &qword_27FFF8, &qword_1F06D0);
    v30 = *(v2 + 286);
    v29 = 3;
    sub_CA700();
    sub_1E1CF0();
    type metadata accessor for GiftFailEvent.Model(0);
    v30 = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    return (*(v17 + 8))(v14, v7);
  }
}

unint64_t sub_CA6AC()
{
  result = qword_284C98;
  if (!qword_284C98)
  {
    result = swift_getWitnessTable(aE_6, &type metadata for GiftFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284C98);
  }

  return result;
}

unint64_t sub_CA700()
{
  result = qword_284CA0;
  if (!qword_284CA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GiftFailData, &type metadata for GiftFailData, v0, v1);
    atomic_store(result, &qword_284CA0);
  }

  return result;
}

void GiftFailEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = sub_1E1150();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D68(&qword_284CA8, &qword_1F5640);
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v6 = type metadata accessor for GiftFailEvent.Model(0);
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v58 = a1;
  sub_48B8(a1, v9);
  sub_CA6AC();
  v10 = v43;
  sub_1E1DF0();
  if (v10)
  {
    sub_4E48(v58, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v37 = v6;
    v43 = v4;
    v18 = v41;
    v56 = 0;
    sub_14CB8();
    v19 = v42;
    sub_1E1C20();
    v20 = v57[3];
    *(v8 + 2) = v57[2];
    *(v8 + 3) = v20;
    v21 = v57[5];
    *(v8 + 4) = v57[4];
    *(v8 + 5) = v21;
    v22 = v57[1];
    *v8 = v57[0];
    *(v8 + 1) = v22;
    v55 = 1;
    sub_4FB64();
    sub_1E1BB0();
    v23 = v54[0];
    *(v8 + 8) = v53[4];
    *(v8 + 9) = v23;
    *(v8 + 157) = *(v54 + 13);
    v24 = v53[3];
    *(v8 + 6) = v53[2];
    *(v8 + 7) = v24;
    v46 = 2;
    sub_4FBB8();
    sub_1E1BB0();
    v25 = v18;
    v26 = v52;
    *(v8 + 232) = v51;
    *(v8 + 248) = v26;
    v27 = v48;
    *(v8 + 168) = v47;
    *(v8 + 184) = v27;
    v28 = v50;
    *(v8 + 200) = v49;
    *(v8 + 216) = v28;
    *(v8 + 264) = v53[0];
    *(v8 + 278) = *(v53 + 14);
    v44 = 3;
    sub_CAC84();
    sub_1E1C20();
    v8[286] = v45;
    v45 = 4;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v29 = v40;
    sub_1E1C20();
    (*(v25 + 8))(0, v19);
    (*(v38 + 32))(&v8[*(v37 + 32)], v43, v29);
    sub_CACD8(v8, v39);
    sub_4E48(v58, v30, v31, v32, v33, v34, v35, v36);
    sub_CAD3C(v8);
  }
}

unint64_t sub_CAC84()
{
  result = qword_284CB0;
  if (!qword_284CB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GiftFailData, &type metadata for GiftFailData, v0, v1);
    atomic_store(result, &qword_284CB0);
  }

  return result;
}

uint64_t sub_CACD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GiftFailEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CAD3C(uint64_t a1)
{
  v2 = type metadata accessor for GiftFailEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CAE38@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_284C88, &qword_1F5630);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_CB01C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_284C88, &qword_1F5630);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_CB23C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_284C88, &qword_1F5630);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_CB454(uint64_t a1)
{
  sub_CB600(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_CB600(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_CB600(319, &qword_2800E0, sub_4FBB8, sub_4F070, &type metadata for ContentExposureData);
      if (v3 <= 0x3F)
      {
        sub_CB600(319, &unk_284D20, sub_CAC84, sub_CA700, &type metadata for GiftFailData);
        if (v4 <= 0x3F)
        {
          sub_5684(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_CB600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_CB690(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CB750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_CB7F4(uint64_t a1)
{
  sub_19FE0(319, &qword_2801C0, &type metadata for ContentStoreData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C8, &type metadata for ContentExposureData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_CB8DC()
{
  result = qword_284E00;
  if (!qword_284E00)
  {
    result = swift_getWitnessTable(asc_1F57EC, &type metadata for GiftFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284E00);
  }

  return result;
}

unint64_t sub_CB934()
{
  result = qword_284E08;
  if (!qword_284E08)
  {
    result = swift_getWitnessTable(byte_1F575C, &type metadata for GiftFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284E08);
  }

  return result;
}

unint64_t sub_CB98C()
{
  result = qword_284E10;
  if (!qword_284E10)
  {
    result = swift_getWitnessTable(byte_1F5784, &type metadata for GiftFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284E10);
  }

  return result;
}

uint64_t sub_CB9E0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000213F30;
    if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x8000000000213F50;
      if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0xEC00000061746144;
        if (a1 == 0x6C69614674666967 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
        {
          0xE900000000000061, v15, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v16 = sub_1E1D30();
          a2, v17, v18, v19, v20, v21, v22, v23;
          if (v16)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

BookAnalytics::AltType_optional __swiftcall AltType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260820;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t AltType.rawValue.getter()
{
  v1 = 0x65536E4965726F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65536E497478656ELL;
  }
}

uint64_t sub_CBC68(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0x65536E4965726F6DLL;
  v10 = 0xE700000000000000;
  if (v8 == 1)
  {
    v10 = 0xEC00000073656972;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x65536E497478656ELL;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xEC00000073656972;
  }

  v13 = 0x65536E4965726F6DLL;
  v14 = 0xE700000000000000;
  if (*a2 == 1)
  {
    v14 = 0xEC00000073656972;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x65536E497478656ELL;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xEC00000073656972;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_CBD6C()
{
  result = qword_284E18;
  if (!qword_284E18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AltType, &type metadata for AltType, v0, v1);
    atomic_store(result, &qword_284E18);
  }

  return result;
}

Swift::Int sub_CBDC0()
{
  v1 = 0xEC00000073656972;
  v2 = *v0;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  if (v2 == 1)
  {
    v3 = 0xEC00000073656972;
  }

  if (v2)
  {
    v1 = v3;
  }

  sub_1E17D0();
  v1, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_CBE68(uint64_t a1)
{
  v2 = 0xE700000000000000;
  if (*v1 == 1)
  {
    v2 = 0xEC00000073656972;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEC00000073656972;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_CBEFC(uint64_t a1)
{
  v2 = 0xEC00000073656972;
  v3 = *v1;
  sub_1E1DC0();
  v4 = 0xE700000000000000;
  if (v3 == 1)
  {
    v4 = 0xEC00000073656972;
  }

  if (v3)
  {
    v2 = v4;
  }

  sub_1E17D0();
  v2, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_CBFAC(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000073656972;
  v3 = *v1;
  v4 = 0x65536E4965726F6DLL;
  v5 = 0xE700000000000000;
  if (v3 == 1)
  {
    v5 = 0xEC00000073656972;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x65536E497478656ELL;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_CC0D0()
{
  result = qword_284E20;
  if (!qword_284E20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AltType, &type metadata for AltType, v0, v1);
    atomic_store(result, &qword_284E20);
  }

  return result;
}

uint64_t ToolTipEvent.toolTipData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284E58, &qword_1F5970);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ToolTipEvent.toolTipData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284E58, &qword_1F5970);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ToolTipEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolTipEvent(0) + 20);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolTipEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolTipEvent(0) + 20);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ToolTipEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolTipEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolTipEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolTipEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ToolTipEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284E58, &qword_1F5970);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ToolTipEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

void ToolTipEvent.Model.pageData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_178BC(v2, v3, v4, v5);
}

uint64_t ToolTipEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolTipEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolTipEvent.Model.init(toolTipData:pageData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  v8 = a2[1];
  *(a4 + 32) = *a2;
  *(a4 + 48) = v8;
  v9 = *(type metadata accessor for ToolTipEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

uint64_t sub_CC824()
{
  v1 = 0x6174614465676170;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x447069546C6F6F74;
  }
}

uint64_t sub_CC88C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_CDA94(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_CC8B4(uint64_t a1)
{
  v2 = sub_CCB70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CC8F0(uint64_t a1)
{
  v2 = sub_CCB70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolTipEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_284E60, &qword_1F5978);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_48B8(a1, a1[3]);
  sub_CCB70();
  sub_1E1E00();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v37 = *v3;
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v36 = 0;
  sub_CCBC4();

  sub_1E1CF0();
  v12 = v38;
  v40, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  if (!v2)
  {
    v27 = v3[5];
    v28 = v3[6];
    v29 = v3[7];
    v37 = v3[4];
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v36 = 1;
    sub_178BC(v37, v27, v28, v29);
    sub_18598();
    sub_1E1C80();
    sub_185EC(v37, v38, v39, v40, v30, v31, v32, v33);
    type metadata accessor for ToolTipEvent.Model(0);
    LOBYTE(v37) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_CCB70()
{
  result = qword_284E68;
  if (!qword_284E68)
  {
    result = swift_getWitnessTable(aA_10, &type metadata for ToolTipEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284E68);
  }

  return result;
}

unint64_t sub_CCBC4()
{
  result = qword_284E70;
  if (!qword_284E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolTipData, &type metadata for ToolTipData, v0, v1);
    atomic_store(result, &qword_284E70);
  }

  return result;
}

void ToolTipEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1E1150();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_284E78, &qword_1F5980);
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ToolTipEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v38 = a1;
  sub_48B8(a1, v13);
  sub_CCB70();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v38, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v36;
    v22 = v12;
    v33 = v6;
    v41 = 0;
    sub_CCFB0();
    v23 = v37;
    sub_1E1C20();
    v24 = v40;
    *v22 = v39;
    *(v22 + 1) = v24;
    v41 = 1;
    sub_18F50();
    sub_1E1BB0();
    v25 = v40;
    *(v22 + 2) = v39;
    *(v22 + 3) = v25;
    LOBYTE(v39) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v21 + 8))(v9, v23);
    (*(v34 + 32))(&v22[*(v10 + 24)], v33, v4);
    sub_CD004(v22, v35);
    sub_4E48(v38, v26, v27, v28, v29, v30, v31, v32);
    sub_CD068(v22);
  }
}

unint64_t sub_CCFB0()
{
  result = qword_284E80;
  if (!qword_284E80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolTipData, &type metadata for ToolTipData, v0, v1);
    atomic_store(result, &qword_284E80);
  }

  return result;
}

uint64_t sub_CD004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolTipEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CD068(uint64_t a1)
{
  v2 = type metadata accessor for ToolTipEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CD164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284E58, &qword_1F5970);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v4, v10);
}

uint64_t sub_CD2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_284E58, &qword_1F5970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_CD428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_284E58, &qword_1F5970);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_CD598(uint64_t a1)
{
  sub_CD6A4(319, &unk_284EF0, sub_CCFB0, sub_CCBC4, &type metadata for ToolTipData);
  if (v1 <= 0x3F)
  {
    sub_CD6A4(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_CD6A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_CD734(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CD7F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_CD898(uint64_t a1)
{
  sub_CD92C();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_CD92C()
{
  if (!qword_27E640)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E640);
    }
  }
}

unint64_t sub_CD990()
{
  result = qword_284FC0;
  if (!qword_284FC0)
  {
    result = swift_getWitnessTable(aY_9, &type metadata for ToolTipEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284FC0);
  }

  return result;
}

unint64_t sub_CD9E8()
{
  result = qword_284FC8;
  if (!qword_284FC8)
  {
    result = swift_getWitnessTable(byte_1F5A80, &type metadata for ToolTipEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284FC8);
  }

  return result;
}

unint64_t sub_CDA40()
{
  result = qword_284FD0;
  if (!qword_284FD0)
  {
    result = swift_getWitnessTable(byte_1F5AA8, &type metadata for ToolTipEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_284FD0);
  }

  return result;
}

uint64_t sub_CDA94(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x447069546C6F6F74 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v13 = sub_1E1D30();
    a2, v14, v15, v16, v17, v18, v19, v20;
    if (v13)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static SuggestionData.== infix(_:_:)()
{
  v0 = OdpSuggestionType.rawValue.getter();
  v2 = v1;
  v3 = OdpSuggestionType.rawValue.getter();
  v11 = v4;
  if (v0 == v3 && v2 == v4)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1D30();
  }

  v2, v4, v5, v6, v7, v8, v9, v10;
  v11, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

void sub_CDC70(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000215BF0 == a2)
  {
    a2, 0x8000000000215BF0, 0xD000000000000011, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_CDD04(uint64_t a1)
{
  v2 = sub_CE064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CDD40(uint64_t a1)
{
  v2 = sub_CE064();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SuggestionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_284FD8, &qword_1F5B88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_CE064();
  sub_1E1E00();
  v10 = v7;
  sub_CE0B8();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void SuggestionData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_284FF0, &qword_1F5B90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_CE064();
  sub_1E1DF0();
  if (!v2)
  {
    sub_CE10C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_CE064()
{
  result = qword_284FE0;
  if (!qword_284FE0)
  {
    result = swift_getWitnessTable(byte_1F5D60, &type metadata for SuggestionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_284FE0);
  }

  return result;
}

unint64_t sub_CE0B8()
{
  result = qword_284FE8;
  if (!qword_284FE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OdpSuggestionType, &type metadata for OdpSuggestionType, v0, v1);
    atomic_store(result, &qword_284FE8);
  }

  return result;
}

unint64_t sub_CE10C()
{
  result = qword_284FF8;
  if (!qword_284FF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OdpSuggestionType, &type metadata for OdpSuggestionType, v0, v1);
    atomic_store(result, &qword_284FF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OdpSuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OdpSuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_CE2CC()
{
  result = qword_285000;
  if (!qword_285000)
  {
    result = swift_getWitnessTable(a1y, &type metadata for SuggestionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285000);
  }

  return result;
}

unint64_t sub_CE324()
{
  result = qword_285008;
  if (!qword_285008)
  {
    result = swift_getWitnessTable(aYy, &type metadata for SuggestionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285008);
  }

  return result;
}

unint64_t sub_CE37C()
{
  result = qword_285010;
  if (!qword_285010)
  {
    result = swift_getWitnessTable(aAy, &type metadata for SuggestionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285010);
  }

  return result;
}

void EventReporter.emitPurchaseAttemptEvent(using:contentData:purchaseData:upSellData:)(uint64_t a1, objc_class *a2, void *a3, objc_class *a4)
{
  v7 = swift_allocObject();
  v7[1].super.isa = a2;
  *v7[1].dataProviders = a3;
  v7[2].super.isa = a4;
  v8 = swift_allocObject();
  v8[1].super.isa = sub_CE8AC;
  *v8[1].dataProviders = v7;
  v9 = a4;

  v10 = a2;
  v11 = a3;
  sub_1E10C0();
  v7, v12, v13, v14, v15, v16, v17, v18;

  v8, v19, v20, v21, v22, v23, v24, v25;
}

uint64_t sub_CE4B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_A3F08(&v66);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v64 = *(v6 + 104);
  v64(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v72[3] = v69;
  v72[4] = v70;
  v72[5] = v71;
  v72[0] = v66;
  v72[1] = v67;
  v72[2] = v68;
  sub_14424(v72);
  v17 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID + 8);
  v18 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);
  if (v18 >= 3)
  {
    *&v66 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);

    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v19 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID);
    v20 = *(a3 + OBJC_IVAR___BAPurchaseData_isPreorder);
    v21 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters);
    v22 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters + 8);
    *&v66 = v19;
    *(&v66 + 1) = v17;
    LOBYTE(v67) = v18;
    BYTE1(v67) = v20;
    *(&v67 + 1) = v21;
    *&v68 = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E9970;
    v64(v23 + v7, v9, v5);
    sub_D1234();

    sub_1E0C00();
    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = *(&v66 + 1);
    v68, v32, v33, v34, v35, v36, v37, v38;
    v31, v39, v40, v41, v42, v43, v44, v45;
    if (a4)
    {
      v46 = a4;
      sub_A7638(&v66);
      v65 = v67;
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1E9970;
      v64(v47 + v7, v9, v5);
      sub_92BEC();
      sub_1E0C00();

      v47, v48, v49, v50, v51, v52, v53, v54;
      v65, v55, v56, v57, v58, v59, v60, v61;
    }

    type metadata accessor for PurchaseAttemptEvent(0);
    sub_D1440(&qword_285038, type metadata accessor for PurchaseAttemptEvent, protocol conformance descriptor for PurchaseAttemptEvent);
    v66 = 0u;
    v67 = 0u;
    sub_1E0C10();
    return sub_18E48(&v66, &unk_281B50, &unk_1EDD70);
  }

  return result;
}

uint64_t EventReporter.emitPurchaseSuccessEvent(using:contentData:purchaseData:upSellData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_CEA0C, 0, 0);
}

uint64_t sub_CEA0C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_CEB08;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_CEB08()
{

  return _swift_task_switch(sub_D14B4, 0, 0);
}

void sub_CEC20(uint64_t a1, uint64_t a2, objc_class *a3, void *a4, objc_class *a5)
{
  v9 = sub_3D68(&qword_282650, &qword_1EFF18);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  (*(v10 + 16))(&v33 - v11, a1, v9);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  v14[1].super.isa = a3;
  *v14[1].dataProviders = a4;
  v14[2].super.isa = a5;
  (*(v10 + 32))(v14 + v13, v12, v9);
  v15 = swift_allocObject();
  v15[1].super.isa = sub_D13BC;
  *v15[1].dataProviders = v14;
  v16 = a5;

  v17 = a3;
  v18 = a4;
  sub_1E10C0();
  v14, v19, v20, v21, v22, v23, v24, v25;
  v15, v26, v27, v28, v29, v30, v31, v32;
}

uint64_t sub_CEDD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_A3F08(&v66);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v64 = *(v6 + 104);
  v64(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v72[3] = v69;
  v72[4] = v70;
  v72[5] = v71;
  v72[0] = v66;
  v72[1] = v67;
  v72[2] = v68;
  sub_14424(v72);
  v17 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID + 8);
  v18 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);
  if (v18 >= 3)
  {
    *&v66 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);

    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v19 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID);
    v20 = *(a3 + OBJC_IVAR___BAPurchaseData_isPreorder);
    v21 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters);
    v22 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters + 8);
    *&v66 = v19;
    *(&v66 + 1) = v17;
    LOBYTE(v67) = v18;
    BYTE1(v67) = v20;
    *(&v67 + 1) = v21;
    *&v68 = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E9970;
    v64(v23 + v7, v9, v5);
    sub_D1234();

    sub_1E0C00();
    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = *(&v66 + 1);
    v68, v32, v33, v34, v35, v36, v37, v38;
    v31, v39, v40, v41, v42, v43, v44, v45;
    if (a4)
    {
      v46 = a4;
      sub_A7638(&v66);
      v65 = v67;
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1E9970;
      v64(v47 + v7, v9, v5);
      sub_92BEC();
      sub_1E0C00();

      v47, v48, v49, v50, v51, v52, v53, v54;
      v65, v55, v56, v57, v58, v59, v60, v61;
    }

    type metadata accessor for PurchaseSuccessEvent(0);
    sub_D1440(&qword_285030, type metadata accessor for PurchaseSuccessEvent, "i9\a");
    v66 = 0u;
    v67 = 0u;
    sub_1E0C10();
    sub_18E48(&v66, &unk_281B50, &unk_1EDD70);
    sub_3D68(&qword_282650, &qword_1EFF18);
    return sub_1E18E0();
  }

  return result;
}

uint64_t sub_CF3A0(void *a1, void *a2, void *a3, void *a4, void *aBlock)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v13 = a3;

  return _swift_task_switch(sub_CF448, 0, 0);
}

uint64_t sub_CF448()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_CF544;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_CF544()
{

  return _swift_task_switch(sub_CF65C, 0, 0);
}

uint64_t sub_CF65C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t EventReporter.emitPurchaseFailEvent(using:contentData:purchaseData:upSellData:failData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_CF718, 0, 0);
}

uint64_t sub_CF718()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_CF824;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_CF824()
{

  return _swift_task_switch(sub_8E280, 0, 0);
}

void sub_CF93C(uint64_t a1, uint64_t a2, objc_class *a3, void *a4, objc_class *a5, void *a6)
{
  v36[1] = a2;
  v11 = sub_3D68(&qword_282650, &qword_1EFF18);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v36 - v13;
  (*(v12 + 16))(v36 - v13, a1, v11);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v16[1].super.isa = a3;
  *v16[1].dataProviders = a4;
  v16[2].super.isa = a5;
  *v16[2].dataProviders = a6;
  (*(v12 + 32))(v16 + v15, v14, v11);
  v17 = swift_allocObject();
  v17[1].super.isa = sub_D11B0;
  *v17[1].dataProviders = v16;
  v18 = a6;

  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1E10C0();
  v16, v22, v23, v24, v25, v26, v27, v28;
  v17, v29, v30, v31, v32, v33, v34, v35;
}

uint64_t sub_CFB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_A3F08(&v91);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v6 = sub_1E0CB0();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v87 = enum case for DataEventTrait.onlyOnce(_:);
  v86 = *(v7 + 104);
  v86(v9 + v8);
  sub_4C164();
  sub_1E0C00();
  v9, v10, v11, v12, v13, v14, v15, v16;
  v97[2] = v93;
  v97[3] = v94;
  v97[4] = v95;
  v97[5] = v96;
  v97[0] = v91;
  v97[1] = v92;
  sub_14424(v97);
  v17 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID + 8);
  v18 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);
  if (v18 >= 3)
  {
    *&v91 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);

    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v19 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID);
    v20 = *(a3 + OBJC_IVAR___BAPurchaseData_isPreorder);
    v21 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters);
    v22 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters + 8);
    *&v91 = v19;
    *(&v91 + 1) = v17;
    LOBYTE(v92) = v18;
    BYTE1(v92) = v20;
    *(&v92 + 1) = v21;
    *&v93 = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E9970;
    (v86)(v23 + v8, v87, v6);
    sub_D1234();

    sub_1E0C00();
    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = *(&v91 + 1);
    v93, v32, v33, v34, v35, v36, v37, v38;
    v31, v39, v40, v41, v42, v43, v44, v45;
    sub_A62C0(&v91);
    v89 = *(&v92 + 1);
    v90 = *(&v93 + 1);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1E9970;
    (v86)(v46 + v8, v87, v6);
    sub_D1288();
    sub_1E0C00();
    v46, v47, v48, v49, v50, v51, v52, v53;
    v89, v54, v55, v56, v57, v58, v59, v60;
    v90, v61, v62, v63, v64, v65, v66, v67;
    if (a5)
    {
      v68 = a5;
      sub_A7638(&v91);
      v88 = v92;
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1E9970;
      (v86)(v69 + v8, v87, v6);
      sub_92BEC();
      sub_1E0C00();

      v69, v70, v71, v72, v73, v74, v75, v76;
      v88, v77, v78, v79, v80, v81, v82, v83;
    }

    type metadata accessor for PurchaseFailEvent(0);
    sub_D1440(&qword_285028, type metadata accessor for PurchaseFailEvent, protocol conformance descriptor for PurchaseFailEvent);
    v91 = 0u;
    v92 = 0u;
    sub_1E0C10();
    sub_18E48(&v91, &unk_281B50, &unk_1EDD70);
    sub_3D68(&qword_282650, &qword_1EFF18);
    return sub_1E18E0();
  }

  return result;
}

uint64_t sub_D01A8(void *a1, void *a2, void *a3, void *a4, void *a5, void *aBlock)
{
  v6[5] = a4;
  v6[6] = a5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = _Block_copy(aBlock);
  v12 = a4;
  v13 = a5;
  v14 = a1;
  v15 = a2;
  v16 = a3;

  return _swift_task_switch(sub_D025C, 0, 0);
}

uint64_t sub_D025C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_D0368;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_D0368()
{

  return _swift_task_switch(sub_D0480, 0, 0);
}

uint64_t sub_D0480()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_D0530()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_D0598()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_7E674;

  return sub_D01A8(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_D0674(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_92C90;

  return v6();
}

uint64_t sub_D0760(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_7E674;

  return v7();
}

uint64_t sub_D0848(uint64_t a1, BAEventReporter *a2, uint64_t a3, uint64_t a4, BAEventReporter *a5)
{
  v9 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v9 - 8);
  v11 = v44 - v10;
  sub_D0B34(a3, v44 - v10);
  v12 = sub_1E1900();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_18E48(v11, &qword_287EC0, &qword_205170);
    if (a5[1].super.isa)
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

  sub_1E18F0();
  (*(v13 + 8))(v11, v12);
  if (!a5[1].super.isa)
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1E18D0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1E17A0();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v45[0] = 0;
      v45[1] = 0;
      v19 = v45;
      v45[2] = v14;
      v45[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v44[1] = 7;
    v44[2] = v19;
    v44[3] = v17 + 2;
    v21 = swift_task_create();
    v17, v22, v23, v24, v25, v26, v27, v28;
    sub_18E48(a3, &qword_287EC0, &qword_205170);
    a2, v29, v30, v31, v32, v33, v34, v35;
    a5, v36, v37, v38, v39, v40, v41, v42;
    return v21;
  }

LABEL_8:
  sub_18E48(a3, &qword_287EC0, &qword_205170);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v45[4] = 0;
    v45[5] = 0;
    v45[6] = v14;
    v45[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_D0B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_287EC0, &qword_205170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D0BA4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_D0C9C;

  return v6(a1);
}

uint64_t sub_D0C9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_D0D94(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_D0DCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_92C90;

  return sub_D0BA4(a1, v4);
}

uint64_t sub_D0E84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7E674;

  return sub_D0BA4(a1, v4);
}

uint64_t sub_D0F4C()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_D0FAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_92C90;

  return sub_CF3A0(v2, v3, v4, v5, v6);
}

uint64_t sub_D1080()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D10C8()
{
  v1 = sub_3D68(&qword_282650, &qword_1EFF18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_D11B0(uint64_t a1)
{
  sub_3D68(&qword_282650, &qword_1EFF18);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  return sub_CFB04(a1, v3, v4, v5, v6);
}

unint64_t sub_D1234()
{
  result = qword_285018;
  if (!qword_285018)
  {
    atomic_store(result, &qword_285018);
  }

  return result;
}

unint64_t sub_D1288()
{
  result = qword_285020;
  if (!qword_285020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseFailData, &type metadata for PurchaseFailData, v0, v1);
    atomic_store(result, &qword_285020);
  }

  return result;
}

uint64_t sub_D12DC()
{
  v1 = sub_3D68(&qword_282650, &qword_1EFF18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_D13BC(uint64_t a1)
{
  sub_3D68(&qword_282650, &qword_1EFF18);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  return sub_CEDD8(a1, v3, v4, v5);
}

uint64_t sub_D1440(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void __swiftcall CampaignData.init(campaignId:fCampaignToken:fAffiliateId:fItsCampaignToken:fItsCampaignGroup:)(BookAnalytics::CampaignData *__return_ptr retstr, Swift::String_optional campaignId, Swift::String_optional fCampaignToken, Swift::String_optional fAffiliateId, Swift::String_optional fItsCampaignToken, Swift::String_optional fItsCampaignGroup)
{
  retstr->campaignId = campaignId;
  retstr->fCampaignToken = fCampaignToken;
  retstr->fAffiliateId = fAffiliateId;
  retstr->fItsCampaignToken = fItsCampaignToken;
  retstr->fItsCampaignGroup = fItsCampaignGroup;
}

unint64_t sub_D14DC()
{
  v1 = 0x6E676961706D6163;
  v2 = 0x61696C6966664166;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x676961706D614366;
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

uint64_t sub_D1598@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_D2208(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_D15C0(uint64_t a1)
{
  v2 = sub_D1E94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D15FC(uint64_t a1)
{
  v2 = sub_D1E94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CampaignData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285040, &qword_1F5E18);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  sub_48B8(a1, a1[3]);
  sub_D1E94();
  sub_1E1E00();
  v18 = 0;
  v11 = v13[9];
  sub_1E1C50();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1E1C50();
  v16 = 2;
  sub_1E1C50();
  v15 = 3;
  sub_1E1C50();
  v14 = 4;
  sub_1E1C50();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CampaignData.init(from:)@<X0>(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_285050, &qword_1F5E20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_48B8(a1, a1[3]);
  sub_D1E94();
  sub_1E1DF0();
  if (v2)
  {
    v48 = v2;
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    v54 = 0uLL;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
  }

  else
  {
    LOBYTE(v54) = 0;
    *&v47 = sub_1E1B80();
    *(&v47 + 1) = v17;
    LOBYTE(v54) = 1;
    v18 = sub_1E1B80();
    v44 = a2;
    v46 = v18;
    v45 = v19;
    LOBYTE(v54) = 2;
    v20 = sub_1E1B80();
    v22 = v21;
    LOBYTE(v54) = 3;
    v23 = sub_1E1B80();
    v25 = v24;
    v63 = 4;
    v26 = sub_1E1B80();
    v48 = 0;
    v27 = v26;
    v28 = v8;
    v30 = v29;
    (*(v6 + 8))(v28, v5);
    v31 = v47;
    v49 = v47;
    v32 = v45;
    *&v50 = v46;
    *(&v50 + 1) = v45;
    *&v51 = v20;
    *(&v51 + 1) = v22;
    *&v52 = v23;
    *(&v52 + 1) = v25;
    *&v53 = v27;
    *(&v53 + 1) = v30;
    v33 = v52;
    v34 = v44;
    v44[2] = v51;
    v34[3] = v33;
    v34[4] = v53;
    v35 = v50;
    *v34 = v49;
    v34[1] = v35;
    sub_D1F18(&v49, &v54);
    sub_4E48(a1, v36, v37, v38, v39, v40, v41, v42);
    v54 = __PAIR128__(*(&v47 + 1), v31);
    v55 = v46;
    v56 = v32;
    v57 = v20;
    v58 = v22;
    v59 = v23;
    v60 = v25;
    v61 = v27;
    v62 = v30;
  }

  return sub_D1EE8(&v54);
}

uint64_t _s13BookAnalytics12CampaignDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_1E1D30();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_1E1D30();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_1E1D30();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_1E1D30();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_1E1D30() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_D1E94()
{
  result = qword_285048;
  if (!qword_285048)
  {
    result = swift_getWitnessTable(aQv, &type metadata for CampaignData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285048);
  }

  return result;
}

unint64_t sub_D1F54()
{
  result = qword_285058;
  if (!qword_285058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CampaignData, &type metadata for CampaignData, v0, v1);
    atomic_store(result, &qword_285058);
  }

  return result;
}

unint64_t sub_D1FAC()
{
  result = qword_285060;
  if (!qword_285060)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CampaignData, &type metadata for CampaignData, v0, v1);
    atomic_store(result, &qword_285060);
  }

  return result;
}

__n128 sub_D2000(uint64_t a1, uint64_t a2)
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

uint64_t sub_D201C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_D2078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_D2104()
{
  result = qword_285068;
  if (!qword_285068)
  {
    result = swift_getWitnessTable(aIv, &type metadata for CampaignData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285068);
  }

  return result;
}

unint64_t sub_D215C()
{
  result = qword_285070;
  if (!qword_285070)
  {
    result = swift_getWitnessTable(byte_1F5F70, &type metadata for CampaignData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285070);
  }

  return result;
}

unint64_t sub_D21B4()
{
  result = qword_285078;
  if (!qword_285078)
  {
    result = swift_getWitnessTable(byte_1F5F98, &type metadata for CampaignData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285078);
  }

  return result;
}

uint64_t sub_D2208(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6E676961706D6163 && a2 == 0xEA00000000006449;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE006E656B6F546ELL;
    if (a1 == 0x676961706D614366 && a2 == 0xEE006E656B6F546ELL || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEC00000064496574;
      if (a1 == 0x61696C6966664166 && a2 == 0xEC00000064496574 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x8000000000215E20;
        if (a1 == 0xD000000000000011 && 0x8000000000215E20 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0xD000000000000011 && 0x8000000000215E40 == a2)
        {
          a2, 0x8000000000215E40, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t PredictiveSearchSuggestionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PredictiveSearchSuggestionEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void sub_D25A4(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    a2, a2, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_D2634(uint64_t a1)
{
  v2 = sub_D2810();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D2670(uint64_t a1)
{
  v2 = sub_D2810();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PredictiveSearchSuggestionEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_2850B0, &qword_1F6078);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_D2810();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_D2810()
{
  result = qword_2850B8;
  if (!qword_2850B8)
  {
    result = swift_getWitnessTable(aT, &type metadata for PredictiveSearchSuggestionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2850B8);
  }

  return result;
}

void PredictiveSearchSuggestionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1E1150();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D68(&qword_2850C0, &qword_1F6080);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PredictiveSearchSuggestionEvent.Model(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_D2810();
  v12 = v25;
  sub_1E1DF0();
  if (!v12)
  {
    v20 = v23;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    (*(v20 + 32))(v11, v24, v3);
    sub_D2AF0(v11, v22);
  }

  sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_D2AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictiveSearchSuggestionEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D2BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_D2C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_D2D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_D2DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_D2E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_D2ED0()
{
  result = qword_2851E8;
  if (!qword_2851E8)
  {
    result = swift_getWitnessTable(aUt, &type metadata for PredictiveSearchSuggestionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2851E8);
  }

  return result;
}

unint64_t sub_D2F28()
{
  result = qword_2851F0;
  if (!qword_2851F0)
  {
    result = swift_getWitnessTable(byte_1F6184, &type metadata for PredictiveSearchSuggestionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2851F0);
  }

  return result;
}

unint64_t sub_D2F80()
{
  result = qword_2851F8;
  if (!qword_2851F8)
  {
    result = swift_getWitnessTable(byte_1F61AC, &type metadata for PredictiveSearchSuggestionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2851F8);
  }

  return result;
}

uint64_t ContentDetailsViewEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.maxScrollDepthData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 28);
  v4 = sub_3D68(&qword_285230, &qword_1F6298);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.maxScrollDepthData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 28);
  v4 = sub_3D68(&qword_285230, &qword_1F6298);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.altContentTypeExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.altContentTypeExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.prevAltContentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.prevAltContentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 40);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 40);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 44);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.flowcaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 44);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 48);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 48);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 52);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 52);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.onDevicePersonalizationPropertyData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 56);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.onDevicePersonalizationPropertyData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 56);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 60);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 60);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 64);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 64);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.dealsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 68);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.dealsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 68);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 72);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 72);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 76);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 76);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ContentDetailsViewEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_285230, &qword_1F6298);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = enum case for EventProperty.required<A>(_:);
  v17 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  v27 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  v29 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  v31 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  v33 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v33 - 8) + 104))(a1 + v32, v16, v33);
  v34 = v4[19];
  v35 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v16, v35);
}

uint64_t ContentDetailsViewEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_17AA4(v9, &v8, &qword_27FD08, &qword_1E94F0);
}

void ContentDetailsViewEvent.Model.maxScrollDepthData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 292);
  *a1 = *(v1 + 288);
  *(a1 + 4) = v2;
}

uint64_t ContentDetailsViewEvent.Model.altContentTypeExposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 312);
  v7[0] = *(v1 + 296);
  v7[1] = v2;
  v8[0] = *(v1 + 328);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 337);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_17AA4(v7, &v6, &qword_27FFE8, &qword_1FC3D0);
}

uint64_t ContentDetailsViewEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 472);
  v3 = *(v1 + 440);
  v20 = *(v1 + 456);
  v21 = v2;
  v4 = *(v1 + 472);
  v22 = *(v1 + 488);
  v5 = *(v1 + 408);
  v7 = *(v1 + 376);
  v16 = *(v1 + 392);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 408);
  v9 = *(v1 + 440);
  v18 = *(v1 + 424);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 376);
  v15[0] = *(v1 + 360);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 488);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 504);
  *(a1 + 144) = *(v1 + 504);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_275C4(v15, v14);
}

uint64_t ContentDetailsViewEvent.Model.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 560);
  v9 = *(v1 + 544);
  v10 = v2;
  v11 = *(v1 + 576);
  v3 = v11;
  v4 = *(v1 + 528);
  v8[0] = *(v1 + 512);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_282CC0, &qword_1F62B0);
}

void ContentDetailsViewEvent.Model.pageData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[73];
  v3 = v1[74];
  v4 = v1[75];
  v5 = v1[76];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_178BC(v2, v3, v4, v5);
}

uint64_t ContentDetailsViewEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 632);
  *a1 = *(v1 + 616);
  *(a1 + 16) = v2;
}

__n128 ContentDetailsViewEvent.Model.onDevicePersonalizationPropertyData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[41].n128_u64[0];
  v3 = v1[41].n128_u8[8];
  result = v1[40];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

void ContentDetailsViewEvent.Model.uppParentContentData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 672);
  v3 = *(v1 + 680);
  v4 = *(v1 + 688);
  v5 = *(v1 + 696);
  v6 = *(v1 + 704);
  v7 = *(v1 + 712);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 720);
  sub_4E2A0(v2, v3, v4, v5, v6, v7);
}

uint64_t ContentDetailsViewEvent.Model.dealsData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[91];
  v3 = v1[92];
  v4 = v1[93];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2EBCC(v2, v3, v4);
}

uint64_t ContentDetailsViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent.Model(0) + 72);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent.Model(0) + 76);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.Model.init(contentData:contentStoreData:contentExposureData:maxScrollDepthData:altContentTypeExposureData:prevAltContentExposureData:linkData:flowcaseData:pageData:upSellData:onDevicePersonalizationPropertyData:suggestionData:uppParentContentData:dealsData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, _OWORD *a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *a4;
  v19 = *(a4 + 4);
  v20 = *a6;
  v21 = *(a11 + 16);
  v22 = *(a12 + 16);
  v23 = *(a12 + 24);
  v24 = *a13;
  v25 = *(a14 + 48);
  v26 = *(a15 + 16);
  v27 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v27;
  v28 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v28;
  v29 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v29;
  v30 = *(a2 + 48);
  *(a9 + 128) = *(a2 + 32);
  *(a9 + 144) = v30;
  *(a9 + 157) = *(a2 + 61);
  v31 = *(a2 + 16);
  *(a9 + 96) = *a2;
  *(a9 + 112) = v31;
  v32 = *(a3 + 80);
  *(a9 + 232) = *(a3 + 64);
  *(a9 + 248) = v32;
  *(a9 + 264) = *(a3 + 96);
  *(a9 + 278) = *(a3 + 110);
  v33 = *(a3 + 16);
  *(a9 + 168) = *a3;
  *(a9 + 184) = v33;
  v34 = *(a3 + 48);
  *(a9 + 200) = *(a3 + 32);
  *(a9 + 216) = v34;
  *(a9 + 288) = v18;
  *(a9 + 292) = v19;
  *(a9 + 337) = *(a5 + 41);
  v35 = a5[2];
  *(a9 + 312) = a5[1];
  *(a9 + 328) = v35;
  *(a9 + 296) = *a5;
  *(a9 + 353) = v20;
  v36 = *(a7 + 16);
  *(a9 + 360) = *a7;
  *(a9 + 376) = v36;
  v37 = *(a7 + 80);
  *(a9 + 424) = *(a7 + 64);
  *(a9 + 440) = v37;
  v38 = *(a7 + 48);
  *(a9 + 392) = *(a7 + 32);
  *(a9 + 408) = v38;
  *(a9 + 504) = *(a7 + 144);
  v39 = *(a7 + 128);
  *(a9 + 472) = *(a7 + 112);
  *(a9 + 488) = v39;
  *(a9 + 456) = *(a7 + 96);
  v40 = *(a8 + 48);
  *(a9 + 544) = *(a8 + 32);
  *(a9 + 560) = v40;
  *(a9 + 576) = *(a8 + 64);
  v41 = *(a8 + 16);
  *(a9 + 512) = *a8;
  *(a9 + 528) = v41;
  v42 = a10[1];
  *(a9 + 584) = *a10;
  *(a9 + 600) = v42;
  *(a9 + 616) = *a11;
  *(a9 + 632) = v21;
  *(a9 + 640) = *a12;
  *(a9 + 656) = v22;
  *(a9 + 664) = v23;
  *(a9 + 665) = v24;
  v43 = *(a14 + 16);
  *(a9 + 672) = *a14;
  *(a9 + 688) = v43;
  *(a9 + 704) = *(a14 + 32);
  *(a9 + 720) = v25;
  *(a9 + 728) = *a15;
  *(a9 + 744) = v26;
  v44 = type metadata accessor for ContentDetailsViewEvent.Model(0);
  v45 = *(v44 + 72);
  v46 = sub_1E1150();
  (*(*(v46 - 8) + 32))(a9 + v45, a16, v46);
  v47 = *(v44 + 76);
  v48 = sub_1E11A0();
  v49 = *(*(v48 - 8) + 32);

  return v49(a9 + v47, a17, v48);
}

uint64_t sub_D4FC8(char a1)
{
  result = 0x44746E65746E6F63;
  switch(a1)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      return 0xD000000000000013;
    case 3:
      return 0xD000000000000012;
    case 4:
      return 0xD00000000000001ALL;
    case 5:
      return 0xD00000000000001ALL;
    case 6:
      v4 = 1802398060;
      return v4 | 0x6174614400000000;
    case 7:
      return 0x65736163776F6C66;
    case 8:
      v4 = 1701273968;
      return v4 | 0x6174614400000000;
    case 9:
      return 0x61446C6C65537075;
    case 10:
      return 0xD000000000000023;
    case 11:
      return 0x6974736567677573;
    case 12:
      return 0xD000000000000014;
    case 13:
      v3 = 0x44736C616564;
      goto LABEL_15;
    case 14:
      v3 = 0x44746E657665;
      goto LABEL_15;
    case 15:
      v3 = 0x4464656D6974;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_D51E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_D8A6C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_D5210(uint64_t a1)
{
  v2 = sub_D5E3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D524C(uint64_t a1)
{
  v2 = sub_D5E3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentDetailsViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_285238, &qword_1F62B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v74 - v7;
  sub_48B8(a1, a1[3]);
  sub_D5E3C();
  sub_1E1E00();
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v160 = *(v3 + 32);
  v161 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v162 = *(v3 + 64);
  v163 = v12;
  v13 = *(v3 + 16);
  v159[0] = *v3;
  v159[1] = v13;
  v155 = v160;
  v156 = v11;
  v14 = *(v3 + 80);
  v157 = v162;
  v158 = v14;
  v153 = v159[0];
  v154 = v10;
  v152 = 0;
  sub_17AA4(v159, &v106, &qword_27FD08, &qword_1E94F0);
  sub_143D0();
  sub_1E1C80();
  if (v2)
  {
    v108 = v155;
    v109 = v156;
    v110 = v157;
    v111 = v158;
    v106 = v153;
    v107 = v154;
    sub_18E48(&v106, &qword_27FD08, &qword_1E94F0);
  }

  else
  {
    v148[2] = v155;
    v148[3] = v156;
    v148[4] = v157;
    v148[5] = v158;
    v148[0] = v153;
    v148[1] = v154;
    sub_18E48(v148, &qword_27FD08, &qword_1E94F0);
    v15 = *(v3 + 112);
    v16 = *(v3 + 144);
    v150 = *(v3 + 128);
    *v151 = v16;
    v17 = *(v3 + 96);
    v18 = v17;
    v149[1] = *(v3 + 112);
    v149[0] = v17;
    v19 = *(v3 + 144);
    v146 = v150;
    v147[0] = v19;
    *&v151[13] = *(v3 + 157);
    *(v147 + 13) = *(v3 + 157);
    v145 = v15;
    v144 = v18;
    v143 = 1;
    sub_17AA4(v149, &v106, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v139[2] = v146;
    v140[0] = v147[0];
    *(v140 + 13) = *(v147 + 13);
    v139[1] = v145;
    v139[0] = v144;
    sub_18E48(v139, &qword_27FFF0, &unk_1E9C00);
    v20 = *(v3 + 248);
    v141[4] = *(v3 + 232);
    v141[5] = v20;
    *v142 = *(v3 + 264);
    *&v142[14] = *(v3 + 278);
    v21 = *(v3 + 184);
    v141[0] = *(v3 + 168);
    v141[1] = v21;
    v22 = *(v3 + 216);
    v141[2] = *(v3 + 200);
    v141[3] = v22;
    v23 = *(v3 + 248);
    v136 = *(v3 + 232);
    v137 = v23;
    v138[0] = *(v3 + 264);
    *(v138 + 14) = *(v3 + 278);
    v24 = *(v3 + 184);
    v132 = *(v3 + 168);
    v133 = v24;
    v25 = *(v3 + 216);
    v134 = *(v3 + 200);
    v135 = v25;
    v131 = 2;
    sub_17AA4(v141, &v106, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v129[4] = v136;
    v129[5] = v137;
    *v130 = v138[0];
    *&v130[14] = *(v138 + 14);
    v129[0] = v132;
    v129[1] = v133;
    v129[2] = v134;
    v129[3] = v135;
    sub_18E48(v129, &qword_27FFF8, &qword_1F06D0);
    v27 = *(v3 + 292);
    v127 = *(v3 + 288);
    v128 = v27;
    v126 = 3;
    sub_7F394();
    sub_1E1C80();
    v28 = *(v3 + 312);
    v124[0] = *(v3 + 296);
    v124[1] = v28;
    v30 = *(v3 + 296);
    v29 = *(v3 + 312);
    v125[0] = *(v3 + 328);
    *(v125 + 9) = *(v3 + 337);
    v121 = v30;
    v122 = v29;
    v123[0] = *(v3 + 328);
    *(v123 + 9) = *(v3 + 337);
    v120 = 4;
    sub_17AA4(v124, &v106, &qword_27FFE8, &qword_1FC3D0);
    sub_4EFC8();
    sub_1E1C80();
    v118[0] = v121;
    v118[1] = v122;
    *v119 = v123[0];
    *&v119[9] = *(v123 + 9);
    sub_18E48(v118, &qword_27FFE8, &qword_1FC3D0);
    v117 = *(v3 + 353);
    v116 = 5;
    sub_4F0C4();
    sub_1E1C80();
    v31 = *(v3 + 472);
    v32 = *(v3 + 440);
    v112 = *(v3 + 456);
    v113 = v31;
    v33 = *(v3 + 472);
    v114 = *(v3 + 488);
    v34 = *(v3 + 408);
    v35 = *(v3 + 376);
    v108 = *(v3 + 392);
    v109 = v34;
    v36 = *(v3 + 408);
    v37 = *(v3 + 440);
    v110 = *(v3 + 424);
    v111 = v37;
    v38 = *(v3 + 376);
    v106 = *(v3 + 360);
    v107 = v38;
    v102 = v112;
    v103 = v33;
    v104 = *(v3 + 488);
    v98 = v108;
    v99 = v36;
    v100 = v110;
    v101 = v32;
    v115 = *(v3 + 504);
    v105 = *(v3 + 504);
    v96 = v106;
    v97 = v35;
    v95 = 6;
    sub_275C4(&v106, v93);
    sub_18630();
    sub_1E1CF0();
    v93[6] = v102;
    v93[7] = v103;
    v93[8] = v104;
    v94 = v105;
    v93[2] = v98;
    v93[3] = v99;
    v93[4] = v100;
    v93[5] = v101;
    v93[0] = v96;
    v93[1] = v97;
    sub_283A8(v93);
    v39 = *(v3 + 528);
    v40 = *(v3 + 560);
    v90 = *(v3 + 544);
    v91 = v40;
    v41 = *(v3 + 528);
    v89[0] = *(v3 + 512);
    v89[1] = v41;
    v42 = *(v3 + 560);
    v86 = v90;
    v87 = v42;
    v92 = *(v3 + 576);
    v88 = *(v3 + 576);
    v84 = v89[0];
    v85 = v39;
    v83 = 7;
    sub_17AA4(v89, v81, &qword_282CC0, &qword_1F62B0);
    sub_1C860();
    sub_1E1C80();
    v81[2] = v86;
    v81[3] = v87;
    v82 = v88;
    v81[0] = v84;
    v81[1] = v85;
    sub_18E48(v81, &qword_282CC0, &qword_1F62B0);
    v43 = *(v3 + 592);
    v44 = *(v3 + 600);
    v45 = *(v3 + 608);
    *&v74 = *(v3 + 584);
    *(&v74 + 1) = v43;
    v75 = v44;
    v76 = v45;
    v80 = 8;
    sub_178BC(v74, v43, v44, v45);
    sub_18598();
    sub_1E1C80();
    sub_185EC(v74, *(&v74 + 1), v75, v76, v46, v47, v48, v49);
    v50 = *(v3 + 632);
    v74 = *(v3 + 616);
    v75 = v50;
    v80 = 9;
    sub_28450();

    sub_1E1C80();
    v75, v51, v52, v53, v54, v55, v56, v57;
    v58 = *(v3 + 656);
    v59 = *(v3 + 664);
    v74 = *(v3 + 640);
    v75 = v58;
    LOBYTE(v76) = v59;
    v80 = 10;
    sub_284A4();
    sub_1E1C80();
    LOBYTE(v74) = *(v3 + 665);
    v80 = 11;
    sub_284F8();
    sub_1E1C80();
    v60 = *(v3 + 680);
    v61 = *(v3 + 688);
    v62 = *(v3 + 696);
    v63 = *(v3 + 704);
    v64 = *(v3 + 712);
    v65 = *(v3 + 720);
    *&v74 = *(v3 + 672);
    *(&v74 + 1) = v60;
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v78 = v64;
    v79 = v65;
    v80 = 12;
    sub_4E2A0(v74, v60, v61, v62, v63, v64);
    sub_4F118();
    sub_1E1C80();
    sub_4F16C(v74, *(&v74 + 1), v75, v76, v77, v78, v79, v66);
    v67 = *(v3 + 736);
    v68 = *(v3 + 744);
    *&v74 = *(v3 + 728);
    *(&v74 + 1) = v67;
    v75 = v68;
    v80 = 13;
    sub_2EBCC(v74, v67, v68);
    sub_2F834();
    sub_1E1C80();
    sub_2F888(v74, *(&v74 + 1), v75, v69, v70, v71, v72, v73);
    type metadata accessor for ContentDetailsViewEvent.Model(0);
    LOBYTE(v74) = 14;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    LOBYTE(v74) = 15;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_D5E3C()
{
  result = qword_285240;
  if (!qword_285240)
  {
    result = swift_getWitnessTable(aUq, &type metadata for ContentDetailsViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285240);
  }

  return result;
}

void ContentDetailsViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v68 = sub_1E11A0();
  v65 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v69 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_285248, &qword_1F62C0);
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v9 = v58 - v8;
  v10 = type metadata accessor for ContentDetailsViewEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v120 = a1;
  sub_48B8(a1, v13);
  sub_D5E3C();
  v72 = v9;
  v14 = v73;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v120, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v62 = v6;
    v63 = v10;
    v22 = v70;
    v73 = v12;
    v64 = v4;
    v103 = 0;
    sub_14CB8();
    sub_1E1BB0();
    v23 = v107;
    v24 = v73;
    *(v73 + 2) = v106;
    *(v24 + 3) = v23;
    v25 = v109;
    *(v24 + 4) = v108;
    *(v24 + 5) = v25;
    v26 = v105;
    *v24 = v104;
    *(v24 + 1) = v26;
    v98 = 1;
    sub_4FB64();
    sub_1E1BB0();
    v27 = v100;
    v28 = *v102;
    *(v24 + 8) = v101;
    *(v24 + 9) = v28;
    *(v24 + 157) = *&v102[13];
    *(v24 + 6) = v99;
    *(v24 + 7) = v27;
    v90 = 2;
    sub_4FBB8();
    v61 = 0;
    sub_1E1BB0();
    v29 = v96;
    *(v24 + 232) = v95;
    *(v24 + 248) = v29;
    v30 = v92;
    *(v24 + 168) = v91;
    *(v24 + 184) = v30;
    v31 = v94;
    *(v24 + 200) = v93;
    *(v24 + 216) = v31;
    *(v24 + 264) = *v97;
    *(v24 + 278) = *&v97[14];
    LOBYTE(v80) = 3;
    sub_7F33C();
    sub_1E1BB0();
    v60 = v24 + 168;
    v32 = BYTE4(v110);
    *(v24 + 72) = v110;
    v24[292] = v32;
    v86 = 4;
    sub_4FB10();
    sub_1E1BB0();
    v59 = v24 + 292;
    v33 = v88;
    *(v24 + 296) = v87;
    *(v24 + 312) = v33;
    *(v24 + 328) = *v89;
    *(v24 + 337) = *&v89[9];
    LOBYTE(v80) = 5;
    sub_4FC0C();
    sub_1E1BB0();
    *(v59 + 61) = v110;
    v85 = 6;
    sub_18FA4();
    sub_1E1C20();
    *(v24 + 63) = v119;
    v34 = v117;
    *(v24 + 456) = v116;
    *(v24 + 472) = v34;
    *(v24 + 488) = v118;
    v35 = v113;
    *(v24 + 392) = v112;
    *(v24 + 408) = v35;
    v36 = v115;
    *(v24 + 424) = v114;
    *(v24 + 440) = v36;
    v37 = v111;
    *(v24 + 360) = v110;
    *(v24 + 376) = v37;
    v58[2] = v24 + 360;
    v79 = 7;
    sub_1C808();
    sub_1E1BB0();
    v38 = v83;
    *(v24 + 34) = v82;
    *(v24 + 35) = v38;
    *(v24 + 72) = v84;
    v39 = v81;
    *(v24 + 32) = v80;
    *(v24 + 33) = v39;
    v78 = 8;
    sub_18F50();
    sub_1E1BB0();
    v58[1] = v24 + 296;
    v40 = v59;
    v41 = v75;
    *(v59 + 292) = v74;
    *(v40 + 308) = v41;
    v78 = 9;
    sub_28EF4();
    sub_1E1BB0();
    v42 = v75;
    *(v59 + 324) = v74;
    *(v73 + 79) = v42;
    v78 = 10;
    sub_28F48();
    sub_1E1BB0();
    v43 = v75;
    v44 = BYTE8(v75);
    v45 = v73;
    *(v73 + 40) = v74;
    *(v45 + 82) = v43;
    v45[664] = v44;
    v78 = 11;
    sub_28F9C();
    sub_1E1BB0();
    v73[665] = v74;
    v78 = 12;
    sub_4FC60();
    sub_1E1BB0();
    v46 = v77;
    v47 = v75;
    v48 = v73;
    *(v73 + 42) = v74;
    *(v48 + 43) = v47;
    *(v48 + 44) = v76;
    v48[720] = v46;
    v78 = 13;
    sub_30258();
    sub_1E1BB0();
    v49 = v75;
    *(v59 + 436) = v74;
    *(v73 + 93) = v49;
    LOBYTE(v74) = 14;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v69 + 32))(&v73[*(v63 + 72)], v62, v64);
    LOBYTE(v74) = 15;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1C20();
    (*(v22 + 8))(v72, v71);
    v50 = v73;
    (*(v65 + 32))(&v73[*(v63 + 76)], v67, v68);
    sub_D6CF8(v50, v66);
    sub_4E48(v120, v51, v52, v53, v54, v55, v56, v57);
    sub_D6D5C(v50);
  }
}

uint64_t sub_D6CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDetailsViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D6D5C(uint64_t a1)
{
  v2 = type metadata accessor for ContentDetailsViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D6E58@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_285230, &qword_1F6298);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = enum case for EventProperty.required<A>(_:);
  v18 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  v28 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  v30 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  v32 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v32 - 8) + 104))(a2 + v31, v4, v32);
  v33 = a1[18];
  v34 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v34 - 8) + 104))(a2 + v33, v17, v34);
  v35 = a1[19];
  v36 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v17, v36);
}

uint64_t sub_D7380(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_32:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_31:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_32;
  }

  v14 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_31;
  }

  v15 = sub_3D68(&qword_285230, &qword_1F6298);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_31;
  }

  v16 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_31;
  }

  v17 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_31;
  }

  v18 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_31;
  }

  v19 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_31;
  }

  v20 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_31;
  }

  v21 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_31;
  }

  v22 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_31;
  }

  v23 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_31;
  }

  v24 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_31;
  }

  v25 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_31;
  }

  v26 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_31;
  }

  v28 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v29 = *(*(v28 - 8) + 48);
  v30 = a1 + a3[19];

  return v29(v30, a2, v28);
}

uint64_t sub_D793C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_32:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_31:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_32;
  }

  v16 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_31;
  }

  v17 = sub_3D68(&qword_285230, &qword_1F6298);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_31;
  }

  v18 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_31;
  }

  v19 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_31;
  }

  v20 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_31;
  }

  v21 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_31;
  }

  v22 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_31;
  }

  v23 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_31;
  }

  v24 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_31;
  }

  v25 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_31;
  }

  v26 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_31;
  }

  v27 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_31;
  }

  v28 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_31;
  }

  v30 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v31 = *(*(v30 - 8) + 56);
  v32 = a1 + a4[19];

  return v31(v32, a2, a2, v30);
}

void sub_D7EF0(uint64_t a1)
{
  sub_D83D4(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_D83D4(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_D83D4(319, &qword_2800E0, sub_4FBB8, sub_4F070, &type metadata for ContentExposureData);
      if (v3 <= 0x3F)
      {
        sub_D83D4(319, &unk_2852B8, sub_7F33C, sub_7F394, &type metadata for MaxScrollDepthData);
        if (v4 <= 0x3F)
        {
          sub_D83D4(319, &qword_2800D0, sub_4FB10, sub_4EFC8, &type metadata for AltContentTypeExposureData);
          if (v5 <= 0x3F)
          {
            sub_D83D4(319, &qword_2800E8, sub_4FC0C, sub_4F0C4, &type metadata for PrevAltContentExposureData);
            if (v6 <= 0x3F)
            {
              sub_D83D4(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
              if (v7 <= 0x3F)
              {
                sub_D83D4(319, &qword_27EF68, sub_1C808, sub_1C860, &type metadata for FlowcaseData);
                if (v8 <= 0x3F)
                {
                  sub_D83D4(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
                  if (v9 <= 0x3F)
                  {
                    sub_D83D4(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
                    if (v10 <= 0x3F)
                    {
                      sub_D83D4(319, &qword_27EAF0, sub_28F48, sub_284A4, &type metadata for OnDevicePersonalizationPropertyData);
                      if (v11 <= 0x3F)
                      {
                        sub_D83D4(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
                        if (v12 <= 0x3F)
                        {
                          sub_D83D4(319, &unk_2800F8, sub_4FC60, sub_4F118, &type metadata for UppParentContentData);
                          if (v13 <= 0x3F)
                          {
                            sub_D83D4(319, &unk_27EF70, sub_30258, sub_2F834, &type metadata for DealsData);
                            if (v14 <= 0x3F)
                            {
                              sub_5684(319);
                              if (v15 <= 0x3F)
                              {
                                sub_5750(319);
                                if (v16 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_D83D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_D8464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 368);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 72);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_D859C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 368) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_D86C0(uint64_t a1)
{
  sub_19FE0(319, &qword_27FE30, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C0, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_2801C8, &type metadata for ContentExposureData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &unk_285388, &type metadata for MaxScrollDepthData);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &qword_2801B8, &type metadata for AltContentTypeExposureData);
          if (v5 <= 0x3F)
          {
            sub_19FE0(319, &qword_2801D0, &type metadata for PrevAltContentExposureData);
            if (v6 <= 0x3F)
            {
              sub_19FE0(319, &unk_282E10, &type metadata for FlowcaseData);
              if (v7 <= 0x3F)
              {
                sub_19FE0(319, &qword_27E640, &type metadata for PageData);
                if (v8 <= 0x3F)
                {
                  sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
                  if (v9 <= 0x3F)
                  {
                    sub_19FE0(319, &qword_27EBD0, &type metadata for OnDevicePersonalizationPropertyData);
                    if (v10 <= 0x3F)
                    {
                      sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
                      if (v11 <= 0x3F)
                      {
                        sub_19FE0(319, &unk_2801D8, &type metadata for UppParentContentData);
                        if (v12 <= 0x3F)
                        {
                          sub_19FE0(319, &unk_27F030, &type metadata for DealsData);
                          if (v13 <= 0x3F)
                          {
                            sub_1E1150();
                            if (v14 <= 0x3F)
                            {
                              sub_1E11A0();
                              if (v15 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

unint64_t sub_D8968()
{
  result = qword_2853F0;
  if (!qword_2853F0)
  {
    result = swift_getWitnessTable(aMq, &type metadata for ContentDetailsViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2853F0);
  }

  return result;
}

unint64_t sub_D89C0()
{
  result = qword_2853F8;
  if (!qword_2853F8)
  {
    result = swift_getWitnessTable(byte_1F646C, &type metadata for ContentDetailsViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2853F8);
  }

  return result;
}

unint64_t sub_D8A18()
{
  result = qword_285400;
  if (!qword_285400)
  {
    result = swift_getWitnessTable(byte_1F6494, &type metadata for ContentDetailsViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285400);
  }

  return result;
}

uint64_t sub_D8A6C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000213F30;
    if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x8000000000213F50;
      if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0x8000000000215E60;
        if (a1 == 0xD000000000000012 && 0x8000000000215E60 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v16 = 0x8000000000213F10;
          if (a1 == 0xD00000000000001ALL && 0x8000000000213F10 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else
          {
            v17 = 0x8000000000213F70;
            if (a1 == 0xD00000000000001ALL && 0x8000000000213F70 == a2 || (sub_1E1D30() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 5;
            }

            else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 6;
            }

            else
            {
              v18 = 0xEC00000061746144;
              if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 7;
              }

              else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 8;
              }

              else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 9;
              }

              else
              {
                v19 = 0x8000000000213BA0;
                if (a1 == 0xD000000000000023 && 0x8000000000213BA0 == a2 || (sub_1E1D30() & 1) != 0)
                {
                  a2, v19, a3, a4, a5, a6, a7, a8;
                  return 10;
                }

                else
                {
                  v20 = 0xEE00617461446E6FLL;
                  if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
                  {
                    a2, v20, a3, a4, a5, a6, a7, a8;
                    return 11;
                  }

                  else
                  {
                    v21 = 0x8000000000213F90;
                    if (a1 == 0xD000000000000014 && 0x8000000000213F90 == a2 || (sub_1E1D30() & 1) != 0)
                    {
                      a2, v21, a3, a4, a5, a6, a7, a8;
                      return 12;
                    }

                    else if (a1 == 0x746144736C616564 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
                    {
                      a2, v21, a3, a4, a5, a6, a7, a8;
                      return 13;
                    }

                    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
                    {
                      a2, v21, a3, a4, a5, a6, a7, a8;
                      return 14;
                    }

                    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
                    {
                      0xE900000000000061, v21, a3, a4, a5, a6, a7, a8;
                      return 15;
                    }

                    else
                    {
                      v22 = sub_1E1D30();
                      a2, v23, v24, v25, v26, v27, v28, v29;
                      if (v22)
                      {
                        return 15;
                      }

                      else
                      {
                        return 16;
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