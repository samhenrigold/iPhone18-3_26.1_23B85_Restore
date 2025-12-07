unint64_t sub_14D4BC()
{
  result = qword_1CB4C0;
  if (!qword_1CB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4C0);
  }

  return result;
}

const char *sub_14D524(char a1)
{
  result = "wellness_scribe";
  switch(a1)
  {
    case 1:
      result = "wellness_medications";
      break;
    case 2:
      result = "wellness_serverFallback";
      break;
    case 3:
      result = "overrideOnDeviceCheck";
      break;
    case 4:
      result = "wellness_smart";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_14D5F0(uint64_t a1)
{
  v2 = type metadata accessor for MainFlow(0);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_16C80C();
  v6 = (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_92E0C(v6);
  v7 = &v4[*(v2 + 24)];
  v7[3] = &type metadata for WellnessCATProvider;
  v7[4] = &off_1BD5D8;
  v8 = swift_allocObject();
  *v7 = v8;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  sub_92E10(v8);
  sub_14D7EC();
  v9 = sub_16C32C();
  sub_14D844(v4);
  return v9;
}

uint64_t sub_14D74C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_14D5E0();
  *a1 = result;
  return result;
}

uint64_t sub_14D79C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_14D7EC()
{
  result = qword_1C8B50;
  if (!qword_1C8B50)
  {
    type metadata accessor for MainFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B50);
  }

  return result;
}

uint64_t sub_14D844(uint64_t a1)
{
  v2 = type metadata accessor for MainFlow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14D8B0(uint64_t a1, uint64_t a2)
{
  sub_92614();

  return sub_16C33C();
}

uint64_t sub_14D904()
{
  sub_8A88();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_16DBEC();
  v1[7] = v3;
  sub_888C(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v5 = sub_16C46C();
  v1[10] = v5;
  sub_888C(v5);
  v1[11] = v6;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[14] = v7;
  sub_888C(v7);
  v1[15] = v8;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_14DA6C);
}

uint64_t sub_14DA6C()
{
  sub_8A88();
  sub_2D20((*(v0 + 48) + 40), *(*(v0 + 48) + 64));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_14DB08;

  return sub_7ADE8();
}

uint64_t sub_14DB08(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;

  if (v1)
  {

    v7 = sub_14DC2C;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_1BE20;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_14DC2C(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_16DBDC();
  v7 = sub_16E37C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&def_259DC, v6, v7, "Failed to get unsupportedDevice pattern result", v8, 2u);
  }

  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[7];

  (*(v10 + 8))(v9, v11);
  sub_16C50C();

  v12 = v1[1];

  return v12();
}

uint64_t sub_14DD94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C374;

  return sub_14D904();
}

uint64_t GenericButtonSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s18WellnessFlowPlugin20GenericButtonSnippetV14_actionHandler33_C4F64AB2145C6C08CB305FFD78E00F710F2UI06ActionH0Vvpfi_0();
  v4 = type metadata accessor for GenericButtonSnippet(0);
  return sub_14E7D4(a1, a2 + *(v4 + 20), type metadata accessor for GenericButtonModel);
}

uint64_t type metadata accessor for GenericButtonSnippet(uint64_t a1)
{
  result = qword_1CB5C8;
  if (!qword_1CB5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_14DECC()
{
  v1 = sub_16BFAC();
  sub_42F0();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_3E204();
  v5 = [objc_allocWithZone(SAUIAppPunchOut) init];
  type metadata accessor for GenericButtonSnippet(0);
  v6 = type metadata accessor for GenericButtonModel(0);
  sub_16BE6C(*(v6 + 20));
  v8 = v7;
  [v5 setPunchOutUri:v7];

  v9 = v5;
  sub_16BF9C();
  v10 = sub_16BF6C();
  v12 = v11;
  (*(v3 + 8))(v0, v1);
  sub_613B8(v10, v12, v9);

  return v9;
}

uint64_t GenericButtonSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v20[1] = a1;
  v20[0] = sub_16E07C();
  sub_42F0();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_3E204();
  v7 = type metadata accessor for GenericButtonSnippet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_2440(&qword_1C5830, &qword_178B90);
  sub_42F0();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v20 - v14;
  sub_14E658(v1, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_14E7D4(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GenericButtonSnippet);
  v20[4] = v3;
  sub_16DFEC();
  sub_16DDDC();
  sub_14E924();
  sub_14E988();
  v18 = v20[0];
  sub_16DF7C();
  (*(v5 + 8))(v2, v18);
  return (*(v12 + 8))(v15, v10);
}

uint64_t sub_14E290()
{
  v0 = sub_2440(&qword_1CB600, &qword_178C28);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_2440(&qword_1CB608, &qword_178C30);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_2440(&qword_1CB610, &qword_178C38);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_16C15C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440(&qword_1CB618, &unk_178C40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_16F530;
  v14 = sub_16C19C();
  *(v13 + 56) = v14;
  *(v13 + 64) = &protocol witness table for Command;
  v15 = sub_9910((v13 + 32));
  *v15 = sub_14DECC();
  *(v15 + 8) = 1;
  (*(*(v14 - 8) + 104))(v15, enum case for Command.aceCommand(_:), v14);
  sub_16C16C();
  sub_16E04C();
  v16 = sub_16E0FC();
  if (sub_369C(v8, 1, v16) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return sub_1B918(v8, &qword_1CB610, &qword_178C38);
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    sub_214C(v5, 0, 1, v9);
    v18 = enum case for InteractionType.buttonTapped(_:);
    v19 = sub_16E09C();
    (*(*(v19 - 8) + 104))(v2, v18, v19);
    sub_214C(v2, 0, 1, v19);
    sub_16E0EC();
    sub_1B918(v2, &qword_1CB600, &qword_178C28);
    sub_1B918(v5, &qword_1CB608, &qword_178C30);
    (*(v10 + 8))(v12, v9);
    return (*(*(v16 - 8) + 8))(v8, v16);
  }
}

uint64_t sub_14E658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericButtonSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14E6BC()
{
  v1 = (type metadata accessor for GenericButtonSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_16E06C();
  sub_1BA5C();
  (*(v5 + 8))(v0 + v3);
  v6 = v0 + v3 + v1[7];

  v7 = *(type metadata accessor for GenericButtonModel(0) + 20);
  sub_16BE9C();
  sub_1BA5C();
  (*(v8 + 8))(v6 + v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_14E7D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_14E83C()
{
  type metadata accessor for GenericButtonSnippet(0);

  return sub_14E290();
}

uint64_t sub_14E89C@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for GenericButtonSnippet(0);
  sub_9854();

  result = sub_16DF0C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_14E924()
{
  result = qword_1C5848;
  if (!qword_1C5848)
  {
    sub_9790(&qword_1C5830, &qword_178B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5848);
  }

  return result;
}

unint64_t sub_14E988()
{
  result = qword_1CB568;
  if (!qword_1CB568)
  {
    sub_16E07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB568);
  }

  return result;
}

uint64_t sub_14EA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16E06C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for GenericButtonModel(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_369C(v8, a2, v7);
}

uint64_t sub_14EAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_16E06C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for GenericButtonModel(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_214C(v10, a2, a2, v9);
}

uint64_t sub_14EB68(uint64_t a1)
{
  result = sub_16E06C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GenericButtonModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_14EBEC()
{
  sub_9790(&qword_1C5830, &qword_178B90);
  sub_16E07C();
  sub_14E924();
  sub_14E988();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CycleTrackingLogModel.init(date:loggedLabel:cycleTrackingType:snippetHeaderModel:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a2;
  v38 = a3;
  v14 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v14);
  sub_433C();
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v18);
  sub_433C();
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  v39 = sub_16C11C();
  sub_214C(a8, 1, 1, v39);
  if (a1)
  {
    v36 = a5;
    v22 = a4;
    sub_16D45C();
    v23 = sub_16D5CC();
    if (sub_369C(v21, 1, v23) == 1)
    {
      sub_8748(v21, &qword_1C5800, &unk_16F510);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v26 = sub_16D5BC();
      v28 = v27;
      (*(*(v23 - 8) + 8))(v21, v23);
      v40 = v26;
      v41 = v28;
      sub_9854();
      v24 = sub_16E3FC();
      v25 = v29;
    }

    a4 = v22;
    a5 = v36;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v30 = type metadata accessor for CycleTrackingLogModel(0);
  v31 = (a8 + v30[5]);
  *v31 = v24;
  v31[1] = v25;
  v32 = (a8 + v30[6]);
  v33 = v38;
  *v32 = v37;
  v32[1] = v33;
  v34 = (a8 + v30[7]);
  *v34 = a4;
  v34[1] = a5;
  sub_86B0(a6, a8 + v30[8], &dword_1C63F8, &qword_171800);
  sub_86B0(a7, a8 + v30[9], &qword_1C57F8, &unk_172510);
  sub_14F138(a7);

  sub_8748(a7, &qword_1C57F8, &unk_172510);
  sub_8748(a6, &dword_1C63F8, &qword_171800);
  sub_214C(v17, 0, 1, v39);
  return sub_5FFFC(v17, a8);
}

uint64_t type metadata accessor for CycleTrackingLogModel(uint64_t a1)
{
  result = qword_1CB690;
  if (!qword_1CB690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CycleTrackingLogModel.dateLabel.getter()
{
  type metadata accessor for CycleTrackingLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t CycleTrackingLogModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CycleTrackingLogModel(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CycleTrackingLogModel.loggedLabel.getter()
{
  type metadata accessor for CycleTrackingLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t CycleTrackingLogModel.cycleTrackingType.getter()
{
  type metadata accessor for CycleTrackingLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t sub_14F138(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v5, &qword_1C57F8, &unk_172510);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_8748(v5, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v8 + 32))(v11, v5, v6);
    v13 = sub_16BE5C();
    sub_2068C(v13, v14);
    return (*(v8 + 8))(v11, v6);
  }
}

uint64_t sub_14F2E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000000181450 == a2;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_16E6BC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_14F4EC(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      result = 0x6562614C65746164;
      break;
    case 2:
      result = 0x614C646567676F6CLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_14F5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14F2E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14F600@<X0>(_BYTE *a1@<X8>)
{
  result = sub_14F4E4();
  *a1 = result;
  return result;
}

uint64_t sub_14F628(uint64_t a1)
{
  v2 = sub_14F914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14F664(uint64_t a1)
{
  v2 = sub_14F914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CycleTrackingLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CB620, &qword_178C50);
  sub_42F0();
  v7 = v6;
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v24[-v9];
  sub_2D20(a1, a1[3]);
  sub_14F914();
  sub_16E77C();
  v24[15] = 0;
  sub_16C11C();
  sub_150708();
  sub_150048(v11, v12, &protocol conformance descriptor for AppPunchout);
  sub_12E550(v3);
  if (!v2)
  {
    v13 = type metadata accessor for CycleTrackingLogModel(0);
    v14 = *(v3 + v13[5]);
    v24[14] = 1;
    sub_12E500(v14);
    v15 = *(v3 + v13[6]);
    v24[13] = 2;
    sub_12E500(v15);
    v16 = *(v3 + v13[7]);
    v24[12] = 3;
    sub_12E500(v16);
    v17 = v13[8];
    v24[11] = 4;
    type metadata accessor for SnippetHeaderModel(0);
    sub_1506F0();
    sub_150048(v18, v19, &protocol conformance descriptor for SnippetHeaderModel);
    sub_12E550(v3 + v17);
    v20 = v13[9];
    v24[10] = 5;
    sub_16BE9C();
    sub_1506D8();
    sub_150048(v21, v22, &protocol conformance descriptor for URL);
    sub_12E550(v3 + v20);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_14F914()
{
  result = qword_1CB628;
  if (!qword_1CB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB628);
  }

  return result;
}

uint64_t CycleTrackingLogModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v3);
  sub_433C();
  __chkstk_darwin(v4);
  v6 = &v57 - v5;
  v7 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v7);
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v57 - v9;
  v11 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v11);
  sub_433C();
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  sub_2440(&qword_1CB630, &qword_178C58);
  sub_42F0();
  v59 = v16;
  v60 = v15;
  sub_433C();
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v63 = type metadata accessor for CycleTrackingLogModel(0);
  sub_8B38();
  __chkstk_darwin(v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_16C11C();
  v24 = v23;
  v25 = v22;
  sub_214C(v22, 1, 1, v23);
  v26 = a1[3];
  v64 = a1;
  v27 = sub_2D20(a1, v26);
  sub_14F914();
  v61 = v19;
  v28 = v62;
  sub_16E76C();
  if (!v28)
  {
    v62 = v10;
    v57 = v6;
    v66[4] = 0;
    sub_150708();
    sub_150048(v29, v30, &protocol conformance descriptor for AppPunchout);
    sub_16E5AC();
    sub_5FFFC(v14, v25);
    v66[3] = 1;
    v32 = sub_16E58C();
    v33 = v63;
    v34 = (v25 + *(v63 + 20));
    *v34 = v32;
    v34[1] = v35;
    v66[2] = 2;
    v36 = sub_16E58C();
    v37 = (v25 + v33[6]);
    *v37 = v36;
    v37[1] = v38;
    v66[1] = 3;
    v39 = sub_16E58C();
    v40 = (v25 + v33[7]);
    *v40 = v39;
    v40[1] = v41;
    type metadata accessor for SnippetHeaderModel(0);
    v66[0] = 4;
    sub_1506F0();
    v44 = sub_150048(v42, v43, &protocol conformance descriptor for SnippetHeaderModel);
    v45 = v62;
    sub_150730(v44, v66, v46, v47, v44);
    sub_86FC(v45, v25 + v33[8], &dword_1C63F8, &qword_171800);
    sub_16BE9C();
    v65 = 5;
    sub_1506D8();
    v50 = sub_150048(v48, v49, &protocol conformance descriptor for URL);
    v51 = v57;
    sub_150730(v50, &v65, v52, v53, v50);
    v54 = sub_1506C8();
    v55(v54);
    sub_86FC(v51, v25 + v33[9], &qword_1C57F8, &unk_172510);
    sub_14FEF8(v25, v58);
    sub_2D64(v64);
    return sub_14FF5C(v25);
  }

  sub_150720();
  v31 = v63;
  sub_2D64(v64);
  sub_8748(v25, &qword_1C63F0, &unk_1717F0);

  if (!v24)
  {
    if (!v26)
    {
      goto LABEL_5;
    }

LABEL_8:

    if (!v27)
    {
      return result;
    }

    return sub_8748(v25 + *(v31 + 32), &dword_1C63F8, &qword_171800);
  }

  if (v26)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v27)
  {
    return sub_8748(v25 + *(v31 + 32), &dword_1C63F8, &qword_171800);
  }

  return result;
}

uint64_t sub_14FEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleTrackingLogModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14FF5C(uint64_t a1)
{
  v2 = type metadata accessor for CycleTrackingLogModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_150048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1500D4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return sub_369C(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    sub_2440(&dword_1C63F8, &qword_171800);
    sub_436C();
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v15 = a3[8];
    }

    else
    {
      v8 = sub_2440(&qword_1C57F8, &unk_172510);
      v15 = a3[9];
    }

    v9 = a1 + v15;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5] + 8);
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

void sub_150228(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + a4[5] + 8) = a2;
      return;
    }

    sub_2440(&dword_1C63F8, &qword_171800);
    sub_436C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      v10 = sub_2440(&qword_1C57F8, &unk_172510);
      v14 = a4[9];
    }

    v11 = a1 + v14;
  }

  sub_214C(v11, a2, a2, v10);
}

void sub_150358(uint64_t a1)
{
  sub_150468(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v1 <= 0x3F)
  {
    sub_BBD1C();
    if (v2 <= 0x3F)
    {
      sub_150468(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      if (v3 <= 0x3F)
      {
        sub_150468(319, &unk_1C8BE8, &type metadata accessor for URL);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_150468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CycleTrackingLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x150588);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1505C4()
{
  result = qword_1CB6D8;
  if (!qword_1CB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB6D8);
  }

  return result;
}

unint64_t sub_15061C()
{
  result = qword_1CB6E0;
  if (!qword_1CB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB6E0);
  }

  return result;
}

unint64_t sub_150674()
{
  result = qword_1CB6E8;
  if (!qword_1CB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB6E8);
  }

  return result;
}

uint64_t sub_150730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_16E5AC();
}

__n128 sub_150758(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_150764(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1507B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_15081C(uint64_t a1)
{
  v2 = sub_16D63C();
  __chkstk_darwin(v2 - 8);
  sub_15095C();
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    type metadata accessor for WellnessCATs(0);
    sub_16D62C();
    v3 = sub_16D58C();
  }

  return v3;
}

uint64_t sub_1508BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_16D63C();
  __chkstk_darwin(v5 - 8);
  sub_15095C();
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    type metadata accessor for WellnessUnsupportedCATs(0);
    sub_16D62C();
    v6 = sub_16D58C();
  }

  return v6;
}

uint64_t sub_15097C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1509BC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_150A24(uint64_t a1, uint64_t a2)
{
  sub_83FC8();

  return sub_16C33C();
}

uint64_t sub_150A78()
{
  sub_8A88();
  v1[27] = v2;
  v1[28] = v0;
  v3 = type metadata accessor for GenericButtonModel(0);
  v1[29] = v3;
  sub_4348(v3);
  v1[30] = sub_8BC0();
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v4);
  v1[31] = sub_8BC0();
  v5 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v5);
  v1[32] = sub_8BC0();
  v6 = sub_16BE9C();
  v1[33] = v6;
  sub_888C(v6);
  v1[34] = v7;
  v1[35] = sub_8BC0();
  v8 = sub_16C46C();
  v1[36] = v8;
  sub_888C(v8);
  v1[37] = v9;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v10 = sub_16C7BC();
  v1[40] = v10;
  sub_888C(v10);
  v1[41] = v11;
  v1[42] = sub_8BC0();
  v12 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v12);
  v1[43] = sub_8BC0();
  v13 = sub_17960();

  return _swift_task_switch(v13);
}

uint64_t sub_150C70()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 224);
  v3 = *v2;
  *(v0 + 408) = *v2;
  sub_208C0(v3);
  sub_16E23C();

  v4 = sub_16D5CC();
  sub_214C(v1, 0, 1, v4);
  v5 = swift_task_alloc();
  *(v0 + 352) = v5;
  *v5 = v0;
  v5[1] = sub_150D54;

  return sub_166098();
}

uint64_t sub_150D54(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  *v6 = *v2;

  v7 = *(v4 + 344);
  if (v1)
  {

    sub_C878(v7, &qword_1C5800, &unk_16F510);
    v8 = sub_151760;
  }

  else
  {
    *(v5 + 360) = a1;
    sub_C878(v7, &qword_1C5800, &unk_16F510);
    v8 = sub_150EC0;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_150EC0(uint64_t a1)
{
  v2 = *(v1 + 360);
  *(v1 + 368) = v2;
  v4 = *(v1 + 304);
  v3 = *(v1 + 312);
  v5 = *(v1 + 288);
  v6 = *(v1 + 296);
  sub_16C43C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  if (v2)
  {
    v7 = [v2 catId];
    sub_16E1BC();
  }

  v9 = *(v1 + 256);
  v8 = *(v1 + 264);
  v10 = *(v1 + 248);
  v11 = *(v1 + 408);
  sub_16C76C();
  v12 = sub_16BD9C();
  sub_214C(v10, 1, 1, v12);
  sub_12093C(v11, v10, v9);
  sub_C878(v10, &qword_1C5690, &dword_16F320);
  if (sub_369C(v9, 1, v8) == 1)
  {
    sub_C878(*(v1 + 256), &qword_1C57F8, &unk_172510);
    goto LABEL_5;
  }

  v28 = *(v1 + 224);
  (*(*(v1 + 272) + 32))(*(v1 + 280), *(v1 + 256), *(v1 + 264));
  sub_2D20((v28 + 8), *(v28 + 32));
  v29 = sub_42BC();
  v30(v29);
  sub_2D20((v1 + 56), *(v1 + 80));
  sub_42BC();
  if (sub_16C40C())
  {
    sub_2D64((v1 + 56));
    goto LABEL_12;
  }

  sub_2D20((v28 + 8), *(v28 + 32));
  v31 = sub_42BC();
  v32(v31);
  sub_2D20((v1 + 96), *(v1 + 120));
  sub_42BC();
  v33 = sub_16C3FC();
  sub_2D64((v1 + 96));
  sub_2D64((v1 + 56));
  if (v33)
  {
LABEL_12:
    v35 = *(v1 + 272);
    v34 = *(v1 + 280);
    v36 = *(v1 + 264);
    v38 = *(v1 + 232);
    v37 = *(v1 + 240);
    v39 = *(v1 + 224);
    v40 = sub_151E90();
    v42 = v41;
    (*(v35 + 16))(v37 + *(v38 + 20), v34, v36);
    *v37 = v40;
    v37[1] = v42;
    sub_8388(v39 + 48, v1 + 136);
    v43 = *(v1 + 160);
    v44 = *(v1 + 168);
    sub_2D20((v1 + 136), v43);
    *(v1 + 200) = type metadata accessor for WellnessSnippets(0);
    *(v1 + 208) = sub_17548();
    v45 = sub_9910((v1 + 176));
    sub_175A0(v37, v45);
    swift_storeEnumTagMultiPayload();
    v46 = sub_2440(&qword_1C5ED8, &unk_173090);
    v16 = sub_38DA0(v46);
    *(v1 + 376) = v16;
    *(v16 + 16) = xmmword_170F70;
    if (v2)
    {
      v47 = v16;
      *(v16 + 32) = v2;
      v48 = v2;
      swift_task_alloc();
      sub_179E8();
      *(v1 + 384) = v49;
      *v49 = v50;
      v49[1] = sub_15137C;
      v19 = *(v1 + 336);
      v16 = *(v1 + 216);
      v17 = v1 + 176;
      v18 = v47;
      v20 = v43;
      v21 = v44;

      return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20, v21);
    }

LABEL_18:
    __break(1u);
    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20, v21);
  }

  (*(*(v1 + 272) + 8))(*(v1 + 280), *(v1 + 264));
LABEL_5:
  sub_8388(*(v1 + 224) + 48, v1 + 16);
  v13 = *(v1 + 40);
  v14 = *(v1 + 48);
  sub_2D20((v1 + 16), v13);
  v15 = sub_2440(&qword_1C5ED8, &unk_173090);
  v16 = sub_38DA0(v15);
  *(v1 + 392) = v16;
  *(v16 + 16) = xmmword_170F70;
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v22 = v16;
  *(v16 + 32) = v2;
  v23 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 400) = v24;
  *v24 = v25;
  v24[1] = sub_151588;
  v26 = *(v1 + 336);
  v27 = *(v1 + 216);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v27, v22, v26, v13, v14);
}

uint64_t sub_15137C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_2D64((v2 + 176));
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_151484()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);

  sub_17604(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 136));
  sub_151EDC();

  sub_C9BC();

  return v8();
}

uint64_t sub_151588()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_151688()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 16));
  sub_151EDC();

  sub_C9BC();

  return v4();
}

