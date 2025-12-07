void NotificationData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_2811B0, &qword_1EC9B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v65 - v7;
  sub_48B8(a1, a1[3]);
  sub_6E6A0();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    0, v16, v17, v18, v19, v20, v21, v22;
    0, v23, v24, v25, v26, v27, v28, v29;
    0, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    LOBYTE(v76) = 0;
    sub_6E7F0(&qword_2811B8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1BB0();
    v74 = v82[0];
    LOBYTE(v82[0]) = 1;
    v37 = sub_1E1BE0();
    v75 = v38;
    LOBYTE(v76) = 2;
    sub_6E85C();
    sub_1E1C20();
    v39 = LOBYTE(v82[0]);
    LOBYTE(v76) = 3;
    sub_6E8B0();
    sub_1E1C20();
    v94 = LOBYTE(v82[0]);
    LOBYTE(v76) = 4;
    sub_6E904();
    sub_1E1C20();
    v72 = a2;
    v73 = LOBYTE(v82[0]);
    LOBYTE(v82[0]) = 5;
    v40 = sub_1E1B80();
    v42 = v41;
    v70 = v40;
    v71 = v39;
    LOBYTE(v82[0]) = 6;
    v43 = sub_1E1BE0();
    v45 = v44;
    v69 = v43;
    v68 = v37;
    LOBYTE(v82[0]) = 7;
    v46 = sub_1E1B80();
    v48 = v47;
    v67 = v46;
    v95 = 8;
    v66 = sub_1E1B80();
    v50 = v49;
    (*(v6 + 8))(v8, v5);
    v51 = v74;
    *&v76 = v74;
    v52 = v68;
    *(&v76 + 1) = v68;
    v53 = v75;
    *&v77 = v75;
    BYTE8(v77) = v71;
    BYTE9(v77) = v94;
    BYTE10(v77) = v73;
    *&v78 = v70;
    *(&v78 + 1) = v42;
    *&v79 = v69;
    *(&v79 + 1) = v45;
    *&v80 = v67;
    *(&v80 + 1) = v48;
    *&v81 = v66;
    *(&v81 + 1) = v50;
    v54 = v79;
    v55 = v72;
    v72[2] = v78;
    v55[3] = v54;
    v56 = v81;
    v55[4] = v80;
    v55[5] = v56;
    v57 = v77;
    *v55 = v76;
    v55[1] = v57;
    sub_6E958(&v76, v82);
    sub_4E48(a1, v58, v59, v60, v61, v62, v63, v64);
    v82[0] = v51;
    v82[1] = v52;
    v82[2] = v53;
    v83 = v71;
    v84 = v94;
    v85 = v73;
    v86 = v70;
    v87 = v42;
    v88 = v69;
    v89 = v45;
    v90 = v67;
    v91 = v48;
    v92 = v66;
    v93 = v50;
    sub_6E990(v82);
  }
}

BOOL _s13BookAnalytics16NotificationDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 25);
  v9 = *(a1 + 26);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *(a1 + 80);
  v16 = *(a1 + 88);
  v18 = *a2;
  v20 = *(a2 + 8);
  v19 = *(a2 + 16);
  v21 = *(a2 + 24);
  v22 = *(a2 + 25);
  v23 = *(a2 + 26);
  v25 = *(a2 + 32);
  v24 = *(a2 + 40);
  v26 = *(a2 + 48);
  v27 = *(a2 + 56);
  v29 = *(a2 + 64);
  v28 = *(a2 + 72);
  v31 = *(a2 + 80);
  v30 = *(a2 + 88);
  if (v4)
  {
    if (!v18)
    {
      return 0;
    }

    v91 = v25;
    v92 = v10;
    v98 = v24;
    v99 = v11;
    v100 = v27;
    v101 = v31;
    v95 = v13;
    v96 = v26;
    v97 = v12;
    v88 = v29;
    v89 = v14;
    v93 = v28;
    v94 = v15;
    v90 = v30;
    v102 = v16;
    v103 = v17;
    if ((sub_5C5F8(v4, v18) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v91 = v25;
    v92 = v10;
    v98 = v24;
    v99 = v11;
    v100 = v27;
    v101 = v31;
    v95 = v13;
    v96 = v26;
    v97 = v12;
    v88 = v29;
    v89 = v14;
    v93 = v28;
    v94 = v15;
    v90 = v30;
    v102 = v16;
    v103 = v17;
    if (v18)
    {
      return 0;
    }
  }

  if ((v6 != v20 || v5 != v19) && (sub_1E1D30() & 1) == 0 || (sub_23544(v7, v21, v26, v27, v10, v11, v24, v25) & 1) == 0 || (sub_20F18(v8, v22, v32, v33, v34, v35, v36, v37) & 1) == 0)
  {
    return 0;
  }

  v44 = 0x47676E6964616572;
  v45 = 0xEB000000006C616FLL;
  if (v9 != 1)
  {
    v44 = 0x616F47736B6F6F62;
    v45 = 0xE90000000000006CLL;
  }

  if (v9)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0x6E776F6E6B6E75;
  }

  if (v9)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0xE700000000000000;
  }

  v48 = 0x47676E6964616572;
  v49 = 0xEB000000006C616FLL;
  if (v23 != 1)
  {
    v48 = 0x616F47736B6F6F62;
    v49 = 0xE90000000000006CLL;
  }

  if (v23)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0x6E776F6E6B6E75;
  }

  if (v23)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE700000000000000;
  }

  if (v46 == v50 && v47 == v51)
  {
    v47, v38, v50, v39, v40, v41, v42, v43;
    v51, v52, v53, v54, v55, v56, v57, v58;
  }

  else
  {
    v59 = sub_1E1D30();
    v47, v60, v61, v62, v63, v64, v65, v66;
    v51, v67, v68, v69, v70, v71, v72, v73;
    if ((v59 & 1) == 0)
    {
      return 0;
    }
  }

  if (v99)
  {
    v75 = v102;
    v74 = v103;
    v77 = v100;
    v76 = v101;
    if (!v98)
    {
      return 0;
    }

    if (v92 != v91 || v99 != v98)
    {
      v78 = sub_1E1D30();
      v77 = v100;
      v76 = v101;
      v75 = v102;
      v74 = v103;
      if ((v78 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v75 = v102;
    v74 = v103;
    v77 = v100;
    v76 = v101;
    if (v98)
    {
      return 0;
    }
  }

  if (v97 != v96 || v95 != v77)
  {
    v79 = v76;
    v80 = v74;
    v81 = v75;
    v82 = sub_1E1D30();
    v76 = v79;
    v75 = v81;
    v74 = v80;
    if ((v82 & 1) == 0)
    {
      return 0;
    }
  }

  if (v94)
  {
    if (!v93)
    {
      return 0;
    }

    if (v89 != v88 || v94 != v93)
    {
      v83 = v76;
      v84 = v74;
      v85 = v75;
      v86 = sub_1E1D30();
      v76 = v83;
      v75 = v85;
      v74 = v84;
      if ((v86 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v93)
  {
    return 0;
  }

  if (v75)
  {
    return v90 && (v74 == v76 && v75 == v90 || (sub_1E1D30() & 1) != 0);
  }

  return !v90;
}

unint64_t sub_6E6A0()
{
  result = qword_281188;
  if (!qword_281188)
  {
    result = swift_getWitnessTable(byte_1ECBD4, &type metadata for NotificationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281188);
  }

  return result;
}

unint64_t sub_6E6F4()
{
  result = qword_281198;
  if (!qword_281198)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationType, &type metadata for NotificationType, v0, v1);
    atomic_store(result, &qword_281198);
  }

  return result;
}

unint64_t sub_6E748()
{
  result = qword_2811A0;
  if (!qword_2811A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecoType, &type metadata for RecoType, v0, v1);
    atomic_store(result, &qword_2811A0);
  }

  return result;
}

unint64_t sub_6E79C()
{
  result = qword_2811A8;
  if (!qword_2811A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GoalType, &type metadata for GoalType, v0, v1);
    atomic_store(result, &qword_2811A8);
  }

  return result;
}

uint64_t sub_6E7F0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_281BC0, &unk_1EDD80);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6E85C()
{
  result = qword_2811C0;
  if (!qword_2811C0)
  {
    result = swift_getWitnessTable("\t!\a", &type metadata for NotificationType, v0, v1);
    atomic_store(result, &qword_2811C0);
  }

  return result;
}

unint64_t sub_6E8B0()
{
  result = qword_2811C8;
  if (!qword_2811C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecoType, &type metadata for RecoType, v0, v1);
    atomic_store(result, &qword_2811C8);
  }

  return result;
}

unint64_t sub_6E904()
{
  result = qword_2811D0;
  if (!qword_2811D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GoalType, &type metadata for GoalType, v0, v1);
    atomic_store(result, &qword_2811D0);
  }

  return result;
}

unint64_t sub_6E9C4()
{
  result = qword_2811D8;
  if (!qword_2811D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationData, &type metadata for NotificationData, v0, v1);
    atomic_store(result, &qword_2811D8);
  }

  return result;
}

unint64_t sub_6EA1C()
{
  result = qword_2811E0;
  if (!qword_2811E0)
  {
    result = swift_getWitnessTable("i\v\a", &type metadata for NotificationData, v0, v1);
    atomic_store(result, &qword_2811E0);
  }

  return result;
}

uint64_t sub_6EA70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_6EAB8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_6EB34()
{
  result = qword_2811E8;
  if (!qword_2811E8)
  {
    result = swift_getWitnessTable(byte_1ECBAC, &type metadata for NotificationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2811E8);
  }

  return result;
}

unint64_t sub_6EB8C()
{
  result = qword_2811F0;
  if (!qword_2811F0)
  {
    result = swift_getWitnessTable(byte_1ECB1C, &type metadata for NotificationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2811F0);
  }

  return result;
}

unint64_t sub_6EBE4()
{
  result = qword_2811F8;
  if (!qword_2811F8)
  {
    result = swift_getWitnessTable(byte_1ECB44, &type metadata for NotificationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2811F8);
  }

  return result;
}

uint64_t sub_6EC38(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000214480;
  if (a1 == 0xD000000000000015 && 0x8000000000214480 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE0044496E6F6974;
    if (a1 == 0x6163696669746F6ELL && a2 == 0xEE0044496E6F6974 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000000002144A0;
      if (a1 == 0xD000000000000010 && 0x80000000002144A0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x657079546F636572 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x657079546C616F67 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else if (a1 == 0x646F43656C746974 && a2 == 0xE900000000000065 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 6;
      }

      else
      {
        v14 = 0xEB0000000065646FLL;
        if (a1 == 0x436567617373656DLL && a2 == 0xEB0000000065646FLL || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 7;
        }

        else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
        {
          0xE700000000000000, v14, a3, a4, a5, a6, a7, a8;
          return 8;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 8;
          }

          else
          {
            return 9;
          }
        }
      }
    }
  }
}

void __swiftcall YIRDetailedData.init(totalCardCount:cardViewedCount:)(BookAnalytics::YIRDetailedData *__return_ptr retstr, Swift::Int64_optional totalCardCount, Swift::Int64_optional cardViewedCount)
{
  retstr->totalCardCount.value = totalCardCount.value;
  retstr->totalCardCount.is_nil = totalCardCount.is_nil;
  *(&retstr->cardViewedCount.value + 7) = cardViewedCount.value;
  BYTE6(retstr[1].totalCardCount.value) = cardViewedCount.is_nil;
}

uint64_t sub_6EF60()
{
  if (*v0)
  {
    return 0x7765695664726163;
  }

  else
  {
    return 0x7261436C61746F74;
  }
}

