uint64_t sub_100071990()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100071A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100071B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100071CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100071D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100071DF4()
{
  type metadata accessor for BluetoothCommunicationCoordinator.Error(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100071E44()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100071E84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100071EC0()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v48 = *(*(v2 - 1) + 80);
  v46 = *(*(v2 - 1) + 64);
  v47 = (v48 + 16) & ~v48;
  v3 = v0 + v47;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v47, v4);
  v7 = v2[5];
  if (!(*(v5 + 48))(v0 + v47 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = v2[7];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  v10 = v2[10];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v49 = *(v12 + 8);
  v49(v3 + v10, v11);
  v13 = v2[11];
  v44 = *(v12 + 48);
  if (!v44(v3 + v13, 1, v11))
  {
    v49(v3 + v13, v11);
  }

  v45 = v11;

  v14 = v3 + v2[14];
  v15 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v6(v14, v4);
    sub_100016590(*(v14 + *(v15 + 20)), *(v14 + *(v15 + 20) + 8));

    v16 = *(v15 + 36);
    v17 = type metadata accessor for AirTagVersionNumber();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = v3 + v2[15];
  v20 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v20 - 1) + 48))(v19, 1, v20))
  {
    v43 = v1;
    v21 = v20[5];
    v22 = type metadata accessor for ServerStatusCode();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);

    v23 = v20[17];
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v27 = v20[18];
    v42 = v26;
    if (!v26(v19 + v27, 1, v24))
    {
      (*(v25 + 8))(v19 + v27, v24);
    }

    v28 = v19 + v20[21];
    v29 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {

      v40 = *(v29 + 44);
      if (!v42(v28 + v40, 1, v24))
      {
        (*(v25 + 8))(v28 + v40, v24);
      }

      v41 = *(v29 + 48);
      if (!v42(v28 + v41, 1, v24))
      {
        (*(v25 + 8))(v28 + v41, v24);
      }
    }

    v30 = (v19 + v20[24]);
    v31 = v30[1];
    v1 = v43;
    if (v31 >> 60 != 15)
    {
      sub_100016590(*v30, v31);
    }

    v32 = (v19 + v20[25]);
    v33 = v32[1];
    if (v33 >> 60 != 15)
    {
      sub_100016590(*v32, v33);
    }

    v34 = *(v25 + 8);
    v34(v19 + v20[26], v24);
    v34(v19 + v20[27], v24);
    v34(v19 + v20[28], v24);
    v34(v19 + v20[29], v24);
    v34(v19 + v20[30], v24);
    v34(v19 + v20[31], v24);

    v34(v19 + v20[38], v24);
    v34(v19 + v20[39], v24);
    v34(v19 + v20[40], v24);
    v34(v19 + v20[41], v24);
    v34(v19 + v20[42], v24);
    v34(v19 + v20[43], v24);
  }

  v35 = v2[18];
  if (!v44(v3 + v35, 1, v45))
  {
    v49(v3 + v35, v45);
  }

  v36 = v2[19];
  if (!v44(v3 + v36, 1, v45))
  {
    v49(v3 + v36, v45);
  }

  v37 = (v3 + v2[20]);
  v38 = v37[1];
  if (((v38 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v37, v38);
  }

  return _swift_deallocObject(v1, ((((((v46 + v47 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100072798()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000727D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100072810()
{
  v24 = type metadata accessor for UUID();
  v1 = *(v24 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v26 = (*(v9 + 64) + v6 + v10) & ~v6;
  v25 = (v26 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v1 + 8);
  v11(v0 + v2, v24);

  v12 = *(v5 + 8);
  v27 = v4;
  v12(v0 + v7, v4);
  v13 = v0 + v10;
  v14 = type metadata accessor for SharedBeaconRecord(0);
  if (!(*(*(v14 - 1) + 48))(v0 + v10, 1, v14))
  {
    sub_100016590(*v13, *(v13 + 8));
    v11(v13 + v14[5], v24);
    v11(v13 + v14[6], v24);

    v15 = v14[18];
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
    v17 = v14[19];
    v23 = *(v1 + 48);
    if (!v23(v13 + v17, 1, v24))
    {
      v11(v13 + v17, v24);
    }

    v18 = v13 + v14[20];
    v19 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      v20 = *(v19 + 20);
      if (!v23(v18 + v20, 1, v24))
      {
        v11(v18 + v20, v24);
      }
    }
  }

  v12(v0 + v26, v27);

  v21 = *(v0 + v25 + 8);
  if (((v21 >> 60) | 4) != 0xF)
  {
    sub_100016590(*(v0 + v25), v21);
  }

  return _swift_deallocObject(v0, ((((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100072C8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v30 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 8 + v3) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v27 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v6 + 8 + v27) & ~v6;
  v12 = v2;
  v28 = v11;
  v29 = (((v11 + v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v2 + 8);
  v13(v0 + v30, v1);

  v31 = v4;
  v26 = *(v5 + 8);
  v26(v0 + v7, v4);
  v14 = v0 + v10;
  v15 = type metadata accessor for SharedBeaconRecord(0);
  if (!(*(*(v15 - 1) + 48))(v0 + v10, 1, v15))
  {
    sub_100016590(*v14, *(v14 + 8));
    v13(v14 + v15[5], v1);
    v25 = v13;
    v13(v14 + v15[6], v1);

    v16 = v15[18];
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
    v18 = v15[19];
    v19 = *(v12 + 48);
    if (!v19(v14 + v18, 1, v1))
    {
      v25(v14 + v18, v1);
    }

    v20 = v14 + v15[20];
    v21 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v22 = *(v21 + 20);
      if (!v19(v20 + v22, 1, v1))
      {
        v25(v20 + v22, v1);
      }
    }
  }

  v26(v0 + v28, v31);

  v23 = *(v0 + v29 + 8);
  if (((v23 >> 60) | 4) != 0xF)
  {
    sub_100016590(*(v0 + v29), v23);
  }

  return _swift_deallocObject(v0, ((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100073114()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000731C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100073200()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_100073238()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100073278()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000732D0()
{
  v1 = (type metadata accessor for BeaconObservation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  if (*(v0 + v3))
  {
  }

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100073420()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100073468()
{
  v1 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for BeaconObservation(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  v9 = v5[7];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100073610()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100073648()
{
  v1 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100073718()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000737A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007380C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000738C8()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100073914()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_100073A88()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100073AC0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100073B00()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100073BA0()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100073C54()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100073D54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100073E00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100073EA4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100073F50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100073FFC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100074064(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
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
      v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100074194(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
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
      v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000742C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100074370(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100074414()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007444C()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100074488()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 1);
}

uint64_t sub_100074550()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000745D8()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  sub_100007BAC((v0 + 24));
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[10];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[12];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, v2 + v12);
}

uint64_t sub_1000747A8()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000747EC()
{

  sub_100007BAC((v0 + 32));
  sub_100007BAC((v0 + 72));

  return _swift_deallocObject(v0, 120);
}

uint64_t sub_100074844()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10007489C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000748EC()
{
  v1 = *(sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100074A2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100074A6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100074ABC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 89);
}

uint64_t sub_100074BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100074CC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100074DC4()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v22 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v17 = *(v3 + 80);
  v18 = *(v3 + 64);

  v23 = v0;
  v21 = (v22 + 24) & ~v22;
  v4 = v0 + v21;
  sub_100016590(*(v0 + v21), *(v0 + v21 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v21 + v5, v6);
  v8(v0 + v21 + v1[6], v6);

  v9 = *(v3 + 8);
  v20 = v2;
  v9(v0 + v21 + v1[18], v2);
  v10 = v1[19];
  v11 = *(v7 + 48);
  if (!v11(v4 + v10, 1, v6))
  {
    v8(v4 + v10, v6);
  }

  v12 = v4 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v6))
    {
      v8(v12 + v14, v6);
    }
  }

  v15 = (v21 + v19 + v17) & ~v17;
  v9(v23 + v15, v20);

  return _swift_deallocObject(v23, v15 + v18);
}

uint64_t sub_1000750B8()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 24) & ~v2) + v16);
}

uint64_t sub_100075370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100075494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000755BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + 16 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v4;
  v3(v0 + v5, v1);

  v3(v0 + v8, v1);

  return _swift_deallocObject(v0, v8 + v6);
}

uint64_t sub_1000756AC()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v2;
  sub_100016590(*v8, *(v8 + 8));
  v9 = *(v5 + 8);
  v9(v8 + v1[8], v4);
  v10 = v1[9];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);

  v9(v0 + v6, v4);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1000758A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);

  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[8], v1);
  v9 = v5[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100075A88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);

  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[8], v1);
  v9 = v5[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100075C70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100075CA8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100075D44()
{
  v1 = type metadata accessor for WildModeAssociationRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v51 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v50 = *(v4 + 80);
  v49 = *(v4 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + ((v2 + 32) & ~v2);
  v54 = *(v4 + 8);
  v54(v5, v3);
  v6 = v1[5];
  if (!(*(v4 + 48))(v5 + v6, 1, v3))
  {
    v54(v5 + v6, v3);
  }

  v7 = v1[7];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v1[10];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v53 = *(v11 + 8);
  v53(v5 + v9, v10);
  v12 = v1[11];
  v47 = *(v11 + 48);
  if (!v47(v5 + v12, 1, v10))
  {
    v53(v5 + v12, v10);
  }

  v48 = v10;

  v13 = v5 + v1[14];
  v14 = type metadata accessor for AccessoryMetadata(0);
  v52 = (v2 + 32) & ~v2;
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v46 = v3;
    v54(v13, v3);
    sub_100016590(*(v13 + *(v14 + 20)), *(v13 + *(v14 + 20) + 8));

    v15 = *(v14 + 36);
    v16 = type metadata accessor for AirTagVersionNumber();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v13 + v15, 1, v16))
    {
      (*(v17 + 8))(v13 + v15, v16);
    }

    v3 = v46;
  }

  v18 = v5 + v1[15];
  v19 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v19 - 1) + 48))(v18, 1, v19))
  {
    v44 = v1;
    v45 = v0;
    v20 = v19[5];
    v21 = type metadata accessor for ServerStatusCode();
    (*(*(v21 - 8) + 8))(v18 + v20, v21);

    v22 = v19[17];
    v23 = type metadata accessor for URL();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (!v25(v18 + v22, 1, v23))
    {
      (*(v24 + 8))(v18 + v22, v23);
    }

    v26 = v19[18];
    if (!v25(v18 + v26, 1, v23))
    {
      (*(v24 + 8))(v18 + v26, v23);
    }

    v27 = v18 + v19[21];
    v28 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
    {

      v29 = *(v28 + 44);
      if (!v25(v27 + v29, 1, v23))
      {
        (*(v24 + 8))(v27 + v29, v23);
      }

      v30 = *(v28 + 48);
      if (!v25(v27 + v30, 1, v23))
      {
        (*(v24 + 8))(v27 + v30, v23);
      }
    }

    v31 = (v18 + v19[24]);
    v32 = v31[1];
    if (v32 >> 60 != 15)
    {
      sub_100016590(*v31, v32);
    }

    v33 = (v18 + v19[25]);
    v34 = v33[1];
    v0 = v45;
    v1 = v44;
    if (v34 >> 60 != 15)
    {
      sub_100016590(*v33, v34);
    }

    v35 = *(v24 + 8);
    v35(v18 + v19[26], v23);
    v35(v18 + v19[27], v23);
    v35(v18 + v19[28], v23);
    v35(v18 + v19[29], v23);
    v35(v18 + v19[30], v23);
    v35(v18 + v19[31], v23);

    v35(v18 + v19[38], v23);
    v35(v18 + v19[39], v23);
    v35(v18 + v19[40], v23);
    v35(v18 + v19[41], v23);
    v35(v18 + v19[42], v23);
    v35(v18 + v19[43], v23);
  }

  v36 = v0;

  v37 = v1[18];
  if (!v47(v5 + v37, 1, v48))
  {
    v53(v5 + v37, v48);
  }

  v38 = v1[19];
  if (!v47(v5 + v38, 1, v48))
  {
    v53(v5 + v38, v48);
  }

  v39 = (v5 + v1[20]);
  v40 = v39[1];
  if (((v40 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v39, v40);
  }

  v41 = (v52 + v51 + v50) & ~v50;
  v42 = (v49 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54(v36 + v41, v3);

  return _swift_deallocObject(v36, ((v42 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100076688()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000766C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000767A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000767D8()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100076928()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100076A8C()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v2;
  sub_100016590(*v8, *(v8 + 8));
  v9 = *(v5 + 8);
  v9(v8 + v1[8], v4);
  v10 = v1[9];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);

  v9(v0 + v6, v4);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100076C7C()
{
  sub_10083303C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_100076CB8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v4 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  v8 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v9 = (v5 + *(*v8 + 80) + v7) & ~*(*v8 + 80);
  v15 = (((*(*v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  v10(v0 + v7, v1);
  v11 = v0 + v9;
  sub_100016590(*v11, *(v11 + 8));
  v10(v11 + v8[8], v1);
  v12 = v8[9];
  v13 = type metadata accessor for MACAddress();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  return _swift_deallocObject(v0, v15 + 8);
}

uint64_t sub_100076EDC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (*(*v5 + 80) + v4 + 8) & ~*(*v5 + 80);
  v7 = *(*v5 + 64) + v6;

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);

  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[8], v1);
  v9 = v5[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);

  return _swift_deallocObject(v0, v7 + 1);
}

uint64_t sub_1000770BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (((*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[8], v1);
  v9 = v5[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100077280()
{
  sub_100007BAC((v0 + 16));
  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000772CC()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v7 = v4 + v1[8];
  sub_10067B5AC(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100077414()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000774FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000775EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v3 + ((v5 + v4) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v7 = (((v5 + v6) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_1000776FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v3 + ((((v5 + v4) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v3;
  v7 = (v5 + v6) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100077814()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100077918()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v3 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_100077A24()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v19 = *(v4 + 64);

  v6 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v6, *(v6 + 8));
  v7 = *(v4 + 8);
  v7(v6 + v1[5], v3);
  v8 = v6 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v3);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:

      break;
    case 3:
      v7(v8, v3);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_12;
  }

LABEL_13:
  v10 = v1[7];
  if (!(*(v4 + 48))(v6 + v10, 1, v3))
  {
    v7(v6 + v10, v3);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  sub_100016590(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  v13 = (v6 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v6 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  v17 = (((v2 + 24) & ~v2) + v20 + v5) & ~v5;
  sub_100016590(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));

  v7(v0 + v17, v3);

  return _swift_deallocObject(v0, ((v19 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100077DF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100077F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceVersion();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100077FF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DeviceVersion();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000780EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[15];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[19];
    goto LABEL_11;
  }

  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[22];

  return v18(v19, a2, v17);
}

uint64_t sub_1000782C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[15];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[19];
    goto LABEL_9;
  }

  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[22];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100078560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007861C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000786D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100078798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100078858(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100078904(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000789A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100078A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100078A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100078B4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100078BFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100078C3C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100078C74()
{
  v1 = sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100078D4C()
{
  v1 = sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100078DF8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100078E38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100078E70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100078EB0()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100078F44()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100007BAC((v0 + v2 + 24));
  v4 = v1[10];
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007908C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 1);
}

uint64_t sub_100079154()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_100007BAC((v0 + 16));

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100079220()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000792C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007937C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100079434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BeaconIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000794EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BeaconIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000795F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for BeaconIdentifier(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v6, v8);
  v9(v0 + v6 + v5[7], v8);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100079778()
{
  v1 = (type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v6 = type metadata accessor for BeaconIdentifier(0);
  v5(v0 + v2 + *(v6 + 20), v4);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = (v0 + v2 + v1[8]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100016590(*v9, v10);
    sub_100016590(v9[2], v9[3]);
    v11 = v9[5];
    if (v11 >> 60 != 15)
    {
      sub_100016590(v9[4], v11);
    }
  }

  return _swift_deallocObject(v0, ((((((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100079940()
{
  v1 = (type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v6 = type metadata accessor for BeaconIdentifier(0);
  v5(v0 + v2 + *(v6 + 20), v4);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = (v0 + v2 + v1[8]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100016590(*v9, v10);
    sub_100016590(v9[2], v9[3]);
    v11 = v9[5];
    if (v11 >> 60 != 15)
    {
      sub_100016590(v9[4], v11);
    }
  }

  return _swift_deallocObject(v0, ((((((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100079B00()
{
  v1 = (type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v6 = type metadata accessor for BeaconIdentifier(0);
  v5(v0 + v2 + *(v6 + 20), v4);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = (v0 + v2 + v1[8]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100016590(*v9, v10);
    sub_100016590(v9[2], v9[3]);
    v11 = v9[5];
    if (v11 >> 60 != 15)
    {
      sub_100016590(v9[4], v11);
    }
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100079CB0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v6, v8);
  v10 = type metadata accessor for BeaconIdentifier(0);
  v9(v0 + v6 + *(v10 + 20), v8);
  v11 = v5[7];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v0 + v6 + v11, v12);
  v13 = (v0 + v6 + v5[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
    sub_100016590(v13[2], v13[3]);
    v15 = v13[5];
    if (v15 >> 60 != 15)
    {
      sub_100016590(v13[4], v15);
    }
  }

  return _swift_deallocObject(v0, ((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100079ECC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = (*(v2 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v3 = *(v13 - 8);
  v4 = (v10 + *(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for BeaconIdentifier(0) - 8);
  v7 = (v5 + *(*v6 + 80) + 8) & ~*(*v6 + 80);
  v11 = *(*v6 + 64);
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v12, v1);

  (*(v3 + 8))(v0 + v4, v13);

  v8(v0 + v7, v1);
  v8(v0 + v7 + v6[7], v1);

  return _swift_deallocObject(v0, v7 + v11);
}

uint64_t sub_10007A104()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007A198()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007A1F0()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10007A230()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007A268()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007A2A0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007A318()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  sub_100007BAC((v4 + 24));
  v5 = v1[10];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10007A478()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007A4B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007A598()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007A5D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007A6F4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007A74C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1008A88A0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), *(v0 + v4 + 48), *(v0 + v4 + 56), *(v0 + v4 + 64), *(v0 + v4 + 65));

  return _swift_deallocObject(v0, v4 + 66);
}

uint64_t sub_10007A84C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 82) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1008A88A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 81));
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007A9A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10007AA98()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007AB5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007AB94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007AC40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007ACE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10007AD9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007AE48(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10007AEF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007AF9C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007AFD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007B02C()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10007B080()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007B0B8()
{
  v1 = (type metadata accessor for LostModeRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007B1FC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007B24C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007B284()
{
  v1 = (type metadata accessor for LostModeRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007B480(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[8] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[22];
      goto LABEL_5;
    }

    v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[31];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10007B664(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[22];
    goto LABEL_5;
  }

  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[31];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_10007B848()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10007B910()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007B9E8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007BA20()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007BAE8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007BBC0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007BC84()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007BD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10007BE48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v13 = (a1 + *(a4 + 24));
    *v13 = 0;
    v13[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10007BF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007BFD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10007C118()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007C158()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = *(v0 + v2 + 16);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v4 + 8), v5);
  }

  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v1[8];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  sub_10001E524(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  sub_100016590(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007C2F8()
{
  v1 = sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007C3E4()
{
  v1 = sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007C4C8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_10007C5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10007C6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10007CAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 240);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 244);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_10007CC20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 64) = a2;
  }

  else
  {
    v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 240);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 244);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10007CD5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007CD94()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007CE68()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10007CEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007CF70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10007D02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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
}

uint64_t sub_10007D104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10007D1CC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for StableIdentifier(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[24];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ProductInfoState(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[26];

  return v15(v16, a2, v14);
}

uint64_t sub_10007D344(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for StableIdentifier(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[24];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ProductInfoState(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[26];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10007D4BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10007D5EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10007DA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007DABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10007DB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10007DC60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10007DD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 1);
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
    v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007DE28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 1) = a2 + 2;
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007DEF0()
{
  swift_unknownObjectRelease();

  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));

  v1 = *(v0 + 248);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 240), v1);
  }

  return _swift_deallocObject(v0, 296);
}

uint64_t sub_10007DFC8()
{
  v1 = type metadata accessor for AirPodsSWPairingLockAckResponse(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = (v0 + v2);
  v5 = *(v0 + v2 + 8);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*v4, v5);
  }

  v6 = v4[3];
  if (v6 >> 60 != 15)
  {
    sub_100016590(v4[2], v6);
  }

  v7 = *(v1 + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007E13C()
{
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 72);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 64), v1);
  }

  sub_100016590(*(v0 + 136), *(v0 + 144));
  sub_100016590(*(v0 + 152), *(v0 + 160));
  sub_100016590(*(v0 + 168), *(v0 + 176));

  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  sub_100016590(*(v0 + 288), *(v0 + 296));
  sub_100016590(*(v0 + 304), *(v0 + 312));
  sub_100016590(*(v0 + 320), *(v0 + 328));

  v2 = *(v0 + 360);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 352), v2);
  }

  return _swift_deallocObject(v0, 440);
}

uint64_t sub_10007E25C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007E298()
{

  sub_100016590(*(v0 + 56), *(v0 + 64));
  sub_100016590(*(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 96);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 88), v1);
  }

  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));

  sub_100016590(*(v0 + 248), *(v0 + 256));
  sub_100016590(*(v0 + 264), *(v0 + 272));
  sub_100016590(*(v0 + 280), *(v0 + 288));
  sub_100016590(*(v0 + 296), *(v0 + 304));
  sub_100016590(*(v0 + 312), *(v0 + 320));
  sub_100016590(*(v0 + 328), *(v0 + 336));
  sub_100016590(*(v0 + 344), *(v0 + 352));

  v2 = *(v0 + 384);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 376), v2);
  }

  return _swift_deallocObject(v0, 400);
}

uint64_t sub_10007E3B8()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[6], v1);
  }

  sub_100016590(v0[15], v0[16]);
  sub_100016590(v0[17], v0[18]);
  sub_100016590(v0[19], v0[20]);

  sub_100016590(v0[26], v0[27]);
  sub_100016590(v0[28], v0[29]);
  sub_100016590(v0[30], v0[31]);
  sub_100016590(v0[32], v0[33]);
  sub_100016590(v0[34], v0[35]);
  sub_100016590(v0[36], v0[37]);
  sub_100016590(v0[38], v0[39]);

  v2 = v0[43];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[42], v2);
  }

  return _swift_deallocObject(v0, 352);
}

uint64_t sub_10007E4A8()
{
  swift_unknownObjectRelease();

  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  v1 = *(v0 + 200);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 192), v1);
  }

  v2 = *(v0 + 232);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 224), v2);
  }

  return _swift_deallocObject(v0, 280);
}

uint64_t sub_10007E588()
{
  v1 = (type metadata accessor for AirPodsPairingLockAckResponse(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  sub_100016590(*(v4 + 16), *(v4 + 24));
  sub_100016590(*(v4 + 32), *(v4 + 40));
  v5 = v1[9];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007E688()
{
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 72);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 64), v1);
  }

  sub_100016590(*(v0 + 136), *(v0 + 144));
  sub_100016590(*(v0 + 152), *(v0 + 160));
  sub_100016590(*(v0 + 168), *(v0 + 176));

  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  sub_100016590(*(v0 + 288), *(v0 + 296));
  v2 = *(v0 + 312);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 304), v2);
  }

  v3 = *(v0 + 344);
  if (v3 >> 60 != 15)
  {
    sub_100016590(*(v0 + 336), v3);
  }

  return _swift_deallocObject(v0, 416);
}

uint64_t sub_10007E7B0()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 48), v1);
  }

  sub_100016590(*(v0 + 120), *(v0 + 128));
  sub_100016590(*(v0 + 136), *(v0 + 144));
  sub_100016590(*(v0 + 152), *(v0 + 160));

  sub_100016590(*(v0 + 208), *(v0 + 216));
  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  v2 = *(v0 + 296);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 288), v2);
  }

  v3 = *(v0 + 328);
  if (v3 >> 60 != 15)
  {
    sub_100016590(*(v0 + 320), v3);
  }

  return _swift_deallocObject(v0, 376);
}

uint64_t sub_10007E8C0()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[6], v1);
  }

  sub_100016590(v0[15], v0[16]);
  sub_100016590(v0[17], v0[18]);
  sub_100016590(v0[19], v0[20]);

  sub_100016590(v0[26], v0[27]);
  sub_100016590(v0[28], v0[29]);
  sub_100016590(v0[30], v0[31]);
  sub_100016590(v0[32], v0[33]);
  sub_100016590(v0[34], v0[35]);
  v2 = v0[37];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[36], v2);
  }

  v3 = v0[41];
  if (v3 >> 60 != 15)
  {
    sub_100016590(v0[40], v3);
  }

  return _swift_deallocObject(v0, 336);
}