void sub_151760(uint64_t a1)
{
  *(v1 + 368) = 0;
  v3 = *(v1 + 304);
  v2 = *(v1 + 312);
  v4 = *(v1 + 288);
  v5 = *(v1 + 296);
  sub_16C43C();
  (*(v5 + 16))(v3, v2, v4);
  sub_C9A0();
  sub_16C75C();
  (*(v5 + 8))(v2, v4);
  sub_16C7AC();
  v7 = *(v1 + 256);
  v6 = *(v1 + 264);
  v8 = *(v1 + 248);
  LOBYTE(v5) = *(v1 + 408);
  sub_16C76C();
  v9 = sub_16BD9C();
  sub_214C(v8, 1, 1, v9);
  sub_12093C(v5, v8, v7);
  sub_C878(v8, &qword_1C5690, &dword_16F320);
  if (sub_369C(v7, 1, v6) != 1)
  {
    goto LABEL_4;
  }

  sub_C878(*(v1 + 256), &qword_1C57F8, &unk_172510);
  while (1)
  {
    sub_8388(*(v1 + 224) + 48, v1 + 16);
    sub_2D20((v1 + 16), *(v1 + 40));
    v10 = sub_2440(&qword_1C5ED8, &unk_173090);
    v11 = sub_38DA0(v10);
    *(v1 + 392) = v11;
    *(v11 + 16) = xmmword_170F70;
    __break(1u);
LABEL_4:
    v12 = *(v1 + 224);
    (*(*(v1 + 272) + 32))(*(v1 + 280), *(v1 + 256), *(v1 + 264));
    v13 = v12[4];
    v14 = v12[5];
    sub_2D20(v12 + 1, v13);
    (*(v14 + 8))(v13, v14);
    sub_2D20((v1 + 56), *(v1 + 80));
    if (sub_16C40C())
    {
      sub_2D64((v1 + 56));
    }

    else
    {
      v15 = v12[4];
      v16 = v12[5];
      sub_2D20(v12 + 1, v15);
      (*(v16 + 8))(v15, v16);
      sub_2D20((v1 + 96), *(v1 + 120));
      v17 = sub_16C3FC();
      sub_2D64((v1 + 96));
      sub_2D64((v1 + 56));
      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v19 = *(v1 + 272);
    v18 = *(v1 + 280);
    v20 = *(v1 + 264);
    v22 = *(v1 + 232);
    v21 = *(v1 + 240);
    v23 = *(v1 + 224);
    v24 = sub_151E90();
    v26 = v25;
    (*(v19 + 16))(v21 + *(v22 + 20), v18, v20);
    *v21 = v24;
    v21[1] = v26;
    sub_8388(v23 + 48, v1 + 136);
    sub_2D20((v1 + 136), *(v1 + 160));
    *(v1 + 200) = type metadata accessor for WellnessSnippets(0);
    *(v1 + 208) = sub_17548();
    v27 = sub_9910((v1 + 176));
    sub_175A0(v21, v27);
    swift_storeEnumTagMultiPayload();
    v28 = sub_2440(&qword_1C5ED8, &unk_173090);
    v29 = sub_38DA0(v28);
    *(v1 + 376) = v29;
    *(v29 + 16) = xmmword_170F70;
    __break(1u);
LABEL_8:
    (*(*(v1 + 272) + 8))(*(v1 + 280), *(v1 + 264));
  }
}

uint64_t sub_151AAC()
{
  sub_8A88();
  *(v0 + 104) = v1;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_151B3C;

  return sub_150A78();
}

uint64_t sub_151B3C()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_151C20()
{
  sub_8388(v0 + 16, v0 + 56);
  v1 = swift_allocObject();
  sub_17464((v0 + 56), v1 + 16);
  sub_16C73C();
  sub_16C1DC();
  swift_allocObject();
  *(v0 + 96) = sub_16C1CC();
  sub_16C4EC();
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v2();
}

uint64_t sub_151D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_151AAC();
}

uint64_t sub_151DC4()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_151DFC()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_151E90()
{

  return sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
}

uint64_t sub_151EDC()
{
}

uint64_t SleepQueryModel.init(snippetHeaderModel:dateLabel:sleepTypeLabel:dataLabel:avgTimeAsleepLabel:avgTimeInBedLabel:avgTimeAsleep:avgTimeInBed:totalTimeAsleep:totalTimeInBed:url:sleepDuration:avgTimeAsleepData:avgTimeInBedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v74 = a7;
  v75 = a8;
  v72 = a15;
  v73 = a6;
  v70 = a14;
  v71 = a5;
  v68 = a13;
  v69 = a4;
  v65 = a12;
  v66 = a3;
  v63 = a11;
  v64 = a2;
  v61 = a1;
  v62 = a10;
  v67 = a16;
  v60 = a17;
  v18 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v18);
  sub_433C();
  __chkstk_darwin(v19);
  v21 = &v55 - v20;

  v22 = sub_16C11C();
  sub_8AB4();
  sub_214C(v23, v24, v25, v22);
  Model = type metadata accessor for SleepQueryModel(0);
  v27 = Model[5];
  type metadata accessor for SnippetHeaderModel(0);
  sub_8AB4();
  sub_214C(v28, v29, v30, v31);
  v32 = (a9 + Model[6]);
  v33 = (a9 + Model[7]);
  v34 = (a9 + Model[8]);
  v35 = (a9 + Model[9]);
  v36 = Model[11];
  v37 = (a9 + Model[10]);
  v38 = Model[13];
  v58 = Model[12];
  v59 = v36;
  v39 = Model[15];
  v56 = Model[14];
  v57 = v38;
  v40 = (a9 + v39);
  *v40 = 0;
  v40[1] = 0;
  v41 = (a9 + Model[16]);
  *v41 = 0;
  v41[1] = 0;
  v42 = (a9 + Model[17]);
  *v42 = 0;
  v42[1] = 0;
  v43 = v60;
  sub_152BF0(v60);
  sub_8748(v43, &qword_1C57F8, &unk_172510);
  sub_214C(v21, 0, 1, v22);
  v44 = sub_8B9C();
  sub_1E634(v44, v45, &qword_1C63F0, &unk_1717F0);
  result = sub_1E634(v61, a9 + v27, &dword_1C63F8, &qword_171800);
  v47 = v66;
  *v32 = v64;
  v32[1] = v47;
  v48 = v71;
  *v33 = v69;
  v33[1] = v48;
  v49 = v74;
  *v34 = v73;
  v34[1] = v49;
  v50 = v62;
  v51 = v63;
  *v35 = v75;
  v35[1] = v50;
  v52 = v65;
  *v37 = v51;
  v37[1] = v52;
  v53 = v58;
  *(a9 + v59) = v68;
  *(a9 + v53) = v70;
  v54 = v56;
  *(a9 + v57) = v72;
  *(a9 + v54) = v67;
  return result;
}

uint64_t type metadata accessor for SleepQueryModel(uint64_t a1)
{
  result = qword_1CB770;
  if (!qword_1CB770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String_optional __swiftcall SleepQueryModel.fetchSleepDuration()()
{
  Model = type metadata accessor for SleepQueryModel(0);
  if (*(v0 + Model[11]) || *(v0 + Model[12]) || *(v0 + Model[13]) || *(v0 + Model[14]))
  {

    v2 = SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)()
{
  v0 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v0);
  sub_433C();
  __chkstk_darwin(v1);
  v3 = &v13 - v2;
  v4 = sub_16D5CC();
  sub_42F0();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_4304();
  v10 = v9 - v8;
  sub_16D4FC();
  if (sub_369C(v3, 1, v4) == 1)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v10, v3, v4);
    v11 = sub_16D5BC();
    (*(v6 + 8))(v10, v4);
  }

  return v11;
}

