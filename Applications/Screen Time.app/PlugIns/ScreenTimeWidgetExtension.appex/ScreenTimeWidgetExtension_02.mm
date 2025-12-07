uint64_t sub_10002B7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a4;
  v84 = a2;
  v88 = a1;
  v81 = type metadata accessor for HourlyUsage(0);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v97 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10004A2F8();
  __chkstk_darwin(v83);
  v82 = &v68 - v13;
  v85 = a7;
  v86 = a8;
  v14 = sub_10004A2E8();
  v95 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  v17 = sub_100049058();
  v18 = __chkstk_darwin(v17 - 8);
  v99 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v98 = &v68 - v20;
  v79 = sub_100048E98();
  v94 = *(v79 - 8);
  __chkstk_darwin(v79);
  v92 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v91 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v87 = &v68 - v26;
  v27 = sub_1000027D4(&qword_10005E158, &unk_10004B9F0);
  v28 = v27 - 8;
  __chkstk_darwin(v27);
  v30 = &v68 - v29;
  v31 = sub_100049498();
  (*(*(v31 - 8) + 16))(v30, a5, v31);
  v32 = *(v28 + 44);
  v33 = sub_10002C538(&qword_10005DE30, &type metadata accessor for DateBins, &protocol conformance descriptor for DateBins);
  sub_10004A018();
  v90 = v31;
  v34 = v33;
  sub_10004A038();
  v93 = v30;
  if (*&v30[v32] == v100)
  {
    v35 = _swiftEmptyArrayStorage;
    v36 = v93;
LABEL_3:
    sub_100005664(v36, &qword_10005E158, &unk_10004B9F0);
    return v35;
  }

  else
  {
    v76 = v14;
    v96 = (v23 + 16);
    v77 = (v23 + 32);
    v73 = (v95 + 1);
    v72 = (v94 + 8);
    v71 = (v23 + 8);
    v69 = 8 * a3;
    v35 = _swiftEmptyArrayStorage;
    v39 = v91;
    v38 = v92;
    v78 = a3;
    v75 = v32;
    v74 = v34;
    while (1)
    {
      v95 = v35;
      v40 = sub_10004A058();
      v41 = v87;
      v94 = *v96;
      v94(v87);
      v40(&v100, 0);
      sub_10004A048();
      (*v77)(v39, v41, v22);
      sub_100049318();
      sub_100049328();
      sub_100048E78();
      v42 = v88;
      if (*(v88 + 16) && (v43 = sub_1000243B8(v38), (v44 & 1) != 0))
      {
        v45 = *(*(v42 + 56) + 8 * v43);
      }

      else
      {
        result = sub_100029E5C(_swiftEmptyArrayStorage);
        v45 = result;
      }

      v46 = v89;
      v47 = 0;
      v48 = v78;
      if (*(v89 + 16))
      {
        result = sub_1000243B8(v38);
        v49 = v76;
        if (v50)
        {
          v47 = *(*(v46 + 56) + 8 * result);
        }
      }

      else
      {
        v49 = v76;
      }

      if (v48 < 0)
      {
        break;
      }

      if (v48)
      {
        v51 = sub_100049F68();
        *(v51 + 2) = v48;
        bzero(v51 + 32, v69);
      }

      else
      {
        v51 = _swiftEmptyArrayStorage;
      }

      sub_100049F08();
      sub_10004A2C8();
      sub_10004A2D8();
      if (v101)
      {
        v52 = v100;
        v53 = v102;
        v54 = v103;
        v70 = v51 + 32;
        v55 = 1.0;
        while (1)
        {
          if (*(v45 + 16) && (, v56 = sub_100024340(v53, v54), v58 = v57, , (v58 & 1) != 0))
          {
            v59 = *(*(v45 + 56) + 8 * v56);

            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_39;
            }

            if (v52 >= *(v51 + 2))
            {
              goto LABEL_40;
            }

            *&v70[v52] = v59;
            v55 = v55 - v59;
          }

          else
          {
          }

          sub_10004A2D8();
          v52 = v100;
          v53 = v102;
          v54 = v103;
          if (!v101)
          {
            goto LABEL_28;
          }
        }
      }

      v55 = 1.0;
LABEL_28:
      (*v73)(v16, v49);

      if (v55 <= 0.0)
      {
        v55 = 0.0;
      }

      v61 = *(v51 + 2);
      v60 = *(v51 + 3);
      if (v61 >= v60 >> 1)
      {
        v51 = sub_1000232F8((v60 > 1), v61 + 1, 1, v51);
      }

      v35 = v95;
      *(v51 + 2) = v61 + 1;
      *&v51[8 * v61 + 32] = v55;
      v62 = v91;
      v38 = v92;
      sub_100049318();
      sub_100049328();
      v63 = v97;
      v39 = v62;
      sub_100048E78();
      v64 = v81;
      (v94)(v63 + *(v81 + 24), v39, v22);
      *(v63 + *(v64 + 20)) = v47;
      *(v63 + *(v64 + 28)) = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_100023424(0, v35[2] + 1, 1, v35, &qword_10005E160, &qword_10004BA00, type metadata accessor for HourlyUsage);
      }

      v36 = v93;
      v65 = v75;
      v67 = v35[2];
      v66 = v35[3];
      if (v67 >= v66 >> 1)
      {
        v35 = sub_100023424((v66 > 1), v67 + 1, 1, v35, &qword_10005E160, &qword_10004BA00, type metadata accessor for HourlyUsage);
      }

      (*v72)(v38, v79);
      (*v71)(v39, v22);
      v35[2] = v67 + 1;
      sub_10002C4A0(v97, v35 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v67, type metadata accessor for HourlyUsage);
      sub_10004A038();
      if (*(v36 + v65) == v100)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C258(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002C268()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C2A0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = 2;
  return swift_bridgeObjectRetain_n();
}

double sub_10002C2E0@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t sub_10002C334()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002C37C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  *a2 = v2[2];
  a2[1] = v3;
  a2[2] = 0;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = a1;
}

void sub_10002C3E8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

unint64_t sub_10002C454()
{
  result = qword_10005E218;
  if (!qword_10005E218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005E218);
  }

  return result;
}

uint64_t sub_10002C4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002C538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002C580()
{

  return _swift_deallocObject(v0, 81, 7);
}

__n128 sub_10002C608(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002C62C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_10002C688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_10002C700(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10002C714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10002C75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsageProviderError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UsageProviderError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10002C8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005E240;
  if (!qword_10005E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E240);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MostUsedItemsPlaceholderMedium(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MostUsedItemsPlaceholderMedium(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MostUsedItemsPlaceholderMedium(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10002CA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002CAE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10002CBCC(uint64_t a1)
{
  sub_100033F08(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    sub_10002CC74();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002CC74()
{
  if (!qword_10005D768)
  {
    v0 = sub_100049F78();
    if (!v1)
    {
      atomic_store(v0, &qword_10005D768);
    }
  }
}

uint64_t sub_10002CCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10002CDC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_10002CEA8(uint64_t a1)
{
  sub_100033F08(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

char *sub_10002CF60(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_100049B48();
      v5 = sub_100049F68();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = sub_100049B48();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

double sub_10002D0BC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000497F8();
  __chkstk_darwin(v3);
  v4 = sub_100049B38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100049B48();
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = xmmword_10004BC20;
  (*(v5 + 104))(v7, enum case for GridItem.Size.flexible(_:), v4);
  sub_100049B58();
  v11 = type metadata accessor for MostUsedItemsLarge(0);
  v12 = *(v1 + *(v11 + 24));
  sub_10002CF60(v10, v12);
  v13 = *(v1 + *(v11 + 20));
  v14 = sub_10002D3F0(v12, v13);
  sub_100049798();
  v20 = v14;
  v21 = 0;
  sub_100032724(&qword_10005E420, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_10004A458();
  sub_1000027D4(&qword_10005E428, &qword_10004BF78);
  sub_100034114(&qword_10005E430, &qword_10005E428, &qword_10004BF78, sub_100032988);
  sub_100049B98();

  v15 = sub_100049B88();
  v16 = (a1 + *(sub_1000027D4(&qword_10005E448, &qword_10004BF88) + 36));
  *v16 = v15;
  v16[1] = v13;

  LOBYTE(v15) = sub_100049898();
  v17 = a1 + *(sub_1000027D4(&qword_10005E450, &qword_10004BF90) + 36);
  *v17 = v15;
  result = 0.0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 1;
  return result;
}

char *sub_10002D3F0(char *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = ceil(v2 / result);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!v2)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v2 < v4)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v35 = *(a2 + 16);
    v6 = sub_100023600(0, 1, 1, _swiftEmptyArrayStorage);
    v7 = 0;
    v33 = a2 + 32;
    v8 = (a2 + 80);
    v36 = v4;
    while (1)
    {
      v12 = *(v8 - 6);
      v11 = *(v8 - 5);
      v13 = *(v8 - 4);
      v14 = *(v8 - 3);
      v15 = *(v8 - 2);
      v16 = *v8;
      v18 = *(v6 + 2);
      v17 = *(v6 + 3);
      v37 = *(v8 - 1);
      v39 = v18 + 1;

      v19 = v13;
      v20 = v14;

      if (v18 >= v17 >> 1)
      {
        result = sub_100023600((v17 > 1), v39, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v39;
      v21 = &v6[56 * v18];
      *(v21 + 4) = v12;
      *(v21 + 5) = v11;
      *(v21 + 6) = v19;
      *(v21 + 7) = v20;
      *(v21 + 8) = v15;
      *(v21 + 9) = v37;
      *(v21 + 10) = v16;
      v10 = v36;
      v22 = v36 + v7;
      if (__OFADD__(v36, v7))
      {
        break;
      }

      if (v22 < v35)
      {
        if (v22 < 0)
        {
          goto LABEL_21;
        }

        v23 = (v33 + 56 * v22);
        v24 = v23[1];
        v38 = *v23;
        v25 = v23[2];
        v26 = v23[3];
        v27 = v23[4];
        v28 = v23[6];
        v34 = v23[5];
        v29 = *(v6 + 3);
        v30 = v18 + 2;

        v31 = v25;
        v32 = v26;

        if (v30 > (v29 >> 1))
        {
          v6 = sub_100023600((v29 > 1), v30, 1, v6);
        }

        *(v6 + 2) = v30;
        v9 = &v6[56 * v39];
        *(v9 + 4) = v38;
        *(v9 + 5) = v24;
        *(v9 + 6) = v31;
        *(v9 + 7) = v32;
        *(v9 + 8) = v27;
        *(v9 + 9) = v34;
        *(v9 + 10) = v28;
        v10 = v36;
      }

      ++v7;
      v8 += 7;
      if (v10 == v7)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10002D654(char *a1)
{
  sub_10000502C(a1);
  swift_getKeyPath();
  sub_1000027D4(&qword_10005E380, &qword_10004BE80);
  sub_1000027D4(&qword_10005E440, &qword_10004BF80);
  sub_100005708(&qword_10005E390, &qword_10005E380, &qword_10004BE80, &protocol conformance descriptor for [A]);
  sub_100032988();
  return sub_100049B28();
}

__n128 sub_10002D74C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v60 = sub_100049818();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MostUsedItemCell(0);
  __chkstk_darwin(v7);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_1000027D4(&qword_10005E3A0, &qword_10004BE90);
  __chkstk_darwin(v56);
  v11 = &v54 - v10;
  v57 = sub_1000027D4(&qword_10005E3D0, &qword_10004BEB0);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v13 = &v54 - v12;
  v55 = sub_1000027D4(&qword_10005E388, &qword_10004BE88);
  v14 = __chkstk_darwin(v55);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v54 - v18;
  __chkstk_darwin(v17);
  v61 = &v54 - v20;
  *v9 = swift_getKeyPath();
  sub_1000027D4(&qword_10005E3D8, &qword_10004BEE8);
  swift_storeEnumTagMultiPayload();
  *(v9 + v7[5]) = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  v21 = v9 + v7[6];
  v22 = *(a2 + 16);
  *v21 = *a2;
  *(v21 + 1) = v22;
  *(v21 + 2) = *(a2 + 32);
  *(v21 + 6) = *(a2 + 48);
  *(v9 + v7[7]) = a1;
  strcpy(v64, "MostUsedItem");
  HIBYTE(v64[6]) = 0;
  v64[7] = -5120;
  v63 = a1;
  sub_100032778(a2, v65);
  v66._countAndFlagsBits = sub_10004A378();
  sub_100049E68(v66);

  sub_100032724(&qword_10005E3B0, type metadata accessor for MostUsedItemCell, &unk_10004C198);
  sub_100049A48();

  sub_100032920(v9, type metadata accessor for MostUsedItemCell);
  sub_100049808();
  v23 = sub_100032618();
  v24 = v56;
  sub_100049A38();
  (*(v59 + 8))(v6, v60);
  sub_100005664(v11, &qword_10005E3A0, &qword_10004BE90);
  v25 = *(a2 + 32);
  *&v65[0] = v24;
  *(&v65[0] + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v57;
  sub_100049A58();
  v27 = (*(v58 + 8))(v13, v26);
  v28 = *(a2 + 48);
  *&v65[0] = *(a2 + 40);
  *(&v65[0] + 1) = v28;
  sub_100005540(v27, v29, v30);

  v31 = sub_100049938();
  v33 = v32;
  LOBYTE(v11) = v34;
  sub_100049558();
  sub_1000036D0(v31, v33, v11 & 1);

  sub_100005664(v16, &qword_10005E388, &qword_10004BE88);
  if (v25 < 0.0)
  {
    goto LABEL_9;
  }

  if (qword_10005D6E0 != -1)
  {
    swift_once();
  }

  v35 = qword_10005ED10;
  v36 = v25 < 60.0 ? 128 : 96;
  [qword_10005ED10 setAllowedUnits:v36];
  [v35 setUnitsStyle:3];
  v37 = [v35 stringFromTimeInterval:v25];
  if (v37)
  {
    v38 = v37;
    v39 = sub_100049E08();
    v41 = v40;
  }

  else
  {
LABEL_9:
    v39 = 0;
    v41 = 0xE000000000000000;
  }

  if (sub_100049E58())
  {
    *&v65[0] = v39;
    *(&v65[0] + 1) = v41;
    v42 = sub_100049938();
  }

  else
  {

    sub_100049748();
    v42 = sub_100049928();
  }

  v45 = v42;
  v46 = v43;
  v47 = v44;
  v48 = v61;
  sub_100049568();
  sub_1000036D0(v45, v46, v47 & 1);

  sub_100005664(v19, &qword_10005E388, &qword_10004BE88);
  sub_100049B78();
  sub_100049598();
  v49 = v62;
  sub_100004DF8(v48, v62, &qword_10005E388, &qword_10004BE88);
  v50 = v49 + *(sub_1000027D4(&qword_10005E440, &qword_10004BF80) + 36);
  v51 = v65[5];
  *(v50 + 64) = v65[4];
  *(v50 + 80) = v51;
  *(v50 + 96) = v65[6];
  v52 = v65[1];
  *v50 = v65[0];
  *(v50 + 16) = v52;
  result = v65[3];
  *(v50 + 32) = v65[2];
  *(v50 + 48) = result;
  return result;
}

double sub_10002DF18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  v5[2] = *(a1 + 40);
  v6 = *(a1 + 56);
  *&result = sub_10002D74C(v2, v5, a2).n128_u64[0];
  return result;
}

double sub_10002DF64@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_100049798();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  sub_1000027D4(&qword_10005E378, &qword_10004BE50);
  sub_10000502C(a1);
  swift_getKeyPath();
  sub_1000027D4(&qword_10005E380, &qword_10004BE80);
  sub_1000027D4(&qword_10005E388, &qword_10004BE88);
  sub_100005708(&qword_10005E390, &qword_10005E380, &qword_10004BE80, &protocol conformance descriptor for [A]);
  sub_100032520();
  sub_100049B28();
  v4 = sub_100049B88();
  v5 = (a2 + *(sub_1000027D4(&qword_10005E3B8, &qword_10004BE98) + 36));
  *v5 = v4;
  v5[1] = a1;

  LOBYTE(a1) = sub_1000498B8();
  sub_1000494E8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(sub_1000027D4(&qword_10005E3C0, &qword_10004BEA0) + 36);
  *v14 = a1;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  LOBYTE(a1) = sub_1000498C8();
  v15 = a2 + *(sub_1000027D4(&qword_10005E3C8, &qword_10004BEA8) + 36);
  *v15 = a1;
  result = 0.0;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  return result;
}

uint64_t sub_10002E15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_100049818();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MostUsedItemCell(0);
  __chkstk_darwin(v8);
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_1000027D4(&qword_10005E3A0, &qword_10004BE90);
  __chkstk_darwin(v54);
  v12 = &v52 - v11;
  v13 = sub_1000027D4(&qword_10005E3D0, &qword_10004BEB0);
  v14 = *(v13 - 8);
  v55 = v13;
  v56 = v14;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v17 = sub_1000027D4(&qword_10005E388, &qword_10004BE88);
  v18 = __chkstk_darwin(v17);
  v52 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v53 = &v52 - v20;
  *v10 = swift_getKeyPath();
  sub_1000027D4(&qword_10005E3D8, &qword_10004BEE8);
  swift_storeEnumTagMultiPayload();
  *(v10 + v8[5]) = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  v21 = v10 + v8[6];
  v22 = *(a2 + 16);
  *v21 = *a2;
  *(v21 + 1) = v22;
  *(v21 + 2) = *(a2 + 32);
  *(v21 + 6) = *(a2 + 48);
  *(v10 + v8[7]) = a1;
  strcpy(v63, "MostUsedItem");
  HIBYTE(v63[6]) = 0;
  v63[7] = -5120;
  v62 = a1;
  sub_100032778(a2, &v60);
  v64._countAndFlagsBits = sub_10004A378();
  sub_100049E68(v64);

  sub_100032724(&qword_10005E3B0, type metadata accessor for MostUsedItemCell, &unk_10004C198);
  sub_100049A48();

  sub_100032920(v10, type metadata accessor for MostUsedItemCell);
  sub_100049808();
  v23 = sub_100032618();
  v24 = v54;
  sub_100049A38();
  (*(v57 + 8))(v7, v58);
  sub_100005664(v12, &qword_10005E3A0, &qword_10004BE90);
  v25 = *(a2 + 32);
  v60 = v24;
  v61 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v52;
  v27 = v55;
  sub_100049A58();
  v28 = v16;
  v29 = v53;
  v30 = (*(v56 + 8))(v28, v27);
  v31 = *(a2 + 48);
  v60 = *(a2 + 40);
  v61 = v31;
  sub_100005540(v30, v32, v33);

  v34 = sub_100049938();
  v36 = v35;
  LOBYTE(a2) = v37;
  sub_100049558();
  sub_1000036D0(v34, v36, a2 & 1);

  sub_100005664(v26, &qword_10005E388, &qword_10004BE88);
  if (v25 < 0.0)
  {
    goto LABEL_9;
  }

  if (qword_10005D6E0 != -1)
  {
    swift_once();
  }

  v38 = qword_10005ED10;
  v39 = v25 < 60.0 ? 128 : 96;
  [qword_10005ED10 setAllowedUnits:v39];
  [v38 setUnitsStyle:3];
  v40 = [v38 stringFromTimeInterval:v25];
  if (v40)
  {
    v41 = v40;
    v42 = sub_100049E08();
    v44 = v43;
  }

  else
  {
LABEL_9:
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  if (sub_100049E58())
  {
    v60 = v42;
    v61 = v44;
    v45 = sub_100049938();
  }

  else
  {

    sub_100049748();
    v45 = sub_100049928();
  }

  v48 = v45;
  v49 = v46;
  v50 = v47;
  sub_100049568();
  sub_1000036D0(v48, v49, v50 & 1);

  return sub_100005664(v29, &qword_10005E388, &qword_10004BE88);
}

uint64_t sub_10002E81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  v5[2] = *(a1 + 40);
  v6 = *(a1 + 56);
  return sub_10002E15C(v2, v5, a2);
}

uint64_t sub_10002E88C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100049708();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MostUsedItemCell(0);
  sub_1000055FC(v1 + *(v10 + 20), v9, &qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100049C78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004A098();
    v13 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10002EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v41 = a2;
  v2 = sub_1000027D4(&qword_10005E650, &qword_10004C1F0);
  v3 = __chkstk_darwin(v2 - 8);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = sub_100049CB8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for AppIcon(0);
  v15 = (v14 - 8);
  v16 = __chkstk_darwin(v14);
  v39 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = (&v38 - v19);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  sub_10002FBEC(&qword_10005E3D8, &qword_10004BEE8, &type metadata accessor for WidgetFamily, v13);
  (*(v8 + 104))(v11, enum case for WidgetFamily.systemMedium(_:), v7);
  sub_100032724(&qword_10005DE08, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100049F38();
  sub_100049F38();
  v23 = *(v8 + 8);
  v23(v11, v7);
  v23(v13, v7);
  if (v43 == v42)
  {
    v24 = 20.0;
  }

  else
  {
    v24 = 29.0;
  }

  v25 = type metadata accessor for MostUsedItemCell(0);
  v26 = v38;
  v27 = v38 + *(v25 + 24);
  v29 = *(v27 + 16);
  v28 = *(v27 + 24);
  *v20 = swift_getKeyPath();
  sub_1000027D4(&qword_10005E658, &qword_10004C640);
  swift_storeEnumTagMultiPayload();
  *(v20 + v15[7]) = v24;
  *(v20 + v15[8]) = v28;
  *(v20 + v15[9]) = v29;
  sub_100033A48(v20, v22, type metadata accessor for AppIcon);
  v30 = v28;
  v31 = v29;
  *v6 = sub_100049798();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v32 = sub_1000027D4(&qword_10005E660, &qword_10004C230);
  sub_10002EF18(v26, &v6[*(v32 + 44)]);
  v33 = v39;
  sub_100032A14(v22, v39, type metadata accessor for AppIcon);
  v34 = v40;
  sub_1000055FC(v6, v40, &qword_10005E650, &qword_10004C1F0);
  v35 = v41;
  sub_100032A14(v33, v41, type metadata accessor for AppIcon);
  v36 = sub_1000027D4(&qword_10005E668, &qword_10004C238);
  sub_1000055FC(v34, v35 + *(v36 + 48), &qword_10005E650, &qword_10004C1F0);
  sub_100005664(v6, &qword_10005E650, &qword_10004C1F0);
  sub_100032920(v22, type metadata accessor for AppIcon);
  sub_100005664(v34, &qword_10005E650, &qword_10004C1F0);
  return sub_100032920(v33, type metadata accessor for AppIcon);
}

uint64_t sub_10002EF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_100049C78();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000027D4(&qword_10005E670, &qword_10004C240);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = __chkstk_darwin(v6);
  v69 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v63 - v9;
  v10 = sub_100049CB8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = sub_1000027D4(&qword_10005E678, &qword_10004C248);
  v18 = __chkstk_darwin(v17 - 8);
  v68 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  v22 = a1;
  sub_10002FBEC(&qword_10005E3D8, &qword_10004BEE8, &type metadata accessor for WidgetFamily, v16);
  (*(v11 + 104))(v14, enum case for WidgetFamily.systemLarge(_:), v10);
  sub_100032724(&qword_10005DE08, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100049F38();
  sub_100049F38();
  v23 = *(v11 + 8);
  v23(v14, v10);
  v23(v16, v10);
  v66 = v5;
  if (v82 == v77)
  {
    v24 = type metadata accessor for MostUsedItemCell(0);
    v25 = a1 + *(v24 + 24);
    v26 = *(v25 + 48);
    *&v82 = *(v25 + 40);
    *(&v82 + 1) = v26;
    sub_100005540(v24, v27, v28);

    v29 = sub_100049938();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v63 = v22;
    sub_10002E88C(v5);
    sub_10002F820(1, v29, v31, v35, v74);
    sub_1000036D0(v29, v31, v33 & 1);

    (*(v71 + 8))(v5, v72);
    v80 = v74[3];
    v81 = v75;
    v78 = v74[1];
    v79 = v74[2];
    v77 = v74[0];
    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    sub_10004A1D8(27);

    *&v82 = 0xD000000000000019;
    *(&v82 + 1) = 0x8000000100053BD0;
    v76 = *(v22 + *(v24 + 28));
    v89._countAndFlagsBits = sub_10004A378();
    sub_100049E68(v89);

    sub_1000027D4(&qword_10005E680, &qword_10004C250);
    sub_100033AB0();
    v36 = v73;
    sub_100049A48();

    v84 = v79;
    v85 = v80;
    v86 = v81;
    v82 = v77;
    v83 = v78;
    sub_100005664(&v82, &qword_10005E680, &qword_10004C250);
    sub_100004DF8(v36, v21, &qword_10005E670, &qword_10004C240);
    (*(v64 + 56))(v21, 0, 1, v65);
    v22 = v63;
  }

  else
  {
    (*(v64 + 56))(v21, 1, 1, v65);
  }

  v37 = type metadata accessor for MostUsedItemCell(0);
  v65 = v37;
  v40 = *(v22 + v37[6] + 32);
  v67 = v21;
  if (v40 >= 0.0)
  {
    if (qword_10005D6E0 != -1)
    {
      swift_once();
    }

    v44 = qword_10005ED10;
    if (v40 < 60.0)
    {
      v45 = 128;
    }

    else
    {
      v45 = 96;
    }

    [qword_10005ED10 setAllowedUnits:v45];
    [v44 setUnitsStyle:1];
    v37 = [v44 stringFromTimeInterval:v40];
    v43 = v22;
    if (v37)
    {
      v46 = v37;
      v42 = sub_100049E08();
      v41 = v47;
    }

    else
    {
      v42 = 0;
      v41 = 0xE000000000000000;
    }
  }

  else
  {
    v41 = 0xE200000000000000;
    v42 = 11565;
    v43 = v22;
  }

  *&v82 = v42;
  *(&v82 + 1) = v41;
  sub_100005540(v37, v38, v39);
  v48 = sub_100049938();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v66;
  sub_10002E88C(v66);
  sub_10002F820(0, v48, v50, v54, v87);
  sub_1000036D0(v48, v50, v52 & 1);

  (*(v71 + 8))(v55, v72);
  v80 = v87[3];
  v81 = v88;
  v78 = v87[1];
  v79 = v87[2];
  v77 = v87[0];
  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  sub_10004A1D8(24);

  *&v82 = 0xD000000000000016;
  *(&v82 + 1) = 0x8000000100053BB0;
  v76 = *(v43 + v65[7]);
  v90._countAndFlagsBits = sub_10004A378();
  sub_100049E68(v90);

  sub_1000027D4(&qword_10005E680, &qword_10004C250);
  sub_100033AB0();
  v56 = v69;
  sub_100049A48();

  v84 = v79;
  v85 = v80;
  v86 = v81;
  v82 = v77;
  v83 = v78;
  sub_100005664(&v82, &qword_10005E680, &qword_10004C250);
  v58 = v67;
  v57 = v68;
  sub_1000055FC(v67, v68, &qword_10005E678, &qword_10004C248);
  v59 = v73;
  sub_1000055FC(v56, v73, &qword_10005E670, &qword_10004C240);
  v60 = v70;
  sub_1000055FC(v57, v70, &qword_10005E678, &qword_10004C248);
  v61 = sub_1000027D4(&qword_10005E6B0, &qword_10004C270);
  sub_1000055FC(v59, v60 + *(v61 + 48), &qword_10005E670, &qword_10004C240);
  sub_100005664(v56, &qword_10005E670, &qword_10004C240);
  sub_100005664(v58, &qword_10005E678, &qword_10004C248);
  sub_100005664(v59, &qword_10005E670, &qword_10004C240);
  return sub_100005664(v57, &qword_10005E678, &qword_10004C248);
}

uint64_t sub_10002F820@<X0>(char a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a4;
  v51 = a6;
  v49 = a3;
  v9 = sub_100049A68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100049C78();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049C68();
  v17 = sub_100049C58();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    (*(v10 + 104))(v12, enum case for Color.RGBColorSpace.sRGB(_:), v9);
    sub_100049A98();
    v18 = sub_100049A88();

    if (a1)
    {
      sub_1000498F8();
    }

    else
    {
      sub_1000498E8();
    }

    v20 = sub_100049918();
    v22 = v21;
    v24 = v23;

    v48 = v18;
    if (a1)
    {
      v25 = [objc_opt_self() labelColor];
      sub_100049AA8();
    }

    else
    {
    }

    v42 = sub_100049908();
    v34 = v43;
    v36 = v44;
    v38 = v45;

    v39 = v24 & 1;
    v32 = v42;
    v40 = v20;
    v41 = v22;
  }

  else
  {
    if (a1)
    {
      v19 = &selRef_labelColor;
      sub_1000498F8();
    }

    else
    {
      v19 = &selRef_tertiaryLabelColor;
      sub_1000498E8();
    }

    v26 = sub_100049918();
    v28 = v27;
    v30 = v29;

    v31 = [objc_opt_self() *v19];
    sub_100049AA8();
    v32 = sub_100049908();
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = v30 & 1;
    v40 = v26;
    v41 = v28;
  }

  sub_1000036D0(v40, v41, v39);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a7 = v32;
  *(a7 + 8) = v34;
  *(a7 + 16) = v36 & 1;
  *(a7 + 24) = v38;
  *(a7 + 32) = KeyPath;
  *(a7 + 40) = 1;
  *(a7 + 48) = result;
  *(a7 + 56) = 1;
  *(a7 + 64) = 0;
  return result;
}

uint64_t sub_10002FBEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_100049708();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000027D4(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_1000055FC(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_10004A098();
    v19 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10002FDEC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_100049738();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = sub_1000027D4(&qword_10005E648, &qword_10004C1E8);
  return sub_10002EA9C(v2, a2 + *(v4 + 44));
}

uint64_t sub_10002FE40@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_1000027D4(&qword_10005E828, &qword_10004C438);
  __chkstk_darwin(v2 - 8);
  v41 = &v33 - v3;
  v4 = sub_100049AC8();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100049508();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_1000027D4(&qword_10005E830, &qword_10004C440);
  v39 = *(v14 - 8);
  v40 = v14;
  __chkstk_darwin(v14);
  v34 = &v33 - v15;
  v38 = sub_1000027D4(&qword_10005E838, &qword_10004C448) - 8;
  __chkstk_darwin(v38);
  v17 = &v33 - v16;
  v37 = sub_1000027D4(&qword_10005E840, &unk_10004C450);
  __chkstk_darwin(v37);
  v19 = &v33 - v18;
  sub_10002FBEC(&qword_10005E658, &qword_10004C640, &type metadata accessor for ColorScheme, v13);
  (*(v8 + 104))(v11, enum case for ColorScheme.light(_:), v7);
  v20 = sub_1000494F8();
  v21 = *(v8 + 8);
  v21(v11, v7);
  v21(v13, v7);
  v22 = type metadata accessor for AppIcon(0);
  v23 = 28;
  if (v20)
  {
    v23 = 24;
  }

  v24 = *(v1 + *(v22 + v23));
  sub_100049AB8();
  v26 = v35;
  v25 = v36;
  (*(v35 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v36);
  sub_100049AE8();

  (*(v26 + 8))(v6, v25);
  v27 = v41;
  sub_100049C88();
  v28 = sub_100049CA8();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = v34;
  sub_100049AD8();

  sub_100005664(v27, &qword_10005E828, &qword_10004C438);
  sub_100049B68();
  sub_100049528();
  (*(v39 + 32))(v17, v29, v40);
  v30 = &v17[*(v38 + 44)];
  v31 = v44;
  *v30 = v43;
  *(v30 + 1) = v31;
  *(v30 + 2) = v45;
  sub_100004DF8(v17, v19, &qword_10005E838, &qword_10004C448);
  v19[*(v37 + 36)] = 1;
  sub_1000341AC();
  sub_100049998();
  return sub_100005664(v19, &qword_10005E840, &unk_10004C450);
}

void *sub_100030380(void x0_0, void x1_0, char a1)
{
  v3 = type metadata accessor for MostUsedItemNoContentView(0);
  __chkstk_darwin(v3);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000027D4(&qword_10005E418, &qword_10004BF70);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  if (a1)
  {
    *v8 = 1;
    v9 = swift_storeEnumTagMultiPayload();
    sub_1000328AC(v9, v10, v11);
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView, &unk_10004C0F8);
    return sub_1000497E8();
  }

  else
  {
    *v5 = swift_getKeyPath();
    sub_1000027D4(&qword_10005DA60, &qword_10004B650);
    swift_storeEnumTagMultiPayload();
    *(v5 + *(v3 + 20)) = 1;
    sub_100032A14(v5, v8, type metadata accessor for MostUsedItemNoContentView);
    v13 = swift_storeEnumTagMultiPayload();
    sub_1000328AC(v13, v14, v15);
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView, &unk_10004C0F8);
    sub_1000497E8();
    return sub_100032920(v5, type metadata accessor for MostUsedItemNoContentView);
  }
}

uint64_t sub_1000305BC@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  result = sub_100049798();
  *a2 = result;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1000027D4(&qword_10005E3E0, &unk_10004BF28);
    swift_getKeyPath();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    sub_1000027D4(&qword_10005D810, &qword_10004BF50);
    sub_1000027D4(&qword_10005E3E8, &qword_10004BF58);
    sub_1000035A8();
    sub_1000327F0();
    sub_100049B28();
    v8 = sub_1000498B8();
    sub_1000494E8();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = a2 + *(sub_1000027D4(&qword_10005E408, &qword_10004BF60) + 36);
    *v17 = v8;
    *(v17 + 8) = v10;
    *(v17 + 16) = v12;
    *(v17 + 24) = v14;
    *(v17 + 32) = v16;
    *(v17 + 40) = 0;
    v18 = sub_1000498C8();
    result = sub_1000027D4(&qword_10005E410, &qword_10004BF68);
    v19 = a2 + *(result + 36);
    *v19 = v18;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 1;
  }

  return result;
}

__n128 sub_10003077C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100049788();
  v5 = type metadata accessor for MostUsedItemsPlaceholderView(0);
  v6 = *(a1 + v5[5]);
  v7 = *(a1 + v5[6]);
  LOBYTE(a1) = *(a1 + v5[7]);
  sub_100049B78();
  sub_100049598();
  *&v9[23] = v11;
  *&v9[7] = v10;
  *&v9[55] = v13;
  *&v9[71] = v14;
  *&v9[87] = v15;
  *&v9[103] = v16;
  *&v9[39] = v12;
  *(a2 + 105) = *&v9[64];
  *(a2 + 121) = *&v9[80];
  *(a2 + 137) = *&v9[96];
  *(a2 + 41) = *v9;
  *(a2 + 57) = *&v9[16];
  result = *&v9[32];
  *(a2 + 73) = *&v9[32];
  *a2 = v4;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = a1;
  *(a2 + 152) = *(&v16 + 1);
  *(a2 + 89) = *&v9[48];
  return result;
}

uint64_t sub_1000308A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  result = sub_100049728();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(v2 + *(v4 + 28));
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a2 + *(sub_1000027D4(&qword_10005E458, &qword_10004BF98) + 44);
    v14[0] = 0;
    v14[1] = v8;
    swift_getKeyPath();
    sub_100032A14(v2, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MostUsedItemsPlaceholderView);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    sub_100033A48(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for MostUsedItemsPlaceholderView);
    sub_1000027D4(&qword_10005D810, &qword_10004BF50);
    sub_1000027D4(&qword_10005E460, &qword_10004BFA0);
    sub_1000035A8();
    sub_100032BFC();
    sub_100049B28();
    v12 = sub_100049898();
    result = sub_1000027D4(&qword_10005E480, &unk_10004BFB0);
    v13 = v9 + *(result + 36);
    *v13 = v12;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 1;
  }

  return result;
}

void *sub_100030B04(void x0_0, uint64_t a1, void x2_0, char a2)
{
  v5 = type metadata accessor for MostUsedItemNoContentView(0);
  __chkstk_darwin(v5);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000027D4(&qword_10005E418, &qword_10004BF70);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  if (a2)
  {
    *v10 = a1 == 1;
    v11 = swift_storeEnumTagMultiPayload();
    sub_1000328AC(v11, v12, v13);
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView, &unk_10004C0F8);
    return sub_1000497E8();
  }

  else
  {
    *v7 = swift_getKeyPath();
    sub_1000027D4(&qword_10005DA60, &qword_10004B650);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v5 + 20)) = a1 == 1;
    sub_100032A14(v7, v10, type metadata accessor for MostUsedItemNoContentView);
    v15 = swift_storeEnumTagMultiPayload();
    sub_1000328AC(v15, v16, v17);
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView, &unk_10004C0F8);
    sub_1000497E8();
    return sub_100032920(v7, type metadata accessor for MostUsedItemNoContentView);
  }
}