void sub_6EFB4(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEE00746E756F4364;
  v13 = a1 == 0x7261436C61746F74 && a2 == 0xEE00746E756F4364;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0x7765695664726163 && a2 == 0xEF746E756F436465)
  {
    0xEF746E756F436465, 0xEF746E756F436465, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_6F0A0(uint64_t a1)
{
  v2 = sub_6F508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6F0DC(uint64_t a1)
{
  v2 = sub_6F508();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YIRDetailedData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_281200, &qword_1ECC28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  v10 = *(v1 + 24);
  sub_48B8(a1, a1[3]);
  sub_6F508();
  sub_1E1E00();
  v12 = 0;
  v7 = v9[1];
  sub_1E1CA0();
  if (!v7)
  {
    v11 = 1;
    sub_1E1CA0();
  }

  return (*(v4 + 8))(v6, v3);
}

void YIRDetailedData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_281210, &qword_1ECC30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_48B8(a1, a1[3]);
  sub_6F508();
  sub_1E1DF0();
  if (!v2)
  {
    v25 = 0;
    v16 = sub_1E1BD0();
    v23 = v17;
    v18 = v16;
    v24 = 1;
    v19 = sub_1E1BD0();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    *a2 = v18;
    *(a2 + 8) = v23 & 1;
    *(a2 + 16) = v19;
    *(a2 + 24) = v21 & 1;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

BOOL _s13BookAnalytics15YIRDetailedDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

unint64_t sub_6F508()
{
  result = qword_281208;
  if (!qword_281208)
  {
    result = swift_getWitnessTable("u\b\a", &type metadata for YIRDetailedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281208);
  }

  return result;
}

unint64_t sub_6F560()
{
  result = qword_281218;
  if (!qword_281218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for YIRDetailedData, &type metadata for YIRDetailedData, v0, v1);
    atomic_store(result, &qword_281218);
  }

  return result;
}

unint64_t sub_6F5B8()
{
  result = qword_281220;
  if (!qword_281220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for YIRDetailedData, &type metadata for YIRDetailedData, v0, v1);
    atomic_store(result, &qword_281220);
  }

  return result;
}

uint64_t sub_6F60C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6F62C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_6F680()
{
  result = qword_281228;
  if (!qword_281228)
  {
    result = swift_getWitnessTable(byte_1ECDDC, &type metadata for YIRDetailedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281228);
  }

  return result;
}

unint64_t sub_6F6D8()
{
  result = qword_281230;
  if (!qword_281230)
  {
    result = swift_getWitnessTable(byte_1ECD4C, &type metadata for YIRDetailedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281230);
  }

  return result;
}

unint64_t sub_6F730()
{
  result = qword_281238;
  if (!qword_281238)
  {
    result = swift_getWitnessTable(byte_1ECD74, &type metadata for YIRDetailedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281238);
  }

  return result;
}

uint64_t GetStartedActionEvent.getStartedActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_281270, &unk_1ECE60);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GetStartedActionEvent.getStartedActionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_281270, &unk_1ECE60);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GetStartedActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GetStartedActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GetStartedActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetStartedActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GetStartedActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281270, &unk_1ECE60);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for GetStartedActionEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t GetStartedActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GetStartedActionEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GetStartedActionEvent.Model.init(getStartedActionData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for GetStartedActionEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_6FCA4()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_6FCE8(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0x80000000002144C0;
  if (a1 == 0xD000000000000014 && 0x80000000002144C0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_6FDD8(uint64_t a1)
{
  v2 = sub_7000C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6FE14(uint64_t a1)
{
  v2 = sub_7000C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GetStartedActionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_281278, &qword_1ECE70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_7000C();
  sub_1E1E00();
  v10[15] = *v3;
  v10[14] = 0;
  sub_10F68();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for GetStartedActionEvent.Model(0);
    v10[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_7000C()
{
  result = qword_281280;
  if (!qword_281280)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for GetStartedActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281280);
  }

  return result;
}

void GetStartedActionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E1150();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_281288, &qword_1ECE78);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  StartedAction = type metadata accessor for GetStartedActionEvent.Model(0);
  __chkstk_darwin(StartedAction);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_7000C();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = v10;
    v25 = StartedAction;
    v19 = v28;
    v20 = v29;
    v32 = 0;
    sub_10F10();
    v21 = v30;
    sub_1E1C20();
    v24 = v18;
    *v18 = v33;
    v31 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v23 = v5;
    sub_1E1C20();
    (*(v19 + 8))(v7, v21);
    v22 = v24;
    (*(v26 + 32))(&v24[*(v25 + 20)], v23, v20);
    sub_7035C(v22, v27);
  }

  sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_7035C(uint64_t a1, uint64_t a2)
{
  StartedAction = type metadata accessor for GetStartedActionEvent.Model(0);
  (*(*(StartedAction - 8) + 32))(a2, a1, StartedAction);
  return a2;
}

uint64_t sub_70460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281270, &unk_1ECE60);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_7054C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281270, &unk_1ECE60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_70668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281270, &unk_1ECE60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_7077C(uint64_t a1)
{
  sub_70800(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_70800(uint64_t a1)
{
  if (!qword_2812F8)
  {
    sub_10F10();
    sub_10F68();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_2812F8);
    }
  }
}

uint64_t sub_7087C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_70934(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_709D4(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_70A64()
{
  result = qword_2813B8;
  if (!qword_2813B8)
  {
    result = swift_getWitnessTable(aA_2, &type metadata for GetStartedActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2813B8);
  }

  return result;
}

unint64_t sub_70ABC()
{
  result = qword_2813C0;
  if (!qword_2813C0)
  {
    result = swift_getWitnessTable(byte_1ECF78, &type metadata for GetStartedActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2813C0);
  }

  return result;
}

unint64_t sub_70B14()
{
  result = qword_2813C8;
  if (!qword_2813C8)
  {
    result = swift_getWitnessTable(byte_1ECFA0, &type metadata for GetStartedActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2813C8);
  }

  return result;
}

uint64_t AppSessionStartEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_280D78, &unk_1ED080);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppSessionStartEvent.orientationData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_280D78, &unk_1ED080);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionStartEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

__n128 AppSessionStartEvent.Model.orientationData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t AppSessionStartEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.Model.init(orientationData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = *(type metadata accessor for AppSessionStartEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_710B0()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x7461746E6569726FLL;
  }
}

void sub_710FC(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEF617461446E6F69;
  v13 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_711E8(uint64_t a1)
{
  v2 = sub_71424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_71224(uint64_t a1)
{
  v2 = sub_71424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_281400, &qword_1ED090);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_48B8(a1, a1[3]);
  sub_71424();
  sub_1E1E00();
  v9 = *(v3 + 4);
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_67CE4();
  sub_1E1C80();
  if (!v2)
  {
    type metadata accessor for AppSessionStartEvent.Model(0);
    LOBYTE(v12) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_71424()
{
  result = qword_281408;
  if (!qword_281408)
  {
    result = swift_getWitnessTable(asc_1ED250, &type metadata for AppSessionStartEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281408);
  }

  return result;
}

void AppSessionStartEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_1E1150();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_281410, &qword_1ED098);
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  __chkstk_darwin(started);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_71424();
  sub_1E1DF0();
  if (!v2)
  {
    v19 = v11;
    v25 = started;
    v20 = v29;
    v33 = 0;
    sub_687E4();
    v21 = v30;
    sub_1E1BB0();
    v22 = v32;
    v23 = v19;
    *v19 = v31;
    *(v19 + 4) = v22;
    LOBYTE(v31) = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v24 = v28;
    sub_1E1C20();
    (*(v20 + 8))(v8, v21);
    (*(v26 + 32))(v23 + *(v25 + 20), v5, v24);
    sub_71770(v23, v27);
  }

  sub_4E48(a1, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_71770(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_71874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_7196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_280D78, &unk_1ED080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_71A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_280D78, &unk_1ED080);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_71BC8(uint64_t a1)
{
  if (!qword_280E58)
  {
    sub_687E4();
    sub_67CE4();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_280E58);
    }
  }
}

uint64_t sub_71C44(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 3;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1E1150();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_71D08(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_71DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_71E64()
{
  if (!qword_280F20)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_280F20);
    }
  }
}

unint64_t sub_71EC8()
{
  result = qword_281538;
  if (!qword_281538)
  {
    result = swift_getWitnessTable(aA_3, &type metadata for AppSessionStartEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281538);
  }

  return result;
}

unint64_t sub_71F20()
{
  result = qword_281540;
  if (!qword_281540)
  {
    result = swift_getWitnessTable(byte_1ED198, &type metadata for AppSessionStartEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281540);
  }

  return result;
}

unint64_t sub_71F78()
{
  result = qword_281548;
  if (!qword_281548)
  {
    result = swift_getWitnessTable(aQ_0, &type metadata for AppSessionStartEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281548);
  }

  return result;
}

_BYTE *NotificationEngagementData.init(actionType:actionUrl:targetID:targetType:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

uint64_t sub_72020()
{
  v1 = 0x79546E6F69746361;
  v2 = 0x4449746567726174;
  if (*v0 != 2)
  {
    v2 = 0x7954746567726174;
  }

  if (*v0)
  {
    v1 = 0x72556E6F69746361;
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

uint64_t sub_720A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_72C74(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_720C8(uint64_t a1)
{
  v2 = sub_72858();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_72104(uint64_t a1)
{
  v2 = sub_72858();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationEngagementData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_281550, &unk_1ED2A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v16 = *(v1 + 2);
  v17 = v9;
  v15 = *(v1 + 3);
  v14 = v1[32];
  sub_48B8(a1, a1[3]);
  sub_72858();
  sub_1E1E00();
  v24 = v8;
  v23 = 0;
  sub_728AC();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = v15;
    v12 = v14;
    v22 = 1;
    sub_1E1CB0();
    v18 = v11;
    v21 = 2;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1C80();
    v20 = v12;
    v19 = 3;
    sub_72900();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

void NotificationEngagementData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_281570, &qword_1ED2B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  sub_48B8(a1, a1[3]);
  sub_72858();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v50 = 0;
    sub_72954();
    sub_1E1C20();
    v16 = v51;
    v49 = 1;
    v43 = sub_1E1BE0();
    v44 = v17;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    v48 = 2;
    sub_6E7F0(&qword_2811B8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1BB0();
    v18 = v45;
    v46 = 3;
    sub_729A8();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v26 = v47;
    *a2 = v16;
    v27 = v44;
    *(a2 + 8) = v43;
    *(a2 + 16) = v27;
    *(a2 + 24) = v18;
    *(a2 + 32) = v26;

    sub_4E48(a1, v28, v29, v30, v31, v32, v33, v34);
    v18, v35, v36, v37, v38, v39, v40, v41;
    v27, v19, v20, v21, v22, v23, v24, v25;
  }
}

uint64_t _s13BookAnalytics26NotificationEngagementDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v15 = a2[32];
  if ((sub_21FB4(*a1, *a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    goto LABEL_34;
  }

  v22 = v8 == v12 && v9 == v13;
  if (!v22 && (sub_1E1D30() & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!v10)
  {
    if (!v14)
    {
      goto LABEL_10;
    }

LABEL_34:
    v31 = 0;
    return v31 & 1;
  }

  if (!v14 || (sub_5C5F8(v10, v14) & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  v23 = 0xD000000000000012;
  v24 = 0x8000000000213110;
  if (v11 == 1)
  {
    v25 = 0xD000000000000012;
  }

  else
  {
    v25 = 0xD00000000000001ALL;
  }

  if (v11 == 1)
  {
    v26 = 0x8000000000213110;
  }

  else
  {
    v26 = 0x8000000000213130;
  }

  if (v11)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0x6E776F6E6B6E75;
  }

  if (v11)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  if (v15 != 1)
  {
    v23 = 0xD00000000000001ALL;
    v24 = 0x8000000000213130;
  }

  if (v15)
  {
    v29 = v23;
  }

  else
  {
    v29 = 0x6E776F6E6B6E75;
  }

  if (v15)
  {
    v30 = v24;
  }

  else
  {
    v30 = 0xE700000000000000;
  }

  if (v27 == v29 && v28 == v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = sub_1E1D30();
  }

  v28, v16, v29, v17, v18, v19, v20, v21;
  v30, v33, v34, v35, v36, v37, v38, v39;
  return v31 & 1;
}

unint64_t sub_72858()
{
  result = qword_281558;
  if (!qword_281558)
  {
    result = swift_getWitnessTable(byte_1ED4A0, &type metadata for NotificationEngagementData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281558);
  }

  return result;
}

unint64_t sub_728AC()
{
  result = qword_281560;
  if (!qword_281560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionType, &type metadata for ActionType, v0, v1);
    atomic_store(result, &qword_281560);
  }

  return result;
}

unint64_t sub_72900()
{
  result = qword_281568;
  if (!qword_281568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TargetType, &type metadata for TargetType, v0, v1);
    atomic_store(result, &qword_281568);
  }

  return result;
}

unint64_t sub_72954()
{
  result = qword_281578;
  if (!qword_281578)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionType, &type metadata for ActionType, v0, v1);
    atomic_store(result, &qword_281578);
  }

  return result;
}

unint64_t sub_729A8()
{
  result = qword_281580;
  if (!qword_281580)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TargetType, &type metadata for TargetType, v0, v1);
    atomic_store(result, &qword_281580);
  }

  return result;
}

unint64_t sub_72A00()
{
  result = qword_281588;
  if (!qword_281588)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationEngagementData, &type metadata for NotificationEngagementData, v0, v1);
    atomic_store(result, &qword_281588);
  }

  return result;
}

unint64_t sub_72A58()
{
  result = qword_281590;
  if (!qword_281590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationEngagementData, &type metadata for NotificationEngagementData, v0, v1);
    atomic_store(result, &qword_281590);
  }

  return result;
}

__n128 sub_72AAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_72AC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_72B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_72B70()
{
  result = qword_281598;
  if (!qword_281598)
  {
    result = swift_getWitnessTable(byte_1ED478, &type metadata for NotificationEngagementData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281598);
  }

  return result;
}

unint64_t sub_72BC8()
{
  result = qword_2815A0;
  if (!qword_2815A0)
  {
    result = swift_getWitnessTable(a9, &type metadata for NotificationEngagementData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2815A0);
  }

  return result;
}

unint64_t sub_72C20()
{
  result = qword_2815A8;
  if (!qword_2815A8)
  {
    result = swift_getWitnessTable(asc_1ED410, &type metadata for NotificationEngagementData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2815A8);
  }

  return result;
}

