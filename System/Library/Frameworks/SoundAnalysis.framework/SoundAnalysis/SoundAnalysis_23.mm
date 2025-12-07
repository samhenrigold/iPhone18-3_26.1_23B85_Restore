void sub_1C9983FDC()
{
  sub_1C981E1EC();
  if (sub_1C998365C())
  {
    v1 = sub_1C9984BDC();
    sub_1C9983248(v1, v2);
    if (v0)
    {
      sub_1C9984B90();
      swift_unexpectedError();
      __break(1u);
    }
  }
}

uint64_t sub_1C99840A8()
{
  sub_1C981E1EC();
  if ((sub_1C998365C() & 1) == 0)
  {
    return *MEMORY[0x1E6960C70];
  }

  v1 = sub_1C9984BDC();
  sub_1C99833A4(v1, v2);
  if (!v0)
  {
    return v4;
  }

  sub_1C9984B90();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C99841B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1C998365C();
  if ((result & 1) == 0)
  {
    v7 = *MEMORY[0x1E6960C98];
    v8 = *(MEMORY[0x1E6960C98] + 8);
    v9 = *(MEMORY[0x1E6960C98] + 16);
    v10 = *(MEMORY[0x1E6960C98] + 32);
    v11 = *(MEMORY[0x1E6960C98] + 40);
    goto LABEL_5;
  }

  v5 = sub_1C9984BEC();
  result = sub_1C99834FC(v5, v6);
  if (!a1)
  {
    v7 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;
    v11 = v16;
LABEL_5:
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
    *(a2 + 40) = v11;
    return result;
  }

  sub_1C9984B90();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1C9984398(uint64_t a1)
{
  sub_1C9984450(319, &qword_1EC3C5680, MEMORY[0x1E69E6F48]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C9984450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C9982664();
    v7 = a3(a1, &type metadata for StringKey, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C99844C8()
{
  result = qword_1EC3C5798;
  if (!qword_1EC3C5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5798);
  }

  return result;
}

unint64_t sub_1C9984520()
{
  result = qword_1EC3C5788;
  if (!qword_1EC3C5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5788);
  }

  return result;
}

unint64_t sub_1C9984574()
{
  result = qword_1EC3CE9F8;
  if (!qword_1EC3CE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE9F8);
  }

  return result;
}

char *sub_1C99845C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_1C9A91308();
  v8 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_1C9A91328();
  if (a4 && v8)
  {
    if (result >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = result;
    }

    return memmove(a4, v8, v11);
  }

  return result;
}

uint64_t sub_1C9984678(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CE9E8, &unk_1C9ABDF10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C99846F0()
{
  result = qword_1EC3CEA18;
  if (!qword_1EC3CEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEA18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C9984834()
{
  result = qword_1EC3CEA20;
  if (!qword_1EC3CEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEA20);
  }

  return result;
}

unint64_t sub_1C9984888()
{
  result = qword_1EC3CEA30;
  if (!qword_1EC3CEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEA30);
  }

  return result;
}

uint64_t sub_1C99848DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_dynamicCastMetatype())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C9984910(double a1)
{
  result = qword_1EC3C54A0;
  if (!qword_1EC3C54A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableByNSCoding.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1C9984A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C9984A88()
{
  result = qword_1EC3CEAC0;
  if (!qword_1EC3CEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEAC0);
  }

  return result;
}

unint64_t sub_1C9984AE0()
{
  result = qword_1EC3CEAC8;
  if (!qword_1EC3CEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEAC8);
  }

  return result;
}

unint64_t sub_1C9984B38()
{
  result = qword_1EC3CEAD0;
  if (!qword_1EC3CEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEAD0);
  }

  return result;
}

uint64_t sub_1C9984BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C9A93778(a1, 11, 2, 0x726F707075736E75, 0xEB00000000646574, a6, 32, 2, a9);
}

void static SNACIUtils.sha256HashHexString(url:)(uint64_t a1)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C9A915A8();
  if (v1)
  {
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    sub_1C9987FE4();
    sub_1C998D5E8();
    objc_autoreleasePoolPop(v4);
    sub_1C9987DF0(v2, v3);
    sub_1C97A5978(v2, v3);
    sub_1C988EB2C();
  }
}

void sub_1C9984D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C98139FC();
  a19 = v25;
  a20 = v26;
  v136 = v22;
  v121 = v27;
  v120 = v28;
  v30 = v29;
  v32 = v31;
  v143 = v33;
  v144 = v34;
  v142 = v35;
  v126 = v36;
  v134 = a21;
  v135 = a22;
  v141 = sub_1C9A91408();
  sub_1C97AE9C8();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AEAD8();
  sub_1C998D58C();
  v40 = sub_1C9A91558();
  sub_1C97AE9C8();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C998D398();
  v145 = v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v120 - v46;
  sub_1C998D580(&a11);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v120 - v49;
  sub_1C9A916E8();
  sub_1C97AE9C8();
  v137 = v52;
  v138 = v51;
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AEAD8();
  sub_1C998D4D4();
  v129 = sub_1C9A91238();
  sub_1C97AE9C8();
  v128 = v53;
  MEMORY[0x1EEE9AC00](v54);
  sub_1C998D398();
  sub_1C97ABFB4(v55);
  sub_1C998D580(&a9);
  MEMORY[0x1EEE9AC00](v56);
  v132 = &v120 - v57;
  v127 = v30;
  sub_1C9A91698();
  v139 = v23;
  sub_1C9A916D8();
  sub_1C9A914A8();
  v58 = *(v42 + 16);
  v144 = v50;
  v133 = v47;
  v146 = v40;
  v131 = v42 + 16;
  v130 = v58;
  v58(v50, v47, v40);
  v59 = *(v32 + 16);
  LODWORD(v140) = *MEMORY[0x1E6968F70];
  v60 = (v38 + 104);
  v61 = (v38 + 8);
  v143 = (v42 + 8);
  v125 = v42;
  v142 = v42 + 32;
  for (i = (v32 + 40); v59; --v59)
  {
    v63 = *i;
    v148 = *(i - 1);
    v149 = v63;
    v64 = v141;
    (*v60)(v24, v140, v141);
    sub_1C98449A8();

    v65 = v145;
    sub_1C9A91548();
    (*v61)(v24, v64);
    v66 = sub_1C998D4E0();
    v67 = v146;
    v68(v66, v146);

    v69 = sub_1C998D4E0();
    v70(v69, v65, v67);
    i += 2;
  }

  v141 = *v143;
  (v141)(v133, v146);
  v71 = sub_1C9987830();
  v73 = v72;
  v74 = sub_1C9A91508();
  v76 = v75;
  sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
  v77 = swift_allocObject();
  v78 = sub_1C998D3FC(v77, xmmword_1C9AA95C0);
  v140 = v71;
  v78[5].n128_u64[0] = v71;
  v78[5].n128_u64[1] = v73;
  v78[6].n128_u64[0] = v74;
  v78[6].n128_u64[1] = v76;
  v148 = v78;

  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  v79 = sub_1C98449FC();
  sub_1C998D510(v79);

  sub_1C97BE374();
  v80 = v136;
  sub_1C9987A88();
  if (v80)
  {

    v83 = sub_1C97A7890();
    v141(v83);
    (*(v137 + 8))(v139, v138);
    goto LABEL_10;
  }

  v84 = v81;
  v85 = v82;

  v86 = sub_1C9A91608();
  v136 = 0;
  v88 = v87;
  sub_1C97A5978(v84, v85);
  sub_1C998D434();
  v148 = v89;
  v149 = v90;
  MEMORY[0x1CCA90230](v120, v121);
  MEMORY[0x1CCA90230](58, 0xE100000000000000);
  MEMORY[0x1CCA90230](v86, v88);

  sub_1C998D4BC();
  v91();
  v92 = v132;
  sub_1C9A91218();
  sub_1C9A911E8();
  sub_1C998D368();
  sub_1C998D534(v140, v73);

  sub_1C998D334();
  sub_1C9A91228();

  sub_1C9A911F8();
  v93 = sub_1C97A7890();
  v141(v93);
  (*(v137 + 8))(v139, v138);
  v94 = swift_allocObject();
  v144 = v94;
  *(v94 + 16) = 1;
  v141 = (v94 + 16);
  sub_1C97F07FC();
  v95 = swift_allocObject();
  v143 = v95;
  *(v95 + 16) = 0;
  v140 = (v95 + 16);
  sub_1C998D4BC();
  v96();
  v97 = v128;
  v98 = v123;
  v99 = v129;
  (*(v128 + 16))(v123, v92, v129);
  v100 = v125;
  v101 = (*(v125 + 80) + 16) & ~*(v125 + 80);
  v102 = (v124 + *(v97 + 80) + v101) & ~*(v97 + 80);
  v103 = (v122 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = swift_allocObject();
  v105 = *(v100 + 32);
  v106 = v144;
  v107 = v104 + v101;
  v108 = v143;
  v105(v107, v145, v146);
  (*(v97 + 32))(v104 + v102, v98, v99);
  *(v104 + v103) = v106;
  *(v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8)) = v108;

  v109 = v136;
  sub_1C99885E0(sub_1C998D068, v104, v127);
  if (v109)
  {
    (*(v97 + 8))(v132, v99);
LABEL_9:

    goto LABEL_10;
  }

  v111 = v141;
  v112 = sub_1C998D3E0(v110, &v148);
  if (*v111)
  {
    (*(v128 + 8))(v132, v129);
    goto LABEL_9;
  }

  v113 = v140;
  sub_1C998D3E0(v112, &v147);
  v115 = *v113;
  v116 = v129;
  v117 = v128;
  v118 = v132;
  if (!v115)
  {
    type metadata accessor for SNError(v114);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000010, 0x80000001C9ADB980);
    v115 = 0;
  }

  swift_willThrow();
  v119 = v115;
  (*(v117 + 8))(v118, v116);

LABEL_10:
  sub_1C9971578();
  sub_1C98139E0();
}

