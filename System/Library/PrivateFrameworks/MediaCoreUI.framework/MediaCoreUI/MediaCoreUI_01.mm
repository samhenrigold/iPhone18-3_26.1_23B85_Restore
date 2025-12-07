uint64_t sub_1C593E5AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_1C5A37490(v4);
}

double sub_1C593E60C(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v5[0] = v1;
  *(v5 + 9) = *(a1 + 57);
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  *&result = sub_1C5A33D1C(v4).n128_u64[0];
  return result;
}

void *sub_1C593E6D0@<X0>(uint64_t a1@<X8>)
{
  sub_1C593F524();
  result = sub_1C5BC8F44();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void sub_1C593E7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_1C593E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_1C593E868(char *a1@<X8>)
{
  v2 = v1;
  v4 = v1[8];
  swift_beginAccess();
  sub_1C59318C8(v4 + 64, v24);
  v5 = v25;
  v6 = v26;
  __swift_project_boxed_opaque_existential_0(v24, v25);
  v7 = v2[4];
  swift_getKeyPath("@a\\&");
  *&v18 = v7;
  sub_1C59378A8(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  v8 = *(v7 + 104);
  if ((v8 & 0xFF0000) == 0x40000)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = *(v7 + 88);
  v19 = v8;
  v9 = *(v7 + 128);
  v20 = *(v7 + 112);
  v21 = v9;
  v22 = *(v7 + 144);
  v23 = *(v7 + 160);
  v10 = (*(v6 + 16))(&v18, v5, v6);
  v11 = __swift_destroy_boxed_opaque_existential_0(v24);
  v12 = *(v2[2] + 40);
  *&v18 = v12;
  sub_1C59378A8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  if ((*(v12 + 17) & 1) == 0)
  {
    v16 = sub_1C593EBD4(4u, v10);

    if (v16)
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_17;
  }

  v13 = v2[5];
  swift_getKeyPath(byte_1C5BD8D48);
  *&v18 = v13;
  sub_1C59378A8(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  if (!*(v13 + 48))
  {
    if (sub_1C593EBD4(1u, v10))
    {

      v15 = 1;
    }

    else
    {
      v17 = sub_1C593EBD4(0, v10);

      v15 = 0;
      if (!v17)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    *a1 = v15;
    return;
  }

  if (!sub_1C593EBD4(2u, v10))
  {

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  swift_getKeyPath("@a\\&");
  *&v18 = v7;

  sub_1C5BC7B74();

  v14 = *(v7 + 104);
  if (BYTE2(v14) != 4)
  {

    v15 = 2;
    if ((v14 & 0xFF0000) == 0x30000 || BYTE2(v14) != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
}

BOOL sub_1C593EBD4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v3);
  v4 = sub_1C5BCBF94();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

double sub_1C593ECC4(uint64_t a1, uint64_t a2)
{
  _s27TransportInteractionMonitorCMa(0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196CA8, &qword_1C5BE4D88);
  swift_allocObject();
  *(v4 + 16) = sub_1C5BC7F44();
  sub_1C5BC7BA4();
  sub_1C5BCA684();
  MEMORY[0x1C694E550](&v6, a1, &type metadata for TransportInteractionObserver, a2);

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double sub_1C593EE00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196CB0, &qword_1C5BE4E30);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC196CB8, &qword_1C5BE4E38);
  _s27TransportInteractionMonitorCMa(0);
  sub_1C5924F54(&qword_1EDA46238, qword_1EC196CB8, &qword_1C5BE4E38, MEMORY[0x1E697FDF8]);
  sub_1C5939F8C(&qword_1EDA4A348, _s27TransportInteractionMonitorCMa, &unk_1C5BE4D6C);
  sub_1C5BC9DE4();

  return result;
}

uint64_t sub_1C593EF24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C50, &qword_1C5BE49B8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - v2;
  v4 = sub_1C5BC81D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  type metadata accessor for HostedScenePhaseModel(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel__scenePhase;
  (*(v5 + 104))(v10, *MEMORY[0x1E697BE30], v4);
  (*(v5 + 16))(v7, v10, v4);
  sub_1C5BC7FF4();
  (*(v5 + 8))(v10, v4);
  (*(v1 + 32))(v11 + v12, v3, v0);
  *(v11 + OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel_notificationObservers) = MEMORY[0x1E69E7CC0];
  v13 = (v11 + OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel_sceneConnectionObserver);
  *v13 = 0u;
  v13[1] = 0u;
  sub_1C5ABB2EC();
  return v11;
}

unint64_t sub_1C593F170()
{
  result = qword_1EDA45D90;
  if (!qword_1EDA45D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA45D90);
  }

  return result;
}

uint64_t sub_1C593F1BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1C593F20C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C593F22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C593F22C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_1C593F33C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C593F34C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HostedScenePhaseModel(0);
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C593F38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath(byte_1C5BE4910);
  type metadata accessor for HostedScenePhaseModel(0);
  sub_1C593F1BC(&qword_1EDA48C28, type metadata accessor for HostedScenePhaseModel, &unk_1C5BE4888);
  sub_1C5BC83A4();
  swift_getKeyPath(byte_1C5BE4940);
  swift_getKeyPath(aX_11);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C28, &qword_1C5BE4988) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C30, &qword_1C5BE4990);
  sub_1C5BC8034();

  *v5 = KeyPath;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C38, &qword_1C5BE4998);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

unint64_t sub_1C593F524()
{
  result = qword_1EDA4B3F8[0];
  if (!qword_1EDA4B3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4B3F8);
  }

  return result;
}

uint64_t sub_1C593F58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void *sub_1C593F5F8@<X0>(_BYTE *a1@<X8>)
{
  sub_1C593F648();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

unint64_t sub_1C593F648()
{
  result = qword_1EDA48A78[0];
  if (!qword_1EDA48A78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA48A78);
  }

  return result;
}

uint64_t sub_1C593F6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  (*(v8 + 8))(a2, v7);
  sub_1C593F7E4(a1, v6);
  return (*(v8 + 32))(a2, v6, v7);
}

uint64_t sub_1C593F7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C593F854@<D0>(_OWORD *a1@<X8>)
{
  sub_1C593F8A4();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C593F8A4()
{
  result = qword_1EDA4B500[0];
  if (!qword_1EDA4B500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4B500);
  }

  return result;
}

double sub_1C593F8F8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sub_1C593F950@<Q0>(_OWORD *a1@<X8>)
{
  sub_1C593F9B0();
  sub_1C5BC8F44();
  a1[2] = v5;
  a1[3] = *v6;
  *(a1 + 57) = *&v6[9];
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C593F9B0()
{
  result = qword_1EDA4BAC0;
  if (!qword_1EDA4BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4BAC0);
  }

  return result;
}

__n128 sub_1C593FA04@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EDA4BAC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EDA4BB00;
  *(a1 + 32) = xmmword_1EDA4BAF0;
  *(a1 + 48) = v1;
  *(a1 + 57) = unk_1EDA4BB09;
  result = *&byte_1EDA4BAE0;
  *a1 = xmmword_1EDA4BAD0;
  *(a1 + 16) = result;
  return result;
}

double sub_1C593FA7C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  xmmword_1EDA4BAD0 = 0uLL;
  byte_1EDA4BAE0 = 1;
  *algn_1EDA4BAE1 = 777;
  qword_1EDA4BAE8 = v1;
  LOBYTE(xmmword_1EDA4BAF0) = 0;
  result = 0.0;
  *(&xmmword_1EDA4BAF0 + 8) = 0u;
  unk_1EDA4BB08 = 0u;
  byte_1EDA4BB18 = 0;
  return result;
}

void *sub_1C593FB74@<X0>(_BYTE *a1@<X8>)
{
  sub_1C593FBC4();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

unint64_t sub_1C593FBC4()
{
  result = qword_1EDA47E78;
  if (!qword_1EDA47E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47E78);
  }

  return result;
}

unint64_t sub_1C593FCA4()
{
  result = qword_1EDA4B260;
  if (!qword_1EDA4B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B260);
  }

  return result;
}

uint64_t sub_1C593FCF8@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_1EDA4B270 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_1C59318C8(&qword_1EDA4B280, v1);
}

uint64_t sub_1C593FD5C()
{
  qword_1EDA4B298 = &type metadata for NowPlayingStandardArtworkTreatment;
  qword_1EDA4B2A0 = sub_1C5928464();
  result = sub_1C592CFE4(&unk_1F4513AD0);
  qword_1EDA4B280 = result;
  return result;
}

double sub_1C593FDA4(uint64_t a1)
{
  sub_1C59318C8(a1, v3);
  sub_1C59318C8(v3, &v2);
  sub_1C593FCA4();
  sub_1C5BC8F54();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

double sub_1C593FE04@<D0>(_OWORD *a1@<X8>)
{
  sub_1C593FE54();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_1C593FE54()
{
  result = qword_1EDA46370;
  if (!qword_1EDA46370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46370);
  }

  return result;
}

uint64_t sub_1C593FEA8(void *a1)
{
  sub_1C593FE54();

  return sub_1C5BC8F54();
}

double sub_1C593FF08@<D0>(_OWORD *a1@<X8>)
{
  sub_1C593FF58();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C593FF58()
{
  result = qword_1EDA47B68[0];
  if (!qword_1EDA47B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA47B68);
  }

  return result;
}

double sub_1C593FFAC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C5BDB910;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1C593FFC0(uint64_t *a1)
{
  sub_1C593E7D8(*a1, a1[1], a1[2], a1[3]);
  sub_1C593FF58();
  return sub_1C5BC8F54();
}

unint64_t sub_1C594005C()
{
  result = qword_1EDA4BB20;
  if (!qword_1EDA4BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4BB20);
  }

  return result;
}

uint64_t sub_1C59400B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1C5940118()
{
  qword_1EDA4BB48 = 0;
  result = 0.0;
  xmmword_1EDA4BB28 = 0u;
  unk_1EDA4BB38 = 0u;
  return result;
}

uint64_t sub_1C5940130@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_1EDA4BB58 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_1C59400B0(&xmmword_1EDA4BB28, v1, &qword_1EC1929B0, &qword_1C5BDD720);
}

uint64_t sub_1C59401A4(uint64_t a1)
{
  sub_1C59400B0(a1, v3, &qword_1EC1929B0, &qword_1C5BDD720);
  sub_1C59400B0(v3, &v2, &qword_1EC1929B0, &qword_1C5BDD720);
  sub_1C594005C();
  sub_1C5BC8F54();
  return sub_1C5924EF4(v3, &qword_1EC1929B0, &qword_1C5BDD720);
}

uint64_t sub_1C594024C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C59402A0(uint64_t a1)
{
  sub_1C5933828(319, &qword_1EDA467C8, &type metadata for DeviceMetrics);
  if (v1 <= 0x3F)
  {
    sub_1C5933828(319, &qword_1EDA46730, MEMORY[0x1E6981EA0]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C594037C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v14 = 0;
    v17 = result;
    v4 = *(a1 + 24);
    v5 = result;
    v11 = result;
    v12 = v4;
    v10 = *(a1 + 40);
    v13 = v10;
    result = type metadata accessor for ContentLookupItem(319, &v11);
    if (v6 <= 0x3F)
    {
      v15 = 0;
      v18 = result;
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v11 = v5;
      v12 = v7;
      *&v13 = v10;
      *(&v13 + 1) = v8;
      result = type metadata accessor for ContentLookupItem(319, &v11);
      if (v9 <= 0x3F)
      {
        v16 = 0;
        v19 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C594046C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1C5940510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5940550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v103 = a1;
  v2 = a1 - 8;
  v102 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v100 = v3;
  v101 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1C5BC96A4();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v105 = _s25BackdropConditionObserverVMa(0, v5, v6, v7);
  v95 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v94 = &v70 - v8;
  _s18ArtworkPlaceholderVMa(255, v5, v6, v9);
  sub_1C5BC8AB4();
  v116 = sub_1C5BCB804();
  _s11ArtworkViewVMa(255, v5, v6, v10);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220, &unk_1C5BEA6E0);
  sub_1C5BC8AB4();
  v117 = sub_1C5BCB804();
  _s21FullScreenContentViewVMa(255, v5, v6, v11);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingView.OverlayView(255, v5, v6, v12);
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingColorSchemeModifier(255);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996C8, &unk_1C5BF0AC0);
  _s19HeaderDismissButtonVMa(255, v5, v6, v13);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  v118 = sub_1C5BC92D4();
  _s21MiniPlayerContentViewVMa(255, v5, v6, v14);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v119 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130, &qword_1C5BEA710);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v120 = sub_1C5BCB804();
  _s31TrackSectionsTouchDetectionViewVMa(255, v5, v6, v15);
  sub_1C5BC8AB4();
  v121 = sub_1C5BCB804();
  swift_getTupleTypeMetadata();
  v80 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1C5BCA7F4();
  v90 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v70 - v17;
  v75 = v16;
  v18 = sub_1C5BC8AB4();
  v91 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v70 - v19;
  v20 = swift_getWitnessTable();
  v74 = v20;
  v21 = swift_getWitnessTable();
  v114 = v20;
  v115 = v21;
  v22 = swift_getWitnessTable();
  v116 = v18;
  v117 = v22;
  v70 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v72 = &v70 - v24;
  type metadata accessor for PPTRunnerModifier(255, v5, v6, v25);
  v88 = OpaqueTypeMetadata2;
  v26 = sub_1C5BC8AB4();
  v89 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v85 = &v70 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996D0, &qword_1C5BF0AD0);
  v28 = sub_1C5BC8AB4();
  v93 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v92 = &v70 - v29;
  v116 = v18;
  v117 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = swift_getWitnessTable();
  v71 = OpaqueTypeConformance2;
  v112 = OpaqueTypeConformance2;
  v113 = v31;
  v84 = v26;
  v32 = swift_getWitnessTable();
  v33 = sub_1C5924F54(&qword_1EDA46080, &qword_1EC1996D0, &qword_1C5BF0AD0, MEMORY[0x1E6980A18]);
  v73 = v32;
  v110 = v32;
  v111 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_1C5939F34();
  v116 = v28;
  v117 = &type metadata for NowPlayingViewModel.PlayerStyle;
  v82 = v34;
  v118 = v34;
  v119 = v35;
  v81 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v83 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v77 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v78 = &v70 - v39;
  sub_1C5BCAA34();
  v40 = v5;
  v106 = v5;
  v107 = v6;
  v41 = v96;
  v108 = v96;
  v42 = v79;
  sub_1C5BCA7E4();
  v43 = v94;
  WitnessTable = v40;
  v80 = v6;
  sub_1C5942464(v40, v6, v94);
  v44 = v76;
  v45 = v75;
  v46 = v105;
  MEMORY[0x1C694E550](v43, v75, v105, v74);
  (*(v95 + 8))(v43, v46);
  v47 = v72;
  (*(v90 + 8))(v42, v45);
  v48 = v97;
  sub_1C5BC9694();
  sub_1C5BCA0C4();
  (*(v98 + 8))(v48, v99);
  (*(v91 + 8))(v44, v18);
  if (*(v41 + 8))
  {
    v49 = swift_unknownObjectRetain();
    v50 = v85;
    v51 = v88;
    v52 = WitnessTable;
    v53 = v80;
    sub_1C5942744(v49, v88, WitnessTable, v71, v80);
    swift_unknownObjectRelease();
    (*(v86 + 8))(v47, v51);
    swift_getKeyPath("XC[&");
    v116 = sub_1C5BCAB64();
    LOBYTE(v117) = 0;
    v54 = v92;
    v55 = v84;
    sub_1C5BC9DF4();

    (*(v89 + 8))(v50, v55);
    v56 = v41;
    v57 = v103;
    v58 = sub_1C5B7B224(v103, &v116);
    v109 = v116;
    v59 = v102;
    v60 = v101;
    (*(v102 + 16))(v101, v56, v57, v58);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v52;
    *(v62 + 24) = v53;
    (*(v59 + 32))(v62 + v61, v60, v57);
    v63 = v77;
    v64 = v82;
    v65 = v81;
    sub_1C5BCA344();

    (*(v93 + 8))(v54, v28);
    v116 = v28;
    v117 = &type metadata for NowPlayingViewModel.PlayerStyle;
    v118 = v64;
    v119 = v65;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = v78;
    sub_1C593EDC0(v63, v36, v66);
    v68 = *(v83 + 8);
    v68(v63, v36);
    sub_1C593EDC0(v67, v36, v66);
    return (v68)(v67, v36);
  }

  else
  {
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

void *sub_1C59413B0@<X0>(uint64_t a1@<X8>)
{
  sub_1C59434EC();
  result = sub_1C5BC8F44();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C594145C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NowPlayingView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));
  swift_unknownObjectRelease();
  if (*(v6 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v6 + 24));
  }

  else
  {
  }

  v7 = v5[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C5BC8284();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v6 + v5[12];
  sub_1C596AC80(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 73));

  sub_1C596AC58(*(v6 + v5[14]), *(v6 + v5[14] + 8), *(v6 + v5[14] + 16));

  return swift_deallocObject();
}

uint64_t sub_1C5941600@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1C5BCB804();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_1C594166C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1C59416DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 290))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 248);
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

uint64_t sub_1C5941738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C5BC92B4();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1C5BC92C4();
}

uint64_t sub_1C5941830@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v4;
  *(a3 + 16) = swift_getKeyPath(byte_1C5BDB140);
  *(a3 + 24) = 0;
  type metadata accessor for WindowProperties(0);
  sub_1C5937E88(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  *(a3 + 32) = sub_1C5BC8324();
  *(a3 + 40) = v5 & 1;
  _s12PresentationCMa(0);
  sub_1C5937E88(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  result = sub_1C5BC8324();
  *(a3 + 48) = result;
  *(a3 + 56) = v7 & 1;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

double sub_1C5941958(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  _s12PresentationCMa(0);
  sub_1C59A8828();
  v8 = sub_1C5BC8324();
  v9 = v6 & 1;
  v10 = v5;
  MEMORY[0x1C694E550](&v8, a2, &type metadata for OpacityModifier, a3);

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

unint64_t sub_1C5941A04()
{
  result = qword_1EDA4BF08[0];
  if (!qword_1EDA4BF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4BF08);
  }

  return result;
}

uint64_t sub_1C5941A58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1C59400B0(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_1C5941C58(uint64_t a1)
{
  sub_1C5941D00(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C5941D00(uint64_t a1)
{
  if (!qword_1EDA46828)
  {
    sub_1C5BC81D4();
    v1 = sub_1C5BC8054();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46828);
    }
  }
}

unint64_t sub_1C5941D88()
{
  result = qword_1EDA465E0;
  if (!qword_1EDA465E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196C28, &qword_1C5BE4988);
    sub_1C5924F54(&qword_1EDA46248, &qword_1EC196C38, &qword_1C5BE4998, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA460B0, &qword_1EC196C30, &qword_1C5BE4990, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465E0);
  }

  return result;
}

uint64_t sub_1C5941E74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5941EBC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath(" ,\\&");
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath(byte_1C5BDD668);
  *(a2 + 56) = 0;
  *(a2 + 64) = swift_getKeyPath(byte_1C5BDD690);
  *(a2 + 104) = 0;
  *(a2 + 112) = swift_getKeyPath(byte_1C5BDD6B8);
  *(a2 + 185) = 0;
  *(a2 + 192) = swift_getKeyPath("X,\\&");
  *(a2 + 200) = 0;
  _s12PresentationCMa(0);
  sub_1C5A4E970(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  *(a2 + 208) = sub_1C5BC8324();
  *(a2 + 216) = v4 & 1;
  *(a2 + 224) = swift_getKeyPath(byte_1C5BDD6F8);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  _s7ArtworkC17BackgroundArtworkCMa(0);
  sub_1C5A4E970(&qword_1EDA49EF0, 255, _s7ArtworkC17BackgroundArtworkCMa, &unk_1C5BDD514);
  *(a2 + 248) = sub_1C5BC8C84();
  *(a2 + 256) = v5;
  type metadata accessor for WindowProperties(0);
  sub_1C5A4E970(&qword_1EDA4B960, 255, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  *(a2 + 264) = sub_1C5BC8324();
  *(a2 + 272) = v6 & 1;
  _s7ArtworkC20MiniPlayerAppearanceCMa(0);
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  result = sub_1C5BC8324();
  *(a2 + 280) = result;
  *(a2 + 288) = v8 & 1;
  *(a2 + 289) = a1;
  return result;
}

void *sub_1C59420E4@<X0>(_BYTE *a1@<X8>)
{
  sub_1C593FBC4();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5942250(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C5A36948(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C594226C(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1C5BCAB84();
}

void sub_1C594243C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1C5942458(a2, a3 & 1);
  }
}

double sub_1C5942458(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C5942464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1C594AB10;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  _s8BackdropCMa(0);
  sub_1C592F30C(&qword_1EDA49930, _s8BackdropCMa, &unk_1C5BF1940);
  *(a3 + 24) = sub_1C5BC8C84();
  *(a3 + 32) = v6;
  *(a3 + 40) = sub_1C5BC8C84();
  *(a3 + 48) = v7;
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  sub_1C592F30C(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
  *(a3 + 56) = sub_1C5BC8C84();
  *(a3 + 64) = v8;
  type metadata accessor for WindowProperties(0);
  sub_1C592F30C(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  *(a3 + 72) = sub_1C5BC8324();
  *(a3 + 80) = v9 & 1;
  *(a3 + 88) = swift_getKeyPath("86[&");
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = swift_getKeyPath(byte_1C5BF19A0);
  *(a3 + 168) = 0;
  *(a3 + 176) = swift_getKeyPath(byte_1C5BF19C8);
  *(a3 + 184) = 0;
  v11 = _s25BackdropConditionObserverVMa(0, a1, a2, v10);
  v12 = v11[16];
  *(a3 + v12) = swift_getKeyPath(byte_1C5BF1A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  swift_storeEnumTagMultiPayload();
  v13 = a3 + v11[17];
  *v13 = swift_getKeyPath(byte_1C5BF1A48);
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = v11[18];
  *(a3 + v14) = swift_getKeyPath("h5[&");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);

  return swift_storeEnumTagMultiPayload();
}

double sub_1C59426EC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C593FE54();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C5942744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v7 = type metadata accessor for PPTRunnerModifier(0, a3, a5, a4);
  swift_unknownObjectRetain();
  MEMORY[0x1C694E550](&v9, a2, v7, a4);
  return swift_unknownObjectRelease();
}

void sub_1C594284C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ArtworkCornerStyle(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C59428AC(uint64_t a1)
{
  sub_1C594284C(319, &qword_1EDA467B0, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C5942934(uint64_t a1)
{
  result = sub_1C5BC9044();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C59429C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5942A18()
{
  result = qword_1EDA4B6A0;
  if (!qword_1EDA4B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B6A0);
  }

  return result;
}

void sub_1C5942A8C(uint64_t a1)
{
  sub_1C5942BBC();
  if (v1 <= 0x3F)
  {
    sub_1C593377C(319, &qword_1EDA46778, qword_1EC19A460, &unk_1C5BDD000);
    if (v2 <= 0x3F)
    {
      sub_1C593377C(319, &qword_1EDA467D0, &qword_1EC193C10, &qword_1C5BDB690);
      if (v3 <= 0x3F)
      {
        sub_1C5942C0C(319);
        if (v4 <= 0x3F)
        {
          sub_1C5936C70(319);
          if (v5 <= 0x3F)
          {
            sub_1C594284C(319, &qword_1EDA46008, MEMORY[0x1E6981790]);
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

void sub_1C5942BBC()
{
  if (!qword_1EDA467B8)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA467B8);
    }
  }
}

void sub_1C5942C0C(uint64_t a1)
{
  if (!qword_1EDA46400)
  {
    _s14DefaultArtworkCMa();
    sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa, &unk_1C5BDEF78);
    v1 = sub_1C5BC8C94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46400);
    }
  }
}

uint64_t storeEnumTagSinglePayload for NowPlayingArtwork.Placement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingArtwork.Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C5942E24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DB8, &unk_1C5BDDCE8);
  _s31PrimaryArtworkViewOrVideoPlayerVMa(255, v1, v2, v3);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0, &unk_1C5BD9450);
  sub_1C5BC8AB4();
  sub_1C5BC9414();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5943310();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC8, &qword_1C5BDDCF8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  type metadata accessor for ArtworkCornerModifier(255);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0, &qword_1C5BDD720);
  sub_1C5943364();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46218, &qword_1EC194DC8, &qword_1C5BDDCF8, MEMORY[0x1E697FF90]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5A4E970(&unk_1EDA48E70, 255, type metadata accessor for ArtworkCornerModifier, &unk_1C5BE5940);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C594341C();
  sub_1C5BCA724();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5943498();
  return swift_getWitnessTable();
}

unint64_t sub_1C5943310()
{
  result = qword_1EC1904B0;
  if (!qword_1EC1904B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1904B0);
  }

  return result;
}

unint64_t sub_1C5943364()
{
  result = qword_1EDA46550;
  if (!qword_1EDA46550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DB8, &unk_1C5BDDCE8);
    sub_1C5924F54(&qword_1EDA46308, &unk_1EC194DD0, &unk_1C5BDDD00, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46550);
  }

  return result;
}

unint64_t sub_1C594341C()
{
  result = qword_1EDA45D38;
  if (!qword_1EDA45D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0, &qword_1C5BDD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D38);
  }

  return result;
}

unint64_t sub_1C5943498()
{
  result = qword_1EDA46028;
  if (!qword_1EDA46028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46028);
  }

  return result;
}

