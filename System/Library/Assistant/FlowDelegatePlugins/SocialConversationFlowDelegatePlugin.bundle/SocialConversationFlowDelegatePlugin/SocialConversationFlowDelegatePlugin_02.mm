uint64_t sub_49640()
{
  v2 = *(sub_C1D34() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_4970C(uint64_t a1, char a2)
{
  v3 = sub_C1D34();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_42EB4(a1, a2 & 1, v4);
}

__n128 sub_49814(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_49878(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    sub_21E8(&qword_EF870, &qword_C6270);
    v1 = sub_C3704();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void *sub_49930(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  _objc_retain(v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_49A98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = __chkstk_darwin(0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v27 = sub_C3B64() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_C3BA4();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    __chkstk_darwin(v23);
    v16 = v29;
    v17 = v10;
    sub_49CD4(v11, sub_4B860, &v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_49CD4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_C3BA4();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t sub_49E9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_49ED8(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = (a4)(a1, a2, a3);
  v7 = *a1;
  _objc_retain(v8);
  sub_C3984();
  if (v8)
  {
    _objc_release(v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    _objc_retain(v8);
    *v4 = v8;
    _objc_release(v8);
    *a2 = v4 + 1;
  }

  else
  {
    _objc_release(v8);
  }
}

unint64_t sub_4A0A8()
{
  v2 = qword_EF7F0;
  if (!qword_EF7F0)
  {
    sub_81B0(&qword_EF7E8, &qword_C5FC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF7F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4A130(uint64_t a1)
{
  v3 = sub_C2C64();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_4A1D8()
{
  v2 = *(sub_C1D34() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_4A37C()
{
  v2 = *(sub_C2C64() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_4A448()
{
  v1 = *(sub_C2C64() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_459F0(v2);
}

uint64_t sub_4A590(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_4A604();

  return sub_49A98(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

unint64_t sub_4A604()
{
  v2 = qword_EF7F8;
  if (!qword_EF7F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF7F8);
    return WitnessTable;
  }

  return v2;
}

_OWORD *sub_4A67C(_OWORD *a1, _OWORD *a2)
{
  v9 = sub_21E8(&qword_EF810, &unk_C5FD8);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = sub_21E8(&qword_EF800, &qword_C5FC8);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 48);
    v5 = a1 + *(v9 + 48);
    v2 = sub_C2D14();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

unint64_t sub_4A7E4()
{
  v2 = qword_EF820;
  if (!qword_EF820)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4A860()
{
  v2 = qword_EF828;
  if (!qword_EF828)
  {
    sub_81B0(&qword_EF818, &qword_C5FE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF828);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4A8E8()
{
  v2 = *(sub_C2D14() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_4A9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_C2D14();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_47EF0(v3, a1);
}

uint64_t sub_4AA68()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_C2D14();
  v1 = sub_4AAC4();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_4AAC4()
{
  v2 = qword_EF840;
  if (!qword_EF840)
  {
    sub_C2D14();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4AC1C()
{
  v2 = qword_EF848;
  if (!qword_EF848)
  {
    sub_81B0(&qword_EF838, &qword_C5FF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4ACA4()
{
  v2 = qword_EF858;
  if (!qword_EF858)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF858);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4AD20(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_4AD9C(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

__n128 sub_4AE18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_4AE24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_4AF68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_4B150(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_4B2A0(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_4B490(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_4B5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_4B7E4()
{
  v2 = qword_EF860;
  if (!qword_EF860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF860);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4B9A8()
{
  v2 = *(sub_C1D34() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_4BB4C()
{
  type metadata accessor for MediaService();
  result = sub_4BBA8();
  qword_F10F0 = result;
  return result;
}

uint64_t *sub_4BBE4()
{
  if (qword_EE578 != -1)
  {
    swift_once();
  }

  return &qword_F10F0;
}

uint64_t sub_4BC44()
{
  v1 = *sub_4BBE4();

  return v1;
}

uint64_t sub_4BC74()
{
  v126 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v125 = 0;
  v157 = 0;
  v100 = 0;
  v101 = sub_C3234();
  v102 = *(v101 - 8);
  v103 = v102;
  v104 = *(v102 + 64);
  __chkstk_darwin(0);
  v106 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = &v39 - v106;
  __chkstk_darwin(v1);
  v107 = &v39 - v106;
  v138 = sub_C3254();
  v108 = *(v138 - 8);
  v136 = v108;
  __chkstk_darwin(v126);
  v137 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = sub_C32B4();
  v109 = *(v141 - 8);
  v139 = v109;
  v110 = *(v109 + 64);
  __chkstk_darwin(v126);
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = &v39 - v111;
  __chkstk_darwin(v3);
  v144 = &v39 - v111;
  v129 = sub_C3264();
  v112 = *(v129 - 8);
  v127 = v112;
  __chkstk_darwin(v126);
  v128 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C38A4();
  __chkstk_darwin(v126);
  v119 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C3894();
  __chkstk_darwin(v126);
  v118 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_C3284();
  v113 = *(v132 - 8);
  v130 = v113;
  __chkstk_darwin(v132 - 8);
  v131 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v0;
  v122 = 7;
  v124 = swift_allocObject();
  v114 = v124;
  v115 = (v124 + 16);
  v167 = v124 + 16;
  *(v124 + 16) = v125;
  sub_4CFB8();
  v134 = 1;
  v116 = sub_C3564("com.apple.siri.SiriSocialConversation.canPlayAppleMusic", 0x37uLL, 1);
  v117 = v8;
  sub_4D01C();
  sub_4D034();
  sub_4D0D4(v119);
  v120 = sub_C38C4();
  v166 = v120;
  v135 = dispatch_semaphore_create(v126);
  v121 = v135;
  v165 = v135;

  v9 = v135;
  v10 = swift_allocObject();
  v11 = v124;
  v12 = v125;
  v13 = v135;
  v10[2] = v123;
  v10[3] = v11;
  v10[4] = v13;
  v163 = sub_4D260;
  v164 = v10;
  aBlock = _NSConcreteStackBlock;
  v159 = 1107296256;
  v160 = v12;
  v161 = sub_4D2FC;
  v162 = &unk_E54B0;
  v133 = _Block_copy(&aBlock);
  sub_4D01C();
  sub_4D3B0();
  sub_C38B4();
  (*(v127 + 8))(v128, v129);
  (*(v130 + 8))(v131, v132);
  _Block_release(v133);

  sub_C3294();
  v14 = v136;
  *v137 = v134;
  (*(v14 + 104))();
  sub_C32A4();
  (*(v136 + 8))(v137, v138);
  v143 = *(v139 + 8);
  v142 = v139 + 8;
  v143(v140, v141);
  v146 = sub_C3904();
  v145 = v146 & 1;
  v143(v144, v141);
  v157 = v145;
  if (v146)
  {
    v15 = v107;
    v16 = sub_BF704();
    (*(v103 + 16))(v15, v16, v101);
    v97 = sub_C3224();
    v94 = v97;
    v96 = sub_C3874();
    v95 = v96;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v98 = sub_C3C64();
    if (os_log_type_enabled(v97, v96))
    {
      v17 = v100;
      v85 = sub_C3954();
      v81 = v85;
      v82 = sub_21E8(&qword_EE828, &qword_C5100);
      v83 = 0;
      v86 = sub_5DD4(0, v82, v82);
      v84 = v86;
      v87 = sub_5DD4(v83, &type metadata for Any + 8, &type metadata for Any + 8);
      v150 = v85;
      v149 = v86;
      v148 = v87;
      v88 = 0;
      v89 = &v150;
      sub_5E28(0, &v150);
      sub_5E28(v88, v89);
      v147 = v98;
      v90 = &v39;
      __chkstk_darwin(&v39);
      v91 = &v39 - 6;
      *(&v39 - 4) = v18;
      *(&v39 - 3) = &v149;
      *(&v39 - 2) = &v148;
      v92 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v93 = v17;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v94, v95, "timed out waiting for canPlayAppleMusic value", v81, 2u);
        v79 = 0;
        sub_5E88(v84, 0, v82);
        sub_5E88(v87, v79, &type metadata for Any + 8);
        sub_C3934();

        v80 = v93;
      }
    }

    else
    {

      v80 = v100;
    }

    v78 = v80;

    (*(v103 + 8))(v107, v101);
    v99 = v78;
  }

  else
  {
    v99 = v100;
  }

  v19 = v105;
  v58 = v99;
  v20 = sub_BF704();
  (*(v103 + 16))(v19, v20, v101);

  v77 = sub_C3224();
  v59 = v77;
  v76 = sub_C3874();
  v60 = v76;
  v61 = 17;
  v66 = 7;
  v70 = swift_allocObject();
  v62 = v70;
  *(v70 + 16) = 0;
  v71 = swift_allocObject();
  v63 = v71;
  *(v71 + 16) = 4;
  v65 = 32;
  v21 = swift_allocObject();
  v22 = v114;
  v64 = v21;
  *(v21 + 16) = sub_4D4A8;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v64;
  v67 = v23;
  *(v23 + 16) = sub_4F7C8;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v67;
  v68 = v25;
  *(v25 + 16) = sub_4F83C;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v68;
  v74 = v27;
  v69 = v27;
  *(v27 + 16) = sub_4F8C4;
  *(v27 + 24) = v28;
  v75 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v72 = sub_C3C64();
  v73 = v29;

  v30 = v70;
  v31 = v73;
  *v73 = sub_7B48;
  v31[1] = v30;

  v32 = v71;
  v33 = v73;
  v73[2] = sub_7B48;
  v33[3] = v32;

  v34 = v73;
  v35 = v74;
  v73[4] = sub_4F910;
  v34[5] = v35;
  sub_4E48();

  if (os_log_type_enabled(v77, v76))
  {
    v36 = v58;
    v52 = sub_C3954();
    v48 = v52;
    v49 = sub_21E8(&qword_EE828, &qword_C5100);
    v50 = 0;
    v53 = sub_5DD4(0, v49, v49);
    v51 = v53;
    v54 = sub_5DD4(v50, &type metadata for Any + 8, &type metadata for Any + 8);
    v155 = v52;
    v154 = v53;
    v153 = v54;
    v55 = &v155;
    sub_5E28(0, &v155);
    sub_5E28(1, v55);
    v151 = sub_7B48;
    v152 = v62;
    sub_5E3C(&v151, v55, &v154, &v153);
    v56 = v36;
    v57 = v36;
    if (v36)
    {
      v46 = 0;

      __break(1u);
    }

    else
    {
      v151 = sub_7B48;
      v152 = v63;
      sub_5E3C(&v151, &v155, &v154, &v153);
      v44 = 0;
      v45 = 0;
      v151 = sub_4F910;
      v152 = v69;
      sub_5E3C(&v151, &v155, &v154, &v153);
      v42 = 0;
      v43 = 0;
      _os_log_impl(&dword_0, v59, v60, "finished getting canPlayAppleMusic value: %{BOOL}d", v48, 8u);
      v41 = 0;
      sub_5E88(v51, 0, v49);
      sub_5E88(v54, v41, &type metadata for Any + 8);
      sub_C3934();

      v47 = v42;
    }
  }

  else
  {
    v37 = v58;

    v47 = v37;
  }

  (*(v103 + 8))(v105, v101);
  v39 = &v156;
  swift_beginAccess();
  v40 = *v115;
  swift_endAccess();

  return v40;
}

unint64_t sub_4CFB8()
{
  v2 = qword_EF878;
  if (!qword_EF878)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF878);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_4D034()
{
  sub_4F0FC(0);
  sub_C3894();
  sub_501F4();
  sub_21E8(&qword_EF968, &qword_C62E8);
  sub_50274();
  return sub_C3AA4();
}

uint64_t sub_4D0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v1 = sub_C38A4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_4D140(uint64_t a1, uint64_t a2, void *a3)
{

  _objc_retain(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_4D4B0(sub_501E4, v6);
}

uint64_t sub_4D208()
{

  _objc_release(*(v0 + 32));
  return swift_deallocObject();
}

Swift::Int sub_4D270(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  swift_endAccess();
  return sub_C3914();
}

uint64_t sub_4D2FC(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_4D34C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_4D3B0()
{
  sub_4F1EC(0);
  sub_C3264();
  sub_5008C();
  sub_21E8(&qword_EF950, &qword_C62E0);
  sub_5010C();
  return sub_C3AA4();
}

uint64_t sub_4D450(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_4D4B0(void (*a1)(void), uint64_t a2)
{
  v41 = a2;
  v40 = a1;
  v35 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v34 = 0;
  v36 = sub_C3234();
  v37 = *(v36 - 8);
  v38 = v37;
  __chkstk_darwin(0);
  v39 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_C3304();
  v42 = *(v48 - 8);
  v45 = v42;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = &v12 - v44;
  __chkstk_darwin(v4);
  v47 = &v12 - v44;
  v57 = v5;
  v58 = v6;
  v56 = v2;
  sub_C32F4();
  (*(v45 + 104))(v46, enum case for MusicAuthorization.Status.authorized(_:), v48);
  sub_4F9FC();
  v51 = sub_C3C74();
  v50 = *(v45 + 8);
  v49 = v45 + 8;
  v50(v46, v48);
  v50(v47, v48);
  if (v51)
  {
    sub_4DA94(v40, v41);
    return v34;
  }

  else
  {
    v7 = v39;
    v8 = sub_BF704();
    (*(v38 + 16))(v7, v8, v36);
    v31 = sub_C3224();
    v28 = v31;
    v30 = sub_C3874();
    v29 = v30;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v32 = sub_C3C64();
    if (os_log_type_enabled(v31, v30))
    {
      v9 = v34;
      v19 = sub_C3954();
      v15 = v19;
      v16 = sub_21E8(&qword_EE828, &qword_C5100);
      v17 = 0;
      v20 = sub_5DD4(0, v16, v16);
      v18 = v20;
      v21 = sub_5DD4(v17, &type metadata for Any + 8, &type metadata for Any + 8);
      v55 = v19;
      v54 = v20;
      v53 = v21;
      v22 = 0;
      v23 = &v55;
      sub_5E28(0, &v55);
      sub_5E28(v22, v23);
      v52 = v32;
      v24 = &v12;
      __chkstk_darwin(&v12);
      v25 = &v12 - 6;
      *(&v12 - 4) = v10;
      *(&v12 - 3) = &v54;
      *(&v12 - 2) = &v53;
      v26 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v27 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v28, v29, "MediaService not music authorized", v15, 2u);
        v13 = 0;
        sub_5E88(v18, 0, v16);
        sub_5E88(v21, v13, &type metadata for Any + 8);
        sub_C3934();

        v14 = v27;
      }
    }

    else
    {

      v14 = v34;
    }

    v12 = v14;

    (*(v38 + 8))(v39, v36);

    v40(0);

    return v12;
  }
}

uint64_t sub_4DA94(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v16 = a2;
  v19 = &unk_C6288;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v15 = (*(*(sub_21E8(&qword_EF890, &qword_C6278) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v18 = &v14 - v15;
  v22 = v3;
  v23 = v4;
  v21 = v2;
  v17 = 0;
  v5 = sub_C3774();
  (*(*(v5 - 8) + 56))(v18, 1);

  v6 = swift_allocObject();
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v6;
  v12 = v20;
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v12;
  v11[5] = v7;
  sub_4EACC(v8, v8, v9, v10, v11, &type metadata for () + 8);
}

uint64_t sub_4DBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a5;
  *(v5 + 104) = a4;
  *(v5 + 56) = v5;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 192) = 0;
  *(v5 + 64) = 0;
  v6 = sub_C3234();
  *(v5 + 120) = v6;
  *(v5 + 128) = *(v6 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_C32E4();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  v13 = swift_task_alloc();
  *(v5 + 168) = v13;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 192) = 0;
  v8 = swift_task_alloc();
  *(v12 + 176) = v8;
  *v8 = *(v12 + 56);
  v8[1] = sub_4DDE0;

  return static MusicSubscription.current.getter(v13);
}

uint64_t sub_4DDE0()
{
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 184) = v0;

  if (v0)
  {
    v2 = sub_4E660;
  }

  else
  {
    v2 = sub_4DF48;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_4DF48()
{
  v37 = v0;
  v18 = *(v0 + 168);
  v16 = *(v0 + 160);
  v17 = *(v0 + 152);
  v15 = *(v0 + 144);
  v19 = *(v0 + 128);
  v20 = *(v0 + 120);
  *(v0 + 56) = v0;
  v21 = sub_C32C4();
  (*(v16 + 8))(v18, v17);
  *(v0 + 192) = v21 & 1;
  v1 = sub_BF704();
  (*(v19 + 16))(v15, v1, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21 & 1;
  v30 = sub_C3224();
  v31 = sub_C3874();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 4;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_4FF28;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_4F7C8;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_4F83C;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_4F8C4;
  *(v28 + 24) = v25;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v29 = v2;

  *v29 = sub_7B48;
  v29[1] = v26;

  v29[2] = sub_7B48;
  v29[3] = v27;

  v29[4] = sub_4F910;
  v29[5] = v28;
  sub_4E48();

  if (os_log_type_enabled(v30, v31))
  {
    v3 = v14[23];
    buf = sub_C3954();
    v10 = sub_21E8(&qword_EE828, &qword_C5100);
    v12 = sub_5DD4(0, v10, v10);
    v13 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v32 = buf;
    v33 = v12;
    v34 = v13;
    sub_5E28(0, &v32);
    sub_5E28(1, &v32);
    v35 = sub_7B48;
    v36 = v26;
    sub_5E3C(&v35, &v32, &v33, &v34);
    if (v3)
    {
    }

    v35 = sub_7B48;
    v36 = v27;
    sub_5E3C(&v35, &v32, &v33, &v34);
    v35 = sub_4F910;
    v36 = v28;
    sub_5E3C(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_0, v30, v31, "MediaService canPlayMusic: %{BOOL}d", buf, 8u);
    sub_5E88(v12, 0, v10);
    sub_5E88(v13, 0, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v7 = v14[18];
  v8 = v14[15];
  v6 = v14[16];
  _objc_release(v30);
  (*(v6 + 8))(v7, v8);
  v9 = v14[13];

  swift_beginAccess();
  swift_endAccess();
  v9(v21 & 1);

  v5 = *(v14[7] + 8);

  return v5();
}

uint64_t sub_4E660()
{
  v15 = v0[23];
  v1 = v0[17];
  v16 = v0[16];
  v17 = v0[15];
  v0[7] = v0;
  swift_errorRetain();
  v0[8] = v15;
  v2 = sub_BF704();
  (*(v16 + 16))(v1, v2, v17);
  v19 = sub_C3224();
  v18 = sub_C3874();
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v20 = sub_C3C64();
  if (os_log_type_enabled(v19, v18))
  {
    buf = sub_C3954();
    v9 = sub_21E8(&qword_EE828, &qword_C5100);
    v11 = sub_5DD4(0, v9, v9);
    v12 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v14 + 72) = buf;
    *(v14 + 80) = v11;
    *(v14 + 88) = v12;
    sub_5E28(0, (v14 + 72));
    sub_5E28(0, (v14 + 72));
    *(v14 + 96) = v20;
    v13 = swift_task_alloc();
    v13[2] = v14 + 72;
    v13[3] = v14 + 80;
    v13[4] = v14 + 88;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();

    _os_log_impl(&dword_0, v19, v18, "MediaService unable to get music subscription state", buf, 2u);
    sub_5E88(v11, 0, v9);
    sub_5E88(v12, 0, &type metadata for Any + 8);
    sub_C3934();
  }

  v6 = *(v14 + 136);
  v7 = *(v14 + 120);
  v5 = *(v14 + 128);
  _objc_release(v19);
  (*(v5 + 8))(v6, v7);

  v8 = *(v14 + 104);

  swift_beginAccess();
  swift_endAccess();
  v8(0);

  v3 = *(*(v14 + 56) + 8);

  return v3();
}

uint64_t sub_4EACC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_C62D0;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(sub_21E8(&qword_EF890, &qword_C6278) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_4FBA8(v54, v57);
  v58 = sub_C3774();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_4FCD0(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_C3764();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_C3754();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = sub_C3534();

    sub_4F2DC(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_4FCD0(v54);

    v18 = v16;
  }

  else
  {

    sub_4FCD0(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t sub_4F0FC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_C3894();
      v1 = sub_C3704();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    sub_C3894();
    return v2;
  }

  return result;
}

uint64_t sub_4F1EC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_C3264();
      v1 = sub_C3704();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    sub_C3264();
    return v2;
  }

  return result;
}

uint64_t sub_4F2DC@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_C3B84();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_4F49C(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4F5B0;

  return v6(a1);
}

uint64_t sub_4F5B0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_4F848@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_4F910(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_4F984();

  return sub_49A98(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_4F984()
{
  v2 = qword_EF880;
  if (!qword_EF880)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F9FC()
{
  v2 = qword_EF888;
  if (!qword_EF888)
  {
    sub_C3304();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF888);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4FA7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_4FAC4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_4DBFC(a1, v6, v7, v8, v9);
}

void *sub_4FBA8(const void *a1, void *a2)
{
  v6 = sub_C3774();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EF890, &qword_C6278);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_4FCD0(uint64_t a1)
{
  v3 = sub_C3774();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_4FDC0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_4F49C(a1, v6);
}

unint64_t sub_5008C()
{
  v2 = qword_EF948;
  if (!qword_EF948)
  {
    sub_C3264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5010C()
{
  v2 = qword_EF958;
  if (!qword_EF958)
  {
    sub_81B0(&qword_EF950, &qword_C62E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF958);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_50194()
{

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

unint64_t sub_501F4()
{
  v2 = qword_EF960;
  if (!qword_EF960)
  {
    sub_C3894();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF960);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_50274()
{
  v2 = qword_EF970;
  if (!qword_EF970)
  {
    sub_81B0(&qword_EF968, &qword_C62E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF970);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_502FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a5;
  v5[17] = a4;
  v5[16] = a3;
  v5[15] = a2;
  v5[14] = a1;
  v5[11] = v5;
  v5[7] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v5[12] = 0;
  v5[13] = 0;
  v6 = sub_C2F74();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  sub_21E8(&qword_EF978, &qword_C62F8);
  v5[22] = swift_task_alloc();
  v7 = sub_C1B94();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v8 = sub_C3234();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = a3;
  v5[10] = a4;
  v5[12] = a5;

  return _swift_task_switch(sub_505A4, 0);
}

uint64_t sub_505A4(uint64_t a1)
{
  v87 = v1;
  v2 = v1[30];
  v50 = v1[27];
  v51 = v1[26];
  v57 = v1[18];
  v56 = v1[17];
  v55 = v1[16];
  v54 = v1[15];
  v53 = v1[14];
  v1[11] = v1;
  v3 = sub_BF704();
  v52 = *(v50 + 16);
  v1[31] = v52;
  v1[32] = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v2, v3, v51);

  v59 = swift_allocObject();
  *(v59 + 16) = v53;
  *(v59 + 24) = v54;

  v61 = swift_allocObject();
  *(v61 + 16) = v55;
  *(v61 + 24) = v56;

  v58 = swift_allocObject();
  *(v58 + 16) = v57;

  v63 = swift_allocObject();
  *(v63 + 16) = sub_1F0A8;
  *(v63 + 24) = v58;

  v75 = sub_C3224();
  v76 = sub_C3864();
  v65 = swift_allocObject();
  *(v65 + 16) = 32;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1D834;
  *(v60 + 24) = v59;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_7BBC;
  *(v67 + 24) = v60;
  v68 = swift_allocObject();
  *(v68 + 16) = 32;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1D834;
  *(v62 + 24) = v61;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_7BBC;
  *(v70 + 24) = v62;
  v71 = swift_allocObject();
  *(v71 + 16) = 32;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_52534;
  *(v64 + 24) = v63;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_7BBC;
  *(v73 + 24) = v64;
  v1[33] = sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v74 = v4;

  *v74 = sub_7B48;
  v74[1] = v65;

  v74[2] = sub_7B48;
  v74[3] = v66;

  v74[4] = sub_7C08;
  v74[5] = v67;

  v74[6] = sub_7B48;
  v74[7] = v68;

  v74[8] = sub_7B48;
  v74[9] = v69;

  v74[10] = sub_7C08;
  v74[11] = v70;

  v74[12] = sub_7B48;
  v74[13] = v71;

  v74[14] = sub_7B48;
  v74[15] = v72;

  v74[16] = sub_7C08;
  v74[17] = v73;
  sub_4E48();

  if (os_log_type_enabled(v75, v76))
  {
    buf = sub_C3954();
    v45 = sub_21E8(&qword_EE828, &qword_C5100);
    v47 = sub_5DD4(0, v45, v45);
    v48 = sub_5DD4(3, &type metadata for Any + 8, &type metadata for Any + 8);
    v82 = buf;
    v83 = v47;
    v84 = v48;
    sub_5E28(2, &v82);
    sub_5E28(3, &v82);
    v85 = sub_7B48;
    v86 = v65;
    sub_5E3C(&v85, &v82, &v83, &v84);
    v85 = sub_7B48;
    v86 = v66;
    sub_5E3C(&v85, &v82, &v83, &v84);
    v85 = sub_7C08;
    v86 = v67;
    sub_5E3C(&v85, &v82, &v83, &v84);
    v85 = sub_7B48;
    v86 = v68;
    sub_5E3C(&v85, &v82, &v83, &v84);
    v85 = sub_7B48;
    v86 = v69;
    sub_5E3C(&v85, &v82, &v83, &v84);
    v85 = sub_7C08;
    v86 = v70;
    sub_5E3C(&v85, &v82, &v83, &v84);
    v85 = sub_7B48;
    v86 = v71;
    sub_5E3C(&v85, &v82, &v83, &v84);
    v85 = sub_7B48;
    v86 = v72;
    sub_5E3C(&v85, &v82, &v83, &v84);
    v85 = sub_7C08;
    v86 = v73;
    sub_5E3C(&v85, &v82, &v83, &v84);
    _os_log_impl(&dword_0, v75, v76, "[SuggestionsProvider.submitIntentToSiriSuggestionsSubmitting] submitting: {requestId: %s, intent: %s, executionParameters: %s", buf, 0x20u);
    sub_5E88(v47, 0, v45);
    sub_5E88(v48, 3, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v39 = v49[30];
  v40 = v49[26];
  v44 = v49[23];
  v43 = v49[22];
  v38 = v49[27];
  v42 = v49[24];
  _objc_release(v75);
  v41 = *(v38 + 8);
  v49[34] = v41;
  v49[35] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v39, v40);
  sub_C1B64();
  if ((*(v42 + 48))(v43, 1, v44) == 1)
  {
    v9 = v49[29];
    v20 = v49[26];
    v22 = v49[15];
    v21 = v49[14];
    sub_528AC(v49[22]);
    v10 = sub_BF704();
    v52(v9, v10, v20);

    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    oslog = sub_C3224();
    v30 = sub_C3864();
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1D834;
    *(v24 + 24) = v23;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_7BBC;
    *(v27 + 24) = v24;
    sub_C3C64();
    v28 = v11;

    *v28 = sub_7B48;
    v28[1] = v25;

    v28[2] = sub_7B48;
    v28[3] = v26;

    v28[4] = sub_7C08;
    v28[5] = v27;
    sub_4E48();

    if (os_log_type_enabled(oslog, v30))
    {
      v17 = sub_C3954();
      v16 = sub_21E8(&qword_EE828, &qword_C5100);
      v18 = sub_5DD4(0, v16, v16);
      v19 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v77 = v17;
      v78 = v18;
      v79 = v19;
      sub_5E28(2, &v77);
      sub_5E28(1, &v77);
      v80 = sub_7B48;
      v81 = v25;
      sub_5E3C(&v80, &v77, &v78, &v79);
      v80 = sub_7B48;
      v81 = v26;
      sub_5E3C(&v80, &v77, &v78, &v79);
      v80 = sub_7C08;
      v81 = v27;
      sub_5E3C(&v80, &v77, &v78, &v79);
      _os_log_impl(&dword_0, oslog, v30, "[SuggestionsProvider.submitIntentToSiriSuggestionsSubmitting] unable to parse %s to UUID", v17, 0xCu);
      sub_5E88(v18, 0, v16);
      sub_5E88(v19, 1, &type metadata for Any + 8);
      sub_C3934();
    }

    else
    {
    }

    v14 = v49[29];
    v15 = v49[26];
    _objc_release(oslog);
    v41(v14, v15);

    v12 = *(v49[11] + 8);

    return v12();
  }

  else
  {
    v32 = v49[21];
    v33 = v49[19];
    v31 = v49[20];
    (*(v49[24] + 32))(v49[25], v49[22], v49[23]);
    sub_C2F54();
    sub_C2F44();
    v36 = v49[5];
    v34 = v49[6];
    sub_808C(v49 + 2, v36);

    sub_21E8(&qword_EF990, &qword_C6830);
    sub_C3C64();
    sub_C3374();
    sub_C2FA4();
    (*(v31 + 104))(v32, enum case for SiriSuggestions.Intent.action(_:), v33);
    v37 = *(v34 + 8);
    v35 = sub_37068();
    v5 = swift_task_alloc();
    v49[36] = v5;
    *v5 = v49[11];
    v5[1] = sub_51A60;
    v6 = v49[25];
    v7 = v49[21];
    v8 = v49[18];

    return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v6, v7, v8, v35 & 1, v36, v37);
  }
}

uint64_t sub_51A60()
{
  v4 = *v1;
  v4[11] = *v1;
  v4[37] = v0;

  if (v0)
  {
    v2 = sub_51D20;
  }

  else
  {
    (*(v4[20] + 8))(v4[21], v4[19]);
    v2 = sub_51BF0;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_51BF0()
{
  v0[11] = v0;
  sub_2560(v0 + 2);
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = *(v0[11] + 8);

  return v1();
}

uint64_t sub_51D20()
{
  v33 = v0;
  v19 = v0[37];
  v18 = v0[31];
  v1 = v0[28];
  v17 = v0[26];
  v2 = v0[21];
  v3 = v0[20];
  v4 = v0[19];
  v0[11] = v0;
  (*(v3 + 8))(v2, v4);
  sub_2560(v0 + 2);
  swift_errorRetain();
  v0[13] = v19;
  v5 = sub_BF704();
  v18(v1, v5, v17);
  swift_errorRetain();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v26 = sub_C3224();
  v27 = sub_C3884();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1A354;
  *(v21 + 24) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_7BBC;
  *(v24 + 24) = v21;
  sub_C3C64();
  v25 = v6;

  *v25 = sub_7B48;
  v25[1] = v22;

  v25[2] = sub_7B48;
  v25[3] = v23;

  v25[4] = sub_7C08;
  v25[5] = v24;
  sub_4E48();

  if (os_log_type_enabled(v26, v27))
  {
    buf = sub_C3954();
    v12 = sub_21E8(&qword_EE828, &qword_C5100);
    v14 = sub_5DD4(0, v12, v12);
    v15 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v28 = buf;
    v29 = v14;
    v30 = v15;
    sub_5E28(2, &v28);
    sub_5E28(1, &v28);
    v31 = sub_7B48;
    v32 = v22;
    sub_5E3C(&v31, &v28, &v29, &v30);
    v31 = sub_7B48;
    v32 = v23;
    sub_5E3C(&v31, &v28, &v29, &v30);
    v31 = sub_7C08;
    v32 = v24;
    sub_5E3C(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_0, v26, v27, "[SuggestionsProvider.submitIntentToSiriSuggestions] caught error: %s", buf, 0xCu);
    sub_5E88(v14, 0, v12);
    sub_5E88(v15, 1, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v11 = v16[34];
  v9 = v16[28];
  v10 = v16[26];
  _objc_release(v26);
  v11(v9, v10);

  (*(v16[24] + 8))(v16[25], v16[23]);

  v7 = *(v16[11] + 8);

  return v7();
}

uint64_t sub_52534()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_21E8(&qword_EF980, qword_C6300);
  v1 = sub_5259C();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_5259C()
{
  v2 = qword_EF988;
  if (!qword_EF988)
  {
    sub_81B0(&qword_EF980, qword_C6300);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF988);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_528AC(uint64_t a1)
{
  v3 = sub_C1B94();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

Swift::Bool __swiftcall isResponseFramework2Available()()
{
  v4 = 1;
  sub_C3564("/System/Library/Snippets/UIPlugins/SiriSocialConversationUIPlugin.bundle", 0x48uLL, 1);
  v3 = [objc_opt_self() defaultManager];

  v1 = sub_C3484();

  v2 = [v3 fileExistsAtPath:v1 isDirectory:&v4];
  _objc_release(v1);
  _objc_release(v3);

  return v2;
}

id sub_52CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v19[4] = a1;
  v19[5] = a2;
  v19[3] = a3;
  sub_52F50();
  v3 = sub_52FB4();
  v17 = sub_52FE8(v3, v4);
  v19[2] = v17;
  sub_21E8(&qword_EF9A0, qword_C6360);
  sub_C3C64();
  v10 = v5;
  v19[0] = sub_53030();
  v19[1] = v6;
  sub_C3BB4();

  v10[8] = &type metadata for String;
  v10[5] = a1;
  v10[6] = a2;
  sub_4E48();
  sub_8224(v19);
  sub_C3374();
  isa = sub_C3334().super.isa;

  [v17 setUserData:isa];
  _objc_release(isa);
  v13 = objc_opt_self();
  sub_808C(a3, a3[3]);
  v14 = sub_C1FB4();
  v16 = [v13 runSiriKitExecutorCommandWithContext:? payload:?];
  _objc_release(v14);
  v15 = objc_opt_self();
  _objc_retain(v16);
  v18 = [v15 wrapCommandInStartLocalRequest:v16];
  swift_unknownObjectRelease();
  _objc_release(v16);
  _objc_release(v17);
  return v18;
}

unint64_t sub_52F50()
{
  v2 = qword_EF998;
  if (!qword_EF998)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF998);
    return ObjCClassMetadata;
  }

  return v2;
}

BOOL sub_53064(uint64_t a1, void *a2)
{
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  sub_C3C64();
  *v2 = "com.apple.siri.directInvocation.socialConversation";
  *(v2 + 8) = 50;
  *(v2 + 16) = 2;
  sub_4E48();
  v5 = sub_C3BC4(v6, v4);

  return v5 != 0;
}

unint64_t sub_53188()
{
  v2 = qword_EF9A8;
  if (!qword_EF9A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9A8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_532D4(uint64_t a1, void *a2)
{
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  sub_C3C64();
  *v2 = "intentName";
  *(v2 + 8) = 10;
  *(v2 + 16) = 2;
  sub_4E48();
  v5 = sub_C3BC4(v6, v4);

  return v5 != 0;
}

BOOL sub_533AC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_53064(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_533EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_52FB4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_53468()
{
  v2 = qword_EF9B0;
  if (!qword_EF9B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9B0);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_535B4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_532D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_535F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_53030();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_53678()
{
  v2 = qword_EF9B8;
  if (!qword_EF9B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5370C()
{
  v2 = qword_EF9C0;
  if (!qword_EF9C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9C0);
    return WitnessTable;
  }

  return v2;
}

id sub_53788(uint64_t a1, uint64_t a2)
{
  v4 = sub_C3484();
  v5 = [v3 initWithIdentifier:?];
  _objc_release(v4);

  return v5;
}

uint64_t *sub_537EC()
{
  if (qword_EE580 != -1)
  {
    swift_once();
  }

  return &qword_F10F8;
}

uint64_t sub_5386C()
{
  v2 = *(v0 + 40);

  return v2;
}

void *sub_538A4@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_BD6C(a1, a4);
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_538EC()
{
  type metadata accessor for NLGOverrider();
  memset(v2, 0, sizeof(v2));
  memset(v1, 0, sizeof(v1));
  result = sub_53980(v2, v1);
  qword_F10F8 = result;
  return result;
}

uint64_t sub_539D4()
{
  v1 = *sub_537EC();

  return v1;
}

uint64_t sub_53A04(void *a1, void *a2)
{
  v20[5] = 0;
  v16 = 0;
  v20[7] = a1;
  v20[6] = a2;
  type metadata accessor for GeneralJokeRetriever(0);
  sub_2E2DC(a1, v20);
  sub_2E2DC(a2, v19);
  v10 = sub_6DB1C(v20, v19);
  v18[5] = v10;
  type metadata accessor for SpecificJokeRetriever(0);
  sub_2E2DC(a2, v18);
  v8 = sub_6DB70(v18);
  v17[1] = v8;
  v9 = *sub_6DBBC();

  v17[0] = v9;

  v11 = sub_21E8(&qword_EF9C8, &qword_C6550);
  v12 = sub_21E8(&qword_EF9D0, &qword_C6558);
  v14 = sub_53E5C();
  v3 = sub_28D90(sub_53E28, v10, v11, v12, &type metadata for Never, v14, &protocol witness table for Never, v13);

  sub_1D7C8(v17);
  v16 = v3;
  v4 = *sub_6DC1C();

  v15 = v4;

  sub_28D90(sub_53FB4, v8, v11, v12, &type metadata for Never, v14, &protocol witness table for Never, v13);

  sub_1D7C8(&v15);
  sub_C36E4();
  sub_C30A4();
  sub_21E8(&qword_EF9E0, &qword_C6560);
  sub_21E8(&qword_EF9E8, &qword_C6568);
  sub_53FE8();
  sub_54068();
  *(v5 + 16) = sub_C3384();

  sub_1FA80(a2);
  sub_1FA80(a1);
  return v5;
}

uint64_t sub_53D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_21E8(&qword_EF9D0, &qword_C6558) + 48);
  v3 = sub_C30A4();
  (*(*(v3 - 8) + 16))(a3, a1);

  result = type metadata accessor for GeneralJokeRetriever(0);
  v5 = (a3 + v7);
  v5[3] = result;
  v5[4] = &off_E7388;
  *v5 = a2;
  return result;
}

unint64_t sub_53E5C()
{
  v2 = qword_EF9D8;
  if (!qword_EF9D8)
  {
    sub_81B0(&qword_EF9C8, &qword_C6550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_53EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_21E8(&qword_EF9D0, &qword_C6558) + 48);
  v3 = sub_C30A4();
  (*(*(v3 - 8) + 16))(a3, a1);

  result = type metadata accessor for SpecificJokeRetriever(0);
  v5 = (a3 + v7);
  v5[3] = result;
  v5[4] = &off_E7370;
  *v5 = a2;
  return result;
}

unint64_t sub_53FE8()
{
  v2 = qword_EF9F0;
  if (!qword_EF9F0)
  {
    sub_C30A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_54068()
{
  v2 = qword_EF9F8;
  if (!qword_EF9F8)
  {
    sub_81B0(&qword_EF9E8, &qword_C6568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF9F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_540F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a2;
  v114 = a1;
  v100 = a3;
  v102 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v101 = 0;
  v127 = 0;
  v126 = 0;
  v103 = sub_C3234();
  v104 = *(v103 - 8);
  v105 = v104;
  v106 = *(v104 + 64);
  __chkstk_darwin(0);
  v108 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = &v33 - v108;
  __chkstk_darwin(v4);
  v109 = &v33 - v108;
  v110 = sub_C30A4();
  v111 = *(v110 - 8);
  v112 = v111;
  __chkstk_darwin(v110 - 8);
  v113 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v113;
  v115 = *(*(sub_21E8(&qword_EFA00, &unk_C6570) - 8) + 64);
  __chkstk_darwin(v119);
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = &v33 - v117;
  __chkstk_darwin(v6);
  v118 = &v33 - v117;
  v135 = &v33 - v117;
  v133 = v7;
  v134 = v8;
  v132 = v3;

  if (v119)
  {
    v98 = v114;
    v99 = v119;
    v94 = v119;
    v95 = v114;
    v126 = v114;
    v127 = v119;
    v125[2] = v114;
    v125[3] = v119;
    v125[0] = sub_C3564("#", 1uLL, 1);
    v125[1] = v9;
    sub_B2E8();
    v96 = v125;
    v97 = sub_C39D4();
    sub_8224(v96);
    if (v97)
    {

      sub_C30C4();
    }

    else
    {
      v93 = 1;
      v91 = sub_C3564("SocialConversation", 0x12uLL, 1);
      v92 = v10;

      sub_C30B4();
      (*(v112 + 56))(v118, 0, v93, v110);
    }

    sub_58DC4(v118, v116);
    if ((*(v112 + 48))(v116, 1, v110) == 1)
    {
      v11 = v109;
      sub_58EEC(v116);
      v12 = sub_BF704();
      (*(v105 + 16))(v11, v12, v103);

      v73 = 32;
      v77 = 32;
      v78 = 7;
      v13 = swift_allocObject();
      v14 = v94;
      v79 = v13;
      *(v13 + 16) = v95;
      *(v13 + 24) = v14;
      v89 = sub_C3224();
      v71 = v89;
      v88 = sub_C3884();
      v72 = v88;
      v74 = 17;
      v82 = swift_allocObject();
      v75 = v82;
      *(v82 + 16) = v73;
      v83 = swift_allocObject();
      v76 = v83;
      *(v83 + 16) = 8;
      v15 = swift_allocObject();
      v16 = v79;
      v80 = v15;
      *(v15 + 16) = sub_1D834;
      *(v15 + 24) = v16;
      v17 = swift_allocObject();
      v18 = v80;
      v86 = v17;
      v81 = v17;
      *(v17 + 16) = sub_7BBC;
      *(v17 + 24) = v18;
      v87 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v84 = sub_C3C64();
      v85 = v19;

      v20 = v82;
      v21 = v85;
      *v85 = sub_7B48;
      v21[1] = v20;

      v22 = v83;
      v23 = v85;
      v85[2] = sub_7B48;
      v23[3] = v22;

      v24 = v85;
      v25 = v86;
      v85[4] = sub_7C08;
      v24[5] = v25;
      sub_4E48();

      if (os_log_type_enabled(v89, v88))
      {
        v26 = v101;
        v64 = sub_C3954();
        v61 = v64;
        v62 = sub_21E8(&qword_EE828, &qword_C5100);
        v65 = sub_5DD4(0, v62, v62);
        v63 = v65;
        v67 = 1;
        v66 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v124 = v64;
        v123 = v65;
        v122 = v66;
        v68 = &v124;
        sub_5E28(2, &v124);
        sub_5E28(v67, v68);
        v120 = sub_7B48;
        v121 = v75;
        sub_5E3C(&v120, v68, &v123, &v122);
        v69 = v26;
        v70 = v26;
        if (v26)
        {
          v59 = 0;

          __break(1u);
        }

        else
        {
          v120 = sub_7B48;
          v121 = v76;
          sub_5E3C(&v120, &v124, &v123, &v122);
          v57 = 0;
          v58 = 0;
          v120 = sub_7C08;
          v121 = v81;
          sub_5E3C(&v120, &v124, &v123, &v122);
          v55 = 0;
          v56 = 0;
          _os_log_impl(&dword_0, v71, v72, "Invalid identifier: %s", v61, 0xCu);
          sub_5E88(v63, 0, v62);
          sub_5E88(v66, 1, &type metadata for Any + 8);
          sub_C3934();

          v60 = v55;
        }
      }

      else
      {
        v27 = v101;

        v60 = v27;
      }

      v54 = v60;

      (*(v105 + 8))(v109, v103);
      (*(v112 + 56))(v100, 1, 1, v110);
      sub_58EEC(v118);

      return v54;
    }

    else
    {
      (*(v112 + 32))(v113, v116, v110);
      (*(v112 + 16))(v100, v113, v110);
      (*(v112 + 56))(v100, 0, 1, v110);
      (*(v112 + 8))(v113, v110);
      sub_58EEC(v118);

      return v101;
    }
  }

  else
  {
    v28 = v107;
    v29 = sub_BF704();
    (*(v105 + 16))(v28, v29, v103);
    v52 = sub_C3224();
    v49 = v52;
    v51 = sub_C3884();
    v50 = v51;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v53 = sub_C3C64();
    if (os_log_type_enabled(v52, v51))
    {
      v30 = v101;
      v40 = sub_C3954();
      v36 = v40;
      v37 = sub_21E8(&qword_EE828, &qword_C5100);
      v38 = 0;
      v41 = sub_5DD4(0, v37, v37);
      v39 = v41;
      v42 = sub_5DD4(v38, &type metadata for Any + 8, &type metadata for Any + 8);
      v131 = v40;
      v130 = v41;
      v129 = v42;
      v43 = 0;
      v44 = &v131;
      sub_5E28(0, &v131);
      sub_5E28(v43, v44);
      v128 = v53;
      v45 = &v33;
      __chkstk_darwin(&v33);
      v46 = &v33 - 6;
      *(&v33 - 4) = v31;
      *(&v33 - 3) = &v130;
      *(&v33 - 2) = &v129;
      v47 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v48 = v30;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v49, v50, "Identifier is empty", v36, 2u);
        v34 = 0;
        sub_5E88(v39, 0, v37);
        sub_5E88(v42, v34, &type metadata for Any + 8);
        sub_C3934();

        v35 = v48;
      }
    }

    else
    {

      v35 = v101;
    }

    v33 = v35;

    (*(v105 + 8))(v107, v103);
    (*(v112 + 56))(v100, 1, 1, v110);
    return v33;
  }
}

uint64_t sub_550B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v15 = a5;
  v20 = a1;
  v19 = a2;
  v17 = a3;
  v18 = a4;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v6 = sub_21E8(&qword_EFA00, &unk_C6570);
  v16 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v25 = &v14 - v16;
  v26 = sub_C30A4();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v21 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v22 = &v14 - v21;
  v32 = &v14 - v21;
  v30 = v7;
  v31 = v8;
  v29 = v9;
  v28 = v10;
  v27 = v5;
  sub_540F0(v7, v8, v11);
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_58EEC(v25);
    v13 = v15;
    *v15 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
  }

  else
  {
    (*(v23 + 32))(v22, v25, v26);
    sub_552E0(v22, v17, v18, v15);
    return (*(v23 + 8))(v22, v26);
  }

  return result;
}

uint64_t sub_552E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v114 = a3;
  v115 = a2;
  v113 = a1;
  v98 = a4;
  v105 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v99 = 0;
  v100 = sub_C1C64();
  v101 = *(v100 - 8);
  v102 = v101;
  v103 = *(v101 + 64);
  __chkstk_darwin(0);
  v104 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_C3234();
  v107 = *(v106 - 8);
  v108 = v107;
  v109 = *(v107 + 64);
  __chkstk_darwin(v105);
  v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = &v36 - v111;
  __chkstk_darwin(v6);
  v112 = &v36 - v111;
  v116 = sub_C30A4();
  v117 = *(v116 - 8);
  v118 = v117;
  v119 = *(v117 + 64);
  __chkstk_darwin(v114);
  v120 = &v36 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v7;
  v133 = v8;
  v132 = v9;
  v131 = v4;
  v122 = v9[3];
  v121 = v9[4];
  sub_808C(v9, v122);
  if ((*(v121 + 40))(v122))
  {
    if (sub_5611C(v115, v114))
    {
      v95 = *(v97 + 16);

      (*(v118 + 16))(v120, v113, v116);
      v94 = sub_21E8(&qword_EF9E0, &qword_C6560);
      sub_53FE8();
      sub_C33E4();

      (*(v118 + 8))(v120, v116);
      return v99;
    }

    else
    {
      v10 = v112;
      v11 = sub_BF704();
      (*(v108 + 16))(v10, v11, v106);
      (*(v102 + 16))(v104, v115, v100);
      v74 = (*(v102 + 80) + 16) & ~*(v102 + 80);
      v83 = swift_allocObject();
      (*(v102 + 32))(v83 + v74, v104, v100);
      v93 = sub_C3224();
      v75 = v93;
      v92 = sub_C3884();
      v76 = v92;
      v77 = 17;
      v82 = 7;
      v86 = swift_allocObject();
      v78 = v86;
      v79 = 32;
      *(v86 + 16) = 32;
      v12 = swift_allocObject();
      v13 = v79;
      v87 = v12;
      v80 = v12;
      *(v12 + 16) = 8;
      v81 = v13;
      v14 = swift_allocObject();
      v15 = v83;
      v84 = v14;
      *(v14 + 16) = sub_2DEF4;
      *(v14 + 24) = v15;
      v16 = swift_allocObject();
      v17 = v84;
      v90 = v16;
      v85 = v16;
      *(v16 + 16) = sub_7BBC;
      *(v16 + 24) = v17;
      v91 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v88 = sub_C3C64();
      v89 = v18;

      v19 = v86;
      v20 = v89;
      *v89 = sub_7B48;
      v20[1] = v19;

      v21 = v87;
      v22 = v89;
      v89[2] = sub_7B48;
      v22[3] = v21;

      v23 = v89;
      v24 = v90;
      v89[4] = sub_7C08;
      v23[5] = v24;
      sub_4E48();

      if (os_log_type_enabled(v93, v92))
      {
        v25 = v99;
        v67 = sub_C3954();
        v64 = v67;
        v65 = sub_21E8(&qword_EE828, &qword_C5100);
        v68 = sub_5DD4(0, v65, v65);
        v66 = v68;
        v70 = 1;
        v69 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v127[0] = v67;
        v126 = v68;
        v125 = v69;
        v71 = v127;
        sub_5E28(2, v127);
        sub_5E28(v70, v71);
        v123 = sub_7B48;
        v124 = v78;
        sub_5E3C(&v123, v71, &v126, &v125);
        v72 = v25;
        v73 = v25;
        if (v25)
        {
          v62 = 0;

          __break(1u);
        }

        else
        {
          v123 = sub_7B48;
          v124 = v80;
          sub_5E3C(&v123, v127, &v126, &v125);
          v60 = 0;
          v61 = 0;
          v123 = sub_7C08;
          v124 = v85;
          sub_5E3C(&v123, v127, &v126, &v125);
          v58 = 0;
          v59 = 0;
          _os_log_impl(&dword_0, v75, v76, "Unsupported locale: %s", v64, 0xCu);
          sub_5E88(v66, 0, v65);
          sub_5E88(v69, 1, &type metadata for Any + 8);
          sub_C3934();

          v63 = v58;
        }
      }

      else
      {
        v26 = v99;

        v63 = v26;
      }

      v57 = v63;

      (*(v108 + 8))(v112, v106);
      v27 = v98;
      v28 = v57;
      *v98 = 0;
      v27[1] = 0;
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = 0;
      return v28;
    }
  }

  else
  {
    v29 = v110;
    v30 = sub_BF704();
    (*(v108 + 16))(v29, v30, v106);
    v55 = sub_C3224();
    v52 = v55;
    v54 = sub_C3874();
    v53 = v54;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v56 = sub_C3C64();
    if (os_log_type_enabled(v55, v54))
    {
      v31 = v99;
      v43 = sub_C3954();
      v39 = v43;
      v40 = sub_21E8(&qword_EE828, &qword_C5100);
      v41 = 0;
      v44 = sub_5DD4(0, v40, v40);
      v42 = v44;
      v45 = sub_5DD4(v41, &type metadata for Any + 8, &type metadata for Any + 8);
      v130 = v43;
      v129 = v44;
      v128 = v45;
      v46 = 0;
      v47 = &v130;
      sub_5E28(0, &v130);
      sub_5E28(v46, v47);
      v127[2] = v56;
      v48 = &v36;
      __chkstk_darwin(&v36);
      v49 = &v36 - 6;
      *(&v36 - 4) = v32;
      *(&v36 - 3) = &v129;
      *(&v36 - 2) = &v128;
      v50 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v51 = v31;
      if (v31)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v52, v53, "Bobcat feature flag not enabled", v39, 2u);
        v37 = 0;
        sub_5E88(v42, 0, v40);
        sub_5E88(v45, v37, &type metadata for Any + 8);
        sub_C3934();

        v38 = v51;
      }
    }

    else
    {

      v38 = v99;
    }

    v36 = v38;

    (*(v108 + 8))(v110, v106);
    v33 = v98;
    v34 = v36;
    *v98 = 0;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = 0;
    return v34;
  }
}

uint64_t sub_5611C(uint64_t a1, void *a2)
{
  v122 = a2;
  v109 = a1;
  v117 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v110 = 0;
  v161 = 0;
  v160 = 0;
  v111 = sub_C3234();
  v112 = *(v111 - 8);
  v113 = v112;
  __chkstk_darwin(v111 - 8);
  v114 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E8(&qword_EF280, &qword_C6580);
  v115 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4 - 8);
  v116 = &v24 - v115;
  v118 = *(*(sub_21E8(&qword_EFA08, &qword_C6588) - 8) + 64);
  __chkstk_darwin(v117);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = &v24 - v120;
  __chkstk_darwin(v5);
  v121 = &v24 - v120;
  v131 = sub_C1C44();
  v123 = v131;
  v124 = *(v131 - 8);
  v129 = v124;
  v125 = *(v124 + 64);
  __chkstk_darwin(v131 - 8);
  v127 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = &v24 - v127;
  __chkstk_darwin(&v24 - v127);
  v130 = &v24 - v127;
  v168 = a1;
  v167 = v6;
  v166 = v128;
  sub_C1C54();
  v134 = sub_C1C34();
  v136 = v7;
  v132 = *(v129 + 8);
  v133 = (v129 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v132(v130, v131);
  sub_C3564("en", 2uLL, 1);
  v135 = v8;
  v137 = sub_C3574();

  if (v137)
  {
    sub_C1C04();
    v107 = sub_C1BF4();
    v108 = *(v107 - 8);
    if ((*(v108 + 48))(v121, 1) == 1)
    {
      sub_59250(v121);
      v105 = 0;
      v106 = 0;
    }

    else
    {
      v9 = sub_C1BE4();
      v103 = v10;
      v104 = v9;
      (*(v108 + 8))(v121, v107);
      v105 = v104;
      v106 = v103;
    }

    v99 = v106;
    v98 = v105;

    v97 = sub_C3564("US", 2uLL, 1);
    v100 = v11;
    v96 = v11;

    v101 = v141;
    v102 = v142;
    v141[0] = v98;
    v141[1] = v99;
    v142[0] = v97;
    v142[1] = v100;
    if (v99)
    {
      sub_146A0(v101, &v140);
      if (v102[1])
      {
        v139 = v140;
        v138 = *v102;
        v94 = sub_C3574();
        sub_8224(&v138);
        sub_8224(&v139);
        sub_8224(v101);
        v95 = v94;
LABEL_11:
        v92 = v95;

        v93 = v92;
        goto LABEL_15;
      }

      sub_8224(&v140);
    }

    else if (!v102[1])
    {
      sub_8224(v101);
      v95 = 1;
      goto LABEL_11;
    }

    sub_146E0(v141);
    v95 = 0;
    goto LABEL_11;
  }

  v93 = 0;
LABEL_15:
  if (v93)
  {
    v90 = 1;
    v91 = v110;
    return v90 & 1;
  }

  v89 = v122[3];
  v88 = v122[4];
  sub_808C(v122, v89);
  if ((*(v88 + 56))(v89))
  {
    sub_C1C54();
    sub_C1C24();
    v132(v126, v123);
    v86 = sub_C1BC4();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v116, 1) == 1)
    {
      sub_2D52C(v116);
      v84 = 0;
      v85 = 0;
    }

    else
    {
      v12 = sub_C1BB4();
      v82 = v13;
      v83 = v12;
      (*(v87 + 8))(v116, v86);
      v84 = v83;
      v85 = v82;
    }

    v75 = v85;
    v76 = v84;
    v160 = v84;
    v161 = v85;
    v159[0] = v84;
    v159[1] = v85;
    v81 = sub_C3564("en", 2uLL, 1);
    v80 = v14;
    v77 = v14;

    v78 = v157;
    v79 = v158;
    sub_146A0(v159, v157);
    v158[0] = v81;
    v158[1] = v80;
    if (v157[1])
    {
      sub_146A0(v78, &v145);
      if (v79[1])
      {
        v144 = v145;
        v143 = *v79;
        v73 = sub_C3574();
        sub_8224(&v143);
        sub_8224(&v144);
        sub_8224(v78);
        v74 = v73;
        goto LABEL_26;
      }

      sub_8224(&v145);
    }

    else if (!v79[1])
    {
      sub_8224(v78);
      v74 = 1;
LABEL_26:
      v72 = v74;

      if (v72)
      {
        v71 = 1;
LABEL_54:
        v45 = v71;

        v90 = v45;
        v91 = v110;
        return v90 & 1;
      }

      v156[0] = v76;
      v156[1] = v75;
      v70 = sub_C3564("zh", 2uLL, 1);
      v69 = v15;
      v66 = v15;

      v67 = v154;
      v68 = v155;
      sub_146A0(v156, v154);
      v155[0] = v70;
      v155[1] = v69;
      if (v154[1])
      {
        sub_146A0(v67, &v148);
        if (v68[1])
        {
          v147 = v148;
          v146 = *v68;
          v64 = sub_C3574();
          sub_8224(&v146);
          sub_8224(&v147);
          sub_8224(v67);
          v65 = v64;
          goto LABEL_37;
        }

        sub_8224(&v148);
      }

      else if (!v68[1])
      {
        sub_8224(v67);
        v65 = 1;
LABEL_37:
        v63 = v65;

        if ((v63 & 1) == 0)
        {
          v60 = 0;
LABEL_49:
          v71 = v60;
          goto LABEL_54;
        }

        sub_C1C04();
        v61 = sub_C1BF4();
        v62 = *(v61 - 8);
        if ((*(v62 + 48))(v119, 1) == 1)
        {
          sub_59250(v119);
          v58 = 0;
          v59 = 0;
        }

        else
        {
          v16 = sub_C1BE4();
          v56 = v17;
          v57 = v16;
          (*(v62 + 8))(v119, v61);
          v58 = v57;
          v59 = v56;
        }

        v52 = v59;
        v51 = v58;

        v50 = sub_C3564("CN", 2uLL, 1);
        v53 = v18;
        v49 = v18;

        v54 = v152;
        v55 = v153;
        v152[0] = v51;
        v152[1] = v52;
        v153[0] = v50;
        v153[1] = v53;
        if (v52)
        {
          sub_146A0(v54, &v151);
          if (v55[1])
          {
            v150 = v151;
            v149 = *v55;
            v47 = sub_C3574();
            sub_8224(&v149);
            sub_8224(&v150);
            sub_8224(v54);
            v48 = v47;
LABEL_48:
            v46 = v48;

            v60 = v46;
            goto LABEL_49;
          }

          sub_8224(&v151);
        }

        else if (!v55[1])
        {
          sub_8224(v54);
          v48 = 1;
          goto LABEL_48;
        }

        sub_146E0(v152);
        v48 = 0;
        goto LABEL_48;
      }

      sub_146E0(v154);
      v65 = 0;
      goto LABEL_37;
    }

    sub_146E0(v157);
    v74 = 0;
    goto LABEL_26;
  }

  v19 = v114;
  v20 = sub_BF704();
  (*(v113 + 16))(v19, v20, v111);
  v43 = sub_C3224();
  v40 = v43;
  v42 = sub_C3874();
  v41 = v42;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v44 = sub_C3C64();
  if (os_log_type_enabled(v43, v42))
  {
    v21 = v110;
    v31 = sub_C3954();
    v27 = v31;
    v28 = sub_21E8(&qword_EE828, &qword_C5100);
    v29 = 0;
    v32 = sub_5DD4(0, v28, v28);
    v30 = v32;
    v33 = sub_5DD4(v29, &type metadata for Any + 8, &type metadata for Any + 8);
    v165 = v31;
    v164 = v32;
    v163 = v33;
    v34 = 0;
    v35 = &v165;
    sub_5E28(0, &v165);
    sub_5E28(v34, v35);
    v162 = v44;
    v36 = &v24;
    __chkstk_darwin(&v24);
    v37 = &v24 - 6;
    *(&v24 - 4) = v22;
    *(&v24 - 3) = &v164;
    *(&v24 - 2) = &v163;
    v38 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v39 = v21;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v40, v41, "Bobcat locale expansion feature flag not enabled", v27, 2u);
      v25 = 0;
      sub_5E88(v30, 0, v28);
      sub_5E88(v33, v25, &type metadata for Any + 8);
      sub_C3934();

      v26 = v39;
    }
  }

  else
  {

    v26 = v110;
  }

  v24 = v26;

  (*(v113 + 8))(v114, v111);
  v90 = 0;
  v91 = v24;
  return v90 & 1;
}

uint64_t sub_56FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>, uint64_t a7)
{
  v269 = v341;
  v294 = a5;
  v293 = a4;
  v292 = a3;
  v296 = a2;
  v295 = a1;
  v270 = a6;
  v289 = 0;
  v357 = 0;
  v356 = 0;
  v355 = 0;
  v354 = 0;
  v353 = 0;
  v352 = 0;
  v351 = 0;
  v342 = 0;
  memset(v341, 0, sizeof(v341));
  v331 = 0;
  v330 = 0;
  v329 = 0;
  v328 = 0;
  v327 = 0;
  v326 = 0;
  v325 = 0;
  v324[0] = 0;
  v322[0] = 0;
  v321[0] = 0;
  v315 = 0u;
  v314 = 0u;
  v313 = 0u;
  v271 = sub_C3194();
  v272 = *(v271 - 8);
  v273 = v272;
  __chkstk_darwin(0);
  v274 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v275 = sub_C3234();
  v276 = *(v275 - 8);
  v277 = v276;
  v279 = *(v276 + 64);
  __chkstk_darwin(v275 - 8);
  v281 = (v279 + 15) & 0xFFFFFFFFFFFFFFF0;
  v278 = &v82[-v281];
  __chkstk_darwin(&v82[-v281]);
  v280 = &v82[-v281];
  __chkstk_darwin(&v82[-v281]);
  v282 = &v82[-v281];
  v283 = (*(*(sub_21E8(&qword_EFA10, &qword_C6590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v289);
  v284 = &v82[-v283];
  v285 = sub_C1AC4();
  v286 = *(v285 - 8);
  v287 = v286;
  __chkstk_darwin(v285 - 8);
  v288 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v290 = (*(*(sub_21E8(&qword_EFA00, &unk_C6570) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v289);
  v305 = &v82[-v290];
  v291 = &v82[-v290];
  v306 = sub_C30A4();
  v297 = v306;
  v298 = *(v306 - 8);
  v304 = v298;
  v299 = v298;
  v300 = *(v298 + 64);
  __chkstk_darwin(v295);
  v302 = (v300 + 15) & 0xFFFFFFFFFFFFFFF0;
  v301 = &v82[-v302];
  __chkstk_darwin(v10);
  v303 = &v82[-v302];
  v357 = &v82[-v302];
  v355 = v11;
  v356 = v12;
  v354 = v13;
  v353 = v14;
  v352 = v15;
  v351 = v7;
  sub_540F0(v11, v12, v16);
  if ((*(v304 + 48))(v305, 1, v306) == 1)
  {
    sub_58EEC(v291);
    result = v268;
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = v268;
    goto LABEL_22;
  }

  (*(v299 + 32))(v303, v291, v297);
  sub_552E0(v303, v293, v294, v347);
  if (!v347[3])
  {
    v68 = v280;
    sub_1FA80(v347);
    v69 = sub_BF704();
    (*(v277 + 16))(v68, v69, v275);
    v129 = sub_C3224();
    v126 = v129;
    v128 = sub_C3874();
    v127 = v128;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v130 = sub_C3C64();
    if (os_log_type_enabled(v129, v128))
    {
      v124 = v268;
      v116 = sub_C3954();
      v112 = v116;
      v113 = sub_21E8(&qword_EE828, &qword_C5100);
      v114 = 0;
      v117 = sub_5DD4(0, v113, v113);
      v115 = v117;
      v118 = sub_5DD4(v114, &type metadata for Any + 8, &type metadata for Any + 8);
      v346 = v116;
      v345 = v117;
      v344 = v118;
      v119 = 0;
      v120 = &v346;
      sub_5E28(0, &v346);
      sub_5E28(v119, v120);
      v343 = v130;
      v121 = v82;
      __chkstk_darwin(v82);
      v122 = &v82[-48];
      *&v82[-32] = v70;
      *&v82[-24] = &v345;
      *&v82[-16] = &v344;
      v123 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      v71 = v124;
      sub_C3654();
      v125 = v71;
      if (v71)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v126, v127, "No NLG dialog retriever triggered", v112, 2u);
        v110 = 0;
        sub_5E88(v115, 0, v113);
        sub_5E88(v118, v110, &type metadata for Any + 8);
        sub_C3934();

        v111 = v125;
      }
    }

    else
    {

      v111 = v268;
    }

    v109 = v111;

    (*(v277 + 8))(v280, v275);
    (*(v299 + 8))(v303, v297);
    result = v109;
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = v109;
    goto LABEL_22;
  }

  v264 = v268;
  v261 = __dst;
  sub_BD6C(v347, __dst);
  v262 = v349;
  v263 = v350;
  v17 = sub_808C(v261, v349);
  v18 = v264;
  v265 = v17;
  sub_58C3C(v292);
  v266 = v18;
  v267 = v18;
  if (!v18)
  {
    (*(v263 + 16))(v339, v288, v303, v293, v262);
    v259 = 0;
    v260 = 0;
    (*(v287 + 8))(v288, v285);
    v19 = v269;
    v20 = v339[0];
    v21 = v339[1];
    v342 = v340;
    v269[2] = v339[2];
    v19[1] = v21;
    *v19 = v20;
    v253 = v335;
    sub_592F8(v341, v335);
    v254 = v332;
    sub_24F4(v253, v332);
    sub_59388(v253);
    v256 = v333;
    v255 = v334;
    sub_808C(v254, v333);
    sub_C31B4();
    v257 = sub_C3064();
    v258 = *(v257 - 8);
    if ((*(v258 + 48))(v284, 1) == 1)
    {
      sub_593BC(v284);
      sub_2560(v332);
    }

    else
    {
      if ((*(v258 + 88))(v284, v257) == enum case for NLGDialogSource.catSwitch(_:))
      {
        (*(v258 + 96))(v284, v257);
        v202 = *v284;
        v203 = v284[1];
        v159 = v203;
        v204 = v284[2];
        v205 = v284[3];
        v160 = v205;
        v209 = v284[4];
        v210 = v284[5];
        v161 = v210;
        v330 = v202;
        v331 = v203;
        v328 = v204;
        v329 = v205;
        v326 = v209;
        v327 = v210;
        sub_2560(v332);
        v216 = sub_21E8(&qword_EF000, &qword_C5E10);
        v194 = 0;
        sub_C3C64();
        v220 = &type metadata for Any + 8;
        v219 = &type metadata for String;
        v221 = &protocol witness table for String;
        v325 = sub_C3374();
        v22 = sub_606E8();
        v164 = *v22;
        v165 = v22[1];

        v23 = sub_60748();
        v162 = *v23;
        v163 = v23[1];

        v324[12] = v219;
        v324[9] = v162;
        v324[10] = v163;
        v324[7] = v164;
        v324[8] = v165;
        v201 = sub_21E8(&qword_EEFF8, &unk_C5AC0);
        v196 = &v325;
        sub_C33F4();
        v24 = sub_607A8();
        v168 = *v24;
        v169 = v24[1];

        v25 = sub_60808();
        v166 = *v25;
        v167 = v25[1];

        v324[6] = v219;
        v324[3] = v166;
        v324[4] = v167;
        v324[1] = v168;
        v324[2] = v169;
        sub_C33F4();
        sub_C3C64();
        v324[0] = sub_C3374();
        v26 = sub_60868();
        v183 = *v26;
        v184 = v26[1];

        v27 = sub_41AEC();
        v170 = *v27;
        v172 = v27[1];

        v187 = 1;
        v208 = 1;
        sub_C3564("#", 1uLL, 1);
        v171 = v28;
        v175 = sub_C3554();
        v177 = v29;

        v222 = v341;
        v173 = v323;
        sub_592F8(v341, v323);
        v174 = v323[5];
        v176 = v323[6];

        sub_59388(v173);
        v178 = sub_C3554();
        v180 = v30;

        sub_C3564("#label", 6uLL, v187);
        v179 = v31;
        v181 = sub_C3554();
        v182 = v32;

        v323[10] = v219;
        v323[7] = v181;
        v323[8] = v182;
        v322[7] = v183;
        v322[8] = v184;
        v190 = v324;
        sub_C33F4();
        v33 = sub_608C8();
        v185 = *v33;
        v186 = v33[1];

        v34 = sub_C3564("com.apple.siri.directInvocation.socialConversation", 0x32uLL, v187);
        v322[6] = v219;
        v322[3] = v34;
        v322[4] = v35;
        v322[1] = v185;
        v322[2] = v186;
        sub_C33F4();
        sub_C3C64();
        v322[0] = sub_C3374();
        v188 = sub_C3564("intentName", 0xAuLL, v187);
        v189 = v36;

        v321[12] = v219;
        v321[9] = v204;
        v321[10] = v205;
        v321[7] = v188;
        v321[8] = v189;
        sub_C33F4();
        v37 = sub_60928();
        v192 = *v37;
        v193 = v37[1];

        v191 = v322[0];

        v321[6] = v201;
        v321[3] = v191;
        v321[1] = v192;
        v321[2] = v193;
        sub_C33F4();
        v321[0] = sub_C3C64();
        v195 = v324[0];

        v320[13] = v195;
        v197 = sub_21E8(&qword_EFA20, qword_C65A0);
        sub_C3724();
        v38 = sub_60988();
        v199 = *v38;
        v200 = v38[1];

        v198 = v321[0];

        v320[12] = v197;
        v320[9] = v198;
        v320[7] = v199;
        v320[8] = v200;
        sub_C33F4();

        sub_C30B4();
        v224 = sub_C3084();
        v225 = v39;
        v206 = *(v299 + 8);
        v207 = (v299 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v206(v301, v297);
        v215 = sub_C3C64();
        v214 = v40;

        v41 = v222;
        v42 = v210;
        v43 = v214;
        *v214 = v209;
        v43[1] = v42;
        v211 = v320;
        sub_592F8(v41, v320);
        v217 = v317;
        sub_24F4(v211, v317);
        sub_59388(v211);
        v213 = v318;
        v212 = v319;
        sub_808C(v217, v318);
        v44 = sub_C31A4();
        v45 = v282;
        v46 = v214;
        v214[5] = v219;
        v46[2] = v44;
        v46[3] = v47;
        sub_4E48();
        v218 = v48;
        sub_2560(v217);
        v226 = sub_C3374();
        v223 = v316;
        sub_592F8(v222, v316);
        v227 = v316[5];
        v228 = v316[6];

        sub_59388(v223);
        v229 = v325;

        v233 = &v358;
        sub_3E1A0(v224, v225, v226, v227, v228, v229, &v358);
        v230 = v358;
        v231 = v359;
        v232 = v360;
        v313 = v358;
        v314 = v359;
        v315 = v360;
        v49 = sub_BF704();
        (*(v277 + 16))(v45, v49, v275);
        sub_59464(v233, v312);
        v241 = 7;
        v50 = swift_allocObject();
        v242 = v50;
        v51 = v269[14];
        v52 = v269[15];
        v50[3] = v269[16];
        v50[2] = v52;
        v50[1] = v51;
        v252 = sub_C3224();
        v234 = v252;
        v251 = sub_C3874();
        v235 = v251;
        v236 = 17;
        v245 = swift_allocObject();
        v237 = v245;
        v238 = 32;
        *(v245 + 16) = 32;
        v53 = swift_allocObject();
        v54 = v238;
        v246 = v53;
        v239 = v53;
        *(v53 + 16) = 8;
        v240 = v54;
        v55 = swift_allocObject();
        v56 = v242;
        v243 = v55;
        *(v55 + 16) = sub_5955C;
        *(v55 + 24) = v56;
        v57 = swift_allocObject();
        v58 = v243;
        v249 = v57;
        v244 = v57;
        *(v57 + 16) = sub_7BBC;
        *(v57 + 24) = v58;
        v250 = sub_21E8(&unk_EEFA0, &unk_C50F0);
        v247 = sub_C3C64();
        v248 = v59;

        v60 = v245;
        v61 = v248;
        *v248 = sub_7B48;
        v61[1] = v60;

        v62 = v246;
        v63 = v248;
        v248[2] = sub_7B48;
        v63[3] = v62;

        v64 = v248;
        v65 = v249;
        v248[4] = sub_7C08;
        v64[5] = v65;
        sub_4E48();

        if (os_log_type_enabled(v252, v251))
        {
          v156 = v259;
          v151 = sub_C3954();
          v148 = v151;
          v149 = sub_21E8(&qword_EE828, &qword_C5100);
          v152 = sub_5DD4(0, v149, v149);
          v150 = v152;
          v154 = 1;
          v153 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v311 = v151;
          v310 = v152;
          v309 = v153;
          v155 = &v311;
          sub_5E28(2, &v311);
          sub_5E28(v154, v155);
          v66 = v156;
          v307 = sub_7B48;
          v308 = v237;
          sub_5E3C(&v307, v155, &v310, &v309);
          v157 = v66;
          v158 = v66;
          if (v66)
          {
            v146 = 0;

            __break(1u);
          }

          else
          {
            v307 = sub_7B48;
            v308 = v239;
            sub_5E3C(&v307, &v311, &v310, &v309);
            v144 = 0;
            v145 = 0;
            v307 = sub_7C08;
            v308 = v244;
            sub_5E3C(&v307, &v311, &v310, &v309);
            v142 = 0;
            v143 = 0;
            _os_log_impl(&dword_0, v234, v235, "Returning NLG override: %s", v148, 0xCu);
            sub_5E88(v150, 0, v149);
            sub_5E88(v153, 1, &type metadata for Any + 8);
            sub_C3934();

            v147 = v142;
          }
        }

        else
        {

          v147 = v259;
        }

        v134 = v147;

        (*(v277 + 8))(v282, v275);
        v131 = *(&v230 + 1);
        v132 = v231;
        v133 = *(&v232 + 1);
        sub_1D7C8(v321);
        sub_1D7C8(v322);
        sub_1D7C8(v324);
        sub_1D7C8(&v325);

        sub_59388(v341);
        sub_2560(__dst);
        v206(v303, v297);
        result = v134;
        v135 = v230;
        v136 = v131;
        v137 = v132;
        v138 = *(&v231 + 1);
        v139 = v232;
        v140 = v133;
        v141 = v134;
        goto LABEL_22;
      }

      (*(v258 + 8))(v284, v257);
      sub_2560(v332);
    }

    sub_59388(v341);
    sub_2560(__dst);
    (*(v299 + 8))(v303, v297);
    result = v259;
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = v259;
LABEL_22:
    v72 = v270;
    v73 = v136;
    v74 = v137;
    v75 = v138;
    v76 = v139;
    v77 = v140;
    *v270 = v135;
    v72[1] = v73;
    v72[2] = v74;
    v72[3] = v75;
    v72[4] = v76;
    v72[5] = v77;
    return result;
  }

  v106 = v267;
  v105 = 0;
  v107 = v105;
  v108 = v106;
  swift_errorRetain();
  v338[1] = v108;
  sub_21E8(&qword_EFA18, &qword_C6598);
  if (swift_dynamicCast())
  {
    if ((*(v273 + 88))(v274, v271) == enum case for NLGDialogProviderError.noFileFound(_:))
    {
      v78 = v278;
      v79 = sub_BF704();
      (*(v277 + 16))(v78, v79, v275);
      v103 = sub_C3224();
      v100 = v103;
      v102 = sub_C3884();
      v101 = v102;
      sub_21E8(&unk_EEFA0, &unk_C50F0);
      v104 = sub_C3C64();
      if (os_log_type_enabled(v103, v102))
      {
        v98 = v107;
        v90 = sub_C3954();
        v86 = v90;
        v87 = sub_21E8(&qword_EE828, &qword_C5100);
        v88 = 0;
        v91 = sub_5DD4(0, v87, v87);
        v89 = v91;
        v92 = sub_5DD4(v88, &type metadata for Any + 8, &type metadata for Any + 8);
        v338[0] = v90;
        v337 = v91;
        v336 = v92;
        v93 = 0;
        v94 = v338;
        sub_5E28(0, v338);
        sub_5E28(v93, v94);
        v335[7] = v104;
        v95 = &a7;
        __chkstk_darwin(&a7);
        v96 = var20;
        var20[2] = v80;
        var20[3] = &v337;
        var20[4] = &v336;
        v97 = sub_21E8(&unk_EEFB0, qword_C5110);
        sub_8128();
        v81 = v98;
        sub_C3654();
        v99 = v81;
        if (v81)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_0, v100, v101, "No NLG asset file found", v86, 2u);
          v84 = 0;
          sub_5E88(v89, 0, v87);
          sub_5E88(v92, v84, &type metadata for Any + 8);
          sub_C3934();

          v85 = v99;
        }
      }

      else
      {

        v85 = v107;
      }

      v83 = v85;

      (*(v277 + 8))(v278, v275);

      sub_2560(__dst);
      (*(v299 + 8))(v303, v297);
      result = v83;
      v135 = 0;
      v136 = 0;
      v137 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
      v141 = v83;
      goto LABEL_22;
    }

    (*(v273 + 8))(v274, v271);

    sub_2560(__dst);
    return (*(v299 + 8))(v303, v297);
  }

  else
  {

    sub_2560(__dst);
    return (*(v299 + 8))(v303, v297);
  }
}

uint64_t sub_58BEC(void *a1)
{
  sub_59464(a1, v4);
  memcpy(__dst, a1, sizeof(__dst));
  return sub_C34F4();
}

void sub_58C3C(void *a1)
{
  sub_210D0();
  type metadata accessor for DialogService(0);
  v1 = sub_2115C();
  _objc_retain(a1);
  sub_A93A4(a1, v1);
  _objc_release(a1);
  _objc_release(v1);
}

void *sub_58DC4(const void *a1, void *a2)
{
  v6 = sub_C30A4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EFA00, &unk_C6570);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_58EEC(uint64_t a1)
{
  v3 = sub_C30A4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_590AC()
{
  v2 = *(sub_C1C64() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_59250(uint64_t a1)
{
  v3 = sub_C1BF4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_592F8(void *a1, void *a2)
{
  v2 = a1[3];
  a2[3] = v2;
  a2[4] = a1[4];
  (**(v2 - 8))();
  a2[5] = a1[5];
  v6 = a1[6];

  result = a2;
  a2[6] = v6;
  return result;
}

uint64_t sub_593BC(uint64_t a1)
{
  v3 = sub_C3064();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_59464(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  v4 = a1[2];

  a2[2] = v4;
  a2[3] = a1[3];
  v6 = a1[4];

  a2[4] = v6;
  v8 = a1[5];

  result = a2;
  a2[5] = v8;
  return result;
}

uint64_t sub_59504()
{

  return swift_deallocObject();
}

uint64_t sub_5966C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_59784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t *sub_59974()
{
  if (qword_EE598 != -1)
  {
    swift_once();
  }

  return &qword_F1118;
}

uint64_t *sub_599D4()
{
  if (qword_EE5B0 != -1)
  {
    swift_once();
  }

  return &qword_F1160;
}

uint64_t *sub_59A34()
{
  if (qword_EE5B8 != -1)
  {
    swift_once();
  }

  return &qword_F1178;
}

uint64_t *sub_59A94()
{
  if (qword_EE5A0 != -1)
  {
    swift_once();
  }

  return &qword_F1130;
}

uint64_t *sub_59AF4()
{
  if (qword_EE5C0 != -1)
  {
    swift_once();
  }

  return &qword_F1190;
}

uint64_t *sub_59B54()
{
  if (qword_EE5C8 != -1)
  {
    swift_once();
  }

  return &qword_F11A8;
}

uint64_t sub_59BB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a8;
  *(v8 + 96) = a7;
  *(v8 + 88) = a6;
  *(v8 + 34) = a5 & 1;
  *(v8 + 33) = a4;
  *(v8 + 80) = a3;
  *(v8 + 72) = a2;
  *(v8 + 64) = a1;
  *(v8 + 56) = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 168) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 112) = *(a8 - 8);
  *(v8 + 120) = swift_task_alloc();
  v9 = sub_C3214();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 168) = a5 & 1;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;

  return _swift_task_switch(sub_59DB0, 0);
}

uint64_t sub_59DB0()
{
  v6 = *(v0 + 88);
  *(v0 + 56) = v0;
  v4 = *sub_5A968();
  _objc_retain(v4);
  sub_C31F4();
  sub_C38E4();
  v5 = *sub_5A968();
  _objc_retain(v5);
  sub_C31E4();
  _objc_release(v5);
  v8 = (v6 + *v6);
  v1 = swift_task_alloc();
  v7[19] = v1;
  *v1 = v7[7];
  v1[1] = sub_59F64;
  v2 = v7[15];

  return v8(v2);
}

uint64_t sub_59F64()
{
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 160) = v0;

  if (v0)
  {
    v2 = sub_5A364;
  }

  else
  {
    v2 = sub_5A0CC;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_5A0CC()
{
  *(v0 + 56) = v0;
  sub_C38D4();
  v11 = *sub_5A968();
  _objc_retain(v11);
  v8 = v10[18];
  v7 = v10[16];
  v9 = v10[15];
  v5 = v10[13];
  v4 = v10[8];
  v6 = v10[17];
  v3 = v10[14];
  sub_21E8(&qword_EFAF8, qword_C6648);
  sub_C3C64();
  sub_C31D4();

  _objc_release(v11);
  (*(v3 + 16))(v4, v9, v5);
  (*(v3 + 8))(v9, v5);
  (*(v6 + 8))(v8, v7);

  v1 = *(v10[7] + 8);

  return v1();
}

uint64_t sub_5A364()
{
  v1 = *(v0 + 136);
  *(v0 + 56) = v0;
  (*(v1 + 8))();

  v2 = *(*(v0 + 56) + 8);

  return v2();
}

uint64_t sub_5A43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a8;
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v44 = a4;
  v41 = a5;
  v23 = a7;
  v24 = "";
  v25 = "enableTelemetry=YES";
  v52 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v53 = a7;
  v26 = *(a7 - 8);
  v27 = a7 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v40 = v15 - v28;
  v52 = v15 - v28;
  v29 = sub_C3214();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v37 = v15 - v32;
  v51 = v15 - v32;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v47 = v12 & 1;
  v45 = v13;
  v46 = a6;
  v33 = *sub_5A968();
  _objc_retain(v33);
  sub_C31F4();
  v38 = sub_C38E4();
  v39 = *sub_5A968();
  _objc_retain(v39);
  sub_C31E4();
  _objc_release(v39);
  v41();
  v42 = sub_C38D4();
  v43 = *sub_5A968();
  _objc_retain(v43);
  if (v44)
  {
    v19 = v25;
    v20 = 19;
  }

  else
  {
    v19 = v24;
    v20 = 0;
  }

  v21 = 2;
  v16 = 2;
  v15[1] = v20;
  v17 = v19;
  sub_21E8(&qword_EFAF8, qword_C6648);
  v18 = sub_C3C64();
  sub_C31D4();

  _objc_release(v43);
  (*(v26 + 16))(v22, v40, v23);
  (*(v26 + 8))(v40, v23);
  return (*(v30 + 8))(v37, v29);
}

uint64_t sub_5A834()
{
  result = sub_C3564("com.apple.siri.canned", 0x15uLL, 1);
  qword_F1100 = result;
  qword_F1108 = v1;
  return result;
}

uint64_t *sub_5A878()
{
  if (qword_EE588 != -1)
  {
    swift_once();
  }

  return &qword_F1100;
}

uint64_t sub_5A8D8()
{
  sub_5C3F0();
  sub_C3564("com.apple.siri.canned", 0x15uLL, 1);
  sub_C3564("CannedDomainSupport", 0x13uLL, 1);
  result = sub_C3924();
  qword_F1110 = result;
  return result;
}

uint64_t *sub_5A968()
{
  if (qword_EE590 != -1)
  {
    swift_once();
  }

  return &qword_F1110;
}

uint64_t sub_5A9EC(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)()), uint64_t a8, uint64_t a9)
{
  v53 = a1;
  v54 = a2;
  v55 = a3;
  v49 = a4;
  v51 = a5;
  v52 = a6;
  v61 = a7;
  v59 = a9;
  v60 = sub_5BD3C;
  v62 = sub_5BE68;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v80 = a9;
  v68 = sub_C3214();
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v44 = v65;
  v45 = *(v65 + 64);
  v41 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v47 = &v40 - v41;
  v42 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v67 = &v40 - v42;
  v79 = &v40 - v42;
  v76 = v12;
  v77 = v13;
  v78 = v14;
  v75 = v15 & 1;
  v73 = v16;
  v74 = v17;
  v71 = v18;
  v72 = a8;
  v43 = *sub_5A968();
  _objc_retain(v43);
  sub_C31F4();
  (*(v65 + 16))(v47, v67, v68);

  v46 = (*(v44 + 80) + 41) & ~*(v44 + 80);
  v58 = 7;
  v48 = v46 + v45;
  v50 = (v46 + v45 + 8) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v46;
  v21 = v47;
  v22 = v53;
  v23 = v54;
  v24 = v55;
  v25 = v65;
  v26 = v68;
  v64 = v19;
  *(v19 + 16) = v59;
  *(v19 + 24) = v22;
  *(v19 + 32) = v23;
  *(v19 + 40) = v24;
  (*(v25 + 32))(v19 + v20, v21, v26);
  v27 = v50;
  v28 = v51;
  v29 = v52;
  v30 = v60;
  v31 = v64;
  *(v64 + v48) = v49;
  v32 = (v31 + v27);
  *v32 = v28;
  v32[1] = v29;
  v69 = v30;
  v70 = v31;
  v56 = sub_C38E4();
  v57 = *sub_5A968();
  _objc_retain(v57);
  sub_C31E4();
  _objc_release(v57);

  v33 = swift_allocObject();
  v34 = v60;
  v35 = v61;
  v36 = v64;
  v37 = v33;
  v38 = v62;
  v63 = v37;
  v37[2] = v59;
  v37[3] = v34;
  v37[4] = v36;
  v35(v38);

  return (*(v65 + 8))(v67, v68);
}

uint64_t sub_5AE34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, char a6, void (*a7)(uint64_t), uint64_t a8)
{
  sub_C38D4();
  v11 = *sub_5A968();
  _objc_retain(v11);
  sub_21E8(&qword_EFAF8, qword_C6648);
  sub_C3C64();
  sub_C31D4();

  _objc_release(v11);

  a7(a1);
}

uint64_t sub_5B004(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{

  a2(a1);
}

uint64_t sub_5B078(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t (*)()), uint64_t a12, uint64_t a13)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v56 = a4;
  v57 = a5;
  v68 = a6;
  v63 = a7;
  v64 = a8;
  v58 = a9;
  v60 = a10;
  v75 = a11;
  v73 = a13;
  v74 = sub_5BF80;
  v76 = sub_5BE68;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v92 = 0;
  v93 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v98 = a13;
  v82 = sub_C3214();
  v79 = *(v82 - 8);
  v80 = v82 - 8;
  v51 = v79;
  v52 = *(v79 + 64);
  v49 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v54 = &v49 - v49;
  __chkstk_darwin(v13);
  v81 = &v49 - v14;
  v97 = &v49 - v14;
  v94 = v15;
  v95 = v16;
  v96 = v17;
  v92 = v18;
  v93 = v19;
  v89 = v20;
  v90 = v21;
  v91 = v22;
  v87 = v58;
  v88 = v60;
  v85 = v23;
  v86 = a12;
  v50 = *sub_5A968();
  _objc_retain(v50);
  sub_C31F4();
  (*(v79 + 16))(v54, v81, v82);

  v53 = (*(v51 + 80) + 41) & ~*(v51 + 80);
  v72 = 7;
  v55 = (v53 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v53;
  v26 = v54;
  v27 = v65;
  v28 = v66;
  v29 = v67;
  v30 = v79;
  v31 = v82;
  v78 = v24;
  *(v24 + 16) = v73;
  *(v24 + 24) = v27;
  *(v24 + 32) = v28;
  *(v24 + 40) = v29;
  (*(v30 + 32))(v24 + v25, v26, v31);
  v32 = v57;
  v33 = v74;
  v34 = v78;
  v35 = (v78 + v55);
  *v35 = v56;
  v35[1] = v32;
  v83 = v33;
  v84 = v34;
  v69 = sub_C38E4();
  v71 = *sub_5A968();
  _objc_retain(v71);
  v61 = sub_21E8(&qword_EFAF8, qword_C6648);
  v62 = sub_C3C64();
  v59 = v36;

  v59[3] = &type metadata for String;
  v37 = sub_5C050();
  v38 = v58;
  v39 = v59;
  v40 = v60;
  v59[4] = v37;
  *v39 = v38;
  v39[1] = v40;
  sub_4E48();
  v70 = v41;
  sub_C31D4();

  _objc_release(v71);

  v42 = swift_allocObject();
  v43 = v74;
  v44 = v75;
  v45 = v78;
  v46 = v42;
  v47 = v76;
  v77 = v46;
  v46[2] = v73;
  v46[3] = v43;
  v46[4] = v45;
  v44(v47);

  return (*(v79 + 8))(v81, v82);
}

uint64_t sub_5B624(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  sub_C38D4();
  v8 = *sub_5A968();
  _objc_retain(v8);
  sub_C31E4();
  _objc_release(v8);

  a6(a1);
}

uint64_t sub_5B71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = a4;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v19 = sub_C3214();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v20 = &v8 - v9;
  v24 = &v8 - v9;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v10 = *sub_5A968();
  _objc_retain(v10);
  sub_C31F4();
  v14 = sub_C38E4();
  v15 = *sub_5A968();
  _objc_retain(v15);
  sub_C31E4();
  _objc_release(v15);
  (*(v17 + 16))(v16, v20, v19);
  return (*(v17 + 8))(v20, v19);
}

void sub_5B8B4()
{
  sub_5B8FC();
  qword_F1118 = v0;
  qword_F1120 = v1;
  byte_F1128 = v2;
}

void sub_5B960()
{
  sub_5B8FC();
  qword_F1130 = v0;
  qword_F1138 = v1;
  byte_F1140 = v2;
}

void sub_5B9D0()
{
  sub_5B8FC();
  qword_F1148 = v0;
  qword_F1150 = v1;
  byte_F1158 = v2;
}

uint64_t *sub_5BA18()
{
  if (qword_EE5A8 != -1)
  {
    swift_once();
  }

  return &qword_F1148;
}

void sub_5BAA0()
{
  sub_5B8FC();
  qword_F1160 = v0;
  qword_F1168 = v1;
  byte_F1170 = v2;
}

void sub_5BB10()
{
  sub_5B8FC();
  qword_F1178 = v0;
  qword_F1180 = v1;
  byte_F1188 = v2;
}

void sub_5BB80()
{
  sub_5B8FC();
  qword_F1190 = v0;
  qword_F1198 = v1;
  byte_F11A0 = v2;
}

void sub_5BBF0()
{
  sub_5B8FC();
  qword_F11A8 = v0;
  qword_F11B0 = v1;
  byte_F11B8 = v2;
}

uint64_t sub_5BC38()
{
  v2 = *(sub_C3214() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 41) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_5BD3C(uint64_t a1)
{
  v5 = *(sub_C3214() - 8);
  v2 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  return sub_5AE34(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v2, *(v1 + v2 + *(v5 + 64)) & 1, *(v1 + ((v2 + *(v5 + 64) + 8) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v2 + *(v5 + 64) + 8) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_5BE84()
{
  v2 = *(sub_C3214() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 41) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_5BF80(uint64_t a1)
{
  v11 = *(sub_C3214() - 8);
  v2 = (*(v11 + 80) + 41) & ~*(v11 + 80);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v1 + ((v2 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_5B624(a1, v3, v4, v5, v1 + v2, v7, v8);
}

unint64_t sub_5C050()
{
  v2 = qword_EFB00;
  if (!qword_EFB00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB00);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_5C14C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_5C160(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 17))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_5C240(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 16) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t sub_5C3F0()
{
  v2 = qword_EFB08;
  if (!qword_EFB08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EFB08);
    return ObjCClassMetadata;
  }

  return v2;
}

BOOL sub_5C454(uint64_t a1, void *a2)
{
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  sub_C3C64();
  *v2 = "graphName";
  *(v2 + 8) = 9;
  *(v2 + 16) = 2;
  sub_4E48();
  v5 = sub_C3BC4(v6, v4);

  return v5 != 0;
}

unint64_t sub_5C5AC()
{
  v2 = qword_EFB10;
  if (!qword_EFB10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB10);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_5C6F8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5C454(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_5C738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5C52C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_5C768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a1;
  v8[8] = v8;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[9] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[10] = 0;
  v9 = sub_C3234();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_C2464();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v21 = swift_task_alloc();
  v8[17] = v21;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a5;
  v8[9] = a6;
  v8[6] = a7;
  v8[7] = a8;
  v11 = swift_task_alloc();
  *(v13 + 144) = v11;
  *v11 = *(v13 + 64);
  v11[1] = sub_5C9C4;

  return sub_5D300(v21, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_5C9C4()
{
  v4 = *v1;
  *(v4 + 64) = *v1;
  *(v4 + 152) = v0;

  if (v0)
  {
    v2 = sub_5CC34;
  }

  else
  {
    v2 = sub_5CB2C;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_5CB2C()
{
  v4 = v0[17];
  v3 = v0[16];
  v5 = v0[15];
  v0[8] = v0;
  sub_C20D4();
  (*(v3 + 8))(v4, v5);

  v1 = *(v0[8] + 8);

  return v1();
}

uint64_t sub_5CC34()
{
  v30 = v0;
  v16 = v0[19];
  v1 = v0[14];
  v14 = v0[13];
  v15 = v0[12];
  v0[8] = v0;
  swift_errorRetain();
  v0[10] = v16;
  v2 = sub_BF704();
  (*(v14 + 16))(v1, v2, v15);
  swift_errorRetain();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v23 = sub_C3224();
  v24 = sub_C3884();
  v19 = swift_allocObject();
  *(v19 + 16) = 32;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1A354;
  *(v18 + 24) = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_7BBC;
  *(v21 + 24) = v18;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v22 = v3;

  *v22 = sub_7B48;
  v22[1] = v19;

  v22[2] = sub_7B48;
  v22[3] = v20;

  v22[4] = sub_7C08;
  v22[5] = v21;
  sub_4E48();

  if (os_log_type_enabled(v23, v24))
  {
    buf = sub_C3954();
    v9 = sub_21E8(&qword_EE828, &qword_C5100);
    v11 = sub_5DD4(0, v9, v9);
    v12 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v25 = buf;
    v26 = v11;
    v27 = v12;
    sub_5E28(2, &v25);
    sub_5E28(1, &v25);
    v28 = sub_7B48;
    v29 = v19;
    sub_5E3C(&v28, &v25, &v26, &v27);
    v28 = sub_7B48;
    v29 = v20;
    sub_5E3C(&v28, &v25, &v26, &v27);
    v28 = sub_7C08;
    v29 = v21;
    sub_5E3C(&v28, &v25, &v26, &v27);
    _os_log_impl(&dword_0, v23, v24, "Unable to write USO protobuf graph: %s", buf, 0xCu);
    sub_5E88(v11, 0, v9);
    sub_5E88(v12, 1, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v7 = v13[14];
  v8 = v13[12];
  v6 = v13[13];
  _objc_release(v23);
  (*(v6 + 8))(v7, v8);
  sub_C20C4();

  v4 = *(v13[8] + 8);

  return v4();
}

uint64_t sub_5D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[27] = a7;
  v8[26] = a6;
  v8[25] = a3;
  v8[24] = a2;
  v8[23] = a1;
  v8[18] = v8;
  v8[6] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = 0;
  v8[19] = 0;
  v8[10] = 0;
  v8[11] = 0;
  v8[20] = 0;
  v8[14] = 0;
  v8[15] = 0;
  v8[21] = 0;
  v8[22] = 0;
  sub_21E8(&qword_EF0D0, qword_C66B0);
  v8[29] = swift_task_alloc();
  v9 = sub_C3234();
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[6] = a2;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = a5;
  v8[19] = a6;
  v8[10] = a7;
  v8[11] = a8;

  return _swift_task_switch(sub_5D50C, 0);
}

uint64_t sub_5D50C(uint64_t a1)
{
  v101 = v1;
  v2 = v1[34];
  v71 = v1[31];
  v72 = v1[30];
  v1[18] = v1;
  v3 = sub_BF704();
  v73 = *(v71 + 16);
  v73(v2, v3, v72);
  v84 = sub_C3224();
  v85 = sub_C3874();
  v77 = swift_allocObject();
  *(v77 + 16) = 32;
  v78 = swift_allocObject();
  *(v78 + 16) = 8;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_5EF88;
  *(v74 + 24) = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1F278;
  *(v75 + 24) = v74;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_7BBC;
  *(v79 + 24) = v75;
  v80 = swift_allocObject();
  *(v80 + 16) = 32;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_5EF98;
  *(v76 + 24) = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_7BBC;
  *(v82 + 24) = v76;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v83 = v4;

  *v83 = sub_7B48;
  v83[1] = v77;

  v83[2] = sub_7B48;
  v83[3] = v78;

  v83[4] = sub_7C08;
  v83[5] = v79;

  v83[6] = sub_7B48;
  v83[7] = v80;

  v83[8] = sub_7B48;
  v83[9] = v81;

  v83[10] = sub_7C08;
  v83[11] = v82;
  sub_4E48();

  if (os_log_type_enabled(v84, v85))
  {
    buf = sub_C3954();
    v66 = sub_21E8(&qword_EE828, &qword_C5100);
    v68 = sub_5DD4(0, v66, v66);
    v69 = sub_5DD4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v96 = buf;
    v97 = v68;
    v98 = v69;
    sub_5E28(2, &v96);
    sub_5E28(2, &v96);
    v99 = sub_7B48;
    v100 = v77;
    sub_5E3C(&v99, &v96, &v97, &v98);
    v99 = sub_7B48;
    v100 = v78;
    sub_5E3C(&v99, &v96, &v97, &v98);
    v99 = sub_7C08;
    v100 = v79;
    sub_5E3C(&v99, &v96, &v97, &v98);
    v99 = sub_7B48;
    v100 = v80;
    sub_5E3C(&v99, &v96, &v97, &v98);
    v99 = sub_7B48;
    v100 = v81;
    sub_5E3C(&v99, &v96, &v97, &v98);
    v99 = sub_7C08;
    v100 = v82;
    sub_5E3C(&v99, &v96, &v97, &v98);
    _os_log_impl(&dword_0, v84, v85, "%s.%s", buf, 0x16u);
    sub_5E88(v68, 0, v66);
    sub_5E88(v69, 2, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v63 = v70[34];
  v64 = v70[30];
  v62 = v70[31];
  _objc_release(v84);
  v65 = *(v62 + 8);
  v65(v63, v64);
  v70[12] = sub_5C52C();
  v70[13] = v5;
  sub_C33E4();
  sub_8224((v70 + 12));
  if (v70[5])
  {
    if (swift_dynamicCast())
    {
      v60 = v70[16];
      v61 = v70[17];
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    v58 = v60;
    v59 = v61;
  }

  else
  {
    sub_1FA80(v70 + 2);
    v58 = 0;
    v59 = 0;
  }

  if (!v59)
  {
    goto LABEL_19;
  }

  v6 = v70[28];
  v7 = v70[27];
  v70[14] = v58;
  v70[15] = v59;
  v8 = sub_5EFC8(v58, v59, v7, v6);
  v57 = v8;
  if (!v8)
  {

LABEL_19:
    v14 = v70[32];
    v28 = v70[30];
    v30 = v70[25];
    v29 = v70[24];
    v15 = sub_BF704();
    v73(v14, v15, v28);

    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    log = sub_C3224();
    v38 = sub_C3884();
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1D834;
    *(v32 + 24) = v31;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_7BBC;
    *(v35 + 24) = v32;
    sub_C3C64();
    v36 = v16;

    *v36 = sub_7B48;
    v36[1] = v33;

    v36[2] = sub_7B48;
    v36[3] = v34;

    v36[4] = sub_7C08;
    v36[5] = v35;
    sub_4E48();

    if (os_log_type_enabled(log, v38))
    {
      v25 = sub_C3954();
      v24 = sub_21E8(&qword_EE828, &qword_C5100);
      v26 = sub_5DD4(0, v24, v24);
      v27 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v86 = v25;
      v87 = v26;
      v88 = v27;
      sub_5E28(2, &v86);
      sub_5E28(1, &v86);
      v89 = sub_7B48;
      v90 = v33;
      sub_5E3C(&v89, &v86, &v87, &v88);
      v89 = sub_7B48;
      v90 = v34;
      sub_5E3C(&v89, &v86, &v87, &v88);
      v89 = sub_7C08;
      v90 = v35;
      sub_5E3C(&v89, &v86, &v87, &v88);
      _os_log_impl(&dword_0, log, v38, "No valid configuration found for NLv4 producer for %s. Returning empty UsoGraph.", v25, 0xCu);
      sub_5E88(v26, 0, v24);
      sub_5E88(v27, 1, &type metadata for Any + 8);
      sub_C3934();
    }

    else
    {
    }

    v20 = v70[32];
    v21 = v70[30];
    v22 = v70[29];
    _objc_release(log);
    v65(v20, v21);
    sub_C28B4();
    sub_C3C64();
    v17 = sub_C2904();
    (*(*(v17 - 8) + 56))(v22, 1);
    v23 = sub_C28F4();
    sub_1E5E8(v22);

    v70[20] = v23;
    sub_C25F4();

    goto LABEL_23;
  }

  v9 = v70[33];
  v48 = v70[30];
  v70[21] = v8;
  v10 = sub_BF704();
  v73(v9, v10, v48);

  v49 = swift_allocObject();
  *(v49 + 16) = v58;
  *(v49 + 24) = v59;
  oslog = sub_C3224();
  v56 = sub_C3874();
  v51 = swift_allocObject();
  *(v51 + 16) = 32;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1D834;
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_7BBC;
  *(v53 + 24) = v50;
  sub_C3C64();
  v54 = v11;

  *v54 = sub_7B48;
  v54[1] = v51;

  v54[2] = sub_7B48;
  v54[3] = v52;

  v54[4] = sub_7C08;
  v54[5] = v53;
  sub_4E48();

  if (os_log_type_enabled(oslog, v56))
  {
    v45 = sub_C3954();
    v44 = sub_21E8(&qword_EE828, &qword_C5100);
    v46 = sub_5DD4(0, v44, v44);
    v47 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v91 = v45;
    v92 = v46;
    v93 = v47;
    sub_5E28(2, &v91);
    sub_5E28(1, &v91);
    v94 = sub_7B48;
    v95 = v51;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7B48;
    v95 = v52;
    sub_5E3C(&v94, &v91, &v92, &v93);
    v94 = sub_7C08;
    v95 = v53;
    sub_5E3C(&v94, &v91, &v92, &v93);
    _os_log_impl(&dword_0, oslog, v56, "NLv4 producer returning a value SDA for %s", v45, 0xCu);
    sub_5E88(v46, 0, v44);
    sub_5E88(v47, 1, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v39 = v70[33];
  v40 = v70[30];
  v42 = v70[29];
  _objc_release(oslog);
  v65(v39, v40);
  sub_C28B4();
  sub_C3C64();
  v41 = v12;

  *v41 = v57;
  sub_4E48();
  v13 = sub_C2904();
  (*(*(v13 - 8) + 56))(v42, 1);
  v43 = sub_C28F4();
  sub_1E5E8(v42);

  v70[22] = v43;
  sub_C25F4();

LABEL_23:

  v18 = *(v70[18] + 8);

  return v18();
}

uint64_t sub_5EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a1;
  v72 = a2;
  v64 = a3;
  v65 = a4;
  v58 = sub_1D834;
  v59 = sub_7BBC;
  v60 = sub_7B48;
  v61 = sub_7B48;
  v62 = sub_7C08;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v63 = 0;
  v66 = sub_C3234();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v70 = &v29 - v69;
  v82 = v4;
  v83 = v5;
  v80 = v6;
  v81 = v7;
  sub_C3564("tell_common_SiriContent", 0x17uLL, 1);
  v73 = v8;
  v74 = sub_C3574();

  if (v74)
  {
    sub_C27A4();
    return sub_C2794();
  }

  else
  {
    sub_C3564("like_common_SiriContent", 0x17uLL, 1);
    v55 = v9;
    v56 = sub_C3574();

    if (v56)
    {
      sub_C2784();
      return sub_C2774();
    }

    else
    {
      sub_C3564("unlike_common_SiriContent", 0x19uLL, 1);
      v53 = v10;
      v54 = sub_C3574();

      if (v54)
      {
        sub_C27D4();
        return sub_C27C4();
      }

      else
      {
        sub_C3564("perform_common_SiriSocialAction", 0x1FuLL, 1);
        v51 = v11;
        v52 = sub_C3574();

        if (v52)
        {
          sub_C27F4();
          return sub_C27E4();
        }

        else
        {
          v12 = v70;
          v13 = sub_BF704();
          (*(v67 + 16))(v12, v13, v66);

          v39 = 32;
          v40 = 7;
          v14 = swift_allocObject();
          v15 = v72;
          v41 = v14;
          *(v14 + 16) = v71;
          *(v14 + 24) = v15;
          v49 = sub_C3224();
          v50 = sub_C3884();
          v38 = 17;
          v43 = swift_allocObject();
          *(v43 + 16) = 32;
          v44 = swift_allocObject();
          *(v44 + 16) = 8;
          v16 = swift_allocObject();
          v17 = v41;
          v42 = v16;
          *(v16 + 16) = v58;
          *(v16 + 24) = v17;
          v18 = swift_allocObject();
          v19 = v42;
          v46 = v18;
          *(v18 + 16) = v59;
          *(v18 + 24) = v19;
          v48 = sub_21E8(&unk_EEFA0, &unk_C50F0);
          v45 = sub_C3C64();
          v47 = v20;

          v21 = v43;
          v22 = v47;
          *v47 = v60;
          v22[1] = v21;

          v23 = v44;
          v24 = v47;
          v47[2] = v61;
          v24[3] = v23;

          v25 = v46;
          v26 = v47;
          v47[4] = v62;
          v26[5] = v25;
          sub_4E48();

          if (os_log_type_enabled(v49, v50))
          {
            v27 = v63;
            v31 = sub_C3954();
            v30 = sub_21E8(&qword_EE828, &qword_C5100);
            v32 = sub_5DD4(0, v30, v30);
            v33 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
            v34 = &v79;
            v79 = v31;
            v35 = &v78;
            v78 = v32;
            v36 = &v77;
            v77 = v33;
            sub_5E28(2, &v79);
            sub_5E28(1, v34);
            v75 = v60;
            v76 = v43;
            sub_5E3C(&v75, v34, v35, v36);
            v37 = v27;
            if (v27)
            {

              __break(1u);
            }

            else
            {
              v75 = v61;
              v76 = v44;
              sub_5E3C(&v75, &v79, &v78, &v77);
              v29 = 0;
              v75 = v62;
              v76 = v46;
              sub_5E3C(&v75, &v79, &v78, &v77);
              _os_log_impl(&dword_0, v49, v50, "Unsupported graphName found in NLv4 producer: %s", v31, 0xCu);
              sub_5E88(v32, 0, v30);
              sub_5E88(v33, 1, &type metadata for Any + 8);
              sub_C3934();
            }
          }

          else
          {
          }

          _objc_release(v49);
          (*(v67 + 8))(v70, v66);
          return 0;
        }
      }
    }
  }
}

uint64_t sub_5F854()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_C3564("socialNLv4", 0xAuLL, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_8224(&v4);
  return v3;
}

uint64_t sub_5F8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v7;
  *(v7 + 16) = v7;
  v16 = *v6;
  v17 = v6[1];
  v8 = swift_task_alloc();
  *(v10 + 24) = v8;
  *v8 = *(v10 + 16);
  v8[1] = sub_4CE4;

  return sub_5C768(a1, a2, a3, a4, a5, a6, v16, v17);
}

unint64_t sub_60064()
{
  v2 = qword_EFB18;
  if (!qword_EFB18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB18);
    return WitnessTable;
  }

  return v2;
}

void sub_600E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_210D0();
  type metadata accessor for SocialConversationFlowDelegatePlugin();
  v4 = sub_2115C();

  _objc_retain(a3);
  _objc_retain(v4);
  sub_C1D14();
  _objc_release(a3);
  _objc_release(v4);
}

uint64_t sub_601E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v42 = a1;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v73 = 0;
  v72 = 0;
  v68 = 0;
  v69 = 0;
  v41 = 0;
  v54 = sub_C1D94();
  v50 = *(v54 - 8);
  v51 = v54 - 8;
  v25 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v53 = &v25 - v25;
  v80 = &v25 - v25;
  v63 = sub_C21C4();
  v60 = *(v63 - 8);
  v61 = v63 - 8;
  v26 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v62 = &v25 - v26;
  v79 = &v25 - v26;
  v78 = v2;
  v29 = sub_C3564("socialCATI", 0xAuLL, 1);
  v64 = v3;
  v76 = v29;
  v77 = v3;
  sub_610E4(v62);
  v27 = sub_C2324();
  v74 = sub_C2314();
  v59 = &v75;
  sub_C2334();

  matched = type metadata accessor for SocialExactMatchUserInputParser();
  v4 = sub_612B4();
  v58 = sub_A9850(v4, v5);
  v73 = v58;
  v32 = type metadata accessor for NLv4UserInputParser();
  v57 = sub_992E4();
  v72 = v57;
  v28 = sub_C2354();
  v70 = sub_C2344();
  v56 = &v71;
  sub_C2364();

  v37 = sub_5F854();
  v55 = v6;
  v68 = v37;
  v69 = v6;
  v30 = sub_61298();
  v31 = v7;

  sub_C1DA4();

  v35 = sub_21E8(&qword_EFB20, &qword_C6810);
  v36 = sub_C3C64();
  v34 = v8;

  v34[3] = v32;
  v9 = sub_612E4();
  v10 = v34;
  v11 = v57;
  v12 = v9;
  v13 = v59;
  v34[4] = v12;
  *v10 = v11;
  sub_24F4(v13, (v10 + 5));

  v34[13] = matched;
  v14 = sub_61364();
  v15 = v34;
  v16 = v58;
  v34[14] = v14;
  v15[10] = v16;
  sub_4E48();
  sub_C1D44();
  v39 = sub_21E8(&qword_EFB38, &qword_C6818);
  v40 = sub_C3C64();
  v38 = v17;
  sub_24F4(v56, v17);

  *(v38 + 64) = &unk_E66A0;
  v18 = sub_613E4();
  v19 = v37;
  v20 = v38;
  v21 = v55;
  *(v38 + 72) = v18;
  *(v20 + 40) = v19;
  *(v20 + 48) = v21;
  sub_4E48();
  sub_C1D74();
  v44 = type metadata accessor for SocialPresentationElementProvider();
  v43 = v66;
  sub_24F4(v42, v66);
  v22 = sub_539D4();
  v45 = sub_61484(v43, v22);
  v46 = v67;
  v67[3] = v44;
  v67[4] = sub_614D8();
  v67[0] = v45;
  sub_C1D84();
  v47 = sub_48128();
  v48 = v23;
  v49 = v65;
  v65[3] = &unk_E51A8;
  v65[4] = sub_61558();
  v65[0] = v47;
  v65[1] = v48;
  sub_C1D54();
  (*(v50 + 32))(v52, v53, v54);

  sub_2560(v56);

  sub_2560(v59);
  (*(v60 + 8))(v62, v63);
}

uint64_t *sub_606E8()
{
  if (qword_EE5D0 != -1)
  {
    swift_once();
  }

  return &qword_F11C0;
}

uint64_t *sub_60748()
{
  if (qword_EE5E8 != -1)
  {
    swift_once();
  }

  return &qword_F11F0;
}

uint64_t *sub_607A8()
{
  if (qword_EE5D8 != -1)
  {
    swift_once();
  }

  return &qword_F11D0;
}

uint64_t *sub_60808()
{
  if (qword_EE5E0 != -1)
  {
    swift_once();
  }

  return &qword_F11E0;
}

uint64_t *sub_60868()
{
  if (qword_EE608 != -1)
  {
    swift_once();
  }

  return &qword_F1230;
}

uint64_t *sub_608C8()
{
  if (qword_EE610 != -1)
  {
    swift_once();
  }

  return &qword_F1240;
}

uint64_t *sub_60928()
{
  if (qword_EE618 != -1)
  {
    swift_once();
  }

  return &qword_F1250;
}

uint64_t *sub_60988()
{
  if (qword_EE5F8 != -1)
  {
    swift_once();
  }

  return &qword_F1210;
}

uint64_t sub_609E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[30] = a1;
  v9 = a2;
  v8[31] = a3;
  v8[25] = sub_1A354;
  v8[26] = sub_7BBC;
  v8[27] = sub_7B48;
  v8[28] = sub_7B48;
  v8[29] = sub_7C08;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v10 = sub_C3234();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v14 = v8 - v13;
  v21 = v3;
  v20 = v4;
  v19 = v5;
  v15 = sub_A7FFC(v4, v5);
  v16 = v6;
  v17 = 0;
  return sub_C1D04();
}

uint64_t sub_610E4@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v17 = 0;
  v16 = sub_C21C4();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v5 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v15 = &v4 - v5;
  v17 = &v4 - v5;
  v11 = 1;
  v6 = sub_C3564("common_SocialConversation", 0x19uLL, 1);
  v7 = v1;
  v8 = sub_61298();
  v9 = v2;

  sub_C2174();

  v10 = 6;
  sub_C3564("target", 6uLL, v11 & 1);
  sub_C2184();
  sub_C3564("action", v10, v11 & 1);
  sub_C21A4();
  sub_C3564("guid", 4uLL, v11 & 1);
  sub_C21B4();
  sub_C3564("dialog", v10, v11 & 1);
  sub_C2194();
  return (*(v12 + 32))(v14, v15, v16);
}

unint64_t sub_612E4()
{
  v2 = qword_EFB28;
  if (!qword_EFB28)
  {
    type metadata accessor for NLv4UserInputParser();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_61364()
{
  v2 = qword_EFB30;
  if (!qword_EFB30)
  {
    type metadata accessor for SocialExactMatchUserInputParser();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_613E4()
{
  v2 = qword_EFB40;
  if (!qword_EFB40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_614D8()
{
  v2 = qword_EFB48;
  if (!qword_EFB48)
  {
    type metadata accessor for SocialPresentationElementProvider();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_61558()
{
  v2 = qword_EFB50;
  if (!qword_EFB50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_615D0()
{
  result = sub_C3564("snippetName", 0xBuLL, 1);
  qword_F11C0 = result;
  qword_F11C8 = v1;
  return result;
}

uint64_t sub_61614()
{
  v1 = *sub_606E8();

  return v1;
}

uint64_t sub_61650()
{
  result = sub_C3564("visualLocation", 0xEuLL, 1);
  qword_F11D0 = result;
  qword_F11D8 = v1;
  return result;
}

uint64_t sub_61694()
{
  v1 = *sub_607A8();

  return v1;
}

uint64_t sub_616D0()
{
  result = sub_C3564("conversation", 0xCuLL, 1);
  qword_F11E0 = result;
  qword_F11E8 = v1;
  return result;
}

uint64_t sub_61714()
{
  v1 = *sub_60808();

  return v1;
}

uint64_t sub_61750()
{
  result = sub_C3564("buttonStack", 0xBuLL, 1);
  qword_F11F0 = result;
  qword_F11F8 = v1;
  return result;
}

uint64_t sub_61794()
{
  v1 = *sub_60748();

  return v1;
}

uint64_t sub_617D0()
{
  result = sub_C3564("playWithMeSection", 0x11uLL, 1);
  qword_F1200 = result;
  qword_F1208 = v1;
  return result;
}

uint64_t *sub_61814()
{
  if (qword_EE5F0 != -1)
  {
    swift_once();
  }

  return &qword_F1200;
}

uint64_t sub_61874()
{
  v1 = *sub_61814();

  return v1;
}

uint64_t sub_618B0()
{
  result = sub_C3564("buttons", 7uLL, 1);
  qword_F1210 = result;
  qword_F1218 = v1;
  return result;
}

uint64_t sub_618F4()
{
  v1 = *sub_60988();

  return v1;
}

uint64_t sub_61930()
{
  result = sub_C3564("includeDialog", 0xDuLL, 1);
  qword_F1220 = result;
  qword_F1228 = v1;
  return result;
}

uint64_t *sub_61974()
{
  if (qword_EE600 != -1)
  {
    swift_once();
  }

  return &qword_F1220;
}

uint64_t sub_619D4()
{
  v1 = *sub_61974();

  return v1;
}

uint64_t sub_61A10()
{
  result = sub_C3564("label", 5uLL, 1);
  qword_F1230 = result;
  qword_F1238 = v1;
  return result;
}

uint64_t sub_61A54()
{
  v1 = *sub_60868();

  return v1;
}

uint64_t sub_61A90()
{
  result = sub_C3564("directInvocation", 0x10uLL, 1);
  qword_F1240 = result;
  qword_F1248 = v1;
  return result;
}

uint64_t sub_61AD4()
{
  v1 = *sub_608C8();

  return v1;
}

uint64_t sub_61B10()
{
  result = sub_C3564("userData", 8uLL, 1);
  qword_F1250 = result;
  qword_F1258 = v1;
  return result;
}

uint64_t sub_61B54()
{
  v1 = *sub_60928();

  return v1;
}

uint64_t sub_61B90()
{
  result = sub_C3564("showAll", 7uLL, 1);
  qword_F1260 = result;
  qword_F1268 = v1;
  return result;
}

uint64_t *sub_61BD4()
{
  if (qword_EE620 != -1)
  {
    swift_once();
  }

  return &qword_F1260;
}

uint64_t sub_61C34()
{
  v1 = *sub_61BD4();

  return v1;
}

uint64_t sub_61C70()
{
  result = sub_C3564("separated", 9uLL, 1);
  qword_F1270 = result;
  qword_F1278 = v1;
  return result;
}

uint64_t *sub_61CB4()
{
  if (qword_EE628 != -1)
  {
    swift_once();
  }

  return &qword_F1270;
}

uint64_t sub_61D14()
{
  v1 = *sub_61CB4();

  return v1;
}

uint64_t sub_61D50()
{
  result = sub_C3564("content", 7uLL, 1);
  qword_F1280 = result;
  qword_F1288 = v1;
  return result;
}

uint64_t *sub_61D94()
{
  if (qword_EE630 != -1)
  {
    swift_once();
  }

  return &qword_F1280;
}

uint64_t sub_61DF4()
{
  v1 = *sub_61D94();

  return v1;
}

uint64_t sub_61E30()
{
  result = sub_C3564("link", 4uLL, 1);
  qword_F1290 = result;
  qword_F1298 = v1;
  return result;
}

uint64_t *sub_61E74()
{
  if (qword_EE638 != -1)
  {
    swift_once();
  }

  return &qword_F1290;
}

uint64_t sub_61ED4()
{
  v1 = *sub_61E74();

  return v1;
}

uint64_t sub_61F10(char a1)
{
  if (a1)
  {
    return sub_C3564("allInvocation", 0xDuLL, 1);
  }

  else
  {
    return sub_C3564("moreInvocation", 0xEuLL, 1);
  }
}

uint64_t sub_61F9C(char a1)
{
  if (a1)
  {
    return sub_C3564("allContinuation", 0xFuLL, 1);
  }

  else
  {
    return sub_C3564("moreContinuation", 0x10uLL, 1);
  }
}

uint64_t sub_62028()
{
  v2 = *(v0 + 72);

  return v2;
}

uint64_t sub_62054(void *a1, uint64_t a2)
{
  v7 = 0;
  v6[6] = a1;
  v6[5] = a2;

  stru_20.fileoff = a2;
  sub_24F4(a1, v6);
  v5 = sub_BF288(v6);

  v7 = v5;

  sub_2560(a1);

  return v5;
}

uint64_t sub_62104(uint64_t a1)
{
  __chkstk_darwin(a1);
  v510 = v2;
  v588 = v3;
  v594 = v4;
  v511 = v1;
  v512 = sub_1D834;
  v513 = sub_7BBC;
  v514 = sub_7B48;
  v515 = sub_7B48;
  v516 = sub_7C08;
  v517 = sub_6B1E0;
  v518 = sub_7BBC;
  v519 = sub_7B48;
  v520 = sub_7B48;
  v521 = sub_7C08;
  v522 = sub_1D834;
  v523 = sub_7BBC;
  v524 = sub_7B48;
  v525 = sub_7B48;
  v526 = sub_7C08;
  v527 = sub_6AF10;
  v528 = sub_7BBC;
  v529 = sub_1D834;
  v530 = sub_7BBC;
  v531 = sub_7B48;
  v532 = sub_7B48;
  v533 = sub_7C08;
  v534 = sub_7B48;
  v535 = sub_7B48;
  v536 = sub_7C08;
  v537 = sub_61794;
  v538 = sub_7BBC;
  v539 = sub_7B48;
  v540 = sub_7B48;
  v541 = sub_7C08;
  v542 = sub_61714;
  v543 = sub_7BBC;
  v544 = sub_6AB8C;
  v545 = sub_4F7C8;
  v546 = sub_4F83C;
  v547 = sub_4F8C4;
  v548 = sub_7B48;
  v549 = sub_7B48;
  v550 = sub_7C08;
  v551 = sub_7B48;
  v552 = sub_7B48;
  v553 = sub_4F910;
  v714 = 0;
  v713 = 0;
  v712 = 0;
  v711 = 0;
  v710 = 0;
  v709 = 0;
  v701 = 0;
  v702 = 0;
  v700 = 0;
  v692 = 0;
  v693 = 0;
  v689 = 0;
  v554 = 0;
  v674 = 0;
  v673[0] = 0;
  v673[1] = 0;
  v670 = 0;
  v662 = 0;
  v663 = 0;
  v654 = 0;
  v655 = 0;
  v649 = 0;
  v645 = 0;
  v637 = 0;
  v638 = 0;
  v636 = 0;
  v631 = 0;
  v632 = 0;
  v569 = 0;
  v555 = sub_C3024();
  v556 = *(v555 - 8);
  v557 = v555 - 8;
  v558 = (*(v556 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v559 = v164 - v558;
  v714 = v164 - v558;
  v560 = sub_C3004();
  v561 = *(v560 - 8);
  v562 = v560 - 8;
  v563 = (*(v561 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v560);
  v564 = v164 - v563;
  v565 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v164 - v563);
  v566 = v164 - v565;
  v713 = v164 - v565;
  v567 = (*(*(sub_21E8(&qword_EEFD0, &unk_C6820) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v569);
  v568 = v164 - v567;
  v570 = sub_C3234();
  v571 = *(v570 - 8);
  v572 = v570 - 8;
  v582 = v571[8];
  v573 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v569);
  v574 = v164 - v573;
  v575 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v576 = v164 - v575;
  v577 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v578 = v164 - v577;
  v579 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v580 = v164 - v579;
  v581 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v583 = v164 - v581;
  v584 = (v582 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v585 = v164 - v584;
  v712 = v11;
  v711 = v12;
  v710 = v1;
  v586 = sub_C2224();
  v587 = swift_allocBox();
  v589 = v13;
  v709 = v13;

  v590 = sub_61298();
  v591 = v14;

  sub_C2214();

  v15 = sub_606E8();
  v592 = *v15;
  v593 = v15[1];

  v595 = v705;
  v705[0] = v592;
  v705[1] = v593;
  sub_C33E4();
  sub_8224(v595);
  if (v706[3])
  {
    if (swift_dynamicCast())
    {
      v508 = v596;
      v509 = v597;
    }

    else
    {
      v508 = 0;
      v509 = 0;
    }

    v506 = v508;
    v507 = v509;
  }

  else
  {
    sub_1FA80(v706);
    v506 = 0;
    v507 = 0;
  }

  v703 = v506;
  v704 = v507;
  if (v507)
  {
    v707 = v703;
    v708 = v704;
  }

  else
  {
    v707 = sub_C3564("textOnlySnippet", 0xFuLL, 1);
    v708 = v16;
    if (v704)
    {
      sub_8224(&v703);
    }
  }

  v17 = v585;
  v491 = v707;
  v492 = v708;
  v701 = v707;
  v702 = v708;
  v18 = sub_BF704();
  v489 = v571[2];
  v490 = v571 + 2;
  v489(v17, v18, v570);

  v494 = 32;
  v495 = 7;
  v19 = swift_allocObject();
  v20 = v492;
  v496 = v19;
  *(v19 + 16) = v491;
  *(v19 + 24) = v20;
  v504 = sub_C3224();
  v505 = sub_C3874();
  v493 = 17;
  v498 = swift_allocObject();
  *(v498 + 16) = 32;
  v499 = swift_allocObject();
  *(v499 + 16) = 8;
  v21 = swift_allocObject();
  v22 = v496;
  v497 = v21;
  *(v21 + 16) = v512;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v497;
  v501 = v23;
  *(v23 + 16) = v513;
  *(v23 + 24) = v24;
  v503 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v500 = sub_C3C64();
  v502 = v25;

  v26 = v498;
  v27 = v502;
  *v502 = v514;
  v27[1] = v26;

  v28 = v499;
  v29 = v502;
  v502[2] = v515;
  v29[3] = v28;

  v30 = v501;
  v31 = v502;
  v502[4] = v516;
  v31[5] = v30;
  sub_4E48();

  if (os_log_type_enabled(v504, v505))
  {
    v32 = v554;
    v482 = sub_C3954();
    v481 = sub_21E8(&qword_EE828, &qword_C5100);
    v483 = sub_5DD4(0, v481, v481);
    v484 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v485 = &v602;
    v602 = v482;
    v486 = &v601;
    v601 = v483;
    v487 = &v600;
    v600 = v484;
    sub_5E28(2, &v602);
    sub_5E28(1, v485);
    v598 = v514;
    v599 = v498;
    sub_5E3C(&v598, v485, v486, v487);
    v488 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v598 = v515;
      v599 = v499;
      sub_5E3C(&v598, &v602, &v601, &v600);
      v479 = 0;
      v598 = v516;
      v599 = v501;
      sub_5E3C(&v598, &v602, &v601, &v600);
      v478 = 0;
      _os_log_impl(&dword_0, v504, v505, "snippetNameAfter: '%s'", v482, 0xCu);
      sub_5E88(v483, 0, v481);
      sub_5E88(v484, 1, &type metadata for Any + 8);
      sub_C3934();

      v480 = v478;
    }
  }

  else
  {
    v33 = v554;

    v480 = v33;
  }

  v472 = v480;
  _objc_release(v504);
  v473 = v571[1];
  v474 = v571 + 1;
  v473(v585, v570);
  sub_C3564("SocialConversation#", 0x13uLL, 1);
  v475 = v34;
  v476 = sub_C3554();
  v477 = v35;

  sub_C21F4();
  if (sub_65E68())
  {
    sub_C2DA4();
    v36 = sub_C2DB4();
    (*(*(v36 - 8) + 56))(v568, 0, 1);
    sub_C21E4();
    v37 = v583;
    v38 = sub_BF704();
    v489(v37, v38, v570);

    v470 = sub_C3224();
    v471 = sub_C3874();
    v461 = 17;
    v463 = 7;
    v465 = swift_allocObject();
    *(v465 + 16) = 32;
    v466 = swift_allocObject();
    *(v466 + 16) = 8;
    v462 = 32;
    v39 = swift_allocObject();
    v40 = v587;
    v464 = v39;
    *(v39 + 16) = v517;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v464;
    v468 = v41;
    *(v41 + 16) = v518;
    *(v41 + 24) = v42;
    v467 = sub_C3C64();
    v469 = v43;

    v44 = v465;
    v45 = v469;
    *v469 = v519;
    v45[1] = v44;

    v46 = v466;
    v47 = v469;
    v469[2] = v520;
    v47[3] = v46;

    v48 = v468;
    v49 = v469;
    v469[4] = v521;
    v49[5] = v48;
    sub_4E48();

    if (os_log_type_enabled(v470, v471))
    {
      v50 = v472;
      v454 = sub_C3954();
      v453 = sub_21E8(&qword_EE828, &qword_C5100);
      v455 = sub_5DD4(0, v453, v453);
      v456 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v457 = &v607;
      v607 = v454;
      v458 = &v606;
      v606 = v455;
      v459 = &v605;
      v605 = v456;
      sub_5E28(2, &v607);
      sub_5E28(1, v457);
      v603 = v519;
      v604 = v465;
      sub_5E3C(&v603, v457, v458, v459);
      v460 = v50;
      if (v50)
      {

        __break(1u);
      }

      else
      {
        v603 = v520;
        v604 = v466;
        sub_5E3C(&v603, &v607, &v606, &v605);
        v451 = 0;
        v603 = v521;
        v604 = v468;
        sub_5E3C(&v603, &v607, &v606, &v605);
        v450 = 0;
        _os_log_impl(&dword_0, v470, v471, "overriding response mode: %s", v454, 0xCu);
        sub_5E88(v455, 0, v453);
        sub_5E88(v456, 1, &type metadata for Any + 8);
        sub_C3934();

        v452 = v450;
      }
    }

    else
    {
      v51 = v472;

      v452 = v51;
    }

    v448 = v452;
    _objc_release(v470);
    v473(v583, v570);
    v449 = v448;
  }

  else
  {
    v449 = v472;
  }

  v52 = v580;
  v435 = v449;
  v53 = sub_BF704();
  v489(v52, v53, v570);

  v437 = 32;
  v438 = 7;
  v54 = swift_allocObject();
  v55 = v492;
  v439 = v54;
  *(v54 + 16) = v491;
  *(v54 + 24) = v55;
  v446 = sub_C3224();
  v447 = sub_C3874();
  v436 = 17;
  v441 = swift_allocObject();
  *(v441 + 16) = 32;
  v442 = swift_allocObject();
  *(v442 + 16) = 8;
  v56 = swift_allocObject();
  v57 = v439;
  v440 = v56;
  *(v56 + 16) = v522;
  *(v56 + 24) = v57;
  v58 = swift_allocObject();
  v59 = v440;
  v444 = v58;
  *(v58 + 16) = v523;
  *(v58 + 24) = v59;
  v443 = sub_C3C64();
  v445 = v60;

  v61 = v441;
  v62 = v445;
  *v445 = v524;
  v62[1] = v61;

  v63 = v442;
  v64 = v445;
  v445[2] = v525;
  v64[3] = v63;

  v65 = v444;
  v66 = v445;
  v445[4] = v526;
  v66[5] = v65;
  sub_4E48();

  if (os_log_type_enabled(v446, v447))
  {
    v67 = v435;
    v428 = sub_C3954();
    v427 = sub_21E8(&qword_EE828, &qword_C5100);
    v429 = sub_5DD4(0, v427, v427);
    v430 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v431 = v612;
    v612[0] = v428;
    v432 = &v611;
    v611 = v429;
    v433 = &v610;
    v610 = v430;
    sub_5E28(2, v612);
    sub_5E28(1, v431);
    v608 = v524;
    v609 = v441;
    sub_5E3C(&v608, v431, v432, v433);
    v434 = v67;
    if (v67)
    {

      __break(1u);
    }

    else
    {
      v608 = v525;
      v609 = v442;
      sub_5E3C(&v608, v612, &v611, &v610);
      v425 = 0;
      v608 = v526;
      v609 = v444;
      sub_5E3C(&v608, v612, &v611, &v610);
      v424 = 0;
      _os_log_impl(&dword_0, v446, v447, "visualParameters defines RF snippet '%s'", v428, 0xCu);
      sub_5E88(v429, 0, v427);
      sub_5E88(v430, 1, &type metadata for Any + 8);
      sub_C3934();

      v426 = v424;
    }
  }

  else
  {
    v68 = v435;

    v426 = v68;
  }

  v420 = v426;
  _objc_release(v446);
  v473(v580, v570);
  v700 = sub_C3C64();
  v69 = sub_60748();
  v421 = *v69;
  v422 = v69[1];

  v423 = sub_C3574();

  if (v423)
  {
    v70 = sub_60988();
    v417 = *v70;
    v418 = v70[1];

    v419 = v676;
    v676[0] = v417;
    v676[1] = v418;
    sub_C33E4();
    sub_8224(v419);
    if (v677[3])
    {
      sub_21E8(&qword_EFA20, qword_C65A0);
      if (swift_dynamicCast())
      {
        v416 = v612[1];
      }

      else
      {
        v416 = 0;
      }

      v415 = v416;
    }

    else
    {
      sub_1FA80(v677);
      v415 = 0;
    }

    v675 = v415;
    if (v415)
    {
      v678 = v675;
    }

    else
    {
      sub_21E8(&qword_EEFF8, &unk_C5AC0);
      v678 = sub_C3C64();
      if (v675)
      {
        sub_1D7C8(&v675);
      }
    }

    v412 = v678;
    v674 = v678;

    v672 = v412;
    v413 = sub_21E8(&qword_EFA20, qword_C65A0);
    sub_6AE48();
    sub_C3824();
    for (i = v420; ; i = v233)
    {
      v410 = i;
      sub_21E8(&qword_EFB70, &qword_C6FE0);
      sub_C3B44();
      v411 = v671;
      if (!v671)
      {
        break;
      }

      v409 = v411;
      v407 = v411;
      v670 = v411;
      v71 = sub_60868();
      v405 = *v71;
      v406 = v71[1];

      v408 = v666;
      v666[0] = v405;
      v666[1] = v406;
      sub_C33E4();
      sub_8224(v408);
      if (v667[3])
      {
        if (swift_dynamicCast())
        {
          v403 = v612[2];
          v404 = v612[3];
        }

        else
        {
          v403 = 0;
          v404 = 0;
        }

        v401 = v403;
        v402 = v404;
      }

      else
      {
        sub_1FA80(v667);
        v401 = 0;
        v402 = 0;
      }

      v664 = v401;
      v665 = v402;
      if (v402)
      {
        v668 = v664;
        v669 = v665;
      }

      else
      {
        v668 = sub_C3564("", 0, 1);
        v669 = v72;
        if (v665)
        {
          sub_8224(&v664);
        }
      }

      v396 = v668;
      v397 = v669;
      v662 = v668;
      v663 = v669;
      v73 = sub_608C8();
      v398 = *v73;
      v399 = v73[1];

      v400 = v658;
      v658[0] = v398;
      v658[1] = v399;
      sub_C33E4();
      sub_8224(v400);
      if (v659[3])
      {
        v74 = swift_dynamicCast();
        if (v74)
        {
          v394 = v612[4];
          v395 = v612[5];
        }

        else
        {
          v394 = 0;
          v395 = 0;
        }

        v392 = v394;
        v393 = v395;
      }

      else
      {
        sub_1FA80(v659);
        v392 = 0;
        v393 = 0;
      }

      v656 = v392;
      v657 = v393;
      if (v393)
      {
        v660 = v656;
        v661 = v657;
      }

      else
      {
        v660 = sub_C3564("", 0, 1);
        v661 = v75;
        if (v657)
        {
          sub_8224(&v656);
        }
      }

      v387 = v660;
      v388 = v661;
      v654 = v660;
      v655 = v661;
      v76 = sub_60928();
      v389 = *v76;
      v390 = v76[1];

      v391 = v651;
      v651[0] = v389;
      v651[1] = v390;
      sub_C33E4();
      sub_8224(v391);
      if (v652[3])
      {
        sub_21E8(&qword_EFB80, &qword_C6840);
        v77 = swift_dynamicCast();
        if (v77)
        {
          v386 = v612[6];
        }

        else
        {
          v386 = 0;
        }

        v385 = v386;
      }

      else
      {
        sub_1FA80(v652);
        v385 = 0;
      }

      v650 = v385;
      if (v385)
      {
        v653 = v650;
      }

      else
      {
        sub_21E8(&qword_EF990, &qword_C6830);
        sub_C3C64();
        v653 = sub_C3374();
        if (v650)
        {
          sub_1D7C8(&v650);
        }
      }

      v381 = v653;
      v649 = v653;
      v78 = sub_61CB4();
      v382 = *v78;
      v383 = v78[1];

      v384 = v647;
      v647[0] = v382;
      v647[1] = v383;
      sub_C33E4();
      sub_8224(v384);
      if (v648[3])
      {
        v79 = swift_dynamicCast();
        if (v79)
        {
          v380 = v613 & 1;
        }

        else
        {
          v380 = 2;
        }

        v379 = v380;
      }

      else
      {
        sub_1FA80(v648);
        v379 = 2;
      }

      v646 = v379;
      if (v379 == 2)
      {
        v378 = 0;
      }

      else
      {
        v378 = v646;
      }

      v374 = v378;
      v645 = v378 & 1;
      v80 = sub_61E74();
      v375 = *v80;
      v376 = v80[1];

      v377 = v641;
      v641[0] = v375;
      v641[1] = v376;
      sub_C33E4();
      sub_8224(v377);
      if (v642[3])
      {
        if (swift_dynamicCast())
        {
          v372 = v614;
          v373 = v615;
        }

        else
        {
          v372 = 0;
          v373 = 0;
        }

        v370 = v372;
        v371 = v373;
      }

      else
      {
        sub_1FA80(v642);
        v370 = 0;
        v371 = 0;
      }

      v639 = v370;
      v640 = v371;
      if (v371)
      {
        v643 = v639;
        v644 = v640;
      }

      else
      {
        v643 = sub_C3564("", 0, 1);
        v644 = v81;
        if (v640)
        {
          sub_8224(&v639);
        }
      }

      v341 = v643;
      v342 = v644;
      v637 = v643;
      v638 = v644;
      v356 = 32;
      v357 = 7;
      v351 = swift_allocObject();
      v343 = v351 + 16;
      v636 = v351 + 16;

      v348 = sub_BF490();

      v347 = v633;
      sub_24F4(v511 + 16, v633);

      v345 = v634;
      v344 = v635;
      sub_808C(v347, v634);
      v346 = (*(v344 + 32))(v345);
      v82 = sub_35888(v396, v397, v346);
      v83 = v578;
      v349 = v82;
      v350 = v84;
      _objc_release(v346);
      sub_2560(v347);

      v85 = v350;
      v86 = v351;
      *(v351 + 16) = v349;
      *(v86 + 24) = v85;
      v87 = sub_BF704();
      v489(v83, v87, v570);

      v88 = swift_allocObject();
      v89 = v397;
      v358 = v88;
      *(v88 + 16) = v396;
      *(v88 + 24) = v89;
      v368 = sub_C3224();
      v369 = sub_C3874();
      v354 = 17;
      v360 = swift_allocObject();
      v353 = 32;
      *(v360 + 16) = 32;
      v361 = swift_allocObject();
      v355 = 8;
      *(v361 + 16) = 8;
      v90 = swift_allocObject();
      v91 = v351;
      v352 = v90;
      *(v90 + 16) = v527;
      *(v90 + 24) = v91;
      v92 = swift_allocObject();
      v93 = v352;
      v362 = v92;
      *(v92 + 16) = v528;
      *(v92 + 24) = v93;
      v363 = swift_allocObject();
      *(v363 + 16) = v353;
      v364 = swift_allocObject();
      *(v364 + 16) = v355;
      v94 = swift_allocObject();
      v95 = v358;
      v359 = v94;
      *(v94 + 16) = v529;
      *(v94 + 24) = v95;
      v96 = swift_allocObject();
      v97 = v359;
      v366 = v96;
      *(v96 + 16) = v530;
      *(v96 + 24) = v97;
      v365 = sub_C3C64();
      v367 = v98;

      v99 = v360;
      v100 = v367;
      *v367 = v531;
      v100[1] = v99;

      v101 = v361;
      v102 = v367;
      v367[2] = v532;
      v102[3] = v101;

      v103 = v362;
      v104 = v367;
      v367[4] = v533;
      v104[5] = v103;

      v105 = v363;
      v106 = v367;
      v367[6] = v534;
      v106[7] = v105;

      v107 = v364;
      v108 = v367;
      v367[8] = v535;
      v108[9] = v107;

      v109 = v366;
      v110 = v367;
      v367[10] = v536;
      v110[11] = v109;
      sub_4E48();

      if (os_log_type_enabled(v368, v369))
      {
        v111 = v410;
        v327 = sub_C3954();
        v326 = sub_21E8(&qword_EE828, &qword_C5100);
        v328 = sub_5DD4(0, v326, v326);
        v329 = sub_5DD4(2, &type metadata for Any + 8, &type metadata for Any + 8);
        v331 = &v620;
        v620 = v327;
        v332 = &v619;
        v619 = v328;
        v333 = &v618;
        v618 = v329;
        v330 = 2;
        sub_5E28(2, &v620);
        sub_5E28(v330, v331);
        v616 = v531;
        v617 = v360;
        sub_5E3C(&v616, v331, v332, v333);
        v334 = v111;
        v335 = v360;
        v336 = v361;
        v337 = v362;
        v338 = v363;
        v339 = v364;
        v340 = v366;
        if (v111)
        {
          v319 = v335;
          v320 = v336;
          v321 = v337;
          v322 = v338;
          v323 = v339;
          v324 = v340;
          v283 = v340;
          v282 = v339;
          v281 = v338;
          v280 = v337;
          v279 = v336;

          __break(1u);
        }

        else
        {
          v616 = v532;
          v617 = v361;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v312 = 0;
          v313 = v360;
          v314 = v361;
          v315 = v362;
          v316 = v363;
          v317 = v364;
          v318 = v366;
          v616 = v533;
          v617 = v362;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v305 = 0;
          v306 = v360;
          v307 = v361;
          v308 = v362;
          v309 = v363;
          v310 = v364;
          v311 = v366;
          v616 = v534;
          v617 = v363;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v298 = 0;
          v299 = v360;
          v300 = v361;
          v301 = v362;
          v302 = v363;
          v303 = v364;
          v304 = v366;
          v616 = v535;
          v617 = v364;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v291 = 0;
          v292 = v360;
          v293 = v361;
          v294 = v362;
          v295 = v363;
          v296 = v364;
          v297 = v366;
          v616 = v536;
          v617 = v366;
          sub_5E3C(&v616, &v620, &v619, &v618);
          v284 = 0;
          v285 = v360;
          v286 = v361;
          v287 = v362;
          v288 = v363;
          v289 = v364;
          v290 = v366;
          _os_log_impl(&dword_0, v368, v369, "dialog '%s' for button '%s'", v327, 0x16u);
          sub_5E88(v328, 0, v326);
          sub_5E88(v329, 2, &type metadata for Any + 8);
          sub_C3934();

          v325 = v284;
        }
      }

      else
      {
        v112 = v410;

        v325 = v112;
      }

      v277 = v325;
      _objc_release(v368);
      v473(v578, v570);
      v278 = sub_C35B4();

      if (v278)
      {
        v276 = sub_C35B4();
      }

      else
      {
        v276 = 0;
      }

      v275 = v276;

      if (v275)
      {
        v113 = v576;
        v261 = sub_C3564(" (No Action)", 0xCuLL, 1);
        v263 = v114;
        v262 = &v626;
        swift_beginAccess();
        sub_C3584();
        swift_endAccess();

        v115 = sub_BF704();
        v489(v113, v115, v570);
        v273 = sub_C3224();
        v274 = sub_C3884();
        v264 = 17;
        v266 = 7;
        v268 = swift_allocObject();
        *(v268 + 16) = 32;
        v269 = swift_allocObject();
        *(v269 + 16) = 8;
        v265 = 32;
        v116 = swift_allocObject();
        v267 = v116;
        *(v116 + 16) = v537;
        *(v116 + 24) = 0;
        v117 = swift_allocObject();
        v118 = v267;
        v271 = v117;
        *(v117 + 16) = v538;
        *(v117 + 24) = v118;
        v270 = sub_C3C64();
        v272 = v119;

        v120 = v268;
        v121 = v272;
        *v272 = v539;
        v121[1] = v120;

        v122 = v269;
        v123 = v272;
        v272[2] = v540;
        v123[3] = v122;

        v124 = v271;
        v125 = v272;
        v272[4] = v541;
        v125[5] = v124;
        sub_4E48();

        if (os_log_type_enabled(v273, v274))
        {
          v126 = v277;
          v251 = sub_C3954();
          v250 = sub_21E8(&qword_EE828, &qword_C5100);
          v252 = sub_5DD4(0, v250, v250);
          v253 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v254 = &v625;
          v625 = v251;
          v255 = &v624;
          v624 = v252;
          v256 = &v623;
          v623 = v253;
          sub_5E28(2, &v625);
          sub_5E28(1, v254);
          v621 = v539;
          v622 = v268;
          sub_5E3C(&v621, v254, v255, v256);
          v257 = v126;
          v258 = v268;
          v259 = v269;
          v260 = v271;
          if (v126)
          {
            v246 = v258;
            v247 = v259;
            v248 = v260;
            v237 = v260;
            v236 = v259;

            __break(1u);
          }

          else
          {
            v621 = v540;
            v622 = v269;
            sub_5E3C(&v621, &v625, &v624, &v623);
            v242 = 0;
            v243 = v268;
            v244 = v269;
            v245 = v271;
            v621 = v541;
            v622 = v271;
            sub_5E3C(&v621, &v625, &v624, &v623);
            v238 = 0;
            v239 = v268;
            v240 = v269;
            v241 = v271;
            _os_log_impl(&dword_0, v273, v274, "visualParameters for %s has a button with no direct invocation specified.", v251, 0xCu);
            sub_5E88(v252, 0, v250);
            sub_5E88(v253, 1, &type metadata for Any + 8);
            sub_C3934();

            v249 = v238;
          }
        }

        else
        {
          v127 = v277;

          v249 = v127;
        }

        v234 = v249;
        _objc_release(v273);
        v473(v576, v570);
        v235 = v234;
      }

      else
      {
        v235 = v277;
      }

      v233 = v235;
      v631 = sub_C3564("", 0, 1);
      v632 = v128;
      if ((sub_C35B4() & 1) == 0)
      {

        v230 = sub_BF490();

        v229 = v627;
        sub_24F4(v511 + 16, v627);

        v227 = v628;
        v226 = v629;
        sub_808C(v229, v628);
        v228 = (*(v226 + 32))(v227);
        v231 = sub_35888(v341, v342, v228);
        v232 = v129;
        _objc_release(v228);
        sub_2560(v229);

        v631 = v231;
        v632 = v232;
      }

      v220 = &v630;
      swift_beginAccess();
      v221 = *(v351 + 16);
      v222 = *(v351 + 24);

      swift_endAccess();
      v225 = &v631;
      v223 = v631;
      v224 = v632;

      sub_C2FF4();
      (*(v561 + 16))(v564, v566, v560);
      sub_21E8(&qword_EFB78, &qword_C6838);
      sub_C3724();
      (*(v561 + 8))(v566, v560);
      sub_8224(v225);
    }

    sub_1D7C8(v673);

    v219 = v410;
  }

  else
  {
    v219 = v420;
  }

  v215 = v219;
  v130 = sub_607A8();
  v216 = *v130;
  v217 = v130[1];

  v218 = v696;
  v696[0] = v216;
  v696[1] = v217;
  sub_C33E4();
  sub_8224(v218);
  if (v697[3])
  {
    if (swift_dynamicCast())
    {
      v213 = v679;
      v214 = v680;
    }

    else
    {
      v213 = 0;
      v214 = 0;
    }

    v211 = v213;
    v212 = v214;
  }

  else
  {
    sub_1FA80(v697);
    v211 = 0;
    v212 = 0;
  }

  v694 = v211;
  v695 = v212;
  if (v212)
  {
    v698 = v694;
    v699 = v695;
  }

  else
  {
    v698 = sub_C3564("", 0, 1);
    v699 = v131;
    if (v695)
    {
      sub_8224(&v694);
    }
  }

  v185 = v699;
  v692 = v698;
  v693 = v699;
  v132 = sub_C3514();
  v190 = v691;
  v691[0] = v132;
  v691[1] = v133;
  v134 = sub_60808();
  v186 = *v134;
  v187 = v134[1];

  v189 = v690;
  v690[0] = v186;
  v690[1] = v187;
  v188 = sub_2DCA0();
  sub_6AAE8();
  v135 = sub_C3434();
  v136 = v574;
  v192 = v135;
  sub_8224(v189);
  sub_8224(v190);
  v191 = 1;
  v689 = v192 & 1;
  v137 = sub_BF704();
  v489(v136, v137, v570);
  v194 = 17;
  v198 = 7;
  v195 = swift_allocObject();
  *(v195 + 16) = v192 & v191;
  v209 = sub_C3224();
  v210 = sub_C3874();
  v201 = swift_allocObject();
  *(v201 + 16) = 32;
  v202 = swift_allocObject();
  *(v202 + 16) = 8;
  v197 = 32;
  v138 = swift_allocObject();
  v193 = v138;
  *(v138 + 16) = v542;
  *(v138 + 24) = 0;
  v139 = swift_allocObject();
  v140 = v193;
  v203 = v139;
  *(v139 + 16) = v543;
  *(v139 + 24) = v140;
  v204 = swift_allocObject();
  *(v204 + 16) = 0;
  v205 = swift_allocObject();
  *(v205 + 16) = 4;
  v141 = swift_allocObject();
  v142 = v195;
  v196 = v141;
  *(v141 + 16) = v544;
  *(v141 + 24) = v142;
  v143 = swift_allocObject();
  v144 = v196;
  v199 = v143;
  *(v143 + 16) = v545;
  *(v143 + 24) = v144;
  v145 = swift_allocObject();
  v146 = v199;
  v200 = v145;
  *(v145 + 16) = v546;
  *(v145 + 24) = v146;
  v147 = swift_allocObject();
  v148 = v200;
  v207 = v147;
  *(v147 + 16) = v547;
  *(v147 + 24) = v148;
  v206 = sub_C3C64();
  v208 = v149;

  v150 = v201;
  v151 = v208;
  *v208 = v548;
  v151[1] = v150;

  v152 = v202;
  v153 = v208;
  v208[2] = v549;
  v153[3] = v152;

  v154 = v203;
  v155 = v208;
  v208[4] = v550;
  v155[5] = v154;

  v156 = v204;
  v157 = v208;
  v208[6] = v551;
  v157[7] = v156;

  v158 = v205;
  v159 = v208;
  v208[8] = v552;
  v159[9] = v158;

  v160 = v207;
  v161 = v208;
  v208[10] = v553;
  v161[11] = v160;
  sub_4E48();

  if (os_log_type_enabled(v209, v210))
  {
    v162 = v215;
    v177 = sub_C3954();
    v176 = sub_21E8(&qword_EE828, &qword_C5100);
    v178 = sub_5DD4(0, v176, v176);
    v179 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v181 = &v685;
    v685 = v177;
    v182 = &v684;
    v684 = v178;
    v183 = &v683;
    v683 = v179;
    v180 = 2;
    sub_5E28(2, &v685);
    sub_5E28(v180, v181);
    v681 = v548;
    v682 = v201;
    sub_5E3C(&v681, v181, v182, v183);
    v184 = v162;
    if (v162)
    {

      __break(1u);
    }

    else
    {
      v681 = v549;
      v682 = v202;
      sub_5E3C(&v681, &v685, &v684, &v683);
      v175 = 0;
      v681 = v550;
      v682 = v203;
      sub_5E3C(&v681, &v685, &v684, &v683);
      v174 = 0;
      v681 = v551;
      v682 = v204;
      sub_5E3C(&v681, &v685, &v684, &v683);
      v173 = 0;
      v681 = v552;
      v682 = v205;
      sub_5E3C(&v681, &v685, &v684, &v683);
      v172 = 0;
      v681 = v553;
      v682 = v207;
      sub_5E3C(&v681, &v685, &v684, &v683);
      _os_log_impl(&dword_0, v209, v210, "visualParameters conversationSpace for %s value is %{BOOL}d", v177, 0x12u);
      sub_5E88(v178, 0, v176);
      sub_5E88(v179, 1, &type metadata for Any + 8);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v209);
  v473(v574, v570);
  v171 = &v700;
  v164[1] = v700;

  v164[3] = 0;
  v164[2] = sub_C3564("", 0, 1);
  sub_C3014();
  v165 = sub_C3034();
  v167 = v688;
  v688[3] = v165;
  v688[4] = sub_6ADC8();
  v166 = sub_1CC64(v167);
  (*(v556 + 16))(v166, v559, v555);
  (*(*(v165 - 8) + 104))(v166, enum case for SiriSocialConversationDataModels.buttonStackView(_:));
  v168 = &v687;
  v169 = 0;
  swift_beginAccess();
  sub_C2204();
  swift_endAccess();
  v170 = &v686;
  swift_beginAccess();
  (*(*(v586 - 8) + 16))(v510, v589);
  swift_endAccess();
  (*(v556 + 8))(v559, v555);

  sub_1D7C8(v171);
}

uint64_t sub_65D24(uint64_t a1)
{
  v2[1] = a1;
  v3 = sub_21E8(&qword_EEFD0, &unk_C6820);
  v2[0] = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v2[3] = v2 - v2[0];
  sub_C2224();
  swift_projectBox();
  v2[2] = &v4;
  swift_beginAccess();
  sub_C21D4();
  swift_endAccess();
  return sub_C34F4();
}

uint64_t sub_65DFC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);

  swift_endAccess();
  return v3;
}

uint64_t sub_65E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[52] = v7;
  v8[51] = a7;
  v8[50] = a6;
  v8[49] = a5;
  v8[48] = a4;
  v8[47] = a1;
  v8[53] = *v7;
  v8[35] = v8;
  v8[31] = 0;
  v8[32] = 0;
  v8[33] = 0;
  v8[34] = 0;
  v8[37] = 0;
  v8[38] = 0;
  v8[39] = 0;
  v8[40] = 0;
  v8[41] = 0;
  v9 = sub_C2224();
  v8[54] = v9;
  v8[55] = *(v9 - 8);
  v8[56] = swift_task_alloc();
  v10 = sub_C3234();
  v8[57] = v10;
  v8[58] = *(v10 - 8);
  v8[59] = swift_task_alloc();
  v8[31] = a2;
  v8[32] = a3;
  v8[33] = a4;
  v8[34] = a5;
  v8[37] = a6;
  v8[38] = a7;
  v8[39] = v7;

  return _swift_task_switch(sub_660C0, 0);
}

uint64_t sub_660C0()
{
  v1 = v0[50];
  v2 = v0[49];
  v3 = v0[48];
  v0[35] = v0;
  sub_67D40(v3, v2, v1, v0 + 10);
  v17 = v0[10];
  v18 = v0[11];

  sub_66DE0(v17, v18, v0 + 2);
  v9 = v16[52];

  v16[60] = sub_BF490();

  v14 = v16[12];
  v16[61] = v14;

  sub_24F4(v9 + 16, (v16 + 16));

  v8 = v16[19];
  v7 = v16[20];
  sub_808C(v16 + 16, v8);
  v15 = (*(v7 + 32))(v8);
  v16[62] = v15;

  sub_24F4(v9 + 16, (v16 + 21));

  v11 = v16[24];
  v10 = v16[25];
  sub_808C(v16 + 21, v11);
  (*(v10 + 8))(v11);
  v12 = sub_4800();
  v13 = v4;
  v16[63] = v4;
  v5 = swift_task_alloc();
  v16[64] = v5;
  *v5 = v16[35];
  v5[1] = sub_6644C;

  return sub_31E58((v16 + 2), v12, v13, v14, v15, (v16 + 26), 1);
}

uint64_t sub_6644C(uint64_t a1)
{
  v10 = *v2;
  v6 = *v2 + 16;
  v7 = (*v2 + 128);
  v8 = (*v2 + 168);
  v9 = (*v2 + 208);
  v10[35] = *v2;
  v10[65] = a1;
  v10[66] = v1;

  if (v1)
  {
    v3 = sub_66C8C;
  }

  else
  {
    v5 = *(v6 + 480);

    sub_2560(v9);
    sub_2560(v8);

    sub_2560(v7);

    v3 = sub_66634;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_66634()
{
  v1 = v0[65];
  v29 = v0[51];
  v0[35] = v0;
  v0[40] = v1;

  v0[41] = v29;

  v30 = sub_C33B4();

  if ((v30 & 1) == 0)
  {
    *(v28 + 288) = *(v28 + 120);
    sub_6B310((v28 + 288), (v28 + 368));
    sub_6B348((v28 + 288), (v28 + 328));
  }

  v2 = *(v28 + 472);
  v24 = *(v28 + 456);
  v23 = *(v28 + 464);
  v3 = sub_BF704();
  (*(v23 + 16))(v2, v3, v24);
  v26 = sub_C3224();
  v25 = sub_C3874();
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v27 = sub_C3C64();
  if (os_log_type_enabled(v26, v25))
  {
    v4 = *(v28 + 528);
    buf = sub_C3954();
    v18 = sub_21E8(&qword_EE828, &qword_C5100);
    v20 = sub_5DD4(0, v18, v18);
    v21 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v28 + 336) = buf;
    *(v28 + 344) = v20;
    *(v28 + 352) = v21;
    sub_5E28(0, (v28 + 336));
    sub_5E28(0, (v28 + 336));
    *(v28 + 360) = v27;
    v22 = swift_task_alloc();
    v22[2] = v28 + 336;
    v22[3] = v28 + 344;
    v22[4] = v28 + 352;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    if (v4)
    {
    }

    _os_log_impl(&dword_0, v26, v25, "Creating RF snippet using visualParameters", buf, 2u);
    sub_5E88(v20, 0, v18);
    sub_5E88(v21, 0, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v15 = *(v28 + 520);
  v16 = *(v28 + 472);
  v10 = *(v28 + 456);
  v17 = *(v28 + 448);
  v14 = *(v28 + 432);
  v9 = *(v28 + 464);
  v13 = *(v28 + 440);
  _objc_release(v26);
  (*(v9 + 8))(v16, v10);
  sub_418E8();
  sub_C3C64();
  v11 = v6;
  _objc_retain(v15);
  *v11 = v15;
  sub_4E48();
  v12 = v7;

  sub_62104(v12);

  sub_C2244();
  (*(v13 + 8))(v17, v14);
  sub_1D7C8((v28 + 328));
  _objc_release(v15);
  sub_1CFBC((v28 + 16));
  sub_6B2C0((v28 + 80));

  v8 = *(*(v28 + 280) + 8);

  return v8();
}

uint64_t sub_66C8C()
{
  v3 = v0[62];
  v0[35] = v0;

  sub_2560(v0 + 26);
  sub_2560(v0 + 21);
  _objc_release(v3);
  sub_2560(v0 + 16);

  sub_1CFBC(v0 + 2);
  sub_6B2C0(v0 + 10);

  v1 = *(v0[35] + 8);

  return v1();
}

void *sub_66DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = 0;
  v10 = a1;
  v11 = a2;

  sub_68AA8(a1, a2, v12);
  memcpy(__dst, v12, sizeof(__dst));
  if (__dst[1])
  {
    memcpy(v8, __dst, sizeof(v8));
    return memcpy(a3, v8, 0x40uLL);
  }

  else
  {

    sub_6B37C();
    swift_allocError();
    *v4 = a1;
    v4[1] = a2;
    return swift_willThrow();
  }
}

uint64_t sub_66F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = v6;
  v7[14] = a6;
  v7[13] = a5;
  v7[12] = a4;
  v7[11] = a3;
  v7[10] = a2;
  v7[9] = a1;
  v7[16] = *v6;
  v7[6] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v8 = sub_C3234();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v7[7] = a6;
  v7[8] = v6;

  return _swift_task_switch(sub_670B8, 0);
}

uint64_t sub_670B8(uint64_t a1)
{
  v43 = v1;
  v2 = v1[19];
  v22 = v1[18];
  v23 = v1[17];
  v24 = v1[16];
  v1[6] = v1;
  v3 = sub_BF704();
  (*(v22 + 16))(v2, v3, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v36 = sub_C3224();
  v37 = sub_C3874();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1F060;
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1F278;
  *(v27 + 24) = v26;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_7BBC;
  *(v31 + 24) = v27;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_67D10;
  *(v28 + 24) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_7BBC;
  *(v34 + 24) = v28;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v35 = v4;

  *v35 = sub_7B48;
  v35[1] = v29;

  v35[2] = sub_7B48;
  v35[3] = v30;

  v35[4] = sub_7C08;
  v35[5] = v31;

  v35[6] = sub_7B48;
  v35[7] = v32;

  v35[8] = sub_7B48;
  v35[9] = v33;

  v35[10] = sub_7C08;
  v35[11] = v34;
  sub_4E48();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_C3954();
    v17 = sub_21E8(&qword_EE828, &qword_C5100);
    v19 = sub_5DD4(0, v17, v17);
    v20 = sub_5DD4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v38 = buf;
    v39 = v19;
    v40 = v20;
    sub_5E28(2, &v38);
    sub_5E28(2, &v38);
    v41 = sub_7B48;
    v42 = v29;
    sub_5E3C(&v41, &v38, &v39, &v40);
    v41 = sub_7B48;
    v42 = v30;
    sub_5E3C(&v41, &v38, &v39, &v40);
    v41 = sub_7C08;
    v42 = v31;
    sub_5E3C(&v41, &v38, &v39, &v40);
    v41 = sub_7B48;
    v42 = v32;
    sub_5E3C(&v41, &v38, &v39, &v40);
    v41 = sub_7B48;
    v42 = v33;
    sub_5E3C(&v41, &v38, &v39, &v40);
    v41 = sub_7C08;
    v42 = v34;
    sub_5E3C(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_0, v36, v37, "%s.%s", buf, 0x16u);
    sub_5E88(v19, 0, v17);
    sub_5E88(v20, 2, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v14 = v21[19];
  v15 = v21[17];
  v13 = v21[18];
  _objc_release(v36);
  (*(v13 + 8))(v14, v15);
  sub_21E8(&qword_EF000, &qword_C5E10);
  sub_C3C64();
  v16 = sub_C3374();
  v21[20] = v16;
  v5 = swift_task_alloc();
  v21[21] = v5;
  *v5 = v21[6];
  v5[1] = sub_67A88;
  v6 = v21[14];
  v7 = v21[13];
  v8 = v21[12];
  v9 = v21[11];
  v10 = v21[10];
  v11 = v21[9];

  return sub_65E8C(v11, v10, v9, v8, v7, v6, v16);
}

uint64_t sub_67A88()
{
  v4 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_67C58, 0);
  }

  else
  {

    v2 = *(*(v4 + 48) + 8);

    return v2();
  }
}

uint64_t sub_67C58()
{
  *(v0 + 48) = v0;

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t sub_67D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v77 = a4;
  v110 = a1;
  v111 = a2;
  v91 = a3;
  v78 = sub_49870;
  v79 = sub_49A40;
  v80 = sub_49A8C;
  v81 = sub_7B48;
  v82 = sub_7B48;
  v83 = sub_4A09C;
  v84 = sub_68A5C;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v134 = 0;
  memset(v119, 0, sizeof(v119));
  v118 = 0;
  v85 = 0;
  v86 = sub_C3234();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v90 = v22 - v89;
  v92 = sub_C1C64();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v110);
  v113 = v22 - v95;
  v136 = v5;
  v137 = v6;
  v135 = v7;
  v134 = v4;
  v109 = *(v4 + 72);

  v96 = v130;
  sub_24F4(v4 + 16, v130);

  v98 = v131;
  v97 = v132;
  sub_808C(v96, v131);
  v8 = (*(v97 + 32))(v98);
  v9 = v105;
  v112 = v8;

  v99 = v127;
  sub_24F4(v9 + 16, v127);

  v101 = v128;
  v100 = v129;
  sub_808C(v99, v128);
  v10 = *(v100 + 8);
  v102 = v124;
  v10(v101);
  v104 = v125;
  v103 = v126;
  sub_808C(v102, v125);
  sub_C1F34();
  v11 = v105;

  v106 = v121;
  sub_24F4(v11 + 16, v121);

  v108 = v122;
  v107 = v123;
  sub_808C(v106, v122);
  v12 = *(v107 + 40);
  v114 = v120;
  v12(v108);
  sub_56FBC(v110, v111, v112, v113, v114, v138, v22[0]);
  v115 = 0;
  v116 = 0;
  v63 = v138;
  v64 = v138[0];
  v65 = v138[1];
  v66 = v138[2];
  v67 = v138[3];
  v68 = v138[4];
  v69 = v138[5];
  sub_2560(v120);
  sub_2560(v121);
  (*(v93 + 8))(v113, v92);
  sub_2560(v124);
  sub_2560(v127);
  _objc_release(v112);
  sub_2560(v130);

  sub_6B7D0(v63, v117);
  memcpy(__dst, v63, sizeof(__dst));
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  v74 = v68;
  v75 = v69;
  v76 = v115;
  v56 = v115;
  v57 = v69;
  v58 = v68;
  v59 = v67;
  v60 = v66;
  v61 = v65;
  v62 = v64;
  if (!v65)
  {

    sub_21E8(&qword_EF000, &qword_C5E10);
    v23 = 0;
    sub_C3C64();
    v15 = sub_C3374();
    sub_3E1A0(v110, v111, v91, v23, v23, v15, v140);
    v24 = v140[0];
    v25 = v140[1];
    v26 = v140[2];
    v27 = v140[3];
    v28 = v140[4];
    v29 = v140[5];
    result = sub_6B76C(__dst);
    v37 = v24;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    goto LABEL_5;
  }

  v50 = v62;
  v51 = v61;
  v52 = v60;
  v53 = v59;
  v54 = v58;
  v55 = v57;
  v13 = v56;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  v48 = v60;
  v46 = v61;
  v47 = v62;
  v119[0] = v62;
  v119[1] = v61;
  v119[2] = v60;
  v119[3] = v59;
  v119[4] = v58;
  v119[5] = v57;

  result = sub_C33C4();
  v49 = result;
  if (!v13)
  {
    v30 = v49;
    v118 = v49;

    sub_3E1A0(v47, v46, v30, v45, v44, v43, v139);
    v31 = v139[0];
    v32 = v139[1];
    v33 = v139[2];
    v34 = v139[3];
    v35 = v139[4];
    v36 = v139[5];

    result = sub_6B76C(__dst);
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
LABEL_5:
    v16 = v77;
    v17 = v38;
    v18 = v39;
    v19 = v40;
    v20 = v41;
    v21 = v42;
    *v77 = v37;
    v16[1] = v17;
    v16[2] = v18;
    v16[3] = v19;
    v16[4] = v20;
    v16[5] = v21;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_68AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a3;
  v63 = a1;
  v62 = a2;
  v60 = 0;
  v55 = sub_1D834;
  v56 = sub_7BBC;
  v57 = sub_7B48;
  v58 = sub_7B48;
  v59 = sub_7C08;
  memset(__b, 0, sizeof(__b));
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v61 = 0;
  v64 = sub_C3234();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v68 = v24 - v67;
  v83 = v3;
  v84 = v4;
  v82[2] = v3;
  v82[3] = v4;
  v5 = sub_C3564("#", 1uLL, 1);
  v69 = v82;
  v82[0] = v5;
  v82[1] = v6;
  sub_B2E8();
  v70 = &type metadata for String;
  v71 = sub_C39A4();
  sub_8224(v69);
  v81 = v71;
  if (sub_C3714() == 2)
  {
    v46 = &type metadata for String;
    sub_C3744();
    v47 = v72[10];
    v48 = v72[11];
    sub_C3744();
    v49 = v86;
    sub_2E6E0(v47, v48, v72[8], v72[9], v86);
    v51 = __b;
    v53 = 64;
    memcpy(__b, v49, sizeof(__b));

    v50 = v73;
    memcpy(v73, v51, v53);
    sub_1D2DC(v50, v72);
    v52 = v74;
    memcpy(v74, v50, v53);

    sub_1CFBC(v51);
    memcpy(__dst, v52, v53);
  }

  else
  {
    v7 = v68;
    v8 = sub_BF704();
    (*(v65 + 16))(v7, v8, v64);

    v34 = 32;
    v35 = 7;
    v9 = swift_allocObject();
    v10 = v62;
    v36 = v9;
    *(v9 + 16) = v63;
    *(v9 + 24) = v10;
    v44 = sub_C3224();
    v45 = sub_C3884();
    v33 = 17;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v11 = swift_allocObject();
    v12 = v36;
    v37 = v11;
    *(v11 + 16) = v55;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v37;
    v41 = v13;
    *(v13 + 16) = v56;
    *(v13 + 24) = v14;
    v43 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v40 = sub_C3C64();
    v42 = v15;

    v16 = v38;
    v17 = v42;
    *v42 = v57;
    v17[1] = v16;

    v18 = v39;
    v19 = v42;
    v42[2] = v58;
    v19[3] = v18;

    v20 = v41;
    v21 = v42;
    v42[4] = v59;
    v21[5] = v20;
    sub_4E48();

    if (os_log_type_enabled(v44, v45))
    {
      v22 = v61;
      v26 = sub_C3954();
      v25 = sub_21E8(&qword_EE828, &qword_C5100);
      v27 = sub_5DD4(0, v25, v25);
      v28 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v29 = &v79;
      v79 = v26;
      v30 = &v78;
      v78 = v27;
      v31 = &v77;
      v77 = v28;
      sub_5E28(2, &v79);
      sub_5E28(1, v29);
      v75 = v57;
      v76 = v38;
      sub_5E3C(&v75, v29, v30, v31);
      v32 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v75 = v58;
        v76 = v39;
        sub_5E3C(&v75, &v79, &v78, &v77);
        v24[1] = 0;
        v75 = v59;
        v76 = v41;
        sub_5E3C(&v75, &v79, &v78, &v77);
        _os_log_impl(&dword_0, v44, v45, "Provided identifier '%s' is not separated by the '#' character", v26, 0xCu);
        sub_5E88(v27, 0, v25);
        sub_5E88(v28, 1, &type metadata for Any + 8);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v44);
    (*(v65 + 8))(v68, v64);

    memset(v80, 0, sizeof(v80));
    memcpy(__dst, v80, sizeof(__dst));
  }

  return memcpy(v54, __dst, 0x40uLL);
}

uint64_t sub_691F0(uint64_t a1, uint64_t a2)
{
  v7[4] = a1;
  v7[5] = a2;

  v7[2] = a1;
  v7[3] = a2;
  v7[0] = sub_C3C44();
  v7[1] = v2;
  v8._countAndFlagsBits = sub_C3564("Invalid identifier: '", 0x15uLL, 1);
  sub_C3C34(v8);

  sub_C3C24();
  v9._countAndFlagsBits = sub_C3564("'", 1uLL, 1);
  sub_C3C34(v9);

  sub_8224(v7);
  v6 = sub_C3544();

  return v6;
}

uint64_t sub_6947C()
{
  v1 = sub_BF340();

  return v1;
}

uint64_t sub_694F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v7 + 16) = v7;
  v8 = swift_task_alloc();
  *(v10 + 24) = v8;
  *v8 = *(v10 + 16);
  v8[1] = sub_695E4;

  return sub_65E8C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_695E4()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_69770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_695E4;

  return sub_66F10(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_69888(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v6 = (a3 + 1);
  }

  else
  {
    v8 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v6 = (v8 | (a3 >> 6)) + 33217;
    }

    else
    {
      v7 = (v8 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v6 = (v7 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v6 = ((a3 >> 18) | ((v7 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v5 = 4 - (__clz(v6) >> 3);
  v3.value._rawValue = &v10;
  v10 = (v6 - 0x101010101010101) & ((1 << ((8 * v5) & 0x3F)) - 1);
  sub_C37A4(v3);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return a1(&v10, v5);
  }

  sub_C3BA4();
  __break(1u);
LABEL_12:
  result = sub_C3B84();
  __break(1u);
  return result;
}

uint64_t sub_69BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_6B9FC;
        v16 = &v37;
        sub_69888(sub_6BA18, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_C3B84();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_C3B84();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_C3B84();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_C3B84();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_C3B84();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_C3B84();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_C3B84();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_C3B84();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_C3B84();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_C3B84();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_C3B84();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_C3B84();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_C3BA4();
    __break(1u);
  }

  result = sub_C3B84();
  __break(1u);
  return result;
}

uint64_t sub_6A3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_C3B84();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_C3B84();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_C3B84();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_C3B84();
                __break(1u);
              }

              sub_C3B84();
              __break(1u);
            }

            sub_C3B84();
            __break(1u);
          }

          sub_C3B84();
          __break(1u);
        }

        sub_C3B84();
        __break(1u);
      }

      sub_C3B84();
      __break(1u);
    }

    sub_C3B84();
    __break(1u);
  }

  result = sub_C3B84();
  __break(1u);
  return result;
}

unint64_t sub_6AAE8()
{
  v2 = qword_EFB58;
  if (!qword_EFB58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6ADC8()
{
  v2 = qword_EFB60;
  if (!qword_EFB60)
  {
    sub_C3034();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6AE48()
{
  v2 = qword_EFB68;
  if (!qword_EFB68)
  {
    sub_81B0(&qword_EFA20, qword_C65A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB68);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_6B2C0(void *a1)
{
}

void *sub_6B310(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t *sub_6B348(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;

  return a2;
}

unint64_t sub_6B37C()
{
  v2 = qword_EFB88;
  if (!qword_EFB88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB88);
    return WitnessTable;
  }

  return v2;
}

void *sub_6B76C(void *a1)
{
  if (a1[1])
  {
  }

  return a1;
}

void *sub_6B7D0(void *a1, void *a2)
{
  if (a1[1])
  {
    *a2 = *a1;
    v3 = a1[1];

    a2[1] = v3;
    v4 = a1[2];

    a2[2] = v4;
    a2[3] = a1[3];
    v5 = a1[4];

    a2[4] = v5;
    v6 = a1[5];

    a2[5] = v6;
  }

  else
  {
    memcpy(a2, a1, 0x30uLL);
  }

  return a2;
}

uint64_t sub_6BB5C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 1)
  {

    return a1;
  }

  else
  {
    swift_errorRetain();
    swift_getErrorValue();
    v4 = sub_C3C94();

    return v4;
  }
}

uint64_t sub_6BD04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_6BDFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 16) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_6BFE8()
{
  result = sub_C3564("ContentTopic", 0xCuLL, 1);
  qword_F12A0 = result;
  qword_F12A8 = v1;
  return result;
}

uint64_t *sub_6C02C()
{
  if (qword_EE640 != -1)
  {
    swift_once();
  }

  return &qword_F12A0;
}

uint64_t sub_6C08C()
{
  v1 = *sub_6C02C();

  return v1;
}

uint64_t sub_6C0C8()
{
  result = sub_C3564("holidayPhrase", 0xDuLL, 1);
  qword_F12B0 = result;
  qword_F12B8 = v1;
  return result;
}

uint64_t *sub_6C10C()
{
  if (qword_EE648 != -1)
  {
    swift_once();
  }

  return &qword_F12B0;
}

uint64_t sub_6C16C()
{
  v1 = *sub_6C10C();

  return v1;
}

uint64_t sub_6C1A8()
{
  result = sub_C3564("salutationPhrase", 0x10uLL, 1);
  qword_F12C0 = result;
  qword_F12C8 = v1;
  return result;
}

uint64_t *sub_6C1EC()
{
  if (qword_EE650 != -1)
  {
    swift_once();
  }

  return &qword_F12C0;
}

uint64_t sub_6C24C()
{
  v1 = *sub_6C1EC();

  return v1;
}

uint64_t sub_6C288()
{
  result = sub_C3564("siriContentType", 0xFuLL, 1);
  qword_F12D0 = result;
  qword_F12D8 = v1;
  return result;
}

uint64_t *sub_6C2CC()
{
  if (qword_EE658 != -1)
  {
    swift_once();
  }

  return &qword_F12D0;
}

uint64_t sub_6C32C()
{
  v1 = *sub_6C2CC();

  return v1;
}

uint64_t sub_6C368()
{
  result = sub_C3564("siriSocialAction", 0x10uLL, 1);
  qword_F12E0 = result;
  qword_F12E8 = v1;
  return result;
}

uint64_t *sub_6C3AC()
{
  if (qword_EE660 != -1)
  {
    swift_once();
  }

  return &qword_F12E0;
}

uint64_t sub_6C40C()
{
  v1 = *sub_6C3AC();

  return v1;
}

uint64_t sub_6C448()
{
  result = sub_C3564("socialInterjectionPhrase", 0x18uLL, 1);
  qword_F12F0 = result;
  qword_F12F8 = v1;
  return result;
}

uint64_t *sub_6C48C()
{
  if (qword_EE668 != -1)
  {
    swift_once();
  }

  return &qword_F12F0;
}

uint64_t sub_6C4EC()
{
  v1 = *sub_6C48C();

  return v1;
}

uint64_t sub_6C528()
{
  result = sub_C3564("tell", 4uLL, 1);
  qword_F1300 = result;
  qword_F1308 = v1;
  return result;
}

uint64_t *sub_6C56C()
{
  if (qword_EE670 != -1)
  {
    swift_once();
  }

  return &qword_F1300;
}

uint64_t sub_6C5CC()
{
  v1 = *sub_6C56C();

  return v1;
}

uint64_t sub_6C608()
{
  result = sub_C3564("hear", 4uLL, 1);
  qword_F1310 = result;
  qword_F1318 = v1;
  return result;
}

uint64_t *sub_6C64C()
{
  if (qword_EE678 != -1)
  {
    swift_once();
  }

  return &qword_F1310;
}

uint64_t sub_6C6AC()
{
  v1 = *sub_6C64C();

  return v1;
}

uint64_t sub_6C6E8()
{
  result = sub_C3564("userSocialAction", 0x10uLL, 1);
  qword_F1320 = result;
  qword_F1328 = v1;
  return result;
}

uint64_t *sub_6C72C()
{
  if (qword_EE680 != -1)
  {
    swift_once();
  }

  return &qword_F1320;
}

uint64_t sub_6C78C()
{
  v1 = *sub_6C72C();

  return v1;
}

uint64_t sub_6C7C8()
{
  result = sub_C3564("favoriteInstance", 0x10uLL, 1);
  qword_F1330 = result;
  qword_F1338 = v1;
  return result;
}

uint64_t *sub_6C80C()
{
  if (qword_EE688 != -1)
  {
    swift_once();
  }

  return &qword_F1330;
}

uint64_t sub_6C86C()
{
  v1 = *sub_6C80C();

  return v1;
}

uint64_t sub_6C8A8()
{
  result = sub_C3564("favoriteCategory", 0x10uLL, 1);
  qword_F1340 = result;
  qword_F1348 = v1;
  return result;
}

uint64_t *sub_6C8EC()
{
  if (qword_EE690 != -1)
  {
    swift_once();
  }

  return &qword_F1340;
}

uint64_t sub_6C94C()
{
  v1 = *sub_6C8EC();

  return v1;
}

uint64_t sub_6C988()
{
  result = sub_C3564("opinionTopic", 0xCuLL, 1);
  qword_F1350 = result;
  qword_F1358 = v1;
  return result;
}

uint64_t *sub_6C9CC()
{
  if (qword_EE698 != -1)
  {
    swift_once();
  }

  return &qword_F1350;
}

uint64_t sub_6CA2C()
{
  v1 = *sub_6C9CC();

  return v1;
}

uint64_t sub_6CA68()
{
  result = sub_C3564("opinionJudgment", 0xFuLL, 1);
  qword_F1360 = result;
  qword_F1368 = v1;
  return result;
}

uint64_t *sub_6CAAC()
{
  if (qword_EE6A0 != -1)
  {
    swift_once();
  }

  return &qword_F1360;
}

uint64_t sub_6CB0C()
{
  v1 = *sub_6CAAC();

  return v1;
}

uint64_t sub_6CB48()
{
  result = sub_C3564("siriProperty", 0xCuLL, 1);
  qword_F1370 = result;
  qword_F1378 = v1;
  return result;
}