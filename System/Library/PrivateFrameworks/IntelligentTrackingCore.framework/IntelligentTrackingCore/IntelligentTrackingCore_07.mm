unint64_t sub_1BB61D44C()
{
  result = qword_1EBC5D460;
  if (!qword_1EBC5D460)
  {
    sub_1BB6BA7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D460);
  }

  return result;
}

unint64_t sub_1BB61D4C8()
{
  result = qword_1EBC5D468;
  if (!qword_1EBC5D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D468);
  }

  return result;
}

double keypath_set_61Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*a2 + *a5) = *a1;

  return result;
}

uint64_t sub_1BB61D58C(uint64_t a1)
{
  result = type metadata accessor for DKCamera(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of DKPersonMotionFilter.lastUpdateRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 744);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of DKPersonMotionFilter.updateStubFace(faceRect:bodyRect:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  v5 = *(*v2 + 840);
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v6;
  v12 = v3;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = v4;
  return v5(v11, v9);
}

uint64_t sub_1BB61E468(uint64_t a1)
{
  result = sub_1BB6BA7F4();
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

uint64_t dispatch thunk of DKPersonMotionFilter.Measurement.faceRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 168);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of DKPersonMotionFilter.Measurement.bodyRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 192);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t sub_1BB61E948(uint64_t a1)
{
  result = sub_1BB6BA7F4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DKMotion3(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

IntelligentTrackingCore::DKIdentityConfidence __swiftcall DKIdentityConfidence.init(id:confidence:)(Swift::Int id, Swift::Double confidence)
{
  *v2 = id;
  *(v2 + 8) = confidence;
  result.confidence = confidence;
  result.id = id;
  return result;
}

uint64_t sub_1BB61F024@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

void Array<A>.max()(char *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1;

  sub_1BB62E3A8(&v8);
  v3 = *(v8 + 2);
  if (v3)
  {
    v4 = &v8[16 * v3 + 16];
    v5 = *v4;
    v6 = *(v4 + 1);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = v3 == 0;

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
}

uint64_t DKObjectTrackerState.__allocating_init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = swift_allocObject();
  v24 = *a3;
  v25 = a3[1];
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion;
  v27 = type metadata accessor for DKMotion3(0);
  (*(*(v27 - 8) + 56))(v23 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
  v30 = sub_1BB6BA7F4();
  v31 = *(*(v30 - 8) + 32);
  v31(v23 + v29, a1, v30);
  v32 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid;
  v33 = sub_1BB6BA844();
  (*(*(v33 - 8) + 32))(v23 + v32, a2, v33);
  v34 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
  *v34 = a9;
  v34[1] = a10;
  v34[2] = a11;
  v34[3] = a12;
  v35 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
  *v35 = v24;
  v35[1] = v25;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_anstId) = a4;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerId) = a5;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v23 + v26);
  v31(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, a8, v30);
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_framesSinceLastUpdate) = a14;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerConfidence) = a13;
  *(v23 + v28) = a15;
  return v23;
}

uint64_t sub_1BB61F3E4()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1BB61F418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB61F4F4(uint64_t a1)
{
  v2 = sub_1BB62E564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB61F530(uint64_t a1)
{
  v2 = sub_1BB62E564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityConfidence.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4A0, &qword_1BB6C3BE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E564();
  sub_1BB6BB984();
  v8[15] = 0;
  sub_1BB6BB734();
  if (!v1)
  {
    v8[14] = 1;
    sub_1BB6BB724();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DKIdentityConfidence.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x1BFB117B0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1BFB117D0](*&v2);
}

uint64_t DKIdentityConfidence.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1BFB117D0](*&v3);
  return sub_1BB6BB964();
}

uint64_t DKIdentityConfidence.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4B0, &qword_1BB6C3BF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E564();
  sub_1BB6BB974();
  if (!v2)
  {
    v13[15] = 0;
    v9 = sub_1BB6BB674();
    v13[14] = 1;
    sub_1BB6BB664();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BB61F99C()
{
  v1 = *(v0 + 8);
  MEMORY[0x1BFB117B0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1BFB117D0](*&v2);
}

uint64_t sub_1BB61F9E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](*&v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x1BFB117D0](*&v4);
  return sub_1BB6BB964();
}

void sub_1BB61FB64(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB61FBA4@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB61FBC4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

double sub_1BB61FE38(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation) = a1;

  return result;
}

uint64_t sub_1BB61FE90(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB61FEEC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB61FF48(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

unint64_t sub_1BB61FF8C(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 1684632949;
      break;
    case 2:
      result = 1952671090;
      break;
    case 3:
      result = 0x797469746E656469;
      break;
    case 4:
      result = 0x644974736E61;
      break;
    case 5:
      result = 0x4972656B63617274;
      break;
    case 6:
      result = 0x644970756F7267;
      break;
    case 7:
      result = 0x6E6F69746F6DLL;
      break;
    case 8:
      result = 0x616470557473616CLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6573624F7473616CLL;
      break;
    case 12:
      result = 0x77615965636166;
      break;
    case 13:
      result = 0x6374695065636166;
      break;
    case 14:
      result = 0x6C6C6F5265636166;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BB62017C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BB6343A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BB6201AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BB61FF8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BB6201F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB6343A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB620228(uint64_t a1)
{
  v2 = sub_1BB62E690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB620264(uint64_t a1)
{
  v2 = sub_1BB62E690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKFaceTrackerState.__allocating_init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:faceYaw:facePitch:faceRoll:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  v28 = swift_allocObject();
  v43 = *a3;
  v29 = a3[1];
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion;
  v31 = type metadata accessor for DKMotion3(0);
  (*(*(v31 - 8) + 56))(v28 + v30, 1, 1, v31);
  v44 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation;
  v32 = v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  v33 = v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  v34 = v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  v35 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
  v36 = sub_1BB6BA7F4();
  v37 = *(*(v36 - 8) + 32);
  v37(v28 + v35, a1, v36);
  v38 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid;
  v39 = sub_1BB6BA844();
  (*(*(v39 - 8) + 32))(v28 + v38, a2, v39);
  v40 = (v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  *v40 = a9;
  v40[1] = a10;
  v40[2] = a11;
  v40[3] = a12;
  v41 = (v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
  *v41 = v43;
  v41[1] = v29;
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_anstId) = a4;
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerId) = a5;
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v28 + v30);
  v37(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, a8, v36);
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_framesSinceLastUpdate) = a14;
  *(v28 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerConfidence) = a13;
  *(v28 + v44) = a15;
  *v32 = a16;
  *(v32 + 8) = a17 & 1;
  *v33 = a18;
  *(v33 + 8) = a19 & 1;
  *v34 = a20;
  *(v34 + 8) = a21 & 1;
  return v28;
}

uint64_t DKFaceTrackerState.init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:faceYaw:facePitch:faceRoll:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  v44 = *a3;
  v27 = a3[1];
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion;
  v29 = type metadata accessor for DKMotion3(0);
  (*(*(v29 - 8) + 56))(v21 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation) = 0;
  v31 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
  v35 = sub_1BB6BA7F4();
  v36 = *(*(v35 - 8) + 32);
  v36(v21 + v34, a1, v35);
  v37 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid;
  v38 = sub_1BB6BA844();
  (*(*(v38 - 8) + 32))(v21 + v37, a2, v38);
  v39 = (v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  *v39 = a9;
  v39[1] = a10;
  v39[2] = a11;
  v39[3] = a12;
  v40 = (v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
  *v40 = v44;
  v40[1] = v27;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_anstId) = a4;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerId) = a5;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v21 + v28);
  v36(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, a8, v35);
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_framesSinceLastUpdate) = a14;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerConfidence) = a13;
  *(v21 + v30) = a15;

  *v31 = a16;
  *(v31 + 8) = a17 & 1;
  *v32 = a18;
  *(v32 + 8) = a19 & 1;
  *v33 = a20;
  *(v33 + 8) = a21 & 1;
  return v21;
}

uint64_t DKFaceTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, v2);

  return v0;
}

uint64_t DKFaceTrackerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB620A7C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v27 - v3;
  v4 = sub_1BB6BA844();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4B8, &qword_1BB6C3BF8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E690();
  sub_1BB6BB984();
  v16 = *(v7 + 16);
  v16(v11, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time, v6);
  LOBYTE(v37) = 0;
  sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v35 = v12;
  v17 = v15;
  v18 = v34;
  sub_1BB6BB744();
  if (v18)
  {
    (*(v7 + 8))(v11, v6);
    return (*(v13 + 8))(v15, v35);
  }

  else
  {
    v28 = v16;
    v34 = v13;
    v20 = v11;
    v21 = *(v7 + 8);
    v21(v20, v6);
    (*(v32 + 16))(v31, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid, v33);
    LOBYTE(v37) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1BB6BB744();
    v27 = v21;
    (*(v32 + 8))(v31, v33);
    v22 = v36;
    v23 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect + 16);
    v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
    v38 = v23;
    v39 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1BB6BB744();
    v24 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity + 8);
    *&v37 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
    *(&v37 + 1) = v24;
    v39 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    LOBYTE(v37) = 4;
    sub_1BB6BB734();
    LOBYTE(v37) = 5;
    sub_1BB6BB734();
    LOBYTE(v37) = 6;
    sub_1BB6BB734();
    sub_1BB62E5B8(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion, v30);
    LOBYTE(v37) = 7;
    v33 = type metadata accessor for DKMotion3(0);
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
    sub_1BB6BB704();
    sub_1BB62E628(v30);
    v28(v29, v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, v6);
    v25 = v29;
    LOBYTE(v37) = 8;
    sub_1BB6BB744();
    v27(v25, v6);
    LOBYTE(v37) = 9;
    sub_1BB6BB734();
    LOBYTE(v37) = 10;
    sub_1BB6BB724();
    *&v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation);
    v39 = 11;
    type metadata accessor for DKFaceObservation(0);
    sub_1BB62E6E4(&qword_1EBC5C568, 255, type metadata accessor for DKFaceObservation, &protocol conformance descriptor for DKFaceObservation);
    sub_1BB6BB704();
    LOBYTE(v37) = 12;
    sub_1BB6BB6E4();
    LOBYTE(v37) = 13;
    sub_1BB6BB6E4();
    v26 = v35;
    LOBYTE(v37) = 14;
    sub_1BB6BB6E4();
    return (*(v34 + 8))(v17, v26);
  }
}

uint64_t DKFaceTrackerState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = v47 - v4;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1BB6BA7F4();
  v55 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v51 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = v47 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4C8, &qword_1BB6C3C00);
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v12 = v47 - v11;
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_motion;
  v14 = type metadata accessor for DKMotion3(0);
  v15 = *(*(v14 - 8) + 56);
  v66 = v13;
  v15(v1 + v13, 1, 1, v14);
  v62 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastObservation) = 0;
  v16 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  *v17 = 0;
  *(v17 + 8) = 1;
  v64 = a1;
  v65 = v1;
  v18 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  *v18 = 0;
  *(v18 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E690();
  v61 = v12;
  v19 = v63;
  sub_1BB6BB974();
  if (v19)
  {
    v46 = v65;
    sub_1BB62E628(v65 + v66);

    type metadata accessor for DKFaceTrackerState(0);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    v20 = v57;
    v63 = v14;
    v50 = v16;
    v49 = v17;
    v48 = v18;
    v21 = v56;
    LOBYTE(v67) = 0;
    v22 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v23 = v58;
    v24 = v60;
    sub_1BB6BB684();
    v47[1] = v22;
    v26 = *(v55 + 32);
    v27 = v65;
    v47[2] = OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time;
    v26(v65 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_time, v23, v24);
    LOBYTE(v67) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v28 = v53;
    sub_1BB6BB684();
    v47[0] = v26;
    (*(v54 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_uuid, v20, v28);
    type metadata accessor for CGRect(0);
    v69 = 2;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    v58 = 0;
    sub_1BB6BB684();
    v29 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
    v30 = v68;
    *v29 = v67;
    v29[1] = v30;
    v69 = 3;
    sub_1BB604730();
    sub_1BB6BB684();
    v31 = *(&v67 + 1);
    v32 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity);
    *v32 = v67;
    v32[1] = v31;
    LOBYTE(v67) = 4;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_anstId) = sub_1BB6BB674();
    LOBYTE(v67) = 5;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerId) = sub_1BB6BB674();
    LOBYTE(v67) = 6;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_groupId) = sub_1BB6BB674();
    LOBYTE(v67) = 7;
    sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
    v33 = v52;
    sub_1BB6BB644();
    sub_1BB62E4F4(v33, v27 + v66);
    LOBYTE(v67) = 8;
    v34 = v51;
    sub_1BB6BB684();
    (v47[0])(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_lastUpdated, v34, v60);
    LOBYTE(v67) = 9;
    *(v65 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_framesSinceLastUpdate) = sub_1BB6BB674();
    LOBYTE(v67) = 10;
    sub_1BB6BB664();
    *(v65 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerConfidence) = v35;
    type metadata accessor for DKFaceObservation(0);
    v69 = 11;
    sub_1BB62E6E4(&qword_1EBC5C670, 255, type metadata accessor for DKFaceObservation, &protocol conformance descriptor for DKFaceObservation);
    sub_1BB6BB644();
    *(v65 + v62) = v67;

    LOBYTE(v67) = 12;
    v36 = sub_1BB6BB624();
    v37 = v50;
    *v50 = v36;
    *(v37 + 8) = v38 & 1;
    LOBYTE(v67) = 13;
    v39 = sub_1BB6BB624();
    v40 = v49;
    *v49 = v39;
    *(v40 + 8) = v41 & 1;
    LOBYTE(v67) = 14;
    v42 = sub_1BB6BB624();
    v44 = v43;
    (*(v21 + 8))(v61, v59);
    v45 = v48;
    *v48 = v42;
    *(v45 + 8) = v44 & 1;
    __swift_destroy_boxed_opaque_existential_1(v64);
    return v65;
  }

  return v46;
}

void sub_1BB621E24(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB621E6C@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB621E90(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB622218@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DKFaceTrackerState(0);
  result = sub_1BB6BB314();
  *a2 = result;
  return result;
}

void sub_1BB622344(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB622384@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB6223A4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

double sub_1BB622618(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation) = a1;

  return result;
}

uint64_t sub_1BB622658(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BB6BB7E4();
  }

  return v12 & 1;
}

uint64_t sub_1BB6226EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1BB6BB924();
  a3(v5);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB622758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1BB6BACC4();
}

uint64_t sub_1BB6227B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1BB6BB924();
  a4(v6);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

unint64_t sub_1BB622818@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BB6343F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BB622848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB6343F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB622870(uint64_t a1)
{
  v2 = sub_1BB62E74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6228AC(uint64_t a1)
{
  v2 = sub_1BB62E74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKBodyTrackerState.__allocating_init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = swift_allocObject();
  v24 = *a3;
  v25 = a3[1];
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion;
  v27 = type metadata accessor for DKMotion3(0);
  (*(*(v27 - 8) + 56))(v23 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
  v30 = sub_1BB6BA7F4();
  v31 = *(*(v30 - 8) + 32);
  v31(v23 + v29, a1, v30);
  v32 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid;
  v33 = sub_1BB6BA844();
  (*(*(v33 - 8) + 32))(v23 + v32, a2, v33);
  v34 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  *v34 = a9;
  v34[1] = a10;
  v34[2] = a11;
  v34[3] = a12;
  v35 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
  *v35 = v24;
  v35[1] = v25;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_anstId) = a4;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerId) = a5;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v23 + v26);
  v31(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, a8, v30);
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_framesSinceLastUpdate) = a14;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerConfidence) = a13;
  *(v23 + v28) = a15;
  return v23;
}

uint64_t DKBodyTrackerState.init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = *a3;
  v24 = a3[1];
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion;
  v26 = type metadata accessor for DKMotion3(0);
  (*(*(v26 - 8) + 56))(v15 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation) = 0;
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
  v29 = sub_1BB6BA7F4();
  v30 = *(*(v29 - 8) + 32);
  v30(v15 + v28, a1, v29);
  v31 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid;
  v32 = sub_1BB6BA844();
  (*(*(v32 - 8) + 32))(v15 + v31, a2, v32);
  v33 = (v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  *v33 = a9;
  v33[1] = a10;
  v33[2] = a11;
  v33[3] = a12;
  v34 = (v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
  *v34 = v23;
  v34[1] = v24;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_anstId) = a4;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerId) = a5;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v15 + v25);
  v30(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, a8, v29);
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_framesSinceLastUpdate) = a14;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerConfidence) = a13;
  *(v15 + v27) = a15;

  return v15;
}

uint64_t DKBodyTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, v2);

  return v0;
}

uint64_t DKBodyTrackerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB622F68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v30 - v3;
  v4 = sub_1BB6BA844();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4D0, &qword_1BB6C3C08);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E74C();
  sub_1BB6BB984();
  v16 = *(v7 + 16);
  v16(v11, v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time, v6);
  LOBYTE(v42) = 0;
  v17 = sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v40 = v12;
  v18 = v15;
  v19 = v17;
  v20 = v39;
  sub_1BB6BB744();
  if (v20)
  {
    (*(v7 + 8))(v11, v6);
    return (*(v13 + 8))(v18, v40);
  }

  else
  {
    v33 = v16;
    v39 = v13;
    v22 = v11;
    v23 = *(v7 + 8);
    v23(v22, v6);
    (*(v37 + 16))(v36, v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid, v38);
    LOBYTE(v42) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1BB6BB744();
    v31 = v23;
    v32 = v19;
    (*(v37 + 8))(v36, v38);
    v24 = v41;
    v25 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect + 16);
    v42 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
    v43 = v25;
    v44 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1BB6BB744();
    v26 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity + 8);
    *&v42 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
    *(&v42 + 1) = v26;
    v44 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    LOBYTE(v42) = 4;
    sub_1BB6BB734();
    LOBYTE(v42) = 5;
    sub_1BB6BB734();
    LOBYTE(v42) = 6;
    sub_1BB6BB734();
    v27 = v35;
    sub_1BB62E5B8(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion, v35);
    LOBYTE(v42) = 7;
    v38 = type metadata accessor for DKMotion3(0);
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
    sub_1BB6BB704();
    sub_1BB62E628(v27);
    v28 = v34;
    v33(v34, v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, v6);
    LOBYTE(v42) = 8;
    sub_1BB6BB744();
    v31(v28, v6);
    LOBYTE(v42) = 9;
    sub_1BB6BB734();
    LOBYTE(v42) = 10;
    sub_1BB6BB724();
    *&v42 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation);
    v44 = 11;
    type metadata accessor for DKBodyObservation(0);
    sub_1BB62E6E4(&qword_1EBC5C580, 255, type metadata accessor for DKBodyObservation, &protocol conformance descriptor for DKBodyObservation);
    v29 = v40;
    sub_1BB6BB704();
    return (*(v39 + 8))(v18, v29);
  }
}

