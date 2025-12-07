uint64_t sub_1B21D9E14@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1B2252220();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t DatabaseBackupProgress.completedPageCount.getter()
{
  v1 = v0[1];
  result = v1 - *v0;
  if (__OFSUB__(v1, *v0))
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseBackupProgress(uint64_t a1, unsigned int a2)
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
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for DatabaseBackupProgress(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t TableAlias.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

_BYTE *sub_1B21D9F5C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 48);
  sub_1B2252220();
  if (!*(v7 + 16))
  {

LABEL_7:
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);

    v12 = v14;
    if (v13 < 0)
    {
      v12 = sub_1B21D9F5C(a1, a2);
      sub_1B211B418(v14, v13);
    }

    else
    {
      v15 = Database.columns(in:)(a1, a2);

      if (!v3)
      {
        v12 = *(v15 + 16);
      }
    }

    return v12;
  }

  v8 = sub_1B211E590();
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

  memcpy(__dst, (*(v7 + 56) + 176 * v8), 0xABuLL);
  sub_1B21818BC(__dst, __src);
  v11 = sub_1B2139B70();
  if (__dst[0])
  {
    v12 = *(__dst[0] + 16);
  }

  else
  {
    memcpy(__src, &__dst[1], 0xA2uLL);
    sub_1B214CFE0(&__dst[1], v18);
    v12 = __src;
    v16 = sub_1B21E98EC(v11);
    if (v3)
    {
      memcpy(v18, __src, 0xA2uLL);
      sub_1B21DAF74(v18);

      sub_1B219A920(__dst);
      return v12;
    }

    v12 = v16;
    memcpy(v18, __src, 0xA2uLL);
    sub_1B21DAF74(v18);
  }

  sub_1B219A920(__dst);
  return v12;
}

uint64_t sub_1B21DA128@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B21DA160(a2 + 2, *a1, a1[1], a1 + 2);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B21DA160(void *a1, uint64_t a2, uint64_t a3, void *__src)
{
  memcpy(__dst, __src, 0xABuLL);
  v6 = sub_1B2252220();
  memcpy(a1, __src, 0xABuLL);
  sub_1B21818BC(__dst, &v8);
  return v6;
}

uint64_t sub_1B21DA1EC()
{
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  result = sub_1B2114D98(1, v0, v1, v2, v3, v4, v5);
  qword_1ED861900 = result;
  return result;
}

uint64_t TableAlias.init(name:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  return v2;
}

uint64_t sub_1B21DA240(uint64_t result)
{
  v2 = v1;
  if (v1 != result)
  {
    v3 = result;
    v5 = (v2 + 24);
    v4 = *(v2 + 24);
    v6 = *(v2 + 16);
    v8 = *(v2 + 32);
    v7 = *(v2 + 40);
    if (*(v2 + 48))
    {
      if (*(v2 + 48) == 1)
      {

        if (v7)
        {
          v9 = sub_1B2111F44();
          sub_1B21DA5F0(v9, v10);
        }

        v11 = *(v2 + 16);
        v12 = *(v2 + 24);
        v13 = *(v2 + 32);
        v14 = *(v2 + 40);
        *(v2 + 16) = v3;
        *v5 = 0;
        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
        v15 = *(v2 + 48);
        *(v2 + 48) = 2;

        v16 = v11;
        v17 = v12;
        v18 = v13;
        v19 = v14;
        v20 = v15;
      }

      else
      {

        sub_1B21DA240(v3);
        v16 = sub_1B21183AC();
        v20 = 2;
      }
    }

    else
    {
      if (v4)
      {

        sub_1B21DA5F0(v6, v4);
        v21 = sub_1B21183AC();
        sub_1B2142C9C(v21, v22, v23, v24, 0);
        v6 = *(v2 + 16);
        v25 = *(v2 + 24);
        v8 = *(v2 + 32);
        v7 = *(v2 + 40);
        LOBYTE(v4) = *(v2 + 48);
      }

      else
      {
        v25 = 0;
      }

      *(v2 + 16) = v3;
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      *v5 = 0;
      *(v2 + 48) = 2;

      v16 = v6;
      v17 = v25;
      v18 = v8;
      v19 = v7;
      v20 = v4;
    }

    return sub_1B2142C9C(v16, v17, v18, v19, v20);
  }

  return result;
}

uint64_t sub_1B21DA3B0(uint64_t a1)
{
  v2 = v1;
  if (v1 == a1)
  {
  }

  else
  {
    v3 = sub_1B2138CF0();
    v4 = sub_1B2138CF0();
    v2 = v4;
    v5 = *(v3 + 24);
    v7 = *(v3 + 32);
    v6 = *(v3 + 40);
    v8 = *(v3 + 48);
    v10 = *(v4 + 32);
    v9 = *(v4 + 40);
    if (v8 == 1 && *(v4 + 48) == 1)
    {
      v26 = *(v3 + 16) == *(v4 + 16) && v5 == *(v4 + 24);
      v27 = *(v4 + 24);
      v28 = *(v4 + 16);
      v75 = *(v3 + 16);
      if (v26 || (v29 = *(v3 + 40), v30 = sub_1B22531F0(), v6 = v29, (v30 & 1) != 0))
      {
        v31 = v9;
        if (!v6 || !v9 || (v7 == v10 ? (v32 = v6 == v9) : (v32 = 0), v32 || (v33 = v10, v34 = v6, v35 = sub_1B22531F0(), v6 = v34, v10 = v33, v31 = v9, (v35 & 1) != 0)))
        {
          sub_1B2112B34(v6);
          v36 = sub_1B2117630();
          sub_1B21DAEF8(v36, v37, v38, v31, 1);
          v39 = sub_1B21DA240(v2);
          sub_1B21151F8(v39, v40, v41, v42, v43, v44, v45, v46, v74, v75);
          sub_1B2142C9C(v28, v27, v10, v31, 1);

          return v2;
        }

        sub_1B2112B34(v6);
        v63 = sub_1B2117630();
        v66 = sub_1B21DAEF8(v63, v64, v65, v9, 1);
        sub_1B21151F8(v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
        v59 = sub_1B2117630();
        v62 = v9;
      }

      else
      {
        sub_1B2112B34(v29);
        v48 = sub_1B2117630();
        v51 = sub_1B21DAEF8(v48, v49, v50, v9, 1);
        sub_1B21151F8(v51, v52, v53, v54, v55, v56, v57, v58, v74, v75);
        v59 = sub_1B2117630();
        v62 = v9;
      }

      sub_1B2142C9C(v59, v60, v61, v62, 1);
    }

    else
    {
      v12 = *(v3 + 24);
      v13 = *(v3 + 32);
      v76 = v13;
      v14 = *(v3 + 40);
      v15 = *(v3 + 16);
      sub_1B21DAEF8(v15, v12, v13, v6, v8);
      v16 = sub_1B2111AFC();
      sub_1B21DAEF8(v16, v17, v18, v19, v20);
      sub_1B2142C9C(v15, v5, v76, v14, v8);
      v21 = sub_1B2111AFC();
      sub_1B2142C9C(v21, v22, v23, v24, v25);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1B21DA5F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  if (!*(v2 + 48))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
    *(v2 + 48) = 1;

LABEL_5:

    goto LABEL_7;
  }

  sub_1B21DA5F0(a1, a2);
  LOBYTE(v9) = 2;
LABEL_7:

  return sub_1B2142C9C(v7, v6, v5, v8, v9);
}

uint64_t sub_1B21DA6C0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (*(v2 + 48))
  {
    if (*(v2 + 48) == 1)
    {

      sub_1B2111F44();
      v5 = sub_1B2252220();
      v7 = v6;
      if (v5 == sub_1B2252220() && v7 == v8)
      {
      }

      else
      {
        sub_1B2111F44();
        v10 = sub_1B22531F0();

        if ((v10 & 1) == 0)
        {
          result = sub_1B2252EC0();
          __break(1u);
          return result;
        }
      }
    }

    else
    {
      v13 = *(v2 + 32);
      v12 = *(v2 + 40);

      v14 = sub_1B2111F44();
      sub_1B21DA6C0(v14, v15);

      return sub_1B2142C9C(v4, v3, v13, v12, 2);
    }
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    *(v2 + 32) = v4;
    *(v2 + 40) = v3;
    *(v2 + 48) = 1;
  }
}

uint64_t sub_1B21DA888(void *a1)
{
  v1 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  v2 = sub_1B2115850();
  v3(v2, v1);
  v4 = sub_1B2116218();
  sub_1B21789F8(v4);
  memcpy(__dst, v6, sizeof(__dst));
  return sub_1B213A5CC(__dst);
}

uint64_t sub_1B21DA908(void *a1)
{
  sub_1B21139A0(a1, a1[3]);
  v1 = sub_1B2115850();
  v2(v1);
  v3 = sub_1B2116218();
  sub_1B213BBD8(v3, v4);
  memcpy(__dst, v6, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t sub_1B21DA988(void *a1)
{
  v1 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  v2 = sub_1B2115850();
  v3(v2, v1);
  v4 = sub_1B2116218();
  sub_1B214D9C8(v4, v5);
  memcpy(__dst, v7, 0xA3uLL);
  return sub_1B214DC54(__dst);
}

uint64_t sub_1B21DAA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  sub_1B213CBE4(__src);
  memcpy(a3, __src, 0xA3uLL);
}

uint64_t sub_1B21DAA6C@<X0>(void *a1@<X8>)
{
  LOBYTE(__src[1]) = 0;
  sub_1B21D041C(__src);
  memcpy(a1, __src, 0xA3uLL);
}

uint64_t sub_1B21DAAE4()
{
  sub_1B2253420();
  sub_1B2138CB8();
  return sub_1B2253470();
}

uint64_t sub_1B21DABA0(uint64_t a1)
{
  sub_1B2253420();
  sub_1B2138CB8();
  return sub_1B2253470();
}

uint64_t dispatch thunk of TableAlias.subscript.getter()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 224))();
}

uint64_t sub_1B21DAD38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_1B21DAD78(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B21DADE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 16))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
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

uint64_t sub_1B21DAE54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B21DAED0(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1B21DAEF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  else
  {
    if (a5 == 1)
    {
    }

    else if (a5)
    {
      return v5;
    }
  }
}

uint64_t static Data.fromDatabaseValue(_:)(uint64_t a1)
{
  v2 = sub_1B22522F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 16);
  if (v7 == 3)
  {
    sub_1B2126638(*a1, *(a1 + 8));
  }

  else if (v7 == 2)
  {
    sub_1B22522E0();
    v6 = sub_1B22522B0();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1B21DB0F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Data.fromDatabaseValue(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_1B21DB120()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB98]) initWithRoundingMode:0 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  qword_1EB7A23D8 = result;
  return result;
}

void NSNumber.databaseValue.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  sub_1B21DBA2C();
  v6 = qword_1EB7A0D60;
  v7 = v1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = [v5 decimalNumberByRoundingAccordingToBehavior_];
  v9 = sub_1B2252AB0();

  if ((v9 & 1) == 0 || (v10 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithLongLong_], v11 = objc_msgSend(v5, sel_compare_, v10), v10, v11 == 1) || (v12 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E696AB90]), sel_initWithLongLong_, 0x8000000000000000), v13 = objc_msgSend(v5, sel_compare_, v12), v12, v13 == -1))
  {

LABEL_9:
    [v2 objCType];
    v16 = sub_1B22523F0();
    v18 = v17;
    v19 = v16 == 99 && v17 == 0xE100000000000000;
    if (v19 || (v20 = v16, (sub_1B2117654(99) & 1) != 0))
    {

      v21 = [v2 charValue];
LABEL_15:
      v15 = 0;
      v22 = v21;
LABEL_23:
      *a1 = v22;
      goto LABEL_24;
    }

    v23 = v20 == 67 && v18 == 0xE100000000000000;
    if (v23 || (sub_1B2117654(67) & 1) != 0)
    {

      v24 = [v2 unsignedCharValue];
LABEL_22:
      v15 = 0;
      v22 = v24;
      goto LABEL_23;
    }

    v25 = v20 == 115 && v18 == 0xE100000000000000;
    if (v25 || (sub_1B2117654(115) & 1) != 0)
    {

      v21 = [v2 shortValue];
      goto LABEL_15;
    }

    v26 = v20 == 83 && v18 == 0xE100000000000000;
    if (v26 || (sub_1B2117654(83) & 1) != 0)
    {

      v24 = [v2 unsignedShortValue];
      goto LABEL_22;
    }

    v27 = v20 == 105 && v18 == 0xE100000000000000;
    if (v27 || (sub_1B2117654(105) & 1) != 0)
    {

      v21 = [v2 intValue];
      goto LABEL_15;
    }

    v28 = v20 == 73 && v18 == 0xE100000000000000;
    if (v28 || (sub_1B2117654(73) & 1) != 0)
    {

      v24 = [v2 unsignedIntValue];
      goto LABEL_22;
    }

    v29 = v20 == 108 && v18 == 0xE100000000000000;
    if (v29 || (sub_1B2117654(108) & 1) != 0)
    {

      v30 = [v2 integerValue];
LABEL_55:
      v15 = 0;
      *a1 = v30;
      goto LABEL_24;
    }

    v31 = v20 == 76 && v18 == 0xE100000000000000;
    if (v31 || (sub_1B2117654(76) & 1) != 0)
    {

      v32 = [v2 unsignedIntegerValue];
      if ((v32 & 0x8000000000000000) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v33 = v20 == 113 && v18 == 0xE100000000000000;
      if (v33 || (sub_1B2117654(113) & 1) != 0)
      {

        v30 = [v2 longLongValue];
        goto LABEL_55;
      }

      v34 = v20 == 81 && v18 == 0xE100000000000000;
      if (!v34 && (sub_1B2117654(81) & 1) == 0)
      {
        v35 = v20 == 102 && v18 == 0xE100000000000000;
        if (v35 || (sub_1B2117654(102) & 1) != 0)
        {

          [v2 floatValue];
          v37 = v36;
        }

        else
        {
          v38 = v20 == 100 && v18 == 0xE100000000000000;
          if (!v38 && (sub_1B2117654(100) & 1) == 0)
          {
            v39 = v20 == 66 && v18 == 0xE100000000000000;
            if (!v39 && (sub_1B2117654(66) & 1) == 0)
            {
              goto LABEL_97;
            }

            v24 = [v2 BOOLValue];
            goto LABEL_22;
          }

          [v2 doubleValue];
        }

        *a1 = v37;
        v15 = 1;
        goto LABEL_24;
      }

      v32 = [v2 unsignedLongLongValue];
      if ((v32 & 0x8000000000000000) == 0)
      {
LABEL_62:
        v15 = 0;
        *a1 = v32;
        goto LABEL_24;
      }
    }

    sub_1B211521C();
    sub_1B2252CD0();
    sub_1B2112B5C();
    v40 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v40);

    sub_1B2115864();
    while (1)
    {
      sub_1B2252EC0();
      __break(1u);
LABEL_97:
      sub_1B211521C();
      sub_1B2252CD0();
      MEMORY[0x1B2741EB0](0xD000000000000035, 0x80000001B226EEC0);
      MEMORY[0x1B2741EB0](v20, v18);
    }
  }

  v14 = [v7 longLongValue];

  v15 = 0;
  *a1 = v14;
LABEL_24:
  *(a1 + 8) = 0;
  *(a1 + 16) = v15;
}

id static NSNumber.fromDatabaseValue(_:)(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = *a1;
  v6 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLongLong_];
  }

  if (v6 == 2)
  {
    if (qword_1EB7A0D68 != -1)
    {
      swift_once();
    }

    v8 = sub_1B2251F10();
    v9 = sub_1B2156958(v8, qword_1EB7A23E0);
    (*(*(v8 - 8) + 16))(v4, v9, v8);
    sub_1B21117B4(v4, 0, 1, v8);
    v10 = sub_1B2252AD0();
    v12 = v11;
    v14 = v13;
    sub_1B21D12D0(v4);
    if ((v14 & 0x100000000) == 0)
    {
      v15 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v18[0] = v10;
      v18[1] = v12;
      v19 = v14;
      v16 = [v15 initWithDecimal_];
      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }
  }

  else if (v6 == 1)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDouble_];
  }

  return 0;
}

id sub_1B21DB998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = static NSNumber.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B21DB9C0()
{
  v0 = sub_1B2251F10();
  sub_1B2175CC4(v0, qword_1EB7A23E0);
  sub_1B2156958(v0, qword_1EB7A23E0);
  return sub_1B2251EF0();
}

unint64_t sub_1B21DBA2C()
{
  result = qword_1EB7A23F8;
  if (!qword_1EB7A23F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7A23F8);
  }

  return result;
}

uint64_t FTS3Pattern.rawPattern.getter()
{
  v1 = *v0;

  return v1;
}

GRDBInternal::FTS3Pattern __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FTS3Pattern.init(rawPattern:)(Swift::String rawPattern)
{
  object = rawPattern._object;
  countAndFlagsBits = rawPattern._countAndFlagsBits;
  v5 = v1;
  v6 = type metadata accessor for Configuration(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = 1;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 23) = 0;
  *(v9 + 4) = MEMORY[0x1E69E7CC0];
  *(v9 + 20) = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  v9[64] = 2;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  v9[88] = -1;
  *(v9 + 12) = 5;
  sub_1B2252110();
  *&v9[v7[19]] = 0;
  *&v9[v7[20]] = 0;
  v9[v7[21]] = 1;
  v9[v7[22]] = 0;
  v10 = &v9[v7[23]];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v9[v7[24]];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v9[v7[25]];
  type metadata accessor for DatabaseQueue();
  *v12 = 0;
  v12[1] = 0;
  swift_allocObject();
  DatabaseQueue.init(configuration:)(v9);
  v24 = countAndFlagsBits;
  v25 = object;
  sub_1B2113C20(sub_1B21DC4CC, v23);
  if (v2)
  {

    v31 = v2;
    v13 = v2;
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    if (swift_dynamicCast())
    {

      v26[0] = v28;
      v26[1] = v29;
      v27[0] = v30[0];
      *(v27 + 9) = *(v30 + 9);
      v14 = v28;
      v16 = *(&v28 + 1);
      v15 = v29;
      sub_1B21AC298();
      swift_allocError();
      v18 = v17;
      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v20 = sqlite3_errstr(v14);
        if (!v20)
        {
          __break(1u);
          goto LABEL_11;
        }

        v16 = sub_1B22523F0();
      }

      *v18 = v14;
      *(v18 + 8) = v16;
      *(v18 + 16) = v19;
      *(v18 + 24) = 0u;
      *(v18 + 40) = 0u;
      *(v18 + 56) = 0;

      sub_1B21DC4E8(v26);
      swift_willThrow();
    }
  }

  else
  {

    *v5 = countAndFlagsBits;
    v5[1] = object;
  }

LABEL_11:
  result.rawPattern._object = v21;
  result.rawPattern._countAndFlagsBits = v20;
  return result;
}

uint64_t sub_1B21DBD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2127C14();
  v18 = v5;
  v6._object = 0x80000001B226EFB0;
  v6._countAndFlagsBits = 0xD000000000000059;
  SQLInterpolation.appendLiteral(_:)(v6);
  __dst[0] = a2;
  __dst[1] = a3;

  v7 = sub_1B2252490();
  v9 = v8;
  v10 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B2127C14();
    v10 = v14;
  }

  v11 = *(v10 + 16);
  if (v11 >= *(v10 + 24) >> 1)
  {
    sub_1B2127C14();
    v10 = v15;
  }

  __src[0] = v7;
  __src[1] = v9;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B2127AE0(__dst);
  *(v10 + 16) = v11 + 1;
  memcpy((v10 + 184 * v11 + 32), __dst, 0xB8uLL);
  v18 = v10;
  v12._countAndFlagsBits = 59;
  v12._object = 0xE100000000000000;
  SQLInterpolation.appendLiteral(_:)(v12);
  Database.execute(literal:)(&v18);
}

GRDBInternal::FTS3Pattern_optional __swiftcall FTS3Pattern.init(matchingAnyTokenIn:)(Swift::String matchingAnyTokenIn)
{
  sub_1B21DBEE0(matchingAnyTokenIn._countAndFlagsBits, matchingAnyTokenIn._object, v1);
  result.value.rawPattern._object = v3;
  result.value.rawPattern._countAndFlagsBits = v2;
  result.is_nil = v4;
  return result;
}

GRDBInternal::FTS3Pattern_optional __swiftcall FTS3Pattern.init(matchingAllTokensIn:)(Swift::String matchingAllTokensIn)
{
  sub_1B21DBEE0(matchingAllTokensIn._countAndFlagsBits, matchingAllTokensIn._object, v1);
  result.value.rawPattern._object = v3;
  result.value.rawPattern._countAndFlagsBits = v2;
  result.is_nil = v4;
  return result;
}

void sub_1B21DBEE0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a5@<X8>)
{
  if (qword_1EB7A0D70 != -1)
  {
    sub_1B2117674(&qword_1EB7A0D70);
  }

  v15 = qword_1EB7A30F8;
  v16 = unk_1EB7A3100;
  v17 = qword_1EB7A3108;

  v8 = static FTS3.tokenize(_:withTokenizer:)(a1, a2, &v15);

  if (!*(v8 + 16))
  {

    goto LABEL_7;
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v9 = sub_1B2252250();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  FTS3Pattern.init(rawPattern:)(v12);
  if (v13)
  {

LABEL_7:
    *a5 = 0;
    a5[1] = 0;
    return;
  }

  v14 = v16;
  *a5 = v15;
  a5[1] = v14;
}

GRDBInternal::FTS3Pattern_optional __swiftcall FTS3Pattern.init(matchingAllPrefixesIn:)(Swift::String matchingAllPrefixesIn)
{
  v2 = v1;
  if (qword_1EB7A0D70 != -1)
  {
    sub_1B2117674(&qword_1EB7A0D70);
  }

  v32 = qword_1EB7A30F8;
  v33 = unk_1EB7A3100;

  v3 = sub_1B2112864();
  v6 = static FTS3.tokenize(_:withTokenizer:)(v3, v4, v5);

  v11 = *(v6 + 16);
  if (v11)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v11, 0, v7, v8, v9, v10);
    v12 = (v6 + 40);
    do
    {
      v29 = *(v12 - 1);
      v30 = *v12;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1B2741EB0](42, 0xE100000000000000);

      v18 = *(v31 + 16);
      v17 = *(v31 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B2116B10(v17 > 1, v18 + 1, 1, v13, v14, v15, v16);
      }

      *(v31 + 16) = v18 + 1;
      v19 = v31 + 16 * v18;
      *(v19 + 32) = v29;
      *(v19 + 40) = v30;
      v12 += 2;
      --v11;
    }

    while (v11);

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v20 = sub_1B2252250();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    v28 = FTS3Pattern.init(rawPattern:)(v23);
    object = v28.rawPattern._object;
    countAndFlagsBits = v28.rawPattern._countAndFlagsBits;
    if (!v27)
    {
      *v2 = v32;
      v2[1] = v33;
      goto LABEL_13;
    }
  }

  else
  {
  }

  *v2 = 0;
  v2[1] = 0;
