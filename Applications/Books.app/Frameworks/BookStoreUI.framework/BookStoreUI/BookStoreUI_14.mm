uint64_t sub_1DBA24(char *__dst, char *__src, char *a3, char *a4)
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
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = v6[8] < v4[8];
      if (*v6 != *v4)
      {
        v18 = *v4 < *v6;
      }

      if (v18)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v19 = 16 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_26:
    v20 = v6 - 16;
    v5 -= 16;
    v21 = v15;
    do
    {
      v22 = *(v21 - 16);
      v21 -= 16;
      v23 = v5 + 16;
      v24 = *(v6 - 2);
      v25 = v24 < v22;
      v26 = *(v21 + 8) < *(v6 - 8);
      if (v22 != v24)
      {
        v26 = v25;
      }

      if (v26)
      {
        if (v23 != v6)
        {
          *v5 = *v20;
        }

        if (v15 <= v4 || (v6 -= 16, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v23 != v15)
      {
        *v5 = *v21;
      }

      v5 -= 16;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_39:
  v27 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t getEnumTagSinglePayload for ReaderTypeFramesFactory.ReaderTypeScore(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReaderTypeFramesFactory.ReaderTypeScore(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_1DBCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5790;
  if (!qword_3C5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5790);
  }

  return result;
}

unint64_t sub_1DBD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5798;
  if (!qword_3C5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5798);
  }

  return result;
}

void Page.LifecycleEventKind.init(rawValue:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_389918;
  v8._object = a2;
  v6 = sub_2C63E8(v5, v8);

  v7 = 5;
  if (v6 < 5)
  {
    v7 = v6;
  }

  *a3 = v7;
}

uint64_t Page.LifecycleEventKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726165707061;
  v3 = 0x636974796C616E61;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x7070417473726966;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6165707061736964;
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

Swift::Int sub_1DBEC0()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

double sub_1DBFBC(uint64_t a1)
{
  sub_2C5958();

  return result;
}

Swift::Int sub_1DC0A4(uint64_t a1)
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

void sub_1DC1A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x726165707061;
  v5 = 0xEF72616570704173;
  v6 = 0x636974796C616E61;
  v7 = 0x8000000000300750;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x7070417473726966;
    v7 = 0xEB00000000726165;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6165707061736964;
    v3 = 0xE900000000000072;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DC310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DC4DC(a1, a2, a3);

  return RawRepresentable<>.codingKey.getter(a1, a2, v5);
}

uint64_t sub_1DC364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DC4DC(a1, a2, a3);

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

uint64_t Page.LifecycleInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1DC43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C57A0;
  if (!qword_3C57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C57A0);
  }

  return result;
}

unint64_t sub_1DC4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5870;
  if (!qword_3C5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5870);
  }

  return result;
}

uint64_t ReviewBrickComponentModel.restrictLineHeight.getter()
{
  type metadata accessor for ReviewBrickComponentModel(0);
  sub_6620C(&qword_3C5878, &qword_2F59F0);
  sub_2C1988();
  return v1;
}

uint64_t type metadata accessor for ReviewBrickComponentModel(uint64_t a1)
{
  result = qword_3C5938;
  if (!qword_3C5938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1DC634@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ReviewBrickComponentModel(0);
  sub_6620C(&qword_3C5878, &qword_2F59F0);
  result = sub_2C1988();
  *a1 = v3;
  return result;
}

uint64_t sub_1DC69C(char *a1)
{
  type metadata accessor for ReviewBrickComponentModel(0);
  sub_6620C(&qword_3C5878, &qword_2F59F0);
  return sub_2C1998();
}

uint64_t ReviewBrickComponentModel.restrictLineHeight.setter(char a1)
{
  type metadata accessor for ReviewBrickComponentModel(0);
  sub_6620C(&qword_3C5878, &qword_2F59F0);
  return sub_2C1998();
}

uint64_t (*ReviewBrickComponentModel.restrictLineHeight.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReviewBrickComponentModel(0);
  sub_6620C(&qword_3C5878, &qword_2F59F0);
  *(v3 + 32) = sub_2C1978();
  return sub_1DC7F0;
}

void sub_1DC7F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ReviewBrickComponentModel.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReviewBrickComponentModel(0) + 36));

  return v1;
}

uint64_t ReviewBrickComponentModel.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReviewBrickComponentModel(0) + 40));

  return v1;
}

uint64_t ReviewBrickComponentModel.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReviewBrickComponentModel(0) + 44));

  return v1;
}

uint64_t ReviewBrickComponentModel.footer.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReviewBrickComponentModel(0) + 48));

  return v1;
}

uint64_t ReviewBrickComponentModel.thanksForVotingImageName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReviewBrickComponentModel(0) + 68));

  return v1;
}

uint64_t ReviewBrickComponentModel.thanksForVotingTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReviewBrickComponentModel(0) + 72));

  return v1;
}

uint64_t sub_1DCB90(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0x7465737361;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x656C746974;
      break;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      result = 2036625250;
      break;
    case 8:
      result = 0x7265746F6F66;
      break;
    case 9:
      result = 0x676E69746172;
      break;
    case 10:
      result = 0x634165746F567075;
      break;
    case 11:
      result = 0x65746F566E776F64;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCD70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEDDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DCDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DDAA0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1DCDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DDAA0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void ReviewBrickComponentModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v3 - 8);
  v74 = &v72 - v4;
  v5 = sub_6620C(&qword_3C5878, &qword_2F59F0);
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v7 = &v72 - v6;
  v77 = sub_6620C(&qword_3C5888, &qword_2F2EC0);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v9 = &v72 - v8;
  v10 = type metadata accessor for ReviewBrickComponentModel(0);
  __chkstk_darwin(v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  *&v90 = 0;
  v88 = 0u;
  v89 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v87 = v12 + 40;
  sub_A9708(&v88, (v12 + 40), &unk_3BDC90, &unk_2E5620);
  sub_2BF848();
  v86 = sub_2C1AE8();
  v13 = *(v10 + 28);
  sub_2C08A8();
  sub_2C0888();
  v83 = v13;
  sub_2C19A8();
  v81 = v10;
  v14 = *(v10 + 32);
  v15 = sub_2C5018();
  v16 = *(*(v15 - 8) + 56);
  v82 = v14;
  v79 = v12;
  v16(&v12[v14], 1, 1, v15);
  v17 = a1[3];
  v78 = a1;
  v18 = sub_72084(a1, v17);
  sub_1DDAA0(v18, v19, v20);
  v76 = v9;
  v21 = v80;
  sub_2C67A8();
  if (v21)
  {
    v80 = v21;
    v23 = v81;
    v24 = v79;
    sub_68CD0(v78);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v77) = 0;
  }

  else
  {
    v22 = v7;
    sub_6620C(&qword_3BE378, &qword_2E5DB0);
    v93 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378, &qword_2E5DB0, &protocol conformance descriptor for CodeAnyHashable<A>);
    sub_2C64A8();
    v31 = v89;
    v32 = v79;
    *v79 = v88;
    v32[1] = v31;
    *(v32 + 4) = v90;
    sub_6620C(&qword_3BE370, &qword_2E7520);
    v93 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370, &qword_2E7520, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_2C64A8();
    v33 = v81;
    sub_A9708(&v88, v87, &qword_3BE370, &qword_2E7520);
    sub_6620C(&qword_3C5898, &qword_2F2EC8);
    v93 = 2;
    sub_72B74(&qword_3C58A0, &qword_3C5898, &qword_2F2EC8, &protocol conformance descriptor for _MResourceDecoder_OrNil<A>);
    sub_2C64A8();

    v86 = v88;
    *(v32 + 10) = v88;
    LOBYTE(v88) = 3;
    sub_2C64B8();
    (*(v84 + 40))(v32 + v83, v22, v85);
    LOBYTE(v88) = 4;
    sub_1DE7B4(&qword_3BE3A0, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
    v34 = v74;
    sub_2C6458();
    sub_A9708(v34, v32 + v82, &qword_3BDF58, &unk_2E5B70);
    LOBYTE(v88) = 5;
    v35 = sub_2C6468();
    v36 = (v32 + v33[9]);
    *v36 = v35;
    v36[1] = v37;
    LOBYTE(v88) = 6;
    v38 = sub_2C6418();
    v39 = (v32 + v33[10]);
    *v39 = v38;
    v39[1] = v40;
    LOBYTE(v88) = 7;
    v41 = sub_2C6468();
    v42 = (v32 + v81[11]);
    *v42 = v41;
    v42[1] = v43;
    LOBYTE(v88) = 8;
    v44 = sub_2C6468();
    v80 = 0;
    v45 = (v32 + v81[12]);
    *v45 = v44;
    v45[1] = v46;
    LOBYTE(v88) = 9;
    v47 = sub_2C6488();
    v80 = 0;
    *(v79 + v81[13]) = v50;
    v93 = 10;
    sub_1DDAF4(v47, v48, v49);
    v51 = v80;
    sub_2C6458();
    v80 = v51;
    if (v51)
    {
      (*(v75 + 8))(v76, v77);
      v29 = 0;
      v30 = 0;
      LODWORD(v77) = 0;
      v25 = 1;
      v26 = 1;
      v27 = 1;
      v28 = 1;
    }

    else
    {
      v52 = v79 + v81[14];
      v53 = v91;
      *(v52 + 2) = v90;
      *(v52 + 3) = v53;
      *(v52 + 8) = v92;
      v54 = v89;
      *v52 = v88;
      *(v52 + 1) = v54;
      v93 = 11;
      v55 = v80;
      sub_2C6458();
      v80 = v55;
      if (v55)
      {
        (*(v75 + 8))(v76, v77);
        v30 = 0;
        LODWORD(v77) = 0;
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
      }

      else
      {
        v56 = v79 + v81[15];
        v57 = v91;
        *(v56 + 2) = v90;
        *(v56 + 3) = v57;
        *(v56 + 8) = v92;
        v58 = v89;
        *v56 = v88;
        *(v56 + 1) = v58;
        v93 = 12;
        v59 = v80;
        sub_2C6458();
        v80 = v59;
        if (!v59)
        {
          v60 = v79 + v81[16];
          v61 = v91;
          *(v60 + 2) = v90;
          *(v60 + 3) = v61;
          *(v60 + 8) = v92;
          v62 = v89;
          *v60 = v88;
          *(v60 + 1) = v62;
          LOBYTE(v88) = 13;
          v63 = sub_2C6418();
          v80 = 0;
          v64 = (v79 + v81[17]);
          *v64 = v63;
          v64[1] = v65;
          LOBYTE(v88) = 14;
          v66 = sub_2C6418();
          v80 = 0;
          v67 = v66;
          v69 = v68;
          (*(v75 + 8))(v76, v77);
          v70 = v79;
          v71 = (v79 + v81[18]);
          *v71 = v67;
          v71[1] = v69;
          sub_1DDB48(v70, v73);
          sub_68CD0(v78);
          sub_1DDBAC(v70);
          return;
        }

        (*(v75 + 8))(v76, v77);
        LODWORD(v77) = 0;
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
        v30 = 1;
      }
    }

    v23 = v81;
    v24 = v79;
    sub_68CD0(v78);
    sub_69198(v24, &qword_3BE378, &qword_2E5DB0);
  }

  sub_69198(v87, &qword_3BE370, &qword_2E7520);

  (*(v84 + 8))(v24 + v83, v85);
  sub_69198(v24 + v82, &qword_3BDF58, &unk_2E5B70);
  if (v25)
  {

    if (!v26)
    {
LABEL_6:
      if (!v27)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  if (!v27)
  {
LABEL_7:
    if (!v28)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (!v28)
  {
LABEL_8:
    if (!v29)
    {
      goto LABEL_9;
    }

LABEL_16:
    sub_69198(v24 + v23[14], &qword_3C5880, &qword_2F2EB8);
    if (!v30)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_15:

  if (v29)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (!v30)
  {
    goto LABEL_10;
  }

LABEL_17:
  sub_69198(v24 + v23[15], &qword_3C5880, &qword_2F2EB8);
LABEL_10:
  if (v77)
  {
  }
}

unint64_t sub_1DDAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5890;
  if (!qword_3C5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5890);
  }

  return result;
}

unint64_t sub_1DDAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C58A8;
  if (!qword_3C58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C58A8);
  }

  return result;
}

uint64_t sub_1DDB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewBrickComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DDBAC(uint64_t a1)
{
  v2 = type metadata accessor for ReviewBrickComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VoteReviewAction.action.setter(__int128 *a1)
{
  sub_68CD0((v1 + 32));

  return sub_68D1C(a1, v1 + 32);
}

uint64_t sub_1DDD04()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E6567616D69;
  }
}

uint64_t sub_1DDD5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF274(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DDD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DE0A4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1DDDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DE0A4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void VoteReviewAction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3C58B8, &qword_2F2ED8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  v9 = sub_72084(a1, a1[3]);
  sub_1DE0A4(v9, v10, v11);
  sub_2C67A8();
  if (v2)
  {
    sub_68CD0(a1);
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    v16[0] = sub_2C6468();
    v16[1] = v12;
    LOBYTE(v14[0]) = 1;
    v16[2] = sub_2C6468();
    v16[3] = v13;
    sub_6620C(&qword_3C58B0, &qword_2F2ED0);
    v20 = 2;
    sub_72B74(&qword_3C58C8, &qword_3C58B0, &qword_2F2ED0, &protocol conformance descriptor for CodeByKind<A>);
    sub_2C64A8();
    (*(v6 + 8))(v8, v5);
    v17 = v14[0];
    v18 = v14[1];
    v19 = v15;
    sub_1DE0F8(v16, a2);
    sub_68CD0(a1);
    sub_1DE130(v16);
  }
}

unint64_t sub_1DE0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C58C0;
  if (!qword_3C58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C58C0);
  }

  return result;
}

double sub_1DE250@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_6932C(a1, v5, &qword_3BE378, &qword_2E5DB0);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1DE2A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_6932C(a1 + 40, v5, &qword_3BE370, &qword_2E7520);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1DE384(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3C5878, &qword_2F59F0);
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
      v13 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DE4D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3C5878, &qword_2F59F0);
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
      v13 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1DE610(uint64_t a1)
{
  sub_A62E4();
  if (v1 <= 0x3F)
  {
    sub_A6360(319);
    if (v2 <= 0x3F)
    {
      sub_1DE85C(319, &qword_3C5948, &type metadata accessor for MAsset, &type metadata accessor for _MResourceDecoder_OrNil);
      if (v3 <= 0x3F)
      {
        sub_1DE7FC(319);
        if (v4 <= 0x3F)
        {
          sub_1DE85C(319, &qword_3BE2D8, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_E1018(319, &qword_3BE2E0, &type metadata for String);
            if (v6 <= 0x3F)
            {
              sub_E1018(319, &unk_3C5958, &type metadata for VoteReviewAction);
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

uint64_t sub_1DE7B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DE7FC(uint64_t a1)
{
  if (!qword_3C5950)
  {
    sub_2C08A8();
    v1 = sub_2C19B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3C5950);
    }
  }
}

void sub_1DE85C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ReviewBrickComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReviewBrickComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DEA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C59C0;
  if (!qword_3C59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C59C0);
  }

  return result;
}

unint64_t sub_1DEA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C59C8;
  if (!qword_3C59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C59C8);
  }

  return result;
}

unint64_t sub_1DEAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C59D0;
  if (!qword_3C59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C59D0);
  }

  return result;
}

unint64_t sub_1DEB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C59D8;
  if (!qword_3C59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C59D8);
  }

  return result;
}

unint64_t sub_1DEB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C59E0;
  if (!qword_3C59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C59E0);
  }

  return result;
}

unint64_t sub_1DEBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C59E8;
  if (!qword_3C59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C59E8);
  }

  return result;
}

uint64_t sub_1DEC40@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_2C0D88();
  __chkstk_darwin(v4 - 8);
  v5 = *(v2 + 80);
  if (v5)
  {
    v6 = v5;
    sub_2BF768();

    if (v11)
    {
      sub_68D1C(&v10, v12);
      sub_68D1C(v12, v13);
      sub_72084(v13, v13[3]);
      sub_2BF9F8();
      sub_2C0D78();
      sub_2C0DA8();
      v7 = sub_2C0DB8();
      (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
      return sub_68CD0(v13);
    }

    sub_69198(&v10, &unk_3C2550, &qword_2E4E40);
  }

  v9 = sub_2C0DB8();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t sub_1DEDDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7465737361 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000306CE0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x634165746F567075 && a2 == 0xEC0000006E6F6974 || (sub_2C65B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65746F566E776F64 && a2 == 0xEE006E6F69746341 || (sub_2C65B8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000306D00 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000306D20 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000306D40 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1DF274(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065;
  if (v4 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t sub_1DF3EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3C5310, &qword_2F26F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4 - 8];
  v6 = sub_2C0538();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = sub_6620C(&qword_3C5AA0, &unk_2F34E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22[-v11 - 8];
  v13 = sub_2C0578();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_6932C(v1 + 40, v22, &qword_3BE370, &qword_2E7520);
  if (!v23)
  {
    sub_69198(v22, &unk_3BDC90, &unk_2E5620);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_6;
  }

  sub_6620C(&qword_3BC248, &qword_2E2F20);
  v17 = swift_dynamicCast();
  (*(v14 + 56))(v12, v17 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_6:
    sub_69198(v12, &qword_3C5AA0, &unk_2F34E0);
    v18 = 1;
    goto LABEL_7;
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_2C0468();
  sub_6620C(&qword_3C48F8, &unk_2F19B0);
  if (swift_dynamicCast())
  {
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
    sub_2C0528();
    (*(v7 + 8))(v9, v6);
    (*(v14 + 8))(v16, v13);
    v18 = 0;
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    v18 = 1;
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_69198(v5, &qword_3C5310, &qword_2F26F8);
  }

LABEL_7:
  v19 = sub_2C2338();
  return (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
}

uint64_t sub_1DF828@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = sub_2C1798();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v38 = sub_6620C(&qword_3C5AA8, &qword_2F34F0);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v31 - v8;
  v10 = type metadata accessor for SingleBookWidgetComponentModel(0);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v42 = v12 + 40;
  sub_A9708(&v43, (v12 + 40), &unk_3BDC90, &unk_2E5620);
  v13 = *(v10 + 24);
  v14 = sub_2C5018();
  v15 = *(*(v14 - 8) + 56);
  v40 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v41 = a1;
  v17 = sub_72084(a1, v16);
  sub_1E0540(v17, v18, v19);
  v37 = v9;
  v20 = v39;
  sub_2C67A8();
  if (v20)
  {
    v22 = v40;
    sub_68CD0(v41);
    sub_69198(v42, &qword_3BE370, &qword_2E7520);
    return sub_69198(&v12[v22], &qword_3BF898, &unk_2EA240);
  }

  else
  {
    v39 = v7;
    v31 = v10;
    v32 = v4;
    v21 = v35;
    sub_6620C(&qword_3BE378, &qword_2E5DB0);
    v46 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378, &qword_2E5DB0, &protocol conformance descriptor for CodeAnyHashable<A>);
    sub_2C64A8();
    v23 = v44;
    *v12 = v43;
    *(v12 + 1) = v23;
    *(v12 + 4) = v45;
    sub_6620C(&qword_3BE370, &qword_2E7520);
    v46 = 1;
    v24 = v38;
    sub_72B74(&qword_3BE398, &qword_3BE370, &qword_2E7520, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    v25 = v37;
    sub_2C64A8();
    v26 = v40;
    sub_A9708(&v43, v42, &qword_3BE370, &qword_2E7520);
    LOBYTE(v43) = 2;
    sub_F2F40();
    v27 = v39;
    sub_2C64A8();
    v28 = v36;
    sub_A9708(v27, &v12[v26], &qword_3BF898, &unk_2EA240);
    LOBYTE(v43) = 3;
    sub_1E0654(&qword_3C5AB8, &type metadata accessor for SingleBookLockupModel, &protocol conformance descriptor for SingleBookLockupModel);
    v29 = v32;
    sub_2C64A8();
    (*(v28 + 8))(v25, v24);
    (*(v33 + 32))(&v12[*(v31 + 28)], v29, v21);
    sub_1E0594(v12, v34);
    sub_68CD0(v41);
    return sub_1E05F8(v12);
  }
}

uint64_t sub_1DFDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E0540(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1DFE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E0540(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1DFEA4(uint64_t a1)
{
  v2 = sub_1E0654(&qword_3C5AC0, type metadata accessor for SingleBookWidgetComponentModel, &unk_2F33E0);

  return LibraryAssetStateRequiring.assetIDsToObserveState.getter(a1, v2);
}

uint64_t sub_1DFF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898, &unk_2EA240);
  return sub_E1DC8(v7, a2);
}

uint64_t sub_1DFFC0()
{
  sub_6620C(&qword_3BC020, &qword_2E2DC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2E3F30;
  *(v0 + 56) = sub_2BECC8();
  *(v0 + 64) = sub_1E0654(&qword_3BF440, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  *(v0 + 72) = sub_1E0654(&qword_3BF448, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  sub_720C8((v0 + 32));
  sub_2BEC98();
  return v0;
}

uint64_t sub_1E00AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2C1798();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E01F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2C1798();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SingleBookWidgetComponentModel(uint64_t a1)
{
  result = qword_3C5A48;
  if (!qword_3C5A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E036C(uint64_t a1)
{
  sub_A62E4();
  if (v1 <= 0x3F)
  {
    sub_A6360(319);
    if (v2 <= 0x3F)
    {
      sub_F370C(319);
      if (v3 <= 0x3F)
      {
        sub_2C1798();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E0540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5AB0;
  if (!qword_3C5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5AB0);
  }

  return result;
}

uint64_t sub_1E0594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleBookWidgetComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E05F8(uint64_t a1)
{
  v2 = type metadata accessor for SingleBookWidgetComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E06B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5AC8;
  if (!qword_3C5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5AC8);
  }

  return result;
}

unint64_t sub_1E0708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5AD0;
  if (!qword_3C5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5AD0);
  }

  return result;
}

unint64_t sub_1E0760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5AD8;
  if (!qword_3C5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5AD8);
  }

  return result;
}

unint64_t sub_1E0818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5AE0;
  if (!qword_3C5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5AE0);
  }

  return result;
}

uint64_t sub_1E086C@<X0>(uint64_t a2@<X8>)
{
  v33[1] = a2;
  v2 = sub_2C4548();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BDED8, &qword_2E53A0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v33 - v8;
  v10 = sub_6620C(&qword_3C5AF0, &qword_2F36E8);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  sub_2C4538();
  v13 = sub_2C3768();
  type metadata accessor for DividerComponentModel(0);
  sub_2C24D8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v3 + 32))(v9, v5, v2);
  v22 = &v9[*(v7 + 44)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  LOBYTE(v2) = sub_2C3778();
  sub_2C24D8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1E0C34(v9, v12);
  v31 = &v12[*(v10 + 36)];
  *v31 = v2;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_1E0CA4();
  sub_2C3F88();
  return sub_1E0DEC(v12);
}

uint64_t sub_1E0AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E0818(a1, a2, a3);

  return sub_2BFD18();
}

unint64_t sub_1E0B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5AE8;
  if (!qword_3C5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5AE8);
  }

  return result;
}

uint64_t sub_1E0C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDED8, &qword_2E53A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0CA4()
{
  result = qword_3C5AF8;
  if (!qword_3C5AF8)
  {
    sub_718D4(&qword_3C5AF0, &qword_2F36E8);
    sub_1E0D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5AF8);
  }

  return result;
}

