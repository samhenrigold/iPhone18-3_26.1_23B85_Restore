unint64_t sub_24A6A3964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24A82DC04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A6A3A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_24A68FED4(v20, v17, a4);
        sub_24A68FED4(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_24A692298(v14, a6);
        sub_24A692298(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_24A6A3BD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696772616843;
    }

    else
    {
      v4 = 0x6772616843746F4ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000676E69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64656772616843;
    }

    else
    {
      v4 = 0x6E776F6E6B6E55;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x676E696772616843;
  if (a2 != 2)
  {
    v7 = 0x6772616843746F4ELL;
    v6 = 0xEB00000000676E69;
  }

  if (a2)
  {
    v2 = 0x64656772616843;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24A82DC04();
  }

  return v10 & 1;
}

void FMIPDevice.bestLocation.getter(char *a1@<X8>)
{
  v10 = *(v1 + 256);
  *v11 = *(v1 + 264);
  v8 = *(v1 + 280);
  v9 = *(v1 + 288);
  v3 = (*(v1 + 216) >> 5) & 1;
  v4 = *(type metadata accessor for FMIPDevice(0) + 128);
  v5 = v9;
  v6 = v11[0];
  sub_24A7DC368(&v10, &v8, v3, v1 + v4, a1);

  v7 = v11[0];
}

uint64_t sub_24A6A3E20(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_24A6A3E7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 238)
  {
    v4 = *a1;
    if (v4 >= 0x12)
    {
      return v4 - 17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24A82CA34();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

void *sub_24A6A3F20()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5E6C0, &qword_24A838CE0);
  v2 = *v0;
  v3 = sub_24A82D954();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24A6A4098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 50);
    v4 = (a1 + 50);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(v4 - 2) ^ *(v3 - 2);
      if (*(v4 - 18) == *(v3 - 18) && *(v4 - 10) == *(v3 - 10))
      {
        if ((v6 ^ v8 | v5 ^ v7 | v9))
        {
          return 0;
        }
      }

      else if ((v6 ^ v8) & 1 | ((sub_24A82DC04() & 1) == 0) | ((v5 ^ v7) | v9) & 1)
      {
        return 0;
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24A6A4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_24A6A2BC0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_24A6A2D48(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_24A6A3F20();
        v16 = v18;
      }

      result = sub_24A7C4374(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_24A6A428C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v12, v5, sizeof(v12));
    memcpy(v14, v6, sizeof(v14));
    memcpy(__src, v6, sizeof(__src));
    sub_24A6CC988(__dst, v10);
    sub_24A6CC988(v14, v10);
    v8 = _s8FMIPCore16FMIPSafeLocationV2eeoiySbAC_ACtFZ_0(v12, __src);
    memcpy(v15, __src, sizeof(v15));
    sub_24A6CC294(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_24A6CC294(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 352;
    v5 += 352;
  }

  return 1;
}

uint64_t sub_24A6A43B8()
{
  v91 = sub_24A82CA34();
  v0 = *(v91 - 8);
  v1 = MEMORY[0x28223BE20](v91);
  v3 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v88 - v4;
  sub_24A82CA24();
  v6 = [objc_opt_self() sharedInstance];
  v7 = MEMORY[0x277D839B0];
  v95 = MEMORY[0x277D839B0];
  LOBYTE(v94) = 1;
  sub_24A6A50DC(&v94, v93);
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = v8;
  sub_24A6A4F8C(v93, 2037149030, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v10 = v96;
  v95 = v7;
  LOBYTE(v94) = 1;
  sub_24A6A50DC(&v94, v93);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v96 = v10;
  sub_24A6A4F8C(v93, 1752397168, 0xE400000000000000, v11);
  v12 = v96;
  v95 = MEMORY[0x277D83B88];
  *&v94 = 1;
  sub_24A6A50DC(&v94, v93);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v96 = v12;
  sub_24A6A4F8C(v93, 0xD000000000000011, 0x800000024A8459C0, v13);
  v14 = v96;
  sub_24A82C934();
  v95 = MEMORY[0x277D839F8];
  *&v94 = v15 * 1000.0;
  sub_24A6A50DC(&v94, v93);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v96 = v14;
  sub_24A6A4F8C(v93, 0x6954746E65696C63, 0xEF706D617473656DLL, v16);
  v17 = MEMORY[0x277D837D0];
  v18 = v96;
  v95 = MEMORY[0x277D837D0];
  *&v94 = 3157559;
  *(&v94 + 1) = 0xE300000000000000;
  sub_24A6A50DC(&v94, v93);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v18;
  sub_24A6A4F8C(v93, 0x6973726556707061, 0xEA00000000006E6FLL, v19);
  v20 = v92;
  v96 = v92;
  v21 = [v6 productType];
  if (v21)
  {
    v22 = v21;
    v23 = v6;
    v24 = sub_24A82CFC4();
    v26 = v25;

    v95 = v17;
    *&v94 = v24;
    *(&v94 + 1) = v26;
    v6 = v23;
    sub_24A6A50DC(&v94, v93);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v20;
    sub_24A6A4F8C(v93, 0x54746375646F7270, 0xEB00000000657079, v27);
    v96 = v92;
  }

  else
  {
    sub_24A7C3F0C(0x54746375646F7270, 0xEB00000000657079, &v94);
    sub_24A6F6C40(&v94);
  }

  v28 = [v6 osVersion];
  if (v28)
  {
    v29 = v28;
    v30 = sub_24A82CFC4();
    v32 = v31;

    v33 = MEMORY[0x277D837D0];
    v95 = MEMORY[0x277D837D0];
    *&v94 = v30;
    *(&v94 + 1) = v32;
    sub_24A6A50DC(&v94, v93);
    v34 = v96;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v34;
    sub_24A6A4F8C(v93, 0x6F6973726556736FLL, 0xE90000000000006ELL, v35);
    v96 = v92;
  }

  else
  {
    sub_24A7C3F0C(0x6F6973726556736FLL, 0xE90000000000006ELL, &v94);
    sub_24A6F6C40(&v94);
    v33 = MEMORY[0x277D837D0];
  }

  v36 = [v6 osBuildVersion];
  if (v36)
  {
    v37 = v36;
    v38 = sub_24A82CFC4();
    v40 = v39;

    v95 = v33;
    *&v94 = v38;
    *(&v94 + 1) = v40;
    sub_24A6A50DC(&v94, v93);
    v41 = v96;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v41;
    sub_24A6A4F8C(v93, 0x646C697542736FLL, 0xE700000000000000, v42);
    v96 = v92;
  }

  else
  {
    sub_24A7C3F0C(0x646C697542736FLL, 0xE700000000000000, &v94);
    sub_24A6F6C40(&v94);
  }

  v43 = [v6 deviceUDID];
  if (v43)
  {
    v44 = v43;
    v45 = sub_24A82CFC4();
    v47 = v46;

    v95 = v33;
    *&v94 = v45;
    *(&v94 + 1) = v47;
    sub_24A6A50DC(&v94, v93);
    v48 = v96;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v48;
    sub_24A6A4F8C(v93, 0x4455656369766564, 0xEA00000000004449, v49);
    v96 = v92;
  }

  else
  {
    sub_24A7C3F0C(0x4455656369766564, 0xEA00000000004449, &v94);
    sub_24A6F6C40(&v94);
  }

  if (qword_27EF5CC20 != -1)
  {
    swift_once();
  }

  v50 = *algn_27EF78F38;
  ObjectType = swift_getObjectType();
  v52 = (*(v50 + 32))(ObjectType, v50);
  if (v53)
  {
    v95 = MEMORY[0x277D837D0];
    *&v94 = v52;
    *(&v94 + 1) = v53;
    sub_24A6A50DC(&v94, v93);
    v54 = v96;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v54;
    sub_24A6A4F8C(v93, 0x6E656B6F54737061, 0xE800000000000000, v55);
    v96 = v92;
  }

  v56 = objc_opt_self();
  v57 = sub_24A82CF94();
  v58 = sub_24A82CF94();
  v59 = [v56 dateForKey:v57 inDomain:v58];

  if (v59)
  {
    sub_24A82C9F4();

    v60 = sub_24A82CF94();
    v61 = sub_24A82CF94();
    v62 = [v56 integerForKey:v60 inDomain:v61];

    v63 = sub_24A82CF94();
    v64 = sub_24A82CF94();
    v88 = v3;
    v89 = v5;
    v65 = v6;
    v66 = v64;
    v67 = [v56 BOOLForKey:v63 inDomain:v64];

    v68 = sub_24A82CF94();
    v69 = sub_24A82CF94();
    v70 = [v56 BOOLForKey:v68 inDomain:v69];

    v6 = v65;
    v71 = sub_24A82C994();
    v72 = [v71 fm_epoch];

    v95 = MEMORY[0x277D83B88];
    *&v94 = v62;
    sub_24A6A50DC(&v94, v93);
    v73 = v96;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v73;
    sub_24A6A4F8C(v93, 0x436C6C53776F6873, 0xEC000000746E756FLL, v74);
    v75 = v92;
    v96 = v92;
    v95 = MEMORY[0x277D84A28];
    *&v94 = v72;
    sub_24A6A50DC(&v94, v93);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v75;
    v77 = v91;
    v5 = v89;
    sub_24A6A4F8C(v93, 0xD000000000000010, 0x800000024A8459A0, v76);
    v78 = v92;
    v79 = 0x54554F54504FLL;
    if (v67)
    {
      v79 = 0x4E4954504FLL;
    }

    v80 = 0xE600000000000000;
    v95 = MEMORY[0x277D837D0];
    if (v67)
    {
      v80 = 0xE500000000000000;
    }

    *&v94 = v79;
    *(&v94 + 1) = v80;
    sub_24A6A50DC(&v94, v93);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v78;
    sub_24A6A4F8C(v93, 0x73696365446C6C73, 0xEB000000006E6F69, v81);
    v82 = v92;
    v96 = v92;
    v95 = MEMORY[0x277D839B0];
    LOBYTE(v94) = v70;
    sub_24A6A50DC(&v94, v93);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v82;
    sub_24A6A4F8C(v93, 0xD000000000000010, 0x800000024A845980, v83);
    (*(v0 + 8))(v88, v77);
    v84 = v92;
    v96 = v92;
  }

  else
  {
    v84 = v96;
  }

  v85 = qword_2815143A8;
  v86 = v90;
  swift_beginAccess();
  *(v86 + v85) = v84;

  sub_24A6A5DF4();

  return (*(v0 + 8))(v5, v91);
}

uint64_t _s8FMIPCore21FMIPPlaySoundMetadataV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v4 = type metadata accessor for FMIPPlaySoundMetadata(0);
  if ((sub_24A82C9E4() & 1) == 0 || qword_24A842A18[*a1] != qword_24A842A18[*a2])
  {
    return 0;
  }

  v5 = v4[6];
  v6 = &a1[v5];
  v7 = *&a1[v5 + 8];
  v8 = &a2[v5];
  v9 = *(v8 + 1);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = &a1[v11];
  v13 = *&a1[v11 + 8];
  v14 = &a2[v11];
  v15 = *(v14 + 1);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v4[8];
  v18 = &a1[v17];
  v19 = *&a1[v17 + 8];
  v20 = &a2[v17];
  v21 = *(v20 + 1);
  if (!v19)
  {
    if (!v21)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v21)
  {
    return 0;
  }

  v22 = *v18 == *v20 && v19 == v21;
  if (!v22 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v23 = v4[9];
  v24 = &a1[v23];
  v25 = *&a1[v23 + 8];
  v26 = &a2[v23];
  v27 = *(v26 + 1);
  result = (v25 | v27) == 0;
  if (v25 && v27)
  {
    if (*v24 == *v26 && v25 == v27)
    {
      return 1;
    }

    else
    {

      return sub_24A82DC04();
    }
  }

  return result;
}

_OWORD *sub_24A6A4F8C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A6A2D48(a2, a3);
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
      sub_24A6A62AC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A6A5200(v16, a4 & 1);
    v11 = sub_24A6A2D48(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_24A82DC44();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_24A6876E8(v22);

    return sub_24A6A50DC(a1, v22);
  }

  else
  {
    sub_24A6A5CB0(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_24A6A50DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t _s8FMIPCore26FMIPDeviceLostModeMetadataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  type metadata accessor for FMIPDeviceLostModeMetadata(0);
  if (sub_24A82C9E4() & 1) != 0 && qword_24A83CF40[a1[56]] == qword_24A83CF40[a2[56]] && (*(a1 + 5) == *(a2 + 5) ? (v4 = *(a1 + 6) == *(a2 + 6)) : (v4 = 0), (v4 || (sub_24A82DC04()) && (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) || (sub_24A82DC04())) && (*(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4) || (sub_24A82DC04()) && *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v5 = a1[3] ^ a2[3] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_24A6A5200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A6BBA94(&qword_27EF5D4B0, &qword_24A832860);
  v33 = v4;
  result = sub_24A82D964();
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
        sub_24A6A50DC(v24, v34);
      }

      else
      {
        sub_24A67E168(v24, v34);
      }

      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
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
      result = sub_24A6A50DC(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_24A6A54B8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_24A82CDF4();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_24A755208(a2);

  if (v12)
  {
    v32 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    *&v46 = sub_24A753B78;
    *(&v46 + 1) = v13;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_24A699BA0;
    *(&v45 + 1) = &unk_285DC6CE0;
    v14 = _Block_copy(&aBlock);

    sub_24A82CE24();
    v38 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    v33 = a2;
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v15 = v37;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v11, v8, v14);
    _Block_release(v14);
    v16 = v15;
    a2 = v33;
    (*(v36 + 8))(v8, v16);
    (*(v34 + 8))(v11, v35);
  }

  v17 = a3[3];
  v46 = a3[2];
  v47 = v17;
  v48 = a3[4];
  v49 = *(a3 + 10);
  v18 = a3[1];
  aBlock = *a3;
  v45 = v18;

  v19 = sub_24A7552C8(&aBlock);

  if (v19)
  {
    v33 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v20 = swift_allocObject();
    v21 = a3[3];
    *(v20 + 56) = a3[2];
    *(v20 + 72) = v21;
    *(v20 + 88) = a3[4];
    v22 = a3[1];
    *(v20 + 24) = *a3;
    *(v20 + 16) = a1;
    *(v20 + 104) = *(a3 + 10);
    *(v20 + 40) = v22;
    v42 = sub_24A753B6C;
    v43 = v20;
    v38 = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_24A699BA0;
    v41 = &unk_285DC6C90;
    v23 = _Block_copy(&v38);

    sub_24A6EF948(a3, &aBlock);
    sub_24A82CE24();
    *&aBlock = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v24 = v37;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v11, v8, v23);
    _Block_release(v23);
    (*(v36 + 8))(v8, v24);
    (*(v34 + 8))(v11, v35);
  }

  v25 = swift_allocObject();
  v26 = a3[3];
  *(v25 + 56) = a3[2];
  *(v25 + 72) = v26;
  *(v25 + 88) = a3[4];
  v27 = a3[1];
  *(v25 + 24) = *a3;
  *(v25 + 16) = a1;
  v28 = *(a3 + 10);
  *(v25 + 40) = v27;
  *(v25 + 104) = v28;
  *(v25 + 112) = a2;
  v42 = sub_24A753B5C;
  v43 = v25;
  v38 = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_24A699BA0;
  v41 = &unk_285DC6C40;
  v29 = _Block_copy(&v38);

  sub_24A6EF948(a3, &aBlock);
  sub_24A82CE24();
  *&aBlock = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v30 = v37;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v8, v29);
  _Block_release(v29);
  (*(v36 + 8))(v8, v30);
  (*(v34 + 8))(v11, v35);
}

uint64_t sub_24A6A5BE4()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24A6A5C4C()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

_OWORD *sub_24A6A5CB0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24A6A50DC(a4, (a5[7] + 32 * a1));
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

uint64_t sub_24A6A5D20()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A82CFC4();

  return v4;
}

uint64_t sub_24A6A5DF4()
{
  v1 = v0;
  v2 = qword_2815143A8;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v14 = sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
  *&v13 = v3;
  v4 = qword_27EF5D920;
  v5 = *(v1 + qword_27EF5D920);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  v12 = v6;
  if (v14)
  {
    sub_24A6A50DC(&v13, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_24A6A4F8C(v11, 0x6F43746E65696C63, 0xED0000747865746ELL, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_24A6F6C40(&v13);
    sub_24A7C3F0C(0x6F43746E65696C63, 0xED0000747865746ELL, v11);
    v8 = sub_24A6F6C40(v11);
  }

  v9 = *(v1 + v4);
  MEMORY[0x28223BE20](v8);

  os_unfair_lock_lock((v9 + 24));
  sub_24A6A3D44((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t sub_24A6A5F9C()
{
  v1 = (v0 + qword_27EF78DF8);
  if ((*(v0 + qword_27EF78DF8 + 48) & 1) == 0)
  {
    v2 = v1[4];
    v3 = v1[5];
    v5 = v1[2];
    v4 = v1[3];
    v6 = MEMORY[0x277D83B88];
    v7 = *v1;
    v8 = *(v0 + qword_27EF78DF8 + 8);
    v11 = MEMORY[0x277D83B88];
    v10[0] = v7;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x3156676174726961, 0xE800000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v8;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x3256676174726961, 0xE800000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v5;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x3156616E6D66, 0xE600000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v4;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x3256616E6D66, 0xE600000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v2;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x6E6D66656C707061, 0xEB00000000315661);
    swift_endAccess();
    sub_24A6A5DF4();
    v11 = v6;
    v10[0] = v3;
    swift_beginAccess();
    sub_24A6A61DC(v10, 0x6E6D66656C707061, 0xEB00000000325661);
    swift_endAccess();
    return sub_24A6A5DF4();
  }

  return result;
}

uint64_t sub_24A6A61DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24A6A50DC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_24A6A4F8C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_24A67F378(a1, &qword_27EF5D898, qword_24A8354A0);
    sub_24A7C3F0C(a2, a3, v9);

    return sub_24A67F378(v9, &qword_27EF5D898, qword_24A8354A0);
  }

  return result;
}

void *sub_24A6A62AC()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5D4B0, &qword_24A832860);
  v2 = *v0;
  v3 = sub_24A82D954();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_24A67E168(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24A6A50DC(v25, (*(v4 + 56) + v22));
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

  return result;
}

uint64_t sub_24A6A6450()
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A82CDC4();
  sub_24A6797D0(v0, qword_281518F88);
  v1 = sub_24A82CD94();
  v2 = sub_24A82D504();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24A675000, v1, v2, "fetching owner phone Number", v3, 2u);
    MEMORY[0x24C21E1D0](v3, -1, -1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v5 = [v4 aa_primaryAppleAccount];
  if (!v5)
  {

    v23 = 0u;
    v24 = 0u;
LABEL_23:
    sub_24A67F378(&v23, &qword_27EF5D898, qword_24A8354A0);
    return 0;
  }

  v6 = v5;
  v7 = sub_24A82CF94();
  v8 = [v6 accountPropertyForKey_];

  if (v8)
  {
    sub_24A82D694();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {

    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = sub_24A82CF94();

  v11 = [v9 authKitAccountWithAltDSID_];

  if (!v11)
  {
LABEL_27:

    return 0;
  }

  v12 = [v9 additionalInfoForAccount_];
  if (!v12)
  {

    goto LABEL_27;
  }

  v13 = v12;
  v14 = sub_24A82CEF4();

  if (*(v14 + 16) && (v15 = sub_24A6A2D48(0x6D754E656E6F6870, 0xEC00000073726562), (v16 & 1) != 0))
  {
    sub_24A67E168(*(v14 + 56) + 32 * v15, &v23);

    sub_24A6BBA94(&qword_27EF5F110, &qword_24A83D590);
    if (swift_dynamicCast())
    {
      if (*(v21 + 16))
      {
        v17 = *(v21 + 32);

        if (*(v17 + 16) && (v18 = sub_24A6A2D48(0x6D754E656E6F6870, 0xEB00000000726562), (v19 & 1) != 0))
        {
          sub_24A67E168(*(v17 + 56) + 32 * v18, &v23);

          if (swift_dynamicCast())
          {
            return v21;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

__n128 sub_24A6A68A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24A6A68B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6A691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A82CE54();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + qword_2815147D8);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = v5;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  aBlock[4] = sub_24A6A6C58;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCA690;
  v18 = _Block_copy(aBlock);

  sub_24A82CE24();
  v22 = MEMORY[0x277D84F90];
  sub_24A67A06C(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_24A6A6C08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_24A6A6C68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24A82CA34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(MEMORY[0x277D07B80]);
  v15 = sub_24A82CF94();
  v16 = [v14 initWithDescription:v15 andTimeout:120.0];

  v17 = *a2;
  if (type metadata accessor for FMIPRefreshClientRequest(0) != v17)
  {
    sub_24A82CA24();
    v18 = qword_281518F30;
    swift_beginAccess();
    (*(v11 + 40))(a1 + v18, v13, v10);
    swift_endAccess();
  }

  sub_24A6A7774(a2);
  v26 = type metadata accessor for FMIPBaseRequest(0);
  v27 = MEMORY[0x277D07D08];
  v25 = a2;
  v24[3] = v26;
  v24[4] = sub_24A67A06C(&qword_281514390, type metadata accessor for FMIPBaseRequest, &unk_24A834C48);
  v24[0] = a2;
  v19 = objc_opt_self();
  swift_retain_n();
  v20 = [v19 processInfo];
  v21 = [v20 processName];

  sub_24A82CFC4();
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  v22[7] = v16;

  v23 = v16;
  sub_24A82CC14();

  sub_24A6876E8(v24);
  sub_24A6876E8(&v25);
  [v23 wait];
}

uint64_t sub_24A6A6F78()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t type metadata accessor for FMIPRefreshClientRequest(uint64_t a1)
{
  result = qword_281513CA0;
  if (!qword_281513CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6A7024(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24A6A7CD4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE538;
  v14 = _Block_copy(aBlock);

  sub_24A6A7314(a1, a2);
  sub_24A82CE24();
  v18 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_24A6A7314(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_24A6A7338(uint64_t a1)
{
  sub_24A6A73F0(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_24A6A73F0(uint64_t a1)
{
  if (!qword_281515CC8[0])
  {
    type metadata accessor for FMIPDevice(255);
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, qword_281515CC8);
    }
  }
}

uint64_t sub_24A6A7448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A82CDF4();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24A6A9158;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE498;
  v14 = _Block_copy(aBlock);

  sub_24A6A7314(a1, a2);
  sub_24A82CE24();
  v19 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_24A6A7774(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CA34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + qword_2815147D0);
  if (v8)
  {
    *(a1 + qword_2815143A0) = v8;

    sub_24A6F92DC();
  }

  v9 = qword_281518F30;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v9, v4);
  v10 = qword_281518ED0;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v10, v7, v4);
  swift_endAccess();
  sub_24A6A78FC();
  return (*(v5 + 8))(v7, v4);
}

void sub_24A6A78FC()
{
  v1 = v0;
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);

  os_unfair_lock_unlock((v9 + 24));

  if (*(v10 + 16) && (v11 = sub_24A6A2D48(0x6F43746E65696C63, 0xED0000747865746ELL), (v12 & 1) != 0))
  {
    sub_24A67E168(*(v10 + 56) + 32 * v11, &v30);

    sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
    if (swift_dynamicCast())
    {
      v13 = *&v29[0];
      sub_24A82CA24();
      sub_24A82C9D4();
      v15 = v14;
      v16 = *(v3 + 8);
      v16(v8, v2);
      v17 = qword_281518ED0;
      swift_beginAccess();
      (*(v3 + 16))(v6, v1 + v17, v2);
      sub_24A82C9D4();
      v19 = v18;
      v16(v6, v2);
      v20 = v15 - v19;
      if (COERCE__INT64(fabs(v15 - v19)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v20 > -9.22337204e18)
      {
        if (v20 < 9.22337204e18)
        {
          if ((v20 * 1000) >> 64 == (1000 * v20) >> 63)
          {
            v31 = MEMORY[0x277D83B88];
            *&v30 = 1000 * v20;
            sub_24A6A50DC(&v30, v29);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28 = v13;
            sub_24A6A4F8C(v29, 0x6576697463616E69, 0xEC000000656D6954, isUniquelyReferenced_nonNull_native);
            v22 = v28;
            v23 = qword_2815143A8;
            swift_beginAccess();
            *(v1 + v23) = v22;

            sub_24A6A5DF4();
            return;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v24 = sub_24A82CDC4();
  sub_24A6797D0(v24, qword_281518F88);
  v25 = sub_24A82CD94();
  v26 = sub_24A82D4E4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24A675000, v25, v26, "FMIPBaseRequest: inactive time not set because clientContext doesn't exist", v27, 2u);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }
}

uint64_t sub_24A6A7CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  sub_24A6A7314(a2, a3);
  sub_24A6A7D7C(sub_24A6AC280, v6);
}

void sub_24A6A7D7C(uint64_t a1, uint64_t isEscapingClosureAtFileLocation)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_24A82CAA4();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  v65 = sub_24A82CA34();
  v61 = *(v65 - 8);
  v13 = *(v61 + 64);
  v14 = MEMORY[0x28223BE20](v65);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = sub_24A82C514();
  v69 = v17;
  v70 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v18 = sub_24A697E3C(aBlock);
  (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D08A00], v17);
  LOBYTE(v17) = sub_24A82C4D4();
  sub_24A6876E8(aBlock);
  if ((v17 & 1) == 0 || *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) != 1)
  {
    v57 = v6;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v59 = a1;
    v60 = isEscapingClosureAtFileLocation;
    v24 = sub_24A82CDC4();
    sub_24A6797D0(v24, qword_281518F88);
    v25 = sub_24A82CD94();
    v26 = sub_24A82D504();
    v27 = os_log_type_enabled(v25, v26);
    v58 = v3;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_24A68761C(0xD00000000000001BLL, 0x800000024A84ACC0, aBlock);
      _os_log_impl(&dword_24A675000, v25, v26, "FMIPBeaconRefreshingController: %s - Legacy SPI", v28, 0xCu);
      sub_24A6876E8(v29);
      MEMORY[0x24C21E1D0](v29, -1, -1);
      MEMORY[0x24C21E1D0](v28, -1, -1);
    }

    sub_24A82CA24();
    sub_24A82CA94();
    v30 = *(v62 + 16);
    v56 = v12;
    v31 = v12;
    v32 = v62;
    v33 = v63;
    v30(v10, v31, v63);
    v34 = v16;
    v35 = v61;
    v36 = *(v61 + 16);
    v55 = v34;
    v36(v64);
    v37 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v38 = (v8 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v35 + 80) + v39 + 16) & ~*(v35 + 80);
    v41 = swift_allocObject();
    (*(v32 + 32))(v41 + v37, v10, v33);
    *(v41 + v38) = v58;
    v42 = (v41 + v39);
    v44 = v59;
    v43 = v60;
    *v42 = v59;
    v42[1] = v43;
    (*(v35 + 32))(v41 + v40, v64, v65);
    *(v41 + ((v13 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_24A814374;
    *(v45 + 24) = v41;
    v64 = v41;
    v70 = sub_24A680674;
    v71 = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    v69 = &unk_285DCDEA8;
    v46 = _Block_copy(aBlock);
    v47 = _Block_copy(v46);

    sub_24A6A7314(v44, v43);
    v48 = qword_281513E40;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshBeacons", qword_281513E48, OS_ACTIVITY_FLAG_DEFAULT);
    v50 = _Block_copy(v47);
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_24A6A9A80;
    *(v52 + 24) = v51;
    v66[4] = sub_24A680674;
    v67 = v52;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 1107296256;
    v66[2] = sub_24A6805E4;
    v66[3] = &unk_285DCDF20;
    v53 = _Block_copy(v66);
    a1 = v67;

    os_activity_apply(v49, v53);
    _Block_release(v53);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    _Block_release(v47);
    _Block_release(v46);
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      (*(v62 + 8))(v56, v63);
      (*(v61 + 8))(v55, v65);
      swift_unknownObjectRelease();

      v54 = swift_isEscapingClosureAtFileLocation();

      if ((v54 & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_281515DC8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_24A68761C(0xD00000000000001BLL, 0x800000024A84ACC0, aBlock);
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPBeaconRefreshingController: %s - Optimized SPI", v22, 0xCu);
    sub_24A6876E8(v23);
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  sub_24A6A8610(a1, isEscapingClosureAtFileLocation);
}

void sub_24A6A8610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = *v2;
  v36 = a2;
  v37 = sub_24A82CAA4();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v37);
  v8 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);
  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24A675000, v12, v13, "FMIPBeaconRefreshingController: Refresh Beacon Groups", v14, 2u);
    MEMORY[0x24C21E1D0](v14, -1, -1);
  }

  sub_24A82CA94();
  v15 = *(v5 + 16);
  v34 = v10;
  v16 = v37;
  v15(v8, v10, v37);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v17, v8, v16);
  *(v20 + v18) = v3;
  v21 = (v20 + v19);
  v22 = v36;
  *v21 = a1;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_24A6AA01C;
  *(v23 + 24) = v20;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DCDC50;
  v24 = _Block_copy(aBlock);
  v25 = _Block_copy(v24);

  sub_24A6A7314(a1, v22);
  v26 = qword_281513E40;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshBeaconGroups", qword_281513E48, OS_ACTIVITY_FLAG_DEFAULT);
  v28 = _Block_copy(v25);
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_24A6A9A80;
  *(v30 + 24) = v29;
  v38[4] = sub_24A680674;
  v38[5] = v30;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 1107296256;
  v38[2] = sub_24A6805E4;
  v38[3] = &unk_285DCDCC8;
  v31 = _Block_copy(v38);

  os_activity_apply(v27, v31);
  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  _Block_release(v25);
  _Block_release(v24);
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_11;
  }

  (*(v5 + 8))(v34, v37);
  swift_unknownObjectRelease();

  v33 = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t sub_24A6A8B14()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24A6A8BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v40 = a2;
  v8 = sub_24A82CDF4();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24A82CE54();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CAA4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  (*(v13 + 16))(v15, a1, v12);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v8;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    v23 = sub_24A82CA54();
    v37 = v11;
    v24 = a4;
    v26 = v25;
    (*(v13 + 8))(v15, v12);
    v27 = sub_24A68761C(v23, v26, aBlock);
    a4 = v24;
    v11 = v37;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPBeaconRefreshingController: Refreshing beacon groups %s", v20, 0xCu);
    sub_24A6876E8(v22);
    v28 = v22;
    v8 = v38;
    MEMORY[0x24C21E1D0](v28, -1, -1);
    v29 = v20;
    a3 = v36;
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v30 = v40;
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = a3;
  v32 = v39;
  v31[4] = a4;
  v31[5] = v32;
  aBlock[4] = sub_24A6A9A74;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCDD18;
  v33 = _Block_copy(aBlock);

  sub_24A6A7314(a3, a4);
  sub_24A82CE24();
  v45 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  v34 = v42;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v34, v33);
  _Block_release(v33);
  (*(v44 + 8))(v34, v8);
  (*(v41 + 8))(v11, v43);
}

uint64_t sub_24A6A9104(uint64_t a1)
{

  if (*(v1 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_24A6A9164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPBeaconRefreshingController: refreshing UT alert state", v8, 2u);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);

    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;
    v14[4] = sub_24A6AA13C;
    v14[5] = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_24A6AA0E8;
    v14[3] = &unk_285DCE4E8;
    v13 = _Block_copy(v14);
    sub_24A6A7314(a2, a3);

    [v10 isUTAppAlertDisabled_];
    _Block_release(v13);
  }
}

void sub_24A6A93C4(uint64_t a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPBeaconRefreshingController: Start Refreshing", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing) = 1;
  sub_24A800E28();
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 0;
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 0;
  sub_24A82C964();
  v10 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v10, v5, v2);
  swift_endAccess();
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_callbackInterval) = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_initialCallbackInterval);
  sub_24A810278();
  sub_24A6A7D7C(0, 0);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_24A814C1C;
  *(v12 + 24) = v11;
  v35 = sub_24A680674;
  v36 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_24A6805E4;
  v34 = &unk_285DCE2E0;
  v13 = _Block_copy(&aBlock);
  v14 = _Block_copy(v13);
  v15 = qword_281513E40;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshUnknownBeacons", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v17 = _Block_copy(v14);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_24A6A9A80;
  *(v19 + 24) = v18;
  v30[4] = sub_24A680674;
  v30[5] = v19;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 1107296256;
  v30[2] = sub_24A6805E4;
  v30[3] = &unk_285DCE358;
  v20 = _Block_copy(v30);

  os_activity_apply(v16, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v13);
  _Block_release(v14);
  swift_unknownObjectRelease();
  if (v20)
  {
    __break(1u);
  }

  else
  {

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_24A6A7448(0, 0);
      sub_24A80BA48();
      sub_24A80CB10();
      v22 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession;
      v23 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
      v35 = sub_24A814A08;
      v36 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_24A8101E0;
      v34 = &unk_285DCE380;
      v24 = _Block_copy(&aBlock);

      v25 = v23;

      [v25 clientConfigurationWithCompletion_];
      _Block_release(v24);

      v26 = *(a1 + v22);
      v27 = swift_allocObject();
      swift_weakInit();
      v35 = sub_24A814A10;
      v36 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_24A801384;
      v34 = &unk_285DCE3A8;
      v28 = _Block_copy(&aBlock);
      v29 = v26;

      [v29 startRefreshingSeparationMonitoringState_];
      _Block_release(v28);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_24A6A99F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6A9A2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24A6A9A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  sub_24A82CA24();
  v13 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v45 = v13;
  v14(v10, a1 + v13, v6);
  sub_24A82C974();
  v16 = v15;
  v17 = *(v7 + 8);
  v17(v10, v6);
  v17(v12, v6);
  v18 = 0;
  if (!a2 && v16 <= 30.0)
  {
    v18 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing);
  }

  v46 = v18;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  v20 = sub_24A6797D0(v19, qword_281518F88);

  v47 = v20;
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = v7;
    v24 = v23;
    *v23 = 67109632;
    v25 = v46;
    *(v23 + 4) = v46;
    *(v23 + 8) = 1024;
    *(v23 + 10) = v16 > 30.0;
    *(v23 + 14) = 1024;
    *(v23 + 16) = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing);

    _os_log_impl(&dword_24A675000, v21, v22, "FMIPBeaconRefreshingController: Should rate limit? %{BOOL}d, possibly stuck? %{BOOL}d, currentlyRefreshing? %{BOOL}d", v24, 0x14u);
    v26 = v24;
    v7 = v44;
    MEMORY[0x24C21E1D0](v26, -1, -1);

    if (!v25)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!v46)
    {
LABEL_14:
      *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 1;
      sub_24A82CA24();
      v33 = v45;
      swift_beginAccess();
      (*(v7 + 40))(a1 + v33, v12, v6);
      swift_endAccess();
      v34 = sub_24A82CD94();
      v35 = sub_24A82D504();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_24A675000, v34, v35, "FMIPBeaconRefreshingController: Will call Refresh Beacon Groups", v36, 2u);
        MEMORY[0x24C21E1D0](v36, -1, -1);
      }

      v37 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
      sub_24A82CAA4();
      v38 = v37;
      v39 = sub_24A82D224();
      v40 = swift_allocObject();
      v40[2] = a1;
      v40[3] = a2;
      v40[4] = a3;
      aBlock[4] = sub_24A6AB83C;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A6AB7D0;
      aBlock[3] = &unk_285DCDD68;
      v41 = _Block_copy(aBlock);

      sub_24A6A7314(a2, a3);

      [v38 beaconGroupsForUUIDs:v39 completion:v41];
      _Block_release(v41);

      return;
    }
  }

  v27 = sub_24A82CD94();
  v28 = sub_24A82D504();
  v29 = os_log_type_enabled(v27, v28);
  if (v16 > 30.0)
  {
    if (v29)
    {
      v30 = v7;
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v16;
      _os_log_impl(&dword_24A675000, v27, v28, "FMIPBeaconRefreshingController: Refresh queue seemed stuck (for %f sec), allowing refresh.", v31, 0xCu);
      v32 = v31;
      v7 = v30;
      MEMORY[0x24C21E1D0](v32, -1, -1);
    }

    goto LABEL_14;
  }

  if (v29)
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    *(v42 + 4) = v16;
    _os_log_impl(&dword_24A675000, v27, v28, "FMIPBeaconRefreshingController: Ignoring refresh, the previous one didn't finish, %fs ago", v42, 0xCu);
    MEMORY[0x24C21E1D0](v42, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 1;
}

