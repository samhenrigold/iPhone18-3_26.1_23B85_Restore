uint64_t sub_10012BE34(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FCE90, &unk_100185140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012BE9C()
{
  v1 = (type metadata accessor for ModalPresentationCoordinator.QueueEntry(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  if (*(v0 + v3 + v1[12]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7, v7);
}

void sub_10012BFA4()
{
  v1 = *(type metadata accessor for ModalPresentationCoordinator.QueueEntry(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_100127704(v2);
}

uint64_t sub_10012C004(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10012C058()
{
  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7, v1);
}

uint64_t sub_10012C0A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10012C10C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10012C1CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10012C270(uint64_t a1)
{
  sub_10003E110(319, &qword_1001FDE30, UIViewController_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10012C36C();
      if (v3 <= 0x3F)
      {
        sub_10012C3BC(319);
        if (v4 <= 0x3F)
        {
          sub_10012C420(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10012C36C()
{
  if (!qword_100201F80)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201F80);
    }
  }
}

void sub_10012C3BC(uint64_t a1)
{
  if (!qword_100201F88)
  {
    sub_10003C4E4(&qword_100201F90, &qword_1001851D8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100201F88);
    }
  }
}

void sub_10012C420(uint64_t a1)
{
  if (!qword_100201F98)
  {
    type metadata accessor for CGRect(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100201F98);
    }
  }
}

unint64_t sub_10012C49C()
{
  result = qword_100201FE0;
  if (!qword_100201FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201FE0);
  }

  return result;
}

unint64_t sub_10012C4F4()
{
  result = qword_100201FE8;
  if (!qword_100201FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201FE8);
  }

  return result;
}

__n128 sub_10012C5C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10012C5E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10012C630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10012C6E4@<Q0>(DARootViewController *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v45 = a8;
  *(&v41 + 1) = a2;
  v42 = a3;
  v44 = a10;
  v16 = a7 & 1;
  v17 = sub_10003C49C(&qword_1001FF698, &qword_100181EA0);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  *&v48 = 0;
  State.init(wrappedValue:)();
  v20 = *(&v53 + 1);
  v46 = v53;
  v65 = v16;
  v43 = a6;
  LOBYTE(v48) = (a7 & 1) == 0 && a6 <= 0x18 && ((1 << a6) & 0x1010100) != 0;

  State.init(wrappedValue:)();
  v28 = v53;
  *&v41 = *(&v53 + 1);
  if (a5)
  {
    a1, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    if (a1 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1, v21, v22, v23, v24, v25, v26, v27;
    if (v29 > a4)
    {
      *&v48 = a4;
      State.init(wrappedValue:)();

      v20 = *(&v53 + 1);
      v46 = v53;
    }
  }

  sub_10003E110(0, &qword_100201E38, NSTimer_ptr);
  v30 = [objc_opt_self() mainRunLoop];
  v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v31 - 8) + 56))(v19, 1, 1, v31);
  v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_10003DD84(v19, &qword_1001FF698, &qword_100181EA0);
  *&v53 = v32;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_10012EED4(&qword_100201E40, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v33 = ConnectablePublisher.autoconnect()();

  *&v48 = v33;
  sub_10003C49C(&qword_100201DC8, &unk_100184E80);
  State.init(wrappedValue:)();
  v34 = v53;
  v48 = xmmword_100185440;
  *v49 = 0x3FF0000000000000;
  *&v49[8] = v53;
  *&v49[24] = v46;
  v50.n128_u64[0] = v20;
  v50.n128_u8[8] = v28;
  *(&v50.n128_u32[2] + 1) = v66[0];
  v50.n128_u32[3] = *(v66 + 3);
  v51 = v41;
  *&v52[0] = v42;
  *(&v52[0] + 1) = a1;
  *&v52[1] = v43;
  BYTE8(v52[1]) = v65;
  v53 = xmmword_100185440;
  v54 = 0x3FF0000000000000;
  v55 = v34;
  v56 = v46;
  v57 = v20;
  v58 = v28;
  *v59 = v66[0];
  *&v59[3] = *(v66 + 3);
  v60 = v41;
  v61 = v42;
  v62 = a1;
  v63 = v43;
  v64 = v65;
  v36 = v44;
  v35 = v45;
  sub_100044704(&v48, &v47, v45, v44);
  sub_10003DD84(&v53, v35, v36);
  v37 = v52[0];
  *(a9 + 64) = v51;
  *(a9 + 80) = v37;
  *(a9 + 89) = *(v52 + 9);
  v38 = *v49;
  *a9 = v48;
  *(a9 + 16) = v38;
  result = v50;
  *(a9 + 32) = *&v49[16];
  *(a9 + 48) = result;
  return result;
}

uint64_t sub_10012CAB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v43 = type metadata accessor for ScrollBounceBehavior();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ScrollIndicatorVisibility();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&qword_100201FF8, &qword_100185510);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v44 = sub_10003C49C(&qword_100202000, &qword_100185518);
  v40 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v38 - v10;
  v50 = sub_10003C49C(&qword_100202008, &qword_100185520);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v38 - v12;
  v52 = sub_10003C49C(&qword_100202010, &qword_100185528);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v38 - v13;
  v47 = sub_10003C49C(&qword_100202018, &qword_100185530);
  __chkstk_darwin(v47);
  v46 = &v38 - v14;
  v54 = v2;
  static Axis.Set.vertical.getter();
  sub_10003C49C(&qword_100202020, &unk_100185538);
  sub_10005C71C(&qword_100202028, &qword_100202020, &unk_100185538, &protocol conformance descriptor for TupleView<A>);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.hidden.getter();
  sub_10003C49C(&qword_1001FF278, &qword_100181AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC10;
  v16 = static Axis.Set.vertical.getter();
  *(inited + 32) = v16;
  v17 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v17;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    Axis.Set.init(rawValue:)();
  }

  v18 = sub_10005C71C(&qword_100202030, &qword_100201FF8, &qword_100185510, &protocol conformance descriptor for ScrollView<A>);
  View.scrollIndicators(_:axes:)();
  (*(v38 + 8))(v5, v39);
  (*(v7 + 8))(v9, v6);
  v19 = v41;
  static ScrollBounceBehavior.basedOnSize.getter();
  v20 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v20)
  {
    Axis.Set.init(rawValue:)();
  }

  *&v55 = v6;
  *(&v55 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v45;
  v23 = v44;
  View.scrollBounceBehavior(_:axes:)();
  (*(v42 + 8))(v19, v43);
  (*(v40 + 8))(v11, v23);
  v58 = *(v2 + 16);
  v59 = *(v2 + 32);
  sub_10003C49C(&qword_100202038, &qword_100185548);
  State.projectedValue.getter();
  v58 = v55;
  v59 = v56;
  v60 = v57;
  v24 = swift_allocObject();
  v25 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v2 + 64);
  *(v24 + 96) = *(v2 + 80);
  v26 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v26;
  sub_10012E9A4(v2, &v55);
  sub_10003C49C(&qword_100202040, &qword_100185550);
  *&v55 = v23;
  *(&v55 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10012E9DC();
  sub_10012EA30();
  v27 = v48;
  v28 = v50;
  View.fullScreenCover<A, B>(item:onDismiss:content:)();

  (*(v49 + 8))(v22, v28);
  v29 = static Alignment.center.getter();
  v31 = v30;
  v32 = swift_allocObject();
  v33 = *(v2 + 48);
  *(v32 + 48) = *(v2 + 32);
  *(v32 + 64) = v33;
  *(v32 + 80) = *(v2 + 64);
  *(v32 + 96) = *(v2 + 80);
  v34 = *(v2 + 16);
  *(v32 + 16) = *v2;
  *(v32 + 32) = v34;
  v35 = v46;
  (*(v51 + 32))(v46, v27, v52);
  v36 = (v35 + *(v47 + 36));
  *v36 = sub_10012EB18;
  v36[1] = v32;
  v36[2] = v29;
  v36[3] = v31;
  sub_10012EB20(v35, v53);
  return sub_10012E9A4(v2, &v55);
}

uint64_t sub_10012D358@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = sub_10003C49C(&qword_100202070, &qword_100185590);
  __chkstk_darwin(v36);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = *(a1 + 64);
  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10012EE5C(&v64);
    goto LABEL_8;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = swift_allocObject();
  v10 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = *(a1 + 80);
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;

  sub_10012E9A4(a1, &v64);
  sub_10012C6E4(v8, sub_10012ED6C, v9, 0, 1, 0, 1, &qword_1002020C0, &v76, &qword_1001855E8);
  v82 = *(a1 + 40);
  v83 = *(a1 + 56);
  v64 = *(a1 + 40);
  *&v65 = *(a1 + 56);
  sub_10003C49C(&qword_1001FE090, &qword_100185560);
  State.wrappedValue.getter();
  v64 = v82;
  *&v65 = v83;
  State.wrappedValue.getter();
  if (qword_1001FC828 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v51 + 9) = *&v81[9];
  v50[12] = v76;
  v50[13] = v77;
  v50[16] = v80;
  v51[0] = *v81;
  v50[14] = v78;
  v50[15] = v79;
  v54 = v78;
  v55 = v79;
  v52 = v76;
  v53 = v77;
  v56 = v80;
  v57 = *v81;
  v60 = v51[3];
  v61 = v51[4];
  v58 = v51[1];
  v59 = v51[2];
  v63 = 0uLL;
  *&v62 = sub_10012DC28;
  *(&v62 + 1) = 0;
  Int.id.getter();
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v67 = v55;
LABEL_8:
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_10003C49C(&qword_100202078, &unk_100185598);
  v12 = *(*(a1 + 72) + 16);
  *&v50[0] = 0;
  *(&v50[0] + 1) = v12;
  swift_getKeyPath();
  v13 = swift_allocObject();
  v14 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a1 + 64);
  *(v13 + 96) = *(a1 + 80);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  sub_10012E9A4(a1, &v52);
  sub_10003C49C(&qword_1001FF2A0, &qword_100181AE0);
  sub_10003C49C(&qword_100202080, &qword_1001855C8);
  sub_10009DB54();
  sub_10012ED7C();
  ForEach<>.init(_:id:content:)();
  v16 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v17 = &v7[*(v36 + 36)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v46 = v72;
  v47 = v73;
  v48 = v74;
  v49 = v75;
  v42 = v68;
  v43 = v69;
  v44 = v70;
  v45 = v71;
  v38 = v64;
  v39 = v65;
  v40 = v66;
  v41 = v67;
  v22 = v37;
  sub_100044704(v7, v37, &qword_100202070, &qword_100185590);
  v23 = v47;
  v50[8] = v46;
  v50[9] = v47;
  v24 = v48;
  v25 = v49;
  v50[10] = v48;
  v50[11] = v49;
  v26 = v42;
  v27 = v43;
  v50[4] = v42;
  v50[5] = v43;
  v28 = v44;
  v29 = v45;
  v50[6] = v44;
  v50[7] = v45;
  v30 = v38;
  v31 = v39;
  v50[0] = v38;
  v50[1] = v39;
  v32 = v40;
  v33 = v41;
  v50[2] = v40;
  v50[3] = v41;
  a2[8] = v46;
  a2[9] = v23;
  a2[10] = v24;
  a2[11] = v25;
  a2[4] = v26;
  a2[5] = v27;
  a2[6] = v28;
  a2[7] = v29;
  *a2 = v30;
  a2[1] = v31;
  a2[2] = v32;
  a2[3] = v33;
  v34 = sub_10003C49C(&qword_100202098, &qword_1001855D0);
  sub_100044704(v22, a2 + *(v34 + 48), &qword_100202070, &qword_100185590);
  sub_100044704(v50, &v52, &qword_1002020A0, &qword_1001855D8);
  sub_10003DD84(v7, &qword_100202070, &qword_100185590);
  sub_10003DD84(v22, &qword_100202070, &qword_100185590);
  v60 = v46;
  v61 = v47;
  v62 = v48;
  v63 = v49;
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v55 = v41;
  return sub_10003DD84(&v52, &qword_1002020A0, &qword_1001855D8);
}

double sub_10012D90C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a2 + 64);
  v8 = *(a2 + 80);
  v9 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v9;
  *(v6 + 96) = v8;
  *(v6 + 104) = a1;
  sub_10012E9A4(a2, v12);
  sub_10003C49C(&qword_1002020C8, &qword_1001855F0);
  sub_10012EFEC();
  Button.init(action:label:)();
  LOBYTE(a2) = static Edge.Set.all.getter();
  v10 = a3 + *(sub_10003C49C(&qword_100202118, &qword_100185628) + 36);
  *v10 = a2;
  result = 0.0;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 1;
  return result;
}

double sub_10012DA24@<D0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(systemName:)();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v23) = 1;
  v22[8] = 0;
  v16 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = static Color.black.getter();
  v19 = static Edge.Set.all.getter();
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v3;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  *(a2 + 64) = 0;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = v16;
  v20 = v24;
  *(a2 + 88) = v23;
  *(a2 + 104) = v20;
  result = *&v25;
  *(a2 + 120) = v25;
  *(a2 + 136) = v18;
  *(a2 + 144) = v19;
  return result;
}

void sub_10012DC28()
{
  sub_10003E110(0, &qword_100201438, UIPageControl_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata appearance];
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  [v1 setCurrentPageIndicatorTintColor:v3];

  v4 = [ObjCClassFromMetadata appearance];
  v5 = [v2 secondaryLabelColor];
  [v4 setPageIndicatorTintColor:v5];
}