unint64_t sub_1E0D30()
{
  result = qword_3C5B00;
  if (!qword_3C5B00)
  {
    sub_718D4(&qword_3BDED8, &qword_2E53A0);
    sub_1E0F14(&qword_3C0F20, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5B00);
  }

  return result;
}

uint64_t sub_1E0DEC(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C5AF0, &qword_2F36E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E0E58()
{
  result = qword_3C5B08;
  if (!qword_3C5B08)
  {
    sub_718D4(&unk_3C5B10, &unk_2F36F0);
    sub_1E0CA4();
    sub_1E0F14(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5B08);
  }

  return result;
}

uint64_t sub_1E0F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RateAndReviewActionItem.init(data:context:tracker:figaroProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 152) = &type metadata for MenuStoreService;
  *(a5 + 160) = &protocol witness table for MenuStoreService;
  *(a5 + 168) = 22;
  sub_68D1C(a1, a5 + 40);
  sub_68D1C(a2, a5);
  *(a5 + 80) = a3;

  return sub_68D1C(a4, a5 + 88);
}

uint64_t RateAndReviewActionItem.isSupported.getter()
{
  v1 = v0;
  v2 = v0[8];
  v3 = v0[9];
  sub_72084(v0 + 5, v2);
  if ((*(v3 + 56))(v2, v3))
  {
    goto LABEL_12;
  }

  v4 = v0[8];
  v5 = v1[9];
  sub_72084(v1 + 5, v1[8]);
  ContextActionDataProtocol.selectionMode.getter(v4, v5, v24);
  if (v25 == 1)
  {
    sub_C4620(v24);
LABEL_12:
    v22 = 0;
    return v22 & 1;
  }

  sub_68D1C(v24, v26);
  v6 = v27;
  v7 = v28;
  sub_72084(v26, v27);
  (*(v7 + 288))(v6, v7);
  if (!v8 || (, v9 = v27, v10 = v28, sub_72084(v26, v27), (*(v10 + 16))(v9, v10) == 4) || (v11 = v27, v12 = v28, sub_72084(v26, v27), (*(v12 + 16))(v11, v12) == 5) || (v13 = v27, v14 = v28, sub_72084(v26, v27), ((*(v14 + 160))(v13, v14) & 1) == 0) || (v15 = v1[8], v16 = v1[9], sub_72084(v1 + 5, v15), ((*(v16 + 16))(v15, v16) & 1) == 0) || (v17 = v1[8], v18 = v1[9], sub_72084(v1 + 5, v17), ((*(v18 + 24))(v17, v18) & 1) == 0))
  {
    sub_68CD0(v26);
    goto LABEL_12;
  }

  v19 = v1[8];
  v20 = v1[9];
  sub_72084(v1 + 5, v19);
  v21 = (*(v20 + 32))(v19, v20);
  sub_68CD0(v26);
  v22 = v21 ^ 1;
  return v22 & 1;
}

uint64_t RateAndReviewActionItem.handle()()
{
  v1[12] = v0;
  sub_2C5C18();
  v1[13] = sub_2C5C08();
  v3 = sub_2C5BB8();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1E12C4, v3, v2);
}

uint64_t sub_1E12C4()
{
  v1 = v0[12];
  v2 = v1[8];
  v3 = v1[9];
  sub_72084(v1 + 5, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (!*(v4 + 16))
  {

LABEL_10:
    v21 = v0[1];

    return v21();
  }

  sub_691F8(v4 + 32, (v0 + 2));

  v5 = v0[5];
  v6 = v0[6];
  sub_72084(v0 + 2, v5);
  v7 = (*(v6 + 288))(v5, v6);
  v9 = v8;
  v0[16] = v7;
  v0[17] = v8;
  sub_68CD0(v0 + 2);
  if (!v9)
  {

    goto LABEL_10;
  }

  v10 = v1[8];
  v11 = v1[9];
  sub_72084(v1 + 5, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (*(v12 + 16))
  {
    sub_691F8(v12 + 32, (v0 + 7));

    v13 = v0[10];
    v14 = v0[11];
    sub_72084(v0 + 7, v13);
    v15 = (*(v14 + 16))(v13, v14);
    sub_68CD0(v0 + 7);
    if (v15 == 3)
    {
      v16 = v0[12];
      v17 = v16[19];
      v18 = v16[20];
      sub_72084(v16 + 16, v17);
      v23 = (*(v18 + 8) + **(v18 + 8));
      v19 = swift_task_alloc();
      v0[18] = v19;
      *v19 = v0;
      v19[1] = sub_1E1610;

      return v23(v7, v9, v17, v18);
    }
  }

  else
  {
  }

  v22 = swift_task_alloc();
  v0[20] = v22;
  *v22 = v0;
  v22[1] = sub_1E1938;

  return sub_1E1A7C(v7, v9, 1);
}

uint64_t sub_1E1610(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;

  v6 = swift_task_alloc();
  *(v3 + 152) = v6;
  *v6 = v5;
  v6[1] = sub_1E1794;
  v7 = *(v3 + 128);

  return sub_1E1A7C(v7, v4, (a1 & 1) == 0);
}

uint64_t sub_1E1794()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1E18D8, v3, v2);
}

uint64_t sub_1E18D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1938()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1E1FE8, v3, v2);
}

uint64_t sub_1E1A7C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 136) = a3;
  *(v4 + 64) = a1;
  sub_2C5C18();
  *(v4 + 88) = sub_2C5C08();
  v6 = sub_2C5BB8();
  *(v4 + 96) = v6;
  *(v4 + 104) = v5;

  return _swift_task_switch(sub_1E1B1C, v6, v5);
}

uint64_t sub_1E1B1C()
{
  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 80);
    v3 = v1[3];
    v2 = v1[4];
    sub_72084(v1, v3);
    if (ContextMenuPresentationContextProtocol.transactionProvider.getter(v3, v2))
    {
      *(v0 + 56) = &OBJC_PROTOCOL___BSUITransactionProviding;
      v4 = swift_dynamicCastObjCProtocolConditional();
      if (!v4)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v4 = 0;
    }

    *(v0 + 112) = v4;
    sub_691F8(*(v0 + 80) + 128, v0 + 16);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    sub_72084((v0 + 16), v13);
    if (v4)
    {
      v4 = [v4 newShowURLTransaction];
    }

    *(v0 + 120) = v4;
    v18 = (*(v14 + 24) + **(v14 + 24));
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_1E1D90;
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);

    return v18(v17, v16, v4, v13, v14);
  }

  else
  {
    v5 = *(v0 + 80);

    v6 = sub_1DA078(0xD000000000000061);
    v8 = v7;
    v9 = v5[3];
    v10 = v5[4];
    sub_72084(v5, v9);
    (*(v10 + 40))(v6, v8, v9, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1E1D90()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1E1ED4, v3, v2);
}

uint64_t sub_1E1ED4()
{

  swift_unknownObjectRelease();
  sub_68CD0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7100C;

  return RateAndReviewActionItem.handle()();
}

unint64_t sub_1E204C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C8620;
  if (!qword_3C8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8620);
  }

  return result;
}

uint64_t sub_1E20A0(uint64_t a1)
{
  v2 = sub_2C0788();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FanComponentModel(0);
  (*(v3 + 16))(v5, a1 + *(v6 + 28), v2);
  return sub_2C20F8();
}

uint64_t sub_1E2188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E204C(a1, a2, a3);

  return sub_2BFD18();
}

unint64_t sub_1E21D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5B80;
  if (!qword_3C5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5B80);
  }

  return result;
}

uint64_t sub_1E2318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E2374(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_2BE498();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2BE4D8();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_2BE698();
  __chkstk_darwin(v14 - 8);
  v15 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = sub_2BE588();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE608();
  v29 = a1;
  sub_2BE3E8();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_171CB0(v17);
    if (qword_3BB8B8 != -1)
    {
      swift_once();
    }

    v22 = sub_2C00B8();
    sub_57AD8(v22, qword_3C32C0);
    v23 = sub_2C0098();
    v24 = sub_2C5DC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "Failed to create date for last day of '%ld'.", v25, 0xCu);
    }

    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_2BE198();
    sub_2BE488();
    sub_2BE448();
    (*(v30 + 8))(v5, v31);
    v27 = *(v32 + 8);
    v28 = v34;
    v27(v7, v34);
    sub_2BE4C8();
    v27(v10, v28);
    sub_1E2C10(&qword_3BE900, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_2BE568();
    v27(v13, v28);
    (*(v19 + 8))(v21, v18);
    return v35;
  }
}

uint64_t sub_1E2834()
{
  v1 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_2BEB08();
  __chkstk_darwin(v7 - 8);
  v8 = sub_2BE5F8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C1F48();
  __chkstk_darwin(v12 - 8);
  v13 = *v0;
  sub_6620C(&qword_3BC400, &unk_2E3430);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2E3F30;
  sub_2BE5E8();
  sub_1E2374(v13, v11);
  (*(v9 + 8))(v11, v8);
  v15 = enum case for FrameName.ineligibleUser(_:);
  v16 = sub_2BF0C8();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v18 = sub_2BE8D8();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_2BEAF8();
  sub_2C1F38();
  *(v14 + 56) = sub_2C1518();
  *(v14 + 64) = sub_1E2C10(&qword_3C5B90, &type metadata accessor for NothingToReviewFrame, &protocol conformance descriptor for NothingToReviewFrame);
  sub_720C8((v14 + 32));
  sub_2C1508();
  return v14;
}

uint64_t sub_1E2C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E2C70(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_2BFDD8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_6620C(&qword_3C2AB0, &qword_2EF550);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v14 = sub_6620C(&qword_3BDFF0, &unk_2EF400);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = sub_6620C(&qword_3C5B98, &qword_2F38D8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

uint64_t sub_1E2EB0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2BFDD8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_6620C(&qword_3C2AB0, &qword_2EF550);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v14 = sub_6620C(&qword_3BDFF0, &unk_2EF400);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = sub_6620C(&qword_3C5B98, &qword_2F38D8);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[11];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for SwooshSetChildSwooshShelfModel(uint64_t a1)
{
  result = qword_3C5BF8;
  if (!qword_3C5BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3128(uint64_t a1)
{
  sub_A62E4();
  if (v1 <= 0x3F)
  {
    sub_A6360(319);
    if (v2 <= 0x3F)
    {
      sub_D7504(319, &qword_3C0940, &qword_3BDF58, &unk_2E5B70);
      if (v3 <= 0x3F)
      {
        sub_2BFDD8();
        if (v4 <= 0x3F)
        {
          sub_1E32E4(319, &qword_3C5C08, type metadata accessor for SwooshItemComponentModel, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_1E32E4(319, &qword_3C5C10, &type metadata accessor for ShelfGridType, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_D7504(319, &qword_3C3650, &qword_3BDE70, &qword_2E52F0);
              if (v7 <= 0x3F)
              {
                sub_D7504(319, &unk_3C5C18, &qword_3C1730, &unk_2EE740);
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

void sub_1E32E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1E3348@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = v2;
  v128 = a1;
  v4 = sub_6620C(&qword_3C1A00, &unk_2EF540);
  __chkstk_darwin(v4 - 8);
  v6 = (&v111 - v5);
  v7 = sub_2C0AF8();
  v123 = *(v7 - 8);
  v124 = v7;
  __chkstk_darwin(v7);
  v148 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C2AC0, &unk_2EE760);
  __chkstk_darwin(v9 - 8);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v137 = &v111 - v13;
  v14 = sub_6620C(&qword_3C1C70, &unk_2EE730);
  __chkstk_darwin(v14 - 8);
  v143 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v111 - v17;
  v168 = sub_2C1CB8();
  v146 = *(v168 - 8);
  __chkstk_darwin(v168);
  v141 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v134 = &v111 - v20;
  v21 = sub_2C1D08();
  v144 = *(v21 - 8);
  v145 = v21;
  __chkstk_darwin(v21);
  v139 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v133 = &v111 - v24;
  v121 = sub_2C1B58();
  v25 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2C1B98();
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v138 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v132 = &v111 - v29;
  v30 = sub_6620C(&qword_3BDFF0, &unk_2EF400);
  __chkstk_darwin(v30 - 8);
  v118 = &v111 - v31;
  v32 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v32 - 8);
  v135 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v151 = &v111 - v35;
  v36 = sub_6620C(&qword_3C5B98, &qword_2F38D8);
  __chkstk_darwin(v36 - 8);
  v115 = (&v111 - v37);
  v38 = sub_6620C(&qword_3C1730, &unk_2EE740);
  __chkstk_darwin(v38 - 8);
  v131 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v150 = &v111 - v41;
  v42 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v42 - 8);
  v112 = &v111 - v43;
  v44 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v44 - 8);
  v130 = &v111 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v117 = &v111 - v47;
  __chkstk_darwin(v48);
  v149 = &v111 - v49;
  v50 = sub_6620C(&qword_3C2AB0, &qword_2EF550);
  __chkstk_darwin(v50 - 8);
  v119 = &v111 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v111 - v53;
  __chkstk_darwin(v55);
  v129 = &v111 - v56;
  v57 = type metadata accessor for SwooshSetChildSwooshShelfModel(0);
  v58 = sub_2BFDB8();
  v60 = v59;
  v128 = v3;
  sub_6932C(v3, v166, &qword_3BE378, &qword_2E5DB0);
  v61 = swift_dynamicCast();
  v147 = v6;
  v127 = v11;
  v113 = v60;
  v114 = v58;
  if (v61)
  {
    v122 = *(&v163 + 1);
    v111 = v163;
  }

  else
  {

    v111 = v58;
    v122 = v60;
  }

  v167 = 0;
  memset(v166, 0, sizeof(v166));
  v62 = v57[9];
  v116 = *(v128 + v57[8]);
  sub_6932C(v128 + v62, v54, &qword_3C2AB0, &qword_2EF550);
  v63 = sub_2C0A78();
  v64 = *(v63 - 8);
  v65 = *(v64 + 48);
  if (v65(v54, 1, v63) == 1)
  {
    sub_2C0A58();
    v66 = v25;
    v67 = v129;
    sub_2C0A38();
    v68 = v65(v54, 1, v63);
    v69 = v67;
    v25 = v66;
    if (v68 != 1)
    {
      sub_69198(v54, &qword_3C2AB0, &qword_2EF550);
    }
  }

  else
  {
    v69 = v129;
    (*(v64 + 32))(v129, v54, v63);
  }

  (*(v64 + 56))(v69, 0, 1, v63);
  v70 = v128;
  v71 = v112;
  sub_6932C(v128 + v57[6], v112, &qword_3BF898, &unk_2EA240);
  sub_69130(v71, v149, &qword_3BDF58, &unk_2E5B70);
  v72 = v115;
  sub_6932C(v70 + v57[11], v115, &qword_3C5B98, &qword_2F38D8);
  sub_69130(v72, v150, &qword_3C1730, &unk_2EE740);
  v73 = v118;
  sub_6932C(v70 + v57[10], v118, &qword_3BDFF0, &unk_2EF400);
  sub_69130(v73, v151, &qword_3BDE70, &qword_2E52F0);
  (*(v25 + 104))(v120, enum case for ShelfBackgroundViewModel.BackgroundKind.none(_:), v121);
  v74 = v132;
  sub_2C1B68();
  *&v163 = v114;
  *(&v163 + 1) = v113;

  sub_2C61A8();
  sub_6932C((v70 + 5), v160, &qword_3BE370, &qword_2E7520);
  v120 = sub_2C5018();
  v75 = *(v120 - 8);
  v115 = *(v75 + 56);
  v121 = v75 + 56;
  (v115)(v117, 1, 1, v120);
  *(&v164 + 1) = sub_2C1F98();
  v165 = sub_1E5B80(&qword_3BD440, &type metadata accessor for ShelfHeaderTitleComponentModel, &protocol conformance descriptor for ShelfHeaderTitleComponentModel);
  sub_720C8(&v163);
  sub_2C1F88();
  v76 = v133;
  sub_2C1CE8();
  v77 = v134;
  sub_2C1CA8();
  v78 = sub_2BFE68();
  v79 = v136;
  (*(*(v78 - 8) + 56))(v136, 1, 1, v78);
  v114 = sub_2C0E58();
  v80 = *(v114 - 8);
  v113 = *(v80 + 56);
  v117 = (v80 + 56);
  v81 = v137;
  v113(v137, 1, 1, v114);
  v165 = 0;
  v163 = 0u;
  v164 = 0u;
  sub_6932C(v166, v162, &qword_3BE008, &unk_2E5630);
  type metadata accessor for SwooshItemComponentModel(0);
  sub_1E5B80(&unk_3BD450, type metadata accessor for SwooshItemComponentModel, &unk_2ECE78);
  sub_6932C(v69, v119, &qword_3C2AB0, &qword_2EF550);
  sub_2C0A88();
  v128 = sub_28F08C(v116);
  sub_6932C(v149, v130, &qword_3BDF58, &unk_2E5B70);
  sub_6932C(v150, v131, &qword_3C1730, &unk_2EE740);
  sub_6932C(v151, v135, &qword_3BDE70, &qword_2E52F0);
  (*(v140 + 16))(v138, v74, v142);
  (*(v144 + 16))(v139, v76, v145);
  (*(v146 + 16))(v141, v77, v168);
  v82 = type metadata accessor for ContentUnavailableComponentModel(0);
  v83 = *(*(v82 - 8) + 56);
  (v83)(v147, 1, 1, v82);
  sub_6932C(v79, v143, &qword_3C1C70, &unk_2EE730);
  v84 = v127;
  sub_6932C(v81, v127, &qword_3C2AC0, &unk_2EE760);
  sub_6932C(&v163, v160, &qword_3C2AC8, &unk_2EE770);
  v85 = type metadata accessor for Shelf(0);
  v86 = v125;
  v87 = v125 + v85[8];
  (v115)(v87, 1, 1, v120);
  v88 = v86 + v85[9];
  v89 = sub_2C22F8();
  v90 = *(*(v89 - 8) + 56);
  v119 = v88;
  v90(v88, 1, 1, v89);
  v120 = v86 + v85[16];
  v91 = v128;
  v92 = v148;
  v83();
  v93 = v86 + v85[18];
  v113(v93, 1, 1, v114);
  v94._rawValue = v91;
  v95 = v126;
  sub_2C0AB8(v94);
  v126 = v95;
  v121 = v93;
  v118 = v87;
  if (v95)
  {

    sub_69198(v160, &qword_3C2AC8, &unk_2EE770);
    sub_69198(v84, &qword_3C2AC0, &unk_2EE760);
    sub_69198(v143, &qword_3C1C70, &unk_2EE730);
    sub_69198(v147, &qword_3C1A00, &unk_2EF540);
    v147 = *(v146 + 8);
    v147(v141, v168);
    v96 = v145;
    v146 = *(v144 + 8);
    (v146)(v139, v145);
    v144 = *(v140 + 8);
    v97 = v142;
    (v144)(v138, v142);
    sub_69198(v135, &qword_3BDE70, &qword_2E52F0);
    sub_69198(v131, &qword_3C1730, &unk_2EE740);
    sub_69198(v130, &qword_3BDF58, &unk_2E5B70);
    (*(v123 + 8))(v92, v124);
    sub_69198(v162, &qword_3BE008, &unk_2E5630);
    sub_69198(&v163, &qword_3C2AC8, &unk_2EE770);
    sub_69198(v137, &qword_3C2AC0, &unk_2EE760);
    sub_69198(v136, &qword_3C1C70, &unk_2EE730);
    v147(v134, v168);
    (v146)(v133, v96);
    (v144)(v132, v97);
    sub_69198(v151, &qword_3BDE70, &qword_2E52F0);
    sub_69198(v150, &qword_3C1730, &unk_2EE740);
    sub_69198(v149, &qword_3BDF58, &unk_2E5B70);
    sub_69198(v129, &qword_3C2AB0, &qword_2EF550);
    sub_69198(v166, &qword_3BE008, &unk_2E5630);
    sub_69198(v118, &qword_3BDF58, &unk_2E5B70);
    sub_69198(v119, &qword_3C1730, &unk_2EE740);
    sub_69198(v120, &qword_3C1A00, &unk_2EF540);
    sub_69198(v121, &qword_3C2AC0, &unk_2EE760);
  }

  else
  {
    v99 = v111;
    v100 = v122;
    *v86 = v111;
    *(v86 + 8) = v100;
    sub_6932C(v162, &v154, &qword_3BE008, &unk_2E5630);
    if (*(&v155 + 1))
    {
      sub_69198(v162, &qword_3BE008, &unk_2E5630);
      sub_69198(&v163, &qword_3C2AC8, &unk_2EE770);
      sub_69198(v137, &qword_3C2AC0, &unk_2EE760);
      sub_69198(v136, &qword_3C1C70, &unk_2EE730);
      v101 = v146;
      (*(v146 + 8))(v134, v168);
      v102 = v144;
      v103 = v145;
      (*(v144 + 8))(v133, v145);
      v104 = v140;
      v105 = v142;
      (*(v140 + 8))(v132, v142);
      sub_69198(v151, &qword_3BDE70, &qword_2E52F0);
      sub_69198(v150, &qword_3C1730, &unk_2EE740);
      sub_69198(v149, &qword_3BDF58, &unk_2E5B70);
      sub_69198(v129, &qword_3C2AB0, &qword_2EF550);
      sub_69198(v166, &qword_3BE008, &unk_2E5630);
      v157 = v154;
      v158 = v155;
      v159 = v156;
      v106 = v147;
    }

    else
    {
      v152 = v99;
      v153 = v100;

      sub_2C61A8();
      sub_69198(v162, &qword_3BE008, &unk_2E5630);
      sub_69198(&v163, &qword_3C2AC8, &unk_2EE770);
      sub_69198(v137, &qword_3C2AC0, &unk_2EE760);
      sub_69198(v136, &qword_3C1C70, &unk_2EE730);
      v101 = v146;
      (*(v146 + 8))(v134, v168);
      v102 = v144;
      v103 = v145;
      (*(v144 + 8))(v133, v145);
      v104 = v140;
      v105 = v142;
      (*(v140 + 8))(v132, v142);
      sub_69198(v151, &qword_3BDE70, &qword_2E52F0);
      sub_69198(v150, &qword_3C1730, &unk_2EE740);
      sub_69198(v149, &qword_3BDF58, &unk_2E5B70);
      sub_69198(v129, &qword_3C2AB0, &qword_2EF550);
      sub_69198(v166, &qword_3BE008, &unk_2E5630);
      v106 = v147;
      if (*(&v155 + 1))
      {
        sub_69198(&v154, &qword_3BE008, &unk_2E5630);
      }
    }

    v107 = v86 + v85[10];
    v108 = v158;
    *v107 = v157;
    *(v107 + 16) = v108;
    *(v107 + 32) = v159;
    *(v86 + v85[11]) = 0;
    *(v86 + 16) = 0;
    (*(v123 + 32))(v86 + v85[6], v148, v124);
    *(v86 + v85[17]) = v128;
    *(v86 + v85[7]) = 1;
    sub_A9708(v130, v118, &qword_3BDF58, &unk_2E5B70);
    sub_A9708(v131, v119, &qword_3C1730, &unk_2EE740);
    sub_69130(v135, v86 + v85[20], &qword_3BDE70, &qword_2E52F0);
    (*(v104 + 32))(v86 + v85[13], v138, v105);
    (*(v102 + 32))(v86 + v85[14], v139, v103);
    (*(v101 + 32))(v86 + v85[15], v141, v168);
    sub_A9708(v106, v120, &qword_3C1A00, &unk_2EF540);
    sub_69130(v143, v86 + v85[12], &qword_3C1C70, &unk_2EE730);
    sub_A9708(v127, v121, &qword_3C2AC0, &unk_2EE760);
    v109 = v86 + v85[19];
    result = *v160;
    v110 = v160[1];
    *v109 = v160[0];
    *(v109 + 16) = v110;
    *(v109 + 32) = v161;
  }

  return result;
}

uint64_t sub_1E49A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = sub_6620C(&qword_3C5B98, &qword_2F38D8);
  __chkstk_darwin(v46);
  v47 = &v44 - v3;
  v48 = sub_6620C(&qword_3BDFF0, &unk_2EF400);
  __chkstk_darwin(v48);
  v49 = &v44 - v4;
  v5 = sub_6620C(&qword_3C2AB0, &qword_2EF550);
  __chkstk_darwin(v5 - 8);
  v50 = &v44 - v6;
  v7 = sub_2BFDD8();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = sub_6620C(&qword_3C5C78, &unk_2F3A20);
  v51 = *(v13 - 8);
  v52 = v13;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for SwooshSetChildSwooshShelfModel(0);
  __chkstk_darwin(v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v18 + 40) = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 9) = 0;
  v61 = v18 + 40;
  sub_A9708(&v62, (v18 + 40), &unk_3BDC90, &unk_2E5620);
  v19 = v16[6];
  v20 = sub_2C5018();
  v21 = *(*(v20 - 8) + 56);
  v58 = v19;
  v21(&v18[v19], 1, 1, v20);
  v22 = v16[10];
  v23 = sub_2BEA28();
  v24 = *(*(v23 - 8) + 56);
  v57 = v22;
  v24(&v18[v22], 1, 1, v23);
  v25 = v16[11];
  v26 = sub_2C22F8();
  v27 = *(*(v26 - 8) + 56);
  v59 = v25;
  v27(&v18[v25], 1, 1, v26);
  v28 = a1[3];
  v60 = a1;
  v29 = sub_72084(a1, v28);
  sub_1E5948(v29, v30, v31);
  v55 = v15;
  v32 = v56;
  sub_2C67A8();
  if (v32)
  {
    sub_68CD0(v60);
    v34 = v57;
    v33 = v58;
    sub_69198(v61, &qword_3BE370, &qword_2E7520);
    sub_69198(&v18[v33], &qword_3BF898, &unk_2EA240);
    sub_69198(&v18[v34], &qword_3BDFF0, &unk_2EF400);
    return sub_69198(&v18[v59], &qword_3C5B98, &qword_2F38D8);
  }

  else
  {
    v56 = v10;
    v44 = v9;
    sub_6620C(&qword_3BE378, &qword_2E5DB0);
    v65 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378, &qword_2E5DB0, &protocol conformance descriptor for CodeAnyHashable<A>);
    sub_2C64A8();
    v35 = v63;
    *v18 = v62;
    *(v18 + 1) = v35;
    *(v18 + 4) = v64;
    sub_6620C(&qword_3BE370, &qword_2E7520);
    v65 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370, &qword_2E7520, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_2C64A8();
    sub_A9708(&v62, v61, &qword_3BE370, &qword_2E7520);
    LOBYTE(v62) = 2;
    sub_1E5A50(&qword_3C08B8, &qword_3BF898, &unk_2EA240, sub_F2FC4);
    v36 = v12;
    sub_2C64A8();
    v37 = v57;
    sub_A9708(v36, &v18[v58], &qword_3BF898, &unk_2EA240);
    LOBYTE(v62) = 3;
    sub_1E5B80(&qword_3C36D8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
    v38 = v44;
    v39 = v54;
    sub_2C64A8();
    (*(v53 + 32))(&v18[v16[7]], v38, v39);
    sub_6620C(&qword_3C5C88, &qword_2F3A30);
    v65 = 4;
    sub_1E599C();
    sub_2C64A8();
    *&v18[v16[8]] = v62;
    sub_2C0A78();
    LOBYTE(v62) = 5;
    sub_1E5B80(&qword_3C5C98, &type metadata accessor for ShelfGridType, &protocol conformance descriptor for ShelfGridType);
    v40 = v50;
    sub_2C6458();
    sub_69130(v40, &v18[v16[9]], &qword_3C2AB0, &qword_2EF550);
    LOBYTE(v62) = 6;
    sub_1E5A50(&qword_3C36C0, &qword_3BDFF0, &unk_2EF400, sub_16F428);
    v41 = v49;
    sub_2C64A8();
    sub_A9708(v41, &v18[v37], &qword_3BDFF0, &unk_2EF400);
    LOBYTE(v62) = 7;
    sub_1E5A50(&qword_3C5CA0, &qword_3C5B98, &qword_2F38D8, sub_1E5ACC);
    v42 = v47;
    sub_2C64A8();
    (*(v51 + 8))(v55, v52);
    sub_A9708(v42, &v18[v59], &qword_3C5B98, &qword_2F38D8);
    sub_1E5BC8(v18, v45);
    sub_68CD0(v60);
    return sub_1E5C2C(v18);
  }
}

uint64_t sub_1E54B8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x446E6F6974636573;
  if (v1 != 6)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  v4 = 0x736D657469;
  if (v1 != 4)
  {
    v4 = 0x697247666C656873;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_1E55B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5DA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E55D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E5948(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1E5614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E5948(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1E5650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2BFDD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E56D0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NestedShelfOrientation.vertical(_:);
  v3 = sub_2C18D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1E5744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898, &unk_2EA240);
  return sub_69130(v7, a2, &qword_3BDF58, &unk_2E5B70);
}

unint64_t sub_1E5948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5C80;
  if (!qword_3C5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5C80);
  }

  return result;
}

unint64_t sub_1E599C()
{
  result = qword_3C5C90;
  if (!qword_3C5C90)
  {
    sub_718D4(&qword_3C5C88, &qword_2F3A30);
    sub_1E5B80(&qword_3C2398, type metadata accessor for SwooshItemComponentModel, &unk_2ECD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5C90);
  }

  return result;
}

uint64_t sub_1E5A50(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5ACC()
{
  result = qword_3C5CA8;
  if (!qword_3C5CA8)
  {
    sub_718D4(&qword_3C1730, &unk_2EE740);
    sub_1E5B80(&qword_3C5CB0, &type metadata accessor for Metrics.Location, &protocol conformance descriptor for Metrics.Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5CA8);
  }

  return result;
}

uint64_t sub_1E5B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwooshSetChildSwooshShelfModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C2C(uint64_t a1)
{
  v2 = type metadata accessor for SwooshSetChildSwooshShelfModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5CB8;
  if (!qword_3C5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5CB8);
  }

  return result;
}

unint64_t sub_1E5CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5CC0;
  if (!qword_3C5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5CC0);
  }

  return result;
}

unint64_t sub_1E5D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C5CC8;
  if (!qword_3C5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5CC8);
  }

  return result;
}