uint64_t sub_72C74(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x72556E6F69746361 && a2 == 0xE90000000000006CLL || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x4449746567726174 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570)
  {
    0xEA00000000006570, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t StreamingBitrateChangeEvent.bitRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreamingBitrateChangeEvent.bitRateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StreamingBitrateChangeEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreamingBitrateChangeEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StreamingBitrateChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreamingBitrateChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StreamingBitrateChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for StreamingBitrateChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

void StreamingBitrateChangeEvent.Model.bitRateData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 100);
  v3 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t StreamingBitrateChangeEvent.Model.errorData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  *a1 = v1[14];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t StreamingBitrateChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreamingBitrateChangeEvent.Model.init(contentData:bitRateData:errorData:eventData:)@<X0>(_OWORD *a1@<X0>, int *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = a2[2];
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *(a3 + 3);
  v13 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v13;
  v14 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v14;
  v15 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v15;
  *(a5 + 96) = v7;
  *(a5 + 100) = v8;
  *(a5 + 104) = v9;
  *(a5 + 112) = v10;
  *(a5 + 128) = v11;
  *(a5 + 136) = v12;
  v16 = *(type metadata accessor for StreamingBitrateChangeEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_7360C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x746144726F727265;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x4465746152746962;
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

uint64_t sub_73694@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_74AB4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_736BC(uint64_t a1)
{
  v2 = sub_73A40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_736F8(uint64_t a1)
{
  v2 = sub_73A40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t StreamingBitrateChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2815E0, &qword_1ED500);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  sub_48B8(a1, a1[3]);
  sub_73A40();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v56 = *(v2 + 32);
  v57 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v58 = *(v2 + 64);
  v59 = v11;
  v12 = *(v2 + 16);
  v55[0] = *v2;
  v55[1] = v12;
  v51 = v56;
  v52 = v10;
  v13 = *(v2 + 80);
  v53 = v58;
  v54 = v13;
  v49 = v55[0];
  v50 = v9;
  v48 = 0;
  sub_13A5C(v55, &v42);
  sub_143D0();
  v14 = v60;
  sub_1E1CF0();
  if (v14)
  {
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    v42 = v49;
    v43 = v50;
    sub_14424(&v42);
  }

  else
  {
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    v42 = v49;
    v43 = v50;
    sub_14424(&v42);
    v15 = *(v2 + 100);
    v16 = *(v2 + 104);
    LODWORD(v37) = *(v2 + 96);
    BYTE4(v37) = v15;
    LODWORD(v38) = v16;
    v41 = 1;
    sub_14574();
    sub_1E1CF0();
    v17 = *(v2 + 120);
    v18 = *(v2 + 128);
    v19 = *(v2 + 136);
    v37 = *(v2 + 112);
    v38 = v17;
    v39 = v18;
    v40 = v19;
    v41 = 2;
    sub_145C8();

    sub_1E1CF0();
    v20 = v38;
    v40, v21, v22, v23, v24, v25, v26, v27;
    v20, v28, v29, v30, v31, v32, v33, v34;
    type metadata accessor for StreamingBitrateChangeEvent.Model(0);
    LOBYTE(v37) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_73A40()
{
  result = qword_2815E8;
  if (!qword_2815E8)
  {
    result = swift_getWitnessTable(byte_1ED6D8, &type metadata for StreamingBitrateChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2815E8);
  }

  return result;
}

void StreamingBitrateChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1E1150();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_3D68(&qword_2815F0, &qword_1ED508);
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v36 - v6;
  v8 = type metadata accessor for StreamingBitrateChangeEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v41 = a1;
  sub_48B8(a1, v11);
  sub_73A40();
  v12 = v40;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v41, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v40 = v5;
    v20 = v38;
    v52 = 0;
    sub_14CB8();
    sub_1E1C20();
    v21 = v48;
    *(v10 + 2) = v47;
    *(v10 + 3) = v21;
    v22 = v50;
    *(v10 + 4) = v49;
    *(v10 + 5) = v22;
    v23 = v46;
    *v10 = v45;
    *(v10 + 1) = v23;
    v51 = 1;
    sub_14DB4();
    sub_1E1C20();
    v24 = BYTE4(v42);
    v25 = DWORD2(v42);
    *(v10 + 24) = v42;
    v10[100] = v24;
    *(v10 + 26) = v25;
    v51 = 2;
    sub_14E08();
    sub_1E1C20();
    v26 = v43;
    v27 = v44;
    *(v10 + 7) = v42;
    *(v10 + 16) = v26;
    *(v10 + 17) = v27;
    LOBYTE(v42) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v28 = v40;
    sub_1E1C20();
    (*(v20 + 8))(v7, v39);
    (*(v36 + 32))(&v10[*(v8 + 28)], v28, v3);
    sub_73F44(v10, v37);
    sub_4E48(v41, v29, v30, v31, v32, v33, v34, v35);
    sub_73FA8(v10);
  }
}

uint64_t sub_73F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingBitrateChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_73FA8(uint64_t a1)
{
  v2 = type metadata accessor for StreamingBitrateChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_740A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_74228(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_743F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_745B8(uint64_t a1)
{
  sub_74714(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_74714(319, &qword_27E2E0, sub_14DB4, sub_14574, &type metadata for BitRateData);
    if (v2 <= 0x3F)
    {
      sub_74714(319, &unk_27E2E8, sub_14E08, sub_145C8, &type metadata for ErrorData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_74714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_747A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_74864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_74908(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_749B0()
{
  result = qword_281728;
  if (!qword_281728)
  {
    result = swift_getWitnessTable(byte_1ED6B0, &type metadata for StreamingBitrateChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281728);
  }

  return result;
}

unint64_t sub_74A08()
{
  result = qword_281730;
  if (!qword_281730)
  {
    result = swift_getWitnessTable(byte_1ED620, &type metadata for StreamingBitrateChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281730);
  }

  return result;
}

unint64_t sub_74A60()
{
  result = qword_281738;
  if (!qword_281738)
  {
    result = swift_getWitnessTable(byte_1ED648, &type metadata for StreamingBitrateChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281738);
  }

  return result;
}

uint64_t sub_74AB4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x4465746152746962 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BookAnalytics::ContentEnvironment_optional __swiftcall ContentEnvironment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FE78;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 4;
  if (v5 < 4)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ContentEnvironment.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x676E6967617473;
  if (*v0 != 2)
  {
    v2 = 1685025392;
  }

  if (*v0)
  {
    v1 = 24945;
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

unint64_t sub_74D00()
{
  result = qword_281740;
  if (!qword_281740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentEnvironment, &type metadata for ContentEnvironment, v0, v1);
    atomic_store(result, &qword_281740);
  }

  return result;
}

Swift::Int sub_74D54()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xE700000000000000;
  if (v1 != 2)
  {
    v3 = 0xE400000000000000;
  }

  if (v1)
  {
    v2 = 0xE200000000000000;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_74E04(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0xE700000000000000;
  if (*v1 != 2)
  {
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_74EA0(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  if (v2 != 2)
  {
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v3 = 0xE200000000000000;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_74F58(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE700000000000000;
  v5 = 0x676E6967617473;
  if (*v1 != 2)
  {
    v5 = 1685025392;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 24945;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_75084()
{
  result = qword_281748;
  if (!qword_281748)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentEnvironment, &type metadata for ContentEnvironment, v0, v1);
    atomic_store(result, &qword_281748);
  }

  return result;
}

uint64_t RoomViewEvent.roomData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_281780, &qword_1ED858);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RoomViewEvent.roomData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_281780, &qword_1ED858);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RoomViewEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281780, &qword_1ED858);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RoomViewEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t RoomViewEvent.Model.roomData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
}

uint64_t RoomViewEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v12[7] = v2;
  v12[8] = *(v1 + 184);
  v13 = *(v1 + 200);
  v3 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v3;
  v4 = *(v1 + 136);
  v12[4] = *(v1 + 120);
  v12[5] = v4;
  v5 = *(v1 + 72);
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  v6 = *(v1 + 168);
  *(a1 + 96) = *(v1 + 152);
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v1 + 184);
  *(a1 + 144) = *(v1 + 200);
  v7 = *(v1 + 104);
  *(a1 + 32) = *(v1 + 88);
  *(a1 + 48) = v7;
  v8 = *(v1 + 136);
  *(a1 + 64) = *(v1 + 120);
  *(a1 + 80) = v8;
  v9 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v9;
  return sub_275C4(v12, v11);
}

uint64_t RoomViewEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  *a1 = *(v1 + 208);
  *(a1 + 16) = v2;
}

uint64_t RoomViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.Model.init(roomData:linkData:upSellData:suggestionData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  *(a7 + 40) = *(a1 + 40);
  v10 = *(a2 + 112);
  *(a7 + 152) = *(a2 + 96);
  *(a7 + 168) = v10;
  *(a7 + 184) = *(a2 + 128);
  v11 = *(a2 + 48);
  *(a7 + 88) = *(a2 + 32);
  *(a7 + 104) = v11;
  v12 = *(a2 + 80);
  *(a7 + 120) = *(a2 + 64);
  *(a7 + 136) = v12;
  v13 = *(a2 + 16);
  *(a7 + 56) = *a2;
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a3 + 16);
  v17 = *a4;
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 24) = v14;
  *(a7 + 32) = v15;
  *(a7 + 200) = *(a2 + 144);
  *(a7 + 72) = v13;
  *(a7 + 208) = *a3;
  *(a7 + 224) = v16;
  *(a7 + 232) = v17;
  v18 = type metadata accessor for RoomViewEvent.Model(0);
  v19 = *(v18 + 32);
  v20 = sub_1E1150();
  (*(*(v20 - 8) + 32))(a7 + v19, a5, v20);
  v21 = *(v18 + 36);
  v22 = sub_1E11A0();
  v23 = *(*(v22 - 8) + 32);

  return v23(a7 + v21, a6, v22);
}

uint64_t sub_75F14()
{
  v1 = *v0;
  v2 = 0x617461446D6F6F72;
  v3 = 0x6974736567677573;
  v4 = 0x746144746E657665;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x617461446B6E696CLL;
  if (v1 != 1)
  {
    v5 = 0x61446C6C65537075;
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

uint64_t sub_75FE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_77D48(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_76010(uint64_t a1)
{
  v2 = sub_7659C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7604C(uint64_t a1)
{
  v2 = sub_7659C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RoomViewEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_281788, &qword_1ED860);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v72 - v6;
  sub_48B8(a1, a1[3]);
  sub_7659C();
  sub_1E1E00();
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = *(v2 + 32);
  v12 = v2[5];
  v13 = v2[6];
  v92 = *v2;
  v93 = v8;
  v94 = v9;
  v95 = v10;
  v96 = v11;
  v97 = v12;
  v98 = v13;
  v91 = 0;
  sub_765F0();

  v14 = v99;
  sub_1E1CF0();
  v22 = v93;
  if (v14)
  {
    v23 = v98;
    v95, v15, v16, v17, v18, v19, v20, v21;
    v22, v24, v25, v26, v27, v28, v29, v30;
    v23, v31, v32, v33, v34, v35, v36, v37;
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v99 = v4;
    v39 = v98;
    v95, v15, v16, v17, v18, v19, v20, v21;
    v22, v40, v41, v42, v43, v44, v45, v46;
    v39, v47, v48, v49, v50, v51, v52, v53;
    v54 = *(v2 + 21);
    v89[6] = *(v2 + 19);
    v89[7] = v54;
    v89[8] = *(v2 + 23);
    v90 = v2[25];
    v55 = *(v2 + 13);
    v89[2] = *(v2 + 11);
    v89[3] = v55;
    v56 = *(v2 + 17);
    v89[4] = *(v2 + 15);
    v89[5] = v56;
    v57 = *(v2 + 9);
    v89[0] = *(v2 + 7);
    v89[1] = v57;
    v58 = *(v2 + 21);
    v85 = *(v2 + 19);
    v86 = v58;
    v87 = *(v2 + 23);
    v88 = v2[25];
    v59 = *(v2 + 13);
    v81 = *(v2 + 11);
    v82 = v59;
    v60 = *(v2 + 17);
    v83 = *(v2 + 15);
    v84 = v60;
    v61 = *(v2 + 9);
    v79 = *(v2 + 7);
    v80 = v61;
    v78 = 1;
    sub_275C4(v89, v76);
    sub_18630();
    sub_1E1CF0();
    v76[6] = v85;
    v76[7] = v86;
    v76[8] = v87;
    v77 = v88;
    v76[2] = v81;
    v76[3] = v82;
    v76[4] = v83;
    v76[5] = v84;
    v76[0] = v79;
    v76[1] = v80;
    sub_283A8(v76);
    v62 = v2[28];
    v74 = *(v2 + 13);
    v75 = v62;
    v73 = 2;
    sub_28450();

    sub_1E1C80();
    v75, v63, v64, v65, v66, v67, v68, v69;
    LOBYTE(v74) = *(v2 + 232);
    v73 = 3;
    sub_284F8();
    sub_1E1C80();
    v70 = v5;
    type metadata accessor for RoomViewEvent.Model(0);
    LOBYTE(v74) = 4;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    LOBYTE(v74) = 5;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v71 = v99;
    sub_1E1CF0();
    return (*(v70 + 8))(v7, v71);
  }
}

unint64_t sub_7659C()
{
  result = qword_281790;
  if (!qword_281790)
  {
    result = swift_getWitnessTable(asc_1EDA4C, &type metadata for RoomViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281790);
  }

  return result;
}

unint64_t sub_765F0()
{
  result = qword_281798;
  if (!qword_281798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RoomData, &type metadata for RoomData, v0, v1);
    atomic_store(result, &qword_281798);
  }

  return result;
}

void RoomViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = sub_1E11A0();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_3D68(&qword_2817A0, &qword_1ED868);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v9 = &v43 - v8;
  v10 = type metadata accessor for RoomViewEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v67 = a1;
  sub_48B8(a1, v13);
  sub_7659C();
  v52 = v9;
  v14 = v53;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v67, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v45 = v7;
    v22 = v50;
    v44 = v4;
    v53 = v5;
    LOBYTE(v55) = 0;
    sub_76DD0();
    sub_1E1C20();
    v23 = v59;
    v24 = v60[0];
    v25 = v12;
    *v12 = v58;
    *(v12 + 1) = v23;
    v12[32] = v24;
    *(v12 + 40) = *&v60[8];
    v57 = 1;
    sub_18FA4();
    sub_1E1C20();
    v26 = v22;
    v27 = v64;
    *(v25 + 152) = v63;
    *(v25 + 168) = v27;
    *(v25 + 184) = v65;
    v28 = *&v60[16];
    *(v25 + 88) = *v60;
    *(v25 + 104) = v28;
    v29 = v62;
    *(v25 + 120) = v61;
    *(v25 + 136) = v29;
    v30 = v59;
    *(v25 + 56) = v58;
    *(v25 + 200) = v66;
    *(v25 + 72) = v30;
    v54 = 2;
    sub_28EF4();
    sub_1E1BB0();
    v31 = v56;
    *(v25 + 208) = v55;
    *(v25 + 224) = v31;
    v54 = 3;
    sub_28F9C();
    sub_1E1BB0();
    *(v25 + 232) = v55;
    LOBYTE(v55) = 4;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v32 = v45;
    v33 = v53;
    sub_1E1C20();
    (*(v49 + 32))(v25 + *(v10 + 32), v32, v33);
    LOBYTE(v55) = 5;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v34 = v44;
    v35 = v48;
    sub_1E1C20();
    (*(v26 + 8))(v52, v51);
    (*(v46 + 32))(v25 + *(v10 + 36), v34, v35);
    sub_76E24(v25, v47);
    sub_4E48(v67, v36, v37, v38, v39, v40, v41, v42);
    sub_76E88(v25);
  }
}

unint64_t sub_76DD0()
{
  result = qword_2817A8;
  if (!qword_2817A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RoomData, &type metadata for RoomData, v0, v1);
    atomic_store(result, &qword_2817A8);
  }

  return result;
}

uint64_t sub_76E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_76E88(uint64_t a1)
{
  v2 = type metadata accessor for RoomViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_76F84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281780, &qword_1ED858);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_771B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281780, &qword_1ED858);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_77428(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281780, &qword_1ED858);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

void sub_77694(uint64_t a1)
{
  sub_77858(319, &unk_281818, sub_76DD0, sub_765F0, &type metadata for RoomData);
  if (v1 <= 0x3F)
  {
    sub_77858(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_77858(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
      if (v3 <= 0x3F)
      {
        sub_77858(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
        if (v4 <= 0x3F)
        {
          sub_5684(319);
          if (v5 <= 0x3F)
          {
            sub_5750(319);
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

void sub_77858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_778E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_77A20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_77B44(uint64_t a1)
{
  sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        sub_1E11A0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_77C44()
{
  result = qword_2818F8;
  if (!qword_2818F8)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for RoomViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2818F8);
  }

  return result;
}

unint64_t sub_77C9C()
{
  result = qword_281900;
  if (!qword_281900)
  {
    result = swift_getWitnessTable(byte_1ED994, &type metadata for RoomViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281900);
  }

  return result;
}

unint64_t sub_77CF4()
{
  result = qword_281908;
  if (!qword_281908)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for RoomViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281908);
  }

  return result;
}

uint64_t sub_77D48(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x617461446D6F6F72 && a2 == 0xE800000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = 0xEE00617461446E6FLL;
    if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 5;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }
}

uint64_t SwooshExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SwooshExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = enum case for EventProperty.optional<A>(_:);
  v11 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t SwooshExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  *a1 = *(v1 + 264);
  *(a1 + 8) = *(v1 + 272);
  *(a1 + 24) = v2;
}

uint64_t SwooshExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  *a1 = *(v1 + 296);
  *(a1 + 16) = v2;
}

uint64_t SwooshExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent.Model(0) + 36);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent.Model(0) + 40);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.Model.init(sectionData:linkData:pageData:upSellData:suggestionData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a1[5];
  *(a8 + 64) = a1[4];
  *(a8 + 80) = v11;
  v12 = a1[1];
  *a8 = *a1;
  *(a8 + 16) = v12;
  v13 = a1[3];
  *(a8 + 32) = a1[2];
  *(a8 + 48) = v13;
  v14 = a2[6];
  v15 = a2[8];
  *(a8 + 224) = a2[7];
  *(a8 + 240) = v15;
  v16 = a2[2];
  v17 = a2[4];
  v18 = a2[5];
  *(a8 + 160) = a2[3];
  *(a8 + 176) = v17;
  v19 = a1[6];
  *(a8 + 192) = v18;
  *(a8 + 208) = v14;
  v20 = *a2;
  v21 = a2[1];
  *(a8 + 96) = v19;
  *(a8 + 112) = v20;
  v22 = (a8 + 264);
  v23 = *(a3 + 16);
  v24 = *(a3 + 24);
  v25 = *(a4 + 16);
  v26 = *a5;
  *(a8 + 256) = *(a2 + 18);
  *(a8 + 128) = v21;
  *(a8 + 144) = v16;
  *v22 = *a3;
  *(a8 + 280) = v23;
  *(a8 + 288) = v24;
  v22[2] = *a4;
  *(a8 + 312) = v25;
  *(a8 + 320) = v26;
  v27 = type metadata accessor for SwooshExposureEvent.Model(0);
  v28 = *(v27 + 36);
  v29 = sub_1E1150();
  (*(*(v29 - 8) + 32))(a8 + v28, a6, v29);
  v30 = *(v27 + 40);
  v31 = sub_1E11A0();
  v32 = *(*(v31 - 8) + 32);

  return v32(a8 + v30, a7, v31);
}

uint64_t sub_78D98()
{
  v1 = *v0;
  v2 = 0x446E6F6974636573;
  v3 = 0x746144746E657665;
  if (v1 != 5)
  {
    v3 = 0x74614464656D6974;
  }

  v4 = 0x61446C6C65537075;
  if (v1 != 3)
  {
    v4 = 0x6974736567677573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x617461446B6E696CLL;
  if (v1 != 1)
  {
    v5 = 0x6174614465676170;
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

uint64_t sub_78E94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_7ACF4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_78EBC(uint64_t a1)
{
  v2 = sub_794D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_78EF8(uint64_t a1)
{
  v2 = sub_794D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SwooshExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_281940, &qword_1EDAA8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - v6;
  sub_48B8(a1, a1[3]);
  sub_794D0();
  sub_1E1E00();
  v8 = v2[4];
  v9 = v2[2];
  v88 = v2[3];
  v89 = v8;
  v10 = v2[4];
  v11 = v2[6];
  v90 = v2[5];
  v91 = v11;
  v12 = *v2;
  v13 = v2[2];
  v86 = v2[1];
  v87 = v13;
  v14 = *v2;
  v82 = v10;
  v83 = v90;
  v84 = v2[6];
  v85 = v14;
  v78 = v12;
  v79 = v86;
  v80 = v9;
  v81 = v88;
  v77 = 0;
  sub_274D4(&v85, &v67);
  sub_18544();
  v15 = v92;
  sub_1E1CF0();
  if (v15)
  {
    v71 = v82;
    v72 = v83;
    v73 = v84;
    v67 = v78;
    v68 = v79;
    v69 = v80;
    v70 = v81;
    sub_28354(&v67);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v66[4] = v82;
    v66[5] = v83;
    v66[6] = v84;
    v66[0] = v78;
    v66[1] = v79;
    v66[2] = v80;
    v66[3] = v81;
    sub_28354(v66);
    v17 = v2[14];
    v18 = v2[12];
    v73 = v2[13];
    v74 = v17;
    v19 = v2[14];
    v75 = v2[15];
    v20 = v2[10];
    v21 = v2[8];
    v69 = v2[9];
    v70 = v20;
    v22 = v2[10];
    v23 = v2[12];
    v71 = v2[11];
    v72 = v23;
    v24 = v2[8];
    v67 = v2[7];
    v68 = v24;
    v62 = v73;
    v63 = v19;
    v64 = v2[15];
    v58 = v69;
    v59 = v22;
    v60 = v71;
    v61 = v18;
    v76 = *(v2 + 32);
    v65 = *(v2 + 32);
    v56 = v67;
    v57 = v21;
    v55 = 1;
    sub_275C4(&v67, v53);
    sub_18630();
    sub_1E1CF0();
    v53[6] = v62;
    v53[7] = v63;
    v53[8] = v64;
    v54 = v65;
    v53[2] = v58;
    v53[3] = v59;
    v53[4] = v60;
    v53[5] = v61;
    v53[0] = v56;
    v53[1] = v57;
    sub_283A8(v53);
    v25 = *(v2 + 36);
    *v51 = *(v2 + 33);
    *&v51[8] = v2[17];
    v52 = v25;
    v50 = 2;
    sub_18598();

    sub_1E1CF0();
    v26 = *&v51[8];
    v52, v27, v28, v29, v30, v31, v32, v33;
    v26, v34, v35, v36, v37, v38, v39, v40;
    v41 = *(v2 + 39);
    *v51 = *(v2 + 296);
    *&v51[16] = v41;
    v50 = 3;
    sub_28450();

    sub_1E1C80();
    *&v51[16], v42, v43, v44, v45, v46, v47, v48;
    v51[0] = *(v2 + 320);
    v50 = 4;
    sub_284F8();
    sub_1E1C80();
    v92 = type metadata accessor for SwooshExposureEvent.Model(0);
    v51[0] = 5;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v51[0] = 6;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
    return (*(v5 + 8))(v7, 0);
  }
}

unint64_t sub_794D0()
{
  result = qword_281948;
  if (!qword_281948)
  {
    result = swift_getWitnessTable(byte_1EDCA0, &type metadata for SwooshExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281948);
  }

  return result;
}

void SwooshExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = sub_1E11A0();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_281950, &qword_1EDAB0);
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for SwooshExposureEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v71 = a1;
  sub_48B8(a1, v13);
  sub_794D0();
  v54 = v9;
  v14 = v55;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v71, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v55 = v6;
    v22 = v12;
    v61 = 0;
    sub_18EFC();
    sub_1E1C20();
    v23 = v67;
    v24 = v68;
    *(v12 + 4) = v66;
    *(v12 + 5) = v23;
    *(v12 + 6) = v24;
    v25 = v63;
    *v12 = v62;
    *(v12 + 1) = v25;
    v26 = v65;
    *(v12 + 2) = v64;
    *(v12 + 3) = v26;
    v60 = 1;
    sub_18FA4();
    sub_1E1C20();
    v27 = v69[7];
    *(v12 + 13) = v69[6];
    *(v12 + 14) = v27;
    *(v12 + 15) = v69[8];
    *(v12 + 32) = v70;
    v28 = v69[3];
    *(v12 + 9) = v69[2];
    *(v12 + 10) = v28;
    v29 = v69[5];
    *(v12 + 11) = v69[4];
    *(v12 + 12) = v29;
    v30 = v69[1];
    *(v12 + 7) = v69[0];
    *(v12 + 8) = v30;
    v56 = 2;
    sub_18F50();
    sub_1E1C20();
    v31 = v58;
    v32 = v59;
    *(v12 + 264) = v57;
    *(v12 + 35) = v31;
    *(v12 + 36) = v32;
    v56 = 3;
    sub_28EF4();
    sub_1E1BB0();
    v46 = v4;
    v33 = v58;
    *(v12 + 296) = v57;
    *(v12 + 39) = v33;
    v56 = 4;
    sub_28F9C();
    v45 = 0;
    sub_1E1BB0();
    v12[320] = v57;
    LOBYTE(v57) = 5;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v34 = v55;
    sub_1E1C20();
    v44 = v10;
    (*(v51 + 32))(&v12[*(v10 + 36)], v34, v4);
    LOBYTE(v57) = 6;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v35 = v49;
    sub_1E1C20();
    (*(v52 + 8))(v54, v53);
    (*(v47 + 32))(v22 + *(v44 + 40), v50, v35);
    sub_79C7C(v22, v48);
    sub_4E48(v71, v36, v37, v38, v39, v40, v41, v42);
    sub_79CE0(v22);
  }
}

uint64_t sub_79C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwooshExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_79CE0(uint64_t a1)
{
  v2 = type metadata accessor for SwooshExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_79DDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.optional<A>(_:);
  v12 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

uint64_t sub_7A058(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_7A320(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[10];

  return v22(v23, a2, a2, v21);
}

void sub_7A5E0(uint64_t a1)
{
  sub_7A7F4(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
  if (v1 <= 0x3F)
  {
    sub_7A7F4(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_7A7F4(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
      if (v3 <= 0x3F)
      {
        sub_7A7F4(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
        if (v4 <= 0x3F)
        {
          sub_7A7F4(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
          if (v5 <= 0x3F)
          {
            sub_5684(319);
            if (v6 <= 0x3F)
            {
              sub_5750(319);
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

void sub_7A7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_7A884(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_7A9BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_7AAE0(uint64_t a1)
{
  sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        sub_1E11A0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_7ABF0()
{
  result = qword_281AA8;
  if (!qword_281AA8)
  {
    result = swift_getWitnessTable(byte_1EDC78, &type metadata for SwooshExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281AA8);
  }

  return result;
}

unint64_t sub_7AC48()
{
  result = qword_281AB0;
  if (!qword_281AB0)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for SwooshExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281AB0);
  }

  return result;
}

unint64_t sub_7ACA0()
{
  result = qword_281AB8;
  if (!qword_281AB8)
  {
    result = swift_getWitnessTable(asc_1EDC10, &type metadata for SwooshExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281AB8);
  }

  return result;
}

uint64_t sub_7ACF4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v13 = 0xEE00617461446E6FLL;
    if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 5;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
      return 6;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 6;
      }

      else
      {
        return 7;
      }
    }
  }
}

id sub_7AF60()
{
  result = [objc_allocWithZone(type metadata accessor for EventReporter()) init];
  qword_281AC0 = result;
  return result;
}

id static EventReporter.shared.getter()
{
  if (qword_27D138 != -1)
  {
    swift_once();
  }

  v1 = qword_281AC0;

  return v1;
}

double sub_7B048()
{
  qword_281AE8 = 0;
  result = 0.0;
  xmmword_281AC8 = 0u;
  *algn_281AD8 = 0u;
  return result;
}

uint64_t static EventReporter.libraryAnalyticsDataProvider.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_7B0E0(&xmmword_281AC8, a1);
}

uint64_t sub_7B0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_281AF0, &qword_1EDCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static EventReporter.libraryAnalyticsDataProvider.setter(uint64_t a1)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_7B1F0(a1, &xmmword_281AC8);
  swift_endAccess();
  return sub_18E48(a1, &qword_281AF0, &qword_1EDCF0);
}

uint64_t sub_7B1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_281AF0, &qword_1EDCF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static EventReporter.libraryAnalyticsDataProvider.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_7B2EC(uint64_t a1)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_7B1F0(a1, &xmmword_281AC8);
  return swift_endAccess();
}

void sub_7B374()
{
  v1 = *(v0 + OBJC_IVAR___BAEventReporter_dataProviders);
  os_unfair_lock_lock((v1 + 24));
  sub_7B49C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_7B3D0(BAEventReporter **a1, uint64_t a2)
{
  sub_4C2BC(a2, v11);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_102D78(0, v3[1].super.isa + 1, &dword_0 + 1, v3, v4, v5, v6, v7);
  }

  isa = v3[1].super.isa;
  v8 = *v3[1].dataProviders;
  if (isa >= v8 >> 1)
  {
    v3 = sub_102D78((v8 > 1), (isa + 1), &dword_0 + 1, v3, v4, v5, v6, v7);
  }

  v3[1].super.isa = (isa + 1);
  result = sub_7EE7C(v11, &v3[2] + 40 * isa);
  *a1 = v3;
  return result;
}

void sub_7B51C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_281AE0)
  {
    sub_4C2BC(&xmmword_281AC8, v17 + 1);
    v6 = v18;
    v7 = v19;
    sub_48B8((v17 + 1), v18);
    (*(v7 + 8))(v17, a1, a2, v6, v7);
    v8 = v17[0];
    sub_4E48((v17 + 1), v9, v10, v11, v12, v13, v14, v15);
    v16 = 0x404020100uLL >> (8 * v8);
  }

  else
  {
    LOBYTE(v16) = 4;
  }

  *a3 = v16;
}

uint64_t sub_7B6A0(uint64_t a1, char a2, char a3)
{
  LOBYTE(v15[0]) = a2;
  BYTE1(v15[0]) = a3;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v3 = sub_1E0CB0();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E9970;
  (*(v4 + 104))(v6 + v5, enum case for DataEventTrait.onlyOnce(_:), v3);
  sub_7EDE0();
  sub_1E0C00();
  v6, v7, v8, v9, v10, v11, v12, v13;
  type metadata accessor for AccountEvent(0);
  sub_7EE34(&qword_281BE8, type metadata accessor for AccountEvent, "\ti\a");
  memset(v15, 0, sizeof(v15));
  sub_1E0C10();
  return sub_18E48(v15, &unk_281B50, &unk_1EDD70);
}

uint64_t sub_7B85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8 = *(a2 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    *&v57[0] = _swiftEmptyArrayStorage;
    sub_A7EE8(0, v8, 0, a4, a5, a6, a7, a8);
    v9 = _swiftEmptyArrayStorage;
    swift_beginAccess();
    v11 = (a2 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v15 = v12;
        v16 = sub_1E1770();
        v17 = [Strong contentPrivateIDForContentID:v16];

        swift_unknownObjectRelease();
        if (v17)
        {
          Strong = sub_1E1780();
          v19 = v18;
        }

        else
        {
          Strong = 0;
          v19 = 0xE000000000000000;
        }

        v12 = v15;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v56 = v19;
      v20 = Strong;
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v27 = v21;
        v28 = v12;
        v29 = sub_1E1770();
        v30 = [v27 contentUserIDForContentID:v29];

        swift_unknownObjectRelease();
        if (v30)
        {
          v31 = sub_1E1780();
          v33 = v32;
        }

        else
        {
          v31 = 0;
          v33 = 0xE000000000000000;
        }

        v12 = v28;
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      *&v57[0] = v9;
      isa = v9[1].super.isa;
      v34 = *v9[1].dataProviders;
      if (isa >= v34 >> 1)
      {
        sub_A7EE8((v34 > 1), isa + 1, &dword_0 + 1, v22, v23, v24, v25, v26);
        v9 = *&v57[0];
      }

      v9[1].super.isa = (isa + 1);
      v36 = &v9[3 * isa];
      v36[2].super.isa = v20;
      *v36[2].dataProviders = v56;
      v36[3].super.isa = v31;
      *v36[3].dataProviders = v33;
      v36[4].super.isa = v12;
      *v36[4].dataProviders = v13;
      v11 += 2;
      --v8;
    }

    while (v8);
  }

  *&v57[0] = v9;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v37 = sub_1E0CB0();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1E9970;
  (*(v38 + 104))(v40 + v39, enum case for DataEventTrait.onlyOnce(_:), v37);
  sub_7ED38();
  sub_1E0C00();
  v9, v41, v42, v43, v44, v45, v46, v47;
  v40, v48, v49, v50, v51, v52, v53, v54;
  type metadata accessor for DragDropEvent(0);
  sub_7EE34(&qword_281BD8, type metadata accessor for DragDropEvent, protocol conformance descriptor for DragDropEvent);
  memset(v57, 0, sizeof(v57));
  sub_1E0C10();
  return sub_18E48(v57, &unk_281B50, &unk_1EDD70);
}

uint64_t sub_7BCA8()
{
  sub_A3F08(&v12);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v0 = sub_1E0CB0();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E9970;
  (*(v1 + 104))(v3 + v2, enum case for DataEventTrait.onlyOnce(_:), v0);
  sub_4C164();
  sub_1E0C00();
  v3, v4, v5, v6, v7, v8, v9, v10;
  v18[2] = v14;
  v18[3] = v15;
  v18[4] = v16;
  v18[5] = v17;
  v18[0] = v12;
  v18[1] = v13;
  sub_14424(v18);
  type metadata accessor for HideBookEvent(0);
  sub_7EE34(&qword_281BB8, type metadata accessor for HideBookEvent, protocol conformance descriptor for HideBookEvent);
  v12 = 0u;
  v13 = 0u;
  sub_1E0C10();
  return sub_18E48(&v12, &unk_281B50, &unk_1EDD70);
}

uint64_t sub_7BED0()
{
  sub_A6684(&v27);
  v0 = v27;
  v1 = v28;
  v2 = v29;
  v3 = v30;
  v4 = v31;
  v5 = v32;
  sub_A3F08(v33);
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 20) = v1;
  *(v6 + 24) = v2;
  *(v6 + 28) = v3;
  *(v6 + 29) = v4;
  *(v6 + 30) = v5;
  v7 = v33[3];
  *(v6 + 64) = v33[2];
  *(v6 + 80) = v7;
  v8 = v33[5];
  *(v6 + 96) = v33[4];
  *(v6 + 112) = v8;
  v9 = v33[1];
  *(v6 + 32) = v33[0];
  *(v6 + 48) = v9;
  v10 = swift_allocObject();
  v10[1].super.isa = sub_7E294;
  *v10[1].dataProviders = v6;
  sub_13A5C(v33, &v26);

  sub_1E10C0();
  v6, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
  return sub_14424(v33);
}

void sub_7C190(uint64_t a1, int *a2, _OWORD *a3)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = a2[2];
  v7 = *(a2 + 12);
  v8 = *(a2 + 13);
  v9 = *(a2 + 14);
  v10 = a3[3];
  v33[2] = a3[2];
  v33[3] = v10;
  v11 = a3[5];
  v33[4] = a3[4];
  v33[5] = v11;
  v12 = a3[1];
  v33[0] = *a3;
  v33[1] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 20) = v5;
  *(v13 + 24) = v6;
  *(v13 + 28) = v7;
  *(v13 + 29) = v8;
  *(v13 + 30) = v9;
  v14 = a3[3];
  *(v13 + 64) = a3[2];
  *(v13 + 80) = v14;
  v15 = a3[5];
  *(v13 + 96) = a3[4];
  *(v13 + 112) = v15;
  v16 = a3[1];
  *(v13 + 32) = *a3;
  *(v13 + 48) = v16;
  v17 = swift_allocObject();
  v17[1].super.isa = sub_7EEEC;
  *v17[1].dataProviders = v13;
  sub_13A5C(v33, &v32);

  sub_1E10C0();
  v13, v18, v19, v20, v21, v22, v23, v24;
  v17, v25, v26, v27, v28, v29, v30, v31;
}

uint64_t sub_7C2CC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *&v29[0] = a2;
  DWORD2(v29[0]) = a3;
  BYTE14(v29[0]) = BYTE6(a3);
  WORD6(v29[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_7EC38();
  sub_1E0C00();
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = a4[3];
  v29[2] = a4[2];
  v29[3] = v18;
  v19 = a4[5];
  v29[4] = a4[4];
  v29[5] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E9970;
  v10(v20 + v7, v9, v5);
  sub_4C164();
  sub_1E0C00();
  v20, v21, v22, v23, v24, v25, v26, v27;
  type metadata accessor for InBookSearchEvent(0);
  sub_7EE34(&qword_281BB0, type metadata accessor for InBookSearchEvent, protocol conformance descriptor for InBookSearchEvent);
  memset(v29, 0, 32);
  sub_1E0C10();
  return sub_18E48(v29, &unk_281B50, &unk_1EDD70);
}

void sub_7C538(uint64_t a1, uint64_t a2, objc_class **a3, objc_class **a4, void *a5)
{
  v34[1] = a1;
  v9 = sub_1E09E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = *a4;
  v34[0] = *a5;
  (*(v10 + 16))(v12, a2, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v15, v12, v9);
  *(&v18->super.isa + v16) = v13;
  *(&v18->super.isa + v17) = v14;
  *(&v18->super.isa + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34[0];
  v19 = swift_allocObject();
  v19[1].super.isa = sub_7E360;
  *v19[1].dataProviders = v18;

  sub_1E10C0();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v19, v27, v28, v29, v30, v31, v32, v33;
}

uint64_t sub_7C728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for InitialAppStateQueryEvent(0);
  sub_7EE34(&qword_281B88, type metadata accessor for InitialAppStateQueryEvent, protocol conformance descriptor for InitialAppStateQueryEvent);
  sub_1E0BF0();
  *&v37[0] = a3;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v36 = sub_1E0CB0();
  v6 = *(v36 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v35 = enum case for DataEventTrait.onlyOnce(_:);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v36);
  sub_7EB3C();
  sub_1E0C00();
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E9970;
  v10(v18 + v7, v9, v36);
  sub_7EB90();
  sub_1E0C00();
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1E9970;
  v10(v26 + v7, v35, v36);
  sub_7EBE4();
  sub_1E0C00();
  v26, v27, v28, v29, v30, v31, v32, v33;
  memset(v37, 0, sizeof(v37));
  sub_1E0C10();
  return sub_18E48(v37, &unk_281B50, &unk_1EDD70);
}

void sub_7CA0C(void *a1, objc_class *a2, uint64_t a3, uint64_t a4, objc_class *a5, uint64_t a6, objc_class *a7, uint64_t a8)
{
  v17 = a1;
  if (a1 || (v17 = sub_BFB78()) != 0)
  {
    v18 = swift_allocObject();
    v19 = a8;
    v20 = a4;
    v21 = v18;
    v18[1].super.isa = v8;
    *v18[1].dataProviders = a3;
    v18[2].super.isa = v20;
    *v18[2].dataProviders = a6;
    v18[3].super.isa = a5;
    *v18[3].dataProviders = v17;
    v18[4].super.isa = a7;
    *v18[4].dataProviders = v19;
    v18[5].super.isa = a2;
    v22 = swift_allocObject();
    v22[1].super.isa = sub_7E46C;
    *v22[1].dataProviders = v21;
    v23 = a7;
    v24 = a2;

    v25 = a1;
    v26 = v8;

    v27 = v17;
    sub_1E10C0();

    v21, v28, v29, v30, v31, v32, v33, v34;

    v22, v35, v36, v37, v38, v39, v40, v41;
  }
}

uint64_t sub_7CB6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  *&v92 = a8;
  v93 = a4;
  v16 = sub_1E1640();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a5 >= 7)
  {
    goto LABEL_40;
  }

  if (a6 >= 3)
  {
    *&v100 = a6;
    goto LABEL_43;
  }

  if (v92)
  {
    v90 = [v92 intValue];
  }

  else
  {
    v90 = 0;
  }

  sub_7B51C(a3, v93, &v106);
  v91 = a9;
  if (a9 >= 3)
  {
    *&v100 = v91;
    goto LABEL_43;
  }

  v89 = v106;
  sub_4C270();
  *v19 = sub_1E19E0();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.notOnQueue(_:), v16);
  v20 = sub_1E1660();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    *&v100 = a5;
LABEL_43:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v85 = a7;
  v86 = a5;
  v87 = a6;
  v88 = a1;
  v84 = a10;
  sub_3D68(&qword_281B70, &qword_1E9980);
  sub_1E1330();
  v28 = v100;
  v29 = v100 + 32;
  v30 = -*(v100 + 16);
  v31 = -1;
  while (1)
  {
    a5 = v30 + v31;
    if (v30 + v31 == -1)
    {
      break;
    }

    if (++v31 >= v28[1].super.isa)
    {
      __break(1u);
      goto LABEL_39;
    }

    v32 = v29 + 40;
    sub_4C2BC(v29, &v100);
    v34 = *(&v101 + 1);
    v33 = v102;
    sub_48B8(&v100, *(&v101 + 1));
    v35 = (*(v33 + 8))(a2, a3, v93, v34, v33);
    sub_4E48(&v100, v36, v37, v38, v39, v40, v41, v42);
    v29 = v32;
    if (v35)
    {
      v28, v21, v22, v23, v24, v25, v26, v27;
      v43 = [v35 intValue];

      goto LABEL_14;
    }
  }

  v28, v21, v22, v23, v24, v25, v26, v27;
  v43 = 0;
LABEL_14:
  v44 = v92 == 0;
  v45._countAndFlagsBits = a3;
  v46 = v93;
  v45._object = v93;
  v47 = BATracker.contentPrivateID(for:)(v45);
  if (v47.value._object)
  {
    countAndFlagsBits = v47.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v47.value._object)
  {
    object = v47.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  v50._countAndFlagsBits = a3;
  v50._object = v46;
  v51 = BATracker.contentUserID(for:)(v50);
  v110 = a5 == -1;
  v107 = v44;
  if (v51.value._object)
  {
    v52 = v51.value._countAndFlagsBits;
  }

  else
  {
    v52 = 0;
  }

  if (v51.value._object)
  {
    v53 = v51.value._object;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  *&v100 = a3;
  *(&v100 + 1) = v46;
  LOBYTE(v101) = v86;
  *(&v101 + 1) = *v111;
  DWORD1(v101) = *&v111[3];
  *(&v101 + 1) = countAndFlagsBits;
  *&v102 = object;
  *(&v102 + 1) = v52;
  *&v103 = v53;
  BYTE8(v103) = v87;
  BYTE9(v103) = 4;
  HIDWORD(v103) = v43;
  LOBYTE(v104) = a5 == -1;
  *(&v104 + 1) = v108;
  BYTE3(v104) = v109;
  DWORD1(v104) = v90;
  BYTE8(v104) = v107;
  BYTE9(v104) = v89;
  BYTE10(v104) = v91;
  *(&v104 + 11) = 515;
  BYTE13(v104) = 2;
  v105 = 0uLL;

  v54 = v84;
  [v84 floatValue];
  if (v55 == 0.2)
  {
    v56 = 1;
  }

  else
  {
    [v54 floatValue];
    if (v57 == 0.4)
    {
      v56 = 2;
    }

    else
    {
      [v54 floatValue];
      if (v58 == 0.6)
      {
        v56 = 3;
      }

      else
      {
        [v54 floatValue];
        if (v59 == 0.8)
        {
          v56 = 4;
        }

        else
        {
          [v54 floatValue];
          if (v60 == 1.0)
          {
            v56 = 5;
          }

          else
          {
            v56 = 0;
          }
        }
      }
    }
  }

  LODWORD(v91) = v56;
  v96 = v102;
  v97 = v103;
  v98 = v104;
  v99 = v105;
  v94 = v100;
  v95 = v101;
  v93 = sub_3D68(&qword_2828D0, &unk_1FD120);
  v61 = sub_1E0CB0();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v64 = swift_allocObject();
  v92 = xmmword_1E9970;
  *(v64 + 16) = xmmword_1E9970;
  v65 = enum case for DataEventTrait.onlyOnce(_:);
  v66 = *(v62 + 104);
  v66(v64 + v63, enum case for DataEventTrait.onlyOnce(_:), v61);
  sub_4C164();
  sub_1E0C00();
  v64, v67, v68, v69, v70, v71, v72, v73;
  sub_14424(&v100);
  LOBYTE(v94) = v91;
  v74 = swift_allocObject();
  *(v74 + 16) = v92;
  v66(v74 + v63, v65, v61);
  sub_7EAE8();
  sub_1E0C00();
  v74, v75, v76, v77, v78, v79, v80, v81;
  type metadata accessor for RatingEvent(0);
  sub_7EE34(&qword_281B80, type metadata accessor for RatingEvent, protocol conformance descriptor for RatingEvent);
  v94 = 0u;
  v95 = 0u;
  sub_1E0C10();
  return sub_18E48(&v94, &unk_281B50, &unk_1EDD70);
}

void sub_7D39C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = a1;
  if (a1 || (v6 = sub_BFB78()) != 0)
  {
    v7 = a1;
    v8 = v6;
    v9 = sub_1E1130();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v10 = type metadata accessor for BATracker();
    v11 = objc_allocWithZone(v10);
    v12 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
    sub_3D68(&qword_281B00, &unk_1EDCF8);
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *&v11[v12] = v13;
    swift_unknownObjectWeakInit();
    *&v11[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v9;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v40.receiver = v11;
    v40.super_class = v10;

    v14 = objc_msgSendSuper2(&v40, "init");

    v9, v15, v16, v17, v18, v19, v20, v21;
    swift_unknownObjectRelease();
    v22 = swift_allocObject();
    v22[1].super.isa = v3;
    *v22[1].dataProviders = a2;
    v22[2].super.isa = v14;
    v23 = swift_allocObject();
    v23[1].super.isa = sub_7E4EC;
    *v23[1].dataProviders = v22;
    v24 = v14;
    v25 = v3;
    swift_unknownObjectRetain();

    sub_1E10C0();
    v22, v26, v27, v28, v29, v30, v31, v32;

    v23, v33, v34, v35, v36, v37, v38, v39;
  }
}

uint64_t sub_7D5DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_BF2E4(a3, a4, v22);
  v18 = v22[2];
  v19 = v22[3];
  v20 = v22[4];
  v21 = v22[5];
  v16 = v22[0];
  v17 = v22[1];
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v4 = sub_1E0CB0();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E9970;
  (*(v5 + 104))(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v4);
  sub_4C164();
  sub_1E0C00();
  v7, v8, v9, v10, v11, v12, v13, v14;
  sub_14424(v22);
  type metadata accessor for ShareEvent(0);
  sub_7EE34(&unk_281B60, type metadata accessor for ShareEvent, protocol conformance descriptor for ShareEvent);
  v16 = 0u;
  v17 = 0u;
  sub_1E0C10();
  return sub_18E48(&v16, &unk_281B50, &unk_1EDD70);
}

void sub_7D890(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4, objc_class *a5, uint64_t a6)
{
  v8 = swift_allocObject();
  v8[1].super.isa = a2;
  v9 = swift_allocObject();
  v9[1].super.isa = a5;
  *v9[1].dataProviders = v8;
  v10 = a2;

  sub_1E10C0();
  v8, v11, v12, v13, v14, v15, v16, v17;

  v9, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_7D948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___BAWidgetData_widgetFamily + 8);
  v3 = *(a2 + OBJC_IVAR___BAWidgetData_isContentExposed);
  v4 = *(a2 + OBJC_IVAR___BAWidgetData_displayMode);
  v5 = *(a2 + OBJC_IVAR___BAWidgetData_displayMode + 8);
  v6 = *(a2 + OBJC_IVAR___BAWidgetData_isStreakExposed);
  *&v33 = *(a2 + OBJC_IVAR___BAWidgetData_widgetFamily);
  *(&v33 + 1) = v2;
  *&v34 = v4;
  *(&v34 + 1) = v5;
  v35 = v3;
  v36 = v6;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v7 = sub_1E0CB0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  (*(v8 + 104))(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
  sub_7EA94();

  sub_1E0C00();
  v10, v11, v12, v13, v14, v15, v16, v17;
  *(&v34 + 1), v18, v19, v20, v21, v22, v23, v24;
  *(&v33 + 1), v25, v26, v27, v28, v29, v30, v31;
  type metadata accessor for WidgetEngagementEvent(0);
  sub_7EE34(&qword_281B48, type metadata accessor for WidgetEngagementEvent, protocol conformance descriptor for WidgetEngagementEvent);
  v33 = 0u;
  v34 = 0u;
  sub_1E0C10();
  return sub_18E48(&v33, &unk_281B50, &unk_1EDD70);
}

void sub_7DBBC(uint64_t a1, uint64_t a2, void *a3, objc_class *a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8)
{
  v11 = swift_allocObject();
  v11[1].super.isa = a4;
  v12 = swift_allocObject();
  v12[1].super.isa = a7;
  *v12[1].dataProviders = v11;
  v28 = a4;
  v13 = a3;

  sub_1E10C0();
  v11, v14, v15, v16, v17, v18, v19, v20;

  v12, v21, v22, v23, v24, v25, v26, v27;
}

id EventReporter.init()()
{
  v1 = OBJC_IVAR___BAEventReporter_dataProviders;
  sub_3D68(&qword_281B08, &qword_1EDD08);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EventReporter();
  return objc_msgSendSuper2(&v4, "init");
}

id EventReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventReporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7DDD0(uint64_t a1, uint64_t a2)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_281AE0)
  {
    return 0;
  }

  sub_4C2BC(&xmmword_281AC8, v15 + 1);
  v4 = v16;
  v5 = v17;
  sub_48B8((v15 + 1), v16);
  (*(v5 + 8))(v15, a1, a2, v4, v5);
  v6 = SLOBYTE(v15[0]);
  sub_4E48((v15 + 1), v7, v8, v9, v10, v11, v12, v13);
  return qword_1EDD90[v6];
}

void sub_7DEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = a2 == 2;
  }

  switch(a3)
  {
    case 'f':
      v6 = swift_allocObject();
      *(v6 + 16) = 2;
      *(v6 + 17) = v3;
      v7 = swift_allocObject();
      v7[1].super.isa = sub_7ED8C;
      *v7[1].dataProviders = v6;

      sub_1E10C0();
      v6, v8, v9, v10, v11, v12, v13, v14;
      v7, v15, v16, v17, v18, v19, v20, v21;
      v4 = swift_allocObject();
      *(v4 + 16) = 1;
      *(v4 + 17) = v3;
      v5 = swift_allocObject();
      v5[1].super.isa = sub_7EEF0;
      *v5[1].dataProviders = v4;

      break;
    case 'e':
      v4 = swift_allocObject();
      *(v4 + 16) = 2;
      *(v4 + 17) = v3;
      v5 = swift_allocObject();
      v5[1].super.isa = sub_7EEF0;
      *v5[1].dataProviders = v4;

      break;
    case 'd':
      v4 = swift_allocObject();
      *(v4 + 16) = 1;
      *(v4 + 17) = v3;
      v5 = swift_allocObject();
      v5[1].super.isa = sub_7EEF0;
      *v5[1].dataProviders = v4;

      break;
    default:
      return;
  }

  sub_1E10C0();
  v4, v22, v23, v24, v25, v26, v27, v28;

  v5, v29, v30, v31, v32, v33, v34, v35;
}

