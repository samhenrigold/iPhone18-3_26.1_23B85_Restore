uint64_t sub_1000CC7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100291650(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10028DD34(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100290D9C();
        v14 = v16;
      }

      result = sub_1002B4118(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1000CC8A4(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_100009EBC(a1, &qword_1003AFB10, &qword_1002DC1D8);
    v8 = sub_10028DFAC(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100290C20();
        v12 = v14;
      }

      sub_1000DC2EC(*(v12 + 56) + 16 * v10, &v15);
      sub_1002B3F88(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_1002D32F0;
    }

    return sub_100009EBC(&v15, &qword_1003AFB10, &qword_1002DC1D8);
  }

  else
  {
    sub_1000DC2EC(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_100291C7C(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

uint64_t sub_1000CCA04()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000CCABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1000CCB7C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_100162788(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000CCCC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void *sub_1000CCD2C()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_1000CCDD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1000CCE8C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000A2CC(0, &qword_1003AFB08, AVOutputDeviceDiscoverySession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void *sub_1000CD01C()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_1000CD0C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1000CD17C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000A2CC(0, &qword_1003AFB00, AADeviceManager_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

uint64_t sub_1000CD30C()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000CD3C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1000CD484(uint64_t a1)
{
  swift_beginAccess();

  sub_1000D9EC8(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000CD5CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

uint64_t sub_1000CD634@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000CD72C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1000CD824(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1000CD8F0(v4);
}

uint64_t sub_1000CD8F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1000DC250(&qword_1003AFAF8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1000CDB90(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000CDC7C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000CDD1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar);
  return result;
}

uint64_t sub_1000CDE1C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000CDF20()
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000CDFCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices;
  if (sub_1000FAD14(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

__n128 sub_1000CE17C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v11.n128_u64[0] = v1;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16[0] = v4;
  *(v16 + 9) = *(v3 + 89);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = *(v3 + 3);
  v13 = v3[2];
  v14 = v6;
  sub_1000DA0C8(&v11, v10);
  v7 = v16[0];
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 89) = *(v16 + 9);
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000CE294(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v4 = v3[5];
  v18[4] = v3[4];
  v19[0] = v4;
  *(v19 + 9) = *(v3 + 89);
  v5 = v3[1];
  v18[0] = *v3;
  v18[1] = v5;
  v6 = v3[3];
  v18[2] = v3[2];
  v18[3] = v6;
  sub_1000DA0C8(v18, v16);
  v7 = sub_1000DA1D0(v18, a1);
  sub_100009EBC(v18, &qword_1003A93C8, &unk_1002D9A40);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v16[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100009EBC(a1, &qword_1003A93C8, &unk_1002D9A40);
  }

  else
  {
    v10 = v3[5];
    v16[4] = v3[4];
    v17[0] = v10;
    *(v17 + 9) = *(v3 + 89);
    v11 = v3[1];
    v16[0] = *v3;
    v16[1] = v11;
    v12 = v3[3];
    v16[2] = v3[2];
    v16[3] = v12;
    v13 = a1[1];
    *v3 = *a1;
    v3[1] = v13;
    *(v3 + 89) = *(a1 + 89);
    v14 = a1[5];
    v3[4] = a1[4];
    v3[5] = v14;
    v15 = a1[3];
    v3[2] = a1[2];
    v3[3] = v15;
    return sub_100009EBC(v16, &qword_1003A93C8, &unk_1002D9A40);
  }
}

__n128 sub_1000CE488(uint64_t a1, _OWORD *a2)
{
  v3 = a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v17 = *(v3 + 48);
  v18 = *v3;
  v16 = *(v3 + 56);
  v14 = *(v3 + 80);
  v15 = *(v3 + 64);
  v9 = *(v3 + 96);
  v10 = a2[5];
  *(v3 + 64) = a2[4];
  *(v3 + 80) = v10;
  *(v3 + 89) = *(a2 + 89);
  v11 = a2[1];
  *v3 = *a2;
  *(v3 + 16) = v11;
  v12 = a2[3];
  *(v3 + 32) = a2[2];
  *(v3 + 48) = v12;
  sub_1000DA0C8(a2, v19);
  sub_1000DC178(v18, v4, v5, v6, v7, v8, v17, v16, v15, *(&v15 + 1), v14, *(&v14 + 1), v9);
  return result;
}

uint64_t (*sub_1000CE57C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1000CE118(v4);
  return sub_1000CE6B4;
}

void sub_1000CE6B4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

__n128 sub_1000CE748@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v10 = v1;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
  v14 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
  v15[0] = v3;
  *(v15 + 9) = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v11 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
  v12 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
  v13 = v5;
  sub_1000DA0C8(&v10, &v9);
  v6 = v15[0];
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 89) = *(v15 + 9);
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000CE84C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v16[0] = v3;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v5 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v6 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
  v16[1] = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  v16[2] = v6;
  v16[0] = v5;
  v7 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
  v8 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
  v9 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
  *&v17[9] = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
  v16[4] = v8;
  *v17 = v9;
  v16[3] = v7;
  v10 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  a2[1] = v10;
  v11 = v4[2];
  v12 = v4[3];
  *(a2 + 89) = *(v4 + 89);
  v13 = v4[5];
  a2[4] = v4[4];
  a2[5] = v13;
  a2[2] = v11;
  a2[3] = v12;
  return sub_1000DA0C8(v16, &v15);
}

uint64_t sub_1000CE954(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
  v6 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
  v19[3] = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
  v19[4] = v4;
  v20[0] = v5;
  *(v20 + 9) = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
  v7 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  v19[0] = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v19[1] = v7;
  v19[2] = v6;
  sub_1000DA0C8(v19, v17);
  v8 = sub_1000DA1D0(v19, a1);
  sub_100009EBC(v19, &qword_1003A93C8, &unk_1002D9A40);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v17[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100009EBC(a1, &qword_1003A93C8, &unk_1002D9A40);
  }

  else
  {
    v11 = v3[5];
    v17[4] = v3[4];
    v18[0] = v11;
    *(v18 + 9) = *(v3 + 89);
    v12 = v3[1];
    v17[0] = *v3;
    v17[1] = v12;
    v13 = v3[3];
    v17[2] = v3[2];
    v17[3] = v13;
    v14 = a1[1];
    *v3 = *a1;
    v3[1] = v14;
    *(v3 + 89) = *(a1 + 89);
    v15 = a1[5];
    v3[4] = a1[4];
    v3[5] = v15;
    v16 = a1[3];
    v3[2] = a1[2];
    v3[3] = v16;
    return sub_100009EBC(v17, &qword_1003A93C8, &unk_1002D9A40);
  }
}

__n128 sub_1000CEB44(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v3 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 8);
  v17 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  v4 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
  v5 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 24);
  v6 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
  v7 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 40);
  v8 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
  v9 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 56);
  v15 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
  v16 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
  v10 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 96);
  v11 = a2[5];
  v2[4] = a2[4];
  v2[5] = v11;
  *(v2 + 89) = *(a2 + 89);
  v12 = a2[1];
  *v2 = *a2;
  v2[1] = v12;
  v13 = a2[3];
  v2[2] = a2[2];
  v2[3] = v13;
  sub_1000DA0C8(a2, v18);
  sub_1000DC178(v17, v3, v4, v5, v6, v7, v8, v9, v16, *(&v16 + 1), v15, *(&v15 + 1), v10);
  return result;
}

void sub_1000CEC24()
{
  v1 = v0;
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2728);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 8) = 1024;
    v36 = &type metadata for TranslateFeatures;
    v37 = sub_100009DF8();
    LOBYTE(v33) = 10;
    v6 = isFeatureEnabled(_:)();
    sub_100008664(&v33);
    if (v6)
    {
      v7 = MobileGestalt_get_current_device();
      if (!v7)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v8 = v7;
      deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();

      if (deviceSupportsPersonalTranslator)
      {
        v10 = 1;
LABEL_11:
        *(v5 + 10) = v10;
        _os_log_impl(&_mh_execute_header, v3, v4, "initializeAudioAccessoryDeviceManager setting up AADeviceManager peerToPeerConversation:%{BOOL}d ptEnabled:%{BOOL}d", v5, 0xEu);

        goto LABEL_12;
      }

      if (_LTIsInternalInstall())
      {
        v11 = [objc_opt_self() standardUserDefaults];
        v12 = String._bridgeToObjectiveC()();
        v10 = [v11 BOOLForKey:v12];

        goto LABEL_11;
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

LABEL_12:

  v36 = &type metadata for TranslateFeatures;
  v37 = sub_100009DF8();
  LOBYTE(v33) = 10;
  v13 = isFeatureEnabled(_:)();
  sub_100008664(&v33);
  if ((v13 & 1) == 0)
  {
    return;
  }

  v14 = MobileGestalt_get_current_device();
  if (!v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  v16 = MobileGestalt_get_deviceSupportsPersonalTranslator();

  if ((v16 & 1) != 0 || _LTIsInternalInstall() && (v30 = [objc_opt_self() standardUserDefaults], v31 = String._bridgeToObjectiveC()(), v32 = objc_msgSend(v30, "BOOLForKey:", v31), v30, v31, v32))
  {
    sub_1000CD17C([objc_allocWithZone(AADeviceManager) init]);
    swift_getKeyPath();
    v33 = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v1 + 48);
    if (v17)
    {
      v18 = *(v1 + 32);
      v19 = v17;
      [v19 setDispatchQueue:v18];
      v20 = swift_allocObject();
      swift_weakInit();
      v37 = sub_1000DC104;
      v38 = v20;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_1000CF44C;
      v36 = &unk_100383488;
      v21 = _Block_copy(&v33);

      [v19 setDeviceFoundHandler:v21];
      _Block_release(v21);
      v22 = swift_allocObject();
      swift_weakInit();
      v37 = sub_1000DC10C;
      v38 = v22;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_1000CF44C;
      v36 = &unk_1003834B0;
      v23 = _Block_copy(&v33);

      [v19 setDeviceLostHandler:v23];
      _Block_release(v23);
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      v37 = sub_1000DC14C;
      v38 = v24;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100096948;
      v36 = &unk_100383500;
      v25 = _Block_copy(&v33);
      v26 = v19;

      [v26 setInterruptionHandler:v25];
      _Block_release(v25);
      v27 = swift_allocObject();
      swift_weakInit();
      v37 = sub_1000DC154;
      v38 = v27;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100096948;
      v36 = &unk_100383528;
      v28 = _Block_copy(&v33);

      [v26 setInvalidationHandler:v28];
      _Block_release(v28);
      v37 = sub_1000CF978;
      v38 = 0;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100227798;
      v36 = &unk_100383550;
      v29 = _Block_copy(&v33);
      [v26 activateWithCompletion:v29];
      _Block_release(v29);
    }
  }
}

uint64_t sub_1000CF278(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2728);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = v5;
      v11 = [v10 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10028D78C(v12, v14, &v16);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Found Audio Accessory Device %s", v8, 0xCu);
      sub_100008664(v9);
    }

    sub_1000D35C0(v5, 0);
  }

  return result;
}

void sub_1000CF44C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000CF4B4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2728);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = [v5 bluetoothAddress];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v14 = 0xE700000000000000;
        v12 = 0x6E776F6E6B6E55;
      }

      v15 = sub_10028D78C(v12, v14, &v16);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Lost Audio Accessory Device %s", v8, 0xCu);
      sub_100008664(v9);
    }

    sub_1000D35C0(v5, 1);
  }

  return result;
}

void sub_1000CF69C(void *a1)
{
  [a1 invalidate];
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2728);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "AADeviceManager interruptionHandler called", v3, 2u);
  }
}

uint64_t sub_1000CF790(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2728);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "AADeviceManager invalidationHandler called", v6, 2u);
    }

    if (*(v2 + 48))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_1000CEC24();
  }

  return result;
}

void sub_1000CF978(uint64_t a1)
{
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2728);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *(v4 + 4) = v6;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "AudioAccessoryDeviceManager activation with %@", v4, 0xCu);
    sub_100009EBC(v5, &unk_1003AECA0, &unk_1002D3F10);
  }
}

void sub_1000CFAE8()
{
  v9[3] = &type metadata for TranslateFeatures;
  v9[4] = sub_100009DF8();
  LOBYTE(v9[0]) = 10;
  v1 = isFeatureEnabled(_:)();
  sub_100008664(v9);
  if (v1)
  {
    v2 = MobileGestalt_get_current_device();
    if (v2)
    {
      v3 = v2;
      deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();

      if ((deviceSupportsPersonalTranslator & 1) != 0 || _LTIsInternalInstall() && (v6 = [objc_opt_self() standardUserDefaults], v7 = String._bridgeToObjectiveC()(), v8 = objc_msgSend(v6, "BOOLForKey:", v7), v6, v7, v8))
      {
        swift_getKeyPath();
        v9[0] = v0;
        sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [*(v0 + 48) invalidate];
        if (*(v0 + 48))
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          v9[0] = v0;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1000CFCFC()
{
  v1 = v0;
  v28[0] = 0;
  v2 = type metadata accessor for Date();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v0[2] = &_swiftEmptySetSingleton;
  v0[3] = 0;
  v9 = sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v28[1] = "_builtInAudioDevice";
  v28[2] = v9;
  static DispatchQoS.unspecified.getter();
  v33[0] = _swiftEmptyArrayStorage;
  sub_1000DC250(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005AD4(&qword_1003AED80, &unk_1002DA3D0);
  sub_1000A5708(&qword_1003AED88, &qword_1003AED80, &unk_1002DA3D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = objc_allocWithZone(AVAudioSession);
  v0[5] = [v10 init];
  v0[6] = 0;
  v0[7] = sub_100292388(_swiftEmptyArrayStorage);
  v11 = v30;
  static Date.distantPast.getter();
  (*(v31 + 32))(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery, v11, v32);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper_minTimeIntervalDeviceDiscovery) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected) = 0;
  v12 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) = 0;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices) = _swiftEmptyArrayStorage;
  v13 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  *(v13 + 89) = 0u;
  v14 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  *(v14 + 89) = 0u;
  ObservationRegistrar.init()();
  v33[3] = &type metadata for TranslateFeatures;
  v33[4] = sub_100009DF8();
  LOBYTE(v33[0]) = 8;
  LOBYTE(v11) = isFeatureEnabled(_:)();
  sub_100008664(v33);
  if (v11)
  {
    v15 = v1[5];
    v33[0] = 0;
    if ([v15 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:12 error:v33])
    {
      v16 = v33[0];
    }

    else
    {
      v17 = v33[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v28[0] = 0;
    }

    v18 = objc_opt_self();
    v19 = [v18 defaultCenter];
    [v19 addObserver:v1 selector:"handleRouteChangeWithNotification:" name:AVAudioSessionRouteChangeNotification object:v1[5]];

    v20 = [v18 defaultCenter];
    [v20 addObserver:v1 selector:"handlePickableRouteChangeWithNotification:" name:AVAudioSessionPickableRouteChangeNotification object:v1[5]];

    v21 = [v18 defaultCenter];
    v22 = AVOutputDeviceDiscoverySessionAvailableOutputDevicesDidChangeNotification;
    swift_getKeyPath();
    v33[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [v21 addObserver:v1 selector:"availableOutputDeviceChangedWithNotification:" name:v22 object:v1[3]];
  }

  sub_1000D0678();
  if (_LTIsInternalInstall())
  {
    v23 = [objc_opt_self() standardUserDefaults];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 BOOLForKey:v24];

    if (v25)
    {
      if (*(v1 + v12) == 1)
      {
        *(v1 + v12) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v28[-2] = v1;
        LOBYTE(v28[-1]) = 1;
        v33[0] = v1;
        sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  return v1;
}

id *sub_1000D043C()
{
  v7[3] = &type metadata for TranslateFeatures;
  v7[4] = sub_100009DF8();
  LOBYTE(v7[0]) = 8;
  v1 = isFeatureEnabled(_:)();
  sub_100008664(v7);
  if (v1)
  {
    sub_1000D07C0();
  }

  v2 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1000DC178(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 8), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 16), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 24), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 32), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 40), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 48), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 56), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 64), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 72), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 80), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 88), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice + 96));
  sub_1000DC178(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 8), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 24), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 40), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 56), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 72), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 88), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 96));
  v4 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1000D05CC()
{
  sub_1000D043C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceHelper(uint64_t a1)
{
  result = qword_1003AF6F0;
  if (!qword_1003AF6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D0698(uint64_t a1)
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(a1 + 24))
  {
    sub_1000CCE8C([objc_allocWithZone(AVOutputDeviceDiscoverySession) initWithDeviceFeatures:1]);
    sub_1000D2E94();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(a1 + 24);
  if (v2)
  {
    [v2 setDiscoveryMode:1];
  }

  sub_1000CEC24();
}

uint64_t sub_1000D07E0(unint64_t a1, ValueMetadata *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &type metadata for TranslateFeatures;
  v20 = sub_100009DF8();
  LOBYTE(aBlock[0]) = 8;
  v12 = isFeatureEnabled(_:)();
  result = sub_100008664(aBlock);
  if (v12)
  {
    v15[1] = *(v2 + 32);
    v20 = a1;
    v21 = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100096948;
    v19 = a2;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v17 = _swiftEmptyArrayStorage;
    sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v16);
  }

  return result;
}

void sub_1000D0AA4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_1000CFAE8();
}

void sub_1000D0BD0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (v31)
  {
    sub_10000A2CC(0, &qword_1003AED38, AVAudioSession_ptr);
    if (swift_dynamicCast())
    {
      v25 = v34;
      sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
      v26 = static OS_dispatch_queue.main.getter();
      v13 = swift_allocObject();
      swift_weakInit();
      (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
      v14 = *(v10 + 80);
      v27 = v3;
      v15 = (v14 + 32) & ~v14;
      v16 = swift_allocObject();
      v17 = v25;
      *(v16 + 16) = v13;
      *(v16 + 24) = v17;
      (*(v10 + 32))(v16 + v15, v12, v9);
      v32 = sub_1000DC020;
      v33 = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      v31 = &unk_100383410;
      v18 = _Block_copy(aBlock);
      v19 = v17;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
      sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v20 = v26;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v18);

      (*(v27 + 8))(v5, v2);
      (*(v28 + 8))(v8, v29);
      return;
    }
  }

  else
  {
    sub_100009EBC(aBlock, &unk_1003AB9C0, &unk_1002D36F0);
  }

  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000078E8(v21, qword_1003D2728);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Audio route changed but cannot find session", v24, 2u);
  }
}

