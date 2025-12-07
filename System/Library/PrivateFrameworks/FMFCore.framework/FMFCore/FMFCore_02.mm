uint64_t sub_24A3A54D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_24A3A50C0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  else
  {
    v12 = sub_24A39B2C8(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v19 = *v5;
      if (!v15)
      {
        sub_24A4A8348();
        v16 = v19;
      }

      result = sub_24A4A6D18(v12, v16, v17);
      *v5 = v16;
    }
  }

  return result;
}

id sub_24A3A55D8()
{
  v84 = sub_24A4AAB80();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v1 = &v82 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24A4AAAD0();
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAAC0();
  v5 = [objc_opt_self() sharedInstance];
  *(&v92 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v91) = 1;
  sub_24A3A60B4(&v91, &v89);
  v6 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v88 = v6;
  sub_24A3A60C4(&v89, 0x65646F4D68737570, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v8 = v88;
  v83 = v4;
  sub_24A4AAA30();
  *(&v92 + 1) = MEMORY[0x277D839F8];
  *&v91 = v9 * 1000.0;
  sub_24A3A60B4(&v91, &v89);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  *&v88 = v8;
  sub_24A3A60C4(&v89, 0x54746E6572727563, 0xEB00000000656D69, v10);
  v11 = MEMORY[0x277D837D0];
  v12 = v88;
  *(&v92 + 1) = MEMORY[0x277D837D0];
  *&v91 = 3157559;
  *(&v91 + 1) = 0xE300000000000000;
  sub_24A3A60B4(&v91, &v89);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *&v88 = v12;
  sub_24A3A60C4(&v89, 0x6973726556707061, 0xEA00000000006E6FLL, v13);
  v14 = v88;
  v93 = v88;
  v15 = [v5 productType];
  if (v15)
  {
    v16 = v15;
    v17 = sub_24A4AB850();
    v19 = v18;

    v20 = v11;
    *(&v92 + 1) = v11;
    *&v91 = v17;
    *(&v91 + 1) = v19;
    sub_24A3A60B4(&v91, &v89);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *&v88 = v14;
    sub_24A3A60C4(&v89, 0x54746375646F7270, 0xEB00000000657079, v21);
    v93 = v88;
  }

  else
  {
    v20 = v11;
    sub_24A4A4198(0x54746375646F7270, 0xEB00000000657079, &v91);
    sub_24A3A83C8(&v91);
  }

  v22 = [v5 deviceClass];
  if (v22)
  {
    v23 = v22;
    v24 = sub_24A4AB850();
    v26 = v25;

    v27 = v20;
    *(&v92 + 1) = v20;
    *&v91 = v24;
    *(&v91 + 1) = v26;
    sub_24A3A60B4(&v91, &v89);
    v28 = v93;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v88 = v28;
    sub_24A3A60C4(&v89, 0x6C43656369766564, 0xEB00000000737361, v29);
    v93 = v88;
  }

  else
  {
    sub_24A4A4198(0x6C43656369766564, 0xEB00000000737361, &v91);
    sub_24A3A83C8(&v91);
    v27 = v20;
  }

  v30 = [v5 osVersion];
  if (v30)
  {
    v31 = v30;
    v32 = sub_24A4AB850();
    v34 = v33;

    *(&v92 + 1) = v27;
    *&v91 = v32;
    *(&v91 + 1) = v34;
    sub_24A3A60B4(&v91, &v89);
    v35 = v93;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v88 = v35;
    sub_24A3A60C4(&v89, 0x6F6973726556736FLL, 0xE90000000000006ELL, v36);
    v93 = v88;
  }

  else
  {
    sub_24A4A4198(0x6F6973726556736FLL, 0xE90000000000006ELL, &v91);
    sub_24A3A83C8(&v91);
  }

  v37 = [v5 osBuildVersion];
  if (v37)
  {
    v38 = v37;
    v39 = sub_24A4AB850();
    v41 = v40;

    *(&v92 + 1) = v27;
    *&v91 = v39;
    *(&v91 + 1) = v41;
    sub_24A3A60B4(&v91, &v89);
    v42 = v93;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v88 = v42;
    sub_24A3A60C4(&v89, 0x646C697542736FLL, 0xE700000000000000, v43);
    v93 = v88;
  }

  else
  {
    sub_24A4A4198(0x646C697542736FLL, 0xE700000000000000, &v91);
    sub_24A3A83C8(&v91);
  }

  v44 = [v5 deviceUDID];
  if (v44)
  {
    v45 = v44;
    v46 = sub_24A4AB850();
    v48 = v47;

    *(&v92 + 1) = v27;
    *&v91 = v46;
    *(&v91 + 1) = v48;
    sub_24A3A60B4(&v91, &v89);
    v49 = v93;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v88 = v49;
    sub_24A3A60C4(&v89, 0x4455656369766564, 0xEA00000000004449, v50);
    v51 = v88;
    v93 = v88;
  }

  else
  {
    sub_24A4A4198(0x4455656369766564, 0xEA00000000004449, &v91);
    sub_24A3A83C8(&v91);
    v51 = v93;
  }

  *(&v92 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v91) = 1;
  sub_24A3A60B4(&v91, &v89);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  *&v88 = v51;
  sub_24A3A60C4(&v89, 0xD000000000000012, 0x800000024A4B06C0, v52);
  v53 = v88;
  if (qword_27EF3EBB0 != -1)
  {
    swift_once();
  }

  *(&v92 + 1) = v27;
  v91 = xmmword_27EF3FBF0;
  sub_24A3A60B4(&v91, &v89);

  v54 = swift_isUniquelyReferenced_nonNull_native();
  *&v88 = v53;
  sub_24A3A60C4(&v89, 0x4B53656369766564, 0xE900000000000055, v54);
  v55 = v88;
  v93 = v88;
  result = [objc_opt_self() sharedConfiguration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v57 = result;
  v58 = [result countryCode];

  if (v58)
  {
    v59 = sub_24A4AB850();
    v61 = v60;

    *(&v92 + 1) = v27;
    *&v91 = v59;
    *(&v91 + 1) = v61;
    sub_24A3A60B4(&v91, &v89);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v88 = v55;
    sub_24A3A60C4(&v89, 0x437972746E756F63, 0xEB0000000065646FLL, v62);
    v93 = v88;
  }

  else
  {
    sub_24A4A4198(0x437972746E756F63, 0xEB0000000065646FLL, &v91);
    sub_24A3A83C8(&v91);
  }

  sub_24A4AAB70();
  v63 = sub_24A4AAB40();
  (*(v82 + 8))(v1, v84);
  v64 = [v63 objectForKey_];

  if (v64)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v91 = v89;
  v92 = v90;
  if (!*(&v90 + 1))
  {
    sub_24A3A83C8(&v91);
    goto LABEL_29;
  }

  v65 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    sub_24A4A4198(0x6F436E6F69676572, 0xEA00000000006564, &v91);
    sub_24A3A83C8(&v91);
    goto LABEL_30;
  }

  *(&v92 + 1) = v65;
  v91 = v88;
  sub_24A3A60B4(&v91, &v89);
  v66 = v93;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  *&v88 = v66;
  sub_24A3A60C4(&v89, 0x6F436E6F69676572, 0xEA00000000006564, v67);
  v93 = v88;
LABEL_30:
  if (qword_27EF3EBD8 != -1)
  {
    swift_once();
  }

  v68 = unk_27EF4E1B0;
  ObjectType = swift_getObjectType();
  v70 = (*(v68 + 32))(ObjectType, v68);
  if (v71)
  {
    *(&v92 + 1) = v27;
    *&v91 = v70;
    *(&v91 + 1) = v71;
    sub_24A3A60B4(&v91, &v89);
    v72 = v93;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *&v88 = v72;
    sub_24A3A60C4(&v89, 0x6E656B6F54737061, 0xE800000000000000, v73);
    v74 = v88;
    v93 = v88;
  }

  else
  {
    v74 = v93;
  }

  v75 = objc_opt_self();
  v76 = sub_24A4AB820();
  v77 = sub_24A4AB820();
  LOBYTE(v75) = [v75 BOOLForKey:v76 inDomain:v77];

  *(&v92 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v91) = v75;
  sub_24A3A60B4(&v91, &v89);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  *&v88 = v74;
  sub_24A3A60C4(&v89, 0xD000000000000010, 0x800000024A4B06A0, v78);

  (*(v85 + 8))(v83, v86);
  v80 = v87;
  v79 = v88;
  v81 = qword_27EF3FC10;
  swift_beginAccess();
  *(v80 + v81) = v79;
}

_OWORD *sub_24A3A60B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_24A3A60C4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A3A8430();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A3A6214(v16, a4 & 1);
    v11 = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_24A37EEE0(v22);

    sub_24A3A60B4(a1, v22);
  }

  else
  {
    sub_24A3A64CC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_24A3A6214(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&unk_27EF40370, &qword_24A4B4720);
  v33 = v4;
  result = sub_24A4AC080();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24A3A60B4(v24, v34);
      }

      else
      {
        sub_24A37EE84(v24, v34);
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24A3A60B4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_24A3A64CC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24A3A60B4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_24A3A6538()
{
  result = sub_24A3A655C();
  *&xmmword_27EF3FBF0 = result;
  *(&xmmword_27EF3FBF0 + 1) = v1;
  return result;
}

uint64_t sub_24A3A655C()
{
  v0 = sub_24A4AB820();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24A4AB840();

      return 0;
    }
  }

  return 0;
}

uint64_t sub_24A3A6604()
{
  v0 = objc_opt_self();
  v1 = sub_24A4AB820();
  v2 = sub_24A4AB820();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A4AB850();

  return v4;
}

void sub_24A3A66D8()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v26 - v3);
  v5 = *(v0 + qword_27EF4E2F8);
  if (v5)
  {
    v28 = sub_24A3C9CEC(&qword_27EF40D40, &qword_24A4BCA10);
    v27[0] = v5;
    swift_beginAccess();

    sub_24A3A6CEC(v27, 0x65746E6F43706174, 0xEA00000000007478);
    swift_endAccess();
  }

  sub_24A3A4548(v1 + qword_27EF4E2F0, v4);
  v6 = type metadata accessor for FMFFriend(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_24A3A6C84(v4);
  }

  else
  {
    v8 = *v4;
    v7 = v4[1];

    sub_24A3A16E4(v4);
    v28 = MEMORY[0x277D837D0];
    v27[0] = v8;
    v27[1] = v7;
    swift_beginAccess();
    sub_24A3A6CEC(v27, 0x64657463656C6573, 0xEE00646E65697246);
    swift_endAccess();
  }

  v9 = *(v1 + qword_27EF4E300);
  if (v9)
  {
    v28 = sub_24A3C9CEC(&qword_27EF40D38, &qword_24A4BCA08);
    v27[0] = v9;
    swift_beginAccess();

    sub_24A3A6CEC(v27, 0xD000000000000015, 0x800000024A4AF400);
    swift_endAccess();
  }

  v10 = *(v1 + qword_27EF4E308);
  if (v10)
  {
    v28 = sub_24A3C9CEC(&qword_27EF40D38, &qword_24A4BCA08);
    v27[0] = v10;
    swift_beginAccess();

    sub_24A3A6CEC(v27, 0xD000000000000012, 0x800000024A4AF420);
    swift_endAccess();
  }

  v11 = v1 + qword_27EF4E310;
  v12 = *(v1 + qword_27EF4E310);
  if (v12)
  {
    v14 = *(v11 + 8);
    v13 = *(v11 + 16);
    sub_24A3C9CEC(&qword_27EF40D20, &qword_24A4BC9F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B5060;
    *(inited + 32) = 0x697369567473616CLL;
    *(inited + 40) = 0xEF656D6954646574;
    *(inited + 48) = v12;
    *(inited + 56) = 0x54746E6572727563;
    *(inited + 64) = 0xEA00000000006261;
    *(inited + 72) = v14;
    *(inited + 80) = 0x6E657053656D6974;
    *(inited + 88) = 0xE900000000000074;
    *(inited + 96) = v13;

    v16 = sub_24A3A6DBC(inited);
    swift_setDeallocating();
    sub_24A3C9CEC(&qword_27EF40D28, &qword_24A4BC9F8);
    swift_arrayDestroy();
    v28 = sub_24A3C9CEC(&qword_27EF40D30, &qword_24A4BCA00);
    v27[0] = v16;
    swift_beginAccess();
    sub_24A3A6CEC(v27, 1935827316, 0xE400000000000000);
    swift_endAccess();
  }

  if (*(v1 + qword_27EF4E318) == 1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A4AB630();
    sub_24A378E18(v17, qword_27EF4E260);

    v18 = sub_24A4AB600();
    v19 = sub_24A4ABCE0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v21;
      *v20 = 136315138;
      swift_beginAccess();

      v22 = sub_24A4AB790();
      v24 = v23;

      v25 = sub_24A37BD58(v22, v24, v26);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_24A376000, v18, v19, "FMFInitRefreshController: Client Context for initClient: %s", v20, 0xCu);
      sub_24A37EEE0(v21);
      MEMORY[0x24C219130](v21, -1, -1);
      MEMORY[0x24C219130](v20, -1, -1);
    }
  }
}

uint64_t sub_24A3A6C84(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3A6CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24A3A60B4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_24A3A60C4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_24A37EF2C(a1, &qword_27EF3F808, &unk_24A4BA6D0);
    sub_24A4A4198(a2, a3, v9);

    return sub_24A37EF2C(v9, &qword_27EF3F808, &unk_24A4BA6D0);
  }

  return result;
}

