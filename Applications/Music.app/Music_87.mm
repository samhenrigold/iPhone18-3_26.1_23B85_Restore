unint64_t sub_10099E7B4()
{
  result = qword_1011AFD80;
  if (!qword_1011AFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFD80);
  }

  return result;
}

unint64_t sub_10099E80C()
{
  result = qword_1011AAE80;
  if (!qword_1011AAE80)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAE80);
  }

  return result;
}

uint64_t sub_10099E864(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_10099E880(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10099E894(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10099E8D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10099E91C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t Gliss.Direction.init(playerDirection:layoutDirection:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    v3 = a3 == 1;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 + 2) < 2)
  {
    v3 = a3 != 1;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

unint64_t MPCPlayerDirection.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x64726177726F66;
      goto LABEL_16;
    }

    if (a1 == 5)
    {
      v1 = 0xED0000797261646ELL;
      v2 = 0x756F426575657571;
      goto LABEL_16;
    }

    if (a1 != 2)
    {
LABEL_13:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    v2 = 0x4A64726177726F66;
LABEL_11:
    v1 = 0xEB00000000706D75;
    goto LABEL_16;
  }

  if (a1 == -2)
  {
    v2 = 0x4A65737265766572;
    goto LABEL_11;
  }

  if (a1 == -1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x65737265766572;
    goto LABEL_16;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  v1 = 0xEA00000000007972;
  v2 = 0x616E6F6974617473;
LABEL_16:
  _StringGuts.grow(_:)(21);

  v3._countAndFlagsBits = v2;
  v3._object = v1;
  String.append(_:)(v3);

  return 0xD000000000000013;
}

uint64_t sub_10099EB1C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219B98);
  sub_1000060E4(v0, qword_101219B98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10099EB9C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v34 = a2;
  v37 = a1;
  v38 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin();
  v35 = &v32 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - v14;
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v11 - 8);
  v19 = __chkstk_darwin();
  v21 = &v32 - v20;
  (*(v22 + 16))(v17, v37, a4, v19);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v25 = v38;
    v24(v15, 0, 1, v11);
    (*(v18 + 32))(v21, v15, v11);
    v26 = v35;
    (*(a5 + 32))(v21, v34, a3, a5);
    v27 = AssociatedTypeWitness;
    v28 = *(AssociatedTypeWitness - 8);
    if ((*(v28 + 48))(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v18 + 8))(v21, v11);
      result = (*(v32 + 8))(v26, v33);
      *v25 = 0u;
      v25[1] = 0u;
    }

    else
    {
      *(v25 + 3) = v27;
      v31 = sub_10001C8B8(v25);
      (*(v28 + 32))(v31, v26, v27);
      return (*(v18 + 8))(v21, v11);
    }
  }

  else
  {
    v24(v15, 1, 1, v11);
    result = (*(v13 + 8))(v15, v12);
    v30 = v38;
    *v38 = 0u;
    v30[1] = 0u;
  }

  return result;
}

double sub_10099EFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v10 = v8;
    v11 = *(a3 + 40);

    v11(v10, a2, a3);
  }

  return result;
}

double sub_10099F0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v10 = v8;
    v11 = *(a3 + 48);

    v11(v10, a2, a3);
  }

  return result;
}

uint64_t sub_10099F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v27 - v11;
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = __chkstk_darwin();
  v18 = &v27 - v17;
  (*(v19 + 16))(v14, a1, a4, v16);
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v21(v12, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v18, v12, AssociatedTypeWitness);
    if (v28)
    {
      v22 = v29;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
      v25 = swift_dynamicCastClass();
    }

    else
    {
      v25 = 0;
      v22 = v29;
    }

    (*(a5 + 56))(v18, v25, v22, a5);
    return (*(v15 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v21(v12, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_10099F4C0(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_10099F554(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return;
      }
    }
  }
}

id Gliss.Coordinator.__allocating_init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = sub_1009A9124(a1, a2, a3, a4);

  sub_100020438(*(a3 + 8), *(a3 + 16));
  sub_100020438(*(a3 + 24), *(a3 + 32));
  sub_100020438(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1009A9124(a1, a2, a3, a4);

  sub_100020438(*(a3 + 8), *(a3 + 16));
  sub_100020438(*(a3 + 24), *(a3 + 32));
  sub_100020438(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_10099F7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_10099F1B4(a2, 0, ObjectType, AssociatedTypeWitness, v5);
}

double Gliss.Coordinator.dataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*Gliss.Coordinator.dataSource.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = *((swift_isaMask & *v1) + 0x60);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10099FA2C;
}

void sub_10099FA2C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t Gliss.Coordinator.gestureConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 6);
  v11 = v4;
  sub_100030444(v5, v6);
  sub_100030444(v7, v8);
  result = sub_100030444(v9, v10);
  *a1 = v11;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t Gliss.Coordinator.gestureConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v20 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v7 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v14 = *(v7 + 4);
  v15 = *(v7 + 3);
  v16 = *(v7 + 6);
  v17 = *(v7 + 5);
  v11 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v11;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 6) = *(a1 + 48);
  v12 = v3;
  sub_100030444(v4, v5);
  sub_100030444(v6, v18);
  sub_100030444(v20, v19);

  sub_100020438(v9, v10);
  sub_100020438(v15, v14);
  sub_100020438(v17, v16);
  sub_1009A5704();

  sub_100020438(v4, v5);
  sub_100020438(v6, v18);
  return sub_100020438(v20, v19);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10099FD44;
}

void sub_10099FD44(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1009A5704();
  }
}

double Gliss.Coordinator.GestureConfiguration.init(hostingView:simultaneousGestureRecognizerAllowance:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a6 = a1;
  a6[1] = sub_1009A94BC;
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t sub_10099FE0C(uint64_t a1, double (*a2)(uint64_t))
{
  sub_10010FC20(&qword_1011AB028, &qword_100EF3BC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBC6B0;
  *(v4 + 32) = a2(a1);
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  return v4;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRects:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.getter()
{
  v1 = *(v0 + 8);
  sub_100030444(v1, *(v0 + 16));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  sub_100030444(v1, *(v0 + 32));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  sub_100030444(v1, *(v0 + 48));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Gliss.Coordinator.addCoordinatedView<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *((swift_isaMask & *v3) + 0x70);
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10089CDE8(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_10089CDE8((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = v8;
  v12[5] = a3;
  *(v3 + v6) = v7;
  return swift_endAccess();
}

void Gliss.Coordinator.removeCoordinatedView<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *((swift_isaMask & *v2) + 0x70);
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = 32;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v4 + v7);
      sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
      v9 = v8;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        break;
      }

      ++v6;
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    v11 = sub_1008B4A9C(v6);
    swift_endAccess();
    if (!swift_dynamicCastUnknownClass())
    {
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t Gliss.Coordinator.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15[-v8];
  v10 = *(v1 + *((v4 & v3) + 0x88));
  if (v10)
  {
    v11 = *(*v10 + 128);
    swift_beginAccess();
    if (*(v10 + v11) != 6)
    {
      v12 = *(*v10 + 112);
      swift_beginAccess();
      (*(v7 + 16))(v9, v10 + v12, v6);
      v13 = *(AssociatedTypeWitness - 8);
      if ((*(v13 + 48))(v9, 1, AssociatedTypeWitness) != 1)
      {
        return (*(v13 + 32))(a1, v9, AssociatedTypeWitness);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return sub_1009A04AC(a1);
}

uint64_t sub_1009A04AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t sub_1009A0590(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_1009A067C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1009A076C(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void Gliss.Coordinator.setItem(_:animationDirection:animated:)(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = -64;
  }

  else
  {
    v3 = -2;
  }

  Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, 0, 0, v3);

  sub_1009A94C4(0, 0, v3);
}

double Gliss.Coordinator.setItem(_:animationDirection:animation:)(void *a1, unsigned int a2, void *a3, uint64_t a4, unsigned int a5)
{
  v112 = a5;
  v114 = a4;
  v117 = a3;
  v115 = a2;
  v7 = *((swift_isaMask & *v5) + 0x58);
  v8 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v11;
  __chkstk_darwin();
  v14 = &v101 - v13;
  type metadata accessor for Optional();
  v15 = __chkstk_darwin();
  v17 = &v101 - v16;
  v108 = *(v10 + 56);
  v109 = v10 + 56;
  v108(&v101 - v16, 1, 1, AssociatedTypeWitness, v15);
  v110 = v17;
  sub_1009A076C(v17);
  v118 = v5;
  Gliss.Coordinator.item.getter(v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v113 = v10;
  v20 = *(v10 + 8);
  v116 = v14;
  v20(v14, AssociatedTypeWitness);
  if ((v19 & 1) == 0)
  {
    v102 = AssociatedConformanceWitness;
    v106 = v8;
    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_1000060E4(v22, qword_101219B98);
    v25 = v113 + 16;
    v24 = *(v113 + 16);
    v24(v12, a1, AssociatedTypeWitness);
    v119 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v107 = v7;
    v105 = a1;
    v104 = v25;
    v103 = v24;
    if (v28)
    {
      v29 = AssociatedTypeWitness;
      v30 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v122[0] = v101;
      *v30 = 136446210;
      v24(v116, v12, v29);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      v20(v12, v29);
      v34 = sub_100010678(v31, v33, v122);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to set item=%{public}s", v30, 0xCu);
      sub_10000959C(v101);

      AssociatedTypeWitness = v29;
    }

    else
    {

      v20(v12, AssociatedTypeWitness);
    }

    v35 = v118;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v112;
    v40 = v114;
    if (v38)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v122[0] = v42;
      *v41 = 136446210;
      Gliss.Coordinator.item.getter(v116);
      v43 = String.init<A>(describing:)();
      v45 = sub_100010678(v43, v44, v122);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "  Current Item=%{public}s", v41, 0xCu);
      sub_10000959C(v42);
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v122[0] = v49;
      *v48 = 136446210;
      LOBYTE(v121[0]) = v115;
      sub_10010FC20(&qword_1011AAE98, &qword_100EF3A48);
      v50 = String.init<A>(describing:)();
      v52 = sub_100010678(v50, v51, v122);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "  Direction=%{public}s", v48, 0xCu);
      sub_10000959C(v49);
    }

    v53 = v117;
    sub_1009A94EC(v117, v40, v39);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    sub_1009A94C4(v53, v40, v39);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v121[0] = v57;
      *v56 = 136446210;
      v122[0] = v53;
      v122[1] = v40;
      v123 = v39;
      sub_1009A94EC(v53, v40, v39);
      sub_10010FC20(&qword_1011AAE90, &qword_100EF3A40);
      v58 = String.init<A>(describing:)();
      v60 = sub_100010678(v58, v59, v121);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "  Animation=%{public}s", v56, 0xCu);
      sub_10000959C(v57);
    }

    v61 = v105;
    v62 = *(v35 + *((swift_isaMask & *v35) + 0x88));
    if (v62 && (v63 = *(*v62 + 128), swift_beginAccess(), *(v62 + v63)))
    {

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v122[0] = v118;
        *v66 = 136446210;
        v120 = v62;
        type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, v102, v67);
        swift_getWitnessTable();
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = sub_100010678(v68, v69, v122);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "  Ongoing Transition=%{public}s", v66, 0xCu);
        sub_10000959C(v118);
      }

      v71 = v103;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "  ⏳ Queueing item until ongoing transition completes", v74, 2u);
      }

      v75 = v110;
      v71(v110, v61, AssociatedTypeWitness);
      (v108)(v75, 0, 1, AssociatedTypeWitness);
      sub_1009A076C(v75);
      v76 = v116;
      v71(v116, v61, AssociatedTypeWitness);
      v77 = v113;
      v78 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v79 = (v78 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v78 + v111 + 23) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v107;
      *(v81 + 16) = v106;
      *(v81 + 24) = v82;
      (*(v77 + 32))(v81 + v78, v76, AssociatedTypeWitness);
      v83 = v81 + v79;
      *v83 = v35;
      *(v83 + 8) = v115;
      v84 = v81 + v80;
      v85 = v117;
      v86 = v114;
      *v84 = v117;
      *(v84 + 8) = v86;
      *(v84 + 16) = v39;
      v87 = v35;
      sub_1009A94EC(v85, v86, v39);
      Gliss.Transition.addCompletion(_:)(sub_1009A9514, v81);
    }

    else
    {
      v88 = sub_1009A24E8(v61, v115);
      v89 = v117;
      if (v39 >= 0xFEu)
      {
        v90 = 0;
      }

      else
      {
        v90 = v117;
      }

      if (v39 >= 0xFEu)
      {
        v91 = 0;
      }

      else
      {
        v91 = v40;
      }

      if (v39 >= 0xFEu)
      {
        v92 = -64;
      }

      else
      {
        v92 = v39;
      }

      v93 = v88 + *(*v88 + 136);
      v94 = *v93;
      v95 = *(v93 + 1);
      *v93 = v90;
      *(v93 + 1) = v91;
      v96 = v93[16];
      v93[16] = v92;
      sub_1009A94EC(v89, v40, v39);
      sub_1009A94D8(v94, v95, v96);
      sub_1009A3204(v88);
      v97 = v116;
      v103(v116, v61, AssociatedTypeWitness);
      sub_1009A0590(v97);
      v98 = *((swift_isaMask & *v35) + 0x70);
      swift_beginAccess();
      v99 = *(v35 + v98);
      __chkstk_darwin();
      v100 = v107;
      *(&v101 - 4) = v106;
      *(&v101 - 3) = v100;
      *(&v101 - 2) = v61;
      *(&v101 - 1) = v88;

      sub_10099F4C0(sub_1009AA004, (&v101 - 6), v99);

      sub_1009A4460(v88, v39 < 0xFEu);
    }
  }

  return result;
}

double sub_1009A1460(uint64_t *a1, uint64_t a2, char *a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v66 = a8;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v82 = a4;
  v64 = *a1;
  v9 = *(v64 + 80);
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v12 = &v63 - v11;
  v83 = v10;
  v75 = *(v10 - 8);
  __chkstk_darwin();
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v63 - v14;
  __chkstk_darwin();
  v17 = &v63 - v16;
  __chkstk_darwin();
  v80 = &v63 - v18;
  v19 = *(v9 - 8);
  __chkstk_darwin();
  v74 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v63 - v21;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v77 = v12;
  v23 = type metadata accessor for Logger();
  v24 = sub_1000060E4(v23, qword_101219B98);
  v25 = *(v19 + 16);
  v78 = a3;
  v25(v22, a3, v9);
  v73 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v79 = v19;
  v71 = v15;
  v76 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v84[0] = v30;
    *v29 = 136446210;
    v25(v74, v22, v9);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v70 = *(v79 + 8);
    v70(v22, v9);
    v34 = sub_100010678(v31, v33, v84);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "⌛️ Dequeuing item=%{public}s", v29, 0xCu);
    sub_10000959C(v30);
    v19 = v79;

    v17 = v76;
  }

  else
  {

    v70 = *(v19 + 8);
    v70(v22, v9);
  }

  v35 = v80;
  sub_1009A067C(v80);
  v25(v17, v78, v9);
  (*(v19 + 56))(v17, 0, 1, v9);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v75 + 16);
  v38 = v19;
  v39 = v75;
  v40 = v77;
  v41 = v83;
  v37(v77, v35, v83);
  v37(&v40[v36], v17, v41);
  v42 = *(v38 + 48);
  if (v42(v40, 1, v9) == 1)
  {
    v43 = *(v39 + 8);
    v44 = v17;
    v45 = v83;
    v43(v44, v83);
    v43(v35, v45);
    if (v42(&v40[v36], 1, v9) == 1)
    {
      v43(v40, v83);
      return Gliss.Coordinator.setItem(_:animationDirection:animation:)(v78, v67, v68, v69, v66);
    }

    goto LABEL_11;
  }

  v46 = v71;
  v37(v71, v40, v83);
  if (v42(&v40[v36], 1, v9) == 1)
  {
    v47 = *(v39 + 8);
    v48 = v83;
    v47(v76, v83);
    v47(v80, v48);
    v70(v46, v9);
LABEL_11:
    (*(v72 + 8))(v40, TupleTypeMetadata2);
    goto LABEL_12;
  }

  v58 = v74;
  (*(v79 + 32))(v74, &v40[v36], v9);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = v70;
  v70(v58, v9);
  v61 = *(v39 + 8);
  v62 = v83;
  v61(v76, v83);
  v61(v80, v62);
  v60(v46, v9);
  v61(v40, v62);
  if (v59)
  {
    return Gliss.Coordinator.setItem(_:animationDirection:animation:)(v78, v67, v68, v69, v66);
  }