void sub_1000D10D0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = [a2 currentRoute];
    v4 = Notification.userInfo.getter();
    if (v4)
    {
      v5 = v4;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      if (*(v5 + 16) && (v6 = sub_10028DF68(v67), (v7 & 1) != 0))
      {
        sub_10000A37C(*(v5 + 56) + 32 * v6, v68);
        sub_100078028(v67);

        if (swift_dynamicCast())
        {
          if (qword_1003A9208 != -1)
          {
            swift_once();
          }

          v8 = type metadata accessor for Logger();
          sub_1000078E8(v8, qword_1003D2728);
          v9 = v3;
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v10, v11))
          {
LABEL_37:

            if (v66 == 2)
            {
              v33 = [v9 outputs];
              sub_10000A2CC(0, &unk_1003AED40, AVAudioSessionPortDescription_ptr);
              v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v34 >> 62)
              {
LABEL_78:
                v64 = v34 & 0xFFFFFFFFFFFFFF8;
                v65 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v64 = v34 & 0xFFFFFFFFFFFFFF8;
                v65 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v35 = 0;
              while (v65 != v35)
              {
                if ((v34 & 0xC000000000000001) != 0)
                {
                  v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v35 >= *(v64 + 16))
                  {
                    goto LABEL_77;
                  }

                  v37 = *(v34 + 8 * v35 + 32);
                }

                v38 = v37;
                if (__OFADD__(v35, 1))
                {
                  __break(1u);
LABEL_77:
                  __break(1u);
                  goto LABEL_78;
                }

                v39 = [v37 portType];
                v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v42 = v41;
                if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
                {
                  goto LABEL_72;
                }

                v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v45)
                {
                  goto LABEL_67;
                }

                v39 = [v38 portType];
                v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v48 = v47;
                if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
                {
                  goto LABEL_72;
                }

                v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v50)
                {
                  goto LABEL_67;
                }

                v39 = [v38 portType];
                v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v53 = v52;
                if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
                {
LABEL_72:

                  goto LABEL_73;
                }

                v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v55)
                {
LABEL_67:

                  goto LABEL_74;
                }

                v56 = [v38 portType];
                v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v59 = v58;
                if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60)
                {

LABEL_73:

                  goto LABEL_74;
                }

                v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                ++v35;
                if (v36)
                {
                  goto LABEL_73;
                }
              }

              v61 = Logger.logObject.getter();
              v62 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                *v63 = 0;
                _os_log_impl(&_mh_execute_header, v61, v62, "Route outputs do not contain headphones", v63, 2u);
              }
            }

            else if (v66 != 1)
            {
              if (v66)
              {
                goto LABEL_75;
              }

              sub_1002C2E20();
              if (v30)
              {
                v31 = v30;
                v32 = [v30 activationState];

                if (!v32)
                {
                  goto LABEL_75;
                }
              }
            }

LABEL_74:
            sub_1000D2E94();
LABEL_75:

LABEL_20:

            return;
          }

          v12 = swift_slowAlloc();
          v67[0] = swift_slowAlloc();
          *v12 = 136315650;
          if (v66 > 3)
          {
            if (v66 > 6)
            {
              if (v66 == 7)
              {
                v14 = 0x80000001002F3760;
                v13 = 0xD00000000000001ALL;
                goto LABEL_36;
              }

              if (v66 == 8)
              {
                v14 = 0x80000001002F3740;
                v13 = 0xD000000000000018;
                goto LABEL_36;
              }
            }

            else
            {
              if (v66 == 4)
              {
                v14 = 0xE800000000000000;
                v13 = 0x656469727265766FLL;
                goto LABEL_36;
              }

              if (v66 == 6)
              {
                v14 = 0xED00007065656C53;
                v13 = 0x6D6F7246656B6177;
                goto LABEL_36;
              }
            }
          }

          else
          {
            if (v66 > 1)
            {
              if (v66 == 2)
              {
                v14 = 0x80000001002F3780;
                v13 = 0xD000000000000014;
              }

              else
              {
                v14 = 0xEE0065676E616843;
                v13 = 0x79726F6765746163;
              }

              goto LABEL_36;
            }

            if (!v66)
            {
              v14 = 0xE700000000000000;
              v13 = 0x6E776F6E6B6E75;
              goto LABEL_36;
            }

            if (v66 == 1)
            {
              v13 = 0xD000000000000012;
              v14 = 0x80000001002F37A0;
LABEL_36:
              v19 = sub_10028D78C(v13, v14, v67);

              *(v12 + 4) = v19;
              *(v12 + 12) = 2080;
              v20 = [v9 inputs];
              sub_10000A2CC(0, &unk_1003AED40, AVAudioSessionPortDescription_ptr);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v21 = Array.description.getter();
              v23 = v22;

              v24 = sub_10028D78C(v21, v23, v67);

              *(v12 + 14) = v24;
              *(v12 + 22) = 2080;
              v25 = [v9 outputs];
              static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v26 = Array.description.getter();
              v28 = v27;

              v29 = sub_10028D78C(v26, v28, v67);

              *(v12 + 24) = v29;
              _os_log_impl(&_mh_execute_header, v10, v11, "Audio route changed for reason: %s\nInputs: %s\nOutputs: %s", v12, 0x20u);
              swift_arrayDestroy();

              goto LABEL_37;
            }
          }

          v14 = 0xEE006E6F69747069;
          v13 = 0x7263736564206F6ELL;
          goto LABEL_36;
        }
      }

      else
      {

        sub_100078028(v67);
      }
    }

    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000078E8(v15, qword_1003D2728);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Audio route changed but cannot find reason", v18, 2u);
    }

    goto LABEL_20;
  }
}

uint64_t sub_1000D1B94(uint64_t a1, const char *a2)
{
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2728);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  return sub_1000D2E94();
}

uint64_t sub_1000D1CA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D1D94(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000D1EB0()
{
  swift_getKeyPath();
  *&v24 = v0;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *(v1 + 16);
      v7 = (v1 + 32 + 112 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
          return result;
        }

        v9 = v7[5];
        v10 = *(v7 + 89);
        v11 = v7[3];
        v28 = v7[4];
        v12 = v7[1];
        v13 = v7[2];
        v24 = *v7;
        v25 = v12;
        *(v29 + 9) = v10;
        v29[0] = v9;
        v26 = v13;
        v27 = v11;
        if (v28 == 1 && (*(&v28 + 1) & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          break;
        }

        ++v8;
        v7 += 7;
        if (v2 == v8)
        {
          goto LABEL_15;
        }
      }

      sub_10001F5C4(&v24, &v23);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10028CBB8(0, *(v5 + 2) + 1, 1, v5);
        v5 = result;
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_10028CBB8((v14 > 1), v15 + 1, 1, v5);
        v5 = result;
      }

      v4 = v8 + 1;
      *(v5 + 2) = v15 + 1;
      v16 = &v5[112 * v15];
      v17 = v24;
      v18 = v26;
      *(v16 + 3) = v25;
      *(v16 + 4) = v18;
      *(v16 + 2) = v17;
      v19 = v27;
      v20 = v28;
      v21 = v29[0];
      *(v16 + 121) = *(v29 + 9);
      *(v16 + 6) = v20;
      *(v16 + 7) = v21;
      *(v16 + 5) = v19;
    }

    while (v2 - 1 != v8);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  v22 = *(v5 + 2);

  return v22 < 2;
}

void sub_1000D20D8(void *a1, char a2)
{
  v3 = a1;
  if ((a2 & 0x80) == 0)
  {
    if ((a2 & 0x40) != 0)
    {
      swift_getKeyPath();
      *&v118 = v2;
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v28 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
      v140 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
      *v141 = v28;
      *&v141[9] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
      v29 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
      v136 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
      v137 = v29;
      v31 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
      v30 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
    }

    else
    {
      if ((a2 & 1) == 0)
      {
        swift_getKeyPath();
        *&v118 = v2;
        sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v4 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
        swift_beginAccess();
        v5 = v4[5];
        v132 = v4[4];
        v133[0] = v5;
        *(v133 + 9) = *(v4 + 89);
        v6 = v4[1];
        v128 = *v4;
        v129 = v6;
        v7 = v4[3];
        v130 = v4[2];
        v131 = v7;
        swift_getKeyPath();
        *&v111 = v2;
        sub_1000DA0C8(&v128, &v118);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v8 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
        v9 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 80);
        v134[4] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 64);
        v135[0] = v9;
        *(v135 + 9) = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 89);
        v10 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 16);
        v134[0] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice);
        v134[1] = v10;
        v11 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 48);
        v134[2] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice + 32);
        v134[3] = v11;
        v12 = v128;
        v13 = v129;
        v126 = v130;
        v127 = v131;
        v14 = v132;
        v125[0] = v133[0];
        *(v125 + 9) = *(v133 + 9);
        if (*(&v128 + 1))
        {
          if (*(&v134[0] + 1))
          {
            v118 = v134[0];
            v15 = v8[4];
            v121 = v8[3];
            v122 = v15;
            v123[0] = v8[5];
            *(v123 + 9) = *(v8 + 89);
            v16 = v8[2];
            v119 = v8[1];
            v120 = v16;
            v17 = v15;
            v106 = *(&v132 + 1);
            if (v129 == v119)
            {
              sub_1000DA0C8(v134, &v111);
              sub_100009EBC(&v118, &qword_1003A93C8, &unk_1002D9A40);
            }

            else
            {
              v92 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_1000DA0C8(v134, &v111);
              sub_100009EBC(&v118, &qword_1003A93C8, &unk_1002D9A40);
              if ((v92 & 1) == 0)
              {
LABEL_56:
                v111 = v12;
                v112 = v13;
                v113 = v126;
                v114 = v127;
                v115 = v14;
                v116 = v106;
                v117[0] = v125[0];
                *(v117 + 9) = *(v125 + 9);
                v64 = &qword_1003A93C8;
                v65 = &unk_1002D9A40;
                v66 = &v111;
                goto LABEL_57;
              }
            }

            if (v14 == v17)
            {
              v111 = v12;
              v112 = v13;
              v113 = v126;
              v114 = v127;
              v115 = v14;
              v116 = v106;
              v117[0] = v125[0];
              *(v117 + 9) = *(v125 + 9);
              sub_100009EBC(&v111, &qword_1003A93C8, &unk_1002D9A40);
              if (v106 == *(&v17 + 1))
              {
                goto LABEL_70;
              }

LABEL_58:
              swift_getKeyPath();
              *&v118 = v2;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v93 = v4[5];
              v140 = v4[4];
              *v141 = v93;
              *&v141[9] = *(v4 + 89);
              v94 = v4[1];
              v136 = *v4;
              v137 = v94;
              v95 = v4[3];
              v138 = v4[2];
              v139 = v95;
              v3 = a1;
              if (!*(&v136 + 1))
              {
                goto LABEL_59;
              }

              goto LABEL_19;
            }

            goto LABEL_56;
          }
        }

        else if (!*(&v134[0] + 1))
        {
          v118 = v128;
          v119 = v129;
          v120 = v130;
          v121 = v131;
          v122 = v132;
          v123[0] = v133[0];
          *(v123 + 9) = *(v133 + 9);
          sub_1000DA0C8(v134, &v111);
          sub_100009EBC(&v118, &qword_1003A93C8, &unk_1002D9A40);
LABEL_70:
          v146 = 0u;
          memset(v147, 0, 25);
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v3 = a1;
          goto LABEL_60;
        }

        v118 = v128;
        v119 = v129;
        v120 = v130;
        v121 = v131;
        v122 = v132;
        v123[0] = v133[0];
        *(v123 + 9) = *(v133 + 9);
        v123[2] = v134[0];
        v60 = v8[2];
        v123[3] = v8[1];
        v123[4] = v60;
        v61 = v8[3];
        v62 = v8[4];
        v63 = v8[5];
        *(v124 + 9) = *(v8 + 89);
        v123[6] = v62;
        v124[0] = v63;
        v123[5] = v61;
        sub_1000DA0C8(v134, &v111);
        v64 = &qword_1003AFAC8;
        v65 = &qword_1002DC110;
        v66 = &v118;
LABEL_57:
        sub_100009EBC(v66, v64, v65);
        goto LABEL_58;
      }

      swift_getKeyPath();
      *&v118 = v2;
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
      swift_beginAccess();
      v33 = v32[5];
      v140 = v32[4];
      *v141 = v33;
      *&v141[9] = *(v32 + 89);
      v34 = v32[1];
      v136 = *v32;
      v137 = v34;
      v31 = v32[2];
      v30 = v32[3];
    }

    v138 = v31;
    v139 = v30;
    if (!*(&v136 + 1))
    {
LABEL_59:
      v146 = v140;
      v147[0] = *v141;
      *(v147 + 9) = *&v141[9];
      v142 = v136;
      v143 = v137;
      v144 = v138;
      v145 = v139;
LABEL_60:
      if (qword_1003A9208 != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      sub_1000078E8(v96, qword_1003D2728);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "Preferred persistent reset, audioDevice is not defined", v99, 2u);
      }

      *&v134[0] = 0;
      v100 = [v3 setPreferredPersistentInputUIDs:0 outputUIDs:0 error:v134];
      v101 = *&v134[0];
      if (v100 && (*&v134[0] = 0, v102 = v101, v103 = [v3 setPreferredInput:0 error:v134], v101 = *&v134[0], v103))
      {
        v104 = *&v134[0];
      }

      else
      {
        v105 = v101;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      sub_100009EBC(&v142, &qword_1003A93C8, &unk_1002D9A40);
      return;
    }

LABEL_19:
    v35 = v137;
    v36 = v140;
    v37 = *&v141[8];
    v38 = *&v141[16];

    v39 = v37;
    v40 = v38;

    v41 = [v3 availableInputs];
    if (v41)
    {
      v42 = v41;
      sub_10000A2CC(0, &unk_1003AED40, AVAudioSessionPortDescription_ptr);
      v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_1000DA554(v35, *(&v35 + 1), v36, v43);

    v45 = v44;
    v110 = v3;
    v46 = [v3 availableOutputs];
    if (v46)
    {
      v47 = v46;
      sub_10000A2CC(0, &unk_1003AED40, AVAudioSessionPortDescription_ptr);
      v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v48 = 0;
    }

    v49 = sub_1000DA554(v35, *(&v35 + 1), v36, v48);

    if (v44)
    {
    }

    else
    {
      if (!v49)
      {
        v55 = 0;
        v50 = 0;
        v44 = 0;
        goto LABEL_35;
      }

      v45 = v49;
      v44 = v49;
    }

    sub_100005AD4(&unk_1003BA780, &qword_1002D6240);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1002D3160;
    v51 = [v45 UID];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    if (v49)
    {
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1002D3160;
      v56 = [v49 UID];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      *(v55 + 32) = v57;
      *(v55 + 40) = v59;
    }

    else
    {
      v55 = 0;
    }

LABEL_35:
    v108 = v49;
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1000078E8(v67, qword_1003D2728);
    v68 = v44;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();

    v107 = v68;
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *&v134[0] = swift_slowAlloc();
      *v71 = 136315650;
      if (v50)
      {
        v72 = Array.debugDescription.getter();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0xE000000000000000;
      }

      v75 = sub_10028D78C(v72, v74, v134);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2080;
      *&v128 = v55;
      sub_100005AD4(&qword_1003AFAE8, &qword_1002DC1A0);
      v76 = Optional.debugDescription.getter();
      v78 = sub_10028D78C(v76, v77, v134);

      *(v71 + 14) = v78;
      *(v71 + 22) = 2080;
      *&v128 = v44;
      sub_100005AD4(&qword_1003AFAF0, qword_1002DC1A8);
      v79 = Optional.debugDescription.getter();
      v81 = sub_10028D78C(v79, v80, v134);

      *(v71 + 24) = v81;
      _os_log_impl(&_mh_execute_header, v69, v70, "Preferred persistent input %s, and output %s with inputPort %s", v71, 0x20u);
      swift_arrayDestroy();
    }

    if (v50)
    {
      v82.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v83 = v110;
      if (v55)
      {
LABEL_44:
        v84.super.isa = Array._bridgeToObjectiveC()().super.isa;

        goto LABEL_47;
      }
    }

    else
    {
      v82.super.isa = 0;
      v83 = v110;
      if (v55)
      {
        goto LABEL_44;
      }
    }

    v84.super.isa = 0;
LABEL_47:
    *&v134[0] = 0;
    v85 = [v83 setPreferredPersistentInputUIDs:v82.super.isa outputUIDs:v84.super.isa error:v134];

    v86 = *&v134[0];
    if (v85)
    {
      *&v134[0] = 0;
      v87 = v86;
      v88 = [v83 setPreferredInput:v107 error:v134];
      v89 = *&v134[0];
      if (!v88)
      {
        v90 = v89;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      sub_100009EBC(&v136, &qword_1003A93C8, &unk_1002D9A40);
    }

    else
    {
      v91 = *&v134[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100009EBC(&v136, &qword_1003A93C8, &unk_1002D9A40);
    }

    return;
  }

  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000078E8(v18, qword_1003D2728);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Skip setting preferred input for farFieldInput mode. Resetting preferred input", v21, 2u);
  }

  *&v118 = 0;
  v22 = [v3 setPreferredPersistentInputUIDs:0 outputUIDs:0 error:&v118];
  v23 = v118;
  if (v22 && (*&v118 = 0, v24 = v23, v25 = [v3 setPreferredInput:0 error:&v118], v23 = v118, v25))
  {
    v26 = v118;
  }

  else
  {
    v27 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000D2E94()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000DBF44;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003833C0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_1000D3168(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getKeyPath();
    v26[1] = v6;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__lastDeviceDiscovery;
    swift_beginAccess();
    (*(v2 + 16))(v4, v6 + v7, v1);
    Date.timeIntervalSinceNow.getter();
    v9 = v8;
    (*(v2 + 8))(v4, v1);
    if (v9 <= -0.1)
    {
      static Date.now.getter();
      sub_1000CD8F0(v4);
      v14 = [objc_allocWithZone(AVOutputDeviceDiscoverySession) initWithDeviceFeatures:1];
      [v14 setDiscoveryMode:1];
      v15 = [v14 availableOutputDevices];
      sub_10000A2CC(0, &qword_1003AFAE0, AVOutputDevice_ptr);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (qword_1003A9208 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000078E8(v17, qword_1003D2728);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26[0] = v21;
        *v20 = 136315138;
        v22 = Array.description.getter();
        v24 = sub_10028D78C(v22, v23, v26);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "availableOutputDevices: %s", v20, 0xCu);
        sub_100008664(v21);
      }

      sub_1000D4E24(v16);
    }

    else
    {
      if (qword_1003A9208 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000078E8(v10, qword_1003D2728);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Throttling device discovery", v13, 2u);
      }
    }
  }
}