unint64_t sub_24A3A6DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF40348, &qword_24A4BA138);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24A39B2C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for FMFInitRefreshClientResponse(uint64_t a1)
{
  result = qword_27EF3F0D8;
  if (!qword_27EF3F0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FMFBaseResponse(uint64_t a1)
{
  result = qword_27EF40DB0;
  if (!qword_27EF40DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A6FDC(uint64_t a1)
{
  if (!qword_27EF40DC0)
  {
    type metadata accessor for FMFCommandResponseFragment(255);
    v1 = sub_24A4ABDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF40DC0);
    }
  }
}

void sub_24A3A7034(uint64_t a1)
{
  sub_24A3A6FDC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for FMFCommandResponseFragment(uint64_t a1)
{
  result = qword_27EF3FFF8;
  if (!qword_27EF3FFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A7138(uint64_t a1)
{
  sub_24A3A7274(319);
  if (v1 <= 0x3F)
  {
    sub_24A3A72D8(319, &qword_27EF3F6C0, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      sub_24A3A732C();
      if (v3 <= 0x3F)
      {
        sub_24A3A72D8(319, &qword_27EF3F3A8, MEMORY[0x277CC9578]);
        if (v4 <= 0x3F)
        {
          sub_24A3A72D8(319, &qword_27EF3F7B8, type metadata accessor for FMFLocationAlert);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24A3A7274(uint64_t a1)
{
  if (!qword_27EF40008)
  {
    sub_24A3CBC9C(&qword_27EF40010, qword_24A4B9960);
    v1 = sub_24A4ABDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF40008);
    }
  }
}

void sub_24A3A72D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A4ABDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A3A732C()
{
  if (!qword_27EF3F398)
  {
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF3F398);
    }
  }
}

uint64_t sub_24A3A73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A4AB690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + qword_27EF407B0);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = v5;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  aBlock[4] = sub_24A3A7798;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A138;
  v18 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v22 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_24A3A768C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3A76E4(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  result = swift_beginAccess();
  if (*(a1 + v4) == 1 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(a1, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24A3A77A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v70 = a3;
  v8 = sub_24A4AAAD0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  v12 = sub_24A378E18(v11, qword_27EF4E260);

  v71 = v12;
  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v66 = v9;
    v16 = v15;
    v65 = swift_slowAlloc();
    v73[0] = v65;
    *v16 = 136315138;
    HIDWORD(v64) = v14;
    v67 = v8;
    v17 = *(a1 + qword_27EF40798);
    v18 = *(a1 + qword_27EF40798 + 8);

    v19 = sub_24A37E99C(0xCuLL, v17, v18);
    v21 = v20;
    v22 = a4;
    v24 = v23;
    v26 = v25;

    v27 = v24;
    a4 = v22;
    v28 = MEMORY[0x24C217CD0](v19, v21, v27, v26);
    v30 = v29;

    v31 = sub_24A37BD58(v28, v30, v73);
    v8 = v67;

    *(v16 + 4) = v31;
    _os_log_impl(&dword_24A376000, v13, BYTE4(v64), "FMFServerInteractionController<%s>: sending request…", v16, 0xCu);
    v32 = v65;
    sub_24A37EEE0(v65);
    MEMORY[0x24C219130](v32, -1, -1);
    v33 = v16;
    v9 = v66;
    MEMORY[0x24C219130](v33, -1, -1);
  }

  v34 = objc_allocWithZone(MEMORY[0x277D07B80]);
  v35 = sub_24A4AB820();
  v36 = [v34 initWithDescription:v35 andTimeout:120.0];

  v37 = *a2;
  if (type metadata accessor for FMFInitRefreshClientRequest(0) != v37)
  {
    v38 = v68;
    sub_24A4AAAC0();
    v39 = qword_27EF4E290;
    swift_beginAccess();
    (*(v9 + 40))(a1 + v39, v38, v8);
    swift_endAccess();
  }

  sub_24A3A7DF4(a2);
  v74 = type metadata accessor for FMFBaseRequest(0);
  v75 = MEMORY[0x277D07D08];
  v73[0] = a2;
  v72[3] = v74;
  v72[4] = sub_24A37F064(&qword_27EF40800, type metadata accessor for FMFBaseRequest, &unk_24A4B7CA8);
  v72[0] = a2;
  v40 = objc_opt_self();
  swift_retain_n();
  v41 = [v40 processInfo];
  v42 = [v41 processName];

  sub_24A4AB850();
  v43 = swift_allocObject();
  v44 = v70;
  v43[2] = v69;
  v43[3] = a1;
  v43[4] = a2;
  v43[5] = v44;
  v43[6] = a4;
  v43[7] = v36;

  v45 = v36;
  sub_24A4AAC70();

  sub_24A37EEE0(v72);
  sub_24A37EEE0(v73);
  [v45 wait];

  v46 = sub_24A4AB600();
  v47 = sub_24A4ABCE0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v73[0] = v49;
    *v48 = 136315138;
    v50 = a1 + qword_27EF40798;
    v51 = *(a1 + qword_27EF40798);
    v52 = *(v50 + 8);

    v53 = sub_24A37E99C(0xCuLL, v51, v52);
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v60 = MEMORY[0x24C217CD0](v53, v55, v57, v59);
    v62 = v61;

    v63 = sub_24A37BD58(v60, v62, v73);

    *(v48 + 4) = v63;
    _os_log_impl(&dword_24A376000, v46, v47, "FMFServerInteractionController<%s>: request sent and done", v48, 0xCu);
    sub_24A37EEE0(v49);
    MEMORY[0x24C219130](v49, -1, -1);
    MEMORY[0x24C219130](v48, -1, -1);
  }
}

uint64_t sub_24A3A7DA4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3A7DF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A4AAAD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20[-v9];
  v11 = sub_24A4AAB80();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v2 + qword_27EF4E2A8);
  if (v15)
  {
    *(a1 + qword_27EF3FC18) = v15;

    v16 = *(v2 + qword_27EF4E2B0);
    if (v16)
    {
      *(a1 + qword_27EF3FC20) = v16;
    }
  }

  sub_24A37B740(v2 + qword_27EF407B8, v10, &qword_27EF3F650, &qword_24A4B5A10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24A37EF2C(v10, &qword_27EF3F650, &qword_24A4B5A10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_24A3A8128(v14, 1);
    (*(v12 + 8))(v14, v11);
  }

  v17 = qword_27EF4E290;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v17, v4);
  v18 = qword_27EF4E0D8;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v18, v7, v4);
  swift_endAccess();
  sub_24A3A85D4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24A3A8128(uint64_t a1, char a2)
{
  v4 = qword_27EF3FC10;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v27 = v5;
  v6 = *(v5 + 16);

  if (v6 && (v7 = sub_24A39B2C8(0x6F436E6F69676572, 0xEA00000000006564), (v8 & 1) != 0))
  {
    sub_24A37EE84(*(v5 + 56) + 32 * v7, &v25);
    sub_24A3A83C8(&v25);
    if ((a2 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    sub_24A3A83C8(&v25);
  }

  v9 = sub_24A4AAB40();
  v10 = [v9 objectForKey_];

  if (v10)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (!*(&v23 + 1))
  {
    sub_24A3A83C8(v24);
    goto LABEL_13;
  }

  v11 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    sub_24A4A4198(0x6F436E6F69676572, 0xEA00000000006564, v24);
    sub_24A3A83C8(v24);
    v5 = v27;
    goto LABEL_14;
  }

  *(&v26 + 1) = v11;
  v25 = v21;
  sub_24A3A60B4(&v25, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v24, 0x6F436E6F69676572, 0xEA00000000006564, isUniquelyReferenced_nonNull_native);
  v27 = v5;
LABEL_14:
  if (*(v5 + 16) && (v13 = sub_24A39B2C8(0x656C61636F6CLL, 0xE600000000000000), (v14 & 1) != 0))
  {
    sub_24A37EE84(*(v5 + 56) + 32 * v13, &v25);
    sub_24A3A83C8(&v25);
    if ((a2 & 1) == 0)
    {
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    sub_24A3A83C8(&v25);
  }

  v16 = MEMORY[0x277D837D0];
  sub_24A4AAB30();
  v17 = sub_24A4AAB60();
  v19 = v18;

  *(&v26 + 1) = v16;
  *&v25 = v17;
  *(&v25 + 1) = v19;
  sub_24A3A60B4(&v25, v24);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v24, 0x656C61636F6CLL, 0xE600000000000000, v20);
}

uint64_t sub_24A3A83C8(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F808, &unk_24A4BA6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24A3A8430()
{
  v1 = v0;
  sub_24A3C9CEC(&unk_27EF40370, &qword_24A4B4720);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24A37EE84(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24A3A60B4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_24A3A85D4()
{
  v1 = v0;
  v2 = sub_24A4AAAD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-v7];
  sub_24A4AAAC0();
  sub_24A4AAA90();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v8, v2);
  v12 = qword_27EF4E0D8;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  sub_24A4AAA90();
  v14 = v13;
  result = (v11)(v5, v2);
  v16 = v10 - v14;
  if (COERCE__INT64(fabs(v10 - v14)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v16 * 1000) >> 64 == (1000 * v16) >> 63)
  {
    v18[3] = MEMORY[0x277D83B88];
    v18[0] = 1000 * v16;
    swift_beginAccess();
    sub_24A3A6CEC(v18, 0xD000000000000016, 0x800000024A4B0680);
    return swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24A3A87F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3A8864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24A3A88AC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v17 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v16 - v4;
  v18 = v6;
  sub_24A4ABB30();

  swift_getWitnessTable();
  v7 = sub_24A4ABFA0();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = sub_24A4ABAF0();

    _os_log_impl(&dword_24A376000, v9, v10, "FMImageCache: Preloading data for %ld requests.", v11, 0xCu);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  else
  {
  }

  if (!sub_24A4ABAF0())
  {
  }

  for (i = 0; ; ++i)
  {
    v13 = sub_24A4ABAD0();
    sub_24A4ABA90();
    if (v13)
    {
      (*(v3 + 16))(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * i, v2);
      v14 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    result = sub_24A4ABF60();
    if (v17 != 8)
    {
      break;
    }

    v18 = result;
    (*(v3 + 16))(v5, &v18, v2);
    swift_unknownObjectRelease();
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
LABEL_15:
      __break(1u);
    }

LABEL_10:
    sub_24A496E28(v5, 0, 0);
    (*(v3 + 8))(v5, v2);
    if (v14 == sub_24A4ABAF0())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A3A8C44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24A3A8D3C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);
    v35 = sub_24A4AB600();
    v15 = sub_24A4ABCC0();
    if (os_log_type_enabled(v35, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A376000, v35, v15, "FMAPSConnectionHandler: Public APS Token was nil.", v16, 2u);
      MEMORY[0x24C219130](v16, -1, -1);
    }

    v17 = v35;
  }

  else
  {
    v33 = v11;
    v34 = v10;
    v35 = v6;
    v18 = sub_24A4AAA00();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A4AB630();
    sub_24A378E18(v19, qword_27EF4E260);
    v20 = v18;
    v21 = sub_24A4AB600();
    v22 = sub_24A4ABCE0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_24A376000, v21, v22, "FMAPSConnectionHandler: Public APS Token received %@.", v23, 0xCu);
      sub_24A3A9244(v24);
      MEMORY[0x24C219130](v24, -1, -1);
      MEMORY[0x24C219130](v23, -1, -1);
    }

    v26 = [v20 fm_hexString];
    v27 = sub_24A4AB850();
    v29 = v28;

    v30 = swift_allocObject();
    v30[2] = v3;
    v30[3] = v27;
    v30[4] = v29;
    aBlock[4] = sub_24A3A92B0;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89E28;
    v31 = _Block_copy(aBlock);
    v32 = v3;
    sub_24A4AB6B0();
    v36 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v13, v8, v31);
    _Block_release(v31);

    (v35[1].isa)(v8, v5);
    (*(v33 + 8))(v13, v34);
  }
}

uint64_t sub_24A3A9244(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF403C0, &unk_24A4B5050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3A92EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v6 = (a1 + *a4);
  *v6 = a2;
  v6[1] = a3;

  return a5(v7);
}

uint64_t sub_24A3A9340()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_preferencesStore + 8);
  ObjectType = swift_getObjectType();
  v3 = (v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken);
  v4 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken);
  v5 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken + 8);
  v6 = *(v1 + 40);

  v6(v4, v5, ObjectType, v1);
  v7 = v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    v10 = swift_getObjectType();
    v11 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken);
    v12 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken + 8);
    v13 = *v3;
    v14 = v3[1];
    v15 = *(v9 + 8);

    v15(v0, v11, v12, v13, v14, v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A3A94C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = sub_24A4AB820();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_self();
  v6 = sub_24A4AB820();
  v7 = sub_24A4AB820();
  [v5 setString:v4 forKey:v6 inDomain:v7];
}

void sub_24A3A95A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  oslog = sub_24A4AB600();
  v7 = sub_24A4ABCB0();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    if (a2)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (a2)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_24A37BD58(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (a4)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (a4)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_24A37BD58(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_24A376000, oslog, v7, "FMFRefreshController: connectionHandler didReceive topicToken: %s publicToken:%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }
}

uint64_t sub_24A3A978C()
{
  v1 = type metadata accessor for FMFFriend(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A4AAAD0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + v1[19] + 8))
  {
  }

  v9 = v5 + v1[20];
  v10 = type metadata accessor for FMFLocation(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 32);
    v12 = sub_24A4AAB20();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    v14 = v9 + *(v10 + 44);
    v15 = *(v14 + 304);
    if (v15)
    {
      if (*(v14 + 168))
      {

        v15 = *(v14 + 304);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A3A9ABC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3A9B2C()
{
  v1 = v0;
  v18 = *MEMORY[0x277D85DE8];
  v2 = qword_27EF3FC10;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
  v17 = v4;
  v16[0] = v3;
  swift_beginAccess();

  sub_24A3A6CEC(v16, 0x6F43746E65696C63, 0xED0000747865746ELL);
  v5 = *(v1 + qword_27EF3FC18);
  v17 = v4;
  v16[0] = v5;

  sub_24A3A6CEC(v16, 0x6F43726576726573, 0xED0000747865746ELL);
  v6 = *(v1 + qword_27EF3FC20);
  v17 = v4;
  v16[0] = v6;

  sub_24A3A6CEC(v16, 0x746E6F4361746164, 0xEB00000000747865);
  swift_endAccess();
  v7 = objc_opt_self();

  v8 = sub_24A4AB760();

  LODWORD(v4) = [v7 isValidJSONObject_];

  if (v4)
  {

    v9 = sub_24A4AB760();

    v16[0] = 0;
    v10 = [v7 dataWithJSONObject:v9 options:0 error:v16];

    v11 = v16[0];
    if (v10)
    {
      v12 = sub_24A4AAA10();

      return v12;
    }

    v14 = v11;
    v15 = sub_24A4AA950();

    swift_willThrow();
  }

  return 0;
}

double sub_24A3A9DC0()
{
  swift_beginAccess();

  return result;
}

unint64_t sub_24A3A9E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF40350, &qword_24A4BA140);
    v3 = sub_24A4AC090();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A37B740(v4, &v11, &qword_27EF40358, &qword_24A4BA148);
      v5 = v11;
      result = sub_24A3A9F64(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24A3A60B4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A3A9F64(uint64_t a1)
{
  sub_24A4AB850();
  sub_24A4AC360();
  sub_24A4AB8F0();
  v2 = sub_24A4AC3A0();

  return sub_24A3A9FF8(a1, v2);
}

unint64_t sub_24A3A9FF8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24A4AB850();
      v8 = v7;
      if (v6 == sub_24A4AB850() && v8 == v9)
      {
        break;
      }

      v11 = sub_24A4AC270();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_24A3AA0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FMFFeatures.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF40650, &qword_24A4BAED8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_24A37EACC(a1, a1[3]);
  sub_24A383BB0();
  sub_24A4AC3D0();
  v8[31] = 0;
  sub_24A4AC1C0();
  if (!v1)
  {
    v8[30] = 1;
    sub_24A4AC1C0();
    v8[29] = 2;
    sub_24A4AC1C0();
    v8[28] = 3;
    sub_24A4AC1C0();
    v8[27] = 4;
    sub_24A4AC1C0();
    v8[26] = 5;
    sub_24A4AC1C0();
    v8[25] = 6;
    sub_24A4AC1C0();
    v8[24] = 7;
    sub_24A4AC1C0();
    v8[15] = 8;
    sub_24A4AC1C0();
    v8[14] = 9;
    sub_24A4AC1C0();
    v8[13] = 10;
    sub_24A4AC1C0();
    v8[12] = 11;
    sub_24A4AC1C0();
    v8[11] = 12;
    sub_24A4AC1C0();
    v8[10] = 13;
    sub_24A4AC1C0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24A3AA4FC()
{
  v1 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  swift_beginAccess();
  return *(v0 + v1);
}

__n128 sub_24A3AA540(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t FMFConfig.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FF08, &qword_24A4B8F48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - v5;
  v7 = *(v1 + 8);
  v48 = *(v1 + 16);
  v49 = v7;
  v8 = *(v1 + 32);
  v46 = *(v1 + 40);
  v47 = v8;
  v43 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v44 = *(v1 + 80);
  v45 = v10;
  v12 = *(v1 + 88);
  v38 = *(v1 + 96);
  v41 = *(v1 + 104);
  v42 = v9;
  v14 = *(v1 + 112);
  v13 = *(v1 + 120);
  v39 = v11;
  v40 = v14;
  v36 = v13;
  v37 = v12;
  v15 = *(v1 + 136);
  v35 = *(v1 + 128);
  v30[3] = v15;
  v16 = *(v1 + 152);
  v30[4] = *(v1 + 144);
  v30[5] = v16;
  v17 = *(v1 + 168);
  v30[6] = *(v1 + 160);
  v30[7] = v17;
  v18 = *(v1 + 184);
  v30[8] = *(v1 + 176);
  v30[9] = v18;
  v30[10] = *(v1 + 192);
  LODWORD(v18) = *(v1 + 201);
  v31 = *(v1 + 200);
  v32 = v18;
  v19 = *(v1 + 216);
  v33 = *(v1 + 208);
  v34 = v19;
  v21 = *(v1 + 224);
  v20 = *(v1 + 232);
  v22 = a1[3];
  v23 = a1;
  v25 = v24;
  sub_24A37EACC(v23, v22);
  sub_24A384718();
  sub_24A4AC3D0();
  v51 = 0;
  v26 = v50;
  sub_24A4AC1E0();
  if (v26)
  {
    return (*(v4 + 8))(v6, v25);
  }

  v30[2] = v20;
  v30[1] = v21;
  v50 = v4;
  v51 = 1;
  sub_24A4AC1E0();
  v51 = 2;
  sub_24A4AC1E0();
  v51 = 3;
  sub_24A4AC1D0();
  v51 = 4;
  sub_24A4AC1E0();
  v51 = 5;
  sub_24A4AC1E0();
  v51 = 6;
  sub_24A4AC1C0();
  v51 = 7;
  sub_24A4AC1E0();
  v51 = 8;
  sub_24A4AC1E0();
  v51 = 9;
  v48 = v6;
  v49 = v25;
  sub_24A4AC1E0();
  v51 = 10;
  sub_24A4AC1E0();
  v51 = 11;
  sub_24A4AC1E0();
  v51 = 12;
  sub_24A4AC1C0();
  v51 = 13;
  sub_24A4AC1E0();
  v51 = 14;
  sub_24A4AC1E0();
  v51 = 15;
  sub_24A4AC1E0();
  v51 = 16;
  sub_24A4AC1E0();
  v51 = 17;
  sub_24A4AC1E0();
  v51 = 18;
  sub_24A4AC1E0();
  v51 = 19;
  sub_24A4AC1E0();
  v51 = 20;
  sub_24A4AC1E0();
  v51 = 21;
  sub_24A4AC1E0();
  v51 = 22;
  sub_24A4AC1E0();
  v51 = 23;
  sub_24A4AC1E0();
  v51 = 24;
  sub_24A4AC1E0();
  v51 = 25;
  sub_24A4AC1C0();
  v51 = 26;
  sub_24A4AC1C0();
  v51 = 27;
  sub_24A4AC1E0();
  v51 = 28;
  sub_24A4AC1E0();
  v51 = 29;
  sub_24A4AC1E0();
  v51 = 30;
  v28 = v48;
  v29 = v49;
  sub_24A4AC1E0();
  return (*(v50 + 8))(v28, v29);
}

uint64_t sub_24A3AACC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{

  sub_24A3C9CEC(a1, a2);
  sub_24A4ABD70();

  return v6;
}

uint64_t sub_24A3AAD48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A390DA0();
  *a1 = result;
  return result;
}

uint64_t FMFFriend.relationshipType.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FMFFriend(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

unint64_t sub_24A3AADFC()
{
  result = qword_27EF3FBC8;
  if (!qword_27EF3FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBC8);
  }

  return result;
}

unint64_t sub_24A3AAE54()
{
  result = qword_27EF3FBD0;
  if (!qword_27EF3FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBD0);
  }

  return result;
}

void *sub_24A3AAF24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A397C64();
  *a1 = result;
  return result;
}

uint64_t sub_24A3AAFA8()
{

  sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
  sub_24A4ABD70();
}

uint64_t sub_24A3AB038(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_24A3AB078(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[67];
  v4 = v3[5];
  v5 = v3[6];
  v7 = v3[7];
  v6 = v3[8];
  v8 = v4;
  v9 = v5;
  v10 = v7;
  v11 = v6;
  if (!v7)
  {
    v8 = a1[93];
    v9 = a1[94];
    v10 = a1[95];
    v11 = a1[96];
    sub_24A388B00(v8, v9, v10, v11);
  }

  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  sub_24A388B00(v4, v5, v7, v6);
}

double FMFFriend.contact.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFFriend(0) + 76));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  return sub_24A39AED0(v4, v5, v6, v7, v8, v9, v10);
}

id sub_24A3AB248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41[1] = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A4B4E10;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_24A4ABA50();

  v11 = [v8 predicateForContactsWithIdentifiers_];

  v12 = *(v4 + 56);
  if (!a3)
  {
    sub_24A3A1488();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v13 = sub_24A4ABA50();

  v41[0] = 0;
  v14 = [v12 unifiedContactsMatchingPredicate:v11 keysToFetch:v13 error:v41];

  v15 = v41[0];
  if (v14)
  {
    sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
    v16 = sub_24A4ABA70();
    v17 = qword_27EF3EBF8;
    v18 = v15;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = sub_24A4AB630();
    sub_24A378E18(v19, qword_27EF4E260);

    v20 = sub_24A4AB600();
    v21 = sub_24A4ABCE0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v14;
      *v23 = v14;
      _os_log_impl(&dword_24A376000, v20, v21, "Got contact - %@", v22, 0xCu);
      sub_24A37EF2C(v23, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v23, -1, -1);
      MEMORY[0x24C219130](v22, -1, -1);
    }

    else
    {

      v20 = v14;
    }

    if (v16 >> 62)
    {
      if (sub_24A4AC060())
      {
        goto LABEL_15;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      v36 = sub_24A42F78C(v16);

      return v36;
    }

    v38 = sub_24A4AB600();
    v39 = sub_24A4ABCE0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24A376000, v38, v39, "No contact found in store", v40, 2u);
      MEMORY[0x24C219130](v40, -1, -1);
    }
  }

  else
  {
    v24 = v41[0];
    v25 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v26 = sub_24A4AB630();
    sub_24A378E18(v26, qword_27EF4E260);
    v27 = v25;
    v28 = sub_24A4AB600();
    v29 = sub_24A4ABCE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41[0] = v31;
      *v30 = 136315138;
      v32 = v25;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v33 = sub_24A4AB870();
      v35 = sub_24A37BD58(v33, v34, v41);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_24A376000, v28, v29, "Error getting contact - %s", v30, 0xCu);
      sub_24A37EEE0(v31);
      MEMORY[0x24C219130](v31, -1, -1);
      MEMORY[0x24C219130](v30, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

double FMFFriend.locationAlertsOnFriend.getter()
{
  type metadata accessor for FMFFriend(0);

  return result;
}

uint64_t FMFFriend.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t FMFFriend.name.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFFriend(0) + 76));
  if (v1[1])
  {
    v2 = v1[2];
    v3 = v1[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {

      return v2;
    }
  }

  v5 = *(v0 + 32);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_24A3A11EC(*(v5 + 16), 0, &qword_27EF3F2F0, &unk_24A4B68D0);
    v8 = sub_24A3A1268(&v14, v7 + 4, v6, v5);
    v9 = v14;

    sub_24A3A13C0(v9);
    if (v8 == v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_10:
  v14 = v7;
  sub_24A3A13C8(&v14);
  if (*(v14 + 2))
  {
    v2 = *(v14 + 4);
    v10 = *(v14 + 5);

    if (qword_27EF3EBC0 != -1)
    {
      swift_once();
    }

    v11 = qword_27EF4E198;
    v12 = sub_24A4AB820();
    LOBYTE(v11) = [v11 evaluateWithObject_];

    if ((v11 & 1) == 0)
    {
      v2 = sub_24A45D170(v2, v10);
    }
  }

  else
  {

    return 0xD000000000000014;
  }

  return v2;
}

uint64_t sub_24A3ABAD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24A4AC220();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24A4ABAC0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24A40B5B4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_24A3ABBD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24A3ABBD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_24A4AC270(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A3ABCA0()
{
  sub_24A37B428(0, &unk_27EF403E0, 0x277CCAC30);
  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A4B4E10;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_24A3ABD70();
  *(v0 + 32) = 0xD000000000000029;
  *(v0 + 40) = 0x800000024A4B1A00;
  result = sub_24A4ABC90();
  qword_27EF4E198 = result;
  return result;
}

unint64_t sub_24A3ABD70()
{
  result = qword_27EF403F0;
  if (!qword_27EF403F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF403F0);
  }

  return result;
}

uint64_t FMFFriend.shortName.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFFriend(0) + 76));
  if (!v1[1])
  {
    return 0;
  }

  v2 = v1[5];
  v3 = v1[6];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  return v2;
}