uint64_t sub_1C99855E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_1C9875BEC(0, (v2 - result) & ~((v2 - result) >> 63), v2, a2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = sub_1C97AE9C4();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t S3BucketAddress.endpoint.setter()
{
  sub_1C981E1EC();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t S3BucketAddress.bucket.setter()
{
  sub_1C981E1EC();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t S3BucketAddress.accessKeyID.setter()
{
  sub_1C981E1EC();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t S3BucketAddress.secretAccessKey.setter()
{
  sub_1C981E1EC();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void __swiftcall S3BucketAddress.init(endpoint:bucket:accessKeyID:secretAccessKey:)(SoundAnalysis::S3BucketAddress *__return_ptr retstr, Swift::String endpoint, Swift::String bucket, Swift::String accessKeyID, Swift::String secretAccessKey)
{
  retstr->endpoint = endpoint;
  retstr->bucket = bucket;
  retstr->accessKeyID = accessKeyID;
  retstr->secretAccessKey = secretAccessKey;
}

void static S3BucketAddress.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v17 = a1[7];
  v18 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  v11 = a2[6];
  v12 = a2[7];
  if (v10 || (sub_1C9A93B18()) && (v2 == v6 ? (v13 = v4 == v7) : (v13 = 0), (v13 || (sub_1C9A93B18()) && (v3 == v8 ? (v14 = v5 == v9) : (v14 = 0), (v14 || (sub_1C9A93B18()) && (v18 == v11 ? (v15 = v17 == v12) : (v15 = 0), !v15))))
  {
    sub_1C998D5CC();

    sub_1C9A93B18();
  }

  else
  {
    sub_1C998D5CC();
  }
}

uint64_t sub_1C99859A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74656B637562 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x654B737365636361 && a2 == 0xEB00000000444979;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6341746572636573 && a2 == 0xEF79654B73736563)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C9985B04(char a1)
{
  result = 0x746E696F70646E65;
  switch(a1)
  {
    case 1:
      result = 0x74656B637562;
      break;
    case 2:
      result = 0x654B737365636361;
      break;
    case 3:
      result = 0x6341746572636573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9985BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99859A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9985BC8(uint64_t a1)
{
  v2 = sub_1C9988284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9985C04(uint64_t a1)
{
  v2 = sub_1C9988284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void S3BucketAddress.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v25 = sub_1C97A2CEC(&qword_1EC3CEAD8, &qword_1C9ABE290);
  sub_1C97AE9C8();
  v27 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AEA4C();
  v29 = sub_1C97A7890();
  sub_1C97A5A8C(v29, v30);
  sub_1C9988284();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  if (!v23)
  {
    sub_1C97BE02C();
    sub_1C9A939C8();
    sub_1C97BE02C();
    sub_1C9A939C8();
    sub_1C97BE02C();
    sub_1C9A939C8();
  }

  (*(v27 + 8))(v24, v25);
  sub_1C97AEB5C();
}

uint64_t S3BucketAddress.hash(into:)(uint64_t a1)
{
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C97C924C();
  sub_1C9A92528();

  return sub_1C9A92528();
}

uint64_t S3BucketAddress.hashValue.getter(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void S3BucketAddress.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v25 = v24;
  v27 = v26;
  v28 = sub_1C97A2CEC(&qword_1EC3CEAE8, &qword_1C9ABE298);
  sub_1C97AE9C8();
  v30 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v47 - v32;
  sub_1C97A5A8C(v25, v25[3]);
  sub_1C9988284();
  sub_1C9A93DB8();
  if (v23)
  {
    sub_1C97A592C(v25);
  }

  else
  {
    LOBYTE(v56[0]) = 0;
    sub_1C998D454();
    v34 = sub_1C9A938A8();
    v51 = v35;
    LOBYTE(v56[0]) = 1;
    sub_1C998D454();
    v36 = sub_1C9A938A8();
    v50 = v37;
    v48 = v36;
    LOBYTE(v56[0]) = 2;
    sub_1C998D454();
    v47 = sub_1C9A938A8();
    v49 = v38;
    v39 = sub_1C9A938A8();
    v41 = v40;
    (*(v30 + 8))(v33, v28);
    v42 = v51;
    *&v52 = v34;
    *(&v52 + 1) = v51;
    v44 = v48;
    v43 = v49;
    *&v53 = v48;
    *(&v53 + 1) = v50;
    *&v54 = v47;
    *(&v54 + 1) = v49;
    *&v55 = v39;
    *(&v55 + 1) = v41;
    v45 = v53;
    *v27 = v52;
    v27[1] = v45;
    v46 = v55;
    v27[2] = v54;
    v27[3] = v46;
    sub_1C99882D8(&v52, v56);
    sub_1C97A592C(v25);
    v56[0] = v34;
    v56[1] = v42;
    v56[2] = v44;
    v56[3] = v50;
    v56[4] = v47;
    v56[5] = v43;
    v56[6] = v39;
    v56[7] = v41;
    sub_1C9988310(v56);
  }

  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C99861B0()
{
  sub_1C9A93CC8();
  S3BucketAddress.hash(into:)(v1);
  return sub_1C9A93D18();
}

uint64_t S3Path.key.setter()
{
  sub_1C981E1EC();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t S3Path.parent.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t S3Path.init(key:parent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

uint64_t static S3Path.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_1C9A93B18() & 1) != 0))
  {
    v13 = v3;
    v14 = v2;

    v5 = static S3PathOrBucket.== infix(_:_:)(&v14, &v13, v6, v7, v8, v9, v10, v11);
  }

  return v5 & 1;
}

uint64_t static S3PathOrBucket.== infix(_:_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *a2;
  if (*a1 < 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      v32 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);

      v22 = sub_1C998D418(v14, v15, v16, v17, v18, v19, v20, v21, v25, *(&v25 + 1), v26, v27, v28, v29, v30, v31, v32);
      v13 = static S3Path.== infix(_:_:)(v22, v23);

      return v13 & 1;
    }

    goto LABEL_5;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  v10 = sub_1C998D418(a1, a2, a3, a4, a5, a6, a7, a8, *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v8 + 16));
  static S3BucketAddress.== infix(_:_:)(v10, v11);
  v13 = v12;
  return v13 & 1;
}

uint64_t sub_1C9986470(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65726170 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C9986534(char a1)
{
  if (a1)
  {
    return 0x746E65726170;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1C9986580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9986470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99865A8(uint64_t a1)
{
  v2 = sub_1C9988340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99865E4(uint64_t a1)
{
  v2 = sub_1C9988340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void S3Path.encode(to:)()
{
  sub_1C97AEB94();
  v3 = v2;
  v4 = sub_1C97A2CEC(&qword_1EC3CEAF0, &qword_1C9ABE2A0);
  sub_1C97AE9C8();
  v7 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9988340();
  sub_1C9A93DD8();
  sub_1C97BE02C();
  sub_1C9A939C8();
  if (!v0)
  {
    sub_1C9988394();

    sub_1C97BE02C();
    sub_1C9A93A18();
  }

  (*(v7 + 8))(v1, v4);
  sub_1C97AEB5C();
}

uint64_t S3Path.hashValue.getter(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C9A92528();
  S3PathOrBucket.hash(into:)(v2);
  return sub_1C9A93D18();
}

void S3Path.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v25 = v24;
  v27 = v26;
  sub_1C97A2CEC(&qword_1EC3CEB08, &qword_1C9ABE2A8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C98021C4();
  v29 = sub_1C998D574();
  sub_1C97A5A8C(v29, v30);
  sub_1C9988340();
  sub_1C9A93DB8();
  if (v23)
  {
    sub_1C97A592C(v25);
  }

  else
  {
    v31 = sub_1C9A938A8();
    v33 = v32;
    sub_1C99883E8();
    sub_1C9A938F8();
    v34 = sub_1C97A7890();
    v35(v34);
    *v27 = v31;
    v27[1] = v33;
    v27[2] = v36;

    sub_1C97A592C(v25);
  }

  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C9986A14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656B637562 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C9986AD8(char a1)
{
  if (a1)
  {
    return 1752457584;
  }

  else
  {
    return 0x74656B637562;
  }
}

uint64_t sub_1C9986B0C()
{
  v1 = *(v0 + 16);
  *&v3[72] = *v0;
  v4 = v1;
  sub_1C9A93CC8();
  S3Path.hash(into:)(v3);
  return sub_1C9A93D18();
}

uint64_t sub_1C9986B90(uint64_t a1)
{
  v2 = sub_1C9988538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9986BCC(uint64_t a1)
{
  v2 = sub_1C9988538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9986C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9986A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9986C38(uint64_t a1)
{
  v2 = sub_1C998843C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9986C74(uint64_t a1)
{
  v2 = sub_1C998843C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9986CB0(uint64_t a1)
{
  v2 = sub_1C9988490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9986CEC(uint64_t a1)
{
  v2 = sub_1C9988490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void S3PathOrBucket.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v55 = v24;
  v27 = v26;
  v51 = sub_1C97A2CEC(&qword_1EC3CEB18, &qword_1C9ABE2B0);
  sub_1C97AE9C8();
  v50 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C998D58C();
  v30 = sub_1C97A2CEC(&qword_1EC3CEB20, &qword_1C9ABE2B8);
  sub_1C97AE9C8();
  v52 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v50 - v33;
  sub_1C97A2CEC(&qword_1EC3CEB28, &qword_1C9ABE2C0);
  sub_1C97AE9C8();
  v53 = v36;
  v54 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C998D5AC();
  v38 = *v23;
  sub_1C97A5A8C(v27, v27[3]);
  sub_1C998843C();
  sub_1C9A93DD8();
  if ((v38 & 0x8000000000000000) != 0)
  {
    v43 = *((v38 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v44 = *((v38 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v45 = *((v38 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    LOBYTE(v57) = 1;
    sub_1C9988490();

    sub_1C9A93988();
    *&v57 = v43;
    *(&v57 + 1) = v44;
    *&v58 = v45;
    sub_1C99884E4();
    v46 = v51;
    sub_1C9A93A18();
    sub_1C998D484();
    v47(v25, v46);
    v48 = sub_1C998D598();
    v49(v48);
  }

  else
  {
    v39 = *(v38 + 32);
    v57 = *(v38 + 16);
    v58 = v39;
    v40 = *(v38 + 64);
    v59 = *(v38 + 48);
    v60 = v40;
    sub_1C99882D8(&v57, v56);
    sub_1C9988538();
    sub_1C9A93988();
    v56[0] = v57;
    v56[1] = v58;
    v56[2] = v59;
    v56[3] = v60;
    sub_1C998858C();
    sub_1C9A93A18();
    (*(v52 + 8))(v34, v30);
    v41 = sub_1C998D598();
    v42(v41);
    sub_1C9988310(&v57);
  }

  sub_1C97AEB5C();
}

uint64_t S3PathOrBucket.hash(into:)(uint64_t a1)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    MEMORY[0x1CCA91980](1);

    sub_1C9A92528();
    S3PathOrBucket.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x1CCA91980](0);

    sub_1C97C924C();
    sub_1C9A92528();
    sub_1C9A92528();
    sub_1C9A92528();
    sub_1C9A92528();
  }

  sub_1C998D5CC();
}

uint64_t S3PathOrBucket.hashValue.getter()
{
  v2[9] = *v0;
  sub_1C9A93CC8();
  S3PathOrBucket.hash(into:)(v2);
  return sub_1C9A93D18();
}

void S3PathOrBucket.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  a23 = v26;
  a24 = v27;
  v58 = v28;
  v30 = v29;
  sub_1C97A2CEC(&qword_1EC3CEB58, &qword_1C9ABE2C8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AEA4C();
  sub_1C97A2CEC(&qword_1EC3CEB60, &qword_1C9ABE2D0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C98021C4();
  v33 = sub_1C97A2CEC(&qword_1EC3CEB68, &qword_1C9ABE2D8);
  sub_1C97AE9C8();
  v57 = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C998D4D4();
  sub_1C97A5A8C(v30, v30[3]);
  sub_1C998843C();
  sub_1C9A93DB8();
  if (v24)
  {
    goto LABEL_8;
  }

  sub_1C9A93958();
  sub_1C98EE524();
  if (v37 == v38 >> 1)
  {
LABEL_7:
    v44 = sub_1C9A93648();
    sub_1C97A7A80(v44);
    v46 = v45;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v46 = &type metadata for S3PathOrBucket;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v25, v33);
LABEL_8:
    sub_1C97A592C(v30);
LABEL_9:
    sub_1C97AEB5C();
    return;
  }

  if (v37 < (v38 >> 1))
  {
    a10 = *(v36 + v37);
    sub_1C98EE520();
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      if (a10)
      {
        a14 = 1;
        sub_1C9988490();
        sub_1C998D550(&type metadata for S3PathOrBucket.PathCodingKeys, &a14);
        sub_1C97DAA28();
        v43 = swift_allocObject();
        sub_1C998BB28();
        sub_1C9A938F8();
        swift_unknownObjectRelease();
        v47 = sub_1C998D5B8();
        v48(v47);
        v49 = sub_1C998D3AC();
        v50(v49);
        v51 = v43 | 0x8000000000000000;
        v52 = v58;
      }

      else
      {
        v52 = v58;
        a13 = 0;
        sub_1C9988538();
        sub_1C998D550(&type metadata for S3PathOrBucket.BucketCodingKeys, &a13);
        v51 = swift_allocObject();
        sub_1C998BB7C();
        sub_1C9A938F8();
        swift_unknownObjectRelease();
        v53 = sub_1C998D574();
        v54(v53);
        v55 = sub_1C998D3AC();
        v56(v55);
      }

      *v52 = v51;
      sub_1C97A592C(v30);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C9987750()
{
  v2[9] = *v0;
  sub_1C9A93CC8();
  S3PathOrBucket.hash(into:)(v2);
  return sub_1C9A93D18();
}

uint64_t sub_1C99877E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9987830()
{
  v1 = sub_1C9A91778();
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  sub_1C998D5AC();
  v5 = sub_1C97A2CEC(qword_1EC3CCB00, qword_1C9AB4910);
  sub_1C97DACE4(v5);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C991B8A4(0xD000000000000025, 0x80000001C9ADB920, v9);
  sub_1C9A91788();
  v10 = sub_1C9A917A8();
  v11 = 0;
  if (sub_1C97ABF20(v8, 1, v10) != 1)
  {
    v11 = sub_1C9A91798();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  [v9 setTimeZone_];

  sub_1C9A91758();
  v12 = sub_1C9A91768();
  (*(v3 + 8))(v0, v1);
  [v9 setLocale_];

  v13 = sub_1C9A91678();
  v14 = [v9 stringFromDate_];

  v15 = sub_1C9A924A8();
  return v15;
}

void sub_1C9987A88()
{
  sub_1C97AEB94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C9A924E8();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  v41 = v7;
  v42 = v5;
  sub_1C9A924D8();
  sub_1C98449A8();
  v15 = sub_1C9A93308();
  v16 = *(v10 + 8);
  v16(v14, v8);
  if (!v15)
  {
    goto LABEL_6;
  }

  v41 = v3;
  v42 = v1;
  sub_1C9A924D8();
  v17 = sub_1C9A93308();
  v16(v14, v8);
  if (!v17)
  {

LABEL_6:
    sub_1C998C484();
    sub_1C97A7A80(&unk_1F4945838);
    *v26 = 0;
    swift_willThrow();
    goto LABEL_24;
  }

  v18 = sub_1C99855E4(1, v15);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if (v23)
  {
    sub_1C9A93B88();
    swift_unknownObjectRetain_n();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
      swift_unknownObjectRelease();
      v27 = MEMORY[0x1E69E7CC0];
    }

    v28 = *(v27 + 16);

    if (__OFSUB__(v24 >> 1, v22))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v28 != (v24 >> 1) - v22)
    {
      goto LABEL_27;
    }

    v20 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v20)
    {
      goto LABEL_14;
    }

    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  while (1)
  {
    sub_1C9A0F090(v18, v20, v22, v24);
    v20 = v25;
LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    v17 = sub_1C99855E4(1, v17);
    v18 = v29;
    v22 = v30;
    v24 = v31;
    if ((v31 & 1) == 0)
    {
      goto LABEL_15;
    }

    sub_1C9A93B88();
    swift_unknownObjectRetain_n();
    v34 = swift_dynamicCastClass();
    if (!v34)
    {
      swift_unknownObjectRelease();
      v34 = MEMORY[0x1E69E7CC0];
    }

    v35 = *(v34 + 16);

    if (!__OFSUB__(v24 >> 1, v22))
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_unknownObjectRelease();
  }

  if (v35 != (v24 >> 1) - v22)
  {
    swift_unknownObjectRelease();
LABEL_15:
    sub_1C9A0F090(v17, v18, v22, v24);
    v33 = v32;
    goto LABEL_22;
  }

  v33 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v33)
  {
    goto LABEL_23;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_22:
  swift_unknownObjectRelease();
LABEL_23:
  sub_1C9A91348();
  swift_allocObject();
  v36 = sub_1C9A91318();
  v41 = 0x1400000000;
  v42 = v36 | 0x4000000000000000;

  sub_1C9984C1C(v33, v20, &v41);

  v37 = sub_1C988EB2C();
  sub_1C97CE3DC(v37, v38);
  v39 = sub_1C988EB2C();
  sub_1C97A5978(v39, v40);
LABEL_24:
  sub_1C988EB2C();
  sub_1C97AEB5C();
}

uint64_t sub_1C9987DF0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C9A91658();
  sub_1C97AE9C8();
  v16 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  sub_1C97CE3DC(a1, a2);
  sub_1C9A91668();
  sub_1C998D190();
  v10 = MEMORY[0x1E69E7558];
  while (1)
  {
    sub_1C97C924C();
    sub_1C9A93298();
    if (v18)
    {
      break;
    }

    sub_1C97A2CEC(&unk_1EC3C7BD0, &qword_1C9AAA880);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C9A9EDD0;
    *(v11 + 56) = MEMORY[0x1E69E7508];
    *(v11 + 64) = v10;
    *(v11 + 32) = v17;
    v12 = sub_1C9A924C8();
    v14 = v13;

    MEMORY[0x1CCA90230](v12, v14);
  }

  (*(v16 + 8))(v9, v4);
  return 0;
}

uint64_t sub_1C9987FE4()
{
  sub_1C981E1EC();
  sub_1C9A91348();
  swift_allocObject();
  v3[0] = 0x2000000000;
  v3[1] = sub_1C9A91318() | 0x4000000000000000;
  sub_1C97CE3DC(v1, v0);
  sub_1C998C614(v3, v1, v0);
  return v3[0];
}

void sub_1C9988064(unsigned __int8 *md, uint64_t a2, uint64_t a3, unint64_t a4)
{
  data[2] = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      v8 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v7 = a3;
      goto LABEL_8;
    case 2uLL:
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);
LABEL_8:
      sub_1C998CEB0(v7, v8, a4 & 0x3FFFFFFFFFFFFFFFLL, md);
      if (v4)
      {

        __break(1u);
      }

      return;
    case 3uLL:
      memset(data, 0, 14);
      v6 = 0;
      goto LABEL_5;
    default:
      data[0] = a3;
      LOWORD(data[1]) = a4;
      BYTE2(data[1]) = BYTE2(a4);
      BYTE3(data[1]) = BYTE3(a4);
      BYTE4(data[1]) = BYTE4(a4);
      v6 = BYTE6(a4);
      BYTE5(data[1]) = BYTE5(a4);
LABEL_5:
      CC_SHA256(data, v6, md);
      return;
  }
}

unsigned __int8 *sub_1C99881B8(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    return CC_SHA256(result, v3, a3);
  }

  __break(1u);
  return result;
}

void static SNACIUtils.sha256Hash(url:)(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C9A915A8();
  if (!v1)
  {
    sub_1C9987FE4();
    sub_1C998D5E8();
  }

  objc_autoreleasePoolPop(v2);
}

unint64_t sub_1C9988284()
{
  result = qword_1EC3CEAE0;
  if (!qword_1EC3CEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEAE0);
  }

  return result;
}

unint64_t sub_1C9988340()
{
  result = qword_1EC3CEAF8;
  if (!qword_1EC3CEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEAF8);
  }

  return result;
}

unint64_t sub_1C9988394()
{
  result = qword_1EC3CEB00;
  if (!qword_1EC3CEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB00);
  }

  return result;
}

unint64_t sub_1C99883E8()
{
  result = qword_1EC3CEB10;
  if (!qword_1EC3CEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB10);
  }

  return result;
}

unint64_t sub_1C998843C()
{
  result = qword_1EC3CEB30;
  if (!qword_1EC3CEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB30);
  }

  return result;
}

unint64_t sub_1C9988490()
{
  result = qword_1EC3CEB38;
  if (!qword_1EC3CEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB38);
  }

  return result;
}

unint64_t sub_1C99884E4()
{
  result = qword_1EC3CEB40;
  if (!qword_1EC3CEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB40);
  }

  return result;
}

unint64_t sub_1C9988538()
{
  result = qword_1EC3CEB48;
  if (!qword_1EC3CEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB48);
  }

  return result;
}

unint64_t sub_1C998858C()
{
  result = qword_1EC3CEB50;
  if (!qword_1EC3CEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB50);
  }

  return result;
}

void sub_1C99885E0(uint64_t (*a1)(uint64_t (*)(), void *, id *), double (*a2)(void), uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_1C9988658(a1, a2, a3, &v7);
  objc_autoreleasePoolPop(v6);
}

void sub_1C9988658(uint64_t (*a1)(uint64_t (*)(), void *, id *), double (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v30 = a4;
  v35 = a1;
  v36 = a3;
  v34 = a2;
  v39[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1C9A92108();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1C9A92188();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v29 - v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v29 = (v14 + 16);
  v15 = dispatch_semaphore_create(0);
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v14;
  v16[4] = v15;
  v39[0] = 0;

  v31 = v14;

  v37 = v15;
  v34 = v35(sub_1C998C574, v16, v39);
  v35 = v39[0];
  sub_1C9A91698();
  v18 = v17 * 1000.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (v18 >= 9.22337204e18)
  {
    goto LABEL_16;
  }

  v36 = v13;
  v19 = v18 & ~(v18 >> 63);
  sub_1C9A92168();
  *v7 = v19;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F38], v4);
  sub_1C9A92178();
  (*(v5 + 8))(v7, v4);
  v20 = v33;
  v21 = *(v32 + 8);
  v21(v11, v33);
  sub_1C9A930C8();
  if (sub_1C9A92118())
  {
    swift_beginAccess();
    if (*(v13 + 16))
    {
      v21(v38, v20);

      return;
    }

    v25 = v29;
    swift_beginAccess();
    v27 = *v25;
    if (*v25)
    {
      v23 = *v25;
    }

    else
    {
      type metadata accessor for SNError(v26);
      v23 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001ALL, 0x80000001C9ADB8D0);
      v27 = 0;
    }

    v24 = v30;
    swift_willThrow();
    v28 = v27;
  }

  else
  {
    v22 = v34();
    type metadata accessor for SNError(v22);
    v23 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000011, 0x80000001C9ADB8B0);
    swift_willThrow();
    v24 = v30;
  }

  v21(v38, v20);

  *v24 = v23;
}

uint64_t sub_1C9988B6C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0) && [v7 statusCode] == 200)
  {
    swift_beginAccess();
    v8 = 0;
    *(a4 + 16) = 1;
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = 0;
    type metadata accessor for SNError(v9);
    v8 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0x2074736575716572, 0xEE0064656C696166);
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  *(a5 + 16) = v8;

  return sub_1C9A930D8();
}

void sub_1C9988C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C98139FC();
  a19 = v23;
  a20 = v24;
  v139 = v25;
  v140 = v21;
  v129 = v26;
  v128 = v27;
  v29 = v28;
  v31 = v30;
  v146 = v32;
  v148 = v34;
  v149 = v33;
  v124 = v35;
  v138 = a21;
  v132 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97ABFB4(&v124 - v37);
  v145 = sub_1C9A91408();
  sub_1C97AE9C8();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AEAD8();
  v43 = v42 - v41;
  v44 = sub_1C9A91558();
  sub_1C97AE9C8();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97ABF90();
  v147 = v48;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = &v124 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v124 - v53;
  sub_1C9A916E8();
  sub_1C97AE9C8();
  v142 = v56;
  v143 = v55;
  MEMORY[0x1EEE9AC00](v55);
  sub_1C97AEAD8();
  sub_1C998D4D4();
  v136 = sub_1C9A91238();
  sub_1C97AE9C8();
  v135 = v57;
  MEMORY[0x1EEE9AC00](v58);
  sub_1C998D398();
  sub_1C97ABFB4(v59);
  sub_1C998D580(&a13);
  MEMORY[0x1EEE9AC00](v60);
  sub_1C97ABFB4(&v124 - v61);
  v133 = v29;
  sub_1C9A91698();
  v141 = v22;
  sub_1C9A916C8();
  sub_1C9A914A8();
  v62 = *(v46 + 16);
  v46 += 16;
  v149 = v54;
  v150 = v44;
  v137 = v52;
  v126 = v62;
  v62(v54, v52, v44);
  v63 = *(v31 + 16);
  LODWORD(v144) = *MEMORY[0x1E6968F70];
  v64 = v39;
  v65 = (v39 + 104);
  v66 = (v64 + 8);
  v148 = (v46 - 8);
  v127 = v46;
  v146 = (v46 + 16);
  for (i = (v31 + 40); v63; --v63)
  {
    v68 = *i;
    v152 = *(i - 1);
    v153 = v68;
    v69 = v145;
    (*v65)(v43, v144, v145);
    sub_1C98449A8();

    v70 = v147;
    sub_1C9A91548();
    (*v66)(v43, v69);
    v71 = sub_1C998D4E0();
    v72 = v150;
    v73(v71, v150);

    v74 = sub_1C998D4E0();
    v75(v74, v70, v72);
    i += 2;
  }

  v145 = *v148;
  v145(v137, v150);
  v76 = v141;
  v77 = sub_1C9987830();
  v79 = v78;
  v80 = v149;
  v81 = sub_1C9A91508();
  v83 = v82;
  sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
  v84 = swift_allocObject();
  v85 = sub_1C998D3FC(v84, xmmword_1C9AA95C0);
  v144 = v77;
  v85[5].n128_u64[0] = v77;
  v85[5].n128_u64[1] = v79;
  v85[6].n128_u64[0] = v81;
  v85[6].n128_u64[1] = v83;
  v152 = v85;

  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  v86 = sub_1C98449FC();
  sub_1C998D510(v86);

  sub_1C97CB094();
  v87 = v140;
  sub_1C9987A88();
  if (v87)
  {

    v145(v80, v150);
    (*(v142 + 8))(v76, v143);
    goto LABEL_12;
  }

  v90 = v88;
  v91 = v89;

  sub_1C9A91608();
  v140 = 0;
  sub_1C97A5978(v90, v91);
  sub_1C998D434();
  v152 = v92;
  v153 = v93;
  MEMORY[0x1CCA90230](v128, v129);
  MEMORY[0x1CCA90230](58, 0xE100000000000000);
  v94 = sub_1C998D574();
  MEMORY[0x1CCA90230](v94);

  v95 = v150;
  v126(v147, v80, v150);
  v96 = v134;
  sub_1C9A91218();
  sub_1C9A911E8();
  sub_1C998D368();
  sub_1C998D534(v144, v79);

  sub_1C998D334();
  sub_1C97C924C();
  sub_1C9A91228();

  sub_1C9A911F8();
  v145(v80, v95);
  (*(v142 + 8))(v76, v143);
  v97 = swift_allocBox();
  v148 = v98;
  v149 = v97;
  sub_1C97ACC50(v98, 1, 1, v95);
  sub_1C97F07FC();
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v147 = (v99 + 16);
  v100 = v135;
  v101 = v131;
  v102 = v136;
  (*(v135 + 16))(v131, v96, v136);
  v103 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v104 = (v130 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  v106 = v101;
  v107 = v149;
  (*(v100 + 32))(v105 + v103, v106, v102);
  *(v105 + v104) = v107;
  *(v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8)) = v99;

  v108 = v140;
  sub_1C99885E0(sub_1C998C4D8, v105, v133);
  if (v108)
  {
    v110 = sub_1C97BE374();
    v111(v110);
LABEL_11:

    goto LABEL_12;
  }

  v112 = v148;
  sub_1C998D3E0(v109, &v152);
  v113 = v112;
  v114 = v125;
  sub_1C9835DE0(v113, v125);
  v115 = v150;
  if (sub_1C97ABF20(v114, 1, v150) != 1)
  {
    (*(v135 + 8))(v134, v136);
    (*v146)(v124, v114, v115);
    goto LABEL_11;
  }

  v116 = sub_1C97DA1E0(v114, &qword_1EC3C7FE0, &unk_1C9AA1890);
  v117 = v147;
  sub_1C998D3E0(v116, &v151);
  v119 = *v117;
  v120 = v135;
  v121 = v134;
  if (!*v117)
  {
    type metadata accessor for SNError(v118);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000016, 0x80000001C9ADB890);
    v119 = 0;
  }

  v122 = v136;
  swift_willThrow();
  v123 = v119;
  (*(v120 + 8))(v121, v122);

LABEL_12:
  sub_1C9971578();
  sub_1C98139E0();
}