LABEL_13:
  result.value.rawPattern._object = object;
  result.value.rawPattern._countAndFlagsBits = countAndFlagsBits;
  result.is_nil = v26;
  return result;
}

GRDBInternal::FTS3Pattern_optional __swiftcall FTS3Pattern.init(matchingPhrase:)(Swift::String matchingPhrase)
{
  v2 = v1;
  if (qword_1EB7A0D70 != -1)
  {
    sub_1B2117674(&qword_1EB7A0D70);
  }

  v16 = qword_1EB7A30F8;
  v17 = unk_1EB7A3100;

  v3 = sub_1B2112864();
  v6 = static FTS3.tokenize(_:withTokenizer:)(v3, v4, v5);

  if (*(v6 + 16))
  {
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v7 = sub_1B2252250();
    v9 = v8;

    MEMORY[0x1B2741EB0](v7, v9);

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    v10._countAndFlagsBits = 34;
    v10._object = 0xE100000000000000;
    v15 = FTS3Pattern.init(rawPattern:)(v10);
    object = v15.rawPattern._object;
    countAndFlagsBits = v15.rawPattern._countAndFlagsBits;
    if (!v14)
    {
      *v2 = v16;
      v2[1] = v17;
      goto LABEL_9;
    }
  }

  else
  {
  }

  *v2 = 0;
  v2[1] = 0;
LABEL_9:
  result.value.rawPattern._object = object;
  result.value.rawPattern._countAndFlagsBits = countAndFlagsBits;
  result.is_nil = v13;
  return result;
}

uint64_t FTS3Pattern.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

void static FTS3Pattern.fromDatabaseValue(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *(a1 + 16);
  if (v5 != 3)
  {
    if (v5 == 2)
    {

      goto LABEL_5;
    }

LABEL_7:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  sub_1B22522E0();
  sub_1B2112864();
  sub_1B22522C0();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  swift_bridgeObjectRetain_n();
  v7._countAndFlagsBits = sub_1B2112864();
  FTS3Pattern.init(rawPattern:)(v7);
  if (v8)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_7;
  }

  swift_bridgeObjectRelease_n();
  *a2 = v9;
  a2[1] = v10;
}

unint64_t sub_1B21DC54C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1B22524A0();

    return v4;
  }

  return result;
}

uint64_t sub_1B21DC5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v16, v11, 0xA3uLL);
  type metadata accessor for BasePreparation(0, a2, a3, v12);
  (*(v8 + 16))(v10, v4, a2);
  memcpy(v15, v16, 0xA3uLL);
  v13 = sub_1B21DC71C(v10, v15);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = v13;
  return sub_1B2127DC0(v16, v15);
}

void AssociationToMany.count.getter()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  __src[0] = 0x544E554F43;
  __src[1] = 0xE500000000000000;
  LOWORD(__src[2]) = 257;
  __src[3] = &unk_1F2969878;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v3, v1, &v82);
  memcpy(v85, __dst, 0xA3uLL);
  sub_1B21356F8(v85);
  *&__dst[1] = v83;
  v79 = 0;
  v80 = 0xE000000000000000;
  __dst[0] = v82;
  v4 = sub_1B2232B00();
  v5 = v4;
  v7 = v6;
  switch(v8)
  {
    case 1:
    case 3:
      goto LABEL_27;
    case 2:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_31;
    default:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_3;
      }

      break;
  }

  while (1)
  {
    v4 = sub_1B2112A24(&qword_1ED85D818);
LABEL_3:
    sub_1B21225C8(v4, v78);
    v9 = off_1ED85D830;

    v10 = sub_1B212DF30();
    v12 = sub_1B21FDA08(v10, v11);
    sub_1B212DF30();
    sub_1B21FD8E0();
    sub_1B2124238();
    if (!v14)
    {
      break;
    }

    v72 = v12;
    v73 = v13;
    sub_1B2121238();
    v75 = v7;
    v15 = sub_1B22524A0();
    v16 = MEMORY[0x1B2741E40](v15);
    v18 = v17;

    v77 = v18;
    MEMORY[0x1B2741F40](v16, v18);
    v19 = 0;
    v7 = v9;
    v20 = v9 + 64;
    sub_1B21115A0();
    sub_1B21260D4();
    v22 = v21 >> 6;
    while (v9)
    {
LABEL_11:
      sub_1B21183C0();
      v25 = sub_1B2122240(v24);
      v5 = sub_1B2252290();
      sub_1B2115CB0();
      v28 = [v26 v27];

      if (v28)
      {

        v29 = sub_1B212DF30();
        v31 = 0;
LABEL_26:
        sub_1B21C807C(v29, v30, v31);
LABEL_27:
        v64 = sub_1B212DF30();
        MEMORY[0x1B2741EB0](v64);

        MEMORY[0x1B2741EB0](0x746E756F43, 0xE500000000000000);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        sub_1B211D6B0(AssociatedTypeWitness, v66, v67, v68);
        sub_1B211187C();
        AssociationAggregate.forKey(_:)(v69, v70);

        sub_1B2111588();
        return;
      }
    }

    while (1)
    {
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        sub_1B211D9A4();
        v48 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v48);

        sub_1B21FDE44(v16, v77);
        sub_1B211E510();
        sub_1B211F1C8();

        v57 = sub_1B211F6DC(v49, v50, v51, v52, v53, v54, v55, v56, v71, v72, v73);
        v59 = sub_1B21DC54C(v57, v58, v75);
        MEMORY[0x1B2741E40](v59);
        sub_1B211E510();
        sub_1B211F1C8();

        v29 = sub_1B212DF30();
        v31 = 0;
        goto LABEL_26;
      }

      v9 = *&v20[8 * v23];
      ++v19;
      if (v9)
      {
        v19 = v23;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  v4 = sub_1B2112A24(&qword_1ED85D818);
LABEL_14:
  sub_1B21225C8(v4, v78);
  v32 = off_1ED85D830;

  v33 = sub_1B212DF30();
  sub_1B21FDA08(v33, v34);
  sub_1B212DF30();
  sub_1B21FD8E0();
  sub_1B2124238();
  if (v14)
  {
    v74 = v35;
    sub_1B2121238();
    v76 = v5;
    v36 = sub_1B22524A0();
    v5 = v37;
    MEMORY[0x1B2741E40](v36);
    sub_1B21E1B2C();

    sub_1B21E1B6C();
    v38 = 0;
    v39 = v32 + 64;
    sub_1B21115A0();
    sub_1B21260D4();
    v41 = v40 >> 6;
    while (v32)
    {
LABEL_22:
      sub_1B21183C0();
      v5 = sub_1B2122240(v43);
      v44 = sub_1B2252290();
      sub_1B2115CB0();
      v47 = [v45 v46];

      if (v47)
      {

        v29 = sub_1B212DF30();
        v31 = 2;
        goto LABEL_26;
      }
    }

    while (1)
    {
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_29;
      }

      if (v42 >= v41)
      {

        sub_1B211D9A4();
        v60 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v60);
        sub_1B21140B8();

        sub_1B211FE6C();
        sub_1B21FDE44(v61, v62);
        sub_1B21140B8();

        sub_1B213CD78();

        v63 = sub_1B21DC54C(v74, v76, v7);
        MEMORY[0x1B2741E40](v63);
        sub_1B21140B8();

        sub_1B213CD78();

        v29 = v76;
        v30 = v7;
        v31 = 2;
        goto LABEL_26;
      }

      v32 = *&v39[8 * v42];
      ++v38;
      if (v32)
      {
        v38 = v42;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
}

void AssociationToMany.isEmpty.getter()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  __src[0] = 0x544E554F43;
  __src[1] = 0xE500000000000000;
  LOWORD(__src[2]) = 257;
  __src[3] = &unk_1F2969940;
  sub_1B2179374(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0xA3uLL);
  *(v4 + 179) = 0;
  v73[0] = v4;
  sub_1B21D04A8(v73);
  memcpy(__dst, v73, 0xA3uLL);
  sub_1B21DC5F0(__dst, v3, v1, &v70);
  memcpy(v74, __dst, 0xA3uLL);
  sub_1B21356F8(v74);
  v68 = 0xE500000000000000;
  __dst[0] = v70;
  *&__dst[1] = v71;
  v67 = 0x6F4E736168;
  v5 = sub_1B2232B00();
  v6 = v5;
  v8 = v7;
  switch(v9)
  {
    case 1:
    case 3:
      goto LABEL_27;
    case 2:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_31;
    default:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_3;
      }

      break;
  }

  while (1)
  {
    v5 = sub_1B2112A24(&qword_1ED85D818);
LABEL_3:
    sub_1B21225C8(v5, v66);
    v10 = off_1ED85D830;

    v11 = sub_1B2122034();
    sub_1B21FDA08(v11, v12);
    sub_1B2122034();
    sub_1B21FD8E0();
    sub_1B2124238();
    if (!v14)
    {
      break;
    }

    v63 = v6;
    v60 = v13;
    sub_1B2121238();
    v62 = v8;
    v15 = sub_1B22524A0();
    v16 = MEMORY[0x1B2741E40](v15);
    v18 = v17;

    v65 = v18;
    MEMORY[0x1B2741F40](v16, v18);
    v6 = 0;
    v8 = v10;
    v19 = v10 + 64;
    sub_1B21115A0();
    sub_1B21260D4();
    v21 = v20 >> 6;
    while (v10)
    {
LABEL_11:
      sub_1B21183C0();
      v24 = sub_1B2122240(v23);
      v25 = sub_1B2252290();
      sub_1B2115CB0();
      v28 = [v26 v27];

      if (v28)
      {

        v29 = sub_1B2122034();
        v31 = 0;
LABEL_26:
        sub_1B21C807C(v29, v30, v31);
LABEL_27:
        sub_1B2122034();
        sub_1B21FD218();

        v53 = sub_1B211187C();
        MEMORY[0x1B2741EB0](v53);

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        sub_1B211D6B0(AssociatedTypeWitness, v55, v56, v57);
        sub_1B211187C();
        AssociationAggregate.forKey(_:)(v58, v59);

        sub_1B2111588();
        return;
      }
    }

    while (1)
    {
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v22 >= v21)
      {

        v47 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v47);

        sub_1B21FDE44(v16, v65);
        sub_1B211E510();
        sub_1B211F1C8();

        v48 = sub_1B21DC54C(v60, v63, v62);
        MEMORY[0x1B2741E40](v48);
        sub_1B211E510();
        sub_1B211F1C8();

        v29 = sub_1B212DF30();
        v31 = 0;
        goto LABEL_26;
      }

      v10 = *&v19[8 * v22];
      ++v6;
      if (v10)
      {
        v6 = v22;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  v5 = sub_1B2112A24(&qword_1ED85D818);
LABEL_14:
  sub_1B21225C8(v5, v66);
  v32 = off_1ED85D830;

  v33 = sub_1B2122034();
  sub_1B21FDA08(v33, v34);
  sub_1B2122034();
  sub_1B21FD8E0();
  sub_1B2124238();
  if (v14)
  {
    v61 = v35;
    sub_1B2121238();
    v64 = v6;
    v36 = sub_1B22524A0();
    MEMORY[0x1B2741E40](v36);
    sub_1B21E1B2C();

    sub_1B21E1B6C();
    v6 = 0;
    v37 = v32 + 64;
    sub_1B21115A0();
    sub_1B21260D4();
    v39 = v38 >> 6;
    while (v32)
    {
LABEL_22:
      sub_1B21183C0();
      v42 = sub_1B2122240(v41);
      v43 = sub_1B2252290();
      sub_1B2115CB0();
      v46 = [v44 v45];

      if (v46)
      {

        v29 = sub_1B2122034();
        v31 = 2;
        goto LABEL_26;
      }
    }

    while (1)
    {
      v40 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_29;
      }

      if (v40 >= v39)
      {

        v49 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v49);
        sub_1B21140B8();

        sub_1B211FE6C();
        sub_1B21FDE44(v50, v51);
        sub_1B21140B8();

        sub_1B213CD78();

        v52 = sub_1B21DC54C(v61, v64, v8);
        MEMORY[0x1B2741E40](v52);
        sub_1B21140B8();

        sub_1B213CD78();

        v29 = v64;
        v30 = v8;
        v31 = 2;
        goto LABEL_26;
      }

      v32 = *&v37[8 * v40];
      ++v6;
      if (v32)
      {
        v6 = v40;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
}

void AssociationToMany.average(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B21DD5AC();
}

{
  sub_1B21DDCB0();
}

void AssociationToMany.max(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B211AE18(a1, a2, a3, 5783885, 7889261);
}

{
  sub_1B2111680(a1, a2, a3, 5783885, 7889261);
}

void sub_1B21DD5AC()
{
  sub_1B2111F14();
  v178 = v1;
  v180 = v2;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v15 = sub_1B21325C8(v14);
  *(v15 + 16) = xmmword_1B22546B0;
  v16 = v11[4];
  sub_1B21139A0(v11, v11[3]);
  v17 = sub_1B21E1B38();
  v18 = v16;
  v19 = v9;
  v20(v17, v18);
  __src[0] = v4;
  __src[1] = 0xE300000000000000;
  LOWORD(__src[2]) = 1;
  __src[3] = v15;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v9, v7, v189);
  memcpy(v192, __dst, 0xA3uLL);
  v21 = sub_1B21356F8(v192);
  sub_1B212D890(v21, v22, v23, v24, v25, v26, v27, v28, v126, v131, v136, v141, v145, v149, v153, v156, v159, v162, v165, v169, v172, v175, v178, v180, v182, v184, v186, *(&v186 + 1), v187, *(&v187 + 1), v188, v189[0]);
  v29 = sub_1B21619D8(&qword_1EB7A1170, &qword_1B2254990);
  v30 = sub_1B21619D8(&qword_1EB7A2400, &qword_1B225E0F0);
  if (sub_1B213CE68(v30, v31, v32, v33, v34, v35, v36, v37, v127, v132, v137, v142, v146, v150, v154, v157, v160, v163, v166, v170, v173, v176, v179, v181, v183, v185, v186, *(&v186 + 1), v187, *(&v187 + 1), v188, v189[0]))
  {
    v174 = v15;
    v177 = v9;
    sub_1B21217FC(&v186, __dst);
    sub_1B21E1B4C();
    v39 = v38;
    switch(v40)
    {
      case 1:
      case 3:
        goto LABEL_29;
      case 2:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_34;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        break;
    }

    while (1)
    {
      sub_1B2112A24(&qword_1ED85D818);
LABEL_4:
      sub_1B2135358();
      v29 = &xmmword_1ED85D820;
      sub_1B2115F28(&xmmword_1ED85D820, &v186);
      v41 = *(&xmmword_1ED85D820 + 1);
      v42 = off_1ED85D830;
      v167 = xmmword_1ED85D820;

      v147 = v41;

      v43 = sub_1B21180C0();
      sub_1B21FDA08(v43, v44);
      sub_1B21180C0();
      sub_1B21FD8E0();
      sub_1B2113088();
      if (v45)
      {
        sub_1B211522C();
        sub_1B214CC48();
        v143 = v39;
        v46 = sub_1B22524A0();
        v47 = MEMORY[0x1B2741E40](v46);
        v49 = v48;

        v171 = v49;
        MEMORY[0x1B2741F40](v47, v49);
        sub_1B213CB20();
        v39 = v42;
        v50 = v42 + 64;
        sub_1B21115A0();
        sub_1B2146B24();
        v13 = (v51 >> 6);
        while (v5)
        {
LABEL_12:
          sub_1B2116228();
          v54 = sub_1B2122240(v53);
          v49 = sub_1B2252290();
          v55 = sub_1B2111B14();
          v4 = [v55 v56];

          if (v4)
          {

            v57 = sub_1B21180C0();
            v59 = 0;
LABEL_28:
            sub_1B21C807C(v57, v58, v59);
            v4 = v158;
LABEL_29:
            v189[0] = v177;
            v189[1] = v174;
            v189[2] = v4;
            sub_1B21180C0();
            sub_1B21FD218();
            sub_1B2149844();
            v116 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v116);

            sub_1B21139A0(__dst, __dst[3]);
            v117 = sub_1B2115884();
            v118(v117);
            sub_1B21FD218();
            sub_1B2112124();

            v119 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v119);

            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            sub_1B211D6B0(AssociatedTypeWitness, v121, v122, v123);
            sub_1B2116164();
            AssociationAggregate.forKey(_:)(v124, v125);

            sub_1B2113208(__dst);
            goto LABEL_30;
          }
        }

        while (1)
        {
          v52 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v52 >= v13)
          {

            v70 = sub_1B211D9A4();
            v78 = sub_1B2126304(v70, v71, v72, v73, v74, v75, v76, v77, v128, v133, v138, v143, v147, v151);
            MEMORY[0x1B2741E40](v78);
            sub_1B2112124();

            sub_1B212D05C(v79, v80, v81, v82, v83, v84, v85, v86, v129, v134, v139, v144, v148, v152, v155, v158, v161, v164, v167, v171);
            sub_1B2112124();

            v87 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v87);

            sub_1B211FE6C();
            v91 = sub_1B21DC54C(v88, v89, v90);
            MEMORY[0x1B2741E40](v91);
            sub_1B2112124();

            v92 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v92);

            v57 = v49;
            v58 = v39;
            v59 = 0;
            goto LABEL_28;
          }

          v5 = *&v50[8 * v52];
          ++v19;
          if (v5)
          {
            v19 = v52;
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
        __break(1u);
LABEL_34:
        sub_1B2112A24(&qword_1ED85D818);
LABEL_16:
        sub_1B2135358();
        sub_1B21225C8(v60, &v186);
        sub_1B21234F4();
        sub_1B2124BF0();

        v61 = sub_1B21180C0();
        sub_1B21FDA08(v61, v62);
        sub_1B21180C0();
        sub_1B21FD8E0();
        sub_1B2113088();
        if (!v45)
        {
          __break(1u);
          return;
        }

        sub_1B211522C();
        sub_1B214CC48();
        v63 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v63);
        sub_1B21E1B2C();

        v168 = v4;
        sub_1B21E1B6C();
        sub_1B213CB20();
        v13 += 8;
        sub_1B21115A0();
        sub_1B2146B24();
        v65 = v64 >> 6;
        while (v5)
        {
LABEL_24:
          sub_1B2116228();
          v68 = sub_1B2122240(v67);
          v69 = sub_1B2252290();
          v4 = sub_1B21143F8(v69, sel_firstMatchInString_options_range_);

          if (v4)
          {

            v57 = sub_1B21180C0();
            v59 = 2;
            goto LABEL_28;
          }
        }

        while (1)
        {
          v66 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v66 >= v65)
          {

            sub_1B211D9A4();
            v93 = v151;
            v94 = sub_1B22524A0();
            MEMORY[0x1B2741E40](v94);
            v95 = sub_1B211A2DC();
            sub_1B21229FC(v95, v96, v97, v98, v99, v100, v101, v102, v128, v133, v138, v143, v147, v151, v155, v158, v161, v164, v168, v29);
            sub_1B21E1B10();
            v103 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v103);

            v112 = sub_1B211F6DC(v104, v105, v106, v107, v108, v109, v110, v111, v130, v135, v140);
            v114 = sub_1B21DC54C(v112, v113, v39);
            MEMORY[0x1B2741E40](v114);
            sub_1B2112124();

            v115 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v115);

            v57 = v93;
            v58 = v39;
            v59 = 2;
            goto LABEL_28;
          }

          v5 = v13[v66];
          ++v19;
          if (v5)
          {
            v19 = v66;
            goto LABEL_24;
          }
        }
      }

      __break(1u);
    }
  }

  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  sub_1B212AC5C(&v186, &qword_1EB7A2408, &qword_1B225E0F8);
  *v13 = v9;
  v13[1] = v15;
  v13[2] = v4;
LABEL_30:
  sub_1B2111588();
}