LABEL_12:
  v49 = v82;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v84[0] = v53;
    *v52 = 136446210;
    sub_1009A067C(v65);
    v54 = String.init<A>(describing:)();
    v56 = sub_100010678(v54, v55, v84);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "  ⌛️❌ Item no longer matches queued item=%{public}s", v52, 0xCu);
    sub_10000959C(v53);
  }

  return result;
}

void sub_1009A1C60(SEL *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 32);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      v7 += 2;
      [v8 *a1];
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

double sub_1009A1D1C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10010FC20(&qword_1011AB010, &qword_100EF3BA8);
  __chkstk_darwin();
  v8 = &v30[-v7];
  sub_10010FC20(&qword_1011AB018, &unk_100EF3BB0);
  __chkstk_darwin();
  v35 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v30[-v10];
  v13 = __chkstk_darwin();
  v14 = &v30[-v12];
  if (a1)
  {
    v32 = v5;
    v15 = v3;
    v16 = *(v3 + 16);
    v34 = a1;
    v16(&v30[-v12], a1 + direct field offset for Gliss.Transition.id, v2, v13);
    v33 = v15;
    v17 = *(v15 + 56);
    v18 = 1;
    v17(v14, 0, 1, v2);
    v19 = *(v36 + *((swift_isaMask & *v36) + 0x88));
    if (v19)
    {
      (v16)(v11, v19 + direct field offset for Gliss.Transition.id, v2);
      v18 = 0;
    }

    v17(v11, v18, 1, v2);
    v20 = *(v6 + 48);
    sub_1009A9C3C(v14, v8);
    sub_1009A9C3C(v11, &v8[v20]);
    v21 = v33;
    v22 = *(v33 + 48);
    if (v22(v8, 1, v2) == 1)
    {
      v23 = v34;

      sub_1000095E8(v11, &qword_1011AB018, &unk_100EF3BB0);
      sub_1000095E8(v14, &qword_1011AB018, &unk_100EF3BB0);
      v24 = v23;
      if (v22(&v8[v20], 1, v2) == 1)
      {
        sub_1000095E8(v8, &qword_1011AB018, &unk_100EF3BB0);
LABEL_13:

        return v13.n128_f64[0];
      }
    }

    else
    {
      v25 = v35;
      sub_1009A9C3C(v8, v35);
      if (v22(&v8[v20], 1, v2) != 1)
      {
        v27 = v32;
        (*(v21 + 32))(v32, &v8[v20], v2);
        sub_1009A9CAC();
        v24 = v34;

        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v28 = *(v21 + 8);
        v28(v27, v2);
        sub_1000095E8(v11, &qword_1011AB018, &unk_100EF3BB0);
        sub_1000095E8(v14, &qword_1011AB018, &unk_100EF3BB0);
        v28(v35, v2);
        sub_1000095E8(v8, &qword_1011AB018, &unk_100EF3BB0);
        if (v31)
        {
          goto LABEL_13;
        }

LABEL_10:
        v26 = *(*v24 + 16);
        swift_beginAccess();
        if (*(v24 + v26) <= 2u)
        {
          sub_1009A350C(v24, 0);
        }

        goto LABEL_13;
      }

      v24 = v34;

      sub_1000095E8(v11, &qword_1011AB018, &unk_100EF3BB0);
      sub_1000095E8(v14, &qword_1011AB018, &unk_100EF3BB0);
      (*(v21 + 8))(v25, v2);
    }

    sub_1000095E8(v8, &qword_1011AB010, &qword_100EF3BA8);
    goto LABEL_10;
  }

  return v13.n128_f64[0];
}

double sub_1009A2220(uint64_t a1)
{
  sub_1009A963C(a1);

  return result;
}

id sub_1009A2258()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_100020438(v9[1], v9[2]);
    sub_100020438(v9[3], v9[4]);
    sub_100020438(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1009A2334()
{
  v1 = *((swift_isaMask & *v0) + 0xA0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_100020438(v9[1], v9[2]);
    sub_100020438(v9[3], v9[4]);
    sub_100020438(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1009A2410()
{
  v1 = *((swift_isaMask & *v0) + 0xA8);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_100020438(v9[1], v9[2]);
    sub_100020438(v9[3], v9[4]);
    sub_100020438(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1009A24E8(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v96 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x58);
  v94 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = type metadata accessor for Optional();
  v89 = *(v93 - 8);
  __chkstk_darwin();
  v86 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v80 - v10;
  __chkstk_darwin();
  v12 = &v80 - v11;
  __chkstk_darwin();
  v14 = &v80 - v13;
  v95 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v92 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v80 - v16;
  __chkstk_darwin();
  v91 = &v80 - v17;
  __chkstk_darwin();
  v90 = &v80 - v18;
  __chkstk_darwin();
  v20 = &v80 - v19;
  v21 = *(v3 + *((v6 & v5) + 0x88));
  v87 = a2;
  if (v21)
  {
    v22 = *(*v21 + 128);
    swift_beginAccess();
    if (*(v21 + v22) <= 2u)
    {
      v81 = v7;
      v23 = *(*v21 + 112);
      swift_beginAccess();
      v24 = v89;
      v25 = *(v89 + 16);
      v84 = v23;
      v83 = v25;
      v25(v14, v21 + v23, v93);
      v26 = v95;
      v82 = *(v95 + 48);
      if (v82(v14, 1, AssociatedTypeWitness) == 1)
      {
        v27 = *(v24 + 8);

        v27(v14, v93);
      }

      else
      {
        (*(v26 + 32))(v20, v14, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();

        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v26 + 8))(v20, AssociatedTypeWitness);
        if (v28)
        {
          return v21;
        }
      }

      v83(v12, v21 + v84, v93);
      if (v82(v12, 1, AssociatedTypeWitness) == 1)
      {
        (*(v89 + 8))(v12, v93);
        v29 = *(*v21 + 104);
        swift_beginAccess();
        v30 = v95;
        v31 = v90;
        (*(v95 + 16))(v90, v21 + v29, AssociatedTypeWitness);
        v7 = v81;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v29) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v30 + 8))(v31, AssociatedTypeWitness);
        if (v29)
        {
          return v21;
        }
      }

      else
      {

        (*(v89 + 8))(v12, v93);
        v7 = v81;
      }
    }
  }

  v82 = v3;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_1000060E4(v32, qword_101219B98);
  v34 = v95;
  v35 = *(v95 + 16);
  v36 = v91;
  v35(v91, v96, AssociatedTypeWitness);
  v84 = v33;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v83 = v35;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v81 = v7;
    v41 = v40;
    v42 = swift_slowAlloc();
    v99 = v42;
    *v41 = 136446210;
    v35(v90, v36, AssociatedTypeWitness);
    v43 = String.init<A>(describing:)();
    v45 = v44;
    v91 = *(v95 + 8);
    (v91)(v36, AssociatedTypeWitness);
    v46 = sub_100010678(v43, v45, &v99);
    v47 = v81;

    *(v41 + 4) = v46;
    v34 = v95;
    _os_log_impl(&_mh_execute_header, v37, v38, "Creating transition for item=%{public}s", v41, 0xCu);
    sub_10000959C(v42);
  }

  else
  {
    v47 = v7;

    v91 = *(v34 + 8);
    (v91)(v36, AssociatedTypeWitness);
  }

  v48 = v88;
  v49 = v89;
  v50 = v82;
  v51 = *(v82 + *((swift_isaMask & *v82) + 0x88));
  if (!v51)
  {
    v54 = v85;
    (*(v34 + 56))(v85, 1, 1, AssociatedTypeWitness);
    v55 = v47;
    goto LABEL_19;
  }

  v52 = *(*v51 + 112);
  swift_beginAccess();
  v53 = v51 + v52;
  v54 = v85;
  (*(v49 + 16))(v85, v53, v93);
  v55 = v47;
  if ((*(v34 + 48))(v54, 1, AssociatedTypeWitness) == 1)
  {
LABEL_19:
    Gliss.Coordinator.item.getter(v48);
    v57 = (*(v34 + 48))(v54, 1, AssociatedTypeWitness);
    v56 = v83;
    if (v57 != 1)
    {
      (*(v49 + 8))(v54, v93);
    }

    v56(v92, v48, AssociatedTypeWitness);
    goto LABEL_22;
  }

  (*(v34 + 32))(v48, v54, AssociatedTypeWitness);
  v56 = v83;
  v83(v92, v48, AssociatedTypeWitness);
LABEL_22:
  v58 = v90;
  Gliss.Coordinator.item.getter(v90);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v95 = v34 + 8;
  (v91)(v58, AssociatedTypeWitness);
  if (v60)
  {
    v61 = 1;
    v62 = v86;
  }

  else
  {
    v62 = v86;
    v56(v86, v96, AssociatedTypeWitness);
    v61 = 0;
  }

  (*(v34 + 56))(v62, v61, 1, AssociatedTypeWitness);
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v63);
  v64 = v62;
  v65 = *((swift_isaMask & *v50) + 0x70);
  swift_beginAccess();
  v66 = *(v50 + v65);
  __chkstk_darwin();
  *(&v80 - 4) = v94;
  *(&v80 - 3) = v55;
  *(&v80 - 2) = v96;
  v67 = v87;
  *(&v80 - 8) = v87;

  sub_10099F554(_swiftEmptyDictionarySingleton, sub_1009A9F98, (&v80 - 6), v66);
  v69 = v68;

  v21 = sub_1009AA074(v92, v64, v67, v69, 0.0);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = v48;
    v74 = swift_slowAlloc();
    v97 = v21;
    v98 = v74;
    *v72 = 136446210;
    swift_getWitnessTable();
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = sub_100010678(v75, v76, &v98);

    *(v72 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v70, v71, "   Created Transition=%{public}s", v72, 0xCu);
    sub_10000959C(v74);

    v78 = v73;
  }

  else
  {

    v78 = v48;
  }

  (v91)(v78, AssociatedTypeWitness);
  return v21;
}

void sub_1009A311C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = v8;
  sub_10099EB9C(a3, a4, ObjectType, AssociatedTypeWitness, v9, v13);
  sub_100A23EE0(v13, v12);
}

void sub_1009A3204(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  if (qword_1011A6998 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101219B98);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25[0] = v9;
      *v8 = 136446210;
      type metadata accessor for Gliss.Transition(0, *(v4 + 80), *(v4 + 88), v10);
      swift_getWitnessTable();
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = sub_100010678(v11, v12, v25);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Begin or Enqueue Transition=%{public}s", v8, 0xCu);
      sub_10000959C(v9);
    }

    sub_1009AAD8C(2);

    sub_1009A963C(v14);

    v15 = *((swift_isaMask & *v2) + 0x70);
    swift_beginAccess();
    v16 = *(v2 + v15);
    v4 = *(v16 + 16);

    if (!v4)
    {
      break;
    }

    v17 = 0;
    v18 = (v16 + 40);
    while (v17 < *(v16 + 16))
    {
      ++v17;
      v19 = *v18;
      v20 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_10099EFBC(a1, ObjectType, v19);

      v18 += 2;
      if (v4 == v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  sub_1009A1C54();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "   Transition Started!", v24, 2u);
  }
}

