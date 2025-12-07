uint64_t sub_10030B804(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002CB380;

  return sub_10030B2B4(a1, v4);
}

uint64_t sub_10030B8BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10030BDD0;

  return sub_10030A074(v2, v3, v4);
}

uint64_t sub_10030B970()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10030BDD0;

  return sub_100309B40(v2, v3, v4, v6, v5);
}

uint64_t sub_10030BA38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10030BDD0;

  return sub_100309404(v2, v3, v4, v5, v6);
}

uint64_t sub_10030BB00()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10030BDD0;

  return sub_100308EB0(v2, v3, v5, v4);
}

uint64_t sub_10030BBC0()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10030BDD0;

  return sub_1003087AC(v2, v3, v4, v6, v7, v8, v5);
}

uint64_t sub_10030BCA0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10030BCE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1002CB380;

  return sub_1003080E0(v2, v3);
}

uint64_t sub_10030BD8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

BOOL sub_10030BDDC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for UUID();
    ++v2;
    sub_10001AD5C(&qword_100597540, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_10030BEE8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v11 = *a2();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 64);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 5;
      a3(v7, v8, v9);
      --v5;
    }

    while (v5);
  }

  return v11;
}

_UNKNOWN **sub_10030BFFC()
{
  v1 = *(v0 + 8) != 1 || ((*(v0 + 24) | (*(v0 + 28) << 32)) & 0xFF00000000) == 0x300000000;
  if (v1 || (static Channel.isValid(channel:on:with:)() & 1) == 0)
  {
    return &off_1005729A0;
  }

  else
  {
    return &off_100572978;
  }
}

uint64_t sub_10030C05C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __chkstk_darwin();
  (*(v6 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(v5 + 36), v2, v3);
  return String.init<A>(describing:)();
}

uint64_t sub_10030C120(uint64_t a1)
{
  v2 = *(a1 + 36);
  v7 = *(a1 + 16);
  v3 = v7;
  v4 = sub_1000297D4(v6);
  (*(*(v3 - 8) + 16))(v4, v1 + v2, v3);
  return Mirror.init(reflecting:)();
}

uint64_t sub_10030C1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UUID();
  sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10030C248(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_10030C1A8(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10030C2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  sub_10030C1A8(v6, a2, v4);
  return Hasher._finalize()();
}

void sub_10030C374(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for PriorityRadioConstraint(0);
  Hasher._combine(_:)(*(v1 + v3[5]));
  RadioResources.SymbolicChannel.hash(into:)(a1, *(v1 + v3[6]), *(v1 + v3[6] + 8));
  v4 = (v1 + v3[7]);
  v5 = v4[17];
  LOBYTE(v3) = v4[18];
  v6 = v4[19];
  v7 = v4[20];
  v8 = v4[21];
  v9 = v4[22];
  v10 = v4[23];
  Hasher._combine(_:)(v4[16]);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
}

Swift::Int sub_10030C4A4()
{
  Hasher.init(_seed:)();
  sub_10030C374(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10030C4E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10030C374(v2);
  return Hasher._finalize()();
}

double sub_10030C528()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v24 = v3;
    sub_10002AA40(&v30);
    v25 = v30;
    v29[0] = *v31;
    *(v29 + 14) = *(&v31[3] + 2);
    v27 = *&v31[7];
    v28 = v32;
    v9 = *(*v8 + 200);

    v11 = v9(v10);
    v33 = *WiFiDriverCapabilities.supportsDualBand.unsafeMutableAddressor();
    v26[0] = v11;
    sub_1000C2A14();

    v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();

    HIDWORD(v23) = v12 & 1;
    v14 = v9(v13);

    v33 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
    v26[0] = v14;

    v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();

    v16 = v15 & 1;
    sub_1003EB210(v5);
    v17 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = *(v2 + 80);
    *(v19 + 24) = *(v2 + 88);
    *(v19 + 40) = *(v2 + 104);
    *(v19 + 48) = v18;
    v20 = qword_1005960E0;
    swift_beginAccess();
    v21 = v17;
    ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v21, (v1 + v20), sub_100317454, v19, v24, &v33);
    swift_endAccess();

    sub_100016290(v5, &qword_100594D50, &unk_1004AEBF0);
    if (*v34)
    {
      v22 = *&v34[16] | (*&v34[20] << 32);
    }

    else
    {
      v22 = 0x300000000;
    }

    v33 = v25;
    v34[0] = BYTE4(v23);
    v34[1] = v16;
    *&v34[2] = v29[0];
    *&v34[16] = *(v29 + 14);
    v35 = v22;
    v36 = WORD2(v22);
    v37 = v27;
    v38 = v28;
    sub_10002B214(&v33);
  }

  return result;
}

double sub_10030C8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 28);
  v5 = *(a2 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v3)
    {
      v7 = v5 | (v4 << 32);
    }

    else
    {
      v7 = 0x300000000;
    }

    sub_10002AA40(v8);
    v9[0] = *v8;
    v9[1] = *&v8[8];
    v12 = *&v8[19];
    v13 = v8[27];
    v10 = v7;
    v11 = WORD2(v7);
    sub_10002B214(v9);
  }

  return result;
}

double sub_10030C964()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10005DC58(&unk_10059A3D0, &qword_1004B0730);
  __chkstk_darwin();
  v5 = &v28 - v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10040DCDC(v5);
    v9 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = *(v2 + 80);
    *(v11 + 24) = *(v2 + 88);
    *(v11 + 40) = *(v2 + 104);
    *(v11 + 48) = v10;
    v12 = qword_1005960E8;
    swift_beginAccess();
    v13 = v9;
    ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v13, (v1 + v12), sub_1003173A4, v11, v3, v37);
    swift_endAccess();

    sub_100016290(v5, &unk_10059A3D0, &qword_1004B0730);
    v14._rawValue = v37[0];
    sub_10002AA40(v37);
    v40 = v38;
    v41 = v39;
    sub_10002AC5C(&v40, v42);
    sub_10002ACB8(v37);
    v34 = v40;
    v35 = v41;
    v33 = v8;
    v15 = sub_100019B10();
    RadioResources.SymbolicChannel.Resolver.primaryChannel.setter(v15 & 0xFFFFFFFFFFFFLL);
    v16 = sub_10002AF00();
    RadioResources.SymbolicChannel.Resolver.secondaryChannel.setter(v16 & 0xFFFFFFFFFFFFLL);
    RadioResources.SymbolicChannel.Resolver.update(preferredChannels:)(v14);

    LODWORD(v14._rawValue) = v34;
    v17 = WORD2(v34);
    v30 = DWORD2(v34);
    v28 = WORD6(v34);
    v32 = v35;
    v29 = WORD2(v35);
    v31 = *(&v35 + 1);
    v19 = *(v1 + qword_1005960F0 + 8);
    v20 = *(v1 + qword_1005960F0 + 16);
    v21 = *(v1 + qword_1005960F0 + 24);
    v22 = *(v1 + qword_1005960F0 + 32);
    v23 = *(v1 + qword_1005960F0 + 40);
    v24 = *(v1 + qword_1005960F0 + 48);
    v25 = HIWORD(v20);
    v26 = HIWORD(v21);
    v27 = HIWORD(v22);
    v36[0] = *(v1 + qword_1005960F0);
    v18 = v36[0];
    v36[1] = v19;
    v36[2] = v20;
    v36[3] = v21;
    v36[4] = v22;
    v36[5] = v23;
    v36[6] = v24;
    sub_10002996C(v36, v42);

    v42[0] = v18;
    v42[1] = v19;
    rawValue = v14._rawValue;
    v44 = v17;
    v45 = v25;
    v47 = v28;
    v46 = v30;
    v48 = v26;
    v50 = v29;
    v49 = v32;
    v51 = v27;
    v52 = v31;
    v53 = v24;
    sub_10002B214(v42);
  }

  return result;
}

double sub_10030CCD8(uint64_t a1, void **a2, uint64_t a3)
{
  v3._rawValue = *a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10002AA40(v5);
    RadioResources.SymbolicChannel.Resolver.update(preferredChannels:)(v3);
    sub_10002B214(v5);
  }

  return result;
}

uint64_t sub_10030CD60()
{
  v0 = swift_allocObject();
  sub_10030CD98();
  return v0;
}

uint64_t sub_10030CD98()
{
  Logger.init(subsystem:category:)();
  *(v0 + qword_1005960E0) = 0;
  swift_weakInit();
  *(v0 + qword_1005960E8) = 0;
  swift_weakInit();
  swift_weakInit();
  v1 = v0 + qword_1005960F0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v0 + qword_1005960F8) = &_swiftEmptyDictionarySingleton;
  return v0;
}

uint64_t sub_10030CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v13 = *v12;
  *v11 = *v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v13)
  {
    dispatch thunk of Identifiable.id.getter();
    swift_beginAccess();
    v16 = sub_1003AD518(v7, v18);
    (*(v5 + 8))(v7, v4, v16);
    sub_100016290(v18, &unk_100597470, &unk_1004B07E0);
    swift_endAccess();
    return sub_10002A698();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10030D0A0()
{
  v1 = qword_10059B968;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_weakDestroy();

  swift_weakDestroy();
  swift_weakDestroy();
  sub_1000299A4(*(v0 + qword_1005960F0), *(v0 + qword_1005960F0 + 8), *(v0 + qword_1005960F0 + 16), *(v0 + qword_1005960F0 + 24), *(v0 + qword_1005960F0 + 32), *(v0 + qword_1005960F0 + 40), *(v0 + qword_1005960F0 + 48));

  return v0;
}

uint64_t sub_10030D180()
{
  sub_10030D0A0();

  return swift_deallocClassInstance();
}

uint64_t sub_10030D1FC(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 16);
  if (v9 != 2)
  {
    if (v9 != 1)
    {
      if (!v9 && (a3 & 1) == 0)
      {
        v10 = TimeBitmap.all.unsafeMutableAddressor();
        v11 = *v10;
        v12 = *(v10 + 1);
        v13 = *(v10 + 2);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v15 = *(AssociatedConformanceWitness + 32);
        v16 = swift_checkMetadataState();
        return v15(v11, v12, v13, 1, 2, a4, v16, AssociatedConformanceWitness);
      }

      goto LABEL_11;
    }

    if ((a3 & 1) == 0)
    {
      if (a5 & 1) != 0 || (a6)
      {
        v55 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
        v56 = *v55;
        v57 = v55[1];
        v58 = v55[2];
        swift_getAssociatedTypeWitness();
        v59 = swift_getAssociatedConformanceWitness();
        v60 = *(v59 + 32);
        v61 = swift_checkMetadataState();
        v60(v56, v57, v58, 1, 2, a4, v61, v59);
        v62 = TimeBitmap.inverted()(*v55, v55[1], v55[2]);
        return (v60)(v62);
      }

      v18 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v19 = *v18;
      v20 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v63 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v19, *v20, *v20, *v20);
      v22 = v21;
      v24 = v23;
      swift_getAssociatedTypeWitness();
      v25 = swift_getAssociatedConformanceWitness();
      v26 = *(v25 + 32);
      v27 = swift_checkMetadataState();
      (v26)(v63, v22, v24, 0, 2, a4, v27, v25);
      v28 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v20, *v18, *v20, *v20);
      v26(v28);
      v29 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v20, *v20, *v18, *v18);
      return (v26)(v29);
    }

LABEL_11:
    v30 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v31 = *v30;
    v32 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v33 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v31, *v32, *v32, *v32);
    v35 = v34;
    v37 = v36;
    v38 = a4;
    swift_getAssociatedTypeWitness();
    v39 = swift_getAssociatedConformanceWitness();
    v40 = *(v39 + 32);
    v41 = swift_checkMetadataState();
    (v40)(v33, v35, v37, 0, 2, v38, v41, v39);
    v42 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v32, *v30, *v32, *v32);
    return v40(v42);
  }

  if (a3)
  {
    goto LABEL_11;
  }

  if ((a5 & 1) == 0)
  {
    v43 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v44 = *v43;
    v45 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v46 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v44, *v45, *v45, *v45);
    v64 = v47;
    v65 = v46;
    v49 = v48;
    v50 = a4;
    swift_getAssociatedTypeWitness();
    v51 = swift_getAssociatedConformanceWitness();
    v26 = *(v51 + 32);
    v52 = swift_checkMetadataState();
    (v26)(v65, v64, v49, 0, 2, v50, v52, v51);
    v53 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v45, *v43, *v45, *v45);
    v26(v53);
    v54 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v45, *v45, *v43, *v45);
    v26(v54);
    v29 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v45, *v45, *v45, *v43);
    return (v26)(v29);
  }

  return result;
}

