void sub_100001968(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  v5 = @"com.apple.printcenter.unknown";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v9 = [*(a1 + 32) topLevelTemporaryDirectoryURL];
  v7 = [v9 URLByAppendingPathComponent:v6 isDirectory:1];

  v8 = qword_100014C20;
  qword_100014C20 = v7;
}

id sub_100001A24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [qword_100014C20 path];
  [v2 configureFileProtectionAtPath:v3];

  [*(a1 + 32) configureBackupFlagAtURL:qword_100014C20];
  v4 = *(a1 + 32);
  v5 = qword_100014C20;

  return [v4 markDirectoryAsPurgeableAtURL:v5];
}

id sub_100001FCC(uint64_t a1)
{
  [*(a1 + 32) configureTemporaryDirectoryProtectionIfNecessary];
  v2 = *(a1 + 32);

  return [v2 configureBackupFlagIfNecessary];
}

void sub_1000021B4(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeItemAtURL:*(*(&v7 + 1) + 8 * v6) error:{0, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

uint64_t sub_100002C70@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100002CB8(uint64_t a1)
{
  v2 = sub_100002ED0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002CF4(uint64_t a1)
{
  v2 = sub_100002ED0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002D30(void *a1)
{
  v2 = sub_100002E44(&qword_100014AE8, &qword_10000A940);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100002E8C(a1, a1[3]);
  sub_100002ED0();
  sub_1000099B0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100002E44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100002E8C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002ED0()
{
  result = qword_100014C40;
  if (!qword_100014C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014C40);
  }

  return result;
}

uint64_t sub_100002F50(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002FCC()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_100002FFC(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_100003054()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100003084(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_10000310C()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_10000313C(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_100003224()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_100003254(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t sub_1000032AC()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_1000032DC(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

unint64_t sub_100003334(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x537265746E697270;
    v6 = 0x617453726F727265;
    if (a1 != 8)
    {
      v6 = 0x6567616D49626F6ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x50746E6572727563;
    if (a1 != 5)
    {
      v7 = 0x72676F7250626F6ALL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4449626F6ALL;
    v2 = 0x656C746954626F6ALL;
    v3 = 0x73656761506D756ELL;
    if (a1 != 3)
    {
      v3 = 0x4E7265746E697270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1000034BC()
{
  v1 = *v0;
  sub_100009960();
  sub_100009970(v1);
  return sub_100009990();
}

Swift::Int sub_100003530(uint64_t a1)
{
  v2 = *v1;
  sub_100009960();
  sub_100009970(v2);
  return sub_100009990();
}

uint64_t sub_10000357C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100003F24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000035B0(uint64_t a1)
{
  v2 = sub_1000043B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000035EC(uint64_t a1)
{
  v2 = sub_1000043B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000362C(void *a1)
{
  v3 = sub_100002E44(&qword_100014AF0, &qword_10000A948);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100002E8C(a1, a1[3]);
  sub_1000043B0();
  sub_1000099B0();
  v8[15] = 0;
  sub_100009910();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1000098F0();
  v8[13] = 2;
  sub_1000098F0();
  v8[12] = 3;
  sub_100009910();
  v8[11] = 4;
  sub_1000098F0();
  v8[10] = 5;
  sub_100009910();
  v8[9] = 6;
  sub_100009900();
  v8[8] = 7;
  sub_100009910();
  v8[7] = 8;
  sub_1000098F0();
  v8[6] = 9;
  sub_1000098F0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000038AC(uint64_t a1)
{
  sub_100009970(*v1);
  sub_1000097B0();
  sub_1000097B0();
  sub_100009970(*(v1 + 40));
  sub_1000097B0();
  sub_100009970(*(v1 + 64));
  v2 = *(v1 + 72);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_100009980(*&v2);
  sub_100009970(*(v1 + 80));
  sub_1000097B0();

  return sub_1000097B0();
}

Swift::Int sub_100003950()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  v7 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_100009960();
  sub_100009970(v1);
  sub_1000097B0();
  sub_1000097B0();
  sub_100009970(v2);
  sub_1000097B0();
  sub_100009970(v7);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  v5 = *(v0 + 80);
  sub_100009980(*&v4);
  sub_100009970(v5);
  sub_1000097B0();
  sub_1000097B0();
  return sub_100009990();
}

double sub_100003A74@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100004404(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_100003ADC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a11;
  *(a9 + 72) = a10;
  *(a9 + 80) = a12;
  *(a9 + 96) = a13;
  *(a9 + 112) = a14;
  return result;
}

Swift::Int sub_100003B30(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v8 = *(v1 + 80);
  sub_100009960();
  sub_100009970(v2);
  sub_1000097B0();
  sub_1000097B0();
  sub_100009970(v3);
  sub_1000097B0();
  sub_100009970(v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  sub_100009980(*&v6);
  sub_100009970(v8);
  sub_1000097B0();
  sub_1000097B0();
  return sub_100009990();
}

uint64_t sub_100003C4C(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_10000426C(v12, v14) & 1;
}

uint64_t sub_100003CD0()
{
  v0 = sub_100009630();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009600();
  v4 = sub_100009640();
  v6 = v5;
  v7 = objc_allocWithZone(UIImage);
  sub_100004994(v4, v6);
  isa = sub_100009650().super.isa;
  v9 = [v7 initWithData:isa];

  sub_1000049E8(v4, v6);
  if (v9)
  {
    v10 = sub_100009730();
    sub_1000049E8(v4, v6);
    (*(v1 + 8))(v3, v0);
    return v10;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    sub_1000049E8(v4, v6);
    return sub_100009740();
  }
}

uint64_t sub_100003F24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449626F6ALL && a2 == 0xE500000000000000;
  if (v4 || (sub_100009930() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000B0C0 == a2 || (sub_100009930() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (sub_100009930() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656761506D756ELL && a2 == 0xE800000000000000 || (sub_100009930() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E7265746E697270 && a2 == 0xEB00000000656D61 || (sub_100009930() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50746E6572727563 && a2 == 0xEB00000000656761 || (sub_100009930() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72676F7250626F6ALL && a2 == 0xEB00000000737365 || (sub_100009930() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x537265746E697270 && a2 == 0xEC00000065746174 || (sub_100009930() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617453726F727265 && a2 == 0xEB00000000737574 || (sub_100009930() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6567616D49626F6ALL && a2 == 0xEC00000068746150)
  {

    return 9;
  }

  else
  {
    v6 = sub_100009930();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_10000426C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_100009930() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_100009930() & 1) == 0 || *(a1 + 40) != *(a2 + 40) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_100009930() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (sub_100009930() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112))
  {
    return 1;
  }

  return sub_100009930();
}

unint64_t sub_1000043B0()
{
  result = qword_100014C48[0];
  if (!qword_100014C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014C48);
  }

  return result;
}

uint64_t sub_100004404@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002E44(&qword_100014B30, qword_10000ACF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_100002E8C(a1, a1[3]);
  sub_1000043B0();
  sub_1000099A0();
  if (v2)
  {
    return sub_100002F50(a1);
  }

  LOBYTE(v47[0]) = 0;
  v9 = sub_1000098E0();
  LOBYTE(v47[0]) = 1;
  v36 = sub_1000098C0();
  v38 = v10;
  LOBYTE(v47[0]) = 2;
  v11 = sub_1000098C0();
  v37 = v12;
  v34 = v11;
  LOBYTE(v47[0]) = 3;
  v33 = sub_1000098E0();
  LOBYTE(v47[0]) = 4;
  v32 = sub_1000098C0();
  v35 = v13;
  LOBYTE(v47[0]) = 5;
  v31 = sub_1000098E0();
  LOBYTE(v47[0]) = 6;
  sub_1000098D0();
  v15 = v14;
  LOBYTE(v47[0]) = 7;
  v29 = sub_1000098E0();
  LOBYTE(v47[0]) = 8;
  v28 = sub_1000098C0();
  v30 = v16;
  v48 = 9;
  v17 = sub_1000098C0();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  *&v39 = v9;
  *(&v39 + 1) = v36;
  v20 = v38;
  *&v40 = v38;
  *(&v40 + 1) = v34;
  v21 = v37;
  *&v41 = v37;
  *(&v41 + 1) = v33;
  *&v42 = v32;
  v22 = v35;
  *(&v42 + 1) = v35;
  *&v43 = v31;
  *(&v43 + 1) = v15;
  *&v44 = v29;
  *(&v44 + 1) = v28;
  *&v45 = v30;
  *(&v45 + 1) = v17;
  v46 = v19;
  sub_100005074(&v39, v47);
  sub_100002F50(a1);
  v47[0] = v9;
  v47[1] = v36;
  v47[2] = v20;
  v47[3] = v34;
  v47[4] = v21;
  v47[5] = v33;
  v47[6] = v32;
  v47[7] = v22;
  v47[8] = v31;
  v47[9] = v15;
  v47[10] = v29;
  v47[11] = v28;
  v47[12] = v30;
  v47[13] = v17;
  v47[14] = v19;
  result = sub_1000050AC(v47);
  v24 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v24;
  *(a2 + 96) = v45;
  *(a2 + 112) = v46;
  v25 = v40;
  *a2 = v39;
  *(a2 + 16) = v25;
  v26 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v26;
  return result;
}

void sub_100004994(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1000049E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100004A40()
{
  result = qword_100014B00;
  if (!qword_100014B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B00);
  }

  return result;
}

unint64_t sub_100004A98()
{
  result = qword_100014B08;
  if (!qword_100014B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B08);
  }

  return result;
}

unint64_t sub_100004AF0()
{
  result = qword_100014B10;
  if (!qword_100014B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B10);
  }

  return result;
}

unint64_t sub_100004B48()
{
  result = qword_100014B18;
  if (!qword_100014B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B18);
  }

  return result;
}

unint64_t sub_100004BA0()
{
  result = qword_100014B20;
  if (!qword_100014B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B20);
  }

  return result;
}

unint64_t sub_100004BF8()
{
  result = qword_100014B28;
  if (!qword_100014B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B28);
  }

  return result;
}

__n128 sub_100004C5C(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100004C88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100004CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrintJobState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrintJobState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100004EC0()
{
  result = qword_1000151D0[0];
  if (!qword_1000151D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000151D0);
  }

  return result;
}

unint64_t sub_100004F18()
{
  result = qword_1000152E0;
  if (!qword_1000152E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000152E0);
  }

  return result;
}

unint64_t sub_100004F70()
{
  result = qword_1000152E8[0];
  if (!qword_1000152E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000152E8);
  }

  return result;
}

unint64_t sub_100004FC8()
{
  result = qword_100015370;
  if (!qword_100015370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015370);
  }

  return result;
}

unint64_t sub_100005020()
{
  result = qword_100015378[0];
  if (!qword_100015378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100015378);
  }

  return result;
}

uint64_t sub_1000050F0()
{
  v1 = (v0 + OBJC_IVAR___PrintActivityObject_jobImagePath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100005148(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PrintActivityObject_jobImagePath);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

Swift::Void __swiftcall PrintActivityObject.startPrintLiveActivity()()
{
  v1 = sub_1000096F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002E44(&qword_100014B40, &qword_10000AD30);
  __chkstk_darwin(v5 - 8);
  v7 = &v79 - v6;
  v8 = sub_100002E44(&qword_100014B48, &qword_10000AD38);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v79 - v11;
  v13 = OBJC_IVAR___PrintActivityObject_currentActivity;
  if (*&v0[OBJC_IVAR___PrintActivityObject_currentActivity])
  {
    return;
  }

  v87 = v10;
  v14 = [objc_opt_self() jobs];
  v83 = v9;
  v84 = v4;
  v79 = v13;
  if (v14)
  {
    v15 = v14;
    sub_10000846C(0, &qword_100014B70, PKJob_ptr);
    v16 = sub_1000097D0();
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  v17 = OBJC_IVAR___PrintActivityObject_pendingJobs;
  *&v0[OBJC_IVAR___PrintActivityObject_pendingJobs] = v16;

  v18 = sub_100005C64();
  v20 = v19;
  v21 = &v0[OBJC_IVAR___PrintActivityObject_jobImagePath];
  swift_beginAccess();
  *v21 = v18;
  v21[1] = v20;

  v22 = *&v0[v17];
  v89 = v0;
  v85 = v2;
  v86 = v1;
  v81 = v7;
  v82 = v12;
  if (v22 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000098B0())
  {

    if (i)
    {
      v24 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = sub_100009890();
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (sub_1000090C8())
        {

          v88 = [v26 printer];

          goto LABEL_19;
        }

        ++v24;
        if (v27 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_17:

    v88 = 0;
LABEL_19:
    nullsub_1();
    v22 = *&v89[v17];
    v28 = v22 >> 62 ? sub_1000098B0() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v28)
    {
      break;
    }

    v29 = 0;
    v17 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v17)
      {
        v30 = sub_100009890();
      }

      else
      {
        if (v29 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v30 = *(v22 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (sub_1000090C8())
      {

        v44 = v31;
        v45 = sub_100009234();

        v46 = v45;
        v47 = v44;
        v48 = sub_100009288();

        v34 = v46 / v48;
        v80 = [v47 localJobID];
        v49 = v47;
        v33 = sub_100009120();
        v35 = v50;
        v36 = sub_100009234();

        v37 = v88;
        if (v88)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }

      ++v29;
      if (v32 == v28)
      {
        goto LABEL_31;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_31:

  v33 = 0;
  v80 = 0;
  v31 = 0;
  v34 = 1.0;
  v35 = 0xE000000000000000;
  v36 = 1;
  v37 = v88;
  if (v88)
  {
LABEL_32:
    v38 = [v37 displayName];
    v39 = sub_100009790();
    v41 = v40;

    if (v31)
    {
      goto LABEL_33;
    }

LABEL_36:
    v43 = 1;
  }

  else
  {
LABEL_35:
    v39 = 0;
    v41 = 0xE000000000000000;
    if (!v31)
    {
      goto LABEL_36;
    }

LABEL_33:
    v42 = v31;
    v43 = sub_100009288();
  }

  v51 = *v21;

  *(&v78 + 1) = v51;
  *&v78 = 0xE000000000000000;
  sub_100003ADC(v80, 0, 0xE000000000000000, v33, v35, v36, v39, v41, v98, v34, v43, 0, v78, v52);
  v80 = 0x800000010000B0E0;
  sub_100002E44(&qword_100014B60, &qword_10000AD40);
  v53 = sub_1000096A0();
  v54 = *(v53 - 8);
  v55 = *(v54 + 72);
  v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10000AD10;
  v58 = (v57 + v56);
  *v58 = 0xD000000000000015;
  v58[1] = 0x800000010000B0E0;
  v59 = *(v54 + 104);
  (v59)(v57 + v56, enum case for ActivityContentSource.Request.process(_:), v53);
  v60 = (v58 + v55);
  *v60 = 0xD000000000000022;
  v60[1] = 0x800000010000B100;
  v59();
  sub_100002E44(&qword_100014B68, &unk_10000AD48);
  v94 = v98[4];
  v95 = v98[5];
  v96 = v98[6];
  v97 = v99;
  v90 = v98[0];
  v91 = v98[1];
  v92 = v98[2];
  v93 = v98[3];
  v61 = sub_100009680();
  (*(*(v61 - 8) + 56))(v81, 1, 1, v61);
  sub_100004AF0();
  sub_100004B48();
  sub_100004BA0();
  v62 = v82;
  sub_100009700();
  sub_1000096D0();
  v63 = v84;
  sub_1000096E0();
  v64 = sub_100009690();

  (*(v85 + 8))(v63, v86);
  (*(v83 + 8))(v62, v87);
  v65 = v89;
  *&v89[v79] = v64;

  sub_100006210();
  v89 = objc_opt_self();
  v66 = [v89 defaultCenter];
  v67 = PKJobListNotification;
  v68 = swift_allocObject();
  *(v68 + 16) = v65;
  *&v92 = sub_100006504;
  *(&v92 + 1) = v68;
  *&v90 = _NSConcreteStackBlock;
  *(&v90 + 1) = 1107296256;
  *&v91 = sub_100006528;
  *(&v91 + 1) = &unk_100010A18;
  v69 = _Block_copy(&v90);
  v70 = v65;

  v71 = [v66 addObserverForName:v67 object:0 queue:0 usingBlock:v69];
  _Block_release(v69);
  swift_unknownObjectRelease();

  v72 = [v89 defaultCenter];
  v73 = PKJobProgressNotification;
  v74 = swift_allocObject();
  *(v74 + 16) = v70;
  *&v92 = sub_100006634;
  *(&v92 + 1) = v74;
  *&v90 = _NSConcreteStackBlock;
  *(&v90 + 1) = 1107296256;
  *&v91 = sub_100006528;
  *(&v91 + 1) = &unk_100010A68;
  v75 = _Block_copy(&v90);
  v76 = v70;

  v77 = [v72 addObserverForName:v73 object:0 queue:0 usingBlock:v75];
  _Block_release(v75);
  swift_unknownObjectRelease();
}

uint64_t sub_100005C64()
{
  v1 = sub_100009630();
  v36 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v33 - v6;
  v8 = OBJC_IVAR___PrintActivityObject_pendingJobs;
  v9 = *(v0 + OBJC_IVAR___PrintActivityObject_pendingJobs);
  v33 = v0;
  v34 = v5;
  if (v9 >> 62)
  {
LABEL_39:
    v10 = sub_1000098B0();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v7;

  if (v10)
  {
    v11 = 0;
    v7 = (v9 & 0xC000000000000001);
    while (1)
    {
      if (v7)
      {
        v12 = sub_100009890();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (sub_1000090C8())
      {
        break;
      }

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_13;
      }
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    sub_100009870(36);
    v37 = [v13 localJobID];
    v16 = sub_100009920();
    v18 = v17;

    v38 = v16;
    v39 = v18;
    v40._object = 0x800000010000B1E0;
    v40._countAndFlagsBits = 0xD000000000000022;
    sub_1000097C0(v40);
    v19 = objc_opt_self();
    v20 = sub_100009780();

    v21 = [v19 createTemporaryFileWithFilename:v20];

    if (!v21)
    {

      return 0;
    }

    sub_100009610();

    v22 = v34;
    (*(v36 + 32))(v35, v4, v34);
    v23 = *(v33 + v8);
    v8 = 0xD000000000000022;
    if (v23 >> 62)
    {
      v4 = sub_1000098B0();
    }

    else
    {
      v4 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      v9 = 0;
      v7 = (v23 & 0xC000000000000001);
      do
      {
        if (v7)
        {
          v24 = sub_100009890();
        }

        else
        {
          if (v9 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v24 = *(v23 + 8 * v9 + 32);
        }

        v25 = v24;
        v26 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_37;
        }

        if (sub_1000090C8())
        {

          v30 = [v25 thumbnailImage];

          v29 = v35;
          if (v30)
          {
            v27 = sub_100009660();
            v28 = v31;
          }

          else
          {
            v27 = 0;
            v28 = 0xC000000000000000;
          }

          goto LABEL_34;
        }

        ++v9;
      }

      while (v26 != v4);
    }

    v27 = 0;
    v28 = 0xC000000000000000;
    v29 = v35;
LABEL_34:
    sub_100009670();
    sub_1000049E8(v27, v28);
    v32 = sub_100009620();

    (*(v36 + 8))(v29, v22);
    return v32;
  }

  else
  {
LABEL_13:

    return 0;
  }
}

uint64_t sub_100006210()
{
  v1 = sub_100009750();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100009770();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR___PrintActivityObject_workQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100008F6C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000811C;
  aBlock[3] = &unk_100010B58;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_100009760();
  v14 = &_swiftEmptyArrayStorage;
  sub_10000900C(&qword_100014BE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002E44(&qword_100014BE8, &qword_10000ADF0);
  sub_100009054(&qword_100014BF0, &qword_100014BE8, &qword_10000ADF0);
  sub_100009860();
  sub_100009830();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_1000064CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006528(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000095E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1000095D0();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10000661C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100006658()
{
  v1 = sub_100002E44(&qword_100014B78, &qword_10000AD58);
  __chkstk_darwin(v1 - 8);
  v86 = &v75 - v2;
  v3 = sub_100002E44(&qword_100014B40, &qword_10000AD30);
  __chkstk_darwin(v3 - 8);
  v80 = &v75 - v4;
  v85 = sub_100002E44(&qword_100014B48, &qword_10000AD38);
  v84 = *(v85 - 8);
  v5 = __chkstk_darwin(v85);
  v82 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v6;
  __chkstk_darwin(v5);
  v83 = &v75 - v7;
  v87 = OBJC_IVAR___PrintActivityObject_pendingJobs;
  v8 = *(v0 + OBJC_IVAR___PrintActivityObject_pendingJobs);
  if (v8 >> 62)
  {
    goto LABEL_104;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000098B0())
  {

    if (!i)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_100009890();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_98;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v11 update];
      sub_10000846C(0, &qword_100014B70, PKJob_ptr);
      sub_100008D48();
      sub_100009710();
      sub_100009720();

      ++v10;
      if (v13 == i)
      {
        goto LABEL_12;
      }
    }

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
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    ;
  }

LABEL_12:

  v14 = v88;
  v8 = *(v88 + OBJC_IVAR___PrintActivityObject_currentActivity);
  if (v8)
  {
    v15 = *(v88 + v87);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }

    while (1)
    {
      v16 = sub_1000098B0();
LABEL_15:

      if (v16)
      {
        v17 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = sub_100009890();
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v18 = *(v15 + 8 * v17 + 32);
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }
          }

          v89 = v18;
          if (sub_1000090C8())
          {
            break;
          }

          ++v17;
          if (v19 == v16)
          {
            goto LABEL_26;
          }
        }

        v22 = v89;
        v23 = sub_100009234();

        v24 = v22;
        v25 = sub_100009288();

        v21 = v23 == 0;
        v20 = v25 == 0;
      }

      else
      {
LABEL_26:

        v89 = 0;
        v20 = 1;
        v21 = 1;
      }

      v26 = *(v14 + v87);
      v27 = v26 >> 62 ? sub_1000098B0() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v27)
      {
        break;
      }

LABEL_40:

      v32 = 0.0;
LABEL_42:
      v33 = *(v88 + v87);
      if (v33 >> 62)
      {
        v34 = sub_1000098B0();
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v34)
      {
        v35 = 0;
        do
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v36 = sub_100009890();
          }

          else
          {
            if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_103;
            }

            v36 = *(v33 + 8 * v35 + 32);
          }

          v37 = v36;
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_102;
          }

          if (sub_1000090C8())
          {

            v39 = sub_1000090F4();

            if (v39)
            {
              v32 = 1.0;
            }

            goto LABEL_57;
          }

          ++v35;
        }

        while (v38 != v34);
      }

LABEL_57:
      v14 = v88;
      if (!v89)
      {

        return;
      }

      if (v21 || v20)
      {

        v40 = v89;

        return;
      }

      v41 = [v89 localJobID];
      v42 = v89;
      v43 = sub_100009120();
      v45 = v44;

      v46 = v42;
      v47 = sub_100009234();

      v15 = *(v14 + v87);
      v89 = v43;
      v79 = v45;
      v78 = v41;
      v77 = v47;
      if (v15 >> 62)
      {
        v48 = sub_1000098B0();
      }

      else
      {
        v48 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v48)
      {
        v49 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v50 = sub_100009890();
          }

          else
          {
            if (v49 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_106;
            }

            v50 = *(v15 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (sub_1000090C8())
          {

            v53 = [v51 printer];

            v54 = [v53 displayName];
            v76 = sub_100009790();
            v75 = v55;

            goto LABEL_81;
          }

          ++v49;
          if (v52 == v48)
          {
            goto LABEL_79;
          }
        }

        __break(1u);
LABEL_106:
        __break(1u);
      }

      else
      {
LABEL_79:

        v76 = 0;
        v75 = 0xE000000000000000;
LABEL_81:
        v15 = *(v14 + v87);
        if (v15 >> 62)
        {
          v56 = sub_1000098B0();
        }

        else
        {
          v56 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v56)
        {
LABEL_93:

          v61 = 0;
LABEL_95:
          v62 = (v14 + OBJC_IVAR___PrintActivityObject_jobImagePath);
          swift_beginAccess();
          v63 = *v62;

          *(&v74 + 1) = v63;
          *&v74 = 0xE000000000000000;
          sub_100003ADC(v78, 0, 0xE000000000000000, v89, v79, v77, v76, v75, v90, v32, v61, 0, v74, v64);
          v65 = sub_100009680();
          (*(*(v65 - 8) + 56))(v80, 1, 1, v65);
          sub_100004AF0();
          sub_100004B48();
          sub_100004BA0();
          v66 = v83;
          sub_100009700();
          v67 = sub_100009800();
          v68 = v86;
          (*(*(v67 - 8) + 56))(v86, 1, 1, v67);
          v69 = v84;
          v70 = v82;
          v71 = v85;
          (*(v84 + 16))(v82, v66, v85);
          v72 = (*(v69 + 80) + 40) & ~*(v69 + 80);
          v73 = swift_allocObject();
          *(v73 + 2) = 0;
          *(v73 + 3) = 0;
          *(v73 + 4) = v8;
          (*(v69 + 32))(&v73[v72], v70, v71);

          sub_100007DE4(0, 0, v68, &unk_10000ADE8, v73);

          (*(v69 + 8))(v66, v71);
          return;
        }

        v57 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v58 = sub_100009890();
          }

          else
          {
            if (v57 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_108;
            }

            v58 = *(v15 + 8 * v57 + 32);
          }

          v59 = v58;
          v60 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (sub_1000090C8())
          {

            v61 = sub_100009288();

            goto LABEL_95;
          }

          ++v57;
          if (v60 == v56)
          {
            goto LABEL_93;
          }
        }
      }

      __break(1u);
LABEL_108:
      __break(1u);
    }

    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_100009890();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_100;
      }

      if (sub_1000090C8())
      {

        v32 = sub_100009304();

        goto LABEL_42;
      }

      ++v28;
      if (v31 == v27)
      {
        goto LABEL_40;
      }
    }
  }
}

Swift::Void __swiftcall PrintActivityObject.stopPrintLiveActivity()()
{
  v1 = sub_100002E44(&qword_100014B78, &qword_10000AD58);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v0];

  *&v0[OBJC_IVAR___PrintActivityObject_pendingJobs] = &_swiftEmptyArrayStorage;

  v5 = sub_100009800();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_100007DE4(0, 0, v3, &unk_10000AD68, v6);
}

uint64_t sub_1000072D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1000096C0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_100002E44(&qword_100014BD0, &qword_10000ADD8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000073F4, 0, 0);
}

uint64_t sub_1000073F4()
{
  v1 = v0[6];
  sub_100006658();
  v2 = *(v1 + OBJC_IVAR___PrintActivityObject_currentActivity);
  v0[11] = v2;
  if (v2)
  {
    v3 = v0[10];
    v4 = sub_100002E44(&qword_100014B48, &qword_10000AD38);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    sub_1000096B0();
    v5 = async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1000077A8;
    v7 = v0[9];
    v8 = v0[10];

    return ((&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + v5))(v8, v7);
  }

  else
  {
    v10 = v0[6];
    v11 = objc_opt_self();
    v12 = [v11 defaultManager];
    v13 = (v10 + OBJC_IVAR___PrintActivityObject_jobImagePath);
    swift_beginAccess();

    v14 = sub_100009780();

    v15 = [v12 fileExistsAtPath:v14];

    if (v15)
    {
      v16 = [v11 defaultManager];

      v17 = sub_100009780();

      v0[5] = 0;
      v18 = [v16 removeItemAtPath:v17 error:v0 + 5];

      v19 = v0[5];
      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v21 = v19;
        sub_1000095F0();

        swift_willThrow();
        sub_100002E44(&qword_100014AF8, qword_10000A950);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_10000A930;
        sub_100009870(33);

        v24 = *v13;
        v23 = v13[1];

        v27._countAndFlagsBits = v24;
        v27._object = v23;
        sub_1000097C0(v27);

        *(v22 + 56) = &type metadata for String;
        *(v22 + 32) = 0xD00000000000001FLL;
        *(v22 + 40) = 0x800000010000B1B0;
        sub_100009950();
      }
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1000077A8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);

  (*(v3 + 8))(v2, v4);
  sub_100008CE8(v1, &qword_100014BD0, &qword_10000ADD8);

  return _swift_task_switch(sub_10000797C, 0, 0);
}

uint64_t sub_10000797C()
{
  v1 = v0[6];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  v4 = (v1 + OBJC_IVAR___PrintActivityObject_jobImagePath);
  swift_beginAccess();

  v5 = sub_100009780();

  v6 = [v3 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [v2 defaultManager];

    v8 = sub_100009780();

    v0[5] = 0;
    v9 = [v7 removeItemAtPath:v8 error:v0 + 5];

    v10 = v0[5];
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v12 = v10;
      sub_1000095F0();

      swift_willThrow();
      sub_100002E44(&qword_100014AF8, qword_10000A950);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10000A930;
      sub_100009870(33);

      v15 = *v4;
      v14 = v4[1];

      v19._countAndFlagsBits = v15;
      v19._object = v14;
      sub_1000097C0(v19);

      *(v13 + 56) = &type metadata for String;
      *(v13 + 32) = 0xD00000000000001FLL;
      *(v13 + 40) = 0x800000010000B1B0;
      sub_100009950();
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100007C1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007C5C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007CF0;

  return sub_1000072D0(v3, v4, v5, v2);
}

uint64_t sub_100007CF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002E44(&qword_100014B78, &qword_10000AD58);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000088E0(a3, v25 - v10);
  v12 = sub_100009800();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008CE8(v11, &qword_100014B78, &qword_10000AD58);
  }

  else
  {
    sub_1000097F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000097E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000097A0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100008CE8(a3, &qword_100014B78, &qword_10000AD58);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008CE8(a3, &qword_100014B78, &qword_10000AD58);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000811C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100008160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (&async function pointer to dispatch thunk of Activity.update(_:) + async function pointer to dispatch thunk of Activity.update(_:));
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100007CF0;

  return v9(a5);
}

uint64_t variable initialization expression of PrintActivityObject.workQueue()
{
  v7 = sub_100009820();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009810();
  __chkstk_darwin(v3);
  v4 = sub_100009770();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10000846C(0, &qword_100014B80, OS_dispatch_queue_ptr);
  sub_100009760();
  v8 = &_swiftEmptyArrayStorage;
  sub_10000900C(&qword_100014B88, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100002E44(&qword_100014B90, &unk_10000AD70);
  sub_100009054(&qword_100014B98, &qword_100014B90, &unk_10000AD70);
  sub_100009860();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_100009840();
}

uint64_t sub_10000846C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000084B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id PrintActivityObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrintActivityObject.init()()
{
  ObjectType = swift_getObjectType();
  v11 = sub_100009820();
  v1 = *(v11 - 8);
  __chkstk_darwin(v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009810();
  __chkstk_darwin(v4);
  v5 = sub_100009770();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR___PrintActivityObject_currentActivity] = 0;
  *&v0[OBJC_IVAR___PrintActivityObject_pendingJobs] = &_swiftEmptyArrayStorage;
  v6 = &v0[OBJC_IVAR___PrintActivityObject_jobImagePath];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v10 = OBJC_IVAR___PrintActivityObject_workQueue;
  v7 = sub_10000846C(0, &qword_100014B80, OS_dispatch_queue_ptr);
  v9[0] = "v16@?0@NSNotification8";
  v9[1] = v7;
  sub_100009760();
  v14 = &_swiftEmptyArrayStorage;
  sub_10000900C(&qword_100014B88, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100002E44(&qword_100014B90, &unk_10000AD70);
  sub_100009054(&qword_100014B98, &qword_100014B90, &unk_10000AD70);
  sub_100009860();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v0[v10] = sub_100009840();
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

id PrintActivityObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000088E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E44(&qword_100014B78, &qword_10000AD58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008950(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008A48;

  return v6(a1);
}

uint64_t sub_100008A48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008B40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000090BC;

  return sub_100008950(a1, v4);
}

uint64_t sub_100008C30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007CF0;

  return sub_100008950(a1, v4);
}

uint64_t sub_100008CE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002E44(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100008D48()
{
  result = qword_100014BD8;
  if (!qword_100014BD8)
  {
    sub_10000846C(255, &qword_100014B70, PKJob_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014BD8);
  }

  return result;
}

uint64_t sub_100008DB0()
{
  v1 = sub_100002E44(&qword_100014B48, &qword_10000AD38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008E88()
{
  v2 = *(sub_100002E44(&qword_100014B48, &qword_10000AD38) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000090BC;

  return sub_100008160(v5, v6, v7, v4, v0 + v3);
}

void sub_100008F6C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() jobs];
  if (v2)
  {
    v3 = v2;
    sub_10000846C(0, &qword_100014B70, PKJob_ptr);
    v4 = sub_1000097D0();
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  *(v1 + OBJC_IVAR___PrintActivityObject_pendingJobs) = v4;

  sub_100006658();
}

uint64_t sub_10000900C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009054(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000084B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000912C()
{
  v1 = [v0 settings];
  v2 = [v1 objectForKey:PKCopiesKey];

  if (v2)
  {
    sub_100009850();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_10000846C(0, &unk_100014C10, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100009550(v8);
  }

  return 1;
}

uint64_t sub_100009234()
{
  v1 = [v0 mediaSheets];
  result = sub_10000912C();
  if (result)
  {
    if (v1 != 0x8000000000000000 || result != -1)
    {
      return v1 / result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100009288()
{
  result = [v0 mediaSheetsCompleted];
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if ((result + 1) <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = (result + 1);
    }

    if ([v0 mediaSheets] < 1)
    {
      return v2;
    }

    else
    {
      result = [v0 mediaSheets];
      if (result >= v2)
      {
        return v2;
      }
    }
  }

  return result;
}

double sub_100009304()
{
  v1 = 0.0;
  if ([v0 mediaSheets] >= 1)
  {
    v2 = 1.0 / [v0 mediaSheets];
    v3 = [v0 mediaSheetsCompleted];
    v4 = v3 / [v0 mediaSheets];
    v5 = [v0 mediaProgress];
    v6 = v4 + v2 * v5 / 100.0;
    if (v6 >= 0.0)
    {
      if (v6 <= 1.0)
      {
        return v4 + v2 * v5 / 100.0;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v1;
}

uint64_t sub_1000093D4(void *a1)
{
  v3 = [v1 settings];
  v4 = [v3 objectForKey:*a1];

  if (v4)
  {
    sub_100009850();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_100009550(v9);
  }

  return 0;
}

uint64_t sub_1000094AC@<X0>(uint64_t *a2@<X8>)
{
  sub_10000846C(0, &qword_100014B70, PKJob_ptr);
  result = sub_100009710();
  *a2 = result;
  return result;
}

uint64_t sub_1000094FC@<X0>(uint64_t *a2@<X8>)
{
  sub_10000846C(0, &qword_100014B70, PKJob_ptr);
  result = sub_100009880();
  *a2 = result;
  return result;
}

uint64_t sub_100009550(uint64_t a1)
{
  v2 = sub_100002E44(&qword_100014C08, qword_10000AE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}