void sub_1009A350C(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_101219B98);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = sub_100010678(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_100010678(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to cancel transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_1009AAD8C(4);
    sub_1009A1C48();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = sub_1008B63F4(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      sub_1009A9500(v34, v35, v36);
      sub_100020438(v37, v39);
      sub_100020438(v58[3], v58[4]);
      sub_100020438(v58[5], v58[6]);
      v40 = sub_1009AA0EC(a1, v38, v34, v35, v36);

      sub_1009A94D8(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_1009A9DA4;
      *(v41 + 24) = v19;
      v56 = sub_1001D3174;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10002BC98;
      v55 = &unk_1010D4D38;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_1009A9DE0;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_1009A9FE8;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100338AB8;
      v55 = &unk_1010D4D88;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *((swift_isaMask & *v45) + 0x90);
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      sub_1008B9918(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_1009A4B5C(a1, 0, v32, sub_1009AA034, 0.0);
      sub_1009A3C08(a1, v32);
    }
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

double sub_1009A3C08(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011AB010, &qword_100EF3BA8);
  __chkstk_darwin();
  v59 = &v52 - v9;
  sub_10010FC20(&qword_1011AB018, &unk_100EF3BB0);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  sub_1009AAD8C(6);
  if (qword_1011A6998 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_101219B98);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v53 = v11;
    v54 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136446210;
      v61[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v58 + 80), *(v58 + 88), v22);
      swift_getWitnessTable();
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_100010678(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "❎ Cancelled transition=%{public}s", v20, 0xCu);
      sub_10000959C(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v60 + *((*v3 & *v60) + 0x88));
    v28 = v55;
    v27 = v56;
    if (v26)
    {
      v29 = *(v56 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v55);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v56 + 7);
      v30(v15, 1, 1, v55);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v54[12];
    v32 = v59;
    sub_1009A9C3C(v15, v59);
    sub_1009A9C3C(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_1000095E8(v13, &qword_1011AB018, &unk_100EF3BB0);
      v34 = v59;
      sub_1000095E8(v15, &qword_1011AB018, &unk_100EF3BB0);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_1000095E8(v34, &qword_1011AB018, &unk_100EF3BB0);
      v35 = v57;
LABEL_14:
      sub_1009A963C(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    sub_1009A9C3C(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_1000095E8(v56, &qword_1011AB018, &unk_100EF3BB0);
      v34 = v59;
      sub_1000095E8(v15, &qword_1011AB018, &unk_100EF3BB0);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_1000095E8(v34, &qword_1011AB010, &qword_100EF3BA8);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    sub_1009A9CAC();
    v41 = v27;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_1000095E8(v56, &qword_1011AB018, &unk_100EF3BB0);
    sub_1000095E8(v15, &qword_1011AB018, &unk_100EF3BB0);
    v43(v36, v28);
    sub_1000095E8(v39, &qword_1011AB018, &unk_100EF3BB0);
    v8 = &swift_isaMask;
    v35 = v57;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v62[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v52 - 2) = *(v35 + 80);
    *(&v52 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v58 + 80), *(v58 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v46 = v60;
    v47 = *((swift_isaMask & *v60) + 0x70);
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
      break;
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      sub_10099F0B8(a1, ObjectType, v49);

      v15 += 2;
      if (v11 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_19:

  return result;
}

void sub_1009A4460(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_101219B98);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = sub_100010678(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_100010678(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to end transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_1009AAD8C(3);
    sub_1009A1C48();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = sub_1008B63F4(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      sub_1009A9500(v34, v35, v36);
      sub_100020438(v37, v39);
      sub_100020438(v58[3], v58[4]);
      sub_100020438(v58[5], v58[6]);
      v40 = sub_1009AA0EC(a1, v38, v34, v35, v36);

      sub_1009A94D8(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_1009A9E28;
      *(v41 + 24) = v19;
      v56 = sub_100029B6C;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10002BC98;
      v55 = &unk_1010D4E28;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_1009A9E64;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_1009A9EB4;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100338AB8;
      v55 = &unk_1010D4E78;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *((swift_isaMask & *v45) + 0x90);
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      sub_1008B9918(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_1009A4B5C(a1, 0, v32, sub_1009A9F3C, 1.0);
      sub_1009A4D38(a1, v32);
    }
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

void sub_1009A4B5C(uint64_t *a1, char a2, void *a3, uint64_t a4, double a5)
{
  v7 = *a1;
  v8 = (a1 + *(*a1 + 120));
  swift_beginAccess();
  v8[1] = a5;
  if (a2)
  {
    swift_beginAccess();
    __chkstk_darwin();
    type metadata accessor for Gliss.Transition(255, *(v7 + 80), *(v7 + 88), v9);
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();
  }

  sub_1009A1C54();
}

double sub_1009A4D38(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011AB010, &qword_100EF3BA8);
  __chkstk_darwin();
  v59 = &v52 - v9;
  sub_10010FC20(&qword_1011AB018, &unk_100EF3BB0);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  sub_1009AAD8C(5);
  if (qword_1011A6998 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_101219B98);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v53 = v11;
    v54 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136446210;
      v61[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v58 + 80), *(v58 + 88), v22);
      swift_getWitnessTable();
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_100010678(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "✅ End of transition=%{public}s", v20, 0xCu);
      sub_10000959C(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v60 + *((*v3 & *v60) + 0x88));
    v28 = v55;
    v27 = v56;
    if (v26)
    {
      v29 = *(v56 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v55);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v56 + 7);
      v30(v15, 1, 1, v55);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v54[12];
    v32 = v59;
    sub_1009A9C3C(v15, v59);
    sub_1009A9C3C(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_1000095E8(v13, &qword_1011AB018, &unk_100EF3BB0);
      v34 = v59;
      sub_1000095E8(v15, &qword_1011AB018, &unk_100EF3BB0);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_1000095E8(v34, &qword_1011AB018, &unk_100EF3BB0);
      v35 = v57;
LABEL_14:
      sub_1009A963C(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    sub_1009A9C3C(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_1000095E8(v56, &qword_1011AB018, &unk_100EF3BB0);
      v34 = v59;
      sub_1000095E8(v15, &qword_1011AB018, &unk_100EF3BB0);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_1000095E8(v34, &qword_1011AB010, &qword_100EF3BA8);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    sub_1009A9CAC();
    v41 = v27;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_1000095E8(v56, &qword_1011AB018, &unk_100EF3BB0);
    sub_1000095E8(v15, &qword_1011AB018, &unk_100EF3BB0);
    v43(v36, v28);
    sub_1000095E8(v39, &qword_1011AB018, &unk_100EF3BB0);
    v8 = &swift_isaMask;
    v35 = v57;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v62[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v52 - 2) = *(v35 + 80);
    *(&v52 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v58 + 80), *(v58 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v46 = v60;
    v47 = *((swift_isaMask & *v60) + 0x70);
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
      break;
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      sub_10099F0B8(a1, ObjectType, v49);

      v15 += 2;
      if (v11 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_19:

  return result;
}

uint64_t sub_1009A5590(uint64_t a1, void (*a2)(__n128), uint64_t a3, void *a4, uint64_t a5)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  sub_100A23D20(0, v11);
  return swift_endAccess();
}

void sub_1009A56D4(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_1009A5704()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[22];
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v18[0] = v0;
    v5 = objc_allocWithZone(UIPanGestureRecognizer);
    type metadata accessor for Gliss.Coordinator(0, v1[10], v1[11], v6);
    v4 = [v5 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v3 = 0;
  }

  v7 = v4;
  v8 = v3;
  [v7 setDelegate:v0];
  v9 = *((swift_isaMask & *v0) + 0xB0);
  v10 = *(v0 + v9);
  *(v0 + v9) = v7;
  v11 = v7;

  [v11 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v18);
  v12 = v18[0];
  sub_100020438(v18[1], v18[2]);
  sub_100020438(v18[3], v18[4]);
  sub_100020438(v18[5], v18[6]);
  v13 = [v11 view];
  if (v13)
  {
    v14 = v13;
    sub_100009F78(0, &qword_1011AB020, UIView_ptr);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      [v14 removeGestureRecognizer:v11];
    }
  }

  v15 = [v11 view];

  if (!v15 || (sub_100009F78(0, &qword_1011AB020, UIView_ptr), v16 = v12, v17 = static NSObject.== infix(_:_:)(), v15, v16, (v17 & 1) == 0))
  {
    [v12 addGestureRecognizer:v11];
  }
}

void sub_1009A595C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v286 = v279 - v6;
  v7 = *((v5 & v4) + 0x50);
  v305 = *((v5 & v4) + 0x58);
  v302 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v303 = *(type metadata accessor for Optional() - 8);
  __chkstk_darwin();
  v287 = v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v290 = v279 - v10;
  __chkstk_darwin();
  v289 = v279 - v11;
  __chkstk_darwin();
  v291 = v279 - v12;
  __chkstk_darwin();
  v294 = (v279 - v13);
  __chkstk_darwin();
  v293 = v279 - v14;
  v306 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  __chkstk_darwin();
  v295 = v279 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v285 = v279 - v17;
  __chkstk_darwin();
  v19 = v279 - v18;
  __chkstk_darwin();
  v304 = v279 - v20;
  v284 = v21;
  __chkstk_darwin();
  v300 = v22;
  v301 = v279 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v27 = v279 - v26;
  v28 = Gliss.Coordinator.dataSource.getter();
  if (!v28)
  {
    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000060E4(v45, qword_101219B98);
    v306 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v306, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v306, v46, "No Data Source Set", v47, 2u);
    }

    v48 = v306;

    return;
  }

  v29 = v28;
  Gliss.Coordinator.gestureConfiguration.getter(v310);
  v30 = v310[0];
  sub_100020438(v310[1], v310[2]);
  sub_100020438(v310[3], v310[4]);
  sub_100020438(v310[5], v310[6]);
  v288 = a1;
  [a1 translationInView:v30];
  v32 = v31;
  v34 = v33;

  if (v32 == 0.0)
  {
    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000060E4(v49, qword_101219B98);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = COERCE_DOUBLE(swift_slowAlloc());
      v307 = v53;
      *v52 = 136446210;
      v311 = v32;
      v312 = v34;
      _s3__C7CGPointVMa_0(0);
      v54 = String.init<A>(describing:)();
      v56 = sub_100010678(v54, v55, &v307);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to compute direction from gesture's translation %{public}s", v52, 0xCu);
      sub_10000959C(*&v53);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v298 = isa;
  v35 = *(v2 + *((swift_isaMask & *v2) + 0x88));
  v292 = TupleTypeMetadata2;
  v296 = v2;
  v297 = v29;
  v299 = v27;
  if (v35)
  {
    v36 = *(*v35 + 120);
    swift_beginAccess();
    v37 = *(v35 + v36);
    v38 = v301;
    if (v37 == 2 || (((v32 >= 0.0) ^ v37) & 1) != 0)
    {

      v2 = v296;
      sub_1009A963C(0);
      Gliss.Coordinator.item.getter(v38);
      v44 = v302;
      (v305[3].isa)(v299, &v299[*(TupleTypeMetadata2 + 48)], v38, v302);
    }

    else
    {
      v39 = *(*v35 + 104);
      swift_beginAccess();
      (v298[2])(v38, v35 + v39, v306);
      v40 = v25;
      v41 = v299;
      v42 = v305[3].isa;
      v43 = *(v292 + 48);

      v44 = v302;
      (v42)(v41, &v41[v43], v38);
      v25 = v40;
      TupleTypeMetadata2 = v292;

      v2 = v296;
    }
  }

  else
  {
    v38 = v301;
    Gliss.Coordinator.item.getter(v301);
    v57 = &v27[*(TupleTypeMetadata2 + 48)];
    v58 = v27;
    v44 = v302;
    (v305[3].isa)(v58, v57, v38, v302);
  }

  v59 = v298;
  v60 = v298[1];
  v281 = (v298 + 1);
  v282 = v25;
  v60(v38, v306);
  Gliss.Coordinator.gestureConfiguration.getter(&v311);
  v61 = v311;
  sub_100020438(v312, v313);
  sub_100020438(v314, v315);
  sub_100020438(v316, v317);
  v62 = [*&v61 effectiveUserInterfaceLayoutDirection];
  v283 = v60;
  v280 = v61;
  if (v32 < 0.0)
  {
    v63 = v304;
    if (!v62)
    {
      goto LABEL_30;
    }

    if (v62 != 1)
    {
LABEL_33:
      Gliss.Coordinator.item.getter(v19);
      goto LABEL_39;
    }

LABEL_26:
    v64 = v294;
    (*(v303 + 2))(v294, v299, v300);
    v65 = v59[6];
    if (v65(v64, 1, v306) != 1)
    {
      (v59[4])(v19, v64, v306);
      v2 = v296;
      v44 = v302;
      goto LABEL_39;
    }

    v66 = v296;
    Gliss.Coordinator.item.getter(v19);
    v67 = v65(v64, 1, v306);
    v2 = v66;
    v68 = v67 == 1;
    v69 = v64;
    v44 = v302;
    if (v68)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v63 = v304;
  if (!v62)
  {
    goto LABEL_26;
  }

  if (v62 != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v70 = &v299[*(TupleTypeMetadata2 + 48)];
  v71 = v293;
  (*(v303 + 2))(v293, v70, v300);
  v72 = v59[6];
  if (v72(v71, 1, v306) != 1)
  {
    (v59[4])(v19, v71, v306);
    TupleTypeMetadata2 = v292;
    v2 = v296;
    goto LABEL_39;
  }

  v73 = v296;
  Gliss.Coordinator.item.getter(v19);
  v74 = v72(v71, 1, v306);
  v2 = v73;
  v68 = v74 == 1;
  v69 = v71;
  TupleTypeMetadata2 = v292;
  if (!v68)
  {
LABEL_32:
    (*(v303 + 1))(v69, v300);
  }

LABEL_39:
  v75 = v59[4];
  v75(v63, v19, v306);
  if ((v305[4].isa)(v63, v44))
  {
    v279[1] = v59 + 4;
    v76 = TupleTypeMetadata2;
    v77 = *&v280;
    [v288 velocityInView:v77];
    v79 = v78;
    v81 = v80;
    v82 = sub_1009A24E8(v63, v32 >= 0.0);
    v295 = v77;
    [v77 bounds];
    Width = CGRectGetWidth(v319);
    v84 = v82 + *(*v82 + 168);
    swift_beginAccess();
    v85 = v84[32];
    v86 = v85 != 2;
    v87 = v86 & v85;
    if ((v86 & v84[33]) != 0)
    {
      v88 = 256;
    }

    else
    {
      v88 = 0;
    }

    *v84 = v32;
    *(v84 + 1) = v34;
    *(v84 + 2) = v79;
    *(v84 + 3) = v81;
    *(v84 + 16) = v88 | v87;
    v89 = *(*v82 + 128);
    swift_beginAccess();
    v90 = *(v82 + v89);
    v294 = v82;
    if (v90 <= 1)
    {
      v91 = v75;
      if (qword_1011A6998 != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      v293 = sub_1000060E4(v92, qword_101219B98);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "🤏 Swipe Gesture Began", v95, 2u);
      }

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v99;
        *v98 = 136446210;
        LOBYTE(v309[0]) = v32 >= 0.0;
        v100 = String.init<A>(describing:)();
        v102 = sub_100010678(v100, v101, &v307);

        *(v98 + 4) = v102;
        v82 = v294;
        _os_log_impl(&_mh_execute_header, v96, v97, "   Direction=%{public}s", v98, 0xCu);
        sub_10000959C(*&v99);
      }

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v106;
        *v105 = 136446210;
        v309[0] = v82;
        v107 = v306;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition(0, v107, AssociatedConformanceWitness, v109);
        swift_getWitnessTable();
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = sub_100010678(v110, v111, &v307);

        *(v105 + 4) = v112;
        v82 = v294;
        _os_log_impl(&_mh_execute_header, v103, v104, "   Transition=%{public}s", v105, 0xCu);
        sub_10000959C(*&v106);
      }

      v76 = v292;
      v75 = v91;
      v2 = v296;
      sub_1009A3204(v82);
      v63 = v304;
    }

    v113 = [v288 state];
    if (v113 <= 2)
    {
      if (v113 < 2)
      {
        v114 = sub_1009A2258();
        [v114 prepare];

        goto LABEL_69;
      }

      v139 = v283;
      if (v113 == 2)
      {
LABEL_69:
        if (qword_1011A6998 != -1)
        {
          swift_once();
        }

        v148 = type metadata accessor for Logger();
        v149 = sub_1000060E4(v148, qword_101219B98);
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&_mh_execute_header, v150, v151, "🤏 Swipe Gesture Updated", v152, 2u);
        }

        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.debug.getter();
        v155 = os_log_type_enabled(v153, v154);
        v305 = v149;
        if (v155)
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v309[0] = v157;
          *v156 = 136446210;
          v307 = v32;
          v308 = v34;
          _s3__C7CGPointVMa_0(0);
          v158 = String.init<A>(describing:)();
          v160 = sub_100010678(v158, v159, v309);

          *(v156 + 4) = v160;
          _os_log_impl(&_mh_execute_header, v153, v154, "   Translation=%{public}s", v156, 0xCu);
          sub_10000959C(v157);
        }

        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.debug.getter();
        v163 = os_log_type_enabled(v161, v162);
        v164 = v295;
        v165 = v303;
        if (v163)
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v309[0] = v167;
          *v166 = 136446210;
          v307 = v79;
          v308 = v81;
          _s3__C7CGPointVMa_0(0);
          v168 = String.init<A>(describing:)();
          v170 = sub_100010678(v168, v169, v309);

          *(v166 + 4) = v170;
          _os_log_impl(&_mh_execute_header, v161, v162, "   Velocity=%{public}s", v166, 0xCu);
          sub_10000959C(v167);
        }

        v171 = v291;
        [v164 bounds];
        v172 = fabs(v32);
        v173 = v172 * (1.0 / CGRectGetWidth(v320));
        v174 = *(*v82 + 112);
        swift_beginAccess();
        v175 = *(v165 + 2);
        v302 = v174;
        v176 = v82 + v174;
        v177 = v300;
        v178 = v175;
        v175(v171, v176, v300);
        v179 = v298[6];
        v298 += 6;
        v180 = v179;
        if (v179(v171, 1, v306) == 1)
        {

          v181 = *(v165 + 1);
          v181(v171, v177);
          v182 = v177;
          v183 = v178;
          v184 = v180;
        }

        else
        {
          v181 = *(v165 + 1);
          v181(v171, v177);
          v185 = (v82 + *(*v82 + 120));
          swift_beginAccess();
          v186 = v185[1];
          v185[1] = v173;
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            *v189 = 134349056;
            *(v189 + 4) = v173;
            _os_log_impl(&_mh_execute_header, v187, v188, "   Progression Value=%{public}f", v189, 0xCu);
          }

          v183 = v178;
          if (v186 >= 0.45)
          {
            v184 = v180;
            if (v186 <= 0.55)
            {
              v224 = v302;
              if (v173 < 0.45 || v173 > 0.55)
              {
                v272 = sub_1009A2258();
                [v288 locationInView:v164];
                v274 = v273;
                v276 = v275;

                [v272 impactOccurredAtLocation:{v274, v276}];
                v278 = sub_1009AB400(&v307);
                if (*(v277 + 32) != 2)
                {
                  *(v277 + 32) = v173 >= 0.55;
                }

                (v278)(&v307, 0);
                v182 = v300;
              }

              else
              {

                v182 = v300;
              }

LABEL_110:
              if (v173 <= 1.0)
              {
                v226 = 0;
              }

              else
              {
                v225 = v289;
                v183(v289, v294 + v224, v182);
                v226 = v184(v225, 1, v306) != 1;
                v181(v225, v182);
              }

              v228 = sub_1009AB400(&v307);
              if (*(v227 + 32) != 2)
              {
                *(v227 + 33) = v226;
              }

              (v228)(&v307, 0);
              v229 = v294;
              v230 = v290;
              v183(v290, v294 + v224, v182);
              v231 = v229;
              LODWORD(v229) = v184(v230, 1, v306) == 1;
              v181(v230, v182);
              v232 = v282;
              v233 = v283;
              v234 = v292;
              v235 = v299;
              if (((v229 | v226) & 1) == 0)
              {
                goto LABEL_125;
              }

              v236 = v295;
              [v295 bounds];
              v237 = CGRectGetWidth(v321) * 0.2;
              v238 = 0.0;
              if (v226)
              {
                [v236 bounds];
                v238 = CGRectGetWidth(v322);
              }

              v239 = v237 * ((v172 - v238) / (v237 + v237 + v172 - v238));
              [v236 bounds];
              v240 = 1.0 / CGRectGetWidth(v323) * v239;
              if (v226)
              {
                v241 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v241 + 8) = v240 + 1.0;

                v242 = Logger.logObject.getter();
                v243 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v241 + 8);
                  v245 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&_mh_execute_header, v242, v243, v245, v244, 0xCu);

                  v234 = v292;
                }
              }

              else
              {
                v246 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v246 + 8) = v240;

                v242 = Logger.logObject.getter();
                v243 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v246 + 8);
                  v245 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              sub_1009A1C48();

              swift_unknownObjectRelease();

              v233(v304, v306);
              (*(v232 + 8))(v235, v234);
              return;
            }

            v182 = v300;
          }

          else
          {

            v182 = v300;
            v184 = v180;
          }
        }

        v224 = v302;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v138 = v298;
    if (v113 != 3)
    {
      if (v113 == 4)
      {

        v139 = v283;
        if (qword_1011A6998 != -1)
        {
          swift_once();
        }

        v199 = type metadata accessor for Logger();
        sub_1000060E4(v199, qword_101219B98);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v141, v142))
        {
          goto LABEL_98;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v139 = v283;
        if (v113 != 5)
        {
LABEL_92:
          swift_unknownObjectRelease();

          v198 = v295;

LABEL_99:
          v139(v63, v306);
LABEL_100:
          (*(v282 + 8))(v299, v76);
          return;
        }

        if (qword_1011A6998 != -1)
        {
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        sub_1000060E4(v140, qword_101219B98);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v141, v142))
        {
LABEL_98:

          sub_1009A350C(v82, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&_mh_execute_header, v141, v142, v144, v143, 2u);
      v76 = v292;

      goto LABEL_98;
    }

    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v190 = type metadata accessor for Logger();
    sub_1000060E4(v190, qword_101219B98);
    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      *v193 = 0;
      _os_log_impl(&_mh_execute_header, v191, v192, "🤏✅ Swipe Gesture Ended", v193, 2u);
      v138 = v298;
      v2 = v296;
    }

    if (Width * 0.5 >= fabs(v79))
    {
      v194 = (v82 + *(*v82 + 120));
      swift_beginAccess();
      if (v194[1] < 0.5)
      {

        v195 = Logger.logObject.getter();
        v196 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          *v197 = 0;
          _os_log_impl(&_mh_execute_header, v195, v196, "   Hasn't reached translation thresholds. Cancelling ❎", v197, 2u);
        }

        sub_1009A350C(v82, 1);
        swift_unknownObjectRelease();

        v283(v63, v306);
        goto LABEL_139;
      }
    }

    if (v32 < 0.0)
    {
      v200 = v303;
      v201 = v287;
      if (v79 <= 0.0)
      {
LABEL_103:
        v202 = *(*v82 + 112);
        swift_beginAccess();
        v203 = v82 + v202;
        v204 = v300;
        (*(v200 + 2))(v201, v203, v300);
        if ((v138[6])(v201, 1, v306) == 1)
        {
          (*(v200 + 1))(v201, v204);
          v205 = sub_1009A2334();
          [v205 prepare];

          v206 = *(v2 + *((swift_isaMask & *v2) + 0xA0));
          v207 = v295;
          [v288 locationInView:v295];
          v209 = v208;
          v211 = v210;

          [v206 impactOccurredWithIntensity:0.5 atLocation:{v209, v211}];
          sub_1009A350C(v82, 1);
          v212 = sub_1009A95DC();
          if (*(v212 + 16))
          {
            v213 = direct field offset for Gliss.Transition.id;

            v214 = sub_1008B63F4(v82 + v213);
            v215 = v283;
            if (v216)
            {
              v217 = *(*(v212 + 56) + 8 * v214);

              sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
              v218 = static OS_dispatch_queue.main.getter();
              [v217 duration];
              v220 = v219 + -0.1;
              v221 = v215;
              v222 = swift_allocObject();
              *(v222 + 16) = v2;
              v223 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(sub_1009A9A3C, v222, v220);

              swift_unknownObjectRelease();

              v221(v63, v306);
LABEL_139:
              (*(v282 + 8))(v299, v292);
              return;
            }
          }

          else
          {

            v215 = v283;
          }

          swift_unknownObjectRelease();

          v215(v63, v306);
          goto LABEL_139;
        }

        v251 = v201;
        v252 = v295;

        v253 = v285;
        v254 = v251;
        v255 = v306;
        v75(v285, v254, v306);
        v256 = type metadata accessor for TaskPriority();
        (*(*(v256 - 8) + 56))(v286, 1, 1, v256);
        (v138[2])(v301, v253, v255);
        type metadata accessor for MainActor();
        v303 = v252;

        v257 = v297;
        swift_unknownObjectRetain();
        v298 = v2;
        v300 = v288;
        v296 = static MainActor.shared.getter();
        v258 = (*(v138 + 80) + 56) & ~*(v138 + 80);
        v259 = (v284 + v258 + 7) & 0xFFFFFFFFFFFFFFF8;
        v260 = (v259 + 15) & 0xFFFFFFFFFFFFFFF8;
        v261 = (v260 + 15) & 0xFFFFFFFFFFFFFFF8;
        v262 = v75;
        v263 = (v261 + 15) & 0xFFFFFFFFFFFFFFF8;
        v264 = swift_allocObject();
        v264[2] = v296;
        v264[3] = &protocol witness table for MainActor;
        v265 = v301;
        v266 = v305;
        v264[4] = v302;
        v264[5] = v266;
        v264[6] = v257;
        v267 = v264 + v258;
        v268 = v306;
        v262(v267, v265, v306);
        *(v264 + v259) = v298;
        *(v264 + v260) = v294;
        v269 = v303;
        *(v264 + v261) = v303;
        v270 = v264 + v263;
        *v270 = v79;
        *(v270 + 1) = v81;
        *(v264 + ((v263 + 23) & 0xFFFFFFFFFFFFFFF8)) = v300;
        sub_100969440(0, 0, v286, &unk_100EF3BA0, v264);

        swift_unknownObjectRelease();

        v271 = v283;
        v283(v285, v268);
        v271(v304, v268);
        goto LABEL_139;
      }
    }

    else
    {
      v200 = v303;
      v201 = v287;
      if (v79 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v247 = Logger.logObject.getter();
    v248 = static os_log_type_t.default.getter();
    v249 = os_log_type_enabled(v247, v248);
    v76 = v292;
    if (v249)
    {
      v250 = swift_slowAlloc();
      *v250 = 0;
      _os_log_impl(&_mh_execute_header, v247, v248, "   Going opposite direction. Cancelling ❎", v250, 2u);
      v76 = v292;
    }

    sub_1009A350C(v82, 1);
    swift_unknownObjectRelease();

    v283(v63, v306);
    goto LABEL_100;
  }

  v115 = v299;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  sub_1000060E4(v116, qword_101219B98);
  v117 = v59[2];
  v118 = v295;
  v119 = v63;
  v117(v295, v63, v306);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();
  v122 = os_log_type_enabled(v120, v121);
  v123 = v282;
  if (v122)
  {
    v124 = swift_slowAlloc();
    v305 = v120;
    v125 = v124;
    v126 = COERCE_DOUBLE(swift_slowAlloc());
    v307 = v126;
    *v125 = 136446210;
    v127 = v306;
    v117(v301, v118, v306);
    v128 = String.init<A>(describing:)();
    v129 = v127;
    v130 = v123;
    v132 = v131;
    v133 = v118;
    v134 = v283;
    v283(v133, v129);
    v135 = sub_100010678(v128, v132, &v307);

    *(v125 + 4) = v135;
    v136 = v121;
    v137 = v305;
    _os_log_impl(&_mh_execute_header, v305, v136, "DataSource doesn't allow swipe for item=%{public}s", v125, 0xCu);
    sub_10000959C(*&v126);

    swift_unknownObjectRelease();
    v134(v304, v129);
    (*(v130 + 8))(v299, v292);
  }

  else
  {

    swift_unknownObjectRelease();
    v145 = v118;
    v146 = v306;
    v147 = v283;
    v283(v145, v306);
    v147(v119, v146);
    (*(v123 + 8))(v115, TupleTypeMetadata2);
  }
}

uint64_t sub_1009A7C5C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = v21;
  *(v9 + 104) = a1;
  *(v9 + 88) = a8;
  *(v9 + 96) = a9;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  v11 = *a7;
  v12 = swift_isaMask;
  v13 = *(*a8 + 80);
  *(v9 + 120) = v13;
  *(v9 + 128) = *(v13 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = type metadata accessor for MainActor();
  *(v9 + 152) = static MainActor.shared.getter();
  v14 = *((v12 & v11) + 0x58);
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *((v12 & v11) + 0x50);
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = sub_1009A7E68;

  return v19(a6, v16, v14);
}

uint64_t sub_1009A7E68()
{
  *(*v1 + 184) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1009A82F8;
  }

  else
  {
    v4 = sub_1009A7FC0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1009A7FC0()
{
  v31 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v29 = *(v0 + 160);

  (*(v2 + 16))(v1, v6, v3);
  sub_1009A0590(v1);
  v7 = *((swift_isaMask & *v5) + 0x70);
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  sub_10099F4C0(sub_1009A9D04, v9, v8);

  sub_1009A4460(v4, 1);
  v10 = v4 + *(*v4 + 21);
  swift_beginAccess();
  v11 = v10[32];
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    [v14 bounds];
    v15 = fmax(fmin(fabs(v13) * (1.0 / (CGRectGetWidth(v33) * 4.0)), 1.0), 0.25);
    v16 = sub_1009A2258();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000060E4(v19, qword_101219B98);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = Double.description.getter();
      v26 = sub_100010678(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1009A82F8()
{
  v19 = v0;

  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219B98);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = sub_1009A2410();
  [v14 prepare];

  v15 = *(v13 + *((swift_isaMask & *v13) + 0xA8));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  sub_1009A350C(v12, 1);

  v16 = v0[1];

  return v16();
}

void sub_1009A8558(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1009A595C(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0xB0));
  if (!v2)
  {
    return 1;
  }

  v3 = v1;
  sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
  v5 = v2;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    return 1;
  }

  v6 = [(objc_class *)a1.super.isa view];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  [v5 velocityInView:v7];
  v9 = v8;
  v11 = v10;
  if (fabs(v10) < fabs(v8))
  {
    [(objc_class *)a1.super.isa locationInView:v7];
    v9 = v12;
    v11 = v13;

    Gliss.Coordinator.gestureConfiguration.getter(v59);
    v15 = v59[1];
    v14 = v59[2];

    sub_100020438(v59[3], v59[4]);
    sub_100020438(v59[5], v59[6]);
    if (v15)
    {
      v16 = v15(v7);
      v17 = v16 + 56;
      v18 = -*(v16 + 16);
      v19 = -1;
      while (1)
      {
        if (v18 + v19 == -1)
        {
          sub_100020438(v15, v14);

          v22 = 0;
          goto LABEL_20;
        }

        if (++v19 >= *(v16 + 16))
        {
          break;
        }

        v20 = v17 + 32;
        v72.x = v9;
        v72.y = v11;
        v21 = CGRectContainsPoint(*(v17 - 24), v72);
        v17 = v20;
        if (v21)
        {
          sub_100020438(v15, v14);

          v22 = 1;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    [v7 bounds];
    v73.x = v9;
    v73.y = v11;
    v22 = CGRectContainsPoint(v74, v73);
LABEL_20:
    Gliss.Coordinator.gestureConfiguration.getter(v60);
    v33 = v61;
    v32 = v62;
    v34 = v60[0];
    sub_100030444(v61, v62);

    sub_100020438(v60[1], v60[2]);
    sub_100020438(v33, v32);
    sub_100020438(v63, v64);
    if (v33)
    {
      v35 = v33(v7, v9, v11);
      sub_100020438(v33, v32);
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v35 = 1;
      if (v22)
      {
LABEL_22:
        if (v35)
        {
LABEL_23:

LABEL_37:
          return v22 & v35;
        }

LABEL_32:
        if (qword_1011A6998 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_1000060E4(v50, qword_101219B98);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v58 = v54;
          *v53 = 136446210;
          _s3__C7CGPointVMa_0(0);
          v55 = String.init<A>(describing:)();
          v57 = sub_100010678(v55, v56, &v58);

          *(v53 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v51, v52, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v53, 0xCu);
          sub_10000959C(v54);
        }

        goto LABEL_37;
      }
    }

    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_101219B98);
    v37 = v3;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v40 = 136446466;
      v65 = v9;
      v66 = v11;
      _s3__C7CGPointVMa_0(0);
      v41 = String.init<A>(describing:)();
      v43 = sub_100010678(v41, v42, &v58);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v65);
      v45 = v66;
      v44 = v67;

      sub_100020438(v68, v69);
      sub_100020438(v70, v71);
      if (v45 != 0.0)
      {
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        *(v46 + 24) = v44;
      }

      sub_10010FC20(&qword_1011AAEA8, &qword_100EF3A50);
      v47 = String.init<A>(describing:)();
      v49 = sub_100010678(v47, v48, &v58);

      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    if (v35)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (qword_1011A6998 != -1)
  {
LABEL_39:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000060E4(v24, qword_101219B98);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v60[0] = v28;
    *v27 = 136446210;
    v65 = v9;
    v66 = v11;
    _s3__C7CGPointVMa_0(0);
    v29 = String.init<A>(describing:)();
    v31 = sub_100010678(v29, v30, v60);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v27, 0xCu);
    sub_10000959C(v28);
  }

  return 0;
}

uint64_t sub_1009A8CA0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t sub_1009A8CF8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1009A96A4(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Gliss.Coordinator(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1009A8E44(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);

  sub_100020438(v3, v4);
  sub_100020438(v5, v6);
  sub_100020438(v7, v8);

  v9 = *((swift_isaMask & *a1) + 0x78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v9], AssociatedTypeWitness);
  v11 = *((swift_isaMask & *a1) + 0x80);
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  v13 = *&a1[*((swift_isaMask & *a1) + 0xB0)];
}

id sub_1009A9124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *((swift_isaMask & *v4) + 0x70);
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *((swift_isaMask & *v4) + 0x80);
  v30 = *((v8 & v7) + 0x58);
  v29 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*((swift_isaMask & *v4) + 0x88)] = 0;
  v13 = *((swift_isaMask & *v4) + 0x90);
  *&v4[v13] = sub_1008BD4BC(_swiftEmptyArrayStorage);
  *&v4[*((swift_isaMask & *v4) + 0x98)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA0)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA8)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xB0)] = 0;
  (*(v12 + 16))(&v4[*((swift_isaMask & *v4) + 0x78)], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *(a3 + 32);
  v28 = *(a3 + 40);
  v19 = *(a3 + 48);
  v20 = &v4[*((swift_isaMask & *v4) + 0x68)];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 1) = v21;
  *(v20 + 2) = *(a3 + 32);
  *(v20 + 6) = v19;
  swift_beginAccess();
  *&v4[v9] = a4;
  v22 = v14;
  sub_100030444(v15, v16);
  sub_100030444(v17, v18);
  sub_100030444(v28, v19);

  v33 = v29;
  v34 = v30;
  v35 = a1;
  sub_10099F4C0(sub_1009A9FBC, v32, a4);

  v24 = type metadata accessor for Gliss.Coordinator(0, v29, v30, v23);
  v36.receiver = v4;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, "init");
  sub_1009A5704();

  return v25;
}