void sub_100030D50()
{
  v1 = v0[1];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = *v0;
    swift_getKeyPath();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    *(v4 + 32) = v2;
    sub_1000027D4(&qword_10005D810, &qword_10004BF50);
    sub_1000027D4(&qword_10005E3E8, &qword_10004BF58);
    sub_1000035A8();
    sub_1000327F0();
    sub_100049B28();
  }
}

uint64_t sub_100030E4C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v47 = a2;
  v2 = sub_1000027D4(&qword_10005E6C0, &qword_10004C2E0);
  v3 = __chkstk_darwin(v2 - 8);
  v46 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v44[-v5];
  v7 = sub_100049588();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000027D4(&qword_10005E6C8, &qword_10004C2E8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v44[-v13];
  v15 = sub_1000027D4(&qword_10005E6D0, &qword_10004C2F0);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v22 = &v44[-v21];
  __chkstk_darwin(v20);
  v24 = &v44[-v23];
  v25 = *(v8 + 28);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_100049758();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  __asm { FMOV            V0.2D, #7.25 }

  *v10 = _Q0;
  LOBYTE(v25) = v45;
  sub_100049B68();
  sub_100049528();
  sub_100033A48(v10, v14, &type metadata accessor for RoundedRectangle);
  v33 = &v14[*(v12 + 44)];
  v34 = v49;
  *v33 = v48;
  v33[1] = v34;
  v33[2] = v50;
  v35 = [objc_opt_self() tertiarySystemFillColor];
  v36 = sub_100049AA8();
  KeyPath = swift_getKeyPath();
  sub_100004DF8(v14, v22, &qword_10005E6C8, &qword_10004C2E8);
  v38 = &v22[*(v16 + 44)];
  *v38 = KeyPath;
  v38[1] = v36;
  sub_100004DF8(v22, v24, &qword_10005E6D0, &qword_10004C2F0);
  *v6 = sub_100049798();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v39 = sub_1000027D4(&qword_10005E6D8, &qword_10004C328);
  sub_100031270(v25, &v6[*(v39 + 44)]);
  sub_1000055FC(v24, v19, &qword_10005E6D0, &qword_10004C2F0);
  v40 = v46;
  sub_1000055FC(v6, v46, &qword_10005E6C0, &qword_10004C2E0);
  v41 = v47;
  sub_1000055FC(v19, v47, &qword_10005E6D0, &qword_10004C2F0);
  v42 = sub_1000027D4(&qword_10005E6E0, &qword_10004C330);
  sub_1000055FC(v40, v41 + *(v42 + 48), &qword_10005E6C0, &qword_10004C2E0);
  sub_100005664(v6, &qword_10005E6C0, &qword_10004C2E0);
  sub_100005664(v24, &qword_10005E6D0, &qword_10004C2F0);
  sub_100005664(v40, &qword_10005E6C0, &qword_10004C2E0);
  return sub_100005664(v19, &qword_10005E6D0, &qword_10004C2F0);
}

uint64_t sub_100031270@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v94 = sub_1000027D4(&qword_10005E6E8, &qword_10004C338);
  v3 = __chkstk_darwin(v94);
  v96 = &v89[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v89[-v5];
  v7 = sub_1000027D4(&qword_10005E6F0, &qword_10004C340);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v89[-v9];
  v11 = sub_1000027D4(&qword_10005E6F8, &qword_10004C348);
  v12 = __chkstk_darwin(v11 - 8);
  v95 = &v89[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v99 = &v89[-v14];
  __asm { FMOV            V0.2D, #4.0 }

  v98 = _Q0;
  if (a1)
  {
    (*(v8 + 56))(v99, 1, 1, v7);
    v20 = enum case for RoundedCornerStyle.continuous(_:);
  }

  else
  {
    sub_100049748();
    v21 = sub_100049928();
    v23 = v22;
    v25 = v24;
    sub_1000498F8();
    v26 = sub_100049918();
    v91 = v27;
    v92 = v26;
    v90 = v28;
    v93 = v29;

    sub_1000036D0(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v31 = &v10[*(v7 + 36)];
    v32 = *(sub_100049588() + 20);
    v20 = enum case for RoundedCornerStyle.continuous(_:);
    v33 = sub_100049758();
    (*(*(v33 - 8) + 104))(&v31[v32], v20, v33);
    *v31 = v98;
    v34 = [objc_opt_self() labelColor];
    v35 = sub_100049AA8();
    v36 = swift_getKeyPath();
    v37 = &v31[*(sub_1000027D4(&qword_10005D928, &qword_10004B520) + 36)];
    *v37 = v36;
    v37[1] = v35;
    *&v31[*(sub_1000027D4(&qword_10005D930, &qword_10004B528) + 36)] = 0x3FB47AE147AE147BLL;
    LOBYTE(v35) = sub_100049898();
    sub_1000494E8();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v31[*(sub_1000027D4(&qword_10005D938, &qword_10004B530) + 36)];
    *v46 = v35;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    v47 = sub_100049B68();
    v49 = v48;
    v50 = &v31[*(sub_1000027D4(&qword_10005D940, &qword_10004B538) + 36)];
    *v50 = v47;
    v50[1] = v49;
    v51 = v91;
    *v10 = v92;
    *(v10 + 1) = v51;
    v10[16] = v90 & 1;
    *(v10 + 3) = v93;
    *(v10 + 4) = KeyPath;
    *(v10 + 5) = 1;
    v10[48] = 0;
    v52 = v99;
    sub_100004DF8(v10, v99, &qword_10005E6F0, &qword_10004C340);
    (*(v8 + 56))(v52, 0, 1, v7);
  }

  sub_100049748();
  v93 = sub_100049928();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = swift_getKeyPath();
  v60 = sub_1000498F8();
  v61 = swift_getKeyPath();
  v62 = v56 & 1;
  v101 = v56 & 1;
  v100 = 0;
  v63 = &v6[*(v94 + 36)];
  v64 = *(sub_100049588() + 20);
  v65 = sub_100049758();
  (*(*(v65 - 8) + 104))(&v63[v64], v20, v65);
  *v63 = v98;
  v66 = [objc_opt_self() tertiaryLabelColor];
  v67 = sub_100049AA8();
  v68 = swift_getKeyPath();
  v69 = &v63[*(sub_1000027D4(&qword_10005D928, &qword_10004B520) + 36)];
  *v69 = v68;
  v69[1] = v67;
  *&v63[*(sub_1000027D4(&qword_10005D930, &qword_10004B528) + 36)] = 0x3FB47AE147AE147BLL;
  LOBYTE(v67) = sub_100049898();
  sub_1000494E8();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = &v63[*(sub_1000027D4(&qword_10005D938, &qword_10004B530) + 36)];
  *v78 = v67;
  *(v78 + 1) = v71;
  *(v78 + 2) = v73;
  *(v78 + 3) = v75;
  *(v78 + 4) = v77;
  v78[40] = 0;
  v79 = sub_100049B68();
  v81 = v80;
  v82 = &v63[*(sub_1000027D4(&qword_10005D940, &qword_10004B538) + 36)];
  *v82 = v79;
  v82[1] = v81;
  *v6 = v93;
  *(v6 + 1) = v54;
  v6[16] = v62;
  *(v6 + 3) = v58;
  *(v6 + 4) = v59;
  *(v6 + 5) = 1;
  v6[48] = 0;
  *(v6 + 7) = v61;
  *(v6 + 8) = v60;
  v83 = v99;
  v84 = v95;
  sub_1000055FC(v99, v95, &qword_10005E6F8, &qword_10004C348);
  v85 = v96;
  sub_1000055FC(v6, v96, &qword_10005E6E8, &qword_10004C338);
  v86 = v97;
  sub_1000055FC(v84, v97, &qword_10005E6F8, &qword_10004C348);
  v87 = sub_1000027D4(&qword_10005E700, &qword_10004C380);
  sub_1000055FC(v85, v86 + *(v87 + 48), &qword_10005E6E8, &qword_10004C338);
  sub_100005664(v6, &qword_10005E6E8, &qword_10004C338);
  sub_100005664(v83, &qword_10005E6F8, &qword_10004C348);
  sub_100005664(v85, &qword_10005E6E8, &qword_10004C338);
  return sub_100005664(v84, &qword_10005E6F8, &qword_10004C348);
}

uint64_t sub_1000319FC@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_100049738();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v5 = sub_1000027D4(&qword_10005E6B8, &qword_10004C2D8);
  return sub_100030E4C(v4, a2 + *(v5 + 44));
}

uint64_t sub_100031A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_100049588();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000027D4(&qword_10005E6C8, &qword_10004C2E8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = sub_1000027D4(&qword_10005E6D0, &qword_10004C2F0);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  v46 = &v45 - v18;
  v19 = *(v4 + 28);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_100049758();
  (*(*(v21 - 8) + 104))(&v6[v19], v20, v21);
  __asm { FMOV            V0.2D, #7.25 }

  *v6 = _Q0;
  type metadata accessor for MostUsedItemNoContentView(0);
  sub_100049B68();
  sub_100049528();
  sub_100033A48(v6, v10, &type metadata accessor for RoundedRectangle);
  v27 = &v10[*(v8 + 44)];
  v28 = *(&v65[10] + 8);
  *v27 = *(&v65[9] + 8);
  *(v27 + 1) = v28;
  *(v27 + 2) = *(&v65[11] + 8);
  v29 = [objc_opt_self() tertiarySystemFillColor];
  v30 = sub_100049AA8();
  KeyPath = swift_getKeyPath();
  sub_100004DF8(v10, v17, &qword_10005E6C8, &qword_10004C2E8);
  v32 = &v17[*(v12 + 44)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = v46;
  sub_100004DF8(v17, v46, &qword_10005E6D0, &qword_10004C2F0);
  v47 = sub_100049798();
  v51 = 0;
  sub_100032010(a1, &v64);
  v58 = v65[5];
  v59[0] = v65[6];
  *(v59 + 9) = *(&v65[6] + 9);
  v54 = v65[1];
  v55 = v65[2];
  v56 = v65[3];
  v57 = v65[4];
  v52 = v64;
  v53 = v65[0];
  v60[5] = v65[4];
  v60[6] = v65[5];
  v61[0] = v65[6];
  *(v61 + 9) = *(&v65[6] + 9);
  v60[2] = v65[1];
  v60[3] = v65[2];
  v60[4] = v65[3];
  v60[0] = v64;
  v60[1] = v65[0];
  sub_1000055FC(&v52, &v62, &qword_10005E720, &qword_10004C398);
  sub_100005664(v60, &qword_10005E720, &qword_10004C398);
  *(&v50[5] + 7) = v57;
  *(&v50[6] + 7) = v58;
  *(&v50[7] + 7) = v59[0];
  v50[8] = *(v59 + 9);
  *(&v50[1] + 7) = v53;
  *(&v50[2] + 7) = v54;
  *(&v50[3] + 7) = v55;
  *(&v50[4] + 7) = v56;
  *(v50 + 7) = v52;
  LOBYTE(v12) = v51;
  v34 = v48;
  sub_1000055FC(v33, v48, &qword_10005E6D0, &qword_10004C2F0);
  v35 = v49;
  sub_1000055FC(v34, v49, &qword_10005E6D0, &qword_10004C2F0);
  v36 = *(sub_1000027D4(&qword_10005E728, &qword_10004C3A0) + 48);
  *&v63[17] = v50[1];
  *&v63[81] = v50[5];
  *&v63[97] = v50[6];
  *&v63[113] = v50[7];
  *&v63[129] = v50[8];
  *&v63[33] = v50[2];
  *&v63[49] = v50[3];
  v37 = v35 + v36;
  v38 = v47;
  v62 = v47;
  v63[0] = v12;
  *&v63[65] = v50[4];
  *&v63[1] = v50[0];
  v39 = *&v63[128];
  *(v37 + 128) = *&v63[112];
  *(v37 + 144) = v39;
  *(v37 + 160) = v63[144];
  v40 = *&v63[64];
  *(v37 + 64) = *&v63[48];
  *(v37 + 80) = v40;
  v41 = *&v63[96];
  *(v37 + 96) = *&v63[80];
  *(v37 + 112) = v41;
  v42 = *v63;
  *v37 = v62;
  *(v37 + 16) = v42;
  v43 = *&v63[32];
  *(v37 + 32) = *&v63[16];
  *(v37 + 48) = v43;
  sub_1000055FC(&v62, &v64, &qword_10005E730, &qword_10004C3A8);
  sub_100005664(v33, &qword_10005E6D0, &qword_10004C2F0);
  *(&v65[5] + 1) = v50[5];
  *(&v65[6] + 1) = v50[6];
  *(&v65[7] + 1) = v50[7];
  *(&v65[8] + 1) = v50[8];
  *(&v65[1] + 1) = v50[1];
  *(&v65[2] + 1) = v50[2];
  *(&v65[3] + 1) = v50[3];
  *(&v65[4] + 1) = v50[4];
  v64 = v38;
  LOBYTE(v65[0]) = v12;
  *(v65 + 1) = v50[0];
  sub_100005664(&v64, &qword_10005E730, &qword_10004C3A8);
  return sub_100005664(v34, &qword_10005E6D0, &qword_10004C2F0);
}

uint64_t sub_100032010@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100049C78();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for MostUsedItemNoContentView(0) + 20)))
  {
    v43 = 0;
    v44 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    v36 = 0;
    v41 = 0;
    v42 = 0;
    v37 = 0;
  }

  else
  {
    sub_100049748();
    v8 = sub_100049928();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_10002FBEC(&qword_10005DA60, &qword_10004B650, &type metadata accessor for WidgetRenderingMode, v7);
    sub_10002F820(1, v8, v10, v14, &v64);
    sub_1000036D0(v8, v10, v12 & 1);

    (*(v5 + 8))(v7, v4);
    v39 = v66;
    v40 = v65;
    v38 = v67;
    v36 = v68;
    v43 = v69;
    v44 = v64;
    v41 = v71;
    v42 = v70;
    v37 = v72;
  }

  sub_100049748();
  v15 = sub_100049928();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10002FBEC(&qword_10005DA60, &qword_10004B650, &type metadata accessor for WidgetRenderingMode, v7);
  sub_10002F820(0, v15, v17, v21, &v50);
  sub_1000036D0(v15, v17, v19 & 1);

  (*(v5 + 8))(v7, v4);
  v23 = v39;
  v22 = v40;
  *&v55 = v44;
  *(&v55 + 1) = v40;
  v24 = v38;
  *&v56 = v39;
  *(&v56 + 1) = v38;
  v25 = v36;
  *&v57 = v36;
  *(&v57 + 1) = v43;
  *&v58 = v42;
  *(&v58 + 1) = v41;
  LOBYTE(v15) = v37;
  LOBYTE(v49[0]) = v37;
  v47 = v57;
  v48 = v58;
  v45 = v55;
  v46 = v56;
  v60[2] = v52;
  v60[3] = v53;
  v60[0] = v50;
  v60[1] = v51;
  *(v49 + 8) = v50;
  BYTE8(v49[4]) = v54;
  v26 = v52;
  v27 = v53;
  *(&v49[3] + 8) = v53;
  *(&v49[2] + 8) = v52;
  v28 = v50;
  v29 = v51;
  *(&v49[1] + 8) = v51;
  v30 = v58;
  a2[2] = v57;
  a2[3] = v30;
  v31 = v46;
  *a2 = v45;
  a2[1] = v31;
  *(a2 + 121) = *(&v49[3] + 9);
  v32 = v49[3];
  a2[6] = v49[2];
  a2[7] = v32;
  v33 = v49[1];
  a2[4] = v49[0];
  a2[5] = v33;
  v59 = v15;
  v61 = v54;
  v62[2] = v26;
  v62[3] = v27;
  v63 = v54;
  v62[0] = v28;
  v62[1] = v29;
  sub_1000055FC(&v55, &v64, &qword_10005E738, &unk_10004C3B0);
  sub_1000055FC(v60, &v64, &qword_10005E680, &qword_10004C250);
  sub_100005664(v62, &qword_10005E680, &qword_10004C250);
  v64 = v44;
  v65 = v22;
  v66 = v23;
  v67 = v24;
  v68 = v25;
  v69 = v43;
  v70 = v42;
  v71 = v41;
  v72 = v15;
  return sub_100005664(&v64, &qword_10005E738, &unk_10004C3B0);
}

uint64_t sub_100032408()
{
  v1 = sub_1000027D4(&qword_10005E708, &qword_10004C388);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = sub_100049738();
  *(v3 + 1) = 0x4028000000000000;
  v3[16] = 0;
  v4 = sub_1000027D4(&qword_10005E710, &qword_10004C390);
  sub_100031A54(v0, &v3[*(v4 + 44)]);
  sub_100005708(&qword_10005E718, &qword_10005E708, &qword_10004C388, &protocol conformance descriptor for HStack<A>);
  sub_1000499E8();
  return sub_100005664(v3, &qword_10005E708, &qword_10004C388);
}

unint64_t sub_100032520()
{
  result = qword_10005E398;
  if (!qword_10005E398)
  {
    sub_100003634(&qword_10005E388, &qword_10004BE88);
    sub_100003634(&qword_10005E3A0, &qword_10004BE90);
    sub_100032618();
    swift_getOpaqueTypeConformance2();
    sub_100032724(&qword_10005D9A8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E398);
  }

  return result;
}

unint64_t sub_100032618()
{
  result = qword_10005E3A8;
  if (!qword_10005E3A8)
  {
    sub_100003634(&qword_10005E3A0, &qword_10004BE90);
    sub_100032724(&qword_10005E3B0, type metadata accessor for MostUsedItemCell, &unk_10004C198);
    sub_100032724(&qword_10005D9A8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E3A8);
  }

  return result;
}

uint64_t sub_100032724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000327F0()
{
  result = qword_10005E3F0;
  if (!qword_10005E3F0)
  {
    v1 = sub_100003634(&qword_10005E3E8, &qword_10004BF58);
    sub_1000328AC(v1, v2, v3);
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView, &unk_10004C0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E3F0);
  }

  return result;
}