uint64_t DKBodyTrackerState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = v37 - v4;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BB6BA7F4();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = v37 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4E0, &qword_1BB6C3C10);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v15 = v37 - v14;
  v16 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion;
  v17 = type metadata accessor for DKMotion3(0);
  v18 = *(*(v17 - 8) + 56);
  v51 = v16;
  v18(v1 + v16, 1, 1, v17);
  v47 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation;
  v49 = a1;
  v50 = v1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E74C();
  v45 = v15;
  v19 = v48;
  sub_1BB6BB974();
  if (v19)
  {
    v36 = v50;
    sub_1BB62E628(v50 + v51);

    type metadata accessor for DKBodyTrackerState(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v17;
    v38 = v11;
    v21 = v42;
    v20 = v43;
    LOBYTE(v52) = 0;
    v22 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v23 = v44;
    sub_1BB6BB684();
    v37[2] = v22;
    v25 = v9;
    v26 = *(v41 + 32);
    v27 = v50;
    v37[3] = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time;
    v44 = v25;
    v26(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time, v23);
    LOBYTE(v52) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v28 = v8;
    v29 = v39;
    sub_1BB6BB684();
    v37[0] = v26;
    (*(v40 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid, v28, v29);
    type metadata accessor for CGRect(0);
    v54 = 2;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    v37[1] = 0;
    sub_1BB6BB684();
    v30 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
    v31 = v53;
    *v30 = v52;
    v30[1] = v31;
    v54 = 3;
    sub_1BB604730();
    sub_1BB6BB684();
    v32 = *(&v52 + 1);
    v33 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
    *v33 = v52;
    v33[1] = v32;
    LOBYTE(v52) = 4;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_anstId) = sub_1BB6BB674();
    LOBYTE(v52) = 5;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerId) = sub_1BB6BB674();
    LOBYTE(v52) = 6;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_groupId) = sub_1BB6BB674();
    LOBYTE(v52) = 7;
    sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
    sub_1BB6BB644();
    sub_1BB62E4F4(v20, v27 + v51);
    LOBYTE(v52) = 8;
    v34 = v38;
    sub_1BB6BB684();
    (v37[0])(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, v34, v44);
    LOBYTE(v52) = 9;
    *(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_framesSinceLastUpdate) = sub_1BB6BB674();
    LOBYTE(v52) = 10;
    sub_1BB6BB664();
    *(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerConfidence) = v35;
    type metadata accessor for DKBodyObservation(0);
    v54 = 11;
    sub_1BB62E6E4(&qword_1EBC5C680, 255, type metadata accessor for DKBodyObservation, &protocol conformance descriptor for DKBodyObservation);
    sub_1BB6BB644();
    (*(v21 + 8))(v45, v46);
    v36 = v50;
    *(v50 + v47) = v52;
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v36;
}

void sub_1BB6240F0(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB624138@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB62415C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB6244E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DKBodyTrackerState(0);
  result = sub_1BB6BB314();
  *a2 = result;
  return result;
}

void sub_1BB624610(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB624650@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB624670(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

double sub_1BB6248E4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation) = a1;

  return result;
}

unint64_t sub_1BB624924(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    v7 = 0xD000000000000011;
    if (a1 != 10)
    {
      v7 = 0x6573624F7473616CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x644970756F7267;
    v9 = 0x6E6F69746F6DLL;
    if (a1 != 7)
    {
      v9 = 0x616470557473616CLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701669236;
    v2 = 0x797469746E656469;
    v3 = 0x644974736E61;
    if (a1 != 4)
    {
      v3 = 0x4972656B63617274;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1684632949;
    if (a1 != 1)
    {
      v4 = 1952671090;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1BB624AA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BB63443C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BB624AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB63443C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB624AFC(uint64_t a1)
{
  v2 = sub_1BB62E7C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB624B38(uint64_t a1)
{
  v2 = sub_1BB62E7C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKObjectTrackerState.init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:trackerConfidence:lastObservation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = *a3;
  v24 = a3[1];
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion;
  v26 = type metadata accessor for DKMotion3(0);
  (*(*(v26 - 8) + 56))(v15 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation) = 0;
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
  v29 = sub_1BB6BA7F4();
  v30 = *(*(v29 - 8) + 32);
  v30(v15 + v28, a1, v29);
  v31 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid;
  v32 = sub_1BB6BA844();
  (*(*(v32 - 8) + 32))(v15 + v31, a2, v32);
  v33 = (v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
  *v33 = a9;
  v33[1] = a10;
  v33[2] = a11;
  v33[3] = a12;
  v34 = (v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
  *v34 = v23;
  v34[1] = v24;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_anstId) = a4;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerId) = a5;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v15 + v25);
  v30(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, a8, v29);
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_framesSinceLastUpdate) = a14;
  *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerConfidence) = a13;
  *(v15 + v27) = a15;

  return v15;
}

uint64_t DKObjectTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, v2);

  return v0;
}

uint64_t DKObjectTrackerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB624FBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v30 - v3;
  v4 = sub_1BB6BA844();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4E8, &qword_1BB6C3C18);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E7C0();
  sub_1BB6BB984();
  v16 = *(v7 + 16);
  v16(v11, v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time, v6);
  LOBYTE(v42) = 0;
  v17 = sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v40 = v12;
  v18 = v15;
  v19 = v17;
  v20 = v39;
  sub_1BB6BB744();
  if (v20)
  {
    (*(v7 + 8))(v11, v6);
    return (*(v13 + 8))(v18, v40);
  }

  else
  {
    v33 = v16;
    v39 = v13;
    v22 = v11;
    v23 = *(v7 + 8);
    v23(v22, v6);
    (*(v37 + 16))(v36, v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid, v38);
    LOBYTE(v42) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1BB6BB744();
    v31 = v23;
    v32 = v19;
    (*(v37 + 8))(v36, v38);
    v24 = v41;
    v25 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect + 16);
    v42 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
    v43 = v25;
    v44 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1BB6BB744();
    v26 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity + 8);
    *&v42 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
    *(&v42 + 1) = v26;
    v44 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    LOBYTE(v42) = 4;
    sub_1BB6BB734();
    LOBYTE(v42) = 5;
    sub_1BB6BB734();
    LOBYTE(v42) = 6;
    sub_1BB6BB734();
    v27 = v35;
    sub_1BB62E5B8(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion, v35);
    LOBYTE(v42) = 7;
    v38 = type metadata accessor for DKMotion3(0);
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
    sub_1BB6BB704();
    sub_1BB62E628(v27);
    v28 = v34;
    v33(v34, v24 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, v6);
    LOBYTE(v42) = 8;
    sub_1BB6BB744();
    v31(v28, v6);
    LOBYTE(v42) = 9;
    sub_1BB6BB734();
    LOBYTE(v42) = 10;
    sub_1BB6BB724();
    *&v42 = *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation);
    v44 = 11;
    type metadata accessor for DKObjectObservation(0);
    sub_1BB62E6E4(&qword_1EBC5CF70, 255, type metadata accessor for DKObjectObservation, &protocol conformance descriptor for DKObjectObservation);
    v29 = v40;
    sub_1BB6BB704();
    return (*(v39 + 8))(v18, v29);
  }
}

uint64_t DKObjectTrackerState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = v37 - v4;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BB6BA7F4();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = v37 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D4F8, &qword_1BB6C3C20);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v15 = v37 - v14;
  v16 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_motion;
  v17 = type metadata accessor for DKMotion3(0);
  v18 = *(*(v17 - 8) + 56);
  v51 = v16;
  v18(v1 + v16, 1, 1, v17);
  v47 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation;
  v49 = a1;
  v50 = v1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastObservation) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E7C0();
  v45 = v15;
  v19 = v48;
  sub_1BB6BB974();
  if (v19)
  {
    v36 = v50;
    sub_1BB62E628(v50 + v51);

    type metadata accessor for DKObjectTrackerState(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v17;
    v38 = v11;
    v21 = v42;
    v20 = v43;
    LOBYTE(v52) = 0;
    v22 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v23 = v44;
    sub_1BB6BB684();
    v37[2] = v22;
    v25 = v9;
    v26 = *(v41 + 32);
    v27 = v50;
    v37[3] = OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time;
    v44 = v25;
    v26(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_time, v23);
    LOBYTE(v52) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v28 = v8;
    v29 = v39;
    sub_1BB6BB684();
    v37[0] = v26;
    (*(v40 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_uuid, v28, v29);
    type metadata accessor for CGRect(0);
    v54 = 2;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    v37[1] = 0;
    sub_1BB6BB684();
    v30 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
    v31 = v53;
    *v30 = v52;
    v30[1] = v31;
    v54 = 3;
    sub_1BB604730();
    sub_1BB6BB684();
    v32 = *(&v52 + 1);
    v33 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity);
    *v33 = v52;
    v33[1] = v32;
    LOBYTE(v52) = 4;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_anstId) = sub_1BB6BB674();
    LOBYTE(v52) = 5;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerId) = sub_1BB6BB674();
    LOBYTE(v52) = 6;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_groupId) = sub_1BB6BB674();
    LOBYTE(v52) = 7;
    sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
    sub_1BB6BB644();
    sub_1BB62E4F4(v20, v27 + v51);
    LOBYTE(v52) = 8;
    v34 = v38;
    sub_1BB6BB684();
    (v37[0])(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_lastUpdated, v34, v44);
    LOBYTE(v52) = 9;
    *(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_framesSinceLastUpdate) = sub_1BB6BB674();
    LOBYTE(v52) = 10;
    sub_1BB6BB664();
    *(v50 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerConfidence) = v35;
    type metadata accessor for DKObjectObservation(0);
    v54 = 11;
    sub_1BB62E6E4(&qword_1EBC5CF68, 255, type metadata accessor for DKObjectObservation, &protocol conformance descriptor for DKObjectObservation);
    sub_1BB6BB644();
    (*(v21 + 8))(v45, v46);
    v36 = v50;
    *(v50 + v47) = v52;
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v36;
}

void sub_1BB626144(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB62618C@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB6261B0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB626538@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DKObjectTrackerState(0);
  result = sub_1BB6BB314();
  *a2 = result;
  return result;
}

void sub_1BB626664(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB6266A4@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB6266C4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

double sub_1BB626938(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation) = a1;

  return result;
}

unint64_t sub_1BB6269C8(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 1684632949;
      break;
    case 2:
      result = 1952671090;
      break;
    case 3:
      result = 0x797469746E656469;
      break;
    case 4:
      result = 0x644974736E61;
      break;
    case 5:
      result = 0x4972656B63617274;
      break;
    case 6:
      result = 0x644970756F7267;
      break;
    case 7:
      result = 0x6E6F69746F6DLL;
      break;
    case 8:
      result = 0x616470557473616CLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6573624F7473616CLL;
      break;
    case 12:
      result = 0x74696C6172696863;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BB626B88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BB634488(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BB626BB8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BB6269C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BB626C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB634488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB626C28(uint64_t a1)
{
  v2 = sub_1BB62E834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB626C64(uint64_t a1)
{
  v2 = sub_1BB62E834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKHandTrackerState.__allocating_init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:lastObservation:trackerConfidence:chirality:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, char *a16)
{
  v24 = swift_allocObject();
  v25 = *a3;
  v26 = a3[1];
  v39 = *a16;
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion;
  v28 = type metadata accessor for DKMotion3(0);
  (*(*(v28 - 8) + 56))(v24 + v27, 1, 1, v28);
  v38 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality) = 0;
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
  v31 = sub_1BB6BA7F4();
  v32 = *(*(v31 - 8) + 32);
  v32(v24 + v30, a1, v31);
  v33 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid;
  v34 = sub_1BB6BA844();
  (*(*(v34 - 8) + 32))(v24 + v33, a2, v34);
  v35 = (v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  *v35 = a9;
  v35[1] = a10;
  v35[2] = a11;
  v35[3] = a12;
  v36 = (v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
  *v36 = v25;
  v36[1] = v26;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_anstId) = a4;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerId) = a5;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v24 + v27);
  v32(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, a8, v31);
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_framesSinceLastUpdate) = a14;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence) = a13;
  *(v24 + v38) = a15;
  *(v24 + v29) = v39;
  return v24;
}

uint64_t DKHandTrackerState.init(time:uuid:rect:identity:anstId:trackerId:groupId:motion:lastUpdated:framesSinceLastUpdate:lastObservation:trackerConfidence:chirality:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, char *a16)
{
  v37 = *a3;
  v24 = a3[1];
  v41 = *a16;
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion;
  v26 = type metadata accessor for DKMotion3(0);
  (*(*(v26 - 8) + 56))(v16 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation) = 0;
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality) = 0;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
  v30 = sub_1BB6BA7F4();
  v31 = *(*(v30 - 8) + 32);
  v31(v16 + v29, a1, v30);
  v32 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid;
  v33 = sub_1BB6BA844();
  (*(*(v33 - 8) + 32))(v16 + v32, a2, v33);
  v34 = (v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  *v34 = a9;
  v34[1] = a10;
  v34[2] = a11;
  v34[3] = a12;
  v35 = (v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
  *v35 = v37;
  v35[1] = v24;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_anstId) = a4;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerId) = a5;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_groupId) = a6;
  sub_1BB62E4F4(a7, v16 + v25);
  v31(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, a8, v30);
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_framesSinceLastUpdate) = a14;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence) = a13;
  *(v16 + v27) = a15;

  *(v16 + v28) = v41;
  return v16;
}

uint64_t DKHandTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v2);

  return v0;
}

uint64_t DKHandTrackerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB627370(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v27 - v3;
  v4 = sub_1BB6BA844();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D500, &qword_1BB6C3C28);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E834();
  sub_1BB6BB984();
  v16 = *(v7 + 16);
  v16(v11, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time, v6);
  LOBYTE(v37) = 0;
  sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v35 = v12;
  v17 = v15;
  v18 = v34;
  sub_1BB6BB744();
  if (v18)
  {
    (*(v7 + 8))(v11, v6);
    return (*(v13 + 8))(v15, v35);
  }

  else
  {
    v28 = v16;
    v34 = v13;
    v20 = v11;
    v21 = *(v7 + 8);
    v21(v20, v6);
    (*(v32 + 16))(v31, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid, v33);
    LOBYTE(v37) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1BB6BB744();
    v27 = v21;
    (*(v32 + 8))(v31, v33);
    v22 = v36;
    v23 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect + 16);
    v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
    v38 = v23;
    v39 = 2;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1BB6BB744();
    v24 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity + 8);
    *&v37 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
    *(&v37 + 1) = v24;
    v39 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    LOBYTE(v37) = 4;
    sub_1BB6BB734();
    LOBYTE(v37) = 5;
    sub_1BB6BB734();
    LOBYTE(v37) = 6;
    sub_1BB6BB734();
    sub_1BB62E5B8(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion, v30);
    LOBYTE(v37) = 7;
    v33 = type metadata accessor for DKMotion3(0);
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
    sub_1BB6BB704();
    sub_1BB62E628(v30);
    v28(v29, v22 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v6);
    v25 = v29;
    LOBYTE(v37) = 8;
    sub_1BB6BB744();
    v27(v25, v6);
    LOBYTE(v37) = 9;
    sub_1BB6BB734();
    LOBYTE(v37) = 10;
    sub_1BB6BB724();
    *&v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation);
    v39 = 11;
    type metadata accessor for DKHandObservation(0);
    sub_1BB62E6E4(&qword_1EBC5C598, 255, type metadata accessor for DKHandObservation, &protocol conformance descriptor for DKHandObservation);
    sub_1BB6BB704();
    LOBYTE(v37) = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality);
    v39 = 12;
    sub_1BB6049F0();
    v26 = v35;
    sub_1BB6BB744();
    return (*(v34 + 8))(v17, v26);
  }
}

uint64_t DKHandTrackerState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v37 - v4;
  v5 = sub_1BB6BA844();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB6BA7F4();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v37 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D510, &qword_1BB6C3C30);
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v37 - v13;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion;
  v16 = type metadata accessor for DKMotion3(0);
  v17 = *(*(v16 - 8) + 56);
  v56 = v15;
  v17(v1 + v15, 1, 1, v16);
  v52 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation) = 0;
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality;
  v54 = a1;
  v55 = v1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62E834();
  v50 = v14;
  v19 = v53;
  sub_1BB6BB974();
  if (v19)
  {
    v36 = v55;
    sub_1BB62E628(v55 + v56);

    type metadata accessor for DKHandTrackerState(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v53 = v16;
    v41 = v18;
    v42 = v10;
    v21 = v47;
    v20 = v48;
    LOBYTE(v57) = 0;
    v22 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v23 = v49;
    sub_1BB6BB684();
    v39 = v22;
    v25 = v8;
    v26 = *(v46 + 32);
    v27 = v55;
    v40 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time;
    v49 = v25;
    v26(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time, v23);
    LOBYTE(v57) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v28 = v44;
    sub_1BB6BB684();
    v38 = v26;
    (*(v45 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid, v20, v28);
    type metadata accessor for CGRect(0);
    v59 = 2;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    v48 = 0;
    sub_1BB6BB684();
    v29 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
    v30 = v58;
    *v29 = v57;
    v29[1] = v30;
    v59 = 3;
    sub_1BB604730();
    sub_1BB6BB684();
    v31 = *(&v57 + 1);
    v32 = (v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
    *v32 = v57;
    v32[1] = v31;
    LOBYTE(v57) = 4;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_anstId) = sub_1BB6BB674();
    LOBYTE(v57) = 5;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerId) = sub_1BB6BB674();
    LOBYTE(v57) = 6;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_groupId) = sub_1BB6BB674();
    LOBYTE(v57) = 7;
    sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
    v33 = v43;
    sub_1BB6BB644();
    sub_1BB62E4F4(v33, v27 + v56);
    LOBYTE(v57) = 8;
    v34 = v42;
    sub_1BB6BB684();
    v38(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v34, v49);
    LOBYTE(v57) = 9;
    *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_framesSinceLastUpdate) = sub_1BB6BB674();
    LOBYTE(v57) = 10;
    sub_1BB6BB664();
    *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence) = v35;
    type metadata accessor for DKHandObservation(0);
    v59 = 11;
    sub_1BB62E6E4(&qword_1EBC5C690, 255, type metadata accessor for DKHandObservation, &protocol conformance descriptor for DKHandObservation);
    sub_1BB6BB644();
    *(v55 + v52) = v57;

    v59 = 12;
    sub_1BB604A44();
    sub_1BB6BB684();
    (*(v21 + 8))(v50, v51);
    v36 = v55;
    *(v55 + v41) = v57;
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  return v36;
}

void sub_1BB6285B4(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB6285FC@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB628620(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB6289A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DKHandTrackerState(0);
  result = sub_1BB6BB314();
  *a2 = result;
  return result;
}

uint64_t DKBodyKeyPointList.init(keypoints:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    *&v13[0] = MEMORY[0x1E69E7CC0];

    sub_1BB5E5940(0, v3, 0);
    v4 = *&v13[0];
    v6 = *(*&v13[0] + 16);
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      *&v13[0] = v4;
      v9 = *(v4 + 24);
      if (v6 >= v9 >> 1)
      {
        v12 = v8;
        sub_1BB5E5940((v9 > 1), v6 + 1, 1);
        v8 = v12;
        v4 = *&v13[0];
      }

      *(v4 + 16) = v6 + 1;
      *(v4 + 16 * v6 + 32) = v8;
      v7 += 24;
      ++v6;
      --v3;
    }

    while (v3);
  }

  sub_1BB5A0278(v4, v13);

  if (v14)
  {

    type metadata accessor for DKBodyKeyPointList();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v10 = v13[1];
    *(v2 + 24) = v13[0];
    *(v2 + 40) = v10;
  }

  return v2;
}