uint64_t sub_24A3ABE58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 104);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24A3ABFA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 48);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 104);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_24A3AC160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 536);
  result = swift_beginAccess();
  v6 = *(v4 + 24);
  v7 = v6[2];
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_5:
    *a2 = v8;
    return result;
  }

  v13[9] = v2;
  v8 = sub_24A40B47C(v7, 0);
  v9 = *(type metadata accessor for FMFFriend(0) - 8);
  sub_24A40C240(v13, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v6);
  v11 = v10;
  v12 = v13[0];

  result = sub_24A3A13C0(v12);
  if (v11 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for FMFLocationAlertTriggerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFLocationAlertTriggerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFPendingUpdateReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t FMFPreferences.primaryEmail.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t getEnumTagSinglePayload for FMFPendingUpdateReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_24A3AC568(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_24A39B2C8(0xD000000000000019, 0x800000024A4AEC50);
    if (v2)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v3 = MEMORY[0x277D83B88];
      result = swift_dynamicCast();
      if (result)
      {
        v4 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v4 = v38;
        }

        v41 = v3;
        v40[0] = v4;
        swift_beginAccess();
        sub_24A3B1460(v40, 1);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0x74655365636E6566, 0xEE006B6E694C7075);
    if (v5)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v6 = MEMORY[0x277D837D0];
      result = swift_dynamicCast();
      if (result)
      {
        v8 = v38;
        v7 = v39;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v7 = v39;
          v8 = v38;
        }

        v41 = v6;
        v40[0] = v8;
        v40[1] = v7;
        swift_beginAccess();
        sub_24A3B1460(v40, 0);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000015, 0x800000024A4AEC70);
    if (v9)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v10 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v11 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v11 = v38;
        }

        v41 = v10;
        v40[0] = v11;
        swift_beginAccess();
        sub_24A3B1460(v40, 2);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000014, 0x800000024A4AEC90);
    if (v12)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v13 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v14 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v14 = v38;
        }

        v41 = v13;
        v40[0] = v14;
        swift_beginAccess();
        sub_24A3B1460(v40, 3);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000018, 0x800000024A4AECD0);
    if (v15)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v16 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v17 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v17 = v38;
        }

        v41 = v16;
        v40[0] = v17;
        swift_beginAccess();
        sub_24A3B1460(v40, 5);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000020, 0x800000024A4AECF0);
    if (v18)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v19 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v20 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v20 = v38;
        }

        v41 = v19;
        v40[0] = v20;
        swift_beginAccess();
        sub_24A3B1460(v40, 6);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD00000000000001DLL, 0x800000024A4AECB0);
    if (v21)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v22 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v23 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v23 = v38;
        }

        v41 = v22;
        v40[0] = v23;
        swift_beginAccess();
        sub_24A3B1460(v40, 4);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD00000000000001DLL, 0x800000024A4AED20);
    if (v24)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v25 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v26 = v38;
        if (qword_27EF3EC10 != -1)
        {
          swift_once();
          v26 = v38;
        }

        v41 = v25;
        v40[0] = v26;
        swift_beginAccess();
        sub_24A3B1460(v40, 7);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD00000000000001BLL, 0x800000024A4AED40);
    if (v27)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v28 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v29 = v38;
        if (qword_27EF3EC18 != -1)
        {
          swift_once();
          v29 = v38;
        }

        v41 = v28;
        v40[0] = v29;
        swift_beginAccess();
        sub_24A3B1460(v40, 8);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD00000000000001BLL, 0x800000024A4AED60);
    if (v30)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v31 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v32 = v38;
        if (qword_27EF3EC18 != -1)
        {
          swift_once();
          v32 = v38;
        }

        v41 = v31;
        v40[0] = v32;
        swift_beginAccess();
        sub_24A3B1460(v40, 9);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000020, 0x800000024A4AED80);
    if (v33)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v34 = MEMORY[0x277D839F8];
      result = swift_dynamicCast();
      if (result)
      {
        v35 = v38;
        if (qword_27EF3EC18 != -1)
        {
          swift_once();
          v35 = v38;
        }

        v41 = v34;
        v40[0] = v35;
        swift_beginAccess();
        sub_24A3B1460(v40, 10);
        result = swift_endAccess();
      }
    }
  }

  if (*(v1 + 16))
  {
    result = sub_24A39B2C8(0xD000000000000018, 0x800000024A4AEDE0);
    if (v36)
    {
      sub_24A37EE84(*(v1 + 56) + 32 * result, v40);
      v37 = MEMORY[0x277D83B88];
      result = swift_dynamicCast();
      if (result)
      {
        if (qword_27EF3EC20 != -1)
        {
          swift_once();
        }

        v41 = v37;
        v40[0] = v38;
        swift_beginAccess();
        sub_24A3B1460(v40, 12);
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_24A3ACFD4()
{
  sub_24A3C9CEC(&qword_27EF40808, &unk_24A4BB7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4BB5E0;
  *(inited + 32) = 0;
  v1 = sub_24A4AB820();
  v2 = MGGetSInt32Answer();

  if (v2 == 9)
  {
    v4 = "s-for-friends-iph843dd79b6/ios";
    v3 = 0xD000000000000056;
  }

  else if (v2 == 3)
  {
    v3 = 0xD00000000000005FLL;
    v4 = "tions-fmmeb70d2de0/mac";
  }

  else
  {
    v4 = "DeviceClassNumber";
    v3 = 0xD00000000000005ELL;
  }

  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = v4 | 0x8000000000000000;
  *(inited + 72) = 1;
  v5 = MEMORY[0x277D83B88];
  *(inited + 104) = MEMORY[0x277D83B88];
  *(inited + 80) = 200;
  *(inited + 112) = 2;
  v6 = MEMORY[0x277D839F8];
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0x4000000000000000;
  *(inited + 152) = 3;
  *(inited + 184) = v6;
  *(inited + 160) = 0x404E000000000000;
  *(inited + 192) = 5;
  *(inited + 224) = v6;
  *(inited + 200) = 0x403E000000000000;
  *(inited + 232) = 6;
  *(inited + 264) = v5;
  *(inited + 240) = 100;
  *(inited + 272) = 4;
  *(inited + 304) = v6;
  *(inited + 280) = 0x403E000000000000;
  *(inited + 312) = 7;
  *(inited + 344) = v6;
  *(inited + 320) = 0x4092C00000000000;
  *(inited + 352) = 11;
  *(inited + 384) = v6;
  *(inited + 360) = 0x4072C00000000000;
  v7 = sub_24A3AD5F4(inited);
  swift_setDeallocating();
  sub_24A3C9CEC(&qword_27EF403A0, &unk_24A4BA180);
  result = swift_arrayDestroy();
  off_27EF40778 = v7;
  return result;
}

void sub_24A3AD1E4(uint64_t a1, double a2)
{
  v4 = sub_24A4AAAD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  if (*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_maxCallbackInterval) < a2)
  {
    a2 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_maxCallbackInterval);
  }

  v11 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_minCallbackInterval;
  if (a2 >= *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_minCallbackInterval))
  {
    v23 = 1;
  }

  else
  {
    sub_24A4AAAC0();
    sub_24A4AAA90();
    v13 = v12;
    v14 = *(v5 + 8);
    v14(v10, v4);
    v15 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_lastRefreshTime;
    swift_beginAccess();
    (*(v5 + 16))(v7, a1 + v15, v4);
    sub_24A4AAA90();
    v17 = v16;
    v14(v7, v4);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v18 = v13 - v17;
    v19 = sub_24A4AB630();
    sub_24A378E18(v19, qword_27EF4E260);
    v20 = sub_24A4AB600();
    v21 = sub_24A4ABCE0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = v18;
      _os_log_impl(&dword_24A376000, v20, v21, "FMFRefreshController: last refresh interval %{public}f s", v22, 0xCu);
      MEMORY[0x24C219130](v22, -1, -1);
    }

    v23 = 0;
    if (*(a1 + v11) + v18 * -1000.0 > 0.0)
    {
      a2 = *(a1 + v11) + v18 * -1000.0;
    }

    else
    {
      a2 = 0.0;
    }
  }

  *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshReason) = v23;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v24 = sub_24A4AB630();
  sub_24A378E18(v24, qword_27EF4E260);
  v25 = sub_24A4AB600();
  v26 = sub_24A4ABCE0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134349056;
    *(v27 + 4) = a2;
    _os_log_impl(&dword_24A376000, v25, v26, "FMFRefreshController: scheduling next refresh in %{public}f s", v27, 0xCu);
    MEMORY[0x24C219130](v27, -1, -1);
  }

  v28 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshTimer;
  [*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshTimer) invalidate];
  v29 = [objc_opt_self() timerWithTimeInterval:a1 target:sel_refreshTimerFired selector:0 userInfo:0 repeats:a2 / 1000.0];
  v30 = [objc_opt_self() mainRunLoop];
  [v30 addTimer:v29 forMode:*MEMORY[0x277CBE640]];

  v31 = *(a1 + v28);
  *(a1 + v28) = v29;
}

unint64_t sub_24A3AD5F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF40398, &unk_24A4BD220);
    v3 = sub_24A4AC090();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A37B740(v4, v10, &qword_27EF403A0, &unk_24A4BA180);
      result = sub_24A3AE6B8(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_24A3A60B4(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_24A3AD714(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, id *a5, void (*a6)(void, void), uint64_t a7, void *a8, uint64_t a9)
{
  if (a3)
  {
    v13 = sub_24A4AA700();
    v63[3] = v13;
    v63[4] = sub_24A37F064(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v14 = sub_24A38D3BC(v63);
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D089E0], v13);
    LOBYTE(v13) = sub_24A4AA6C0();
    sub_24A37EEE0(v63);
    if (v13)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v15 = sub_24A4AB630();
      sub_24A378E18(v15, qword_27EF4E260);
      v16 = a3;
      v17 = sub_24A4AB600();
      v18 = sub_24A4ABCE0();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v63[0] = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_24A4AC310();
        v23 = a6;
        v24 = a8;
        v25 = sub_24A37BD58(v21, v22, v63);

        *(v19 + 4) = v25;
        a8 = v24;
        a6 = v23;
        _os_log_impl(&dword_24A376000, v17, v18, "FMFServerInteractionController: didn't complete because of error (will check Stewie): %s", v19, 0xCu);
        sub_24A37EEE0(v20);
        MEMORY[0x24C219130](v20, -1, -1);
        MEMORY[0x24C219130](v19, -1, -1);
      }

      sub_24A459010(v63);
      v26 = sub_24A3CF238(v63);
      v27 = sub_24A37EEE0(v63);
      if (v26 & 1) != 0 && ((*(*a5 + qword_27EF4E0E0 + 192))(v27))
      {
        v28 = sub_24A4AB600();
        v29 = sub_24A4ABCE0();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_24A376000, v28, v29, "FMFServerInteractionController: discarded alert because refresh request and Stewie-enabled", v30, 2u);
          MEMORY[0x24C219130](v30, -1, -1);
        }
      }

      else
      {
        v35 = sub_24A4AB600();
        v36 = sub_24A4ABCE0();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_24A376000, v35, v36, "FMFServerInteractionController: proceeding with alert", v37, 2u);
          MEMORY[0x24C219130](v37, -1, -1);
        }

        sub_24A459EF0(a5, a3);
      }
    }

    a6(0, a3);
    return [a8 signal];
  }

  v33 = *a5;
  if (type metadata accessor for FMFInitRefreshClientRequest(0) == v33)
  {
    *(a4 + qword_27EF407C0) = 1;
  }

  if (a2 >> 60 == 15)
  {
    goto LABEL_28;
  }

  v34 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v34 != 2)
    {
LABEL_26:
      sub_24A386DFC(a1, a2);
      goto LABEL_28;
    }

    if (*(a1 + 16) == *(a1 + 24))
    {
LABEL_28:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v39 = sub_24A4AB630();
      sub_24A378E18(v39, qword_27EF4E260);
      v40 = sub_24A4AB600();
      v41 = sub_24A4ABCE0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_24A376000, v40, v41, "FMFServerInteractionController: received empty data", v42, 2u);
        MEMORY[0x24C219130](v42, -1, -1);
      }

      sub_24A45AB40();
      v43 = swift_allocError();
      *v44 = 1;
      a6(0, v43);

      return [a8 signal];
    }

    goto LABEL_35;
  }

  if (v34)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_28;
    }

LABEL_35:
    sub_24A3AE614(a1, a2);
    goto LABEL_36;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_36:
  sub_24A4AA760();
  swift_allocObject();
  sub_24A4AA750();
  swift_getWitnessTable();
  sub_24A4AA740();

  v45 = v63[0];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v46 = sub_24A4AB630();
  sub_24A378E18(v46, qword_27EF4E260);

  v47 = sub_24A4AB600();
  v48 = sub_24A4ABCE0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v63[0] = v61;
    *v49 = 136315138;
    v63[5] = v45;

    v50 = sub_24A4AB870();
    v52 = sub_24A37BD58(v50, v51, v63);

    *(v49 + 4) = v52;
    _os_log_impl(&dword_24A376000, v47, v48, "*** FMFServerInteractionController: received response?: %s", v49, 0xCu);
    sub_24A37EEE0(v61);
    MEMORY[0x24C219130](v61, -1, -1);
    MEMORY[0x24C219130](v49, -1, -1);
  }

  else
  {
  }

  *(a4 + qword_27EF4E2A8) = *(v45 + 16);

  *(a4 + qword_27EF4E2B0) = *(v45 + 24);

  sub_24A3B1AC4(*(v45 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v54 = Strong;
    type metadata accessor for FMFInitRefreshClientResponse(0);
    v55 = swift_dynamicCastClass();
    if (v55)
    {
      v56 = v55;

      sub_24A3BB2D8(v56);
    }
  }

  v57 = *(v45 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_alert);
  if (v57)
  {
    v58 = a4 + qword_27EF4E2A0;
    swift_unknownObjectWeakLoadStrong();
    *(v57 + 24) = *(v58 + 8);
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
    if ((sub_24A3E5C88() & 1) != 0 && (v59 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      sub_24A45A9E0(v57, v59);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  a6(v60, 0);

  [a8 signal];
  return sub_24A386DFC(a1, a2);
}

void sub_24A3AE1EC(double a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce) == 1)
  {
    if ((*(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_useOptimizedFetch) & 1) == 0)
    {
      v20 = *(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
      v21 = v10;
      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = v1;
      aBlock[4] = sub_24A3AD1D8;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A388564;
      aBlock[3] = &unk_285D85AC8;
      v14 = _Block_copy(aBlock);

      sub_24A4AB6B0();
      v22 = MEMORY[0x277D84F90];
      sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
      sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
      sub_24A4ABE90();
      MEMORY[0x24C218190](0, v12, v7, v14);
      _Block_release(v14);
      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v12, v21);
    }
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A4AB630();
    sub_24A378E18(v15, qword_27EF4E260);
    v16 = sub_24A4AB600();
    v17 = sub_24A4ABCE0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24A376000, v16, v17, "FMFRefreshController: Initialization is not completed yet. Cannot fire refresh.", v18, 2u);
      MEMORY[0x24C219130](v18, -1, -1);
    }

    v19 = MEMORY[0x24C2189A0]();
    sub_24A3A3C54(v2, MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    objc_autoreleasePoolPop(v19);
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_24A3AE5D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3AE614(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A380530(result, a2);
  }

  return result;
}

unint64_t sub_24A3AE628()
{
  result = qword_27EF40790;
  if (!qword_27EF40790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40790);
  }

  return result;
}

uint64_t sub_24A3AE67C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_24A3AE6B8(uint64_t a1)
{
  v1 = a1;
  sub_24A4AC360();
  FMFConfigValue.rawValue.getter();
  sub_24A4AB8F0();

  v2 = sub_24A4AC3A0();

  return sub_24A3AF5D8(v1, v2);
}