void sub_1B21DDCB0()
{
  sub_1B2111F14();
  v171 = v5;
  v173 = v6;
  v8 = v7;
  sub_1B21233C8();
  v9 = sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v10 = sub_1B21325C8(v9);
  *(v10 + 16) = xmmword_1B22546B0;
  v11 = v3[4];
  sub_1B21139A0(v3, v3[3]);
  v12 = sub_1B21E1B38();
  v13(v12);
  __src[0] = v8;
  __src[1] = 0xE300000000000000;
  LOWORD(__src[2]) = 1;
  __src[3] = v10;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v4, v2, v182);
  memcpy(v185, __dst, 0xA3uLL);
  v14 = sub_1B21356F8(v185);
  sub_1B212D890(v14, v15, v16, v17, v18, v19, v20, v21, v119, v124, v129, v134, v138, v142, v146, v149, v152, v155, v158, v162, v165, v168, v171, v173, v175, v177, v179, *(&v179 + 1), v180, *(&v180 + 1), v181, v182[0]);
  v22 = sub_1B21619D8(qword_1EB7A2410, &qword_1B225E100);
  v23 = sub_1B21619D8(&qword_1EB7A2400, &qword_1B225E0F0);
  if (sub_1B213CE68(v23, v24, v25, v26, v27, v28, v29, v30, v120, v125, v130, v135, v139, v143, v147, v150, v153, v156, v159, v163, v166, v169, v172, v174, v176, v178, v179, *(&v179 + 1), v180, *(&v180 + 1), v181, v182[0]))
  {
    v167 = v10;
    v170 = v11;
    sub_1B21217FC(&v179, __dst);
    sub_1B21E1B4C();
    v32 = v31;
    switch(v33)
    {
      case 1:
      case 3:
        goto LABEL_29;
      case 2:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_34;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        break;
    }

    while (1)
    {
      sub_1B2112A24(&qword_1ED85D818);
LABEL_4:
      sub_1B2135358();
      v22 = &xmmword_1ED85D820;
      sub_1B2115F28(&xmmword_1ED85D820, &v179);
      v34 = *(&xmmword_1ED85D820 + 1);
      v35 = off_1ED85D830;
      v160 = xmmword_1ED85D820;

      v140 = v34;

      v36 = sub_1B21180C0();
      sub_1B21FDA08(v36, v37);
      sub_1B21180C0();
      sub_1B21FD8E0();
      sub_1B2113088();
      if (v38)
      {
        sub_1B211522C();
        sub_1B214CC48();
        v136 = v32;
        v39 = sub_1B22524A0();
        v40 = MEMORY[0x1B2741E40](v39);
        v42 = v41;

        v164 = v42;
        MEMORY[0x1B2741F40](v40, v42);
        sub_1B213CB20();
        v32 = v35;
        v43 = v35 + 64;
        sub_1B21115A0();
        sub_1B2146B24();
        v0 = (v44 >> 6);
        while (v1)
        {
LABEL_12:
          sub_1B2116228();
          v47 = sub_1B2122240(v46);
          v42 = sub_1B2252290();
          v48 = sub_1B2111B14();
          v8 = [v48 v49];

          if (v8)
          {

            v50 = sub_1B21180C0();
            v52 = 0;
LABEL_28:
            sub_1B21C807C(v50, v51, v52);
            v8 = v151;
LABEL_29:
            v182[0] = v170;
            v182[1] = v167;
            v182[2] = v8;
            sub_1B21180C0();
            sub_1B21FD218();
            sub_1B2149844();
            v109 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v109);

            sub_1B21139A0(__dst, __dst[3]);
            v110 = sub_1B2115884();
            v111(v110);
            sub_1B21FD218();
            sub_1B2112124();

            v112 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v112);

            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            sub_1B211D6B0(AssociatedTypeWitness, v114, v115, v116);
            sub_1B2116164();
            AssociationAggregate.forKey(_:)(v117, v118);

            sub_1B2113208(__dst);
            goto LABEL_30;
          }
        }

        while (1)
        {
          v45 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if (v45 >= v0)
          {

            v63 = sub_1B211D9A4();
            v71 = sub_1B2126304(v63, v64, v65, v66, v67, v68, v69, v70, v121, v126, v131, v136, v140, v144);
            MEMORY[0x1B2741E40](v71);
            sub_1B2112124();

            sub_1B212D05C(v72, v73, v74, v75, v76, v77, v78, v79, v122, v127, v132, v137, v141, v145, v148, v151, v154, v157, v160, v164);
            sub_1B2112124();

            v80 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v80);

            sub_1B211FE6C();
            v84 = sub_1B21DC54C(v81, v82, v83);
            MEMORY[0x1B2741E40](v84);
            sub_1B2112124();

            v85 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v85);

            v50 = v42;
            v51 = v32;
            v52 = 0;
            goto LABEL_28;
          }

          v1 = *&v43[8 * v45];
          ++v4;
          if (v1)
          {
            v4 = v45;
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
        __break(1u);
LABEL_34:
        sub_1B2112A24(&qword_1ED85D818);
LABEL_16:
        sub_1B2135358();
        sub_1B21225C8(v53, &v179);
        sub_1B21234F4();
        sub_1B2124BF0();

        v54 = sub_1B21180C0();
        sub_1B21FDA08(v54, v55);
        sub_1B21180C0();
        sub_1B21FD8E0();
        sub_1B2113088();
        if (!v38)
        {
          __break(1u);
          return;
        }

        sub_1B211522C();
        sub_1B214CC48();
        v56 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v56);
        sub_1B21E1B2C();

        v161 = v8;
        sub_1B21E1B6C();
        sub_1B213CB20();
        v0 += 8;
        sub_1B21115A0();
        sub_1B2146B24();
        v58 = v57 >> 6;
        while (v1)
        {
LABEL_24:
          sub_1B2116228();
          v61 = sub_1B2122240(v60);
          v62 = sub_1B2252290();
          v8 = sub_1B21143F8(v62, sel_firstMatchInString_options_range_);

          if (v8)
          {

            v50 = sub_1B21180C0();
            v52 = 2;
            goto LABEL_28;
          }
        }

        while (1)
        {
          v59 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if (v59 >= v58)
          {

            sub_1B211D9A4();
            v86 = v144;
            v87 = sub_1B22524A0();
            MEMORY[0x1B2741E40](v87);
            v88 = sub_1B211A2DC();
            sub_1B21229FC(v88, v89, v90, v91, v92, v93, v94, v95, v121, v126, v131, v136, v140, v144, v148, v151, v154, v157, v161, v22);
            sub_1B21E1B10();
            v96 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v96);

            v105 = sub_1B211F6DC(v97, v98, v99, v100, v101, v102, v103, v104, v123, v128, v133);
            v107 = sub_1B21DC54C(v105, v106, v32);
            MEMORY[0x1B2741E40](v107);
            sub_1B2112124();

            v108 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v108);

            v50 = v86;
            v51 = v32;
            v52 = 2;
            goto LABEL_28;
          }

          v1 = v0[v59];
          ++v4;
          if (v1)
          {
            v4 = v59;
            goto LABEL_24;
          }
        }
      }

      __break(1u);
    }
  }

  v181 = 0;
  v179 = 0u;
  v180 = 0u;
  sub_1B212AC5C(&v179, &qword_1EB7A2408, &qword_1B225E0F8);
  *v0 = v11;
  v0[1] = v10;
  v0[2] = v8;
LABEL_30:
  sub_1B2111588();
}

void AssociationToMany.min(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B211AE18(a1, a2, a3, 5130573, 7235949);
}

{
  sub_1B2111680(a1, a2, a3, 5130573, 7235949);
}

void AssociationToMany.sum(_:)()
{
  sub_1B2111F14();
  sub_1B21233C8();
  v4 = sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v5 = sub_1B21325C8(v4);
  *(v5 + 16) = xmmword_1B22546B0;
  sub_1B21139A0(v2, v2[3]);
  v6 = sub_1B21180C0();
  v7(v6);
  __src[0] = 5068115;
  __src[1] = 0xE300000000000000;
  LOWORD(__src[2]) = 1;
  __src[3] = v5;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v3, v1, &v129);
  memcpy(v134, __dst, 0xA3uLL);
  sub_1B21356F8(v134);
  v9 = v129;
  v8 = v130;
  v10 = v131;
  sub_1B211EE68(v2, &v129);
  sub_1B21619D8(&qword_1EB7A1170, &qword_1B2254990);
  sub_1B21619D8(&qword_1EB7A2400, &qword_1B225E0F0);
  if (swift_dynamicCast())
  {
    sub_1B21217FC(v127, __dst);
    v11 = sub_1B2232B00();
    v12 = v11;
    v14 = v13;
    switch(v15)
    {
      case 1:
      case 3:
        goto LABEL_31;
      case 2:
        v125 = v8;
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_37;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        break;
    }

    while (1)
    {
      sub_1B2112A24(&qword_1ED85D818);
LABEL_4:
      v121 = v9;
      v123 = v10;
      sub_1B2115F28(&xmmword_1ED85D820, v127);
      v0 = *(&xmmword_1ED85D820 + 1);
      v10 = off_1ED85D830;
      v115 = xmmword_1ED85D820;

      v113 = v0;

      v16 = sub_1B2112F9C();
      v18 = sub_1B21FDA08(v16, v17);
      sub_1B2112F9C();
      v19 = sub_1B21FD8E0();
      if (v19 >> 14 < v18 >> 14)
      {
        __break(1u);
LABEL_37:
        v11 = sub_1B2112A24(&qword_1ED85D818);
LABEL_16:
        v122 = v9;
        v124 = v10;
        sub_1B21225C8(v11, v127);
        sub_1B21234F4();
        sub_1B2124BF0();

        v36 = sub_1B2112F9C();
        sub_1B21FDA08(v36, v37);
        sub_1B2112F9C();
        sub_1B21FD8E0();
        sub_1B2113088();
        if (!v38)
        {
          __break(1u);
          return;
        }

        sub_1B211522C();
        v118 = v14;
        v120 = v12;
        v39 = sub_1B22524A0();
        v8 = v40;
        v14 = MEMORY[0x1B2741E40](v39);
        v42 = v41;

        MEMORY[0x1B2741F40](v14, v42);
        v43 = 0;
        v44 = (v0 + 8);
        sub_1B21115A0();
        v10 = v46 & v45;
        sub_1B213CF5C();
        while (v10)
        {
          v47 = v43;
LABEL_25:
          v10 &= v10 - 1;
          v8 = sub_1B2122240(v47);
          v12 = sub_1B2252290();
          v9 = sub_1B21143F8(v12, sel_firstMatchInString_options_range_);

          if (v9)
          {

            v48 = sub_1B2112F9C();
            sub_1B21C807C(v48, v49, 2u);
LABEL_30:
            v9 = v122;
            v10 = v124;
            v8 = v125;
LABEL_31:
            v129 = v9;
            v130 = v8;
            v131 = v10;
            sub_1B21139A0(__dst, __dst[3]);
            v95 = sub_1B2115884();
            v96(v95);
            sub_1B21FD218();
            sub_1B2112124();

            v97 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v97);

            MEMORY[0x1B2741EB0](7173459, 0xE300000000000000);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            sub_1B211D6B0(AssociatedTypeWitness, v99, v100, v101);
            sub_1B2116164();
            AssociationAggregate.forKey(_:)(v102, v103);

            sub_1B2113208(__dst);
            goto LABEL_32;
          }
        }

        while (1)
        {
          v47 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v47 >= v2)
          {

            v72 = sub_1B211D9A4();
            v80 = sub_1B21131B4(v72, v73, v74, v75, v76, v77, v78, v79, v104, v107, v110, v113, v115, v118, v120);
            MEMORY[0x1B2741E40](v80);
            sub_1B211A2DC();
            v81 = sub_1B21440FC();
            sub_1B21FDE44(v81, v42);
            sub_1B21E1B10();
            v82 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v82);

            v91 = sub_1B211F6DC(v83, v84, v85, v86, v87, v88, v89, v90, v106, v109, v112);
            v93 = sub_1B21DC54C(v91, v92, v43);
            MEMORY[0x1B2741E40](v93);
            sub_1B2112124();

            v94 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v94);

            sub_1B21C807C(v44, v43, 2u);
            goto LABEL_30;
          }

          v10 = *(v44 + 8 * v47);
          ++v43;
          if (v10)
          {
            v43 = v47;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v107 = v18;
        v110 = v19;
        v117 = v14;
        v119 = v12;
        v20 = sub_1B22524A0();
        v12 = MEMORY[0x1B2741E40](v20);
        v22 = v21;

        v125 = v12;
        v126 = v22;
        v14 = MEMORY[0x1B2741F40](v12, v22);
        v23 = 0;
        v24 = v10;
        v10 += 64;
        sub_1B21115A0();
        v27 = v26 & v25;
        sub_1B213CF5C();
        while (v27)
        {
          v28 = v8;
LABEL_12:
          sub_1B2114628();
          v12 = sub_1B2122240(v30);
          v31 = sub_1B2252290();
          v32 = sub_1B2111B14();
          v9 = [v32 v33];

          v8 = v28;
          if (v9)
          {

            v34 = sub_1B2112F9C();
            sub_1B21C807C(v34, v35, 0);
LABEL_28:
            v9 = v121;
            v10 = v123;
            goto LABEL_31;
          }
        }

        while (1)
        {
          v29 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v29 >= v2)
          {

            v50 = sub_1B211D9A4();
            v58 = sub_1B21131B4(v50, v51, v52, v53, v54, v55, v56, v57, v104, v107, v110, v113, v115, v117, v119);
            MEMORY[0x1B2741E40](v58);
            sub_1B2112124();

            v129 = v116;
            v130 = v114;
            v131 = v24;
            sub_1B21FDE44(v125, v126);
            sub_1B2112124();

            v59 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v59);

            v68 = sub_1B211F6DC(v60, v61, v62, v63, v64, v65, v66, v67, v105, v108, v111);
            v70 = sub_1B21DC54C(v68, v69, v23);
            MEMORY[0x1B2741E40](v70);
            sub_1B2112124();

            v71 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v71);

            sub_1B21C807C(v27, v23, 0);
            goto LABEL_28;
          }

          v27 = *(v10 + 8 * v29);
          ++v23;
          if (v27)
          {
            v28 = v8;
            v23 = v29;
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  v128 = 0;
  memset(v127, 0, sizeof(v127));
  sub_1B212AC5C(v127, &qword_1EB7A2408, &qword_1B225E0F8);
  *v0 = v9;
  v0[1] = v8;
  v0[2] = v10;
LABEL_32:
  sub_1B2111588();
}

void sub_1B21DEB78()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v104 = v10;
  v11 = sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v12 = sub_1B21325C8(v11);
  *(v12 + 16) = xmmword_1B22546B0;
  v14 = v9[3];
  v13 = v9[4];
  sub_1B21139A0(v9, v14);
  (*(*(v13 + 8) + 8))(v14);
  __src[0] = v3;
  __src[1] = v1;
  LOWORD(__src[2]) = 1;
  __src[3] = v12;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v7, v5, &v107);
  memcpy(v112, __dst, 0xA3uLL);
  sub_1B21356F8(v112);
  v16 = v107;
  v15 = v108;
  v17 = v109;
  sub_1B211EE68(v9, &v107);
  v18 = sub_1B21619D8(qword_1EB7A2410, &qword_1B225E100);
  sub_1B21619D8(&qword_1EB7A2400, &qword_1B225E0F0);
  if (swift_dynamicCast())
  {
    sub_1B21217FC(v105, __dst);
    sub_1B2232B00();
    sub_1B2112124();
    switch(v20)
    {
      case 1:
      case 3:
        goto LABEL_30;
      case 2:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        break;
    }

    while (1)
    {
      sub_1B2112A24(&qword_1ED85D818);
LABEL_4:
      v100 = v15;
      v101 = v16;
      v102 = v17;
      sub_1B2115F28(&xmmword_1ED85D820, v105);
      v21 = *(&xmmword_1ED85D820 + 1);
      v22 = off_1ED85D830;
      v95 = xmmword_1ED85D820;

      v94 = v21;

      v23 = sub_1B2113B50();
      v15 = sub_1B21FDA08(v23, v24);
      sub_1B2113B50();
      sub_1B21FD8E0();
      sub_1B2113088();
      if (v25)
      {
        sub_1B211522C();
        v96 = v5;
        v98 = v18;
        v26 = sub_1B22524A0();
        v27 = MEMORY[0x1B2741E40](v26);
        v15 = v28;

        v103 = v15;
        MEMORY[0x1B2741F40](v27, v15);
        v29 = 0;
        v16 = v22;
        v30 = v22 + 64;
        sub_1B21115A0();
        v17 = v32 & v31;
        sub_1B213CF5C();
        while (v17)
        {
LABEL_12:
          sub_1B2114628();
          v5 = sub_1B2122240(v34);
          v15 = sub_1B2252290();
          v35 = sub_1B2111B14();
          v18 = [v35 v36];

          if (v18)
          {

            v37 = sub_1B2113B50();
            v39 = 0;
LABEL_29:
            sub_1B21C807C(v37, v38, v39);
            v17 = v102;
            v16 = v101;
            v15 = v100;
LABEL_30:
            v107 = v16;
            v108 = v15;
            v109 = v17;
            sub_1B21139A0(__dst, __dst[3]);
            v79 = sub_1B2115884();
            v80(v79);
            sub_1B21FD218();
            sub_1B2112124();

            v81 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v81);

            MEMORY[0x1B2741EB0](7173459, 0xE300000000000000);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            sub_1B211D6B0(AssociatedTypeWitness, v83, v84, v85);
            sub_1B2116164();
            AssociationAggregate.forKey(_:)(v86, v87);

            sub_1B2113208(__dst);
            goto LABEL_31;
          }
        }

        while (1)
        {
          v33 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v33 >= v9)
          {

            sub_1B211D9A4();
            v52 = sub_1B22524A0();
            MEMORY[0x1B2741E40](v52);
            sub_1B2112124();

            v107 = v95;
            v108 = v94;
            v109 = v16;
            sub_1B21FDE44(v27, v103);
            sub_1B2112124();

            v53 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v53);

            v54 = sub_1B21DC54C(v92, v98, v96);
            MEMORY[0x1B2741E40](v54);
            sub_1B2112124();

            v55 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v55);

            v37 = sub_1B211187C();
            v39 = 0;
            goto LABEL_29;
          }

          v17 = *&v30[8 * v33];
          ++v29;
          if (v17)
          {
            v29 = v33;
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
        __break(1u);
LABEL_35:
        v19 = sub_1B2112A24(&qword_1ED85D818);
LABEL_16:
        v100 = v15;
        v101 = v16;
        v102 = v17;
        sub_1B21225C8(v19, v105);
        sub_1B21234F4();
        sub_1B2124BF0();

        v40 = sub_1B2113B50();
        sub_1B21FDA08(v40, v41);
        sub_1B2113B50();
        sub_1B21FD8E0();
        sub_1B2113088();
        if (!v25)
        {
          __break(1u);
          return;
        }

        sub_1B211522C();
        v97 = v5;
        v99 = v18;
        v42 = sub_1B22524A0();
        v15 = v43;
        v44 = MEMORY[0x1B2741E40](v42);
        v46 = v45;

        MEMORY[0x1B2741F40](v44, v46);
        v47 = 0;
        v16 = v17;
        v17 += 64;
        sub_1B21115A0();
        v50 = v49 & v48;
        sub_1B213CF5C();
        while (v50)
        {
          v51 = v47;
LABEL_25:
          v50 &= v50 - 1;
          v15 = sub_1B2122240(v51);
          v5 = sub_1B2252290();
          v18 = sub_1B21143F8(v5, sel_firstMatchInString_options_range_);

          if (v18)
          {

            v37 = sub_1B2113B50();
            v39 = 2;
            goto LABEL_29;
          }
        }

        while (1)
        {
          v51 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v51 >= v9)
          {

            v56 = sub_1B211D9A4();
            v64 = sub_1B21131B4(v56, v57, v58, v59, v60, v61, v62, v63, v88, v90, v92, v94, v95, v97, v99);
            MEMORY[0x1B2741E40](v64);
            sub_1B211A2DC();
            v65 = sub_1B21440FC();
            sub_1B21FDE44(v65, v46);
            sub_1B21E1B10();
            v66 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v66);

            v75 = sub_1B211F6DC(v67, v68, v69, v70, v71, v72, v73, v74, v89, v91, v93);
            v77 = sub_1B21DC54C(v75, v76, v47);
            MEMORY[0x1B2741E40](v77);
            sub_1B2112124();

            v78 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v78);

            v37 = v17;
            v38 = v47;
            v39 = 2;
            goto LABEL_29;
          }

          v50 = *(v17 + 8 * v51);
          ++v47;
          if (v50)
          {
            v47 = v51;
            goto LABEL_25;
          }
        }
      }

      __break(1u);
    }
  }

  v106 = 0;
  memset(v105, 0, sizeof(v105));
  sub_1B212AC5C(v105, &qword_1EB7A2408, &qword_1B225E0F8);
  *v104 = v16;
  v104[1] = v15;
  v104[2] = v17;
LABEL_31:
  sub_1B2111588();
}

uint64_t sub_1B21DF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  return result;
}

uint64_t AssociationAggregate.forKey(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B21139A0(a1, a1[3]);
  sub_1B2113B50();
  sub_1B22534D0();
  AssociationAggregate.forKey(_:)(a2, a3);
}

uint64_t sub_1B21DF484(uint64_t a1, const void *a2)
{
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  memcpy((v2 + *(*v2 + 128)), a2, 0xA3uLL);
  return v2;
}