void sub_1009A94C4(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    sub_1009A94D8(result, a2, a3);
  }
}

void sub_1009A94D8(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id sub_1009A94EC(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1009A9500(result, a2, a3);
  }

  return result;
}

id sub_1009A9500(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

double sub_1009A9514(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  return sub_1009A1460(a1, a2, (v2 + v4), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1009A95A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1009A95DC()
{
  v1 = *((swift_isaMask & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1009A963C(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_1009A1D1C(v3);

  return result;
}

uint64_t sub_1009A96A4(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v19);

  sub_100020438(v19[1], v19[2]);
  sub_100020438(v19[3], v19[4]);
  v2 = v20;
  if (!v20)
  {
    return 1;
  }

  v3 = v21;
  v4 = v20(a1);
  sub_100020438(v2, v3);
  if (v4)
  {
    return 1;
  }

  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101219B98);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100010678(v14, v16, &v18);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  return 0;
}

uint64_t sub_1009A98CC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1009A99E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1009A9A3C()
{
  v0 = sub_1009A2334();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_1009A9A98(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_10002F3F4;

  return sub_1009A7C5C(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t sub_1009A9C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AB018, &unk_100EF3BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009A9CAC()
{
  result = qword_1011A8550;
  if (!qword_1011A8550)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8550);
  }

  return result;
}

uint64_t sub_1009A9D1C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return sub_10099F1B4(v3, v2, ObjectType, *(v4 + 80), v5);
}

uint64_t sub_1009A9DE8()
{

  return swift_deallocObject();
}

uint64_t sub_1009A9E6C()
{

  return swift_deallocObject();
}

uint64_t sub_1009A9EEC(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

uint64_t sub_1009A9F54(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

uint64_t sub_1009AA074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  v11.n128_f64[0] = a5;
  sub_1009AA4DC(a1, a2, v7, a4, v11);
  return v10;
}

id sub_1009AA0EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v38 = *&a3;
  v9 = *(*a1 + 80);
  v10 = *(type metadata accessor for Optional() - 8);
  __chkstk_darwin();
  v13 = &v38 - v12;
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v18 = v38;

      return *&v18;
    }

    else
    {
      v23 = v11;
      if (UIAccessibilityIsReduceMotionEnabled() || (v24 = *(*a1 + 120), swift_beginAccess(), *(a1 + v24) == 2))
      {
        v25 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
        v26 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v26 initWithDuration:v25 timingParameters:{0.25, *&v38}];
      }

      else
      {
        v28 = a1 + *(*a1 + 168);
        swift_beginAccess();
        if (*(v28 + 32) == 2)
        {
          [a2 bounds];
          v29 = CGRectGetWidth(v40) * 0.5;
        }

        else
        {
          v29 = *(v28 + 16);
        }

        v30 = fabs(v29);
        [a2 bounds];
        Width = CGRectGetWidth(v41);
        v32 = fabs(*v28);
        if (*(v28 + 32) == 2)
        {
          v32 = 0.0;
        }

        v33 = v30 / (Width - v32);
        v34 = *(*a1 + 112);
        swift_beginAccess();
        (*(v10 + 16))(v13, a1 + v34, v23);
        if ((*(*(v9 - 8) + 48))(v13, 1, v9) == 1)
        {
          v35 = 0.5;
        }

        else
        {
          v35 = 0.8;
        }

        (*(v10 + 8))(v13, v23);
        v25 = [objc_allocWithZone(UISpringTimingParameters) initWithDampingRatio:v35 initialVelocity:{v33, 0.0}];
        v36 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v36 initWithDuration:v25 timingParameters:{0.0, *&v38}];
      }

      v37 = v27;

      return v37;
    }
  }

  else
  {
    if (a5 >> 6)
    {
      if (a5)
      {
        v20 = 0.25;
      }

      else
      {
        v20 = *&a4;
      }

      v15 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:v20 bounce:v38];
      v21 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v21 initWithDuration:v15 timingParameters:{0.0, *&v38}];
    }

    else
    {
      v14 = v38;
      v15 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
      v16 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v16 initWithDuration:v15 timingParameters:{v14, *&v38}];
    }

    v22 = v17;

    return v22;
  }
}