uint64_t SleepQueryModel.dateLabel.getter()
{
  type metadata accessor for SleepQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SleepQueryModel.dateLabel.setter()
{
  sub_1546F4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.sleepTypeLabel.getter()
{
  type metadata accessor for SleepQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SleepQueryModel.sleepTypeLabel.setter()
{
  sub_1546F4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.dataLabel.getter()
{
  type metadata accessor for SleepQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SleepQueryModel.dataLabel.setter()
{
  sub_1546F4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeAsleepLabel.getter()
{
  type metadata accessor for SleepQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SleepQueryModel.avgTimeAsleepLabel.setter()
{
  sub_1546F4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeInBedLabel.getter()
{
  type metadata accessor for SleepQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SleepQueryModel.avgTimeInBedLabel.setter()
{
  sub_1546F4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeAsleep.getter()
{
  type metadata accessor for SleepQueryModel(0);
}

uint64_t SleepQueryModel.avgTimeAsleep.setter()
{
  v2 = *(sub_154758() + 44);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeInBed.getter()
{
  type metadata accessor for SleepQueryModel(0);
}

uint64_t SleepQueryModel.avgTimeInBed.setter()
{
  v2 = *(sub_154758() + 48);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SleepQueryModel.totalTimeAsleep.getter()
{
  type metadata accessor for SleepQueryModel(0);
}

uint64_t SleepQueryModel.totalTimeAsleep.setter()
{
  v2 = *(sub_154758() + 52);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SleepQueryModel.totalTimeInBed.getter()
{
  type metadata accessor for SleepQueryModel(0);
}

uint64_t SleepQueryModel.totalTimeInBed.setter()
{
  v2 = *(sub_154758() + 56);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SleepQueryModel.sleepDuration.getter()
{
  type metadata accessor for SleepQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SleepQueryModel.sleepDuration.setter()
{
  sub_1546F4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeAsleepData.getter()
{
  type metadata accessor for SleepQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SleepQueryModel.avgTimeAsleepData.setter()
{
  sub_1546F4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeInBedData.getter()
{
  type metadata accessor for SleepQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SleepQueryModel.avgTimeInBedData.setter()
{
  sub_1546F4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_152BF0(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_4304();
  v12 = v11 - v10;
  sub_86B0(a1, v5, &qword_1C57F8, &unk_172510);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_8748(v5, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v8 + 32))(v12, v5, v6);
    v14 = sub_16BE5C();
    sub_2068C(v14, v15);
    return (*(v8 + 8))(v12, v6);
  }
}

uint64_t sub_152D90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7079547065656C73 && a2 == 0xEE006C6562614C65;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x8000000000181470 == a2;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000000181490 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x41656D6954677661 && a2 == 0xED00007065656C73;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x49656D6954677661 && a2 == 0xEC0000006465426ELL;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D69546C61746F74 && a2 == 0xEF7065656C734165;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6D69546C61746F74 && a2 == 0xEE006465426E4965;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7275447065656C73 && a2 == 0xED00006E6F697461;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x80000000001814B0 == a2;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0xD000000000000010 && 0x80000000001814D0 == a2)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_16E6BC();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

uint64_t sub_153200(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 1702125924;
      goto LABEL_6;
    case 3:
      result = 0x7079547065656C73;
      break;
    case 4:
      v3 = 1635017060;
LABEL_6:
      result = v3 | 0x6562614C00000000;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x41656D6954677661;
      break;
    case 8:
      result = 0x49656D6954677661;
      break;
    case 9:
    case 10:
      result = 0x6D69546C61746F74;
      break;
    case 11:
      result = 0x7275447065656C73;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1533EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_152D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_153414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1531F8();
  *a1 = result;
  return result;
}

uint64_t sub_15343C(uint64_t a1)
{
  v2 = sub_1537D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_153478(uint64_t a1)
{
  v2 = sub_1537D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SleepQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CB6F0, &qword_179010);
  sub_42F0();
  v7 = v6;
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_2D20(a1, a1[3]);
  sub_1537D4();
  sub_16E77C();
  v22 = 0;
  sub_16C11C();
  sub_154710();
  sub_153FB8(v11, v12, &protocol conformance descriptor for AppPunchout);
  sub_12C630(v3);
  if (!v2)
  {
    Model = type metadata accessor for SleepQueryModel(0);
    v14 = Model[5];
    v22 = 1;
    type metadata accessor for SnippetHeaderModel(0);
    sub_154740();
    sub_153FB8(v15, v16, &protocol conformance descriptor for SnippetHeaderModel);
    sub_12C630(v3 + v14);
    sub_66A40(Model[6]);
    sub_14B884(2);
    sub_66A40(Model[7]);
    sub_14B884(3);
    sub_66A40(Model[8]);
    sub_14B884(4);
    sub_66A40(Model[9]);
    sub_14B884(5);
    sub_66A40(Model[10]);
    sub_14B884(6);
    sub_15477C(Model[11]);
    v21 = 7;
    sub_16D54C();
    sub_154728();
    sub_153FB8(v17, v18, &protocol conformance descriptor for DialogDuration);
    sub_15469C();
    sub_15477C(Model[12]);
    v21 = 8;
    sub_15469C();
    sub_15477C(Model[13]);
    v21 = 9;
    sub_15469C();
    sub_15477C(Model[14]);
    v21 = 10;
    sub_15469C();
    sub_66A40(Model[15]);
    sub_14B884(11);
    sub_66A40(Model[16]);
    sub_14B884(12);
    sub_66A40(Model[17]);
    sub_14B884(13);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1537D4()
{
  result = qword_1CB6F8;
  if (!qword_1CB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB6F8);
  }

  return result;
}

uint64_t SleepQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  sub_433C();
  __chkstk_darwin(v4);
  v90 = &v75 - v5;
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  v91 = &v75 - v8;
  v92 = sub_2440(&qword_1CB708, &qword_179018);
  sub_42F0();
  v89 = v9;
  sub_433C();
  __chkstk_darwin(v10);
  v96 = &v75 - v11;
  Model = type metadata accessor for SleepQueryModel(0);
  v13 = (Model - 8);
  __chkstk_darwin(Model);
  sub_4304();
  v16 = v15 - v14;
  sub_16C11C();
  sub_8AB4();
  v88 = v17;
  sub_214C(v18, v19, v20, v17);
  v21 = v13[7];
  v22 = type metadata accessor for SnippetHeaderModel(0);
  v85 = v21;
  v86 = v22;
  sub_8AB4();
  sub_214C(v23, v24, v25, v26);
  v27 = (v16 + v13[8]);
  *v27 = 0;
  v27[1] = 0;
  v84 = v27;
  v28 = (v16 + v13[9]);
  *v28 = 0;
  v28[1] = 0;
  v83 = v28;
  v29 = (v16 + v13[10]);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v16 + v13[11]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v16 + v13[12]);
  *v31 = 0;
  v31[1] = 0;
  v82 = v13[13];
  *(v16 + v82) = 0;
  v81 = v13[14];
  *(v16 + v81) = 0;
  v80 = v13[15];
  *(v16 + v80) = 0;
  v87 = v13[16];
  *(v16 + v87) = 0;
  v32 = (v16 + v13[17]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v16 + v13[18]);
  *v33 = 0;
  v33[1] = 0;
  v34 = v13[19];
  v95 = v16;
  v35 = (v16 + v34);
  *v35 = 0;
  v35[1] = 0;
  v36 = a1[3];
  v94 = a1;
  sub_2D20(a1, v36);
  sub_1537D4();
  v37 = v93;
  sub_16E76C();
  if (v37)
  {
    v44 = v95;
    sub_2D64(v94);
    v74 = v44;
  }

  else
  {
    v93 = v29;
    v77 = v31;
    v78 = v30;
    v38 = v90;
    v39 = v87;
    v76 = v35;
    v40 = v89;
    LOBYTE(v98) = 0;
    sub_154710();
    sub_153FB8(v41, v42, &protocol conformance descriptor for AppPunchout);
    v43 = v91;
    sub_154770();
    sub_16E5AC();
    v46 = v43;
    v47 = v95;
    sub_1E634(v46, v95, &qword_1C63F0, &unk_1717F0);
    LOBYTE(v98) = 1;
    sub_154740();
    sub_153FB8(v48, v49, &protocol conformance descriptor for SnippetHeaderModel);
    sub_16E5AC();
    sub_1E634(v38, v47 + v85, &dword_1C63F8, &qword_171800);
    sub_1546C8(2);
    v50 = sub_16E58C();
    v51 = v84;
    *v84 = v50;
    v51[1] = v52;
    sub_1546C8(3);
    v53 = sub_16E58C();
    v54 = v83;
    *v83 = v53;
    v54[1] = v55;
    sub_1546C8(4);
    v56 = sub_16E58C();
    v57 = v93;
    *v93 = v56;
    v57[1] = v58;
    sub_1546C8(5);
    v59 = sub_16E58C();
    v60 = v78;
    *v78 = v59;
    v60[1] = v61;
    sub_1546C8(6);
    v62 = sub_16E58C();
    v63 = v77;
    *v77 = v62;
    v63[1] = v64;
    sub_16D54C();
    v97[0] = 7;
    sub_154728();
    v93 = sub_153FB8(v65, v66, &protocol conformance descriptor for DialogDuration);
    sub_16E5AC();
    *(v47 + v82) = v98;
    sub_1546D8(8);
    sub_154770();
    sub_16E5AC();
    *(v47 + v81) = v98;
    sub_1546D8(9);
    sub_154770();
    sub_16E5AC();
    *(v95 + v80) = v98;
    sub_1546D8(10);
    sub_16E5AC();
    *(v95 + v39) = v98;
    sub_1546C8(11);
    *v32 = sub_16E58C();
    v32[1] = v67;
    sub_1546C8(12);
    sub_154770();
    *v33 = sub_16E58C();
    v33[1] = v68;
    sub_1546C8(13);
    sub_154770();
    v69 = sub_16E58C();
    v71 = v70;
    (*(v40 + 8))(v96, v92);
    v72 = v76;
    *v76 = v69;
    v72[1] = v71;
    v73 = v95;
    sub_153EC4(v95, v79);
    sub_2D64(v94);
    v74 = v73;
  }

  return sub_153E68(v74);
}

uint64_t sub_153E68(uint64_t a1)
{
  Model = type metadata accessor for SleepQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_153EC4(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for SleepQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_153FB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_154044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_369C(v9, a2, v8);
  }

  sub_2440(&dword_1C63F8, &qword_171800);
  sub_436C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_15416C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2440(&dword_1C63F8, &qword_171800);
    sub_436C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_214C(v11, a2, a2, v10);
}

uint64_t sub_154270(uint64_t a1)
{
  sub_1543B4(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1543B4(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_BBD1C();
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1543B4(319, &unk_1C7E30, &type metadata accessor for DialogDuration);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1543B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SleepQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SleepQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
        JUMPOUT(0x15455CLL);
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_154598()
{
  result = qword_1CB7D8;
  if (!qword_1CB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB7D8);
  }

  return result;
}

unint64_t sub_1545F0()
{
  result = qword_1CB7E0;
  if (!qword_1CB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB7E0);
  }

  return result;
}

unint64_t sub_154648()
{
  result = qword_1CB7E8;
  if (!qword_1CB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB7E8);
  }

  return result;
}

uint64_t sub_15469C()
{

  return sub_16E63C();
}

uint64_t sub_1546F4()
{

  return type metadata accessor for SleepQueryModel(0);
}

uint64_t sub_154758()
{

  return type metadata accessor for SleepQueryModel(0);
}

uint64_t sub_154788()
{
  sub_8A88();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 152) = v3;
  v4 = sub_16DBEC();
  *(v0 + 56) = v4;
  *(v0 + 64) = *(v4 - 8);
  *(v0 + 72) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_154838(uint64_t a1)
{
  v48 = v1;
  v2 = *(v1 + 152);
  v3 = v2 - 89;
  v4 = (v2 - 89) > 0x12;
  if ((v2 - 89) > 0x12)
  {
    goto LABEL_2;
  }

  if (((1 << v3) & 0x44181) != 0)
  {
LABEL_20:
    v23 = swift_task_alloc();
    *(v1 + 80) = v23;
    *v23 = v1;
    v23[1] = sub_154E1C;
    sub_8CC0();

    return sub_156AE4(v24, v25, v26);
  }

  v4 = v3 > 0x10;
  if (v2 != 105)
  {
LABEL_2:
    if (!v4)
    {
      switch(*(v1 + 152))
      {
        case 0x93:
          v29 = swift_task_alloc();
          *(v1 + 96) = v29;
          *v29 = v1;
          sub_1588B4(v29);
          sub_8CC0();

          return sub_1559AC();
        case 0x94:
        case 0x95:
        case 0x98:
        case 0x99:
        case 0x9A:
          goto LABEL_14;
        case 0x96:
          v35 = swift_task_alloc();
          *(v1 + 104) = v35;
          *v35 = v1;
          sub_1588B4(v35);
          sub_8CC0();

          return sub_155B38();
        case 0x97:
          v37 = swift_task_alloc();
          *(v1 + 112) = v37;
          *v37 = v1;
          sub_1588B4(v37);
          sub_8CC0();

          return sub_155CC4();
        case 0x9B:
          v33 = swift_task_alloc();
          *(v1 + 120) = v33;
          *v33 = v1;
          sub_1588B4(v33);
          sub_8CC0();

          return sub_155E50();
        default:
          JUMPOUT(0);
      }
    }

    if (v2 != 159)
    {
      switch(v2)
      {
        case 162:
          v45 = swift_task_alloc();
          *(v1 + 128) = v45;
          *v45 = v1;
          sub_1588B4(v45);
          sub_8CC0();

          return sub_15620C();
        case 170:
          v41 = swift_task_alloc();
          *(v1 + 136) = v41;
          *v41 = v1;
          sub_1588B4(v41);
          sub_8CC0();

          return sub_15677C(v42, v43);
        case 173:
          v39 = swift_task_alloc();
          *(v1 + 144) = v39;
          *v39 = v1;
          sub_1588B4(v39);
          sub_8CC0();

          return sub_156958();
      }

      if (v2 != 174 && v2 != 189 && v2 != 184)
      {
LABEL_14:
        v6 = *(v1 + 64);
        v5 = *(v1 + 72);
        v7 = *(v1 + 56);
        v8 = sub_16DBBC();
        swift_beginAccess();
        (*(v6 + 16))(v5, v8, v7);
        v9 = sub_16DBDC();
        v10 = sub_16E37C();
        v11 = os_log_type_enabled(v9, v10);
        v13 = *(v1 + 64);
        v12 = *(v1 + 72);
        v14 = *(v1 + 56);
        if (v11)
        {
          v15 = *(v1 + 152);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v47 = v17;
          *v16 = 136315138;
          v18 = sub_208C0(v15);
          v20 = sub_3AB7C(v18, v19, &v47);

          *(v16 + 4) = v20;
          _os_log_impl(&def_259DC, v9, v10, "No pattern implemented for %s", v16, 0xCu);
          sub_2D64(v17);
        }

        (*(v13 + 8))(v12, v14);

        sub_5D948();
        sub_8CC0();

        __asm { BRAA            X2, X16 }
      }
    }

    goto LABEL_20;
  }

  v31 = swift_task_alloc();
  *(v1 + 88) = v31;
  *v31 = v1;
  sub_1588B4(v31);
  sub_8CC0();

  return sub_1556F8();
}

uint64_t sub_154E1C()
{
  sub_386A8();
  sub_1588C8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();

  v3 = sub_158888();

  return v4(v3);
}

uint64_t sub_154F18()
{
  sub_386A8();
  sub_1588C8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();

  v3 = sub_158888();

  return v4(v3);
}

uint64_t sub_155014()
{
  sub_386A8();
  sub_1588C8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();

  v3 = sub_158888();

  return v4(v3);
}

uint64_t sub_155110()
{
  sub_386A8();
  sub_1588C8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();

  v3 = sub_158888();

  return v4(v3);
}

uint64_t sub_15520C()
{
  sub_386A8();
  sub_1588C8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();

  v3 = sub_158888();

  return v4(v3);
}

uint64_t sub_155308()
{
  sub_386A8();
  sub_1588C8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();

  v3 = sub_158888();

  return v4(v3);
}

uint64_t sub_155404()
{
  sub_386A8();
  sub_1588C8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();

  v3 = sub_158888();

  return v4(v3);
}

uint64_t sub_155500()
{
  sub_386A8();
  sub_1588C8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();

  v3 = sub_158888();

  return v4(v3);
}

uint64_t sub_1555FC()
{
  sub_386A8();
  sub_1588C8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();

  v3 = sub_158888();

  return v4(v3);
}

uint64_t sub_1556F8()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v0[4] = sub_8BC0();
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v4);
  v0[5] = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_1557A8()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(105, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_38F74();

  return sub_10C1E8();
}

uint64_t sub_155888()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v3 = v2;
  *v3 = *v1;

  sub_5DA54();
  if (v0)
  {
  }

  else
  {
    sub_158A18();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v4);
}

uint64_t sub_1559AC()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v0[4] = sub_8BC0();
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v4);
  v0[5] = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_155A5C()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(147, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_158948();
  sub_38F74();

  return sub_109C1C();
}

uint64_t sub_155B38()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v0[4] = sub_8BC0();
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v4);
  v0[5] = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_155BE8()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(150, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_158948();
  sub_38F74();

  return sub_109F38();
}

uint64_t sub_155CC4()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v0[4] = sub_8BC0();
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v4);
  v0[5] = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_155D74()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(151, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_158948();
  sub_38F74();

  return sub_10A254();
}

uint64_t sub_155E50()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v0[4] = sub_8BC0();
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v4);
  v0[5] = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_155F00()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(155, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155FDC;
  sub_158948();
  sub_38F74();

  return sub_10A570();
}

uint64_t sub_155FDC()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v3 = v2;
  *v3 = *v1;

  sub_5DA54();
  if (v0)
  {
  }

  else
  {
    sub_158A18();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v4);
}

uint64_t sub_156100()
{
  sub_386A8();
  v1 = *(v0 + 64);
  sub_C878(*(v0 + 40), &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v2(v1);
}

uint64_t sub_15618C()
{
  sub_8A88();
  sub_C878(*(v0 + 40), &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v1(0);
}

uint64_t sub_15620C()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v0[4] = sub_8BC0();
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v4);
  v0[5] = sub_8BC0();
  v5 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v5);
  v0[6] = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_1562E8()
{
  sub_C9EC();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_16BD9C();
  v4 = 1;
  sub_8AB4();
  sub_214C(v5, v6, v7, v8);
  sub_12093C(162, v2, v1);
  sub_C878(v2, &qword_1C5690, &dword_16F320);
  v9 = sub_5FF28(v3);
  sub_13A5C4(v9, v10);
  v12 = v11;

  if (v12)
  {
    sub_16E23C();

    v4 = 0;
  }

  v13 = v0[6];
  v15 = v0[3];
  v14 = v0[4];
  v16 = v0[2];
  v17 = sub_16D5CC();
  sub_214C(v14, v4, 1, v17);
  v18 = sub_16D2DC();
  sub_8D14(v18);
  sub_16D2CC();
  [v16 doubleValue];
  sub_16D40C();

  sub_16D3FC();

  v19 = sub_16D3EC();
  v0[7] = v19;

  sub_2D20((v15 + 80), *(v15 + 104));
  v20 = swift_task_alloc();
  v0[8] = v20;
  v20[2] = v19;
  v20[3] = v16;
  v20[4] = v13;
  v21 = swift_task_alloc();
  v0[9] = v21;
  *v21 = v0;
  v21[1] = sub_1564E4;

  return sub_10AEC8();
}

uint64_t sub_1564E4()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v4 = v3;
  *v4 = *v2;

  sub_5DA54();
  if (v1)
  {
  }

  else
  {
    *(v3 + 80) = v0;
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v5);
}

uint64_t sub_156610()
{
  sub_386A8();
  v1 = v0[10];

  v2 = v0[6];
  sub_C878(v0[4], &qword_1C5800, &unk_16F510);
  sub_C878(v2, &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v3(v1);
}

uint64_t sub_1566C8()
{
  sub_386A8();

  v1 = *(v0 + 48);
  sub_C878(*(v0 + 32), &qword_1C5800, &unk_16F510);
  sub_C878(v1, &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v2(0);
}

uint64_t sub_15677C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_17960();
  return _swift_task_switch(v3);
}

uint64_t sub_1567A4()
{
  sub_386A8();
  sub_2D20((*(v0 + 24) + 80), *(*(v0 + 24) + 104));
  sub_158AE4();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_15685C;
  v2 = sub_158A0C();

  return v4(v2, 170);
}

uint64_t sub_15685C()
{
  sub_8A88();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;

  if (v0)
  {

    v3 = 0;
  }

  sub_5D948();

  return v6(v3);
}

uint64_t sub_156958()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v0[4] = sub_8BC0();
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v4);
  v0[5] = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_156A08()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(173, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_158948();
  sub_38F74();

  return sub_10BD24();
}

uint64_t sub_156AE4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 40) = a1;
  v4 = sub_17960();
  return _swift_task_switch(v4);
}

uint64_t sub_156B10()
{
  sub_386A8();
  sub_2D20((*(v0 + 24) + 80), *(*(v0 + 24) + 104));
  sub_158AE4();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_158884;
  v2 = sub_158A0C();

  return v4(v2);
}

void sub_156BC8()
{
  sub_5DF60();
  sub_1589B0(v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v8);
  sub_433C();
  __chkstk_darwin(v9);
  sub_13088();
  v64 = v10;
  sub_158B10();
  sub_42F0();
  v60 = v12;
  v61 = v11;
  __chkstk_darwin(v11);
  v59 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2440(&qword_1C57E0, &unk_171C60);
  v15 = sub_4348(v14);
  __chkstk_darwin(v15);
  sub_887C();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = sub_2440(&qword_1C5800, &unk_16F510);
  v23 = sub_4348(v22);
  __chkstk_darwin(v23);
  sub_887C();
  v62 = v24 - v25;
  sub_89B4();
  v27 = __chkstk_darwin(v26);
  v29 = &v59 - v28;
  __chkstk_darwin(v27);
  v31 = &v59 - v30;
  sub_208C0(v1);
  sub_16E23C();

  v32 = 1;
  v33 = sub_16D5CC();
  sub_214C(v31, 0, 1, v33);
  v34 = v2(0);
  sub_8640(v31, v0 + v34[6]);
  [v3 doubleValue];
  v36 = v35;
  v37 = sub_5FF28(v3);
  sub_99F0C(v37, v38, v1, v36);

  sub_158958(v34[10]);
  sub_5FF28(v3);
  if (v39)
  {
    sub_16E23C();

    v32 = 0;
  }

  v40 = 1;
  v41 = v32;
  v42 = v33;
  sub_214C(v29, v41, 1, v33);
  sub_8640(v29, v0 + v34[9]);
  v43 = sub_16D4CC();
  sub_8D14(v43);
  sub_16D4BC();
  v44 = [v3 start];
  if (v44)
  {
    v45 = v44;
    sub_16BF3C();

    v40 = 0;
  }

  v46 = v61;
  sub_214C(v18, v40, 1, v61);
  sub_1586E0(v18, v21);
  if (sub_369C(v21, 1, v46))
  {
    sub_C878(v21, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v47 = v59;
    v48 = v60;
    v49 = sub_158A9C();
    v50(v49);
    sub_C878(v21, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v48 + 8))(v47, v46);
  }

  sub_16D4AC();

  v51 = sub_16D49C();

  v52 = v34[7];

  *(v0 + v52) = v51;
  v53 = v64;
  sub_372FC(v63, v64);
  v54 = sub_16BE9C();
  if (sub_369C(v53, 1, v54) == 1)
  {
    sub_C878(v53, &qword_1C57F8, &unk_172510);
    v55 = v62;
    sub_8AB4();
    sub_214C(v56, v57, v58, v42);
  }

  else
  {
    v55 = v62;
    sub_61120(v62);
    (*(*(v54 - 8) + 8))(v53, v54);
  }

  sub_8640(v55, v0);
  sub_5DFAC();
}

void sub_15705C()
{
  sub_5DF60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  sub_13088();
  v58 = v8;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v9);
  sub_433C();
  __chkstk_darwin(v10);
  sub_13088();
  v59 = v11;
  v12 = sub_158B10();
  sub_42F0();
  v56[2] = v13;
  __chkstk_darwin(v14);
  sub_15890C(v15, v56[0]);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  v17 = sub_4348(v16);
  __chkstk_darwin(v17);
  sub_887C();
  __chkstk_darwin(v18);
  v20 = v56 - v19;
  v21 = sub_2440(&qword_1C5800, &unk_16F510);
  v22 = sub_4348(v21);
  __chkstk_darwin(v22);
  sub_887C();
  v57 = v23 - v24;
  sub_89B4();
  __chkstk_darwin(v25);
  sub_158AB0();
  __chkstk_darwin(v26);
  sub_76CCC();
  sub_208C0(v3);
  sub_16E23C();

  sub_16D5CC();
  v27 = sub_158968();
  v61 = v28;
  sub_214C(v27, v29, v30, v28);
  v31 = type metadata accessor for WellnessLoggingGenericDatatypeParameters(0);
  sub_158A30(v31);
  [v1 doubleValue];
  v32 = sub_5FF28(v1);
  sub_158AC4(v32, v33);

  sub_158958(*(v31 + 36));
  sub_5FF28(v1);
  if (v34)
  {
    sub_16E23C();
  }

  sub_1589C8();
  v35 = sub_16D4CC();
  sub_8D14(v35);
  sub_16D4BC();
  v36 = [v1 start];
  v37 = v59;
  if (v36)
  {
    v38 = v36;
    sub_16BF3C();
  }

  sub_158A60();
  if (sub_369C(v20, 1, v12))
  {
    sub_C878(v20, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v39 = sub_158994();
    v40(v39);
    sub_C878(v20, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v41 = sub_158A4C();
    v42(v41);
  }

  sub_16D4AC();

  sub_16D49C();
  sub_158A0C();

  v43 = *(v31 + 28);

  *(v5 + v43) = v20;
  sub_16BD9C();
  v44 = v58;
  sub_8AB4();
  sub_214C(v45, v46, v47, v48);
  sub_12093C(v60, v44, v37);
  sub_C878(v44, &qword_1C5690, &dword_16F320);
  v49 = sub_16BE9C();
  sub_76A04(v37);
  if (v50)
  {
    sub_C878(v37, &qword_1C57F8, &unk_172510);
    v54 = v57;
    sub_8AB4();
    sub_214C(v51, v52, v53, v61);
  }

  else
  {
    v54 = v57;
    sub_61120(v57);
    sub_76AEC();
    (*(v55 + 8))(v37, v49);
  }

  sub_8640(v54, v5);
  sub_5DFAC();
}

void sub_1574C8()
{
  sub_5DF60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  sub_13088();
  v58 = v8;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v9);
  sub_433C();
  __chkstk_darwin(v10);
  sub_13088();
  v59 = v11;
  v12 = sub_158B10();
  sub_42F0();
  v56[2] = v13;
  __chkstk_darwin(v14);
  sub_15890C(v15, v56[0]);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  v17 = sub_4348(v16);
  __chkstk_darwin(v17);
  sub_887C();
  __chkstk_darwin(v18);
  v20 = v56 - v19;
  v21 = sub_2440(&qword_1C5800, &unk_16F510);
  v22 = sub_4348(v21);
  __chkstk_darwin(v22);
  sub_887C();
  v57 = v23 - v24;
  sub_89B4();
  __chkstk_darwin(v25);
  sub_158AB0();
  __chkstk_darwin(v26);
  sub_76CCC();
  sub_208C0(v3);
  sub_16E23C();

  sub_16D5CC();
  v27 = sub_158968();
  v61 = v28;
  sub_214C(v27, v29, v30, v28);
  v31 = type metadata accessor for WellnessLoggingGenericDatatypeParameters(0);
  sub_158A30(v31);
  [v1 doubleValue];
  v32 = sub_5FF28(v1);
  sub_158AC4(v32, v33);

  sub_158958(*(v31 + 36));
  sub_5FF28(v1);
  if (v34)
  {
    sub_16E23C();
  }

  sub_1589C8();
  v35 = sub_16D4CC();
  sub_8D14(v35);
  sub_16D4BC();
  v36 = [v1 start];
  v37 = v59;
  if (v36)
  {
    v38 = v36;
    sub_16BF3C();
  }

  sub_158A60();
  if (sub_369C(v20, 1, v12))
  {
    sub_C878(v20, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v39 = sub_158994();
    v40(v39);
    sub_C878(v20, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v41 = sub_158A4C();
    v42(v41);
  }

  sub_16D4AC();

  sub_16D49C();
  sub_158A0C();

  v43 = *(v31 + 28);

  *(v5 + v43) = v20;
  sub_16BD9C();
  v44 = v58;
  sub_8AB4();
  sub_214C(v45, v46, v47, v48);
  sub_12093C(v60, v44, v37);
  sub_C878(v44, &qword_1C5690, &dword_16F320);
  v49 = sub_16BE9C();
  sub_76A04(v37);
  if (v50)
  {
    sub_C878(v37, &qword_1C57F8, &unk_172510);
    v54 = v57;
    sub_8AB4();
    sub_214C(v51, v52, v53, v61);
  }

  else
  {
    v54 = v57;
    sub_61120(v57);
    sub_76AEC();
    (*(v55 + 8))(v37, v49);
  }

  sub_8640(v54, v5);
  sub_5DFAC();
}

uint64_t sub_15792C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = a4;
  v42 = a3;
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_16BF5C();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440(&qword_1C57E0, &unk_171C60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = sub_2440(&qword_1C5800, &unk_16F510);
  v18 = __chkstk_darwin(v17 - 8);
  v43 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v39 - v20;
  v22 = type metadata accessor for WellnessLoggingHeightParameters(0);
  v23 = v22[7];

  *(a1 + v23) = a2;
  v24 = v42;
  sub_5FF28(v42);
  if (v25)
  {
    sub_16E23C();

    v26 = sub_16D5CC();
    v27 = 0;
  }

  else
  {
    v26 = sub_16D5CC();
    v27 = 1;
  }

  v28 = 1;
  sub_214C(v21, v27, 1, v26);
  sub_8640(v21, a1 + v22[9]);
  sub_16D4CC();
  swift_allocObject();
  sub_16D4BC();
  v29 = [v24 start];
  if (v29)
  {
    v30 = v29;
    sub_16BF3C();

    v28 = 0;
  }

  sub_214C(v14, v28, 1, v9);
  sub_1586E0(v14, v16);
  if (sub_369C(v16, 1, v9))
  {
    sub_C878(v16, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v31 = v40;
    v32 = v41;
    (*(v41 + 16))(v40, v16, v9);
    sub_C878(v16, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v32 + 8))(v31, v9);
  }

  v33 = v43;
  sub_16D4AC();

  v34 = sub_16D49C();

  v35 = v22[8];

  *(a1 + v35) = v34;
  sub_372FC(v44, v8);
  v36 = sub_16BE9C();
  if (sub_369C(v8, 1, v36) == 1)
  {
    sub_C878(v8, &qword_1C57F8, &unk_172510);
    v37 = sub_16D5CC();
    sub_214C(v33, 1, 1, v37);
  }

  else
  {
    sub_61120(v33);
    (*(*(v36 - 8) + 8))(v8, v36);
  }

  return sub_8640(v33, a1);
}

void sub_157DBC()
{
  sub_5DF60();
  v62 = v5;
  sub_1589B0(v6, v7, v8, v9);
  v10 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v10);
  sub_433C();
  __chkstk_darwin(v11);
  sub_13088();
  v66 = v12;
  v63 = sub_158B10();
  sub_42F0();
  v61 = v13;
  __chkstk_darwin(v14);
  sub_15890C(v15, v60[0]);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  v17 = sub_4348(v16);
  __chkstk_darwin(v17);
  sub_887C();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v60 - v22;
  v24 = sub_2440(&qword_1C5800, &unk_16F510);
  v25 = sub_4348(v24);
  __chkstk_darwin(v25);
  sub_887C();
  v64 = v26 - v27;
  sub_89B4();
  __chkstk_darwin(v28);
  sub_76CCC();
  sub_208C0(v1);
  sub_16E23C();

  v29 = sub_16D5CC();
  v30 = 1;
  v31 = sub_158968();
  sub_214C(v31, v32, v33, v29);
  v34 = v2(0);
  sub_158A30(v34);
  [v4 doubleValue];
  v36 = v35;
  v37 = sub_5FF28(v4);
  sub_99F0C(v37, v38, v1, v36);

  sub_158958(v34[10]);
  sub_16E23C();
  v39 = sub_158968();
  v62 = v29;
  sub_214C(v39, v40, v41, v29);
  sub_8640(v3, v0 + v34[9]);
  v42 = sub_16D4CC();
  sub_8D14(v42);
  sub_16D4BC();
  v43 = [v4 start];
  if (v43)
  {
    v44 = v43;
    sub_16BF3C();

    v30 = 0;
  }

  v45 = v63;
  sub_214C(v20, v30, 1, v63);
  sub_1586E0(v20, v23);
  if (sub_369C(v23, 1, v45))
  {
    sub_C878(v23, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v46 = v60[1];
    v47 = v61;
    v48 = sub_158A9C();
    v49(v48);
    sub_C878(v23, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v47 + 8))(v46, v45);
  }

  sub_16D4AC();

  v50 = sub_16D49C();

  v51 = v34[7];

  *(v0 + v51) = v50;
  v52 = v66;
  sub_372FC(v65, v66);
  sub_16BE9C();
  v53 = sub_158A0C();
  sub_76A04(v53);
  if (v54)
  {
    sub_C878(v52, &qword_1C57F8, &unk_172510);
    v58 = v64;
    sub_8AB4();
    sub_214C(v55, v56, v57, v62);
  }

  else
  {
    v58 = v64;
    sub_61120(v64);
    sub_76AEC();
    (*(v59 + 8))(v52, v34);
  }

  sub_8640(v58, v0);
  sub_5DFAC();
}

uint64_t sub_1581D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v53 = a4;
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v7 - 8);
  v54 = &v49 - v8;
  v9 = sub_16BF5C();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v49 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440(&qword_1C57E0, &unk_171C60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = sub_2440(&qword_1C5800, &unk_16F510);
  v18 = __chkstk_darwin(v17 - 8);
  v52 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v49 - v21;
  __chkstk_darwin(v20);
  v24 = &v49 - v23;
  sub_208C0(a2);
  sub_16E23C();

  v25 = 1;
  v26 = sub_16D5CC();
  sub_214C(v24, 0, 1, v26);
  v27 = type metadata accessor for WellnessLoggingWeightParameters(0);
  sub_8640(v24, a1 + v27[6]);
  [a3 doubleValue];
  v29 = v28;
  v30 = sub_5FF28(a3);
  v32 = sub_99F0C(v30, v31, a2, v29);

  v33 = a1 + v27[9];
  *v33 = v32;
  *(v33 + 8) = 0;
  sub_5FF28(a3);
  if (v34)
  {
    sub_16E23C();

    v25 = 0;
  }

  v35 = 1;
  v36 = v25;
  v37 = v26;
  sub_214C(v22, v36, 1, v26);
  sub_8640(v22, a1 + v27[8]);
  sub_16D4CC();
  swift_allocObject();
  sub_16D4BC();
  v38 = [a3 start];
  if (v38)
  {
    v39 = v38;
    sub_16BF3C();

    v35 = 0;
  }

  v40 = v51;
  sub_214C(v14, v35, 1, v51);
  sub_1586E0(v14, v16);
  if (sub_369C(v16, 1, v40))
  {
    sub_C878(v16, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v41 = v49;
    v42 = v50;
    (*(v50 + 16))(v49, v16, v40);
    sub_C878(v16, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v42 + 8))(v41, v40);
  }

  sub_16D4AC();

  v43 = sub_16D49C();

  v44 = v27[7];

  *(a1 + v44) = v43;
  v45 = v54;
  sub_372FC(v53, v54);
  v46 = sub_16BE9C();
  if (sub_369C(v45, 1, v46) == 1)
  {
    sub_C878(v45, &qword_1C57F8, &unk_172510);
    v47 = v52;
    sub_214C(v52, 1, 1, v37);
  }

  else
  {
    v47 = v52;
    sub_61120(v52);
    (*(*(v46 - 8) + 8))(v45, v46);
  }

  return sub_8640(v47, a1);
}

uint64_t sub_1586E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_15889C(uint64_t result)
{
  *(v2 + 48) = result;
  *(result + 16) = v4;
  *(result + 24) = v3;
  *(result + 32) = v1;
  return result;
}

uint64_t sub_1588D8()
{
  sub_2D20((v0 + 80), *(v0 + 104));

  return swift_task_alloc();
}

uint64_t sub_158928(uint64_t a1)
{

  return sub_214C(v1, 1, 1, a1);
}

void sub_158958(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t sub_158978()
{

  return sub_16BD9C();
}

uint64_t sub_1589C8()
{
  sub_214C(v1, v2, 1, *(v4 - 104));
  v5 = v0 + *(v3 + 32);

  return sub_8640(v1, v5);
}

uint64_t sub_158A18()
{
  *(v1 + 64) = v0;
}

uint64_t sub_158A30(uint64_t a1)
{
  v4 = v1 + *(a1 + 24);

  return sub_8640(v2, v4);
}

uint64_t sub_158A60()
{
  sub_214C(v2, v1, 1, v3);

  return sub_1586E0(v2, v0);
}

double sub_158AC4(uint64_t a1, uint64_t a2)
{
  *(v3 - 108) = v2;

  return sub_99F0C(a1, a2, v2, v5);
}

id sub_158AE4()
{

  return v0;
}

uint64_t sub_158B10()
{

  return sub_16BF5C();
}

unint64_t sub_158B28(char a1)
{
  result = 0x6978456B63656863;
  switch(a1)
  {
    case 1:
      v3 = 1634038371;
      goto LABEL_8;
    case 2:
      v3 = 1701602660;
      goto LABEL_8;
    case 3:
      return 0x627265566F6ELL;
    case 4:
      return 1852141679;
    case 5:
      v3 = 1633972341;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      result = 0x4C74736575716572;
      break;
    case 7:
      result = 0x736972616D6D7573;
      break;
    case 8:
      result = 0x74736575716572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_158C3C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1B7678;
  v6._object = a2;
  v4 = sub_16E55C(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_158CB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_158C3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_158CE8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_158B28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x158E78);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_158EB4()
{
  result = qword_1CB7F0;
  if (!qword_1CB7F0)
  {
    sub_9790(&qword_1CB7F8, qword_179258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB7F0);
  }

  return result;
}

unint64_t sub_158F1C()
{
  result = qword_1CB800;
  if (!qword_1CB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB800);
  }

  return result;
}

uint64_t sub_158F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_369C(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_159058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&qword_1C5690, &dword_16F320);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_214C(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for UnavailableDataFlow(uint64_t a1)
{
  result = qword_1CB860;
  if (!qword_1CB860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_159160(uint64_t a1)
{
  sub_159264(319);
  if (v1 <= 0x3F)
  {
    sub_8E16C(319, &qword_1C8A68, &protocol descriptor for FlowConfigurable);
    if (v2 <= 0x3F)
    {
      sub_8E16C(319, &unk_1CB870, &protocol descriptor for ResponseGenerating);
      if (v3 <= 0x3F)
      {
        type metadata accessor for WellnessCATsSimple(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for WellnessCATs(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_159264(uint64_t a1)
{
  if (!qword_1C5708)
  {
    sub_16BD9C();
    v1 = sub_16E3EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C5708);
    }
  }
}

uint64_t sub_1592BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnavailableDataFlow(0);
  sub_15AD44(&qword_1C57C8, type metadata accessor for UnavailableDataFlow, &unk_179388);

  return sub_16C33C();
}

uint64_t sub_159348()
{
  sub_8A88();
  v1[17] = v2;
  v1[18] = v0;
  v3 = type metadata accessor for GenericButtonModel(0);
  v1[19] = v3;
  sub_4348(v3);
  v1[20] = sub_8BC0();
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v4);
  v1[21] = sub_8BC0();
  v5 = sub_16BE9C();
  v1[22] = v5;
  sub_888C(v5);
  v1[23] = v6;
  v1[24] = sub_8BC0();
  v7 = sub_16C46C();
  v1[25] = v7;
  sub_888C(v7);
  v1[26] = v8;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v9 = sub_16C7BC();
  v1[29] = v9;
  sub_888C(v9);
  v1[30] = v10;
  v1[31] = sub_8BC0();
  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v11);
  v1[32] = sub_8BC0();
  v12 = sub_16BF5C();
  v1[33] = v12;
  sub_888C(v12);
  v1[34] = v13;
  v1[35] = sub_8BC0();
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v15 = sub_16BD9C();
  v1[38] = v15;
  sub_888C(v15);
  v1[39] = v16;
  v1[40] = sub_8BC0();
  v17 = sub_17960();

  return _swift_task_switch(v17);
}

uint64_t sub_1595EC()
{
  sub_D4EA4();
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 144);
  v4 = type metadata accessor for UnavailableDataFlow(0);
  *(v0 + 328) = v4;
  sub_15AC1C(v3 + *(v4 + 20), v2);
  if (sub_369C(v2, 1, v1) == 1)
  {
    sub_8748(*(v0 + 296), &qword_1C5690, &dword_16F320);
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 320);
    v17 = *(v0 + 312);
    v18 = *(v0 + 304);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = *(v0 + 264);
    (*(v17 + 32))(v6, *(v0 + 296));
    sub_16D38C();
    swift_allocObject();
    sub_16D37C();
    sub_16BD7C();
    sub_16BF2C();
    v10 = *(v7 + 8);
    v10(v8, v9);
    sub_16D35C();

    sub_16BD4C();
    sub_16BF2C();
    v10(v8, v9);
    sub_16D34C();

    v5 = sub_16D36C();

    (*(v17 + 8))(v6, v18);
  }

  *(v0 + 336) = v5;
  v11 = *(v0 + 256);
  v12 = *(v0 + 144);
  v13 = *v12;
  *(v0 + 400) = *v12;
  sub_208C0(v13);
  sub_16E23C();

  v14 = sub_16D5CC();
  sub_214C(v11, 0, 1, v14);
  v15 = swift_task_alloc();
  *(v0 + 344) = v15;
  *v15 = v0;
  v15[1] = sub_15985C;

  return sub_3EC8C();
}

uint64_t sub_15985C()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 256);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v7 + 352) = v6;
  *(v7 + 360) = v0;

  sub_8748(v3, &qword_1C5800, &unk_16F510);
  if (v0)
  {
    v8 = sub_15A2A8;
  }

  else
  {
    v8 = sub_159990;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_159990()
{
  sub_8430C();
  sub_D4EA4();
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 168);
  v54 = *(v0 + 304);
  v55 = *(v0 + 176);
  v8 = *(v0 + 400);
  sub_16C43C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v9 = [v1 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_214C(v2, 1, 1, v54);
  sub_12093C(v8, v2, v7);
  sub_8748(v2, &qword_1C5690, &dword_16F320);
  if (sub_369C(v7, 1, v55) == 1)
  {
    sub_8748(*(v0 + 168), &qword_1C57F8, &unk_172510);
LABEL_3:
    v10 = *(v0 + 352);
    v11 = (*(v0 + 144) + *(*(v0 + 328) + 32));
    sub_2D20(v11, v11[3]);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v12 = swift_allocObject();
    *(v0 + 384) = v12;
    *(v12 + 16) = xmmword_170F70;
    *(v12 + 32) = v10;
    v13 = v10;
    swift_task_alloc();
    sub_179E8();
    *(v0 + 392) = v14;
    *v14 = v15;
    v14[1] = sub_15A0D0;
    sub_841E0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20);
  }

  (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  v22 = sub_C9F8();
  sub_2D20(v22, v23);
  v24 = sub_42BC();
  v25(v24);
  sub_2D20((v0 + 16), *(v0 + 40));
  sub_42BC();
  if (sub_16C40C())
  {
    sub_2D64((v0 + 16));
  }

  else
  {
    v26 = sub_C9F8();
    sub_2D20(v26, v27);
    v28 = sub_42BC();
    v29(v28);
    sub_2D20((v0 + 56), *(v0 + 80));
    sub_C9F8();
    v30 = sub_16C3FC();
    sub_2D64((v0 + 56));
    sub_2D64((v0 + 16));
    if ((v30 & 1) == 0)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      goto LABEL_3;
    }
  }

  v56 = *(v0 + 352);
  v31 = *(v0 + 328);
  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v34 = *(v0 + 176);
  v36 = *(v0 + 152);
  v35 = *(v0 + 160);
  v37 = *(v0 + 144);
  v38 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
  v40 = v39;
  (*(v33 + 16))(v35 + *(v36 + 20), v32, v34);
  *v35 = v38;
  v35[1] = v40;
  sub_2D20((v37 + *(v31 + 32)), *(v37 + *(v31 + 32) + 24));
  *(v0 + 120) = type metadata accessor for WellnessSnippets(0);
  *(v0 + 128) = sub_15AD44(&qword_1C5EE0, type metadata accessor for WellnessSnippets, &protocol conformance descriptor for WellnessSnippets);
  v41 = sub_9910((v0 + 96));
  sub_15AC8C(v35, v41, type metadata accessor for GenericButtonModel);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v42 = swift_allocObject();
  *(v0 + 368) = v42;
  *(v42 + 16) = xmmword_170F70;
  *(v42 + 32) = v56;
  v43 = v56;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 376) = v44;
  *v44 = v45;
  v44[1] = sub_159EB4;
  sub_841E0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v46, v47, v48, v49, v50, v51);
}

uint64_t sub_159EB4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_2D64((v2 + 96));
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_159FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v15 = *(v14 + 160);

  sub_15ACEC(v15, type metadata accessor for GenericButtonModel);
  v16 = sub_C9F8();
  v17(v16);
  v18 = sub_15AD8C();
  v19(v18);

  sub_C9BC();
  sub_841E0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_15A0D0()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_15A1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();

  v15 = sub_15AD8C();
  v16(v15);

  sub_C9BC();
  sub_841E0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_15A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v24 = *(v14 + 168);
  v25 = *(v14 + 160);

  sub_C9BC();
  sub_841E0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24, v25, a12, a13, a14);
}

uint64_t sub_15A384()
{
  sub_8A88();
  v1[39] = v2;
  v1[40] = v0;
  v3 = type metadata accessor for UnavailableDataFlow(0);
  sub_4348(v3);
  v1[41] = sub_8BC0();
  v4 = sub_16DBEC();
  v1[42] = v4;
  sub_888C(v4);
  v1[43] = v5;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_15A45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_8430C();
  a21 = v23;
  a22 = v24;
  sub_D4EA4();
  a20 = v22;
  v25 = v22[45];
  v26 = v22[42];
  v27 = v22[43];
  v29 = v22[40];
  v28 = v22[41];
  v30 = sub_16DBBC();
  v22[46] = v30;
  swift_beginAccess();
  v31 = *(v27 + 16);
  v22[47] = v31;
  v22[48] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v25, v30, v26);
  sub_15AC8C(v29, v28, type metadata accessor for UnavailableDataFlow);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v22[45];
  v36 = v22[42];
  v37 = v22[43];
  v38 = v22[41];
  if (v34)
  {
    v50 = v22[45];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    a11 = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_3AB7C(0xD000000000000013, 0x8000000000179340, &a11);
    *(v39 + 12) = 2080;
    v41 = sub_208C0(*v38);
    v43 = v42;
    sub_15ADBC();
    v44 = sub_3AB7C(v41, v43, &a11);

    *(v39 + 14) = v44;
    _os_log_impl(&def_259DC, v32, v33, "%s for %s", v39, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v40);
    sub_8A2C(v39);

    v45 = *(v37 + 8);
    v45(v50, v36);
  }

  else
  {

    sub_15ADBC();
    v45 = *(v37 + 8);
    v45(v35, v36);
  }

  v22[49] = v45;
  swift_task_alloc();
  sub_179E8();
  v22[50] = v46;
  *v46 = v47;
  v46[1] = sub_15A6A4;
  sub_841E0();

  return sub_159348();
}

uint64_t sub_15A6A4()
{
  sub_8A88();
  sub_C9D4();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v4 + 408) = v0;

  if (v0)
  {
    v5 = sub_15A8CC;
  }

  else
  {
    v5 = sub_15A7A8;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_15A7A8()
{
  sub_8388(v0 + 176, v0 + 216);
  v1 = swift_allocObject();
  sub_17464((v0 + 216), v1 + 16);
  sub_16C73C();
  sub_16C1DC();
  swift_allocObject();
  *(v0 + 304) = sub_16C1CC();
  sub_16C4EC();
  sub_2D64((v0 + 176));

  sub_C9BC();

  return v2();
}

uint64_t sub_15A8CC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);
  swift_beginAccess();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = sub_16DBDC();
  v6 = sub_16E37C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&def_259DC, v5, v6, "%@", v7, 0xCu);
    sub_8748(v8, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v8);
    sub_8A2C(v7);
  }

  else
  {
  }

  (*(v0 + 392))(*(v0 + 352), *(v0 + 336));
  sub_6362C((v0 + 16));
  sub_82E0();
  sub_16C4EC();
  sub_8334(v0 + 16);

  sub_C9BC();

  return v10();
}