uint64_t sub_10007E9B8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007EA00()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[6], v1);
  }

  sub_100016590(v0[15], v0[16]);
  sub_100016590(v0[17], v0[18]);
  sub_100016590(v0[19], v0[20]);

  sub_100016590(v0[26], v0[27]);
  sub_100016590(v0[28], v0[29]);
  sub_100016590(v0[30], v0[31]);
  sub_100016590(v0[32], v0[33]);
  sub_100016590(v0[34], v0[35]);
  v2 = v0[37];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[36], v2);
  }

  v3 = v0[41];
  if (v3 >> 60 != 15)
  {
    sub_100016590(v0[40], v3);
  }

  sub_100016590(v0[42], v0[43]);
  sub_100016590(v0[44], v0[45]);

  return _swift_deallocObject(v0, 368);
}

uint64_t sub_10007EB08()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007EB48()
{
  swift_unknownObjectRelease();

  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));
  v1 = *(v0 + 232);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 224), v1);
  }

  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));

  v2 = *(v0 + 296);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 288), v2);
  }

  sub_100016590(*(v0 + 304), *(v0 + 312));

  return _swift_deallocObject(v0, 360);
}

uint64_t sub_10007EC50()
{
  v1 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = (v0 + v2);
  v5 = *(v0 + v2 + 8);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*v4, v5);
  }

  v6 = v4[3];
  if (v6 >> 60 != 15)
  {
    sub_100016590(v4[2], v6);
  }

  v7 = v4[5];
  if (v7 >> 60 != 15)
  {
    sub_100016590(v4[4], v7);
  }

  v8 = *(v1 + 28);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007EDDC()
{
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 72);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 64), v1);
  }

  sub_100016590(*(v0 + 136), *(v0 + 144));
  sub_100016590(*(v0 + 152), *(v0 + 160));
  sub_100016590(*(v0 + 168), *(v0 + 176));

  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  sub_100016590(*(v0 + 288), *(v0 + 296));
  v2 = *(v0 + 312);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 304), v2);
  }

  v3 = *(v0 + 344);
  if (v3 >> 60 != 15)
  {
    sub_100016590(*(v0 + 336), v3);
  }

  sub_100016590(*(v0 + 352), *(v0 + 360));
  sub_100016590(*(v0 + 368), *(v0 + 376));

  sub_100016590(*(v0 + 400), *(v0 + 408));

  return _swift_deallocObject(v0, 472);
}