char *sub_1BB628B80(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = *a3;
  v8 = [a1 keypoints];
  if (!v8)
  {

    goto LABEL_49;
  }

  v9 = v8;
  sub_1BB634528();
  v10 = sub_1BB6BAE34();

  if (v10 >> 62)
  {
    v11 = sub_1BB6BB564();
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_38:

    v14 = MEMORY[0x1E69E7CC0];
LABEL_39:
    *(v4 + 16) = v14;
    v27 = *(v14 + 16);
    v28 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      *&v40[0] = MEMORY[0x1E69E7CC0];

      sub_1BB5E5940(0, v27, 0);
      v28 = *&v40[0];
      v29 = *(*&v40[0] + 16);
      v30 = 32;
      do
      {
        v31 = *(v14 + v30);
        *&v40[0] = v28;
        v32 = *(v28 + 24);
        if (v29 >= v32 >> 1)
        {
          v35 = v31;
          sub_1BB5E5940((v32 > 1), v29 + 1, 1);
          v31 = v35;
          v28 = *&v40[0];
        }

        *(v28 + 16) = v29 + 1;
        *(v28 + 16 * v29 + 32) = v31;
        v30 += 24;
        ++v29;
        --v27;
      }

      while (v27);
    }

    sub_1BB5A0278(v28, v38);

    if (v39)
    {
    }

    else
    {
      v37 = v7;
      v36 = v6;
      sub_1BB5A4994(&v37, &v36, v40, v38[0], v38[1], v38[2], v38[3]);

      if ((v41 & 1) == 0)
      {
        v33 = v40[1];
        *(v4 + 24) = v40[0];
        *(v4 + 40) = v33;
        return v4;
      }
    }

LABEL_49:
    type metadata accessor for DKBodyKeyPointList();
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_4:
  *&v40[0] = MEMORY[0x1E69E7CC0];
  result = sub_1BB5E5960(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v34 = v4;
    v13 = 0;
    v14 = *&v40[0];
    while (1)
    {
      v15 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB111F0](v13, v10) : *(v10 + 8 * v13 + 32);
      v16 = v15;
      [v15 location];
      v18 = v17;
      v20 = 1.0 - v19;
      [v16 confidence];
      v22 = v21;

      if ((v6 - 1) <= 1)
      {
        break;
      }

      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v23 = v20;
          goto LABEL_32;
        }

        if (v7 == 4)
        {
          v18 = 1.0 - v18;
          v23 = 1.0 - v20;
          goto LABEL_32;
        }

LABEL_17:
        v23 = v20;
        if (v7 != 7)
        {
          goto LABEL_25;
        }

        goto LABEL_32;
      }

      if (v7 == 1)
      {
        v23 = v18;
        goto LABEL_31;
      }

      if (v7 != 2)
      {
        goto LABEL_25;
      }

      v23 = 1.0 - v18;
      v18 = v20;
LABEL_32:
      *&v40[0] = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1BB5E5960((v24 > 1), v25 + 1, 1);
        v14 = *&v40[0];
      }

      ++v13;
      *(v14 + 16) = v25 + 1;
      v26 = (v14 + 24 * v25);
      v26[4] = v18;
      v26[5] = v23;
      v26[6] = v22;
      if (v11 == v13)
      {

        v4 = v34;
        goto LABEL_39;
      }
    }

    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v23 = v18;
        v18 = v20;
        goto LABEL_32;
      }

      if (v7 == 2)
      {
        v23 = 1.0 - v18;
LABEL_31:
        v18 = 1.0 - v20;
        goto LABEL_32;
      }

LABEL_25:
      v23 = 0.0;
      v18 = 0.0;
      goto LABEL_32;
    }

    if (v7 == 3)
    {
      v23 = 1.0 - v20;
      goto LABEL_32;
    }

    if (v7 == 4)
    {
      v18 = 1.0 - v18;
      v23 = v20;
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

IntelligentTrackingCore::DKBodyKeyPoint __swiftcall DKBodyKeyPoint.init(location:confidence:port:orientation:)(CGPoint location, Swift::Double confidence, IntelligentTrackingCore::DKCameraPort port, IntelligentTrackingCore::DKCameraOrientation orientation)
{
  v6 = v4;
  v7 = *port;
  v14 = *orientation;
  v13 = v7;
  v8 = COERCE_DOUBLE(sub_1BB5A4EBC(&v14, &v13, location.x, location.y));
  v10 = v9;
  v12 = 0.0;
  if (v11)
  {
    v10 = 0.0;
    v8 = 0.0;
  }

  *v6 = v8;
  v6[1] = v10;
  v6[2] = confidence;
  result.confidence = v12;
  result.location.y = v10;
  result.location.x = v8;
  return result;
}

uint64_t sub_1BB628FD4()
{
  if (*v0)
  {
    return 1952671090;
  }

  else
  {
    return 0x746E696F7079656BLL;
  }
}

uint64_t sub_1BB62900C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F7079656BLL && a2 == 0xE900000000000073;
  if (v6 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1952671090 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB6290F0(uint64_t a1)
{
  v2 = sub_1BB62F064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB62912C(uint64_t a1)
{
  v2 = sub_1BB62F064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKBodyKeyPointList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB6291C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D518, &qword_1BB6C3C38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F064();
  sub_1BB6BB984();
  *&v11[0] = *(v3 + 16);
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D528, &qword_1BB6C3C40);
  sub_1BB62F10C(&qword_1EBC5D530, sub_1BB62F0B8, MEMORY[0x1E69E6300]);
  sub_1BB6BB744();
  if (!v2)
  {
    v9 = *(v3 + 40);
    v11[0] = *(v3 + 24);
    v11[1] = v9;
    v12 = 1;
    type metadata accessor for CGRect(0);
    sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKBodyKeyPointList.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DKBodyKeyPointList.init(from:)(a1);
  return v2;
}

uint64_t DKBodyKeyPointList.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D540, &qword_1BB6C3C48);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F064();
  sub_1BB6BB974();
  if (v2)
  {
    type metadata accessor for DKBodyKeyPointList();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D528, &qword_1BB6C3C40);
    v11 = 0;
    sub_1BB62F10C(&qword_1EBC5D548, sub_1BB62F184, MEMORY[0x1E69E6330]);
    sub_1BB6BB684();
    *(v1 + 16) = *&v10[0];
    type metadata accessor for CGRect(0);
    v11 = 1;
    sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1BB6BB684();
    (*(v5 + 8))(v7, v4);
    v9 = v10[1];
    *(v1 + 24) = v10[0];
    *(v1 + 40) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1BB6296C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DKBodyKeyPointList();
  v5 = swift_allocObject();
  result = DKBodyKeyPointList.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1BB6297A0()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1BB6297E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB6298C4(uint64_t a1)
{
  v2 = sub_1BB62F1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB629900(uint64_t a1)
{
  v2 = sub_1BB62F1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKBodyKeyPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D558, &qword_1BB6C3C50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F1D8();
  sub_1BB6BB984();
  v11[0] = v8;
  v11[1] = v9;
  v12 = 0;
  type metadata accessor for CGPoint(0);
  sub_1BB62E6E4(&qword_1EBC5C0B8, 255, type metadata accessor for CGPoint, MEMORY[0x1E695EFA8]);
  sub_1BB6BB744();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    sub_1BB6BB724();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DKBodyKeyPoint.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D568, &qword_1BB6C3C58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F1D8();
  sub_1BB6BB974();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v14[15] = 0;
    sub_1BB62E6E4(&qword_1EBC5C0F0, 255, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
    sub_1BB6BB684();
    v9 = v15;
    v10 = v16;
    LOBYTE(v15) = 1;
    sub_1BB6BB664();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v10;
    *(a2 + 2) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1BB629EB4(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1BB629EE4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1BB629F10@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

void sub_1BB62A0F0(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB62A130@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB62A150(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB62A2B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1BB62E5B8(a1, &v12 - v9);
  return sub_1BB62E4F4(v10, *a2 + *a5);
}

uint64_t sub_1BB62A3A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void *a6)
{
  v9 = (a5)(0, a2, a3, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v10 + 16))(&v15 - v12, a1, v9, v11);
  return (*(v10 + 40))(*a2 + *a6, v13, v9);
}

uint64_t sub_1BB62A4BC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_1BB62A554(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = a3(0);
  v7 = *(*(v6 - 8) + 40);

  return v7(v3 + v5, a1, v6);
}

uint64_t sub_1BB62A654(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceYaw;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB62A6B0(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_facePitch;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB62A70C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceRoll;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_1BB62A760(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceTracker) = a1;

  return result;
}

double sub_1BB62A7B0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyTracker) = a1;

  return result;
}

double sub_1BB62A840@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *a2 = *v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;

  return result;
}

double sub_1BB62A89C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
  *v5 = *a1;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v4;

  return result;
}

double sub_1BB62A92C@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 8);
  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 16);
  v5 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 24);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;

  return result;
}

double sub_1BB62A984(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation;
  *v4 = *a1;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  return result;
}

void sub_1BB62AAC4(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB62AB14(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyKeypoints) = a1;

  return result;
}

double sub_1BB62AB64(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_speakingConfidence) = a1;

  return result;
}

double sub_1BB62ABB4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lookingConfidence) = a1;

  return result;
}

double sub_1BB62AC04(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) = a1;

  return result;
}

double sub_1BB62AC54(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_saliencyConfidence) = a1;

  return result;
}

double sub_1BB62ACA4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionConfidence) = a1;

  return result;
}

uint64_t sub_1BB62AE6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void *a7)
{
  v11 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1BB62F22C(a1, &v15 - v12, a6);
  return sub_1BB62F294(v13, *a2 + *a7, a6);
}

unint64_t sub_1BB62AFFC(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 1684632949;
      break;
    case 2:
      result = 1952671090;
      break;
    case 3:
    case 27:
      result = 0x797469746E656469;
      break;
    case 4:
      result = 0x644974736E61;
      break;
    case 5:
      result = 0x756F724774736E61;
      break;
    case 6:
      result = 0x4972656B63617274;
      break;
    case 7:
      result = 0x644970756F7267;
      break;
    case 8:
      result = 0x6E6F69746F6DLL;
      break;
    case 9:
      result = 0x616470557473616CLL;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x77615965636166;
      break;
    case 12:
      result = 0x6374695065636166;
      break;
    case 13:
      result = 0x6C6C6F5265636166;
      break;
    case 14:
      result = 0x6573624F7473616CLL;
      break;
    case 15:
      result = 0x70756F7267;
      break;
    case 16:
      result = 0x7463655279646F62;
      break;
    case 17:
      result = 0x7079654B79646F62;
      break;
    case 18:
    case 21:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0x666E6F436B6E6172;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 1701869940;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
      result = 0x6572694465636166;
      break;
    case 26:
      result = 0x676E696B63617274;
      break;
    case 28:
      result = 0x6F697463656C6573;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BB62B324(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BB62AFFC(*a1);
  v5 = v4;
  if (v3 == sub_1BB62AFFC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BB6BB7E4();
  }

  return v8 & 1;
}

uint64_t sub_1BB62B3AC()
{
  v1 = *v0;
  sub_1BB6BB924();
  sub_1BB62AFFC(v1);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

uint64_t sub_1BB62B410(uint64_t a1)
{
  sub_1BB62AFFC(*v1);
  sub_1BB6BACC4();
}

uint64_t sub_1BB62B464(uint64_t a1)
{
  v2 = *v1;
  sub_1BB6BB924();
  sub_1BB62AFFC(v2);
  sub_1BB6BACC4();

  return sub_1BB6BB964();
}

unint64_t sub_1BB62B4C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BB6344D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BB62B4F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BB62AFFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BB62B528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB6344D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB62B55C(uint64_t a1)
{
  v2 = sub_1BB62F35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB62B598(uint64_t a1)
{
  v2 = sub_1BB62F35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKPersonTrackerState.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BB62E628(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastUpdated, v2);

  sub_1BB62F2FC(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_group, type metadata accessor for DKPersonGroup);

  sub_1BB62F2FC(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, type metadata accessor for DKIdentityFilter.IdentityState);
  return v0;
}

uint64_t DKPersonTrackerState.__deallocating_deinit()
{
  DKPersonTrackerState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB62B80C(void *a1)
{
  v51 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DKPersonGroup(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = v48 - v5;
  v6 = sub_1BB6BA844();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D570, &qword_1BB6C3C60);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v48 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB62F35C();
  sub_1BB6BB984();
  v59 = v9;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v18 = v20;
  v20(v13, v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time, v8);
  LOBYTE(v64) = 0;
  v21 = sub_1BB62E6E4(&qword_1EBC5C548, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v61 = v14;
  v62 = v17;
  v22 = v60;
  sub_1BB6BB744();
  if (v22)
  {
    (*(v59 + 8))(v13, v8);
    return (*(v15 + 8))(v62, v61);
  }

  else
  {
    v48[1] = v19;
    v48[2] = v21;
    v49 = v18;
    v60 = v15;
    v24 = *(v59 + 8);
    v24(v13, v8);
    v26 = v56;
    v25 = v57;
    v27 = v63;
    (*(v56 + 16))(v58, v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v57);
    LOBYTE(v64) = 1;
    sub_1BB62E6E4(&qword_1EBC5CE38, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v28 = v61;
    sub_1BB6BB744();
    v59 = v8;
    (*(v26 + 8))(v58, v25);
    v29 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 16);
    v64 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
    v65 = v29;
    v66 = 2;
    type metadata accessor for CGRect(0);
    v31 = v30;
    v32 = sub_1BB62E6E4(&qword_1EBC5C610, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1BB6BB744();
    v58 = v32;
    v33 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity + 8);
    *&v64 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity);
    *(&v64 + 1) = v33;
    v66 = 3;
    sub_1BB6046DC();
    sub_1BB6BB744();
    v34 = v60;
    LOBYTE(v64) = 4;
    sub_1BB6BB734();
    LOBYTE(v64) = 5;
    sub_1BB6BB734();
    LOBYTE(v64) = 6;
    sub_1BB6BB734();
    v57 = v31;
    LOBYTE(v64) = 7;
    sub_1BB6BB734();
    v35 = v55;
    sub_1BB62E5B8(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion, v55);
    LOBYTE(v64) = 8;
    type metadata accessor for DKMotion3(0);
    sub_1BB62E6E4(&qword_1EBC5C0C0, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
    sub_1BB6BB704();
    v56 = 0;
    sub_1BB62E628(v35);
    v36 = v54;
    v37 = v59;
    v49(v54, v27 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastUpdated, v59);
    LOBYTE(v64) = 9;
    v38 = v62;
    v39 = v56;
    sub_1BB6BB744();
    v24(v36, v37);
    if (v39)
    {
      return (*(v34 + 8))(v38, v28);
    }

    else
    {
      LOBYTE(v64) = 10;
      sub_1BB6BB734();
      LOBYTE(v64) = 11;
      sub_1BB6BB6E4();
      LOBYTE(v64) = 12;
      sub_1BB6BB6E4();
      LOBYTE(v64) = 13;
      sub_1BB6BB6E4();
      v40 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 8);
      v41 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 16);
      v42 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation + 24);
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
      *(&v64 + 1) = v40;
      *&v65 = v41;
      *(&v65 + 1) = v42;
      v66 = 14;
      sub_1BB5D24F8();

      sub_1BB6BB744();

      sub_1BB62F22C(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_group, v53, type metadata accessor for DKPersonGroup);
      LOBYTE(v64) = 15;
      sub_1BB62E6E4(&qword_1EBC5D580, 255, type metadata accessor for DKPersonGroup, &protocol conformance descriptor for DKPersonGroup);
      sub_1BB6BB744();
      sub_1BB62F2FC(v53, type metadata accessor for DKPersonGroup);
      v43 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect + 16);
      v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect);
      v65 = v43;
      v66 = 16;
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyKeypoints);
      v66 = 17;
      type metadata accessor for DKBodyKeyPointList();
      sub_1BB62E6E4(&qword_1EBC5CAE8, v44, type metadata accessor for DKBodyKeyPointList, &protocol conformance descriptor for DKBodyKeyPointList);
      sub_1BB6BB704();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_speakingConfidence);
      v66 = 18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C390, &qword_1BB6BE478);
      sub_1BB62F520(&qword_1EBC5D588, &qword_1EBC5C390, &qword_1BB6BE478, &protocol conformance descriptor for DKProbabilityValue<A>);
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lookingConfidence);
      v66 = 19;
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence);
      v66 = 20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420, &unk_1BB6BE540);
      sub_1BB62F520(&qword_1EBC5D590, &qword_1EBC5C420, &unk_1BB6BE540, &protocol conformance descriptor for DKProbabilityValue<A>);
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_saliencyConfidence);
      v66 = 21;
      sub_1BB6BB744();
      *&v64 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionConfidence);
      v66 = 22;
      sub_1BB6BB744();
      LOBYTE(v64) = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_type);
      v66 = 23;
      sub_1BB62F3B0();
      sub_1BB6BB744();
      LOBYTE(v64) = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motionClassification);
      v66 = 24;
      sub_1BB62F404();
      sub_1BB6BB744();
      LOBYTE(v64) = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection);
      v66 = 25;
      sub_1BB62F458();
      sub_1BB6BB744();
      LOBYTE(v64) = 26;
      sub_1BB6BB714();
      v45 = v50;
      sub_1BB62F22C(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, v50, type metadata accessor for DKIdentityFilter.IdentityState);
      LOBYTE(v64) = 27;
      sub_1BB62E6E4(&qword_1EBC5D5B0, 255, type metadata accessor for DKIdentityFilter.IdentityState, &protocol conformance descriptor for DKIdentityFilter.IdentityState);
      sub_1BB6BB744();
      sub_1BB62F2FC(v45, type metadata accessor for DKIdentityFilter.IdentityState);
      LOBYTE(v64) = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionReason);
      v66 = 28;
      sub_1BB62F4AC();
      sub_1BB6BB744();
      v46 = v62;
      LOBYTE(v64) = 29;
      v47 = v61;
      sub_1BB6BB724();
      return (*(v60 + 8))(v46, v47);
    }
  }
}

