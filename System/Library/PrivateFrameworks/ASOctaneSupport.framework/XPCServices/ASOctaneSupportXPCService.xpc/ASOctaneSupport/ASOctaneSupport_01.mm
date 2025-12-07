unint64_t sub_10001C5D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001C194(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10001C600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001C1F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001C634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001C1E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001C668(uint64_t a1)
{
  v2 = sub_10001DD74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C6A4(uint64_t a1)
{
  v2 = sub_10001DD74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001C6E0(uint64_t a1, char a2)
{
  sub_10001BF8C(a2);
  v2 = sub_1000EFA58();

  return v2;
}

uint64_t type metadata accessor for BagResponse(uint64_t a1)
{
  result = qword_1002ACA70;
  if (!qword_1002ACA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001C790()
{
  result = qword_1002ACA08;
  if (!qword_1002ACA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACA08);
  }

  return result;
}

uint64_t sub_10001C88C(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C908(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F6508();
    v9 = a1 + *(a3 + 64);

    return sub_10001C990(v9, a2, v8);
  }
}

void *sub_10001C9CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F6508();
    v8 = v5 + *(a4 + 64);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001CA4C(uint64_t a1)
{
  sub_10001CBA8(319, &qword_1002ACA80, type metadata for String, &type metadata accessor for Array);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_1001F6508();
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_10001CBA8(319, &unk_1002ACA88, &type metadata for Double, &type metadata accessor for Optional);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_10001CBA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10001CBF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001CC38(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10001CC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10001E850();
  v7 = v5;
  v9 = v8;
  v10 = sub_1000183C4(&qword_1002ACB20, &qword_1001FED18);
  sub_10001A278();
  v12 = v11;
  sub_10001E844();
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_10001AE68(v9, v9[3]);
  sub_10001DD74();
  sub_10001E838();
  sub_1001F8198();
  *&v21 = *v7;
  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_10001E708(&qword_1002ACB30, &protocol witness table for String);
  sub_10001E7CC();
  sub_10001E838();
  sub_10001E6C8();
  sub_1001F7DC8();
  if (v6)
  {
    (*(v12 + 8))(v15, v10);
  }

  else
  {
    sub_10001E604(1);
    sub_1001F7D88();
    sub_10001E604(2);
    sub_1001F7D88();
    sub_10001E604(3);
    sub_1001F7D88();
    sub_10001E604(4);
    sub_1001F7D88();
    sub_10001E604(5);
    sub_1001F7D88();
    sub_10001E604(6);
    sub_1001F7D88();
    LOBYTE(v21) = 7;
    sub_10001E7DC();
    sub_10001E6C8();
    sub_1001F7DA8();
    sub_10001E604(8);
    sub_1001F7D88();
    sub_10001E604(9);
    sub_1001F7D88();
    v20 = v12;
    v16 = type metadata accessor for BagResponse(0);
    LOBYTE(v21) = 10;
    sub_1001F6508();
    sub_10001DE88(&qword_1002ACB38, &protocol conformance descriptor for Date);
    sub_10001E7DC();
    sub_10001E6C8();
    sub_1001F7DC8();
    sub_10001E770(v16[17]);
    sub_10001E604(11);
    sub_1001F7D88();
    sub_10001E770(v16[18]);
    sub_10001E604(12);
    sub_1001F7D88();
    sub_10001E604(13);
    sub_1001F7D38();
    sub_10001E770(v16[20]);
    sub_10001E604(14);
    sub_1001F7D88();
    sub_10001E770(v16[21]);
    sub_10001E604(15);
    sub_1001F7D88();
    sub_10001E770(v16[22]);
    sub_10001E604(16);
    sub_1001F7D88();
    sub_10001E604(17);
    sub_1001F7D88();
    sub_10001E604(18);
    sub_1001F7D88();
    LOBYTE(v21) = 19;
    sub_10001E7DC();
    sub_10001E6C8();
    sub_1001F7DA8();
    LOBYTE(v21) = 20;
    sub_10001E7DC();
    sub_10001E6C8();
    sub_1001F7DA8();
    LOBYTE(v21) = 21;
    sub_10001E7DC();
    sub_10001E6C8();
    sub_1001F7DA8();
    *&v21 = *(v7 + v16[26]);
    sub_10001E7CC();
    sub_10001E838();
    sub_10001E6C8();
    sub_1001F7DC8();
    sub_10001E770(v16[27]);
    sub_10001E604(23);
    sub_1001F7D88();
    sub_10001E770(v16[28]);
    sub_10001E604(24);
    sub_1001F7D88();
    v17 = v7 + v16[30];
    v18 = *(v17 + 2);
    v21 = *v17;
    v22 = v18;
    sub_10001DDC8();
    sub_10001E7CC();
    sub_10001E6C8();
    sub_1001F7DC8();
    sub_10001E770(v16[29]);
    sub_10001E604(26);
    sub_1001F7D88();
    (*(v20 + 8))(v15, v10);
  }

  sub_10001E868();
}

void sub_10001D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10001E850();
  v25 = v24;
  v27 = v26;
  sub_1001F6508();
  sub_10001A278();
  v102 = v29;
  v103 = v28;
  __chkstk_darwin(v28);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1000183C4(&qword_1002ACB48, &qword_1001FED20);
  sub_10001A278();
  v33 = v32;
  sub_10001E844();
  __chkstk_darwin(v34);
  v36 = &v102 - v35;
  v113 = type metadata accessor for BagResponse(0);
  __chkstk_darwin(v113);
  v38 = &v102 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v25[3];
  v104 = v25;
  v40 = sub_10001AE68(v25, v39);
  sub_10001DD74();
  sub_1001F8178();
  if (v23)
  {
    v114 = v23;
    v41 = 0;
    v42 = 0;
    LODWORD(v31) = 0;
    LODWORD(v36) = 0;
    v43 = 0;
    v44 = 0;
    sub_10001E658();
  }

  else
  {
    *&v111[4] = v27;
    v41 = v33;
    v44 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    v43 = sub_10001E73C(&qword_1002ACB50, &protocol witness table for String);
    v40 = v36;
    sub_1001F7CB8();
    *v38 = v115;
    sub_10001E690(1);
    v42 = v33;
    *(v38 + 1) = sub_1001F7C78();
    *(v38 + 2) = v46;
    sub_10001E690(2);
    *(v38 + 3) = sub_1001F7C78();
    *(v38 + 4) = v47;
    sub_10001E690(3);
    *(v38 + 5) = sub_1001F7C78();
    *(v38 + 6) = v48;
    sub_10001E690(4);
    *(v38 + 7) = sub_1001F7C78();
    *(v38 + 8) = v49;
    sub_10001E690(5);
    *(v38 + 9) = sub_1001F7C78();
    *(v38 + 10) = v50;
    sub_10001E690(6);
    *(v38 + 13) = sub_1001F7C78();
    *(v38 + 14) = v51;
    sub_10001E690(7);
    *(v38 + 17) = sub_1001F7C98();
    sub_10001E690(8);
    v52 = sub_1001F7C78();
    v114 = 0;
    *(v38 + 18) = v52;
    *(v38 + 19) = v53;
    sub_10001E690(9);
    v54 = v114;
    v55 = sub_1001F7C78();
    v114 = v54;
    if (v54)
    {
      v57 = sub_10001E6A4();
      v58(v57);
      v107 = 0;
      v110 = 0;
      v108 = 0;
      *v111 = 0;
      a10 = 0;
      sub_10001E5D8();
    }

    else
    {
      *(v38 + 20) = v55;
      *(v38 + 21) = v56;
      LOBYTE(v115) = 10;
      sub_10001DE88(&qword_1002ACB58, &protocol conformance descriptor for Date);
      sub_10001E6FC();
      sub_1001F7CB8();
      v114 = 0;
      (*(v102 + 32))(&v38[v113[16]], v31, v103);
      sub_10001E67C(11);
      v59 = v114;
      v60 = sub_1001F7C78();
      v114 = v59;
      if (v59)
      {
        v62 = sub_10001E6A4();
        v63(v62);
        v110 = 0;
        *v111 = 0;
        a10 = 0;
        sub_10001E5D8();
        LODWORD(v107) = 0;
        HIDWORD(v107) = v64;
        v108 = v64;
      }

      else
      {
        sub_10001E77C(v60, v61, v113[17]);
        sub_10001E67C(12);
        v65 = sub_1001F7C78();
        v114 = 0;
        sub_10001E77C(v65, v66, v113[18]);
        sub_10001E67C(13);
        v67 = sub_1001F7C28();
        v114 = 0;
        v68 = &v38[v113[19]];
        *v68 = v67;
        v68[8] = v69 & 1;
        sub_10001E67C(14);
        v70 = sub_1001F7C78();
        v114 = 0;
        sub_10001E77C(v70, v71, v113[20]);
        sub_10001E67C(15);
        v72 = sub_1001F7C78();
        v114 = 0;
        sub_10001E77C(v72, v73, v113[21]);
        sub_10001E67C(16);
        v74 = sub_1001F7C78();
        v114 = 0;
        sub_10001E77C(v74, v75, v113[22]);
        sub_10001E67C(17);
        v76 = sub_1001F7C78();
        v114 = 0;
        *(v38 + 11) = v76;
        *(v38 + 12) = v77;
        sub_10001E67C(18);
        v78 = v114;
        v79 = sub_1001F7C78();
        v114 = v78;
        if (v78)
        {
          v81 = sub_10001E6A4();
          v82(v81);
          LODWORD(v110) = 0;
          sub_10001E61C();
          LODWORD(v107) = 1;
          v40 = 1;
        }

        else
        {
          *(v38 + 15) = v79;
          *(v38 + 16) = v80;
          sub_10001E67C(19);
          v83 = v114;
          v84 = sub_1001F7C98();
          v114 = v83;
          if (!v83)
          {
            *&v38[v113[23]] = v84;
            sub_10001E6D4(20);
            sub_10001E6FC();
            v85 = sub_1001F7C98();
            v114 = 0;
            *&v38[v113[24]] = v85;
            sub_10001E6D4(21);
            sub_10001E6FC();
            v86 = sub_1001F7C98();
            v114 = 0;
            *&v38[v113[25]] = v86;
            sub_10001E6FC();
            sub_1001F7CB8();
            v114 = 0;
            *&v38[v113[26]] = v115;
            sub_10001E6D4(23);
            v89 = sub_1001F7C78();
            v109 = 1;
            v114 = 0;
            sub_10001E77C(v89, v90, v113[27]);
            sub_10001E67C(24);
            v91 = sub_1001F7C78();
            v114 = 0;
            sub_10001E77C(v91, v92, v113[28]);
            sub_10001DECC();
            sub_10001E6FC();
            sub_1001F7CB8();
            v114 = 0;
            v93 = v116;
            v94 = &v38[v113[30]];
            *v94 = v115;
            *(v94 + 2) = v93;
            sub_10001E6D4(26);
            sub_10001E6FC();
            v95 = sub_1001F7C78();
            v114 = 0;
            v96 = v95;
            v98 = v97;
            v99 = sub_10001E6A4();
            v100(v99);
            v101 = &v38[v113[29]];
            *v101 = v96;
            v101[1] = v98;
            sub_10001DF20(v38, *&v111[4]);
            sub_100019CCC(v104);
            sub_10001DF84(v38);
            goto LABEL_46;
          }

          v87 = sub_10001E6A4();
          v88(v87);
          sub_10001E61C();
          LODWORD(v107) = 1;
          v40 = 1;
          LODWORD(v110) = 1;
        }

        v105 = 1;
        HIDWORD(v107) = 1;
        v108 = 1;
        HIDWORD(v110) = 1;
        *v111 = 1;
        a10 = 1;
        *&v111[4] = 1;
        LODWORD(v112) = 1;
      }
    }
  }

  sub_100019CCC(v104);
  if (v41)
  {
    v109 = 0;
    v106 = 0;

    v45 = v113;
    if (v42)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v106 = 0;
    v109 = 0;
    v45 = v113;
    if (v42)
    {
LABEL_6:

      if ((v31 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  if (!v31)
  {
LABEL_7:
    if (v36)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:

  if (v36)
  {
LABEL_8:

    if ((v43 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v43)
  {
LABEL_9:
    if (v44)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:

  if (v44)
  {
LABEL_10:

    if ((v107 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v107)
  {
LABEL_11:
    if (v40)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:

  if (v40)
  {
LABEL_12:

    if ((v110 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v110)
  {
LABEL_13:
    if (v105)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:

  if (v105)
  {
LABEL_14:

    if ((v107 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!HIDWORD(v107))
  {
LABEL_15:
    if (v108)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:

  if (v108)
  {
LABEL_16:
    (*(v102 + 8))(&v38[v45[16]], v103);
    if ((v110 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!HIDWORD(v110))
  {
LABEL_17:
    if (*v111)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  sub_10001E800();
  if (v111[0])
  {
LABEL_18:
    sub_10001E800();
    if ((a10 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (!a10)
  {
LABEL_19:
    if (*&v111[4])
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  sub_10001E800();
  if (v111[4])
  {
LABEL_20:
    sub_10001E800();
    if ((v112 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_41:
    sub_10001E800();
    goto LABEL_42;
  }

LABEL_40:
  if (v112)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (!v109)
  {
    if (!v106)
    {
      goto LABEL_44;
    }

LABEL_23:
    sub_10001E800();
    if ((v106 & 0x100000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  sub_10001E800();
  if (v106)
  {
    goto LABEL_23;
  }

LABEL_44:
  if (HIDWORD(v106))
  {
LABEL_45:
  }

LABEL_46:
  sub_10001E868();
}

unint64_t sub_10001DD74()
{
  result = qword_1002ACB28;
  if (!qword_1002ACB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACB28);
  }

  return result;
}

unint64_t sub_10001DDC8()
{
  result = qword_1002ACB40;
  if (!qword_1002ACB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACB40);
  }

  return result;
}

uint64_t sub_10001DE1C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002ACA10, qword_1001FEBF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001DE88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F6508();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001DECC()
{
  result = qword_1002ACB60;
  if (!qword_1002ACB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACB60);
  }

  return result;
}

uint64_t sub_10001DF20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DF84(uint64_t a1)
{
  v2 = type metadata accessor for BagResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001DFE0()
{
  result = qword_1002ACB70;
  if (!qword_1002ACB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACB70);
  }

  return result;
}

uint64_t sub_10001E034(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002ACB78, &qword_1001FED30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BagResponse.CommerceUISection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BagResponse.CommerceUISection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001E1F4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BagResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BagResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001E380);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10001E3BC()
{
  result = qword_1002ACB98;
  if (!qword_1002ACB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACB98);
  }

  return result;
}

unint64_t sub_10001E414()
{
  result = qword_1002ACBA0;
  if (!qword_1002ACBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACBA0);
  }

  return result;
}

unint64_t sub_10001E46C()
{
  result = qword_1002ACBA8;
  if (!qword_1002ACBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACBA8);
  }

  return result;
}

unint64_t sub_10001E4C4()
{
  result = qword_1002ACBB0;
  if (!qword_1002ACBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACBB0);
  }

  return result;
}

unint64_t sub_10001E51C()
{
  result = qword_1002ACBB8;
  if (!qword_1002ACBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACBB8);
  }

  return result;
}

unint64_t sub_10001E574()
{
  result = qword_1002ACBC0;
  if (!qword_1002ACBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACBC0);
  }

  return result;
}

void sub_10001E638()
{
  *(v0 - 148) = 0;
  *(v0 - 72) = 0;
  *(v0 - 136) = 0;
}

void sub_10001E658()
{
  *(v0 - 172) = 0;
  *(v0 - 156) = 0;
  *(v0 - 184) = 0;
  *(v0 - 164) = 0;
  *(v0 - 148) = 0;
  *(v0 - 72) = 0;
  *(v0 - 136) = 0;
}

uint64_t sub_10001E6E0()
{
  *(v2 - 160) = v1;
  *(v2 - 152) = v0;
}

uint64_t sub_10001E708(unint64_t *a1, uint64_t a2)
{

  return sub_10001DE1C(a1, a2, &protocol conformance descriptor for <A> [A]);
}

uint64_t sub_10001E73C(unint64_t *a1, uint64_t a2)
{

  return sub_10001DE1C(a1, a2, &protocol conformance descriptor for <A> [A]);
}

void sub_10001E760(int a1@<W8>)
{
  *(v1 - 172) = 0;
  *(v1 - 168) = a1;
  *(v1 - 164) = a1;
  *(v1 - 156) = 0;
  *(v1 - 152) = a1;
}

uint64_t sub_10001E77C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_10001E788()
{
  *(v2 - 160) = v1;
  *(v2 - 152) = v0;
}

uint64_t sub_10001E7A0()
{

  return sub_1001F7DC8();
}

uint64_t sub_10001E800()
{
}

void sub_10001E82C(uint64_t a1@<X8>)
{
  v4 = (v3 + v2);
  *v4 = a1;
  v4[1] = v1;
}

uint64_t UnsafeRawBufferPointer.init(fastRebase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return a3 + a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10001E8B0()
{
  v1 = *(v0 + 128);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000ADA68(0x6465722D65646F63, 0xEB000000006D6565, 1819112552, 0xE400000000000000);
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;
    *(v0 + 136) = v4;

    sub_10001F734(v3);
  }

  sub_10001F78C(v1);
  return v2;
}

void sub_10001E958(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001EA8E8();
  v109 = sub_1001F10F8(1684628080, 0xE400000000000000, v4);
  v6 = v5;

  v110 = v6;
  if (!v6)
  {
    type metadata accessor for HTTPResponseHead._Storage();
    v24 = swift_allocObject();
    v25 = 0;
    v26 = 0uLL;
    v27 = 21;
LABEL_24:
    v28 = 0uLL;
    goto LABEL_142;
  }

  v7 = sub_10001E8B0();
  if (!v7)
  {

    type metadata accessor for HTTPResponseHead._Storage();
    v24 = swift_allocObject();
    v25 = 0;
    v26 = 0uLL;
    v27 = 49;
    goto LABEL_24;
  }

  v103 = v8;
  v104 = v7;
  v105 = a1;
  sub_10001AE68((v1 + 48), *(v1 + 72));
  sub_10007992C();
  sub_10001AE68((v1 + 48), *(v1 + 72));
  v102 = sub_1000795A8(v109, v6);
  v9 = v102[7];
  v10 = sub_10001A07C();
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v12 = v10;
    *&v140 = _swiftEmptyArrayStorage;
    v13 = v10 & ~(v10 >> 63);

    sub_100033F8C(0, v13, 0);
    if (v12 < 0)
    {
      goto LABEL_148;
    }

    v14 = 0;
    v15 = v140;
    v16 = v9 & 0xC000000000000001;
    v137 = v9;
    while (1)
    {
      if (v16)
      {
        v17 = sub_1001F7808();
      }

      else
      {
        v17 = *(v9 + 8 * v14 + 32);
      }

      v18 = *(v17 + 56);
      if (v18 >> 62)
      {
        if (sub_1001F7B48())
        {
LABEL_11:
          if ((v18 & 0xC000000000000001) != 0)
          {
            swift_bridgeObjectRetain_n();
            sub_1001F7808();
          }

          else
          {
            if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_146;
            }
          }

          sub_10001AE68((v2 + 88), *(v2 + 112));

          v20 = sub_10008D3AC(v19);

          v9 = v137;
          goto LABEL_17;
        }
      }

      else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v20 = 3;
LABEL_17:
      *&v140 = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        sub_100033F8C((v21 > 1), v22 + 1, 1);
        v9 = v137;
        v15 = v140;
      }

      ++v14;
      v15[2] = v22 + 1;
      v23 = &v15[2 * v22];
      v23[4] = v18;
      *(v23 + 40) = v20;
      if (v12 == v14)
      {

        v11 = _swiftEmptyArrayStorage;
        goto LABEL_26;
      }
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_26:
  v29 = 0;
  v145 = _swiftEmptyArrayStorage;
  v107 = v15 + 4;
  v108 = v15[2];
  v30 = 0xE100000000000000;
  v106 = v15;
  while (1)
  {
    if (v29 == v108)
    {

      v151 = v146;
      sub_10001C838(&v151);
      v150 = v147;
      sub_10001C838(&v150);
      v149 = v148;
      sub_10001C88C(&v149);
      v34 = v145;
      type metadata accessor for AppIconRoute();
      v36 = sub_10005DC24(v109, v110);
      v30 = v95;

      if (!v102[3])
      {
        goto LABEL_140;
      }

      v96 = v102[2];
      v97 = v102[3];
LABEL_141:
      *(&v141 + 1) = &type metadata for OfferCodeRedeemUIRoute.ViewProperties;
      v98 = swift_allocObject();
      *&v140 = v98;
      v98[2] = v36;
      v98[3] = v30;
      v98[4] = v96;
      v98[5] = v97;
      v98[6] = v34;

      v99 = sub_1000ADFF4(&v140, v104, v103);
      v101 = v100;

      sub_100019CCC(&v140);
      sub_1000B738C(v99, v101, 1, &v140);
      v136 = v141;
      v139 = v140;
      v25 = v142 | ((v143 | (v144 << 16)) << 32);

      type metadata accessor for HTTPResponseHead._Storage();
      v24 = swift_allocObject();
      v28 = v136;
      v26 = v139;
      v27 = 3;
      a1 = v105;
LABEL_142:
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v27;
      *(v24 + 40) = 65537;
      *a1 = v24;
      *(a1 + 8) = _swiftEmptyArrayStorage;
      *(a1 + 16) = 2;
      *(a1 + 24) = v26;
      *(a1 + 40) = v28;
      *(a1 + 56) = v25;
      *(a1 + 62) = BYTE6(v25);
      *(a1 + 60) = WORD2(v25);
      return;
    }

    if (v29 >= v15[2])
    {
      goto LABEL_145;
    }

    v31 = &v107[2 * v29];
    v32 = *v31;
    v33 = *(v31 + 8);
    v116 = v29 + 1;
    v34 = sub_10013B560();
    v35 = v32 & 0xC000000000000001;
    v127 = v32 & 0xFFFFFFFFFFFFFF8;

    v36 = 0;
    v117 = _swiftEmptyArrayStorage;
    v120 = v34;
    v121 = v32;
    v138 = v33;
    v122 = v32 & 0xC000000000000001;
LABEL_30:
    if (v34 != v36)
    {
      break;
    }

    sub_1001BA250(v117);
    v30 = 0xE100000000000000;
    v15 = v106;
    v29 = v116;
  }

  if (v35)
  {
    v37 = sub_1001F7808();
  }

  else
  {
    if (v36 >= *(v127 + 16))
    {
      goto LABEL_139;
    }

    v37 = *(v32 + 8 * v36 + 32);
  }

  v38 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v97 = 0xE800000000000000;
    v96 = 0x656D614E20707041;
    goto LABEL_141;
  }

  v39 = v37[19];
  if (v39 >> 62)
  {
    v40 = sub_1001F7B48();
    v38 = v36 + 1;
    if (v40)
    {
      goto LABEL_40;
    }

LABEL_37:

    ++v36;
    goto LABEL_30;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

LABEL_40:
  v41 = v37[11];
  v114 = v37[10];
  v42 = v37[7];
  v132 = v42;
  if (v42 >> 62)
  {
    v85 = v37[11];
    v86 = v38;
    v87 = sub_1001F7B48();
    v38 = v86;
    v134 = v87;
    v41 = v85;
  }

  else
  {
    v134 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = v38;
  v118 = v37;
  v113 = v41;
  if (!v134)
  {
    v49 = sub_1001E8450();
    v111 = v50;
    v112 = v49;

    goto LABEL_79;
  }

  v43 = HIBYTE(*(&v146 + 1)) & 0xFLL;
  if ((*(&v146 + 1) & 0x2000000000000000) == 0)
  {
    v43 = v146 & 0xFFFFFFFFFFFFLL;
  }

  v44 = 4 * v43;

  for (i = 15; v44 != i >> 14; i = sub_1001F6C48())
  {
    if (sub_1001F6D98() == 95 && v46 == 0xE100000000000000)
    {

      break;
    }

    v48 = sub_1001F7EA8();

    if (v48)
    {
      break;
    }
  }

  v128 = sub_1001F6DB8();
  v130 = v51;
  v123 = v53;
  v125 = v52;

  v54 = 0;
  v55 = 0;
  v56 = v132;
  v57 = v132 & 0xC000000000000001;
  while (2)
  {
    v58 = v55;
    v34 = v120;
    v32 = v121;
LABEL_57:
    if (v134 == v58)
    {

      if (!v54)
      {
        sub_1001C19A8();
        v11 = _swiftEmptyArrayStorage;
        v35 = v122;
        if (v57)
        {
          v59 = sub_1001F7808();
        }

        else
        {
          v59 = *(v132 + 32);
        }

        goto LABEL_78;
      }

      v59 = v54;
      v11 = _swiftEmptyArrayStorage;
LABEL_77:
      v35 = v122;
LABEL_78:
      v111 = v59[5];
      v112 = v59[4];

      v37 = v118;
LABEL_79:
      v64 = v37[19];
      if (v64 >> 62)
      {
        v88 = v37[19];
        v65 = sub_1001F7B48();
        v64 = v88;
        if (!v65)
        {
          goto LABEL_128;
        }

LABEL_81:
        *&v151 = _swiftEmptyArrayStorage;
        v66 = v65 & ~(v65 >> 63);
        v67 = v64;
        v126 = v65;

        sub_100033F34(0, v66, 0);
        if (v126 < 0)
        {
          goto LABEL_147;
        }

        v68 = 0;
        v11 = v151;
        v124 = v67 & 0xC000000000000001;
        v119 = v67 + 32;
LABEL_83:
        if (v124)
        {
          v69 = sub_1001F7808();
        }

        else
        {
          v69 = *(v119 + 8 * v68);
        }

        v131 = v69[3];
        v133 = v69[2];
        v129 = v69[10];
        v135 = v69[11];
        if (v33 == 3)
        {

          v70 = 1;
          goto LABEL_119;
        }

        v71 = v69[12];
        if (!*(v71 + 16))
        {

          v70 = 1;
          v35 = v122;
          goto LABEL_119;
        }

        sub_1001F8068();

        sub_1001F6C28();

        v72 = sub_1001F80D8();
        v73 = -1 << *(v71 + 32);
        v74 = v72 & ~v73;
        if (((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
        {

          v70 = 1;
          goto LABEL_117;
        }

        v75 = ~v73;
        v33 = v138;
        while (1)
        {
          if (*(*(v71 + 48) + v74))
          {
            if (*(*(v71 + 48) + v74) == 1)
            {
              v76 = 0xE800000000000000;
              v77 = 0x676E697473697865;
              if (!v33)
              {
                goto LABEL_105;
              }
            }

            else
            {
              v76 = 0xE700000000000000;
              v77 = 0x64657269707865;
              if (!v33)
              {
LABEL_105:
                v79 = 0xE300000000000000;
                v78 = 7824750;
                goto LABEL_106;
              }
            }
          }

          else
          {
            v76 = 0xE300000000000000;
            v77 = 7824750;
            if (!v33)
            {
              goto LABEL_105;
            }
          }

          if (v33 == 1)
          {
            v78 = 0x676E697473697865;
          }

          else
          {
            v78 = 0x64657269707865;
          }

          if (v33 == 1)
          {
            v79 = 0xE800000000000000;
          }

          else
          {
            v79 = 0xE700000000000000;
          }

LABEL_106:
          if (v77 == v78 && v76 == v79)
          {

            goto LABEL_116;
          }

          v81 = sub_1001F7EA8();

          if (v81)
          {

LABEL_116:

            v70 = 0;
LABEL_117:
            v33 = v138;
LABEL_118:
            v35 = v122;
LABEL_119:
            *&v151 = v11;
            v83 = v11[2];
            v82 = v11[3];
            if (v83 >= v82 >> 1)
            {
              sub_100033F34(v82 > 1, v83 + 1, 1);
              v11 = v151;
            }

            ++v68;
            v11[2] = v83 + 1;
            v84 = &v11[5 * v83];
            v84[4] = v133;
            v84[5] = v131;
            v84[6] = v129;
            v84[7] = v135;
            *(v84 + 64) = v70;
            if (v68 == v126)
            {

              v34 = v120;
              v32 = v121;
              goto LABEL_129;
            }

            goto LABEL_83;
          }

          v74 = (v74 + 1) & v75;
          v33 = v138;
          if (((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
          {

            v70 = 1;
            goto LABEL_118;
          }
        }
      }

      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65)
      {
        goto LABEL_81;
      }

LABEL_128:

LABEL_129:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000328FC();
        v117 = v93;
      }

      v89 = v117[2];
      v90 = v115;
      v91 = v113;
      if (v89 >= v117[3] >> 1)
      {
        sub_1000328FC();
        v90 = v115;
        v117 = v94;
        v91 = v113;
      }

      v117[2] = v89 + 1;
      v92 = &v117[5 * v89];
      v92[4] = v114;
      v92[5] = v91;
      v92[6] = v112;
      v92[7] = v111;
      v92[8] = v11;
      v36 = v90;
      v11 = _swiftEmptyArrayStorage;
      v30 = 0xE100000000000000;
      goto LABEL_30;
    }

    if (v57)
    {
      v59 = sub_1001F7808();
    }

    else
    {
      if (v58 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_144;
      }

      v59 = *(v56 + 8 * v58 + 32);
    }

    v55 = v58 + 1;
    if (!__OFADD__(v58, 1))
    {
      v60 = v59[6];
      v61 = v59[7];
      v62 = v146 == v60 && *(&v146 + 1) == v61;
      if (v62 || (sub_1001F7EA8() & 1) != 0)
      {

        v11 = _swiftEmptyArrayStorage;
        v34 = v120;
        v32 = v121;
        v33 = v138;
        goto LABEL_77;
      }

      if (!v54)
      {

        v63 = sub_1000E1BE0(v128, v125, v123, v130, v60, v61);

        if (v63)
        {
          v54 = v59;
        }

        else
        {

          v54 = 0;
        }

        v33 = v138;
        v56 = v132;
        continue;
      }

      ++v58;
      v34 = v120;
      v32 = v121;
      v33 = v138;
      v56 = v132;
      goto LABEL_57;
    }

    break;
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void *sub_10001F6A8()
{
  v0 = sub_100082E38();
  sub_100019CCC(v0 + 11);
  sub_10001F734(v0[16]);
  return v0;
}

uint64_t sub_10001F6E0()
{
  sub_10001F6A8();

  return swift_deallocClassInstance();
}

uint64_t sub_10001F734(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10001F744()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F78C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 sub_10001F79C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001F7B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001F7F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10001F844(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001F870(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001F8B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10001F910(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001EFE18(v21);
  if (!v23)
  {
    goto LABEL_5;
  }

  v17[0] = v21[0];
  v17[1] = v21[1];
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v4 = sub_1001F10F8(25705, 0xE200000000000000, *(a1 + 96));
  if (!v5)
  {
    sub_10002077C(v21);
LABEL_5:
    v11 = type metadata accessor for HTTPResponseHead._Storage();
    v8 = sub_100021728(v11);
    v6 = 0;
    *(v8 + 16) = 0u;
    sub_10002170C(v8, 21);
    v10 = 0uLL;
    goto LABEL_6;
  }

  sub_10001FB04(v17, v4, v5, v12);

  sub_10002077C(v21);
  sub_1001F1440(v12, &v13);
  v6 = v14 | ((v15 | (v16 << 16)) << 32);
  v7 = type metadata accessor for HTTPResponseHead._Storage();
  v8 = sub_100021728(v7);
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_10002170C(v8, 3);
LABEL_6:
  *a2 = v8;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  sub_100021740(v9, v10);
  *(a2 + 56) = v6;
  *(a2 + 62) = BYTE6(v6);
  *(a2 + 60) = WORD2(v6);
}

void *sub_10001FB04@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v53 = a4;
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v9 = sub_1001F6688();
  sub_100019C94(v9, qword_1002E6180);

  sub_1000207E4(a1, &v36);
  v10 = sub_1001F6668();
  v11 = sub_1001F72B8();

  sub_100020840(a1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *&v36 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1000E4544(a2, a3, &v36);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1000E4544(*(a1 + 4), *(a1 + 5), &v36);
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling in-app subscription status request for subscription group %s and app %s.", v12, 0x16u);
    swift_arrayDestroy();
    sub_100021754();

    sub_100021754();
  }

  sub_10001AE68(v5 + 6, v5[9]);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  if (sub_10001FF38(a2, a3, v13, v14))
  {
    sub_10001AE68(v5 + 11, v5[14]);
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    sub_10008B3C8();
    v33 = v16;
    swift_setDeallocating();
    sub_1001E56B4();
    sub_10001AE68(v5 + 6, v5[9]);
    v17 = sub_1000795A8(v13, v14);
    sub_10002171C();
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    v19 = a1[1];
    *(v18 + 24) = *a1;
    *(v18 + 40) = v19;
    v20 = a1[3];
    *(v18 + 56) = a1[2];
    *(v18 + 72) = v20;
    sub_10002171C();
    v21 = swift_allocObject();
    v22 = a1[1];
    *(v21 + 24) = *a1;
    v23 = *a1;
    v24 = a1[1];
    *(v21 + 40) = v22;
    v25 = a1[3];
    *(v21 + 56) = a1[2];
    v26 = a1[2];
    *(v21 + 72) = v25;
    v36 = v23;
    *(v21 + 16) = v5;
    v37 = v24;
    v38 = v26;
    v39 = a1[3];
    v35 = 0;
    sub_1000207E4(a1, v34);
    sub_1000207E4(a1, v34);

    sub_1000207E4(a1, v34);

    v27 = sub_1000814F0(2);

    if (v27)
    {

      v28 = sub_100081528(2);
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 1;
    }

    v34[0] = v30 & 1;
    v41[0] = v36;
    v41[1] = v37;
    v41[2] = v38;
    v41[3] = v39;
    v42 = v33;
    v43 = a2;
    v44 = a3;
    v45 = v35;
    v46 = v17;
    v47 = sub_1000216F0;
    v48 = v18;
    v49 = sub_1000216F4;
    v50 = v21;
    v51 = v28;
    v52 = v30 & 1;
    sub_1000532D8(v41, __src);

    return memcpy(v53, __src, 0x59uLL);
  }

  else
  {
    sub_100021578();
    swift_allocError();
    *v31 = 0;
    v31[1] = 0;
    v31[2] = 25;
    return swift_willThrow();
  }
}

uint64_t sub_10001FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(sub_1000795A8(a3, a4) + 56);
  v7 = sub_10013B560();

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (v7 == v9)
    {
LABEL_14:

      return v7 != v10;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
      v11 = result;
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v11 = *(v6 + 8 * v9 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (*(v11 + 16) == a1 && *(v11 + 24) == a2)
    {

      return v7 != v10;
    }

    v13 = sub_1001F7EA8();

    v9 = v10 + 1;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_100020090(uint64_t a1@<X8>)
{
  sub_1001EFE18(v19);
  if (v21)
  {
    v15[0] = v19[0];
    v15[1] = v19[1];
    v16 = v20;
    v17 = v21;
    v18 = v22;
    sub_100020190(v15, v10);
    sub_10002077C(v19);
    sub_1001F1440(v10, &v11);
    v2 = v12 | ((v13 | (v14 << 16)) << 32);
    v3 = type metadata accessor for HTTPResponseHead._Storage();
    v4 = sub_100021728(v3);
    v5 = 3;
  }

  else
  {
    v6 = type metadata accessor for HTTPResponseHead._Storage();
    v4 = sub_100021728(v6);
    v2 = 0;
    v5 = 21;
  }

  v7 = sub_10002170C(v4, v5);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *a1 = v7;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  sub_100021740(v8, v9);
  *(a1 + 56) = v2;
  *(a1 + 62) = BYTE6(v2);
  *(a1 + 60) = WORD2(v2);
}

void *sub_100020190@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v6 = sub_1001F6688();
  sub_100019C94(v6, qword_1002E6180);
  sub_1000207E4(a1, v53);
  v7 = sub_1001F6668();
  v8 = sub_1001F72B8();
  sub_100020840(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v53[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000E4544(*(a1 + 32), *(a1 + 40), v53);
    _os_log_impl(&_mh_execute_header, v7, v8, "Handling in-app subscription status request for %s.", v9, 0xCu);
    sub_100019CCC(v10);
    sub_100021754();

    sub_100021754();
  }

  v48 = v3;
  sub_10001AE68(v3 + 6, v3[9]);
  v44 = *(a1 + 40);
  v45 = *(a1 + 32);
  v11 = *(sub_1000795A8(v45, v44) + 56);
  v12 = sub_10001A07C();
  v13 = _swiftEmptyArrayStorage;
  __dst = a2;
  v46 = a1;
  if (v12)
  {
    v14 = v12;
    *&v53[0] = _swiftEmptyArrayStorage;
    v15 = v12 & ~(v12 >> 63);

    sub_1000375CC(0, v15, 0);
    if (v14 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v16 = 0;
    v13 = *&v53[0];
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = sub_1001F7808();
      }

      else
      {
        v17 = *(v11 + 8 * v16 + 32);
      }

      v18 = *(v17 + 16);
      v19 = *(v17 + 24);

      *&v53[0] = v13;
      v21 = v13[2];
      v20 = v13[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000375CC(v20 > 1, v21 + 1, 1);
        v13 = *&v53[0];
      }

      ++v16;
      v13[2] = v21 + 1;
      v22 = &v13[2 * v21];
      v22[4] = v18;
      v22[5] = v19;
    }

    while (v14 != v16);
  }

  sub_10001AE68(v48 + 11, v48[14]);
  sub_10008B3C8();
  sub_10001AE68(v48 + 6, v48[9]);
  v23 = sub_1000795A8(v45, v44);
  sub_10002171C();
  v24 = swift_allocObject();
  *(v24 + 16) = v48;
  v25 = v46[1];
  *(v24 + 24) = *v46;
  *(v24 + 40) = v25;
  v26 = v46[3];
  *(v24 + 56) = v46[2];
  *(v24 + 72) = v26;
  sub_10002171C();
  v27 = swift_allocObject();
  v28 = v46[1];
  *(v27 + 24) = *v46;
  v29 = *v46;
  v30 = v46[1];
  *(v27 + 40) = v28;
  v31 = v46[3];
  *(v27 + 56) = v46[2];
  *(v27 + 72) = v31;
  *(v27 + 16) = v48;
  __src[0] = v29;
  __src[1] = v30;
  v32 = v46[3];
  __src[2] = v46[2];
  __src[3] = v32;
  v49 = v13;
  sub_1000207E4(v46, v53);
  sub_1000207E4(v46, v53);

  sub_1000207E4(v46, v53);

  sub_1001BFA6C(&v49);

  v33 = v49;
  v51 = 1;

  *&v53[0] = sub_1001A71F4(v34);
  sub_100020900(v53);

  v35 = *&v53[0];

  v36 = sub_1000814F0(2);

  if (v36)
  {

    v37 = sub_100081528(2);
    v39 = v38;
  }

  else
  {

    v37 = 0;
    v39 = 1;
  }

  v50 = v39 & 1;
  v53[0] = __src[0];
  v53[1] = __src[1];
  v53[2] = __src[2];
  v53[3] = __src[3];
  v54 = v35;
  v55 = v33;
  v56 = 0;
  v57 = v51;
  *v58 = v49;
  *&v58[3] = *(&v49 + 3);
  v59 = v23;
  v60 = sub_100020898;
  v61 = v24;
  v62 = sub_1000208CC;
  v63 = v27;
  v64 = v37;
  v65 = v39 & 1;
  v40 = sub_10001AE68(v48 + 11, v48[14]);
  v41 = *v40;
  v42 = *(*(*v40 + 128) + 16);

  os_unfair_lock_lock(v42);
  *(v41 + 112) = 1;
  os_unfair_lock_unlock(v42);

  sub_1000532D8(v53, __src);

  return memcpy(__dst, __src, 0x59uLL);
}

uint64_t sub_1000206B8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  sub_10001AE68(a2 + 11, a2[14]);
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  sub_10001AE68(a2 + 6, a2[9]);
  v15 = sub_10007A214(2uLL, v8, v9, v10, v11, v12, v13, v14);
  return a4(a1, v15, v16 & 1);
}

uint64_t sub_10002077C(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ACE80, &qword_1001FF0F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020900(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100112884(v2, v4, v5, v6);
    *a1 = v2;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  sub_10002097C(v9);
  return sub_1001F7898();
}

void sub_10002097C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1001F7E08(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1001F2D8C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_100020BA8(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_100020A5C(0, v3, 1, a1);
  }
}

uint64_t sub_100020A5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v26 = a3;
      v7 = *(v4 + 8 * a3);
      v24 = v6;
      v25 = v5;
      while (1)
      {
        v8 = *v5;
        v9 = v7;
        v10 = v8;
        v11 = sub_1000C5388(15);
        v13 = v12 ? v11 : 0;
        v14 = v12 ? v12 : 0xE000000000000000;
        v15 = sub_1000C5388(15);
        v17 = v16 ? v15 : 0;
        v18 = v16 ? v16 : 0xE000000000000000;
        if (v13 == v17 && v14 == v18)
        {
          break;
        }

        v20 = sub_1001F7EA8();

        if (v20)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v21 = *v5;
          v7 = *(v5 + 8);
          *v5 = v7;
          *(v5 + 8) = v21;
          v5 -= 8;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_26;
      }

LABEL_26:
      a3 = v26 + 1;
      v5 = v25 + 8;
      v6 = v24 - 1;
      if (v26 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100020BA8(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    i = _swiftEmptyArrayStorage;
LABEL_128:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_170;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_130:
      v99 = i;
      v100 = (i + 16);
      for (i = *(i + 16); i >= 2; *v100 = i)
      {
        if (!*a3)
        {
          goto LABEL_167;
        }

        v101 = (v99 + 16 * i);
        v102 = *v101;
        v103 = &v100[2 * i];
        v104 = *(v103 + 1);
        sub_100021294((*a3 + 8 * *v101), (*a3 + 8 * *v103), (*a3 + 8 * v104), v4);
        if (v121)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_155;
        }

        if (i - 2 >= *v100)
        {
          goto LABEL_156;
        }

        *v101 = v102;
        v101[1] = v104;
        v105 = *v100 - i;
        if (*v100 < i)
        {
          goto LABEL_157;
        }

        i = *v100 - 1;
        sub_1001A70C8(v103 + 16, v105, v103);
      }

LABEL_138:

      return;
    }

LABEL_164:
    i = sub_1001A70B4(i);
    goto LABEL_130;
  }

  v6 = 0;
  i = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v10 = *a3;
      v11 = *(*a3 + 8 * v6);
      v12 = *(*a3 + 8 * v9);
      v4 = v11;
      v117 = sub_1001AA950();
      if (v121)
      {

        return;
      }

      v107 = i;

      v112 = 8 * v8;
      v114 = v5;
      v13 = v8;
      v14 = (v10 + 8 * v8 + 16);
      v108 = v13;
      v15 = v13 + 2;
      while (1)
      {
        v16 = v15;
        if (v9 + 1 >= v5)
        {
          break;
        }

        i = v9;
        v17 = *(v14 - 1);
        v18 = *v14;
        v19 = v17;
        v20 = sub_1000C5388(15);
        if (v21)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0xE000000000000000;
        }

        v24 = sub_1000C5388(15);
        if (v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0;
        }

        if (v25)
        {
          v4 = v25;
        }

        else
        {
          v4 = 0xE000000000000000;
        }

        if (v22 == v26 && v23 == v4)
        {
          v28 = 0;
        }

        else
        {
          v28 = sub_1001F7EA8();
        }

        v29 = v117 ^ v28;
        ++v14;
        v9 = i + 1;
        v15 = v16 + 1;
        v5 = v114;
        if (v29)
        {
          goto LABEL_28;
        }
      }

      v9 = v5;
LABEL_28:
      if (v117)
      {
        v8 = v108;
        if (v9 < v108)
        {
          goto LABEL_163;
        }

        i = v107;
        if (v108 < v9)
        {
          if (v5 >= v16)
          {
            v30 = v16;
          }

          else
          {
            v30 = v5;
          }

          v31 = 8 * v30 - 8;
          v32 = v9;
          v33 = v108;
          v34 = v112;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_168;
              }

              v36 = *(v35 + v34);
              *(v35 + v34) = *(v35 + v31);
              *(v35 + v31) = v36;
            }

            ++v33;
            v31 -= 8;
            v34 += 8;
          }

          while (v33 < v32);
        }
      }

      else
      {
        i = v107;
        v8 = v108;
      }
    }

    v37 = a3[1];
    if (v9 < v37)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_160;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_75:
    if (v9 < v8)
    {
      goto LABEL_159;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032508();
      i = v97;
    }

    v57 = *(i + 16);
    v58 = v57 + 1;
    v119 = v9;
    if (v57 >= *(i + 24) >> 1)
    {
      sub_100032508();
      i = v98;
    }

    *(i + 16) = v58;
    v59 = i + 32;
    v60 = (i + 32 + 16 * v57);
    *v60 = v8;
    v60[1] = v119;
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_169;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        v62 = (v59 + 16 * (v58 - 1));
        v63 = (i + 16 * v58);
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v64 = *(i + 32);
          v65 = *(i + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_95:
          if (v67)
          {
            goto LABEL_146;
          }

          v79 = *v63;
          v78 = v63[1];
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_149;
          }

          v83 = v62[1];
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_152;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_154;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v58 - 2;
            }

            goto LABEL_117;
          }

          goto LABEL_110;
        }

        if (v58 < 2)
        {
          goto LABEL_148;
        }

        v86 = *v63;
        v85 = v63[1];
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_110:
        if (v82)
        {
          goto LABEL_151;
        }

        v88 = *v62;
        v87 = v62[1];
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_153;
        }

        if (v89 < v81)
        {
          goto LABEL_124;
        }

LABEL_117:
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
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
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        if (!*a3)
        {
          goto LABEL_166;
        }

        v4 = i;
        v93 = (v59 + 16 * (v61 - 1));
        i = *v93;
        v94 = v59 + 16 * v61;
        v95 = *(v94 + 8);
        sub_100021294((*a3 + 8 * *v93), (*a3 + 8 * *v94), (*a3 + 8 * v95), v116);
        if (v121)
        {
          goto LABEL_138;
        }

        if (v95 < i)
        {
          goto LABEL_141;
        }

        v96 = *(v4 + 2);
        if (v61 > v96)
        {
          goto LABEL_142;
        }

        *v93 = i;
        v93[1] = v95;
        if (v61 >= v96)
        {
          goto LABEL_143;
        }

        v58 = v96 - 1;
        sub_1001A70C8((v94 + 16), v96 - 1 - v61, (v59 + 16 * v61));
        i = v4;
        *(v4 + 2) = v96 - 1;
        if (v96 <= 2)
        {
          goto LABEL_124;
        }
      }

      v68 = v59 + 16 * v58;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_144;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_145;
      }

      v75 = v63[1];
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_147;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_150;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = v62[1];
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_158;
        }

        if (v66 < v92)
        {
          v61 = v58 - 2;
        }

        goto LABEL_117;
      }

      goto LABEL_95;
    }

LABEL_124:
    v6 = v119;
    v5 = a3[1];
    if (v119 >= v5)
    {
      goto LABEL_128;
    }
  }

  v38 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_161;
  }

  if (v38 >= v37)
  {
    v38 = a3[1];
  }

  if (v38 < v8)
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v9 == v38)
  {
    goto LABEL_75;
  }

  v109 = v8;
  v39 = *a3;
  v40 = *a3 + 8 * v9 - 8;
  v41 = v8 - v9;
  v111 = v38;
LABEL_50:
  v115 = v40;
  v118 = v9;
  v42 = *(v39 + 8 * v9);
  v113 = v41;
  while (1)
  {
    v43 = *v40;
    v44 = v42;
    v45 = v43;
    v46 = sub_1000C5388(15);
    if (v47)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0;
    }

    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0xE000000000000000;
    }

    v50 = sub_1000C5388(15);
    if (v51)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v4 = v51;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    if (v48 == v52 && v49 == v4)
    {

LABEL_73:
      v9 = v118 + 1;
      v40 = v115 + 8;
      v41 = v113 - 1;
      if (v118 + 1 == v111)
      {
        v9 = v111;
        v8 = v109;
        goto LABEL_75;
      }

      goto LABEL_50;
    }

    v54 = sub_1001F7EA8();

    if ((v54 & 1) == 0)
    {
      goto LABEL_73;
    }

    if (!v39)
    {
      break;
    }

    v55 = *v40;
    v42 = *(v40 + 8);
    *v40 = v42;
    *(v40 + 8) = v55;
    v40 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
}

uint64_t sub_100021294(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1000375D8(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v51 = v5;
    v53 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_62;
      }

      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = sub_1000C5388(15);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v19 = sub_1000C5388(15);
      if (v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xE000000000000000;
      }

      if (v17 == v21 && v18 == v22)
      {
      }

      else
      {
        v24 = sub_1001F7EA8();

        if (v24)
        {
          v25 = v6;
          v26 = v7 == v6++;
          goto LABEL_27;
        }
      }

      v25 = v4;
      v26 = v7 == v4++;
LABEL_27:
      v5 = v51;
      v10 = v53;
      if (!v26)
      {
        *v7 = *v25;
      }

      ++v7;
    }
  }

  sub_1000375D8(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v49 = v4;
  v50 = v7;
LABEL_31:
  v27 = v6 - 1;
  --v5;
  v52 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v54 = v10;
    v29 = v10 - 1;
    v30 = v27;
    v31 = *v27;
    v32 = *(v10 - 1);
    v33 = v31;
    v34 = sub_1000C5388(15);
    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v38 = sub_1000C5388(15);
    if (v39)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    if (v36 == v40 && v37 == v41)
    {
      v43 = 0;
    }

    else
    {
      v43 = sub_1001F7EA8();
    }

    v44 = v5 + 1;
    if (v43)
    {
      v7 = v50;
      v45 = v30;
      v6 = v30;
      v10 = v54;
      v4 = v49;
      if (v44 != v52)
      {
        *v5 = *v45;
        v6 = v45;
      }

      goto LABEL_31;
    }

    v27 = v30;
    if (v54 != v44)
    {
      *v5 = *v29;
    }

    --v5;
    v10 = v29;
    v7 = v50;
    v6 = v52;
    v4 = v49;
  }

LABEL_62:
  v46 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v46])
  {
    memmove(v6, v4, 8 * v46);
  }

  return 1;
}

unint64_t sub_100021578()
{
  result = qword_1002ACE90;
  if (!qword_1002ACE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACE90);
  }

  return result;
}

uint64_t sub_1000215CC()
{

  sub_10002171C();

  return _swift_deallocObject(v0, v1, v2);
}

__n128 sub_10002162C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100021640(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100021680(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10002170C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 65537;
  return result;
}

uint64_t sub_100021728(uint64_t a1)
{

  return swift_allocObject();
}

void sub_100021740(__n128 a1, __n128 a2)
{
  *(v2 + 16) = 2;
  *(v2 + 24) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_100021774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10001C990(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_100021850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100023584();
  result = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_100023570();

    return sub_100018460(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = v4;
  }

  return result;
}

void sub_100021918(uint64_t a1)
{
  sub_10002199C(319);
  if (v1 <= 0x3F)
  {
    sub_1000219F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002199C(uint64_t a1)
{
  if (!qword_1002ACF08)
  {
    sub_1001F6288();
    v1 = sub_1001F74B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1002ACF08);
    }
  }
}

void sub_1000219F4()
{
  if (!qword_1002ACF10)
  {
    v0 = sub_1001F74B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002ACF10);
    }
  }
}

uint64_t sub_100021A58()
{
  sub_100023584();
  v2 = type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0);

  return sub_10001C990(v1, v0, v2);
}

uint64_t sub_100021AB0()
{
  sub_100023584();
  type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0);
  v0 = sub_100023570();

  return sub_100018460(v0, v1, v2, v3);
}

uint64_t sub_100021B0C(uint64_t a1)
{
  result = type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100021B8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AppInformationResponse.PlatformAttributes(0);
    v9 = a1 + *(a3 + 20);

    return sub_10001C990(v9, a2, v8);
  }
}

void sub_100021C28()
{
  sub_100023584();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = type metadata accessor for AppInformationResponse.PlatformAttributes(0);
    v6 = v1 + *(v4 + 20);

    sub_100018460(v6, v0, v0, v5);
  }
}

uint64_t sub_100021CC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100021CFC(uint64_t a1)
{
  result = type metadata accessor for AppInformationResponse.PlatformAttributes(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100021D78(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_100279878;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021DCC(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1634497893;
  }
}

uint64_t sub_100021E00()
{
  v1 = sub_1000183C4(&qword_1002AD0B0, &qword_1001FF300);
  sub_10001A278();
  v3 = v2;
  sub_10001E844();
  __chkstk_darwin(v4);
  v6 = &v10[-v5];
  sub_100023530();
  v7 = sub_100022F0C();
  sub_100023554(&type metadata for AppInformationResponse.CodingKeys, v8, v7);
  v10[15] = 0;
  sub_1001F7D88();
  if (!v0)
  {
    type metadata accessor for AppInformationResponse(0);
    v10[14] = 1;
    type metadata accessor for AppInformationResponse.PlatformAttributes(0);
    sub_100022E10(&qword_1002AD0C0, type metadata accessor for AppInformationResponse.PlatformAttributes, &unk_1001FF240);
    sub_1001F7DC8();
  }

  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_100021FB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021D78(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100021FE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100021DCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100022014@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100021D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002203C(uint64_t a1)
{
  v2 = sub_100022F0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100022078(uint64_t a1)
{
  v2 = sub_100022F0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1000220CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1002798C8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  return v4 != 0;
}

uint64_t sub_100022124()
{
  v0 = sub_1000183C4(&qword_1002AD0A0, &qword_1001FF2F8);
  sub_10001A278();
  v2 = v1;
  sub_10001E844();
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  sub_100023530();
  v6 = sub_100022E58();
  sub_100023554(&type metadata for AppInformationResponse.PlatformAttributes.CodingKeys, v7, v6);
  type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0);
  sub_1000234E8();
  sub_100022E10(v8, v9, &unk_1001FF290);
  sub_1001F7DC8();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_100022260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0);
  sub_100023520();
  __chkstk_darwin(v4);
  sub_100023510();
  v23 = v6 - v5;
  v7 = sub_1000183C4(&qword_1002AD088, &qword_1001FF2F0);
  sub_10001A278();
  v22 = v8;
  sub_10001E844();
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for AppInformationResponse.PlatformAttributes(0);
  __chkstk_darwin(v12 - 8);
  sub_100023510();
  v15 = v14 - v13;
  sub_10001AE68(a1, a1[3]);
  sub_100022E58();
  sub_1001F8178();
  if (!v2)
  {
    v16 = v21;
    sub_1000234E8();
    sub_100022E10(v17, v18, &unk_1001FF2B8);
    v19 = v23;
    sub_1001F7CB8();
    (*(v22 + 8))(v11, v7);
    sub_100022EAC(v19, v15, type metadata accessor for AppInformationResponse.PlatformAttributes.Platform);
    sub_100022EAC(v15, v16, type metadata accessor for AppInformationResponse.PlatformAttributes);
  }

  return sub_100019CCC(a1);
}

uint64_t sub_10002249C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001002223B0 == a2;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100223AE0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_100022570(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1000225A4()
{
  v1 = sub_1000183C4(&qword_1002AD078, &qword_1001FF2E8);
  sub_10001A278();
  v3 = v2;
  sub_10001E844();
  __chkstk_darwin(v4);
  v6 = &v12[-v5];
  sub_100023530();
  v7 = sub_100022C24();
  sub_100023554(&type metadata for AppInformationResponse.PlatformAttributes.Platform.CodingKeys, v8, v7);
  v12[15] = 0;
  sub_1001F6288();
  sub_1000234D0();
  sub_100022E10(v9, v10, &protocol conformance descriptor for URL);
  sub_1001F7D58();
  if (!v0)
  {
    type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0);
    v12[14] = 1;
    sub_1001F7D18();
  }

  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_100022724@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  sub_10001E844();
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  sub_1000183C4(&qword_1002AD060, &qword_1001FF2E0);
  sub_10001A278();
  v26 = v8;
  v27 = v7;
  sub_10001E844();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0);
  sub_100023520();
  __chkstk_darwin(v11);
  sub_100023510();
  v14 = v13 - v12;
  sub_10001AE68(a1, a1[3]);
  sub_100022C24();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  sub_1001F6288();
  v29 = 0;
  sub_1000234D0();
  sub_100022E10(v15, v16, &protocol conformance descriptor for URL);
  sub_1001F7C48();
  sub_100022C78(v6, v14);
  v28 = 1;
  v17 = sub_1001F7C08();
  v19 = v18;
  v20 = sub_100023500();
  v21(v20);
  v22 = (v14 + *(v10 + 20));
  *v22 = v17;
  v22[1] = v19;
  sub_100022D50(v14, v25);
  sub_100019CCC(a1);
  return sub_100022DB4(v14);
}

BOOL sub_1000229D0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000220CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100022A04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100022114();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_100022A30@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000220CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100022A78@<X0>(_BYTE *a1@<X8>)
{
  result = static System.hasAsyncAwaitSupport.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100022AA4(uint64_t a1)
{
  v2 = sub_100022E58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100022AE0(uint64_t a1)
{
  v2 = sub_100022E58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100022B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002249C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100022B7C(uint64_t a1)
{
  v2 = sub_100022C24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100022BB8(uint64_t a1)
{
  v2 = sub_100022C24();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100022C24()
{
  result = qword_1002AD068;
  if (!qword_1002AD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD068);
  }

  return result;
}

uint64_t sub_100022C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022CE8(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022DB4(uint64_t a1)
{
  v2 = type metadata accessor for AppInformationResponse.PlatformAttributes.Platform(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022E10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100022E58()
{
  result = qword_1002AD090;
  if (!qword_1002AD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD090);
  }

  return result;
}

uint64_t sub_100022EAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100023520();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_100022F0C()
{
  result = qword_1002AD0B8;
  if (!qword_1002AD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD0B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInformationResponse.PlatformAttributes.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AppInformationResponse.PlatformAttributes.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100023068);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1000230A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002316CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000231A8()
{
  result = qword_1002AD0C8;
  if (!qword_1002AD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD0C8);
  }

  return result;
}

unint64_t sub_100023200()
{
  result = qword_1002AD0D0;
  if (!qword_1002AD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD0D0);
  }

  return result;
}

unint64_t sub_100023258()
{
  result = qword_1002AD0D8;
  if (!qword_1002AD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD0D8);
  }

  return result;
}

unint64_t sub_1000232B0()
{
  result = qword_1002AD0E0;
  if (!qword_1002AD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD0E0);
  }

  return result;
}

unint64_t sub_100023308()
{
  result = qword_1002AD0E8;
  if (!qword_1002AD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD0E8);
  }

  return result;
}

unint64_t sub_100023360()
{
  result = qword_1002AD0F0;
  if (!qword_1002AD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD0F0);
  }

  return result;
}

unint64_t sub_1000233B8()
{
  result = qword_1002AD0F8;
  if (!qword_1002AD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD0F8);
  }

  return result;
}

unint64_t sub_100023410()
{
  result = qword_1002AD100;
  if (!qword_1002AD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD100);
  }

  return result;
}

unint64_t sub_100023468()
{
  result = qword_1002AD108;
  if (!qword_1002AD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD108);
  }

  return result;
}

uint64_t sub_100023554(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F8198();
}

uint64_t sub_100023590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v9 = sub_1001F6508();
  sub_10001A278();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = type metadata accessor for IntroOfferEligibilityOverride(0);
  v19 = (v4 + v18[6]);
  v20 = *v19 == 0xD00000000000001ELL && 0x8000000100223B00 == v19[1];
  if (v20 || (sub_1001F7EA8()) && (v28 = a2, sub_1001F64B8(), sub_1001F6468(), v21 = *(v11 + 8), v21(v14, v9), sub_1001F64E8(), sub_100024764(&qword_1002AD110, &type metadata accessor for Date, &protocol conformance descriptor for Date), v22 = sub_1001F6A78(), v21(v14, v9), v21(v17, v9), (v22 & 1) == 0) && ((v24 = (v5 + v18[8]), *v24 == a3) ? (v25 = v24[1] == a4) : (v25 = 0), (v25 || (sub_1001F7EA8()) && ((v26 = (v5 + v18[9]), *v26 == v29) ? (v27 = v26[1] == v28) : (v27 = 0), v27 || (sub_1001F7EA8())))
  {
    return *(v5 + v18[12] + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for IntroOfferEligibilityOverride(uint64_t a1)
{
  result = qword_1002AD170;
  if (!qword_1002AD170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100023854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F6578();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10001C990(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100023918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F6578();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100018460(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000239C4(uint64_t a1)
{
  sub_1001F6578();
  if (v1 <= 0x3F)
  {
    sub_100023A70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100023A70()
{
  if (!qword_1002AD180)
  {
    v0 = sub_1001F74B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AD180);
    }
  }
}

unint64_t sub_100023AC0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100279900;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100023B1C(char a1)
{
  result = 7566185;
  switch(a1)
  {
    case 1:
      result = 7627113;
      break;
    case 2:
      result = 6583649;
      break;
    case 3:
      result = 0x65636E6F6ELL;
      break;
    case 4:
      result = 6580578;
      break;
    case 5:
      result = 0x49746375646F7270;
      break;
    case 6:
      result = 0x746361736E617274;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 7370853;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100023C18(void *a1)
{
  v3 = sub_1000183C4(&qword_1002AD1E8, &qword_1001FF748);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  sub_10001AE68(a1, a1[3]);
  sub_100024650();
  sub_1001F8198();
  v13[31] = 0;
  sub_1001F6578();
  sub_100024A70();
  sub_100024764(v9, v10, &protocol conformance descriptor for UUID);
  sub_100024A88();
  sub_1001F7DC8();
  if (!v1)
  {
    v11 = type metadata accessor for IntroOfferEligibilityOverride(0);
    v13[30] = 1;
    sub_100024A88();
    sub_1001F7DD8();
    sub_10001E770(v11[6]);
    v13[29] = 2;
    sub_100024A50();
    sub_1001F7D88();
    v13[28] = 3;
    sub_100024A88();
    sub_1001F7DC8();
    sub_10001E770(v11[8]);
    v13[27] = 4;
    sub_100024A50();
    sub_1001F7D88();
    sub_10001E770(v11[9]);
    v13[26] = 5;
    sub_100024A50();
    sub_1001F7D88();
    sub_10001E770(v11[10]);
    v13[25] = 6;
    sub_100024A50();
    sub_1001F7D88();
    v13[24] = 7;
    sub_100024A88();
    sub_1001F7D98();
    v13[15] = 8;
    sub_100024A50();
    sub_1001F7D68();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100023ED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_1001F6578();
  sub_10001A278();
  v52 = v5;
  __chkstk_darwin(v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  sub_1000183C4(&qword_1002AD1D0, &qword_1001FF740);
  sub_10001A278();
  v46 = v13;
  v47 = v12;
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v49 = type metadata accessor for IntroOfferEligibilityOverride(0);
  __chkstk_darwin(v49);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v50 = a1;
  sub_10001AE68(a1, v18);
  sub_100024650();
  v48 = v15;
  sub_1001F8178();
  v51 = v4;
  if (v2)
  {
    return sub_100019CCC(v50);
  }

  v61 = 0;
  sub_100024A70();
  v21 = sub_100024764(v19, v20, &protocol conformance descriptor for UUID);
  sub_1001F7CB8();
  v44 = v21;
  v22 = v11;
  v23 = *(v52 + 32);
  v23(v17, v22, v4);
  v60 = 1;
  v24 = sub_1001F7CC8();
  v25 = v49;
  *&v17[*(v49 + 20)] = v24;
  v59 = 2;
  v26 = sub_1001F7C78();
  v42 = v23;
  v43 = v17;
  sub_10001E77C(v26, v27, v25[6]);
  v58 = 3;
  v28 = v51;
  sub_1001F7CB8();
  v42(&v43[v25[7]], v8, v28);
  v57 = 4;
  sub_100024A60();
  v29 = sub_1001F7C78();
  v30 = v43;
  sub_10001E77C(v29, v31, v25[8]);
  v56 = 5;
  sub_100024A60();
  v32 = sub_1001F7C78();
  sub_10001E77C(v32, v33, v25[9]);
  v55 = 6;
  sub_100024A60();
  v34 = sub_1001F7C78();
  sub_10001E77C(v34, v35, v25[10]);
  v54 = 7;
  sub_100024A60();
  *(v30 + v25[11]) = sub_1001F7C88() & 1;
  v53 = 8;
  sub_100024A60();
  v36 = sub_1001F7C58();
  LOBYTE(v23) = v37;
  v38 = sub_100024A40();
  v39(v38);
  v40 = v30 + v25[12];
  *v40 = v36;
  *(v40 + 8) = v23 & 1;
  sub_1000246A4(v30, v45);
  sub_100019CCC(v50);
  return sub_100024708(v30);
}

unint64_t sub_1000244E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100023AC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100024510@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100023B1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100024558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100023B0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100024580@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOBSDSocket.Option.ipv6_multicast_if.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000245A8(uint64_t a1)
{
  v2 = sub_100024650();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000245E4(uint64_t a1)
{
  v2 = sub_100024650();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100024650()
{
  result = qword_1002AD1D8;
  if (!qword_1002AD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD1D8);
  }

  return result;
}

uint64_t sub_1000246A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroOfferEligibilityOverride(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024708(uint64_t a1)
{
  v2 = type metadata accessor for IntroOfferEligibilityOverride(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100024764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for IntroOfferEligibilityOverride.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntroOfferEligibilityOverride.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100024900);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002493C()
{
  result = qword_1002AD1F8;
  if (!qword_1002AD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD1F8);
  }

  return result;
}

unint64_t sub_100024994()
{
  result = qword_1002AD200;
  if (!qword_1002AD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD200);
  }

  return result;
}

unint64_t sub_1000249EC()
{
  result = qword_1002AD208;
  if (!qword_1002AD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD208);
  }

  return result;
}

uint64_t sub_100024A94()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    sub_100026434();

    v2 = sub_1001F7AD8();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_1001F7F28();
    _s8DiscountCMa();
    v2 = v1;
  }

  v3 = v0[19];
  if (v3 >> 62)
  {
    sub_100026434();

    v4 = sub_1001F7AD8();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_1001F7F28();
    _s8DiscountCMa();
    v4 = v3;
  }

  sub_1001BA2E8(v4);
  v5 = v2;
  v6 = v0[20];
  if (v6 >> 62)
  {
    _s8DiscountCMa();

    v7 = sub_1001F7AD8();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_1001F7F28();
    _s8DiscountCMa();
    v7 = v6;
  }

  sub_1001BA2E8(v7);
  v8 = v0[17];
  if (v8)
  {
    sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1001FF8A0;
    v9[4] = v8;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  sub_1001BA2E8(v9);
  return v5;
}

unint64_t sub_100024C80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1002799F8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100024CDC(char a1)
{
  result = 0x66664F636F486461;
  switch(a1)
  {
    case 1:
      result = 0x6566664F65646F63;
      break;
    case 2:
      result = 0x4F6B6361626E6977;
      break;
    case 3:
      result = 0x6D754E70756F7267;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100024E20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100024C80(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100024E50@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100024CDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100024E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100024CCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100024EC0@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPClientUpgradeError.receivedResponseAfterUpgradeCompleted.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100024EE8(uint64_t a1)
{
  v2 = sub_100025ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100024F24(uint64_t a1)
{
  v2 = sub_100025ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100024FAC(void *a1)
{
  sub_1000183C4(&qword_1002AD578, &unk_1001FF950);
  sub_10001A278();
  __chkstk_darwin(v4);
  *(v1 + 136) = 0;
  sub_10001AE68(a1, a1[3]);
  sub_100025ADC();
  sub_1001F8178();
  if (v2)
  {
    v5 = 0;
    sub_100019CCC(a1);

    type metadata accessor for OctaneSubscription();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1000183C4(&qword_1002AD518, &qword_1001FF930);
    v20 = 0;
    sub_100025E00();
    sub_10002635C();
    v7 = v19[0];
    if (!v19[0])
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *(v1 + 144) = v7;
    sub_1000183C4(&qword_1002AD530, &qword_1001FF938);
    v20 = 1;
    sub_100025EB4();
    sub_10002635C();
    v8 = v19[0];
    if (!v19[0])
    {
      v8 = _swiftEmptyArrayStorage;
    }

    *(v1 + 152) = v8;
    sub_1000183C4(&qword_1002AD548, &unk_1001FF940);
    v20 = 2;
    sub_100025F68();
    sub_10002635C();
    v9 = v19[0];
    if (!v19[0])
    {
      v9 = _swiftEmptyArrayStorage;
    }

    *(v1 + 160) = v9;
    LOBYTE(v19[0]) = 3;
    sub_1000263C8();
    *(v1 + 168) = sub_1001F7C98();
    _s17IntroductoryOfferCMa();
    v20 = 4;
    sub_10002601C(&qword_1002AD5B0, _s17IntroductoryOfferCMa, &unk_100211BA0);
    sub_10002635C();
    *(v1 + 136) = v19[0];

    LOBYTE(v19[0]) = 5;
    sub_1000263C8();
    v10 = sub_1001F7C78();
    sub_1001EB808(v10, v11);
    if (v13 == 7)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }

    if (v13 == 7)
    {
      v15 = 5;
    }

    else
    {
      v15 = v13;
    }

    *(v1 + 176) = v14;
    *(v1 + 184) = v15;
    LOBYTE(v19[0]) = 6;
    sub_1000263C8();
    *(v1 + 192) = sub_1001F7C78();
    *(v1 + 200) = v16;
    sub_100026064(a1, v19);
    v5 = sub_1001E7D18(v19);
    v17 = sub_1000263B8();
    v18(v17);
    sub_100019CCC(a1);
  }

  return v5;
}

uint64_t sub_1000253A4(void *a1)
{
  v4 = sub_1000183C4(&qword_1002AD508, &qword_1001FF928);
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  sub_10001AE68(a1, a1[3]);
  sub_100025ADC();
  sub_1001F8198();
  v17 = *(v1 + 144);
  v16 = 0;
  sub_1000183C4(&qword_1002AD518, &qword_1001FF930);
  v10 = sub_100025B30();
  sub_10002638C(v10);
  if (!v2)
  {
    v17 = *(v1 + 152);
    v16 = 1;
    sub_1000183C4(&qword_1002AD530, &qword_1001FF938);
    v11 = sub_100025BE4();
    sub_10002638C(v11);
    v17 = *(v1 + 160);
    v16 = 2;
    sub_1000183C4(&qword_1002AD548, &unk_1001FF940);
    v12 = sub_100025C98();
    sub_10002638C(v12);
    LOBYTE(v17) = 3;
    sub_1001F7DA8();
    v17 = *(v1 + 136);
    v16 = 4;
    sub_1000183C4(&qword_1002AD560, &unk_1002087E0);
    v13 = sub_100025D4C();
    sub_10002638C(v13);
    sub_1001EBEE0(*(v1 + 176), *(v1 + 184));
    LOBYTE(v17) = 5;
    sub_1001F7D88();

    LOBYTE(v17) = 6;

    sub_1001F7D88();

    sub_1001E8100(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_100025678(uint64_t a1, uint64_t a2)
{
  sub_10013B560();
  result = sub_1000263DC();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if (v2)
    {
      result = sub_1001F7808();
      v4 = result;
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_100026418();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v4 + 96);
    v11 = *(v4 + 104);
    v12 = v10 == a1 && v11 == a2;
    if (v12 || (sub_1000263FC(v10, v11) & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10002574C(uint64_t a1, uint64_t a2)
{
  sub_10013B560();
  result = sub_1000263DC();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if (v2)
    {
      result = sub_1001F7808();
      v4 = result;
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_100026418();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v4 + 16);
    v11 = *(v4 + 24);
    v12 = v10 == a1 && v11 == a2;
    if (v12 || (sub_1000263FC(v10, v11) & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100025820(uint64_t a1, uint64_t a2)
{
  sub_10013B560();
  result = sub_1000263DC();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if (v2)
    {
      result = sub_1001F7808();
      v4 = result;
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_100026418();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v4 + 96);
    v11 = *(v4 + 104);
    v12 = v10 == a1 && v11 == a2;
    if (v12 || (sub_1000263FC(v10, v11) & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000258F4(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = *(a1 + 168);
  if (v2 < v3)
  {
    return 0;
  }

  if (v3 < v2)
  {
    return 2;
  }

  if (*(v1 + 176) == *(a1 + 176))
  {
    v6 = *(a1 + 184);
    v7 = sub_1001ECA84(*(v1 + 184));
    v9 = v8;
    if (v7 == sub_1001ECA84(v6) && v9 == v10)
    {
    }

    else
    {
      v12 = sub_1001F7EA8();

      if ((v12 & 1) == 0)
      {
        return 1;
      }
    }

    v13 = *(v1 + 80) == *(a1 + 80) && *(v1 + 88) == *(a1 + 88);
    if (!v13 && (sub_1001F7EA8() & 1) == 0)
    {
      return 2;
    }
  }

  return 1;
}

uint64_t sub_1000259F0()
{
}

void *sub_100025A38()
{
  v0 = sub_1001E8400();

  return v0;
}

uint64_t sub_100025A88()
{
  sub_100025A38();

  return swift_deallocClassInstance();
}

unint64_t sub_100025ADC()
{
  result = qword_1002AD510;
  if (!qword_1002AD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD510);
  }

  return result;
}

unint64_t sub_100025B30()
{
  result = qword_1002AD520;
  if (!qword_1002AD520)
  {
    sub_100019BC4(&qword_1002AD518, &qword_1001FF930);
    sub_10002601C(&qword_1002AD528, _s10AdHocOfferCMa, &unk_100211B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD520);
  }

  return result;
}

unint64_t sub_100025BE4()
{
  result = qword_1002AD538;
  if (!qword_1002AD538)
  {
    sub_100019BC4(&qword_1002AD530, &qword_1001FF938);
    sub_10002601C(&qword_1002AD540, _s9CodeOfferCMa, &unk_100211B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD538);
  }

  return result;
}

unint64_t sub_100025C98()
{
  result = qword_1002AD550;
  if (!qword_1002AD550)
  {
    sub_100019BC4(&qword_1002AD548, &unk_1001FF940);
    sub_10002601C(&qword_1002AD558, _s12WinbackOfferCMa, &unk_100211B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD550);
  }

  return result;
}

unint64_t sub_100025D4C()
{
  result = qword_1002AD568;
  if (!qword_1002AD568)
  {
    sub_100019BC4(&qword_1002AD560, &unk_1002087E0);
    sub_10002601C(&qword_1002AD570, _s17IntroductoryOfferCMa, &unk_100211B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD568);
  }

  return result;
}

unint64_t sub_100025E00()
{
  result = qword_1002AD580;
  if (!qword_1002AD580)
  {
    sub_100019BC4(&qword_1002AD518, &qword_1001FF930);
    sub_10002601C(&qword_1002AD588, _s10AdHocOfferCMa, &unk_100211BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD580);
  }

  return result;
}

unint64_t sub_100025EB4()
{
  result = qword_1002AD590;
  if (!qword_1002AD590)
  {
    sub_100019BC4(&qword_1002AD530, &qword_1001FF938);
    sub_10002601C(&qword_1002AD598, _s9CodeOfferCMa, &unk_100211BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD590);
  }

  return result;
}

unint64_t sub_100025F68()
{
  result = qword_1002AD5A0;
  if (!qword_1002AD5A0)
  {
    sub_100019BC4(&qword_1002AD548, &unk_1001FF940);
    sub_10002601C(&qword_1002AD5A8, _s12WinbackOfferCMa, &unk_100211BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD5A0);
  }

  return result;
}

uint64_t sub_10002601C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100026064(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for OctaneSubscriptionPeriod.Unit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OctaneSubscription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002621CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100026258()
{
  result = qword_1002AD5B8;
  if (!qword_1002AD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD5B8);
  }

  return result;
}

unint64_t sub_1000262B0()
{
  result = qword_1002AD5C0;
  if (!qword_1002AD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD5C0);
  }

  return result;
}

unint64_t sub_100026308()
{
  result = qword_1002AD5C8;
  if (!qword_1002AD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD5C8);
  }

  return result;
}

uint64_t sub_10002635C()
{

  return sub_1001F7C48();
}

uint64_t sub_10002638C(uint64_t a1)
{

  return sub_1001F7DC8();
}

uint64_t sub_1000263DC()
{
}

uint64_t sub_1000263FC(uint64_t a1, uint64_t a2)
{

  return sub_1001F7EA8();
}

uint64_t sub_100026418()
{
}

uint64_t sub_100026434()
{

  return _s8DiscountCMa();
}

void *sub_100026454()
{
  v1 = *(v0 + 128);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000ADA68(0x722D646E75666572, 0xEE00747365757165, 1819112552, 0xE400000000000000);
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;
    *(v0 + 136) = v4;

    sub_10001F734(v3);
  }

  sub_10001F78C(v1);
  return v2;
}

void sub_100026500(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1001F6508();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001EA8E8();
  v10 = sub_1001F10F8(0x746361736E617274, 0xED000064496E6F69, v9);
  v12 = v11;

  if (!v12)
  {
    goto LABEL_75;
  }

  v13 = HIBYTE(v12) & 0xF;
  v14 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    goto LABEL_75;
  }

  if ((v12 & 0x1000000000000000) == 0)
  {
    if ((v12 & 0x2000000000000000) != 0)
    {
      *&__dst[0] = v10;
      *(&__dst[0] + 1) = v12 & 0xFFFFFFFFFFFFFFLL;
      if (v10 == 43)
      {
        if (v13)
        {
          if (v13 != 1)
          {
            sub_100027288();
            while (1)
            {
              sub_100027240();
              if (!v19 && v18)
              {
                break;
              }

              sub_100027270();
              if (!v19)
              {
                break;
              }

              sub_100027250();
              if (v18)
              {
                break;
              }

              sub_10002727C();
              if (v19)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_124:
        __break(1u);
LABEL_125:
        swift_once();
LABEL_115:
        v88 = qword_1002AE9E8;
        isa = sub_1001F6478().super.isa;
        v90 = [v88 stringFromDate:isa];

        v91 = sub_1001F6B58();
        v93 = v92;

        (*(v113 + 8))(v8, v5);
        *(&v143 + 1) = &type metadata for RefundRequestUIRoute.ViewProperties;
        v94 = swift_allocObject();
        *&v142 = v94;
        v95 = v109;
        v94[2] = v110;
        v94[3] = v95;
        v96 = v114;
        v94[4] = v115;
        v94[5] = v96;
        v97 = v107;
        v98 = v108;
        v94[6] = v117;
        v94[7] = v98;
        v94[8] = v97;
        v94[9] = v2;
        v94[10] = v91;
        v94[11] = v93;
        v99 = sub_1000ADFF4(&v142, v9, v118);
        v101 = v100;

        sub_100019CCC(&v142);
        sub_1000B738C(v99, v101, 1, &v142);
        v117 = v143;
        v118 = v142;
        v26 = (v144 | ((v145 | (v146 << 16)) << 32));

        goto LABEL_95;
      }

      if (v10 != 45)
      {
        if (v13)
        {
          v9 = 0;
          while (1)
          {
            sub_100027240();
            if (!v19 && v18)
            {
              break;
            }

            sub_100027270();
            if (!v19)
            {
              break;
            }

            sub_100027250();
            if (v18)
            {
              break;
            }

            sub_10002727C();
            if (v19)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if (v13)
      {
        if (v13 != 1)
        {
          sub_100027288();
          while (1)
          {
            sub_100027240();
            if (!v19 && v18)
            {
              break;
            }

            sub_100027270();
            if (!v19)
            {
              break;
            }

            v18 = 10 * v9 >= v22;
            v9 = 10 * v9 - v22;
            if (!v18)
            {
              break;
            }

            sub_10002727C();
            if (v19)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v16 = sub_1001F7858();
      }

      v17 = *v16;
      if (v17 == 43)
      {
        if (v14 >= 1)
        {
          if (v14 != 1)
          {
            v9 = 0;
            if (v16)
            {
              while (1)
              {
                sub_100027240();
                if (!v19 && v18)
                {
                  goto LABEL_72;
                }

                sub_100027270();
                if (!v19)
                {
                  goto LABEL_72;
                }

                sub_100027250();
                if (v18)
                {
                  goto LABEL_72;
                }

                sub_10002727C();
                if (v19)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_72;
        }

        goto LABEL_123;
      }

      if (v17 != 45)
      {
        if (v14)
        {
          v9 = 0;
          if (v16)
          {
            while (1)
            {
              v23 = *v16 - 48;
              if (v23 > 9)
              {
                goto LABEL_72;
              }

              if (!is_mul_ok(v9, 0xAuLL))
              {
                goto LABEL_72;
              }

              v18 = __CFADD__(10 * v9, v23);
              v9 = 10 * v9 + v23;
              if (v18)
              {
                goto LABEL_72;
              }

              ++v16;
              if (!--v14)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_72:
        v9 = 0;
        v21 = 1;
        goto LABEL_73;
      }

      if (v14 >= 1)
      {
        if (v14 != 1)
        {
          v9 = 0;
          if (v16)
          {
            while (1)
            {
              sub_100027240();
              if (!v19 && v18)
              {
                goto LABEL_72;
              }

              sub_100027270();
              if (!v19)
              {
                goto LABEL_72;
              }

              v18 = 10 * v9 >= v20;
              v9 = 10 * v9 - v20;
              if (!v18)
              {
                goto LABEL_72;
              }

              sub_10002727C();
              if (v19)
              {
                goto LABEL_73;
              }
            }
          }

LABEL_62:
          v21 = 0;
LABEL_73:
          v132 = v21;
          v24 = v21;
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      __break(1u);
    }

    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v9 = sub_1001EE478(v10, v12, 10);
  v24 = v102;
LABEL_74:

  if (v24)
  {
LABEL_75:
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v25 = sub_1001F6688();
    sub_100019C94(v25, qword_1002E6180);
    v26 = sub_1001F6668();
    v27 = sub_1001F7298();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No transaction id parameter passed for refund request UI", v28, 2u);
    }

    v29 = type metadata accessor for HTTPResponseHead._Storage();
    v30 = sub_100021728(v29);
    *&v32 = sub_100027260(v30);
    v33 = 21;
    goto LABEL_80;
  }

  sub_10001AE68((v3 + 88), *(v3 + 112));
  v35 = sub_10008E790(v9);
  if (!v35)
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v46 = sub_1001F6688();
    sub_100019C94(v46, qword_1002E6180);
    v26 = sub_1001F6668();
    v47 = sub_1001F7298();
    if (os_log_type_enabled(v26, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v26, v47, "No transaction found for id %lu to refund", v48, 0xCu);
    }

    v49 = type metadata accessor for HTTPResponseHead._Storage();
    v50 = sub_100021728(v49);
    *&v32 = sub_100027260(v50);
    v33 = 25;
    goto LABEL_80;
  }

  v10 = v35;
  v26 = v3;
  v36 = sub_100026454();
  if (v36)
  {
    v38 = v36;
    *&v118 = v37;
    if ((sub_1000BFBB0() & 1) != 0 || (sub_1000C5464(3), (v39 & 1) == 0) || sub_1000BFBD0() != 2)
    {
      *(&__dst[1] + 1) = &type metadata for RefundRequestUIRoute.DuplicateProperties;
      LOBYTE(__dst[0]) = 1;
      v51 = sub_1000ADFF4(__dst, v38, v118);
      v53 = v52;

      sub_100019CCC(__dst);
      sub_1000B738C(v51, v53, 1, __dst);
      v117 = __dst[1];
      v118 = __dst[0];
      v26 = (LODWORD(__dst[2]) | ((WORD2(__dst[2]) | (BYTE6(__dst[2]) << 16)) << 32));

LABEL_95:
      v54 = type metadata accessor for HTTPResponseHead._Storage();
      v31 = sub_100021728(v54);
      v34 = v117;
      v32 = v118;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = 3;
      *(v31 + 40) = 65537;
      goto LABEL_81;
    }

    v113 = v6;
    v116 = sub_1000272BC();
    *&v117 = sub_1000BFC14();
    v41 = v40;
    v42 = sub_1000BFC24();
    sub_1000795A8(v42, v43);

    v116 = sub_1000EDE14(v117, v41);

    sub_1000272BC();
    *&v117 = v10 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID;

    sub_10007992C();
    v44 = v116;

    if (v44)
    {
      v45 = *(v44 + 56);
    }

    else
    {
      v45 = _swiftEmptyArrayStorage;
    }

    v57 = sub_1000E087C(v45);

    v112 = v57;
    if (v57)
    {
      v58 = *(v57 + 40);
      v115 = *(v57 + 32);
    }

    else
    {
      if (v44)
      {
        v59 = sub_1001E8450();
        v114 = v60;
        v115 = v59;
LABEL_103:
        sub_1000BFCB0(&v123);
        v61 = *(&v123 + 1);
        if (*(&v123 + 1))
        {
          v63 = v130;
          v62 = v131;
          v65 = v128;
          v64 = v129;
          v67 = v126;
          v66 = v127;
          v68 = &v123;
          v70 = v124;
          v69 = v125;
        }

        else
        {
          sub_1000272BC();

          sub_10007A340();
          v44 = v116;

          v68 = &v132;
          v63 = v140;
          v62 = v141;
          v65 = v138;
          v64 = v139;
          v67 = v136;
          v66 = v137;
          v70 = v134;
          v69 = v135;
          v61 = v133;
        }

        v119[0] = *v68;
        v119[1] = v61;
        v119[2] = v70;
        v119[3] = v69;
        v119[4] = v67;
        v119[5] = v66;
        v119[6] = v65;
        v119[7] = v64;
        v119[8] = v63;
        v119[9] = v62;
        memcpy(__dst, v119, 0x50uLL);
        sub_1000BFD40();
        v111 = v38;
        if ((v73 & 0x100000000) != 0)
        {
          if (!v44)
          {
            v105 = 0;
            v106 = 0;
            v104 = 0;
            LODWORD(v107) = 1;
LABEL_111:
            type metadata accessor for AppIconRoute();
            v77 = v117;
            v78 = *v117;
            v79 = *(v117 + 8);

            v80 = sub_10005DC24(v78, v79);
            v109 = v81;
            v110 = v80;

            v82 = sub_1000272BC();
            v84 = *v77;
            v83 = v77[1];
            v85 = *v82;

            *&v117 = sub_10007935C(v84, v83);
            v108 = v86;

            if (v107)
            {
              sub_10001C7E4(v119);
              sub_10002729C();
              *(v85 + 48) = v121;
              sub_10001C838(v148);
              v107 = 0;
              v147 = v122;
              v2 = 0xE000000000000000;
            }

            else
            {
              v107 = sub_10004B450(v106, v105, v104, __dst, &v120);
              v2 = v87;
              sub_10001C7E4(v119);
              sub_10002729C();
              *(v85 + 48) = v121;
              sub_10001C838(v148);
              v147 = v122;
            }

            v9 = v111;
            sub_10001C88C(&v147);
            sub_1000BFDA8();
            sub_1001F6418();
            if (qword_1002AC410 == -1)
            {
              goto LABEL_115;
            }

            goto LABEL_125;
          }

          v74 = sub_1001E84A8();
          v105 = v75;
          v106 = v74;
          v104 = v76;
        }

        else
        {
          v104 = v73;
          v105 = v72;
          v106 = v71;
        }

        LODWORD(v107) = 0;
        goto LABEL_111;
      }

      v58 = *(v10 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID + 8);
      v115 = *(v10 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID);
    }

    v114 = v58;

    goto LABEL_103;
  }

  v55 = type metadata accessor for HTTPResponseHead._Storage();
  v56 = sub_100021728(v55);
  *&v32 = sub_100027260(v56);
  v33 = 49;
LABEL_80:
  *(v31 + 32) = v33;
  *(v31 + 40) = 65537;
  v34 = 0uLL;
LABEL_81:
  *a1 = v31;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  *(a1 + 24) = v32;
  *(a1 + 40) = v34;
  *(a1 + 56) = v26;
  *(a1 + 62) = BYTE6(v26);
  *(a1 + 60) = WORD2(v26);
}

uint64_t sub_100026FA8()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t getEnumTagSinglePayload for RefundRequestUIRoute.DuplicateProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RefundRequestUIRoute.DuplicateProperties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100027164);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10002719C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000271DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100027260(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10002729C()
{
  *(v1 - 192) = *(v0 + 232);

  return sub_10001C838(v1 - 192);
}

void *sub_1000272BC()
{
  v2 = *(v0 + 72);

  return sub_10001AE68((v0 + 48), v2);
}

uint64_t sub_1000272D4(int a1)
{
  do
  {
    v2 = dup(a1);
    if (v2 != -1)
    {
      return v2;
    }

    result = sub_1001F66A8();
  }

  while (result == 4);
  v4 = result;
  if (result != 9 && result != 14)
  {
    v6 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v6);
    *v7 = 0xD000000000000010;
    *(v7 + 8) = 0x8000000100223BC0;
    *(v7 + 16) = v4;
    swift_willThrow();
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100027384(int a1)
{
  result = close(a1);
  if (result == -1)
  {
    result = sub_1001F66A8();
    if (result != 4)
    {
      v2 = result;
      if (result == 9 || result == 14)
      {
        __break(1u);
      }

      else
      {
        v4 = sub_1000274C4();
        sub_1000276A0(&type metadata for IOError, v4);
        *v5 = 0x65736F6C63;
        *(v5 + 8) = 0xE500000000000000;
        *(v5 + 16) = v2;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_10002740C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v3 = sub_1001F6698();
    if (v3 != -1)
    {
      return v3;
    }

    result = sub_1001F66A8();
  }

  while (result == 4);
  if (result != 9 && result != 14)
  {
    v6 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v6);
    sub_1000276B8(v7, 22);
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000274C4()
{
  result = qword_1002AD6C8;
  if (!qword_1002AD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD6C8);
  }

  return result;
}

uint64_t sub_100027518(int a1, off_t a2, int a3)
{
  do
  {
    v6 = lseek(a1, a2, a3);
    if (v6 != -1)
    {
      return v6;
    }

    result = sub_1001F66A8();
  }

  while (result == 4);
  if (result != 9 && result != 14)
  {
    v9 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v9);
    sub_1000276B8(v10, 32);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000275F8(ifaddrs **a1)
{
  while (1)
  {
    result = getifaddrs(a1);
    if (result != -1)
    {
      break;
    }

    result = sub_1001F66A8();
    if (result != 4)
    {
      v3 = result;
      if (result == 9 || result == 14)
      {
        __break(1u);
      }

      else
      {
        v5 = sub_1000274C4();
        sub_1000276A0(&type metadata for IOError, v5);
        strcpy(v6, "getifaddrs(_:)");
        v6[15] = -18;
        *(v6 + 4) = v3;
        return swift_willThrow();
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1000276A0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_1000276B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for OctaneConfigurationVersion(uint64_t a1, int a2)
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

uint64_t sub_100027708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000277D0(char a1)
{
  if (a1)
  {
    return 0x726F6E696DLL;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

uint64_t sub_1000277F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000183C4(&qword_1002AD6E0, &qword_1001FFC48);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_100027BE4();
  sub_1001F8198();
  v14 = 0;
  sub_1001F7DA8();
  if (!v3)
  {
    v13 = 1;
    sub_1001F7DA8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100027958(void *a1)
{
  v3 = sub_1000183C4(&qword_1002AD6D0, &qword_1001FFC40);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_10001AE68(a1, v9);
  sub_100027BE4();
  sub_1001F8178();
  if (!v1)
  {
    v11[15] = 0;
    v9 = sub_1001F7C98();
    v11[14] = 1;
    sub_1001F7C98();
    (*(v5 + 8))(v8, v3);
  }

  sub_100019CCC(a1);
  return v9;
}

uint64_t sub_100027AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100027708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100027B24(uint64_t a1)
{
  v2 = sub_100027BE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100027B60(uint64_t a1)
{
  v2 = sub_100027BE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100027B9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100027958(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_100027BE4()
{
  result = qword_1002AD6D8;
  if (!qword_1002AD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD6D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneConfigurationVersion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100027D04);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100027D40()
{
  result = qword_1002AD6E8;
  if (!qword_1002AD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD6E8);
  }

  return result;
}

unint64_t sub_100027D98()
{
  result = qword_1002AD6F0;
  if (!qword_1002AD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD6F0);
  }

  return result;
}

unint64_t sub_100027DF0()
{
  result = qword_1002AD6F8;
  if (!qword_1002AD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD6F8);
  }

  return result;
}

uint64_t OS_dispatch_queue.asyncWithFuture<A>(eventLoop:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F6738();
  sub_10001A278();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1001F6768();
  sub_10001A278();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v21 = EventLoop.makePromise<A>(of:file:line:)(a5, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/DispatchQueue+WithFuture.swift", 126, 2, 35, ObjectType, a5, a2);
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = v21;
  aBlock[4] = sub_100028234;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10027FC70;
  v23 = _Block_copy(aBlock);

  v24 = sub_1001F6758();
  v30 = _swiftEmptyArrayStorage;
  sub_100028258(v24, v25, v26);
  sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v23);
  (*(v11 + 8))(v14, v9);
  (*(v16 + 8))(v19, v29);

  return v21;
}

uint64_t sub_1000280F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  EventLoopPromise.succeed(_:)(v9, a3, a4);
  return (*(v6 + 8))(v9, a4);
}

uint64_t sub_1000281F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100028240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100028258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002BA610;
  if (!qword_1002BA610)
  {
    sub_1001F6738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA610);
  }

  return result;
}

unint64_t sub_1000282B0()
{
  result = qword_1002BA620;
  if (!qword_1002BA620)
  {
    sub_100019BC4(&qword_1002AC880, &qword_1001FE6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA620);
  }

  return result;
}

uint64_t sub_100028318(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

Swift::Int CloseMode.hashValue.getter(unsigned __int8 a1)
{
  sub_1001F8068();
  sub_1001F8088(a1);
  return sub_1001F80D8();
}

Swift::Int sub_1000284BC()
{
  v1 = *v0;
  sub_1001F8068();
  CloseMode.hash(into:)(v3, v1);
  return sub_1001F80D8();
}

uint64_t sub_100028500(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = sub_10002E2C0();
    return sub_1000A13B0(v2);
  }

  return result;
}

uint64_t sub_100028524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = sub_10002E2C0();
    sub_1000A13B0(v4);
  }

  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  if (sub_10009D370())
  {
    sub_10009DF84();
  }

  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009D370();
  if (result)
  {
    sub_10009DEA8();
  }

  return result;
}

uint64_t sub_10002860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = sub_10002E2C0();
    sub_1000A13B0(v4);
  }

  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009D370();
  if (result)
  {
    sub_10009DEA8();
  }

  return result;
}

uint64_t sub_1000286A4()
{
  sub_10002E27C();
  v2 = v1;
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E300();
  v4 = v3();
  swift_unknownObjectRelease();
  sub_10002E0B8();
  if (v4)
  {
    v7 = (v0 + *(v6 + 208));
    v8 = *v7;
    v9 = v7[1];
    sub_10002D824(*v7);
    sub_10002D824(v9);
  }

  else
  {
    type metadata accessor for BaseSocketChannel.AddressCache(0, *(v2 + 80), *(v2 + 88), v5);
    Lock.withLock<A>(_:)();
    return v11;
  }

  return v8;
}

uint64_t sub_1000287EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = (a1 + *(*a1 + 208));
  v3 = *v2;
  v4 = v2[1];
  *a2 = *v2;
  a2[1] = v4;
  sub_10002D824(v3);
  return sub_10002D824(v4);
}

uint64_t sub_10002883C()
{
  sub_10002E2A4();
  swift_getObjectType();
  sub_10002E0AC();
  EventLoop.preconditionInEventLoop(file:line:)(v3, v4, v5, 259, v6);
  swift_unknownObjectRelease();
  Lock.lock()();
  sub_100028900(v1, v2, v0);
  Lock.unlock()();
  sub_10002D83C(v2);

  return sub_10002D83C(v0);
}

uint64_t sub_100028900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + *(*a1 + 208));
  v5 = *v4;
  v6 = v4[1];
  *v4 = a2;
  v4[1] = a3;
  sub_10002D824(a2);
  sub_10002D824(a3);
  sub_10002D83C(v5);
  return sub_10002D83C(v6);
}

void sub_100028970()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E300();
  v1 = v0();
  swift_unknownObjectRelease();
  if ((v1 & 1) == 0)
  {
    sub_100072D9C(sub_10002DD54);
  }
}

__n128 sub_100028A34@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1 + *(*a1 + 216);
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

void sub_100028A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  EventLoop.preconditionInEventLoop(file:line:)(v9, v10, v11, 278, v12);
  swift_unknownObjectRelease();
  sub_10002E0B8();
  Lock.lock()();
  sub_10002E0B8();
  v14 = (v4 + *(v13 + 216));
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  Lock.unlock()();
}

uint64_t sub_100028B70()
{
  sub_1000287AC();
  swift_getObjectType();
  debugOnly(_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_100028BD0(uint64_t a1)
{
  sub_10002E27C();
  v3 = (v1 + *(v2 + 232));
  swift_beginAccess();
  v4 = *v3;
  swift_unknownObjectRetain();

  return v4;
}

void sub_100028C58()
{
  sub_1000287AC();
  swift_getObjectType();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  v1 = (v0 + *(*v0 + 240));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_100028A58(v2, v3, v4, v5);
}

void sub_100028D10(uint64_t a1)
{
  sub_10002E27C();
  v3 = (v1 + *(v2 + 240));
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  sub_100028C58();
}

uint64_t sub_100028D70()
{
  v0 = sub_1000286A4();
  sub_10002D83C(v1);
  return v0;
}

uint64_t sub_100028DA0()
{
  v0 = sub_1000286A4();
  v2 = v1;
  sub_10002D83C(v0);
  return v2;
}

BOOL sub_100028DCC()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E09C();
  debugOnly(_:)();
  v0 = swift_unknownObjectRelease();
  sub_100028BD0(v0);
  v2 = v1;
  swift_getObjectType();
  sub_10002E09C();
  debugOnly(_:)();

  swift_unknownObjectRelease();
  return (v2 & 0xFF00) != 1024;
}

uint64_t sub_100028ED8()
{
  sub_10002E27C();
  result = *(v0 + *(v1 + 200));
  if (result)
  {
  }

  __break(1u);
  return result;
}

char *sub_100029124()
{
  v1 = *v0;
  swift_unknownObjectRelease();
  sub_10002E27C();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 104)]);
  sub_10002E27C();

  sub_10002E27C();

  sub_10002E27C();

  sub_10002E27C();

  sub_10002E27C();

  sub_10002E27C();

  sub_10002E27C();
  sub_100019CCC(&v0[*(v3 + 168)]);
  sub_10002E27C();

  sub_10002E27C();
  v5 = &v0[*(v4 + 208)];
  v6 = v5[1];
  sub_10002D83C(*v5);
  sub_10002D83C(v6);
  sub_10002E27C();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000292B0()
{
  sub_100029124();

  return swift_deallocClassInstance();
}

uint64_t sub_100029320(uint64_t a1)
{
  sub_10002E27C();
  v2 = v1;
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E2E0();
  if ((*(v3 + 584))())
  {
    sub_10002E258();
    return (*(*(v2 + 88) + 56))(*(v2 + 80));
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_10002E00C(v5, v6);
    return swift_willThrow();
  }
}

uint64_t sub_100029448(uint64_t a1)
{
  sub_10002E27C();
  v2 = v1;
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E2E0();
  if ((*(v3 + 584))())
  {
    sub_10002E258();
    return (*(*(v2 + 88) + 64))(*(v2 + 80));
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_10002E00C(v5, v6);
    return swift_willThrow();
  }
}

void sub_100029570()
{
  sub_10002E384();
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E0B8();
  v2 = *(v1 + 184);
  v3 = 1;
  if ((*(v0 + v2) & 1) == 0)
  {
    *(v0 + v2) = 1;
    while ((v3 & 1) != 0)
    {
      sub_10002E0B8();
      if (((*(v4 + 648))() & 1) == 0)
      {
        break;
      }

      sub_10002E0B8();
      if (((*(v5 + 584))() & 1) == 0)
      {
        break;
      }

      sub_10002E0B8();
      v7 = (*(v6 + 616))();
      v3 = v7 ^ 1;
      if ((v7 & 0x100) != 0)
      {
        sub_100028ED8();
        swift_getObjectType();
        sub_10002E170();
        debugOnly(_:)();
        if (sub_10009D370())
        {
          sub_10009E30C();
        }
      }
    }

    sub_10002E0B8();
    *(v0 + *(v8 + 184)) = 0;
  }

  sub_10002E230();
}

void (*sub_100029840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = v4;
  v46 = a1;
  v47 = a2;
  v45 = *v5;
  v48 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = a3;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v18 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E300();
  v20 = v19();
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_1000287AC();
    swift_getObjectType();
    sub_10002E264();
    EventLoop.makePromise<A>(of:file:line:)(v21, v22, v23, v24, 545, v25, v26, v27);
    sub_10002E39C();
    sub_10002E270();
    v29 = *(v28 + 696);

    v29(v46, v47, a3, v48);
    v38 = sub_10002E2C0();
    sub_1000A13B0(v38);
  }

  else
  {
    v43 = sub_1000287AC();
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v46, a3);
    v30 = *(v8 + 16);
    v31 = v13;
    v41 = v13;
    v32 = AssociatedTypeWitness;
    v30(v31, v47, AssociatedTypeWitness);
    v33 = (*(v15 + 80) + 56) & ~*(v15 + 80);
    v34 = (v16 + v33 + *(v8 + 80)) & ~*(v8 + 80);
    v35 = swift_allocObject();
    v36 = v45;
    *(v35 + 2) = *(v45 + 80);
    *(v35 + 3) = v14;
    v37 = v48;
    *(v35 + 4) = *(v36 + 88);
    *(v35 + 5) = v37;
    *(v35 + 6) = v5;
    (*(v15 + 32))(&v35[v33], v18, v14);
    (*(v8 + 32))(&v35[v34], v41, v32);
    v10 = sub_10015EEB0;

    sub_10015EEB0(sub_10002DA20, v35, &type metadata for ()[1], ObjectType, &protocol witness table for SelectableEventLoop);
    sub_10002E39C();
  }

  return v10;
}

uint64_t sub_100029C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10002E0E4();
  v10();
  if (a1)
  {
    EventLoopPromise.succeed(_:)(v4, a1, a4);
  }

  return (*(v8 + 8))(v4, a4);
}

uint64_t sub_100029D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  __chkstk_darwin(v9);
  sub_10002DFFC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10002E0E4();
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  v13 = swift_unknownObjectRelease();
  if (((*(*v4 + 584))(v13) & 1) == 0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v21 = swift_allocError();
    sub_10002E00C(v21, v22);
    return swift_willThrow();
  }

  v14 = sub_10002E2EC();
  v15(v14);
  v18 = sub_10002E11C(&v72, v16, v17, &type metadata for ChannelOptions.Types.SocketOption);
  if (v18)
  {
    sub_1001EA084(v72, DWORD1(v72), a2, AssociatedTypeWitness);
    return (*(v11 + 8))(v5, a3);
  }

  v24 = sub_10002E11C(v18, v19, v20, &type metadata for ChannelOptions.Types.AllocatorOption);
  if (v24)
  {
    v27 = sub_10002E0C4();
    v29 = v28(v27);
    sub_10002E150(v29, v30, v31, &type metadata for ByteBufferAllocator);
    sub_100028D10(v72);
    return (*(v11 + 8))(v5, a3);
  }

  v32 = sub_10002E11C(v24, v25, v26, &type metadata for ChannelOptions.Types.RecvAllocatorOption);
  if (v32)
  {
    v35 = sub_10002E0C4();
    v36(v35);
    v37 = sub_1000183C4(qword_1002AD880, &qword_1002000A8);
    sub_10002E150(v37, v38, v39, v37);
    sub_10002DD3C(&v72, v71);
    sub_10002E30C();
    v41 = *(v40 + 168);
    swift_beginAccess();
    sub_100019CCC((v6 + v41));
    sub_10002DD3C(v71, v6 + v41);
    swift_endAccess();
    return (*(v11 + 8))(v5, a3);
  }

  v42 = sub_10002E11C(v32, v33, v34, &type metadata for ChannelOptions.Types.AutoReadOption);
  if (v42)
  {
    v45 = v11;
    v46 = sub_10002E0C4();
    v48 = v47(v46);
    sub_10002E150(v48, v49, v50, &type metadata for Bool);
    v51 = v72;
    sub_10002E30C();
    v53 = *(v52 + 192);
    v54 = *(v4 + v53);
    *(v4 + v53) = v51;
    sub_100028BD0(v55);
    v70 = v56;
    swift_getObjectType();
    sub_10002E0AC();
    debugOnly(_:)();

    swift_unknownObjectRelease();
    if (v70 & 0xFB00) != 0 && ((v51 ^ v54))
    {
      if (v51)
      {
        sub_10002E30C();
        (*(v57 + 752))();
      }

      else
      {
        sub_10002A184();
      }
    }

    v11 = v45;
    return (*(v11 + 8))(v5, a3);
  }

  if (sub_10002E11C(v42, v43, v44, &type metadata for ChannelOptions.Types.MaxMessagesPerReadOption))
  {
    v58 = sub_10002E0C4();
    v60 = v59(v58);
    sub_10002E150(v60, v61, v62, &type metadata for UInt);
    sub_10002E30C();
    *(v4 + *(v63 + 176)) = v64;
    return (*(v11 + 8))(v5, a3);
  }

  sub_10002E32C();
  sub_10002E204();
  sub_1001F7E68();
  sub_10002E1B4();
  result = sub_10002E0FC("Fatal error", v65, v66, v72, *(&v72 + 1), "ASOctaneSupportXPCService/BaseSocketChannel.swift", v67, v68, 584, 0);
  __break(1u);
  return result;
}

void sub_10002A184()
{
  sub_1000287AC();
  swift_getObjectType();
  debugOnly(_:)();
  v0 = swift_unknownObjectRelease();
  sub_100028BD0(v0);
  v2 = v1;
  swift_getObjectType();
  debugOnly(_:)();

  swift_unknownObjectRelease();
  if ((v2 & 0xFB00) != 0)
  {

    sub_10002B6BC();
  }
}

uint64_t sub_10002A268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *v3;
  v30 = a1;
  sub_10002DFFC();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  v28 = v13;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E300();
  v18 = v17();
  swift_unknownObjectRelease();
  sub_1000287AC();
  if (v18)
  {
    sub_10002E258();
    (*(v19 + 712))(v30, a2, a3);
    swift_getObjectType();
    sub_10002E264();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v26 = v25;
    swift_unknownObjectRelease();
    (*(v28 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30, a2);
    v21 = (*(v7 + 80) + 56) & ~*(v7 + 80);
    v22 = swift_allocObject();
    v23 = v29;
    *(v22 + 2) = *(v29 + 80);
    *(v22 + 3) = a2;
    *(v22 + 4) = *(v23 + 88);
    *(v22 + 5) = a3;
    *(v22 + 6) = v3;
    (*(v7 + 32))(&v22[v21], v11, a2);

    sub_10015EEB0(sub_10002DCB4, v22, AssociatedTypeWitness, ObjectType, &protocol witness table for SelectableEventLoop);
    v26 = v24;

    swift_unknownObjectRelease();
  }

  return v26;
}

uint64_t sub_10002A5F0(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10002E0E4();
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  v10 = swift_unknownObjectRelease();
  if (((*(*v3 + 584))(v10) & 1) == 0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v21 = swift_allocError();
    sub_10002E00C(v21, v22);
    return swift_willThrow();
  }

  v11 = sub_10002E2EC();
  v12(v11);
  v15 = sub_10002E11C(&v47, v13, v14, &type metadata for ChannelOptions.Types.SocketOption);
  if (v15)
  {
    v18 = v47;
    v19 = HIDWORD(v47);
    v20 = sub_10002E198(v15, v16, v17, &protocol requirements base descriptor for ChannelOption, &associated type descriptor for ChannelOption.Value);
    sub_1001EA0F8(v18, v19, v20);
    return (*(v8 + 8))(v4, a2);
  }

  v24 = sub_10002E11C(v15, v16, v17, &type metadata for ChannelOptions.Types.AllocatorOption);
  if (v24)
  {
    v47 = sub_100028CE0();
    v48 = v27;
    v49 = v28;
    v50 = v29;
    sub_10002E198(v47, v27, v28, &protocol requirements base descriptor for ChannelOption, &associated type descriptor for ChannelOption.Value);
LABEL_9:
    swift_dynamicCast();
    return (*(v8 + 8))(v4, a2);
  }

  v30 = sub_10002E11C(v24, v25, v26, &type metadata for ChannelOptions.Types.RecvAllocatorOption);
  if (v30)
  {
    v33 = *(*v3 + 168);
    swift_beginAccess();
    sub_100026064(v5 + v33, &v47);
    v34 = sub_1000183C4(qword_1002AD880, &qword_1002000A8);
    sub_10002E198(v34, v35, v36, &protocol requirements base descriptor for ChannelOption, &associated type descriptor for ChannelOption.Value);
    goto LABEL_9;
  }

  v37 = sub_10002E11C(v30, v31, v32, &type metadata for ChannelOptions.Types.AutoReadOption);
  if (v37)
  {
    LOBYTE(v47) = *(v3 + *(*v3 + 192));
    sub_10002E198(v37, v38, v39, &protocol requirements base descriptor for ChannelOption, &associated type descriptor for ChannelOption.Value);
    goto LABEL_9;
  }

  v40 = sub_10002E11C(v37, v38, v39, &type metadata for ChannelOptions.Types.MaxMessagesPerReadOption);
  if (v40)
  {
    v47 = *(v3 + *(*v3 + 176));
    sub_10002E198(v40, v41, v42, &protocol requirements base descriptor for ChannelOption, &associated type descriptor for ChannelOption.Value);
    goto LABEL_9;
  }

  sub_10002E32C();
  sub_10002E204();
  sub_1001F7E68();
  sub_10002E1B4();
  result = sub_10002E0FC("Fatal error", v43, v44, v47, v48, "ASOctaneSupportXPCService/BaseSocketChannel.swift", v45, v46, 619, 0);
  __break(1u);
  return result;
}

uint64_t sub_10002A97C()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E09C();
  debugOnly(_:)();
  v2 = swift_unknownObjectRelease();
  v3 = sub_100028BD0(v2);
  sub_10002E34C(v3);
  sub_10002E09C();
  debugOnly(_:)();

  swift_unknownObjectRelease();
  if ((v1 & 0xFF00) != 0x300)
  {
    return 0;
  }

  v4 = *(*v0 + 152);
  if ((*(v0 + v4) & 1) == 0 && *(v0 + *(*v0 + 192)) == 1)
  {
    sub_100028ED8();
    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)();
    if (sub_10009D344())
    {
      sub_10009D5CC();
    }
  }

  return *(v0 + v4);
}

uint64_t sub_10002AAD8()
{
  sub_10002E2A4();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  v3 = swift_unknownObjectRelease();
  result = (*(*v1 + 584))(v3);
  if (result)
  {
    result = sub_10002AC44(v1, v2);
    if (v0)
    {
      v7 = sub_10002E2C0();

      return sub_1000A13B0(v7);
    }
  }

  else if (v0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_10002E00C(v5, v6);
    swift_errorRetain();
    sub_10002E17C();
  }

  return result;
}

uint64_t sub_10002AC44(uint64_t a1, uint64_t a2)
{
  result = (*(*(*a1 + 88) + 48))(a2, *(*a1 + 80));
  if (!v2)
  {
    return sub_10002ACE8(1);
  }

  return result;
}

uint64_t sub_10002ACE8(uint64_t a1)
{
  sub_10002E384();
  v2 = v1;
  v4 = v3;
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  v5 = sub_1000286A4();
  v6 = v5;
  v8 = v7;
  if (v4)
  {
    v9 = sub_100029320(v5);
    v10 = v9;
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_4:
    v11 = sub_100029448(v9);
    goto LABEL_7;
  }

  v9 = sub_10002D824(v5);
  v10 = v6;
  if (v2)
  {
    goto LABEL_4;
  }

LABEL_6:
  sub_10002D824(v8);
  v11 = v8;
LABEL_7:
  sub_10002D824(v10);
  sub_10002D824(v11);
  sub_10002883C();
  sub_10002D83C(v11);
  sub_10002D83C(v10);
  sub_10002D83C(v6);
  sub_10002E230();

  return sub_10002D83C(v12);
}

uint64_t sub_10002AE24()
{
  sub_10002E2A4();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  v3 = swift_unknownObjectRelease();
  result = (*(*v1 + 584))(v3);
  if (result)
  {
    sub_100028BD0(result);
    sub_10002E248();
    v6 = v5;
    swift_getObjectType();
    sub_10002E0AC();
    debugOnly(_:)();

    result = swift_unknownObjectRelease();
    if ((v6 & 0xFF00) == 0x300)
    {
      v7 = *(*v1 + 656);

      return v7(v2, v0);
    }

    if (!v0)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    v9 = 12;
  }

  else
  {
    if (!v0)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    v9 = 2;
  }

  sub_10002E020(v8, v9);
  swift_errorRetain();
  sub_10002E17C();
}

void sub_10002AFFC()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E0B8();
  v2 = *(v0 + *(v1 + 224));
  if ((v2 & 8) == 0)
  {

    sub_10002B098(v2 | 8);
  }
}

uint64_t sub_10002B098(unsigned __int8 a1)
{
  v3 = *v1;
  sub_1000287AC();
  swift_getObjectType();
  debugOnly(_:)();
  v4 = swift_unknownObjectRelease();
  result = (*(*v1 + 584))(v4);
  if (result)
  {
    v7 = *(*v1 + 224);
    if (*(v1 + v7) != a1)
    {
      *(v1 + v7) = a1;
      v8 = type metadata accessor for BaseSocketChannel(0, *(v3 + 80), *(v3 + 88), v6);
      WitnessTable = swift_getWitnessTable();
      return sub_100043284(v1, v8, WitnessTable);
    }
  }

  return result;
}

void sub_10002B2BC()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E0B8();
  v2 = *(v0 + *(v1 + 224));
  if ((v2 & 8) != 0)
  {

    sub_10002B098(v2 & 0xF7);
  }
}

void sub_10002B348()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E270();
  if ((*(v2 + 584))())
  {
    sub_10002E0B8();
    v4 = (*(v3 + 664))();
    v5 = sub_100028BD0(v4);
    sub_10002E1E4(v5);
    sub_10002E0AC();
    debugOnly(_:)();

    v6 = swift_unknownObjectRelease();
    if ((v1 & 0xFF00) == 0x300 && (*(v0 + *(*v0 + 224)) & 8) == 0 && ((*(*v0 + 688))(v6) & 1) == 0)
    {

      sub_10002AFFC();
    }
  }
}

uint64_t sub_10002B4DC()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E270();
  result = (*(v2 + 584))();
  if (result)
  {
    sub_10002E0B8();
    *(v0 + *(v4 + 152)) = 1;
    v6 = sub_100028BD0(v5);
    sub_10002E1E4(v6);
    sub_10002E0AC();
    debugOnly(_:)();

    result = swift_unknownObjectRelease();
    if ((v1 & 0xFB00) != 0)
    {

      return sub_10002B5FC();
    }
  }

  return result;
}

uint64_t sub_10002B5FC()
{
  sub_1000287AC();
  swift_getObjectType();
  debugOnly(_:)();
  v1 = swift_unknownObjectRelease();
  sub_100028BD0(v1);
  v3 = v2;
  swift_unknownObjectRelease();

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + *(*v0 + 224));
    if ((v5 & 4) == 0)
    {

      return sub_10002B098(v5 | 4u);
    }
  }

  return result;
}

void sub_10002B6BC()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E0B8();
  v2 = *(v0 + *(v1 + 224));
  if ((v2 & 4) != 0)
  {

    sub_10002B098(v2 & 0xFB);
  }
}

uint64_t sub_10002B748()
{
  sub_1000287AC();
  swift_getObjectType();
  debugOnly(_:)();
  v1 = swift_unknownObjectRelease();
  sub_100028BD0(v1);
  v3 = v2;
  swift_unknownObjectRelease();

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + *(*v0 + 224));
    if ((v5 & 2) == 0)
    {

      return sub_10002B098(v5 | 2u);
    }
  }

  return result;
}

uint64_t sub_10002B808(uint64_t a1, char a2, uint64_t a3)
{
  v5 = v3;
  sub_10002E27C();
  v10 = v9;
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E270();
  result = (*(v11 + 584))();
  if ((result & 1) == 0)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    v20 = swift_allocError();
    *v21 = 3;
    *(v21 + 8) = 3;
LABEL_8:
    swift_errorRetain();
    sub_1000A13B0(v20);
  }

  if (a2 != 2)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    v20 = swift_allocError();
    sub_10002E020(v22, 1);
    goto LABEL_8;
  }

  sub_10002E0B8();
  *(v3 + *(v13 + 224)) = 1;
  sub_10002E0B8();
  v14 = *(v10 + 80);
  v15 = *(v10 + 88);
  v17 = type metadata accessor for BaseSocketChannel(0, v14, v15, v16);
  sub_10002E138();
  WitnessTable = swift_getWitnessTable();
  sub_100042C84(v3, 2, v17, WitnessTable);
  v23 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_10002E0B8();
  (*(v15 + 40))(v14, v15);
  sub_10002E0B8();
  v25 = v5 + *(v24 + 232);
  swift_beginAccess();
  ObjectType = swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  switch(*(v25 + 25))
  {
    case 1:
    case 2:
      *(v25 + 25) = 4;
      sub_10002E0AC();
      sub_10002E288();
      v27 = sub_10002860C;
      break;
    case 3:
      *(v25 + 25) = 4;
      sub_10002E0AC();
      sub_10002E288();
      sub_1000069C8((*(v25 + 16) + 16), 0);
      v27 = sub_100028524;
      break;
    case 4:
      __break(1u);
      JUMPOUT(0x10002BE1CLL);
    default:
      *(v25 + 25) = 4;
      sub_10002E0AC();
      sub_10002E288();
      v27 = sub_100028500;
      break;
  }

  v14 = v27;
  swift_endAccess();
  v28 = v5;
  sub_100028B70();
  sub_10002E0B8();
  (*(v29 + 672))(a1);
  v30 = 0;
  v15 = v23[2];
  while (v15 != v30)
  {
    if (v30 >= v23[2])
    {
      __break(1u);
      sub_100032AD0(v30 > 1, ObjectType, 1, v23);
      v23 = v34;

      v23[2] = ObjectType;
      v19 = &v23[2 * v4];
      v19[4] = sub_10002DBA8;
      v19[5] = v28;
      goto LABEL_11;
    }

    v4 = v30 + 1;
    *v35 = *&v23[2 * v30 + 4];
    v28 = v35[1];

    sub_10002BF28(v35);

    v30 = v4;
  }

  sub_10002E0B8();
  v32 = *(v31 + 160);
  if (*(v5 + v32))
  {
    *(v5 + v32) = 0;
    swift_errorRetain();
    sub_1000A13B0(a1);
  }

  v33 = sub_100028ED8();
  v14(a3, v33);

  sub_1000287AC();
  swift_getObjectType();

  j___s25ASOctaneSupportXPCService19SelectableEventLoopC7executeyyyycF(sub_10002DBF8, v5);
  swift_unknownObjectRelease();
}

uint64_t sub_10002BE30(uint64_t *a1, uint64_t a2)
{
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009D370();
  if (result)
  {

    sub_10009E508();
  }

  return result;
}

void sub_10002BED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000A13B0(a3);
  }
}

uint64_t sub_10002BF28(void (**a1)(uint64_t *))
{
  v1 = *a1;
  v3 = sub_100028ED8();
  v1(&v3);
}

uint64_t sub_10002BF88(uint64_t *a1)
{
  v1 = *a1;
  sub_100028ED8();
  type metadata accessor for BaseSocketChannel(0, *(v1 + 80), *(v1 + 88), v2);
  ChannelCore.removeHandlers(pipeline:)();

  sub_1000A13B0(0);
  return sub_10002C030();
}

uint64_t sub_10002C030()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();

  return sub_10002883C();
}

void sub_10002C09C(uint64_t a1)
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  v4 = swift_unknownObjectRelease();
  v5 = (*(*v1 + 584))(v4);
  if ((v5 & 1) == 0)
  {
    if (a1)
    {
      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      v8 = 2;
      goto LABEL_7;
    }

LABEL_22:
    sub_10002E36C();
    return;
  }

  v6 = sub_100028BD0(v5);
  sub_10002E34C(v6);
  sub_10002E0AC();
  debugOnly(_:)();

  swift_unknownObjectRelease();
  if ((v2 & 0xFB00) == 0)
  {
    if (*(*(v1 + *(*v1 + 120)) + 88))
    {
      sub_100028ED8();
      sub_10002D864();
      sub_10002E0D8();
      swift_allocError();
      *v10 = 2;
      swift_getObjectType();
      sub_10002E170();
      debugOnly(_:)();
      if (sub_10009D370())
      {
        sub_10009E508();
      }

      sub_10002E0D8();
      v11 = swift_allocError();
      *v12 = 2;
      (*(*v1 + 760))(v11, 2, 0);

      if (a1)
      {
        sub_10002E0D8();
        swift_allocError();
        *v13 = 2;
        goto LABEL_8;
      }
    }

    else
    {
      v14 = v1 + *(*v1 + 232);
      swift_beginAccess();
      swift_getObjectType();
      sub_10002E0AC();
      sub_10002E3B4();
      if (*(v14 + 25))
      {
        __break(1u);
        return;
      }

      *(v14 + 25) = 1;
      sub_10002E0AC();
      sub_10002E3B4();
      sub_100028B70();
      sub_100028ED8();
      if (a1)
      {
        v15 = sub_10002E2C0();
        sub_1000A13B0(v15);
      }

      swift_getObjectType();
      sub_10002E170();
      debugOnly(_:)();
      if (sub_10009D370())
      {
        sub_10009DDCC();
      }
    }

    goto LABEL_22;
  }

  if (!a1)
  {
    goto LABEL_22;
  }

  sub_10002D678();
  sub_10002E0D8();
  swift_allocError();
  v8 = 12;
LABEL_7:
  sub_10002E020(v7, v8);
LABEL_8:
  swift_errorRetain();
  sub_10002E17C();

  sub_10002E36C();
}

uint64_t sub_10002C454(uint64_t a1)
{
  sub_10002E384();
  v2 = v1;
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E09C();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E264();
  EventLoop.makePromise<A>(of:file:line:)(v3, v4, v5, v6, 884, v7, v8, &protocol witness table for SelectableEventLoop);
  sub_10002E39C();

  sub_10002C09C(v9);

  swift_retain_n();
  swift_retain_n();
  sub_10011DD5C();

  sub_10002C6E0(v2);

  sub_100028BD0(v10);
  v12 = v11;
  swift_getObjectType();
  sub_10002E09C();
  debugOnly(_:)();

  swift_unknownObjectRelease();
  if ((v12 & 0xFB00) != 0)
  {
    sub_10002C75C();
    sub_100028BD0(v13);
    v15 = v14;
    swift_getObjectType();
    sub_10002E0AC();
    debugOnly(_:)();

    swift_unknownObjectRelease();
    if (v15 > 4 || (sub_10002E318(), v16))
    {
      sub_10002C888(v2);
    }
  }

  sub_10002E230();
}

uint64_t sub_10002C6E0(uint64_t result)
{
  if (result)
  {

    swift_retain_n();
    sub_10011DD5C();
  }

  return result;
}

void sub_10002C75C()
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002CF18(1);
  if (!v1)
  {
    sub_10002E0B8();
    v3 = v0 + *(v2 + 232);
    swift_beginAccess();
    swift_getObjectType();
    sub_10002E0AC();
    debugOnly(_:)();
    if (*(v3 + 25) == 1)
    {
      *(v3 + 25) = 2;
      sub_10002E0AC();
      debugOnly(_:)();
      sub_100028B70();
      sub_100028ED8();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10002C888(uint64_t a1)
{
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E09C();
  debugOnly(_:)();
  v3 = swift_unknownObjectRelease();
  sub_100028BD0(v3);
  sub_10002E248();
  v5 = v4;
  swift_getObjectType();
  sub_10002E09C();
  debugOnly(_:)();

  swift_unknownObjectRelease();
  if (v5 <= 4)
  {
    sub_10002E318();
    if (!v6)
    {
      sub_10002C75C();
    }
  }

  sub_10002E0B8();
  v8 = v1 + *(v7 + 232);
  swift_beginAccess();
  v9 = *(v8 + 8);
  swift_getObjectType();
  sub_10002E0AC();
  sub_10002E3B4();
  if (*(v8 + 25) == 2)
  {
    *(v8 + 25) = 3;
    sub_10002E0AC();
    sub_10002E3B4();
    sub_1000069C8((*(v8 + 16) + 16), 1);
    swift_endAccess();
    sub_100028B70();
    sub_100028ED8();
    if (a1)
    {
      v10 = sub_10002E2C0();
      sub_1000A13B0(v10);
    }

    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)();
    if (sub_10009D370())
    {
      sub_10009E060();
    }

    v12 = sub_100028BD0(v11);
    sub_10002E1E4(v12);
    sub_10002E0AC();
    debugOnly(_:)();

    swift_unknownObjectRelease();
    if ((v9 & 0xFF00) != 0x400)
    {
      sub_10002B748();
      sub_10002E0B8();
      (*(v13 + 720))();
    }

    sub_10002E36C();
  }

  else
  {
    __break(1u);
  }
}

void sub_10002CB20(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v2, 1);
    swift_errorRetain();
    sub_10002E17C();
  }
}

void sub_10002CB90(uint64_t a1)
{
  sub_10002E384();
  v3 = v2;
  v5 = v4;
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E2E0();
  if (((*(v6 + 584))() & 1) == 0)
  {
    if (!v3)
    {
      goto LABEL_15;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    v11 = 2;
LABEL_7:
    *v10 = v11;
    goto LABEL_8;
  }

  sub_10002E258();
  v9 = *(v8 + 160);
  if (*(v1 + v9))
  {
    if (v3)
    {
      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      *v10 = 0;
LABEL_8:
      *(v10 + 8) = 3;
      swift_errorRetain();
      sub_10002E17C();

      sub_10002E230();

      return;
    }

LABEL_15:
    sub_10002E230();
    return;
  }

  sub_100028BD0(v7);
  sub_10002E248();
  v14 = v13;
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();

  swift_unknownObjectRelease();
  if ((v14 & 0xFB00) == 0)
  {
    if (!v3)
    {
      goto LABEL_15;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    v11 = 12;
    goto LABEL_7;
  }

  sub_10002E258();
  v16 = (*(v15 + 632))(v5);
  if (v16)
  {
    sub_10002ACE8(1);
    sub_10002E230();

    sub_10002C888(v17);
  }

  else
  {
    sub_10002ACE8(1);
    if (v3)
    {
      *(v1 + v9) = v3;
    }

    else
    {
      sub_1000287AC();
      ObjectType = swift_getObjectType();
      EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for ()[1]);
      sub_10002E264();
      EventLoop.makePromise<A>(of:file:line:)(v20, v21, v22, v23, 1169, ObjectType, v24, &protocol witness table for SelectableEventLoop);
      sub_10002E39C();
      *(v1 + v9) = ObjectType;
    }

    sub_10002C75C();
    sub_10002E230();

    sub_10002AFFC();
  }
}

uint64_t sub_10002CF18(uint64_t a1)
{
  v3 = a1;
  sub_10002E27C();
  v5 = v4;
  sub_1000287AC();
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  swift_unknownObjectRelease();
  sub_10002E270();
  if ((*(v6 + 584))())
  {
    sub_10002E0B8();
    *(v1 + *(v7 + 224)) = v3;
    sub_10002E0B8();
    v9 = type metadata accessor for BaseSocketChannel(0, *(v5 + 80), *(v5 + 88), v8);
    sub_10002E138();
    WitnessTable = swift_getWitnessTable();
    result = sub_1000432FC(v1, v9, WitnessTable);
    if (!v2)
    {
      return result;
    }

    sub_100028ED8();
    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)();
    if (sub_10009D370())
    {
      sub_10009E508();
    }

    sub_10002E0B8();
    v12 = sub_10002E2CC();
    v13(v12);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v14 = swift_allocError();
    sub_10002E00C(v14, v15);
  }

  return swift_willThrow();
}

__n128 sub_10002D198(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_10002D1AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002D1EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10002D288(void *a1)
{
  v1 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002D2B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 16))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v3 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
      v4 = v3 ^ 0x7F;
      v2 = 126 - v3;
      if (v4 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002D314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = ((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2) | (((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_10002D5E4@<X0>(void *a1@<X8>, uint64_t a2@<X3>)
{
  a1[3] = type metadata accessor for BaseSocketChannel.SynchronousOptions(0, *(*v2 + 80), *(*v2 + 88), a2);
  a1[4] = &off_100280098;
  *a1 = v2;
}

unint64_t sub_10002D678()
{
  result = qword_1002AD870;
  if (!qword_1002AD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD870);
  }

  return result;
}

uint64_t sub_10002D7D8(uint64_t a1)
{
  swift_errorRetain();
  sub_1000A13B0(a1);
}

uint64_t sub_10002D824(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_10002D83C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_10002D864()
{
  result = qword_1002AD878;
  if (!qword_1002AD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD878);
  }

  return result;
}

uint64_t sub_10002D8D0(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_10002DFFC();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = v6 + *(v7 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v8 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = v5 | v14;

  (*(v4 + 8))(v1 + v6, v2);
  (*(v11 + 8))(v1 + v15, AssociatedTypeWitness);

  return _swift_deallocObject(v1, v15 + v16, v17 | 7);
}

uint64_t sub_10002DA20(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_10002DFFC();
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  return (*(**(v1 + 48) + 696))(v1 + v5, v1 + ((v7 + *(v8 + 80)) & ~*(v8 + 80)), v2, v3);
}