unint64_t sub_1000328AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005E3F8;
  if (!qword_10005E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E3F8);
  }

  return result;
}

uint64_t sub_100032920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100032988()
{
  result = qword_10005E438;
  if (!qword_10005E438)
  {
    sub_100003634(&qword_10005E440, &qword_10004BF80);
    sub_100032520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E438);
  }

  return result;
}

uint64_t sub_100032A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032A7C()
{
  v1 = *(type metadata accessor for MostUsedItemsPlaceholderView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_100049C78();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_100032B7C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MostUsedItemsPlaceholderView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_10003077C(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_100032BFC()
{
  result = qword_10005E468;
  if (!qword_10005E468)
  {
    sub_100003634(&qword_10005E460, &qword_10004BFA0);
    sub_100005708(&qword_10005E470, &qword_10005E478, &qword_10004BFA8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E468);
  }

  return result;
}

uint64_t sub_100032CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100032DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_100032E78(uint64_t a1)
{
  sub_100033F08(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for MostUsedItemPlaceholderView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MostUsedItemPlaceholderView(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100033088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005E518, &unk_10004C020);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000331C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000027D4(&qword_10005E518, &unk_10004C020);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000332E8(uint64_t a1)
{
  sub_100033F08(319, &unk_10005E588, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_100033F08(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for MostUsedItemsPlaceholderRowView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MostUsedItemsPlaceholderRowView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MostUsedItemsPlaceholderRowView(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003347C()
{
  result = qword_10005E5C0;
  if (!qword_10005E5C0)
  {
    sub_100003634(&qword_10005E3C8, &qword_10004BEA8);
    sub_100033508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E5C0);
  }

  return result;
}

unint64_t sub_100033508()
{
  result = qword_10005E5C8;
  if (!qword_10005E5C8)
  {
    sub_100003634(&qword_10005E3C0, &qword_10004BEA0);
    sub_100033594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E5C8);
  }

  return result;
}

unint64_t sub_100033594()
{
  result = qword_10005E5D0;
  if (!qword_10005E5D0)
  {
    sub_100003634(&qword_10005E3B8, &qword_10004BE98);
    sub_100005708(&qword_10005E5D8, &qword_10005E5E0, ":7", &protocol conformance descriptor for VStack<A>);
    sub_100005708(&qword_10005E5E8, &qword_10005E5F0, &qword_10004C088, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E5D0);
  }

  return result;
}

unint64_t sub_10003367C()
{
  result = qword_10005E5F8;
  if (!qword_10005E5F8)
  {
    sub_100003634(&qword_10005E410, &qword_10004BF68);
    sub_100033708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E5F8);
  }

  return result;
}

unint64_t sub_100033708()
{
  result = qword_10005E600;
  if (!qword_10005E600)
  {
    sub_100003634(&qword_10005E408, &qword_10004BF60);
    sub_100005708(&qword_10005E608, &qword_10005E610, &qword_10004C090, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E600);
  }

  return result;
}

unint64_t sub_1000337C4()
{
  result = qword_10005E618;
  if (!qword_10005E618)
  {
    sub_100003634(&qword_10005E450, &qword_10004BF90);
    sub_100033850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E618);
  }

  return result;
}

unint64_t sub_100033850()
{
  result = qword_10005E620;
  if (!qword_10005E620)
  {
    sub_100003634(&qword_10005E448, &qword_10004BF88);
    sub_100005708(&qword_10005E628, &qword_10005E630, &qword_10004C098, &protocol conformance descriptor for LazyVGrid<A>);
    sub_100005708(&qword_10005E5E8, &qword_10005E5F0, &qword_10004C088, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E620);
  }

  return result;
}

uint64_t sub_100033A08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100033A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100033AB0()
{
  result = qword_10005E688;
  if (!qword_10005E688)
  {
    sub_100003634(&qword_10005E680, &qword_10004C250);
    sub_100033B68();
    sub_100005708(&qword_10005D860, &qword_10005D868, &qword_10004B330, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E688);
  }

  return result;
}

unint64_t sub_100033B68()
{
  result = qword_10005E690;
  if (!qword_10005E690)
  {
    sub_100003634(&qword_10005E698, &qword_10004C258);
    sub_100005708(&qword_10005E6A0, &qword_10005E6A8, &unk_10004C260, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E690);
  }

  return result;
}

uint64_t sub_100033C20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100049618();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100033CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005E740, "L5");
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

uint64_t sub_100033D9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005E740, "L5");
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

void sub_100033E60(uint64_t a1)
{
  sub_100033F08(319, &unk_10005E7B0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_100002154();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100033F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100049518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100033FE8()
{
  result = qword_10005E808;
  if (!qword_10005E808)
  {
    sub_100003634(&qword_10005E810, &qword_10004C3D8);
    sub_100005708(&qword_10005E718, &qword_10005E708, &qword_10004C388, &protocol conformance descriptor for HStack<A>);
    sub_100032724(&qword_10005D9A8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E808);
  }

  return result;
}

uint64_t sub_100034114(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003634(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000341AC()
{
  result = qword_10005E848;
  if (!qword_10005E848)
  {
    sub_100003634(&qword_10005E840, &unk_10004C450);
    v3 = sub_100034238();
    sub_1000342DC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E848);
  }

  return result;
}

unint64_t sub_100034238()
{
  result = qword_10005E850;
  if (!qword_10005E850)
  {
    sub_100003634(&qword_10005E838, &qword_10004C448);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E850);
  }

  return result;
}

unint64_t sub_1000342DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005E858;
  if (!qword_10005E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E858);
  }

  return result;
}

uint64_t sub_100034330()
{
  sub_100003634(&qword_10005E840, &unk_10004C450);
  sub_1000341AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100034394()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005E860);
  sub_1000143C0(v0, qword_10005E860);
  return sub_1000492B8();
}

uint64_t sub_100034414(uint64_t a1)
{
  type metadata accessor for XPCPersistentStoreManager();
  v1 = swift_allocObject();
  result = sub_100034450();
  qword_100060290 = v1;
  return result;
}

uint64_t sub_100034450()
{
  v1 = objc_opt_self();
  v2 = [v1 managedObjectModel];
  v3 = objc_allocWithZone(NSPersistentContainer);
  v4 = sub_100049DF8();
  v5 = [v3 initWithName:v4 managedObjectModel:v2];

  *(v0 + 16) = v5;
  *(v0 + 24) = 0;
  *(v0 + 32) = [objc_allocWithZone(type metadata accessor for STWidgetXPCStoreServerEndpointFactory()) init];
  v6 = [v1 localPersistentXPCStoreDescription];
  v7 = *(v0 + 16);
  sub_1000027D4(&qword_10005DDF8, &qword_10004B8D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10004C460;
  *(v8 + 32) = v6;
  sub_100035008();
  v9 = v7;
  v10 = v6;
  isa = sub_100049F48().super.isa;

  [v9 setPersistentStoreDescriptions:isa];

  return v0;
}

void sub_1000345C4()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v1 = *(v0 + 16);
    v2 = [v1 persistentStoreDescriptions];
    sub_100035008();
    v3 = sub_100049F58();

    if (v3 >> 62)
    {
      v4 = sub_10004A308();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      aBlock[4] = sub_100035054;
      aBlock[5] = v0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100034A48;
      aBlock[3] = &unk_10005AA90;
      v5 = _Block_copy(aBlock);

      [v1 loadPersistentStoresWithCompletionHandler:v5];
      _Block_release(v5);
      if (*(v0 + 24) == 1)
      {
        if (qword_10005D6B8 != -1)
        {
          swift_once();
        }

        v6 = sub_1000492C8();
        sub_1000143C0(v6, qword_10005E860);
        v7 = sub_1000492A8();
        v8 = sub_10004A0A8();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "Successfully loaded persistent stores", v9, 2u);
        }
      }
    }

    else
    {
      *(v0 + 24) = 0;
      if (qword_10005D6B8 != -1)
      {
        swift_once();
      }

      v10 = sub_1000492C8();
      sub_1000143C0(v10, qword_10005E860);
      oslog = sub_1000492A8();
      v11 = sub_10004A088();
      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v11, "No persistent stores available to load", v12, 2u);
      }
    }
  }
}

void sub_100034898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *(a3 + 24) = 0;
    swift_errorRetain();
    if (qword_10005D6B8 != -1)
    {
      swift_once();
    }

    v3 = sub_1000492C8();
    sub_1000143C0(v3, qword_10005E860);
    swift_errorRetain();
    oslog = sub_1000492A8();
    v4 = sub_10004A088();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Failed to load persistent store: %@", v5, 0xCu);
      sub_100034FA0(v6);
    }

    else
    {
    }
  }

  else
  {
    *(a3 + 24) = 1;
  }
}

void sub_100034A48(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_100034B04()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

id sub_100034BAC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for STWidgetXPCStoreServerEndpointFactory();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100034C04(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_100034C64(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100034C74(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100034FA0(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005DDB0, &qword_10004B8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100035008()
{
  result = qword_10005EA00;
  if (!qword_10005EA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005EA00);
  }

  return result;
}

uint64_t sub_10003505C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100035074()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005EA70);
  sub_1000143C0(v0, qword_10005EA70);
  return sub_1000492B8();
}

uint64_t sub_1000350EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v31 = sub_1000027D4(&qword_10005EAA8, &qword_10004C5D8);
  __chkstk_darwin(v31);
  v4 = &v29 - v3;
  v5 = sub_1000027D4(&qword_10005EAF8, &qword_10004C608);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for WidgetView(0);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000027D4(&qword_10005EAA0, &qword_10004C5D0);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v29 - v12;
  if (qword_10005D6C8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000492C8();
  sub_1000143C0(v14, qword_10005EA70);
  v15 = sub_1000492A8();
  v16 = sub_10004A0A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Getting widget body", v17, 2u);
  }

  sub_10003647C(a1, v10);
  *&v10[v8[5]] = swift_getKeyPath();
  sub_1000027D4(&qword_10005E658, &qword_10004C640);
  swift_storeEnumTagMultiPayload();
  *&v10[v8[6]] = swift_getKeyPath();
  sub_1000027D4(&qword_10005E3D8, &qword_10004BEE8);
  swift_storeEnumTagMultiPayload();
  *&v10[v8[7]] = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *&v10[v8[9]] = swift_getKeyPath();
  sub_1000027D4(&qword_10005EB00, &qword_10004C710);
  swift_storeEnumTagMultiPayload();
  v19 = swift_getKeyPath();
  v20 = &v10[v8[8]];
  *v20 = KeyPath;
  v20[8] = 0;
  v21 = &v10[v8[10]];
  *v21 = v19;
  v22 = type metadata accessor for UsageTimelineEntry(0);
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = 0;
  v21[32] = 0;
  sub_100035F64(*(a1 + *(v22 + 48)), *(a1 + *(v22 + 32)), *(a1 + *(v22 + 32) + 8));
  v23 = sub_100048F48();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  v24 = sub_1000369AC(&qword_10005EAB0, type metadata accessor for WidgetView, &unk_10004CC88);
  sub_1000499A8();
  sub_100005664(v7, &qword_10005EAF8, &qword_10004C608);
  sub_100036904(v10);
  v25 = enum case for DynamicTypeSize.xxLarge(_:);
  v26 = sub_100049548();
  (*(*(v26 - 8) + 104))(v4, v25, v26);
  sub_1000369AC(&qword_10005EB08, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_100049DE8();
  if (result)
  {
    v33 = v8;
    v34 = v24;
    swift_getOpaqueTypeConformance2();
    sub_100005708(&qword_10005EAB8, &qword_10005EAA8, &qword_10004C5D8, &protocol conformance descriptor for PartialRangeThrough<A>);
    v28 = v30;
    sub_100049A18();
    sub_100005664(v4, &qword_10005EAA8, &qword_10004C5D8);
    return (*(v11 + 8))(v13, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000356A4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_1000027D4(&qword_10005EAC8, &qword_10004C5E0);
  v2 = *(v1 - 8);
  v49 = v1;
  v50 = v2;
  __chkstk_darwin(v1);
  v4 = v43 - v3;
  v5 = sub_1000027D4(&qword_10005EAD0, &qword_10004C5E8);
  v6 = *(v5 - 8);
  v51 = v5;
  *&v52 = v6;
  __chkstk_darwin(v5);
  v46 = v43 - v7;
  v8 = sub_1000027D4(&qword_10005EAD8, &qword_10004C5F0);
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  __chkstk_darwin(v8);
  v56 = v43 - v10;
  sub_100049748();
  v11 = sub_100049928();
  v13 = v12;
  v15 = v14;
  v16 = sub_1000027D4(&qword_10005EA90, &qword_10004C5C0);
  v17 = sub_100005708(&qword_10005EAE0, &qword_10005EA90, &qword_10004C5C0, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_1000497D8();
  sub_1000036D0(v11, v13, v15 & 1);

  v48 = sub_1000027D4(&qword_10005EAE8, &qword_10004C5F8);
  v18 = sub_100049CB8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v47 = *(v19 + 80);
  v21 = (v47 + 32) & ~v47;
  v43[1] = v20;
  v44 = v21;
  v22 = 2 * v20;
  v23 = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10004C530;
  v25 = v24 + v21;
  v45 = enum case for WidgetFamily.systemSmall(_:);
  v26 = *(v19 + 104);
  v43[0] = v26;
  v26(v25);
  (v26)(v25 + v23, enum case for WidgetFamily.systemMedium(_:), v18);
  (v26)(v25 + v22, enum case for WidgetFamily.systemLarge(_:), v18);
  v57 = v16;
  v58 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v46;
  v29 = v49;
  sub_1000497B8();

  v30 = v29;
  (*(v50 + 8))(v4, v29);
  sub_100049748();
  v31 = sub_100049928();
  v33 = v32;
  LOBYTE(v26) = v34;
  v57 = v30;
  v58 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v51;
  sub_1000497A8();
  sub_1000036D0(v31, v33, v26 & 1);

  (*(v52 + 8))(v28, v36);
  sub_1000027D4(&qword_10005EAF0, &qword_10004C600);
  sub_100049CD8();
  v37 = swift_allocObject();
  v52 = xmmword_10004B590;
  *(v37 + 16) = xmmword_10004B590;
  sub_100049CC8();
  v38 = v44;
  v39 = swift_allocObject();
  *(v39 + 16) = v52;
  (v43[0])(v39 + v38, v45, v18);
  v57 = v36;
  v58 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = v56;
  v41 = v53;
  sub_1000497C8();

  return (*(v54 + 8))(v40, v41);
}

uint64_t sub_100035CFC@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_1000027D4(&qword_10005EA90, &qword_10004C5C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v15 = "ation.ScreenTimeWidgetExtension";
  type metadata accessor for STSelectUserIntent();
  sub_1000027D4(&qword_10005EA98, &qword_10004C5C8);
  v5 = sub_100003634(&qword_10005EAA0, &qword_10004C5D0);
  v6 = sub_100003634(&qword_10005EAA8, &qword_10004C5D8);
  v7 = type metadata accessor for WidgetView(255);
  v8 = sub_1000369AC(&qword_10005EAB0, type metadata accessor for WidgetView, &unk_10004CC88);
  v17 = v7;
  v18 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = sub_100005708(&qword_10005EAB8, &qword_10005EAA8, &qword_10004C5D8, &protocol conformance descriptor for PartialRangeThrough<A>);
  v17 = v5;
  v18 = v6;
  v19 = OpaqueTypeConformance2;
  v20 = v10;
  v11 = swift_getOpaqueTypeConformance2();
  sub_100036428(v11, v12, v13);
  sub_100049CF8();
  sub_1000356A4(v16);
  return (*(v2 + 8))(v4, v1);
}

void sub_100035F64(char a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(NSProcessInfo) init];
  if ([v6 isiOSAppOnMac])
  {

LABEL_4:

    sub_100036184(a2, a3);
    return;
  }

  v7 = [v6 isMacCatalystApp];

  if (v7)
  {
    goto LABEL_4;
  }

  if (a3 && (a1 & 1) != 0)
  {
    v8 = sub_100049DF8();
    v9 = objc_opt_new();
    [v9 setScheme:STPrefsURLComponentScheme];
    [v9 setFragment:STPrefsURLComponentFragmentToday];
    v10 = [NSString alloc];
    v11 = [v10 initWithFormat:@"%@&path=CHILD_%@/SCREEN_TIME_SUMMARY", STPrefsURLComponentPathScreenTimeRoot, v8];
    [v9 setPath:v11];

    v12 = [v9 URL];

    v15 = v12;
  }

  else
  {
    v13 = objc_opt_new();
    [v13 setScheme:STPrefsURLComponentScheme];
    [v13 setFragment:STPrefsURLComponentFragmentToday];
    [v13 setPath:STPrefsURLComponentPathScreenTimeSummary];
    v14 = [v13 URL];

    v15 = v14;
  }

  sub_100048F38();
}

void sub_100036184(uint64_t a1, uint64_t a2)
{
  v12 = [objc_allocWithZone(NSURLComponents) init];
  v4 = sub_100049DF8();
  [v12 setScheme:v4];

  v5 = sub_100049DF8();
  [v12 setPath:v5];

  if (a2)
  {
    sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10004B590;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10001B17C(v6, v7, v8);
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;

    sub_100049E18();
    v9 = sub_100049DF8();

    [v12 setQuery:v9];
  }

  v10 = [v12 URL];
  if (v10)
  {
    v11 = v10;
    sub_100048F38();
  }

  else
  {
    __break(1u);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  if (qword_10005D6C0 != -1)
  {
    swift_once();
  }

  sub_1000345C4();
  sub_1000363A8(v3, v4, v5);
  sub_100049AF8();
  return 0;
}

unint64_t sub_1000363A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005EA88;
  if (!qword_10005EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EA88);
  }

  return result;
}

unint64_t sub_100036428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005EAC0;
  if (!qword_10005EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EAC0);
  }

  return result;
}

uint64_t sub_10003647C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036690()
{
  sub_100049698();
  sub_1000369AC(&qword_10005EB10, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100049718();
  return v1;
}

void *sub_10003670C@<X0>(_BYTE *a1@<X8>)
{
  sub_100049698();
  sub_1000369AC(&qword_10005EB10, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_100049718();
  *a1 = v3;
  return result;
}

uint64_t sub_1000367C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_1000368D4(void *a1@<X8>)
{
  sub_1000496C8();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_100036904(uint64_t a1)
{
  v2 = type metadata accessor for WidgetView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100036960(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000369AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000369F4()
{
  sub_100003634(&qword_10005EAD8, &qword_10004C5F0);
  sub_100003634(&qword_10005EAD0, &qword_10004C5E8);
  sub_100003634(&qword_10005EAC8, &qword_10004C5E0);
  sub_100003634(&qword_10005EA90, &qword_10004C5C0);
  sub_100005708(&qword_10005EAE0, &qword_10005EA90, &qword_10004C5C0, &protocol conformance descriptor for IntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100036BA0()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005EB18);
  sub_1000143C0(v0, qword_10005EB18);
  return sub_1000492B8();
}

uint64_t sub_100036C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_100049CB8();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for UsageTimelineEntry(0);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_100036D14, 0, 0);
}

uint64_t sub_100036D14()
{
  v1 = *(v0 + 88);
  type metadata accessor for UsageProvider();
  inited = swift_initStackObject();
  *(v0 + 160) = inited;
  *(inited + 16) = 0;
  v3 = (inited + 16);
  *(inited + 24) = 0;
  v4 = [v1 displayString];
  v5 = sub_100049E08();
  v7 = v6;

  *(v0 + 168) = v7;
  sub_100049D58();
  v9 = v8;
  v11 = v10;
  v12 = [v1 identifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100049E08();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v0 + 176) = v16;
  v17 = [*(v0 + 88) isRemote];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 BOOLValue];
  }

  else
  {
    v19 = 0;
  }

  sub_100049D68();
  sub_10003C088();
  v20 = sub_100020CF8(v19, v14, v16);

  if (v20 & 1) != 0 && (v21 = sub_100049258(), *(v0 + 40) = v21, *(v0 + 48) = sub_10003B8AC(&qword_10005EB50, &type metadata accessor for ScreenTimeFeatureFlags, &protocol conformance descriptor for ScreenTimeFeatureFlags), v22 = sub_10003B8F4((v0 + 16)), (*(*(v21 - 8) + 104))(v22, enum case for ScreenTimeFeatureFlags.newUsage(_:), v21), LOBYTE(v21) = sub_100049118(), sub_100002890((v0 + 16)), (v21))
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v23 = sub_1000492C8();
    sub_1000143C0(v23, qword_10005EB58);
    v24 = sub_1000492A8();
    v25 = sub_10004A0A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Using Device Activity to show widget usage data", v26, 2u);
    }

    *(v0 + 184) = *v3;

    v27 = swift_task_alloc();
    *(v0 + 192) = v27;
    *v27 = v0;
    v27[1] = sub_10003721C;
    v28 = *(v0 + 152);
    v29 = *(v0 + 136);

    return sub_10001CEEC(v28, v9, v11, v5, v7, v14, v16, v19, v29);
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v31 = sub_1000492C8();
    sub_1000143C0(v31, qword_10005EB58);
    v32 = sub_1000492A8();
    v33 = sub_10004A0A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Using Core Data to show widget usage data", v34, 2u);
    }

    v35 = *(v0 + 136);

    v36 = sub_10003C368();
    *(v0 + 200) = v36;
    v37 = swift_task_alloc();
    *(v0 + 208) = v37;
    *(v37 + 16) = v36;
    *(v37 + 24) = v19;
    *(v37 + 32) = v14;
    *(v37 + 40) = v16;
    *(v37 + 48) = v5;
    *(v37 + 56) = v7;
    *(v37 + 64) = v35;
    *(v37 + 72) = v9;
    *(v37 + 80) = v11;
    v38 = swift_task_alloc();
    *(v0 + 216) = v38;
    *v38 = v0;
    v38[1] = sub_1000375AC;
    v40 = *(v0 + 144);
    v39 = *(v0 + 152);

    return withCheckedContinuation<A>(isolation:function:_:)(v39, 0, 0, 0xD00000000000003DLL, 0x8000000100053EA0, sub_10003BBA0, v37, v40);
  }
}