uint64_t sub_15AAB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_15A384();
}

uint64_t sub_15AB50()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_15AB88()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_15AC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15AC8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_8B38();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_15ACEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_15AD44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_15ADBC()
{

  return sub_15ACEC(v0, type metadata accessor for UnavailableDataFlow);
}

uint64_t sub_15ADE4(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_16DBEC();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_2440(&qword_1C5690, &dword_16F320);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_15AEE8);
}

uint64_t sub_15AEE8()
{
  v45 = v0;
  if (isMedicationRequest(from:)())
  {
    v1 = 122;
  }

  else
  {
    sub_B2EA4();
    v1 = v2;
    if (v2 == 270)
    {
      v4 = v0[10];
      v3 = v0[11];
      v5 = v0[9];
      v6 = sub_16DBBC();
      swift_beginAccess();
      (*(v4 + 16))(v3, v6, v5);
      v7 = sub_16DBDC();
      v8 = sub_16E37C();
      v9 = os_log_type_enabled(v7, v8);
      v11 = v0[10];
      v10 = v0[11];
      v12 = v0[9];
      if (v9)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&def_259DC, v7, v8, "Unable to log analytics event - nil datatype", v13, 2u);
      }

      (*(v11 + 8))(v10, v12);
LABEL_15:

      sub_8CC0();

      __asm { BRAA            X1, X16 }
    }
  }

  sub_16D74();
  v14 = sub_16E14C();
  v15 = sub_1730C(v1, v14);

  if (v15 == 205 || (v16 = sub_23324(v15), (v0[14] = v16) == 0))
  {
    v26 = v0[12];
    v27 = v0[9];
    v28 = v0[10];
    v29 = sub_16DBBC();
    swift_beginAccess();
    (*(v28 + 16))(v26, v29, v27);
    v30 = sub_16DBDC();
    v31 = sub_16E37C();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[12];
    v34 = v0[9];
    v35 = v0[10];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v37;
      *v36 = 136315138;
      sub_140650(v1);
      v40 = sub_3AB7C(v38, v39, &v44);

      *(v36 + 4) = v40;
      _os_log_impl(&def_259DC, v30, v31, "Unable to log analytics event - %s cannot be converted to HKObjectType", v36, 0xCu);
      sub_2D64(v37);
    }

    (*(v35 + 8))(v33, v34);
    goto LABEL_15;
  }

  v0[15] = [objc_allocWithZone(HKHealthStore) init];
  v0[16] = [objc_allocWithZone(HealthAppScribeAnalyticEventManager) init];
  v0[17] = sub_16E1AC();
  v17 = sub_16CF4C();
  v0[18] = qword_179418[sub_158C3C(v17, v18)];
  v19 = v0[13];
  sub_B379C();
  sub_15B77C(v19);
  sub_4208(v19);
  v0[19] = sub_16E1AC();

  v20 = sub_15B520();
  v21 = HAScribeAnalyticUserActionAssistantService;
  v0[20] = v20;
  v0[21] = v21;
  v22 = v21;
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_15B330;
  sub_8CC0();

  return isSiriAuthorizedToAccessHealthData(store:)(v24);
}

uint64_t sub_15B330(char a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_15B430);
}

void sub_15B430()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  BYTE1(v12) = sub_ACD38();
  LOBYTE(v12) = v1;
  [v7 submitEventWithDataType:v8 requestCategory:v6 requestType:v5 requestInterval:v4 hourOfDay:v2 userAction:v3 hasHealthDataAuthorization:v12 isFirstInvocation:?];

  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

id sub_15B520()
{
  v0 = sub_16C09C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_16C0BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_16BF5C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16BF4C();
  sub_16C08C();
  (*(v1 + 104))(v3, enum case for Calendar.Component.hour(_:), v0);
  v12 = sub_16C0AC();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  v13 = [objc_allocWithZone(NSNumber) initWithInteger:v12];
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_15B77C(uint64_t a1)
{
  v2 = sub_16BF5C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v24 - v7;
  v9 = sub_2440(&qword_1C5690, &dword_16F320);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v12 = sub_16BD9C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15AC1C(a1, v11);
  if (sub_369C(v11, 1, v12) == 1)
  {
    sub_4208(v11);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_16BD4C();
  sub_16BECC();
  v18 = v17;
  v19 = *(v3 + 8);
  v19(v8, v2);
  sub_16BD7C();
  sub_16BECC();
  v21 = v20;
  result = (v19)(v6, v2);
  v23 = round((v18 - v21) / 3600.0);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v23 < 9.22337204e18)
  {
    v24[1] = v23;
    v16 = sub_16E68C();
    (*(v13 + 8))(v15, v12);
    return v16;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t WatchRingsSnippet.body.getter()
{
  v0 = sub_2440(&qword_1CB8B8, &qword_179470);
  v1 = sub_15BB80();

  return SnippetBody.init(content:)(sub_15BAF8, 0, v0, v1);
}

double sub_15BAF8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_16DFAC();
  KeyPath = swift_getKeyPath();
  sub_16E01C();
  sub_16DC2C();
  *a1 = KeyPath;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

unint64_t sub_15BB80()
{
  result = qword_1CB8C0;
  if (!qword_1CB8C0)
  {
    sub_9790(&qword_1CB8B8, &qword_179470);
    sub_15BC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB8C0);
  }

  return result;
}

unint64_t sub_15BC0C()
{
  result = qword_1CB8C8;
  if (!qword_1CB8C8)
  {
    sub_9790(&qword_1CB8D0, &qword_179478);
    sub_15BCC4();
    sub_98C8(&qword_1CB8E0, &qword_1CB8E8, &qword_179480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB8C8);
  }

  return result;
}

unint64_t sub_15BCC4()
{
  result = qword_1CB8D8;
  if (!qword_1CB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB8D8);
  }

  return result;
}

uint64_t sub_15BD54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_15BD74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = (a2 - 1);
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

  *(result + 89) = v3;
  return result;
}

uint64_t sub_15BE0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_16DC9C();
  *a1 = result;
  return result;
}

uint64_t static UsoEntity_common_MedicationEvent.builder(dateTime:completionStatus:medSchedule:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16CEAC();
  swift_allocObject();
  v6 = sub_16CE9C();
  if (a1)
  {

    sub_16CE7C();
  }

  if (a2)
  {

    sub_16CE8C();
  }

  if (a3)
  {

    sub_16CE6C();
  }

  return v6;
}

uint64_t static UsoEntity_common_MedicationEvent.with(dateTime:completionStatus:medSchedule:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static UsoEntity_common_MedicationEvent.builder(dateTime:completionStatus:medSchedule:)(a1, a2, a3);
  sub_16CB4C();
  sub_16CD0C();
  sub_16CBBC();

  return v4;
}