unint64_t *sub_10012DD38@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 72);
    if (v3 < *(v5 + 16))
    {
      v6 = *(v5 + 16 * v3 + 40);

      sub_10012DE08(&v18);
      v6, v7, v8, v9, v10, v11, v12, v13;
      v14 = v18;
      v17 = v19;
      v15 = v20;
      v16 = v21;
      result = static Edge.Set.bottom.getter();
      *a3 = v14;
      *(a3 + 8) = v17;
      *(a3 + 24) = v15;
      *(a3 + 32) = v16;
      *(a3 + 40) = result;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_10012DE08@<Q0>(__n128 *a2@<X8>)
{
  v3 = v2;
  v5 = objc_allocWithZone(NSMutableAttributedString);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithString:v6];

  v8 = [objc_allocWithZone(UILabel) init];
  v9 = _UISolariumEnabled();
  v10 = &UIFontTextStyleTitle2;
  if (!v9)
  {
    v10 = &UIFontTextStyleBody;
  }

  v11 = *v10;
  v12 = [objc_opt_self() preferredFontForTextStyle:v11];

  [v8 setFont:v12];
  LODWORD(v11) = _UISolariumEnabled();
  v13 = objc_opt_self();
  v14 = &selRef_secondaryLabelColor;
  if (!v11)
  {
    v14 = &selRef_labelColor;
  }

  v15 = [v13 *v14];
  [v8 setTextColor:v15];

  [v8 setNumberOfLines:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  v16 = *(v2 + 80);
  if (v16 == 1)
  {
    v93.n128_u64[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v93.n128_u64[1] = v17;
    v18._countAndFlagsBits = 0x2E656C637269632ELL;
    v18._object = 0xEC0000006C6C6966;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();
    v93.n128_u64[1], v20, v21, v22, v23, v24, v25, v26;
    v27 = [objc_opt_self() systemImageNamed:v19];

    if (v27)
    {
      v28 = [objc_opt_self() textAttachmentWithImage:v27];
      sub_10003C49C(&qword_1002020A8, &qword_1001855E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC00;
      v91 = v27;
      v92 = v3;
      *(inited + 32) = NSForegroundColorAttributeName;
      v30 = objc_opt_self();
      v31 = NSForegroundColorAttributeName;
      v32 = [v30 systemBlueColor];
      *(inited + 64) = sub_10003E110(0, &qword_100202970, UIColor_ptr);
      *(inited + 40) = v32;
      v33 = sub_1000D6020(inited);
      swift_setDeallocating();
      sub_10003DD84(inited + 32, &qword_100200718, &unk_100186380);
      type metadata accessor for Key(0);
      v90 = sub_10012EED4(&qword_1001FCCE0, type metadata accessor for Key, &unk_10017E92C);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v33, v35, v36, v37, v38, v39, v40, v41;
      v42 = [objc_opt_self() attributedStringWithAttachment:v28 attributes:isa];

      v43 = objc_allocWithZone(NSAttributedString);
      v44 = String._bridgeToObjectiveC()();
      v45 = [v43 initWithString:v44];

      [v42 appendAttributedString:v45];
      v46 = v42;
      [v46 size];
      v48 = v47;
      v49 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10017EBF0;
      v51 = sub_1000D6148(&_swiftEmptyArrayStorage);
      v52 = objc_allocWithZone(NSTextTab);
      type metadata accessor for OptionKey(0);
      sub_10012EED4(&qword_1001FCD58, type metadata accessor for OptionKey, &unk_10017EBA4);
      v53 = Dictionary._bridgeToObjectiveC()().super.isa;
      v51, v54, v55, v56, v57, v58, v59, v60;
      v61 = [v52 initWithTextAlignment:0 location:v53 options:v48];

      *(v50 + 32) = v61;
      sub_10003E110(0, &qword_1002020B0, NSTextTab_ptr);
      v62 = Array._bridgeToObjectiveC()().super.isa;
      v50, v63, v64, v65, v66, v67, v68, v69;
      [v49 setTabStops:v62];

      [v49 setHeadIndent:v48];
      [v46 appendAttributedString:v7];

      v70 = swift_initStackObject();
      *(v70 + 16) = xmmword_10017EC00;
      *(v70 + 32) = NSParagraphStyleAttributeName;
      *(v70 + 64) = sub_10003E110(0, &qword_1002020B8, NSMutableParagraphStyle_ptr);
      *(v70 + 40) = v49;
      v7 = v46;
      v71 = NSParagraphStyleAttributeName;
      v72 = v49;
      v3 = v92;
      v73 = v72;
      v74 = sub_1000D6020(v70);
      swift_setDeallocating();
      sub_10003DD84(v70 + 32, &qword_100200718, &unk_100186380);
      v75 = Dictionary._bridgeToObjectiveC()().super.isa;
      v76 = v74;
      v16 = 1;
      v76, v77, v78, v79, v80, v81, v82, v83;
      v84 = [v7 length];

      [v7 addAttributes:v75 range:{0, v84}];
    }
  }

  v85 = _UISolariumEnabled();
  if (v16)
  {
    v86 = 4;
  }

  else
  {
    v86 = 1;
  }

  if (v85)
  {
    v87 = 4;
  }

  else
  {
    v87 = v86;
  }

  [v8 setTextAlignment:{v87, v90}];
  [v8 setAttributedText:v7];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v88 = *(v3 + 8);
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();

  result = v93;
  a2->n128_u64[0] = v8;
  a2->n128_u64[1] = v88;
  a2[1] = v93;
  a2[2].n128_u64[0] = v94;
  return result;
}

uint64_t sub_10012E548@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  __chkstk_darwin(v6 - 8);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(a2 + 64);
  v11 = objc_opt_self();

  v12 = [objc_msgSend(v11 "currentPlatform")];
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  sub_1000FB9F8(v10, v9, v13, v12 ^ 1, v8);
  KeyPath = swift_getKeyPath();
  v20 = *(a2 + 40);
  v21 = *(a2 + 56);
  sub_10003C49C(&qword_1001FE090, &qword_100185560);
  State.wrappedValue.getter();
  v15 = v19[0];
  v16 = v19[1];
  sub_1000FD270(v8, a3);
  result = sub_10003C49C(&qword_100202040, &qword_100185550);
  v18 = (a3 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  v18[2] = v16;
  return result;
}

double sub_10012E6C4@<D0>(_OWORD *a1@<X8>)
{
  sub_10006D4A4();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10012E760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = static Color.clear.getter();
  (*(v7 + 16))(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v6);
  v10 = (*(v7 + 80) + 104) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(a2 + 48);
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(a2 + 64);
  *(v11 + 96) = *(a2 + 80);
  v13 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v13;
  (*(v7 + 32))(v11 + v10, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
  *a3 = v9;
  a3[1] = sub_10012EC6C;
  a3[2] = v11;
  a3[3] = 0;
  a3[4] = 0;
  return sub_10012E9A4(a2, v16);
}

uint64_t sub_10012E8D8(uint64_t a1)
{
  GeometryProxy.size.getter();
  sub_10003C49C(&qword_1001FE090, &qword_100185560);
  return State.wrappedValue.setter();
}

unint64_t sub_10012E9DC()
{
  result = qword_100202048;
  if (!qword_100202048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202048);
  }

  return result;
}

unint64_t sub_10012EA30()
{
  result = qword_100202050;
  if (!qword_100202050)
  {
    sub_10003C4E4(&qword_100202040, &qword_100185550);
    sub_10012EED4(&qword_100202058, type metadata accessor for SelfServiceInstructionsFullScreenViewerView, &unk_1001841CC);
    sub_10005C71C(&qword_100202060, &qword_100202068, &qword_100185558, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202050);
  }

  return result;
}

uint64_t sub_10012EB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100202018, &qword_100185530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012EB90()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);

  *(v0 + 80), v6, v7, v8, v9, v10, v11, v12;
  *(v0 + 88), v13, v14, v15, v16, v17, v18, v19;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7, v20);
}

uint64_t sub_10012EC6C()
{
  type metadata accessor for GeometryProxy();

  return sub_10012E8D8(v0 + 16);
}

double sub_10012ECD0@<D0>(_OWORD *a1@<X8>)
{
  sub_10006D4A4();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_10012ED7C()
{
  result = qword_100202088;
  if (!qword_100202088)
  {
    sub_10003C4E4(&qword_100202080, &qword_1001855C8);
    sub_10012EE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202088);
  }

  return result;
}

unint64_t sub_10012EE08()
{
  result = qword_100202090;
  if (!qword_100202090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202090);
  }

  return result;
}

double sub_10012EE5C(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
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

uint64_t sub_10012EE7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10012EED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012EF24(uint64_t a1)
{

  *(v1 + 80), v3, v4, v5, v6, v7, v8, v9;
  *(v1 + 88), v10, v11, v12, v13, v14, v15, v16;

  return _swift_deallocObject(v1, a1, 7, v17);
}

unint64_t sub_10012EFEC()
{
  result = qword_1002020D0;
  if (!qword_1002020D0)
  {
    sub_10003C4E4(&qword_1002020C8, &qword_1001855F0);
    sub_10012F0A4();
    sub_10005C71C(&qword_1002014A0, &qword_1002014A8, &qword_100185620, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002020D0);
  }

  return result;
}

unint64_t sub_10012F0A4()
{
  result = qword_1002020D8;
  if (!qword_1002020D8)
  {
    sub_10003C4E4(&qword_1002020E0, &qword_1001855F8);
    sub_10012F15C();
    sub_10005C71C(&qword_1002000A0, &qword_1002000A8, &unk_100182850, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002020D8);
  }

  return result;
}

unint64_t sub_10012F15C()
{
  result = qword_1002020E8;
  if (!qword_1002020E8)
  {
    sub_10003C4E4(&qword_1002020F0, &qword_100185600);
    sub_10012F1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002020E8);
  }

  return result;
}

unint64_t sub_10012F1E8()
{
  result = qword_1002020F8;
  if (!qword_1002020F8)
  {
    sub_10003C4E4(&qword_100202100, &qword_100185608);
    sub_10012F2A0();
    sub_10005C71C(&qword_1001FF210, &qword_1001FF218, &qword_100181A40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002020F8);
  }

  return result;
}

unint64_t sub_10012F2A0()
{
  result = qword_100202108;
  if (!qword_100202108)
  {
    sub_10003C4E4(&qword_100202110, &unk_100185610);
    sub_1000B79F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202108);
  }

  return result;
}

uint64_t sub_10012F32C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10012F388()
{
  result = qword_100202120;
  if (!qword_100202120)
  {
    sub_10003C4E4(&qword_100202018, &qword_100185530);
    sub_10003C4E4(&qword_100202008, &qword_100185520);
    sub_10003C4E4(&qword_100202040, &qword_100185550);
    sub_10003C4E4(&qword_100202000, &qword_100185518);
    sub_10003C4E4(&qword_100201FF8, &qword_100185510);
    sub_10005C71C(&qword_100202030, &qword_100201FF8, &qword_100185510, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10012E9DC();
    sub_10012EA30();
    swift_getOpaqueTypeConformance2();
    sub_10005C71C(&qword_100202128, &qword_100202130, &qword_100185660, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202120);
  }

  return result;
}

uint64_t sub_10012F57C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10012F5C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10012F630(uint64_t a4@<X8>)
{
  sub_100079A64();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10007C874(v5, v7, (v9 & 1), v17, v19, v20, v21, v22);
  v11, v23, v24, v25, v26, v27, v28, v29;
  static Font.Weight.bold.getter();
  v30 = Text.fontWeight(_:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_10007C874(v12, v14, (v16 & 1), v35, v37, v38, v39, v40);
  v18, v41, v42, v43, v44, v45, v46, v47;
  KeyPath = swift_getKeyPath();
  v49 = (v34 & 1);
  *a4 = v30;
  *(a4 + 8) = v32;
  *(a4 + 16) = v49;
  *(a4 + 24) = v36;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 1;
  sub_10007C884(v30, v32, v49);

  sub_10007C874(v30, v32, v49, v50, v51, v52, v53, v54);

  v36, v55, v56, v57, v58, v59, v60, v61;
}

__n128 sub_10012F7B8@<Q0>(uint64_t a1@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  sub_10012F630(v6);
  *&v5[48] = *&v7[9];
  *&v5[39] = *v7;
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a1 + 17) = *v5;
  *(a1 + 33) = *&v5[16];
  result = *&v5[32];
  *(a1 + 49) = *&v5[32];
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v5[48];
  return result;
}

unint64_t sub_10012F870()
{
  result = qword_100202140;
  if (!qword_100202140)
  {
    sub_10003C4E4(&qword_100202148, &qword_100185758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202140);
  }

  return result;
}

uint64_t sub_10012F8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 48))
  {
    byte_10020A5F0 = 0;
  }

  v3 = *(a3 + 40);
  if (v3)
  {
    v4 = *(a3 + 48);

    v3(v5);
    sub_10003C52C(v3, v4);
  }

  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1001262B0();
  return swift_endAccess();
}

void sub_10012F990()
{
  if (*(v0 + 72))
  {
LABEL_2:
    v1 = *(v0 + 16);
    v2 = 2 * ([v1 preferredStyle] == 1);

    [v1 scheduleModalPresentationWithPriority:v2 animated:1 presentationCompletion:0];
    return;
  }

  if (byte_10020A5F0)
  {
    return;
  }

  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  v3 = sub_100066608();
  v4 = [v3 presentedViewController];

  if (!v4)
  {
    byte_10020A5F0 = 1;
    goto LABEL_2;
  }
}

uint64_t sub_10012FAB8()
{
  sub_10007D4DC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_10012FB28(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 72) && (result & 1) == 0)
  {
    byte_10020A5F0 = 0;
  }

  return result;
}

