void type metadata accessor for CLAuthorizationStatus()
{
  if (!qword_1C790)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1C790);
    }
  }
}

uint64_t sub_1AB0()
{
  sub_12A70();
  swift_allocObject();
  result = sub_12A80();
  qword_1CFD0 = result;
  return result;
}

uint64_t sub_1B04()
{
  sub_2308(&qword_1C7A0, &qword_13748);
  sub_128B0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_136B0;
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_2704(0x55412D6E65);
  sub_128A0();
  sub_2704(0x4E492D6E65);
  sub_128A0();
  sub_2704(0x504A2D616ALL);
  sub_128A0();
  sub_2704(0x584D2D7365);
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_2704(0x524B2D6F6BLL);
  sub_128A0();
  sub_2704(0x54492D7469);
  sub_128A0();
  sub_128A0();
  sub_271C();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_271C();
  sub_128A0();
  sub_271C();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_2704(0x45532D7673);
  sub_128A0();
  sub_2704(0x4B442D6164);
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  sub_271C();
  sub_128A0();
  sub_128A0();
  sub_128A0();
  result = sub_128A0();
  qword_1CFD8 = v0;
  return result;
}

uint64_t sub_1FEC()
{
  v0 = sub_128B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2308(&qword_1C798, &qword_13740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_136C0;
  *(inited + 32) = 0x45442D6564;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x55412D6E65;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x41432D6E65;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x42472D6E65;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x4E492D6E65;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = 0x53552D6E65;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = 0x53452D7365;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0x584D2D7365;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 160) = 0x53552D7365;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x52462D7266;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = 0x504A2D616ALL;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = 0x4E432D687ALL;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = 0x4B482D687ALL;
  *(inited + 232) = 0xE500000000000000;
  v10 = &_swiftEmptyArrayStorage;
  sub_24A8(0, 13, 0);
  v5 = 0;
  v6 = v10;
  do
  {

    sub_128A0();
    v10 = v6;
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_24A8((v7 > 1), v8 + 1, 1);
      v6 = v10;
    }

    *(v6 + 16) = v8 + 1;
    (*(v1 + 32))(v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v3, v0);
    v5 += 16;
  }

  while (v5 != 208);
  swift_setDeallocating();
  result = sub_2350();
  qword_1CFE0 = v6;
  return result;
}

uint64_t sub_228C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C0(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2308(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2350()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_23AC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_2728();

    return _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_2728();

    return _swift_arrayInitWithTakeBackToFront(v9);
  }

  return result;
}

char *sub_2474(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[40 * a2] <= __dst)
  {
    return memmove(__dst, __src, 40 * a2);
  }

  return __src;
}

void *sub_24A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_253C(a1, a2, a3, *v3, &qword_1C7A0, &qword_13748, &type metadata accessor for Locale, &type metadata accessor for Locale);
  *v3 = result;
  return result;
}

void *sub_24F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_253C(a1, a2, a3, *v3, &unk_1CBF0, &unk_13750, type metadata accessor for NotebookSuggestion, type metadata accessor for NotebookSuggestion);
  *v3 = result;
  return result;
}

void *sub_253C(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2308(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_23AC(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_2704(uint64_t a1)
{

  return sub_128A0();
}

__n128 sub_273C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27F0()
{
  sub_2308(&qword_1C9A0, qword_13858);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_13760;
  *(v1 + 56) = &type metadata for Bool;
  *(v1 + 32) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2888()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_28B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2944;

  return sub_27D4();
}

uint64_t sub_2944(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_2A48()
{
  result = qword_1C990;
  if (!qword_1C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C990);
  }

  return result;
}

unint64_t sub_2AA0()
{
  result = qword_1C998;
  if (!qword_1C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C998);
  }

  return result;
}

uint64_t sub_2AF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_2B48(v1);
  *(a1 + 24) = &type metadata for AddTriggerIntentParameters;
  *(a1 + 32) = &off_18D70;
  *a1 = result & 1;
  *(a1 + 1) = result > 0xFFu;
  return result;
}

uint64_t sub_2B48(void *a1)
{
  v2 = [a1 temporalEventTrigger];
  v3 = v2;
  if (v2)
  {
  }

  v4 = [a1 spatialEventTrigger];

  if (v4)
  {

    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | (v3 != 0);
}

void sub_2BF4(uint64_t a1)
{
  sub_5E24();
  v2 = v1;
  v3 = sub_12B10();
  sub_5C78();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_5CE8();
  v40 = (v7 - v8);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = sub_12A50();
  sub_5C78();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_5CE8();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  v22 = *(v5 + 16);
  v41 = v2;
  v22(v11, v2, v3);
  if ((*(v5 + 88))(v11, v3) == enum case for InteractionIntents.siriInteractionIntents(_:))
  {
    (*(v5 + 96))(v11, v3);
    sub_2308(&qword_1CA58, &qword_139D0);

    (*(v14 + 32))(v21, v11, v12);
    (*(v14 + 16))(v18, v21, v12);
    sub_304C(v18);
    (*(v5 + 8))(v41, v3);
    (*(v14 + 8))(v21, v12);
  }

  else
  {
    v39 = *(v5 + 8);
    v39(v11, v3);
    if (qword_1C778 != -1)
    {
      sub_5CC8(&qword_1C778);
    }

    v23 = sub_12D60();
    sub_4DE0(v23, qword_1CFF8);
    v24 = v40;
    v25 = v41;
    v22(v40, v41, v3);
    v26 = sub_12D40();
    v27 = sub_12E40();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136315138;
      sub_4F74(&qword_1CA50, &type metadata accessor for InteractionIntents, &protocol conformance descriptor for InteractionIntents);
      v30 = sub_12F10();
      v32 = v31;
      v33 = v39;
      v39(v24, v3);
      v34 = sub_47A8(v30, v32, &v42);

      *(v28 + 4) = v34;
      sub_5DCC(&dword_0, v35, v36, "[AddTriggerIntentParameters] Cannot get executedIntent from InteractionIntents, default triggers to false: %s");
      sub_58CC(v29);
      sub_5E3C(v29);
      v37 = v28;
      v25 = v41;
      sub_5E3C(v37);
    }

    else
    {

      v33 = v39;
      v39(v24, v3);
    }

    sub_2308(&qword_1CA40, &unk_139C0);
    v38 = sub_12D90();
    sub_34C8(v38);
    v33(v25, v3);
  }

  sub_5DEC();
}

void sub_304C(uint64_t a1)
{
  sub_5E24();
  v3 = v2;
  v4 = sub_12A50();
  sub_5C78();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_5CE8();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = (&v38 - v12);
  v14 = *(v6 + 16);
  v14(&v38 - v12, v3, v4);
  if ((*(v6 + 88))(v13, v4) == enum case for SiriSuggestions.Intent.inIntent(_:))
  {
    (*(v6 + 96))(v13, v4);
    *&v39 = *v13;
    v1 = v39;
    sub_4E18();
    v15 = v1;
    sub_2308(&qword_1CA68, &qword_139D8);
    if (swift_dynamicCast())
    {
      v1 = v10;
      v16 = v3;
      sub_4F00(&v41, v44);
      v17 = v45;
      v18 = v46;
      sub_4E5C(v44, v45);
      (*(v18 + 8))(&v39, v17, v18);
      if (v40)
      {
        sub_4F00(&v39, &v41);
        v19 = *(&v42 + 1);
        v20 = v43;
        sub_4E5C(&v41, *(&v42 + 1));
        v21 = (*(v20 + 8))(v19, v20);
        sub_34C8(v21);

        (*(v6 + 8))(v16, v4);
        sub_58CC(&v41);
        sub_58CC(v44);
        goto LABEL_14;
      }

      sub_4EA0(&v39, &qword_1CA78, &qword_139E8);
      sub_58CC(v44);
      v3 = v16;
      v10 = v1;
    }

    else
    {

      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      sub_4EA0(&v41, &qword_1CA70, &qword_139E0);
    }
  }

  else
  {
    (*(v6 + 8))(v13, v4);
  }

  if (qword_1C778 != -1)
  {
    sub_5CC8(&qword_1C778);
  }

  v22 = sub_12D60();
  sub_4DE0(v22, qword_1CFF8);
  v14(v10, v3, v4);
  v23 = sub_12D40();
  v24 = sub_12E40();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v38 = v3;
    v26 = v25;
    v27 = swift_slowAlloc();
    v44[0] = v27;
    *v26 = 136315138;
    sub_4F74(&qword_1CA60, &type metadata accessor for SiriSuggestions.Intent, &protocol conformance descriptor for SiriSuggestions.Intent);
    v28 = sub_12F10();
    v30 = v29;
    v31 = sub_5CF8();
    (v1)(v31);
    v32 = sub_47A8(v28, v30, v44);

    *(v26 + 4) = v32;
    sub_5DCC(&dword_0, v33, v34, "[AddTriggerIntentParameters] Cannot get parameters from SiriSuggestions.Intent, default triggers to false: %s");
    sub_58CC(v27);
    sub_5E3C(v27);
    v35 = v26;
    v3 = v38;
    sub_5E3C(v35);
  }

  else
  {

    v36 = sub_5CF8();
    (v1)(v36);
  }

  sub_2308(&qword_1CA40, &unk_139C0);
  v37 = sub_12D90();
  sub_34C8(v37);
  (v1)(v3, v4);
LABEL_14:
  sub_5DEC();
}