uint64_t sub_10030D76C(char a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, uint64_t a6, char a7, char a8, unint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, char *a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(void))
{
  v26 = *(a2 + 16);
  if (!v26 && (a3 & 1) == 0)
  {
    v27 = TimeBitmap.all.unsafeMutableAddressor();
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = a6;
    v31 = *(v27 + 2);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = *(AssociatedConformanceWitness + 32);
    v34 = swift_checkMetadataState();
    v35 = v28;
    v36 = v29;
    v37 = v31;
    v38 = a4;
    v39 = a5;
    v40 = v30;
    return v33(v35, v36, v37, v38, v39, v40, v34, AssociatedConformanceWitness);
  }

  v133 = a6;
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      if ((a3 & 1) == 0)
      {
        v54 = a2 + 37;
        v55 = 4;
        while (--v55)
        {
          v56 = v54 + 8;
          v57 = Channel.isDFS.getter(*(v54 - 5));
          v54 = v56;
          if (v57)
          {
            goto LABEL_31;
          }
        }

        if (a7)
        {
          v68 = a2 + 39;
          do
          {
            if (*(v68 - 1) == 1)
            {
              break;
            }

            v68 += 8;
            --v26;
          }

          while (v26);
        }

        swift_getAssociatedTypeWitness();
        v84 = swift_getAssociatedConformanceWitness();
        v85 = *(v84 + 32);
        v86 = swift_checkMetadataState();
        (v85)(a12, a13, a14, a4, a5, v133, v86, v84);
        (v85)(a15, a16, a17, 0, 0, v133, v86, v84);
        v87 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v88 = *v87;
        v89 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v90 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v88, v88, *v89, *v87);
        v85(v90);
        v91 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v87, *v87, *v87, *v89);
        return (v85)(v91);
      }
    }

    else if (v26 == 4 && (a3 & 1) == 0)
    {
      v43 = (a2 + 39);
      v44 = 5;
      while (--v44)
      {
        v45 = *v43;
        v43 += 8;
        if (v45 == 1)
        {
          v46 = a2 + 37;
          v47 = 5;
          while (--v47)
          {
            v48 = v46 + 8;
            v49 = Channel.isDFS.getter(*(v46 - 5));
            v46 = v48;
            if (v49)
            {
              goto LABEL_31;
            }
          }

          v73 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
          v74 = *v73;
          v75 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
          v135 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v74, *v75, *v75, *v75);
          v130 = v77;
          v132 = v76;
          swift_getAssociatedTypeWitness();
          v78 = swift_getAssociatedConformanceWitness();
          v79 = *(v78 + 32);
          v80 = swift_checkMetadataState();
          (v79)(v135, v132, v130, a4, a5, v133, v80, v78);
          v81 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v75, *v73, *v75, *v75);
          v79(v81);
          v82 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v75, *v75, *v73, *v75);
          v79(v82);
          v83 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v75, *v75, *v75, *v73);
          return (v79)(v83);
        }
      }
    }

LABEL_31:
    v58 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v59 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v60 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v58, v58, *v59, *v59);
    v62 = v61;
    v64 = v63;
    swift_getAssociatedTypeWitness();
    v65 = swift_getAssociatedConformanceWitness();
    v66 = *(v65 + 32);
    v67 = swift_checkMetadataState();
    return v66(v60, v62, v64, a4, a5, v133, v67, v65);
  }

  v129 = a13;
  v131 = a14;
  if (v26 == 1)
  {
    if ((a3 & 1) == 0)
    {
      if ((a7 & 1) != 0 || a8 == 1 && Channel.isDFS.getter(*(a2 + 32)))
      {
        swift_getAssociatedTypeWitness();
        v50 = swift_getAssociatedConformanceWitness();
        v51 = *(v50 + 32);
        v52 = swift_checkMetadataState();
        (v51)(a9, a10, a11, a4, a5, v133, v52, v50);
        v53 = TimeBitmap.inverted()(a9, a10, a11);
        return v51(v53);
      }

      else
      {
        swift_getAssociatedTypeWitness();
        v69 = swift_getAssociatedConformanceWitness();
        v70 = *(v69 + 32);
        v71 = swift_checkMetadataState();
        (v70)(a12, a13, a14, a4, a5, v133, v71, v69);
        v72 = TimeBitmap.inverted()(a12, a13, a14);
        return v70(v72);
      }
    }

    goto LABEL_31;
  }

  if (v26 != 2)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    goto LABEL_31;
  }

  v42 = a15;
  if (Channel.isDFS.getter(*(a2 + 32)) || Channel.isDFS.getter(*(a2 + 40)))
  {
    goto LABEL_31;
  }

  if (a7)
  {
    if (*(a2 + 38) == 1)
    {
LABEL_13:
      v134 = 0;
    }

    else
    {
      if (*(a2 + 46) != 1)
      {
        goto LABEL_57;
      }

LABEL_63:
      v134 = 1;
    }

    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = *(AssociatedConformanceWitness + 32);
    v119 = swift_checkMetadataState();
    v33(a12, v129, v131, a4, a5, v133, v119, AssociatedConformanceWitness);
    v33(v42, a16, a17, (v134 == 0), 0, v133, v119, AssociatedConformanceWitness);
    v120 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v121 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v35 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v120, v120, *v121, *v121);
    v38 = v134;
    v39 = 0;
    v40 = v133;
    v34 = v119;
    return v33(v35, v36, v37, v38, v39, v40, v34, AssociatedConformanceWitness);
  }

  if (a8 == 1)
  {
    v92 = *(a2 + 32);
    v93 = *(a2 + 37);
    v126 = *(a2 + 39);
    v127 = *(a2 + 38);
    v128 = *(a2 + 36);
    v94 = _swiftEmptyArrayStorage;
    if (!Channel.isDFS.getter(v92))
    {
      goto LABEL_48;
    }

    v125 = v92;
    v137 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000C06E4(0, _swiftEmptyArrayStorage[2] + 1, 1);
      v94 = _swiftEmptyArrayStorage;
    }

    v96 = _swiftEmptyArrayStorage[2];
    v95 = _swiftEmptyArrayStorage[3];
    v97 = v96 + 1;
    if (v96 < v95 >> 1)
    {
      goto LABEL_47;
    }

    goto LABEL_69;
  }

LABEL_57:
  while (1)
  {
    v131 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v106 = *v131;
    v129 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v136 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v106, v106, *v129, *v129);
    v108 = v107;
    v110 = v109;
    swift_getAssociatedTypeWitness();
    v111 = swift_getAssociatedConformanceWitness();
    v96 = v111 + 32;
    v112 = *(v111 + 32);
    v113 = swift_checkMetadataState();
    v114 = v108;
    v42 = v113;
    v115 = a4;
    a4 = v112;
    v116 = a5;
    a5 = v133;
    v93 = a1;
    (v112)(v136, v114, v110, v115, v116, v133, v113, v111);
    if ((*(a2 + 39) & 1) == 0 && (*(a2 + 47) & 1) == 0)
    {
      break;
    }

    v95 = *(a2 + 39);
    if (v95 == 1)
    {
      v95 = *(a2 + 47);
      if ((v95 & 1) == 0)
      {
        v117 = *v131;
        v118 = *v129;
        goto LABEL_66;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_69:
    v124 = v97;
    sub_1000C06E4((v95 > 1), v97, 1);
    v97 = v124;
    v94 = v137;
LABEL_47:
    v94[2] = v97;
    v98 = &v94[v96];
    *(v98 + 8) = v125;
    *(v98 + 36) = v128;
    *(v98 + 37) = v93;
    *(v98 + 38) = v127;
    *(v98 + 39) = v126;
LABEL_48:
    v99 = *(a2 + 40);
    v100 = *(a2 + 45);
    v126 = *(a2 + 47);
    v127 = *(a2 + 46);
    v128 = *(a2 + 44);
    if (Channel.isDFS.getter(v99))
    {
      v137 = v94;
      v125 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000C06E4(0, v94[2] + 1, 1);
      }

      v102 = v94[2];
      v101 = v94[3];
      v103 = v102 + 1;
      if (v102 >= v101 >> 1)
      {
        sub_1000C06E4((v101 > 1), v102 + 1, 1);
        v103 = v102 + 1;
      }

      v94[2] = v103;
      v104 = &v94[v102];
      *(v104 + 8) = v125;
      *(v104 + 36) = v128;
      *(v104 + 37) = v100;
      *(v104 + 38) = v127;
      *(v104 + 39) = v126;
    }

    v105 = v94[2];

    if (v105 == 1)
    {
      if (Channel.isDFS.getter(*(a2 + 32)))
      {
        goto LABEL_13;
      }

      if (Channel.isDFS.getter(*(a2 + 40)))
      {
        goto LABEL_63;
      }
    }
  }

  v122 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v129, *v129, *v131, *v129);
  v112(v122);
  v117 = *v131;
  v118 = *v129;
LABEL_66:
  v123 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v118, v118, v118, v117);
  return (v112)(v123);
}

uint64_t NANQualityOfService.update<A>(schedule:)(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (a2 == 5)
  {
    if ((*(a4 + 56))(a3, a4))
    {
      v7 = v6;
      v8 = 6;
      goto LABEL_7;
    }

    v9 = v6;
    v10 = 6;
  }

  else
  {
    if (a2 != 4)
    {
      return result;
    }

    if ((*(a4 + 56))(a3, a4))
    {
      v7 = v6;
      v8 = 0;
LABEL_7:

      return sub_100316058(v7, v8, a3, a4);
    }

    v9 = v6;
    v10 = 0;
  }

  return sub_1003169D0(v9, v10, a3, a4);
}

char *sub_10030E494(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100596330, &qword_1004B0808);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10030E5D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&unk_100597450, &qword_1004B16D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10030E6FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100596328, &qword_1004B0800);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10030E81C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_100596368, &qword_1004B0890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_100596370, &qword_1004B0898);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10030E98C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100596378, &unk_1004B08A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10030EAB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&qword_100596318, &unk_1004B07D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&unk_100595FB0, &unk_1004B01A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10030EBFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100596380, &qword_1004B08B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10030ECF0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&unk_100598760, &qword_1004B0928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AWDLTrafficRegistrationService(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10030EE18(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D600, &qword_1004B0920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

void *sub_10030EF58(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_10030F148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&qword_100595310, &unk_1004B07A0);
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
      Hasher._combine(_:)(byte_1004B0994[v20]);
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

void sub_10030F3E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&unk_100597410, &unk_1004B4D50);
  v37 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 6 * v20);
      v41 = *v21;
      v22 = v21[1];
      v23 = v21[3];
      v24 = v21[4];
      v39 = v21[5];
      v40 = v21[2];
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(v42, (v24 << 32) | (v39 << 40) | (v23 << 24) | (v40 << 16) | (v22 << 8) | v41);
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
      v16 = (*(v7 + 48) + 6 * v15);
      *v16 = v41;
      v16[1] = v22;
      v16[2] = v40;
      v16[3] = v23;
      v16[4] = v24;
      v16[5] = v39;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

void sub_10030F6F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&qword_100596338, &unk_1004B0810);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v44 = (v5 + 64);
    v45 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v42 = v3;
    v43 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v17 = (v11 - 1) & v11;