uint64_t sub_24A6AA01C()
{
  v1 = *(sub_24A82CAA4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  return sub_24A6A8BE0(v0 + v2, v5, v7, v8, v6);
}

uint64_t sub_24A6AA0E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_24A6AA14C(char a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24 = a3;
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = 0x64656C6261736964;
    }

    else
    {
      v12 = 0x64656C62616E65;
    }

    if (a1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = sub_24A68761C(v12, v13, &v25);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconRefreshingController: refreshUTAlertState: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    v15 = v11;
    a3 = v24;
    MEMORY[0x24C21E1D0](v15, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);

    if (!v24)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a3)
  {
LABEL_14:
    LOBYTE(v25) = a1 & 1;
    a3(&v25);
  }

LABEL_15:
  v16 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_utAlertState;
  if (a1)
  {
    v17 = 0x64656C6261736964;
  }

  else
  {
    v17 = 0x64656C62616E65;
  }

  if (a1)
  {
    v18 = 0xE800000000000000;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (*(v6 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_utAlertState))
  {
    v19 = 0x64656C6261736964;
  }

  else
  {
    v19 = 0x64656C62616E65;
  }

  if (*(v6 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_utAlertState))
  {
    v20 = 0xE800000000000000;
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  if (v17 == v19 && v18 == v20)
  {
  }

  else
  {
    v22 = sub_24A82DC04();

    if (v22)
    {
    }

    v23 = a1 & 1;
    *(v6 + v16) = v23;
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    else
    {
      LOBYTE(v25) = v23;
      sub_24A6AA40C(&v25);

      return swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24A6AA40C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE54();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v15 = 136315138;
    if (v11)
    {
      v16 = 0x64656C6261736964;
    }

    else
    {
      v16 = 0x64656C62616E65;
    }

    v29 = v5;
    if (v11)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v18 = v10;
    v19 = v7;
    v20 = v4;
    v21 = v2;
    v22 = sub_24A68761C(v16, v17, aBlock);
    v5 = v29;

    *(v15 + 4) = v22;
    v2 = v21;
    v4 = v20;
    v7 = v19;
    v10 = v18;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: didReceive UT alert state: %s", v15, 0xCu);
    v23 = v28;
    sub_24A6876E8(v28);
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v11;
  aBlock[4] = sub_24A6AA844;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6FB0;
  v25 = _Block_copy(aBlock);

  sub_24A82CE24();
  v32 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v10, v7, v25);
  _Block_release(v25);
  (*(v5 + 8))(v7, v4);
  (*(v30 + 8))(v10, v31);
}

uint64_t sub_24A6AA850(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = a2 & 1;
    (*(v6 + 144))(a1, &v8, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FMIPUTAlertState.rawValue.getter()
{
  if (*v0)
  {
    return 0x64656C6261736964;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

BOOL FMIPManager.isInitialized.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  v2 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  if (v1 == 1)
  {
    swift_beginAccess();
    v3 = *(v0 + v2);
    if (v3)
    {
      return (v3 >> 1) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    swift_beginAccess();
    return (v1 & ~*(v0 + v2)) == 0;
  }
}

Swift::Void __swiftcall FMIPManager.startRefreshing(subsystems:)(FMIPCore::FMIPManagerSubsystem subsystems)
{
  v2 = v1;
  v4 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v55 - v5;
  v60 = sub_24A82CE54();
  v6 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CDF4();
  v63 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CA34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *subsystems.rawValue;
  v15 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_stopRefreshTimestamp;
  swift_beginAccess();
  if ((*(v12 + 48))(v2 + v15, 1, v11))
  {
    v16 = 0;
  }

  else
  {
    (*(v12 + 16))(v14, v2 + v15, v11);
    sub_24A82C9C4();
    v18 = v17;
    (*(v12 + 8))(v14, v11);
    v16 = v18 > -60.0;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v59 = v2;
  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v9;
    v24 = v8;
    v25 = v6;
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v22 = 136315138;
    if (v16)
    {
      v27 = 0xD000000000000014;
    }

    else
    {
      v27 = 0;
    }

    if (v16)
    {
      v28 = 0x800000024A846B90;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v29 = sub_24A68761C(v27, v28, &aBlock);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPManager: start refreshing %s", v22, 0xCu);
    sub_24A6876E8(v26);
    v6 = v25;
    v8 = v24;
    v9 = v23;
    MEMORY[0x24C21E1D0](v26, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  v30 = v59;
  v31 = *(v59 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  v32 = *(v31 + 72);

  v33 = v32;
  v34 = v62;
  sub_24A82CDE4();
  v35 = swift_allocObject();
  *(v35 + 16) = v31;
  *(v35 + 24) = v16;
  v36 = v30;
  v69 = sub_24A74EF20;
  v70 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_24A699BA0;
  v68 = &unk_285DC5788;
  v37 = _Block_copy(&aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v8, v34, v37);
  _Block_release(v37);

  v38 = v60;
  v57 = *(v6 + 8);
  v58 = v6 + 8;
  v57(v8, v60);
  v39 = *(v63 + 8);
  v63 += 8;
  v39(v34, v9);

  v40 = v61;
  if ((v61 & 1) != 0 && (*(v36 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode) & 1) == 0)
  {
    v41 = *(v36 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
    if (v41)
    {
      v42 = *(v41 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue);
      v43 = swift_allocObject();
      *(v43 + 16) = sub_24A74F040;
      *(v43 + 24) = v41;
      v69 = sub_24A680674;
      v70 = v43;
      aBlock = MEMORY[0x277D85DD0];
      v66 = 1107296256;
      v67 = sub_24A6805E4;
      v68 = &unk_285DC5878;
      v44 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v42, v44);
      _Block_release(v44);
      LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

      v40 = v61;
      if (v42)
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    *(v36 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingDevices) = 1;
  }

  if (v40 & 3) == 0 || (*(v36 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode) & 1) != 0 || (*(v36 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode))
  {
    goto LABEL_24;
  }

  v45 = *(v36 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
  v46 = *(v45 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_24A74EF84;
  *(v47 + 24) = v45;
  v69 = sub_24A680674;
  v70 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_24A6805E4;
  v68 = &unk_285DC5800;
  v48 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v46, v48);
  _Block_release(v48);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if ((v46 & 1) == 0)
  {
    v49 = *(v36 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
    v50 = sub_24A82D354();
    v51 = v56;
    (*(*(v50 - 8) + 56))(v56, 1, 1, v50);
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v49;

    sub_24A7382F4(0, 0, v51, &unk_24A836DA0, v52);

    *(v36 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingItems) = 1;

    sub_24A6F13CC();

    [*(*(v36 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager) startUpdatingLocation];
    v38 = v60;
LABEL_24:
    v69 = sub_24A74EF2C;
    v70 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_24A699BA0;
    v68 = &unk_285DC57B0;
    v53 = _Block_copy(&aBlock);

    sub_24A82CE24();
    v64 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v54 = v62;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v8, v54, v53);
    _Block_release(v53);
    v39(v54, v9);
    v57(v8, v38);

    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_24A6AB3F8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A6AB480()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = qword_27EF5D920;
  v3 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock(v3 + 6);

  os_unfair_lock_unlock(v3 + 6);

  v4 = sub_24A82CED4();

  v5 = [v1 isValidJSONObject_];

  if (v5)
  {
    v6 = *(v0 + v2);

    os_unfair_lock_lock(v6 + 6);

    os_unfair_lock_unlock(v6 + 6);

    v7 = sub_24A82CED4();

    v14[0] = 0;
    v8 = [v1 dataWithJSONObject:v7 options:0 error:v14];

    v9 = v14[0];
    if (v8)
    {
      v10 = sub_24A82C904();

      return v10;
    }

    v12 = v9;
    v13 = sub_24A82C7F4();

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_24A6AB654()
{
  v1 = *(*v0 + qword_27EF5D928);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t sub_24A6AB71C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v8 = *(a1 + 32);
  sub_24A679170(0, a3, a4);
  sub_24A6AB7EC(a5, a3, a4);
  v9 = sub_24A82D3A4();

  v8(v9);
}

uint64_t sub_24A6AB7EC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A679170(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A6AB848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v33 = a4;
  v7 = sub_24A82CDF4();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24A82CE54();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItemGroup(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24A6ABDFC(a1, sub_24A753FA0, sub_24A74E8A4);
  v15 = v14;
  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
    v16 = sub_24A82D744();
  }

  else
  {
    v16 = *(v14 + 16);
  }

  if (v16)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    result = sub_24A6FCB74(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = a2;
    v32 = a3;
    v18 = 0;
    v19 = aBlock[0];
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C21D180](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      sub_24A707330(v20, v13);
      aBlock[0] = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_24A6FCB74((v21 > 1), v22 + 1, 1);
        v19 = aBlock[0];
      }

      ++v18;
      *(v19 + 16) = v22 + 1;
      sub_24A8127B4(v13, v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, type metadata accessor for FMIPItemGroup);
    }

    while (v16 != v18);

    a2 = v31;
    a3 = v32;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_itemGroups) = v19;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A6ABEBC(v19);
    swift_unknownObjectRelease();
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v23 = sub_24A82CDC4();
  sub_24A6797D0(v23, qword_281518F88);
  v24 = sub_24A82CD94();
  v25 = sub_24A82D504();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24A675000, v24, v25, "FMIPBeaconRefreshingController: beacon groups updated", v26, 2u);
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  aBlock[4] = sub_24A6AC6F0;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCDD90;
  v27 = _Block_copy(aBlock);

  v28 = v34;
  sub_24A82CE24();
  v40 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  v29 = v36;
  v30 = v39;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v28, v29, v27);
  _Block_release(v27);
  (*(v38 + 8))(v29, v30);
  (*(v35 + 8))(v28, v37);

  if (a3)
  {
    return a3(result);
  }

  return result;
}

char *sub_24A6ABDFC(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_24A82D744();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_24A6BAFBC(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_24A6ABEBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);

  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39 = v11;
    v16 = v15;
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v16 = 136315138;
    v17 = type metadata accessor for FMIPItemGroup(0);
    v18 = MEMORY[0x24C21CB60](a1, v17);
    v37 = v13;
    v20 = sub_24A68761C(v18, v19, aBlock);
    v36 = v14;
    v21 = v9;
    v22 = a1;
    v23 = v7;
    v24 = v8;
    v25 = v2;
    v26 = v5;
    v27 = v4;
    v28 = v20;

    *(v16 + 4) = v28;
    v4 = v27;
    v5 = v26;
    v2 = v25;
    v8 = v24;
    v7 = v23;
    a1 = v22;
    v9 = v21;
    v29 = v37;
    _os_log_impl(&dword_24A675000, v37, v36, "FMIPManager: didReceive itemsGroup: %s", v16, 0xCu);
    v30 = v38;
    sub_24A6876E8(v38);
    MEMORY[0x24C21E1D0](v30, -1, -1);
    v31 = v16;
    v11 = v39;
    MEMORY[0x24C21E1D0](v31, -1, -1);
  }

  else
  {
  }

  sub_24A82CDE4();
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = v2;
  aBlock[4] = sub_24A6ACD40;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC63D0;
  v33 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v7, v11, v33);
  _Block_release(v33);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_24A6AC28C()
{
  v1 = v0;
  v2 = sub_24A82CE54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_281518F88);
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: refreshingControllerDidInitialize didInitialize", v13, 2u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  sub_24A82CDE4();
  aBlock[4] = sub_24A6ADC60;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6FD8;
  v14 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v5, v9, v14);
  _Block_release(v14);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_24A6AC554(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A6AC28C();
    result = swift_unknownObjectRelease();
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_24A6AC5C0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = result + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
      sub_24A82D574();
      (*(v4 + 24))(v2, v6, ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_24A6AC6FC(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 0;
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) == 1)
  {
    *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 0;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v1 = sub_24A82CDC4();
    sub_24A6797D0(v1, qword_281518F88);
    v2 = sub_24A82CD94();
    v3 = sub_24A82D504();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24A675000, v2, v3, "FMIPBeaconRefreshingController: Another refresh was queued, running.", v4, 2u);
      MEMORY[0x24C21E1D0](v4, -1, -1);
    }

    sub_24A6A8610(0, 0);
  }
}

uint64_t sub_24A6AC810(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_24A82CDF4();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24A82CE54();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPItemGroup(0) - 8;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v35 - v11);
  MEMORY[0x28223BE20](v10);
  v15 = (&v35 - v14);
  v16 = *(a1 + 16);
  if (v16)
  {
    v41 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = *(v13 + 72);
    v20 = MEMORY[0x277D84F90];
    do
    {
      sub_24A69F134(v18, v12, type metadata accessor for FMIPItemGroup);
      v21 = *(v42 + v41);
      swift_beginAccess();
      v22 = *(v21 + 280);

      FMIPItemGroup.init(itemGroup:items:)(v12, v22, v15);
      sub_24A69F134(v15, v9, type metadata accessor for FMIPItemGroup);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_24A780544(0, v20[2] + 1, 1, v20);
      }

      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        v20 = sub_24A780544((v23 > 1), v24 + 1, 1, v20);
      }

      sub_24A69F2C4(v15, type metadata accessor for FMIPItemGroup);
      v20[2] = v24 + 1;
      sub_24A6A2390(v9, v20 + v17 + v24 * v19, type metadata accessor for FMIPItemGroup);
      v18 += v19;
      --v16;
    }

    while (v16);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v25 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v26 = v42;

  v27 = sub_24A6ACD48(v20);

  if (v27)
  {
    v29 = *(*(v26 + v25) + 288);
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    *(v30 + 24) = v29;
    aBlock[4] = sub_24A752D88;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6420;
    v31 = _Block_copy(aBlock);

    v32 = v35;
    sub_24A82CE24();
    v43 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v33 = v37;
    v34 = v40;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v32, v33, v31);
    _Block_release(v31);
    (*(v39 + 8))(v33, v34);
    (*(v36 + 8))(v32, v38);
  }

  return result;
}

uint64_t sub_24A6ACD48(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPItemGroup(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-v9];
  v11 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v30[-v15];
  v17 = *(v2 + 288);

  v18 = sub_24A6AD12C(a1, v17);

  if ((v18 & 1) == 0)
  {
    v31 = v18;
    *(v2 + 288) = a1;

    v19 = *(v2 + 288);
    v33 = 0;
    v34 = 0;
    v32 = v19;
    swift_bridgeObjectRetain_n();
    swift_beginAccess();
    while (1)
    {
      sub_24A7547C4(v14);
      sub_24A67E8FC(v14, v16, &qword_27EF5E118, &qword_24A837760);
      v20 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
      if ((*(*(v20 - 8) + 48))(v16, 1, v20) == 1)
      {
        break;
      }

      v21 = *v16;
      sub_24A68D628(v16 + *(v20 + 48), v8, type metadata accessor for FMIPItemGroup);
      v22 = *(v2 + 280);

      FMIPItemGroup.init(itemGroup:items:)(v8, v22, v10);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_24A766CC0(v19);
        v19 = result;
        if ((v21 & 0x8000000000000000) != 0)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      if (v21 >= v19[2])
      {
        __break(1u);
        return result;
      }

      sub_24A76F3A8(v10, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, type metadata accessor for FMIPItemGroup);
    }

    *(v2 + 288) = v19;

    if (*(v2 + 24) == 1 && *(v2 + 320))
    {

      sub_24A761CE4(v24, &unk_285DC7468, sub_24A76F27C, &unk_285DC7480);
    }

    swift_beginAccess();

    sub_24A758EF8(v25);
    v27 = v26;

    *(v2 + 80) = v27;

    Strong = swift_unknownObjectWeakLoadStrong();
    LOBYTE(v18) = v31;
    if (Strong)
    {
      v29 = *(v2 + 80);

      sub_24A69C358(v2, v29);

      swift_unknownObjectRelease();
    }
  }

  return (v18 & 1) == 0;
}

uint64_t sub_24A6AD12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemLostModeMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = (&v57 - v9);
  v69 = sub_24A6BBA94(&qword_27EF5DDC0, &unk_24A83A9D0);
  MEMORY[0x28223BE20](v69);
  v70 = &v57 - v10;
  v11 = type metadata accessor for FMIPItem(0);
  v67 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v17 = type metadata accessor for FMIPItemGroup(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v24 = (&v57 - v23);
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    return 0;
  }

  if (!v25 || a1 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v28 = a1 + v27;
  v63 = v4;
  v64 = a2 + v27;
  v61 = (v5 + 48);
  v62 = v21;
  v29 = *(v22 + 72);
  v57 = v7;
  v58 = v29;
  v66 = v25;
  v59 = v28;
  v60 = v20;
  while (1)
  {
    v30 = v29 * v26;
    result = sub_24A68FED4(v28 + v29 * v26, v24, type metadata accessor for FMIPItemGroup);
    if (v26 == v66)
    {
      break;
    }

    v65 = v26;
    sub_24A68FED4(v64 + v30, v20, type metadata accessor for FMIPItemGroup);
    if (*v24 != *v20 || (v24[1] != v20[1] || v24[2] != v20[2]) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_44;
    }

    if ((v24[3] != v20[3] || v24[4] != v20[4]) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_44;
    }

    v32 = v24[5];
    v33 = v20[5];
    v34 = *(v32 + 16);
    if (v34 != *(v33 + 16))
    {
      goto LABEL_44;
    }

    if (v34 && v32 != v33)
    {
      v35 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v36 = v32 + v35;
      v37 = v33 + v35;
      v38 = *(v67 + 72);
      do
      {
        sub_24A68FED4(v36, v16, type metadata accessor for FMIPItem);
        sub_24A68FED4(v37, v14, type metadata accessor for FMIPItem);
        v39 = _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(v16, v14);
        sub_24A692298(v14, type metadata accessor for FMIPItem);
        sub_24A692298(v16, type metadata accessor for FMIPItem);
        if (!v39)
        {
          goto LABEL_44;
        }

        v37 += v38;
        v36 += v38;
      }

      while (--v34);
    }

    if (v24[8] != v20[8])
    {
      goto LABEL_44;
    }

    sub_24A7B3D74(v24[7], v20[7]);
    if ((v40 & 1) == 0)
    {
      goto LABEL_44;
    }

    v41 = *(v62 + 48);
    v42 = v70;
    v43 = *(v69 + 48);
    sub_24A67E964(v24 + v41, v70, &unk_27EF5E100, &unk_24A839DB0);
    sub_24A67E964(v20 + v41, v42 + v43, &unk_27EF5E100, &unk_24A839DB0);
    v44 = *v61;
    v45 = v63;
    if ((*v61)(v42, 1, v63) == 1)
    {
      v46 = v44(v42 + v43, 1, v45);
      v20 = v60;
      if (v46 != 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v47 = v68;
      sub_24A67E964(v42, v68, &unk_27EF5E100, &unk_24A839DB0);
      v48 = v44(v42 + v43, 1, v45);
      v49 = v57;
      if (v48 == 1)
      {
        sub_24A692298(v47, type metadata accessor for FMIPItemLostModeMetadata);
        v20 = v60;
LABEL_42:
        v55 = &qword_27EF5DDC0;
        v56 = &unk_24A83A9D0;
        goto LABEL_43;
      }

      sub_24A7E11A4(v42 + v43, v57, type metadata accessor for FMIPItemLostModeMetadata);
      v20 = v60;
      if ((*v47 != *v49 || v47[1] != v49[1]) && (sub_24A82DC04() & 1) == 0 || (v47[2] != v49[2] || v47[3] != v49[3]) && (sub_24A82DC04() & 1) == 0 || (sub_24A82C9E4() & 1) == 0)
      {
        sub_24A692298(v49, type metadata accessor for FMIPItemLostModeMetadata);
        sub_24A692298(v47, type metadata accessor for FMIPItemLostModeMetadata);
        v55 = &unk_27EF5E100;
        v56 = &unk_24A839DB0;
LABEL_43:
        sub_24A67F378(v42, v55, v56);
LABEL_44:
        sub_24A692298(v20, type metadata accessor for FMIPItemGroup);
        sub_24A692298(v24, type metadata accessor for FMIPItemGroup);
        return 0;
      }

      v50 = *(v45 + 28);
      v51 = *(v47 + v50);
      v52 = *(v47 + v50 + 8);
      v53 = (v49 + v50);
      if (v51 != *v53 || v52 != v53[1])
      {
        v54 = sub_24A82DC04();
        sub_24A692298(v49, type metadata accessor for FMIPItemLostModeMetadata);
        sub_24A692298(v68, type metadata accessor for FMIPItemLostModeMetadata);
        sub_24A67F378(v42, &unk_27EF5E100, &unk_24A839DB0);
        sub_24A692298(v20, type metadata accessor for FMIPItemGroup);
        sub_24A692298(v24, type metadata accessor for FMIPItemGroup);
        if ((v54 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_37;
      }

      sub_24A692298(v49, type metadata accessor for FMIPItemLostModeMetadata);
      sub_24A692298(v68, type metadata accessor for FMIPItemLostModeMetadata);
    }

    sub_24A67F378(v42, &unk_27EF5E100, &unk_24A839DB0);
    sub_24A692298(v20, type metadata accessor for FMIPItemGroup);
    sub_24A692298(v24, type metadata accessor for FMIPItemGroup);
LABEL_37:
    v26 = v65 + 1;
    result = 1;
    v29 = v58;
    v28 = v59;
    if (v65 + 1 == v66)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A6AD900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems))
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v13 = sub_24A82CDC4();
    sub_24A6797D0(v13, qword_281518F88);
    v14 = sub_24A82CD94();
    v15 = sub_24A82D504();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = v9;
      v17 = v8;
      v18 = v5;
      v19 = v4;
      v20 = a1;
      v21 = v16;
      *v16 = 0;
      _os_log_impl(&dword_24A675000, v14, v15, "FMIPManager: didReceive offline finding device states.", v16, 2u);
      v22 = v21;
      a1 = v20;
      v4 = v19;
      v5 = v18;
      v8 = v17;
      v9 = v26;
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    sub_24A82CDE4();
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = v2;
    aBlock[4] = sub_24A752D80;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6358;
    v24 = _Block_copy(aBlock);

    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v7, v12, v24);
    _Block_release(v24);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_24A6ADC68(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = v3 | 2;
  v5 = v3;
  return sub_24A6ADCC4(&v5);
}

uint64_t sub_24A6ADCC4(uint64_t *a1)
{
  v3 = sub_24A82CDF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  result = swift_beginAccess();
  v14 = *(v1 + v12);
  if (v11 != v14)
  {
    v15 = *(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
    if (v15 == 1)
    {
      if ((~v14 & 3) != 0)
      {
        return result;
      }
    }

    else if ((v15 & ~v14) != 0)
    {
      return result;
    }

    v17[1] = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    aBlock[4] = sub_24A752D98;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC65B0;
    v17[0] = _Block_copy(aBlock);

    sub_24A82CE24();
    v17[2] = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    v16 = v17[0];
    MEMORY[0x24C21CE90](0, v10, v6, v17[0]);
    _Block_release(v16);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_24A6AE004(uint64_t a1)
{
  sub_24A82CAA4();
  if (v1 <= 0x3F)
  {
    sub_24A82CA34();
    if (v2 <= 0x3F)
    {
      sub_24A6790B0(319);
      if (v3 <= 0x3F)
      {
        sub_24A6A22D8(319, &qword_27EF5CD10, MEMORY[0x277D83E88], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24A6AE108(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_24A6BBA94(a1, a2);
  sub_24A82D574();
  return v4;
}

uint64_t sub_24A6AE190@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  swift_beginAccess();
  *a1 = *(v3 + 280);
}

uint64_t type metadata accessor for FMIPDiscoveredAccessory(uint64_t a1)
{
  result = qword_27EF5DDD8;
  if (!qword_27EF5DDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A6AE250(uint64_t a1)
{
  sub_24A679170(319, &qword_27EF5DDE8, 0x277D49668);
  if (v1 <= 0x3F)
  {
    sub_24A6AE2FC();
    if (v2 <= 0x3F)
    {
      sub_24A678728(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24A6AE2FC()
{
  if (!qword_27EF5DDF0)
  {
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5DDF0);
    }
  }
}

uint64_t FMIPNotificationAuthLaunchEvent.init(findMyNotificationAuthStatus:utAlertAuthStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void _s8FMIPCore13FMIPAnalyticsV31sendNotificationAuthLaunchEvent5eventyAA016FMIPNotificationefG0V_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v4, 0xD00000000000001CLL, 0x800000024A844E80, isUniquelyReferenced_nonNull_native);
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v6, 0xD000000000000011, 0x800000024A844EA0, v7);
  v8 = sub_24A82CF94();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v11[4] = sub_24A6AEBB4;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A6AEADC;
  v11[3] = &unk_285DC24D8;
  v10 = _Block_copy(v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

uint64_t sub_24A6AE528()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24A6AE58C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E738, &qword_24A838D50);
    v3 = sub_24A82D974();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24A6A2D48(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_24A6AE6A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_24A6A2D48(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_24A6AE840(v20, a4 & 1, a5, a6);
      v15 = sub_24A6A2D48(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_24A82DC44();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_24A78669C(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

uint64_t sub_24A6AE840(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_24A6BBA94(a3, a4);
  v37 = v6;
  result = sub_24A82D964();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

id sub_24A6AEADC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_24A6AEB68();
    v4 = sub_24A82CED4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_24A6AEB68()
{
  result = qword_281512B68;
  if (!qword_281512B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281512B68);
  }

  return result;
}

uint64_t sub_24A6AEBBC(uint64_t (*a1)(void, void, void, void, __n128), __n128 a2)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 32);
  if (*(v2 + 34))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  a2.n128_u64[0] = *(v2 + 48);
  return a1(*(v2 + 16), *(v2 + 24), v4 | v5 | (*(v2 + 35) << 24), *(v2 + 40), a2);
}

void sub_24A6AEC8C(int a1)
{
  v2 = v1;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          if (qword_281515DC8 != -1)
          {
            swift_once();
          }

          v3 = sub_24A82CDC4();
          sub_24A6797D0(v3, qword_281518F88);
          v4 = sub_24A82CD94();
          v5 = sub_24A82D504();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_29;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "FMIPLocationController: location manager didChangeAuthorization: DENIED";
          goto LABEL_23;
        }

LABEL_24:
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v14 = sub_24A82CDC4();
        sub_24A6797D0(v14, qword_281518F88);
        v15 = sub_24A82D4E4();
        v4 = sub_24A82CD94();
        if (!os_log_type_enabled(v4, v15))
        {
          goto LABEL_29;
        }

        v6 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v24 = v16;
        *v6 = 136315138;
        type metadata accessor for CLAuthorizationStatus(0);
        v17 = sub_24A82D024();
        v19 = sub_24A68761C(v17, v18, &v24);

        *(v6 + 4) = v19;
        _os_log_impl(&dword_24A675000, v4, v15, "FMIPLocationController: location manager didChangeAuthorization: UNKNOWN - %s", v6, 0xCu);
        sub_24A6876E8(v16);
        MEMORY[0x24C21E1D0](v16, -1, -1);
        goto LABEL_28;
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v13 = sub_24A82CDC4();
      sub_24A6797D0(v13, qword_281518F88);
      v4 = sub_24A82CD94();
      v5 = sub_24A82D504();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_29;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "FMIPLocationController: location manager didChangeAuthorization: RESTRICTED";
    }

    else
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v12 = sub_24A82CDC4();
      sub_24A6797D0(v12, qword_281518F88);
      v4 = sub_24A82CD94();
      v5 = sub_24A82D504();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_29;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "FMIPLocationController: location manager didChangeAuthorization: NOT DETERMINED";
    }

LABEL_23:
    _os_log_impl(&dword_24A675000, v4, v5, v7, v6, 2u);
LABEL_28:
    MEMORY[0x24C21E1D0](v6, -1, -1);
LABEL_29:

    goto LABEL_30;
  }

  if ((a1 - 3) > 1)
  {
    goto LABEL_24;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPLocationController: location manager didChangeAuthorization: AUTHORIZED", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  [*(v2 + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager) startUpdatingLocation];
LABEL_30:
  v20 = [*(v2 + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager) accuracyAuthorization] != 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision) = v20;
  v21 = objc_opt_self();
  v22 = sub_24A82CF94();
  v23 = sub_24A82CF94();
  [v21 setBool:v20 forKey:v22 inDomain:v23];
}

uint64_t sub_24A6AF144(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, double a5)
{
  if ((*(result + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision) & 1) == 0 && *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_useRealtimeForItems) == 1)
  {
    v6 = HIBYTE(a3);
    v7 = a3 & 1;
    v17 = a3 & 0x101;
    v8 = (a3 >> 8) & 1;
    v9 = HIWORD(a3) & 1;
    v18 = BYTE2(a3) & 1;
    v19 = HIBYTE(a3);
    v20 = a4;
    v21 = a5;
    v10 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
    v11 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
    swift_beginAccess();
    v14 = *(v11 + 280);

    sub_24A74ACCC(&v17, v14, "FMIPManager: appending realtime location %{private}s", &unk_285DC6188, sub_24A7525C8, &unk_285DC61A0);

    LOBYTE(v17) = v7;
    HIBYTE(v17) = v8;
    v18 = v9;
    v19 = v6;
    v20 = a4;
    v21 = a5;
    v15 = *(a2 + v10);
    swift_beginAccess();
    v16 = *(v15 + 80);

    sub_24A74ACCC(&v17, v16, "FMIPManager: appending realtime location to devices %{private}s", &unk_285DC6728, sub_24A752DF8, &unk_285DC6740);
  }

  return result;
}

void sub_24A6AF364(unint64_t a1)
{
  v3 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);

  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();

  v8 = a1 >> 62;
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_14;
  }

  v44 = v1;
  v3 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v46 = v2;
  *v3 = 136315138;
  if (!v8)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:
    v12 = 0;
    v14 = 0;
    goto LABEL_13;
  }

  if (!sub_24A82D744())
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(a1 + 32); ; i = MEMORY[0x24C21D180](0, a1))
    {
      v10 = i;
      v11 = [i debugDescription];

      v12 = sub_24A82CFC4();
      v14 = v13;

LABEL_13:
      v47 = v12;
      v48 = v14;
      sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
      v15 = sub_24A82D024();
      v17 = sub_24A68761C(v15, v16, &v46);

      *(v3 + 4) = v17;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPLocationController: location manager didUpdateLocations: %s", v3, 0xCu);
      sub_24A6876E8(v2);
      MEMORY[0x24C21E1D0](v2, -1, -1);
      MEMORY[0x24C21E1D0](v3, -1, -1);

      v3 = v44;
LABEL_14:
      if (v8)
      {
        if (!sub_24A82D744())
        {
          return;
        }
      }

      else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(a1 + 32);
        goto LABEL_19;
      }

      __break(1u);
LABEL_31:
      ;
    }

    v18 = MEMORY[0x24C21D180](0, a1);
LABEL_19:
    v19 = v18;
    v50 = &type metadata for KoreaFeatureFlag;
    v51 = sub_24A6AF8B0();
    v20 = sub_24A82C4D4();
    sub_24A6876E8(&v47);
    if (v20 & 1) == 0 && ([v19 coordinate], v22 = v21, objc_msgSend(v19, sel_coordinate), v24 = v23, (v25 = sub_24A7C7910()) != 0) && (v26 = v25, v27 = objc_msgSend(v25, sel_containsCoordinate_, v22, v24), v26, (v27))
    {
      v28 = sub_24A82CD94();
      v29 = sub_24A82D504();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_24A675000, v28, v29, "FMIPLocationController: not updating location because it's in a denylist region", v30, 2u);
        MEMORY[0x24C21E1D0](v30, -1, -1);
      }
    }

    else
    {
      LOBYTE(v46) = 6;
      v45 = v19;
      FMIPLocation.init(location:type:)(v45, &v46, &v47);
      v31 = v47;
      v32 = BYTE1(v47);
      v33 = BYTE2(v47);
      v34 = BYTE3(v47);
      v35 = v48;
      v36 = v49;
      sub_24A6BBA94(&qword_27EF5DA08, &unk_24A83D030);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24A8327A0;
      v38 = v3;
      strcpy((inited + 32), "localLocation");
      *(inited + 46) = -4864;
      *(inited + 48) = v31;
      *(inited + 49) = v32;
      *(inited + 50) = v33;
      *(inited + 51) = v34;
      *(inited + 56) = v35;
      *(inited + 64) = v36;
      v39 = v35;
      v40 = sub_24A6B0C84(inited);
      swift_setDeallocating();
      sub_24A67F378(inited + 32, &qword_27EF5EF70, &unk_24A835290);
      v41 = swift_allocObject();
      *(v41 + 16) = v31;
      *(v41 + 17) = v32;
      *(v41 + 18) = v33;
      *(v41 + 19) = v34;
      *(v41 + 24) = v39;
      *(v41 + 32) = v36;
      *(v41 + 40) = v3;
      v42 = v39;
      v43 = v38;
      sub_24A6B0DD8(v40, sub_24A7C7B4C, v41);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A6AF840()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6AF880()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_24A6AF8B0()
{
  result = qword_27EF5EF60;
  if (!qword_27EF5EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EF60);
  }

  return result;
}

uint64_t sub_24A6AF918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A82CDF4();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE54();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);

  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    swift_beginAccess();
    *(v16 + 4) = *(*(a1 + 16) + 16);

    _os_log_impl(&dword_24A675000, v14, v15, "FMIPManager: unknownItems updating model with unknownItems %ld", v16, 0xCu);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  else
  {
  }

  v17 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = *(v17 + 296);

  v20 = sub_24A7D98C0(v18, v19);

  if (v20)
  {

    sub_24A6A7314(a3, a4);
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = a3 == 0;
      sub_24A6AFFE8(a3, a4);
      _os_log_impl(&dword_24A675000, v21, v22, "FMIPManager: no refresh required, calling completion if needed isCompletionBlockNil %{BOOL}d", v23, 8u);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }

    else
    {
      sub_24A6AFFE8(a3, a4);
    }

    sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
    v29 = sub_24A82D564();
    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    v44 = sub_24A6AF880;
    v45 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_24A699BA0;
    v43 = &unk_285DC6BA0;
    v31 = _Block_copy(&aBlock);
    sub_24A6A7314(a3, a4);

    sub_24A82CE24();
    aBlock = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v32 = v34;
    v33 = v38;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v12, v32, v31);
    _Block_release(v31);

    (*(v37 + 8))(v32, v33);
    return (*(v35 + 8))(v12, v36);
  }

  else
  {
    *(v17 + 296) = v18;

    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = a1;
    v24[4] = a3;
    v24[5] = a4;
    v44 = sub_24A753B44;
    v45 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_24A699BA0;
    v43 = &unk_285DC6B50;
    v25 = _Block_copy(&aBlock);

    sub_24A6A7314(a3, a4);
    sub_24A82CE24();
    v39 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v26 = v34;
    v27 = v38;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v12, v26, v25);
    _Block_release(v25);
    (*(v37 + 8))(v26, v27);
    (*(v35 + 8))(v12, v36);
  }
}

uint64_t sub_24A6AFFE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A6B0010()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A6B0074(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = objc_opt_self();
  v11 = a1;
  v12 = a3;
  v13 = a5;
  v14 = [v10 defaultCenter];
  [v14 postNotificationName:*a6 object:0];
}

void FMIPLocation.init(location:type:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = [a1 timestamp];
  sub_24A82C9F4();

  sub_24A82C9C4();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = [a1 floor];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 level];

    v17 = v16;
  }

  else
  {
    v17 = -1.0;
  }

  v36 = v13 < -3600.0;
  v35 = 0;
  v34 = 1;
  if (qword_27EF5CBF8 != -1)
  {
    swift_once();
  }

  v18 = qword_27EF5E7B8;
  if (qword_27EF5E7B8)
  {
    v19 = qword_27EF5E7B8;
  }

  else
  {
    v19 = a1;
    v18 = 0;
  }

  LOBYTE(v33[0]) = v13 < -3600.0;
  *(v33 + 1) = 256;
  BYTE3(v33[0]) = v10;
  v33[1] = v19;
  *&v33[2] = v17;
  v20 = v18;
  v21 = FMIPLocation.debugDescription.getter();
  v23 = v22;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v24 = sub_24A82CDC4();
  sub_24A6797D0(v24, qword_281518F88);

  v25 = sub_24A82CD94();
  v26 = sub_24A82D4C4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v27 = 136380675;
    v29 = sub_24A68761C(v21, v23, v33);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_24A675000, v25, v26, "FMIPLocation: initialized %{private}s", v27, 0xCu);
    sub_24A6876E8(v28);
    MEMORY[0x24C21E1D0](v28, -1, -1);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  else
  {
  }

  v30 = v35;
  v31 = v34;
  *a3 = v36;
  *(a3 + 1) = v30;
  *(a3 + 2) = v31;
  *(a3 + 3) = v10;
  *(a3 + 8) = v19;
  *(a3 + 16) = v17;
}

uint64_t sub_24A6B047C()
{
  result = sub_24A6B04F8();
  qword_27EF5E7B8 = result;
  return result;
}

uint64_t sub_24A6B04B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_24A6B04F8()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (v3)
  {
    v4 = sub_24A82CFC4();
    v6 = v5;

    v25[0] = 44;
    v25[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v7);
    v23[2] = v25;
    result = sub_24A78DC78(0x7FFFFFFFFFFFFFFFLL, 1, sub_24A76EDBC, v23, v4, v6, &v24);
    v9 = result;
    v24 = 0;
    v10 = 0;
    v11 = *(result + 16);
    v12 = result + 56;
    v13 = MEMORY[0x277D84F90];
LABEL_3:
    v14 = v12 + 32 * v10;
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      ++v10;
      v15 = v14 + 32;

      result = sub_24A82D384();
      v14 = v15;
      if ((v16 & 1) == 0)
      {
        v17 = result;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24A77FF68(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_24A77FF68((v18 > 1), v19 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v19 + 1;
        *(v13 + 8 * v19 + 32) = v17;
        goto LABEL_3;
      }
    }

    if (*(v13 + 16) == 2)
    {
      v20 = *(v13 + 32);
      v21 = *(v13 + 40);

      v22 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      return [v22 initWithLatitude:v20 longitude:{v21, v24}];
    }
  }

  return 0;
}

void sub_24A6B0770()
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A82CDC4();
  sub_24A6797D0(v0, qword_281518F88);
  v1 = sub_24A82CD94();
  v2 = sub_24A82D504();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24A675000, v1, v2, "FMIPBeaconRefreshingController: Beacons changed notification received", v3, 2u);
    MEMORY[0x24C21E1D0](v3, -1, -1);
  }

  sub_24A6A7D7C(0, 0);
}

