Swift::Int sub_10001C7A4(unsigned __int8 a1)
{
  sub_100020B64();
  sub_1000208B4();

  return sub_100020B84();
}

uint64_t sub_10001C8A8(uint64_t a1)
{
  sub_1000208B4();
}

Swift::Int sub_10001C99C(uint64_t a1, unsigned __int8 a2)
{
  sub_100020B64();
  sub_1000208B4();

  return sub_100020B84();
}

unint64_t sub_10001CA9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CBE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10001CACC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E55;
  v5 = 0xE600000000000000;
  v6 = 0x64616F6C7055;
  v7 = 0x80000001000216D0;
  if (v2 != 4)
  {
    v7 = 0x80000001000216F0;
  }

  if (v2 != 3)
  {
    v6 = 0xD000000000000013;
    v5 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1735289168;
  if (v2 != 1)
  {
    v9 = 0x64616F6C6E776F44;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_10001CB8C()
{
  result = qword_1000323F0;
  if (!qword_1000323F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000323F0);
  }

  return result;
}

unint64_t sub_10001CBE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10002D450;
  v6._object = a2;
  v4 = sub_100020B04(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

__n128 sub_10001CC2C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10001CC50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10001CC98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10001CD24()
{
  v1 = sub_100020544();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13[0] = v0[6];
  sub_10000239C(&qword_100032438, &qword_100023E38);
  result = sub_100020714();
  if (v15 == 1)
  {
    v15 = v0[7];
    v13[0] = v0[7];
    v16 = *(&v15 + 1);
    sub_10000B994(&v16, &v14, &qword_100032440, &qword_100023E40);
    sub_100020714();
    if (v14)
    {
      return sub_100002494(&v15, &qword_100032438, &qword_100023E38);
    }

    else
    {
      v13[0] = v15;
      LOBYTE(v14) = 1;
      sub_100020724();
      sub_100002494(&v15, &qword_100032438, &qword_100023E38);
      v13[0] = v0[2];
      v14 = 0x3FDB851EB851EB85;
      sub_10000239C(&qword_100032448, &qword_100023E48);
      sub_100020724();
      v13[0] = v0[3];
      v14 = 0x3FE3851EB851EB85;
      sub_100020724();
      v13[0] = v0[4];
      v14 = 0x3FE947AE147AE148;
      sub_100020724();
      v13[0] = v0[5];
      v14 = 0;
      sub_100020724();
      sub_1000207A4();
      sub_100020794();

      __chkstk_darwin(v6);
      *&v12[-16] = v0;
      v7 = swift_allocObject();
      v8 = v0[5];
      v7[5] = v0[4];
      v7[6] = v8;
      v9 = v0[7];
      v7[7] = v0[6];
      v7[8] = v9;
      v10 = v0[1];
      v7[1] = *v0;
      v7[2] = v10;
      v11 = v0[3];
      v7[3] = v0[2];
      v7[4] = v11;
      sub_10000B394(v0, v13);
      sub_100020534();
      sub_100020374();

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

uint64_t sub_10001D06C()
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020724();
  sub_100020724();
  sub_100020724();
  sub_100020724();
}

uint64_t sub_10001D1C0(_OWORD *a1)
{
  v2 = sub_1000207E4();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100020804();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[0] = a1[6];
  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020714();
  if (LOBYTE(aBlock[0]) == 1 && (swift_getKeyPath(), swift_getKeyPath(), sub_100020124(), , , (v20[0] & 1) == 0))
  {
    v20[0] = a1[5];
    aBlock[0] = 0;
    sub_10000239C(&qword_100032448, &qword_100023E48);
    sub_100020724();
    v20[0] = a1[7];
    LOBYTE(aBlock[0]) = 0;
    sub_100020724();
    sub_10000F08C();
    v17 = sub_1000209C4();
    v8 = swift_allocObject();
    v9 = a1[5];
    v8[5] = a1[4];
    v8[6] = v9;
    v10 = a1[7];
    v8[7] = a1[6];
    v8[8] = v10;
    v11 = a1[1];
    v8[1] = *a1;
    v8[2] = v11;
    v12 = a1[3];
    v8[3] = a1[2];
    v8[4] = v12;
    aBlock[4] = sub_10001FBA8;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C22C;
    aBlock[3] = &unk_10002E460;
    v13 = _Block_copy(aBlock);
    sub_10000B394(a1, v20);
    sub_1000207F4();
    *&v20[0] = &_swiftEmptyArrayStorage;
    sub_10001FF18(&qword_100031ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000239C(&unk_100032170, &qword_100023610);
    sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610, &protocol conformance descriptor for [A]);
    sub_100020A54();
    v14 = v17;
    sub_1000209D4();
    _Block_release(v13);

    (*(v19 + 8))(v4, v2);
    (*(v18 + 8))(v7, v5);
  }

  else
  {
    v20[0] = a1[7];
    LOBYTE(aBlock[0]) = 0;
    sub_100020724();
  }
}

void *sub_10001D654()
{
  v1 = sub_100020544();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13[0] = v0[6];
  sub_10000239C(&qword_100032438, &qword_100023E38);
  result = sub_100020714();
  if (v15 == 1)
  {
    v15 = v0[7];
    v13[0] = v0[7];
    v16 = *(&v15 + 1);
    sub_10000B994(&v16, &v14, &qword_100032440, &qword_100023E40);
    sub_100020714();
    if (v14)
    {
      return sub_100002494(&v15, &qword_100032438, &qword_100023E38);
    }

    else
    {
      v13[0] = v15;
      LOBYTE(v14) = 1;
      sub_100020724();
      sub_100002494(&v15, &qword_100032438, &qword_100023E38);
      v13[0] = v0[2];
      v14 = 0x3FD0000000000000;
      sub_10000239C(&qword_100032448, &qword_100023E48);
      sub_100020724();
      v13[0] = v0[3];
      v14 = 0x3FDB851EB851EB85;
      sub_100020724();
      v13[0] = v0[4];
      v14 = 0x3FE3851EB851EB85;
      sub_100020724();
      v13[0] = v0[5];
      v14 = 0x3FF0000000000000;
      sub_100020724();
      sub_1000207A4();
      sub_100020794();

      __chkstk_darwin(v6);
      *&v12[-16] = v0;
      v7 = swift_allocObject();
      v8 = v0[5];
      v7[5] = v0[4];
      v7[6] = v8;
      v9 = v0[7];
      v7[7] = v0[6];
      v7[8] = v9;
      v10 = v0[1];
      v7[1] = *v0;
      v7[2] = v10;
      v11 = v0[3];
      v7[3] = v0[2];
      v7[4] = v11;
      sub_10000B394(v0, v13);
      sub_100020534();
      sub_100020374();

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

uint64_t sub_10001D994()
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020724();
  sub_100020724();
  sub_100020724();
  sub_100020724();
}

uint64_t sub_10001DAF0(_OWORD *a1)
{
  v2 = sub_1000207E4();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100020804();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v20 = a1[6];
  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020714();
  if (LOBYTE(aBlock[0]) == 1 && (swift_getKeyPath(), swift_getKeyPath(), sub_100020124(), , , v20[0] == 1))
  {
    *v20 = a1[5];
    aBlock[0] = 0x3FF0000000000000;
    sub_10000239C(&qword_100032448, &qword_100023E48);
    sub_100020724();
    *v20 = a1[7];
    LOBYTE(aBlock[0]) = 0;
    sub_100020724();
    sub_10000F08C();
    v17 = sub_1000209C4();
    v8 = swift_allocObject();
    v9 = a1[5];
    v8[5] = a1[4];
    v8[6] = v9;
    v10 = a1[7];
    v8[7] = a1[6];
    v8[8] = v10;
    v11 = a1[1];
    v8[1] = *a1;
    v8[2] = v11;
    v12 = a1[3];
    v8[3] = a1[2];
    v8[4] = v12;
    aBlock[4] = sub_10001FC88;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C22C;
    aBlock[3] = &unk_10002E4D8;
    v13 = _Block_copy(aBlock);
    sub_10000B394(a1, v20);
    sub_1000207F4();
    *v20 = &_swiftEmptyArrayStorage;
    sub_10001FF18(&qword_100031ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000239C(&unk_100032170, &qword_100023610);
    sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610, &protocol conformance descriptor for [A]);
    sub_100020A54();
    v14 = v17;
    sub_1000209D4();
    _Block_release(v13);

    (*(v19 + 8))(v4, v2);
    (*(v18 + 8))(v7, v5);
  }

  else
  {
    *v20 = a1[7];
    LOBYTE(aBlock[0]) = 0;
    sub_100020724();
  }
}

uint64_t sub_10001DF8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a3(isCurrentExecutor);
}

uint64_t sub_10001E040@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000239C(&qword_1000323F8, &qword_100023DA8);
  __chkstk_darwin(v4);
  v6 = &v39[-v5 - 8];
  *v6 = sub_100020774();
  v6[1] = v7;
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = v6 + *(sub_10000239C(&qword_100032400, &qword_100023DB0) + 44);
  sub_10001E4F0(v1, v8);
  v9 = [objc_opt_self() systemBackgroundColor];
  sub_1000206D4();
  v10 = sub_1000206C4();

  *(v8 + *(sub_10000239C(&qword_100032408, &qword_100023DB8) + 36)) = v10;
  if (qword_1000315C0 != -1)
  {
    swift_once();
  }

  v11 = qword_100032D40;
  sub_1000206D4();
  v12 = sub_1000206C4();

  v13 = (v8 + *(sub_10000239C(&qword_100032410, &qword_100023DC0) + 36));
  *v13 = v12;
  v13[1] = 0x4044000000000000;
  v13[2] = 0;
  v13[3] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  v40 = v39[0];
  v14 = swift_allocObject();
  v15 = v1[5];
  v14[5] = v1[4];
  v14[6] = v15;
  v16 = v1[7];
  v14[7] = v1[6];
  v14[8] = v16;
  v17 = v1[1];
  v14[1] = *v1;
  v14[2] = v17;
  v18 = v1[3];
  v14[3] = v1[2];
  v14[4] = v18;
  sub_10000B394(v1, v39);
  sub_10000BB0C(&qword_100032418, &qword_1000323F8, &qword_100023DA8, &protocol conformance descriptor for ZStack<A>);
  sub_100020694();

  sub_100002494(v6, &qword_1000323F8, &qword_100023DA8);
  v19 = swift_allocObject();
  v20 = v2[5];
  *(v19 + 5) = v2[4];
  *(v19 + 6) = v20;
  v21 = v2[7];
  *(v19 + 7) = v2[6];
  *(v19 + 8) = v21;
  v22 = v2[1];
  *(v19 + 1) = *v2;
  *(v19 + 2) = v22;
  v23 = v2[3];
  *(v19 + 3) = v2[2];
  *(v19 + 4) = v23;
  v24 = (a1 + *(sub_10000239C(&qword_100032420, &qword_100023E10) + 36));
  *v24 = sub_10001FAE0;
  v24[1] = v19;
  v24[2] = 0;
  v24[3] = 0;
  v25 = swift_allocObject();
  v26 = v2[5];
  v25[5] = v2[4];
  v25[6] = v26;
  v27 = v2[7];
  v25[7] = v2[6];
  v25[8] = v27;
  v28 = v2[1];
  v25[1] = *v2;
  v25[2] = v28;
  v29 = v2[3];
  v25[3] = v2[2];
  v25[4] = v29;
  v30 = (a1 + *(sub_10000239C(&qword_100032428, &qword_100023E18) + 36));
  *v30 = 0;
  v30[1] = 0;
  v30[2] = sub_10001FAE8;
  v30[3] = v25;
  v31 = swift_allocObject();
  v32 = v2[5];
  v31[5] = v2[4];
  v31[6] = v32;
  v33 = v2[7];
  v31[7] = v2[6];
  v31[8] = v33;
  v34 = v2[1];
  v31[1] = *v2;
  v31[2] = v34;
  v35 = v2[3];
  v31[3] = v2[2];
  v31[4] = v35;
  v36 = (a1 + *(sub_10000239C(&qword_100032430, &qword_100023E30) + 36));
  sub_100020364();
  sub_10000B394(v2, v39);
  sub_10000B394(v2, v39);
  sub_10000B394(v2, v39);
  result = sub_100020924();
  *v36 = &unk_100023E28;
  v36[1] = v31;
  return result;
}

uint64_t sub_10001E4F0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032450, &qword_100023E50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v42 - v8);
  v10 = sub_10000239C(&qword_100032458, &qword_100023E58);
  v11 = __chkstk_darwin(v10 - 8);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v45 = &v42 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = (&v42 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = (&v42 - v22);
  __chkstk_darwin(v21);
  v25 = (&v42 - v24);
  sub_100020914();
  v46 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = v25;
  *v25 = sub_100020774();
  v25[1] = v27;
  v28 = sub_10000239C(&qword_100032460, &qword_100023E60);
  v29 = v25 + *(v28 + 44);
  v44 = v25;
  sub_10001E938(a1, v29);
  *v9 = sub_100020774();
  v9[1] = v30;
  v31 = sub_10000239C(&qword_100032468, &qword_100023E68);
  sub_10001EC34(a1, v9 + *(v31 + 44));
  v32 = v23;
  *v23 = sub_100020774();
  v23[1] = v33;
  sub_10001EFAC(a1, v23 + *(v28 + 44));
  *v20 = sub_100020774();
  v20[1] = v34;
  sub_10001F308(a1, v20 + *(v28 + 44));
  sub_10000B994(v26, v17, &qword_100032458, &qword_100023E58);
  v35 = v17;
  v43 = v17;
  sub_10000B994(v9, v7, &qword_100032450, &qword_100023E50);
  v36 = v23;
  v37 = v45;
  sub_10000B994(v36, v45, &qword_100032458, &qword_100023E58);
  v38 = v47;
  sub_10000B994(v20, v47, &qword_100032458, &qword_100023E58);
  sub_10000B994(v35, a2, &qword_100032458, &qword_100023E58);
  v39 = v7;
  v40 = sub_10000239C(&qword_100032470, &qword_100023E70);
  sub_10000B994(v39, a2 + v40[12], &qword_100032450, &qword_100023E50);
  sub_10000B994(v37, a2 + v40[16], &qword_100032458, &qword_100023E58);
  sub_10000B994(v38, a2 + v40[20], &qword_100032458, &qword_100023E58);
  sub_100002494(v20, &qword_100032458, &qword_100023E58);
  sub_100002494(v32, &qword_100032458, &qword_100023E58);
  sub_100002494(v9, &qword_100032450, &qword_100023E50);
  sub_100002494(v44, &qword_100032458, &qword_100023E58);
  sub_100002494(v38, &qword_100032458, &qword_100023E58);
  sub_100002494(v37, &qword_100032458, &qword_100023E58);
  sub_100002494(v39, &qword_100032450, &qword_100023E50);
  sub_100002494(v43, &qword_100032458, &qword_100023E58);
}

uint64_t sub_10001E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032478, &qword_100023E78);
  v5 = __chkstk_darwin(v4);
  v29 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100020914();
  v28 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = *(a1 + 16);
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020714();
  v36 = *(a1 + 16);
  sub_100020714();
  sub_100020774();
  sub_100020344();
  v27 = v30;
  v26 = v31;
  v25 = v32;
  v24 = v33;
  v22 = v35;
  v23 = v34;
  sub_100020774();
  sub_100020344();
  v9 = v36;
  v10 = BYTE8(v36);
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = *(v4 + 36);
  v16 = enum case for BlendMode.destinationOut(_:);
  v17 = sub_1000207C4();
  (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
  *v8 = v9;
  v8[8] = v10;
  *(v8 + 2) = v11;
  v8[24] = v12;
  *(v8 + 4) = v13;
  *(v8 + 5) = v14;
  v18 = v29;
  sub_10000B994(v8, v29, &qword_100032478, &qword_100023E78);
  *a2 = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v25;
  *(a2 + 24) = v24;
  v19 = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v19;
  v20 = sub_10000239C(&qword_100032480, &qword_100023E80);
  sub_10000B994(v18, a2 + *(v20 + 48), &qword_100032478, &qword_100023E78);
  sub_100002494(v8, &qword_100032478, &qword_100023E78);
  sub_100002494(v18, &qword_100032478, &qword_100023E78);
}

uint64_t sub_10001EC34@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032478, &qword_100023E78);
  v5 = __chkstk_darwin(v4);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_100020914();
  v29 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = a1[5];
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020714();
  v9 = v31;
  v37 = a1[1];
  sub_100020714();
  v37 = a1[4];
  sub_100020714();
  v37 = a1[1];
  sub_100020714();
  v37 = a1[4];
  sub_100020714();
  sub_100020774();
  sub_100020344();
  v28 = v31;
  v27 = v32;
  v26 = v33;
  v25 = v34;
  v24 = v35;
  v23 = v36;
  sub_100020774();
  sub_100020344();
  v10 = v37;
  v11 = BYTE8(v37);
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = *(v4 + 36);
  v17 = enum case for BlendMode.destinationOut(_:);
  v18 = sub_1000207C4();
  (*(*(v18 - 8) + 104))(&v8[v16], v17, v18);
  *v8 = v10;
  v8[8] = v11;
  *(v8 + 2) = v12;
  v8[24] = v13;
  *(v8 + 4) = v14;
  *(v8 + 5) = v15;
  v19 = v30;
  sub_10000B994(v8, v30, &qword_100032478, &qword_100023E78);
  *a2 = v9;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27;
  *(a2 + 24) = v26;
  *(a2 + 32) = v25;
  v20 = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v20;
  v21 = sub_10000239C(&qword_100032488, &qword_100023E88);
  sub_10000B994(v19, a2 + *(v21 + 48), &qword_100032478, &qword_100023E78);
  sub_100002494(v8, &qword_100032478, &qword_100023E78);
  sub_100002494(v19, &qword_100032478, &qword_100023E78);
}