uint64_t sub_1000D35C0(void *a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a2 & 1;
  *(v12 + 32) = a1;
  aBlock[4] = sub_1000DBF10;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100383398;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_1000D38D8(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000078E8(v7, qword_1003D2728);
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v11 = &selRef_oneSelectedWithSender_;
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v12 = 136316162;
      if (a2)
      {
        v13 = 1953722220;
      }

      else
      {
        v13 = 0x646E756F66;
      }

      if (a2)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      v15 = sub_10028D78C(v13, v14, v49);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = [v8 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_10028D78C(v17, v19, v49);

      *(v12 + 14) = v20;
      *(v12 + 22) = 2080;
      v21 = [v8 name];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = sub_10028D78C(v23, v25, v49);

      *(v12 + 24) = v26;
      *(v12 + 32) = 2080;
      v11 = &selRef_oneSelectedWithSender_;
      v27 = [v8 bluetoothAddress];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v31 = 0xE300000000000000;
        v29 = 7104878;
      }

      v32 = sub_10028D78C(v29, v31, v49);

      *(v12 + 34) = v32;
      *(v12 + 42) = 2080;
      sub_1000DBF20([v8 personalTranslatorCapability]);
      v33 = String.init(cString:)();
      v35 = sub_10028D78C(v33, v34, v49);

      *(v12 + 44) = v35;
      _os_log_impl(&_mh_execute_header, v9, v10, "Updating available audio accessory devices: %s device identifier: %s name: %s bluetoothAddress: %s personalTranslator: %s", v12, 0x34u);
      swift_arrayDestroy();
    }

    v36 = [v8 v11[319]];
    if (a2)
    {
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        swift_getKeyPath();
        v49[0] = v6;
        sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v49[0] = v6;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        sub_1000CC7AC(0, v38, v40);
        swift_endAccess();
        v49[0] = v6;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        sub_1000D491C();
      }
    }

    else if (v36)
    {
      v41 = v36;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      swift_getKeyPath();
      v49[0] = v6;
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
      v45 = v8;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v49[0] = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v6 + 56);
      *(v6 + 56) = 0x8000000000000000;
      sub_100291650(v45, v42, v44, isUniquelyReferenced_nonNull_native);

      *(v6 + 56) = v48;
      swift_endAccess();
      v49[0] = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v47 = sub_1000D491C();
      sub_1000D3E8C(v47);
    }
  }

  return result;
}

void sub_1000D3E8C(uint64_t a1)
{
  v2 = v1;
  if (_LTIsInternalInstall())
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 BOOLForKey:v4];

    if (v5)
    {
      if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) == 1)
      {
        *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) = 1;
        return;
      }

      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v53 = v2;
      sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      goto LABEL_39;
    }
  }

  v6 = 0x6E776F6E6B6E75;
  swift_getKeyPath();
  v52 = v2;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v8 = v7[3];
  v55 = v7[2];
  v56 = v8;
  v9 = v7[5];
  v57 = v7[4];
  *v58 = v9;
  *&v58[9] = *(v7 + 89);
  v10 = v7[1];
  v53 = *v7;
  v54 = v10;
  if (*(&v53 + 1))
  {
    if (*(&v55 + 1))
    {
      v51 = v55;
      v50[0] = 45;
      v50[1] = 0xE100000000000000;
      sub_10001F278();

      v11 = *&v58[8];
      v12 = *&v58[16];
      v13 = StringProtocol.components<A>(separatedBy:)();
      if (v13[2])
      {
        v6 = v13[4];
        v14 = v13[5];
      }

      else
      {

        v14 = 0xE700000000000000;
        v6 = 0x6E776F6E6B6E75;
      }
    }

    else
    {

      v15 = *&v58[8];
      v16 = *&v58[16];
      v14 = 0xE700000000000000;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  swift_getKeyPath();
  *&v51 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v18 = *(v2 + 56);
  if (!*(v18 + 16))
  {
    goto LABEL_25;
  }

  v19 = sub_10028DD34(v6, v14);
  if ((v20 & 1) == 0)
  {

LABEL_25:
    v21 = 0;
    goto LABEL_26;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  v22 = v21;
  if ([v22 primaryPlacement] != 1 && objc_msgSend(v22, "secondaryPlacement") != 1)
  {
    v47 = [v22 placementMode];

    if (v47 == 2)
    {

      goto LABEL_18;
    }

LABEL_26:
    if (*(&v53 + 1))
    {
      v28 = *(&v54 + 1);
      v49 = v54;
    }

    else
    {
      v28 = 0xE300000000000000;
      v49 = 7104878;
    }

    swift_getKeyPath();
    v50[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v29 = qword_1003A92B0;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000078E8(v30, qword_1003D2920);
    v31 = v21;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v48 = v33;
      v34 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v34 = 136316162;
      *(v34 + 4) = sub_10028D78C(0xD00000000000001ALL, 0x80000001002F3720, v50);
      *(v34 + 12) = 2080;
      v35 = sub_10028D78C(v49, v28, v50);

      *(v34 + 14) = v35;
      *(v34 + 22) = 2080;
      v36 = sub_10028D78C(v6, v14, v50);

      *(v34 + 24) = v36;
      *(v34 + 32) = 2080;
      sub_10000A2CC(0, &qword_1003AFAD0, AudioAccessoryDevice_ptr);
      v37 = Dictionary.Keys.description.getter();
      v39 = sub_10028D78C(v37, v38, v50);

      *(v34 + 34) = v39;
      *(v34 + 42) = 2080;
      v50[2] = v21;
      v40 = v31;
      sub_100005AD4(&qword_1003AFAD8, &qword_1002DC170);
      v41 = String.init<A>(describing:)();
      v43 = sub_10028D78C(v41, v42, v50);

      *(v34 + 44) = v43;
      _os_log_impl(&_mh_execute_header, v32, v48, "%s AirPods are not in ear .... ownerDevice: %s, btwAddress: %s, aaDevice: %s aaDevice: %s", v34, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar;
    if ((*(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) & 1) == 0)
    {

      sub_100009EBC(&v53, &qword_1003A93C8, &unk_1002D9A40);
      *(v2 + v44) = 0;
      return;
    }

    v45 = swift_getKeyPath();
    __chkstk_darwin(v45);
    v50[0] = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_38;
  }

LABEL_18:
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000078E8(v23, qword_1003D2920);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Detected audio device is in ear", v26, 2u);
  }

  v27 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar;
  if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) == 1)
  {

    sub_100009EBC(&v53, &qword_1003A93C8, &unk_1002D9A40);
    *(v2 + v27) = 1;
    return;
  }

  v46 = swift_getKeyPath();
  __chkstk_darwin(v46);
  v50[0] = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_38:
  sub_100009EBC(&v53, &qword_1003A93C8, &unk_1002D9A40);
LABEL_39:
}

void sub_1000D4868(void **a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a2 + 48);
  v5 = *a1;
  *a1 = v4;
  v6 = v4;
}

uint64_t sub_1000D491C()
{
  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
  *&v57 = v0;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *(v2 + 16);
      v8 = (v2 + 32 + 112 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v7)
        {
          __break(1u);
          goto LABEL_28;
        }

        v10 = v8[5];
        v11 = *(v8 + 89);
        v12 = v8[3];
        v61 = v8[4];
        v13 = v8[1];
        v14 = v8[2];
        v57 = *v8;
        v58 = v13;
        *&v62[9] = v11;
        *v62 = v10;
        v59 = v14;
        v60 = v12;
        if (v61 == 1 && (*(&v61 + 1) & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          break;
        }

        ++v9;
        v8 += 7;
        if (v3 == v9)
        {
          goto LABEL_15;
        }
      }

      sub_10001F5C4(&v57, &v51);
      result = swift_isUniquelyReferenced_nonNull_native();
      v42 = v1;
      v43[0] = v6;
      if ((result & 1) == 0)
      {
        result = sub_1000C4CEC(0, v6[2] + 1, 1);
        v6 = v43[0];
      }

      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_1000C4CEC((v15 > 1), v16 + 1, 1);
        v6 = v43[0];
      }

      v5 = v9 + 1;
      v6[2] = v16 + 1;
      v17 = &v6[14 * v16];
      v18 = v57;
      v19 = v59;
      v17[3] = v58;
      v17[4] = v19;
      v17[2] = v18;
      v20 = v60;
      v21 = v61;
      v22 = *v62;
      *(v17 + 121) = *&v62[9];
      v17[6] = v21;
      v17[7] = v22;
      v17[5] = v20;
      v1 = v42;
    }

    while (v3 - 1 != v9);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  v23 = v6[2];
  if (v23)
  {
    v24 = v23 - 1;
    for (i = 4; ; i += 14)
    {
      v26 = *&v6[i];
      v27 = *&v6[i + 4];
      v52 = *&v6[i + 2];
      v53 = v27;
      v51 = v26;
      v28 = *&v6[i + 6];
      v29 = *&v6[i + 8];
      v30 = *&v6[i + 10];
      *&v56[9] = *(&v6[i + 11] + 1);
      v55 = v29;
      *v56 = v30;
      v54 = v28;
      v31 = v53;
      v48 = v29;
      v49 = v30;
      v50 = *&v56[16];
      v44 = v51;
      v45 = v52;
      v46 = v53;
      v47 = v28;
      sub_10001F5C4(&v51, v43);
      v32 = sub_1000DB018(v31, *(&v31 + 1));
      v61 = v48;
      *v62 = v49;
      *&v62[16] = v50;
      v57 = v44;
      v58 = v45;
      v59 = v46;
      v60 = v47;
      v62[24] = v32;
      sub_1000DA154(&v57);
      if (!v24)
      {
        break;
      }

      --v24;
    }
  }

  swift_getKeyPath();
  *&v57 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  result = swift_beginAccess();
  if (*(v33 + 1))
  {
    swift_getKeyPath();
    *&v57 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v33 + 1))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*(v33 + 8) == 1 && (*(v33 + 9) & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      swift_getKeyPath();
      *&v57 = v0;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v34 = v33[5];
      v61 = v33[4];
      *v62 = v34;
      *&v62[9] = *(v33 + 89);
      v35 = v33[1];
      v57 = *v33;
      v58 = v35;
      v36 = v33[3];
      v59 = v33[2];
      v60 = v36;
      if (*(&v57 + 1))
      {
        v37 = v59;
        v38 = v33[5];
        v55 = v33[4];
        *v56 = v38;
        *&v56[9] = *(v33 + 89);
        v39 = v33[1];
        v51 = *v33;
        v52 = v39;
        v40 = v33[3];
        v53 = v33[2];
        v54 = v40;
        sub_10001F5C4(&v51, v43);
        v41 = sub_1000DB018(v37, *(&v37 + 1));
        sub_100009EBC(&v57, &qword_1003A93C8, &unk_1002D9A40);
        swift_getKeyPath();
        v43[0] = v0;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v43[0] = v0;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        if (*(v33 + 1))
        {
          *(v33 + 104) = v41;
          v43[0] = v0;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();
        }

LABEL_30:
        __break(1u);
        return result;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t sub_1000D4E24(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000DA484;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003832A8;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DC250(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v14 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v13);
}

uint64_t sub_1000D5114(void *a1, unint64_t a2)
{
  v310 = type metadata accessor for UUID();
  v4 = *(v310 - 8);
  __chkstk_darwin(v310);
  v309 = v296 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9208 != -1)
  {
    goto LABEL_189;
  }

LABEL_2:
  v6 = type metadata accessor for Logger();
  v323 = sub_1000078E8(v6, qword_1003D2728);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating available audio devices", v9, 2u);
  }

  v10 = a1[5];
  v11 = [v10 availableInputs];
  if (v11)
  {
    v12 = v11;
    sub_10000A2CC(0, &unk_1003AED40, AVAudioSessionPortDescription_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = [v10 availableOutputs];
  if (v14)
  {
    v15 = v14;
    sub_10000A2CC(0, &unk_1003AED40, AVAudioSessionPortDescription_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  *&v342 = v13;
  sub_1000D9A34(v16);
  *&v320 = v342;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
  *&v342 = a1;
  v18 = sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *&v342 = a1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  a1[2] = &_swiftEmptySetSingleton;

  *&v342 = a1;
  KeyPath = swift_getKeyPath();
  v318 = v17;
  v20 = (a1 + v17);
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (a2 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v321 = a1;
  v317 = v18;
  if (!v21)
  {
    *&v304 = 0;
LABEL_112:
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&_mh_execute_header, v148, v149, "Did not discover headphones", v150, 2u);
    }

    sub_1000D86C4();
    goto LABEL_115;
  }

  *(&v322 + 1) = a2 & 0xC000000000000001;
  v298 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected;
  v299 = a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice;
  swift_beginAccess();
  v300 = 0;
  v22 = 0;
  *&v304 = 0;
  v316 = a2 & 0xFFFFFFFFFFFFFF8;
  v301 = AVAudioSessionPortBuiltInMic;
  v302 = (v4 + 8);
  *v303 = 0x80000001002F36E0;
  *&v23 = 136315138;
  v314 = v23;
  v297 = xmmword_1002D3160;
  v311 = xmmword_1002DBEF0;
  *&v303[8] = 0x8000100uLL;
  v319 = a2;
  *(&v320 + 1) = v21;
  do
  {
LABEL_14:
    v4 = v22;
    while (1)
    {
      if (*(&v322 + 1))
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v316 + 16))
        {
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          swift_once();
          goto LABEL_2;
        }

        v30 = *(a2 + 8 * v4 + 32);
      }

      v31 = v30;
      v29 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_177:
        v281 = v21;
        sub_1000DA0C8(&v354, &v342);

        sub_1000DA154(&v336);
LABEL_181:
        v289 = *(&v322 + 1);
        *&v342 = v322;
        *(&v342 + 1) = KeyPath;
        *&v343 = v323;
        v307 = v4;
        v308 = KeyPath;
        *(&v343 + 1) = v4;
        v344 = v320;
        *&v345 = v319;
        v290 = v281;
        *(&v345 + 1) = v281;
        *&v346 = *(&v322 + 1);
        v291 = v316;
        *(&v346 + 1) = v316;
        *&v347[0] = v315;
        v292 = v313;
        v293 = v314;
        *(&v347[0] + 1) = v314;
        *&v347[1] = v313;
        v294 = BYTE8(v312);
        BYTE8(v347[1]) = BYTE8(v312);
        *&v348 = v20;
        *(&v348 + 1) = v29;
        v349 = v331;
        v350 = v332;
        v295 = *(v31 + 73);
        v277 = v315;
        v271 = v320;
        *(v353 + 9) = v295;
        v352 = v334;
        v353[0] = v335[0];
        v351 = v333;
        sub_100009EBC(&v342, &qword_1003AFAC8, &qword_1002DC110);
        v275 = v289;
        v270 = v307;
        v268 = v308;
        v269 = v323;
        v274 = v290;
        v280 = v294;
        v279 = v292;
        v278 = v293;
        v273 = v319;
        v267 = v322;
        v272 = *(&v320 + 1);
        v276 = v291;
        goto LABEL_182;
      }

      v32 = [v30 deviceType];
      if (v32 == 1)
      {
        break;
      }

      if (v32 == 3)
      {
        if ([v31 deviceSubType])
        {
          KeyPath = v31;
          v20 = Logger.logObject.getter();
          v38 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v20, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = *&v303[8];
            *(v39 + 4) = [KeyPath deviceSubType];

            _os_log_impl(&_mh_execute_header, v20, v38, "Discovered builtIn non-standard device subType: %ld", v39, 0xCu);
            v21 = *(&v320 + 1);
          }

          else
          {
          }

          v29 = (v4 + 1);
          goto LABEL_16;
        }

        a2 = sub_1000DB960(v31);
        v52 = v51;
        *&v342 = a2;
        *(&v342 + 1) = v51;
        *&v368 = 46;
        *(&v368 + 1) = 0xE100000000000000;
        sub_10001F278();
        v53 = StringProtocol.components<A>(separatedBy:)();
        if (!v53[2])
        {
          goto LABEL_188;
        }

        *&v322 = v4 + 1;
        v54 = v53[4];
        v55 = v53[5];

        v56 = v320;

        v57 = sub_1000DA554(v54, v55, 3, v56);

        if (v57)
        {
          v58 = [objc_opt_self() currentDevice];
          v59 = [v58 name];

          v313 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v60;

          v62 = [v31 deviceID];
          if (v62)
          {
            v63 = v62;
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v315 = v65;
          }

          else
          {
            v64 = 0;
            v315 = 0;
          }

          v305 = v64;
          *(&v312 + 1) = v301;
          *&v312 = v57;
          v79 = v309;
          UUID.init()();
          v80 = UUID.uuidString.getter();
          v82 = v81;
          (*v302)(v79, v310);
          *v429 = v360[0];
          *&v429[3] = *(v360 + 3);
          *&v422[3] = *(v360 + 3);
          v307 = v82;
          v308 = v80;
          v426[0] = v80;
          v426[1] = v82;
          v426[2] = v313;
          v426[3] = v61;
          v426[4] = v64;
          v426[5] = v315;
          v426[6] = a2;
          v426[7] = v52;
          v427 = v311;
          v428 = 3;
          v430 = *(&v312 + 1);
          v431 = v312;
          v432 = 0;
          *v422 = v360[0];
          *&v368 = v80;
          *(&v368 + 1) = v82;
          *&v369 = v313;
          *(&v369 + 1) = v61;
          *&v370 = v64;
          *(&v370 + 1) = v315;
          *&v371 = a2;
          *(&v371 + 1) = v52;
          v372 = v311;
          LOBYTE(v373[0]) = 3;
          *(v373 + 1) = v360[0];
          DWORD1(v373[0]) = *(v360 + 3);
          *(&v373[0] + 1) = *(&v312 + 1);
          *&v373[1] = v312;
          BYTE8(v373[1]) = 0;
          sub_10001F5C4(v426, &v362);
          sub_1000DA154(&v368);
          *(&v304 + 1) = a2;
          swift_getKeyPath();
          v306 = v61;
          v83 = v321;
          *&v360[0] = v321;
          sub_10001F5C4(v426, &v362);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          *&v362 = v83;
          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v354 = v83[2];
          v83[2] = 0x8000000000000000;
          sub_1000D9B24(v426, isUniquelyReferenced_nonNull_native, &v362);
          v346 = v366;
          v347[0] = v367[0];
          *(v347 + 9) = *(v367 + 9);
          v342 = v362;
          v343 = v363;
          v344 = v364;
          v345 = v365;
          sub_100009EBC(&v342, &qword_1003A93C8, &unk_1002D9A40);
          v83[2] = v354;
          swift_endAccess();
          *&v360[0] = v83;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          *&v413 = v308;
          *(&v413 + 1) = v307;
          v414 = v313;
          v415 = v306;
          v416 = v305;
          v417 = v315;
          v418 = *(&v304 + 1);
          v419 = v52;
          v420 = v311;
          v421 = 3;
          v423 = *(&v312 + 1);
          v85 = v312;
          v424 = v312;
          v425 = 0;
          sub_10001F5C4(v426, &v362);
          sub_1000CE954(&v413);
          v20 = Logger.logObject.getter();
          KeyPath = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v20, KeyPath))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v20, KeyPath, "Discovered builtIn device", v86, 2u);
          }

          sub_1000DA154(v426);
          v21 = *(&v320 + 1);
          a1 = v321;
          a2 = v319;
          v29 = v322;
          goto LABEL_16;
        }

        KeyPath = v31;
        v20 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v20, v71))
        {
          goto LABEL_15;
        }