uint64_t FMIPLocation.debugDescription.getter()
{
  v1 = sub_24A82CA34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v3) = v0[1];
  v21 = *v0;
  v22 = v3;
  v23 = v0[3];
  v5 = *(v0 + 1);
  v25 = 0;
  v26 = 0xE000000000000000;
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x61636F4C50494D46, 0xEC0000006E6F6974);
  MEMORY[0x24C21C9E0](0x203A74616C203ALL, 0xE700000000000000);
  [v5 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](8236, 0xE200000000000000);
  v7 = v25;
  v6 = v26;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](980316012, 0xE400000000000000);
  [v5 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x727563634168202CLL, 0xEC0000003A796361);
  [v5 horizontalAccuracy];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x3A65746164202CLL, 0xE700000000000000);
  v8 = [v5 timestamp];
  sub_24A82C9F4();

  sub_24A6B0C2C();
  v9 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v9);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x24C21C9E0](8236, 0xE200000000000000);
  v10 = v25;
  v11 = v26;
  v25 = v7;
  v26 = v6;

  MEMORY[0x24C21C9E0](v10, v11);

  v13 = v25;
  v12 = v26;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0x3A646C4F7369, 0xE600000000000000);
  if (v21)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v21)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v14, v15);

  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A847A10);
  if (v22)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v22)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v16, v17);

  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A847A30);
  v24 = v23;
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  v18 = v25;
  v19 = v26;
  v25 = v13;
  v26 = v12;

  MEMORY[0x24C21C9E0](v18, v19);

  return v25;
}

