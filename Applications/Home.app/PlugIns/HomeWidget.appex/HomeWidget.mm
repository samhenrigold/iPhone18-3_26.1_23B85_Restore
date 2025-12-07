uint64_t sub_100001D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10009D1C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != enum case for ServiceKind.airPurifier(_:) && v8 != enum case for ServiceKind.fan(_:) && v8 != enum case for ServiceKind.faucet(_:) && v8 != enum case for ServiceKind.heaterCooler(_:) && v8 != enum case for ServiceKind.humidifierDehumidifier(_:) && v8 != enum case for ServiceKind.irrigationSystem(_:))
  {
    if (v8 != enum case for ServiceKind.lightbulb(_:))
    {
      if (v8 == enum case for ServiceKind.microphone(_:))
      {
        goto LABEL_13;
      }

      if (v8 == enum case for ServiceKind.outlet(_:))
      {
        goto LABEL_11;
      }

      if (v8 == enum case for ServiceKind.speaker(_:))
      {
LABEL_13:
        v9 = &enum case for CharacteristicKind.mute(_:);
        goto LABEL_8;
      }

      if (v8 != enum case for ServiceKind.switch(_:))
      {
        if (v8 != enum case for ServiceKind.targetControl(_:) && v8 != enum case for ServiceKind.television(_:) && v8 != enum case for ServiceKind.valve(_:) && v8 != enum case for ServiceKind.ventilationFan(_:))
        {
          v14 = sub_10009D464();
          (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
          return (*(v5 + 8))(v7, v4);
        }

        goto LABEL_7;
      }
    }

LABEL_11:
    v9 = &enum case for CharacteristicKind.powerState(_:);
    goto LABEL_8;
  }

LABEL_7:
  v9 = &enum case for CharacteristicKind.active(_:);
LABEL_8:
  v10 = *v9;
  v11 = sub_10009D464();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a1, v10, v11);
  return (*(v12 + 56))(a1, 0, 1, v11);
}

uint64_t sub_10000209C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10009D1C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != enum case for ServiceKind.door(_:))
  {
    if (v8 == enum case for ServiceKind.faucet(_:))
    {
      goto LABEL_4;
    }

    if (v8 == enum case for ServiceKind.garageDoorOpener(_:))
    {
      v9 = &enum case for CharacteristicKind.targetDoorState(_:);
      goto LABEL_17;
    }

    if (v8 == enum case for ServiceKind.heaterCooler(_:))
    {
      v9 = &enum case for CharacteristicKind.targetHeaterCoolerState(_:);
      goto LABEL_17;
    }

    if (v8 == enum case for ServiceKind.humidifierDehumidifier(_:))
    {
      v9 = &enum case for CharacteristicKind.targetHumidifierDehumidifierState(_:);
      goto LABEL_17;
    }

    if (v8 == enum case for ServiceKind.lockMechanism(_:))
    {
      v9 = &enum case for CharacteristicKind.targetLockMechanismState(_:);
      goto LABEL_17;
    }

    if (v8 == enum case for ServiceKind.securitySystem(_:))
    {
      v9 = &enum case for CharacteristicKind.targetSecuritySystemState(_:);
      goto LABEL_17;
    }

    if (v8 == enum case for ServiceKind.thermostat(_:))
    {
      v9 = &enum case for CharacteristicKind.targetHeatingCoolingMode(_:);
      goto LABEL_17;
    }

    if (v8 == enum case for ServiceKind.valve(_:))
    {
LABEL_4:
      v9 = &enum case for CharacteristicKind.active(_:);
      goto LABEL_17;
    }

    if (v8 != enum case for ServiceKind.window(_:) && v8 != enum case for ServiceKind.windowCovering(_:))
    {
      v15 = enum case for CharacteristicKind.active(_:);
      v16 = sub_10009D464();
      v17 = *(v16 - 8);
      (*(v17 + 104))(a1, v15, v16);
      (*(v17 + 56))(a1, 0, 1, v16);
      return (*(v5 + 8))(v7, v4);
    }
  }

  v9 = &enum case for CharacteristicKind.targetPosition(_:);
LABEL_17:
  v10 = *v9;
  v11 = sub_10009D464();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a1, v10, v11);
  return (*(v12 + 56))(a1, 0, 1, v11);
}

uint64_t sub_100002408@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10009D1C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != enum case for ServiceKind.door(_:))
  {
    if (v8 == enum case for ServiceKind.garageDoorOpener(_:))
    {
      v9 = &enum case for CharacteristicKind.currentDoorState(_:);
      goto LABEL_11;
    }

    if (v8 == enum case for ServiceKind.lockMechanism(_:))
    {
      v9 = &enum case for CharacteristicKind.currentLockMechanismState(_:);
      goto LABEL_11;
    }

    if (v8 == enum case for ServiceKind.securitySystem(_:))
    {
      v9 = &enum case for CharacteristicKind.currentSecuritySystemState(_:);
      goto LABEL_11;
    }

    if (v8 == enum case for ServiceKind.thermostat(_:))
    {
      v9 = &enum case for CharacteristicKind.currentHeatingCooling(_:);
      goto LABEL_11;
    }

    if (v8 != enum case for ServiceKind.window(_:) && v8 != enum case for ServiceKind.windowCovering(_:))
    {
      v15 = enum case for CharacteristicKind.powerState(_:);
      v16 = sub_10009D464();
      v17 = *(v16 - 8);
      (*(v17 + 104))(a1, v15, v16);
      (*(v17 + 56))(a1, 0, 1, v16);
      return (*(v5 + 8))(v7, v4);
    }
  }

  v9 = &enum case for CharacteristicKind.currentPosition(_:);
LABEL_11:
  v10 = *v9;
  v11 = sub_10009D464();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a1, v10, v11);
  return (*(v12 + 56))(a1, 0, 1, v11);
}