id (*sub_1C99895D4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v11 = [objc_opt_self() sharedSession];
  v12 = sub_1C9A91208();
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a7;
  v17[4] = sub_1C998C580;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C9989BA4;
  v17[3] = &unk_1F4945600;
  v14 = _Block_copy(v17);

  v15 = [v11 downloadTaskWithRequest:v12 completionHandler:v14];
  _Block_release(v14);

  [v15 resume];
  *(swift_allocObject() + 16) = v15;
  return sub_1C998D328;
}

void sub_1C9989768(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, void *), uint64_t a6, uint64_t a7)
{
  v42 = a6;
  v43 = a5;
  v41 = a2;
  v44[3] = *MEMORY[0x1E69E9840];
  v10 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - v14;
  v16 = sub_1C9A91558();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  v23 = swift_projectBox();
  sub_1C9835DE0(a1, v15);
  if (sub_1C97ABF20(v15, 1, v16) == 1)
  {
    sub_1C97DA1E0(v15, &qword_1EC3C7FE0, &unk_1C9AA1890);
    if (a3)
    {
      v25 = a3;
    }

    else
    {
      type metadata accessor for SNError(v24);
      v25 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0x642064656C696166, 0xEF64616F6C6E776FLL);
    }

    swift_willThrow();
    v27 = a3;
  }

  else
  {
    v26 = (*(v17 + 32))(v22, v15, v16);
    type metadata accessor for SNFileUtils(v26);
    sub_1C9A457AC(v22, 0x2D6465766173, 0xE600000000000000);
    v39 = v23;
    v40 = a3;
    v29 = [objc_opt_self() defaultManager];
    v30 = sub_1C9A91488();
    v31 = sub_1C9A91488();
    v44[0] = 0;
    v32 = [v29 moveItemAtURL:v30 toURL:v31 error:v44];

    v33 = v44[0];
    if (v32)
    {
      (*(v17 + 16))(v13, v20, v16);
      sub_1C97ACC50(v13, 0, 1, v16);
      v34 = v39;
      swift_beginAccess();
      v35 = v33;
      sub_1C998C5A4(v13, v34);
      v43(v41, v40);
      v36 = *(v17 + 8);
      v36(v20, v16);
      v36(v22, v16);
      return;
    }

    v37 = v44[0];
    v25 = sub_1C9A913C8();

    swift_willThrow();
    v38 = *(v17 + 8);
    v38(v20, v16);
    v38(v22, v16);
  }

  swift_beginAccess();
  v28 = *(a7 + 16);
  *(a7 + 16) = v25;
}

uint64_t sub_1C9989BA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1C9A914F8();
    v12 = sub_1C9A91558();
    v13 = 0;
  }

  else
  {
    v12 = sub_1C9A91558();
    v13 = 1;
  }

  sub_1C97ACC50(v10, v13, 1, v12);

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_1C97DA1E0(v10, &qword_1EC3C7FE0, &unk_1C9AA1890);
}

id (*sub_1C9989CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = sub_1C9A915A8();
  v8 = v7;
  v9 = [objc_opt_self() sharedSession];
  v10 = sub_1C9A91208();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v15[4] = sub_1C998D160;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1C9989EC8;
  v15[3] = &unk_1F4945768;
  v12 = _Block_copy(v15);

  v13 = sub_1C998CF5C(v10, v6, v8, v12, v9);
  _Block_release(v12);

  [v13 resume];
  sub_1C97A5978(v6, v8);
  *(swift_allocObject() + 16) = v13;
  return sub_1C998D328;
}

uint64_t sub_1C9989EC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1C9A91618();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1C97AA780(v6, v10);
}

void sub_1C9989F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C98139FC();
  v161 = v21;
  v160 = v23;
  v151 = v24;
  v150 = v25;
  v27 = v26;
  v29 = v28;
  v172 = v31;
  v173 = v30;
  v159 = a21;
  v179[3] = *MEMORY[0x1E69E9840];
  v169 = sub_1C9A91408();
  sub_1C97AE9C8();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AEAD8();
  v168 = v36 - v35;
  v37 = sub_1C9A91558();
  sub_1C97AE9C8();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97ABF90();
  v170 = v41;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v146 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v146 - v46;
  v163 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v162 = v48;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AEAD8();
  sub_1C998D5AC();
  v155 = sub_1C9A91238();
  sub_1C97AE9C8();
  v156 = v50;
  MEMORY[0x1EEE9AC00](v51);
  sub_1C998D398();
  sub_1C97ABFB4(v52);
  sub_1C998D580(v179);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97ABFB4(&v146 - v54);
  v55 = swift_allocObject();
  v164 = v55;
  *(v55 + 16) = xmmword_1C9ABE270;
  v146 = v55 + 16;
  v153 = v27;
  sub_1C9A91698();
  v165 = v22;
  sub_1C9A916C8();
  sub_1C9A914A8();
  v56 = *(v39 + 16);
  v39 += 16;
  v173 = v47;
  v158 = v45;
  v172 = v37;
  v147 = v56;
  v56(v47, v45, v37);
  v57 = *(v29 + 16);
  v167 = *MEMORY[0x1E6968F70];
  v166 = (v33 + 104);
  v58 = (v33 + 8);
  v171 = (v39 - 8);
  v148 = v39;
  v59 = (v39 + 16);
  v60 = (v29 + 40);
  for (i = v57; v57; --v57)
  {
    v61 = *v60;
    *&v177 = *(v60 - 1);
    *(&v177 + 1) = v61;
    v62 = v168;
    v63 = v169;
    (*v166)(v168, v167, v169);
    sub_1C98449A8();

    v64 = v170;
    v65 = v173;
    sub_1C9A91548();
    (*v58)(v62, v63);
    v66 = v172;
    v67 = sub_1C998D4E0();
    v68(v67, v66);

    (*v59)(v65, v64, v66);
    v60 += 2;
  }

  v169 = *v171;
  (v169)(v158, v172);
  v69 = v165;
  v70 = sub_1C9987830();
  v72 = v71;
  v73 = v164;
  if (i)
  {
    v74 = sub_1C9A91508();
    v76 = sub_1C9A16980(v74, v75);
    v78 = v77;

    if (!v78)
    {
LABEL_10:
      *&v177 = sub_1C9A91508();
      *(&v177 + 1) = v81;

      MEMORY[0x1CCA90230](47, 0xE100000000000000);

      v83 = *(&v177 + 1);
      v82 = v177;
      goto LABEL_13;
    }

    if (v76 == 47 && v78 == 0xE100000000000000)
    {
    }

    else
    {
      v80 = sub_1C9A93B18();

      if ((v80 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v82 = sub_1C9A91508();
  v83 = v84;
LABEL_13:
  sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1C9AA95C0;
  *(v85 + 32) = 5522759;
  *(v85 + 40) = 0xE300000000000000;
  *(v85 + 48) = 0;
  *(v85 + 56) = 0xE000000000000000;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0xE000000000000000;
  *(v85 + 80) = v70;
  *(v85 + 88) = v72;
  *(v85 + 96) = v82;
  *(v85 + 104) = v83;
  *&v177 = v85;

  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  sub_1C98449FC();
  sub_1C9A923C8();

  v86 = v161;
  sub_1C9987A88();
  if (!v86)
  {
    v90 = v87;
    v91 = v88;

    v92 = sub_1C9A91608();
    v168 = 0;
    v93 = v92;
    v95 = v94;
    sub_1C97A5978(v90, v91);
    sub_1C998D434();
    *&v177 = v96;
    *(&v177 + 1) = v97;
    MEMORY[0x1CCA90230](v150, v151);
    MEMORY[0x1CCA90230](58, 0xE100000000000000);
    MEMORY[0x1CCA90230](v93, v95);

    v147(v170, v173, v172);
    v98 = v154;
    sub_1C9A91218();
    sub_1C9A911E8();
    sub_1C998D368();
    sub_1C998D534(v70, v72);

    sub_1C998D334();
    sub_1C97C924C();
    sub_1C9A91228();

    sub_1C9A911F8();
    v99 = sub_1C97A7890();
    v169(v99);
    sub_1C998D484();
    v100(v165, v163);
    v101 = v156;
    v102 = v152;
    v103 = v155;
    (*(v156 + 16))(v152, v98, v155);
    v104 = (*(v101 + 80) + 16) & ~*(v101 + 80);
    v105 = (v149 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
    v106 = swift_allocObject();
    (*(v101 + 32))(v106 + v104, v102, v103);
    *(v106 + v105) = v73;

    v107 = v168;
    sub_1C99885E0(sub_1C998CFCC, v106, v153);
    if (v107)
    {
      v108 = sub_1C998D358();
      v109(v108);

      goto LABEL_18;
    }

    swift_beginAccess();
    if (*(v73 + 24) >> 60 != 15)
    {
      v168 = 0;
      v110 = objc_opt_self();
      v111 = sub_1C97BE374();
      sub_1C97CE3DC(v111, v112);
      sub_1C97BE374();
      v113 = sub_1C9A915F8();
      v114 = sub_1C97BE374();
      sub_1C97AA780(v114, v115);
      *&v177 = 0;
      v116 = [v110 JSONObjectWithData:v113 options:0 error:&v177];

      if (!v116)
      {
        v133 = v177;
        sub_1C9A913C8();

        swift_willThrow();
        v134 = sub_1C998D358();
        v135(v134);
LABEL_37:

        goto LABEL_15;
      }

      v117 = v177;
      sub_1C9A93318();
      swift_unknownObjectRelease();
      sub_1C97A2CEC(&qword_1EC3C6330, qword_1C9A9BBC0);
      v118 = MEMORY[0x1E69E7CA0];
      sub_1C998D464();
      if (swift_dynamicCast())
      {
        sub_1C9878160(0x73746C75736572, 0xE700000000000000, v174, &v177);

        if (v178)
        {
          sub_1C97A2CEC(&qword_1EC3CEC18, &unk_1C9ABEBF0);
          sub_1C998D464();
          if (swift_dynamicCast())
          {
            v119 = v174;
            v120 = *(v174 + 16);
            if (!v120)
            {

              v142 = sub_1C998D358();
              v143(v142);

              goto LABEL_18;
            }

            v176 = MEMORY[0x1E69E7CC0];
            v172 = v120;
            sub_1C97B7B08(0, v120, 0);
            v121 = 0;
            v122 = v176;
            v173 = v119;
            while (1)
            {
              if (v121 >= *(v119 + 16))
              {
                __break(1u);
              }

              v123 = *(v119 + 8 * v121 + 32);
              v124 = *(v123 + 16);

              if (!v124)
              {
                break;
              }

              v125 = sub_1C9A32230(7955819, 0xE300000000000000);
              if ((v126 & 1) == 0)
              {
                break;
              }

              sub_1C97BD360(*(v123 + 56) + 32 * v125, &v177);
              sub_1C998D464();
              if ((swift_dynamicCast() & 1) == 0)
              {
                break;
              }

              v127 = v118;
              v129 = v174;
              v128 = v175;

              v176 = v122;
              v131 = *(v122 + 16);
              v130 = *(v122 + 24);
              if (v131 >= v130 >> 1)
              {
                sub_1C97B7B08((v130 > 1), v131 + 1, 1);
                v122 = v176;
              }

              ++v121;
              *(v122 + 16) = v131 + 1;
              v132 = v122 + 16 * v131;
              *(v132 + 32) = v129;
              *(v132 + 40) = v128;
              v118 = v127;
              v119 = v173;
              if (v172 == v121)
              {
                v144 = sub_1C998D358();
                v145(v144);

                goto LABEL_18;
              }
            }

            sub_1C97A8E8C();
            sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
            *v139 = 0;
            swift_willThrow();

            v140 = sub_1C998D358();
            v141(v140);

            goto LABEL_15;
          }
        }

        else
        {
          sub_1C97DA1E0(&v177, &unk_1EC3C5E60, qword_1C9A9AE10);
        }
      }
    }

    sub_1C97A8E8C();
    sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    *v136 = 0;
    swift_willThrow();
    v137 = sub_1C998D358();
    v138(v137);
    goto LABEL_37;
  }

  (v169)(v173, v172);
  sub_1C998D484();
  v89(v69, v163);
LABEL_15:

LABEL_18:
  sub_1C98139E0();
}

id (*sub_1C998ABEC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v9 = [objc_opt_self() sharedSession];
  v10 = sub_1C9A91208();
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a1;
  v11[4] = a2;
  v15[4] = sub_1C998D05C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1C9989EC8;
  v15[3] = &unk_1F49456C8;
  v12 = _Block_copy(v15);

  v13 = [v9 dataTaskWithRequest:v10 completionHandler:v12];
  _Block_release(v12);

  [v13 resume];
  *(swift_allocObject() + 16) = v13;
  return sub_1C98E3404;
}

uint64_t sub_1C998AD6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v12 = *(a5 + 16);
  v13 = *(a5 + 24);
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  sub_1C97DA2E8(a1, a2);
  sub_1C97AA780(v12, v13);
  return a6(a3, a4);
}

double static SNACIUtils.keyAndBucket(_:)(_OWORD *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    v16 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = v16[2];
    v17 = v16[3];
    *&v33[0] = v16[4];
    swift_retain_n();

    static SNACIUtils.keyAndBucket(_:)(&v34, v33);
    v20 = v19;

    sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = v18;
    *(inited + 40) = v17;
    *&v33[0] = v20;

    sub_1C98D07A0(inited);
  }

  else
  {
    v10 = *(v9 + 16);
    v11 = *(v9 + 32);
    v12 = *(v9 + 64);
    v33[2] = *(v9 + 48);
    v33[3] = v12;
    v33[0] = v10;
    v33[1] = v11;
    v13 = *(v9 + 32);
    v34 = *(v9 + 16);
    v35 = v13;
    v36 = *(v9 + 48);
    v37 = v12;
    v14 = sub_1C998D418(a1, a2, a3, a4, a5, a6, a7, a8, v25, v26, v27, v28, v29, v30, v31, v32, v10);
    sub_1C99882D8(v14, v15);
  }

  v22 = v35;
  *a1 = v34;
  a1[1] = v22;
  result = *&v36;
  v24 = v37;
  a1[2] = v36;
  a1[3] = v24;
  return result;
}

uint64_t static SNACIUtils.listObjectPaths(prefix:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = sub_1C998AE10(&v14);
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v14 = MEMORY[0x1E69E7CC0];
      sub_1C97B82C0(0, v6, 0);
      v1 = v14;
      v7 = (v5 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v14 = v1;
        v10 = *(v1 + 16);
        v11 = *(v1 + 24);

        if (v10 >= v11 >> 1)
        {
          sub_1C97B82C0(v11 > 1, v10 + 1, 1);
          v1 = v14;
        }

        *(v1 + 16) = v10 + 1;
        v12 = (v1 + 24 * v10);
        v12[4] = v8;
        v12[5] = v9;
        v12[6] = v3;
        v7 += 2;
        --v6;
      }

      while (v6);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v1;
}

uint64_t static SNACIUtils.downloadObject(path:destination:)(uint64_t a1, uint64_t a2)
{
  sub_1C97DAA28();
  v3 = swift_allocObject();
  sub_1C998D494(v3);

  v12 = sub_1C998D418(v4, v5, v6, v7, v8, v9, v10, v11, v32, v34, v36, v38, v40, v42, v44, v46, SLOBYTE(v48[0]));
  static SNACIUtils.keyAndBucket(_:)(v12, v13, v14, v15, v16, v17, v18, v19);
  v21 = v20;

  sub_1C998D4EC(v22, v23, v24, v25, v26, v27, v28, v29, v33, v35, v37, v39, v41, v43, v45, v47, v48[0], v48[1], v48[2], v48[3], v48[4]);
  sub_1C998B31C(v30, v21, a2);

  return sub_1C9988310(v48);
}

uint64_t static SNACIUtils.downloadObject(path:)()
{
  sub_1C97DAA28();
  v0 = swift_allocObject();
  sub_1C998D494(v0);

  v9 = sub_1C998D418(v1, v2, v3, v4, v5, v6, v7, v8, v29, v31, v33, v35, v37, v39, v41, v43, SLOBYTE(v45[0]));
  static SNACIUtils.keyAndBucket(_:)(v9, v10, v11, v12, v13, v14, v15, v16);
  v18 = v17;

  sub_1C998D4EC(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v34, v36, v38, v40, v42, v44, v45[0], v45[1], v45[2], v45[3], v45[4]);
  sub_1C998B768(v27, v18);

  return sub_1C9988310(v45);
}

uint64_t static SNACIUtils.toPathOrBucket(bucket:pathComponents:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v33 = *a1;
  v6 = swift_allocObject();
  v14 = v6;
  v15 = a1[1];
  v6[1] = *a1;
  v6[2] = v15;
  v16 = a1[3];
  v6[3] = a1[2];
  v6[4] = v16;
  v17 = *(a2 + 16);
  for (i = (a2 + 40); v17; --v17)
  {
    v20 = *(i - 1);
    v19 = *i;
    sub_1C97DAA28();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    *(v21 + 32) = v14;
    v14 = v21 | 0x8000000000000000;

    i += 2;
  }

  *a3 = v14;
  v22 = sub_1C998D418(v6, v7, v8, v9, v10, v11, v12, v13, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  return sub_1C99882D8(v22, v23);
}

unint64_t sub_1C998BB28()
{
  result = qword_1EC3CEB70;
  if (!qword_1EC3CEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB70);
  }

  return result;
}

unint64_t sub_1C998BB7C()
{
  result = qword_1EC3CEB78;
  if (!qword_1EC3CEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB78);
  }

  return result;
}

unint64_t sub_1C998BBD4()
{
  result = qword_1EC3CEB80;
  if (!qword_1EC3CEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB80);
  }

  return result;
}