uint64_t sub_10003721C()
{
  v1 = *v0;

  (*(v1[16] + 8))(v1[17], v1[15]);

  return _swift_task_switch(sub_1000373E8, 0, 0);
}

uint64_t sub_1000373E8()
{
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000492C8();
  sub_1000143C0(v1, qword_10005EB18);
  v2 = sub_1000492A8();
  v3 = sub_10004A0A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getSnapshot calling completion", v4, 2u);
  }

  v5 = v0[19];
  v6 = v0[13];

  v6(v5);
  v7 = sub_1000492A8();
  v8 = sub_10004A0A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "getSnapshot done", v9, 2u);
  }

  v10 = v0[19];

  sub_10003B850(v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000375AC()
{
  v1 = *v0;

  (*(v1[16] + 8))(v1[17], v1[15]);

  return _swift_task_switch(sub_1000373E8, 0, 0);
}

uint64_t sub_10003779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000027D4(&qword_10005EB40, &qword_10004C810);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000055FC(a3, v25 - v10, &qword_10005EB40, &qword_10004C810);
  v12 = sub_100049FC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005664(v11, &qword_10005EB40, &qword_10004C810);
  }

  else
  {
    sub_100049FB8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100049F98();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100049E28() + 32;
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

      sub_100005664(a3, &qword_10005EB40, &qword_10004C810);

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

  sub_100005664(a3, &qword_10005EB40, &qword_10004C810);
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

uint64_t sub_100037A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_100049058();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  sub_100049D18();
  v7[18] = swift_task_alloc();
  v9 = sub_1000027D4(&qword_10005EB38, &qword_10004C808);
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v10 = sub_100049CB8();
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();
  v11 = type metadata accessor for UsageTimelineEntry(0);
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_100037CAC, 0, 0);
}

uint64_t sub_100037CAC()
{
  v1 = *(v0 + 88);
  type metadata accessor for UsageProvider();
  inited = swift_initStackObject();
  *(v0 + 224) = inited;
  *(inited + 16) = 0;
  v3 = (inited + 16);
  *(inited + 24) = 0;
  v4 = [v1 displayString];
  v5 = sub_100049E08();
  v7 = v6;

  *(v0 + 232) = v7;
  sub_100049D58();
  v9 = v8;
  v11 = v10;
  v12 = [v1 identifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100049E08();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v0 + 240) = v16;
  v17 = [*(v0 + 88) isRemote];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 BOOLValue];
  }

  else
  {
    v19 = 0;
  }

  sub_100049D68();
  sub_10003C088();
  v20 = sub_100020CF8(v19, v14, v16);

  if (v20 & 1) != 0 && (v21 = sub_100049258(), *(v0 + 40) = v21, *(v0 + 48) = sub_10003B8AC(&qword_10005EB50, &type metadata accessor for ScreenTimeFeatureFlags, &protocol conformance descriptor for ScreenTimeFeatureFlags), v22 = sub_10003B8F4((v0 + 16)), (*(*(v21 - 8) + 104))(v22, enum case for ScreenTimeFeatureFlags.newUsage(_:), v21), LOBYTE(v21) = sub_100049118(), sub_100002890((v0 + 16)), (v21))
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v23 = sub_1000492C8();
    sub_1000143C0(v23, qword_10005EB58);
    v24 = sub_1000492A8();
    v25 = sub_10004A0A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Using Device Activity to show widget usage data", v26, 2u);
    }

    *(v0 + 248) = *v3;

    v27 = swift_task_alloc();
    *(v0 + 256) = v27;
    *v27 = v0;
    v27[1] = sub_1000381B8;
    v28 = *(v0 + 216);
    v29 = *(v0 + 192);

    return sub_10001CEEC(v28, v9, v11, v5, v7, v14, v16, v19, v29);
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v31 = sub_1000492C8();
    sub_1000143C0(v31, qword_10005EB58);
    v32 = sub_1000492A8();
    v33 = sub_10004A0A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Using Core Data to show widget usage data", v34, 2u);
    }

    v35 = *(v0 + 192);

    v36 = sub_10003C368();
    *(v0 + 264) = v36;
    v37 = swift_task_alloc();
    *(v0 + 272) = v37;
    *(v37 + 16) = v36;
    *(v37 + 24) = v19;
    *(v37 + 32) = v14;
    *(v37 + 40) = v16;
    *(v37 + 48) = v5;
    *(v37 + 56) = v7;
    *(v37 + 64) = v35;
    *(v37 + 72) = v9;
    *(v37 + 80) = v11;
    v38 = swift_task_alloc();
    *(v0 + 280) = v38;
    *v38 = v0;
    v38[1] = sub_100038680;
    v39 = *(v0 + 216);
    v40 = *(v0 + 200);

    return withCheckedContinuation<A>(isolation:function:_:)(v39, 0, 0, 0xD00000000000003DLL, 0x8000000100053EA0, sub_10003B84C, v37, v40);
  }
}

uint64_t sub_1000381B8()
{
  v1 = *v0;

  (*(v1[23] + 8))(v1[24], v1[22]);

  return _swift_task_switch(sub_100038384, 0, 0);
}

uint64_t sub_100038384()
{
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000492C8();
  sub_1000143C0(v1, qword_10005EB18);
  v2 = sub_1000492A8();
  v3 = sub_10004A0A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getTimeline calling completion", v4, 2u);
  }

  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[20];
  v7 = v0[21];
  v21 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[15];
  v20 = v0[13];

  sub_1000027D4(&qword_10005EB48, &qword_10004C818);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004B590;
  sub_10003647C(v6, v13 + v12);
  sub_100048FF8();
  sub_100049D08();
  (*(v9 + 8))(v10, v11);
  sub_10003B8AC(&qword_10005EB30, type metadata accessor for UsageTimelineEntry, &unk_10004AFEC);
  sub_100049D88();
  v20(v7);
  (*(v8 + 8))(v7, v21);
  v14 = sub_1000492A8();
  v15 = sub_10004A0A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "getTimeline done", v16, 2u);
  }

  v17 = v0[27];

  sub_10003B850(v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100038680()
{
  v1 = *v0;

  (*(v1[23] + 8))(v1[24], v1[22]);

  return _swift_task_switch(sub_100038384, 0, 0);
}

uint64_t sub_100038870@<X0>(_BYTE *a1@<X8>)
{
  v78 = a1;
  v87 = sub_1000490F8();
  v84 = *(v87 - 8);
  v1 = __chkstk_darwin(v87);
  v83 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v71 - v3;
  v89 = sub_100049058();
  v5 = *(v89 - 8);
  v6 = __chkstk_darwin(v89);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v81 = &v71 - v9;
  __chkstk_darwin(v8);
  v80 = (&v71 - v10);
  v74 = sub_100049CB8();
  v11 = *(v74 - 8);
  v12 = __chkstk_darwin(v74);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v71 - v14;
  v16 = sub_100048E98();
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = __chkstk_darwin(v16);
  v79 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v71 - v19;
  v20 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v21 = __chkstk_darwin(v20 - 8);
  v76 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v71 - v23;
  v25 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v88 = &v71 - v29;
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v30 = sub_1000492C8();
  sub_1000143C0(v30, qword_10005EB18);
  v31 = sub_1000492A8();
  v32 = sub_10004A0A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "placeholder called", v33, 2u);
  }

  (*(v5 + 56))(v88, 1, 1, v89);
  sub_100049D58();
  v35 = v34;
  v37 = v36;
  (*(v85 + 56))(v24, 1, 1, v86);
  sub_100049D68();
  sub_100049038();
  sub_1000490B8();
  v38 = v77;
  v39 = v74;
  (*(v11 + 16))(v77, v15, v74);
  v40 = (*(v11 + 88))(v38, v39);
  v41 = v81;
  v42 = v78;
  v73 = v24;
  if (v40 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_6;
  }

  if (v40 == enum case for WidgetFamily.systemMedium(_:))
  {
    v43 = v82;
    v44 = 15;
    goto LABEL_9;
  }

  if (v40 == enum case for WidgetFamily.systemLarge(_:) || v40 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v45 = v80;
    sub_10001C284(v80, v82);
    goto LABEL_10;
  }

  if (v40 == enum case for WidgetFamily.accessoryCircular(_:) || v40 == enum case for WidgetFamily.accessoryRectangular(_:) || v40 == enum case for WidgetFamily.accessoryInline(_:))
  {
LABEL_6:
    v43 = v82;
    v44 = 9;
LABEL_9:
    v45 = v80;
    sub_100022910(v44, v80, v4, v43);
LABEL_10:
    v72 = *(v84 + 8);
    v72(v4, v87);
    v80 = *(v5 + 8);
    (v80)(v45, v89);
    (*(v11 + 8))(v15, v39);
    goto LABEL_11;
  }

  v69 = v80;
  sub_10001C284(v80, v82);
  v72 = *(v84 + 8);
  v72(v4, v87);
  v80 = *(v5 + 8);
  (v80)(v69, v89);
  v70 = *(v11 + 8);
  v70(v15, v39);
  v70(v77, v39);
LABEL_11:
  sub_100049038();
  sub_1000490B8();
  *v42 = 0;
  sub_1000055FC(v88, v28, &qword_10005DC10, &qword_10004B7C0);
  v46 = *(v5 + 48);
  v47 = v46(v28, 1, v89);
  v48 = v85;
  v49 = v86;
  v50 = v75;
  if (v47 == 1)
  {
    v51 = v41;
    v52 = v89;
    (*(v5 + 16))(v75, v51, v89);
    if (v46(v28, 1, v52) != 1)
    {
      sub_100005664(v28, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(v5 + 32))(v75, v28, v89);
  }

  v53 = type metadata accessor for UsageTimelineEntry(0);
  v54 = &v42[v53[6]];
  v55 = &v42[v53[8]];
  (*(v5 + 32))(&v42[v53[5]], v50, v89);
  *v54 = 0;
  v54[1] = 0;
  v56 = &v42[v53[7]];
  *v56 = v35;
  v56[1] = v37;
  *v55 = 0;
  v55[1] = 0;
  v57 = v73;
  v58 = v76;
  sub_1000055FC(v73, v76, &qword_10005DE00, &qword_10004B8D8);
  v59 = *(v48 + 48);
  v60 = v49;
  if (v59(v58, 1, v49) == 1)
  {
    v61 = v81;
    v62 = v83;
    sub_10001C284(v81, v79);
    v72(v62, v87);
    v63 = v61;
    v42 = v78;
    (v80)(v63, v89);
    sub_100005664(v57, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v88, &qword_10005DC10, &qword_10004B7C0);
    v64 = v59(v58, 1, v60);
    v65 = v79;
    if (v64 != 1)
    {
      sub_100005664(v58, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v72(v83, v87);
    (v80)(v81, v89);
    sub_100005664(v57, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v88, &qword_10005DC10, &qword_10004B7C0);
    v65 = v79;
    (*(v48 + 32))(v79, v58, v49);
  }

  v66 = v53[18];
  v67 = *(v48 + 32);
  v67(&v42[v53[9]], v65, v60);
  result = (v67)(&v42[v53[10]], v82, v60);
  *&v42[v53[11]] = _swiftEmptyArrayStorage;
  v42[v53[12]] = 0;
  *&v42[v53[13]] = _swiftEmptyArrayStorage;
  v42[v53[14]] = 0;
  v42[v53[15]] = 0;
  *&v42[v53[16]] = _swiftEmptyArrayStorage;
  *&v42[v53[17]] = 0;
  *&v42[v66] = 0;
  return result;
}

uint64_t sub_1000392E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10003939C;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10003939C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100039490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10003BB9C;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100039544(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003963C;

  return v6(a1);
}

uint64_t sub_10003963C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100039734(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v130 = a3;
  v131 = a4;
  v6 = sub_1000490F8();
  v127 = *(v6 - 8);
  v128 = v6;
  v7 = __chkstk_darwin(v6);
  v126 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v122 = (&v107 - v9);
  v10 = sub_100049058();
  v116 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v112 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v129 = &v107 - v14;
  __chkstk_darwin(v13);
  v109 = &v107 - v15;
  v111 = sub_100049CB8();
  v110 = *(v111 - 8);
  v16 = __chkstk_darwin(v111);
  v108 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v107 - v18;
  v115 = sub_100048E98();
  v114 = *(v115 - 8);
  v19 = __chkstk_darwin(v115);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v125 = &v107 - v22;
  v23 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v24 = __chkstk_darwin(v23 - 8);
  v117 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v123 = &v107 - v26;
  v27 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v28 = __chkstk_darwin(v27 - 8);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v132 = &v107 - v31;
  v124 = type metadata accessor for UsageTimelineEntry(0);
  v32 = __chkstk_darwin(v124);
  v133 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v113 = &v107 - v34;
  v35 = sub_100049D78();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v118 = v37;
  v120 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000027D4(&qword_10005EB40, &qword_10004C810);
  __chkstk_darwin(v38 - 8);
  v119 = &v107 - v39;
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v40 = sub_1000492C8();
  v107 = sub_1000143C0(v40, qword_10005EB18);
  v41 = sub_1000492A8();
  v42 = sub_10004A0A8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "getSnapshot called", v43, 2u);
  }

  v44 = [a1 user];
  if (v44)
  {
    v45 = v44;
    v46 = sub_100049FC8();
    v47 = v119;
    (*(*(v46 - 8) + 56))(v119, 1, 1, v46);
    v48 = v120;
    (*(v36 + 16))(v120, a2, v35);
    v49 = (*(v36 + 80) + 40) & ~*(v36 + 80);
    v50 = (v118 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 2) = 0;
    *(v51 + 3) = 0;
    *(v51 + 4) = v45;
    (*(v36 + 32))(&v51[v49], v48, v35);
    v52 = &v51[v50];
    v53 = v131;
    *v52 = v130;
    v52[1] = v53;

    sub_10003779C(0, 0, v47, &unk_10004C850, v51);
  }

  v120 = v30;
  v55 = sub_1000492A8();
  v56 = sub_10004A088();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Failed to provide user. Returning placeholder", v57, 2u);
  }

  v58 = v116;
  (*(v116 + 56))(v132, 1, 1, v10);
  sub_100049D58();
  v60 = v59;
  v62 = v61;
  v63 = v114;
  v64 = v115;
  (*(v114 + 56))(v123, 1, 1, v115);
  v65 = v121;
  sub_100049D68();
  v66 = v109;
  sub_100049038();
  sub_1000490B8();
  v67 = v110;
  v68 = v108;
  v69 = v65;
  v70 = v111;
  (*(v110 + 16))(v108, v69, v111);
  v71 = (*(v67 + 88))(v68, v70);
  v72 = v129;
  if (v71 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v71 == enum case for WidgetFamily.systemMedium(_:))
    {
      v73 = v125;
      v74 = 15;
      goto LABEL_13;
    }

    if (v71 == enum case for WidgetFamily.systemLarge(_:) || v71 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v106 = v66;
      v76 = v66;
      v77 = v122;
      sub_10001C284(v106, v125);
      goto LABEL_14;
    }

    if (v71 != enum case for WidgetFamily.accessoryCircular(_:) && v71 != enum case for WidgetFamily.accessoryRectangular(_:) && v71 != enum case for WidgetFamily.accessoryInline(_:))
    {
      v104 = v122;
      sub_10001C284(v66, v125);
      v122 = *(v127 + 8);
      (v122)(v104, v128);
      v119 = *(v58 + 8);
      (v119)(v66, v10);
      v105 = *(v67 + 8);
      v105(v121, v70);
      v105(v68, v70);
      v72 = v129;
      v58 = v116;
      goto LABEL_15;
    }
  }

  v73 = v125;
  v74 = 9;
LABEL_13:
  v75 = v66;
  v76 = v66;
  v77 = v122;
  sub_100022910(v74, v75, v122, v73);
LABEL_14:
  v122 = *(v127 + 8);
  (v122)(v77, v128);
  v119 = *(v58 + 8);
  (v119)(v76, v10);
  (*(v67 + 8))(v121, v70);