void sub_7E138(objc_class *a1)
{
  v2 = sub_BFB78();
  if (v2)
  {
    v3 = v2;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_7EC8C();
    if (sub_1E1930())
    {
      v4 = swift_allocObject();
      v4[1].super.isa = a1;
      *v4[1].dataProviders = v3;
      v5 = swift_allocObject();
      v5[1].super.isa = sub_7ED30;
      *v5[1].dataProviders = v4;

      v6 = v3;

      sub_1E10C0();

      v4, v7, v8, v9, v10, v11, v12, v13;
      v5, v14, v15, v16, v17, v18, v19, v20;
    }

    else
    {
    }
  }
}

uint64_t sub_7E254()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7E29C()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + v6), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + v7), v22, v23, v24, v25, v26, v27, v28;

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_7E360(uint64_t a1)
{
  v3 = *(sub_1E09E0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_7C728(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_7E414()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_7E4A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t dispatch thunk of EventReporterDataProviding.eventReporterUserEmbeddingData(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_7E674;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_7E674()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of EventReporter.seriesType(for:)()
{
  return (*(&stru_20.nsects + (swift_isaMask & *v0)))();
}

{
  return (*&stru_68.sectname[swift_isaMask & *v0])();
}

uint64_t dispatch thunk of EventReporter.emitInBookSearchEvent(using:readingSessionData:contentData:)()
{
  return (*(&stru_68.size + (swift_isaMask & *v0)))();
}

{
  return (*(&stru_68.offset + (swift_isaMask & *v0)))();
}

uint64_t sub_7E9F0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[5], a2, a3, a4, a5, a6, a7, a8;
  v8[8], v9, v10, v11, v12, v13, v14, v15;
  v8[10], v16, v17, v18, v19, v20, v21, v22;
  v8[15], v23, v24, v25, v26, v27, v28, v29;

  return _swift_deallocObject(v8, 128, 7);
}

uint64_t sub_7EA40(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  return sub_7C2CC(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

unint64_t sub_7EA94()
{
  result = qword_281B40;
  if (!qword_281B40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetData, &type metadata for WidgetData, v0, v1);
    atomic_store(result, &qword_281B40);
  }

  return result;
}

unint64_t sub_7EAE8()
{
  result = qword_281B78;
  if (!qword_281B78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RatingData, &type metadata for RatingData, v0, v1);
    atomic_store(result, &qword_281B78);
  }

  return result;
}

unint64_t sub_7EB3C()
{
  result = qword_281B90;
  if (!qword_281B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryData, &type metadata for LibraryData, v0, v1);
    atomic_store(result, &qword_281B90);
  }

  return result;
}

unint64_t sub_7EB90()
{
  result = qword_281B98;
  if (!qword_281B98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionSummaryData, &type metadata for CollectionSummaryData, v0, v1);
    atomic_store(result, &qword_281B98);
  }

  return result;
}

unint64_t sub_7EBE4()
{
  result = qword_281BA0;
  if (!qword_281BA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingNowData, &type metadata for ReadingNowData, v0, v1);
    atomic_store(result, &qword_281BA0);
  }

  return result;
}