void sub_15BF80()
{
  sub_4597C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2440(&qword_1C57E0, &unk_171C60);
  v10 = sub_4348(v9);
  __chkstk_darwin(v10);
  sub_887C();
  v13 = v11 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v40 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v40 - v19;
  __chkstk_darwin(v18);
  sub_15F484();
  v21 = sub_16BF5C();
  v41 = v8;
  v22 = 0;
  if (sub_369C(v8, 1, v21) != 1)
  {
    sub_1955C(v41, v0, &qword_1C57E0, &unk_171C60);
    sub_BFA18(v0);
    if (v23)
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_16D4EC();
    v22 = sub_16D47C();
    sub_15F51C();
    (*(v24 + 8))(v0, v21);
  }

  sub_BFA18(v6);
  if (v23)
  {
    v25 = 0;
    goto LABEL_9;
  }

  v26 = sub_8427C();
  sub_1955C(v26, v27, v28, v29);
  sub_BFA18(v20);
  if (v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_16D4EC();
  v25 = sub_16D47C();
  sub_15F51C();
  (*(v30 + 8))(v20, v21);
LABEL_9:
  sub_BFA18(v4);
  if (!v23)
  {
    sub_1955C(v4, v17, &qword_1C57E0, &unk_171C60);
    sub_BFA18(v17);
    if (!v23)
    {
      sub_16D4EC();
      v31 = sub_16D47C();
      sub_15F51C();
      (*(v32 + 8))(v17, v21);
      goto LABEL_14;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = 0;
LABEL_14:
  sub_BFA18(v2);
  if (v23)
  {
    v33 = 0;
LABEL_19:
    type metadata accessor for WellnessTime.Builder(0);
    swift_allocObject();
    sub_1261D0();
    sub_12621C(v22);

    sub_126260(v25);

    sub_1262A4(v31);

    v35 = sub_1262E8(v33);

    type metadata accessor for WellnessTime(0);
    swift_allocObject();
    sub_1263B0(v35);

    v36 = sub_9A808();
    sub_C878(v36, v37, &unk_171C60);
    sub_C878(v4, &qword_1C57E0, &unk_171C60);
    v38 = sub_8427C();
    sub_C878(v38, v39, &unk_171C60);
    sub_C878(v41, &qword_1C57E0, &unk_171C60);
    sub_45924();
    return;
  }

  sub_1955C(v2, v13, &qword_1C57E0, &unk_171C60);
  sub_BFA18(v13);
  if (!v23)
  {
    sub_16D4EC();
    v33 = sub_16D47C();
    sub_15F51C();
    (*(v34 + 8))(v13, v21);
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_15C3B4()
{
  *&result = COERCE_DOUBLE(sub_15E0F4());
  if ((v1 & 1) == 0)
  {
    *&result = fabs(*&result / 60.0);
  }

  return result;
}

uint64_t sub_15C3EC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_15EE1C();
  if (v3 == 6)
  {
    v4 = 1;
  }

  else
  {
    sub_C9934(v3);
    sub_16E23C();

    v4 = 0;
  }

  v5 = sub_16D5CC();

  return sub_214C(a2, v4, 1, v5);
}

void sub_15C468()
{
  sub_4597C();
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  sub_15F328();
  __chkstk_darwin(v6);
  sub_15F56C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_887C();
  sub_15F5B4();
  __chkstk_darwin(v10);
  sub_10E258();
  __chkstk_darwin(v11);
  sub_15F52C();
  sub_BFAD8(v2);
  if (v14)
  {
    v12 = v2;
LABEL_7:
    sub_C878(v12, &qword_1C57E0, &unk_171C60);
    goto LABEL_8;
  }

  v13 = sub_15F3F4();
  v3(v13);
  sub_15E4EC(v0);
  sub_BFAD8(v0);
  if (v14)
  {
    v15 = sub_8427C();
    v16(v15);
    v12 = v0;
    goto LABEL_7;
  }

  v17 = sub_15F5D4();
  v3(v17);
  v18 = sub_C9E0();
  v20 = sub_15E55C(v18, v19);
  if ((v21 & 1) != 0 || v20 != 6)
  {
    v27 = *(v8 + 8);
    v28 = sub_9A808();
    v27(v28);
    v29 = sub_8427C();
    v27(v29);
  }

  else
  {
    sub_15E7C0(v1);
    v22 = sub_C9E0();
    sub_15EB20(v22, v23);
    v24 = sub_15F470();
    v0(v24);
    v25 = sub_9A808();
    v0(v25);
    v26 = sub_8427C();
    v0(v26);
  }

LABEL_8:
  sub_45924();
}

void sub_15C678()
{
  sub_4597C();
  v3 = sub_16C0BC();
  sub_42F0();
  __chkstk_darwin(v4);
  sub_12FD4();
  v5 = sub_2440(&qword_1C8480, &unk_1742D0);
  sub_4348(v5);
  sub_433C();
  __chkstk_darwin(v6);
  sub_15F494(v7, v66);
  v8 = sub_2440(&qword_1C8488, &unk_173C60);
  sub_4348(v8);
  sub_433C();
  __chkstk_darwin(v9);
  sub_15F4A8(v10, v67);
  sub_42F0();
  __chkstk_darwin(v11);
  sub_12FD4();
  v12 = sub_2440(&qword_1C57E0, &unk_171C60);
  v13 = sub_4348(v12);
  __chkstk_darwin(v13);
  sub_887C();
  sub_15F508();
  v15 = __chkstk_darwin(v14);
  sub_15F40C(v15, v16, v17, v18, v19, v20, v21, v22, v68);
  __chkstk_darwin(v23);
  sub_10E258();
  __chkstk_darwin(v24);
  sub_15F54C();
  sub_42F0();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_15F328();
  __chkstk_darwin(v28);
  sub_B62E8();
  __chkstk_darwin(v29);
  sub_15F484();
  sub_15E47C(v2);
  sub_BFAB8(v2);
  if (v34)
  {
    v30 = &qword_1C57E0;
    v31 = &unk_171C60;
    v32 = v2;
  }

  else
  {
    v33 = sub_15F3BC();
    v3(v33);
    sub_15E4EC(v1);
    sub_BFAB8(v1);
    if (v34)
    {
      v35 = sub_15F44C();
      v36(v35);
      v30 = &qword_1C57E0;
      v31 = &unk_171C60;
      v32 = v1;
    }

    else
    {
      v37 = sub_C9E0();
      v3(v37);
      v38 = sub_15F58C();
      v40 = sub_15E55C(v38, v39);
      if ((v41 & 1) != 0 || v40 != 6)
      {
        v56 = *(v26 + 8);
        v57 = sub_1064C0();
        v56(v57);
        v58 = sub_15F44C();
        v56(v58);
        goto LABEL_8;
      }

      v42 = sub_15F4CC();
      sub_214C(v69, 1, 1, v42);
      sub_15F344();
      sub_15F5A4();
      sub_15F390();
      sub_16BE1C();
      sub_15F610();
      sub_15E7C0(v0);
      sub_15F424();
      v43 = *(v26 + 8);
      v44 = sub_15F598();
      v43(v44);
      v45 = sub_15F5C4();
      v47 = v46(v45);
      sub_15F5F4(v47, v48, &qword_1C57E0, &unk_171C60);
      sub_BFAB8(v0);
      if (!v34)
      {
        v59 = sub_15F58C();
        sub_15EB20(v59, v60);
        sub_C878(v2, &qword_1C57E0, &unk_171C60);
        v61 = sub_15F3AC();
        v62(v61);
        v63 = sub_1064C0();
        v43(v63);
        v64 = sub_15F44C();
        v43(v64);
        v65 = sub_15F598();
        v43(v65);
        goto LABEL_8;
      }

      sub_45624();
      sub_C878(v49, v50, v51);
      v52 = sub_15F3AC();
      v53(v52);
      v54 = sub_1064C0();
      v43(v54);
      v55 = sub_15F44C();
      v43(v55);
      sub_45624();
    }
  }

  sub_C878(v32, v30, v31);
LABEL_8:
  sub_45924();
}

void sub_15CB0C()
{
  sub_4597C();
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  sub_15F328();
  __chkstk_darwin(v6);
  sub_15F56C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_887C();
  sub_15F5B4();
  __chkstk_darwin(v10);
  sub_10E258();
  __chkstk_darwin(v11);
  sub_15F52C();
  sub_BFAD8(v2);
  if (v14)
  {
    v12 = v2;
LABEL_7:
    sub_C878(v12, &qword_1C57E0, &unk_171C60);
    goto LABEL_8;
  }

  v13 = sub_15F3F4();
  v3(v13);
  sub_15E4EC(v0);
  sub_BFAD8(v0);
  if (v14)
  {
    v15 = sub_8427C();
    v16(v15);
    v12 = v0;
    goto LABEL_7;
  }

  v17 = sub_15F5D4();
  v3(v17);
  v18 = sub_C9E0();
  v20 = sub_15E55C(v18, v19);
  if ((v21 & 1) != 0 || (v20 - 31) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v27 = *(v8 + 8);
    v28 = sub_9A808();
    v27(v28);
    v29 = sub_8427C();
    v27(v29);
  }

  else
  {
    sub_15E7C0(v1);
    v22 = sub_C9E0();
    sub_15EB20(v22, v23);
    v24 = sub_15F470();
    v0(v24);
    v25 = sub_9A808();
    v0(v25);
    v26 = sub_8427C();
    v0(v26);
  }

LABEL_8:
  sub_45924();
}

void sub_15CD20()
{
  sub_4597C();
  v3 = sub_16C0BC();
  sub_42F0();
  __chkstk_darwin(v4);
  sub_12FD4();
  v5 = sub_2440(&qword_1C8480, &unk_1742D0);
  sub_4348(v5);
  sub_433C();
  __chkstk_darwin(v6);
  sub_15F494(v7, v66);
  v8 = sub_2440(&qword_1C8488, &unk_173C60);
  sub_4348(v8);
  sub_433C();
  __chkstk_darwin(v9);
  sub_15F4A8(v10, v67);
  sub_42F0();
  __chkstk_darwin(v11);
  sub_12FD4();
  v12 = sub_2440(&qword_1C57E0, &unk_171C60);
  v13 = sub_4348(v12);
  __chkstk_darwin(v13);
  sub_887C();
  sub_15F508();
  v15 = __chkstk_darwin(v14);
  sub_15F40C(v15, v16, v17, v18, v19, v20, v21, v22, v68);
  __chkstk_darwin(v23);
  sub_10E258();
  __chkstk_darwin(v24);
  sub_15F54C();
  sub_42F0();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_15F328();
  __chkstk_darwin(v28);
  sub_B62E8();
  __chkstk_darwin(v29);
  sub_15F484();
  sub_15E47C(v2);
  sub_BFAB8(v2);
  if (v34)
  {
    v30 = &qword_1C57E0;
    v31 = &unk_171C60;
    v32 = v2;
  }

  else
  {
    v33 = sub_15F3BC();
    v3(v33);
    sub_15E4EC(v1);
    sub_BFAB8(v1);
    if (v34)
    {
      v35 = sub_15F44C();
      v36(v35);
      v30 = &qword_1C57E0;
      v31 = &unk_171C60;
      v32 = v1;
    }

    else
    {
      v37 = sub_C9E0();
      v3(v37);
      v38 = sub_15F58C();
      v40 = sub_15E55C(v38, v39);
      if ((v41 & 1) != 0 || (v40 - 31) < 0xFFFFFFFFFFFFFFFCLL)
      {
        v56 = *(v26 + 8);
        v57 = sub_1064C0();
        v56(v57);
        v58 = sub_15F44C();
        v56(v58);
        goto LABEL_8;
      }

      v42 = sub_15F4CC();
      sub_214C(v69, 1, 1, v42);
      sub_15F344();
      sub_15F5A4();
      sub_15F390();
      sub_16BE1C();
      sub_15F610();
      sub_15E7C0(v0);
      sub_15F424();
      v43 = *(v26 + 8);
      v44 = sub_15F598();
      v43(v44);
      v45 = sub_15F5C4();
      v47 = v46(v45);
      sub_15F5F4(v47, v48, &qword_1C57E0, &unk_171C60);
      sub_BFAB8(v0);
      if (!v34)
      {
        v59 = sub_15F58C();
        sub_15EB20(v59, v60);
        sub_C878(v2, &qword_1C57E0, &unk_171C60);
        v61 = sub_15F3AC();
        v62(v61);
        v63 = sub_1064C0();
        v43(v63);
        v64 = sub_15F44C();
        v43(v64);
        v65 = sub_15F598();
        v43(v65);
        goto LABEL_8;
      }

      sub_45624();
      sub_C878(v49, v50, v51);
      v52 = sub_15F3AC();
      v53(v52);
      v54 = sub_1064C0();
      v43(v54);
      v55 = sub_15F44C();
      v43(v55);
      sub_45624();
    }
  }

  sub_C878(v32, v30, v31);
LABEL_8:
  sub_45924();
}

void sub_15D1B4()
{
  sub_4597C();
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  sub_15F328();
  __chkstk_darwin(v6);
  sub_15F56C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_887C();
  sub_15F5B4();
  __chkstk_darwin(v10);
  sub_10E258();
  __chkstk_darwin(v11);
  sub_15F52C();
  sub_BFAD8(v2);
  if (v14)
  {
    v12 = v2;
LABEL_7:
    sub_C878(v12, &qword_1C57E0, &unk_171C60);
    goto LABEL_8;
  }

  v13 = sub_15F3F4();
  v3(v13);
  sub_15E4EC(v0);
  sub_BFAD8(v0);
  if (v14)
  {
    v15 = sub_8427C();
    v16(v15);
    v12 = v0;
    goto LABEL_7;
  }

  v17 = sub_15F5D4();
  v3(v17);
  v18 = sub_C9E0();
  v20 = sub_15E55C(v18, v19);
  if ((v21 & 1) != 0 || (v20 & 0xFFFFFFFFFFFFFFFELL) != 0x16C)
  {
    v27 = *(v8 + 8);
    v28 = sub_9A808();
    v27(v28);
    v29 = sub_8427C();
    v27(v29);
  }

  else
  {
    sub_15E7C0(v1);
    v22 = sub_C9E0();
    sub_15EB20(v22, v23);
    v24 = sub_15F470();
    v0(v24);
    v25 = sub_9A808();
    v0(v25);
    v26 = sub_8427C();
    v0(v26);
  }

LABEL_8:
  sub_45924();
}

void sub_15D3C8()
{
  sub_4597C();
  v3 = sub_16C0BC();
  sub_42F0();
  __chkstk_darwin(v4);
  sub_12FD4();
  v5 = sub_2440(&qword_1C8480, &unk_1742D0);
  sub_4348(v5);
  sub_433C();
  __chkstk_darwin(v6);
  sub_15F494(v7, v66);
  v8 = sub_2440(&qword_1C8488, &unk_173C60);
  sub_4348(v8);
  sub_433C();
  __chkstk_darwin(v9);
  sub_15F4A8(v10, v67);
  sub_42F0();
  __chkstk_darwin(v11);
  sub_12FD4();
  v12 = sub_2440(&qword_1C57E0, &unk_171C60);
  v13 = sub_4348(v12);
  __chkstk_darwin(v13);
  sub_887C();
  sub_15F508();
  v15 = __chkstk_darwin(v14);
  sub_15F40C(v15, v16, v17, v18, v19, v20, v21, v22, v68);
  __chkstk_darwin(v23);
  sub_10E258();
  __chkstk_darwin(v24);
  sub_15F54C();
  sub_42F0();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_15F328();
  __chkstk_darwin(v28);
  sub_B62E8();
  __chkstk_darwin(v29);
  sub_15F484();
  sub_15E47C(v2);
  sub_BFAB8(v2);
  if (v34)
  {
    v30 = &qword_1C57E0;
    v31 = &unk_171C60;
    v32 = v2;
  }

  else
  {
    v33 = sub_15F3BC();
    v3(v33);
    sub_15E4EC(v1);
    sub_BFAB8(v1);
    if (v34)
    {
      v35 = sub_15F44C();
      v36(v35);
      v30 = &qword_1C57E0;
      v31 = &unk_171C60;
      v32 = v1;
    }

    else
    {
      v37 = sub_C9E0();
      v3(v37);
      v38 = sub_15F58C();
      v40 = sub_15E55C(v38, v39);
      if ((v41 & 1) != 0 || (v40 & 0xFFFFFFFFFFFFFFFELL) != 0x16C)
      {
        v56 = *(v26 + 8);
        v57 = sub_1064C0();
        v56(v57);
        v58 = sub_15F44C();
        v56(v58);
        goto LABEL_8;
      }

      v42 = sub_15F4CC();
      sub_214C(v69, 1, 1, v42);
      sub_15F344();
      sub_15F5A4();
      sub_15F390();
      sub_16BE1C();
      sub_15F610();
      sub_15E7C0(v0);
      sub_15F424();
      v43 = *(v26 + 8);
      v44 = sub_15F598();
      v43(v44);
      v45 = sub_15F5C4();
      v47 = v46(v45);
      sub_15F5F4(v47, v48, &qword_1C57E0, &unk_171C60);
      sub_BFAB8(v0);
      if (!v34)
      {
        v59 = sub_15F58C();
        sub_15EB20(v59, v60);
        sub_C878(v2, &qword_1C57E0, &unk_171C60);
        v61 = sub_15F3AC();
        v62(v61);
        v63 = sub_1064C0();
        v43(v63);
        v64 = sub_15F44C();
        v43(v64);
        v65 = sub_15F598();
        v43(v65);
        goto LABEL_8;
      }

      sub_45624();
      sub_C878(v49, v50, v51);
      v52 = sub_15F3AC();
      v53(v52);
      v54 = sub_1064C0();
      v43(v54);
      v55 = sub_15F44C();
      v43(v55);
      sub_45624();
    }
  }

  sub_C878(v32, v30, v31);
LABEL_8:
  sub_45924();
}

uint64_t sub_15D85C()
{
  sub_16D53C();
  swift_allocObject();
  sub_16D52C();
  sub_15E0F4();
  sub_16D51C();

  v0 = sub_16D50C();

  return v0;
}

void sub_15D8D8()
{
  sub_4597C();
  v1 = v0;
  v3 = v2;
  sub_16DBEC();
  sub_42F0();
  v64 = v5;
  v65 = v4;
  __chkstk_darwin(v4);
  sub_12FD4();
  v63 = v6;
  v68 = sub_16C00C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2440(&qword_1C5800, &unk_16F510);
  v13 = sub_4348(v12);
  __chkstk_darwin(v13);
  sub_887C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  v20 = OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier;
  sub_1955C(v1 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier, &v61 - v18, &qword_1C5800, &unk_16F510);
  v21 = sub_16D5CC();
  if (sub_369C(v19, 1, v21) != 1)
  {
    v66 = v8;
    v67 = v3;
    v22 = sub_16D5BC();
    v24 = v23;
    v25 = *(v21 - 8);
    v26 = *(v25 + 8);
    v61 = v25 + 8;
    v62 = v26;
    v26(v19, v21);
    v27 = v22 == 0x6169726F67657267 && v24 == 0xE90000000000006ELL;
    if (v27 || (sub_15F3D8(0x6169726F67657267, 0xE90000000000006ELL) & 1) != 0)
    {

      v28 = &enum case for Calendar.Identifier.gregorian(_:);
    }

    else
    {
      v31 = v22 == 0x7473696864647562 && v24 == 0xE800000000000000;
      if (v31 || (sub_15F3D8(0x7473696864647562, 0xE800000000000000) & 1) != 0)
      {

        v28 = &enum case for Calendar.Identifier.buddhist(_:);
      }

      else
      {
        v32 = v22 == 0x6573656E696863 && v24 == 0xE700000000000000;
        if (v32 || (sub_15F3D8(0x6573656E696863, 0xE700000000000000) & 1) != 0)
        {

          v28 = &enum case for Calendar.Identifier.chinese(_:);
        }

        else
        {
          v33 = v22 == 0x636974706F63 && v24 == 0xE600000000000000;
          if (v33 || (sub_15F3D8(0x636974706F63, 0xE600000000000000) & 1) != 0)
          {

            v28 = &enum case for Calendar.Identifier.coptic(_:);
          }

          else
          {
            v34 = v22 == 0xD000000000000013 && 0x8000000000181510 == v24;
            if (v34 || (sub_15F3D8(0xD000000000000013, 0x8000000000181510) & 1) != 0)
            {

              v28 = &enum case for Calendar.Identifier.ethiopicAmeteMihret(_:);
            }

            else
            {
              v35 = v22 == 0xD000000000000011 && 0x8000000000181530 == v24;
              if (v35 || (sub_15F3D8(0xD000000000000011, 0x8000000000181530) & 1) != 0)
              {

                v28 = &enum case for Calendar.Identifier.ethiopicAmeteAlem(_:);
              }

              else
              {
                v36 = v22 == 0x776572626568 && v24 == 0xE600000000000000;
                if (v36 || (sub_15F3D8(0x776572626568, 0xE600000000000000) & 1) != 0)
                {

                  v28 = &enum case for Calendar.Identifier.hebrew(_:);
                }

                else
                {
                  v37 = v22 == 0x313036386F7369 && v24 == 0xE700000000000000;
                  if (v37 || (sub_15F3D8(0x313036386F7369, 0xE700000000000000) & 1) != 0)
                  {

                    v28 = &enum case for Calendar.Identifier.iso8601(_:);
                  }

                  else
                  {
                    v38 = v22 == 0x6E6169646E69 && v24 == 0xE600000000000000;
                    if (v38 || (sub_15F3D8(0x6E6169646E69, 0xE600000000000000) & 1) != 0)
                    {

                      v28 = &enum case for Calendar.Identifier.indian(_:);
                    }

                    else
                    {
                      v39 = sub_15F5E4() & 0xFFFFFFFFFFFFLL | 0x63000000000000;
                      v40 = v22 == v39 && v24 == 0xE700000000000000;
                      if (v40 || (sub_15F3D8(v39, 0xE700000000000000) & 1) != 0)
                      {

                        v28 = &enum case for Calendar.Identifier.islamic(_:);
                      }

                      else
                      {
                        v41 = sub_15F5E4() & 0xFFFFFFFFFFFFLL | 0x4363000000000000;
                        v43 = v22 == v41 && v24 == v42;
                        if (v43 || (sub_15F3D8(v41, v42) & 1) != 0)
                        {

                          v28 = &enum case for Calendar.Identifier.islamicCivil(_:);
                        }

                        else
                        {
                          v44 = v22 == 0x6573656E6170616ALL && v24 == 0xE800000000000000;
                          if (v44 || (sub_15F3D8(0x6573656E6170616ALL, 0xE800000000000000) & 1) != 0)
                          {

                            v28 = &enum case for Calendar.Identifier.japanese(_:);
                          }

                          else
                          {
                            v45 = v22 == 0x6E616973726570 && v24 == 0xE700000000000000;
                            if (v45 || (sub_15F3D8(0x6E616973726570, 0xE700000000000000) & 1) != 0)
                            {

                              v28 = &enum case for Calendar.Identifier.persian(_:);
                            }

                            else
                            {
                              v46 = v22 == 0x63696C6275706572 && v24 == 0xEF616E696843664FLL;
                              if (v46 || (sub_15F3D8(0x63696C6275706572, 0xEF616E696843664FLL) & 1) != 0)
                              {

                                v28 = &enum case for Calendar.Identifier.republicOfChina(_:);
                              }

                              else
                              {
                                v47 = sub_15F5E4() & 0xFFFFFFFFFFFFLL | 0x5463000000000000;
                                v49 = v22 == v47 && v24 == v48;
                                if (v49 || (sub_15F3D8(v47, v48) & 1) != 0)
                                {

                                  v28 = &enum case for Calendar.Identifier.islamicTabular(_:);
                                }

                                else
                                {
                                  if (v22 == 0xD000000000000010 && 0x8000000000181550 == v24)
                                  {
                                  }

                                  else
                                  {
                                    v51 = sub_15F3D8(0xD000000000000010, 0x8000000000181550);

                                    if ((v51 & 1) == 0)
                                    {
                                      v52 = sub_16DBBC();
                                      swift_beginAccess();
                                      (*(v64 + 16))(v63, v52, v65);

                                      v53 = sub_16DBDC();
                                      v54 = sub_16E37C();

                                      if (os_log_type_enabled(v53, v54))
                                      {
                                        v55 = swift_slowAlloc();
                                        v56 = swift_slowAlloc();
                                        v69 = v56;
                                        *v55 = 136315138;
                                        sub_1955C(v1 + v20, v16, &qword_1C5800, &unk_16F510);
                                        if (sub_369C(v16, 1, v21) == 1)
                                        {
                                          sub_C878(v16, &qword_1C5800, &unk_16F510);
                                          v57 = 0;
                                          v58 = 0xE000000000000000;
                                        }

                                        else
                                        {
                                          v57 = sub_16D5BC();
                                          v58 = v59;
                                          v62(v16, v21);
                                        }

                                        v60 = sub_3AB7C(v57, v58, &v69);

                                        *(v55 + 4) = v60;
                                        _os_log_impl(&def_259DC, v53, v54, "Unknown calendar identifier: %s", v55, 0xCu);
                                        sub_2D64(v56);
                                      }

                                      (*(v64 + 8))(v63, v65);
                                      goto LABEL_3;
                                    }
                                  }

                                  v28 = &enum case for Calendar.Identifier.islamicUmmAlQura(_:);
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

    v29 = v66;
    v30 = v68;
    (*(v66 + 104))(v11, *v28, v68);
    sub_16C01C();
    (*(v29 + 8))(v11, v30);
    goto LABEL_11;
  }

  sub_C878(v19, &qword_1C5800, &unk_16F510);
LABEL_3:
  sub_16C08C();
LABEL_11:
  sub_45924();
}

uint64_t sub_15E0F4()
{
  v1 = sub_16BF5C();
  v29 = *(v1 - 8);
  __chkstk_darwin(v1);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440(&qword_1C57E0, &unk_171C60);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  sub_2440(&qword_1CB900, &qword_179570);
  v10 = *(v4 + 72);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1712E0;
  v28 = v12;
  v13 = v12 + v11;
  sub_15EF00(v13);
  v33 = v0;
  sub_15EE90(v13 + v10);
  v14 = 0;
  v15 = 0;
  ++v29;
  v16 = _swiftEmptyArrayStorage;
  v30 = v13;
  v31 = v10;
  do
  {
    v17 = v14;
    sub_1955C(v13 + v15 * v10, v9, &qword_1C57E0, &unk_171C60);
    sub_1955C(v9, v7, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v7, 1, v1) == 1)
    {
      sub_C878(v9, &qword_1C57E0, &unk_171C60);
      sub_C878(v7, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v18 = v32;
      sub_15E7C0(v32);
      sub_16BEDC();
      v20 = v19;
      v21 = *v29;
      (*v29)(v18, v1);
      sub_C878(v9, &qword_1C57E0, &unk_171C60);
      v21(v7, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_3A934(0, *(v16 + 2) + 1, 1, v16);
        v16 = v24;
      }

      v23 = *(v16 + 2);
      v22 = *(v16 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_3A934(v22 > 1, v23 + 1, 1, v16);
        v16 = v25;
      }

      *(v16 + 2) = v23 + 1;
      *&v16[8 * v23 + 32] = v20;
      v13 = v30;
      v10 = v31;
    }

    v14 = 1;
    v15 = 1;
  }

  while ((v17 & 1) == 0);
  swift_setDeallocating();
  sub_60D40();
  if (*(v16 + 2))
  {
    v26 = *(v16 + 4);

    return v26 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_15E47C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24) && (sub_16D48C(), (v3 & 1) == 0))
  {
    sub_16BF1C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16BF5C();

  return sub_214C(a1, v4, 1, v5);
}

uint64_t sub_15E4EC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 32) && (sub_16D48C(), (v3 & 1) == 0))
  {
    sub_16BF1C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16BF5C();

  return sub_214C(a1, v4, 1, v5);
}

uint64_t sub_15E55C(uint64_t a1, uint64_t a2)
{
  v16[0] = a1;
  v16[1] = a2;
  v2 = sub_16C0BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_16BE2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15D8D8();
  sub_2440(&qword_1C96C0, &qword_175E28);
  v10 = sub_16C09C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_16F530;
  (*(v11 + 104))(v13 + v12, enum case for Calendar.Component.day(_:), v10);
  sub_15EFE0();
  sub_16C04C();

  (*(v3 + 8))(v5, v2);
  v14 = sub_16BDAC();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_15E7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2440(&qword_1C57E0, &unk_171C60);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  swift_beginAccess();
  v9 = *(v1 + 16);
  if (!v9)
  {
    v16 = 0u;
    v17 = 0u;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = sub_16D55C();

  sub_17400(v11, &v16, 0xD000000000000010, 0x80000000001814F0);

  if (!*(&v17 + 1))
  {
LABEL_12:
    sub_C878(&v16, &qword_1C63E0, &unk_1717D0);
LABEL_13:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_14;
  }

  sub_2440(&qword_1CB908, &qword_179578);
  if ((swift_dynamicCast() & 1) == 0 || !v15)
  {
    goto LABEL_13;
  }

  sub_17400(v15, &v16, 7827310, 0xE300000000000000);

  if (!*(&v17 + 1))
  {
LABEL_14:
    sub_C878(&v16, &qword_1C63E0, &unk_1717D0);
LABEL_15:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_16;
  }

  sub_2440(&qword_1CB908, &qword_179578);
  if ((swift_dynamicCast() & 1) == 0 || !v15)
  {
    goto LABEL_15;
  }

  sub_17400(v15, &v16, 1935893875, 0xE400000000000000);

  if (!*(&v17 + 1))
  {
LABEL_16:
    sub_C878(&v16, &qword_1C63E0, &unk_1717D0);
    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    sub_16BF1C();
    v12 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v12 = 1;
LABEL_18:
  v13 = sub_16BF5C();
  sub_214C(v8, v12, 1, v13);
  sub_1955C(v8, v6, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v6, 1, v13) == 1)
  {
    sub_16BF4C();
    sub_C878(v8, &qword_1C57E0, &unk_171C60);
    result = sub_369C(v6, 1, v13);
    if (result != 1)
    {
      return sub_C878(v6, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    sub_C878(v8, &qword_1C57E0, &unk_171C60);
    return (*(*(v13 - 8) + 32))(a1, v6, v13);
  }

  return result;
}

uint64_t sub_15EB20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2440(&qword_1CB910, &qword_179580);
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_2440(&qword_1CB918, &qword_179588);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = sub_16BF5C();
  v16 = sub_15F2E0(&qword_1C57E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_16E18C();
  if (result)
  {
    v18 = *(v15 - 8);
    v28 = v3;
    v19 = v18;
    v26 = v12;
    v20 = *(v18 + 16);
    v27 = v16;
    v20(v11, a1, v15);
    v20(&v11[*(v6 + 48)], a2, v15);
    sub_1955C(v11, v9, &qword_1CB910, &qword_179580);
    v21 = *(v6 + 48);
    v22 = *(v19 + 32);
    v22(v14, v9, v15);
    v23 = *(v19 + 8);
    v23(&v9[v21], v15);
    sub_15EF70(v11, v9);
    v22(&v14[*(v26 + 36)], &v9[*(v6 + 48)], v15);
    v23(v9, v15);
    if (sub_16E17C())
    {
      v24 = sub_16E18C();
    }

    else
    {
      v24 = 0;
    }

    sub_C878(v14, &qword_1CB918, &qword_179588);
    return v24 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_15EE1C()
{
  sub_15C468();
  if (v0)
  {
    return 0;
  }

  sub_15CB0C();
  if (v2)
  {
    return 1;
  }

  sub_15D1B4();
  if (v3)
  {
    return 2;
  }

  sub_15C678();
  if (v4)
  {
    return 3;
  }

  sub_15CD20();
  if (v5)
  {
    return 4;
  }

  sub_15D3C8();
  if (v6)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_15EE90@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 40) && (sub_16D48C(), (v3 & 1) == 0))
  {
    sub_16BF1C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16BF5C();

  return sub_214C(a1, v4, 1, v5);
}

uint64_t sub_15EF00@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 48) && (sub_16D48C(), (v3 & 1) == 0))
  {
    sub_16BF1C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16BF5C();

  return sub_214C(a1, v4, 1, v5);
}

uint64_t sub_15EF70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1CB910, &qword_179580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_15EFE0()
{
  sub_4597C();
  v1 = v0;
  v2 = sub_16C09C();
  sub_42F0();
  v37 = v3;
  __chkstk_darwin(v4);
  sub_887C();
  v7 = (v5 - v6);
  __chkstk_darwin(v8);
  v41 = &v32 - v9;
  if (*(v1 + 16) && (sub_2440(&qword_1CB920, &unk_179590), v10 = sub_16E44C(), v11 = v10, (v36 = *(v1 + 16)) != 0))
  {
    v12 = 0;
    v40 = v10 + 56;
    v13 = *(v37 + 80);
    v34 = v1;
    v35 = v1 + ((v13 + 32) & ~v13);
    v39 = v37 + 16;
    v14 = (v37 + 8);
    v33 = (v37 + 32);
    while (v12 < *(v1 + 16))
    {
      v15 = *(v37 + 72);
      v38 = v12 + 1;
      v16 = *(v37 + 16);
      v16(v41, v35 + v15 * v12, v2);
      sub_15F458();
      sub_15F2E0(&qword_1CB928, v17, &protocol conformance descriptor for Calendar.Component);
      v18 = sub_16E15C();
      v19 = ~(-1 << *(v11 + 32));
      while (1)
      {
        v20 = v18 & v19;
        v21 = (v18 & v19) >> 6;
        v22 = *(v40 + 8 * v21);
        v23 = 1 << (v18 & v19);
        if ((v23 & v22) == 0)
        {
          break;
        }

        v24 = v11;
        v16(v7, *(v11 + 48) + v20 * v15, v2);
        sub_15F458();
        sub_15F2E0(&qword_1CB930, v25, &protocol conformance descriptor for Calendar.Component);
        v26 = sub_16E19C();
        v27 = *v14;
        (*v14)(v7, v2);
        if (v26)
        {
          v27(v41, v2);
          v11 = v24;
          goto LABEL_12;
        }

        v18 = v20 + 1;
        v11 = v24;
      }

      v28 = v41;
      *(v40 + 8 * v21) = v23 | v22;
      (*v33)(*(v11 + 48) + v20 * v15, v28, v2);
      v29 = *(v11 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_15;
      }

      *(v11 + 16) = v31;
LABEL_12:
      v12 = v38;
      v1 = v34;
      if (v38 == v36)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    sub_45924();
  }
}

uint64_t sub_15F2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_15F3BC()
{
  *(v3 - 160) = v2;
  *(v3 - 152) = v0;
  return v1;
}

uint64_t sub_15F3D8(uint64_t a1, uint64_t a2)
{

  return sub_16E6BC();
}

uint64_t sub_15F424()
{

  return sub_16C05C();
}

uint64_t sub_15F4A8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 144) = &a2 - a1;

  return sub_16BE2C();
}

uint64_t sub_15F4CC()
{
  sub_214C(*(v0 - 144), 1, 1, *(v0 - 152));

  return sub_16C0EC();
}

uint64_t sub_15F52C()
{

  return sub_15E47C(v0);
}

uint64_t sub_15F54C()
{

  return sub_16BF5C();
}

uint64_t sub_15F56C()
{

  return sub_16BF5C();
}

uint64_t sub_15F5F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 112);

  return sub_1955C(v4, v7, a3, a4);
}

void sub_15F610()
{

  sub_15D8D8();
}

uint64_t sub_15F63C(uint64_t a1, uint64_t a2)
{
  sub_83EC();

  return sub_16C33C();
}

uint64_t sub_15F690()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_16C46C();
  v1[4] = v3;
  sub_888C(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_16C7BC();
  v1[8] = v5;
  sub_888C(v5);
  v1[9] = v6;
  v1[10] = swift_task_alloc();
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_15F79C()
{
  sub_8A88();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_15F82C;

  return sub_3E880();
}

uint64_t sub_15F82C(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;

  if (v1)
  {

    v8 = sub_15FCB8;
  }

  else
  {
    *(v5 + 96) = a1;
    v8 = sub_15F94C;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_15F94C(uint64_t a1)
{
  v2 = v1[12];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[3];
  sub_16C43C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v8 = [v2 catId];
  sub_16E1BC();

  sub_16C76C();
  v9 = v7[28];
  v10 = v7[29];
  sub_2D20(v7 + 25, v9);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v11 = swift_allocObject();
  v1[13] = v11;
  *(v11 + 16) = xmmword_170F70;
  *(v11 + 32) = v2;
  v12 = v2;
  v13 = swift_task_alloc();
  v1[14] = v13;
  *v13 = v1;
  v13[1] = sub_15FB18;
  v14 = v1[10];
  v15 = v1[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v11, v14, v9, v10);
}

uint64_t sub_15FB18()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_15FC18()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  sub_C9BC();

  return v4();
}

uint64_t sub_15FCB8()
{
  sub_8A88();
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;

  sub_C9BC();

  return v2();
}

uint64_t sub_15FD34()
{
  sub_8A88();
  v1[41] = v2;
  v1[42] = v0;
  v3 = sub_16DBEC();
  v1[43] = v3;
  sub_888C(v3);
  v1[44] = v4;
  v1[45] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[46] = v5;
  *v5 = v1;
  v5[1] = sub_15FE1C;

  return sub_15F690();
}

uint64_t sub_15FE1C()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_15FF00()
{
  if (*(v0 + 240))
  {
    sub_17464((v0 + 216), v0 + 176);
    sub_8388(v0 + 176, v0 + 256);
    v1 = swift_allocObject();
    sub_17464((v0 + 256), v1 + 16);
    sub_16C73C();
    sub_16C1DC();
    swift_allocObject();
    *(v0 + 320) = sub_16C1CC();
    sub_16C4EC();
    sub_2D64((v0 + 176));
  }

  else
  {
    v3 = *(v0 + 352);
    v2 = *(v0 + 360);
    v4 = *(v0 + 344);
    sub_7874C(v0 + 216);
    v5 = sub_16DBBC();
    swift_beginAccess();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_16DBDC();
    v7 = sub_16E37C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&def_259DC, v6, v7, "Failed to create output for onboarding required flow", v8, 2u);
    }

    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v12 = *(v0 + 336);
    v11 = *(v0 + 344);

    (*(v10 + 8))(v9, v11);
    sub_8284(v12 + 40, v0 + 16);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 16);
  }

  sub_C9BC();

  return v13();
}

uint64_t sub_160140()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_15FD34();
}

uint64_t sub_1601D8()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_160210()
{
  sub_8A88();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_1602A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = a1[3];
  v8 = a1[4];
  sub_2D20(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  if (v9 == 270 || (v10 = v9, sub_16D74(), v11 = sub_16E14C(), v12 = sub_1730C(v10, v11), , v12 == 205))
  {
    sub_16BE9C();
    v13 = sub_2564();

    return sub_214C(v13, v14, v15, v16);
  }

  else
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_2D20(a1, v18);
    (*(v19 + 32))(v18, v19);
    sub_12093C(v12, v6, a2);
    return sub_4208(v6);
  }
}

uint64_t sub_160444(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  if (!a2)
  {
    v6 = sub_1608B8(a3);
    v8 = v7;
    if (v6 == 0xD000000000000010 && 0x80000000001815F0 == v7)
    {
      goto LABEL_15;
    }

    v10 = v6;
    v11 = sub_16E6BC();

    if (v11)
    {
      goto LABEL_16;
    }

    if (v10 == 0xD000000000000012 && 0x8000000000181690 == v8)
    {
LABEL_15:
    }

    else
    {
      v13 = sub_16E6BC();

      if ((v13 & 1) == 0)
      {
        sub_16BE9C();
        v14 = sub_2564();

        return sub_214C(v14, v15, v16, v17);
      }
    }
  }

LABEL_16:
  switch(v3)
  {
    case 1:
      goto LABEL_26;
    case 2:
      sub_1609CC();
      sub_16E47C(63);
      sub_1609DC();
      v19._countAndFlagsBits = 0xD00000000000003DLL;
      sub_1609E8(v19, "ation=1&scheduleItemIdentifier=");
      if (a2)
      {
        goto LABEL_31;
      }

      __break(1u);
LABEL_22:
      sub_1609CC();
      sub_16E47C(71);
      sub_1609DC();
      v20._countAndFlagsBits = 0xD000000000000045;
      sub_1609E8(v20, "openMedicationsApp");
      if (!a2)
      {
        __break(1u);
LABEL_24:
        sub_1609CC();
        sub_16E47C(113);
        sub_1609DC();
        v21._countAndFlagsBits = 0xD00000000000006FLL;
        sub_1609E8(v21, "heduleItemIdentifier=");
        if (!a2)
        {
          __break(1u);
LABEL_26:
          sub_1609CC();
          sub_16E47C(70);
          sub_1609DC();
          v22._countAndFlagsBits = 0xD000000000000044;
          sub_1609E8(v22, "ation=1&medicationName=");
          if (!a2)
          {
            __break(1u);
LABEL_28:
            sub_1609CC();
            sub_16E47C(112);
            sub_1609DC();
            v23._countAndFlagsBits = 0xD00000000000006ELL;
            sub_1609E8(v23, "watchMedicationQueryingError");
            if (!a2)
            {
              __break(1u);
LABEL_30:
              sub_1609CC();
              sub_16E47C(105);
              sub_1609DC();
              v24._countAndFlagsBits = 0xD000000000000067;
              sub_1609E8(v24, "s.app/logDose?medicationName=");
              if (!a2)
              {
                __break(1u);
                JUMPOUT(0x160724);
              }
            }
          }
        }
      }

LABEL_31:
      v26._countAndFlagsBits = a1;
      v26._object = a2;
      sub_16E26C(v26);
      sub_16BE8C();

      break;
    case 3:
      goto LABEL_22;
    case 5:
      goto LABEL_28;
    case 6:
      goto LABEL_30;
    case 7:
      goto LABEL_24;
    default:

      return sub_16BE8C();
  }

  return result;
}

uint64_t sub_160744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if (sub_C1AF4(a1, &off_1B8920))
  {
    v7 = sub_16BD9C();
    sub_214C(v6, 1, 1, v7);
    v8 = a2;
    v9 = 42;
LABEL_8:
    sub_12093C(v9, v6, v8);
    return sub_4208(v6);
  }

  sub_16D74();
  v10 = sub_16E14C();
  v11 = sub_1730C(a1, v10);

  if (v11 != 205)
  {
    v17 = sub_16BD9C();
    sub_214C(v6, 1, 1, v17);
    v8 = a2;
    v9 = v11;
    goto LABEL_8;
  }

  sub_16BE9C();
  v12 = sub_2564();

  return sub_214C(v12, v13, v14, v15);
}

unint64_t sub_1608B8(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000018;
      break;
    case 2:
    case 6:
      result = 0xD000000000000020;
      break;
    case 3:
    case 7:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1609A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1608B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1609E8(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{

  a1._object = (a2 | 0x8000000000000000);
  sub_16E26C(a1);
}

uint64_t type metadata accessor for WellnessLoggingCATs(uint64_t a1)
{
  result = qword_1CB938;
  if (!qword_1CB938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_160AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16D63C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v9 - 8);
  sub_372FC(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16D56C();
  (*(v6 + 8))(a2, v5);
  sub_45D08(a1);
  return v11;
}

void __swiftcall WatchRingsModel.init(exerciseGoalValue:exerciseTotalValue:moveGoalValue:moveTotalValue:standGoalValue:standTotalValue:)(WellnessFlowPlugin::WatchRingsModel *__return_ptr retstr, Swift::Double exerciseGoalValue, Swift::Double exerciseTotalValue, Swift::Double moveGoalValue, Swift::Double moveTotalValue, Swift::Double standGoalValue, Swift::Double standTotalValue)
{
  retstr->exerciseGoalValue.value = exerciseGoalValue;
  retstr->exerciseGoalValue.is_nil = 0;
  *(&retstr->exerciseTotalValue.value + 7) = exerciseTotalValue;
  BYTE6(retstr->moveGoalValue.value) = 0;
  *(&retstr->moveTotalValue.value + 5) = moveGoalValue;
  BYTE4(retstr->standGoalValue.value) = 0;
  *(&retstr->standTotalValue.value + 3) = moveTotalValue;
  BYTE2(retstr[1].exerciseGoalValue.value) = 0;
  *(&retstr[1].exerciseTotalValue.value + 1) = standGoalValue;
  LOBYTE(retstr[1].moveGoalValue.value) = 0;
  *&retstr[1].moveGoalValue.is_nil = standTotalValue;
  HIBYTE(retstr[1].moveTotalValue.value) = 0;
}

uint64_t sub_160CA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000000017AB80 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000017ABA0 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616F4765766F6DLL && a2 == 0xED000065756C6156;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61746F5465766F6DLL && a2 == 0xEE0065756C61566CLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616F47646E617473 && a2 == 0xEE0065756C61566CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x746F54646E617473 && a2 == 0xEF65756C61566C61)
          {

            return 5;
          }

          else
          {
            v11 = sub_16E6BC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_160EB4(char a1)
{
  result = 0x6C616F4765766F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x61746F5465766F6DLL;
      break;
    case 4:
      result = 0x616F47646E617473;
      break;
    case 5:
      result = 0x746F54646E617473;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_160FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_160CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_160FDC(uint64_t a1)
{
  v2 = sub_16121C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_161018(uint64_t a1)
{
  v2 = sub_16121C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WatchRingsModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CB988, &qword_179720);
  sub_42F0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  sub_2D20(a1, a1[3]);
  sub_16121C();
  sub_16E77C();
  v11 = *v3;
  v12 = *(v3 + 8);
  v30 = 0;
  sub_1617BC(v11, v12, &v30);
  if (!v2)
  {
    v13 = *(v3 + 16);
    v14 = *(v3 + 24);
    v29 = 1;
    sub_1617BC(v13, v14, &v29);
    v15 = *(v3 + 32);
    v16 = *(v3 + 40);
    v28 = 2;
    sub_1617BC(v15, v16, &v28);
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);
    v27 = 3;
    sub_1617BC(v17, v18, &v27);
    v19 = *(v3 + 64);
    v20 = *(v3 + 72);
    v26 = 4;
    sub_1617BC(v19, v20, &v26);
    v21 = *(v3 + 80);
    v22 = *(v3 + 88);
    v25 = 5;
    sub_1617BC(v21, v22, &v25);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_16121C()
{
  result = qword_1CB990;
  if (!qword_1CB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB990);
  }

  return result;
}

uint64_t WatchRingsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2440(&qword_1CB998, &qword_179728);
  sub_42F0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  sub_2D20(a1, a1[3]);
  sub_16121C();
  sub_16E76C();
  if (v2)
  {
    return sub_2D64(a1);
  }

  v47 = 0;
  v11 = sub_1617A0(&v47);
  v13 = v12;
  v46 = 1;
  v14 = sub_1617A0(&v46);
  v34 = v15;
  v35 = v14;
  v45 = 2;
  v16 = sub_1617A0(&v45);
  v32 = v17;
  v33 = v16;
  v44 = 3;
  v18 = sub_1617A0(&v44);
  v30 = v19;
  v31 = v18;
  v43 = 4;
  v20 = sub_1617A0(&v43);
  v28 = v21;
  v29 = v20;
  v42 = 5;
  v22 = sub_1617A0(&v42);
  v24 = v23;
  v25 = *(v7 + 8);
  v27 = v22;
  v25(v10, v5);
  v41 = v13 & 1;
  v40 = v34 & 1;
  v39 = v32 & 1;
  v38 = v30 & 1;
  v37 = v28 & 1;
  v36 = v24 & 1;
  result = sub_2D64(a1);
  *a2 = v11;
  *(a2 + 8) = v41;
  *(a2 + 16) = v35;
  *(a2 + 24) = v40;
  *(a2 + 32) = v33;
  *(a2 + 40) = v39;
  *(a2 + 48) = v31;
  *(a2 + 56) = v38;
  *(a2 + 64) = v29;
  *(a2 + 72) = v37;
  *(a2 + 80) = v27;
  *(a2 + 88) = v36;
  return result;
}

void *sub_161520@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = WatchRingsModel.init(from:)(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x59uLL);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WatchRingsModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x161660);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_16169C()
{
  result = qword_1CB9A0;
  if (!qword_1CB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB9A0);
  }

  return result;
}

unint64_t sub_1616F4()
{
  result = qword_1CB9A8;
  if (!qword_1CB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB9A8);
  }

  return result;
}

unint64_t sub_16174C()
{
  result = qword_1CB9B0;
  if (!qword_1CB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB9B0);
  }

  return result;
}

uint64_t sub_1617A0(uint64_t a1)
{

  return sub_16E59C();
}

uint64_t sub_1617BC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16E62C();
}

uint64_t type metadata accessor for OxygenSaturationQueryModel(uint64_t a1)
{
  result = qword_1CBA28;
  if (!qword_1CBA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OxygenSaturationQueryModel.averageValueString.getter()
{
  type metadata accessor for OxygenSaturationQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.averageValueString.setter()
{
  sub_163BE0();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.maxValueString.getter()
{
  type metadata accessor for OxygenSaturationQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.maxValueString.setter()
{
  sub_163BE0();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.minValueString.getter()
{
  type metadata accessor for OxygenSaturationQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.minValueString.setter()
{
  sub_163BE0();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.mostRecentValueString.getter()
{
  type metadata accessor for OxygenSaturationQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.mostRecentValueString.setter()
{
  sub_163BE0();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.unit.getter()
{
  type metadata accessor for OxygenSaturationQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.unit.setter()
{
  sub_163BE0();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.averageLabelString.getter()
{
  type metadata accessor for OxygenSaturationQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.averageLabelString.setter()
{
  sub_163BE0();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_161FAC(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_64F0C(a1, v5, &qword_1C57F8, &unk_172510);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_45D08(v5);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v8 + 32))(v11, v5, v6);
    v13 = sub_16BE5C();
    sub_2068C(v13, v14);
    return (*(v8 + 8))(v11, v6);
  }
}

uint64_t sub_162144(uint64_t result, char a2)
{
  if (a2)
  {
    goto LABEL_11;
  }

  v2 = result;
  if (*&result <= 0.0)
  {
    goto LABEL_11;
  }

  v3 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v3 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_16F530;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v2;
    sub_16E1CC();

LABEL_11:
    *&result = COERCE_DOUBLE(sub_8B9C());
    return result;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    sub_16E68C();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_162260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000000017DE70 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x800000000017F5E0 == a2;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1953066613 && a2 == 0xE400000000000000;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x800000000017F620 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_16E6BC();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

uint64_t sub_162684(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v3 = 1450729837;
      return v3 | 0x65756C6100000000;
    case 3:
      v3 = 1450076525;
      return v3 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
      return 0x6562614C65746164;
    case 6:
      return 0xD000000000000012;
    case 7:
      v4 = 1450729837;
      goto LABEL_16;
    case 8:
      v4 = 1450076525;
LABEL_16:
      result = v4 | 0x65756C6100000000;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 1953066613;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_162830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_162260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_162858@<X0>(_BYTE *a1@<X8>)
{
  result = sub_16267C();
  *a1 = result;
  return result;
}

uint64_t sub_162880(uint64_t a1)
{
  v2 = sub_162C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1628BC(uint64_t a1)
{
  v2 = sub_162C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OxygenSaturationQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CB9B8, &qword_179908);
  sub_42F0();
  v7 = v6;
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  sub_2D20(a1, a1[3]);
  sub_162C68();
  sub_16E77C();
  v21[15] = 0;
  sub_16C11C();
  sub_163BC8();
  sub_1634A4(v11, v12, &protocol conformance descriptor for AppPunchout);
  sub_12C630(v3);
  if (!v2)
  {
    Model = type metadata accessor for OxygenSaturationQueryModel(0);
    sub_669D0(Model[5]);
    v21[14] = 1;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[6]);
    v21[13] = 2;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[7]);
    v21[12] = 3;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[8]);
    v21[11] = 4;
    sub_20584();
    sub_16E62C();
    v14 = Model[9];
    v21[10] = 5;
    sub_16D5CC();
    sub_163B98();
    sub_1634A4(v15, v16, &protocol conformance descriptor for SpeakableString);
    sub_12C630(v3 + v14);
    sub_66A40(Model[10]);
    v21[9] = 6;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[11]);
    v21[8] = 7;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[12]);
    v21[7] = 8;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[13]);
    v21[6] = 9;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[14]);
    v21[5] = 10;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[15]);
    v21[4] = 11;
    sub_20584();
    sub_16E61C();
    v17 = Model[16];
    v21[3] = 12;
    type metadata accessor for SnippetHeaderModel(0);
    sub_163BB0();
    sub_1634A4(v18, v19, &protocol conformance descriptor for SnippetHeaderModel);
    sub_12C630(v3 + v17);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_162C68()
{
  result = qword_1CB9C0;
  if (!qword_1CB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB9C0);
  }

  return result;
}

uint64_t OxygenSaturationQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v76 = a2;
  v2 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  sub_13088();
  v77 = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  sub_433C();
  __chkstk_darwin(v6);
  sub_13088();
  v87 = v7;
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v8);
  sub_433C();
  __chkstk_darwin(v9);
  sub_13088();
  v88 = v10;
  v89 = sub_2440(&qword_1CB9C8, &qword_179910);
  sub_42F0();
  v86 = v11;
  sub_433C();
  __chkstk_darwin(v12);
  sub_13088();
  v92 = v13;
  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  v15 = (Model - 8);
  __chkstk_darwin(Model);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_16C11C();
  sub_214C(v17, 1, 1, v85);
  sub_12C650(v15[7]);
  v84 = v18;
  *(v18 + 8) = 1;
  sub_12C650(v15[8]);
  v83 = v19;
  *(v19 + 8) = 1;
  sub_12C650(v15[9]);
  v82 = v20;
  *(v20 + 8) = 1;
  sub_12C650(v15[10]);
  v80 = v21;
  *(v21 + 8) = 1;
  v22 = v15[11];
  v23 = sub_16D5CC();
  v79 = v22;
  v81 = v23;
  sub_214C(&v17[v22], 1, 1, v23);
  v24 = &v17[v15[12]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v78 = v24;
  v25 = &v17[v15[13]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v17[v15[14]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v17[v15[15]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v17[v15[16]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v17[v15[17]];
  *v29 = 0;
  v29[1] = 0;
  v30 = v15[18];
  v31 = type metadata accessor for SnippetHeaderModel(0);
  v91 = v17;
  v75 = v30;
  sub_214C(&v17[v30], 1, 1, v31);
  sub_2D20(v93, v93[3]);
  sub_162C68();
  v32 = v90;
  sub_16E76C();
  if (v32)
  {
    v71 = v91;
  }

  else
  {
    v90 = v25;
    v74 = v26;
    v73 = v27;
    v72 = v28;
    v33 = v86;
    v34 = v87;
    v106 = 0;
    sub_163BC8();
    sub_1634A4(v35, v36, &protocol conformance descriptor for AppPunchout);
    v37 = v88;
    sub_16E5AC();
    v39 = v37;
    v40 = v91;
    sub_64F94(v39, v91, &qword_1C63F0, &unk_1717F0);
    v105 = 1;
    v41 = sub_16E59C();
    sub_12C5BC(v41, v42);
    v104 = 2;
    sub_D7848();
    v43 = sub_16E59C();
    sub_12C5BC(v43, v44);
    v103 = 3;
    sub_D7848();
    v45 = sub_16E59C();
    sub_12C5BC(v45, v46);
    v102 = 4;
    sub_D7848();
    v47 = sub_16E59C();
    sub_12C5BC(v47, v48);
    v101 = 5;
    sub_163B98();
    sub_1634A4(v49, v50, &protocol conformance descriptor for SpeakableString);
    sub_16E5AC();
    sub_64F94(v34, v40 + v79, &qword_1C5800, &unk_16F510);
    v100 = 6;
    sub_D7848();
    v51 = sub_16E58C();
    v52 = v78;
    *v78 = v51;
    v52[1] = v53;
    v99 = 7;
    sub_D7848();
    v54 = sub_16E58C();
    v55 = v90;
    *v90 = v54;
    v55[1] = v56;
    v98 = 8;
    sub_D7848();
    v57 = sub_16E58C();
    v58 = v74;
    *v74 = v57;
    v58[1] = v59;
    v97 = 9;
    sub_D7848();
    v60 = sub_16E58C();
    v61 = v73;
    *v73 = v60;
    v61[1] = v62;
    v96 = 10;
    sub_D7848();
    v63 = sub_16E58C();
    v64 = v72;
    *v72 = v63;
    v64[1] = v65;
    v95 = 11;
    sub_D7848();
    *v29 = sub_16E58C();
    v29[1] = v66;
    v94 = 12;
    sub_163BB0();
    sub_1634A4(v67, v68, &protocol conformance descriptor for SnippetHeaderModel);
    v69 = v89;
    v70 = v92;
    sub_16E5AC();
    (*(v33 + 8))(v70, v69);
    v71 = v91;
    sub_64F94(v77, &v91[v75], &dword_1C63F8, &qword_171800);
    sub_1633B0(v71, v76);
  }

  sub_2D64(v93);
  return sub_163354(v71);
}

uint64_t sub_163354(uint64_t a1)
{
  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_1633B0(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for OxygenSaturationQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_1634A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_163530(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return sub_369C(v9, a2, v8);
  }

  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[9];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = sub_2440(&dword_1C63F8, &qword_171800);
    v12 = a3[16];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[10] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_163684(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    sub_436C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[10] + 8) = a2;
        return;
      }

      v10 = sub_2440(&dword_1C63F8, &qword_171800);
      v14 = a4[16];
    }

    v11 = a1 + v14;
  }

  sub_214C(v11, a2, a2, v10);
}

void sub_1637B4(uint64_t a1)
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v1 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      if (v3 <= 0x3F)
      {
        sub_3A10(319, &qword_1C64C8, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OxygenSaturationQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OxygenSaturationQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x163A58);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_163A94()
{
  result = qword_1CBA90;
  if (!qword_1CBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBA90);
  }

  return result;
}

unint64_t sub_163AEC()
{
  result = qword_1CBA98;
  if (!qword_1CBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBA98);
  }

  return result;
}

unint64_t sub_163B44()
{
  result = qword_1CBAA0;
  if (!qword_1CBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBAA0);
  }

  return result;
}

uint64_t sub_163BE0()
{

  return type metadata accessor for OxygenSaturationQueryModel(0);
}

uint64_t sub_163BFC()
{

  return type metadata accessor for OxygenSaturationQueryModel(0);
}

uint64_t type metadata accessor for WellnessLoggingCATsSimple(uint64_t a1)
{
  result = qword_1CBAA8;
  if (!qword_1CBAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_163CA0()
{
  sub_8A88();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 81) = v3;
  *(v1 + 80) = v4;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v7);
  *(v1 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_163D30()
{
  sub_40240();
  v21 = v3;
  sub_C9EC();
  v4 = *(v1 + 80);
  v5 = sub_2440(&qword_1C6078, &unk_172520);
  v6 = sub_168C98(v5);
  v7 = sub_168C74(v6);
  *(v7 + 16) = xmmword_16F2F0;
  *(v7 + 32) = 0x63696C6F74737973;
  *(v7 + 40) = 0xE800000000000000;
  if (v4)
  {
    sub_168B58();
  }

  else
  {
    v9 = *(v1 + 16);
    v8 = &type metadata for Double;
  }

  v10 = *(v1 + 81);
  v2[6] = v9;
  v2[9] = v8;
  v2[10] = 0x696C6F7473616964;
  v2[11] = 0xE900000000000063;
  if (v10)
  {
    v11 = 0;
    v2[13] = 0;
    v2[14] = 0;
  }

  else
  {
    v11 = &type metadata for Double;
  }

  v12 = sub_168C44(v11);
  sub_1955C(v12, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v13)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168CD0();
  }

  else
  {
    sub_168D28();
    sub_400B8();
    sub_40154();
    v14();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  v16[1] = sub_163EF4;
  sub_40160();
  v18 = sub_40144(36);

  return v19(v18);
}

uint64_t sub_163EF4()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_164024(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = sub_17960();
  return _swift_task_switch(v3);
}

uint64_t sub_164050()
{
  sub_40240();
  v11 = v1;
  sub_C9EC();
  v2 = *(v0 + 48);
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = swift_allocObject();
  sub_38B4C();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v2;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v6;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 32) = v7;
  *v7 = v8;
  v7[1] = sub_164168;

  return v10(0xD00000000000003BLL, 0x8000000000181D70, v3);
}

uint64_t sub_164168()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_626BC();

    return v9(v8);
  }
}

uint64_t sub_164294()
{
  sub_8A88();
  *(v1 + 80) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  *(v1 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_164320()
{
  sub_5E06C();
  sub_C9EC();
  sub_168CB0();
  v3 = sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_168C98(v3);
  v5 = sub_168C74(v4);
  v6 = sub_400C8(v5, xmmword_16F2F0);
  sub_401C8(v6, v7, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v8)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v9();
  }

  v10 = *(v1 + 24);
  v2[10] = 1702125924;
  v2[11] = 0xE400000000000000;
  if (v10)
  {
    v11 = sub_16D4EC();
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v2[13] = 0;
    v2[14] = 0;
  }

  v13 = *(v1 + 80);
  v2[12] = v12;
  v2[15] = v11;
  v2[16] = 2003790950;
  v2[17] = 0xE400000000000000;
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v2[19] = 0;
    v2[20] = 0;
  }

  else
  {
    v14 = *(v1 + 32);
    v15 = &type metadata for Double;
  }

  v2[18] = v14;
  v2[21] = v15;

  v16 = swift_task_alloc();
  v17 = sub_76D0C(v16);
  *v17 = v18;
  v17[1] = sub_164500;
  sub_38F74();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_164500()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_164630()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_164694()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  *(v1 + 40) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_164720()
{
  sub_40240();
  v20 = v2;
  sub_C9EC();
  v3 = *(v0 + 40);
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_40228(v4);
  v6 = sub_168C38(v5);
  v7 = sub_400C8(v6, xmmword_1712E0);
  sub_401C8(v7, v8, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v3, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v10();
  }

  v11 = *(v0 + 72);
  v1[10] = 2003790950;
  v1[11] = 0xE400000000000000;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v1[13] = 0;
    v1[14] = 0;
  }

  else
  {
    v12 = *(v0 + 24);
    v13 = &type metadata for Double;
  }

  v1[12] = v12;
  v1[15] = v13;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = sub_10E364(v14);
  *v15 = v16;
  sub_168B1C(v15);
  v17 = sub_40144(35);

  return v18(v17);
}

uint64_t sub_16489C()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_1649CC()
{
  sub_8A88();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  *(v1 + 32) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_164A54()
{
  sub_40240();
  v18 = v3;
  sub_C9EC();
  sub_40204();
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_40228(v4);
  v6 = sub_401F8(v5);
  v7 = sub_400C8(v6, xmmword_1712E0);
  sub_401C8(v7, v8, &qword_1C5800, &unk_16F510);
  v9 = sub_16D5CC();
  sub_40124(v9);
  sub_168D04();
  if (v10)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v11();
  }

  sub_38B4C();
  *(v2 + 80) = 0xD000000000000019;
  *(v2 + 88) = v12;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v13;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v1 + 48) = v14;
  *v14 = v15;
  sub_40210(v14);
  sub_168CDC();

  return v16();
}

uint64_t sub_164BC0()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_164CF0()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  *(v0 + 40) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_164D74()
{
  sub_40240();
  v18 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_168C98(v4);
  v6 = sub_168C38(v5);
  sub_168B00(v6, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = &type metadata for Double;
  }

  v8 = sub_168AB0(v7);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v10();
  }

  sub_168AD4();
  sub_168C68(v11);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = sub_10E364(v12);
  *v13 = v14;
  sub_168B1C(v13);
  v15 = sub_40144(38);

  return v16(v15);
}

uint64_t sub_164EE0()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  *(v0 + 40) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_164F64()
{
  sub_40240();
  v18 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_168C98(v4);
  v6 = sub_168C38(v5);
  sub_168B00(v6, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = &type metadata for Double;
  }

  v8 = sub_168AB0(v7);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v10();
  }

  sub_168AD4();
  sub_168C68(v11);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = sub_10E364(v12);
  *v13 = v14;
  sub_168B1C(v13);
  v15 = sub_40144(45);

  return v16(v15);
}

uint64_t sub_1650D0()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  *(v0 + 40) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_165154()
{
  sub_40240();
  v18 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_168C98(v4);
  v6 = sub_168C38(v5);
  sub_168B00(v6, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = &type metadata for Double;
  }

  v8 = sub_168AB0(v7);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v10();
  }

  sub_168AD4();
  sub_168C68(v11);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = sub_10E364(v12);
  *v13 = v14;
  sub_168B1C(v13);
  v15 = sub_40144(41);

  return v16(v15);
}

uint64_t sub_1652C0()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  *(v0 + 40) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_165344()
{
  sub_40240();
  v18 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_168C98(v4);
  v6 = sub_168C38(v5);
  sub_168B00(v6, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = &type metadata for Double;
  }

  v8 = sub_168AB0(v7);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v10();
  }

  sub_168AD4();
  sub_168C68(v11);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = sub_10E364(v12);
  *v13 = v14;
  sub_168B1C(v13);
  v15 = sub_40144(37);

  return v16(v15);
}

uint64_t sub_1654B0()
{
  sub_8A88();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 88) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  *(v1 + 48) = sub_8C38();
  *(v1 + 56) = swift_task_alloc();
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_165548()
{
  sub_40240();
  v19 = v1;
  sub_C9EC();
  v2 = sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_168C98(v2);
  *(v0 + 64) = v3;
  v4 = sub_400C8(v3, xmmword_16F2F0);
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  v7 = sub_40124(v6);
  v8 = *(v0 + 56);
  if (v7 == 1)
  {
    sub_C878(*(v0 + 56), &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v9();
  }

  v10 = *(v0 + 88);
  v3[5].n128_u64[0] = 0x65756C6176;
  v3[5].n128_u64[1] = 0xE500000000000000;
  if (v10)
  {
    v11 = 0;
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  else
  {
    v11 = &type metadata for Double;
  }

  v12 = sub_168C44(v11);
  sub_1955C(v12, v8, &qword_1C5800, &unk_16F510);
  sub_168B30();
  if (v13)
  {
    sub_C878(v8, &qword_1C5800, &unk_16F510);
    sub_168CD0();
  }

  else
  {
    sub_168D28();
    sub_400B8();
    sub_40154();
    v14();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  *(v0 + 72) = v15;
  *v15 = v0;
  v15[1] = sub_165740;
  sub_40160();
  v16 = sub_40144(38);

  return v17(v16);
}

uint64_t sub_165740()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_16587C()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_1658EC(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  v4 = sub_17960();
  return _swift_task_switch(v4);
}

uint64_t sub_16591C()
{
  sub_40240();
  v12 = v1;
  sub_C9EC();
  v2 = *(v0 + 49);
  v3 = *(v0 + 48);
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_40228(v4);
  *(v0 + 24) = v5;
  sub_168B68(v5, xmmword_1712E0)[3].n128_u8[0] = v3;
  sub_168CBC();
  *(v6 + 72) = v7;
  *(v6 + 80) = v8;
  *(v6 + 88) = 0xEA00000000006465;
  *(v6 + 120) = v7;
  *(v6 + 96) = v2;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_165A30;

  return v11(0xD000000000000034, 0x8000000000181BA0, v5);
}

uint64_t sub_165A30()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_626BC();

    return v9(v8);
  }
}

uint64_t sub_165B5C()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3EB98;
  sub_40160();

  return v3(0xD000000000000031);
}

uint64_t sub_165C0C()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4008C;
  sub_40160();

  return v3(0xD000000000000039);
}

uint64_t sub_165CBC()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v1[5] = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_165D44()
{
  sub_5E06C();
  sub_C9EC();
  v2 = v1[2];
  v3 = sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228(v3);
  v1[6] = v4;
  *(v4 + 16) = xmmword_1712E0;
  *(v4 + 32) = 0x746867696568;
  *(v4 + 40) = 0xE600000000000000;
  v5 = 0;
  if (v2)
  {
    v5 = sub_16D2FC();
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  v6 = v1[5];
  v7 = v1[3];
  *(v4 + 48) = v2;
  *(v4 + 72) = v5;
  *(v4 + 80) = 1953066613;
  *(v4 + 88) = 0xE400000000000000;
  sub_1955C(v7, v6, &qword_1C5800, &unk_16F510);
  v8 = sub_16D5CC();
  v9 = sub_40124(v8);
  v10 = v1[5];
  if (v9 == 1)
  {

    sub_C878(v10, &qword_1C5800, &unk_16F510);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    sub_9910((v4 + 96));
    sub_400B8();
    sub_40154();
    v11();
  }

  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = sub_10E364(v12);
  *v13 = v14;
  sub_168B1C(v13);
  sub_38F74();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_165F04()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_166034()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_166098()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v1[4] = sub_8BC0();
  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_16611C()
{
  sub_40240();
  v14 = v2;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = swift_allocObject();
  v4 = sub_401F8(v3);
  v5 = sub_400C8(v4, xmmword_16F530);
  sub_401C8(v5, v6, &qword_1C5800, &unk_16F510);
  v7 = sub_16D5CC();
  sub_40124(v7);
  sub_168D04();
  if (v8)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v9();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  *(v1 + 48) = v10;
  *v10 = v1;
  sub_40210(v10);
  sub_40160();
  v11 = sub_40144(35);

  return v12(v11);
}

uint64_t sub_166268()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_166398()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_1663FC()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v6 = sub_8C38();
  *(v1 + 48) = sub_168D10(v6);
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_16648C()
{
  sub_40240();
  v20 = v3;
  sub_C9EC();
  sub_168CB0();
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_168C98(v4);
  v6 = sub_168C74(v5);
  v7 = sub_168BA0(v6, xmmword_16F2F0);
  sub_401C8(v7, v8, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v10();
  }

  v11 = sub_168BFC();
  sub_1955C(v11, v0, &qword_1C5800, &unk_16F510);
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v12();
  }

  v13 = *(v1 + 80);
  *(v2 + 128) = 0x757461745364656DLL;
  *(v2 + 136) = 0xE900000000000073;
  sub_168C68(v13);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = sub_76D0C(v14);
  *v15 = v16;
  sub_168B1C(v15);
  v17 = sub_40144(49);

  return v18(v17);
}

uint64_t sub_166660()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_168D40();

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_166794()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  *(v1 + 40) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_166820()
{
  sub_5E06C();
  sub_C9EC();
  v2 = *(v0 + 72);
  v3 = sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228(v3);
  *(sub_168C38(v4) + 16) = xmmword_1712E0;
  sub_38B4C();
  *(v5 + 32) = 0xD000000000000011;
  *(v5 + 40) = v6;
  if (v2)
  {
    sub_168B58();
  }

  else
  {
    v7 = *(v0 + 16);
  }

  v8 = *(v0 + 40);
  v1[6] = v7;
  sub_168CF0();
  v1[9] = v9;
  v1[10] = v10;
  v1[11] = 0xE700000000000000;
  sub_1955C(v11, v8, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v12)
  {
    sub_C878(v8, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v13();
  }

  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = sub_10E364(v14);
  *v15 = v16;
  sub_168BF0(v15);
  sub_168BDC();
  sub_38F74();

  return v20(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1669B4(char a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 59) = a5;
  *(v6 + 58) = a4;
  *(v6 + 57) = a3;
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  *(v6 + 56) = a1;
  v7 = sub_17960();
  return _swift_task_switch(v7);
}

uint64_t sub_1669EC()
{
  sub_40240();
  v20 = v1;
  sub_C9EC();
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_172980;
  sub_38B4C();
  *(v5 + 32) = 0xD000000000000012;
  *(v5 + 40) = v6;
  *(v5 + 48) = v3;
  sub_775F0();
  v7[9] = v8;
  v7[10] = 0xD000000000000016;
  v7[11] = v9;
  if (v2)
  {
    v10 = 0;
    v11 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  else
  {
    v10 = *(v0 + 16);
    v11 = &type metadata for Double;
  }

  v12 = *(v0 + 58);
  *(v4 + 96) = v10;
  *(v4 + 120) = v11;
  *(v4 + 128) = 0xD000000000000018;
  *(v4 + 136) = 0x80000000001819D0;
  *(v4 + 144) = v12;
  sub_775F0();
  *(v4 + 168) = v13;
  *(v4 + 176) = 0xD000000000000016;
  *(v4 + 184) = v14;
  *(v4 + 216) = v13;
  *(v4 + 192) = v15;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v0 + 40) = v16;
  *v16 = v17;
  sub_40210(v16);

  return v19(0xD00000000000003BLL, 0x8000000000181A10, v4);
}

uint64_t sub_166B7C()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_626BC();

    return v9(v8);
  }
}

uint64_t sub_166CA8()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_166D04()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 75) = v3;
  *(v1 + 74) = v4;
  *(v1 + 73) = v5;
  *(v1 + 72) = v6;
  *(v1 + 16) = v7;
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v1 + 40) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_166D9C()
{
  sub_40240();
  v24 = v2;
  sub_C9EC();
  v3 = *(v0 + 40);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = swift_allocObject();
  v5 = sub_168C38(v4);
  v6 = sub_168BA0(v5, xmmword_172970);
  sub_401C8(v6, v7, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v8)
  {
    sub_C878(v3, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v9();
  }

  sub_38B4C();
  *(v1 + 80) = 0xD000000000000012;
  *(v1 + 88) = v10;
  *(v1 + 96) = v11;
  *(v1 + 120) = &type metadata for Bool;
  *(v1 + 128) = 0xD000000000000016;
  *(v1 + 136) = 0x8000000000181970;
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v13 = *(v0 + 24);
    v14 = &type metadata for Double;
  }

  v15 = *(v0 + 74);
  *(v1 + 144) = v13;
  *(v1 + 168) = v14;
  *(v1 + 176) = 0xD000000000000018;
  *(v1 + 184) = 0x80000000001819D0;
  *(v1 + 192) = v15;
  sub_775F0();
  *(v1 + 216) = v16;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = v17;
  *(v1 + 264) = v16;
  *(v1 + 240) = v18;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v19 = swift_task_alloc();
  v20 = sub_10E364(v19);
  *v20 = v21;
  sub_168BF0(v20);
  sub_168CDC();

  return v22();
}

uint64_t sub_166F98()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v5 = sub_8C38();
  v1[6] = sub_168D10(v5);
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_167024()
{
  sub_40240();
  v17 = v1;
  sub_C9EC();
  sub_168CB0();
  v2 = sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_40228(v2);
  v4 = sub_168C74(v3);
  v5 = sub_168BA0(v4, xmmword_1712E0);
  sub_401C8(v5, v6, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v8();
  }

  v9 = sub_168BFC();
  sub_1955C(v9, v0, &qword_1C5800, &unk_16F510);
  sub_168A88();
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v10();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = sub_76D0C(v11);
  *v12 = v13;
  sub_168B1C(v12);
  v14 = sub_40144(55);

  return v15(v14);
}

uint64_t sub_1671CC()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4008C;
  sub_40160();

  return v3(0xD000000000000037);
}

uint64_t sub_16727C()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  *(v0 + 40) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_167300()
{
  sub_40240();
  v18 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_168C98(v4);
  v6 = sub_168C38(v5);
  sub_168B00(v6, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = &type metadata for Double;
  }

  v8 = sub_168AB0(v7);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v10();
  }

  sub_168AD4();
  sub_168C68(v11);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = sub_10E364(v12);
  *v13 = v14;
  sub_168B1C(v13);
  v15 = sub_40144(32);

  return v16(v15);
}

uint64_t sub_16746C()
{
  sub_8A88();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 64) = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  *(v1 + 32) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_1674F4()
{
  sub_40240();
  v18 = v2;
  sub_C9EC();
  sub_40204();
  v3 = *(v1 + 64);
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_40228(v4);
  v6 = sub_401F8(v5);
  sub_168B68(v6, xmmword_1712E0)[3].n128_u8[0] = v3;
  sub_168CF0();
  v7[9] = v8;
  v7[10] = v9;
  v7[11] = 0xE700000000000000;
  sub_401C8(v7, v10, &qword_1C5800, &unk_16F510);
  v11 = sub_16D5CC();
  sub_40124(v11);
  sub_168D04();
  if (v12)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v13();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  *(v1 + 48) = v14;
  *v14 = v1;
  sub_40210(v14);
  sub_40160();
  v15 = sub_40144(61);

  return v16(v15);
}

uint64_t sub_167658()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v5 = sub_8C38();
  v1[6] = sub_168D10(v5);
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_1676E4()
{
  sub_5E06C();
  sub_C9EC();
  sub_168CB0();
  v3 = sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228(v3);
  *(sub_168C74(v4) + 16) = xmmword_1712E0;
  sub_38B4C();
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = v6;
  sub_401C8(v5, v7, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v8)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v9();
  }

  v10 = *(v1 + 40);
  sub_38B4C();
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = v11;
  sub_1955C(v12, v10, &qword_1C5800, &unk_16F510);
  sub_168A88();
  if (v8)
  {
    sub_C878(v10, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v13();
  }

  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v1 + 64) = v14;
  *v14 = v15;
  sub_168BF0(v14);
  sub_168BDC();
  sub_38F74();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1678C4()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v6 = sub_8C38();
  *(v1 + 48) = sub_168D10(v6);
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_167954()
{
  sub_5E06C();
  sub_C9EC();
  sub_168CB0();
  v3 = sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_168C98(v3);
  *(sub_168C74(v4) + 16) = xmmword_16F2F0;
  sub_38B4C();
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = v6;
  sub_401C8(v5, v7, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v8)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v9();
  }

  v10 = *(v1 + 40);
  sub_775F0();
  *(v2 + 80) = 0xD000000000000011;
  *(v2 + 88) = v11;
  *(v2 + 96) = v12;
  sub_38B4C();
  *(v2 + 120) = v13;
  *(v2 + 128) = 0xD000000000000014;
  *(v2 + 136) = v14;
  sub_1955C(v15, v10, &qword_1C5800, &unk_16F510);
  sub_168A88();
  if (v8)
  {
    sub_C878(v10, &qword_1C5800, &unk_16F510);
    sub_168CD0();
  }

  else
  {
    sub_168D28();
    sub_400B8();
    sub_40154();
    v16();
  }

  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v1 + 64) = v17;
  *v17 = v18;
  sub_168BF0(v17);
  sub_168BDC();
  sub_38F74();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_167B5C()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_168D40();

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_167C90()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_167D00()
{
  sub_8A88();
  *(v1 + 124) = v15;
  *(v1 + 48) = v14;
  *(v1 + 56) = v0;
  *(v1 + 123) = v2;
  *(v1 + 122) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  *(v1 + 121) = v8;
  *(v1 + 120) = v9;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  *(v1 + 64) = sub_8C38();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_167DD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 121);
  v3 = *(v0 + 120);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = swift_allocObject();
  *(v0 + 96) = v4;
  sub_168B68(v4, xmmword_173190)[3].n128_u8[0] = v3;
  sub_38B4C();
  *(v5 + 72) = &type metadata for Bool;
  *(v5 + 80) = 0xD000000000000010;
  *(v5 + 88) = v6;
  *(v5 + 96) = v2;
  sub_38B4C();
  v7[15] = &type metadata for Bool;
  v7[16] = 0xD000000000000010;
  v7[17] = v8;
  sub_401C8(v7, v9, &qword_1C5800, &unk_16F510);
  v10 = sub_16D5CC();
  if (sub_40124(v10) == 1)
  {
    sub_C878(*(v0 + 88), &qword_1C5800, &unk_16F510);
    sub_168CD0();
  }

  else
  {
    sub_168D28();
    sub_400B8();
    sub_40154();
    v11();
  }

  v12 = *(v0 + 80);
  sub_38B4C();
  *(v4 + 176) = 0xD000000000000014;
  *(v4 + 184) = v13;
  sub_1955C(v14, v12, &qword_1C5800, &unk_16F510);
  if (sub_168BC0() == 1)
  {
    sub_C878(*(v0 + 80), &qword_1C5800, &unk_16F510);
    *(v4 + 192) = 0u;
    *(v4 + 208) = 0u;
  }

  else
  {
    *(v4 + 216) = v1;
    sub_9910((v4 + 192));
    sub_400B8();
    sub_40154();
    v15();
  }

  v16 = *(v0 + 122);
  strcpy((v4 + 224), "totalMedCount");
  *(v4 + 238) = -4864;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    *(v4 + 248) = 0;
    *(v4 + 256) = 0;
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = &type metadata for Double;
  }

  v19 = *(v0 + 72);
  v20 = *(v0 + 40);
  v21 = *(v0 + 123);
  *(v4 + 240) = v17;
  *(v4 + 264) = v18;
  strcpy((v4 + 272), "hasDosageEdit");
  *(v4 + 286) = -4864;
  *(v4 + 288) = v21;
  *(v4 + 312) = &type metadata for Bool;
  *(v4 + 320) = 0x656761736F64;
  *(v4 + 328) = 0xE600000000000000;
  sub_1955C(v20, v19, &qword_1C5800, &unk_16F510);
  if (sub_168BC0() == 1)
  {
    sub_C878(*(v0 + 72), &qword_1C5800, &unk_16F510);
    *(v4 + 336) = 0u;
    *(v4 + 352) = 0u;
  }

  else
  {
    *(v4 + 360) = v1;
    sub_9910((v4 + 336));
    sub_400B8();
    sub_40154();
    v22();
  }

  v23 = *(v0 + 64);
  v24 = *(v0 + 48);
  *(v4 + 368) = 0x6E55656761736F64;
  *(v4 + 376) = 0xEA00000000007469;
  sub_1955C(v24, v23, &qword_1C5800, &unk_16F510);
  if (sub_168BC0() == 1)
  {
    sub_C878(*(v0 + 64), &qword_1C5800, &unk_16F510);
    *(v4 + 384) = 0u;
    *(v4 + 400) = 0u;
  }

  else
  {
    *(v4 + 408) = v1;
    sub_9910((v4 + 384));
    sub_400B8();
    sub_40154();
    v25();
  }

  sub_168CBC();
  *(v4 + 416) = v26;
  *(v4 + 424) = 0xEA00000000006465;
  *(v4 + 456) = &type metadata for Bool;
  *(v4 + 432) = v27;
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v0 + 104) = v28;
  *v28 = v29;
  v28[1] = sub_1681F4;
  sub_168BDC();

  return v30();
}

uint64_t sub_1681F4()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    sub_8ACC();
    sub_38F74();

    return _swift_task_switch(v7);
  }

  else
  {

    sub_400A4();
    sub_38F74();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_168344()
{
  sub_386A8();

  sub_C9BC();

  return v0();
}

uint64_t sub_1683D0()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v1[4] = sub_8BC0();
  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_168454()
{
  sub_40240();
  v13 = v2;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = swift_allocObject();
  v4 = sub_401F8(v3);
  *(v4 + 16) = xmmword_16F530;
  *(v4 + 32) = 0x6954646567676F6CLL;
  *(v4 + 40) = 0xEA0000000000656DLL;
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  sub_40124(v6);
  sub_168D04();
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v8();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v9 = swift_task_alloc();
  *(v1 + 48) = v9;
  *v9 = v1;
  sub_40210(v9);
  sub_40160();
  v10 = sub_40144(58);

  return v11(v10);
}

uint64_t sub_1685BC()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  *(v1 + 40) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_168648()
{
  sub_40240();
  v17 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_40228(v4);
  v6 = sub_168C38(v5);
  sub_168B00(v6, xmmword_1712E0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = &type metadata for Double;
  }

  v8 = sub_168AB0(v7);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    sub_40154();
    v10();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = sub_10E364(v11);
  *v12 = v13;
  sub_168B1C(v12);
  v14 = sub_40144(29);

  return v15(v14);
}

uint64_t sub_1687A4()
{
  swift_allocObject();
  sub_40154();
  return sub_1687F4(v0, v1, v2);
}

uint64_t sub_1687F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16D63C();
  sub_401A4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  v12 = sub_4348(v11);
  __chkstk_darwin(v12);
  sub_1955C(a1, &v16 - v13, &qword_1C57F8, &unk_172510);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_16D5DC();
  (*(v7 + 8))(a2, v3);
  sub_C878(a1, &qword_1C57F8, &unk_172510);
  return v14;
}

uint64_t sub_16896C(uint64_t a1, uint64_t a2)
{
  sub_16D63C();
  sub_401A4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16D5EC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_168AB0@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + 24);
  v3[6] = v1;
  v3[9] = a1;
  v3[10] = 1953066613;
  v3[11] = 0xE400000000000000;
  return result;
}