uint64_t sub_1E5DA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697247666C656873 && a2 == 0xED00006570795464 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_2C65B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t sub_1E6034(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1E6048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E6090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E6100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v18[2] = a4;
  v7 = sub_2C3518();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C30F8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x100) != 0)
  {
    sub_2C3768();

    if ((a3 & 1) == 0)
    {
      sub_2C5DD8();
      v15 = sub_2C3718();
      v18[1] = a1;
      v16 = v15;
      sub_2C0058();

      sub_2C30E8();
      swift_getAtKeyPath();

      (*(v12 + 8))(v14, v11);
      a2 = v19;
    }

    swift_getKeyPath();
    v19 = a2;
    sub_1E6448();
    sub_2BE6F8();

    swift_beginAccess();
  }

  else
  {
    sub_2C3798();
  }

  sub_2C3508();
  sub_6620C(&qword_3C5CD0, &qword_2F3C38);
  sub_1E63DC();
  sub_2C3F08();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E63B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1E6100(a1, *v2, v3 | *(v2 + 8), a2);
}

unint64_t sub_1E63DC()
{
  result = qword_3C5CD8;
  if (!qword_3C5CD8)
  {
    sub_718D4(&qword_3C5CD0, &qword_2F3C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5CD8);
  }

  return result;
}

unint64_t sub_1E6448()
{
  result = qword_3BCB70;
  if (!qword_3BCB70)
  {
    type metadata accessor for HostProxy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCB70);
  }

  return result;
}

uint64_t sub_1E64A0()
{
  sub_718D4(&qword_3C5CD0, &qword_2F3C38);
  sub_1E63DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BD588, &unk_2E4390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SwooshSetChildSwooshShelfModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E6628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_6620C(&qword_3BD588, &unk_2E4390);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SwooshSetChildSwooshShelfModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for SwooshSetChildSwooshShelfContent(uint64_t a1)
{
  result = qword_3C5D38;
  if (!qword_3C5D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E677C(uint64_t a1)
{
  sub_85768(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SwooshSetChildSwooshShelfModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E6824@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v47 = a2;
  v2 = type metadata accessor for SwooshSetChildSwooshShelfContent(0);
  v41 = *(v2 - 8);
  v40 = *(v41 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3C5D90, &qword_2F3D68);
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v37 - v8;
  v9 = sub_2C0E48();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C4548();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_6620C(&qword_3C5D98, &qword_2F3D70);
  v39 = *(v42 - 8);
  v17 = v39;
  __chkstk_darwin(v42);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  sub_2C4538();
  (*(v10 + 104))(v12, enum case for PageMarginType.padding(_:), v9);
  sub_1E7D34(&qword_3C0F20, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
  v38 = v22;
  sub_2C3C28();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  sub_1E7E84(v43, v4, type metadata accessor for SwooshSetChildSwooshShelfContent);
  v23 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v24 = swift_allocObject();
  sub_1E7E1C(v4, v24 + v23, type metadata accessor for SwooshSetChildSwooshShelfContent);
  sub_6620C(&qword_3C5DA0, &qword_2F3D78);
  sub_2BFBC8();
  sub_2BFBA8();
  sub_1E7C1C();
  sub_1E7D34(&qword_3BDE60, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_1E7D34(&qword_3BDE68, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  v25 = v48;
  sub_2BFBD8();
  v26 = *(v17 + 16);
  v37 = v19;
  v27 = v42;
  v26(v19, v22, v42);
  v29 = v44;
  v28 = v45;
  v30 = *(v45 + 16);
  v31 = v46;
  v30(v44, v25, v46);
  v32 = v47;
  v26(v47, v19, v27);
  v33 = sub_6620C(&qword_3C5DB0, &qword_2F3D88);
  v30(&v32[*(v33 + 48)], v29, v31);
  v34 = *(v28 + 8);
  v34(v48, v31);
  v35 = *(v39 + 8);
  v35(v38, v27);
  v34(v29, v31);
  return (v35)(v37, v27);
}

uint64_t sub_1E6E44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_2C5258();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BDFF0, &unk_2EF400);
  __chkstk_darwin(v7 - 8);
  v40 = &v39 - v8;
  v9 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v9 - 8);
  v39 = &v39 - v10;
  v51 = type metadata accessor for ShelfView(0);
  __chkstk_darwin(v51);
  v41 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_6620C(&qword_3C5DB8, &qword_2F3D90);
  v43 = *(v53 - 8);
  __chkstk_darwin(v53);
  v42 = &v39 - v12;
  v49 = sub_6620C(&qword_3C5DC0, &unk_2F3D98);
  __chkstk_darwin(v49);
  v50 = &v39 - v13;
  v52 = sub_6620C(&qword_3C82F0, &qword_2F3D80);
  v48 = *(v52 - 8);
  __chkstk_darwin(v52);
  v14 = sub_6620C(&qword_3BDE80, &qword_2E5300);
  __chkstk_darwin(v14 - 8);
  v16 = &v39 - v15;
  v17 = type metadata accessor for Shelf(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v39 - v22;
  v24 = *(type metadata accessor for SwooshSetChildSwooshShelfContent(0) + 20);
  v44 = a2;
  v25 = a2 + v24;
  v26 = sub_1E3348(a1, v16);
  (*(v18 + 56))(v16, 0, 1, v17, v26);
  sub_1E7E1C(v16, v23, type metadata accessor for Shelf);
  sub_1E7E84(v23, v20, type metadata accessor for Shelf);
  v27 = type metadata accessor for SwooshSetChildSwooshShelfModel(0);
  v28 = v40;
  sub_1E7EEC(v25 + *(v27 + 40), v40);
  v29 = v28;
  v30 = v39;
  sub_1E7F5C(v29, v39);
  v31 = v41;
  sub_113C90(v20, v30, v41);
  v32 = v45;
  sub_2C5248();
  v33 = sub_1E7D34(&qword_3BDE50, type metadata accessor for ShelfView, &protocol conformance descriptor for ShelfView);
  v34 = v42;
  v35 = v51;
  sub_2C3A98();
  (*(v46 + 8))(v32, v47);
  sub_1E7FCC(v31, type metadata accessor for ShelfView);
  v36 = v43;
  v37 = v53;
  (*(v43 + 16))(v50, v34, v53);
  swift_storeEnumTagMultiPayload();
  v55 = v35;
  v56 = v33;
  swift_getOpaqueTypeConformance2();
  sub_72B74(&qword_3BDE58, &qword_3C82F0, &qword_2F3D80, &protocol conformance descriptor for BooksFailureView<A>);
  sub_2C33C8();
  (*(v36 + 8))(v34, v37);
  return sub_1E7FCC(v23, type metadata accessor for Shelf);
}

uint64_t sub_1E768C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  result = sub_1E7E1C(a1, a4 + *(a3 + 20), type metadata accessor for SwooshSetChildSwooshShelfModel);
  *(a4 + *(a3 + 24)) = a2;
  return result;
}

uint64_t sub_1E7720@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2C3328();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_6620C(&qword_3C5D88, &qword_2F3D60);
  return sub_1E6824(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_1E7804()
{
  v1 = type metadata accessor for SwooshSetChildSwooshShelfContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_6620C(&qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2C0C98();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = (v0 + v3 + *(v1 + 20));
  sub_68CD0(v6);
  if (*(v6 + 8))
  {
    sub_68CD0(v6 + 5);
  }

  v7 = type metadata accessor for SwooshSetChildSwooshShelfModel(0);
  v8 = v7[6];
  v9 = sub_2C5018();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v6[v8], 1, v9))
  {
    (*(v10 + 8))(&v6[v8], v9);
  }

  v11 = v7[7];
  v12 = sub_2BFDD8();
  (*(*(v12 - 8) + 8))(&v6[v11], v12);

  v13 = v7[9];
  v14 = sub_2C0A78();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v6[v13], 1, v14))
  {
    (*(v15 + 8))(&v6[v13], v14);
  }

  v16 = v7[10];
  v17 = sub_2BEA28();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v6[v16], 1, v17))
  {
    (*(v18 + 8))(&v6[v16], v17);
  }

  v19 = v7[11];
  v20 = sub_2C22F8();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v6[v19], 1, v20))
  {
    (*(v21 + 8))(&v6[v19], v20);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E7B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SwooshSetChildSwooshShelfContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6E44(a1, v6, a2);
}

unint64_t sub_1E7C1C()
{
  result = qword_3C5DA8;
  if (!qword_3C5DA8)
  {
    sub_718D4(&qword_3C5DA0, &qword_2F3D78);
    type metadata accessor for ShelfView(255);
    sub_1E7D34(&qword_3BDE50, type metadata accessor for ShelfView, &protocol conformance descriptor for ShelfView);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3BDE58, &qword_3C82F0, &qword_2F3D80, &protocol conformance descriptor for BooksFailureView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5DA8);
  }

  return result;
}

uint64_t sub_1E7D34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E7D7C(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BDE80, &qword_2E5300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E7DE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1E7E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E7E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E7EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDFF0, &unk_2EF400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E7F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E7FCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E8070(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B2A98;

  return AsyncContextActionItem.asyncSubMenu.getter(a1, a2);
}

uint64_t AsyncContextActionItem.asyncSubMenu.getter(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_2C5C18();
  v3[16] = sub_2C5C08();
  v5 = sub_2C5BB8();
  v3[17] = v5;
  v3[18] = v4;

  return _swift_task_switch(sub_1E81B0, v5, v4);
}

uint64_t sub_1E81B0()
{
  v1 = v0[13];
  v2 = *(v0[14] + 8);
  v0[19] = v2;
  if ((*(v2 + 48))(v1, v2) & 1) != 0 && (v3 = v0[13], v4 = *(v2 + 56), v0[20] = v4, v0[21] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xD7C4000000000000, v0[12] = v4(v3, v2), sub_6620C(&qword_3C4330, &qword_2F1000), sub_1E8814(), v5 = sub_2C5D28(), , (v5))
  {
    v6 = v0[13];
    (*(v0[14] + 24))(v6);
    v7 = v0[5];
    v8 = v0[6];
    sub_72084(v0 + 2, v7);
    v9 = v4(v6, v2);
    v0[22] = v9;
    v13 = (*(v8 + 32) + **(v8 + 32));
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = sub_1E841C;

    return v13(v9, v7, v8);
  }

  else
  {

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_1E841C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 192) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return _swift_task_switch(sub_1E8568, v4, v3);
}

uint64_t sub_1E8568()
{
  v22 = v0;
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[13];

  sub_68CD0(v0 + 2);
  v4 = (*(v2 + 24))(v3, v2);
  v19 = v5;
  v20 = v4;
  v18 = ContextActionItem.image.getter(v3, v2);
  (*(v2 + 16))(v21, v3, v2);
  ContextActionType.rawValue.getter();
  v6 = sub_2C5888();

  result = v1(v3, v2);
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = v8 + 32 + 40 * v10;
      v12 = v10;
      while (1)
      {
        if (v12 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v13 = v0[24];
        sub_691F8(v11, (v0 + 7));
        sub_1E8878(v0 + 7, v13, v21);
        result = sub_68CD0(v0 + 7);
        if (v21[0])
        {
          break;
        }

        ++v12;
        v11 += 40;
        if (v9 == v12)
        {
          goto LABEL_11;
        }
      }

      sub_2C5B08();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_2C5B48();
      }

      v10 = v12 + 1;
      result = sub_2C5B78();
    }

    while (v9 - 1 != v12);
  }

LABEL_11:

  sub_66278(0, &qword_3BDC60, UIMenu_ptr);
  v25._object = v19;
  v25._countAndFlagsBits = v20;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v24.value.super.isa = v18;
  v24.is_nil = v6;
  v14.value = 0;
  v15.super.super.isa = sub_2C5F58(v25, v26, v24, v14, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v17).super.super.isa;
  v16 = v0[1];

  return v16(v15.super.super.isa);
}

unint64_t sub_1E8814()
{
  result = qword_3C4338;
  if (!qword_3C4338)
  {
    sub_718D4(&qword_3C4330, &qword_2F1000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4338);
  }

  return result;
}

void *sub_1E8878@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_72084(a1, v6);
  result = ContextActionItem.uiAction.getter(v6, v7);
  if (!result)
  {
    goto LABEL_13;
  }

  v9 = result;
  v10 = a1[3];
  v11 = a1[4];
  sub_72084(a1, v10);
  (*(v11 + 96))(v28, v10, v11);
  v12 = v29;
  v13 = v30;
  sub_72084(v28, v29);
  v14 = (*(v13 + 8))(v12, v13);
  if (!*(v14 + 16))
  {

    sub_68CD0(v28);
    result = 0;
    goto LABEL_13;
  }

  sub_691F8(v14 + 32, v31);

  v15 = v32;
  v16 = v33;
  sub_72084(v31, v32);
  v17 = (*(v16 + 8))(v15, v16);
  v19 = v18;
  sub_68CD0(v31);
  sub_68CD0(v28);
  v20 = [v9 title];
  v34 = sub_2C58C8();

  v21 = [v9 subtitle];
  if (v21)
  {
    v22 = v21;
    sub_2C58C8();

    if (!*(a2 + 16))
    {
      goto LABEL_10;
    }

LABEL_8:
    v23 = sub_5D228(v17, v19);
    if (v24)
    {
      v25 = *(*(a2 + 56) + 8 * v23);
    }

    goto LABEL_10;
  }

  if (*(a2 + 16))
  {
    goto LABEL_8;
  }

LABEL_10:
  sub_2C5888();

  v26 = [v9 discoverabilityTitle];
  if (v26)
  {
    v27 = v26;
    sub_2C58C8();
  }

  sub_66278(0, &qword_3BDC70, UIAction_ptr);
  [v9 attributes];
  *(swift_allocObject() + 16) = v9;
  result = sub_2C6018();
LABEL_13:
  *a3 = result;
  return result;
}

uint64_t dispatch thunk of AsyncContextActionItem.asyncSubMenu.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B2A98;

  return v7(a1, a2);
}