unint64_t sub_7EC38()
{
  result = qword_281BA8;
  if (!qword_281BA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingSessionData, &type metadata for ReadingSessionData, v0, v1);
    atomic_store(result, &qword_281BA8);
  }

  return result;
}

unint64_t sub_7EC8C()
{
  result = qword_281BC8;
  if (!qword_281BC8)
  {
    v3 = sub_5DE50(&qword_281BC0, &unk_1EDD80);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_281BC8);
  }

  return result;
}

uint64_t sub_7ECF0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

unint64_t sub_7ED38()
{
  result = qword_281BD0;
  if (!qword_281BD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragDropData, &type metadata for DragDropData, v0, v1);
    atomic_store(result, &qword_281BD0);
  }

  return result;
}

uint64_t sub_7ED98(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

unint64_t sub_7EDE0()
{
  result = qword_281BE0;
  if (!qword_281BE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountData, &type metadata for AccountData, v0, v1);
    atomic_store(result, &qword_281BE0);
  }

  return result;
}

uint64_t sub_7EE34(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7EE7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_7EF44(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000214620 == a2)
  {
    a2, 0x8000000000214620, 0xD000000000000011, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_7EFD8(uint64_t a1)
{
  v2 = sub_7F188();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F014(uint64_t a1)
{
  v2 = sub_7F188();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MaxScrollDepthData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_281C50, &qword_1EDDC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_7F188();
  sub_1E1E00();
  sub_1E1CE0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_7F188()
{
  result = qword_281C58;
  if (!qword_281C58)
  {
    result = swift_getWitnessTable(byte_1EDF98, &type metadata for MaxScrollDepthData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281C58);
  }

  return result;
}

void MaxScrollDepthData.init(from:)(BAEventReporter **a1@<X0>, float *a2@<X8>)
{
  v5 = sub_3D68(&qword_281C60, &qword_1EDDC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_7F188();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1E1C10();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_7F33C()
{
  result = qword_281C68;
  if (!qword_281C68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaxScrollDepthData, &type metadata for MaxScrollDepthData, v0, v1);
    atomic_store(result, &qword_281C68);
  }

  return result;
}

unint64_t sub_7F394()
{
  result = qword_281C70;
  if (!qword_281C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MaxScrollDepthData, &type metadata for MaxScrollDepthData, v0, v1);
    atomic_store(result, &qword_281C70);
  }

  return result;
}

unint64_t sub_7F424()
{
  result = qword_281C78;
  if (!qword_281C78)
  {
    result = swift_getWitnessTable(byte_1EDF70, &type metadata for MaxScrollDepthData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281C78);
  }

  return result;
}

unint64_t sub_7F47C()
{
  result = qword_281C80;
  if (!qword_281C80)
  {
    result = swift_getWitnessTable(aA_4, &type metadata for MaxScrollDepthData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281C80);
  }

  return result;
}

unint64_t sub_7F4D4()
{
  result = qword_281C88;
  if (!qword_281C88)
  {
    result = swift_getWitnessTable(asc_1EDF08, &type metadata for MaxScrollDepthData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281C88);
  }

  return result;
}

BookAnalytics::AccountType_optional __swiftcall AccountType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FEF8;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t AccountType.rawValue.getter()
{
  v1 = 0x64756F6C4369;
  if (*v0 != 1)
  {
    v1 = 0x73656E755469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_7F5D8(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0x64756F6C4369;
  if (v8 != 1)
  {
    v9 = 0x73656E755469;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = 0x64756F6C4369;
  if (*a2 != 1)
  {
    v12 = 0x73656E755469;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
  }

  v11, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

unint64_t sub_7F6D0()
{
  result = qword_281C90;
  if (!qword_281C90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountType, &type metadata for AccountType, v0, v1);
    atomic_store(result, &qword_281C90);
  }

  return result;
}

Swift::Int sub_7F724()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_7F7C0(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_7F848(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_7F8EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64756F6C4369;
  if (v2 != 1)
  {
    v4 = 0x73656E755469;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_7FA04()
{
  result = qword_281C98;
  if (!qword_281C98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountType, &type metadata for AccountType, v0, v1);
    atomic_store(result, &qword_281C98);
  }

  return result;
}

BookAnalytics::LibraryEditData __swiftcall LibraryEditData.init(editSummary:editActionType:editActionResult:)(BookAnalytics::LibraryEditData editSummary, BookAnalytics::EditActionType editActionType, BookAnalytics::EditActionResult editActionResult)
{
  v4 = *editActionType;
  v5 = *editActionResult;
  *v3 = editSummary.editSummary._rawValue;
  *(v3 + 8) = v4;
  *(v3 + 9) = v5;
  editSummary.editActionType = editActionType;
  return editSummary;
}

unint64_t sub_7FAB8()
{
  v1 = 0x6974634174696465;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6D755374696465;
  }
}

uint64_t sub_7FB2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_80720(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_7FB54(uint64_t a1)
{
  v2 = sub_801E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7FB90(uint64_t a1)
{
  v2 = sub_801E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryEditData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_281CA0, &qword_1EE0F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v19 = *(v1 + 9);
  v20 = v9;
  sub_48B8(a1, a1[3]);
  sub_801E8();

  sub_1E1E00();
  v26 = v8;
  v25 = 0;
  sub_3D68(&qword_281CB0, &qword_1EE100);
  sub_80338(&qword_281CB8, sub_8023C, &protocol conformance descriptor for <A> [A]);
  sub_1E1CF0();
  v8, v10, v11, v12, v13, v14, v15, v16;
  if (!v2)
  {
    v17 = v19;
    v24 = v20;
    v23 = 1;
    sub_80290();
    sub_1E1CF0();
    v22 = v17;
    v21 = 2;
    sub_802E4();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

void LibraryEditData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_281CD8, &qword_1EE108);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33[-v7];
  sub_48B8(a1, a1[3]);
  sub_801E8();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    sub_3D68(&qword_281CB0, &qword_1EE100);
    v33[15] = 0;
    sub_80338(&qword_281CE0, sub_803B0, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    v16 = v34;
    v33[13] = 1;
    sub_80404();
    sub_1E1C20();
    v17 = v33[14];
    v33[11] = 2;
    sub_80458();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v18 = v33[12];
    *a2 = v16;
    *(a2 + 8) = v17;
    *(a2 + 9) = v18;

    sub_4E48(a1, v19, v20, v21, v22, v23, v24, v25);
    v16, v26, v27, v28, v29, v30, v31, v32;
  }
}

uint64_t _s13BookAnalytics15LibraryEditDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  if (sub_5E4C0() & 1) != 0 && (sub_2397C(v2, v4, v6, v7, v8, v9, v10, v11))
  {
    v18 = 0xE700000000000000;
    v19 = 0x73736563637573;
    if (v3 != 1)
    {
      v19 = 0x6C65636E6163;
      v18 = 0xE600000000000000;
    }

    if (v3)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE700000000000000;
    }

    v22 = 0xE700000000000000;
    v23 = 0x73736563637573;
    if (v5 != 1)
    {
      v23 = 0x6C65636E6163;
      v22 = 0xE600000000000000;
    }

    if (v5)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0x6E776F6E6B6E75;
    }

    if (v5)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0xE700000000000000;
    }

    if (v20 == v24 && v21 == v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_1E1D30();
    }

    v21, v12, v24, v13, v14, v15, v16, v17;
    v25, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

unint64_t sub_801E8()
{
  result = qword_281CA8;
  if (!qword_281CA8)
  {
    result = swift_getWitnessTable(byte_1EE2EC, &type metadata for LibraryEditData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281CA8);
  }

  return result;
}

unint64_t sub_8023C()
{
  result = qword_281CC0;
  if (!qword_281CC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryEditActionData, &type metadata for LibraryEditActionData, v0, v1);
    atomic_store(result, &qword_281CC0);
  }

  return result;
}

unint64_t sub_80290()
{
  result = qword_281CC8;
  if (!qword_281CC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditActionType, &type metadata for EditActionType, v0, v1);
    atomic_store(result, &qword_281CC8);
  }

  return result;
}

unint64_t sub_802E4()
{
  result = qword_281CD0;
  if (!qword_281CD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditActionResult, &type metadata for EditActionResult, v0, v1);
    atomic_store(result, &qword_281CD0);
  }

  return result;
}

uint64_t sub_80338(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_281CB0, &qword_1EE100);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_803B0()
{
  result = qword_281CE8;
  if (!qword_281CE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryEditActionData, &type metadata for LibraryEditActionData, v0, v1);
    atomic_store(result, &qword_281CE8);
  }

  return result;
}

unint64_t sub_80404()
{
  result = qword_281CF0;
  if (!qword_281CF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditActionType, &type metadata for EditActionType, v0, v1);
    atomic_store(result, &qword_281CF0);
  }

  return result;
}

unint64_t sub_80458()
{
  result = qword_281CF8;
  if (!qword_281CF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditActionResult, &type metadata for EditActionResult, v0, v1);
    atomic_store(result, &qword_281CF8);
  }

  return result;
}

unint64_t sub_804B0()
{
  result = qword_281D00;
  if (!qword_281D00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryEditData, &type metadata for LibraryEditData, v0, v1);
    atomic_store(result, &qword_281D00);
  }

  return result;
}

unint64_t sub_80508()
{
  result = qword_281D08;
  if (!qword_281D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryEditData, &type metadata for LibraryEditData, v0, v1);
    atomic_store(result, &qword_281D08);
  }

  return result;
}