void sub_10012FB48(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = xmmword_100185760;
  v4 = *(a1 + 16);
  *(v2 + 24) = *a1;
  *(v2 + 40) = v4;
  *(v2 + 56) = *(a1 + 32);
  v5 = *(a1 + 48);
  *(v2 + 72) = v5;
  if (v5 == 1)
  {
    v161 = *(a1 + 8);

    v6 = 0;
    v160 = 1;
  }

  else
  {
    if (v5 || !a2)
    {
      v160 = 0;
      v158 = 0;
      v161 = 0;
      v6 = 1;
      goto LABEL_8;
    }

    v160 = 0;
    v6 = 0;
    v161 = 0;
  }

  v158 = 1;
LABEL_8:
  sub_10007D588(a1, &aBlock);
  v21 = sub_100089588(0, v7, v8, v9, v10, v11, v12, v13);
  if (v14)
  {
    v22 = v14;
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v21, v14);
    v24 = v23;
    v22, v23, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v24 = 0;
  }

  v32 = sub_100089588(1, v14, v15, v16, v17, v18, v19, v20);
  if (v31)
  {
    v33 = v31;
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v32, v31);
    v35 = v34;
    v33, v34, v36, v37, v38, v39, v40, v41;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_16:
    v42 = 0;
    if (v35)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v35 = 0;
  if (!v24)
  {
    goto LABEL_16;
  }

LABEL_13:
  v42 = String._bridgeToObjectiveC()();
  v24, v43, v44, v45, v46, v47, v48, v49;
  if (v35)
  {
LABEL_14:
    v50 = String._bridgeToObjectiveC()();
    v35, v51, v52, v53, v54, v55, v56, v57;
    goto LABEL_18;
  }

LABEL_17:
  v50 = 0;
LABEL_18:
  v58 = [objc_opt_self() alertControllerWithTitle:v42 message:v50 preferredStyle:v6];

  *(v164 + 16) = v58;
  v59 = sub_1000D724C(a1);
  v67 = v59;
  if (v59 >> 62)
  {
    v68 = _CocoaArrayWrapper.endIndex.getter();
    if (!v68)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v68 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v68)
    {
      goto LABEL_27;
    }
  }

  v163 = objc_opt_self();
  if (v68 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v69 = 0;
  v162 = v67 & 0xC000000000000001;
  v70 = v67;
  do
  {
    if (v162)
    {
      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v71 = *&v67->remoteCardFilter[8 * v69];
    }

    ++v69;
    v72 = v71[2];
    v73 = v71[3];
    v74 = *(v164 + 16);

    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v72, v73);
    v76 = v75;
    v73, v75, v77, v78, v79, v80, v81, v82;
    v83 = v71[4];
    v84 = swift_allocObject();
    v85 = *(a1 + 16);
    *(v84 + 16) = *a1;
    *(v84 + 32) = v85;
    *(v84 + 48) = *(a1 + 32);
    *(v84 + 64) = *(a1 + 48);
    *(v84 + 72) = v71;
    sub_10007D588(a1, &aBlock);

    v86 = String._bridgeToObjectiveC()();
    v76, v87, v88, v89, v90, v91, v92, v93;
    v169 = sub_100130774;
    v170 = v84;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_100072168;
    v168 = &unk_1001C82D8;
    v94 = _Block_copy(&aBlock);

    v95 = [v163 actionWithTitle:v86 style:v83 handler:v94];
    _Block_release(v94);

    [v74 addAction:v95];

    v67 = v70;
  }

  while (v68 != v69);
LABEL_27:
  v67, v60, v61, v62, v63, v64, v65, v66;
  if (v160)
  {
    v96 = [objc_opt_self() currentDevice];
    v97 = [v96 userInterfaceIdiom];

    if (v97 != 1)
    {
      type metadata accessor for DeviceInformationView();
      v98 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      *&v98[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state] = v161;
      swift_retain_n();

      sub_10003E6C8();

      v99 = *&v98[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton];
      [v99 alpha];
      if (v100 == 1.0)
      {
        v101 = swift_allocObject();
        *(v101 + 16) = v99;
        v102 = objc_opt_self();
        v169 = sub_10004487C;
        v170 = v101;
        aBlock = _NSConcreteStackBlock;
        v166 = 1107296256;
        v167 = sub_100031FA8;
        v168 = &unk_1001C83C8;
        v103 = _Block_copy(&aBlock);
        v104 = v99;

        [v102 animateWithDuration:0x20000 delay:v103 options:0 animations:0.125 completion:0.0];
        _Block_release(v103);
      }

      v105 = *&v98[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton];
      [v105 alpha];
      if (v106 == 1.0)
      {
        v107 = swift_allocObject();
        *(v107 + 16) = v105;
        v108 = objc_opt_self();
        v169 = sub_10004487C;
        v170 = v107;
        aBlock = _NSConcreteStackBlock;
        v166 = 1107296256;
        v167 = sub_100031FA8;
        v168 = &unk_1001C8378;
        v109 = _Block_copy(&aBlock);
        v110 = v105;

        [v108 animateWithDuration:0x20000 delay:v109 options:0 animations:0.125 completion:0.0];
        _Block_release(v109);
      }

      v111 = *&v98[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator];
      [v111 alpha];
      if (v112 == 1.0)
      {
        v113 = swift_allocObject();
        *(v113 + 16) = v111;
        v114 = objc_opt_self();
        v169 = sub_100044298;
        v170 = v113;
        aBlock = _NSConcreteStackBlock;
        v166 = 1107296256;
        v167 = sub_100031FA8;
        v168 = &unk_1001C8328;
        v115 = _Block_copy(&aBlock);
        v116 = v111;

        [v114 animateWithDuration:0x20000 delay:v115 options:0 animations:0.125 completion:0.0];
        _Block_release(v115);
      }

      sub_100043418();
      sub_100043598();
      v117 = v98;
      [v117 setTranslatesAutoresizingMaskIntoConstraints:0];
      type metadata accessor for AlertContentViewController();
      v118 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v119 = objc_allocWithZone(UIView);
      v120 = v118;
      v121 = [v119 init];
      [v120 setView:v121];

      v122 = [v120 view];
      if (v122)
      {
        v123 = v122;
        [v122 addSubview:v117];

        [*(v164 + 16) setContentViewController:v120];
        sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_10017EDA0;
        v125 = [v117 heightAnchor];
        v126 = [v125 constraintEqualToConstant:90.0];

        *(v124 + 32) = v126;
        v127 = [v117 widthAnchor];
        v128 = [v120 view];
        if (v128)
        {
          v129 = v128;
          v130 = [v128 widthAnchor];

          v131 = [v127 constraintLessThanOrEqualToAnchor:v130];
          *(v124 + 40) = v131;
          v132 = [v117 topAnchor];
          v133 = [v120 view];
          if (v133)
          {
            v134 = v133;
            v135 = [v133 topAnchor];

            v136 = [v132 constraintEqualToAnchor:v135];
            *(v124 + 48) = v136;
            v137 = [v117 bottomAnchor];
            v138 = [v120 view];
            if (v138)
            {
              v139 = v138;
              v140 = [v138 bottomAnchor];

              v141 = [v137 constraintEqualToAnchor:v140];
              *(v124 + 56) = v141;
              v142 = [v117 centerXAnchor];

              v143 = [v120 view];
              if (v143)
              {
                v144 = objc_opt_self();
                v145 = [v143 centerXAnchor];

                v146 = [v142 constraintEqualToAnchor:v145];
                *(v124 + 64) = v146;
                sub_10007E540();
                isa = Array._bridgeToObjectiveC()().super.isa;
                v124, v148, v149, v150, v151, v152, v153, v154;
                [v144 activateConstraints:isa];

                goto LABEL_41;
              }

LABEL_53:
              __break(1u);
              return;
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

LABEL_41:
  if (v158)
  {
    if (a2)
    {
      v155 = *(v164 + 16);
      swift_unknownObjectRetain();
      v156 = [v155 popoverPresentationController];
      if (v156)
      {
        v157 = v156;
        swift_unknownObjectRetain();
        [v157 setSourceItem:a2];
      }

      swift_unknownObjectRelease_n();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100130728()
{
  sub_10007D4DC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 80, 7, v1);
}

double sub_100130780(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100130798()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

void sub_1001307F0()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for NoSessionNavigationController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  [v0 setModalPresentationStyle:2];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [v0 navigationBar];
    v3 = [objc_allocWithZone(UIImage) init];
    [v2 setBackgroundImage:v3 forBarMetrics:0];

    v4 = [v1 navigationBar];
    v5 = [objc_allocWithZone(UIImage) init];
    [v4 setShadowImage:v5];

    v6 = [v1 navigationBar];
    [v6 setAlpha:0.0];
  }

  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10017EBF0;
  v8 = objc_allocWithZone(type metadata accessor for NoSessionViewController());
  *(v7 + 32) = sub_1000E59C0();
  sub_100045CC4();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v10, v11, v12, v13, v14, v15, v16;
  [v1 setViewControllers:isa];
}

id sub_100130BA8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NoSessionNavigationController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100130D7C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseControl();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100130DD4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v3 = [objc_opt_self() configurationWithHierarchicalColor:v2];

  _StringGuts.grow(_:)(24);
  DeviceClass = GestaltGetDeviceClass();
  v5 = sub_100100580(DeviceClass);
  v7 = v6;
  0xE000000000000000, v6, v8, v9, v10, v11, v12, v13;
  v63 = v5;
  v64 = v7;
  v14._object = 0x8000000100189E10;
  v14._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();
  v7, v16, v17, v18, v19, v20, v21, v22;
  v23 = [objc_opt_self() _systemImageNamed:v15];

  if (v23)
  {
    v24 = [v23 imageWithConfiguration:v3];
  }

  else
  {
    v24 = 0;
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001ELL, 0x80000001001932B0);
  v26 = v25;
  v27 = String._bridgeToObjectiveC()();
  v26, v28, v29, v30, v31, v32, v33, v34;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000021, 0x80000001001932D0);
  v36 = v35;
  v37 = String._bridgeToObjectiveC()();
  v36, v38, v39, v40, v41, v42, v43, v44;
  v62.receiver = v1;
  v62.super_class = type metadata accessor for AssessmentVerifyDeviceViewController();
  v45 = objc_msgSendSuper2(&v62, "initWithTitle:detailText:icon:contentLayout:", v27, v37, v24, 2);

  v46 = v45;
  v47 = [v46 navigationItem];
  [v47 setHidesBackButton:1];

  v48 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x45534F4C43, 0xE500000000000000);
  v50 = v49;
  v51 = String._bridgeToObjectiveC()();
  v50, v52, v53, v54, v55, v56, v57, v58;
  [v48 setTitle:v51 forState:0];

  sub_10006D004();
  v59 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v48 addAction:v59 forControlEvents:{64, 0, 0, 0, sub_100070534, 0}];

  v60 = [v46 buttonTray];
  [v60 addButton:v48];

  return v46;
}

id sub_1001311A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AssessmentVerifyDeviceViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100131200()
{
  v1 = v0;
  v2 = 0x8000000100193370;
  v45 = 0xD00000000000001ALL;
  v46 = 0x8000000100193370;
  v3 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4._countAndFlagsBits = 4342623;
    v4._object = 0xE300000000000000;
    String.append(_:)(v4);
    v5 = v45;
    v2 = v46;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v5, v2);
  v7 = v6;
  v2, v6, v8, v9, v10, v11, v12, v13;
  v14 = String._bridgeToObjectiveC()();
  v7, v15, v16, v17, v18, v19, v20, v21;
  v22 = sub_100049C98(0xD00000000000001DLL, 0x8000000100193390);
  v24 = v23;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v22, v23);
  v26 = v25;
  v24, v25, v27, v28, v29, v30, v31, v32;
  v33 = String._bridgeToObjectiveC()();
  v26, v34, v35, v36, v37, v38, v39, v40;
  v41 = String._bridgeToObjectiveC()();
  v44.receiver = v1;
  v44.super_class = type metadata accessor for DiagnosticsCompletedViewController();
  v42 = objc_msgSendSuper2(&v44, "initWithTitle:detailText:symbolName:contentLayout:", v14, v33, v41, 2);

  return v42;
}

void sub_1001313B0(uint64_t a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for DiagnosticsCompletedViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  [v1 setModalPresentationStyle:2];
  v3 = [v1 headerView];
  [v3 setTitleHyphenationFactor:0.0];

  v4 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000017, 0x800000010018C890);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6, v8, v9, v10, v11, v12, v13, v14;
  [v4 setTitle:v7 forState:0];

  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v4 addAction:v15 forControlEvents:{64, 0, 0, 0, sub_10013156C, 0}];

  v16 = [v2 buttonTray];
  [v16 addButton:v4];
}

uint64_t sub_1001315BC(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchTime();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for DiagnosticsCompletedViewController();
  v35.receiver = v1;
  v35.super_class = v15;
  objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      [v18 _setBackgroundOpacity:0.0];
    }
  }

  v19 = [objc_opt_self() standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 BOOLForKey:v20];

  if ((v21 & 1) != 0 || (v22 = [objc_msgSend(objc_opt_self() "currentPlatform")], result = swift_unknownObjectRelease(), v22))
  {
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v29 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v24 = v14;
    + infix(_:_:)();
    v30 = v7;
    v31 = *(v31 + 8);
    (v31)(v11, v33);
    aBlock[4] = sub_100131A44;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C8418;
    v25 = _Block_copy(aBlock);
    v26 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v29;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v25);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v26, v30);
    return (v31)(v24, v33);
  }

  return result;
}

id sub_100131B00(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DiagnosticsCompletedViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100131B58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_100131B70()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor:v0];

  v3 = [v1 configurationWithScale:3];
  v4 = [v2 configurationByApplyingConfiguration:v3];

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];
  [v8 setContentMode:1];
  LODWORD(v9) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v9];

  return v8;
}

void sub_100131CE8(void *a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView;
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView);
  *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView);
    v5 = a1;
    [v4 removeArrangedSubview:v3];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView);
    v8 = v6;
    [v7 insertArrangedSubview:v8 atIndex:0];
  }

LABEL_4:
}