uint64_t sub_1E8C94()
{

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_1E8CCC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1E8CF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E8D40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1E8DB4()
{
  v59 = sub_2C1BC8();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v55 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_2C1BE8();
  __chkstk_darwin(v1 - 8);
  v58 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2C0E18();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  __chkstk_darwin(v3);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C19F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v55 - v10;
  __chkstk_darwin(v11);
  v68 = &v55 - v12;
  v13 = &qword_2F3E68;
  v14 = sub_6620C(&qword_3C5DD8, &qword_2F3E68);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v67 = &v55 - v19;
  sub_6620C(&qword_3C5DE0, &unk_2F3E70);
  v20 = *(v15 + 72);
  v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v22 = 6;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2F1A80;
  v63 = v23;
  v24 = v23 + v21;
  sub_1E95FC(v23 + v21);
  sub_1E9F38(v20 + v24);
  sub_1EA9B4(v24 + 2 * v20);
  sub_1EB41C(v24 + 3 * v20);
  sub_1EBD34(v24 + 4 * v20);
  v66 = v20;
  v25 = v6;
  v26 = &qword_3C5DD8;
  sub_1EC678(v24 + 5 * v20);
  v27 = (v7 + 48);
  v70 = v7;
  v28 = (v7 + 32);
  v29 = _swiftEmptyArrayStorage;
  v69 = v25;
  do
  {
    v30 = v67;
    sub_6932C(v24, v67, v26, v13);
    sub_1ED548(v30, v17);
    if ((*v27)(v17, 1, v25) == 1)
    {
      sub_69198(v17, v26, v13);
    }

    else
    {
      v31 = v13;
      v32 = v26;
      v33 = *v28;
      (*v28)(v68, v17, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_5C65C(0, v29[2] + 1, 1, v29);
      }

      v35 = v29[2];
      v34 = v29[3];
      v36 = v29;
      if (v35 >= v34 >> 1)
      {
        v36 = sub_5C65C((v34 > 1), v35 + 1, 1, v29);
      }

      v36[2] = v35 + 1;
      v29 = v36;
      v37 = v36 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v35;
      v25 = v69;
      v33(v37, v68, v69);
      v26 = v32;
      v13 = v31;
    }

    v24 += v66;
    --v22;
  }

  while (v22);

  v38 = v29[2];
  if (v38)
  {
    v71[0] = _swiftEmptyArrayStorage;
    sub_64B54(0, v38, 0);
    v39 = v71[0];
    v68 = *(v70 + 16);
    v40 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v55 = v29;
    v41 = v29 + v40;
    v42 = *(v70 + 72);
    v70 += 16;
    v66 = (v70 - 8);
    v67 = v42;
    v44 = v61;
    v43 = v62++;
    v63 = (v43 + 2);
    v45 = v60;
    v46 = v65;
    do
    {
      v47 = v64;
      v48 = v68;
      (v68)(v64, v41, v25);
      (v48)(v46, v47, v25);
      sub_2C0E08();
      (*v66)(v47, v25);
      v71[0] = v39;
      v50 = v39[2];
      v49 = v39[3];
      if (v50 >= v49 >> 1)
      {
        sub_64B54((v49 > 1), v50 + 1, 1);
        v44 = v61;
      }

      v73 = v44;
      v74 = sub_1ED6E4(&qword_3C5DE8, &type metadata accessor for HighlightFrame, &protocol conformance descriptor for HighlightFrame);
      v51 = sub_720C8(&v72);
      (*v63)(v51, v45, v44);
      v39 = v71[0];
      *(v71[0] + 16) = v50 + 1;
      sub_68D1C(&v72, &v39[5 * v50 + 4]);
      (*v62)(v45, v44);
      v41 += v67;
      --v38;
      v25 = v69;
    }

    while (v38);
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
  }

  *&v72 = v39;
  sub_6620C(&qword_3BE6A0, &unk_2E6DF0);
  sub_72B74(&qword_3BE6A8, &qword_3BE6A0, &unk_2E6DF0, &protocol conformance descriptor for [A]);
  if (sub_2C5D28())
  {
    (*(v57 + 104))(v56, enum case for TransitionFrameViewModel.Section.highlights(_:), v59);
    sub_2C1BD8();
    v73 = sub_2C0FD8();
    v74 = sub_1ED6E4(&qword_3BE6B0, &type metadata accessor for TransitionFrame, &protocol conformance descriptor for TransitionFrame);
    sub_720C8(&v72);
    sub_2C0FC8();
    sub_68D1C(&v72, v71);
    v52 = v39[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v39;
    if (!isUniquelyReferenced_nonNull_native || v52 >= v39[3] >> 1)
    {
      v39 = sub_5BE44(isUniquelyReferenced_nonNull_native, v52 + 1, 1, v39);
      v75 = v39;
    }

    sub_1811A0(0, 0, 1, v71);
  }

  return v39;
}

uint64_t sub_1E95FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = sub_2C1428();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = (&v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_2BE5F8();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2C19D8();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v91 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v7 - 8);
  v76 = &v74 - v8;
  v9 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v9 - 8);
  v75 = &v74 - v10;
  v11 = sub_2BEB08();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v90 = &v74 - v14;
  v94 = sub_2BF138();
  v15 = *(v94 - 8);
  __chkstk_darwin(v94);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2BF168();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_72084((v2 + 8), *(v2 + 32))[3];
  v23 = *(v22 + 16);
  if (v23)
  {
    v88 = v2;
    v89 = a1;
    v24 = 0;
    v26 = *(v19 + 16);
    v25 = v19 + 16;
    v27 = v22 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v92 = *(v25 + 56);
    v93 = v26;
    v28 = (v15 + 8);
    v29 = (v25 - 8);
    while (1)
    {
      v93(v21, v27, v18);
      sub_2BF148();
      v30 = sub_2BF118();
      (*v28)(v17, v94);
      result = (*v29)(v21, v18);
      v32 = __OFADD__(v24, v30);
      v24 += v30;
      if (v32)
      {
        break;
      }

      v27 += v92;
      if (!--v23)
      {
        v33 = v24;
        v2 = v88;
        a1 = v89;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v33 = 0.0;
LABEL_7:
    v34 = 1;
    if (*(v2 + 96) <= v33 && (*(v2 + 48) & 1) != 0)
    {
      v35 = [*(v2 + 112) stringFromTimeInterval:v33];
      if (v35)
      {
        v36 = v35;
        v37 = sub_2C58C8();
        v39 = v38;

        v40 = [*(v2 + 128) stringFromTimeInterval:v33];
        if (v40)
        {
          v41 = v40;
          v42 = sub_2C58C8();
          v44 = v43;

          v45 = enum case for FrameName.totalReadTime(_:);
          v46 = sub_2BF0C8();
          v47 = *(v46 - 8);
          v48 = v75;
          (*(v47 + 104))(v75, v45, v46);
          v49 = *(v47 + 56);
          v94 = v37;
          v49(v48, 0, 1, v46);
          v50 = sub_2BE8D8();
          (*(*(v50 - 8) + 56))(v76, 1, 1, v50);
          v51 = sub_2BEAF8();
          v99 = v42;
          v100 = v44;
          v97 = 32;
          v98 = 0xE100000000000000;
          v95 = 10;
          v96 = 0xE100000000000000;
          sub_7212C(v51, v52, v53);
          v54 = sub_2C60F8();
          v56 = v55;

          v57 = sub_72084((v2 + 8), *(v2 + 32))[5];
          v58 = v77;
          sub_2BE5E8();
          v59 = sub_1E2374(v57, v58);
          v61 = v60;
          (*(v80 + 8))(v58, v81);
          v62 = v91;
          *v91 = v33;
          *(v62 + 1) = v94;
          *(v62 + 2) = v39;
          *(v62 + 3) = v54;
          *(v62 + 4) = v56;
          *(v62 + 5) = v59;
          *(v62 + 6) = v61;
          (*(v78 + 104))();
          v63 = sub_2C4198();
          if (!v63)
          {
            v63 = sub_2C4218();
          }

          v65 = v86;
          v64 = v87;
          *v86 = v63;
          v66 = *(sub_6620C(&qword_3C5E18, &unk_2F3EC0) + 48);
          v67 = enum case for ColorScheme.light(_:);
          v68 = sub_2C2548();
          v69 = *(v68 - 8);
          (*(v69 + 104))(v65 + v66, v67, v68);
          (*(v69 + 56))(v65 + v66, 0, 1, v68);
          (*(v85 + 104))(v65, enum case for HighlightCoverStyle.textOnly(_:), v64);
          v70 = v83;
          v71 = v90;
          v72 = v84;
          (*(v83 + 16))(v82, v90, v84);
          sub_2C19E8();
          (*(v70 + 8))(v71, v72);
          v34 = 0;
        }

        else
        {

          v34 = 1;
        }
      }
    }

    v73 = sub_2C19F8();
    return (*(*(v73 - 8) + 56))(a1, v34, 1, v73);
  }

  return result;
}

uint64_t sub_1E9F38@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v70 = sub_2C1428();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = (&v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_2C19D8();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v67 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v4 - 8);
  v60 = &v58 - v5;
  v6 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v6 - 8);
  v8 = &v58 - v7;
  v66 = sub_2BEB08();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v58 - v11;
  v12 = sub_2C0D88();
  __chkstk_darwin(v12 - 8);
  v71 = sub_2C0DB8();
  v61 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3C04C8, &unk_2F0B30);
  __chkstk_darwin(v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_2BF4A8();
  v74 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6620C(&qword_3C5E08, &unk_2F3EB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v58 - v21;
  v23 = type metadata accessor for LongestAudiobookHighlight(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_72084((v1 + 8), *(v1 + 32))[6] < 2)
  {
    goto LABEL_12;
  }

  v27 = *(v1 + 32);
  v59 = v1;
  sub_72084((v1 + 8), v27);
  sub_E79E4(v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_69198(v22, &qword_3C5E08, &unk_2F3EB0);
LABEL_12:
    v41 = 1;
    v42 = v75;
    goto LABEL_13;
  }

  sub_1ED61C(v22, v26, type metadata accessor for LongestAudiobookHighlight);
  sub_6932C(v26 + *(v23 + 20), v16, &qword_3C04C8, &unk_2F0B30);
  v28 = v74;
  if ((*(v74 + 48))(v16, 1, v17) == 1)
  {
    sub_1ED684(v26, type metadata accessor for LongestAudiobookHighlight);
    sub_69198(v16, &qword_3C04C8, &unk_2F0B30);
    goto LABEL_12;
  }

  (*(v28 + 32))(v19, v16, v17);
  v29 = sub_2BF488();
  if ((v30 & 1) != 0 || (v31 = sub_1ECD44(v29), !v32))
  {
    (*(v28 + 8))(v19, v17);
    sub_1ED684(v26, type metadata accessor for LongestAudiobookHighlight);
    goto LABEL_12;
  }

  v33 = v31;
  v58 = v32;
  v34 = sub_1ED6E4(&qword_3C04D0, &type metadata accessor for AudiobookInfo, &protocol conformance descriptor for AudiobookInfo);
  sub_2BF9F8();
  v76[3] = v17;
  v76[4] = v34;
  v35 = sub_720C8(v76);
  (*(v28 + 16))(v35, v19, v17);
  sub_2C0D78();
  sub_68CD0(v76);
  sub_2C0DA8();
  if ((v26[1] & 1) != 0 || (v36 = [*(v59 + 120) stringFromTimeInterval:*v26]) == 0)
  {
    v38 = 0;
    v40 = 0;
  }

  else
  {
    v37 = v36;
    v38 = sub_2C58C8();
    v40 = v39;
  }

  v45 = enum case for FrameName.totalListeningTime(_:);
  v46 = sub_2BF0C8();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v8, v45, v46);
  (*(v47 + 56))(v8, 0, 1, v46);
  v48 = sub_2BE8D8();
  (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
  sub_2BF488();
  sub_2BEAF8();
  v49 = v67;
  v50 = v58;
  *v67 = v33;
  v49[1] = v50;
  v49[2] = v38;
  v49[3] = v40;
  (*(v63 + 104))(v49, enum case for HighlightFrameViewModel.Kind.longestAudiobook(_:), v65);
  sub_6620C(&qword_3BC180, &unk_2F3EA0);
  v51 = v61;
  v52 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2E3F30;
  (*(v51 + 16))(v53 + v52, v72, v71);
  v54 = v68;
  v55 = v69;
  *v69 = v53;
  (*(v54 + 104))(v55, enum case for HighlightCoverStyle.coverStack(_:), v70);
  v56 = v64;
  v57 = v66;
  (*(v64 + 16))(v62, v73, v66);
  v42 = v75;
  sub_2C19E8();
  (*(v56 + 8))(v73, v57);
  (*(v51 + 8))(v72, v71);
  (*(v74 + 8))(v19, v17);
  sub_1ED684(v26, type metadata accessor for LongestAudiobookHighlight);
  v41 = 0;
LABEL_13:
  v43 = sub_2C19F8();
  return (*(*(v43 - 8) + 56))(v42, v41, 1, v43);
}

uint64_t sub_1EA9B4@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v62 = sub_2C1428();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = (v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_2C19D8();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v65 = (v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v4 - 8);
  v53 = v52 - v5;
  v6 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v6 - 8);
  v8 = v52 - v7;
  v59 = sub_2BEB08();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = v52 - v11;
  v12 = sub_2C0D88();
  __chkstk_darwin(v12 - 8);
  v63 = sub_2C0DB8();
  v54 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3BDCC0, &qword_2E4ED0);
  __chkstk_darwin(v14 - 8);
  v16 = v52 - v15;
  v17 = sub_2BF258();
  v67 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6620C(&qword_3C5E00, &qword_2F3E98);
  __chkstk_darwin(v20 - 8);
  v22 = v52 - v21;
  v23 = type metadata accessor for LongestBookHighlight(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_72084((v1 + 8), *(v1 + 32))[6] < 2)
  {
    goto LABEL_9;
  }

  v27 = *(v1 + 32);
  v52[1] = v1;
  sub_72084((v1 + 8), v27);
  sub_E8F6C(v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_69198(v22, &qword_3C5E00, &qword_2F3E98);
LABEL_9:
    v31 = 1;
    v32 = v68;
LABEL_10:
    v33 = sub_2C19F8();
    return (*(*(v33 - 8) + 56))(v32, v31, 1, v33);
  }

  sub_1ED61C(v22, v26, type metadata accessor for LongestBookHighlight);
  sub_6932C(v26 + *(v23 + 20), v16, &qword_3BDCC0, &qword_2E4ED0);
  v28 = v67;
  if ((*(v67 + 48))(v16, 1, v17) == 1)
  {
    sub_1ED684(v26, type metadata accessor for LongestBookHighlight);
    sub_69198(v16, &qword_3BDCC0, &qword_2E4ED0);
    goto LABEL_9;
  }

  (*(v28 + 32))(v19, v16, v17);
  v29 = sub_2BF248();
  if (v30 & 1) != 0 || (v26[1])
  {
    (*(v28 + 8))(v19, v17);
    sub_1ED684(v26, type metadata accessor for LongestBookHighlight);
    goto LABEL_9;
  }

  v35 = v29;
  v36 = *v26;
  v37 = sub_1ED6E4(&qword_3C04B8, &type metadata accessor for BookInfo, &protocol conformance descriptor for BookInfo);
  sub_2BF9F8();
  v69[3] = v17;
  v69[4] = v37;
  v38 = sub_720C8(v69);
  (*(v28 + 16))(v38, v19, v17);
  sub_2C0D78();
  sub_68CD0(v69);
  result = sub_2C0DA8();
  if ((~*&v36 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v36 < 9.22337204e18)
  {
    v39 = enum case for FrameName.longestBookReadPageCount(_:);
    v40 = sub_2BF0C8();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v8, v39, v40);
    (*(v41 + 56))(v8, 0, 1, v40);
    v42 = sub_2BE8D8();
    (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
    sub_2BF248();
    sub_2BEAF8();
    v43 = v65;
    *v65 = v35;
    v43[1] = v36;
    (*(v56 + 104))();
    sub_6620C(&qword_3BC180, &unk_2F3EA0);
    v44 = v54;
    v45 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2E3F30;
    (*(v44 + 16))(v46 + v45, v66, v63);
    v47 = v60;
    v48 = v61;
    *v61 = v46;
    (*(v47 + 104))(v48, enum case for HighlightCoverStyle.coverStack(_:), v62);
    v49 = v57;
    v50 = v64;
    v51 = v59;
    (*(v57 + 16))(v55, v64, v59);
    v32 = v68;
    sub_2C19E8();
    (*(v49 + 8))(v50, v51);
    (*(v44 + 8))(v66, v63);
    (*(v67 + 8))(v19, v17);
    sub_1ED684(v26, type metadata accessor for LongestBookHighlight);
    v31 = 0;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1EB41C@<X0>(uint64_t a1@<X8>)
{
  v65 = sub_2C1428();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2C19D8();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v62 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v6 - 8);
  v55 = &v49 - v7;
  v8 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v8 - 8);
  v54 = &v49 - v9;
  v10 = sub_2BEB08();
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v49 - v13;
  v14 = sub_2BE408();
  v52 = *(v14 - 8);
  v53 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2BE428();
  v51 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6620C(&qword_3C5DF8, &qword_2F3E90);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  v23 = type metadata accessor for FinishedSeriesHighlight(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_72084((v1 + 8), *(v1 + 32));
  sub_E67A0(v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_69198(v22, &qword_3C5DF8, &qword_2F3E90);
    v27 = 1;
  }

  else
  {
    v50 = a1;
    sub_1ED61C(v22, v26, type metadata accessor for FinishedSeriesHighlight);
    sub_72084(v26, v26[3]);
    sub_2BF328();
    swift_getAssociatedTypeWitness();
    sub_6620C(&qword_3BC2C8, &qword_2E2FA0);
    v30 = sub_2C6358();

    v49 = sub_1ED124(v30, v31);

    sub_2BE418();
    sub_2BE3F8();
    v32 = sub_2BE558();
    v34 = v33;
    (*(v52 + 8))(v16, v53);
    (*(v51 + 8))(v19, v17);
    v35 = enum case for FrameName.finishedSeries(_:);
    v36 = sub_2BF0C8();
    v37 = *(v36 - 8);
    v38 = v54;
    (*(v37 + 104))(v54, v35, v36);
    (*(v37 + 56))(v38, 0, 1, v36);
    v39 = sub_2BE8D8();
    (*(*(v39 - 8) + 56))(v55, 1, 1, v39);
    sub_72084(v26, v26[3]);
    sub_2BF3B8();
    v40 = v56;
    sub_2BEAF8();
    sub_72084(v26, v26[3]);
    v41 = sub_2BF3C8();
    v42 = v61;
    v43 = v62;
    *v62 = v41;
    v43[1] = v44;
    v43[2] = v32;
    v43[3] = v34;
    (*(v60 + 104))(v43, enum case for HighlightFrameViewModel.Kind.finishedSeries(_:), v42);
    v45 = v63;
    v46 = v64;
    *v64 = v49;
    (*(v45 + 104))(v46, enum case for HighlightCoverStyle.coverStack(_:), v65);
    v47 = v58;
    v48 = v59;
    (*(v58 + 16))(v57, v40, v59);
    a1 = v50;
    sub_2C19E8();
    (*(v47 + 8))(v40, v48);
    sub_1ED684(v26, type metadata accessor for FinishedSeriesHighlight);
    v27 = 0;
  }

  v28 = sub_2C19F8();
  return (*(*(v28 - 8) + 56))(a1, v27, 1, v28);
}

uint64_t sub_1EBD34@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_2C0D88();
  __chkstk_darwin(v5 - 8);
  v64 = sub_2C0DB8();
  v6 = *(v64 - 8);
  __chkstk_darwin(v64);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C1428();
  v74 = *(v9 - 8);
  __chkstk_darwin(v9);
  v75 = (v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2C19D8();
  v71 = *(v11 - 8);
  v72 = v11;
  __chkstk_darwin(v11);
  v73 = (v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v13 - 8);
  v66 = v58 - v14;
  v15 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v15 - 8);
  v65 = v58 - v16;
  v17 = sub_2BEB08();
  v69 = *(v17 - 8);
  v70 = v17;
  __chkstk_darwin(v17);
  v68 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v67 = v58 - v20;
  v21 = type metadata accessor for GenreHighlight(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v76 = v58 - v26;
  sub_72084(v2 + 1, v2[4]);
  v27 = sub_EA2C8();
  if (!v27)
  {
    goto LABEL_9;
  }

  if (!*(v27 + 2))
  {

    goto LABEL_9;
  }

  sub_1ED5B8(&v27[(*(v22 + 80) + 32) & ~*(v22 + 80)], v24);

  v28 = v76;
  sub_1ED61C(v24, v76, type metadata accessor for GenreHighlight);
  v29 = *v28;
  v30 = *(*v28 + 16);
  if (!v30)
  {
    sub_1ED684(v28, type metadata accessor for GenreHighlight);
    goto LABEL_9;
  }

  v62 = v9;
  v63 = v29;
  v31 = v29 + 32;
  sub_691F8(v29 + 32, v79);
  v32 = v3[8];
  if (sub_72084(v3 + 1, v3[4])[6] != 1 && v30 < v32)
  {
    sub_1ED684(v28, type metadata accessor for GenreHighlight);
    sub_68CD0(v79);
LABEL_9:
    v33 = sub_2C19F8();
    return (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
  }

  v61 = sub_2BFAB8();
  v60 = v35;
  sub_72084(v79, v79[3]);
  sub_2BF9F8();
  v36 = *(v63 + 16);
  if (v36 >= 5)
  {
    v37 = 5;
  }

  else
  {
    v37 = *(v63 + 16);
  }

  v38 = _swiftEmptyArrayStorage;
  if (v36)
  {
    v58[1] = v3;
    v59 = a1;
    v78 = _swiftEmptyArrayStorage;
    sub_64654(0, v37, 0);
    v38 = v78;
    v39 = v64;
    do
    {
      sub_691F8(v31, v77);
      sub_2C0D78();
      sub_2C0DA8();
      sub_68CD0(v77);
      v78 = v38;
      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        sub_64654((v40 > 1), v41 + 1, 1);
        v39 = v64;
        v38 = v78;
      }

      v38[2] = v41 + 1;
      (*(v6 + 32))(v38 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v41, v8, v39);
      v31 += 40;
      --v37;
    }

    while (v37);
    a1 = v59;
  }

  v42 = enum case for FrameName.mostReadGenre(_:);
  v43 = sub_2BF0C8();
  v44 = *(v43 - 8);
  v45 = v65;
  (*(v44 + 104))(v65, v42, v43);
  (*(v44 + 56))(v45, 0, 1, v43);
  v46 = sub_2BE8D8();
  (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
  v47 = v60;

  v48 = v61;
  v49 = v67;
  sub_2BEAF8();
  v50 = *(v63 + 16);
  v51 = v72;
  v52 = v73;
  *v73 = v48;
  v52[1] = v47;
  v52[2] = v50;
  (*(v71 + 104))(v52, enum case for HighlightFrameViewModel.Kind.topGenre(_:), v51);
  v53 = v74;
  v54 = v75;
  *v75 = v38;
  (*(v53 + 104))(v54, enum case for HighlightCoverStyle.coverStack(_:), v62);
  v56 = v69;
  v55 = v70;
  (*(v69 + 16))(v68, v49, v70);
  sub_2C19E8();
  (*(v56 + 8))(v49, v55);
  sub_1ED684(v76, type metadata accessor for GenreHighlight);
  v57 = sub_2C19F8();
  (*(*(v57 - 8) + 56))(a1, 0, 1, v57);
  return sub_68CD0(v79);
}

uint64_t sub_1EC678@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = sub_2C1428();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_2C19D8();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v9 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_2BEB08();
  v50 = *(v12 - 8);
  v51 = v12;
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = sub_6620C(&qword_3C0460, &unk_2F3E80);
  __chkstk_darwin(v18 - 8);
  v20 = &v45 - v19;
  v21 = type metadata accessor for TopAuthorHighlightData(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_72084((v1 + 8), *(v1 + 32))[6] < 2)
  {
    goto LABEL_7;
  }

  v25 = *(v1 + 32);
  v49 = v1;
  sub_72084((v1 + 8), v25);
  sub_EAF0C(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_69198(v20, &qword_3C0460, &unk_2F3E80);
LABEL_7:
    v42 = 1;
    v41 = v57;
    goto LABEL_8;
  }

  sub_1ED61C(v20, v24, type metadata accessor for TopAuthorHighlightData);
  v58 = *&v24[*(v21 + 20)];
  sub_6620C(&qword_3BDC38, &qword_2FA9D0);
  sub_72B74(&qword_3C5DF0, &qword_3BDC38, &qword_2FA9D0, &protocol conformance descriptor for [A]);
  if ((sub_2C5D28() & 1) == 0)
  {
    sub_1ED684(v24, type metadata accessor for TopAuthorHighlightData);
    goto LABEL_7;
  }

  v26 = sub_2BF508();
  v45 = v27;
  v46 = v26;

  v47 = sub_1ED008(v28);
  v48 = sub_1ED124(v47, v29);
  v30 = enum case for FrameName.mostReadAuthor(_:);
  v31 = sub_2BF0C8();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v11, v30, v31);
  (*(v32 + 56))(v11, 0, 1, v31);
  v33 = sub_2BE8D8();
  (*(*(v33 - 8) + 56))(v8, 1, 1, v33);

  v35 = v46;
  sub_2BEAF8();
  v36 = v47[2];

  *v5 = v35;
  v5[1] = v34;
  v5[2] = v36;
  (*(v52 + 104))(v5, enum case for HighlightFrameViewModel.Kind.topAuthor(_:), v53);
  v37 = v54;
  v38 = v55;
  *v55 = v48;
  (*(v37 + 104))(v38, enum case for HighlightCoverStyle.coverStack(_:), v56);
  v40 = v50;
  v39 = v51;
  (*(v50 + 16))(v14, v17, v51);
  v41 = v57;
  sub_2C19E8();
  (*(v40 + 8))(v17, v39);
  sub_1ED684(v24, type metadata accessor for TopAuthorHighlightData);
  v42 = 0;
LABEL_8:
  v43 = sub_2C19F8();
  return (*(*(v43 - 8) + 56))(v41, v42, 1, v43);
}