LABEL_15:
      v20 = v16 | (v8 << 6);
      v21 = v7;
      v46 = v17;
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 6 * v20);
      v47 = *v23;
      v24 = v23[1];
      v25 = v23[2];
      v26 = v23[3];
      v27 = v23[4];
      v28 = v23[5];
      v29 = (v22 + 24 * v20);
      if (v4)
      {
        v50 = *v29;
        v30 = *(v29 + 2);
      }

      else
      {
        v31 = *(v29 + 2);
        v48 = *v29;
        v49 = v31;
        sub_100012400(&v48, &v50, &qword_100599440, &qword_1004B3620);
        v50 = v48;
        v30 = v49;
      }

      v51 = v30;
      Hasher.init(_seed:)();
      v32 = v27;
      NANClusterChangeEvent.hash(into:)(&v48, (v27 << 32) | (v28 << 40) | (v26 << 24) | (v25 << 16) | (v24 << 8) | v47);
      v33 = Hasher._finalize()();
      v7 = v21;
      v34 = -1 << *(v21 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v12 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v12 + 8 * v36);
          if (v40 != -1)
          {
            v13 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v35) & ~*(v12 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v21 + 48) + 6 * v13);
      *v14 = v47;
      v14[1] = v24;
      v14[2] = v25;
      v14[3] = v26;
      v14[4] = v32;
      v14[5] = v28;
      v15 = *(v21 + 56) + 24 * v13;
      *v15 = v50;
      *(v15 + 16) = v51;
      ++*(v21 + 16);
      v5 = v45;
      v11 = v46;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v43)
      {
        break;
      }

      v19 = v44[v8];
      ++v18;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v17 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v41 = 1 << *(v5 + 32);
      if (v41 >= 64)
      {
        bzero(v44, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v41;
      }

      *(v5 + 16) = 0;
    }

    v3 = v42;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10030FAB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10005DC58(a3, a4);
  v39 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v4;
    v38 = v7;
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
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v40 = (v14 - 1) & v14;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 6 * v22);
      v43 = *v23;
      v24 = v23[1];
      v25 = v23[3];
      v26 = v23[4];
      v41 = v23[5];
      v42 = v23[2];
      v27 = *(*(v7 + 56) + 8 * v22);
      if ((v39 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(v44, (v26 << 32) | (v41 << 40) | (v25 << 24) | (v42 << 16) | (v24 << 8) | v43);
      v28 = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 6 * v17);
      *v18 = v43;
      v18[1] = v24;
      v18[2] = v42;
      v18[3] = v25;
      v18[4] = v26;
      v18[5] = v41;
      *(*(v9 + 56) + 8 * v17) = v27;
      ++*(v9 + 16);
      v7 = v38;
      v14 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v40 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_10030FDF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&unk_10059B230, &unk_1004B2400);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      v24 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100310060(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&qword_100595390, &qword_1004AF260);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
      v21 = *(*(v5 + 56) + 8 * v19);
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

void sub_1003102E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&unk_10059B100, &qword_1004B07B0);
  v38 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 80 * v21);
      if (v38)
      {
        v45 = v25[1];
        v46 = v25[2];
        v47 = v25[3];
        v48 = v25[4];
        v44 = *v25;
      }

      else
      {
        v39 = *v25;
        v26 = v25[4];
        v28 = v25[1];
        v27 = v25[2];
        v42 = v25[3];
        v43 = v26;
        v40 = v28;
        v41 = v27;

        sub_1002CE52C(&v39, &v44);
        v46 = v41;
        v47 = v42;
        v48 = v43;
        v44 = v39;
        v45 = v40;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 80 * v15);
      v17[1] = v45;
      v17[2] = v46;
      v17[3] = v47;
      v17[4] = v48;
      *v17 = v44;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100310664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&qword_1005962E8, &qword_1004B0748);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 8 * v21);
      v24 = *v23;
      v25 = *(v23 + 4);
      v26 = *(v23 + 5);
      v27 = (v22 + 24 * v21);
      v40 = *v27;
      v41 = *(v27 + 2);
      Hasher.init(_seed:)();
      Channel.hash(into:)(v39, (v25 << 32) | (v26 << 40) | v24);
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 8 * v15;
      *v16 = v24;
      *(v16 + 4) = v25;
      *(v16 + 5) = v26;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v40;
      *(v17 + 16) = v41;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v37)
    {
      v36 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100310940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_10005DC58(a3, a4);
  v43 = v8;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v47 = v12;
    v48 = v9;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v10;
    v44 = (v10 + 32);
    v22 = v14 + 64;
    v42 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v10 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v48);
        v45 = *(*(v13 + 56) + 16 * v27);
      }

      else
      {
        (*v40)(v47, v29, v48);
        v45 = *(*(v13 + 56) + 16 * v27);
      }

      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v10 = v41;
        v13 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v10 = v41;
      v13 = v42;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v44)((*(v15 + 48) + v46 * v23), v47, v48);
      *(*(v15 + 56) + 16 * v23) = v45;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v39;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

void sub_100310D18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&unk_10059B250, &unk_1004B08C0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v4;
    v8 = 0;
    v38 = v2;
    v39 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v40 = v5;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = (*(v5 + 48) + 6 * v19);
      v22 = v21[5];
      v23 = v21[4];
      v24 = v21[3];
      v25 = v21[2];
      v26 = v21[1];
      v27 = *v21;
      v42 = *(v20 + 8 * v19);
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(v43, (v22 << 40) | (v23 << 32) | (v24 << 24) | (v25 << 16) | (v26 << 8) | v27);
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v13 + 8 * v31);
          if (v35 != -1)
          {
            v14 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v7 + 48) + 6 * v14);
      *v15 = v27;
      v15[1] = v26;
      v15[2] = v25;
      v15[3] = v24;
      v15[4] = v23;
      v15[5] = v22;
      *(*(v7 + 56) + 8 * v14) = v42;
      ++*(v7 + 16);
      v5 = v40;
      v11 = v41;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v12)
      {
        break;
      }

      v18 = v39[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v37)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero(v39, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v39 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100311004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&qword_100596388, &qword_1004B08B8);
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

void sub_1003112FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10005DC58(a3, a4);
  v33 = v6;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_100311584(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v36 = *(type metadata accessor for NANPeer.Service(0) - 8);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10005DC58(&unk_10059B130, &unk_1004B0840);
  v37 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v3;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_1002E0034(v24, v6, type metadata accessor for NANPeer.Service);
      }

      else
      {
        sub_1003173B4(v24, v6, type metadata accessor for NANPeer.Service);
      }

      v25 = static Hasher._hash(seed:bytes:count:)();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      sub_1002E0034(v6, *(v9 + 56) + v23 * v17, type metadata accessor for NANPeer.Service);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1003118E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v35 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_10005DC58(&unk_1005952B0, &unk_1004AF1B0);
  v36 = v4;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v34 = v2;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(v35 + 72);
      v23 = *(v6 + 56) + v22 * v20;
      if (v36)
      {
        sub_1002E0034(v23, v37, type metadata accessor for NANAttribute);
      }

      else
      {
        sub_1003173B4(v23, v37, type metadata accessor for NANAttribute);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(byte_1004B0994[v21]);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      sub_1002E0034(v37, *(v8 + 56) + v22 * v16, type metadata accessor for NANAttribute);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v6 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v3 = v8;
}

void sub_100311C4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&qword_100595318, &qword_1004AF220);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v4;
    v36 = v5;
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
      v22 = (*(v5 + 48) + 8 * v20);
      v23 = *(v22 + 5);
      v24 = *(v22 + 4);
      v25 = *v22;
      v37 = *(v21 + v20);
      Hasher.init(_seed:)();
      Channel.hash(into:)(v38, (v23 << 40) | (v24 << 32) | v25);
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 8 * v15;
      *v16 = v25;
      *(v16 + 4) = v24;
      *(v16 + 5) = v23;
      *(*(v7 + 56) + v15) = v37;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100311F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v53 = a6;
  v9 = v6;
  v10 = a2;
  v48 = *(a3(0) - 8);
  __chkstk_darwin();
  v52 = &v46 - v11;
  v12 = *v6;
  sub_10005DC58(a4, a5);
  v49 = v10;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v46 = v6;
    v47 = v12;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 56);
      v30 = (*(v12 + 48) + 6 * v28);
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v34 = v30[3];
      v35 = v30[4];
      v54 = v30[5];
      v55 = v35;
      v36 = v29 + *(v48 + 72) * v28;
      v51 = *(v48 + 72);
      if (v49)
      {
        sub_1002E0034(v36, v52, v53);
      }

      else
      {
        sub_1003173B4(v36, v52, v53);
      }

      Hasher.init(_seed:)();
      v50 = v34;
      NANClusterChangeEvent.hash(into:)(v56, (v55 << 32) | (v54 << 40) | (v34 << 24) | (v33 << 16) | (v32 << 8) | v31);
      v37 = Hasher._finalize()();
      v38 = -1 << *(v14 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v21 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 6 * v22);
      *v23 = v31;
      v23[1] = v32;
      v23[2] = v33;
      v23[3] = v50;
      v24 = v54;
      v23[4] = v55;
      v23[5] = v24;
      sub_1002E0034(v52, *(v14 + 56) + v51 * v22, v53);
      ++*(v14 + 16);
      v12 = v47;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v12 + 32);
    v9 = v46;
    if (v45 >= 64)
    {
      bzero(v16, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v45;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v9 = v14;
}

void sub_100312304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v53 = a6;
  v9 = v6;
  v10 = a2;
  v49 = *(a3(0) - 8);
  __chkstk_darwin();
  v52 = &v46 - v11;
  v12 = *v6;
  sub_10005DC58(a4, a5);
  v50 = v10;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v47 = v6;
    v48 = v12;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v29 = v26 | (v15 << 6);
      v30 = *(v12 + 56);
      v31 = (*(v12 + 48) - v29 + 8 * v29);
      v32 = *v31;
      v33 = v31[1];
      v34 = v31[2];
      v57 = v31[3];
      v56 = v31[4];
      v35 = v31[5];
      v54 = v31[6];
      v55 = v35;
      v51 = *(v49 + 72);
      v36 = v30 + v51 * v29;
      if (v50)
      {
        sub_1002E0034(v36, v52, v53);
      }

      else
      {
        sub_1003173B4(v36, v52, v53);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v32);
      NANClusterChangeEvent.hash(into:)(v58, (v55 << 32) | (v54 << 40) | (v56 << 24) | (v57 << 16) | (v34 << 8) | v33);
      v37 = Hasher._finalize()();
      v38 = -1 << *(v14 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v21 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) - v22 + 8 * v22);
      *v23 = v32;
      v23[1] = v33;
      v23[2] = v34;
      v24 = v56;
      v23[3] = v57;
      v23[4] = v24;
      v23[5] = v55;
      v25 = v53;
      v23[6] = v54;
      sub_1002E0034(v52, *(v14 + 56) + v51 * v22, v25);
      ++*(v14 + 16);
      v12 = v48;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v9 = v47;
      goto LABEL_34;
    }

    v45 = 1 << *(v12 + 32);
    v9 = v47;
    if (v45 >= 64)
    {
      bzero(v16, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v45;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v9 = v14;
}

void sub_1003126B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&unk_10059B110, &qword_100480EA0);
  v39 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
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
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 6 * v21);
      v44 = *v22;
      v23 = v22[1];
      v24 = v22[3];
      v25 = v22[4];
      v42 = v22[5];
      v43 = v22[2];
      v26 = (*(v5 + 56) + 16 * v21);
      v27 = v26[1];
      v41 = *v26;
      if ((v39 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(v45, (v25 << 32) | (v42 << 40) | (v24 << 24) | (v43 << 16) | (v23 << 8) | v44);
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
      v16 = (*(v7 + 48) + 6 * v15);
      *v16 = v44;
      v16[1] = v23;
      v16[2] = v43;
      v16[3] = v24;
      v16[4] = v25;
      v16[5] = v42;
      v17 = (*(v7 + 56) + 16 * v15);
      v12 = v40;
      *v17 = v41;
      v17[1] = v27;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
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

void sub_1003129D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10005DC58(&qword_100596320, &unk_1004B4D60);
  v39 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_100029954((*(v9 + 56) + 40 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_10002B154(*(v9 + 56) + 40 * v23, v44);
      }

      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
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
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      sub_100029954(v44, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
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

void sub_100312DB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = *(sub_10005DC58(&qword_100597400, &unk_1004B4D20) - 8);
  __chkstk_darwin();
  v46 = &v40 - v5;
  v6 = *v2;
  sub_10005DC58(&qword_100596308, &unk_1004B0790);
  v43 = v4;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v40 = v2;
    v41 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = v19 | (v9 << 6);
      v23 = *(v6 + 56);
      v24 = (*(v6 + 48) + 6 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      v29 = v24[4];
      v47 = v24[5];
      v48 = v29;
      v30 = v23 + *(v42 + 72) * v22;
      v45 = *(v42 + 72);
      if (v43)
      {
        sub_1002DF868(v30, v46);
      }

      else
      {
        sub_100012400(v30, v46, &qword_100597400, &unk_1004B4D20);
      }

      Hasher.init(_seed:)();
      v44 = v28;
      NANClusterChangeEvent.hash(into:)(v49, (v48 << 32) | (v47 << 40) | (v28 << 24) | (v27 << 16) | (v26 << 8) | v25);
      v31 = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 6 * v16);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v27;
      v17[3] = v44;
      v18 = v47;
      v17[4] = v48;
      v17[5] = v18;
      sub_1002DF868(v46, *(v8 + 56) + v45 * v16);
      ++*(v8 + 16);
      v6 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v6 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v3 = v8;
}

void sub_10031315C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&unk_10059B220, &unk_1004B4DF0);
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

void sub_100313474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10005DC58(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v6;
    v34 = v5;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + v21);
      v24 = static Hasher._hash(seed:bytes:count:)();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
}

void sub_100313710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v57 = a6;
  v9 = v6;
  v10 = a2;
  v50 = *(a3(0) - 8);
  __chkstk_darwin();
  v56 = &v46 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  sub_10005DC58(a4, a5);
  v51 = v10;
  v16 = v15;
  v17 = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = v17;
  if (*(v15 + 16))
  {
    v55 = v12;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = v6;
    v47 = (v13 + 16);
    v48 = v15;
    v49 = v13;
    v53 = (v13 + 32);
    v25 = v17 + 64;
    v26 = v52;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v54 = *(v49 + 72);
      v33 = v32 + v54 * v31;
      if (v51)
      {
        (*v53)(v26, v33, v55);
        v34 = *(v16 + 56);
        v35 = *(v50 + 72);
        sub_1002E0034(v34 + v35 * v31, v56, v57);
      }

      else
      {
        (*v47)(v26, v33, v55);
        v36 = *(v16 + 56);
        v35 = *(v50 + 72);
        sub_1003173B4(v36 + v35 * v31, v56, v57);
      }

      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v38 = -1 << *(v18 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v25 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v26 = v52;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v25 + 8 * v40);
          if (v44 != -1)
          {
            v27 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v39) & ~*(v25 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v26 = v52;
LABEL_7:
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v53)((*(v18 + 48) + v54 * v27), v26, v55);
      sub_1002E0034(v56, *(v18 + 56) + v35 * v27, v57);
      ++*(v18 + 16);
      v16 = v48;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v16 + 32);
    v9 = v46;
    if (v45 >= 64)
    {
      bzero(v20, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v45;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
}

void sub_100313BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_10005DC58(a3, a4);
  v44 = v8;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

void sub_100313F88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v36 = *(type metadata accessor for BrowseEndpoints(0) - 8);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10005DC58(qword_1005953C8, &qword_1004B4E10);
  v37 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v3;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_1002E0034(v24, v6, type metadata accessor for BrowseEndpoints);
      }

      else
      {
        sub_1003173B4(v24, v6, type metadata accessor for BrowseEndpoints);
      }

      v25 = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      sub_1002E0034(v6, *(v9 + 56) + v23 * v17, type metadata accessor for BrowseEndpoints);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_100314320(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&unk_10059B200, &unk_1004B0880);
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = static Hasher._hash(seed:_:)();
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
      *(*(v7 + 48) + 8 * v15) = v20;
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

void sub_1003145B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10005DC58(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = static Hasher._hash(seed:_:)();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_100314818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10005DC58(&unk_10059B1D0, &unk_1004B0870);
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

      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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

void sub_100314BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&unk_1005974F0, &qword_1004B0838);
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v38 = *(v22 + 16);
      v25 = *(v22 + 17);
      v37 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v25);
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
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v38;
      *(v16 + 17) = v25;
      *(*(v7 + 56) + 8 * v15) = v37;
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