unint64_t sub_1C998BC2C()
{
  result = qword_1EC3CEB88;
  if (!qword_1EC3CEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB88);
  }

  return result;
}

unint64_t sub_1C998BC84()
{
  result = qword_1EC3CEB90;
  if (!qword_1EC3CEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB90);
  }

  return result;
}

uint64_t sub_1C998BCD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C998BD18(uint64_t result, int a2, int a3)
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

_BYTE *sub_1C998BDC4(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for S3BucketAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C998BF60()
{
  result = qword_1EC3CEB98;
  if (!qword_1EC3CEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEB98);
  }

  return result;
}

unint64_t sub_1C998BFB8()
{
  result = qword_1EC3CEBA0;
  if (!qword_1EC3CEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBA0);
  }

  return result;
}

unint64_t sub_1C998C010()
{
  result = qword_1EC3CEBA8;
  if (!qword_1EC3CEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBA8);
  }

  return result;
}

unint64_t sub_1C998C068()
{
  result = qword_1EC3CEBB0;
  if (!qword_1EC3CEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBB0);
  }

  return result;
}

unint64_t sub_1C998C0C0()
{
  result = qword_1EC3CEBB8;
  if (!qword_1EC3CEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBB8);
  }

  return result;
}

unint64_t sub_1C998C118()
{
  result = qword_1EC3CEBC0;
  if (!qword_1EC3CEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBC0);
  }

  return result;
}

unint64_t sub_1C998C170()
{
  result = qword_1EC3CEBC8;
  if (!qword_1EC3CEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBC8);
  }

  return result;
}

unint64_t sub_1C998C1C8()
{
  result = qword_1EC3CEBD0;
  if (!qword_1EC3CEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBD0);
  }

  return result;
}

unint64_t sub_1C998C220()
{
  result = qword_1EC3CEBD8;
  if (!qword_1EC3CEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBD8);
  }

  return result;
}

unint64_t sub_1C998C278()
{
  result = qword_1EC3CEBE0;
  if (!qword_1EC3CEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBE0);
  }

  return result;
}

unint64_t sub_1C998C2D0()
{
  result = qword_1EC3CEBE8;
  if (!qword_1EC3CEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBE8);
  }

  return result;
}

unint64_t sub_1C998C328()
{
  result = qword_1EC3CEBF0;
  if (!qword_1EC3CEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBF0);
  }

  return result;
}

unint64_t sub_1C998C380()
{
  result = qword_1EC3CEBF8;
  if (!qword_1EC3CEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEBF8);
  }

  return result;
}

unint64_t sub_1C998C3D8()
{
  result = qword_1EC3CEC00;
  if (!qword_1EC3CEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEC00);
  }

  return result;
}

unint64_t sub_1C998C430()
{
  result = qword_1EC3CEC08;
  if (!qword_1EC3CEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEC08);
  }

  return result;
}

unint64_t sub_1C998C484()
{
  result = qword_1EC3CEC10;
  if (!qword_1EC3CEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEC10);
  }

  return result;
}

id (*sub_1C998C4D8())()
{
  sub_1C998D3BC();
  v0 = sub_1C9A91238();
  sub_1C97BE2AC(v0);
  sub_1C998D444();
  v1 = sub_1C998D474();

  return sub_1C99895D4(v1, v2, v7, v3, v4, v5, v6);
}

uint64_t sub_1C998C58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C998C5A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C998C614(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v14 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1C97CE3DC(a2, a3);
      sub_1C97CE3DC(a2, a3);
      sub_1C97CE3DC(v4, v3);
      sub_1C97A5978(v4, v3);
      *a1 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      v15 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v15 < v4)
      {
        goto LABEL_15;
      }

      if (sub_1C9A91308() && __OFSUB__(v4, sub_1C9A91338()))
      {
        goto LABEL_16;
      }

      sub_1C9A91348();
      swift_allocObject();
      v16 = sub_1C9A912F8();

      v14 = v16;
LABEL_10:
      if (v15 < v4)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_1C97CE3DC(a2, a3);

      sub_1C998CDF0(v4, v4 >> 32, v14, a2, a3);

      sub_1C97A5978(a2, a3);
      sub_1C97A5978(a2, a3);
      result = sub_1C97A5978(a2, a3);
      v13 = v14 | 0x4000000000000000;
LABEL_12:
      *a1 = v4;
      a1[1] = v13;
      return result;
    case 2uLL:
      sub_1C97CE3DC(a2, a3);
      sub_1C97CE3DC(a2, a3);
      sub_1C97CE3DC(v4, v3);
      sub_1C97A5978(v4, v3);
      *&md = v4;
      *(&md + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      sub_1C9A91588();
      v4 = md;
      v11 = *(md + 16);
      v12 = *(md + 24);
      sub_1C97CE3DC(a2, a3);
      sub_1C998CDF0(v11, v12, *(&md + 1), a2, a3);
      sub_1C97A5978(a2, a3);
      sub_1C97A5978(a2, a3);
      result = sub_1C97A5978(a2, a3);
      v13 = *(&md + 1) | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      *(&md + 7) = 0;
      *&md = 0;
      sub_1C9988064(&md, &md, a2, a3);
      return sub_1C97A5978(a2, a3);
    default:
      sub_1C97CE3DC(a2, a3);
      sub_1C97CE3DC(a2, a3);
      sub_1C97A5978(v4, v3);
      *&md = v4;
      WORD4(md) = v3;
      BYTE10(md) = BYTE2(v3);
      BYTE11(md) = BYTE3(v3);
      BYTE12(md) = BYTE4(v3);
      BYTE13(md) = BYTE5(v3);
      BYTE14(md) = BYTE6(v3);
      sub_1C9988064(&md, &md + BYTE6(v3), a2, a3);
      v8 = md;
      v9 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
      sub_1C97A5978(a2, a3);
      sub_1C97A5978(a2, a3);
      result = sub_1C97A5978(a2, a3);
      *a1 = v8;
      a1[1] = v9;
      return result;
  }
}

void sub_1C998CA4C(uint64_t *a1, const void *a2, size_t a3, void *data, size_t dataLength)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = a1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C97A5978(v6, v5);
      *a1 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v6 >> 32;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }

      if (v20 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1C9A91308() && __OFSUB__(v6, sub_1C9A91338()))
      {
        goto LABEL_24;
      }

      sub_1C9A91348();
      swift_allocObject();
      v21 = sub_1C9A912F8();

      v18 = v21;
      v20 = v6 >> 32;
LABEL_13:
      if (v20 < v6)
      {
        goto LABEL_20;
      }

      v22 = sub_1C9A91308();
      if (!v22)
      {
        goto LABEL_26;
      }

      v23 = v22;
      v24 = sub_1C9A91338();
      v25 = v6 - v24;
      if (__OFSUB__(v6, v24))
      {
        goto LABEL_22;
      }

      sub_1C9A91328();
      CCHmac(0, a2, a3, data, dataLength, (v23 + v25));

      v17 = v18 | 0x4000000000000000;
      *a1 = v6;
      goto LABEL_17;
    case 2uLL:

      sub_1C97A5978(v6, v5);
      *&macOut = v6;
      *(&macOut + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      sub_1C9A91588();
      v12 = *(macOut + 16);
      v11 = *(macOut + 24);
      v13 = sub_1C9A91308();
      if (!v13)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v14 = v13;
      v15 = sub_1C9A91338();
      v16 = v12 - v15;
      if (__OFSUB__(v12, v15))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (__OFSUB__(v11, v12))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      sub_1C9A91328();
      CCHmac(0, a2, a3, data, dataLength, (v14 + v16));
      v17 = *(&macOut + 1) | 0x8000000000000000;
      *a1 = macOut;
LABEL_17:
      a1[1] = v17;
      return;
    case 3uLL:
      *(&macOut + 7) = 0;
      *&macOut = 0;
      CCHmac(0, a2, a3, data, dataLength, &macOut);
      return;
    default:
      sub_1C97A5978(v6, v5);
      *&macOut = v6;
      WORD4(macOut) = v5;
      BYTE10(macOut) = BYTE2(v5);
      BYTE11(macOut) = BYTE3(v5);
      BYTE12(macOut) = BYTE4(v5);
      BYTE13(macOut) = BYTE5(v5);
      BYTE14(macOut) = BYTE6(v5);
      CCHmac(0, a2, a3, data, dataLength, &macOut);
      v10 = DWORD2(macOut) | ((WORD6(macOut) | (BYTE14(macOut) << 16)) << 32);
      *a1 = macOut;
      a1[1] = v10;
      return;
  }
}

uint64_t sub_1C998CDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C9A91308();
  if (!result)
  {
    goto LABEL_10;
  }

  v10 = result;
  result = sub_1C9A91338();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = sub_1C9A91328();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  sub_1C9988064((v10 + v11), v10 + v11 + v15, a4, a5);
  return sub_1C97A5978(a4, a5);
}

unsigned __int8 *sub_1C998CEB0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  result = sub_1C9A91308();
  v8 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1C9A91328();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1C99881B8(v8, v14, a4);
}

id sub_1C998CF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C9A915F8();
  v9 = [a5 uploadTaskWithRequest:a1 fromData:v8 completionHandler:a4];

  return v9;
}

id (*sub_1C998CFCC())()
{
  sub_1C998D3BC();
  v0 = sub_1C9A91238();
  sub_1C97BE2AC(v0);
  sub_1C998D444();
  v1 = sub_1C998D474();

  return sub_1C998ABEC(v1, v2, v6, v3, v4, v5);
}

id (*sub_1C998D068())()
{
  sub_1C998D3BC();
  v0 = sub_1C9A91558();
  sub_1C97BE2AC(v0);
  v1 = sub_1C9A91238();
  sub_1C97BE2AC(v1);
  sub_1C998D444();
  v2 = sub_1C998D474();

  return sub_1C9989CD4(v2, v3, v4, v5);
}

unint64_t sub_1C998D190()
{
  result = qword_1EC3CEC20;
  if (!qword_1EC3CEC20)
  {
    sub_1C9A91658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEC20);
  }

  return result;
}

_BYTE *sub_1C998D1E8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C998D2C4()
{
  result = qword_1EC3CEC28;
  if (!qword_1EC3CEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEC28);
  }

  return result;
}

uint64_t sub_1C998D368()
{

  return sub_1C9A91228();
}

uint64_t sub_1C998D3E0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

__n128 *sub_1C998D3FC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  *(&result[2] + 8) = 0xE300000000000000;
  *(&result[3] + 8) = 0xE000000000000000;
  result[4].n128_u64[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1C998D494(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v3;
}

uint64_t sub_1C998D510(uint64_t a1)
{

  return sub_1C9A923C8();
}

uint64_t sub_1C998D534(uint64_t a1, uint64_t a2)
{

  return sub_1C9A91228();
}

uint64_t sub_1C998D550(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C998D5E8()
{

  return sub_1C97A5978(v0, v1);
}

id sub_1C998D608(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1C97BD318(a4, 0, &unk_1EC3C5500, 0x1E695FED0);
  v6 = sub_1C9A92768();

  v7 = [swift_getObjCClassFromMetadata() multiArrayByConcatenatingMultiArrays:v6 alongAxis:a2 dataType:a3];

  return v7;
}

uint64_t sub_1C998D6A4(void *a1)
{
  v2 = [a1 count];
  if (v2 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = sub_1C9A08790(0, v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v6 = 1;
    while (v4 <= *(v3 + 16))
    {
      v7 = *(v3 + 8 * v4 + 24);
      sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1C9A9DF30;
      *(v8 + 32) = sub_1C9A92B88();
      sub_1C98D0390(v5);
      v5 = v8;
      v9 = [a1 objectAtIndex_];
      sub_1C9A93318();
      swift_unknownObjectRelease();
      sub_1C97BD318(v10, 0, &qword_1EC3C54B0, 0x1E696AD98);
      swift_dynamicCast();
      v11 = [v13 integerValue];

      if ((v6 * v11) >> 64 != (v6 * v11) >> 63)
      {
        goto LABEL_10;
      }

      v6 *= v11;
      if (!--v4)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:

  return MEMORY[0x1E69E7CC0];
}

id sub_1C998D85C(void *a1)
{
  if (sub_1C998F684(a1))
  {

    return a1;
  }

  else
  {
    sub_1C97BD318(v1, 0, &unk_1EC3C5500, 0x1E695FED0);
    sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C9A9DF30;
    *(v3 + 32) = a1;
    v4 = [a1 dataType];
    return sub_1C998D608(v3, 0, v4, v5);
  }
}

uint64_t sub_1C998D924(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C998D968(void *a1)
{
  result = sub_1C998F684(a1);
  if ((result & 1) == 0)
  {
    type metadata accessor for SNError(v2);
    sub_1C98573F8();
    v3 = sub_1C98E5A3C();
    v8 = sub_1C9929478(v3, v4, 4, v5, v6, v7);
    return sub_1C9991C30(v8);
  }

  return result;
}

uint64_t sub_1C998D9CC(uint64_t a1, uint64_t a2)
{
  v80 = a1;
  v81 = a2;
  sub_1C97A2CEC(&qword_1EC3CEC30, &unk_1C9ABECF0);
  sub_1C97AE9C8();
  v78 = v3;
  v79 = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C98435A0();
  v74 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v72 - v7;
  v8 = sub_1C97A2CEC(&qword_1EC3CEC38, &qword_1C9ABED00);
  sub_1C97AE9C8();
  v75 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98435A0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  v76 = sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  sub_1C97AE9C8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C98435A0();
  v73 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  type metadata accessor for ShapedArray(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C98435A0();
  v28 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v72 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v72 - v34;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C9990A84(v80, &v72 - v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v38 = v18;
      v39 = v18 + 32;
      v40 = *(v18 + 32);
      v41 = sub_1C9991C04();
      v42 = v76;
      v40(v41);
      sub_1C9990A84(v81, v35);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = v73;
        (v40)(v73, v35, v42);
        sub_1C9A91B78();
        v44 = sub_1C9A91B78();
        sub_1C9991B70(v44);
        sub_1C9991BD8();

        if (v39)
        {
          sub_1C9A91B98();
          v45 = sub_1C9A91B98();
          sub_1C9991B70(v45);
          sub_1C9991BD8();

          sub_1C99914DC(&qword_1EC3C8A70, &qword_1EC3C8A38, &unk_1C9AA4F50);
          sub_1C98BBB68();
          sub_1C9A91BC8();
          sub_1C98BBB68();
          sub_1C9A91BC8();
          v46 = sub_1C9991BBC();
          v48 = sub_1C9807FAC(v46, v47);
        }

        else
        {
          v48 = 0;
        }

        v64 = *(v38 + 8);
        v64(v43, v42);
        v64(v24, v42);
        return v48 & 1;
      }

      (*(v38 + 8))(v24, v42);
      v52 = v35;
LABEL_13:
      sub_1C9991530(v52);
      v48 = 0;
      return v48 & 1;
    }

    v54 = v77;
    v53 = v78;
    v55 = v78 + 32;
    v56 = *(v78 + 32);
    v57 = sub_1C98BBB68();
    v58 = v79;
    v56(v57);
    sub_1C9990A84(v81, v28);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v53 + 8))(v54, v58);
      v52 = v28;
      goto LABEL_13;
    }

    v59 = v74;
    (v56)(v74, v28, v58);
    sub_1C9A91B78();
    v60 = sub_1C9A91B78();
    sub_1C9991B70(v60);
    sub_1C9991BD8();

    if (v55)
    {
      sub_1C9A91B98();
      v61 = sub_1C9A91B98();
      sub_1C9991B70(v61);
      sub_1C9991BD8();

      sub_1C99914DC(&qword_1EC3CED00, &qword_1EC3CEC30, &unk_1C9ABECF0);
      sub_1C9A91BC8();
      sub_1C9A91BC8();
      v62 = sub_1C9991BBC();
      v48 = sub_1C9809230(v62, v63);
    }

    else
    {
      v48 = 0;
    }

    v69 = *(v53 + 8);
    v69(v59, v58);
    v69(v54, v58);
  }

  else
  {
    v49 = v75;
    v50 = *(v75 + 32);
    v51 = sub_1C98BBB68();
    v50(v51);
    sub_1C9990A84(v81, v32);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v49 + 8))(v16, v8);
      v52 = v32;
      goto LABEL_13;
    }

    (v50)(v13, v32, v8);
    sub_1C9A91B78();
    v65 = sub_1C9A91B78();
    sub_1C9991B70(v65);
    sub_1C9991BD8();

    if (v32)
    {
      sub_1C9A91B98();
      v66 = sub_1C9A91B98();
      sub_1C9991B70(v66);
      sub_1C9991BD8();

      sub_1C99914DC(&qword_1EC3CED08, &qword_1EC3CEC38, &qword_1C9ABED00);
      sub_1C9A91BC8();
      sub_1C9A91BC8();
      v67 = sub_1C9991BBC();
      v48 = sub_1C9808DA4(v67, v68);
    }

    else
    {
      v48 = 0;
    }

    v70 = *(v49 + 8);
    v70(v13, v8);
    v70(v16, v8);
  }

  return v48 & 1;
}