unint64_t sub_24A6B0C2C()
{
  result = qword_27EF5E7C0;
  if (!qword_27EF5E7C0)
  {
    sub_24A82CA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E7C0);
  }

  return result;
}

unint64_t sub_24A6B0C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5DF38, &qword_24A837158);
    v3 = sub_24A82D974();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 15);
      v9 = *(i - 14);
      v10 = *(i - 13);
      v11 = *(i - 1);
      v12 = *i;

      v13 = v11;
      result = sub_24A6A2D48(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = v3[7] + 24 * result;
      *v17 = v7;
      *(v17 + 1) = v8;
      *(v17 + 2) = v9;
      *(v17 + 3) = v10;
      *(v17 + 8) = v13;
      *(v17 + 16) = v12;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
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

uint64_t sub_24A6B0DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = __clz(__rbit64(v8)) | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 24 * v13 + 8);
        type metadata accessor for FMLocationShiftingRequest();
        v18 = swift_allocObject();
        v18[2] = v17;
        v18[3] = v16;
        v18[4] = v15;

        MEMORY[0x24C21CB10](v17);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A82D274();
        }

        v8 &= v8 - 1;
        result = sub_24A82D2C4();
        v4 = v22;
      }

      while (v8);
    }
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;

  sub_24A6B0FEC(v4, sub_24A71CCC4, v19);
}

