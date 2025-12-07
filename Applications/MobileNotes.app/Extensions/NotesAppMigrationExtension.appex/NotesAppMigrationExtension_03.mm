unint64_t sub_100040BCC(uint64_t a1)
{
  *(a1 + 8) = sub_100040BFC();
  result = sub_100040C50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100040BFC()
{
  result = qword_1000A6540;
  if (!qword_1000A6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6540);
  }

  return result;
}

unint64_t sub_100040C50()
{
  result = qword_1000A6548;
  if (!qword_1000A6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6548);
  }

  return result;
}

unint64_t sub_100040CA4()
{
  result = qword_1000A6558;
  if (!qword_1000A6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6558);
  }

  return result;
}

unint64_t sub_100040CF8()
{
  result = qword_1000A6560;
  if (!qword_1000A6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6560);
  }

  return result;
}

unint64_t sub_100040D4C()
{
  result = qword_1000A6568;
  if (!qword_1000A6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6568);
  }

  return result;
}

uint64_t sub_100040DA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s3TagVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100040DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100086EF0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100040FF4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6598, &qword_10008CE70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10000626C(a1, a1[3]);
  sub_100040CA4();
  sub_100085A68();
  if (v2)
  {
    sub_100006304(a1);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_100041428();
    sub_100085828();
    v9 = LOBYTE(v33[0]);
    LOBYTE(v33[0]) = 1;
    v10 = sub_1000857E8();
    v12 = v11;
    v27 = v10;
    LOBYTE(v33[0]) = 2;
    v26 = sub_100085798();
    v28 = v13;
    LOBYTE(v29) = 3;
    sub_10004147C();
    sub_1000857D8();
    v25 = LOBYTE(v33[0]);
    sub_100005740(&qword_1000A6570, &qword_10008CE60);
    LOBYTE(v29) = 4;
    sub_1000414D0(&qword_1000A65B0, &qword_1000A65B8, &unk_10008E484, &protocol conformance descriptor for <> Set<A>);
    sub_1000857D8();
    v24 = v9;
    v14 = v33[0];
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    v37[0] = 5;
    sub_100041558(&qword_1000A65C0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000857D8();
    (*(v6 + 8))(v8, v5);
    v23 = v38;
    v15 = v24;
    LOBYTE(v29) = v24;
    v17 = v26;
    v16 = v27;
    *(&v29 + 1) = v27;
    *&v30 = v12;
    v18 = v28;
    *(&v30 + 1) = v26;
    *&v31 = v28;
    BYTE8(v31) = v25;
    *&v32 = v14;
    *(&v32 + 1) = v38;
    sub_100040A2C(&v29, v33);
    sub_100006304(a1);
    LOBYTE(v33[0]) = v15;
    v33[1] = v16;
    v33[2] = v12;
    v33[3] = v17;
    v33[4] = v18;
    v34 = v25;
    v35 = v14;
    v36 = v23;
    result = sub_100040A64(v33);
    v20 = v30;
    *a2 = v29;
    a2[1] = v20;
    v21 = v32;
    a2[2] = v31;
    a2[3] = v21;
  }

  return result;
}

unint64_t sub_100041428()
{
  result = qword_1000A65A0;
  if (!qword_1000A65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65A0);
  }

  return result;
}

unint64_t sub_10004147C()
{
  result = qword_1000A65A8;
  if (!qword_1000A65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65A8);
  }

  return result;
}

uint64_t sub_1000414D0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6570, &qword_10008CE60);
    sub_100040DA0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041558(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6588, &qword_10008CE68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICAccountArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICAccountArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004172C()
{
  result = qword_1000A65C8;
  if (!qword_1000A65C8)
  {
    sub_100011888(&qword_1000A65D0, &qword_10008CED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65C8);
  }

  return result;
}

unint64_t sub_100041794()
{
  result = qword_1000A65D8;
  if (!qword_1000A65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65D8);
  }

  return result;
}

unint64_t sub_1000417EC()
{
  result = qword_1000A65E0;
  if (!qword_1000A65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65E0);
  }

  return result;
}

unint64_t sub_100041844()
{
  result = qword_1000A65E8;
  if (!qword_1000A65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65E8);
  }

  return result;
}

unint64_t sub_10004189C()
{
  result = qword_1000A65F0;
  if (!qword_1000A65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65F0);
  }

  return result;
}

unint64_t sub_1000418F0()
{
  result = qword_1000A65F8;
  if (!qword_1000A65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65F8);
  }

  return result;
}

unint64_t sub_100041944()
{
  result = qword_1000A6600;
  if (!qword_1000A6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6600);
  }

  return result;
}

uint64_t static ICArchiveImporter.Configuration.default.getter@<X0>(uint64_t a2@<X8>)
{
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  result = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  *a2 = IsAlexandriaDemoModeEnabled;
  *(a2 + 1) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 32) = 2;
  return result;
}

uint64_t sub_1000419DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1413891404;
    }

    else
    {
      v3 = 0x5448474952;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1314344772;
    }

    else
    {
      v3 = 20565;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 20565;
  v7 = 0xE400000000000000;
  v8 = 1413891404;
  if (a2 != 2)
  {
    v8 = 0x5448474952;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v6 = 1314344772;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100085948();
  }

  return v11 & 1;
}

uint64_t sub_100041AF0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x524F4C4F43;
    }

    else
    {
      v2 = 0x4F544F4850;
    }

    v3 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x4C41435359415247;
    v3 = 0xE900000000000045;
  }

  else if (a1 == 3)
  {
    v2 = 0x4E415F4B43414C42;
    v3 = 0xEF45544948575F44;
  }

  else
  {
    v2 = 0x414F424554494857;
    v3 = 0xEA00000000004452;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x524F4C4F43;
    }

    else
    {
      v8 = 0x4F544F4850;
    }

    v7 = 0xE500000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x4E415F4B43414C42;
    v5 = 0xEF45544948575F44;
    if (a2 != 3)
    {
      v4 = 0x414F424554494857;
      v5 = 0xEA00000000004452;
    }

    if (a2 == 2)
    {
      v6 = 0x4C41435359415247;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE900000000000045;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_100085948();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_100041C98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1162760014;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0x4C5F4D554944454DLL;
  v6 = 0xEC00000053454E49;
  if (a1 != 5)
  {
    v5 = 0x494C5F454752414CLL;
    v6 = 0xEB0000000053454ELL;
  }

  v7 = 0x52475F454752414CLL;
  v8 = 0xEA00000000004449;
  if (a1 != 3)
  {
    v7 = 0x494C5F4C4C414D53;
    v8 = 0xEB0000000053454ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x52475F4C4C414D53;
  v10 = 0xEA00000000004449;
  if (a1 != 1)
  {
    v9 = 0x475F4D554944454DLL;
    v10 = 0xEB00000000444952;
  }

  if (a1)
  {
    v4 = v10;
  }

  else
  {
    v9 = 1162760014;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE400000000000000;
      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v13 = 0x5F4C4C414D53;
      goto LABEL_25;
    }

    v2 = 0x475F4D554944454DLL;
    v15 = 4475218;
LABEL_33:
    v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_34;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0x4C5F4D554944454DLL;
      v14 = 0xEC00000053454E49;
      goto LABEL_34;
    }

    v16 = 0x5F454752414CLL;
    goto LABEL_32;
  }

  if (a2 != 3)
  {
    v16 = 0x5F4C4C414D53;
LABEL_32:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0x494C000000000000;
    v15 = 5457230;
    goto LABEL_33;
  }

  v13 = 0x5F454752414CLL;
LABEL_25:
  v2 = v13 & 0xFFFFFFFFFFFFLL | 0x5247000000000000;
  v14 = 0xEA00000000004449;
LABEL_34:
  if (v11 == v2 && v12 == v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_100085948();
  }

  return v17 & 1;
}

uint64_t sub_100041EC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "ERRIDE";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = "com.apple.notes.archive";
    }

    else
    {
      v4 = "ERRIDE";
    }

    v5 = 0xD000000000000017;
  }

  else if (a1 == 2)
  {
    v4 = "com.apple.notes.account";
    v5 = 0xD000000000000016;
  }

  else if (a1 == 3)
  {
    v4 = "com.apple.notes.folder";
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = "com.apple.notes.note";
    v5 = 0xD00000000000001ALL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "com.apple.notes.archive";
    }
  }

  else if (a2 == 2)
  {
    v3 = "com.apple.notes.account";
    v2 = 0xD000000000000016;
  }

  else
  {
    v3 = "com.apple.notes.folder";
    if (a2 == 3)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a2 != 3)
    {
      v3 = "com.apple.notes.note";
    }
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_100085948();
  }

  return v6 & 1;
}

uint64_t sub_100042020(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F4F545F5446454CLL;
    }

    else
    {
      v3 = 0x4C41525554414ELL;
    }

    if (v2)
    {
      v4 = 0xED00005448474952;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000016;
    v4 = 0x8000000100086450;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4F545F5448474952;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v2 == 3)
    {
      v4 = 0xED00005446454C5FLL;
    }

    else
    {
      v4 = 0x8000000100086480;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5F4F545F5446454CLL;
    }

    else
    {
      v9 = 0x4C41525554414ELL;
    }

    if (a2)
    {
      v8 = 0xED00005448474952;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x4F545F5448474952;
    v6 = 0x8000000100086480;
    if (a2 == 3)
    {
      v6 = 0xED00005446454C5FLL;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000100086450;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_100085948();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_1000421E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1263421776;
    }

    else
    {
      v4 = 0x454C50525550;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x45474E41524FLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1414416717;
    }

    else
    {
      v4 = 1163217986;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1263421776;
    }

    else
    {
      v8 = 0x454C50525550;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1414416717;
    if (a2 != 3)
    {
      v5 = 1163217986;
    }

    if (a2 == 2)
    {
      v6 = 0x45474E41524FLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_100085948();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_100042330(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5245544E4543;
    }

    else
    {
      v3 = 1413891404;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x5448474952;
  }

  else if (a1 == 3)
  {
    v3 = 0x454946495453554ALL;
    v4 = 0xE900000000000044;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x4C41525554414ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5245544E4543;
    }

    else
    {
      v9 = 1413891404;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x454946495453554ALL;
    v6 = 0xE900000000000044;
    if (a2 != 3)
    {
      v5 = 0x4C41525554414ELL;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x5448474952;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_100085948();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

id ICArchiveImporter.__allocating_init(context:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  swift_getObjectType();
  v5 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v7 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v8 = objc_allocWithZone(v2);
  v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v9 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&v8[v9] = sub_10003D4E0(_swiftEmptyArrayStorage);
  *&v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v10 = &v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v10 = 0u;
  v10[1] = 0u;
  *&v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = a1;
  v11 = &v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  *v11 = IsAlexandriaDemoModeEnabled;
  v11[1] = v7;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = 0;
  *(v11 + 16) = 2;
  v12 = &v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v12 = v5;
  v12[1] = &protocol witness table for NSFileManager;
  v16.receiver = v8;
  v16.super_class = v2;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, "init");
  sub_100044760();

  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t *ICArchiveImporter.objects(forArchiveAt:)(void *a1)
{
  v1 = sub_100005740(&qword_1000A5A88, &unk_10008D110);
  __chkstk_darwin(v1 - 8);
  v49 = (&v40 - v2);
  v3 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = __chkstk_darwin(v3);
  v55 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v40 - v6;
  v7 = sub_1000847C8();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v56 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084EF8();
  v10 = *(v9 - 1);
  v11 = __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  if (qword_1000A5420 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_100084F28();
    sub_10000B614(v16, qword_1000A6620);
    sub_1000846F8(v17);
    sub_100084F18();
    sub_100084ED8();
    v18 = sub_100084F18();
    v19 = sub_100085408();
    if (sub_1000854D8())
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_100084EE8();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "Objects for Archive", "", v20, 2u);
    }

    (*(v10 + 16))(v13, v15, v9);
    sub_100084F68();
    swift_allocObject();
    v22 = sub_100084F58();
    v23 = v57;
    swift_getObjectType();
    v24 = v54;
    v25 = sub_1000849E8();
    if (v24)
    {
      sub_100048E94(v22, "Objects for Archive");

      (*(v10 + 8))(v15, v9);
      return v9;
    }

    v26 = v25;
    v40 = v22;
    v41 = v15;
    v42 = v10;
    v43 = v9;
    v27 = *(v25 + 16);
    v28 = v23;
    v54 = v27;
    if (!v27)
    {
      break;
    }

    v15 = 0;
    v13 = v45;
    v10 = v46;
    v52 = v45 + 16;
    v53 = (v45 + 8);
    v29 = v48;
    v50 = (v47 + 32);
    v51 = (v47 + 48);
    v57 = _swiftEmptyArrayStorage;
    v9 = v49;
    while (v15 < *(v26 + 16))
    {
      v30 = v26;
      v31 = v26 + ((v13[80] + 32) & ~v13[80]) + *(v13 + 9) * v15;
      v32 = v56;
      (*(v13 + 2))(v56, v31, v10);
      sub_1000455C4(v32, v9);
      (*v53)(v32, v10);
      if ((*v51)(v9, 1, v29) == 1)
      {
        sub_1000058F0(v9, &qword_1000A5A88, &unk_10008D110);
        v26 = v30;
      }

      else
      {
        v33 = *v50;
        v34 = v44;
        (*v50)(v44, v9, v29);
        v33(v55, v34, v29);
        v35 = v57;
        v26 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_10000ED28(0, v35[2] + 1, 1, v35);
        }

        v37 = v35[2];
        v36 = v35[3];
        v57 = v35;
        v13 = v45;
        if (v37 >= v36 >> 1)
        {
          v57 = sub_10000ED28((v36 > 1), v37 + 1, 1, v57);
        }

        v38 = v57;
        v57[2] = v37 + 1;
        v29 = v48;
        v33(&v38[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v37], v55, v48);
        v9 = v49;
        v10 = v46;
      }

      if (v54 == ++v15)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_18:

  v58 = v57;

  sub_10004CFD0(&v58);

  v9 = v58;
  sub_100048E94(v40, "Objects for Archive");

  (*(v42 + 8))(v41, v43);
  return v9;
}

NSObject *sub_100042D18(uint64_t a1, void *a2, char *a3, void *a4)
{
  v160 = a1;
  v154 = a2;
  v155 = a3;
  v150 = type metadata accessor for ICAttachmentArchiveModel(0);
  __chkstk_darwin(v150);
  v151 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for ICNoteArchiveModel(0);
  __chkstk_darwin(v148);
  v149 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ICFolderArchiveModel(0);
  __chkstk_darwin(v152);
  v153 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v156 = *(v159 - 8);
  v8 = __chkstk_darwin(v159);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v136 - v11;
  v162 = sub_1000847C8();
  v157 = *(v162 - 8);
  v13 = __chkstk_darwin(v162);
  v15 = (&v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = &v136 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v136 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v136 - v23;
  __chkstk_darwin(v22);
  v26 = &v136 - v25;
  v27 = v161;
  sub_100085348();
  if (v27)
  {
    return v18;
  }

  v141 = v12;
  v142 = v21;
  v139 = v18;
  v140 = v15;
  v144 = a4;
  v29 = *(v158 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager);
  v28 = *(v158 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager + 8);
  v146 = v10;
  v147 = v28;
  swift_getObjectType();
  v30 = v159;
  sub_100084A78();
  sub_100084718();
  v31 = v24;
  v32 = v30;
  v34 = v157 + 8;
  v33 = *(v157 + 1);
  v143 = v31;
  v33();
  v35 = sub_100084A08();
  v161 = v33;
  v137 = v35;
  v138 = v36;
  v145 = v34;
  (v33)(v26, v162);
  v37 = v156;
  v38 = v141;
  (*(v156 + 16))(v141, v160, v32);
  v39 = (*(v37 + 88))(v38, v32);
  if (v39 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v37 + 96))(v38, v32);
    v40 = sub_100005740(&qword_1000A6708, &unk_10008D340);
    v41 = swift_projectBox();
    v42 = *(v41 + *(v40 + 64));
    v43 = v162;
    (*(v157 + 2))(v142, v41);
    v44 = qword_1000A53F8;

    if (v44 != -1)
    {
      swift_once();
    }

    sub_100040BFC();
    sub_1000844B8();
    v164[0] = v163[0];
    v164[1] = v163[1];
    v164[2] = v163[2];
    v164[3] = v163[3];
    v18 = sub_1000496CC(v164, v42, v59, v154, v155, v144);
    (v161)(v142, v43);
    sub_10000650C(v137, v138);

    sub_100040A64(v164);

    return v18;
  }

  v142 = v29;
  v45 = v162;
  v46 = v157;
  if (v39 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v37 + 96))(v38, v32);
    v47 = *v38;
    v48 = sub_100005740(&qword_1000A6708, &unk_10008D340);
    v157 = v47;
    v49 = *(swift_projectBox() + *(v48 + 64));
    v50 = qword_1000A53F8;

    if (v50 != -1)
    {
      swift_once();
    }

    sub_10004F178(&qword_1000A6710, type metadata accessor for ICFolderArchiveModel, &unk_10008EFF4);
    sub_1000844B8();
    v67 = v158 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v68 = *(v67 + 16);
    v165[0] = *v67;
    v165[1] = v68;
    v166 = *(v67 + 32);
    v173 = v68;
    sub_100005888(&v173, v163, &qword_1000A6690, &qword_10008D120);
    v72 = sub_100060EF4(v154, v155, v165);
    sub_10003EAB4(v165);
    v73 = v72;
    v109 = sub_100049124(v49, v73, &off_10009E9B0, v144);

    v110 = sub_10004A65C(v109, ICFolder_ptr, sub_10003A794);

    v111 = v153;
    v130 = sub_1000612DC(v73, v110);

    sub_1000615AC(v73);

    sub_10000650C(v137, v138);
    v18 = *(v111 + 8);

    sub_10004F27C(v111, type metadata accessor for ICFolderArchiveModel);

    return v18;
  }

  if (v39 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v37 + 96))(v38, v32);
    v51 = *v38;
    v52 = sub_100005740(&qword_1000A66F8, &qword_10008D338);
    v153 = v51;
    v53 = swift_projectBox();
    v54 = *(v46 + 16);
    v55 = v45;
    v56 = *(v53 + *(v52 + 64));
    v54(v139, v53, v55);
    v57 = qword_1000A53F8;

    if (v57 != -1)
    {
      swift_once();
    }

    sub_10004F178(&qword_1000A6700, type metadata accessor for ICNoteArchiveModel, &unk_10008FD8C);
    v58 = v149;
    sub_1000844B8();
    v74 = sub_10004A03C(v58, v56, v69, v154, v155, v144);
    sub_10000650C(v137, v138);

    sub_10004F27C(v58, type metadata accessor for ICNoteArchiveModel);
    (v161)(v139, v55);

    return v74;
  }

  if (v39 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v37 + 96))(v38, v32);
    v60 = *v38;
    v61 = sub_100005740(&qword_1000A66E8, &qword_10008D330);
    v153 = v60;
    v62 = swift_projectBox();
    v63 = *(v62 + *(v61 + 80));
    (*(v46 + 16))(v140, v62, v45);
    v64 = qword_1000A53F8;
    v157 = v63;

    v65 = v146;
    if (v64 != -1)
    {
      swift_once();
    }

    sub_10004F178(&qword_1000A66F0, type metadata accessor for ICAttachmentArchiveModel, &unk_10008E024);
    sub_1000844B8();
    v66 = v145;
    v70 = v158 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v71 = *(v70 + 16);
    v169[0] = *v70;
    v169[1] = v71;
    v170 = *(v70 + 32);
    v171 = v71;
    sub_100005888(&v171, v163, &qword_1000A6690, &qword_10008D120);
    v75 = sub_100055F34(v154, v155, v169);
    sub_10003EAB4(v169);
    v155 = v75;
    v112 = sub_100049124(v157, v155, &off_10009EA20, v144);

    v113 = sub_10004A65C(v112, ICAttachment_ptr, sub_10003A7A8);
    v157 = 0;

    v114 = v151;
    v115 = v161;
    v116 = v162;
    if (*(v151 + 88))
    {
      v117 = v143;
      sub_100084718();
      sub_1000846F8(v118);
      v120 = v119;

      v121 = v117;
      v116 = v162;
      (v115)(v121, v162);
    }

    v122 = v114 + *(v150 + 88);
    if ((*(v122 + 16) & 1) == 0)
    {
    }

    v123 = *(v70 + 16);
    v167[0] = *v70;
    v167[1] = v123;
    v168 = *(v70 + 32);
    v172 = *(v70 + 16);
    sub_100005888(&v172, v163, &qword_1000A6690, &qword_10008D120);
    v124 = v155;
    v125 = v140;
    v126 = v157;
    sub_100056734(v155, v140, v113, v142, v147, v167);
    if (v126)
    {
      sub_10003EAB4(v167);

      v128 = v144;
      v129 = [v144 completedUnitCount];
      if (!__OFADD__(v129, 1))
      {
        [v128 setCompletedUnitCount:v129 + 1];
        sub_10000650C(v137, v138);
        (v161)(v125, v116);
        sub_10004F27C(v151, type metadata accessor for ICAttachmentArchiveModel);

        v18 = v126;
        *&v163[0] = v126;
        swift_errorRetain();
        sub_100005740(&qword_1000A5B98, &unk_10008B760);
        sub_100008250(0, &qword_1000A5BA0, NSError_ptr);
        if (!swift_dynamicCast())
        {
          goto LABEL_26;
        }

        v76 = v174;
        v77 = [v174 domain];
        v78 = sub_100085098();
        v80 = v79;

        if (v78 == sub_100085098() && v80 == v81)
        {

          v82 = v76;
        }

        else
        {
          v83 = sub_100085948();

          v82 = v76;
          if ((v83 & 1) == 0)
          {
LABEL_25:

LABEL_26:
            v157 = 0;
            v84 = v66;

            if (qword_1000A5418 != -1)
            {
              swift_once();
            }

            v85 = sub_100084FB8();
            sub_10000B614(v85, qword_1000A6608);
            v86 = v156;
            v87 = v159;
            (*(v156 + 16))(v65, v160, v159);
            swift_errorRetain();
            v88 = sub_100084FA8();
            v89 = sub_100085378();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              LODWORD(v153) = v89;
              v91 = v90;
              v92 = swift_slowAlloc();
              v145 = v84;
              v154 = v92;
              *&v163[0] = v92;
              *v91 = 136315394;
              swift_getErrorValue();
              v152 = v88;
              v93 = sub_100085988();
              v95 = sub_100038A4C(v93, v94, v163);

              *(v91 + 4) = v95;
              *(v91 + 12) = 2080;
              v155 = v126;
              v96 = v65;
              v97 = v143;
              sub_100084A78();
              sub_10004F178(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
              v98 = v162;
              v99 = sub_100085908();
              v101 = v100;
              (v161)(v97, v98);
              v18 = v155;
              (*(v86 + 8))(v96, v87);
              v102 = sub_100038A4C(v99, v101, v163);

              *(v91 + 14) = v102;
              v103 = v152;
              _os_log_impl(&_mh_execute_header, v152, v153, "Cannot import model {error: %s, containerID: %s}", v91, 0x16u);
              swift_arrayDestroy();
              v104 = v161;
            }

            else
            {

              (*(v86 + 8))(v65, v87);
              v97 = v143;
              v104 = v161;
            }

            sub_100084A78();
            v105 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
            v106 = v158;
            swift_beginAccess();
            swift_errorRetain();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v174 = *(v106 + v105);
            *(v106 + v105) = 0x8000000000000000;
            sub_10003B328(v18, v97, isUniquelyReferenced_nonNull_native);
            (v104)(v97, v162);
            *(v106 + v105) = v174;
            swift_endAccess();
            [v144 setCompletedUnitCount:{objc_msgSend(v144, "totalUnitCount")}];
            return v18;
          }
        }

        if ([v82 code] == 3072)
        {

          swift_willThrow();

          return v18;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v131 = v127;

      sub_10003EAB4(v167);
      v132 = v151;
      v133 = *(v151 + 8);

      v134 = v144;
      v135 = [v144 completedUnitCount];
      if (!__OFADD__(v135, 1))
      {
        [v134 setCompletedUnitCount:v135 + 1];
        sub_10000650C(v137, v138);
        (v161)(v140, v116);
        sub_10004F27C(v132, type metadata accessor for ICAttachmentArchiveModel);

        return v133;
      }
    }

    __break(1u);
  }

  result = sub_100085938();
  __break(1u);
  return result;
}