uint64_t sub_10007EF1C()
{

  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 80), v1);
  }

  sub_100016590(*(v0 + 152), *(v0 + 160));
  sub_100016590(*(v0 + 168), *(v0 + 176));
  sub_100016590(*(v0 + 184), *(v0 + 192));

  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  sub_100016590(*(v0 + 288), *(v0 + 296));
  sub_100016590(*(v0 + 304), *(v0 + 312));
  v2 = *(v0 + 328);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 320), v2);
  }

  v3 = *(v0 + 360);
  if (v3 >> 60 != 15)
  {
    sub_100016590(*(v0 + 352), v3);
  }

  sub_100016590(*(v0 + 368), *(v0 + 376));
  sub_100016590(*(v0 + 384), *(v0 + 392));

  return _swift_deallocObject(v0, 416);
}

uint64_t sub_10007F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10007F118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_10007F2C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007F310()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007F350()
{
  v1 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v4 + 41);
}

uint64_t sub_10007F3F8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007F458()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007F4C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007F590()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007F69C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007F794()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007F8E4()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_10007FC8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007FCC4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007FDD0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007FE10()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007FE50()
{
  v1 = sub_1000BC4D4(&qword_1016AF990, &qword_1013CAEB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007FF84()
{

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100080024()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000800DC()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ContinuousClock.Instant();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_100080234()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000803D0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100080408()
{
  v1 = sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000804E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008060C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100080734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000807A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100080810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000808D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008099C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000809DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0x13)
    {
      return v12 - 18;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100080AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 18;
  }

  return result;
}

double sub_100080B6C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10138BBF0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  return result;
}

uint64_t sub_100080B94()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100080BE4()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  v1 = v0[25];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[24], v1);
  }

  return _swift_deallocObject(v0, 208);
}