uint64_t sub_8055C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_80570(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_805B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_8061C()
{
  result = qword_281D10;
  if (!qword_281D10)
  {
    result = swift_getWitnessTable(byte_1EE2C4, &type metadata for LibraryEditData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281D10);
  }

  return result;
}

unint64_t sub_80674()
{
  result = qword_281D18;
  if (!qword_281D18)
  {
    result = swift_getWitnessTable(byte_1EE234, &type metadata for LibraryEditData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281D18);
  }

  return result;
}

unint64_t sub_806CC()
{
  result = qword_281D20;
  if (!qword_281D20)
  {
    result = swift_getWitnessTable(byte_1EE25C, &type metadata for LibraryEditData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281D20);
  }

  return result;
}

uint64_t sub_80720(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000797261;
  v11 = a1 == 0x6D6D755374696465 && a2 == 0xEB00000000797261;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEE00657079546E6FLL;
    if (a1 == 0x6974634174696465 && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000000214640 == a2)
    {
      a2, 0x8000000000214640, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t SearchSuggestionsReturnedEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchSuggestionsReturnedEvent.searchData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchResultSelectEvent.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  v4 = sub_3D68(&qword_281D60, &qword_1EE348);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  v4 = sub_3D68(&qword_281D60, &qword_1EE348);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  v4 = sub_3D68(&qword_281D68, &unk_1EE350);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  v4 = sub_3D68(&qword_281D68, &unk_1EE350);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 32);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 32);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 36);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.genreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 36);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultSelectEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_281D60, &qword_1EE348);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_281D68, &unk_1EE350);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = enum case for EventProperty.optional<A>(_:);
  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t SearchSuggestionsReturnedEvent.Model.searchData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t SearchResultSelectEvent.Model.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