LABEL_15:
  v78 = v10;
  sub_100049038();
  sub_1000490B8();
  v79 = v132;
  *v133 = 0;
  v80 = v120;
  sub_1000055FC(v79, v120, &qword_10005DC10, &qword_10004B7C0);
  v81 = *(v58 + 48);
  if (v81(v80, 1, v78) == 1)
  {
    v82 = v112;
    (*(v58 + 16))(v112, v72, v78);
    v83 = v81(v80, 1, v78) == 1;
    v84 = v80;
    v85 = v82;
    if (!v83)
    {
      sub_100005664(v84, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    v86 = v112;
    (*(v58 + 32))(v112, v80, v78);
    v85 = v86;
  }

  v87 = v124;
  v88 = v133;
  v89 = &v133[v124[6]];
  v90 = &v133[v124[8]];
  (*(v58 + 32))(&v133[v124[5]], v85, v78);
  *v89 = 0;
  v89[1] = 0;
  v91 = &v88[v87[7]];
  *v91 = v60;
  v91[1] = v62;
  *v90 = 0;
  v90[1] = 0;
  v92 = v123;
  v93 = v117;
  sub_1000055FC(v123, v117, &qword_10005DE00, &qword_10004B8D8);
  v94 = *(v63 + 48);
  if (v94(v93, 1, v64) == 1)
  {
    v95 = v129;
    v96 = v126;
    sub_10001C284(v129, v21);
    (v122)(v96, v128);
    v97 = v92;
    v98 = v117;
    (v119)(v95, v78);
    sub_100005664(v97, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v132, &qword_10005DC10, &qword_10004B7C0);
    if (v94(v98, 1, v64) != 1)
    {
      sub_100005664(v98, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    (v122)(v126, v128);
    (v119)(v129, v78);
    sub_100005664(v92, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v132, &qword_10005DC10, &qword_10004B7C0);
    (*(v63 + 32))(v21, v93, v64);
  }

  v99 = v124;
  v100 = v124[18];
  v101 = *(v63 + 32);
  v102 = v133;
  v101(&v133[v124[9]], v21, v64);
  v101((v102 + v99[10]), v125, v64);
  *(v102 + v99[11]) = _swiftEmptyArrayStorage;
  *(v102 + v99[12]) = 0;
  *(v102 + v99[13]) = _swiftEmptyArrayStorage;
  *(v102 + v99[14]) = 0;
  *(v102 + v99[15]) = 0;
  *(v102 + v99[16]) = _swiftEmptyArrayStorage;
  *(v102 + v99[17]) = 0;
  *(v102 + v100) = 0;
  v103 = v113;
  sub_10003B500(v102, v113);
  v130(v103);
  return sub_10003B850(v103);
}

uint64_t sub_10003A51C(char *a1, void (*a2)(uint64_t, uint64_t), void (*a3)(char *), uint64_t a4)
{
  v139 = a4;
  v140 = a3;
  v137 = a1;
  v138 = a2;
  v4 = sub_100049D18();
  __chkstk_darwin(v4 - 8);
  v118 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for UsageTimelineEntry(0);
  v110 = *(v129 - 1);
  __chkstk_darwin(v129);
  v122 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000490F8();
  v133 = *(v7 - 8);
  v134 = v7;
  v8 = __chkstk_darwin(v7);
  v132 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v111 = &v107 - v10;
  v136 = sub_100049058();
  v11 = *(v136 - 8);
  v12 = __chkstk_darwin(v136);
  v121 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v115 = &v107 - v15;
  v16 = __chkstk_darwin(v14);
  v130 = &v107 - v17;
  __chkstk_darwin(v16);
  v128 = &v107 - v18;
  v114 = sub_100049CB8();
  v113 = *(v114 - 8);
  v19 = __chkstk_darwin(v114);
  v123 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v127 = &v107 - v21;
  v22 = sub_100048E98();
  v135 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v131 = &v107 - v26;
  v27 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v28 = __chkstk_darwin(v27 - 8);
  v116 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v124 = &v107 - v30;
  v31 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v32 = __chkstk_darwin(v31 - 8);
  v112 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v107 - v34;
  v120 = sub_1000027D4(&qword_10005EB38, &qword_10004C808);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v107 - v36;
  v126 = sub_100049D78();
  v37 = *(v126 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v126);
  v125 = &v107 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000027D4(&qword_10005EB40, &qword_10004C810);
  __chkstk_darwin(v39 - 8);
  v41 = &v107 - v40;
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000492C8();
  sub_1000143C0(v42, qword_10005EB18);
  v43 = sub_1000492A8();
  v44 = sub_10004A0A8();
  v45 = os_log_type_enabled(v43, v44);
  v141 = v22;
  if (v45)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "getTimeline called", v46, 2u);
    v22 = v141;
  }

  v47 = [v137 user];
  if (v47)
  {
    v48 = v47;
    v49 = sub_100049FC8();
    (*(*(v49 - 8) + 56))(v41, 1, 1, v49);
    v51 = v125;
    v50 = v126;
    (*(v37 + 16))(v125, v138, v126);
    v52 = (*(v37 + 80) + 40) & ~*(v37 + 80);
    v53 = swift_allocObject();
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    *(v53 + 4) = v48;
    (*(v37 + 32))(&v53[v52], v51, v50);
    v54 = &v53[(v38 + v52 + 7) & 0xFFFFFFFFFFFFFFF8];
    v55 = v139;
    *v54 = v140;
    v54[1] = v55;

    sub_10003779C(0, 0, v41, &unk_10004C828, v53);
  }

  v57 = sub_1000492A8();
  v58 = sub_10004A088();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Failed to provide user. Returning placeholder", v59, 2u);
    v22 = v141;
  }

  sub_1000027D4(&qword_10005EB48, &qword_10004C818);
  v126 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v137 = swift_allocObject();
  *(v137 + 1) = xmmword_10004B590;
  (*(v11 + 56))(v35, 1, 1, v136);
  sub_100049D58();
  v61 = v60;
  v63 = v62;
  v64 = v124;
  (*(v135 + 56))(v124, 1, 1, v22);
  v65 = v127;
  sub_100049D68();
  sub_100049038();
  v66 = v111;
  sub_1000490B8();
  v67 = v113;
  v68 = v123;
  v69 = v114;
  (*(v113 + 16))(v123, v65, v114);
  v70 = (*(v67 + 88))(v68, v69);
  v71 = v122;
  v72 = v130;
  if (v70 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v70 == enum case for WidgetFamily.systemMedium(_:))
    {
      v73 = v131;
      v74 = 15;
      goto LABEL_13;
    }

    if (v70 == enum case for WidgetFamily.systemLarge(_:) || v70 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v75 = v128;
      sub_10001C284(v128, v131);
      goto LABEL_14;
    }

    if (v70 != enum case for WidgetFamily.accessoryCircular(_:) && v70 != enum case for WidgetFamily.accessoryRectangular(_:) && v70 != enum case for WidgetFamily.accessoryInline(_:))
    {
      v104 = v128;
      sub_10001C284(v128, v131);
      v125 = *(v133 + 8);
      (v125)(v66, v134);
      v105 = v104;
      v77 = v136;
      v138 = *(v11 + 8);
      v138(v105, v136);
      v106 = *(v67 + 8);
      v106(v127, v69);
      v106(v123, v69);
      goto LABEL_15;
    }
  }

  v73 = v131;
  v74 = 9;
LABEL_13:
  v75 = v128;
  sub_100022910(v74, v128, v66, v73);
LABEL_14:
  v125 = *(v133 + 8);
  (v125)(v66, v134);
  v76 = v75;
  v77 = v136;
  v138 = *(v11 + 8);
  v138(v76, v136);
  (*(v67 + 8))(v127, v69);
LABEL_15:
  sub_100049038();
  sub_1000490B8();
  *v71 = 0;
  v78 = v112;
  sub_1000055FC(v35, v112, &qword_10005DC10, &qword_10004B7C0);
  v79 = *(v11 + 48);
  v80 = v79(v78, 1, v77);
  v109 = v25;
  v108 = v35;
  if (v80 == 1)
  {
    v81 = v115;
    (*(v11 + 16))(v115, v72, v77);
    if (v79(v78, 1, v77) != 1)
    {
      sub_100005664(v78, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    v81 = v115;
    (*(v11 + 32))(v115, v78, v77);
  }

  v82 = v129;
  v83 = &v71[v129[6]];
  v84 = &v71[v129[8]];
  (*(v11 + 32))(&v71[v129[5]], v81, v77);
  *v83 = 0;
  v83[1] = 0;
  v85 = &v71[v82[7]];
  *v85 = v61;
  v85[1] = v63;
  *v84 = 0;
  v84[1] = 0;
  v86 = v64;
  v87 = v64;
  v88 = v116;
  sub_1000055FC(v86, v116, &qword_10005DE00, &qword_10004B8D8);
  v89 = v135;
  v90 = *(v135 + 48);
  v91 = v141;
  v92 = v77;
  if (v90(v88, 1, v141) == 1)
  {
    v93 = v130;
    v94 = v132;
    sub_10001C284(v130, v109);
    (v125)(v94, v134);
    v138(v93, v77);
    sub_100005664(v124, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v108, &qword_10005DC10, &qword_10004B7C0);
    if (v90(v88, 1, v91) != 1)
    {
      sub_100005664(v88, &qword_10005DE00, &qword_10004B8D8);
    }

    v91 = v141;
    v89 = v135;
    v92 = v136;
    v95 = v109;
    v96 = v138;
  }

  else
  {
    (v125)(v132, v134);
    v97 = v138;
    v138(v130, v77);
    sub_100005664(v87, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v108, &qword_10005DC10, &qword_10004B7C0);
    v95 = v109;
    v98 = v88;
    v96 = v97;
    (*(v89 + 32))(v109, v98, v91);
  }

  v99 = v129;
  v100 = v129[18];
  v101 = *(v89 + 32);
  v101(&v71[v129[9]], v95, v91);
  v101(&v71[v99[10]], v131, v91);
  *&v71[v99[11]] = _swiftEmptyArrayStorage;
  v71[v99[12]] = 0;
  *&v71[v99[13]] = _swiftEmptyArrayStorage;
  v71[v99[14]] = 0;
  v71[v99[15]] = 0;
  *&v71[v99[16]] = _swiftEmptyArrayStorage;
  *&v71[v99[17]] = 0;
  *&v71[v100] = 0;
  sub_10003B500(v71, v137 + v126);
  v102 = v121;
  sub_100048FF8();
  sub_100049D08();
  v96(v102, v92);
  sub_10003B8AC(&qword_10005EB30, type metadata accessor for UsageTimelineEntry, &unk_10004AFEC);
  v103 = v117;
  sub_100049D88();
  v140(v103);
  return (*(v119 + 8))(v103, v120);
}

uint64_t sub_10003B500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003B568(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100049D78() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10003939C;

  return sub_100037A9C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10003B6A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B6DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003BB9C;

  return sub_100039544(a1, v4);
}

uint64_t sub_10003B794(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003939C;

  return sub_100039544(a1, v4);
}

uint64_t sub_10003B850(uint64_t a1)
{
  v2 = type metadata accessor for UsageTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003B8AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_10003B8F4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10003B958()
{
  v1 = sub_100049D78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10003BA3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100049D78() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10003BB9C;

  return sub_100036C20(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10003BBF4()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005EB58);
  sub_1000143C0(v0, qword_10005EB58);
  return sub_1000492B8();
}

uint64_t sub_10003BC78(double *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_10004A398() & 1) == 0)
  {
    return 0;
  }

  sub_10001B134(0, &qword_10005ED08, NSObject_ptr);
  if ((sub_10004A128() & 1) == 0)
  {
    return 0;
  }

  v8 = sub_10004A128();
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5)
  {
    if (v3 == v6 && v4 == v7)
    {
      return 1;
    }

    else
    {

      return sub_10004A398();
    }
  }

  return result;
}

uint64_t sub_10003BDB0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_10003BDBC()
{
  v1 = *(v0 + 32);
  sub_10004A418();
  sub_100049E48();
  sub_10004A138();
  sub_10004A138();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_10004A438(*&v2);
  sub_100049E48();
  return sub_10004A448();
}

uint64_t sub_10003BE74(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_100049E48();
  sub_10004A138();
  sub_10004A138();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_10004A438(*&v3);

  return sub_100049E48();
}

Swift::Int sub_10003BF0C(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_10004A418();
  sub_100049E48();
  sub_10004A138();
  sub_10004A138();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_10004A438(*&v3);
  sub_100049E48();
  return sub_10004A448();
}

uint64_t sub_10003BFC0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003C01C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100048E98();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10003C088()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    type metadata accessor for DeviceActivityUsageProvider();
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    v1 = swift_allocObject();
    sub_1000055FC(v11, &v6, &qword_10005DD90, &unk_10004C8D0);
    if (v7)
    {
      sub_10001435C(&v6, &v8);
    }

    else if (qword_10005D6C0 == -1)
    {
      v2 = qword_100060290;
      v9 = type metadata accessor for XPCPersistentStoreManager();
      v10 = &off_10005AA70;
      *&v8 = v2;
    }

    else
    {
      swift_once();
      v4 = v7;
      v5 = qword_100060290;
      v9 = type metadata accessor for XPCPersistentStoreManager();
      v10 = &off_10005AA70;
      *&v8 = v5;

      if (v4)
      {
        sub_100005664(&v6, &qword_10005DD90, &unk_10004C8D0);
      }
    }

    sub_10001435C(&v8, v1 + 112);
    sub_1000055FC(v15, &v6, &qword_10005DD80, &qword_10004B888);
    if (v7)
    {
      sub_10001435C(&v6, &v8);
    }

    else
    {
      v9 = &type metadata for ScreenTimeAppInfoCache;
      v10 = &off_100059D78;
    }

    sub_10001435C(&v8, v1 + 16);
    sub_1000055FC(v13, &v6, &qword_10005DD88, &unk_10004B890);
    if (v7)
    {
      sub_100005664(v11, &qword_10005DD90, &unk_10004C8D0);
      sub_100005664(v13, &qword_10005DD88, &unk_10004B890);
      sub_100005664(v15, &qword_10005DD80, &qword_10004B888);
      sub_10001435C(&v6, &v8);
    }

    else
    {
      v9 = &type metadata for ScreenTimeIconCache;
      v10 = &off_100059D50;
      sub_100005664(v11, &qword_10005DD90, &unk_10004C8D0);
      sub_100005664(v13, &qword_10005DD88, &unk_10004B890);
      sub_100005664(v15, &qword_10005DD80, &qword_10004B888);
      if (v7)
      {
        sub_100005664(&v6, &qword_10005DD88, &unk_10004B890);
      }
    }

    sub_10001435C(&v8, v1 + 72);
    *(v1 + 56) = sub_100049278();
    *(v1 + 64) = &protocol witness table for STDeviceActivityDataSource;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10003C368()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    type metadata accessor for CoreDataUsageProvider();
    memset(v4, 0, sizeof(v4));
    v5 = 0;
    swift_allocObject();
    v1 = sub_10000B12C(v8, v6, v4);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_10003C410()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10003C49C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10003C4F8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10003C4F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003C5C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000282C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002890(v11);
  return v7;
}

unint64_t sub_10003C5C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10003C6D0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10004A208();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10003C6D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10003C71C(a1, a2);
  sub_10003C84C(&off_100059BA0);
  return v3;
}

void *sub_10003C71C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10003C938(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10004A208();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100049E78();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10003C938(v10, 0);
        result = sub_10004A1C8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10003C84C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003C9AC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10003C938(uint64_t a1, uint64_t a2)
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

  sub_1000027D4(&qword_10005EC50, &qword_10004C8E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003C9AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005EC50, &qword_10004C8E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10003CAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049058();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  if (sub_100048E58() & 1) != 0 && (v11 = type metadata accessor for HourlyUsage(0), *(a1 + *(v11 + 20)) == *(a2 + *(v11 + 20))) && (v12 = v11, v13 = *(v11 + 24), sub_1000027D4(&qword_10005DBC0, &qword_10004B780), v18[1] = v13, sub_100049318(), v18[0] = *(v12 + 24), sub_100049318(), LOBYTE(v13) = sub_100049008(), v14 = *(v5 + 8), v14(v8, v4), v14(v10, v4), (v13) && (sub_100049328(), sub_100049328(), v15 = sub_100049008(), v14(v8, v4), v14(v10, v4), (v15))
  {
    v16 = sub_10003BFC0(*(a1 + *(v12 + 28)), *(a2 + *(v12 + 28)));
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_10003CCB8(char a1, _WORD *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a3;
    if (a3)
    {
      v4 = a2;
      v7 = qword_10005D6D8;

      if (v7 != -1)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v8 = sub_1000492C8();
        sub_1000143C0(v8, qword_10005EB58);

        v9 = sub_1000492A8();
        v10 = sub_10004A0A8();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v48 = v12;
          *v11 = 136446210;
          *(v11 + 4) = sub_10003C4F8(v4, v6, &v48);
          _os_log_impl(&_mh_execute_header, v9, v10, "Fetching information for user with dsid: %{public}s.", v11, 0xCu);
          sub_100002890(v12);
        }

        v13 = [objc_opt_self() fetchRequest];
        sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
        sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10004B5A0;
        *(v14 + 56) = &type metadata for String;
        v17 = sub_10001B17C(v14, v15, v16);
        *(v14 + 32) = 1684632420;
        *(v14 + 40) = 0xE400000000000000;
        *(v14 + 96) = &type metadata for String;
        *(v14 + 104) = v17;
        *(v14 + 64) = v17;
        *(v14 + 72) = v4;
        *(v14 + 80) = v6;
        v18 = sub_10004A068();
        [v13 setPredicate:v18];

        v48 = 0;
        v19 = [v13 execute:&v48];
        v6 = v48;
        if (!v19)
        {
          break;
        }

        v4 = v19;
        sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
        v20 = sub_100049F58();
        v21 = v6;

LABEL_14:
        if (v20 >> 62)
        {
          if (v20 < 0)
          {
            v6 = v20;
          }

          else
          {
            v6 = (v20 & 0xFFFFFFFFFFFFFF8);
          }

          v28 = sub_10004A308() > 0;
          if (!sub_10004A308())
          {
LABEL_36:

            if (!v28)
            {
              if (qword_10005D6D8 != -1)
              {
                swift_once();
              }

              v47 = sub_1000492C8();
              sub_1000143C0(v47, qword_10005EB58);
              v43 = sub_1000492A8();
              v44 = sub_10004A088();
              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                *v45 = 0;
                v46 = "Fetching user information returned empty results";
LABEL_41:
                _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);
              }

              goto LABEL_42;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v28 = v27 != 0;
          if (!v27)
          {
            goto LABEL_36;
          }
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v29 = sub_10004A1F8();
          goto LABEL_19;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v20 + 32);
LABEL_19:
          v30 = v29;

          v31 = v30;
          sub_100020A60(v30, a4);

          return;
        }

        __break(1u);
LABEL_46:
        swift_once();
      }

      v42 = v48;
      sub_100048F28();

      swift_willThrow();

      v43 = sub_1000492A8();
      v44 = sub_10004A088();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Fetching user information returned nil results";
        goto LABEL_41;
      }

LABEL_42:

LABEL_43:
      sub_100020A60(0, a4);
    }

    else
    {
      if (qword_10005D6D8 != -1)
      {
        swift_once();
      }

      v32 = sub_1000492C8();
      sub_1000143C0(v32, qword_10005EB58);
      v33 = sub_1000492A8();
      v34 = sub_10004A088();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Failed to provide DSID. Returning nil user.", v35, 2u);
      }

      sub_100020A60(0, a4);
    }
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v22 = sub_1000492C8();
    sub_1000143C0(v22, qword_10005EB58);
    v23 = sub_1000492A8();
    v24 = sub_10004A0A8();
    if (os_log_type_enabled(v23, v24))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Fetching local user information", v4, 2u);
    }

    v25 = [objc_opt_self() fetchRequestMatchingLocalUser];
    v48 = 0;
    v13 = [v25 execute:&v48];

    v6 = v48;
    if (v13)
    {
      sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
      v20 = sub_100049F58();
      v26 = v6;
      goto LABEL_14;
    }

    v36 = v48;
    sub_100048F28();

    swift_willThrow();
    swift_errorRetain();
    v37 = sub_1000492A8();
    v38 = sub_10004A088();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to fetch user: %{public}@", v39, 0xCu);
      sub_100005664(v40, &qword_10005DDB0, &qword_10004B8B0);
    }

    sub_100020A60(0, a4);
  }
}

uint64_t sub_10003D4A4(uint64_t a1, _WORD *a2, void *a3, char a4, uint64_t a5)
{
  v31 = type metadata accessor for XPCPersistentStoreManager();
  v32 = &off_10005AA70;
  v30[0] = a1;
  v10 = *(*sub_1000028DC(v30, v31) + 24);
  v11 = qword_10005D6D8;
  swift_retain_n();

  if (v10 != 1)
  {
    goto LABEL_9;
  }

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1000492C8();
  sub_1000143C0(v12, qword_10005EB58);
  v13 = sub_1000492A8();
  v14 = sub_10004A0A8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully loaded persistent store.", v15, 2u);
  }

  v16 = sub_1000028DC(v30, v31);
  v11 = swift_allocObject();
  v17 = a4 & 1;
  *(v11 + 16) = v17;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = sub_10003EF5C;
  *(v11 + 48) = a5;
  v18 = *v16;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1000345C4();
  if (*(v18 + 24) != 1)
  {

    sub_10003CCB8(v17, a2, a3, a5);

    goto LABEL_15;
  }

  v19 = [*(v18 + 16) newBackgroundContext];
  [v19 setAutomaticallyMergesChangesFromParent:1];
  [v19 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v20 = swift_allocObject();
  v20[2] = sub_10003F4FC;
  v20[3] = v11;
  v20[4] = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10001C280;
  *(v21 + 24) = v20;
  aBlock[4] = sub_10003F4F4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003BBCC;
  aBlock[3] = &unk_10005ACE8;
  v22 = _Block_copy(aBlock);

  v23 = v19;

  [v23 performBlockAndWait:v22];

  _Block_release(v22);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
LABEL_9:
    if (v11 != -1)
    {
      swift_once();
    }

    v24 = sub_1000492C8();
    sub_1000143C0(v24, qword_10005EB58);
    v25 = sub_1000492A8();
    v26 = sub_10004A088();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to load persistent store. This prevented fetching user data.", v27, 2u);
    }

    sub_100020A60(0, a5);
  }

LABEL_15:
  sub_100002890(v30);
}

void sub_10003D904(char a1, _WORD *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a3;
    if (a3)
    {
      v5 = a2;
      v9 = qword_10005D6D8;

      if (v9 != -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v10 = sub_1000492C8();
        sub_1000143C0(v10, qword_10005EB58);

        v11 = sub_1000492A8();
        v12 = sub_10004A0A8();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v55[0] = v14;
          *v13 = 136446210;
          *(v13 + 4) = sub_10003C4F8(v5, v8, v55);
          _os_log_impl(&_mh_execute_header, v11, v12, "Fetching information for user with dsid: %{public}s.", v13, 0xCu);
          sub_100002890(v14);
        }

        v15 = [objc_opt_self() fetchRequest];
        sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
        sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10004B5A0;
        *(v16 + 56) = &type metadata for String;
        v19 = sub_10001B17C(v16, v17, v18);
        *(v16 + 32) = 1684632420;
        *(v16 + 40) = 0xE400000000000000;
        *(v16 + 96) = &type metadata for String;
        *(v16 + 104) = v19;
        *(v16 + 64) = v19;
        *(v16 + 72) = v5;
        *(v16 + 80) = v8;
        v20 = sub_10004A068();
        [v15 setPredicate:v20];

        v55[0] = 0;
        v21 = [v15 execute:v55];
        v8 = v55[0];
        if (!v21)
        {
          v49 = v55[0];
          sub_100048F28();

          swift_willThrow();

          v50 = sub_1000492A8();
          v51 = sub_10004A088();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = "Fetching user information returned nil results";
            goto LABEL_45;
          }

LABEL_46:

LABEL_47:
          sub_100020F60(0, a4, a5);
          return;
        }

        v5 = v21;
        sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
        v22 = sub_100049F58();
        v23 = v8;

LABEL_14:
        if (v22 >> 62)
        {
          if (v22 < 0)
          {
            v8 = v22;
          }

          else
          {
            v8 = (v22 & 0xFFFFFFFFFFFFFF8);
          }

          v30 = sub_10004A308() > 0;
          if (!sub_10004A308())
          {
LABEL_40:

            if (!v30)
            {
              if (qword_10005D6D8 != -1)
              {
                swift_once();
              }

              v54 = sub_1000492C8();
              sub_1000143C0(v54, qword_10005EB58);
              v50 = sub_1000492A8();
              v51 = sub_10004A088();
              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                *v52 = 0;
                v53 = "Fetching user information returned empty results";
LABEL_45:
                _os_log_impl(&_mh_execute_header, v50, v51, v53, v52, 2u);
              }

              goto LABEL_46;
            }

            goto LABEL_47;
          }
        }

        else
        {
          v29 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v30 = v29 != 0;
          if (!v29)
          {
            goto LABEL_40;
          }
        }

        if ((v22 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v31 = *(v22 + 32);
          goto LABEL_19;
        }

        __break(1u);
LABEL_50:
        swift_once();
      }

      v31 = sub_10004A1F8();