uint64_t sub_1000443C8()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A6608);
  sub_10000B614(v0, qword_1000A6608);
  return sub_100084F98();
}

uint64_t sub_100044414()
{
  v0 = sub_100084FB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100084F28();
  sub_10000B64C(v4, qword_1000A6620);
  sub_10000B614(v4, qword_1000A6620);
  if (qword_1000A5418 != -1)
  {
    swift_once();
  }

  v5 = sub_10000B614(v0, qword_1000A6608);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100084F08();
}

id ICArchiveImporter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  v7 = *(v3 + 16);
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;

  return v7;
}

id ICArchiveImporter.__allocating_init(context:configuration:fileManager:markdown:markdownFlavor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_10004E634(a1, a2, a3, a5, a6, v6, ObjectType, a4);
}

id ICArchiveImporter.init(context:configuration:fileManager:markdown:markdownFlavor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = a5;
  ObjectType = swift_getObjectType();

  return sub_10004E6BC(a1, a2, a3, v8, v7, v6, ObjectType, a4);
}

uint64_t sub_100044760()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_10004FB80;
  v10 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072320;
  ObjectType = &unk_1000A02E8;
  v3 = _Block_copy(aBlock);

  v4 = [v1 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);

  ObjectType = swift_getObjectType();
  aBlock[0] = v4;
  v5 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_10004FB88(aBlock, v0 + v5);
  return swift_endAccess();
}

void ICArchiveImporter.init()()
{
  v1 = [objc_opt_self() sharedContext];
  if (v1 && (v2 = v1, v3 = [v1 snapshotManagedObjectContext], v2, v3))
  {
    [v0 initWithContext:v3];
  }

  else
  {
    __break(1u);
  }
}

id ICArchiveImporter.init(context:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v5 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v7 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&v6[v7] = sub_10003D4E0(_swiftEmptyArrayStorage);
  *&v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v8 = &v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v8 = 0u;
  v8[1] = 0u;
  *&v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = a1;
  v9 = &v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  *v9 = IsAlexandriaDemoModeEnabled;
  v9[1] = v5;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  *(v9 + 16) = 2;
  v10 = &v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v10 = v3;
  v10[1] = &protocol witness table for NSFileManager;
  v14.receiver = v6;
  v14.super_class = ObjectType;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_100044760();

  swift_deallocPartialClassInstance();
  return v12;
}

void ICArchiveImporter.__allocating_init(notesMarkdown:)(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  ICArchiveImporter.init(notesMarkdown:)(v2);
}