uint64_t sub_1BB62C770(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t DKPersonTrackerState.init(from:)(void *a1)
{
  v102 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  MEMORY[0x1EEE9AC00](v102);
  v103 = v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DKPersonGroup(0);
  MEMORY[0x1EEE9AC00](v104);
  v105 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v108 = v95 - v6;
  v111 = sub_1BB6BA844();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v112 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB6BA7F4();
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v107 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v113 = v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D5C0, &qword_1BB6C3C68);
  v114 = *(v12 - 8);
  v115 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v95 - v13;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion;
  v16 = type metadata accessor for DKMotion3(0);
  v17 = *(*(v16 - 8) + 56);
  v125 = v15;
  v109 = v16;
  v17(v1 + v15, 1, 1);
  v18 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceYaw;
  *v18 = 0;
  v106 = v18;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_facePitch;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceRoll;
  *v20 = 0;
  *(v20 + 8) = 1;
  v120 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceTracker;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceTracker) = 0;
  v121 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyTracker;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyTracker) = 0;
  v21 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_handTrackers;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_handTrackers) = MEMORY[0x1E69E7CC0];
  v122 = v21;
  v123 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyKeypoints;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyKeypoints) = 0;
  v100 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_type;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_type) = 0;
  v101 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motionClassification;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motionClassification) = 2;
  v22 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection) = 3;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackingLock;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackingLock) = 0;
  v24 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerConfidence;
  v126 = v1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerConfidence) = 0;
  v25 = a1;
  v26 = a1[3];
  v124 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_1BB62F35C();
  v118 = v14;
  v27 = v119;
  sub_1BB6BB974();
  if (v27)
  {
    v32 = v126;
    sub_1BB62E628(v126 + v125);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    LODWORD(v119) = 0;
    v39 = 0;
    goto LABEL_4;
  }

  v28 = v112;
  v119 = v19;
  v99 = v20;
  v96 = v22;
  v97 = v23;
  v98 = v24;
  LOBYTE(v128) = 0;
  v29 = sub_1BB62E6E4(&qword_1EBC5C658, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v30 = v113;
  v31 = v117;
  sub_1BB6BB684();
  v43 = v31;
  v44 = *(v116 + 32);
  v45 = v126;
  v44(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time, v30, v43);
  LOBYTE(v128) = 1;
  sub_1BB62E6E4(&qword_1EBC5CE68, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v46 = v111;
  sub_1BB6BB684();
  v113 = v29;
  (*(v110 + 32))(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v28, v46);
  type metadata accessor for CGRect(0);
  v48 = v47;
  v127 = 2;
  v49 = sub_1BB62E6E4(&qword_1EBC5C6E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  v112 = 0;
  sub_1BB6BB684();
  v95[0] = v49;
  v95[1] = v48;
  v50 = (v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
  v51 = v129;
  *v50 = v128;
  v50[1] = v51;
  v127 = 3;
  sub_1BB604730();
  sub_1BB6BB684();
  v52 = *(&v128 + 1);
  v53 = (v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity);
  *v53 = v128;
  v53[1] = v52;
  LOBYTE(v128) = 4;
  *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_anstId) = sub_1BB6BB674();
  LOBYTE(v128) = 5;
  *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_anstGroupId) = sub_1BB6BB674();
  LOBYTE(v128) = 6;
  *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerId) = sub_1BB6BB674();
  LOBYTE(v128) = 7;
  *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_groupId) = sub_1BB6BB674();
  LOBYTE(v128) = 8;
  sub_1BB62E6E4(&qword_1EBC5C0F8, 255, type metadata accessor for DKMotion3, &protocol conformance descriptor for DKMotion3);
  v54 = v108;
  sub_1BB6BB644();
  sub_1BB62E4F4(v54, v45 + v125);
  LOBYTE(v128) = 9;
  sub_1BB6BB684();
  v113 = 0;
  v44(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastUpdated, v107, v117);
  LOBYTE(v128) = 10;
  v56 = v113;
  v57 = sub_1BB6BB674();
  v113 = v56;
  if (v56 || (*(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_framesSinceLastUpdate) = v57, LOBYTE(v128) = 11, v58 = v113, v59 = sub_1BB6BB624(), (v113 = v58) != 0) || (v61 = v106, *v106 = v59, *(v61 + 8) = v60 & 1, LOBYTE(v128) = 12, v62 = v113, v63 = sub_1BB6BB624(), (v113 = v62) != 0) || (v65 = v119, *v119 = v63, *(v65 + 8) = v64 & 1, LOBYTE(v128) = 13, v66 = v113, v67 = sub_1BB6BB624(), (v113 = v66) != 0) || (v69 = v99, *v99 = v67, *(v69 + 8) = v68 & 1, v127 = 14, sub_1BB5D2CC8(), v70 = v113, sub_1BB6BB684(), (v113 = v70) != 0))
  {
    (*(v114 + 8))(v118, v115);
    v39 = 0;
    LODWORD(v119) = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
LABEL_36:
    v71 = v112;
    v32 = v126;
    v55 = *(v116 + 8);
    v116 += 8;
    v55(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time, v117);
    if (v71)
    {
      sub_1BB62E628(v32 + v125);
      if (!v115)
      {
LABEL_27:
        v33 = v118;
LABEL_4:

        if (v39)
        {

          v32 = v126;
        }

        if (v119)
        {
          sub_1BB62F2FC(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_group, type metadata accessor for DKPersonGroup);
        }

        v40 = v124;
        if (v38)
        {

          if (!v37)
          {
LABEL_10:
            if (!v36)
            {
              goto LABEL_11;
            }

            goto LABEL_20;
          }
        }

        else if (!v37)
        {
          goto LABEL_10;
        }

        if (!v36)
        {
LABEL_11:
          if (!v35)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }

LABEL_20:

        if (!v35)
        {
LABEL_12:
          if (!v34)
          {
            goto LABEL_13;
          }

          goto LABEL_22;
        }

LABEL_21:

        if (!v34)
        {
LABEL_13:
          if (!v33)
          {
LABEL_15:
            type metadata accessor for DKPersonTrackerState(0);
            swift_deallocPartialClassInstance();
            goto LABEL_16;
          }

LABEL_14:
          sub_1BB62F2FC(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, type metadata accessor for DKIdentityFilter.IdentityState);
          goto LABEL_15;
        }

LABEL_22:

        if (!v33)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      (*(v110 + 8))(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v111);
      sub_1BB62E628(v32 + v125);
      if ((v115 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v55(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastUpdated, v117);
    goto LABEL_27;
  }

  v72 = v129;
  v73 = (v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
  *v73 = v128;
  v73[1] = v72;
  LOBYTE(v128) = 15;
  sub_1BB62E6E4(&qword_1EBC5D5C8, 255, type metadata accessor for DKPersonGroup, &protocol conformance descriptor for DKPersonGroup);
  v74 = v113;
  sub_1BB6BB684();
  v113 = v74;
  if (v74)
  {
    (*(v114 + 8))(v118, v115);
    LODWORD(v119) = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    goto LABEL_36;
  }

  sub_1BB62F664(v105, v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_group, type metadata accessor for DKPersonGroup);
  v127 = 16;
  v75 = v113;
  sub_1BB6BB684();
  v113 = v75;
  if (v75 || (v76 = (v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect), v77 = v129, *v76 = v128, v76[1] = v77, type metadata accessor for DKBodyKeyPointList(), v127 = 17, sub_1BB62E6E4(&qword_1EBC5CAF8, v78, type metadata accessor for DKBodyKeyPointList, &protocol conformance descriptor for DKBodyKeyPointList), v79 = v113, sub_1BB6BB644(), (v113 = v79) != 0) || (*(v126 + v123) = v128, , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C390, &qword_1BB6BE478), v127 = 18, sub_1BB62F520(&qword_1EBC5D5D0, &qword_1EBC5C390, &qword_1BB6BE478, &protocol conformance descriptor for DKProbabilityValue<A>), v80 = v113, sub_1BB6BB684(), (v113 = v80) != 0))
  {
    (*(v114 + 8))(v118, v115);
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_speakingConfidence) = v128;
  v127 = 19;
  v81 = v113;
  sub_1BB6BB684();
  v113 = v81;
  if (v81)
  {
    (*(v114 + 8))(v118, v115);
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lookingConfidence) = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420, &unk_1BB6BE540);
  v127 = 20;
  sub_1BB62F520(&qword_1EBC5D5D8, &qword_1EBC5C420, &unk_1BB6BE540, &protocol conformance descriptor for DKProbabilityValue<A>);
  v82 = v113;
  sub_1BB6BB684();
  v113 = v82;
  if (v82)
  {
    (*(v114 + 8))(v118, v115);
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) = v128;
  v127 = 21;
  v83 = v113;
  sub_1BB6BB684();
  v113 = v83;
  if (v83)
  {
    (*(v114 + 8))(v118, v115);
    v35 = 0;
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    v36 = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_saliencyConfidence) = v128;
  v127 = 22;
  v84 = v113;
  sub_1BB6BB684();
  v113 = v84;
  if (v84)
  {
    (*(v114 + 8))(v118, v115);
    v34 = 0;
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionConfidence) = v128;
  v127 = 23;
  sub_1BB62F568();
  v85 = v113;
  sub_1BB6BB684();
  v113 = v85;
  if (v85 || (*(v126 + v100) = v128, v127 = 24, sub_1BB62F5BC(), v86 = v113, sub_1BB6BB684(), (v113 = v86) != 0) || (*(v126 + v101) = v128, v127 = 25, sub_1BB62F610(), v87 = v113, sub_1BB6BB684(), (v113 = v87) != 0) || (*(v126 + v96) = v128, LOBYTE(v128) = 26, v88 = v113, v89 = sub_1BB6BB654(), (v113 = v88) != 0) || (*(v126 + v97) = v89 & 1, LOBYTE(v128) = 27, sub_1BB62E6E4(&qword_1EBC5D5F8, 255, type metadata accessor for DKIdentityFilter.IdentityState, &protocol conformance descriptor for DKIdentityFilter.IdentityState), v90 = v113, sub_1BB6BB684(), (v113 = v90) != 0))
  {
    (*(v114 + 8))(v118, v115);
    LODWORD(v118) = 0;
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    v34 = 1;
    goto LABEL_36;
  }

  sub_1BB62F664(v103, v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, type metadata accessor for DKIdentityFilter.IdentityState);
  v127 = 28;
  sub_1BB62F6CC();
  v91 = v113;
  sub_1BB6BB684();
  v113 = v91;
  if (v91)
  {
    (*(v114 + 8))(v118, v115);
    LODWORD(v115) = 1;
    v39 = 1;
    LODWORD(v119) = 1;
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    v34 = 1;
    LODWORD(v118) = 1;
    goto LABEL_36;
  }

  *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionReason) = v128;
  LOBYTE(v128) = 29;
  v92 = v113;
  sub_1BB6BB664();
  if (!v92)
  {
    v94 = v93;
    (*(v114 + 8))(v118, v115);
    v32 = v126;
    *(v126 + v98) = v94;
    v41 = v124;
    goto LABEL_17;
  }

  v32 = v126;

  (*(v114 + 8))(v118, v115);
  v40 = v124;
LABEL_16:
  v41 = v40;
LABEL_17:
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v32;
}

void sub_1BB62DE74(double a1, double a2, double a3, double a4)
{
  v5 = (*v4 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_1BB62DEBC@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity;
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  return result;
}

double sub_1BB62DEE0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_1BB62E0A4@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t sub_1BB62E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = *v5;
  v8 = *a4;
  v9 = (a5)(0, a2, a3);
  v10 = *(*(v9 - 8) + 40);

  return v10(v7 + v8, a1, v9);
}

uint64_t sub_1BB62E2D0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1BB62E364@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DKPersonTrackerState(0);
  result = sub_1BB6BB314();
  *a2 = result;
  return result;
}

uint64_t sub_1BB62E3A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BB693B84(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1BB6BB784();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1BB6BAE94();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1BB62E8CC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1BB62E4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BB62E564()
{
  result = qword_1EBC5D4A8;
  if (!qword_1EBC5D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D4A8);
  }

  return result;
}

uint64_t sub_1BB62E5B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB62E628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BB62E690()
{
  result = qword_1EBC5D4C0;
  if (!qword_1EBC5D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D4C0);
  }

  return result;
}

uint64_t sub_1BB62E6E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1BB62E74C()
{
  result = qword_1EBC5D4D8;
  if (!qword_1EBC5D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D4D8);
  }

  return result;
}

unint64_t sub_1BB62E7C0()
{
  result = qword_1EBC5D4F0;
  if (!qword_1EBC5D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D4F0);
  }

  return result;
}

unint64_t sub_1BB62E834()
{
  result = qword_1EBC5D508;
  if (!qword_1EBC5D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D508);
  }

  return result;
}

uint64_t sub_1BB62E8CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1BB693A54(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1BB62EE60((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BB59D140(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1BB59D140((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1BB62EE60((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1BB62EE60(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

unint64_t sub_1BB62F064()
{
  result = qword_1EBC5D520;
  if (!qword_1EBC5D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D520);
  }

  return result;
}

unint64_t sub_1BB62F0B8()
{
  result = qword_1EBC5D538;
  if (!qword_1EBC5D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D538);
  }

  return result;
}

uint64_t sub_1BB62F10C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5D528, &qword_1BB6C3C40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB62F184()
{
  result = qword_1EBC5D550;
  if (!qword_1EBC5D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D550);
  }

  return result;
}

unint64_t sub_1BB62F1D8()
{
  result = qword_1EBC5D560;
  if (!qword_1EBC5D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D560);
  }

  return result;
}

uint64_t sub_1BB62F22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB62F294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB62F2FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BB62F35C()
{
  result = qword_1EBC5D578;
  if (!qword_1EBC5D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D578);
  }

  return result;
}

unint64_t sub_1BB62F3B0()
{
  result = qword_1EBC5D598;
  if (!qword_1EBC5D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D598);
  }

  return result;
}

unint64_t sub_1BB62F404()
{
  result = qword_1EBC5D5A0;
  if (!qword_1EBC5D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5A0);
  }

  return result;
}

unint64_t sub_1BB62F458()
{
  result = qword_1EBC5D5A8;
  if (!qword_1EBC5D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5A8);
  }

  return result;
}

unint64_t sub_1BB62F4AC()
{
  result = qword_1EBC5D5B8;
  if (!qword_1EBC5D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5B8);
  }

  return result;
}

uint64_t sub_1BB62F520(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB62F568()
{
  result = qword_1EBC5D5E0;
  if (!qword_1EBC5D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5E0);
  }

  return result;
}

unint64_t sub_1BB62F5BC()
{
  result = qword_1EBC5D5E8;
  if (!qword_1EBC5D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5E8);
  }

  return result;
}

unint64_t sub_1BB62F610()
{
  result = qword_1EBC5D5F0;
  if (!qword_1EBC5D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D5F0);
  }

  return result;
}

uint64_t sub_1BB62F664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BB62F6CC()
{
  result = qword_1EBC5D600;
  if (!qword_1EBC5D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D600);
  }

  return result;
}

unint64_t sub_1BB62F724()
{
  result = qword_1EBC5D608;
  if (!qword_1EBC5D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D608);
  }

  return result;
}

uint64_t sub_1BB62F778(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5C6B0, 255, type metadata accessor for DKFaceTrackerState, &protocol conformance descriptor for DKFaceTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5C5C8, 255, type metadata accessor for DKFaceTrackerState, &protocol conformance descriptor for DKFaceTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D610, 255, type metadata accessor for DKFaceTrackerState, &protocol conformance descriptor for DKFaceTrackerState);
  a1[4] = result;
  return result;
}

uint64_t sub_1BB62F830(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5C6C0, 255, type metadata accessor for DKBodyTrackerState, &protocol conformance descriptor for DKBodyTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5C5E0, 255, type metadata accessor for DKBodyTrackerState, &protocol conformance descriptor for DKBodyTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D618, 255, type metadata accessor for DKBodyTrackerState, &protocol conformance descriptor for DKBodyTrackerState);
  a1[4] = result;
  return result;
}

uint64_t sub_1BB62F8E8(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5D620, 255, type metadata accessor for DKObjectTrackerState, &protocol conformance descriptor for DKObjectTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5D628, 255, type metadata accessor for DKObjectTrackerState, &protocol conformance descriptor for DKObjectTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D630, 255, type metadata accessor for DKObjectTrackerState, &protocol conformance descriptor for DKObjectTrackerState);
  a1[4] = result;
  return result;
}

uint64_t sub_1BB62F9A0(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5C6D0, 255, type metadata accessor for DKHandTrackerState, &protocol conformance descriptor for DKHandTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5C5F8, 255, type metadata accessor for DKHandTrackerState, &protocol conformance descriptor for DKHandTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D638, 255, type metadata accessor for DKHandTrackerState, &protocol conformance descriptor for DKHandTrackerState);
  a1[4] = result;
  return result;
}

unint64_t sub_1BB62FA5C()
{
  result = qword_1EBC5D640;
  if (!qword_1EBC5D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D640);
  }

  return result;
}

unint64_t sub_1BB62FAB4()
{
  result = qword_1EBC5D648;
  if (!qword_1EBC5D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D648);
  }

  return result;
}

unint64_t sub_1BB62FB0C()
{
  result = qword_1EBC5D650;
  if (!qword_1EBC5D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D650);
  }

  return result;
}

unint64_t sub_1BB62FB64()
{
  result = qword_1EBC5D658;
  if (!qword_1EBC5D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D658);
  }

  return result;
}

uint64_t sub_1BB62FBB8(void *a1)
{
  a1[2] = sub_1BB62E6E4(&qword_1EBC5C6E0, 255, type metadata accessor for DKPersonTrackerState, &protocol conformance descriptor for DKPersonTrackerState);
  a1[3] = sub_1BB62E6E4(&qword_1EBC5C608, 255, type metadata accessor for DKPersonTrackerState, &protocol conformance descriptor for DKPersonTrackerState);
  result = sub_1BB62E6E4(&qword_1EBC5D660, 255, type metadata accessor for DKPersonTrackerState, &protocol conformance descriptor for DKPersonTrackerState);
  a1[4] = result;
  return result;
}

uint64_t keypath_getTm_1@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v5 + v6, v7);
}

void sub_1BB62FF5C(uint64_t a1)
{
  sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v2 <= 0x3F)
    {
      sub_1BB630970(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BB630970(uint64_t a1)
{
  if (!qword_1EBC5D678)
  {
    type metadata accessor for DKMotion3(255);
    v1 = sub_1BB6BB184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBC5D678);
    }
  }
}

void sub_1BB631054(uint64_t a1)
{
  sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v2 <= 0x3F)
    {
      sub_1BB630970(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BB631818(uint64_t a1)
{
  sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v2 <= 0x3F)
    {
      sub_1BB630970(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DKPersonSelectionReason(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for DKPersonSelectionReason(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

void sub_1BB632300(uint64_t a1)
{
  sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    sub_1BB6BA844();
    if (v2 <= 0x3F)
    {
      sub_1BB630970(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DKPersonGroup(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for DKIdentityFilter.IdentityState(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DKPersonTrackerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKPersonTrackerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BB6338B4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1BB633944(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DKFaceTrackerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKFaceTrackerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB633B68()
{
  result = qword_1EBC5D6C0;
  if (!qword_1EBC5D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6C0);
  }

  return result;
}

unint64_t sub_1BB633BC0()
{
  result = qword_1EBC5D6C8;
  if (!qword_1EBC5D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6C8);
  }

  return result;
}

unint64_t sub_1BB633C18()
{
  result = qword_1EBC5D6D0;
  if (!qword_1EBC5D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6D0);
  }

  return result;
}

unint64_t sub_1BB633C70()
{
  result = qword_1EBC5D6D8;
  if (!qword_1EBC5D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6D8);
  }

  return result;
}

unint64_t sub_1BB633CC8()
{
  result = qword_1EBC5D6E0;
  if (!qword_1EBC5D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6E0);
  }

  return result;
}

unint64_t sub_1BB633D20()
{
  result = qword_1EBC5D6E8;
  if (!qword_1EBC5D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6E8);
  }

  return result;
}

unint64_t sub_1BB633D78()
{
  result = qword_1EBC5D6F0;
  if (!qword_1EBC5D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6F0);
  }

  return result;
}

unint64_t sub_1BB633DD0()
{
  result = qword_1EBC5D6F8;
  if (!qword_1EBC5D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D6F8);
  }

  return result;
}

unint64_t sub_1BB633E28()
{
  result = qword_1EBC5D700;
  if (!qword_1EBC5D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D700);
  }

  return result;
}

unint64_t sub_1BB633E80()
{
  result = qword_1EBC5D708;
  if (!qword_1EBC5D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D708);
  }

  return result;
}

unint64_t sub_1BB633ED8()
{
  result = qword_1EBC5D710;
  if (!qword_1EBC5D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D710);
  }

  return result;
}

unint64_t sub_1BB633F30()
{
  result = qword_1EBC5D718;
  if (!qword_1EBC5D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D718);
  }

  return result;
}

unint64_t sub_1BB633F88()
{
  result = qword_1EBC5D720;
  if (!qword_1EBC5D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D720);
  }

  return result;
}

unint64_t sub_1BB633FE0()
{
  result = qword_1EBC5D728;
  if (!qword_1EBC5D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D728);
  }

  return result;
}

unint64_t sub_1BB634038()
{
  result = qword_1EBC5D730;
  if (!qword_1EBC5D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D730);
  }

  return result;
}

unint64_t sub_1BB634090()
{
  result = qword_1EBC5D738;
  if (!qword_1EBC5D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D738);
  }

  return result;
}

unint64_t sub_1BB6340E8()
{
  result = qword_1EBC5D740;
  if (!qword_1EBC5D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D740);
  }

  return result;
}

unint64_t sub_1BB634140()
{
  result = qword_1EBC5D748;
  if (!qword_1EBC5D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D748);
  }

  return result;
}

unint64_t sub_1BB634198()
{
  result = qword_1EBC5D750;
  if (!qword_1EBC5D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D750);
  }

  return result;
}

unint64_t sub_1BB6341F0()
{
  result = qword_1EBC5D758;
  if (!qword_1EBC5D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D758);
  }

  return result;
}

unint64_t sub_1BB634248()
{
  result = qword_1EBC5D760;
  if (!qword_1EBC5D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D760);
  }

  return result;
}

unint64_t sub_1BB6342A0()
{
  result = qword_1EBC5D768;
  if (!qword_1EBC5D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D768);
  }

  return result;
}