__n128 *sub_168B00(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x65756C6176;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

__n128 *sub_168B68(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x757461745364656DLL;
  result[2].n128_u64[1] = 0xE900000000000073;
  return result;
}

uint64_t sub_168B8C(uint64_t result, char a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 73) = a4;
  *(v5 + 72) = a2;
  *(v5 + 16) = result;
  return result;
}

__n128 *sub_168BA0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D695464656DLL;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_168BC0()
{

  return sub_369C(v1, 1, v0);
}

uint64_t sub_168BFC()
{
  result = *(v0 + 24);
  strcpy((v1 + 80), "medDisplayName");
  *(v1 + 95) = -18;
  return result;
}

double sub_168C2C()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t sub_168C44@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + 32);
  v3[12] = v1;
  v3[15] = a1;
  v3[16] = 1953066613;
  v3[17] = 0xE400000000000000;
  return result;
}

uint64_t *sub_168C80()
{
  *(v1 + 120) = v0;

  return sub_9910((v1 + 96));
}

uint64_t sub_168C98(uint64_t a1)
{

  return swift_allocObject();
}

double sub_168CD0()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t sub_168D10(uint64_t a1)
{
  *(v1 + 40) = a1;

  return swift_task_alloc();
}

uint64_t *sub_168D28()
{
  *(v1 + 168) = v0;

  return sub_9910((v1 + 144));
}