uint64_t sub_10001EFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032478, &qword_100023E78);
  v5 = __chkstk_darwin(v4);
  v29 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100020914();
  v28 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = *(a1 + 16);
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020714();
  v36 = *(a1 + 48);
  sub_100020714();
  v36 = *(a1 + 16);
  sub_100020714();
  v36 = *(a1 + 48);
  sub_100020714();
  sub_100020774();
  sub_100020344();
  v27 = v30;
  v26 = v31;
  v25 = v32;
  v24 = v33;
  v23 = v34;
  v22 = v35;
  sub_100020774();
  sub_100020344();
  v9 = v36;
  v10 = BYTE8(v36);
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = *(v4 + 36);
  v16 = enum case for BlendMode.destinationOut(_:);
  v17 = sub_1000207C4();
  (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
  *v8 = v9;
  v8[8] = v10;
  *(v8 + 2) = v11;
  v8[24] = v12;
  *(v8 + 4) = v13;
  *(v8 + 5) = v14;
  v18 = v29;
  sub_10000B994(v8, v29, &qword_100032478, &qword_100023E78);
  *a2 = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v25;
  *(a2 + 24) = v24;
  v19 = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v19;
  v20 = sub_10000239C(&qword_100032480, &qword_100023E80);
  sub_10000B994(v18, a2 + *(v20 + 48), &qword_100032478, &qword_100023E78);
  sub_100002494(v8, &qword_100032478, &qword_100023E78);
  sub_100002494(v18, &qword_100032478, &qword_100023E78);
}