void ICArchiveImporter.init(notesMarkdown:)(char a1)
{
  v2 = [objc_opt_self() sharedContext];
  if (v2 && (v3 = v2, v4 = [v2 snapshotManagedObjectContext], v3, v4))
  {
    swift_getObjectType();
    LOBYTE(v6) = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    BYTE1(v6) = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v7 = 0;
    v8 = 0;
    *(&v6 + 1) = 0;
    v9 = 2;
    v5 = [objc_opt_self() defaultManager];
    sub_10003D07C(v4, &v6, v5, a1 & 1, 2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

id ICArchiveImporter.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_100005888(v0 + v2, v10, &qword_1000A5AD0, &unk_10008B5E0);
  v3 = [objc_opt_self() defaultCenter];
  sub_100005888(v10, &v8, &qword_1000A5AD0, &unk_10008B5E0);
  if (v9)
  {
    sub_10001C864(&v8, &v5);
    sub_10000626C(&v5, v6);
    [v3 removeObserver:sub_100085928()];
    swift_unknownObjectRelease();
    sub_100006304(&v5);
  }

  sub_1000058F0(v10, &qword_1000A5AD0, &unk_10008B5E0);

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100044ED4()
{
  v1 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_100005888(v0 + v1, v7, &qword_1000A5AD0, &unk_10008B5E0);
  v2 = [objc_opt_self() defaultCenter];
  sub_100005888(v7, &v5, &qword_1000A5AD0, &unk_10008B5E0);
  if (v6)
  {
    sub_10001C864(&v5, &v3);
    sub_10000626C(&v3, v4);
    [v2 removeObserver:sub_100085928()];
    swift_unknownObjectRelease();
    sub_100006304(&v3);
  }

  sub_1000058F0(v7, &qword_1000A5AD0, &unk_10008B5E0);
}

uint64_t ICArchiveImporter.Errors.errorDescription.getter(unint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4 || a1 == 5)
    {
      goto LABEL_11;
    }
  }

  else if (a1 <= 1 || a1 == 2)
  {
LABEL_11:
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_100085068();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = sub_100085098();
    return v4;
  }

  result = sub_100085958();
  __break(1u);
  return result;
}

uint64_t sub_100045278(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004F1C0();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000452C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10004EED8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100045300(uint64_t a1)
{
  v2 = sub_10004F1C0();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10004533C(uint64_t a1)
{
  v2 = sub_10004F1C0();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100045378(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004F1C0();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_1000455C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v172 = a2;
  v4 = sub_100005740(&qword_1000A5A88, &unk_10008D110);
  __chkstk_darwin(v4 - 8);
  v177 = (v164 - v5);
  v6 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v7 = *(v6 - 8);
  v178 = v6;
  v179 = v7;
  v8 = __chkstk_darwin(v6);
  v176 = v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v175 = v164 - v10;
  v11 = sub_1000847C8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v167 = v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v169 = v164 - v16;
  v17 = __chkstk_darwin(v15);
  v168 = v164 - v18;
  v19 = __chkstk_darwin(v17);
  v171 = v164 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v164 - v22;
  __chkstk_darwin(v21);
  v25 = v164 - v24;
  sub_100084708();
  v170 = sub_1000846E8();
  v27 = v26;
  v187 = v12;
  v30 = *(v12 + 8);
  v29 = v12 + 8;
  v28 = v30;
  v31 = v25;
  v32 = v11;
  v30(v31, v11);
  v185 = v2;
  v33 = *&v2[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  v34 = *&v185[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager + 8];
  ObjectType = swift_getObjectType();
  v36 = v186;
  v37 = sub_1000849E8();
  v174 = v36;
  if (v36)
  {
  }

  v164[2] = ObjectType;
  v164[3] = v33;
  v164[1] = v34;
  v166 = v27;
  v183 = v28;
  v184 = v29;
  v165 = a1;
  v186 = v37;
  v39 = *(v37 + 16);
  v185 = v185;
  v40 = _swiftEmptyArrayStorage;
  v173 = v32;
  v41 = v178;
  v182 = v39;
  if (!v39)
  {
    v45 = v174;
LABEL_16:
    v54 = v41;

    v188[0] = v40;

    sub_10004CFD0(v188);
    v174 = v45;
    if (v45)
    {

      __break(1u);
      return result;
    }

    v44 = 0xEC00000065766968;
    v32 = 0x6372617365746F6ELL;

    v55 = v188[0];
    v43 = v165;
    v40 = sub_100084698();
    v45 = v56;
    v57 = v179;
    v42 = v187;
    if (v40 == 0x6372617365746F6ELL && v56 == 0xEC00000065766968 || (sub_100085948() & 1) != 0)
    {

      v58 = v173;
      v59 = v171;
      if (qword_1000A5418 != -1)
      {
        swift_once();
      }

      v60 = sub_100084FB8();
      sub_10000B614(v60, qword_1000A6608);
      (*(v42 + 16))(v59, v43, v58);
      v61 = sub_100084FA8();
      v62 = sub_100085378();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = v59;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v188[0] = v65;
        *v64 = 136315138;
        v66 = sub_100084698();
        v67 = v54;
        v69 = v68;
        v183(v63, v58);
        v70 = sub_100038A4C(v66, v69, v188);
        v54 = v67;

        *(v64 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v61, v62, "Archive object type not supported inside archive — skipping {pathExtension: %s}", v64, 0xCu);
        sub_100006304(v65);
      }

      else
      {

        v183(v59, v58);
      }

      return (*(v179 + 56))(v172, 1, 1, v54);
    }

    if (v40 == 0x746E756F636361 && v45 == 0xE700000000000000 || (sub_100085948() & 1) != 0)
    {
      v71 = v42;

      v72 = sub_100005740(&qword_1000A6708, &unk_10008D340);
      v73 = swift_allocBox();
      v75 = v74;
      v76 = (v74 + *(v72 + 48));
      v77 = *(v72 + 64);
      (*(v71 + 16))(v74, v43, v173);
      v78 = v166;
      *v76 = v170;
      v76[1] = v78;
      *(v75 + v77) = v55;
      v79 = v172;
      *v172 = v73;
      (*(v57 + 104))(v79, enum case for ICObjectReferences.account<A>(_:), v54);
      return (*(v57 + 56))(v79, 0, 1, v54);
    }

    v186 = v55;
    v41 = 0x7265646C6F66;
    if (v40 == 0x7265646C6F66 && v45 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
    {
      v80 = v42;

      v81 = sub_100005740(&qword_1000A6708, &unk_10008D340);
      v82 = swift_allocBox();
      v84 = v83;
      v85 = (v83 + *(v81 + 48));
      v86 = *(v81 + 64);
      (*(v80 + 16))(v83, v43, v173);
      v87 = v166;
      *v85 = v170;
      v85[1] = v87;
      *(v84 + v86) = v186;
      v88 = v172;
      *v172 = v82;
      v89 = &enum case for ICObjectReferences.folder<A>(_:);
    }

    else
    {
      if ((v40 != 1702129518 || v45 != 0xE400000000000000) && (sub_100085948() & 1) == 0)
      {
        goto LABEL_41;
      }

      v91 = v42;

      v92 = sub_100005740(&qword_1000A66F8, &qword_10008D338);
      v93 = swift_allocBox();
      v95 = v94;
      v96 = (v94 + *(v92 + 48));
      v97 = *(v92 + 64);
      (*(v91 + 16))(v94, v43, v173);
      v98 = v166;
      *v96 = v170;
      v96[1] = v98;
      *(v95 + v97) = v186;
      v88 = v172;
      *v172 = v93;
      v89 = &enum case for ICObjectReferences.note<A>(_:);
    }

    v90 = v178;
    (*(v57 + 104))(v88, *v89, v178);
    return (*(v57 + 56))(v88, 0, 1, v90);
  }

  v42 = 0;
  v43 = v186;
  v180 = (v179 + 48);
  v181 = v187 + 16;
  v44 = v179 + 32;
  v45 = v174;
  v46 = v177;
  while (v42 < *(v43 + 16))
  {
    (*(v187 + 16))(v23, v43 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v42, v32);
    sub_1000455C4(v23, v46);
    if (v45)
    {

      v183(v23, v32);
    }

    v45 = 0;
    v183(v23, v32);
    if ((*v180)(v46, 1, v41) == 1)
    {
      sub_1000058F0(v46, &qword_1000A5A88, &unk_10008D110);
    }

    else
    {
      v47 = v46;
      v48 = *v44;
      v49 = v175;
      (*v44)(v175, v47, v41);
      v50 = v176;
      v48(v176, v49, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_10000ED28(0, v40[2] + 1, 1, v40);
      }

      v52 = v40[2];
      v51 = v40[3];
      if (v52 >= v51 >> 1)
      {
        v40 = sub_10000ED28((v51 > 1), v52 + 1, 1, v40);
      }

      v40[2] = v52 + 1;
      v53 = v40 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v52;
      v41 = v178;
      v48(v53, v50, v178);
      v45 = 0;
      v32 = v173;
      v46 = v177;
    }

    ++v42;
    v43 = v186;
    if (v182 == v42)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  v185 = v32;
  if (v40 == 0x656D686361747461 && v45 == 0xEA0000000000746ELL)
  {
  }

  else
  {
    v99 = sub_100085948();

    v100 = v173;
    if ((v99 & 1) == 0)
    {

      if (qword_1000A5418 != -1)
      {
        swift_once();
      }

      v104 = sub_100084FB8();
      sub_10000B614(v104, qword_1000A6608);
      v105 = v167;
      (*(v42 + 16))(v167, v43, v100);
      v106 = sub_100084FA8();
      v107 = sub_100085378();
      v108 = os_log_type_enabled(v106, v107);
      v109 = v178;
      if (v108)
      {
        v110 = swift_slowAlloc();
        v111 = v100;
        v112 = swift_slowAlloc();
        v188[0] = v112;
        *v110 = 136315138;
        v113 = sub_100084698();
        v114 = v105;
        v116 = v115;
        v183(v114, v111);
        v117 = sub_100038A4C(v113, v116, v188);

        *(v110 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v106, v107, "Unknown object type — skipping {pathExtension: %s}", v110, 0xCu);
        sub_100006304(v112);
      }

      else
      {

        v183(v105, v100);
      }

      return (*(v179 + 56))(v172, 1, 1, v109);
    }
  }

  v188[0] = _swiftEmptyArrayStorage;
  sub_10003BCC0(0, 5, 0);
  v101 = v188[0];
  v102 = 0x6372617365746F6ELL;
  v103 = 0x656D686361747461;
  v119 = *(v188[0] + 16);
  v118 = *(v188[0] + 24);
  v120 = v119 + 1;
  if (v119 >= v118 >> 1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    *(v101 + 16) = v120;
    v121 = v101 + 16 * v119;
    *(v121 + 32) = v102;
    *(v121 + 40) = v44;
    v122 = v42;
    v188[0] = v101;
    v123 = *(v101 + 24);
    v124 = v119 + 2;
    if (v120 >= v123 >> 1)
    {
      v159 = v119 + 2;
      v160 = v103;
      sub_10003BCC0((v123 > 1), v159, 1);
      v103 = v160;
      v101 = v188[0];
    }

    *(v101 + 16) = v124;
    v125 = v101 + 16 * v120;
    *(v125 + 32) = 0x746E756F636361;
    *(v125 + 40) = 0xE700000000000000;
    v188[0] = v101;
    v127 = *(v101 + 16);
    v126 = *(v101 + 24);
    v128 = v127 + 1;
    if (v127 >= v126 >> 1)
    {
      v161 = v103;
      sub_10003BCC0((v126 > 1), v127 + 1, 1);
      v103 = v161;
      v101 = v188[0];
    }

    *(v101 + 16) = v128;
    v129 = v101 + 16 * v127;
    *(v129 + 32) = v41;
    *(v129 + 40) = 0xE600000000000000;
    v188[0] = v101;
    v130 = *(v101 + 24);
    v131 = v127 + 2;
    if (v128 >= v130 >> 1)
    {
      v162 = v127 + 2;
      v163 = v103;
      sub_10003BCC0((v130 > 1), v162, 1);
      v103 = v163;
      v101 = v188[0];
    }

    *(v101 + 16) = v131;
    v132 = v101 + 16 * v128;
    *(v132 + 32) = 1702129518;
    *(v132 + 40) = 0xE400000000000000;
    v185 = v103;
    v133 = 0xEA0000000000746ELL;
    v102 = v166;
    v188[0] = v101;
    v135 = *(v101 + 16);
    v134 = *(v101 + 24);
    v120 = v135 + 1;
    if (v135 >= v134 >> 1)
    {
      v182 = 0xEA0000000000746ELL;
      sub_10003BCC0((v134 > 1), v135 + 1, 1);
      v133 = v182;
      v101 = v188[0];
    }

    *(v101 + 16) = v120;
    v136 = v101 + 16 * v135;
    *(v136 + 32) = v185;
    *(v136 + 40) = v133;
    v137 = v174;
    v119 = v101;
    v138 = sub_1000849D8();
    if (v137)
    {
    }

    v44 = v138;
    v174 = 0;
    v181 = *(v138 + 16);
    v182 = v119;
    if (!v181)
    {
      break;
    }

    v41 = 0;
    v103 = v122 + 16;
    v180 = (v122 + 16);
    v177 = (v122 + 32);
    v42 = _swiftEmptyArrayStorage;
    v139 = v168;
    while (1)
    {
      v118 = *(v44 + 16);
      if (v41 >= v118)
      {
        break;
      }

      v185 = ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v119 = *(v122 + 72);
      v120 = v173;
      (*(v122 + 16))(v139, &v185[v44 + v119 * v41], v173);
      v188[0] = sub_100084698();
      v188[1] = v140;
      __chkstk_darwin(v188[0]);
      v164[-2] = v188;
      v141 = v174;
      v102 = sub_10001CF34(sub_10004FB28, &v164[-4], v182);
      v174 = v141;

      if (v102)
      {
        v183(v139, v120);
      }

      else
      {
        v102 = *v177;
        (*v177)(v169, v139, v120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v189 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10003BEAC(0, *(v42 + 16) + 1, 1);
          v139 = v168;
          v42 = v189;
        }

        v144 = *(v42 + 16);
        v143 = *(v42 + 24);
        if (v144 >= v143 >> 1)
        {
          sub_10003BEAC((v143 > 1), v144 + 1, 1);
          v139 = v168;
          v42 = v189;
        }

        *(v42 + 16) = v144 + 1;
        (v102)(&v185[v42 + v144 * v119], v169, v173);
      }

      ++v41;
      v122 = v187;
      if (v181 == v41)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_77:
    v158 = v103;
    sub_10003BCC0((v118 > 1), v120, 1);
    v103 = v158;
    v101 = v188[0];
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_75:

  v145 = *(v42 + 16);

  v146 = v145 > 1;
  v147 = sub_100005740(&qword_1000A66E8, &qword_10008D330);
  v148 = swift_allocBox();
  v150 = v149;
  v151 = (v149 + v147[12]);
  v152 = v147[16];
  v153 = v147[20];
  (*(v122 + 16))(v149, v165, v173);
  v154 = v166;
  *v151 = v170;
  v151[1] = v154;
  *(v150 + v152) = v146;
  *(v150 + v153) = v186;
  v155 = v172;
  *v172 = v148;
  v156 = v178;
  v157 = v179;
  (*(v179 + 104))(v155, enum case for ICObjectReferences.attachment<A>(_:), v178);
  return (*(v157 + 56))(v155, 0, 1, v156);
}

void sub_100046AB4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [*(a1 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context) ic_existingObjectWithID:a2];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_19:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = a1 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v13 = *(v12 + 32);
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v16 = ICArchiveImporter.objects(forArchiveAt:)(a3);
    if (!v4)
    {
      v17 = v16;
      if (a4)
      {
        v18 = a4;
      }

      else
      {
        v18 = [objc_allocWithZone(NSProgress) init];
      }

      v19 = a4;
      ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(v17, a3, v11, v18);
    }

    goto LABEL_12;
  }

  sub_100084778();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v9 = v9;
    sub_100046D04(a3, v15, 0, 1);

LABEL_12:
    return;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    sub_100046D04(a3, 0, 0, 1);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = v9;
  v9 = [v21 defaultFolder];
  sub_100046D04(a3, v9, 0, 1);
  if (v4)
  {

    goto LABEL_12;
  }
}

void sub_100046D04(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = v5;
  v7 = v4;
  v73 = a4;
  v72 = a3;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v65 - v14;
  if (qword_1000A5418 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v15 = sub_100084FB8();
    v79 = sub_10000B614(v15, qword_1000A6608);
    v16 = sub_100084FA8();
    v17 = sub_100085368();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "starting markdown archive import", v18, 2u);
    }

    if (!a2 || (v19 = [a2 account]) == 0)
    {
      v19 = [objc_opt_self() localAccountInContext:*&v7[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context]];
      if (!v19)
      {
        break;
      }
    }

    v20 = v19;
    v21 = [objc_opt_self() defaultManager];
    v22 = sub_100085358();
    if (v6)
    {

      goto LABEL_9;
    }

    v66 = a1;
    v67 = a2;
    v70 = v7;
    v71 = v11;
    v79 = v10;
    v69 = 0;
    v23 = v22;

    v24 = *(v23 + 16);
    v25 = _swiftEmptyArrayStorage;
    v74 = v23;
    v68 = v20;
    if (v24)
    {
      v81 = _swiftEmptyArrayStorage;
      sub_10003BCC0(0, v24, 0);
      v25 = v81;
      v26 = *(v71 + 16);
      v27 = v23 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v76 = *(v71 + 72);
      v77 = v26;
      v78 = v71 + 16;
      v28 = (v71 + 8);
      do
      {
        v30 = v79;
        v29 = v80;
        v77(v80, v27, v79);
        v31 = sub_100084698();
        v33 = v32;
        (*v28)(v29, v30);
        v81 = v25;
        v35 = v25[2];
        v34 = v25[3];
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          sub_10003BCC0((v34 > 1), v35 + 1, 1);
          v25 = v81;
        }

        v25[2] = v36;
        v37 = &v25[2 * v35];
        v37[4] = v31;
        v37[5] = v33;
        v27 += v76;
        --v24;
      }

      while (v24);
      v20 = v68;
    }

    else
    {
      v36 = _swiftEmptyArrayStorage[2];
    }

    v40 = v25 + 5;
    v41 = v36 + 1;
    a2 = v70;
    v11 = v71;
    a1 = v79;
    while (--v41)
    {
      if (*(v40 - 1) != 25709 || *v40 != 0xE200000000000000)
      {
        v40 += 2;
        if ((sub_100085948() & 1) == 0)
        {
          continue;
        }
      }

      v43 = v67;
      if (v67)
      {
        v44 = v67;
      }

      else
      {
        v44 = [v20 defaultFolder];
      }

      v49 = v66;
      v50 = v43;
      sub_10004A8CC(v49, v44);

      return;
    }

    v84 = 0;
    v82 = 0;
    v83 = 1;
    v45 = &a2[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    swift_beginAccess();
    if (v45[33] == 1)
    {
      sub_1000846E8();
      v46 = sub_1000846B8();
      if (v73)
      {
        v47 = v46;

        v48 = *(v47 + 16);

        v80 = 0;
        v82 = v48;
        v83 = 0;
      }

      else
      {
        v51 = v72;
        v82 = v72;
        v83 = 0;
        v52 = *(v46 + 16);

        if (__OFADD__(v51, 2))
        {
          __break(1u);
          return;
        }

        if (v51 + 2 >= v52)
        {
LABEL_44:

          v80 = 0;
          goto LABEL_45;
        }

        v53 = v67;
        if (v67)
        {
          v54 = sub_100085068();
          v55 = [v53 visibleChildFolderWithTitle:v54];

          v84 = v55;
          v80 = v55;
          if (v55)
          {
            goto LABEL_40;
          }

          v56 = &selRef_newFolderInParentFolder_;
        }

        else
        {
          v57 = sub_100085068();
          v58 = [v20 visibleRootFolderWithTitle:v57];

          v84 = v58;
          v80 = v58;
          if (v58)
          {
LABEL_40:

            goto LABEL_45;
          }

          v56 = &selRef_newFolderInAccount_;
          v53 = v20;
        }

        v84 = [objc_opt_self() *v56];
        v80 = v84;
        if (!v84)
        {
          goto LABEL_44;
        }

        v59 = sub_100085068();

        v60 = v80;
        [v80 setTitle:v59];

        v61 = sub_100085068();
        [v60 updateChangeCountWithReason:v61];
      }
    }

    else
    {
      v84 = v67;
      v80 = v67;
    }

LABEL_45:
    v6 = v69;
    v62 = v74;
    v7 = *(v74 + 16);
    if (!v7)
    {
LABEL_50:

      return;
    }

    v10 = 0;
    v63 = (v11 + 8);
    while (v10 < *(v62 + 16))
    {
      v64 = v75;
      (*(v11 + 16))(v75, v62 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10, a1);
      sub_10004BAF8(v64, a2, &v84, &v82);
      if (v6)
      {
        (*v63)(v64, a1);

        return;
      }

      ++v10;
      (*v63)(v64, a1);
      v62 = v74;
      if (v7 == v10)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v21 = sub_100084FA8();
  v38 = sub_100085378();
  if (os_log_type_enabled(v21, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v21, v38, "no account found", v39, 2u);
  }

LABEL_9:
}

uint64_t ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(unint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  v185 = a2;
  v165 = _s3TagVMa(0);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v167 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v11 = __chkstk_darwin(v10 - 8);
  v162 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v166 = &v157 - v14;
  __chkstk_darwin(v13);
  v158 = (&v157 - v15);
  v170 = sub_1000848B8();
  v16 = *(v170 - 8);
  v17 = __chkstk_darwin(v170);
  v171 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v160 = &v157 - v20;
  __chkstk_darwin(v19);
  v159 = &v157 - v21;
  v22 = type metadata accessor for ICArchiveModel(0);
  __chkstk_darwin(v22);
  v173 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1000847C8();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v176 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  ObjectType = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = &v157 - v25;
  v187 = sub_100084EF8();
  v186 = *(v187 - 8);
  v26 = __chkstk_darwin(v187);
  v28 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v157 - v29;
  v31 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting;
  if (*(v5 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting))
  {
    __break(1u);
  }

  else
  {
    v161 = v16;
    v172 = v22;
    v182 = a1;
    v32 = [a3 managedObjectContext];
    if (!v32)
    {
      __break(1u);
    }

    v33 = v32;
    v34 = *(v5 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context);
    sub_100008250(0, &qword_1000A6678, NSManagedObjectContext_ptr);
    v35 = v34;
    v36 = sub_1000854C8();

    if (v36)
    {
      v157 = v35;
      *(v31 + v5) = 1;
      if (qword_1000A5420 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_110;
    }
  }

  __break(1u);
LABEL_110:
  swift_once();
LABEL_5:
  v181 = a4;
  v180 = v31;
  v37 = sub_100084F28();
  sub_10000B614(v37, qword_1000A6620);
  sub_1000846F8(&var20);
  sub_100084F18();
  sub_100084ED8();
  v38 = sub_100084F18();
  v39 = sub_100085408();
  if (sub_1000854D8())
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v39, v41, "Import Objects from Archive", "", v40, 2u);
  }

  (*(v186 + 16))(v28, v30, v187);
  sub_100084F68();
  swift_allocObject();
  v178 = sub_100084F58();
  v42 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  *(v5 + v42) = &_swiftEmptyDictionarySingleton;

  v193[3] = sub_100008250(0, &qword_1000A6680, ICNoteContainer_ptr);
  v193[0] = a3;
  v43 = a3;
  v44 = sub_10000DFBC(v193);
  v46 = v45;
  sub_100006304(v193);
  v47 = v5 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v48 = *(v47 + 16);
  v163 = (v47 + 16);
  *(v47 + 16) = v44;
  v169 = v46;
  v168 = v47;
  *(v47 + 24) = v46;
  v183 = v44;

  v49 = v182;
  v50 = *(v182 + 16);
  v51 = _swiftEmptyArrayStorage;
  v184 = v30;
  if (v50)
  {
    v177 = v5;
    v192 = _swiftEmptyArrayStorage;
    sub_10003BDAC(0, v50, 0);
    v51 = v192;
    v52 = (ObjectType + 2);
    ObjectType = ObjectType[2];
    a3 = (v49 + ((v52[64] + 32) & ~v52[64]));
    v188 = *(v52 + 7);
    v31 = (v52 - 8);
    do
    {
      v53 = v190;
      v54 = v191;
      (ObjectType)(v190, a3, v191);
      v55 = sub_100084A98();
      (*v31)(v53, v54);
      v192 = v51;
      v5 = v51[2];
      v56 = v51[3];
      v57 = v5 + 1;
      if (v5 >= v56 >> 1)
      {
        sub_10003BDAC((v56 > 1), v5 + 1, 1);
        v51 = v192;
      }

      v51[2] = v57;
      v51[v5 + 4] = v55;
      a3 = v188 + a3;
      --v50;
    }

    while (v50);
LABEL_15:
    v58 = 0;
    v59 = 4;
    do
    {
      v60 = v51[v59];
      v61 = __OFADD__(v58, v60);
      v58 += v60;
      if (v61)
      {
        __break(1u);
        goto LABEL_39;
      }

      ++v59;
      --v57;
    }

    while (v57);
    v5 = v177;
    goto LABEL_19;
  }

  v57 = _swiftEmptyArrayStorage[2];
  if (v57)
  {
    v177 = v5;
    goto LABEL_15;
  }

  v58 = 0;
LABEL_19:

  a3 = v180;
  v62 = v181;
  if (qword_1000A5418 != -1)
  {
    swift_once();
  }

  v63 = sub_100084FB8();
  sub_10000B614(v63, qword_1000A6608);
  v64 = sub_100084FA8();
  v65 = sub_100085368();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v64, v65, "Importing archive… {noteCount: %ld}", v66, 0xCu);
  }

  v67 = v179;
  sub_100085348();
  v31 = v67;
  if (v67)
  {

    goto LABEL_26;
  }

  [v62 setTotalUnitCount:v58];
  swift_getObjectType();
  v68 = v176;
  sub_100084718();
  v69 = sub_100084A08();
  v74 = v73;
  v191 = v69;
  v174[1](v68, v175);
  if (qword_1000A53F8 != -1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    sub_10004F178(&qword_1000A6688, type metadata accessor for ICArchiveModel, &unk_10008FF48);
    v58 = v173;
    v51 = v172;
    v75 = v191;
    sub_1000844B8();
    if (v31)
    {

      sub_10000650C(v75, v74);
      goto LABEL_26;
    }

    v76 = *v58;
    v190 = v74;
    if (v76 > 1)
    {
      goto LABEL_120;
    }

    v77 = "ERRIDE";
    if (v76)
    {
      v77 = "com.apple.notes.archive";
    }

    if ((v77 | 0x8000000000000000) == 0x80000001000864B0)
    {
    }

    else
    {
LABEL_120:
    {
LABEL_39:
      v78 = sub_100085948();

      if ((v78 & 1) == 0)
      {
        v86 = sub_100084FA8();
        v87 = sub_100085378();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "Notes archive specifies unknown type identifier — aborting", v88, 2u);
        }

        sub_1000081FC();
        swift_allocError();
        *v89 = 0;
        swift_willThrow();

        sub_10000650C(v191, v190);
        sub_10004F27C(v58, type metadata accessor for ICArchiveModel);
        goto LABEL_26;
      }
    }
    }

    v177 = v5;
    v79 = v167;
    if (*(v168 + 1) == 1)
    {
      v80 = v158;
      sub_100005888(&v58[*(v51 + 6)], v158, &qword_1000A5490, &qword_10008CD80);
      v81 = v161;
      v82 = v170;
      if ((*(v161 + 48))(v80, 1, v170) == 1)
      {
        sub_1000058F0(v80, &qword_1000A5490, &qword_10008CD80);
        v83 = sub_100084FA8();
        v84 = sub_100085368();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "Notes archive doesn't have a creation date — fallback back to configuration's timestamp offset", v85, 2u);
          v51 = v172;
        }
      }

      else
      {
        (*(v81 + 32))(v159, v80, v82);
        v90 = v160;
        sub_1000848A8();
        sub_100084828();
        v92 = v91;
        v93 = *(v81 + 8);
        v94 = v90;
        v79 = v167;
        v93(v94, v82);
        v93(v159, v82);
        *(v168 + 8) = v92;
      }
    }

    v95 = *&v58[*(v51 + 8)];
    if (!v95)
    {
      break;
    }

    v96 = (v95 + 56);
    v97 = 1 << *(v95 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v5 = v98 & *(v95 + 56);
    v99 = (v97 + 63) >> 6;
    v179 = v169 + 8;
    v188 = (v161 + 48);
    v159 = (v161 + 32);
    v158 = (v161 + 56);
    v174 = (v161 + 8);

    v101 = 0;
    v70 = v184;
    v176 = v96;
    v175 = v99;
    v185 = v100;
LABEL_55:
    if (v5)
    {
      goto LABEL_61;
    }

    v74 = v182;
    while (1)
    {
      v105 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (v105 >= v99)
      {

        a3 = v180;
        goto LABEL_72;
      }

      v5 = *&v96[8 * v105];
      ++v101;
      if (v5)
      {
        v101 = v105;
LABEL_61:
        sub_10001172C(*(v100 + 48) + *(v164 + 72) * (__clz(__rbit64(v5)) | (v101 << 6)), v79);
        v106 = *(v168 + 16);
        v194[0] = *v168;
        v194[1] = v106;
        v195 = *(v168 + 32);
        ObjectType = swift_getObjectType();
        v107 = (v79 + *(v165 + 20));
        v109 = *v107;
        v108 = v107[1];
        v110 = v169;
        v111 = *(v169 + 1);
        v196 = *v163;
        sub_100005888(&v196, &v192, &qword_1000A6690, &qword_10008D120);
        v112 = v111(v109, v108, v194, ObjectType, v110);
        if (!v31)
        {
          v113 = v112;
          a3 = v166;
          sub_100005888(v79, v166, &qword_1000A5490, &qword_10008CD80);
          v114 = *v188;
          v115 = v170;
          v116 = (*v188)(a3, 1, v170);
          v70 = v184;
          if (v116 == 1)
          {
            v117 = [v113 creationDate];
            if (v117)
            {
              v118 = v160;
              v119 = v117;
              sub_100084888();

              ObjectType = v114;
              v120 = *v159;
              v121 = v162;
              v122 = v118;
              v102 = v170;
              (*v159)(v162, v122, v170);
              (*v158)(v121, 0, 1, v102);
              v123 = v121;
              a3 = v166;
              v120(v171, v123, v102);
              v124 = (ObjectType)(a3, 1, v102);
            }

            else
            {
              v125 = v162;
              v102 = v170;
              (*v158)(v162, 1, 1, v170);
              sub_100084898();
              if ((v114)(v125, 1, v102) != 1)
              {
                sub_1000058F0(v162, &qword_1000A5490, &qword_10008CD80);
              }

              v124 = (v114)(a3, 1, v102);
            }

            if (v124 != 1)
            {
              sub_1000058F0(a3, &qword_1000A5490, &qword_10008CD80);
            }
          }

          else
          {
            (*v159)(v171, a3, v115);
            v102 = v115;
          }

          v5 &= v5 - 1;
          v103 = v171;
          isa = sub_100084848().super.isa;
          (*v174)(v103, v102);
          [v113 setCreationDate:isa];

          sub_10003EAB4(v194);
          v79 = v167;
          sub_10004F27C(v167, _s3TagVMa);
          v100 = v185;
          v96 = v176;
          v99 = v175;
          goto LABEL_55;
        }

        sub_10000650C(v191, v190);
        sub_10003EAB4(v194);

        sub_10004F27C(v79, _s3TagVMa);
        sub_10004F27C(v173, type metadata accessor for ICArchiveModel);
        v5 = v177;
        a3 = v180;
LABEL_26:
        v70 = v184;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_112:
    swift_once();
  }

  v70 = v184;
  v74 = v182;
LABEL_72:
  v126 = v183;
  v5 = v177;
  v127 = sub_100049124(v74, v183, v169, v181);
  if (v31)
  {

    sub_10000650C(v191, v190);
    v128 = v173;
    goto LABEL_107;
  }

  v129 = v127;
  objc_opt_self();
  v130 = swift_dynamicCastObjCClass();
  if (!v130 || (v131 = *&v173[*(v172 + 36)]) == 0)
  {

    goto LABEL_103;
  }

  ObjectType = v130;
  v132 = _swiftEmptyArrayStorage;
  v192 = _swiftEmptyArrayStorage;
  v133 = *(v131 + 16);
  v134 = v126;
  v188 = v134;
  if (!v133)
  {
    goto LABEL_90;
  }

  v135 = 0;
  v136 = v131 + 40;
  v182 = v133 - 1;
  v185 = v131 + 40;
  do
  {
    v137 = (v136 + 16 * v135);
    v138 = v135;
    while (1)
    {
      if (v138 >= *(v131 + 16))
      {
        __break(1u);
        goto LABEL_114;
      }

      if (!v129[2])
      {
        goto LABEL_80;
      }

      v139 = *(v137 - 1);
      v140 = *v137;

      v141 = sub_100039138(v139, v140);
      if (v142)
      {
        v143 = [*(v129[7] + 8 * v141) identifier];
        if (v143)
        {
          break;
        }
      }

LABEL_80:
      ++v138;
      v137 += 2;
      if (v133 == v138)
      {
        goto LABEL_90;
      }
    }

    v179 = v143;

    sub_1000851F8();
    if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100085228();
    }

    v135 = v138 + 1;
    v134 = sub_100085258();
    v132 = v192;
    v136 = v185;
  }

  while (v182 != v138);
LABEL_90:

  v134 = [ObjectType subFolderIdentifiersOrderedSet];
  if (v132 >> 62)
  {
    goto LABEL_116;
  }

  v144 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v134 = v134;
    v145 = v134;
    if (!v144)
    {
      break;
    }

    v146 = 0;
    v147 = v132 & 0xC000000000000001;
    v148 = v132 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v147)
      {
        v149 = v132;
        v134 = sub_100085648();
      }

      else
      {
        if (v146 >= *(v148 + 16))
        {
          goto LABEL_115;
        }

        v149 = v132;
        v134 = *(v132 + 8 * v146 + 32);
      }

      v150 = v134;
      v132 = v146 + 1;
      if (__OFADD__(v146, 1))
      {
        break;
      }

      [v145 addObject:v134];

      ++v146;
      v151 = v132 == v144;
      v132 = v149;
      if (v151)
      {
        goto LABEL_102;
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    v156 = v134;
    v144 = sub_100085718();
    v134 = v156;
  }

LABEL_102:

  v152 = ObjectType;
  [ObjectType setSubFolderOrderMergeableDataDirty:1];
  [v152 saveSubFolderMergeableDataIfNeeded];

  v5 = v177;
  a3 = v180;
  v70 = v184;
  v126 = v183;
LABEL_103:
  sub_100085348();
  v153 = v173;
  v192 = 0;
  if ([v157 save:&v192])
  {
    v154 = v192;

    sub_10000650C(v191, v190);
    sub_10004F27C(v153, type metadata accessor for ICArchiveModel);
    v71 = v178;
    goto LABEL_28;
  }

  v155 = v192;
  sub_100084688();

  swift_willThrow();
  sub_10000650C(v191, v190);
  v128 = v153;
LABEL_107:
  sub_10004F27C(v128, type metadata accessor for ICArchiveModel);
LABEL_27:
  v71 = v178;
LABEL_28:
  sub_100048E94(v71, "Import Objects from Archive");

  result = (*(v186 + 8))(v70, v187);
  a3[v5] = 0;
  return result;
}