uint64_t sub_168D40()
{
}

uint64_t sub_168D58()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = sub_16C7FC();
  v1[18] = v3;
  sub_888C(v3);
  v1[19] = v4;
  v1[20] = sub_8BC0();
  v5 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  sub_4348(v5);
  v1[21] = sub_8BC0();
  v6 = sub_16C89C();
  v1[22] = v6;
  sub_888C(v6);
  v1[23] = v7;
  v1[24] = sub_8BC0();
  v8 = sub_16C8FC();
  v1[25] = v8;
  sub_888C(v8);
  v1[26] = v9;
  v1[27] = sub_8BC0();
  v10 = sub_16C80C();
  v1[28] = v10;
  sub_888C(v10);
  v1[29] = v11;
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v12 = sub_16C83C();
  v1[32] = v12;
  sub_888C(v12);
  v1[33] = v13;
  v1[34] = sub_8BC0();
  v14 = sub_16C7DC();
  v1[35] = v14;
  sub_888C(v14);
  v1[36] = v15;
  v1[37] = sub_8BC0();
  v16 = sub_16DBEC();
  v1[38] = v16;
  sub_888C(v16);
  v1[39] = v17;
  v1[40] = sub_8C38();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v18 = sub_17960();

  return _swift_task_switch(v18);
}