unint64_t sub_1C59434EC()
{
  result = qword_1EDA490D0;
  if (!qword_1EDA490D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA490D0);
  }

  return result;
}

void *sub_1C5943540@<X0>(void *a1@<X8>)
{
  sub_1C59434EC();
  result = sub_1C5BC8F44();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1C594359C@<X0>(uint64_t *a2@<X8>)
{
  _s7ArtworkC17BackgroundArtworkCMa(0);
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C59435F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_1C5BC8F34();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194DB8, &unk_1C5BDDCE8);
  MEMORY[0x1EEE9AC00](v125);
  v5 = *(a1 + 24);
  v120 = *(a1 + 16);
  v121 = (&v80 - v6);
  v123 = a1;
  v119 = v5;
  _s31PrimaryArtworkViewOrVideoPlayerVMa(255, v120, v5, v7);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0, &unk_1C5BD9450);
  v8 = sub_1C5BC8AB4();
  sub_1C5BC9414();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v9 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v159 = MEMORY[0x1E697E5C0];
  v10 = swift_getWitnessTable();
  v11 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
  v156 = v10;
  v157 = v11;
  v12 = swift_getWitnessTable();
  v154 = swift_getWitnessTable();
  v155 = MEMORY[0x1E697E070];
  v13 = swift_getWitnessTable();
  v14 = sub_1C5943310();
  v152 = v13;
  v153 = v14;
  v150 = swift_getWitnessTable();
  v151 = MEMORY[0x1E697DD90];
  v15 = swift_getWitnessTable();
  v131 = v8;
  v132 = v9;
  v133 = v12;
  v134 = v15;
  swift_getOpaqueTypeMetadata2();
  v99 = sub_1C5BC8AB4();
  v131 = v8;
  v132 = v9;
  v133 = v12;
  v134 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v149 = MEMORY[0x1E697E5C0];
  v100 = swift_getWitnessTable();
  v118 = sub_1C5BC92A4();
  v16 = sub_1C5BC8AB4();
  v117 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v80 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC8, &qword_1C5BDDCF8);
  v18 = sub_1C5BC8AB4();
  v115 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v80 - v19;
  v20 = sub_1C5BC8AB4();
  v112 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v80 - v21;
  type metadata accessor for ArtworkCornerModifier(255);
  v22 = sub_1C5BC8AB4();
  v107 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v80 - v23;
  v24 = sub_1C5BC8AB4();
  v105 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v80 - v25;
  v26 = sub_1C5BC8AB4();
  v106 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v103 = &v80 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0, &qword_1C5BDD720);
  v29 = sub_1C5943364();
  v83 = v29;
  v30 = swift_getWitnessTable();
  v146 = v29;
  v147 = v30;
  v118 = v16;
  v31 = swift_getWitnessTable();
  v32 = sub_1C5924F54(&qword_1EDA46218, &qword_1EC194DC8, &qword_1C5BDDCF8, MEMORY[0x1E697FF90]);
  v89 = v31;
  v144 = v31;
  v145 = v32;
  v116 = v18;
  v88 = swift_getWitnessTable();
  v142 = v88;
  v143 = MEMORY[0x1E6980A30];
  v114 = v20;
  v33 = swift_getWitnessTable();
  v34 = sub_1C5A4E970(&unk_1EDA48E70, 255, type metadata accessor for ArtworkCornerModifier, &unk_1C5BE5940);
  v87 = v33;
  v140 = v33;
  v141 = v34;
  v110 = v22;
  v84 = swift_getWitnessTable();
  v138 = v84;
  v139 = MEMORY[0x1E69802C0];
  v108 = v24;
  v85 = swift_getWitnessTable();
  v136 = v85;
  v137 = MEMORY[0x1E69805B0];
  v35 = swift_getWitnessTable();
  v36 = sub_1C594341C();
  v109 = v26;
  v131 = v26;
  v132 = v28;
  v101 = v28;
  v90 = v35;
  v133 = v35;
  v134 = v36;
  v86 = v36;
  v37 = sub_1C5BCA724();
  v94 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v91 = &v80 - v38;
  v95 = v39;
  v40 = sub_1C5BC8AB4();
  v96 = *(v40 - 8);
  v97 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v92 = &v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v93 = &v80 - v43;
  v44 = sub_1C5BCA484();
  v45 = sub_1C5BCAA34();
  v47 = v46;
  v48 = v121;
  v49 = v122;
  v50 = v121 + *(v125 + 36);
  v52 = v119;
  v51 = v120;
  sub_1C594436C(v122, v120, v119, v50);
  v53 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194DD0, &unk_1C5BDDD00) + 36));
  *v53 = v45;
  v53[1] = v47;
  *v48 = v44;
  v54 = v98;
  sub_1C5BCAA34();
  v126 = v51;
  v127 = v52;
  v128 = v49;
  sub_1C5BC9CE4();
  sub_1C5924EF4(v48, &qword_1EC194DB8, &unk_1C5BDDCE8);
  v135 = *(v49 + 289);
  v55 = *(v49 + 24);
  if ((*(v49 + 200) & 1) == 0)
  {

    sub_1C5BCB4E4();
    v56 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v57 = v80;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v58 = sub_1C5942458(v55, 0);
    (*(v81 + 8))(v57, v82, v58);
  }

  sub_1C5BC9664();
  sub_1C5BCABD4();
  sub_1C59454F8();
  v59 = v113;
  v60 = v118;
  sub_1C5BCA114();
  (*(v117 + 8))(v54, v60);
  sub_1C5BC8AC4();
  sub_1C5BC9894();
  v61 = v111;
  v62 = v116;
  sub_1C5BC9F84();
  (*(v115 + 8))(v59, v62);
  v63 = v104;
  v64 = v114;
  sub_1C594554C(v114, v87);
  (*(v112 + 8))(v61, v64);
  v65 = v102;
  v66 = v110;
  sub_1C5BC9FC4();
  (*(v107 + 8))(v63, v66);
  sub_1C5A4A95C(&v131);
  v67 = v103;
  v68 = v108;
  sub_1C5BC9FA4();
  (*(v105 + 8))(v65, v68);
  sub_1C59458F8(&v131);
  v69 = v91;
  v70 = v109;
  sub_1C5BCA1C4();
  sub_1C5924EF4(&v131, &qword_1EC1929B0, &qword_1C5BDD720);
  (*(v106 + 8))(v67, v70);
  v71 = v95;
  v72 = swift_getWitnessTable();
  v73 = v92;
  sub_1C5BCA1D4();
  (*(v94 + 8))(v69, v71);
  v74 = sub_1C5943498();
  v129 = v72;
  v130 = v74;
  v75 = v97;
  v76 = swift_getWitnessTable();
  v77 = v93;
  sub_1C593EDC0(v73, v75, v76);
  v78 = *(v96 + 8);
  v78(v73, v75);
  sub_1C593EDC0(v77, v75, v76);
  return (v78)(v77, v75);
}

uint64_t sub_1C594436C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194DF0, &qword_1C5BDDD60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v31 - v8);
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40[10] = *(a1 + 170);
  v15 = a1[10];
  v39[2] = a1[9];
  *v40 = v15;
  v16 = a1[8];
  v39[0] = a1[7];
  v39[1] = v16;
  if (v40[25])
  {
    v17 = a1[10];
    v37 = a1[9];
    v38[0] = v17;
    *(v38 + 9) = *(a1 + 169);
    v18 = a1[8];
    v35 = a1[7];
    v36 = v18;
    if (v37)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v32 = v12;

    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v39, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v11 + 8))(v14, v32);
    if (v37)
    {
LABEL_7:
      v21 = sub_1C5BCA484();
      v22 = sub_1C5BCAA34();
      v24 = v23;
      v25 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194DF8, &qword_1C5BDDD68) + 36);
      sub_1C594474C(a1, v25);
      v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E00, &qword_1C5BDDD70) + 36));
      *v26 = v22;
      v26[1] = v24;
      *v9 = v21;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E08, &qword_1C5BDDD78) + 36);
      *(v9 + v27) = swift_getKeyPath("0%\\&");
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E10, &unk_1C5BD72B0);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath("\b%\\&");
      v29 = v9 + *(v6 + 36);
      *v29 = KeyPath;
      v29[8] = 1;
      sub_1C59E7D34(v9, a4, &qword_1EC194DF0, &qword_1C5BDDD60);
      v20 = 0;
      return (*(v7 + 56))(a4, v20, 1, v6);
    }
  }

  if (*(&v36 + 1) != 1)
  {
    goto LABEL_7;
  }

  v20 = 1;
  return (*(v7 + 56))(a4, v20, 1, v6);
}

uint64_t sub_1C59446F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8E74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C594474C@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v34 = a4;
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E18, &qword_1C5BDDDE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E20, &qword_1C5BDDDE8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  sub_1C5944C58(a1, v11);
  v15 = *a1;
  if (*(a1 + 8) == 1)
  {
    v16 = *a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v18 = sub_1C5942458(v15, 0);
    (*(v6 + 8))(v8, v5, v18);
    v16 = v36;
  }

  if (v16 == 1)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  sub_1C59E7D34(v11, v14, &qword_1EC194E18, &qword_1C5BDDDE0);
  *&v14[*(v12 + 36)] = v19;
  v20 = *a1;
  if (*(a1 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v21 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v22 = sub_1C5942458(v20, 0);
    v23 = *(v6 + 8);
    v23(v8, v5, v22);
    v24 = *a1;
    if (*(a1 + 8) != 1)
    {

      sub_1C5BCB4E4();
      v25 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v26 = sub_1C5942458(v24, 0);
      v23(v8, v5, v26);
    }
  }

  sub_1C5BCAA84();
  v27 = sub_1C5BCAAB4();

  v28 = *a1;
  if (*(a1 + 8) == 1)
  {
    v35 = *a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v30 = sub_1C5942458(v28, 0);
    (*(v6 + 8))(v8, v5, v30);
    LOBYTE(v28) = v35;
  }

  v31 = v34;
  sub_1C59E7D34(v14, v34, &qword_1EC194E20, &qword_1C5BDDDE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E28, &qword_1C5BDDDF0);
  v33 = v31 + *(result + 36);
  *v33 = v27;
  *(v33 + 8) = v28;
  return result;
}

uint64_t sub_1C5944C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E30, &qword_1C5BDDDF8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E38, &qword_1C5BDDE00);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = sub_1C5BCA5B4();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 248))
  {
    swift_getKeyPath("@+\\&", v10);
    swift_getKeyPath(" +\\&");

    sub_1C5BC8034();

    if (v32[0])
    {
      v13 = v32[0];
      sub_1C5BCA594();
      (*(v9 + 104))(v12, *MEMORY[0x1E6981630], v8);
      v14 = sub_1C5BCA5E4();

      (*(v9 + 8))(v12, v8);
      *v7 = v14;
      *(v7 + 1) = 0;
      *(v7 + 8) = 257;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C10, &qword_1C5BDDE90);
      sub_1C5946E40(&qword_1EDA46510, &qword_1EC192C10, &qword_1C5BDDE90);
      sub_1C5A4ED64();
      v15 = v29;
      sub_1C5BC92C4();

      v16 = 0;
LABEL_9:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E40, &qword_1C5BDDE08);
      return (*(*(v25 - 8) + 56))(v15, v16, 1, v25);
    }

    sub_1C59416B4(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460, &unk_1C5BDD000);
    if (swift_dynamicCast())
    {
      v17 = v31;
      if (v31)
      {
        v27 = v30;
        type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
        *(swift_allocObject() + 16) = v17;
        v18 = v17;
        sub_1C5BC85C4();
        v19 = sub_1C5BCAA54();
        v21 = v20;
        KeyPath = swift_getKeyPath(byte_1C5BDDE10);
        v23 = swift_getKeyPath("x$\\&");
        v24 = &v4[*(v28 + 36)];
        *v24 = KeyPath;
        v24[8] = 0;
        *(v24 + 2) = v23;
        v24[24] = 0;
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
        sub_1C59400B0(v4, v7, &qword_1EC194E30, &qword_1C5BDDDF8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C10, &qword_1C5BDDE90);
        sub_1C5946E40(&qword_1EDA46510, &qword_1EC192C10, &qword_1C5BDDE90);
        sub_1C5A4ED64();
        v15 = v29;
        sub_1C5BC92C4();

        sub_1C5924EF4(v4, &qword_1EC194E30, &qword_1C5BDDDF8);
        v16 = 0;
        goto LABEL_9;
      }
    }

    v16 = 1;
    v15 = v29;
    goto LABEL_9;
  }

  _s7ArtworkC17BackgroundArtworkCMa(0);
  sub_1C5A4E970(&qword_1EDA49EF0, 255, _s7ArtworkC17BackgroundArtworkCMa, &unk_1C5BDD514);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C59451A4()
{

  return swift_deallocObject();
}

uint64_t sub_1C59451F4@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a7@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  *a7 = *a1;
  sub_1C5931F84(a2, a7 + 8);
  *(a7 + 48) = v8;
  *(a7 + 49) = v9;
  *(a7 + 56) = sub_1C5BC8C84();
  *(a7 + 64) = v10;
  _s13HostedContentCMa(0);
  sub_1C5A4E970(&qword_1EDA4AE80, 255, _s13HostedContentCMa, &unk_1C5BDBA8C);
  result = sub_1C5BC8324();
  *(a7 + 72) = result;
  *(a7 + 80) = v12 & 1;
  return result;
}

uint64_t sub_1C59452C4()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (*v0 != 1)
    {
      return 0;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v6 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v7 = sub_1C5942458(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    if (v11[0] != 1)
    {
      return 0;
    }
  }

  sub_1C59416B4(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460, &unk_1C5BDD000);
  if (swift_dynamicCast())
  {
    v8 = v10[2];

    if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C59454BC()
{
  result = sub_1C5BCAAA4();
  qword_1EDA5DA40 = result;
  return result;
}

unint64_t sub_1C59454F8()
{
  result = qword_1EDA4B6B0;
  if (!qword_1EDA4B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B6B0);
  }

  return result;
}

uint64_t sub_1C594554C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ArtworkCornerModifier(0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = swift_getKeyPath(byte_1C5BE57B8, v10);
  v12[8] = 0;
  *(v12 + 2) = swift_getKeyPath(aH_3);
  v12[56] = 0;
  *(v12 + 8) = swift_getKeyPath(aH_4);
  v12[72] = 0;
  _s14DefaultArtworkCMa();
  sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa, &unk_1C5BDEF78);
  *(v12 + 10) = sub_1C5BC8C84();
  *(v12 + 11) = v13;
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  sub_1C5AC3CD8(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
  *(v12 + 12) = sub_1C5BC8C84();
  *(v12 + 13) = v14;
  *v8 = 0;
  v15 = *(v3 + 20);
  v16 = *MEMORY[0x1E697F480];
  v17 = sub_1C5BC9044();
  (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
  sub_1C5945830(v8, v5, type metadata accessor for ArtworkCornerStyle);
  sub_1C5BCA684();
  sub_1C5945898(v8, type metadata accessor for ArtworkCornerStyle);
  MEMORY[0x1C694E550](v12, a1, v9, v19);
  return sub_1C5945898(v12, type metadata accessor for ArtworkCornerModifier);
}

uint64_t sub_1C5945830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5945898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C59458F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C59400B0(v2, v11, &qword_1EC192EF8, &qword_1C5BD72A8);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1C5945A8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E10, &qword_1C5BE59E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E08, &qword_1C5BE59E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E00, &qword_1C5BE59D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196DF8, &qword_1C5BE59D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10, &qword_1C5BDB690);
  sub_1C5AC4570();
  sub_1C5945CDC();
  swift_getOpaqueTypeConformance2();
  sub_1C593A9AC();
  swift_getOpaqueTypeConformance2();
  sub_1C592D124();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5945BF8()
{
  result = qword_1EDA46630;
  if (!qword_1EDA46630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E18, &unk_1C5BE59F0);
    sub_1C5924F54(&qword_1EDA462A0, &qword_1EC196E20, &qword_1C5BE5A00, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30, &qword_1C5BE3D80, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46630);
  }

  return result;
}

unint64_t sub_1C5945CDC()
{
  result = qword_1EDA4DA20;
  if (!qword_1EDA4DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10, &qword_1C5BDB690);
    sub_1C5945D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DA20);
  }

  return result;
}

unint64_t sub_1C5945D60()
{
  result = qword_1EDA4DA30;
  if (!qword_1EDA4DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DA30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WaveformTheme.ArtworkTreatment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5945E20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s25ExpandsNowPlayingModifierVMa(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1C5BC9394();
  type metadata accessor for TapExcludedGeometries(255);
  swift_getWitnessTable();
  sub_1C594618C(qword_1EDA488D8, type metadata accessor for TapExcludedGeometries, &unk_1C5BF1064);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  sub_1C5BC8AB4();
  sub_1C5BC9304();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997B8, &qword_1C5BF1278);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997B0, &unk_1C5BF1268);
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA461F8, &qword_1EC1997B8, &qword_1C5BF1278, MEMORY[0x1E697C968]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA466B8, &qword_1EC1997B0, &unk_1C5BF1268, MEMORY[0x1E697E238]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C594618C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C59461EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5946240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59462C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  _s21MiniPlayerContentViewV7ArtworkVMa(255, *a1, v5, a4);
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s22MiniPlayerMetadataViewVMa(255, v4, v5, v6);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC92D4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C59464E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997D8, &qword_1C5BF12A0);
  sub_1C5946558();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5946558()
{
  result = qword_1EDA46570;
  if (!qword_1EDA46570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997D8, &qword_1C5BF12A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997D0, &qword_1C5BF1298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929F8, &qword_1C5BD6590);
    sub_1C594664C();
    sub_1C5946730();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46570);
  }

  return result;
}

unint64_t sub_1C594664C()
{
  result = qword_1EDA46610;
  if (!qword_1EDA46610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997D0, &qword_1C5BF1298);
    sub_1C5924F54(&qword_1EDA46280, &qword_1EC1997E0, &qword_1C5BF12A8, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA46208, &qword_1EC194958, &unk_1C5BE8910, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46610);
  }

  return result;
}

unint64_t sub_1C5946730()
{
  result = qword_1EDA45DC8;
  if (!qword_1EDA45DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929F8, &qword_1C5BD6590);
    sub_1C594618C(&unk_1EDA45DD0, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45DC8);
  }

  return result;
}

unint64_t sub_1C5946804()
{
  result = qword_1EC1904A0;
  if (!qword_1EC1904A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199958, &qword_1C5BF17F0);
    sub_1C5946890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1904A0);
  }

  return result;
}

unint64_t sub_1C5946890()
{
  result = qword_1EC1904A8;
  if (!qword_1EC1904A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199930, &qword_1C5BF17C0);
    sub_1C5924F54(&qword_1EC190490, &qword_1EC199940, &qword_1C5BF17D0, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC190498, &qword_1EC199938, &qword_1C5BF17C8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1904A8);
  }

  return result;
}

uint64_t sub_1C5946990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5946A30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00, &qword_1C5BD87E0);
  _s9VideoViewVMa(255, v1, v2, v3);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC8AB4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1C5946D98();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  sub_1C5946DEC();
  swift_getWitnessTable();
  sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5946E40(&qword_1EDA46558, &unk_1EC199E00, &qword_1C5BD87E0);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C5946D98()
{
  result = qword_1EDA49240;
  if (!qword_1EDA49240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA49240);
  }

  return result;
}

unint64_t sub_1C5946DEC()
{
  result = qword_1EDA47E88[0];
  if (!qword_1EDA47E88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA47E88);
  }

  return result;
}