uint64_t sub_1C998E0EC(uint64_t a1)
{
  v28 = a1;
  v1 = sub_1C97A2CEC(&qword_1EC3CEC30, &unk_1C9ABECF0);
  sub_1C97AE9C8();
  v26 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  v6 = sub_1C97A2CEC(&qword_1EC3CEC38, &qword_1C9ABED00);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  sub_1C97AE9C8();
  v14 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  type metadata accessor for ShapedArray(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AEAD8();
  v21 = v20 - v19;
  sub_1C9990A84(v27, v20 - v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v14 + 32))(v17, v21, v12);
      sub_1C99914DC(&qword_1EC3C8A70, &qword_1EC3C8A38, &unk_1C9AA4F50);
      sub_1C9A91BC8();
      sub_1C97C80D0();

      return (*(v14 + 8))(v17, v12);
    }

    else
    {
      v24 = v26;
      (*(v26 + 32))(v5, v21, v1);
      sub_1C99914DC(&qword_1EC3CED00, &qword_1EC3CEC30, &unk_1C9ABECF0);
      sub_1C9A91BC8();
      sub_1C97C8A94();

      return (*(v24 + 8))(v5, v1);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v21, v6);
    sub_1C99914DC(&qword_1EC3CED08, &qword_1EC3CEC38, &qword_1C9ABED00);
    sub_1C9A91BC8();
    sub_1C97C8A3C();

    return (*(v8 + 8))(v11, v6);
  }
}

uint64_t sub_1C998E454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x343674616F6C66 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x323374616F6C66 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
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

uint64_t sub_1C998E568(char a1)
{
  if (!a1)
  {
    return 0x343674616F6C66;
  }

  if (a1 == 1)
  {
    return 0x323374616F6C66;
  }

  return 0x3233746E69;
}

uint64_t sub_1C998E5BC(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CECC8, &qword_1C9ABEE00);
  sub_1C97AE9C8();
  v68 = v4;
  v69 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v67 = v6;
  sub_1C97A2CEC(&qword_1EC3CEC30, &unk_1C9ABECF0);
  sub_1C97AE9C8();
  v65 = v8;
  v66 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v64 = v10;
  sub_1C97A2CEC(&qword_1EC3CECD0, &qword_1C9ABEE08);
  sub_1C97AE9C8();
  v62 = v12;
  v63 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v61 = v14;
  sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  sub_1C97AE9C8();
  v59 = v16;
  v60 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v58 = v18;
  sub_1C97A2CEC(&qword_1EC3CECD8, &qword_1C9ABEE10);
  sub_1C97AE9C8();
  v56 = v20;
  v57 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  v24 = sub_1C97A2CEC(&qword_1EC3CEC38, &qword_1C9ABED00);
  sub_1C97AE9C8();
  v55 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C9991C10();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AEAD8();
  v30 = v29 - v28;
  sub_1C97A2CEC(&qword_1EC3CECE0, &qword_1C9ABEE18);
  sub_1C97AE9C8();
  v71 = v32;
  v72 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9991040();
  sub_1C9A93DD8();
  sub_1C9990A84(v70, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v58;
      v35 = v59;
      v37 = v60;
      (*(v59 + 32))(v58, v30, v60);
      v74 = 1;
      sub_1C99911C8();
      v38 = v61;
      v39 = v72;
      sub_1C9A93988();
      sub_1C99913E4();
      v40 = v63;
      sub_1C9A93A18();
      (*(v62 + 8))(v38, v40);
      (*(v35 + 8))(v36, v37);
      v41 = sub_1C9991BAC();
      v43 = v39;
    }

    else
    {
      v48 = v64;
      v47 = v65;
      v49 = v66;
      (*(v65 + 32))(v64, v30, v66);
      v75 = 2;
      sub_1C9991094();
      v50 = v67;
      v51 = v72;
      sub_1C9A93988();
      sub_1C9991368();
      v52 = v69;
      sub_1C9A93A18();
      (*(v68 + 8))(v50, v52);
      (*(v47 + 8))(v48, v49);
      v41 = sub_1C9991BAC();
      v43 = v51;
    }
  }

  else
  {
    v44 = v55;
    (*(v55 + 32))(v1, v30, v24);
    v73 = 0;
    sub_1C9991298();
    v45 = v72;
    sub_1C9A93988();
    sub_1C9991460();
    v46 = v57;
    sub_1C9A93A18();
    (*(v56 + 8))(v23, v46);
    (*(v44 + 8))(v1, v24);
    v41 = sub_1C9991BAC();
    v43 = v45;
  }

  return v42(v41, v43);
}

uint64_t sub_1C998EBE4()
{
  sub_1C9A93CC8();
  sub_1C998E0EC(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C998EC24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v83 = sub_1C97A2CEC(&qword_1EC3CEC70, &qword_1C9ABEDD8);
  sub_1C97AE9C8();
  v76 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AC02C();
  v78 = v5;
  sub_1C97A2CEC(&qword_1EC3CEC78, &qword_1C9ABEDE0);
  sub_1C97AE9C8();
  v74 = v7;
  v75 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AC02C();
  v80 = v9;
  sub_1C97A2CEC(&qword_1EC3CEC80, &qword_1C9ABEDE8);
  sub_1C97AE9C8();
  v72 = v11;
  v73 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v77 = v13;
  sub_1C97A2CEC(&qword_1EC3CEC88, &unk_1C9ABEDF0);
  sub_1C97AE9C8();
  v81 = v15;
  v82 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C9991C10();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98435A0();
  v21 = v19 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v66 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v66 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v66 - v29;
  v31 = a1[3];
  v84 = a1;
  sub_1C97A5A8C(a1, v31);
  sub_1C9991040();
  v32 = v85;
  sub_1C9A93DB8();
  if (v32)
  {
    return sub_1C97A592C(v84);
  }

  v68 = v25;
  v69 = v21;
  v70 = v28;
  v71 = v30;
  v33 = v82;
  v85 = v17;
  sub_1C9A93958();
  result = sub_1C98EE524();
  if (v36 == v37 >> 1)
  {
    goto LABEL_8;
  }

  if (v36 >= (v37 >> 1))
  {
    __break(1u);
    return result;
  }

  v38 = *(v35 + v36);
  sub_1C98EE520();
  v40 = v39;
  v42 = v41;
  swift_unknownObjectRelease();
  if (v40 != v42 >> 1)
  {
LABEL_8:
    v46 = sub_1C9A93648();
    swift_allocError();
    v48 = v47;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v48 = v85;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v49 = sub_1C9991BCC();
    v50(v49, v33);
    return sub_1C97A592C(v84);
  }

  if (v38)
  {
    if (v38 == 1)
    {
      v87 = 1;
      sub_1C99911C8();
      sub_1C9991B8C(&type metadata for ShapedArray.Float32CodingKeys, &v87);
      v43 = v71;
      sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
      sub_1C999121C();
      v44 = v68;
      v45 = v75;
      sub_1C9A938F8();
      v67 = 0;
      swift_unknownObjectRelease();
      v53 = sub_1C9991BCC();
      v54(v53, v45);
      v55 = sub_1C9991B5C();
    }

    else
    {
      v88 = 2;
      sub_1C9991094();
      sub_1C9991B8C(&type metadata for ShapedArray.Int32CodingKeys, &v88);
      v43 = v71;
      sub_1C97A2CEC(&qword_1EC3CEC30, &unk_1C9ABECF0);
      sub_1C99910E8();
      v44 = v69;
      sub_1C9A938F8();
      v67 = 0;
      swift_unknownObjectRelease();
      v64 = sub_1C9991BF0();
      v65(v64);
      v55 = sub_1C98DE2C4();
    }

    v56(v55);
    swift_storeEnumTagMultiPayload();
    v63 = v44;
    v62 = v84;
    v51 = v79;
  }

  else
  {
    v86 = 0;
    sub_1C9991298();
    sub_1C9991B8C(&type metadata for ShapedArray.Float64CodingKeys, &v86);
    v51 = v79;
    sub_1C97A2CEC(&qword_1EC3CEC38, &qword_1C9ABED00);
    sub_1C99912EC();
    v52 = v73;
    sub_1C9A938F8();
    v67 = 0;
    swift_unknownObjectRelease();
    v57 = sub_1C9991BCC();
    v58(v57, v52);
    v59 = sub_1C98DE2C4();
    v60(v59);
    v61 = v70;
    swift_storeEnumTagMultiPayload();
    v62 = v84;
    v43 = v71;
    v63 = v61;
  }

  sub_1C9991164(v63, v43);
  sub_1C9991164(v43, v51);
  return sub_1C97A592C(v62);
}

uint64_t sub_1C998F3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C998E454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C998F408(uint64_t a1)
{
  v2 = sub_1C9991040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C998F444(uint64_t a1)
{
  v2 = sub_1C9991040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C998F480(uint64_t a1)
{
  v2 = sub_1C99911C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C998F4BC(uint64_t a1)
{
  v2 = sub_1C99911C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C998F4F8(uint64_t a1)
{
  v2 = sub_1C9991298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C998F534(uint64_t a1)
{
  v2 = sub_1C9991298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C998F570(uint64_t a1)
{
  v2 = sub_1C9991094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C998F5AC(uint64_t a1)
{
  v2 = sub_1C9991094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C998F620()
{
  sub_1C9A93CC8();
  sub_1C998E0EC(v1);
  return sub_1C9A93D18();
}

id sub_1C998F684(void *a1)
{
  result = [a1 shape];
  if (result)
  {
    v3 = result;
    sub_1C998D6A4(result);
    result = [a1 strides];
    if (result)
    {
      v5 = result;
      sub_1C97BD318(v4, 0, &qword_1EC3C54B0, 0x1E696AD98);
      v6 = sub_1C9A92768();

      v7 = [v5 isEqual_];

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C998F750(void *a1, uint64_t a2, double a3)
{
  if (a2 < 0)
  {
    type metadata accessor for SNError(a3);
    sub_1C98573F8();
    v40 = sub_1C98E5A3C();
    v45 = sub_1C9929478(v40, v41, 4, v42, v43, v44);
    sub_1C9991C30(v45);
    return;
  }

  v3 = a2;
  v5 = [a1 shape];
  sub_1C97BD318(v6, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v7 = sub_1C9A92798();

  v47 = a1;
  v8 = [a1 strides];
  v9 = sub_1C9A92798();

  v10 = sub_1C97BDEE0();
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v10;
    v48 = MEMORY[0x1E69E7CC0];
    v13 = v10 & ~(v10 >> 63);

    sub_1C97B7C28(0, v13, 0);
    if (v12 < 0)
    {
      goto LABEL_61;
    }

    v46 = v3;
    v14 = 0;
    v11 = v48;
    v15 = v12;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1CCA912B0](v14, v9);
      }

      else
      {
        v16 = *(v9 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 integerValue];

      v20 = v48[2];
      v19 = v48[3];
      if (v20 >= v19 >> 1)
      {
        v21 = sub_1C97CE0F4(v19);
        sub_1C97B7C28(v21, v20 + 1, 1);
      }

      ++v14;
      v48[2] = v20 + 1;
      v48[v20 + 4] = v18;
    }

    while (v15 != v14);

    v3 = v46;
  }

  sub_1C998D924(v11);

  if (!v3)
  {
LABEL_55:
    v36 = [v47 dataPointer];
    v37 = [v47 dataType];
    v38 = objc_allocWithZone(MEMORY[0x1E695FED0]);
    sub_1C9990C04(v36, v7, v37, v39, v9, 0, 0);
    return;
  }

  while (1)
  {
    v22 = sub_1C9A931C8();
    v23 = v7 >> 62;
    if (v7 >> 62)
    {
      if (sub_1C9A934C8() < 0)
      {
        goto LABEL_62;
      }

      if (sub_1C9A934C8() < 0)
      {
        goto LABEL_63;
      }

      v24 = sub_1C9A934C8();
    }

    else
    {
      v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v23)
      {
        v26 = (v7 & 0xFFFFFFFFFFFFFF8);
        if (v25 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_21:
      sub_1C9A934C8();
      goto LABEL_22;
    }

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_22:
    v7 = sub_1C9A93618();
    v26 = (v7 & 0xFFFFFFFFFFFFFF8);
LABEL_23:
    swift_arrayDestroy();
    if (v7 >> 62)
    {
      v27 = sub_1C9A934C8();
    }

    else
    {
      v27 = v26[2];
    }

    memmove(v26 + 5, v26 + 4, 8 * v27);
    if (v7 >> 62)
    {
      v28 = sub_1C9A934C8();
    }

    else
    {
      v28 = v26[2];
    }

    if (__OFADD__(v28, 1))
    {
      goto LABEL_58;
    }

    v26[2] = v28 + 1;
    v26[4] = v22;
    v29 = sub_1C9A92B88();
    v30 = v9 >> 62;
    if (v9 >> 62)
    {
      if (sub_1C9A934C8() < 0)
      {
        goto LABEL_64;
      }

      if (sub_1C9A934C8() < 0)
      {
        goto LABEL_65;
      }

      v31 = sub_1C9A934C8();
    }

    else
    {
      v31 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_59;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v30)
      {
        v33 = (v9 & 0xFFFFFFFFFFFFFF8);
        if (v32 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_37:
      sub_1C9A934C8();
      goto LABEL_38;
    }

    if (v30)
    {
      goto LABEL_37;
    }

LABEL_38:
    v9 = sub_1C9A93618();
    v33 = (v9 & 0xFFFFFFFFFFFFFF8);
LABEL_39:
    swift_arrayDestroy();
    if (v9 >> 62)
    {
      v34 = sub_1C9A934C8();
    }

    else
    {
      v34 = v33[2];
    }

    memmove(v33 + 5, v33 + 4, 8 * v34);
    if (v9 >> 62)
    {
      v35 = sub_1C9A934C8();
    }

    else
    {
      v35 = v33[2];
    }

    if (__OFADD__(v35, 1))
    {
      goto LABEL_60;
    }

    v33[2] = v35 + 1;
    v33[4] = v29;
    if (!--v3)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

void sub_1C998FC50(void *a1, uint64_t a2)
{
  v4 = [a1 shape];
  sub_1C97BD318(v5, 0, &qword_1EC3C54B0, 0x1E696AD98);
  sub_1C9A92798();

  v6 = sub_1C97BDEE0();

  if (v6 <= a2)
  {
    v14 = [a1 shape];
    sub_1C9A92798();

    v15 = sub_1C97BDEE0();

    if (__OFSUB__(a2, v15))
    {
      __break(1u);
    }

    else
    {
      sub_1C998F750(a1, a2 - v15, v16);
    }
  }

  else
  {
    type metadata accessor for SNError(v7);
    sub_1C98573F8();
    v8 = sub_1C98E5A3C();
    v13 = sub_1C9929478(v8, v9, 4, v10, v11, v12);
    sub_1C9991C30(v13);
  }
}

void sub_1C998FD90(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = a1 + 32;
  while (v5 != v3)
  {
    v7 = *(v6 + 8 * v3++);
    if (v7 > v4)
    {
      v4 = v7;
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v6 + 8 * v9) == v4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C97B7C28(0, *(v10 + 16) + 1, 1);
        }

        v12 = *(v10 + 16);
        v11 = *(v10 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = sub_1C97CE0F4(v11);
          sub_1C97B7C28(v13, v12 + 1, 1);
        }

        *(v10 + 16) = v12 + 1;
        *(v10 + 8 * v12 + 32) = v9;
      }

      ++v9;
    }

    while (v5 != v9);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v10 + 16);
  if (v14)
  {
    sub_1C97B7C28(0, v14, 0);
    v15 = v8;
    v16 = *(a2 + 16);
    v17 = 32;
    while (1)
    {
      v18 = *(v10 + v17);
      if (v18 >= v16)
      {
        break;
      }

      v19 = *(a2 + 32 + 8 * v18);
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = sub_1C97CE0F4(v20);
        sub_1C97B7C28(v22, v21 + 1, 1);
      }

      *(v15 + 16) = v21 + 1;
      *(v15 + 8 * v21 + 32) = v19;
      v17 += 8;
      if (!--v14)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v23 = 0;
  v24 = *(v15 + 16);
  for (i = 32; v24; --v24)
  {
    if (*(v15 + i) > v23)
    {
      v23 = *(v15 + i);
    }

    i += 8;
  }

  if ((v4 * v23) >> 64 != (v4 * v23) >> 63)
  {
    goto LABEL_32;
  }
}

void sub_1C998FF90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1CCA93280);
  }
}

id sub_1C998FFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v21 = a3;
  v22 = a5;
  v20 = a1;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v11 = (a2 + 32);
    do
    {
      v12 = *v11++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C98BBB68();
      sub_1C9A936B8();
      sub_1C9A93688();
      --v8;
    }

    while (v8);
    v9 = v23;
  }

  v13 = *(a4 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v15 = (a4 + 32);
    do
    {
      v16 = *v15++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      --v13;
    }

    while (v13);
    v14 = v24;
  }

  v17 = objc_allocWithZone(MEMORY[0x1E695FED0]);

  return sub_1C9990C04(v20, v9, v21, v18, v14, v22, a6);
}

uint64_t sub_1C9990138(void *a1)
{
  v3 = [a1 dataType];
  if (v3 == 65568 || v3 == 131104 || v3 == 65600)
  {
    v5 = a1;
    sub_1C9A91BB8();
    type metadata accessor for ShapedArray(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for SNError(v4);
    sub_1C98573F8();
    v7 = sub_1C98E5A3C();
    v12 = sub_1C9929478(v7, v8, 1, v9, v10, v11);
    return sub_1C9991C30(v12);
  }
}

id sub_1C999027C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), void *a7)
{
  v10 = a6(a1, a2);
  if (v10)
  {
    v12 = v11 - v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithBytes:a1 length:v12];
  v28 = swift_allocObject();
  v28[2] = v13;
  v14 = v13;
  v27 = [v14 mutableBytes];
  v15 = *(a3 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v17 = (a3 + 32);
    do
    {
      v18 = *v17++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9991C04();
      sub_1C9A936B8();
      sub_1C9A93688();
      --v15;
    }

    while (v15);
    v16 = v31;
  }

  v19 = *(a5 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v21 = (a5 + 32);
    do
    {
      v22 = *v21++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      --v19;
    }

    while (v19);
    v20 = v32;
  }

  v23 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v25 = sub_1C9990C04(v27, v16, a4, v24, v20, a7, v28);

  return v25;
}

void sub_1C9990484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  if (v3)
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
  }
}

uint64_t sub_1C99904E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v8 = sub_1C97A2CEC(a3, a4);
  sub_1C97AE9C8();
  v10 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16[-v12];
  v14 = (*(v10 + 16))(&v16[-v12], a1, v8);
  v17 = a2;
  sub_1C97BD318(v14, 0, &unk_1EC3C5500, 0x1E695FED0);
  sub_1C9A91B68();
  result = (*(v10 + 8))(v13, v8);
  if (!v5)
  {
    return v18;
  }

  return result;
}

uint64_t sub_1C99906C0(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3CEC30, &unk_1C9ABECF0);
  sub_1C97AE9C8();
  v30 = v3;
  v31 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  sub_1C97AE9C8();
  v29 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = sub_1C97A2CEC(&qword_1EC3CEC38, &qword_1C9ABED00);
  sub_1C97AE9C8();
  v14 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  type metadata accessor for ShapedArray(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AEAD8();
  v21 = v20 - v19;
  sub_1C9990A84(a1, v20 - v19);
  sub_1C9991C04();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v29;
      (*(v29 + 32))(v11, v21, v7);
      v24 = sub_1C99904E4(v11, 65568, &qword_1EC3C8A38, &unk_1C9AA4F50, sub_1C9990EA8);
      (*(v23 + 8))(v11, v7);
    }

    else
    {
      v27 = v30;
      v26 = v31;
      (*(v30 + 32))(v6, v21, v31);
      v24 = sub_1C99904E4(v6, 131104, &qword_1EC3CEC30, &unk_1C9ABECF0, sub_1C9990EA8);
      (*(v27 + 8))(v6, v26);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v21, v12);
    v24 = sub_1C99904E4(v17, 65600, &qword_1EC3CEC38, &qword_1C9ABED00, sub_1C9990E6C);
    (*(v14 + 8))(v17, v12);
  }

  return v24;
}

uint64_t type metadata accessor for ShapedArray(uint64_t a1)
{
  result = qword_1EC3CEC40;
  if (!qword_1EC3CEC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9990A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShapedArray(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C9990AE8()
{
  result = [v0 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = [v0 objectAtIndexedSubscript_];
      [v5 floatValue];
      v7 = v6;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E5014();
        v4 = v10;
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C97CE0F4(v8);
        sub_1C97E5014();
        v4 = v11;
      }

      ++v3;
      *(v4 + 16) = v9 + 1;
      *(v4 + 4 * v9 + 32) = v7;
    }

    while (v2 != v3);
    return v4;
  }

  return result;
}

id sub_1C9990C04(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  aBlock[6] = *MEMORY[0x1E69E9840];
  sub_1C97BD318(a4, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v13 = sub_1C9A92768();

  sub_1C9991C04();
  v14 = sub_1C9A92768();

  if (a6)
  {
    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C9990DC0;
    aBlock[3] = &unk_1F4945898;
    v15 = _Block_copy(aBlock);
  }

  else
  {
    v15 = 0;
  }

  aBlock[0] = 0;
  v16 = [v8 initWithDataPointer:a1 shape:v13 dataType:a3 strides:v14 deallocator:v15 error:aBlock];
  _Block_release(v15);

  if (v16)
  {
    v17 = aBlock[0];
  }

  else
  {
    v18 = aBlock[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v16;
}

uint64_t sub_1C9990DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1C9990E14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C9990620(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

id sub_1C9990E40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C9990670(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C9990E90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C9990EC4(uint64_t a1)
{
  sub_1C9990F94(319, &qword_1EC3CEC50, MEMORY[0x1E69E63B0], MEMORY[0x1E695FD50]);
  if (v1 <= 0x3F)
  {
    sub_1C9990F94(319, &qword_1EC3CEC58, MEMORY[0x1E69E6448], MEMORY[0x1E695FD58]);
    if (v2 <= 0x3F)
    {
      sub_1C9990F94(319, &qword_1EC3CEC60, MEMORY[0x1E69E72F0], MEMORY[0x1E695FD88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C9990F94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1C9A91BA8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C9990FE8()
{
  result = qword_1EC3CEC68;
  if (!qword_1EC3CEC68)
  {
    type metadata accessor for ShapedArray(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEC68);
  }

  return result;
}

unint64_t sub_1C9991040()
{
  result = qword_1EC3CEC90;
  if (!qword_1EC3CEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEC90);
  }

  return result;
}

unint64_t sub_1C9991094()
{
  result = qword_1EC3CEC98;
  if (!qword_1EC3CEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEC98);
  }

  return result;
}

unint64_t sub_1C99910E8()
{
  result = qword_1EC3CECA0;
  if (!qword_1EC3CECA0)
  {
    sub_1C97AA4F0(&qword_1EC3CEC30, &unk_1C9ABECF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CECA0);
  }

  return result;
}

uint64_t sub_1C9991164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShapedArray(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C99911C8()
{
  result = qword_1EC3CECA8;
  if (!qword_1EC3CECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CECA8);
  }

  return result;
}

unint64_t sub_1C999121C()
{
  result = qword_1EC3CECB0;
  if (!qword_1EC3CECB0)
  {
    sub_1C97AA4F0(&qword_1EC3C8A38, &unk_1C9AA4F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CECB0);
  }

  return result;
}

unint64_t sub_1C9991298()
{
  result = qword_1EC3CECB8;
  if (!qword_1EC3CECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CECB8);
  }

  return result;
}

unint64_t sub_1C99912EC()
{
  result = qword_1EC3CECC0;
  if (!qword_1EC3CECC0)
  {
    sub_1C97AA4F0(&qword_1EC3CEC38, &qword_1C9ABED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CECC0);
  }

  return result;
}

unint64_t sub_1C9991368()
{
  result = qword_1EC3CECE8;
  if (!qword_1EC3CECE8)
  {
    sub_1C97AA4F0(&qword_1EC3CEC30, &unk_1C9ABECF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CECE8);
  }

  return result;
}

unint64_t sub_1C99913E4()
{
  result = qword_1EC3CECF0;
  if (!qword_1EC3CECF0)
  {
    sub_1C97AA4F0(&qword_1EC3C8A38, &unk_1C9AA4F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CECF0);
  }

  return result;
}

unint64_t sub_1C9991460()
{
  result = qword_1EC3CECF8;
  if (!qword_1EC3CECF8)
  {
    sub_1C97AA4F0(&qword_1EC3CEC38, &qword_1C9ABED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CECF8);
  }

  return result;
}

uint64_t sub_1C99914DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9991530(uint64_t a1)
{
  v2 = type metadata accessor for ShapedArray(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ShapedArray.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1C9991688(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9991738()
{
  result = qword_1EC3CED10;
  if (!qword_1EC3CED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED10);
  }

  return result;
}

unint64_t sub_1C9991790()
{
  result = qword_1EC3CED18;
  if (!qword_1EC3CED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED18);
  }

  return result;
}

unint64_t sub_1C99917E8()
{
  result = qword_1EC3CED20;
  if (!qword_1EC3CED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED20);
  }

  return result;
}

unint64_t sub_1C9991840()
{
  result = qword_1EC3CED28;
  if (!qword_1EC3CED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED28);
  }

  return result;
}

unint64_t sub_1C9991898()
{
  result = qword_1EC3CED30;
  if (!qword_1EC3CED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED30);
  }

  return result;
}

unint64_t sub_1C99918F0()
{
  result = qword_1EC3CED38;
  if (!qword_1EC3CED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED38);
  }

  return result;
}

unint64_t sub_1C9991948()
{
  result = qword_1EC3CED40;
  if (!qword_1EC3CED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED40);
  }

  return result;
}

unint64_t sub_1C99919A0()
{
  result = qword_1EC3CED48;
  if (!qword_1EC3CED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED48);
  }

  return result;
}

unint64_t sub_1C99919F8()
{
  result = qword_1EC3CED50;
  if (!qword_1EC3CED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED50);
  }

  return result;
}

unint64_t sub_1C9991A50()
{
  result = qword_1EC3CED58;
  if (!qword_1EC3CED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED58);
  }

  return result;
}

unint64_t sub_1C9991AA8()
{
  result = qword_1EC3CED60;
  if (!qword_1EC3CED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CED60);
  }

  return result;
}

unint64_t sub_1C9991B00()
{
  result = qword_1EC3CED68[0];
  if (!qword_1EC3CED68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CED68);
  }

  return result;
}