Swift::Int sub_100314F10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100315F1C(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v4;
        v12 = v9;
        do
        {
          v13 = *(v11 + 2);
          if (v13 >= *v11)
          {
            break;
          }

          v14 = *(v11 + 6);
          *(v11 + 1) = *v11;
          *v11 = v13;
          *(v11 + 2) = v14;
          v11 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v4 += 8;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v16[0] = v8 + 4;
    v16[1] = v7;
    sub_100315054(v16, v17, v18, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100315054(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_10016AD7C(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1000DECA4((*a3 + 8 * *v83), (*a3 + 8 * *v85), (*a3 + 8 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_117;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_118;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_119;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v14 >= *(v14 - 2);
        ++v16;
        v14 += 2;
        if ((((v10 < v13) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 8 * v7 - 8;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = *(v22 + v11);
            v25 = *(v22 + v11 + 4);
            v26 = *(v22 + v11 + 5);
            if (v11 != v18 || v23 >= v22 + v18 + 8)
            {
              *v23 = *(v22 + v18);
            }

            v21 = v22 + v18;
            *v21 = v24;
            *(v21 + 4) = v25;
            *(v21 + 5) = v26;
          }

          ++v20;
          v18 -= 8;
          v11 += 8;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_10011707C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_130;
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
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_60:
          if (v42)
          {
            goto LABEL_107;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_109;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_114;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v36 < 2)
        {
          goto LABEL_115;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_111;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v36)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_1000DECA4((*a3 + 8 * *v76), (*a3 + 8 * *v78), (*a3 + 8 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_104;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_105;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_106;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_108;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_110;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = v9 - v7;
  v29 = *a3 + 8 * v7;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *v30;
    if (*v30 >= *(v30 - 8))
    {
LABEL_32:
      ++v7;
      --v28;
      v29 += 8;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v30 + 4);
    *v30 = *(v30 - 8);
    *(v30 - 8) = v32;
    *(v30 - 4) = v33;
    v30 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

void sub_1003155FC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v39 = type metadata accessor for UUID();
  v41 = *(v39 - 8);
  __chkstk_darwin();
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v38 = &v32 - v10;
  v11 = a4 + 56;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v30 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v11;
    *(a1 + 16) = ~v12;
    *(a1 + 24) = v30;
    *(a1 + 32) = v14;
    return;
  }

  if (!a3)
  {
    v30 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = -1 << *(a4 + 32);
    v33 = a1;
    v15 = 0;
    v16 = (63 - v12) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    a1 = 1;
    v36 = a4 + 56;
    v37 = a3;
    v17 = v38;
    while (v14)
    {
      v43 = a2;
LABEL_15:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v42 = v15;
      v21 = a4;
      v22 = *(a4 + 48);
      v23 = v40;
      v24 = v41;
      v25 = *(v41 + 72);
      v26 = v39;
      (*(v41 + 16))(v40, v22 + v25 * (v20 | (v15 << 6)), v39, v9);
      v27 = *(v24 + 32);
      v27(v17, v23, v26);
      v28 = v43;
      v27(v43, v17, v26);
      if (a1 == v37)
      {
        v12 = v32;
        a1 = v33;
        a4 = v21;
        v30 = v42;
        v11 = v36;
        goto LABEL_25;
      }

      a2 = &v28[v25];
      v29 = __OFADD__(a1++, 1);
      a4 = v21;
      v15 = v42;
      v11 = v36;
      if (v29)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v18 = v15;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v43 = a2;
        v15 = v19;
        goto LABEL_15;
      }
    }

    v14 = 0;
    if (v16 <= v15 + 1)
    {
      v31 = v15 + 1;
    }

    else
    {
      v31 = v16;
    }

    v30 = v31 - 1;
    v12 = v32;
    a1 = v33;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1003158A0(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = a4;
      v16 = *(a4 + 48) + 56 * (__clz(__rbit64(v8)) | (v10 << 6));
      v8 &= v8 - 1;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      v20 = *(v16 + 48);
      v21 = *(v16 + 32);
      *v9 = *v16;
      *(v9 + 8) = v17;
      *(v9 + 16) = v18;
      *(v9 + 24) = v19;
      v26 = v21;
      *(v9 + 32) = v21;
      *(v9 + 48) = v20;
      if (v12 == v25)
      {
        sub_10000AB0C(v17, v18);
        sub_10005D67C(v19, v26);

        a4 = v15;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 56;
      sub_10000AB0C(v17, v18);
      sub_10005D67C(v19, v26);

      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v15;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100315A68(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
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
      v14 = *(a4 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v7))));
      v15 = *v14;
      LOWORD(v14) = *(v14 + 4);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 4) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 8;
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
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100315B74(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_100315CCC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

void *sub_100315DC8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL sub_100315FA0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PriorityRadioConstraint(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((static RadioResources.SymbolicChannel.__derived_enum_equals(_:_:)(*(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8), *(a2 + *(v4 + 24)), *(a2 + *(v4 + 24) + 8)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = (a2 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];

  return static TimeBitmap.__derived_struct_equals(_:_:)(v7, v8, v9, v11, v12, v13);
}

uint64_t sub_100316058(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v126 = a2;
  v148 = type metadata accessor for Logger();
  v145 = *(v148 - 8);
  v7 = __chkstk_darwin();
  v144 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 64);
  v146 = a1;
  v147 = a3;
  v128 = a4 + 64;
  v127 = v9;
  v10 = (v9)(a3, a4, v7);
  v11 = *(v10 + 16);
  v129 = a4;
  if (v11)
  {
    v149 = _swiftEmptyArrayStorage;
    v12 = v10;
    sub_100027CF0(0, v11, 0);
    v13 = v12;
    v14 = 0;
    v15 = v149;
    v16 = v149[2];
    v17 = v16;
    do
    {
      v18 = *(v13 + v14 + 32);
      v19 = *(v13 + v14 + 36);
      v20 = *(v13 + v14 + 37);
      v149 = v15;
      v21 = v15[3];
      v22 = v16 + 1;
      if (v16 >= v21 >> 1)
      {
        sub_100027CF0((v21 > 1), v16 + 1, 1);
        v13 = v12;
        v15 = v149;
      }

      v15[2] = v22;
      v23 = &v15[v17 + v14 / 8];
      *(v23 + 8) = v18;
      *(v23 + 36) = v19;
      *(v23 + 37) = v20;
      v14 += 8;
      v16 = v22;
      --v11;
    }

    while (v11);
    v143 = v15;

    a4 = v129;
  }

  else
  {

    v143 = _swiftEmptyArrayStorage;
  }

  v24 = v127(v147, a4);
  v25 = *(v24 + 16);
  v142 = v24;
  if (v25)
  {
    v26 = (v24 + 39);
    v27 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v26 - 1) == 1)
      {
        v31 = *(v26 - 7);
        v32 = *(v26 - 3);
        v33 = *(v26 - 2);
        v34 = *v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v149 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000C06E4(0, v27[2] + 1, 1);
          v27 = v149;
        }

        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          sub_1000C06E4((v28 > 1), v29 + 1, 1);
          v27 = v149;
        }

        v27[2] = v29 + 1;
        v30 = &v27[v29];
        *(v30 + 8) = v31;
        *(v30 + 36) = v32;
        *(v30 + 37) = v33;
        *(v30 + 38) = 1;
        *(v30 + 39) = v34;
      }

      v26 += 8;
      --v25;
    }

    while (v25);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  v141 = v27[2];

  v36 = v127(v147, v129);
  v37 = *(v36 + 16);
  v142 = v36;
  if (v37)
  {
    v38 = (v36 + 39);
    v39 = _swiftEmptyArrayStorage;
    do
    {
      v43 = *(v38 - 3);
      if (v43 >= 2)
      {
        v44 = *(v38 - 7);
        v45 = *(v38 - 2);
        v46 = *(v38 - 1);
        v47 = *v38;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v149 = v39;
        if ((v48 & 1) == 0)
        {
          sub_1000C06E4(0, v39[2] + 1, 1);
          v39 = v149;
        }

        v41 = v39[2];
        v40 = v39[3];
        if (v41 >= v40 >> 1)
        {
          sub_1000C06E4((v40 > 1), v41 + 1, 1);
          v39 = v149;
        }

        v39[2] = v41 + 1;
        v42 = &v39[v41];
        *(v42 + 8) = v44;
        *(v42 + 36) = v43;
        *(v42 + 37) = v45;
        *(v42 + 38) = v46;
        *(v42 + 39) = v47;
      }

      v38 += 8;
      --v37;
    }

    while (v37);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
  }

  v132 = v39[2];

  v49 = v144;
  Logger.init(subsystem:category:)();

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v149 = v53;
    *v52 = 136315138;
    v54 = Array.description.getter();
    v56 = v55;

    v57 = sub_100002320(v54, v56, &v149);

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v50, v51, "Configuring SDB realtime schedule for %s", v52, 0xCu);
    sub_100002A00(v53);
  }

  else
  {
  }

  (*(v145 + 8))(v49, v148);
  v58 = v129;
  result = (*(v129 + 40))(v147, v129);
  v131 = *(result + 16);
  if (!v131)
  {
  }

  v60 = 0;
  v124 = v141 == 1;
  v130 = result + 32;
  v123 = v58 + 24;
  v125 = result;
  while (v60 < *(result + 16))
  {
    v84 = *(v130 + v60);
    if (v132)
    {
      v85 = v84 == 1;
    }

    else
    {
      v85 = 0;
    }

    v86 = v85;
    if (*(v130 + v60))
    {
      if (v84 != 1)
      {
        goto LABEL_35;
      }

      LODWORD(v143) = v86;
      v145 = v60;
      v87 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
      v88 = *v87;
      v141 = v87[1];
      v142 = v88;
      v89 = v87[2];
      v90 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v91 = *v90;
      v92 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v93 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v91, *v92, *v90, *v90);
      v139 = v94;
      v140 = v93;
      v138 = v95;
      v96 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v92, *v90, *v90, *v90);
      v134 = v98;
      v135 = v97;
      v136 = 1;
      v137 = v96;
    }

    else
    {
      LODWORD(v143) = v86;
      v145 = v60;
      v99 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
      v100 = *v99;
      v141 = v99[1];
      v142 = v100;
      v89 = v99[2];
      v101 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v102 = *v101;
      v103 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v104 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v102, *v103, *v103, *v103);
      v139 = v105;
      v140 = v104;
      v138 = v106;
      v107 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v103, *v101, *v103, *v103);
      v136 = 0;
      v137 = v107;
      v134 = v109;
      v135 = v108;
    }

    v110 = v127(v147, v58);
    v111 = *(v110 + 16);
    LODWORD(v144) = v84;
    v133 = v110;
    if (v111)
    {
      if (v84)
      {
        v112 = 16;
      }

      else
      {
        v112 = 4;
      }

      v113 = (v110 + 39);
      v61 = _swiftEmptyArrayStorage;
      LODWORD(v148) = v112;
      while (1)
      {
        v117 = *(v113 - 7);
        v118 = *(v113 - 3);
        v119 = *(v113 - 2);
        v120 = *(v113 - 1);
        v121 = *v113;
        if (*(v113 - 3))
        {
          if (v118 == 1 && v112 == 16)
          {
LABEL_61:
            v122 = swift_isUniquelyReferenced_nonNull_native();
            v149 = v61;
            if ((v122 & 1) == 0)
            {
              sub_1000C06E4(0, v61[2] + 1, 1);
              v61 = v149;
            }

            v115 = v61[2];
            v114 = v61[3];
            if (v115 >= v114 >> 1)
            {
              sub_1000C06E4((v114 > 1), v115 + 1, 1);
              v61 = v149;
            }

            v61[2] = v115 + 1;
            v116 = &v61[v115];
            *(v116 + 8) = v117;
            *(v116 + 36) = v118;
            *(v116 + 37) = v119;
            *(v116 + 38) = v120;
            *(v116 + 39) = v121;
            v112 = v148;
          }
        }

        else if (v112 == 4)
        {
          goto LABEL_61;
        }

        v113 += 8;
        if (!--v111)
        {
          goto LABEL_34;
        }
      }
    }

    v61 = _swiftEmptyArrayStorage;
LABEL_34:

    v62 = v138;
    v63 = v134;
    v64 = v61;
    v65 = v134 >> 40;
    v66 = HIWORD(v134);
    v67 = HIBYTE(v134);
    v68 = __chkstk_darwin();
    *(&v123 - 104) = v143;
    *(&v123 - 85) = v144;
    v69 = v141;
    *(&v123 - 10) = v142;
    *(&v123 - 9) = v69;
    v70 = v139;
    *(&v123 - 7) = v140;
    *(&v123 - 6) = v70;
    *(&v123 - 40) = v62;
    *(&v123 - 39) = v71;
    *(&v123 - 38) = v72;
    *(&v123 - 37) = v73;
    *(&v123 - 36) = v74;
    *(&v123 - 35) = v75;
    *(&v123 - 34) = v76;
    *(&v123 - 33) = v77;
    v78 = v136;
    v79 = v135;
    *(&v123 - 4) = v137;
    *(&v123 - 3) = v79;
    *(&v123 - 16) = v63;
    *(&v123 - 15) = v80;
    *(&v123 - 14) = v81;
    *(&v123 - 13) = v82;
    *(&v123 - 12) = v83;
    *(&v123 - 11) = v65;
    *(&v123 - 10) = v66;
    *(&v123 - 9) = v67;
    v58 = v129;
    *(&v123 - 16) = v147;
    *(&v123 - 15) = v58;
    *(&v123 - 14) = v64;
    *(&v123 - 12) = v78;
    *(&v123 - 88) = 2;
    *(&v123 - 87) = v126;
    *(&v123 - 86) = v124;
    *(&v123 - 8) = v89;
    (*(v58 + 24))(v68);

    result = v125;
    v60 = v145;
LABEL_35:
    if (++v60 == v131)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003169D0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v86 = a2;
  v7 = type metadata accessor for Logger();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = __chkstk_darwin();
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 64);
  v89 = a1;
  v90 = a3;
  v91 = a4;
  v87 = v10;
  v88 = a4 + 64;
  v11 = (v10)(a3, a4, v8);
  v12 = *(v11 + 16);
  if (v12)
  {
    v92 = _swiftEmptyArrayStorage;
    v13 = v11;
    sub_100027CF0(0, v12, 0);
    v14 = v13;
    v15 = 0;
    v16 = v92;
    v17 = v92[2];
    v18 = v17;
    do
    {
      v19 = *(v14 + v15 + 32);
      v20 = *(v14 + v15 + 36);
      v21 = *(v14 + v15 + 37);
      v92 = v16;
      v22 = v16[3];
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        sub_100027CF0((v22 > 1), v17 + 1, 1);
        v14 = v13;
        v16 = v92;
      }

      v16[2] = v23;
      v24 = &v16[v18 + v15 / 8];
      *(v24 + 8) = v19;
      *(v24 + 36) = v20;
      *(v24 + 37) = v21;
      v15 += 8;
      v17 = v23;
      --v12;
    }

    while (v12);
    v82 = v16;
  }

  else
  {

    v82 = _swiftEmptyArrayStorage;
  }

  v25 = v87(v90, v91);
  v26 = *(v25 + 16);
  v81 = v25;
  if (v26)
  {
    v27 = (v25 + 39);
    v28 = _swiftEmptyArrayStorage;
    do
    {
      v32 = *(v27 - 7);
      v33 = *(v27 - 3);
      v34 = *(v27 - 2);
      v35 = *(v27 - 1);
      v36 = *v27;
      if (Channel.isDFS.getter(v32))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000C06E4(0, v28[2] + 1, 1);
          v28 = v92;
        }

        v30 = v28[2];
        v29 = v28[3];
        if (v30 >= v29 >> 1)
        {
          sub_1000C06E4((v29 > 1), v30 + 1, 1);
          v28 = v92;
        }

        v28[2] = v30 + 1;
        v31 = &v28[v30];
        *(v31 + 8) = v32;
        *(v31 + 36) = v33;
        *(v31 + 37) = v34;
        *(v31 + 38) = v35;
        *(v31 + 39) = v36;
      }

      v27 += 8;
      --v26;
    }

    while (v26);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v81 = v28[2];

  v38 = v87(v90, v91);
  v39 = *(v38 + 16);
  v80 = v38;
  if (v39)
  {
    v40 = (v38 + 39);
    v41 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v40 - 1) == 1)
      {
        v45 = *(v40 - 7);
        v46 = *(v40 - 3);
        v47 = *(v40 - 2);
        v48 = *v40;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v92 = v41;
        if ((v49 & 1) == 0)
        {
          sub_1000C06E4(0, v41[2] + 1, 1);
          v41 = v92;
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          sub_1000C06E4((v42 > 1), v43 + 1, 1);
          v41 = v92;
        }

        v41[2] = v43 + 1;
        v44 = &v41[v43];
        *(v44 + 8) = v45;
        *(v44 + 36) = v46;
        *(v44 + 37) = v47;
        *(v44 + 38) = 1;
        *(v44 + 39) = v48;
      }

      v40 += 8;
      --v39;
    }

    while (v39);
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
  }

  v80 = v41[2];

  v50 = v87(v90, v91);
  v51 = *(v50 + 16);
  v88 = v50;
  if (v51)
  {
    v52 = (v50 + 39);
    v53 = _swiftEmptyArrayStorage;
    do
    {
      v57 = *(v52 - 3);
      if (v57 >= 2)
      {
        v58 = *(v52 - 7);
        v59 = *(v52 - 2);
        v60 = *(v52 - 1);
        v61 = *v52;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v92 = v53;
        if ((v62 & 1) == 0)
        {
          sub_1000C06E4(0, v53[2] + 1, 1);
          v53 = v92;
        }

        v55 = v53[2];
        v54 = v53[3];
        if (v55 >= v54 >> 1)
        {
          sub_1000C06E4((v54 > 1), v55 + 1, 1);
          v53 = v92;
        }

        v53[2] = v55 + 1;
        v56 = &v53[v55];
        *(v56 + 8) = v58;
        *(v56 + 36) = v57;
        *(v56 + 37) = v59;
        *(v56 + 38) = v60;
        *(v56 + 39) = v61;
      }

      v52 += 8;
      --v51;
    }

    while (v51);
  }

  v63 = v83;
  Logger.init(subsystem:category:)();
  v64 = v82;

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v92 = v68;
    *v67 = 136315138;
    v69 = Array.description.getter();
    v71 = sub_100002320(v69, v70, &v92);

    *(v67 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v65, v66, "Configuring non-SDB realtime schedule for %s", v67, 0xCu);
    sub_100002A00(v68);
  }

  (*(v84 + 8))(v63, v85);
  v72 = __chkstk_darwin();
  v73 = v91;
  *(&v79 - 4) = v90;
  *(&v79 - 3) = v73;
  *(&v79 - 2) = v64;
  *(&v79 - 8) = v74;
  *(&v79 - 7) = v75;
  *(&v79 - 6) = v76;
  *(&v79 - 5) = v77;
  (*(v73 + 24))(0, 2, sub_1003174C0, v72);
}