uint64_t sub_1C5946E40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C5946EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v3 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v169 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v168 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC96A4();
  v164 = *(v7 - 8);
  v165 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v160 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v12 = _s25ExpandsNowPlayingModifierVMa(0, v10, v9, v11);
  v157 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v125 - v13;
  _s11LeadingViewVMa(255, v10, v9, v14);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s21MiniPlayerContentViewV10CenterViewVMa(255, v10, v9, v15);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0, &unk_1C5BDB370);
  sub_1C5BC8AB4();
  v175 = v10;
  v172 = v9;
  _s12TrailingViewVMa(255, v10, v9, v16);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  v17 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v130 = v17;
  v132 = WitnessTable;
  v19 = sub_1C5BCA714();
  v20 = sub_1C5BC8AB4();
  v21 = sub_1C5BC8AB4();
  v22 = sub_1C5BC8AB4();
  v23 = sub_1C5BC8AB4();
  v133 = v19;
  v24 = swift_getWitnessTable();
  v25 = MEMORY[0x1E697E5D8];
  v131 = v24;
  v185[76] = v24;
  v185[77] = MEMORY[0x1E697E5D8];
  v136 = v20;
  v134 = swift_getWitnessTable();
  v185[74] = v134;
  v185[75] = v25;
  v138 = v21;
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x1E697E040];
  v137 = v26;
  v185[72] = v26;
  v185[73] = MEMORY[0x1E697E040];
  v28 = swift_getWitnessTable();
  v185[70] = v28;
  v185[71] = v27;
  v29 = swift_getWitnessTable();
  v185[0] = v22;
  v185[1] = MEMORY[0x1E6981CD8];
  v185[2] = v23;
  v185[3] = v28;
  v185[4] = MEMORY[0x1E6981CD0];
  v185[5] = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v143 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v141 = &v125 - v31;
  v144 = v32;
  v33 = sub_1C5BC8AB4();
  v151 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v148 = &v125 - v34;
  v35 = sub_1C5BC8AB4();
  v150 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v146 = v22;
  v147 = &v125 - v36;
  v185[0] = v22;
  v185[1] = MEMORY[0x1E6981CD8];
  v145 = v23;
  v185[2] = v23;
  v142 = v28;
  v185[3] = v28;
  v185[4] = MEMORY[0x1E6981CD0];
  v139 = v29;
  v185[5] = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v158 = v12;
  v38 = swift_getWitnessTable();
  v135 = OpaqueTypeConformance2;
  v185[68] = OpaqueTypeConformance2;
  v185[69] = v38;
  v152 = v33;
  v39 = swift_getWitnessTable();
  v40 = sub_1C593B318();
  v185[66] = v39;
  v185[67] = v40;
  v41 = swift_getWitnessTable();
  v171 = v35;
  v185[0] = v35;
  v149 = v41;
  v185[1] = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v154 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v153 = &v125 - v43;
  sub_1C5BC97C4();
  v155 = v42;
  v44 = sub_1C5BC8AB4();
  v162 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v174 = &v125 - v45;
  v163 = v46;
  v47 = sub_1C5BC8AB4();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v159 = &v125 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v161 = &v125 - v51;
  v52 = sub_1C5BC8F34();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v125 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  MEMORY[0x1EEE9AC00](v56);
  v173 = &v125 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v129 + 16);
  v186[0] = *v129;
  v186[1] = v58;
  *v187 = *(v129 + 32);
  *&v187[9] = *(v129 + 41);
  v189 = *(v129 + 24);
  v59 = *(v129 + 16);
  v188 = v59;
  if (v189 != 1)
  {
    sub_1C5A3639C(&v188, v185);
    sub_1C5BCB4E4();
    v60 = sub_1C5BC9844();
    v129 = v56;
    v61 = v47;
    v62 = v39;
    v63 = v53;
    v64 = v52;
    v65 = v60;
    sub_1C5BC7C54();

    v52 = v64;
    v53 = v63;
    v39 = v62;
    v47 = v61;
    v56 = v129;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v188, &qword_1EC1929E0, &qword_1C5BDE810);
    (*(v53 + 8))(v55, v52);
    LOBYTE(v59) = v185[0];
  }

  v166 = v48;
  v167 = v47;
  v127 = v53;
  v128 = v52;
  v126 = v55;
  v140 = v39;
  if (v59 != 3 && v59)
  {
    if (qword_1EC1906C8 != -1)
    {
      swift_once();
    }

    v66 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      swift_once();
    }

    v66 = qword_1EDA5DAE8;
  }

  v67 = __swift_project_value_buffer(v56, v66);
  v68 = v173;
  sub_1C5948550(v67, v173);
  v69 = sub_1C5BC8FC4();
  MEMORY[0x1EEE9AC00](v69);
  v70 = v175;
  v71 = v172;
  *(&v125 - 4) = v175;
  *(&v125 - 3) = v71;
  v123 = v186;
  v124 = v68;
  swift_checkMetadataState();
  sub_1C5BCA704();
  memcpy(v180, v185, 0x180uLL);
  sub_1C5BC98C4();
  v72 = swift_checkMetadataState();
  sub_1C5BCA2F4();
  memcpy(v182, v180, sizeof(v182));
  (*(*(v72 - 8) + 8))(v182, v72);
  memcpy(v180, v181, 0x1A9uLL);
  sub_1C5BC98E4();
  v73 = swift_checkMetadataState();
  sub_1C5BCA2F4();
  memcpy(v183, v180, 0x1A9uLL);
  (*(*(v73 - 8) + 8))(v183, v73);
  memcpy(v180, v185, 0x1D9uLL);
  sub_1C5BCAA54();
  v74 = swift_checkMetadataState();
  sub_1C5BCA234();
  memcpy(v184, v180, 0x1D9uLL);
  (*(*(v74 - 8) + 8))(v184, v74);
  memcpy(v180, v181, sizeof(v180));
  v75 = sub_1C5BCA9F4();
  MEMORY[0x1EEE9AC00](v75);
  *(&v125 - 4) = v70;
  *(&v125 - 3) = v71;
  v76 = swift_checkMetadataState();
  swift_checkMetadataState();
  v123 = v139;
  v77 = v141;
  sub_1C5BCA364();
  memcpy(v185, v180, 0x210uLL);
  (*(*(v76 - 8) + 8))(v185, v76);
  v78 = v156;
  sub_1C5949AA0(v70, v71, v156);
  v79 = v148;
  v80 = v144;
  v81 = v158;
  MEMORY[0x1C694E550](v78, v144, v158, v135);
  (*(v157 + 8))(v78, v81);
  (*(v143 + 8))(v77, v80);
  KeyPath = swift_getKeyPath(byte_1C5BDB140);
  LOBYTE(v180[0]) = 0;
  type metadata accessor for WindowProperties(0);
  sub_1C5937E88(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  v83 = sub_1C5BC8324();
  LOBYTE(v76) = v84;
  LOBYTE(v190) = 2;
  sub_1C5BCA684();
  v85 = v181[0];
  v86 = v181[1];
  v181[0] = KeyPath;
  LOBYTE(v181[1]) = v180[0];
  v181[2] = v83;
  LOBYTE(v181[3]) = v76 & 1;
  LOBYTE(v181[4]) = v85;
  v181[5] = v86;
  v87 = v147;
  v88 = v152;
  MEMORY[0x1C694E550](v181, v152, &type metadata for ApplyingWidthConstraints, v140);
  sub_1C5942458(v181[0], v181[1]);

  (*(v151 + 8))(v79, v88);
  v89 = v160;
  sub_1C5BC9694();
  v90 = v153;
  v91 = v171;
  v92 = v149;
  sub_1C5BCA0C4();
  (*(v164 + 8))(v89, v165);
  (*(v150 + 8))(v87, v91);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v93 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v181[0] = sub_1C5BCAE94();
  v181[1] = v94;
  v180[0] = v171;
  v180[1] = v92;
  v95 = swift_getOpaqueTypeConformance2();
  sub_1C594A23C();
  v96 = v155;
  sub_1C5BCA034();

  (*(v154 + 8))(v90, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943F8, &unk_1C5BDB380);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1C5BD4D40;
  v181[0] = 0;
  v181[1] = 0xE000000000000000;
  MEMORY[0x1C694F170](0x7461745377656976, 0xEA00000000003D65);
  v191 = v187[24];
  v98 = *&v187[16];
  v190 = *&v187[16];
  v99 = v187[24];

  v100 = v166;
  if ((v99 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v101 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v102 = v126;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v190, &qword_1EC194400, &unk_1C5BE94E0);
    (*(v127 + 8))(v102, v128);
    v98 = v180[0];
  }

  v180[0] = v98;
  sub_1C5937E88(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v103 = *(v98 + 17);

  LOBYTE(v180[0]) = v103;
  sub_1C5BCBBA4();
  v104 = v181[1];
  *(v97 + 32) = v181[0];
  *(v97 + 40) = v104;
  v180[0] = 0x6E6979616C507369;
  v180[1] = 0xEA00000000003D67;
  v105 = v172;
  v106 = v175;
  sub_1C59498C4(*&v186[0], *(&v186[0] + 1), v175, *(v172 + 8));
  v107 = *(v105 + 224);
  swift_unknownObjectRetain();
  v108 = v107(v106, v105);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v109 = *(v108 + 177);

  if (v109)
  {
    v110 = 1702195828;
  }

  else
  {
    v110 = 0x65736C6166;
  }

  if (v109)
  {
    v111 = 0xE400000000000000;
  }

  else
  {
    v111 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v110, v111);

  v112 = v180[1];
  *(v97 + 48) = v180[0];
  *(v97 + 56) = v112;
  v113 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v178 = v95;
  v179 = v113;
  v114 = v163;
  v115 = swift_getWitnessTable();
  v116 = v159;
  v117 = v174;
  sub_1C5949C94(0xD000000000000016, 0x80000001C5BF8190, v97, v114);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v162 + 8))(v117, v114);
  v176 = v115;
  v177 = v113;
  v118 = v167;
  v119 = swift_getWitnessTable();
  v120 = v161;
  sub_1C593EDC0(v116, v118, v119);
  v121 = *(v100 + 8);
  v121(v116, v118);
  sub_1C593EDC0(v120, v118, v119);
  v121(v120, v118);
  return sub_1C594A4A4(v173);
}

uint64_t sub_1C59483C0()
{
  v0 = sub_1C5BCA5D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  __swift_allocate_value_buffer(v4, qword_1EDA5DAE8);
  v5 = __swift_project_value_buffer(v4, qword_1EDA5DAE8);
  (*(v1 + 104))(v3, *MEMORY[0x1E69816E0], v0);
  sub_1C5BC9924();
  sub_1C5BC9994();
  v6 = sub_1C5BC99E4();

  *v5 = xmmword_1C5BDB0C0;
  *(v5 + 16) = xmmword_1C5BDB0D0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0x4034000000000000;
  *(v5 + 56) = xmmword_1C5BDB0E0;
  *(v5 + 72) = xmmword_1C5BDB0F0;
  result = (*(v1 + 32))(v5 + v4[12], v3, v0);
  *(v5 + v4[13]) = 0x4028000000000000;
  *(v5 + v4[14]) = v6;
  return result;
}

uint64_t sub_1C5948550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59485B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C5BC8454();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_1C5BC8464();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_1C5BC87D4();
}

uint64_t sub_1C594875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(v12);
  sub_1C593EDC0(v10, a4, a6);
  v16 = *(v8 + 8);
  v16(v10, a4);
  sub_1C593EDC0(v14, a4, a6);
  return (v16)(v14, a4);
}

uint64_t sub_1C59488A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v92 = a2;
  v93 = a3;
  v88 = a5;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = *(a1 + 24);
  v12 = a1[2];
  v205 = v12;
  if (v206 == 1)
  {
    v13 = v12;
    v204 = v12;
  }

  else
  {
    sub_1C5A3639C(&v205, &v186);
    sub_1C5BCB4E4();
    v14 = a4;
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    a4 = v14;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v205, &qword_1EC1929E0, &qword_1C5BDE810);
    (*(v8 + 8))(v11, v7);
    v13 = v204;
  }

  v16 = v93;
  v89 = a4;
  if (v13 && _UISolariumEnabled())
  {
    v90 = *(a4 + 8);
    v17 = sub_1C5BC8C84();
    v19 = v18;
    KeyPath = swift_getKeyPath(byte_1C5BDB140);
    *&v177 = v17;
    *(&v177 + 1) = v19;
    *&v178 = KeyPath;
    BYTE8(v178) = 0;
    v21 = swift_getKeyPath(byte_1C5BDB408);
    v23 = _s11LeadingViewVMa(0, v93, a4, v22);
    WitnessTable = swift_getWitnessTable();
    sub_1C59498F4(v21, 1, v23, WitnessTable);

    v25 = v178;
    LOBYTE(v21) = BYTE8(v178);
    swift_unknownObjectRelease();
    sub_1C5942458(v25, v21);
    v181 = v189[1];
    v182 = v190;
    v183[0] = v191;
    v177 = v186;
    v178 = v187;
    v179 = v188;
    v180 = v189[0];
    v26 = sub_1C5BC8AB4();
    v27 = sub_1C5949828();
    v94 = WitnessTable;
    v95 = v27;
    v28 = swift_getWitnessTable();
    sub_1C593EDC0(&v177, v26, v28);
    v171[1] = v181;
    v172 = v182;
    v173[0] = v183[0];
    v168 = v177;
    v169 = v178;
    v170 = v179;
    v171[0] = v180;
    v29 = *(*(v26 - 8) + 8);
    v29(&v168, v26);
    v189[1] = v162;
    v190 = v163;
    v191 = v164;
    v186 = v158;
    v187 = v159;
    v188 = v160;
    v189[0] = v161;
    sub_1C593EDC0(&v186, v26, v28);
    v181 = v189[1];
    v182 = v190;
    v183[0] = v191;
    v177 = v186;
    v178 = v187;
    a4 = v89;
    v179 = v188;
    v180 = v189[0];
    v29(&v177, v26);
    v16 = v93;
    v155 = v144;
    v156 = v145;
    v157[0] = v146;
    v151 = v140;
    v152 = v141;
    v153 = v142;
    v154 = v143;
    sub_1C5941600(&v151, &v110);
    v189[1] = v155;
    v190 = v156;
    v191 = v157[0];
    v186 = v151;
    v187 = v152;
    v188 = v153;
    v189[0] = v154;
    v30 = sub_1C5BCB804();
    (*(*(v30 - 8) + 8))(&v186, v30);
    v31 = v90;
    v201 = v114;
    v202 = v115;
    v203 = v116;
    v197 = v110;
    v198 = v111;
    v199 = v112;
    v200 = v113;
  }

  else
  {
    _s11LeadingViewVMa(255, v16, a4, v9);
    sub_1C5BC8AB4();
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    memset(v189, 0, sizeof(v189));
    v190 = 0u;
    v191 = 0u;
    v32 = swift_getWitnessTable();
    v33 = sub_1C5949828();
    v195 = v32;
    v196 = v33;
    swift_getWitnessTable();
    sub_1C5941600(&v186, &v197);
    v31 = *(a4 + 8);
  }

  v34 = *a1;
  v35 = a1[1];
  v90 = v31;
  sub_1C59498C4(v34, v35, v16, v31);
  v36 = v16;
  v37 = *(a4 + 224);
  swift_unknownObjectRetain();
  v37(v36, a4);
  swift_unknownObjectRelease();

  _s18MiniPlayerMetadataCMa();
  sub_1C5937E88(qword_1EDA4A4D8, _s18MiniPlayerMetadataCMa, &unk_1C5BD5704);
  v38 = sub_1C5BC88C4();
  v40 = v39;
  v41 = swift_getKeyPath(byte_1C5BDB140);
  *&v177 = v38;
  *(&v177 + 1) = v40;
  *&v178 = v41;
  BYTE8(v178) = 0;
  sub_1C5BC98C4();
  _s21MiniPlayerContentViewV10CenterViewVMa(0, v36, a4, v42);
  v43 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v44 = v178;
  LOBYTE(v40) = BYTE8(v178);

  sub_1C5942458(v44, v40);
  v169 = v187;
  v170 = v188;
  v171[0] = v189[0];
  *(v171 + 9) = *(v189 + 9);
  v168 = v186;
  sub_1C5BC98E4();
  v45 = sub_1C5BC8AB4();
  v138 = v43;
  v139 = MEMORY[0x1E697E5D8];
  v46 = MEMORY[0x1E697E858];
  v47 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v149[1] = v169;
  v149[2] = v170;
  v150[0] = v171[0];
  *(v150 + 9) = *(v171 + 9);
  v149[0] = v168;
  (*(*(v45 - 8) + 8))(v149, v45);
  v171[1] = v181;
  v172 = v182;
  v173[0] = v183[0];
  *(v173 + 9) = *(v183 + 9);
  v168 = v177;
  v169 = v178;
  v170 = v179;
  v171[0] = v180;
  v48 = sub_1C5BC8AB4();
  v136 = v47;
  v137 = MEMORY[0x1E697E5D8];
  v92 = v46;
  v49 = swift_getWitnessTable();
  sub_1C5BC9F24();
  v155 = v171[1];
  v156 = v172;
  v157[0] = v173[0];
  *(v157 + 9) = *(v173 + 9);
  v151 = v168;
  v152 = v169;
  v153 = v170;
  v154 = v171[0];
  (*(*(v48 - 8) + 8))(&v151, v48);
  v183[0] = v191;
  v183[1] = v192;
  v184 = v193;
  v179 = v188;
  v180 = v189[0];
  v181 = v189[1];
  v182 = v190;
  v177 = v186;
  v178 = v187;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0, &unk_1C5BDB370);
  v50 = sub_1C5BC8AB4();
  v51 = sub_1C5924F54(&qword_1EDA462C0, &qword_1EC1943F0, &unk_1C5BDB370, MEMORY[0x1E697FDC0]);
  v134 = v49;
  v135 = v51;
  v85 = swift_getWitnessTable();
  sub_1C593EDC0(&v177, v50, v85);
  v164 = v183[0];
  v165 = v183[1];
  v166 = v184;
  v160 = v179;
  v161 = v180;
  v162 = v181;
  v163 = v182;
  v158 = v177;
  v159 = v178;
  v91 = v50;
  v84 = *(v50 - 8);
  v52 = *(v84 + 8);
  v86 = v84 + 8;
  v87 = v52;
  v52(&v158, v50);
  v53 = v93;
  v54 = sub_1C5BC8C84();
  v56 = v55;
  v57 = swift_getKeyPath(byte_1C5BDB140);
  *&v177 = v54;
  *(&v177 + 1) = v56;
  *&v178 = v57;
  BYTE8(v178) = 0;
  v58 = swift_getKeyPath(byte_1C5BDB3E8);
  v59 = v89;
  v61 = _s12TrailingViewVMa(0, v53, v89, v60);
  v62 = swift_getWitnessTable();
  sub_1C59498F4(v58, 1, v61, v62);

  v63 = v178;
  LOBYTE(v58) = BYTE8(v178);
  swift_unknownObjectRelease();
  sub_1C5942458(v63, v58);
  v181 = v189[1];
  v182 = v190;
  v183[0] = v191;
  v177 = v186;
  v178 = v187;
  v179 = v188;
  v180 = v189[0];
  v64 = sub_1C5BC8AB4();
  v81 = sub_1C5949828();
  v126[3] = v62;
  v126[4] = v81;
  v82 = swift_getWitnessTable();
  sub_1C593EDC0(&v177, v64, v82);
  v167[4] = v181;
  v167[5] = v182;
  v167[6] = v183[0];
  v167[0] = v177;
  v167[1] = v178;
  v167[2] = v179;
  v167[3] = v180;
  v80 = v64;
  v65 = *(v64 - 8);
  v66 = *(v65 + 8);
  v83 = v65 + 8;
  v90 = v66;
  v66(v167, v64);
  v123 = v201;
  v124 = v202;
  v125 = v203;
  v119 = v197;
  v120 = v198;
  v121 = v199;
  v122 = v200;
  v170 = v142;
  v171[0] = v143;
  v168 = v140;
  v169 = v141;
  v173[0] = v146;
  v173[1] = v147;
  v171[1] = v144;
  v172 = v145;
  v174 = v148;
  v116 = v146;
  v117 = v147;
  v118 = v148;
  v112 = v142;
  v113 = v143;
  v114 = v144;
  v115 = v145;
  v110 = v140;
  v111 = v141;
  v126[0] = &v119;
  v126[1] = &v110;
  v175[4] = v131;
  v175[5] = v132;
  v175[6] = v133;
  v175[0] = v127;
  v175[1] = v128;
  v175[2] = v129;
  v175[3] = v130;
  v104 = v128;
  v105 = v129;
  v103 = v127;
  v106 = v130;
  v107 = v131;
  v108 = v132;
  v109 = v133;
  v126[2] = &v103;
  _s11LeadingViewVMa(255, v93, v59, v67);
  sub_1C5BC8AB4();
  v68 = sub_1C5BCB804();
  v69 = *(v68 - 8);
  (*(v69 + 16))(&v186, &v197, v68);
  v70 = v91;
  (*(v84 + 16))(&v186, &v168, v91);
  v71 = *(v65 + 16);
  v72 = v80;
  v71(&v186, v175, v80);
  v102[0] = v68;
  v102[1] = v70;
  v102[2] = v72;
  v97 = swift_getWitnessTable();
  v98 = v81;
  v96 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v100 = v85;
  v101 = v82;
  sub_1C594226C(v126, 3uLL, v102);
  v73 = *(v69 + 8);
  v92 = v69 + 8;
  v93 = v73;
  v73(&v197, v68);
  v176[4] = v131;
  v176[5] = v132;
  v176[6] = v133;
  v176[0] = v127;
  v176[1] = v128;
  v176[2] = v129;
  v176[3] = v130;
  v74 = v72;
  v75 = v90;
  v90(v176, v72);
  v183[0] = v146;
  v183[1] = v147;
  v184 = v148;
  v179 = v142;
  v180 = v143;
  v181 = v144;
  v182 = v145;
  v177 = v140;
  v178 = v141;
  v76 = v91;
  v77 = v87;
  v87(&v177, v91);
  v185[4] = v107;
  v185[5] = v108;
  v185[6] = v109;
  v185[0] = v103;
  v185[1] = v104;
  v185[2] = v105;
  v185[3] = v106;
  v75(v185, v74);
  v191 = v116;
  v192 = v117;
  v193 = v118;
  v188 = v112;
  v189[0] = v113;
  v189[1] = v114;
  v190 = v115;
  v186 = v110;
  v187 = v111;
  v77(&v186, v76);
  v194[4] = v123;
  v194[5] = v124;
  v194[6] = v125;
  v194[0] = v119;
  v194[1] = v120;
  v194[2] = v121;
  v194[3] = v122;
  return v93(v194, v68);
}

unint64_t sub_1C5949828()
{
  result = qword_1EDA47588;
  if (!qword_1EDA47588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47588);
  }

  return result;
}

uint64_t sub_1C594987C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C59498C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C59498F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TapExcludedGeometries(0);
  sub_1C594618C(qword_1EDA488D8, type metadata accessor for TapExcludedGeometries, &unk_1C5BF1064);
  v8 = sub_1C5BC8324();
  v10 = v9;
  v12 = 0u;
  v13 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929F8, &qword_1C5BD6590);
  sub_1C5BCA684();
  v18 = v10 & 1;
  v17 = v21;
  *&v12 = a1;
  BYTE8(v12) = a2;
  *&v13 = v8;
  BYTE8(v13) = v10 & 1;
  v14 = v19;
  v15 = v20;
  LOBYTE(v16) = v21;
  *(&v16 + 1) = *(&v21 + 1);

  MEMORY[0x1C694E550](&v12, a3, &type metadata for RegisterExcludedGeometryModifier, a4);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19 = v12;
  v20 = v13;
  return sub_1C5949A54(&v19);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C5949AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C5949B68(sub_1C5B84A2C, 0);
  v7 = _s25ExpandsNowPlayingModifierVMa(0, a1, a2, v6);
  v8 = (a3 + *(v7 + 36));
  *v8 = sub_1C5BC8C84();
  v8[1] = v9;
  v10 = (a3 + *(v7 + 40));
  type metadata accessor for NowPlayingViewControllerProxy(0, a1, a2, v11);
  swift_getWitnessTable();
  result = sub_1C5BC8C84();
  *v10 = result;
  v10[1] = v13;
  return result;
}

uint64_t sub_1C5949B68(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for TapExcludedGeometries(0);

  return sub_1C5BC8194();
}

uint64_t sub_1C5949BEC()
{

  return swift_deallocObject();
}

uint64_t sub_1C5949C24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C5949C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = [objc_opt_self() mainBundle];
    sub_1C5949F2C();

    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](a1, a2);
    MEMORY[0x1C694F170](91, 0xE100000000000000);
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C594A39C(0, v6, 0);
    v9 = (a3 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1C594A39C((v12 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      v14 = v20 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v9 += 2;
      --v6;
    }

    while (v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196E80, &qword_1C5BE5B18);
    sub_1C594A3BC();
    v15 = sub_1C5BCAD74();
    v17 = v16;

    MEMORY[0x1C694F170](v15, v17);

    MEMORY[0x1C694F170](93, 0xE100000000000000);
    sub_1C5BCA164();
  }

  else
  {
    v19 = [objc_opt_self() mainBundle];
    sub_1C5949F2C();

    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](a1, a2);
    sub_1C5BCA164();
  }
}

uint64_t sub_1C5949F2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738, &unk_1C5BE0D80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v39[-v7];
  v42 = 0;
  v43 = 0xE000000000000000;
  v9 = [v1 bundleIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1C5BCAE74();
    v13 = v12;

    v40 = 46;
    v41 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v14);
    *&v39[-16] = &v40;
    v15 = sub_1C5AF0AC8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C5AC4F58, &v39[-32], v11, v13, v39);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32 * v16);
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];

      v22 = v21;
      v23 = v19;
      v24 = v18;
      goto LABEL_12;
    }
  }

  v40 = 0;
  v41 = 0xE000000000000000;
  v25 = [v1 executableURL];
  if (v25)
  {
    v26 = v25;
    sub_1C5BC79E4();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_1C5BC7A24();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v4, v27, 1, v28);
  sub_1C5AC4E80(v4, v8);
  if ((*(v29 + 48))(v8, 1, v28) == 1)
  {
    sub_1C5AC4EF0(v8);
    v30 = 0xEB00000000495565;
    v31 = 0x726F43616964654DLL;
  }

  else
  {
    v32 = sub_1C5BC7984();
    v30 = v33;
    (*(v29 + 8))(v8, v28);
    v31 = v32;
  }

  MEMORY[0x1C694F170](v31, v30);

  v24 = sub_1C5BCB874();
  v20 = v34;