LABEL_19:
      v32 = v31;

      v33 = v32;
      v34 = [v33 altDSID];
      if (v34)
      {
        v35 = v34;
        sub_100049E08();
      }

      v46 = [v33 userDeviceStates];
      if (v46)
      {
        v47 = v46;
        sub_10001B134(0, &qword_10005E218, STUserDeviceState_ptr);
        sub_10003E748();
        sub_100049FE8();
      }

      v48 = sub_100049288();

      swift_beginAccess();
      *(a4 + 16) = v48 & 1;
    }

    else
    {
      if (qword_10005D6D8 != -1)
      {
        swift_once();
      }

      v36 = sub_1000492C8();
      sub_1000143C0(v36, qword_10005EB58);
      v37 = sub_1000492A8();
      v38 = sub_10004A088();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to provide DSID. Returning nil user.", v39, 2u);
      }

      sub_100020F60(0, a4, a5);
    }
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v24 = sub_1000492C8();
    sub_1000143C0(v24, qword_10005EB58);
    v25 = sub_1000492A8();
    v26 = sub_10004A0A8();
    if (os_log_type_enabled(v25, v26))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Fetching local user information", v5, 2u);
    }

    v27 = [objc_opt_self() fetchRequestMatchingLocalUser];
    v55[0] = 0;
    v15 = [v27 execute:v55];

    v8 = v55[0];
    if (v15)
    {
      sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
      v22 = sub_100049F58();
      v28 = v8;
      goto LABEL_14;
    }

    v40 = v55[0];
    sub_100048F28();

    swift_willThrow();
    swift_errorRetain();
    v41 = sub_1000492A8();
    v42 = sub_10004A088();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to fetch user: %{public}@", v43, 0xCu);
      sub_100005664(v44, &qword_10005DDB0, &qword_10004B8B0);
    }

    sub_100020F60(0, a4, a5);
  }
}

uint64_t sub_10003E1EC(uint64_t a1, _WORD *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v34 = type metadata accessor for XPCPersistentStoreManager();
  v35 = &off_10005AA70;
  v33[0] = a1;
  v13 = *(*sub_1000028DC(v33, v34) + 24);
  v14 = qword_10005D6D8;
  swift_retain_n();
  swift_retain_n();

  if (v13 != 1)
  {
    goto LABEL_9;
  }

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_1000492C8();
  sub_1000143C0(v15, qword_10005EB58);
  v16 = sub_1000492A8();
  v17 = sub_10004A0A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Successfully loaded persistent store.", v18, 2u);
  }

  v19 = sub_1000028DC(v33, v34);
  v14 = swift_allocObject();
  v20 = a4 & 1;
  *(v14 + 16) = v20;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = sub_10003E6E8;
  *(v14 + 48) = v12;
  v21 = *v19;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1000345C4();
  if (*(v21 + 24) != 1)
  {

    sub_10003D904(v20, a2, a3, a5, a6);

    goto LABEL_15;
  }

  v22 = [*(v21 + 16) newBackgroundContext];
  [v22 setAutomaticallyMergesChangesFromParent:1];
  [v22 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v23 = swift_allocObject();
  v23[2] = sub_10003E6F0;
  v23[3] = v14;
  v23[4] = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10001B110;
  *(v24 + 24) = v23;
  aBlock[4] = sub_10003E708;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003BBCC;
  aBlock[3] = &unk_10005AC48;
  v25 = _Block_copy(aBlock);

  v26 = v22;

  [v26 performBlockAndWait:v25];

  _Block_release(v25);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
LABEL_9:
    if (v14 != -1)
    {
      swift_once();
    }

    v27 = sub_1000492C8();
    sub_1000143C0(v27, qword_10005EB58);
    v28 = sub_1000492A8();
    v29 = sub_10004A088();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to load persistent store. This prevented fetching user data.", v30, 2u);
    }

    sub_100020F60(0, a5, a6);
  }

LABEL_15:
  sub_100002890(v33);
}

uint64_t sub_10003E6A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003E748()
{
  result = qword_10005E220;
  if (!qword_10005E220)
  {
    sub_10001B134(255, &qword_10005E218, STUserDeviceState_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E220);
  }

  return result;
}

void sub_10003E7B0(char a1, _WORD *a2, void *a3, void (*a4)(void *))
{
  if (a1)
  {
    v6 = a3;
    if (a3)
    {
      v4 = a2;
      v7 = qword_10005D6D8;

      if (v7 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v8 = sub_1000492C8();
        sub_1000143C0(v8, qword_10005EB58);

        v9 = sub_1000492A8();
        v10 = sub_10004A0A8();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v47 = v12;
          *v11 = 136446210;
          *(v11 + 4) = sub_10003C4F8(v4, v6, &v47);
          _os_log_impl(&_mh_execute_header, v9, v10, "Fetching information for user with dsid: %{public}s.", v11, 0xCu);
          sub_100002890(v12);
        }

        v13 = [objc_opt_self() fetchRequest];
        sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
        sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10004B5A0;
        *(v14 + 56) = &type metadata for String;
        v17 = sub_10001B17C(v14, v15, v16);
        *(v14 + 32) = 1684632420;
        *(v14 + 40) = 0xE400000000000000;
        *(v14 + 96) = &type metadata for String;
        *(v14 + 104) = v17;
        *(v14 + 64) = v17;
        *(v14 + 72) = v4;
        *(v14 + 80) = v6;
        v18 = sub_10004A068();
        [v13 setPredicate:v18];

        v47 = 0;
        v19 = [v13 execute:&v47];
        v6 = v47;
        if (!v19)
        {
          v42 = v47;
          sub_100048F28();

          swift_willThrow();

          v33 = sub_1000492A8();
          v43 = sub_10004A088();
          if (os_log_type_enabled(v33, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Fetching user information returned nil results";
            goto LABEL_38;
          }

          goto LABEL_40;
        }

        v4 = v19;
        sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
        v20 = sub_100049F58();
        v21 = v6;

LABEL_14:
        if (v20 >> 62)
        {
          if (v20 < 0)
          {
            v6 = v20;
          }

          else
          {
            v6 = (v20 & 0xFFFFFFFFFFFFFF8);
          }

          v28 = sub_10004A308() > 0;
          if (!sub_10004A308())
          {
LABEL_33:

            if (!v28)
            {
              if (qword_10005D6D8 != -1)
              {
                swift_once();
              }

              v46 = sub_1000492C8();
              sub_1000143C0(v46, qword_10005EB58);
              v33 = sub_1000492A8();
              v43 = sub_10004A088();
              if (os_log_type_enabled(v33, v43))
              {
                v44 = swift_slowAlloc();
                *v44 = 0;
                v45 = "Fetching user information returned empty results";
LABEL_38:
                _os_log_impl(&_mh_execute_header, v33, v43, v45, v44, 2u);
LABEL_39:
              }

              goto LABEL_40;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v28 = v27 != 0;
          if (!v27)
          {
            goto LABEL_33;
          }
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v20 + 32);
LABEL_19:
          v30 = v29;

          v31 = v30;
          a4(v30);

          return;
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

      v29 = sub_10004A1F8();
      goto LABEL_19;
    }

    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v32 = sub_1000492C8();
    sub_1000143C0(v32, qword_10005EB58);
    v33 = sub_1000492A8();
    v34 = sub_10004A088();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to provide DSID. Returning nil user.", v35, 2u);
      goto LABEL_39;
    }

LABEL_40:

LABEL_41:
    a4(0);
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v22 = sub_1000492C8();
    sub_1000143C0(v22, qword_10005EB58);
    v23 = sub_1000492A8();
    v24 = sub_10004A0A8();
    if (os_log_type_enabled(v23, v24))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Fetching local user information", v4, 2u);
    }

    v25 = [objc_opt_self() fetchRequestMatchingLocalUser];
    v47 = 0;
    v13 = [v25 execute:&v47];

    v6 = v47;
    if (v13)
    {
      sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
      v20 = sub_100049F58();
      v26 = v6;
      goto LABEL_14;
    }

    v36 = v47;
    sub_100048F28();

    swift_willThrow();
    swift_errorRetain();
    v37 = sub_1000492A8();
    v38 = sub_10004A088();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to fetch user: %{public}@", v39, 0xCu);
      sub_100005664(v40, &qword_10005DDB0, &qword_10004B8B0);
    }

    a4(0);
  }
}