uint64_t sub_10001F308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000239C(&qword_100032478, &qword_100023E78);
  v5 = __chkstk_darwin(v4);
  v29 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100020914();
  v28 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = *(a1 + 16);
  sub_10000239C(&qword_100032448, &qword_100023E48);
  sub_100020714();
  v36 = *(a1 + 32);
  sub_100020714();
  v36 = *(a1 + 16);
  sub_100020714();
  v36 = *(a1 + 32);
  sub_100020714();
  sub_100020774();
  sub_100020344();
  v27 = v30;
  v26 = v31;
  v25 = v32;
  v24 = v33;
  v23 = v34;
  v22 = v35;
  sub_100020774();
  sub_100020344();
  v9 = v36;
  v10 = BYTE8(v36);
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = *(v4 + 36);
  v16 = enum case for BlendMode.destinationOut(_:);
  v17 = sub_1000207C4();
  (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
  *v8 = v9;
  v8[8] = v10;
  *(v8 + 2) = v11;
  v8[24] = v12;
  *(v8 + 4) = v13;
  *(v8 + 5) = v14;
  v18 = v29;
  sub_10000B994(v8, v29, &qword_100032478, &qword_100023E78);
  *a2 = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v25;
  *(a2 + 24) = v24;
  v19 = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v19;
  v20 = sub_10000239C(&qword_100032480, &qword_100023E80);
  sub_10000B994(v18, a2 + *(v20 + 48), &qword_100032478, &qword_100023E78);
  sub_100002494(v8, &qword_100032478, &qword_100023E78);
  sub_100002494(v18, &qword_100032478, &qword_100023E78);
}