LABEL_12:
  v35 = MEMORY[0x1C694F120](v24, v23, v22, v20);
  v37 = v36;

  MEMORY[0x1C694F170](v35, v37);

  return v42;
}

unint64_t sub_1C594A23C()
{
  result = qword_1EDA4E180;
  if (!qword_1EDA4E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E180);
  }

  return result;
}

char *sub_1C594A290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943F8, &unk_1C5BDB380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C594A39C(char *a1, int64_t a2, char a3)
{
  result = sub_1C594A290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1C594A3BC()
{
  result = qword_1EDA45D28;
  if (!qword_1EDA45D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196E80, &qword_1C5BE5B18);
    sub_1C594A440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D28);
  }

  return result;
}

unint64_t sub_1C594A440()
{
  result = qword_1EDA45EB0;
  if (!qword_1EDA45EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192888, &qword_1C5BDE420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45EB0);
  }

  return result;
}

uint64_t sub_1C594A4A4(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C594A508(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EB8, &unk_1C5BEE9C0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v29 - v4;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  v11 = v1[2];
  v31 = *v1;
  v32 = v10;
  v33 = v11;
  v35 = *(v1 + 8);
  v12 = *v1;
  v34 = v12;
  if (v35 == 1)
  {
    v13 = v12;
    if (v12 == 3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C59400B0(&v34, v29, &qword_1EC1929E0, &qword_1C5BDE810);
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v34, &qword_1EC1929E0, &qword_1C5BDE810);
    (*(v7 + 8))(v9, v6);
    v13 = v36;
    if (v36 == 3)
    {
LABEL_6:
      v29[0] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EC0, &qword_1C5BEE9D0);
      sub_1C5BCA694();
      v15 = v36;
      goto LABEL_7;
    }
  }

  if (v13)
  {
    goto LABEL_6;
  }

  v37 = BYTE8(v32);
  v25 = v32;
  v36 = v32;
  v26 = BYTE8(v32);

  if ((v26 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v27 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v36, &qword_1EC194408, &qword_1C5BDB3B8);
    (*(v7 + 8))(v9, v6);
    v25 = *&v29[0];
  }

  swift_getKeyPath("(_[&");
  *&v29[0] = v25;
  sub_1C594AA80();
  sub_1C5BC7B74();

  v28 = *(v25 + 49);

  if (v28)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

LABEL_7:
  KeyPath = swift_getKeyPath(byte_1C5BEE9D8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EC8, &qword_1C5BEEA18);
  (*(*(v17 - 8) + 16))(v5, a1, v17);
  v18 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198ED0, &qword_1C5BEEA20) + 36)];
  *v18 = KeyPath;
  v18[8] = v15;
  v19 = swift_allocObject();
  v20 = v32;
  v19[1] = v31;
  v19[2] = v20;
  v19[3] = v33;
  v21 = &v5[*(v3 + 36)];
  *v21 = sub_1C5966294;
  *(v21 + 1) = 0;
  *(v21 + 2) = sub_1C5971540;
  *(v21 + 3) = v19;
  v30 = v15;
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = v32;
  *(v22 + 24) = v31;
  *(v22 + 40) = v23;
  *(v22 + 56) = v33;
  sub_1C594AAD8(&v31, v29);
  sub_1C594AAD8(&v31, v29);
  sub_1C593B410();
  sub_1C593B5AC();
  sub_1C5BCA344();

  return sub_1C5924EF4(v5, &qword_1EC198EB8, &unk_1C5BEE9C0);
}

uint64_t sub_1C594A9DC()
{
  sub_1C5950E44(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1C594AA28()
{
  sub_1C5950E44(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_1C594AA80()
{
  result = qword_1EDA4B960;
  if (!qword_1EDA4B960)
  {
    type metadata accessor for WindowProperties(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B960);
  }

  return result;
}

id sub_1C594AB10()
{
  if (qword_1EDA4EE00 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDA5DE70;

  return v1;
}

uint64_t sub_1C594AB6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnvironmentMonitor(0);
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C594ABAC@<X0>(uint64_t *a2@<X8>)
{
  _s8BackdropCMa(0);
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C594ABEC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C594AC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v211 = a2;
  v212 = a1;
  v200 = a3;
  v208 = sub_1C5BC81D4();
  v199 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v198 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC90F4();
  v196 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v195 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_1C5BC8F34();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = *(a2 - 8);
  v217 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v220 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v155 = sub_1C5BC9394();
  v10 = sub_1C5BC8AB4();
  v156.n128_u64[0] = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  *&v204 = &v150 - v11;
  WitnessTable = swift_getWitnessTable();
  v225 = WitnessTable;
  v226 = MEMORY[0x1E69805D0];
  v12 = swift_getWitnessTable();
  v13 = sub_1C593A9AC();
  v223.n128_u64[0] = v10;
  v223.n128_u64[1] = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v151 = v10;
  *&v224 = v12;
  *(&v224 + 1) = v13;
  v153 = v12;
  v14 = v13;
  v152 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v160 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v219.n128_u64[0] = &v150 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470, qword_1C5BEBAC0);
  v223.n128_u64[0] = v10;
  v223.n128_u64[1] = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  *&v224 = v12;
  *(&v224 + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1C5937414(&qword_1EDA4AE90, &qword_1EC194470, qword_1C5BEBAC0, sub_1C593AA00);
  v223.n128_u64[0] = OpaqueTypeMetadata2;
  v223.n128_u64[1] = v17;
  *&v224 = OpaqueTypeConformance2;
  *(&v224 + 1) = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v169 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v205 = &v150 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194468, &unk_1C5BDBCD0);
  v161 = OpaqueTypeMetadata2;
  v223.n128_u64[0] = OpaqueTypeMetadata2;
  v223.n128_u64[1] = v17;
  v159 = v17;
  v158 = OpaqueTypeConformance2;
  *&v224 = OpaqueTypeConformance2;
  *(&v224 + 1) = v19;
  v157 = v19;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1C5937414(&qword_1EDA47CC8, &qword_1EC194468, &unk_1C5BDBCD0, sub_1C593AA54);
  v223.n128_u64[0] = v20;
  v223.n128_u64[1] = v22;
  *&v224 = v23;
  *(&v224 + 1) = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v168 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v167 = &v150 - v26;
  v171 = v20;
  v223.n128_u64[0] = v20;
  v223.n128_u64[1] = v22;
  v166 = v22;
  v164 = v23;
  *&v224 = v23;
  *(&v224 + 1) = v24;
  v162 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_1C592F30C(&qword_1EDA46328, MEMORY[0x1E697F610], MEMORY[0x1E697F620]);
  v223.n128_u64[0] = v25;
  v223.n128_u64[1] = v5;
  *&v224 = v27;
  *(&v224 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v180 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v206 = &v150 - v30;
  type metadata accessor for OSThermalPressureLevel(255);
  v32 = v31;
  v170 = v25;
  v223.n128_u64[0] = v25;
  v223.n128_u64[1] = v5;
  v197 = v5;
  v165 = v27;
  *&v224 = v27;
  *(&v224 + 1) = v28;
  v163 = v28;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_1C592F30C(&qword_1EDA45DE8, type metadata accessor for OSThermalPressureLevel, &unk_1C5BD0A3C);
  v223.n128_u64[0] = v29;
  v223.n128_u64[1] = v32;
  *&v224 = v33;
  *(&v224 + 1) = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v181 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v178 = &v150 - v36;
  v182 = v29;
  v223.n128_u64[0] = v29;
  v223.n128_u64[1] = v32;
  v174 = v32;
  v176 = v33;
  *&v224 = v33;
  *(&v224 + 1) = v34;
  v173 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_1C592F30C(&qword_1EDA467E8, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v39 = v208;
  v223.n128_u64[0] = v35;
  v223.n128_u64[1] = v208;
  *&v224 = v37;
  *(&v224 + 1) = v38;
  v40 = swift_getOpaqueTypeMetadata2();
  v185 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v207 = &v150 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199990, &qword_1C5BF1C18);
  v43 = sub_1C5924F54(&qword_1EDA468B0, &qword_1EC199990, &qword_1C5BF1C18, MEMORY[0x1E695BED8]);
  v183 = v35;
  v223.n128_u64[0] = v35;
  v223.n128_u64[1] = v39;
  v175 = v37;
  *&v224 = v37;
  *(&v224 + 1) = v38;
  v172 = v38;
  v44 = swift_getOpaqueTypeConformance2();
  v184 = v42;
  v223.n128_u64[0] = v42;
  v223.n128_u64[1] = v40;
  v186 = v40;
  v179 = v43;
  *&v224 = v43;
  *(&v224 + 1) = v44;
  v177 = v44;
  v45 = sub_1C5BC8BB4();
  v192 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v190 = &v150 - v46;
  v47 = swift_getWitnessTable();
  v194 = v45;
  v223.n128_u64[0] = v45;
  v223.n128_u64[1] = MEMORY[0x1E69E6370];
  v189 = v47;
  *&v224 = v47;
  *(&v224 + 1) = MEMORY[0x1E69E6388];
  v193 = swift_getOpaqueTypeMetadata2();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v187 = &v150 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v188 = &v150 - v51;
  v52 = v218;
  v53 = v218 + 16;
  v214 = *(v218 + 16);
  v54 = v220;
  v55 = v211;
  v214(v220, v216, v211, v50);
  v56 = *(v52 + 80);
  v57 = (v56 + 32) & ~v56;
  v58 = swift_allocObject();
  v59 = *(v55 + 24);
  v213 = *(v55 + 16);
  *(v58 + 16) = v213;
  *(v58 + 24) = v59;
  v60 = *(v52 + 32);
  v60(v58 + v57, v54, v55);
  sub_1C5BCA324();

  v61 = v216;
  v223.n128_u8[0] = *(sub_1C594C688() + 16);
  v215 = v53;
  (v214)(v54, v61, v55);
  v210 = v56;
  v62 = swift_allocObject();
  *(v62 + 16) = v213;
  *(v62 + 24) = v59;
  v212 = v59;
  v218 = v52 + 32;
  v209 = v60;
  v60(v62 + v57, v54, v55);
  v63 = v151;
  v64 = v204;
  sub_1C5BCA344();

  (*(v156.n128_u64[0] + 8))(v64, v63);
  v65 = *(v216 + 88);
  v66 = *(v216 + 104);
  v67 = *(v216 + 120) == 1;
  v204 = v66;
  v156 = v65;
  if (v67)
  {
    v223 = v65;
    v224 = v66;
    sub_1C593E7D8(v65, *(&v65 + 1), v66, *(&v66 + 1));
    v75 = v156;
    v74 = v204;
    v73 = v203;
    v72 = v202;
    v70 = v201;
  }

  else
  {
    v68 = v65;

    sub_1C5BCB4E4();
    v69 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v70 = v201;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v71 = sub_1C596AC4C(v68, v156.n128_i64[1], v204, *(&v204 + 1), 0);
    v72 = v202;
    v73 = v203;
    (*(v202 + 8))(v70, v203, v71);
    v75 = v223;
    v74 = v224;
  }

  v221 = v75;
  v222 = v74;
  v76 = v216;
  v77 = v211;
  (v214)(v54, v216, v211);
  v78 = swift_allocObject();
  v79 = v212;
  *(v78 + 16) = v213;
  *(v78 + 24) = v79;
  v209(v78 + v57, v54, v77);
  v80 = v161;
  v81 = v219.n128_u64[0];
  sub_1C5BCA344();

  sub_1C593E820(v221.n128_i64[0], v221.n128_i64[1], v222, *(&v222 + 1));
  (*(v160 + 8))(v81, v80);
  v82 = (v76 + *(v77 + 68));
  v83 = *v82;
  LODWORD(v82) = *(v82 + 16);
  v219 = v83;
  if (v82 == 1)
  {
    v223 = v83;

    v84 = v219;
  }

  else
  {
    v85 = v83;

    sub_1C5BCB4E4();
    v86 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v87 = sub_1C596AC58(v85, v219.n128_i64[1], 0);
    (*(v72 + 8))(v70, v73, v87);
    v84 = v223;
  }

  v221 = v84;
  v88 = v216;
  v89 = v211;
  v90 = v214;
  (v214)(v54, v216, v211);
  v91 = v90;
  v92 = swift_allocObject();
  v93 = v213;
  *(v92 + 16) = v213;
  v94 = v93;
  v219.n128_u64[0] = v57;
  *(v92 + 24) = v212;
  v95 = v209;
  v209(v92 + v57, v220, v89);
  v96 = v95;
  v97 = v167;
  v98 = v171;
  v99 = v205;
  sub_1C5BCA344();

  (*(v169 + 8))(v99, v98);
  v100 = v89;
  v101 = v195;
  sub_1C594C704(v195);
  v91(v220, v88, v100);
  v102 = swift_allocObject();
  v103 = v212;
  *(v102 + 16) = v94;
  *(v102 + 24) = v103;
  v104 = v100;
  v96(v102 + v219.n128_u64[0], v220, v100);
  v105 = v170;
  v106 = v197;
  sub_1C5BCA344();

  (*(v196 + 8))(v101, v106);
  (*(v168 + 8))(v97, v105);
  type metadata accessor for EnvironmentMonitor(0);
  sub_1C592F30C(qword_1EDA4B360, type metadata accessor for EnvironmentMonitor, &unk_1C5BF1564);
  v107 = sub_1C5BC83A4();
  swift_getKeyPath("@3[&");
  sub_1C5BC8034();

  v108 = v88;
  v109 = v214;
  (v214)(v220, v108, v104);
  v110 = swift_allocObject();
  v111 = v212;
  *(v110 + 16) = v213;
  *(v110 + 24) = v111;
  v209(v110 + v219.n128_u64[0], v220, v104);
  swift_checkMetadataState();
  v112 = v178;
  v113 = v182;
  v114 = v206;
  sub_1C5BCA344();

  (*(v180 + 8))(v114, v113);
  v115 = v216;
  v116 = v198;
  sub_1C594C72C(v198);
  v109(v220, v115, v104);
  v117 = swift_allocObject();
  v118 = v213;
  v119 = v212;
  *(v117 + 16) = v213;
  *(v117 + 24) = v119;
  v120 = v209;
  v209(v117 + v219.n128_u64[0], v220, v104);
  v121 = v183;
  v122 = v208;
  sub_1C5BCA344();

  (*(v199 + 8))(v116, v122);
  (*(v181 + 8))(v112, v121);
  v123 = v216;
  sub_1C59498C4(*(v216 + 40), *(v216 + 48), v118, *(v119 + 8));
  v124 = *(v119 + 224);
  swift_unknownObjectRetain();
  v124(v118, v119);
  swift_unknownObjectRelease();

  v125 = sub_1C5931774();

  v223.n128_u64[0] = v125;
  v126 = v211;
  (v214)(v220, v123, v211);
  v127 = v220;
  v128 = swift_allocObject();
  *(v128 + 16) = v118;
  *(v128 + 24) = v119;
  v129 = v219.n128_u64[0];
  v120(v128 + v219.n128_u64[0], v127, v126);
  v130 = v190;
  v131 = v186;
  v132 = v207;
  sub_1C5BCA3D4();

  (*(v185 + 8))(v132, v131);
  v133 = *(v123 + 72);
  LOBYTE(v132) = *(v123 + 80);

  if ((v132 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v134 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v135 = v201;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v202 + 8))(v135, v203);
    v133 = v223.n128_u64[0];
  }

  swift_getKeyPath("(3[&");
  v223.n128_u64[0] = v133;
  sub_1C592F30C(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  v136 = *(v133 + 48);

  v223.n128_u8[0] = v136;
  v137 = v211;
  (v214)(v127, v216, v211);
  v138 = swift_allocObject();
  v139 = v212;
  *(v138 + 16) = v213;
  *(v138 + 24) = v139;
  v209(v138 + v129, v127, v137);
  v140 = v187;
  v141 = v194;
  v142 = MEMORY[0x1E69E6370];
  v143 = v189;
  v144 = MEMORY[0x1E69E6388];
  sub_1C5BCA344();

  (*(v192 + 8))(v130, v141);
  v223.n128_u64[0] = v141;
  v223.n128_u64[1] = v142;
  *&v224 = v143;
  *(&v224 + 1) = v144;
  v145 = swift_getOpaqueTypeConformance2();
  v146 = v188;
  v147 = v193;
  sub_1C593EDC0(v140, v193, v145);
  v148 = *(v191 + 8);
  v148(v140, v147);
  sub_1C593EDC0(v146, v147, v145);
  return (v148)(v146, v147);
}

uint64_t sub_1C594C688()
{
  result = *(v0 + 56);
  if (!result)
  {
    type metadata accessor for NowPlayingViewModel.Lifecycle();
    sub_1C592F30C(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C594C798(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0, &qword_1C5BF3390);
  _s18ArtworkPlaceholderVMa(255, v1, v2, v3);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C594C97C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C594C97C()
{
  result = qword_1EDA46560;
  if (!qword_1EDA46560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0, &qword_1C5BF3390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46560);
  }

  return result;
}

uint64_t sub_1C594CA04(uint64_t result, int a2, int a3)
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

void sub_1C594CA50(void *a1)
{
  sub_1C5927B74();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C594CB64();
      if (v3 <= 0x3F)
      {
        sub_1C5BC8C94();
        if (v4 <= 0x3F)
        {
          sub_1C594CBB4(319);
          if (v5 <= 0x3F)
          {
            sub_1C594CC0C(319);
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

void sub_1C594CB64()
{
  if (!qword_1EDA46AC0)
  {
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46AC0);
    }
  }
}

void sub_1C594CBB4(uint64_t a1)
{
  if (!qword_1EDA4E1B0)
  {
    sub_1C5BC8F34();
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA4E1B0);
    }
  }
}

void sub_1C594CC0C(uint64_t a1)
{
  if (!qword_1EDA467D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10, &qword_1C5BDB690);
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA467D0);
    }
  }
}

uint64_t sub_1C594CCB8(uint64_t *a1)
{
  v1 = a1[1];
  v7 = *a1;
  v8 = &type metadata for NowPlayingMiniPlayerAccessoryForegroundStyle.Primary;
  v9 = v1;
  v10 = sub_1C5A3663C();
  _s23MiniPlayerAccessoryViewVMa(255, &v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C78, &qword_1C5BD9590);
  v2 = sub_1C5BC8AB4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10, &qword_1C5BDB690);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78, &qword_1C5BD9590, MEMORY[0x1E6980A18]);
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1C5A36690();
  v7 = v2;
  v8 = v3;
  v9 = WitnessTable;
  v10 = v5;
  sub_1C5BCA724();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  return swift_getWitnessTable();
}

unint64_t sub_1C594CE70()
{
  result = qword_1EDA4DA38[0];
  if (!qword_1EDA4DA38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4DA38);
  }

  return result;
}

void *sub_1C594CEC4@<X0>(_BYTE *a1@<X8>)
{
  sub_1C594CF14();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

unint64_t sub_1C594CF14()
{
  result = qword_1EDA47430;
  if (!qword_1EDA47430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47430);
  }

  return result;
}

uint64_t sub_1C594CFC4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void *sub_1C594CFF4()
{
  type metadata accessor for TapExcludedGeometries.Geometry();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 257;
  v0[2] = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 257;
  v0[3] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 257;
  v0[4] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 257;
  v0[5] = v4;
  sub_1C5BC7BA4();
  return v0;
}

uint64_t sub_1C594D0B4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for NowPlayingViewControllerProxy(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_1C5BC7F24();
  *a4 = result;
  return result;
}

uint64_t sub_1C594D0FC@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a2;
  v133 = a1;
  v118 = a3;
  v115 = sub_1C5BC82F4();
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997B0, &unk_1C5BF1268);
  v116 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v114 = v89 - v5;
  v6 = sub_1C5BC9304();
  v112 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v132 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *(a2 - 8);
  v131 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v129 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v10 = sub_1C5BC9394();
  v11 = type metadata accessor for TapExcludedGeometries(255);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C594618C(qword_1EDA488D8, type metadata accessor for TapExcludedGeometries, &unk_1C5BF1064);
  v144 = v10;
  v145 = v11;
  v92 = v10;
  v14 = v11;
  v121 = v11;
  v146 = WitnessTable;
  v147 = v13;
  v119 = WitnessTable;
  v15 = v13;
  v120 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v123 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v89 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  v18 = sub_1C5BC8AB4();
  v110 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v97 = v89 - v19;
  v144 = v10;
  v145 = v14;
  v146 = WitnessTable;
  v147 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v94 = OpaqueTypeConformance2;
  v21 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  v142 = OpaqueTypeConformance2;
  v143 = v21;
  v22 = swift_getWitnessTable();
  v144 = v18;
  v145 = v6;
  v23 = v18;
  v89[0] = v18;
  v24 = v6;
  v124 = v6;
  v146 = v22;
  v147 = MEMORY[0x1E697FA08];
  v89[1] = v22;
  v25 = MEMORY[0x1E697FA08];
  v98 = swift_getOpaqueTypeMetadata2();
  v100 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = v89 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997B8, &qword_1C5BF1278);
  v27 = sub_1C5BC8AB4();
  v105 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v125 = v89 - v28;
  v91 = v27;
  v29 = sub_1C5BC8AB4();
  v109 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v126 = v89 - v30;
  v96 = v29;
  v31 = sub_1C5BC8AB4();
  v111 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v130 = v89 - v32;
  v144 = v23;
  v145 = v24;
  v146 = v22;
  v147 = v25;
  v33 = swift_getOpaqueTypeConformance2();
  v89[2] = v33;
  v34 = sub_1C5924F54(&qword_1EDA461F8, &qword_1EC1997B8, &qword_1C5BF1278, MEMORY[0x1E697C968]);
  v140 = v33;
  v141 = v34;
  v90 = swift_getWitnessTable();
  v35 = MEMORY[0x1E69805D0];
  v138 = v90;
  v139 = MEMORY[0x1E69805D0];
  v93 = swift_getWitnessTable();
  v136 = v93;
  v137 = v35;
  v102 = v31;
  v36 = swift_getWitnessTable();
  v104 = v36;
  v103 = sub_1C5924F54(&qword_1EDA466B8, &qword_1EC1997B0, &unk_1C5BF1268, MEMORY[0x1E697E238]);
  v144 = v31;
  v145 = v128;
  v146 = v36;
  v147 = v103;
  v106 = MEMORY[0x1E6981348];
  v107 = swift_getOpaqueTypeMetadata2();
  v108 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v99 = v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v101 = v89 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997A8, &qword_1C5BF10E8);
  v40 = v135;
  sub_1C5BC81A4();
  swift_checkMetadataState();
  sub_1C5BC9DE4();

  sub_1C594E11C();
  v41 = v97;
  v42 = OpaqueTypeMetadata2;
  sub_1C5BC9E84();
  (*(v123 + 8))(v17, v42);
  v43 = v134;
  v44 = *(v134 + 16);
  v121 = v134 + 16;
  v133 = v44;
  v45 = v129;
  v46 = v127;
  v44(v129, v40, v127);
  v123 = *(v43 + 80);
  v47 = (v123 + 32) & ~v123;
  v48 = swift_allocObject();
  v120 = *(v46 + 16);
  OpaqueTypeMetadata2 = *(v46 + 24);
  v49 = OpaqueTypeMetadata2;
  *(v48 + 16) = v120;
  *(v48 + 24) = v49;
  v50 = *(v43 + 32);
  v134 = v43 + 32;
  v119 = v50;
  v50(v48 + v47, v45, v46);
  v51 = v132;
  sub_1C5BC9474();
  v52 = v95;
  v53 = v89[0];
  v54 = v124;
  sub_1C5BC9EB4();

  (*(v112 + 8))(v51, v54);
  (*(v110 + 8))(v41, v53);
  v144 = 0xD000000000000037;
  v145 = 0x80000001C5BFD680;
  v55 = v98;
  sub_1C5BC9F34();
  (*(v100 + 8))(v52, v55);
  v56 = v129;
  v57 = v135;
  v133(v129, v135, v46);
  v58 = v47;
  v94 = v47;
  v59 = swift_allocObject();
  v60 = v120;
  v61 = OpaqueTypeMetadata2;
  *(v59 + 16) = v120;
  *(v59 + 24) = v61;
  v62 = v59 + v58;
  v63 = v119;
  v119(v62, v56, v46);
  v64 = v91;
  v65 = v125;
  sub_1C5BCA324();

  (*(v105 + 8))(v65, v64);
  v66 = v57;
  v67 = v127;
  v133(v56, v66, v127);
  v68 = v94;
  v69 = swift_allocObject();
  *(v69 + 16) = v60;
  v70 = OpaqueTypeMetadata2;
  *(v69 + 24) = OpaqueTypeMetadata2;
  v63(v69 + v68, v56, v67);
  v71 = v96;
  v72 = v126;
  sub_1C5BC9E34();

  (*(v109 + 8))(v72, v71);
  sub_1C5BC9474();
  v73 = v113;
  sub_1C5BC82B4();
  v133(v56, v135, v67);
  v74 = swift_allocObject();
  *(v74 + 16) = v120;
  *(v74 + 24) = v70;
  v119(v74 + v68, v56, v67);
  sub_1C594618C(&qword_1EDA467D8, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  v75 = v114;
  v76 = v115;
  sub_1C5BCA8D4();

  (*(v117 + 8))(v73, v76);
  sub_1C5BC8334();
  v77 = v99;
  v78 = v75;
  v79 = v102;
  v80 = v128;
  v81 = v104;
  v82 = v103;
  v83 = v130;
  sub_1C5BCA0B4();
  (*(v116 + 8))(v78, v80);
  (*(v111 + 8))(v83, v79);
  v144 = v79;
  v145 = v80;
  v146 = v81;
  v147 = v82;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = v101;
  v86 = v107;
  sub_1C593EDC0(v77, v107, v84);
  v87 = *(v108 + 8);
  v87(v77, v86);
  sub_1C593EDC0(v85, v86, v84);
  return (v87)(v85, v86);
}