LABEL_61:
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v342 = v78;
        *v77 = v314;
        v24 = [KeyPath debugDescription];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_10028D78C(v25, v27, &v342);

        *(v77 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v20, v71, "Found no port match for %s", v77, 0xCu);
        sub_100008664(v78);
        a1 = v321;

        goto LABEL_15;
      }

      if (v32 != 4)
      {
        v20 = Logger.logObject.getter();
        KeyPath = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v20, KeyPath))
        {
          v45 = a1;
          v46 = (v4 + 1);
          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = KeyPath;
          v49 = v20;
          v50 = "Discovered device that is not a headphone or builtIn";
          goto LABEL_38;
        }

LABEL_39:

        goto LABEL_16;
      }

      if ([v31 deviceSubType] != 2 && objc_msgSend(v31, "deviceSubType") != 3)
      {
        v20 = Logger.logObject.getter();
        KeyPath = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v20, KeyPath))
        {
          goto LABEL_39;
        }

        v45 = a1;
        v46 = (v4 + 1);
        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = KeyPath;
        v49 = v20;
        v50 = "Discovered wired non-headphone device";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v49, v48, v50, v47, 2u);
        v29 = v46;
        a1 = v45;

        goto LABEL_39;
      }

      *&v322 = v4 + 1;
      v33 = [v31 deviceName];
      if (v33)
      {
        v34 = v33;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v37 = 0xEA00000000007365;
        v35 = 0x6E6F687064616548;
      }

      *&v342 = v35;
      *(&v342 + 1) = v37;
      *&v368 = 59;
      *(&v368 + 1) = 0xE100000000000000;
      sub_10001F278();
      v72 = StringProtocol.components<A>(separatedBy:)();

      if (!v72[2])
      {
        goto LABEL_186;
      }

      v74 = v72[4];
      v73 = v72[5];

      v75 = v320;

      v76 = sub_1000DA554(v74, v73, 4, v75);

      if (v76)
      {
        v90 = [v31 deviceID];
        if (v90)
        {
          v91 = v90;
          v315 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v313 = v92;
        }

        else
        {
          v315 = 0;
          v313 = 0;
        }

        v129 = sub_1000DB960(v31);
        *&v312 = v130;
        *(&v312 + 1) = v129;
        v308 = [v31 deviceSubType];
        v131 = [v76 portType];

        v132 = v76;
        v133 = v309;
        UUID.init()();
        v134 = UUID.uuidString.getter();
        v136 = v135;
        (*v302)(v133, v310);
        *v457 = v360[0];
        *&v457[3] = *(v360 + 3);
        *(&v354 + 3) = *(v360 + 3);
        v447[0] = v134;
        v447[1] = v136;
        v448 = v74;
        v449 = v73;
        v450 = v315;
        v451 = v313;
        v452 = *(&v312 + 1);
        v453 = v312;
        v454 = 4;
        v455 = v308;
        v456 = 1;
        v458 = v131;
        v459 = v132;
        v460 = 0;
        LODWORD(v354) = v360[0];
        *(&v304 + 1) = v136;
        v305 = v134;
        *&v368 = v134;
        *(&v368 + 1) = v136;
        *&v369 = v74;
        *(&v369 + 1) = v73;
        *&v370 = v315;
        *(&v370 + 1) = v313;
        *&v371 = *(&v312 + 1);
        *(&v371 + 1) = v312;
        *&v372 = 4;
        *(&v372 + 1) = v308;
        LOBYTE(v373[0]) = 1;
        *(v373 + 1) = v360[0];
        DWORD1(v373[0]) = *(v360 + 3);
        v306 = v131;
        v307 = v132;
        *(&v373[0] + 1) = v131;
        *&v373[1] = v132;
        BYTE8(v373[1]) = 0;
        sub_10001F5C4(v447, &v362);
        sub_1000DA154(&v368);
        swift_getKeyPath();
        *&v360[0] = a1;
        sub_10001F5C4(v447, &v362);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *&v362 = a1;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        sub_10021A3F8(&v362, v447);
        v346 = v366;
        v347[0] = v367[0];
        *(v347 + 9) = *(v367 + 9);
        v342 = v362;
        v343 = v363;
        v344 = v364;
        v345 = v365;
        swift_endAccess();
        sub_1000DA154(&v342);
        *&v360[0] = a1;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        v137 = v298;
        if (*(a1 + v298) == 1)
        {

          *(a1 + v137) = 1;
        }

        else
        {
          v138 = swift_getKeyPath();
          __chkstk_darwin(v138);
          v296[-2] = v321;
          LOBYTE(v296[-1]) = 1;
          *&v362 = v321;
          v139 = v304;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          *&v304 = v139;

          a1 = v321;
        }

        swift_getKeyPath();
        *&v362 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (!*(v299 + 1))
        {
          *v443 = v354;
          *&v443[3] = *(&v354 + 3);
          *&v433 = v305;
          *(&v433 + 1) = *(&v304 + 1);
          v434 = v74;
          v435 = v73;
          v436 = v315;
          v437 = v313;
          v438 = *(&v312 + 1);
          v439 = v312;
          v440 = 4;
          v441 = v308;
          v442 = 1;
          v444 = v306;
          v445 = v307;
          v446 = 0;
          sub_10001F5C4(v447, &v362);
          sub_1000CE294(&v433);
          sub_10001F5C4(v447, &v362);
          v140 = Logger.logObject.getter();
          v141 = static os_log_type_t.info.getter();
          sub_1000DA154(v447);
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            *&v362 = v143;
            *v142 = v314;
            v144 = v448;
            v145 = v449;

            v146 = sub_10028D78C(v144, v145, &v362);
            a1 = v321;

            *(v142 + 4) = v146;
            _os_log_impl(&_mh_execute_header, v140, v141, "Set ownerAudioDevice to %s", v142, 0xCu);
            sub_100008664(v143);
          }
        }

        v20 = Logger.logObject.getter();
        KeyPath = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v20, KeyPath))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&_mh_execute_header, v20, KeyPath, "Discovered wired headphones", v147, 2u);
        }

        sub_1000DA154(v447);
        v300 = 1;
        v21 = *(&v320 + 1);
        v22 = v322;
        a2 = v319;
        if (v322 == *(&v320 + 1))
        {
          goto LABEL_115;
        }

        goto LABEL_14;
      }

      KeyPath = v31;
      v20 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v71))
      {
        goto LABEL_61;
      }

LABEL_15:

      a2 = v319;
      v21 = *(&v320 + 1);
      v29 = v322;
LABEL_16:
      ++v4;
      if (v29 == v21)
      {
        if (v300)
        {
          goto LABEL_115;
        }

        goto LABEL_112;
      }
    }

    if ([v31 deviceSubType] != 2 && objc_msgSend(v31, "deviceSubType") != 3)
    {
      v20 = Logger.logObject.getter();
      KeyPath = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v20, KeyPath))
      {
        goto LABEL_39;
      }

      v45 = a1;
      v46 = (v4 + 1);
      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = KeyPath;
      v49 = v20;
      v50 = "Discovered Bluetooth non-headphone device";
      goto LABEL_38;
    }

    *&v322 = v4 + 1;
    v40 = [v31 deviceName];
    if (v40)
    {
      v41 = v40;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
    }

    else
    {
      v42 = 0xD000000000000014;
      v44 = *v303;
    }

    *&v342 = v42;
    *(&v342 + 1) = v44;
    *&v368 = 59;
    *(&v368 + 1) = 0xE100000000000000;
    sub_10001F278();
    v66 = StringProtocol.components<A>(separatedBy:)();

    if (!v66[2])
    {
      goto LABEL_187;
    }

    v68 = v66[4];
    v67 = v66[5];

    v69 = v320;

    v70 = sub_1000DA554(v68, v67, 1, v69);

    if (!v70)
    {

      KeyPath = v31;
      v20 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v71))
      {
        goto LABEL_61;
      }

      goto LABEL_15;
    }

    v87 = MRAVOutputDeviceCreateFromAVOutputDevice();
    if (v87 && (v88 = v87, v89 = [v87 isAirpodsDevice], v88, (v89 & 1) != 0))
    {
      LODWORD(v315) = 0;
    }

    else
    {
      LODWORD(v315) = 2;
    }

    v93 = [v31 deviceID];
    if (v93)
    {
      v94 = v93;
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v312 + 1) = v96;
      v313 = v95;
    }

    else
    {
      *(&v312 + 1) = 0;
      v313 = 0;
    }

    *&v312 = sub_1000DB960(v31);
    v308 = v97;
    v307 = [v70 portType];
    v98 = [v31 deviceID];
    if (v98)
    {
      v99 = v98;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;
    }

    else
    {
      v100 = 0;
      v102 = 0;
    }

    LODWORD(v306) = sub_1000DB018(v100, v102);

    v103 = v70;
    v104 = v309;
    UUID.init()();
    v105 = UUID.uuidString.getter();
    v107 = v106;
    (*v302)(v104, v310);
    *v409 = v360[0];
    *&v409[3] = *(v360 + 3);
    *(&v336 + 3) = *(v360 + 3);
    v108 = v306 & 1;
    v400[0] = v105;
    v400[1] = v107;
    v401 = v68;
    v402 = v67;
    v403 = v313;
    v404 = *(&v312 + 1);
    v405 = v312;
    v406 = v308;
    v407 = v297;
    v408 = v315;
    v410 = v307;
    v411 = v103;
    v412 = v306 & 1;
    LODWORD(v336) = v360[0];
    *(&v304 + 1) = v107;
    v305 = v105;
    *&v368 = v105;
    *(&v368 + 1) = v107;
    *&v369 = v68;
    *(&v369 + 1) = v67;
    *&v370 = v313;
    *(&v370 + 1) = *(&v312 + 1);
    *&v371 = v312;
    *(&v371 + 1) = v308;
    v372 = v297;
    LOBYTE(v373[0]) = v315;
    DWORD1(v373[0]) = *(v360 + 3);
    *(v373 + 1) = v360[0];
    *(&v373[0] + 1) = v307;
    v306 = v103;
    *&v373[1] = v103;
    v300 = v108;
    BYTE8(v373[1]) = v108;
    sub_10001F5C4(v400, &v362);
    sub_1000DA154(&v368);
    swift_getKeyPath();
    *&v360[0] = a1;
    sub_10001F5C4(v400, &v362);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *&v362 = a1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v109 = swift_isUniquelyReferenced_nonNull_native();
    *&v354 = a1[2];
    a1[2] = 0x8000000000000000;
    sub_1000D9B24(v400, v109, &v362);
    v346 = v366;
    v347[0] = v367[0];
    *(v347 + 9) = *(v367 + 9);
    v342 = v362;
    v343 = v363;
    v344 = v364;
    v345 = v365;
    sub_100009EBC(&v342, &qword_1003A93C8, &unk_1002D9A40);
    a1[2] = v354;
    swift_endAccess();
    *&v360[0] = a1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    if (*(a1 + v298) == 1)
    {
      *(a1 + v298) = 1;
    }

    else
    {
      v110 = swift_getKeyPath();
      v296[1] = v296;
      __chkstk_darwin(v110);
      v296[-2] = a1;
      LOBYTE(v296[-1]) = 1;
      *&v362 = a1;
      v111 = v304;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      *&v304 = v111;
    }

    swift_getKeyPath();
    *&v362 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v112 = v299;
    if (!*(v299 + 1))
    {
      *v396 = v336;
      *&v396[3] = *(&v336 + 3);
      *&v387 = v305;
      *(&v387 + 1) = *(&v304 + 1);
      v388 = v68;
      v389 = v67;
      v390 = v313;
      v391 = *(&v312 + 1);
      v392 = v312;
      v393 = v308;
      v394 = v297;
      v395 = v315;
      v397 = v307;
      v398 = v306;
      v399 = v300;
      sub_10001F5C4(v400, &v362);
      sub_1000CE294(&v387);
      sub_10001F5C4(v400, &v362);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.info.getter();
      sub_1000DA154(v400);
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *&v362 = v116;
        *v115 = v314;
        v117 = v401;
        v118 = v402;

        v119 = sub_10028D78C(v117, v118, &v362);

        *(v115 + 4) = v119;
        _os_log_impl(&_mh_execute_header, v113, v114, "Set ownerAudioDevice to %s", v115, 0xCu);
        sub_100008664(v116);
        a1 = v321;
      }

      v112 = v299;
    }

    swift_getKeyPath();
    *&v362 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v112 + 1))
    {

      goto LABEL_93;
    }

    swift_getKeyPath();
    *&v362 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v112 + 1))
    {
      goto LABEL_192;
    }

    v120 = v112[104];

    if (v120 & 1) == 0 && (v412)
    {
      sub_10001F5C4(v400, &v362);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.info.getter();
      sub_1000DA154(v400);
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *&v362 = v124;
        *v123 = v314;
        v125 = v401;
        v126 = v402;

        v127 = sub_10028D78C(v125, v126, &v362);

        *(v123 + 4) = v127;
        a1 = v321;
        _os_log_impl(&_mh_execute_header, v121, v122, "Set ownerAudioDevice to %s as it supports personal translation", v123, 0xCu);
        sub_100008664(v124);
      }

      *v383 = v336;
      *&v383[3] = *(&v336 + 3);
      *&v374 = v305;
      *(&v374 + 1) = *(&v304 + 1);
      v375 = v68;
      v376 = v67;
      v377 = v313;
      v378 = *(&v312 + 1);
      v379 = v312;
      v380 = v308;
      v381 = v297;
      v382 = v315;
      v384 = v307;
      v385 = v306;
      v386 = v300;
      sub_10001F5C4(v400, &v362);
      sub_1000CE294(&v374);
    }

LABEL_93:
    v20 = Logger.logObject.getter();
    KeyPath = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, KeyPath))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&_mh_execute_header, v20, KeyPath, "Discovered Bluetooth headphones", v128, 2u);
    }

    sub_1000DA154(v400);
    v300 = 1;
    v21 = *(&v320 + 1);
    v22 = v322;
    a2 = v319;
  }

  while (v322 != *(&v320 + 1));