uint64_t sub_34C8(uint64_t a1)
{
  sub_5E54(0xD000000000000017, 0x8000000000014080, a1, v6);
  if (v7)
  {
    sub_2308(&qword_1CA40, &unk_139C0);
    if (swift_dynamicCast())
    {
      v2 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    sub_4EA0(v6, &qword_1CA48, &qword_13B70);
  }

  v2 = 0;
LABEL_6:
  sub_5E54(0xD000000000000016, 0x80000000000140A0, a1, v6);

  if (!v7)
  {
    sub_4EA0(v6, &qword_1CA48, &qword_13B70);
    goto LABEL_12;
  }

  sub_2308(&qword_1CA40, &unk_139C0);
  if (!swift_dynamicCast())
  {
LABEL_12:
    v3 = 0;
    return v3 | v2;
  }

  if (v5)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

void sub_3614(uint64_t a1)
{
  sub_5E24();
  v4 = v3;
  if ((v3 & 0x100) != 0)
  {
    v1 = sub_5D10();
    sub_5E04();
    sub_5C78();
    __chkstk_darwin(v5);
    v7 = sub_5C38(v6, v14);
    v8(v7);
    sub_5084(*v2, 0xD000000000000016, 0x80000000000140A0, v1, &v15);
    sub_58CC(v16);
  }

  if (v4)
  {
    v9 = sub_5D10();
    sub_5E04();
    sub_5C78();
    __chkstk_darwin(v10);
    v12 = sub_5C58(v11, v14);
    v13(v12);
    sub_5084(*v1, 0xD000000000000017, 0x8000000000014080, v9, &v15);
    sub_58CC(v16);
  }

  sub_5DEC();
}

void sub_37DC()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  sub_3614(v1 | *v0);
}

uint64_t sub_37F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v4 = sub_9194(1701667182, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_4D18(*(a1 + 56) + 48 * v4, v52);
  v6 = sub_2308(&qword_1CA40, &unk_139C0);
  if ((sub_5CA8(v6, v7, v8, &type metadata for String, v9, v10, v11, v12, v45, v49, v52[0]) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v46 == 0xD000000000000027 && 0x80000000000140C0 == v50)
  {
  }

  else
  {
    v14 = sub_12F30();

    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  sub_5E54(0xD000000000000011, 0x80000000000140F0, a1, v52);
  if (!v53)
  {

    result = sub_4EA0(v52, &qword_1CA48, &qword_13B70);
    goto LABEL_19;
  }

  if ((sub_5CA8(v15, v16, v17, &type metadata for Bool, v18, v19, v20, v21, v46, v50, v52[0]) & 1) == 0)
  {
LABEL_18:

LABEL_19:
    v32 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v22 = 2;
    goto LABEL_20;
  }

  v22 = v47;
  v23 = sub_5DB8();
  sub_5E54(v23, 0xE800000000000000, a1, v52);
  if (v53)
  {
    v31 = sub_5CA8(v24, v25, v26, &type metadata for Double, v27, v28, v29, v30, v47, v51, v52[0]);
    if (v31)
    {
      v32 = v47;
    }

    else
    {
      v32 = 0;
    }

    v33 = v31 ^ 1u;
  }

  else
  {
    sub_4EA0(v52, &qword_1CA48, &qword_13B70);
    v32 = 0;
    v33 = 1;
  }

  v37 = sub_5DA4();
  sub_5E54(v37, 0xE900000000000065, a1, v52);

  if (v53)
  {
    result = sub_5CA8(v38, v39, v40, &type metadata for Double, v41, v42, v43, v44, v47, v51, v52[0]);
    v35 = v48;
    if (!result)
    {
      v35 = 0;
    }

    v36 = result ^ 1;
  }

  else
  {
    result = sub_4EA0(v52, &qword_1CA48, &qword_13B70);
    v35 = 0;
    v36 = 1;
  }

LABEL_20:
  *a2 = v22;
  *(a2 + 8) = v32;
  *(a2 + 16) = v33;
  *(a2 + 24) = v35;
  *(a2 + 32) = v36;
  return result;
}

uint64_t sub_3A34()
{
  v2 = *v0;
  v37 = &type metadata for Bool;
  v38 = &protocol witness table for Bool;
  v39 = &protocol witness table for Bool;
  LOBYTE(v36) = v2;
  sub_501C(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_5C88();
  sub_5C78();
  __chkstk_darwin(v4);
  v6 = sub_5C38(v5, v31);
  v7(v6);
  sub_5084(*v1, 0xD000000000000011, 0x80000000000140F0, isUniquelyReferenced_nonNull_native, &v34);
  sub_58CC(v35);
  v37 = &type metadata for String;
  v38 = &protocol witness table for String;
  v39 = &protocol witness table for String;
  *&v36 = 0xD000000000000027;
  *(&v36 + 1) = 0x80000000000140C0;
  v8 = sub_5D74();
  sub_5C88();
  sub_5C78();
  __chkstk_darwin(v9);
  v11 = sub_5C38(v10, v32);
  v12(v11);
  sub_5274(MEMORY[0xD000000000000011], MEMORY[0xD000000000000019], 1701667182, 0xE400000000000000, v8, &v34);
  sub_58CC(v35);
  v13 = v34;
  if ((v0[16] & 1) == 0)
  {
    v14 = *(v0 + 1);
    v38 = &protocol witness table for Double;
    v39 = &protocol witness table for Double;
    v37 = &type metadata for Double;
    *&v36 = v14;
    v15 = sub_5D74();
    sub_5C88();
    sub_5C78();
    __chkstk_darwin(v16);
    v18 = sub_5C38(v17, v33);
    v19(v18);
    v20 = sub_5DB8();
    sub_5464(v20, 0xE800000000000000, v15, &v34, v21);
    sub_58CC(v35);
    v13 = v34;
  }

  if ((v0[32] & 1) == 0)
  {
    v22 = *(v0 + 3);
    v38 = &protocol witness table for Double;
    v39 = &protocol witness table for Double;
    v37 = &type metadata for Double;
    *&v36 = v22;
    v23 = sub_5D74();
    sub_5C88();
    sub_5C78();
    __chkstk_darwin(v24);
    v26 = sub_5C58(v25, v33);
    v27(v26);
    v28 = sub_5DA4();
    sub_5464(v28, 0xE900000000000065, v23, &v34, v29);
    sub_58CC(v35);
    return v34;
  }

  return v13;
}

void sub_3DC8(uint64_t a1)
{
  sub_5E24();
  v2 = v1;
  v4 = v3;
  v5 = sub_2308(&qword_1CA38, &qword_139B8);
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-v6];
  v8 = sub_12810();
  sub_5C78();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for UpdateReminderExecutionParameters(0);
  __chkstk_darwin(updated);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v2 + 16))
  {
    goto LABEL_9;
  }

  v17 = sub_9194(1701667182, 0xE400000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_4D18(*(v2 + 56) + 48 * v17, &v27);
  sub_2308(&qword_1CA40, &unk_139C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v25 == 0xD000000000000021 && 0x8000000000013970 == v26)
  {
  }

  else
  {
    v24 = sub_12F30();

    if ((v24 & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  sub_5E54(0x706D6F4365746164, 0xED0000746E656E6FLL, v2, &v27);

  if (v28)
  {
    v21 = swift_dynamicCast();
    sub_46C8(v7, v21 ^ 1u, 1, v8);
    if (sub_4640(v7, 1, v8) != 1)
    {
      v22 = *(v10 + 32);
      v22(v13, v7, v8);
      v22(v16, v13, v8);
      sub_4D7C(v16, v4);
      v20 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    sub_4EA0(&v27, &qword_1CA48, &qword_13B70);
    sub_46C8(v7, 1, 1, v8);
  }

  sub_4EA0(v7, &qword_1CA38, &qword_139B8);
LABEL_10:
  v20 = 1;
LABEL_11:
  sub_46C8(v4, v20, 1, updated);
  sub_5DEC();
}

uint64_t sub_40F8()
{
  v1 = sub_12810();
  v17 = v1;
  v18 = sub_4F74(&qword_1CA88, type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v19 = sub_4F74(&qword_1CA90, type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v2 = sub_4FBC(&v16);
  (*(*(v1 - 8) + 16))(v2, v0, v1);
  sub_501C(&v16, v15);
  swift_isUniquelyReferenced_nonNull_native();
  sub_5D50();
  sub_5C78();
  __chkstk_darwin(v3);
  v5 = sub_5C58(v4, v12);
  v6(v5);
  sub_564C(type metadata accessor for DateComponents, 0x706D6F4365746164, 0xED0000746E656E6FLL, v0, &v14);
  sub_58CC(v15);
  v17 = &type metadata for String;
  v18 = &protocol witness table for String;
  v19 = &protocol witness table for String;
  *&v16 = 0xD000000000000021;
  *(&v16 + 1) = 0x8000000000013970;
  sub_501C(&v16, v15);
  swift_isUniquelyReferenced_nonNull_native();
  sub_5D50();
  sub_5C78();
  __chkstk_darwin(v7);
  v9 = sub_5C58(v8, v13);
  v10(v9);
  sub_5274(type metadata accessor for DateComponents[0], type metadata accessor for DateComponents[1], 1701667182, 0xE400000000000000, v0, &v14);
  sub_58CC(v15);
  return v14;
}

uint64_t getEnumTagSinglePayload for AddTriggerIntentParameters(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
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

uint64_t storeEnumTagSinglePayload for AddTriggerIntentParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x44F4);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

__n128 sub_452C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4540(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[33])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t sub_458C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_45F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_12810();

  return sub_4640(a1, a2, v4);
}

uint64_t sub_467C(uint64_t a1, uint64_t a2)
{
  v4 = sub_12810();

  return sub_46C8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for UpdateReminderExecutionParameters(uint64_t a1)
{
  result = qword_1CA00;
  if (!qword_1CA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_473C(uint64_t a1)
{
  result = sub_12810();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_47A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_486C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_4F18(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_58CC(v11);
  return v7;
}

unint64_t sub_486C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_496C(a5, a6);
    *a1 = v9;
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
    result = sub_12ED0();
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

char *sub_496C(uint64_t a1, unint64_t a2)
{
  v3 = sub_49B8(a1, a2);
  sub_4AD0(&off_18C10);
  return v3;
}

char *sub_49B8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_12DD0())
  {
    result = sub_4BB4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_12EB0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_12ED0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_4AD0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_4C24(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4BB4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2308(&qword_1CA80, &qword_139F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_4C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_2308(&qword_1CA80, &qword_139F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_4D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4D7C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateReminderExecutionParameters(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_4DE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_4E18()
{
  result = qword_1CC50;
  if (!qword_1CC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CC50);
  }

  return result;
}

void *sub_4E5C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_4EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2308(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_4F00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_4F18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4F74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_4FBC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_501C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_5034(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

_OWORD *sub_5084(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v26) = a1;
  v27 = &type metadata for Bool;
  v28 = &protocol witness table for Bool;
  v29 = &protocol witness table for Bool;
  v9 = *a5;
  v10 = sub_9194(a2, a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  sub_2308(&qword_1CA98, &qword_139F8);
  if (!sub_12EE0(a4 & 1, v14))
  {
    goto LABEL_5;
  }

  v17 = sub_9194(a2, a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_12F40();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *a5;
  if (v16)
  {
    v20 = (v19[7] + 48 * v15);
    sub_58CC(v20);
    return sub_501C(&v26, v20);
  }

  else
  {
    v22 = sub_5034(&v26, &type metadata for Bool);
    __chkstk_darwin(v22);
    v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v24);
    sub_5918(v15, a2, a3, *v24, v19);
    sub_58CC(&v26);
  }
}

_OWORD *sub_5274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v28 = &type metadata for String;
  v29 = &protocol witness table for String;
  v30 = &protocol witness table for String;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  v10 = *a6;
  v11 = sub_9194(a3, a4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = v12;
  sub_2308(&qword_1CA98, &qword_139F8);
  if (!sub_12EE0(a5 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_9194(a3, a4);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_10:
    result = sub_12F40();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *a6;
  if (v17)
  {
    v21 = (v20[7] + 48 * v16);
    sub_58CC(v21);
    return sub_501C(&v27, v21);
  }

  else
  {
    v23 = sub_5034(&v27, &type metadata for String);
    __chkstk_darwin(v23);
    v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    sub_5A50(v16, a3, a4, *v25, v25[1], v20);
    sub_58CC(&v27);
  }
}

_OWORD *sub_5464(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  *&v26 = a5;
  v27 = &type metadata for Double;
  v28 = &protocol witness table for Double;
  v29 = &protocol witness table for Double;
  v9 = *a4;
  v10 = sub_9194(a1, a2);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  sub_2308(&qword_1CA98, &qword_139F8);
  if (!sub_12EE0(a3 & 1, v14))
  {
    goto LABEL_5;
  }

  v17 = sub_9194(a1, a2);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_12F40();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *a4;
  if (v16)
  {
    v20 = (v19[7] + 48 * v15);
    sub_58CC(v20);
    return sub_501C(&v26, v20);
  }

  else
  {
    v22 = sub_5034(&v26, &type metadata for Double);
    __chkstk_darwin(v22);
    v24 = (&v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    sub_59B4(v15, a1, a2, v19, *v24);
    sub_58CC(&v26);
  }
}

_OWORD *sub_564C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_12810();
  v30 = v10;
  v31 = sub_4F74(&qword_1CA88, type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v32 = sub_4F74(&qword_1CA90, type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v11 = sub_4FBC(&v29);
  (*(*(v10 - 8) + 32))(v11, a1, v10);
  v12 = *a5;
  v13 = sub_9194(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v13;
  v19 = v14;
  sub_2308(&qword_1CA98, &qword_139F8);
  if (!sub_12EE0(a4 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_9194(a2, a3);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_10:
    result = sub_12F40();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *a5;
  if (v19)
  {
    v23 = (v22[7] + 48 * v18);
    sub_58CC(v23);
    return sub_501C(&v29, v23);
  }

  else
  {
    v25 = sub_5034(&v29, v30);
    __chkstk_darwin(v25);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27);
    sub_5AEC(v18, a2, a3, v27, v22);
    sub_58CC(&v29);
  }
}

uint64_t sub_58CC(void *a1)
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

_OWORD *sub_5918(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  v13 = &protocol witness table for Bool;
  v14 = &protocol witness table for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_501C(&v11, (a5[7] + 48 * a1));
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

_OWORD *sub_59B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v11 = a5;
  v12 = &type metadata for Double;
  v13 = &protocol witness table for Double;
  v14 = &protocol witness table for Double;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_501C(&v11, (a4[7] + 48 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_5A50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  v14 = &protocol witness table for String;
  v15 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_501C(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_5AEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_12810();
  v18 = v10;
  v19 = sub_4F74(&qword_1CA88, type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v20 = sub_4F74(&qword_1CA90, type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v11 = sub_4FBC(&v17);
  (*(*(v10 - 8) + 32))(v11, a4, v10);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_501C(&v17, (a5[7] + 48 * a1));
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_5C88()
{
  *(v1 - 168) = v0;
  v3 = *(v1 - 136);

  return sub_5034(v1 - 160, v3);
}

uint64_t sub_5CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t sub_5CC8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_5D10()
{
  *(v3 - 104) = v0;
  *(v3 - 96) = v1;
  *(v3 - 88) = v2;
  *(v3 - 128) = 1;
  sub_501C((v3 - 128), (v3 - 176));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_5D50()
{
  *(v1 - 136) = v0;
  v3 = *(v1 - 104);

  return sub_5034(v1 - 128, v3);
}

uint64_t sub_5D74()
{
  sub_501C((v0 - 112), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_5DCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_5E04()
{
  *(v1 - 184) = v0;
  v3 = *(v1 - 152);

  return sub_5034(v1 - 176, v3);
}

uint64_t sub_5E3C(uint64_t a1)
{
}

double sub_5E54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_9194(a1, a2), (v7 & 1) != 0))
  {
    sub_4D18(*(a3 + 56) + 48 * v6, a4);
  }

  else
  {
    result = 0.0;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_5EAC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_920C();
  if (v1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5F04()
{
  sub_129F0();
  sub_96C8(&qword_1CB70, &type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode, &protocol conformance descriptor for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode);
  sub_12DE0();
  sub_12DE0();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_12F30();
  }

  return v1 & 1;
}

Swift::Int sub_6000()
{
  sub_12F50();
  sub_12DC0();
  return sub_12F60();
}

uint64_t sub_6054()
{
  sub_9B08();
  v0[12] = v1;
  v0[13] = v2;
  v3 = type metadata accessor for NotebookSuggestion(0);
  v0[14] = v3;
  sub_9A54(v3);
  v0[15] = v4;
  v0[16] = sub_9CCC();
  v5 = sub_12840();
  v0[17] = v5;
  sub_9A54(v5);
  v0[18] = v6;
  v0[19] = sub_9CCC();
  v7 = sub_99F0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6144()
{
  if (qword_1C750 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = qword_1CFD0;
  v0[5] = sub_12A70();
  v0[6] = sub_96C8(&qword_1CB38, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  v0[2] = v2;

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_62C4;

  return v5(v0 + 2);
}

uint64_t sub_62C4()
{
  sub_9B08();
  sub_9BE4();
  v1 = v0;
  *(v0 + 168) = v2;

  sub_58CC((v1 + 16));
  v3 = sub_99F0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_63BC()
{
  v1 = v0;
  v4 = v0 + 18;
  v3 = v0[18];
  v2 = v4[1];
  v5 = v1[17];
  sub_129B0();
  v6 = sub_12830(1);
  v8 = v7;
  (*(v3 + 8))(v2, v5);
  sub_BDCC();
  v10 = v9;
  sub_ADA0(v9, v11, v12, v13, v14, v15, v16, v17, v30, v31, v32, v34, v35, v36, v38, v40, v41, v42, v43, v44);
  sub_9358(v18);
  v19 = *(v10 + 16);
  if (v19)
  {
    v20 = v1[15];
    v37 = v6;
    v39 = v8;
    v21 = v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v33 = *(v20 + 72);
    do
    {
      v22 = v1;
      v23 = v1[16];
      sub_94F8(v21, v23, type metadata accessor for NotebookSuggestion);
      sub_12990();
      v24 = swift_task_alloc();
      v24[2] = v23;
      v24[3] = v37;
      v24[4] = v39;
      sub_12C90();

      v25 = v23;
      v1 = v22;
      sub_9558(v25, type metadata accessor for NotebookSuggestion);
      v21 += v33;
      --v19;
    }

    while (v19);

    v6 = v37;
    v8 = v39;
  }

  else
  {
  }

  v26 = swift_task_alloc();
  *(v26 + 16) = v6;
  *(v26 + 24) = v8;
  sub_12C90();

  v1[10] = &type metadata for NotebookSourceGenerator;
  v1[11] = sub_946C();
  v27 = swift_allocObject();
  v1[7] = v27;
  *(v27 + 40) = &type metadata for NotebookSuggestionValidators;
  *(v27 + 48) = &off_19038;
  sub_12C80();

  sub_58CC(v1 + 7);
  if (qword_1C780 != -1)
  {
    swift_once();
  }

  v28 = swift_task_alloc();
  v1[22] = v28;
  *v28 = v1;
  v28[1] = sub_66E4;

  return sub_12040();
}

uint64_t sub_66E4()
{
  sub_9B08();
  sub_9BE4();
  v1 = *v0;
  sub_9AD4();
  *v2 = v1;

  v3 = sub_99F0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_67C8()
{
  sub_2308(&qword_1CB48, &qword_13A70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_13760;
  sub_12CA0();

  sub_9BCC();

  return v1(v0);
}

uint64_t sub_6884(uint64_t a1, uint64_t *a2, void (**a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v75 = a4;
  v72 = a3;
  v6 = sub_2308(&qword_1CB58, &qword_13A80);
  __chkstk_darwin(v6 - 8);
  v76 = &v67 - v7;
  v77 = sub_12BC0();
  v69 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotebookSuggestion.SignalDefinition(0);
  v68 = *(v9 - 8);
  __chkstk_darwin(v9);
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  v11 = *(a1 + 40);
  v71 = *(a1 + 24);
  sub_4E5C(a1, v71);
  v12 = type metadata accessor for NotebookSuggestion(0);
  v82 = v71;
  v83 = v11;
  sub_4FBC(v80);
  sub_12C00();
  v13 = v83;
  v71 = v82;
  sub_4E5C(v80, v82);
  v95 = v71;
  v96 = v13;
  sub_4FBC(&v94);
  sub_12C30();
  v14 = v96;
  v71 = v95;
  sub_4E5C(&v94, v95);
  if (qword_1C758 != -1)
  {
    swift_once();
  }

  v92 = v71;
  v93 = v14;
  sub_4FBC(v91);
  sub_12C10();
  v15 = v93;
  v71 = v92;
  sub_4E5C(v91, v92);
  v89 = v71;
  v90 = v15;
  sub_4FBC(v88);
  sub_12C50();
  v16 = v90;
  v71 = v89;
  sub_4E5C(v88, v89);
  sub_FE8C();
  v86 = v71;
  v87 = v16;
  sub_4FBC(v85);
  sub_12BF0();
  sub_58CC(v84);
  v17 = v86;
  v18 = sub_4E5C(v85, v86);
  v19 = *(v17 - 8);
  __chkstk_darwin(v18);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12BE0();
  (*(v19 + 8))(v21, v17);
  sub_58CC(v85);
  sub_58CC(v88);
  sub_58CC(v91);
  sub_58CC(&v94);
  sub_58CC(v80);
  v22 = *(v12 + 36);
  v70 = a2;
  v23 = *(a2 + v22);
  v24 = *(v23 + 16);
  v25 = v78;
  v26 = v79;
  v27 = v77;
  if (v24)
  {
    v28 = v23 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v75 = *(v68 + 72);
    v72 = (v69 + 32);
    v73 = v9;
    *&v71 = v69 + 8;
    do
    {
      sub_94F8(v28, v25, type metadata accessor for NotebookSuggestion.SignalDefinition);
      v29 = v76;
      sub_9928(v25 + *(v9 + 20), v76, &qword_1CB58, &qword_13A80);
      if (sub_4640(v29, 1, v27) == 1)
      {
        sub_986C(v29, &qword_1CB58, &qword_13A80);
        v30 = v26[3];
        v31 = sub_4E5C(v26, v30);
        v78 = &v67;
        v32 = *(v30 - 8);
        __chkstk_darwin(v31);
        v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = v77;
        sub_129D0();
        (*(v32 + 8))(v34, v30);
      }

      else
      {
        v35 = v74;
        (*v72)(v74, v29, v27);
        v36 = v26[3];
        v37 = sub_4E5C(v26, v36);
        v78 = &v67;
        v38 = *(v36 - 8);
        __chkstk_darwin(v37);
        v40 = &v67 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_129C0();
        v41 = v36;
        v27 = v77;
        (*(v38 + 8))(v40, v41);
        v42 = v35;
        v9 = v73;
        (*v71)(v42, v27);
      }

      sub_9558(v25, type metadata accessor for NotebookSuggestion.SignalDefinition);
      v26 = v79;
      v28 += v75;
      --v24;
    }

    while (v24);
  }

  v43 = v70;
  sub_9928((v70 + 2), &v94, &qword_1CB60, &qword_13A88);
  if (v95)
  {
    sub_4F00(&v94, v80);
    v44 = v26[3];
    v45 = sub_4E5C(v26, v44);
    v46 = *(v44 - 8);
    __chkstk_darwin(v45);
    v48 = &v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_12BD0();
    (*(v46 + 8))(v48, v44);
    sub_58CC(v80);
  }

  else
  {
    sub_986C(&v94, &qword_1CB60, &qword_13A88);
  }

  v49 = *v43;
  v50 = v43[1];
  v51 = *v43 == 0x6E696D6552646461 && v50 == 0xEF656D6954726564;
  if (v51 || (sub_12F30() & 1) != 0 || (v49 == 0xD000000000000013 ? (v52 = 0x8000000000014190 == v50) : (v52 = 0), v52 || (result = sub_12F30(), (result & 1) != 0)))
  {
    v54 = v26[3];
    v55 = sub_4E5C(v26, v54);
    v56 = *(v54 - 8);
    __chkstk_darwin(v55);
    v58 = &v67 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_12C40();
    result = (*(v56 + 8))(v58, v54);
  }

  v59 = v43[7];
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v59 + 32;
    do
    {
      sub_95B0(v61, v80);
      v62 = v26[3];
      v77 = v26[5];
      v63 = sub_4E5C(v26, v62);
      v78 = &v67;
      v64 = *(v62 - 8);
      __chkstk_darwin(v63);
      v66 = &v67 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_9928(&v81, &v94, &qword_1CB68, &unk_13A90);

      sub_960C(v80);
      sub_12C60();

      sub_986C(&v94, &qword_1CB68, &unk_13A90);
      result = (*(v64 + 8))(v66, v62);
      v26 = v79;
      v61 += 104;
      --v60;
    }

    while (v60);
  }

  return result;
}

uint64_t sub_7354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v23 = a3;
  v22 = a2;
  v3 = *(a1 + 40);
  v20 = *(a1 + 24);
  v21 = a1;
  sub_4E5C(a1, v20);
  if (qword_1C760 != -1)
  {
    swift_once();
  }

  v34 = v20;
  v35 = v3;
  sub_4FBC(v33);
  sub_12C10();
  v4 = v35;
  v20 = v34;
  sub_4E5C(v33, v34);
  sub_2308(&qword_1CB50, &qword_13A78);
  v5 = sub_12A60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_13A00;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for DeviceType.iPad(_:), v5);
  v11(v10 + v7, enum case for DeviceType.iPhone(_:), v5);
  v11(v10 + 2 * v7, enum case for DeviceType.carPlay(_:), v5);
  v31 = v20;
  v32 = v4;
  sub_4FBC(v30);
  sub_12C00();

  v12 = v32;
  v20 = v31;
  sub_4E5C(v30, v31);
  v28 = v20;
  v29 = v12;
  sub_4FBC(v27);
  sub_12BE0();
  v13 = v29;
  v23 = v28;
  sub_4E5C(v27, v28);
  v25 = v23;
  v26 = v13;
  sub_4FBC(v24);
  sub_12C20();
  v14 = v25;
  v15 = sub_4E5C(v24, v25);
  v16 = *(v14 - 8);
  __chkstk_darwin(v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C788 != -1)
  {
    swift_once();
  }

  sub_5EAC(qword_1D018);
  sub_129D0();

  (*(v16 + 8))(v18, v14);
  sub_58CC(v24);
  sub_58CC(v27);
  sub_58CC(v30);
  sub_58CC(v33);
  return sub_778C(&_swiftEmptyArrayStorage, v21);
}

uint64_t sub_778C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  for (i = result + 48; v3; --v3)
  {
    sub_4D18(a2, v10);
    v5 = v11;
    v6 = sub_4E5C(v10, v11);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_12C60();
    (*(v7 + 8))(v9, v5);
    result = sub_58CC(v10);
    i += 64;
  }

  return result;
}

uint64_t sub_7908()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_9988;

  return sub_6054();
}

uint64_t sub_79A4()
{
  sub_9B08();
  v1[45] = v2;
  v1[46] = v0;
  v1[43] = v3;
  v1[44] = v4;
  v5 = sub_12D20();
  v1[47] = v5;
  sub_9A54(v5);
  v1[48] = v6;
  v1[49] = sub_9CCC();
  sub_2308(&qword_1CB88, &qword_13B68);
  v1[50] = sub_9CCC();
  v7 = sub_12B10();
  v1[51] = v7;
  sub_9A54(v7);
  v1[52] = v8;
  v1[53] = sub_9CCC();
  v9 = type metadata accessor for NotebookSuggestion(0);
  v1[54] = v9;
  sub_9A54(v9);
  v1[55] = v10;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v11 = sub_99F0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_7B34()
{
  if (qword_1C778 != -1)
  {
    swift_once();
  }

  v1 = sub_12D60();
  *(v0 + 472) = sub_4DE0(v1, qword_1CFF8);
  v2 = sub_12D40();
  v3 = sub_12E30();
  if (sub_9CB0(v3))
  {
    *swift_slowAlloc() = 0;
    sub_9BAC();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_9C30();
  }

  sub_ADA0(v9, v10, v11, v12, v13, v14, v15, v16, v52, v54, v55, v56, v57, v58, v59, v60, v61, v0, v62, v63);
  *(v0 + 480) = v17;
  v18 = *(v17 + 16);
  *(v0 + 488) = v18;
  if (!v18)
  {
LABEL_10:

    sub_4E5C(*(v0 + 344), *(*(v0 + 344) + 24));
    sub_9CE4();
    sub_12AA0();
    sub_9A64("isMarkAsComplete");

    v31 = *(v0 + 40);
    sub_986C(v0 + 16, &qword_1CA48, &qword_13B70);
    if (v31)
    {
      v33 = *(v0 + 384);
      v32 = *(v0 + 392);
      v34 = *(v0 + 376);
      sub_4E5C(*(v0 + 360), *(*(v0 + 360) + 24));
      sub_12D90();
      (*(v33 + 104))(v32, enum case for Objective.discoverability(_:), v34);
      sub_9A3C();
      sub_12C70();

      v35 = sub_9CE4();
      v36(v35);
      if (*(v0 + 128))
      {
        sub_9B78();
        v37 = &_swiftEmptyArrayStorage;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_9AC4();
          v37 = sub_8F80(v49, v50, v51, &_swiftEmptyArrayStorage);
        }

        v39 = *(v37 + 2);
        v38 = *(v37 + 3);
        if (v39 >= v38 >> 1)
        {
          v37 = sub_8F80((v38 > 1), v39 + 1, 1, v37);
        }

        sub_58CC((v0 + 64));
        *(v37 + 2) = v39 + 1;
        sub_4F00((v0 + 144), &v37[40 * v39 + 32]);
        goto LABEL_22;
      }

      sub_986C(v0 + 104, &qword_1CB90, &qword_13B78);
    }

    v37 = &_swiftEmptyArrayStorage;
LABEL_22:
    sub_9C14(*(v0 + 464));

    sub_9BCC();

    return v48(v37);
  }

  v19 = 0;
  v20 = *(v0 + 440);
  *(v0 + 560) = *(v20 + 80);
  *(v0 + 496) = *(v20 + 72);
  *(v0 + 564) = enum case for Objective.discoverability(_:);
  while (1)
  {
    *(v0 + 504) = v19;
    *(v0 + 512) = &_swiftEmptyArrayStorage;
    sub_9AB0();
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v23 = *(v0 + 344);
    sub_99A4();
    sub_94F8(v24, v25, v26);
    sub_4E5C(v23, v23[3]);
    sub_12A90();
    if (sub_4640(v22, 1, v21) != 1)
    {
      break;
    }

    v27 = *(v0 + 400);
    sub_998C();
    sub_9558(v28, v29);
    sub_986C(v27, &qword_1CB88, &qword_13B68);
    sub_9AE4();
    if (v30)
    {
      goto LABEL_10;
    }
  }

  v40 = *(v0 + 464);
  v41 = sub_9BBC();
  v42 = *(v0 + 344);
  (*(v43 + 32))(v41);
  v44 = *v40;
  sub_4E5C(v42, v42[3]);
  *(v0 + 520) = sub_12AA0();
  v53 = (v44 + *v44);
  v45 = swift_task_alloc();
  *(v0 + 528) = v45;
  *v45 = v0;
  v46 = sub_99BC(v45);

  return v53(v46);
}

uint64_t sub_8010()
{
  sub_9B08();
  sub_9BE4();
  v1 = *v0;
  sub_9AD4();
  *v2 = v1;
  *(v4 + 568) = v3;

  v5 = sub_99F0();

  return _swift_task_switch(v5, v6, v7);
}

void sub_8118()
{
  if (*(v0 + 568))
  {
    sub_99A4();
    sub_94F8(v1, v2, v3);
    v4 = sub_12D40();
    v5 = sub_12E30();
    v6 = sub_9CB0(v5);
    v7 = *(v0 + 456);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v55 = v9;
      *v8 = 136315138;
      v10 = *v7;
      v11 = v7[1];

      sub_998C();
      sub_9558(v7, v12);
      v13 = sub_47A8(v10, v11, &v55);

      *(v8 + 4) = v13;
      sub_9BAC();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      sub_58CC(v9);

      sub_9C30();
    }

    else
    {

      sub_998C();
      sub_9558(v7, v40);
    }

    sub_4E5C(*(v0 + 344), *(*(v0 + 344) + 24));
    *(v0 + 536) = sub_12AA0();
    v41 = swift_task_alloc();
    *(v0 + 544) = v41;
    *v41 = v0;
    v41[1] = sub_8630;
    sub_9B14();

    __asm { BRAA            X2, X16 }
  }

  v19 = *(v0 + 464);
  (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
  sub_998C();
  sub_9558(v19, v20);
  v21 = *(v0 + 512);
  while (1)
  {
    sub_9AE4();
    if (v23)
    {
      break;
    }

    *(v0 + 504) = v22;
    *(v0 + 512) = v21;
    sub_9AB0();
    v25 = *(v0 + 400);
    v24 = *(v0 + 408);
    sub_99A4();
    sub_94F8(v26, v27, v28);
    sub_9C70();
    v29 = sub_4640(v25, 1, v24);
    v30 = *(v0 + 464);
    if (v29 != 1)
    {
      v44 = sub_9BBC();
      (*(v45 + 32))(v44);
      v46 = sub_9B30();
      sub_9A00(v46);
      v47 = swift_task_alloc();
      *(v0 + 528) = v47;
      *v47 = v0;
      sub_99BC(v47);
      sub_9B14();

      __asm { BRAA            X3, X16 }
    }

    v31 = *(v0 + 400);
    sub_998C();
    sub_9558(v30, v32);
    sub_986C(v31, &qword_1CB88, &qword_13B68);
  }

  sub_4E5C(*(v0 + 344), *(*(v0 + 344) + 24));
  sub_9BD8();
  sub_12AA0();
  sub_9A64("isMarkAsComplete");

  v33 = *(v0 + 40);
  sub_986C(v0 + 16, &qword_1CA48, &qword_13B70);
  if (v33)
  {
    sub_9D04();
    sub_12D90();
    v34 = sub_9CF0();
    v35(v34);
    v36 = sub_9A3C();
    sub_9C4C(v36);

    v37 = sub_9BD8();
    v38(v37);
    if (*(v0 + 128))
    {
      sub_9B78();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_9AC4();
        v21 = sub_8F80(v52, v53, v54, v21);
      }

      v39 = *(v21 + 3);
      if (*(v21 + 2) >= v39 >> 1)
      {
        sub_9A8C(v39);
      }

      sub_58CC((v0 + 64));
      sub_9BF0();
    }

    else
    {
      sub_986C(v0 + 104, &qword_1CB90, &qword_13B78);
    }
  }

  sub_9C14(*(v0 + 464));

  sub_9BCC();
  sub_9B14();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_8630()
{
  sub_9B08();
  sub_9BE4();
  v1 = *v0;
  sub_9AD4();
  *v2 = v1;
  *(v4 + 552) = v3;

  v5 = sub_99F0();

  return _swift_task_switch(v5, v6, v7);
}

void sub_8738()
{
  v1 = *(v0 + 564);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 376);
  sub_4E5C(*(v0 + 360), *(*(v0 + 360) + 24));
  (*(v3 + 104))(v2, v1, v4);
  sub_12C70();

  v5 = sub_9BD8();
  v6(v5);
  sub_9928(v0 + 184, v0 + 264, &qword_1CB90, &qword_13B78);
  if (*(v0 + 288))
  {
    sub_4F00((v0 + 264), v0 + 224);
    sub_99A4();
    v7 = sub_9CE4();
    sub_94F8(v7, v8, v9);
    v10 = sub_12D40();
    v11 = sub_12E30();
    v12 = sub_9CB0(v11);
    v13 = *(v0 + 448);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v71 = v15;
      *v14 = 136315138;
      v16 = *v13;
      v17 = v13[1];

      sub_998C();
      sub_9558(v13, v18);
      v19 = sub_47A8(v16, v17, &v71);

      *(v14 + 4) = v19;
      sub_9BAC();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      sub_58CC(v15);

      sub_9C30();
    }

    else
    {

      sub_998C();
      sub_9558(v13, v30);
    }

    sub_98C4(v0 + 224, v0 + 304);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v0 + 512);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = sub_9AC4();
      v29 = sub_8F80(v65, v66, v67, v29);
    }

    v33 = *(v29 + 2);
    v32 = *(v29 + 3);
    if (v33 >= v32 >> 1)
    {
      v29 = sub_9A8C(v32);
    }

    v34 = *(v0 + 464);
    v36 = *(v0 + 416);
    v35 = *(v0 + 424);
    v37 = *(v0 + 408);
    sub_58CC((v0 + 224));
    sub_986C(v0 + 184, &qword_1CB90, &qword_13B78);
    (*(v36 + 8))(v35, v37);
    *(v29 + 2) = v33 + 1;
    sub_4F00((v0 + 304), &v29[40 * v33 + 32]);
    sub_998C();
    sub_9558(v34, v38);
  }

  else
  {
    v25 = *(v0 + 464);
    sub_986C(v0 + 184, &qword_1CB90, &qword_13B78);
    v26 = sub_9CE4();
    v27(v26);
    sub_998C();
    sub_9558(v25, v28);
    sub_986C(v0 + 264, &qword_1CB90, &qword_13B78);
    v29 = *(v0 + 512);
  }

  while (1)
  {
    sub_9AE4();
    if (v40)
    {
      break;
    }

    *(v0 + 504) = v39;
    *(v0 + 512) = v29;
    sub_9AB0();
    v42 = *(v0 + 400);
    v41 = *(v0 + 408);
    sub_99A4();
    sub_94F8(v43, v44, v45);
    sub_9C70();
    v46 = sub_4640(v42, 1, v41);
    v47 = *(v0 + 464);
    if (v46 != 1)
    {
      v57 = sub_9BBC();
      (*(v58 + 32))(v57);
      v59 = sub_9B30();
      sub_9A00(v59);
      v60 = swift_task_alloc();
      *(v0 + 528) = v60;
      *v60 = v0;
      sub_99BC(v60);
      sub_9B14();

      __asm { BRAA            X3, X16 }
    }

    v48 = *(v0 + 400);
    sub_998C();
    sub_9558(v47, v49);
    sub_986C(v48, &qword_1CB88, &qword_13B68);
  }

  sub_4E5C(*(v0 + 344), *(*(v0 + 344) + 24));
  sub_9BD8();
  sub_12AA0();
  sub_9A64("isMarkAsComplete");

  v50 = *(v0 + 40);
  sub_986C(v0 + 16, &qword_1CA48, &qword_13B70);
  if (v50)
  {
    sub_9D04();
    sub_12D90();
    v51 = sub_9CF0();
    v52(v51);
    v53 = sub_9A3C();
    sub_9C4C(v53);

    v54 = sub_9BD8();
    v55(v54);
    if (*(v0 + 128))
    {
      sub_9B78();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_9AC4();
        v29 = sub_8F80(v68, v69, v70, v29);
      }

      v56 = *(v29 + 3);
      if (*(v29 + 2) >= v56 >> 1)
      {
        sub_9A8C(v56);
      }

      sub_58CC((v0 + 64));
      sub_9BF0();
    }

    else
    {
      sub_986C(v0 + 104, &qword_1CB90, &qword_13B78);
    }
  }

  sub_9C14(*(v0 + 464));

  sub_9BCC();
  sub_9B14();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_8D00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_8DAC;

  return sub_79A4();
}

uint64_t sub_8DAC()
{
  sub_9B08();
  v2 = v1;
  sub_9BE4();
  v3 = *v0;
  sub_9AD4();
  *v4 = v3;

  sub_9BCC();

  return v5(v2);
}

char *sub_8E94(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_9098(v8, v7);
  v10 = *(type metadata accessor for NotebookSuggestion(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_2394(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_8F80(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2308(&qword_1CB98, &qword_13B80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_2474((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2308(&qword_1CBA0, &qword_13B88);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_9098(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2308(&unk_1CBF0, &unk_13750);
  v4 = *(type metadata accessor for NotebookSuggestion(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
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

unint64_t sub_9194(uint64_t a1, uint64_t a2)
{
  sub_12F50();
  sub_12DC0();
  v4 = sub_12F60();

  return sub_9278(a1, a2, v4);
}

uint64_t sub_920C()
{
  sub_12F50();
  sub_12DC0();
  v0 = sub_12F60();

  return sub_932C(v0);
}

unint64_t sub_9278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_12F30() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_9358(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_9660(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for NotebookSuggestion(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_946C()
{
  result = qword_1CB40;
  if (!qword_1CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB40);
  }

  return result;
}

uint64_t sub_94C0()
{
  sub_58CC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_94F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9AF8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_9558(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_9AF8();
  (*(v3 + 8))(a1);
  return a1;
}

char *sub_9660(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_8E94(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_96C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_9710(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_9724(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_9764(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_97C0()
{
  result = qword_1CB78;
  if (!qword_1CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB78);
  }

  return result;
}

unint64_t sub_9818()
{
  result = qword_1CB80;
  if (!qword_1CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB80);
  }

  return result;
}

uint64_t sub_986C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2308(a2, a3);
  sub_9AF8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_98C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_9928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2308(a3, a4);
  sub_9AF8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

double sub_9A64@<D0>(uint64_t a1@<X8>)
{

  return sub_5E54(0xD000000000000010, (a1 - 32) | 0x8000000000000000, v1, (v2 + 16));
}

char *sub_9A8C@<X0>(unint64_t a1@<X8>)
{

  return sub_8F80((a1 > 1), v2, 1, v1);
}

uint64_t sub_9B30()
{
  sub_4E5C(v0, v0[3]);

  return sub_12AA0();
}

uint64_t sub_9B78()
{
  sub_4F00((v0 + 104), v0 + 64);

  return sub_98C4(v0 + 64, v0 + 144);
}

uint64_t sub_9BF0()
{
  *(v0 + 16) = v1;

  return sub_4F00((v3 + 144), v0 + 40 * v2 + 32);
}

uint64_t sub_9C14(uint64_t a1)
{
}

uint64_t sub_9C30()
{
}

uint64_t sub_9C4C(uint64_t a1)
{

  return sub_12C70();
}

uint64_t sub_9C70()
{
  sub_4E5C(v0, v0[3]);

  return sub_12A90();
}

BOOL sub_9CB0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_9CCC()
{

  return swift_task_alloc();
}

uint64_t sub_9D30()
{
  v1 = sub_12890();
  v0[8] = v1;
  sub_9A54(v1);
  v0[9] = v2;
  v0[10] = swift_task_alloc();
  v3 = sub_12910();
  v0[11] = v3;
  sub_9A54(v3);
  v0[12] = v4;
  v0[13] = swift_task_alloc();
  v5 = sub_12920();
  v0[14] = v5;
  sub_9A54(v5);
  v0[15] = v6;
  v0[16] = swift_task_alloc();
  sub_2308(&qword_1CBA8, &qword_13BC0);
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v7 = sub_99F0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_9EC8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v23 = v0[14];
  v24 = v0[17];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];
  sub_128F0();
  (*(v5 + 104))(v4, enum case for Calendar.Component.year(_:), v6);
  sub_12880();
  sub_128E0();
  v10 = v7;
  v11 = *(v8 + 8);
  v11(v10, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v3, v23);
  v12 = [objc_allocWithZone(BMPublisherOptions) init];
  v0[19] = v12;
  sub_A378(v1, v24);
  if (sub_4640(v24, 1, v9) == 1)
  {
    isa = 0;
  }

  else
  {
    v14 = v0[17];
    v15 = v0[8];
    isa = sub_12850().super.isa;
    v11(v14, v15);
  }

  [v12 setStartDate:isa];

  v16 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v17 = [v16 Intent];
  swift_unknownObjectRelease();
  v18 = [v17 publisherWithOptions:v12];

  v0[6] = sub_A3E8;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_A4AC;
  v0[5] = &unk_18F50;
  v19 = _Block_copy(v0 + 2);
  v20 = [v18 filterWithIsIncluded:v19];
  v0[20] = v20;
  _Block_release(v19);

  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  v21[1] = sub_A1C8;

  return sub_A51C(v20);
}

uint64_t sub_A1C8(char a1)
{
  *(*v1 + 176) = a1;

  v2 = sub_99F0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_A2C0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  sub_A75C(v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 176);

  return v3(v4);
}

uint64_t sub_A378(uint64_t a1, uint64_t a2)
{
  v4 = sub_2308(&qword_1CBA8, &qword_13BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A3E8(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    if ([v1 donatedBySiri] && (v3 = sub_AD1C(v2), v4))
    {
      if (v3 == 0xD000000000000010 && v4 == 0x8000000000014220)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_12F30();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_A4AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_A504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A53C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_A634;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000014, 0x80000000000141E0, sub_AA40, v2, &type metadata for Bool);
}

uint64_t sub_A634()
{

  v0 = sub_99F0();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_A75C(uint64_t a1)
{
  v2 = sub_2308(&qword_1CBA8, &qword_13BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_A7C4(uint64_t a1, void *a2)
{
  v4 = sub_2308(&unk_1CBB0, &unk_13BD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v19 = sub_AB68;
  v20 = v11;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_AC08;
  v18 = &unk_18FC8;
  v12 = _Block_copy(&aBlock);

  v19 = sub_ACB8;
  v20 = v9;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_ACC0;
  v18 = &unk_18FF0;
  v13 = _Block_copy(&aBlock);

  v14 = [a2 sinkWithCompletion:v12 shouldContinue:v13];
  _Block_release(v13);
  _Block_release(v12);
}

uint64_t sub_AA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_2308(&unk_1CBB0, &unk_13BD0);
  return sub_12E20();
}

uint64_t sub_AAC0()
{
  v1 = sub_2308(&unk_1CBB0, &unk_13BD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_AB68(uint64_t a1)
{
  v3 = sub_2308(&unk_1CBB0, &unk_13BD0);
  sub_9A54(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_AA58(a1, v1 + v8, v9);
}

void sub_AC08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_AC70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  return 0;
}

uint64_t sub_ACC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_AD1C(void *a1)
{
  v1 = [a1 intentClass];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_12DB0();

  return v3;
}

void sub_ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E24();
  v164 = sub_12A00();
  sub_5C78();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_FCCC();
  v25 = (v24 - v23);
  v26 = type metadata accessor for NotebookSuggestion(0);
  v27 = (v26 - 8);
  v136 = *(v26 - 8);
  v137 = v136;
  __chkstk_darwin(v26);
  sub_5CE8();
  v168 = (v28 - v29);
  v31 = __chkstk_darwin(v30);
  v135 = &v118 - v32;
  __chkstk_darwin(v31);
  v34 = (&v118 - v33);
  sub_FDD8();
  v130 = v35;
  v133 = 0x8000000000014260;
  *v25 = 0xD000000000000023;
  v25[1] = 0x8000000000014260;
  v165 = enum case for SiriSuggestions.IntentType.inIntent(_:);
  v36 = *(v21 + 104);
  v166 = v21 + 104;
  v167 = v36;
  v125 = v25;
  (v36)(v25);
  v132 = sub_12A20();
  v34[5] = v132;
  v34[6] = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_4FBC(v34 + 2);
  sub_FE2C();
  v131 = sub_2308(&qword_1CBC0, &qword_13C50);
  v37 = swift_allocObject();
  v170 = xmmword_13760;
  *(v37 + 16) = xmmword_13760;
  v38 = v37;
  v124 = v37;
  v129 = sub_2308(&qword_1CBC8, &qword_13C58);
  v172 = v129;
  v128 = sub_F584();
  v173 = v128;
  sub_4FBC(&v171);
  v127 = sub_12A50();
  v126 = sub_12AE0();
  sub_12A40();
  sub_10070(0xD000000000000016, 0x80000000000140A0, &v171, (v38 + 32));
  v39 = v27[10];
  v40 = enum case for SuggestionDialogUtil.DialogId.addReminderLocation(_:);
  v162 = sub_129A0();
  sub_9AF8();
  v161 = *(v41 + 104);
  v163 = v41 + 104;
  v161(v34 + v39, v40);
  v160 = sub_2308(&qword_1CBD8, &qword_13C70);
  v152 = sub_12AD0();
  sub_5C78();
  v43 = *(v42 + 72);
  v158 = *(v44 + 80);
  v159 = v43;
  v45 = v44;
  v46 = (v158 + 32) & ~v158;
  v140 = v46;
  v47 = swift_allocObject();
  sub_FCF4(v47);
  v49 = v48;
  v122 = v48;
  v50 = enum case for SiriHintsMode.display(_:);
  v156 = enum case for SiriHintsMode.display(_:);
  v155 = sub_129E0();
  sub_9AF8();
  v154 = *(v51 + 104);
  v157 = v51 + 104;
  v154(v49 + v46, v50);
  v150 = enum case for DeliveryVehicle.siriHints(_:);
  v52 = *(v45 + 104);
  v151 = v45 + 104;
  v153 = v52;
  v52(v49 + v46);
  v147 = sub_2308(&unk_1CBE0, &qword_13C78);
  v53 = *(sub_12B60() - 8);
  v149 = *(v53 + 72);
  v148 = *(v53 + 80);
  v139 = (v148 + 32) & ~v148;
  v54 = swift_allocObject();
  sub_FCF4(v54);
  sub_12B80();
  v120 = sub_12980();
  v119 = v55;
  v146 = sub_2308(&qword_1CB50, &qword_13A78);
  v56 = sub_12A60();
  sub_FCB8();
  v58 = v57;
  v60 = *(v59 + 72);
  v145 = *(v57 + 80);
  v61 = (v145 + 32) & ~v145;
  v144 = 3 * v60;
  v62 = swift_allocObject();
  v169 = xmmword_13A00;
  *(v62 + 16) = xmmword_13A00;
  v143 = enum case for DeviceType.iPhone(_:);
  v63 = *(v58 + 104);
  (v63)(v62 + v61);
  v142 = enum case for DeviceType.iPad(_:);
  v138 = v60;
  (v63)(v62 + v61 + v60);
  v64 = v62 + v61 + 2 * v60;
  v141 = enum case for DeviceType.mac(_:);
  v65 = v56;
  (v63)(v64);
  v134 = v34;
  v66 = v130;
  *v34 = 0xD000000000000013;
  v34[1] = v66;
  v34[7] = v124;
  v34[8] = &unk_13C68;
  v34[9] = 0;
  *(v34 + v27[11]) = &_swiftEmptyArrayStorage;
  *(v34 + v27[12]) = v122;
  v67 = (v34 + v27[13]);
  *v67 = sub_FCB4;
  v67[1] = 0;
  *(v34 + v27[14]) = v54;
  v68 = (v34 + v27[15]);
  *v68 = &unk_13C80;
  v68[1] = 0;
  *(v34 + v27[16]) = v62;
  v69 = (v34 + v27[17]);
  v70 = v119;
  *v69 = v120;
  v69[1] = v70;
  v71 = v125;
  v72 = v133;
  *v125 = 0xD000000000000023;
  v71[1] = v72;
  (v167)(v71, v165, v164);
  v73 = v135;
  *(v135 + 5) = v132;
  v73[6] = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_4FBC(v73 + 2);
  sub_FE2C();
  v74 = swift_allocObject();
  sub_FCF4(v74);
  v76 = v75;
  v133 = v75;
  v172 = v129;
  v173 = v128;
  sub_4FBC(&v171);
  sub_12A40();
  sub_10070(0xD000000000000017, 0x8000000000014080, &v171, (v76 + 32));
  (v161)(v73 + v27[10], enum case for SuggestionDialogUtil.DialogId.addReminderTime(_:), v162);
  v77 = swift_allocObject();
  sub_FCF4(v77);
  sub_FD6C();
  v78();
  sub_FD24();
  v79();
  sub_FD8C();
  v80 = swift_allocObject();
  sub_FCF4(v80);
  sub_12B80();
  v132 = sub_12980();
  v131 = v81;
  v123 = v61;
  sub_FD8C();
  v82 = swift_allocObject();
  *(v82 + 16) = v169;
  v83 = v82 + v61;
  v84 = v65;
  v121 = v65;
  v85 = v65;
  v86 = v63;
  (v63)(v83, v143, v85);
  v87 = v138;
  (v86)(v83 + v138, v142, v84);
  (v86)(v83 + 2 * v87, v141, v84);
  *v73 = 0x6E696D6552646461;
  v73[1] = 0xEF656D6954726564;
  v73[7] = v133;
  v73[8] = &unk_13C90;
  v73[9] = 0;
  *(v73 + v27[11]) = &_swiftEmptyArrayStorage;
  *(v73 + v27[12]) = v77;
  v88 = (v73 + v27[13]);
  *v88 = sub_FCB4;
  v88[1] = 0;
  *(v73 + v27[14]) = v80;
  v89 = (v73 + v27[15]);
  *v89 = &unk_13C98;
  v89[1] = 0;
  *(v73 + v27[16]) = v82;
  v90 = (v73 + v27[17]);
  v91 = v131;
  *v90 = v132;
  v90[1] = v91;
  sub_FDD8();
  v133 = v92;
  v93 = v168;
  v168[5] = v164;
  v93[6] = &protocol witness table for SiriSuggestions.IntentType;
  sub_4FBC(v93 + 2);
  sub_FDD8();
  *v94 = 0xD00000000000002BLL;
  v94[1] = v95;
  v167();
  (v161)(v93 + v27[10], enum case for SuggestionDialogUtil.DialogId.updateReminderTime(_:), v162);
  v96 = swift_allocObject();
  sub_FCF4(v96);
  sub_FD6C();
  v97();
  sub_FD24();
  v98();
  sub_FD8C();
  v99 = swift_allocObject();
  sub_FCF4(v99);
  sub_12B80();
  *&v170 = sub_12980();
  v167 = v100;
  v101 = v123;
  sub_FD8C();
  v102 = swift_allocObject();
  *(v102 + 16) = v169;
  (v86)(v102 + v101, v143, v121);
  sub_FE14();
  v86();
  sub_FE14();
  v86();
  v103 = v168;
  v104 = v133;
  *v168 = 0xD000000000000012;
  v103[1] = v104;
  v103[7] = &_swiftEmptyArrayStorage;
  v103[8] = &unk_13CA8;
  v103[9] = 0;
  *(v103 + v27[11]) = &_swiftEmptyArrayStorage;
  *(v103 + v27[12]) = v96;
  v105 = (v103 + v27[13]);
  *v105 = sub_FCB4;
  v105[1] = 0;
  *(v103 + v27[14]) = v99;
  v106 = (v103 + v27[15]);
  *v106 = &unk_13CB0;
  v106[1] = 0;
  *(v103 + v27[16]) = v102;
  v107 = (v103 + v27[17]);
  v108 = v167;
  *v107 = v170;
  v107[1] = v108;
  sub_2308(&unk_1CBF0, &unk_13750);
  v109 = *(v136 + 72);
  v110 = (*(v137 + 80) + 32) & ~*(v137 + 80);
  v111 = swift_allocObject();
  *(v111 + 16) = v169;
  v112 = sub_9BD8();
  sub_F8B4(v112, v113);
  sub_F8B4(v103, v111 + v110 + v109);
  v114 = v111 + v110 + 2 * v109;
  v115 = v134;
  sub_F8B4(v134, v114);
  sub_F918(v103, type metadata accessor for NotebookSuggestion);
  v116 = sub_9BD8();
  sub_F918(v116, v117);
  sub_F918(v115, type metadata accessor for NotebookSuggestion);
  sub_5DEC();
}

uint64_t sub_BB2C()
{
  sub_12D10();
  v0 = sub_12AC0();
  v3[3] = v0;
  v3[4] = sub_FC60(&unk_1CC60, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  v1 = sub_4FBC(v3);
  (*(*(v0 - 8) + 104))(v1, enum case for CoreSignalTypes.app(_:), v0);
  result = sub_12CE0();
  qword_1CFE8 = result;
  return result;
}

uint64_t sub_BC1C()
{
  v0 = sub_12960();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12D10();
  v4 = sub_12AC0();
  v8[3] = v4;
  v8[4] = sub_FC60(&unk_1CC60, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  v5 = sub_4FBC(v8);
  (*(*(v4 - 8) + 104))(v5, enum case for CoreSignalTypes.app(_:), v4);
  (*(v1 + 104))(v3, enum case for SiriNotebookApp.reminders(_:), v0);
  sub_12950();
  (*(v1 + 8))(v3, v0);
  result = sub_12CE0();
  qword_1CFF0 = result;
  return result;
}

void sub_BDCC()
{
  sub_5E24();
  v0 = sub_12BC0();
  sub_FCB8();
  v161 = v1;
  __chkstk_darwin(v2);
  sub_FCCC();
  v154 = (v4 - v3);
  v5 = type metadata accessor for NotebookSuggestion(0);
  sub_FCB8();
  v145 = v6;
  __chkstk_darwin(v7);
  sub_5CE8();
  v138 = (v8 - v9);
  __chkstk_darwin(v10);
  v12 = &v110 - v11;
  v13 = sub_12A00();
  *(v12 + 5) = v13;
  *(v12 + 6) = &protocol witness table for SiriSuggestions.IntentType;
  sub_4FBC(v12 + 2);
  sub_FDD8();
  *v14 = 0xD000000000000023;
  v14[1] = v15;
  v16 = *(v13 - 8);
  v17 = *(v16 + 104);
  LODWORD(v144) = enum case for SiriSuggestions.IntentType.inIntent(_:);
  v141 = v13;
  v143 = v17;
  v142 = (v16 + 104);
  v17();
  sub_2308(&qword_1CBC0, &qword_13C50);
  v18 = swift_allocObject();
  v162 = xmmword_13C10;
  *(v18 + 16) = xmmword_13C10;
  sub_FBC0(0, &qword_1CC50, INIntent_ptr);
  sub_FE6C();
  sub_10070(0x656D614E7473696CLL, 0xE800000000000000, v163, (v18 + 32));
  sub_FE6C();
  v124 = v18;
  sub_10070(0x7265646E696D6572, 0xED0000656C746954, v163, (v18 + 136));
  v155 = v5;
  v19 = *(v5 + 32);
  v20 = enum case for SuggestionDialogUtil.DialogId.createReminder(_:);
  sub_129A0();
  sub_9AF8();
  v22 = *(v21 + 104);
  v135 = v23;
  v134 = v22;
  v133 = (v21 + 104);
  (v22)(&v12[v19], v20);
  v24 = sub_2308(&qword_1CC58, &qword_13D08);
  v25 = type metadata accessor for NotebookSuggestion.SignalDefinition(0);
  v26 = *(*(v25 - 8) + 80);
  v27 = (v26 + 32) & ~v26;
  v153 = *(*(v25 - 8) + 72);
  v123 = v26;
  *&v129 = v24;
  v28 = swift_allocObject();
  v160 = xmmword_13760;
  *(v28 + 16) = xmmword_13760;
  v140 = sub_2308(&qword_1CC40, &unk_13CE8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_13C20;
  if (qword_1C770 != -1)
  {
    swift_once();
  }

  *(v29 + 32) = qword_1CFF0;
  v147 = sub_12D10();

  *(v29 + 40) = sub_12CF0();
  *(v29 + 48) = sub_12D00();
  *(v29 + 56) = sub_12CD0();
  *(v28 + v27) = v29;
  sub_46C8(v28 + v27 + *(v25 + 20), 1, 1, v0);
  v159 = sub_2308(&qword_1CBD8, &qword_13C70);
  v152 = sub_12AD0();
  sub_5C78();
  v31 = v30;
  v33 = *(v32 + 72);
  v157 = *(v30 + 80);
  v139 = 2 * v33;
  v114 = ((v157 + 32) & ~v157) + 2 * v33;
  v146 = v25;
  v34 = (v157 + 32) & ~v157;
  v151 = v34;
  v35 = v33;
  v158 = v33;
  v36 = swift_allocObject();
  v37 = sub_FCF4(v36);
  v149 = v0;
  v39 = v38 + v34;
  v156 = enum case for DeliveryVehicle.siriHelp(_:);
  v40 = *(v31 + 104);
  v150 = v40;
  v40(v38 + v34, v37);
  v137 = enum case for DeliveryVehicle.siriAutoComplete(_:);
  (v40)(v39 + v35);
  v41 = sub_2308(&unk_1CBE0, &qword_13C78);
  v42 = *(sub_12B60() - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = v43 + *(v42 + 72);
  v128 = *(v42 + 80);
  v136 = v41;
  v127 = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v160;
  v132 = v43;
  sub_12B80();
  v112 = sub_12980();
  v111 = v46;
  v47 = sub_2308(&qword_1CB50, &qword_13A78);
  v110 = v28;
  v48 = v47;
  v49 = sub_12A60();
  sub_FCB8();
  v51 = v50;
  v113 = v27;
  v53 = *(v52 + 72);
  v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v120 = *(v50 + 80);
  v126 = v48;
  v119 = v54 + 3 * v53;
  v55 = swift_allocObject();
  v148 = xmmword_13A00;
  *(v55 + 16) = xmmword_13A00;
  v122 = v54;
  v56 = *(v51 + 104);
  v118 = enum case for DeviceType.iPhone(_:);
  v56(v55 + v54);
  v117 = enum case for DeviceType.iPad(_:);
  v56(v55 + v54 + v53);
  v116 = 2 * v53;
  v125 = v53;
  v115 = enum case for DeviceType.mac(_:);
  v131 = v49;
  v130 = v51 + 104;
  v121 = v56;
  v56(v55 + v54 + 2 * v53);
  strcpy(v12, "createReminder");
  v12[15] = -18;
  *(v12 + 7) = v124;
  *(v12 + 8) = &unk_13D00;
  *(v12 + 9) = 0;
  v57 = v155;
  *&v12[v155[9]] = v110;
  *&v12[v57[10]] = v36;
  v58 = &v12[v57[11]];
  *v58 = sub_FCB4;
  *(v58 + 1) = 0;
  *&v12[v57[12]] = v45;
  v59 = &v12[v57[13]];
  *v59 = &unk_13D10;
  *(v59 + 1) = 0;
  *&v12[v57[14]] = v55;
  v60 = &v12[v57[15]];
  v61 = v111;
  *v60 = v112;
  v60[1] = v61;
  v62 = v138;
  v138[5] = v141;
  v62[6] = &protocol witness table for SiriSuggestions.IntentType;
  sub_4FBC(v62 + 2);
  sub_FDD8();
  *v63 = 0xD000000000000025;
  v63[1] = v64;
  v143();
  v134(v62 + v57[8], enum case for SuggestionDialogUtil.DialogId.createNote(_:), v135);
  v65 = v113;
  sub_FD8C();
  v66 = swift_allocObject();
  sub_FCF4(v66);
  v143 = v67;
  v68 = (v67 + v65);
  v69 = swift_allocObject();
  v129 = xmmword_13C30;
  *(v69 + 16) = xmmword_13C30;
  *(v69 + 32) = sub_12CD0();
  *(v69 + 40) = sub_12CF0();
  v70 = swift_allocObject();
  v71 = sub_FCF4(v70);
  v73 = v72 + v151;
  LODWORD(v141) = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v74 = v152;
  v75 = v150;
  v150(v72 + v151, v71);
  v144 = v31 + 104;
  v75(v73 + v158, v156, v74);
  v76 = v154;
  *v154 = v70;
  v77 = v161;
  v78 = *(v161 + 104);
  LODWORD(v135) = enum case for SignalContextProperties.deliveryVehicle(_:);
  v79 = v149;
  v134 = v78;
  v78(v76);
  *v68 = v69;
  v80 = *(v146 + 20);
  v142 = v12;
  v81 = *(v77 + 32);
  v161 = v77 + 32;
  v133 = v81;
  v81(v68 + v80, v76, v79);
  sub_46C8(v68 + v80, 0, 1, v79);
  v82 = swift_allocObject();
  *(v82 + 16) = v129;
  *(v82 + 32) = sub_12D00();
  if (qword_1C768 != -1)
  {
    swift_once();
  }

  v83 = (v68 + v153);
  v153 = qword_1CFE8;
  *(v82 + 40) = qword_1CFE8;
  v84 = v151;
  v85 = swift_allocObject();
  *(v85 + 16) = v160;
  v86 = v152;
  v87 = v150;
  (v150)(v85 + v84, v156, v152);
  v88 = v154;
  *v154 = v85;
  v89 = v149;
  v134(v88, v135, v149);
  *v83 = v82;
  v90 = *(v146 + 20);
  v133(v83 + v90, v88, v89);
  sub_46C8(v83 + v90, 0, 1, v89);
  v91 = swift_allocObject();
  *(v91 + 16) = v148;
  (v87)(v91 + v84, v156, v86);
  sub_FE14();
  v87();
  sub_FE14();
  v87();
  sub_FD8C();
  v92 = swift_allocObject();
  *(v92 + 16) = v160;

  sub_12B70();
  v93 = sub_12970();
  v95 = v94;
  sub_FD8C();
  v96 = swift_allocObject();
  *(v96 + 16) = v148;
  v97 = v96 + v122;
  v98 = v131;
  v99 = v121;
  (v121)(v96 + v122, v118, v131);
  (v99)(v97 + v125, v117, v98);
  (v99)(v97 + v116, v115, v98);
  *v62 = 0x6F4E657461657263;
  v62[1] = 0xEA00000000006574;
  v62[7] = &_swiftEmptyArrayStorage;
  v62[8] = &unk_13D18;
  v62[9] = 0;
  v100 = v155;
  *(v62 + v155[9]) = v143;
  *(v62 + v100[10]) = v91;
  v101 = (v62 + v100[11]);
  *v101 = sub_FCB4;
  v101[1] = 0;
  *(v62 + v100[12]) = v92;
  v102 = (v62 + v100[13]);
  *v102 = &unk_13D20;
  v102[1] = 0;
  *(v62 + v100[14]) = v96;
  v103 = (v62 + v100[15]);
  *v103 = v93;
  v103[1] = v95;
  sub_2308(&unk_1CBF0, &unk_13750);
  v104 = *(v145 + 72);
  v105 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  v106 = swift_allocObject();
  sub_FCF4(v106);
  v108 = v107 + v105;
  v109 = v142;
  sub_F8B4(v142, v108);
  sub_FC00(v62, v108 + v104, type metadata accessor for NotebookSuggestion);
  sub_F918(v109, type metadata accessor for NotebookSuggestion);
  sub_5DEC();
}

uint64_t sub_CCD8()
{
  sub_9B08();
  sub_12D90();
  sub_9BCC();

  return v0();
}

uint64_t sub_CD50@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_12B00();
  v3 = sub_12AF0();
  a1[3] = v2;
  result = sub_FC60(&qword_1CC08, &type metadata accessor for UtteranceAction, &protocol conformance descriptor for UtteranceAction);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_CDCC()
{
  v0 = sub_2308(&unk_1CC20, &qword_13CD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_12A50();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_12A30();
  if (sub_4640(v2, 1, v3) == 1)
  {
    sub_986C(v2, &unk_1CC20, &qword_13CD0);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    sub_304C(v7);
    v10 = (v11 >> 8) & 1;
    (*(v4 + 8))(v9, v3);
  }

  return v10;
}

uint64_t sub_CF8C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_129F0();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_D058, 0, 0);
}

uint64_t sub_D058()
{
  v1 = *(v0 + 168);
  sub_4E5C(*(v0 + 144), *(*(v0 + 144) + 24));
  sub_FDE4();
  v2 = sub_FDC0();
  v3(v2);
  sub_FDB4();
  v4 = sub_5F04();
  v5 = *(v1 + 8);
  v6 = sub_FD98();
  v5(v6);
  v7 = sub_FE08();
  v5(v7);
  if ((v4 & 1) == 0)
  {
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);
    sub_12B30();
    v21(v8, enum case for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.displayForward(_:), v9);
    sub_FDB4();
    v10 = sub_5F04();
    v11 = sub_FD98();
    v5(v11);
    v12 = sub_FE08();
    v5(v12);
    if ((v10 & 1) == 0)
    {
      sub_2308(&qword_1CC10, &qword_13CC0);
      inited = swift_initStackObject();
      v18 = sub_FD48(inited, xmmword_13C10);
      v18[3].n128_u8[0] = 0;
      v18[4].n128_u64[1] = &type metadata for Bool;
      strcpy(&v18[5], "isDisplayHint");
      v18[5].n128_u16[7] = -4864;
      v18[7].n128_u64[1] = &type metadata for Bool;
      v18[6].n128_u8[0] = 0;
      sub_12D90();

      sub_FD00();
      sub_9B14();

      __asm { BRAA            X2, X16 }
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_D2A4;
  sub_9B14();

  return sub_D4A4(v14);
}

uint64_t sub_D2A4()
{
  sub_9B08();
  *(*v0 + 200) = v1;

  return _swift_task_switch(sub_D3A0, 0, 0);
}

uint64_t sub_D3A0()
{
  v1 = *(v0 + 200);
  sub_2308(&qword_1CC10, &qword_13CC0);
  inited = swift_initStackObject();
  v3 = sub_FD48(inited, xmmword_13C10);
  v3[3].n128_u8[0] = (v1 & 1) == 0;
  v3[4].n128_u64[1] = &type metadata for Bool;
  strcpy(&v3[5], "isDisplayHint");
  v3[5].n128_u16[7] = -4864;
  v3[7].n128_u64[1] = &type metadata for Bool;
  v3[6].n128_u8[0] = 1;
  sub_12D90();

  v4 = sub_FD00();

  return v5(v4);
}

uint64_t sub_D4C4()
{

  sub_37F8(v1, v0 + 16);
  if (*(v0 + 16) != 2 && (*(v0 + 32) & 1) == 0 && (*(v0 + 48) & 1) == 0)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    v4 = [objc_allocWithZone(CNContactStore) init];
    *(v0 + 64) = v4;
    v5 = [objc_opt_self() defaultManager];
    *(v0 + 72) = v5;
    sub_EEC0(v4);
    if (v6)
    {
      v7 = [objc_allocWithZone(CLLocation) initWithLatitude:v2 longitude:v3];
      *(v0 + 80) = v7;
      v8 = swift_task_alloc();
      *(v0 + 88) = v8;
      v8[2] = v5;
      v8[3] = 0x407F400000000000;
      v8[4] = v7;
      v9 = swift_task_alloc();
      *(v0 + 96) = v9;
      *v9 = v0;
      v9[1] = sub_D6BC;

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 49, 0, 0, 0xD000000000000040, 0x80000000000142C0, sub_FA80, v8, &type metadata for Bool);
    }
  }

  sub_9BCC();

  return v10(1);
}

uint64_t sub_D6BC()
{
  sub_9B08();
  v1 = *v0;
  sub_9AD4();
  *v2 = v1;

  return _swift_task_switch(sub_D7C8, 0, 0);
}

uint64_t sub_D7C8()
{
  sub_9B08();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  if (*(v0 + 49) == 1 && sub_F99C(v3, &off_18C60) == 2)
  {
    __break(1u);
  }

  sub_9BCC();
  v6 = v5 & 1;

  return v4(v6);
}

uint64_t sub_D85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_12B10();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_D920, 0, 0);
}

uint64_t sub_D920()
{
  sub_9B08();

  sub_37F8(v1, v0 + 16);
  v2 = *(v0 + 16);
  if (v2 == 2)
  {
    goto LABEL_2;
  }

  v5 = *(v0 + 96);
  (*(*(v0 + 88) + 16))(v5, *(v0 + 56), *(v0 + 80));
  sub_2BF4(v5);
  if (v2 & 1) == 0 || (v6 & 0x100) != 0 || (v6)
  {
    goto LABEL_2;
  }

  if (qword_1C780 != -1)
  {
    swift_once();
  }

  if (sub_11CDC() - 3 > 1)
  {
LABEL_2:

    sub_9BCC();

    return v3(0);
  }

  else
  {
    sub_4E5C(*(v0 + 72), *(*(v0 + 72) + 24));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_DA84;

    return sub_9D30();
  }
}

uint64_t sub_DA84(uint64_t a1)
{
  v3 = *v1;
  sub_9AD4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_DB9C()
{
  v0 = sub_2308(&unk_1CC20, &qword_13CD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_12A50();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_12A30();
  if (sub_4640(v2, 1, v3) == 1)
  {
    sub_986C(v2, &unk_1CC20, &qword_13CD0);
    v10 = 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    sub_304C(v7);
    v10 = v11;
    (*(v4 + 8))(v9, v3);
  }

  return v10 & 1;
}

uint64_t sub_DD5C(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_129F0();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_DE28, 0, 0);
}

void sub_DE28()
{
  v1 = *(v0 + 208);
  sub_4E5C(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_FDE4();
  v2 = sub_FDC0();
  v3(v2);
  sub_FDB4();
  v4 = sub_5F04();
  v5 = *(v1 + 8);
  v6 = sub_FD98();
  v5(v6);
  v7 = sub_FE08();
  v5(v7);
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v9 = *(v0 + 216);
    v10 = *(v0 + 200);
    sub_12B30();
    v19(v9, enum case for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.displayForward(_:), v10);
    sub_FDB4();
    v8 = sub_5F04();
    v11 = sub_FD98();
    v5(v11);
    v12 = sub_FE08();
    v5(v12);
  }

  sub_2308(&qword_1CC10, &qword_13CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13A00;
  *(inited + 32) = 0x7265746641796164;
  *(inited + 40) = 0xEF646E656B656557;
  sub_E094();
  v15 = v14;
  v16 = sub_2308(&qword_1CC18, &qword_13CC8);
  *(inited + 48) = v15;
  *(inited + 72) = v16;
  strcpy((inited + 80), "isDisplayHint");
  *(inited + 94) = -4864;
  *(inited + 96) = v8 & 1;
  *(inited + 120) = &type metadata for Bool;
  strcpy((inited + 128), "hintVariation");
  *(inited + 142) = -4864;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = sub_F9F4(2uLL) + 1;
  sub_12D90();

  sub_FD00();
  sub_9B14();

  __asm { BRAA            X2, X16 }
}

void sub_E094()
{
  sub_5E24();
  sub_12940();
  sub_FCB8();
  v31 = v1;
  v32 = v2;
  __chkstk_darwin(v1);
  sub_FCCC();
  v5 = v4 - v3;
  v6 = sub_2308(&qword_1CBA8, &qword_13BC0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_FE4C();
  sub_FCB8();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_5CE8();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  sub_12920();
  sub_FCB8();
  __chkstk_darwin(v17);
  sub_FCCC();
  sub_128F0();
  sub_12880();
  if (sub_128C0())
  {
    sub_FD98();
    sub_EC20();
    if (sub_4640(v0, 1, v7) == 1)
    {
      (*(v9 + 8))(v16, v7);
      v18 = sub_FDA4();
      v19(v18);
      sub_986C(v0, &qword_1CBA8, &qword_13BC0);
    }

    else
    {
      (*(v9 + 32))(v13, v0, v7);
      sub_2308(&qword_1CC10, &qword_13CC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_13C10;
      *(inited + 32) = 1935893875;
      *(inited + 40) = 0xE400000000000000;
      sub_12870();
      *(inited + 48) = v23;
      *(inited + 72) = &type metadata for Double;
      *(inited + 80) = 0x656E6F5A656D6974;
      *(inited + 88) = 0xE800000000000000;
      sub_12900();
      v24 = sub_12930();
      v30 = v25;
      (*(v32 + 8))(v5, v31);
      *(inited + 120) = &type metadata for String;
      v26 = v30;
      *(inited + 96) = v24;
      *(inited + 104) = v26;
      sub_12D90();
      v27 = *(v9 + 8);
      v27(v13, v7);
      v27(v16, v7);
      v28 = sub_FDA4();
      v29(v28);
    }
  }

  else
  {
    (*(v9 + 8))(v16, v7);
    v20 = sub_FDA4();
    v21(v20);
  }

  sub_5DEC();
}

uint64_t sub_E43C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_12B10();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_E4FC, 0, 0);
}

uint64_t sub_E4FC()
{
  sub_9B08();

  sub_37F8(v1, v0 + 16);
  v2 = *(v0 + 16);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 88);
    (*(*(v0 + 80) + 16))(v4, *(v0 + 56), *(v0 + 72));
    sub_2BF4(v4);
    if (v2)
    {
      v3 = ((v5 & 0x100) == 0) & (v5 ^ 1u);
    }

    else
    {
      v3 = 0;
    }
  }

  sub_9BCC();

  return v6(v3);
}

uint64_t sub_E5BC()
{
  v1 = sub_12890();
  v0[12] = v1;
  v0[13] = *(v1 - 8);
  v0[14] = swift_task_alloc();
  v2 = sub_12920();
  v0[15] = v2;
  v0[16] = *(v2 - 8);
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_E6D4, 0, 0);
}

uint64_t sub_E6D4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  sub_2308(&qword_1CC10, &qword_13CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13760;
  *(inited + 32) = 0x6E656B6565577369;
  *(inited + 40) = 0xE900000000000064;
  sub_128F0();
  sub_12880();
  v8 = sub_128C0();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v8 & 1;
  sub_12D90();

  v9 = sub_FD00();

  return v10(v9);
}

uint64_t sub_E82C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  sub_2308(&qword_1CBA8, &qword_13BC0);
  v2[3] = swift_task_alloc();
  v3 = sub_12890();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_12920();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_2308(&qword_1CC00, &qword_13CB8);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for UpdateReminderExecutionParameters(0);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_E9F4, 0, 0);
}

uint64_t sub_E9F4()
{
  v1 = v0[11];
  v2 = v0[12];

  sub_3DC8(v3);
  if (sub_4640(v1, 1, v2) == 1)
  {
    v4 = v0[11];
    v5 = &qword_1CC00;
    v6 = &qword_13CB8;
LABEL_5:
    sub_986C(v4, v5, v6);
    v15 = 0;
    goto LABEL_7;
  }

  v8 = v0[3];
  v7 = v0[4];
  sub_FC00(v0[11], v0[13], type metadata accessor for UpdateReminderExecutionParameters);
  sub_128F0();
  sub_128D0();
  v9 = sub_4640(v8, 1, v7);
  v10 = v0[13];
  if (v9 == 1)
  {
    v11 = v0[3];
    v12 = sub_9BD8();
    v13(v12);
    sub_FCDC();
    sub_F918(v10, v14);
    v5 = &qword_1CBA8;
    v6 = &qword_13BC0;
    v4 = v11;
    goto LABEL_5;
  }

  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[4];
  v19 = v0[5];
  (*(v19 + 32))(v16, v0[3], v18);
  sub_12880();
  sub_FD98();
  v15 = sub_12860();
  v20 = *(v19 + 8);
  v20(v17, v18);
  v20(v16, v18);
  v21 = sub_9BD8();
  v22(v21);
  sub_FCDC();
  sub_F918(v10, v23);
LABEL_7:

  sub_9BCC();

  return v24(v15 & 1);
}

void sub_EC20()
{
  sub_5E24();
  sub_FE20();
  v28 = v2;
  v3 = sub_12910();
  sub_FCB8();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_FCCC();
  v9 = v8 - v7;
  v10 = sub_2308(&qword_1CBA8, &qword_13BC0);
  __chkstk_darwin(v10 - 8);
  v11 = sub_FE4C();
  sub_FCB8();
  __chkstk_darwin(v12);
  sub_FCCC();
  v15 = v14 - v13;
  v18 = *(v5 + 104);
  v16 = v5 + 104;
  v17 = v18;
  v33 = enum case for Calendar.Component.day(_:);
  v31 = (v19 + 32);
  v32 = (v16 - 96);
  v29 = (v19 + 8);
  v30 = v18;
  v20 = 1;
  while (1)
  {
    v17(v9, v33, v3);
    sub_FDB4();
    sub_128E0();
    (*v32)(v9, v3);
    if (sub_4640(v1, 1, v11) != 1)
    {
      break;
    }

    sub_986C(v1, &qword_1CBA8, &qword_13BC0);
LABEL_6:
    if (++v20 == 7)
    {
      v26 = 1;
      v27 = v28;
      goto LABEL_9;
    }
  }

  v21 = v9;
  v22 = v3;
  v23 = v16;
  v24 = v0;
  v25 = *v31;
  (*v31)(v15, v1, v11);
  if (sub_128C0())
  {
    (*v29)(v15, v11);
    v0 = v24;
    v16 = v23;
    v3 = v22;
    v9 = v21;
    v17 = v30;
    goto LABEL_6;
  }

  v27 = v28;
  v25(v28, v15, v11);
  v26 = 0;
LABEL_9:
  sub_46C8(v27, v26, 1, v11);
  sub_5DEC();
}

void sub_EEC0(void *a1)
{
  v1 = sub_F45C(a1);
  if (v1)
  {
    v17 = v1;
    v2 = [v1 postalAddresses];
    sub_2308(&qword_1CC38, &qword_13CE0);
    v3 = sub_12E00();

    v4 = sub_F978(v3);
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {
LABEL_19:

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_12EC0();
      }

      else
      {
        if (i >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_26;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = [v6 label];
      if (v8)
      {
        v9 = v8;
        v10 = sub_12DB0();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v13 = sub_12DB0();
      if (v12)
      {
        if (v10 == v13 && v12 == v14)
        {

          return;
        }

        v16 = sub_12F30();

        if (v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_F0C8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = sub_2308(&unk_1CBB0, &unk_13BD0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_FB1C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_F3B8;
  aBlock[3] = &unk_19078;
  v14 = _Block_copy(aBlock);

  [a2 fetchLocationsOfInterestWithinDistance:a3 ofLocation:v14 withHandler:a4];
  _Block_release(v14);
}

void sub_F290(unint64_t a1, uint64_t a2)
{
  if (a1 && !a2)
  {
    v3 = sub_F978(a1);
    v4 = 0;
    do
    {
      v5 = v4;
      if (v3 == v4)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_12EC0();
      }

      else
      {
        if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v8 = [v6 type];

      v4 = v5 + 1;
    }

    while (v8);
  }

  sub_2308(&unk_1CBB0, &unk_13BD0);
  sub_12E20();
}

uint64_t sub_F3B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_FBC0(0, &qword_1CC30, RTLocationOfInterest_ptr);
    v4 = sub_12E00();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_F45C(void *a1)
{
  sub_2308(&qword_1CC40, &unk_13CE8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_13C40;
  *(v2 + 32) = CNContactPostalAddressesKey;
  v3 = CNContactPostalAddressesKey;
  sub_2308(&qword_1CC48, &qword_13CF8);
  isa = sub_12DF0().super.isa;

  v9 = 0;
  v5 = [a1 _ios_meContactWithKeysToFetch:isa error:&v9];

  v6 = v9;
  if (!v5)
  {
    v7 = v6;
    sub_12820();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_F584()
{
  result = qword_1CBD0;
  if (!qword_1CBD0)
  {
    sub_F5E8(&qword_1CBC8, &qword_13C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBD0);
  }

  return result;
}

uint64_t sub_F5E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_F630()
{
  sub_9B08();
  sub_FE20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_FD10(v1);

  return sub_CF8C(v2, v3);
}

uint64_t sub_F6B8()
{
  sub_9B08();
  v2 = v1;
  v3 = *v0;
  sub_9AD4();
  *v4 = v3;

  sub_9BCC();

  return v5(v2);
}

uint64_t sub_F7A4()
{
  sub_9B08();
  sub_FE20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_FD10(v1);

  return sub_DD5C(v2);
}

uint64_t sub_F82C()
{
  sub_9B08();
  sub_FE20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_FD10(v1);

  return sub_E5BC();
}

uint64_t sub_F8B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotebookSuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F918(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9AF8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_F978(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

unint64_t sub_F99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 2;
  }

  result = sub_F9F4(*(a2 + 16));
  if (result < v2)
  {
    return *(a2 + result + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_F9F4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_FA90()
{
  sub_2308(&unk_1CBB0, &unk_13BD0);
  sub_9AF8();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_FB1C(unint64_t a1, uint64_t a2)
{
  sub_2308(&unk_1CBB0, &unk_13BD0);

  sub_F290(a1, a2);
}

uint64_t sub_FBA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_FBC0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_FC00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9AF8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_FC60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_FCF4(__n128 *a1)
{
  result = *(v1 - 144);
  a1[1] = result;
  return result;
}

__n128 *sub_FD48(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6948656D6F487369;
  result[2].n128_u64[1] = 0xEA0000000000746ELL;
  return result;
}

uint64_t sub_FDE4()
{

  return sub_12B30();
}

uint64_t sub_FE2C()
{

  return SiriSuggestions.IntentMatch.init(intentType:matcher:)(v1, v0, 0);
}

uint64_t sub_FE4C()
{

  return sub_12890();
}

uint64_t sub_FE6C()
{

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(v0, 0, v1);
}

uint64_t sub_FE8C()
{
  v1 = sub_12840();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NotebookSuggestion(0);
  sub_12990();
  sub_129B0();
  v6 = type metadata accessor for NotebookSuggestionsAssetProvider();
  v7 = swift_allocObject();
  v13[3] = v6;
  v13[4] = sub_11088();
  v13[0] = v7;
  v8 = (v0 + *(v5 + 44));
  v10 = *v8;
  v9 = v8[1];
  v12[3] = &type metadata for NotebookSuggestion.InvocationProvider;
  v12[4] = sub_110DC();
  v12[0] = v10;
  v12[1] = v9;

  sub_12AB0();

  (*(v2 + 8))(v4, v1);
  sub_58CC(v12);
  return sub_58CC(v13);
}

uint64_t sub_10018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for NotebookSuggestion.SignalDefinition(0) + 20);
  v4 = sub_12BC0();

  return sub_46C8(a2 + v3, 1, 1, v4);
}

uint64_t sub_10070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2308(&qword_1CD18, &qword_13D88);
  __chkstk_darwin(v8 - 8);
  swift_bridgeObjectRetain_n();
  sub_12BB0();
  sub_98C4(a3, v12);
  sub_12B50();
  swift_allocObject();
  v9 = sub_12B40();
  a4[5] = &type metadata for TrueResolver;
  v10 = sub_11130();
  a4[2] = a1;
  a4[3] = a2;
  *a4 = a1;
  a4[1] = a2;
  a4[6] = v10;
  a4[7] = v9;
  return sub_4F00(a3, (a4 + 8));
}

uint64_t sub_101B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_11B44();
}

uint64_t sub_101C8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = [v2 targetTaskList];
    v5 = *(v0 + 24);
    if (v4)
    {
      v6 = v4;
      v7 = *(v0 + 16);
      v8 = [v4 title];

      v9 = [v8 description];
      v10 = sub_12DB0();
      v12 = v11;

      v7[3] = &type metadata for String;
      *v7 = v10;
      v7[1] = v12;
      v13 = &enum case for IntentParameter.directAssignment(_:);
      goto LABEL_6;
    }
  }

  v7 = *(v0 + 16);
  v13 = &enum case for IntentParameter.ignore(_:);
LABEL_6:
  v14 = *v13;
  sub_12AE0();
  sub_9AF8();
  (*(v15 + 104))(v7, v14);
  sub_11B54();

  return v16();
}

uint64_t sub_10338(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_11B44();
}

uint64_t sub_1034C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = *(v0 + 24);
  v4 = [v2 targetTaskList];
  if (!v4)
  {
    v19 = *(v0 + 24);
LABEL_10:

LABEL_11:
    v11 = *(v0 + 16);
    v18 = &enum case for IntentParameter.ignore(_:);
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [v4 tasks];

  sub_111DC();
  v7 = sub_12E00();

  result = sub_F974(v7);
  if (!result)
  {
    v19 = *(v0 + 24);

    goto LABEL_10;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_12EC0();
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  v13 = [v10 title];

  v14 = [v13 description];
  v15 = sub_12DB0();
  v17 = v16;

  v11[3] = &type metadata for String;
  *v11 = v15;
  v11[1] = v17;
  v18 = &enum case for IntentParameter.directAssignment(_:);
LABEL_12:
  v20 = *v18;
  sub_12AE0();
  sub_9AF8();
  (*(v21 + 104))(v11, v20);
  sub_11B54();

  return v22();
}

uint64_t sub_10550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for NotebookSuggestion(0);
  v6 = v5;
  if (v4)
  {
    sub_F8B4(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_46C8(a2, v7, 1, v6);
}

uint64_t sub_105F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_12A50();
  sub_11BB0(v3);
  v2[5] = v4;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_106A8, 0, 0);
}

uint64_t sub_106A8()
{
  v2 = sub_11B64();
  v3(v2);
  sub_304C(v1);
  *(v0 + 24) = &type metadata for Bool;
  *v0 = v4 & 1;
  v5 = enum case for IntentParameter.directAssignment(_:);
  sub_12AE0();
  sub_9AF8();
  (*(v6 + 104))(v0, v5);

  sub_11B54();

  return v7();
}

uint64_t sub_10778(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_12A50();
  sub_11BB0(v3);
  v2[5] = v4;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1082C, 0, 0);
}

uint64_t sub_1082C()
{
  v2 = sub_11B64();
  v3(v2);
  sub_304C(v1);
  *(v0 + 24) = &type metadata for Bool;
  *v0 = v4 & 1;
  v5 = enum case for IntentParameter.directAssignment(_:);
  sub_12AE0();
  sub_9AF8();
  (*(v6 + 104))(v0, v5);

  sub_11B54();

  return v7();
}

uint64_t sub_108FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2308(&qword_1CD30, &qword_13DA8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v45 - v7;
  v9 = sub_2308(&qword_1CD38, &qword_13DB0);
  __chkstk_darwin(v9 - 8);
  v11 = v45 - v10;
  v12 = type metadata accessor for NotebookSuggestion(0);
  sub_9AF8();
  __chkstk_darwin(v13);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BDCC();
  v17 = v16;
  sub_ADA0(v16, v18, v19, v20, v21, v22, v23, v24, v45[0], v45[1], v46, v47, v48[0], v48[1], v48[2], v49, v50, v51, v52, v53);
  v48[0] = v17;
  sub_9358(v25);
  v46 = a2;
  v26 = sub_10DFC(sub_11220, v45, v48[0]);
  sub_10550(v26, v11);

  if (sub_4640(v11, 1, v12) == 1)
  {
    sub_11240(v11);
    if (qword_1C778 != -1)
    {
      swift_once();
    }

    v27 = sub_12D60();
    sub_4DE0(v27, qword_1CFF8);
    sub_98C4(a2, v48);
    v28 = sub_12D40();
    v29 = sub_12E40();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = v31;
      *v30 = 136315138;
      sub_4E5C(v48, v49);
      v32 = sub_12B20();
      v34 = v33;
      sub_58CC(v48);
      v35 = sub_47A8(v32, v34, &v47);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_0, v28, v29, "[NotebookSuggestionsAssetProvider] Cannot get matching NotebookSuggestion for candidate '%s', default to Siri icon", v30, 0xCu);
      sub_58CC(v31);
    }

    else
    {

      sub_58CC(v48);
    }

    strcpy(v8, "com.apple.siri");
    v8[15] = -18;
    v42 = enum case for Image.appIcon(_:);
    v43 = sub_12CB0();
    sub_9AF8();
    (*(v44 + 104))(v8, v42, v43);
    sub_46C8(v8, 0, 1, v43);
    sub_46C8(v6, 1, 1, v43);
    return sub_12CC0();
  }

  else
  {
    sub_112A8(v11, v15);
    v36 = &v15[*(v12 + 60)];
    v37 = *(v36 + 1);
    *v8 = *v36;
    *(v8 + 1) = v37;
    v38 = enum case for Image.appIcon(_:);
    v39 = sub_12CB0();
    sub_9AF8();
    (*(v40 + 104))(v8, v38, v39);
    sub_46C8(v8, 0, 1, v39);
    sub_46C8(v6, 1, 1, v39);

    sub_12CC0();
    return sub_1130C(v15);
  }
}

uint64_t sub_10D60(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  sub_4E5C(a2, a2[3]);
  if (v2 == sub_12B20() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_12F30();
  }

  return v6 & 1;
}

void *sub_10DFC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v5 = type metadata accessor for NotebookSuggestion(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5 - 8);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v26 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v13 == v12)
    {

      return v26;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    sub_F8B4(a3 + v14 + v15 * v12, v11);
    v16 = v27(v11);
    if (v3)
    {
      sub_1130C(v11);
      v22 = v26;

      return v22;
    }

    if (v16)
    {
      sub_112A8(v11, v25);
      v17 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24F0(0, v17[2] + 1, 1);
        v17 = v29;
      }

      v20 = v17[2];
      v19 = v17[3];
      v21 = (v20 + 1);
      if (v20 >= v19 >> 1)
      {
        v26 = (v20 + 1);
        v24 = v20;
        sub_24F0((v19 > 1), v20 + 1, 1);
        v21 = v26;
        v20 = v24;
        v17 = v29;
      }

      ++v12;
      v17[2] = v21;
      v26 = v17;
      result = sub_112A8(v25, v17 + v14 + v20 * v15);
    }

    else
    {
      result = sub_1130C(v11);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_11088()
{
  result = qword_1CD08;
  if (!qword_1CD08)
  {
    type metadata accessor for NotebookSuggestionsAssetProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD08);
  }

  return result;
}

unint64_t sub_110DC()
{
  result = qword_1CD10;
  if (!qword_1CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD10);
  }

  return result;
}

unint64_t sub_11130()
{
  result = qword_1CD20;
  if (!qword_1CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD20);
  }

  return result;
}

uint64_t sub_111A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_111DC()
{
  result = qword_1CD28;
  if (!qword_1CD28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CD28);
  }

  return result;
}

uint64_t sub_11240(uint64_t a1)
{
  v2 = sub_2308(&qword_1CD38, &qword_13DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_112A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotebookSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1130C(uint64_t a1)
{
  v2 = type metadata accessor for NotebookSuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11368(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_113A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_113F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_11414(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_11454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_114D0(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_11B9C(*a1);
  }

  sub_2308(&qword_1CB58, &qword_13A80);
  v5 = sub_11B7C(*(a3 + 20));

  return sub_4640(v5, v6, v7);
}

void sub_11568()
{
  sub_11B88();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2308(&qword_1CB58, &qword_13A80);
    v5 = sub_11B7C(*(v4 + 20));

    sub_46C8(v5, v6, v0, v7);
  }
}

void sub_115E4(uint64_t a1)
{
  sub_116C8(319, &qword_1CDA8, &type metadata accessor for Signal, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_116C8(319, &unk_1CDB0, &type metadata accessor for SignalContextProperties, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_116C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_11740(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_11B9C(*(a1 + 8));
  }

  sub_129A0();
  v5 = sub_11B7C(*(a3 + 32));

  return sub_4640(v5, v6, v7);
}

void sub_117CC()
{
  sub_11B88();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_129A0();
    v5 = sub_11B7C(*(v4 + 32));

    sub_46C8(v5, v6, v0, v7);
  }
}

unint64_t sub_1183C(uint64_t a1)
{
  sub_11A48(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_11AAC();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v2 = sub_11AFC();
      if (v6 <= 0x3F)
      {
        v7 = sub_129A0();
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_116C8(319, &qword_1CE68, type metadata accessor for NotebookSuggestion.SignalDefinition, &type metadata accessor for Array);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_116C8(319, &qword_1CE70, &type metadata accessor for DeliveryVehicle, &type metadata accessor for Array);
        if (v10 > 0x3F)
        {
          return v7;
        }

        sub_116C8(319, &qword_1CE78, &type metadata accessor for VersionedInvocation, &type metadata accessor for Array);
        if (v11 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_116C8(319, &unk_1CE80, &type metadata accessor for DeviceType, &type metadata accessor for Array);
          v2 = v12;
          if (v13 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_11A48(uint64_t a1)
{
  if (!qword_1CE48)
  {
    sub_F5E8(&qword_1CE50, qword_13E98);
    v1 = sub_12E90();
    if (!v2)
    {
      atomic_store(v1, &qword_1CE48);
    }
  }
}

void sub_11AAC()
{
  if (!qword_1CE58)
  {
    v0 = sub_12E10();
    if (!v1)
    {
      atomic_store(v0, &qword_1CE58);
    }
  }
}

unint64_t sub_11AFC()
{
  result = qword_1CE60;
  if (!qword_1CE60)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1CE60);
  }

  return result;
}

uint64_t sub_11B9C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_11BC4()
{
  v0 = sub_12D60();
  sub_11C48(v0, qword_1CFF8);
  sub_4DE0(v0, qword_1CFF8);
  return sub_12D50();
}

uint64_t *sub_11C48(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_11CAC()
{
  result = [objc_allocWithZone(type metadata accessor for LocationManager()) init];
  qword_1D010 = result;
  return result;
}

uint64_t sub_11CDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager__authorizationStatus;
  if (!*(v0 + OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager__authorizationStatus))
  {
    if (qword_1C778 != -1)
    {
      swift_once();
    }

    v3 = sub_12D60();
    sub_4DE0(v3, qword_1CFF8);
    v4 = sub_12D40();
    v5 = sub_12E50();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "[LocationManager] Failed to determine location services authorization for reminders.", v6, 2u);
    }
  }

  return *(v1 + v2);
}

id sub_11DD4()
{
  v10 = sub_12E70();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_12E60();
  __chkstk_darwin(v4);
  v5 = sub_12D80();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationManager] = 0;
  *&v0[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager__authorizationStatus] = 0;
  v9 = OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationQueue;
  sub_122F4();
  sub_12D70();
  v12 = &_swiftEmptyArrayStorage;
  sub_12338();
  sub_2308(&qword_1CF90, &qword_13F58);
  sub_12390();
  sub_12EA0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *&v0[v9] = sub_12E80();
  v6 = type metadata accessor for LocationManager();
  v11.receiver = v0;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_12060()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationQueue];
  objc_allocWithZone(CLLocationManager);
  v3 = v2;
  v4 = v1;
  v5 = sub_12268(0xD000000000000013, 0x8000000000014470, v1, v2);
  v6 = *&v4[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationManager];
  *&v4[OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager_locationManager] = v5;

  v7 = *(v0 + 8);

  return v7();
}

id sub_12130(void *a1)
{
  result = [a1 authorizationStatus];
  *(v1 + OBJC_IVAR____TtC29SiriNotebookSuggestionsPlugin15LocationManager__authorizationStatus) = result;
  return result;
}

id sub_121C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_12268(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_12DA0();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithEffectiveBundleIdentifier:v8 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v9;
}

unint64_t sub_122F4()
{
  result = qword_1CF80;
  if (!qword_1CF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CF80);
  }

  return result;
}

unint64_t sub_12338()
{
  result = qword_1CF88;
  if (!qword_1CF88)
  {
    sub_12E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CF88);
  }

  return result;
}

unint64_t sub_12390()
{
  result = qword_1CF98;
  if (!qword_1CF98)
  {
    sub_F5E8(&qword_1CF90, &qword_13F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CF98);
  }

  return result;
}

Swift::Int sub_123F4()
{
  sub_12F50();
  sub_12DC0();
  return sub_12F60();
}

BOOL sub_12468(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_18C88;
  v6._object = a2;
  v4 = sub_12F00(v3, v6);

  return v4 != 0;
}

BOOL sub_124B4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_12468(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_124E8@<X0>(void *a1@<X8>)
{
  result = sub_1244C();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

uint64_t sub_12534()
{
  sub_2308(&qword_1CFA0, &qword_13F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13760;
  *(inited + 32) = &_swiftEmptyArrayStorage;
  sub_2308(&qword_1CFA8, &qword_13F68);
  sub_125CC();
  result = sub_12D90();
  qword_1D018 = result;
  return result;
}

unint64_t sub_125CC()
{
  result = qword_1CFB0;
  if (!qword_1CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CFB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceNotificationNotebookHints(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AnnounceNotificationNotebookHints(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x12710);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_12754()
{
  result = qword_1CFB8;
  if (!qword_1CFB8)
  {
    sub_F5E8(&qword_1CFC0, "r\r");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CFB8);
  }

  return result;
}

unint64_t sub_127BC()
{
  result = qword_1CFC8;
  if (!qword_1CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CFC8);
  }

  return result;
}