uint64_t sub_100317064(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PriorityRadioConstraint(uint64_t a1)
{
  result = qword_1005961D8;
  if (!qword_1005961D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003171B0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100317238(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_10031736C(uint64_t a1)
{
  swift_weakAssign();

  return sub_10030C964();
}

uint64_t sub_1003173B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_10031741C(uint64_t a1)
{
  swift_weakAssign();

  return sub_10030C528();
}

uint64_t sub_1003174DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100317524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100317594(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

double sub_10031771C()
{
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  return result;
}

Swift::Int sub_100317798(uint64_t a1)
{
  Hasher.init(_seed:)();
  AWDLPeer.Reachability.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

double sub_1003177E0(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      v8 = WiFiAddress.description.getter(*(a1 + 42) | (*(a1 + 44) << 16));
      v10 = sub_100002320(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Marking peer %s as unrecoverable", v6, 0xCu);
      sub_100002A00(v7);
    }

    v11 = swift_unownedRetainStrong();
    sub_10040CAE8(v11, v12, v13, v14);

    sub_10033A838(*(v2 + qword_1005963B8), *(a1 + 42) | (*(a1 + 44) << 16), 1);
  }

  return result;
}

void sub_100317984(unsigned __int8 *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v47 - v7;
  type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  __chkstk_darwin();
  v12 = &v47 - v11;
  if (a1)
  {
    v54 = a1;
    v13 = *(v1 + qword_10059B990);
    v50 = v9;
    v51 = v10;
    swift_unownedRetainStrong();
    v14 = *(*v13 + 96);
    swift_beginAccess();
    v52 = v1;
    v53 = v12;
    v15 = *(v4 + 16);
    v15(v8, v13 + v14, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    LODWORD(v49) = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v17 = *(v4 + 8);
    v17(v8, AssociatedTypeWitness);
    swift_unownedRetainStrong();
    v18 = *(*v13 + 96);
    swift_beginAccess();
    v15(v6, v13 + v18, AssociatedTypeWitness);
    v19 = v52;
    v20 = v53;

    LOBYTE(v18) = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v17(v6, AssociatedTypeWitness);
    v21 = *NANAttribute.CustomDeviceInformation.Flags.linkConditionFeedbackRequest.unsafeMutableAddressor();
    NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v20 + *(v50 + 28));
    *v20 = v49;
    *(v20 + 1) = v18;
    *(v20 + 4) = v21;
    v22 = v51;
    sub_10031CFB4(v20, v51, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v23 = NANActionFrame.init(customDeviceInformation:)(v22);
    v25 = v24;
    v26 = v23;
    v27 = swift_unownedRetainStrong();
    sub_10040DD50(v27, v28, v29, v30);
    v31 = v54;

    v56[0] = 0;
    v56[1] = v26;
    v56[2] = v25;
    v56[3] = 0;
    v57 = 2;
    v32 = v31[44];
    v33 = v31[45];
    v34 = v31[46];
    v35 = v31[47];
    v36 = *(v19 + qword_1005963E0) | (*(v19 + qword_1005963E0 + 4) << 32);
    v37 = v31[42] | (v31[43] << 8);
    v50 = v34;
    v51 = v33;
    v48 = v37;
    v49 = v35;
    if ((v36 & 0xFF00000000) == 0x300000000)
    {
      sub_1003A8260(v56, v37 | (v32 << 16) | (v33 << 24) | (v34 << 32) | (v35 << 40), 1, 0, 0, 0, 1, 1, 3000, NANBitmap.Channel.operatingClass.getter, 0);
    }

    else
    {
      sub_1003A8260(v56, v37 | (v32 << 16) | (v33 << 24) | (v34 << 32) | (v35 << 40), 1, 0, 0, 0, 1, HIDWORD(v36), 3000, NANBitmap.Channel.operatingClass.getter, 0);
    }

    sub_100048C4C(v26, v25, 0);

    v38 = *&v31[OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter];

    if (v38 >= 3)
    {
      v39 = sub_10031D088;
    }

    else
    {
      v39 = sub_10031D08C;
    }

    sub_100334458(10000, v39, v19);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55 = v43;
      *v42 = 136315138;
      v44 = WiFiAddress.description.getter(v48 | (v32 << 16) | (v51 << 24) | (v50 << 32) | (v49 << 40));
      v46 = sub_100002320(v44, v45, &v55);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Finish sending link condition request for %s of peers", v42, 0xCu);
      sub_100002A00(v43);
    }

    else
    {
    }

    sub_10031D01C(v20, type metadata accessor for NANAttribute.CustomDeviceInformation);
  }
}

double sub_100318138(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      v8 = WiFiAddress.description.getter(*(a1 + 42) | (*(a1 + 44) << 16));
      v10 = sub_100002320(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "No response from peer %s marking it as inactive", v6, 0xCu);
      sub_100002A00(v7);
    }

    *(a1 + 51) = 0;
    sub_100333C24();
    v11 = swift_unownedRetainStrong();
    sub_10040CAE8(v11, v12, v13, v14);

    sub_10033A838(*(v2 + qword_1005963B8), *(a1 + 42) | (*(a1 + 44) << 16), 0);
  }

  return result;
}

void sub_1003182E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v5;
  v7 = v4;
  v62 = a4;
  v56 = a3;
  v59 = a3 & 0xFFFFFFFFFFFFLL;
  v10 = *(*v4 + 88);
  v11 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v49 - v14;
  v55 = qword_10059B988;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v17 = os_log_type_enabled(v15, v16);
  v53 = a1;
  v54 = a2;
  v52 = v13;
  v58 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v61[0] = v19;
    *v18 = 136315138;
    v20 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v22 = sub_100002320(v20, v21, v61);
    v6 = v5;

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "create GCR session with %s", v18, 0xCu);
    sub_100002A00(v19);
  }

  v23 = v60;
  v24 = AssociatedTypeWitness;
  if ((v59 & 0xFF00000000) == 0x300000000)
  {
    v50 = v11;
    v25 = v56 & 0xFFFFFFFFFFFFLL;
    v26 = v53;
  }

  else
  {
    v27 = *(v7 + qword_10059B990);
    swift_unownedRetainStrong();
    v28 = *(*v27 + 96);
    swift_beginAccess();
    v29 = v27 + v28;
    v30 = v51;
    (*(v23 + 16))(v51, v29, v24);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = v11;
    v25 = v56 & 0xFFFFFFFFFFFFLL;
    (*(AssociatedConformanceWitness + 144))(v56 & 0xFFFFFFFFFFFFLL, v24, AssociatedConformanceWitness);
    if (v6)
    {
      goto LABEL_8;
    }

    v50 = v32;
    (*(v23 + 8))(v30, v24);
    v26 = v53;
  }

  v33 = *(v7 + qword_10059B990);
  swift_unownedRetainStrong();
  v34 = *(*v33 + 96);
  swift_beginAccess();
  v30 = v52;
  (*(v23 + 16))(v52, v33 + v34, v24);

  v35 = swift_getAssociatedConformanceWitness();
  v36 = v54;
  (*(v35 + 432))(v26 & 0xFFFFFFFFFFFFLL, v54 & 0xFFFFFFFFFFFFLL, v25, v62 & 0x1FFFF, v24, v35);
  if (v6)
  {
LABEL_8:
    (*(v60 + 8))(v30, v24);
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "Error %@ while updating multicast MAC address)", v39, 0xCu);
      sub_100016290(v40, &qword_10058B780, &qword_100480AC0);
    }

    else
    {
    }

    goto LABEL_14;
  }

  (*(v23 + 8))(v30, v24);
  v42 = v7 + qword_1005963C8;
  *(v42 + 4) = WORD2(v26);
  *v42 = v26;
  *(v42 + 6) = 0;
  v43 = v7 + qword_1005963D0;
  *v43 = v36;
  *(v43 + 4) = WORD2(v36);
  *(v43 + 6) = 0;
  v44 = v7 + qword_1005963E0;
  v45 = v59;
  *(v44 + 4) = WORD2(v59);
  *v44 = v45;
  v46 = v7 + qword_1005963E8;
  v47 = BYTE2(v62);
  *v46 = v62;
  *(v46 + 2) = v47 & 1;
  v48 = &_mh_execute_header;
  if (!*(v7 + qword_1005963F8 + 4))
  {
    v48 = 0;
  }

  sub_100318900(v48 | (*(v7 + qword_1005963F8 + 3) << 24) | (*(v7 + qword_1005963F8 + 2) << 16) | (*(v7 + qword_1005963F8 + 1) << 8) | *(v7 + qword_1005963F8));