unint64_t sub_1C594E11C()
{
  result = qword_1EDA45F60;
  if (!qword_1EDA45F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F60);
  }

  return result;
}

uint64_t sub_1C594E170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v92 = v4;
  v93 = &type metadata for NowPlayingMiniPlayerAccessoryForegroundStyle.Primary;
  v94 = v3;
  v95 = sub_1C5A3663C();
  v74 = v95;
  v5 = _s23MiniPlayerAccessoryViewVMa(0, &v92);
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v64 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C78, &qword_1C5BD9590);
  v7 = sub_1C5BC8AB4();
  v85 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10, &qword_1C5BDB690);
  v79 = v5;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78, &qword_1C5BD9590, MEMORY[0x1E6980A18]);
  v69 = WitnessTable;
  v98 = WitnessTable;
  v99 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_1C5A36690();
  v86 = v7;
  v92 = v7;
  v93 = v9;
  v82 = v9;
  v71 = v12;
  v94 = v12;
  v95 = v13;
  v70 = v13;
  v14 = sub_1C5BCA724();
  v77 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v64 - v15;
  sub_1C5BC97C4();
  v80 = v14;
  v75 = sub_1C5BC8AB4();
  v83 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v64 - v18;
  v19 = sub_1C5BC8F34();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + 8);
  v67 = *v2;
  v68 = v26;
  v27 = *(v2 + 16);
  v88 = *(v2 + 24);
  if (v88 == 1)
  {
    v28 = v27;
  }

  else
  {

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v30 = sub_1C5942458(v27, 0);
    (*(v20 + 8))(v22, v19, v30);
    v28 = v92;
  }

  if (v28 != 3 && v28)
  {
    if (qword_1EC1906C8 != -1)
    {
      swift_once();
    }

    v31 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      swift_once();
    }

    v31 = qword_1EDA5DAE8;
  }

  v32 = __swift_project_value_buffer(v23, v31);
  sub_1C5948550(v32, v25);
  if (v88)
  {
    v33 = v27;
  }

  else
  {

    sub_1C5BCB4E4();
    v34 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v35 = sub_1C5942458(v27, 0);
    (*(v20 + 8))(v22, v19, v35);
    v33 = v92;
  }

  v66 = v19;
  v65 = v20;
  if (v33 && (_UISolariumEnabled() & 1) != 0)
  {
    sub_1C59498C4(v67, v68, v4, *(v3 + 8));
    v36 = *(v3 + 400);
    swift_unknownObjectRetain();
    v36(&v92, v4, v3);
    swift_unknownObjectRelease();
    v37 = v4;
    v38 = v96;
    v39 = v97;
  }

  else
  {
    sub_1C59498C4(v67, v68, v4, *(v3 + 8));
    v40 = *(v3 + 400);
    swift_unknownObjectRetain();
    v40(&v92, v4, v3);
    swift_unknownObjectRelease();
    v38 = v92;
    v39 = v93;

    v37 = v4;
  }

  v41 = sub_1C5BC8FC4();
  v42 = *&v25[*(v23 + 52)];
  v43 = *(v25 + 10);
  v44 = sub_1C5BCAA74();
  v63 = v37;
  v45 = v72;
  sub_1C594EC50(v38, v39, v47, v41, v43, 0, v44, v46, v72, v42, v63, &type metadata for NowPlayingMiniPlayerAccessoryForegroundStyle.Primary, v3, v74);
  v48 = v84;
  v49 = v79;
  sub_1C5BC9D24();
  (*(v76 + 8))(v45, v49);
  if (v88)
  {
    LOBYTE(v92) = v27;
  }

  else
  {

    sub_1C5BCB4E4();
    v50 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v51 = sub_1C5942458(v27, 0);
    (*(v65 + 8))(v22, v66, v51);
    LOBYTE(v27) = v92;
  }

  v91 = v27;
  v52 = v73;
  v53 = v86;
  sub_1C5BCA1C4();
  (*(v85 + 8))(v48, v53);
  v54 = v80;
  v55 = swift_getWitnessTable();
  v56 = v78;
  sub_1C5BCA184();
  (*(v77 + 8))(v52, v54);
  sub_1C594A4A4(v25);
  v57 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v89 = v55;
  v90 = v57;
  v58 = v75;
  v59 = swift_getWitnessTable();
  v60 = v81;
  sub_1C593EDC0(v56, v58, v59);
  v61 = *(v83 + 8);
  v61(v56, v58);
  sub_1C593EDC0(v60, v58, v59);
  return (v61)(v60, v58);
}

uint64_t NowPlayingMiniPlayerAccessoryLayout.Standard.init(trailing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t NowPlayingMiniPlayerAccessoryLayout.Large.init(leading:trailing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 NowPlayingMiniPlayerAccessoryLayout.init(standard:large:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  result = *a1;
  v4 = *a2;
  v5 = a2[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  return result;
}

uint64_t sub_1C594EC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v30[0] = a11;
  v30[1] = a12;
  v30[2] = a13;
  v30[3] = a14;
  v21 = _s23MiniPlayerAccessoryViewVMa(0, v30);
  (*(*(a12 - 8) + 32))(&a9[v21[13]], a3, a12);
  *&a9[v21[14]] = a4;
  *&a9[v21[15]] = a10;
  v22 = &a9[v21[16]];
  *v22 = a5;
  v22[8] = a6 & 1;
  v23 = &a9[v21[17]];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &a9[v21[18]];
  *v24 = sub_1C5BC8C84();
  *(v24 + 1) = v25;
  v26 = v21[19];
  *&a9[v26] = swift_getKeyPath(byte_1C5BECC78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50, &unk_1C5BD7190);
  swift_storeEnumTagMultiPayload();
  v27 = &a9[v21[20]];
  result = swift_getKeyPath(byte_1C5BECC98);
  *v27 = result;
  v27[8] = 0;
  return result;
}

uint64_t sub_1C594EDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C594EE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C594EEBC(uint64_t a1)
{
  sub_1C594EF70(319);
  if (v1 <= 0x3F)
  {
    sub_1C594EFD4(319);
    if (v2 <= 0x3F)
    {
      sub_1C594F100(319);
      if (v3 <= 0x3F)
      {
        sub_1C594F0B0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C594EF70(uint64_t a1)
{
  if (!qword_1EDA46740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199FF8, &qword_1C5BF31C8);
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46740);
    }
  }
}

void sub_1C594EFD4(uint64_t a1)
{
  if (!qword_1EDA463E8)
  {
    type metadata accessor for NowPlayingRouteObserver(255);
    sub_1C594F068(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
    v1 = sub_1C5BC8C94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA463E8);
    }
  }
}

uint64_t sub_1C594F068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C594F0B0()
{
  if (!qword_1EDA46720)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46720);
    }
  }
}

void sub_1C594F100(uint64_t a1)
{
  if (!qword_1EDA46750)
  {
    sub_1C5BC90F4();
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46750);
    }
  }
}

unint64_t sub_1C594F16C()
{
  result = qword_1EDA47590;
  if (!qword_1EDA47590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47590);
  }

  return result;
}

uint64_t sub_1C594F204(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C48, &qword_1C5BECD60);
  _s24BackwardsTransportButtonVMa(255, v1, v2, v3);
  _s21TransportControlsViewV22MiniPlayerCenterButtonVMa(255, v1, v2, v4);
  sub_1C5BC92D4();
  _s23ForwardsTransportButtonVMa(255, v1, v2, v5);
  type metadata accessor for NowPlayingRouteButton.Content(255);
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  _s15ContextMenuViewVMa(255, v1, v2, v6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  sub_1C5BCA584();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980, &qword_1C5BD5EC0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C50, &unk_1C5BECD68);
  sub_1C5BC8AB4();
  sub_1C5BC92E4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA461B8, &qword_1EC198C50, &unk_1C5BECD68, MEMORY[0x1E69805E8]);
  swift_getWitnessTable();
  sub_1C594F9D8(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EDA45EC0, &qword_1EC198C48, &qword_1C5BECD60, MEMORY[0x1E69E6338]);
  sub_1C594F984();
  sub_1C5BCA8C4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0, &unk_1C5BDB370);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA462C0, &qword_1EC1943F0, &unk_1C5BDB370, MEMORY[0x1E697FDC0]);
  return swift_getWitnessTable();
}

unint64_t sub_1C594F984()
{
  result = qword_1EDA47598;
  if (!qword_1EDA47598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47598);
  }

  return result;
}

uint64_t sub_1C594F9D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C594FA38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C48, &qword_1C5BECD60);
  v3 = a1[2];
  v4 = a1[4];
  _s24BackwardsTransportButtonVMa(255, v3, v4, v5);
  _s21TransportControlsViewV22MiniPlayerCenterButtonVMa(255, v3, v4, v6);
  v65 = sub_1C5BC92D4();
  v67 = _s23ForwardsTransportButtonVMa(255, v3, v4, v7);
  type metadata accessor for NowPlayingRouteButton.Content(255);
  v70 = sub_1C5BC92D4();
  v64 = sub_1C5BC92D4();
  v66 = _s15ContextMenuViewVMa(255, v3, v4, v8);
  swift_getAssociatedTypeWitness();
  v77 = v3;
  v78 = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v68 = sub_1C5BCB804();
  v69 = sub_1C5BC92D4();
  sub_1C5BC92D4();
  v71 = sub_1C5BC92D4();
  v75 = sub_1C5BCA584();
  v9 = a1[3];
  v80 = a1;
  v76 = v9;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980, &qword_1C5BD5EC0);
  v72 = sub_1C5BC8AB4();
  v73 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v115 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v112 = swift_getWitnessTable();
  v113 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
  v110 = v10;
  v111 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v107 = v12;
  v108 = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  v106 = MEMORY[0x1E6981E60];
  v103 = v11;
  v104 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = a1[5];
  v100 = v13;
  v101 = v14;
  v75 = v14;
  v98 = swift_getWitnessTable();
  v99 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C50, &unk_1C5BECD68);
  v15 = sub_1C5BC8AB4();
  v16 = sub_1C5BC92E4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  v92 = swift_getWitnessTable();
  v93 = sub_1C5924F54(&qword_1EDA461B8, &qword_1EC198C50, &unk_1C5BECD68, MEMORY[0x1E69805E8]);
  v17 = swift_getWitnessTable();
  v18 = sub_1C594F9D8(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EDA45EC0, &qword_1EC198C48, &qword_1C5BECD60, MEMORY[0x1E69E6338]);
  v91 = sub_1C594F984();
  v19 = sub_1C5BCA8C4();
  v87 = v15;
  v88 = v16;
  v89 = v17;
  v90 = v18;
  v86 = swift_getOpaqueTypeConformance2();
  v65 = v19;
  v63 = swift_getWitnessTable();
  v20 = sub_1C5BCA714();
  v68 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v61 - v21;
  v70 = v22;
  v23 = sub_1C5BC8AB4();
  v71 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v61 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0, &unk_1C5BDB370);
  v64 = sub_1C5BC8AB4();
  v25 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v69 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v72 = &v61 - v28;
  v29 = sub_1C5BC8F34();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v81 + *(v80 + 20);
  v38 = *v37;
  if (v37[8] != 1)
  {
    v62 = v34;

    sub_1C5BCB4E4();
    v39 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v40 = sub_1C5950E44(v38, 0);
    (*(v30 + 8))(v32, v29, v40);
    v34 = v62;
    LOBYTE(v38) = v87;
  }

  v73 = v23;
  v74 = v25;
  if (v38 != 3 && v38)
  {
    if (qword_1EC1906C8 != -1)
    {
      v58 = v34;
      swift_once();
      v34 = v58;
    }

    v41 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      v57 = v34;
      swift_once();
      v34 = v57;
    }

    v41 = qword_1EDA5DAE8;
  }

  v42 = __swift_project_value_buffer(v34, v41);
  sub_1C5948550(v42, v36);
  v43 = v80;
  v44 = v81;
  v45 = *v81;
  sub_1C5950790(v32);
  v45(v32);
  (*(v30 + 8))(v32, v29);
  MEMORY[0x1EEE9AC00](*(v44 + *(v43 + 14)));
  v46 = v66;
  sub_1C5BCA704();

  v59 = v70;
  v60 = swift_getWitnessTable();
  v47 = v67;
  sub_1C5BCA244();
  (*(v68 + 8))(v46, v59);
  v84 = v60;
  v85 = MEMORY[0x1E697EBF8];
  v48 = v73;
  v49 = swift_getWitnessTable();
  v50 = v69;
  sub_1C5BC9F24();
  (*(v71 + 8))(v47, v48);
  v51 = sub_1C5924F54(&qword_1EDA462C0, &qword_1EC1943F0, &unk_1C5BDB370, MEMORY[0x1E697FDC0]);
  v82 = v49;
  v83 = v51;
  v52 = v64;
  v53 = swift_getWitnessTable();
  v54 = v72;
  sub_1C593EDC0(v50, v52, v53);
  v55 = *(v74 + 8);
  v55(v50, v52);
  sub_1C593EDC0(v54, v52, v53);
  v55(v54, v52);
  return sub_1C5B50BC0(v36, type metadata accessor for NowPlayingMiniPlayerSpecs);
}

uint64_t sub_1C5950790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50, &unk_1C5BD7190);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1C59400B0(v2, &v13 - v9, &qword_1EC192E50, &unk_1C5BD7190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v10, v4);
  }

  sub_1C5BCB4E4();
  v12 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t EnvironmentValues.mcui.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *MCUINamespace<A>.deviceMetrics.getter()
{
  sub_1C593F9B0();

  return sub_1C5BC8F44();
}

double static NowPlayingMiniPlayerAccessoryID.playPauseTransportButton.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x7265746E6543;
  *a1 = xmmword_1C5BF4010;
  *(a1 + 16) = 0;
  return result;
}

void *MCUINamespace<A>.miniPlayerWidth.getter()
{
  sub_1C594CF14();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5950AA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x7274736E6F636E75;
    v3 = 0xED000064656E6961;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x7274736E6F636E75;
    v7 = 0xED000064656E6961;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C5BCBDE4();
  }

  return v11 & 1;
}

double static NowPlayingMiniPlayerAccessoryID.forwardsTransportButton.getter@<D0>(uint64_t a1@<X8>)
{
  result = 7.1481193e247;
  *a1 = xmmword_1C5BF4020;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1C5950BDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v2);
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5950C4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C5950C90()
{
  result = qword_1EDA4B340;
  if (!qword_1EDA4B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B340);
  }

  return result;
}

uint64_t sub_1C5950CEC@<X0>(uint64_t a4@<X8>)
{
  _s17TransportControlsCMa();
  sub_1C5950DFC(&qword_1EDA4A620, v5, _s17TransportControlsCMa, &unk_1C5BDFD58);
  *a4 = sub_1C5BC88C4();
  *(a4 + 8) = v6;
  *(a4 + 16) = sub_1C5BC8C84();
  *(a4 + 24) = v7;
  result = swift_getKeyPath(asc_1C5BDFD90);
  *(a4 + 32) = result;
  *(a4 + 40) = 0;
  return result;
}

uint64_t sub_1C5950DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5950DFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C5950E48(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1C5950E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C5BC92B4();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1C5BC92C4();
}

void sub_1C5950F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{

  if (a7)
  {
    swift_unknownObjectRelease();

    sub_1C5950E44(a5, a6 & 1);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5951048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C59510F8(uint64_t a1)
{
  sub_1C59337D0(319);
  if (v1 <= 0x3F)
  {
    sub_1C5933828(319, &qword_1EDA46720, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1C5933828(319, &qword_1EDA46770, &type metadata for TransportControlsPlacement);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C5951214()
{
  result = qword_1EDA464F0;
  if (!qword_1EDA464F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195610, &qword_1C5BE0228);
    sub_1C5A6C9C8();
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464F0);
  }

  return result;
}

unint64_t sub_1C59512CC()
{
  result = qword_1EDA4BD00;
  if (!qword_1EDA4BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4BD00);
  }

  return result;
}

unint64_t sub_1C5951360()
{
  result = qword_1EDA46528;
  if (!qword_1EDA46528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956D0, &qword_1C5BE0930);
    sub_1C5A6D670();
    sub_1C5924F54(&qword_1EDA46030, qword_1EC193698, &qword_1C5BD84B8, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46528);
  }

  return result;
}

unint64_t sub_1C5951418()
{
  result = qword_1EDA46300;
  if (!qword_1EDA46300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956E0, &unk_1C5BE0940);
    sub_1C59514A4();
    sub_1C5A6D330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46300);
  }

  return result;
}

unint64_t sub_1C59514A4()
{
  result = qword_1EDA489C0;
  if (!qword_1EDA489C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA489C0);
  }

  return result;
}

unint64_t sub_1C59514F8()
{
  result = qword_1EDA48690;
  if (!qword_1EDA48690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48690);
  }

  return result;
}

uint64_t sub_1C5951558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_1C595154C();
  sub_1C595154C();
  LOBYTE(v4) = sub_1C59515EC(&v11, &v8);
  sub_1C5950CE4(v8, v9);
  sub_1C5950CE4(v11, v12);
  return v4 & 1;
}

BOOL sub_1C59515EC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_1C5BCBDE4();
        sub_1C595154C();
        sub_1C595154C();
        sub_1C5950CE4(v3, v2);
        sub_1C5950CE4(v5, v4);
        return (v7 & 1) != 0;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_1C595154C();
    sub_1C595154C();
    sub_1C5950CE4(v3, v2);
    sub_1C5950CE4(v5, v4);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_9;
  }

  if (v3 != v5 || v2 != v4)
  {
    v10 = sub_1C5BCBDE4();
    sub_1C595154C();
    sub_1C595154C();
    sub_1C5950CE4(v3, v2);
    sub_1C5950CE4(v5, v4);
    return v10 & 1;
  }

LABEL_15:
  sub_1C595154C();
  sub_1C595154C();
  sub_1C5950CE4(v3, v2);
  sub_1C5950CE4(v3, v2);
  return 1;
}

unint64_t sub_1C5951830()
{
  result = qword_1EDA46508;
  if (!qword_1EDA46508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955A8, &qword_1C5BE00C0);
    sub_1C5924F54(&qword_1EDA45FC8, &qword_1EC1955B0, &unk_1C5BE0190, MEMORY[0x1E697D680]);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46508);
  }

  return result;
}

unint64_t sub_1C5951914()
{
  result = qword_1EDA46478;
  if (!qword_1EDA46478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195570, &qword_1C5BE0050);
    sub_1C5951830();
    sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78, &qword_1C5BD9590, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46478);
  }

  return result;
}

uint64_t sub_1C59519CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17TransportControlsCMa();
  sub_1C594F9D8(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
  v3 = sub_1C5BC88C4();
  sub_1C5BC8C84();
  return v3;
}

uint64_t sub_1C5951AB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s21TransportControlsViewV20MiniPlayerEdgeButtonVMa(255, *a1, a1[1], a4);
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getWitnessTable();
  sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5951BB8@<X0>(uint64_t *a2@<X8>)
{
  _s17TransportControlsCMa();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C5951C24(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C5951CB8@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_1C5BCAB54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC8284();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_1C5BC8CD4();
  (*(v9 + 104))(v11, *MEMORY[0x1E697DBB8], v8);
  v15 = sub_1C5BC8274();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  if (v15)
  {
    v17 = MEMORY[0x1E6981DA0];
    sub_1C5BCA474();
  }

  else
  {
    v17 = MEMORY[0x1E6981DB8];
    sub_1C5BCA494();
  }

  v18 = sub_1C5BCA4B4();

  (*(v5 + 104))(v7, *v17, v4);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  result = (*(v5 + 32))(a1 + *(v19 + 36), v7, v4);
  *a1 = v18;
  return result;
}

unint64_t sub_1C5951F50()
{
  result = qword_1EC192920;
  if (!qword_1EC192920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196170, &qword_1C5BDA000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192920);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5951FD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v47 = a3;
  v46 = a2;
  v10 = _s21TransportControlsViewV20MiniPlayerEdgeButtonVMa(255, a4, a5, a3);
  sub_1C5BC97C4();
  v50 = v10;
  v11 = sub_1C5BC8AB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v43 - v16;
  v17 = sub_1C5BCB804();
  v51 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v49 = &v43 - v21;
  swift_beginAccess();
  v22 = *(a1 + 56);
  if (v22 == 255)
  {
    (*(v12 + 56))(v19, 1, 1, v11);
    WitnessTable = swift_getWitnessTable();
    v36 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v62 = WitnessTable;
    v63 = v36;
    swift_getWitnessTable();
  }

  else
  {
    v45 = a6;
    v44 = v17;
    v24 = *(a1 + 40);
    v23 = *(a1 + 48);
    v56 = &type metadata for NowPlayingViewModel.TrailingTransportButtonConfiguration;
    v57 = sub_1C5973A34();
    *&v54 = v24;
    *(&v54 + 1) = v23;
    v55 = v22 & 1;
    swift_beginAccess();
    v25 = *(a1 + 57);
    sub_1C59525FC(v24, v23, v22);
    v26 = sub_1C59498C4(v46, v47, a4, *(a5 + 8));
    v27 = swift_allocObject();
    v27[2] = a4;
    v27[3] = a5;
    v27[4] = v26;
    swift_unknownObjectRetain();
    v28 = v27;
    v17 = v44;
    sub_1C5973B04(&v54, v25, sub_1C5B50C58, v28, v58);
    v29 = v50;
    v30 = swift_getWitnessTable();
    sub_1C595BB1C(0xD000000000000023, 0x80000001C5BFC460, v29);
    (*(*(v29 - 8) + 8))(v58, v29);
    v31 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v52 = v30;
    v53 = v31;
    v32 = swift_getWitnessTable();
    v33 = v48;
    sub_1C593EDC0(v14, v11, v32);
    v34 = *(v12 + 8);
    v34(v14, v11);
    sub_1C593EDC0(v33, v11, v32);
    v34(v33, v11);
    (*(v12 + 32))(v19, v14, v11);
    (*(v12 + 56))(v19, 0, 1, v11);
  }

  v37 = v49;
  sub_1C5941600(v19, v49);
  v38 = *(v51 + 8);
  v38(v19, v17);
  v39 = swift_getWitnessTable();
  v40 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v60 = v39;
  v61 = v40;
  v59 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  sub_1C593EDC0(v37, v17, v41);
  return (v38)(v37, v17);
}

uint64_t sub_1C59525FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C5951550(a1, a2);
  }

  return a1;
}