void sub_100131DB8(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint);
    if (v2)
    {
      v3 = a1;
      v4 = v2;
      [v3 removeConstraint:v4];
      v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout);
      [v5 removeArrangedSubview:v3];
      [v5 removeArrangedSubview:*(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView)];
    }
  }

  v6 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 heightAnchor];
    v9 = [v8 constraintEqualToConstant:0.0];

    v10 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint;
    v11 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint);
    *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint) = v9;
    v12 = v9;

    if (v12)
    {
      LODWORD(v13) = 1148846080;
      [v12 setPriority:v13];
    }

    v14 = *(v1 + v10);
    if (v14)
    {
      [v14 setActive:(*(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded) & 1) == 0];
    }

    v15 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout);
    [v15 addArrangedSubview:v7];
    [v15 addArrangedSubview:*(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView)];
    v16 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView);
    [v7 addSubview:v16];
    v17 = objc_opt_self();
    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10017ED60;
    v19 = [v16 leadingAnchor];
    v20 = [v15 layoutMarginsGuide];
    v21 = [v20 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21];
    *(v18 + 32) = v22;
    v23 = [v16 trailingAnchor];
    v24 = [v15 layoutMarginsGuide];
    v25 = [v24 trailingAnchor];

    v26 = [v23 constraintEqualToAnchor:v25];
    *(v18 + 40) = v26;
    v27 = [v16 heightAnchor];
    v28 = [v27 constraintEqualToConstant:1.0];

    *(v18 + 48) = v28;
    v29 = [v16 topAnchor];
    v30 = [v7 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v18 + 56) = v31;
    sub_10007E540();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18, v32, v33, v34, v35, v36, v37, v38;
    [v17 activateConstraints:isa];
  }
}

void sub_1001321AC()
{
  v1 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate];
  if (v2)
  {
    [*(v2 + OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView) beginUpdates];
  }

  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint];
  if (v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded] == 1)
  {
    if (v3)
    {
      [v3 setActive:0];
    }

    [*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView] setHidden:0];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = objc_opt_self();
    v17 = sub_100132E88;
    v18 = v4;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v6 = &unk_1001C84B8;
  }

  else
  {
    if (v3)
    {
      [v3 setActive:1];
    }

    [*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView] setHidden:1];
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v5 = objc_opt_self();
    v17 = sub_100132E24;
    v18 = v7;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v6 = &unk_1001C8468;
  }

  v15 = sub_100031FA8;
  v16 = v6;
  v8 = _Block_copy(&v13);
  v9 = v0;

  [v5 animateWithDuration:1 delay:v8 options:0 animations:0.25 completion:{0.0, v13, v14}];
  _Block_release(v8);

  v10 = *&v0[v1];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
    v12 = *(v10 + OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView);
    swift_unknownObjectRetain();
    [v12 invalidateIntrinsicContentSize];
    [*(v10 + v11) endUpdates];
    swift_unknownObjectRelease();
  }
}

id sub_100132434(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView);
  CGAffineTransformMakeRotation(&v3, 1.57079633);
  return [v1 setTransform:&v3];
}

id sub_100132498()
{
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutHorizontalMarginSize] = 0x4034000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutVerticalMarginSize] = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout;
  *&v0[v1] = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView;
  *&v0[v2] = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView;
  *&v0[v4] = sub_100131B70();
  v5 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView;
  *&v0[v5] = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded] = 0;
  v6 = &v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate];
  v7 = type metadata accessor for ExpandableSection();
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = v0;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001327D8();
  sub_1001329F0();

  return v8;
}

id sub_100132614(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutHorizontalMarginSize] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutVerticalMarginSize] = 0;
  v9 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout;
  *&v4[v9] = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView;
  *&v4[v12] = sub_100131B70();
  v13 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView] = 0;
  v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded] = 0;
  v14 = &v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate];
  v15 = type metadata accessor for ExpandableSection();
  *v14 = 0;
  v14[1] = 0;
  v18.receiver = v4;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  sub_1001327D8();
  sub_1001329F0();

  return v16;
}

id sub_1001327D8()
{
  [v0 setClipsToBounds:0];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView];
  [v1 setAxis:0];
  [v1 setAlignment:3];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView]];
  [v1 setUserInteractionEnabled:1];
  v2 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleTap"];
  [v1 addGestureRecognizer:v2];

  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView];
  v4 = [objc_opt_self() opaqueSeparatorColor];
  v5 = [v4 colorWithAlphaComponent:0.35];

  [v3 setBackgroundColor:v5];
  [v3 setHidden:1];
  v6 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout];
  [v6 setAxis:1];
  [v6 setAlignment:0];
  [v6 setDistribution:0];
  [v6 setLayoutMargins:{0.0, 20.0, 0.0, 20.0}];
  [v6 setLayoutMarginsRelativeArrangement:1];
  [v6 addArrangedSubview:v1];

  return [v0 addSubview:v6];
}

void sub_1001329F0()
{
  [*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017ED60;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3, v16, v17, v18, v19, v20, v21, v22;
  [v2 activateConstraints:isa];
}

id sub_100132CD8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ExpandableSection();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100132DEC()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_100132E24()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

double sub_100132E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100132E90()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutHorizontalMarginSize) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutVerticalMarginSize) = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView;
  *(v0 + v4) = sub_100131B70();
  v5 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded) = 0;
  v6 = (v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100132FE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView;
  *&v5[v10] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_cancelButton;
  *&v5[v11] = [objc_opt_self() linkButton];
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableViewHorizontalPadding] = 0x4034000000000000;
  v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_serverSessionStarted] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeout] = 0x40ABA80000000000;
  v12 = &v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinationConfirmationHandler];
  *v12 = 0;
  v12[1] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager] = a1;
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations] = a2;
  *v12 = a3;
  v12[1] = a4;
  v13 = a1;
  sub_10003C48C(a3, a4);
  _StringGuts.grow(_:)(29);
  DeviceClass = GestaltGetDeviceClass();
  v15 = sub_100100580(DeviceClass);
  v17 = v16;
  0xE000000000000000, v16, v18, v19, v20, v21, v22, v23;
  v68 = v15;
  v69 = v17;
  v24._object = 0x80000001001935E0;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  v25 = v17;
  v26 = String._bridgeToObjectiveC()();
  v27 = objc_opt_self();
  v28 = [v27 _systemImageNamed:v26];

  if (v28)
  {
    v17, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    v36 = String._bridgeToObjectiveC()();
    v25, v37, v38, v39, v40, v41, v42, v43;
    v28 = [v27 imageNamed:v36];
  }

  if (_UISolariumEnabled())
  {
    v44 = 2;
  }

  else
  {
    v44 = 3;
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100193600);
  v46 = v45;
  v47 = String._bridgeToObjectiveC()();
  v46, v48, v49, v50, v51, v52, v53, v54;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001BLL, 0x8000000100193620);
  v56 = v55;
  v57 = String._bridgeToObjectiveC()();
  v56, v58, v59, v60, v61, v62, v63, v64;
  v67.receiver = v5;
  v67.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  v65 = objc_msgSendSuper2(&v67, "initWithTitle:detailText:icon:contentLayout:", v47, v57, v28, v44);

  sub_10003C52C(a3, a4);
  return v65;
}

void sub_1001333B4(uint64_t a1)
{
  v2 = a1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  objc_msgSendSuper2(&v24, "viewDidAppear:", v2 & 1);
  *(*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = &off_1001C84E0;
  swift_unknownObjectWeakAssign();
  [*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView] invalidateIntrinsicContentSize];
  v3 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer;
  [*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer] invalidate];
  v4 = objc_opt_self();
  v22 = sub_1001336F0;
  v23 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100072168;
  v21 = &unk_1001C8700;
  v5 = _Block_copy(&v18);
  v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v5 block:3540.0];
  _Block_release(v5);
  v7 = *&v1[v3];
  *&v1[v3] = v6;

  v8 = *&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinationConfirmationHandler];
  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinationConfirmationHandler + 8];

    v8(0);
    sub_10003C52C(v8, v9);
  }

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v10 = qword_10020A368;
  v11 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10003DA8C;
  *(v13 + 24) = v12;
  v22 = sub_10003E41C;
  v23 = v13;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100060C48;
  v21 = &unk_1001C8778;
  v14 = _Block_copy(&v18);
  v15 = v10;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v16 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v15[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
    v17 = sub_100050814();
    [v17 setNearbySharingEnabled:(v15[v16] & 1) == 0];

    sub_1000508A4();
    sub_100050C28();
  }
}

void sub_1001336F0(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Timed out waiting for user to select destination.", 49, 2, &_swiftEmptyArrayStorage);

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(6, 1);
}

void sub_100133804(uint64_t a1)
{
  v2 = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  objc_msgSendSuper2(&v5, "viewWillDisappear:", v2 & 1);
  *(*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v3 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer;
  [*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer] invalidate];
  v4 = *&v1[v3];
  *&v1[v3] = 0;
}

void sub_1001338E8()
{
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setDataSource:v0];
  [v2 setDelegate:v0];
  [v2 setSeparatorStyle:0];
  [v2 setScrollEnabled:0];
  [v2 setShowsVerticalScrollIndicator:0];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  [v2 setRowHeight:UITableViewAutomaticDimension];
  [v2 setEstimatedRowHeight:300.0];
  type metadata accessor for SelfServiceViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  v6 = *&v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_cancelButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018DC20);
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v8, v10, v11, v12, v13, v14, v15, v16;
  [v6 setTitle:v9 forState:0];

  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v6 addAction:v18 forControlEvents:{64, 0, 0, 0, sub_100135D30, v17}];
}

void sub_100133BB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = sub_100133CB4;
    }

    else
    {
      v5 = sub_100133E80;
    }

    sub_100088E48(0, *&v3[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_cancelButton]);
    sub_10003C52C(v5, 0);
  }
}

void sub_100133CB4(uint64_t a1)
{
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A3C8;
  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  v2 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    v3 = qword_1001FEED0;
    v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
    v5 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (*(v6 + 16))
    {

      sub_100064AFC(v3, v2);
      if (v7)
      {
        swift_unknownObjectRetain();
        v6, v14, v15, v16, v17, v18, v19, v20;
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          [v21 archiveConnection];
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v6, v7, v8, v9, v10, v11, v12, v13;
      }
    }
  }

  else
  {
    v22 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v23 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Unable to archive device, serial number is nil", 46, 2, &_swiftEmptyArrayStorage);
  }
}

void sub_100133E80()
{
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A368;
  v1 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100099D24;
  *(v3 + 24) = v2;
  v11[4] = sub_10003DAA4;
  v11[5] = v3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100060C48;
  v11[3] = &unk_1001C86D8;
  v4 = _Block_copy(v11);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
    v7 = sub_100050814();
    [v7 setNearbySharingEnabled:(v5[v6] & 1) == 0];

    v8 = sub_100050814();
    [v8 setDiscoverableMode:*&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

    v9 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion;
    v10 = *&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion];
    if (v10)
    {
      [v10 invalidate];
    }

    *&v5[v9] = 0;
    swift_unknownObjectRelease();
  }
}

id sub_1001340A0(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 20.0;
  }

  v3 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017ED60;
  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView];
  v6 = [v5 leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:v2];
  *(v4 + 32) = v9;
  v10 = [v5 trailingAnchor];
  v11 = [v1 contentView];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-v2];
  *(v4 + 40) = v13;
  v14 = [v5 topAnchor];
  v15 = [v1 contentView];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v4 + 48) = v17;
  v18 = [v5 bottomAnchor];
  v19 = [v1 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v4 + 56) = v21;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4, v23, v24, v25, v26, v27, v28, v29;
  [v3 activateConstraints:isa];

  return [v5 invalidateIntrinsicContentSize];
}

id sub_1001343F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001344E0(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (v4)
  {
    type metadata accessor for SelfServiceViewCell();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for SelfServiceViewCell();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleTruncated] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  [*&v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel] setNumberOfLines:0];
  v7 = IndexPath.section.getter();
  v8 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations;
  v9 = *(v1 + OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = IndexPath.section.getter();
  v12 = *(v1 + v8);
  if (v7 >= v10)
  {
    if (v12 >> 62)
    {
      if (result != _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_22;
      }
    }

    else if (result != *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v12, v62, v63, v64, v65, v66, v67, v68;
LABEL_12:
    v14 = [v13 endpoint];

    if (v14 == 2)
    {
      v15 = [objc_opt_self() configurationWithScale:3];
      v16 = String._bridgeToObjectiveC()();
      v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

      if (v17)
      {
        v18 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
        v19 = [v17 imageWithTintColor:v18];
      }

      else
      {
        v19 = 0;
      }

      sub_1000BB560(v19);

      v20 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x5F4E55525F525353, 0xEE00524941504552);
      v22 = v21;
      v23 = &v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText];
      v24 = *&v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText + 8];
      *v23 = v20;
      v23[1] = v21;
      v24, v21, v25, v26, v27, v28, v29, v30;
      v31 = *&v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel];

      v32 = v31;
      v33 = String._bridgeToObjectiveC()();
      v22, v34, v35, v36, v37, v38, v39, v40;
      [v32 setText:v33];

      v41 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000016, 0x8000000100193660);
      v43 = v42;
      v44 = &v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText];
      v45 = *&v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText + 8];
      *v44 = v41;
      v44[1] = v42;
      v45, v42, v46, v47, v48, v49, v50, v51;
      v52 = *&v5[v6];

      v53 = v52;
      v54 = String._bridgeToObjectiveC()();
      v43, v55, v56, v57, v58, v59, v60, v61;
      [v53 setText:v54];

      goto LABEL_22;
    }

    if (v14 != 1)
    {
LABEL_22:
      [v5 setAccessoryType:1];
      return v5;
    }