LABEL_115:
  swift_getKeyPath();
  *&v342 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *&v342 = sub_1000D8364(v151);

  v152 = v304;
  sub_1000D8EB0(&v342);
  if (!v152)
  {

    v153 = v342;
    swift_getKeyPath();
    *&v342 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    a2 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices;
    if (sub_1000FAD14(*(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices), v153))
    {
    }

    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&_mh_execute_header, v155, v156, "newAudioDevices device array has changed", v157, 2u);
    }

    sub_1000CDFCC(v153);
    swift_getKeyPath();
    *&v342 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v158 = a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice;
    swift_beginAccess();
    v159 = *(v158 + 1);
    v362 = *v158;
    v363 = v159;
    v160 = *(v158 + 5);
    v366 = *(v158 + 4);
    v367[0] = v160;
    *(v367 + 9) = *(v158 + 89);
    v161 = *(v158 + 2);
    v365 = *(v158 + 3);
    v364 = v161;
    if (*(&v362 + 1))
    {
      *v303 = v363;
      v304 = v365;
      swift_getKeyPath();
      *&v368 = a1;
      v360[4] = v366;
      v361[0] = v367[0];
      *(v361 + 9) = *(v367 + 9);
      v360[0] = v362;
      v360[1] = v363;
      v360[2] = v364;
      v360[3] = v365;
      sub_10001F5C4(v360, &v342);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v305 = a2;
      v162 = *(*(a1 + a2) + 16);

      *&v311 = v162;
      if (v162)
      {
        v4 = 0;
        v164 = 32;
        v310 = v163;
        while (1)
        {
          if (v4 >= *(v163 + 16))
          {
            goto LABEL_185;
          }

          v169 = *(v163 + v164 + 16);
          v168 = *(v163 + v164 + 32);
          v354 = *(v163 + v164);
          v355 = v169;
          v356 = v168;
          v170 = *(v163 + v164 + 89);
          v172 = *(v163 + v164 + 64);
          v171 = *(v163 + v164 + 80);
          v357 = *(v163 + v164 + 48);
          v358 = v172;
          v359[0] = v171;
          *(v359 + 9) = v170;
          v173 = *(&v354 + 1);
          *&v322 = *(&v355 + 1);
          *(&v322 + 1) = v355;
          v319 = v354;
          *&v320 = *(&v356 + 1);
          v312 = v357;
          *(&v320 + 1) = v172;
          v313 = v171;
          *&v314 = *(&v172 + 1);
          v315 = *(&v359[0] + 1);
          v316 = v356;
          v174 = (v170 >> 56);
          v175 = HIBYTE(v170);
          swift_getKeyPath();
          *&v336 = v321;
          sub_10001F5C4(&v354, &v342);
          sub_10001F5C4(&v354, &v342);
          sub_10001F5C4(&v354, &v342);
          v176 = v173;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v177 = *(v158 + 3);
          v178 = *(v158 + 5);
          v372 = *(v158 + 4);
          v373[0] = v178;
          *(v373 + 9) = *(v158 + 89);
          v179 = *(v158 + 1);
          v368 = *v158;
          v369 = v179;
          v181 = *(v158 + 1);
          v180 = *(v158 + 2);
          v371 = *(v158 + 3);
          v370 = v180;
          v326 = v177;
          v327 = v372;
          v328[0] = *(v158 + 5);
          *(v328 + 9) = *(v158 + 89);
          v182 = v368;
          v324 = v181;
          v325 = v180;
          if (!v173)
          {
            break;
          }

          a2 = v175;
          if (!*(&v368 + 1))
          {
            sub_1000DA0C8(&v368, &v342);
            sub_1000DA154(&v354);
            a1 = v174;
LABEL_124:
            sub_1000DA154(&v354);
            *&v342 = v319;
            *(&v342 + 1) = v176;
            *&v343 = *(&v322 + 1);
            *(&v343 + 1) = v322;
            *&v344 = v316;
            *(&v344 + 1) = v320;
            v345 = v312;
            *&v346 = *(&v320 + 1);
            *(&v346 + 1) = v314;
            *&v347[0] = v313;
            *(&v347[0] + 1) = v315;
            *&v347[1] = a1;
            BYTE8(v347[1]) = a2;
            v348 = v182;
            v349 = v324;
            v350 = v325;
            *(v353 + 9) = *(v328 + 9);
            v352 = v327;
            v353[0] = v328[0];
            v351 = v326;
            v165 = &v342;
            v166 = &qword_1003AFAC8;
            v167 = &qword_1002DC110;
LABEL_125:
            sub_100009EBC(v165, v166, v167);
            goto LABEL_126;
          }

          LODWORD(v309) = v175;
          v342 = v368;
          v183 = *(v158 + 2);
          v343 = *(v158 + 1);
          v344 = v183;
          *(v347 + 9) = *(v158 + 89);
          v184 = *(v158 + 5);
          v346 = *(v158 + 4);
          v347[0] = v184;
          v345 = *(v158 + 3);
          v308 = *(&v346 + 1);
          v185 = v346;
          a1 = v174;
          if (v322 == __PAIR128__(v343, *(&v343 + 1)))
          {
            sub_1000DA0C8(&v368, &v336);
            sub_1000DA154(&v354);
            v186 = *(&v320 + 1);
            v187 = *(&v322 + 1);
            a2 = v322;
            if (*(&v320 + 1) != v185)
            {
              goto LABEL_138;
            }
          }

          else
          {
            v187 = *(&v322 + 1);
            a2 = v322;
            v188 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1000DA0C8(&v368, &v336);
            sub_1000DA154(&v354);
            v186 = *(&v320 + 1);
            if ((v188 & 1) == 0 || *(&v320 + 1) != v185)
            {
LABEL_138:
              sub_1000DA154(&v354);
              sub_100009EBC(&v342, &qword_1003A93C8, &unk_1002D9A40);
              *&v336 = v319;
              *(&v336 + 1) = v176;
              *&v337 = v187;
              *(&v337 + 1) = a2;
              *&v338 = v316;
              *(&v338 + 1) = v320;
              v339 = v312;
              *&v340 = *(&v320 + 1);
              *(&v340 + 1) = v314;
              *&v341[0] = v313;
              *(&v341[0] + 1) = v315;
              *&v341[1] = a1;
              BYTE8(v341[1]) = v309;
              v165 = &v336;
              v166 = &qword_1003A93C8;
              v167 = &unk_1002D9A40;
              goto LABEL_125;
            }
          }

          v189 = v186;
          sub_100009EBC(&v342, &qword_1003A93C8, &unk_1002D9A40);
          *&v336 = v319;
          *(&v336 + 1) = v176;
          *&v337 = v187;
          *(&v337 + 1) = a2;
          *&v338 = v316;
          *(&v338 + 1) = v320;
          v190 = *(&v312 + 1);
          a2 = v312;
          v339 = v312;
          *&v340 = v189;
          v191 = a1;
          v192 = v313;
          a1 = v314;
          *(&v340 + 1) = v314;
          *&v341[0] = v313;
          v193 = v315;
          *(&v341[0] + 1) = v315;
          v306 = v176;
          v307 = v191;
          *&v341[1] = v191;
          v194 = v309;
          BYTE8(v341[1]) = v309;
          sub_100009EBC(&v336, &qword_1003A93C8, &unk_1002D9A40);
          if (a1 == v308)
          {

            v203 = v192;
            v201 = v190;
            v200 = a2;
            v197 = *(&v322 + 1);
            v198 = v322;
            v199 = v316;
            v195 = v319;
            v196 = v306;
            v204 = v307;
            v202 = *(&v320 + 1);
            v205 = v194;
            goto LABEL_140;
          }

          sub_1000DA154(&v354);
LABEL_126:
          v163 = v310;
          ++v4;
          v164 += 112;
          if (v311 == v4)
          {
            goto LABEL_139;
          }
        }

        sub_1000DA0C8(&v368, &v342);
        sub_1000DA154(&v354);
        a2 = v175;
        a1 = v174;
        if (!*(&v182 + 1))
        {

          v342 = v319;
          v265 = a2;
          LODWORD(v309) = a2;
          v197 = *(&v322 + 1);
          *&v343 = *(&v322 + 1);
          *(&v343 + 1) = v322;
          v193 = v315;
          v199 = v316;
          *&v344 = v316;
          v266 = *(&v320 + 1);
          *(&v344 + 1) = v320;
          v201 = *(&v312 + 1);
          v200 = v312;
          v345 = v312;
          *&v346 = *(&v320 + 1);
          v307 = a1;
          v203 = v313;
          a1 = v314;
          *(&v346 + 1) = v314;
          *&v347[0] = v313;
          *(&v347[0] + 1) = v315;
          *&v347[1] = v307;
          BYTE8(v347[1]) = v265;
          sub_100009EBC(&v342, &qword_1003A93C8, &unk_1002D9A40);
          v195 = v319;
          v205 = v309;
          v198 = v322;
          v202 = v266;
          v204 = v307;
          v196 = 0;
          goto LABEL_140;
        }

        goto LABEL_124;
      }

LABEL_139:

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v198 = 0;
      v199 = 0;
      *&v320 = 0;
      v200 = 0;
      v201 = 0;
      v202 = 0;
      a1 = 0;
      v203 = 0;
      v193 = 0;
      v204 = 0;
      v205 = 0;
LABEL_140:
      *&v368 = v195;
      *(&v368 + 1) = v196;
      *&v369 = v197;
      *(&v369 + 1) = v198;
      *&v370 = v199;
      *(&v370 + 1) = v320;
      *&v371 = v200;
      *(&v371 + 1) = v201;
      *&v372 = v202;
      *(&v372 + 1) = a1;
      *&v373[0] = v203;
      *(&v373[0] + 1) = v193;
      *&v373[1] = v204;
      BYTE8(v373[1]) = v205;
      a1 = v321;
      sub_1000CE294(&v368);
      sub_1000DA0C8(&v362, &v342);

      v206 = Logger.logObject.getter();
      v207 = static os_log_type_t.default.getter();
      sub_100009EBC(&v362, &qword_1003A93C8, &unk_1002D9A40);

      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        *(&v322 + 1) = swift_slowAlloc();
        *&v331 = *(&v322 + 1);
        *v208 = 136315650;
        v209 = *&v303[8];

        v210 = sub_10028D78C(*v303, v209, &v331);

        *(v208 + 4) = v210;
        *(v208 + 12) = 2080;
        swift_getKeyPath();
        *&v342 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v211 = *(v158 + 1);
        v342 = *v158;
        v343 = v211;
        v212 = *(v158 + 5);
        v346 = *(v158 + 4);
        v347[0] = v212;
        *(v347 + 9) = *(v158 + 89);
        v213 = *(v158 + 3);
        v344 = *(v158 + 2);
        v345 = v213;
        v214 = *(&v343 + 1);
        v215 = v343;
        if (*(&v342 + 1))
        {
          v354 = v342;
          v355 = v343;
          v216 = *(v158 + 5);
          v358 = *(v158 + 4);
          v359[0] = v216;
          *(v359 + 9) = *(v158 + 89);
          v217 = *(v158 + 3);
          v356 = *(v158 + 2);
          v357 = v217;
          sub_1000DA0C8(&v342, &v336);

          sub_100009EBC(&v354, &qword_1003A93C8, &unk_1002D9A40);
        }

        else
        {
          v354 = v342;
          v355 = v343;
          v219 = *(v158 + 5);
          v358 = *(v158 + 4);
          v359[0] = v219;
          *(v359 + 9) = *(v158 + 89);
          v220 = *(v158 + 3);
          v356 = *(v158 + 2);
          v357 = v220;
          sub_1000DA0C8(&v342, &v336);
          sub_100009EBC(&v354, &qword_1003A93C8, &unk_1002D9A40);
          v214 = 0xE700000000000000;
          v215 = 0x6E776F6E6B6E75;
        }

        v221 = sub_10028D78C(v215, v214, &v331);

        *(v208 + 14) = v221;
        *(v208 + 22) = 2080;
        swift_getKeyPath();
        *&v354 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v222 = *(v158 + 3);
        v356 = *(v158 + 2);
        v357 = v222;
        v223 = *(v158 + 5);
        v358 = *(v158 + 4);
        v359[0] = v223;
        *(v359 + 9) = *(v158 + 89);
        v224 = *(v158 + 1);
        v354 = *v158;
        v355 = v224;
        v226 = *(&v356 + 1);
        v225 = v356;
        if (!*(&v354 + 1))
        {
          v336 = v354;
          v337 = *(v158 + 1);
          v338 = v356;
          v228 = *(v158 + 4);
          v339 = *(v158 + 3);
          v340 = v228;
          v341[0] = *(v158 + 5);
          *(v341 + 9) = *(v158 + 89);
          sub_1000DA0C8(&v354, &v324);
          sub_100009EBC(&v336, &qword_1003A93C8, &unk_1002D9A40);
          v218 = v305;
          goto LABEL_149;
        }

        v336 = v354;
        v337 = *(v158 + 1);
        v338 = v356;
        v227 = *(v158 + 4);
        v339 = *(v158 + 3);
        v340 = v227;
        v341[0] = *(v158 + 5);
        *(v341 + 9) = *(v158 + 89);
        sub_1000DA0C8(&v354, &v324);

        sub_100009EBC(&v336, &qword_1003A93C8, &unk_1002D9A40);
        v218 = v305;
        if (!v226)
        {
LABEL_149:
          v225 = 0x6E776F6E6B6E75;

          v226 = 0xE700000000000000;
        }

        v229 = sub_10028D78C(v225, v226, &v331);

        *(v208 + 24) = v229;
        _os_log_impl(&_mh_execute_header, v206, v207, "ownerAudioDevice name: %s was updated to name: %s deviceID: %s", v208, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v218 = v305;
      }

      v231 = sub_1000CE57C(&v342);
      if (v230[1])
      {
        v232 = *(&v304 + 1);
        v230[6] = v304;
        v230[7] = v232;
      }

      (v231)(&v342, 0);
      swift_getKeyPath();
      *&v342 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v158 + 1) || (swift_getKeyPath(), *&v342 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(a1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected) != 1))
      {
        sub_100009EBC(&v362, &qword_1003A93C8, &unk_1002D9A40);
      }

      else
      {
        v233 = Logger.logObject.getter();
        v234 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v233, v234))
        {
          v235 = swift_slowAlloc();
          *v235 = 0;
          _os_log_impl(&_mh_execute_header, v233, v234, "ownerAudioDevice is nil and is being set to the first available connected headset", v235, 2u);
        }

        swift_getKeyPath();
        *&v342 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v236 = *(*(a1 + v218) + 16);
        v237 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__builtInAudioDevice;

        v309 = v236;
        if (v236)
        {
          v239 = 0;
          v240 = (v321 + v237);
          v241 = 32;
          v310 = v238;
          while (v239 < *(v238 + 16))
          {
            v243 = *(v238 + v241 + 16);
            v242 = *(v238 + v241 + 32);
            v336 = *(v238 + v241);
            v337 = v243;
            v338 = v242;
            v244 = *(v238 + v241 + 89);
            v246 = *(v238 + v241 + 64);
            v245 = *(v238 + v241 + 80);
            v339 = *(v238 + v241 + 48);
            v340 = v246;
            v341[0] = v245;
            *(v341 + 9) = v244;
            KeyPath = *(&v336 + 1);
            v4 = *(&v337 + 1);
            v323 = v337;
            v320 = v338;
            v21 = *(&v339 + 1);
            v319 = v339;
            *&v322 = v336;
            *(&v322 + 1) = v246;
            v315 = v245;
            v316 = *(&v246 + 1);
            v313 = v244 >> 56;
            *&v314 = *(&v341[0] + 1);
            DWORD2(v312) = HIBYTE(v244);
            swift_getKeyPath();
            *&v324 = v321;
            sub_10001F5C4(&v336, &v342);
            sub_10001F5C4(&v336, &v342);
            sub_10001F5C4(&v336, &v342);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v247 = v240[3];
            v248 = v240[5];
            v358 = v240[4];
            v359[0] = v248;
            *(v359 + 9) = *(v240 + 89);
            v249 = v240[1];
            v354 = *v240;
            v355 = v249;
            v250 = v240[1];
            v251 = v240[3];
            v356 = v240[2];
            v357 = v251;
            v333 = v247;
            v334 = v358;
            v335[0] = v240[5];
            v31 = &v331;
            *(v335 + 9) = *(v240 + 89);
            v29 = *(&v354 + 1);
            v20 = v354;
            v331 = v250;
            v332 = v356;
            if (KeyPath)
            {
              if (!*(&v354 + 1))
              {
                goto LABEL_177;
              }

              *&v312 = v21;
              v342 = v354;
              v252 = v240[2];
              v343 = v240[1];
              v344 = v252;
              *(v347 + 9) = *(v240 + 89);
              v253 = v240[5];
              v346 = v240[4];
              v347[0] = v253;
              v345 = v240[3];
              v254 = v346;
              v255 = v322;
              v307 = v4;
              v308 = KeyPath;
              if (__PAIR128__(v4, v323) == v343)
              {
                sub_1000DA0C8(&v354, &v324);
                sub_1000DA154(&v336);
              }

              else
              {
                v256 = _stringCompareWithSmolCheck(_:_:expecting:)();
                sub_1000DA0C8(&v354, &v324);
                sub_1000DA154(&v336);
                if ((v256 & 1) == 0)
                {
                  goto LABEL_178;
                }
              }

              if (*(&v322 + 1) != v254)
              {
LABEL_178:

                sub_100009EBC(&v342, &qword_1003A93C8, &unk_1002D9A40);
                *&v324 = v255;
                *(&v324 + 1) = KeyPath;
                *&v325 = v323;
                *(&v325 + 1) = v4;
                v282 = *(&v320 + 1);
                v326 = v320;
                v283 = v319;
                v284 = v312;
                *&v327 = v319;
                *(&v327 + 1) = v312;
                v277 = v315;
                v285 = v316;
                *&v328[0] = *(&v322 + 1);
                *(&v328[0] + 1) = v316;
                v286 = v313;
                v287 = v314;
                *&v328[1] = v315;
                *(&v328[1] + 1) = v314;
                v329 = v313;
                v288 = BYTE8(v312);
                v330 = BYTE8(v312);
                v269 = v323;
                sub_100009EBC(&v324, &qword_1003A93C8, &unk_1002D9A40);
                v274 = v284;
                v271 = v320;
                v280 = v288;
                v279 = v286;
                v278 = v287;
                v273 = v283;
                v272 = v282;
                v270 = v307;
                v268 = v308;
                v276 = v285;
                a1 = v321;
                v275 = *(&v322 + 1);
                v267 = v322;
                goto LABEL_183;
              }

              sub_100009EBC(&v342, &qword_1003A93C8, &unk_1002D9A40);
              *&v324 = v255;
              *(&v324 + 1) = KeyPath;
              *&v325 = v323;
              *(&v325 + 1) = v4;
              v326 = v320;
              *&v311 = *(&v254 + 1);
              v257 = v319;
              *&v327 = v319;
              *(&v327 + 1) = v312;
              v258 = v315;
              v259 = v316;
              *&v328[0] = *(&v322 + 1);
              *(&v328[0] + 1) = v316;
              v260 = v313;
              v261 = v314;
              *&v328[1] = v315;
              *(&v328[1] + 1) = v314;
              v329 = v313;
              v262 = BYTE8(v312);
              v330 = BYTE8(v312);
              sub_100009EBC(&v324, &qword_1003A93C8, &unk_1002D9A40);
              if (v259 != v311)
              {

                v272 = *(&v320 + 1);
                a1 = v321;
                v275 = *(&v322 + 1);
                v267 = v322;
                v270 = v307;
                v268 = v308;
                v273 = v257;
                v276 = v259;
                v277 = v258;
                v278 = v261;
                v279 = v260;
                v280 = v262;
                v274 = v312;
                v271 = v320;
                v269 = v323;
                goto LABEL_183;
              }

              sub_1000DA154(&v336);
            }

            else
            {
              sub_1000DA0C8(&v354, &v342);
              sub_1000DA154(&v336);
              if (v29)
              {
                v281 = v21;

                goto LABEL_181;
              }

              sub_1000DA154(&v336);
              v342 = v322;
              *&v343 = v323;
              *(&v343 + 1) = v4;
              v344 = v320;
              *&v345 = v319;
              *(&v345 + 1) = v21;
              *&v346 = *(&v322 + 1);
              *(&v346 + 1) = v316;
              *&v347[0] = v315;
              *(&v347[0] + 1) = v314;
              *&v347[1] = v313;
              BYTE8(v347[1]) = BYTE8(v312);
              sub_100009EBC(&v342, &qword_1003A93C8, &unk_1002D9A40);
            }

            ++v239;
            v241 += 112;
            v238 = v310;
            if (v309 == v239)
            {
              goto LABEL_174;
            }
          }

          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

LABEL_174:

        v267 = 0;
        v268 = 0;
        v269 = 0;
        v270 = 0;
        v271 = 0;
        v272 = 0;
        v273 = 0;
        v274 = 0;
        v275 = 0;
        v276 = 0;
        v277 = 0;
        v278 = 0;
        v279 = 0;
        v280 = 0;
LABEL_182:
        a1 = v321;
LABEL_183:
        *&v342 = v267;
        *(&v342 + 1) = v268;
        *&v343 = v269;
        *(&v343 + 1) = v270;
        *&v344 = v271;
        *(&v344 + 1) = v272;
        *&v345 = v273;
        *(&v345 + 1) = v274;
        *&v346 = v275;
        *(&v346 + 1) = v276;
        *&v347[0] = v277;
        *(&v347[0] + 1) = v278;
        *&v347[1] = v279;
        BYTE8(v347[1]) = v280;
        sub_1000CE294(&v342);
        sub_100009EBC(&v362, &qword_1003A93C8, &unk_1002D9A40);
      }
    }

    swift_getKeyPath();
    *&v360[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v264 = sub_1000D83F4(v263);

    return sub_1000CDFCC(v264);
  }

LABEL_193:

  __break(1u);
  return result;
}