uint64_t sub_1C9991B70(uint64_t a1)
{

  return sub_1C9808F28(v1, a1);
}

uint64_t sub_1C9991B8C(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C9991BD8()
{
}

uint64_t sub_1C9991C10()
{

  return type metadata accessor for ShapedArray(0);
}

uint64_t sub_1C9991C30(uint64_t a1)
{

  return swift_willThrow();
}

_BYTE *sub_1C9991D50(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C9991E04()
{
  if (*(v0 + 24) >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v2 = 0;
    return swift_willThrow();
  }

  else
  {
    v4 = sub_1C9871794();
    sub_1C97CE3DC(v4, v5);
    v6 = sub_1C9871794();
    v8 = sub_1C98DB6C8(v6, v7);
    v9 = sub_1C9871794();
    result = sub_1C97AA780(v9, v10);
    if (!v1)
    {
      type metadata accessor for XPCDataDecoder.UnkeyedContainer(v11);
      result = swift_allocObject();
      *(result + 16) = v8;
      *(result + 24) = 0;
    }
  }

  return result;
}

void sub_1C9991EB4()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *(*(v0 + 16) + 16))
  {
    *(v0 + 24) = v1 + 1;
    v2 = sub_1C9871794();
    sub_1C97DA2E8(v2, v3);
    sub_1C9871794();
    return;
  }

  __break(1u);
}

uint64_t sub_1C9991F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  type metadata accessor for XPCDataDecoder(v12);
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  *(inited + 24) = v10;
  v14 = *(a3 + 16);
  sub_1C97DA2E8(v11, v10);
  v14(inited, a2, a3);
  swift_setDeallocating();
  result = sub_1C97AA780(*(inited + 16), *(inited + 24));
  if (!v5)
  {
    return (*(v17 + 32))(v18, v9, a2);
  }

  return result;
}

uint64_t sub_1C9992068()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C99920A4()
{
  sub_1C97AA780(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1C9992164()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C97A2CEC(&qword_1EC3CEE90, &qword_1C9ABF8E0);
  sub_1C97AE9C8();
  v16 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  memcpy(v20, v4, 0x79uLL);
  v10 = v2[3];
  v11 = v2[4];
  v12 = sub_1C97A5A8C(v2, v10);
  memcpy(v19, (v4 + 56), 0x41uLL);
  v14 = type metadata accessor for SNShazamSignatureResult(v13);
  v17[2] = v20;
  sub_1C9919670(v20, v18);
  sub_1C9904DC0(v12, v19, v14, sub_1C9995BDC, v17, v10, v14, v11);
  memcpy(v18, v19, 0x41uLL);
  sub_1C97E8084(v18);
  if (!v0)
  {
    sub_1C97A2CEC(&qword_1EC3CEE98, &qword_1C9ABF8E8);
    sub_1C97AE67C(&qword_1EC3CEEA0, &qword_1EC3CEE98, &qword_1C9ABF8E8, MEMORY[0x1E695BED8]);
    sub_1C9A91F68();

    sub_1C97AE67C(&qword_1EC3CEEA8, &qword_1EC3CEE90, &qword_1C9ABF8E0, MEMORY[0x1E695BD60]);
    sub_1C9A91F28();
    (*(v16 + 8))(v9, v5);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C99923D4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v8 = v1[7];
  sub_1C97BE32C(a1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v5);
  MEMORY[0x1CCA91980]([v6 hash]);
  MEMORY[0x1CCA919B0](v8);
  return sub_1C9A93D18();
}

BOOL sub_1C99924C4(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    v4.i64[1] = *(a1 + 32);
    v5.i64[1] = *(a2 + 32);
    if ((~vaddvq_s32(vandq_s8(vceqq_s32(v4, v5), xmmword_1C9AA2B30)) & 0xF) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 40) == *(a2 + 40))
    {
      return *(a1 + 48) == *(a2 + 48);
    }
  }

  return result;
}

uint64_t sub_1C999255C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7544776F646E6977 && a2 == 0xEE006E6F69746172;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7544656469727473 && a2 == 0xEE006E6F69746172;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001C9ADBBC0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
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

uint64_t sub_1C9992684(char a1)
{
  if (!a1)
  {
    return 0x7544776F646E6977;
  }

  if (a1 == 1)
  {
    return 0x7544656469727473;
  }

  return 0xD000000000000012;
}

uint64_t sub_1C99926E8(void *a1)
{
  sub_1C97A2CEC(&unk_1EC3CEED0, &qword_1C9ABF918);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C97A5A8C(a1, a1[3]);
  v3 = sub_1C9995C74();
  sub_1C9996520(&type metadata for ShazamSignatureGeneration.AudioSourceAgnosticRequest.CodingKeys, v4, v3);
  sub_1C97BCB34();
  sub_1C99964C8();
  sub_1C9A93A18();
  if (!v8)
  {
    sub_1C99964C8();
    sub_1C97BE02C();
    sub_1C9A93A18();
    sub_1C97BE02C();
    sub_1C9A939E8();
  }

  v5 = sub_1C97AEB30();
  return v6(v5);
}

uint64_t sub_1C99928A0()
{
  sub_1C99964D4();
  MEMORY[0x1CCA919B0]();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v0);
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  return MEMORY[0x1CCA919B0](*&v4);
}

uint64_t sub_1C9992944(uint64_t a1)
{
  v6 = *v1;
  sub_1C99964D4();
  sub_1C97BE32C(v7);
  MEMORY[0x1CCA919B0](v6);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  v8 = 0.0;
  if (v5 != 0.0)
  {
    v8 = v5;
  }

  MEMORY[0x1CCA919B0](*&v8);
  return sub_1C9A93D18();
}

uint64_t sub_1C9992A1C@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CEEB8, &qword_1C9ABF910);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9995C74();
  sub_1C9A93DB8();
  if (!v2)
  {
    v24 = 0;
    sub_1C97BCA8C();
    sub_1C999649C(&type metadata for Time);
    v23 = v25;
    v11 = v26;
    v12 = v27;
    v24 = 1;
    sub_1C999649C(&type metadata for Time);
    v14 = v23;
    v15 = v26;
    v21 = v27;
    v22 = v25;
    LOBYTE(v25) = 2;
    sub_1C9A938C8();
    v17 = v16;
    (*(v7 + 8))(v10, v5);
    *a2 = v14;
    *(a2 + 1) = v11;
    v18 = v21;
    v19 = v22;
    *(a2 + 2) = v12;
    *(a2 + 3) = v19;
    *(a2 + 4) = v15;
    *(a2 + 5) = v18;
    *(a2 + 6) = v17;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C9992C14(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 56), 0x41uLL);
  memcpy(v11, (a2 + 56), 0x41uLL);
  if (sub_1C99924C4(a1, a2))
  {
    memcpy(__src, (a1 + 56), 0x41uLL);
    memcpy(v6, (a2 + 56), 0x41uLL);
    v4 = static AudioConfiguration.== infix(_:_:)(__src, v6);
    memcpy(v8, v6, 0x41uLL);
    sub_1C97A6264(__dst, v9);
    sub_1C97A6264(v11, v9);
    sub_1C97E8084(v8);
    memcpy(v9, __src, 0x41uLL);
    sub_1C97E8084(v9);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1C9992CFC()
{
  sub_1C97AEB94();
  v2 = v0;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CEF30, &qword_1C9ABF940);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEA4C();
  memcpy(v15, (v2 + 56), 0x41uLL);
  sub_1C97A5A8C(v4, v4[3]);
  v6 = sub_1C9995D1C();
  sub_1C9996520(&type metadata for ShazamSignatureGeneration.Request.CodingKeys, v7, v6);
  v8 = *(v2 + 16);
  *v14 = *v2;
  *&v14[16] = v8;
  *&v14[32] = *(v2 + 32);
  *&v14[48] = *(v2 + 48);
  v13[0] = 0;
  sub_1C97A60C0();
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (v1)
  {
    v9 = sub_1C97AEB30();
    v10(v9);
  }

  else
  {
    memcpy(v14, v15, sizeof(v14));
    sub_1C97A6264(v15, v13);
    sub_1C97A6210();
    sub_1C99964C8();
    sub_1C97BE02C();
    sub_1C9A93A18();
    memcpy(v13, v14, 0x41uLL);
    sub_1C97E8084(v13);
    v11 = sub_1C97AEB30();
    v12(v11);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9992EBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 5);
  v7 = v1[6];
  memcpy(__dst, v1 + 7, sizeof(__dst));
  MEMORY[0x1CCA919B0](*&v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  MEMORY[0x1CCA919B0](v5);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v6);
  v8 = 0.0;
  if (v7 != 0.0)
  {
    v8 = v7;
  }

  MEMORY[0x1CCA919B0](*&v8);
  return AudioConfiguration.hash(into:)(a1);
}

uint64_t sub_1C9992F98(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C9992EBC(v2);
  return sub_1C9A93D18();
}

void sub_1C9992FD0()
{
  sub_1C97AEB94();
  v2 = v1;
  v25 = v3;
  v4 = sub_1C97A2CEC(&qword_1EC3CEF20, &qword_1C9ABF938);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9995D1C();
  sub_1C9A93DB8();
  if (!v0)
  {
    v19 = 0;
    v10 = sub_1C97A6114();
    sub_1C9996540(&unk_1F4945CC8, &v19, v11, v12, v10);
    v24[0] = v20;
    v24[1] = v21;
    v24[2] = v22;
    *&v24[3] = v23;
    v17 = 1;
    v13 = sub_1C97A62C0();
    sub_1C9996540(&type metadata for AudioConfiguration, &v17, v14, v15, v13);
    (*(v6 + 8))(v9, v4);
    memcpy(&v24[3] + 8, v18, 0x41uLL);
    memcpy(v25, v24, 0x79uLL);
  }

  sub_1C97A592C(v2);
  sub_1C97AEB5C();
}