uint64_t Gliss.Direction.init(_:)(double a1)
{
  if (a1 > 0.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 0.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1009AA4DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  v6 = a5.n128_u64[0];
  v9 = *v5;
  UUID.init()();
  v10 = *(*v5 + 112);
  v11 = *(v9 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 128)) = 0;
  v13 = v5 + *(*v5 + 136);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = -64;
  v14 = *(*v5 + 144);
  type metadata accessor for Gliss.Transition(255, v11, *(v9 + 88), v15);
  swift_getFunctionTypeMetadata1();
  *(v5 + v14) = static Array._allocateUninitialized(_:)();
  v16 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v16) = static Array._allocateUninitialized(_:)();
  v17 = v5 + *(*v5 + 168);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 40))(v5 + v10, a2, v18);
  swift_endAccess();
  v19 = v5 + *(*v5 + 120);
  *v19 = a3;
  *(v19 + 8) = v6;
  *(v5 + *(*v5 + 160)) = a4;
  return v5;
}

uint64_t Gliss.Transition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Gliss.Transition.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1009AA81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_1009AA8B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, v7);
  v10 = *a2;
  v11 = *(*v10 + 104);
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t Gliss.Transition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1009AAA6C@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(**a1 + 112);
  swift_beginAccess();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a4, v5 + v6, v7);
}

uint64_t sub_1009AAB10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = *a2;
  v12 = *(*v11 + 112);
  swift_beginAccess();
  (*(v7 + 40))(v11 + v12, v10, v6);
  return swift_endAccess();
}

uint64_t Gliss.Transition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Gliss.Transition.progression.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  return *v1;
}

uint64_t Gliss.Transition.state.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1009AAD8C(char a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL Gliss.Transition.isEnding.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL Gliss.Transition.isCancelling.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL Gliss.Transition.hasEnded.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) > 4u;
}

BOOL Gliss.Transition.isGestureBased.getter()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

uint64_t Gliss.Transition.addAlongsideAnimation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();

  Array.append(_:)();
  return swift_endAccess();
}

uint64_t Gliss.Transition.addCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata2();
  type metadata accessor for Array();

  Array.append(_:)();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *(v3 + *(*v3 + 160));
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_1008B6478(a1);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    memset(v12, 0, sizeof(v12));
    goto LABEL_6;
  }

  sub_10000DD18(*(v5 + 56) + 32 * v7, v12);

LABEL_6:
  sub_10010FC20(&qword_1011ABB20, &unk_100EF1530);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v10 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 sub_1009AB2C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_1009AB32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + *(**a2 + 168);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 Gliss.Transition.gestureState.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t Gliss.Transition.description.getter()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - v5;
  v7 = *(v2 - 8);
  __chkstk_darwin();
  v27 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v27 - v9;
  strcpy(v32, "Transition(\n");
  BYTE5(v32[1]) = 0;
  HIWORD(v32[1]) = -5120;
  v31._countAndFlagsBits = 0x3A646920202020;
  v31._object = 0xE700000000000000;
  v11._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 10;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  String.append(_:)(v31);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0x6D6F726620202020;
  v13._object = 0xEA0000000000203ALL;
  String.append(_:)(v13);
  v14 = *(*v0 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v14, v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v15 = *(v7 + 8);
  v15(v10, v2);
  v16._countAndFlagsBits = 10;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  String.append(_:)(v30);

  v17 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v17, v3);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v18._object = 0xED00000A656E6F6ELL;
    v18._countAndFlagsBits = 0x203A6F7420202020;
    String.append(_:)(v18);
  }

  else
  {
    v19 = v27;
    (*(v7 + 32))(v27, v6, v2);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0x203A6F7420202020;
    v20._object = 0xE800000000000000;
    String.append(_:)(v20);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v21._countAndFlagsBits = 10;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    String.append(_:)(v28);

    v15(v19, v2);
  }

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v29._countAndFlagsBits = 0xD000000000000010;
  v29._object = 0x8000000100E5F350;
  v22 = v1 + *(*v1 + 120);
  swift_beginAccess();
  v23._countAndFlagsBits = Gliss.Progression.description.getter(*v22, *(v22 + 8));
  String.append(_:)(v23);

  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  String.append(_:)(v29);

  v25._countAndFlagsBits = 10528;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  return v32[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1009A94D8(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1009ABAD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t Gliss.Progression.description.getter(char a1, double a2)
{
  sub_10010FC20(&qword_1011AAE98, &qword_100EF3A48);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x6F69746365726964;
  v4._object = 0xEA00000000003D6ELL;
  String.append(_:)(v4);

  v5._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x3D65756C6176;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000014;
}

unint64_t sub_1009ABD78()
{
  result = qword_1011A8548;
  if (!qword_1011A8548)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8548);
  }

  return result;
}

unint64_t sub_1009ABDD4()
{
  result = qword_1011AB030;
  if (!qword_1011AB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB030);
  }

  return result;
}

unint64_t sub_1009ABE28()
{
  result = qword_1011AB038[0];
  if (!qword_1011AB038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011AB038);
  }

  return result;
}