uint64_t sub_24A6B0FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A82CE54();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 24);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v4;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_24A71B38C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC41E8;
  v16 = _Block_copy(aBlock);

  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A695668(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_24A6B12C8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B1310()
{
  sub_24A6B1D48(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

id sub_24A6B1370()
{
  v1 = *v0;
  v2 = sub_24A82C8B4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - v8;
  (*(v1 + 160))(v7);
  v10 = *(v1 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v10, AssociatedConformanceWitness);
  sub_24A82C864();

  v12 = *(v3 + 8);
  v12(v6, v2);
  v13 = [objc_opt_self() defaultManager];
  sub_24A82C894();
  v14 = sub_24A82CF94();

  v15 = [v13 fileExistsAtPath_];

  v12(v9, v2);
  return v15;
}

uint64_t sub_24A6B1558(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v5)
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v8 = a2;
      }

      sub_24A6B231C(v8, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v9 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v7 = sub_24A679170(0, a3, a4);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v29 = v15;
        v17 = a1;
        if (!v13)
        {
LABEL_24:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              goto LABEL_36;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v30 = (v20 - 1) & v20;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v7, v6);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v30 = (v13 - 1) & v13;
LABEL_29:
          v21 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v22 = sub_24A82D5D4();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          while (1)
          {
            v26 = *(*(a2 + 48) + 8 * v24);
            v27 = sub_24A82D5E4();

            if (v27)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v15 = v29;
          v13 = v30;
          v17 = a1;
          if (!v30)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v9 = 0;
    }

    return v9 & 1;
  }

  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v5)
  {
    sub_24A6B231C(v6, a2);
    return v9 & 1;
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](v7, v6);
}