uint64_t sub_1C99931A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v9[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  if (!static TimeRange.== infix(_:_:)(v10, v9))
  {
    return 0;
  }

  LODWORD(result) = [v3 isEqual_];
  if (v4 == v7)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C999322C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65636E6575716573 && a2 == 0xEB000000006D754ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
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

uint64_t sub_1C9993350(char a1)
{
  if (!a1)
  {
    return 0x676E6152656D6974;
  }

  if (a1 == 1)
  {
    return 0x727574616E676973;
  }

  return 0x65636E6575716573;
}

void sub_1C99933B0()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C97A2CEC(&unk_1EC3CEF08, &qword_1C9ABF930);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9995CC8();
  sub_1C9A93DD8();
  sub_1C97BD12C();
  sub_1C99964C8();
  sub_1C9A93A18();
  if (!v0)
  {
    sub_1C97A2CEC(&qword_1EC3CEEF8, &qword_1C9ABF928);
    sub_1C97AE67C(&qword_1EC3CEF18, &qword_1EC3CEEF8, &qword_1C9ABF928, &unk_1C9AC822C);
    sub_1C99964C8();
    sub_1C9A93A18();
    sub_1C9A93A68();
  }

  v4 = sub_1C97AEB30();
  v5(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C9993590()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  MEMORY[0x1CCA91980]([v4 hash]);
  return MEMORY[0x1CCA919B0](v5);
}

void sub_1C9993644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v25 = v24;
  v27 = v26;
  sub_1C97A2CEC(&qword_1EC3CEEE0, &qword_1C9ABF920);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97A5A8C(v25, v25[3]);
  sub_1C9995CC8();
  sub_1C9A93DB8();
  if (v23)
  {
    sub_1C97A592C(v25);
  }

  else
  {
    sub_1C97BD0D8();
    sub_1C9A938F8();
    v44 = v41;
    v45 = v42;
    v46 = v43;
    sub_1C97A2CEC(&qword_1EC3CEEF8, &qword_1C9ABF928);
    LOBYTE(v36[0]) = 1;
    sub_1C97AE67C(&qword_1EC3CEF00, &qword_1EC3CEEF8, &qword_1C9ABF928, &unk_1C9AC8254);
    sub_1C9A938F8();
    v29 = *&v38[0];
    v30 = sub_1C9A93948();
    v31 = sub_1C97FB2B8();
    v32(v31);
    v33 = v45;
    v36[0] = v44;
    v36[1] = v45;
    v34 = v46;
    v36[2] = v46;
    *&v37 = v29;
    *(&v37 + 1) = v30;
    *v27 = v44;
    v27[1] = v33;
    v35 = v37;
    v27[2] = v34;
    v27[3] = v35;
    sub_1C97A64A0(v36, v38);
    sub_1C97A592C(v25);
    v38[0] = v44;
    v38[1] = v45;
    v38[2] = v46;
    v39 = v29;
    v40 = v30;
    sub_1C98E91D8(v38);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C999390C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C999255C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9993934(uint64_t a1)
{
  v2 = sub_1C9995C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9993970(uint64_t a1)
{
  v2 = sub_1C9995C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99939B4()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v5 = v0[6];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  MEMORY[0x1CCA919B0](*&v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9993AD4(uint64_t a1)
{
  v2 = sub_1C9995D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9993B10(uint64_t a1)
{
  v2 = sub_1C9995D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9993B54()
{
  sub_1C9A93CC8();
  sub_1C9992EBC(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9993BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9993C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C999322C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9993C40(uint64_t a1)
{
  v2 = sub_1C9995CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9993C7C(uint64_t a1)
{
  v2 = sub_1C9995CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9993CC0()
{
  sub_1C9A93CC8();
  sub_1C9993590();
  return sub_1C9A93D18();
}

uint64_t sub_1C9993D30()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C9993DBC(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[4] = a1;
  v5[5] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C97F489C, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v5[6] = v9;
    *v9 = v7;
    sub_1C97DA950(v9);

    return sub_1C98A32A0();
  }
}

uint64_t sub_1C9993F40(uint64_t a1, uint64_t a2)
{
  sub_1C99DC144();
  v5[3] = sub_1C97A2CEC(&qword_1EC3CC730, &qword_1C9AB3BE8);
  v5[4] = sub_1C999635C();
  v5[0] = a2;

  sub_1C99DC184(v5, v3);

  return sub_1C97A592C(v5);
}

uint64_t sub_1C9993FD0()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C9993D30();
}

uint64_t sub_1C9994080()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C9993FD0();
}

__int128 *sub_1C9994110@<X0>(__int128 *a1@<X0>, __int128 **a2@<X8>)
{
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  v4 = a1[3];
  v16 = a1[2];
  v17 = v4;
  v5 = type metadata accessor for SNShazamSignatureResult(*&v16);
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___SNShazamSignatureResult_impl];
  v9 = v16;
  v8 = v17;
  v10 = v15;
  *v7 = v14;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  *(v7 + 3) = v8;
  sub_1C97A64A0(&v14, v13);
  v12.receiver = v6;
  v12.super_class = v5;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_1C99941A8(__int128 *a1)
{
  v1 = a1[1];
  v18 = *a1;
  v19 = v1;
  v20 = a1[2];
  v21 = *(a1 + 6);
  v2 = type metadata accessor for SNGenerateShazamSignatureRequest(*&v20);
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + v3;
  v5 = v19;
  *v4 = v18;
  *(v4 + 1) = v5;
  *(v4 + 2) = v20;
  *(v4 + 6) = v21;
  v17.receiver = v3;
  v17.super_class = v2;
  v6 = objc_msgSendSuper2(&v17, sel_init);
  type metadata accessor for SNShazamSignatureGenerator(v7);
  v8 = swift_allocObject();
  sub_1C9994CFC(v6, v9, v10, v11, v12, v13, v14, v15);
  return v8;
}

uint64_t sub_1C9994268(uint64_t a1, double a2)
{
  type metadata accessor for SNShazamSignatureGenerator(a2);
  sub_1C97A7DFC();
  v3 = swift_allocObject();
  v4 = v2;
  sub_1C9994CFC(v4, v5, v6, v7, v8, v9, v10, v11);
  return v3;
}

uint64_t sub_1C99942BC@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR___SNShazamSignatureResult_impl);
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  v10[2] = v2[2];
  v10[3] = v3;
  v10[0] = v5;
  v10[1] = v4;
  v6 = v2[1];
  *a2 = *v2;
  a2[1] = v6;
  v7 = v2[3];
  a2[2] = v2[2];
  a2[3] = v7;
  return sub_1C97A64A0(v10, &v9);
}

uint64_t sub_1C9994374(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + v3);
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  return result;
}

uint64_t sub_1C99943AC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1C999442C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + v3);
  v4[3] = result;
  v4[4] = a2;
  v4[5] = a3;
  return result;
}

id sub_1C9994498()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1C9A93168();
  v4 = v3;
  v6 = v5;
  v7 = HIDWORD(v3);
  v8 = sub_1C9A93168();
  v9 = OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + v0;
  *v9 = v2;
  *(v9 + 2) = v4;
  *(v9 + 3) = v7;
  *(v9 + 2) = v6;
  *(v9 + 3) = v8;
  *(v9 + 8) = v10;
  *(v9 + 9) = v11;
  *(v9 + 5) = v12;
  *(v9 + 6) = 0x4014000000000000;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_1C9994560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + v7;
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  *(v16 + 5) = a6;
  *(v16 + 6) = a7;
  v18.receiver = v7;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

void *SNGenerateShazamSignatureRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C999641C(OBJC_IVAR___SNGenerateShazamSignatureRequest_impl);
  v4 = objc_allocWithZone(v3);
  v5 = (OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + v4);
  v6 = v8[2];
  *v5 = v8[1];
  v5[1] = v6;
  v5[2] = v8[3];
  v5[3].receiver = v9;
  v8[0].receiver = v4;
  v8[0].super_class = ObjectType;
  result = [(objc_super *)v8 init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL SNGenerateShazamSignatureRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v8);
  if (v9)
  {
    sub_1C97A2D34(&v8, v7);
    sub_1C97BD360(v7, v6);
    if (swift_dynamicCast())
    {
      v3 = sub_1C99924C4(OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + v1, OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + v5);
    }

    else
    {
      v3 = 0;
    }

    sub_1C97A592C(v7);
  }

  else
  {
    return 0;
  }

  return v3;
}

id SNGenerateShazamSignatureRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A214C(1819307369, 0xE400000000000000);
  v3 = objc_allocWithZone(ObjectType);
  v4 = OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + v3;
  v5 = *&v9[5];
  *v4 = *&v9[3];
  *(v4 + 1) = v5;
  *(v4 + 2) = *&v9[7];
  *(v4 + 6) = v9[9];
  v9[0] = v3;
  v9[1] = ObjectType;
  v6 = objc_msgSendSuper2(v9, sel_init);

  v7 = swift_getObjectType();
  sub_1C9996500(v7);
  return v6;
}

uint64_t sub_1C9994B30@<X0>(uint64_t a2@<X8>)
{
  v3 = MGGetProductType();
  result = sub_1C989B2F8(v3, v11);
  v5 = v12;
  v6 = 0;
  if (!v12)
  {
    goto LABEL_5;
  }

  v7 = LOBYTE(v11[0]);

  if (v7 > 4)
  {
    v5 = 0;
LABEL_5:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v5 = word_1C9ABFD72[v7];
  v6 = dword_1C9ABFD7C[v7];
  v8 = word_1C9ABFD90[v7];
  v9 = dword_1C9ABFD9C[v7];
  v10 = dword_1C9ABFDB0[v7];
LABEL_6:
  *a2 = v5;
  *(a2 + 4) = v6;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  *(a2 + 16) = v10;
  return result;
}

id SNGenerateShazamSignatureRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_UNKNOWN **sub_1C9994C90(uint64_t a1, double a2)
{
  result = sub_1C9994268(a1, a2);
  if (v2)
  {
    return &off_1F4945ED8;
  }

  return result;
}

CMTime *sub_1C9994CFC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *(v8 + 16) = 0;
  result = sub_1C999646C(*(OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + a1 + 16), v12, v15, v17, v19, v21, v23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v13))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v8 + 24) = v13;
  result = sub_1C999646C(*(OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + a1 + 40), v13, v16, v18, v20, v22, v24);
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v14))
  {
    *(v8 + 28) = v14;
    v11 = *(OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + a1 + 48);

    *(v8 + 40) = v11;
    *(v8 + 32) = 0;
    return v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1C9994DB8(int a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a3;
  v6 = a2;
  v46[6] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  v46[0] = 0;
  v10 = sub_1C9A761F8(v8, v46, v9);
  if (!v10)
  {
    v37 = v46[0];
    sub_1C9A913C8();

    swift_willThrow();
    return v10;
  }

  v11 = v46[0];
  v12 = sub_1C9A92478();
  v13 = sub_1C99964EC();
  v16 = sub_1C9A72FAC(v13, v14, v12, v15);

  if (!v16)
  {
    v38 = v46[0];
    sub_1C9A913C8();

    swift_willThrow();
LABEL_14:

    return v10;
  }

  v17 = v46[0];
  v18 = sub_1C9A92478();
  v19 = sub_1C99964EC();
  v22 = sub_1C9A74DF0(v19, v20, v18, v21);

  if (!v22)
  {
    v39 = v46[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_14;
  }

  v44 = a1;
  v23 = v46[0];
  v24 = sub_1C999643C();
  v46[0] = 0;
  v25 = sub_1C9A75C44(v8, v10, v24, 0, v4, v46, a4);

  if (!v25)
  {
    v40 = v46[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_14;
  }

  v26 = v46[0];
  sub_1C9A76554(0x3E80u, 1, v4, v46);
  v27 = sub_1C99963EC();
  if (!sub_1C9A762F8(v27, v28, v16, v22, 0, 0, v29, v30))
  {
    v41 = v45;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_14;
  }

  v31 = v45;
  sub_1C9A76640(0x3E80u, v6, v44, v4, v46);
  v32 = sub_1C99963EC();
  if ((sub_1C9A762F8(v32, v33, v22, v25, 0, 0, v34, v35) & 1) == 0)
  {
    v42 = v45;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_14;
  }

  v36 = v45;
  sub_1C9A695C8(v10, 0x2000, 16000, 1);
  sub_1C9A69B8C(v10);

  return v10;
}

CMTimeValue sub_1C99950FC(void *a1, double a2, uint64_t a3, void (*a4)(void), CMTimeValue a5)
{
  v9 = v5;
  v49 = *MEMORY[0x1E69E9840];
  v10 = *(v5 + 32);
  v11 = v10 + 1;
  if (v10 == -1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v9 + 32) = v11;
  v15 = objc_opt_self();
  if (sub_1C9A75F14(v15, a1, v11))
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(duration, 0, sizeof(duration));
  }

  start = *duration;
  start_16 = *&duration[16];
  if (!*&duration[24])
  {
    sub_1C97A59D0(&start);
    return MEMORY[0x1E69E7CC0];
  }

  v40 = a5;
  v41 = a4;
  sub_1C97A2D34(&start, &v45);
  sub_1C98E9268(v16);
  swift_dynamicCast();
  v17 = *(v9 + 32);
  objc_allocWithZone(type metadata accessor for SNShazamSignatureResult(v18));
  v8 = v42;
  v19 = sub_1C98E8698(v8, v17);
  v45.start.value = 0;
  v20 = sub_1C9A72C60(v15, a1, &v45);
  value = v45.start.value;
  if (!v20)
  {
    v30 = v45.start.value;

    sub_1C9A913C8();
    swift_willThrow();
    goto LABEL_14;
  }

  v7 = v20;
  v22 = v45.start.value;
  v23 = sub_1C9A93C88();
  v24 = sub_1C9A67138(a1);
  if (v24 < 0)
  {
    goto LABEL_22;
  }

  v39 = v19;
  CMTimeMake(&v45.start, v23, v24);
  v25 = v45.start.value;
  v26 = *&v45.start.timescale;
  epoch = v45.start.epoch;
  v28 = *(v9 + 24);
  v29 = sub_1C9A67138(a1);
  if ((v29 & 0x80000000) == 0)
  {
    CMTimeMake(&v45.start, v28, v29);
    *&start = v25;
    *(&start + 1) = v26;
    *&start_16 = epoch;
    *duration = v45.start.value;
    *&duration[8] = *&v45.start.timescale;
    *&duration[16] = v45.start.epoch;
    CMTimeRangeMake(&v45, &start, duration);
    v44 = v45;
    value = v40;
    v41();
    if (v6)
    {

      v8 = v7;
      v19 = v39;
LABEL_14:

      return value;
    }

    v31 = sub_1C9A92F08();
    (v41)(v31);
    sub_1C9A92F18();
    SNShazamSignatureResult.timeRange.setter(v43);
    if (qword_1EC3C5520 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  sub_1C97DAA64(&qword_1EC3C5520);
LABEL_17:
  v33 = sub_1C9A91B58();
  sub_1C97BFF6C(v33, qword_1EC3D3108);
  v34 = v8;

  v35 = sub_1C9A91B38();
  v36 = sub_1C9A92FC8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218240;
    [v34 duration];
    *(v37 + 4) = v38;
    *(v37 + 12) = 2048;
    *(v37 + 14) = *(v9 + 32);

    _os_log_impl(&dword_1C9788000, v35, v36, "Shazam Signature Duration: %f,    SequenceNum: %llu", v37, 0x16u);
    MEMORY[0x1CCA93280](v37, -1, -1);
  }

  else
  {
  }

  sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
  value = swift_allocObject();
  *(value + 16) = xmmword_1C9A9DF30;
  *(value + 32) = v39;

  return value;
}

id sub_1C999557C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C9995BF8();
  swift_allocError();
  return swift_willThrow();
}

void sub_1C99955D8(int a1, double a2)
{
  v4 = v2;
  v7 = *v2;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v8 = sub_1C9A91B58();
  sub_1C97BFF6C(v8, qword_1EC3D3108);
  v9 = sub_1C9A91B38();
  v10 = sub_1C9A92FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1;
    _os_log_impl(&dword_1C9788000, v9, v10, "Creating Shazam DSPGraph with %u channels.", v11, 8u);
    MEMORY[0x1CCA93280](v11, -1, -1);
  }

  sub_1C97A7DFC();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = a2;
  *(v12 + 32) = a1;
  *(v12 + 40) = v7;

  v13 = sub_1C97C1C8C();

  if (!v3)
  {
    v14 = v4[2];
    v4[2] = v13;
  }
}

id sub_1C999576C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1C9994DB8(*(a1 + 24), *(a1 + 28), a2, *(a1 + 40));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1C99957A8()
{
  result = sub_1C999557C();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C999643C();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

uint64_t sub_1C999580C()
{
  sub_1C97A7DFC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9995864(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9995884(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_1C99958D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1C9995914(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1C9995978(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_1C99959B8(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C9995A28()
{
  result = qword_1EC3CEE78;
  if (!qword_1EC3CEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEE78);
  }

  return result;
}

unint64_t sub_1C9995A7C(uint64_t a1)
{
  result = sub_1C97A64FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9995AA4(uint64_t a1)
{
  result = sub_1C97A644C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9995AD0()
{
  result = qword_1EC3CEE80;
  if (!qword_1EC3CEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEE80);
  }

  return result;
}

unint64_t sub_1C9995B28()
{
  result = qword_1EC3CEE88;
  if (!qword_1EC3CEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEE88);
  }

  return result;
}

unint64_t sub_1C9995BF8()
{
  result = qword_1EC3CEEB0;
  if (!qword_1EC3CEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEEB0);
  }

  return result;
}

unint64_t sub_1C9995C74()
{
  result = qword_1EC3CEEC0;
  if (!qword_1EC3CEEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEEC0);
  }

  return result;
}

unint64_t sub_1C9995CC8()
{
  result = qword_1EC3CEEE8;
  if (!qword_1EC3CEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEEE8);
  }

  return result;
}

unint64_t sub_1C9995D1C()
{
  result = qword_1EC3CEF28;
  if (!qword_1EC3CEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShazamSignatureGeneration.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1C9995E5C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1C9995F38(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9995FF0()
{
  result = qword_1EC3CEF38;
  if (!qword_1EC3CEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF38);
  }

  return result;
}

unint64_t sub_1C9996048()
{
  result = qword_1EC3CEF40;
  if (!qword_1EC3CEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF40);
  }

  return result;
}

unint64_t sub_1C99960A0()
{
  result = qword_1EC3CEF48;
  if (!qword_1EC3CEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF48);
  }

  return result;
}

unint64_t sub_1C99960F8()
{
  result = qword_1EC3CEF50;
  if (!qword_1EC3CEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF50);
  }

  return result;
}

unint64_t sub_1C9996150()
{
  result = qword_1EC3CEF58;
  if (!qword_1EC3CEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF58);
  }

  return result;
}

unint64_t sub_1C99961A8()
{
  result = qword_1EC3CEF60;
  if (!qword_1EC3CEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF60);
  }

  return result;
}

unint64_t sub_1C9996200()
{
  result = qword_1EC3CEF68;
  if (!qword_1EC3CEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF68);
  }

  return result;
}

unint64_t sub_1C9996258()
{
  result = qword_1EC3CEF70;
  if (!qword_1EC3CEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF70);
  }

  return result;
}

unint64_t sub_1C99962B0()
{
  result = qword_1EC3CEF78;
  if (!qword_1EC3CEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF78);
  }

  return result;
}