char *sub_1000D8364(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1002BF814(*(a1 + 16), 0);
  v4 = sub_1001F3AFC(&v6, v3 + 32, v2, a1);
  sub_10000C1D0(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

char *sub_1000D83F4(char *a1)
{
  v2 = a1;
  v17 = a1;
  swift_getKeyPath();
  *&v20 = v1;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;
  v5 = v3[5];
  v24 = v3[4];
  v25[0] = v5;
  *(v25 + 9) = *(v3 + 89);
  v6 = v3[3];
  v22 = v3[2];
  v23 = v6;
  v7 = v20;
  v8 = v21;
  *(v29 + 9) = *(v25 + 9);
  v28 = v24;
  v29[0] = v5;
  v26 = v22;
  v27 = v6;
  if (*(&v20 + 1))
  {
    v9 = *(v2 + 2);
    if (v9)
    {
      v10 = 0;
      for (i = v2 + 56; ; i += 14)
      {
        v12 = *(i - 1) == v21 && *i == *(&v21 + 1);
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          return v2;
        }
      }

      sub_1000DA0C8(&v20, v18);
      sub_1000D8614(v10, v16);
      sub_1000DA154(v16);
      v2 = v17;
      v13 = *(v17 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v13 >= *(v2 + 3) >> 1)
      {
        v2 = sub_10028CBB8(isUniquelyReferenced_nonNull_native, (v13 + 1), 1, v2);
        v17 = v2;
      }

      v18[4] = v28;
      v19[0] = v29[0];
      *(v19 + 9) = *(v29 + 9);
      v18[2] = v26;
      v18[3] = v27;
      v18[0] = v7;
      v18[1] = v8;
      sub_1002B5360(v13, v13, 1, v18);
      sub_100009EBC(&v20, &qword_1003A93C8, &unk_1002D9A40);
    }
  }

  return v2;
}

uint64_t sub_1000D8614@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000A3944(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 112 * a1);
    v9 = v8[7];
    v10 = v7 - 1;
    a2[4] = v8[6];
    a2[5] = v9;
    *(a2 + 89) = *(v8 + 121);
    v11 = v8[3];
    *a2 = v8[2];
    a2[1] = v11;
    v12 = v8[5];
    a2[2] = v8[4];
    a2[3] = v12;
    result = memmove(v8 + 2, v8 + 9, 112 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000D86C4()
{
  v1 = v0;
  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2728);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Clearing headset connection", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v9[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar))
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    *&v9[0] = v1;
    sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAudioDeviceInEar) = 0;
  }

  memset(v9, 0, 105);
  return sub_1000CE294(v9);
}

uint64_t sub_1000D8984(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v17[0] = v4;
  *(v17 + 9) = *(a1 + 89);
  v5 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v5;
  v6 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v6;
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D2770);
  sub_10001F5C4(a1, v15);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  sub_1000DA154(a1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10028D78C(*(a1 + 16), *(a1 + 24), v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "setOwnerDevice: ownerAudioDevice set to %s", v10, 0xCu);
    sub_100008664(v11);
  }

  sub_10001F5C4(a1, v15);
  sub_1000CE294(v16);
  swift_getKeyPath();
  v15[0] = v2;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = sub_1000D83F4(v12);

  return sub_1000CDFCC(v13);
}

unint64_t sub_1000D8BAC()
{
  v1 = v0;
  swift_getKeyPath();
  *&v28[0] = v0;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v3 = v2[1];
  v28[0] = *v2;
  v4 = v2[3];
  v29 = v2[2];
  v30 = v4;
  v5 = v2[5];
  v31 = v2[4];
  v32[0] = v5;
  *(v32 + 9) = *(v2 + 89);
  v28[1] = v3;
  v6 = v29;
  if (!*(&v28[0] + 1))
  {
    v22 = *&v28[0];
    v23 = v2[1];
    v24 = v29;
LABEL_9:
    v19 = v2[4];
    v25 = v2[3];
    v26 = v19;
    v27[0] = v2[5];
    *(v27 + 9) = *(v2 + 89);
    sub_1000DA0C8(v28, v21);
    sub_100009EBC(&v22, &qword_1003A93C8, &unk_1002D9A40);
LABEL_11:
    v18 = 0;
    v17 = 1;
    return v18 | (v17 << 32);
  }

  if (!*(&v29 + 1))
  {
    v22 = v28[0];
    v23 = v2[1];
    v24 = v29;
    goto LABEL_9;
  }

  v22 = v28[0];
  v23 = v2[1];
  v24 = v29;
  v7 = v2[4];
  v25 = v2[3];
  v26 = v7;
  v27[0] = v2[5];
  *(v27 + 9) = *(v2 + 89);
  sub_1000DA0C8(v28, v21);

  sub_100009EBC(&v22, &qword_1003A93C8, &unk_1002D9A40);
  v21[0] = v6;
  sub_10001F278();
  v8 = StringProtocol.components<A>(separatedBy:)();

  if (!v8[2] || (v10 = v8[4], v9 = v8[5], , , swift_getKeyPath(), *&v21[0] = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v11 = *(v1 + 56), !*(v11 + 16)) || (, v12 = sub_10028DD34(v10, v9), v14 = v13, , (v14 & 1) == 0))
  {

    goto LABEL_11;
  }

  v15 = *(*(v11 + 56) + 8 * v12);

  v16 = [v15 productID];

  v17 = 0;
  v18 = v16;
  return v18 | (v17 << 32);
}

Swift::Int sub_1000D8EB0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002C11CC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000D8F1C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000D8F1C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000D9134(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000D9014(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000D9014(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 112 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 - 96);
      v11 = result == *(v10 + 16) && *(v10 - 88) == *(v10 + 24);
      if (v11 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 112;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = (v10 - 112);
      v23 = *(v10 + 64);
      *v24 = *(v10 + 80);
      *&v24[9] = *(v10 + 89);
      v19 = *v10;
      v20 = *(v10 + 16);
      v21 = *(v10 + 32);
      v22 = *(v10 + 48);
      v13 = *(v10 - 96);
      *v10 = *(v10 - 112);
      *(v10 + 16) = v13;
      v14 = *(v10 - 80);
      v15 = *(v10 - 64);
      v16 = *(v10 - 16);
      *(v10 + 80) = *(v10 - 32);
      *(v10 + 96) = v16;
      v17 = *(v10 - 48);
      *(v10 + 48) = v15;
      *(v10 + 64) = v17;
      *(v10 + 32) = v14;
      v12[4] = v23;
      v12[5] = *v24;
      *(v12 + 89) = *&v24[9];
      *v12 = v19;
      v12[1] = v20;
      v10 -= 112;
      v12[2] = v21;
      v12[3] = v22;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000D9134(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  __dst = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1002C08D4(v8);
      v8 = result;
    }

    v87 = v8 + 16;
    v88 = *(v8 + 2);
    if (v88 >= 2)
    {
      while (1)
      {
        v89 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v90 = &v8[16 * v88];
        v5 = *v90;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1000D979C((v89 + 112 * *v90), (v89 + 112 * *v91), (v89 + 112 * v92), __dst);
        if (v4)
        {
        }

        if (v92 < v5)
        {
          goto LABEL_130;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_131;
        }

        *v90 = v5;
        *(v90 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_132;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        v5 = a3;
        if (v88 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 112 * v7;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = *v5 + 112 * v9;
      result = *(v14 + 16);
      if (result == v12 && *(v14 + 24) == v13)
      {
        v16 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v17 = (v10 + 112 * v9 + 248);
        do
        {
          result = *(v17 - 15);
          if (result == *(v17 - 1) && *(v17 - 14) == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          v17 += 14;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 112 * v7 - 112;
          v20 = v9;
          v21 = 112 * v9;
          v22 = v7;
          v94 = v20;
          do
          {
            if (v20 != --v22)
            {
              v24 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v23 = (v24 + v19);
              v107 = *(v24 + v21 + 64);
              *v109 = *(v24 + v21 + 80);
              *&v109[9] = *(v24 + v21 + 89);
              v99 = *(v24 + v21);
              v101 = *(v24 + v21 + 16);
              v103 = *(v24 + v21 + 32);
              v105 = *(v24 + v21 + 48);
              result = memmove((v24 + v21), (v24 + v19), 0x70uLL);
              v23[4] = v107;
              v23[5] = *v109;
              *(v23 + 89) = *&v109[9];
              *v23 = v99;
              v23[1] = v101;
              v23[2] = v103;
              v23[3] = v105;
            }

            ++v20;
            v19 -= 112;
            v21 += 112;
          }

          while (v20 < v22);
          v9 = v94;
        }
      }
    }

    v25 = v5[1];
    if (v7 < v25)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v25)
        {
          v26 = v5[1];
        }

        else
        {
          v26 = v9 + a4;
        }

        if (v26 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v26)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10028C748(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_10028C748((v40 > 1), v41 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v7;
    v44 = *__dst;
    if (!*__dst)
    {
      goto LABEL_143;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_75:
          if (v49)
          {
            goto LABEL_121;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_124;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_128;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_89:
        if (v67)
        {
          goto LABEL_123;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_126;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_96:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
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
LABEL_130:
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v5)
        {
          goto LABEL_140;
        }

        v84 = *&v8[16 * v83 + 32];
        v85 = *&v8[16 * v45 + 40];
        sub_1000D979C((*v5 + 112 * v84), (*v5 + 112 * *&v8[16 * v45 + 32]), (*v5 + 112 * v85), v44);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1002C08D4(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v86 = &v8[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_1002C0848(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_119;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_120;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_122;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_125;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_129;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v27 = *v5;
  v28 = *v5 + 112 * v7;
  v95 = v9;
  v29 = v9 - v7;
LABEL_44:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 - 96) == *(v31 + 16) && *(v31 - 88) == *(v31 + 24);
    if (v32 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v28 += 112;
      --v29;
      if (v7 != v26)
      {
        goto LABEL_44;
      }

      v7 = v26;
      v5 = a3;
      v9 = v95;
      goto LABEL_55;
    }

    if (!v27)
    {
      break;
    }

    v33 = (v31 - 112);
    v108 = *(v31 + 64);
    *v110 = *(v31 + 80);
    *&v110[9] = *(v31 + 89);
    v100 = *v31;
    v102 = *(v31 + 16);
    v104 = *(v31 + 32);
    v106 = *(v31 + 48);
    v34 = *(v31 - 96);
    *v31 = *(v31 - 112);
    *(v31 + 16) = v34;
    v35 = *(v31 - 80);
    v36 = *(v31 - 64);
    v37 = *(v31 - 16);
    *(v31 + 80) = *(v31 - 32);
    *(v31 + 96) = v37;
    v38 = *(v31 - 48);
    *(v31 + 48) = v36;
    *(v31 + 64) = v38;
    *(v31 + 32) = v35;
    v33[4] = v108;
    v33[5] = *v110;
    *(v33 + 89) = *&v110[9];
    *v33 = v100;
    v33[1] = v102;
    v31 -= 112;
    v33[2] = v104;
    v33[3] = v106;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1000D979C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 112;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 112;
  if (v9 < v11)
  {
    v12 = 112 * v9;
    if (__dst != __src || &__src[v12] <= __dst)
    {
      memmove(__dst, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 112 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v14 = *(v4 + 2) == *(v6 + 2) && *(v4 + 3) == *(v6 + 3);
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 112;
      if (!v14)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 112;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v15 = v4;
    v14 = v7 == v4;
    v4 += 112;
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v15, 0x70uLL);
    goto LABEL_17;
  }

  v16 = 112 * v11;
  if (__dst != a2 || &a2[v16] <= __dst)
  {
    memmove(__dst, a2, 112 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 112 && v6 > v7)
  {
    do
    {
      v5 -= 112;
      while (1)
      {
        v17 = *(v6 - 12) == *(v13 - 12) && *(v6 - 11) == *(v13 - 11);
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v18 = (v13 - 112);
        if (v5 + 112 != v13)
        {
          memmove(v5, v13 - 112, 0x70uLL);
        }

        v5 -= 112;
        v13 -= 112;
        if (v18 <= v4)
        {
          v13 = v18;
          goto LABEL_41;
        }
      }

      v19 = v6 - 112;
      if (v5 + 112 != v6)
      {
        memmove(v5, v6 - 112, 0x70uLL);
      }

      if (v13 <= v4)
      {
        break;
      }

      v6 -= 112;
    }

    while (v19 > v7);
    v6 = v19;
  }

LABEL_41:
  v20 = 112 * ((v13 - v4) / 112);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20);
  }

  return 1;
}

uint64_t sub_1000D9A34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1002B5AF0();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1002C0CE4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1000D9B24(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  Hasher.init(_seed:)();
  v8 = a1[2];
  v9 = a1[3];
  String.hash(into:)();
  v60 = a1[8];
  Hasher._combine(_:)(v60);
  v58 = a1;
  v10 = a1[9];
  Hasher._combine(_:)(v10);
  v11 = Hasher._finalize()();
  v12 = v7 + 56;
  v13 = -1 << *(v7 + 32);
  v14 = v11 & ~v13;
  v59 = v3;
  if ((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v55 = a2;
    v15 = ~v13;
    v54 = v7;
    v16 = *(v7 + 48);
    while (1)
    {
      v17 = (v16 + 112 * v14);
      v19 = v17[8];
      v18 = v17[9];
      v20 = v17[2] == v8 && v17[3] == v9;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v19 == v60 && v18 == v10)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 0;
        v4 = v59;
        a2 = v55;
        v7 = v54;
        v23 = 1;
        goto LABEL_16;
      }
    }

    v23 = 0;
    v22 = 1;
    v4 = v59;
    a2 = v55;
    v7 = v54;
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

LABEL_16:
  v24 = *(v7 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v26 = *(v7 + 24);
  if (v26 >= v25 && (a2 & 1) != 0)
  {
    if (v22)
    {
LABEL_20:
      v27 = 112 * v14;
LABEL_43:
      v47 = (*(*v4 + 48) + v27);
      v48 = v47[5];
      a3[4] = v47[4];
      a3[5] = v48;
      *(a3 + 89) = *(v47 + 89);
      v49 = v47[1];
      *a3 = *v47;
      a3[1] = v49;
      v50 = v47[3];
      a3[2] = v47[2];
      a3[3] = v50;
      v51 = v58[1];
      *v47 = *v58;
      v47[1] = v51;
      *(v47 + 89) = *(v58 + 89);
      v52 = v58[5];
      v47[4] = v58[4];
      v47[5] = v52;
      v53 = v58[3];
      v47[2] = v58[2];
      v47[3] = v53;
      return;
    }

    goto LABEL_40;
  }

  if (a2)
  {
    v56 = v22;
    sub_10021ABB0(v25);
  }

  else
  {
    if (v26 >= v25)
    {
      sub_10021BEA8();
      if (v22)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }

    v56 = v22;
    sub_10021C42C(v25);
  }

  v28 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v60);
  Hasher._combine(_:)(v10);
  v29 = Hasher._finalize()();
  v30 = v28 + 56;
  v31 = -1 << *(v28 + 32);
  v14 = v29 & ~v31;
  if (((*(v28 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_39:
    v4 = v59;
    if (v56)
    {
      goto LABEL_46;
    }

LABEL_40:
    v39 = *v4;
    *(*v4 + 8 * (v14 >> 6) + 56) |= 1 << v14;
    v40 = (*(v39 + 48) + 112 * v14);
    v41 = v58[1];
    *v40 = *v58;
    v40[1] = v41;
    *(v40 + 89) = *(v58 + 89);
    v42 = v58[5];
    v40[4] = v58[4];
    v40[5] = v42;
    v43 = v58[3];
    v40[2] = v58[2];
    v40[3] = v43;
    v44 = *(v39 + 16);
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (!v45)
    {
      *(v39 + 16) = v46;
      *a3 = 0u;
      a3[1] = 0u;
      a3[2] = 0u;
      a3[3] = 0u;
      a3[4] = 0u;
      a3[5] = 0u;
      *(a3 + 89) = 0u;
      return;
    }

    goto LABEL_45;
  }

  v32 = ~v31;
  v33 = *(v28 + 48);
  while (1)
  {
    v27 = 112 * v14;
    v34 = (v33 + 112 * v14);
    v36 = v34[8];
    v35 = v34[9];
    v37 = v34[2] == v8 && v34[3] == v9;
    if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v36 == v60 && v35 == v10)
    {
      break;
    }

    v14 = (v14 + 1) & v32;
    if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v4 = v59;
  if (v56)
  {
    goto LABEL_43;
  }

LABEL_46:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000D9EC8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_10028DD34(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_10000A2CC(0, &qword_1003AFAD0, AudioAccessoryDevice_ptr);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1000DA090(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000CCE8C(v1);
}

uint64_t sub_1000DA0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003A93C8, &unk_1002D9A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1000DA1D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 3);
  v48 = *(a1 + 2);
  v49 = v7;
  v9 = a1[8];
  v8 = a1[9];
  v47[0] = *(a1 + 5);
  *(v47 + 9) = *(a1 + 89);
  v11 = *a2;
  v10 = a2[1];
  if (v4)
  {
    if (v10)
    {
      v33 = *a2;
      v34 = v10;
      v12 = *(a2 + 4);
      v37 = *(a2 + 3);
      v38 = v12;
      v39[0] = *(a2 + 5);
      *(v39 + 9) = *(a2 + 89);
      v13 = *(a2 + 2);
      v35 = *(a2 + 1);
      v36 = v13;
      v14 = *(&v12 + 1);
      v15 = v12;
      if (__PAIR128__(v5, v6) == v35)
      {
        sub_1000DA0C8(a1, v27);
        sub_1000DA0C8(a2, v27);
        sub_100009EBC(&v33, &qword_1003A93C8, &unk_1002D9A40);
        if (v9 != v15)
        {
          v16 = 1;
LABEL_11:
          v27[0] = v3;
          v27[1] = v4;
          v27[2] = v6;
          v27[3] = v5;
          v28 = v48;
          v29 = v49;
          v30 = v9;
          v31 = v8;
          v32[0] = v47[0];
          *(v32 + 9) = *(v47 + 9);
          sub_100009EBC(v27, &qword_1003A93C8, &unk_1002D9A40);
          return v16;
        }
      }

      else
      {
        v26 = v38;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000DA0C8(a1, v27);
        sub_1000DA0C8(a2, v27);
        sub_100009EBC(&v33, &qword_1003A93C8, &unk_1002D9A40);
        v16 = 1;
        if ((v23 & 1) == 0)
        {
          goto LABEL_11;
        }

        v14 = *(&v26 + 1);
        if (v9 != v26)
        {
          goto LABEL_11;
        }
      }

      v16 = v8 != v14;
      goto LABEL_11;
    }
  }

  else if (!v10)
  {
    v33 = v3;
    v34 = 0;
    *&v35 = v6;
    *(&v35 + 1) = v5;
    v24 = *(a1 + 3);
    v36 = *(a1 + 2);
    v37 = v24;
    *&v38 = v9;
    *(&v38 + 1) = v8;
    v39[0] = *(a1 + 5);
    *(v39 + 9) = *(a1 + 89);
    sub_1000DA0C8(a1, v27);
    sub_1000DA0C8(a2, v27);
    sub_100009EBC(&v33, &qword_1003A93C8, &unk_1002D9A40);
    return 0;
  }

  v33 = v3;
  v34 = v4;
  *&v35 = v6;
  *(&v35 + 1) = v5;
  v17 = *(a1 + 3);
  v36 = *(a1 + 2);
  v37 = v17;
  *&v38 = v9;
  *(&v38 + 1) = v8;
  v39[0] = *(a1 + 5);
  *(v39 + 9) = *(a1 + 89);
  v40 = v11;
  v41 = v10;
  v18 = *(a2 + 2);
  v42 = *(a2 + 1);
  v43 = v18;
  v19 = *(a2 + 3);
  v20 = *(a2 + 4);
  v21 = *(a2 + 5);
  *(v46 + 9) = *(a2 + 89);
  v45 = v20;
  v46[0] = v21;
  v44 = v19;
  sub_1000DA0C8(a1, v27);
  sub_1000DA0C8(a2, v27);
  sub_100009EBC(&v33, &qword_1003AFAC8, &qword_1002DC110);
  return 1;
}

uint64_t sub_1000DA444()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000DA48C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DA4F8(_OWORD *a1)
{
  v1 = a1[5];
  v6[4] = a1[4];
  v7[0] = v1;
  *(v7 + 9) = *(a1 + 89);
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_1000DA0C8(v6, &v5);
  return sub_1000CE954(v6);
}

void *sub_1000DA554(unint64_t a1, uint64_t a2, uint64_t a3, AVAudioSessionPort a4)
{
  v95 = a1;
  v96 = a2;
  v7 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v7 - 8);
  v9 = &v91 - v8;
  if (!a4)
  {
    return 0;
  }

  v94 = a4;
  if (a3 == 4)
  {
    v38 = a4 & 0xFFFFFFFFFFFFFF8;
    if (a4 >> 62)
    {
      v92 = _CocoaArrayWrapper.endIndex.getter();
      if (!v92)
      {
        return 0;
      }
    }

    else
    {
      v92 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v92)
      {
        return 0;
      }
    }

    v39 = 0;
    v91 = AVAudioSessionPortHeadsetMic;
    v93 = a4 & 0xC000000000000001;
    while (1)
    {
      if (v93)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *(v38 + 16))
        {
          goto LABEL_100;
        }

        v46 = a4[v39 + 4];
      }

      v21 = v46;
      v47 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v48 = [v46 portType];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
      if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
      {
        break;
      }

      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v4)
      {
        goto LABEL_42;
      }

LABEL_43:

      ++v39;
      v27 = v47 == v92;
      v38 = a4 & 0xFFFFFFFFFFFFFF8;
      if (v27)
      {
        v53 = 0;
        v91 = AVAudioSessionPortHeadphones;
        a4 = v92;
        while (1)
        {
          if (v93)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v53 >= *(v38 + 16))
            {
              goto LABEL_106;
            }

            v60 = v94[v53 + 4];
          }

          v21 = v60;
          v61 = (v53 + 1);
          if (__OFADD__(v53, 1))
          {
            goto LABEL_104;
          }

          v62 = [v60 portType];
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
          if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
          {
          }

          else
          {
            v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v4 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          v54 = [v21 portName];
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v99 = v55;
          v100 = v57;
          v97 = v95;
          v98 = v96;
          v58 = type metadata accessor for Locale();
          (*(*(v58 - 8) + 56))(v9, 1, 1, v58);
          sub_10001F278();
          StringProtocol.range<A>(of:options:range:locale:)();
          LOBYTE(v54) = v59;
          sub_100009EBC(v9, &qword_1003AFCE0, &qword_1002D5B00);

          if ((v54 & 1) == 0)
          {
            return v21;
          }

LABEL_58:

          v21 = 0;
          ++v53;
          if (v61 == a4)
          {
            return v21;
          }
        }
      }
    }

LABEL_42:
    v40 = [v21 portName];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v99 = v41;
    v100 = v43;
    v97 = v95;
    v98 = v96;
    v44 = type metadata accessor for Locale();
    (*(*(v44 - 8) + 56))(v9, 1, 1, v44);
    sub_10001F278();
    StringProtocol.range<A>(of:options:range:locale:)();
    LOBYTE(v40) = v45;
    sub_100009EBC(v9, &qword_1003AFCE0, &qword_1002D5B00);

    if ((v40 & 1) == 0)
    {
      return v21;
    }

    goto LABEL_43;
  }

  if (a3 == 3)
  {
    v4 = a4 & 0xFFFFFFFFFFFFFF8;
    if (a4 >> 62)
    {
      goto LABEL_110;
    }

    v96 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v96)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a3 != 1)
  {
    return 0;
  }

  v10 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v11 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = 0;
  v92 = AVAudioSessionPortBluetoothA2DP;
  v93 = a4 & 0xC000000000000001;
  v13 = a4 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v93)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_101;
      }

      v20 = v94[v12 + 4];
    }

    v21 = v20;
    v22 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      goto LABEL_99;
    }

    a4 = v11;
    v23 = [v20 portType];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    v27 = v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26;
    if (v27)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v14 = [v21 portName];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v99 = v15;
    v100 = v17;
    v97 = v95;
    v98 = v96;
    v18 = type metadata accessor for Locale();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    sub_10001F278();
    StringProtocol.range<A>(of:options:range:locale:)();
    LOBYTE(v14) = v19;
    sub_100009EBC(v9, &qword_1003AFCE0, &qword_1002D5B00);

    if ((v14 & 1) == 0)
    {
      return v21;
    }

LABEL_10:

    ++v12;
    v11 = a4;
    v27 = v22 == a4;
    v10 = v13;
  }

  while (!v27);
  v67 = 0;
  v92 = AVAudioSessionPortBluetoothHFP;
  while (1)
  {
    if (v93)
    {
      v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v67 >= *(v10 + 16))
      {
        goto LABEL_107;
      }

      v74 = v94[v67 + 4];
    }

    v21 = v74;
    v75 = (v67 + 1);
    if (__OFADD__(v67, 1))
    {
      break;
    }

    v76 = [v74 portType];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
    {

LABEL_72:
      v68 = [v21 portName];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v99 = v69;
      v100 = v71;
      v97 = v95;
      v98 = v96;
      v72 = type metadata accessor for Locale();
      (*(*(v72 - 8) + 56))(v9, 1, 1, v72);
      sub_10001F278();
      StringProtocol.range<A>(of:options:range:locale:)();
      LOBYTE(v68) = v73;
      sub_100009EBC(v9, &qword_1003AFCE0, &qword_1002D5B00);

      if ((v68 & 1) == 0)
      {
        return v21;
      }

      goto LABEL_73;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      goto LABEL_72;
    }

LABEL_73:

    v21 = 0;
    ++v67;
    if (v75 == a4)
    {
      return v21;
    }
  }

  while (1)
  {
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
    v96 = _CocoaArrayWrapper.endIndex.getter();
    if (!v96)
    {
      return 0;
    }

LABEL_24:
    v28 = 0;
    v95 = a4 & 0xC000000000000001;
    v29 = v4;
    while (1)
    {
      if (v95)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *(v4 + 16))
        {
          goto LABEL_103;
        }

        v30 = a4[v28 + 4];
      }

      v21 = v30;
      v4 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v31 = [v30 portType];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
      if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
      {
LABEL_97:

        return v21;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        return v21;
      }

      ++v28;
      v27 = v4 == v96;
      v4 = v29;
      if (v27)
      {
        v81 = 0;
        a4 = AVAudioSessionPortBuiltInSpeaker;
        while (1)
        {
          if (v95)
          {
            v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v81 >= *(v29 + 16))
            {
              goto LABEL_109;
            }

            v82 = v94[v81 + 4];
          }

          v21 = v82;
          v83 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_108;
          }

          v31 = [v82 portType];
          v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v86 = v85;
          if (v84 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v86 == v87)
          {
            goto LABEL_97;
          }

          v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v89 & 1) == 0)
          {

            v21 = 0;
            ++v81;
            if (v83 != v96)
            {
              continue;
            }
          }

          return v21;
        }
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
  }
}