uint64_t FMIPDeviceImageCacheRequest.fileName.getter()
{
  v1 = sub_24A82C604();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = *(v0 + 48);
  v50 = *(v0 + 49);
  v51 = v11;
  v12 = v0[7];
  v56 = 0;
  v57 = 0xE000000000000000;
  v54 = v5;
  v55 = v6;

  sub_24A82C5A4();
  v53 = sub_24A6B2490();
  v13 = sub_24A82D684();
  v15 = v14;
  v17 = *(v2 + 8);
  v16 = v2 + 8;
  v52 = v17;
  v17(v4, v1);

  if (v15)
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v18 = swift_allocObject();
    v49 = v16;
    v19 = v18;
    *(v18 + 16) = xmmword_24A8327A0;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_24A6B243C();
    *(v19 + 32) = v13;
    *(v19 + 40) = v15;
    v20 = sub_24A82CFF4();
    MEMORY[0x24C21C9E0](v20);
  }

  v54 = v8;
  v55 = v7;

  sub_24A82C5A4();
  v21 = MEMORY[0x277D837D0];
  v22 = sub_24A82D684();
  v24 = v23;
  v52(v4, v1);

  if (v24)
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24A8327A0;
    *(v25 + 56) = v21;
    *(v25 + 64) = sub_24A6B243C();
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    v26 = sub_24A82CFF4();
    MEMORY[0x24C21C9E0](v26);
  }

  if (v10)
  {
    v54 = v9;
    v55 = v10;

    sub_24A82C5A4();
    v27 = MEMORY[0x277D837D0];
    v28 = sub_24A82D684();
    v30 = v29;
    v52(v4, v1);

    if (v30)
    {
      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_24A8327A0;
      *(v31 + 56) = v27;
      *(v31 + 64) = sub_24A6B243C();
      *(v31 + 32) = v28;
      *(v31 + 40) = v30;
      v32 = sub_24A82CFF4();
      MEMORY[0x24C21C9E0](v32);
    }
  }

  MEMORY[0x24C21C9E0](45, 0xE100000000000000);
  if (v50 <= 3)
  {
    v40 = 0x656E696C6E6FLL;
    v41 = 0xE600000000000000;
    v42 = 0x64656B636F6CLL;
    v43 = 0xE700000000000000;
    if (v50 != 2)
    {
      v42 = 0x6475427466656CLL;
      v41 = 0xE700000000000000;
    }

    if (v50)
    {
      v40 = 0x656E696C66666FLL;
    }

    else
    {
      v43 = 0xE600000000000000;
    }

    if (v50 <= 1)
    {
      v38 = v40;
    }

    else
    {
      v38 = v42;
    }

    if (v50 <= 1)
    {
      v39 = v43;
    }

    else
    {
      v39 = v41;
    }
  }

  else
  {
    v33 = 0x4364694C65736163;
    v34 = 0x800000024A8444A0;
    if (v50 == 7)
    {
      v35 = 0xD000000000000015;
    }

    else
    {
      v35 = 0xD000000000000016;
    }

    if (v50 != 7)
    {
      v34 = 0x800000024A8444C0;
    }

    if (v50 == 6)
    {
      v34 = 0xED00006465736F6CLL;
    }

    else
    {
      v33 = v35;
    }

    v36 = 0xD00000000000001ALL;
    if (v50 == 4)
    {
      v36 = 0x6475427468676972;
      v37 = 0xE800000000000000;
    }

    else
    {
      v37 = 0x800000024A844470;
    }

    if (v50 <= 5)
    {
      v38 = v36;
    }

    else
    {
      v38 = v33;
    }

    if (v50 <= 5)
    {
      v39 = v37;
    }

    else
    {
      v39 = v34;
    }
  }

  v54 = v38;
  v55 = v39;

  MEMORY[0x24C21C9E0](45, 0xE100000000000000);

  MEMORY[0x24C21C9E0](v54, v55);

  if (v51)
  {
    v44 = 0x786F626F666E69;
  }

  else
  {
    v44 = 0x696C656372756F73;
  }

  if (v51)
  {
    v45 = 0xE700000000000000;
  }

  else
  {
    v45 = 0xEA00000000007473;
  }

  MEMORY[0x24C21C9E0](v44, v45);

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_24A8327A0;
  *(v46 + 56) = MEMORY[0x277D85048];
  *(v46 + 64) = sub_24A6B22C8();
  *(v46 + 32) = v12;
  v47 = sub_24A82CFF4();
  MEMORY[0x24C21C9E0](v47);

  MEMORY[0x24C21C9E0](1735290926, 0xE400000000000000);
  return v56;
}

uint64_t sub_24A6B1D48(uint64_t a1)
{

  v4 = sub_24A6B17A8(v3, a1);

  if ((v4 & 1) == 0)
  {
    *(v1 + 128) = a1;

    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    v6 = sub_24A82CDC4();
    sub_24A6797D0(v6, qword_281518D70);

    v7 = sub_24A82CD94();
    v8 = sub_24A82D504();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
      sub_24A6AB7EC(&unk_27EF5CF18, &qword_27EF5CF10, 0x277D49640);
      v11 = sub_24A82D3B4();
      v13 = sub_24A68761C(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_24A675000, v7, v8, "FMIPBeaconSharingController: Did receive shares update: %s", v9, 0xCu);
      sub_24A6876E8(v10);
      MEMORY[0x24C21E1D0](v10, -1, -1);
      MEMORY[0x24C21E1D0](v9, -1, -1);
    }

    return sub_24A6BE3F8();
  }

  return result;
}

uint64_t sub_24A6B1F60()
{
  v0 = sub_24A82C8B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6B24E4();
  sub_24A82C854();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24A6B2050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A69BD40;

  return sub_24A6B241C(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6B2110(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_24A82D354();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v9 = sub_24A6C84B4(&qword_27EF5CF48, v8, type metadata accessor for FMIPBeaconSharingController, &unk_24A830AC8);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v9;
  v10[4] = a2;
  v10[5] = a1;
  swift_retain_n();

  sub_24A7382F4(0, 0, v6, &unk_24A830E08, v10);
}

unint64_t sub_24A6B22C8()
{
  result = qword_27EF5F9B8;
  if (!qword_27EF5F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9B8);
  }

  return result;
}

void sub_24A6B231C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_24A82D744())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_24A82D794();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A6B241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A6B1310, a4, 0);
}

unint64_t sub_24A6B243C()
{
  result = qword_27EF5D4C0;
  if (!qword_27EF5D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4C0);
  }

  return result;
}

unint64_t sub_24A6B2490()
{
  result = qword_27EF5F5D8;
  if (!qword_27EF5F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F5D8);
  }

  return result;
}

uint64_t sub_24A6B24E4()
{
  if (qword_281513588 != -1)
  {
    swift_once();
  }

  MEMORY[0x24C21C9E0](0x7365686361432FLL, 0xE700000000000000);

  MEMORY[0x24C21C9E0](0xD00000000000001DLL, 0x800000024A847760);

  sub_24A82C824();
}

__n128 sub_24A6B25D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A6B25E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A6B2634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24A6B2690@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A82CFC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_24A6B2754@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24A6B2764(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_24A82CA34();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24A6B28E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24A82CAA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_24A82CA34();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24A6B2A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    LODWORD(v10) = ((v10 >> 57) >> 5) | (4 * ((v10 >> 57) & 0x18 | v10 & 7));
    v11 = v10 ^ 0x7F;
    v12 = 128 - v10;
    if (v11 >= 0x7D)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_24A6B2B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A82CAA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
    *(a1 + *(a4 + 24)) = (v11 | (v11 << 57)) & 0xF000000000000007;
  }

  return result;
}