unint64_t sub_1C9996308()
{
  result = qword_1EC3CEF80;
  if (!qword_1EC3CEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF80);
  }

  return result;
}

unint64_t sub_1C999635C()
{
  result = qword_1EC3CEF90;
  if (!qword_1EC3CEF90)
  {
    sub_1C97AA4F0(&qword_1EC3CC730, &qword_1C9AB3BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEF90);
  }

  return result;
}

uint64_t sub_1C999643C()
{

  return sub_1C9A92478();
}

CMTime *sub_1C999646C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time, uint64_t time_8, uint64_t time_16)
{
  time = v7;
  time_8 = v8;
  time_16 = a1;

  return CMTimeConvertScale(&a2, &time, 16000, kCMTimeRoundingMethod_RoundTowardZero);
}

uint64_t sub_1C999649C(uint64_t a1)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C9996500(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C9996520(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9A93DD8();
}

uint64_t sub_1C9996540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C9996560(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
  v6 = sub_1C9A93D88();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[5] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1C99966E8;

  return v10(v7);
}

uint64_t sub_1C99966E8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1C9996898;
  }

  else
  {
    v2 = sub_1C99967FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C99967FC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C9996898()
{
  **(v0 + 16) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C999690C(uint64_t result)
{
  if (*result > 0x2BF200u || *(*(result + 8) + 16) != 512 || *(*(result + 16) + 16) != 10240 || *(*(result + 24) + 16) != 10 || *(*(result + 32) + 16) != 200 || *(*(result + 40) + 16) != 4 || *(*(result + 48) + 16) != 160 || *(*(result + 56) + 16) != 8 || *(*(result + 64) + 16) != 320 || *(*(result + 72) + 16) != 8 || *(*(result + 80) + 16) != 320 || *(*(result + 88) + 16) != 8 || *(*(result + 96) + 16) != 256 || *(*(result + 104) + 16) != 32 || *(*(result + 112) + 16) != 64 || *(*(result + 120) + 16) != 2)
  {
    sub_1C98F0FA0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XValidation.DomainError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9996B10()
{
  result = qword_1EC3CEFA0;
  if (!qword_1EC3CEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEFA0);
  }

  return result;
}

uint64_t sub_1C9996B64(char a1, char a2, uint64_t (*a3)(char *))
{
  v5 = a2;
  if (a1)
  {
    v3 = a3(&v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C9996BA8(char a1, uint64_t (*a2)(float *), float a3)
{
  v5 = a3;
  if (a1)
  {
    v3 = a2(&v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1C9996C30(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [a1 audioBufferList];
  sub_1C9997808();
  while (v2 != v1)
  {
    sub_1C999782C();
    if (v7)
    {
      v8 = v3 + 16 * v6;
      v9 = *(v8 + 8);
      if (!v9)
      {
        __break(1u);
      }

      v10 = *(v8 + 4);
      for (i = 1; v10; --v10)
      {
        v11 = *v9++;
        v17[0] = v11;
        v15 = i & 1;
        sub_1C999767C(&v15, v17, sub_1C9996BEC, &v16);
        i = v16;
      }
    }
  }

  if (i)
  {
    type metadata accessor for SNError(v5);
    sub_1C98573F8();
    sub_1C9820900(v13, v12 + 9, v14);
    swift_willThrow();
  }
}

void sub_1C9996D74(void *a1)
{
  [a1 audioBufferList];
  sub_1C9997808();
  while (v2 != v1)
  {
    sub_1C999782C();
    if (v8)
    {
      if (!*(v3 + 16 * v7 + 8))
      {
        __break(1u);
      }

      sub_1C9997878();
      for (; v4; --v4)
      {
        sub_1C9997864();
        sub_1C999783C(v10, v11, v12, v13, v14, v15, v16, v17, v21, SBYTE2(v21), SBYTE3(v21), SHIDWORD(v21));
        v9 = BYTE3(v21);
      }

      v5 = v9 ^ 1;
    }
  }

  if (v5)
  {
    type metadata accessor for SNError(v6);
    sub_1C98573F8();
    sub_1C9820900(v19, v18 + 13, v20);
    swift_willThrow();
  }
}

void sub_1C9996E90(void *a1)
{
  [a1 audioBufferList];
  sub_1C9997808();
  while (v2 != v1)
  {
    sub_1C999782C();
    if (v8)
    {
      if (!*(v3 + 16 * v7 + 8))
      {
        __break(1u);
      }

      sub_1C9997878();
      for (; v4; --v4)
      {
        sub_1C9997864();
        sub_1C999783C(v10, v11, v12, v13, v14, v15, v16, v17, v21, SBYTE2(v21), SBYTE3(v21), SHIDWORD(v21));
        v9 = BYTE3(v21);
      }

      v5 = v9 ^ 1;
    }
  }

  if (v5)
  {
    type metadata accessor for SNError(v6);
    sub_1C98573F8();
    sub_1C9820900(v19, v18 + 11, v20);
    swift_willThrow();
  }
}

void sub_1C9996FAC(void *a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  a2(a1, v7);

  type metadata accessor for SNTimeUtils(v8);
  LODWORD(a2) = [a1 frameLength];
  swift_beginAccess();
  v9 = *(a4 + 16);
  v10 = sub_1C97CD960(a2, v9);

  swift_beginAccess();
  v11 = *(a4 + 16);
  *(a4 + 16) = v10;
}

uint64_t sub_1C9997098(void *a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void (*a8)(void *, id), uint64_t a9)
{
  v61 = a2;
  v62 = a8;
  v63 = a9;
  v64 = a1;
  v13 = sub_1C9A91558();
  v60 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v55[-v18];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v55[-v21];
  v23 = a3(v20);
  v25 = v24;
  v26 = a5 + 16;
  if (v24)
  {
    sub_1C984AE10(v26, v68);
    v27 = *(a5 + 24);
    if (!v27 || (v23 == *(a5 + 16) ? (v28 = v25 == v27) : (v28 = 0), !v28 && (sub_1C9A93B18() & 1) == 0))
    {

      v59 = v23;
      sub_1C9A91468();

      v58 = *(v60 + 16);
      v29 = (v58)(v19, v22, v13);
      type metadata accessor for SNFileInjectOperator(v29);
      swift_allocObject();
      sub_1C99DCD68(v19, a7);
      v35 = v34;
      sub_1C999788C();
      *(a6 + 16) = v35;

      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64(&qword_1EC3C5520);
      }

      v36 = sub_1C9A91B58();
      sub_1C97BFF6C(v36, qword_1EC3D3108);
      (v58)(v16, v22, v13);

      v37 = sub_1C9A91B38();
      v38 = sub_1C9A92FC8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v67[0] = v58;
        *v39 = 67109378;
        sub_1C984AE10(a6 + 16, v65);
        *(v39 + 4) = *(a6 + 16) != 0;

        *(v39 + 8) = 2080;
        sub_1C985D764();
        v57 = v37;
        v40 = sub_1C9A93A98();
        v42 = v41;
        v56 = v38;
        v60 = *(v60 + 8);
        (v60)(v16, v13);
        v43 = sub_1C9849140(v40, v42, v67);

        *(v39 + 10) = v43;
        v44 = v57;
        _os_log_impl(&dword_1C9788000, v57, v56, "Try enable injection. Success: %{BOOL}d; URL: %s", v39, 0x12u);
        v45 = v58;
        sub_1C97A592C(v58);
        MEMORY[0x1CCA93280](v45, -1, -1);
        MEMORY[0x1CCA93280](v39, -1, -1);

        (v60)(v22, v13);
      }

      else
      {

        v46 = *(v60 + 8);
        v46(v16, v13);
        v46(v22, v13);
      }

      v23 = v59;
    }
  }

  else
  {
    sub_1C984AE10(v26, v68);
    if (*(a5 + 24))
    {
      sub_1C999788C();
      *(a6 + 16) = 0;

      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64(&qword_1EC3C5520);
      }

      v30 = sub_1C9A91B58();
      sub_1C97BFF6C(v30, qword_1EC3D3108);
      v31 = sub_1C9A91B38();
      v32 = sub_1C9A92FC8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1C9788000, v31, v32, "Disable injection.", v33, 2u);
        MEMORY[0x1CCA93280](v33, -1, -1);
      }
    }
  }

  swift_beginAccess();
  *(a5 + 16) = v23;
  *(a5 + 24) = v25;

  sub_1C984AE10(a6 + 16, v66);
  v47 = *(a6 + 16);
  v48 = swift_allocObject();
  v49 = v61;
  *(v48 + 16) = v61;
  v50 = swift_allocObject();
  v52 = v62;
  v51 = v63;
  v50[2] = v62;
  v50[3] = v51;
  v50[4] = v48;
  v53 = v49;

  if (v47)
  {

    sub_1C99DCBAC(v64, sub_1C99976F4, v50);
  }

  else
  {
    sub_1C9996FAC(v64, v52, v51, v48);
  }
}

uint64_t sub_1C999767C@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t (*a3)(char *)@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1C9996B64(*a1, *a2, a3);
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t sub_1C99976B4@<X0>(char *a1@<X0>, float *a2@<X1>, uint64_t (*a3)(float *)@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1C9996BA8(*a1, a3, *a2);
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t sub_1C9997700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1C9997748(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C999775C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1C999779C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C999783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10, char a11, int a12)
{

  return sub_1C99976B4(&a10, &a12, v12, &a11);
}

uint64_t sub_1C999788C()
{

  return swift_beginAccess();
}

uint64_t sub_1C99978AC(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9997924(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C9997970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

id sub_1C99979DC(void *a1, char a2)
{
  v3 = a2 & 1;
  result = [a1 isOptional];
  if (result != v3)
  {
    sub_1C98CA988();
    sub_1C9A935B8();

    sub_1C99032A8();
    v15 = v6;
    v7 = (a2 & 1) == 0;
    if (a2)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (v7)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    type metadata accessor for SNError(v5);
    MEMORY[0x1CCA90230](v8, v9);

    MEMORY[0x1CCA90230](64, 0xE100000000000000);
    v10 = sub_1C9998E18();
    sub_1C9929478(v10, v11, v12, v13, v14, v15);

    return swift_willThrow();
  }

  return result;
}

void sub_1C9997B64(void *a1, uint64_t a2)
{
  if ([a1 type] != 3)
  {
    type metadata accessor for SNError(v5);
    sub_1C98573F8();
    sub_1C993AD60(v30, v29 + 22, v31);
LABEL_24:
    swift_willThrow();
    return;
  }

  v6 = sub_1C97BDEE0();
  v7 = [a1 sizeRangeForDimension];
  sub_1C97BD318(v8, 0, &qword_1EC3C5690, 0x1E696B098);
  sub_1C9A92798();

  v9 = sub_1C97BDEE0();

  if (v6 != v9)
  {
    type metadata accessor for SNError(v10);
    sub_1C9A935B8();

    sub_1C99032A8();
    v45 = v32;
    v33 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v33);

    MEMORY[0x1CCA90230](0x69736E656D696420, 0xEB00000000736E6FLL);
    v36 = sub_1C9998E18();
    v41 = v45;
LABEL_23:
    sub_1C9929478(v36, v37, v38, v39, v40, v41);

    goto LABEL_24;
  }

  if (v6 < 0)
  {
LABEL_28:
    __break(1u);
  }

  else
  {
    v44 = a2 & 0xC000000000000001;
    v42 = v2;
    v43 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = -v6;
    v12 = 4;
    while (v11 + v12 != 4)
    {
      v13 = v12 - 4;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v44)
      {
        v14 = a2;
        v15 = MEMORY[0x1CCA912B0](v12 - 4, a2);
      }

      else
      {
        if (v13 >= *(v43 + 16))
        {
          goto LABEL_26;
        }

        v14 = a2;
        v15 = *(a2 + 8 * v12);
      }

      v16 = v15;
      v17 = [v15 rangeValue];
      v19 = v18;

      v20 = [a1 sizeRangeForDimension];
      v21 = sub_1C9A92798();

      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1CCA912B0](v12 - 4, v21);
      }

      else
      {
        if (v13 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v22 = *(v21 + 8 * v12);
      }

      v23 = v22;

      v24 = [v23 rangeValue];
      v26 = v25;

      ++v12;
      v28 = v17 == v24 && v19 == v26;
      a2 = v14;
      if (!v28)
      {
        type metadata accessor for SNError(v27);
        sub_1C9A935B8();
        MEMORY[0x1CCA90230](0xD000000000000024, 0x80000001C9ADBFD0);
        v34 = sub_1C9A93A98();
        MEMORY[0x1CCA90230](v34);

        MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9ADC000);
        v35 = sub_1C9A93208();
        MEMORY[0x1CCA90230](v35);

        v36 = sub_1C9998E18();
        v41 = 0xE000000000000000;
        goto LABEL_23;
      }
    }
  }
}

void sub_1C9998000(void *a1, void *a2)
{
  if ([a1 type] != 2)
  {
    type metadata accessor for SNError(v4);
    sub_1C98573F8();
    sub_1C993AD60(v21, v20 + 21, v22);
    goto LABEL_6;
  }

  v5 = [a1 enumeratedShapes];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 isEqual_];

  if ((v7 & 1) == 0)
  {
    type metadata accessor for SNError(v8);
    sub_1C98CA988();
    sub_1C9A935B8();

    sub_1C99032A8();
    v23 = v9;
    v11 = [a2 description];
    v12 = sub_1C9A924A8();
    v14 = v13;

    MEMORY[0x1CCA90230](v12, v14);

    v15 = sub_1C9998E18();
    sub_1C9929478(v15, v16, v17, v18, v19, v23);

LABEL_6:
    swift_willThrow();
  }
}

id sub_1C9998208(void *a1)
{
  result = [a1 type];
  if (result != 1)
  {
    type metadata accessor for SNError(v2);
    sub_1C98573F8();
    sub_1C993AD60(v4, v3 + 27, v5);
    return swift_willThrow();
  }

  return result;
}

id sub_1C9998290(void *a1, id a2)
{
  result = [a1 dataType];
  if (result != a2)
  {
    type metadata accessor for SNError(v4);
    sub_1C98CA988();
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000026, 0x80000001C9ADBE70);
    type metadata accessor for MLMultiArrayDataType(0);
    sub_1C9A93728();
    v5 = sub_1C9998E18();
    sub_1C9929478(v5, v6, v7, v8, v9, v10);

    return swift_willThrow();
  }

  return result;
}

id sub_1C9998394(void *a1)
{
  result = [a1 type];
  if (result != 5)
  {
    type metadata accessor for SNError(v2);
    sub_1C98573F8();
    sub_1C993AD60(v4, v3 + 18, v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C999841C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v6 = a3;
  a5();

  return 1;
}

void sub_1C9998498(void *a1, void *a2, uint64_t a3)
{
  sub_1C9998290(a1, a2);
  if (!v3)
  {
    [a1 shapeConstraint];
    sub_1C97BD318(v5, 0, &qword_1EC3C5690, 0x1E696B098);
    sub_1C9A92778();
    __break(1u);
  }
}

void sub_1C9998560(void *a1, void *a2, void *a3)
{
  sub_1C9998290(a1, a2);
  if (!v3)
  {
    v6 = [a1 shapeConstraint];
    sub_1C9998000(v6, a3);
  }
}

uint64_t sub_1C99985E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(id, uint64_t, id))
{
  v10 = a3;
  v11 = a5;
  a7(v10, a4, v11);

  return 1;
}

void sub_1C9998688(void *a1, void *a2)
{
  sub_1C9998290(a1, a2);
  if (!v2)
  {
    v4 = [a1 shapeConstraint];
    sub_1C9998208(v4);
  }
}

uint64_t sub_1C99986FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = a3;
  a6();

  return 1;
}

void sub_1C9998798(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t))
{
  sub_1C99979DC(a1, a2);
  if (!v5)
  {
    sub_1C9998394(a1);
    v10 = [a1 multiArrayConstraint];
    if (v10)
    {
      v11 = v10;
      a5(v10, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C9998850(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v12 = a3;
  v13 = a6;
  sub_1C9998798(v12, a4, a5, v13, a8);

  return 1;
}

void sub_1C9998904(void *a1, char a2, void *a3)
{
  sub_1C99979DC(a1, a2);
  if (!v3)
  {
    sub_1C9998394(a1);
    v6 = [a1 multiArrayConstraint];
    if (v6)
    {
      v7 = v6;
      sub_1C9998688(v6, a3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C9998A18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 inputDescriptionsByName];
  sub_1C97BD318(v7, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v8 = sub_1C9A92328();

  v9 = sub_1C9A08638(v8);
  v10 = [a1 outputDescriptionsByName];
  v11 = sub_1C9A92328();

  v12 = sub_1C9A08638(v11);
  v13 = sub_1C9A3C12C(v9);

  v15 = sub_1C9A3C12C(v14);
  v16 = sub_1C9884CEC(v13, v15);

  if (v16)
  {
    v17 = sub_1C9A3C12C(v12);

    v19 = sub_1C9A3C12C(v18);
    v20 = sub_1C9884CEC(v17, v19);

    if (v20)
    {
      return result;
    }

    type metadata accessor for SNError(v22);
    sub_1C98CA988();
    sub_1C9A935B8();

    sub_1C99032A8();
    v34 = v23;
    v24 = MEMORY[0x1CCA90460](a3, MEMORY[0x1E69E6158]);
    MEMORY[0x1CCA90230](v24);

    v25 = sub_1C9998E18();
    v30 = v34;
  }

  else
  {

    type metadata accessor for SNError(v31);
    sub_1C98CA988();
    sub_1C9A935B8();

    sub_1C99032A8();
    v35 = v32;
    v33 = MEMORY[0x1CCA90460](a2, MEMORY[0x1E69E6158]);
    MEMORY[0x1CCA90230](v33);

    v25 = sub_1C9998E18();
    v30 = v35;
  }

  sub_1C9929478(v25, v26, v27, v28, v29, v30);

  return swift_willThrow();
}

id sub_1C9998D68(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SNValidateModel(a1);
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1C9998DC0(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SNValidateModel(a1);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1C9998E34()
{
}

uint64_t SNSoundActionCommand.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNSoundActionCommand_impl);

  return v1;
}

BOOL sub_1C9998EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a3 != a6)
    {
      return 0;
    }

    return a7 == a8;
  }

  v13 = sub_1C9A93B18();
  result = 0;
  if ((v13 & 1) != 0 && a3 == a6)
  {
    return a7 == a8;
  }

  return result;
}

uint64_t sub_1C9998F30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C9ADA510 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001C9ADA4F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
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