uint64_t sub_1C5952614()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5952674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C59526D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C5952730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v4 = sub_1C5BC89B4();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for NowPlayingTransportButtonStyle(0);
  MEMORY[0x1EEE9AC00](v63);
  v7 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195570, &qword_1C5BE0050);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v60 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195578, &qword_1C5BE0058);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v60 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195580, &qword_1C5BE0060);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v60 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195588, &unk_1C5BE0068);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v60 - v12;
  v13 = sub_1C5BC8F34();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MiniPlayerTransportSpecs(0);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[1];
  v77 = *v2;
  v78[0] = v19;
  *(v78 + 9) = *(v2 + 25);
  v80 = *(v2 + 40);
  v20 = *(v2 + 4);
  v79 = v20;
  if (v80 != 1)
  {
    sub_1C59400B0(&v79, &v75, &qword_1EC1929E0, &qword_1C5BDE810);
    sub_1C5BCB4E4();
    v21 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v79, &qword_1EC1929E0, &qword_1C5BDE810);
    (*(v14 + 8))(v16, v13);
    LOBYTE(v20) = v75;
  }

  if (v20 != 3 && v20)
  {
    if (qword_1EDA482A0 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDA482A8;
  }

  else
  {
    if (qword_1EDA482C8 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDA482D0;
  }

  v23 = __swift_project_value_buffer(v17, v22);
  v24 = v69;
  sub_1C59534C8(v23, v69);
  v25 = swift_allocObject();
  v26 = *(a1 + 24);
  *(v25 + 16) = *(a1 + 16);
  *(v25 + 24) = v26;
  v27 = v78[0];
  *(v25 + 32) = v77;
  *(v25 + 48) = v27;
  *(v25 + 57) = *(v78 + 9);
  v28 = MEMORY[0x1EEE9AC00](v25);
  *(&v60 - 4) = v29;
  *(&v60 - 3) = v30;
  *(&v60 - 2) = &v77;
  (*(*(a1 - 8) + 16))(&v75, &v77, a1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195590, &qword_1C5BE0078);
  sub_1C595352C();
  sub_1C5BCA6E4();
  v31 = *v24;
  KeyPath = swift_getKeyPath("P\v\\&");
  v33 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955A8, &qword_1C5BE00C0) + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = *(v17 + 20);
  v35 = swift_getKeyPath(" \v\\&");
  v36 = &v9[*(v61 + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78, &qword_1C5BD9590) + 28);
  v38 = sub_1C5BCA5D4();
  (*(*(v38 - 8) + 16))(v36 + v37, &v24[v34], v38);
  *v36 = v35;
  *v7 = swift_getKeyPath(byte_1C5BE0100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v39 = v63;
  v40 = v7 + *(v63 + 20);
  *v40 = swift_getKeyPath(byte_1C5BE0138);
  v40[8] = 0;
  v41 = v7 + *(v39 + 24);
  *v41 = swift_getKeyPath(byte_1C5BE0168);
  v41[8] = 0;
  *(v7 + *(v39 + 28)) = 0x3FF0000000000000;
  sub_1C5951914();
  sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle, &unk_1C5BE0690);

  v42 = v62;
  sub_1C5BC9DB4();
  sub_1C595391C(v7, type metadata accessor for NowPlayingTransportButtonStyle);
  sub_1C5924EF4(v9, &qword_1EC195570, &qword_1C5BE0050);
  v44 = v70;
  v43 = v71;
  v45 = v67;
  (*(v70 + 104))(v67, *MEMORY[0x1E697E6E8], v71);
  v46 = sub_1C5A6C3E0();
  v47 = v65;
  v48 = v64;
  sub_1C5BC9F44();
  (*(v44 + 8))(v45, v43);
  sub_1C5924EF4(v42, &qword_1EC195578, &qword_1C5BE0058);

  v49 = sub_1C595397C();
  v51 = v50;
  LOBYTE(v45) = v52;

  v75 = v48;
  v76 = v46;
  swift_getOpaqueTypeConformance2();
  v53 = v73;
  v54 = v68;
  sub_1C5BCA024();
  sub_1C5953BD8(v49, v51, v45 & 1);

  (*(v66 + 8))(v47, v54);
  v55 = [objc_opt_self() mainBundle];
  v56 = sub_1C5949F2C();
  v58 = v57;

  v75 = v56;
  v76 = v58;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000023, 0x80000001C5BF9320);
  sub_1C5A6C5DC();
  sub_1C5BCA164();

  sub_1C5924EF4(v53, &qword_1EC195588, &unk_1C5BE0068);
  return sub_1C595391C(v24, type metadata accessor for MiniPlayerTransportSpecs);
}

uint64_t sub_1C59530FC()
{

  swift_unknownObjectRelease();
  sub_1C5942458(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

void *sub_1C5953168@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5954684();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5953228(uint64_t a1)
{
  result = sub_1C5BCA5D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C59532A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90, &qword_1C5BD48D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_1C5BCA5D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MiniPlayerTransportSpecs(0);
  __swift_allocate_value_buffer(v7, qword_1EDA482D0);
  v8 = __swift_project_value_buffer(v7, qword_1EDA482D0);
  sub_1C5BC9924();
  sub_1C5BC9964();
  v9 = sub_1C5BC99E4();

  (*(v4 + 104))(v6, *MEMORY[0x1E69816E0], v3);
  if (_UISolariumEnabled())
  {
    sub_1C5BC9964();
  }

  else
  {
    sub_1C5BC9974();
  }

  v10 = sub_1C5BC9954();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = sub_1C5BC99A4();
  sub_1C5924EF4(v2, &qword_1EC190F90, &qword_1C5BD48D0);
  *v8 = v9;
  result = (*(v4 + 32))(&v8[*(v7 + 20)], v6, v3);
  *&v8[*(v7 + 24)] = v11;
  return result;
}

uint64_t sub_1C59534C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MiniPlayerTransportSpecs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C595352C()
{
  result = qword_1EDA46480;
  if (!qword_1EDA46480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195590, &qword_1C5BE0078);
    sub_1C59535E4();
    sub_1C5924F54(&qword_1EDA46428, &qword_1EC1955A0, &qword_1C5BE0088, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46480);
  }

  return result;
}

unint64_t sub_1C59535E4()
{
  result = qword_1EDA46518;
  if (!qword_1EDA46518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195598, &qword_1C5BE0080);
    sub_1C5953670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46518);
  }

  return result;
}

unint64_t sub_1C5953670()
{
  result = qword_1EDA46430;
  if (!qword_1EDA46430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46430);
  }

  return result;
}

double sub_1C59536D0@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_1C5BCA5A4();
  v7 = sub_1C5BCAA54();
  v9 = v8;
  sub_1C5953804(a1, &v22);
  v14 = v25;
  v15[0] = v22;
  v15[1] = v23;
  v15[2] = v24;
  LOBYTE(v16) = v25;
  *(&v16 + 1) = v7;
  v17 = v9;
  v26 = v9;
  v25 = v16;
  v18[0] = v22;
  v18[1] = v23;
  v18[2] = v24;
  v19 = v14;
  v20 = v7;
  v21 = v9;
  sub_1C59400B0(v15, &v13, &qword_1EC1955A0, &qword_1C5BE0088);
  sub_1C5924EF4(v18, &qword_1EC1955A0, &qword_1C5BE0088);
  *a4 = v6;
  v10 = v22;
  *(a4 + 24) = v23;
  result = *&v24;
  v12 = v25;
  *(a4 + 40) = v24;
  *(a4 + 56) = v12;
  *(a4 + 72) = v26;
  *(a4 + 8) = v10;
  return result;
}

double sub_1C5953804@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v3 + 33);
  v5 = *&aPlay_3[8 * v4];
  v6 = qword_1C5BE0B68[v4];
  v7 = swift_allocObject();
  result = 4.82582436e276;
  *(v7 + 16) = xmmword_1C5BDFC60;
  *a2 = 0xD000000000000018;
  *(a2 + 8) = 0x80000001C5BF9350;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = sub_1C59668D8;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1C59538C0()
{

  return swift_deallocObject();
}

uint64_t sub_1C595391C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C595397C()
{
  v1 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v2 - 8);
  swift_beginAccess();
  if (!*(v0 + 33))
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*(v0 + 33) == 1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v3 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  sub_1C5BCAE94();
  sub_1C594A23C();
  return sub_1C5BC9CA4();
}

void sub_1C5953BD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1C5953C08()
{
  result = qword_1EDA46440;
  if (!qword_1EDA46440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195670, &qword_1C5BE0740);
    sub_1C5953CC0();
    sub_1C5924F54(&qword_1EDA46310, &qword_1EC195678, &qword_1C5BE0748, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46440);
  }

  return result;
}

unint64_t sub_1C5953CC0()
{
  result = qword_1EDA46448;
  if (!qword_1EDA46448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195668, &qword_1C5BE0738);
    sub_1C5A6D5E4();
    sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46448);
  }

  return result;
}

unint64_t sub_1C5953D78()
{
  result = qword_1EDA464B0;
  if (!qword_1EDA464B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195658, &qword_1C5BE0728);
    sub_1C5953E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464B0);
  }

  return result;
}

unint64_t sub_1C5953E04()
{
  result = qword_1EDA465B0;
  if (!qword_1EDA465B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195650, &qword_1C5BE0720);
    sub_1C5950DFC(&qword_1EDA46200, 255, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1C5924F54(&qword_1EDA461E8, &qword_1EC1956C8, &unk_1C5BE0920, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465B0);
  }

  return result;
}

uint64_t type metadata accessor for _CAPackageView(uint64_t a1)
{
  result = qword_1EDA4C040;
  if (!qword_1EDA4C040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5953F60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C5953FB0(uint64_t a1)
{
  sub_1C5953F60(319, &qword_1EDA45EC8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C59540FC(319);
    if (v2 <= 0x3F)
    {
      sub_1C592EEE4(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
      if (v3 <= 0x3F)
      {
        sub_1C5953F60(319, &qword_1EDA46738, MEMORY[0x1E69815C0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C592EEE4(319, &qword_1EDA46768, MEMORY[0x1E697BE48]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C59540FC(uint64_t a1)
{
  if (!qword_1EDA46690)
  {
    type metadata accessor for ViewState();
    sub_1C5954190(&qword_1EDA46C30, type metadata accessor for ViewState, &unk_1C5BE8554);
    v1 = sub_1C5BC88D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46690);
    }
  }
}

uint64_t sub_1C5954190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C595427C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197900, &qword_1C5BE87D0);
  sub_1C5BC81D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1978F8, &qword_1C5BE87C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192880, &unk_1C5BD5D10);
  sub_1C5954398();
  sub_1C5954488();
  swift_getOpaqueTypeConformance2();
  sub_1C5954190(&qword_1EDA467E8, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5954398()
{
  result = qword_1EDA465C0;
  if (!qword_1EDA465C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1978F8, &qword_1C5BE87C8);
    sub_1C5954424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465C0);
  }

  return result;
}

unint64_t sub_1C5954424()
{
  result = qword_1EDA466D0;
  if (!qword_1EDA466D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197908, &qword_1C5BE87D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA466D0);
  }

  return result;
}

unint64_t sub_1C5954488()
{
  result = qword_1EDA4E170;
  if (!qword_1EDA4E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192880, &unk_1C5BD5D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E170);
  }

  return result;
}

uint64_t sub_1C5954504@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C5BC8284();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1C5BC8CD4();
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBA8], v2);
  v9 = sub_1C5BC8274();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    result = sub_1C5BCA494();
  }

  else
  {
    result = sub_1C5BCA474();
  }

  *a1 = result;
  return result;
}

unint64_t sub_1C5954684()
{
  result = qword_1EDA46360;
  if (!qword_1EDA46360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46360);
  }

  return result;
}

uint64_t sub_1C59546D8@<X0>(uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1C5BC8F34();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195650, &qword_1C5BE0720);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195658, &qword_1C5BE0728);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v41 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195660, &qword_1C5BE0730);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v41 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195668, &qword_1C5BE0738);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v41 - v13;
  sub_1C5BC9564();
  *&v8[*(v6 + 44)] = sub_1C5BC93F4();
  v15 = type metadata accessor for NowPlayingTransportButtonStyle(0);
  v16 = *(v15 + 20);
  v47 = v2;
  v17 = v2 + v16;
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v20 = v41;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v21 = sub_1C5942458(v18, 0);
    (*(v42 + 8))(v20, v43, v21);
    LOBYTE(v18) = v63[0];
  }

  if (v18)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.5;
  }

  sub_1C59E7D34(v8, v10, &qword_1EC195650, &qword_1C5BE0720);
  *&v10[*(v44 + 36)] = v22;
  if (sub_1C5BC9574())
  {
    v23 = *(v47 + *(v15 + 28)) * 0.8;
  }

  else
  {
    v23 = *(v47 + *(v15 + 28));
  }

  sub_1C5BCABD4();
  v25 = v24;
  v27 = v26;
  sub_1C59E7D34(v10, v12, &qword_1EC195658, &qword_1C5BE0728);
  v28 = &v12[*(v45 + 36)];
  *v28 = v23;
  *(v28 + 1) = v23;
  *(v28 + 2) = v25;
  *(v28 + 3) = v27;
  sub_1C5BC9574();
  v29 = sub_1C5BCAB34();
  v30 = sub_1C5BC9574();
  sub_1C59E7D34(v12, v14, &qword_1EC195660, &qword_1C5BE0730);
  v31 = &v14[*(v46 + 36)];
  *v31 = v29;
  v31[8] = v30 & 1;
  v32 = sub_1C5BCAA54();
  v34 = v33;
  sub_1C5954BC8(&v50);
  v58 = v52;
  v59 = v53;
  v60 = v54;
  v56 = v50;
  v57 = v51;
  *&v61 = v55;
  *(&v61 + 1) = v32;
  v62 = v34;
  v35 = v48;
  sub_1C59E7D34(v14, v48, &qword_1EC195668, &qword_1C5BE0738);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195670, &qword_1C5BE0740) + 36);
  v37 = v61;
  *(v36 + 64) = v60;
  *(v36 + 80) = v37;
  *(v36 + 96) = v62;
  v38 = v57;
  *v36 = v56;
  *(v36 + 16) = v38;
  v39 = v59;
  *(v36 + 32) = v58;
  *(v36 + 48) = v39;
  v63[0] = v50;
  v63[1] = v51;
  v63[3] = v53;
  v63[4] = v54;
  v63[2] = v52;
  v64 = v55;
  v65 = v32;
  v66 = v34;
  sub_1C59400B0(&v56, &v49, &qword_1EC195678, &qword_1C5BE0748);
  return sub_1C5924EF4(v63, &qword_1EC195678, &qword_1C5BE0748);
}

double sub_1C5954BC8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5BC8284();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  sub_1C5BC9574();
  sub_1C59421E4(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBA8], v2);
  v9 = sub_1C5BC8274();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    sub_1C5BCA494();
  }

  else
  {
    sub_1C5BCA474();
  }

  v11 = sub_1C5BCA4B4();

  sub_1C5A6C004();
  sub_1C5A6C004();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *&v18[6] = v19;
  *&v18[22] = v20;
  *&v18[38] = v21;
  if (sub_1C5BC9574())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = sub_1C5BCAB34();
  v14 = sub_1C5BC9574();
  v15 = *&v18[16];
  *(a1 + 10) = *v18;
  *a1 = v11;
  *(a1 + 8) = 256;
  *(a1 + 26) = v15;
  result = *&v18[32];
  *(a1 + 42) = *&v18[32];
  *(a1 + 56) = *&v18[46];
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14 & 1;
  return result;
}

uint64_t sub_1C5954E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = v5;
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v7 + 16);
  sub_1C5BC92D4();
  v52 = *(a1 + 32);
  v61 = v52;
  swift_getWitnessTable();
  v8 = sub_1C5BCA7F4();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - v9;
  v45 = sub_1C5BC8AB4();
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v51 = &v38 - v10;
  v47 = sub_1C5BC8AB4();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v38 - v13;
  v54 = v53;
  v55 = v52;
  v42 = v2;
  v56 = v2;
  sub_1C5BCAA54();
  sub_1C5BCA7E4();
  v41 = *(v4 + 16);
  v38 = v6;
  v14 = v2;
  v15 = a1;
  v41(v6, v14, a1);
  v16 = v4;
  v17 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = v52;
  *(v18 + 16) = v53;
  *(v18 + 32) = v19;
  v20 = *(v16 + 32);
  v21 = v15;
  v20(v18 + v17, v6, v15);
  v22 = v8;
  WitnessTable = swift_getWitnessTable();
  v24 = v39;
  sub_1C5BCA324();

  (*(v44 + 8))(v24, v22);
  v25 = v38;
  v41(v38, v42, v21);
  v26 = swift_allocObject();
  v27 = v52;
  *(v26 + 16) = v53;
  *(v26 + 32) = v27;
  v20(v26 + v17, v25, v21);
  v28 = MEMORY[0x1E69805D0];
  v59 = WitnessTable;
  v60 = MEMORY[0x1E69805D0];
  v29 = v45;
  v30 = swift_getWitnessTable();
  v31 = v43;
  v32 = v51;
  sub_1C5BC9E34();

  (*(v48 + 8))(v32, v29);
  v57 = v30;
  v58 = v28;
  v33 = v47;
  v34 = swift_getWitnessTable();
  v35 = v46;
  sub_1C593EDC0(v31, v33, v34);
  v36 = *(v49 + 8);
  v36(v31, v33);
  sub_1C593EDC0(v35, v33, v34);
  return (v36)(v35, v33);
}

uint64_t sub_1C5955414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a6;
  v42 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v38 - v13;
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = sub_1C5BC92D4();
  v43 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v50 = a2;
  v51 = a3;
  v46 = a4;
  v52 = a4;
  v53 = a5;
  v44 = a5;
  v24 = type metadata accessor for ShownWhenAppeared(0, &v50);
  v25 = (a1 + *(v24 + 56));
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v50) = v26;
  v51 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA694();
  if (v49 == 1)
  {
    v28 = a1;
    v29 = v46;
    sub_1C593EDC0(v28, a2, v46);
    sub_1C593EDC0(v20, a2, v29);
    v30 = v44;
    sub_1C5950E54(v17, a2, a3, v29, v44);
    v31 = *(v39 + 8);
    v31(v17, a2);
    v31(v20, a2);
  }

  else
  {
    v32 = a1 + *(v24 + 52);
    v33 = v40;
    v30 = v44;
    sub_1C593EDC0(v32, a3, v44);
    v34 = v41;
    sub_1C593EDC0(v33, a3, v30);
    sub_1C5941738(v34, a2, a3, v46, v30);
    v35 = *(v42 + 8);
    v35(v34, a3);
    v35(v33, a3);
  }

  v47 = v46;
  v48 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v23, v21, WitnessTable);
  return (*(v43 + 8))(v23, v21);
}

uint64_t sub_1C59557E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5955820@<X0>(uint64_t *a2@<X8>)
{
  _s18MiniPlayerMetadataCMa();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C595586C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

double sub_1C59558B4@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5955914();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C5955914()
{
  result = qword_1EDA463E0;
  if (!qword_1EDA463E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA463E0);
  }

  return result;
}

uint64_t sub_1C595597C(uint64_t a1)
{
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CF8, &qword_1C5BEDCF0);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v4 = sub_1C5BCA714();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v15 = *(a1 + 16);
  v16 = v3;
  v17 = *(a1 + 32);
  v18 = v1;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v7, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_1C593EDC0(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

unint64_t sub_1C5955B88()
{
  result = qword_1EDA4A358[0];
  if (!qword_1EDA4A358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4A358);
  }

  return result;
}

uint64_t sub_1C5955BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D00, &qword_1C5BEDCF8);
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195080, &qword_1C5BDE808);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v47 - v15;
  v16 = sub_1C5BC8F34();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CF8, &qword_1C5BEDCF0);
  MEMORY[0x1EEE9AC00](v55);
  v60 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v47 - v22;
  v58 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v57 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v53 = &v47 - v26;
  sub_1C593EDC0(a1, a3, a5);
  *&v64 = a2;
  *(&v64 + 1) = a3;
  v65 = a4;
  v66 = a5;
  v52 = a5;
  v27 = a1 + *(type metadata accessor for Marquee.ContentWithBadge(0, &v64) + 52);
  v28 = *v27;
  v29 = *(v27 + 8);
  v31 = *(v27 + 16);
  v30 = *(v27 + 24);
  if (*(v27 + 32) != 1)
  {

    sub_1C5BCB4E4();
    v38 = sub_1C5BC9844();
    v47 = a3;
    v39 = v38;
    sub_1C5BC7C54();

    a3 = v47;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v40 = sub_1C5B5E48C(v28, v29, v31, v30, 0);
    (*(v17 + 8))(v19, v16, v40);
    v29 = *(&v64 + 1);
    v31 = v65;
    v30 = v66;
    if (*(&v64 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v37 = 1;
    v36 = v56;
    goto LABEL_6;
  }

  sub_1C5957038(v28, v29, v31, v30);
  if (!v29)
  {
    goto LABEL_5;
  }

LABEL_3:
  v64 = xmmword_1C5BED3B0;
  LOBYTE(v65) = 0;
  v66 = MEMORY[0x1E69E7CC0];
  v32 = v48;
  sub_1C5BCA094();
  v33 = v49;
  sub_1C59400B0(v32, v49, &qword_1EC195080, &qword_1C5BDE808);
  v34 = v50;
  sub_1C59400B0(v33, v50, &qword_1EC195080, &qword_1C5BDE808);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D08, &qword_1C5BEDD00) + 48));
  *v35 = v29;
  v35[1] = v31;
  v35[2] = v30;

  sub_1C5924EF4(v32, &qword_1EC195080, &qword_1C5BDE808);

  sub_1C5924EF4(v33, &qword_1EC195080, &qword_1C5BDE808);
  v36 = v56;
  sub_1C59E7D34(v34, v56, &qword_1EC198D00, &qword_1C5BEDCF8);
  v37 = 0;
LABEL_6:
  (*(v51 + 56))(v36, v37, 1, v54);
  v42 = v57;
  v41 = v58;
  v43 = v53;
  (*(v58 + 16))(v57, v53, a3);
  *&v64 = v42;
  v44 = v60;
  sub_1C59400B0(v36, v60, &qword_1EC198CF8, &qword_1C5BEDCF0);
  *(&v64 + 1) = v44;
  v63[0] = a3;
  v63[1] = v55;
  v61 = v52;
  v62 = sub_1C5B5E7C4();
  sub_1C594226C(&v64, 2uLL, v63);
  sub_1C5924EF4(v36, &qword_1EC198CF8, &qword_1C5BEDCF0);
  v45 = *(v41 + 8);
  v45(v43, a3);
  sub_1C5924EF4(v44, &qword_1EC198CF8, &qword_1C5BEDCF0);
  return (v45)(v42, a3);
}