LABEL_17:
    sub_10013493C(v5);
    goto LABEL_22;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *&v12->remoteCardFilter[8 * result];
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_10013493C(uint64_t a1)
{
  v2 = [objc_opt_self() configurationWithScale:3];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
    v6 = [v4 imageWithTintColor:v5];
  }

  else
  {
    v6 = 0;
  }

  sub_1000BB560(v6);

  v7 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100193680);
  v9 = v8;
  v10 = (a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText);
  v11 = *(a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText + 8);
  *v10 = v7;
  v10[1] = v8;
  v11, v8, v12, v13, v14, v15, v16, v17;
  v18 = *(a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel);

  v19 = v18;
  v20 = String._bridgeToObjectiveC()();
  v9, v21, v22, v23, v24, v25, v26, v27;
  [v19 setText:v20];

  v28 = sub_100049C98(0xD00000000000001BLL, 0x80000001001936A0);
  v30 = v29;
  v31 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v28, v29);
  v33 = v32;
  v30, v32, v34, v35, v36, v37, v38, v39;
  v40 = (a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText);
  v41 = *(a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText + 8);
  *v40 = v31;
  v40[1] = v33;
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49 = *(a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel);

  v50 = v49;
  v58 = String._bridgeToObjectiveC()();
  v33, v51, v52, v53, v54, v55, v56, v57;
  [v50 setText:v58];
}

void sub_100134D3C(char a1, void *a2, void *a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v27 = a6;
  v28 = a7;
  v26 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 && (a1 & 1) != 0)
  {
    v18 = qword_1001FC738;
    v19 = a2;
    v28 = v19;
    if (v18 != -1)
    {
      swift_once();
      v19 = v28;
    }

    sub_100094488(qword_1001FEED0, qword_1001FEED8, v19, v26 & 1);
    v20 = v28;
  }

  else
  {
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    aBlock[4] = v27;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = v28;
    v23 = _Block_copy(aBlock);
    v24 = a3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v17, v14);
  }
}

void sub_100135070(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager];
  v3 = objc_allocWithZone(type metadata accessor for SelfServiceSuitePickerViewController());
  v6 = sub_1000B2720(v2);
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 pushViewController:v6 animated:1];
  }
}

void sub_10013520C(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *&a1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager];
  v9 = objc_allocWithZone(type metadata accessor for SuiteInProgressViewController());
  v10 = v8;
  v11 = a2;
  v17 = sub_1000ECABC(v10, a2);
  v12 = &v17[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  v13 = *&v17[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  v14 = *&v17[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear + 8];
  *v12 = a3;
  *(v12 + 1) = a4;
  sub_10003C48C(a3, a4);
  v15 = [a1 navigationController];
  if (v15)
  {
    v16 = v15;
    [v15 pushViewController:v17 animated:1];
  }
}

uint64_t sub_100135318(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v14 = a3;
  aBlock[4] = sub_100135624;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C8548;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  v17 = a1;
  sub_10003C48C(a2, v14);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v23 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v22);
}

uint64_t sub_1001355D4()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7, v1);
}

double sub_100135630(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100135648()
{
  v1 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations);
  if (v2 >> 62)
  {
LABEL_20:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  while (v3 != v11)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v12 = *&v2->remoteCardFilter[8 * v11];
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v14 = [v12 endpoint];

    ++v11;
    if (v14 == 1)
    {
      goto LABEL_16;
    }
  }

  v2, v4, v5, v6, v7, v8, v9, v10;
  v15 = *(v0 + v1);
  if (v15 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v17 = __OFADD__(v20, 1);
    result = v20 + 1;
    if (!v17)
    {
      return result;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = __OFADD__(v16, 1);
    result = v16 + 1;
    if (!v17)
    {
      return result;
    }
  }

  __break(1u);
LABEL_16:
  v2, v4, v5, v6, v7, v8, v9, v10;
  v19 = *(v0 + v1);
  if (!(v19 >> 62))
  {
    return *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

double sub_1001357CC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinationConfirmationHandler];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinationConfirmationHandler];
  if (!v3)
  {
    return result;
  }

  v4 = *(v2 + 1);

  v5 = IndexPath.section.getter();
  v6 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations;
  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations];
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = IndexPath.section.getter();
  v10 = *&v0[v6];
  if (v5 < v8)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10, v26, v27, v28, v29, v30, v31, v32;
LABEL_9:
      v5 = [v11 endpoint];

      v3(v5);
      *(swift_allocObject() + 16) = v1;
      v12 = qword_1001FC738;
      v13 = v1;
      if (v12 == -1)
      {
LABEL_10:
        sub_1000959E0(v5, qword_1001FEED0, qword_1001FEED8, sub_100135C98);
        sub_10003C52C(v3, v4);
LABEL_16:

        return result;
      }

LABEL_34:
      swift_once();
      goto LABEL_10;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v9 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *&v10->remoteCardFilter[8 * v9];
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v10 >> 62)
  {
    if (v9 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }

LABEL_30:

    return sub_10003C52C(v3, v4);
  }

  if (v9 != *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_13:
  v14 = [objc_opt_self() sharedInstance];
  [v14 overrideSessionModeWithMode:0];

  v15 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_serverSessionStarted;
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_serverSessionStarted))
  {
    *(swift_allocObject() + 16) = v1;
    v16 = qword_1001FC738;
    v17 = v1;
    if (v16 == -1)
    {
LABEL_15:
      sub_1000959E0(1uLL, qword_1001FEED0, qword_1001FEED8, sub_100135C54);
      sub_10003C52C(v3, v4);
      goto LABEL_16;
    }

LABEL_36:
    swift_once();
    goto LABEL_15;
  }

  v19 = [objc_allocWithZone(type metadata accessor for SetupViewController()) init];
  v19[OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason] = 5;
  v20 = [v1 navigationController];
  if (v20)
  {
    v21 = v20;
    [v20 pushViewController:v19 animated:1];
  }

  v22 = *v2;
  if (*v2)
  {
    v23 = *(v2 + 1);

    v22(1);
    sub_10003C52C(v22, v23);
  }

  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  v24 = qword_1001FEED0;
  v25 = qword_1001FEED8;
  sub_100093FD8(qword_1001FEED0, qword_1001FEED8);
  sub_1000925B4(v24, v25, 0);
  sub_10003C52C(v3, v4);

  *(v1 + v15) = 1;
  return result;
}

uint64_t sub_100135C1C()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_100135CF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

unint64_t *sub_100135DA4@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100135DC0()
{
  result = qword_1002023B8;
  if (!qword_1002023B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002023B8);
  }

  return result;
}

void sub_100135EA4(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint];
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint] = 0;
  v24 = a1;

  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint];
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint] = 0;

  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint];
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint] = 0;

  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint];
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint] = 0;

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v24;
  if (v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v24;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100136B4C;
    *(v8 + 24) = v6;
    v9 = objc_opt_self();
    v29 = sub_10006D89C;
    v30 = v7;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100031FA8;
    v28 = &unk_1001C88F8;
    v10 = _Block_copy(&aBlock);
    v11 = v24;
    v12 = v1;

    v29 = sub_10003D960;
    v30 = v8;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100084F94;
    v28 = &unk_1001C8920;
    v13 = _Block_copy(&aBlock);

    [v9 animateWithDuration:0x20000 delay:v10 options:v13 animations:0.125 completion:0.0];
    _Block_release(v13);
    _Block_release(v10);

    return;
  }

  v14 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (v14)
  {
    sub_10003E110(0, &qword_1001FF090, UIView_ptr);
    v15 = v24;
    v16 = v1;
    v17 = v14;
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = v24;
    v20 = v1;
  }

  [v24 removeFromSuperview];
LABEL_10:
  v21 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  if (v21)
  {
    v22 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion + 8];

    v21(v23);
    sub_10003C52C(v21, v22);
  }
}

double sub_10013621C(uint64_t a1, id a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
  if (!v4 || (sub_10003E110(0, &qword_1001FF090, UIView_ptr), v5 = v4, v6 = a2, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) == 0))
  {
    [a2 removeFromSuperview];
  }

  v9 = a1 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion;
  v10 = *(a1 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion);
  if (v10)
  {
    v11 = *(v9 + 8);

    v10(v12);

    return sub_10003C52C(v10, v11);
  }

  return result;
}

void sub_10013630C()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (v1)
  {
    v48 = v1;
    [v0 addSubview:v48];
    v2 = [v0 topAnchor];
    v3 = [v48 topAnchor];
    v4 = [v2 constraintEqualToAnchor:v3];

    v5 = OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint;
    v6 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint];
    *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint] = v4;

    v7 = [v0 bottomAnchor];
    v8 = [v48 bottomAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    v10 = OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint;
    v11 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint];
    *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint] = v9;

    v12 = [v0 leadingAnchor];
    v13 = [v48 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    v15 = OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint;
    v16 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint];
    *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint] = v14;

    v17 = [v0 trailingAnchor];
    v18 = [v48 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    v20 = OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint;
    v21 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint];
    *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint] = v19;

    v22 = *&v0[v5];
    if (v22)
    {
      v23 = *&v0[v10];
      if (v23)
      {
        v24 = *&v0[v15];
        if (v24)
        {
          v25 = *&v0[v20];
          if (v25)
          {
            v26 = objc_opt_self();
            sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_10017ED60;
            *(v27 + 32) = v22;
            *(v27 + 40) = v23;
            *(v27 + 48) = v24;
            *(v27 + 56) = v25;
            sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
            v28 = v22;
            v29 = v23;
            v30 = v24;
            v31 = v25;
            v32 = v28;
            v33 = v29;
            v34 = v30;
            v35 = v31;
            isa = Array._bridgeToObjectiveC()().super.isa;
            v27, v37, v38, v39, v40, v41, v42, v43;
            [v26 activateConstraints:isa];
          }
        }
      }
    }

    if (v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] == 1)
    {
      [v48 setAlpha:0.0];
      v44 = swift_allocObject();
      *(v44 + 16) = v48;
      v45 = objc_opt_self();
      aBlock[4] = sub_10006D8C8;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C8858;
      v46 = _Block_copy(aBlock);
      v47 = v48;

      [v45 animateWithDuration:0x10000 delay:v46 options:0 animations:0.375 completion:0.0];
      _Block_release(v46);

      [v0 layoutIfNeeded];
    }

    else
    {
    }
  }
}

id sub_100136780(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] = 1;
  v10 = &v5[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  *v10 = 0;
  v10[1] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView] = 0;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for CardStackSubviewContainer();
  return objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
}

id sub_100136864(void *a1)
{
  v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] = 1;
  v3 = &v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CardStackSubviewContainer();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_100136950()
{
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion), *(v0 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion + 8));

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
}

id sub_1001369D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardStackSubviewContainer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100136ABC()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

double sub_100136AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100136B0C()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_100136B54()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

void sub_100136BA0(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v4 - 8);
  v82 = &v81 - v5;
  v6 = type metadata accessor for UUID();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10003DAAC(v9, qword_10020A510);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v85 = v2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100056B7C(0x6C66287055746573, 0xEC000000293A776FLL, &v86);
    *(v14 + 12) = 2080;
    v15 = [v10 debugDescription];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100056B7C(v16, v18, &v86);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "[Target] %s flow: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  if ([v10 destination] != 2 && objc_msgSend(v10, "destination") != 3)
  {
    v44 = 0;
LABEL_20:
    sub_10013BBF0();
    swift_allocError();
    *v80 = v44;
    swift_willThrow();
    return;
  }

  v27 = [v10 sessionID];
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = [v10 serialNumber];
  if (v32)
  {
    v40 = v32;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v45 = v85;
  v46 = (v85 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_targetSerialNumber);
  v47 = *(v85 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_targetSerialNumber + 8);
  *v46 = v41;
  v46[1] = v43;
  v47, v33, v34, v35, v36, v37, v38, v39;
  v48 = (v45 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID);
  v49 = *(v45 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID + 8);
  *v48 = v29;
  v48[1] = v31;
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = [v10 destination];
  v58 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice;
  *(v45 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice) = v57 == 2;
  if (v57 == 2)
  {
    UUID.init()();
    v59 = UUID.uuidString.getter();
    v61 = v60;
    (*(v83 + 8))(v8, v84);
    v69 = (v45 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode);
    v70 = *(v45 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode + 8);
    *v69 = v59;
    v69[1] = v61;
    goto LABEL_17;
  }

  v71 = [v10 passcode];
  if (!v71)
  {
LABEL_19:
    v44 = 1;
    goto LABEL_20;
  }

  v72 = v71;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  v76 = (v45 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode);
  v70 = *(v45 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode + 8);
  *v76 = v73;
  v76[1] = v75;
LABEL_17:
  v70, v62, v63, v64, v65, v66, v67, v68;
  if ((*(v45 + v58) & 1) == 0)
  {
    v77 = type metadata accessor for TaskPriority();
    v78 = v82;
    (*(*(v77 - 8) + 56))(v82, 1, 1, v77);
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    sub_1000EC574(0, 0, v78, &unk_100185C58, v79);
  }
}