uint64_t sub_1B21DF528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = v4;
  v24 = a1;
  v26 = a4;
  v7 = *v4;
  v8 = *(v7 + 104);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - v9;
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TableAlias();
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  v16 = *(*(*(*(*(v7 + 112) + 8) + 8) + 48) + 16);
  v22 = v10;
  v16();
  v17 = v24;
  JoinableRequest.joining<A>(optional:)(v10, a2, v8);
  v18 = *(v23 + 8);
  v18(v17, a2);
  (*(v25 + 8))(v22, v8);
  TableRequest<>.groupByPrimaryKey()();
  v18(v14, a2);
  v19 = *(*v5 + 128);
  memcpy(v28, v5 + v19, 0xA3uLL);
  memcpy(v27, v5 + v19, sizeof(v27));
  sub_1B2127DC0(v28, __dst);
  sub_1B213BBD8(v15, v26);

  memcpy(__dst, v27, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t sub_1B21DF7E0()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  memcpy(__dst, (v0 + *(*v0 + 128)), 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t sub_1B21DF880()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  memcpy(__dst, (v0 + *(*v0 + 128)), 0xA3uLL);
  sub_1B21356F8(__dst);
  return v0;
}

uint64_t sub_1B21DF924()
{
  v0 = sub_1B21DF880();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B21DF978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_1B21DF9C0()
{
  v1 = *(v0 + 24);
  (*(**(v0 + 16) + 88))(v3);
  v1(v3);
  memcpy(__dst, v3, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t sub_1B21DFA54()
{
}

uint64_t sub_1B21DFA84()
{

  return v0;
}

uint64_t sub_1B21DFAAC()
{
  v0 = sub_1B21DFA84();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B21DFADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v9 = *v5;
  type metadata accessor for MapPreparation(0, *(a3 + 16), a3, a5);
  v10 = sub_1B21DF978(v9, a1, a2);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = v10;
}

void *sub_1B21DFB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_1B21DFBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(v3 + 16) + 88))(__src);
  (*(**(v3 + 24) + 88))(v12, a1, a2, a3);
  v7 = *(v3 + 32);
  memcpy(__dst, __src, 0xA3uLL);
  memcpy(v9, v12, 0xA3uLL);
  v7(__dst, v9);
  sub_1B21356F8(v12);
  return sub_1B21356F8(__src);
}

uint64_t sub_1B21DFCAC()
{
}

void *sub_1B21DFCE4()
{

  return v0;
}

uint64_t sub_1B21DFD14()
{
  v0 = sub_1B21DFCE4();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B21DFD44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  type metadata accessor for CombinePreparation(0, a5, a3, a4);
  v11 = sub_1B21DFB5C(v9, v10, a3, a4);
  a6[1] = 0;
  a6[2] = 0;
  *a6 = v11;
}

void sub_1B21DFF70()
{
  sub_1B2111F14();
  v1 = v0;
  v4[3] = &type metadata for SQLExpression;
  v4[4] = &protocol witness table for SQLExpression;
  v4[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B212D6F0(v5);
  sub_1B212D6F0((v4[0] + 16));
  v3[3] = &type metadata for SQLExpression;
  v3[4] = &protocol witness table for SQLExpression;
  v3[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B212E2E0(v6);
  sub_1B212E2E0((v3[0] + 16));
  sub_1B2127DC0(v5, v2);
  sub_1B2127DC0(v6, v2);
  v1(v4, v3);
  sub_1B2113208(v3);
  sub_1B2113208(v4);
  sub_1B2111588();
}

uint64_t sub_1B21E00C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = *a1;
  v13 = *(a1 + 1);
  sub_1B211EE68(a2, v11);
  sub_1B2113BC0();
  v4 = swift_allocObject();
  sub_1B21217FC(v11, v4 + 16);
  v7 = type metadata accessor for AssociationAggregate(0, a3, v5, v6);
  sub_1B2122CF8(v7, v8, v7, v9);
}

uint64_t sub_1B21E0184(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v12 = *a2;
  v13 = *(a2 + 1);
  sub_1B211EE68(a1, v11);
  sub_1B2113BC0();
  v4 = swift_allocObject();
  sub_1B21217FC(v11, v4 + 16);
  v7 = type metadata accessor for AssociationAggregate(0, a3, v5, v6);
  sub_1B2122CF8(v7, v8, v7, v9);
}

uint64_t sub_1B21E0290(void *__src, char a2)
{
  memcpy(__dst, __src, 0xA3uLL);
  v6[3] = &type metadata for SQLExpression;
  v6[4] = &protocol witness table for SQLExpression;
  v6[0] = swift_allocObject();
  memcpy((v6[0] + 16), __src, 0xA3uLL);
  sub_1B2127DC0(__dst, v5);
  == infix(_:_:)(v6, a2);
  return sub_1B2113208(v6);
}

uint64_t sub_1B21E0358(void *__src, uint64_t a2)
{
  v2 = a2;
  memcpy(__dst, __src, 0xA3uLL);
  v6[3] = &type metadata for SQLExpression;
  v6[4] = &protocol witness table for SQLExpression;
  v6[0] = swift_allocObject();
  memcpy((v6[0] + 16), __src, 0xA3uLL);
  sub_1B2127DC0(__dst, v5);
  == infix(_:_:)(v2, v6);
  return sub_1B2113208(v6);
}

uint64_t sub_1B21E0478(uint64_t a1, char a2, uint64_t a3)
{
  sub_1B211F3B0(a1);
  *(swift_allocObject() + 16) = a2;
  v7 = type metadata accessor for AssociationAggregate(0, a3, v5, v6);
  sub_1B2122CF8(v7, v8, v7, v9);
}

uint64_t sub_1B21E0504(void *__src, char a2)
{
  memcpy(__dst, __src, 0xA3uLL);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = swift_allocObject();
  memcpy((v7[0] + 16), __src, 0xA3uLL);
  v6[3] = &type metadata for SQLExpression;
  v6[4] = &protocol witness table for SQLExpression;
  v6[0] = swift_allocObject();
  sub_1B2127DC0(__dst, &v5);
  == infix(_:_:)(v7, a2);
  ! prefix(_:)(v6);
  sub_1B2113208(v6);
  return sub_1B2113208(v7);
}

uint64_t sub_1B21E0610(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a1;
  v7 = type metadata accessor for AssociationAggregate(0, a3, v5, v6);
  sub_1B2122CF8(v7, v8, v7, v9);
}

uint64_t sub_1B21E06A8(void *__src, uint64_t a2)
{
  v2 = a2;
  memcpy(__dst, __src, 0xA3uLL);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = swift_allocObject();
  memcpy((v7[0] + 16), __src, 0xA3uLL);
  v6[3] = &type metadata for SQLExpression;
  v6[4] = &protocol witness table for SQLExpression;
  v6[0] = swift_allocObject();
  sub_1B2127DC0(__dst, &v5);
  == infix(_:_:)(v2, v7);
  ! prefix(_:)(v6);
  sub_1B2113208(v6);
  return sub_1B2113208(v7);
}

uint64_t sub_1B21E07CC()
{
  sub_1B212CE98();
  sub_1B212E2E0(v6);
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  v5[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B212E2E0((v5[0] + 16));
  sub_1B211EE68(v1, v4);
  sub_1B2127DC0(v6, &v3);
  v0(v5, v4);
  sub_1B212AC5C(v4, &qword_1EB7A10F0, &qword_1B225D320);
  return sub_1B2113208(v5);
}

uint64_t sub_1B21E08A4(void *__src, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B211EE68(a2, v8);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = sub_1B2116AA0(&unk_1F2971B30);
  memcpy((v7[0] + 16), __dst, 0xA3uLL);
  sub_1B2127DC0(__dst, &v6);
  a3(v8, v7);
  sub_1B212AC5C(v8, &qword_1EB7A10F0, &qword_1B225D320);
  return sub_1B2113208(v7);
}

uint64_t sub_1B21E09A4(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *))
{
  sub_1B212D6F0(v10);
  v9[3] = &type metadata for SQLExpression;
  v9[4] = &protocol witness table for SQLExpression;
  v9[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B212D6F0((v9[0] + 16));
  sub_1B211EE68(a2, v8);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B2127DC0(v10, v6);
  a3(v9, v8);
  ! prefix(_:)(v7);
  sub_1B212AC5C(v8, &qword_1EB7A10F0, &qword_1B225D320);
  sub_1B2113208(v7);
  return sub_1B2113208(v9);
}

uint64_t sub_1B21E0ABC(void *__src, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B211EE68(a2, v9);
  v8[3] = &type metadata for SQLExpression;
  v8[4] = &protocol witness table for SQLExpression;
  v8[0] = sub_1B2116AA0(&unk_1F2971B30);
  memcpy((v8[0] + 16), __dst, 0xA3uLL);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B2127DC0(__dst, v6);
  a3(v9, v8);
  ! prefix(_:)(v7);
  sub_1B212AC5C(v9, &qword_1EB7A10F0, &qword_1B225D320);
  sub_1B2113208(v7);
  return sub_1B2113208(v8);
}

uint64_t sub_1B21E0D48(uint64_t a1, void (*a2)(void *))
{
  sub_1B213CCB0(v6);
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  v5[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B213CCB0((v5[0] + 16));
  sub_1B2127DC0(v6, v4);
  a2(v5);
  return sub_1B2113208(v5);
}

uint64_t sub_1B21E0EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  v9 = *a1;
  v10 = *(a1 + 8);
  v7 = v5;
  v8 = *(a2 + 8);
  return sub_1B21DFD44(&v9, &v7, a4, 0, a3, a5);
}

uint64_t sub_1B21E0F8C()
{
  sub_1B212CE98();
  sub_1B212E2E0(v5);
  v4[3] = &type metadata for SQLExpression;
  v4[4] = &protocol witness table for SQLExpression;
  v4[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B212E2E0((v4[0] + 16));
  sub_1B2127DC0(v5, v3);
  v0(v1, v4);
  return sub_1B2113208(v4);
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v16 = *a1;
  v17 = v6;
  v18 = v7;
  sub_1B211EE68(a2, &v14);
  v8 = swift_allocObject();
  sub_1B21217FC(&v14, v8 + 16);
  v11 = type metadata accessor for AssociationAggregate(0, a3, v9, v10);
  sub_1B21DFADC(sub_1B21E18A8, v8, v11, &v19, v12);

  v14 = v19;
  v15 = v20;
  sub_1B2135E94(sub_1B21E18D4, v11, a4);
}

uint64_t sub_1B21E1148()
{
  sub_1B212CE98();
  sub_1B212E2E0(v5);
  v4[3] = &type metadata for SQLExpression;
  v4[4] = &protocol witness table for SQLExpression;
  v4[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B212E2E0((v4[0] + 16));
  sub_1B2127DC0(v5, v3);
  v0(v4, v1);
  return sub_1B2113208(v4);
}

uint64_t sub_1B21E11DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return result;
}

uint64_t sub_1B21E1274(uint64_t a1, void (*a2)(void *))
{
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  v5[0] = sub_1B2116AA0(&unk_1F2971B30);
  sub_1B213CCB0(v6);
  sub_1B213CCB0((v5[0] + 16));
  sub_1B2127DC0(v6, v4);
  a2(v5);
  return sub_1B2113208(v5);
}

uint64_t sub_1B21E1328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_1B211F3B0(a1);
  v8 = type metadata accessor for AssociationAggregate(0, v5, v6, v7);
  return sub_1B21DFADC(a2, 0, v8, a3, v9);
}

uint64_t sub_1B21E18F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E1980(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21E1B10()
{
}

uint64_t sub_1B21E1B4C()
{

  return sub_1B2232B00();
}

void sub_1B21E1B6C()
{

  JUMPOUT(0x1B2741F40);
}

Swift::Void __swiftcall SQLInterpolation.appendInterpolation(sql:arguments:)(Swift::String sql, GRDBInternal::StatementArguments arguments)
{
  v3 = *arguments.values._rawValue;
  v4 = *(arguments.values._rawValue + 1);
  __src = sql;
  v15 = v3;
  v16 = v4;
  sub_1B2114CC4(&__src);

  sub_1B2127D18();
  sub_1B21277F4();
  sub_1B2115E28(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  *v2 = v3;
}

Swift::Void __swiftcall SQLInterpolation.appendInterpolation(literal:)(GRDBInternal::SQL literal)
{

  sub_1B216CFB4(v1);
}

uint64_t HasOneThroughAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B21E1CBC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21E1CF8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B21E1D3C(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = HasOneThroughAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B21E1D98(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B21E1DD4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21E1E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E1E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  result = type metadata accessor for ValueReducers.Trace(0, a6, a7, v15);
  v17 = (a8 + *(result + 36));
  *v17 = a2;
  v17[1] = a3;
  v18 = (a8 + *(result + 40));
  *v18 = a4;
  v18[1] = a5;
  return result;
}

uint64_t ValueReducers.Trace._value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B2252B00();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  (*(v8 + 32))(a1, v7, v8, v12);
  if (sub_1B2122A98(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v15 = 1;
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a3, v14, AssociatedTypeWitness);
    (*(v3 + *(a2 + 40)))(a3);
    v15 = 0;
  }

  return sub_1B21117B4(a3, v15, 1, AssociatedTypeWitness);
}

uint64_t sub_1B21E213C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B21E2194(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B2173DAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21E221C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B21E2360(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1B21117B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21E2558(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B21E263C()
{
  sub_1B2111F14();
  swift_allocObject();
  sub_1B21E2E58();
  sub_1B2111588();
}

void sub_1B21E26C4()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C();
  v32 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v32 - v10;
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  *&v11 = *(v4 + 96);
  *&v12 = *(v4 + 80);
  *(&v12 + 1) = v6;
  *(&v11 + 1) = v5;
  v48 = v12;
  v49 = v11;
  v51[0] = v12;
  v51[1] = v11;
  v13 = type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks(255, v51);
  v14 = sub_1B2252B00();
  v51[0] = v48;
  v51[1] = v49;
  type metadata accessor for ValueWriteOnlyObserver.DatabaseAccess(255, v51);
  v15 = sub_1B2252B00();
  sub_1B21180CC(v15);
  sub_1B21E2BF4(sub_1B21E3B08, 0, sub_1B21E8734);
  memcpy(v55, v51, 0x60uLL);
  v16 = v55[10];
  if (!v55[10])
  {
    goto LABEL_8;
  }

  v33 = AssociatedTypeWitness;
  v35 = v4;
  *&v48 = v3;
  v17 = v52;
  v37 = v55[1];
  v38 = v55[0];
  v39 = v55[3];
  v40 = v55[2];
  v41 = v55[5];
  v42 = v55[4];
  v43 = v55[7];
  v44 = v55[6];
  v45 = v55[9];
  v46 = v55[8];
  *&v49 = v55[11];
  if (!v52)
  {
    memcpy(v51, v55, sizeof(v51));
    (*(*(v13 - 8) + 16))(&v50, v51, v13);
    sub_1B2112F4C(v38, v37);
    sub_1B2112F4C(v40, v39);
    sub_1B2112F4C(v42, v41);
    sub_1B2112F4C(v44, v43);
    sub_1B2112F4C(v46, v45);

LABEL_8:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  v18 = v53;
  v19 = v54;
  v20 = *(v14 - 8);
  v21 = *(v20 + 16);
  v47 = v14;
  v21(v51, v55, v14);
  v36 = v18;
  sub_1B21E8750(v17);

  v22 = v1[2];
  v23 = v22[5];
  v24 = v22[6];
  sub_1B21139A0(v22 + 2, v23);
  if ((*(v24 + 16))(v23, v24))
  {
    v25 = v34;
    sub_1B21E3C20();
    v26 = v48;
    v16(v25);
    (*(v32 + 8))(v25, v33);
  }

  else
  {
    sub_1B21E3D14();
    v26 = v48;
  }

  v27 = type metadata accessor for AnyDatabaseCancellable();
  *&v51[0] = v1;

  v28 = sub_1B21E9F54(v51, v27, v35, &off_1F2971F88);
  v26[3] = v27;
  v26[4] = &protocol witness table for AnyDatabaseCancellable;
  v29 = v47;
  v31 = v43;
  v30 = v44;
  swift_unknownObjectRelease();
  *v26 = v28;
  sub_1B2112F4C(v38, v37);
  sub_1B2112F4C(v40, v39);
  sub_1B2112F4C(v42, v41);
  sub_1B2112F4C(v30, v31);
  sub_1B2112F4C(v46, v45);

  sub_1B21E8464(v17, v36, v19);
  (*(v20 + 8))(v55, v29);
  sub_1B2111588();
}

id sub_1B21E2C6C()
{
  sub_1B211441C();
  v3(v11, [v2 lock]);
  sub_1B2111688();
  result = sub_1B2122A2C(v4);
  if (!v0)
  {
    v6 = v12;
    v7 = v11[1];
    v8 = v11[2];
    v9 = v11[3];
    v10 = v11[4];
    *v1 = v11[0];
    *(v1 + 16) = v7;
    *(v1 + 32) = v8;
    *(v1 + 48) = v9;
    *(v1 + 64) = v10;
    *(v1 + 80) = v6;
  }

  return result;
}

uint64_t sub_1B21E2CFC()
{
  sub_1B2113094();
  v2(&v6, [v1 lock]);
  sub_1B2111688();
  sub_1B2122040(v3);
  if (!v0)
  {
    v4 = v6;
  }

  return v4 & 1;
}

id sub_1B21E2D6C()
{
  sub_1B211441C();
  v3(v6, [v2 lock]);
  sub_1B2111688();
  if (v0)
  {
    return sub_1B2122A2C(v4);
  }

  sub_1B2122A2C(v4);
  return memcpy(v1, v6, 0x50uLL);
}

id sub_1B21E2DEC()
{
  sub_1B2113094();
  v2(&v5, [v1 lock]);
  sub_1B2111688();
  if (v0)
  {
    return sub_1B2122040(v3);
  }

  sub_1B2122040(v3);
  return v5;
}

void sub_1B21E2E58()
{
  sub_1B2111F14();
  v1 = v0;
  v98 = v2;
  v86 = v3;
  v5 = v4;
  v7 = v6;
  v99 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *v1;
  v93 = sub_1B2252A10();
  sub_1B211280C();
  v92 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1B2111844();
  sub_1B21183D4(v20 - v19);
  v90 = sub_1B22529C0();
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1B2111844();
  sub_1B21183D4(v23 - v22);
  v88 = sub_1B2252120();
  sub_1B211280C();
  v87 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1B2115CBC();
  v70 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = sub_1B21183D4(&v70 - v28);
  v78 = type metadata accessor for Configuration(v29);
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1B2115CBC();
  v77 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v76 = &v70 - v33;
  *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  v71 = v16[10];
  v34 = v71;
  v97 = v16[11];
  v35 = v97;
  v73 = v16[12];
  v36 = v73;
  v75 = v16[13];
  v37 = v75;
  *(v1 + 176) = 1;
  *(v1 + 184) = 0;
  *(v1 + 16) = v13;
  *(v1 + 24) = v11;
  *(v1 + 32) = v9;
  v38 = sub_1B21E3620(v7, v34, v35, v36, v37);
  v40 = *(v1 + 56);
  v39 = *(v1 + 64);
  v41 = *(v1 + 72);
  v74 = v15;
  *(v1 + 56) = v15;
  *(v1 + 64) = v38;
  *(v1 + 72) = v42;
  v94 = v13;

  swift_unknownObjectRetain();
  sub_1B21E8464(v40, v39, v41);
  v44 = *v5;
  v43 = v5[1];
  v46 = v5[2];
  v45 = v5[3];
  v47 = v5[4];
  v48 = v5[5];
  v49 = v5[6];
  v50 = v5[7];
  v51 = v5[9];
  v95 = v5[8];
  v96 = v49;
  memcpy(v104, (v1 + 80), 0x60uLL);
  memcpy((v1 + 80), v5, 0x50uLL);
  v52 = v98;
  *(v1 + 160) = v86;
  *(v1 + 168) = v52;

  v81 = v44;
  v79 = v43;
  sub_1B2112328(v44, v43);
  v83 = v46;
  v80 = v45;
  sub_1B2112328(v46, v45);
  v85 = v47;
  v82 = v48;
  sub_1B2112328(v47, v48);
  v84 = v50;
  sub_1B2112328(v96, v50);
  v86 = v51;
  sub_1B2112328(v95, v51);
  v53 = v71;
  v54 = v97;
  v100 = v71;
  v101 = v97;
  v55 = v73;
  v102 = v73;
  v103 = v75;
  type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks(255, &v100);
  sub_1B2252B00();
  sub_1B21118A0();
  (*(v56 + 8))(v104);
  v57 = *(*v1 + 176);
  v75 = *(v54 - 8);
  (*(v75 + 16))(v1 + v57, v99, v54);
  v58 = *(v55 + 8);
  v59 = *(v58 + 8);
  v60 = v76;
  v59(v53, v58);
  v61 = *(v60 + 8);
  if (*(v60 + 16))
  {
    v62 = *(v60 + 16);
  }

  else
  {
    v61 = 1111773767;
    v62 = 0xE400000000000000;
  }

  v100 = v61;
  v101 = v62;

  MEMORY[0x1B2741EB0](0xD000000000000011, 0x80000001B226F150);

  v73 = v100;
  v72 = v101;
  sub_1B2133D70(v60);
  v63 = v58;
  v64 = v77;
  v59(v53, v63);
  if (*(v64 + *(v78 + 68)))
  {
    v65 = v70;
    sub_1B2252A20();
    (*(v87 + 32))(v89, v65, v88);
  }

  else
  {
    (*(v87 + 16))(v89, v64 + *(v78 + 64), v88);
  }

  sub_1B21E8558(0, &qword_1ED85E778, 0x1E69E9610);
  sub_1B2133D70(v64);
  v100 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(&qword_1ED85E780, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
  sub_1B21E8598(&qword_1ED85E788, &qword_1EB7A21A0, &unk_1B225E830);
  sub_1B2252BC0();
  (*(v92 + 104))(v91, *MEMORY[0x1E69E8090], v93);
  v66 = sub_1B2252A70();

  sub_1B21166C8();
  sub_1B2112F4C(v67, v68);
  sub_1B2112F4C(v83, v80);
  sub_1B2112F4C(v85, v82);
  sub_1B2112F4C(v96, v84);
  sub_1B2112F4C(v95, v86);

  swift_unknownObjectRelease();
  sub_1B2117D58();
  v69(v99, v97);
  *(v1 + 48) = v66;
  sub_1B2111588();
}

uint64_t (*sub_1B21E3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  (*(v9 + 32))(&v14[v13], v12, a3);
  return sub_1B21E85EC;
}

uint64_t *sub_1B21E3750()
{
  v1 = *v0;

  sub_1B21E865C(v0[4]);

  sub_1B21E8464(v0[7], v0[8], v0[9]);
  sub_1B21E866C(v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19], v0[20], v0[21]);
  sub_1B21E7918(v0[22]);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 176));
  return v0;
}

uint64_t sub_1B21E3828()
{
  sub_1B21E3750();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B21E3898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E38D4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21E38F8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 9))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21E3958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B21E39C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E3A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_1B21E3A44(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_1B21E3AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E3B20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, a1 + 10, sizeof(__dst));
  memcpy(a2, a1 + 10, 0x60uLL);
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  a2[12] = v5;
  a2[13] = v6;
  a2[14] = v7;
  v8 = *(v4 + 96);
  v11[0] = *(v4 + 80);
  v11[1] = v8;
  type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks(255, v11);
  v9 = sub_1B2252B00();
  (*(*(v9 - 8) + 16))(v11, __dst, v9);
  return sub_1B21E8750(v5);
}

uint64_t sub_1B21E3C20()
{
  v1 = *(*v0 + 96);
  v2 = *(v1 + 64);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v2(sub_1B21E8790, v0, AssociatedTypeWitness, v3, v1);
}

uint64_t sub_1B21E3D14()
{
  v1 = *(*v0 + 96);
  v2 = *(v1 + 56);
  v3 = *(*v0 + 80);

  v2(sub_1B21E87E4, v0, v3, v1);
}

uint64_t sub_1B21E3DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = *(*a2 + 88);
  v19 = *(*(*a2 + 104) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B2252B00();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  result = sub_1B21E40AC(a1, v9);
  if (!v3)
  {
    v17[0] = v7;
    v17[1] = v5;
    v15 = v18;
    if (sub_1B2122A98(v9, 1, AssociatedTypeWitness) == 1)
    {
      (*(v15 + 8))(v9, v17[0]);
      result = sub_1B2252EC0();
      __break(1u);
    }

    else
    {
      v16 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
      MEMORY[0x1EEE9AC00](v16);
      swift_getAssociatedTypeWitness();
      sub_1B2252A50();
      return (*(v10 + 8))(v13, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_1B21E40AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v55 = a1;
  v57 = a2;
  v5 = *v2;
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v44 - v11;
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  sub_1B2161A20(&qword_1EB7A27A0, &qword_1B2260EA0);
  type metadata accessor for Database(255);
  v58 = AssociatedTypeWitness;
  swift_getFunctionTypeMetadata1();
  sub_1B2252B00();
  swift_getTupleTypeMetadata2();
  sub_1B21E2BF4(sub_1B21E58F8, 0, sub_1B21E87C8);
  v12 = v68;
  v13 = v69;
  v14 = v70;
  v15 = v71;
  if (!v71)
  {
    if (v61 != 1)
    {
      v22 = v67;
      v23 = v65;
      v24 = v63;
      v25 = v66;
      v26 = v64;
      sub_1B2112F4C(v61, v62);
      sub_1B2112F4C(v24, v26);
      sub_1B2112F4C(v23, v25);
      sub_1B2112F4C(v22, v12);
      sub_1B2112F4C(v13, v14);
      v19 = v58;
      goto LABEL_11;
    }

    v17 = 0;
    v18 = 0;
LABEL_6:
    v19 = v58;
    sub_1B2112F4C(v18, v17);
LABEL_11:
    v27 = v57;
    v28 = 1;
    v29 = v19;
    return sub_1B21117B4(v27, v28, 1, v29);
  }

  v44 = v62;
  v45 = v63;
  v51 = v64;
  v46 = v65;
  v47 = v66;
  v48 = v67;
  v49 = v68;
  v50 = v70;
  v16 = v72;
  v56 = v61;
  v17 = swift_allocObject();
  v17[2] = *(v5 + 80);
  v17[3] = v7;
  v17[4] = *(v5 + 96);
  v17[5] = v6;
  v17[6] = v15;
  v17[7] = v16;
  v18 = sub_1B21E89C8;
  if (v56 == 1)
  {
    goto LABEL_6;
  }

  v20 = *(v4 + 32);
  if (v20 < 2)
  {
    sub_1B211B358();
    v73 = sub_1B2252190();
    MEMORY[0x1EEE9AC00](v73);
    *(&v44 - 4) = v55;
    *(&v44 - 3) = v4;
    *(&v44 - 2) = sub_1B21E89C8;
    *(&v44 - 1) = v17;
    v21 = v58;
    sub_1B2237994(&v73, sub_1B21E78E4);
    if (v3)
    {

      sub_1B2112F4C(sub_1B21E89C8, v17);
      sub_1B2112F4C(v56, v44);
      sub_1B2112F4C(v45, v51);
      sub_1B2112F4C(v46, v47);
      sub_1B2112F4C(v48, v49);
      return sub_1B2112F4C(v13, v50);
    }

    if (v73)
    {
      v34 = sub_1B21E79E0(v73);
    }

    else
    {
      v34 = 0;
    }

    v59 = v34;
    sub_1B21C9D20(&v60);

    v38 = v60;
    v39 = v51;
    v40 = v45;
    if (v45)
    {
      v45(&v60);
    }

    v60 = v38;
    sub_1B21E5ADC(v55, &v60);
    sub_1B2112F4C(sub_1B21E89C8, v17);
    sub_1B2112F4C(v56, v44);
    sub_1B2112F4C(v40, v39);
    sub_1B2112F4C(v46, v47);
    sub_1B2112F4C(v48, v49);
    sub_1B2112F4C(v13, v50);

    v41 = v57;
    (*(v52 + 32))(v57, v54, v21);
    goto LABEL_29;
  }

  MEMORY[0x1EEE9AC00](*(v4 + 24));
  *(&v44 - 8) = v30;
  *(&v44 - 7) = v7;
  *(&v44 - 6) = v31;
  *(&v44 - 5) = v6;
  *(&v44 - 4) = sub_1B21E89C8;
  *(&v44 - 3) = v17;
  v32 = v55;
  *(&v44 - 2) = v55;
  v21 = v58;
  sub_1B212B00C(v33, sub_1B21E8998, (&v44 - 10), v58, v53);
  if (!v3)
  {

    sub_1B21CAAC0(v32, v20, &v73);
    v35 = v50;
    sub_1B21E865C(v20);
    if (v73)
    {
      v37 = sub_1B21E79E0(v73);
    }

    else
    {
      v37 = 0;
    }

    v60 = v37;
    sub_1B21C9D20(&v73);

    v42 = v73;
    v43 = v45;
    if (v45)
    {
      v45(&v73);
    }

    v73 = v42;
    sub_1B21E5ADC(v55, &v73);
    sub_1B2112F4C(sub_1B21E89C8, v17);
    sub_1B2112F4C(v56, v44);
    sub_1B2112F4C(v43, v51);
    sub_1B2112F4C(v46, v47);
    sub_1B2112F4C(v48, v49);
    sub_1B2112F4C(v13, v35);

    v41 = v57;
    (*(v52 + 32))(v57, v53, v21);
LABEL_29:
    v27 = v41;
    v28 = 0;
    v29 = v21;
    return sub_1B21117B4(v27, v28, 1, v29);
  }

  sub_1B2112F4C(v56, v44);
  sub_1B2112F4C(v45, v51);
  sub_1B2112F4C(v46, v47);
  sub_1B2112F4C(v48, v49);
  sub_1B2112F4C(v13, v50);
  return sub_1B2112F4C(sub_1B21E89C8, v17);
}

uint64_t sub_1B21E4ABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(*a1 + 104) + 8);
  v6 = *(*a1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B2252B00();
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  swift_beginAccess();
  (*(v5 + 32))(a2, v6, v5);
  swift_endAccess();
  if (sub_1B2122A98(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v10, AssociatedTypeWitness);
  }

  (*(v12 + 8))(v10, v8);
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B21E4CF4(uint64_t a1, uint64_t *a2)
{
  v46 = *a2;
  v4 = v46;
  v5 = sub_1B22520F0();
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B2252120();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v4 + 104);
  v10 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1B2252B00();
  v52 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v54 = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  sub_1B21E40AC(a1, v14);
  v44 = v10;
  v22 = v52;
  v21 = v53;
  v23 = v20;
  if (sub_1B2122A98(v14, 1, v54) == 1)
  {
    return (*(v22 + 8))(v14, v12);
  }

  v25 = v15;
  v26 = *(v15 + 32);
  v27 = v23;
  v43 = v23;
  v28 = v14;
  v29 = v54;
  v26(v23, v28, v54);
  v52 = a2[6];
  v30 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v29;
  (*(v25 + 16))(v30, v27, v29);
  v32 = (*(v25 + 80) + 56) & ~*(v25 + 80);
  v33 = swift_allocObject();
  v34 = v46;
  v35 = v44;
  *(v33 + 2) = *(v46 + 80);
  *(v33 + 3) = v35;
  *(v33 + 4) = *(v34 + 96);
  *(v33 + 5) = v21;
  *(v33 + 6) = a2;
  v36 = v30;
  v37 = v31;
  v26(&v33[v32], v36, v31);
  aBlock[4] = sub_1B21E87EC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2972180;
  v38 = _Block_copy(aBlock);

  v39 = v45;
  sub_1B2252100();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  v41 = v47;
  v40 = v48;
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v39, v41, v38);
  _Block_release(v38);
  (*(v49 + 8))(v41, v40);
  (*(v50 + 8))(v39, v51);
  (*(v25 + 8))(v43, v37);
}

uint64_t sub_1B21E5268(void *a1, uint64_t a2)
{
  v30 = a2;
  v32 = *a1;
  v31 = v32[13];
  v3 = *(v31 + 8);
  v33 = v32[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B2252B00();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  result = sub_1B21E2CFC();
  if (result)
  {
    swift_beginAccess();
    (*(v3 + 32))(v30, v33, v3);
    swift_endAccess();
    if (sub_1B2122A98(v7, 1, AssociatedTypeWitness) == 1)
    {
      (*(v28 + 8))(v7, v29);
      result = sub_1B2252EC0();
      __break(1u);
    }

    else
    {
      v16 = *(v8 + 32);
      v27 = v14;
      v16(v14, v7, AssociatedTypeWitness);
      v17 = a1[2];
      (*(v8 + 16))(v11, v14, AssociatedTypeWitness);
      v18 = (*(v8 + 80) + 56) & ~*(v8 + 80);
      v19 = swift_allocObject();
      v20 = v32;
      v21 = v33;
      *(v19 + 2) = v32[10];
      *(v19 + 3) = v21;
      v22 = v31;
      *(v19 + 4) = v20[12];
      *(v19 + 5) = v22;
      *(v19 + 6) = a1;
      v16(&v19[v18], v11, AssociatedTypeWitness);
      v23 = v17[5];
      v24 = v17[6];
      sub_1B21139A0(v17 + 2, v23);
      v25 = *(v24 + 8);

      v25(sub_1B21E8898, v19, v23, v24);

      return (*(v8 + 8))(v27, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t *sub_1B21E5668@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[20];
  if (v3)
  {
    v4 = *result;
    v5 = result[21];
    v6 = swift_allocObject();
    *(v6 + 16) = *(v4 + 80);
    *(v6 + 24) = *(v4 + 88);
    *(v6 + 40) = *(v4 + 104);
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;

    v7 = sub_1B21E8964;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B21E5730(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1B21E5774(uint64_t a1)
{
  sub_1B2177AB0(v1, a1, *v1, &off_1F2971F98);
  v2 = *(v1 + 176);
  *(v1 + 176) = 1;
  *(v1 + 184) = 0;
  sub_1B21E7918(v2);
  return sub_1B21E2BF4(sub_1B21E784C, 0, sub_1B21E8448);
}

uint64_t sub_1B21E5830(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = v3[5];
  v6 = v3[6];
  sub_1B21139A0(v3 + 2, v5);
  v7 = *(v6 + 8);

  v8 = a1;
  v7(sub_1B21E8034, v4, v5, v6);
}

void *sub_1B21E5914@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v28 = *result;
  if (result[20])
  {
    v4 = result[10];
    v6 = result[12];
    v5 = result[13];
    v7 = result[14];
    v8 = result[15];
    v9 = result[16];
    v10 = result[18];
    v25 = result[17];
    v26 = result[19];
    v30 = result[11];
    sub_1B2112328(v4, v30);
    sub_1B2112328(v6, v5);
    sub_1B2112328(v7, v8);
    v31 = v9;
    v11 = v9;
    v12 = v25;
    sub_1B2112328(v11, v25);
    v29 = v10;
    v13 = v10;
    v14 = v26;
    result = sub_1B2112328(v13, v26);
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v12 = 0;
    v29 = 0;
    v14 = 0;
    v4 = 1;
  }

  if (v2[7])
  {
    v27 = v4;
    v15 = v8;
    v16 = v7;
    v17 = v5;
    v18 = v6;
    v19 = v14;
    v20 = v12;
    v22 = v2[8];
    v21 = v2[9];
    v23 = swift_allocObject();
    *(v23 + 16) = *(v28 + 80);
    *(v23 + 24) = *(v28 + 88);
    *(v23 + 40) = *(v28 + 104);
    *(v23 + 48) = v22;
    v12 = v20;
    v14 = v19;
    v6 = v18;
    v5 = v17;
    v7 = v16;
    v8 = v15;
    v4 = v27;
    *(v23 + 56) = v21;

    v24 = sub_1B21E8968;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  *a2 = v4;
  a2[1] = v30;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v31;
  a2[7] = v12;
  a2[8] = v29;
  a2[9] = v14;
  a2[10] = v24;
  a2[11] = v23;
  return result;
}

BOOL sub_1B21E5B6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = *(v4 + 176);
  if (v5 == 1)
  {
    return 0;
  }

  else
  {

    v6 = DatabaseRegion.isModified(byEventsOfKind:)(a1, a2, a3, a4);
    sub_1B21E7918(v5);
  }

  return v6;
}

void sub_1B21E5BF8()
{
  sub_1B2111F14();
  v2 = v0;
  v3 = *(v0 + 176);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
LABEL_3:
    sub_1B2111588();
    return;
  }

  v4 = v1;
  v5 = v1[3];
  v6 = v1[4];
  sub_1B21139A0(v1, v5);
  v7 = *(v6 + 16);

  v8 = v7(v5, v6);
  v10 = v9;
  v11 = sub_1B2252220();
  v13 = sub_1B214A5A8(v11, v12, v8, v10, v3);
  v15 = v14;

  if (v13 == 1)
  {
    goto LABEL_9;
  }

  if (!v15)
  {

LABEL_9:
    sub_1B21E7918(v3);
    goto LABEL_10;
  }

  v16 = sub_1B21CA838(v4[6], v15);

  sub_1B21E7918(v3);
  if ((v16 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  *(v2 + 184) = 1;
  sub_1B2111588();

  TransactionObserver.stopObservingDatabaseChangesUntilNextTransaction()();
}

void sub_1B21E5D54()
{
  sub_1B2111F14();
  v1 = v0;
  v110 = v2;
  v3 = *v0;
  v4 = *v0;
  v5 = sub_1B22520F0();
  sub_1B211280C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2111844();
  v11 = v10 - v9;
  v12 = sub_1B2252120();
  sub_1B211280C();
  v109 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  v17 = v16 - v15;
  v112 = *(v3 + 104);
  v111 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  sub_1B211280C();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v25);
  if (*(v1 + 184) == 1)
  {
    v98 = v29;
    v103 = &v87 - v27;
    v99 = v17;
    v105 = v28;
    v100 = v11;
    v101 = v12;
    v102 = v7;
    *(v1 + 184) = 0;
    v30 = v26;
    sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
    sub_1B2161A20(&qword_1EB7A27A0, &qword_1B2260EA0);
    type metadata accessor for Database(255);
    v104 = v30;
    swift_getFunctionTypeMetadata1();
    v31 = sub_1B2252B00();
    sub_1B21180CC(v31);
    sub_1B21E2BF4(sub_1B21E89E8, 0, sub_1B21E78C8);
    v108 = v120;
    v107 = v121;
    v32 = v124;
    v33 = v125;
    v34 = v126;
    if (v126)
    {
      v92 = v117;
      v97 = v118;
      v96 = v119;
      v93 = v122;
      v94 = v123;
      v95 = v124;
      v91 = v5;
      v35 = v127;
      v106 = v116;
      v36 = swift_allocObject();
      v37 = *(v4 + 80);
      v38 = v111;
      v36[2] = v37;
      v36[3] = v38;
      v39 = *(v4 + 96);
      v40 = v112;
      v36[4] = v39;
      v36[5] = v40;
      v36[6] = v34;
      v36[7] = v35;
      v41 = sub_1B21E7B74;
      if (v106 != 1)
      {
        v89 = v37;
        v90 = v33;
        if (v108)
        {
          v108();
        }

        v42 = v105;
        if (v1[4] != 1)
        {
          MEMORY[0x1EEE9AC00](*(v1 + 24));
          v50 = v111;
          *(&v87 - 8) = v89;
          *(&v87 - 7) = v50;
          v51 = v112;
          *(&v87 - 6) = v39;
          *(&v87 - 5) = v51;
          *(&v87 - 4) = sub_1B21E7B74;
          *(&v87 - 3) = v36;
          *(&v87 - 2) = v110;
          v52 = v104;
          sub_1B212B00C(v53, sub_1B21E7B44, (&v87 - 10), v104, v24);
          v54 = v42;
          v55 = *(v42 + 32);
          v56 = v103;
          v57 = v24;
          v58 = v52;
          v55(v103, v57);
LABEL_28:
          v110 = v1[6];
          v72 = v98;
          (*(v54 + 16))(v98, v56, v58);
          v73 = (*(v54 + 80) + 56) & ~*(v54 + 80);
          v74 = swift_allocObject();
          v75 = v111;
          v74[2] = v89;
          v74[3] = v75;
          v76 = v112;
          v74[4] = v39;
          v74[5] = v76;
          v74[6] = v1;
          (v55)(v74 + v73, v72, v58);
          v113[4] = sub_1B21E7928;
          v113[5] = v74;
          v113[0] = MEMORY[0x1E69E9820];
          v113[1] = 1107296256;
          v113[2] = sub_1B21E5730;
          v113[3] = &unk_1F2971FF0;
          v77 = _Block_copy(v113);

          v78 = v99;
          sub_1B2252100();
          v115[0] = MEMORY[0x1E69E7CC0];
          sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
          sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
          v79 = v100;
          v80 = v91;
          sub_1B2252BC0();
          MEMORY[0x1B2742540](0, v78, v79, v77);
          sub_1B2115240();
          _Block_release(v77);
          sub_1B2112B88();
          sub_1B2117D58();
          v81(v79, v80);
          sub_1B2117D58();
          v82(v78, v101);
          sub_1B2117D58();
          v83(v103, v58);

          goto LABEL_29;
        }

        sub_1B211B358();
        v113[0] = sub_1B2252190();
        MEMORY[0x1EEE9AC00](v113[0]);
        *(&v87 - 4) = v110;
        *(&v87 - 3) = v1;
        *(&v87 - 2) = sub_1B21E7B74;
        *(&v87 - 1) = v36;
        v43 = v104;
        sub_1B2237994(v113, sub_1B21E78E4);
        v59 = *(v42 + 32);
        v59(v103, v21, v43);
        v88 = v59;
        if (v113[0])
        {
          v60 = sub_1B21E79E0(v113[0]);
        }

        else
        {
          v60 = 0;
        }

        v114 = v60;
        sub_1B21C9D20(v115);

        v61 = v115[0];
        if (!v97)
        {
LABEL_27:
          v71 = v1[22];
          v1[22] = v61;
          sub_1B21E7918(v71);
          v58 = v104;
          v56 = v103;
          v54 = v42;
          v55 = v88;
          goto LABEL_28;
        }

        v62 = v1[22];
        if (v115[0] == 1)
        {
          if (v62 == 1)
          {

            sub_1B21E7958(1);
            sub_1B21E7918(1);
            goto LABEL_27;
          }

          sub_1B21166C8();
          sub_1B2112328(v65, v66);

          sub_1B21E7958(v62);
        }

        else
        {
          if (v62 != 1)
          {
            v114 = v1[22];
            sub_1B21166C8();
            sub_1B2112328(v84, v85);

            sub_1B21E7958(v62);
            sub_1B21E7958(v61);
            v86 = static DatabaseRegion.== infix(_:_:)(v115, &v114);

            sub_1B21E7918(v61);
            if (v86)
            {
              sub_1B21166C8();
              goto LABEL_26;
            }

LABEL_25:
            v115[0] = v61;
            v67 = v96;
            v68 = v97;
            v97(v115);
            v69 = v68;
            v70 = v67;
LABEL_26:
            sub_1B2112F4C(v69, v70);
            goto LABEL_27;
          }

          sub_1B21166C8();
          sub_1B2112328(v63, v64);

          sub_1B21E7958(1);
          sub_1B21E7958(v61);
        }

        sub_1B21E7918(v61);
        sub_1B21E7918(v62);
        goto LABEL_25;
      }
    }

    else
    {
      if (v116 != 1)
      {
        v46 = v122;
        v47 = v119;
        v48 = v118;
        v49 = v123;
        sub_1B2112F4C(v116, v117);
        sub_1B2112F4C(v48, v47);
        sub_1B2112F4C(v108, v107);
        sub_1B2112F4C(v46, v49);
        v44 = v32;
        v45 = v33;
        goto LABEL_13;
      }

      v36 = 0;
      v41 = 0;
    }

    v44 = v41;
    v45 = v36;
LABEL_13:
    sub_1B2112F4C(v44, v45);
  }

LABEL_29:
  sub_1B2111588();
}

void *sub_1B21E6818@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v28 = *result;
  if (result[20])
  {
    v4 = result[10];
    v6 = result[12];
    v5 = result[13];
    v7 = result[14];
    v8 = result[15];
    v9 = result[16];
    v10 = result[18];
    v25 = result[17];
    v26 = result[19];
    v30 = result[11];
    sub_1B2112328(v4, v30);
    sub_1B2112328(v6, v5);
    sub_1B2112328(v7, v8);
    v31 = v9;
    v11 = v9;
    v12 = v25;
    sub_1B2112328(v11, v25);
    v29 = v10;
    v13 = v10;
    v14 = v26;
    result = sub_1B2112328(v13, v26);
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v12 = 0;
    v29 = 0;
    v14 = 0;
    v4 = 1;
  }

  if (v2[7])
  {
    v27 = v4;
    v15 = v8;
    v16 = v7;
    v17 = v5;
    v18 = v6;
    v19 = v14;
    v20 = v12;
    v22 = v2[8];
    v21 = v2[9];
    v23 = swift_allocObject();
    *(v23 + 16) = *(v28 + 80);
    *(v23 + 24) = *(v28 + 88);
    *(v23 + 40) = *(v28 + 104);
    *(v23 + 48) = v22;
    v12 = v20;
    v14 = v19;
    v6 = v18;
    v5 = v17;
    v7 = v16;
    v8 = v15;
    v4 = v27;
    *(v23 + 56) = v21;

    v24 = sub_1B21E84A4;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  *a2 = v4;
  a2[1] = v30;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v31;
  a2[7] = v12;
  a2[8] = v29;
  a2[9] = v14;
  a2[10] = v24;
  a2[11] = v23;
  return result;
}

uint64_t sub_1B21E69E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *a2;
  v10 = a2[24];
  v13[2] = *(*a2 + 80);
  v14 = *(v9 + 88);
  v15 = *(v8 + 104);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1B212B00C(v10, a5, v13, AssociatedTypeWitness, a6);
}

uint64_t sub_1B21E6ACC(void *a1, void (*a2)(char *, char *, uint64_t))
{
  v29 = *a1;
  v30 = a2;
  v28 = v29[13];
  v3 = *(v28 + 8);
  v33 = v29[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v27 - v8;
  v34 = sub_1B2252B00();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  result = sub_1B21E2CFC();
  if (result)
  {
    swift_beginAccess();
    (*(v3 + 32))(v30, v33, v3);
    swift_endAccess();
    (*(v9 + 16))(v11, v14, v34);
    if (sub_1B2122A98(v11, 1, AssociatedTypeWitness) == 1)
    {
      v16 = *(v9 + 8);
      v17 = v34;
      v16(v14, v34);
      return (v16)(v11, v17);
    }

    else
    {
      v30 = *(v5 + 32);
      v18 = v32;
      v30(v32, v11, AssociatedTypeWitness);
      v19 = a1[2];
      (*(v5 + 16))(v31, v18, AssociatedTypeWitness);
      v20 = (*(v5 + 80) + 56) & ~*(v5 + 80);
      v21 = swift_allocObject();
      v22 = v29;
      v23 = v33;
      *(v21 + 2) = v29[10];
      *(v21 + 3) = v23;
      v24 = v28;
      *(v21 + 4) = v22[12];
      *(v21 + 5) = v24;
      *(v21 + 6) = a1;
      v30(&v21[v20], v31, AssociatedTypeWitness);
      v25 = v19[5];
      v26 = v19[6];
      sub_1B21139A0(v19 + 2, v25);
      v33 = *(v26 + 8);

      v33(sub_1B21E7FC4, v21, v25, v26);

      (*(v5 + 8))(v32, AssociatedTypeWitness);
      return (*(v9 + 8))(v14, v34);
    }
  }

  return result;
}

id sub_1B21E6F00(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  sub_1B2252B00();
  result = sub_1B21E2BF4(a3, 0, a4);
  if (v8)
  {

    v8(a2);
    sub_1B2112F4C(v8, v9);
    return sub_1B2112F4C(v8, v9);
  }

  return result;
}

uint64_t *sub_1B21E7038@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[20];
  if (v3)
  {
    v4 = *result;
    v5 = result[21];
    v6 = swift_allocObject();
    *(v6 + 16) = *(v4 + 80);
    *(v6 + 24) = *(v4 + 88);
    *(v6 + 40) = *(v4 + 104);
    *(v6 + 48) = v3;
    *(v6 + 56) = v5;

    v7 = sub_1B21E800C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B21E7118()
{
  v1 = *v0;
  v2 = *v0;
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  sub_1B2161A20(&qword_1EB7A27A0, &qword_1B2260EA0);
  v3 = *(v1 + 80);
  sub_1B2252B00();
  swift_getTupleTypeMetadata2();
  sub_1B21E2BF4(sub_1B2193D34, 0, sub_1B21E84D0);
  memcpy(__dst, __src, 0x50uLL);
  v10 = v48;
  if (__dst[0] == 1)
  {
    return swift_unknownObjectRelease();
  }

  v38 = v3;
  v12 = __dst[6];
  v13 = __dst[8];
  v14 = __dst[9];
  if (__dst[8])
  {
    sub_1B2112130(__dst[0], __dst[1], v4, v5, v6, v7, v8, v9, v36, v38, v2, __dst[1], __dst[3], __dst[2], __dst[5], __dst[4], __dst[7]);
    v15 = sub_1B2112328(v13, v14);
    v16 = v13(v15);
  }

  else
  {
    sub_1B2112130(__dst[0], __dst[1], v4, v5, v6, v7, v8, v9, v36, v38, v2, __dst[1], __dst[3], __dst[2], __dst[5], __dst[4], __dst[7]);
    v16 = sub_1B2112328(0, v14);
  }

  v24 = v14;
  if (v10)
  {
    v25 = v12;
    v26 = *(v40 + 96);
    v27 = *(v26 + 56);
    swift_unknownObjectRetain();

    v27(sub_1B21E8554, v0, v39, v26);
    swift_unknownObjectRelease();

    sub_1B211F6E8(v28, v29, v30, v31, v32, v33, v34, v35, v37, v39, v40, v41, v42, v43, v44, v45);
    sub_1B2112F4C(v25, v46);
    sub_1B2112F4C(v13, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B211F6E8(v16, v17, v18, v19, v20, v21, v22, v23, v37, v39, v40, v41, v42, v43, v44, v45);
    sub_1B2112F4C(v12, v46);
    sub_1B2112F4C(v13, v14);
  }

  return sub_1B21E84EC(__dst);
}

uint64_t sub_1B21E737C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  if (a1[20])
  {
    v6 = a1[10];
    v7 = a1[11];
    v24 = a1[10];
    v8 = a1[12];
    v29 = a1[13];
    v9 = a1[14];
    v10 = a1[15];
    v11 = a1[16];
    v12 = a1[17];
    v23 = v4;
    v14 = a1[18];
    v13 = a1[19];
    v26 = v7;
    sub_1B2112328(v6, v7);
    v25 = v8;
    v15 = v8;
    v16 = v9;
    sub_1B2112328(v15, v29);
    sub_1B2112328(v9, v10);
    sub_1B2112328(v11, v12);
    v17 = v13;
    v18 = v13;
    v5 = v23;
    sub_1B2112328(v14, v18);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v29 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v17 = 0;
    v24 = 1;
  }

  memcpy(__dst, a1 + 10, 0x60uLL);
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  v19 = *(v5 + 96);
  v27[0] = *(v5 + 80);
  v27[1] = v19;
  type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks(255, v27);
  v20 = sub_1B2252B00();
  (*(*(v20 - 8) + 8))(__dst, v20);
  *a2 = v24;
  a2[1] = v26;
  v21 = v29;
  a2[2] = v25;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v14;
  a2[9] = v17;
  result = a1[7];
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  a2[10] = result;
  return result;
}

id sub_1B21E7534(uint64_t a1, uint64_t a2)
{
  result = sub_1B21E2D6C();
  if (v7 != 1)
  {
    v4 = v15;
    if (v13)
    {
      v13(a2);
      sub_1B2112F4C(v7, v8);
      sub_1B2112F4C(v9, v10);
      sub_1B2112F4C(v11, v12);
      v5 = v13;
      v6 = v14;
      v4 = v15;
    }

    else
    {
      sub_1B2112F4C(v7, v8);
      sub_1B2112F4C(v9, v10);
      v5 = v11;
      v6 = v12;
    }

    sub_1B2112F4C(v5, v6);

    return sub_1B2112F4C(v4, v16);
  }

  return result;
}

uint64_t sub_1B21E76A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  if (a1[20])
  {
    v6 = a1[10];
    v7 = a1[11];
    v24 = a1[10];
    v8 = a1[12];
    v29 = a1[13];
    v9 = a1[14];
    v10 = a1[15];
    v11 = a1[16];
    v12 = a1[17];
    v23 = v4;
    v13 = a1[18];
    v14 = a1[19];
    v26 = v7;
    sub_1B2112328(v6, v7);
    v25 = v8;
    v15 = v8;
    v16 = v9;
    sub_1B2112328(v15, v29);
    sub_1B2112328(v9, v10);
    sub_1B2112328(v11, v12);
    v17 = v14;
    v18 = v14;
    v5 = v23;
    sub_1B2112328(v13, v18);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v29 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v17 = 0;
    v24 = 1;
  }

  memcpy(__dst, a1 + 10, 0x60uLL);
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  v19 = *(v5 + 96);
  v27[0] = *(v5 + 80);
  v27[1] = v19;
  type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks(255, v27);
  v20 = sub_1B2252B00();
  result = (*(*(v20 - 8) + 8))(__dst, v20);
  *a2 = v24;
  a2[1] = v26;
  v22 = v29;
  a2[2] = v25;
  a2[3] = v22;
  a2[4] = v16;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v17;
  return result;
}

uint64_t sub_1B21E7868(void *a1)
{
  v2 = a1[7];
  v1 = a1[8];
  v3 = a1[9];
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  return sub_1B21E8464(v2, v1, v3);
}

uint64_t sub_1B21E7918(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1B21E7940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B21E7958(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t *sub_1B21E7968(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1B21E7BA4(v5, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1B21E79E0(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1B21E7968(v8, v4, v2);
      MEMORY[0x1B2743C50](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B2148CEC(0, v4, v5);
  v6 = sub_1B21E7BA4(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_1B21E7B74(uint64_t a1)
{
  v2 = *(v1 + 48);
  v4 = a1;
  return v2(&v4);
}

unint64_t *sub_1B21E7BA4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v16 = result;
  v17 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v19 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    type metadata accessor for Database(0);

    v13 = static Database.isSQLiteInternalTable(_:)();

    v7 = v19;
    if ((v13 & 1) == 0)
    {
      *(v16 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v17++, 1))
      {
        __break(1u);
        return sub_1B21E7D4C(v16, a2, v17, a3);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1B21E7D4C(v16, a2, v17, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21E7D4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1B21619D8(&qword_1EB7A27B0, &qword_1B225E828);
  result = sub_1B2252F00();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v35 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v36 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = (*(v4 + 48) + 32 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    v37 = v16[2];
    v20 = (*(v4 + 56) + 16 * v15);
    v21 = *v20;
    v22 = v20[1];
    sub_1B2253420();

    sub_1B2252370();
    result = sub_1B2253470();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v8 + 48) + 32 * v26);
    *v31 = v17;
    v31[1] = v18;
    v31[2] = v37;
    v31[3] = v19;
    v32 = (*(v8 + 56) + 16 * v26);
    *v32 = v21;
    v32[1] = v22;
    ++*(v8 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    v9 = v36;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v36 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1B21E8058(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A27B8, &qword_1B225E840);
      v7 = sub_1B2252F00();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v33 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v16 + 8 * v15);
        sub_1B2253420();

        sub_1B2252370();
        sub_1B2253470();
        sub_1B212225C();
        if (((v23 << v22) & ~*(v11 + 8 * v21)) == 0)
        {
          sub_1B2114850();
          while (++v24 != v26 || (v25 & 1) == 0)
          {
            v27 = v24 == v26;
            if (v24 == v26)
            {
              v24 = 0;
            }

            v25 |= v27;
            if (*(v11 + 8 * v24) != -1)
            {
              sub_1B2118398();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1B2112110();
LABEL_25:
        sub_1B2111AE8();
        *(v11 + v28) |= v29;
        v31 = (*(v8 + 48) + 16 * v30);
        *v31 = v18;
        v31[1] = v19;
        *(*(v8 + 56) + 8 * v30) = v20;
        sub_1B21225E4();
        if (v32)
        {
          goto LABEL_30;
        }

        v4 = v33;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1B21E8248()
{
  sub_1B2111F14();
  if (!v2)
  {
    goto LABEL_27;
  }

  v4 = v3;
  if (*(v3 + 16) == v2)
  {

LABEL_27:
    sub_1B2111588();
    return;
  }

  v5 = v1;
  v6 = v0;
  sub_1B21619D8(&qword_1EB7A1BE8, &qword_1B226C280);
  v7 = sub_1B2252F00();
  v8 = v7;
  if (v5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0;
  v11 = v7 + 64;
  v32 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(v4 + 56);
    v17 = (*(v4 + 48) + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    memcpy(__dst, (v16 + 216 * v15), 0xD2uLL);
    sub_1B2253420();

    sub_1B2181728(__dst, v33);
    sub_1B2252370();
    sub_1B2253470();
    sub_1B212225C();
    if (((v22 << v21) & ~*(v11 + 8 * v20)) == 0)
    {
      sub_1B2114850();
      while (++v23 != v25 || (v24 & 1) == 0)
      {
        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        if (*(v11 + 8 * v23) != -1)
        {
          sub_1B2118398();
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    sub_1B2112110();
LABEL_25:
    sub_1B2111AE8();
    *(v11 + v27) |= v28;
    v30 = (*(v8 + 48) + 16 * v29);
    *v30 = v18;
    v30[1] = v19;
    memcpy((*(v8 + 56) + 216 * v29), __dst, 0xD2uLL);
    sub_1B21225E4();
    if (v31)
    {
      goto LABEL_30;
    }

    v4 = v32;
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v5)
    {
      goto LABEL_27;
    }

    v14 = v6[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1B21E8464(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B21E84EC(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A27A0, &qword_1B2260EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21E8558(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1B21E8598(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B2161A20(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B21E865C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1B21E866C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    sub_1B2112F4C(result, a2);
    sub_1B2112F4C(a3, a4);
    sub_1B2112F4C(a5, a6);
    sub_1B2112F4C(a7, a8);
    sub_1B2112F4C(a9, a10);
  }

  return result;
}

uint64_t sub_1B21E8750(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1B21E8804(uint64_t (*a1)(uint64_t))
{
  sub_1B2114864();
  swift_getAssociatedTypeWitness();
  v1 = sub_1B211AE20();

  return a1(v1);
}

id sub_1B21E88C4(uint64_t a1, void (*a2)(id))
{
  sub_1B2114864();
  swift_getAssociatedTypeWitness();
  v4 = sub_1B211AE20();
  return sub_1B21E6F00(v4, v5, a1, a2);
}

uint64_t sub_1B21E89EC@<X0>(void (*a1)(uint64_t, __n128)@<X0>, uint64_t a2@<X8>)
{
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v7 = v6 - v5;
  v8 = sub_1B2253480();
  sub_1B21115E0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  a1(v7, v12);
  swift_storeEnumTagMultiPayload();
  return (*(v10 + 32))(a2, v14, v8);
}

uint64_t DatabaseQueue.__allocating_init(configuration:)(uint64_t a1)
{
  sub_1B2114EE8();
  v2 = swift_allocObject();
  DatabaseQueue.init(configuration:)(a1);
  return v2;
}

uint64_t DatabaseQueue.path.getter()
{
  v1 = *(*(v0 + 16) + 24);

  return v1;
}

uint64_t DatabaseQueue.__allocating_init(path:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2114EE8();
  v6 = swift_allocObject();
  DatabaseQueue.init(path:configuration:)(a1, a2, a3);
  return v6;
}

uint64_t DatabaseQueue.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Configuration(0);
  v5 = sub_1B2111894(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  sub_1B212392C(a1, v7 - v6);
  type metadata accessor for SerializedDatabase();
  swift_allocObject();
  sub_1B21166D4();
  sub_1B2123A30();
  v9 = v8;
  sub_1B2133D70(a1);
  *(v2 + 16) = v9;
  return v2;
}

uint64_t DatabaseQueue.concurrentRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v7 = sub_1B2253480();
  v8 = sub_1B2111894(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  type metadata accessor for DatabaseFuture(0, a3, v11, v12);
  v15 = a3;
  v16 = v3;
  v17 = a1;
  v18 = a2;
  sub_1B21E89EC(sub_1B21E9688, v10);
  return sub_1B21660C0(v10);
}

void DatabaseQueue.spawnConcurrentRead(_:)(void (*a1)(void *, uint64_t), uint64_t a2)
{
  v4 = *(v2 + 16);
  sub_1B22247F4("/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 209, v4);
  sub_1B21E9498(*(v4 + 16), a1);
}

uint64_t sub_1B21E8FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B2223DB4(a4, v7);
}

void DatabaseQueue._add<A>(observation:scheduling:onChange:)(const void *a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = sub_1B2111894(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  v6 = v5 - v4;
  DatabaseQueue.configuration.getter(v5 - v4);
  v7 = *(v6 + 1);
  sub_1B2133D70(v6);
  memcpy(__dst, a1, sizeof(__dst));
  if (v7 == 1)
  {
    v8 = sub_1B2112C08();
    sub_1B22216F8(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    sub_1B2112C08();
    sub_1B2163818();
  }
}

uint64_t sub_1B21E9264(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1B2251BA0();
  sub_1B21115E0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2111844();
  v11 = v10 - v9;
  sub_1B2251B90();

  a4(v11);

  return (*(v7 + 8))(v11, v5);
}

void sub_1B21E934C(void *a1, void (*a2)(void *, uint64_t))
{
  v6 = 0;
  Database.beginTransaction(_:)(&v6);
  if (v4)
  {
    v5 = v4;
    a2(v4, 1);
  }

  else
  {
    sub_1B2152610();
    a2(a1, 0);
    sub_1B215476C();
    Database.commit()();
    if (!v4)
    {
      return;
    }
  }
}

uint64_t sub_1B21E9438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_1B22243C0(sub_1B21E9754);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

void sub_1B21E9498(void *a1, void (*a2)(void *, uint64_t))
{
  if (Database.isInsideTransaction.getter())
  {
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  v8 = 0;
  Database.beginTransaction(_:)(&v8);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    a2(v4, 1);

LABEL_5:
    return;
  }

  sub_1B2152610();
  a2(a1, 0);
  sub_1B215476C();
  Database.commit()();
  v5 = v7;
  if (v7)
  {
    goto LABEL_5;
  }
}

uint64_t DatabaseQueue.inTransaction(_:_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4[16] = *a1;
  v5 = a2;
  v6 = a3;
  return sub_1B2113C20(sub_1B21E96E0, v4);
}

uint64_t sub_1B21E9638(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = a2;

  return sub_1B223C180(&v8, a1, a3, a4, a1);
}

void *SQLSubqueryable.sqlExpression.getter()
{
  sub_1B2112C2C();
  v1();
  sub_1B21D0350(__src);
  return memcpy(v0, __src, 0xA3uLL);
}

void *SQLSubqueryable.exists()()
{
  sub_1B2112C2C();
  v1();
  __src[162] = 0;
  sub_1B21D04EC(__src);
  return memcpy(v0, __src, 0xA3uLL);
}

const void *sub_1B21E98EC(const void *a1)
{
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  sub_1B2114F78();
  memcpy(v6, v7, v8);
  if (sub_1B214D180(v67) == 1)
  {
    v9 = sub_1B21197F4(v67);
    memcpy(__dst, v9, 0xA2uLL);
    sub_1B211589C(v62);
    v10 = sub_1B21197F4(v62);
    sub_1B214D18C(v66, &v42);
    sub_1B2136148(v10, &v42);
    sub_1B21366E4(__dst, &v42);
    sub_1B2137278();
    sub_1B2115268(v11, v12, v13, v14, v15, v16, v17, v18, v42.n128_i64[0], v42.n128_i64[1], v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v62[17], v62[18], v62[19], v62[20]);
    v63[168] = 0;
    v64 = __dst;
    a1 = sub_1B224F530();
    sub_1B2142BCC(v63);
    sub_1B214D498(v66);
  }

  else
  {
    v19 = *sub_1B21197F4(v67);
    type metadata accessor for StatementArgumentsSink();
    swift_allocObject();
    sub_1B211589C(&v42);
    sub_1B21197F4(&v42);

    v26 = sub_1B2114D98(0, v20, v21, v22, v23, v24, v25);
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B2116B4C();
    type metadata accessor for SQLGenerationContext();
    swift_allocObject();

    v29 = sub_1B2117164(v28, v26, v27);
    v62[0] = v19;
    v36 = sub_1B2119120(v29, v30, v31, v32, v33, v34, v35);
    if (v1)
    {

      sub_1B214D498(v66);
    }

    else
    {
      v38 = v36;
      v39 = v37;
      sub_1B214D498(v66);
      v41 = Database.cachedStatement(sql:)(v38, v39);

      LODWORD(v38) = sqlite3_column_count(*(v41 + 16));

      return v38;
    }
  }

  return a1;
}

uint64_t SQLSubquery.sqlSubquery.getter()
{
  sub_1B2114F78();
  memcpy(v0, v1, v2);
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  return sub_1B214CFE0(v8, v7);
}

uint64_t sub_1B21E9BE0(uint64_t result, __int16 a2)
{
  v2 = *(result + 104) & 1;
  v3 = *(result + 160) & 0x1FF | (a2 << 15);
  *(result + 64) &= 1uLL;
  *(result + 104) = v2;
  *(result + 160) = v3;
  return result;
}

uint64_t AnyDatabaseCancellable.__allocating_init(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1B21A1628(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1B21E9F54(v8, v1, v3, v4);
  sub_1B2113208(a1);
  return v10;
}

uint64_t AnyDatabaseCancellable.__allocating_init(cancel:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AnyDatabaseCancellable.init(cancel:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1B21E9D60(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 40))
  {
    sub_1B211EE68(a1 + 16, &v5);
    v2 = *(&v6 + 1);
    v3 = v7;
    sub_1B21139A0(&v5, *(&v6 + 1));
    (*(v3 + 8))(v2, v3);
    sub_1B2113208(&v5);
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  swift_beginAccess();
  return sub_1B21B2294(&v5, a1 + 16);
}

uint64_t AnyDatabaseCancellable.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);

    v2(v4);
    sub_1B2112F4C(v2, v3);
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
  }

  sub_1B2112F4C(v5, *(v1 + 24));
  return v1;
}

uint64_t AnyDatabaseCancellable.__deallocating_deinit()
{
  AnyDatabaseCancellable.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B21E9EB8()
{
  v1 = v0;
  v3 = (v0 + 16);
  v2 = *(v0 + 16);
  if (v2)
  {
    v4 = *(v0 + 24);

    v2(v5);
    sub_1B2112F4C(v2, v4);
    v6 = *(v1 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 24);
  *v3 = 0;
  v3[1] = 0;

  return sub_1B2112F4C(v6, v7);
}

uint64_t sub_1B21E9F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  v6 = sub_1B212FF14(v10);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  v7 = swift_allocObject();
  sub_1B211EE68(v10, v7 + 16);
  type metadata accessor for AnyDatabaseCancellable();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B21EA09C;
  *(v8 + 24) = v7;
  sub_1B2113208(v10);
  return v8;
}

uint64_t NSData.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B2251DE0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 3;
  return result;
}

uint64_t static NSData.fromDatabaseValue(_:)(uint64_t a1)
{
  v3 = sub_1B22522F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 == 3)
  {
    sub_1B2126638(*a1, *(a1 + 8));
  }

  else
  {
    if (v9 != 2)
    {
      return 0;
    }

    sub_1B22522E0();
    v7 = sub_1B22522B0();
    v8 = v10;
    (*(v4 + 8))(v6, v3);
    if (v8 >> 60 == 15)
    {
      return 0;
    }
  }

  v12[1] = v7;
  v12[2] = v8;
  sub_1B21EA36C(v1, &v13);
  sub_1B21267A8(v7, v8);
  return v13;
}

uint64_t sub_1B21EA254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSData.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t String.quotedDatabaseIdentifier.getter()
{
  MEMORY[0x1B2741EB0]();
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  return 34;
}

uint64_t GRDBPrecondition(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void))
{
  result = a1();
  if ((result & 1) == 0)
  {
    a3();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21EA36C@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1B21115E0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = swift_dynamicCast();
  return sub_1B21117B4(a3, v9 ^ 1u, 1, a2);
}

uint64_t sub_1B21EA44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v23 = v5;
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v22[0] = v22 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B2252B00();
  sub_1B21115E0();
  v25 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  sub_1B21115E0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  v18 = v26;
  result = sub_1B2252870();
  if (!v18)
  {
    v20 = v25;
    if (sub_1B2122A98(v12, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v20 + 8))(v12, v8);
    }

    else
    {
      (*(v14 + 32))(v17, v12, AssociatedTypeWitness);
      v21 = v22[0];
      sub_1B2252970();
      (*(v23 + 8))(v21, v24);
      return (*(v14 + 8))(v17, AssociatedTypeWitness);
    }
  }

  return result;
}

Swift::String __swiftcall databaseQuestionMarks(count:)(Swift::Int count)
{
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A2330, &qword_1B225EC10);
    sub_1B21EA758();
    count = sub_1B2252250();
  }

  result._object = v1;
  result._countAndFlagsBits = count;
  return result;
}

unint64_t sub_1B21EA758()
{
  result = qword_1ED85DA30;
  if (!qword_1ED85DA30)
  {
    sub_1B2161A20(&qword_1EB7A2330, &qword_1B225EC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DA30);
  }

  return result;
}

uint64_t sub_1B21EA7CC(uint64_t a1, uint64_t a2)
{
  sub_1B21619D8(qword_1EB7A27C0, &qword_1B225ECB8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B22546B0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1B2253400();
}

uint64_t TableRequest<>.filter(keys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2123510();
  v14 = v13;
  if (*(v10 + 16))
  {
    v15 = v10;
    v16 = (*(v12 + 8))(v11, v12);
    v18 = v17;
    sub_1B2117C44();
    v19 = swift_allocObject();
    v19[2] = v15;
    v19[3] = v16;
    v19[4] = v18;
    v20 = *(v14 + 8);

    sub_1B211F720();
    sub_1B2114874();
    v20();
    sub_1B2115ED4();
  }

  else
  {
    sub_1B2117694();
    sub_1B2114874();
    sub_1B2115ED4();

    return v28(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t TableRequest<>.orderByPrimaryKey()()
{
  sub_1B2123510();
  sub_1B211D9B0();
  v0();
  v1 = swift_allocObject();
  sub_1B2122D14(v1);
  sub_1B211F720();
  sub_1B2114874();
  v2();
  sub_1B2115ED4();
}

void TableRequest<>.filter(id:)()
{
  sub_1B2111F14();
  sub_1B2115CD0();
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1B2252B00();
  sub_1B21115E0();
  v5 = v4;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B21225F8();
  (*(v7 + 16))(v0, v1, AssociatedTypeWitness);
  sub_1B211D6D0();
  (*(v5 + 8))(v0, v3);
  sub_1B2111588();
}

{
  sub_1B2111F14();
  sub_1B2115CD0();
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1B2252B00();
  sub_1B21115E0();
  v5 = v4;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B21225F8();
  (*(v7 + 16))(v0, v1, AssociatedTypeWitness);
  sub_1B211D6D0();
  (*(v5 + 8))(v0, v3);
  sub_1B2111588();
}

uint64_t JoinableRequest.including<A>(all:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(*(a5 + 8) + 16) + 8))(&v17, a3);
  sub_1B2116AB8();
  v13 = sub_1B21166EC(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
  v14(v13);
}

uint64_t JoinableRequest.including<A>(optional:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B2112C40(a1, a2, a3);
  v4(v3);
  sub_1B2116AB8();
  v13 = sub_1B21166EC(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
  v14(v13);
}

uint64_t JoinableRequest.including<A>(required:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B2112C40(a1, a2, a3);
  v4(v3);
  sub_1B2116AB8();
  v13 = sub_1B21166EC(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
  v14(v13);
}

uint64_t JoinableRequest.joining<A>(optional:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B2112C40(a1, a2, a3);
  v4(v3);
  sub_1B2116AB8();
  v13 = sub_1B21166EC(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
  v14(v13);
}

uint64_t JoinableRequest.joining<A>(required:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B2112C40(a1, a2, a3);
  v4(v3);
  sub_1B2116AB8();
  v13 = sub_1B21166EC(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
  v14(v13);
}

void JoinableRequest<>.annotated<A>(withOptional:)()
{
  sub_1B2111F14();
  v23 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1B21115E0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v12 = v11 - v10;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B2111844();
  type metadata accessor for TableAlias();
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  (*(*(v2 + 16) + 8))(&v25, v4);
  v15 = *(v25 + 16);
  if (v15)
  {
    memcpy(v26, (v25 + 232 * v15 - 200), 0xE3uLL);
    sub_1B21819B8(v26, v24);

    v16 = v26[12];
    v22 = v26[11];
    sub_1B2136148(&v26[8], v24);
    sub_1B2181A14(v26);

    sub_1B2137224(&v26[8]);
    sub_1B21EF0CC();
    v17(v14, v4);
    JoinableRequest.joining<A>(optional:)(v12, v6, v4);
    (*(v8 + 8))(v12, v4);
    sub_1B2117C44();
    v18 = swift_allocObject();
    v18[2] = v22;
    v18[3] = v16;
    v18[4] = v14;
    v19 = *(v23 + 16);

    v19(sub_1B21EDAE8, v18, v6, v23);

    v20 = sub_1B21140C4();
    v21(v20);
    sub_1B2111588();
  }

  else
  {
    __break(1u);
  }
}

void JoinableRequest<>.annotated<A>(withRequired:)()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1B21115E0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2111844();
  v11 = v10 - v9;
  sub_1B21115E0();
  v27 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1B2111844();
  v16 = v15 - v14;
  (*(*(v17 + 16) + 8))(&v29, v18);
  v19 = *(v29 + 16);
  if (v19)
  {
    v26 = v1;
    memcpy(v30, (v29 + 232 * v19 - 200), 0xE3uLL);
    sub_1B21819B8(v30, v28);

    v20 = v30[12];
    v25 = v30[11];
    sub_1B2136148(&v30[8], v28);
    sub_1B2181A14(v30);

    sub_1B2137224(&v30[8]);
    type metadata accessor for TableAlias();
    v21 = swift_allocObject();
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0;
    sub_1B21EF0CC();
    v22();
    JoinableRequest.joining<A>(required:)(v11, v5, v3);
    (*(v7 + 8))(v11, v3);
    sub_1B2117C44();
    v23 = swift_allocObject();
    v23[2] = v25;
    v23[3] = v20;
    v23[4] = v21;
    v24 = *(v26 + 16);

    v24(sub_1B21EF09C, v23, v5, v26);

    (*(v27 + 8))(v16, v5);
    sub_1B2111588();
  }

  else
  {
    __break(1u);
  }
}

uint64_t DerivableRequest.annotated(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AssociationAggregate(255, AssociatedTypeWitness, v4, v5);
  sub_1B22526A0();
  sub_1B2111B28();
  swift_getWitnessTable();
  return sub_1B2252520();
}

void DerivableRequest.having(_:)()
{
  sub_1B2123510();
  v2 = v1;
  v4 = v3;
  sub_1B21115E0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  v10 = v9 - v8;
  v17 = *v11;
  v12 = *(v11 + 2);
  (*(v6 + 16))(v9 - v8, v0, v4);
  v18[1] = *(&v17 + 1);
  v18[2] = v12;
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for AssociationAggregate(0, AssociatedTypeWitness, v14, v15);
  sub_1B21DF300(v10, v16, v4, v2);
  v18[3] = &type metadata for SQLExpression;
  v18[4] = &protocol witness table for SQLExpression;
  v18[0] = swift_allocObject();
  memcpy((v18[0] + 16), v19, 0xA3uLL);
  AggregatingRequest.having(_:)(v18);
  (*(v6 + 8))(v10, v4);
  sub_1B2113208(v18);
  sub_1B2115ED4();
}

uint64_t sub_1B21EB8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1B22531F0() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t TableRequest<>.groupByPrimaryKey()()
{
  sub_1B2123510();
  sub_1B211D9B0();
  v0();
  v1 = swift_allocObject();
  sub_1B2122D14(v1);
  sub_1B211F720();
  sub_1B2114874();
  v2();
  sub_1B2115ED4();
}

void sub_1B21EBA98(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x1E69E6370];
  *(a1 + 32) = &protocol witness table for Bool;
  *a1 = 0;
}

uint64_t sub_1B21EBAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v27 = a6;
  v12 = sub_1B2251E90();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *&v28 = a2;
  *(&v28 + 1) = a3;
  v29 = a4;
  (*(v19 + 16))(&v26 - v18, a1, AssociatedTypeWitness, v17);
  swift_dynamicCast();
  sub_1B218EF84(v15, v30);
  (*(v13 + 8))(v15, v12);
  v20 = v31;
  if (v31)
  {
    v21 = v32;
    sub_1B21139A0(v30, v31);
    (*(v21 + 24))(&v28, v20, v21);
    v26 = v28;
    v22 = v29;
    result = sub_1B2113208(v30);
    v24 = v26;
  }

  else
  {
    result = sub_1B212AC5C(v30, &qword_1EB7A0E30, &unk_1B2259360);
    v24 = 0uLL;
    v22 = -1;
  }

  v25 = v27;
  *v27 = v24;
  *(v25 + 16) = v22;
  return result;
}

uint64_t sub_1B21EBD08(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = sub_1B2251EE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v17 + 16))(v28 - v16, a1, AssociatedTypeWitness, v15);
  swift_dynamicCast();
  if (a2)
  {
    if (a2 == 1)
    {
      v18 = sub_1B2251EB0();
      v32 = MEMORY[0x1E69E6158];
      v33 = &protocol witness table for String;
      v29 = v18;
      v30 = v19;
    }

    else
    {
      sub_1B2251EB0();
      v22 = sub_1B2252220();
      v24 = v23;

      v32 = MEMORY[0x1E69E6158];
      v33 = &protocol witness table for String;
      v29 = v22;
      v30 = v24;
    }
  }

  else
  {
    v32 = &type metadata for DatabaseValue;
    v33 = &protocol witness table for DatabaseValue;
    v28[0] = sub_1B2251ED0();
    v28[1] = v20;
    v29 = MEMORY[0x1B27418E0](v28, 16);
    v30 = v21;
    v31 = 3;
  }

  (*(v11 + 8))(v13, v10);
  v25 = v32;
  v26 = v33;
  sub_1B21139A0(&v29, v32);
  (v26[3])(v25, v26);
  return sub_1B2113208(&v29);
}

uint64_t sub_1B21EBFBC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v27 = a4;
  v7 = *(a2 + 16);
  if (v7)
  {
    *&v26 = a5;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B213CA68();
    v10 = v32;
    v11 = (a2 + 32);
    while (1)
    {
      v30 = *v11;

      sub_1B21EC29C(&v30, a3, v27, &v29, v12, v13, v31);
      if (v6)
      {
        break;
      }

      v6 = 0;

      memcpy(v28, v31, sizeof(v28));
      v32 = v10;
      v14 = *(v10 + 16);
      if (v14 >= *(v10 + 24) >> 1)
      {
        sub_1B213CA68();
        v10 = v32;
      }

      *(v10 + 16) = v14 + 1;
      memcpy((v10 + 168 * v14 + 32), v28, 0xA3uLL);
      ++v11;
      if (!--v7)
      {
        a5 = v26;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (qword_1ED85D4E8 != -1)
    {
      v25 = a5;
      swift_once();
      a5 = v25;
    }

    v26 = xmmword_1ED85D4F0;
    v16 = xmmword_1ED85D500;
    v17 = word_1ED85D510;
    v18 = HIBYTE(word_1ED85D510);
    v19 = byte_1ED85D512;
    a5[3] = &type metadata for SQLExpression;
    a5[4] = &protocol witness table for SQLExpression;
    v20 = a5;
    v21 = swift_allocObject();
    v27 = &v26;
    *v20 = v21;
    v22 = v21;
    v31[0] = v26;
    v31[1] = v16;
    LOBYTE(v31[2]) = v17;
    BYTE1(v31[2]) = v18;
    BYTE2(v31[2]) = v19;
    MEMORY[0x1EEE9AC00](v21);
    sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
    sub_1B211AB74(&qword_1ED85D868, &qword_1EB7A1CD8, &unk_1B225EDE0, MEMORY[0x1E69E6328]);
    swift_getKeyPath();

    sub_1B224F214();
    v24 = v23;

    sub_1B213B4BC(v31, v24, v22 + 16);
  }
}

void sub_1B21EC29C(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v12 = *a1;
  sub_1B21BB544(*a1, a2, a3, a3, a4, a5, a6);
  if (v7)
  {
    *a4 = v7;
    return;
  }

  v18 = v13;
  if (v13)
  {
    v69 = a7;
    v19 = *(v13 + 16);
    if (v19)
    {
      v72 = v12;
      *v81 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v19, 0, v14, v15, v16, v17);
      v20 = *v81;
      v21 = v18 + 40;
      do
      {
        v26 = sub_1B2252220();
        v28 = v27;
        *v81 = v20;
        v30 = *(v20 + 16);
        v29 = *(v20 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1B2116B10(v29 > 1, v30 + 1, 1, v22, v23, v24, v25);
          v20 = *v81;
        }

        *(v20 + 16) = v30 + 1;
        v31 = v20 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v21 += 16;
        --v19;
      }

      while (v19);

      v12 = v72;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    *v81 = sub_1B216E9BC(v12);
    sub_1B21EDE64(v81, v20);

    v32 = *v81;
    v33 = *(*v81 + 16);
    if (v33)
    {
      v94 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v34 = 0;
      v35 = v32 + 32;
      v36 = v94;
      v70 = v33 - 1;
      while (1)
      {
        if (v34 >= *(v32 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v71 = v35;
        sub_1B2122B00(v35, v91, &qword_1EB7A1270, qword_1B225EDF0);
        v37 = v91[0];
        v38 = v91[1];
        sub_1B2122B00(&v92, v81, &qword_1EB7A0E30, &unk_1B2259360);
        v39 = *&v81[24];
        v73 = v34;
        if (*&v81[24])
        {
          v40 = *&v81[32];
          v41 = sub_1B21139A0(v81, *&v81[24]);
          *(&v89 + 1) = v39;
          v90 = *(v40 + 8);
          v42 = sub_1B212FF14(&v88);
          (*(*(v39 - 8) + 16))(v42, v41, v39);

          sub_1B2113208(v81);
        }

        else
        {

          sub_1B212AC5C(v81, &qword_1EB7A0E30, &unk_1B2259360);
          v88 = 0u;
          v89 = 0u;
          v90 = 0;
        }

        v43 = v32;
        sub_1B2122B00(&v88, v84, &qword_1EB7A10F0, &qword_1B225D320);
        v44 = v85;
        if (v85)
        {
          v45 = v86;
          sub_1B21139A0(v84, v85);
          v46 = *(v45 + 8);

          v46(v81, v44, v45);
          sub_1B2113208(v84);
        }

        else
        {

          sub_1B212AC5C(v84, &qword_1EB7A10F0, &qword_1B225D320);
          *v81 = 0uLL;
          v81[16] = 4;
          sub_1B2127D7C(v81);
        }

        memcpy(v87, v81, 0xA3uLL);
        v79[0] = v37;
        v79[1] = v38;
        sub_1B2134F5C(v79);
        memcpy(v80, v79, sizeof(v80));
        memcpy(v81, v79, sizeof(v81));
        memcpy(v82, v87, sizeof(v82));
        memcpy(v83, v87, 0xA3uLL);
        if (sub_1B2127E1C(v83) == 2)
        {
          v47 = sub_1B2127E38(v83);
          v48 = *v47;
          v49 = *(v47 + 8);
          v50 = *(v47 + 16);
          v32 = v43;
          if (v50 == 4 && !(v49 | v48))
          {

            sub_1B2127DC0(v87, v78);
            sub_1B2113A44(0, 0, 4);
            sub_1B2113A44(0, 0, 4);

            sub_1B212AC5C(v81, &qword_1EB7A1CE0, &qword_1B225BAB0);
            memcpy(v75, v80, 0xA3uLL);
            v76[0] = 0;
            v76[1] = 0;
            LOBYTE(v76[2]) = 4;
            sub_1B2127D7C(v76);
            memcpy(v74, v76, sizeof(v74));
            sub_1B21353B0(2, v75, __src);
            memcpy(v77, v74, 0xA3uLL);
            sub_1B21356F8(v77);
            memcpy(v78, v75, 0xA3uLL);
            sub_1B21356F8(v78);
            sub_1B21356F8(v87);

            v51 = v73;
            goto LABEL_27;
          }

          sub_1B2127DC0(v87, v78);

          sub_1B2127DC0(v87, v78);
          sub_1B2113A44(0, 0, 4);
          sub_1B2113A44(v48, v49, v50);
        }

        else
        {

          sub_1B2127DC0(v87, v78);
          v32 = v43;
        }

        v51 = v73;
        sub_1B212AC5C(v81, &qword_1EB7A1CE0, &qword_1B225BAB0);
        memcpy(v78, v80, 0xA3uLL);
        memcpy(v77, v87, 0xA3uLL);
        sub_1B21353B0(0, v78, __src);
        sub_1B21356F8(v87);

LABEL_27:
        sub_1B212AC5C(&v88, &qword_1EB7A10F0, &qword_1B225D320);

        sub_1B212AC5C(v91, &qword_1EB7A1270, qword_1B225EDF0);
        memcpy(v78, __src, 0xA3uLL);
        v94 = v36;
        v52 = *(v36 + 16);
        if (v52 >= *(v36 + 24) >> 1)
        {
          sub_1B213CA68();
          v36 = v94;
        }

        *(v36 + 16) = v52 + 1;
        memcpy((v36 + 168 * v52 + 32), v78, 0xA3uLL);
        if (v70 == v51)
        {

          goto LABEL_33;
        }

        v35 = v71 + 56;
        v34 = v51 + 1;
      }
    }

LABEL_33:
    if (qword_1ED85DC80 != -1)
    {
LABEL_36:
      v53 = swift_once();
    }

    *v81 = xmmword_1ED85DC88;
    *&v81[16] = xmmword_1ED85DC98;
    *&v81[32] = word_1ED85DCA8;
    v81[34] = byte_1ED85DCAA;
    MEMORY[0x1EEE9AC00](v53);
    sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
    sub_1B211AB74(&qword_1ED85D868, &qword_1EB7A1CD8, &unk_1B225EDE0, MEMORY[0x1E69E6328]);
    swift_getKeyPath();

    sub_1B224F214();
    v55 = v54;

    sub_1B213B4BC(v81, v55, v69);
  }

  else
  {
    sub_1B2252CD0();

    MEMORY[0x1B2741EB0](a2, a3);
    MEMORY[0x1B2741EB0](0xD000000000000022, 0x80000001B226F3E0);

    sub_1B219C61C(v56, v57, v58, v59, v60, v61, v62, v63, v67, v68);

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340, MEMORY[0x1E69E6310]);
    v64 = sub_1B2252250();
    v66 = v65;

    MEMORY[0x1B2741EB0](v64, v66);

    sub_1B2252EC0();
    __break(1u);

    __break(1u);
  }
}

uint64_t sub_1B21ECBC8(uint64_t a1)
{
  Database.primaryKey(_:)();
  if (v1)
  {
    return a1;
  }

  v3 = v19;
  if (v21)
  {
    if (v21 == 1)
    {
      v4 = v19;
    }

    else
    {
      v4 = &unk_1F2969A68;
    }
  }

  else
  {
    v5 = v20;
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_1B22546B0;
    *(v4 + 4) = v3;
    *(v4 + 5) = v5;
  }

  v6 = *(v4 + 2);
  if (!v6)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1B216EFB0(0, v6, 0);
  v8 = 0;
  a1 = v22;
  v9 = (v4 + 40);
  while (v8 < *(v4 + 2))
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v16 = &type metadata for SQLExpression;
    v17 = &protocol witness table for SQLExpression;
    v12 = swift_allocObject();
    *&v15 = v12;
    __src[0] = v11;
    __src[1] = v10;
    sub_1B2134F5C(__src);
    memcpy((v12 + 16), __src, 0xA3uLL);
    v22 = a1;
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);

    if (v14 >= v13 >> 1)
    {
      sub_1B216EFB0((v13 > 1), v14 + 1, 1);
      a1 = v22;
    }

    *(a1 + 16) = v14 + 1;
    result = sub_1B21217FC(&v15, a1 + 40 * v14 + 32);
    if (v6 - 1 == v8)
    {

      return a1;
    }

    v9 += 2;
    ++v8;
  }

  __break(1u);
  return result;
}

void *sub_1B21ECDB8(void *a1)
{
  Database.primaryKey(_:)();
  if (!v1)
  {
    v3 = v12;
    if (v13)
    {
      if (v13 == 1 && (BYTE8(v12) & 1) == 0)
      {
        v4 = *(v12 + 16);
        if (v4)
        {
          v16 = MEMORY[0x1E69E7CC0];
          sub_1B216EFD0(0, v4, 0);
          a1 = v16;
          v11 = v12;
          v5 = (v12 + 40);
          do
          {
            v7 = *(v5 - 1);
            v6 = *v5;
            v16 = a1;
            v9 = a1[2];
            v8 = a1[3];

            if (v9 >= v8 >> 1)
            {
              sub_1B216EFD0((v8 > 1), v9 + 1, 1);
              a1 = v16;
            }

            v14 = &type metadata for Column;
            v15 = &protocol witness table for Column;
            *&v12 = v7;
            *(&v12 + 1) = v6;
            a1[2] = v9 + 1;
            sub_1B21217FC(&v12, &a1[5 * v9 + 4]);
            v5 += 2;
            --v4;
          }

          while (v4);
          sub_1B21424A0(v11, *(&v11 + 1), 1u);
        }

        else
        {
          sub_1B21424A0(v12, *(&v12 + 1), 1u);
          return MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        sub_1B21424A0(v12, *(&v12 + 1), v13);
        sub_1B21619D8(&qword_1EB7A1168, qword_1B225ECD0);
        a1 = swift_allocObject();
        *(a1 + 1) = xmmword_1B22546B0;
        a1[7] = &type metadata for Column;
        a1[8] = &protocol witness table for Column;
        a1[4] = 0x6469776F72;
        a1[5] = 0xE500000000000000;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1168, qword_1B225ECD0);
      a1 = swift_allocObject();
      *(a1 + 1) = xmmword_1B22546B0;
      a1[7] = &type metadata for Column;
      a1[8] = &protocol witness table for Column;
      *(a1 + 2) = v3;
    }
  }

  return a1;
}

uint64_t sub_1B21ED020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t))
{
  v15 = *a3;
  v14 = a3[1];
  sub_1B21619D8(a6, a7);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B22546B0;
  *(v16 + 56) = &type metadata for SQL;
  *(v16 + 64) = a8;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B22546B0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = v15;
  __src[3] = v14;
  sub_1B2114CC4(__src);
  memcpy((v17 + 32), __src, 0xB8uLL);
  *(v16 + 32) = v17;

  a9(v16, a4, a5);
}

uint64_t sub_1B21ED17C()
{
  sub_1B2123510();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  sub_1B21619D8(v10, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  *(v12 + 56) = &type metadata for SQL;
  *(v12 + 64) = v3;
  *(v12 + 32) = v9;

  v1(v12, v7, v5);
  sub_1B2115ED4();
}

uint64_t AggregatingRequest.having(_:)(uint64_t a1)
{
  sub_1B211EE68(a1, v4);
  v1 = swift_allocObject();
  sub_1B21217FC(v4, v1 + 16);
  sub_1B211F720();
  sub_1B2114874();
  v2();
}

uint64_t sub_1B21ED310(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v6 = *a1;
  v18[3] = &type metadata for SQL;
  v18[4] = a4;
  LOBYTE(v18[0]) = v6;

  v15 = sub_1B2144118(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18[0]);
  a5(v15);
  return sub_1B2113208(v18);
}

uint64_t sub_1B21ED3FC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v69, a1);
  if (!v4)
  {
    v7 = v69;
    v8 = *(v69 + 16);
    if (v8)
    {
      v58 = 0;
      v68 = MEMORY[0x1E69E7CC0];
      sub_1B216EFF0(0, v8, 0);
      v5 = v68;
      v9 = v8 - 1;
      v10 = &type metadata for SQLSelection;
      v11 = 32;
      v60 = v7;
      while (1)
      {
        memcpy(__dst, (v7 + v11), sizeof(__dst));
        memmove(v67, (v7 + v11), 0xB8uLL);
        switch(sub_1B213A580(v67))
        {
          case 1u:
            v44 = sub_1B213AA9C(v67);
            v45 = memcpy(v62, v44, 0xA3uLL);
            sub_1B212D5D8(v45, v46, v47, v48, v49, v50, v51, v52, v58, v60, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v62[17], v62[18], v62[19], v62[20], v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], __src[0]);
            v53 = sub_1B2111694();
            sub_1B213BBD8(v53, v54);
            sub_1B213A5CC(__dst);
            memcpy(__src, v63, 0xA3uLL);
            sub_1B214D464(__src);
            goto LABEL_10;
          case 2u:
            v12 = sub_1B213AA9C(v67);
            v13 = v10;
            v15 = v12[21];
            v14 = v12[22];
            v16 = memcpy(v62, v12, 0xA3uLL);
            v24 = sub_1B212D5D8(v16, v17, v18, v19, v20, v21, v22, v23, v58, v60, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v62[17], v62[18], v62[19], v62[20], v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], __src[0]);
            sub_1B212D5D8(v24, v25, v26, v27, v28, v29, v30, v31, v59, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v62[17], v62[18], v62[19], v62[20], v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], __src[0]);
            v32 = sub_1B2111694();
            sub_1B213BBD8(v32, v33);
            sub_1B21356F8(v12);
            sub_1B213A5CC(__dst);
            memcpy(__src, v63, 0xA8uLL);
            *&__src[168] = v15;
            *&__src[176] = v14;
            v10 = v13;
            v7 = v60;
            sub_1B2155A5C(__src);
            goto LABEL_10;
          case 3u:
            v34 = sub_1B213AA9C(v67);
            sub_1B212D5D8(v34, v35, v36, v37, v38, v39, v40, v41, v58, v60, *v34, v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v62[17], v62[18], v62[19], v62[20], v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], __src[0]);
            v42 = sub_1B2111694();
            sub_1B2153E58(v42, v43);
            sub_1B213A5CC(__dst);
            *__src = v63[0];
            sub_1B216ED24(__src);
LABEL_10:
            memcpy(v65, __src, sizeof(v65));
            break;
          case 4u:
            *__src = a4;
            sub_1B213A59C(__src);
            memcpy(v65, __src, sizeof(v65));

            sub_1B213A5CC(__dst);
            break;
          default:
            sub_1B213AA9C(v67);
            memcpy(__src, __dst, sizeof(__src));
            sub_1B213AA9C(__src);
            memcpy(v65, __dst, sizeof(v65));

            break;
        }

        v68 = v5;
        v56 = *(v5 + 16);
        v55 = *(v5 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1B216EFF0((v55 > 1), v56 + 1, 1);
          v5 = v68;
        }

        *&__src[24] = v10;
        *&__src[32] = &protocol witness table for SQLSelection;
        *__src = swift_allocObject();
        memcpy((*__src + 16), v65, 0xB8uLL);
        *(v5 + 16) = v56 + 1;
        sub_1B21217FC(__src, v5 + 40 * v56 + 32);
        if (!v9)
        {
          break;
        }

        --v9;
        v11 += 184;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v5;
}

uint64_t sub_1B21ED740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  (*(v6 + 16))(v9, v3, a2, v7);
  v24[0] = v11;
  v24[1] = v12;
  v24[2] = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for AssociationAggregate(0, AssociatedTypeWitness, v15, v16);
  sub_1B21DF300(v9, v17, a2, a3);
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  if (v13)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B22546B0;
    *(v18 + 56) = &type metadata for SQLSelection;
    *(v18 + 64) = &protocol witness table for SQLSelection;
    v19 = swift_allocObject();
    *(v18 + 32) = v19;
    memcpy(v24, __src, 0xA3uLL);
    v24[21] = v12;
    v24[22] = v13;
    sub_1B2155A5C(v24);
    memcpy((v19 + 16), v24, 0xB8uLL);

    sub_1B2127DC0(__src, v23);
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B22546B0;
    *(v20 + 56) = &type metadata for SQLExpression;
    *(v20 + 64) = &protocol witness table for SQLExpression;
    v21 = swift_allocObject();
    *(v20 + 32) = v21;
    memcpy((v21 + 16), __src, 0xA3uLL);
    sub_1B2127DC0(__src, v24);
  }

  SelectionRequest.annotated(with:)();

  sub_1B21356F8(__src);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_1B21ED9EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  return sub_1B21ED740(&v5, a3, a4);
}

uint64_t sub_1B21EDB08()
{

  sub_1B2117C44();

  return swift_deallocObject();
}

uint64_t sub_1B21EDD18(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  switch(a21 >> 61)
  {
    case 0uLL:

      break;
    case 1uLL:

      result = sub_1B213B9FC(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
      break;
    case 2uLL:
      sub_1B213B9FC(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
      goto LABEL_6;
    case 3uLL:
LABEL_6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B21EDE64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15E4();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1B21EDF00(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1B21EDF00(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1B2252FC0();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A1270, qword_1B225EDF0);
        v8 = sub_1B2252610();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_1B21EE2A8(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1B21EE048(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1B21EE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a5;
  if (a3 == a2)
  {
  }

  v7 = a3;
  v34 = *a4;
  v31 = (a5 + 40);
  while (2)
  {
    v30 = v7;
    while (2)
    {
      v8 = v34 + 56 * v7--;
      sub_1B2122B00(v8, &v33, &qword_1EB7A1270, qword_1B225EDF0);
      v9 = (v8 - 56);
      sub_1B2122B00(v8 - 56, &v32, &qword_1EB7A1270, qword_1B225EDF0);
      v10 = sub_1B2252220();
      v12 = v11;
      v13 = 0;
      v14 = v5;
      v15 = *(v5 + 16);
      for (i = v31; ; i += 2)
      {
        if (v15 == v13)
        {

          sub_1B212AC5C(&v32, &qword_1EB7A1270, qword_1B225EDF0);
          sub_1B212AC5C(&v33, &qword_1EB7A1270, qword_1B225EDF0);
          v5 = v14;
          goto LABEL_20;
        }

        v17 = *(i - 1) == v10 && *i == v12;
        if (v17 || (sub_1B22531F0() & 1) != 0)
        {
          break;
        }

        ++v13;
      }

      v18 = sub_1B2252220();
      v5 = v14;
      v20 = sub_1B21EB8A4(v18, v19, v14);
      v22 = v21;

      if (v22)
      {
        sub_1B212AC5C(&v32, &qword_1EB7A1270, qword_1B225EDF0);
        result = sub_1B212AC5C(&v33, &qword_1EB7A1270, qword_1B225EDF0);
      }

      else
      {
        sub_1B212AC5C(&v32, &qword_1EB7A1270, qword_1B225EDF0);
        result = sub_1B212AC5C(&v33, &qword_1EB7A1270, qword_1B225EDF0);
        if (v13 >= v20)
        {
          break;
        }
      }

      if (!v34)
      {
        __break(1u);
        return result;
      }

      v23 = *(v8 + 48);
      v25 = *(v8 + 16);
      v24 = *(v8 + 32);
      v26 = *v8;
      v27 = *(v8 - 40);
      *v8 = *v9;
      *(v8 + 16) = v27;
      *(v8 + 32) = *(v8 - 24);
      *(v8 + 48) = *(v8 - 8);
      *v9 = v26;
      *(v8 - 40) = v25;
      *(v8 - 24) = v24;
      *(v8 - 8) = v23;
      if (v7 != a1)
      {
        continue;
      }

      break;
    }

LABEL_20:
    v7 = v30 + 1;
    if (v30 + 1 != a2)
    {
      continue;
    }
  }
}

uint64_t sub_1B21EE2A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  v159 = a5;
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v148 = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_117;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v154 = (v5 + 40);
  v8 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v9 = v7;
  v10 = v7 + 1;
  if ((v7 + 1) >= v6)
  {
    goto LABEL_34;
  }

  v150 = v8;
  v11 = *a3;
  v12 = v7 + 1;
  sub_1B2122B00(*a3 + 56 * v10, &v158, &qword_1EB7A1270, qword_1B225EDF0);
  v144 = v11;
  sub_1B2122B00(v11 + 56 * v9, &v157, &qword_1EB7A1270, qword_1B225EDF0);
  v13 = sub_1B2252220();
  v15 = sub_1B21EB8A4(v13, v14, v5);
  v17 = v16;

  if (v17)
  {
    LODWORD(v148) = 0;
  }

  else
  {
    v18 = sub_1B2252220();
    v20 = sub_1B21EB8A4(v18, v19, v5);
    v22 = v21;

    v23 = (v22 & 1) != 0 || v15 < v20;
    LODWORD(v148) = v23;
  }

  v10 = v12;
  sub_1B212AC5C(&v157, &qword_1EB7A1270, qword_1B225EDF0);
  sub_1B212AC5C(&v158, &qword_1EB7A1270, qword_1B225EDF0);
  v142 = v9;
  v24 = 56 * v9;
  v25 = 56 * v9 + 56;
  v8 = v150;
  v145 = v6;
  do
  {
    v26 = v10;
    v27 = v25;
    if (++v10 >= v6)
    {
      break;
    }

    v28 = v10;
    sub_1B2122B00(v144 + 56 * v10, &v158, &qword_1EB7A1270, qword_1B225EDF0);
    sub_1B2122B00(v144 + 56 * v26, &v157, &qword_1EB7A1270, qword_1B225EDF0);
    v29 = sub_1B2252220();
    v31 = v30;
    v32 = 0;
    v33 = *(v159 + 16);
    for (i = v154; ; i += 2)
    {
      if (v33 == v32)
      {

        v41 = 0;
        goto LABEL_24;
      }

      v35 = *(i - 1) == v29 && *i == v31;
      if (v35 || (sub_1B22531F0() & 1) != 0)
      {
        break;
      }

      ++v32;
    }

    v36 = sub_1B2252220();
    v38 = sub_1B21EB8A4(v36, v37, v159);
    v40 = v39;

    v41 = (v40 & 1) != 0 || v32 < v38;
LABEL_24:
    sub_1B212AC5C(&v157, &qword_1EB7A1270, qword_1B225EDF0);
    sub_1B212AC5C(&v158, &qword_1EB7A1270, qword_1B225EDF0);
    v25 = v27 + 56;
    v35 = v148 == v41;
    v10 = v28;
    v8 = v150;
    v6 = v145;
  }

  while (v35);
  if (!v148)
  {
    goto LABEL_32;
  }

  v42 = v142;
  if (v10 < v142)
  {
    goto LABEL_149;
  }

  if (v142 < v10)
  {
    do
    {
      if (v42 != v26)
      {
        v43 = *a3;
        if (!*a3)
        {
          goto LABEL_156;
        }

        v44 = (v43 + v24);
        v45 = *(v43 + v24 + 48);
        v46 = (v43 + v27);
        v48 = v44[1];
        v47 = v44[2];
        v49 = *v44;
        v51 = v46[1];
        v50 = v46[2];
        v52 = *v46;
        *(v44 + 6) = *(v46 + 6);
        v44[1] = v51;
        v44[2] = v50;
        *v44 = v52;
        *v46 = v49;
        v46[1] = v48;
        v46[2] = v47;
        *(v46 + 6) = v45;
      }

      ++v42;
      v27 -= 56;
      v24 += 56;
    }

    while (v42 < v26--);
LABEL_32:
    v5 = v159;
    v9 = v142;
    goto LABEL_34;
  }

  v5 = v159;
  v9 = v142;
LABEL_34:
  v54 = a3[1];
  if (v10 >= v54)
  {
    goto LABEL_61;
  }

  if (__OFSUB__(v10, v9))
  {
    goto LABEL_148;
  }

  if (&v10[-v9] >= a4)
  {
    goto LABEL_61;
  }

  v55 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_150;
  }

  if (v55 >= v54)
  {
    v55 = a3[1];
  }

  if (v55 < v9)
  {
    goto LABEL_151;
  }

  if (v10 == v55)
  {
    goto LABEL_61;
  }

  v143 = v9;
  v151 = *a3;
  v146 = v55;
LABEL_43:
  v148 = v10;
  v56 = v10;
  while (1)
  {
    v57 = v151 + 56 * v56--;
    sub_1B2122B00(v57, &v158, &qword_1EB7A1270, qword_1B225EDF0);
    v58 = (v57 - 56);
    sub_1B2122B00(v57 - 56, &v157, &qword_1EB7A1270, qword_1B225EDF0);
    v59 = sub_1B2252220();
    v61 = v60;
    v62 = 0;
    v63 = *(v5 + 16);
    for (j = v154; ; j += 2)
    {
      if (v63 == v62)
      {

        sub_1B212AC5C(&v157, &qword_1EB7A1270, qword_1B225EDF0);
        sub_1B212AC5C(&v158, &qword_1EB7A1270, qword_1B225EDF0);
        v5 = v159;
        goto LABEL_59;
      }

      v65 = *(j - 1) == v59 && *j == v61;
      if (v65 || (sub_1B22531F0() & 1) != 0)
      {
        break;
      }

      ++v62;
    }

    v66 = sub_1B2252220();
    v5 = v159;
    v68 = sub_1B21EB8A4(v66, v67, v159);
    v70 = v69;

    if (v70)
    {
      sub_1B212AC5C(&v157, &qword_1EB7A1270, qword_1B225EDF0);
      sub_1B212AC5C(&v158, &qword_1EB7A1270, qword_1B225EDF0);
      goto LABEL_55;
    }

    sub_1B212AC5C(&v157, &qword_1EB7A1270, qword_1B225EDF0);
    sub_1B212AC5C(&v158, &qword_1EB7A1270, qword_1B225EDF0);
    if (v62 >= v68)
    {
LABEL_59:
      v10 = v148 + 1;
      if (v148 + 1 != v146)
      {
        goto LABEL_43;
      }

      v10 = v146;
      v9 = v143;
LABEL_61:
      if (v10 < v9)
      {
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
        v8 = sub_1B21A00CC();
LABEL_117:
        v127 = v8 + 16;
        v128 = *(v8 + 2);
        for (k = v8; ; v8 = k)
        {
          if (v128 < 2)
          {

            return swift_bridgeObjectRelease_n();
          }

          v129 = *a3;
          if (!*a3)
          {
            goto LABEL_155;
          }

          v130 = &v8[16 * v128];
          v131 = *v130;
          v132 = v127;
          v133 = &v127[16 * v128];
          v134 = *(v133 + 1);
          v135 = (v129 + 56 * *v130);
          v155 = (v129 + 56 * *v133);
          v136 = v129 + 56 * v134;
          v137 = v159;

          sub_1B21EECC8(v135, v155, v136, v148, v137);
          if (v156)
          {
            break;
          }

          if (v134 < v131)
          {
            goto LABEL_143;
          }

          if (v128 - 2 >= *v132)
          {
            goto LABEL_144;
          }

          v127 = v132;
          *v130 = v131;
          *(v130 + 1) = v134;
          v138 = *v132 - v128;
          if (*v132 < v128)
          {
            goto LABEL_145;
          }

          v128 = *v132 - 1;
          sub_1B21A00E4(v133 + 16, v138, v133);
          *v132 = v128;
        }

        swift_bridgeObjectRelease_n();
      }

      v148 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, *(v8 + 2) + 1, 1, v8);
        v8 = v125;
      }

      v77 = *(v8 + 2);
      v76 = *(v8 + 3);
      v78 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        sub_1B2161EC4(v76 > 1, v77 + 1, 1, v8);
        v8 = v126;
      }

      *(v8 + 2) = v78;
      v79 = v8 + 32;
      v80 = &v8[16 * v77 + 32];
      *v80 = v9;
      *(v80 + 1) = v148;
      v152 = *a1;
      if (!*a1)
      {
        goto LABEL_157;
      }

      if (v77)
      {
        v147 = v8 + 32;
        while (1)
        {
          v81 = v78 - 1;
          v82 = &v79[16 * v78 - 16];
          v83 = &v8[16 * v78];
          if (v78 >= 4)
          {
            break;
          }

          if (v78 == 3)
          {
            v84 = *(v8 + 4);
            v85 = *(v8 + 5);
            v94 = __OFSUB__(v85, v84);
            v86 = v85 - v84;
            v87 = v94;
LABEL_82:
            if (v87)
            {
              goto LABEL_134;
            }

            v99 = *v83;
            v98 = *(v83 + 1);
            v100 = __OFSUB__(v98, v99);
            v101 = v98 - v99;
            v102 = v100;
            if (v100)
            {
              goto LABEL_137;
            }

            v103 = *(v82 + 1);
            v104 = v103 - *v82;
            if (__OFSUB__(v103, *v82))
            {
              goto LABEL_140;
            }

            if (__OFADD__(v101, v104))
            {
              goto LABEL_142;
            }

            if (v101 + v104 >= v86)
            {
              if (v86 < v104)
              {
                v81 = v78 - 2;
              }

              goto LABEL_104;
            }

            goto LABEL_97;
          }

          if (v78 < 2)
          {
            goto LABEL_136;
          }

          v106 = *v83;
          v105 = *(v83 + 1);
          v94 = __OFSUB__(v105, v106);
          v101 = v105 - v106;
          v102 = v94;
LABEL_97:
          if (v102)
          {
            goto LABEL_139;
          }

          v108 = *v82;
          v107 = *(v82 + 1);
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_141;
          }

          if (v109 < v101)
          {
            goto LABEL_111;
          }

LABEL_104:
          if (v81 - 1 >= v78)
          {
            __break(1u);
LABEL_129:
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
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
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
            goto LABEL_147;
          }

          v113 = *a3;
          if (!*a3)
          {
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_154;
          }

          v114 = v8;
          v115 = &v79[16 * v81 - 16];
          v116 = *v115;
          v117 = v81;
          v118 = &v79[16 * v81];
          v119 = *(v118 + 1);
          v120 = (v113 + 56 * *v115);
          v121 = (v113 + 56 * *v118);
          v122 = v113 + 56 * v119;
          v123 = v159;

          sub_1B21EECC8(v120, v121, v122, v152, v123);
          if (v156)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v119 < v116)
          {
            goto LABEL_129;
          }

          v8 = v114;
          v124 = *(v114 + 2);
          if (v117 > v124)
          {
            goto LABEL_130;
          }

          *v115 = v116;
          *(v115 + 1) = v119;
          if (v117 >= v124)
          {
            goto LABEL_131;
          }

          v78 = v124 - 1;
          sub_1B21A00E4(v118 + 16, v124 - 1 - v117, v118);
          *(v114 + 2) = v124 - 1;
          v79 = v147;
          if (v124 <= 2)
          {
            goto LABEL_111;
          }
        }

        v88 = &v79[16 * v78];
        v89 = *(v88 - 8);
        v90 = *(v88 - 7);
        v94 = __OFSUB__(v90, v89);
        v91 = v90 - v89;
        if (v94)
        {
          goto LABEL_132;
        }

        v93 = *(v88 - 6);
        v92 = *(v88 - 5);
        v94 = __OFSUB__(v92, v93);
        v86 = v92 - v93;
        v87 = v94;
        if (v94)
        {
          goto LABEL_133;
        }

        v95 = *(v83 + 1);
        v96 = v95 - *v83;
        if (__OFSUB__(v95, *v83))
        {
          goto LABEL_135;
        }

        v94 = __OFADD__(v86, v96);
        v97 = v86 + v96;
        if (v94)
        {
          goto LABEL_138;
        }

        if (v97 >= v91)
        {
          v111 = *v82;
          v110 = *(v82 + 1);
          v94 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v94)
          {
            goto LABEL_146;
          }

          if (v86 < v112)
          {
            v81 = v78 - 2;
          }

          goto LABEL_104;
        }

        goto LABEL_82;
      }

LABEL_111:
      v7 = v148;
      v6 = a3[1];
      v5 = v159;
      if (v148 >= v6)
      {
        goto LABEL_115;
      }

      goto LABEL_3;
    }

LABEL_55:
    if (!v151)
    {
      break;
    }

    v71 = *(v57 + 48);
    v73 = *(v57 + 16);
    v72 = *(v57 + 32);
    v74 = *v57;
    v75 = *(v57 - 40);
    *v57 = *v58;
    *(v57 + 16) = v75;
    *(v57 + 32) = *(v57 - 24);
    *(v57 + 48) = *(v57 - 8);
    *v58 = v74;
    *(v57 - 40) = v73;
    *(v57 - 24) = v72;
    *(v57 - 8) = v71;
    if (v56 == v143)
    {
      goto LABEL_59;
    }
  }

LABEL_154:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_155:

  __break(1u);
LABEL_156:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1B21EECC8(char *a1, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 56;
  v10 = (a3 - a2) / 56;
  if (v9 < v10)
  {
    sub_1B22455BC(a1, (a2 - a1) / 56, a4);
    v11 = &v5[56 * v9];
    v12 = qword_1B225EDF0;
    v58 = v6;
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_37;
      }

      v64 = v7;
      sub_1B2122B00(v7, &v63, &qword_1EB7A1270, v12);
      sub_1B2122B00(v5, &v62, &qword_1EB7A1270, v12);
      v14 = sub_1B2252220();
      v16 = sub_1B21EB8A4(v14, v15, a5);
      v18 = v17;

      if (v18)
      {
        break;
      }

      v24 = v12;
      v25 = sub_1B2252220();
      v27 = sub_1B21EB8A4(v25, v26, a5);
      v29 = v28;

      if (v29)
      {
        v12 = v24;
        sub_1B212AC5C(&v62, &qword_1EB7A1270, v24);
        sub_1B212AC5C(&v63, &qword_1EB7A1270, v24);
        v6 = v58;
      }

      else
      {
        v12 = v24;
        sub_1B212AC5C(&v62, &qword_1EB7A1270, v24);
        sub_1B212AC5C(&v63, &qword_1EB7A1270, v24);
        v34 = v16 < v27;
        v6 = v58;
        if (!v34)
        {
          goto LABEL_9;
        }
      }

      v19 = v64;
      v7 = v64 + 56;
      if (v8 != v64)
      {
        goto LABEL_10;
      }

LABEL_11:
      v8 += 56;
    }

    sub_1B212AC5C(&v62, &qword_1EB7A1270, v12);
    sub_1B212AC5C(&v63, &qword_1EB7A1270, v12);
    v6 = v58;
LABEL_9:
    v19 = v5;
    v20 = v8 == v5;
    v5 += 56;
    v7 = v64;
    if (v20)
    {
      goto LABEL_11;
    }

LABEL_10:
    v21 = *v19;
    v22 = *(v19 + 16);
    v23 = *(v19 + 32);
    *(v8 + 6) = *(v19 + 48);
    *(v8 + 1) = v22;
    *(v8 + 2) = v23;
    *v8 = v21;
    goto LABEL_11;
  }

  v30 = a5;
  sub_1B22455BC(a2, (a3 - a2) / 56, a4);
  v31 = &v5[56 * v10];
  v32 = &qword_1EB7A1270;
  v59 = v8;
  v60 = v5;
LABEL_19:
  v64 = v7 - 56;
  v6 -= 56;
  for (i = (v31 - 56); ; i -= 56)
  {
    v11 = (i + 56);
    v34 = i + 56 > v5 && v7 > v8;
    if (!v34)
    {
      break;
    }

    v35 = v7;
    sub_1B2122B00(i, &v63, v32, qword_1B225EDF0);
    v36 = v32;
    sub_1B2122B00(v64, &v62, v32, qword_1B225EDF0);
    v37 = sub_1B2252220();
    v39 = sub_1B21EB8A4(v37, v38, v30);
    v41 = v40;

    if (v41)
    {
      v42 = 0;
    }

    else
    {
      v43 = sub_1B2252220();
      v45 = sub_1B21EB8A4(v43, v44, v30);
      v47 = v46;

      v20 = (v47 & 1) == 0;
      v30 = a5;
      v42 = !v20 || v39 < v45;
    }

    v32 = v36;
    sub_1B212AC5C(&v62, v36, qword_1B225EDF0);
    sub_1B212AC5C(&v63, v36, qword_1B225EDF0);
    v7 = v35;
    if (v42)
    {
      v31 = (i + 56);
      v20 = v6 + 56 == v35;
      v51 = v64;
      v7 = v64;
      v8 = v59;
      v5 = v60;
      if (!v20)
      {
        v52 = *v64;
        v53 = *(v64 + 1);
        v54 = *(v64 + 2);
        *(v6 + 48) = *(v64 + 6);
        *(v6 + 16) = v53;
        *(v6 + 32) = v54;
        *v6 = v52;
        v7 = v51;
      }

      goto LABEL_19;
    }

    v8 = v59;
    v5 = v60;
    if (v11 != (v6 + 56))
    {
      v48 = *i;
      v49 = *(i + 16);
      v50 = *(i + 32);
      *(v6 + 48) = *(i + 48);
      *(v6 + 16) = v49;
      *(v6 + 32) = v50;
      *v6 = v48;
    }

    v6 -= 56;
  }

LABEL_37:
  v55 = (v11 - v5) / 56;
  if (v7 != v5 || v7 >= &v5[56 * v55])
  {
    memmove(v7, v5, 56 * v55);
  }

  return 1;
}

uint64_t sub_1B21EF0F0()
{
  if (*(*(v0 + 24) + 16) && (sub_1B211E590(), (v1 & 1) != 0))
  {
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B21EF134()
{
  if (*(*(v0 + 32) + 16) && (sub_1B211E590(), (v1 & 1) != 0))
  {
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B21EF180(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1B21EF1DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_1B2122A98(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1B21EF354(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_1B21117B4(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}