unint64_t sub_24A3AE744(void *a1)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F0F8, &qword_24A4B4948);
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v54 - v5;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B16E8();
  sub_24A4AC3C0();
  if (v2)
  {
    sub_24A37EEE0(a1);
    type metadata accessor for FMFInitRefreshClientResponse(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v56 = v1;
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    LOBYTE(v77[0]) = 0;
    sub_24A3B1A24();
    sub_24A4AC160();
    v7 = 0;
    v58 = v4;
    v59 = v6;
    v57 = a1;
    v8 = v78;
    v9 = *(v78 + 16);
    if (v9)
    {
      v55 = 0;
      *&v78 = MEMORY[0x277D84F90];
      sub_24A3DBC2C(0, v9, 0);
      v10 = v78;
      v54[1] = v8;
      v11 = (v8 + 40);
      do
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        swift_bridgeObjectRetain_n();
        v14 = sub_24A4AC0C0();

        v15 = v14 > 4;
        *&v78 = v10;
        v17 = *(v10 + 16);
        v16 = *(v10 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_24A3DBC2C((v16 > 1), v17 + 1, 1);
          v15 = v14 > 4;
          v10 = v78;
        }

        *(v10 + 16) = v17 + 1;
        v18 = v10 + 24 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v12;
        *(v18 + 48) = 3;
        *(v18 + 49) = v15;
        v11 += 2;
        --v9;
      }

      while (v9);

      v7 = v55;
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    v19 = v56;
    *(v56 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels) = v10;
    sub_24A3C9CEC(&qword_27EF3F118, &qword_24A4B4958);
    LOBYTE(v77[0]) = 1;
    sub_24A387298();
    sub_24A4AC160();
    if (v7)
    {

      v20 = 0;
    }

    else
    {
      v20 = v78;
    }

    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations) = v20;
    sub_24A3C9CEC(&qword_27EF3F130, &unk_24A4B4960);
    LOBYTE(v77[0]) = 2;
    sub_24A3B224C(&qword_27EF3F138, &qword_27EF3F130, &unk_24A4B4960, sub_24A3852CC);
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices) = v78;
    LOBYTE(v77[0]) = 3;
    sub_24A382B78();
    sub_24A4AC160();
    v21 = *(&v78 + 1);
    v22 = v79;
    v23 = 256;
    if (!BYTE1(v78))
    {
      v23 = 0;
    }

    v24 = v23 | v78;
    v25 = 0x10000;
    if (!BYTE2(v78))
    {
      v25 = 0;
    }

    v26 = v24 | v25 | (BYTE3(v78) << 24);
    v27 = v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences;
    *v27 = v26;
    *(v27 + 8) = v21;
    *(v27 + 16) = v22;
    v99[0] = 4;
    sub_24A38351C();
    sub_24A4AC160();
    v28 = v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features;
    *v28 = v100;
    *(v28 + 8) = 0;
    v93 = 5;
    sub_24A384C18();
    sub_24A4AC160();
    v29 = v95;
    v30 = v96;
    v31 = v97;
    v32 = v98;
    v33 = v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo;
    *v33 = v94;
    *(v33 + 16) = v29;
    *(v33 + 32) = v30;
    *(v33 + 48) = v31;
    *(v33 + 56) = v32;
    v76 = 6;
    sub_24A383EF0();
    sub_24A4AC160();
    v73 = v77[12];
    v74 = v77[13];
    v75 = v77[14];
    v69 = v77[8];
    v70 = v77[9];
    v71 = v77[10];
    v72 = v77[11];
    v65 = v77[4];
    v66 = v77[5];
    v67 = v77[6];
    v68 = v77[7];
    v61 = v77[0];
    v62 = v77[1];
    v63 = v77[2];
    v64 = v77[3];
    nullsub_1();
    v90 = v73;
    v91 = v74;
    v92 = v75;
    v86 = v69;
    v87 = v70;
    v88 = v71;
    v89 = v72;
    v82 = v65;
    v83 = v66;
    v84 = v67;
    v85 = v68;
    v78 = v61;
    v79 = v62;
    v80 = v63;
    v81 = v64;
    v34 = (v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
    v35 = v74;
    v34[12] = v73;
    v34[13] = v35;
    v34[14] = v92;
    v36 = v87;
    v34[8] = v86;
    v34[9] = v36;
    v37 = v89;
    v34[10] = v88;
    v34[11] = v37;
    v38 = v83;
    v34[4] = v82;
    v34[5] = v38;
    v39 = v85;
    v34[6] = v84;
    v34[7] = v39;
    v40 = v79;
    *v34 = v78;
    v34[1] = v40;
    v41 = v81;
    v34[2] = v80;
    v34[3] = v41;
    sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
    LOBYTE(v61) = 7;
    sub_24A3B25B4();
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations) = *&v77[0];
    sub_24A3C9CEC(&qword_27EF3F180, &qword_24A4B4970);
    LOBYTE(v61) = 8;
    sub_24A3B224C(&qword_27EF3F188, &qword_27EF3F180, &qword_24A4B4970, sub_24A3B4CF4);
    v42 = v59;
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress) = *&v77[0];
    sub_24A3C9CEC(&qword_27EF3F198, &qword_24A4B4978);
    LOBYTE(v61) = 10;
    sub_24A3818EC();
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following) = *&v77[0];
    LOBYTE(v61) = 11;
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers) = *&v77[0];
    LOBYTE(v61) = 12;
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing) = *&v77[0];
    LOBYTE(v61) = 13;
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers) = *&v77[0];
    LOBYTE(v61) = 9;
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers) = *&v77[0];
    sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
    LOBYTE(v61) = 14;
    sub_24A382AC4();
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByMe) = *&v77[0];
    LOBYTE(v61) = 16;
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByFriends) = *&v77[0];
    LOBYTE(v61) = 15;
    sub_24A4AC160();
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByMe) = *&v77[0];
    LOBYTE(v61) = 17;
    sub_24A4AC160();
    v43 = v57;
    *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByFriends) = *&v77[0];
    sub_24A39997C(v43, v77);
    v4 = sub_24A3B7448(v77);
    v44 = qword_27EF3EBF8;

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = sub_24A4AB630();
    sub_24A378E18(v45, qword_27EF4E260);
    v46 = sub_24A4AB600();
    v47 = sub_24A4ABCE0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v77[0] = v49;
      *v48 = 136315138;
      v50 = sub_24A3BA0E8();
      v52 = sub_24A37BD58(v50, v51, v77);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_24A376000, v46, v47, "FMFInitRefreshClientResponse: initialized with coder %s", v48, 0xCu);
      sub_24A37EEE0(v49);
      MEMORY[0x24C219130](v49, -1, -1);
      MEMORY[0x24C219130](v48, -1, -1);

      (*(v60 + 8))(v59, v58);
    }

    else
    {

      (*(v60 + 8))(v42, v58);
    }

    sub_24A37EEE0(v57);
  }

  return v4;
}

unint64_t FMFConfigValue.rawValue.getter()
{
  result = 0x74655365636E6566;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 0xA:
      result = 0xD000000000000020;
      break;
    case 8:
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 0xB:
      result = 0xD000000000000021;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24A3AF5D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE006B6E694C7075;
      v8 = 0x74655365636E6566;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000019;
          v7 = 0x800000024A4AEC50;
          break;
        case 2:
          v8 = 0xD000000000000015;
          v7 = 0x800000024A4AEC70;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x800000024A4AEC90;
          break;
        case 4:
          v8 = 0xD00000000000001DLL;
          v7 = 0x800000024A4AECB0;
          break;
        case 5:
          v8 = 0xD000000000000018;
          v7 = 0x800000024A4AECD0;
          break;
        case 6:
          v8 = 0xD000000000000020;
          v7 = 0x800000024A4AECF0;
          break;
        case 7:
          v8 = 0xD00000000000001DLL;
          v7 = 0x800000024A4AED20;
          break;
        case 8:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000024A4AED40;
          break;
        case 9:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000024A4AED60;
          break;
        case 0xA:
          v8 = 0xD000000000000020;
          v7 = 0x800000024A4AED80;
          break;
        case 0xB:
          v8 = 0xD000000000000021;
          v7 = 0x800000024A4AEDB0;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x800000024A4AEDE0;
          break;
        default:
          break;
      }

      v9 = 0x74655365636E6566;
      v10 = 0xEE006B6E694C7075;
      switch(a1)
      {
        case 1:
          v10 = 0x800000024A4AEC50;
          if (v8 == 0xD000000000000019)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v10 = 0x800000024A4AEC70;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v10 = 0x800000024A4AEC90;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          v10 = 0x800000024A4AECB0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          v10 = 0x800000024A4AECD0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v10 = 0x800000024A4AECF0;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v10 = 0x800000024A4AED20;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v10 = 0x800000024A4AED40;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v10 = 0x800000024A4AED60;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v9 = 0xD000000000000020;
          v10 = 0x800000024A4AED80;
          goto LABEL_38;
        case 11:
          v10 = 0x800000024A4AEDB0;
          if (v8 != 0xD000000000000021)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v10 = 0x800000024A4AEDE0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v9)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_24A4AC270();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

void sub_24A3AFAB4(unint64_t a1, char *a2)
{
  v179 = a2;
  v186 = type metadata accessor for FMFFriend(0);
  v188 = *(v186 - 1);
  MEMORY[0x28223BE20](v186);
  v4 = (&v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v177 = &v166 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v166 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = (&v166 - v11);
  MEMORY[0x28223BE20](v13);
  v172 = &v166 - v14;
  MEMORY[0x28223BE20](v15);
  v171 = &v166 - v16;
  v17 = type metadata accessor for FMFLocation(0);
  v182 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v174 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v166 - v20);
  MEMORY[0x28223BE20](v22);
  v187 = &v166 - v23;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_134;
  }

  while (1)
  {
    v183 = a1;
    v176 = v9;
    v24 = sub_24A4AB630();
    v166 = sub_24A378E18(v24, qword_27EF4E260);
    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCE0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_24A376000, v25, v26, "FMFGenericResponseHandler: handleInitRefreshResponse", v27, 2u);
      MEMORY[0x24C219130](v27, -1, -1);
    }

    v28 = (v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences);
    v29 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16);
    if (v29)
    {
      v30 = *v28;
      v31 = v28[1];
      v32 = v28[3];
      v33 = v179;
      *&v225 = v30;
      *(&v225 + 1) = v31;
      *&v226 = v29;
      *(&v226 + 1) = v32;
      sub_24A388B00(v30, v31, v29, v32);
      v181 = v30;
      v184 = v31;
      v185 = v32;
      sub_24A388B00(v30, v31, v29, v32);

      sub_24A3B173C(&v225);

      v34 = &v33[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v35 = *(v34 + 1);
        ObjectType = swift_getObjectType();
        *&v225 = v181;
        *(&v225 + 1) = v184;
        *&v226 = v29;
        *(&v226 + 1) = v185;
        (*(v35 + 8))(&v225, ObjectType, v35);
        swift_unknownObjectRelease();
        v38 = *(&v225 + 1);
        v37 = v225;
        v40 = *(&v226 + 1);
        v39 = v226;
      }

      else
      {
        v37 = v181;
        v38 = v184;
        v40 = v185;
        v39 = v29;
      }

      sub_24A37F110(v37, v38, v39, v40);
    }

    v41 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 176);
    v42 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 208);
    v222 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 192);
    v223 = v42;
    v43 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 112);
    v44 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 144);
    v218 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 128);
    v219 = v44;
    v45 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 144);
    v46 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 176);
    v220 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 160);
    v221 = v46;
    v47 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 48);
    v48 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 80);
    v214 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 64);
    v215 = v48;
    v49 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 80);
    v50 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 112);
    v216 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 96);
    v217 = v50;
    v51 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 16);
    v210 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
    v211 = v51;
    v52 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 48);
    v54 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
    v53 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 16);
    v212 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 32);
    v213 = v52;
    v236 = v41;
    v237 = v222;
    v55 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 224);
    v238 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 208);
    v239 = v55;
    v232 = v43;
    v233 = v218;
    v234 = v45;
    v235 = v220;
    v228 = v47;
    v229 = v214;
    v230 = v49;
    v231 = v216;
    v224 = v55;
    v225 = v54;
    v226 = v53;
    v227 = v212;
    Strong = sub_24A387AB8(&v225);
    if (Strong != 1)
    {
      v57 = v179;
      v203 = v222;
      v204 = v223;
      v205 = v224;
      v199 = v218;
      v200 = v219;
      v201 = v220;
      v202 = v221;
      v195 = v214;
      v196 = v215;
      v197 = v216;
      v198 = v217;
      v192 = v210;
      v193 = v211;
      v194[0] = v212;
      v194[1] = v213;

      sub_24A387AD4(&v192);

      v58 = &v57[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v59 = *(v58 + 1);
        v60 = swift_getObjectType();
        v203 = v237;
        v204 = v238;
        v205 = v239;
        v199 = v233;
        v200 = v234;
        v201 = v235;
        v202 = v236;
        v195 = v229;
        v196 = v230;
        v197 = v231;
        v198 = v232;
        v192 = v225;
        v193 = v226;
        v194[0] = v227;
        v194[1] = v228;
        nullsub_1();
        v191[9] = v202;
        v191[10] = v203;
        v191[11] = v204;
        v191[12] = v205;
        v191[5] = v198;
        v191[6] = v199;
        v191[7] = v200;
        v191[8] = v201;
        v191[2] = v195;
        v191[3] = v196;
        v191[4] = v197;
        v189 = v192;
        v190 = v193;
        v191[0] = v194[0];
        v191[1] = v194[1];
        (*(v59 + 32))(&v189, v60, v59);
        Strong = swift_unknownObjectRelease();
      }
    }

    v61 = (v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features);
    if ((*(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features + 8) & 1) == 0)
    {
      v62 = *v61;
      v63 = v179;
      *&v192 = *v61;
      BYTE8(v192) = 0;

      sub_24A3877A0(&v192);

      v64 = &v63[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v65 = *(v64 + 1);
        v66 = swift_getObjectType();
        *&v192 = v62;
        BYTE8(v192) = 0;
        (*(v65 + 16))(&v192, v66, v65);
        Strong = swift_unknownObjectRelease();
      }
    }

    v67 = (v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo);
    v68 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 16);
    v192 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo);
    v193 = v68;
    v194[0] = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 32);
    *(v194 + 9) = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 41);
    if (v192)
    {
      v69 = v179;
      v70 = v67[1];
      v189 = *v67;
      v190 = v70;
      v191[0] = v67[2];
      *(v191 + 9) = *(v67 + 41);
      sub_24A37B740(&v192, &v206, &qword_27EF3FD68, &unk_24A4B9F40);
      sub_24A37B740(&v192, &v206, &qword_27EF3FD68, &unk_24A4B9F40);

      sub_24A3B3930(&v189);

      v71 = &v69[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v72 = *(v71 + 1);
        v73 = swift_getObjectType();
        v206 = v192;
        v207 = v193;
        v208[0] = v194[0];
        *(v208 + 9) = *(v194 + 9);
        (*(v72 + 24))(&v206, v73, v72);
        swift_unknownObjectRelease();
        v189 = v206;
        v190 = v207;
        v191[0] = v208[0];
        *(v191 + 9) = *(v208 + 9);
        v74 = &v189;
      }

      else
      {
        v74 = &v192;
      }

      Strong = sub_24A37EF2C(v74, &qword_27EF3FD68, &unk_24A4B9F40);
    }

    v75 = v183;
    v76 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices);
    if (v76)
    {
      v77 = v179;

      sub_24A38744C(v78);

      v79 = &v77[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v80 = *(v79 + 1);
        v81 = swift_getObjectType();
        (*(v80 + 40))(v76, 1, v81, v80);
        Strong = swift_unknownObjectRelease();
      }
    }

    v82 = *(v75 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels);
    if (v82)
    {
      v83 = v179;

      sub_24A387740(v84);

      v85 = &v83[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v86 = *(v85 + 1);
        v87 = swift_getObjectType();
        (*(v86 + 48))(v82, v87, v86);
        Strong = swift_unknownObjectRelease();
      }
    }

    v88 = *(v75 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations);
    if (v88)
    {
      v89 = v179;

      sub_24A387770(v90);

      v91 = &v89[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v92 = *(v91 + 1);
        v93 = swift_getObjectType();
        (*(v92 + 80))(v88, v93, v92);
        Strong = swift_unknownObjectRelease();
      }
    }

    if (*(v75 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following))
    {
      v94 = *&v179[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      MEMORY[0x28223BE20](Strong);
      *(&v166 - 2) = v95;
      *(&v166 - 1) = v94;

      sub_24A4ABD70();

      v75 = v183;
      v173 = v189;
    }

    else
    {
      v173 = 0;
    }

    if (*(v75 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers))
    {
      v96 = *&v179[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      MEMORY[0x28223BE20](Strong);
      *(&v166 - 2) = v97;
      *(&v166 - 1) = v96;

      v75 = v183;
      sub_24A4ABD70();

      v173 |= v189;
    }

    if (*(v75 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers))
    {
      v98 = *&v179[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      MEMORY[0x28223BE20](Strong);
      *(&v166 - 2) = v99;
      *(&v166 - 1) = v98;

      v75 = v183;
      sub_24A4ABD70();

      v173 |= v189;
    }

    if (*(v75 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing))
    {
      v100 = *&v179[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      MEMORY[0x28223BE20](Strong);
      *(&v166 - 2) = v101;
      *(&v166 - 1) = v100;

      v75 = v183;
      sub_24A4ABD70();

      v173 |= v189;
    }

    v102 = v179;
    if (*(v75 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers))
    {
      v103 = *&v179[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager];
      MEMORY[0x28223BE20](Strong);
      *(&v166 - 2) = v104;
      *(&v166 - 1) = v103;

      v75 = v183;
      sub_24A4ABD70();

      v173 |= v189;
    }

    v105 = *(v75 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByMe);
    v106 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe;
    v107 = *&v102[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe];
    v108 = v105;
    v109 = v102;
    if (!v105)
    {

      v108 = v107;
    }

    *&v102[v106] = v108;

    v110 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends;
    v111 = *&v102[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends];
    v112 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByFriends);
    if (!v112)
    {

      v112 = v111;
    }

    *&v102[v110] = v112;

    v113 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe;
    v114 = *&v102[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe];
    v115 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByMe);
    if (!v115)
    {

      v115 = v114;
    }

    *&v102[v113] = v115;

    v116 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends;
    v117 = *&v102[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends];
    v118 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByFriends);
    if (!v118)
    {

      v118 = v117;
    }

    *&v102[v116] = v118;

    sub_24A39FD18();
    v119 = swift_allocObject();
    v170 = v119;
    *(v119 + 16) = 0;
    v167 = (v119 + 16);
    v181 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager;
    v9 = *(*&v102[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager] + 56);

    v168 = sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v169 = 0;

    v120 = v189;
    v121 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations);
    if (v121)
    {
      v180 = *(v121 + 16);
      if (v180)
      {
        a1 = 0;
        v175 = MEMORY[0x277D84F90];
        v178 = v121;
        while (1)
        {
          if (a1 >= *(v121 + 16))
          {
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          v185 = ((*(v182 + 80) + 32) & ~*(v182 + 80));
          v184 = *(v182 + 72);
          v123 = v187;
          sub_24A3BCA40(v185 + v121 + v184 * a1, v187, type metadata accessor for FMFLocation);
          sub_24A3BCA40(v123, v21, type metadata accessor for FMFLocation);
          v124 = *(v120 + 16);
          if (v124)
          {
            break;
          }

LABEL_51:
          v9 = type metadata accessor for FMFLocation;
          sub_24A3B599C(v187, type metadata accessor for FMFLocation);
          v122 = v21;
LABEL_52:
          sub_24A3B599C(v122, type metadata accessor for FMFLocation);
LABEL_53:
          ++a1;
          v121 = v178;
          if (a1 == v180)
          {
            goto LABEL_81;
          }
        }

        v125 = v120 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
        v126 = *(v188 + 72);
        while (1)
        {
          sub_24A3BCA40(v125, v12, type metadata accessor for FMFFriend);
          v127 = v21[1];
          if (v127)
          {
            v128 = *v12 == *v21 && v127 == v12[1];
            if (v128 || (sub_24A4AC270() & 1) != 0)
            {
              break;
            }
          }

          sub_24A3B599C(v12, type metadata accessor for FMFFriend);
          v125 += v126;
          if (!--v124)
          {
            goto LABEL_51;
          }
        }

        v9 = type metadata accessor for FMFFriend;
        v129 = v172;
        sub_24A3B587C(v12, v172, type metadata accessor for FMFFriend);
        v130 = v129;
        v131 = v171;
        sub_24A3B587C(v130, v171, type metadata accessor for FMFFriend);
        if (*(*&v109[v181] + 672) == 1)
        {
          v132 = *(v131 + v186[11]);
          if (v132 != 2 && (v132 & 1) != 0)
          {
            sub_24A3B599C(v131, type metadata accessor for FMFFriend);
            sub_24A3B599C(v21, type metadata accessor for FMFLocation);
LABEL_74:
            v122 = v187;
            goto LABEL_52;
          }

          v9 = *(v131 + v186[12]);
          if (v9 == 2)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v133 = *(v131 + v186[12]);
          if (v133 == 2 || (v133 & 1) == 0)
          {
LABEL_72:
            sub_24A3B599C(v131, type metadata accessor for FMFFriend);
            sub_24A3B599C(v21, type metadata accessor for FMFLocation);
LABEL_75:
            sub_24A3B587C(v187, v174, type metadata accessor for FMFLocation);
            v9 = v175;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v189 = v9;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24A3B57CC(0, *(v9 + 16) + 1, 1);
              v9 = v189;
            }

            v136 = *(v9 + 16);
            v135 = *(v9 + 24);
            if (v136 >= v135 >> 1)
            {
              sub_24A3B57CC((v135 > 1), v136 + 1, 1);
              v9 = v189;
            }

            *(v9 + 16) = v136 + 1;
            v175 = v9;
            sub_24A3B587C(v174, v185 + v9 + v136 * v184, type metadata accessor for FMFLocation);
            goto LABEL_53;
          }

          v9 = *(v131 + v186[13]) ^ 1u;
        }

        sub_24A3B599C(v131, type metadata accessor for FMFFriend);
        sub_24A3B599C(v21, type metadata accessor for FMFLocation);
        if ((v9 & 1) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      v175 = MEMORY[0x277D84F90];
LABEL_81:
      v137 = objc_allocWithZone(MEMORY[0x277D07B80]);
      v138 = sub_24A4AB820();
      v139 = [v137 initWithDescription:v138 andTimeout:60.0];

      v9 = *&v109[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationShifter];
      v21 = swift_allocObject();
      v140 = v170;
      v21[2] = v109;
      v21[3] = v140;
      v21[4] = v139;
      v141 = v109;

      v12 = v139;
      sub_24A3BCD18(v175, sub_24A3B57B0, v21);

      [v12 wait];
    }

    v142 = *(v183 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress);
    if (!v142)
    {
      break;
    }

    v185 = *(v142 + 16);
    if (!v185)
    {
      v183 = MEMORY[0x277D84F90];
LABEL_118:

LABEL_120:
      v157 = *&v109[v181];
      MEMORY[0x28223BE20](v156);
      *(&v166 - 2) = v183;
      *(&v166 - 1) = v157;

      sub_24A4ABD70();

      swift_bridgeObjectRelease_n();
      if ((v173 & 1) == 0)
      {
        v155 = v189;
        goto LABEL_122;
      }

      goto LABEL_125;
    }

    a1 = 0;
    v184 = v142 + 32;
    v183 = MEMORY[0x277D84F90];
    while (a1 < *(v142 + 16))
    {
      v143 = v184 + 24 * a1;
      v12 = *v143;
      v21 = *(v143 + 8);
      LODWORD(v187) = *(v143 + 16);
      ++a1;
      v9 = *(v120 + 16);

      if (v9)
      {
        v144 = 0;
        while (1)
        {
          if (v144 >= *(v120 + 16))
          {
            __break(1u);
            goto LABEL_132;
          }

          sub_24A3BCA40(v120 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v144, v4, type metadata accessor for FMFFriend);
          v145 = *v4 == v12 && v4[1] == v21;
          if (v145 || (sub_24A4AC270() & 1) != 0)
          {
            break;
          }

          ++v144;
          sub_24A3B599C(v4, type metadata accessor for FMFFriend);
          if (v9 == v144)
          {
            goto LABEL_97;
          }
        }

        v9 = type metadata accessor for FMFFriend;
        v150 = v177;
        sub_24A3B587C(v4, v177, type metadata accessor for FMFFriend);
        v151 = v150;
        v152 = v176;
        sub_24A3B587C(v151, v176, type metadata accessor for FMFFriend);
        if (*(*&v109[v181] + 672) == 1)
        {
          v153 = *(v152 + v186[11]);
          if (v153 != 2 && (v153 & 1) != 0)
          {
            sub_24A3B599C(v152, type metadata accessor for FMFFriend);
            goto LABEL_86;
          }

          v9 = *(v152 + v186[12]);
          if (v9 != 2)
          {
            sub_24A3B599C(v152, type metadata accessor for FMFFriend);
            if ((v9 & 1) == 0)
            {
              goto LABEL_97;
            }

            goto LABEL_86;
          }

LABEL_113:
          sub_24A3B599C(v152, type metadata accessor for FMFFriend);
          goto LABEL_97;
        }

        v154 = *(v152 + v186[12]);
        if (v154 == 2 || (v154 & 1) == 0)
        {
          goto LABEL_113;
        }

        v9 = *(v152 + v186[13]);
        sub_24A3B599C(v152, type metadata accessor for FMFFriend);
        if (v9)
        {
          goto LABEL_97;
        }

LABEL_86:

        if (a1 != v185)
        {
          continue;
        }

        if (!v183)
        {
          goto LABEL_115;
        }

        goto LABEL_120;
      }

LABEL_97:
      v9 = v183;
      v146 = swift_isUniquelyReferenced_nonNull_native();
      *&v189 = v9;
      if ((v146 & 1) == 0)
      {
        sub_24A3BCBC4(0, *(v9 + 16) + 1, 1);
        v9 = v189;
      }

      v148 = *(v9 + 16);
      v147 = *(v9 + 24);
      if (v148 >= v147 >> 1)
      {
        sub_24A3BCBC4((v147 > 1), v148 + 1, 1);
        v9 = v189;
      }

      *(v9 + 16) = v148 + 1;
      v183 = v9;
      v149 = v9 + 24 * v148;
      *(v149 + 32) = v12;
      *(v149 + 40) = v21;
      *(v149 + 48) = v187;
      v109 = v179;
      if (a1 == v185)
      {
        goto LABEL_118;
      }
    }

LABEL_133:
    __break(1u);
LABEL_134:
    swift_once();
  }

LABEL_115:
  if (v173)
  {
    goto LABEL_125;
  }

  v155 = 0;
LABEL_122:
  v158 = v167;
  swift_beginAccess();
  if ((*v158 & 1) != 0 || (v155 & 1) != 0 || v109[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_isSnapshotMode] == 1)
  {
LABEL_125:
    v159 = &v109[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v160 = *(v159 + 1);
      v161 = swift_getObjectType();

      sub_24A4ABD70();

      (*(v160 + 56))(v209, 1, v161, v160);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v162 = v170;

    v163 = sub_24A4AB600();
    v164 = sub_24A4ABCE0();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 67240448;
      *(v165 + 8) = 1026;
      *(v165 + 10) = *(v162 + 16);

      _os_log_impl(&dword_24A376000, v163, v164, "FMFGenericResponseHandler: Skipping update due to no changes detected:\nfriendsUpdated: %{BOOL,public}d locationsUpdated: %{BOOL,public}d", v165, 0xEu);
      MEMORY[0x24C219130](v165, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24A3B13B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_24A3B1404()
{
  result = qword_27EF3F1D8;
  if (!qword_27EF3F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1D8);
  }

  return result;
}

_OWORD *sub_24A3B1460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_24A3A60B4(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_24A3B15BC(v15, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    sub_24A37EF2C(a1, &qword_27EF3F808, &unk_24A4BA6D0);
    v7 = sub_24A3AE6B8(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_24A4A9528();
        v11 = v14;
      }

      sub_24A3A60B4((*(v11 + 56) + 32 * v9), v15);
      sub_24A4A782C(v9, v11, v12);
      *v3 = v11;
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    return sub_24A37EF2C(v15, &qword_27EF3F808, &unk_24A4BA6D0);
  }

  return result;
}

unint64_t sub_24A3B1568()
{
  result = qword_27EF3F1E0;
  if (!qword_27EF3F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1E0);
  }

  return result;
}

_OWORD *sub_24A3B15BC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24A3AE6B8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24A4A9528();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24A4A609C(v14, a3 & 1);
    v9 = sub_24A3AE6B8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_24A37EEE0(v20);

    return sub_24A3A60B4(a1, v20);
  }

  else
  {

    return sub_24A4A8298(v9, a2, a1, v19);
  }
}