char *sub_100137090()
{
  v1 = type metadata accessor for URL();
  __chkstk_darwin(v1);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v44 - v7;
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_targetSerialNumber + 8];
  if (v9 && (v10 = *&v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID + 8]) != 0 && (v11 = *&v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode + 8]) != 0)
  {
    if (v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice] == 1)
    {
      v12 = *&v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode];
      v45 = v6;
      v46 = v12;
      v48 = v5;
      v47 = objc_allocWithZone(DADiagnosticFlow);

      v13 = String._bridgeToObjectiveC()();
      v14 = String._bridgeToObjectiveC()();
      v46 = String._bridgeToObjectiveC()();
      v15 = v13;
      v16 = [v47 initWithDestination:4 serialNumber:v13 sessionID:v14 passcode:v46];

      sub_1000B1294(v8);
      v9, v17, v18, v19, v20, v21, v22, v23;
      v10, v24, v25, v26, v27, v28, v29, v30;
      v11, v31, v32, v33, v34, v35, v36, v37;

      v38 = v45;
      v39 = v48;
      (*(v45 + 16))(v3, v8, v48);
      v40 = objc_allocWithZone(type metadata accessor for AssessmentQRCodeViewController(0));
      v0 = sub_1000B5B34(v3, 0);
      (*(v38 + 8))(v8, v39);
    }

    else
    {
      v43 = objc_allocWithZone(type metadata accessor for AssessmentDamageCheckGuideViewController());
      return sub_100069804();
    }
  }

  else
  {
    sub_10013BBF0();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_100137368()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v1)
  {
    [v1 setResultCode:-4];
  }

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Target] Canceling session", v5, 2u);
  }

  v6 = v0[2];

  v7 = *(v6 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[3] = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_100058414;

    return sub_1000D9380();
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

void sub_10013752C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AssessmentError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  byte_10020A618 = 1;
  if (qword_1001FC848 != -1)
  {
    v36 = v12;
    swift_once();
    v12 = v36;
  }

  v15 = sub_10003DAAC(v12, qword_10020A600);
  swift_beginAccess();
  sub_1000E3324(a1, v15);
  swift_endAccess();
  sub_10003DD14(a1, v14);
  v16 = (*(v5 + 48))(v14, 1, v4);
  if (v16 == 1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    v18 = v2;
    v19 = sub_10013BDF0;
  }

  else
  {
    sub_10003DD14(v14, v10);
    static AssessmentError.possibleIssueDetected.getter();
    sub_10013BD70(&qword_1001FD3C0, &type metadata accessor for AssessmentError, &protocol conformance descriptor for AssessmentError);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = *(v5 + 8);
    v21(v7, v4);
    if ((v20 & 1) == 0)
    {
      static AssessmentError.canceledInitialLoad.getter();
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21(v7, v4);
      if (v23 & 1) != 0 || (static AssessmentError.userCanceledSession.getter(), v24 = dispatch thunk of static Equatable.== infix(_:_:)(), v21(v7, v4), (v24) || (static AssessmentError.clientTerminatedSession.getter(), v25 = dispatch thunk of static Equatable.== infix(_:_:)(), v21(v7, v4), (v25))
      {
        v21(v10, v4);
        sub_10003DD84(v14, &qword_1001FCE98, &unk_10017F0E0);
        v17 = swift_allocObject();
        *(v17 + 16) = v2;
        v22 = v2;
        v26 = sub_10013BDB8;
      }

      else
      {
        static AssessmentError.viewSupportOptions.getter();
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        v21(v7, v4);
        if (v27)
        {
          v21(v10, v4);
          v22 = sub_10003DD84(v14, &qword_1001FCE98, &unk_10017F0E0);
          v17 = 0;
          v26 = sub_10013ACF0;
        }

        else
        {
          static AssessmentError.retryExceeded.getter();
          v28 = dispatch thunk of static Equatable.== infix(_:_:)();
          v21(v7, v4);
          if (v28)
          {
            v29 = v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice];
            v21(v10, v4);
            v30 = sub_10003DD84(v14, &qword_1001FCE98, &unk_10017F0E0);
            if ((v29 & 1) == 0)
            {
              return;
            }

            v19 = sub_10013ACFC;
            v17 = 0;
            (sub_10013ACFC)(v30);
LABEL_17:
            sub_10003C52C(v19, v17);
            return;
          }

          static AssessmentError.sessionArchived.getter();
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v21(v7, v4);
          if ((v31 & 1) == 0)
          {
            static AssessmentError.sessionExpired.getter();
            v32 = dispatch thunk of static Equatable.== infix(_:_:)();
            v21(v7, v4);
            if ((v32 & 1) == 0)
            {
              static AssessmentError.sessionMissing.getter();
              v33 = dispatch thunk of static Equatable.== infix(_:_:)();
              v21(v7, v4);
              if ((v33 & 1) == 0)
              {
                static AssessmentError.invalidImageUploadTokens.getter();
                v34 = dispatch thunk of static Equatable.== infix(_:_:)();
                v21(v7, v4);
                if ((v34 & 1) == 0)
                {
                  static AssessmentError.cosmeticAssessmentFailed.getter();
                  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v21(v7, v4);
                  if ((v35 & 1) == 0)
                  {
                    static AssessmentError.accessibilityEscape.getter();
                    dispatch thunk of static Equatable.== infix(_:_:)();
                    v21(v7, v4);
                  }
                }
              }
            }
          }

          v21(v10, v4);
          v22 = sub_10003DD84(v14, &qword_1001FCE98, &unk_10017F0E0);
          v17 = 0;
          v26 = sub_10013B020;
        }
      }

      v19 = v26;
LABEL_16:
      v19(v22);
      goto LABEL_17;
    }

    byte_10020A618 = 0;
    v21(v10, v4);
    v19 = 0;
    v17 = 0;
  }

  sub_10003DD84(v14, &qword_1001FCE98, &unk_10017F0E0);
  v22 = *&v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action];
  if (v22)
  {
    v22 = [v22 setResultCode:0];
  }

  if (v16 == 1)
  {
    goto LABEL_16;
  }
}

uint64_t sub_100137C10()
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] Sending retry message", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058988;

    return sub_1000D8F84();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100137DD0()
{
  v22 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000011, 0x8000000100193980, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v6 = qword_10020A368;
  v7 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10003DA8C;
  *(v9 + 24) = v8;
  v0[6] = sub_10003DAA4;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100060C48;
  v0[5] = &unk_1001C8AA0;
  v10 = _Block_copy(v0 + 2);
  v11 = v6;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v15 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v11[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
    v16 = sub_100050814();
    [v16 setNearbySharingEnabled:(v11[v15] & 1) == 0];

    sub_1000508A4();
    sub_100050C28();
    v0[11] = type metadata accessor for MainActor();
    v0[12] = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    v12 = sub_100138124;
    v13 = v17;
    v14 = v19;
  }

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100138124()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];
  *(v0 + 104) = v2;

  if (v2)
  {
    type metadata accessor for AppDelegate();
    v3 = swift_dynamicCastClass();
    *(v0 + 112) = v3;
    if (v3)
    {
      v4 = sub_1001382FC;
    }

    else
    {
      swift_unknownObjectRelease();
      v4 = sub_100138218;
    }
  }

  else
  {
    v4 = sub_10013C274;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100138218()
{
  v0[17] = 0;
  v1 = *(v0[10] + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[18] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_1001385E8;

    return sub_1000D89E0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001382FC(uint64_t a1)
{
  *(v1 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100138388, v3, v2);
}

uint64_t sub_100138388()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor;
  [*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:200 completion:0];
  v3 = *(v1 + v2);
  *(v0 + 128) = v3;
  v4 = v3;
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100138430, 0, 0);
}

uint64_t sub_100138430()
{
  receiver = v0[8].receiver;
  v2 = type metadata accessor for ButtonEventsConsumer();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v0[4].receiver = v3;
  v0[4].super_class = v2;
  v5 = receiver;
  v6 = objc_msgSendSuper2(v0 + 4, "init");
  v7 = &v6[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
  v8 = *&v6[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
  v9 = *&v6[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler + 8];
  *v7 = sub_10013A5D0;
  v7[1] = 0;
  v10 = v6;
  sub_10003C52C(v8, v9);

  [v5 addTarget:v10 action:"consume:" forButtonEvents:48 propagate:0];
  v11 = v0[8].receiver;
  v0[8].super_class = v11;
  v12 = *(v0[5].receiver + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[9].receiver = v12;
  if (v12)
  {

    v13 = swift_task_alloc();
    v0[9].super_class = v13;
    *v13 = v0;
    *(v13 + 1) = sub_1001385E8;

    return sub_1000D89E0();
  }

  else
  {

    super_class = v0->super_class;

    return super_class();
  }
}

uint64_t sub_1001385E8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100138768;
  }

  else
  {

    v2 = sub_100138704;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100138704()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100138768()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1001387D4(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10003DAAC(v7, qword_10020A510);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100056B7C(0xD000000000000031, 0x8000000100193940, &v37);
    *(v11 + 12) = 2080;
    v12 = [v8 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100056B7C(v13, v15, &v37);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Target] %s action ID: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!qword_10020A548)
  {
    sub_1000F6DA8();
  }

  v37 = v8;
  swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v8;
  *(v24 + 24) = v2;
  v25 = v8;
  v26 = v2;
  v27 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v28 = *&v26[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_actionObservation];
  *&v26[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_actionObservation] = v27;

  v29 = *&v26[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action];
  *&v26[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action] = v25;

  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  type metadata accessor for MainActor();
  v31 = v25;
  v32 = v26;
  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v32;
  sub_1000539D8(0, 0, v6, &unk_100185BE8, v34);

  return result;
}

uint64_t sub_100138B58(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100138B78, 0, 0);
}

uint64_t sub_100138B78()
{
  v31 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v1, v5, v6, v7, v8, v9, v10, v11;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    v14 = Dictionary.description.getter();
    v16 = v15;
    v17 = sub_100056B7C(v14, v15, &v30);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Target] Sending device attitude: %s", v12, 0xCu);
    sub_100044554(v13);
  }

  v25 = *(v0[3] + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[4] = v25;
  if (v25)
  {

    v26 = swift_task_alloc();
    v0[5] = v26;
    *v26 = v0;
    v26[1] = sub_1000593A0;
    v27 = v0[2];

    return sub_1000D977C(v27);
  }

  else
  {
    v29 = v0[1];

    return v29();
  }
}

void sub_100138DC0()
{
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection))
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10003DAAC(v1, qword_10020A510);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v34 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v34);
      _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s called with an active connection; ignoring", v4, 0xCu);
      sub_100044554(v5);
    }
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID + 8);
    if (v6 && (v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode + 8)) != 0)
    {
      v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID);
      v9 = *(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode);
      type metadata accessor for CosmeticAssessmentP2PConnectionManager();
      swift_allocObject();

      v10 = v8;
      v11 = v0;
      v12 = sub_1000705B8(v10, v6, v9, v7, 0);
      v6, v13, v14, v15, v16, v17, v18, v19;
      v7, v20, v21, v22, v23, v24, v25, v26;
      v27 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager;
      *(v11 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager) = v12;

      if (*(v11 + v27))
      {

        sub_10006D8F8();
      }
    }

    else
    {
      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10003DAAC(v28, qword_10020A510);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v34 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v34);
        _os_log_impl(&_mh_execute_header, v29, v30, "[Target] %s called before setting up; ignoring", v31, 0xCu);
        sub_100044554(v32);
      }

      sub_10013BBF0();
      swift_allocError();
      *v33 = 2;
      swift_willThrow();
    }
  }
}

void sub_100139128(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID + 8];
  if (!v2)
  {
    return;
  }

  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID];
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v1;

  static Published.subscript.setter();
  byte_10020A540 = 1;
  sub_1000F7B4C();
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v6 = qword_10020A368;
  v7 = OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting;
  v8 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting);
  if (v8 != 2)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = _AXSClassicInvertColorsEnabled();
  *(v6 + v7) = v9 != 0;
  if (v9)
  {
LABEL_6:
    _AXSClassicInvertColorsSetEnabled();
  }

LABEL_7:
  v10 = OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting;
  if (*(v6 + OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting) == 2)
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 enableVoiceOverCaptions];

    *(v6 + v10) = v12;
  }

  v13 = [objc_opt_self() sharedInstance];
  [v13 setEnableVoiceOverCaptions:0];

  v14 = objc_allocWithZone(type metadata accessor for CosmeticAssessmentWatermarkScanViewController());
  sub_1000E35AC(v4, v2, a1, v15);
  v17 = v16;
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  [qword_10020A388 pushViewController:v17 animated:1];
}

uint64_t sub_100139344()
{
  v1[13] = v0;
  v1[14] = type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v3;
  v1[17] = v2;

  return _swift_task_switch(sub_1001393E0, v3, v2);
}

uint64_t sub_1001393E0()
{
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = [qword_10020A388 topViewController];
  if (v1)
  {
    *(v0 + 96) = v1;
    sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr);
    sub_10003C49C(&qword_1002024C0, &qword_100185C80);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        sub_100049F74((v0 + 56), v0 + 16);
        *(v0 + 144) = *sub_1000442A0((v0 + 16), *(v0 + 40));
        *(v0 + 152) = static MainActor.shared.getter();
        v3 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_1001395B0, v3, v2);
      }
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }
  }

  else
  {

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_10003DD84(v0 + 56, &qword_1002024B8, &qword_100185C78);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001395B0()
{

  sub_1000E4774();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_100139618, v1, v2);
}

uint64_t sub_100139618()
{
  v1 = *(v0 + 104);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = 1;
  v2 = v1;
  static Published.subscript.setter();
  v3.n128_f64[0] = sub_100044554((v0 + 16));
  v4 = *(v0 + 8);

  return v4(v3);
}

void sub_1001396D0()
{
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = [qword_10020A388 topViewController];
  if (v1 && (v7[0] = v1, sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr), sub_10003C49C(&qword_1002024C0, &qword_100185C80), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v5 + 1))
    {
      sub_100049F74(&v4, v7);
      v2 = sub_1000442A0(v7, v7[3]);
      sub_1000E4560(v2);
      sub_1000E46A8();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v4) = 0;
      v3 = v0;
      static Published.subscript.setter();
      sub_100044554(v7);
      return;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  sub_10003DD84(&v4, &qword_1002024B8, &qword_100185C78);
}

id sub_10013983C()
{
  result = [objc_allocWithZone(type metadata accessor for CosmeticAssessmentTargetManager(0)) init];
  qword_10020A5F8 = result;
  return result;
}

uint64_t sub_1001398CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100139940()
{
  v0 = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  sub_1000EBC88(v0, qword_10020A600);
  v1 = sub_10003DAAC(v0, qword_10020A600);
  v2 = type metadata accessor for AssessmentError();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1001399FC()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_100139AC0();
}