uint64_t SearchResultSelectEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v10 = v1[7];
  v11 = v2;
  v4 = v1[10];
  v12 = v1[9];
  v3 = v12;
  v13 = v4;
  v6 = v1[6];
  v9[0] = v1[5];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_437B4(v9, &v8);
}

void SearchResultSelectEvent.Model.genreData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_815A0(v2, v3, v4, v5, v6, v7);
}

void sub_815A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t SearchResultSelectEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent.Model(0) + 40);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.Model.init(searchData:searchSelectionData:searchResultsData:contentData:seriesData:genreData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 8);
  v15 = *(a2 + 5);
  v16 = a2[3];
  v17 = a2[4];
  v18 = *a3;
  *a8 = *a1;
  *(a8 + 16) = v10;
  *(a8 + 24) = v11;
  *(a8 + 32) = v12;
  *(a8 + 40) = v13;
  *(a8 + 48) = v14;
  *(a8 + 52) = v15;
  *(a8 + 56) = v16;
  *(a8 + 64) = v17;
  *(a8 + 72) = v18;
  v19 = a4[3];
  *(a8 + 112) = a4[2];
  *(a8 + 128) = v19;
  v20 = a4[5];
  *(a8 + 144) = a4[4];
  *(a8 + 160) = v20;
  v21 = a4[1];
  *(a8 + 80) = *a4;
  *(a8 + 96) = v21;
  v22 = a5[1];
  *(a8 + 176) = *a5;
  *(a8 + 192) = v22;
  v23 = *a6;
  v24 = a6[1];
  *(a8 + 208) = a5[2];
  *(a8 + 224) = v23;
  v25 = a6[2];
  *(a8 + 240) = v24;
  *(a8 + 256) = v25;
  v26 = *(type metadata accessor for SearchResultSelectEvent.Model(0) + 40);
  v27 = sub_1E1150();
  v28 = *(*(v27 - 8) + 32);

  return v28(a8 + v26, a7, v27);
}

uint64_t sub_81778()
{
  v1 = *v0;
  v2 = 0x6144686372616573;
  v3 = 0x74614465726E6567;
  if (v1 != 5)
  {
    v3 = 0x746144746E657665;
  }

  v4 = 0x44746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x6144736569726573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_81870@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_837F4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_81898(uint64_t a1)
{
  v2 = sub_81DF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_818D4(uint64_t a1)
{
  v2 = sub_81DF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchResultSelectEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_281D78, &qword_1EE360);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v85 - v6;
  sub_48B8(a1, a1[3]);
  sub_81DF0();
  sub_1E1E00();
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  *&v101 = *v2;
  *(&v101 + 1) = v8;
  *&v102 = v9;
  *(&v102 + 1) = v10;
  LOBYTE(v95) = 0;
  sub_81E44();

  v11 = v109;
  sub_1E1CF0();
  if (v11)
  {
    v19 = *(&v101 + 1);
    *(&v102 + 1), v12, v13, v14, v15, v16, v17, v18;
    v19, v20, v21, v22, v23, v24, v25, v26;
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v28 = v5;
    v29 = *(&v101 + 1);
    *(&v102 + 1), v12, v13, v14, v15, v16, v17, v18;
    v29, v30, v31, v32, v33, v34, v35, v36;
    v37 = *(v2 + 40);
    v38 = *(v2 + 48);
    v39 = *(v2 + 52);
    v40 = *(v2 + 56);
    v41 = *(v2 + 64);
    *&v101 = *(v2 + 32);
    *(&v101 + 1) = v37;
    LOWORD(v102) = v38;
    DWORD1(v102) = v39;
    *(&v102 + 1) = v40;
    *&v103 = v41;
    LOBYTE(v95) = 1;
    sub_81E98();

    v42 = v4;

    sub_1E1CF0();
    v43 = *(&v101 + 1);
    v103, v44, v45, v46, v47, v48, v49, v50;
    v43, v51, v52, v53, v54, v55, v56, v57;
    v108 = *(v2 + 72);
    v107 = 2;
    sub_81EEC();

    sub_1E1CF0();
    v108, v58, v59, v60, v61, v62, v63, v64;
    v65 = *(v2 + 128);
    v66 = *(v2 + 96);
    v103 = *(v2 + 112);
    v104 = v65;
    v67 = *(v2 + 128);
    v68 = *(v2 + 160);
    v105 = *(v2 + 144);
    v106 = v68;
    v69 = *(v2 + 96);
    v101 = *(v2 + 80);
    v102 = v69;
    v97 = v103;
    v98 = v67;
    v70 = *(v2 + 160);
    v99 = v105;
    v100 = v70;
    v95 = v101;
    v96 = v66;
    v94 = 3;
    sub_437B4(&v101, v93);
    sub_143D0();
    sub_1E1C80();
    v93[2] = v97;
    v93[3] = v98;
    v93[4] = v99;
    v93[5] = v100;
    v93[0] = v95;
    v93[1] = v96;
    sub_440C0(v93);
    v71 = *(v2 + 184);
    v72 = *(v2 + 192);
    v73 = *(v2 + 200);
    v74 = *(v2 + 208);
    v75 = *(v2 + 216);
    v87 = *(v2 + 176);
    v88 = v71;
    v89 = v72;
    v90 = v73;
    v91 = v74;
    v92 = v75;
    v86 = 4;
    sub_13BDC(v87, v71, v72, v73, v74, v75);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v87, v88, v89, v90, v91, v92, v76, v77);
    v78 = *(v2 + 232);
    v79 = *(v2 + 240);
    v80 = *(v2 + 248);
    v81 = *(v2 + 256);
    v82 = *(v2 + 264);
    v87 = *(v2 + 224);
    v88 = v78;
    v89 = v79;
    v90 = v80;
    v91 = v81;
    v92 = v82;
    v86 = 5;
    sub_815A0(v87, v78, v79, v80, v81, v82);
    sub_81F40();
    sub_1E1C80();
    sub_4F16C(v87, v88, v89, v90, v91, v92, v83, v84);
    type metadata accessor for SearchResultSelectEvent.Model(0);
    LOBYTE(v87) = 6;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    return (*(v28 + 8))(v7, v42);
  }
}

unint64_t sub_81DF0()
{
  result = qword_281D80;
  if (!qword_281D80)
  {
    result = swift_getWitnessTable(byte_1EE564, &type metadata for SearchResultSelectEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281D80);
  }

  return result;
}

unint64_t sub_81E44()
{
  result = qword_281D88;
  if (!qword_281D88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchData, &type metadata for SearchData, v0, v1);
    atomic_store(result, &qword_281D88);
  }

  return result;
}

unint64_t sub_81E98()
{
  result = qword_281D90;
  if (!qword_281D90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSelectionData, &type metadata for SearchSelectionData, v0, v1);
    atomic_store(result, &qword_281D90);
  }

  return result;
}

unint64_t sub_81EEC()
{
  result = qword_281D98;
  if (!qword_281D98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchResultsData, &type metadata for SearchResultsData, v0, v1);
    atomic_store(result, &qword_281D98);
  }

  return result;
}

unint64_t sub_81F40()
{
  result = qword_281DA0;
  if (!qword_281DA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GenreData, &type metadata for GenreData, v0, v1);
    atomic_store(result, &qword_281DA0);
  }

  return result;
}

void SearchResultSelectEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_1E1150();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_3D68(&qword_281DA8, &qword_1EE368);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = v42 - v7;
  v9 = type metadata accessor for SearchResultSelectEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v59 = a1;
  sub_48B8(a1, v12);
  sub_81DF0();
  v47 = v8;
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v59, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v11;
    v21 = v44;
    v22 = v45;
    LOBYTE(v49) = 0;
    sub_826DC();
    sub_1E1C20();
    v23 = *(&v53 + 1);
    v24 = v54;
    *v20 = v53;
    *(v20 + 8) = v23;
    v42[3] = v23;
    *(v20 + 16) = v24;
    v42[2] = *(&v24 + 1);
    LOBYTE(v49) = 1;
    sub_82730();
    sub_1E1C20();
    v25 = *(&v53 + 1);
    v26 = v54;
    v27 = DWORD1(v54);
    v28 = *(&v54 + 1);
    v29 = v55;
    *(v20 + 32) = v53;
    *(v20 + 40) = v25;
    *(v20 + 48) = v26;
    *(v20 + 52) = v27;
    *(v20 + 56) = v28;
    *(v20 + 64) = v29;
    LOBYTE(v49) = 2;
    sub_82784();
    v42[1] = 0;
    sub_1E1C20();
    *(v20 + 72) = v53;
    v52 = 3;
    sub_14CB8();
    sub_1E1BB0();
    v30 = v56;
    *(v20 + 112) = v55;
    *(v20 + 128) = v30;
    v31 = v58;
    *(v20 + 144) = v57;
    *(v20 + 160) = v31;
    v32 = v54;
    *(v20 + 80) = v53;
    *(v20 + 96) = v32;
    v48 = 4;
    sub_DAD8();
    sub_1E1BB0();
    v33 = v50;
    *(v20 + 176) = v49;
    *(v20 + 192) = v33;
    *(v20 + 208) = v51;
    v48 = 5;
    sub_827D8();
    sub_1E1BB0();
    v34 = v50;
    *(v20 + 224) = v49;
    *(v20 + 240) = v34;
    *(v20 + 256) = v51;
    LOBYTE(v49) = 6;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v21 + 8))(v47, v46);
    (*(v43 + 32))(v20 + *(v9 + 40), v6, v4);
    sub_8282C(v20, v22);
    sub_4E48(v59, v35, v36, v37, v38, v39, v40, v41);
    sub_82890(v20);
  }
}

unint64_t sub_826DC()
{
  result = qword_281DB0;
  if (!qword_281DB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchData, &type metadata for SearchData, v0, v1);
    atomic_store(result, &qword_281DB0);
  }

  return result;
}

unint64_t sub_82730()
{
  result = qword_281DB8;
  if (!qword_281DB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSelectionData, &type metadata for SearchSelectionData, v0, v1);
    atomic_store(result, &qword_281DB8);
  }

  return result;
}

unint64_t sub_82784()
{
  result = qword_281DC0;
  if (!qword_281DC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchResultsData, &type metadata for SearchResultsData, v0, v1);
    atomic_store(result, &qword_281DC0);
  }

  return result;
}

unint64_t sub_827D8()
{
  result = qword_281DC8;
  if (!qword_281DC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GenreData, &type metadata for GenreData, v0, v1);
    atomic_store(result, &qword_281DC8);
  }

  return result;
}

uint64_t sub_8282C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_82890(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8298C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_281D60, &qword_1EE348);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_281D68, &unk_1EE350);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.optional<A>(_:);
  v12 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

uint64_t sub_82C08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_281D60, &qword_1EE348);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_3D68(&qword_281D68, &unk_1EE350);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_82ED0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_281D60, &qword_1EE348);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_3D68(&qword_281D68, &unk_1EE350);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[10];

  return v22(v23, a2, a2, v21);
}