unint64_t sub_24A3B16E8()
{
  result = qword_27EF3F100;
  if (!qword_27EF3F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F100);
  }

  return result;
}

uint64_t sub_24A3B173C(__int128 *a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v1 + 56);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = *a1;
  *(v10 + 40) = a1[1];
  *(v10 + 24) = v11;
  aBlock[4] = sub_24A3B2230;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D898C0;
  v12 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v16 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

unint64_t sub_24A3B1A24()
{
  result = qword_27EF3F110;
  if (!qword_27EF3F110)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F110);
  }

  return result;
}

uint64_t sub_24A3B1AC4(uint64_t a1)
{
  v2 = sub_24A4AB690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4AB6E0();
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);

  v10 = sub_24A4AB600();
  v11 = sub_24A4ABCE0();

  v12 = os_log_type_enabled(v10, v11);
  v23 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = sub_24A4AB790();
    v17 = sub_24A37BD58(v15, v16, aBlock);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24A376000, v10, v11, "FMFServerInteractionController: process server context: %s", v13, 0xCu);
    sub_24A37EEE0(v14);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  if (qword_27EF3EC08 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  aBlock[4] = sub_24A3ACFCC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A1B0;
  v19 = _Block_copy(aBlock);

  v20 = v24;
  sub_24A4AB6B0();
  v27 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v20, v5, v19);
  _Block_release(v19);
  (*(v3 + 8))(v5, v2);
  (*(v26 + 8))(v20, v25);
}

uint64_t sub_24A3B1F04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24A3B1F3C(char a1)
{
  result = 0x736C6562616CLL;
  switch(a1)
  {
    case 1:
    case 16:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x73656369766564;
      break;
    case 3:
      result = 0x7366657270;
      break;
    case 4:
      result = 0x7365727574616566;
      break;
    case 5:
      result = 0x6F666E49796DLL;
      break;
    case 6:
      result = 0x6769666E6F63;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x4F676E69646E6570;
      break;
    case 10:
      result = 0x6E69776F6C6C6F66;
      break;
    case 11:
      result = 0x7265776F6C6C6F66;
      break;
    case 12:
    case 13:
      result = 0x6F46657275747566;
      break;
    case 14:
      result = 0x7365636E6546796DLL;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A3B216C(uint64_t a1)
{
  v2 = sub_24A3B16E8();

  return MEMORY[0x2821FE718](a1, v2);
}

void sub_24A3B21A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[93];
  v7 = a1[94];
  v8 = a1[95];
  v9 = a1[96];
  a1[93] = a2;
  a1[94] = a3;
  a1[95] = a4;
  a1[96] = a5;
  sub_24A388B00(a2, a3, a4, a5);
  sub_24A37F110(v6, v7, v8, v9);
  a1[72] = 0;

  sub_24A387F3C();
}

uint64_t sub_24A3B224C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFInitRefreshClientResponse.InitRefreshCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFInitRefreshClientResponse.InitRefreshCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

BOOL _s7FMFCore9FMFConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = *(a2 + 32);
  v9 = *(a2 + 72);
  v10 = *(a2 + 56);
  v2.i64[0] = *(a1 + 16);
  v11 = vdupq_laneq_s64(v5, 1);
  v12 = vzip1q_s64(v2, v5);
  v13 = vzip1q_s64(v11, v7);
  v11.i64[0] = vdupq_laneq_s64(v6, 1).u64[0];
  v14 = vextq_s8(v7, v6, 8uLL);
  v7.i64[0] = *(a2 + 16);
  v15 = vzip1q_s64(v7, v8);
  v16 = vzip1q_s64(vdupq_laneq_s64(v8, 1), v10);
  v17 = vextq_s8(v10, v9, 8uLL);
  v9.i64[0] = vdupq_laneq_s64(v9, 1).u64[0];
  v9.i64[1] = *(a2 + 88);
  v11.i64[1] = *(a1 + 88);
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(v12, v15)), vuzp1q_s32(vceqq_s64(v13, v16), vceqq_s64(v14, v17))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(v11, v9), vceqq_s64(*(a1 + 104), *(a2 + 104))), vuzp1q_s32(vceqq_s64(*(a1 + 120), *(a2 + 120)), vceqq_s64(*(a1 + 136), *(a2 + 136)))))) & 1) != 0 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*(a1 + 152), *(a2 + 152)), vceqq_s64(*(a1 + 168), *(a2 + 168))), vuzp1q_s32(vceqq_s64(*(a1 + 184), *(a2 + 184)), vceqq_s64(*(a1 + 208), *(a2 + 208)))), xmmword_24A4B8F30)) == 255 && *(a1 + 224) == *(a2 + 224) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0 && ((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0 && ((*(a1 + 200) ^ *(a2 + 200)) & 1) == 0 && ((*(a1 + 201) ^ *(a2 + 201)) & 1) == 0 && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 232) == *(a2 + 232);
  }

  return result;
}

unint64_t sub_24A3B25B4()
{
  result = qword_27EF3F170;
  if (!qword_27EF3F170)
  {
    sub_24A3CBC9C(&qword_27EF3F168, &unk_24A4BA240);
    sub_24A3819A0(&qword_27EF3F178, type metadata accessor for FMFLocation, &protocol conformance descriptor for FMFLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F170);
  }

  return result;
}

uint64_t FMFLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = sub_24A3C9CEC(&qword_27EF3F828, &qword_24A4B6590);
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = &v32 - v3;
  v5 = type metadata accessor for FMFLocation(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 3) = 0;
  v7[32] = 1;
  v36 = v8;
  v9 = v8[8];
  v10 = sub_24A4AAB20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v43 = v9;
  v40 = v12;
  v12(&v7[v9], 1, 1, v10);
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B2B60();
  v37 = v4;
  v14 = v42;
  sub_24A4AC3C0();
  if (v14)
  {
    sub_24A37EEE0(a1);
    return sub_24A37EF2C(&v7[v43], &qword_27EF3F468, &qword_24A4B9F30);
  }

  else
  {
    v35 = v13;
    v42 = v10;
    v17 = v36;
    v16 = v37;
    v46[0] = 3;
    v18 = v38;
    v19 = sub_24A4AC150();
    v33 = 0;
    v34 = a1;
    v32 = v19;
    v20 = v7;
    v46[383] = 0;
    v21 = v16;
    v22 = sub_24A4AC120();
    v23 = v41;
    *v7 = v22;
    *(v7 + 1) = v24;
    v46[382] = 1;
    sub_24A3B2D98();
    v25 = v18;
    sub_24A4AC160();
    memcpy(v44, v45, sizeof(v44));
    nullsub_1();
    memcpy(v46, v44, 0x161uLL);
    v26 = v43;
    v27 = v40;
    (*(v23 + 8))(v21, v25, v28);
    memcpy((v20 + v17[11]), v46, 0x161uLL);
    v29 = v32;
    v30 = v32 < 4 && v33 == 0;
    *(v20 + 16) = 0;
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    *(v20 + 33) = v31;
    sub_24A37EF2C(v20 + v26, &qword_27EF3F468, &qword_24A4B9F30);
    v27(v20 + v26, 1, 1, v42);
    *(v20 + v17[9]) = 0;
    *(v20 + v17[10]) = 0;
    sub_24A3EE104(v20, v39, type metadata accessor for FMFLocation);
    sub_24A37EEE0(v34);
    return sub_24A3EE16C(v20, type metadata accessor for FMFLocation);
  }
}

uint64_t sub_24A3B2A58(uint64_t a1)
{

  if (*(v1 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_24A3B2AB4()
{
  result = qword_27EF3F898;
  if (!qword_27EF3F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F898);
  }

  return result;
}

unint64_t sub_24A3B2B0C()
{
  result = qword_27EF3F8A0;
  if (!qword_27EF3F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F8A0);
  }

  return result;
}

unint64_t sub_24A3B2B60()
{
  result = qword_27EF3F830;
  if (!qword_27EF3F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F830);
  }

  return result;
}