LABEL_14:
  swift_unownedRetainStrong();
  sub_10040DE10(160);
}

uint64_t sub_100318900(uint64_t a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = *(v2 + qword_10059B990);
  swift_unownedRetainStrong();
  v9 = *(*v8 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 464))(a1 & 0x1FFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = (*(v5 + 8))(v7, AssociatedTypeWitness);
  v12 = v2 + qword_1005963F8;
  *v12 = a1;
  *(v12 + 2) = BYTE2(a1);
  *(v12 + 3) = BYTE3(a1);
  *(v12 + 4) = BYTE4(a1) & 1;
  return result;
}

void sub_100318C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = qword_10059B9A0;
  swift_beginAccess();
  sub_10031CEF0(v2 + v6, v31);
  v7 = v32;
  sub_100016290(v31, &unk_100595C70, &qword_1004B0C00);
  if (v7)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = a2;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31[0] = v12;
      *v11 = 136315138;
      v13 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v15 = sub_100002320(v13, v14, v31);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Received Link condition feedback from %s", v11, 0xCu);
      sub_100002A00(v12);

      a2 = v10;
    }

    v16 = *(v3 + qword_10059B9A8);
    swift_beginAccess();
    v17 = *(v16 + 24);
    if (*(v17 + 16))
    {

      v18 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
      if (v19)
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        v21 = a2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);
        v22 = *(v21 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 52));
        if (v22)
        {
          if (*(v20 + 51))
          {
            sub_10031CEF0(v3 + v6, v31);
            if (v32)
            {
              sub_10002B154(v31, v28);
              sub_100016290(v31, &unk_100595C70, &qword_1004B0C00);
              v23 = v29;
              v24 = v30;
              sub_100029B34(v28, v29);
              (*(v24 + 48))(v20, v22, v23, v24);

              sub_100002A00(v28);
            }

            else
            {

              sub_100016290(v31, &unk_100595C70, &qword_1004B0C00);
            }
          }

          else
          {
            v25 = Logger.logObject.getter();
            v26 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              *v27 = 0;
              _os_log_impl(&_mh_execute_header, v25, v26, "Received link condition feedback from inactive peer. Discarding.......", v27, 2u);
            }
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

void sub_100318F44(unint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v43 - v8;
  v10 = *(v1 + qword_10059B9A8);
  swift_beginAccess();
  v11 = *(v10 + 24);
  if (*(v11 + 16))
  {

    v12 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
    if (v13)
    {
      v45 = v9;
      v46 = v7;
      v47 = AssociatedTypeWitness;
      v49 = a1 >> 40;
      v50 = v5;
      v14 = *(v11 + 56);
      v51 = v4;
      v15 = *(v14 + 8 * v12);

      sub_1003355D0(a1 & 0xFFFFFFFFFFFFLL);

      v48 = v15;
      v16 = *(v15 + 40);
      v58 = 0;
      v53 = a1;
      v54 = BYTE2(a1);
      v55 = BYTE3(a1);
      v56 = BYTE4(a1);
      v18 = v50;
      v17 = v51;
      v57 = v49;
      swift_beginAccess();
      type metadata accessor for NANDeviceLink(255, v18, v17, v19);
      sub_1002CAFC4();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      swift_endAccess();
      swift_beginAccess();
      sub_10037E4EC(v16);
      swift_endAccess();
      v20 = *(v2 + qword_1005963C0) - 1;
      if ((v20 & 0xFFFF0000) != 0)
      {
        __break(1u);
      }

      else
      {
        *(v2 + qword_1005963C0) = v20;
        v49 = qword_10059B988;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.info.getter();
        v23 = os_log_type_enabled(v21, v22);
        v25 = v45;
        v24 = v46;
        if (v23)
        {
          v26 = swift_slowAlloc();
          v44 = v16;
          v27 = v26;
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315394;
          v29 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
          v31 = sub_100002320(v29, v30, v52);

          *(v27 + 4) = v31;
          *(v27 + 12) = 512;
          *(v27 + 14) = v44;
          _os_log_impl(&_mh_execute_header, v21, v22, "Multicast peer %s removed with instance ID %hu", v27, 0x10u);
          sub_100002A00(v28);
        }

        v32 = v47;
        v33 = *(v2 + qword_10059B990);
        swift_unownedRetainStrong();
        v34 = *(*v33 + 96);
        swift_beginAccess();
        (*(v24 + 16))(v25, v33 + v34, v32);

        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(AssociatedConformanceWitness + 472))(a1 & 0xFFFFFFFFFFFFLL, v32, AssociatedConformanceWitness);
        (*(v24 + 8))(v25, v32);
      }

      return;
    }
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v52[0] = v39;
    *v38 = 136315138;
    v40 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v42 = sub_100002320(v40, v41, v52);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "No multicast peer found with %s", v38, 0xCu);
    sub_100002A00(v39);
  }
}