uint64_t sub_10003EF68()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003EFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100048E98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10003F108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100048E98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for HourlyUsage(uint64_t a1)
{
  result = qword_10005ECB0;
  if (!qword_10005ECB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003F268(uint64_t a1)
{
  sub_100048E98();
  if (v1 <= 0x3F)
  {
    sub_10003F30C(319);
    if (v2 <= 0x3F)
    {
      sub_10003F3E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003F30C(uint64_t a1)
{
  if (!qword_10005ECC0)
  {
    sub_100049058();
    sub_10003F3A0(&qword_10005DBF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = sub_100049338();
    if (!v2)
    {
      atomic_store(v1, &qword_10005ECC0);
    }
  }
}

uint64_t sub_10003F3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10003F3E8()
{
  if (!qword_10005ECC8)
  {
    v0 = sub_100049F78();
    if (!v1)
    {
      atomic_store(v0, &qword_10005ECC8);
    }
  }
}

unint64_t sub_10003F484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005ED00;
  if (!qword_10005ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsageTitleView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UsageTitleView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

id sub_10003F578()
{
  result = [objc_allocWithZone(NSDateComponentsFormatter) init];
  qword_10005ED10 = result;
  return result;
}

uint64_t sub_10003F5AC@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1000027D4(&qword_10005ED18, &qword_10004CB10);
  v7 = __chkstk_darwin(v6 - 8);
  v11 = v44 - v10;
  if ((a2 & 1) != 0 || a1 < 0.0)
  {
    v12 = 0xE200000000000000;
    v13 = 11565;
  }

  else
  {
    if (qword_10005D6E0 != -1)
    {
      swift_once();
    }

    v39 = qword_10005ED10;
    if (a1 < 60.0)
    {
      v40 = 128;
    }

    else
    {
      v40 = 96;
    }

    [qword_10005ED10 setAllowedUnits:v40];
    [v39 setUnitsStyle:1];
    v7 = [v39 stringFromTimeInterval:a1];
    if (v7)
    {
      v41 = v7;
      v13 = sub_100049E08();
      v12 = v42;
    }

    else
    {
      v13 = 0;
      v12 = 0xE000000000000000;
    }
  }

  *&v46 = v13;
  *(&v46 + 1) = v12;
  sub_100005540(v7, v8, v9);
  v14 = sub_100049938();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v52 = v18 & 1;
  v51 = 0;
  *&v46 = v14;
  *(&v46 + 1) = v16;
  LOBYTE(v47) = v18 & 1;
  *(&v47 + 1) = v20;
  *&v48 = KeyPath;
  *(&v48 + 1) = 0x3FE8000000000000;
  *&v49 = v22;
  *(&v49 + 1) = 1;
  v50 = 0;
  if (a2)
  {
    goto LABEL_13;
  }

  v23 = a1;
  if (a1 < 0.0)
  {
    goto LABEL_13;
  }

  if (qword_10005D6E0 != -1)
  {
    swift_once();
  }

  v24 = qword_10005ED10;
  v25 = v23 < 60.0 ? 128 : 96;
  [qword_10005ED10 setAllowedUnits:v25];
  [v24 setUnitsStyle:3];
  v26 = [v24 stringFromTimeInterval:v23];
  if (!v26)
  {
LABEL_13:
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v27 = v26;
    v28 = sub_100049E08();
    v30 = v29;
  }

  if (sub_100049E58())
  {
    *&v44[0] = v28;
    *(&v44[0] + 1) = v30;
    v31 = sub_100049938();
  }

  else
  {

    sub_100049748();
    v31 = sub_100049928();
  }

  v34 = v31;
  v35 = v32;
  v36 = v33;
  sub_1000027D4(&qword_10005ED20, &qword_10004CB78);
  sub_10003FB2C();
  sub_1000499D8();
  sub_1000036D0(v34, v35, v36 & 1);

  v44[2] = v48;
  v44[3] = v49;
  v45 = v50;
  v44[1] = v47;
  v44[0] = v46;
  sub_10003FC74(v44);
  v37 = (a3 + *(sub_1000027D4(&qword_10005ED50, &unk_10004CB98) + 36));
  sub_1000027D4(&qword_10005DB30, &qword_10004B6E0);
  sub_1000495B8();
  *v37 = swift_getKeyPath();
  return sub_10003FD04(v11, a3);
}

uint64_t sub_10003FA08(uint64_t a1)
{
  v2 = sub_1000495C8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100049648();
}

unint64_t sub_10003FB2C()
{
  result = qword_10005ED28;
  if (!qword_10005ED28)
  {
    sub_100003634(&qword_10005ED20, &qword_10004CB78);
    sub_10003FBD0();
    sub_10003FEA8(&qword_10005D860, &qword_10005D868, &qword_10004B330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED28);
  }

  return result;
}

unint64_t sub_10003FBD0()
{
  result = qword_10005ED30;
  if (!qword_10005ED30)
  {
    sub_100003634(&qword_10005ED38, &qword_10004CB80);
    sub_10003FEA8(&qword_10005ED40, &qword_10005ED48, &unk_10004CB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED30);
  }

  return result;
}

uint64_t sub_10003FC74(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005ED20, &qword_10004CB78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003FD04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027D4(&qword_10005ED18, &qword_10004CB10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003FD78()
{
  result = qword_10005ED58;
  if (!qword_10005ED58)
  {
    sub_100003634(&qword_10005ED50, &unk_10004CB98);
    sub_10003FE1C();
    sub_10003FEA8(&qword_10005ED68, &qword_10005DB30, &qword_10004B6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED58);
  }

  return result;
}

unint64_t sub_10003FE1C()
{
  result = qword_10005ED60;
  if (!qword_10005ED60)
  {
    sub_100003634(&qword_10005ED18, &qword_10004CB10);
    sub_10003FB2C();
    sub_100005850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED60);
  }

  return result;
}

uint64_t sub_10003FEA8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003634(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003FEFC()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005ED70);
  sub_1000143C0(v0, qword_10005ED70);
  return sub_1000492B8();
}

void *sub_10003FF84(uint64_t a1, uint64_t a2)
{
  v3 = sub_100040000();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  return sub_10001C140(v10, v11, v12);
}

id sub_100040000()
{
  v0 = sub_100048F18();
  v1 = *(v0 - 1);
  __chkstk_darwin(v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() fetchRequestMatchingLocalUser];
  v40 = 0;
  v5 = [v4 execute:&v40];

  v6 = v40;
  if (!v5)
  {
    v23 = v40;
    v24 = sub_100048F28();

    swift_willThrow();
    v40 = v24;
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    swift_dynamicCast();
    v0 = v39;
    if (qword_10005D6E8 == -1)
    {
LABEL_18:
      v25 = sub_1000492C8();
      sub_1000143C0(v25, qword_10005ED70);
      v26 = v0;
      v27 = sub_1000492A8();
      v28 = sub_10004A088();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch local user: %@", v29, 0xCu);
        sub_100034FA0(v30);

        v26 = v27;
        v27 = v31;
      }

      return 0;
    }

LABEL_32:
    swift_once();
    goto LABEL_18;
  }

  sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
  v7 = sub_100049F58();
  v8 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:

    if (qword_10005D6E8 != -1)
    {
      swift_once();
    }

    v35 = sub_1000492C8();
    sub_1000143C0(v35, qword_10005ED70);
    v36 = sub_1000492A8();
    v37 = sub_10004A088();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Fetching local user returned empty results.", v38, 2u);
    }

    return 0;
  }

  if (!sub_10004A308())
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_10004A1F8();
    goto LABEL_7;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = *(v7 + 32);
LABEL_7:
  v10 = v9;

  if (qword_10005D6E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1000492C8();
  sub_1000143C0(v11, qword_10005ED70);
  v12 = sub_1000492A8();
  v13 = sub_10004A0A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Successfully fetched local user.", v14, 2u);
  }

  sub_100048F08();
  v15 = [v10 givenName];
  if (v15)
  {
    v16 = v15;
    sub_100049E08();

    sub_100048ED8();
    v17 = [v10 familyName];
    if (v17)
    {
      v18 = v17;
      sub_100049E08();

      sub_100048EE8();
    }

    v19 = sub_1000492A8();
    v20 = sub_10004A0A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Successfully fetched given name of local user.", v21, 2u);
    }

    sub_100048EF8();
    v22 = [v10 dsid];
  }

  else
  {
    v22 = [v10 dsid];
    v32 = [objc_opt_self() mainBundle];
    v41._object = 0x80000001000539B0;
    v41._countAndFlagsBits = 0xD000000000000016;
    v42.value._countAndFlagsBits = 0;
    v42.value._object = 0;
    v33.super.isa = v32;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    sub_100048EC8(v41, v42, v33, v43, 0, 0xE000000000000000);
  }

  [v10 isParent];

  (*(v1 + 8))(v3, v0);
  return v22;
}

void sub_1000406C8(uint64_t a1)
{
  v111 = a1;
  v122 = sub_100048F18();
  v1 = *(v122 - 8);
  __chkstk_darwin(v122);
  v3 = &v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100040000();
  v109 = v7;
  if (v4)
  {
    v103 = v5;
    v105 = v4;
    v104 = v6;
    if ((v6 & 1) == 0)
    {
      goto LABEL_68;
    }

    v120 = v1;
    v110 = v3;
    v8 = [objc_opt_self() fetchRequest];
    v123 = sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
    v121 = "Intent Configuration";
    sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10004CBE0;
    *(v9 + 56) = &type metadata for String;
    v12 = sub_10001B17C(v9, v10, v11);
    *(v9 + 32) = 0xD000000000000018;
    *(v9 + 40) = 0x8000000100053FE0;
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v12;
    *(v9 + 64) = v12;
    *(v9 + 72) = 0xD000000000000010;
    *(v9 + 80) = 0x8000000100054000;
    v13 = STFamilyMemberTypeChild;
    v14 = sub_10001B134(0, &qword_10005ED88, NSString_ptr);
    *(v9 + 136) = v14;
    v15 = sub_100041568(&qword_10005ED90, &qword_10005ED88, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v9 + 112) = v13;
    *(v9 + 176) = &type metadata for String;
    *(v9 + 184) = v12;
    *(v9 + 144) = v15;
    *(v9 + 152) = 0xD000000000000010;
    *(v9 + 160) = 0x8000000100054000;
    v16 = STFamilyMemberTypeTeen;
    *(v9 + 216) = v14;
    *(v9 + 224) = v15;
    *(v9 + 192) = v16;
    v17 = v13;
    v18 = v16;
    v19 = sub_10004A068();
    [v8 setPredicate:v19];

    v126[0] = 0;
    v102 = v8;
    v20 = [v8 execute:v126];
    v21 = v126[0];
    if (v20)
    {
      v22 = v20;
      sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
      v101 = sub_100049F58();
      v23 = v21;

      if (qword_10005D6E8 != -1)
      {
        swift_once();
      }

      v24 = sub_1000492C8();
      v100 = sub_1000143C0(v24, qword_10005ED70);
      v25 = sub_1000492A8();
      v26 = sub_10004A0A8();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v110;
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Successfully fetched managed users.", v29, 2u);
      }

      v30 = 0;
      v31 = v101 & 0xFFFFFFFFFFFFFF8;
      if (v101 < 0)
      {
        v32 = v101;
      }

      else
      {
        v32 = v101 & 0xFFFFFFFFFFFFFF8;
      }

      v106 = v32;
      v114 = v101 & 0xC000000000000001;
      v113 = v101 + 32;
      v112 = (v120 + 8);
      v115 = v101 >> 62;
      v107 = v101 & 0xFFFFFFFFFFFFFF8;
      if (!(v101 >> 62))
      {
        goto LABEL_16;
      }

LABEL_14:
      if (v30 == sub_10004A308())
      {
        goto LABEL_67;
      }

      while (1)
      {
        if (v114)
        {
          v33 = sub_10004A1F8();
        }

        else
        {
          if (v30 >= *(v31 + 16))
          {
            goto LABEL_80;
          }

          v33 = *(v113 + 8 * v30);
        }

        v34 = v33;
        if (__OFADD__(v30++, 1))
        {
          goto LABEL_79;
        }

        v36 = [v33 givenName];
        if (!v36)
        {

          v90 = [v34 dsid];
          v91 = [v90 stringValue];

          v92 = sub_100049E08();
          v94 = v93;

          v95 = sub_1000492A8();
          v96 = sub_10004A088();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v125 = v98;
            *v97 = 136380675;
            v99 = sub_10003C4F8(v92, v94, &v125);

            *(v97 + 4) = v99;
            _os_log_impl(&_mh_execute_header, v95, v96, "Failed to fetch given name for remote user with dsid: %{private}s", v97, 0xCu);
            sub_100002890(v98);
          }

          else
          {
          }

          return;
        }

        v25 = v36;
        sub_100049E08();
        v38 = v37;

        sub_100048F08();

        sub_100048ED8();
        v39 = [v34 familyName];
        if (v39)
        {
          v25 = v39;
          sub_100049E08();

          sub_100048EE8();
        }

        v40 = sub_100048EF8();
        v42 = v41;
        v43 = [v34 userDeviceStates];
        if (!v43)
        {
          (*v112)(v28, v122);

          if (v115)
          {
            goto LABEL_14;
          }

          goto LABEL_16;
        }

        v44 = v43;
        v108 = v40;
        v118 = v38;
        v119 = v42;
        v120 = v30;
        v28 = &qword_10005E218;
        v45 = sub_10001B134(0, &qword_10005E218, STUserDeviceState_ptr);
        sub_100041568(&qword_10005E220, &qword_10005E218, STUserDeviceState_ptr, &protocol conformance descriptor for NSObject);
        v46 = sub_100049FE8();

        v121 = v34;
        v116 = v46;
        v123 = v45;
        if ((v46 & 0xC000000000000001) != 0)
        {
          v28 = (v46 < 0 ? v46 : v46 & 0xFFFFFFFFFFFFFF8);

          sub_10004A188();
          sub_10004A008();
          v46 = v126[0];
          v47 = v126[1];
          v25 = v126[2];
          v48 = v126[3];
          v49 = v126[4];
        }

        else
        {
          v50 = -1 << *(v46 + 32);
          v47 = (v46 + 56);
          v25 = ~v50;
          v51 = -v50;
          v52 = v51 < 64 ? ~(-1 << v51) : -1;
          v49 = (v52 & *(v46 + 56));

          v48 = 0;
        }

        v117 = v25;
        v53 = (v25 + 64) >> 6;
        if ((v46 & 0x8000000000000000) == 0)
        {
          break;
        }

        while (1)
        {
          v58 = sub_10004A198();
          if (!v58)
          {
            goto LABEL_47;
          }

          v124 = v58;
          swift_dynamicCast();
          v28 = v125;
          v56 = v48;
          v57 = v49;
          if (!v125)
          {
            goto LABEL_47;
          }

LABEL_43:
          v59 = [v28 device];
          if (!v59)
          {
            __break(1u);
          }

          v60 = v59;
          v25 = [v59 platform];

          if (v25 != 4)
          {
            break;
          }

          v48 = v56;
          v49 = v57;
          if ((v46 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }
        }

        v25 = [v121 dsid];
        v61 = v111;
        swift_beginAccess();
        v62 = *(v61 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v61 + 16) = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = sub_100023728(0, *(v62 + 2) + 1, 1, v62);
          *(v111 + 16) = v62;
        }

        v65 = *(v62 + 2);
        v64 = *(v62 + 3);
        if (v65 >= v64 >> 1)
        {
          v62 = sub_100023728((v64 > 1), v65 + 1, 1, v62);
        }

        *(v62 + 2) = v65 + 1;
        v66 = &v62[32 * v65];
        v67 = v108;
        *(v66 + 4) = v25;
        *(v66 + 5) = v67;
        *(v66 + 6) = v119;
        *(v66 + 28) = 256;
        *(v111 + 16) = v62;
        swift_endAccess();

        sub_1000415AC(v46);
        v28 = v110;
        (*v112)(v110, v122);
LABEL_48:
        v30 = v120;
        v31 = v107;
        if (v115)
        {
          goto LABEL_14;
        }

LABEL_16:
        if (v30 == *(v31 + 16))
        {
LABEL_67:

LABEL_68:
          v83 = v111;
          swift_beginAccess();
          v28 = *(v83 + 16);
          v25 = v105;

          v84 = swift_isUniquelyReferenced_nonNull_native();
          *(v83 + 16) = v28;
          if ((v84 & 1) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_69;
        }
      }

LABEL_35:
      v54 = v48;
      v55 = v49;
      v56 = v48;
      if (v49)
      {
LABEL_39:
        v57 = (v55 - 1) & v55;
        v28 = *(*(v46 + 48) + ((v56 << 9) | (8 * __clz(__rbit64(v55)))));
        if (v28)
        {
          goto LABEL_43;
        }
      }

      else
      {
        while (1)
        {
          v56 = (v54 + 1);
          if (__OFADD__(v54, 1))
          {
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            v28 = sub_100023728(0, *(v28 + 2) + 1, 1, v28);
            *(v111 + 16) = v28;
LABEL_69:
            v86 = *(v28 + 2);
            v85 = *(v28 + 3);
            if (v86 >= v85 >> 1)
            {
              v28 = sub_100023728((v85 > 1), v86 + 1, 1, v28);
            }

            *(v28 + 2) = v86 + 1;
            v87 = &v28[32 * v86];
            v88 = v103;
            *(v87 + 4) = v25;
            *(v87 + 5) = v88;
            *(v87 + 6) = v109;
            v89 = BYTE1(v104);
            v87[56] = v104 & 1;
            v87[57] = v89 & 1;
            *(v111 + 16) = v28;
            swift_endAccess();

            return;
          }

          if (v56 >= v53)
          {
            break;
          }

          v55 = v47[v56];
          ++v54;
          if (v55)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_47:
      v28 = v110;
      (*v112)(v110, v122);

      sub_1000415AC(v46);
      goto LABEL_48;
    }

    v72 = v126[0];
    v73 = sub_100048F28();

    swift_willThrow();
    v126[0] = v73;
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    swift_dynamicCast();
    v74 = v125;
    if (qword_10005D6E8 != -1)
    {
      swift_once();
    }

    v75 = sub_1000492C8();
    sub_1000143C0(v75, qword_10005ED70);
    v76 = v74;
    v77 = sub_1000492A8();
    v78 = sub_10004A088();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412290;
      *(v79 + 4) = v76;
      *v80 = v76;
      v81 = v76;
      _os_log_impl(&_mh_execute_header, v77, v78, "Failed to fetch managed users: %@", v79, 0xCu);
      sub_100034FA0(v80);

      v82 = v77;
      v77 = v81;
    }

    else
    {

      v82 = v105;
    }
  }

  else
  {
    if (qword_10005D6E8 != -1)
    {
      swift_once();
    }

    v68 = sub_1000492C8();
    sub_1000143C0(v68, qword_10005ED70);
    v123 = sub_1000492A8();
    v69 = sub_10004A088();
    if (os_log_type_enabled(v123, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v123, v69, "couldn't fetch local user", v70, 2u);
    }

    v71 = v123;
  }
}

uint64_t sub_100041568(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001B134(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1000415B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1000415C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_100041610(uint64_t result, int a2, int a3)
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

uint64_t sub_100041678(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UsageTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000027D4(&qword_10005E740, "L5");
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1000027D4(&qword_10005E518, &unk_10004C020);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = sub_1000027D4(&qword_10005ED98, qword_10004CC58);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1000418BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UsageTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000027D4(&qword_10005E740, "L5");
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1000027D4(&qword_10005E518, &unk_10004C020);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
  }

  else
  {
    v18 = sub_1000027D4(&qword_10005ED98, qword_10004CC58);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[9];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t type metadata accessor for WidgetView(uint64_t a1)
{
  result = qword_10005EDF8;
  if (!qword_10005EDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041B3C(uint64_t a1)
{
  type metadata accessor for UsageTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100041CC8(319, &unk_10005E7B0, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_100041CC8(319, &unk_10005E588, &type metadata accessor for WidgetFamily);
      if (v3 <= 0x3F)
      {
        sub_100041CC8(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
        if (v4 <= 0x3F)
        {
          sub_100041D1C(319, &qword_10005EE08, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            sub_100041CC8(319, &qword_10005EE10, &type metadata accessor for DynamicTypeSize);
            if (v6 <= 0x3F)
            {
              sub_100041D1C(319, &unk_10005EE18, &type metadata for EdgeInsets);
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

void sub_100041CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100049518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100041D1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_100049518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100041D84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100049708();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000027D4(&qword_10005E658, &qword_10004C640);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WidgetView(0);
  sub_1000055FC(v1 + *(v10 + 20), v9, &qword_10005E658, &qword_10004C640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100049508();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004A098();
    v13 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100041F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100049708();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000027D4(&qword_10005E3D8, &qword_10004BEE8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WidgetView(0);
  sub_1000055FC(v1 + *(v10 + 24), v9, &qword_10005E3D8, &qword_10004BEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100049CB8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004A098();
    v13 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100042194@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100049708();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WidgetView(0);
  sub_1000055FC(v1 + *(v10 + 28), v9, &qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100049C78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004A098();
    v13 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10004239C()
{
  v1 = sub_100049708();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for WidgetView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10004A098();
    v7 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();
    sub_100046EB8(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

double sub_1000424F4()
{
  v1 = sub_100049708();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for WidgetView(0) + 40);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  sub_10004A098();
  v11 = sub_100049858();
  sub_100049298();

  sub_1000496F8();
  swift_getAtKeyPath();
  sub_100047358(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_100042680@<X0>(uint64_t a1@<X8>)
{
  v34[1] = a1;
  v35 = sub_100049838();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100049508();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v34 - v10;
  v12 = sub_1000027D4(&qword_10005EE60, &qword_10004CCD8);
  __chkstk_darwin(v12);
  v14 = v34 - v13;
  v15 = *&v1[*(type metadata accessor for UsageTimelineEntry(0) + 52)];
  v16 = -sub_1000424F4();
  sub_1000424F4();
  v18 = -v17;
  sub_1000424F4();
  v20 = -v19;
  sub_1000424F4();
  v22 = -v21;
  sub_1000424F4();
  v24 = -v23;
  sub_1000424F4();
  v26 = -v25;
  *v14 = sub_100049728();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v27 = sub_1000027D4(&qword_10005EE68, &unk_10004CCE0);
  sub_100042C9C(v1, v15, &v14[*(v27 + 44)], 0.0, v22, v24, v26, v16, 0.0, v18, v20);
  sub_100041D84(v11);
  (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5);
  v28 = sub_1000494F8();
  v29 = *(v6 + 8);
  v29(v9, v5);
  v29(v11, v5);
  v30 = objc_opt_self();
  v31 = &selRef_systemBackgroundColor;
  if ((v28 & 1) == 0)
  {
    v31 = &selRef_systemGray6Color;
  }

  v32 = [v30 *v31];
  v36 = sub_100049AA8();
  sub_100049828();
  sub_100005708(&qword_10005EE70, &qword_10005EE60, &qword_10004CCD8, &protocol conformance descriptor for HStack<A>);
  sub_100049A28();
  (*(v2 + 8))(v4, v35);

  return sub_100005664(v14, &qword_10005EE60, &qword_10004CCD8);
}

uint64_t sub_100042A20()
{
  v23 = sub_100049508();
  v0 = *(v23 - 8);
  v1 = __chkstk_darwin(v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v22 - v4;
  v6 = sub_100049C78();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  sub_100042194(&v22 - v11);
  sub_100049C68();
  v13 = sub_100049C58();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if (v13)
  {
    return sub_100049A78();
  }

  sub_100041D84(v5);
  v16 = v23;
  (*(v0 + 104))(v3, enum case for ColorScheme.light(_:), v23);
  v17 = sub_1000494F8();
  v18 = *(v0 + 8);
  v18(v3, v16);
  v18(v5, v16);
  v19 = objc_opt_self();
  if (v17)
  {
    v20 = [v19 secondarySystemBackgroundColor];
  }

  else
  {
    v20 = [v19 systemGray5Color];
  }

  v21 = v20;
  return sub_100049AA8();
}

uint64_t sub_100042C9C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  v50 = a3;
  v21 = sub_100049CB8();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v49 - v26;
  v28 = sub_1000027D4(&qword_10005EE78, &qword_10004CCF0);
  v29 = __chkstk_darwin(v28 - 8);
  v49 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v49 - v31;
  *v32 = sub_100049788();
  *(v32 + 1) = 0;
  v32[16] = 0;
  v33 = sub_1000027D4(&qword_10005EE80, &qword_10004CCF8);
  sub_100043378(a1, a2, &v32[*(v33 + 44)], a4, a5, a6, a7);
  sub_100041F8C(v27);
  (*(v22 + 104))(v25, enum case for WidgetFamily.systemMedium(_:), v21);
  sub_1000469D0();
  sub_100049F38();
  sub_100049F38();
  v34 = *(v22 + 8);
  v34(v25, v21);
  v34(v27, v21);
  if (v58[0] == v57[0])
  {
    if (*(a2 + 16))
    {
      sub_1000027D4(&qword_10005EE98, &qword_10004CD10);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_10004B5A0;
      v36 = sub_100049868();
      *(v35 + 32) = v36;
      v37 = sub_100049888();
      *(v35 + 33) = v37;
      v38 = sub_100049878();
      sub_100049878();
      if (sub_100049878() != v36)
      {
        v38 = sub_100049878();
      }

      sub_100049878();
      if (sub_100049878() != v37)
      {
        v38 = sub_100049878();
      }

      sub_1000465C4(a2, v58);
      memcpy(v51, v58, 0x120uLL);
      memcpy(v55, v58, 0x120uLL);
      sub_1000055FC(v51, v57, &qword_10005EEA0, &qword_10004CD18);
      sub_100005664(v55, &qword_10005EEA0, &qword_10004CD18);
      memcpy(&v53[7], v51, 0x120uLL);
      v39 = sub_100049898();
      v54 = 0;
      LOBYTE(v58[0]) = v38;
      memcpy(v58 + 1, v53, 0x127uLL);
      LOBYTE(v58[37]) = v39;
      *&v58[38] = a8;
      *&v58[39] = a9;
      *&v58[40] = a10;
      *&v58[41] = a11;
      LOBYTE(v58[42]) = 0;
      sub_100046A64(v58);
    }

    else
    {
      sub_1000027D4(&qword_10005EE98, &qword_10004CD10);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10004B5A0;
      v41 = sub_100049868();
      *(v40 + 32) = v41;
      v42 = sub_100049888();
      *(v40 + 33) = v42;
      v43 = sub_100049878();
      sub_100049878();
      if (sub_100049878() != v41)
      {
        v43 = sub_100049878();
      }

      sub_100049878();
      if (sub_100049878() != v42)
      {
        v43 = sub_100049878();
      }

      sub_100046114(a1, v58);
      memcpy(v51, v58, sizeof(v51));
      memcpy(v55, v58, 0x130uLL);
      sub_1000055FC(v51, v57, &qword_10005EEE8, &qword_10004CD40);
      sub_100005664(v55, &qword_10005EEE8, &qword_10004CD40);
      memcpy(&v52[7], v51, 0x130uLL);
      v44 = sub_100049898();
      v54 = 0;
      LOBYTE(v58[0]) = v43;
      memcpy(v58 + 1, v52, 0x137uLL);
      LOBYTE(v58[39]) = v44;
      *&v58[40] = a8;
      *&v58[41] = a9;
      *&v58[42] = a10;
      *&v58[43] = a11;
      LOBYTE(v58[44]) = 0;
      sub_100046BE0(v58);
    }

    memcpy(v56, v58, 0x162uLL);
    sub_1000027D4(&qword_10005EEA8, &qword_10004CD20);
    sub_1000027D4(&qword_10005EEB0, &qword_10004CD28);
    sub_100046A70();
    sub_100046B28();
    sub_1000497E8();
    memcpy(v56, v57, 0x162uLL);
    STSelectUserIntentResponseCode.rawValue.getter();
    memcpy(v58, v56, 0x162uLL);
  }

  else
  {
    sub_100046A28(v58);
  }

  v45 = v49;
  sub_1000055FC(v32, v49, &qword_10005EE78, &qword_10004CCF0);
  memcpy(v55, v58, 0x162uLL);
  v46 = v50;
  sub_1000055FC(v45, v50, &qword_10005EE78, &qword_10004CCF0);
  v47 = *(sub_1000027D4(&qword_10005EE88, &qword_10004CD00) + 48);
  memcpy(v56, v55, 0x162uLL);
  memcpy((v46 + v47), v55, 0x162uLL);
  sub_1000055FC(v56, v57, &qword_10005EE90, &qword_10004CD08);
  sub_100005664(v32, &qword_10005EE78, &qword_10004CCF0);
  memcpy(v57, v55, 0x162uLL);
  sub_100005664(v57, &qword_10005EE90, &qword_10004CD08);
  return sub_100005664(v45, &qword_10005EE78, &qword_10004CCF0);
}

uint64_t sub_100043378@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v118 = a2;
  v130 = a3;
  v12 = sub_1000027D4(&qword_10005EF00, &qword_10004CD70);
  __chkstk_darwin(v12 - 8);
  v116 = &v110 - v13;
  v123 = sub_1000027D4(&qword_10005EF08, &qword_10004CD78);
  v14 = __chkstk_darwin(v123);
  v115 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v117 = &v110 - v16;
  v121 = sub_1000027D4(&qword_10005EF10, &qword_10004CD80);
  __chkstk_darwin(v121);
  v122 = &v110 - v17;
  v18 = sub_1000027D4(&qword_10005EF18, &qword_10004CD88);
  __chkstk_darwin(v18 - 8);
  v113 = &v110 - v19;
  v120 = sub_1000027D4(&qword_10005EF20, &qword_10004CD90);
  v20 = __chkstk_darwin(v120);
  v112 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v110 - v22;
  v127 = sub_1000027D4(&qword_10005EF28, &qword_10004CD98);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v119 = &v110 - v23;
  v24 = sub_1000027D4(&qword_10005EF30, &qword_10004CDA0);
  v25 = __chkstk_darwin(v24 - 8);
  v129 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v128 = &v110 - v27;
  v28 = sub_100049CB8();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v110 - v33;
  v35 = sub_1000027D4(&qword_10005EF38, &qword_10004CDA8);
  __chkstk_darwin(v35 - 8);
  v37 = &v110 - v36;
  v38 = sub_1000027D4(&qword_10005EF40, &qword_10004CDB0);
  __chkstk_darwin(v38);
  v131 = &v110 - v39;
  v124 = sub_1000027D4(&qword_10005EF48, &qword_10004CDB8);
  v40 = __chkstk_darwin(v124);
  v125 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v44 = &v110 - v43;
  __chkstk_darwin(v42);
  v132 = &v110 - v45;
  *v37 = sub_100049798();
  *(v37 + 1) = 0x4020000000000000;
  v37[16] = 0;
  v46 = sub_1000027D4(&qword_10005EF50, &qword_10004CDC0);
  sub_100044110(a1, &v37[*(v46 + 44)]);
  v47 = sub_1000498C8();
  if (sub_10004239C())
  {
    sub_100041F8C(v34);
    (*(v29 + 104))(v32, enum case for WidgetFamily.systemMedium(_:), v28);
    sub_1000469D0();
    v111 = v44;
    v48 = v47;
    v49 = v38;
    v50 = a1;
    sub_100049F38();
    sub_100049F38();
    v51 = *(v29 + 8);
    v51(v32, v28);
    v51(v34, v28);
    a1 = v50;
    v38 = v49;
    v47 = v48;
    v44 = v111;
  }

  sub_1000494E8();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v131;
  sub_100004DF8(v37, v131, &qword_10005EF38, &qword_10004CDA8);
  v61 = v60 + *(v38 + 36);
  *v61 = v47;
  *(v61 + 8) = v53;
  *(v61 + 16) = v55;
  *(v61 + 24) = v57;
  *(v61 + 32) = v59;
  *(v61 + 40) = 0;
  v62 = sub_1000498A8();
  if (sub_10004239C())
  {
    sub_100041F8C(v34);
    v63 = enum case for WidgetFamily.systemLarge(_:);
    (*(v29 + 104))(v32, enum case for WidgetFamily.systemLarge(_:), v28);
    sub_1000469D0();
    sub_100049F38();
    sub_100049F38();
    v64 = *(v29 + 8);
    v64(v32, v28);
    v64(v34, v28);
  }

  else
  {
    v63 = enum case for WidgetFamily.systemLarge(_:);
  }

  sub_1000494E8();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  sub_100004DF8(v131, v44, &qword_10005EF40, &qword_10004CDB0);
  v73 = &v44[*(v124 + 36)];
  *v73 = v62;
  *(v73 + 1) = v66;
  *(v73 + 2) = v68;
  *(v73 + 3) = v70;
  *(v73 + 4) = v72;
  v73[40] = 0;
  sub_100004DF8(v44, v132, &qword_10005EF48, &qword_10004CDB8);
  sub_100041F8C(v34);
  (*(v29 + 104))(v32, v63, v28);
  sub_1000469D0();
  sub_100049F38();
  sub_100049F38();
  v74 = *(v29 + 8);
  v74(v32, v28);
  v74(v34, v28);
  if (v134 == v133)
  {
    v75 = a1;
    v76 = v118;
    v77 = *(v118 + 16);
    sub_1000027D4(&qword_10005EE98, &qword_10004CD10);
    v78 = v128;
    if (v77)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10004B5A0;
      v80 = sub_100049868();
      *(inited + 32) = v80;
      v81 = sub_100049888();
      *(inited + 33) = v81;
      v82 = sub_100049878();
      sub_100049878();
      v83 = sub_100049878();
      v84 = v119;
      if (v83 != v80)
      {
        v82 = sub_100049878();
      }

      sub_100049878();
      if (sub_100049878() != v81)
      {
        v82 = sub_100049878();
      }

      v85 = v116;
      *v116 = v82;
      v86 = sub_1000027D4(&qword_10005EF60, &qword_10004CDD0);
      sub_100045A9C(v76, v75, v85 + *(v86 + 44));
      v87 = sub_100049898();
      v88 = v115;
      sub_100004DF8(v85, v115, &qword_10005EF00, &qword_10004CD70);
      v89 = v88 + *(v123 + 36);
      *v89 = v87;
      *(v89 + 8) = a4;
      *(v89 + 16) = a5;
      *(v89 + 24) = a6;
      *(v89 + 32) = a7;
      *(v89 + 40) = 0;
      v90 = &qword_10005EF08;
      v91 = &qword_10004CD78;
      v92 = v117;
      sub_100004DF8(v88, v117, &qword_10005EF08, &qword_10004CD78);
      sub_1000055FC(v92, v122, &qword_10005EF08, &qword_10004CD78);
      swift_storeEnumTagMultiPayload();
      sub_100046CD8();
      sub_100046D90();
    }

    else
    {
      v94 = swift_initStackObject();
      *(v94 + 16) = xmmword_10004B5A0;
      v95 = sub_100049868();
      *(v94 + 32) = v95;
      v96 = sub_100049888();
      *(v94 + 33) = v96;
      v97 = sub_100049878();
      sub_100049878();
      v98 = sub_100049878();
      v84 = v119;
      if (v98 != v95)
      {
        v97 = sub_100049878();
      }

      sub_100049878();
      if (sub_100049878() != v96)
      {
        v97 = sub_100049878();
      }

      v99 = v113;
      *v113 = v97;
      v100 = sub_1000027D4(&qword_10005EF88, &qword_10004CDD8);
      sub_100045488(v75, v99 + *(v100 + 44));
      v101 = sub_100049898();
      v102 = v112;
      sub_100004DF8(v99, v112, &qword_10005EF18, &qword_10004CD88);
      v103 = v102 + *(v120 + 36);
      *v103 = v101;
      *(v103 + 8) = a4;
      *(v103 + 16) = a5;
      *(v103 + 24) = a6;
      *(v103 + 32) = a7;
      *(v103 + 40) = 0;
      v90 = &qword_10005EF20;
      v91 = &qword_10004CD90;
      v92 = v114;
      sub_100004DF8(v102, v114, &qword_10005EF20, &qword_10004CD90);
      sub_1000055FC(v92, v122, &qword_10005EF20, &qword_10004CD90);
      swift_storeEnumTagMultiPayload();
      sub_100046CD8();
      sub_100046D90();
    }

    sub_1000497E8();
    sub_100005664(v92, v90, v91);
    sub_100004DF8(v84, v78, &qword_10005EF28, &qword_10004CD98);
    v93 = 0;
  }

  else
  {
    v93 = 1;
    v78 = v128;
  }

  (*(v126 + 56))(v78, v93, 1, v127);
  v104 = v132;
  v105 = v125;
  sub_1000055FC(v132, v125, &qword_10005EF48, &qword_10004CDB8);
  v106 = v129;
  sub_1000055FC(v78, v129, &qword_10005EF30, &qword_10004CDA0);
  v107 = v130;
  sub_1000055FC(v105, v130, &qword_10005EF48, &qword_10004CDB8);
  v108 = sub_1000027D4(&qword_10005EF58, &qword_10004CDC8);
  sub_1000055FC(v106, v107 + *(v108 + 48), &qword_10005EF30, &qword_10004CDA0);
  sub_100005664(v78, &qword_10005EF30, &qword_10004CDA0);
  sub_100005664(v104, &qword_10005EF48, &qword_10004CDB8);
  sub_100005664(v106, &qword_10005EF30, &qword_10004CDA0);
  return sub_100005664(v105, &qword_10005EF48, &qword_10004CDB8);
}

uint64_t sub_100044110@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = sub_100049CB8();
  v124 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v123 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v122 = v114 - v6;
  v121 = type metadata accessor for ScreenTimeWidgetGraph(0);
  v7 = __chkstk_darwin(v121);
  v126 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v129 = (v114 - v9);
  v10 = sub_1000027D4(&qword_10005EFC0, &qword_10004CE40);
  __chkstk_darwin(v10);
  v12 = v114 - v11;
  v13 = sub_1000027D4(&qword_10005EFC8, &qword_10004CE48);
  __chkstk_darwin(v13);
  v15 = (v114 - v14);
  v16 = sub_1000027D4(&qword_10005EFD0, &qword_10004CE50);
  __chkstk_darwin(v16);
  v18 = v114 - v17;
  v19 = sub_1000027D4(&qword_10005EFD8, &qword_10004CE58);
  __chkstk_darwin(v19);
  v21 = v114 - v20;
  v22 = sub_1000027D4(&qword_10005EFE0, &qword_10004CE60);
  v23 = __chkstk_darwin(v22 - 8);
  v125 = v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v128 = v114 - v25;
  v26 = *a1 == 1;
  v120 = v13;
  v119 = v19;
  v118 = v15;
  if (v26)
  {
    sub_100049748();
    v27 = sub_100049928();
    v115 = v21;
    v28 = v27;
    v30 = v29;
    v116 = v3;
    v32 = v31;
    sub_1000498E8();
    v33 = sub_100049918();
    v114[0] = v16;
    v34 = v33;
    v117 = a1;
    v36 = v35;
    v38 = v37;
    v114[1] = v10;

    sub_1000036D0(v28, v30, v32 & 1);

    v39 = [objc_opt_self() secondaryLabelColor];
    sub_100049AA8();
    v40 = sub_100049908();
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = v36;
    a1 = v117;
    sub_1000036D0(v34, v47, v38 & 1);

    *v18 = v40;
    *(v18 + 1) = v42;
    v18[16] = v44 & 1;
    *(v18 + 3) = v46;
    swift_storeEnumTagMultiPayload();
    sub_10004718C(v40, v42, v44 & 1);
    sub_100005708(&qword_10005EFF0, &qword_10005EFC0, &qword_10004CE40, &protocol conformance descriptor for HStack<A>);

    v48 = v115;
    sub_1000497E8();
    sub_1000055FC(v48, v118, &qword_10005EFD8, &qword_10004CE58);
    swift_storeEnumTagMultiPayload();
    sub_100046EC4();
    sub_1000497E8();
    v49 = v40;
    v3 = v116;
    sub_1000036D0(v49, v42, v44 & 1);

    sub_100005664(v48, &qword_10005EFD8, &qword_10004CE58);
  }

  else
  {
    v50 = type metadata accessor for UsageTimelineEntry(0);
    if ((a1[*(v50 + 60)] & 1) != 0 || a1[*(v50 + 56)] == 1)
    {
      *v12 = sub_100049738();
      *(v12 + 1) = 0;
      v12[16] = 1;
      v51 = sub_1000027D4(&qword_10005F010, &qword_10004CE78);
      sub_100044DF4(a1, &v12[*(v51 + 44)]);
      sub_1000055FC(v12, v18, &qword_10005EFC0, &qword_10004CE40);
      swift_storeEnumTagMultiPayload();
      sub_100005708(&qword_10005EFF0, &qword_10005EFC0, &qword_10004CE40, &protocol conformance descriptor for HStack<A>);
      sub_1000497E8();
      sub_1000055FC(v21, v118, &qword_10005EFD8, &qword_10004CE58);
      swift_storeEnumTagMultiPayload();
      sub_100046EC4();
      sub_1000497E8();
      sub_100005664(v21, &qword_10005EFD8, &qword_10004CE58);
      sub_100005664(v12, &qword_10005EFC0, &qword_10004CE40);
    }

    else
    {
      sub_100049748();
      v52 = sub_100049928();
      v54 = v53;
      v116 = v3;
      v56 = v55;
      v117 = a1;
      sub_1000498E8();
      v57 = sub_100049918();
      v59 = v58;
      v61 = v60;

      sub_1000036D0(v52, v54, v56 & 1);

      v62 = [objc_opt_self() secondaryLabelColor];
      sub_100049AA8();
      v63 = sub_100049908();
      v65 = v64;
      v67 = v66;
      v69 = v68;

      sub_1000036D0(v57, v59, v61 & 1);

      v70 = v118;
      *v118 = v63;
      v70[1] = v65;
      v3 = v116;
      v71 = v67 & 1;
      a1 = v117;
      *(v70 + 16) = v71;
      v70[3] = v69;
      swift_storeEnumTagMultiPayload();
      sub_100046EC4();
      sub_1000497E8();
    }
  }

  v72 = type metadata accessor for UsageTimelineEntry(0);
  v73 = v72[10];
  v74 = *&a1[v72[11]];
  v75 = v121;
  v76 = *(v121 + 24);
  v77 = sub_100048E98();
  v78 = v129;
  (*(*(v77 - 8) + 16))(v129 + v76, &a1[v73], v77);
  *v78 = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  *(v78 + *(v75 + 20)) = v74;

  v79 = v122;
  sub_100041F8C(v122);
  v81 = v123;
  v80 = v124;
  (*(v124 + 104))(v123, enum case for WidgetFamily.systemLarge(_:), v3);
  sub_1000469D0();
  sub_100049F38();
  sub_100049F38();
  v82 = *(v80 + 8);
  v82(v81, v3);
  v82(v79, v3);
  if (v134 == v130)
  {
    v83 = *&a1[v72[16]];
    v84 = *(v83 + 16);
    if (v84)
    {
      sub_1000027D4(&qword_10005DBF8, &qword_10004CE70);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_10004C530;
      v86 = objc_opt_self();

      v87 = [v86 systemBlueColor];
      *(v85 + 32) = sub_100049AA8();
      v88 = [v86 systemTealColor];
      *(v85 + 40) = sub_100049AA8();
      v89 = [v86 systemOrangeColor];
      v90 = sub_100049AA8();
      *(v85 + 48) = v90;
      v130 = v83;
      v131 = v84;
      v132 = v85;
      v133 = 1;
    }

    else
    {
      v96 = a1[v72[14]];
      sub_1000027D4(&qword_10005DBF8, &qword_10004CE70);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_10004C530;
      v98 = objc_opt_self();
      v99 = [v98 systemBlueColor];
      *(v97 + 32) = sub_100049AA8();
      v100 = [v98 systemTealColor];
      *(v97 + 40) = sub_100049AA8();
      v101 = [v98 systemOrangeColor];
      v90 = sub_100049AA8();
      *(v97 + 48) = v90;
      v130 = v96;
      v131 = 3;
      v132 = v97;
      v133 = 0;
    }

    v102 = sub_1000470E4(v90, v91, v92);
    sub_100047138(v102, v103, v104);
    sub_1000497E8();
    v93 = v135;
    v94 = v136;
    v95 = v137;
    v124 = v134;
  }

  else
  {
    v124 = 0;
    v93 = 0;
    v94 = 0;
    v95 = -1;
  }

  v105 = v128;
  v106 = v125;
  sub_1000055FC(v128, v125, &qword_10005EFE0, &qword_10004CE60);
  v107 = v129;
  v108 = v126;
  sub_100046F7C(v129, v126);
  v109 = v127;
  sub_1000055FC(v106, v127, &qword_10005EFE0, &qword_10004CE60);
  v110 = sub_1000027D4(&qword_10005EFF8, &qword_10004CE68);
  sub_100046F7C(v108, v109 + *(v110 + 48));
  v111 = v109 + *(v110 + 64);
  v112 = v124;
  *v111 = v124;
  *(v111 + 8) = v93;
  *(v111 + 16) = v94;
  *(v111 + 24) = v95;
  sub_100046FE0(v112, v93, v94, v95);
  sub_100047034(v107);
  sub_100005664(v105, &qword_10005EFE0, &qword_10004CE60);
  sub_100047090(v112, v93, v94, v95);
  sub_100047034(v108);
  return sub_100005664(v106, &qword_10005EFE0, &qword_10004CE60);
}

uint64_t sub_100044DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_100049778();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000027D4(&qword_10005F018, &qword_10004CE80);
  v7 = __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = sub_1000027D4(&qword_10005E828, &qword_10004C438);
  __chkstk_darwin(v12 - 8);
  v44 = &v41 - v13;
  v14 = sub_100049AC8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000027D4(&qword_10005E840, &unk_10004C450);
  v46 = *(v18 - 8);
  v47 = v18;
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = sub_1000027D4(&qword_10005F020, &qword_10004CE88);
  v22 = __chkstk_darwin(v21 - 8);
  v48 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v51 = &v41 - v24;
  v45 = type metadata accessor for UsageTimelineEntry(0);
  v25 = *(a1 + *(v45 + 72));
  if (v25)
  {
    v26 = v25;
    sub_100049AB8();
    v42 = a1;
    (*(v15 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v14);
    sub_100049AE8();
    v43 = v11;

    (*(v15 + 8))(v17, v14);
    v27 = v44;
    sub_100049C98();
    v28 = sub_100049CA8();
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    sub_100049AD8();
    v11 = v43;

    sub_100005664(v27, &qword_10005E828, &qword_10004C438);
    sub_100049B68();
    sub_100049528();
    v29 = &v20[*(sub_1000027D4(&qword_10005E838, &qword_10004C448) + 36)];
    v30 = v57;
    *v29 = v56;
    *(v29 + 1) = v30;
    *(v29 + 2) = v58;
    v31 = v47;
    v20[*(v47 + 36)] = 1;
    a1 = v42;
    v32 = v51;
    sub_100004DF8(v20, v51, &qword_10005E840, &unk_10004C450);
    (*(v46 + 56))(v32, 0, 1, v31);
  }

  else
  {
    (*(v46 + 56))(v51, 1, 1, v47);
  }

  v33 = *(a1 + *(v45 + 68));
  v34 = sub_1000498D8();
  KeyPath = swift_getKeyPath();
  v52 = v33;
  v53 = 0;
  v54 = KeyPath;
  v55 = v34;
  v36 = v49;
  sub_100049768();
  sub_1000027D4(&qword_10005F028, &qword_10004CEC0);
  sub_10004724C();
  sub_1000499F8();
  (*(v4 + 8))(v36, v50);

  sub_100049578();
  sub_100005664(v9, &qword_10005F018, &qword_10004CE80);
  v37 = v51;
  v38 = v48;
  sub_1000055FC(v51, v48, &qword_10005F020, &qword_10004CE88);
  sub_1000055FC(v11, v9, &qword_10005F018, &qword_10004CE80);
  sub_1000055FC(v38, a2, &qword_10005F020, &qword_10004CE88);
  v39 = sub_1000027D4(&qword_10005F050, &unk_10004CED0);
  sub_1000055FC(v9, a2 + *(v39 + 48), &qword_10005F018, &qword_10004CE80);
  sub_100005664(v11, &qword_10005F018, &qword_10004CE80);
  sub_100005664(v37, &qword_10005F020, &qword_10004CE88);
  sub_100005664(v9, &qword_10005F018, &qword_10004CE80);
  return sub_100005664(v38, &qword_10005F020, &qword_10004CE88);
}

uint64_t sub_100045488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for MostUsedItemsPlaceholderView(0);
  v4 = (v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (v61 - v8);
  v10 = sub_1000027D4(&qword_10005EF90, &qword_10004CDE0) - 8;
  v62 = v10;
  v11 = __chkstk_darwin(v10);
  v67 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v61 - v13;
  v15 = sub_1000027D4(&qword_10005EF98, &qword_10004CDE8) - 8;
  v16 = __chkstk_darwin(v15);
  v69 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v68 = v61 - v19;
  v20 = __chkstk_darwin(v18);
  v65 = v61 - v21;
  v22 = __chkstk_darwin(v20);
  v66 = v61 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = v61 - v25;
  __chkstk_darwin(v24);
  v64 = v61 - v27;
  v28 = *(a1 + *(type metadata accessor for UsageTimelineEntry(0) + 56));
  v63 = v28;
  v61[1] = a1;
  *v9 = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  *(v9 + v4[7]) = 2;
  *(v9 + v4[8]) = 3;
  *(v9 + v4[9]) = v28;
  sub_100049B68();
  sub_100049598();
  sub_100046E50(v9, v14, type metadata accessor for MostUsedItemsPlaceholderView);
  v29 = &v14[*(v10 + 44)];
  v30 = v76;
  *(v29 + 4) = v75;
  *(v29 + 5) = v30;
  *(v29 + 6) = v77;
  v31 = v72;
  *v29 = v71;
  *(v29 + 1) = v31;
  v32 = v74;
  *(v29 + 2) = v73;
  *(v29 + 3) = v32;
  v33 = sub_100049B68();
  v35 = v34;
  v36 = sub_100042A20();
  sub_100004DF8(v14, v26, &qword_10005EF90, &qword_10004CDE0);
  v37 = v15;
  v38 = &v26[*(v15 + 44)];
  *v38 = v36;
  v38[1] = v33;
  v38[2] = v35;
  v39 = v64;
  sub_100004DF8(v26, v64, &qword_10005EF98, &qword_10004CDE8);
  *v7 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v7 + v4[7]) = 2;
  *(v7 + v4[8]) = 2;
  *(v7 + v4[9]) = v63;
  sub_100049B68();
  sub_100049598();
  v40 = v67;
  sub_100046E50(v7, v67, type metadata accessor for MostUsedItemsPlaceholderView);
  v41 = (v40 + *(v62 + 44));
  v42 = v83;
  v41[4] = v82;
  v41[5] = v42;
  v41[6] = v84;
  v43 = v79;
  *v41 = v78;
  v41[1] = v43;
  v44 = v81;
  v41[2] = v80;
  v41[3] = v44;
  v45 = sub_100049B68();
  v47 = v46;
  v48 = sub_100042A20();
  v49 = v40;
  v50 = v65;
  sub_100004DF8(v49, v65, &qword_10005EF90, &qword_10004CDE0);
  v51 = (v50 + *(v37 + 44));
  *v51 = v48;
  v51[1] = v45;
  v51[2] = v47;
  v52 = v50;
  v53 = v66;
  sub_100004DF8(v52, v66, &qword_10005EF98, &qword_10004CDE8);
  v54 = v68;
  sub_1000055FC(v39, v68, &qword_10005EF98, &qword_10004CDE8);
  v55 = v53;
  v56 = v53;
  v57 = v69;
  sub_1000055FC(v55, v69, &qword_10005EF98, &qword_10004CDE8);
  v58 = v70;
  sub_1000055FC(v54, v70, &qword_10005EF98, &qword_10004CDE8);
  v59 = sub_1000027D4(&qword_10005EFA0, &qword_10004CE20);
  sub_1000055FC(v57, v58 + *(v59 + 48), &qword_10005EF98, &qword_10004CDE8);
  sub_100005664(v56, &qword_10005EF98, &qword_10004CDE8);
  sub_100005664(v39, &qword_10005EF98, &qword_10004CDE8);
  sub_100005664(v57, &qword_10005EF98, &qword_10004CDE8);
  return sub_100005664(v54, &qword_10005EF98, &qword_10004CDE8);
}

uint64_t sub_100045A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v5 = type metadata accessor for MostUsedItemsLarge(0);
  v6 = __chkstk_darwin(v5);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v61 - v9);
  v71 = sub_1000027D4(&qword_10005EFA8, &qword_10004CE28);
  v11 = __chkstk_darwin(v71);
  v65 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v63 = sub_1000027D4(&qword_10005EFB0, &qword_10004CE30);
  v15 = __chkstk_darwin(v63);
  v68 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v67 = &v61 - v18;
  v19 = __chkstk_darwin(v17);
  v62 = &v61 - v20;
  v21 = __chkstk_darwin(v19);
  v66 = &v61 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v61 - v24;
  __chkstk_darwin(v23);
  v64 = &v61 - v26;
  v27 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  if (v27 >= 7)
  {
    sub_100046BE8(a1, a1 + 32, 0, 0xDuLL);
    v28 = v60;
  }

  else
  {

    v28 = a1;
  }

  *v10 = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v5 + 20)) = v28;
  *(v10 + *(v5 + 24)) = 2;
  sub_100049B78();
  sub_100049598();
  sub_100046E50(v10, v14, type metadata accessor for MostUsedItemsLarge);
  v29 = &v14[*(v71 + 36)];
  v30 = v77;
  *(v29 + 4) = v76;
  *(v29 + 5) = v30;
  *(v29 + 6) = v78;
  v31 = v73;
  *v29 = v72;
  *(v29 + 1) = v31;
  v32 = v75;
  *(v29 + 2) = v74;
  *(v29 + 3) = v32;
  v33 = sub_100049B68();
  v35 = v34;
  v69 = a2;
  v36 = sub_100042A20();
  sub_100004DF8(v14, v25, &qword_10005EFA8, &qword_10004CE28);
  v37 = v63;
  v38 = &v25[*(v63 + 36)];
  *v38 = v36;
  v38[1] = v33;
  v38[2] = v35;
  v39 = v64;
  sub_100004DF8(v25, v64, &qword_10005EFB0, &qword_10004CE30);

  if (v27 >= 5)
  {
    sub_100046BE8(a1, a1 + 32, 0, 9uLL);
    v41 = v40;

    a1 = v41;
  }

  *v8 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = a1;
  *(v8 + *(v5 + 24)) = 2;
  sub_100049B78();
  sub_100049598();
  v42 = v65;
  sub_100046E50(v8, v65, type metadata accessor for MostUsedItemsLarge);
  v43 = (v42 + *(v71 + 36));
  v44 = v84;
  v43[4] = v83;
  v43[5] = v44;
  v43[6] = v85;
  v45 = v80;
  *v43 = v79;
  v43[1] = v45;
  v46 = v82;
  v43[2] = v81;
  v43[3] = v46;
  v47 = sub_100049B68();
  v49 = v48;
  v50 = sub_100042A20();
  v51 = v42;
  v52 = v62;
  sub_100004DF8(v51, v62, &qword_10005EFA8, &qword_10004CE28);
  v53 = (v52 + *(v37 + 36));
  *v53 = v50;
  v53[1] = v47;
  v53[2] = v49;
  v54 = v66;
  sub_100004DF8(v52, v66, &qword_10005EFB0, &qword_10004CE30);
  v55 = v67;
  sub_1000055FC(v39, v67, &qword_10005EFB0, &qword_10004CE30);
  v56 = v68;
  sub_1000055FC(v54, v68, &qword_10005EFB0, &qword_10004CE30);
  v57 = v70;
  sub_1000055FC(v55, v70, &qword_10005EFB0, &qword_10004CE30);
  v58 = sub_1000027D4(&qword_10005EFB8, &qword_10004CE38);
  sub_1000055FC(v56, v57 + *(v58 + 48), &qword_10005EFB0, &qword_10004CE30);
  sub_100005664(v54, &qword_10005EFB0, &qword_10004CE30);
  sub_100005664(v39, &qword_10005EFB0, &qword_10004CE30);
  sub_100005664(v56, &qword_10005EFB0, &qword_10004CE30);
  return sub_100005664(v55, &qword_10005EFB0, &qword_10004CE30);
}

uint64_t sub_100046114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *(a1 + *(type metadata accessor for UsageTimelineEntry(0) + 56));
  sub_100049B68();
  sub_100049598();
  *(&v45[6] + 7) = *&v45[21];
  *(&v45[8] + 7) = *&v45[23];
  *(&v45[10] + 7) = *&v45[25];
  *(&v45[12] + 7) = v46;
  *(v45 + 7) = *&v45[15];
  *(&v45[2] + 7) = *&v45[17];
  *(&v45[4] + 7) = *&v45[19];
  v2 = sub_100049B68();
  v11 = v3;
  v4 = sub_100042A20();
  sub_100049B68();
  sub_100049598();
  *&v44[55] = v50;
  *&v44[71] = v51;
  *&v44[87] = v52;
  *&v44[103] = v53;
  *&v44[7] = v47;
  *&v44[23] = v48;
  *&v44[39] = v49;
  v5 = sub_100049B68();
  v7 = v6;
  v8 = sub_100042A20();
  *v14 = 4;
  v14[8] = v10;
  *&v14[73] = *&v45[8];
  *&v14[89] = *&v45[10];
  *&v14[105] = *&v45[12];
  *&v14[9] = *v45;
  *&v14[25] = *&v45[2];
  *&v14[41] = *&v45[4];
  *&v14[57] = *&v45[6];
  *&v14[120] = *(&v46 + 1);
  *&v15 = v4;
  *(&v15 + 1) = v2;
  __src[0] = *v14;
  __src[1] = *&v14[16];
  __src[4] = *&v14[64];
  __src[5] = *&v14[80];
  __src[2] = *&v14[32];
  __src[3] = *&v14[48];
  __src[6] = *&v14[96];
  __src[7] = *&v14[112];
  __src[8] = v15;
  *v17 = 3;
  v17[8] = v10;
  *&v17[73] = *&v44[64];
  *&v17[89] = *&v44[80];
  *&v17[105] = *&v44[96];
  *&v17[9] = *v44;
  *&v17[25] = *&v44[16];
  *&v17[41] = *&v44[32];
  *&v17[57] = *&v44[48];
  *&v17[120] = *(&v53 + 1);
  *&v18 = v8;
  *(&v18 + 1) = v5;
  *(&__src[16] + 8) = *&v17[112];
  *(&__src[17] + 8) = v18;
  *(&__src[10] + 8) = *&v17[16];
  *(&__src[9] + 8) = *v17;
  *(&__src[14] + 8) = *&v17[80];
  *(&__src[13] + 8) = *&v17[64];
  *(&__src[12] + 8) = *&v17[48];
  *(&__src[11] + 8) = *&v17[32];
  v16 = v11;
  v19 = v7;
  *&__src[9] = v11;
  *(&__src[18] + 1) = v7;
  *(&__src[15] + 8) = *&v17[96];
  memcpy(a2, __src, 0x130uLL);
  v26 = *&v44[64];
  v27 = *&v44[80];
  *v28 = *&v44[96];
  v22 = *v44;
  v23 = *&v44[16];
  v24 = *&v44[32];
  v20 = 3;
  v21 = v10;
  v25 = *&v44[48];
  *&v28[15] = *&v44[111];
  v29 = v8;
  v30 = v5;
  v31 = v7;
  sub_1000055FC(v14, &v32, &qword_10005EEF0, &unk_10004CD48);
  sub_1000055FC(v17, &v32, &qword_10005EEF0, &unk_10004CD48);
  sub_100005664(&v20, &qword_10005EEF0, &unk_10004CD48);
  v32 = 4;
  v33 = v10;
  v38 = *&v45[8];
  v39 = *&v45[10];
  *v40 = *&v45[12];
  v34 = *v45;
  v35 = *&v45[2];
  v36 = *&v45[4];
  v37 = *&v45[6];
  *&v40[15] = *(&v45[13] + 7);
  v41 = v4;
  v42 = v2;
  v43 = v11;
  return sub_100005664(&v32, &qword_10005EEF0, &unk_10004CD48);
}