uint64_t sub_100048E94(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_100084F38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084EF8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A5420 != -1)
  {
    swift_once();
  }

  v10 = sub_100084F28();
  sub_10000B614(v10, qword_1000A6620);
  v11 = sub_100084F18();
  sub_100084F48();
  v12 = sub_1000853F8();
  if (sub_1000854D8())
  {

    sub_100084F78();

    if ((*(v3 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, v18, v13, v14, 2u);
  }

  return (*(v7 + 8))(v9, v6);
}

void *sub_100049124(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  v60 = a4;
  v58 = a2;
  v59 = a3;
  v7 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v65 = _swiftEmptyArrayStorage;
    v52 = v9;
    sub_10003BE8C(0, v12, 0);
    v13 = v52;
    v64 = v65;
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v56 = (v14 - 8);
    v57 = v15;
    v53 = *(v14 + 56);
    v54 = v11;
    v55 = v14;
    while (1)
    {
      v62 = v12;
      v57(v11, v16, v13);
      v17 = sub_100042D18(v11, v58, v59, v60);
      if (v5)
      {
        break;
      }

      v21 = v17;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v63 = 0;
      (*v56)(v11, v13);
      v25 = v64;
      v65 = v64;
      v27 = v64[2];
      v26 = v64[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_10003BE8C((v26 > 1), v27 + 1, 1);
        v13 = v52;
        v28 = v27 + 1;
        v25 = v65;
      }

      v25[2] = v28;
      v64 = v25;
      v29 = &v25[4 * v27];
      v29[4] = v21;
      v29[5] = v22;
      v29[6] = v23;
      *(v29 + 56) = v24 & 1;
      v11 = v54;
      v16 += v53;
      v5 = v63;
      v12 = v62 - 1;
      if (v62 == 1)
      {
        v31 = v64;
        goto LABEL_11;
      }
    }

    (*v56)(v11, v13);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
    v28 = _swiftEmptyArrayStorage[2];
    v64 = _swiftEmptyArrayStorage;
    if (v28)
    {
LABEL_11:
      v63 = v5;
      v32 = 0;
      v33 = v31 + 7;
      v64 = _swiftEmptyArrayStorage;
      v61 = v28 - 1;
      v62 = v31 + 7;
LABEL_12:
      v34 = &v33[4 * v32];
      v35 = v32;
      while (v35 < v31[2])
      {
        v36 = v28;
        v37 = *(v34 - 3);
        v32 = v35 + 1;
        if (*v34 != 1)
        {
          v38 = *(v34 - 1);
          v60 = *(v34 - 2);

          v39 = v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = sub_10000F270(0, v64[2] + 1, 1, v64);
          }

          v42 = v64[2];
          v41 = v64[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v58 = v42 + 1;
            v48 = sub_10000F270((v41 > 1), v42 + 1, 1, v64);
            v43 = v58;
            v28 = v36;
            v64 = v48;
          }

          else
          {
            v28 = v36;
          }

          v44 = v64;
          v64[2] = v43;
          v45 = &v44[3 * v42];
          v46 = v59;
          v47 = v60;
          v45[4] = v37;
          v45[5] = v47;
          v45[6] = v46;
          v33 = v62;
          if (v61 == v35)
          {
LABEL_24:
            v5 = v63;
            goto LABEL_25;
          }

          goto LABEL_12;
        }

        v65 = *(v34 - 3);
        sub_100005740(&qword_1000A5B98, &unk_10008B760);
        swift_willThrowTypedImpl();
        v34 += 32;
        ++v35;
        v28 = v36;
        if (v36 == v32)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_25:

      v49 = sub_100049580(v64);

      if (v49[2])
      {
        sub_100005740(&qword_1000A5C88, &qword_10008B890);
        v50 = sub_100085748();
      }

      else
      {
        v50 = &_swiftEmptyDictionarySingleton;
      }

      v65 = v50;
      sub_10004EC38(v49, 1, &v65);
      if (!v5)
      {

        return v65;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100049580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003BE6C(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;

      v5 = v4;
      sub_100005740(&qword_1000A5A38, &unk_10008D320);
      sub_100005740(&qword_1000A6438, &qword_10008CCF8);
      swift_dynamicCast();
      v6 = v12;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_10003BE6C((v7 > 1), v8 + 1, 1);
        v6 = v12;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[3 * v8];
      v9[4] = v11;
      *(v9 + 5) = v6;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1000496CC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v96 = a2;
  v97 = a6;
  v10 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v11 = __chkstk_darwin(v10 - 8);
  v92 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v76 - v13;
  v93 = sub_1000848B8();
  v91 = *(v93 - 8);
  v14 = __chkstk_darwin(v93);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v76 - v17;
  v19 = _s3TagVMa(0);
  v94 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v6;
  v22 = &v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  swift_beginAccess();
  v23 = *(v22 + 1);
  v100[0] = *v22;
  v100[1] = v23;
  v101 = *(v22 + 16);
  v102 = v23;
  sub_100005888(&v102, v99, &qword_1000A6690, &qword_10008D120);
  v24 = a5;
  v25 = a1;
  v26 = v103;
  v27 = sub_10003FAF8(a4, v24, v100);
  v28 = v26;
  sub_10003EAB4(v100);
  if (v26)
  {
    return v28;
  }

  v87 = v22;
  v103 = 0;
  v90 = v21;
  v88 = v19;
  v89 = v18;
  v86 = v16;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    v28 = v97;
    v36 = v96;
    if (!v35)
    {
      v41 = v25;
LABEL_35:
      v28 = *(v41 + 8);

      return v28;
    }

    v37 = v35;
    v38 = v27;
    v39 = v103;
    v40 = sub_100049124(v36, v37, &off_10009E9B0, v28);
    if (v39)
    {

      return v28;
    }

    v44 = sub_10004A65C(v40, ICFolder_ptr, sub_10003A794);

    v41 = v25;
    v32 = sub_10003FCAC(v37, v44);

    v103 = 0;

LABEL_34:

    goto LABEL_35;
  }

  v31 = v30;
  v32 = v27;
  v33 = v103;
  v34 = sub_100049124(v96, v31, &off_10009E978, v97);
  if (v33)
  {

    return v28;
  }

  v41 = v25;
  v98 = v27;
  v42 = sub_10004A65C(v34, ICFolder_ptr, sub_10003A794);

  v43 = sub_10003FCAC(v31, v42);
  v103 = 0;
  v45 = v43;

  v46 = *(v25 + 48);
  if (!v46)
  {
    goto LABEL_34;
  }

  v85 = v31;
  v77 = v32;
  v47 = v46 + 56;
  v48 = 1 << *(v46 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v46 + 56);
  v51 = (v48 + 63) >> 6;
  v78 = "fallbackMinimumVersion";
  v96 = v91 + 6;
  v80 = (v91 + 4);
  v79 = (v91 + 7);
  ++v91;

  v53 = 0;
  v54 = v90;
  v81 = v41;
  v84 = v51;
  v83 = v47;
  v82 = v52;
  while (v50)
  {
LABEL_23:
    sub_10001172C(*(v52 + 48) + *(v94 + 72) * (__clz(__rbit64(v50)) | (v53 << 6)), v54);
    v59 = *v87;
    v97 = v87[2];
    v60 = sub_100085068();
    v61 = [objc_opt_self() hashtagWithDisplayText:v60 account:v85 createIfNecessary:1];

    if (!v61)
    {
      goto LABEL_37;
    }

    v62 = v61;
    v63 = v95;
    v64 = v61;
    if (v59)
    {
      v65 = sub_100085068();
      [v61 setDisplayText:v65];

      [v61 unmarkForDeletion];
      v66 = sub_100085068();
      [v61 updateChangeCountWithReason:v66];
    }

    sub_100005888(v90, v63, &qword_1000A5490, &qword_10008CD80);
    v67 = *v96;
    v68 = v93;
    if ((*v96)(v63, 1, v93) == 1)
    {
      v69 = [v61 creationDate];
      v56 = v81;
      if (v69)
      {
        v70 = v69;
        sub_100084888();

        v71 = *v80;
        v72 = v92;
        (*v80)(v92, v86, v68);
        (*v79)(v72, 0, 1, v68);
        v73 = v72;
        v63 = v95;
        v71(v89, v73, v68);
        v64 = v62;
      }

      else
      {
        v74 = v92;
        (*v79)(v92, 1, 1, v68);
        sub_100084898();
        if (v67(v74, 1, v68) != 1)
        {
          sub_1000058F0(v74, &qword_1000A5490, &qword_10008CD80);
        }
      }

      v75 = v67(v63, 1, v68);
      v55 = v89;
      if (v75 != 1)
      {
        sub_1000058F0(v63, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      v55 = v89;
      (*v80)(v89, v63, v68);
      v56 = v81;
    }

    v50 &= v50 - 1;
    isa = sub_100084848().super.isa;
    (*v91)(v55, v68);
    [v64 setCreationDate:isa];

    v54 = v90;
    sub_10004F27C(v90, _s3TagVMa);
    v41 = v56;
    v52 = v82;
    v47 = v83;
    v51 = v84;
  }

  while (1)
  {
    v58 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v58 >= v51)
    {

      v32 = v77;
      goto LABEL_34;
    }

    v50 = *(v47 + 8 * v58);
    ++v53;
    if (v50)
    {
      v53 = v58;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_37:
  result = sub_100085708();
  __break(1u);
  return result;
}

NSObject *sub_10004A03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void, void, void), void *a6)
{
  v7 = v6;
  v51 = a5;
  v50 = a4;
  v65 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v46 - v12;
  v14 = *(a2 + 16);
  isa = _swiftEmptyArrayStorage;
  v53 = a6;
  v48 = a2;
  if (v14)
  {
    v49 = v7;
    v47 = a1;
    v58 = _swiftEmptyArrayStorage;
    sub_10003BDAC(0, v14, 0);
    isa = v58;
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v56 = v17;
    v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v55 = *(v16 + 56);
    v54 = (v16 - 8);
    do
    {
      v19 = v65;
      v20 = v16;
      v56(v13, v18, v65);
      v21 = sub_100084AA8();
      (*v54)(v13, v19);
      v58 = isa;
      v23 = *(isa + 2);
      v22 = *(isa + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_10003BDAC((v22 > 1), v23 + 1, 1);
        isa = v58;
      }

      *(isa + 2) = v24;
      *(isa + v23 + 4) = v21;
      v18 += v55;
      v14 = (v14 - 1);
      v16 = v20;
    }

    while (v14);
    a1 = v47;
    v7 = v49;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage[2];
    if (!v24)
    {
      goto LABEL_24;
    }
  }

  v25 = 0;
  v26 = 32;
  while (1)
  {
    v27 = *(isa + v26);
    v28 = __OFADD__(v25, v27);
    v25 += v27;
    if (v28)
    {
      break;
    }

    v26 += 8;
    if (!--v24)
    {
      while (1)
      {

        if (qword_1000A5418 != -1)
        {
          swift_once();
        }

        v29 = sub_100084FB8();
        sub_10000B614(v29, qword_1000A6608);
        v30 = sub_100084FA8();
        v31 = sub_100085368();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 134217984;
          *(v32 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v30, v31, "Importing note… {attachmentCount: %ld}", v32, 0xCu);
        }

        result = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        isa = sub_100085338(result, 1).super.isa;
        v34 = v7 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
        swift_beginAccess();
        v35 = *(v34 + 1);
        v61[0] = *v34;
        v61[1] = v35;
        v62 = *(v34 + 16);
        v63 = v35;
        sub_100005888(&v63, v57, &qword_1000A6690, &qword_10008D120);
        v36 = v52;
        v37 = sub_10007AC84(v50, v51, v61);
        if (v36)
        {
          sub_10003EAB4(v61);
          v37 = [(objc_class *)isa completedUnitCount];
          v38 = v37 + 1;
          if (!__OFADD__(v37, 1))
          {
            goto LABEL_26;
          }

          __break(1u);
        }

        v30 = v37;
        sub_10003EAB4(v61);
        v39 = v7;
        v7 = v30;
        v40 = sub_100049124(v48, v7, &off_10009E9E8, isa);
        if (!v36)
        {
          v49 = v39;
          v42 = v40;

          v43 = sub_10004A65C(v42, ICAttachment_ptr, sub_10003A7A8);

          v44 = *(v34 + 1);
          v59[0] = *v34;
          v59[1] = v44;
          v60 = *(v34 + 16);
          v64 = *(v34 + 1);
          sub_100005888(&v64, v57, &qword_1000A6690, &qword_10008D120);
          v45 = sub_10007BF04(v7, v43, v59);

          sub_10003EAB4(v59);
          sub_10007C34C(v7);

          v14 = &ICArchiveNotesPreviewer;
          sub_10004CB6C([v53 completedUnitCount]);
          goto LABEL_28;
        }

        v41 = [(objc_class *)isa completedUnitCount];
        v38 = v41 + 1;
        if (!__OFADD__(v41, 1))
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_24:
        v25 = 0;
      }

      __break(1u);
      __break(1u);
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_28:
  v30 = *(a1 + 8);

  result = [isa v14[26].base_prots];
  v38 = &result->isa + 1;
  if (!__OFADD__(result, 1))
  {
LABEL_26:
    [(objc_class *)isa setCompletedUnitCount:v38];

    return v30;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10004A65C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t))
{
  v34 = &_swiftEmptyDictionarySingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        v16 = *(*(a1 + 56) + 8 * v12);
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v32 = result;
      if (*(v34 + 3) <= *(v34 + 2))
      {
        v35 = *(v34 + 2);

        v20 = v16;
        a3(v35 + 1, 1);
        v19 = &_swiftEmptyDictionarySingleton;
      }

      else
      {

        v18 = v16;
        v19 = v34;
      }

      v34 = v19;
      sub_100085A08();
      sub_100085118();
      result = sub_100085A38();
      v21 = v34 + 64;
      v22 = -1 << v34[32];
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*&v34[8 * (v23 >> 6) + 64]) == 0)
      {
        break;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*&v34[8 * (v23 >> 6) + 64])) | v23 & 0x7FFFFFFFFFFFFFC0;
      v26 = v32;
LABEL_24:
      *&v21[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
      v31 = (*(v34 + 6) + 16 * v25);
      *v31 = v14;
      v31[1] = v15;
      *(*(v34 + 7) + 8 * v25) = v26;
      ++*(v34 + 2);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v27 = 0;
    v28 = (63 - v22) >> 6;
    v26 = v32;
    while (++v24 != v28 || (v27 & 1) == 0)
    {
      v29 = v24 == v28;
      if (v24 == v28)
      {
        v24 = 0;
      }

      v27 |= v29;
      v30 = *&v21[8 * v24];
      if (v30 != -1)
      {
        v25 = __clz(__rbit64(~v30)) + (v24 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v8)
      {

        return v34;
      }

      v7 = *(v4 + 8 * v17);
      ++v10;
      if (v7)
      {
        v10 = v17;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10004A8CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v105 = a2;
  v4 = sub_100084D78();
  __chkstk_darwin(v4 - 8);
  v93 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for NoteMetadata(0);
  __chkstk_darwin(v92);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100084918();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000847C8();
  v112 = *(v114 - 8);
  v9 = __chkstk_darwin(v114);
  v98 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v101 = &v84 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v84 - v14;
  v16 = __chkstk_darwin(v13);
  v109 = &v84 - v17;
  __chkstk_darwin(v16);
  v19 = &v84 - v18;
  v20 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v21 = __chkstk_darwin(v20 - 8);
  v102 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v113 = &v84 - v23;
  if (qword_1000A5418 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v24 = sub_100084FB8();
    v107 = sub_10000B614(v24, qword_1000A6608);
    v25 = sub_100084FA8();
    v26 = sub_100085368();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "importing a markdown note", v27, 2u);
    }

    v28 = objc_opt_self();
    v29 = &ICArchiveNotesPreviewer;
    v30 = [v28 defaultManager];
    v31 = sub_100085358();
    if (v3)
    {

      return;
    }

    v32 = v31;
    v91 = v15;
    v90 = v7;

    v115 = _swiftEmptyArrayStorage;
    v33 = v112;
    (*(v112 + 56))(v113, 1, 1, v114);
    v34 = *(v32 + 16);
    if (!v34)
    {
      break;
    }

    v15 = 0;
    v111 = (v33 + 16);
    v7 = (v33 + 8);
    while (v15 < *(v32 + 16))
    {
      v35 = v29;
      v36 = v28;
      v37 = v114;
      (*(v112 + 16))(v19, v32 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v15, v114);
      sub_10004BD88(v19, &v115, v113);
      ++v15;
      (*v7)(v19, v37);
      v28 = v36;
      v29 = v35;
      v3 = 0;
      if (v34 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

LABEL_10:

  v38 = v115;
  v99 = v115[2];
  if (v99)
  {
    v86 = v28;
    v95 = v110 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v15 = 0;
    v100 = v112 + 16;
    v97 = (v108 + 8);
    v96 = (v112 + 48);
    v88 = (v112 + 32);
    v7 = v109;
    v87 = v38;
    v107 = (v112 + 8);
    while (1)
    {
      if (v15 >= v38[2])
      {
        goto LABEL_49;
      }

      v39 = v38;
      (*(v112 + 16))(v7, v38 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v15, v114);
      v40 = sub_1000847D8();
      v42 = v41;
      v106 = v15;
      v43 = objc_opt_self();
      v110 = v42;
      v44 = v103;
      sub_100084908();
      isa = sub_1000848E8().super.isa;
      v46 = v44;
      v47 = v110;
      (*v97)(v46, v104);
      v48 = [v43 newEmptyNoteWithUUID:isa folder:v105];

      sub_100006464(v40, v47);
      sub_10004EA8C(v40, v47);
      v108 = v40;
      if (!v49)
      {
        v118 = v40;
        v119 = v47;
        sub_100006464(v40, v47);
        sub_100005740(&qword_1000A6720, &qword_10008D358);
        if (swift_dynamicCast())
        {
          sub_10001C024(v116, &v120);
          sub_10000626C(&v120, *(&v121 + 1));
          if (sub_100085768())
          {
            sub_10000650C(v108, v110);
            sub_10000626C(&v120, *(&v121 + 1));
            sub_100085758();
            sub_100006304(&v120);
            goto LABEL_21;
          }

          sub_100006304(&v120);
          v47 = v110;
          v40 = v108;
        }

        else
        {
          v117 = 0;
          memset(v116, 0, sizeof(v116));
          sub_1000058F0(v116, &qword_1000A6728, &qword_10008D360);
        }

        sub_10004E58C(v40, v47);
      }

      sub_10000650C(v40, v47);
LABEL_21:
      v50 = objc_allocWithZone(ICMarkdownRepresentation);
      v51 = sub_100085068();

      *&v120 = 0;
      v52 = [v50 initWithPlainMarkdown:v51 error:&v120];

      v38 = v39;
      if (!v52)
      {
        v83 = v120;
        sub_100084688();

        swift_willThrow();
        sub_10000650C(v108, v110);
        (*v107)(v109, v114);
        goto LABEL_47;
      }

      v53 = v120;
      v54 = [v52 createRenderableAttributedString];
      v55 = [v48 textStorage];
      v111 = v54;
      if (v55)
      {
        v56 = v55;
        v57 = [objc_allocWithZone(ICTextController) init];
        [v56 setStyler:v57];
        [v56 setConvertAttributes:1];
        [v56 replaceCharactersInRange:0 withAttributedString:{0, v111}];
        [v56 setConvertAttributes:0];
        [v56 setStyler:0];
      }

      v58 = v102;
      sub_100005888(v113, v102, &qword_1000A56E8, &qword_10008D350);
      if ((*v96)(v58, 1, v114) == 1)
      {
        sub_1000058F0(v58, &qword_1000A56E8, &qword_10008D350);
        v59 = v107;
      }

      else
      {
        v60 = v91;
        (*v88)(v91, v58, v114);
        sub_10004F2FC(v48, v60);
        v59 = v107;
        (*v107)(v60, v114);
      }

      if (*(v95 + 33) != 1)
      {
        goto LABEL_39;
      }

      v94 = v48;
      v61 = v109;
      if (sub_1000846E8() == 0x646D2E65746F6ELL && v62 == 0xE700000000000000)
      {

LABEL_32:
        v89 = v52;
        v64 = v98;
        sub_100084748();
        v65 = v101;
        sub_100084718();
        v66 = v107;
        v67 = *v107;
        v68 = v114;
        (*v107)(v64, v114);
        LOBYTE(v116[0]) = 0;
        v69 = [v86 *&v29[27].flags];
        sub_1000847A8();
        v70 = sub_100085068();

        v71 = [v69 fileExistsAtPath:v70 isDirectory:v116];

        if (v71)
        {
          v72 = v67;
          v73 = sub_1000847D8();
          v75 = v74;
          v122 = 0;
          v120 = 0u;
          v121 = 0u;
          sub_100006464(v73, v74);
          sub_100084D68();
          sub_10004F178(&qword_1000A5718, type metadata accessor for NoteMetadata, &unk_10008B2C8);
          sub_100084E18();
          v48 = v94;
          v52 = v89;
          v85 = v75;
          v76 = [v94 managedObjectContext];
          v38 = v87;
          if (v76)
          {
            v77 = v76;
            v78 = __chkstk_darwin(v76);
            *(&v84 - 4) = v90;
            *(&v84 - 3) = v48;
            *(&v84 - 2) = v78;
            sub_100085488();
            v72(v101, v114);
            sub_10000650C(v73, v85);
          }

          else
          {
            v72(v101, v114);
            sub_10000650C(v73, v85);
          }

          sub_10004F27C(v90, type metadata accessor for NoteMetadata);
          v59 = v107;
LABEL_39:
          v79 = v108;
        }

        else
        {
          v67(v65, v68);
          v38 = v87;
          v59 = v66;
          v79 = v108;
          v48 = v94;
          v52 = v89;
        }

        v61 = v109;
        goto LABEL_41;
      }

      v63 = sub_100085948();

      if (v63)
      {
        goto LABEL_32;
      }

      v59 = v107;
      v79 = v108;
      v48 = v94;
LABEL_41:
      v19 = v106 + 1;
      [v48 save];

      v15 = v19;
      sub_10000650C(v79, v110);
      (*v59)(v61, v114);
      v7 = v61;
      if (v99 == v19)
      {
        goto LABEL_47;
      }
    }
  }

  v80 = sub_100084FA8();
  v81 = sub_100085378();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "could not find markdown file URLs", v82, 2u);
  }

LABEL_47:
  sub_1000058F0(v113, &qword_1000A56E8, &qword_10008D350);
}

void sub_10004BAF8(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v22[0] = a3;
  v22[7] = a2;
  v7 = sub_100084668();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A5418 != -1)
  {
    swift_once();
  }

  v11 = sub_100084FB8();
  sub_10000B614(v11, qword_1000A6608);
  v12 = sub_100084FA8();
  v13 = sub_100085368();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "found a folder", v14, 2u);
  }

  sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008B5D0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v16 = NSURLIsDirectoryKey;
  sub_100079F54(inited);
  swift_setDeallocating();
  sub_10004F27C(inited + 32, type metadata accessor for URLResourceKey);
  sub_1000846C8();

  if (!v4)
  {
    v17 = sub_100084638();
    (*(v8 + 8))(v10, v7);
    if (v17 != 2 && (v17 & 1) != 0)
    {
      v18 = *v22[0];
      v19 = *a4;
      v20 = *(a4 + 8);
      v21 = *v22[0];
      sub_100046D04(a1, v18, v19, v20);
    }
  }
}

uint64_t sub_10004BD88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100084668();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000847C8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100084698() == 25709 && v13 == 0xE200000000000000)
  {

LABEL_5:
    (*(v10 + 16))(v12, a1, v9);
    v15 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_10000F3B8(0, v15[2] + 1, 1, v15);
      *a2 = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_10000F3B8((v17 > 1), v18 + 1, 1, v15);
      *a2 = v15;
    }

    v15[2] = v18 + 1;
    return (*(v10 + 32))(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v12, v9);
  }

  v26 = a3;
  v14 = sub_100085948();

  if (v14)
  {
    goto LABEL_5;
  }

  sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008B5D0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v21 = NSURLIsDirectoryKey;
  sub_100079F54(inited);
  swift_setDeallocating();
  sub_10004F27C(inited + 32, type metadata accessor for URLResourceKey);
  v22 = v28;
  sub_1000846C8();

  if (!v22)
  {
    v23 = sub_100084638();
    result = (*(v27 + 8))(v8, v6);
    if (v23 != 2 && (v23 & 1) != 0)
    {
      v24 = v26;
      sub_1000058F0(v26, &qword_1000A56E8, &qword_10008D350);
      (*(v10 + 16))(v24, a1, v9);
      return (*(v10 + 56))(v24, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_10004C120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7, void *a8)
{
  v82 = a3;
  v83 = a8;
  v85 = a7;
  v89 = a5;
  v90 = a6;
  v81 = a2;
  v9 = sub_100005740(&qword_1000A6730, &qword_10008D368);
  __chkstk_darwin(v9 - 8);
  v11 = &v80 - v10;
  v12 = sub_100084668();
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  __chkstk_darwin(v12);
  v86 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000847C8();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v84 = &v80 - v21;
  __chkstk_darwin(v20);
  v23 = &v80 - v22;
  v24 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v80 - v28;
  sub_100005888(a1, v91, &qword_1000A5AD0, &unk_10008B5E0);
  if (v92)
  {
    v30 = swift_dynamicCast();
    v31 = *(v16 + 56);
    v31(v29, v30 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v29, 1, v15) != 1)
    {
      v32 = sub_100084798(1);
      v34 = v33;
      result = (*(v16 + 8))(v29, v15);
      v93 = v32;
      if (!v34)
      {
        return result;
      }

LABEL_12:
      sub_100084748();
      v31(v27, 0, 1, v15);
      sub_1000846D8();

      sub_1000058F0(v27, &qword_1000A56E8, &qword_10008D350);
      v36 = sub_100084798(1);
      v38 = sub_10002A3E0(v36, v37, v90);

      if (v38)
      {
        sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10008B5D0;
        *(inited + 32) = NSURLTotalFileSizeKey;
        v40 = NSURLTotalFileSizeKey;
        sub_100079F54(inited);
        swift_setDeallocating();
        sub_10004F27C(inited + 32, type metadata accessor for URLResourceKey);
        sub_1000846C8();

        v42 = v87;
        v41 = v88;
        (*(v88 + 56))(v11, 0, 1, v87);
        v43 = v86;
        (*(v41 + 32))(v86, v11, v42);
        v44 = sub_100084648();
        if (v45)
        {
          (*(v41 + 8))(v43, v42);
          if (qword_1000A5418 != -1)
          {
            swift_once();
          }

          v46 = sub_100084FB8();
          sub_10000B614(v46, qword_1000A6608);
          (*(v16 + 16))(v19, v23, v15);
          v47 = sub_100084FA8();
          v48 = sub_100085378();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v90 = v23;
            v51 = v50;
            v91[0] = v50;
            *v49 = 136315138;
            v52 = sub_100084798(1);
            v54 = v53;
            v55 = *(v16 + 8);
            v55(v19, v15);
            v56 = sub_100038A4C(v52, v54, v91);

            *(v49 + 4) = v56;
            _os_log_impl(&_mh_execute_header, v47, v48, "Unable to import attachment at path %s because unable to get file size.", v49, 0xCu);
            sub_100006304(v51);

            return (v55)(v90, v15);
          }

          v57 = *(v16 + 8);
          v57(v19, v15);
          return (v57)(v23, v15);
        }

        v58 = v85;
        if ([v85 attachmentExceedsMaxSizeAllowed:v44])
        {
          if (qword_1000A5418 != -1)
          {
            swift_once();
          }

          v60 = sub_100084FB8();
          sub_10000B614(v60, qword_1000A6608);
          v61 = v84;
          (*(v16 + 16))(v84, v23, v15);
          v62 = sub_100084FA8();
          v63 = sub_100085378();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v90 = v23;
            v66 = v65;
            v91[0] = v65;
            *v64 = 136315138;
            v67 = sub_100084798(1);
            v68 = v61;
            v70 = v69;
            v71 = *(v16 + 8);
            v71(v68, v15);
            v72 = sub_100038A4C(v67, v70, v91);

            *(v64 + 4) = v72;
            _os_log_impl(&_mh_execute_header, v62, v63, "Unable to import attachment at path %s because it exceeds maximum allowed size in note.", v64, 0xCu);
            sub_100006304(v66);

            (*(v88 + 8))(v86, v42);
            return (v71)(v90, v15);
          }

          v57 = *(v16 + 8);
          v57(v61, v15);
          (*(v88 + 8))(v43, v42);
          return (v57)(v23, v15);
        }

        sub_1000846F8(v59);
        v74 = v73;
        v75 = [v58 addAttachmentWithFileURL:v73];

        if (v75)
        {
          v76 = [objc_allocWithZone(ICTextAttachment) initWithAttachment:v75];
          v77 = [objc_opt_self() attributedStringWithAttachment:v76];
          v78 = [v77 ic_range];
          [v83 ic_replaceCharactersInRange:v81 withAttributedSubstring:v82 fromRange:{v77, v78, v79}];

          v43 = v86;
        }

        [v58 save];
        (*(v41 + 8))(v43, v42);
      }

      return (*(v16 + 8))(v23, v15);
    }
  }

  else
  {
    sub_1000058F0(v91, &qword_1000A5AD0, &unk_10008B5E0);
    v31 = *(v16 + 56);
    v31(v29, 1, 1, v15);
  }

  sub_1000058F0(v29, &qword_1000A56E8, &qword_10008D350);
  sub_100005888(a1, v91, &qword_1000A5AD0, &unk_10008B5E0);
  if (!v92)
  {
    return sub_1000058F0(v91, &qword_1000A5AD0, &unk_10008B5E0);
  }

  result = swift_dynamicCast();
  if (!result)
  {
    v93 = 0;
    v94 = 0;
    return result;
  }

  if (v94)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10004CB6C(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning;
  if ((v1[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] & 1) != 0 || (result & 0x1F) == 0)
  {
    if (qword_1000A5418 == -1)
    {
      goto LABEL_4;
    }

    while (1)
    {
      swift_once();
LABEL_4:
      v4 = sub_100084FB8();
      sub_10000B614(v4, qword_1000A6608);
      v5 = sub_100084FA8();
      v6 = sub_100085368();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Saving batch of imported notes and resetting inserted objects…", v7, 2u);
      }

      v8 = *&v2[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context];
      v9 = [v8 insertedObjects];
      sub_100008250(0, &qword_1000A64B8, NSManagedObject_ptr);
      sub_10004F214();
      v10 = sub_100085298();

      v28[0] = 0;
      if (![v8 save:v28])
      {
        v15 = v28[0];

        sub_100084688();

        return swift_willThrow();
      }

      v26 = v3;
      v27 = v2;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = v28[0];

        sub_100085578();
        sub_1000852C8();
        v10 = v28[1];
        v12 = v28[2];
        v13 = v28[3];
        v2 = v28[4];
        v14 = v28[5];
      }

      else
      {
        v16 = -1 << *(v10 + 32);
        v12 = (v10 + 56);
        v13 = ~v16;
        v17 = -v16;
        v18 = v17 < 64 ? ~(-1 << v17) : -1;
        v14 = (v18 & *(v10 + 56));
        v19 = v28[0];

        v2 = 0;
      }

      v25 = v13;
      v3 = (v13 + 64) >> 6;
      if (v10 < 0)
      {
        break;
      }

LABEL_15:
      v20 = v2;
      v21 = v14;
      v22 = v2;
      if (v14)
      {
LABEL_19:
        v23 = (v21 - 1) & v21;
        v24 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
        if (v24)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v22 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v3)
        {
          goto LABEL_25;
        }

        v21 = v12[v22];
        ++v20;
        if (v21)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    while (sub_1000855D8())
    {
      swift_dynamicCast();
      v24 = v28[0];
      v22 = v2;
      v23 = v14;
      if (!v28[0])
      {
        break;
      }

LABEL_23:
      [v8 refreshObject:v24 mergeChanges:{0, v25}];

      v2 = v22;
      v14 = v23;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_25:
    sub_100010FF4(v10);

    v27[v26] = 0;
  }

  return result;
}