void sub_100319568(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v5 = *v2;
  v82 = type metadata accessor for DispatchTimeInterval();
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v84 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v83 = &v69[-v7];
  __chkstk_darwin();
  v91 = &v69[-v8];
  v9 = type metadata accessor for DispatchTime();
  v89 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = *(v5 + 88);
  v12 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  v86 = v12;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v69[-v18];
  v85 = qword_10059B9A8;
  v20 = *(v3 + qword_10059B9A8);
  swift_beginAccess();
  if (*(*(v20 + 24) + 16))
  {

    sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
    v22 = v21;

    if (v22)
    {
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "Cannot add multicast receiver since receiver is already added";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  v90 = a1;
  swift_beginAccess();
  v27 = sub_10005DC58(&qword_100596588, &qword_1004B0C08);
  IDPool.availableID()(v27, v92);
  swift_endAccess();
  if ((v92[0] & 0x10000) != 0)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Cannot add more multicast receiver because no more instance IDs were available";
      goto LABEL_8;
    }

LABEL_9:

    return;
  }

  v28 = LOWORD(v92[0]);
  sub_10031771C();
  v29 = Preferences.multicastRateAdapterHeartBeatInterval.getter(v16);
  (*(v17 + 8))(v19, v16);
  v30 = 3 * v29;
  if ((v30 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v31 = v90;
  v32 = v90 >> 40;
  v33 = HIDWORD(v90);
  v79 = v9;
  v34 = v90 >> 24;
  v35 = v90 >> 16;
  v36 = qword_10059B9A0;
  v77 = v11;
  v37 = v90 >> 8;
  v80 = v30;
  swift_beginAccess();
  v76 = v36;
  sub_10031CEF0(v3 + v36, &v101);
  v38 = v102;
  v78 = v102 != 0;
  sub_100016290(&v101, &unk_100595C70, &qword_1004B0C00);
  type metadata accessor for MulticastPeer(0);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 50) = 0;
  *(v39 + 56) = 0;
  *(v39 + 64) = 0;
  *(v39 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = 0;
  *(v39 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
  v70 = v28;
  *(v39 + 40) = v28;
  *(v39 + 42) = v31;
  v71 = v37;
  *(v39 + 43) = BYTE1(v31);
  v72 = v35;
  *(v39 + 44) = BYTE2(v31);
  v73 = v34;
  *(v39 + 45) = BYTE3(v31);
  v74 = v33;
  *(v39 + 46) = BYTE4(v31);
  v75 = v32;
  *(v39 + 47) = BYTE5(v31);
  type metadata accessor for P2PTimer(0);

  v40 = v77;
  variable initialization expression of AWDLPeer.lastUpdated();
  (v89)[4](v39 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified, v40, v79);
  v41 = v80;
  *(v39 + 48) = 0;
  *(v39 + 50) = 256;
  *(v39 + 24) = sub_10031D084;
  *(v39 + 32) = v3;
  *(v39 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatIntervalInSeconds) = v41;
  *(v39 + 49) = v78;
  if (v38)
  {
    v42 = 1000 * v41;
    if ((v42 & 0xFFFFFFFF00000000) != 0)
    {
LABEL_30:
      __break(1u);
      return;
    }

    *v91 = v42;
    v43 = enum case for DispatchTimeInterval.milliseconds(_:);
    v44 = *(v81 + 104);
    v45 = v82;
    v44();

    v89 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v83;
    (v44)(v83, enum case for DispatchTimeInterval.never(_:), v45);
    v48 = v84;
    *v84 = 100;
    (v44)(v48, v43, v45);
    swift_allocObject();
    v49 = v89;

    v50 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v91, v49, v47, v48, sub_10031D07C, v46);

    *(v39 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = v50;
  }

  v92[0] = v88;
  v51 = v90;
  v95 = v90;
  v96 = v71;
  v97 = v72;
  v98 = v73;
  v99 = v74;
  v100 = v75;
  swift_beginAccess();
  type metadata accessor for NANDeviceLink(255, v86, v87, v52);
  sub_1002CAFC4();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();

  sub_1003354D4(v39);

  v53 = v76;
  sub_10031CEF0(v3 + v76, &v101);
  if (v102)
  {
    sub_10002B154(&v101, v92);
    sub_100016290(&v101, &unk_100595C70, &qword_1004B0C00);
    v54 = v93;
    v55 = v94;
    sub_100029B34(v92, v93);
    (*(v55 + 16))(v39, v54, v55);
    sub_100002A00(v92);
  }

  else
  {
    sub_100016290(&v101, &unk_100595C70, &qword_1004B0C00);
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v101 = v59;
    *v58 = 136315394;
    v60 = WiFiAddress.description.getter(v51 & 0xFFFFFFFFFFFFLL);
    v62 = sub_100002320(v60, v61, &v101);

    *(v58 + 4) = v62;
    *(v58 + 12) = 512;
    *(v58 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v56, v57, "Multicast peer %s added with instance ID %hu", v58, 0x10u);
    sub_100002A00(v59);
  }

  v63 = *(v3 + qword_1005963C0) + 1;
  if ((v63 & 0x10000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v3 + qword_1005963C0) = v63;
  if (v63 == 1)
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Starting multicast rate adaptor", v66, 2u);
    }

    sub_10031CEF0(v3 + v53, &v101);
    if (v102)
    {
      sub_10002B154(&v101, v92);
      sub_100016290(&v101, &unk_100595C70, &qword_1004B0C00);
      v67 = v93;
      v68 = v94;
      sub_100029B34(v92, v93);
      (*(v68 + 32))(v67, v68);

      sub_100002A00(v92);
    }

    else
    {

      sub_100016290(&v101, &unk_100595C70, &qword_1004B0C00);
    }
  }

  else
  {
  }
}

BOOL sub_10031A0E8()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for NANDeviceLink(0, *(v1 + 80), *(v1 + 88), v2);
  sub_1002CAFC4();

  LOBYTE(v1) = Dictionary.isEmpty.getter();

  return (v1 & 1) == 0;
}

void sub_10031A1A4(uint64_t a1)
{
  v2 = qword_1005963D8;
  if ((*(v1 + qword_1005963D8) & 1) == 0)
  {
    v3 = v1;
    if (*(v1 + qword_1005963C8 + 6) & 1) != 0 || (v4 = (v1 + qword_1005963D0), (*(v1 + qword_1005963D0 + 6)))
    {
      *(v1 + qword_1005963D8) = 0;
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v5, "Multicast session not started, nothing to restore", v6, 2u);
      }
    }

    else
    {
      v7 = *(v1 + qword_1005963C8) | (*(v1 + qword_1005963C8 + 4) << 32);
      v8 = *(v4 + 2);
      v9 = *v4;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        osloga = v8;
        v12 = swift_slowAlloc();
        v20 = v9;
        v13 = swift_slowAlloc();
        v23[0] = v13;
        *v12 = 136315138;
        v14 = WiFiAddress.description.getter(v7 & 0xFFFFFFFFFFFFLL);
        v16 = sub_100002320(v14, v15, v23);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "restoring GCR session with %s", v12, 0xCu);
        sub_100002A00(v13);
        v9 = v20;

        v8 = osloga;
      }

      v17 = v9 | (v8 << 32);
      v18 = (v3 + qword_1005963E8);
      if (*(v3 + qword_1005963E8 + 2))
      {
        v19 = 1;
      }

      else
      {
        swift_unownedRetainStrong();
        sub_10040DE8C();

        v19 = *(v18 + 2);
      }

      sub_1003182E8(v7 & 0xFFFFFFFFFFFFLL, v17 & 0xFFFFFFFFFFFFLL, *(v3 + qword_1005963E0) | (*(v3 + qword_1005963E0 + 4) << 32), *v18 | (v19 << 16));
      *(v3 + v2) = 1;
    }
  }
}

uint64_t sub_10031A4D0()
{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v5 = v19 - v4 + 24;
  if (*(v1 + qword_1005963C8 + 6) & 1) != 0 || (*(v1 + qword_1005963D0 + 6))
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Multicast session not started, nothing to terminate", v8, 2u);
    }
  }

  else
  {
    v13 = *(v1 + qword_1005963D0) | (*(v1 + qword_1005963D0 + 4) << 32);
    v14 = *(v1 + qword_1005963C8) | (*(v1 + qword_1005963C8 + 4) << 32);
    v15 = *(v1 + qword_10059B990);
    swift_unownedRetainStrong();
    v16 = *(*v15 + 96);
    swift_beginAccess();
    (*(v3 + 16))(v5, v15 + v16, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 448))(v14, v13, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v3 + 8))(v5, AssociatedTypeWitness);
  }

  *(v1 + qword_1005963D8) = 0;
  v9 = qword_10059B9A0;
  swift_beginAccess();
  sub_10031CEF0(v1 + v9, v22);
  if (!v23)
  {
    return sub_100016290(v22, &unk_100595C70, &qword_1004B0C00);
  }

  sub_10002B154(v22, v19);
  sub_100016290(v22, &unk_100595C70, &qword_1004B0C00);
  v10 = v20;
  v11 = v21;
  sub_100029B34(v19, v20);
  (*(v11 + 40))(v10, v11);
  return sub_100002A00(v19);
}

uint64_t sub_10031A918(uint64_t a1)
{
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v22 - v5;
  __chkstk_darwin();
  v8 = &v22 - v7;
  sub_10031CFB4(a1, &v22 - v7, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v19 = qword_100596428;
    v20 = *(v1 + qword_100596428) | 2;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_7:
      sub_10031CFB4(a1, v4, type metadata accessor for DriverEvent);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136315138;
        v15 = DriverEvent.description.getter();
        v17 = v16;
        sub_10031D01C(v4, type metadata accessor for DriverEvent);
        v18 = sub_100002320(v15, v17, &v23);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "received an unexpected %s", v13, 0xCu);
        sub_100002A00(v14);
      }

      else
      {

        sub_10031D01C(v4, type metadata accessor for DriverEvent);
      }

      return sub_10031D01C(v8, type metadata accessor for DriverEvent);
    }

    EnumCaseMultiPayload = sub_10031CFB4(v8, v6, type metadata accessor for DriverEvent);
    v10 = *v6;
    if (v10 == 2)
    {
LABEL_6:
      *(v1 + qword_100596428) = 0;
      *(v1 + qword_1005963D8) = 0;
      return sub_10031D01C(v8, type metadata accessor for DriverEvent);
    }

    if (v10 != 1)
    {
      if (!*v6)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    v19 = qword_100596428;
    v20 = *(v1 + qword_100596428) | 1;
  }

  *(v1 + v19) = v20;
  if (v20 == 3)
  {
    sub_10031A1A4(EnumCaseMultiPayload);
  }

  return sub_10031D01C(v8, type metadata accessor for DriverEvent);
}