uint64_t sub_100080C84()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 216), *(v0 + 224));

  return _swift_deallocObject(v0, 232);
}

uint64_t sub_100080D1C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100080D74()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100080DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100080E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100080E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000BC4D4(&qword_1016B0878, &qword_1013CF3B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 96);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100080F4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016B0878, &qword_1013CF3B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 96);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100081480()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000814B8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100081524()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008155C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000815A4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000815EC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10008164C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000816F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10008185C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100081898()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000819AC()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100081AE0()
{
  v1 = (type metadata accessor for LeashRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100081BE4()
{
  v1 = (type metadata accessor for LeashRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100081D0C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100081D50()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 1);
}

uint64_t sub_100081E60()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (v2 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 24);
}

uint64_t sub_100081F80()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1000820B8()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 17) & ~*(*v1 + 80);
  v3 = (((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100082208()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_100408170(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_100082254()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for SafeLocation(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);

  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[7], v1);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_10008241C()
{
  v1 = (type metadata accessor for LeashRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100082518()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100082550()
{
  v1 = (type metadata accessor for LeashRecord(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100082694()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000826E4()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100082724()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100082784()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100082AF8()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v24 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v2 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v3 = *(v2 - 8);
  v21 = *(v3 + 80);
  v25 = *(v3 + 64);
  swift_unknownObjectRelease();

  v23 = (v24 + 40) & ~v24;
  v4 = v0 + v23;
  sub_100016590(*(v0 + v23), *(v0 + v23 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v23 + v5, v6);
  v9 = v0 + v23 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v20 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v20;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v20 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v23 + v22 + v21) & ~v21;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  (*(v3 + 8))(v0 + v18, v2);

  return _swift_deallocObject(v0, v18 + v25);
}

uint64_t sub_100082F10()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v24 = *(*(v2 - 1) + 80);
  v22 = *(*(v2 - 1) + 64);
  v26 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v25 = *(v3 + 64);

  v23 = (v24 + 24) & ~v24;
  v5 = v0 + v23;
  sub_100016590(*v5, *(v5 + 8));
  v6 = v2[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v23 + v6, v7);
  v10 = v0 + v23 + v2[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v21 = v0;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v1 = v21;
LABEL_13:

      break;
    case 3:
      v9(v10, v7);
      v21 = v0;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v12 = v2[7];
  if (!(*(v8 + 48))(v5 + v12, 1, v7))
  {
    v9(v5 + v12, v7);
  }

  v13 = v2[8];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  sub_100016590(*(v5 + v2[9]), *(v5 + v2[9] + 8));
  v15 = (v5 + v2[10]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  v17 = (v5 + v2[11]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100016590(*v17, v18);
  }

  v19 = (v23 + v22 + v4) & ~v4;
  sub_100016590(*(v5 + v2[12]), *(v5 + v2[12] + 8));
  sub_100016590(*(v5 + v2[13]), *(v5 + v2[13] + 8));

  (*(v3 + 8))(v1 + v19, v26);

  return _swift_deallocObject(v1, v19 + v25);
}

uint64_t sub_10008331C()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000833B0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000833E8()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
}

uint64_t sub_100083774()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100083898()
{

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000838F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100083928()
{

  sub_100007BAC((v0 + 104));

  return _swift_deallocObject(v0, 144);
}

uint64_t sub_100083998()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000839E0()
{
  sub_100007BAC((v0 + 16));
  sub_100007BAC((v0 + 56));

  return _swift_deallocObject(v0, 128);
}

uint64_t sub_100083A30()
{
  sub_100A1B300(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100083A7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100083AB4()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100083C1C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

double sub_100083C60(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_10138BBF0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

uint64_t sub_100083C8C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 56), *(v0 + 64));
  sub_100016590(*(v0 + 72), *(v0 + 80));
  sub_100016590(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100083CE4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100083D2C()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  v1 = v0[11];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[10], v1);
  }

  v2 = v0[13];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[12], v2);
  }

  return _swift_deallocObject(v0, 112);
}

uint64_t sub_100083DAC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 200), *(v0 + 208));

  return _swift_deallocObject(v0, 216);
}

uint64_t sub_100083E40()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  v1 = v0[11];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[10], v1);
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100083EA8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100083EEC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100083F24()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100083F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10008401C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000840C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073BE8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100084108()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008415C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100084268()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100084338()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000843C8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100084400()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10008447C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_1000847E8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100084830()
{
  v1 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v5 - 1) + 48))(v0 + v2, 1, v5))
  {
    goto LABEL_22;
  }

  sub_100016590(*v4, *(v4 + 8));
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v20 = *(v8 + 8);
  v20(v4 + v6, v7);
  v9 = v4 + v5[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v20(v9, v7);
        v19 = v3;
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        break;
      case 3:
        v20(v9, v7);
        v19 = v3;
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        break;
      case 4:
        goto LABEL_14;
      default:
        goto LABEL_15;
    }

    v3 = v19;