uint64_t sub_16903C()
{
  v94 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 120);
  v8 = sub_16DBAC();
  sub_8B48(v8, v0 + 48);
  v90 = *(v3 + 16);
  v90(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 280);
  if (v11)
  {
    v87 = *(v0 + 304);
    v85 = *(v0 + 336);
    v16 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v93 = v83;
    *v16 = 136315394;
    v17 = sub_16E7AC();
    v19 = sub_3AB7C(v17, v18, &v93);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v20, v21, &protocol conformance descriptor for Input);
    v22 = sub_16E68C();
    v24 = v23;
    v25 = sub_146E70();
    v26(v25, v15);
    v27 = sub_3AB7C(v22, v24, &v93);

    *(v16 + 14) = v27;
    _os_log_impl(&def_259DC, v9, v10, "%s Parsing Input: %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v83);
    sub_8A2C(v16);

    v28 = *(v13 + 8);
    v28(v85, v87);
  }

  else
  {

    v29 = sub_146E70();
    v30(v29, v15);
    v28 = *(v13 + 8);
    v28(v12, v14);
  }

  v31 = *(v0 + 232);
  sub_16C7CC();
  v32 = *(v31 + 88);
  v33 = sub_C9F8();
  if (v32(v33) != enum case for Parse.uso(_:))
  {
    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_8:
    sub_16C7CC();
    v41 = sub_C9F8();
    if (v32(v41) != enum case for Parse.directInvocation(_:))
    {
      (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      v48 = sub_16DBBC();
      sub_8B48(v48, v0 + 72);
      v49 = sub_6B5B8();
      (v90)(v49);
      v50 = sub_16DBDC();
      v51 = sub_16E37C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&def_259DC, v50, v51, "Received unsupported type of input", v52, 2u);
        sub_8A2C(v52);
      }

      v53 = sub_C9F8();
      (v28)(v53);
      goto LABEL_25;
    }

    v42 = *(v0 + 240);
    v44 = *(v0 + 152);
    v43 = *(v0 + 160);
    v45 = *(v0 + 144);
    (*(*(v0 + 232) + 96))(v42, *(v0 + 224));
    (*(v44 + 32))(v43, v42, v45);
    v46 = sub_16C7EC();
    if (v46)
    {
      sub_17400(v46, (v0 + 16), 0xD000000000000012, 0x800000000017A960);

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v47 = *(v0 + 128);
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          v91 = *(v0 + 344);
          v92 = *(v47 + 16);

          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_C878(v0 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_21:
    v59 = sub_16DBBC();
    sub_8B48(v59, v0 + 96);
    v60 = sub_6B5B8();
    (v90)(v60);
    v61 = sub_16DBDC();
    v62 = sub_16E37C();
    v63 = os_log_type_enabled(v61, v62);
    v65 = *(v0 + 152);
    v64 = *(v0 + 160);
    v66 = *(v0 + 144);
    if (v63)
    {
      v89 = v28;
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&def_259DC, v61, v62, "LogMedAsNeededConfirmationStrategy failed to unpack directInvocation, returning nil", v67, 2u);
      sub_8A2C(v67);

      v68 = sub_387CC();
      v89(v68);
    }

    else
    {

      v69 = sub_387CC();
      (v28)(v69);
    }

    (*(v65 + 8))(v64, v66);
LABEL_25:
    v91 = 0;
    v92 = 1;
    goto LABEL_26;
  }

  v34 = *(v0 + 192);
  v86 = *(v0 + 200);
  v88 = v28;
  v35 = *(v0 + 184);
  v84 = *(v0 + 176);
  v36 = *(v0 + 168);
  (*(*(v0 + 232) + 96))(*(v0 + 248), *(v0 + 224));
  v37 = sub_6B5B8();
  v38(v37);
  sub_16C82C();
  v39 = sub_16C88C();
  (*(v35 + 8))(v34, v84);
  sub_9AD9C(v39, v36);

  if (sub_369C(v36, 1, v86) == 1)
  {
    v40 = *(v0 + 168);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_C878(v40, &qword_1C6FF0, &unk_1730A0);
    v28 = v88;
    goto LABEL_8;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 168), *(v0 + 200));
  if (sub_16C8CC())
  {
    v55 = *(v0 + 264);
    v54 = *(v0 + 272);
    v56 = *(v0 + 256);
    v57 = *(v0 + 128);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    (*(v55 + 8))(v54, v56);
    v92 = *(v57 + 16);

    v58 = 1;
LABEL_18:
    v91 = v58;
    goto LABEL_26;
  }

  v72 = sub_16C8DC();
  v73 = *(v0 + 200);
  if (v72)
  {
    v74 = sub_146E70();
    v75(v74, v73);
    v76 = sub_98BD8();
    v77(v76);
  }

  else
  {
    v78 = sub_16C8EC();
    v79 = sub_146E70();
    v80(v79, v73);
    v81 = sub_98BD8();
    v82(v81);
    if ((v78 & 1) == 0)
    {
      v92 = *(*(v0 + 128) + 16);

      v58 = 2;
      goto LABEL_18;
    }
  }

  v92 = *(*(v0 + 128) + 16);

  v91 = 0;
LABEL_26:

  v70 = *(v0 + 8);

  return v70(v91, v92);
}

uint64_t sub_169870(uint64_t a1)
{
  v2 = sub_16C7DC();
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_16DBEC();
  sub_42F0();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_4304();
  v15 = v14 - v13;
  v16 = sub_16DBAC();
  sub_8B48(v16, v33);
  v31 = v9;
  (*(v11 + 16))(v15, v16, v9);
  (*(v4 + 16))(v8, a1, v2);
  v17 = sub_16DBDC();
  v18 = sub_16E36C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v32);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24, &protocol conformance descriptor for Input);
    v25 = sub_16E68C();
    v27 = v26;
    (*(v4 + 8))(v8, v2);
    v28 = sub_3AB7C(v25, v27, &v32);

    *(v19 + 14) = v28;
    _os_log_impl(&def_259DC, v17, v18, "%s Handling Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v30);
    sub_8A2C(v19);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  (*(v11 + 8))(v15, v31);
  return sub_16C47C();
}

uint64_t sub_169B94()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v1[16] = sub_8C38();
  v1[17] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[18] = v6;
  sub_888C(v6);
  v1[19] = v7;
  v1[20] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[21] = v8;
  sub_888C(v8);
  v1[22] = v9;
  v1[23] = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_169D08(uint64_t a1)
{
  v24 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = sub_16DBBC();
  sub_8B48(v5, (v1 + 7));
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[22];
  v9 = v1[23];
  v11 = v1[21];
  if (v8)
  {
    v22 = v1[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    v15 = sub_16E7AC();
    v21 = v9;
    v17 = sub_3AB7C(v15, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v12, 0x16u);
    sub_C878(v13, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v13);
    sub_2D64(v14);
    sub_8A2C(v14);
    sub_8A2C(v12);

    (*(v10 + 8))(v21, v22);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_2D20((v1[12] + 64), *(v1[12] + 88));
  v19 = swift_task_alloc();
  v1[24] = v19;
  *v19 = v1;
  v19[1] = sub_169F58;

  return sub_7AA38();
}

uint64_t sub_169F58()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v5;

  if (v0)
  {

    sub_C9BC();

    return v6();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v8);
  }
}

uint64_t sub_16A0AC(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[16];
  v3 = v1[17];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_6B5C8();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v2 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 200, (v1 + 2));
  v9 = v1[5];
  v10 = v1[6];
  sub_2D20(v1 + 2, v9);
  v11 = swift_task_alloc();
  v1[26] = v11;
  *v11 = v1;
  v11[1] = sub_16A234;
  v12 = v1[25];
  v13 = v1[20];
  v14 = v1[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v14, v12, v13, v9, v10);
}

uint64_t sub_16A234()
{
  sub_8A88();
  sub_C9D4();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v4 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_16A334()
{
  sub_8A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_16DBEC();
  v1[22] = v3;
  sub_888C(v3);
  v1[23] = v4;
  v1[24] = sub_8BC0();
  v5 = sub_2440(&qword_1C5990, &unk_16F760);
  sub_4348(v5);
  v1[25] = sub_8BC0();
  v6 = sub_16C46C();
  sub_4348(v6);
  v1[26] = sub_8BC0();
  v7 = sub_16C7BC();
  v1[27] = v7;
  sub_888C(v7);
  v1[28] = v8;
  v1[29] = sub_8BC0();
  v9 = sub_16D5CC();
  v1[30] = v9;
  sub_888C(v9);
  v1[31] = v10;
  v1[32] = sub_8BC0();
  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v11);
  v1[33] = sub_8C38();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v12 = sub_17960();

  return _swift_task_switch(v12);
}

uint64_t sub_16A500()
{
  sub_C9EC();
  v2 = v1[21];
  v3 = *(v2 + 16);
  if (sub_3B35C(v3))
  {
    sub_3B360();
    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = sub_16E48C();
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = sub_16BA14(v4, &selRef_completionStatus);
    if (v6)
    {
      if (v5 != 0x6E656B6174 || v6 != 0xE500000000000000)
      {
        sub_16E6BC();
      }
    }
  }

  v8 = *(v2 + 16);
  if (!sub_3B35C(v8))
  {
    goto LABEL_17;
  }

  sub_16BCBC();
  if (v0)
  {

    v0 = sub_16E48C();
  }

  else
  {
    v0 = *(v8 + 32);
  }

  sub_16BA14(v0, &selRef_name);
  if (v9)
  {
    sub_16E23C();

    v10 = 0;
  }

  else
  {
LABEL_17:
    v10 = 1;
  }

  sub_214C(v1[35], v10, 1, v1[30]);
  v11 = *(v2 + 16);
  if (!sub_3B35C(v11))
  {
    goto LABEL_23;
  }

  sub_16BCBC();
  if (v0)
  {

    v12 = sub_16E48C();
  }

  else
  {
    v12 = *(v11 + 32);
  }

  sub_16BA14(v12, &selRef_schedule);
  if (v13)
  {
    v14 = v1[34];
    v16 = v1[31];
    v15 = v1[32];
    v17 = v1[30];
    sub_16E23C();

    sub_214C(v14, 0, 1, v17);
    (*(v16 + 32))(v15, v14, v17);
  }

  else
  {
LABEL_23:
    v18 = v1[34];
    v19 = v1[30];
    sub_214C(v18, 1, 1, v19);
    sub_16E23C();
    if (sub_369C(v18, 1, v19) != 1)
    {
      sub_C878(v1[34], &qword_1C5800, &unk_16F510);
    }
  }

  v20 = v1[32];
  v21 = v1[33];
  v23 = v1[30];
  v22 = v1[31];
  v1[36] = *(v1[21] + 184);
  (*(v22 + 16))(v21, v20, v23);
  sub_214C(v21, 0, 1, v23);

  v24 = swift_task_alloc();
  v1[37] = v24;
  *v24 = v1;
  v24[1] = sub_16A860;

  return sub_1663FC();
}

uint64_t sub_16A860()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;

  v8 = *(v4 + 264);
  if (v0)
  {

    sub_C878(v8, &qword_1C5800, &unk_16F510);
    sub_8ACC();

    return _swift_task_switch(v9);
  }

  else
  {
    *(v5 + 304) = v3;
    sub_C878(v8, &qword_1C5800, &unk_16F510);

    v10 = swift_task_alloc();
    *(v5 + 312) = v10;
    *v10 = v7;
    v10[1] = sub_16AA58;

    return sub_66A84(0x6C65636E6163, 0xE600000000000000);
  }
}

uint64_t sub_16AA58()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  *v3 = v4;
  v2[40] = v5;
  v2[41] = v6;

  v7 = swift_task_alloc();
  v2[42] = v7;
  *v7 = v4;
  v7[1] = sub_16AB8C;

  return sub_66A84(0x6D7269666E6F63, 0xE700000000000000);
}

uint64_t sub_16AB8C()
{
  sub_8A88();
  sub_C9D4();
  *(v2 + 344) = v0;
  *(v2 + 352) = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_16AC7C()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v3 == 0;
  if (!v3)
  {
    v3 = 0xE600000000000000;
  }

  v24 = v3;
  v8 = 0x6C65636E6143;
  if (!v7)
  {
    v8 = v0[40];
  }

  v23 = v8;
  if (!v1)
  {
    v2 = 0x6D7269666E6F43;
  }

  v22 = v2;
  if (v1)
  {
    v9 = v0[44];
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  v0[5] = &type metadata for WellnessFeatureFlagsKey;
  v0[6] = sub_3736C();
  *(v0 + 16) = 4;
  v10 = sub_16C86C();
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_6B5C8();
  sub_16C79C();
  sub_16B5C0();
  v11 = sub_16C55C();
  sub_214C(v5, 0, 1, v11);
  sub_16C78C();
  sub_16C77C();
  v12 = [v4 catId];
  sub_16E1BC();

  sub_387CC();
  sub_16C76C();
  sub_16C7AC();
  sub_8388(v6 + 200, (v0 + 7));
  v13 = v0[10];
  v14 = v0[11];
  sub_2D20(v0 + 7, v13);
  v0[15] = type metadata accessor for WellnessSnippets(0);
  v0[16] = sub_6B40C(&qword_1C5EE0, type metadata accessor for WellnessSnippets, &protocol conformance descriptor for WellnessSnippets);
  v15 = sub_9910(v0 + 12);
  *v15 = 0xD000000000000031;
  v15[1] = 0x800000000017DF40;
  v15[2] = v23;
  v15[3] = v24;
  v15[4] = v22;
  v15[5] = v9;
  *(v15 + 48) = v10 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v16 = swift_allocObject();
  v0[45] = v16;
  *(v16 + 16) = xmmword_170F70;
  *(v16 + 32) = v4;
  v17 = v4;
  v18 = swift_task_alloc();
  v0[46] = v18;
  *v18 = v0;
  v18[1] = sub_16AF60;
  v19 = v0[29];
  v20 = v0[20];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v20, v0 + 12, v16, v19, v13, v14);
}

uint64_t sub_16AF60()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 96));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_16B060()
{
  v1 = *(v0 + 280);

  v2 = sub_387CC();
  v3(v2);
  v4 = sub_98BD8();
  v5(v4);
  sub_C878(v1, &qword_1C5800, &unk_16F510);
  sub_2D64((v0 + 56));
  sub_16BC98();

  sub_C9BC();

  return v6();
}

uint64_t sub_16B168(uint64_t a1)
{
  v2 = sub_16DBBC();
  sub_8B48(v2, v1 + 136);
  v3 = sub_6B5B8();
  v4(v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "Couldn't create logMedAsNeededConfirmation_Dialog, returning generic error output.", v7, 2u);
    sub_8A2C(v7);
  }

  v8 = sub_C9F8();
  v9(v8);
  sub_16BB14();
  *(v1 + 376) = swift_allocError();
  v10 = swift_task_alloc();
  *(v1 + 384) = v10;
  *v10 = v1;
  v10[1] = sub_16B2D8;

  return sub_169B94();
}

uint64_t sub_16B2D8()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 392) = v0;

  if (!v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_16B3D8()
{
  v1 = v0[35];
  (*(v0[31] + 8))(v0[32], v0[30]);
  sub_C878(v1, &qword_1C5800, &unk_16F510);
  sub_16BC98();

  sub_C9BC();

  return v2();
}

uint64_t sub_16B4B8()
{
  v1 = v0[35];
  (*(v0[31] + 8))(v0[32], v0[30]);
  sub_C878(v1, &qword_1C5800, &unk_16F510);

  sub_C9BC();

  return v2();
}

uint64_t sub_16B5C0()
{
  v0 = sub_16C96C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_4304();
  v4 = v3 - v2;
  v5 = sub_16C8BC();
  sub_42F0();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_16C8AC();
  sub_16C95C();
  (*(v7 + 16))(v11, v13, v5);
  sub_16C93C();
  sub_16C54C();
  sub_2440(&qword_1C5988, &unk_16F750);
  v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_16F530;
  (*(v1 + 16))(v15 + v14, v4, v0);
  sub_16C53C();
  (*(v1 + 8))(v4, v0);
  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_16B818(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_B94A8;

  return sub_168D58();
}

uint64_t sub_16B8B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_16A334();
}

uint64_t sub_16B948()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_169B94();
}

uint64_t sub_16BA14(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_16E1BC();

  return v4;
}

void (*sub_16BA80(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_16B9F0(a3);
  sub_3B360();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_16E48C();
  }

  *a1 = v7;
  return sub_16BB0C;
}

unint64_t sub_16BB14()
{
  result = qword_1CBC60;
  if (!qword_1CBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBC60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogMedAsNeededConfirmationStrategyError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x16BC04);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_16BC40()
{
  result = qword_1CBC68;
  if (!qword_1CBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBC68);
  }

  return result;
}

uint64_t sub_16BC98()
{
}

uint64_t sub_16BCBC()
{

  return sub_3B360();
}