uint64_t sub_1C59561E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v58 = a3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  _s21MiniPlayerContentViewV7ArtworkVMa(255, v4, v5, a2);
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v64 = v5;
  v65 = v4;
  _s22MiniPlayerMetadataViewVMa(255, v4, v5, v6);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC92D4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C5BCA714();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v50 - v9;
  v10 = sub_1C5BC8AB4();
  v61 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v50 - v11;
  v62 = v12;
  v13 = sub_1C5BC8AB4();
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v50 - v16;
  v17 = sub_1C5BC8F34();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v3;
  v52 = v3[1];
  v53 = v25;
  v26 = v3[2];
  v54 = *(v3 + 24);
  if (v54 == 1)
  {
    v27 = v26;
  }

  else
  {
    v51 = v22;
    sub_1C5950E48(v26, 0);
    sub_1C5BCB4E4();
    v28 = sub_1C5BC9844();
    v50 = v17;
    v29 = v28;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v30 = sub_1C5942458(v26, 0);
    (*(v18 + 8))(v20, v50, v30);
    v22 = v51;
    v27 = v70;
  }

  if (v27 != 3 && v27)
  {
    v31 = v8;
    if (qword_1EC1906C8 != -1)
    {
      v49 = v22;
      swift_once();
      v22 = v49;
    }

    v32 = qword_1EC1A6AC8;
  }

  else
  {
    v31 = v8;
    if (qword_1EDA47CC0 != -1)
    {
      v48 = v22;
      swift_once();
      v22 = v48;
    }

    v32 = qword_1EDA5DAE8;
  }

  v33 = __swift_project_value_buffer(v22, v32);
  v34 = sub_1C5948550(v33, v24);
  MEMORY[0x1EEE9AC00](v34);
  v35 = v64;
  *(&v50 - 6) = v65;
  *(&v50 - 5) = v35;
  v36 = v52;
  *(&v50 - 4) = v53;
  *(&v50 - 3) = v36;
  *(&v50 - 2) = v26;
  *(&v50 - 8) = v54;
  sub_1C5BC8FC4();
  v37 = v56;
  sub_1C5BCA704();
  sub_1C5BC98A4();
  v38 = swift_getWitnessTable();
  v39 = v57;
  sub_1C5BCA2F4();
  (*(v31 + 8))(v37, v7);
  sub_1C5BC98B4();
  v40 = MEMORY[0x1E697E5D8];
  v68 = v38;
  v69 = MEMORY[0x1E697E5D8];
  v41 = v62;
  v42 = swift_getWitnessTable();
  v43 = v59;
  sub_1C5BCA2F4();
  (*(v61 + 8))(v39, v41);
  sub_1C594A4A4(v24);
  v66 = v42;
  v67 = v40;
  v44 = swift_getWitnessTable();
  v45 = v60;
  sub_1C593EDC0(v43, v13, v44);
  v46 = *(v63 + 8);
  v46(v43, v13);
  sub_1C593EDC0(v45, v13, v44);
  return (v46)(v45, v13);
}

uint64_t sub_1C5956940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a4;
  v55 = a3;
  v54 = a2;
  v53 = a1;
  v58 = a7;
  _s22MiniPlayerMetadataViewVMa(255, a5, a6, a4);
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v49 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C5BCA714();
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v13;
  v56 = sub_1C5BC92D4();
  v52 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v41 - v16;
  v41 = a6;
  _s21MiniPlayerContentViewV7ArtworkVMa(255, a5, a6, v17);
  v18 = sub_1C5BC8AB4();
  v42 = *(v18 - 8);
  v19 = v42;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v41 - v23;
  sub_1C5A35928(&v75);
  v71 = v75;
  LOBYTE(v72) = v76;
  v73 = v77;
  v74 = v78;
  v24 = swift_getWitnessTable();
  sub_1C5BCA184();
  v25 = v73;
  v26 = v74;

  sub_1C5942458(v25, v26);
  v27 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v69 = v24;
  v70 = v27;
  v44 = swift_getWitnessTable();
  sub_1C593EDC0(v21, v18, v44);
  v45 = *(v19 + 8);
  v45(v21, v18);
  v28 = v41;
  _s21MiniPlayerContentViewV10CenterViewVMa(0, a5, v41, v29);
  v59 = a5;
  v60 = v28;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v64 = v57 & 1;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  v30 = swift_getWitnessTable();
  v31 = v47;
  sub_1C593EDC0(v11, v9, v30);
  v32 = *(v50 + 8);
  v32(v11, v9);
  sub_1C593EDC0(v31, v9, v30);
  v33 = v46;
  sub_1C5950E54(v11, v9, MEMORY[0x1E6981840], v30, MEMORY[0x1E6981838]);
  v32(v11, v9);
  v32(v31, v9);
  v34 = v43;
  (*(v42 + 16))(v21, v43, v18);
  v75 = v21;
  v35 = v52;
  v36 = v51;
  v37 = v56;
  (*(v52 + 16))(v51, v33, v56);
  v76 = v36;
  v71 = v18;
  v72 = v37;
  v67 = v44;
  v65 = v30;
  v66 = MEMORY[0x1E6981838];
  v68 = swift_getWitnessTable();
  sub_1C594226C(&v75, 2uLL, &v71);
  v38 = *(v35 + 8);
  v38(v33, v37);
  v39 = v45;
  v45(v34, v18);
  v38(v36, v37);
  return v39(v21, v18);
}

void sub_1C5957038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1C5957088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = _s22MiniPlayerMetadataViewVMa(255, a5, a6, a4);
  sub_1C5BC97C4();
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  _s21MiniPlayerContentViewV10CenterViewVMa(0, a5, a6, v16);

  sub_1C59573A8(v28);
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA184();
  (*(*(v8 - 8) + 8))(v28, v8);
  v18 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v26 = WitnessTable;
  v27 = v18;
  v19 = swift_getWitnessTable();
  sub_1C593EDC0(v12, v9, v19);
  v20 = *(v10 + 8);
  v20(v12, v9);
  (*(v10 + 16))(v12, v15, v9);
  v24 = 0;
  v25 = 1;
  v28[0] = v12;
  v28[1] = &v24;
  v23[0] = v9;
  v23[1] = MEMORY[0x1E6981840];
  v22[0] = v19;
  v22[1] = MEMORY[0x1E6981838];
  sub_1C594226C(v28, 2uLL, v23);
  v20(v15, v9);
  return (v20)(v12, v9);
}

uint64_t sub_1C5957354@<X0>(uint64_t *a2@<X8>)
{
  _s14DefaultArtworkCMa();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C59573A8@<X0>(uint64_t a4@<X8>)
{
  _s18MiniPlayerMetadataCMa();
  sub_1C59576B4(qword_1EDA4A4D8, v5, _s18MiniPlayerMetadataCMa, &unk_1C5BD5704);
  *a4 = sub_1C5BC88C4();
  *(a4 + 8) = v6;
  *(a4 + 16) = sub_1C5BC8C84();
  *(a4 + 24) = v7;
  type metadata accessor for NowPlayingRouteObserver(0);
  sub_1C59576B4(&qword_1EDA48458, 255, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
  *(a4 + 32) = sub_1C5BC8C84();
  *(a4 + 40) = v8;
  _s12PresentationCMa(0);
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  *(a4 + 48) = sub_1C5BC8324();
  *(a4 + 56) = v9 & 1;
  *(a4 + 64) = swift_getKeyPath(byte_1C5BD5C00);
  *(a4 + 104) = 0;
  *(a4 + 112) = swift_getKeyPath(byte_1C5BD5C28);
  *(a4 + 120) = 0;
  type metadata accessor for WindowProperties(0);
  sub_1C59576B4(&qword_1EDA4B960, 255, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  result = sub_1C5BC8324();
  *(a4 + 128) = result;
  *(a4 + 136) = v11 & 1;
  return result;
}

uint64_t sub_1C59575AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C5BC9044();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C595763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C5BC9044();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C59576B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C59576FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v80 = a2;
  v3 = sub_1C5BC8F34();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArtworkCornerModifier(0);
  v70 = *(v5 - 8);
  v6 = *(v70 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DF8, &qword_1C5BE59D0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E00, &qword_1C5BE59D8);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v12 = &v66 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E08, &qword_1C5BE59E0);
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v81 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E10, &qword_1C5BE59E8);
  v78 = *(v14 - 8);
  v79 = v14;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v77 = &v66 - v16;
  KeyPath = swift_getKeyPath(byte_1C5BE5420, v15);
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E18, &unk_1C5BE59F0) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A30, &qword_1C5BE3D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8, &qword_1C5BE5918);
  v19 = v6;
  sub_1C5BCA694();
  *v18 = KeyPath;
  v20 = v2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E20, &qword_1C5BE5A00);
  (*(*(v21 - 8) + 16))(v10, v82, v21);
  sub_1C5945830(v2, v7, type metadata accessor for ArtworkCornerModifier);
  v22 = v70[80];
  v23 = (v22 + 16) & ~v22;
  v24 = swift_allocObject();
  sub_1C5958174(v7, v24 + v23);
  v25 = v8;
  v26 = *(v8 + 36);
  v70 = v10;
  v27 = &v10[v26];
  *v27 = sub_1C5972A08;
  *(v27 + 1) = v24;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = *(v20 + 64);
  v29 = v20;
  if (*(v20 + 72) == 1)
  {
    LOBYTE(v85) = *(v20 + 64);
  }

  else
  {

    sub_1C5BCB4E4();
    v30 = sub_1C5BC9844();
    v23 = (v22 + 16) & ~v22;
    sub_1C5BC7C54();

    v31 = v73;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v32 = sub_1C5942458(v28, 0);
    (*(v74 + 8))(v31, v75, v32);
    LOBYTE(v28) = v85;
  }

  v66 = v12;
  v83 = v28;
  v33 = v29;
  sub_1C5945830(v29, v7, type metadata accessor for ArtworkCornerModifier);
  v34 = swift_allocObject();
  v82 = v19;
  sub_1C5958174(v7, v34 + v23);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193C10, &qword_1C5BDB690);
  v36 = sub_1C5AC4570();
  v37 = sub_1C5945CDC();
  v38 = v7;
  v39 = v22;
  v40 = v70;
  sub_1C5BCA344();

  sub_1C5924EF4(v40, &qword_1EC196DF8, &qword_1C5BE59D0);
  v41 = *(v33 + 96);
  if (v41)
  {
    v83 = *(v41 + 16);
    sub_1C5945830(v33, v38, type metadata accessor for ArtworkCornerModifier);
    v70 = v39;
    v42 = swift_allocObject();
    sub_1C5958174(v38, v42 + v23);
    v85 = v25;
    v86 = v35;
    v87 = v36;
    v88 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = sub_1C593A9AC();
    v45 = v71;
    v68 = OpaqueTypeConformance2;
    v67 = v44;
    v46 = v66;
    sub_1C5BCA344();

    (*(v69 + 8))(v46, v45);
    v47 = *v33;
    v48 = v38;
    if (*(v33 + 8))
    {
      v83 = *v33;
    }

    else
    {

      sub_1C5BCB4E4();
      v49 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v50 = v73;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v51 = sub_1C5942458(v47, 0);
      (*(v74 + 8))(v50, v75, v51);
      LOBYTE(v47) = v83;
    }

    v84 = v47;
    sub_1C5945830(v33, v38, type metadata accessor for ArtworkCornerModifier);
    v52 = v33;
    v53 = swift_allocObject();
    sub_1C5958174(v38, v53 + v23);
    v85 = v45;
    v86 = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
    v87 = v68;
    v88 = v67;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = sub_1C592D124();
    v57 = v76;
    v56 = v77;
    v58 = v81;
    sub_1C5BCA334();

    (*(v72 + 8))(v58, v57);
    v59 = *(v52 + 80);
    if (v59)
    {
      swift_beginAccess();
      v84 = *(v59 + 16);
      sub_1C5945830(v52, v48, type metadata accessor for ArtworkCornerModifier);
      v60 = swift_allocObject();
      sub_1C5958174(v48, v60 + v23);
      v85 = v57;
      v86 = &type metadata for NowPlayingArtwork.Placement;
      v87 = v54;
      v88 = v55;
      swift_getOpaqueTypeConformance2();
      v61 = v79;
      sub_1C5BCA344();

      return (*(v78 + 8))(v56, v61);
    }

    _s14DefaultArtworkCMa();
    v63 = qword_1EDA49E00;
    v64 = _s14DefaultArtworkCMa;
    v65 = &unk_1C5BDEF78;
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.Lifecycle();
    v63 = &qword_1EDA497D0;
    v64 = type metadata accessor for NowPlayingViewModel.Lifecycle;
    v65 = &unk_1C5BF23D8;
  }

  sub_1C5AC3CD8(v63, v64, v65);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5958174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkCornerModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

unint64_t sub_1C595820C()
{
  result = qword_1EDA48DA0;
  if (!qword_1EDA48DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48DA0);
  }

  return result;
}

unint64_t sub_1C5958260()
{
  result = qword_1EC192C68;
  if (!qword_1EC192C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C70, &qword_1C5BD6C58);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192C68);
  }

  return result;
}

uint64_t sub_1C5958318@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA48DB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ArtworkCornerStyle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDA48DB8);
  return sub_1C5945830(v3, a1, type metadata accessor for ArtworkCornerStyle);
}

uint64_t sub_1C5958398()
{
  v0 = type metadata accessor for ArtworkCornerStyle(0);
  __swift_allocate_value_buffer(v0, qword_1EDA48DB8);
  v1 = __swift_project_value_buffer(v0, qword_1EDA48DB8);
  *v1 = 0;
  v2 = *(v0 + 20);
  v3 = *MEMORY[0x1E697F480];
  v4 = sub_1C5BC9044();
  v5 = *(*(v4 - 8) + 104);

  return v5(&v1[v2], v3, v4);
}

uint64_t sub_1C5958444(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C5945830(a1, &v9 - v6, type metadata accessor for ArtworkCornerStyle);
  sub_1C5945830(v7, v4, type metadata accessor for ArtworkCornerStyle);
  sub_1C595820C();
  sub_1C5BC8F54();
  return sub_1C5945898(v7, type metadata accessor for ArtworkCornerStyle);
}

uint64_t sub_1C5958564(uint64_t a1)
{
  sub_1C5BCAF04();
}

uint64_t sub_1C59585F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5958648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00, &qword_1C5BD87E0);
  v3 = *(a1 + 24);
  v22 = *(a1 + 16);
  _s9VideoViewVMa(255, v22, v3, v4);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  v5 = sub_1C5BC8AB4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v43 = sub_1C5946D98();
  v21[3] = MEMORY[0x1E697E858];
  v6 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  v7 = sub_1C5BC92D4();
  v40 = swift_getWitnessTable();
  v41 = sub_1C5946DEC();
  v38 = swift_getWitnessTable();
  v39 = sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v8 = swift_getWitnessTable();
  v31 = v5;
  v32 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v39;
  v34 = v8;
  v35 = swift_getWitnessTable();
  v21[0] = v7;
  v21[1] = swift_getWitnessTable();
  v21[2] = sub_1C5BC8BE4();
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v31 = sub_1C5BCA484();
  v32 = 0;
  v33 = 1;
  v26 = v22;
  v27 = v3;
  v28 = v24;
  sub_1C5BCAA54();
  v16 = sub_1C5946E40(&qword_1EDA46558, &unk_1EC199E00, &qword_1C5BD87E0);
  sub_1C5BCA2C4();

  v17 = swift_getWitnessTable();
  v29 = v16;
  v30 = v17;
  v18 = swift_getWitnessTable();
  sub_1C593EDC0(v12, v9, v18);
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_1C593EDC0(v15, v9, v18);
  return (v19)(v15, v9);
}

uint64_t sub_1C5958B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5958C08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192998, &qword_1C5BD6120);
  _s22MiniPlayerMetadataViewV5TitleVMa(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_1C59E7054();
  sub_1C5BCA724();
  _s22MiniPlayerMetadataViewV8SubtitleVMa(255, v1, v2, v4);
  sub_1C5BCB804();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929A0, &qword_1C5BD6128);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929A8, &unk_1C5BD6130);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C59E70A8();
  swift_getWitnessTable();
  sub_1C5958FE8();
  swift_getWitnessTable();
  v5 = MEMORY[0x1E6980A18];
  sub_1C5924F54(&qword_1EDA46050, &qword_1EC1929A0, &qword_1C5BD6128, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46048, &qword_1EC1929A8, &unk_1C5BD6130, v5);
  swift_getWitnessTable();
  sub_1C5939F34();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0, &qword_1C5BDD720);
  swift_getOpaqueTypeConformance2();
  sub_1C59591C0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838, &qword_1C5BD5C80);
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5958FE8()
{
  result = qword_1EDA47CD8;
  if (!qword_1EDA47CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47CD8);
  }

  return result;
}

uint64_t sub_1C595903C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unint64_t sub_1C59591C0()
{
  result = qword_1EDA45D30;
  if (!qword_1EDA45D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0, &qword_1C5BDD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D30);
  }

  return result;
}

uint64_t static ViewProvider.with<A, B>(source:transform:)@<X0>(void (*a2)(void *)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v20 = a2;
  v21 = a5;
  v9 = type metadata accessor for NowPlayingViewProviderProxy(0, a3, a4, a7);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v23 = MEMORY[0x1E69E7CC0];
  v13 = sub_1C59595D8();
  swift_unknownObjectRetain();
  sub_1C5959644(&v23, a3, &type metadata for _ViewLookupTail, v13, v22);
  v20(v22);
  v14 = type metadata accessor for NowPlayingViewProviderProxy(0, a3, &type metadata for _ViewLookupTail, v13);
  (*(*(v14 - 8) + 8))(v22, v14);
  v15 = *(v9 + 44);
  v16 = sub_1C5950C90();
  v22[0] = &type metadata for NowPlayingLookupID;
  v22[1] = a4;
  v22[2] = v16;
  v22[3] = a7;
  v17 = type metadata accessor for ViewProvider(0, v22);
  (*(*(v17 - 8) + 16))(v21, &v12[v15], v17);
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1C5959454()
{
  result = qword_1EDA46620;
  if (!qword_1EDA46620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D30, &unk_1C5BEDD58);
    sub_1C5924F54(&qword_1EDA46290, &qword_1EC198D28, &qword_1C5BEDD50, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0, &unk_1C5BED4A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46620);
  }

  return result;
}

uint64_t sub_1C5959538(uint64_t a1)
{
  v8 = 1;
  v10 = "\b";
  v2 = *(a1 + 24);
  v3 = sub_1C5950C90();
  v4 = *(a1 + 32);
  v7[0] = &type metadata for NowPlayingLookupID;
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  result = type metadata accessor for ViewProvider(319, v7);
  if (v6 <= 0x3F)
  {
    v9 = 0;
    v11 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C59595D8()
{
  result = qword_1EDA4BBF8[0];
  if (!qword_1EDA4BBF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4BBF8);
  }

  return result;
}

uint64_t sub_1C5959644@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  v11 = *(type metadata accessor for NowPlayingViewProviderProxy(0, a3, a4, a5) + 44);
  v14[0] = &type metadata for NowPlayingLookupID;
  v14[1] = a4;
  v14[2] = sub_1C5950C90();
  v14[3] = a5;
  v12 = type metadata accessor for ViewProvider(0, v14);
  return (*(*(v12 - 8) + 32))(a6 + v11, a2, v12);
}