uint64_t sub_1009ABE7C(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1009ABE98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1009ABEEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1009ABF50(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_1009ABF8C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t _s14descr1010964D9O11ProgressionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t _s14descr1010964D9O11ProgressionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_1009AC194(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1009AC1A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1009AC1FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1009AC258(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1009AC28C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1009AC4BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1009AC64C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10002C064(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1009AC28C(v13, a3, a4, &v12);
  v10 = v4;
  sub_10002C064(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1009AC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1009AC28C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1009AC704(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10002BC44(a3, a4);
          return sub_1009AC4BC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1009AC87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int64_t a9@<X8>, unsigned __int8 a10)
{
  v123 = a8;
  v118 = a7;
  v136 = a6;
  v122 = a4;
  v121 = a3;
  v120 = a2;
  v119 = a1;
  LODWORD(v12) = a10;
  v133 = type metadata accessor for URL.DirectoryHint();
  v13 = *(v133 - 8);
  __chkstk_darwin();
  v132 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v134 = &v108 - v15;
  v16 = type metadata accessor for URL();
  v141 = *(v16 - 8);
  v142 = v16;
  __chkstk_darwin();
  v139 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v115 = &v108 - v18;
  __chkstk_darwin();
  v137 = &v108 - v19;
  __chkstk_darwin();
  v113 = &v108 - v20;
  sub_10010FC20(&qword_1011AA638, &qword_100EF2518);
  __chkstk_darwin();
  v22 = &v108 - v21;
  v23 = type metadata accessor for URLComponents();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A70E8 != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    URLComponents.init(string:)();
    result = (*(v24 + 48))(v22, 1, v23);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v24 + 32))(v26, v22, v23);
      if (a5 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v112 = a9;
      v111 = v12;
      v110 = v23;
      v109 = v24;
      v108 = v26;
      if (v22 || *(v136 + 16))
      {
        v28 = [objc_opt_self() defaultManager];
        if (qword_1011A69A8 != -1)
        {
          swift_once();
        }

        v29 = sub_1000060E4(v142, static URL.tapToRadarDirectory);
        NSFileManager.createDirectoryIfNeeded(at:)(v29);
        v138 = 0;
      }

      else
      {
        v138 = 0;
      }

      a9 = 0;
      v12 = a5 & 0xC000000000000001;
      v23 = a5 & 0xFFFFFFFFFFFFFF8;
      v131 = _swiftEmptyArrayStorage;
      while (v22 != a9)
      {
        if (v12)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a9 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v30 = *(a5 + 8 * a9 + 32);
        }

        v24 = v30;
        v31 = a9 + 1;
        if (__OFADD__(a9, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v26 = sub_1009ADEE4(a9, v30);
        v33 = v32;

        ++a9;
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_10089C4F8(0, *(v131 + 2) + 1, 1, v131);
          }

          v24 = *(v131 + 2);
          v34 = *(v131 + 3);
          if (v24 >= v34 >> 1)
          {
            v131 = sub_10089C4F8((v34 > 1), v24 + 1, 1, v131);
          }

          v35 = v131;
          *(v131 + 2) = v24 + 1;
          v36 = &v35[16 * v24];
          *(v36 + 4) = v26;
          *(v36 + 5) = v33;
          a9 = v31;
        }
      }

      a5 = v136 + 64;
      v39 = 1 << *(v136 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v22 = v40 & *(v136 + 64);
      a9 = (v39 + 63) >> 6;
      v129 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v127 = (v13 + 8);
      v128 = (v13 + 104);
      v140 = (v141 + 8);
      v126 = (v141 + 56);
      v117 = (v141 + 32);
      v125 = (v141 + 48);

      v41 = 0;
      *&v42 = 136446210;
      v114 = v42;
      v116 = _swiftEmptyArrayStorage;
      v43 = v142;
      v44 = &off_1011A6000;
      v12 = v138;
      v130 = a9;
      v124 = a5;
      while (v22)
      {
        v13 = v41;
LABEL_35:
        v138 = v12;
        v45 = (v13 << 10) | (16 * __clz(__rbit64(v22)));
        v46 = (*(v136 + 48) + v45);
        v48 = *v46;
        v47 = v46[1];
        v49 = (*(v136 + 56) + v45);
        v23 = *v49;
        v50 = v49[1];

        sub_10002BC44(v23, v50);
        if (v44[309] != -1)
        {
          swift_once();
        }

        sub_1000060E4(v43, static URL.tapToRadarDirectory);
        v144[0] = 47;
        v144[1] = 0xE100000000000000;
        v51._countAndFlagsBits = v48;
        v135 = v47;
        v51._object = v47;
        String.append(_:)(v51);
        v53 = v132;
        v52 = v133;
        (*v128)(v132, v129, v133);
        sub_10000988C();
        v54 = v137;
        URL.appending<A>(path:directoryHint:)();
        (*v127)(v53, v52);

        v12 = v138;
        Data.write(to:options:)();
        v24 = v50;
        if (v12)
        {
          v55 = v142;
          if (qword_1011A69B0 != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          sub_1000060E4(v56, qword_1011AB0D8);
          swift_errorRetain();
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();

          v44 = &off_1011A6000;
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v138 = v23;
            v60 = v24;
            v61 = v59;
            v62 = swift_slowAlloc();
            v143 = v12;
            v144[0] = v62;
            *v61 = v114;
            swift_errorRetain();
            sub_10010FC20(&qword_1011AB640, L"D\v\a");
            v63 = String.init<A>(describing:)();
            v65 = sub_100010678(v63, v64, v144);

            *(v61 + 4) = v65;
            _os_log_impl(&_mh_execute_header, v57, v58, "Tap-to-Radar Attachment file write failed with error: %{public}s", v61, 0xCu);
            sub_10000959C(v62);
            v43 = v142;

            v24 = v60;
            v23 = v138;

            v44 = &off_1011A6000;

            (*v140)(v137, v43);
          }

          else
          {

            v43 = v55;
            (*v140)(v137, v55);
          }

          v12 = 0;
          v67 = 1;
          v66 = v134;
        }

        else
        {
          v66 = v134;
          v43 = v142;
          (*v117)(v134, v54, v142);
          v67 = 0;
          v44 = &off_1011A6000;
        }

        v26 = v135;
        v22 &= v22 - 1;
        (*v126)(v66, v67, 1, v43);

        sub_10002C064(v23, v24);
        v68 = (*v125)(v66, 1, v43);
        a5 = v124;
        if (v68 == 1)
        {
          sub_100028B08(v66);
          v41 = v13;
          a9 = v130;
        }

        else
        {
          v26 = 0;
          v69 = *v117;
          v24 = v113;
          (*v117)(v113, v66, v43);
          v69(v115, v24, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_10089CC1C(0, *(v116 + 2) + 1, 1, v116);
          }

          v23 = *(v116 + 2);
          v70 = *(v116 + 3);
          if (v23 >= v70 >> 1)
          {
            v116 = sub_10089CC1C((v70 > 1), v23 + 1, 1, v116);
          }

          v71 = v116;
          *(v116 + 2) = v23 + 1;
          v43 = v142;
          v69(&v71[((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v23], v115, v142);
          v41 = v13;
          v12 = 0;
          a9 = v130;
        }
      }

      while (1)
      {
        v13 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_69;
        }

        if (v13 >= a9)
        {
          break;
        }

        v22 = *(a5 + 8 * v13);
        ++v41;
        if (v22)
        {
          goto LABEL_35;
        }
      }

      v144[0] = v116;

      sub_1008A6438(v72);
      v73 = v144[0];
      v74 = *(v144[0] + 16);
      if (v74)
      {
        v144[0] = _swiftEmptyArrayStorage;
        sub_100015C24(0, v74, 0);
        v75 = *(v141 + 16);
        v76 = v144[0];
        v77 = (*(v141 + 80) + 32) & ~*(v141 + 80);
        v138 = v73;
        v78 = v73 + v77;
        v141 += 16;
        v79 = *(v141 + 56);
        do
        {
          v80 = v139;
          v81 = v142;
          v75(v139, v78, v142);
          v82 = URL.path.getter();
          v84 = v83;
          (*v140)(v80, v81);
          v144[0] = v76;
          v86 = v76[2];
          v85 = v76[3];
          if (v86 >= v85 >> 1)
          {
            sub_100015C24((v85 > 1), v86 + 1, 1);
            v76 = v144[0];
          }

          v76[2] = v86 + 1;
          v87 = &v76[2 * v86];
          v87[4] = v82;
          v87[5] = v84;
          v78 += v79;
          --v74;
        }

        while (v74);
      }

      else
      {

        v76 = _swiftEmptyArrayStorage;
      }

      sub_10010FC20(&qword_1011A7D38, &qword_100EFD9C0);
      v88 = *(type metadata accessor for URLQueryItem() - 8);
      v89 = *(v88 + 72);
      v90 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_100EE9520;
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      v92 = [objc_opt_self() mainBundle];
      v93 = [v92 bundleIdentifier];

      v94 = v123;
      if (v93)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      URLQueryItem.init(name:value:)();

      v144[0] = v131;
      v95 = sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
      v96 = sub_1008B2E78();
      BidirectionalCollection<>.joined(separator:)();
      URLQueryItem.init(name:value:)();

      v144[0] = v76;
      v141 = v96;
      v142 = v95;
      BidirectionalCollection<>.joined(separator:)();
      URLQueryItem.init(name:value:)();

      v97 = *(v94 + 16);
      v98 = _swiftEmptyArrayStorage;
      if (v97)
      {
        v138 = v91 + v90;
        v139 = v89;
        v140 = v91;
        v144[0] = _swiftEmptyArrayStorage;
        sub_100015C24(0, v97, 0);
        v98 = v144[0];
        v99 = (v94 + 32);
        do
        {
          v100 = *v99++;
          v143 = qword_100EF4050[v100];
          v101 = dispatch thunk of CustomStringConvertible.description.getter();
          v103 = v102;
          v144[0] = v98;
          v105 = v98[2];
          v104 = v98[3];
          if (v105 >= v104 >> 1)
          {
            sub_100015C24((v104 > 1), v105 + 1, 1);
            v98 = v144[0];
          }

          v98[2] = v105 + 1;
          v106 = &v98[2 * v105];
          v106[4] = v101;
          v106[5] = v103;
          --v97;
        }

        while (v97);
      }

      v144[0] = v98;
      BidirectionalCollection<>.joined(separator:)();

      URLQueryItem.init(name:value:)();

      v144[0] = v131;
      sub_1008A6344(v76);

      URLQueryItem.init(name:value:)();

      URLQueryItem.init(name:value:)();

      v107 = v108;
      URLComponents.queryItems.setter();
      URLComponents.url.getter();
      return (*(v109 + 8))(v107, v110);
    }
  }

  else
  {
    v37 = v142;
    v38 = *(v141 + 56);

    return v38(a9, 1, 1, v37);
  }

  return result;
}

uint64_t sub_1009ADA58()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v5 = &v8 - v4;
  v6 = type metadata accessor for URL();
  sub_100006080(v6, static URL.tapToRadarDirectory);
  sub_1000060E4(v6, static URL.tapToRadarDirectory);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor()
{
  if (qword_1011A69A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return sub_1000060E4(v0, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A69A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000060E4(v2, static URL.tapToRadarDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1009ADD24()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011AB0D8);
  sub_1000060E4(v0, qword_1011AB0D8);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_1009ADDCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100EF4050[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1009ADE54(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100EF4050[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1009ADEA0@<X0>(Swift::Int *a1@<X0>, MusicCore::TTR::Keyword_optional *a2@<X8>)
{
  result = _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_1009ADEE4(uint64_t a1, UIImage *a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A69A8 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v8, static URL.tapToRadarDirectory);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v22 = 0xD000000000000012;
  v23 = 0x8000000100E5F4E0;
  v21[1] = a1;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 1735420462;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10000988C();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v7, v4);

  v14 = UIImageJPEGRepresentation(a2, 85.0);
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    Data.write(to:options:)();
    sub_10002C064(v16, v18);
  }

  v19 = URL.path.getter();
  (*(v9 + 8))(v11, v8);
  return v19;
}

uint64_t _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if (a1 > 1723675)
  {
    if (a1 != 1947834)
    {
      if (a1 == 1723676)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1723672)
    {
      if (a1 == 1723674)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

unint64_t sub_1009AE3D4()
{
  result = qword_1011AB0F0;
  if (!qword_1011AB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB0F0);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_1009AE4E8, v5, v4);
}

uint64_t sub_1009AE4E8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = static MainActor.shared.getter();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_1009AE604;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E5ABB0, sub_1008D09E4, v6, &type metadata for Bool);
}

uint64_t sub_1009AE604()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1009B83B4, v3, v2);
}

void sub_1009AE764(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011A8628, &qword_100EED8F0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10000DD18(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100016270(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100016270(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100016270(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100016270(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1009AEA2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011A8628, &qword_100EED8F0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100016270(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100016270(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100016270(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

__int128 *CloudLibrary.EnablementContext.action.unsafeMutableAddressor()
{
  if (qword_1011A69B8 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 > 6u)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1011A6740 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = (v3 + 16);
  if (a1 > 6u)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v8)(v5, v7, v2);
    if (qword_1011A6740 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*v8)(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v9 = qword_101219808;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v10;
}

Swift::Int sub_1009AF48C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v1);
  return Hasher._finalize()();
}

Swift::Int sub_1009AF504(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v2);
  return Hasher._finalize()();
}

uint64_t sub_1009AF548@<X0>(Swift::Int *a1@<X0>, MusicCore::CloudLibrary::FailureType_optional *a2@<X8>)
{
  result = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  v2 = static CloudLibrary.StatusObserver.shared;
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = v4;
  v5 = sub_10010FC20(&qword_1011AB118, &qword_100EF4078);
  UserDefault.wrappedValue.getter(v5, &v7);
  if (v7 != 2 && (v7 & 1) != 0)
  {
LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  if (a1 >> 30 != 1)
  {
    if (a1 >> 30 != 2 || (a1 - 0x80000000) >= 3)
    {
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    goto LABEL_8;
  }

  return a1 & 1;
}

BOOL CloudLibrary.Status.shouldShowActionButton.getter(unint64_t a1)
{
  v1 = a1 >> 1 == 1073741825;
  if (a1 >> 30 != 2)
  {
    v1 = 0;
  }

  return !(a1 >> 30) || v1;
}

void (*CloudLibrary.Status.action.getter(unint64_t a1))()
{
  v1 = sub_1009AF724;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = sub_1009AF724;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void sub_1009AF724()
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
}

unint64_t CloudLibrary.Status.progress.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if ((a1 & 0xC0000000) != 0x40000000)
  {
    v1 = 0;
  }

  return v1 | (((a1 & 0xC0000000) != 0x40000000) << 32);
}

uint64_t sub_1009AF7F8()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v11[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v9 = v8;
  result = (*(v1 + 8))(v5, v0);
  *&static CloudLibrary.EnablementContext.action = v7;
  *(&static CloudLibrary.EnablementContext.action + 1) = v9;
  return result;
}

uint64_t static CloudLibrary.EnablementContext.action.getter()
{
  if (qword_1011A69B8 != -1)
  {
    swift_once();
  }

  v0 = static CloudLibrary.EnablementContext.action;

  return v0;
}

uint64_t sub_1009AFA44()
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = sub_1009AFAE0();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

double static CloudLibrary.StatusObserver.shared.getter()
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1009AFAE0()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011AB138, &qword_100EF40D8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v32[-v4];
  v34 = 2;
  v33[0] = 0xD000000000000014;
  v33[1] = 0x8000000100E5A600;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_10000988C();
  UserDefault.init(wrappedValue:defaults:key:)(&v34, v6, v33, &type metadata for String, &type metadata for Bool, v7, &v35);
  v8 = v36;
  v9 = v37;
  *(v1 + 16) = v35;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = _swiftEmptyArrayStorage;
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v10 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v35 = 0x80000000;

  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v10, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  sub_10010FC20(&unk_1011A9FB0, &unk_100EF1D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  if (qword_1011A6880 != -1)
  {
    swift_once();
  }

  v12 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  UIScreen.Dimensions.size.getter();
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  v15 = qword_1011A68A0;
  v16 = v12;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  UIScreen.Dimensions.size.getter();
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = MPCloudControllerCloudLibraryFailureDidChangeNotification;
  UIScreen.Dimensions.size.getter();
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v21;
  *(inited + 120) = v22;
  v23 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v24 = v17;

  v25 = v20;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_1009B8190, v23);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v26 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 sharedCloudController];
  v30 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v28, v29, 1, 1, sub_1009B8198, v30);

  return v1;
}

void sub_1009AFFE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v16);

    v24[4] = v20;
    v24[5] = v21;
    v25 = v22;
    v26 = v23;
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    sub_100014984(v24);
    if (v25 == 2)
    {
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v16);

        v7 = v16;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v16 = 2147483649;

        static Published.subscript.setter();
        sub_1009B19A0(v7);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v8);

    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_100014984(&v16);
    if ((BYTE2(v16) & 1) == 0)
    {
      v4 = [objc_opt_self() sharedCloudController];
      if (v4)
      {
        v5 = v4;
        *&v10 = sub_1009B81A0;
        *(&v10 + 1) = v2;
        *&v8 = _NSConcreteStackBlock;
        *(&v8 + 1) = 1107296256;
        *&v9 = sub_10000B378;
        *(&v9 + 1) = &unk_1010D5C48;
        v6 = _Block_copy(&v8);

        [v5 loadLastKnownEnableICMLErrorStatusWithCompletionHander:v6];

        _Block_release(v6);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_9:
  }
}

uint64_t sub_1009B0348(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1009B81A8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D5C98;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1009B80CC(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
  sub_100020674(&qword_1011AD960, &unk_1011AB610, &qword_100EF1E40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_1009B0658(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1 || !a2)
  {
    goto LABEL_5;
  }

  v3 = a2;
  v4 = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0([v3 integerValue]);
  if (v4 == 6)
  {

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v8);

    v5 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = 2147483651;

    static Published.subscript.setter();
    sub_1009B19A0(v5);
    return;
  }

  v6 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  v7 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;

  static Published.subscript.setter();
  sub_1009B19A0(v7);
}

double sub_1009B07F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1009B2094();
  }

  return result;
}

double sub_1009B0850()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = sub_10010FC20(&qword_1011AB118, &qword_100EF4078);
  UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v7);

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    static Published.subscript.setter();
    return sub_1009B19A0(v5);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = v1;
  v8 = v2;
  v3 = sub_10010FC20(&qword_1011AB118, &qword_100EF4078);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

double CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_10010FC20(&qword_1011AB118, &qword_100EF4078);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return sub_1009B0850();
}

void (*CloudLibrary.StatusObserver.hasDisregardedBanner.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = sub_10010FC20(&qword_1011AB118, &qword_100EF4078);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return sub_1009B0B28;
}

void sub_1009B0B28(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  sub_1009B0850();

  free(v1);
}

void CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10089CD9C(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_10089CD9C((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = sub_1002B700C;
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v21);

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  static Published.subscript.setter();
  sub_1009B19A0(v11);
  sub_10010FC20(&qword_1011AB128, &qword_100EF40C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_100067814(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011AB130, &qword_100EF40D0);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    sub_1009AEA2C(v15);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_1009B6D20;
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1001D5D0C;
    v21[3] = &unk_1010D5500;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009B0F18(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1011A69C8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_1011AB100);
    v10 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, v19, "Successfully enabled Cloud Library", v20, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1011A69C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, qword_1011AB100);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v3;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    aBlock[6] = a1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v15 = String.init<A>(describing:)();
    v17 = sub_100010678(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to enable Cloud Library with error=%s", v12, 0xCu);
    sub_10000959C(v14);
    v3 = v27;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = a1;
    aBlock[4] = sub_1009B8188;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D5C20;
    v25 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1009B80CC(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
    sub_100020674(&qword_1011AD960, &unk_1011AB610, &qword_100EF1E40, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v30 + 8))(v5, v3);
    return (*(v28 + 8))(v8, v29);
  }

  return result;
}

void sub_1009B1464(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = _swiftEmptyArrayStorage;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *(v7 - 8);
      v9 = a2 == 0;

      v8(&v9);

      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void CloudLibrary.StatusObserver.add(updateObserver:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 64);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      sub_1009B6D28(v8, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1009B6D60(v15);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return;
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v18 = a2;
  swift_unknownObjectWeakInit();
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v15);

  (*(a2 + 8))(v15[0], ObjectType, a2);
  sub_1009B6D28(v17, v16);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_10089CE0C(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13 >> 1)
  {
    a1 = sub_10089CE0C((v13 > 1), v14 + 1, 1, a1);
  }

  a1[2] = v14 + 1;
  sub_1008BDE58(v16, &a1[2 * v14 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  sub_1009B6D60(v17);
}

void CloudLibrary.StatusObserver.remove(updateObserver:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      sub_1009B6D28(v5, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1009B6D60(v8);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          sub_1008B4B28(v6, v9);
          sub_1009B6D60(v9);
          swift_endAccess();
          return;
        }
      }

      ++v6;
      v5 += 16;
      if (v4 == v6)
      {

        return;
      }
    }

    __break(1u);
  }
}

void sub_1009B1854(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double sub_1009B18D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;

  static Published.subscript.setter();
  return sub_1009B19A0(v3);
}

double sub_1009B19A0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  if (!_s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v12, a1))
  {
    if (qword_1011A69C8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000060E4(v3, qword_1011AB100);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v11);

      v8 = String.init<A>(describing:)();
      v10 = sub_100010678(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Status did change: %s", v6, 0xCu);
      sub_10000959C(v7);
    }

    return sub_1009B2D60();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1009B1C24(void *a1)
{
  swift_beginAccess();
  sub_10010FC20(&unk_1011AB138, &qword_100EF40D8);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_1009B1C9C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10010FC20(&unk_1011AB620, &unk_100EF4740);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_10010FC20(&unk_1011AB138, &qword_100EF40D8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  sub_10010FC20(&unk_1011AB138, &qword_100EF40D8);
  Published.projectedValue.getter();
  return swift_endAccess();
}

float sub_1009B1E94(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return *&v6;
    }

    v3 = HIDWORD(v2);
    goto LABEL_4;
  }

  if (v2 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v8);

    v5 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = 0x80000000;
    goto LABEL_8;
  }

  v3 = HIDWORD(v2);
  if (((v2 ^ a1) & 1) != 0 || (LODWORD(v6) = HIDWORD(v2), *(&a1 + 1) != *(&v2 + 1)))
  {
LABEL_4:
    if (v2)
    {
      v4 = (v3 << 32) | 0x40000001;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v8);

      v5 = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      v8 = v4;
LABEL_8:

      static Published.subscript.setter();
      v6 = sub_1009B19A0(v5);
    }
  }

  return *&v6;
}

float (*sub_1009B2030(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return sub_1009B2064;
}

float sub_1009B2064(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return sub_1009B1E94(v4);
}

void sub_1009B2094()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin();
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v48 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v46 = (&v42 - v6);
  v47 = type metadata accessor for DispatchTime();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v43 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 sharedCloudController];
  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v16 isUpdateInProgress];

  v19 = [v15 sharedCloudController];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 isInitialImport];

  v22 = v18 & v21;
  v23 = *(v0 + 88);
  if (v22 == 1)
  {
    if (!v23)
    {
      v24 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
      *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 1;
      v42 = v0;
      sub_1009B1E94(v24);
      sub_100009F78(0, &unk_1011AB5E0, OS_dispatch_source_ptr);
      sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
      (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInteractive(_:), v11);
      v25 = static OS_dispatch_queue.global(qos:)();
      (*(v12 + 8))(v14, v11);
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1009B80CC(&unk_1011AB5F0, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
      sub_10010FC20(&qword_1011AD940, &unk_100EF4730);
      sub_100020674(&unk_1011AB600, &qword_1011AD940, &unk_100EF4730, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

      (*(v43 + 8))(v10, v8);
      ObjectType = swift_getObjectType();
      v28 = v44;
      static DispatchTime.now()();
      v29 = v46;
      *v46 = 1;
      v31 = v49;
      v30 = v50;
      v32 = *(v49 + 104);
      v32(v29, enum case for DispatchTimeInterval.seconds(_:), v50);
      v33 = v48;
      *v48 = 1;
      v32(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v30);
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v34(v29, v30);
      (*(v45 + 8))(v28, v47);
      v35 = v42;
      aBlock[4] = sub_1009B8114;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010D59F0;
      v36 = _Block_copy(aBlock);
      v37 = v35;

      v38 = v51;
      j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
      v39 = v53;
      sub_100A59A1C();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v36);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v38, v54);

      v40 = *(v35 + 88);
      *(v37 + 88) = v26;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v23)
    {
      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    sub_1009B1E94(v41);
  }
}