void sub_10031AC04(unsigned int *a1)
{
  v3 = *v1;
  v176 = *(*v1 + 88);
  v175 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v7 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v174 = &v153 - v8;
  v9 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  v11 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v153 - v12;
  type metadata accessor for DispatchTime();
  __chkstk_darwin();
  __chkstk_darwin();
  v18 = *a1 | (*(a1 + 2) << 32);
  if ((v18 & 0xFF00000000) == 0x300000000)
  {
    return;
  }

  v19 = a1;
  v20 = a1[6];
  if (!v20)
  {
    return;
  }

  v21 = *(a1 + 15);
  v22 = *(v21 + 16);
  if (!v22)
  {
    return;
  }

  v23 = HIDWORD(v18);
  v24.value = *(v19 + 13);
  v25.index = *(v19 + 14);
  v26 = *(v1 + qword_1005963E0) | (*(v1 + qword_1005963E0 + 4) << 32);
  if ((v26 & 0xFF00000000) == 0x300000000)
  {
    if (v23 != 1)
    {
      return;
    }
  }

  else if (((0x801004u >> (8 * v23)) & 0xFFC) != ((0x801004u >> ((v26 >> 29) & 0xF8)) & 0xFFC))
  {
    return;
  }

  v27 = 100 * v19[7];
  if ((v27 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v27) = v20 >> 22;
    if (v20 >> 22)
    {
      LODWORD(v172) = 0;
      goto LABEL_16;
    }

    LODWORD(v172) = 0;
  }

  else
  {
    LODWORD(v172) = 0;
    if (v20 >> 22)
    {
      goto LABEL_16;
    }
  }

  if (v20 << 10)
  {
    v28 = v27 / (v20 << 10);
    if (v28 > 0xFF)
    {
      v28 = 0;
    }

    LODWORD(v172) = v28;
  }

LABEL_16:
  v29 = 100 * v19[8];
  if ((v29 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v29) = v20 >> 22;
    if (v20 >> 22)
    {
      v171 = 0;
      goto LABEL_24;
    }

    v171 = 0;
  }

  else
  {
    v171 = 0;
    if (v20 >> 22)
    {
      goto LABEL_24;
    }
  }

  if (v20 << 10)
  {
    v30 = v29 / (v20 << 10);
    if (v30 > 0xFF)
    {
      v30 = 0;
    }

    v171 = v30;
  }

LABEL_24:
  v31 = 100 * v19[9];
  if ((v31 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v31) = v20 >> 22;
    if (v20 >> 22)
    {
      LODWORD(v170) = 0;
      goto LABEL_32;
    }

    LODWORD(v170) = 0;
  }

  else
  {
    LODWORD(v170) = 0;
    if (v20 >> 22)
    {
      goto LABEL_32;
    }
  }

  if (v20 << 10)
  {
    v32 = v31 / (v20 << 10);
    if (v32 > 0xFF)
    {
      v32 = 0;
    }

    LODWORD(v170) = v32;
  }

LABEL_32:
  v33 = 100 * v19[10];
  v173 = v1;
  v162 = v13;
  v161 = v11;
  v160 = AssociatedTypeWitness;
  v159 = v5;
  v158 = v7;
  v154 = qword_1005963E0;
  v157 = v9;
  v166 = v16;
  v165 = v17;
  v164 = v14;
  v163 = &v153 - v15;
  v167 = v19;
  if ((v33 & 0xFFFFFFFF00000000) != 0)
  {
    LODWORD(v33) = v20 >> 22;
    if (!(v20 >> 22))
    {
      LODWORD(v169) = 0;
      goto LABEL_36;
    }

    LODWORD(v169) = 0;
  }

  else
  {
    LODWORD(v169) = 0;
    if (!(v20 >> 22))
    {
LABEL_36:
      v34 = v20 << 10;
      if (v34)
      {
        v35 = v33 / v34;
        if (v35 > 0xFF)
        {
          v35 = 0;
        }

        LODWORD(v169) = v35;
      }
    }
  }

  index = v25.index;
  v187 = NANMulticastTxStats.init(tsf:dwIndex:)(v24, v25);
  rawValue = v187.txStats._rawValue;
  v156 = v187.dwIndex.index;
  value = v187.tsf.value;
  v37 = 0;
  v38 = (v21 + 60);
  while (1)
  {
    v41 = *(v38 - 2);
    v40 = *(v38 - 1);
    v42 = *v38;
    if (*(rawValue + 16))
    {
      sub_10007CCC8(*v38);
      if (v43)
      {
        break;
      }
    }

    LODWORD(v178) = v37;
    v179 = v22;
    LODWORD(v177) = v40;
    v53 = 256;
    NANMulticastStatsPerMCS.init(packets:MPDU:snr:)(&v186, v40, v41, v53);
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v41 = v60;
    v61 = rawValue;
    rawValue = swift_isUniquelyReferenced_nonNull_native();
    v180 = v61;
    v22 = sub_10007CCC8(v42);
    v63 = v61[2];
    v64 = (v62 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v66 = v62;
    if (v61[3] >= v65)
    {
      if ((rawValue & 1) == 0)
      {
        sub_100196294();
      }
    }

    else
    {
      sub_10018E770(v65, rawValue);
      v67 = sub_10007CCC8(v42);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_118;
      }

      v22 = v67;
    }

    rawValue = v180;
    if (v66)
    {
      v39 = v180[7] + 32 * v22;
      *v39 = v55;
      *(v39 + 8) = v57;
      *(v39 + 16) = v59;
      *(v39 + 24) = v41 & 1;
    }

    else
    {
      v180[(v22 >> 6) + 8] |= 1 << v22;
      *(*(rawValue + 48) + v22) = v42;
      v69 = *(rawValue + 56) + 32 * v22;
      *v69 = v55;
      *(v69 + 8) = v57;
      *(v69 + 16) = v59;
      *(v69 + 24) = v41 & 1;
      v70 = *(rawValue + 16);
      v49 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v49)
      {
        goto LABEL_93;
      }

      *(rawValue + 16) = v71;
    }

    v22 = v179;
    v37 = v178;
    v40 = v177;
LABEL_43:
    v37 += v40;
    v38 += 64;
    if (!--v22)
    {
      goto LABEL_66;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v185 = rawValue;
  v45 = sub_10007CCC8(v42);
  v47 = *(rawValue + 16);
  v48 = (v46 & 1) == 0;
  v49 = __OFADD__(v47, v48);
  v50 = v47 + v48;
  if (v49)
  {
    goto LABEL_94;
  }

  v51 = v46;
  if (*(rawValue + 24) < v50)
  {
    sub_10018E770(v50, isUniquelyReferenced_nonNull_native);
    v45 = sub_10007CCC8(v42);
    if ((v51 & 1) != (v52 & 1))
    {
      goto LABEL_118;
    }

LABEL_60:
    if ((v51 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_60;
  }

  v83 = v45;
  sub_100196294();
  v45 = v83;
  if (v51)
  {
LABEL_61:
    rawValue = v185;
    v72 = v45;
    v73 = 32 * v45;
    v74 = *(v185 + 56) + 32 * v45;
    v75 = *v74;
    v76 = *(v74 + 8);
    v77 = *(v74 + 16);
    LOBYTE(v74) = *(v74 + 24);
    v180 = v75;
    v181 = v76;
    v182 = v77;
    LOWORD(v183) = v74;
    v78 = 256;
    NANMulticastStatsPerMCS.addValues(packets:MPDU:snr:)(v40, v41, v78);
    if ((v183 & 0x100) != 0)
    {
      sub_1004691DC(v72, rawValue);
    }

    else
    {
      v79 = v183;
      v80 = v182;
      v81 = v181;
      v82 = *(rawValue + 56) + v73;
      *v82 = v180;
      *(v82 + 8) = v81;
      *(v82 + 16) = v80;
      *(v82 + 24) = v79 & 1;
    }

    goto LABEL_43;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  v179 = rawValue;
  v41 = v173;
  rawValue = v173 + qword_10059B9B0;
  *rawValue = 0;
  v42 = rawValue + 4;
  *(rawValue + 4) += v37;
  *(rawValue + 12) = v172;
  *(rawValue + 13) = v171;
  *(rawValue + 14) = v170;
  *(rawValue + 15) = v169;
  if ((index | 8) != 8)
  {
    goto LABEL_104;
  }

  swift_retain_n();
  v84 = v167;
  sub_1001851D8(v167, &v180);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  sub_10031CF60(v84);
  if (!os_log_type_enabled(v85, v86))
  {

    goto LABEL_103;
  }

  v171 = v86;
  v172 = v85;
  v87 = swift_slowAlloc();
  v170 = swift_slowAlloc();
  v185 = v170;
  *v87 = 136315906;
  v88 = NANTimeSynchronizationFunction.description.getter(*(v84 + 16));
  v90 = sub_100002320(v88, v89, &v185);

  *(v87 + 4) = v90;
  *(v87 + 12) = 2080;

  v91 = LinkStatistics.description.getter();
  v93 = v92;

  v94 = sub_100002320(v91, v93, &v185);

  *(v87 + 14) = v94;
  v178 = v87;
  *(v87 + 22) = 2048;
  v95 = *(v41 + qword_10059B9A8);
  swift_beginAccess();
  v96 = *(v95 + 24);
  v97 = *(v96 + 16);
  v177 = v95;
  if (!v97)
  {

    v22 = _swiftEmptyArrayStorage;
    goto LABEL_77;
  }

  index = rawValue + 4;
  v22 = sub_10036777C(v97, 0);
  v169 = sub_100315DC8(&v180, (v22 + 32), v97, v96);
  v98 = v180;

  sub_1000E290C(v98);
  if (v169 != v97)
  {
    __break(1u);
    goto LABEL_117;
  }

  v41 = v173;
  v42 = index;
LABEL_77:
  v180 = _swiftEmptyArrayStorage;
  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    v99 = *(v22 + 16);
    if (v99)
    {
      goto LABEL_80;
    }

LABEL_97:
    v103 = _swiftEmptyArrayStorage;
    goto LABEL_98;
  }

LABEL_96:
  v99 = _CocoaArrayWrapper.endIndex.getter();
  if (!v99)
  {
    goto LABEL_97;
  }

LABEL_80:
  v100 = 0;
  while (2)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v102 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        break;
      }

      goto LABEL_86;
    }

    if (v100 >= *(v22 + 16))
    {
      goto LABEL_95;
    }

    v101 = *(v22 + 8 * v100 + 32);

    v102 = v100 + 1;
    if (!__OFADD__(v100, 1))
    {
LABEL_86:
      if (*(v101 + 51))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v100;
      v41 = v173;
      if (v102 == v99)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_91:
  v103 = v180;
LABEL_98:

  if ((v103 & 0x8000000000000000) != 0 || (v103 & 0x4000000000000000) != 0)
  {
    goto LABEL_115;
  }

  for (i = *(v103 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v105 = v178;

    *(v105 + 3) = i;

    *(v105 + 16) = 2048;
    type metadata accessor for P2PTimer(0);
    v106 = v163;
    variable initialization expression of AWDLPeer.lastUpdated();
    v107 = DispatchTime.uptimeNanoseconds.getter();
    v108 = v165;
    v109 = *(v165 + 8);
    v110 = v106;
    v111 = v166;
    v109(v110, v166);
    v112 = v164;
    (*(v108 + 16))(v164, v41 + qword_100596440, v111);
    v113 = DispatchTime.uptimeNanoseconds.getter();
    v109(v112, v111);

    if (v107 >= v113)
    {
      break;
    }

    __break(1u);
LABEL_115:
    ;
  }

  *(v105 + 34) = (v107 - v113) / 0x3B9ACA00;

  v114 = v172;
  _os_log_impl(&_mh_execute_header, v172, v171, "Multicast stats: TSF[%s], %s, activePeers[%ld], totalUptime s[%llu]", v105, 0x2Au);
  swift_arrayDestroy();

LABEL_103:
  *rawValue = 0;
  *v42 = 0;
  *(v42 + 8) = 0;
LABEL_104:
  v115 = qword_10059B9A0;
  swift_beginAccess();
  sub_10031CEF0(v41 + v115, &v180);
  if (!v183)
  {

    sub_100016290(&v180, &unk_100595C70, &qword_1004B0C00);
    return;
  }

  sub_100016290(&v180, &unk_100595C70, &qword_1004B0C00);
  v116 = (v41 + qword_1005963C8);
  if (*(v41 + qword_1005963C8 + 6))
  {

    return;
  }

  v117 = v41;
  v118 = *(v41 + qword_10059B990);
  swift_unownedRetainStrong();
  v119 = *(*v118 + 96);
  swift_beginAccess();
  v178 = v116;
  v120 = v159;
  v121 = *(v159 + 16);
  v122 = v118 + v119;
  v123 = v174;
  v124 = v160;
  v121(v174, v122, v160);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v126 = (*(AssociatedConformanceWitness + 32))(v124, AssociatedConformanceWitness);
  v127 = *(v120 + 8);
  v127(v123, v124);
  swift_unownedRetainStrong();
  v128 = *(*v118 + 96);
  swift_beginAccess();
  v129 = v118 + v128;
  v130 = v158;
  v121(v158, v129, v124);

  LOBYTE(v121) = (*(AssociatedConformanceWitness + 24))(v124, AssociatedConformanceWitness);
  v127(v130, v124);
  v131 = v178;
  v132 = v162;
  v133 = &v162[*(v157 + 28)];
  NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v133);
  *v132 = v126;
  *(v132 + 1) = v121;
  *(v132 + 4) = 0;
  v134 = (v133 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 56));
  v135 = v179;

  v136 = v156;
  *v134 = v135;
  v134[1] = v136;
  v134[2] = value;
  v137 = v132;
  v138 = v161;
  sub_10031CFB4(v132, v161, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v139 = NANActionFrame.init(customDeviceInformation:)(v138);
  v141 = v140;
  v142 = swift_unownedRetainStrong();
  sub_10040DD50(v142, v143, v144, v145);

  if (*(v131 + 6))
  {
LABEL_117:
    __break(1u);
    __break(1u);
LABEL_118:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v146 = v139;
  v147 = *v131 | (*(v131 + 2) << 32);

  v148 = TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
  v149 = *v148;
  v150 = v148[1];
  v151 = v148[2];
  if (*(v117 + v154 + 4) << 32 == 0x300000000)
  {
    v152 = 1;
  }

  else
  {
    v152 = *(v117 + v154 + 4);
  }

  v180 = 0;
  v181 = v146;
  v182 = v141;
  v183 = 0;
  v184 = 2;
  sub_1003A8DBC(&v180, v147, 1, v149, v150, v151, 0, v152, 0x1F4u, NANBitmap.Channel.operatingClass.getter, 0);
  sub_100048C4C(v146, v141, 0);

  sub_10031D01C(v137, type metadata accessor for NANAttribute.CustomDeviceInformation);
}