uint64_t sub_100002700()
{
  v1 = v0;
  v2 = sub_10009D1C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ServiceKind.airPurifier(_:))
  {
    goto LABEL_2;
  }

  if (v6 != enum case for ServiceKind.door(_:))
  {
    if (v6 == enum case for ServiceKind.fan(_:))
    {
LABEL_2:
      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v7 = sub_10009D464();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10009F8D0;
      v12 = &enum case for CharacteristicKind.rotationSpeed(_:);
LABEL_3:
      (*(v8 + 104))(v10 + v9, *v12, v7);
      return v11;
    }

    if (v6 == enum case for ServiceKind.garageDoorOpener(_:))
    {
      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v7 = sub_10009D464();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10009F8D0;
      v12 = &enum case for CharacteristicKind.obstructionDetected(_:);
      goto LABEL_3;
    }

    if (v6 == enum case for ServiceKind.heaterCooler(_:))
    {
      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v20 = sub_10009D464();
      v21 = *(v20 - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10009F900;
      v24 = v11 + v23;
      v25 = *(v21 + 104);
      v25(v24, enum case for CharacteristicKind.currentTemperature(_:), v20);
      v25(v24 + v22, enum case for CharacteristicKind.currentHeaterCoolerState(_:), v20);
      v25(v24 + 2 * v22, enum case for CharacteristicKind.heatingThreshold(_:), v20);
      v25(v24 + 3 * v22, enum case for CharacteristicKind.coolingThreshold(_:), v20);
      return v11;
    }

    if (v6 == enum case for ServiceKind.humidifierDehumidifier(_:))
    {
      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v26 = sub_10009D464();
      v27 = *(v26 - 8);
      v28 = *(v27 + 72);
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = 4 * v28;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10009F8E0;
      v31 = v11 + v29;
      v32 = *(v27 + 104);
      v32(v31, enum case for CharacteristicKind.active(_:), v26);
      v32(v31 + v28, enum case for CharacteristicKind.rotationSpeed(_:), v26);
      v32(v31 + 2 * v28, enum case for CharacteristicKind.humidifierThreshold(_:), v26);
      v32(v31 + 3 * v28, enum case for CharacteristicKind.dehumidifierThreshold(_:), v26);
      v33 = &enum case for CharacteristicKind.currentHumidifierDehumidifierState(_:);
    }

    else
    {
      if (v6 == enum case for ServiceKind.irrigationSystem(_:))
      {
        sub_100003714(&qword_1000C0B50, &qword_10009F948);
        v34 = sub_10009D464();
        v35 = *(v34 - 8);
        v36 = *(v35 + 72);
        v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_10009F8F0;
        v38 = v11 + v37;
        v39 = *(v35 + 104);
        v39(v38, enum case for CharacteristicKind.inUse(_:), v34);
        v39(v38 + v36, enum case for CharacteristicKind.programMode(_:), v34);
        return v11;
      }

      if (v6 == enum case for ServiceKind.lightbulb(_:))
      {
        sub_100003714(&qword_1000C0B50, &qword_10009F948);
        v7 = sub_10009D464();
        v8 = *(v7 - 8);
        v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v10 = swift_allocObject();
        v11 = v10;
        *(v10 + 16) = xmmword_10009F8D0;
        v12 = &enum case for CharacteristicKind.brightness(_:);
        goto LABEL_3;
      }

      if (v6 != enum case for ServiceKind.thermostat(_:))
      {
        if (v6 == enum case for ServiceKind.valve(_:))
        {
          sub_100003714(&qword_1000C0B50, &qword_10009F948);
          v7 = sub_10009D464();
          v8 = *(v7 - 8);
          v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v10 = swift_allocObject();
          v11 = v10;
          *(v10 + 16) = xmmword_10009F8D0;
          v12 = &enum case for CharacteristicKind.inUse(_:);
          goto LABEL_3;
        }

        if (v6 == enum case for ServiceKind.ventilationFan(_:))
        {
          goto LABEL_2;
        }

        if (v6 != enum case for ServiceKind.window(_:) && v6 != enum case for ServiceKind.windowCovering(_:))
        {
          sub_100003714(&qword_1000C0B50, &qword_10009F948);
          v43 = sub_10009D464();
          v44 = *(v43 - 8);
          v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_10009F8D0;
          (*(v44 + 104))(v11 + v45, enum case for CharacteristicKind.powerState(_:), v43);
          (*(v3 + 8))(v5, v2);
          return v11;
        }

        goto LABEL_5;
      }

      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v26 = sub_10009D464();
      v40 = *(v26 - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v30 = 4 * v41;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10009F8E0;
      v31 = v11 + v42;
      v32 = *(v40 + 104);
      v32(v31, enum case for CharacteristicKind.currentTemperature(_:), v26);
      v32(v31 + v41, enum case for CharacteristicKind.targetTemperature(_:), v26);
      v32(v31 + 2 * v41, enum case for CharacteristicKind.currentHeatingCooling(_:), v26);
      v32(v31 + 3 * v41, enum case for CharacteristicKind.heatingThreshold(_:), v26);
      v33 = &enum case for CharacteristicKind.coolingThreshold(_:);
    }

    v32(v31 + v30, *v33, v26);
    return v11;
  }

LABEL_5:
  sub_100003714(&qword_1000C0B50, &qword_10009F948);
  v13 = sub_10009D464();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10009F8F0;
  v17 = v11 + v16;
  v18 = *(v14 + 104);
  v18(v17, enum case for CharacteristicKind.positionState(_:), v13);
  v18(v17 + v15, enum case for CharacteristicKind.obstructionDetected(_:), v13);
  return v11;
}

void *sub_1000031AC()
{
  v0 = sub_100003714(&qword_1000C0B30, &qword_10009F938);
  v1 = __chkstk_darwin(v0 - 8);
  v52 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v50 = &v46 - v4;
  __chkstk_darwin(v3);
  v6 = &v46 - v5;
  v7 = sub_10009D464();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v46 - v12;
  v13 = __chkstk_darwin(v11);
  v47 = &v46 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v46 - v19;
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v53 = &_swiftEmptySetSingleton;
  sub_100001D78(v6);
  v23 = *(v8 + 48);
  v24 = v23(v6, 1, v7);
  v51 = v17;
  if (v24 == 1)
  {
    sub_100003900(v6);
  }

  else
  {
    (*(v8 + 32))(v22, v6, v7);
    (*(v8 + 16))(v17, v22, v7);
    sub_100003968(v20, v17);
    v25 = *(v8 + 8);
    v25(v20, v7);
    v25(v22, v7);
  }

  v26 = v50;
  sub_10000209C(v50);
  v27 = v23;
  if (v23(v26, 1, v7) == 1)
  {
    sub_100003900(v26);
    v28 = v51;
  }

  else
  {
    v29 = v47;
    (*(v8 + 32))(v47, v26, v7);
    v28 = v51;
    (*(v8 + 16))(v51, v29, v7);
    sub_100003968(v20, v28);
    v30 = *(v8 + 8);
    v30(v20, v7);
    v30(v29, v7);
  }

  v31 = v52;
  sub_100002408(v52);
  if (v27(v31, 1, v7) == 1)
  {
    sub_100003900(v31);
  }

  else
  {
    v32 = v48;
    (*(v8 + 32))(v48, v31, v7);
    (*(v8 + 16))(v28, v32, v7);
    sub_100003968(v20, v28);
    v33 = *(v8 + 8);
    v33(v20, v7);
    v33(v32, v7);
  }

  v34 = sub_100002700();
  if (v34)
  {
    v35 = v28;
    v50 = v34;
    v36 = *(v34 + 16);
    v37 = v49;
    if (v36)
    {
      v38 = v20;
      v41 = *(v8 + 16);
      v40 = v8 + 16;
      v39 = v41;
      v42 = v50 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
      v52 = *(v40 + 56);
      v43 = (v40 - 8);
      do
      {
        v39(v37, v42, v7);
        v39(v35, v37, v7);
        sub_100003968(v38, v35);
        v44 = *v43;
        (*v43)(v38, v7);
        v44(v37, v7);
        v42 += v52;
        --v36;
      }

      while (v36);
    }
  }

  return v53;
}

uint64_t sub_100003714(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000375C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000037A4()
{
  result = qword_1000C0B20;
  if (!qword_1000C0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0B20);
  }

  return result;
}

uint64_t sub_100003810(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_10009C33C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100003898(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (sub_10009C33C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v2;
}

uint64_t sub_100003900(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0B30, &qword_10009F938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003968(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100006DC0(&qword_1000C0B38, &type metadata accessor for CharacteristicKind, &protocol conformance descriptor for CharacteristicKind);
  v33 = a2;
  v11 = sub_10009E4F4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100006DC0(&qword_1000C0B40, &type metadata accessor for CharacteristicKind, &protocol conformance descriptor for CharacteristicKind);
      v21 = sub_10009E534();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000054CC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100003C48(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v4 = type metadata accessor for WidgetTileInfo(0);
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v45 - v9;
  v48 = v2;
  v10 = *v2;
  sub_10009EDD4();
  sub_10001ADCC(v50);
  v11 = sub_10009EE04();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_45:
    v40 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v47;
    sub_100006850(a2, v47);
    v50[0] = *v40;
    sub_100005794(v42, v13, isUniquelyReferenced_nonNull_native);
    v43 = v49;
    *v40 = v50[0];
    sub_1000068B4(a2, v43);
    return 1;
  }

  v14 = ~v12;
  v15 = *(v5 + 72);
  while (1)
  {
    sub_100006850(*(v10 + 48) + v15 * v13, v8);
    if ((sub_10009CEF4() & 1) == 0)
    {
      goto LABEL_43;
    }

    v16 = v4[6];
    v17 = *&v8[v16];
    v18 = *&v8[v16 + 8];
    v19 = (a2 + v16);
    v20 = v17 == *v19 && v18 == v19[1];
    if (!v20 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v21 = v4[7];
    v22 = &v8[v21];
    v23 = *&v8[v21 + 8];
    v24 = (a2 + v21);
    v25 = v24[1];
    if (v23)
    {
      if (!v25)
      {
        goto LABEL_43;
      }

      v26 = *v22 == *v24 && v23 == v25;
      if (!v26 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v25)
    {
      goto LABEL_43;
    }

    v27 = v4[8];
    v28 = *&v8[v27];
    v29 = *&v8[v27 + 8];
    v30 = (a2 + v27);
    v31 = v28 == *v30 && v29 == v30[1];
    if (!v31 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v32 = v4[9];
    v33 = *&v8[v32];
    v34 = *&v8[v32 + 8];
    v35 = (a2 + v32);
    if ((v33 != *v35 || v34 != v35[1]) && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    if ((sub_10009E134() & 1) == 0 || v8[v4[13]] != *(a2 + v4[13]))
    {
      goto LABEL_43;
    }

    v36 = v4[15];
    v37 = v8[v36 + 8];
    v38 = (a2 + v36);
    v39 = *(v38 + 8);
    if (v37 <= 1)
    {
      if (v37)
      {
        if (v39 == 1)
        {
          goto LABEL_42;
        }
      }

      else if (!*(v38 + 8))
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v37 == 2)
    {
      if (v39 != 2)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v37 == 3)
    {
      break;
    }

    v46 = *v38;
    sub_100006918(v8);
    if (v39 == 4 && !v46)
    {
      goto LABEL_47;
    }

LABEL_44:
    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  if (v39 != 3)
  {
    goto LABEL_43;
  }

LABEL_42:
  v46 = *v38;
  sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
  if ((sub_10009E8E4() & 1) == 0)
  {
LABEL_43:
    sub_100006918(v8);
    goto LABEL_44;
  }

  sub_100006918(v8);
LABEL_47:
  sub_100006918(a2);
  sub_100006850(*(v10 + 48) + v15 * v13, v49);
  return 0;
}

uint64_t sub_100004038(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_10009EA24();

    if (v17)
    {

      sub_100007330(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_10009EA14();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_10000458C(v15, result + 1, a5, a6, a3, a4);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_100004ECC(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_100005448(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_100007330(0, a3, a4);
    v19 = sub_10009E8D4(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_10009E8E4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_100005B58(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000042AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = sub_10009E4F4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100006DC0(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_10009E534();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100005CE8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_10000458C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_100003714(a3, a4);
    v10 = sub_10009EA94();
    v23 = v10;
    sub_10009E9D4();
    if (sub_10009EA44())
    {
      sub_100007330(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_100004ECC(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_10009E8D4(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_10009EA44());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_10000478C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_10009D464();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100003714(&qword_1000C0B48, &qword_10009F940);
  result = sub_10009EA84();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100006DC0(&qword_1000C0B38, &type metadata accessor for CharacteristicKind, &protocol conformance descriptor for CharacteristicKind);
      result = sub_10009E4F4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100004AE8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for WidgetTileInfo(0);
  v27 = *(v3 - 1);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003714(&qword_1000C0B58, &qword_10009F950);
  result = sub_10009EA84();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v24 = v1;
    v25 = result + 56;
    v26 = v6;
    if (v13)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v18 = *(v6 + 48);
        v28 = *(v27 + 72);
        sub_1000068B4(v18 + v28 * (v15 | (v9 << 6)), v5);
        sub_10009EDD4();
        sub_10009CF14();
        sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        sub_10009E504();
        sub_10009E624();
        if (*&v5[v3[7] + 8])
        {
          sub_10009EDF4(1u);
          sub_10009E624();
        }

        else
        {
          sub_10009EDF4(0);
        }

        sub_10009E624();
        sub_10009E624();
        sub_10009E144();
        sub_10009EDF4(v5[v3[13]]);
        v19 = v5[v3[15] + 8];
        if (v19 <= 1)
        {
          if (v5[v3[15] + 8])
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          goto LABEL_24;
        }

        if (v19 == 2)
        {
          break;
        }

        if (v19 == 3)
        {
          v20 = 4;
LABEL_24:
          sub_10009EDE4(v20);
          sub_10009E8F4();
          goto LABEL_25;
        }

        sub_10009EDE4(0);
LABEL_25:
        sub_10009EE04();
        v21 = v25;
        v22 = sub_10009E9B4();
        *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        result = sub_1000068B4(v5, *(v8 + 48) + v22 * v28);
        ++*(v8 + 16);
        v6 = v26;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v20 = 3;
      goto LABEL_24;
    }

LABEL_7:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v23 = 1 << *(v6 + 32);
    if (v23 >= 64)
    {
      bzero(v10, ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v23;
    }

    v2 = v24;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_100004ECC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100003714(a2, a3);
  result = sub_10009EA84();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_10009E8D4(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1000050EC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_10009CF14();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100003714(&qword_1000C0BE0, "tz");
  result = sub_10009EA84();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10009E4F4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_100005448(uint64_t a1, void *a2)
{
  sub_10009E8D4(a2[5]);
  result = sub_10009E9B4();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_1000054CC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000478C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000062FC(&type metadata accessor for CharacteristicKind, &qword_1000C0B48, &qword_10009F940);
      goto LABEL_12;
    }

    sub_100006534(v10 + 1);
  }

  v12 = *v3;
  sub_100006DC0(&qword_1000C0B38, &type metadata accessor for CharacteristicKind, &protocol conformance descriptor for CharacteristicKind);
  v13 = sub_10009E4F4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100006DC0(&qword_1000C0B40, &type metadata accessor for CharacteristicKind, &protocol conformance descriptor for CharacteristicKind);
      v21 = sub_10009E534();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10009ED64();
  __break(1u);
  return result;
}

uint64_t sub_100005794(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for WidgetTileInfo(0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v51 = v9;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (a3)
  {
    sub_100004AE8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100005FB0();
      goto LABEL_54;
    }

    sub_100006974(v12 + 1);
  }

  v14 = *v4;
  sub_10009EDD4();
  sub_10001ADCC(v52);
  v15 = sub_10009EE04();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v9 + 72);
    while (1)
    {
      sub_100006850(*(v14 + 48) + v18 * a2, v11);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_35;
      }

      v19 = v8[6];
      v20 = *&v11[v19];
      v21 = *&v11[v19 + 8];
      v22 = (a1 + v19);
      v23 = v20 == *v22 && v21 == v22[1];
      if (!v23 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_35;
      }

      v24 = v8[7];
      v25 = &v11[v24];
      v26 = *&v11[v24 + 8];
      v27 = (a1 + v24);
      v28 = v27[1];
      if (v26)
      {
        if (!v28)
        {
          goto LABEL_35;
        }

        v29 = *v25 == *v27 && v26 == v28;
        if (!v29 && (sub_10009ED34() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v28)
      {
        goto LABEL_35;
      }

      v30 = v8[8];
      v31 = *&v11[v30];
      v32 = *&v11[v30 + 8];
      v33 = (a1 + v30);
      v34 = v31 == *v33 && v32 == v33[1];
      if (!v34 && (sub_10009ED34() & 1) == 0 || ((v35 = v8[9], v36 = *&v11[v35], v37 = *&v11[v35 + 8], v38 = (a1 + v35), v36 != *v38) || v37 != v38[1]) && (sub_10009ED34() & 1) == 0 || (sub_10009E134() & 1) == 0 || v11[v8[13]] != *(a1 + v8[13]))
      {
LABEL_35:
        sub_100006918(v11);
        goto LABEL_36;
      }

      v39 = v8[15];
      v40 = v11[v39 + 8];
      v41 = (a1 + v39);
      v42 = *(v41 + 8);
      if (v40 <= 1)
      {
        if (v40)
        {
          if (v42 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (*(v41 + 8))
        {
          goto LABEL_35;
        }

        goto LABEL_52;
      }

      if (v40 == 2)
      {
        break;
      }

      if (v40 == 3)
      {
        if (v42 != 3)
        {
          goto LABEL_35;
        }

LABEL_52:
        v50 = *v41;
        sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
        v43 = sub_10009E8E4();
        sub_100006918(v11);
        if (v43)
        {
          goto LABEL_53;
        }

        goto LABEL_36;
      }

      v50 = *v41;
      sub_100006918(v11);
      if (v42 == 4 && !v50)
      {
LABEL_53:
        sub_10009ED64();
        __break(1u);
        goto LABEL_54;
      }

LABEL_36:
      a2 = (a2 + 1) & v17;
      if (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (v42 != 2)
    {
      goto LABEL_35;
    }

    goto LABEL_52;
  }

LABEL_54:
  v44 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1000068B4(a1, *(v44 + 48) + *(v51 + 72) * a2);
  v46 = *(v44 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
    __break(1u);
  }

  else
  {
    *(v44 + 16) = v48;
  }

  return result;
}

void sub_100005B58(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_100004ECC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100006194(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_100006E08(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_10009E8D4(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_100007330(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_10009E8E4();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_10009ED64();
  __break(1u);
}

uint64_t sub_100005CE8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000050EC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000062FC(&type metadata accessor for UUID, &qword_1000C0BE0, "tz");
      goto LABEL_12;
    }

    sub_100007014(v10 + 1);
  }

  v12 = *v3;
  sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = sub_10009E4F4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100006DC0(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_10009E534();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10009ED64();
  __break(1u);
  return result;
}

void *sub_100005FB0()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetTileInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000C0B58, &qword_10009F950);
  v6 = *v0;
  v7 = sub_10009EA74();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100006850(*(v6 + 48) + v21, v5);
        result = sub_1000068B4(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

id sub_100006194(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100003714(a1, a2);
  v4 = *v2;
  v5 = sub_10009EA74();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1000062FC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100003714(a2, a3);
  v11 = *v3;
  v12 = sub_10009EA74();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_100006534(uint64_t a1)
{
  v2 = v1;
  v33 = sub_10009D464();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003714(&qword_1000C0B48, &qword_10009F940);
  v7 = sub_10009EA84();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100006DC0(&qword_1000C0B38, &type metadata accessor for CharacteristicKind, &protocol conformance descriptor for CharacteristicKind);
      result = sub_10009E4F4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100006850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTileInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000068B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTileInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006918(uint64_t a1)
{
  v2 = type metadata accessor for WidgetTileInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006974(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for WidgetTileInfo(0);
  v26 = *(v3 - 1);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003714(&qword_1000C0B58, &qword_10009F950);
  result = sub_10009EA84();
  v8 = result;
  if (*(v6 + 16))
  {
    v23 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v24 = result + 56;
    v25 = v6;
    if (v13)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v18 = *(v6 + 48);
        v27 = *(v26 + 72);
        sub_100006850(v18 + v27 * (v15 | (v9 << 6)), v5);
        sub_10009EDD4();
        sub_10009CF14();
        sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        sub_10009E504();
        sub_10009E624();
        if (*&v5[v3[7] + 8])
        {
          sub_10009EDF4(1u);
          sub_10009E624();
        }

        else
        {
          sub_10009EDF4(0);
        }

        sub_10009E624();
        sub_10009E624();
        sub_10009E144();
        sub_10009EDF4(v5[v3[13]]);
        v19 = v5[v3[15] + 8];
        if (v19 <= 1)
        {
          v6 = v25;
          if (v5[v3[15] + 8])
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          goto LABEL_24;
        }

        v6 = v25;
        if (v19 == 2)
        {
          break;
        }

        if (v19 == 3)
        {
          v20 = 4;
LABEL_24:
          sub_10009EDE4(v20);
          sub_10009E8F4();
          goto LABEL_25;
        }

        sub_10009EDE4(0);
LABEL_25:
        sub_10009EE04();
        v21 = v24;
        v22 = sub_10009E9B4();
        *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        result = sub_1000068B4(v5, *(v8 + 48) + v22 * v27);
        ++*(v8 + 16);
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v20 = 3;
      goto LABEL_24;
    }

LABEL_7:
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

        v2 = v23;
        goto LABEL_29;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v8;
  }

  return result;
}

__n128 sub_100006D18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006D28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006D48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1000C0BD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000C0BD8);
    }
  }
}

uint64_t sub_100006DC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006E08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100003714(a2, a3);
  result = sub_10009EA84();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_10009E8D4(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_100007014(uint64_t a1)
{
  v2 = v1;
  v33 = sub_10009CF14();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003714(&qword_1000C0BE0, "tz");
  v7 = sub_10009EA84();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10009E4F4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100007330(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100007378()
{
  v1 = sub_10009E124();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 applicationData];
  v6 = [v5 dictionary];

  sub_100003714(&qword_1000C0C10, &qword_10009F9A8);
  v7 = sub_10009E4C4();

  if (!*(v7 + 16) || (v8 = sub_10001B558(0xD00000000000001FLL, 0x80000001000A4090), (v9 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_unknownObjectRetain();

  v16[1] = v10;
  sub_100003714(&qword_1000C0C18, &qword_10009F9B0);
  if (swift_dynamicCast())
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      sub_10001B558(114, 0xE100000000000000);
      if (v12)
      {
        if (*(v11 + 16))
        {
          sub_10001B558(103, 0xE100000000000000);
          if (v13)
          {
            if (*(v11 + 16))
            {
              sub_10001B558(98, 0xE100000000000000);
              if (v14)
              {

                (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
                return sub_10009E1D4();
              }
            }
          }
        }
      }
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1000075D4(uint64_t a1)
{
  v65 = a1;
  v2 = sub_10009D464();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v62 - v7;
  v9 = __chkstk_darwin(v6);
  v64 = &v62 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v62 - v15;
  __chkstk_darwin(v14);
  v18 = &v62 - v17;
  v19 = sub_10009D1C4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E904();
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 == enum case for ServiceKind.door(_:))
  {
LABEL_2:
    v24 = *(v3 + 104);
    v24(v18, enum case for CharacteristicKind.targetPosition(_:), v2);
    v25 = sub_100016C54(v18, v65);
    v27 = v26;
    v28 = *(v3 + 8);
    v28(v18, v2);
    if ((v27 & 1) == 0)
    {
      v29 = v2;
      v24(v18, enum case for CharacteristicKind.currentPosition(_:), v2);
      v30 = sub_100016C54(v18, v65);
      v32 = v31;
      v28(v18, v29);
      if ((v32 & 1) == 0)
      {
        v24(v18, enum case for CharacteristicKind.obstructionDetected(_:), v29);
        v33 = sub_100016EAC(v18, v65);
        v28(v18, v29);
        if (v33 == 2 || (v33 & 1) == 0)
        {
          v34 = v25 == v30;
          goto LABEL_7;
        }
      }
    }

LABEL_30:
    LOBYTE(v35) = 0;
    return v35 & 1;
  }

  v62 = v1;
  v36 = v65;
  v37 = v2;
  if (v23 == enum case for ServiceKind.garageDoorOpener(_:))
  {
    (*(v3 + 104))(v16, enum case for CharacteristicKind.currentDoorState(_:), v2);
    v38 = sub_100016C54(v16, v36);
    v40 = v39;
    (*(v3 + 8))(v16, v2);
    if ((v40 & 1) == 0 && v38 < 5)
    {
      v35 = 0xCu >> v38;
      return v35 & 1;
    }

    goto LABEL_30;
  }

  if (v23 == enum case for ServiceKind.lockMechanism(_:))
  {
    v41 = *(v3 + 104);
    v41(v13, enum case for CharacteristicKind.currentLockMechanismState(_:), v2);
    v42 = sub_100016C54(v13, v36);
    v44 = v43;
    v45 = *(v3 + 8);
    v45(v13, v2);
    if ((v44 & 1) == 0)
    {
      v46 = v64;
      v41(v64, enum case for CharacteristicKind.targetLockMechanismState(_:), v2);
      v47 = sub_100016C54(v46, v36);
      v49 = v48;
      v45(v46, v2);
      if ((v49 & 1) == 0)
      {
        if (v42 == 1)
        {
          LOBYTE(v35) = v47 == 0;
          return v35 & 1;
        }

        if (!v42)
        {
          LOBYTE(v35) = v47 == 1;
          return v35 & 1;
        }
      }
    }

    goto LABEL_30;
  }

  if (v23 != enum case for ServiceKind.securitySystem(_:))
  {
    if (v23 != enum case for ServiceKind.window(_:) && v23 != enum case for ServiceKind.windowCovering(_:))
    {
      (*(v20 + 8))(v22, v19);
      goto LABEL_30;
    }

    goto LABEL_2;
  }

  v50 = *(v3 + 104);
  v51 = v37;
  v50(v8, enum case for CharacteristicKind.currentSecuritySystemState(_:), v37);
  v52 = sub_100016C54(v8, v36);
  v54 = v53;
  v55 = *(v3 + 8);
  v55(v8, v51);
  if (v54)
  {
    goto LABEL_30;
  }

  v56 = v63;
  v50(v63, enum case for CharacteristicKind.targetSecuritySystemState(_:), v51);
  v57 = sub_100016C54(v56, v36);
  v59 = v58;
  v55(v56, v51);
  if (v59)
  {
    goto LABEL_30;
  }

  if (v57 <= 1 || v57 != 3)
  {
    if (v52 == 3)
    {
      LOBYTE(v35) = 1;
      return v35 & 1;
    }

    goto LABEL_30;
  }

  v34 = v52 == 3;
LABEL_7:
  LOBYTE(v35) = !v34;
  return v35 & 1;
}

void *sub_100007BC0(void *a1, uint64_t a2)
{
  v293 = a2;
  v3 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  __chkstk_darwin(v3 - 8);
  v255 = &v232[-v4];
  v5 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v5 - 8);
  v278 = &v232[-v6];
  v277 = sub_10009D5A4();
  v7 = *(v277 - 8);
  v8 = __chkstk_darwin(v277);
  v288 = &v232[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v287 = &v232[-v11];
  v12 = __chkstk_darwin(v10);
  v286 = &v232[-v13];
  __chkstk_darwin(v12);
  v285 = &v232[-v14];
  v15 = sub_100003714(&qword_1000C0C30, &qword_10009F9E8);
  v16 = __chkstk_darwin(v15 - 8);
  v240 = &v232[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v232[-v18];
  v20 = sub_100003714(&qword_1000C0C38, &qword_10009F9F0);
  __chkstk_darwin(v20 - 8);
  v246 = &v232[-v21];
  v22 = sub_10009D1C4();
  v273 = *(v22 - 8);
  __chkstk_darwin(v22);
  v279 = &v232[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v282 = type metadata accessor for WidgetTileInfo(0);
  v254 = *(v282 - 8);
  v24 = __chkstk_darwin(v282);
  v251 = &v232[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v245 = &v232[-v27];
  __chkstk_darwin(v26);
  v276 = &v232[-v28];
  v294 = sub_10009CF14();
  v29 = *(v294 - 8);
  v30 = __chkstk_darwin(v294);
  v292 = &v232[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __chkstk_darwin(v30);
  v34 = &v232[-v33];
  v35 = __chkstk_darwin(v32);
  v239 = &v232[-v36];
  v37 = __chkstk_darwin(v35);
  v284 = &v232[-v38];
  v39 = __chkstk_darwin(v37);
  v283 = &v232[-v40];
  v41 = __chkstk_darwin(v39);
  v43 = &v232[-v42];
  __chkstk_darwin(v41);
  v45 = &v232[-v44];
  v297 = &_swiftEmptySetSingleton;
  v235 = a1;
  v46 = [a1 serviceGroups];
  v234 = sub_100007330(0, &qword_1000C0C40, HMServiceGroup_ptr);
  v47 = sub_10009E6A4();

  v296 = _swiftEmptyArrayStorage;
  if (v47 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009EBA4())
  {
    v247 = v19;
    v248 = v22;
    v280 = v43;
    if (i)
    {
      v274 = v7;
      v7 = 0;
      v290 = v47 & 0xFFFFFFFFFFFFFF8;
      v291 = v47 & 0xC000000000000001;
      v275 = (v47 + 32);
      v281 = (v29 + 8);
      v19 = &qword_1000C0BE8;
      v289 = v47;
      while (1)
      {
        if (v291)
        {
          v49 = sub_10009EAE4();
        }

        else
        {
          if (v7 >= *(v290 + 16))
          {
            goto LABEL_88;
          }

          v49 = v275[v7];
        }

        v50 = v49;
        v51 = __OFADD__(v7++, 1);
        if (v51)
        {
          break;
        }

        v22 = i;
        v52 = [v49 uniqueIdentifier];
        sub_10009CF04();

        v53 = 0;
        v54 = *(v293 + 16);
        do
        {
          if (v54 == v53)
          {
            (*v281)(v45, v294);

            goto LABEL_6;
          }

          v43 = v53 + 1;
          sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v55 = sub_10009E534();
          v53 = v43;
        }

        while ((v55 & 1) == 0);
        (*v281)(v45, v294);
        sub_10009EB34();
        sub_10009EB64();
        sub_10009EB74();
        sub_10009EB44();
LABEL_6:
        i = v22;
        v47 = v289;
        if (v7 == v22)
        {
          v19 = v296;
          v22 = v248;
          v43 = v280;
          v7 = v274;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v19 = _swiftEmptyArrayStorage;
LABEL_18:

    v56 = (v19 >> 62) & 1;
    if (v19 < 0)
    {
      LODWORD(v56) = 1;
    }

    v233 = v56;
    v45 = v255;
    if (v56 == 1)
    {
      v47 = sub_10009EBA4();
    }

    else
    {
      v47 = *(v19 + 16);
    }

    v249 = v19;
    if (v47)
    {
      v57 = 0;
      v253 = v19 & 0xC000000000000001;
      v250 = (v273 + 48);
      v236 = (v273 + 32);
      v237 = v273 + 56;
      v275 = (v29 + 16);
      v238 = (v29 + 32);
      v274 = (v7 + 16);
      v243 = (v7 + 8);
      v242 = (v29 + 8);
      v241 = v273 + 8;
      v289 = _swiftEmptyArrayStorage;
      v244 = v34;
      v252 = v47;
      while (1)
      {
        if (v253)
        {
          v58 = sub_10009EAE4();
          v59 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v57 >= *(v19 + 16))
          {
            goto LABEL_90;
          }

          v58 = *(v19 + 8 * v57 + 32);
          v59 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_89;
          }
        }

        v290 = v59;
        v291 = v57;
        v7 = v58;
        v47 = [v58 services];
        v281 = sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        v60 = sub_10009E6A4();

        if (v60 >> 62)
        {
          if (sub_10009EBA4())
          {
LABEL_31:
            if ((v60 & 0xC000000000000001) != 0)
            {
              v61 = sub_10009EAE4();
              v34 = v247;
              v19 = v279;
            }

            else
            {
              v34 = v247;
              v19 = v279;
              if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_93;
              }

              v61 = *(v60 + 32);
            }

            v62 = [v7 uniqueIdentifier];
            sub_10009CF04();

            v63 = [v7 name];
            v272 = sub_10009E5C4();
            v271 = v64;

            v65 = [v61 associatedServiceType];
            if (v65)
            {
              v66 = v65;
              sub_10009E5C4();

              v67 = v246;
              sub_10009E614();

              if ((*v250)(v67, 1, v22) != 1)
              {
                (*v236)(v19, v67, v22);
                goto LABEL_40;
              }
            }

            else
            {
              v67 = v246;
              (*v237)(v246, 1, 1, v22);
            }

            sub_10009E904();
            if ((*v250)(v67, 1, v22) != 1)
            {
              sub_1000160CC(v67, &qword_1000C0C38, &qword_10009F9F0);
            }

LABEL_40:
            sub_10009E924();
            if (v68)
            {
              sub_10009D124();
              v69 = sub_10009D134();
              v70 = *(v69 - 8);
              if ((*(v70 + 48))(v34, 1, v69) != 1)
              {
                v270 = sub_10009D114();
                v269 = v71;
                (*(v70 + 8))(v34, v69);
                goto LABEL_45;
              }
            }

            else
            {
              v72 = sub_10009D134();
              (*(*(v72 - 8) + 56))(v34, 1, 1, v72);
            }

            sub_1000160CC(v34, &qword_1000C0C30, &qword_10009F9E8);
            v270 = sub_10009D1B4();
            v269 = v73;
LABEL_45:
            sub_10009E924();
            v74 = v294;
            if (v75)
            {
              v76 = v240;
              sub_10009D124();
              v77 = sub_10009D134();
              v78 = *(v77 - 8);
              if ((*(v78 + 48))(v76, 1, v77) == 1)
              {
                sub_1000160CC(v76, &qword_1000C0C30, &qword_10009F9E8);
                goto LABEL_48;
              }

              v267 = sub_10009D104();
              v266 = v80;
              (*(v78 + 8))(v76, v77);
            }

            else
            {
LABEL_48:
              v267 = sub_10009D194();
              v266 = v79;
            }

            sub_10001050C(&IconSymbol.offStateSymbolRenderingMode.getter, &ServiceKind.iconSymbolDeactivatedRenderingMode.getter, v285);
            sub_10001050C(&IconSymbol.onStateSymbolRenderingMode.getter, &ServiceKind.iconSymbolActivatedRenderingMode.getter, v286);
            v81 = sub_10009D184();
            v82 = *v275;
            (*v275)(v283, v43, v74);
            v268 = v81;

            v83 = [v61 accessory];
            if (v83)
            {
              v84 = v83;
              v85 = [v83 uniqueIdentifier];

              v86 = v239;
              sub_10009CF04();

              (*v238)(v284, v86, v74);
            }

            else
            {
              v82(v284, v43, v74);
            }

            v87 = [v61 accessory];
            if (v87 && (v88 = v87, v89 = [v87 room], v88, v89))
            {
              v90 = [v89 name];

              v259 = sub_10009E5C4();
              v258 = v91;
            }

            else
            {
              v259 = 0;
              v258 = 0;
            }

            v92 = *v274;
            v93 = v277;
            (*v274)(v287, v285, v277);
            v92(v288, v286, v93);
            v94 = [v61 accessory];
            v273 = v61;
            if (v94)
            {
              v95 = v94;
              v257 = [v94 isReachable];
            }

            else
            {
              v257 = 0;
            }

            v96 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
            v97 = *(*(v96 - 8) + 56);
            v97(v278, 1, 1, v96);
            v98 = v7;
            v256 = v7;
            v265 = sub_10001C968(_swiftEmptyArrayStorage);
            v99 = v282;
            v100 = *(v282 + 72);
            v101 = sub_10009D3F4();
            v102 = v245;
            (*(*(v101 - 8) + 56))(&v245[v100], 1, 1, v101);
            v264 = v99[19];
            v97((v102 + v264), 1, 1, v96);
            v103 = v99[21];
            v263 = v99[20];
            v261 = (v102 + v103);
            v104 = v99[22];
            v262 = v99[23];
            v260 = (v102 + v104);
            v7 = v294;
            v82(v102, v283, v294);
            v82((v102 + v99[5]), v284, v7);
            v105 = (v102 + v99[6]);
            v106 = v271;
            *v105 = v272;
            v105[1] = v106;
            v107 = (v102 + v99[7]);
            v108 = v258;
            *v107 = v259;
            v107[1] = v108;
            v109 = (v102 + v99[8]);
            v110 = v269;
            *v109 = v270;
            v109[1] = v110;
            v111 = (v102 + v99[9]);
            v112 = v266;
            *v111 = v267;
            v111[1] = v112;
            v113 = v277;
            v92((v102 + v99[10]), v287, v277);
            v92((v102 + v99[11]), v288, v113);
            *(v102 + v99[12]) = v268;
            *(v102 + v99[13]) = v257;
            v114 = v102 + v99[15];
            *v114 = v98;
            *(v114 + 8) = 1;

            v115 = v256;
            v116 = [v115 services];
            v117 = sub_10009E6A4();

            v296 = v117;
            sub_100003714(&qword_1000C0C50, &qword_10009F9F8);
            sub_100014C64();
            sub_10009E7C4();

            v118 = sub_10009D244();

            v119 = *v243;
            (*v243)(v288, v113);
            v119(v287, v113);
            v120 = *v242;
            (*v242)(v284, v7);
            v120(v283, v7);
            v119(v286, v113);
            v119(v285, v113);
            v22 = v248;
            (*v241)(v279, v248);
            v120(v280, v7);
            *(v102 + v99[14]) = v118 & 1;
            *(v102 + v99[16]) = v265;
            *(v102 + v99[17]) = 0;
            *(v102 + v263) = 2;
            v121 = v261;
            *v261 = 0;
            *(v121 + 8) = 1;
            v122 = v260;
            *v260 = 0;
            v122[1] = 0;
            *(v102 + v262) = 2;
            sub_100014CC8(v278, v102 + v264);
            sub_1000068B4(v102, v276);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v289 = sub_100064F4C(0, v289[2] + 1, 1, v289);
            }

            v19 = v249;
            v45 = v255;
            v34 = v244;
            v124 = v289[2];
            v123 = v289[3];
            v43 = v280;
            if (v124 >= v123 >> 1)
            {
              v289 = sub_100064F4C((v123 > 1), v124 + 1, 1, v289);
            }

            v125 = v289;
            v289[2] = v124 + 1;
            sub_1000068B4(v276, v125 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v124);
            goto LABEL_25;
          }
        }

        else if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

LABEL_25:
        v57 = v291 + 1;
        v47 = v252;
        if (v290 == v252)
        {
          goto LABEL_72;
        }
      }
    }

    v289 = _swiftEmptyArrayStorage;
LABEL_72:
    sub_100015A5C(v289);

    v281 = v297[2];
    v47 = [v235 actionSets];
    sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
    v126 = sub_10009E6A4();

    v127 = v126;
    v296 = _swiftEmptyArrayStorage;
    if (v126 >> 62)
    {
      v47 = v126;
      v22 = sub_10009EBA4();
      v127 = v126;
      if (!v22)
      {
LABEL_97:
        v132 = _swiftEmptyArrayStorage;
        goto LABEL_98;
      }
    }

    else
    {
      v22 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_97;
      }
    }

    v45 = 0;
    v290 = v127 & 0xFFFFFFFFFFFFFF8;
    v291 = v127 & 0xC000000000000001;
    v287 = v127;
    v288 = (v127 + 32);
    v289 = (v29 + 8);
    v7 = &qword_1000C0BE8;
LABEL_76:
    if (v291)
    {
      v128 = sub_10009EAE4();
    }

    else
    {
      if (v45 >= *(v290 + 16))
      {
        goto LABEL_92;
      }

      v128 = *&v288[8 * v45];
    }

    v19 = v128;
    v51 = __OFADD__(v45++, 1);
    if (!v51)
    {
      break;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  v47 = [v128 uniqueIdentifier];
  sub_10009CF04();

  v129 = 0;
  v43 = *(v293 + 16);
  do
  {
    if (v43 == v129)
    {
      (*v289)(v34, v294);

      if (v45 != v22)
      {
        goto LABEL_76;
      }

      goto LABEL_86;
    }

    v130 = v129 + 1;
    v47 = v293 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v129;
    sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v131 = sub_10009E534();
    v129 = v130;
  }

  while ((v131 & 1) == 0);
  (*v289)(v34, v294);
  sub_10009EB34();
  v47 = v296[2];
  sub_10009EB64();
  sub_10009EB74();
  sub_10009EB44();
  if (v45 != v22)
  {
    goto LABEL_76;
  }

LABEL_86:
  v132 = v296;
  v45 = v255;
LABEL_98:

  v133 = (v132 >> 62) & 1;
  if (v132 < 0)
  {
    LODWORD(v133) = 1;
  }

  LODWORD(v280) = v133;
  v134 = v132;
  v288 = v132;
  if (v133 == 1)
  {
    goto LABEL_151;
  }

  v135 = *(v132 + 16);
LABEL_102:
  v136 = _swiftEmptyArrayStorage;
  if (v135)
  {
    v137 = 0;
    v138 = v134 & 0xC000000000000001;
    v139 = (v254 + 48);
    do
    {
      if (v138)
      {
        v140 = sub_10009EAE4();
      }

      else
      {
        if (v137 >= *(v134 + 16))
        {
          goto LABEL_148;
        }

        v140 = *(v134 + 8 * v137 + 32);
      }

      v141 = v140;
      v142 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        goto LABEL_147;
      }

      sub_10000A450(v140, v45);

      if ((*v139)(v45, 1, v282) == 1)
      {
        sub_1000160CC(v45, &qword_1000C0C20, &qword_1000A1E30);
      }

      else
      {
        sub_1000068B4(v45, v251);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v136 = sub_100064F4C(0, v136[2] + 1, 1, v136);
        }

        v144 = v136[2];
        v143 = v136[3];
        if (v144 >= v143 >> 1)
        {
          v136 = sub_100064F4C((v143 > 1), v144 + 1, 1, v136);
        }

        v136[2] = v144 + 1;
        sub_1000068B4(v251, v136 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v144);
        v45 = v255;
      }

      ++v137;
      v134 = v288;
    }

    while (v142 != v135);
  }

  sub_100015A5C(v136);

  v282 = v297[2];
  v145 = [v235 serviceGroups];
  v146 = sub_10009E6A4();

  v296 = _swiftEmptyArrayStorage;
  if (v146 >> 62)
  {
    v147 = sub_10009EBA4();
    if (v147)
    {
      goto LABEL_119;
    }
  }

  else
  {
    v147 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v147)
    {
LABEL_119:
      v148 = 0;
      v286 = (v146 & 0xFFFFFFFFFFFFFF8);
      v287 = (v146 & 0xC000000000000001);
      v285 = (v146 + 32);
      v291 = v29 + 32;
      v284 = v146;
      v283 = v147;
      while (1)
      {
        if (v287)
        {
          v150 = sub_10009EAE4();
          v51 = __OFADD__(v148, 1);
          v151 = v148 + 1;
          if (v51)
          {
            goto LABEL_149;
          }
        }

        else
        {
          if (v148 >= *(v286 + 2))
          {
            goto LABEL_150;
          }

          v150 = *&v285[8 * v148];
          v51 = __OFADD__(v148, 1);
          v151 = v148 + 1;
          if (v51)
          {
            goto LABEL_149;
          }
        }

        v289 = v150;
        v152 = [v150 services];
        sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        v153 = sub_10009E6A4();

        if (v153 >> 62)
        {
          v154 = sub_10009EBA4();
          v290 = v151;
          if (v154)
          {
LABEL_127:
            v155 = 0;
            v45 = v153 & 0xC000000000000001;
            v149 = _swiftEmptyArrayStorage;
            while (1)
            {
              if (v45)
              {
                v156 = sub_10009EAE4();
              }

              else
              {
                if (v155 >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_146;
                }

                v156 = *(v153 + 8 * v155 + 32);
              }

              v157 = v156;
              v158 = v155 + 1;
              if (__OFADD__(v155, 1))
              {
                break;
              }

              v159 = [v156 uniqueIdentifier];
              sub_10009CF04();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v149 = sub_100064F74(0, v149[2] + 1, 1, v149);
              }

              v161 = v149[2];
              v160 = v149[3];
              if (v161 >= v160 >> 1)
              {
                v149 = sub_100064F74((v160 > 1), v161 + 1, 1, v149);
              }

              v149[2] = v161 + 1;
              (*(v29 + 32))(v149 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v161, v292, v294);
              ++v155;
              if (v158 == v154)
              {
                goto LABEL_121;
              }
            }

            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            v163 = sub_10009EBA4();
            v134 = v288;
            v135 = v163;
            goto LABEL_102;
          }
        }

        else
        {
          v154 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v290 = v151;
          if (v154)
          {
            goto LABEL_127;
          }
        }

        v149 = _swiftEmptyArrayStorage;
LABEL_121:

        sub_1000615AC(v149);
        v148 = v290;
        if (v290 == v283)
        {
          v162 = v296;
          goto LABEL_154;
        }
      }
    }
  }

  v162 = _swiftEmptyArrayStorage;
LABEL_154:
  v292 = v162;

  v164 = [v235 accessories];
  v289 = sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  v165 = sub_10009E6A4();

  if (v165 >> 62)
  {
    goto LABEL_228;
  }

  v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_156:
  v167 = _swiftEmptyArrayStorage;
  if (v166)
  {
    v168 = 0;
    v290 = v165 & 0xFFFFFFFFFFFFFF8;
    v291 = v165 & 0xC000000000000001;
    do
    {
      if (v291)
      {
        v169 = sub_10009EAE4();
      }

      else
      {
        if (v168 >= *(v290 + 16))
        {
          goto LABEL_221;
        }

        v169 = *(v165 + 8 * v168 + 32);
      }

      v170 = v169;
      v171 = v168 + 1;
      if (__OFADD__(v168, 1))
      {
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        v166 = sub_10009EBA4();
        goto LABEL_156;
      }

      v172 = [v169 uniqueIdentifiersForBridgedAccessories];
      if (v172)
      {
        v173 = v172;
        v174 = sub_10009E6A4();

        v170 = v173;
      }

      else
      {
        v174 = _swiftEmptyArrayStorage;
      }

      v175 = v174[2];
      v176 = v167[2];
      v177 = v176 + v175;
      if (__OFADD__(v176, v175))
      {
        goto LABEL_222;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v177 <= v167[3] >> 1)
      {
        if (v174[2])
        {
          goto LABEL_176;
        }
      }

      else
      {
        if (v176 <= v177)
        {
          v179 = v176 + v175;
        }

        else
        {
          v179 = v176;
        }

        v167 = sub_100064F74(isUniquelyReferenced_nonNull_native, v179, 1, v167);
        if (v174[2])
        {
LABEL_176:
          if ((v167[3] >> 1) - v167[2] < v175)
          {
            goto LABEL_226;
          }

          swift_arrayInitWithCopy();

          if (v175)
          {
            v180 = v167[2];
            v51 = __OFADD__(v180, v175);
            v181 = v180 + v175;
            if (v51)
            {
              goto LABEL_227;
            }

            v167[2] = v181;
          }

          goto LABEL_159;
        }
      }

      if (v175)
      {
        goto LABEL_223;
      }

LABEL_159:
      ++v168;
    }

    while (v171 != v166);
  }

  v182 = [v235 accessories];
  v183 = sub_10009E6A4();

  v296 = _swiftEmptyArrayStorage;
  if (v183 >> 62)
  {
    v184 = sub_10009EBA4();
  }

  else
  {
    v184 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v185 = v249;
  if (v184)
  {
    v165 = 0;
    do
    {
      if ((v183 & 0xC000000000000001) != 0)
      {
        v186 = sub_10009EAE4();
      }

      else
      {
        if (v165 >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_225;
        }

        v186 = *(v183 + 8 * v165 + 32);
      }

      v187 = v186;
      v188 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
        goto LABEL_224;
      }

      v189 = sub_10000ADD8(v186, v293, v292, v167);

      sub_100060F3C(v189);
      ++v165;
    }

    while (v188 != v184);
  }

  sub_100015A5C(v296);

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v190 = sub_10009D924();
  sub_100015B68(v190, qword_1000C8278);

  v191 = sub_10009D904();
  v192 = sub_10009E844();
  if (os_log_type_enabled(v191, v192))
  {
    v193 = v281;
    v194 = v282 - v281;
    v195 = swift_slowAlloc();
    *v195 = 134219008;
    *(v195 + 4) = v193;
    *(v195 + 12) = 2048;
    if (v233)
    {
      v196 = sub_10009EBA4();
    }

    else
    {
      v196 = *(v185 + 16);
    }

    *(v195 + 14) = v196;

    *(v195 + 22) = 2048;
    *(v195 + 24) = v194;
    *(v195 + 32) = 2048;
    if (v280)
    {
      v197 = sub_10009EBA4();
    }

    else
    {
      v197 = *(v288 + 2);
    }

    *(v195 + 34) = v197;

    *(v195 + 42) = 2048;
    result = swift_beginAccess();
    v199 = v281 + v194;
    if (__OFADD__(v281, v194))
    {
      __break(1u);
    }

    else
    {
      v200 = v297[2];
      v51 = __OFSUB__(v200, v199);
      v201 = v200 - v199;
      if (!v51)
      {
        *(v195 + 44) = v201;
        _os_log_impl(&_mh_execute_header, v191, v192, "Added: %ld serviceGroups (out of %ld), %ld action sets (out of %ld) and %ld accessories/services to widgetTileInfos", v195, 0x34u);

        goto LABEL_205;
      }
    }

    __break(1u);
    return result;
  }

LABEL_205:
  v202 = sub_10009D904();
  v203 = sub_10009E844();
  if (os_log_type_enabled(v202, v203))
  {
    v204 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v296 = v205;
    *v204 = 136315138;
    swift_beginAccess();

    sub_10000CB84(v206);

    v207 = sub_10009E6B4();
    v209 = v208;

    v210 = sub_10002AD68(v207, v209, &v296);

    *(v204 + 4) = v210;
    _os_log_impl(&_mh_execute_header, v202, v203, "widgetTileInfos UUIDs: %s", v204, 0xCu);
    sub_100015F44(v205);
  }

  v211 = v293;
  v212 = sub_10000A120(v293, &v297);
  v296 = &_swiftEmptySetSingleton;
  v213 = sub_100015BA0(v212, &v296);

  v214 = v213[2];
  swift_beginAccess();
  v215 = v297;
  if (v214 == v297[2])
  {
  }

  else
  {

    v217 = sub_100015DDC(v216);

    if (v215[2] <= *(v217 + 16) >> 3)
    {
      v295 = v217;

      sub_10001070C(v220);

      v219 = v295;
    }

    else
    {

      v219 = sub_100010B08(v218, v217);
    }

    v221 = sub_10009D904();
    v222 = sub_10009E844();
    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      *v223 = 134218496;
      *(v223 + 4) = *(v211 + 16);

      *(v223 + 12) = 2048;
      *(v223 + 14) = v215[2];
      *(v223 + 22) = 2048;
      *(v223 + 24) = v213[2];

      _os_log_impl(&_mh_execute_header, v221, v222, "WidgetTileInfos output inconsistency - uuids:%ld widgetTileInfos:%ld sortedWidgetTileInfos: %ld", v223, 0x20u);
    }

    else
    {
    }

    v224 = sub_10009D904();
    v225 = sub_10009E824();

    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v295 = v227;
      *v226 = 136315138;
      sub_10000CB84(v219);

      v228 = sub_10009E6B4();
      v230 = v229;

      v231 = sub_10002AD68(v228, v230, &v295);

      *(v226 + 4) = v231;
      _os_log_impl(&_mh_execute_header, v224, v225, "Rejected these widgets out for some reason: %s", v226, 0xCu);
      sub_100015F44(v227);
    }

    else
    {
    }
  }

  return v213;
}

void *sub_10000A120(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v28 = type metadata accessor for WidgetTileInfo(0);
  v7 = *(v28 - 8);
  v8 = __chkstk_darwin(v28);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v26 = &v24 - v10;
  v11 = *(a1 + 16);
  v29 = a2;
  swift_beginAccess();
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = sub_10009CF14();
  v14 = *(v12 - 8);
  v13 = v12 - 8;
  v25 = v7;
  v15 = (v7 + 48);
  v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v14 + 72);
  v18 = _swiftEmptyArrayStorage;
  do
  {
    v19 = *v29;
    __chkstk_darwin(v13);
    *(&v24 - 2) = v16;

    sub_10000D8A0(sub_100015FEC, v19, v6);

    if ((*v15)(v6, 1, v28) == 1)
    {
      v13 = sub_1000160CC(v6, &qword_1000C0C20, &qword_1000A1E30);
    }

    else
    {
      v20 = v26;
      sub_1000068B4(v6, v26);
      sub_1000068B4(v20, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100064F4C(0, v18[2] + 1, 1, v18);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = sub_100064F4C((v21 > 1), v22 + 1, 1, v18);
      }

      v18[2] = v22 + 1;
      v13 = sub_1000068B4(v27, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22);
    }

    v16 += v17;
    --v11;
  }

  while (v11);
  return v18;
}

uint64_t sub_10000A450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v3 - 8);
  v5 = &v98 - v4;
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = &v98 - v11;
  v12 = [a1 actions];
  v13 = sub_100007330(0, &qword_1000C0CB8, HMAction_ptr);
  sub_10001607C(&qword_1000C0CC0, &qword_1000C0CB8, HMAction_ptr);
  v108 = v13;
  v14 = sub_10009E754();

  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_10009EA14();
  }

  else
  {
    v15 = *(v14 + 16);
  }

  if (!v15)
  {
    v22 = type metadata accessor for WidgetTileInfo(0);
    v23 = *(*(v22 - 8) + 56);
    v24 = v22;
    v25 = v107;

    return v23(v25, 1, 1, v24);
  }

  v105 = v10;
  v100 = v5;
  v103 = v7;
  v16 = [a1 actions];
  v17 = sub_10009E754();

  v106 = a1;
  v104 = v6;
  v102 = v17;
  if ((v17 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_10009E794();
    v17 = v110[1];
    v18 = v110[2];
    v19 = v110[3];
    v20 = v110[4];
    v21 = v110[5];
  }

  else
  {
    v27 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v21 = v29 & *(v17 + 56);

    v20 = 0;
  }

  v101 = v19;
  v30 = (v19 + 64) >> 6;
  while (1)
  {
    if (v17 < 0)
    {
      v37 = sub_10009EA44();
      if (!v37 || (v109 = v37, swift_dynamicCast(), v36 = v110[0], v34 = v20, v35 = v21, !v110[0]))
      {
LABEL_36:
        sub_100015F9C(v17);

        v57 = v106;
        v58 = [v106 uniqueIdentifier];
        v59 = v105;
        sub_10009CF04();

        v60 = [v57 name];
        v61 = sub_10009E5C4();
        v101 = v62;
        v102 = v61;

        v99 = sub_10009E804();
        v108 = v63;
        v64 = sub_100007378();
        if (!v64)
        {
          v64 = sub_10009E184();
        }

        v98 = v64;
        v66 = v103;
        v65 = v104;
        v67 = *(v103 + 16);
        v68 = v107;
        v67(v107, v59, v104);
        v69 = type metadata accessor for WidgetTileInfo(0);
        v67(v68 + v69[5], v59, v65);
        v70 = v69[10];
        v71 = enum case for StaticRenderingMode.monochrome(_:);
        v72 = sub_10009D5A4();
        v73 = *(*(v72 - 8) + 104);
        v73(v68 + v70, v71, v72);
        v73(v68 + v69[11], enum case for StaticRenderingMode.hierarchical(_:), v72);
        v74 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
        v75 = *(*(v74 - 8) + 56);
        v76 = v100;
        v75(v100, 1, 1, v74);
        v77 = sub_10001C968(_swiftEmptyArrayStorage);
        (*(v66 + 8))(v105, v65);
        v78 = v69[18];
        v79 = sub_10009D3F4();
        (*(*(v79 - 8) + 56))(v68 + v78, 1, 1, v79);
        v80 = v69[19];
        v75((v68 + v80), 1, 1, v74);
        v81 = v69[20];
        v82 = v69[21];
        v83 = v69[22];
        v84 = v69[23];
        v85 = (v68 + v69[6]);
        v86 = v101;
        *v85 = v102;
        v85[1] = v86;
        v87 = (v68 + v69[7]);
        *v87 = 0;
        v87[1] = 0;
        v88 = (v68 + v69[8]);
        v89 = v98;
        v90 = v99;
        v91 = v108;
        *v88 = v99;
        v88[1] = v91;
        v92 = (v68 + v69[9]);
        *v92 = v90;
        v92[1] = v91;
        *(v68 + v69[12]) = v89;
        *(v68 + v69[13]) = 1;
        v93 = v68 + v82;
        v94 = v68 + v69[15];
        v95 = v106;
        *v94 = v106;
        *(v94 + 8) = 2;
        *(v68 + v69[14]) = 1;
        *(v68 + v69[16]) = v77;
        v96 = (v68 + v83);
        *(v68 + v69[17]) = 0;
        *(v68 + v81) = 2;
        *v93 = 0;
        *(v93 + 8) = 1;
        *v96 = 0;
        v96[1] = 0;
        *(v68 + v84) = 2;
        v97 = v95;

        sub_100014CC8(v76, v68 + v80);
        return (*(*(v69 - 1) + 56))(v68, 0, 1, v69);
      }
    }

    else
    {
      v32 = v20;
      v33 = v21;
      v34 = v20;
      if (!v21)
      {
        while (1)
        {
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v34 >= v30)
          {
            goto LABEL_36;
          }

          v33 = *(v18 + 8 * v34);
          ++v32;
          if (v33)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_24:
      v35 = (v33 - 1) & v33;
      v36 = *(*(v17 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));
      if (!v36)
      {
        goto LABEL_36;
      }
    }

    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = v36;
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      break;
    }

    if (v38)
    {
      v31 = v38;
    }

    else
    {
      v31 = 0;
    }

LABEL_18:

    v20 = v34;
    v21 = v35;
  }

  v31 = v40;
  if (!v38)
  {
    goto LABEL_18;
  }

  sub_100015F9C(v17);

  if (qword_1000C0A90 == -1)
  {
    goto LABEL_33;
  }

LABEL_40:
  swift_once();
LABEL_33:
  v41 = sub_10009D924();
  sub_100015B68(v41, qword_1000C8278);
  v42 = v106;
  v43 = sub_10009D904();
  v44 = sub_10009E844();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v107;
  v48 = v103;
  v47 = v104;
  if (v45)
  {
    v49 = swift_slowAlloc();
    v110[0] = swift_slowAlloc();
    *v49 = 136315394;
    *(v49 + 4) = sub_10002AD68(0xD000000000000015, 0x80000001000A4100, v110);
    *(v49 + 12) = 2080;
    v50 = [v42 uniqueIdentifier];
    v51 = v99;
    sub_10009CF04();

    sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v52 = sub_10009ED04();
    v54 = v53;
    (*(v48 + 8))(v51, v47);
    v55 = sub_10002AD68(v52, v54, v110);

    *(v49 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v43, v44, "%s Ignoring action set %s with unsupportedActions (media playback, apple media accessory etc).", v49, 0x16u);
    swift_arrayDestroy();
  }

  v56 = type metadata accessor for WidgetTileInfo(0);
  return (*(*(v56 - 8) + 56))(v46, 1, 1, v56);
}

void *sub_10000ADD8(unint64_t isa, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v244 = a4;
  v243 = a3;
  v6 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v7 = __chkstk_darwin(v6 - 8);
  v239 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v234 - v9;
  v246 = type metadata accessor for WidgetTileInfo(0);
  v245 = *(v246 - 8);
  v11 = __chkstk_darwin(v246);
  v235 = &v234 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v238 = &v234 - v14;
  v15 = __chkstk_darwin(v13);
  v236 = &v234 - v16;
  v17 = __chkstk_darwin(v15);
  v237 = &v234 - v18;
  v19 = __chkstk_darwin(v17);
  v241 = &v234 - v20;
  v21 = __chkstk_darwin(v19);
  v242 = &v234 - v22;
  __chkstk_darwin(v21);
  v261 = (&v234 - v23);
  v24 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  __chkstk_darwin(v24 - 8);
  v26 = &v234 - v25;
  v27 = sub_10009D4F4();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v234 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v234 - v32;
  v34 = sub_10009CF14();
  v262 = *(v34 - 8);
  v263 = v34;
  v35 = __chkstk_darwin(v34);
  v264 = &v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v234 - v37;
  v266 = &_swiftEmptySetSingleton;
  v251 = 0;
  sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  v39 = sub_10009E894();
  v252 = isa;
  if (v39)
  {
    if (!a2 || (v40 = [isa uniqueIdentifier], sub_10009CF04(), v40, LOBYTE(v40) = sub_100024418(v38, a2), (*(v262 + 8))(v38, v263), (v40 & 1) != 0))
    {
      sub_10009E7D4();
      if ((*(v28 + 48))(v26, 1, v27) == 1)
      {
        sub_1000160CC(v26, &qword_1000C0C80, &qword_1000A1E10);
      }

      else
      {
        (*(v28 + 32))(v33, v26, v27);
        sub_10000E9E8(isa, v33, v10);
        if ((*(v245 + 48))(v10, 1, v246) != 1)
        {
          v195 = v261;
          sub_1000068B4(v10, v261);
          if (qword_1000C0A90 != -1)
          {
            swift_once();
          }

          v196 = sub_10009D924();
          sub_100015B68(v196, qword_1000C8278);
          (*(v28 + 16))(v31, v33, v27);
          v197 = v252;
          v198 = sub_10009D904();
          v199 = sub_10009E844();

          if (os_log_type_enabled(v198, v199))
          {
            v200 = swift_slowAlloc();
            v264 = swift_slowAlloc();
            v268 = v264;
            *v200 = 136315650;
            *(v200 + 4) = sub_10002AD68(0xD000000000000047, 0x80000001000A40B0, &v268);
            *(v200 + 12) = 2080;
            v201 = [v197 uniqueIdentifier];
            v260 = v198;
            v202 = v201;
            sub_10009CF04();

            sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            LODWORD(v259) = v199;
            v203 = v38;
            v204 = v263;
            v205 = sub_10009ED04();
            v207 = v206;
            (*(v262 + 8))(v203, v204);
            v208 = sub_10002AD68(v205, v207, &v268);

            *(v200 + 14) = v208;
            *(v200 + 22) = 2080;
            sub_100015FA4(&qword_1000C0C98, &type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
            v209 = sub_10009ED04();
            v211 = v210;
            v212 = *(v28 + 8);
            v212(v31, v27);
            v213 = sub_10002AD68(v209, v211, &v268);

            *(v200 + 24) = v213;
            v214 = v260;
            _os_log_impl(&_mh_execute_header, v260, v259, "%s for accessory %s - MatterDevice: %s", v200, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v212 = *(v28 + 8);
            v212(v31, v27);
          }

          v215 = v241;
          sub_100006850(v195, v241);
          v216 = v242;
          sub_100003C48(v242, v215);
          sub_100006918(v216);
          sub_100006918(v195);
          v212(v33, v27);
          return v266;
        }

        (*(v28 + 8))(v33, v27);
        sub_1000160CC(v10, &qword_1000C0C20, &qword_1000A1E30);
        isa = v252;
      }
    }
  }

  v41 = [isa hf_visibleServices];
  v42 = sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  sub_10001607C(&qword_1000C0C88, &qword_1000C0C48, HMService_ptr);
  v43 = sub_10009E754();

  v255 = v42;
  v250 = v38;
  v249 = a2;
  if ((v43 & 0xC000000000000001) != 0)
  {
    v45 = &_swiftEmptySetSingleton;
    v268 = &_swiftEmptySetSingleton;
    sub_10009E9D4();
    v46 = sub_10009EA44();
    if (v46)
    {
      isa = &type metadata for Swift.AnyObject;
      v47 = -1;
      do
      {
        v265 = v46;
        swift_dynamicCast();
        v48 = [v267 hf_isSensorService];
        v49 = v267;
        if (v48)
        {
        }

        else
        {
          v50 = *(v45 + 16);
          if (*(v45 + 24) <= v50)
          {
            sub_100004EB8(v50 + 1);
          }

          v45 = v268;
          v51 = sub_10009E8D4(*(v268 + 5));
          v52 = v45 + 56;
          v53 = -1 << *(v45 + 32);
          v54 = v51 & ~v53;
          v55 = v54 >> 6;
          if (((-1 << v54) & ~*(v45 + 56 + 8 * (v54 >> 6))) == 0)
          {
            v57 = 0;
            v58 = (63 - v53) >> 6;
            while (++v55 != v58 || (v57 & 1) == 0)
            {
              v59 = v55 == v58;
              if (v55 == v58)
              {
                v55 = 0;
              }

              v57 |= v59;
              v60 = *(v52 + 8 * v55);
              if (v60 != -1)
              {
                v56 = __clz(__rbit64(~v60)) + (v55 << 6);
                goto LABEL_26;
              }
            }

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
LABEL_137:
            __break(1u);
LABEL_138:
            v78 = sub_10009EBA4();
            goto LABEL_51;
          }

          v56 = __clz(__rbit64((-1 << v54) & ~*(v45 + 56 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
          *(v52 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
          *(*(v45 + 48) + 8 * v56) = v49;
          ++*(v45 + 16);
        }

        v46 = sub_10009EA44();
      }

      while (v46);
    }

    v47 = v262;
  }

  else
  {
    v61 = *(v43 + 32);
    v62 = ((1 << v61) + 63) >> 6;
    if ((v61 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v231 = swift_slowAlloc();
        v232 = v62;
        v233 = v251;
        v45 = sub_1000149B0(v231, v232, v43, sub_10000F518);
        v251 = v233;

        v47 = v262;
        goto LABEL_44;
      }
    }

    v261 = &v234;
    __chkstk_darwin(v44);
    v64 = &v234 - ((v63 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v64, v63);
    v65 = 0;
    v66 = 0;
    v67 = 1 << *(v43 + 32);
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v47 = v68 & *(v43 + 56);
    v69 = (v67 + 63) >> 6;
    v45 = &NSObject__properties;
    while (v47)
    {
      v70 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
LABEL_39:
      isa = v70 | (v66 << 6);
      if (([*(*(v43 + 48) + 8 * isa) hf_isSensorService] & 1) == 0)
      {
        *&v64[(isa >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << isa;
        v73 = __OFADD__(v65++, 1);
        if (v73)
        {
          __break(1u);
          goto LABEL_43;
        }
      }
    }

    v71 = v66;
    v47 = v262;
    while (1)
    {
      v66 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_135;
      }

      if (v66 >= v69)
      {
        break;
      }

      v72 = *(v43 + 56 + 8 * v66);
      ++v71;
      if (v72)
      {
        v70 = __clz(__rbit64(v72));
        v47 = (v72 - 1) & v72;
        goto LABEL_39;
      }
    }

LABEL_43:
    v45 = sub_100013C2C(v64, v62, v65, v43);
  }

LABEL_44:
  v74 = v252;
  if ((v45 & 0xC000000000000001) == 0)
  {
    if (*(v45 + 16) < 2)
    {
      goto LABEL_46;
    }

LABEL_48:
    v247 = sub_10009E7E4();
    v75 = v247 & 1;
    v76 = &v269;
    goto LABEL_49;
  }

  if (sub_10009EA14() >= 2)
  {
    goto LABEL_48;
  }

LABEL_46:
  v240 = 0;
  v75 = 1;
  v76 = &v270 + 4;
LABEL_49:
  *(v76 - 64) = v75;
  v77 = [v74 services];
  isa = sub_10009E6A4();

  if (isa >> 62)
  {
    goto LABEL_138;
  }

  v78 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_51:
  v248 = isa;
  if (v78)
  {
    v79 = 0;
    v257 = isa & 0xFFFFFFFFFFFFFF8;
    v258 = isa & 0xC000000000000001;
    v256 = isa + 32;
    v80 = (v47 + 32);
    v81 = _swiftEmptyArrayStorage;
    v254 = v45;
    v253 = v78;
    while (1)
    {
      if (v258)
      {
        v82 = sub_10009EAE4();
      }

      else
      {
        if (v79 >= *(v257 + 16))
        {
          goto LABEL_132;
        }

        v82 = *(v256 + 8 * v79);
      }

      isa = v82;
      v73 = __OFADD__(v79, 1);
      v83 = (v79 + 1);
      if (v73)
      {
        goto LABEL_131;
      }

      v261 = v83;
      v84 = [v82 linkedServices];
      if (v84)
      {
        v259 = isa;
        v85 = v84;
        v86 = sub_10009E6A4();

        if (v86 >> 62)
        {
          v87 = sub_10009EBA4();
          v260 = v81;
          if (v87)
          {
LABEL_62:
            v88 = 0;
            v89 = v86 & 0xFFFFFFFFFFFFFF8;
            v90 = _swiftEmptyArrayStorage;
            while (1)
            {
              if ((v86 & 0xC000000000000001) != 0)
              {
                v91 = sub_10009EAE4();
              }

              else
              {
                if (v88 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_118;
                }

                v91 = *(v86 + 8 * v88 + 32);
              }

              v47 = v91;
              v92 = v88 + 1;
              if (__OFADD__(v88, 1))
              {
                break;
              }

              v93 = [v91 uniqueIdentifier];
              sub_10009CF04();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v90 = sub_100064F74(0, v90[2] + 1, 1, v90);
              }

              v95 = v90[2];
              v94 = v90[3];
              if (v95 >= v94 >> 1)
              {
                v90 = sub_100064F74((v94 > 1), v95 + 1, 1, v90);
              }

              v90[2] = v95 + 1;
              v47 = v262;
              (*(v262 + 32))(v90 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v262 + 72) * v95, v264, v263);
              ++v88;
              if (v92 == v87)
              {
                goto LABEL_78;
              }
            }

            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }
        }

        else
        {
          v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v260 = v81;
          if (v87)
          {
            goto LABEL_62;
          }
        }

        v90 = _swiftEmptyArrayStorage;
LABEL_78:

        v45 = v254;
        v81 = v260;
        v78 = v253;
      }

      else
      {

        v90 = _swiftEmptyArrayStorage;
      }

      v96 = v90[2];
      isa = v81[2].isa;
      v97 = isa + v96;
      if (__OFADD__(isa, v96))
      {
        goto LABEL_133;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v97 <= (v81[3].isa >> 1))
      {
        if (!v90[2])
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (isa <= v97)
        {
          v99 = isa + v96;
        }

        else
        {
          v99 = isa;
        }

        v81 = sub_100064F74(isUniquelyReferenced_nonNull_native, v99, 1, v81);
        if (!v90[2])
        {
LABEL_53:

          if (v96)
          {
            goto LABEL_134;
          }

          goto LABEL_54;
        }
      }

      if (((v81[3].isa >> 1) - v81[2].isa) < v96)
      {
        goto LABEL_136;
      }

      swift_arrayInitWithCopy();

      if (v96)
      {
        v100 = v81[2].isa;
        v73 = __OFADD__(v100, v96);
        v101 = (v100 + v96);
        if (v73)
        {
          goto LABEL_137;
        }

        v81[2].isa = v101;
      }

LABEL_54:
      v79 = v261;
      if (v261 == v78)
      {
        goto LABEL_93;
      }
    }
  }

  v81 = _swiftEmptyArrayStorage;
LABEL_93:

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v102 = sub_10009D924();
  v103 = sub_100015B68(v102, qword_1000C8278);
  v104 = v252;

  v264 = v103;
  v105 = sub_10009D904();
  v106 = sub_10009E844();

  v107 = os_log_type_enabled(v105, v106);
  v261 = v104;
  if (v107)
  {
    v108 = swift_slowAlloc();
    v268 = swift_slowAlloc();
    *v108 = 136316162;
    *(v108 + 4) = sub_10002AD68(0xD000000000000047, 0x80000001000A40B0, &v268);
    v260 = v81;
    *(v108 + 12) = 2080;
    v109 = [v104 uniqueIdentifier];
    v110 = v250;
    sub_10009CF04();

    sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v111 = v263;
    v112 = sub_10009ED04();
    v114 = v113;
    (*(v262 + 8))(v110, v111);
    v115 = sub_10002AD68(v112, v114, &v268);

    *(v108 + 14) = v115;
    *(v108 + 22) = 2080;
    v116 = v251;
    sub_10000CF24(v45);
    v251 = v116;
    v117 = sub_10009E6B4();
    v119 = v118;

    v120 = sub_10002AD68(v117, v119, &v268);

    *(v108 + 24) = v120;
    *(v108 + 32) = 1024;
    *(v108 + 34) = v240;
    *(v108 + 38) = 2080;
    v81 = v260;
    v121 = sub_10009E6B4();
    v123 = sub_10002AD68(v121, v122, &v268);

    *(v108 + 40) = v123;
    _os_log_impl(&_mh_execute_header, v105, v106, "%s for accessory %s - allVisibleServices: %s needToBeShownAsSeparateTile: %{BOOL}d linkedServiceIDs: %s", v108, 0x30u);
    swift_arrayDestroy();
  }

  v124 = v249;
  if (v247)
  {
    v125 = v261;
    v126 = [v261 services];
    v127 = sub_10009E6A4();

    v128 = v125;

    v129 = v243;

    v130 = v244;

    sub_100014D38(v127, v129, v130, v128, v45, v81, v124, &v266);

    swift_bridgeObjectRelease_n();

    v131 = v128;
    v132 = sub_10009D904();
    v133 = sub_10009E844();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      *v134 = 136315394;
      swift_beginAccess();

      sub_10000CB84(v135);

      v136 = v263;
      v137 = sub_10009E6B4();
      v139 = v138;

      v140 = sub_10002AD68(v137, v139, &v268);

      *(v134 + 4) = v140;
      *(v134 + 12) = 2080;
      v141 = [v131 uniqueIdentifier];
      v142 = v250;
      sub_10009CF04();

      sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = sub_10009ED04();
      v145 = v144;
      (*(v262 + 8))(v142, v136);
      v146 = sub_10002AD68(v143, v145, &v268);

      *(v134 + 14) = v146;
      _os_log_impl(&_mh_execute_header, v132, v133, "Returning widgetTileInfo for services %s of accessory %s", v134, 0x16u);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    return v266;
  }

  v147 = v250;
  v148 = v261;
  v149 = v262;
  if (!v124 || (v150 = [v261 uniqueIdentifier], sub_10009CF04(), v150, LOBYTE(v150) = sub_100024418(v147, v124), (*(v149 + 8))(v147, v263), (v150 & 1) != 0))
  {
    v151 = v239;
    sub_10000F550(v148, v239);
    if ((*(v245 + 48))(v151, 1, v246) != 1)
    {
      v89 = v237;
      sub_1000068B4(v151, v237);
      v186 = v241;
      sub_100006850(v89, v241);
      v187 = v242;
      sub_100003C48(v242, v186);
      sub_100006918(v187);
      v47 = v236;
      sub_100006850(v89, v236);
      v80 = sub_10009D904();
      v188 = sub_10009E844();
      if (os_log_type_enabled(v80, v188))
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v268 = v190;
        *v189 = 136315138;
        sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v191 = sub_10009ED04();
        v193 = v192;
        sub_100006918(v47);
        v194 = sub_10002AD68(v191, v193, &v268);

        *(v189 + 4) = v194;
        _os_log_impl(&_mh_execute_header, v80, v188, "Returning widgetTileInfo for accessory %s", v189, 0xCu);
        sub_100015F44(v190);
      }

      else
      {
LABEL_119:

        sub_100006918(v47);
      }

      v185 = v89;
      goto LABEL_129;
    }

    sub_1000160CC(v151, &qword_1000C0C20, &qword_1000A1E30);
  }

  v152 = v148;
  v153 = [v148 hf_primaryService];
  if (v153)
  {
    v154 = v153;
    if (v124 && (v155 = [v153 uniqueIdentifier], sub_10009CF04(), v155, LOBYTE(v155) = sub_100024418(v147, v124), (*(v149 + 8))(v147, v263), (v155 & 1) == 0))
    {
    }

    else
    {
      v156 = [v154 uniqueIdentifier];
      sub_10009CF04();

      v157 = [v154 name];
      v158 = sub_10009E5C4();
      v160 = v159;

      v161 = v238;
      sub_10000F8B0(v154, v147, v158, v160, 0, 255, v238);

      v162 = *(v149 + 8);
      (v162)(v147, v263);
      v163 = [v152 hf_primaryService];
      if (v163)
      {

        v164 = v241;
        sub_100006850(v161, v241);
        v165 = v242;
        sub_100003C48(v242, v164);
        v166 = v165;
        v167 = v238;
        sub_100006918(v166);
        v168 = v235;
        sub_100006850(v167, v235);
        v169 = v152;
        v170 = sub_10009D904();
        v171 = sub_10009E844();

        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          LODWORD(v262) = v171;
          v173 = v172;
          v264 = swift_slowAlloc();
          v268 = v264;
          *v173 = 136315394;
          sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v260 = v162;
          v261 = v170;
          v174 = v263;
          v175 = sub_10009ED04();
          v177 = v176;
          sub_100006918(v168);
          v178 = sub_10002AD68(v175, v177, &v268);

          *(v173 + 4) = v178;
          *(v173 + 12) = 2080;
          v179 = [v169 uniqueIdentifier];
          sub_10009CF04();

          v180 = sub_10009ED04();
          v182 = v181;
          (v260)(v147, v174);
          v183 = sub_10002AD68(v180, v182, &v268);

          *(v173 + 14) = v183;
          v184 = v261;
          _os_log_impl(&_mh_execute_header, v261, v262, "Returning widgetTileInfo for primary service %s of accessory %s", v173, 0x16u);
          swift_arrayDestroy();

          v185 = v238;
        }

        else
        {

          sub_100006918(v168);
          v185 = v167;
        }

LABEL_129:
        sub_100006918(v185);
        return v266;
      }

      sub_100006918(v161);
    }
  }

  v217 = v152;
  v218 = sub_10009D904();
  v219 = sub_10009E844();

  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v221 = v149;
    v222 = swift_slowAlloc();
    v268 = v222;
    *v220 = 136315138;
    v223 = [v217 uniqueIdentifier];
    sub_10009CF04();

    sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v224 = v147;
    v225 = v263;
    v226 = sub_10009ED04();
    v228 = v227;
    (*(v221 + 8))(v224, v225);
    v229 = sub_10002AD68(v226, v228, &v268);

    *(v220 + 4) = v229;
    _os_log_impl(&_mh_execute_header, v218, v219, "Returning no widgetTileInfo for accessory %s", v220, 0xCu);
    sub_100015F44(v222);
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10000CB84(uint64_t a1)
{
  v3 = type metadata accessor for WidgetTileInfo(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009CF14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = _swiftEmptyArrayStorage;
  sub_10001BC00(0, v9, 0);
  v10 = v42;
  v11 = a1 + 56;
  result = sub_10009E994();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 64;
  v32 = v9;
  v33 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_100006850(*(a1 + 48) + *(v39 + 72) * v14, v38);
    (*v36)(v8, v19, v5);
    sub_100006918(v19);
    v42 = v10;
    v20 = v5;
    v22 = v10[2];
    v21 = v10[3];
    if (v22 >= v21 >> 1)
    {
      sub_10001BC00((v21 > 1), v22 + 1, 1);
      v10 = v42;
    }

    v10[2] = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_100015F90(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_100015F90(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_10000CF24(uint64_t a1)
{
  v3 = sub_10009CF14();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_10009EA14();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v49 = _swiftEmptyArrayStorage;
    sub_10001BC00(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_10009E9C4();
    }

    else
    {
      result = sub_10009E994();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_100014A40(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 uniqueIdentifier];
        sub_10009CF04();

        v21 = v44;
        v49 = v44;
        v23 = v44[2];
        v22 = v44[3];
        if (v23 >= v22 >> 1)
        {
          sub_10001BC00((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        v21[2] = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_10009E9E4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          sub_100003714(&qword_1000C0CA8, &qword_10009FA08);
          v12 = sub_10009E784();
          sub_10009EA54();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_100015F90(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = (1 << *(v17 + 32));
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = (__clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_100015F90(v14, v15, 0);
                v25 = (__clz(__rbit64(v32)) + v29);
                goto LABEL_33;
              }
            }

            result = sub_100015F90(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D330(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_100003714(&qword_1000C0C70, &qword_10009FA00);
  __chkstk_darwin(v3);
  v5 = v43 - v4;
  v6 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v43 - v11;
  __chkstk_darwin(v10);
  v14 = v43 - v13;
  v15 = sub_10009CF14();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 + *(type metadata accessor for WidgetTileInfo(0) + 60);
  if (*(v19 + 8))
  {
    return sub_10009CEF4() & 1;
  }

  v45 = v12;
  v46 = v14;
  v47 = v9;
  v48 = v5;
  v21 = *v19;
  v22 = [*v19 uniqueIdentifier];
  sub_10009CF04();

  LOBYTE(v22) = sub_10009CEF4();
  v23 = *(v16 + 8);
  v44 = v18;
  v23(v18, v15);
  if ((v22 & 1) == 0)
  {
    v25 = v15;
    v43[0] = v23;
    v43[1] = v16 + 8;
    v26 = v46;
    (*(v16 + 16))(v46, v49, v15);
    v49 = v16;
    v27 = *(v16 + 56);
    v28 = 1;
    v27(v26, 0, 1, v25);
    v29 = [v21 accessory];
    if (v29)
    {
      v30 = v29;
      v31 = v27;
      v32 = [v29 uniqueIdentifier];

      v33 = v45;
      sub_10009CF04();

      v27 = v31;
      v28 = 0;
      v34 = v47;
    }

    else
    {
      v34 = v47;
      v33 = v45;
    }

    v35 = v44;
    v27(v33, v28, 1, v25);
    v36 = *(v3 + 48);
    v37 = v48;
    sub_10001600C(v26, v48);
    sub_10001600C(v33, v37 + v36);
    v38 = v25;
    v39 = *(v49 + 48);
    if (v39(v37, 1, v25) == 1)
    {
      sub_1000160CC(v33, &qword_1000C0C78, &qword_1000A0390);
      v40 = v48;
      sub_1000160CC(v26, &qword_1000C0C78, &qword_1000A0390);
      if (v39(v40 + v36, 1, v25) == 1)
      {
        sub_1000160CC(v40, &qword_1000C0C78, &qword_1000A0390);
        v24 = 1;
        return v24 & 1;
      }
    }

    else
    {
      sub_10001600C(v37, v34);
      if (v39(v37 + v36, 1, v25) != 1)
      {
        (*(v49 + 32))(v35, v37 + v36, v25);
        sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = sub_10009E534();
        v42 = v43[0];
        (v43[0])(v35, v38);
        sub_1000160CC(v33, &qword_1000C0C78, &qword_1000A0390);
        sub_1000160CC(v26, &qword_1000C0C78, &qword_1000A0390);
        v42(v47, v38);
        sub_1000160CC(v37, &qword_1000C0C78, &qword_1000A0390);
        return v24 & 1;
      }

      v41 = v34;
      sub_1000160CC(v33, &qword_1000C0C78, &qword_1000A0390);
      v40 = v48;
      sub_1000160CC(v26, &qword_1000C0C78, &qword_1000A0390);
      (v43[0])(v41, v25);
    }

    sub_1000160CC(v40, &qword_1000C0C70, &qword_10009FA00);
    v24 = 0;
    return v24 & 1;
  }

  v24 = 1;
  return v24 & 1;
}

uint64_t sub_10000D8A0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v22 = type metadata accessor for WidgetTileInfo(0);
  v25 = *(v22 - 8);
  v5 = __chkstk_darwin(v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      sub_100006850(*(a2 + 48) + *(v25 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v9);
      sub_1000068B4(v9, v7);
      v17 = v24(v7);
      if (v3)
      {
        sub_100006918(v7);
      }

      if (v17)
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_100006918(v7);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v20 = v23;
    sub_1000068B4(v7, v23);
    v19 = v20;
    v18 = 0;
    return (*(v25 + 56))(v19, v18, 1, v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v18 = 1;
        v19 = v23;
        return (*(v25 + 56))(v19, v18, 1, v22);
      }

      v12 = *(a2 + 56 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10000DAC8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10009EAE4();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_10000DBE0(uint64_t a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = sub_10009E774();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_1000042AC(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DE40(void *a1)
{
  v2 = sub_10009CF14();
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = __chkstk_darwin(v2);
  v96 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v86 - v5;
  v7 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v8 = __chkstk_darwin(v7 - 8);
  v93 = (&v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = &v86 - v10;
  v87 = a1;
  v12 = [a1 serviceGroups];
  v13 = sub_100007330(0, &qword_1000C0C40, HMServiceGroup_ptr);
  v14 = sub_10009E6A4();

  v91 = v6;
  v92 = v13;
  if (v14 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v16 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = sub_10009EAE4();
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v17 services];
      sub_100007330(0, &qword_1000C0C48, HMService_ptr);
      v21 = sub_10009E6A4();

      if (v21 >> 62)
      {
        if (sub_10009EBA4())
        {
LABEL_14:

          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = sub_10009EAE4();
          }

          else
          {
            if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v24 = *(v21 + 32);
          }

          v25 = v24;

          v26 = [v18 uniqueIdentifier];
          v27 = v91;
          sub_10009CF04();

          v28 = [v18 name];
          v29 = sub_10009E5C4();
          v31 = v30;

          sub_10000F8B0(v25, v27, v29, v31, v18, 1, v11);

          (*(v94 + 8))(v27, v95);
          v32 = type metadata accessor for WidgetTileInfo(0);
          (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
          sub_1000160CC(v11, &qword_1000C0C20, &qword_1000A1E30);
          return 1;
        }
      }

      else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v22 = type metadata accessor for WidgetTileInfo(0);
      (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
      sub_1000160CC(v11, &qword_1000C0C20, &qword_1000A1E30);
      ++v16;
      if (v19 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v33 = [v87 actionSets];
  sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
  v34 = sub_10009E6A4();

  if (v34 >> 62)
  {
    goto LABEL_35;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v93;
  if (!v35)
  {
LABEL_36:

    v42 = [v87 serviceGroups];
    v43 = sub_10009E6A4();

    v44 = v43;
    v97 = _swiftEmptyArrayStorage;
    if (v43 >> 62)
    {
      goto LABEL_68;
    }

    for (j = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); j; v44 = v59)
    {
      v46 = 0;
      v90 = v44 & 0xFFFFFFFFFFFFFF8;
      v91 = v44 & 0xC000000000000001;
      v86 = v44;
      v88 = j;
      v89 = v44 + 32;
      while (1)
      {
        if (v91)
        {
          v44 = sub_10009EAE4();
          v48 = __OFADD__(v46, 1);
          v49 = (v46 + 1);
          if (v48)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v46 >= *(v90 + 16))
          {
            goto LABEL_67;
          }

          v44 = *(v89 + 8 * v46);
          v48 = __OFADD__(v46, 1);
          v49 = (v46 + 1);
          if (v48)
          {
            goto LABEL_66;
          }
        }

        v92 = v44;
        v93 = v49;
        v50 = [v44 services];
        sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        v51 = sub_10009E6A4();

        if (v51 >> 62)
        {
          break;
        }

        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v52)
        {
          goto LABEL_46;
        }

LABEL_39:
        v47 = _swiftEmptyArrayStorage;
LABEL_40:

        v44 = sub_1000615AC(v47);
        v46 = v93;
        if (v93 == v88)
        {
          v93 = v97;
          goto LABEL_70;
        }
      }

      v44 = sub_10009EBA4();
      v52 = v44;
      if (!v44)
      {
        goto LABEL_39;
      }

LABEL_46:
      v53 = 0;
      v47 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v44 = sub_10009EAE4();
        }

        else
        {
          if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v44 = *(v51 + 8 * v53 + 32);
        }

        v54 = v44;
        v55 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        v56 = [v44 uniqueIdentifier];
        sub_10009CF04();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_100064F74(0, v47[2] + 1, 1, v47);
        }

        v58 = v47[2];
        v57 = v47[3];
        if (v58 >= v57 >> 1)
        {
          v47 = sub_100064F74((v57 > 1), v58 + 1, 1, v47);
        }

        v47[2] = v58 + 1;
        v44 = (*(v94 + 32))(v47 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v58, v96, v95);
        ++v53;
        if (v55 == v52)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      v59 = v44;
      j = sub_10009EBA4();
    }

    v93 = _swiftEmptyArrayStorage;
LABEL_70:

    v60 = [v87 accessories];
    v92 = sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    v61 = sub_10009E6A4();

    if (v61 >> 62)
    {
      goto LABEL_102;
    }

    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v62)
    {
LABEL_103:
      v64 = _swiftEmptyArrayStorage;
LABEL_104:

      v78 = [v87 accessories];
      v79 = sub_10009E6A4();

      if (v79 >> 62)
      {
LABEL_119:
        v80 = sub_10009EBA4();
      }

      else
      {
        v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (k = 0; v80 != k; ++k)
      {
        if ((v79 & 0xC000000000000001) != 0)
        {
          v82 = sub_10009EAE4();
        }

        else
        {
          if (k >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_118;
          }

          v82 = *(v79 + 8 * k + 32);
        }

        v83 = v82;
        if (__OFADD__(k, 1))
        {
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        v84 = sub_10000ADD8(v82, 0, v93, v64);

        v85 = v84[2];

        if (v85)
        {

          return 1;
        }
      }

      return 0;
    }

LABEL_72:
    v63 = 0;
    v96 = (v61 & 0xC000000000000001);
    v64 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v96)
      {
        v65 = sub_10009EAE4();
      }

      else
      {
        if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v65 = *(v61 + 8 * v63 + 32);
      }

      v66 = v65;
      v67 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        v62 = sub_10009EBA4();
        if (!v62)
        {
          goto LABEL_103;
        }

        goto LABEL_72;
      }

      v68 = [v65 uniqueIdentifiersForBridgedAccessories];
      if (v68)
      {
        v69 = v68;
        v70 = sub_10009E6A4();

        v66 = v69;
      }

      else
      {
        v70 = _swiftEmptyArrayStorage;
      }

      v71 = v70[2];
      v72 = v64[2];
      v73 = v72 + v71;
      if (__OFADD__(v72, v71))
      {
        goto LABEL_98;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v73 <= v64[3] >> 1)
      {
        if (v70[2])
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v72 <= v73)
        {
          v75 = v72 + v71;
        }

        else
        {
          v75 = v72;
        }

        v64 = sub_100064F74(isUniquelyReferenced_nonNull_native, v75, 1, v64);
        if (v70[2])
        {
LABEL_91:
          if ((v64[3] >> 1) - v64[2] < v71)
          {
            goto LABEL_100;
          }

          swift_arrayInitWithCopy();

          if (v71)
          {
            v76 = v64[2];
            v48 = __OFADD__(v76, v71);
            v77 = v76 + v71;
            if (v48)
            {
              goto LABEL_101;
            }

            v64[2] = v77;
          }

          goto LABEL_74;
        }
      }

      if (v71)
      {
        goto LABEL_99;
      }

LABEL_74:
      ++v63;
      if (v67 == v62)
      {
        goto LABEL_104;
      }
    }
  }

LABEL_23:
  v37 = 0;
  while (1)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = sub_10009EAE4();
    }

    else
    {
      if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v38 = *(v34 + 8 * v37 + 32);
    }

    v39 = v38;
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v35 = sub_10009EBA4();
      v36 = v93;
      if (!v35)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    sub_10000A450(v38, v36);

    v41 = type metadata accessor for WidgetTileInfo(0);
    if ((*(*(v41 - 8) + 48))(v36, 1, v41) != 1)
    {
      break;
    }

    sub_1000160CC(v36, &qword_1000C0C20, &qword_1000A1E30);
    ++v37;
    if (v40 == v35)
    {
      goto LABEL_36;
    }
  }

  sub_1000160CC(v36, &qword_1000C0C20, &qword_1000A1E30);
  return 1;
}

uint64_t sub_10000E9E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a1;
  v111 = a3;
  v4 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  __chkstk_darwin(v4 - 8);
  v118 = &v96 - v5;
  v6 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v6 - 8);
  v127 = &v96 - v7;
  v8 = sub_10009D5A4();
  v116 = *(v8 - 8);
  v117 = v8;
  v9 = __chkstk_darwin(v8);
  v126 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v128 = &v96 - v11;
  v110 = sub_10009D7F4();
  v108 = *(v110 - 8);
  v12 = __chkstk_darwin(v110);
  v115 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v114 = &v96 - v15;
  v16 = __chkstk_darwin(v14);
  v107 = &v96 - v17;
  __chkstk_darwin(v16);
  v104 = &v96 - v18;
  v105 = sub_10009D804();
  v19 = *(v105 - 8);
  v20 = __chkstk_darwin(v105);
  v109 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v106 = &v96 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v96 - v25;
  __chkstk_darwin(v24);
  v28 = &v96 - v27;
  v29 = sub_10009CF14();
  v124 = *(v29 - 8);
  v125 = v29;
  v30 = __chkstk_darwin(v29);
  v123 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v122 = &v96 - v32;
  v33 = sub_10009D4F4();
  v34 = *(v33 - 8);
  v112 = v33;
  v113 = v34;
  v35 = __chkstk_darwin(v33);
  v97 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v96 - v37;
  v39 = sub_10009D3F4();
  v120 = *(v39 - 8);
  v121 = v39;
  __chkstk_darwin(v39);
  v41 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v38, a2, v33);
  sub_100015FA4(&qword_1000C0CA0, &type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  sub_10009D404();
  v42 = v119;
  v43 = [v119 uniqueIdentifier];
  sub_10009CF04();

  v44 = [v42 uniqueIdentifier];
  sub_10009CF04();

  v103 = sub_10009D3C4();
  v102 = v45;
  v101 = sub_10009D3D4();
  v100 = v46;
  sub_10009D3E4();
  v47 = v104;
  sub_10009D7C4();
  v48 = *(v19 + 8);
  v49 = v105;
  v48(v28, v105);
  v99 = sub_10009D7E4();
  v98 = v50;
  v51 = *(v108 + 8);
  v52 = v110;
  v51(v47, v110);
  sub_10009D3E4();
  v53 = v107;
  sub_10009D7B4();
  v48(v26, v49);
  v108 = sub_10009D7E4();
  v104 = v54;
  v51(v53, v52);
  v55 = v106;
  sub_10009D3E4();
  v56 = v114;
  sub_10009D7C4();
  v48(v55, v49);
  sub_10009D7D4();
  v51(v56, v52);
  v57 = v109;
  sub_10009D3E4();
  v58 = v115;
  sub_10009D7B4();
  v48(v57, v49);
  v59 = v111;
  v60 = v126;
  sub_10009D7D4();
  v51(v58, v52);
  v61 = sub_10009D3B4();
  LOBYTE(v44) = sub_10009D3A4();
  v62 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  v63 = *(*(v62 - 8) + 56);
  v63(v127, 1, 1, v62);
  v115 = sub_10001C968(_swiftEmptyArrayStorage);
  v64 = type metadata accessor for WidgetTileInfo(0);
  (*(v120 + 56))(v59 + v64[18], 1, 1, v121);
  v114 = v64[19];
  v63(&v114[v59], 1, 1, v62);
  v65 = v125;
  v66 = *(v124 + 16);
  v66(v59, v122, v125);
  v66(v59 + v64[5], v123, v65);
  v67 = (v59 + v64[6]);
  v68 = v102;
  *v67 = v103;
  v67[1] = v68;
  v69 = (v59 + v64[7]);
  v70 = v100;
  *v69 = v101;
  v69[1] = v70;
  v71 = (v59 + v64[8]);
  v72 = v98;
  *v71 = v99;
  v71[1] = v72;
  v73 = (v59 + v64[9]);
  v74 = v104;
  *v73 = v108;
  v73[1] = v74;
  v75 = v117;
  v76 = v116;
  v77 = *(v116 + 16);
  v77(v59 + v64[10], v128, v117);
  v78 = v60;
  v79 = v75;
  v77(v59 + v64[11], v78, v75);
  v80 = v113;
  *(v59 + v64[12]) = v61;
  *(v59 + v64[13]) = v44 & 1;
  v81 = v59 + v64[15];
  v82 = v119;
  *v81 = v119;
  *(v81 + 8) = 3;

  v83 = v82;
  v84 = v118;
  sub_10009E7D4();
  v85 = v84;
  v86 = v112;
  if ((*(v80 + 48))(v85, 1, v112) == 1)
  {
    sub_1000160CC(v85, &qword_1000C0C80, &qword_1000A1E10);
    LODWORD(v119) = 0;
  }

  else
  {
    v87 = v97;
    (*(v80 + 32))(v97, v85, v86);
    LODWORD(v119) = sub_10009D4B4();
    (*(v80 + 8))(v87, v86);
  }

  v88 = v64[20];
  v89 = v59 + v64[21];
  v90 = v64[23];
  v91 = (v59 + v64[22]);
  v92 = *(v76 + 8);
  v92(v126, v79);
  v92(v128, v79);
  v93 = *(v124 + 8);
  v94 = v125;
  v93(v123, v125);
  v93(v122, v94);
  (*(v120 + 8))(v41, v121);
  *(v59 + v64[14]) = v119 & 1;
  *(v59 + v64[16]) = v115;
  *(v59 + v64[17]) = 0;
  *(v59 + v88) = 2;
  *v89 = 0;
  *(v89 + 8) = 1;
  *v91 = 0;
  v91[1] = 0;
  *(v59 + v90) = 2;
  sub_100014CC8(v127, &v114[v59]);
  return (*(*(v64 - 1) + 56))(v59, 0, 1, v64);
}

uint64_t sub_10000F550@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10009CF14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_10009D4F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  if (sub_10009E894())
  {
    sub_10009E7D4();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_10000E9E8(a1, v14, a2);
      return (*(v12 + 8))(v14, v11);
    }

    sub_1000160CC(v10, &qword_1000C0C80, &qword_1000A1E10);
  }

  v15 = [a1 hf_primaryService];
  if (v15)
  {
    v16 = v15;
    v17 = [a1 uniqueIdentifier];
    sub_10009CF04();

    v18 = [a1 name];
    v19 = sub_10009E5C4();
    v21 = v20;

    sub_10000F8B0(v16, v7, v19, v21, 0, 255, a2);

    (*(v5 + 8))(v7, v4);
    v22 = type metadata accessor for WidgetTileInfo(0);
    return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  }

  else
  {
    v24 = type metadata accessor for WidgetTileInfo(0);
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }
}

uint64_t sub_10000F8B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v120) = a6;
  v121 = a3;
  v122 = a4;
  v119 = a2;
  v113 = a7;
  v9 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v9 - 8);
  v125 = &v102 - v10;
  v130 = sub_10009CF14();
  v11 = *(v130 - 8);
  v12 = __chkstk_darwin(v130);
  v111 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v136 = &v102 - v15;
  __chkstk_darwin(v14);
  v135 = &v102 - v16;
  v17 = sub_10009D5A4();
  v127 = *(v17 - 8);
  v128 = v17;
  v18 = __chkstk_darwin(v17);
  v126 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v132 = &v102 - v21;
  v22 = __chkstk_darwin(v20);
  v134 = &v102 - v23;
  __chkstk_darwin(v22);
  v133 = &v102 - v24;
  v25 = sub_100003714(&qword_1000C0C30, &qword_10009F9E8);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v102 - v29;
  v31 = sub_100003714(&qword_1000C0C38, &qword_10009F9F0);
  __chkstk_darwin(v31 - 8);
  v33 = &v102 - v32;
  v34 = sub_10009D1C4();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v131 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = [a1 associatedServiceType];
  v123 = v35;
  v124 = v34;
  if (v37)
  {
    v38 = v37;
    sub_10009E5C4();

    v34 = v124;
    sub_10009E614();
    v35 = v123;

    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      (*(v35 + 32))(v131, v33, v34);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v35 + 56))(v33, 1, 1, v34);
  }

  sub_10009E904();
  if ((*(v35 + 48))(v33, 1, v34) != 1)
  {
    sub_1000160CC(v33, &qword_1000C0C38, &qword_10009F9F0);
  }

LABEL_7:
  v129 = v11;
  sub_10009E924();
  if (v39)
  {
    sub_10009D124();
    v40 = sub_10009D134();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v30, 1, v40) != 1)
    {
      v42 = sub_10009D114();
      v117 = v43;
      v118 = v42;
      (*(v41 + 8))(v30, v40);
      goto LABEL_12;
    }
  }

  else
  {
    v44 = sub_10009D134();
    (*(*(v44 - 8) + 56))(v30, 1, 1, v44);
  }

  sub_1000160CC(v30, &qword_1000C0C30, &qword_10009F9E8);
  v45 = sub_10009D1B4();
  v117 = v46;
  v118 = v45;
LABEL_12:
  v47 = v129;
  sub_10009E924();
  if (!v48)
  {
LABEL_15:
    v116 = sub_10009D194();
    v115 = v51;
    goto LABEL_17;
  }

  sub_10009D124();
  v49 = sub_10009D134();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v28, 1, v49) == 1)
  {
    sub_1000160CC(v28, &qword_1000C0C30, &qword_10009F9E8);
    goto LABEL_15;
  }

  v116 = sub_10009D104();
  v115 = v52;
  (*(v50 + 8))(v28, v49);
LABEL_17:
  sub_10001050C(&IconSymbol.offStateSymbolRenderingMode.getter, &ServiceKind.iconSymbolDeactivatedRenderingMode.getter, v133);
  sub_10001050C(&IconSymbol.onStateSymbolRenderingMode.getter, &ServiceKind.iconSymbolActivatedRenderingMode.getter, v134);
  v53 = sub_10009D184();
  v54 = *(v47 + 16);
  v55 = v119;
  v56 = v130;
  v54(v135, v119, v130);
  v114 = v53;

  v57 = [a1 accessory];
  if (v57)
  {
    v58 = v57;
    v59 = [v57 uniqueIdentifier];

    v60 = v111;
    sub_10009CF04();

    (*(v47 + 32))(v136, v60, v56);
  }

  else
  {
    v54(v136, v55, v56);
  }

  v61 = [a1 accessory];
  if (v61 && (v62 = v61, v63 = [v61 room], v62, v63))
  {
    v64 = [v63 name];

    v119 = sub_10009E5C4();
    v111 = v65;
  }

  else
  {
    v119 = 0;
    v111 = 0;
  }

  v66 = v128;
  v67 = *(v127 + 16);
  v67(v132, v133, v128);
  v67(v126, v134, v66);
  v68 = [a1 accessory];
  v112 = v54;
  if (v68)
  {
    v69 = v68;
    v110 = [v68 isReachable];
  }

  else
  {
    v110 = 0;
  }

  v70 = a5;
  v71 = v120;
  v72 = v120;
  if (v120 == 0xFF)
  {
    v73 = a1;
    v72 = 0;
    v70 = a1;
  }

  v103 = v70;
  v104 = v72;
  v74 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  v75 = *(*(v74 - 8) + 56);
  v75(v125, 1, 1, v74);
  sub_10001612C(a5, v71);
  v120 = sub_10001C968(_swiftEmptyArrayStorage);
  v76 = type metadata accessor for WidgetTileInfo(0);
  v77 = v76[18];
  v78 = sub_10009D3F4();
  v79 = v113;
  (*(*(v78 - 8) + 56))(v113 + v77, 1, 1, v78);
  v109 = v76[19];
  v75(v79 + v109, 1, 1, v74);
  v80 = v76[21];
  v108 = v76[20];
  v106 = (v79 + v80);
  v81 = v76[22];
  v107 = v76[23];
  v105 = (v79 + v81);
  v82 = v130;
  v83 = v112;
  v112(v79, v135, v130);
  v83(v79 + v76[5], v136, v82);
  v84 = (v79 + v76[6]);
  v85 = v122;
  *v84 = v121;
  v84[1] = v85;
  v86 = (v79 + v76[7]);
  v87 = v111;
  *v86 = v119;
  v86[1] = v87;
  v88 = (v79 + v76[8]);
  v89 = v117;
  *v88 = v118;
  v88[1] = v89;
  v90 = (v79 + v76[9]);
  v91 = v115;
  *v90 = v116;
  v90[1] = v91;
  v92 = v128;
  v67((v79 + v76[10]), v132, v128);
  v93 = v126;
  v67((v79 + v76[11]), v126, v92);
  *(v79 + v76[12]) = v114;
  *(v79 + v76[13]) = v110;
  v94 = v79 + v76[15];
  v95 = v103;
  *v94 = v103;
  LOBYTE(v75) = v104;
  *(v94 + 8) = v104;
  v96 = v95;

  LOBYTE(v75) = sub_10001792C(v95, v75);

  v97 = *(v127 + 8);
  v97(v93, v92);
  v97(v132, v92);
  v98 = *(v129 + 8);
  v98(v136, v82);
  v98(v135, v82);
  v97(v134, v92);
  v97(v133, v92);
  (*(v123 + 8))(v131, v124);
  *(v79 + v76[14]) = v75 & 1;
  *(v79 + v76[16]) = v120;
  *(v79 + v76[17]) = 0;
  *(v79 + v108) = 2;
  v99 = v106;
  *v106 = 0;
  *(v99 + 8) = 1;
  v100 = v105;
  *v105 = 0;
  v100[1] = 0;
  *(v79 + v107) = 2;
  return sub_100014CC8(v125, v79 + v109);
}

uint64_t sub_10001050C@<X0>(void (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_100003714(&qword_1000C0C30, &qword_10009F9E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_10009D5A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10009E924();
  if (!v14)
  {
    return a2(v13);
  }

  v15 = a2;
  v16 = a1;
  sub_10009D124();
  v17 = sub_10009D134();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    v13 = sub_1000160CC(v8, &qword_1000C0C30, &qword_10009F9E8);
    a2 = v15;
    return a2(v13);
  }

  v16();
  (*(v18 + 8))(v8, v17);
  return (*(v10 + 32))(a3, v12, v9);
}

uint64_t sub_10001070C(uint64_t a1)
{
  v3 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for WidgetTileInfo(0);
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_1000160CC(v5, &qword_1000C0C20, &qword_1000A1E30))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_100006850(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10);
      sub_100012614(v10, v5);
      sub_100006918(v10);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000108EC(uint64_t a1)
{
  v3 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_1000160CC(v5, &qword_1000C0C78, &qword_1000A0390))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1000129B0(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100010B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v135 = &v130 - v8;
  v9 = type metadata accessor for WidgetTileInfo(0);
  v10 = __chkstk_darwin(v9);
  v149 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v155 = &v130 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v130 - v15;
  __chkstk_darwin(v14);
  v19 = &v130 - v18;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v132 = v7;
  v131 = 0;
  v21 = a1 + 56;
  v20 = *(a1 + 56);
  v22 = -1 << *(a1 + 32);
  v144 = ~v22;
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v159 = v23 & v20;
  v133 = (63 - v22) >> 6;
  v143 = (v17 + 7);
  v145 = v17;
  v142 = (v17 + 6);
  v160 = (a2 + 56);
  v24 = a1;

  v26 = 0;
  v161 = a2;
  v162 = v9;
  v141 = v24;
  for (i = v21; ; v21 = i)
  {
    v27 = v159;
    v28 = v26;
    if (v159)
    {
LABEL_15:
      v32 = (v27 - 1) & v27;
      v33 = v135;
      sub_100006850(*(v24 + 48) + v145[9] * (__clz(__rbit64(v27)) | (v28 << 6)), v135);
      v34 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v133 <= v26 + 1 ? v26 + 1 : v133;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
          goto LABEL_177;
        }

        if (v28 >= v133)
        {
          break;
        }

        v27 = *(v21 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_15;
        }
      }

      v32 = 0;
      v34 = 1;
      v33 = v135;
    }

    v139 = *v143;
    v139(v33, v34, 1, v9);
    v163 = v24;
    v164 = v21;
    v165 = v144;
    v166 = v30;
    v151 = v32;
    v167 = v32;
    v138 = *v142;
    if (v138(v33, 1, v9) == 1)
    {
      sub_1000160CC(v33, &qword_1000C0C20, &qword_1000A1E30);
      sub_100015F9C(v24);
      return v161;
    }

    v150 = v30;
    sub_1000068B4(v33, v19);
    v35 = v161;
    sub_10009EDD4();
    v36 = sub_10009CF14();
    v37 = sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v137 = v36;
    v136 = v37;
    sub_10009E504();
    v38 = &v19[*(v9 + 24)];
    v40 = *v38;
    v39 = *(v38 + 1);
    sub_10009E624();
    v41 = &v19[*(v9 + 28)];
    v42 = *v41;
    v43 = *(v41 + 1);
    if (v43)
    {
      sub_10009EDF4(1u);
      sub_10009E624();
    }

    else
    {
      sub_10009EDF4(0);
    }

    v44 = &v19[*(v9 + 32)];
    v45 = *(v44 + 1);
    v158 = *v44;
    v157 = v45;
    sub_10009E624();
    v46 = &v19[*(v9 + 36)];
    v47 = *(v46 + 1);
    v154 = *v46;
    v153 = v47;
    sub_10009E624();
    v152 = *&v19[*(v9 + 48)];
    sub_10009E144();
    v48 = v19[*(v9 + 52)];
    LODWORD(v147) = v48;
    sub_10009EDF4(v48);
    v49 = &v19[*(v9 + 60)];
    v50 = *v49;
    v51 = v49[8];
    v156 = v42;
    v146 = v50;
    v148 = v51;
    if (v51 <= 1)
    {
      v52 = v51 ? 2 : 1;
    }

    else if (v51 == 2)
    {
      v52 = 3;
    }

    else
    {
      if (v51 != 3)
      {
        sub_10009EDE4(0);
        goto LABEL_30;
      }

      v52 = 4;
    }

    sub_10009EDE4(v52);
    sub_10009E8F4();
LABEL_30:
    v53 = sub_10009EE04();
    v54 = -1 << *(v35 + 32);
    v9 = v53 & ~v54;
    a2 = v9 >> 6;
    v28 = 1 << v9;
    if (((1 << v9) & v160[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_100006918(v19);
    v26 = v150;
    v159 = v151;
    v24 = v141;
    v9 = v162;
  }

  v55 = ~v54;
  v159 = v145[9];
  v56 = v148 == 4 && v146 == 0;
  v57 = v56;
  LODWORD(v134) = v57;
  while (1)
  {
    sub_100006850(*(v161 + 48) + v159 * v9, v16);
    if ((sub_10009CEF4() & 1) == 0)
    {
      goto LABEL_79;
    }

    v58 = &v16[v162[6]];
    v59 = *v58 == v40 && *(v58 + 1) == v39;
    if (!v59 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_79;
    }

    v60 = &v16[v162[7]];
    v61 = *(v60 + 1);
    if (v61)
    {
      if (!v43)
      {
        goto LABEL_79;
      }

      v62 = *v60 == v156 && v61 == v43;
      if (!v62 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (v43)
    {
      goto LABEL_79;
    }

    v63 = &v16[v162[8]];
    v64 = *v63 == v158 && *(v63 + 1) == v157;
    if (!v64 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_79;
    }

    v65 = &v16[v162[9]];
    v66 = *v65 == v154 && *(v65 + 1) == v153;
    if (!v66 && (sub_10009ED34() & 1) == 0 || (sub_10009E134() & 1) == 0 || v147 != v16[v162[13]])
    {
      goto LABEL_79;
    }

    v67 = v16[v162[15] + 8];
    if (v67 <= 1)
    {
      if (v16[v162[15] + 8])
      {
        if (v148 == 1)
        {
          goto LABEL_78;
        }
      }

      else if (!v148)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v67 == 2)
    {
      break;
    }

    if (v67 != 3)
    {
      sub_100006918(v16);
      if (v134)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    }

    if (v148 == 3)
    {
      goto LABEL_78;
    }

LABEL_79:
    sub_100006918(v16);
LABEL_80:
    v9 = (v9 + 1) & v55;
    a2 = v9 >> 6;
    v28 = 1 << v9;
    if ((v160[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v148 != 2)
  {
    goto LABEL_79;
  }

LABEL_78:
  sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
  if ((sub_10009E8E4() & 1) == 0)
  {
    goto LABEL_79;
  }

  sub_100006918(v16);
LABEL_86:
  v69 = sub_100006918(v19);
  v70 = v161;
  v71 = *(v161 + 32);
  v134 = ((1 << v71) + 63) >> 6;
  v25 = 8 * v134;
  if ((v71 & 0x3Fu) > 0xD)
  {
    goto LABEL_178;
  }

  while (1)
  {
    v130 = &v130;
    __chkstk_darwin(v69);
    v73 = &v130 - ((v72 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v73, v160, v72);
    v74 = *&v73[8 * a2] & ~v28;
    v75 = *(v70 + 16);
    v145 = v73;
    *&v73[8 * a2] = v74;
    v135 = v75 - 1;
LABEL_89:
    v28 = v141;
    v76 = v132;
    a2 = v162;
    v77 = i;
    v78 = v133;
    v9 = v150;
    v79 = v151;
LABEL_90:
    if (v79)
    {
      break;
    }

    if (v78 <= (v9 + 1))
    {
      v81 = (v9 + 1);
    }

    else
    {
      v81 = v78;
    }

    v82 = (v81 - 1);
    while (1)
    {
      v80 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v80 >= v78)
      {
        v84 = 0;
        v85 = 1;
        v9 = v82;
        goto LABEL_101;
      }

      v79 = *(v77 + 8 * v80);
      ++v9;
      if (v79)
      {
        v9 = v80;
        goto LABEL_100;
      }
    }

LABEL_177:
    __break(1u);
LABEL_178:
    v126 = v25;

    v127 = v126;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v128 = swift_slowAlloc();
      memcpy(v128, v160, v127);
      v129 = v131;
      v68 = sub_100012C58(v128, v134, v161, v9, &v163);

      if (v129)
      {
        goto LABEL_183;
      }

LABEL_174:
      sub_100015F9C(v163);
      return v68;
    }

    v70 = v161;
  }

  v80 = v9;
LABEL_100:
  v83 = __clz(__rbit64(v79));
  v84 = (v79 - 1) & v79;
  sub_100006850(*(v28 + 48) + (v83 | (v80 << 6)) * v159, v76);
  v85 = 0;
LABEL_101:
  v139(v76, v85, 1, a2);
  v163 = v28;
  v164 = v77;
  v165 = v144;
  v166 = v9;
  v167 = v84;
  if (v138(v76, 1, a2) == 1)
  {
    sub_1000160CC(v76, &qword_1000C0C20, &qword_1000A1E30);
    v68 = sub_100013894(v145, v134, v135, v70);
    goto LABEL_174;
  }

  v86 = v76;
  v87 = v155;
  sub_1000068B4(v86, v155);
  sub_10009EDD4();
  sub_10009E504();
  v88 = (v87 + *(a2 + 24));
  v89 = *v88;
  v90 = v88[1];
  sub_10009E624();
  v91 = (v87 + *(a2 + 28));
  v92 = v91[1];
  v157 = *v91;
  if (v92)
  {
    sub_10009EDF4(1u);
    sub_10009E624();
  }

  else
  {
    sub_10009EDF4(0);
  }

  v93 = v155;
  v94 = (v155 + *(a2 + 32));
  v95 = v94[1];
  v158 = *v94;
  sub_10009E624();
  v96 = (v93 + *(a2 + 36));
  v97 = v96[1];
  v156 = *v96;
  v154 = v97;
  sub_10009E624();
  v153 = *(v93 + *(a2 + 48));
  sub_10009E144();
  v98 = *(v93 + *(a2 + 52));
  v148 = v98;
  sub_10009EDF4(v98);
  v99 = v93 + *(a2 + 60);
  v100 = *v99;
  v101 = *(v99 + 8);
  v150 = v9;
  v151 = v84;
  v147 = v100;
  LODWORD(v152) = v101;
  if (v101 <= 1)
  {
    if (v101)
    {
      v102 = 2;
    }

    else
    {
      v102 = 1;
    }

    goto LABEL_114;
  }

  if (v101 == 2)
  {
    v102 = 3;
LABEL_114:
    sub_10009EDE4(v102);
    sub_10009E8F4();
    goto LABEL_115;
  }

  if (v101 == 3)
  {
    v102 = 4;
    goto LABEL_114;
  }

  sub_10009EDE4(0);
LABEL_115:
  v103 = sub_10009EE04();
  v104 = -1 << *(v70 + 32);
  v105 = v103 & ~v104;
  v106 = v105 >> 6;
  v107 = 1 << v105;
  if (((1 << v105) & v160[v105 >> 6]) == 0)
  {
LABEL_88:
    sub_100006918(v155);
    v70 = v161;
    goto LABEL_89;
  }

  v108 = ~v104;
  v110 = v152 == 4 && v147 == 0;
  LODWORD(v146) = v110;
  v111 = v149;
  while (2)
  {
    sub_100006850(*(v161 + 48) + v105 * v159, v111);
    if ((sub_10009CEF4() & 1) == 0 || ((v112 = (v111 + v162[6]), *v112 == v89) ? (v113 = v112[1] == v90) : (v113 = 0), !v113 && (sub_10009ED34() & 1) == 0))
    {
LABEL_164:
      sub_100006918(v111);
LABEL_165:
      v105 = (v105 + 1) & v108;
      v106 = v105 >> 6;
      v107 = 1 << v105;
      if ((v160[v105 >> 6] & (1 << v105)) == 0)
      {
        goto LABEL_88;
      }

      continue;
    }

    break;
  }

  v114 = (v111 + v162[7]);
  v115 = v114[1];
  if (v115)
  {
    v111 = v149;
    if (!v92)
    {
      goto LABEL_164;
    }

    v116 = *v114 == v157 && v115 == v92;
    if (!v116 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_164;
    }
  }

  else
  {
    v111 = v149;
    if (v92)
    {
      goto LABEL_164;
    }
  }

  v117 = (v111 + v162[8]);
  v118 = *v117 == v158 && v117[1] == v95;
  if (!v118 && (sub_10009ED34() & 1) == 0)
  {
    goto LABEL_164;
  }

  v119 = (v111 + v162[9]);
  v120 = *v119 == v156 && v119[1] == v154;
  if (!v120 && (sub_10009ED34() & 1) == 0 || (sub_10009E134() & 1) == 0 || v148 != *(v111 + v162[13]))
  {
    goto LABEL_164;
  }

  v121 = *(v111 + v162[15] + 8);
  if (v121 <= 1)
  {
    if (*(v111 + v162[15] + 8))
    {
      v122 = v152 == 1;
      goto LABEL_161;
    }

    v111 = v149;
    if (v152)
    {
      goto LABEL_164;
    }

    goto LABEL_163;
  }

  if (v121 == 2)
  {
    v122 = v152 == 2;
    goto LABEL_161;
  }

  if (v121 != 3)
  {
    v111 = v149;
    sub_100006918(v149);
    if (v146)
    {
      goto LABEL_169;
    }

    goto LABEL_165;
  }

  v122 = v152 == 3;
LABEL_161:
  v111 = v149;
  if (!v122)
  {
    goto LABEL_164;
  }

LABEL_163:
  sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
  if ((sub_10009E8E4() & 1) == 0)
  {
    goto LABEL_164;
  }

  sub_100006918(v111);
LABEL_169:
  sub_100006918(v155);
  v123 = v145[v106];
  v145[v106] = v123 & ~v107;
  v56 = (v123 & v107) == 0;
  v70 = v161;
  a2 = v162;
  v28 = v141;
  v76 = v132;
  v77 = i;
  v78 = v133;
  v9 = v150;
  v79 = v151;
  if (v56)
  {
    goto LABEL_90;
  }

  v124 = v135 - 1;
  if (!__OFSUB__(v135, 1))
  {
    --v135;
    if (!v124)
    {

      v68 = &_swiftEmptySetSingleton;
      goto LABEL_174;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_183:

  __break(1u);
  return result;
}

char *sub_100011BB0(uint64_t a1, char *a2)
{
  v5 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v65 - v9);
  v11 = sub_10009CF14();
  v12 = __chkstk_darwin(v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v65 - v15);
  __chkstk_darwin(v14);
  v80 = (&v65 - v18);
  if (!*(a2 + 2))
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 56;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_1000160CC(v30, &qword_1000C0C78, &qword_1000A0390);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = sub_10009E4F4();
    v33 = -1 << a2[32];
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, *(a2 + 6) + v84 * v24, v11);
    v35 = sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = sub_10009E534();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = a2[32];
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 2);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_1000160CC(v24, &qword_1000C0C78, &qword_1000A0390);
        a2 = sub_100013E20(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_10009E4F4();
      v52 = a2;
      v53 = -1 << a2[32];
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 6) + v54 * v84, v11);
        v55 = sub_10009E534();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, *(v52 + 6) + v54 * v84, v11);
            v57 = sub_10009E534();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_1000133C0(v64, v65, v80, v24, &v89);

LABEL_52:
  v59 = v89;
LABEL_53:
  sub_100015F9C(v59);
  return a2;
}

uint64_t sub_100012614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = type metadata accessor for WidgetTileInfo(0);
  v47 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v2;
  v7 = *v2;
  sub_10009EDD4();
  sub_10001ADCC(v48);
  v8 = sub_10009EE04();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return (*(v47 + 56))(v46, 1, 1, v4);
  }

  v11 = ~v9;
  v12 = *(v47 + 72);
  while (1)
  {
    sub_100006850(*(v7 + 48) + v12 * v10, v6);
    if ((sub_10009CEF4() & 1) == 0)
    {
      goto LABEL_43;
    }

    v13 = v4[6];
    v14 = *&v6[v13];
    v15 = *&v6[v13 + 8];
    v16 = (a1 + v13);
    v17 = v14 == *v16 && v15 == v16[1];
    if (!v17 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v18 = v4[7];
    v19 = &v6[v18];
    v20 = *&v6[v18 + 8];
    v21 = (a1 + v18);
    v22 = v21[1];
    if (v20)
    {
      if (!v22)
      {
        goto LABEL_43;
      }

      v23 = *v19 == *v21 && v20 == v22;
      if (!v23 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v22)
    {
      goto LABEL_43;
    }

    v24 = v4[8];
    v25 = *&v6[v24];
    v26 = *&v6[v24 + 8];
    v27 = (a1 + v24);
    v28 = v25 == *v27 && v26 == v27[1];
    if (!v28 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v29 = v4[9];
    v30 = *&v6[v29];
    v31 = *&v6[v29 + 8];
    v32 = (a1 + v29);
    if ((v30 != *v32 || v31 != v32[1]) && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    if ((sub_10009E134() & 1) == 0 || v6[v4[13]] != *(a1 + v4[13]))
    {
      goto LABEL_43;
    }

    v33 = v4[15];
    v34 = v6[v33 + 8];
    v35 = (a1 + v33);
    v36 = *(v35 + 8);
    if (v34 <= 1)
    {
      if (v34)
      {
        if (v36 == 1)
        {
          goto LABEL_42;
        }
      }

      else if (!*(v35 + 8))
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v34 == 2)
    {
      if (v36 != 2)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v34 == 3)
    {
      break;
    }

    v44 = *v35;
    sub_100006918(v6);
    if (v36 == 4 && !v44)
    {
      goto LABEL_47;
    }

LABEL_44:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return (*(v47 + 56))(v46, 1, 1, v4);
    }
  }

  if (v36 != 3)
  {
    goto LABEL_43;
  }

LABEL_42:
  v44 = *v35;
  sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
  if ((sub_10009E8E4() & 1) == 0)
  {
LABEL_43:
    sub_100006918(v6);
    goto LABEL_44;
  }

  sub_100006918(v6);
LABEL_47:
  v38 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v38;
  v48[0] = *v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100005FB0();
    v40 = v48[0];
  }

  v41 = v46;
  sub_1000068B4(*(v40 + 48) + v12 * v10, v46);
  sub_100014148(v10);
  v42 = v47;
  *v38 = v48[0];
  return (*(v42 + 56))(v41, 0, 1, v4);
}

uint64_t sub_1000129B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10009CF14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = sub_10009E4F4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = sub_10009E534();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000062D4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10001453C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

char *sub_100012C58(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v80 = a5;
  v69[0] = a2;
  v8 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  __chkstk_darwin(v8 - 8);
  v75 = v69 - v9;
  v10 = type metadata accessor for WidgetTileInfo(0);
  v11 = __chkstk_darwin(v10);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = v69 - v15;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18) & ((-1 << a4) - 1);
  v71 = a1;
  *(a1 + v18) = v19;
  v20 = v17 - 1;
  v74 = (v21 + 56);
  v76 = v21;
  v73 = (v21 + 48);
  v91 = a3;
  v90 = a3 + 56;
LABEL_2:
  v70 = v20;
LABEL_4:
  while (2)
  {
    v23 = *v80;
    v22 = v80[1];
    v25 = v80[2];
    v24 = v80[3];
    v26 = v80[4];
    v89 = v25;
    if (v26)
    {
      v27 = v24;
LABEL_13:
      v31 = (v26 - 1) & v26;
      v32 = v75;
      sub_100006850(*(v23 + 48) + *(v76 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v75);
      v33 = 0;
      v30 = v27;
LABEL_14:
      (*v74)(v32, v33, 1, v10);
      v34 = v80;
      *v80 = v23;
      v34[1] = v22;
      v34[2] = v89;
      v34[3] = v30;
      v34[4] = v31;
      if ((*v73)(v32, 1, v10) == 1)
      {
        sub_1000160CC(v32, &qword_1000C0C20, &qword_1000A1E30);
        v68 = v91;

        return sub_100013894(v71, v69[0], v70, v68);
      }

      sub_1000068B4(v32, v16);
      sub_10009EDD4();
      sub_10009CF14();
      sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_10009E504();
      v35 = &v16[v10[6]];
      v36 = *v35;
      v88 = *(v35 + 1);
      v89 = v36;
      sub_10009E624();
      v37 = &v16[v10[7]];
      v38 = *v37;
      v39 = *(v37 + 1);
      if (v39)
      {
        sub_10009EDF4(1u);
        sub_10009E624();
      }

      else
      {
        sub_10009EDF4(0);
      }

      v40 = &v16[v10[8]];
      v41 = *v40;
      v85 = *(v40 + 1);
      v86 = v41;
      sub_10009E624();
      v42 = &v16[v10[9]];
      v43 = *v42;
      v82 = *(v42 + 1);
      v83 = v43;
      sub_10009E624();
      v81 = *&v16[v10[12]];
      sub_10009E144();
      v78 = v16[v10[13]];
      sub_10009EDF4(v78);
      v44 = &v16[v10[15]];
      v45 = *v44;
      v46 = v44[8];
      v77 = v45;
      v79 = v46;
      if (v46 <= 1)
      {
        if (v46)
        {
          v47 = 2;
        }

        else
        {
          v47 = 1;
        }
      }

      else if (v46 == 2)
      {
        v47 = 3;
      }

      else
      {
        if (v46 != 3)
        {
          sub_10009EDE4(0);
LABEL_28:
          v48 = sub_10009EE04();
          v49 = -1 << *(v91 + 32);
          v50 = v48 & ~v49;
          v51 = v50 >> 6;
          v52 = 1 << v50;
          if (((1 << v50) & *(v90 + 8 * (v50 >> 6))) == 0)
          {
LABEL_3:
            result = sub_100006918(v16);
            continue;
          }

          v87 = v39;
          v84 = v38;
          v53 = ~v49;
          v54 = *(v76 + 72);
          v56 = v79 == 4 && v77 == 0;
          v72 = v56;
          while (1)
          {
            sub_100006850(*(v91 + 48) + v54 * v50, v13);
            if ((sub_10009CEF4() & 1) == 0)
            {
              goto LABEL_77;
            }

            v57 = &v13[v10[6]];
            v58 = *v57 == v89 && *(v57 + 1) == v88;
            if (!v58 && (sub_10009ED34() & 1) == 0)
            {
              goto LABEL_77;
            }

            v59 = &v13[v10[7]];
            v60 = *(v59 + 1);
            if (v60)
            {
              if (!v87)
              {
                goto LABEL_77;
              }

              v61 = *v59 == v84 && v60 == v87;
              if (!v61 && (sub_10009ED34() & 1) == 0)
              {
                goto LABEL_77;
              }
            }

            else if (v87)
            {
              goto LABEL_77;
            }

            v62 = &v13[v10[8]];
            v63 = *v62 == v86 && *(v62 + 1) == v85;
            if (!v63 && (sub_10009ED34() & 1) == 0)
            {
              goto LABEL_77;
            }

            v64 = &v13[v10[9]];
            v65 = *v64 == v83 && *(v64 + 1) == v82;
            if (!v65 && (sub_10009ED34() & 1) == 0 || (sub_10009E134() & 1) == 0 || v78 != v13[v10[13]])
            {
              goto LABEL_77;
            }

            v66 = v13[v10[15] + 8];
            if (v66 <= 1)
            {
              if (v13[v10[15] + 8])
              {
                if (v79 == 1)
                {
                  goto LABEL_76;
                }
              }

              else if (!v79)
              {
                goto LABEL_76;
              }

LABEL_77:
              sub_100006918(v13);
              goto LABEL_78;
            }

            if (v66 == 2)
            {
              break;
            }

            if (v66 == 3)
            {
              if (v79 != 3)
              {
                goto LABEL_77;
              }

LABEL_76:
              sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
              if (sub_10009E8E4())
              {
                sub_100006918(v13);
LABEL_82:
                result = sub_100006918(v16);
                v67 = v71[v51];
                v71[v51] = v67 & ~v52;
                if ((v67 & v52) != 0)
                {
                  v20 = v70 - 1;
                  if (__OFSUB__(v70, 1))
                  {
                    goto LABEL_88;
                  }

                  if (v70 == 1)
                  {
                    return &_swiftEmptySetSingleton;
                  }

                  goto LABEL_2;
                }

                goto LABEL_4;
              }

              goto LABEL_77;
            }

            sub_100006918(v13);
            if (v72)
            {
              goto LABEL_82;
            }

LABEL_78:
            v50 = (v50 + 1) & v53;
            v51 = v50 >> 6;
            v52 = 1 << v50;
            if ((*(v90 + 8 * (v50 >> 6)) & (1 << v50)) == 0)
            {
              goto LABEL_3;
            }
          }

          if (v79 != 2)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v47 = 4;
      }

      sub_10009EDE4(v47);
      sub_10009E8F4();
      goto LABEL_28;
    }

    break;
  }

  v28 = (v25 + 64) >> 6;
  if (v28 <= v24 + 1)
  {
    v29 = v24 + 1;
  }

  else
  {
    v29 = (v25 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v28)
    {
      v31 = 0;
      v33 = 1;
      v32 = v75;
      goto LABEL_14;
    }

    v26 = *(v22 + 8 * v27);
    ++v24;
    if (v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

void *sub_1000133C0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_10009CF14();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1000160CC(v11, &qword_1000C0C78, &qword_1000A0390);
          v45 = v61;

          return sub_100013E20(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = sub_10009E4F4();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v43 = sub_10009E534();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

char *sub_100013894(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetTileInfo(0);
  v26 = *(v8 - 1);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003714(&qword_1000C0B58, &qword_10009F950);
  result = sub_10009EAA4();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v24 = result + 56;
  v25 = a4;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v27 = (v13 - 1) & v13;
LABEL_16:
    v18 = *(a4 + 48);
    v28 = *(v26 + 72);
    sub_100006850(v18 + v28 * (v15 | (v14 << 6)), v10);
    sub_10009EDD4();
    sub_10009CF14();
    sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10009E504();
    sub_10009E624();
    if (*&v10[v8[7] + 8])
    {
      sub_10009EDF4(1u);
      sub_10009E624();
    }

    else
    {
      sub_10009EDF4(0);
    }

    sub_10009E624();
    sub_10009E624();
    sub_10009E144();
    sub_10009EDF4(v10[v8[13]]);
    v19 = v10[v8[15] + 8];
    if (v19 <= 1)
    {
      a4 = v25;
      if (v10[v8[15] + 8])
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      a4 = v25;
      if (v19 == 2)
      {
        v20 = 3;
      }

      else
      {
        if (v19 != 3)
        {
          sub_10009EDE4(0);
          goto LABEL_29;
        }

        v20 = 4;
      }
    }

    sub_10009EDE4(v20);
    sub_10009E8F4();
LABEL_29:
    sub_10009EE04();
    v21 = v24;
    v22 = sub_10009E9B4();
    *&v21[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    result = sub_1000068B4(v10, *(v11 + 6) + v22 * v28);
    ++*(v11 + 2);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_34;
    }

    v13 = v27;
    if (!a3)
    {
LABEL_31:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_31;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v27 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100013C2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100003714(&qword_1000C0B70, &qword_10009F958);
  result = sub_10009EAA4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_10009E8D4(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100013E20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_10009CF14();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003714(&qword_1000C0BE0, "tz");
  result = sub_10009EAA4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = sub_10009E4F4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100014148(unint64_t a1)
{
  v3 = type metadata accessor for WidgetTileInfo(0);
  v26 = *(v3 - 1);
  result = __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = a1;
    v13 = sub_10009E9A4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v14 = (v13 + 1) & v11;
      v15 = v7;
      v16 = *(v26 + 72);
      v27 = v15;
      v28 = v8;
      v26 = v16;
      while (1)
      {
        v17 = v16 * v10;
        sub_100006850(*(v15 + 48) + v16 * v10, v6);
        sub_10009EDD4();
        sub_10009CF14();
        sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        sub_10009E504();
        sub_10009E624();
        if (*&v6[v3[7] + 8])
        {
          sub_10009EDF4(1u);
          sub_10009E624();
        }

        else
        {
          sub_10009EDF4(0);
        }

        sub_10009E624();
        sub_10009E624();
        sub_10009E144();
        sub_10009EDF4(v6[v3[13]]);
        v18 = v6[v3[15] + 8];
        if (v18 <= 1)
        {
          if (v6[v3[15] + 8])
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }
        }

        else if (v18 == 2)
        {
          v19 = 3;
        }

        else
        {
          if (v18 != 3)
          {
            sub_10009EDE4(0);
            goto LABEL_20;
          }

          v19 = 4;
        }

        sub_10009EDE4(v19);
        sub_10009E8F4();
LABEL_20:
        v20 = sub_10009EE04();
        sub_100006918(v6);
        v21 = v20 & v11;
        v16 = v26;
        if (v12 >= v14)
        {
          v15 = v27;
          if (v21 < v14)
          {
            goto LABEL_6;
          }

LABEL_24:
          if (v12 < v21)
          {
            goto LABEL_6;
          }

          goto LABEL_25;
        }

        v15 = v27;
        if (v21 < v14)
        {
          goto LABEL_24;
        }

LABEL_25:
        v22 = v26 * v12;
        if (v26 * v12 < v17 || *(v15 + 48) + v26 * v12 >= (*(v15 + 48) + v17 + v26))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v12 = v10;
          if (v22 == v17)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v12 = v10;
LABEL_6:
        v10 = (v10 + 1) & v11;
        v8 = v28;
        if (((*(v28 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_32;
        }
      }
    }

    v15 = v7;
LABEL_32:
    *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v12) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v15 = v7;
  }

  v23 = *(v15 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v25;
    ++*(v15 + 36);
  }

  return result;
}

uint64_t sub_10001453C(int64_t a1)
{
  v3 = sub_10009CF14();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_10009E9A4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = sub_10009E4F4();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}