void sub_1009B2864(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_1009B811C;
    v5[5] = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1009B2D0C;
    v5[3] = &unk_1010D5A18;
    v4 = _Block_copy(v5);

    [v3 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009B2958(uint64_t a1, float a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1009B8124;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D5A68;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1009B80CC(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
  sub_100020674(&qword_1011AD960, &unk_1011AB610, &qword_100EF1E40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_1009B2C78(uint64_t a1, float a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_1009B2030(v5);
    if (*v3 != 2)
    {
      *(v3 + 4) = a2;
    }

    (v4)(v5, 0);
  }
}

double sub_1009B2D0C(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);

  return result;
}

double sub_1009B2D60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v1 = v10[0];
  swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_1009B6D28(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      sub_1009B6D60(v8);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *CloudLibrary.StatusObserver.deinit()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  v3 = sub_10010FC20(&unk_1011AB138, &qword_100EF40D8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1009B2F7C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v9 = qword_101219808;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v10;
}

BOOL static CloudLibrary.PresentationStyle.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

BOOL sub_1009B34CC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

void sub_1009B3558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (qword_1011A69C0 != -1)
  {
    swift_once();
    v4 = a2;
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(v4, a3);
}

double sub_1009B35C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = sub_10010FC20(&qword_1011A8AB0, &qword_100EEE790);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v6, a3, a4, sub_1009B83E4, v14);

  return result;
}

void static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = a1;
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v20[4] = v16;
  v20[5] = v17;
  v20[6] = v18;
  v20[7] = v19;
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  sub_100014984(v20);
  if (BYTE2(v20[0]))
  {
    if (!a4)
    {
      return;
    }

    v10 = 1;
LABEL_9:
    a4(v10);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v11);

  v16 = v11[4];
  v17 = v11[5];
  v18 = v11[6];
  v19 = v11[7];
  v12 = v11[0];
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  sub_100014984(&v12);
  if ((BYTE9(v12) & 1) == 0)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    goto LABEL_9;
  }

  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v9, a2, a3, a4, a5);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_1009B3980, v5, v4);
}

uint64_t sub_1009B3980(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = static MainActor.shared.getter();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_1009B3A9C;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD000000000000045, 0x8000000100E5FAD0, sub_1009B7858, v6, &type metadata for Bool);
}

uint64_t sub_1009B3A9C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1009B3BFC, v3, v2);
}

uint64_t sub_1009B3BFC()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1009B3C60(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = sub_10010FC20(&qword_1011A8AB0, &qword_100EEE790);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v21[-v9];
  v11 = __chkstk_darwin();
  v13 = &v21[-v12];
  v14 = *(v6 + 16);
  v14(&v21[-v12], a1, v5, v11);
  (v14)(v10, v13, v5);
  (v14)(v8, v13, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v13, v5);
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v26);

  v34[4] = v30;
  v34[5] = v31;
  v34[6] = v32;
  v34[7] = v33;
  v34[0] = v26;
  v34[1] = v27;
  v34[2] = v28;
  v34[3] = v29;
  sub_100014984(v34);
  if (BYTE2(v34[0]))
  {
    v17 = *(v6 + 8);
    v17(v10, v5);
    LOBYTE(v26) = 1;
    CheckedContinuation.resume(returning:)();

    return (v17)(v8, v5);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v25);

    v30 = v25[4];
    v31 = v25[5];
    v32 = v25[6];
    v33 = v25[7];
    v26 = v25[0];
    v27 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
    sub_100014984(&v26);
    if (BYTE9(v26))
    {
      v20 = *(v6 + 8);
      v20(v10, v5);
      _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v22, v23, v24, sub_1009B8130, v16);

      return (v20)(v8, v5);
    }

    else
    {
      LOBYTE(v25[0]) = 0;
      CheckedContinuation.resume(returning:)();

      v19 = *(v6 + 8);
      v19(v8, v5);
      return (v19)(v10, v5);
    }
  }
}

char *sub_1009B4014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + qword_1011AB358) = 0;
  type metadata accessor for EnableCloudLibraryView.Model(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v14 = 0;
  v14[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  swift_beginAccess();
  sub_100030444(a5, a6);
  _s3__C24UIUserInterfaceSizeClassOMa_0(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v16 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v17 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v15 = 0;
  v15[1] = 0;
  sub_100020438(v16, v17);
  *(v6 + qword_1011AB350) = v13;
  sub_1009B80CC(&qword_1011AB630, type metadata accessor for EnableCloudLibraryView.Model, &unk_100EF45C4);
  swift_retain_n();
  v32 = ObservedObject.init(wrappedValue:)();
  v33 = v18;
  v19 = UIHostingController.init(rootView:)();
  v20 = *&v19[qword_1011AB350];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = (v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v23 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v24 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v22 = sub_1009B8180;
  v22[1] = v21;
  v25 = v19;

  sub_100020438(v23, v24);

  sub_1009B4604();
  v26 = [v25 presentingViewController];
  if (v26)
  {
    v27 = v26;
    sub_10010FC20(&qword_1011AB638, &unk_100EF4750);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100EBC6B0;
    *(v28 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    UIViewController.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();
  }

  v29 = [v25 presentationController];

  if (v29)
  {
    sub_10010FC20(&qword_1011AB638, &unk_100EF4750);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100EBC6B0;
    *(v30 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    UIPresentationController.registerForTraitChanges(_:action:)();

    sub_100020438(a5, a6);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_100020438(a5, a6);
  }

  return v25;
}

void sub_1009B434C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1009B43B0(uint64_t a1)
{
  *(a1 + qword_1011AB358) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1009B4418(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CloudLibraryViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 navigationItem];
  v3 = sub_1009B44E0();
  [v2 setLeftBarButtonItem:v3];

  v4 = [v1 navigationItem];
  [v4 setLargeTitleDisplayMode:2];
}

objc_class *sub_1009B44E0()
{
  v1 = qword_1011AB358;
  v2 = *(v0 + qword_1011AB358);
  if (v2)
  {
    v3 = *(v0 + qword_1011AB358);
  }

  else
  {
    sub_100009F78(0, &unk_1011AB5D0, UIBarButtonItem_ptr);
    sub_100009F78(0, &qword_1011A7D90, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9.is_nil = 0;
    v5.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1009B4604()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v3 = [v1 traitCollection], v2, v3) || (v4 = objc_msgSend(v0, "presentationController")) != 0 && (v5 = v4, v3 = objc_msgSend(v4, "traitCollection"), v5, v3))
  {

    [v3 horizontalSizeClass];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }
}

void sub_1009B470C(void *a1)
{
  v1 = a1;
  sub_1009B4604();
}

void sub_1009B4754()
{

  v1 = *(v0 + qword_1011AB358);
}

id sub_1009B4794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudLibraryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1009B47CC(uint64_t a1)
{

  v2 = *(a1 + qword_1011AB358);
}

uint64_t sub_1009B4818()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1009B48EC()
{

  sub_100020438(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model__horizontalSizeClass;
  v2 = sub_10010FC20(&qword_1011AB5C8, &qword_100EF4728);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100020438(*(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss), *(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1009B49C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnableCloudLibraryView.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1009B4A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&qword_1011AB4E8, &qword_100EF4600);
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = sub_10010FC20(&qword_1011AB4F0, &qword_100EF4608) - 8;
  __chkstk_darwin();
  v10 = &v33 - v9;
  *v7 = static Axis.Set.vertical.getter();
  v11 = sub_10010FC20(&qword_1011AB4F8, &qword_100EF4610);
  sub_1009B4C98(a1, a2, &v7[*(v11 + 44)]);
  v12 = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v34);

  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10003D17C(v7, v10, &qword_1011AB4E8, &qword_100EF4600);
  v21 = &v10[*(v8 + 44)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = static Edge.Set.bottom.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v34);

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10003D17C(v10, a3, &qword_1011AB4F0, &qword_100EF4608);
  result = sub_10010FC20(&qword_1011AB500, &qword_100EF4660);
  v32 = a3 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_1009B4C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  sub_10010FC20(&qword_1011AB508, &qword_100EF4668);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v25 - v7;
  sub_10010FC20(&qword_1011AB510, &qword_100EF4670);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v25 - v11;
  sub_10010FC20(&qword_1011AB518, &qword_100EF4678);
  __chkstk_darwin();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v25 - v15;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_10010FC20(&qword_1011AB520, &qword_100EF4680);
  sub_1009B5034(a1, a2, &v16[*(v17 + 44)]);
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = sub_10010FC20(&qword_1011AB528, &qword_100EF4688);
  sub_1009B55F4(a1, a2, &v12[*(v18 + 44)]);
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v19 = sub_10010FC20(&qword_1011AB530, &qword_100EF4690);
  sub_1009B5CE4(a1, a2, &v8[*(v19 + 44)]);
  v20 = v14;
  v25 = v14;
  sub_1000089F8(v16, v14, &qword_1011AB518, &qword_100EF4678);
  sub_1000089F8(v12, v10, &qword_1011AB510, &qword_100EF4670);
  v21 = v6;
  sub_1000089F8(v8, v6, &qword_1011AB508, &qword_100EF4668);
  v22 = v26;
  sub_1000089F8(v20, v26, &qword_1011AB518, &qword_100EF4678);
  v23 = sub_10010FC20(&qword_1011AB538, &qword_100EF4698);
  sub_1000089F8(v10, v22 + *(v23 + 48), &qword_1011AB510, &qword_100EF4670);
  sub_1000089F8(v21, v22 + *(v23 + 64), &qword_1011AB508, &qword_100EF4668);
  sub_1000095E8(v8, &qword_1011AB508, &qword_100EF4668);
  sub_1000095E8(v12, &qword_1011AB510, &qword_100EF4670);
  sub_1000095E8(v16, &qword_1011AB518, &qword_100EF4678);
  sub_1000095E8(v21, &qword_1011AB508, &qword_100EF4668);
  sub_1000095E8(v10, &qword_1011AB510, &qword_100EF4670);
  return sub_1000095E8(v25, &qword_1011AB518, &qword_100EF4678);
}

uint64_t sub_1009B5034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BorderedProminentButtonStyle();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011AB540, &qword_100EF46A0);
  v34 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v30 - v11;
  v33 = sub_10010FC20(&qword_1011AB548, &qword_100EF46A8);
  v38 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v30 - v14;
  v40 = static HorizontalAlignment.center.getter();
  v42 = 0;
  sub_1009B650C(&v52);
  v45 = *&v53[16];
  v46 = *&v53[32];
  v47[0] = *&v53[48];
  *(v47 + 9) = *&v53[57];
  v43 = v52;
  v44 = *v53;
  *(v49 + 9) = *&v53[57];
  v48[2] = *&v53[16];
  v48[3] = *&v53[32];
  v49[0] = *&v53[48];
  v48[0] = v52;
  v48[1] = *v53;
  sub_1000089F8(&v43, &v50, &qword_1011AB5B0, &qword_100EF46E0);
  sub_1000095E8(v48, &qword_1011AB5B0, &qword_100EF46E0);
  *(&v41[2] + 7) = v45;
  *(&v41[3] + 7) = v46;
  *(&v41[4] + 7) = v47[0];
  v41[5] = *(v47 + 9);
  *(v41 + 7) = v43;
  *(&v41[1] + 7) = v44;
  v39 = v42;
  v31 = Image.init(_:bundle:)();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  sub_10010FC20(&qword_1011AB570, &qword_100EF46C8);
  sub_1009B7FBC();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_100020674(&qword_1011AB590, &qword_1011AB540, &qword_100EF46A0, &protocol conformance descriptor for Button<A>);
  sub_1009B80CC(&qword_1011AB598, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v16 = v37;
  v17 = v35;
  View.buttonStyle<A>(_:)();
  (*(v36 + 8))(v9, v17);
  (*(v34 + 8))(v12, v10);
  v18 = *(v38 + 16);
  v19 = v32;
  v20 = v33;
  v18(v32, v16, v33);
  *&v50 = v40;
  *(&v50 + 1) = 0x4020000000000000;
  v51[0] = v39;
  *&v51[1] = v41[0];
  *&v51[17] = v41[1];
  *&v51[33] = v41[2];
  *&v51[81] = v41[5];
  *&v51[65] = v41[4];
  *&v51[49] = v41[3];
  v21 = v50;
  v22 = *v51;
  v23 = *&v51[32];
  *(a3 + 32) = *&v51[16];
  *(a3 + 48) = v23;
  *a3 = v21;
  *(a3 + 16) = v22;
  v24 = *&v51[48];
  v25 = *&v51[64];
  v26 = *&v51[80];
  *(a3 + 112) = v51[96];
  *(a3 + 80) = v25;
  *(a3 + 96) = v26;
  *(a3 + 64) = v24;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = v31;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v27 = sub_10010FC20(&qword_1011AB5C0, &qword_100EF4720);
  v18((a3 + *(v27 + 96)), v19, v20);
  sub_1000089F8(&v50, &v52, &qword_1011AB560, &qword_100EF46C0);
  v28 = *(v38 + 8);

  v28(v37, v20);
  v28(v19, v20);

  *&v53[33] = v41[2];
  *&v53[49] = v41[3];
  *&v53[65] = v41[4];
  v54 = v41[5];
  *&v53[1] = v41[0];
  *&v52 = v40;
  *(&v52 + 1) = 0x4020000000000000;
  v53[0] = v39;
  *&v53[17] = v41[1];
  return sub_1000095E8(&v52, &qword_1011AB560, &qword_100EF46C0);
}

uint64_t sub_1009B55F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = type metadata accessor for BorderedProminentButtonStyle();
  v51 = *(v49 - 8);
  __chkstk_darwin();
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10010FC20(&qword_1011AB540, &qword_100EF46A0);
  v46 = *(v44 - 8);
  __chkstk_darwin();
  v8 = v40 - v7;
  v9 = sub_10010FC20(&qword_1011AB548, &qword_100EF46A8);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin();
  v42 = v40 - v10;
  v48 = sub_10010FC20(&qword_1011AB550, &qword_100EF46B0) - 8;
  __chkstk_darwin();
  v50 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v40 - v12;
  __chkstk_darwin();
  v45 = v40 - v14;
  v47 = static HorizontalAlignment.center.getter();
  v59 = 0;
  sub_1009B650C(&v56);
  v62 = *&v57[2];
  v63 = *&v57[4];
  v64[0] = *&v57[6];
  *(v64 + 9) = *(&v57[7] + 1);
  v60 = v56;
  v61 = *v57;
  *(v66 + 9) = *(&v57[7] + 1);
  v65[2] = *&v57[2];
  v65[3] = *&v57[4];
  v66[0] = *&v57[6];
  v65[0] = v56;
  v65[1] = *v57;
  sub_1000089F8(&v60, &v54, &qword_1011AB5B0, &qword_100EF46E0);
  sub_1000095E8(v65, &qword_1011AB5B0, &qword_100EF46E0);
  *(&v58[2] + 7) = v62;
  *(&v58[3] + 7) = v63;
  *(&v58[4] + 7) = v64[0];
  v58[5] = *(v64 + 9);
  *(v58 + 7) = v60;
  *(&v58[1] + 7) = v61;
  v41 = v59;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v40[1] = a2;

  sub_10010FC20(&qword_1011AB570, &qword_100EF46C8);
  sub_1009B7FBC();
  Button.init(action:label:)();
  v16 = v43;
  BorderedProminentButtonStyle.init()();
  sub_100020674(&qword_1011AB590, &qword_1011AB540, &qword_100EF46A0, &protocol conformance descriptor for Button<A>);
  sub_1009B80CC(&qword_1011AB598, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v17 = v42;
  v18 = v44;
  v19 = v49;
  View.buttonStyle<A>(_:)();
  (*(v51 + 8))(v16, v19);
  (*(v46 + 8))(v8, v18);
  LOBYTE(v8) = static Edge.Set.top.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v56);

  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v52 + 32))(v13, v17, v53);
  v28 = &v13[*(v48 + 44)];
  *v28 = v8;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = v45;
  sub_10003D17C(v13, v45, &qword_1011AB550, &qword_100EF46B0);
  v30 = v50;
  sub_1000089F8(v29, v50, &qword_1011AB550, &qword_100EF46B0);
  v31 = v47;
  *&v54 = v47;
  *(&v54 + 1) = 0x4020000000000000;
  LOBYTE(a2) = v41;
  v55[0] = v41;
  *&v55[1] = v58[0];
  *&v55[17] = v58[1];
  *&v55[33] = v58[2];
  *&v55[81] = v58[5];
  *&v55[65] = v58[4];
  *&v55[49] = v58[3];
  v32 = v54;
  v33 = *v55;
  v34 = *&v55[32];
  *(a3 + 32) = *&v55[16];
  *(a3 + 48) = v34;
  *a3 = v32;
  *(a3 + 16) = v33;
  v35 = *&v55[48];
  v36 = *&v55[64];
  v37 = *&v55[80];
  *(a3 + 112) = v55[96];
  *(a3 + 80) = v36;
  *(a3 + 96) = v37;
  *(a3 + 64) = v35;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  v38 = sub_10010FC20(&qword_1011AB5B8, &qword_100EF4718);
  sub_1000089F8(v30, a3 + *(v38 + 64), &qword_1011AB550, &qword_100EF46B0);
  sub_1000089F8(&v54, &v56, &qword_1011AB560, &qword_100EF46C0);
  sub_1000095E8(v29, &qword_1011AB550, &qword_100EF46B0);
  sub_1000095E8(v30, &qword_1011AB550, &qword_100EF46B0);
  *(&v57[4] + 1) = v58[2];
  *(&v57[6] + 1) = v58[3];
  *(&v57[8] + 1) = v58[4];
  *(&v57[10] + 1) = v58[5];
  *(v57 + 1) = v58[0];
  *&v56 = v31;
  *(&v56 + 1) = 0x4020000000000000;
  LOBYTE(v57[0]) = a2;
  *(&v57[2] + 1) = v58[1];
  return sub_1000095E8(&v56, &qword_1011AB560, &qword_100EF46C0);
}

uint64_t sub_1009B5CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for BorderedProminentButtonStyle();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10010FC20(&qword_1011AB540, &qword_100EF46A0);
  v52 = *(v50 - 8);
  __chkstk_darwin();
  v10 = &v44 - v9;
  v58 = sub_10010FC20(&qword_1011AB548, &qword_100EF46A8);
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v46 = &v44 - v11;
  v53 = sub_10010FC20(&qword_1011AB550, &qword_100EF46B0) - 8;
  __chkstk_darwin();
  v57 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v44 - v13;
  __chkstk_darwin();
  v51 = &v44 - v15;
  v16 = sub_10010FC20(&qword_1011AB558, &qword_100EF46B8);
  v48 = *(v16 - 8);
  v49 = v16;
  __chkstk_darwin();
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v44 - v18;
  static Axis.Set.vertical.getter();
  v60 = a1;
  v61 = a2;
  sub_10010FC20(&qword_1011AB560, &qword_100EF46C0);
  sub_100020674(&qword_1011AB568, &qword_1011AB560, &qword_100EF46C0, &protocol conformance descriptor for VStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  sub_10010FC20(&qword_1011AB570, &qword_100EF46C8);
  sub_1009B7FBC();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_100020674(&qword_1011AB590, &qword_1011AB540, &qword_100EF46A0, &protocol conformance descriptor for Button<A>);
  sub_1009B80CC(&qword_1011AB598, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v20 = v46;
  v21 = v50;
  v22 = v54;
  View.buttonStyle<A>(_:)();
  (*(v55 + 8))(v8, v22);
  (*(v52 + 8))(v10, v21);
  LOBYTE(v8) = static Edge.Set.top.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v62);

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v56 + 32))(v14, v20, v58);
  v31 = &v14[*(v53 + 44)];
  *v31 = v8;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = v51;
  sub_10003D17C(v14, v51, &qword_1011AB550, &qword_100EF46B0);
  v34 = v48;
  v33 = v49;
  v35 = *(v48 + 16);
  v36 = v47;
  v37 = v45;
  v35(v47, v45, v49);
  v38 = v57;
  sub_1000089F8(v32, v57, &qword_1011AB550, &qword_100EF46B0);
  v39 = v59;
  v35(v59, v36, v33);
  v40 = sub_10010FC20(&unk_1011AB5A0, &qword_100EF46D8);
  v41 = &v39[*(v40 + 48)];
  *v41 = 0;
  v41[8] = 1;
  sub_1000089F8(v38, &v39[*(v40 + 64)], &qword_1011AB550, &qword_100EF46B0);
  sub_1000095E8(v32, &qword_1011AB550, &qword_100EF46B0);
  v42 = *(v34 + 8);
  v42(v37, v33);
  sub_1000095E8(v38, &qword_1011AB550, &qword_100EF46B0);
  return (v42)(v36, v33);
}