unint64_t sub_24A3B2BB4()
{
  v1 = 25705;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
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

void sub_24A3B2C24(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 1032);
  v3 = *(a1 + 1040);
  v4 = *(a1 + 1048);
  v5 = *(a1 + 1056);
  v6 = *(a1 + 1064);
  v7 = *(a1 + 1072);
  v8 = *(a1 + 1080);
  v9 = a2[1];
  *(a1 + 1032) = *a2;
  *(a1 + 1048) = v9;
  *(a1 + 1064) = a2[2];
  *(a1 + 1073) = *(a2 + 41);
  sub_24A37B740(a2, &v10, &qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A3B2D38(v2, v3, v4, v5, v6, v7, v8);
  sub_24A387F3C();
}

uint64_t sub_24A3B2CF0(uint64_t a1)
{
  v2 = sub_24A3B2B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3B2D38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24A3B2D98()
{
  result = qword_27EF3F838;
  if (!qword_27EF3F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F838);
  }

  return result;
}

void sub_24A3B2DEC(void *a1@<X0>, void *a2@<X8>)
{
  v101 = a2;
  v3 = type metadata accessor for FMFLabelledLocation(0);
  v104 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v86 - v6;
  MEMORY[0x28223BE20](v7);
  v94 = &v86 - v8;
  MEMORY[0x28223BE20](v9);
  v102 = &v86 - v10;
  MEMORY[0x28223BE20](v11);
  v96 = &v86 - v12;
  MEMORY[0x28223BE20](v13);
  v97 = &v86 - v14;
  MEMORY[0x28223BE20](v15);
  v103 = &v86 - v16;
  MEMORY[0x28223BE20](v17);
  v98 = &v86 - v18;
  MEMORY[0x28223BE20](v19);
  v99 = &v86 - v20;
  v21 = sub_24A4AAAD0();
  v100 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A3C9CEC(&qword_27EF3F300, &qword_24A4B5228);
  v105 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - v25;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B4A78();
  v27 = v106;
  sub_24A4AC3C0();
  if (v27)
  {
    sub_24A37EEE0(a1);
    return;
  }

  v28 = v104;
  v91 = v21;
  v92 = v23;
  v118 = 0;
  sub_24A3D7088();
  v106 = v26;
  sub_24A4AC160();
  memcpy(v107, v108, 0x130uLL);
  nullsub_1();
  memcpy(v119, v107, sizeof(v119));
  v29 = a1;
  LOBYTE(v108[0]) = 6;
  v30 = sub_24A4AC130();
  LOBYTE(v108[0]) = 1;
  sub_24A4AC140();
  v32 = v31;
  LOBYTE(v108[0]) = 2;
  sub_24A4AC140();
  v34 = v33;
  LOBYTE(v108[0]) = 3;
  sub_24A4AC140();
  v89 = v30;
  v36 = v35;
  LOBYTE(v108[0]) = 4;
  v37 = sub_24A4AC170();
  v38 = [objc_opt_self() fm:v37 dateFromEpoch:?];
  sub_24A4AAAA0();

  sub_24A3C9CEC(&qword_27EF3F118, &qword_24A4B4958);
  LOBYTE(v107[0]) = 5;
  sub_24A3D73CC(&qword_27EF3F120, &qword_27EF3F128, &protocol conformance descriptor for FMFLabelledLocation, MEMORY[0x277D83978]);
  sub_24A4AC160();
  v86 = v24;
  if (!v108[0])
  {
    v90 = 0;
    goto LABEL_17;
  }

  v87 = *(v108[0] + 16);
  v90 = v108[0];
  if (!v87)
  {
LABEL_17:
    v103 = 0;
    v104 = 0;
    LODWORD(v102) = 0;
LABEL_18:
    v46 = v91;
    v47 = v100;
LABEL_19:
    v48 = v89 & 1;
    v49 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    v50 = v92;
    v51 = sub_24A4AAA60();
    v52 = [v49 initWithCoordinate:v51 altitude:v34 horizontalAccuracy:v32 verticalAccuracy:0.0 course:v36 speed:0.0 timestamp:{-1.0, -1.0}];

    (*(v47 + 8))(v50, v46);
    (*(v105 + 8))(v106, v86);
    memcpy(v107, v119, 0x130uLL);
    v107[38] = v52;
    LOBYTE(v107[39]) = 0;
    *(&v107[39] + 1) = v122[0];
    HIDWORD(v107[39]) = *(v122 + 3);
    v54 = v103;
    v53 = v104;
    v107[40] = v104;
    v107[41] = v103;
    v55 = v102;
    LOWORD(v107[42]) = v102;
    *(&v107[42] + 2) = v120;
    HIWORD(v107[42]) = v121;
    v56 = v90;
    v107[43] = v90;
    LOBYTE(v107[44]) = v48;
    memcpy(v101, v107, 0x161uLL);
    sub_24A3D70DC(v107, v108);
    sub_24A37EEE0(v29);
    memcpy(v108, v119, 0x130uLL);
    v108[38] = v52;
    v109 = 0;
    *v110 = v122[0];
    *&v110[3] = *(v122 + 3);
    v111 = v53;
    v112 = v54;
    v113 = v55;
    v114 = v120;
    v115 = v121;
    v116 = v56;
    v117 = v48;
    sub_24A3C36E0(v108);
    return;
  }

  v39 = v28;
  v88 = v108[0] + ((*(v28 + 80) + 32) & ~*(v28 + 80));

  v40 = 0;
  v41 = v103;
  do
  {
    if (v40 >= *(v90 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v43 = *(v39 + 72);
    sub_24A3D7114(v88 + v43 * v40, v41);
    v44 = *(v41 + 32);
    if (*(v41 + 24))
    {
      v45 = v44 == 3;
    }

    else
    {
      v45 = 1;
    }

    if (!v45)
    {
      if (v44 != 1 && v44 != 2)
      {

LABEL_46:
        v73 = v91;
        v75 = v98;
        v74 = v99;

        sub_24A3D71D4(v103, v75);
        sub_24A3D71D4(v75, v74);
        v76 = *(v74 + 16);
        v103 = *(v74 + 24);
        v104 = v76;
        LODWORD(v102) = *(v74 + 32);

        sub_24A3D7178(v74);
        v47 = v100;
        v46 = v73;
        goto LABEL_19;
      }

      v42 = sub_24A4AC270();

      v39 = v28;
      if (v42)
      {
        goto LABEL_46;
      }
    }

    ++v40;
    v41 = v103;
    sub_24A3D7178(v103);
  }

  while (v87 != v40);
  v57 = v90;

  if (!*(v57 + 16))
  {
    goto LABEL_17;
  }

  v58 = *(v57 + 16);
  v59 = 0;
  v60 = v88;
  v104 = v43;
  v61 = v90;
  while (v59 < *(v61 + 16))
  {
    v63 = v102;
    sub_24A3D7114(v60, v102);
    v62 = v63;
    v64 = *(v63 + 32);
    if (*(v63 + 24))
    {
      v65 = v64 == 3;
    }

    else
    {
      v65 = 1;
    }

    if (!v65)
    {
      if (*(v63 + 32) && v64 != 2)
      {
        swift_bridgeObjectRelease_n();
        v62 = v102;
LABEL_51:
        v78 = v96;
        sub_24A3D71D4(v62, v96);
        v79 = v78;
        v80 = v97;
        sub_24A3D71D4(v79, v97);
        v81 = *(v80 + 16);
        v103 = *(v80 + 24);
        v104 = v81;
        LODWORD(v102) = *(v80 + 32);

        sub_24A3D7178(v80);
        goto LABEL_18;
      }

      LODWORD(v103) = sub_24A4AC270();

      v62 = v102;
      if (v103)
      {
        goto LABEL_51;
      }
    }

    ++v59;
    sub_24A3D7178(v62);
    v60 += v104;
    if (v58 == v59)
    {
      v66 = *(v61 + 16);
      if (v66)
      {
        v67 = 0;
        v68 = v88;
        v69 = v95;
        v70 = v90;
        while (v67 < *(v70 + 16))
        {
          sub_24A3D7114(v68, v69);
          v71 = *(v69 + 32);
          if (*(v69 + 24))
          {
            v72 = v71 == 3;
          }

          else
          {
            v72 = 1;
          }

          if (!v72)
          {
            if (*(v69 + 32) && v71 != 1)
            {
              swift_bridgeObjectRelease_n();
LABEL_53:
              v82 = v93;
              sub_24A3D71D4(v69, v93);
              v83 = v82;
              v84 = v94;
              sub_24A3D71D4(v83, v94);
              v85 = *(v84 + 16);
              v103 = *(v84 + 24);
              v104 = v85;
              LODWORD(v102) = *(v84 + 32);

              sub_24A3D7178(v84);
              goto LABEL_54;
            }

            LODWORD(v103) = sub_24A4AC270();

            if (v103)
            {
              goto LABEL_53;
            }
          }

          ++v67;
          sub_24A3D7178(v69);
          v68 += v104;
          if (v66 == v67)
          {
            if (!*(v70 + 16))
            {
              goto LABEL_49;
            }

            v77 = *(v88 + 16);
            v103 = *(v88 + 24);
            v104 = v77;
            LODWORD(v102) = *(v88 + 32);

            goto LABEL_54;
          }
        }

        goto LABEL_57;
      }

LABEL_49:
      v103 = 0;
      v104 = 0;
      LODWORD(v102) = 0;
LABEL_54:
      v29 = a1;
      goto LABEL_18;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_24A3B3930(_OWORD *a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v1 + 56);
  v10 = swift_allocObject();
  v11 = a1[1];
  *(v10 + 24) = *a1;
  *(v10 + 16) = v1;
  *(v10 + 40) = v11;
  *(v10 + 56) = a1[2];
  *(v10 + 65) = *(a1 + 41);
  aBlock[4] = sub_24A3B2D2C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D897D0;
  v12 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v16 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_24A3B3C1C()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_24A3B3CA4()
{
  result = qword_27EF3F378;
  if (!qword_27EF3F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F378);
  }

  return result;
}

unint64_t sub_24A3B3D08()
{
  result = qword_27EF3F380;
  if (!qword_27EF3F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F380);
  }

  return result;
}

uint64_t sub_24A3B3D5C(uint64_t a1, uint64_t a2, void (*a3)(__n128), uint64_t a4)
{
  v45 = a4;
  v46 = a3;
  v58 = a2;
  v63 = a1;
  v61 = sub_24A4AB690();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24A4AB6E0();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  v11 = sub_24A378E18(v8, qword_27EF4E260);
  v9 = v63;

  v56 = v11;
  v10 = sub_24A4AB600();
  LOBYTE(v11) = sub_24A4ABCE0();
  v12 = v9 >> 62;
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_8;
  }

  v9 = swift_slowAlloc();
  *v9 = 134217984;
  if (v12)
  {
    goto LABEL_26;
  }

  for (i = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A4AC060())
  {
    *(v9 + 4) = i;

    _os_log_impl(&dword_24A376000, v10, v11, "FMLocationShifter: processing %ld shifting request", v9, 0xCu);
    MEMORY[0x24C219130](v9, -1, -1);

LABEL_8:
    v14 = swift_allocObject();
    v62 = v14;
    *(v14 + 16) = MEMORY[0x277D84F90];
    v11 = (v14 + 16);
    if (v12)
    {
      v10 = sub_24A4AC060();
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    v15 = objc_opt_self();
    if (v10 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_26:
    ;
  }

  v17 = v15;
  v18 = 0;
  v19 = v63 & 0xC000000000000001;
  v51 = "Queue";
  v50 = v66;
  v49 = (v4 + 8);
  v48 = (v6 + 8);
  v20 = &off_278FE1000;
  v21 = &off_278FE1000;
  *&v16 = 136315138;
  v47 = v16;
  v54 = v10;
  v55 = v11;
  v52 = v63 & 0xC000000000000001;
  v53 = v15;
  do
  {
    if (v19)
    {
      v29 = MEMORY[0x24C218380](v18, v63);
    }

    else
    {
      v29 = *(v63 + 8 * v18 + 32);
    }

    [*(v29 + 16) v20[182]];
    v31 = v30;
    [*(v29 + 16) v20[182]];
    if ([v17 v21[183]])
    {
      v32 = objc_allocWithZone(MEMORY[0x277D07B80]);
      v33 = sub_24A4AB820();
      v34 = [v32 initWithDescription:v33 andTimeout:60.0];

      v35 = sub_24A4AB600();
      v36 = sub_24A4ABCE0();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v64 = v29;
        aBlock[0] = v38;
        *v37 = v47;
        type metadata accessor for FMLocationShiftingRequest();

        v39 = sub_24A4AB870();
        v41 = sub_24A37BD58(v39, v40, aBlock);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_24A376000, v35, v36, "FMLocationShifter: processing shifting request %s", v37, 0xCu);
        sub_24A37EEE0(v38);
        MEMORY[0x24C219130](v38, -1, -1);
        MEMORY[0x24C219130](v37, -1, -1);
      }

      v22 = v58;
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v29;
      v23[4] = v62;
      v23[5] = v34;
      v66[2] = sub_24A3D671C;
      v66[3] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v66[0] = sub_24A388564;
      v66[1] = &unk_285D85C80;
      v24 = _Block_copy(aBlock);

      v25 = v34;
      v26 = v57;
      sub_24A4AB6B0();
      v64 = MEMORY[0x277D84F90];
      sub_24A378620(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
      sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
      v28 = v60;
      v27 = v61;
      sub_24A4ABE90();
      MEMORY[0x24C218190](0, v26, v28, v24);
      _Block_release(v24);
      (*v49)(v28, v27);
      (*v48)(v26, v59);

      [v25 wait];

      v10 = v54;
      v11 = v55;
      v19 = v52;
      v17 = v53;
      v20 = &off_278FE1000;
      v21 = &off_278FE1000;
    }

    else
    {
      swift_beginAccess();

      MEMORY[0x24C217E50](v42);
      if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A4ABAA0();
      }

      sub_24A4ABAE0();
      swift_endAccess();
    }

    ++v18;
  }

  while (v10 != v18);
LABEL_24:
  swift_beginAccess();

  (v46)(v43);
}

uint64_t sub_24A3B44FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3B4534()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3B4584(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v44 = a4;
  v45 = a3;
  v54 = a1;
  v5 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v44 - v8;
  v9 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v9 - 8);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - v12;
  v51 = type metadata accessor for FMFLocation(0);
  MEMORY[0x28223BE20](v51);
  v47 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v44 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v21 = *(a2 + 16);
  if (v21)
  {
    v22 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = (v17 + 56);
    v24 = MEMORY[0x277D84F90];
    v50 = *(v17 + 72);
    do
    {
      v26 = sub_24A3B4B10(v22, v20);
      MEMORY[0x28223BE20](v26);
      *(&v44 - 2) = v20;
      v27 = sub_24A3B4BD0(sub_24A407068, (&v44 - 4), v54);
      if (v27)
      {
        v28 = v27;
        v29 = v47;
        sub_24A3B4B10(v20, v47);
        v30 = *(v28 + 16);
        v31 = v55;
        FMFLocation.init(from:shiftedLocation:)(v29, v30, v55);
        v32 = v48;
        sub_24A3B4B10(v20, v48);
        (*v23)(v32, 0, 1, v51);
        v33 = *(v53 + 48);
        v34 = v31;
        v35 = v56;
        sub_24A3B4B10(v34, v56);
        sub_24A37BE24(v32, v35 + v33, &qword_27EF3F480, &unk_24A4B8C20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_24A3B4D48(0, v24[2] + 1, 1, v24);
        }

        v37 = v24[2];
        v36 = v24[3];
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v24 = sub_24A3B4D48((v36 > 1), v37 + 1, 1, v24);
        }

        sub_24A3B4B74(v55);
        v25 = v56;
      }

      else
      {
        v39 = v46;
        sub_24A3B4B10(v20, v46);
        (*v23)(v39, 0, 1, v51);
        v40 = *(v53 + 48);
        v41 = v49;
        sub_24A3B4B10(v20, v49);
        sub_24A37BE24(v39, v41 + v40, &qword_27EF3F480, &unk_24A4B8C20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_24A3B4D48(0, v24[2] + 1, 1, v24);
        }

        v37 = v24[2];
        v42 = v24[3];
        v38 = v37 + 1;
        if (v37 >= v42 >> 1)
        {
          v24 = sub_24A3B4D48((v42 > 1), v37 + 1, 1, v24);
        }

        v25 = v49;
      }

      v24[2] = v38;
      sub_24A37BE24(v25, v24 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v37, &qword_27EF3F8C0, &qword_24A4B9F50);
      sub_24A3B4B74(v20);
      v22 += v50;
      --v21;
    }

    while (v21);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  (v45)(v24, v18);
}

unint64_t sub_24A3B4A78()
{
  result = qword_27EF3F308;
  if (!qword_27EF3F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F308);
  }

  return result;
}

double sub_24A3B4ACC(uint64_t a1)
{
  *(a1 + 352) = 0;
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24A3B4B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3B4B74(uint64_t a1)
{
  v2 = type metadata accessor for FMFLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3B4BD0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_24A4AC060();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C218380](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

unint64_t sub_24A3B4CF4()
{
  result = qword_27EF3F190;
  if (!qword_27EF3F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F190);
  }

  return result;
}

void *sub_24A3B4D48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A3C9CEC(&qword_27EF3F8B8, &unk_24A4B68E0);
  v10 = *(sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24A3B4F38(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FF98, &qword_24A4B9530);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B5C54();
  sub_24A4AC3C0();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24A4AC120();
    v10 = 1;
    sub_24A4AC120();
    sub_24A4AC0C0();

    (*(v4 + 8))(v6, v3);
  }

  sub_24A37EEE0(a1);
  return v7;
}

uint64_t sub_24A3B514C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24A3B4F38(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

id sub_24A3B517C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = a2;
  v52 = a3;
  v6 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for FMFLocation(0);
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v57 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v61 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  v14 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v50 - v17;
  MEMORY[0x28223BE20](v18);
  v56 = &v50 - v20;
  v21 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v53 = v8;
    v54 = v9;
    v50 = a4;
    v62 = MEMORY[0x277D84F90];
    sub_24A3B57CC(0, v21, 0);
    v23 = v62;
    v24 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v59 = *(v14 + 72);
    v25 = v24;
    v26 = v21;
    do
    {
      v27 = v60;
      sub_24A37B740(v25, v60, &qword_27EF3F8C0, &qword_24A4B9F50);
      v28 = v55;
      sub_24A37BE24(v27, v55, &qword_27EF3F8C0, &qword_24A4B9F50);
      v29 = *(v61 + 48);
      sub_24A3B587C(v28, v13, type metadata accessor for FMFLocation);
      sub_24A37EF2C(v28 + v29, &qword_27EF3F480, &unk_24A4B8C20);
      v62 = v23;
      v30 = v13;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_24A3B57CC((v31 > 1), v32 + 1, 1);
        v23 = v62;
      }

      *(v23 + 16) = v32 + 1;
      v33 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v34 = *(v58 + 72);
      sub_24A3B587C(v30, v23 + v33 + v34 * v32, type metadata accessor for FMFLocation);
      v25 += v59;
      --v26;
      v13 = v30;
    }

    while (v26);
    v55 = v23;
    v35 = (v58 + 48);
    v36 = MEMORY[0x277D84F90];
    v37 = v53;
    do
    {
      v38 = v56;
      sub_24A37B740(v24, v56, &qword_27EF3F8C0, &qword_24A4B9F50);
      v39 = v38;
      v40 = v60;
      sub_24A37BE24(v39, v60, &qword_27EF3F8C0, &qword_24A4B9F50);
      sub_24A37BE24(v40 + *(v61 + 48), v37, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A3B599C(v40, type metadata accessor for FMFLocation);
      if ((*v35)(v37, 1, v54) == 1)
      {
        v19 = sub_24A37EF2C(v37, &qword_27EF3F480, &unk_24A4B8C20);
      }

      else
      {
        sub_24A3B587C(v37, v57, type metadata accessor for FMFLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_24A3B5C2C(0, v36[2] + 1, 1, v36);
        }

        v42 = v36[2];
        v41 = v36[3];
        if (v42 >= v41 >> 1)
        {
          v36 = sub_24A3B5C2C((v41 > 1), v42 + 1, 1, v36);
        }

        v36[2] = v42 + 1;
        v19 = sub_24A3B587C(v57, v36 + v33 + v34 * v42, type metadata accessor for FMFLocation);
        v37 = v53;
      }

      v24 += v59;
      --v21;
    }

    while (v21);
    a4 = v50;
    v22 = v55;
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v43 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager;
  v44 = v51;
  v45 = *(v51 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager);
  MEMORY[0x28223BE20](v19);
  *(&v50 - 2) = v36;
  *(&v50 - 1) = v45;

  sub_24A4ABD70();

  v47 = *(v44 + v43);
  MEMORY[0x28223BE20](v46);
  *(&v50 - 2) = v47;
  *(&v50 - 1) = v22;

  sub_24A4ABD70();

  LOBYTE(v47) = v62;
  v48 = v52;
  swift_beginAccess();
  *(v48 + 16) = v47;
  return [a4 signal];
}

void *sub_24A3B57CC(void *a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F4F0, &unk_24A4B8C00, type metadata accessor for FMFLocation);
  *v3 = result;
  return result;
}

uint64_t sub_24A3B5814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3B587C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24A3B58E4()
{
  result = qword_27EF3FFC0;
  if (!qword_27EF3FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFC0);
  }

  return result;
}

uint64_t sub_24A3B593C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A3B599C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_24A3B59FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A3C9CEC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_24A3B5BD8()
{
  result = qword_27EF3FFC8;
  if (!qword_27EF3FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFC8);
  }

  return result;
}

unint64_t sub_24A3B5C54()
{
  result = qword_27EF3FFA0;
  if (!qword_27EF3FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFA0);
  }

  return result;
}