void sub_1C595973C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C595A0F8(319, &qword_1EDA45FE0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1C593377C(319, &qword_1EDA46718, &qword_1EC198CB8, &qword_1C5BED598);
      if (v3 <= 0x3F)
      {
        sub_1C593377C(319, &qword_1EDA467A8, &qword_1EC198CC0, &qword_1C5BED5A0);
        if (v4 <= 0x3F)
        {
          sub_1C595A0F8(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1C593377C(319, &qword_1EDA46728, &qword_1EC198CC8, qword_1C5BED5A8);
            if (v6 <= 0x3F)
            {
              sub_1C595A0F8(319, &qword_1EDA46AC0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
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

uint64_t NowPlayingViewProviderProxy.register<A>(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v41 = a1;
  v42 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  v44 = v38;
  v45 = v12;
  v46 = v14;
  v47 = v13;
  v15 = type metadata accessor for _ViewLookupNode(255, &v44);
  v40 = v15;
  v16 = sub_1C5950C90();
  v34 = v16;
  WitnessTable = swift_getWitnessTable();
  v44 = &type metadata for NowPlayingLookupID;
  v45 = v15;
  v46 = v16;
  v47 = WitnessTable;
  v17 = type metadata accessor for ViewProvider(0, &v44);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v35 = &v28 - v18;
  v19 = *a2;
  v30 = a2[1];
  v31 = v19;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v33 = *(a3 + 44);
  (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
  v20 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v32 = *(a3 + 16);
  *(v22 + 2) = v32;
  *(v22 + 3) = v12;
  v24 = v37;
  v23 = v38;
  *(v22 + 4) = v38;
  *(v22 + 5) = v13;
  *(v22 + 6) = v24;
  (*(v8 + 32))(&v22[v20], v29, a3);
  *&v22[v21] = v41;
  v43[0] = v31;
  v43[1] = v30;

  v44 = &type metadata for NowPlayingLookupID;
  v45 = v12;
  v46 = v34;
  v47 = v13;
  v25 = type metadata accessor for ViewProvider(0, &v44);
  v26 = v35;
  sub_1C5959D1C(sub_1C595DE70, v22, v43, v25, v23, v24, v35);

  return sub_1C5959644(v26, v32, v40, WitnessTable, v42);
}

uint64_t sub_1C5959BD0()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = (type metadata accessor for NowPlayingViewProviderProxy(0, v0[2], v1, v2) - 8);
  v4 = v0 + ((*(*v3 + 80) + 56) & ~*(*v3 + 80));
  swift_unknownObjectUnownedDestroy();
  v5 = &v4[v3[13]];

  v8[0] = &type metadata for NowPlayingLookupID;
  v8[1] = v1;
  v8[2] = sub_1C5950C90();
  v8[3] = v2;
  v6 = type metadata accessor for ViewProvider(0, v8);
  (*(*(v1 - 8) + 8))(&v5[*(v6 + 52)], v1);

  return swift_deallocObject();
}

uint64_t sub_1C5959D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v37 = a6;
  v40 = a1;
  v41 = a2;
  v43 = a7;
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 40);
  v44 = v15;
  v45 = v10;
  v46 = v16;
  v47 = v14;
  v39 = type metadata accessor for _ViewLookupNode(0, &v44);
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = (v35 - v17);
  v18 = *(a4 + 16);
  sub_1C595A084(v18, v18);
  v19 = *(v18 - 8);
  swift_allocObject();
  sub_1C5BCB074();
  (*(v19 + 16))(v20, a3, v18);
  sub_1C5BCB144();
  v35[0] = sub_1C5BCB0A4();

  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v10;
  v22 = *(a4 + 32);
  v21[4] = a5;
  v21[5] = v22;
  v23 = v14;
  v21[6] = v14;
  v24 = v37;
  v25 = v40;
  v26 = v41;
  v21[7] = v37;
  v21[8] = v25;
  v21[9] = v26;
  v27 = v35[1] + *(a4 + 52);
  v28 = v38;
  (*(v11 + 16))(v38, v27, v10);

  v29 = v36;
  sub_1C595A148(sub_1C595DF34, v21, v28, 1, a5, v10, v24, v23, v36);
  v30 = v39;
  WitnessTable = swift_getWitnessTable();
  v32 = v43;
  *v43 = v35[0];
  v44 = v18;
  v45 = v30;
  v46 = v22;
  v47 = WitnessTable;
  v33 = type metadata accessor for ViewProvider(0, &v44);
  return (*(v42 + 32))(&v32[*(v33 + 52)], v29, v30);
}

uint64_t sub_1C595A04C()
{

  return swift_deallocObject();
}

uint64_t sub_1C595A084(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

void sub_1C595A0F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C595A148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>)
{
  if (a4)
  {
    v17 = sub_1C595DE60;
  }

  else
  {
    v17 = sub_1C595E27C;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a7;
  *(v18 + 40) = a8;
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  *a9 = v17;
  a9[1] = v18;
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a7;
  v21[3] = a8;
  v19 = type metadata accessor for _ViewLookupNode(0, v21);
  return (*(*(a6 - 8) + 32))(a9 + *(v19 + 52), a3, a6);
}

uint64_t sub_1C595A254()
{

  return swift_deallocObject();
}

uint64_t sub_1C595A3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C595A40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v4 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0, &qword_1C5BF3390);
  v9 = *(a1 + 16);
  v60 = *(a1 + 24);
  v61 = v9;
  _s18ArtworkPlaceholderVMa(255, v9, v60, v10);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v11 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v62 = v11;
  v59 = v12;
  v63 = sub_1C5BC8BE4();
  v64 = v8;
  v13 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v65 = v13;
  v14 = sub_1C5BC8AB4();
  v69 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v55[-v15];
  v70 = v16;
  v17 = sub_1C5BC8AB4();
  v71 = *(v17 - 8);
  v72 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v55[-v20];
  v21 = sub_1C5BC8F34();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v55[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = *v2;
  v56 = *(v2 + 8);
  v28 = v2[2];
  v29 = *(v2 + 24);
  if (v29 == 1)
  {
    v30 = v2[2];
  }

  else
  {
    sub_1C5950E48(v2[2], 0);
    sub_1C5BCB4E4();
    v31 = v27;
    v32 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v27 = v31;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v33 = sub_1C5942458(v28, 0);
    (*(v22 + 8))(v24, v21, v33);
    LOBYTE(v30) = v98;
  }

  if (v30 != 3 && v30)
  {
    if (qword_1EC1906C8 != -1)
    {
      swift_once();
    }

    v34 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      swift_once();
    }

    v34 = qword_1EDA5DAE8;
  }

  v35 = __swift_project_value_buffer(v25, v34);
  sub_1C5948550(v35, v27);
  v36 = sub_1C5BCA484();
  sub_1C5BCAA54();
  v37 = sub_1C5BC85D4();
  *&v98 = v36;
  *(&v98 + 1) = v103;
  LOBYTE(v99) = v104;
  *(&v99 + 1) = v105;
  LOBYTE(v100[0]) = v106;
  *(v100 + 8) = v107;
  MEMORY[0x1EEE9AC00](v37);
  v58 = v27;
  v38 = v60;
  *&v55[-48] = v61;
  *&v55[-40] = v38;
  *&v55[-32] = v57;
  v55[-24] = v56;
  *&v55[-16] = v28;
  v55[-8] = v29;
  sub_1C5BCAA54();
  v39 = sub_1C594C97C();
  sub_1C5BCA2C4();

  v86 = v94;
  v87 = v95;
  v88 = v96;
  v89 = v97;
  v82 = v90;
  v83 = v91;
  v84 = v92;
  v85 = v93;
  v40 = swift_getWitnessTable();
  v80 = v39;
  v81 = v40;
  v41 = v65;
  v42 = swift_getWitnessTable();
  v43 = v66;
  sub_1C595BB1C(0xD000000000000012, 0x80000001C5BF81B0, v41);
  v100[2] = v86;
  v100[3] = v87;
  v100[4] = v88;
  v101 = v89;
  v98 = v82;
  v99 = v83;
  v100[0] = v84;
  v100[1] = v85;
  (*(*(v41 - 8) + 8))(&v98, v41);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  *&v90 = sub_1C5BCAE94();
  *(&v90 + 1) = v45;
  v46 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v78 = v42;
  v79 = v46;
  v47 = v70;
  v48 = swift_getWitnessTable();
  sub_1C594A23C();
  v49 = v67;
  sub_1C5BCA034();

  (*(v69 + 8))(v43, v47);
  sub_1C594A4A4(v58);
  v76 = v48;
  v77 = v46;
  v50 = v72;
  v51 = swift_getWitnessTable();
  v52 = v68;
  sub_1C593EDC0(v49, v50, v51);
  v53 = *(v71 + 8);
  v53(v49, v50);
  sub_1C593EDC0(v52, v50, v51);
  return (v53)(v52, v50);
}

uint64_t sub_1C595AD00(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C5BC7BB4();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_1C595ADF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    a1 = v69;
  }

  *&v69 = a1;
  sub_1C5937E88(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v15 = *(a1 + 17);

  if (v15)
  {
    v65 = 0uLL;
    *&v66 = 255;
    _s18ArtworkPlaceholderVMa(255, a5, a6, v16);
    *(&v66 + 1) = 0;
    v67 = 0;
    v68 = 0;
    swift_getTupleTypeMetadata2();
    sub_1C5BCAB74();
    swift_getWitnessTable();
    sub_1C5941600(&v65, &v69);
    v18 = v69;
    v19 = v70;
    v20 = v71;
    v21 = v72;
  }

  else
  {
    v22 = sub_1C595B4FC(0);
    v24 = v23;
    LOBYTE(v69) = v22;
    *(&v69 + 1) = v23;
    v26 = v25 & 1;
    LOBYTE(v70) = v25 & 1;
    v28 = _s18ArtworkPlaceholderVMa(0, a5, a6, v27);
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(&v69, v28, WitnessTable);
    sub_1C5942458(v24, v26);
    v30 = sub_1C595B4FC(1);
    v32 = v31;
    LOBYTE(v69) = v30;
    *(&v69 + 1) = v31;
    v34 = v33 & 1;
    LOBYTE(v70) = v33 & 1;
    sub_1C593EDC0(&v69, v28, WitnessTable);
    sub_1C5942458(v32, v34);
    v35 = v62;
    v36 = v63;
    v54 = v61;
    v55 = v62;
    v56 = v63;
    v37 = v59;
    v38 = v60;
    v51 = v58;
    v52 = v59;
    v53 = v60;
    v57[0] = &v54;
    v57[1] = &v51;
    sub_1C5950E48(v62, v63);
    sub_1C5950E48(v37, v38);
    v50[0] = v28;
    v50[1] = v28;
    v48 = WitnessTable;
    v49 = WitnessTable;
    sub_1C594226C(v57, 2uLL, v50);
    sub_1C5942458(v37, v38);
    sub_1C5942458(v35, v36);
    sub_1C5942458(v52, v53);
    sub_1C5942458(v55, v56);
    v39 = *(&v69 + 1);
    LOBYTE(v35) = v70;
    v40 = v71;
    LOBYTE(v37) = v72;
    v46[0] = v69;
    v46[1] = *(&v69 + 1);
    v46[2] = v70;
    v46[3] = BYTE8(v70);
    v46[4] = v71;
    v47 = v72;
    swift_getTupleTypeMetadata2();
    sub_1C5BCAB74();
    swift_getWitnessTable();
    sub_1C5941600(v46, &v65);
    sub_1C5942458(v39, v35);
    sub_1C5942458(v40, v37);
    v18 = v65;
    v19 = v66;
    v20 = v67;
    v21 = v68;
  }

  v44 = v18;
  v45 = v19;
  v69 = v18;
  v70 = v19;
  v71 = v20;
  v72 = v21;
  _s18ArtworkPlaceholderVMa(255, a5, a6, v17);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v41 = sub_1C5BCB804();
  v64 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  sub_1C593EDC0(&v69, v41, v42);
  return sub_1C595BAC4(v44, *(&v44 + 1), v45, *(&v45 + 1), v20, v21);
}

uint64_t NowPlayingViewProviderProxy.register<A>(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[0] = a3;
  v18[1] = a4;
  v19 = a1;
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = a2[3];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = a2[4];
  v21 = AssociatedTypeWitness;
  v22 = v7;
  v23 = AssociatedConformanceWitness;
  v24 = v9;
  v10 = type metadata accessor for _ViewLookupNode(255, &v21);
  v11 = sub_1C5950C90();
  WitnessTable = swift_getWitnessTable();
  v21 = &type metadata for NowPlayingLookupID;
  v22 = v10;
  v23 = v11;
  v24 = WitnessTable;
  v13 = type metadata accessor for ViewProvider(0, &v21);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (v18 - v14);
  swift_unknownObjectUnownedLoadStrong();
  v21 = &type metadata for NowPlayingLookupID;
  v22 = v7;
  v23 = v11;
  v24 = v9;
  v16 = type metadata accessor for ViewProvider(0, &v21);
  sub_1C595B618(v19, v16, v15);
  return sub_1C5959644(v15, a2[2], v10, WitnessTable, v20);
}

uint64_t sub_1C595B564(uint64_t *a1)
{
  v1 = a1[3];
  v4 = *a1;
  v3 = *(a1 + 1);
  swift_getAssociatedTypeWitness();
  v5 = v3;
  v6 = v1;
  type metadata accessor for _ViewLookupNode.OutputGroup(255, &v4);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  return swift_getWitnessTable();
}

uint64_t sub_1C595B618@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v46 = a1;
  v50 = a5;
  v6 = *(a2 + 24);
  v37 = v6;
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v47 = *(v8 + 32);
  v51 = v9;
  v52 = v10;
  v11 = v9;
  v39 = v10;
  v53 = v47;
  v54 = v12;
  v41 = v12;
  v42 = type metadata accessor for ViewProvider(0, &v51);
  v13 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v15 = v35 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(a2 + 40);
  v51 = AssociatedTypeWitness;
  v52 = v6;
  v53 = AssociatedConformanceWitness;
  v54 = v17;
  v18 = type metadata accessor for _ViewLookupNode(0, &v51);
  v45 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v38 = (v35 - v19);
  v20 = v46;
  v36 = v11;
  v40 = sub_1C5BCB0A4();
  v21 = v15;
  v22 = v42;
  (*(v13 + 16))(v15, v20, v42);
  v23 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v24 = swift_allocObject();
  v25 = v37;
  *(v24 + 2) = v11;
  *(v24 + 3) = v25;
  v26 = v47;
  *(v24 + 4) = v39;
  *(v24 + 5) = v26;
  v27 = v41;
  *(v24 + 6) = v17;
  *(v24 + 7) = v27;
  (*(v13 + 32))(&v24[v23], v21, v22);
  v28 = *(a2 + 52);
  v29 = v48;
  (*(v49 + 16))(v48, v35[1] + v28, v25);
  v30 = v38;
  sub_1C595A148(sub_1C595E304, v24, v29, 0, v44, v25, AssociatedConformanceWitness, v17, v38);
  WitnessTable = swift_getWitnessTable();
  v32 = v50;
  *v50 = v40;
  v51 = v36;
  v52 = v18;
  v53 = v26;
  v54 = WitnessTable;
  v33 = type metadata accessor for ViewProvider(0, &v51);
  return (*(v45 + 32))(v32 + *(v33 + 52), v30, v18);
}

uint64_t sub_1C595B9C4()
{
  v1 = *(v0 + 56);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v5 = v7;
  v8 = v1;
  v2 = (type metadata accessor for ViewProvider(0, &v6) - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);

  (*(*(v5 - 8) + 8))(v0 + v3 + v2[15]);
  return swift_deallocObject();
}

double sub_1C595BAC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 != -1)
  {
    sub_1C5942458(a2, a3 & 1);

    return sub_1C5942458(a5, a6 & 1);
  }

  return result;
}

uint64_t sub_1C595BB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() mainBundle];
  sub_1C5949F2C();

  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](a1, a2);
  sub_1C5BCA164();
}

uint64_t sub_1C595BC00@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NowPlayingRouteObserver(0);
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C595BC40(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4();
  }
}

uint64_t sub_1C595BC74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a1;
  v28 = a3;
  v5 = a2[5];
  v25 = a2[3];
  v26 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = sub_1C5BCB804();
  v27 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  v24[0] = v3;
  v30 = *v3;
  sub_1C5BCB144();
  swift_getWitnessTable();
  sub_1C5BCB464();
  if (v32)
  {
    (*(v7 + 56))(v15, 1, 1, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  }

  else
  {
    (*(v26 + 48))(v31, v25, v26);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C593EDC0(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
    v20 = *(v7 + 8);
    v20(v9, AssociatedTypeWitness);
    sub_1C593EDC0(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
    v20(v12, AssociatedTypeWitness);
    (*(v7 + 32))(v15, v9, AssociatedTypeWitness);
    (*(v7 + 56))(v15, 0, 1, AssociatedTypeWitness);
  }

  sub_1C5941600(v15, v18);
  v21 = *(v27 + 8);
  v21(v15, v13);
  v29 = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v18, v13, WitnessTable);
  return (v21)(v18, v13);
}

uint64_t _ViewLookupNode.view(atIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v4 = *(a2 + 40);
  v24 = *(a2 + 16);
  v20 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v25 = v20;
  v26 = v4;
  type metadata accessor for _ViewLookupNode.OutputGroup(255, &v24);
  swift_getTupleTypeMetadata2();
  v5 = sub_1C5BCAB74();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = sub_1C5BCA944();
  *&v20 = v8;
  WitnessTable = swift_getWitnessTable();
  v24 = v5;
  *&v25 = v8;
  *(&v25 + 1) = WitnessTable;
  v26 = MEMORY[0x1E6981A58];
  sub_1C5BC93E4();
  v10 = sub_1C5BCA584();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  _ViewLookupNode.storage.getter(a2, v7);
  *(swift_allocObject() + 16) = v21;
  sub_1C5BCA564();
  v23 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, v17);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_1C593EDC0(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t _ViewLookupNode.storage.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = *(a1 + 40);
  v37 = *(a1 + 16);
  v33 = *(a1 + 24);
  v38 = v33;
  v39 = v3;
  v4 = type metadata accessor for _ViewLookupNode.OutputGroup(0, &v37);
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v25 - v7;
  v8 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v10 = v26;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  *&v33 = &v25 - v15;
  (*(v3 + 40))(v8, v3, v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C593EDC0(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  v28 = *(v10 + 8);
  v16 = v28(v12, AssociatedTypeWitness);
  v17 = v29;
  (*v2)(v16);
  v18 = v4;
  WitnessTable = swift_getWitnessTable();
  v20 = v30;
  sub_1C593EDC0(v17, v18, WitnessTable);
  v21 = v31;
  v22 = *(v31 + 8);
  v22(v17, v18);
  (*(v26 + 16))(v12, v33, AssociatedTypeWitness);
  v37 = v12;
  (*(v21 + 16))(v17, v20, v18);
  *&v38 = v17;
  v36[0] = AssociatedTypeWitness;
  v36[1] = v18;
  v34 = AssociatedConformanceWitness;
  v35 = WitnessTable;
  sub_1C594226C(&v37, 2uLL, v36);
  v22(v20, v18);
  v23 = v28;
  v28(v33, AssociatedTypeWitness);
  v22(v17, v18);
  return v23(v12, AssociatedTypeWitness);
}

uint64_t sub_1C595C690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v124 - v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192998, &qword_1C5BD6120);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v167 = a1;
  v7 = _s22MiniPlayerMetadataViewV5TitleVMa(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C59E7054();
  *&v175 = v7;
  *(&v175 + 1) = &type metadata for NowPlayingMiniPlayerPosition;
  *&v176 = WitnessTable;
  *(&v176 + 1) = v9;
  sub_1C5BCA724();
  v171 = v5;
  v172 = v4;
  _s22MiniPlayerMetadataViewV8SubtitleVMa(255, v4, v5, v10);
  sub_1C5BCB804();
  swift_getTupleTypeMetadata3();
  v11 = sub_1C5BCAB74();
  v144 = swift_getWitnessTable();
  v145 = v11;
  v12 = sub_1C5BCA7D4();
  v13 = sub_1C5BC8AB4();
  v16 = type metadata accessor for MCUINamespace(0, v13, v14, v15);
  v148 = *(v16 - 8);
  v149 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v124 - v17;
  v20 = type metadata accessor for MCUINamespace(0, v12, v18, v19);
  v142 = *(v20 - 8);
  v143 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v141 = &v124 - v21;
  v137 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v124 - v23;
  v139 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v124 - v25;
  v26 = sub_1C5BC8AB4();
  v153 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v151 = &v124 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929A0, &qword_1C5BD6128);
  v28 = sub_1C5BC8AB4();
  v152 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v150 = &v124 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929A8, &unk_1C5BD6130);
  v30 = sub_1C5BC8AB4();
  v165 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v170 = &v124 - v31;
  v32 = swift_getWitnessTable();
  v33 = sub_1C59E70A8();
  v133 = v32;
  v189 = v32;
  v190 = v33;
  v147 = v13;
  v34 = swift_getWitnessTable();
  v35 = sub_1C5958FE8();
  v134 = v34;
  v187 = v34;
  v188 = v35;
  v155 = v26;
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x1E6980A18];
  v38 = sub_1C5924F54(&qword_1EDA46050, &qword_1EC1929A0, &qword_1C5BD6128, MEMORY[0x1E6980A18]);
  v138 = v36;
  v185 = v36;
  v186 = v38;
  v154 = v28;
  v39 = swift_getWitnessTable();
  v40 = sub_1C5924F54(&qword_1EDA46048, &qword_1EC1929A8, &unk_1C5BD6130, v37);
  v140 = v39;
  v183 = v39;
  v184 = v40;
  v41 = swift_getWitnessTable();
  v42 = sub_1C5939F34();
  *&v175 = v30;
  *(&v175 + 1) = &type metadata for NowPlayingViewModel.PlayerStyle;
  *&v176 = v41;
  *(&v176 + 1) = v42;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v162 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v161 = &v124 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0, &qword_1C5BDD720);
  v166 = v30;
  *&v175 = v30;
  *(&v175 + 1) = &type metadata for NowPlayingViewModel.PlayerStyle;
  v156 = v42;
  v157 = v41;
  *&v176 = v41;
  *(&v176 + 1) = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_1C59591C0();
  *&v175 = OpaqueTypeMetadata2;
  *(&v175 + 1) = v45;
  *&v176 = OpaqueTypeConformance2;
  *(&v176 + 1) = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v130 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v163 = OpaqueTypeMetadata2;
  v164 = &v124 - v49;
  *&v175 = OpaqueTypeMetadata2;
  *(&v175 + 1) = v45;
  v159 = OpaqueTypeConformance2;
  v160 = v45;
  *&v176 = OpaqueTypeConformance2;
  *(&v176 + 1) = v47;
  v158 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  v131 = v48;
  *&v175 = v48;
  *(&v175 + 1) = v169;
  v126 = v51;
  v127 = v50;
  *&v176 = v50;
  *(&v176 + 1) = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v128 = *(v52 - 8);
  v129 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v124 = &v124 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v125 = &v124 - v55;
  v56 = sub_1C5BC8F34();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v124 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v173 + 112);
  if (*(v173 + 120) == 1)
  {
    v61 = *(v173 + 112);
  }

  else
  {

    sub_1C5BCB4E4();
    v62 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v63 = sub_1C5942458(v60, 0);
    (*(v57 + 8))(v59, v56, v63);
    v61 = v175;
  }

  if (v61 == 3)
  {
    LOBYTE(v61) = 0;
  }

  LOBYTE(v175) = v61;
  sub_1C595D950(&v175, &type metadata for NowPlayingMetadataViewSpecs.MiniPlayer, &off_1F451C840);
  v64 = sub_1C5BC9144();
  MEMORY[0x1EEE9AC00](v64);
  v65 = v171;
  *(&v124 - 4) = v172;
  *(&v124 - 3) = v65;
  *(&v124 - 2) = v173;
  *(&v124 - 1) = v191;
  v66 = v135;
  sub_1C5BCA7C4();
  v67 = v141;
  v68 = v133;
  View.mcui.getter(v12, v141);
  (*(v137 + 8))(v66, v12);
  v69 = v136;
  v70 = v143;
  v71 = MCUINamespace<A>.coordinatedMarquees()(v143, v68);
  (*(v142 + 8))(v67, v70, v71);
  v73 = v146;
  v72 = v147;
  v74 = v134;
  View.mcui.getter(v147, v146);
  (*(v139 + 8))(v69, v72);
  v75 = v151;
  v76 = v149;
  v77 = MCUINamespace<A>.marqueeFeathering(_:_:)(1, v191[7], 0, v149, v74);
  (*(v148 + 8))(v73, v76, v77);
  swift_getKeyPath("؈\\&");
  if (_UISolariumEnabled())
  {
    goto LABEL_12;
  }

  v78 = *(v173 + 112);
  if (*(v173 + 120) == 1)
  {
    v79 = *(v173 + 112);
    if (v79 == 3)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v80 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v81 = sub_1C5942458(v78, 0);
    (*(v57 + 8))(v59, v56, v81);
    v79 = v175;
    if (v175 == 3)
    {
LABEL_12:
      v82 = v56;
      v83 = sub_1C595E4FC(&unk_1F45138A8);
      goto LABEL_13;
    }
  }

  if (v79)
  {
    goto LABEL_12;
  }

  v82 = v56;
  v83 = MEMORY[0x1E69E7CD0];
LABEL_13:
  *&v175 = v83;
  v84 = v150;
  v85 = v155;
  sub_1C5BC9DF4();

  (*(v153 + 8))(v75, v85);
  swift_getKeyPath(byte_1C5BD6140);
  *&v175 = 1;
  v86 = v154;
  sub_1C5BC9DF4();

  (*(v152 + 8))(v84, v86);
  v87 = *(v173 + 48);
  v88 = *(v173 + 56);

  if ((v88 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v89 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v57 + 8))(v59, v82);
    v87 = v175;
  }

  swift_getKeyPath(asc_1C5BD5D60);
  *&v175 = v87;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v90 = *(v87 + 17);

  v174[0] = v90;
  v91 = v167;
  v92 = *(v167 - 8);
  v154 = *(v92 + 16);
  v155 = v92 + 16;
  v93 = v173;
  v154(&v175, v173, v167);
  v94 = swift_allocObject();
  v96 = v171;
  v95 = v172;
  *(v94 + 16) = v172;
  *(v94 + 24) = v96;
  v97 = v182[0];
  *(v94 + 128) = v181;
  *(v94 + 144) = v97;
  *(v94 + 153) = *(v182 + 9);
  v98 = v178;
  *(v94 + 64) = v177;
  *(v94 + 80) = v98;
  v99 = v180;
  *(v94 + 96) = v179;
  *(v94 + 112) = v99;
  v100 = v176;
  *(v94 + 32) = v175;
  *(v94 + 48) = v100;
  v101 = v161;
  v102 = v166;
  v103 = v170;
  sub_1C5BCA344();

  (*(v165 + 8))(v103, v102);
  sub_1C59458F8(v174);
  v154(&v175, v93, v91);
  v104 = swift_allocObject();
  *(v104 + 16) = v95;
  *(v104 + 24) = v96;
  v105 = v182[0];
  *(v104 + 128) = v181;
  *(v104 + 144) = v105;
  *(v104 + 153) = *(v182 + 9);
  v106 = v178;
  *(v104 + 64) = v177;
  *(v104 + 80) = v106;
  v107 = v180;
  *(v104 + 96) = v179;
  *(v104 + 112) = v107;
  v108 = v176;
  *(v104 + 32) = v175;
  *(v104 + 48) = v108;
  v109 = v163;
  v110 = v164;
  sub_1C5BCA334();

  sub_1C5924EF4(v174, &qword_1EC1929B0, &qword_1C5BDD720);
  (*(v162 + 8))(v101, v109);
  v111 = *MEMORY[0x1E697E6E8];
  v112 = sub_1C5BC89B4();
  v113 = v168;
  (*(*(v112 - 8) + 104))(v168, v111, v112);
  sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v115 = v124;
    v116 = v131;
    v117 = v169;
    v119 = v126;
    v118 = v127;
    sub_1C5BC9F54();
    sub_1C595E8B8(v191);
    sub_1C5924EF4(v113, &qword_1EC192838, &qword_1C5BD5C80);
    (*(v130 + 8))(v110, v116);
    *&v175 = v116;
    *(&v175 + 1) = v117;
    *&v176 = v118;
    *(&v176 + 1) = v119;
    v120 = swift_getOpaqueTypeConformance2();
    v121 = v125;
    v122 = v129;
    sub_1C593EDC0(v115, v129, v120);
    v123 = *(v128 + 8);
    v123(v115, v122);
    sub_1C593EDC0(v121, v122, v120);
    return (v123)(v121, v122);
  }

  else
  {
    __break(1u);
  }

  return result;
}