uint64_t sub_100139AE0()
{
  v32 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID + 8);
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode + 8)) != 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID);
    v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode);
    type metadata accessor for CosmeticAssessmentP2PConnectionManager();
    swift_allocObject();

    v6 = sub_1000705B8(v4, v2, v5, v3, 0);
    v3, v7, v8, v9, v10, v11, v12, v13;
    v2, v14, v15, v16, v17, v18, v19, v20;
    *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager) = v6;

    v21 = swift_task_alloc();
    v0[3] = v21;
    *(v21 + 16) = v1;
    v22 = swift_task_alloc();
    v0[4] = v22;
    *v22 = v0;
    v22[1] = sub_100139DF8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10003DAAC(v23, qword_10020A510);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100056B7C(0xD000000000000019, 0x80000001001939A0, &v31);
      _os_log_impl(&_mh_execute_header, v24, v25, "[Target] %s called before setting up; ignoring", v26, 0xCu);
      sub_100044554(v27);
    }

    sub_10013BBF0();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_100139DF8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100139F14;
  }

  else
  {

    v2 = sub_100058034;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100139F14()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100139F78(uint64_t a1, char *a2)
{
  v4 = sub_10003C49C(&qword_1001FD880, &qword_10017F540);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - v7;
  if (*&a2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager])
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    (*(v5 + 32))(v10 + v9, v8, v4);

    v11 = a2;
    sub_1000549F0(sub_10013C164, v10);
  }

  return v6.n128_f64[0];
}

uint64_t sub_10013A0EC(uint64_t a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection) = a1;

  sub_10003C49C(&qword_1001FD880, &qword_10017F540);
  return CheckedContinuation.resume(returning:)();
}

void sub_10013A144(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_10003C49C(&qword_1002024A8, &qword_100185BF0);
  NSKeyValueObservedChange.newValue.getter();
  if (v15 != 1)
  {
    v6.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    v7 = [(objc_class *)v6.super.super.isa integerValue];
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10003DAAC(v8, qword_10020A510);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v9, v10, "[Target] Action result code has been updated to: %ld", v11, 0xCu);
    }

    v18 = sub_10013A33C;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100031FA8;
    v17 = &unk_1001C8A28;
    v12 = _Block_copy(&v14);
    [a3 setCompletion:v12];
    _Block_release(v12);
    [a3 setFinished:1];

    v13 = *(a4 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
    *(a4 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action) = 0;
  }
}

void sub_10013A33C()
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10003DAAC(v0, qword_10020A510);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Target] Action completion called", v3, 2u);
  }

  if (qword_10020A548)
  {
    v4 = qword_10020A548;
    OS_dispatch_semaphore.signal()();
  }

  sub_1000F7F54();
}

uint64_t sub_10013A440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013A4D8, v6, v5);
}

uint64_t sub_10013A4D8()
{

  *(v0 + 32) = 1;

  CurrentValueSubject.send(_:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013A5D0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10013A868;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C8AC8;
  v9 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v11[1] = &_swiftEmptyArrayStorage;
  sub_10013BD70(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

double sub_10013A8C4()
{
  v0 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_100185C20, v5);

  return result;
}

uint64_t sub_10013A9D0()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013AA64, v2, v1);
}

uint64_t sub_10013AA64()
{

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A388;
  v2 = objc_allocWithZone(type metadata accessor for AssessmentDamageCheckGuideViewController());
  v3 = sub_100069804();
  [v1 pushViewController:v3 animated:1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10013AB30()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013ABC4, v2, v1);
}

uint64_t sub_10013ABC4()
{

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A388;
  [qword_10020A388 dismissViewControllerAnimated:1 completion:0];
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A3C8;
  v3 = objc_allocWithZone(type metadata accessor for SuiteInProgressViewController());
  v4 = sub_1000ECABC(v2, 0);
  [v1 pushViewController:v4 animated:1];

  v5 = *(v0 + 8);

  return v5();
}

void sub_10013AD08(uint64_t a1, char a2)
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v4)
  {
    [v4 setResultCode:a1];
  }

  sub_1000F6FF8(a2);
}

double sub_10013AD98(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1000539D8(0, 0, v7, a3, v11);

  return result;
}

uint64_t sub_10013AEBC()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013AF50, v2, v1);
}

uint64_t sub_10013AF50()
{

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A388;
  v2 = objc_allocWithZone(type metadata accessor for AssessmentCompleteViewController());
  v3 = sub_10009A744(2);
  [v1 pushViewController:v3 animated:1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10013B020()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v8)
  {
    [v8 setResultCode:-1];
  }

  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = 16;
  aBlock[4] = sub_1000F797C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C8BE0;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10013BD70(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

id sub_10013B334(__n128 a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10003C49C(&qword_100202498, &qword_100185B98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10003C49C(&qword_1002024A0, qword_100185BA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager__isAssessorDeviceConnected;
  v21 = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(&v2[v12], v11, v8);
  v13 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isReadyToScan;
  v21 = 0;
  sub_10003C49C(&qword_1001FE140, &qword_10017FF58);
  swift_allocObject();
  *&v2[v13] = CurrentValueSubject.init(_:)();
  v14 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager__deviceAuthenticationState;
  v21 = 0;
  Published.init(initialValue:)();
  (*(v5 + 32))(&v2[v14], v7, v4);
  v15 = &v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_targetSerialNumber];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode];
  *v17 = 0;
  v17[1] = 0;
  v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_actionObservation] = 0;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t type metadata accessor for CosmeticAssessmentTargetManager(uint64_t a1)
{
  result = qword_100202470;
  if (!qword_100202470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013B784(uint64_t a1)
{
  sub_10013B8A0(319, &qword_100202480, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_10013B8A0(319, &qword_100202488, &type metadata for DeviceAuthenticationState);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10013B8A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10013B900()
{
  result = qword_100202490;
  if (!qword_100202490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202490);
  }

  return result;
}

uint64_t sub_10013B954@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_10013B994(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10013BA14(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

id sub_10013BA90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resultCode];
  *a2 = result;
  return result;
}

uint64_t sub_10013BAD8()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10013BB24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_10013A440(a1, v4, v5, v6);
}

double sub_10013BBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10013BBF0()
{
  result = qword_1002024B0;
  if (!qword_1002024B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002024B0);
  }

  return result;
}

uint64_t sub_10013BC44()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10013BC8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10013BCC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10006A96C();
}

uint64_t sub_10013BD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013BE28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_10013AB30();
}

uint64_t sub_10013BEDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_10013BF1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_10013AEBC();
}

uint64_t sub_10013BFE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1001399E0();
}

uint64_t sub_10013C094()
{
  v1 = sub_10003C49C(&qword_1001FD880, &qword_10017F540);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7, v6);
}

uint64_t sub_10013C164(uint64_t a1)
{
  sub_10003C49C(&qword_1001FD880, &qword_10017F540);
  v3 = *(v1 + 16);

  return sub_10013A0EC(a1, v3);
}

unint64_t sub_10013C200()
{
  result = qword_1002024C8;
  if (!qword_1002024C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002024C8);
  }

  return result;
}

void sub_10013C284(uint64_t a1, uint64_t a2, uint64_t a3, DARootViewController *a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *v4;
    sub_10014240C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    a4, v11, v12, v13, v14, v15, v16, v17;
    *v4 = v44;
  }

  else
  {
    v18 = sub_100064AFC(a3, a4);
    v20 = v19;
    a4, v19, v21, v22, v23, v24, v25, v26;
    if (v20)
    {
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v5;
      v45 = *v5;
      if (!v27)
      {
        sub_1001434F8();
        v35 = v45;
      }

      *(*(v35 + 48) + 16 * v18 + 8), v28, v29, v30, v31, v32, v33, v34;
      *(*(v35 + 56) + 16 * v18 + 8), v36, v37, v38, v39, v40, v41, v42;
      sub_10015624C(v18, v35, v43);
      *v5 = v35;
    }
  }
}

void sub_10013C38C(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v3;
    sub_100142594(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v35;
  }

  else
  {
    v16 = sub_100064AFC(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v36 = *v4;
      if (!v25)
      {
        sub_100143670();
        v33 = v36;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_1001563FC(v16, v33, v34);
      *v4 = v33;
    }
  }
}

void sub_10013C484(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v3;
    sub_100142710(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v35;
  }

  else
  {
    v16 = sub_100064AFC(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v36 = *v4;
      if (!v25)
      {
        sub_1001437E0();
        v33 = v36;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;
      swift_unknownObjectRelease();
      sub_1001563FC(v16, v33, v34);
      *v4 = v33;
    }
  }
}

void sub_10013C57C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10014288C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v8 = sub_100064F5C(a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v16 = *v4;
      if (!v11)
      {
        sub_100143950();
        v12 = v16;
      }

      sub_1001565AC(v10, v12, v13);

      *v4 = v12;
    }

    else
    {
    }
  }
}

void sub_10013C68C(uint64_t a1, uint64_t a2)
{
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10013C6F4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(NSUUID) init];
  v6 = *&v2[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v5;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10013E5E4;
  *(v8 + 24) = v7;
  v11[4] = sub_10003E41C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100060C48;
  v11[3] = &unk_1001C8E50;
  v9 = _Block_copy(v11);
  v10 = v2;
  v5;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_10013C88C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers;
  swift_beginAccess();
  v10 = a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_10014288C(sub_10013E628, v8, v10, isUniquelyReferenced_nonNull_native);

  *(a1 + v9) = v12;
  swift_endAccess();
  sub_10013D1E4();
}

void sub_10013CA0C(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10013E584;
    *(v6 + 24) = v5;
    v10[4] = sub_10003DAA4;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100060C48;
    v10[3] = &unk_1001C8DD8;
    v7 = _Block_copy(v10);
    swift_unknownObjectRetain_n();
    v8 = v1;

    dispatch_sync(v4, v7);
    swift_unknownObjectRelease();
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_10013CBA0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers;
  swift_beginAccess();
  sub_10013C57C(0, 0, a2);
  result = swift_endAccess();
  if (!*(*(a1 + v8) + 16))
  {
    v10 = *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue);
    *v7 = v10;
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    result = (*(v5 + 8))(v7, v4);
    if (v10)
    {
      if (*(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving) != 1)
      {
        return result;
      }

      *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving) = 0;
      if (qword_1001FC7E8 == -1)
      {
        return SessionManager.delegate.setter();
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    return SessionManager.delegate.setter();
  }

  return result;
}

void sub_10013CDC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device);
  if (v3)
  {
    sub_10003C49C(&qword_100202520, qword_10017F308);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10017EC00;
    type metadata accessor for DeviceEnhancedLogging();
    sub_10013E654(&qword_100202528, 255, type metadata accessor for DeviceEnhancedLogging, &protocol conformance descriptor for NSObject);
    v5 = v3;
    AnyHashable.init<A>(_:)();
    v6 = sub_100150644(inited);
    swift_setDeallocating();
    sub_10003DB48(inited + 32);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *a2 = v6;
}

uint64_t sub_10013D054(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10013D0CC, 0, 0);
}

uint64_t sub_10013D0CC()
{
  v2 = v0[3];
  v1 = v0[4];
  *(swift_task_alloc() + 16) = v2;
  sub_10003C49C(&unk_100202540, &unk_100185E38);
  OS_dispatch_queue.sync<A>(execute:)();

  v3 = v0[2];
  isa = Set._bridgeToObjectiveC()().super.isa;
  v3, v5, v6, v7, v8, v9, v10, v11;
  (v1)[2](v1, isa);

  _Block_release(v1);
  v12 = v0[1];

  return v12();
}

void sub_10013D1E4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving))
  {
    return;
  }

  *(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving) = 1;
  if (qword_1001FC7E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_10013E654(&unk_100202530, v9, type metadata accessor for DeviceObserverEnhancedLogging, &unk_100185DC0);
  swift_unknownObjectRetain();
  SessionManager.delegate.setter();
  v10 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device;
  if (!*(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device))
  {
    if (SessionManager.currentSession.getter())
    {

      v11 = [objc_allocWithZone(type metadata accessor for DeviceEnhancedLogging()) init];
      v12 = *(v1 + v10);
      *(v1 + v10) = v11;
      v13 = v11;

      sub_10013D3EC(v11);
    }
  }
}