LABEL_14:

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {

    goto LABEL_14;
  }

LABEL_15:
  v11 = v5[7];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v20(v4 + v11, v7);
  }

  v12 = v5[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v5[9]), *(v4 + v5[9] + 8));
  v14 = (v4 + v5[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v5[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v5[12]), *(v4 + v5[12] + 8));
  sub_100016590(*(v4 + v5[13]), *(v4 + v5[13] + 8));

LABEL_22:

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100084BFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100084C34()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100084FAC()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10008533C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100085374()
{
  v1 = *(sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for BeaconNamingRecord(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    sub_100016590(*v4, *(v4 + 8));
    v6 = *(v5 + 20);
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 8);
    v8(v4 + v6, v7);
    v8(v4 + *(v5 + 24), v7);
  }

  return _swift_deallocObject(v0, ((((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100085544()
{
  v1 = (type metadata accessor for BeaconNamingRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100085680()
{
  v1 = (type metadata accessor for BeaconNamingRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000857DC()
{

  return _swift_deallocObject(v0, 113);
}

uint64_t sub_1000858C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100085994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FMNAccountType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100085A4C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100085A84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100085AC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100085AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100085BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100085CA0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100085CD8()
{

  sub_100016590(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100085D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 3);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Bit();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100085DD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 3) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for Bit();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100085E70()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100085EC0()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v17 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v13 = *(v3 + 80);
  v14 = *(v3 + 64);

  v18 = v0;
  v16 = (v17 + 24) & ~v17;
  v4 = v0 + v16;
  sub_100016590(*(v0 + v16), *(v0 + v16 + 8));
  v5 = *(v3 + 8);
  v5(v0 + v16 + v1[5], v2);
  v5(v0 + v16 + v1[6], v2);
  v6 = v1[10];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v10 = v1[12];
  if (!(*(v8 + 48))(v4 + v10, 1, v7))
  {
    v9(v4 + v10, v7);
  }

  v11 = (v16 + v15 + v13) & ~v13;

  v5(v18 + v11, v2);

  return _swift_deallocObject(v18, v11 + v14);
}

uint64_t sub_100086100()
{
  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v1 == 2)
    {

      goto LABEL_23;
    }

    if (v1 == 3)
    {

      goto LABEL_24;
    }

    if (v1 != 4)
    {
      goto LABEL_24;
    }

LABEL_11:

    goto LABEL_24;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_24;
      }

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  switch(v1)
  {
    case 8u:

      goto LABEL_23;
    case 9u:

      break;
    case 0xAu:
      goto LABEL_23;
  }

LABEL_24:

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_1000861FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100086234()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100086298()
{

  sub_100016590(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000862D8()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100086330()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100086370()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000863B8()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100086400()
{

  v1 = *(v0 + 72);
  if (v1 <= 4)
  {
    if (*(v0 + 72) <= 1u)
    {
      if (*(v0 + 72))
      {
        sub_100007BAC((v0 + 32));
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v1 == 2)
    {

      goto LABEL_23;
    }

    if (v1 == 3)
    {

      goto LABEL_24;
    }

    if (v1 != 4)
    {
      goto LABEL_24;
    }

LABEL_11:

    goto LABEL_24;
  }

  if (*(v0 + 72) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_24;
      }

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  switch(v1)
  {
    case 8u:

      goto LABEL_23;
    case 9u:

      break;
    case 0xAu:
      goto LABEL_23;
  }

LABEL_24:

  return _swift_deallocObject(v0, 73);
}

uint64_t sub_100086504()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10008655C()
{
  if (*(v0 + 16))
  {
  }

  v1 = *(v0 + 72);
  if (v1 <= 4)
  {
    if (*(v0 + 72) <= 1u)
    {
      if (*(v0 + 72))
      {
        sub_100007BAC((v0 + 32));
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v1 == 2)
    {

      goto LABEL_25;
    }

    if (v1 == 3)
    {

      goto LABEL_26;
    }

    if (v1 != 4)
    {
      goto LABEL_26;
    }

LABEL_13:

    goto LABEL_26;
  }

  if (*(v0 + 72) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_26;
      }

LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_13;
  }

  switch(v1)
  {
    case 8u:

      goto LABEL_25;
    case 9u:

      break;
    case 0xAu:
      goto LABEL_25;
  }

LABEL_26:

  return _swift_deallocObject(v0, 73);
}

uint64_t sub_100086668()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000866A8()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000866F0()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100086740()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100086778()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000867C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100086808()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100086850()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000868F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 252)
  {
    v12 = *(a1 + a3[10]);
    if (v12 >= 2u)
    {
      v16 = (v12 & 0xFE) + 2147483646;
      v17 = (v16 & 0x7FFFFFFE | v12 & 1) - 1;
      if ((v16 & 0x7FFFFFFE) != 0)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for BeaconPayloadMetaDataV2(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100086A38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 252)
  {
    *(a1 + a4[10]) = a2 + 3;
  }

  else
  {
    v13 = type metadata accessor for BeaconPayloadMetaDataV2(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_100086B5C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100086B94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100086C78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100086CC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100086DBC()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100086EE8()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000870D0()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000871F0()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  sub_100B03D84(*(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));

  return _swift_deallocObject(v0, ((((((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000874B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100087500()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008753C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100087584()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000875BC()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100087940()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000879A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100087AA4()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100087ADC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_100087BC8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (v6 + *(*v5 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[8], v1);
  v9 = v5[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_100087D8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100087E68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100087F44()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 24) & ~v2) + v16);
}

uint64_t sub_1000881C0()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100088298()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100088384()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000883BC()
{
  v1 = (type metadata accessor for BeaconNamingRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10008850C()
{
  v1 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for KeySyncMetadata(0) - 8);
  v14 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v5 = *(*v4 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v15 = (v14 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v16 = (*(v7 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = v0 + v2;
  sub_100016590(*v8, *(v8 + 8));
  v9 = *(v7 + 8);
  v9(v8 + v1[7], v6);
  v9(v8 + v1[8], v6);
  v10 = v1[10];
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 8);
  v12(v8 + v10, v11);
  v9(v0 + v14, v6);
  sub_100007BAC((v0 + v14 + v4[8]));
  v12(v0 + v14 + v4[9], v11);
  v9(v0 + v15, v6);

  return _swift_deallocObject(v0, v16 + 8);
}

uint64_t sub_1000887A0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v21 = *(*(v5 - 1) + 64);

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  v9 = v0 + v7;
  sub_100016590(*(v0 + v7), *(v0 + v7 + 8));
  v8(v0 + v7 + v5[5], v1);
  v10 = v0 + v7 + v5[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v10, v1);
      v20 = v7;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v7 = v20;
LABEL_13:

      break;
    case 3:
      v8(v10, v1);
      v20 = v7;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v12 = v5[7];
  if (!(*(v2 + 48))(v9 + v12, 1, v1))
  {
    v8(v9 + v12, v1);
  }

  v13 = v5[8];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  sub_100016590(*(v9 + v5[9]), *(v9 + v5[9] + 8));
  v15 = (v9 + v5[10]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  v17 = (v9 + v5[11]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100016590(*v17, v18);
  }

  sub_100016590(*(v9 + v5[12]), *(v9 + v5[12] + 8));
  sub_100016590(*(v9 + v5[13]), *(v9 + v5[13] + 8));

  return _swift_deallocObject(v0, v7 + v21);
}

uint64_t sub_100088B78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for OwnedDeviceKeyRecord(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  v9 = v0 + v6;
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[7], v1);
  v8(v0 + v6 + v5[8], v1);
  sub_100016590(*(v9 + v5[9]), *(v9 + v5[9] + 8));
  sub_100016590(*(v9 + v5[10]), *(v9 + v5[10] + 8));

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100088D08()
{
  v1 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);
  v7 = v1[10];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100088E60()
{
  v1 = (type metadata accessor for KeySyncMetadata(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  sub_100007BAC((v0 + v2 + v1[8]));
  v5 = v1[9];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100088F8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100089064()
{

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_1000890AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000890F8()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v24 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v2 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v3 = *(v2 - 8);
  v21 = *(v3 + 80);
  v25 = *(v3 + 64);
  swift_unknownObjectRelease();

  v23 = (v24 + 40) & ~v24;
  v4 = v0 + v23;
  sub_100016590(*(v0 + v23), *(v0 + v23 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v23 + v5, v6);
  v9 = v0 + v23 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v20 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v20;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v20 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v23 + v22 + v21) & ~v21;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  (*(v3 + 8))(v0 + v18, v2);

  return _swift_deallocObject(v0, v18 + v25);
}

uint64_t sub_100089510()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v24 = *(*(v2 - 1) + 80);
  v22 = *(*(v2 - 1) + 64);
  v26 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v25 = *(v3 + 64);

  v23 = (v24 + 24) & ~v24;
  v5 = v0 + v23;
  sub_100016590(*v5, *(v5 + 8));
  v6 = v2[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v23 + v6, v7);
  v10 = v0 + v23 + v2[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v21 = v0;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v1 = v21;
LABEL_13:

      break;
    case 3:
      v9(v10, v7);
      v21 = v0;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v12 = v2[7];
  if (!(*(v8 + 48))(v5 + v12, 1, v7))
  {
    v9(v5 + v12, v7);
  }

  v13 = v2[8];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  sub_100016590(*(v5 + v2[9]), *(v5 + v2[9] + 8));
  v15 = (v5 + v2[10]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  v17 = (v5 + v2[11]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100016590(*v17, v18);
  }

  v19 = (v23 + v22 + v4) & ~v4;
  sub_100016590(*(v5 + v2[12]), *(v5 + v2[12] + 8));
  sub_100016590(*(v5 + v2[13]), *(v5 + v2[13] + 8));

  (*(v3 + 8))(v1 + v19, v26);

  return _swift_deallocObject(v1, v19 + v25);
}

uint64_t sub_100089954()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000899DC()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100089D48()
{
  v1 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0 + *(v1 + 36);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100089E30()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = (sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8);
  v9 = (v6 + v7 + *(*v8 + 80)) & ~*(*v8 + 80);
  v16 = *(*v8 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v3, v1);
  v11 = v0 + v6;
  sub_100016590(*v11, *(v11 + 8));
  v10(v11 + v5[7], v1);
  v10(v11 + v5[8], v1);
  v12 = v5[10];
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 8);
  v14(v11 + v12, v13);
  v14(v0 + v8[11] + v9, v13);

  return _swift_deallocObject(v0, v9 + v16);
}

uint64_t sub_10008A078()
{
  v1 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);
  v7 = v1[10];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10008A1D0()
{
  v1 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10008A348()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v12 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[10];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[12];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10008A530()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v15 = *(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v12 = *(v3 + 64);

  v14 = (v15 + 24) & ~v15;
  sub_100016590(*(v0 + v14), *(v0 + v14 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v14 + v5, v6);
  v7(v0 + v14 + v1[6], v6);
  v8 = *(v3 + 8);
  v8(v0 + v14 + v1[10], v2);
  v9 = v1[12];
  if (!(*(v3 + 48))(v0 + v14 + v9, 1, v2))
  {
    v8(v0 + v14 + v9, v2);
  }

  v10 = (v14 + v13 + v4) & ~v4;

  v8(v0 + v10, v2);

  return _swift_deallocObject(v0, ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10008A768()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[10];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[12];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, v2 + v12);
}

uint64_t sub_10008A930()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[10];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[12];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  v11 = (v13 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100007BAC((v0 + v11));

  return _swift_deallocObject(v0, v11 + 40);
}

uint64_t sub_10008AB0C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v23 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for MemberSharingCircle(0);
  v20 = *(*(v2 - 1) + 80);
  v19 = *(*(v2 - 1) + 64);

  v22 = (v23 + 24) & ~v23;
  v3 = v0 + v22;
  sub_100016590(*(v0 + v22), *(v0 + v22 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v22 + v4, v5);
  v7(v0 + v22 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v22 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v0 + v22 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  v15 = (v22 + v21 + v20) & ~v20;
  v16 = (v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v0 + v15;
  sub_100016590(*(v0 + v15), *(v0 + v15 + 8));
  v7(v17 + v2[5], v5);
  v7(v17 + v2[6], v5);
  v7(v17 + v2[7], v5);
  v7(v17 + v2[8], v5);

  return _swift_deallocObject(v0, v16 + 16);
}

uint64_t sub_10008AE8C()
{
  v1 = (type metadata accessor for SessionTokenRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v1[8];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10008AFF0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10008B0AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008B17C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10008B1CC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008B24C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008B28C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10008B618()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10008B694()
{
  v1 = *(sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_23;
  }

  sub_100016590(*v4, *(v4 + 8));
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v20 = *(v8 + 8);
  v20(v4 + v6, v7);
  v9 = v4 + v5[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v20(v9, v7);
        v19 = v3;
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        break;
      case 3:
        v20(v9, v7);
        v19 = v3;
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        break;
      case 4:
        goto LABEL_15;
      default:
        goto LABEL_16;
    }

    v3 = v19;
LABEL_15:

    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {

    goto LABEL_15;
  }

LABEL_16:
  v11 = v5[7];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v20(v4 + v11, v7);
  }

  v12 = v5[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v5[9]), *(v4 + v5[9] + 8));
  v14 = (v4 + v5[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v5[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v5[12]), *(v4 + v5[12] + 8));
  sub_100016590(*(v4 + v5[13]), *(v4 + v5[13] + 8));

LABEL_23:

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10008BA5C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_10008BDF4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008BFF8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008C048()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008C088()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008C0C0()
{
  v1 = (type metadata accessor for BeaconObservation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[7];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10008C1E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008C2BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008C2F4()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 73);
}

uint64_t sub_10008C398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008C404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008C4D4()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10008C514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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
    v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008C648(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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
    v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008C77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 24) >> 60;
      if (((4 * v14) & 0xC) != 0)
      {
        return 16 - ((4 * v14) & 0xC | (v14 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10008C89C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UUID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = a1 + *(a4 + 24);
      *(v15 + 16) = 0;
      *(v15 + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10008CA88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10008CB38()
{
  v1 = 0x65566769666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6F43737574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_10008CBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008CCE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008CE18()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008CE50()
{
  v1 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10008CFB8()
{
  v1 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_10008D154()
{
  v1 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10008D2BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10008D384()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_10008D458()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008D508()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008D5F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v5 + 9);
}

uint64_t sub_10008D6E4()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10008D73C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10008D78C()
{
  v1 = *(sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10008D8CC()
{
  v1 = (type metadata accessor for StandaloneBeacon(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = v1[7];
  v7 = type metadata accessor for MACAddress();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v2 + v6, v7);
  v8(v0 + v2 + v1[8], v7);

  v9 = v1[10];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  sub_100016590(*(v4 + v1[11]), *(v4 + v1[11] + 8));
  v11 = v0 + v2 + v1[12];
  sub_100016590(*v11, *(v11 + 8));
  sub_100016590(*(v11 + 16), *(v11 + 24));
  sub_100016590(*(v11 + 32), *(v11 + 40));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10008DAB4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008DAF0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008DB28()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008DB60()
{
  v1 = (type metadata accessor for StandaloneBeacon(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = type metadata accessor for MACAddress();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v8(v4 + v1[8], v7);

  v9 = v1[10];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  sub_100016590(*(v4 + v1[11]), *(v4 + v1[11] + 8));
  v11 = v4 + v1[12];
  sub_100016590(*v11, *(v11 + 8));
  sub_100016590(*(v11 + 16), *(v11 + 24));
  sub_100016590(*(v11 + 32), *(v11 + 40));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10008DD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10008DE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008DF88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10008E100(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for MACAddress();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_10008E280()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008E2C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008E300()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008E340()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008E378()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10008E43C()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v48 = *(*(v2 - 1) + 80);
  v46 = *(*(v2 - 1) + 64);

  v47 = (v48 + 24) & ~v48;
  v3 = v0 + v47;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v47, v4);
  v7 = v2[5];
  if (!(*(v5 + 48))(v3 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = v2[7];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  v10 = v2[10];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v49 = *(v12 + 8);
  v49(v3 + v10, v11);
  v13 = v2[11];
  v44 = *(v12 + 48);
  if (!v44(v3 + v13, 1, v11))
  {
    v49(v3 + v13, v11);
  }

  v45 = v11;

  v14 = v3 + v2[14];
  v15 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v6(v14, v4);
    sub_100016590(*(v14 + *(v15 + 20)), *(v14 + *(v15 + 20) + 8));

    v16 = *(v15 + 36);
    v17 = type metadata accessor for AirTagVersionNumber();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = v3 + v2[15];
  v20 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v20 - 1) + 48))(v19, 1, v20))
  {
    v43 = v1;
    v21 = v20[5];
    v22 = type metadata accessor for ServerStatusCode();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);

    v23 = v20[17];
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v27 = v20[18];
    v42 = v26;
    if (!v26(v19 + v27, 1, v24))
    {
      (*(v25 + 8))(v19 + v27, v24);
    }

    v28 = v19 + v20[21];
    v29 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {

      v40 = *(v29 + 44);
      if (!v42(v28 + v40, 1, v24))
      {
        (*(v25 + 8))(v28 + v40, v24);
      }

      v41 = *(v29 + 48);
      if (!v42(v28 + v41, 1, v24))
      {
        (*(v25 + 8))(v28 + v41, v24);
      }
    }

    v30 = (v19 + v20[24]);
    v31 = v30[1];
    if (v31 >> 60 != 15)
    {
      sub_100016590(*v30, v31);
    }

    v32 = (v19 + v20[25]);
    v33 = v32[1];
    if (v33 >> 60 != 15)
    {
      sub_100016590(*v32, v33);
    }

    v34 = *(v25 + 8);
    v34(v19 + v20[26], v24);
    v34(v19 + v20[27], v24);
    v34(v19 + v20[28], v24);
    v34(v19 + v20[29], v24);
    v34(v19 + v20[30], v24);
    v34(v19 + v20[31], v24);

    v34(v19 + v20[38], v24);
    v34(v19 + v20[39], v24);
    v34(v19 + v20[40], v24);
    v34(v19 + v20[41], v24);
    v34(v19 + v20[42], v24);
    v34(v19 + v20[43], v24);

    v1 = v43;
  }

  v35 = v2[18];
  if (!v44(v3 + v35, 1, v45))
  {
    v49(v3 + v35, v45);
  }

  v36 = v2[19];
  if (!v44(v3 + v36, 1, v45))
  {
    v49(v3 + v36, v45);
  }

  v37 = (v3 + v2[20]);
  v38 = v37[1];
  if (((v38 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v37, v38);
  }

  return _swift_deallocObject(v1, v47 + v46);
}

uint64_t sub_10008ECEC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10008ED74()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v48 = *(*(v2 - 1) + 80);
  v46 = *(*(v2 - 1) + 64);

  v47 = (v48 + 24) & ~v48;
  v3 = v0 + v47;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v47, v4);
  v7 = v2[5];
  if (!(*(v5 + 48))(v0 + v47 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = v2[7];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  v10 = v2[10];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v49 = *(v12 + 8);
  v49(v3 + v10, v11);
  v13 = v2[11];
  v44 = *(v12 + 48);
  if (!v44(v3 + v13, 1, v11))
  {
    v49(v3 + v13, v11);
  }

  v45 = v11;

  v14 = v3 + v2[14];
  v15 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v6(v14, v4);
    sub_100016590(*(v14 + *(v15 + 20)), *(v14 + *(v15 + 20) + 8));

    v16 = *(v15 + 36);
    v17 = type metadata accessor for AirTagVersionNumber();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = v3 + v2[15];
  v20 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v20 - 1) + 48))(v19, 1, v20))
  {
    v43 = v1;
    v21 = v20[5];
    v22 = type metadata accessor for ServerStatusCode();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);

    v23 = v20[17];
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v27 = v20[18];
    v42 = v26;
    if (!v26(v19 + v27, 1, v24))
    {
      (*(v25 + 8))(v19 + v27, v24);
    }

    v28 = v19 + v20[21];
    v29 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {

      v40 = *(v29 + 44);
      if (!v42(v28 + v40, 1, v24))
      {
        (*(v25 + 8))(v28 + v40, v24);
      }

      v41 = *(v29 + 48);
      if (!v42(v28 + v41, 1, v24))
      {
        (*(v25 + 8))(v28 + v41, v24);
      }
    }

    v30 = (v19 + v20[24]);
    v31 = v30[1];
    v1 = v43;
    if (v31 >> 60 != 15)
    {
      sub_100016590(*v30, v31);
    }

    v32 = (v19 + v20[25]);
    v33 = v32[1];
    if (v33 >> 60 != 15)
    {
      sub_100016590(*v32, v33);
    }

    v34 = *(v25 + 8);
    v34(v19 + v20[26], v24);
    v34(v19 + v20[27], v24);
    v34(v19 + v20[28], v24);
    v34(v19 + v20[29], v24);
    v34(v19 + v20[30], v24);
    v34(v19 + v20[31], v24);

    v34(v19 + v20[38], v24);
    v34(v19 + v20[39], v24);
    v34(v19 + v20[40], v24);
    v34(v19 + v20[41], v24);
    v34(v19 + v20[42], v24);
    v34(v19 + v20[43], v24);
  }

  v35 = v2[18];
  if (!v44(v3 + v35, 1, v45))
  {
    v49(v3 + v35, v45);
  }

  v36 = v2[19];
  if (!v44(v3 + v36, 1, v45))
  {
    v49(v3 + v36, v45);
  }

  v37 = (v3 + v2[20]);
  v38 = v37[1];
  if (((v38 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v37, v38);
  }

  return _swift_deallocObject(v1, ((((v46 + v47 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10008F698()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 168);
}

uint64_t sub_10008F760()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008F798()
{
  v1 = sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008F87C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008F8B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008F8F0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008F92C()
{
  v1 = type metadata accessor for AnalyticsEvent();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008FA20()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008FA60()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10008FAE8()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 65) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  if (*(v0 + 64))
  {
  }

  else
  {
    sub_100007BAC((v0 + 24));
  }

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10008FC48()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008FD40()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10008FE20()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100090000()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000900C4()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  sub_100016590(*(v0 + 3), *(v0 + 4));
  sub_100016590(*(v0 + 5), *(v0 + 6));
  sub_100016590(*(v0 + 7), *(v0 + 8));
  v5 = *(v0 + 10);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v0 + 9), v5);
  }

  v6 = *(v0 + 12);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 11), v6);
  }

  v7 = (v3 + 112) & ~v3;

  (*(v2 + 8))(&v0[v7], v1);

  return _swift_deallocObject(v0, ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000901EC()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v2[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v2[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v1 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v2[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v2[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v14 = (v4 + v2[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v2[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  sub_100016590(*(v4 + v2[13]), *(v4 + v2[13] + 8));

  return _swift_deallocObject(v1, v3 + v20);
}

uint64_t sub_100090554()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000908D8()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v49 = *(*(v1 - 1) + 80);
  v2 = (v49 + 40) & ~v49;
  v41 = *(*(v1 - 1) + 64);
  v42 = type metadata accessor for PairingConfig(0);
  v3 = *(*(v42 - 8) + 80);
  v48 = *(*(v42 - 8) + 64);
  v4 = sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
  v46 = *(v4 - 8);
  v47 = v4;
  v44 = *(v46 + 80);
  v45 = *(v46 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v0 + v2 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = v3;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:

      break;
    case 3:
      v9(v10, v7);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_12;
  }

LABEL_13:
  v12 = v41 + v3;
  v13 = v1[7];
  if (!(*(v8 + 48))(v5 + v13, 1, v7))
  {
    v9(v5 + v13, v7);
  }

  v14 = v1[8];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v16 = (v5 + v1[10]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v2 + v12) & ~v50;
  v19 = (v5 + v1[11]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100016590(*v19, v20);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  v21 = v0 + v18 + *(v42 + 28);
  v22 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
  {
    v23 = v22[5];
    v24 = type metadata accessor for ServerStatusCode();
    (*(*(v24 - 8) + 8))(v21 + v23, v24);

    v25 = v22[17];
    v26 = type metadata accessor for URL();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }

    v29 = v22[18];
    if (!v28(v21 + v29, 1, v26))
    {
      (*(v27 + 8))(v21 + v29, v26);
    }

    v30 = v21 + v22[21];
    v31 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {
      v43 = v18;

      v32 = *(v31 + 44);
      if (!v28(v30 + v32, 1, v26))
      {
        (*(v27 + 8))(v30 + v32, v26);
      }

      v33 = *(v31 + 48);
      if (!v28(v30 + v33, 1, v26))
      {
        (*(v27 + 8))(v30 + v33, v26);
      }

      v18 = v43;
    }

    v34 = (v21 + v22[24]);
    v35 = v34[1];
    if (v35 >> 60 != 15)
    {
      sub_100016590(*v34, v35);
    }

    v36 = (v21 + v22[25]);
    v37 = v36[1];
    if (v37 >> 60 != 15)
    {
      sub_100016590(*v36, v37);
    }

    v38 = *(v27 + 8);
    v38(v21 + v22[26], v26);
    v38(v21 + v22[27], v26);
    v38(v21 + v22[28], v26);
    v38(v21 + v22[29], v26);
    v38(v21 + v22[30], v26);
    v38(v21 + v22[31], v26);

    v38(v21 + v22[38], v26);
    v38(v21 + v22[39], v26);
    v38(v21 + v22[40], v26);
    v38(v21 + v22[41], v26);
    v38(v21 + v22[42], v26);
    v38(v21 + v22[43], v26);
  }

  v39 = (v18 + v48 + v44) & ~v44;
  (*(v46 + 8))(v0 + v39, v47);

  return _swift_deallocObject(v0, v39 + v45);
}

uint64_t sub_1000911E4()
{
  v1 = sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100091278()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v41 = *(*(v1 - 1) + 80);
  v2 = (v41 + 24) & ~v41;
  v3 = *(*(v1 - 1) + 64);
  v39 = type metadata accessor for PairingConfig(0);
  v43 = *(*(v39 - 8) + 80);
  v40 = *(*(v39 - 8) + 64);

  v42 = v0;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v9 = v4 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:

      break;
    case 3:
      v8(v9, v6);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_12;
  }

LABEL_13:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  v16 = v42;
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v17 = (v2 + v3 + v43) & ~v43;
  v18 = (v4 + v1[11]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100016590(*v18, v19);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  v20 = v42 + v17 + *(v39 + 28);
  v21 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v21 - 1) + 48))(v20, 1, v21))
  {
    v22 = v21[5];
    v23 = type metadata accessor for ServerStatusCode();
    (*(*(v23 - 8) + 8))(v20 + v22, v23);

    v24 = v21[17];
    v25 = type metadata accessor for URL();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }

    v28 = v21[18];
    if (!v27(v20 + v28, 1, v25))
    {
      (*(v26 + 8))(v20 + v28, v25);
    }

    v29 = v20 + v21[21];
    v30 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
    {

      v31 = *(v30 + 44);
      if (!v27(v29 + v31, 1, v25))
      {
        (*(v26 + 8))(v29 + v31, v25);
      }

      v32 = *(v30 + 48);
      if (!v27(v29 + v32, 1, v25))
      {
        (*(v26 + 8))(v29 + v32, v25);
      }

      v16 = v42;
    }

    v33 = (v20 + v21[24]);
    v34 = v33[1];
    if (v34 >> 60 != 15)
    {
      sub_100016590(*v33, v34);
    }

    v35 = (v20 + v21[25]);
    v36 = v35[1];
    if (v36 >> 60 != 15)
    {
      sub_100016590(*v35, v36);
    }

    v37 = *(v26 + 8);
    v37(v20 + v21[26], v25);
    v37(v20 + v21[27], v25);
    v37(v20 + v21[28], v25);
    v37(v20 + v21[29], v25);
    v37(v20 + v21[30], v25);
    v37(v20 + v21[31], v25);

    v37(v20 + v21[38], v25);
    v37(v20 + v21[39], v25);
    v37(v20 + v21[40], v25);
    v37(v20 + v21[41], v25);
    v37(v20 + v21[42], v25);
    v37(v20 + v21[43], v25);
  }

  return _swift_deallocObject(v16, ((v40 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}