void sub_83190(uint64_t a1)
{
  sub_833DC(319, &qword_281E38, sub_826DC, sub_81E44, &type metadata for SearchData);
  if (v1 <= 0x3F)
  {
    sub_833DC(319, &qword_281E40, sub_82730, sub_81E98, &type metadata for SearchSelectionData);
    if (v2 <= 0x3F)
    {
      sub_833DC(319, &qword_281E48, sub_82784, sub_81EEC, &type metadata for SearchResultsData);
      if (v3 <= 0x3F)
      {
        sub_833DC(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
        if (v4 <= 0x3F)
        {
          sub_833DC(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
          if (v5 <= 0x3F)
          {
            sub_833DC(319, &unk_281E50, sub_827D8, sub_81F40, &type metadata for GenreData);
            if (v6 <= 0x3F)
            {
              sub_5684(319);
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

void sub_833DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_8346C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_8352C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_835D0(uint64_t a1)
{
  sub_19FE0(319, &qword_27FE30, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &unk_281F00, &type metadata for GenreData);
      if (v3 <= 0x3F)
      {
        sub_1E1150();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_836F0()
{
  result = qword_281F48;
  if (!qword_281F48)
  {
    result = swift_getWitnessTable(asc_1EE53C, &type metadata for SearchResultSelectEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281F48);
  }

  return result;
}

unint64_t sub_83748()
{
  result = qword_281F50;
  if (!qword_281F50)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for SearchResultSelectEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281F50);
  }

  return result;
}

unint64_t sub_837A0()
{
  result = qword_281F58;
  if (!qword_281F58)
  {
    result = swift_getWitnessTable(asc_1EE4D4, &type metadata for SearchResultSelectEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_281F58);
  }

  return result;
}

uint64_t sub_837F4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000214660;
    if (a1 == 0xD000000000000013 && 0x8000000000214660 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000214680;
      if (a1 == 0xD000000000000011 && 0x8000000000214680 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0xEB00000000617461;
        if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else if (a1 == 0x74614465726E6567 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
        {
          0xE900000000000061, v14, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 6;
          }

          else
          {
            return 7;
          }
        }
      }
    }
  }
}

BookAnalytics::SkipActionType_optional __swiftcall SkipActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FF60;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 4;
  if (v5 < 4)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t SkipActionType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6E69626275726373;
  if (*v0 != 2)
  {
    v2 = 0x6172447265766F63;
  }

  if (*v0)
  {
    v1 = 0x61546E6F74747562;
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

unint64_t sub_83B50()
{
  result = qword_281F60;
  if (!qword_281F60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipActionType, &type metadata for SkipActionType, v0, v1);
    atomic_store(result, &qword_281F60);
  }

  return result;
}

Swift::Int sub_83BA4()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  if (v1)
  {
    v2 = 0xE900000000000070;
  }

  if (v1 <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE900000000000067;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_83C70(uint64_t a1)
{
  v2 = 0xE700000000000000;
  if (*v1)
  {
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE900000000000067;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_83D28(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  if (v2)
  {
    v3 = 0xE900000000000070;
  }

  if (v2 <= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE900000000000067;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_83DFC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x6E69626275726373;
  if (*v1 != 2)
  {
    v4 = 0x6172447265766F63;
  }

  if (*v1)
  {
    v3 = 0x61546E6F74747562;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE900000000000067;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_83F44()
{
  result = qword_281F68;
  if (!qword_281F68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipActionType, &type metadata for SkipActionType, v0, v1);
    atomic_store(result, &qword_281F68);
  }

  return result;
}

BookAnalytics::SessionReadingData __swiftcall SessionReadingData.init(timeSpentReading:uniqueBooksRead:)(Swift::Int64 timeSpentReading, Swift::Int32 uniqueBooksRead)
{
  *v2 = timeSpentReading;
  *(v2 + 8) = uniqueBooksRead;
  result.timeSpentReading = timeSpentReading;
  result.uniqueBooksRead = uniqueBooksRead;
  return result;
}

uint64_t sub_83FFC()
{
  if (*v0)
  {
    return 0x6F42657571696E75;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_84048(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x80000000002146A0;
  if (a1 == 0xD000000000000010 && 0x80000000002146A0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x6F42657571696E75 && a2 == 0xEF64616552736B6FLL)
  {
    0xEF64616552736B6FLL, 0xEF64616552736B6FLL, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_84138(uint64_t a1)
{
  v2 = sub_8433C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_84174(uint64_t a1)
{
  v2 = sub_8433C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionReadingData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_281F70, &qword_1EE6D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 8);
  sub_48B8(a1, a1[3]);
  sub_8433C();
  sub_1E1E00();
  v12 = 0;
  sub_1E1D10();
  if (!v2)
  {
    v11 = 1;
    sub_1E1D00();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_8433C()
{
  result = qword_281F78;
  if (!qword_281F78)
  {
    result = swift_getWitnessTable(byte_1EE8A8, &type metadata for SessionReadingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281F78);
  }

  return result;
}

void SessionReadingData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_281F80, &qword_1EE6D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_8433C();
  sub_1E1DF0();
  if (!v2)
  {
    v20 = 0;
    v16 = sub_1E1C40();
    v19 = 1;
    v17 = sub_1E1C30();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 8) = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_84538()
{
  result = qword_281F88;
  if (!qword_281F88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionReadingData, &type metadata for SessionReadingData, v0, v1);
    atomic_store(result, &qword_281F88);
  }

  return result;
}

unint64_t sub_84590()
{
  result = qword_281F90;
  if (!qword_281F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionReadingData, &type metadata for SessionReadingData, v0, v1);
    atomic_store(result, &qword_281F90);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SessionReadingData(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t sub_8464C()
{
  result = qword_281F98;
  if (!qword_281F98)
  {
    result = swift_getWitnessTable(byte_1EE880, &type metadata for SessionReadingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281F98);
  }

  return result;
}

unint64_t sub_846A4()
{
  result = qword_281FA0;
  if (!qword_281FA0)
  {
    result = swift_getWitnessTable(a1_1, &type metadata for SessionReadingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281FA0);
  }

  return result;
}

unint64_t sub_846FC()
{
  result = qword_281FA8;
  if (!qword_281FA8)
  {
    result = swift_getWitnessTable(byte_1EE818, &type metadata for SessionReadingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281FA8);
  }

  return result;
}

uint64_t static ErrorData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E1D30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E1D30();
    }
  }

  return result;
}

uint64_t sub_847F4()
{
  if (*v0)
  {
    return 0x6553686372616573;
  }

  else
  {
    return 0x7453686372616573;
  }
}

void sub_84844(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEC000000676E6972;
  v13 = a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0x6553686372616573 && a2 == 0xEF44496E6F697373)
  {
    0xEF44496E6F697373, 0xEF44496E6F697373, a3, a4, a5, a6, a7, a8;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a9 = v14;
}

uint64_t sub_8492C(uint64_t a1)
{
  v2 = sub_84B38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_84968(uint64_t a1)
{
  v2 = sub_84B38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_281FB0, &qword_1EE8F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_48B8(a1, a1[3]);
  sub_84B38();
  sub_1E1E00();
  v12 = 0;
  v8 = v10[3];
  sub_1E1CB0();
  if (!v8)
  {
    v11 = 1;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_84B38()
{
  result = qword_281FB8;
  if (!qword_281FB8)
  {
    result = swift_getWitnessTable(byte_1EEADC, &type metadata for SearchData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281FB8);
  }

  return result;
}

void SearchData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_281FC0, &qword_1EE900);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_48B8(a1, a1[3]);
  sub_84B38();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v46 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v44 = v16;
    v45 = 1;
    v19 = sub_1E1BE0();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    *a2 = v44;
    a2[1] = v18;
    a2[2] = v19;
    a2[3] = v21;

    sub_4E48(a1, v22, v23, v24, v25, v26, v27, v28);
    v21, v29, v30, v31, v32, v33, v34, v35;
    v18, v36, v37, v38, v39, v40, v41, v42;
  }
}

uint64_t sub_84DC4(uint64_t a1, int a2)
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

uint64_t sub_84E0C(uint64_t result, int a2, int a3)
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

unint64_t sub_84E70()
{
  result = qword_281FC8;
  if (!qword_281FC8)
  {
    result = swift_getWitnessTable(byte_1EEAB4, &type metadata for SearchData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281FC8);
  }

  return result;
}

unint64_t sub_84EC8()
{
  result = qword_281FD0;
  if (!qword_281FD0)
  {
    result = swift_getWitnessTable(byte_1EEA24, &type metadata for SearchData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281FD0);
  }

  return result;
}

unint64_t sub_84F20()
{
  result = qword_281FD8;
  if (!qword_281FD8)
  {
    result = swift_getWitnessTable(byte_1EEA4C, &type metadata for SearchData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281FD8);
  }

  return result;
}

BookAnalytics::SelectionType_optional __swiftcall SelectionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FFE0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t SelectionType.rawValue.getter()
{
  v1 = 1802465122;
  if (*v0 != 1)
  {
    v1 = 0x6F6F626F69647561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_85028(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE400000000000000;
  v10 = 1802465122;
  if (v8 != 1)
  {
    v10 = 0x6F6F626F69647561;
    v9 = 0xE90000000000006BLL;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0xE400000000000000;
  v14 = 1802465122;
  if (*a2 != 1)
  {
    v14 = 0x6F6F626F69647561;
    v13 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_85128()
{
  result = qword_281FE0;
  if (!qword_281FE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectionType, &type metadata for SelectionType, v0, v1);
    atomic_store(result, &qword_281FE0);
  }

  return result;
}

Swift::Int sub_8517C()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE400000000000000;
  if (v1 != 1)
  {
    v2 = 0xE90000000000006BLL;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_8521C(uint64_t a1)
{
  v2 = 0xE400000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE90000000000006BLL;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_852A8(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE400000000000000;
  if (v2 != 1)
  {
    v3 = 0xE90000000000006BLL;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_85350(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  if (v2 != 1)
  {
    v5 = 0x6F6F626F69647561;
    v4 = 0xE90000000000006BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_8546C()
{
  result = qword_281FE8;
  if (!qword_281FE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectionType, &type metadata for SelectionType, v0, v1);
    atomic_store(result, &qword_281FE8);
  }

  return result;
}

BookAnalytics::UpSellData __swiftcall UpSellData.init(upSellLocation:upSellVariant:upSellVariantVersion:)(BookAnalytics::UpSellLocation upSellLocation, BookAnalytics::UpSellVariant upSellVariant, Swift::String upSellVariantVersion)
{
  v4 = *upSellVariant;
  *v3 = *upSellLocation;
  *(v3 + 1) = v4;
  *(v3 + 8) = upSellVariantVersion;
  result.upSellVariantVersion._object = upSellVariantVersion._countAndFlagsBits;
  LOBYTE(result.upSellVariantVersion._countAndFlagsBits) = upSellVariant;
  result.upSellLocation = upSellLocation;
  return result;
}

unint64_t sub_854DC()
{
  v1 = 0x61566C6C65537075;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F4C6C6C65537075;
  }
}

uint64_t sub_85554@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_85F08(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_8557C(uint64_t a1)
{
  v2 = sub_85B98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_855B8(uint64_t a1)
{
  v2 = sub_85B98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UpSellData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_281FF0, &qword_1EEC40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = *v1;
  v12 = v1[1];
  v9 = *(v1 + 1);
  v11[1] = *(v1 + 2);
  v11[2] = v9;
  sub_48B8(a1, a1[3]);
  sub_85B98();
  sub_1E1E00();
  v17 = v8;
  v16 = 0;
  sub_85BEC();
  sub_1E1CF0();
  if (!v2)
  {
    v15 = v12;
    v14 = 1;
    sub_85C40();
    sub_1E1CF0();
    v13 = 2;
    sub_1E1CB0();
  }

  return (*(v5 + 8))(v7, v4);
}

void UpSellData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_282010, &qword_1EEC48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_48B8(a1, a1[3]);
  sub_85B98();
  sub_1E1DF0();
  if (!v2)
  {
    v25 = 0;
    sub_85C94();
    sub_1E1C20();
    v16 = v26;
    v23 = 1;
    sub_85CE8();
    sub_1E1C20();
    v21 = v24;
    v22 = 2;
    v17 = sub_1E1BE0();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 1) = v21;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics10UpSellDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 1);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = a2[1];
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  if ((sub_23AC4(*a1, *a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  v20 = 0x6E6F43664F646E65;
  v21 = 0xEC000000746E6574;
  if (v8 != 1)
  {
    v20 = 0x6F6F42664F646E65;
    v21 = 0xE90000000000006BLL;
  }

  if (v8)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  v24 = 0x6E6F43664F646E65;
  v25 = 0xEC000000746E6574;
  if (v11 != 1)
  {
    v24 = 0x6F6F42664F646E65;
    v25 = 0xE90000000000006BLL;
  }

  if (v11)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0x6E776F6E6B6E75;
  }

  if (v11)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE700000000000000;
  }

  if (v22 != v26 || v23 != v27)
  {
    v35 = sub_1E1D30();
    v23, v36, v37, v38, v39, v40, v41, v42;
    v27, v43, v44, v45, v46, v47, v48, v49;
    if (v35)
    {
      goto LABEL_22;
    }

    return 0;
  }

  v23, v14, v26, v15, v16, v17, v18, v19;
  v27, v28, v29, v30, v31, v32, v33, v34;
LABEL_22:
  if (v9 == v12 && v10 == v13)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_85B98()
{
  result = qword_281FF8;
  if (!qword_281FF8)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for UpSellData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281FF8);
  }

  return result;
}

unint64_t sub_85BEC()
{
  result = qword_282000;
  if (!qword_282000)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellLocation, &type metadata for UpSellLocation, v0, v1);
    atomic_store(result, &qword_282000);
  }

  return result;
}

unint64_t sub_85C40()
{
  result = qword_282008;
  if (!qword_282008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellVariant, &type metadata for UpSellVariant, v0, v1);
    atomic_store(result, &qword_282008);
  }

  return result;
}

unint64_t sub_85C94()
{
  result = qword_282018;
  if (!qword_282018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellLocation, &type metadata for UpSellLocation, v0, v1);
    atomic_store(result, &qword_282018);
  }

  return result;
}

unint64_t sub_85CE8()
{
  result = qword_282020;
  if (!qword_282020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellVariant, &type metadata for UpSellVariant, v0, v1);
    atomic_store(result, &qword_282020);
  }

  return result;
}

__n128 sub_85D44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_85D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_85DA0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_85E04()
{
  result = qword_282028;
  if (!qword_282028)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for UpSellData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282028);
  }

  return result;
}

unint64_t sub_85E5C()
{
  result = qword_282030;
  if (!qword_282030)
  {
    result = swift_getWitnessTable(byte_1EED6C, &type metadata for UpSellData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282030);
  }

  return result;
}

unint64_t sub_85EB4()
{
  result = qword_282038;
  if (!qword_282038)
  {
    result = swift_getWitnessTable(byte_1EED94, &type metadata for UpSellData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282038);
  }

  return result;
}

uint64_t sub_85F08(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEE006E6F69746163;
  v11 = a1 == 0x6F4C6C6C65537075 && a2 == 0xEE006E6F69746163;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xED0000746E616972;
    if (a1 == 0x61566C6C65537075 && a2 == 0xED0000746E616972 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x80000000002146C0 == a2)
    {
      a2, 0x80000000002146C0, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

BookAnalytics::PurchaseMethod_optional __swiftcall PurchaseMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260048;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t PurchaseMethod.rawValue.getter()
{
  v1 = 0x6143746964657263;
  if (*v0 != 1)
  {
    v1 = 0x6974706D65646572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_86100(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0x6143746964657263;
  v10 = 0xEA00000000006472;
  if (v8 != 1)
  {
    v9 = 0x6974706D65646572;
    v10 = 0xEE0065646F436E6FLL;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0x6143746964657263;
  v14 = 0xEA00000000006472;
  if (*a2 != 1)
  {
    v13 = 0x6974706D65646572;
    v14 = 0xEE0065646F436E6FLL;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_86228()
{
  result = qword_282040;
  if (!qword_282040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseMethod, &type metadata for PurchaseMethod, v0, v1);
    atomic_store(result, &qword_282040);
  }

  return result;
}

Swift::Int sub_8627C()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xEA00000000006472;
  if (v1 != 1)
  {
    v2 = 0xEE0065646F436E6FLL;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_86330(uint64_t a1)
{
  v2 = 0xEA00000000006472;
  if (*v1 != 1)
  {
    v2 = 0xEE0065646F436E6FLL;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_863D0(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xEA00000000006472;
  if (v2 != 1)
  {
    v3 = 0xEE0065646F436E6FLL;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_8648C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006472;
  v5 = 0x6143746964657263;
  if (v2 != 1)
  {
    v5 = 0x6974706D65646572;
    v4 = 0xEE0065646F436E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_865BC()
{
  result = qword_282048;
  if (!qword_282048)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseMethod, &type metadata for PurchaseMethod, v0, v1);
    atomic_store(result, &qword_282048);
  }

  return result;
}

uint64_t SearchEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SearchEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

void SearchResultsReturnedEvent.Model.searchData.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2EB50(v2, v3, v4, v5);
}

uint64_t SearchEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEvent.Model.init(searchData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = *(type metadata accessor for SearchEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a3[v6], a2, v7);
}

uint64_t sub_86A68()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x6144686372616573;
  }
}

void sub_86AAC(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, a2, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_86B98(uint64_t a1)
{
  v2 = sub_86DE4();

  return CodingKey.description.getter(a1, v2);
}