uint64_t sub_24A3B5CA8()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24A3B5CD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v95 = a3;
  v5 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v90 - v6;
  v98 = type metadata accessor for FMFLocation(0);
  v109 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v90 - v10;
  MEMORY[0x28223BE20](v11);
  v94 = &v90 - v12;
  MEMORY[0x28223BE20](v13);
  v91 = &v90 - v14;
  MEMORY[0x28223BE20](v15);
  v93 = (&v90 - v16);
  MEMORY[0x28223BE20](v17);
  v92 = &v90 - v18;
  MEMORY[0x28223BE20](v19);
  v99 = &v90 - v20;
  MEMORY[0x28223BE20](v21);
  v101 = &v90 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v90 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = (&v90 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = (&v90 - v30);
  v97 = (a2 + 632);
  swift_beginAccess();
  v32 = *(a2 + 632);
  v105 = v8;
  if (v32)
  {

    v33 = sub_24A3B936C(a1);

    if (v33)
    {
      *v95 = 0;
      return result;
    }

    v8 = v105;
  }

  v36 = sub_24A3B6800(v35, a1);

  *(a2 + 576) = 0;

  v107 = v36[2];
  v108 = v25;
  if (!v107)
  {
    v38 = MEMORY[0x277D84F98];
LABEL_23:

    v113 = MEMORY[0x277D84F90];
    if (*v97)
    {
      v55 = *v97;
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
    }

    v56 = *(v55 + 16);
    if (!v56)
    {

LABEL_61:

      sub_24A3B7B8C(v38);
      *v97 = v113;

      *v95 = 1;
      return result;
    }

    v107 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v57 = v55 + v107;
    v58 = *(v109 + 72);
    v103 = v55;
    v104 = (v109 + 56);

    v59 = MEMORY[0x277D84F90];
    v109 = v58;
    while (1)
    {
      sub_24A3992EC(v57, v25, type metadata accessor for FMFLocation);
      v62 = v25[1];
      v63 = v38;
      if (!v62)
      {
        goto LABEL_44;
      }

      if (!v38[2])
      {
        goto LABEL_44;
      }

      v64 = sub_24A39B2C8(*v25, v62);
      if ((v65 & 1) == 0)
      {
        goto LABEL_44;
      }

      v66 = v99;
      sub_24A3992EC(v63[7] + v64 * v58, v99, type metadata accessor for FMFLocation);
      v67 = v66;
      v68 = v101;
      sub_24A39983C(v67, v101, type metadata accessor for FMFLocation);
      v69 = v68;
      v70 = *(v68 + 8);
      if (!v70)
      {
        sub_24A39A7B8(v69, type metadata accessor for FMFLocation);
LABEL_44:
        sub_24A3992EC(v25, v8, type metadata accessor for FMFLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_24A3B5C2C(0, v59[2] + 1, 1, v59);
        }

        v79 = v59[2];
        v78 = v59[3];
        if (v79 >= v78 >> 1)
        {
          v59 = sub_24A3B5C2C((v78 > 1), v79 + 1, 1, v59);
        }

        sub_24A39A7B8(v25, type metadata accessor for FMFLocation);
        v59[2] = v79 + 1;
        v80 = v59 + v107 + v79 * v109;
        v58 = v109;
        sub_24A39983C(v8, v80, type metadata accessor for FMFLocation);
        goto LABEL_30;
      }

      v106 = *v69;
      if (!*(v69 + 33) || *(v69 + 16) != 1)
      {
        goto LABEL_50;
      }

      v71 = v69;
      memcpy(v112, (v69 + *(v98 + 44)), 0x161uLL);
      if (sub_24A3B9C24(v112) != 1)
      {
        break;
      }

      sub_24A3992EC(v71, v93, type metadata accessor for FMFLocation);
      v72 = v91;
      sub_24A3992EC(v25, v91, type metadata accessor for FMFLocation);
      sub_24A3BAFB0(v111);
      memcpy(v110, v111, sizeof(v110));
      v73 = v92;
      FMFLocation.init(from:updatedLocation:address:)(v93, v72, v110, v92);
      sub_24A3992EC(v73, v94, type metadata accessor for FMFLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_24A3B5C2C(0, v59[2] + 1, 1, v59);
      }

      v75 = v59[2];
      v74 = v59[3];
      if (v75 >= v74 >> 1)
      {
        v59 = sub_24A3B5C2C((v74 > 1), v75 + 1, 1, v59);
      }

      sub_24A39A7B8(v92, type metadata accessor for FMFLocation);
      v59[2] = v75 + 1;
      v76 = v59 + v107 + v75 * v109;
      v77 = v94;
LABEL_55:
      sub_24A39983C(v77, v76, type metadata accessor for FMFLocation);
      v83 = v70;
      v84 = v63;
      v85 = sub_24A39B2C8(v106, v83);
      v8 = v105;
      if (v86)
      {
        v87 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v63;
        v61 = v96;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_24A4A919C();
          v61 = v96;
          v84 = v112[0];
        }

        sub_24A39983C(*(v84 + 56) + v87 * v109, v61, type metadata accessor for FMFLocation);
        v63 = v84;
        sub_24A4A7438(v87, v84, v89);
        v60 = 0;
      }

      else
      {
        v60 = 1;
        v61 = v96;
      }

      (*v104)(v61, v60, 1, v98);
      sub_24A37EF2C(v61, &qword_27EF3F480, &unk_24A4B8C20);
      v25 = v108;
      sub_24A39A7B8(v108, type metadata accessor for FMFLocation);
      sub_24A39A7B8(v101, type metadata accessor for FMFLocation);
      v58 = v109;
LABEL_30:
      v57 += v58;
      --v56;
      v38 = v63;
      if (!v56)
      {

        v113 = v59;
        goto LABEL_61;
      }
    }

    v69 = v71;
LABEL_50:
    sub_24A3992EC(v69, v100, type metadata accessor for FMFLocation);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_24A3B5C2C(0, v59[2] + 1, 1, v59);
    }

    v82 = v59[2];
    v81 = v59[3];
    if (v82 >= v81 >> 1)
    {
      v59 = sub_24A3B5C2C((v81 > 1), v82 + 1, 1, v59);
    }

    v59[2] = v82 + 1;
    v76 = v59 + v107 + v82 * v109;
    v77 = v100;
    goto LABEL_55;
  }

  v37 = 0;
  v106 = v36 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v38 = MEMORY[0x277D84F98];
  v102 = v36;
  v103 = v31;
  v104 = v28;
  while (v37 < v36[2])
  {
    v39 = *(v109 + 72);
    sub_24A3992EC(v106 + v39 * v37, v31, type metadata accessor for FMFLocation);
    v40 = v31[1];
    if (v40)
    {
      v41 = *v31;
      sub_24A3992EC(v31, v28, type metadata accessor for FMFLocation);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v112[0] = v38;
      v44 = sub_24A39B2C8(v41, v40);
      v45 = v38[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_63;
      }

      v48 = v43;
      if (v38[3] >= v47)
      {
        if ((v42 & 1) == 0)
        {
          sub_24A4A919C();
        }
      }

      else
      {
        sub_24A3B740C(v47, v42);
        v49 = sub_24A39B2C8(v41, v40);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_65;
        }

        v44 = v49;
      }

      v8 = v105;
      v38 = v112[0];
      if (v48)
      {
        v28 = v104;
        sub_24A39AF20(v104, *(v112[0] + 56) + v44 * v39, type metadata accessor for FMFLocation);
      }

      else
      {
        *(v112[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
        v51 = (v38[6] + 16 * v44);
        *v51 = v41;
        v51[1] = v40;
        v28 = v104;
        sub_24A39983C(v104, v38[7] + v44 * v39, type metadata accessor for FMFLocation);
        v52 = v38[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_64;
        }

        v38[2] = v54;
      }

      v31 = v103;
      sub_24A39A7B8(v103, type metadata accessor for FMFLocation);
      v25 = v108;
      v36 = v102;
    }

    else
    {
      sub_24A39A7B8(v31, type metadata accessor for FMFLocation);
      v25 = v108;
    }

    if (v107 == ++v37)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

__n128 sub_24A3B6794(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A3B67C4(uint64_t a1)
{
  v2 = sub_24A382600();

  return MEMORY[0x2821FE718](a1, v2);
}

void *sub_24A3B6800(uint64_t a1, void *a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v94 - v5;
  v7 = type metadata accessor for FMFLocation(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v119 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v100 = &v94 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v94 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v20);
  v98 = &v94 - v21;
  MEMORY[0x28223BE20](v22);
  v109 = &v94 - v23;
  MEMORY[0x28223BE20](v24);
  v113 = &v94 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v94 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v94 - v30;
  v32 = sub_24A4AAAD0();
  MEMORY[0x28223BE20](v32);
  v36 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  if (a1)
  {
    v114 = v8;
    v97 = v19;
    v37 = v36;
    v38 = v33;
    v39 = v34;
    sub_24A4AAAC0();
    sub_24A4AAA30();
    v41 = v40;
    v42 = *(v39 + 8);
    v106 = v37;
    v107 = v39 + 8;
    v108 = v38;
    v105 = v42;
    v42(v37, v38);
    v43 = a2[2];
    if (v43)
    {
      v96 = v16;
      v44 = 0;
      v116 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v45 = a2 + v116;
      v115 = (v114 + 48);
      a2 = MEMORY[0x277D84F90];
      v46 = *(v114 + 72);
      v118 = v7;
      v102 = v31;
      v103 = v6;
      v101 = v28;
      v114 = v46;
      while (1)
      {
        sub_24A3992EC(v45, v31, type metadata accessor for FMFLocation);
        v51 = sub_24A3992EC(v31, v28, type metadata accessor for FMFLocation);
        MEMORY[0x28223BE20](v51);
        *(&v94 - 2) = v28;
        sub_24A3BC81C(sub_24A440FC0, v117, v6);
        if ((*v115)(v6, 1, v7) == 1)
        {
          sub_24A37EF2C(v6, &qword_27EF3F480, &unk_24A4B8C20);
          goto LABEL_15;
        }

        v52 = v113;
        sub_24A39983C(v6, v113, type metadata accessor for FMFLocation);
        memcpy(v123, (v52 + *(v7 + 44)), 0x161uLL);
        if (sub_24A3B9C24(v123) == 1)
        {
          v53 = v52;
          goto LABEL_14;
        }

        v54 = v123[38];
        memcpy(v122, &v28[*(v7 + 44)], 0x161uLL);
        if (sub_24A3B9C24(v122) == 1)
        {
          v53 = v113;
LABEL_14:
          sub_24A39A7B8(v53, type metadata accessor for FMFLocation);
LABEL_15:
          sub_24A3992EC(v28, v119, type metadata accessor for FMFLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
          }

          v56 = a2[2];
          v55 = a2[3];
          if (v56 >= v55 >> 1)
          {
            a2 = sub_24A3B5C2C((v55 > 1), v56 + 1, 1, a2);
          }

          sub_24A39A7B8(v31, type metadata accessor for FMFLocation);
          a2[2] = v56 + 1;
          v48 = v114;
          sub_24A39983C(v119, a2 + v116 + v56 * v114, type metadata accessor for FMFLocation);
          goto LABEL_7;
        }

        v110 = v44;
        v57 = v122[38];
        v58 = v54;
        v59 = v57;
        v111 = v58;
        v60 = [v58 timestamp];
        v61 = v106;
        sub_24A4AAAA0();

        sub_24A4AAA30();
        v63 = v62;
        v64 = v108;
        v65 = v105;
        v105(v61, v108);
        v112 = v59;
        v66 = [v59 timestamp];
        sub_24A4AAAA0();

        sub_24A4AAA30();
        v68 = v67;
        v65(v61, v64);
        if (v68 - v63 >= 0.0)
        {
          v28 = v101;
          v72 = v111;
          if (v68 - v63 < 5.0 && ([v112 distanceFromLocation_], v73 < 10.0) && *(v113 + 33) == 2 && v28[33] == 1)
          {
            sub_24A3992EC(v113, v98, type metadata accessor for FMFLocation);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v31 = v102;
            v6 = v103;
            v44 = v110;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
            }

            v76 = a2[2];
            v75 = a2[3];
            v99 = v76 + 1;
            if (v76 >= v75 >> 1)
            {
              a2 = sub_24A3B5C2C((v75 > 1), v76 + 1, 1, a2);
            }

            sub_24A39A7B8(v31, type metadata accessor for FMFLocation);
            v49 = v98;
            a2[2] = v99;
            v47 = a2 + v116 + v76 * v114;
            v48 = v114;
          }

          else
          {
            v77 = v118;
            v31 = v102;
            v6 = v103;
            v44 = v110;
            if (v68 + 300.0 < v41 && v28[33] == 2)
            {
              v95 = type metadata accessor for FMFLocation;
              v78 = v96;
              sub_24A3992EC(v28, v96, type metadata accessor for FMFLocation);
              v99 = v77[8];
              v79 = sub_24A4AAB20();
              v80 = v97;
              (*(*(v79 - 8) + 56))(&v97[v99], 1, 1, v79);
              v81 = *(v78 + 8);
              *v80 = *v78;
              *(v80 + 8) = v81;
              *(v80 + 16) = *(v78 + 16);
              v82 = *(v78 + 32);
              *(v80 + 24) = *(v78 + 24);
              *(v80 + 32) = v82;
              *(v80 + 33) = 1;
              v94 = v118[8];

              sub_24A3EE6D0(v78 + v94, v80 + v99);
              v83 = v118;
              *(v80 + v118[9]) = *(v78 + v118[9]);
              *(v80 + v83[10]) = *(v78 + v83[10]);
              memcpy(v121, (v78 + v83[11]), 0x161uLL);
              sub_24A37B740(v121, &v120, &qword_27EF3F840, &qword_24A4B6598);
              v84 = v78;
              v85 = v95;
              sub_24A39A7B8(v84, v95);
              memcpy((v80 + v118[11]), v121, 0x161uLL);
              sub_24A3992EC(v80, v100, v85);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
              }

              v87 = a2[2];
              v86 = a2[3];
              v88 = v87 + 1;
              v99 = v87;
              v89 = v111;
              if (v87 >= v86 >> 1)
              {
                a2 = sub_24A3B5C2C((v86 > 1), v87 + 1, 1, a2);
              }

              sub_24A39A7B8(v97, type metadata accessor for FMFLocation);
              sub_24A39A7B8(v31, type metadata accessor for FMFLocation);
              a2[2] = v88;
              v90 = v114;
              sub_24A39983C(v100, a2 + v116 + v99 * v114, type metadata accessor for FMFLocation);
              v50 = v113;
              v48 = v90;
              goto LABEL_6;
            }

            sub_24A3992EC(v28, v104, type metadata accessor for FMFLocation);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
            }

            v92 = a2[2];
            v91 = a2[3];
            v99 = v92 + 1;
            if (v92 >= v91 >> 1)
            {
              a2 = sub_24A3B5C2C((v91 > 1), v92 + 1, 1, a2);
            }

            sub_24A39A7B8(v31, type metadata accessor for FMFLocation);
            a2[2] = v99;
            v47 = a2 + v116 + v92 * v114;
            v48 = v114;
            v49 = v104;
          }
        }

        else
        {
          sub_24A3992EC(v113, v109, type metadata accessor for FMFLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_24A3B5C2C(0, a2[2] + 1, 1, a2);
          }

          v31 = v102;
          v6 = v103;
          v28 = v101;
          v44 = v110;
          v69 = v111;
          v71 = a2[2];
          v70 = a2[3];
          v111 = (v71 + 1);
          if (v71 >= v70 >> 1)
          {
            a2 = sub_24A3B5C2C((v70 > 1), v71 + 1, 1, a2);
          }

          sub_24A39A7B8(v31, type metadata accessor for FMFLocation);
          a2[2] = v111;
          v47 = a2 + v116 + v71 * v114;
          v48 = v114;
          v49 = v109;
        }

        sub_24A39983C(v49, v47, type metadata accessor for FMFLocation);
        v50 = v113;
LABEL_6:
        sub_24A39A7B8(v50, type metadata accessor for FMFLocation);
LABEL_7:
        v7 = v118;
        sub_24A39A7B8(v28, type metadata accessor for FMFLocation);
        v45 += v48;
        if (!--v43)
        {
          return a2;
        }
      }
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
  }

  return a2;
}

unint64_t sub_24A3B7448(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_24A3C9CEC(&qword_27EF40DC8, &unk_24A4BCF60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = a1[3];
  v54 = a1;
  sub_24A37EACC(a1, v12);
  sub_24A3B98AC();
  sub_24A4AC3C0();
  if (v2)
  {
    goto LABEL_71;
  }

  v13 = v9;
  LOBYTE(v55[0]) = 3;
  result = sub_24A4AC120();
  v16 = v8;
  v17 = v11;
  v18 = HIBYTE(v15) & 0xF;
  v19 = result & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v20 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v38 = v16;

    goto LABEL_67;
  }

  v21 = v7;
  if ((v15 & 0x1000000000000000) != 0)
  {
    v38 = v16;
    v56[0] = 0;
    v23 = sub_24A49D860(result, v15, 10);
    v45 = v44;

    if (v45)
    {
      goto LABEL_67;
    }

    goto LABEL_70;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24A4ABF90();
      v19 = v52;
    }

    v22 = *result;
    if (v22 == 43)
    {
      if (v19 >= 1)
      {
        if (--v19)
        {
          if (result)
          {
            v23 = 0;
            v30 = (result + 1);
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                goto LABEL_65;
              }

              v32 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_65;
              }

              v23 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_65;
              }

              ++v30;
              if (!--v19)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_65;
      }

      goto LABEL_76;
    }

    if (v22 != 45)
    {
      if (v19)
      {
        if (result)
        {
          v23 = 0;
          while (1)
          {
            v36 = *result - 48;
            if (v36 > 9)
            {
              goto LABEL_65;
            }

            v37 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              goto LABEL_65;
            }

            v23 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              goto LABEL_65;
            }

            ++result;
            if (!--v19)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_65:
      v38 = v16;
      v23 = 0;
      LOBYTE(v19) = 1;
      goto LABEL_66;
    }

    if (v19 >= 1)
    {
      if (--v19)
      {
        if (result)
        {
          v23 = 0;
          v24 = (result + 1);
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              goto LABEL_65;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              goto LABEL_65;
            }

            v23 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              goto LABEL_65;
            }

            ++v24;
            if (!--v19)
            {
              goto LABEL_55;
            }
          }
        }

LABEL_56:
        v38 = v16;
        v23 = 0;
LABEL_57:
        LOBYTE(v19) = 0;
LABEL_66:
        v56[0] = v19;
        v42 = v19;

        if (v42)
        {
LABEL_67:
          sub_24A45AB40();
          swift_allocError();
          *v43 = 0;
          swift_willThrow();
          (*(v13 + 8))(v17, v38);
LABEL_71:
          v46 = v54;
          type metadata accessor for FMFBaseResponse(0);
          swift_deallocPartialClassInstance();
          v51 = v46;
          goto LABEL_72;
        }

LABEL_70:
        *(v3 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_fetchStatus) = v23;
        LOBYTE(v55[0]) = 1;
        *(v3 + 16) = sub_24A4AC0D0();
        LOBYTE(v55[0]) = 2;
        *(v3 + 24) = sub_24A4AC0D0();
        v47 = type metadata accessor for FMFCommandResponseFragment(0);
        LOBYTE(v55[0]) = 4;
        sub_24A3B9B40(&qword_27EF40DD8, type metadata accessor for FMFCommandResponseFragment, &unk_24A4B99B8);
        v53 = v38;
        sub_24A4AC160();
        (*(*(v47 - 8) + 56))(v21, 0, 1, v47);
        sub_24A3B9C3C(v21, v3 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse);
        type metadata accessor for FMFAlert(0);
        v56[0] = 0;
        sub_24A3B9B40(&qword_27EF40DE0, type metadata accessor for FMFAlert, &protocol conformance descriptor for FMFAlert);
        v48 = v53;
        sub_24A4AC160();
        v49 = v55[0];
        v50 = v54;
        (*(v13 + 8))(v17, v48);
        *(v3 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_alert) = v49;
        v51 = v50;
LABEL_72:
        sub_24A37EEE0(v51);
        return v3;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v55[0] = result;
  v55[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v18)
      {
        v23 = 0;
        v39 = v55;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v18)
          {
            v38 = v16;
            goto LABEL_57;
          }
        }
      }

      goto LABEL_65;
    }

    if (v18)
    {
      v19 = v18 - 1;
      if (v18 != 1)
      {
        v23 = 0;
        v27 = v55 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v19)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_75;
  }

  if (v18)
  {
    v19 = v18 - 1;
    if (v18 != 1)
    {
      v23 = 0;
      v33 = v55 + 1;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v23;
        if ((v23 * 10) >> 64 != (10 * v23) >> 63)
        {
          break;
        }

        v23 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        ++v33;
        if (!--v19)
        {
LABEL_55:
          v38 = v16;
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_77:
  __break(1u);
  return result;
}

void sub_24A3B7B8C(void *a1)
{
  v66 = type metadata accessor for FMFLocation(0);
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = a1[2];
  v15 = *v2;
  v16 = *(*v2 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_24A3B5C2C(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = *(v4 + 72);
  v22 = v19 - v21;
  sub_24A3B84D4(&v67, v15 + v17 + v16 * v21, v19 - v21, a1);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    sub_24A3A13C0(v67);
LABEL_14:
    *v2 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_24A3B4B10(*(v55 + 56) + (__clz(__rbit64(v28)) | (v29 << 6)) * v16, v13);
    v33 = v66;
    v57 = *(v1 + 56);
    v57(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_24A37B740(v13, v63, &qword_27EF3F480, &unk_24A4B8C20);
      v35 = *(v1 + 48);
      v1 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_24A37EF2C(v34, &qword_27EF3F480, &unk_24A4B8C20);
        v39 = v15[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v15 = sub_24A3B5C2C((v39 > 1), v36 + 1, 1, v15);
          v40 = v15[3] >> 1;
        }

        v41 = v65;
        sub_24A37B740(v13, v65, &qword_27EF3F480, &unk_24A4B8C20);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_24A37EF2C(v43, &qword_27EF3F480, &unk_24A4B8C20);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v15[2] = v37;
        v34 = v63;
        sub_24A37B740(v13, v63, &qword_27EF3F480, &unk_24A4B8C20);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v15 + v17;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_24A3DCC88(v43, v64, type metadata accessor for FMFLocation);
        if (v62 == v59)
        {
          sub_24A3DCAEC(v47, type metadata accessor for FMFLocation);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_24A37EF2C(v13, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A3DCC88(v47, &v58[v4 * v16], type metadata accessor for FMFLocation);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_24A3B4B10(*(v55 + 56) + (__clz(__rbit64(v48)) | (v49 << 6)) * v16, v13);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v13, v45, 1, v66);
        v43 = v65;
        sub_24A37B740(v13, v65, &qword_27EF3F480, &unk_24A4B8C20);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v1 + 56);
      v57(v13, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_24A37EF2C(v13, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A3A13C0(v55);
    sub_24A37EF2C(v34, &qword_27EF3F480, &unk_24A4B8C20);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_24A3B8238(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v39 = a6;
  v40 = a7;
  v11 = a5(0);
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    v20 = 0;
    v34 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = v37;
      v28 = *(v38 + 72);
      sub_24A39921C(v26 + v28 * (v25 | (v20 << 6)), v37, v39);
      v29 = v27;
      v30 = v40;
      sub_24A39CAB8(v29, v15, v40);
      sub_24A39CAB8(v15, a2, v30);
      if (v22 == v36)
      {
        a4 = a1;
        a1 = v35;
        goto LABEL_23;
      }

      a2 += v28;
      v31 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v32 = v20 + 1;
    }

    else
    {
      v32 = v21;
    }

    v20 = v32 - 1;
    a1 = v35;
LABEL_23:
    v17 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_24A3B8480()
{
  result = qword_27EF40DF8;
  if (!qword_27EF40DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40DF8);
  }

  return result;
}

uint64_t sub_24A3B8504@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_24A4AB690();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v107 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_24A4AB6E0();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v9 - 8);
  v115 = &v101 - v10;
  v116 = type metadata accessor for FMFLocation(0);
  v124 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v121 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v118 = &v101 - v13;
  MEMORY[0x28223BE20](v14);
  v113 = &v101 - v15;
  MEMORY[0x28223BE20](v16);
  v104 = &v101 - v17;
  MEMORY[0x28223BE20](v18);
  v112 = (&v101 - v19);
  MEMORY[0x28223BE20](v20);
  v111 = &v101 - v21;
  MEMORY[0x28223BE20](v22);
  v117 = &v101 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v101 - v25;
  MEMORY[0x28223BE20](v27);
  v126 = (&v101 - v28);
  MEMORY[0x28223BE20](v29);
  v125 = &v101 - v30;
  MEMORY[0x28223BE20](v31);
  v120 = (&v101 - v32);
  v33 = sub_24A390DA0();
  sub_24A39CB88();
  v34 = sub_24A3B936C(a2);

  if (v34)
  {

    *a3 = 0;
    return result;
  }

  v102 = a3;
  sub_24A3B9900(a2, v33, 0x69737365636F7270, 0xEA0000000000676ELL);
  v36 = sub_24A39CB88();
  v37 = sub_24A3B6800(v36, a2);

  sub_24A3B9900(v37, v33, 0x65737365636F7270, 0xE900000000000064);

  a1[72] = 0;

  a1[78] = 0;

  v38 = v37[2];
  v103 = a1;
  v114 = v26;
  v123 = v38;
  if (v38)
  {
    v39 = 0;
    v122 = (v37 + ((*(v124 + 80) + 32) & ~*(v124 + 80)));
    v40 = MEMORY[0x277D84F98];
    v41 = v120;
    v42 = v121;
    v119 = v37;
    do
    {
      if (v39 >= v37[2])
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        result = sub_24A4AC2B0();
        __break(1u);
        return result;
      }

      v43 = *(v124 + 72);
      sub_24A3992EC(v122 + v43 * v39, v41, type metadata accessor for FMFLocation);
      v44 = v41[1];
      if (v44)
      {
        v45 = *v41;
        sub_24A3992EC(v41, v125, type metadata accessor for FMFLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v129[0] = v40;
        v48 = sub_24A39B2C8(v45, v44);
        v49 = v40[2];
        v50 = (v47 & 1) == 0;
        v51 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_60;
        }

        v52 = v47;
        if (v40[3] >= v51)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A4A919C();
          }
        }

        else
        {
          sub_24A3B740C(v51, isUniquelyReferenced_nonNull_native);
          v53 = sub_24A39B2C8(v45, v44);
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_62;
          }

          v48 = v53;
        }

        v42 = v121;
        v40 = v129[0];
        if (v52)
        {
          sub_24A39AF20(v125, *(v129[0] + 56) + v48 * v43, type metadata accessor for FMFLocation);
        }

        else
        {
          *(v129[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
          v55 = (v40[6] + 16 * v48);
          *v55 = v45;
          v55[1] = v44;
          sub_24A39983C(v125, v40[7] + v48 * v43, type metadata accessor for FMFLocation);
          v56 = v40[2];
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            goto LABEL_61;
          }

          v40[2] = v58;
        }

        v41 = v120;
        sub_24A39A7B8(v120, type metadata accessor for FMFLocation);
        v37 = v119;
      }

      else
      {
        sub_24A39A7B8(v41, type metadata accessor for FMFLocation);
      }

      ++v39;
    }

    while (v123 != v39);

    a1 = v103;
    v26 = v114;
  }

  else
  {

    v40 = MEMORY[0x277D84F98];
    v42 = v121;
  }

  v59 = MEMORY[0x277D84F90];
  v130 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v60 = a1[77];
  v61 = *(v60 + 16);
  if (!v61)
  {
    goto LABEL_55;
  }

  v62 = (*(v124 + 80) + 32) & ~*(v124 + 80);
  v122 = a1 + 77;
  v123 = v62;
  v63 = v60 + v62;
  v64 = *(v124 + 72);
  v124 += 56;
  v125 = v64;
  v120 = v60;

  v65 = MEMORY[0x277D84F90];
  do
  {
    v69 = v126;
    sub_24A3992EC(v63, v126, type metadata accessor for FMFLocation);
    v70 = v69[1];
    v71 = v40;
    if (v70)
    {
      if (v40[2])
      {
        v72 = sub_24A39B2C8(*v126, v70);
        if (v73)
        {
          v74 = v117;
          sub_24A3992EC(v71[7] + v72 * v125, v117, type metadata accessor for FMFLocation);
          sub_24A39983C(v74, v26, type metadata accessor for FMFLocation);
          v75 = *(v26 + 1);
          if (v75)
          {
            v76 = *v26;
            if (v26[33] && v26[16] == 1 && (memcpy(v129, &v26[*(v116 + 44)], 0x161uLL), sub_24A3B9C24(v129) == 1))
            {
              v119 = v76;
              sub_24A3992EC(v26, v112, type metadata accessor for FMFLocation);
              v77 = v104;
              sub_24A3992EC(v126, v104, type metadata accessor for FMFLocation);
              sub_24A3BAFB0(v128);
              memcpy(v127, v128, sizeof(v127));
              v78 = v111;
              FMFLocation.init(from:updatedLocation:address:)(v112, v77, v127, v111);
              sub_24A3992EC(v78, v113, type metadata accessor for FMFLocation);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = sub_24A3B5C2C(0, v65[2] + 1, 1, v65);
              }

              v80 = v65[2];
              v79 = v65[3];
              v76 = v119;
              if (v80 >= v79 >> 1)
              {
                v65 = sub_24A3B5C2C((v79 > 1), v80 + 1, 1, v65);
              }

              sub_24A39A7B8(v111, type metadata accessor for FMFLocation);
              v65[2] = v80 + 1;
              v81 = v65 + v123 + v80 * v125;
              v82 = v113;
            }

            else
            {
              sub_24A3992EC(v26, v118, type metadata accessor for FMFLocation);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = sub_24A3B5C2C(0, v65[2] + 1, 1, v65);
              }

              v84 = v65[2];
              v83 = v65[3];
              if (v84 >= v83 >> 1)
              {
                v65 = sub_24A3B5C2C((v83 > 1), v84 + 1, 1, v65);
              }

              v65[2] = v84 + 1;
              v81 = v65 + v123 + v84 * v125;
              v82 = v118;
            }

            sub_24A39983C(v82, v81, type metadata accessor for FMFLocation);
            v85 = v75;
            v86 = v71;
            v87 = sub_24A39B2C8(v76, v85);
            v42 = v121;
            if (v88)
            {
              v89 = v87;
              v90 = swift_isUniquelyReferenced_nonNull_native();
              v129[0] = v71;
              v67 = v115;
              if (!v90)
              {
                sub_24A4A919C();
                v67 = v115;
                v86 = v129[0];
              }

              sub_24A39983C(*(v86 + 56) + v89 * v125, v67, type metadata accessor for FMFLocation);
              v71 = v86;
              sub_24A4A7438(v89, v86, v91);
              v66 = 0;
            }

            else
            {
              v66 = 1;
              v67 = v115;
            }

            (*v124)(v67, v66, 1, v116);
            sub_24A37EF2C(v67, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A39A7B8(v126, type metadata accessor for FMFLocation);
            v26 = v114;
            sub_24A39A7B8(v114, type metadata accessor for FMFLocation);
            v68 = v125;
            goto LABEL_26;
          }

          sub_24A39A7B8(v26, type metadata accessor for FMFLocation);
        }
      }
    }

    sub_24A3992EC(v126, v42, type metadata accessor for FMFLocation);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_24A3B5C2C(0, v65[2] + 1, 1, v65);
    }

    v93 = v65[2];
    v92 = v65[3];
    if (v93 >= v92 >> 1)
    {
      v65 = sub_24A3B5C2C((v92 > 1), v93 + 1, 1, v65);
    }

    sub_24A39A7B8(v126, type metadata accessor for FMFLocation);
    v65[2] = v93 + 1;
    v68 = v125;
    sub_24A39983C(v42, v65 + v123 + v93 * v125, type metadata accessor for FMFLocation);
LABEL_26:
    v63 += v68;
    --v61;
    v40 = v71;
  }

  while (v61);

  v130 = v65;
  a1 = v103;
  v59 = MEMORY[0x277D84F90];
LABEL_55:

  sub_24A3B7B8C(v40);
  v94 = v130;

  v96 = sub_24A3B936C(v95);

  if (v96)
  {
  }

  else
  {
    a1[77] = v94;

    v126 = a1[8];
    v129[4] = sub_24A3BCC0C;
    v129[5] = a1;
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 1107296256;
    v129[2] = sub_24A388564;
    v129[3] = &unk_285D89438;
    v97 = _Block_copy(v129);

    v98 = v105;
    sub_24A4AB6B0();
    *&v128[0] = v59;
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    v99 = v107;
    v100 = v110;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v98, v99, v97);
    _Block_release(v97);
    (*(v109 + 8))(v99, v100);
    (*(v106 + 8))(v98, v108);
  }

  *v102 = 1;
  return result;
}