void sub_10004CF00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 1;
  }
}

void *sub_10004CF5C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100005740(&qword_1000A64C0, &qword_10008D370);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Int sub_10004CFD0(uint64_t *a1)
{
  v2 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10004E8FC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10004D084(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10004D084(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000858F8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
        v6 = sub_100085248();
        v6[2] = v5;
      }

      v7 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10004D464(v8, v9, a1, v4);
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
    return sub_10004D1C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004D1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      sub_100011824();
      v25 = sub_100085048();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004D464(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v125 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v133 = &v118 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v118 - v16;
  result = __chkstk_darwin(v15);
  v139 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_10004E488(a4);
    }

    v141 = result;
    v113 = *(result + 16);
    if (v113 >= 2)
    {
      while (*a3)
      {
        a4 = v113 - 1;
        v114 = *(result + 16 * v113);
        v115 = result;
        v116 = *(result + 16 * (v113 - 1) + 40);
        sub_10004DE60(*a3 + *(v10 + 72) * v114, *a3 + *(v10 + 72) * *(result + 16 * (v113 - 1) + 32), *a3 + *(v10 + 72) * v116, v5);
        if (v6)
        {
        }

        if (v116 < v114)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10004E488(v115);
        }

        if (v113 - 2 >= *(v115 + 2))
        {
          goto LABEL_122;
        }

        v117 = &v115[16 * v113];
        *v117 = v114;
        *(v117 + 1) = v116;
        v141 = v115;
        sub_10004E3FC(a4);
        result = v141;
        v113 = *(v141 + 16);
        if (v113 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v136 = (v10 + 8);
  v137 = v10 + 16;
  v135 = (v10 + 32);
  v21 = _swiftEmptyArrayStorage;
  v123 = a3;
  v120 = a4;
  v140 = v9;
  v119 = v10;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v127 = v24;
      v27 = *(v25 + 16);
      v27(v139, v5, v23);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v122 = v22;
      v30 = v138;
      v130 = v27;
      v27(v138, v28, v23);
      v31 = sub_100011824();
      v32 = v139;
      v129 = v31;
      LODWORD(v132) = sub_100085048();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v128 = v33;
      result = (v33)(v32, v23);
      v34 = v122 + 2;
      v134 = v26;
      v35 = v127 + v26 * (v122 + 2);
      while (1)
      {
        v36 = v131;
        if (v131 == v34)
        {
          break;
        }

        v38 = v139;
        v37 = v140;
        v39 = v130;
        (v130)(v139, v35, v140);
        v40 = v6;
        v41 = v138;
        v39(v138, v5, v37);
        v42 = sub_100085048() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v128;
        v128(v43, v37);
        result = v44(v38, v37);
        ++v34;
        v35 += v134;
        v5 += v134;
        if ((v132 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v122;
      a3 = v123;
      v10 = v119;
      v21 = v126;
      a4 = v120;
      v9 = v140;
      if (v132)
      {
        if (v36 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v36)
        {
          v45 = v134 * (v36 - 1);
          v5 = v36 * v134;
          v131 = v36;
          v46 = v36;
          v47 = v122;
          v48 = v122 * v134;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v132 = *v135;
              (v132)(v125, v50 + v48, v140, v21);
              if (v48 < v45 || v50 + v48 >= v50 + v5)
              {
                v49 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v140;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v50 + v45, v125, v49);
              a3 = v123;
              v21 = v126;
            }

            ++v47;
            v45 -= v134;
            v5 -= v134;
            v48 += v134;
          }

          while (v47 < v46);
          v10 = v119;
          a4 = v120;
          v9 = v140;
          v22 = v122;
          v36 = v131;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v126;
    }

    else
    {
      result = sub_10000EC24(0, *(v126 + 2) + 1, 1, v126);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      result = sub_10000EC24((v52 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_133;
    }

    v127 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_10004DE60(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_10004E488(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v141 = v93;
        result = sub_10004E3FC(v5);
        v21 = v141;
        v53 = *(v141 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v120;
    v9 = v140;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v118 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v134 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = v100 - v36;
  v132 = v97;
  v124 = v98;
  a4 = v97 + v36 * v98;
  v127 = v5;
LABEL_85:
  v130 = v99;
  v131 = v36;
  v128 = a4;
  v129 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v139;
    v105 = v134;
    (v134)(v139, a4, v9, v21);
    v106 = v138;
    v105(v138, v103, v140);
    sub_100011824();
    v107 = sub_100085048();
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v131 + 1;
      v99 = &v130[v124];
      v102 = v129 - 1;
      a4 = v128 + v124;
      v5 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v118;
      v22 = v122;
      a3 = v123;
      v10 = v119;
      if (v127 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v110 = *v135;
    v111 = v133;
    (*v135)(v133, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_10004DE60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v53 = &v44 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v55 = a3;
  v16 = (a2 - a1) / v14;
  v59 = a1;
  v58 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v18;
    if (v18 >= 1)
    {
      v29 = -v14;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v18;
      v31 = v55;
      v46 = a1;
      v47 = a4;
      v50 = v29;
      do
      {
        v44 = v28;
        v32 = a2 + v29;
        v33 = v28;
        v51 = a2;
        v52 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v59 = a2;
            v28 = v44;
            goto LABEL_59;
          }

          v35 = v31;
          v45 = v33;
          v55 = v31 + v29;
          v36 = v30 + v29;
          v37 = *v49;
          v38 = v53;
          v39 = v30 + v29;
          v40 = v30;
          v41 = v56;
          (*v49)(v53, v39, v56);
          v42 = v54;
          (v37)(v54, v32, v41);
          sub_100011824();
          LOBYTE(v37) = sub_100085048();
          v43 = *v48;
          (*v48)(v42, v41);
          v43(v38, v41);
          if (v37)
          {
            break;
          }

          v33 = v36;
          v31 = v55;
          if (v35 < v40 || v55 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v52;
            a1 = v46;
          }

          else
          {
            v32 = v52;
            a1 = v46;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v36;
          v34 = v36 > v47;
          v29 = v50;
          a2 = v51;
          if (!v34)
          {
            v28 = v33;
            goto LABEL_58;
          }
        }

        v31 = v55;
        if (v35 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v46;
          v30 = v40;
        }

        else
        {
          a2 = v52;
          a1 = v46;
          v30 = v40;
          if (v35 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v45;
        v29 = v50;
      }

      while (v30 > v47);
    }

LABEL_58:
    v59 = a2;
LABEL_59:
    v57 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v17;
    v57 = a4 + v17;
    if (v17 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v14;
      v49 = (v8 + 8);
      do
      {
        v20 = v53;
        v21 = v56;
        v22 = v50;
        v50(v53, a2, v56);
        v23 = v54;
        v22(v54, a4, v21);
        sub_100011824();
        v24 = sub_100085048();
        v25 = *v49;
        (*v49)(v23, v21);
        v25(v20, v21);
        if (v24)
        {
          v26 = v48;
          if (a1 < a2 || a1 >= v48 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

  sub_10004E49C(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_10004E3FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10004E488(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10004E49C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10004E58C(uint64_t a1, unint64_t a2)
{
  sub_100006464(a1, a2);
  sub_10004E910(a1, a2);
  v4 = sub_100085108();

  return v4;
}

uint64_t sub_10004E5F8@<X0>(uint64_t *a3@<X8>)
{
  result = sub_100085108();
  *a3 = result;
  a3[1] = v5;
  return result;
}

id sub_10004E634(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v11 = a4;
  v15 = objc_allocWithZone(a6);

  return sub_10004E6BC(a1, a2, a3, v11, v10, v15, a7, a8);
}

id sub_10004E6BC(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v15 = a4;
  ObjectType = swift_getObjectType();
  a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v17 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&a6[v17] = sub_10003D4E0(_swiftEmptyArrayStorage);
  *&a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v18 = &a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v18 = 0u;
  v18[1] = 0u;
  *&a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = a1;
  if (v15 == 2 || (a4 & 1) == 0)
  {
    v27 = &a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    v28 = *(a2 + 16);
    *v27 = *a2;
    *(v27 + 1) = v28;
    *(v27 + 16) = *(a2 + 32);
    v29 = a1;
    sub_10003EA58(a2, v34);
  }

  else
  {
    v19 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v21 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v22 = &a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    *v22 = IsAlexandriaDemoModeEnabled;
    v22[1] = v21;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 1) = 0;
    v22[32] = 1;
    v22[33] = a5;
    if (qword_1000A5418 != -1)
    {
      swift_once();
    }

    v23 = sub_100084FB8();
    sub_10000B614(v23, qword_1000A6608);
    v24 = sub_100084FA8();
    v25 = sub_100085368();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "archiver init", v26, 2u);
    }
  }

  v30 = &a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v30 = a3;
  v30[1] = a8;
  v33.receiver = a6;
  v33.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v33, "init");
  sub_100044760();
  sub_10003EAB4(a2);

  return v31;
}

void *sub_10004E910(uint64_t a1, unint64_t a2)
{
  v4 = sub_100084818();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_10000650C(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_10004CF5C(v10, 0);
      v14 = sub_1000847E8();
      sub_10000650C(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10004EA8C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_100085108();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_100085108();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_100084598();
  if (a1)
  {
    a1 = sub_1000845B8();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_100084598() || !__OFSUB__(v5, sub_1000845B8()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1000845A8();
  return sub_100085108();
}

void sub_10004EC38(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_100039138(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_10003A780(v17, i & 1);
    v12 = sub_100039138(v8, v7);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_100085978();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v20 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v26 = (v20[6] + 16 * v12);
    *v26 = v8;
    v26[1] = v7;
    *(v20[7] + 8 * v12) = v11;
    v27 = v20[2];
    v16 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v28;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v25 = v12;
  sub_10002C49C();
  v12 = v25;
  v20 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v12;
  v22 = *(v20[7] + 8 * v12);

  v23 = v20[7];
  v24 = *(v23 + 8 * v21);
  *(v23 + 8 * v21) = v22;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 9); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v33 = *i;
      v34 = *a3;

      v7 = v33;
      v35 = sub_100039138(v11, v6);
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v16 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v16)
      {
        break;
      }

      v8 = v36;
      if (v34[3] < v39)
      {
        sub_10003A780(v39, 1);
        v35 = sub_100039138(v11, v6);
        if ((v8 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v29 = v35;
        v30 = *(v3[7] + 8 * v35);

        v31 = v3[7];
        v32 = *(v31 + 8 * v29);
        *(v31 + 8 * v29) = v30;
      }

      else
      {
        v3[(v35 >> 6) + 8] |= 1 << v35;
        v41 = (v3[6] + 16 * v35);
        *v41 = v11;
        v41[1] = v6;
        *(v3[7] + 8 * v35) = v7;
        v42 = v3[2];
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v43;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

unint64_t sub_10004EED8(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10004EF0C()
{
  result = qword_1000A6698;
  if (!qword_1000A6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6698);
  }

  return result;
}

unint64_t sub_10004EF68()
{
  result = qword_1000A66A0;
  if (!qword_1000A66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A66A0);
  }

  return result;
}

unint64_t sub_10004EFC0()
{
  result = qword_1000A66A8;
  if (!qword_1000A66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A66A8);
  }

  return result;
}

unint64_t sub_10004F018()
{
  result = qword_1000A66B0;
  if (!qword_1000A66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A66B0);
  }

  return result;
}

__n128 sub_10004F090(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004F0A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10004F100(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10004F178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004F1C0()
{
  result = qword_1000A66E0;
  if (!qword_1000A66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A66E0);
  }

  return result;
}

unint64_t sub_10004F214()
{
  result = qword_1000A6718;
  if (!qword_1000A6718)
  {
    sub_100008250(255, &qword_1000A64B8, NSManagedObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6718);
  }

  return result;
}

uint64_t sub_10004F27C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10004F2FC(void *a1, uint64_t a2)
{
  v62 = a1;
  v4 = sub_1000847C8();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v59 - v8;
  __chkstk_darwin(v7);
  v11 = &v59 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_100085358();

  if (!v2)
  {
    v66 = v9;
    v59 = a2;
    v60 = v5;
    v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v72 = v4;
    v61 = 0;
    v68 = *(v13 + 16);
    if (v68)
    {
      v14 = 0;
      v67 = (v70 + 16);
      v64 = (v70 + 32);
      v15 = (v70 + 8);
      v65 = _swiftEmptyArrayStorage;
      v16 = v72;
      while (1)
      {
        if (v14 >= *(v13 + 16))
        {
          __break(1u);
          return;
        }

        v17 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v18 = *(v70 + 72);
        (*(v70 + 16))(v11, v13 + v17 + v18 * v14, v16);
        if (sub_100084698() == 1852797802 && v19 == 0xE400000000000000)
        {
        }

        else
        {
          v20 = sub_100085948();

          if ((v20 & 1) == 0)
          {
            v21 = *v64;
            (*v64)(v66, v11, v16);
            v22 = v65;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v22;
            v63 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10003BEAC(0, v22[2] + 1, 1);
              v22 = aBlock[0];
            }

            v25 = v22[2];
            v24 = v22[3];
            if (v25 >= v24 >> 1)
            {
              sub_10003BEAC((v24 > 1), v25 + 1, 1);
              v22 = aBlock[0];
            }

            v22[2] = v25 + 1;
            v65 = v22;
            v26 = v22 + v17 + v25 * v18;
            v16 = v72;
            v63(v26);
            goto LABEL_6;
          }
        }

        (*v15)(v11, v16);
LABEL_6:
        if (v68 == ++v14)
        {
          goto LABEL_17;
        }
      }
    }

    v65 = _swiftEmptyArrayStorage;
    v16 = v72;
LABEL_17:

    v27 = v65[2];
    if (v27)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      v28 = v65;
      sub_10003BCC0(0, v27, 0);
      v29 = aBlock[0];
      v30 = *(v70 + 16);
      v31 = v28 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v66 = *(v70 + 72);
      v67 = v30;
      v68 = (v70 + 16);
      v32 = (v70 + 8);
      do
      {
        v33 = v69;
        v34 = v72;
        v67(v69, v31, v72);
        v35 = sub_100084798(1);
        v37 = v36;
        (*v32)(v33, v34);
        aBlock[0] = v29;
        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          sub_10003BCC0((v38 > 1), v39 + 1, 1);
          v29 = aBlock[0];
        }

        v29[2] = v39 + 1;
        v40 = &v29[2 * v39];
        v40[4] = v35;
        v40[5] = v37;
        v31 = &v66[v31];
        --v27;
      }

      while (v27);

      v16 = v72;
    }

    else
    {

      v29 = _swiftEmptyArrayStorage;
    }

    v41 = sub_10007A9FC(v29);

    v42 = v62;
    v43 = [v62 textStorage];
    v44 = v60;
    if (v43)
    {
      v68 = NSLinkAttributeName;
      v65 = v43;
      v45 = [v43 ic_range];
      v66 = v46;
      v67 = v45;
      v47 = v69;
      v48 = v70;
      (*(v70 + 16))(v69, v59, v16);
      v49 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v50 = (v44 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      (*(v48 + 32))(v52 + v49, v47, v72);
      *(v52 + v50) = v41;
      *(v52 + v51) = v42;
      v53 = v65;
      *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_10004FA1C;
      *(v54 + 24) = v52;
      aBlock[4] = sub_10004FB08;
      aBlock[5] = v54;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002A6AC;
      aBlock[3] = &unk_1000A0298;
      v55 = _Block_copy(aBlock);
      v56 = v42;
      v57 = v53;

      [v57 enumerateAttribute:v68 inRange:v67 options:v66 usingBlock:{2, v55}];

      _Block_release(v55);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_10004F958()
{
  v1 = sub_1000847C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10004FA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1000847C8() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v11);
  v14 = *(v4 + v12);
  v15 = *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004C120(a1, a2, a3, a4, v4 + v10, v13, v14, v15);
}

uint64_t sub_10004FB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004FB48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004FB88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A5AD0, &unk_10008B5E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004FC30()
{
  result = qword_1000A6738;
  if (!qword_1000A6738)
  {
    sub_100011888(&qword_1000A6740, qword_10008D390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6738);
  }

  return result;
}

Swift::Int sub_10004FCA0()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10004FD6C(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_10004FE24(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

unint64_t sub_10004FEEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000500F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10004FF1C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = *v1;
  v4 = "ERRIDE";
  v5 = "com.apple.notes.account";
  v6 = 0xD000000000000016;
  v7 = "com.apple.notes.folder";
  v8 = 0xD000000000000014;
  if (v3 != 3)
  {
    v8 = 0xD00000000000001ALL;
    v7 = "com.apple.notes.note";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = "com.apple.notes.archive";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

unint64_t sub_10005006C()
{
  result = qword_1000A6748;
  if (!qword_1000A6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6748);
  }

  return result;
}

unint64_t sub_1000500CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000500F8(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000500F8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E090;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100050144()
{
  result = qword_1000A6750;
  if (!qword_1000A6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6750);
  }

  return result;
}

__int128 *ICArchiveCreator.default.unsafeMutableAddressor()
{
  if (qword_1000A5428 != -1)
  {
    swift_once();
  }

  return &static ICArchiveCreator.default;
}

uint64_t ICArchiveCreator.softwareIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ICArchiveCreator.softwareIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersionName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersionName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersion.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double sub_100050360()
{
  sub_1000507A8(v1);
  static ICArchiveCreator.default = v1[0];
  *&qword_1000B17A0 = v1[1];
  result = *&v2;
  xmmword_1000B17B0 = v2;
  return result;
}

uint64_t static ICArchiveCreator.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A5428 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&xmmword_1000B17B0 + 1);
  *a1 = static ICArchiveCreator.default;
  *(a1 + 8) = *(&static ICArchiveCreator.default + 8);
  *(a1 + 24) = unk_1000B17A8;
  *(a1 + 40) = v1;
}

unint64_t sub_100050440()
{
  v1 = 0x6572617774666F73;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1000504AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100050A5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000504E0(uint64_t a1)
{
  v2 = sub_1000506F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005051C(uint64_t a1)
{
  v2 = sub_1000506F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ICArchiveCreator.encode(to:)(void *a1)
{
  v3 = sub_100005740(&qword_1000A6758, &qword_10008D500);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000626C(a1, a1[3]);
  sub_1000506F8();
  sub_100085A78();
  v8[15] = 0;
  sub_100085848();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_100085848();
  v8[13] = 2;
  sub_100085848();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000506F8()
{
  result = qword_1000A6760;
  if (!qword_1000A6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6760);
  }

  return result;
}

double ICArchiveCreator.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100050B8C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void sub_1000507A8(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v26 = sub_100085098();
    v6 = v5;
  }

  else
  {
    v26 = 0;
    v6 = 0;
  }

  v7 = [v2 mainBundle];
  v8 = [v7 infoDictionary];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = sub_100085008();

  if (!*(v9 + 16) || (v10 = sub_100039138(0xD00000000000001ALL, 0x8000000100086640), (v11 & 1) == 0))
  {

LABEL_14:
    v13 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  sub_1000056E4(*(v9 + 56) + 32 * v10, v29);

  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v27;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v28;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  v15 = [v2 mainBundle];
  v16 = [v15 infoDictionary];

  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = sub_100085008();

  if (kCFBundleVersionKey)
  {
    v18 = sub_100085098();
    if (*(v17 + 16))
    {
      v20 = sub_100039138(v18, v19);
      v22 = v21;

      if (v22)
      {
        sub_1000056E4(*(v17 + 56) + 32 * v20, v29);

        v23 = swift_dynamicCast();
        v24 = v27;
        v25 = v28;
        if (!v23)
        {
          v24 = 0;
          v25 = 0;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_23:
    v24 = 0;
    v25 = 0;
LABEL_24:
    *a1 = v26;
    a1[1] = v6;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v24;
    a1[5] = v25;
    return;
  }

  __break(1u);
}

uint64_t sub_100050A5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000100087170 == a2 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100087190 == a2 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v5 = sub_100085948();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100050B8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = sub_100005740(&qword_1000A6780, &qword_10008D6B8);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];

  v8 = [v6 mainBundle];
  v9 = [v8 infoDictionary];

  if (v9)
  {
    v10 = sub_100085008();

    if (!*(v10 + 16) || (v11 = sub_100039138(0xD00000000000001ALL, 0x8000000100086640), (v12 & 1) == 0) || (sub_1000056E4(*(v10 + 56) + 32 * v11, v36), , (swift_dynamicCast() & 1) != 0))
    {
    }
  }

  v13 = [v6 mainBundle];
  v14 = [v13 infoDictionary];

  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = sub_100085008();

  result = kCFBundleVersionKey;
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v17 = sub_100085098();
  if (*(v15 + 16))
  {
    v19 = sub_100039138(v17, v18);
    v21 = v20;

    if (v21)
    {
      sub_1000056E4(*(v15 + 56) + 32 * v19, v36);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

LABEL_14:
  sub_10000626C(a1, a1[3]);
  sub_1000506F8();
  v22 = v37;
  sub_100085A68();
  if (v22)
  {
    return sub_100006304(a1);
  }

  v36[0] = 0;
  v23 = sub_100085798();
  v25 = v24;
  v26 = v23;
  v36[0] = 1;
  v27 = sub_100085798();
  v29 = v28;
  v37 = v27;
  v36[0] = 2;
  v30 = sub_100085798();
  v32 = v31;
  (*(v35 + 8))(v5, v3);
  result = sub_100006304(a1);
  v33 = v34;
  *v34 = v26;
  v33[1] = v25;
  v33[2] = v37;
  v33[3] = v29;
  v33[4] = v30;
  v33[5] = v32;
  return result;
}

__n128 sub_100050FA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100050FB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100051014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICMarkdownFlavor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICMarkdownFlavor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000511D8()
{
  result = qword_1000A6768;
  if (!qword_1000A6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6768);
  }

  return result;
}

unint64_t sub_100051230()
{
  result = qword_1000A6770;
  if (!qword_1000A6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6770);
  }

  return result;
}

unint64_t sub_100051288()
{
  result = qword_1000A6778;
  if (!qword_1000A6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6778);
  }

  return result;
}

uint64_t sub_1000512DC(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6950, &qword_10008D898);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000626C(a1, a1[3]);
  sub_1000554E0();
  sub_100085A78();
  v12 = *v3;
  v13 = *(v3 + 2);
  v11 = 0;
  sub_100055624();
  sub_100085888();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v13 = *(v3 + 5);
    v11 = 1;
    sub_100085888();
    LOBYTE(v12) = 2;
    sub_100085878();
    *&v12 = *(v3 + 8);
    v11 = 3;
    sub_100005740(&qword_1000A6938, &qword_10008D890);
    sub_100055588(&qword_1000A6960, &qword_1000A6968, &unk_10008D7C8, &protocol conformance descriptor for <A> [A]);
    sub_100085888();
    LOBYTE(v12) = 4;
    sub_100085858();
    LOBYTE(v12) = 5;
    sub_100085878();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000515B0()
{
  v1 = *v0;
  v2 = 0x53656E694C706F74;
  v3 = 0x746E656D67617266;
  v4 = 0x65526C6C61437369;
  if (v1 != 4)
  {
    v4 = 0x657079546C6C6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7972616D6D7573;
  if (v1 != 1)
  {
    v5 = 0x567972616D6D7573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100051694@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100054C30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000516BC(uint64_t a1)
{
  v2 = sub_1000554E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000516F8(uint64_t a1)
{
  v2 = sub_1000554E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100051734@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100054E4C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

void sub_1000517A0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v6 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v8 = __chkstk_darwin(v7 - 8);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v65 - v10;
  v12 = sub_100084918();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = _s14AudioRecordingV8FragmentVMa(0);
  v16 = *(v66 + 20);
  v17 = sub_1000848B8();
  v18 = *(v17 - 8);
  v74 = *(v18 + 56);
  v75 = v17;
  v73 = v18 + 56;
  v74(a2 + v16, 1, 1);
  v19 = [a1 identity];
  sub_1000848F8();

  v20 = sub_1000848D8();
  v22 = v21;
  (*(v13 + 8))(v15, v12);
  *a2 = v20;
  a2[1] = v22;
  v68 = a2;
  v23 = a1;
  v24 = [a1 createdDate];
  if (v24)
  {
    v25 = v24;
    sub_100084888();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (v74)(v11, v26, 1, v75);
  sub_100040A94(v11, v68 + v16);
  v27 = [a1 transcript];
  v28 = [v27 allObjects];

  sub_100084BD8();
  v29 = sub_100085208();

  v30 = v72;
  if (v29 >> 62)
  {
    v31 = sub_100085718();
    v67 = v23;
    if (v31)
    {
      goto LABEL_6;
    }

LABEL_28:

    v33 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v67 = v23;
  if (!v31)
  {
    goto LABEL_28;
  }

LABEL_6:
  v76 = _swiftEmptyArrayStorage;
  sub_10003BEF0(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
    __break(1u);
    return;
  }

  v32 = 0;
  v69 = v29 & 0xC000000000000001;
  v33 = v76;
  do
  {
    if (v69)
    {
      v34 = sub_100085648();
    }

    else
    {
      v34 = *(v29 + 8 * v32 + 32);
    }

    v35 = v34;
    v36 = *(v30 + 20);
    (v74)(v6 + v36, 1, 1, v75);
    v37 = [v35 text];
    if (v37)
    {
      v38 = v37;
      v39 = sub_100085098();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = v70;
    *v6 = v39;
    v6[1] = v41;
    v43 = [v35 timestamp];
    if (v43)
    {
      v44 = v43;
      [v44 doubleValue];
      sub_100084868();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    (v74)(v42, v45, 1, v75);
    sub_100040A94(v42, v6 + v36);
    v46 = [v35 duration];
    v47 = v46;
    if (v46)
    {
      [v46 doubleValue];
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v30 = v72;
    v50 = v6 + *(v72 + 24);
    *v50 = v49;
    v50[8] = v47 == 0;
    v51 = [v35 speaker];
    if (v51)
    {
      v52 = v51;
      v53 = sub_100085098();
      v55 = v54;
    }

    else
    {

      v53 = 0;
      v55 = 0;
    }

    v56 = (v6 + *(v30 + 28));
    *v56 = v53;
    v56[1] = v55;
    v76 = v33;
    v58 = v33[2];
    v57 = v33[3];
    if (v58 >= v57 >> 1)
    {
      sub_10003BEF0((v57 > 1), v58 + 1, 1);
      v33 = v76;
    }

    ++v32;
    v33[2] = v58 + 1;
    sub_100053E78(v6, v33 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v58, _s14AudioRecordingV17TranscriptSegmentVMa);
  }

  while (v31 != v32);

LABEL_29:
  v60 = v66;
  v59 = v67;
  *(v68 + *(v66 + 24)) = v33;
  v61 = [v59 transcriptVersion];
  v62 = v61;
  if (v61)
  {
    v63 = [v61 integerValue];
  }

  else
  {
    v63 = 0;
  }

  v64 = v68 + *(v60 + 28);
  *v64 = v63;
  v64[8] = v62 == 0;
}

id sub_100051DE8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v81 = a3;
  v75 = a4;
  v76 = a5;
  v80 = a2;
  v6 = _s14AudioRecordingV8FragmentVMa(0);
  v72 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v74 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  __chkstk_darwin(v8 - 8);
  v10 = &v72 - v9;
  v11 = sub_100084918();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v83 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v72 - v15;
  v17 = [a1 document];
  sub_100084908();
  v18 = objc_allocWithZone(ICTTAudioRecording);
  isa = sub_1000848E8().super.isa;
  v20 = [v18 initWithDocument:v17 identity:isa];

  v77 = *(v12 + 8);
  v77(v16, v11);
  v73 = a1;
  v21 = [a1 document];
  v22 = [v21 replica];

  v78 = v12 + 8;
  v79 = v11;
  if (v22)
  {
    sub_1000848F8();

    v23 = *(v12 + 32);
    v23(v10, v16, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v24 = v83;
    v23(v83, v10, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v25 = v83;
    sub_100084908();
    v26 = (*(v12 + 48))(v10, 1, v11);
    v24 = v25;
    if (v26 != 1)
    {
      sub_100053EE0(v10);
    }
  }

  v27 = v82;
  v28 = v82[1];
  v29 = v84;
  v30 = v76;
  if (v28)
  {
    v31 = v82[2];
    v32 = *v82;
    v33 = sub_10003E764(_swiftEmptyArrayStorage);
    v34 = sub_10001FFC0(v33, v80, v81, v30, v32, v28, v31);
    if (v29)
    {
LABEL_12:
      v77(v24, v79);

      return v20;
    }

    v35 = v34;

    v36 = objc_allocWithZone(ICTTMergeableAttributedString);
    v37 = sub_1000848E8().super.isa;
    v38 = [v36 initWithReplicaID:v37];

    [v20 setTopLineSummary:v38];
    v39 = [v20 topLineSummary];
    if (v39)
    {
      v40 = v39;
      v41.super.isa = v35;
      sub_100085498(v41, 0);
    }
  }

  v42 = v27[4];
  if (v42)
  {
    v43 = v27[5];
    v44 = v27[3];
    v45 = sub_10003E764(_swiftEmptyArrayStorage);
    v46 = sub_10001FFC0(v45, v80, v81, v30, v44, v42, v43);
    if (v29)
    {
      goto LABEL_12;
    }

    v47 = v46;

    v48 = objc_allocWithZone(ICTTMergeableAttributedString);
    v49 = sub_1000848E8().super.isa;
    v50 = [v48 initWithReplicaID:v49];

    [v20 setSummary:v50];
    v51 = [v20 summary];
    if (v51)
    {
      v52 = v51;
      v53.super.isa = v47;
      sub_100085498(v53, 0);
    }

    if (v27[7])
    {
      v54 = 0;
    }

    else
    {
      v54 = [objc_allocWithZone(NSNumber) initWithInteger:v27[6]];
    }

    [v20 setSummaryVersion:{v54, v72}];
  }

  if (v27[8])
  {
    v55 = v27[8];
  }

  else
  {
    v55 = _swiftEmptyArrayStorage;
  }

  v56 = v55[2];
  if (v56)
  {
    v84 = v29;
    v57 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v81 = v55;
    v58 = v55 + v57;
    v59 = *(v72 + 72);

    v61 = v73;
    v60 = v74;
    v62 = v20;
    v63 = v75;
    do
    {
      sub_1000544A8(v58, v60, _s14AudioRecordingV8FragmentVMa);
      v64 = sub_100053F48(v61, v63);
      sub_100054510(v60, _s14AudioRecordingV8FragmentVMa);
      v65 = [v62 fragments];
      [v65 addObject:v64];

      v58 += v59;
      --v56;
    }

    while (v56);

    v27 = v82;
    v20 = v62;
  }

  else
  {
  }

  v66 = *(v27 + 72);
  v67 = v79;
  v68 = v83;
  if (v66 == 2)
  {
    v69 = 0;
  }

  else
  {
    v69 = [objc_allocWithZone(NSNumber) initWithBool:v66 & 1];
  }

  [v20 setCallRecording:{v69, v72}];

  if ((v27[11] & 1) == 0)
  {
    v70 = [objc_allocWithZone(NSNumber) initWithInteger:v27[10]];
    [v20 setCallType:v70];
  }

  v77(v68, v67);
  return v20;
}

uint64_t sub_100052504(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6908, &qword_10008D880);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000626C(a1, a1[3]);
  sub_100054B40();
  sub_100085A78();
  v14 = 0;
  sub_100085848();
  if (!v2)
  {
    v9 = _s14AudioRecordingV8FragmentVMa(0);
    v13 = 1;
    sub_1000848B8();
    sub_100054AF8(&qword_1000A5630, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085888();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_100005740(&unk_1000A6898, &qword_10008D6E0);
    sub_100054B94(&qword_1000A6910, &qword_1000A6918, &unk_10008D818, &protocol conformance descriptor for <A> [A]);
    sub_100085888();
    v11[14] = 3;
    sub_100085878();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100052784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v3 - 8);
  v31 = &v27 - v4;
  v5 = sub_100005740(&qword_1000A68E8, &qword_10008D878);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = _s14AudioRecordingV8FragmentVMa(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = 0;
  v11[1] = 0;
  v12 = v9[7];
  v13 = sub_1000848B8();
  v14 = *(*(v13 - 8) + 56);
  v30 = v12;
  v14(v11 + v12, 1, 1, v13);
  v15 = v9[8];
  *(v11 + v15) = 0;
  v16 = (v11 + v9[9]);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_10000626C(a1, a1[3]);
  sub_100054B40();
  v32 = v7;
  v17 = v35;
  sub_100085A68();
  if (v17)
  {
    sub_100006304(a1);
  }

  else
  {
    v27 = v16;
    v28 = v15;
    v35 = a1;
    v19 = v31;
    v18 = v32;
    v40 = 0;
    *v11 = sub_100085798();
    v11[1] = v20;
    v39 = 1;
    sub_100054AF8(&qword_1000A55F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000857D8();
    sub_100040A94(v19, v11 + v30);
    sub_100005740(&unk_1000A6898, &qword_10008D6E0);
    v38 = 2;
    sub_100054B94(&qword_1000A68F8, &qword_1000A6900, &unk_10008D840, &protocol conformance descriptor for <A> [A]);
    sub_1000857D8();
    v22 = v33;
    *(v11 + v28) = v36;
    v37 = 3;
    v23 = sub_1000857C8();
    v25 = v24;
    (*(v22 + 8))(v18, v34);
    v26 = v27;
    *v27 = v23;
    *(v26 + 8) = v25 & 1;
    sub_1000544A8(v11, v29, _s14AudioRecordingV8FragmentVMa);
    sub_100006304(v35);
  }

  return sub_100054510(v11, _s14AudioRecordingV8FragmentVMa);
}

unint64_t sub_100052BB4()
{
  v1 = 0x696669746E656469;
  v2 = 0x697263736E617274;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x4164657461657263;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100052C3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100055B08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100052C64(uint64_t a1)
{
  v2 = sub_100054B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100052CA0(uint64_t a1)
{
  v2 = sub_100054B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100052D0C(void *a1)
{
  v2 = v1;
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_100084918();
  __chkstk_darwin(v11 - 8);
  sub_100084BD8();
  v12 = a1;
  sub_100084908();
  v13 = sub_100084BC8();
  if (*(v2 + 8))
  {
    v14 = sub_100085068();
  }

  else
  {
    v14 = 0;
  }

  [v13 setText:v14];

  v15 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  sub_100005888(v2 + v15[5], v10, &qword_1000A5490, &qword_10008CD80);
  v16 = 0;
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_100084878();
    v16 = [objc_allocWithZone(NSNumber) initWithDouble:v17];
    (*(v5 + 8))(v7, v4);
  }

  [v13 setTimestamp:v16];

  v18 = v2 + v15[6];
  if (*(v18 + 8))
  {
    v19 = 0;
  }

  else
  {
    v19 = [objc_allocWithZone(NSNumber) initWithDouble:*v18];
  }

  [v13 setDuration:v19];

  if (*(v2 + v15[7] + 8))
  {
    v20 = sub_100085068();
  }

  else
  {
    v20 = 0;
  }

  [v13 setSpeaker:v20];

  return v13;
}

uint64_t sub_100053028(void *a1)
{
  v3 = sub_100005740(&qword_1000A68E0, &qword_10008D870);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000626C(a1, a1[3]);
  sub_100054AA4();
  sub_100085A78();
  v8[15] = 0;
  sub_100085848();
  if (!v1)
  {
    _s14AudioRecordingV17TranscriptSegmentVMa(0);
    v8[14] = 1;
    sub_1000848B8();
    sub_100054AF8(&qword_1000A5630, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100085888();
    v8[13] = 2;
    sub_100085868();
    v8[12] = 3;
    sub_100085848();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100053248@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v3 - 8);
  v31 = &v27 - v4;
  v33 = sub_100005740(&qword_1000A68D0, &qword_10008D868);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v27 - v5;
  v7 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0;
  v10[1] = 0;
  v11 = v8[7];
  v12 = sub_1000848B8();
  v13 = *(*(v12 - 8) + 56);
  v29 = v11;
  v13(v10 + v11, 1, 1, v12);
  v14 = (v10 + v8[8]);
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = (v10 + v8[9]);
  *v15 = 0;
  v15[1] = 0;
  sub_10000626C(a1, a1[3]);
  sub_100054AA4();
  v32 = v6;
  v16 = v34;
  sub_100085A68();
  if (v16)
  {
    sub_100006304(a1);
  }

  else
  {
    v34 = v14;
    v17 = v30;
    v18 = v31;
    v38 = 0;
    *v10 = sub_100085798();
    v10[1] = v19;
    v37 = 1;
    sub_100054AF8(&qword_1000A55F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000857D8();
    sub_100040A94(v18, v10 + v29);
    v36 = 2;
    v20 = sub_1000857B8();
    v21 = v34;
    *v34 = v20;
    *(v21 + 8) = v22 & 1;
    v35 = 3;
    v24 = sub_100085798();
    v26 = v25;
    (*(v17 + 8))(v32, v33);
    *v15 = v24;
    v15[1] = v26;
    sub_1000544A8(v10, v28, _s14AudioRecordingV17TranscriptSegmentVMa);
    sub_100006304(0);
  }

  return sub_100054510(v10, _s14AudioRecordingV17TranscriptSegmentVMa);
}

uint64_t sub_1000535EC()
{
  v1 = 1954047348;
  v2 = 0x6E6F697461727564;
  if (*v0 != 2)
  {
    v2 = 0x72656B61657073;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100053664@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100055C88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100053698(uint64_t a1)
{
  v2 = sub_100054AA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000536D4(uint64_t a1)
{
  v2 = sub_100054AA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100053740(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v70 = a4;
  v7 = _s14AudioRecordingV8FragmentVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = 1;
  v86 = 1;
  v11 = [a1 fragments];
  v12 = [v11 count];

  if (v12 < 1)
  {
    sub_100030518(a3);

    v69 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v71 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v28 = v89;
    LODWORD(v72) = 2;
    LOBYTE(v29) = v86;
    v30 = 1;
LABEL_33:
    v56 = v71;
    v74 = v71;
    v75 = v27;
    v76 = v26;
    v77 = v25;
    v78 = v24;
    v79 = v23;
    v80 = v22;
    LOBYTE(v81) = v28;
    *(&v81 + 1) = *v88;
    HIDWORD(v81) = *&v88[3];
    v82 = v21;
    LOBYTE(v83) = v72;
    *(&v83 + 1) = *v87;
    HIDWORD(v83) = *&v87[3];
    v57 = v69;
    v84 = v69;
    v85 = v29;
    sub_100053DF0(&v74);
    v58 = v70;
    *v70 = v56;
    v58[1] = v30;
    v58[2] = v26;
    v58[3] = v25;
    v58[4] = v24;
    v58[5] = v23;
    v59 = v68;
    v58[6] = v22;
    v58[7] = v59;
    v60 = v67;
    v58[8] = v21;
    v58[9] = v60;
    v58[10] = v57;
    *(v58 + 88) = v66;
    return;
  }

  v13 = [a1 topLineSummary];
  v14 = a1;
  if (v13)
  {
    v15 = v13;
    v16 = a2;
    sub_100011A6C(a3, &v74);
    v17 = v16;
    v14 = a1;
    v18 = sub_10002FF98(v15, v17, a3);
    v61 = v19;
    v62 = v20;
  }

  else
  {
    v18 = 0;
    v61 = 0;
    v62 = 0;
  }

  v31 = [v14 summary];
  if (v31)
  {
    v63 = sub_10002FF98(v31, a2, a3);
    v64 = v32;
    v65 = v33;
  }

  else
  {
    sub_100030518(a3);
    v63 = 0;
    v64 = 0;
    v65 = 0;
  }

  v34 = [v14 summaryVersion];
  v35 = v34;
  if (v34)
  {
    v68 = [v34 integerValue];
  }

  else
  {
    v68 = 0;
  }

  v89 = v35 == 0;
  v36 = [v14 fragments];
  v37 = [v36 allObjects];

  sub_1000853E8();
  v38 = sub_100085208();

  if (v38 >> 62)
  {
    v39 = sub_100085718();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v18;
  v69 = v14;
  if (v39)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_10003BD24(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v72 = a2;
    v40 = 0;
    v21 = v74;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = sub_100085648();
      }

      else
      {
        v41 = *(v38 + 8 * v40 + 32);
      }

      sub_1000517A0(v41, v10);
      v74 = v21;
      v43 = v21[2];
      v42 = v21[3];
      if (v43 >= v42 >> 1)
      {
        sub_10003BD24((v42 > 1), v43 + 1, 1);
        v21 = v74;
      }

      ++v40;
      v21[2] = v43 + 1;
      sub_100053E78(v10, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v43, _s14AudioRecordingV8FragmentVMa);
    }

    while (v39 != v40);

    v18 = v71;
    a2 = v72;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  v44 = [v69 callRecording];
  v45 = v65;
  v24 = v64;
  v46 = v63;
  if (v44)
  {
    v47 = v44;
    LODWORD(v72) = [v44 BOOLValue];
  }

  else
  {
    LODWORD(v72) = 2;
  }

  v48 = v68;
  v49 = v69;
  v50 = [v69 callType];
  if (!v50)
  {

    v54 = 0;
    goto LABEL_32;
  }

  v51 = v18;
  v52 = v50;
  v53 = [v50 unsignedIntegerValue];

  v54 = v53;
  if ((v53 & 0x8000000000000000) == 0)
  {
    v86 = 0;
    v18 = v51;
LABEL_32:
    v69 = v54;
    v55 = v61;
    v74 = v18;
    v75 = v61;
    v76 = v62;
    v77 = v46;
    v78 = v24;
    v79 = v45;
    v80 = v48;
    v28 = v89;
    LOBYTE(v81) = v89;
    HIDWORD(v81) = *&v88[3];
    *(&v81 + 1) = *v88;
    v82 = v21;
    LOBYTE(v83) = v72;
    HIDWORD(v83) = *&v87[3];
    *(&v83 + 1) = *v87;
    v26 = v62;
    v84 = v54;
    v22 = v48;
    v25 = v46;
    v29 = v86;
    v85 = v86;
    v68 = v81;
    v23 = v45;
    v67 = v83;
    sub_100053E20(&v74, v73);
    v27 = v55;
    v30 = v55;
    v66 = v29;
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_100053E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100053EE0(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100053F48(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v47 = a1;
  v5 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v46 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v8 - 8);
  v10 = v43 - v9;
  v11 = sub_100084918();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v43 - v19;
  v21 = v3[1];
  if (v21 && *(a2 + 16) && (v22 = sub_100039138(*v3, v21), (v23 & 1) != 0) && (v24 = [*(*(a2 + 56) + 8 * v22) identifier]) != 0)
  {
    v25 = v24;
    v45 = sub_100085098();

    sub_1000848C8();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  sub_100005888(v20, v18, &qword_1000A5C20, &unk_10008B840);
  v26 = *(v12 + 48);
  if (v26(v18, 1, v11) == 1)
  {
    sub_100084908();
    if (v26(v18, 1, v11) != 1)
    {
      sub_100053EE0(v18);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v18, v11);
  }

  sub_1000853E8();
  v27 = v47;
  v28 = sub_1000853D8();
  v29 = _s14AudioRecordingV8FragmentVMa(0);
  sub_100005888(v3 + v29[5], v10, &qword_1000A5490, &qword_10008CD80);
  v30 = sub_1000848B8();
  v31 = *(v30 - 8);
  isa = 0;
  if ((*(v31 + 48))(v10, 1, v30) != 1)
  {
    isa = sub_100084848().super.isa;
    (*(v31 + 8))(v10, v30);
  }

  [v28 setCreatedDate:isa];

  if (*(v3 + v29[6]))
  {
    v33 = *(v3 + v29[6]);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v34 = v33[2];
  if (v34)
  {
    v44 = v29;
    v45 = v20;
    v47 = v3;
    v35 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v43[1] = v33;
    v36 = v33 + v35;
    v37 = *(v46 + 72);

    do
    {
      sub_1000544A8(v36, v7, _s14AudioRecordingV17TranscriptSegmentVMa);
      v38 = sub_100052D0C(v27);
      sub_100054510(v7, _s14AudioRecordingV17TranscriptSegmentVMa);
      v39 = [v28 transcript];
      [v39 addObject:v38];

      v36 += v37;
      --v34;
    }

    while (v34);

    v3 = v47;
    v29 = v44;
    v20 = v45;
  }

  else
  {
  }

  v40 = v3 + v29[7];
  if (v40[8])
  {
    v41 = 0;
  }

  else
  {
    v41 = [objc_allocWithZone(NSNumber) initWithInteger:*v40];
  }

  [v28 setTranscriptVersion:v41];

  sub_100053EE0(v20);
  return v28;
}

uint64_t sub_1000544A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100054510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000545A0(uint64_t a1)
{
  sub_1000341B8(319, &qword_1000A5538, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100054660(319);
    if (v2 <= 0x3F)
    {
      sub_1000341B8(319, &unk_1000A67F0, &type metadata for Double);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100054660(uint64_t a1)
{
  if (!qword_1000A5518)
  {
    sub_1000848B8();
    v1 = sub_1000854E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A5518);
    }
  }
}

uint64_t sub_1000546CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000547A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100054858(uint64_t a1)
{
  sub_1000341B8(319, &qword_1000A5538, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100054660(319);
    if (v2 <= 0x3F)
    {
      sub_10005492C(319);
      if (v3 <= 0x3F)
      {
        sub_1000341B8(319, &qword_1000A5E50, &type metadata for Int);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10005492C(uint64_t a1)
{
  if (!qword_1000A6890)
  {
    sub_100011888(&unk_1000A6898, &qword_10008D6E0);
    v1 = sub_1000854E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A6890);
    }
  }
}

uint64_t sub_100054990(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000549A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000549CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100054A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100054AA4()
{
  result = qword_1000A68D8;
  if (!qword_1000A68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A68D8);
  }

  return result;
}

uint64_t sub_100054AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100054B40()
{
  result = qword_1000A68F0;
  if (!qword_1000A68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A68F0);
  }

  return result;
}

uint64_t sub_100054B94(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&unk_1000A6898, &qword_10008D6E0);
    sub_100054AF8(a2, _s14AudioRecordingV17TranscriptSegmentVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100054C30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656E694C706F74 && a2 == 0xEE007972616D6D75;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x567972616D6D7573 && a2 == 0xEE006E6F69737265 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656D67617266 && a2 == 0xE900000000000073 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65526C6C61437369 && a2 == 0xEF676E6964726F63 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657079546C6C6163 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}