uint64_t sub_1ECD44(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v2 setUnitsStyle:2];
  [v2 setFormattingContext:2];
  v3 = a1 % 3600;
  [v2 setAllowedUnits:32];
  v4 = [v2 stringFromTimeInterval:a1];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2C58C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  [v2 setAllowedUnits:64];
  v9 = [v2 stringFromTimeInterval:v3];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2C58C8();
    v13 = v12;

    if (a1 >= 3600)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
    if (a1 >= 3600)
    {
LABEL_6:
      v14 = sub_5BB78(0, 1, 1, _swiftEmptyArrayStorage);
      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_5BB78((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v17 = &v14[16 * v16];
      *(v17 + 4) = v6;
      *(v17 + 5) = v8;
      if (v3 < 60)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  v14 = _swiftEmptyArrayStorage;
  if (v3 < 60)
  {
LABEL_9:

    goto LABEL_17;
  }

LABEL_12:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_5BB78(0, *(v14 + 2) + 1, 1, v14);
  }

  v19 = *(v14 + 2);
  v18 = *(v14 + 3);
  if (v19 >= v18 >> 1)
  {
    v14 = sub_5BB78((v18 > 1), v19 + 1, 1, v14);
  }

  *(v14 + 2) = v19 + 1;
  v20 = &v14[16 * v19];
  *(v20 + 4) = v11;
  *(v20 + 5) = v13;
LABEL_17:
  sub_6620C(&qword_3BCA70, &unk_2E7120);
  sub_72B74(&qword_3C5E10, &qword_3BCA70, &unk_2E7120, &protocol conformance descriptor for [A]);
  v21 = sub_2C5848();

  return v21;
}

void *sub_1ED008(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_691F8(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_691F8(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1812F8(v1);
    }

    sub_68CD0(&v1[i]);
    result = sub_68D1C(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    sub_68CD0((v1 + v6));
    result = sub_68D1C(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_1ED124(void *a1, __n128 a2)
{
  v3 = sub_2C0D88();
  __chkstk_darwin(v3 - 8);
  v34 = sub_2C0DB8();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = a1[2];
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = a1 + 4;
  sub_72084(a1 + 4, a1[7]);
  sub_2BF9F8();
  v11 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  do
  {
    sub_691F8(v10, v35);
    sub_72084(v35, v36);
    sub_2BF8F8();
    v12 = sub_2BFA98();
    v14 = v13;
    if (v12 == sub_2BFA98() && v14 == v15)
    {

LABEL_12:
      sub_2C0D78();
      sub_2C0DA8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_5BE68(0, v11[2] + 1, 1, v11);
      }

      v23 = v11[2];
      v22 = v11[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v25 = sub_5BE68((v22 > 1), v23 + 1, 1, v11);
        v26 = v8;
        v11 = v25;
      }

      else
      {
        v25 = v11;
        v26 = v8;
      }

      goto LABEL_16;
    }

    v17 = sub_2C65B8();

    if (v17)
    {
      goto LABEL_12;
    }

    sub_72084(v35, v36);
    sub_2BF8F8();
    v18 = sub_2BFA98();
    v20 = v19;
    if (v18 == sub_2BFA98() && v20 == v21)
    {

LABEL_20:
      sub_2C0D78();
      sub_2C0DA8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v28 = v33;
      }

      else
      {
        v28 = sub_5BE68(0, v33[2] + 1, 1, v33);
      }

      v23 = v28[2];
      v29 = v28[3];
      v24 = v23 + 1;
      if (v23 >= v29 >> 1)
      {
        v25 = sub_5BE68((v29 > 1), v23 + 1, 1, v28);
        v26 = v32;
        v33 = v25;
      }

      else
      {
        v33 = v28;
        v25 = v28;
        v26 = v32;
      }

LABEL_16:
      v25[2] = v24;
      (*(v4 + 32))(v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v26, v34);
      goto LABEL_17;
    }

    v27 = sub_2C65B8();

    if (v27)
    {
      goto LABEL_20;
    }

LABEL_17:
    sub_68CD0(v35);
    v10 += 5;
    --v9;
  }

  while (v9);
  if (v33[2] >= v11[2])
  {
    v30 = v33;
  }

  else
  {
    v30 = v11;
  }

  return v30;
}

uint64_t sub_1ED548(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C5DD8, &qword_2F3E68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ED5B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenreHighlight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ED61C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ED684(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ED6E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ED750(uint64_t a1)
{
  v2 = sub_2C2548();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2C2EB8();
}

uint64_t sub_1ED818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E38();
  *a1 = result & 1;
  return result;
}

uint64_t SeriesRoomHeaderComponent.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HostProxy(0);
  sub_1EECC0(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  *a1 = sub_2C2568();
  *(a1 + 8) = v2 & 1;
  v3 = type metadata accessor for SeriesRoomHeaderComponent(0);
  v4 = v3[5];
  *(a1 + v4) = swift_getKeyPath();
  sub_6620C(&qword_3C0C78, &qword_2F3F00);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + v3[6];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v3[7];
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  return result;
}

uint64_t sub_1ED994@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E38();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ED9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_15059C(a1, a2, a3);
  result = sub_2C3108();
  *a4 = v6;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_1EDA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_15059C(a1, a2, a3);
  result = sub_2C3108();
  *a4 = v6;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_1EDB1C()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1EDC5C@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C0C78, &qword_2F3F00);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SeriesRoomHeaderComponent(0);
  sub_6932C(v1 + *(v10 + 20), v9, &qword_3C0C78, &qword_2F3F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C2548();
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

uint64_t sub_1EDE64()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SeriesRoomHeaderComponent(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t SeriesRoomHeaderComponent.content(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a1;
  v36 = a2;
  v5 = sub_2C0E48();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C5E20, &qword_2F3F60);
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = sub_6620C(&qword_3C5E28, &qword_2F3F68);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v34 - v14;
  sub_1EE430(a1, v3, v11);
  (*(v6 + 104))(v8, enum case for PageMarginType.padding(_:), v5);
  v16 = sub_1EEB50();
  sub_2C3C28();
  (*(v6 + 8))(v8, v5);
  sub_1EED08(v11);
  sub_6620C(&qword_3C5E50, &qword_2F3F78);
  v37 = v9;
  v38 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_2C2B28();
  v18 = sub_1EECC0(&qword_3C5E58, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v37 = v17;
  v38 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v36;
  sub_2C3EE8();
  (*(v13 + 8))(v15, v12);
  v20 = sub_2C46A8();
  v22 = v21;
  v23 = v19 + *(sub_6620C(&qword_3C5E60, &qword_2F3F80) + 36);
  sub_1EF024(v34[1], v35, v23);
  v24 = (v23 + *(sub_6620C(&qword_3C5E68, &qword_2F3F88) + 36));
  *v24 = v20;
  v24[1] = v22;
  KeyPath = swift_getKeyPath();
  v26 = (v19 + *(sub_6620C(&qword_3C5E70, &unk_2F3F90) + 36));
  v27 = *(sub_6620C(&qword_3BE860, &qword_2E6F30) + 28);
  v28 = enum case for ColorScheme.dark(_:);
  v29 = sub_2C2548();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = KeyPath;
  v30 = swift_getKeyPath();
  v31 = v19 + *(sub_6620C(&qword_3C5E78, &qword_2F3FD0) + 36);
  *v31 = v30;
  *(v31 + 8) = 1;
  v32 = *(sub_6620C(&qword_3C5E80, &qword_2F3FD8) + 36);
  *(v19 + v32) = swift_getKeyPath();
  sub_6620C(&qword_3C0F18, &qword_2EAD10);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1EE430@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v55 = a3;
  v56 = sub_2C3428();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C2548();
  __chkstk_darwin(v5 - 8);
  v51 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2C2048();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C6048, &qword_2F41D0);
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v45 = v41 - v10;
  v42 = sub_6620C(&qword_3C6050, &qword_2FA9B0);
  v11 = *(v42 - 8);
  __chkstk_darwin(v42);
  v57 = v41 - v12;
  v13 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v13 - 8);
  v15 = v41 - v14;
  v41[0] = v41 - v14;
  v16 = sub_6620C(&qword_3C6058, &qword_2F41D8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[1] = v19;
  __chkstk_darwin(v20);
  v22 = v41 - v21;
  v43 = sub_2C15B8();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SeriesRoomHeaderComponentModel(0);
  v26 = *(v17 + 16);
  v26(v22, &a1[v25[7]], v16);
  v26(v19, &a1[v25[8]], v16);
  sub_6932C(&a1[v25[9]], v58, &qword_3BDFF8, &qword_2F41E0);
  sub_6932C(&a1[v25[10]], v15, &qword_3BDF58, &unk_2E5B70);
  (*(v11 + 16))(v57, &a1[v25[12]], v42);
  (*(v46 + 16))(v45, &a1[v25[11]], v47);
  (*(v49 + 16))(v48, &a1[v25[6]], v50);

  sub_1EDC5C(v51);
  sub_2C15A8();
  v27 = v53;
  sub_2C3568();
  sub_1EECC0(&qword_3C5E48, &type metadata accessor for SeriesRoomHeaderView, &protocol conformance descriptor for SeriesRoomHeaderView);
  v28 = v55;
  v29 = v43;
  sub_2C3F18();
  (*(v54 + 8))(v27, v56);
  (*(v44 + 8))(v24, v29);
  LOBYTE(v27) = sub_2C3768();
  v30 = sub_1EDB1C();
  swift_getKeyPath();
  v58[0] = v30;
  sub_1EECC0(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  swift_beginAccess();

  sub_2C24D8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = sub_6620C(&qword_3C5E40, &qword_2F3F70);
  v40 = v28 + *(result + 36);
  *v40 = v27;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  return result;
}

unint64_t sub_1EEB50()
{
  result = qword_3C5E30;
  if (!qword_3C5E30)
  {
    sub_718D4(&qword_3C5E20, &qword_2F3F60);
    sub_1EEBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5E30);
  }

  return result;
}

unint64_t sub_1EEBD4()
{
  result = qword_3C5E38;
  if (!qword_3C5E38)
  {
    sub_718D4(&qword_3C5E40, &qword_2F3F70);
    sub_2C15B8();
    sub_1EECC0(&qword_3C5E48, &type metadata accessor for SeriesRoomHeaderView, &protocol conformance descriptor for SeriesRoomHeaderView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5E38);
  }

  return result;
}

uint64_t sub_1EECC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1EED08(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C5E20, &qword_2F3F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1EED70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_691F8(a1, v13);
  v12[0] = xmmword_2ECB90;
  v3 = type metadata accessor for ContextActionMenuView(0);
  memset(&v12[1], 0, 32);
  a2[3] = v3;
  a2[4] = sub_1EECC0(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
  v4 = sub_720C8(a2);
  *v4 = swift_getKeyPath();
  *(v4 + 40) = 0;
  sub_691F8(v13, v11);
  sub_C04C8(v12, v10);
  sub_CC804(v11, v10, v4 + v3[5]);
  sub_72084(v13, v13[3]);
  v5 = sub_2BF3B8();
  v7 = v6;
  sub_C12F8(v12);
  v8 = (v4 + v3[6]);
  *v8 = v5;
  v8[1] = v7;
  *(v4 + v3[7]) = 0;
  return sub_68CD0(v13);
}

uint64_t sub_1EEEA0()
{
  v0 = sub_2C2978();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C2968();
  sub_2C2738();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  CGRectGetMinY(v14);
  sub_2C2B28();
  sub_1EECC0(&qword_3C5E58, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  return sub_2C26F8();
}

uint64_t sub_1EF024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v53 = a3;
  v4 = sub_6620C(&unk_3C44D0, &unk_2F11E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v51 = sub_6620C(&qword_3C6010, &qword_2F41A0);
  v7 = *(v51 - 8);
  __chkstk_darwin(v51);
  v9 = &v48 - v8;
  v50 = sub_6620C(&qword_3C6018, &qword_2F41A8);
  v10 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = &v48 - v11;
  v49 = sub_6620C(&qword_3C6020, &qword_2F41B0);
  __chkstk_darwin(v49);
  v14 = &v48 - v13;
  sub_6620C(&qword_3C6028, &qword_2F41B8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2E15C0;
  sub_2C41F8();
  v16 = sub_2C4248();

  *(v15 + 32) = v16;
  sub_2C41F8();
  v17 = sub_2C4248();

  *(v15 + 40) = v17;
  sub_2C4608();
  if (sub_1EDE64())
  {
    sub_2C47C8();
  }

  else
  {
    sub_2C47A8();
  }

  v18 = sub_1EDE64();
  v52 = a1;
  if (v18)
  {
    sub_2C47D8();
  }

  else
  {
    sub_2C47B8();
  }

  sub_2C2888();
  v56 = v58;
  v54 = v57[0];
  v55 = v57[1];
  v19 = *(v48 + 16);
  v20 = *(v19 + 16);
  v21 = sub_2C0DB8();
  v22 = *(v21 - 8);
  v23 = v22;
  if (v20)
  {
    (*(v22 + 16))(v6, v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v21);
    (*(v23 + 56))(v6, 0, 1, v21);
  }

  else
  {
    (*(v22 + 56))(v6, 1, 1, v21);
  }

  v24 = [objc_opt_self() systemGroupedBackgroundColor];
  v25 = sub_2C4178();
  v28 = sub_1F09DC(v25, v26, v27);
  sub_2C3BF8();

  sub_69198(v6, &unk_3C44D0, &unk_2F11E0);
  sub_1F0A30(v57);
  sub_6620C(&qword_3C6038, &qword_2F41C0);
  *&v54 = &type metadata for LinearGradient;
  *(&v54 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v29 = sub_2C2B28();
  v30 = sub_1EECC0(&qword_3C5E58, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  *&v54 = v29;
  *(&v54 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v51;
  sub_2C3EE8();
  (*(v7 + 8))(v9, v31);
  v32 = sub_2C3748();
  v33 = sub_2C2A18();
  (*(v10 + 32))(v14, v12, v50);
  v34 = &v14[*(v49 + 36)];
  *v34 = v33;
  v34[8] = v32;
  v35 = v52 + *(type metadata accessor for SeriesRoomHeaderComponent(0) + 28);
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = *(v35 + 9);
  v39 = *(v35 + 16);
  *&v54 = v36;
  BYTE8(v54) = v37;
  BYTE9(v54) = v38;
  *&v55 = v39;
  v40 = PageNamespace.wrappedValue.getter();
  LODWORD(v33) = sub_2C3638();
  sub_2C47E8();
  v42 = v41;
  v44 = v43;
  v45 = v53;
  sub_1F0A84(v14, v53);
  result = sub_6620C(&qword_3C6040, &qword_2F41C8);
  v47 = v45 + *(result + 36);
  *v47 = 0xD000000000000024;
  *(v47 + 8) = 0x8000000000306DD0;
  *(v47 + 16) = v40;
  *(v47 + 24) = v33;
  *(v47 + 32) = v42;
  *(v47 + 40) = v44;
  *(v47 + 48) = 1;
  return result;
}

uint64_t sub_1EF604()
{
  v0 = sub_2C3428();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C2728();
  sub_2C3568();
  sub_2C2748();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  CGRectGetMinY(v14);
  sub_2C47D8();
  sub_2C2B28();
  sub_1EECC0(&qword_3C5E58, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  return sub_2C26E8();
}

uint64_t sub_1EF7C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2C68();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1EF7F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2C68();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1EF874(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_1F0974(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SeriesRoomHeaderComponent);
  sub_1EECC0(&qword_3C5E90, type metadata accessor for SeriesRoomHeaderComponent, &protocol conformance descriptor for SeriesRoomHeaderComponent);
  return sub_2BFD18();
}

uint64_t sub_1EF94C@<X0>(void *a2@<X8>)
{
  result = sub_2C2728();
  *a2 = v4;
  return result;
}

uint64_t sub_1EF978(double *a1)
{
  v1 = sub_6620C(&unk_3C0EA0, &qword_2EAC00);
  __chkstk_darwin(v1);
  v3 = (&v12 - v2);
  v4 = sub_6620C(&qword_3C0C68, &unk_2EAD50);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  sub_2C1E98();
  v10 = sub_2C1EC8();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_29B100(v3);
  sub_6932C(v9, v6, &qword_3C0C68, &unk_2EAD50);
  sub_2C44D8();
  sub_69198(v3, &unk_3C0EA0, &qword_2EAC00);
  return sub_69198(v9, &qword_3C0C68, &unk_2EAD50);
}

uint64_t sub_1EFB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_1F0974(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UberNavigationBarTransitionInfoUpdateViewModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1F08A0(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = sub_6620C(&qword_3C6000, &qword_2F4190);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = sub_6620C(&qword_3C6008, &qword_2F4198);
  v12 = (a3 + *(result + 36));
  *v12 = sub_1EF94C;
  v12[1] = 0;
  v12[2] = sub_1F0904;
  v12[3] = v9;
  return result;
}

uint64_t sub_1EFE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_6620C(&qword_3C5E98, &unk_2F40D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1EFF50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_6620C(&qword_3C5E98, &unk_2F40D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1EFFFC(uint64_t a1)
{
  sub_1F00D8(319, &unk_3C0BB8, type metadata accessor for HostProxy);
  if (v1 <= 0x3F)
  {
    sub_1F00D8(319, &unk_3C5F08, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_1F012C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1F00D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1F012C()
{
  if (!qword_3BC858)
  {
    v0 = sub_2C2558();
    if (!v1)
    {
      atomic_store(v0, &qword_3BC858);
    }
  }
}

unint64_t sub_1F0180()
{
  result = qword_3C5F40;
  if (!qword_3C5F40)
  {
    sub_718D4(&qword_3C5E80, &qword_2F3FD8);
    sub_1F023C();
    sub_1EECC0(&qword_3C5F68, type metadata accessor for UberNavigationBarTransitionInfoUpdateViewModifier, &unk_2F4140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5F40);
  }

  return result;
}

unint64_t sub_1F023C()
{
  result = qword_3C5F48;
  if (!qword_3C5F48)
  {
    sub_718D4(&qword_3C5E78, &qword_2F3FD0);
    sub_1F02F4();
    sub_72B74(&qword_3C1B30, &qword_3C1B38, &qword_2EC290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5F48);
  }

  return result;
}

unint64_t sub_1F02F4()
{
  result = qword_3C5F50;
  if (!qword_3C5F50)
  {
    sub_718D4(&qword_3C5E70, &unk_2F3F90);
    sub_1F03AC();
    sub_72B74(&qword_3BE858, &qword_3BE860, &qword_2E6F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5F50);
  }

  return result;
}

unint64_t sub_1F03AC()
{
  result = qword_3C5F58;
  if (!qword_3C5F58)
  {
    sub_718D4(&qword_3C5E60, &qword_2F3F80);
    sub_718D4(&qword_3C5E28, &qword_2F3F68);
    sub_718D4(&qword_3C5E50, &qword_2F3F78);
    sub_718D4(&qword_3C5E20, &qword_2F3F60);
    sub_1EEB50();
    swift_getOpaqueTypeConformance2();
    sub_2C2B28();
    sub_1EECC0(&qword_3C5E58, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C5F60, &qword_3C5E68, &qword_2F3F88, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5F58);
  }

  return result;
}

uint64_t sub_1F05A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0E28, &qword_2EABD8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1F0630(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0E28, &qword_2EABD8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1F06AC(uint64_t a1)
{
  sub_FF56C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1F0734()
{
  v1 = *(type metadata accessor for UberNavigationBarTransitionInfoUpdateViewModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  sub_6620C(&qword_3C0F18, &qword_2EAD10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(sub_6620C(&unk_3C0EA0, &qword_2EAC00) + 32);
    v8 = sub_2C1EC8();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1F08A0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UberNavigationBarTransitionInfoUpdateViewModifier(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_1F0904(double *a1)
{
  type metadata accessor for UberNavigationBarTransitionInfoUpdateViewModifier(0);

  return sub_1EF978(a1);
}

uint64_t sub_1F0974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1F09DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6030;
  if (!qword_3C6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6030);
  }

  return result;
}

uint64_t sub_1F0A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C6020, &qword_2F41B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1F0B08()
{
  result = qword_3C6060;
  if (!qword_3C6060)
  {
    sub_718D4(&qword_3C6008, &qword_2F4198);
    sub_72B74(&qword_3C6068, &qword_3C6000, &qword_2F4190, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_72B74(&qword_3C6070, &qword_3C6078, &qword_2F4248, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6060);
  }

  return result;
}

unint64_t sub_1F0C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6080;
  if (!qword_3C6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6080);
  }

  return result;
}

unint64_t sub_1F0CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6098;
  if (!qword_3C6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6098);
  }

  return result;
}

uint64_t sub_1F0D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C60A0, &qword_2F4348);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1F0E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3C60A0, &qword_2F4348);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1F0FD4(uint64_t a1)
{
  sub_1F6EB8(319, &qword_3C6110, &type metadata accessor for Date, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_1F6E68(319, &qword_3C6118, &type metadata for FinishedDateType, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_1F6E68(319, &unk_3C6120, &type metadata for Bool, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_1F6EB8(319, &qword_3BD600, &type metadata accessor for SizeConstants, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1F114C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v48 = sub_6620C(&qword_3BD6A0, &qword_2E44A0);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v43 - v3;
  v46 = sub_6620C(&qword_3BD6A8, &unk_2E4290);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = &v43 - v5;
  v7 = sub_2C0C98();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_6620C(&qword_3C6158, &qword_2F43B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_6620C(&qword_3C6160, &qword_2F43C0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  *v12 = sub_2C3178();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v17 = sub_6620C(&qword_3C6168, &unk_2F43C8);
  sub_1F1690(v1, &v12[*(v17 + 44)]);
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v12, v16, &qword_3C6158, &qword_2F43B8);
  v18 = &v16[*(v14 + 44)];
  v19 = v59;
  *(v18 + 4) = v58;
  *(v18 + 5) = v19;
  *(v18 + 6) = v60;
  v20 = v55;
  *v18 = v54;
  *(v18 + 1) = v20;
  v21 = v57;
  *(v18 + 2) = v56;
  *(v18 + 3) = v21;
  v22 = sub_2C3778();
  v23 = sub_2C3798();
  sub_2C3798();
  if (sub_2C3798() != v22)
  {
    v23 = sub_2C3798();
  }

  v24 = v2 + *(type metadata accessor for FinishedDatePickerView(0) + 24);
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v24) = *(v24 + 16);
  v51 = v25;
  v52 = v26;
  v53 = v24;
  sub_6620C(&qword_3C27A8, &qword_2EDC50);
  sub_2C44C8();
  if (v50)
  {
    sub_29AAE0(v9);
    sub_2C1768();
    (*(v44 + 8))(v9, v7);
    swift_getKeyPath();
    v27 = v46;
    sub_2C0BC8();

    (*(v45 + 8))(v6, v27);
    KeyPath = swift_getKeyPath();
    sub_85AF8(KeyPath, v29, v30);
    v31 = v48;
    sub_2C0BD8();

    (*(v47 + 8))(v4, v31);
  }

  sub_2C24D8();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v49;
  sub_69130(v16, v49, &qword_3C6160, &qword_2F43C0);
  result = sub_6620C(&qword_3C6170, &qword_2F43D8);
  v42 = v40 + *(result + 36);
  *v42 = v23;
  *(v42 + 8) = v33;
  *(v42 + 16) = v35;
  *(v42 + 24) = v37;
  *(v42 + 32) = v39;
  *(v42 + 40) = 0;
  return result;
}

uint64_t sub_1F1690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FinishedDateWheel(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  sub_6620C(&qword_3C60A0, &qword_2F4348);
  sub_2C44F8();
  v11 = type metadata accessor for FinishedDatePickerView(0);
  v12 = (a1 + *(v11 + 20));
  v13 = *v12;
  v39 = v12[1];
  v40 = v13;
  v38 = *(v12 + 16);
  v44 = v13;
  v45 = v39;
  v46 = v38;
  v37 = sub_6620C(&qword_3C6178, &qword_2F4440);
  sub_2C44F8();
  v14 = v41;
  v15 = v42;
  v16 = v43;
  v17 = (a1 + *(v11 + 24));
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = *(v17 + 16);
  v44 = v18;
  v45 = v19;
  v46 = v17;
  sub_6620C(&qword_3C27A8, &qword_2EDC50);
  sub_2C44F8();
  v20 = v41;
  v21 = v42;
  v22 = v43;
  v23 = &v10[v5[7]];
  *v23 = v14;
  *(v23 + 1) = v15;
  v23[16] = v16;
  v24 = &v10[v5[8]];
  *v24 = v20;
  *(v24 + 1) = v21;
  v24[16] = v22;
  v25 = &v10[v5[9]];
  LOBYTE(v41) = 1;
  sub_2C4368();
  v26 = v45;
  *v25 = v44;
  *(v25 + 1) = v26;
  v27 = v5[10];
  *&v10[v27] = swift_getKeyPath();
  sub_6620C(&qword_3C0C88, &unk_2EAD00);
  swift_storeEnumTagMultiPayload();
  v28 = v5[11];
  *&v10[v28] = swift_getKeyPath();
  sub_6620C(&qword_3C6180, &qword_2F44B0);
  swift_storeEnumTagMultiPayload();
  v29 = v5[12];
  *&v10[v29] = swift_getKeyPath();
  sub_6620C(&qword_3C6188, &qword_2FBD50);
  swift_storeEnumTagMultiPayload();
  v30 = v5[13];
  *&v10[v30] = swift_getKeyPath();
  sub_6620C(&qword_3C6190, &qword_2F4520);
  swift_storeEnumTagMultiPayload();
  v44 = v40;
  v45 = v39;
  v46 = v38;
  sub_2C44F8();
  v31 = v41;
  v32 = v42;
  LOBYTE(v11) = v43;
  sub_1F6678(v10, v7);
  *a2 = 0;
  *(a2 + 8) = 0;
  v33 = sub_6620C(&qword_3C6198, &qword_2F4528);
  sub_1F6678(v7, a2 + v33[12]);
  v34 = a2 + v33[16];
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = a2 + v33[20];
  *v35 = v31;
  *(v35 + 8) = v32;
  *(v35 + 16) = v11;

  sub_1F66DC(v10);

  return sub_1F66DC(v7);
}

uint64_t sub_1F19E4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_2BE6D8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  type metadata accessor for FinishedDateWheel(0);
  sub_29B34C(v7);
  sub_1F1CE0(1900, v7, v10);
  v14 = sub_2BE588();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v10, 1, v14) == 1)
  {
    sub_69198(v10, &qword_3BC418, &unk_2E9200);
    (*(v15 + 56))(v13, 1, 1, v14);
    sub_2BE4E8();
    result = v16(v13, 1, v14);
    if (result != 1)
    {
      return sub_69198(v13, &qword_3BC418, &unk_2E9200);
    }
  }

  else
  {
    sub_2BE6C8();
    sub_2BE6C8();
    sub_29A268(v7, v4, v13);
    v18 = *(v2 + 8);
    v18(v4, v1);
    v18(v7, v1);
    (*(v15 + 8))(v10, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    return (*(v15 + 32))(v20, v13, v14);
  }

  return result;
}

uint64_t sub_1F1CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v4 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v4 - 8);
  v31 = &v28 - v5;
  v6 = sub_6620C(&qword_3BD648, &qword_2E4210);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_6620C(&qword_3C63A8, &unk_2FBD40);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_2BE298();
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2BE698();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE608();
  (*(v16 + 16))(v11, v18, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  v19 = sub_2BE6D8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v8, a2, v19);
  (*(v20 + 56))(v8, 0, 1, v19);
  sub_2BE288();
  v21 = v31;
  sub_2BE638();
  (*(v20 + 8))(a2, v19);
  (*(v29 + 8))(v14, v30);
  (*(v16 + 8))(v18, v15);
  v22 = sub_2BE588();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_69198(v21, &qword_3BC418, &unk_2E9200);
    v24 = 1;
    v25 = v33;
  }

  else
  {
    v26 = v33;
    (*(v23 + 32))(v33, v21, v22);
    v24 = 0;
    v25 = v26;
  }

  return (*(v23 + 56))(v25, v24, 1, v22);
}

uint64_t sub_1F2170@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2BE6D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_2BE6C8();
  sub_2BE6C8();
  sub_29A268(v8, v5, a1);
  v9 = *(v3 + 8);
  v9(v5, v2);
  return (v9)(v8, v2);
}

id sub_1F2288()
{
  v0 = sub_2BE6D8();
  v18 = *(v0 - 8);
  v19 = v0;
  __chkstk_darwin(v0);
  v2 = (&v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2BE698();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2BE5F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  type metadata accessor for FinishedDateWheel(0);
  sub_29B374(v9);
  isa = sub_2BE5D8().super.isa;
  (*(v7 + 8))(v9, v6);
  [v10 setLocale:isa];

  sub_29B39C(v5);
  v12 = sub_2BE628().super.isa;
  (*(v3 + 8))(v5, v17);
  [v10 setCalendar:v12];

  sub_29B34C(v2);
  v13 = sub_2BE6B8().super.isa;
  (*(v18 + 8))(v2, v19);
  [v10 setTimeZone:v13];

  v14 = sub_2C5888();
  [v10 setLocalizedDateFormatFromTemplate:v14];

  [v10 setFormattingContext:2];
  return v10;
}

char *sub_1F2584()
{
  v82 = sub_2BE678();
  v91 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2C30F8();
  v92 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_6620C(&qword_3C6188, &qword_2FBD50);
  __chkstk_darwin(v81);
  v94 = &v61 - v3;
  v90 = sub_2BE698();
  v4 = *(v90 - 8);
  __chkstk_darwin(v90);
  v85 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v6 - 8);
  v83 = &v61 - v7;
  v8 = sub_2BE6D8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v15 = sub_2BE588();
  v86 = *(v15 - 8);
  __chkstk_darwin(v15);
  v75 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v61 - v18;
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  __chkstk_darwin(v22);
  v24 = &v61 - v23;
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  v84 = v0;
  sub_1F19E4(v24);
  sub_2BE6C8();
  sub_2BE6C8();
  sub_29A268(v14, v11, v27);
  v28 = *(v9 + 8);
  v77 = v11;
  v28(v11, v8);
  v76 = v14;
  v78 = v9 + 8;
  v79 = v8;
  v73 = v28;
  v28(v14, v8);
  v29 = v86;
  v30 = *(v86 + 8);
  v74 = v24;
  v87 = v30;
  v88 = v86 + 8;
  v30(v24, v15);
  sub_2BE548();
  v89 = v21;
  if (sub_2BE518())
  {
    v31 = 0;
    v70 = *(v29 + 16);
    v93 = v29 + 32;
    v62 = (v92 + 8);
    v61 = (v4 + 32);
    v69 = enum case for Calendar.Component.year(_:);
    v68 = (v91 + 104);
    v67 = (v91 + 8);
    v66 = (v4 + 8);
    v32 = _swiftEmptyArrayStorage;
    v71 = v29 + 16;
    v65 = (v29 + 48);
    v33 = v27;
    v72 = v27;
    v34 = v15;
    while (1)
    {
      v92 = v31;
      v70(v95, v33, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_5C684(0, *(v32 + 2) + 1, 1, v32);
      }

      v36 = *(v32 + 2);
      v35 = *(v32 + 3);
      if (v36 >= v35 >> 1)
      {
        v32 = sub_5C684((v35 > 1), v36 + 1, 1, v32);
      }

      *(v32 + 2) = v36 + 1;
      v37 = *(v29 + 32);
      v38 = v34;
      v37(&v32[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v36], v95, v34);
      v39 = type metadata accessor for FinishedDateWheel(0);
      sub_6932C(v84 + *(v39 + 40), v94, &qword_3C6188, &qword_2FBD50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = v85;
        (*v61)(v85, v94, v90);
      }

      else
      {
        sub_2C5DD8();
        v41 = sub_2C3718();
        sub_2C0058();

        v42 = v63;
        sub_2C30E8();
        v40 = v85;
        swift_getAtKeyPath();

        (*v62)(v42, v64);
      }

      v43 = v72;
      v44 = v80;
      v45 = v82;
      (*v68)(v80, v69, v82);
      v46 = v83;
      sub_2BE648();
      (*v67)(v44, v45);
      (*v66)(v40, v90);
      v34 = v38;
      if ((*v65)(v46, 1, v38) == 1)
      {
        break;
      }

      v91 = v37;
      v47 = v75;
      v37(v75, v46, v34);
      v48 = v76;
      sub_2BE6C8();
      v49 = v77;
      sub_2BE6C8();
      v50 = v74;
      sub_29A268(v48, v49, v74);
      v51 = v79;
      v52 = v73;
      v73(v49, v79);
      v52(v48, v51);
      v53 = v87;
      v87(v47, v34);
      v53(v43, v34);
      v91(v43, v50, v34);
      v54 = sub_2BE518();
      v33 = v43;
      if (v54)
      {
        v31 = v92 + 1;
        v29 = v86;
        if (v92 < 0x3E7)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v59 = v87;
    v87(v89, v38);
    v59(v43, v38);
    sub_69198(v46, &qword_3BC418, &unk_2E9200);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
    v33 = v27;
    v34 = v15;
LABEL_15:
    v55 = v33;
    v56 = v34;
    v57 = v34;
    v58 = v87;
    v87(v89, v56);
    v58(v55, v57);
  }

  return v32;
}

uint64_t sub_1F2F20@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v57 = sub_6620C(&qword_3C6338, &qword_2F46D0);
  __chkstk_darwin(v57);
  v3 = (v45 - v2);
  v55 = sub_6620C(&qword_3C6340, &qword_2F46D8);
  __chkstk_darwin(v55);
  v56 = v45 - v4;
  v53 = sub_2C2AC8();
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C60A0, &qword_2F4348);
  __chkstk_darwin(v7);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v45 - v11;
  v13 = sub_6620C(&qword_3C6348, &qword_2F46E0);
  __chkstk_darwin(v13);
  v15 = v45 - v14;
  v52 = sub_6620C(&qword_3C6350, &qword_2F46E8);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v45 - v16;
  v54 = sub_6620C(&qword_3C6358, &qword_2F46F0);
  v47 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = v45 - v17;
  v18 = v1 + *(type metadata accessor for FinishedDateWheel(0) + 20);
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v18) = *(v18 + 16);
  v59 = v19;
  v60 = v20;
  LOBYTE(v61) = v18;
  sub_6620C(&qword_3C6178, &qword_2F4440);
  sub_2C44C8();
  if (v63)
  {
    *v3 = sub_2C46A8();
    v3[1] = v21;
    v22 = sub_6620C(&qword_3C6360, &qword_2F46F8);
    sub_1F3BE8(v1, v3 + *(v22 + 44));
    sub_6932C(v3, v56, &qword_3C6338, &qword_2F46D0);
    swift_storeEnumTagMultiPayload();
    v23 = sub_1F70FC();
    v59 = v13;
    v60 = v53;
    v61 = v23;
    v62 = &protocol witness table for WheelPickerStyle;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = v52;
    v60 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6380, &qword_3C6338, &qword_2F46D0, &protocol conformance descriptor for ZStack<A>);
    sub_2C33C8();
    return sub_69198(v3, &qword_3C6338, &qword_2F46D0);
  }

  else
  {
    v26 = sub_1F2288();
    v45[2] = v9;
    v46 = v26;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_2C44F8();
    swift_getKeyPath();
    sub_2C44E8();

    v27 = sub_69198(v12, &qword_3C60A0, &qword_2F4348);
    v45[1] = v45;
    __chkstk_darwin(v27);
    sub_2BE588();
    sub_6620C(&qword_3C6388, &qword_2F4738);
    sub_1F7314(&qword_3BC428, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v28 = v6;
    v29 = v13;
    v30 = v48;
    v44 = sub_1F71F0(&qword_3C6390, &qword_3C6388, &qword_2F4738);
    sub_7212C(v44, v31, v32);
    sub_2C4458();
    v33 = sub_2C38B8();
    KeyPath = swift_getKeyPath();
    v35 = &v15[*(v29 + 36)];
    *v35 = KeyPath;
    v35[1] = v33;
    sub_2C2AB8();
    v36 = sub_1F70FC();
    v37 = v49;
    v38 = v53;
    sub_2C3EA8();
    (*(v30 + 8))(v28, v38);
    sub_69198(v15, &qword_3C6348, &qword_2F46E0);
    v59 = v29;
    v60 = v38;
    v61 = v36;
    v62 = &protocol witness table for WheelPickerStyle;
    v39 = swift_getOpaqueTypeConformance2();
    v41 = v51;
    v40 = v52;
    sub_2C3EC8();
    (*(v50 + 8))(v37, v40);
    v42 = v47;
    v43 = v54;
    (*(v47 + 16))(v56, v41, v54);
    swift_storeEnumTagMultiPayload();
    v59 = v40;
    v60 = v39;
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6380, &qword_3C6338, &qword_2F46D0, &protocol conformance descriptor for ZStack<A>);
    sub_2C33C8();

    return (*(v42 + 8))(v41, v43);
  }
}

uint64_t sub_1F36F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2BE6D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_2BE6C8();
  sub_2BE6C8();
  sub_29A268(v8, v5, a1);
  v9 = *(v3 + 8);
  v9(v5, v2);
  return (v9)(v8, v2);
}

uint64_t sub_1F380C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_2BE6D8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_2BE588();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 8);
  v15(a2, v10, v12);
  (*(v11 + 16))(v14, v19, v10);
  sub_2BE6C8();
  sub_2BE6C8();
  sub_29A268(v9, v6, a2);
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  return (v15)(v14, v10);
}

uint64_t sub_1F3A04(uint64_t a1, void *a2)
{
  sub_1F2584();
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  sub_6620C(&qword_3C6398, &unk_2F4790);
  sub_72B74(&qword_3C63A0, &qword_3C6398, &unk_2F4790, &protocol conformance descriptor for [A]);
  sub_1F7314(&qword_3BC428, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return sub_2C4558();
}

uint64_t sub_1F3B44@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  isa = sub_2BE4F8().super.isa;
  v5 = [a1 stringFromDate:isa];

  sub_2C58C8();
  sub_7212C(v6, v7, v8);
  result = sub_2C3A48();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_1F3BE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v112 = sub_2C3498();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_6620C(&qword_3C63B0, &qword_2F47A0);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v109 = &v100 - v4;
  v138 = sub_6620C(&qword_3C63B8, &qword_2F47A8);
  v129 = *(v138 - 8);
  __chkstk_darwin(v138);
  v107 = &v100 - v5;
  v6 = sub_6620C(&qword_3C63C0, &qword_2F47B0);
  __chkstk_darwin(v6 - 8);
  v118 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v100 - v9;
  v128 = sub_2C34F8();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C3408();
  __chkstk_darwin(v11 - 8);
  v137 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_6620C(&qword_3C63C8, &qword_2F47B8);
  __chkstk_darwin(v136);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v135 = &v100 - v16;
  v17 = sub_2BE588();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = (&v100 - v22);
  v131 = sub_6620C(&qword_3C63D0, &qword_2F47C0);
  __chkstk_darwin(v131);
  v133 = &v100 - v24;
  v25 = sub_6620C(&qword_3C60A0, &qword_2F4348);
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  v134 = sub_6620C(&qword_3C63D8, &qword_2F47C8);
  v145 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v100 - v28;
  v123 = sub_6620C(&qword_3C63E0, &qword_2F47D0);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v30 = &v100 - v29;
  v125 = sub_6620C(&qword_3C63E8, &qword_2F47D8);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v32 = &v100 - v31;
  v122 = sub_6620C(&qword_3C63F0, &qword_2F47E0);
  __chkstk_darwin(v122);
  v117 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v120 = &v100 - v35;
  __chkstk_darwin(v36);
  v143 = v27;
  v144 = &v100 - v37;
  v147 = 0;
  v148 = 0xE000000000000000;
  v114 = v25;
  sub_2C44F8();
  v139 = a1;
  sub_1F19E4(v23);
  sub_2BE548();
  v38 = sub_1F7314(&qword_3C63F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v141 = v23;
  v142 = v20;
  v140 = v17;
  result = sub_2C5868();
  if (result)
  {
    v106 = v38;
    v40 = v14;
    v115 = v30;
    v41 = v18;
    v43 = v18 + 32;
    v42 = *(v18 + 32);
    v44 = v135;
    v45 = v140;
    v42(v135, v141, v140);
    v116 = v32;
    v46 = v136;
    v42(v44 + *(v136 + 48), v142, v45);
    sub_6932C(v44, v40, &qword_3C63C8, &qword_2F47B8);
    v47 = *(v46 + 48);
    v48 = v133;
    v42(v133, v40, v45);
    v49 = *(v41 + 8);
    v49(v40 + v47, v45);
    sub_69130(v44, v40, &qword_3C63C8, &qword_2F47B8);
    v50 = &v48[*(v131 + 36)];
    v51 = v40 + *(v46 + 48);
    v101 = v42;
    v102 = v43;
    v42(v50, v51, v45);
    v105 = v40;
    v104 = v41 + 8;
    v103 = v49;
    v49(v40, v45);
    v52 = sub_2C33F8();
    v55 = sub_7212C(v52, v53, v54);
    v56 = v132;
    sub_2C24C8();
    v57 = v126;
    sub_2C34E8();
    v58 = sub_72B74(&qword_3C6400, &qword_3C63D8, &qword_2F47C8, &protocol conformance descriptor for DatePicker<A>);
    v59 = sub_1F7314(&qword_3C6408, &type metadata accessor for CompactDatePickerStyle, &protocol conformance descriptor for CompactDatePickerStyle);
    v60 = v115;
    v61 = v134;
    v62 = v128;
    sub_2C3F28();
    (*(v127 + 8))(v57, v62);
    v63 = *(v145 + 8);
    v145 += 8;
    v63(v56, v61);
    v147 = v61;
    v148 = v62;
    v149 = v58;
    v150 = v59;
    v64 = 1;
    swift_getOpaqueTypeConformance2();
    v65 = v116;
    v66 = v123;
    sub_2C3EC8();
    (*(v121 + 8))(v60, v66);
    v67 = v139 + *(type metadata accessor for FinishedDateWheel(0) + 24);
    v68 = *v67;
    v69 = *(v67 + 8);
    v70 = *(v67 + 16);
    v147 = *v67;
    v148 = v69;
    LOBYTE(v149) = v70;
    sub_6620C(&qword_3C27A8, &qword_2EDC50);
    sub_2C44C8();
    if (v146)
    {
      v71 = 1.0;
    }

    else
    {
      v71 = 0.0;
    }

    v72 = v120;
    (*(v124 + 32))(v120, v65, v125);
    *(v72 + *(v122 + 36)) = v71;
    sub_1F72A4(v72, v144);
    v147 = v68;
    v148 = v69;
    v73 = v130;
    LOBYTE(v149) = v70;
    sub_2C44C8();
    v74 = v138;
    v75 = v129;
    if (v146)
    {
      goto LABEL_8;
    }

    v147 = 0;
    v148 = 0xE000000000000000;
    sub_2C44F8();
    sub_1F19E4(v141);
    sub_2BE548();
    result = sub_2C5868();
    if (result)
    {
      v76 = v135;
      v139 = v55;
      v78 = v140;
      v77 = v141;
      v79 = v101;
      v141 = v63;
      v101(v135, v77, v140);
      v80 = v136;
      v79(v76 + *(v136 + 48), v142, v78);
      v81 = v105;
      sub_6932C(v76, v105, &qword_3C63C8, &qword_2F47B8);
      v82 = *(v80 + 48);
      v83 = v133;
      v79(v133, v81, v78);
      v142 = v58;
      v84 = v103;
      v103(v81 + v82, v78);
      v85 = v76;
      v73 = v130;
      sub_69130(v85, v81, &qword_3C63C8, &qword_2F47B8);
      v79(&v83[*(v131 + 36)], (v81 + *(v80 + 48)), v78);
      v84(v81, v78);
      sub_2C33F8();
      v86 = v132;
      sub_2C24C8();
      v87 = v108;
      sub_2C3488();
      v88 = sub_1F7314(&qword_3C6410, &type metadata accessor for WheelDatePickerStyle, &protocol conformance descriptor for WheelDatePickerStyle);
      v89 = v109;
      v90 = v134;
      v91 = v112;
      v92 = v142;
      sub_2C3F28();
      (*(v110 + 8))(v87, v91);
      v141(v86, v90);
      v147 = v90;
      v148 = v91;
      v74 = v138;
      v149 = v92;
      v150 = v88;
      swift_getOpaqueTypeConformance2();
      v93 = v107;
      v94 = v113;
      sub_2C3EC8();
      (*(v111 + 8))(v89, v94);
      (*(v75 + 32))(v73, v93, v74);
      v64 = 0;
LABEL_8:
      (*(v75 + 56))(v73, v64, 1, v74);
      v95 = v144;
      v96 = v117;
      sub_6932C(v144, v117, &qword_3C63F0, &qword_2F47E0);
      v97 = v118;
      sub_6932C(v73, v118, &qword_3C63C0, &qword_2F47B0);
      v98 = v119;
      sub_6932C(v96, v119, &qword_3C63F0, &qword_2F47E0);
      v99 = sub_6620C(&qword_3C6418, &qword_2F47E8);
      sub_6932C(v97, v98 + *(v99 + 48), &qword_3C63C0, &qword_2F47B0);
      sub_69198(v73, &qword_3C63C0, &qword_2F47B0);
      sub_69198(v95, &qword_3C63F0, &qword_2F47E0);
      sub_69198(v97, &qword_3C63C0, &qword_2F47B0);
      return sub_69198(v96, &qword_3C63F0, &qword_2F47E0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1F4B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1F4C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v87 = a4;
  v7 = sub_6620C(&qword_3C1650, &unk_2EB710);
  __chkstk_darwin(v7 - 8);
  v86 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = v61 - v10;
  v11 = sub_2BFDD8();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v82 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2C06A8();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2C3678();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2C2A58();
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&qword_3C6290, &qword_2F4660);
  v64 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v61 - v18;
  v65 = sub_6620C(&qword_3C6298, &qword_2F4668);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v21 = v61 - v20;
  v70 = sub_6620C(&qword_3C62A0, &qword_2F4670);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v62 = v61 - v22;
  v73 = sub_6620C(&qword_3C62A8, &qword_2F4678);
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v63 = v61 - v23;
  v78 = sub_6620C(&qword_3C62B0, &qword_2F4680);
  v80 = *(v78 - 8);
  __chkstk_darwin(v78);
  v69 = v61 - v24;
  v88 = a1;
  v89 = a2;
  v90 = a3 & 1;
  v61[1] = sub_6620C(&qword_3C62B8, &qword_2F4688);
  v61[0] = sub_6620C(&qword_3C62C0, &qword_2F4690);
  v25 = sub_718D4(&qword_3C62C8, &qword_2F4698);
  v26 = sub_2C1018();
  v27 = sub_1F7314(&qword_3C62D0, &type metadata accessor for CircularIconView, &protocol conformance descriptor for CircularIconView);
  v91 = v26;
  v92 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = v25;
  v92 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v29 = sub_718D4(&qword_3C62D8, &qword_2F46A0);
  v30 = sub_2C3148();
  v31 = sub_718D4(&qword_3C62E0, &qword_2F46A8);
  v32 = sub_72B74(&qword_3C62E8, &qword_3C62E0, &qword_2F46A8, &protocol conformance descriptor for Picker<A, B, C>);
  v91 = v31;
  v92 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v91 = v29;
  v92 = v30;
  v93 = v33;
  v94 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_2C3958();
  sub_2C2A48();
  v34 = sub_72B74(&qword_3C62F0, &qword_3C6290, &qword_2F4660, &protocol conformance descriptor for Menu<A, B>);
  v35 = sub_1F7314(&qword_3BE108, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v36 = v67;
  sub_2C3E38();
  (*(v68 + 8))(v16, v36);
  (*(v64 + 8))(v19, v17);
  v37 = v71;
  sub_2C3658();
  v91 = v17;
  v92 = v36;
  v93 = v34;
  v94 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v62;
  v40 = v65;
  sub_2C3FA8();
  (*(v75 + 8))(v37, v76);
  v41 = v40;
  (*(v66 + 8))(v21, v40);
  v42 = v79;
  v43 = v77;
  v44 = v81;
  (*(v79 + 104))(v77, enum case for SymbolImage.Kind.ellipsis(_:), v81);
  v45 = v82;
  sub_2C0688();
  (*(v42 + 8))(v43, v44);
  v91 = v41;
  v92 = v38;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v63;
  v48 = v70;
  sub_2C3AF8();
  (*(v83 + 8))(v45, v84);
  (*(v72 + 8))(v39, v48);
  v84 = sub_6620C(&qword_3C62F8, &qword_2F46B0);
  v91 = v48;
  v92 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_72B74(&qword_3C6300, &qword_3C62F8, &qword_2F46B0, &protocol conformance descriptor for TupleView<A>);
  v51 = v69;
  v52 = v73;
  sub_2C4038();
  v53 = v52;
  (*(v74 + 8))(v47, v52);
  v54 = sub_2C29C8();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v57 = v85;
  v56(v85, 1, 1, v54);
  v58 = v86;
  (*(v55 + 104))(v86, enum case for DynamicTypeSize.accessibility1(_:), v54);
  v56(v58, 0, 1, v54);
  v91 = v53;
  v92 = v84;
  v93 = v49;
  v94 = v50;
  swift_getOpaqueTypeConformance2();
  v59 = v78;
  sub_2C3CF8();
  sub_69198(v58, &qword_3C1650, &unk_2EB710);
  sub_69198(v57, &qword_3C1650, &unk_2EB710);
  return (*(v80 + 8))(v51, v59);
}

uint64_t sub_1F5840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = sub_2C3148();
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C62E0, &qword_2F46A8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v29 - v13;
  v15 = sub_6620C(&qword_3C62D8, &qword_2F46A0);
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  __chkstk_darwin(v15);
  v18 = v29 - v17;
  v19 = sub_2C3198();
  v29[1] = v20;
  v29[2] = v19;
  v29[0] = v21;
  v38 = a1;
  v39 = a2;
  v40 = a3 & 1;
  sub_6620C(&qword_3C6178, &qword_2F4440);
  sub_2C44F8();
  v38 = v35;
  v39 = v36;
  v40 = v37;
  v22 = sub_6620C(&qword_3C6318, &qword_2F46C8);
  sub_1F0C00(v22, v23, v24);
  sub_1F71F0(&qword_3C6320, &qword_3C6318, &qword_2F46C8);
  sub_2C4448();
  v25 = sub_72B74(&qword_3C62E8, &qword_3C62E0, &qword_2F46A8, &protocol conformance descriptor for Picker<A, B, C>);
  sub_2C3EC8();
  (*(v12 + 8))(v14, v11);
  sub_2C3138();
  v38 = v11;
  v39 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  v27 = v32;
  sub_2C3EA8();
  (*(v33 + 8))(v10, v27);
  return (*(v31 + 8))(v18, v26);
}

uint64_t sub_1F5BCC()
{
  v6 = &off_38A1F8;
  v0 = sub_6620C(&qword_3C6090, qword_2F42A0);
  v1 = sub_72B74(&qword_3C6328, &qword_3C6090, qword_2F42A0, &protocol conformance descriptor for [A]);
  v4 = sub_1F70A8(v1, v2, v3);
  return sub_2C4568(&v6, sub_1F5CA0, 0, v0, &type metadata for FinishedDateType, &type metadata for Text, v1, &protocol witness table for Text, v4);
}

uint64_t sub_1F5CA0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = 0x746144206C6C7546;
  }

  else
  {
    v3 = 0x6C6E4F2072616559;
  }

  result = sub_1DA078(v3);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1F5D18@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_2C42D8();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2C0FF8();
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C06A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C1018();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_6620C(&qword_3C62C8, &qword_2F4698);
  v14 = *(v25 - 8);
  v15 = __chkstk_darwin(v25);
  v17 = &v25 - v16;
  (*(v7 + 104))(v9, enum case for SymbolImage.Kind.ellipsis(_:), v6, v15);
  sub_2C1008();
  v18 = v26;
  (*(v3 + 104))(v5, enum case for CircularIconView.Size.medium(_:), v26);
  v19 = sub_1F7314(&qword_3C62D0, &type metadata accessor for CircularIconView, &protocol conformance descriptor for CircularIconView);
  sub_2C3BC8();
  (*(v3 + 8))(v5, v18);
  (*(v11 + 8))(v13, v10);
  v20 = v27;
  v21 = v28;
  v22 = v29;
  (*(v28 + 104))(v27, enum case for Image.Scale.medium(_:), v29);
  v31 = v10;
  v32 = v19;
  swift_getOpaqueTypeConformance2();
  v23 = v25;
  sub_2C3D48();
  (*(v21 + 8))(v20, v22);
  return (*(v14 + 8))(v17, v23);
}

uint64_t sub_1F6140@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v1 = sub_2BFDD8();
  __chkstk_darwin(v1 - 8);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2BFCB8();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v35 - v6;
  v7 = sub_2C06A8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C6308, &qword_2F46B8);
  v37 = *(v11 - 8);
  v12 = v37;
  v38 = v11;
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v19 = enum case for SymbolImage.Kind.ellipsis(_:);
  v20 = *(v8 + 104);
  (v20)(v10, enum case for SymbolImage.Kind.ellipsis(_:), v7, v16);
  v36 = v18;
  sub_2C0698();
  v21 = *(v8 + 8);
  v21(v10, v7);
  v20(v10, v19, v7);
  sub_2C0688();
  v21(v10, v7);
  v22 = v44;
  sub_2BFCC8();
  v23 = *(v12 + 16);
  v24 = v18;
  v25 = v38;
  v23(v14, v24, v38);
  v27 = v40;
  v26 = v41;
  v28 = *(v41 + 16);
  v29 = v42;
  v28(v40, v22, v42);
  v30 = v43;
  v23(v43, v14, v25);
  v31 = sub_6620C(&qword_3C6310, &qword_2F46C0);
  v28(&v30[*(v31 + 48)], v27, v29);
  v32 = *(v26 + 8);
  v32(v44, v29);
  v33 = *(v37 + 8);
  v33(v36, v25);
  v32(v27, v29);
  return (v33)(v14, v25);
}

uint64_t sub_1F6678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinishedDateWheel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F66DC(uint64_t a1)
{
  v2 = type metadata accessor for FinishedDateWheel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F675C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3C60A0, &qword_2F4348);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_6620C(&qword_3C61A0, &qword_2F4580);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_13;
  }

  v17 = sub_6620C(&qword_3C61A8, &qword_2F4588);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v18 = sub_6620C(&qword_3C61B0, &unk_2F4590);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[11];

  return v19(v20, a2, v18);
}

uint64_t sub_1F69B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_6620C(&qword_3C60A0, &qword_2F4348);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_6620C(&qword_3C61A0, &qword_2F4580);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v17 = sub_6620C(&qword_3C61A8, &qword_2F4588);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v18 = sub_6620C(&qword_3C61B0, &unk_2F4590);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[11];

  return v19(v20, a2, a2, v18);
}

void sub_1F6BF8(uint64_t a1)
{
  sub_1F6EB8(319, &qword_3C6110, &type metadata accessor for Date, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_1F6E68(319, &qword_3C6118, &type metadata for FinishedDateType, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_1F6E68(319, &unk_3C6120, &type metadata for Bool, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_1F6E68(319, &qword_3BFBE8, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_1F6EB8(319, &qword_3BE478, &type metadata accessor for FontConstants, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1F6EB8(319, &qword_3C6220, &type metadata accessor for Locale, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_1F6EB8(319, &qword_3C6228, &type metadata accessor for Calendar, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                sub_1F6EB8(319, &unk_3C6230, &type metadata accessor for TimeZone, &type metadata accessor for Environment);
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

void sub_1F6E68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1F6EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1F6F20()
{
  result = qword_3C6278;
  if (!qword_3C6278)
  {
    sub_718D4(&qword_3C6170, &qword_2F43D8);
    sub_1F6FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6278);
  }

  return result;
}

unint64_t sub_1F6FAC()
{
  result = qword_3C6280;
  if (!qword_3C6280)
  {
    sub_718D4(&qword_3C6160, &qword_2F43C0);
    sub_72B74(&qword_3C6288, &qword_3C6158, &qword_2F43B8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6280);
  }

  return result;
}

unint64_t sub_1F70A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6330;
  if (!qword_3C6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6330);
  }

  return result;
}

unint64_t sub_1F70FC()
{
  result = qword_3C6368;
  if (!qword_3C6368)
  {
    sub_718D4(&qword_3C6348, &qword_2F46E0);
    sub_72B74(&qword_3C6370, &qword_3C6378, &unk_2F4700, &protocol conformance descriptor for Picker<A, B, C>);
    sub_72B74(&qword_3BCB10, &qword_3BCB18, &qword_2E3B50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6368);
  }

  return result;
}

uint64_t sub_1F71F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1F7264()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1F72A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C63F0, &qword_2F47E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F7314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1F735C()
{
  sub_718D4(&qword_3C62B0, &qword_2F4680);
  sub_718D4(&qword_3C62A8, &qword_2F4678);
  sub_718D4(&qword_3C62F8, &qword_2F46B0);
  sub_718D4(&qword_3C62A0, &qword_2F4670);
  sub_718D4(&qword_3C6298, &qword_2F4668);
  sub_718D4(&qword_3C6290, &qword_2F4660);
  sub_2C2A58();
  sub_72B74(&qword_3C62F0, &qword_3C6290, &qword_2F4660, &protocol conformance descriptor for Menu<A, B>);
  sub_1F7314(&qword_3BE108, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_72B74(&qword_3C6300, &qword_3C62F8, &qword_2F46B0, &protocol conformance descriptor for TupleView<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1F7598()
{
  result = qword_3C6420;
  if (!qword_3C6420)
  {
    sub_718D4(&qword_3C6428, &unk_2F47F0);
    sub_718D4(&qword_3C6350, &qword_2F46E8);
    sub_718D4(&qword_3C6348, &qword_2F46E0);
    sub_2C2AC8();
    sub_1F70FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6380, &qword_3C6338, &qword_2F46D0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6420);
  }

  return result;
}

uint64_t sub_1F76FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MarkAsFinishedViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1F7864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MarkAsFinishedViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1F79B8(uint64_t a1)
{
  type metadata accessor for MarkAsFinishedViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1F7A8C();
    if (v2 <= 0x3F)
    {
      sub_1F7D24(319, &qword_3BD600, &type metadata accessor for SizeConstants, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1F7A8C()
{
  if (!qword_3C6498)
  {
    v0 = sub_2C4528();
    if (!v1)
    {
      atomic_store(v0, &qword_3C6498);
    }
  }
}

uint64_t sub_1F7AF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3C64D0, &qword_2F4818);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1F7BC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3C64D0, &qword_2F4818);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1F7C70(uint64_t a1)
{
  sub_85704();
  if (v1 <= 0x3F)
  {
    sub_1F7D24(319, &unk_3C6540, &type metadata accessor for ThumbOpinionButtonState, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1F7D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1F7E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v4 = sub_2C0F38();
  __chkstk_darwin(v4 - 8);
  v77 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2C0458();
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v78 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v85 = &v67[-v9];
  v75 = sub_6620C(&qword_3C6578, &qword_2F48C8) - 8;
  __chkstk_darwin(v75);
  v76 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v89 = &v67[-v12];
  v74 = sub_6620C(&qword_3BD6A0, &qword_2E44A0);
  v88 = *(v74 - 8);
  __chkstk_darwin(v74);
  v14 = &v67[-v13];
  v73 = sub_6620C(&qword_3BD6A8, &unk_2E4290);
  v87 = *(v73 - 8);
  __chkstk_darwin(v73);
  v16 = &v67[-v15];
  v82 = sub_2C0C98();
  v86 = *(v82 - 8);
  __chkstk_darwin(v82);
  v18 = &v67[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_6620C(&qword_3C6580, &qword_2F48D0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v84 = &v67[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v67[-v23];
  v25 = sub_1F862C();
  v27 = v26;
  sub_691F8(a1, (v24 + 2));
  v28 = *(type metadata accessor for IveReadThisHeaderView(0) + 24);
  *(v24 + v28) = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  *v24 = v25;
  v24[1] = v27;
  v83 = v24;
  v68 = sub_2C3778();
  v72 = *(type metadata accessor for MarkAsFinishedView(0) + 28);
  sub_29AAE0(v18);
  v29 = v82;
  sub_2C1768();
  v30 = *(v86 + 8);
  v86 += 8;
  v71 = v30;
  v30(v18, v29);
  swift_getKeyPath();
  v31 = v73;
  sub_2C0BC8();

  v32 = *(v87 + 8);
  v87 += 8;
  v70 = v32;
  v33 = v31;
  v32(v16, v31);
  KeyPath = swift_getKeyPath();
  v69 = sub_85AF8(KeyPath, v35, v36);
  v37 = v74;
  sub_2C0BD8();

  v38 = *(v88 + 8);
  v88 += 8;
  v38(v14, v37);
  sub_2C24D8();
  v39 = v24 + *(v20 + 44);
  *v39 = v68;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v44 = sub_2C3178();
  v45 = v89;
  *v89 = v44;
  v45[1] = 0;
  *(v45 + 16) = 0;
  v46 = v45;
  v47 = sub_6620C(&qword_3C6588, &qword_2F4970);
  sub_1F8728(a1, &v46[*(v47 + 44)]);
  LOBYTE(v20) = sub_2C3778();
  sub_29AAE0(v18);
  v48 = v82;
  sub_2C1768();
  v71(v18, v48);
  swift_getKeyPath();
  sub_2C0BC8();

  v70(v16, v33);
  swift_getKeyPath();
  sub_2C0BD8();

  v38(v14, v37);
  sub_2C24D8();
  v49 = v89;
  v50 = v89 + *(v75 + 44);
  *v50 = v20;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;
  sub_1F8E04(v77);
  v55 = v85;
  sub_2C0448();
  v56 = v84;
  sub_6932C(v83, v84, &qword_3C6580, &qword_2F48D0);
  v57 = v76;
  sub_6932C(v49, v76, &qword_3C6578, &qword_2F48C8);
  v58 = v78;
  v59 = v79;
  v60 = *(v79 + 16);
  v61 = v80;
  v60(v78, v55, v80);
  v62 = v56;
  v63 = v81;
  sub_6932C(v62, v81, &qword_3C6580, &qword_2F48D0);
  v64 = sub_6620C(&qword_3C6590, &qword_2F49A8);
  sub_6932C(v57, v63 + *(v64 + 48), &qword_3C6578, &qword_2F48C8);
  v60((v63 + *(v64 + 64)), v58, v61);
  v65 = *(v59 + 8);
  v65(v85, v61);
  sub_69198(v89, &qword_3C6578, &qword_2F48C8);
  sub_69198(v83, &qword_3C6580, &qword_2F48D0);
  v65(v58, v61);
  sub_69198(v57, &qword_3C6578, &qword_2F48C8);
  return sub_69198(v84, &qword_3C6580, &qword_2F48D0);
}

uint64_t sub_1F862C()
{
  v1 = 0xD00000000000001CLL;
  sub_72084(v0, v0[3]);
  sub_2BF8F8();
  v2 = sub_2BFA98();
  v4 = v3;
  if (v2 == sub_2BFA98() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_2C65B8();

    if ((v7 & 1) == 0)
    {
      v1 = 0xD000000000000017;
    }
  }

  return sub_1DA078(v1);
}

uint64_t sub_1F8728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for MarkAsFinishedView(0);
  v4 = v3 - 8;
  v55 = *(v3 - 8);
  v5 = *(v55 + 64);
  __chkstk_darwin(v3);
  v54 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C4BF8();
  __chkstk_darwin(v6 - 8);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C6598, &qword_2F49B8);
  __chkstk_darwin(v9 - 8);
  v10 = sub_2C1EE8();
  __chkstk_darwin(v10 - 8);
  v58 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v49 - v13;
  v15 = sub_2C13E8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v60 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v59 = v49 - v19;
  __chkstk_darwin(v20);
  v57 = v49 - v21;
  __chkstk_darwin(v22);
  v24 = v49 - v23;
  v25 = *(type metadata accessor for MarkAsFinishedViewModel(0) + 20);
  v26 = sub_6620C(&qword_3C64D0, &qword_2F4818);
  v52 = v25;
  v51 = v26;
  sub_2C4398();
  sub_691F8(a1, v66);
  v53 = v14;
  sub_2C1ED8();
  LODWORD(v25) = *(a1 + *(v4 + 28));
  v62 = v8;
  sub_2C4BE8();
  v50 = v25;
  v56 = v24;
  v49[1] = v5;
  if (v25 == 1)
  {
    v27 = v54;
    sub_1F95AC(a1, v54);
    v28 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v29 = swift_allocObject();
    sub_1F9614(v27, v29 + v28);
    v67 = sub_2C4C28();
    v68 = &protocol witness table for ClosureAction;
    sub_720C8(v66);
    sub_2C4C18();
  }

  else
  {
    sub_2C5598();
    v67 = sub_2C5628();
    v68 = &protocol witness table for Models.FlowBackAction;
    sub_720C8(v66);
    sub_2C5588();
    v27 = v54;
  }

  v30 = v67;
  v31 = v68;
  v32 = sub_72084(v66, v67);
  v64 = v30;
  v65 = v31[1];
  v33 = sub_720C8(v63);
  (*(*(v30 - 8) + 16))(v33, v32, v30);
  v34 = v56;
  sub_2C13D8();
  sub_68CD0(v66);
  sub_2C4398();
  sub_691F8(a1, v66);
  sub_2C1ED8();
  sub_2C4BE8();
  if (v50)
  {
    sub_1F95AC(a1, v27);
    v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v36 = swift_allocObject();
    sub_1F9614(v27, v36 + v35);
    v67 = sub_2C4C28();
    v68 = &protocol witness table for ClosureAction;
    sub_720C8(v66);
    sub_2C4C18();
  }

  else
  {
    sub_2C5598();
    v67 = sub_2C5628();
    v68 = &protocol witness table for Models.FlowBackAction;
    sub_720C8(v66);
    sub_2C5588();
  }

  v37 = v67;
  v38 = v68;
  v39 = sub_72084(v66, v67);
  v64 = v37;
  v65 = v38[1];
  v40 = sub_720C8(v63);
  (*(*(v37 - 8) + 16))(v40, v39, v37);
  v41 = v57;
  sub_2C13D8();
  sub_68CD0(v66);
  v42 = *(v16 + 16);
  v43 = v59;
  v42(v59, v34, v15);
  v44 = v60;
  v42(v60, v41, v15);
  v45 = v61;
  v42(v61, v43, v15);
  v46 = sub_6620C(&qword_3C65A0, &qword_2F49C0);
  v42(&v45[*(v46 + 48)], v44, v15);
  v47 = *(v16 + 8);
  v47(v41, v15);
  v47(v34, v15);
  v47(v44, v15);
  return (v47)(v43, v15);
}

uint64_t sub_1F8E04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for MarkAsFinishedView(0);
  v4 = v3 - 8;
  v39[0] = *(v3 - 8);
  __chkstk_darwin(v3);
  v39[1] = v5;
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C4BF8();
  __chkstk_darwin(v6 - 8);
  v50 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C0EC8();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v53 = (v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2C0F28();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v46 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C0F18();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v45 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2C0ED8();
  v14 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2C0F08();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2C0EE8();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 28);
  v41 = v2;
  v25 = *(v2 + v24);
  if (*(v2 + v24))
  {
    v26 = 1885956947;
  }

  else
  {
    v26 = 1701736260;
  }

  if (*(v2 + v24))
  {
    v27 = &enum case for ButtonViewModel.Style.secondary(_:);
  }

  else
  {
    v27 = &enum case for ButtonViewModel.Style.primary(_:);
  }

  v42 = sub_1DA078(v26);
  *v23 = 1;
  v28 = *(v21 + 104);
  v49 = v23;
  v28(v23, enum case for ButtonViewModel.Size.large(_:), v20);
  if (_UISolariumEnabled())
  {
    v29 = &enum case for ButtonViewModel.Shape.capsule(_:);
  }

  else
  {
    v29 = &enum case for ButtonViewModel.Shape.roundedRectangle(_:);
  }

  v30 = v43;
  v31 = v46;
  (*(v17 + 104))(v19, *v29, v16);
  (*(v14 + 104))(v30, enum case for ButtonViewModel.Kind.solid(_:), v44);
  (*(v47 + 104))(v45, *v27, v48);
  sub_2BFDC8();

  (*(v51 + 104))(v31, enum case for ButtonViewModel.Content.title(_:), v52);
  sub_2C4BE8();
  if (v25)
  {
    v32 = v40;
    sub_1F95AC(v41, v40);
    v33 = (*(v39[0] + 80) + 16) & ~*(v39[0] + 80);
    v34 = swift_allocObject();
    sub_1F9614(v32, v34 + v33);
    v35 = sub_2C4C28();
    v36 = v53;
    v53[3] = v35;
    v36[4] = &protocol witness table for ClosureAction;
    sub_720C8(v36);
    sub_2C4C18();
  }

  else
  {
    sub_2C5598();
    v37 = sub_2C5628();
    v36 = v53;
    v53[3] = v37;
    v36[4] = &protocol witness table for Models.FlowBackAction;
    sub_720C8(v36);
    sub_2C5588();
  }

  (*(v54 + 104))(v36, enum case for ButtonViewModel.ActionKind.actionModel(_:), v55);
  return sub_2C0EF8();
}

void sub_1F9440(uint64_t a1)
{
  type metadata accessor for MarkAsFinishedView(0);

  sub_6620C(&qword_3BDAA8, &qword_2F49B0);
  sub_2C44D8();
}

uint64_t sub_1F94D8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2C3328();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_6620C(&qword_3C6570, &qword_2F48C0);
  return sub_1F7E20(v2, a2 + *(v4 + 44));
}

uint64_t sub_1F95AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarkAsFinishedView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F9614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarkAsFinishedView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F9690()
{
  v1 = (type metadata accessor for MarkAsFinishedView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_68CD0((v0 + v3));
  v5 = v0 + v3 + *(type metadata accessor for MarkAsFinishedViewModel(0) + 20);
  v6 = sub_2C1AA8();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_6620C(&qword_3C64D0, &qword_2F4818);

  v7 = v1[9];
  sub_6620C(&qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2C0C98();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1F989C()
{
  result = qword_3C65A8;
  if (!qword_3C65A8)
  {
    sub_718D4(&qword_3C65B0, &qword_2F49C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C65A8);
  }

  return result;
}

void sub_1F9A18(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1F9BAC();
}

void sub_1F9A88(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1F9BDC();
}

void *sub_1F9C0C(void *a1)
{
  v2 = a1;
  if (*v1)
  {
    if (*v1 == 1)
    {
      v3 = a1[2];
      if (v3)
      {
        v4 = a1 + 4;
        v2 = _swiftEmptyArrayStorage;
        while (1)
        {
          v21 = v3;
          v22 = v2;
          sub_691F8(v4, v29);
          sub_72084(v29, v30);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v6 = sub_2C60B8();
          v20[1] = v20;
          v7 = *(v6 - 8);
          __chkstk_darwin(v6);
          v9 = v20 - v8;
          sub_2BF388();
          v10 = *(AssociatedTypeWitness - 8);
          if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
          {
            break;
          }

          v27 = AssociatedTypeWitness;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          sub_720C8(&v26);
          (*(v10 + 32))();
          v11 = sub_2BF598();
          sub_68CD0(&v26);
          if ((v11 & 1) == 0)
          {
            goto LABEL_11;
          }

          sub_691F8(v29, &v23);
LABEL_12:
          v2 = v22;
          sub_68CD0(v29);
          if (*(&v24 + 1))
          {
            sub_693D0(&v23, &v26);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_5C0E8(0, v2[2] + 1, 1, v2);
            }

            v13 = v2[2];
            v12 = v2[3];
            if (v13 >= v12 >> 1)
            {
              v2 = sub_5C0E8((v12 > 1), v13 + 1, 1, v2);
            }

            v2[2] = v13 + 1;
            sub_693D0(&v26, &v2[5 * v13 + 4]);
          }

          else
          {
            sub_69198(&v23, &unk_3C2550, &qword_2E4E40);
          }

          v4 += 5;
          v3 = v21 - 1;
          if (v21 == 1)
          {
            return v2;
          }
        }

        (*(v7 + 8))(v9, v6);
LABEL_11:
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_12;
      }

      return _swiftEmptyArrayStorage;
    }

    v14 = a1[2];
    if (!v14)
    {
      return _swiftEmptyArrayStorage;
    }

    v15 = a1 + 4;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      sub_691F8(v15, v29);
      sub_72084(v29, v30);
      v16 = sub_2BF918();
      if (v16 == 2 || (v16 & 1) == 0)
      {
        sub_691F8(v29, &v23);
      }

      else
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
      }

      sub_68CD0(v29);
      if (*(&v24 + 1))
      {
        sub_693D0(&v23, &v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_5C0E8(0, v2[2] + 1, 1, v2);
        }

        v18 = v2[2];
        v17 = v2[3];
        if (v18 >= v17 >> 1)
        {
          v2 = sub_5C0E8((v17 > 1), v18 + 1, 1, v2);
        }

        v2[2] = v18 + 1;
        sub_693D0(&v26, &v2[5 * v18 + 4]);
      }

      else
      {
        sub_69198(&v23, &unk_3C2550, &qword_2E4E40);
      }

      v15 += 5;
      --v14;
    }

    while (v14);
  }

  else
  {
  }

  return v2;
}

BOOL sub_1FA070(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (!*v1)
  {
    return 1;
  }

  if (*v1 == 1)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_691F8(i, v27);
      sub_72084(v27, v28);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v5 = sub_2C60B8();
      v23 = &v22;
      v6 = *(v5 - 8);
      __chkstk_darwin(v5);
      v8 = &v22 - v7;
      sub_2BF388();
      v9 = *(AssociatedTypeWitness - 8);
      if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
      {
        (*(v6 + 8))(v8, v5);
        sub_68CD0(v27);
      }

      else
      {
        *(&v25 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_720C8(&v24);
        (*(v9 + 32))();
        v10 = sub_2BF598();
        sub_68CD0(&v24);
        sub_68CD0(v27);
        if (v10)
        {
          return 1;
        }
      }

      if (!--v2)
      {
        return 0;
      }
    }
  }

  for (j = a1 + 32; ; j += 40)
  {
    sub_691F8(j, v27);
    sub_72084(v27, v28);
    v14 = swift_getAssociatedTypeWitness();
    v15 = sub_2C60B8();
    v23 = &v22;
    v16 = *(v15 - 8);
    __chkstk_darwin(v15);
    v18 = &v22 - v17;
    sub_2BF388();
    v19 = *(v14 - 8);
    v20 = (*(v19 + 48))(v18, 1, v14);
    v11 = v20 != 1;
    if (v20 != 1)
    {
      break;
    }

    (*(v16 + 8))(v18, v15);
    AssociatedConformanceWitness = 0;
    v24 = 0u;
    v25 = 0u;
    sub_69198(&v24, &qword_3BDAE8, &unk_2E4DB0);
    sub_68CD0(v27);
    if (!--v2)
    {
      return v11;
    }
  }

  *(&v25 + 1) = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = sub_720C8(&v24);
  (*(v19 + 32))(v21, v18, v14);
  sub_69198(&v24, &qword_3BDAE8, &unk_2E4DB0);
  sub_68CD0(v27);
  return v11;
}

BookStoreUI::SeriesListFilterOption_optional __swiftcall SeriesListFilterOption.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1FA4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6640;
  if (!qword_3C6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6640);
  }

  return result;
}

char *Shelf.cardSetData.getter()
{
  v1 = sub_6620C(&qword_3BDCF8, &unk_2EE780);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_2C2338();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Shelf(0);
  v7 = sub_1FD4F0(*(v0 + *(v6 + 68)));
  if (!v7)
  {
    return 0;
  }

  v8 = v7[2];
  if (v8)
  {
    v17 = v7;
    v9 = (v7 + 4);
    v10 = (v18 + 48);
    v11 = (v18 + 32);
    v12 = _swiftEmptyArrayStorage;
    do
    {
      sub_691F8(v9, v20);
      sub_72084(v20, v20[3]);
      sub_2C1378();
      sub_68CD0(v20);
      if ((*v10)(v3, 1, v4) == 1)
      {
        sub_69198(v3, &qword_3BDCF8, &unk_2EE780);
      }

      else
      {
        v13 = *v11;
        (*v11)(v19, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_5BC84(0, *(v12 + 2) + 1, 1, v12);
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          v12 = sub_5BC84((v14 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v15 + 1;
        v13(&v12[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15], v19, v4);
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t type metadata accessor for Shelf(uint64_t a1)
{
  result = qword_3C67F8;
  if (!qword_3C67F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Shelf.init(id:shelfGridID:showDivider:presentation:itemKind:items:impressionable:impressionMetrics:location:sectionData:backgroundViewModel:headerComponentModel:footerComponentModel:emptyComponentModel:spacing:paginationInfo:paginationIntentProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v54 = *a5;
  v24 = type metadata accessor for Shelf(0);
  v25 = v24[8];
  v26 = sub_2C5018();
  v60 = v25;
  (*(*(v26 - 8) + 56))(a9 + v25, 1, 1, v26);
  v27 = v24[9];
  v28 = sub_2C22F8();
  v59 = v27;
  (*(*(v28 - 8) + 56))(a9 + v27, 1, 1, v28);
  v29 = v24[16];
  v30 = type metadata accessor for ContentUnavailableComponentModel(0);
  (*(*(v30 - 8) + 56))(a9 + v29, 1, 1, v30);
  v31 = v24[18];
  v32 = sub_2C0E58();
  (*(*(v32 - 8) + 56))(a9 + v31, 1, 1, v32);
  v33._rawValue = a7;
  sub_2C0AB8(v33);
  v67 = v19;
  if (v19)
  {

    sub_69198(a19, &qword_3C2AC8, &unk_2EE770);
    sub_69198(a18, &qword_3C2AC0, &unk_2EE760);
    sub_69198(a17, &qword_3C1C70, &unk_2EE730);
    sub_69198(a16, &qword_3C1A00, &unk_2EF540);
    v34 = sub_2C1CB8();
    (*(*(v34 - 8) + 8))(a15, v34);
    v35 = sub_2C1D08();
    (*(*(v35 - 8) + 8))(a14, v35);
    v36 = sub_2C1B98();
    (*(*(v36 - 8) + 8))(a13, v36);
    sub_69198(a12, &qword_3BDE70, &qword_2E52F0);
    sub_69198(a11, &qword_3C1730, &unk_2EE740);
    sub_69198(a10, &qword_3BDF58, &unk_2E5B70);
    v37 = sub_2C0AF8();
    (*(*(v37 - 8) + 8))(a6, v37);
    sub_69198(a3, &qword_3BE008, &unk_2E5630);
    sub_69198(a9 + v60, &qword_3BDF58, &unk_2E5B70);
    sub_69198(a9 + v59, &qword_3C1730, &unk_2EE740);
    sub_69198(a9 + v29, &qword_3C1A00, &unk_2EF540);
    return sub_69198(a9 + v31, &qword_3C2AC0, &unk_2EE760);
  }

  else
  {
    v53 = v31;
    *a9 = a1;
    *(a9 + 8) = a2;
    sub_6932C(a3, &v61, &qword_3BE008, &unk_2E5630);
    if (*(&v62 + 1))
    {
      sub_69198(a3, &qword_3BE008, &unk_2E5630);
      v64 = v61;
      v65 = v62;
      v66 = v63;
      v39 = v29;
      v40 = a15;
    }

    else
    {

      sub_2C61A8();
      sub_69198(a3, &qword_3BE008, &unk_2E5630);
      v39 = v29;
      v40 = a15;
      if (*(&v62 + 1))
      {
        sub_69198(&v61, &qword_3BE008, &unk_2E5630);
      }
    }

    v41 = a9 + v24[10];
    v42 = v65;
    *v41 = v64;
    *(v41 + 16) = v42;
    *(v41 + 32) = v66;
    *(a9 + v24[11]) = a4 & 1;
    *(a9 + 16) = v54;
    v43 = v24[6];
    v44 = sub_2C0AF8();
    (*(*(v44 - 8) + 32))(a9 + v43, a6, v44);
    *(a9 + v24[17]) = a7;
    *(a9 + v24[7]) = a8 & 1;
    sub_A9708(a10, a9 + v60, &qword_3BDF58, &unk_2E5B70);
    sub_A9708(a11, a9 + v59, &qword_3C1730, &unk_2EE740);
    sub_69130(a12, a9 + v24[20], &qword_3BDE70, &qword_2E52F0);
    v45 = v24[13];
    v46 = sub_2C1B98();
    (*(*(v46 - 8) + 32))(a9 + v45, a13, v46);
    v47 = v24[14];
    v48 = sub_2C1D08();
    (*(*(v48 - 8) + 32))(a9 + v47, a14, v48);
    v49 = v24[15];
    v50 = sub_2C1CB8();
    (*(*(v50 - 8) + 32))(a9 + v49, v40, v50);
    sub_A9708(a16, a9 + v39, &qword_3C1A00, &unk_2EF540);
    sub_69130(a17, a9 + v24[12], &qword_3C1C70, &unk_2EE730);
    result = sub_A9708(a18, a9 + v53, &qword_3C2AC0, &unk_2EE760);
    v51 = a9 + v24[19];
    v52 = *(a19 + 16);
    *v51 = *a19;
    *(v51 + 16) = v52;
    *(v51 + 32) = *(a19 + 32);
  }

  return result;
}

double Shelf.init<A>(id:shelfGridID:showDivider:presentation:items:gridType:itemsPerColumn:impressionable:impressionMetrics:location:sectionData:backgroundViewModel:headerComponentModel:footerComponentModel:spacing:paginationInfo:paginationIntentProvider:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned __int8 *a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _BYTE *a21, _BYTE *a22)
{
  v108 = a8;
  v121 = a7;
  v106 = a6;
  v103 = a5;
  v89 = a4;
  v123 = a3;
  v107 = a2;
  v90 = a1;
  v91 = a9;
  v93 = a19;
  v109 = a18;
  v112 = a17;
  v113 = a16;
  v116 = a15;
  v118 = a14;
  v119 = a13;
  v120 = a12;
  v92 = a20;
  v104 = a21;
  v105 = a22;
  LODWORD(v102) = a10;
  v22 = sub_6620C(&qword_3C2AC0, &unk_2EE760);
  __chkstk_darwin(v22 - 8);
  v122 = &v86[-v23];
  v24 = sub_6620C(&qword_3C1C70, &unk_2EE730);
  __chkstk_darwin(v24 - 8);
  v125 = &v86[-v25];
  v26 = sub_6620C(&qword_3C1A00, &unk_2EF540);
  __chkstk_darwin(v26 - 8);
  v28 = &v86[-v27];
  v138 = sub_2C1CB8();
  v111 = *(v138 - 8);
  __chkstk_darwin(v138);
  v126 = &v86[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_2C1D08();
  v110 = *(v114 - 8);
  __chkstk_darwin(v114);
  v124 = &v86[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = sub_2C1B98();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v32 = &v86[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v33 - 8);
  v35 = &v86[-v34];
  v36 = sub_6620C(&qword_3C1730, &unk_2EE740);
  __chkstk_darwin(v36 - 8);
  v38 = &v86[-v37];
  v39 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v39 - 8);
  v41 = &v86[-v40];
  v42 = sub_6620C(&qword_3C2AB0, &qword_2EF550);
  __chkstk_darwin(v42 - 8);
  v44 = &v86[-v43];
  v101 = sub_2C0AF8();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v46 = &v86[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = *v103;
  sub_6932C(v123, v137, &qword_3BE008, &unk_2E5630);
  sub_6932C(v121, v44, &qword_3C2AB0, &qword_2EF550);
  sub_2C0A88();
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  v108 = sub_2C6358();

  v102 = v41;
  sub_6932C(v120, v41, &qword_3BDF58, &unk_2E5B70);
  v103 = v38;
  sub_6932C(v119, v38, &qword_3C1730, &unk_2EE740);
  v104 = v35;
  sub_6932C(v118, v35, &qword_3BDE70, &qword_2E52F0);
  v47 = *(v115 + 16);
  v105 = v32;
  v47(v32, v116, v117);
  v48 = v91;
  (*(v110 + 16))(v124, v113, v114);
  (*(v111 + 16))(v126, v112, v138);
  v49 = type metadata accessor for ContentUnavailableComponentModel(0);
  v50 = *(*(v49 - 8) + 56);
  v106 = v28;
  (v50)(v28, 1, 1, v49);
  v51 = v93;
  sub_6932C(v109, v125, &qword_3C1C70, &unk_2EE730);
  v52 = v92;
  sub_6932C(v51, v122, &qword_3C2AC0, &unk_2EE760);
  sub_6932C(v52, v135, &qword_3C2AC8, &unk_2EE770);
  v53 = type metadata accessor for Shelf(0);
  v54 = v48 + v53[8];
  v55 = sub_2C5018();
  v56 = *(*(v55 - 8) + 56);
  v95 = v54;
  v56(v54, 1, 1, v55);
  v57 = v48 + v53[9];
  v58 = sub_2C22F8();
  (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
  v96 = v48 + v53[16];
  v59 = v108;
  v50();
  v60 = v48 + v53[18];
  v61 = sub_2C0E58();
  (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
  v62._rawValue = v59;
  v99 = v46;
  v63 = v97;
  sub_2C0AB8(v62);
  v97 = v63;
  v98 = v60;
  v94 = v57;
  if (v63)
  {

    sub_69198(v52, &qword_3C2AC8, &unk_2EE770);
    sub_69198(v51, &qword_3C2AC0, &unk_2EE760);
    sub_69198(v109, &qword_3C1C70, &unk_2EE730);
    v64 = *(v111 + 8);
    v65 = v138;
    v64(v112, v138);
    v66 = *(v110 + 8);
    v67 = v114;
    v66(v113, v114);
    v68 = *(v115 + 8);
    v69 = v117;
    v68(v116, v117);
    sub_69198(v118, &qword_3BDE70, &qword_2E52F0);
    sub_69198(v119, &qword_3C1730, &unk_2EE740);
    sub_69198(v120, &qword_3BDF58, &unk_2E5B70);
    sub_69198(v121, &qword_3C2AB0, &qword_2EF550);
    sub_69198(v123, &qword_3BE008, &unk_2E5630);
    sub_69198(v135, &qword_3C2AC8, &unk_2EE770);
    sub_69198(v122, &qword_3C2AC0, &unk_2EE760);
    sub_69198(v125, &qword_3C1C70, &unk_2EE730);
    sub_69198(v106, &qword_3C1A00, &unk_2EF540);
    v64(v126, v65);
    v66(v124, v67);
    v68(v105, v69);
    sub_69198(v104, &qword_3BDE70, &qword_2E52F0);
    sub_69198(v103, &qword_3C1730, &unk_2EE740);
    sub_69198(v102, &qword_3BDF58, &unk_2E5B70);
    (*(v100 + 8))(v99, v101);
    sub_69198(v137, &qword_3BE008, &unk_2E5630);
    sub_69198(v95, &qword_3BDF58, &unk_2E5B70);
    sub_69198(v94, &qword_3C1730, &unk_2EE740);
    sub_69198(v96, &qword_3C1A00, &unk_2EF540);
    sub_69198(v98, &qword_3C2AC0, &unk_2EE760);
  }

  else
  {
    v71 = v109;
    v72 = v112;
    v73 = v110;
    v74 = v111;
    v75 = v138;
    v87 = a11;
    v76 = v107;
    *v48 = v90;
    *(v48 + 8) = v76;
    sub_6932C(v137, &v129, &qword_3BE008, &unk_2E5630);
    if (*(&v130 + 1))
    {
      sub_69198(v52, &qword_3C2AC8, &unk_2EE770);
      sub_69198(v51, &qword_3C2AC0, &unk_2EE760);
      sub_69198(v71, &qword_3C1C70, &unk_2EE730);
      v77 = v74;
      (*(v74 + 8))(v72, v75);
      v78 = v73;
      v79 = v114;
      (*(v73 + 8))(v113, v114);
      v80 = v115;
      v81 = v117;
      (*(v115 + 8))(v116, v117);
      sub_69198(v118, &qword_3BDE70, &qword_2E52F0);
      sub_69198(v119, &qword_3C1730, &unk_2EE740);
      sub_69198(v120, &qword_3BDF58, &unk_2E5B70);
      sub_69198(v121, &qword_3C2AB0, &qword_2EF550);
      sub_69198(v123, &qword_3BE008, &unk_2E5630);
      sub_69198(v137, &qword_3BE008, &unk_2E5630);
      v132 = v129;
      v133 = v130;
      v134 = v131;
    }

    else
    {
      v127 = v90;
      v128 = v107;

      sub_2C61A8();
      sub_69198(v52, &qword_3C2AC8, &unk_2EE770);
      sub_69198(v51, &qword_3C2AC0, &unk_2EE760);
      sub_69198(v71, &qword_3C1C70, &unk_2EE730);
      v77 = v74;
      (*(v74 + 8))(v72, v75);
      v78 = v73;
      v79 = v114;
      (*(v73 + 8))(v113, v114);
      v80 = v115;
      v81 = v117;
      (*(v115 + 8))(v116, v117);
      sub_69198(v118, &qword_3BDE70, &qword_2E52F0);
      sub_69198(v119, &qword_3C1730, &unk_2EE740);
      sub_69198(v120, &qword_3BDF58, &unk_2E5B70);
      sub_69198(v121, &qword_3C2AB0, &qword_2EF550);
      sub_69198(v123, &qword_3BE008, &unk_2E5630);
      sub_69198(v137, &qword_3BE008, &unk_2E5630);
      if (*(&v130 + 1))
      {
        sub_69198(&v129, &qword_3BE008, &unk_2E5630);
      }
    }

    v82 = v48 + v53[10];
    v83 = v133;
    *v82 = v132;
    *(v82 + 16) = v83;
    *(v82 + 32) = v134;
    *(v48 + v53[11]) = v89 & 1;
    *(v48 + 16) = v88;
    (*(v100 + 32))(v48 + v53[6], v99, v101);
    *(v48 + v53[17]) = v108;
    *(v48 + v53[7]) = v87 & 1;
    sub_A9708(v102, v95, &qword_3BDF58, &unk_2E5B70);
    sub_A9708(v103, v94, &qword_3C1730, &unk_2EE740);
    sub_69130(v104, v48 + v53[20], &qword_3BDE70, &qword_2E52F0);
    (*(v80 + 32))(v48 + v53[13], v105, v81);
    (*(v78 + 32))(v48 + v53[14], v124, v79);
    (*(v77 + 32))(v48 + v53[15], v126, v138);
    sub_A9708(v106, v96, &qword_3C1A00, &unk_2EF540);
    sub_69130(v125, v48 + v53[12], &qword_3C1C70, &unk_2EE730);
    sub_A9708(v122, v98, &qword_3C2AC0, &unk_2EE760);
    v84 = v48 + v53[19];
    result = *v135;
    v85 = v135[1];
    *v84 = v135[0];
    *(v84 + 16) = v85;
    *(v84 + 32) = v136;
  }

  return result;
}

double Shelf.paginationIntent.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Shelf(0);
  sub_6932C(v1 + *(v3 + 76), v7, &qword_3C2AC8, &unk_2EE770);
  v4 = v8;
  if (v8)
  {
    v5 = v9;
    sub_72084(v7, v8);
    (*(v5 + 8))(v1, v4, v5);
    sub_68CD0(v7);
  }

  else
  {
    sub_69198(v7, &qword_3C2AC8, &unk_2EE770);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t Shelf.withMetricsIndex(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = a1;
  v2 = sub_2C5018();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shelf(0);
  __chkstk_darwin(v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3C1730, &unk_2EE740);
  __chkstk_darwin(v8 - 8);
  v39 = &v38 - v9;
  v10 = sub_2C4FE8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v14 - 8);
  v41 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v45 = v5;
  v19 = *(v5 + 32);
  v20 = v42;
  sub_6932C(v42 + v19, &v38 - v17, &qword_3BDF58, &unk_2E5B70);
  v21 = *(v3 + 48);
  if (v21(v18, 1, v2) == 1)
  {
    v22 = &qword_3BDF58;
    v23 = &unk_2E5B70;
LABEL_3:
    sub_69198(v18, v22, v23);
    goto LABEL_10;
  }

  sub_2C4FF8();
  (*(v3 + 8))(v18, v2);
  v24 = sub_2C4FD8();
  (*(v11 + 8))(v13, v10);
  if (v24 != v44)
  {
    goto LABEL_10;
  }

  v18 = v39;
  sub_6932C(v20 + *(v45 + 36), v39, &qword_3C1730, &unk_2EE740);
  v25 = sub_2C22F8();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v18, 1, v25) == 1)
  {
    v22 = &qword_3C1730;
    v23 = &unk_2EE740;
    goto LABEL_3;
  }

  v38 = sub_2C22C8();
  v28 = v27;
  (*(v26 + 8))(v18, v25);
  if ((v28 & 1) == 0 && v38 == v44)
  {
    return sub_91560(v20, v43);
  }

LABEL_10:
  sub_91560(v20, v7);
  v30 = v45;
  v31 = *(v45 + 32);
  v32 = 1;
  v33 = v21(&v7[v31], 1, v2);
  v34 = v41;
  if (!v33)
  {
    v35 = v40;
    (*(v3 + 16))(v40, &v7[v31], v2);
    sub_2C5008();
    v30 = v45;
    (*(v3 + 8))(v35, v2);
    v32 = 0;
  }

  (*(v3 + 56))(v34, v32, 1, v2);
  sub_A9708(v34, &v7[v31], &qword_3BDF58, &unk_2E5B70);
  v36 = *(v30 + 36);
  v37 = sub_2C22F8();
  if (!(*(*(v37 - 8) + 48))(&v7[v36], 1, v37))
  {
    sub_2C22D8();
  }

  return sub_1669F0(v7, v43);
}

BookStoreUI::Shelf::Presentation::Orientation_optional __swiftcall Shelf.Presentation.Orientation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_389BB8;
  v8._object = object;
  v5 = sub_2C63E8(v4, v8);

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

  *v3 = v7;
  return result;
}

uint64_t Shelf.Presentation.Orientation.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t sub_1FC7C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61636974726576;
  }

  else
  {
    v3 = 0x746E6F7A69726F68;
  }

  if (v2)
  {
    v4 = 0xEA00000000006C61;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61636974726576;
  }

  else
  {
    v5 = 0x746E6F7A69726F68;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}