unint64_t sub_24A3B92FC()
{
  result = qword_27EF40E00;
  if (!qword_27EF40E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40E00);
  }

  return result;
}

uint64_t sub_24A3B936C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for FMFLocation(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-v10 - 8];
  v12 = *(v4 + 16);
  if (v12 != *(v2 + 16))
  {
    goto LABEL_28;
  }

  if (!v12 || v4 == v2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = v4 + v13;
  v15 = v2 + v13;
  v24 = *(v9 + 72);
  while (1)
  {
    sub_24A415EC8(v14, v11, type metadata accessor for FMFLocation);
    sub_24A415EC8(v15, v7, type metadata accessor for FMFLocation);
    v16 = *(v11 + 1);
    v17 = *(v7 + 1);
    if (v16)
    {
      if (!v17 || (*v11 != *v7 || v16 != v17) && (sub_24A4AC270() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v17)
    {
      goto LABEL_27;
    }

    v18 = v5[11];
    memcpy(v32, &v11[v18], 0x161uLL);
    v19 = v5[11];
    memcpy(v33, &v7[v19], 0x161uLL);
    memcpy(v31, &v11[v18], 0x161uLL);
    memcpy(&v31[360], &v7[v19], 0x161uLL);
    memcpy(v34, &v11[v18], 0x161uLL);
    if (sub_24A3B9C24(v34) == 1)
    {
      break;
    }

    memcpy(v30, v31, 0x161uLL);
    memcpy(v28, v31, 0x161uLL);
    memcpy(v29, &v31[360], 0x161uLL);
    if (sub_24A3B9C24(v29) == 1)
    {
      memcpy(v27, v31, 0x161uLL);
      sub_24A37B740(v32, v26, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A37B740(v33, v26, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A37B740(v30, v26, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A3C36E0(v27);
      goto LABEL_26;
    }

    memcpy(v27, &v31[360], 0x161uLL);
    sub_24A37B740(v32, v26, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v33, v26, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v30, v26, &qword_27EF3F840, &qword_24A4B6598);
    v20 = sub_24A3D7468(v28, v27);
    memcpy(v25, v27, 0x161uLL);
    sub_24A3C36E0(v25);
    memcpy(v26, v28, 0x161uLL);
    sub_24A3C36E0(v26);
    memcpy(v27, v31, 0x161uLL);
    sub_24A37EF2C(v27, &qword_27EF3F840, &qword_24A4B6598);
    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    if (v11[16] != v7[16] || v11[33] != v7[33] || v11[v5[10]] != v7[v5[10]])
    {
      goto LABEL_27;
    }

    v21 = v11[v5[9]] ^ v7[v5[9]];
    sub_24A415F30(v7, type metadata accessor for FMFLocation);
    sub_24A415F30(v11, type metadata accessor for FMFLocation);
    if ((v21 & 1) == 0)
    {
      v15 += v24;
      v14 += v24;
      if (--v12)
      {
        continue;
      }
    }

    v22 = v21 ^ 1;
    return v22 & 1;
  }

  memcpy(v29, &v31[360], 0x161uLL);
  if (sub_24A3B9C24(v29) == 1)
  {
    memcpy(v30, v31, 0x161uLL);
    sub_24A37B740(v32, v28, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v33, v28, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37EF2C(v30, &qword_27EF3F840, &qword_24A4B6598);
    goto LABEL_17;
  }

  sub_24A37B740(v32, v30, &qword_27EF3F840, &qword_24A4B6598);
  sub_24A37B740(v33, v30, &qword_27EF3F840, &qword_24A4B6598);
LABEL_26:
  memcpy(v29, v31, 0x2C9uLL);
  sub_24A37EF2C(v29, &qword_27EF3F8E0, &unk_24A4B6950);
LABEL_27:
  sub_24A415F30(v7, type metadata accessor for FMFLocation);
  sub_24A415F30(v11, type metadata accessor for FMFLocation);
LABEL_28:
  v22 = 0;
  return v22 & 1;
}

unint64_t sub_24A3B98AC()
{
  result = qword_27EF40DD0;
  if (!qword_27EF40DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40DD0);
  }

  return result;
}

void sub_24A3B9900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v8 = sub_24A4AB820();
  [v13 setLocalizedDateFormatFromTemplate_];

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(type metadata accessor for FMFLocation(0) - 8);
    v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    do
    {
      sub_24A3BBDD8(v11, a2, v13, a3, a4);
      v11 += v12;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_24A3B9A38()
{
  v1 = *v0;
  v2 = 0x7472656C61;
  v3 = 0x746E6F4361746164;
  v4 = 0x6174536863746566;
  if (v1 != 3)
  {
    v4 = 0x52646E616D6D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43726576726573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A3B9AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 353))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 304);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A3B9B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A3B9B88(uint64_t a1)
{
  v2 = sub_24A3B98AC();

  return MEMORY[0x2821FE718](a1, v2);
}

id FMFLocation.location.getter()
{
  v1 = type metadata accessor for FMFLocation(0);
  memcpy(v5, (v0 + *(v1 + 44)), 0x161uLL);
  v2 = 0;
  if (sub_24A3B9C24(v5) != 1)
  {
    v2 = v5[38];
    v3 = v5[38];
  }

  return v2;
}

uint64_t sub_24A3B9C24(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A3B9C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3B9CCC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for FMFAlert(uint64_t a1)
{
  result = qword_27EF3F6B0;
  if (!qword_27EF3F6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3B9EB4(uint64_t a1)
{
  sub_24A3B9F74(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24A3B9F74(uint64_t a1)
{
  if (!qword_27EF3F6C0)
  {
    sub_24A4AA9D0();
    v1 = sub_24A4ABDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF3F6C0);
    }
  }
}

void FMFLocation.label.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FMFLocation(0);
  memcpy(__dst, (v1 + *(v3 + 44)), 0x161uLL);
  if (sub_24A3B9C24(__dst) == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = __dst[40];
    v6 = __dst[42];
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
}