unint64_t sub_1BB6342F8()
{
  result = qword_1EBC5D770;
  if (!qword_1EBC5D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D770);
  }

  return result;
}

unint64_t sub_1BB634350()
{
  result = qword_1EBC5D778;
  if (!qword_1EBC5D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5D778);
  }

  return result;
}

unint64_t sub_1BB6343A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BB6BB5D4();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BB6343F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BB6BB5D4();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BB63443C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BB6BB5D4();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BB634488(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BB6BB5D4();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BB6344D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BB6BB804();

  if (v2 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BB634528()
{
  result = qword_1EBC5D780;
  if (!qword_1EBC5D780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC5D780);
  }

  return result;
}

uint64_t sub_1BB6345A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1BB599B50(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }

  else
  {
    v8 = sub_1BB6A1320(a2);
    v10 = v9;

    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v3;
      if (!v11)
      {
        sub_1BB5EA2F0();
        v12 = v15;
      }

      result = sub_1BB63F250(v8, v12, v13);
      *v3 = v12;
    }
  }

  return result;
}

uint64_t sub_1BB634680(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E0, &unk_1BB6C4F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1BB598308(a1, &qword_1EBC5D7E0, &unk_1BB6C4F70);
    sub_1BB63E994(a2, v7);
    v13 = sub_1BB6BA844();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1BB598308(v7, &qword_1EBC5D7E0, &unk_1BB6C4F70);
  }

  else
  {
    sub_1BB6448B8(a1, v11, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1BB5997A8(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1BB6BA844();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1BB6348A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1BB6BA7F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1BB598308(a1, &qword_1EBC5C050, &qword_1BB6BD580);
    v14 = sub_1BB6A1004(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BB5EAB18();
        v18 = v23;
      }

      v19.n128_f64[0] = (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1BB63F3EC(v16, v18, v19);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1BB598308(v8, &qword_1EBC5C050, &qword_1BB6BD580);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_1BB599DCC(v13, a2, v20);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_1BB634AF0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1BFB111F0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1BB6BB564();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1BB634C2C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

double DKPersonGroupConfiguration.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[1] = xmmword_1BB6BE560;
  v0[2] = xmmword_1BB6BE570;
  result = 0.75;
  v0[3] = xmmword_1BB6BE580;
  return result;
}

void *DKPersonGroupFilter.__allocating_init(configuration:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  v4 = MEMORY[0x1E69E7CD0];
  result[4] = MEMORY[0x1E69E7CC8];
  result[5] = v4;
  v5 = MEMORY[0x1E69E7CC0];
  result[6] = v3;
  result[7] = v5;
  result[8] = v4;
  result[9] = v4;
  result[10] = v4;
  result[2] = a1;
  result[3] = v3;
  return result;
}

void *sub_1BB634D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1BB6A08D8(*(a1 + 16), 0);
  type metadata accessor for DKPersonGroup(0);
  v3 = sub_1BB6A36A8();
  sub_1BB593660(v5);
  if (v3 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void *sub_1BB634E38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BB6A0854(*(a1 + 16), 0);
  v4 = sub_1BB6A2C28(&v6, v3 + 4, v2, a1);
  sub_1BB593660(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

double DKPersonGroupConfiguration.init()()
{
  v0[1] = xmmword_1BB6BE560;
  v0[2] = xmmword_1BB6BE570;
  result = 0.75;
  v0[3] = xmmword_1BB6BE580;
  return result;
}

_OWORD *DKPersonGroupConfiguration.__allocating_init(configuration:)(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[2];
  v2[1] = a1[1];
  v2[2] = v3;
  v2[3] = a1[3];

  return v2;
}

void *DKPersonGroupConfiguration.init(configuration:)(void *a1)
{
  v1 = sub_1BB644574(a1);

  return v1;
}

uint64_t DKPersonGroup.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DKPersonGroup(0) + 24);
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DKPersonGroup.creationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKPersonGroup(0) + 24);
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double DKPersonGroup.handUUIDs.getter()
{
  type metadata accessor for DKPersonGroup(0);

  return result;
}

uint64_t DKPersonGroup.handUUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKPersonGroup(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

char *DKPersonGroup.getUUIDs()()
{
  v1 = v0;
  v2 = sub_1BB6BA844();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370, &unk_1BB6BE3F0);
  v5 = *(v38 - 8);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D788, &qword_1BB6C4F38);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v36 = swift_allocObject();
  v14 = v36 + v13;
  v15 = type metadata accessor for DKPersonGroup(0);
  sub_1BB5982A0(v1 + *(v15 + 32), v14, &qword_1EBC5C370, &unk_1BB6BE3F0);
  v35 = v15;
  v16 = *(v15 + 36);
  v39 = v1;
  v17 = v1 + v16;
  v18 = v2;
  sub_1BB5982A0(v17, v14 + v12, &qword_1EBC5C370, &unk_1BB6BE3F0);
  v34 = v14;
  sub_1BB5982A0(v14, v11, &qword_1EBC5C370, &unk_1BB6BE3F0);
  sub_1BB60DF90(v11, v8, &qword_1EBC5C370, &unk_1BB6BE3F0);
  v19 = (v3 + 32);
  v37 = v3;
  v20 = *(v3 + 48);
  v21 = v20(v8, 1, v18);
  v40 = (v3 + 32);
  if (v21 == 1)
  {
    sub_1BB598308(v8, &qword_1EBC5C370, &unk_1BB6BE3F0);
    v22 = MEMORY[0x1E69E7CC0];
    v23 = v33;
  }

  else
  {
    v23 = v33;
    v32 = *v19;
    v32(v33, v8, v18);
    v22 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1BB59CF10(0, *(v22 + 2) + 1, 1, v22);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1BB59CF10((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    v32(&v22[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v25], v23, v18);
  }

  sub_1BB5982A0(v34 + v12, v11, &qword_1EBC5C370, &unk_1BB6BE3F0);
  sub_1BB60DF90(v11, v8, &qword_1EBC5C370, &unk_1BB6BE3F0);
  if (v20(v8, 1, v18) == 1)
  {
    sub_1BB598308(v8, &qword_1EBC5C370, &unk_1BB6BE3F0);
  }

  else
  {
    v26 = *v40;
    (*v40)(v23, v8, v18);
    v27 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1BB59CF10(0, *(v22 + 2) + 1, 1, v22);
    }

    v29 = *(v22 + 2);
    v28 = *(v22 + 3);
    if (v29 >= v28 >> 1)
    {
      v22 = sub_1BB59CF10((v28 > 1), v29 + 1, 1, v22);
    }

    *(v22 + 2) = v29 + 1;
    v26(&v22[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29], v27, v18);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v41 = v22;

  sub_1BB5C8AEC(v30);
  return v41;
}

uint64_t DKPersonGroup.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1BB6BA844();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370, &unk_1BB6BE3F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for DKPersonGroup(0);
  v17 = v16[8];
  v28 = v2;
  sub_1BB5982A0(v2 + v17, v15, &qword_1EBC5C370, &unk_1BB6BE3F0);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    (*(v4 + 32))(v9, v15, v3);
    sub_1BB6BB944();
    sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1BB6BAB84();
    (*(v4 + 8))(v9, v3);
  }

  sub_1BB5982A0(v28 + v16[9], v12, &qword_1EBC5C370, &unk_1BB6BE3F0);
  if (v18(v12, 1, v3) == 1)
  {
    v19 = v4;
    sub_1BB6BB944();
  }

  else
  {
    (*(v4 + 32))(v9, v12, v3);
    sub_1BB6BB944();
    sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1BB6BAB84();
    v19 = v4;
    (*(v4 + 8))(v9, v3);
  }

  v20 = *(v28 + v16[10]);
  result = MEMORY[0x1BFB117B0](*(v20 + 16));
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = v19 + 16;
    v24 = *(v19 + 16);
    v25 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v26 = *(v23 + 56);
    do
    {
      v24(v6, v25, v3);
      sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1BB6BAB84();
      result = (*(v23 - 8))(v6, v3);
      v25 += v26;
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t static DKPersonGroup.== infix(_:_:)()
{
  v0 = DKPersonGroup.getUUIDs()();
  v1 = DKPersonGroup.getUUIDs()();
  v2 = sub_1BB63601C(v0, v1);

  return v2 & 1;
}

uint64_t sub_1BB635DAC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB635E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1BB644798(v13, v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
    if (!v11)
    {
      break;
    }

    sub_1BB644798(v14, v6, type metadata accessor for DKIdentityFilter.IdentityProbability);
    if ((sub_1BB6BA814() & 1) == 0 || *&v10[*(v4 + 20)] != *&v6[*(v4 + 20)])
    {
      sub_1BB644800(v6, type metadata accessor for DKIdentityFilter.IdentityProbability);
      sub_1BB644800(v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
      return 0;
    }

    v17 = *&v10[*(v4 + 24)];
    sub_1BB644800(v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
    v18 = *&v6[*(v4 + 24)];
    sub_1BB644800(v6, type metadata accessor for DKIdentityFilter.IdentityProbability);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB63601C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BB6BA844();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v22 = sub_1BB6BABE4();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB636230()
{
  v1 = *v0;
  v2 = 0x644970756F7267;
  v3 = 0x4449555579646F62;
  if (v1 != 5)
  {
    v3 = 0x44495555646E6168;
  }

  v4 = 0x55556E6F73726570;
  if (v1 != 3)
  {
    v4 = 0x4449555565636166;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E656469666E6F63;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461657263;
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

uint64_t sub_1BB636320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BB6453BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BB636348(uint64_t a1)
{
  v2 = sub_1BB6445CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB636384(uint64_t a1)
{
  v2 = sub_1BB6445CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKPersonGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D790, &qword_1BB6C4F40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6445CC();
  sub_1BB6BB984();
  v18 = 0;
  sub_1BB6BB734();
  if (!v2)
  {
    v17 = 1;
    sub_1BB6BB724();
    v10 = type metadata accessor for DKPersonGroup(0);
    v16 = 2;
    sub_1BB6BA7F4();
    sub_1BB644620(&qword_1EBC5C548, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1BB6BB744();
    v15 = 3;
    sub_1BB6BA844();
    sub_1BB644620(&qword_1EBC5CE38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1BB6BB704();
    v14 = 4;
    sub_1BB6BB704();
    v13 = 5;
    sub_1BB6BB704();
    v11[1] = *(v3 + *(v10 + 40));
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7A0, &qword_1BB6C4F48);
    sub_1BB644668(&qword_1EBC5D7A8, &qword_1EBC5CE38, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKPersonGroup.hashValue.getter()
{
  sub_1BB6BB924();
  DKPersonGroup.hash(into:)(v1);
  return sub_1BB6BB964();
}

uint64_t DKPersonGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370, &unk_1BB6BE3F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v31 - v8;
  v9 = sub_1BB6BA7F4();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7B0, &qword_1BB6C4F50);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v31 - v12;
  v14 = type metadata accessor for DKPersonGroup(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v17 + 28);
  v19 = sub_1BB6BA844();
  v20 = *(*(v19 - 8) + 56);
  v45 = v18;
  v20(v16 + v18, 1, 1, v19);
  v44 = v14[8];
  v20(v16 + v44, 1, 1, v19);
  v43 = v14[9];
  v20(v16 + v43, 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6445CC();
  v41 = v13;
  v21 = v42;
  sub_1BB6BB974();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v24 = v43;
    sub_1BB598308(v16 + v45, &qword_1EBC5C370, &unk_1BB6BE3F0);
    sub_1BB598308(v16 + v44, &qword_1EBC5C370, &unk_1BB6BE3F0);
    return sub_1BB598308(v16 + v24, &qword_1EBC5C370, &unk_1BB6BE3F0);
  }

  else
  {
    v23 = v38;
    v22 = v39;
    v42 = a1;
    v53 = 0;
    *v16 = sub_1BB6BB674();
    v52 = 1;
    sub_1BB6BB664();
    v16[1] = v25;
    v51 = 2;
    sub_1BB644620(&qword_1EBC5C658, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v26 = v37;
    sub_1BB6BB684();
    v32 = v14;
    (*(v36 + 32))(v16 + v14[6], v11, v26);
    v50 = 3;
    sub_1BB644620(&qword_1EBC5CE68, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1BB6BB644();
    sub_1BB5BA0DC(v22, v16 + v45, &qword_1EBC5C370, &unk_1BB6BE3F0);
    v49 = 4;
    v27 = v35;
    sub_1BB6BB644();
    sub_1BB5BA0DC(v27, v16 + v44, &qword_1EBC5C370, &unk_1BB6BE3F0);
    v48 = 5;
    v28 = v34;
    sub_1BB6BB644();
    sub_1BB5BA0DC(v28, v16 + v43, &qword_1EBC5C370, &unk_1BB6BE3F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7A0, &qword_1BB6C4F48);
    v47 = 6;
    sub_1BB644668(&qword_1EBC5D7B8, &qword_1EBC5CE68, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
    sub_1BB6BB684();
    v29 = v32[10];
    (*(v23 + 8))(v41, v40);
    *(v16 + v29) = v46;
    sub_1BB644798(v16, v33, type metadata accessor for DKPersonGroup);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_1BB644800(v16, type metadata accessor for DKPersonGroup);
  }
}

uint64_t sub_1BB636E90()
{
  sub_1BB6BB924();
  DKPersonGroup.hash(into:)(v1);
  return sub_1BB6BB964();
}

uint64_t sub_1BB636ED4(uint64_t a1)
{
  sub_1BB6BB924();
  DKPersonGroup.hash(into:)(v2);
  return sub_1BB6BB964();
}

uint64_t sub_1BB636F40()
{
  v0 = DKPersonGroup.getUUIDs()();
  v1 = DKPersonGroup.getUUIDs()();
  v2 = sub_1BB63601C(v0, v1);

  return v2 & 1;
}

uint64_t static DKPersonGroupFilter.StampedPerson.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DKPersonGroupFilter.StampedPerson(0);

  return sub_1BB6BA814();
}

uint64_t DKPersonGroupFilter.StampedPerson.hash(into:)(uint64_t a1)
{
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1BB6BAB84();
}

uint64_t DKPersonGroupFilter.StampedPerson.hashValue.getter()
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  return sub_1BB6BB964();
}

uint64_t sub_1BB6371CC()
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  return sub_1BB6BB964();
}

uint64_t sub_1BB6372B8(uint64_t a1)
{
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1BB6BAB84();
}

uint64_t sub_1BB63738C(uint64_t a1)
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB644620(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  return sub_1BB6BB964();
}

uint64_t sub_1BB637474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    return 0;
  }

  return sub_1BB6BA814();
}

uint64_t DKPersonGroupFilter.Track.lastGroupId.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DKPersonGroupFilter.Track.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DKPersonGroupFilter.Track(0) + 20);
  v4 = sub_1BB6BA844();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DKPersonGroupFilter.Track.uuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKPersonGroupFilter.Track(0) + 20);
  v4 = sub_1BB6BA844();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DKPersonGroupFilter.Track.identity.setter(uint64_t a1)
{
  result = type metadata accessor for DKPersonGroupFilter.Track(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1BB6376F8()
{
  v1 = 1684632949;
  if (*v0 != 1)
  {
    v1 = 0x797469746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F72477473616CLL;
  }
}

uint64_t sub_1BB637754@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BB645620(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BB63777C(uint64_t a1)
{
  v2 = sub_1BB644744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6377B8(uint64_t a1)
{
  v2 = sub_1BB644744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKPersonGroupFilter.Track.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7C0, &qword_1BB6C4F58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB644744();
  sub_1BB6BB984();
  v8[15] = 0;
  sub_1BB6BB6F4();
  if (!v1)
  {
    type metadata accessor for DKPersonGroupFilter.Track(0);
    v8[14] = 1;
    sub_1BB6BA844();
    sub_1BB644620(&qword_1EBC5CE38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1BB6BB744();
    v8[13] = 2;
    sub_1BB6BB734();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DKPersonGroupFilter.Track.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v2 = *v1;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v2);
  }

  v3 = type metadata accessor for DKPersonGroupFilter.Track(0);
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  return MEMORY[0x1BFB117B0](*(v1 + *(v3 + 24)));
}

uint64_t DKPersonGroupFilter.Track.hashValue.getter()
{
  sub_1BB6BB924();
  if (*(v0 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v1 = *v0;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v1);
  }

  v2 = type metadata accessor for DKPersonGroupFilter.Track(0);
  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  MEMORY[0x1BFB117B0](*(v0 + *(v2 + 24)));
  return sub_1BB6BB964();
}

uint64_t DKPersonGroupFilter.Track.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1BB6BA844();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7D0, &qword_1BB6C4F60);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DKPersonGroupFilter.Track(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB644744();
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = a1;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v30 = 0;
  *v11 = sub_1BB6BB634();
  v21 = v11;
  v11[8] = v15 & 1;
  v29 = 1;
  sub_1BB644620(&qword_1EBC5CE68, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v6;
  sub_1BB6BB684();
  v17 = v21;
  (*(v13 + 32))(&v21[*(v9 + 20)], v16, v14);
  v28 = 2;
  v18 = sub_1BB6BB674();
  (*(v12 + 8))(v8, v27);
  *(v17 + *(v9 + 24)) = v18;
  sub_1BB644798(v17, v23, type metadata accessor for DKPersonGroupFilter.Track);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_1BB644800(v17, type metadata accessor for DKPersonGroupFilter.Track);
}

uint64_t sub_1BB637F38(uint64_t a1)
{
  sub_1BB6BB924();
  if (*(v1 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v3 = *v1;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v3);
  }

  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  MEMORY[0x1BFB117B0](*(v1 + *(a1 + 24)));
  return sub_1BB6BB964();
}

uint64_t sub_1BB638020(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v4 = *v2;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v4);
  }

  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  return MEMORY[0x1BFB117B0](*(v2 + *(a2 + 24)));
}

uint64_t sub_1BB6380F4(uint64_t a1, uint64_t a2)
{
  sub_1BB6BB924();
  if (*(v2 + 8) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    v4 = *v2;
    sub_1BB6BB944();
    MEMORY[0x1BFB117B0](v4);
  }

  sub_1BB6BA844();
  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  MEMORY[0x1BFB117B0](*(v2 + *(a2 + 24)));
  return sub_1BB6BB964();
}

uint64_t DKPersonGroupFilter.State.activeGroups.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DKPersonGroupFilter.State.activeIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DKPersonGroupFilter.State.createdIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t DKPersonGroupFilter.State.killedIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void *DKPersonGroupFilter.init(configuration:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E7CC0];
  v1[6] = MEMORY[0x1E69E7CC8];
  v1[7] = v3;
  v4 = MEMORY[0x1E69E7CD0];
  v1[4] = v2;
  v1[5] = v4;
  v1[8] = v4;
  v1[9] = v4;
  v1[10] = v4;
  v1[2] = a1;
  v1[3] = v2;
  return v1;
}

uint64_t sub_1BB638390()
{

  v1 = MEMORY[0x1E69E7CC8];
  v0[6] = MEMORY[0x1E69E7CC8];

  v0[3] = v1;

  v0[4] = v1;
  v2 = MEMORY[0x1E69E7CD0];
  v0[7] = MEMORY[0x1E69E7CC0];
  v0[8] = v2;
  v0[9] = v2;
  v0[10] = v2;
}

uint64_t sub_1BB638428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v668 = a1;
  v597 = a5;
  v692[9] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7D8, &qword_1BB6C4F68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v660 = &v596 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v656 = &v596 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370, &unk_1BB6BE3F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v652 = &v596 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v655 = &v596 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v643 = &v596 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v642 = (&v596 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v641 = (&v596 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E0, &unk_1BB6C4F70);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v620 = &v596 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v632 = &v596 - v25;
  v635 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v599 = *(v635 - 8);
  MEMORY[0x1EEE9AC00](v635);
  v619 = &v596 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v618 = &v596 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v646 = &v596 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478, &qword_1BB6C0830);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v631 = &v596 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v630 = &v596 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v629 = &v596 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v628 = &v596 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v645 = &v596 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v647 = &v596 - v42;
  v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C468, &unk_1BB6C4F80);
  v598 = *(v633 - 8);
  MEMORY[0x1EEE9AC00](v633);
  v627 = &v596 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v640 = &v596 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v626 = &v596 - v47;
  v670 = sub_1BB6BA7F4();
  v602 = *(v670 - 8);
  MEMORY[0x1EEE9AC00](v670);
  v639 = &v596 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v600 = &v596 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v601 = &v596 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v667 = &v596 - v54;
  v659 = type metadata accessor for DKPersonGroup(0);
  v653 = *(v659 - 8);
  MEMORY[0x1EEE9AC00](v659);
  v662 = &v596 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v654 = &v596 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v638 = &v596 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v651 = &v596 - v61;
  v657 = type metadata accessor for DKPersonGroupFilter.Track(0);
  v62 = *(v657 - 8);
  MEMORY[0x1EEE9AC00](v657 - 8);
  v621 = &v596 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v617 = &v596 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v616 = &v596 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v666 = &v596 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v672 = (&v596 - v71);
  MEMORY[0x1EEE9AC00](v72);
  v676 = &v596 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v673 = &v596 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v681 = &v596 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v671 = (&v596 - v79);
  MEMORY[0x1EEE9AC00](v80);
  v689 = &v596 - v81;
  v82 = sub_1BB6BA844();
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v612 = &v596 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v622 = &v596 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v644 = &v596 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v614 = &v596 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v623 = &v596 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v663 = &v596 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v661 = &v596 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v634 = &v596 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v625 = &v596 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v636 = &v596 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v603 = &v596 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v674 = (&v596 - v106);
  MEMORY[0x1EEE9AC00](v107);
  v683 = &v596 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v680 = (&v596 - v110);
  MEMORY[0x1EEE9AC00](v111);
  v682 = (&v596 - v112);
  MEMORY[0x1EEE9AC00](v113);
  v684 = (&v596 - v114);
  MEMORY[0x1EEE9AC00](v115);
  v685 = &v596 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v679 = &v596 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v678 = &v596 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v677 = &v596 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v596 - v124;
  MEMORY[0x1EEE9AC00](v126);
  *&v664 = &v596 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v130 = &v596 - v129;
  v604 = a4;
  v611 = sub_1BB643678(a2, a3, a4);
  v131 = *(a2 + 16);
  v132 = MEMORY[0x1E69E7CC0];
  v669 = v83;
  v624 = v62;
  v607 = a3;
  v610 = a2;
  v687 = v131;
  *&v665 = v125;
  if (v131)
  {
    v692[0] = MEMORY[0x1E69E7CC0];
    v133 = v131;
    sub_1BB5E5860(0, v131, 0);
    v134 = v657;
    v132 = v692[0];
    v135 = a2 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v688 = *(v62 + 72);
    v136 = v82;
    v137 = (v83 + 32);
    v138 = v133;
    do
    {
      v139 = v689;
      sub_1BB644798(v135, v689, type metadata accessor for DKPersonGroupFilter.Track);
      v140 = *v137;
      (*v137)(v130, v139 + *(v134 + 20), v136);
      v692[0] = v132;
      v142 = *(v132 + 16);
      v141 = *(v132 + 24);
      if (v142 >= v141 >> 1)
      {
        sub_1BB5E5860((v141 > 1), v142 + 1, 1);
        v134 = v657;
        v132 = v692[0];
      }

      *(v132 + 16) = v142 + 1;
      v140((v132 + ((v669[80] + 32) & ~v669[80]) + *(v669 + 9) * v142), v130, v136);
      v135 += v688;
      --v138;
    }

    while (v138);
    v82 = v136;
    v83 = v669;
    a3 = v607;
    a2 = v610;
    v125 = v665;
  }

  v143 = *(a3 + 16);
  v144 = MEMORY[0x1E69E7CC0];
  v688 = v143;
  if (v143)
  {
    v658 = v132;
    v692[0] = MEMORY[0x1E69E7CC0];
    sub_1BB5E5860(0, v143, 0);
    v144 = v692[0];
    v145 = a3 + ((*(v624 + 80) + 32) & ~*(v624 + 80));
    v675 = *(v624 + 72);
    v146 = v82;
    v147 = (v83 + 32);
    v148 = v143;
    v149 = v657;
    v150 = v664;
    do
    {
      v151 = v689;
      sub_1BB644798(v145, v689, type metadata accessor for DKPersonGroupFilter.Track);
      v152 = *v147;
      (*v147)(v150, v151 + *(v149 + 20), v146);
      v692[0] = v144;
      v154 = *(v144 + 16);
      v153 = *(v144 + 24);
      if (v154 >= v153 >> 1)
      {
        sub_1BB5E5860((v153 > 1), v154 + 1, 1);
        v149 = v657;
        v144 = v692[0];
      }

      *(v144 + 16) = v154 + 1;
      v152(v144 + ((v669[80] + 32) & ~v669[80]) + *(v669 + 9) * v154, v150, v146);
      v145 += v675;
      --v148;
    }

    while (v148);
    v82 = v146;
    v83 = v669;
    a2 = v610;
    v125 = v665;
    v132 = v658;
  }

  v692[0] = v132;
  sub_1BB5C8AEC(v144);
  v155 = v692[0];
  v156 = v604;
  v157 = *(v604 + 16);
  v158 = MEMORY[0x1E69E7CC0];
  v613 = v157;
  if (v157)
  {
    *&v664 = v692[0];
    v692[0] = MEMORY[0x1E69E7CC0];
    sub_1BB5E5860(0, v157, 0);
    v158 = v692[0];
    v159 = v156 + ((*(v624 + 80) + 32) & ~*(v624 + 80));
    v675 = *(v624 + 72);
    v160 = (v83 + 32);
    v161 = v157;
    v162 = v657;
    v163 = v82;
    do
    {
      v164 = v689;
      sub_1BB644798(v159, v689, type metadata accessor for DKPersonGroupFilter.Track);
      v165 = *v160;
      (*v160)(v125, v164 + *(v162 + 20), v163);
      v692[0] = v158;
      v167 = *(v158 + 16);
      v166 = *(v158 + 24);
      if (v167 >= v166 >> 1)
      {
        sub_1BB5E5860((v166 > 1), v167 + 1, 1);
        v162 = v657;
        v158 = v692[0];
      }

      *(v158 + 16) = v167 + 1;
      v165((v158 + ((v669[80] + 32) & ~v669[80]) + *(v669 + 9) * v167), v125, v163);
      v159 += v675;
      --v161;
    }

    while (v161);
    v82 = v163;
    a2 = v610;
    v155 = v664;
  }

  v692[0] = v155;
  sub_1BB5C8AEC(v158);
  v605 = sub_1BB5CA9D0(v692[0]);

  v168 = MEMORY[0x1E69E7CC0];
  v169 = v671;
  if (v687)
  {
    v170 = (*(v624 + 80) + 32) & ~*(v624 + 80);
    v171 = *(v624 + 72);
    v172 = a2 + v170;
    v173 = MEMORY[0x1E69E7CC0];
    v174 = v687;
    v175 = v673;
    do
    {
      sub_1BB644798(v172, v169, type metadata accessor for DKPersonGroupFilter.Track);
      if (*(v169 + 8))
      {
        sub_1BB644800(v169, type metadata accessor for DKPersonGroupFilter.Track);
      }

      else
      {
        sub_1BB6448B8(v169, v681, type metadata accessor for DKPersonGroupFilter.Track);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v692[0] = v173;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BB5E5840(0, *(v173 + 16) + 1, 1);
          v175 = v673;
          v173 = v692[0];
        }

        v178 = *(v173 + 16);
        v177 = *(v173 + 24);
        if (v178 >= v177 >> 1)
        {
          sub_1BB5E5840((v177 > 1), v178 + 1, 1);
          v175 = v673;
          v173 = v692[0];
        }

        *(v173 + 16) = v178 + 1;
        sub_1BB6448B8(v681, v173 + v170 + v178 * v171, type metadata accessor for DKPersonGroupFilter.Track);
        v169 = v671;
      }

      v172 += v171;
      --v174;
    }

    while (v174);
  }

  else
  {
    v173 = MEMORY[0x1E69E7CC0];
    v175 = v673;
  }

  v681 = v82;
  v179 = *(v173 + 16);
  if (v179)
  {
    v692[0] = v168;
    sub_1BB63E91C(v179);
    v180 = v173 + ((*(v624 + 80) + 32) & ~*(v624 + 80));
    v181 = *(v624 + 72);
    v182 = (v669 + 32);
    v183 = v657;
    v184 = v681;
    v185 = v677;
    do
    {
      v186 = v689;
      sub_1BB644798(v180, v689, type metadata accessor for DKPersonGroupFilter.Track);
      v187 = *v182;
      (*v182)(v185, v186 + *(v183 + 20), v184);
      v188 = v692[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v188 + 16) + 1, 1);
        v183 = v657;
        v188 = v692[0];
      }

      v190 = *(v188 + 16);
      v189 = *(v188 + 24);
      if (v190 >= v189 >> 1)
      {
        sub_1BB5E5860((v189 > 1), v190 + 1, 1);
        v183 = v657;
        v188 = v692[0];
      }

      *(v188 + 16) = v190 + 1;
      v191 = v188 + ((v669[80] + 32) & ~v669[80]) + *(v669 + 9) * v190;
      v185 = v677;
      v184 = v681;
      v187(v191, v677, v681);
      v692[0] = v188;
      v180 += v181;
      --v179;
    }

    while (v179);

    v175 = v673;
  }

  else
  {

    v188 = MEMORY[0x1E69E7CC0];
  }

  v192 = MEMORY[0x1E69E7CC0];
  v193 = v688;
  if (v688)
  {
    v194 = (*(v624 + 80) + 32) & ~*(v624 + 80);
    v195 = *(v624 + 72);
    v196 = v607 + v194;
    v197 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BB644798(v196, v175, type metadata accessor for DKPersonGroupFilter.Track);
      if (*(v175 + 8))
      {
        sub_1BB644800(v175, type metadata accessor for DKPersonGroupFilter.Track);
      }

      else
      {
        sub_1BB6448B8(v175, v676, type metadata accessor for DKPersonGroupFilter.Track);
        v198 = swift_isUniquelyReferenced_nonNull_native();
        v692[0] = v197;
        if ((v198 & 1) == 0)
        {
          sub_1BB5E5840(0, *(v197 + 16) + 1, 1);
          v175 = v673;
          v197 = v692[0];
        }

        v200 = *(v197 + 16);
        v199 = *(v197 + 24);
        if (v200 >= v199 >> 1)
        {
          sub_1BB5E5840((v199 > 1), v200 + 1, 1);
          v175 = v673;
          v197 = v692[0];
        }

        *(v197 + 16) = v200 + 1;
        sub_1BB6448B8(v676, v197 + v194 + v200 * v195, type metadata accessor for DKPersonGroupFilter.Track);
      }

      v196 += v195;
      --v193;
    }

    while (v193);
  }

  else
  {
    v197 = MEMORY[0x1E69E7CC0];
  }

  v201 = *(v197 + 16);
  if (v201)
  {
    v692[0] = v192;
    sub_1BB63E91C(v201);
    v202 = (*(v624 + 80) + 32) & ~*(v624 + 80);
    v676 = v197;
    v203 = v197 + v202;
    v677 = *(v624 + 72);
    v204 = (v669 + 32);
    v205 = v657;
    v206 = v681;
    v207 = v678;
    do
    {
      v208 = v689;
      sub_1BB644798(v203, v689, type metadata accessor for DKPersonGroupFilter.Track);
      v209 = *v204;
      (*v204)(v207, v208 + *(v205 + 20), v206);
      v210 = v692[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v210 + 16) + 1, 1);
        v205 = v657;
        v210 = v692[0];
      }

      v212 = *(v210 + 16);
      v211 = *(v210 + 24);
      if (v212 >= v211 >> 1)
      {
        sub_1BB5E5860((v211 > 1), v212 + 1, 1);
        v205 = v657;
        v210 = v692[0];
      }

      *(v210 + 16) = v212 + 1;
      v213 = v210 + ((v669[80] + 32) & ~v669[80]) + *(v669 + 9) * v212;
      v207 = v678;
      v206 = v681;
      v209(v213, v678, v681);
      v692[0] = v210;
      v203 += v677;
      --v201;
    }

    while (v201);
  }

  else
  {

    v210 = MEMORY[0x1E69E7CC0];
  }

  v692[0] = v188;
  sub_1BB5C8AEC(v210);
  v677 = v692[0];
  v214 = MEMORY[0x1E69E7CC0];
  v215 = v613;
  v216 = v685;
  v217 = v672;
  if (v613)
  {
    v218 = (*(v624 + 80) + 32) & ~*(v624 + 80);
    v219 = *(v624 + 72);
    v220 = v604 + v218;
    v221 = MEMORY[0x1E69E7CC0];
    v222 = v666;
    do
    {
      sub_1BB644798(v220, v217, type metadata accessor for DKPersonGroupFilter.Track);
      if (*(v217 + 8))
      {
        sub_1BB644800(v217, type metadata accessor for DKPersonGroupFilter.Track);
      }

      else
      {
        sub_1BB6448B8(v217, v222, type metadata accessor for DKPersonGroupFilter.Track);
        v223 = swift_isUniquelyReferenced_nonNull_native();
        v692[0] = v221;
        if ((v223 & 1) == 0)
        {
          sub_1BB5E5840(0, *(v221 + 16) + 1, 1);
          v222 = v666;
          v221 = v692[0];
        }

        v225 = *(v221 + 16);
        v224 = *(v221 + 24);
        if (v225 >= v224 >> 1)
        {
          sub_1BB5E5840((v224 > 1), v225 + 1, 1);
          v222 = v666;
          v221 = v692[0];
        }

        *(v221 + 16) = v225 + 1;
        sub_1BB6448B8(v222, v221 + v218 + v225 * v219, type metadata accessor for DKPersonGroupFilter.Track);
        v216 = v685;
        v217 = v672;
      }

      v220 += v219;
      --v215;
    }

    while (v215);
  }

  else
  {
    v221 = MEMORY[0x1E69E7CC0];
  }

  v226 = *(v221 + 16);
  if (v226)
  {
    v692[0] = v214;
    sub_1BB63E91C(v226);
    v227 = v221 + ((*(v624 + 80) + 32) & ~*(v624 + 80));
    v678 = *(v624 + 72);
    v228 = (v669 + 32);
    v229 = v657;
    v230 = v681;
    v231 = v679;
    do
    {
      v232 = v689;
      sub_1BB644798(v227, v689, type metadata accessor for DKPersonGroupFilter.Track);
      v233 = *v228;
      (*v228)(v231, v232 + *(v229 + 20), v230);
      v234 = v692[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v234 + 16) + 1, 1);
        v229 = v657;
        v234 = v692[0];
      }

      v236 = *(v234 + 16);
      v235 = *(v234 + 24);
      if (v236 >= v235 >> 1)
      {
        sub_1BB5E5860((v235 > 1), v236 + 1, 1);
        v229 = v657;
        v234 = v692[0];
      }

      *(v234 + 16) = v236 + 1;
      v237 = v234 + ((v669[80] + 32) & ~v669[80]) + *(v669 + 9) * v236;
      v231 = v679;
      v230 = v681;
      v233(v237, v679, v681);
      v692[0] = v234;
      v227 += v678;
      --v226;
      v238 = v682;
    }

    while (v226);

    v216 = v685;
  }

  else
  {

    v234 = MEMORY[0x1E69E7CC0];
    v238 = v682;
  }

  v692[0] = v677;
  sub_1BB5C8AEC(v234);
  v637 = sub_1BB5CA9D0(v692[0]);

  v239 = MEMORY[0x1E69E7CC0];
  v240 = v681;
  if (v687)
  {
    v692[0] = MEMORY[0x1E69E7CC0];
    sub_1BB63E91C(v687);
    v241 = v610 + ((*(v624 + 80) + 32) & ~*(v624 + 80));
    v242 = *(v624 + 72);
    v243 = (v669 + 32);
    v244 = v657;
    do
    {
      v245 = v689;
      sub_1BB644798(v241, v689, type metadata accessor for DKPersonGroupFilter.Track);
      v246 = *v243;
      (*v243)(v216, v245 + *(v244 + 20), v240);
      v239 = v692[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v239 + 16) + 1, 1);
        v244 = v657;
        v239 = v692[0];
      }

      v248 = *(v239 + 16);
      v247 = *(v239 + 24);
      if (v248 >= v247 >> 1)
      {
        sub_1BB5E5860((v247 > 1), v248 + 1, 1);
        v244 = v657;
        v239 = v692[0];
      }

      *(v239 + 16) = v248 + 1;
      v249 = v239 + ((v669[80] + 32) & ~v669[80]) + *(v669 + 9) * v248;
      v216 = v685;
      v246(v249, v685, v240);
      v692[0] = v239;
      v241 += v242;
      --v687;
    }

    while (v687);
    v238 = v682;
  }

  v250 = MEMORY[0x1E69E7CC0];
  if (v688)
  {
    v692[0] = MEMORY[0x1E69E7CC0];
    sub_1BB63E91C(v688);
    v251 = v607 + ((*(v624 + 80) + 32) & ~*(v624 + 80));
    v687 = *(v624 + 72);
    v252 = (v669 + 32);
    v253 = v657;
    v254 = v684;
    do
    {
      v255 = v689;
      sub_1BB644798(v251, v689, type metadata accessor for DKPersonGroupFilter.Track);
      v256 = *v252;
      (*v252)(v254, v255 + *(v253 + 20), v240);
      v250 = v692[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BB5E5860(0, *(v250 + 16) + 1, 1);
        v253 = v657;
        v250 = v692[0];
      }

      v258 = *(v250 + 16);
      v257 = *(v250 + 24);
      if (v258 >= v257 >> 1)
      {
        sub_1BB5E5860((v257 > 1), v258 + 1, 1);
        v253 = v657;
        v250 = v692[0];
      }

      *(v250 + 16) = v258 + 1;
      v254 = v684;
      v256(v250 + ((v669[80] + 32) & ~v669[80]) + *(v669 + 9) * v258, v684, v240);
      v692[0] = v250;
      v251 += v687;
      v259 = v688-- == 1;
      v238 = v682;
    }

    while (!v259);
  }

  v692[0] = v239;
  sub_1BB5C8AEC(v250);
  v609 = sub_1BB5CA9D0(v692[0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF48, &unk_1BB6C4F90);
  inited = swift_initStackObject();
  v261 = MEMORY[0x1E69E7CD0];
  *(inited + 16) = xmmword_1BB6BD520;
  v684 = inited;
  *(inited + 32) = v261;
  v262 = v611;
  v263 = v680;
  v606 = v611[2];
  if (!v606)
  {

    v265 = v669;
    goto LABEL_129;
  }

  v264 = 0;
  v608 = v611 + ((*(v653 + 80) + 32) & ~*(v653 + 80));
  v265 = v669;
  v266 = (v669 + 8);
  v666 = (v602 + 16);
  *&v665 = v602 + 56;
  v664 = xmmword_1BB6BE460;
  v671 = (v669 + 16);
  v672 = (v669 + 8);
  while (1)
  {
    if (v264 >= v262[2])
    {
      goto LABEL_320;
    }

    v268 = *(v653 + 72);
    v615 = v264;
    sub_1BB644798(&v608[v268 * v264], v651, type metadata accessor for DKPersonGroup);
    v269 = DKPersonGroup.getUUIDs()();
    v650 = *(v269 + 2);
    if (v650)
    {
      break;
    }

LABEL_97:

    v267 = v615 + 1;
    sub_1BB644800(v651, type metadata accessor for DKPersonGroup);
    v264 = v267;
    v262 = v611;
    if (v267 == v606)
    {
      goto LABEL_312;
    }
  }

  v270 = 0;
  v673 = v265[80];
  v678 = (v673 + 32) & ~v673;
  v649 = &v269[v678];
  v648 = v269;
LABEL_103:
  if (v270 >= *(v269 + 2))
  {
    goto LABEL_316;
  }

  v273 = *(v265 + 9);
  v658 = v270;
  v679 = *(v265 + 2);
  (v679)(v238, &v649[v273 * v270], v240);
  v274 = DKPersonGroup.getUUIDs()();
  v685 = *(v274 + 2);
  if (!v685)
  {

    v271 = *v266;
    goto LABEL_102;
  }

  v275 = 0;
  v276 = &v274[v678];
  v676 = (v678 + 2 * v273);
  v265 = v679;
  v277 = v274;
  v675 = v273;
  v677 = v274;
  while (1)
  {
    if (v275 >= *(v277 + 16))
    {
      __break(1u);
      while (1)
      {

        v475 = v690;
        v414 = v686;
        while (1)
        {
          v476 = v414[8];
          v477 = v673;
          if (*(v475 + 16) > *(v476 + 16) >> 3)
          {

            v478 = sub_1BB63F984(v475, v476);
          }

          else
          {
            v692[0] = v414[8];

            sub_1BB63F768(v475);
            v478 = v692[0];
          }

          v414[10] = v478;

          v479 = v414[8];
          if (*(v479 + 16) <= *(v475 + 16) >> 3)
          {
            v692[0] = v475;

            sub_1BB63F768(v479);

            v480 = v692[0];
          }

          else
          {

            v480 = sub_1BB63F984(v479, v475);
          }

          v414[9] = v480;

          v414[8] = v475;

          v481 = v621;
          if (!v613)
          {
LABEL_309:

            v414[7] = sub_1BB634D70(v589);

            v590 = v414[8];
            v591 = v414[9];
            v592 = v414[10];
            v593 = v597;
            *v597 = v414[7];
            v593[1] = v590;
            v593[2] = v591;
            v593[3] = v592;
          }

          v482 = 0;
          v670 = v604 + ((*(v624 + 80) + 32) & ~*(v624 + 80));
          v680 = v669 + 48;
          v674 = (v653 + 48);
          v668 = *(v624 + 72);
LABEL_228:
          v483 = sub_1BB644798(v670 + v668 * v482, v481, type metadata accessor for DKPersonGroupFilter.Track);
          v484 = v414[6];
          MEMORY[0x1EEE9AC00](v483);
          *(&v596 - 2) = v481;
          *(&v596 - 1) = v609;

          v485 = sub_1BB64044C(sub_1BB644898, (&v596 - 4), v484, sub_1BB6416E8, sub_1BB6416E8);

          v486 = 1 << v485[32];
          if (v486 < 64)
          {
            v487 = ~(-1 << v486);
          }

          else
          {
            v487 = -1;
          }

          v488 = v487 & *(v485 + 8);
          if (v488)
          {
            v672 = v482;
            v673 = v477;
            v489 = 0;
            v490 = __clz(__rbit64(v488));
            v491 = (v488 - 1) & v488;
            v492 = (v486 + 63) >> 6;
            goto LABEL_237;
          }

          v493 = v414;
          v494 = 0;
          v492 = (v486 + 63) >> 6;
          do
          {
            if (v492 - 1 == v488)
            {

              v414 = v493;
LABEL_227:
              ++v482;
              v481 = v621;
              sub_1BB644800(v621, type metadata accessor for DKPersonGroupFilter.Track);
              if (v482 == v613)
              {
                goto LABEL_309;
              }

              goto LABEL_228;
            }

            v489 = v488 + 1;
            v495 = *&v485[8 * v488 + 72];
            v494 -= 64;
            ++v488;
          }

          while (!v495);
          v672 = v482;
          v673 = v477;
          v491 = (v495 - 1) & v495;
          v490 = __clz(__rbit64(v495)) - v494;
LABEL_237:
          v496 = *(*(v485 + 7) + 8 * v490);
          v688 = *(*(v485 + 6) + 8 * v490);

          while (2)
          {
            if (v491)
            {
LABEL_243:
              v498 = __clz(__rbit64(v491));
              v491 &= v491 - 1;
              v499 = v498 | (v489 << 6);
              v500 = *(*(v485 + 7) + 8 * v499);
              if (*(v496 + 33) == 1)
              {
                if (*(v496 + 32) == 1)
                {
                  v501 = atan2(*(v496 + 48), *(v496 + 56));
                }

                else
                {
                  v501 = *(v496 + 40);
                }

                if (*(v500 + 33) != 1)
                {
                  if (v501 >= 0.0)
                  {
                    continue;
                  }

                  goto LABEL_256;
                }

                if (*(v500 + 32) != 1)
                {
LABEL_253:
                  if (v501 >= *(v500 + 40))
                  {
                    continue;
                  }

                  goto LABEL_256;
                }
              }

              else
              {
                if (*(v500 + 33) != 1)
                {
                  continue;
                }

                v501 = 0.0;
                if ((*(v500 + 32) & 1) == 0)
                {
                  goto LABEL_253;
                }
              }

              if (v501 >= atan2(*(v500 + 48), *(v500 + 56)))
              {
                continue;
              }

LABEL_256:
              v502 = *(*(v485 + 6) + 8 * v499);

              v496 = v500;
              v688 = v502;
              continue;
            }

            break;
          }

          while (1)
          {
            v497 = v489 + 1;
            if (__OFADD__(v489, 1))
            {
              goto LABEL_314;
            }

            if (v497 >= v492)
            {
              break;
            }

            v491 = *&v485[8 * v497 + 64];
            ++v489;
            if (v491)
            {
              v489 = v497;
              goto LABEL_243;
            }
          }

          v503 = v691 + 64;
          v504 = 1 << *(v691 + 32);
          if (v504 < 64)
          {
            v505 = ~(-1 << v504);
          }

          else
          {
            v505 = -1;
          }

          v506 = v505 & *(v691 + 64);
          v675 = (v504 + 63) >> 6;
          v685 = (v688 + 56);
          v676 = v691;

          v507 = 0;
          v508 = v660;
          v509 = v679;
          v677 = v503;
          if (v506)
          {
            while (1)
            {
              v511 = v507;
LABEL_273:
              v513 = __clz(__rbit64(v506));
              v506 &= v506 - 1;
              v514 = v513 | (v511 << 6);
              v515 = v676;
              v516 = v669;
              v517 = v683;
              (*(v669 + 2))(v683, *(v676 + 6) + *(v669 + 9) * v514, v240);
              v518 = v654;
              sub_1BB644798(*(v515 + 56) + *(v653 + 72) * v514, v654, type metadata accessor for DKPersonGroup);
              v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E8, &unk_1BB6C4FA0);
              v520 = *(v519 + 48);
              v521 = *(v516 + 4);
              v508 = v660;
              v509 = v679;
              v521(v660, v517, v240);
              sub_1BB6448B8(v518, v508 + v520, type metadata accessor for DKPersonGroup);
              (*(*(v519 - 8) + 56))(v508, 0, 1, v519);
LABEL_274:
              v522 = v656;
              sub_1BB60DF90(v508, v656, &qword_1EBC5D7D8, &qword_1BB6C4F68);
              v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E8, &unk_1BB6C4FA0);
              if ((*(*(v523 - 8) + 48))(v522, 1, v523) == 1)
              {

                v414 = v686;
                v477 = v673;
                v482 = v672;
                goto LABEL_227;
              }

              v524 = *(v523 + 48);
              v525 = *v509;
              (*v509)(v661, v522, v240);
              v526 = v522 + v524;
              v527 = v662;
              sub_1BB6448B8(v526, v662, type metadata accessor for DKPersonGroup);
              v528 = v659;
              v529 = v527 + *(v659 + 32);
              v530 = v655;
              sub_1BB5982A0(v529, v655, &qword_1EBC5C370, &unk_1BB6BE3F0);
              v682 = *v680;
              v531 = (v682)(v530, 1, v240);
              v678 = v525;
              if (v531 == 1)
              {
                v532 = v509;
                sub_1BB598308(v530, &qword_1EBC5C370, &unk_1BB6BE3F0);
                v533 = v662;
              }

              else
              {
                v525(v663, v530, v240);
                if (*(v688 + 16))
                {
                  v534 = v688;
                  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
                  v535 = sub_1BB6BAB74();
                  v536 = -1 << *(v534 + 32);
                  v537 = v535 & ~v536;
                  if ((*&v685[(v537 >> 3) & 0xFFFFFFFFFFFFFF8] >> v537))
                  {
                    v538 = ~v536;
                    v539 = *(v669 + 9);
                    v540 = *(v669 + 2);
                    while (1)
                    {
                      v541 = v683;
                      v540(v683, *(v688 + 48) + v539 * v537, v240);
                      sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                      v542 = sub_1BB6BABE4();
                      v543 = v240;
                      v544 = *v689;
                      (*v689)(v541, v543);
                      if (v542)
                      {
                        break;
                      }

                      v537 = (v537 + 1) & v538;
                      v240 = v681;
                      if (((*&v685[(v537 >> 3) & 0xFFFFFFFFFFFFFF8] >> v537) & 1) == 0)
                      {
                        goto LABEL_282;
                      }
                    }

                    v557 = v623;
                    v558 = v681;
                    v540(v623, v661, v681);
                    v559 = sub_1BB63D8E8(v692);
                    v561 = v560;
                    v562 = v659;
                    if (!(*v674)(v560, 1, v659))
                    {
                      v682 = v559;
                      v540(v614, v621 + *(v657 + 20), v558);
                      v569 = *(v562 + 40);
                      v570 = *(v561 + v569);
                      v571 = swift_isUniquelyReferenced_nonNull_native();
                      *(v561 + v569) = v570;
                      v671 = v561;
                      if ((v571 & 1) == 0)
                      {
                        v570 = sub_1BB59CF10(0, v570[2] + 1, 1, v570);
                        *(v561 + v569) = v570;
                      }

                      v509 = v679;
                      v572 = v682;
                      v574 = v570[2];
                      v573 = v570[3];
                      v575 = (v574 + 1);
                      if (v574 >= v573 >> 1)
                      {
                        v682 = (v574 + 1);
                        v587 = sub_1BB59CF10((v573 > 1), v574 + 1, 1, v570);
                        v575 = v682;
                        v570 = v587;
                        *(v671 + v569) = v587;
                      }

                      v570[2] = v575;
                      v576 = v570 + ((v669[80] + 32) & ~v669[80]) + v574 * v539;
                      v577 = v681;
                      (v678)(v576, v614, v681);
                      v572(v692, 0);
                      (v544)(v623, v577);
                      (v544)(v663, v577);
                      sub_1BB644800(v662, type metadata accessor for DKPersonGroup);
                      (v544)(v661, v577);
                      v240 = v577;
                      v508 = v660;
                      goto LABEL_296;
                    }

                    (v559)(v692, 0);
                    (v544)(v557, v558);
                    v563 = v663;
LABEL_294:
                    (v544)(v563, v558);
                    sub_1BB644800(v662, type metadata accessor for DKPersonGroup);
                    (v544)(v661, v558);
                    v508 = v660;
                    v240 = v558;
                    goto LABEL_295;
                  }
                }

LABEL_282:
                (*v689)(v663, v240);
                v528 = v659;
                v533 = v662;
                v532 = v679;
                v525 = v678;
              }

              v545 = v652;
              sub_1BB5982A0(v533 + *(v528 + 36), v652, &qword_1EBC5C370, &unk_1BB6BE3F0);
              if ((v682)(v545, 1, v240) == 1)
              {
                sub_1BB644800(v533, type metadata accessor for DKPersonGroup);
                (*v689)(v661, v240);
                sub_1BB598308(v545, &qword_1EBC5C370, &unk_1BB6BE3F0);
                v503 = v677;
                v509 = v532;
                v508 = v660;
                if (!v506)
                {
                  break;
                }
              }

              else
              {
                v546 = v644;
                v525(v644, v545, v240);
                if (*(v688 + 16))
                {
                  v547 = v688;
                  sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
                  v548 = sub_1BB6BAB74();
                  v549 = -1 << *(v547 + 32);
                  v550 = v548 & ~v549;
                  if ((*&v685[(v550 >> 3) & 0xFFFFFFFFFFFFFF8] >> v550))
                  {
                    v551 = ~v549;
                    v682 = *(v669 + 9);
                    v552 = *(v669 + 2);
                    while (1)
                    {
                      v553 = v683;
                      v552(v683, *(v688 + 48) + v682 * v550, v240);
                      sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                      v554 = sub_1BB6BABE4();
                      v555 = v240;
                      v544 = *v689;
                      (*v689)(v553, v555);
                      if (v554)
                      {
                        break;
                      }

                      v550 = (v550 + 1) & v551;
                      v240 = v681;
                      if (((*&v685[(v550 >> 3) & 0xFFFFFFFFFFFFFF8] >> v550) & 1) == 0)
                      {
                        goto LABEL_289;
                      }
                    }

                    v564 = v622;
                    v558 = v681;
                    v552(v622, v661, v681);
                    v565 = sub_1BB63D8E8(v692);
                    v567 = v566;
                    v568 = v659;
                    if (!(*v674)(v566, 1, v659))
                    {
                      v671 = v565;
                      v552(v612, v621 + *(v657 + 20), v558);
                      v578 = *(v568 + 40);
                      v579 = *&v567[v578];
                      v580 = swift_isUniquelyReferenced_nonNull_native();
                      *&v567[v578] = v579;
                      v667 = v567;
                      if ((v580 & 1) == 0)
                      {
                        v579 = sub_1BB59CF10(0, v579[2] + 1, 1, v579);
                        *&v567[v578] = v579;
                      }

                      v509 = v679;
                      v581 = v671;
                      v583 = v579[2];
                      v582 = v579[3];
                      v584 = (v583 + 1);
                      if (v583 >= v582 >> 1)
                      {
                        v671 = (v583 + 1);
                        v588 = sub_1BB59CF10((v582 > 1), v583 + 1, 1, v579);
                        v584 = v671;
                        v579 = v588;
                        *&v667[v578] = v588;
                      }

                      v579[2] = v584;
                      v585 = v579 + ((v669[80] + 32) & ~v669[80]) + v583 * v682;
                      v586 = v681;
                      (v678)(v585, v612, v681);
                      (v581)(v692, 0);
                      (v544)(v622, v586);
                      (v544)(v546, v586);
                      sub_1BB644800(v662, type metadata accessor for DKPersonGroup);
                      (v544)(v661, v586);
                      v240 = v586;
                      v508 = v660;
                      goto LABEL_296;
                    }

                    (v565)(v692, 0);
                    (v544)(v564, v558);
                    v563 = v546;
                    goto LABEL_294;
                  }
                }

LABEL_289:
                v556 = *v689;
                (*v689)(v546, v240);
                sub_1BB644800(v662, type metadata accessor for DKPersonGroup);
                (v556)(v661, v240);
                v508 = v660;
LABEL_295:
                v509 = v679;
LABEL_296:
                v503 = v677;
                if (!v506)
                {
                  break;
                }
              }
            }
          }

          if (v675 <= (v507 + 1))
          {
            v510 = (v507 + 1);
          }

          else
          {
            v510 = v675;
          }

          v265 = (v510 - 1);
          while (1)
          {
            v511 = (v507 + 1);
            if (__OFADD__(v507, 1))
            {
              break;
            }

            if (v511 >= v675)
            {
              v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D7E8, &unk_1BB6C4FA0);
              (*(*(v512 - 8) + 56))(v508, 1, 1, v512);
              v506 = 0;
              v507 = v265;
              goto LABEL_274;
            }

            v506 = *(v503 + 8 * v511);
            ++v507;
            if (v506)
            {
              v507 = v511;
              goto LABEL_273;
            }
          }

          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:

LABEL_129:
          v316 = v637 + 56;
          v317 = 1 << *(v637 + 32);
          if (v317 < 64)
          {
            v318 = ~(-1 << v317);
          }

          else
          {
            v318 = -1;
          }

          v319 = v318 & *(v637 + 56);
          v320 = (v317 + 63) >> 6;
          v687 = (v265 + 16);
          v689 = (v265 + 8);
          v676 = v602 + 16;
          v671 = (v602 + 56);

          v321 = 0;
          v665 = xmmword_1BB6BE460;
          v679 = v265 + 32;
          v675 = v316;
          *&v664 = v320;
          while (2)
          {
            if (v319)
            {
              v322 = v321;
LABEL_139:
              v672 = ((v319 - 1) & v319);
              v666 = v322;
              v323 = v637;
              v324 = v669;
              v325 = *(v669 + 9);
              v326 = *(v637 + 48) + v325 * (__clz(__rbit64(v319)) | (v322 << 6));
              v327 = v603;
              v685 = *(v669 + 2);
              (v685)(v603, v326, v240);
              v682 = *(v324 + 4);
              (v682)(v636, v327, v240);
              v328 = 1 << *(v323 + 32);
              if (v328 < 64)
              {
                v329 = ~(-1 << v328);
              }

              else
              {
                v329 = -1;
              }

              v330 = v329 & *(v323 + 56);
              v331 = (v328 + 63) >> 6;
              v673 = 2 * v325;

              v332 = 0;
              v316 = v675;
              v688 = v325;
              v680 = v331;
LABEL_145:
              if (!v330)
              {
                v334 = v685;
                while (1)
                {
                  v335 = v332 + 1;
                  if (__OFADD__(v332, 1))
                  {
                    goto LABEL_315;
                  }

                  if (v335 >= v331)
                  {
                    break;
                  }

                  v330 = *(v316 + 8 * v335);
                  ++v332;
                  if (v330)
                  {
                    v332 = v335;
                    goto LABEL_152;
                  }
                }

                (*v689)();

                v321 = v666;
                v320 = v664;
                v319 = v672;
                continue;
              }

              v334 = v685;
LABEL_152:
              v336 = v625;
              (v334)(v625, *(v637 + 48) + (__clz(__rbit64(v330)) | (v332 << 6)) * v325, v240);
              v337 = v634;
              (v682)(v634, v336, v240);
              sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v338 = v636;
              if (sub_1BB6BABE4())
              {
                v333 = *v689;
                v331 = v680;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF60, &unk_1BB6C2950);
                v339 = (v669[80] + 32) & ~v669[80];
                v677 = swift_allocObject();
                v340 = v677 + v339;
                (v334)(v677 + v339, v338, v240);
                (v334)(v340 + v688, v337, v240);
                v341 = sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
                v692[0] = MEMORY[0x1BFB10E40](2, v240, v341);
                v342 = v683;
                (v334)(v683, v340, v240);
                v343 = v674;
                sub_1BB5AD188(v674, v342);
                v344 = *(v669 + 1);
                v678 = v689 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                (v344)(v343, v240);
                (v334)(v342, v340 + v688, v240);
                v333 = v344;
                swift_setDeallocating();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                sub_1BB5AD188(v343, v342);
                (v344)(v343, v240);
                v345 = v692[0];
                v331 = v680;
                if (*(v686[6] + 16))
                {

                  sub_1BB6A1320(v345);
                  if (v346)
                  {

                    goto LABEL_158;
                  }
                }

                v347 = v686[2];
                v349 = v347[4];
                v348 = v347[5];
                v350 = v347[3];
                v351 = v667;
                v352 = v670;
                (*v676)(v667, v668, v670);
                v677 = v345;
                v353 = *v671;
                (*v671)(v351, 0, 1, v352);
                type metadata accessor for DKSmoothingFilter(0);
                v354 = swift_allocObject();
                *(v354 + 48) = v665;
                v355 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
                v353(v354 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v352);
                v356 = v354 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
                *v356 = 0;
                *(v356 + 8) = 1;
                v357 = v354 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
                *v357 = 0;
                *(v357 + 8) = 1;
                *(v354 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
                *(v354 + 16) = v350;
                *(v354 + 24) = v349;
                *(v354 + 32) = 256;
                *(v354 + 40) = v348;
                v358 = v354 + v355;
                v240 = v681;
                sub_1BB5BA0DC(v351, v358, &qword_1EBC5C050, &qword_1BB6BD580);
                *v356 = 0;
                *(v356 + 8) = 1;
                *v357 = 0;
                *(v357 + 8) = 1;
                sub_1BB6345A0(v354, v677);
LABEL_158:
                v337 = v634;
                v316 = v675;
              }

              v330 &= v330 - 1;
              (v333)(v337, v240);
              v325 = v688;
              goto LABEL_145;
            }

            break;
          }

          while (1)
          {
            v322 = v321 + 1;
            if (__OFADD__(v321, 1))
            {
              goto LABEL_317;
            }

            if (v322 >= v320)
            {
              break;
            }

            v319 = *(v316 + 8 * v322);
            ++v321;
            if (v319)
            {
              goto LABEL_139;
            }
          }

          v359 = v686[6];
          v362 = *(v359 + 64);
          v361 = v359 + 64;
          v360 = v362;
          v363 = 1 << *(v686[6] + 32);
          v364 = -1;
          if (v363 < 64)
          {
            v364 = ~(-1 << v363);
          }

          v365 = v364 & v360;
          v366 = (v363 + 63) >> 6;
          v688 = v686[6];

          v367 = 0;
          v673 = 0;
          while (v365)
          {
            v368 = v605;
LABEL_170:
            v370 = *(*(v688 + 48) + ((v367 << 9) | (8 * __clz(__rbit64(v365)))));
            v371 = *(v368 + 32);
            v372 = v371 & 0x3F;
            v373 = ((1 << v371) + 63) >> 6;
            v374 = 8 * v373;
            swift_bridgeObjectRetain_n();
            isStackAllocationSafe = swift_bridgeObjectRetain_n();
            if (v372 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              MEMORY[0x1EEE9AC00](isStackAllocationSafe);
              v285 = &v596 - ((v374 + 15) & 0x3FFFFFFFFFFFFFF0);
              bzero(v285, v374);
              v376 = v673;
              sub_1BB642B50(v285, v373, v368, v370);
              v673 = v376;
              if (v376)
              {
                goto LABEL_322;
              }

              v378 = v377;

              v240 = v681;
            }

            else
            {
              v285 = swift_slowAlloc();

              v388 = v673;
              v378 = sub_1BB641B04(v285, v373, v368, v370);

              v389 = &v693;
              v673 = v388;
              if (v388)
              {
                goto LABEL_323;
              }

              MEMORY[0x1BFB122F0](v285, -1, -1);
            }

            v365 &= v365 - 1;
            v379 = v378[2];

            if (v379)
            {
            }

            else
            {
              v380 = sub_1BB6A1320(v370);
              v382 = v381;

              if (v382)
              {
                v383 = v686;
                v384 = swift_isUniquelyReferenced_nonNull_native();
                v692[0] = v383[6];
                v385 = v692[0];
                v383[6] = 0x8000000000000000;
                sub_1BB63F708(v384, *(v385 + 24));
                v386 = v692[0];

                sub_1BB63F250(v380, v386, v387);
                v383[6] = v386;
              }
            }
          }

          v368 = v605;
          while (1)
          {
            v369 = v367 + 1;
            if (__OFADD__(v367, 1))
            {
              goto LABEL_318;
            }

            if (v369 >= v366)
            {
              break;
            }

            v365 = *(v361 + 8 * v369);
            ++v367;
            if (v365)
            {
              v367 = v369;
              goto LABEL_170;
            }
          }

          v390 = v686[6];
          v391 = v390 + 64;
          v392 = 1 << *(v390 + 32);
          v393 = -1;
          if (v392 < 64)
          {
            v393 = ~(-1 << v392);
          }

          v394 = v393 & *(v390 + 64);
          v395 = (v392 + 63) >> 6;
          v685 = v602 + 48;
          v672 = (v602 + 32);
          v682 = (v602 + 8);
          v688 = v390;

          v397 = 0;
LABEL_183:
          v398 = v601;
          if (!v394)
          {
            goto LABEL_185;
          }

          do
          {
            v399 = v397;
LABEL_188:
            v400 = (v399 << 9) | (8 * __clz(__rbit64(v394)));
            v401 = *(*(v688 + 48) + v400);
            v402 = *(*(v688 + 56) + v400);
            v692[0] = v401;
            MEMORY[0x1EEE9AC00](v396);
            *(&v596 - 2) = v692;

            v403 = v673;
            v404 = sub_1BB634C2C(sub_1BB644860, (&v596 - 4), v684);
            v673 = v403;
            v405 = 1.0;
            v406 = v670;
            if ((v404 & 1) != 0 || (v407 = v637, , v408 = *(sub_1BB64298C(v401, v407) + 2), , v405 = 0.0, v408 == 2))
            {
              v409 = v667;
              (*v676)(v667, v668, v406);
              (*v671)(v409, 0, 1, v406);
              sub_1BB6ABB40(0, 1, v409, v405);
              sub_1BB598308(v409, &qword_1EBC5C050, &qword_1BB6BD580);
            }

            v394 &= v394 - 1;
            v410 = v398;
            sub_1BB5982A0(v402 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, v398, &qword_1EBC5C050, &qword_1BB6BD580);
            v411 = (*v685)(v398, 1, v406);
            v240 = v681;
            if (v411 != 1)
            {
              v412 = v600;
              (*v672)(v600, v410, v406);
              sub_1BB6BA744();
              if (*(v686[2] + 16) < v413)
              {
                sub_1BB63EB44(v401);

                v396 = (*v682)(v412, v406);
              }

              else
              {
                (*v682)(v412, v406);
              }

              v397 = v399;
              goto LABEL_183;
            }

            v396 = sub_1BB598308(v398, &qword_1EBC5C050, &qword_1BB6BD580);
            v397 = v399;
          }

          while (v394);
          while (1)
          {
LABEL_185:
            v399 = v397 + 1;
            if (__OFADD__(v397, 1))
            {
              goto LABEL_319;
            }

            if (v399 >= v395)
            {
              break;
            }

            v394 = *(v391 + 8 * v399);
            ++v397;
            if (v394)
            {
              goto LABEL_188;
            }
          }

          v414 = v686;
          v415 = *(v686[2] + 56);

          sub_1BB60C238(v610, v607, v414, v415);
          v417 = v416;
          v691 = MEMORY[0x1E69E7CC8];
          v690 = MEMORY[0x1E69E7CD0];
          v414[5] = MEMORY[0x1E69E7CD0];

          v418 = *(v417 + 16);
          if (v418)
          {
            break;
          }

          v475 = MEMORY[0x1E69E7CD0];
        }

        v419 = (*(v598 + 80) + 32) & ~*(v598 + 80);
        v658 = v417;
        v420 = v417 + v419;
        v671 = (v599 + 48);
        v667 = *(v633 + 48);
        v682 = (v669 + 56);
        v688 = v624 + 48;
        v666 = *(v633 + 64);
        *&v665 = *(v598 + 72);
        *&v664 = v599 + 56;
        do
        {
          v680 = v418;
          v678 = v420;
          v425 = v626;
          sub_1BB5982A0(v420, v626, &qword_1EBC5C468, &unk_1BB6C4F80);
          v426 = *(v425 + v666);
          v427 = v633;
          v428 = *(v633 + 48);
          v429 = *(v633 + 64);
          v430 = v640;
          sub_1BB60DF90(v425, v640, &qword_1EBC5C478, &qword_1BB6C0830);
          sub_1BB60DF90(&v667[v425], v430 + v428, &qword_1EBC5C478, &qword_1BB6C0830);
          *(v430 + v429) = v426;
          v431 = v627;
          sub_1BB5982A0(v430, v627, &qword_1EBC5C468, &unk_1BB6C4F80);
          v432 = *(v427 + 48);
          v433 = v647;
          sub_1BB60DF90(v431, v647, &qword_1EBC5C478, &qword_1BB6C0830);
          sub_1BB598308(v431 + v432, &qword_1EBC5C478, &qword_1BB6C0830);
          sub_1BB5982A0(v430, v431, &qword_1EBC5C468, &unk_1BB6C4F80);
          v434 = v645;
          sub_1BB60DF90(v431 + *(v427 + 48), v645, &qword_1EBC5C478, &qword_1BB6C0830);
          sub_1BB598308(v431, &qword_1EBC5C478, &qword_1BB6C0830);
          v435 = v632;
          sub_1BB63DA78(v433, v434, v632);
          v436 = v635;
          if ((*v671)(v435, 1, v635) == 1)
          {
            sub_1BB598308(v435, &qword_1EBC5D7E0, &unk_1BB6C4F70);
            v437 = v676;
            v438 = v646;
            v439 = v670;
            (*v676)(v646, v668, v670);
            sub_1BB6BA834();
            v440 = v687;
          }

          else
          {
            v441 = v618;
            sub_1BB6448B8(v435, v618, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            v438 = v646;
            sub_1BB6448B8(v441, v646, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            v439 = v670;
            v440 = v687;
            v437 = v676;
          }

          v442 = *(v436 + 20);
          v443 = *v440;
          v444 = v674;
          (*v440)(v674, v438 + v442, v240);
          v445 = v683;
          sub_1BB5AD188(v683, v444);
          (*v689)(v445, v240);
          (*v437)(v639, v438, v439);
          v677 = v442;
          v446 = v641;
          v443(v641, v438 + v442, v240);
          v447 = *v682;
          (*v682)(v446, 0, 1, v240);
          v448 = v628;
          sub_1BB5982A0(v647, v628, &qword_1EBC5C478, &qword_1BB6C0830);
          v449 = v657;
          v685 = *v688;
          if ((v685)(v448, 1, v657) == 1)
          {
            sub_1BB598308(v448, &qword_1EBC5C478, &qword_1BB6C0830);
            v450 = 1;
            v451 = v629;
            v452 = v642;
          }

          else
          {
            v452 = v642;
            v443(v642, v448 + *(v449 + 20), v240);
            sub_1BB644800(v448, type metadata accessor for DKPersonGroupFilter.Track);
            v450 = 0;
            v451 = v629;
          }

          v453 = v643;
          v447(v452, v450, 1, v240);
          sub_1BB5982A0(v645, v451, &qword_1EBC5C478, &qword_1BB6C0830);
          v454 = (v685)(v451, 1, v449);
          v675 = v443;
          if (v454 == 1)
          {
            sub_1BB598308(v451, &qword_1EBC5C478, &qword_1BB6C0830);
            v455 = 1;
          }

          else
          {
            v443(v453, v451 + *(v449 + 20), v240);
            sub_1BB644800(v451, type metadata accessor for DKPersonGroupFilter.Track);
            v455 = 0;
          }

          v447(v453, v455, 1, v240);
          v456 = v659;
          v457 = *(v659 + 28);
          v458 = v638;
          v447(v638 + v457, 1, 1, v240);
          v459 = v456[8];
          v447(v458 + v459, 1, 1, v240);
          v460 = v456[9];
          v447(v458 + v460, 1, 1, v240);
          v461 = v456[10];
          *v458 = -1;
          *(v458 + 8) = 1.0 - v426;
          (*v672)(v458 + v456[6], v639, v670);
          sub_1BB5BA0DC(v641, v458 + v457, &qword_1EBC5C370, &unk_1BB6BE3F0);
          sub_1BB5BA0DC(v642, v458 + v459, &qword_1EBC5C370, &unk_1BB6BE3F0);
          sub_1BB5BA0DC(v643, v458 + v460, &qword_1EBC5C370, &unk_1BB6BE3F0);
          *(v458 + v461) = MEMORY[0x1E69E7CC0];
          v462 = v654;
          sub_1BB644798(v458, v654, type metadata accessor for DKPersonGroup);
          v463 = v691;
          v464 = swift_isUniquelyReferenced_nonNull_native();
          v692[0] = v463;
          v465 = v646;
          sub_1BB59997C(v462, v646 + v677, v464);
          v691 = v692[0];

          v466 = v630;
          sub_1BB5982A0(v647, v630, &qword_1EBC5C478, &qword_1BB6C0830);
          if ((v685)(v466, 1, v449) == 1)
          {
            sub_1BB598308(v466, &qword_1EBC5C478, &qword_1BB6C0830);
          }

          else
          {
            v467 = v616;
            sub_1BB6448B8(v466, v616, type metadata accessor for DKPersonGroupFilter.Track);
            v468 = *(v449 + 20);
            v469 = v619;
            sub_1BB644798(v465, v619, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            v470 = v686;
            v471 = swift_isUniquelyReferenced_nonNull_native();
            v692[0] = v470[3];
            v470[3] = 0x8000000000000000;
            sub_1BB5997A8(v469, v467 + v468, v471);
            v449 = v657;
            sub_1BB644800(v467, type metadata accessor for DKPersonGroupFilter.Track);
            v470[3] = v692[0];
          }

          v472 = v631;
          v473 = v645;
          sub_1BB5982A0(v645, v631, &qword_1EBC5C478, &qword_1BB6C0830);
          v474 = (v685)(v472, 1, v449);
          v240 = v681;
          if (v474 == 1)
          {
            sub_1BB644800(v646, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            sub_1BB598308(v473, &qword_1EBC5C478, &qword_1BB6C0830);
            sub_1BB598308(v647, &qword_1EBC5C478, &qword_1BB6C0830);
            sub_1BB598308(v640, &qword_1EBC5C468, &unk_1BB6C4F80);
            sub_1BB644800(v638, type metadata accessor for DKPersonGroup);
            sub_1BB598308(v472, &qword_1EBC5C478, &qword_1BB6C0830);
          }

          else
          {
            v421 = v617;
            sub_1BB6448B8(v472, v617, type metadata accessor for DKPersonGroupFilter.Track);
            v422 = v683;
            (v675)(v683, v421 + *(v449 + 20), v240);
            v423 = v646;
            v424 = v620;
            sub_1BB644798(v646, v620, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            (*v664)(v424, 0, 1, v635);
            sub_1BB634680(v424, v422);
            sub_1BB644800(v421, type metadata accessor for DKPersonGroupFilter.Track);
            sub_1BB644800(v423, type metadata accessor for DKPersonGroupFilter.StampedPerson);
            sub_1BB598308(v473, &qword_1EBC5C478, &qword_1BB6C0830);
            sub_1BB598308(v647, &qword_1EBC5C478, &qword_1BB6C0830);
            sub_1BB598308(v640, &qword_1EBC5C468, &unk_1BB6C4F80);
            sub_1BB644800(v638, type metadata accessor for DKPersonGroup);
          }

          v420 = v678 + v665;
          v418 = (v680 - 1);
        }

        while (v680 != 1);
      }
    }

    v688 = v276;
    v689 = v275;
    (v265)(v263);
    sub_1BB644620(&qword_1EBC5C298, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    if (sub_1BB6BABE4())
    {
      v278 = *v266;
      (*v266)(v263, v240);
      goto LABEL_107;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF60, &unk_1BB6C2950);
    v687 = swift_allocObject();
    v279 = v266;
    v280 = v687 + v678;
    (v265)(v687 + v678, v238, v240);
    (v265)(v280 + v273, v263, v240);
    v281 = sub_1BB644620(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v692[0] = MEMORY[0x1BFB10E40](2, v240, v281);
    v282 = v683;
    (v265)(v683, v280, v240);
    v283 = v674;
    sub_1BB5AD188(v674, v282);
    v284 = *v279;
    (*v279)(v283, v240);
    (v265)(v282, v280 + v273, v240);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1BB5AD188(v283, v282);
    v687 = v284;
    v284(v283, v240);
    v285 = v692[0];
    v286 = v684[2];
    v287 = v684[3];

    if (v286 >= v287 >> 1)
    {
      v684 = sub_1BB59D788((v287 > 1), v286 + 1, 1, v684);
    }

    v288 = v684;
    v684[2] = v286 + 1;
    v288[v286 + 4] = v285;
    v263 = v680;
    v238 = v682;
    v265 = v679;
    v277 = v677;
    if (*(v686[6] + 16))
    {

      sub_1BB6A1320(v285);
      if (v289)
      {

        v266 = v672;
        v278 = v687;
        (v687)(v263, v240);
        v273 = v675;
        goto LABEL_107;
      }
    }

    v290 = v686;
    v291 = v686[2];
    v292 = v291[6];
    v293 = v291[3];
    v294 = v291[4];
    v295 = v667;
    v296 = v670;
    (*v666)(v667, v668, v670);
    v297 = *v665;
    (*v665)(v295, 0, 1, v296);
    type metadata accessor for DKSmoothingFilter(0);
    v298 = swift_allocObject();
    *(v298 + 48) = v664;
    v299 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
    v297(v298 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v296);
    v300 = v298 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
    *v300 = 0;
    *(v300 + 8) = 1;
    v301 = v290;
    v302 = v298 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
    *v302 = 0;
    *(v302 + 8) = 1;
    *(v298 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
    *(v298 + 16) = v293;
    *(v298 + 24) = v294;
    *(v298 + 32) = 256;
    *(v298 + 40) = v292;
    sub_1BB5BA0DC(v295, v298 + v299, &qword_1EBC5C050, &qword_1BB6BD580);
    *v300 = 0;
    *(v300 + 8) = 1;
    *v302 = 0;
    *(v302 + 8) = 1;
    v240 = swift_isUniquelyReferenced_nonNull_native();
    v692[0] = v301[6];
    v303 = v692[0];
    v301[6] = 0x8000000000000000;
    v305 = sub_1BB6A1320(v285);
    v306 = *(v303 + 16);
    v307 = (v304 & 1) == 0;
    v308 = v306 + v307;
    if (__OFADD__(v306, v307))
    {
      goto LABEL_311;
    }

    v309 = v304;
    if (*(v303 + 24) >= v308)
    {
      v263 = v680;
      if ((v240 & 1) == 0)
      {
        sub_1BB5EA2F0();
      }

      goto LABEL_122;
    }

    sub_1BB5E6D1C(v308, v240);
    v310 = sub_1BB6A1320(v285);
    v263 = v680;
    if ((v309 & 1) != (v311 & 1))
    {
      break;
    }

    v305 = v310;
LABEL_122:
    v240 = v681;
    if (v309)
    {

      v312 = v692[0];
      *(*(v692[0] + 56) + 8 * v305) = v298;

      v266 = v672;
      (v687)(v263, v240);
    }

    else
    {
      v312 = v692[0];
      *(v692[0] + 8 * (v305 >> 6) + 64) |= 1 << v305;
      *(v312[6] + 8 * v305) = v285;
      *(v312[7] + 8 * v305) = v298;
      v266 = v672;
      (v687)(v263, v240);
      v313 = v312[2];
      v314 = __OFADD__(v313, 1);
      v315 = v313 + 1;
      if (v314)
      {
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
      }

      v312[2] = v315;
    }

    v686[6] = v312;

    v238 = v682;
    v273 = v675;
    v278 = v687;
LABEL_107:
    v275 = v689 + 1;
    v276 = v688 + v273;
    if (v685 == (v689 + 1))
    {

      v265 = v669;
      v271 = v278;
LABEL_102:
      v272 = v658 + 1;
      v271(v238, v240);
      v270 = v272;
      v269 = v648;
      if (v272 == v650)
      {
        goto LABEL_97;
      }

      goto LABEL_103;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE28, &qword_1BB6BD430);
  sub_1BB6BB874();
  __break(1u);
LABEL_322:

  v595 = v673;
  swift_willThrow();

  __break(1u);
LABEL_323:

  result = MEMORY[0x1BFB122F0](v285, -1, -1);
  __break(1u);
  return result;
}