void sub_10013D3EC(DARootViewController *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v33 = a1;
    v10 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    v31 = xmmword_10017EC00;
    while (v14)
    {
      v17 = v16;
      v18 = v33;
LABEL_13:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = *(*(v11 + 56) + ((v17 << 10) | (16 * v19)));
      if (v18)
      {
        sub_10003C49C(&qword_100202520, qword_10017F308);
        inited = swift_initStackObject();
        *(inited + 16) = v31;
        v34 = v18;
        type metadata accessor for DeviceEnhancedLogging();
        v32 = v20;
        sub_10013E654(&qword_100202528, 255, type metadata accessor for DeviceEnhancedLogging, &protocol conformance descriptor for NSObject);

        v22 = v18;
        AnyHashable.init<A>(_:)();
        v23 = sub_100150644(inited);
        swift_setDeallocating();
        sub_10003DB48(inited + 32);
        v34 = v23;
        v32(&v34);
        v23, v24, v25, v26, v27, v28, v29, v30;
      }

      else
      {
        v34 = &_swiftEmptySetSingleton;

        v20(&v34);
      }

      v16 = v17;
    }

    v18 = v33;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(v11 + 64 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_10013D6F0()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11 - 8);
  __chkstk_darwin(v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v0[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers] = _swiftEmptyDictionarySingleton;
  v10 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue;
  v6 = sub_100057B68();
  v9[1] = "observationQueue";
  v9[2] = v6;
  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_10013E654(&unk_1001FD740, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10003C49C(&unk_1001FCEA0, &unk_10017ED50);
  sub_10003E278(&qword_1001FD750, &unk_1001FCEA0, &unk_10017ED50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = type metadata accessor for DeviceObserverEnhancedLogging();
  v12.receiver = v0;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_10013D9BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeviceObserverEnhancedLogging();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10013DA70(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device;
  if (!*(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device))
  {
    v3 = [objc_allocWithZone(type metadata accessor for DeviceEnhancedLogging()) init];
    v4 = *(a1 + v1);
    *(a1 + v1) = v3;
    v5 = v3;

    sub_10013D3EC(v3);
  }
}

void sub_10013DB10(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device);
  if (v6)
  {
    *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device) = 0;

    v7 = *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue);
    *v5 = v7;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v5, v2);
    if (v7)
    {
      v9 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers;
      swift_beginAccess();
      v10 = *(a1 + v9);
      v11 = 1 << *(v10 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v10 + 64);
      v14 = (v11 + 63) >> 6;

      v15 = 0;
      while (v13)
      {
        v16 = v15;
LABEL_11:
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = *(*(v10 + 56) + ((v16 << 10) | (16 * v17)));
        v19 = &_swiftEmptySetSingleton;

        v18(&v19);
      }

      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          return;
        }

        v13 = *(v10 + 64 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10013DDA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000494BC;

  return v6();
}

uint64_t sub_10013DE90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10003DEC8;

  return v7();
}

uint64_t sub_10013DF78(uint64_t a1, DARootViewController *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  sub_1000F00F0(a3, v30 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10011064C(v11);
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

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v31[0] = 0;
      v31[1] = 0;
      v19 = v31;
      v31[2] = v14;
      v31[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v30[1] = 7;
    v30[2] = v19;
    v30[3] = v17;
    v21 = swift_task_create();

    sub_10011064C(a3);
    a2, v22, v23, v24, v25, v26, v27, v28;

    return v21;
  }

LABEL_8:
  sub_10011064C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v14;
    v31[7] = v16;
  }

  return swift_task_create();
}

double sub_10013E234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10013E654(&qword_1001FDE60, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);

  return result;
}

uint64_t sub_10013E4E4()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

double sub_10013E524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10013E544()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10013E59C()
{

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_10013E5F0()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10013E654(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10013E69C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10013E6DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003DEC8;

  return sub_10013D054(v2, v3);
}

uint64_t sub_10013E78C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000494BC;

  return sub_10013DDA8(v2, v3, v4);
}

uint64_t sub_10013E84C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_10013E88C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000494BC;

  return sub_10013DE90(a1, v4, v5, v6);
}

uint64_t sub_10013E958(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000494BC;

  return sub_100056908(a1, v4);
}

uint64_t sub_10013EA10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003DEC8;

  return sub_100056908(a1, v4);
}

uint64_t sub_10013EAE4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7, v1);
}

void sub_10013EB1C()
{
  v1 = *(v0 + 16);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

Class sub_10013EBB0()
{
  v1 = [objc_opt_self() systemFontOfSize:22.0];
  v2 = objc_opt_self();
  v3 = [v2 configurationWithFont:v1];

  v4 = _UISolariumEnabled();
  if (_UISolariumEnabled())
  {
    isa = [objc_opt_self() systemBlueColor];
    v6 = &selRef_configurationWithHierarchicalColor_;
  }

  else
  {
    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10017ED90;
    v8 = objc_opt_self();
    *(v7 + 32) = [v8 systemBlueColor];
    *(v7 + 40) = [v8 systemGray6Color];
    sub_10003E110(0, &qword_100202970, UIColor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v7, v9, v10, v11, v12, v13, v14, v15;
    v6 = &selRef_configurationWithPaletteColors_;
  }

  v16 = [v2 *v6];

  if (v4)
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v17 = 0x8000000100192280;
  }

  v18 = v16;
  v19 = String._bridgeToObjectiveC()();
  v17, v20, v21, v22, v23, v24, v25, v26;
  v27 = objc_opt_self();
  image_8 = v18;
  v28 = [v27 systemImageNamed:v19 withConfiguration:v18];

  image = [v28 imageByApplyingSymbolConfiguration:v3];
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10017ED90;
  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x5F4E4F4953534553, 0xEF59524F54534948);
  v30 = String._bridgeToObjectiveC()();
  v31 = [v27 systemImageNamed:v30];

  v32 = swift_allocObject();
  *(v32 + 16) = v0;
  v33 = v0;
  v39 = v32;
  *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018DC20);
  v34 = String._bridgeToObjectiveC()();
  v35 = [v27 systemImageNamed:{v34, 0, 0, 0, sub_10013F8AC, v39}];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(preferredElementSize + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_10003E110(0, &qword_1001FD3B8, UIBarButtonItem_ptr);
  sub_10003E110(0, &qword_100202578, UIMenu_ptr);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v43.value.super.isa = 0;
  v43.is_nil = 0;
  v44.value.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v36, 0, v43, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 2).super.super.isa;
  v42.value.super.isa = image;
  v42.is_nil = 0;
  v37 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v42, v44, v45).super.super.isa;

  return v37;
}

void sub_10013F0C4(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    if (qword_1001FC730 != -1)
    {
      swift_once();
    }

    v4 = qword_10020A3C8;
    v5 = objc_allocWithZone(type metadata accessor for SelfServiceSessionHistoryViewController());
    v6 = sub_10004CCC0(v4);
    [v3 pushViewController:v6 animated:1];
  }
}

double sub_10013F1A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    v6 = [v4 navigationItem];
    v7 = [v6 rightBarButtonItem];

    if (v5)
    {
      v8 = sub_100133CB4;
    }

    else
    {
      v8 = sub_10013F2E0;
    }

    sub_100088E48(0, v7);

    return sub_10003C52C(v8, 0);
  }

  return result;
}

void sub_10013F2E0()
{
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A368;
  v1 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100099D24;
  *(v3 + 24) = v2;
  v11[4] = sub_10003DAA4;
  v11[5] = v3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100060C48;
  v11[3] = &unk_1001C9030;
  v4 = _Block_copy(v11);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
    v7 = sub_100050814();
    [v7 setNearbySharingEnabled:(v5[v6] & 1) == 0];

    v8 = sub_100050814();
    [v8 setDiscoverableMode:*&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

    v9 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion;
    v10 = *&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion];
    if (v10)
    {
      [v10 invalidate];
    }

    *&v5[v9] = 0;
    swift_unknownObjectRelease();
  }
}

id sub_10013F5C8(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4, uint64_t a5, DARootViewController *a6, uint64_t a7)
{
  v12 = String._bridgeToObjectiveC()();
  a2, v13, v14, v15, v16, v17, v18, v19;
  if (!a4)
  {
    v20 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v28 = 0;
    goto LABEL_6;
  }

  v20 = String._bridgeToObjectiveC()();
  a4, v21, v22, v23, v24, v25, v26, v27;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v28 = String._bridgeToObjectiveC()();
  a6, v29, v30, v31, v32, v33, v34, v35;
LABEL_6:
  v38.receiver = v7;
  v38.super_class = type metadata accessor for SelfServiceBaseNavigationController();
  v36 = objc_msgSendSuper2(&v38, "initWithTitle:detailText:symbolName:contentLayout:", v12, v20, v28, a7);

  return v36;
}

id sub_10013F81C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SelfServiceBaseNavigationController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10013F874()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10013F8B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

double sub_10013F904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_10013F920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100142A00(v14, 0x414E5F544E455645, 0xEA0000000000454DLL, isUniquelyReferenced_nonNull_native);
  v16 = String._bridgeToObjectiveC()();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100142A00(v16, 0x59545F544E455645, 0xEE005458545F4550, v17);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100142A00(v18, 0x4D414E5F45474150, 0xE900000000000045, v19);
  if (a6)
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_100142A00(v20, 0x7365735F32747361, 0xEF64695F6E6F6973, v21);
  }

  if (a8)
  {
    v22 = String._bridgeToObjectiveC()();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_100142A00(v22, 0xD000000000000018, 0x8000000100193B20, v23);
  }

  if (a10)
  {
    v24 = String._bridgeToObjectiveC()();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_100142A00(v24, 0xD000000000000013, 0x8000000100193B00, v25);
  }

  if (a12)
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_100142A00(v26, 0xD000000000000018, 0x8000000100193AE0, v27);
  }

  return _swiftEmptyDictionarySingleton;
}

void sub_10013FBB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025A8, &qword_100185EB8);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10013FE50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025E8, &qword_100185EE0);
  v39 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v42 = *(*(v5 + 48) + v20);
      v21 = (*(v5 + 56) + 40 * v20);
      v22 = v21[1];
      v41 = *v21;
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[4];
      if ((v39 & 1) == 0)
      {
        v26 = v25;

        v27 = v23;
        v28 = v24;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v42);
      v29 = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v42;
      v16 = (*(v7 + 56) + 40 * v15);
      v12 = v40;
      *v16 = v41;
      v16[1] = v22;
      v16[2] = v23;
      v16[3] = v24;
      v16[4] = v25;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100140128(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025B8, &qword_100185EC8);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = static Hasher._hash(seed:bytes:count:)();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100140394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TargetDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10003C49C(&unk_1002025D8, &qword_100185ED8);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1001441BC(&unk_1001FDED0, &type metadata accessor for TargetDevice, &protocol conformance descriptor for TargetDevice);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100140770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025A0, &qword_100182DC8);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100140A30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025D0, &qword_100182DE0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100140CD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_100202580, &qword_100185E98);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100140F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TargetDevice.DeviceType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10003C49C(&unk_1002025C0, &qword_100185ED0);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1001441BC(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100141358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025B0, &qword_100185EC0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100141600(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_100202598, &qword_100185EB0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      v22 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100141874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for IndexPath();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10003C49C(&qword_100202590, &qword_100185EA8);
  v43 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_100141BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_100202588, &qword_100185EA0);
  v46 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v2;
    v45 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v46 & 1) == 0)
      {

        v24 = v23;
      }

      v47 = v23;
      Hasher.init(_seed:)();
      v25 = [*(v22 + 40) serialNumber];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      String.hash(into:)();
      v27, v28, v29, v30, v31, v32, v33, v34;
      v35 = Hasher._finalize()();
      v36 = -1 << *(v7 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v16 = v47;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v16 = v47;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v45;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_33;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100141ED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003C49C(&qword_100200708, &qword_100182DB8);
  v31 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

unint64_t sub_100142160(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100064AFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10013FBB0(v16, a4 & 1);
      result = sub_100064AFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100142E20();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1001422C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100064BB8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100140128(v14, a3 & 1);
      v9 = sub_100064BB8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_10014311C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 4 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

void sub_10014240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100064AFC(a3, a4);
  v21 = *(v12 + 16);
  v22 = (v14 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = v14;
  v26 = *(v12 + 24);
  if (v26 < v24 || (a5 & 1) == 0)
  {
    if (v26 < v24 || (a5 & 1) != 0)
    {
      sub_100140770(v24, a5 & 1);
      v13 = sub_100064AFC(a3, a4);
      if ((v25 & 1) != (v14 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v27 = v13;
      sub_1001434F8();
      v13 = v27;
    }
  }

  v28 = *v6;
  if (v25)
  {
    v29 = (v28[7] + 16 * v13);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;

    v30, v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v28[(v13 >> 6) + 8] |= 1 << v13;
  v31 = (v28[6] + 16 * v13);
  *v31 = a3;
  v31[1] = a4;
  v32 = (v28[7] + 16 * v13);
  *v32 = a1;
  v32[1] = a2;
  v33 = v28[2];
  v23 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v34;
}

void sub_100142594(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100064AFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100140A30(v16, a4 & 1);
      v11 = sub_100064AFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100143670();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_100142710(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100064AFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100141358(v16, a4 & 1);
      v11 = sub_100064AFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1001437E0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_10014288C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100064F5C(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_100141600(v15, a4 & 1);
      v10 = sub_100064F5C(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_100144170();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_100143950();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v22 = (v20[7] + 16 * v10);
  *v22 = a1;
  v22[1] = a2;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v24;

  v25 = a3;
}

void sub_100142A00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100064AFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100140CD8(v16, a4 & 1);
      v11 = sub_100064AFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100143AC8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_100142B78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100064FA0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100141BF4(v14, a3 & 1);
      v9 = sub_100064FA0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for CardState();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_100143EB4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;
}

void sub_100142CD4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100068EB8();
  v17 = *(v8 + 16);
  v18 = (v10 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v10;
  v22 = *(v8 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      sub_100141ED0(v20, a3 & 1);
      v9 = sub_100068EB8();
      if ((v21 & 1) != (v10 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v9;
      sub_100144014();
      v9 = v23;
    }
  }

  v24 = *v4;
  if ((v21 & 1) == 0)
  {
    v24[(v9 >> 6) + 8] |= 1 << v9;
    *(v24[6] + v9) = a2;
    *(v24[7] + 8 * v9) = a1;
    v27 = v24[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v19)
    {
      v24[2] = v28;
      return;
    }

    goto LABEL_15;
  }

  v25 = v24[7];
  v26 = *(v25 + 8 * v9);
  *(v25 + 8 * v9) = a1;

  v26, v10, v11, v12, v13, v14, v15, v16;
}

void sub_100142E20()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025A8, &qword_100185EB8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_100142F88()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025E8, &qword_100185EE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 40 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v24 = (*(v4 + 56) + 40 * v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
        v25 = v23;

        v26 = v21;
        v27 = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_10014311C()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025B8, &qword_100185EC8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_100143278()
{
  v1 = v0;
  v33 = type metadata accessor for TargetDevice();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C49C(&unk_1002025D8, &qword_100185ED8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1001434F8()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025A0, &qword_100182DC8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_100143670()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025D0, &qword_100182DE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}