BOOL sub_1000DB018(void **a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = v2;
  v42 = a1;
  v43 = a2;
  v48[1] = 45;
  v48[2] = 0xE100000000000000;
  sub_10001F278();
  v4 = StringProtocol.components<A>(separatedBy:)();
  if (!v4[2])
  {
    goto LABEL_28;
  }

  v6 = v4[4];
  v5 = v4[5];

  swift_getKeyPath();
  v42 = v2;
  sub_1000DC250(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v7 = v2[7];
  if (v7[2])
  {

    v8 = sub_10028DD34(v6, v5);
    if (v9)
    {
      v10 = *(v7[7] + 8 * v8);

LABEL_16:
      swift_getKeyPath();
      v42 = v3;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v42 = v3;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v27 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = v3[7];
      v3[7] = 0x8000000000000000;
      sub_100291650(v27, v6, v5, isUniquelyReferenced_nonNull_native);

      v3[7] = v48[0];
      swift_endAccess();
      v42 = v3;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v29 = [v27 personalTranslatorCapability];

      return v29 == 2;
    }
  }

  sub_1002C2E20();
  p_base_props = (&WaveformUIKitView + 64);
  if (v11)
  {
    v13 = v11;
    v14 = [v11 activationState];

    if (!v14)
    {
      goto LABEL_23;
    }
  }

  v48[0] = 0;
  v15 = v3[4];
  v16 = swift_allocObject();
  *(v16 + 16) = v48;
  *(v16 + 24) = v3;
  v17 = swift_allocObject();
  v17[2] = sub_1000DBE24;
  v17[3] = v16;
  v46 = sub_1000DBE3C;
  v47 = v17;
  v42 = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_1000CC9DC;
  v45 = &unk_100383320;
  v18 = _Block_copy(&v42);

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_12;
  }

  p_base_props = &WaveformUIKitView.base_props;
  if (!v48[0])
  {
    if (qword_1003A9208 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000078E8(v31, qword_1003D2728);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to sync fetching aaDevice", v34, 2u);
    }

    v35 = v48[0];

    goto LABEL_23;
  }

  v19 = qword_1003A9208;
  v17 = v48[0];
  if (v19 != -1)
  {
    goto LABEL_31;
  }

LABEL_12:
  v20 = type metadata accessor for Logger();
  sub_1000078E8(v20, qword_1003D2728);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "Sync fetching aaDevice %{BOOL}d", v23, 8u);
  }

  if ([v17 respondsToSelector:"fetchAudioAccessoryDeviceForBTAddress:"])
  {
    v24 = v17;
    v25 = String._bridgeToObjectiveC()();
    v10 = [v24 fetchAudioAccessoryDeviceForBTAddress:v25];

    v26 = v48[0];

    p_base_props = (&WaveformUIKitView + 64);
    if (v10)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v36 = v48[0];

    p_base_props = &WaveformUIKitView.base_props;
  }

LABEL_23:
  if (p_base_props[65] != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000078E8(v37, qword_1003D2728);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v38, v39))
  {

LABEL_28:

    return 0;
  }

  v40 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  *v40 = 136315394;
  *(v40 + 4) = sub_10028D78C(0xD000000000000019, 0x80000001002F3700, &v42);
  *(v40 + 12) = 2080;
  v41 = sub_10028D78C(v6, v5, &v42);

  *(v40 + 14) = v41;
  _os_log_impl(&_mh_execute_header, v38, v39, "%s no AudioAccessoryDevice for %s", v40, 0x16u);
  swift_arrayDestroy();

  return 0;
}

uint64_t sub_1000DB764(void *a1)
{
  if ([a1 deviceType] == 1 && (objc_msgSend(a1, "deviceSubType") == 2 || objc_msgSend(a1, "deviceSubType") == 3) || objc_msgSend(a1, "deviceType") == 4 && (objc_msgSend(a1, "deviceSubType") == 2 || objc_msgSend(a1, "deviceSubType") == 3) || objc_msgSend(a1, "deviceType") == 3)
  {
    return 1;
  }

  if (qword_1003A9208 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2728);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    v8 = [v4 deviceType];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v8);
    *(v7 + 4) = Hasher._finalize()();
    *(v7 + 12) = 2048;
    *(v7 + 14) = [v4 deviceSubType];

    _os_log_impl(&_mh_execute_header, v5, v6, "Invalid audio device: device type: %ld device subtype: %ld", v7, 0x16u);
  }

  else
  {

    v5 = v4;
  }

  return 0;
}

uint64_t sub_1000DB960(void *a1)
{
  v2 = 0x6C6C69662E63696DLL;
  v26[3] = &type metadata for TranslateFeatures;
  v26[4] = sub_100009DF8();
  LOBYTE(v26[0]) = 8;
  v3 = isFeatureEnabled(_:)();
  sub_100008664(v26);
  if (v3)
  {
    if (sub_1000DB764(a1))
    {
      if (([a1 deviceSubType] == 2 || objc_msgSend(a1, "deviceSubType") == 3) && !objc_msgSend(a1, "isAppleAccessory"))
      {
        return 0x6E6F687064616568;
      }

      v4 = MRAVOutputDeviceCreateFromAVOutputDevice();
      if (!v4)
      {
        return v2;
      }

      v5 = v4;
      v6 = [objc_opt_self() symbolNameForOutputDevice:v4];
      if (!v6)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = String._bridgeToObjectiveC()();
      }

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      v9 = qword_1003A9208;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000078E8(v10, qword_1003D2728);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26[0] = v14;
        *v13 = 136446210;
        v15 = sub_10028D78C(v2, v8, v26);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v11, v12, "MRAVOutputDeviceSymbolProvider found symbol %{public}s", v13, 0xCu);
        sub_100008664(v14);
      }

      else
      {
      }

      v20 = [objc_opt_self() systemImageNamed:v6];

      if (v20)
      {

        v5 = v20;
      }

      else
      {

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v26[0] = v24;
          *v23 = 136446210;
          v25 = sub_10028D78C(v2, v8, v26);

          *(v23 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v21, v22, "Invalid symbol %{public}s: returning generic symbol", v23, 0xCu);
          sub_100008664(v24);
        }

        else
        {
        }

        v2 = 0x6E6F687064616568;
      }
    }

    else
    {
      if (qword_1003A9208 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D2728);
      v5 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v5, v17, "Invalid audio device: returning generic symbol", v18, 2u);
      }
    }
  }

  return v2;
}

uint64_t sub_1000DBDEC()
{

  return _swift_deallocObject(v0, 32);
}

void sub_1000DBE68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000CD17C(v1);
}

uint64_t sub_1000DBE98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000DBED0()
{

  return _swift_deallocObject(v0, 40);
}

const char *sub_1000DBF20(unsigned int a1)
{
  if (a1 > 2)
  {
    return "?";
  }

  else
  {
    return off_100383578[a1];
  }
}

uint64_t sub_1000DBF54()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1000DC020()
{
  type metadata accessor for Notification();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1000D10D0(v1, v2);
}

void sub_1000DC08C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_1000DC0CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

uint64_t sub_1000DC114()
{

  return _swift_deallocObject(v0, 24);
}

void sub_1000DC178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  if (a2)
  {
  }
}

uint64_t sub_1000DC20C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices) = *(v0 + 24);
}

uint64_t sub_1000DC250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000DC400()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v1 - 8);
  v12 = v1;
  __chkstk_darwin(v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_availableDictionaries] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_pairAvailability] = &_swiftEmptySetSingleton;
  result = [objc_opt_self() assetManager];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryManager] = result;
    v10 = OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryQueue;
    v9[1] = sub_100026AA0();
    static DispatchQoS.unspecified.getter();
    v14 = _swiftEmptyArrayStorage;
    sub_1000DE000(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100005AD4(&qword_1003AED80, &unk_1002DA3D0);
    sub_1000A5708(&qword_1003AED88, &qword_1003AED80, &unk_1002DA3D0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v11 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
    *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v7 = type metadata accessor for DictionaryManager();
    v13.receiver = v0;
    v13.super_class = v7;
    v8 = objc_msgSendSuper2(&v13, "init");
    sub_1000DC704();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000DC704()
{
  v1 = v0;
  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D27A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Update available dictionaries cache", v5, 2u);
  }

  result = [*(v1 + OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryManager) _allAvailableDefinitionDictionaries];
  if (result)
  {
    v7 = result;
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_1001750A0(v8);

    if (v9)
    {
      *(v1 + OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_availableDictionaries) = v9;
    }
  }

  return result;
}

void sub_1000DC868(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_pairAvailability;
  swift_beginAccess();
  v5 = *(v1 + v4);

  v6 = [a1 canonicalIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  LOBYTE(v6) = sub_10022B6B4(v7, v9, v5);

  if ((v6 & 1) == 0)
  {
    sub_1000DC704();
    v25[3] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_availableDictionaries);
    v10 = a1;

    v12 = sub_1000DDE68(v11, v10);
    v14 = v13;

    __chkstk_darwin(v15);
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v25[0] = v12;
      sub_1000DE060(v25, &v24);
      v16 = v24;
    }

    if (v16)
    {
      v17 = [v16 rawAsset];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 wasLocal];

        if (v19)
        {
          v20 = [v10 canonicalIdentifier];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          swift_beginAccess();
          sub_10021A60C(v25, v21, v23);
          swift_endAccess();
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000DCA80(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000DDFD8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003836D0;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v1;
  v22 = a1;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v25 + 8))(v5, v3);
  (*(v23 + 8))(v8, v24);

  v14 = OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_pairAvailability;
  swift_beginAccess();
  v15 = *&v13[v14];

  v16 = [v22 canonicalIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  LOBYTE(v16) = sub_10022B6B4(v17, v19, v15);

  return v16 & 1;
}

uint64_t sub_1000DCDF8(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000DDDF4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100383680;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v1;
  v14 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v18 + 8))(v5, v3);
  (*(v6 + 8))(v8, v17);
}

void sub_1000DD0C8(uint64_t a1, void *a2)
{
  sub_1000DC868(a2);
  v4 = OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_pairAvailability;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = [a2 canonicalIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  LOBYTE(v6) = sub_10022B6B4(v7, v9, v5);

  if (v6)
  {
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000078E8(v10, qword_1003D27A0);
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      v17 = "Dictionary already available for pair: %{public}@";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v12, v13, v17, v14, 0xCu);
      sub_1000DDF70(v15);
    }
  }

  else
  {
    v18 = a2;

    v20 = sub_1000DDE68(v19, v18);
    v22 = v21;

    __chkstk_darwin(v23);
    if (v22)
    {
      v12 = 0;
    }

    else
    {
      v34 = v20;
      sub_1000DDF50(&v34, &v35);
      v12 = v35;
    }

    if (v12)
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000078E8(v24, qword_1003D27A0);
      v25 = v18;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138543362;
        *(v28 + 4) = v25;
        *v29 = v25;
        v30 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "Starting download for dictionary: %{public}@", v28, 0xCu);
        sub_1000DDF70(v29);
      }

      sub_1000DD4F4(v12);
    }

    else
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000078E8(v31, qword_1003D27A0);
      v32 = v18;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138543362;
        *(v14 + 4) = v32;
        *v15 = v32;
        v33 = v32;
        v17 = "Dictionary not available for: %{public}@";
        goto LABEL_19;
      }
    }
  }
}