double sub_1009B63BC@<D0>(uint64_t a3@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v17 = 0;
  sub_1009B650C(&v11);
  v20 = v13;
  v21 = v14;
  v22[0] = v15[0];
  *(v22 + 9) = *(v15 + 9);
  v18 = v11;
  v19 = v12;
  *(v24 + 9) = *(v15 + 9);
  v23[2] = v13;
  v23[3] = v14;
  v24[0] = v15[0];
  v23[0] = v11;
  v23[1] = v12;
  sub_1000089F8(&v18, &v10, &qword_1011AB5B0, &qword_100EF46E0);
  sub_1000095E8(v23, &qword_1011AB5B0, &qword_100EF46E0);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22[0];
  *&v16[80] = *(v22 + 9);
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a3 + 49) = *&v16[32];
  *(a3 + 65) = v5;
  v6 = *&v16[80];
  *(a3 + 81) = *&v16[64];
  *(a3 + 97) = v6;
  result = *&v16[16];
  v8 = *v16;
  *(a3 + 33) = *&v16[16];
  v9 = v17;
  *a3 = v4;
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = v9;
  *(a3 + 17) = v8;
  return result;
}

double sub_1009B650C@<D0>(uint64_t a2@<X8>)
{
  sub_10000988C();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.largeTitle.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_10011895C(v3, v5, v7 & 1);

  static Font.Weight.bold.getter();
  v13 = Text.fontWeight(_:)();
  v37 = v14;
  v38 = v13;
  v36 = v15;
  v39 = v16;
  sub_10011895C(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();

  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v10) = v20;
  static Font.title3.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;

  sub_10011895C(v17, v19, v10 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v26 = Text.foregroundStyle<A>(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10011895C(v21, v23, v25 & 1);

  v33 = swift_getKeyPath();
  *a2 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = v26;
  *(a2 + 56) = v28;
  *(a2 + 64) = v30 & 1;
  *(a2 + 72) = v32;
  *(a2 + 80) = v33;
  *(a2 + 88) = 1;
  sub_10021D0C0(v38, v37, v36 & 1);

  sub_10021D0C0(v26, v28, v30 & 1);

  sub_10011895C(v26, v28, v30 & 1);

  sub_10011895C(v38, v37, v36 & 1);

  return result;
}

void sub_1009B67E8(uint64_t a1, uint64_t a2)
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(*(a2 + 48), *(a2 + 56));
  v3 = a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss;
  v4 = *(a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  if (v4)
  {
    v5 = *(v3 + 8);

    v4(v6);

    sub_100020438(v4, v5);
  }
}

__n128 sub_1009B6894@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1011A69B8 != -1)
  {
    swift_once();
  }

  v24 = static CloudLibrary.EnablementContext.action;
  sub_10000988C();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v7 = Text.bold()();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10011895C(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v23[64];
  *(a1 + 153) = *&v23[80];
  *(a1 + 169) = *&v23[96];
  *(a1 + 184) = *(&v30 + 1);
  *(a1 + 73) = *v23;
  *(a1 + 89) = *&v23[16];
  result = *&v23[32];
  *(a1 + 105) = *&v23[32];
  *(a1 + 121) = *&v23[48];
  return result;
}

uint64_t sub_1009B6A90()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011AB100);
  sub_1000060E4(v0, qword_1011AB100);
  return Logger.init(subsystem:category:)();
}

void sub_1009B6B10(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1009B6B90(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

BOOL _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 >> 30)
  {
    if (a1 >> 30 == 1)
    {
      if ((a2 & 0xC0000000) == 0x40000000)
      {
        return (*(&a1 + 1) == *(&a2 + 1)) & (a2 ^ a1 ^ 1);
      }

      return 0;
    }

    if (a1 <= 2147483649)
    {
      if (a1 == 0x80000000)
      {
        return a2 == 0x80000000;
      }

      else
      {
        return a2 == 2147483649;
      }
    }

    else if (a1 == 2147483650)
    {
      return a2 == 2147483650;
    }

    else
    {
      if (a1 == 2147483651)
      {
        return a2 == 2147483651;
      }

      return a2 == 2147483652;
    }
  }

  else
  {
    if ((a2 & 0xC0000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(unint64_t a1)
{
  if (a1 > 0xFFFFFFFFFFFFFFF9)
  {
    return ~a1;
  }

  else
  {
    return 6;
  }
}

void _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v79 = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v77[1] = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  v77[0] = *(v10 - 8);
  __chkstk_darwin();
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v77 - v13;
  v15 = CloudLibrary.EnablementContext.title.getter(a1);
  v17 = v16;
  v18 = CloudLibrary.EnablementContext.message.getter(a1);
  v20 = v19;
  v78 = a3;
  if (a3)
  {
    v21 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();

    v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    v24 = v77[0];
    (*(v77[0] + 16))(v12, v14, v10);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v25 = qword_101219808;
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v14, v10);
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v27 = a5;
    sub_100030444(a4, a5);
    v28 = String._bridgeToObjectiveC()();

    v84 = sub_1009B8134;
    v85 = v26;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_10027D328;
    v83 = &unk_1010D5AE0;
    v29 = _Block_copy(&aBlock);

    v30 = objc_opt_self();
    v31 = [v30 actionWithTitle:v28 style:1 handler:v29];
    _Block_release(v29);

    [v23 addAction:v31];
    if (qword_1011A69B8 != -1)
    {
      swift_once();
    }

    v32 = swift_allocObject();
    *(v32 + 16) = a4;
    *(v32 + 24) = v27;
    sub_100030444(a4, v27);
    v33 = String._bridgeToObjectiveC()();
    v84 = sub_1009B8168;
    v85 = v32;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_10027D328;
    v83 = &unk_1010D5B30;
    v34 = _Block_copy(&aBlock);

    v35 = [v30 actionWithTitle:v33 style:0 handler:v34];
    _Block_release(v34);

    [v23 addAction:v35];
    v36 = v78;
    v37 = v79;
    if (v78 != 1)
    {
      v38 = v78;
      [v23 setPreferredStyle:0];
      [v38 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = [v23 popoverPresentationController];
      if (v47)
      {
        v48 = v47;
        [v47 setSourceView:v38];
        [v48 setSourceRect:{v40, v42, v44, v46}];
        sub_1009B8170(v36);
        [v48 setPermittedArrowDirections:15];
      }

      sub_1009B8170(v36);
    }

    v49 = *(v37 + 80);
    if (v49)
    {
      v50 = *(v37 + 88);
      v51 = qword_1011A6AC8;

      if (v51 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000060E4(v52, qword_1011AE4E0);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Deferring presentation…", v55, 2u);
      }

      v56 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_100A8F4C0;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_100A90460;
      v83 = &unk_1010D5B58;
      v57 = _Block_copy(&aBlock);
      v58 = [v56 initWithTimeout:v57 interruptionHandler:10.0];
      _Block_release(v57);

      sub_10012B7A8(v37, &aBlock);
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      sub_10012B828(&aBlock, v59 + 24);
      *(v59 + 120) = v23;
      *(v59 + 128) = 1;
      *(v59 + 129) = v36 != 1;
      *(v59 + 136) = 0;
      *(v59 + 144) = 0;
      v60 = v58;
      v61 = v23;
      v49(v37, v61, sub_1008D9BB8, v59);
      sub_100020438(v49, v50);

LABEL_22:

      return;
    }

    sub_100A8D9A0(v23, 1, (v36 != 1), 0, 0);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CloudLibraryViewController(0));
    sub_100030444(a4, a5);
    v62 = sub_1009B4014(v15, v17, v18, v20, a4, a5);
    v78 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v62];
    [v78 setModalPresentationStyle:2];
    [v78 setModalPresentationCapturesStatusBarAppearance:1];
    v63 = v79;
    v64 = *(v79 + 80);
    if (v64)
    {
      v65 = *(v79 + 88);
      v66 = qword_1011A6AC8;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_1000060E4(v67, qword_1011AE4E0);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Deferring presentation…", v70, 2u);
      }

      v71 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_100A8F4C0;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_100A90460;
      v83 = &unk_1010D5BA8;
      v72 = _Block_copy(&aBlock);
      v73 = [v71 initWithTimeout:v72 interruptionHandler:10.0];
      _Block_release(v72);

      sub_10012B7A8(v63, &aBlock);
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      sub_10012B828(&aBlock, v74 + 24);
      *(v74 + 120) = v78;
      *(v74 + 128) = 256;
      *(v74 + 136) = 0;
      *(v74 + 144) = 0;
      v60 = v73;
      v75 = v78;
      v64(v63, v75, sub_1008D9CA4, v74);
      sub_100020438(v64, v65);

      goto LABEL_22;
    }

    sub_100A8D9A0(v78, 0, 1, 0, 0);

    v76 = v78;
  }
}

unint64_t sub_1009B7868()
{
  result = qword_1011AB148;
  if (!qword_1011AB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB148);
  }

  return result;
}

unint64_t sub_1009B78C0()
{
  result = qword_1011AB150;
  if (!qword_1011AB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.UpdateContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.UpdateContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.Status(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 536870910);
  }

  if ((((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFFu) >= 0x1FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFD)
  {
    *result = a2 - 536870910;
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 8 * ((-a2 >> 2) & 0x7FFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t sub_1009B7A98(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return ((*a1 >> 29) & 0xFFFFFFF8 | *a1 & 7) + 2;
  }
}

unint64_t *sub_1009B7AC8(unint64_t *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFF00000007 | (a2 << 30);
  }

  else
  {
    *result = ((a2 - 2) | ((a2 - 2) << 29)) & 0xFFFFFFFF00000007 | 0x80000000;
  }

  return result;
}

void sub_1009B7B44(uint64_t a1)
{
  sub_1009B7C14();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1009B7C14()
{
  if (!qword_1011AB190)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AB190);
    }
  }
}

uint64_t sub_1009B7C64(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1009B7C7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1009B7CD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1009B7DE4(uint64_t a1)
{
  sub_1009B7E8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1009B7E8C(uint64_t a1)
{
  if (!qword_1011AB400)
  {
    _s3__C24UIUserInterfaceSizeClassOMa_0(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1011AB400);
    }
  }
}

uint64_t sub_1009B7EF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1009B7F40(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

unint64_t sub_1009B7FBC()
{
  result = qword_1011AB578;
  if (!qword_1011AB578)
  {
    sub_1001109D0(&qword_1011AB570, &qword_100EF46C8);
    sub_1009B8048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB578);
  }

  return result;
}

unint64_t sub_1009B8048()
{
  result = qword_1011AB580;
  if (!qword_1011AB580)
  {
    sub_1001109D0(&qword_1011AB588, &qword_100EF46D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB580);
  }

  return result;
}

uint64_t sub_1009B80CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1009B8134()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}