uint64_t sub_24A6B2CF4()
{
  sub_24A6BB5A4(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B2D64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B2D9C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B2E78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B2EE4()
{
  v1 = sub_24A82C8B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24A6B2F80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B2FC8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B3040()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A6B30A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B30D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A6B3144()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B31B8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B3208()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B3250()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A6B334C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B3384()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A6B3460()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_24A6B34D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B3578()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B35B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B35FC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B363C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B3678(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6B3734(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B37E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24A6B38AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B39A0()
{

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_24A6B39E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B3A24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_24A6B3A70(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_24A6B3AD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B3B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6B3BD8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24A6B3C68(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24A6B3D24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B3DE4()
{

  sub_24A6876E8((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24A6B3E2C()
{
  swift_unknownObjectRelease();

  sub_24A6876E8((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A6B3E7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B3EB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B3EEC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B3F44()
{
  v1 = sub_24A6BBA94(&qword_27EF5DE18, &unk_24A8365C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A6B3FE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B4018()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B4078()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B40F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B412C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B4180()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24A6B4350(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24A82C8B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
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

  else
  {
    v14 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[11];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24A6B44EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24A82C8B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24A6B467C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B46C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B46FC()
{
  v1 = *(sub_24A6BBA94(&qword_27EF5DEB0, &qword_24A836C30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for FMIPURLInfo(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v15 = v4;
    v7 = sub_24A82C8B4();
    v8 = *(v7 - 8);
    v9 = *(v8 + 8);
    v9(v0 + v3, v7);

    v10 = *(v6 + 32);
    if (!(*(v8 + 48))(v5 + v10, 1, v7))
    {
      v9(v5 + v10, v7);
    }

    v11 = *(v6 + 44);
    v12 = sub_24A82CAA4();
    v13 = *(v12 - 8);
    v4 = v15;
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A6B49CC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B4A14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B4A5C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B4AA4()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_24A6B4B2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B4B80(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A6B4BE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  swift_beginAccess();
  return sub_24A67E964(v3 + v4, a2, &qword_27EF5DF08, &qword_24A837770);
}

uint64_t sub_24A6B4C54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24A6B4CB0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6B4CF8()
{
  v1 = type metadata accessor for FMIPItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  if (*(v0 + v3 + 176))
  {
  }

  v6 = v5 + v1[13];
  v7 = type metadata accessor for FMIPItemLostModeMetadata(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = *(v7 + 24);
    v9 = sub_24A82CA34();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  if (*(v5 + v1[16] + 8))
  {
  }

  v10 = v5 + v1[24];
  type metadata accessor for FMIPProductType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v12 = type metadata accessor for FMIPHawkeyeProductInformation(0);
    if (!(*(*(v12 - 1) + 48))(v10, 1, v12))
    {

      v13 = v12[12];
      v14 = sub_24A82C8B4();
      v15 = *(*(v14 - 8) + 8);
      v15(v10 + v13, v14);
      v15(v10 + v12[13], v14);
      v15(v10 + v12[14], v14);
      v15(v10 + v12[15], v14);
      v15(v10 + v12[16], v14);
      v15(v10 + v12[17], v14);
    }
  }

  else if (EnumCaseMultiPayload == 1 || !EnumCaseMultiPayload && *(v10 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A6B511C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A6B5198()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B51D0()
{
  v1 = type metadata accessor for FMIPUnknownItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_24A82CAA4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v0 + v3 + v1[9];
  type metadata accessor for FMIPProductType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for FMIPHawkeyeProductInformation(0);
    if (!(*(*(v9 - 1) + 48))(v7, 1, v9))
    {

      v10 = v9[12];
      v11 = sub_24A82C8B4();
      v33 = v2;
      v12 = *(*(v11 - 8) + 8);
      v12(v7 + v10, v11);
      v12(v7 + v9[13], v11);
      v12(v7 + v9[14], v11);
      v12(v7 + v9[15], v11);
      v12(v7 + v9[16], v11);
      v12(v7 + v9[17], v11);
      v2 = v33;
    }
  }

  else if (EnumCaseMultiPayload == 1 || !EnumCaseMultiPayload && *(v7 + 24))
  {
  }

  v13 = v5 + v1[11];
  v14 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v35 = v4;

    v15 = v13 + *(v14 + 24);
    v16 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
    v17 = *(*(v16 - 8) + 48);
    if (!v17(v15, 1, v16))
    {

      v30 = *(v16 + 32);
      v32 = sub_24A82C8B4();
      v28 = *(v32 - 8);
      v29 = *(v28 + 48);
      if (!v29(v15 + v30, 1))
      {
        (*(v28 + 8))(v15 + v30, v32);
      }

      v31 = *(v16 + 36);
      if (!(v29)(v15 + v31, 1, v32))
      {
        (*(v28 + 8))(v15 + v31, v32);
      }
    }

    v18 = v13 + *(v14 + 28);
    v19 = v17(v18, 1, v16);
    v4 = v35;
    if (!v19)
    {
      v34 = v2;

      v20 = *(v16 + 32);
      v21 = sub_24A82C8B4();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(v18 + v20, 1, v21))
      {
        (*(v22 + 8))(v18 + v20, v21);
      }

      v24 = *(v16 + 36);
      v25 = v23(v18 + v24, 1, v21);
      v2 = v34;
      v4 = v35;
      if (!v25)
      {
        (*(v22 + 8))(v18 + v24, v21);
      }
    }
  }

  v26 = (((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v26 + 8, v2 | 7);
}

uint64_t sub_24A6B5734()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24A6B58E0()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v14 = sub_24A82CA34();
  v5 = *(v14 - 8);
  v6 = *(v5 + 80);
  v13 = *(v5 + 64);

  v7 = v1[8];
  v8 = sub_24A82CAE4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  v10 = v2 | v6;
  v11 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 288) & ~v6;

  (*(v5 + 8))(v0 + v11, v14);

  return MEMORY[0x2821FE8E8](v0, v11 + v13, v10 | 7);
}

uint64_t sub_24A6B5B54()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A82CAE4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_24A6B5CAC()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A82CAE4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v0 + v4))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24A6B5E1C()
{

  if (*(v0 + 312))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 328, 7);
}

uint64_t sub_24A6B5EFC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B5F5C()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24A6B5FE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B6020()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A6B60DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A6B61B0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6B61E8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  sub_24A77A8CC(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  return MEMORY[0x2821FE8E8](v0, v4 + 17, v2 | 7);
}

uint64_t sub_24A6B6294()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A6B6408(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for FMIPProductType(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24A6B658C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24A82CAA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for FMIPProductType(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24A6B6774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A6B67D0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A6B6834()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B686C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A82CA34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6B6918(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A82CA34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B69CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B6A30@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v10[2] = v3[3];
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = v3[2];
  *a2 = v3[1];
  a2[1] = v7;
  a2[2] = v3[3];
  a2[3] = v6;
  return sub_24A795FDC(v10, v9);
}

uint64_t sub_24A6B6AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24A6B6AF0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A6B6B08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B6B40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B6C30(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FMIPProductType(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 96);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24A6B6D60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FMIPProductType(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 96);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24A6B6EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A82C8B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6B6F74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A82C8B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A6B7018()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B7050()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B70A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B70D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6B7194(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_24A6B7300()
{
  v1 = [*v0 type];

  return v1;
}

id sub_24A6B7370()
{
  v1 = [*v0 lostModeInfo];

  return v1;
}

id sub_24A6B73AC()
{
  v1 = [*v0 owner];

  return v1;
}

id sub_24A6B73E4()
{
  v1 = [*v0 role];

  return v1;
}

id sub_24A6B7430()
{
  v1 = [*v0 accessoryProductInfo];

  return v1;
}

uint64_t sub_24A6B7528()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B7560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDevice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24A6B761C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FMIPDevice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A6B76D4()
{
  v1 = type metadata accessor for FMIPDevice(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v35 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  if (*(v0 + v3 + 472))
  {
  }

  v5 = v4 + v1[28];
  v6 = type metadata accessor for FMIPPlaySoundMetadata(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = *(v6 + 20);
    v8 = sub_24A82CA34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v4 + v1[29];
  v10 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 48);
    v12 = sub_24A82CA34();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  v13 = v4 + v1[30];
  v14 = type metadata accessor for FMIPLockMetadata(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = *(v14 + 20);
    v16 = sub_24A82CA34();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  v17 = v4 + v1[31];
  v18 = type metadata accessor for FMIPEraseMetadata(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 20);
    v20 = sub_24A82CA34();
    (*(*(v20 - 8) + 8))(v17 + v19, v20);
  }

  v21 = v4 + v1[32];
  v22 = type metadata accessor for FMIPItemGroup(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {

    v23 = v21 + *(v22 + 48);
    v24 = type metadata accessor for FMIPItemLostModeMetadata(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = sub_24A82CA34();
      (*(*(v26 - 8) + 8))(v23 + v25, v26);
    }
  }

  v27 = v1[39];
  v28 = sub_24A82CA34();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (!v30(v4 + v27, 1, v28))
  {
    (*(v29 + 8))(v4 + v27, v28);
  }

  v31 = v1[40];
  if (!v30(v4 + v31, 1, v28))
  {
    (*(v29 + 8))(v4 + v31, v28);
  }

  v32 = v1[41];
  if (!v30(v4 + v32, 1, v28))
  {
    (*(v29 + 8))(v4 + v32, v28);
  }

  v33 = v1[42];
  if (!v30(v4 + v33, 1, v28))
  {
    (*(v29 + 8))(v4 + v33, v28);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v35, v2 | 7);
}

uint64_t sub_24A6B7DC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B7E04()
{
  v1 = *(type metadata accessor for FMIPMonitoredDevice(0) - 8);
  v55 = *(v1 + 80);
  v48 = *(v1 + 64);
  v2 = type metadata accessor for FMIPDevice(0);
  v59 = *(*(v2 - 1) + 80);
  v54 = *(*(v2 - 1) + 64);
  v58 = v0;
  v50 = (v55 + 16) & ~v55;
  v3 = v0 + v50;

  if (*(v0 + v50 + 472))
  {
  }

  v4 = v3 + v2[28];
  v5 = type metadata accessor for FMIPPlaySoundMetadata(0);
  v52 = *(*(v5 - 8) + 48);
  if (!v52(v4, 1, v5))
  {
    v6 = *(v5 + 20);
    v7 = sub_24A82CA34();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  v8 = v3 + v2[29];
  v57 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v51 = *(*(v57 - 8) + 48);
  if (!v51(v8, 1))
  {

    v9 = *(v57 + 48);
    v10 = sub_24A82CA34();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  v11 = v3 + v2[30];
  v56 = type metadata accessor for FMIPLockMetadata(0);
  v49 = *(*(v56 - 8) + 48);
  if (!v49(v11, 1))
  {
    v12 = *(v56 + 20);
    v13 = sub_24A82CA34();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  v14 = v3 + v2[31];
  v15 = type metadata accessor for FMIPEraseMetadata(0);
  v47 = *(*(v15 - 8) + 48);
  if (!v47(v14, 1, v15))
  {
    v16 = *(v15 + 20);
    v17 = sub_24A82CA34();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  v18 = v3 + v2[32];
  v19 = type metadata accessor for FMIPItemGroup(0);
  v46 = *(*(v19 - 8) + 48);
  if (!v46(v18, 1, v19))
  {

    v20 = v18 + *(v19 + 48);
    v21 = v19;
    v22 = type metadata accessor for FMIPItemLostModeMetadata(0);
    if (!(*(*(v22 - 8) + 48))(v20, 1, v22))
    {

      v23 = *(v22 + 24);
      v24 = sub_24A82CA34();
      (*(*(v24 - 8) + 8))(v20 + v23, v24);
    }

    v19 = v21;
  }

  v53 = v19;

  v25 = v2[39];
  v26 = sub_24A82CA34();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (!v28(v3 + v25, 1, v26))
  {
    (*(v27 + 8))(v3 + v25, v26);
  }

  v29 = v2[40];
  if (!v28(v3 + v29, 1, v26))
  {
    (*(v27 + 8))(v3 + v29, v26);
  }

  v30 = v2[41];
  if (!v28(v3 + v30, 1, v26))
  {
    (*(v27 + 8))(v3 + v30, v26);
  }

  v31 = v2[42];
  if (!v28(v3 + v31, 1, v26))
  {
    (*(v27 + 8))(v3 + v31, v26);
  }

  v32 = v58;
  v33 = v58 + ((v50 + v48 + v59) & ~v59);

  if (*(v33 + 472))
  {
  }

  v34 = v33 + v2[28];
  if (!v52(v34, 1, v5))
  {
    (*(v27 + 8))(v34 + *(v5 + 20), v26);
  }

  v35 = v33 + v2[29];
  if (!(v51)(v35, 1, v57))
  {

    (*(v27 + 8))(v35 + *(v57 + 48), v26);
  }

  v36 = v33 + v2[30];
  if (!(v49)(v36, 1, v56))
  {
    (*(v27 + 8))(v36 + *(v56 + 20), v26);
  }

  v37 = v33 + v2[31];
  if (!v47(v37, 1, v15))
  {
    (*(v27 + 8))(v37 + *(v15 + 20), v26);
  }

  v38 = v33 + v2[32];
  if (!v46(v38, 1, v53))
  {

    v39 = v38 + *(v53 + 48);
    v40 = type metadata accessor for FMIPItemLostModeMetadata(0);
    if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
    {

      (*(v27 + 8))(v39 + *(v40 + 24), v26);
    }

    v32 = v58;
  }

  v41 = v2[39];
  if (!v28(v33 + v41, 1, v26))
  {
    (*(v27 + 8))(v33 + v41, v26);
  }

  v42 = v2[40];
  if (!v28(v33 + v42, 1, v26))
  {
    (*(v27 + 8))(v33 + v42, v26);
  }

  v43 = v2[41];
  if (!v28(v33 + v43, 1, v26))
  {
    (*(v27 + 8))(v33 + v43, v26);
  }

  v44 = v2[42];
  if (!v28(v33 + v44, 1, v26))
  {
    (*(v27 + 8))(v33 + v44, v26);
  }

  return MEMORY[0x2821FE8E8](v32, ((v54 + ((v50 + v48 + v59) & ~v59) + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v55 | v59 | 7);
}

uint64_t sub_24A6B8A90()
{
  v1 = type metadata accessor for FMIPDevice(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v35 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  if (*(v0 + v3 + 472))
  {
  }

  v5 = v4 + v1[28];
  v6 = type metadata accessor for FMIPPlaySoundMetadata(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = *(v6 + 20);
    v8 = sub_24A82CA34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v4 + v1[29];
  v10 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 48);
    v12 = sub_24A82CA34();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  v13 = v4 + v1[30];
  v14 = type metadata accessor for FMIPLockMetadata(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = *(v14 + 20);
    v16 = sub_24A82CA34();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  v17 = v4 + v1[31];
  v18 = type metadata accessor for FMIPEraseMetadata(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 20);
    v20 = sub_24A82CA34();
    (*(*(v20 - 8) + 8))(v17 + v19, v20);
  }

  v21 = v4 + v1[32];
  v22 = type metadata accessor for FMIPItemGroup(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {

    v23 = v21 + *(v22 + 48);
    v24 = type metadata accessor for FMIPItemLostModeMetadata(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = sub_24A82CA34();
      (*(*(v26 - 8) + 8))(v23 + v25, v26);
    }
  }

  v27 = v1[39];
  v28 = sub_24A82CA34();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (!v30(v4 + v27, 1, v28))
  {
    (*(v29 + 8))(v4 + v27, v28);
  }

  v31 = v1[40];
  if (!v30(v4 + v31, 1, v28))
  {
    (*(v29 + 8))(v4 + v31, v28);
  }

  v32 = v1[41];
  if (!v30(v4 + v32, 1, v28))
  {
    (*(v29 + 8))(v4 + v32, v28);
  }

  v33 = v1[42];
  if (!v30(v4 + v33, 1, v28))
  {
    (*(v29 + 8))(v4 + v33, v28);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v35 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24A6B91A0()
{
  swift_unknownObjectRelease();
  sub_24A67E0F0(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A6B91F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B9238()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B9278()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A6B92C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9308()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B9348()
{
  v1 = sub_24A82CA34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_24A6B948C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9620@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24A6B9650(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[28];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[29];
    goto LABEL_15;
  }

  v13 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[30];
    goto LABEL_15;
  }

  v14 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[31];
    goto LABEL_15;
  }

  v15 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[32];
    goto LABEL_15;
  }

  v17 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[39];

  return v18(v19, a2, v17);
}

uint64_t sub_24A6B98E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B9948@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[5];
  v11 = v3[4];
  v12 = v6;
  v10[0] = v4;
  v10[1] = v5;
  a2[2] = v11;
  a2[3] = v6;
  v7 = v3[3];
  *a2 = v3[2];
  a2[1] = v7;
  return sub_24A7E42C8(v10, v9);
}

uint64_t sub_24A6B99B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_24A6B99FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 104) = v2;
  return result;
}

uint64_t sub_24A6B9A40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24A6B9A90()
{

  sub_24A79CFB0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24A6B9AD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B9B0C()
{
  v1 = sub_24A82C8B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A6B9BD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9C78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B9CBC()
{
  MEMORY[0x24C21E2C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9CF4()
{

  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_24A67E0F0(*(v0 + 24), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B9D8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9DF8()
{

  return MEMORY[0x2821FE8E8](v0, 312, 7);
}

uint64_t sub_24A6B9EC8()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_24A82CAE4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A6BA01C()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 200))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 320, 7);
}

uint64_t sub_24A6BA104()
{
  v1 = *v0;
  v2 = 0x656E6E6F63736964;
  v3 = 0x6465686361747461;
  v4 = 0x6465686361746564;
  if (v1 != 3)
  {
    v4 = 0x6465746365746564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657463656E6E6F63;
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

uint64_t sub_24A6BA1F4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6BA23C()
{
  v1 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A6BA30C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6BA364()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24A82CA34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  if (*(v0 + 24))
  {
  }

  v9 = (v3 + 40) & ~v3;
  v10 = (v9 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v9, v1);
  (*(v6 + 8))(v0 + v10, v5);

  return MEMORY[0x2821FE8E8](v0, ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_24A6BA4D0()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  if (*(v0 + v10))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v3 | v8 | 7);
}

uint64_t sub_24A6BA640()
{
  v11 = sub_24A82CAA4();
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24A82CA34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  if (*(v0 + v9))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v2 | v7 | 7);
}

uint64_t sub_24A6BA820()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A6BA944()
{
  v1 = type metadata accessor for FMIPItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 176))
  {
  }

  v6 = v5 + v1[13];
  v7 = type metadata accessor for FMIPItemLostModeMetadata(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = *(v7 + 24);
    v9 = sub_24A82CA34();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  if (*(v5 + v1[16] + 8))
  {
  }

  v10 = v5 + v1[24];
  type metadata accessor for FMIPProductType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v12 = type metadata accessor for FMIPHawkeyeProductInformation(0);
    if (!(*(*(v12 - 1) + 48))(v10, 1, v12))
    {

      v13 = v12[12];
      v14 = sub_24A82C8B4();
      v15 = *(*(v14 - 8) + 8);
      v15(v10 + v13, v14);
      v15(v10 + v12[13], v14);
      v15(v10 + v12[14], v14);
      v15(v10 + v12[15], v14);
      v15(v10 + v12[16], v14);
      v15(v10 + v12[17], v14);
    }
  }

  else if (EnumCaseMultiPayload == 1 || !EnumCaseMultiPayload && *(v10 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A6BAD60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6BADA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6BADE0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6BAE24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6BAEE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL sub_24A6BAFDC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t getEnumTagSinglePayload for FMIPDeviceState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMIPDeviceState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void *sub_24A6BB0B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24A6BB0E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t FMIPBeaconShareDirection.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t _s8FMIPCore28FMIPDeviceConnectedStateTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6BB270(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v2);
  return sub_24A82DD24();
}

unint64_t FMIPBeaconShareState.baseState.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if ((*v1 >> 62) <= 1)
  {
    return FMIPBeaconShareState.baseState.getter(a1);
  }

  *a1 = v2;

  return sub_24A6BB350(v2);
}

unint64_t sub_24A6BB350(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t static FMIPBeaconShareState.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      goto LABEL_7;
    }

LABEL_35:
    sub_24A6BB350(*a2);
    sub_24A6BB350(v2);
    sub_24A6BB5A4(v2);
    sub_24A6BB5A4(v3);
    v7 = 0;
    return v7 & 1;
  }

  if (v4 != 1)
  {
    v8 = __ROR8__(v2 ^ 0x8000000000000000, 3);
    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (v8)
        {
          if (v3 != 0x8000000000000008)
          {
            goto LABEL_35;
          }

          sub_24A6BB5A4(*a1);
          v9 = 0x8000000000000008;
        }

        else
        {
          if (v3 != 0x8000000000000000)
          {
            goto LABEL_35;
          }

          sub_24A6BB5A4(*a1);
          v9 = 0x8000000000000000;
        }

        goto LABEL_32;
      }

      if (v8 != 2)
      {
        if (v3 != 0x8000000000000018)
        {
          goto LABEL_35;
        }

        sub_24A6BB5A4(*a1);
        v9 = 0x8000000000000018;
        goto LABEL_32;
      }

      v10 = 0x8000000000000010;
      if (v3 != 0x8000000000000010)
      {
        goto LABEL_35;
      }
    }

    else if (v8 <= 5)
    {
      if (v8 != 4)
      {
        if (v3 != 0x8000000000000028)
        {
          goto LABEL_35;
        }

        sub_24A6BB5A4(*a1);
        v9 = 0x8000000000000028;
        goto LABEL_32;
      }

      v10 = 0x8000000000000020;
      if (v3 != 0x8000000000000020)
      {
        goto LABEL_35;
      }
    }

    else if (v8 == 6)
    {
      v10 = 0x8000000000000030;
      if (v3 != 0x8000000000000030)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v8 == 7)
      {
        if (v3 != 0x8000000000000038)
        {
          goto LABEL_35;
        }

        sub_24A6BB5A4(*a1);
        v9 = 0x8000000000000038;
LABEL_32:
        sub_24A6BB5A4(v9);
        v7 = 1;
        return v7 & 1;
      }

      v10 = 0x8000000000000040;
      if (v3 != 0x8000000000000040)
      {
        goto LABEL_35;
      }
    }

    sub_24A6BB5A4(*a1);
    v9 = v10;
    goto LABEL_32;
  }

  if (v3 >> 62 != 1)
  {
    goto LABEL_35;
  }

  v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_7:
  v12 = v6;
  v13 = v5;
  sub_24A6BB350(v3);
  sub_24A6BB350(v2);
  v7 = static FMIPBeaconShareState.== infix(_:_:)(&v13, &v12);
  sub_24A6BB5A4(v2);
  sub_24A6BB5A4(v3);
  return v7 & 1;
}

unint64_t sub_24A6BB5A4(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t FMIPBeaconShareState.hash(into:)(uint64_t a1)
{
  v3 = *v1 >> 62;
  if (!v3)
  {
    v4 = 7;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 8;
LABEL_5:
    MEMORY[0x24C21D5E0](v4);
    return FMIPBeaconShareState.hash(into:)(a1);
  }

  v6 = __ROR8__(*v1 ^ 0x8000000000000000, 3);
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = v6 != 0;
    }
  }

  else if (v6 <= 5)
  {
    if (v6 == 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  else if (v6 == 6)
  {
    v7 = 6;
  }

  else if (v6 == 7)
  {
    v7 = 9;
  }

  else
  {
    v7 = 10;
  }

  return MEMORY[0x24C21D5E0](v7);
}

uint64_t FMIPBeaconShareState.hashValue.getter()
{
  v2[9] = *v0;
  sub_24A82DCC4();
  FMIPBeaconShareState.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A6BB714()
{
  v2[9] = *v0;
  sub_24A82DCC4();
  FMIPBeaconShareState.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A6BB764(uint64_t a1)
{
  v3[9] = *v1;
  sub_24A82DCC4();
  FMIPBeaconShareState.hash(into:)(v3);
  return sub_24A82DD24();
}

uint64_t FMIPBeaconShare.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A82CAA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMIPBeaconShare.beaconIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPBeaconShare(0) + 20);
  v4 = sub_24A82CAA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPBeaconShare.ownerHandle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPBeaconShare(0) + 24));

  return v1;
}

uint64_t FMIPBeaconShare.shareeHandle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPBeaconShare(0) + 28));

  return v1;
}

unint64_t FMIPBeaconShare.state.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FMIPBeaconShare(0) + 32));
  *a1 = v3;

  return sub_24A6BB350(v3);
}

uint64_t FMIPBeaconShare.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPBeaconShare(0) + 36);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPBeaconShare.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPBeaconShare(0) + 40);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPBeaconShare.delegatedSharesURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPBeaconShare(0) + 44);

  return sub_24A696E10(v3, a1);
}

uint64_t sub_24A6BBA94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_24A6BBB50(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v42 - v7;
  v8 = sub_24A82C8B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a2;
  v11 = [a1 identifier];
  sub_24A82CA84();

  v12 = [a1 beaconIdentifier];
  v13 = type metadata accessor for FMIPBeaconShare(0);
  sub_24A82CA84();

  v14 = [a1 owner];
  v15 = [v14 destination];

  v16 = sub_24A82CFC4();
  v18 = v17;

  v19 = (a3 + v13[6]);
  *v19 = v16;
  v19[1] = v18;
  v20 = [a1 sharee];
  v21 = v8;
  v22 = [v20 destination];

  v23 = sub_24A82CFC4();
  v25 = v24;

  v26 = (a3 + v13[7]);
  *v26 = v23;
  v26[1] = v25;
  v27 = &off_278FE8000;
  *(a3 + v13[8]) = v45;
  v28 = [a1 creationDate];
  sub_24A82C9F4();

  v29 = [a1 expirationDate];
  sub_24A82C9F4();

  v30 = [a1 sharee];
  v31 = [v30 type];

  if (v31 != 2)
  {
    goto LABEL_4;
  }

  v32 = [a1 &off_278FE8170 + 2];
  v33 = [v32 destination];

  sub_24A82CFC4();
  v34 = v44;
  sub_24A82C8A4();

  if ((*(v9 + 48))(v34, 1, v21) == 1)
  {
    sub_24A67F378(v34, &unk_27EF5CCB8, &qword_24A82FDB0);
    v27 = &off_278FE8000;
LABEL_4:
    v35 = 1;
    (*(v9 + 56))(a3 + v13[11], 1, 1, v21);
    v36 = 0;
LABEL_7:
    v39 = a3 + v13[12];
    *v39 = v36;
    *(v39 + 8) = v35;
    *(a3 + v13[13]) = [a1 delegationStatus];
    v40 = [a1 v27[108]];
    v41 = [v40 type];

    *(a3 + v13[14]) = v41 == 3;
    return;
  }

  v37 = v43;
  (*(v9 + 32))(v43, v34, v21);
  v38 = v13[11];
  (*(v9 + 16))(a3 + v38, v37, v21);
  (*(v9 + 56))(a3 + v38, 0, 1, v21);
  v36 = [a1 visitorCount];
  (*(v9 + 8))(v37, v21);
  if ((v36 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v27 = &off_278FE8000;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static FMIPBeaconShare.directionSort(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPBeaconShare(0);
  v5 = *(v4 + 28);
  v6 = (a1 + *(v4 + 24));
  v7 = *v6 == *(a1 + v5) && v6[1] == *(a1 + v5 + 8);
  if (v7 || (sub_24A82DC04() & 1) != 0)
  {
    return 1;
  }

  v9 = (a2 + *(v4 + 24));
  v10 = *v9;
  v11 = v9[1];
  v12 = (a2 + *(v4 + 28));
  v13 = v10 == *v12 && v11 == v12[1];
  if (v13 || (sub_24A82DC04() & 1) != 0)
  {
    return 0;
  }

  return sub_24A82C9B4();
}

BOOL FMIPBeaconShare.isDefaultOwnedShare.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = (v0 + *(v1 + 28));
  v3 = *v2 == 0x6F6C4072656E776FLL && v2[1] == 0xEF74736F686C6163;
  result = 0;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {
    v4 = (v0 + *(v1 + 24));
    v5 = *v4 == 0x6F6C4072656E776FLL && v4[1] == 0xEF74736F686C6163;
    if (v5 || (sub_24A82DC04() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FMIPBeaconShare.direction.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for FMIPBeaconShare(0);
  v4 = (v1 + *(v3 + 28));
  v5 = *v4 == 0x6F6C4072656E776FLL && v4[1] == 0xEF74736F686C6163;
  if (v5 || (sub_24A82DC04() & 1) != 0 || ((v6 = (v1 + *(v3 + 24)), *v6 == 0x6F6C4072656E776FLL) ? (v7 = v6[1] == 0xEF74736F686C6163) : (v7 = 0), v7 || (result = sub_24A82DC04(), (result & 1) != 0)))
  {
    v9 = (v1 + *(v3 + 24));
    v10 = *v9;
    v11 = v9[1];
    v12 = [objc_opt_self() SPOwner];
    v13 = [v12 destination];

    v14 = sub_24A82CFC4();
    v16 = v15;

    if (v10 == v14 && v11 == v16)
    {

      v19 = 1;
    }

    else
    {
      v18 = sub_24A82DC04();

      v19 = v18 & 1;
    }
  }

  else
  {
    v19 = 2;
  }

  *a1 = v19;
  return result;
}

uint64_t FMIPBeaconShare.shareIncludesMe.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = (v0 + *(v1 + 28));
  v3 = *v2 == 0x6F6C4072656E776FLL && v2[1] == 0xEF74736F686C6163;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {
    return 1;
  }

  v4 = (v0 + *(v1 + 24));
  if (*v4 == 0x6F6C4072656E776FLL && v4[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPBeaconShare.amOwner.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPBeaconShare(0) + 24));
  if (*v1 == 0x6F6C4072656E776FLL && v1[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPBeaconShare.amSharee.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPBeaconShare(0) + 24));
  if (*v1 == 0x6F6C4072656E776FLL && v1[1] == 0xEF74736F686C6163)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_24A82DC04() ^ 1;
  }

  return v3 & 1;
}

uint64_t FMIPBeaconShare.otherPartyHandle.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = (v0 + *(v1 + 28));
  v3 = *v2;
  v4 = *v2 == 0x6F6C4072656E776FLL && v2[1] == 0xEF74736F686C6163;
  if (v4 || (sub_24A82DC04() & 1) != 0 || ((v5 = (v0 + *(v1 + 24)), *v5 == 0x6F6C4072656E776FLL) ? (v6 = v5[1] == 0xEF74736F686C6163) : (v6 = 0), v6 || (sub_24A82DC04() & 1) != 0))
  {
    v7 = (v0 + *(v1 + 24));
    v9 = *v7;
    v8 = v7[1];
    v10 = [objc_opt_self() SPOwner];
    v11 = [v10 destination];

    v12 = sub_24A82CFC4();
    v14 = v13;

    if (v9 == v12 && v8 == v14)
    {
    }

    else
    {
      v16 = sub_24A82DC04();

      if ((v16 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v9 = v3;
LABEL_19:

  return v9;
}

uint64_t FMIPBeaconShare.requiresResponse.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = *(v0 + *(v1 + 32));
  if (v2 < 0)
  {
    v9 = 0;
    if (((1 << __ROR8__(v2 & 0x7FFFFFFFFFFFFFFFLL, 3)) & 0x1EB) != 0)
    {
      return v9;
    }
  }

  v3 = (v0 + *(v1 + 28));
  if (*v3 == 0x6F6C4072656E776FLL && v3[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  v5 = v1;
  if (sub_24A82DC04())
  {
    return 1;
  }

  v6 = (v0 + *(v5 + 24));
  if (*v6 == 0x6F6C4072656E776FLL && v6[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPBeaconShare.otherShareeShouldBeHidden.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = *(v0 + *(v1 + 32));
  if ((v2 & 0x8000000000000000) == 0 || (v8 = 0, ((1 << __ROR8__(v2 & 0x7FFFFFFFFFFFFFFFLL, 3)) & 0x1EB) == 0))
  {
    v3 = (v0 + *(v1 + 28));
    v4 = *v3 == 0x6F6C4072656E776FLL && v3[1] == 0xEF74736F686C6163;
    if (v4 || (v5 = v1, (sub_24A82DC04() & 1) != 0) || ((v6 = (v0 + *(v5 + 24)), *v6 == 0x6F6C4072656E776FLL) ? (v7 = v6[1] == 0xEF74736F686C6163) : (v7 = 0), v7))
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_24A82DC04() ^ 1;
    }
  }

  return v8 & 1;
}

uint64_t FMIPBeaconShare.hash(into:)(uint64_t a1)
{
  v3 = sub_24A82C8B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - v8;
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_281514670, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24A82CF64();
  v10 = type metadata accessor for FMIPBeaconShare(0);
  sub_24A82CF64();
  sub_24A82D094();
  sub_24A82D094();
  v14[1] = *(v1 + v10[8]);
  FMIPBeaconShareState.hash(into:)(a1);
  sub_24A82CA34();
  sub_24A6C84B4(&qword_27EF5CCC8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24A82CF64();
  sub_24A82CF64();
  sub_24A696E10(v1 + v10[11], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_24A82DCE4();
    sub_24A6C84B4(&qword_27EF5CCD0, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24A82CF64();
    (*(v4 + 8))(v6, v3);
  }

  v11 = (v1 + v10[12]);
  if (*(v11 + 8) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    v12 = *v11;
    sub_24A82DCE4();
    MEMORY[0x24C21D5E0](v12);
  }

  sub_24A82DCE4();
  return sub_24A82DCE4();
}

uint64_t FMIPBeaconShare.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6BCBDC()
{
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6BCC20(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A6BCC70()
{
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD00000000000002ALL, 0x800000024A844610);
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v0);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A844640);
  type metadata accessor for FMIPBeaconShareStateOverride(0);
  v1 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A844660);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24A6BCE08()
{
  sub_24A82DCC4();
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_281514670, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24A82CF64();
  sub_24A82CF64();
  FMIPBeaconShareState.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6BCEE0(uint64_t a1)
{
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_281514670, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24A82CF64();
  sub_24A82CF64();
  return FMIPBeaconShareState.hash(into:)(a1);
}

uint64_t sub_24A6BCFA8(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_281514670, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24A82CF64();
  sub_24A82CF64();
  FMIPBeaconShareState.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A6BD0A4()
{
  v1 = sub_24A82C514();
  v0[27] = v1;
  v0[28] = sub_24A6C84B4(&unk_281514680, 255, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v2 = sub_24A697E3C(v0 + 24);
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D089D8], v1);
  LOBYTE(v1) = sub_24A82C4D4();
  sub_24A6876E8(v0 + 24);
  if (v1)
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    v0[34] = sub_24A6797D0(v3, qword_281518D70);
    v4 = sub_24A82CD94();
    v5 = sub_24A82D504();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A675000, v4, v5, "FMIPBeaconSharingController: Starting...", v6, 2u);
      MEMORY[0x24C21E1D0](v6, -1, -1);
    }

    v7 = v0[33];

    v8 = *(v7 + 112);
    v0[22] = sub_24A6CA184;
    v0[23] = v7;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24A6BD990;
    v0[21] = &unk_285DC1218;
    v9 = _Block_copy(v0 + 18);
    v0[35] = v9;

    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = sub_24A6BD488;
    v10 = swift_continuation_init();
    v0[17] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24A6BDA40;
    v0[13] = &unk_285DC1240;
    v0[14] = v10;
    [v8 startRefreshingSharesWithBlock:v9 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_281518D70);
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPBeaconSharingController: Not starting since FF disabled.", v14, 2u);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    v15 = v0[1];

    return v15();
  }
}