void sub_1000DD4F4(void *a1)
{
  v10 = [objc_allocWithZone(MADownloadOptions) init];
  [v10 setAllowsCellularAccess:0];
  [v10 setDiscretionary:1];
  v2 = [a1 rawAsset];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = a1;
    v5[4] = v3;
    aBlock[4] = sub_1000DDD3C;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DDBA4;
    aBlock[3] = &unk_1003835E0;
    v6 = _Block_copy(aBlock);
    v7 = v3;
    v8 = v10;
    v9 = a1;

    [v7 startDownload:v8 then:v6];

    _Block_release(v6);
  }

  else
  {
  }
}

char *sub_1000DD6B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *&result[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryQueue];
    v24 = v11;
    v17 = result;
    v23 = v16;

    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a2;
    v18[4] = a4;
    aBlock[4] = sub_1000DDDA8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100096948;
    aBlock[3] = &unk_100383630;
    v19 = _Block_copy(aBlock);
    v20 = a4;
    v21 = a3;

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v24);
  }

  return result;
}

void sub_1000DD9C0(void *a1, uint64_t a2, void *a3)
{
  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D27A0);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136446210;
    v11 = [v6 localizedLanguageName];

    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10028D78C(v12, v14, v18);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Finished downloading dictionary %{public}s; updating local dictionaries", v9, 0xCu);
    sub_100008664(v10);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_1000DC704();
  }

  [a3 refreshState];
}

uint64_t sub_1000DDBA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1000DDBF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DictionaryManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000DDCBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000DDCF4()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000DDD48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DDD60()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000DDDB4()
{

  return _swift_deallocObject(v0, 32);
}

unint64_t sub_1000DDDFC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DDE68(unint64_t a1, void *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = v5;
    if (!v5)
    {
      return v5;
    }

    --v5;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    if (v5 >= *(v4 + 16))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *(a1 + 32 + 8 * v5);
LABEL_9:
      v8 = v7;
      sub_1000DE394(a2);
      v10 = v9;

      if (v10)
      {
        return v5;
      }
    }
  }
}

uint64_t sub_1000DDF70(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003AECA0, &unk_1002D3F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DE000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DE07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = Locale.ltLanguageCode.getter();
  if (!v6)
  {
    goto LABEL_12;
  }

  if (v5 == a2 && v6 == a3)
  {
    goto LABEL_7;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_12:
    if (Locale.identifier.getter() == a2 && v8 == a3)
    {
      goto LABEL_7;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_8;
    }

    Locale.identifier.getter();
    sub_10001F278();
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = v13;

    if (v12 == a2 && v14 == a3)
    {
      goto LABEL_7;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_8;
    }

    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v18 = v17;
    v19 = Locale.ltLanguageCode.getter();
    if (v20)
    {
      if (v16 == v19 && v20 == v18)
      {
LABEL_23:

LABEL_7:

        goto LABEL_8;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v24 = v23;
    v25 = Locale.ltLanguageCode.getter();
    if (!v26)
    {

      v9 = 0;
      return v9 & 1;
    }

    if (v22 != v25 || v26 != v24)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v9 & 1;
    }

    goto LABEL_23;
  }

LABEL_8:
  v9 = 1;
  return v9 & 1;
}

void sub_1000DE394(void *a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 rawAsset];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [v7 attributes];

  if (!v9)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v28, "IndexLanguages");
  HIBYTE(v28[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = sub_10028DF68(v29), (v12 & 1) == 0))
  {

    sub_100078028(v29);
    return;
  }

  sub_10000A37C(*(v10 + 56) + 32 * v11, v30);
  sub_100078028(v29);

  sub_100005AD4(&qword_1003A95C0, &qword_1002D1A10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v13 = v28[0];
  if (*(v28[0] + 16) < 2uLL)
  {
    goto LABEL_10;
  }

  v14 = *(v28[0] + 32);
  v15 = *(v28[0] + 40);

  v16 = [a1 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v14) = sub_1000DE07C(v6, v14, v15);

  v17 = *(v4 + 8);
  v17(v6, v3);
  if (v14)
  {
    if (v13[2] < 2uLL)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v18 = v13[6];
    v19 = v13[7];

    v20 = [a1 targetLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v18) = sub_1000DE07C(v6, v18, v19);

    v17(v6, v3);
    if (v18)
    {
LABEL_10:

      return;
    }
  }

  if (v13[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = v13[6];
  v22 = v13[7];

  v23 = [a1 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v21) = sub_1000DE07C(v6, v21, v22);

  v17(v6, v3);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

  v24 = v13[4];
  v25 = v13[5];

  v26 = [a1 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000DE07C(v6, v24, v25);

  v17(v6, v3);
}

id sub_1000DE7A0(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1000DE81C()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue;
  v9 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue);
  }

  else
  {
    v11 = sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
    v18 = "lable=no>\n</head>";
    v19 = v11;
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    v16[1] = sub_1000DE000(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100005AD4(&qword_1003AED80, &unk_1002DA3D0);
    v17 = v2;
    sub_1000A5708(&qword_1003AED88, &qword_1003AED80, &unk_1002DA3D0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
    v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

id sub_1000DEAB4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = [objc_opt_self() assetManager];
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1000DEB38(uint64_t a1, uint64_t a2, void *a3)
{
  v20[1] = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_sourceLocale;
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 56);
  v12(&v3[v10], 1, 1, v11);
  v12(&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_targetLocale], 1, 1, v11);
  v13 = &v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_analytics] = &_swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound] = 0;
  v14 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_timeStamp;
  v15 = [objc_opt_self() now];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(&v3[v14], v9, v6);
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_observer] = 0;
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for DictionaryViewController(0);
  v21.receiver = v3;
  v21.super_class = v17;
  v18 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v16, a3);

  return v18;
}

id sub_1000DEE0C(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_sourceLocale;
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 56);
  v9(&v1[v7], 1, 1, v8);
  v9(&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_targetLocale], 1, 1, v8);
  v10 = &v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___queue] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___dictionaryManager] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_analytics] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound] = 0;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_timeStamp;
  v12 = [objc_opt_self() now];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(&v1[v11], v6, v3);
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_observer] = 0;
  v13 = type metadata accessor for DictionaryViewController(0);
  v16.receiver = v1;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

void sub_1000DF16C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DictionaryViewController(0);
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    [v2 setBackgroundColor:v3];

    v4 = [objc_opt_self() mainBundle];
    v11._object = 0x80000001002F3DC0;
    v5._object = 0x80000001002F3DA0;
    v5._countAndFlagsBits = 0xD000000000000010;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v11);

    v7 = String._bridgeToObjectiveC()();

    [v0 setTitle:v7];

    sub_1000DF714();
    sub_1000DF87C();
    v8 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"closeActionWithSender:"];
    v9 = [v0 navigationItem];
    [v9 setRightBarButtonItem:v8];

    sub_1000E0A1C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000DF37C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_analytics;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound);
  v9 = objc_allocWithZone(NSNumber);

  v10 = [v9 initWithInteger:v8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v7;
  sub_10029163C(v10, 0xD000000000000011, 0x80000001002F3A60, isUniquelyReferenced_nonNull_native);
  v12 = v21;
  v13 = [objc_allocWithZone(NSNumber) initWithInteger:*(a1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected)];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v12;
  sub_10029163C(v13, 0x736E497364726F77, 0xEE00646574636570, v14);
  v15 = v21;
  (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_timeStamp, v2);
  Date.timeIntervalSinceNow.getter();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  v18 = [objc_allocWithZone(NSNumber) initWithDouble:-v17];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v15;
  sub_10029163C(v18, 0x7275446C61746F74, 0xED00006E6F697461, v19);
  return v21;
}

void sub_1000DF714()
{
  v1 = sub_1000DE778();
  [v1 setHidden:1];

  v2 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview) setOpaque:0];
  v3 = [*(v0 + v2) scrollView];
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor:v5];

  v6 = sub_1000DE78C();
  [v6 setHidden:1];

  v7 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel) setNumberOfLines:0];
  [*(v0 + v7) setTextAlignment:1];
  v8 = *(v0 + v7);
  v9 = [v4 secondaryLabelColor];
  [v8 setTextColor:v9];
}

void sub_1000DF87C()
{
  v1 = sub_1000DE778();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = sub_1000DE78C();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002DC210;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel;
  v5 = [*&v0[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel] leadingAnchor];
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 leadingAnchor];

  v9 = [v5 constraintEqualToSystemSpacingAfterAnchor:v8 multiplier:2.0];
  *(v3 + 32) = v9;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [*&v0[v4] trailingAnchor];
  v14 = [v12 constraintEqualToSystemSpacingAfterAnchor:v13 multiplier:2.0];

  *(v3 + 40) = v14;
  v15 = [v0 view];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v16 centerYAnchor];

  v19 = [*&v0[v4] centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v3 + 48) = v20;
  sub_10000A2CC(0, &qword_1003B3480, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:isa];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview];
  sub_1002C31A4(v24);
}

void sub_1000DFB64()
{
  v1 = v0 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    oslog = Strong;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
  }

  else
  {
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000078E8(v5, qword_1003D27A0);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "User pressed dictionary close button but there's no delegate to handle dismissal", v7, 2u);
    }
  }
}

void sub_1000DFCF8(uint64_t a1, char *a2)
{
  v69 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v13 = type metadata accessor for Locale();
  v71 = *(v13 - 1);
  v14 = __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v60 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v21 = sub_1000DE81C();
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v22 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v24 = sub_1000DEAB4();
    v25 = [v24 _allAvailableDefinitionDictionaries];

    if (!v25)
    {
      return;
    }

    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = sub_1001750A0(v26);

    if (!v18)
    {
      return;
    }

    v62 = v2;
    sub_1000E1D20(a1, v12);
    v27 = v71;
    v28 = *(v71 + 48);
    if (v28(v12, 1, v13) == 1)
    {

      v29 = v12;
LABEL_8:
      sub_1000E20D4(v29);
      return;
    }

    v61 = v16;
    v30 = *(v27 + 32);
    v31 = v70;
    v30(v70, v12, v13);
    sub_1000E1D20(v69, v10);
    if (v28(v10, 1, v13) == 1)
    {
      (*(v27 + 8))(v31, v13);

      v29 = v10;
      goto LABEL_8;
    }

    v12 = v13;
    v30(v61, v10, v13);
    v32 = objc_allocWithZone(_LTLocalePair);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v34 = Locale._bridgeToObjectiveC()().super.isa;
    v13 = [v32 initWithSourceLocale:isa targetLocale:v34];

    v23 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!(v18 >> 62))
    {
      v35 = v18 & 0xFFFFFFFFFFFFFF8;
      v36 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v69 = v12;
      if (v36)
      {
        goto LABEL_11;
      }

LABEL_27:

      v58 = *(v71 + 8);
      v59 = v69;
      v58(v61, v69);
      v58(v70, v59);
      return;
    }
  }

  else
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v35 = v23;
  v36 = _CocoaArrayWrapper.endIndex.getter();
  v69 = v12;
  if (!v36)
  {
    goto LABEL_27;
  }

LABEL_11:
  v37 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(v35 + 16))
      {
        goto LABEL_25;
      }

      v38 = *(v18 + 8 * v37 + 32);
    }

    v39 = v38;
    v12 = (v37 + 1);
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if ([v38 activated])
    {
      sub_1000DE394(v13);
      if (v40)
      {
        break;
      }
    }

    ++v37;
    if (v12 == v36)
    {
      goto LABEL_27;
    }
  }

  v41 = [v39 rawAsset];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 assetId];

    if (v43)
    {

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
      v60 = static OS_dispatch_queue.main.getter();
      v47 = swift_allocObject();
      v48 = v62;
      v47[2] = v62;
      v47[3] = v13;
      v47[4] = v44;
      v47[5] = v46;
      aBlock[4] = sub_1000E2420;
      aBlock[5] = v47;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      aBlock[3] = &unk_1003837E8;
      v49 = _Block_copy(aBlock);
      v50 = v48;
      v51 = v13;
      v52 = v63;
      static DispatchQoS.unspecified.getter();
      v72 = _swiftEmptyArrayStorage;
      sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
      sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
      v53 = v65;
      v54 = v68;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v55 = v60;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v49);

      (*(v67 + 8))(v53, v54);
      (*(v64 + 8))(v52, v66);
      v56 = *(v71 + 8);
      v57 = v69;
      v56(v61, v69);
      v56(v70, v57);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000E0510(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.ltIdentifier.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  v12 = String._bridgeToObjectiveC()();

  v13 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_analytics;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_10029163C(v12, 0x6F4C656372756F73, 0xEC000000656C6163, isUniquelyReferenced_nonNull_native);
  *(a1 + v13) = v25;
  swift_endAccess();
  v15 = [a2 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.ltIdentifier.getter();
  v11(v9, v6);
  v16 = String._bridgeToObjectiveC()();

  swift_beginAccess();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_10029163C(v16, 0x6F4C746567726174, 0xEC000000656C6163, v17);
  *(a1 + v13) = v25;
  swift_endAccess();
  sub_100003754();
  v18 = String._bridgeToObjectiveC()();

  swift_beginAccess();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_10029163C(v18, 0x6150656C61636F6CLL, 0xEA00000000007269, v19);
  *(a1 + v13) = v25;
  swift_endAccess();
  v20 = String._bridgeToObjectiveC()();
  swift_beginAccess();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_10029163C(v20, 0x44497465737361, 0xE700000000000000, v21);
  *(a1 + v13) = v25;
  return swift_endAccess();
}

void sub_1000E085C(uint64_t a1, NSString a2, uint64_t a3, char *a4)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = sub_1000DE81C();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_1000DFCF8(a3, a4);
    if (v12)
    {
      v13 = v12;
      if (a2)
      {
        v14 = String._bridgeToObjectiveC()();
      }

      else
      {
        v14 = 0;
      }

      v15 = [v13 _hasDefinitionForTerm:v14];

      if (v15)
      {
        if (a2)
        {
          a2 = String._bridgeToObjectiveC()();
        }

        [v13 _definitionValueForTerm:a2];
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E0A1C()
{
  v1 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v42 - v2;
  v4 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v45 = &v42 - v9;
  __chkstk_darwin(v8);
  v47 = (&v42 - v10);
  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000078E8(v11, qword_1003D27A0);
  v12 = v0;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v43 = v5;
    v44 = v3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48[0] = v16;
    *v15 = 136643075;
    v17 = &v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
    if (*&v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text + 8])
    {
      v18 = *v17;
      v19 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text + 8];
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_10028D78C(v18, v19, v48);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2048;
    if (v17[1])
    {

      v21 = String.count.getter();
    }

    else
    {

      v21 = 0;
    }

    v5 = v43;
    *(v15 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v13, v14, "Load dictionary item for: %{sensitive}s of length %ld", v15, 0x16u);
    sub_100008664(v16);

    v3 = v44;
  }

  else
  {
  }

  v22 = [v12 viewIfLoaded];
  if (v22)
  {

    v23 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text + 8];
    v44 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
    v24 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_sourceLocale;
    swift_beginAccess();
    v25 = v47;
    sub_1000E1D20(&v12[v24], v47);
    v26 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_targetLocale;
    swift_beginAccess();
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v3, 1, 1, v27);
    v28 = v45;
    sub_1000E1D20(v25, v45);
    v29 = v46;
    sub_1000E1D20(&v12[v26], v46);
    type metadata accessor for MainActor();

    v30 = v6;
    v31 = v3;
    v32 = v12;
    v33 = static MainActor.shared.getter();
    v34 = *(v5 + 80);
    v35 = (v34 + 56) & ~v34;
    v36 = (v30 + v34 + v35) & ~v34;
    v37 = swift_allocObject();
    v37[2] = v33;
    v37[3] = &protocol witness table for MainActor;
    v38 = v44;
    v37[4] = v32;
    v37[5] = v38;
    v37[6] = v23;
    sub_1000E1F14(v28, v37 + v35);
    sub_1000E1F14(v29, v37 + v36);
    sub_10005E36C(0, 0, v31, &unk_1002DC2C0, v37);

    sub_1000E20D4(v25);
  }

  else
  {
    v47 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v47, v39, "Not updating currentText yet because view hasn't loaded yet; it will be updated when the view loads", v40, 2u);
    }

    v41 = v47;
  }
}

uint64_t sub_1000E0F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v11 = *(sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00) - 8);
  v8[20] = v11;
  v8[21] = *(v11 + 64);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[24] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E112C, v13, v12);
}

uint64_t sub_1000E112C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v18 = v0[19];
  v23 = v0[18];
  v24 = v0[17];
  v22 = v0[15];
  v5 = v0[13];
  v20 = v0[16];
  v21 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];

  v19 = sub_1000DE81C();
  sub_1000E1D20(v6, v1);
  sub_1000E1D20(v5, v3);
  v10 = *(v4 + 80);
  v11 = (v10 + 40) & ~v10;
  v12 = (v2 + v10 + v11) & ~v10;
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v8;
  v13[4] = v7;
  sub_1000E1F14(v1, v13 + v11);
  sub_1000E1F14(v3, v13 + v12);
  v0[6] = sub_1000E22B8;
  v0[7] = v13;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100096948;
  v0[5] = &unk_100383748;
  v14 = _Block_copy(v0 + 2);

  v15 = v9;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v22 + 8))(v20, v21);
  (*(v23 + 8))(v18, v24);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000E13E8(void *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v25 = *(v13 - 8);
  v26 = v13;
  __chkstk_darwin(v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E085C(a2, a3, a4, a5);
  v17 = v16;
  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1000E23B0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100383798;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  v22 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DE000(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v27 + 8))(v12, v10);
  return (*(v25 + 8))(v15, v26);
}

void sub_1000E16FC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v1;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordsInspected) = v4;
  if (a1)
  {
    v6 = a1;
    v7 = [v6 longDefinition];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v30 = v9;
      v29 = sub_10001F278();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v12 = sub_1000DE778();
      v13 = String._bridgeToObjectiveC()();

      v14 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview;
      [*(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview) setHidden:0];
      v15 = sub_1000DE78C();
      [v15 setHidden:1];

      v16 = *(v5 + v14);
      sub_1002C33E4();

      return;
    }

    goto LABEL_10;
  }

  v17 = sub_1000DE778();
  v18 = String._bridgeToObjectiveC()();

  [*(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___webview) setHidden:1];
  v19 = sub_1000DE78C();
  [v19 setHidden:0];

  v20 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController____lazy_storage___notFoundLabel);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 mainBundle];
  v31._object = 0x80000001002F3AB0;
  v24._object = 0x80000001002F3A90;
  v31._countAndFlagsBits = 0xD00000000000001ELL;
  v24._countAndFlagsBits = 0xD000000000000010;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v31);

  v26 = String._bridgeToObjectiveC()();

  [v22 setText:v26];

  v27 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound);
  v3 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  *(v5 + OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_wordCountNotFound) = v28;
}

id sub_1000E1A20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DictionaryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DictionaryViewController(uint64_t a1)
{
  result = qword_1003AFBA8;
  if (!qword_1003AFBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}