uint64_t sub_10001F664(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020724();
  sub_100020714();
}

uint64_t sub_10001F7BC(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020724();
  sub_10001CD24();
}

uint64_t sub_10001F88C(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020724();
}

uint64_t sub_10001F950(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_100020914();
  *(v1 + 40) = sub_100020904();
  v3 = sub_1000208F4();

  return _swift_task_switch(sub_10001F9E8, v3, v2);
}

uint64_t sub_10001F9E8()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 96);
  *(v0 + 48) = 1;
  sub_10000239C(&qword_100032438, &qword_100023E38);
  sub_100020724();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001FAF0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000CFE4;

  return sub_10001F950(v0 + 16);
}

uint64_t sub_10001FBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FC18()
{

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_10001FCC0()
{
  result = qword_100032490;
  if (!qword_100032490)
  {
    sub_100002678(&qword_100032430, &qword_100023E30);
    sub_10001FD7C();
    sub_10001FF18(&qword_1000324A8, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032490);
  }

  return result;
}

unint64_t sub_10001FD7C()
{
  result = qword_100032498;
  if (!qword_100032498)
  {
    sub_100002678(&qword_100032428, &qword_100023E18);
    sub_10001FE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032498);
  }

  return result;
}

unint64_t sub_10001FE08()
{
  result = qword_1000324A0;
  if (!qword_1000324A0)
  {
    sub_100002678(&qword_100032420, &qword_100023E10);
    sub_100002678(&qword_1000323F8, &qword_100023DA8);
    sub_10000BB0C(&qword_100032418, &qword_1000323F8, &qword_100023DA8, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000324A0);
  }

  return result;
}

uint64_t sub_10001FF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10001FF84(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001FF98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_10001FFE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100020028(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}