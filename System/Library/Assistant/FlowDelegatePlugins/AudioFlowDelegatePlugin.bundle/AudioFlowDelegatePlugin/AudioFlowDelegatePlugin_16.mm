uint64_t sub_1DA6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL), uint64_t a5)
{
  v40 = a5;
  v41 = a4;
  v47 = a3;
  v7 = sub_2CE000();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CB7D0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v49 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v17 = *(v10 + 16);
    v16 = v10 + 16;
    v46 = v17;
    v43 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v18 = a1 + v43;
    v19 = *(v16 + 56);
    v42 = (v16 - 8);
    v48 = (v16 + 16);
    v20 = _swiftEmptyArrayStorage;
    v44 = a2;
    v45 = v19;
    while (1)
    {
      v46(v14, v18, v9);
      if (sub_2CB7B0() == a2 && v22 == v47)
      {
        break;
      }

      v23 = sub_2CEEA0();

      if (v23)
      {
        goto LABEL_9;
      }

      (*v42)(v14, v9);
      v21 = v45;
LABEL_4:
      v18 += v21;
      if (!--v15)
      {
        goto LABEL_15;
      }
    }

LABEL_9:
    v24 = *v48;
    (*v48)(v49, v14, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2DC3C(0, v20[2] + 1, 1);
      v20 = v50;
    }

    v27 = v20[2];
    v26 = v20[3];
    if (v27 >= v26 >> 1)
    {
      sub_2DC3C((v26 > 1), v27 + 1, 1);
      v20 = v50;
    }

    v20[2] = v27 + 1;
    v21 = v45;
    v24(v20 + v43 + v27 * v45, v49, v9);
    a2 = v44;
    goto LABEL_4;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_15:
  v28 = v20[2];

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = v39;
  v30 = sub_3ED0(v39, static Logger.default);
  swift_beginAccess();
  v32 = v37;
  v31 = v38;
  (*(v38 + 16))(v37, v30, v29);
  v33 = sub_2CDFE0();
  v34 = sub_2CE690();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109120;
    *(v35 + 4) = v28 != 0;
    _os_log_impl(&dword_0, v33, v34, "CommonIntentAppResolver#appInstalled post-refresh app installed?:%{BOOL}d", v35, 8u);
  }

  (*(v31 + 8))(v32, v29);
  return v41(v28 != 0);
}

uint64_t sub_1DAAF4(uint64_t a1, void *a2)
{
  result = sub_2CCF90();
  if (v4)
  {
    sub_35E0((a2 + *(*a2 + class metadata base offset for CommonAppResolver + 16)), *(a2 + *(*a2 + class metadata base offset for CommonAppResolver + 16) + 24));
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_2CBC50();

    return sub_30B8(v5, &qword_34E970, &qword_2D2910);
  }

  return result;
}

uint64_t sub_1DABE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2CDFE0();
  v10 = sub_2CE670();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v11 = 136446466;
    v12 = sub_2CCC80();
    v14 = sub_3F08(v12, v13, &v23);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v21 = a1;
    v22 = a2;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v15 = sub_2CE2A0();
    v17 = sub_3F08(v15, v16, &v23);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_0, v9, v10, "CommonAppResolutionService#postResolve %{public}s App name pre-resolved as: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CommonAppResolver.resolveBundleIdentifier(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*v3 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(v3 + v6, v11);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  sub_2CEAB0();

  sub_30B8(v9, &qword_34E748, &qword_2D26D0);
  return sub_306C(v11);
}

uint64_t sub_1DAFB4(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v35 = a3;
  v36 = a5;
  v37 = a1;
  v34 = type metadata accessor for BundleResolutionResult(0);
  __chkstk_darwin(v34);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = v9;
  v15 = v12;
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();

  v18 = v16;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v32 = v14;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = a4;
    v38 = v21;
    *v20 = 136446466;
    v22 = sub_2CCC80();
    v24 = sub_3F08(v22, v23, &v38);
    v31 = v15;
    v25 = v24;

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    v26 = v37;
    *(v20 + 14) = sub_3F08(v37, a2, &v38);
    _os_log_impl(&dword_0, v18, v17, "CommonIntentAppResolver#resolveBundleIdentifier %{public}s Default resolveBundleIdentifier resolved bundle: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    a4 = v33;

    (*(v10 + 8))(v31, v32);
  }

  else
  {

    (*(v10 + 8))(v15, v14);
    v26 = v37;
  }

  v27 = *(sub_20410(&qword_34E740, &unk_2D68F0) + 48);
  *v8 = v26;
  v8[1] = a2;
  v28 = sub_2CC5F0();
  (*(*(v28 - 8) + 16))(v8 + v27, v35, v28);
  swift_storeEnumTagMultiPayload();

  a4(v8);
  return sub_F1AE0(v8);
}

uint64_t sub_1DB358()
{

  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 16)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 24)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 32)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 40)));
  return sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 48)));
}

uint64_t CommonAppResolver.__deallocating_deinit()
{
  CommonAppResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t BundleResolutionResult.description.getter()
{
  v1 = v0;
  v2 = sub_2CC5F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BundleResolutionResult(0);
  __chkstk_darwin(v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DBBE0(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20410(&qword_3504D0, &qword_2D3B28);
    (*(v3 + 32))(v5, v8 + *(v9 + 48), v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_2CECB0(22);
    v21._countAndFlagsBits = 0x69626D617369642ELL;
    v21._object = 0xEF28206574617567;
    sub_2CE350(v21);
    v10 = sub_2CE420();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
  }

  else
  {
    v14 = *v8;
    v15 = v8[1];
    v16 = sub_20410(&qword_34E740, &unk_2D68F0);
    (*(v3 + 32))(v5, v8 + *(v16 + 48), v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_2CECB0(18);
    v22._countAndFlagsBits = 0x657463656C65732ELL;
    v22._object = 0xEB00000000282064;
    sub_2CE350(v22);
    v13._countAndFlagsBits = v14;
    v13._object = v15;
  }

  sub_2CE350(v13);

  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  sub_2CE350(v23);
  sub_2CED50();
  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  sub_2CE350(v24);
  v17 = v19;
  (*(v3 + 8))(v5, v2);
  return v17;
}

uint64_t sub_1DB7D8(void *a1)
{
  v1 = [a1 launchId];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2CE270();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = sub_2CBDA0();
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1DB868(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v18 = a1;
  v19 = a2;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35E0((v4 + *(*v4 + class metadata base offset for CommonAppResolver + 24)), *(v4 + *(*v4 + class metadata base offset for CommonAppResolver + 24) + 24));
  if (sub_2CBBD0())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v11 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v10, v11, v7);
    v12 = sub_2CDFE0();
    v13 = sub_2CE690();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "CommonIntentAppResolver#appInstalled assuming HomePod apps are installed", v14, 2u);
    }

    (*(v8 + 8))(v10, v7);
    return a3(1);
  }

  else
  {
    sub_35E0((v4 + *(*v4 + class metadata base offset for CommonAppResolver + 48)), *(v4 + *(*v4 + class metadata base offset for CommonAppResolver + 48) + 24));
    v16 = swift_allocObject();
    v16[2] = v18;
    v16[3] = v19;
    v16[4] = a3;
    v16[5] = a4;
    v16[6] = v4;

    sub_2CC6D0();
  }
}

uint64_t type metadata accessor for BundleResolutionResult(uint64_t a1)
{
  result = qword_354700;
  if (!qword_354700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DBBE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleResolutionResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DBCBC(uint64_t a1)
{
  sub_1DBD30(319);
  if (v1 <= 0x3F)
  {
    sub_1DBD98(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DBD30(uint64_t a1)
{
  if (!qword_354710)
  {
    sub_2CC5F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_354710);
    }
  }
}

void sub_1DBD98(uint64_t a1)
{
  if (!qword_354718)
  {
    sub_2DB30(&qword_353CA0, &unk_2D6090);
    sub_2CC5F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_354718);
    }
  }
}

uint64_t sub_1DBE14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DBE5C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_20410(&qword_354758, &qword_2D69E8);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_1DBEC8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_2CDFD0() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v2 + 32);

  return a2(a1, v6, v7, v11, v2 + v5, v9, v10);
}

uint64_t sub_1DBF8C(char a1)
{
  v3 = *(sub_2CC5F0() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  return sub_1D8988(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1DC0D0(void *a1, uint64_t a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v3 = a1;
    sub_2CE8D0();
  }
}

unint64_t sub_1DC1B8()
{
  result = sub_2CD690();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v2 = result;
  v3 = sub_2CEDA0();
  result = v2;
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_2CECD0();
    goto LABEL_6;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_6:

    sub_2CAC80();
    sub_2CCFB0();
    swift_allocObject();
    v1 = sub_2CCF70();

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC2D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2CCFC0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1DC344(void *a1)
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v50[-v9];
  v11 = [v2 backingStore];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = [v12 privatePlayMediaIntentData];
    if (v13)
    {
      v57 = a1;
      v55 = v10;
      v14 = v13;
      v15 = [v13 privateMediaIntentData];

      v56 = v15;
      if (v15)
      {
        v16 = [v57 backingStore];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 privatePlayMediaIntentData];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 privateMediaIntentData];

            if (v20)
            {
              if (qword_34BF58 != -1)
              {
                swift_once();
              }

              v21 = sub_3ED0(v4, static Logger.default);
              swift_beginAccess();
              v22 = v55;
              (*(v5 + 16))(v55, v21, v4);
              v23 = v57;
              v24 = v2;
              v25 = sub_2CDFE0();
              v26 = sub_2CE680();

              if (os_log_type_enabled(v25, v26))
              {
                v27 = swift_slowAlloc();
                v57 = v24;
                v28 = v27;
                v53 = swift_slowAlloc();
                v58 = v53;
                *v28 = 136315394;
                v29 = [v23 description];
                v54 = v23;
                v30 = v29;
                v31 = sub_2CE270();
                v52 = v25;
                v32 = v31;
                v51 = v26;
                v34 = v33;

                v35 = sub_3F08(v32, v34, &v58);

                *(v28 + 4) = v35;
                *(v28 + 12) = 2080;
                v36 = [v57 description];
                v37 = sub_2CE270();
                v39 = v38;

                v40 = sub_3F08(v37, v39, &v58);

                *(v28 + 14) = v40;
                v23 = v54;
                v41 = v52;
                _os_log_impl(&dword_0, v52, v51, "INPlayMediaIntent#copyWholeHouseAudioData Copying over WHA data from %s to %s", v28, 0x16u);
                swift_arrayDestroy();

                v24 = v57;
              }

              else
              {
              }

              (*(v5 + 8))(v22, v4);
              v47 = [v20 wholeHouseAudioMetadata];
              v48 = v56;
              [v56 setWholeHouseAudioMetadata:v47];

              v49 = [v23 hashedRouteUIDs];
              [v24 setHashedRouteUIDs:v49];

              return;
            }
          }

          v42 = v16;
          v16 = v11;
        }

        else
        {
          v42 = v11;
        }

        v11 = v16;
      }
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v43 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v43, v4);
  v44 = sub_2CDFE0();
  v45 = sub_2CE680();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "INPlayMediaIntent#copyWholeHouseAudioData Couldn't find privateMediaIntentData in the intent. Unable to copy over WholeHouseAudioData", v46, 2u);
  }

  (*(v5 + 8))(v8, v4);
}

double sub_1DC8D8@<D0>(void *a1@<X0>, char **a2@<X8>)
{
  v173 = a1;
  v174 = a2;
  v3 = sub_2CA810();
  v169 = *(v3 - 8);
  v170 = v3;
  v4 = __chkstk_darwin(v3);
  v152 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v161 = &v145 - v7;
  __chkstk_darwin(v6);
  v168 = &v145 - v8;
  v158 = sub_2CA970();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v156 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2CAA00();
  v166 = *(v165 - 8);
  v10 = __chkstk_darwin(v165);
  v155 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v154 = &v145 - v13;
  v14 = __chkstk_darwin(v12);
  v153 = &v145 - v15;
  __chkstk_darwin(v14);
  v162 = &v145 - v16;
  v160 = sub_2CA8F0();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v164 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CA870();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2CE000();
  v171 = *(v22 - 8);
  v172 = v22;
  v23 = __chkstk_darwin(v22);
  v25 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v145 - v27;
  v29 = __chkstk_darwin(v26);
  v163 = &v145 - v30;
  v31 = __chkstk_darwin(v29);
  v167 = &v145 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v145 - v34;
  v36 = __chkstk_darwin(v33);
  v150 = &v145 - v37;
  v38 = __chkstk_darwin(v36);
  v151 = &v145 - v39;
  v40 = __chkstk_darwin(v38);
  v149 = &v145 - v41;
  __chkstk_darwin(v40);
  v43 = &v145 - v42;
  v44 = [v2 privatePlayMediaIntentData];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 privateMediaIntentData];

    if (v46)
    {
      v47 = [v46 homeAutomationEntityProvider];

      if (v47)
      {
        v147 = v35;
        v48 = v28;
        v176 = v47;
        v49 = sub_334A0(0, &qword_354798, INHomeAutomationEntityProvider_ptr);
        v50 = sub_1E3EAC();
        v148 = v49;
        v146 = v50;
        if (sub_2CDF10())
        {
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v51 = v172;
          v52 = sub_3ED0(v172, static Logger.default);
          swift_beginAccess();
          v53 = v171;
          (*(v171 + 16))(v43, v52, v51);
          v54 = sub_2CDFE0();
          v55 = sub_2CE690();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&dword_0, v54, v55, "INPlayMediaIntent#chooseHomeAutomationEntityProvider INPlayMediaIntent has a valid HomeAutomationEntityProvider. Choosing as the intent homeAutomationProvider", v56, 2u);
          }

          (*(v53 + 8))(v43, v51);
          v58 = v174;
          v59 = v146;
          v174[3] = v148;
          v58[4] = v59;
          *v58 = v47;
          return result;
        }

        v28 = v48;
        v35 = v147;
      }
    }
  }

  v60 = v173;
  (*(v19 + 16))(v21, v173, v18);
  v61 = (*(v19 + 88))(v21, v18);
  if (v61 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v19 + 8))(v21, v18);
    return sub_1DE378(v60, v174);
  }

  if (v61 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v19 + 96))(v21, v18);
    sub_20410(&qword_353070, &unk_2D0FB0);

    v62 = sub_2CAFE0();
    (*(*(v62 - 8) + 8))(v21, v62);
    return sub_1DE378(v60, v174);
  }

  if (v61 == enum case for Parse.directInvocation(_:))
  {
    (*(v19 + 96))(v21, v18);
    v64 = v168;
    v63 = v169;
    v65 = v170;
    (*(v169 + 32))(v168, v21, v170);
    sub_238E4C(v64, &v176);
    if (v177 != 4)
    {
      v66 = v171;
      v67 = v172;
      if (v177 != 255)
      {
        sub_30B8(&v176, &qword_34CCB0, &qword_2D5710);
      }

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v68 = sub_3ED0(v67, static Logger.default);
      swift_beginAccess();
      (*(v66 + 16))(v28, v68, v67);
      v69 = sub_2CDFE0();
      v70 = sub_2CE690();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "INPlayMediaIntent#chooseHomeAutomationEntityProvider Unsupported directinvocation type", v71, 2u);
      }

      (*(v66 + 8))(v28, v67);
      v63[1](v64, v65);
      goto LABEL_91;
    }

    v96 = v176;

    v76 = v171;
    v79 = v172;
    v167 = v96;
    if (v96)
    {
      v97 = v172;
      v173 = v2;
      v77 = v167;
      v98 = v155;
      sub_2CDA40();
      v87 = sub_2CAA80();
      (*(v166 + 8))(v98, v165);
      if (v87 >> 62)
      {
        v125 = sub_2CEDA0();
      }

      else
      {
        v125 = *(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8));
      }

      v79 = v97;
      if (v125)
      {
        if ((v87 & 0xC000000000000001) != 0)
        {
          v126 = sub_2CECD0();
          goto LABEL_64;
        }

        if (*(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8)))
        {
          v126 = *(v87 + 32);

LABEL_64:

          sub_1DE178(v126, v174);

          v63[1](v64, v65);
          return result;
        }

        __break(1u);
        goto LABEL_99;
      }
    }

    if (qword_34BF58 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_82;
  }

  if (v61 == enum case for Parse.pommesResponse(_:))
  {
    v173 = v2;
    (*(v19 + 96))(v21, v18);
    v72 = *v21;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v73 = v172;
    v74 = sub_3ED0(v172, static Logger.default);
    swift_beginAccess();
    v75 = v171;
    v65 = v171 + 16;
    v76 = *(v171 + 16);
    (v76)(v35, v74, v73);
    v77 = v72;
    v78 = sub_2CDFE0();
    v79 = sub_2CE690();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138412290;
      *(v80 + 4) = v77;
      *v81 = v77;
      v82 = v77;
      _os_log_impl(&dword_0, v78, v79, "INPlayMediaIntent#chooseHomeAutomationEntityProvider Unpacking tasks from pommesResponse: %@", v80, 0xCu);
      sub_30B8(v81, &unk_34FC00, &unk_2D0150);
    }

    v83 = *(v75 + 8);
    v64 = v75 + 8;
    v63 = v83;
    (v83)(v35, v172);
    v84 = sub_2CDAD0();
    if (v84 >> 62)
    {
      v130 = v84;
      v131 = sub_2CEDA0();
      v84 = v130;
      if (!v131)
      {
        goto LABEL_86;
      }
    }

    else if (!*(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_86;
    }

    if ((v84 & 0xC000000000000001) != 0)
    {
      v85 = sub_2CECD0();
    }

    else
    {
      if (!*(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_82:
        swift_once();
LABEL_43:
        v99 = sub_3ED0(v79, static Logger.default);
        swift_beginAccess();
        v100 = v163;
        (*(v76 + 16))(v163, v99, v79);
        v101 = v63[2];
        v102 = v161;
        (v101)(v161, v64, v65);
        v103 = sub_2CDFE0();
        v104 = sub_2CE680();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          v175 = v173;
          *v105 = 136315138;
          (v101)(v152, v102, v65);
          v106 = sub_2CE2A0();
          v108 = v107;
          v109 = v63[1];
          v109(v102, v65);
          v110 = sub_3F08(v106, v108, &v175);

          *(v105 + 4) = v110;
          _os_log_impl(&dword_0, v103, v104, "INPlayMediaIntent#chooseHomeAutomationEntityProvider unable to get audioExperience or the first task: %s", v105, 0xCu);
          sub_306C(v173);

          (*(v171 + 8))(v163, v172);
          v109(v64, v65);
        }

        else
        {

          v117 = v63[1];
          v117(v102, v65);
          (*(v76 + 8))(v100, v172);
          v117(v64, v65);
        }

        goto LABEL_91;
      }

      v85 = *(v84 + 32);
    }

    v86 = v85;

    sub_2CDB90();
    if (!swift_dynamicCastClass())
    {

LABEL_87:
      (v76)(v167, v74, v172);
      v132 = v77;
      v133 = sub_2CDFE0();
      v134 = sub_2CE680();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *v135 = 138412290;
        *(v135 + 4) = v132;
        *v136 = v132;
        v137 = v132;
        _os_log_impl(&dword_0, v133, v134, "INPlayMediaIntent#chooseHomeAutomationEntityProvider unable to get the first task: %@", v135, 0xCu);
        sub_30B8(v136, &unk_34FC00, &unk_2D0150);
      }

      else
      {
        v137 = v133;
        v133 = v132;
      }

      (v63)(v167, v172);
      goto LABEL_91;
    }

    v87 = v86;
    v88 = v154;
    sub_2CDA40();
    v89 = v88;

    v127 = sub_2CAA80();
    (*(v166 + 8))(v89, v165);
    if (v127 >> 62)
    {
      if (sub_2CEDA0())
      {
        goto LABEL_67;
      }
    }

    else if (*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_67:
      if ((v127 & 0xC000000000000001) != 0)
      {
LABEL_99:
        v128 = sub_2CECD0();
        goto LABEL_70;
      }

      if (*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)))
      {
        v128 = *(v127 + 32);

LABEL_70:

        sub_1DE178(v128, v174);

        return result;
      }

      __break(1u);
      goto LABEL_101;
    }

LABEL_86:

    goto LABEL_87;
  }

  if (v61 == enum case for Parse.uso(_:))
  {
    (*(v19 + 96))(v21, v18);
    v64 = v159;
    v76 = v160;
    (*(v159 + 32))(v164, v21, v160);
    v90 = v156;
    sub_2CA8E0();
    v91 = sub_2CA960();
    (*(v157 + 8))(v90, v158);
    if (!*(v91 + 16))
    {

      v118 = v171;
      v119 = v172;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v120 = sub_3ED0(v119, static Logger.default);
      swift_beginAccess();
      v121 = v150;
      (*(v118 + 16))(v150, v120, v119);
      v122 = sub_2CDFE0();
      v123 = sub_2CE690();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_0, v122, v123, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No user dialog act found in userParse.", v124, 2u);
      }

      (*(v118 + 8))(v121, v119);
      goto LABEL_57;
    }

    v63 = v166;
    v92 = v153;
    v65 = v165;
    (*(v166 + 16))(v153, v91 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v165);

    (v63[4])(v162, v92, v65);
    v93 = sub_2CAA80();
    v94 = v171;
    v95 = v172;
    if (v93 >> 62)
    {
      v139 = v93;
      v140 = sub_2CEDA0();
      v93 = v139;
      if (v140)
      {
        goto LABEL_73;
      }
    }

    else if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_73:
      if ((v93 & 0xC000000000000001) != 0)
      {
LABEL_101:
        v129 = sub_2CECD0();
        goto LABEL_76;
      }

      if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
      {
        v129 = *(v93 + 32);

LABEL_76:

        sub_1DE178(v129, v174);

        v63[1](v162, v65);
        (*(v64 + 8))(v164, v76);
        return result;
      }

      __break(1u);
      goto LABEL_103;
    }

    if (qword_34BF58 == -1)
    {
LABEL_94:
      v141 = sub_3ED0(v95, static Logger.default);
      swift_beginAccess();
      (*(v94 + 16))(v149, v141, v95);
      v142 = sub_2CDFE0();
      v143 = sub_2CE690();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_0, v142, v143, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No tasks found in input", v144, 2u);
      }

      (*(v94 + 8))(v149, v95);
      v63[1](v162, v65);
LABEL_57:
      (*(v64 + 8))(v164, v76);
LABEL_91:
      v138 = v174;
      v174[4] = 0;
      result = 0.0;
      *v138 = 0u;
      *(v138 + 1) = 0u;
      return result;
    }

LABEL_103:
    swift_once();
    goto LABEL_94;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v111 = v172;
  v112 = sub_3ED0(v172, static Logger.default);
  swift_beginAccess();
  (*(v171 + 16))(v25, v112, v111);
  v113 = sub_2CDFE0();
  v114 = sub_2CE690();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_0, v113, v114, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No HomeAutomationProviders found for this intent", v115, 2u);
  }

  (*(v171 + 8))(v25, v172);
  v116 = v174;
  v174[4] = 0;
  *v116 = 0u;
  *(v116 + 1) = 0u;
  (*(v19 + 8))(v21, v18);
  return result;
}

double sub_1DE178@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = a1;
  v8 = sub_2CAFC0();
  if (sub_2CDF10())
  {
    *(a2 + 24) = v8;
    *(a2 + 32) = &protocol witness table for UsoTask;
    *a2 = a1;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v7, v10, v4);
    v11 = sub_2CDFE0();
    v12 = sub_2CE690();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No homeAutomation nodes found in Uso Task", v13, 2u);
    }

    (*(v5 + 8))(v7, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1DE378@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_2CE000();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v48 = &v47 - v8;
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v11 = sub_2CA870();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&qword_34D360, &qword_2D11E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - v16;
  v18 = type metadata accessor for AudioNLv3Intent(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  sub_2B6170(v14, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_30B8(v17, &qword_34D360, &qword_2D11E0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = v50;
    v23 = sub_3ED0(v50, static Logger.default);
    swift_beginAccess();
    v24 = v49;
    (*(v49 + 16))(v6, v23, v22);
    v25 = sub_2CDFE0();
    v26 = sub_2CE680();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "INPlayMediaIntent#chooseHomeAutomationEntityProvider Fatal: Cannot get AudioNLv3Intent from parse", v27, 2u);
    }

    (*(v24 + 8))(v6, v22);
    v28 = v51;
    *(v51 + 32) = 0;
    result = 0.0;
    *v28 = 0u;
    v28[1] = 0u;
  }

  else
  {
    sub_D416C(v17, v21);
    v30 = sub_1E3AE4(&qword_34F608, type metadata accessor for AudioNLv3Intent, &unk_2D93E0);
    if (sub_2CDF10())
    {
      v32 = v49;
      v31 = v50;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v33 = sub_3ED0(v31, static Logger.default);
      swift_beginAccess();
      (*(v32 + 16))(v10, v33, v31);
      v34 = sub_2CDFE0();
      v35 = sub_2CE690();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "INPlayMediaIntent#chooseHomeAutomationEntityProvider MediaPlayer NLv3 intent has homeAutomation nodes. Choosing as the intent homeAutomationProvider", v36, 2u);
      }

      (*(v32 + 8))(v10, v31);
      v37 = v51;
      *(v51 + 24) = v18;
      v37[4] = v30;
      v38 = sub_F390(v37);
      sub_D416C(v21, v38);
    }

    else
    {
      v40 = v49;
      v39 = v50;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v41 = sub_3ED0(v39, static Logger.default);
      swift_beginAccess();
      v42 = v48;
      (*(v40 + 16))(v48, v41, v39);
      v43 = sub_2CDFE0();
      v44 = sub_2CE690();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_0, v43, v44, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No homeAutomation nodes found in NLv3 intent", v45, 2u);
      }

      (*(v40 + 8))(v42, v39);
      sub_FED50(v21);
      result = 0.0;
      v46 = v51;
      *v51 = 0u;
      *(v46 + 16) = 0u;
      *(v46 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_1DE9B4(void *a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v145 = a5;
  v151 = a1;
  v157 = sub_2CDD90();
  v154 = *(v157 - 8);
  __chkstk_darwin(v157);
  v158 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_2CDF60();
  v143 = *(v159 - 1);
  v15 = __chkstk_darwin(v159);
  v152 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v149 = &v131 - v17;
  v18 = sub_2CDFD0();
  v160 = *(v18 - 8);
  __chkstk_darwin(v18);
  v156 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CE000();
  v146 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v25 = __chkstk_darwin(v24);
  v26 = __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v31 = &v131 - v30;
  if (a2)
  {
    v155 = v18;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v32 = sub_3ED0(v20, static Logger.default);
    swift_beginAccess();
    v33 = v146;
    (*(v146 + 16))(v23, v32, v20);
    v34 = v151;
    swift_errorRetain();
    v35 = sub_2CDFE0();
    v36 = sub_2CE680();
    sub_1E1074(v34, 1);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v161 = v159;
      *v37 = 136315138;
      swift_getErrorValue();
      v38 = sub_2CEEF0();
      v40 = sub_3F08(v38, v39, &v161);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_0, v35, v36, "INPlayMediaIntent#performRouteResolution Error resolving devices: %s", v37, 0xCu);
      sub_306C(v159);
    }

    (*(v33 + 8))(v23, v20);
    v41 = v155;
    v42 = sub_2CE9F0();
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v43 = qword_35F760;
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_2D0090;
    *(v44 + 56) = &type metadata for Int;
    *(v44 + 64) = &protocol witness table for Int;
    *(v44 + 32) = -1;
    v45 = v156;
    sub_2CDFC0();
    sub_2CDF90(v42, &dword_0, v43, "resolveWHADestinationDevicesResponse", 36, 2, v45, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v44);

    (v160[1])(v45, v41);
    v46 = 258;
    return a3(v46);
  }

  v132 = v29;
  v142 = v28;
  v133 = v27;
  v144 = a4;
  v135 = a6;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v47 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  v48 = v146;
  v49 = *(v146 + 16);
  v140 = v47;
  v139 = v146 + 16;
  v138 = v49;
  v49(v31, v47, v20);
  v50 = v151;

  v51 = sub_2CDFE0();
  v52 = sub_2CE690();
  sub_1E1074(v50, 0);
  v53 = os_log_type_enabled(v51, v52);
  v137 = a7;
  v136 = a8;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v155 = v18;
    v55 = v54;
    v56 = swift_slowAlloc();
    *&v162 = v56;
    *v55 = 136446210;
    v57 = sub_2CE440();
    v59 = a3;
    v60 = sub_3F08(v57, v58, &v162);

    *(v55 + 4) = v60;
    a3 = v59;
    _os_log_impl(&dword_0, v51, v52, "INPlayMediaIntent#performRouteResolution Resolved devices %{public}s", v55, 0xCu);
    sub_306C(v56);

    v18 = v155;
  }

  v61 = *(v48 + 8);
  v61(v31, v20);
  v141 = v20;
  v62 = sub_2CE9F0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v63 = qword_35F760;
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_2D0090;
  *(v64 + 56) = &type metadata for Int;
  *(v64 + 64) = &protocol witness table for Int;
  *(v64 + 32) = 0;
  v65 = v156;
  sub_2CDFC0();
  sub_2CDF90(v62, &dword_0, v63, "resolveWHADestinationDevicesResponse", 36, 2, v65, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v64);

  (v160[1])(v65, v18);
  v66 = v151[2];
  if (!v66)
  {
    v46 = 258;
    return a3(v46);
  }

  v67 = v145[3];
  v68 = v145[4];
  sub_35E0(v145, v67);

  v69 = sub_1BDF38(v67, v68);
  v134 = a3;
  if (v66 == 1 || !v69)
  {
    goto LABEL_45;
  }

  v131 = v61;
  v155 = *(v143 + 16);
  v148 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  v70 = v151 + v148;
  v71 = *(v143 + 72);
  ++v154;
  v147 = (v143 + 32);
  v156 = (v143 + 16);
  v150 = (v143 + 8);
  v160 = _swiftEmptyArrayStorage;
  v72 = v159;
  v73 = v158;
  v74 = v149;
  v153 = v71;
  v155(v149, v151 + v148, v159);
  while (1)
  {
    v76 = sub_2CDF40();
    v78 = v77;
    v79 = sub_2CDD70();
    sub_2CDD80();
    if (*(v79 + 16) && (v80 = sub_4F464(v73), (v81 & 1) != 0))
    {
      v82 = (*(v79 + 56) + 16 * v80);
      v83 = v73;
      v84 = *v82;
      v85 = v82[1];
      v86 = *v154;

      v87 = v83;
      v74 = v149;
      v86(v87, v157);
      v72 = v159;

      if (!v78)
      {
        goto LABEL_19;
      }
    }

    else
    {

      (*v154)(v73, v157);
      v85 = 0xE700000000000000;
      v84 = 0x7674656C707061;
      if (!v78)
      {
LABEL_19:

LABEL_20:
        (*v150)(v74, v72);
        v73 = v158;
        v75 = v153;
        goto LABEL_21;
      }
    }

    if (v76 == v84 && v78 == v85)
    {
    }

    else
    {
      v88 = sub_2CEEA0();

      if ((v88 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v158;
    if (isUniquelyReferenced_nonNull_native)
    {
      v90 = v160;
    }

    else
    {
      v90 = sub_B9474(0, v160[2] + 1, 1, v160);
    }

    v92 = v90[2];
    v91 = v90[3];
    if (v92 >= v91 >> 1)
    {
      v90 = sub_B9474((v91 > 1), v92 + 1, 1, v90);
    }

    v90[2] = v92 + 1;
    v160 = v90;
    v75 = v153;
    (*v147)(v90 + v148 + v92 * v153, v74, v72);
LABEL_21:
    v70 += v75;
    if (!--v66)
    {
      break;
    }

    v155(v74, v70, v72);
  }

  sub_1E1074(v151, 0);
  v93 = v145[3];
  v94 = v145[4];
  sub_35E0(v145, v93);
  v95 = sub_1BDD00(v93, v94);
  a3 = v134;
  if ((v95 & 1) == 0)
  {

    v96 = v141;
    v61 = v131;
LABEL_63:
    v138(v142, v140, v96);
    v128 = sub_2CDFE0();
    v129 = sub_2CE690();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&dword_0, v128, v129, "INPlayMediaIntent#performRouteResolution Request to play music on speaker/homepod/TV, but multiple devices matching the deviceType found. Returning .noSpecificSpeaker", v130, 2u);
    }

    v61(v142, v96);
    v46 = 259;
    return a3(v46);
  }

  v96 = v141;
  v61 = v131;
  if (v160[2] != 1)
  {

    goto LABEL_63;
  }

  v138(v132, v140, v141);
  v97 = sub_2CDFE0();
  v98 = sub_2CE690();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_0, v97, v98, "INPlayMediaIntent#performRouteResolution Request to play music on the TV: multiple TVs resolved but only 1 AppleTV was found. Selecting it and continuing...", v99, 2u);
  }

  v61(v132, v96);
  v151 = v160;
LABEL_45:
  v100 = v145[3];
  v101 = v145[4];
  sub_35E0(v145, v100);
  if ((sub_1BCFC8(v100, v101) & 1) != 0 || sub_1DFB50(v151))
  {
    v102 = v151;
  }

  else
  {
    v103 = v141;
    v138(v133, v140, v141);
    v104 = sub_2CDFE0();
    v105 = sub_2CE690();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v104, v105, "INPlayMediaIntent#performRouteResolution TVs were not explicitely targeted in the intent. Pruning from all devices", v106, 2u);
    }

    v61(v133, v103);
    v107 = v145[3];
    v108 = v145[4];
    sub_35E0(v145, v107);
    v109 = sub_1BE2A4(v107, v108);
    v102 = sub_1DFDF4(v109, v151);
  }

  v110 = v102[2];
  v151 = v102;
  if (v110)
  {
    v160 = *(v143 + 16);
    v111 = v102 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
    v112 = *(v143 + 72);
    v113 = (v143 + 8);
    v114 = _swiftEmptyArrayStorage;
    do
    {
      v116 = v152;
      v117 = v159;
      (v160)(v152, v111, v159);
      v118 = sub_2CDF20();
      v120 = v119;
      (*v113)(v116, v117);
      if (v120)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_B90C4(0, *(v114 + 2) + 1, 1, v114);
        }

        v122 = *(v114 + 2);
        v121 = *(v114 + 3);
        if (v122 >= v121 >> 1)
        {
          v114 = sub_B90C4((v121 > 1), v122 + 1, 1, v114);
        }

        *(v114 + 2) = v122 + 1;
        v115 = &v114[16 * v122];
        *(v115 + 4) = v118;
        *(v115 + 5) = v120;
      }

      v111 += v112;
      --v110;
    }

    while (v110);
  }

  else
  {
    v114 = _swiftEmptyArrayStorage;
  }

  sub_35E0(v135, v135[3]);
  sub_EEAC(v145, &v162);
  sub_EEAC(v136, &v161);
  v123 = swift_allocObject();
  v124 = v137;
  v123[2] = v137;
  sub_F338(&v162, (v123 + 3));
  sub_F338(&v161, (v123 + 8));
  v123[13] = v151;
  v123[14] = v114;
  v125 = v144;
  v123[15] = v134;
  v123[16] = v125;
  v126 = v124;

  sub_2CC7F0();
}

BOOL sub_1DFB50(uint64_t a1)
{
  v2 = sub_20410(&qword_354790, &qword_2D6BE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_2CDF60();
  v6 = __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v24 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v9 + 72);
    v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v13 = a1 + v26;
    v14 = (v9 + 48);
    v15 = (v9 + 32);
    v16 = _swiftEmptyArrayStorage;
    v27 = v8;
    v24 = (v9 + 48);
    v25 = v12;
    do
    {
      sub_2770BC(v13, v4);
      if ((*v14)(v4, 1, v5) == 1)
      {
        sub_30B8(v4, &qword_354790, &qword_2D6BE0);
      }

      else
      {
        v17 = *v15;
        v18 = v28;
        (*v15)(v28, v4, v5);
        v17(v8, v18, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_B9474(0, v16[2] + 1, 1, v16);
        }

        v20 = v16[2];
        v19 = v16[3];
        if (v20 >= v19 >> 1)
        {
          v16 = sub_B9474((v19 > 1), v20 + 1, 1, v16);
        }

        v16[2] = v20 + 1;
        v12 = v25;
        v21 = v16 + v26 + v20 * v25;
        v8 = v27;
        v17(v21, v27, v5);
        v14 = v24;
      }

      v13 += v12;
      --v11;
    }

    while (v11);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v22 = v16[2];

  return v22 == 0;
}

void *sub_1DFDF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CE000();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_354790, &qword_2D6BE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v9 = sub_2CDF60();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v53 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v43 - v13;

  v15 = 0;
  v16 = sub_1E3B2C(v14);

  v17 = *(a2 + 16);
  v50 = v9;
  if (v17)
  {
    v18 = *(v10 + 72);
    v47 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v19 = a2 + v47;
    v52 = (v10 + 48);
    v20 = (v10 + 32);
    v21 = _swiftEmptyArrayStorage;
    v48 = a1;
    do
    {
      sub_27771C(v19, a1, v16, v8);
      if ((*v52)(v8, 1, v9) == 1)
      {
        sub_30B8(v8, &qword_354790, &qword_2D6BE0);
      }

      else
      {
        v51 = v15;
        v22 = v18;
        v23 = v16;
        v24 = *v20;
        v25 = v49;
        (*v20)(v49, v8, v9);
        v24(v53, v25, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_B9474(0, v21[2] + 1, 1, v21);
        }

        v27 = v21[2];
        v26 = v21[3];
        v28 = v21;
        v16 = v23;
        if (v27 >= v26 >> 1)
        {
          v28 = sub_B9474((v26 > 1), v27 + 1, 1, v21);
        }

        v18 = v22;
        v28[2] = v27 + 1;
        v21 = v28;
        v29 = v28 + v47 + v27 * v22;
        v9 = v50;
        v24(v29, v53, v50);
        a1 = v48;
        v15 = v51;
      }

      v19 += v18;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v30 = v46;
  v31 = sub_3ED0(v46, static Logger.default);
  swift_beginAccess();
  v33 = v44;
  v32 = v45;
  (*(v45 + 16))(v44, v31, v30);

  v34 = v21;
  v35 = sub_2CDFE0();
  v36 = sub_2CE690();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136446210;
    v39 = sub_2CE420();
    v41 = sub_3F08(v39, v40, &v54);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_0, v35, v36, "Devices after pruning: %{public}s)", v37, 0xCu);
    sub_306C(v38);
  }

  (*(v32 + 8))(v33, v30);
  return v34;
}

uint64_t sub_1E02C8(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = a2;
  v73 = a6;
  v70 = a3;
  v71 = a5;
  v69 = a4;
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v74 = v16;
  if (a1)
  {
    v19 = a1;
    v20 = [v19 mediaRouteIdentifier];
    if (v20)
    {
      v68 = v19;
      v21 = v20;
      v22 = sub_2CE270();
      v24 = v23;

      *&v75[0] = v22;
      *(&v75[0] + 1) = v24;
      __chkstk_darwin(v25);
      v64 = v75;
      LOBYTE(v21) = sub_13964(sub_13A68, &v62, v73);

      if (v21)
      {
        sub_2CE7F0();
      }

      v26 = swift_allocObject();
      *(v26 + 16) = a7;
      *(v26 + 24) = a8;
      v27 = qword_34BF98;

      v28 = v27 == -1;
      v29 = v74;
      if (!v28)
      {
        swift_once();
      }

      v30 = qword_35F760;
      sub_2CDFB0();
      v31 = *(v12 + 16);
      v66 = v18;
      v31(v15, v18, v29);
      v32 = (*(v12 + 80) + 33) & ~*(v12 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = "resolveWHADestinationDevicesRouteEncryption";
      *(v33 + 24) = 43;
      *(v33 + 32) = 2;
      (*(v12 + 32))(v33 + v32, v15, v29);
      v34 = (v33 + ((v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v34 = sub_1E3FF8;
      v34[1] = v26;

      v35 = sub_2CE9E0();
      LOBYTE(v63) = 2;
      sub_2CDF90(v35, &dword_0, v30, "resolveWHADestinationDevicesRouteEncryption", 43, 2, v18, " enableTelemetry=YES ", 21, v63, _swiftEmptyArrayStorage);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_1E3FEC;
      *(v36 + 24) = v33;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1E3FFC;
      *(v37 + 24) = v36;
      v38 = v69[3];
      v67 = v69[4];
      sub_35E0(v69, v38);
      sub_EEAC(v70, v75);
      v39 = swift_allocObject();
      v40 = v72;
      v39[2] = v71;
      v39[3] = v40;
      sub_F338(v75, (v39 + 4));
      v39[9] = sub_1E3FF0;
      v39[10] = v37;

      v41 = v40;
      sub_2CDE10();

      (*(v12 + 8))(v66, v74);
    }
  }

  v42 = swift_allocObject();
  v42[2] = a7;
  v42[3] = a8;
  v68 = v42;
  v43 = qword_34BF98;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = qword_35F760;
  v45 = v18;
  sub_2CDFB0();
  v46 = v12;
  (*(v12 + 16))(v15, v45, v11);
  v47 = *(v12 + 80);
  v48 = v11;
  v49 = (v47 + 33) & ~v47;
  v50 = swift_allocObject();
  *(v50 + 16) = "resolveWHADestinationDevicesRouteEncryption";
  *(v50 + 24) = 43;
  *(v50 + 32) = 2;
  (*(v46 + 32))(v50 + v49, v15, v48);
  v51 = (v50 + ((v13 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
  v52 = v68;
  *v51 = sub_1E1098;
  v51[1] = v52;

  v53 = sub_2CE9E0();
  LOBYTE(v63) = 2;
  sub_2CDF90(v53, &dword_0, v44, "resolveWHADestinationDevicesRouteEncryption", 43, 2, v45, " enableTelemetry=YES ", 21, v63, _swiftEmptyArrayStorage);
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E10A0;
  *(v54 + 24) = v50;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1E10A4;
  *(v55 + 24) = v54;
  v56 = v69[3];
  v67 = v69[4];
  v69 = sub_35E0(v69, v56);
  sub_EEAC(v70, v75);
  v57 = swift_allocObject();
  v58 = v46;
  v59 = v72;
  v57[2] = v71;
  v57[3] = v59;
  sub_F338(v75, (v57 + 4));
  v57[9] = sub_1E10AC;
  v57[10] = v55;

  v60 = v59;

  sub_2CDE10();

  (*(v58 + 8))(v45, v74);
}

void sub_1E09D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v61 = a5;
  v59 = a4;
  v10 = sub_2CDCF0();
  v60 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v57 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = v50 - v13;
  v14 = sub_2CE000();
  v62 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v56 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v50 - v17;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v20 = *(v62 + 16);
  v54 = v62 + 16;
  v55 = v19;
  v53 = v20;
  v20(v18, v19, v14);

  v21 = sub_2CDFE0();
  v22 = sub_2CE690();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = a6;
    v24 = v23;
    v63[0] = swift_slowAlloc();
    *v24 = 136315394;
    v25 = sub_2CE420();
    v50[1] = a1;
    v27 = sub_3F08(v25, v26, v63);
    v51 = v10;
    v28 = v14;
    v29 = v27;

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    sub_2CDF60();
    v30 = sub_2CE420();
    v32 = sub_3F08(v30, v31, v63);

    *(v24 + 14) = v32;
    v14 = v28;
    v33 = v62;
    v10 = v51;
    _os_log_impl(&dword_0, v21, v22, "INPlayMediaIntent#whaDestinationDevicesRouteEncryption Encoded routes: %s, devices: %s", v24, 0x16u);
    swift_arrayDestroy();

    v34 = v33;
  }

  else
  {

    v34 = v62;
  }

  v35 = *(v34 + 8);
  v35(v18, v14);
  isa = sub_2CE400().super.isa;
  [a3 setHashedRouteUIDs:isa];

  sub_EEAC(v59, v63);

  v37 = v58;
  sub_2CDCE0();
  v38 = v60;
  v39 = v57;
  (*(v60 + 16))(v57, v37, v10);
  v40 = sub_1E1114(v63, a2, v39);
  (*(v38 + 8))(v37, v10);
  v41 = [a3 backingStore];
  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (v42 && (v43 = [v42 privatePlayMediaIntentData]) != 0 && (v44 = v43, v45 = objc_msgSend(v43, "privateMediaIntentData"), v44, v45))
  {
    [v45 setWholeHouseAudioMetadata:v40];
    v61(0);

    v40 = v45;
  }

  else
  {

    v46 = v56;
    v53(v56, v55, v14);
    v47 = sub_2CDFE0();
    v48 = sub_2CE680();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "INPlayMediaIntent#whaDestinationDevicesRouteEncryption Couldn't find privateMediaIntentData in the intent. Cannot attach WholeHouseAudioMetadata", v49, 2u);
    }

    v35(v46, v14);
    v61(256);
  }
}

Swift::Int RouteResolutionError.hashValue.getter(unsigned __int8 a1)
{
  sub_2CEF50();
  sub_2CEF60(a1);
  return sub_2CEF80();
}

unint64_t sub_1E1010()
{
  result = qword_354770;
  if (!qword_354770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354770);
  }

  return result;
}

double sub_1E1074(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1E10B4()
{

  sub_306C((v0 + 32));

  return _swift_deallocObject(v0, 88);
}

id sub_1E1114(void *a1, uint64_t a2, uint64_t a3)
{
  v259 = a2;
  v240 = sub_2CDDD0();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v6 = &v227 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_20410(&qword_354160, &unk_2D6BB0);
  __chkstk_darwin(v238);
  v8 = &v227 - v7;
  v9 = sub_20410(&qword_34DA28, qword_2D1908);
  v10 = __chkstk_darwin(v9 - 8);
  v230 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v245 = &v227 - v13;
  __chkstk_darwin(v12);
  v246 = &v227 - v14;
  v255 = sub_2CDF70();
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v229 = &v227 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_20410(&qword_354158, &unk_2D6BC0);
  v16 = __chkstk_darwin(v253);
  v237 = &v227 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v236 = &v227 - v18;
  v19 = sub_20410(&qword_34DA18, &qword_2D18F8);
  v20 = __chkstk_darwin(v19 - 8);
  v231 = &v227 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v243 = &v227 - v23;
  v24 = __chkstk_darwin(v22);
  v244 = &v227 - v25;
  v26 = __chkstk_darwin(v24);
  v228 = &v227 - v27;
  v28 = __chkstk_darwin(v26);
  v262 = &v227 - v29;
  __chkstk_darwin(v28);
  v242 = &v227 - v30;
  v268 = sub_2CDF60();
  v257 = *(v268 - 1);
  v31 = __chkstk_darwin(v268);
  v267 = &v227 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v266 = &v227 - v34;
  v35 = __chkstk_darwin(v33);
  v265 = &v227 - v36;
  __chkstk_darwin(v35);
  v264 = &v227 - v37;
  v38 = sub_2CE000();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v241 = &v227 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v247 = &v227 - v43;
  __chkstk_darwin(v42);
  v45 = &v227 - v44;
  v46 = sub_2CDCF0();
  (*(*(v46 - 8) + 8))(a3, v46);
  result = [objc_allocWithZone(_INPBWholeHouseAudioMetadata) init];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v48 = result;
  sub_35E0(a1, a1[3]);
  v261 = v48;
  v275 = sub_2CDEC0();
  sub_35E0(a1, a1[3]);
  v49 = sub_2CDED0();
  sub_80D34(v49);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v50 = sub_3ED0(v38, static Logger.default);
  swift_beginAccess();
  v51 = *(v39 + 16);
  v52 = v45;
  v250 = v50;
  v249 = v39 + 16;
  v248 = v51;
  v51(v45, v50, v38);
  v53 = sub_2CDFE0();
  v54 = sub_2CE690();
  v55 = os_log_type_enabled(v53, v54);
  v235 = v8;
  v227 = v6;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v272 = v57;
    *v56 = 136315138;
    swift_beginAccess();

    v58 = sub_2CE420();
    v263 = v52;
    v60 = v59;

    v61 = sub_3F08(v58, v60, &v272);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_0, v53, v54, "_INPBWholeHouseAudioMetadata#init Unknown entities: %s", v56, 0xCu);
    sub_306C(v57);

    v62 = *(v39 + 8);
    v63 = v263;
  }

  else
  {

    v62 = *(v39 + 8);
    v63 = v45;
  }

  v251 = v62;
  v62(v63, v38);
  v252 = v39;
  v256 = v38;
  v260 = a1;
  v64 = *(v259 + 16);
  v258 = v64;
  if (v64)
  {
    v263 = *(v257 + 16);
    v65 = v259 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v66 = *(v257 + 72);
    v67 = (v257 + 8);
    v68 = _swiftEmptyArrayStorage;
    do
    {
      v70 = v264;
      v71 = v268;
      (v263)(v264, v65, v268);
      v72 = sub_2CDF50();
      v74 = v73;
      (*v67)(v70, v71);
      if (v74)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_B90C4(0, *(v68 + 2) + 1, 1, v68);
        }

        v76 = *(v68 + 2);
        v75 = *(v68 + 3);
        if (v76 >= v75 >> 1)
        {
          v68 = sub_B90C4((v75 > 1), v76 + 1, 1, v68);
        }

        *(v68 + 2) = v76 + 1;
        v69 = &v68[16 * v76];
        *(v69 + 4) = v72;
        *(v69 + 5) = v74;
      }

      v65 += v66;
      --v64;
    }

    while (v64);
  }

  else
  {
    v68 = _swiftEmptyArrayStorage;
  }

  v77 = v260;
  sub_35E0(v260, v260[3]);
  v274 = sub_2CDEE0();
  sub_35E0(v77, v77[3]);
  v78 = sub_2CDE80();
  sub_35E0(v77, v77[3]);
  v79 = sub_2CDE90();
  v272 = v78;
  sub_80D34(v79);
  v273 = v272;
  swift_beginAccess();
  v80 = v275;

  sub_1E39D8(v81, v68, &v273, &v274);

  swift_bridgeObjectRelease_n();
  v82 = v247;
  v83 = v256;
  v248(v247, v250, v256);
  v84 = sub_2CDFE0();
  v85 = sub_2CE690();
  v86 = os_log_type_enabled(v84, v85);
  v234 = v80;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v271 = swift_slowAlloc();
    *v87 = 136315394;
    swift_beginAccess();

    v88 = sub_2CE420();
    v90 = v89;

    v91 = sub_3F08(v88, v90, &v271);

    *(v87 + 4) = v91;
    *(v87 + 12) = 2080;
    swift_beginAccess();

    v92 = sub_2CE420();
    v94 = v93;

    v95 = sub_3F08(v92, v94, &v271);

    *(v87 + 14) = v95;
    _os_log_impl(&dword_0, v84, v85, "_INPBWholeHouseAudioMetadata#init intent speaker names: %s, intent room names: %s", v87, 0x16u);
    swift_arrayDestroy();
  }

  v251(v82, v83);
  v96 = v258;
  if (v258)
  {
    v264 = *(v257 + 16);
    v97 = v259 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v98 = *(v257 + 72);
    v99 = (v257 + 8);
    v100 = _swiftEmptyArrayStorage;
    do
    {
      v102 = v265;
      v103 = v268;
      (v264)(v265, v97, v268);
      v104 = sub_2CDF30();
      v106 = v105;
      (*v99)(v102, v103);
      if (v106)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_B90C4(0, *(v100 + 2) + 1, 1, v100);
        }

        v108 = *(v100 + 2);
        v107 = *(v100 + 3);
        if (v108 >= v107 >> 1)
        {
          v100 = sub_B90C4((v107 > 1), v108 + 1, 1, v100);
        }

        *(v100 + 2) = v108 + 1;
        v101 = &v100[16 * v108];
        *(v101 + 4) = v104;
        *(v101 + 5) = v106;
      }

      v97 += v98;
      --v96;
    }

    while (v96);
  }

  else
  {
    v100 = _swiftEmptyArrayStorage;
  }

  v109 = sub_2BDFB4(v100);

  v271 = v109;
  v110 = sub_20410(&qword_354778, &qword_2D6BD0);
  v111 = sub_1E3A80();
  v263 = v110;
  v247 = v111;
  sub_2CE570();

  v264 = sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
  isa = sub_2CE400().super.isa;

  [v261 setSpeakerNames:isa];

  v113 = v258;
  if (v258)
  {
    v265 = *(v257 + 16);
    v114 = v259 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v115 = *(v257 + 72);
    v116 = (v257 + 8);
    v117 = _swiftEmptyArrayStorage;
    do
    {
      v119 = v266;
      v120 = v268;
      (v265)(v266, v114, v268);
      v121 = sub_2CDF50();
      v123 = v122;
      (*v116)(v119, v120);
      if (v123)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_B90C4(0, *(v117 + 2) + 1, 1, v117);
        }

        v125 = *(v117 + 2);
        v124 = *(v117 + 3);
        if (v125 >= v124 >> 1)
        {
          v117 = sub_B90C4((v124 > 1), v125 + 1, 1, v117);
        }

        *(v117 + 2) = v125 + 1;
        v118 = &v117[16 * v125];
        *(v118 + 4) = v121;
        *(v118 + 5) = v123;
      }

      v114 += v115;
      --v113;
    }

    while (v113);
  }

  else
  {
    v117 = _swiftEmptyArrayStorage;
  }

  v126 = sub_2BDFB4(v117);

  v271 = v126;
  sub_2CE570();

  v127 = sub_2CE400().super.isa;

  [v261 setSpeakerRooms:v127];

  swift_beginAccess();
  v128 = *(v274 + 2);
  v233 = v274;
  if (v128)
  {

    v130 = sub_2BDFB4(v129);

    v270[1] = v130;
    sub_2CE570();

    v131.super.isa = sub_2CE400().super.isa;
  }

  else
  {
    v131.super.isa = 0;
  }

  v132 = v262;
  [v261 setIntentSpeakerNames:{v131.super.isa, v227}];

  swift_beginAccess();
  v133 = *(v273 + 2);
  v232 = v273;
  if (v133)
  {

    v135 = sub_2BDFB4(v134);

    v270[0] = v135;
    sub_2CE570();

    v136.super.isa = sub_2CE400().super.isa;
  }

  else
  {
    v136.super.isa = 0;
  }

  [v261 setIntentSpeakerRooms:v136.super.isa];

  v137 = v258;
  if (v258)
  {
    v266 = *(v257 + 16);
    v138 = v259 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v265 = *(v257 + 72);
    v139 = (v257 + 8);
    v140 = _swiftEmptyArrayStorage;
    do
    {
      v142 = v267;
      v143 = v268;
      (v266)(v267, v138, v268);
      v144 = sub_2CDF30();
      v146 = v145;
      (*v139)(v142, v143);
      if (v146)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_B90C4(0, *(v140 + 2) + 1, 1, v140);
        }

        v148 = *(v140 + 2);
        v147 = *(v140 + 3);
        if (v148 >= v147 >> 1)
        {
          v140 = sub_B90C4((v147 > 1), v148 + 1, 1, v140);
        }

        *(v140 + 2) = v148 + 1;
        v141 = &v140[16 * v148];
        *(v141 + 4) = v144;
        *(v141 + 5) = v146;
        v132 = v262;
      }

      v138 += v265;
      --v137;
    }

    while (v137);
  }

  else
  {
    v140 = _swiftEmptyArrayStorage;
  }

  v149 = sub_2BDFB4(v140);

  v270[0] = v149;
  sub_2CE570();

  v150 = sub_2CE400().super.isa;

  [v261 setIntentDestinationSpeakers:v150];

  sub_35E0(v260, v260[3]);
  v151 = v242;
  sub_2CDE60();
  v152 = v254;
  v153 = *(v254 + 104);
  v154 = v255;
  v153(v132, enum case for PlaceHint.house(_:), v255);
  v155 = *(v152 + 56);
  v267 = (v152 + 56);
  v266 = v155;
  (v155)(v132, 0, 1, v154);
  v156 = *(v253 + 48);
  v157 = v236;
  sub_F3F4(v151, v236, &qword_34DA18, &qword_2D18F8);
  sub_F3F4(v132, v157 + v156, &qword_34DA18, &qword_2D18F8);
  v158 = *(v152 + 48);
  v159 = v158(v157, 1, v154);
  v268 = v158;
  if (v159 != 1)
  {
    v162 = v228;
    sub_F3F4(v157, v228, &qword_34DA18, &qword_2D18F8);
    if (v158(v157 + v156, 1, v154) != 1)
    {
      v165 = v254;
      v166 = v157 + v156;
      v167 = v229;
      (*(v254 + 32))(v229, v166, v154);
      sub_1E3AE4(&qword_354168, &type metadata accessor for PlaceHint, &protocol conformance descriptor for PlaceHint);
      LODWORD(v265) = sub_2CE250();
      v168 = *(v165 + 8);
      v168(v167, v154);
      sub_30B8(v262, &qword_34DA18, &qword_2D18F8);
      sub_30B8(v242, &qword_34DA18, &qword_2D18F8);
      v168(v162, v154);
      sub_30B8(v157, &qword_34DA18, &qword_2D18F8);
      v161 = v237;
      if (v265)
      {
        goto LABEL_63;
      }

LABEL_61:
      v163 = 0;
      v164 = v260;
      goto LABEL_64;
    }

    sub_30B8(v262, &qword_34DA18, &qword_2D18F8);
    sub_30B8(v242, &qword_34DA18, &qword_2D18F8);
    (*(v254 + 8))(v162, v154);
    v161 = v237;
LABEL_60:
    sub_30B8(v157, &qword_354158, &unk_2D6BC0);
    goto LABEL_61;
  }

  sub_30B8(v132, &qword_34DA18, &qword_2D18F8);
  sub_30B8(v151, &qword_34DA18, &qword_2D18F8);
  v160 = v158(v157 + v156, 1, v154);
  v161 = v237;
  if (v160 != 1)
  {
    goto LABEL_60;
  }

  sub_30B8(v157, &qword_34DA18, &qword_2D18F8);
LABEL_63:
  v164 = v260;
  v169 = v260[3];
  v170 = v260[4];
  sub_35E0(v260, v169);
  v163 = !sub_1BCEE8(v169, v170);
LABEL_64:
  [v261 setIsAllSpeakers:v163];
  sub_35E0(v164, v164[3]);
  v171 = v244;
  sub_2CDE60();
  v172 = v243;
  v173 = v255;
  v153(v243, enum case for PlaceHint.here(_:), v255);
  (v266)(v172, 0, 1, v173);
  v174 = *(v253 + 48);
  sub_F3F4(v171, v161, &qword_34DA18, &qword_2D18F8);
  sub_F3F4(v172, v161 + v174, &qword_34DA18, &qword_2D18F8);
  v175 = v268;
  if ((v268)(v161, 1, v173) == 1)
  {
    sub_30B8(v172, &qword_34DA18, &qword_2D18F8);
    sub_30B8(v171, &qword_34DA18, &qword_2D18F8);
    v176 = v175(v161 + v174, 1, v173);
    v177 = v260;
    v178 = v240;
    v179 = v235;
    v180 = v239;
    v181 = v246;
    v182 = v245;
    v183 = v238;
    if (v176 == 1)
    {
      sub_30B8(v161, &qword_34DA18, &qword_2D18F8);
      v184 = 1;
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v185 = v231;
  sub_F3F4(v161, v231, &qword_34DA18, &qword_2D18F8);
  v186 = v175(v161 + v174, 1, v173);
  v178 = v240;
  v179 = v235;
  v180 = v239;
  if (v186 == 1)
  {
    sub_30B8(v243, &qword_34DA18, &qword_2D18F8);
    sub_30B8(v244, &qword_34DA18, &qword_2D18F8);
    (*(v254 + 8))(v185, v173);
    v177 = v260;
    v181 = v246;
    v182 = v245;
    v183 = v238;
LABEL_69:
    sub_30B8(v161, &qword_354158, &unk_2D6BC0);
    v184 = 0;
    goto LABEL_71;
  }

  v187 = v254;
  v188 = v161 + v174;
  v189 = v229;
  (*(v254 + 32))(v229, v188, v173);
  sub_1E3AE4(&qword_354168, &type metadata accessor for PlaceHint, &protocol conformance descriptor for PlaceHint);
  v184 = sub_2CE250();
  v190 = *(v187 + 8);
  v190(v189, v173);
  sub_30B8(v243, &qword_34DA18, &qword_2D18F8);
  sub_30B8(v244, &qword_34DA18, &qword_2D18F8);
  v190(v231, v173);
  sub_30B8(v161, &qword_34DA18, &qword_2D18F8);
  v177 = v260;
  v181 = v246;
  v182 = v245;
  v183 = v238;
LABEL_71:
  [v261 setIsInHere:v184 & 1];
  sub_35E0(v177, v177[3]);
  sub_2CDEF0();
  v191 = v180;
  (*(v180 + 104))(v182, enum case for DeviceQuantifier.except(_:), v178);
  (*(v180 + 56))(v182, 0, 1, v178);
  v192 = *(v183 + 48);
  sub_F3F4(v181, v179, &qword_34DA28, qword_2D1908);
  sub_F3F4(v182, v179 + v192, &qword_34DA28, qword_2D1908);
  v193 = v181;
  v194 = v180;
  v195 = v182;
  v196 = *(v194 + 48);
  if (v196(v179, 1, v178) != 1)
  {
    v201 = v230;
    sub_F3F4(v179, v230, &qword_34DA28, qword_2D1908);
    v202 = v196(v179 + v192, 1, v178);
    v199 = v241;
    if (v202 != 1)
    {
      v203 = v179 + v192;
      v204 = v227;
      (*(v191 + 32))(v227, v203, v178);
      sub_1E3AE4(&qword_354170, &type metadata accessor for DeviceQuantifier, &protocol conformance descriptor for DeviceQuantifier);
      v200 = sub_2CE250();
      v205 = *(v191 + 8);
      v205(v204, v178);
      sub_30B8(v245, &qword_34DA28, qword_2D1908);
      sub_30B8(v246, &qword_34DA28, qword_2D1908);
      v205(v201, v178);
      sub_30B8(v179, &qword_34DA28, qword_2D1908);
      v198 = v256;
      goto LABEL_78;
    }

    sub_30B8(v245, &qword_34DA28, qword_2D1908);
    sub_30B8(v246, &qword_34DA28, qword_2D1908);
    (*(v191 + 8))(v201, v178);
    v198 = v256;
    goto LABEL_76;
  }

  sub_30B8(v195, &qword_34DA28, qword_2D1908);
  sub_30B8(v193, &qword_34DA28, qword_2D1908);
  v197 = v196(v179 + v192, 1, v178);
  v198 = v256;
  v199 = v241;
  if (v197 != 1)
  {
LABEL_76:
    sub_30B8(v179, &qword_354160, &unk_2D6BB0);
    v200 = 0;
    goto LABEL_78;
  }

  sub_30B8(v179, &qword_34DA28, qword_2D1908);
  v200 = 1;
LABEL_78:
  v206 = v200 & 1;
  v207 = v261;
  [v261 setHasExcept:v206];
  v248(v199, v250, v198);
  v208 = v207;
  v209 = sub_2CDFE0();
  v210 = sub_2CE690();

  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    v270[0] = swift_slowAlloc();
    *v211 = 136315394;
    v212 = [v208 intentSpeakerNames];
    if (v212)
    {
      v213 = v212;
      v214 = sub_2CE410();
    }

    else
    {
      v214 = 0;
    }

    v269 = v214;
    sub_20410(&qword_354788, &qword_2D6BD8);
    v217 = sub_2CE2A0();
    v219 = sub_3F08(v217, v218, v270);

    *(v211 + 4) = v219;
    *(v211 + 12) = 2080;
    v220 = [v208 intentSpeakerNames];
    if (v220)
    {
      v221 = v220;
      v222 = sub_2CE410();
    }

    else
    {
      v222 = 0;
    }

    v269 = v222;
    v223 = sub_2CE2A0();
    v225 = v224;

    v226 = sub_3F08(v223, v225, v270);

    *(v211 + 14) = v226;
    _os_log_impl(&dword_0, v209, v210, "_INPBWholeHouseAudioMetadata#init intent speaker names: %s, intent room names: %s", v211, 0x16u);
    swift_arrayDestroy();

    v215 = v199;
    v216 = v256;
  }

  else
  {

    v215 = v199;
    v216 = v198;
  }

  v251(v215, v216);

  sub_306C(v260);
  return v208;
}

uint64_t sub_1E30DC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t a1), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v87 = a5;
  v88 = a6;
  v83 = a4;
  v84 = a1;
  v82 = a13;
  v92 = sub_2CDFD0();
  v81 = *(v92 - 8);
  v16 = __chkstk_darwin(v92);
  v78 = v17;
  v79 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = &v78 - v18;
  v19 = sub_2CE000();
  v85 = *(v19 - 8);
  v86 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v78 - v24;
  __chkstk_darwin(v23);
  v89 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v27;
  v28 = *(v27 + 16);
  v91 = a9;
  v28();
  v99[3] = a8;
  v99[4] = a11;
  v29 = sub_F390(v99);
  (*(*(a8 - 8) + 16))(v29, a3, a8);
  v98[3] = a10;
  v98[4] = v82;
  v30 = sub_F390(v98);
  (*(*(a10 - 8) + 16))(v30, v83, a10);
  v31 = a7;
  sub_1DC8D8(v84, &v95);
  if (v96)
  {
    sub_F338(&v95, v97);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v84 = a12;
    v32 = v86;
    v33 = sub_3ED0(v86, static Logger.default);
    swift_beginAccess();
    v34 = v85;
    (*(v85 + 16))(v25, v33, v32);
    v35 = v31;
    v36 = sub_2CDFE0();
    v37 = sub_2CE690();

    v38 = os_log_type_enabled(v36, v37);
    v83 = v35;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v95 = v40;
      *v39 = 136446210;
      v41 = sub_2CE770();
      v43 = sub_3F08(v41, v42, &v95);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_0, v36, v37, "INPlayMediaIntent#performRouteResolution This is a WHA request... Running for intent INPlayMediaIntent: %{public}s", v39, 0xCu);
      sub_306C(v40);
    }

    (*(v34 + 8))(v25, v32);
    v44 = swift_allocObject();
    *(v44 + 16) = v87;
    v87 = v44;
    *(v44 + 24) = v88;
    v45 = qword_34BF98;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = qword_35F760;
    v47 = v80;
    sub_2CDFB0();
    v48 = v81;
    v49 = v79;
    v50 = v92;
    (*(v81 + 16))(v79, v47, v92);
    v51 = (*(v48 + 80) + 33) & ~*(v48 + 80);
    v52 = (v78 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    *(v53 + 16) = "resolveWHADestinationDevices";
    *(v53 + 24) = 28;
    *(v53 + 32) = 2;
    (*(v48 + 32))(v53 + v51, v49, v50);
    v54 = (v53 + v52);
    v55 = v87;
    *v54 = sub_1E3FF8;
    v54[1] = v55;

    v56 = sub_2CE9E0();
    v57 = v47;
    sub_2CDF90(v56, &dword_0, v46, "resolveWHADestinationDevices", 28, 2, v47, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1E3FEC;
    *(v58 + 24) = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1E3FFC;
    *(v59 + 24) = v58;
    sub_EEAC(v97, &v95);
    sub_EEAC(v98, v94);
    sub_EEAC(v99, v93);
    v60 = swift_allocObject();
    v60[2] = sub_1E3FF0;
    v60[3] = v59;
    sub_F338(&v95, (v60 + 4));
    sub_F338(v94, (v60 + 9));
    v61 = v83;
    v60[14] = v83;
    sub_F338(v93, (v60 + 15));
    v62 = v61;

    v63 = v89;
    v64 = v91;
    sub_2CDE40();

    (*(v48 + 8))(v57, v92);

    sub_306C(v97);
  }

  else
  {
    v65 = v22;
    sub_30B8(&v95, &qword_3547A8, &unk_2D6BE8);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v66 = v86;
    v67 = sub_3ED0(v86, static Logger.default);
    swift_beginAccess();
    v68 = v85;
    (*(v85 + 16))(v65, v67, v66);
    v69 = v31;
    v70 = sub_2CDFE0();
    v71 = sub_2CE660();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v95 = v73;
      *v72 = 136446210;
      v74 = sub_2CE770();
      v76 = sub_3F08(v74, v75, &v95);

      *(v72 + 4) = v76;
      _os_log_impl(&dword_0, v70, v71, "INPlayMediaIntent#performRouteResolution No homeAutomationProvider was found in the intent: %{public}s. This is expected if no home automation entities were requested", v72, 0xCu);
      sub_306C(v73);
    }

    (*(v68 + 8))(v65, v66);
    v64 = v91;
    v63 = v89;
    v87(0);
  }

  (*(v90 + 8))(v63, v64);
  sub_306C(v99);
  return sub_306C(v98);
}

void sub_1E39D8(uint64_t a1, uint64_t a2, char **a3, char **a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      sub_14F698(v11, a2, a3, a4);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return;
      }
    }
  }
}

unint64_t sub_1E3A80()
{
  result = qword_354780;
  if (!qword_354780)
  {
    sub_2DB30(&qword_354778, &qword_2D6BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354780);
  }

  return result;
}

uint64_t sub_1E3AE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1E3B2C(uint64_t a1)
{
  v2 = sub_2CDF60();
  v3 = __chkstk_darwin(v2);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v53 = &v42 - v6;
  v7 = &_swiftEmptyDictionarySingleton;
  v54 = &_swiftEmptyDictionarySingleton;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v10 = *(v5 + 16);
  v9 = v5 + 16;
  v44 = *(v9 + 64);
  v11 = *(v9 + 56);
  v47 = (v44 + 32) & ~v44;
  v48 = v10;
  v12 = a1 + v47;
  v51 = (v9 + 16);
  v43 = xmmword_2D0090;
  v45 = v2;
  v46 = v9;
  v50 = v11;
  while (1)
  {
    v52 = v8;
    v14 = v9;
    v48(v53, v12, v2);
    v18 = sub_2CDF50();
    v20 = v19;
    v22 = sub_4F8DC(v18, v19);
    v23 = v7[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v7[3] < v25)
    {
      sub_236FB0(v25, 1);
      v7 = v54;
      v27 = sub_4F8DC(v18, v20);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {

      v29 = v7[7];
      v30 = *v51;
      (*v51)(v49, v53, v2);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_B9474(0, v31[2] + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_B9474((v33 > 1), v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v14 = v46;
      v13 = v47;
      v31[2] = v34 + 1;
      v15 = v50;
      v16 = v31 + v13 + v34 * v50;
      v2 = v45;
      v17 = v52;
      v30(v16, v49, v45);
    }

    else
    {
      sub_20410(&qword_34E998, &qword_2D2948);
      v35 = v47;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      (*v51)((v36 + v35), v53, v2);
      v7[(v22 >> 6) + 8] |= 1 << v22;
      v37 = (v7[6] + 16 * v22);
      *v37 = v18;
      v37[1] = v20;
      *(v7[7] + 8 * v22) = v36;
      v38 = v7[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v7[2] = v40;
      v15 = v50;
      v17 = v52;
    }

    v12 += v15;
    v8 = v17 - 1;
    v9 = v14;
    if (!v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_20410(&qword_34CCC0, &unk_2D0DE0);
  result = sub_2CEEE0();
  __break(1u);
  return result;
}

unint64_t sub_1E3EAC()
{
  result = qword_3547A0;
  if (!qword_3547A0)
  {
    sub_334A0(255, &qword_354798, INHomeAutomationEntityProvider_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3547A0);
  }

  return result;
}

uint64_t sub_1E3F14(_BYTE *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_211640(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t UpdateMediaAffinity.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v29 = a4;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2CDFE0();
  v14 = sub_2CE670();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = a2;
    v17 = v16;
    v32 = a1;
    v33 = v16;
    *v15 = 136315138;
    sub_2CCFB0();
    v28 = a3;
    sub_1E65A8(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    v18 = sub_2CEE70();
    v20 = sub_3F08(v18, v19, &v33);

    *(v15 + 4) = v20;
    a3 = v28;
    _os_log_impl(&dword_0, v13, v14, "HandleIntentStrategy#makeIntentHandledResponse for app: %s", v15, 0xCu);
    sub_306C(v17);
    a2 = v27;
  }

  (*(v9 + 8))(v11, v8);
  v21 = v30;
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v23 = v29;
  v22[4] = a2;
  v22[5] = v23;
  v22[6] = v31;
  v22[7] = a3;

  v24 = a2;

  v25 = a3;
  sub_1317A4(a1, v24, sub_1E4EC8, v22);
}

uint64_t sub_1E4318(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v66 = a7;
  v80 = a5;
  v81 = a6;
  v82 = a4;
  v78 = a2;
  v79 = a3;
  v71 = a1;
  v69 = sub_2CCB20();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v8 - 8);
  v74 = &v66 - v9;
  v72 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = __chkstk_darwin(v72);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v66 - v12;
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v13 - 8);
  v77 = &v66 - v14;
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v15 - 8);
  v76 = &v66 - v16;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v17 - 8);
  v75 = &v66 - v18;
  v19 = sub_2CCB30();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2CCAC0();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v27);
  v29 = (&v66 - v28);
  sub_F3F4(v71, &v66 - v28, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    (*(v24 + 104))(v26, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v23);
    (*(v20 + 104))(v22, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v19);
    swift_getErrorValue();
    sub_2CEEF0();
    v74 = sub_2CCAE0();

    (*(v20 + 8))(v22, v19);
    (*(v24 + 8))(v26, v23);
    v78 = sub_35E0(v78 + 3, v78[6]);
    v31 = enum case for ActivityType.failed(_:);
    v32 = sub_2C9C20();
    v33 = *(v32 - 8);
    v34 = v75;
    (*(v33 + 104))(v75, v31, v32);
    (*(v33 + 56))(v34, 0, 1, v32);
    v35 = sub_2CA130();
    v36 = v76;
    (*(*(v35 - 8) + 56))(v76, 1, 1, v35);
    v37 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v38 = sub_2C98F0();
    v39 = *(v38 - 8);
    v40 = v77;
    (*(v39 + 104))(v77, v37, v38);
    (*(v39 + 56))(v40, 0, 1, v38);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v40, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v36, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v34, &qword_34CB88, &unk_2D0D90);
    v83[0] = v30;
    v84 = 1;
    swift_errorRetain();
    v80(v83);

    return sub_30B8(v83, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v42 = v73;
    sub_24BE0(v29, v73);
    sub_28D844(v82, v74);
    (*(v24 + 104))(v26, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v23);
    (*(v20 + 104))(v22, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v19);
    v43 = v68;
    v44 = v67;
    v45 = v69;
    (*(v68 + 104))(v67, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v69);
    v71 = sub_2CCAD0();
    v66 = v46;
    (*(v43 + 8))(v44, v45);
    (*(v20 + 8))(v22, v19);
    (*(v24 + 8))(v26, v23);
    v47 = v78;
    v67 = v78[6];
    v68 = v78[7];
    v69 = sub_35E0(v78 + 3, v67);
    v48 = enum case for ActivityType.completed(_:);
    v49 = sub_2C9C20();
    v50 = *(v49 - 8);
    v51 = v75;
    (*(v50 + 104))(v75, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = v70;
    sub_F3F4(v42, v70, &qword_34C6E8, &unk_2D0FF0);

    v53 = sub_2CA130();
    v54 = *(v53 - 8);
    v55 = v76;
    (*(v54 + 32))(v76, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56 = enum case for SiriKitReliabilityCodes.success(_:);
    v57 = sub_2C98F0();
    v58 = *(v57 - 8);
    v59 = v77;
    (*(v58 + 104))(v77, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v59, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v55, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v51, &qword_34CB88, &unk_2D0D90);
    v60 = sub_35E0(v47 + 8, v47[11]);
    v61 = v73;
    sub_F3F4(v73, v52, &qword_34C6E8, &unk_2D0FF0);
    v62 = *(v52 + *(v72 + 48));
    v63 = *v60;
    v64 = v81;

    v65 = v74;
    sub_1C6C10(v52, v62, v74, _swiftEmptyArrayStorage, v63, v80, v64);

    sub_30B8(v65, &unk_353020, &unk_2D0970);
    sub_30B8(v61, &qword_34C6E8, &unk_2D0FF0);
    return (*(v54 + 8))(v52, v53);
  }
}

uint64_t UpdateMediaAffinity.HandleIntentStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = a2;
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = a1;
    v26 = v22;
    *v15 = 136315394;
    sub_2CCFB0();
    v24 = a1;
    sub_1E65A8(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    v17 = sub_2CEE70();
    v19 = sub_3F08(v17, v18, &v26);
    a1 = v24;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = v11;
    v20 = v11;
    _os_log_impl(&dword_0, v12, v13, "UpdateMediaAffinity#makeSiriKitIntentHandler called with app: %s and intent: %@", v15, 0x16u);
    sub_30B8(v16, &unk_34FC00, &unk_2D0150);

    sub_306C(v22);

    a3 = v23;
  }

  (*(v7 + 8))(v9, v6);
  return _s23AudioFlowDelegatePlugin019UpdateMediaAffinityB8StrategyC24makeSiriKitIntentHandler3app6intent0jkB00jklM0VSg0J13AppResolution0P0C_So08INUpdatefgL0CtF_0(a1, v11, a3);
}

uint64_t UpdateMediaAffinity.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = a4;
  v36 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "UpdateMediaAffinity#makeFailureHandlingIntentResponse", v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v34 = *(v6 + 104);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v19 = 0xE000000000000000;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_2CECB0(50);

  v38 = 0xD00000000000002DLL;
  v39 = 0x80000000002DD970;
  v20 = [a3 userActivity];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 activityType];

    v23 = sub_2CE270();
    v19 = v24;
  }

  else
  {
    v23 = 0;
  }

  v40._countAndFlagsBits = v23;
  v40._object = v19;
  sub_2CE350(v40);

  v41._countAndFlagsBits = 95;
  v41._object = 0xE100000000000000;
  sub_2CE350(v41);
  v37 = [a3 code];
  v42._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v42);

  v25 = v38;
  v26 = v39;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v25;
  *(inited + 56) = v26;
  v27 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v28 = swift_allocObject();
  *(v28 + 16) = v6;
  *(v28 + 24) = a1;
  v29 = v35;
  v30 = v36;
  *(v28 + 32) = a2;
  *(v28 + 40) = v29;
  *(v28 + 48) = v30;
  *(v28 + 56) = a3;

  v31 = a2;

  v32 = a3;
  sub_E4FD0(v27, a1, sub_1E6530, v28);
}

uint64_t sub_1E55B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, void *a7)
{
  v61 = a7;
  v73 = a5;
  v74 = a6;
  v71 = a3;
  v72 = a4;
  v67 = a2;
  v64 = a1;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v7 - 8);
  v63 = v60 - v8;
  v65 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = __chkstk_darwin(v65);
  v62 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = v60 - v11;
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v12 - 8);
  v70 = v60 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v14 - 8);
  v69 = v60 - v15;
  v16 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v16 - 8);
  v68 = v60 - v17;
  v18 = sub_2CCB30();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCAC0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (v60 - v27);
  sub_F3F4(v64, v60 - v27, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    swift_getErrorValue();
    sub_2CEEF0();
    v66 = sub_2CCAE0();

    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v67 = sub_35E0(v67 + 3, v67[6]);
    v30 = enum case for ActivityType.failed(_:);
    v31 = sub_2C9C20();
    v32 = *(v31 - 8);
    v33 = v68;
    (*(v32 + 104))(v68, v30, v31);
    (*(v32 + 56))(v33, 0, 1, v31);
    v34 = sub_2CA130();
    v35 = v69;
    (*(*(v34 - 8) + 56))(v69, 1, 1, v34);
    v36 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v37 = sub_2C98F0();
    v38 = *(v37 - 8);
    v39 = v70;
    (*(v38 + 104))(v70, v36, v37);
    (*(v38 + 56))(v39, 0, 1, v37);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v39, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v35, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v33, &qword_34CB88, &unk_2D0D90);
    v75[0] = v29;
    v76 = 1;
    swift_errorRetain();
    v73(v75);

    return sub_30B8(v75, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v41 = v66;
    sub_24BE0(v28, v66);
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    v75[0] = [v61 code];
    sub_2CEE70();
    v64 = sub_2CCAE0();
    v61 = v42;

    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v43 = v67;
    v60[0] = v67[6];
    v60[1] = v67[7];
    v60[2] = sub_35E0(v67 + 3, v60[0]);
    v44 = enum case for ActivityType.failed(_:);
    v45 = sub_2C9C20();
    v46 = *(v45 - 8);
    v47 = v68;
    (*(v46 + 104))(v68, v44, v45);
    (*(v46 + 56))(v47, 0, 1, v45);
    v48 = v62;
    sub_F3F4(v41, v62, &qword_34C6E8, &unk_2D0FF0);

    v49 = sub_2CA130();
    v50 = *(v49 - 8);
    v51 = v69;
    (*(v50 + 32))(v69, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v53 = sub_2C98F0();
    v54 = *(v53 - 8);
    v55 = v70;
    (*(v54 + 104))(v70, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v55, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v51, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v47, &qword_34CB88, &unk_2D0D90);
    sub_35E0(v43 + 8, v43[11]);
    v56 = v66;
    sub_F3F4(v66, v48, &qword_34C6E8, &unk_2D0FF0);
    v57 = *(v48 + *(v65 + 48));
    v58 = sub_2CA000();
    v59 = v63;
    (*(*(v58 - 8) + 56))(v63, 1, 1, v58);
    sub_1C077C(v48, v57, v59, _swiftEmptyArrayStorage, v73, v74);

    sub_30B8(v59, &unk_353020, &unk_2D0970);
    sub_30B8(v56, &qword_34C6E8, &unk_2D0FF0);
    return (*(v50 + 8))(v48, v49);
  }
}

void *UpdateMediaAffinity.HandleIntentStrategy.deinit()
{

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);

  sub_306C(v0 + 14);
  return v0;
}

uint64_t UpdateMediaAffinity.HandleIntentStrategy.__deallocating_deinit()
{

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);

  sub_306C(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_1E6158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E6250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E62F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E636C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E640C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, updated, a3);
}

uint64_t sub_1E6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, updated, a4);
}

uint64_t sub_1E64C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_1E65A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E6614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1E6C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC090;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000012;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1E731C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1E79A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB730;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000015;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000015, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000015;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1E8024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC120;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1E86A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0F0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000029;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000029, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000029;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1E8D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC050;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D7C;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13D84;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E010;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1E93D4(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      result = 1196314451;
      break;
    case 2:
      result = 0x4D55424C41;
      break;
    case 3:
      result = 0x545349545241;
      break;
    case 4:
      result = 0x45524E4547;
      break;
    case 5:
      result = 0x5453494C59414C50;
      break;
    case 6:
    case 15:
      result = 0x5F54534143444F50;
      break;
    case 7:
      result = 0x5F54534143444F50;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      v2 = 0x5F434953554DLL;
      goto LABEL_22;
    case 10:
      result = 0x4F425F4F49445541;
      break;
    case 11:
      result = 0x4549564F4DLL;
      break;
    case 12:
      result = 0x574F48535F5654;
      break;
    case 13:
      result = 0x5F574F48535F5654;
      break;
    case 14:
      result = 0x49565F434953554DLL;
      break;
    case 16:
      v2 = 0x5F4F49444152;
LABEL_22:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x5453000000000000;
      break;
    case 17:
      result = 0x4E4F4954415453;
      break;
    case 18:
      result = 0x434953554DLL;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 1398228302;
      break;
    default:
      result = 0x4E574F4E4B4E55;
      break;
  }

  return result;
}

id sub_1E960C()
{
  v1 = v0;
  v2 = sub_2CE0A0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - v8;
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  result = [v1 mediaDestination];
  if (result)
  {
    v13 = result;
    sub_2CE090();

    (*(v3 + 32))(v11, v9, v2);
    (*(v3 + 16))(v6, v11, v2);
    v14 = (*(v3 + 88))(v6, v2);
    if (v14 == enum case for INMediaDestination.playlist(_:))
    {
      (*(v3 + 8))(v11, v2);
      (*(v3 + 96))(v6, v2);
      return *v6;
    }

    else
    {
      v15 = v14;
      v16 = enum case for INMediaDestination.library(_:);
      v17 = *(v3 + 8);
      v17(v11, v2);
      if (v15 != v16)
      {
        v17(v6, v2);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1E9824()
{
  v1 = v0;
  v2 = sub_2CE0A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34CC98, &unk_2D3120);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = [v1 mediaDestination];
  if (!v12)
  {
    (*(v3 + 56))(v11, 1, 1, v2);
    goto LABEL_8;
  }

  v13 = v12;
  sub_2CE090();

  (*(v3 + 32))(v11, v5, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  sub_73000(v11, v9);
  v14 = (*(v3 + 88))(v9, v2);
  if (v14 != enum case for INMediaDestination.playlist(_:))
  {
    if (v14 == enum case for INMediaDestination.library(_:))
    {
      v15 = 1;
      goto LABEL_9;
    }

    (*(v3 + 8))(v9, v2);
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  (*(v3 + 8))(v9, v2);
  v15 = 2;
LABEL_9:
  sub_1E9F9C(v11);
  return v15;
}

id sub_1E9A80(SEL *a1)
{
  result = [v1 mediaItems];
  if (result)
  {
    v4 = result;
    sub_736BC();
    v5 = sub_2CE410();

    if (v5 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;

        v8 = [v7 *a1];

        if (v8)
        {
          v9 = sub_2CE270();

          return v9;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E9BB8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 mediaItems];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  sub_736BC();
  v7 = sub_2CE410();

  if (v7 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_2CECD0();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v9 = *(v7 + 32);
LABEL_7:
    v10 = v9;

    v11 = INMediaItem.isInternalSignalPresent(_:)(a1);

    sub_F1954(a2);
    return v11 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_1E9CB4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFB0();
}

BOOL sub_1E9D08(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFD0();
}

BOOL sub_1E9D5C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_getWitnessTable();
  v5.value._countAndFlagsBits = a1;
  v5.value._object = a2;

  return sub_2CBFF0(v5);
}

uint64_t sub_1E9DC8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFE0();
}

BOOL sub_1E9E1C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CC010();
}

uint64_t sub_1E9E70(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBF90();
}

uint64_t sub_1E9EC4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFC0();
}

uint64_t sub_1E9F9C(uint64_t a1)
{
  v2 = sub_20410(&qword_34CC98, &unk_2D3120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1EA018()
{
  result = qword_354A50;
  if (!qword_354A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A50);
  }

  return result;
}

Swift::Int sub_1EA078()
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

double sub_1EA12C(uint64_t a1)
{
  sub_2CE310();

  return result;
}

Swift::Int sub_1EA1CC(uint64_t a1)
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

unint64_t sub_1EA27C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1EA4B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1EA2AC(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C67676F74;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E65;
  if (*v1 != 2)
  {
    v5 = 0x656C6261736964;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 7628147;
    v2 = 0xE300000000000000;
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

uint64_t sub_1EA32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1EA504();
  v5 = sub_1EA558();
  v6 = sub_1EA5AC();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_1EA3A4()
{
  result = qword_354A58;
  if (!qword_354A58)
  {
    sub_2DB30(&qword_354A60, &qword_2D6F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A58);
  }

  return result;
}

unint64_t sub_1EA40C()
{
  result = qword_354A68;
  if (!qword_354A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A68);
  }

  return result;
}

unint64_t sub_1EA464()
{
  result = qword_354A70;
  if (!qword_354A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A70);
  }

  return result;
}

unint64_t sub_1EA4B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_330A00;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1EA504()
{
  result = qword_354A78;
  if (!qword_354A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A78);
  }

  return result;
}

unint64_t sub_1EA558()
{
  result = qword_354A80;
  if (!qword_354A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A80);
  }

  return result;
}

unint64_t sub_1EA5AC()
{
  result = qword_354A88;
  if (!qword_354A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A88);
  }

  return result;
}

uint64_t sub_1EA600()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v4 = CATDefaultMode;
  v5 = sub_2CBC00();
  v6 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v7 = swift_allocObject();
  v28[3] = &type metadata for StringsBackedAppNameResolver;
  v28[4] = sub_2869C();
  v28[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v28[0] + 16);
  v27[3] = v5;
  v27[4] = &protocol witness table for MorphunProvider;
  v27[0] = v6;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v8 = sub_F390(v26);
  (*(v1 + 16))(v8, v3, v0);
  *(v7 + 296) = v4;
  sub_EEAC(v26, v7 + 256);
  sub_EEAC(v28, v25);
  sub_EEAC(v27, v24);
  sub_EEAC(v29, v23);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = sub_2CCA30();

  v10 = sub_2CCA20();
  v20[3] = v9;
  v20[4] = &protocol witness table for MultiUserConnectionProvider;
  v20[0] = v10;
  v19[3] = sub_2CB9E0();
  v19[4] = &protocol witness table for DeviceProvider;
  sub_F390(v19);
  sub_2CB9C0();
  sub_EEAC(v25, v7 + 16);
  sub_EEAC(v24, v7 + 216);
  sub_EEAC(v23, v7 + 56);
  sub_EEAC(v20, v7 + 96);
  sub_EEAC(v19, v7 + 176);
  sub_286F0(v21, &v14);
  if (v15)
  {

    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    sub_F338(&v14, &v16);
  }

  else
  {
    sub_EEAC(v23, &v16);
    v11 = sub_2C9E60();
    swift_allocObject();
    v12 = sub_2C9E50();
    v17 = v11;
    v18 = &protocol witness table for ContactsManager;

    *&v16 = v12;
    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    if (v15)
    {
      sub_28760(&v14);
    }
  }

  sub_F338(&v16, v7 + 136);
  return v7;
}

uint64_t sub_1EA9EC@<X0>(uint64_t *a1@<X8>)
{
  v13 = sub_2CC360();
  v14 = &protocol witness table for StringsFileResolver;
  sub_F390(&v12);
  sub_2CC350();
  v2 = type metadata accessor for PlayMediaAlternativeSnippetProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 18;
  sub_20410(&qword_354B98, &unk_2D7080);
  v4 = sub_2CB900();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2D10E0;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, enum case for PlaybackItem.Scheme.album(_:), v4);
  v10(v9 + v6, enum case for PlaybackItem.Scheme.playlist(_:), v4);
  v10(v9 + 2 * v6, enum case for PlaybackItem.Scheme.song(_:), v4);
  *(v3 + 24) = v8;
  result = sub_F338(&v12, v3 + 32);
  a1[3] = v2;
  a1[4] = &off_3399E0;
  *a1 = v3;
  return result;
}

uint64_t sub_1EABC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v7 = sub_2CC650();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CB4A0();
  v70[3] = v9;
  v70[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v70[0] = a3;
  type metadata accessor for PlayMediaCatDialogService();
  v10 = swift_allocObject();
  v10[6] = 0xEF746E65746E4961;
  v10[2] = 0xD000000000000011;
  v10[3] = 0x80000000002DA8D0;
  v38 = 0x80000000002DA8D0;
  v10[4] = a1;
  v10[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  v39 = a1;
  swift_retain_n();

  v45 = sub_2CC2B0();
  v68 = v45;
  v69 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v67);
  sub_2CC2A0();
  v44 = sub_2CC360();
  v65 = v44;
  v66 = &protocol witness table for StringsFileResolver;
  sub_F390(&v64);
  sub_2CC350();
  v11 = sub_2CB490();
  v62 = v9;
  v63 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v61 = v11;
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v12 = qword_35F900;
  sub_2CBC60();
  v13 = type metadata accessor for DialogHistoryProvider();
  v56 = v13;
  v57 = &off_33CAE0;
  v55[0] = v12;
  type metadata accessor for PlayMediaDialogProvider(0);
  v14 = swift_allocObject();
  v15 = sub_F9A0(v55, v13);
  __chkstk_darwin(v15);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v53 = v13;
  v54 = &off_33CAE0;
  v52[0] = v19;
  v14[15] = v10;
  sub_EEAC(&v67, (v14 + 16));
  sub_EEAC(&v61, (v14 + 31));
  sub_EEAC(v52, (v14 + 21));
  sub_EEAC(&v58, (v14 + 26));
  sub_EEAC(&v64, &v49);

  v20 = sub_2CB490();
  v47 = v9;
  v48 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v46 = v20;
  sub_306C(&v58);
  sub_306C(&v61);
  sub_306C(&v64);
  sub_306C(&v67);
  sub_306C(v52);
  v14[13] = 0xD000000000000011;
  v21 = v39;
  v14[14] = v38;
  v14[2] = v21;
  sub_F338(&v49, (v14 + 3));
  sub_F338(&v46, (v14 + 8));
  sub_306C(v55);
  v39 = sub_1EA600();
  v68 = sub_2CB9E0();
  v69 = &protocol witness table for DeviceProvider;
  sub_F390(&v67);
  sub_2CB9C0();
  sub_2C9A00();
  v62 = v45;
  v63 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v61);
  sub_2CC2A0();
  v59 = v44;
  v60 = &protocol witness table for StringsFileResolver;
  sub_F390(&v58);
  sub_2CC350();
  v22 = v40;
  sub_2CC640();
  sub_BBDC8(v55);
  v23 = sub_F9A0(v55, v56);
  v38 = &v38;
  __chkstk_darwin(v23);
  v25 = (&v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v28 = type metadata accessor for SiriAudioUIAssertionProvider();
  v53 = v28;
  v54 = &off_339240;
  v52[0] = v27;
  type metadata accessor for PlayMediaViewProvider(0);
  v29 = swift_allocObject();
  v30 = sub_F9A0(v52, v28);
  __chkstk_darwin(v30);
  v32 = (&v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v50 = v28;
  v51 = &off_339240;
  *&v49 = v34;
  v29[28] = 0;
  sub_EEAC(&v67, (v29 + 8));
  sub_EEAC(&v64, (v29 + 13));
  sub_EEAC(&v58, &v46);
  v35 = type metadata accessor for PlayMediaAlternativesViewProvider();
  v36 = swift_allocObject();
  sub_F338(&v46, v36 + 16);
  v29[21] = v35;
  v29[22] = &off_33DFA8;
  v29[18] = v36;

  (*(v41 + 8))(v22, v42);
  sub_306C(&v64);
  sub_306C(&v67);
  sub_F338(&v61, (v29 + 23));
  sub_F338(&v58, (v29 + 29));
  v29[2] = v14;
  sub_F338(&v49, (v29 + 3));

  sub_306C(v52);
  sub_306C(v55);
  sub_EEAC(v70, &v67);
  v65 = v45;
  v66 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v64);
  sub_2CC2A0();
  v62 = v44;
  v63 = &protocol witness table for StringsFileResolver;
  sub_F390(&v61);
  sub_2CC350();
  *(a4 + 112) = &off_32F570;

  sub_306C(v43);
  sub_306C(v70);
  strcpy((a4 + 160), "MediaItemType");
  *(a4 + 174) = -4864;
  *(a4 + 16) = v29;
  *(a4 + 24) = v14;
  sub_F338(&v67, a4 + 32);
  sub_F338(&v64, a4 + 72);
  sub_F338(&v61, a4 + 120);
  return a4;
}

uint64_t sub_1EB324(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v7 = sub_2CB4A0();
  v42[3] = v7;
  v42[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v42[0] = a3;
  type metadata accessor for PlayMediaCatDialogService();
  v8 = swift_allocObject();
  v8[6] = 0xEF746E65746E4961;
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000000002DA8D0;
  v25 = 0x80000000002DA8D0;
  v8[4] = a1;
  v8[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  v26 = a1;
  swift_retain_n();

  v24 = sub_2CC2B0();
  v40 = v24;
  v41 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v39);
  sub_2CC2A0();
  v37 = sub_2CC360();
  v38 = &protocol witness table for StringsFileResolver;
  sub_F390(&v36);
  sub_2CC350();
  v35[3] = v7;
  v35[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v35[0] = sub_2CB490();
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v9 = qword_35F900;
  sub_2CBC60();
  v10 = type metadata accessor for DialogHistoryProvider();
  v33[3] = v10;
  v33[4] = &off_33CAE0;
  v33[0] = v9;
  type metadata accessor for PlayMediaDialogProvider(0);
  v11 = swift_allocObject();
  v12 = sub_F9A0(v33, v10);
  __chkstk_darwin(v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v32[3] = v10;
  v32[4] = &off_33CAE0;
  v32[0] = v16;
  v11[15] = v8;
  sub_EEAC(&v39, (v11 + 16));
  sub_EEAC(v35, (v11 + 31));
  sub_EEAC(v32, (v11 + 21));
  sub_EEAC(v34, (v11 + 26));
  sub_EEAC(&v36, v31);

  v17 = sub_2CB490();
  v29 = v7;
  v30 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v28 = v17;
  sub_306C(v34);
  sub_306C(v35);
  sub_306C(&v36);
  sub_306C(&v39);
  sub_306C(v32);
  v11[13] = 0xD000000000000011;
  v18 = v26;
  v11[14] = v25;
  v11[2] = v18;
  sub_F338(v31, (v11 + 3));
  sub_F338(&v28, (v11 + 8));
  sub_306C(v33);
  sub_EEAC(v42, &v39);
  v37 = v24;
  v38 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v36);
  sub_2CC2A0();
  v19 = type metadata accessor for SiriAudioOutputProvider();
  v20 = swift_allocObject();
  sub_F338(&v36, v20 + 16);
  v37 = v19;
  v38 = &off_337EB0;

  *&v36 = v20;
  sub_306C(v27);
  sub_306C(v42);
  v21 = qword_3566B0;
  v22 = sub_2CA360();
  (*(*(v22 - 8) + 56))(a4 + v21, 1, 1, v22);
  *(a4 + 16) = v11;
  sub_F338(&v39, a4 + 24);
  sub_F338(&v36, a4 + 64);
  return a4;
}

uint64_t sub_1EB740()
{
  v0 = sub_2CC650();
  v258 = *(v0 - 8);
  v259 = v0;
  __chkstk_darwin(v0);
  v247 = v228 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v2 - 8);
  v244 = (v228 - v3);
  v4 = sub_2CC360();
  v231 = *(v4 - 8);
  __chkstk_darwin(v4);
  v243 = v228 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CC2B0();
  v249 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v248 = v228 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v245 = v228 - v9;
  v10 = sub_20410(&qword_354B28, &unk_2D7050);
  v234 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v233 = v228 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v228 - v13;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v232 = sub_334A0(0, &qword_354B30, INPlayMediaIntentResponse_ptr);
  sub_2C9780();
  v15 = sub_1EA600();
  sub_2C9A00();
  v16 = sub_2CB4A0();
  v17 = sub_2CB490();
  _s27NeedsDisambiguationStrategyCMa_0(0);
  v18 = swift_allocObject();
  v19 = sub_1EABC4(v15, &v323, v17, v18);

  *&v323 = v19;
  sub_1EE8EC(&qword_354B38, _s27NeedsDisambiguationStrategyCMa_0, &protocol conformance descriptor for MediaItemDisambiguationStrategy<A>);
  sub_2C96A0();

  v260 = v14;
  v261 = v10;
  sub_2C9760();
  v257 = sub_EF10();
  v20 = sub_2CB490();
  v324 = v16;
  v325 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v323 = v20;
  sub_2C9A00();
  v265 = v6;
  v318 = v6;
  v319 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v317);
  sub_2CC2A0();
  v264 = v4;
  v315 = v4;
  v316 = &protocol witness table for StringsFileResolver;
  sub_F390(&v314);
  sub_2CC350();
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v21 = qword_35F900;
  v22 = type metadata accessor for DialogHistoryProvider();
  v313 = &off_33CAE0;
  v312 = v22;
  *&v311 = v21;
  v246 = _s18NeedsValueStrategyCMa_0();
  v241 = swift_allocObject();
  v23 = sub_F9A0(&v311, v22);
  v242 = v228;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v254 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = (v228 - v254);
  v27 = *(v24 + 16);
  v27(v228 - v254);
  v28 = *v26;
  v310 = &off_33CAE0;
  v309 = v22;
  *&v308 = v28;
  v251 = type metadata accessor for PlayMediaCatDialogService();
  v29 = swift_allocObject();
  v262 = 0x80000000002DA8D0;
  v29[2] = 0xD000000000000011;
  v29[3] = 0x80000000002DA8D0;
  v29[5] = 0x6964654D79616C50;
  v29[6] = 0xEF746E65746E4961;
  v30 = v257;
  v29[4] = v257;
  sub_EEAC(&v317, &v305);
  sub_EEAC(&v314, &v302);
  sub_EEAC(&v308, &v299);
  sub_FA14(_swiftEmptyArrayStorage);
  v256 = v21;

  v31 = sub_2CB490();
  v298 = &protocol witness table for SiriKitTaskLoggingProvider;
  v297 = v16;
  *&v296 = v31;
  sub_2CBC60();
  v32 = sub_F9A0(&v299, v300);
  v240 = v228;
  __chkstk_darwin(v32);
  v263 = v16;
  v34 = (v228 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v292 = &off_33CAE0;
  p_Kind = v22;
  *&v290 = v36;
  v250 = type metadata accessor for PlayMediaDialogProvider(0);
  v37 = swift_allocObject();
  v38 = sub_F9A0(&v290, v22);
  v239 = v228;
  v253 = v25;
  __chkstk_darwin(v38);
  v39 = (v228 - v254);
  v40 = v228 - v254;
  v254 = v24 + 16;
  v252 = v27;
  v27(v40);
  v41 = *v39;
  v289 = &off_33CAE0;
  v255 = v22;
  v288 = v22;
  *&v287 = v41;
  v37[15] = v29;
  sub_EEAC(&v305, (v37 + 16));
  sub_EEAC(&v296, (v37 + 31));
  sub_EEAC(&v287, (v37 + 21));
  sub_EEAC(&v293, (v37 + 26));
  sub_EEAC(&v302, &v284);
  v42 = sub_2CB490();
  v283 = &protocol witness table for SiriKitTaskLoggingProvider;
  v282 = v263;
  *&v281 = v42;
  sub_306C(&v293);
  sub_306C(&v302);
  sub_306C(&v305);
  sub_306C(&v320);
  sub_306C(&v314);
  sub_306C(&v317);
  sub_306C(&v308);
  sub_306C(&v296);
  sub_306C(&v287);
  v37[13] = 0xD000000000000011;
  v37[14] = v262;
  v37[2] = v30;
  sub_F338(&v284, (v37 + 3));
  sub_F338(&v281, (v37 + 8));
  sub_306C(&v290);
  sub_306C(&v299);
  v43 = v241;
  v241[2] = v37;
  v44 = v263;
  sub_F338(&v323, (v43 + 3));
  sub_306C(&v311);
  *&v323 = v43;
  sub_1EE8EC(&qword_354B40, _s18NeedsValueStrategyCMa_0, &unk_2D19E0);
  sub_2C9630();

  sub_2C96F0();
  v45 = sub_1EA600();
  sub_2C9A00();
  _s25NeedsConfirmationStrategyCMa_0(0);
  swift_allocObject();
  v46 = sub_12CC28(v45, &v323);

  *&v323 = v46;
  sub_1EE8EC(&qword_354B48, _s25NeedsConfirmationStrategyCMa_0, &unk_2D8300);
  sub_2C9690();

  sub_2C9750();
  v47 = sub_1EA600();
  sub_2C9A00();
  v48 = sub_2CB490();
  _s21ConfirmIntentStrategyCMa_0(0);
  v49 = swift_allocObject();
  v50 = sub_1EB324(v47, &v323, v48, v49);

  *&v323 = v50;
  sub_1EE8EC(&qword_354B50, _s21ConfirmIntentStrategyCMa_0, &unk_2D89E0);
  sub_2C96C0();

  sub_2C9720();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v51 = CATDefaultMode;
  v52 = sub_2CBC00();
  v53 = sub_2CBBF0();
  sub_2C9A00();
  v54 = v245;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v55 = swift_allocObject();
  v321 = &type metadata for StringsBackedAppNameResolver;
  v230 = sub_2869C();
  v322 = v230;
  *&v320 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v320 + 16);
  v318 = v52;
  v319 = &protocol witness table for MorphunProvider;
  *&v317 = v53;
  v56 = v265;
  v315 = v265;
  v316 = &protocol witness table for FeatureFlagProvider;
  v57 = sub_F390(&v314);
  v58 = v249;
  (*(v249 + 16))(v57, v54, v56);
  *(v55 + 296) = v51;
  sub_EEAC(&v314, v55 + 256);
  sub_EEAC(&v320, &v311);
  sub_EEAC(&v317, &v308);
  sub_EEAC(&v323, &v305);
  v304 = 0;
  v302 = 0u;
  v303 = 0u;
  v59 = sub_2CCA30();

  v60 = sub_2CCA20();
  v301 = &protocol witness table for MultiUserConnectionProvider;
  v300 = v59;
  *&v299 = v60;
  v257 = sub_2CB9E0();
  v297 = v257;
  v298 = &protocol witness table for DeviceProvider;
  sub_F390(&v296);
  sub_2CB9C0();
  sub_EEAC(&v311, v55 + 16);
  sub_EEAC(&v308, v55 + 216);
  sub_EEAC(&v305, v55 + 56);
  sub_EEAC(&v299, v55 + 96);
  v246 = v55;
  sub_EEAC(&v296, v55 + 176);
  sub_286F0(&v302, &v290);
  if (p_Kind)
  {

    sub_28760(&v302);
    sub_306C(&v305);
    sub_306C(&v308);
    sub_306C(&v311);
    (*(v58 + 8))(v54, v56);
    sub_306C(&v323);
    sub_306C(&v314);
    sub_306C(&v317);
    sub_306C(&v320);
    sub_306C(&v296);
    sub_306C(&v299);
    sub_F338(&v290, &v293);
  }

  else
  {
    sub_EEAC(&v305, &v293);
    v61 = sub_2C9E60();
    swift_allocObject();
    v62 = sub_2C9E50();
    v294 = v61;
    v295 = &protocol witness table for ContactsManager;

    *&v293 = v62;
    sub_28760(&v302);
    sub_306C(&v305);
    sub_306C(&v308);
    sub_306C(&v311);
    (*(v58 + 8))(v54, v56);
    sub_306C(&v323);
    sub_306C(&v314);
    sub_306C(&v317);
    sub_306C(&v320);
    sub_306C(&v296);
    sub_306C(&v299);
    if (p_Kind)
    {
      sub_28760(&v290);
    }
  }

  v63 = v246;
  sub_F338(&v293, v246 + 136);
  v64 = swift_allocObject();
  v64[6] = 0xEF746E65746E4961;
  v65 = v262;
  v64[2] = 0xD000000000000011;
  v64[3] = v65;
  v64[4] = v63;
  v64[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  sub_2C9A00();
  v321 = v56;
  v322 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v320);
  sub_2CC2A0();
  v318 = v264;
  v319 = &protocol witness table for StringsFileResolver;
  sub_F390(&v317);
  sub_2CC350();
  v66 = sub_2CB490();
  v67 = v44;
  v315 = v44;
  v316 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v314 = v66;
  sub_2CBC60();
  v310 = &off_33CAE0;
  v68 = v255;
  v309 = v255;
  *&v308 = v256;
  v69 = swift_allocObject();
  v70 = sub_F9A0(&v308, v68);
  v242 = v228;
  __chkstk_darwin(v70);
  v72 = (v228 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v252(v72);
  v73 = *v72;
  v307 = &off_33CAE0;
  v306 = v68;
  *&v305 = v73;
  *(v69 + 15) = v64;
  sub_EEAC(&v320, (v69 + 128));
  sub_EEAC(&v314, (v69 + 248));
  sub_EEAC(&v305, (v69 + 168));
  sub_EEAC(&v311, (v69 + 208));
  sub_EEAC(&v317, &v302);

  v74 = sub_2CB490();
  v301 = &protocol witness table for SiriKitTaskLoggingProvider;
  v300 = v67;
  *&v299 = v74;
  sub_306C(&v311);
  sub_306C(&v323);
  sub_306C(&v314);
  sub_306C(&v317);
  sub_306C(&v320);
  sub_306C(&v305);
  *(v69 + 13) = 0xD000000000000011;
  *(v69 + 14) = v65;
  *(v69 + 2) = v63;
  sub_F338(&v302, (v69 + 24));
  sub_F338(&v299, (v69 + 64));
  sub_306C(&v308);

  sub_1EA9EC(&v323);
  v321 = v259;
  v322 = &protocol witness table for SubscriptionProvider;
  sub_F390(&v320);
  sub_2CC640();
  v318 = v264;
  v319 = &protocol witness table for StringsFileResolver;
  sub_F390(&v317);
  sub_2CC350();
  v315 = v265;
  v316 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v314);
  sub_2CC2A0();
  sub_BBDC8(&v311);
  v309 = sub_2CDDF0();
  v310 = &protocol witness table for EncryptionProvider;
  sub_F390(&v308);
  sub_2CDDE0();
  v75 = sub_F9A0(&v323, v324);
  v240 = v228;
  __chkstk_darwin(v75);
  v77 = (v228 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = sub_F9A0(&v311, v312);
  v239 = v228;
  __chkstk_darwin(v79);
  v81 = (v228 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v82 + 16))(v81);
  v83 = *v77;
  v84 = *v81;
  v85 = type metadata accessor for PlayMediaAlternativeSnippetProvider();
  v307 = &off_3399E0;
  v306 = v85;
  *&v305 = v83;
  v86 = type metadata accessor for SiriAudioUIAssertionProvider();
  v304 = &off_339240;
  *(&v303 + 1) = v86;
  *&v302 = v84;
  v241 = type metadata accessor for PlayMediaIOSSnippetModelProvider();
  v87 = swift_allocObject();
  v88 = sub_F9A0(&v305, v85);
  v238 = v228;
  __chkstk_darwin(v88);
  v90 = (v228 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v91 + 16))(v90);
  v92 = sub_F9A0(&v302, *(&v303 + 1));
  __chkstk_darwin(v92);
  v94 = (v228 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v95 + 16))(v94);
  v96 = *v90;
  v97 = *v94;
  v87[5] = v85;
  v87[6] = &off_3399E0;
  v87[2] = v96;
  v242 = v86;
  v87[26] = v86;
  v87[27] = &off_339240;
  v87[23] = v97;
  v245 = v69;
  v87[17] = v69;
  sub_F338(&v320, (v87 + 7));
  sub_F338(&v317, (v87 + 12));
  sub_F338(&v314, (v87 + 18));
  sub_F338(&v308, (v87 + 28));
  sub_306C(&v302);
  sub_306C(&v305);
  sub_306C(&v311);
  sub_306C(&v323);
  v98 = sub_1EA600();
  sub_2CC350();
  sub_2C9A00();
  v321 = v265;
  v322 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v320);
  sub_2CC2A0();
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v99 = sub_2CBF80();
    (*(*(v99 - 8) + 56))(v244, 1, 1, v99);
  }

  v100 = v263;
  v101 = sub_2CB490();
  v318 = v100;
  v319 = &protocol witness table for SiriKitTaskLoggingProvider;
  v102 = v100;
  *&v317 = v101;
  v103 = sub_2CA080();
  swift_allocObject();
  v104 = sub_2CA070();
  v315 = v103;
  v316 = &protocol witness table for ResponseFactory;
  *&v314 = v104;
  v312 = v257;
  v313 = &protocol witness table for DeviceProvider;
  sub_F390(&v311);
  sub_2CB9C0();
  v105 = sub_2CC7A0();
  v106 = sub_2CC790();
  v310 = &protocol witness table for MediaRemoteAPIProvider;
  v309 = v105;
  *&v308 = v106;
  sub_2CBC60();
  v107 = sub_2CDCA0();
  v108 = sub_2CDC90();
  v304 = &protocol witness table for PlaybackController;
  *(&v303 + 1) = v107;
  *&v302 = v108;
  sub_2CA430();
  v109 = sub_2CBC40();
  swift_allocObject();
  v110 = sub_2CBC30();
  v298 = &protocol witness table for AppIntentInvoker;
  v297 = v109;
  *&v296 = v110;
  v295 = &off_33E1F0;
  v294 = v241;
  *&v293 = v87;
  v228[2] = type metadata accessor for PlayMedia.HandleIntentStrategy(0);
  v111 = swift_allocObject();
  v112 = swift_allocObject();
  v112[6] = 0xEF746E65746E4961;
  v112[2] = 0xD000000000000011;
  v112[3] = v262;
  v112[4] = v98;
  v112[5] = 0x6964654D79616C50;
  *(v111 + 16) = v112;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  p_Kind = &v265->Kind;
  v292 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v290);
  sub_2CC2A0();
  v288 = v264;
  v289 = &protocol witness table for StringsFileResolver;
  sub_F390(&v287);
  sub_2CC350();
  v113 = sub_2CB490();
  v286 = &protocol witness table for SiriKitTaskLoggingProvider;
  v285 = v102;
  v114 = v102;
  *&v284 = v113;
  sub_2CBC60();
  v280 = &off_33CAE0;
  v115 = v255;
  v279 = v255;
  *&v278 = v256;
  v236 = v98;
  v116 = swift_allocObject();
  v117 = sub_F9A0(&v278, v115);
  v241 = v228;
  __chkstk_darwin(v117);
  v229 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = (v228 - v229);
  v252((v228 - v229));
  v120 = *v119;
  v277 = &off_33CAE0;
  v276 = v115;
  v275[0] = v120;
  v116[15] = v112;
  sub_EEAC(&v290, (v116 + 16));
  sub_EEAC(&v284, (v116 + 31));
  sub_EEAC(v275, (v116 + 21));
  sub_EEAC(&v281, (v116 + 26));
  sub_EEAC(&v287, &v272);

  v121 = sub_2CB490();
  v270 = v114;
  v271 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v269 = v121;
  sub_306C(&v281);
  sub_306C(&v284);
  sub_306C(&v287);
  sub_306C(&v290);
  sub_306C(v275);
  v116[13] = 0xD000000000000011;
  v116[14] = v262;
  v116[2] = v98;
  sub_F338(&v272, (v116 + 3));
  sub_F338(&v269, (v116 + 8));
  sub_306C(&v278);
  *(v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider) = v116;
  sub_EEAC(&v323, &v290);
  sub_EEAC(&v320, &v287);
  v285 = v257;
  v286 = &protocol witness table for DeviceProvider;
  sub_F390(&v284);

  sub_2CB9C0();
  v122 = v264;
  v282 = v264;
  v283 = &protocol witness table for StringsFileResolver;
  sub_F390(&v281);
  sub_2CC350();
  v123 = v247;
  sub_2CC640();
  sub_BBDC8(&v278);
  v124 = sub_F9A0(&v278, v279);
  v228[1] = v228;
  __chkstk_darwin(v124);
  v126 = (v228 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v127 + 16))(v126);
  v128 = *v126;
  v277 = &off_339240;
  v129 = v242;
  v276 = v242;
  v275[0] = v128;
  v241 = type metadata accessor for PlayMediaViewProvider(0);
  v130 = swift_allocObject();
  v131 = sub_F9A0(v275, v129);
  v239 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v131);
  v240 = ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = (v228 - v240);
  v135 = *(v134 + 16);
  v237 = v134 + 16;
  v238 = v135;
  v135(v228 - v240);
  v136 = *v133;
  v273 = v129;
  v274 = &off_339240;
  *&v272 = v136;
  v130[28] = 0;
  sub_EEAC(&v284, (v130 + 8));
  sub_EEAC(&v290, (v130 + 13));
  sub_EEAC(&v281, &v269);
  v137 = type metadata accessor for PlayMediaAlternativesViewProvider();
  v235 = v137;
  v138 = swift_allocObject();
  sub_F338(&v269, v138 + 16);
  v130[21] = v137;
  v130[22] = &off_33DFA8;
  v130[18] = v138;

  v139 = *(v258 + 8);
  v258 += 8;
  v236 = v139;
  v139(v123, v259);
  sub_306C(&v290);
  sub_306C(&v299);
  sub_306C(&v323);
  (*(v231 + 8))(v243, v122);
  sub_306C(&v284);
  sub_F338(&v287, (v130 + 23));
  sub_F338(&v281, (v130 + 29));
  v130[2] = v116;
  sub_F338(&v272, (v130 + 3));
  sub_306C(v275);
  sub_306C(&v278);
  *(v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaViewProvider) = v130;
  sub_F338(&v320, v111 + 24);
  sub_1EE87C(v244, v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_appSelectionReport);
  sub_F338(&v317, v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider);
  sub_F338(&v314, v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory);
  sub_F338(&v293, v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider);
  sub_F338(&v311, v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider);
  sub_F338(&v308, v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_mediaRemoteAPIProvider);
  sub_F338(&v305, v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider);
  sub_F338(&v302, v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playbackController);
  sub_F338(&v296, v111 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_appIntentInvoker);
  *&v323 = v111;
  sub_1EE8EC(&qword_354B58, type metadata accessor for PlayMedia.HandleIntentStrategy, &protocol conformance descriptor for PlayMedia.HandleIntentStrategy);
  sub_2C9640();

  sub_2C9700();
  v140 = v245;
  swift_retain_n();
  sub_1EA600();
  v141 = v257;
  v324 = v257;
  v325 = &protocol witness table for DeviceProvider;
  sub_F390(&v323);
  sub_2CB9C0();
  sub_2C9A00();
  v318 = &v265->Kind;
  v319 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v317);
  sub_2CC2A0();
  v315 = v122;
  v316 = &protocol witness table for StringsFileResolver;
  sub_F390(&v314);
  sub_2CC350();
  v142 = v123;
  sub_2CC640();
  sub_BBDC8(&v311);
  v143 = sub_F9A0(&v311, v312);
  v244 = v228;
  __chkstk_darwin(v143);
  v145 = (v228 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v146 + 16))(v145);
  v147 = *v145;
  v310 = &off_339240;
  v309 = v129;
  *&v308 = v147;
  v148 = swift_allocObject();
  v149 = sub_F9A0(&v308, v129);
  __chkstk_darwin(v149);
  v150 = (v228 - v240);
  v238(v228 - v240);
  v151 = *v150;
  v307 = &off_339240;
  v306 = v129;
  *&v305 = v151;
  v148[28] = 0;
  sub_EEAC(&v323, (v148 + 8));
  sub_EEAC(&v320, (v148 + 13));
  sub_EEAC(&v314, &v302);
  v152 = v235;
  v153 = swift_allocObject();
  sub_F338(&v302, v153 + 16);
  v148[21] = v152;
  v148[22] = &off_33DFA8;

  v148[18] = v153;
  v154 = v142;
  v155 = v259;
  v236(v154, v259);
  sub_306C(&v320);
  sub_306C(&v323);
  sub_F338(&v317, (v148 + 23));
  sub_F338(&v314, (v148 + 29));
  v148[2] = v140;
  v156 = v140;
  sub_F338(&v305, (v148 + 3));
  sub_306C(&v308);
  sub_306C(&v311);
  v157 = sub_2CC5C0();
  v158 = sub_2CC5B0();
  v307 = &protocol witness table for PlayMediaAppSelector;
  v306 = v157;
  *&v305 = v158;
  *(&v303 + 1) = &type metadata for StringsBackedAppNameResolver;
  v159 = v230;
  v304 = v230;
  *&v302 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v302 + 16);
  v300 = v141;
  v301 = &protocol witness table for DeviceProvider;
  sub_F390(&v299);
  sub_2CB9C0();
  v160 = v265;
  v297 = v265;
  v298 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v296);
  sub_2CC2A0();
  v294 = sub_2CC810();
  v295 = &protocol witness table for UserPreferenceProvider;
  sub_F390(&v293);
  sub_2CC800();
  p_Kind = &v155->Kind;
  v292 = &protocol witness table for SubscriptionProvider;
  sub_F390(&v290);
  sub_2CC640();
  v288 = sub_2CC590();
  v289 = &protocol witness table for InstalledAppProvider;
  sub_F390(&v287);
  sub_2CC580();
  v161 = sub_2CBED0();
  v162 = sub_2CBEC0();
  v286 = &protocol witness table for MediaPlaybackLite;
  v285 = v161;
  *&v284 = v162;
  v163 = sub_2CB780();
  sub_2CBC60();
  v279 = sub_2CC040();
  v280 = &protocol witness table for NowPlayingProvider;
  sub_F390(&v278);
  sub_2CC030();
  v276 = sub_2CB7A0();
  v277 = &protocol witness table for TCCProvider;
  sub_F390(v275);
  sub_2CB790();
  type metadata accessor for PlayMediaAppResolver(0);
  v164 = swift_allocObject();
  sub_EEAC(&v305, v164 + qword_350440);
  sub_EEAC(&v290, v164 + qword_350448);
  sub_EEAC(&v284, v164 + qword_350450);
  v165 = (v164 + qword_350470);
  *v165 = v163;
  v165[1] = &protocol witness table for SelfEmitter;
  sub_EEAC(&v281, v164 + qword_350458);
  sub_EEAC(&v278, v164 + qword_350460);
  sub_EEAC(v275, v164 + qword_350468);
  sub_EEAC(&v302, &v272);
  sub_EEAC(&v299, &v269);
  sub_EEAC(&v296, v268);
  sub_EEAC(&v293, v267);
  sub_EEAC(&v287, v266);
  v166 = class metadata base offset for CommonAppResolver;
  v167 = v164 + *(*v164 + class metadata base offset for CommonAppResolver + 8);
  strcpy(v167, "resolutionType");
  v167[15] = -18;
  sub_EEAC(&v272, v164 + *(*v164 + v166 + 16));
  sub_EEAC(&v269, v164 + *(*v164 + class metadata base offset for CommonAppResolver + 24));
  sub_EEAC(v268, v164 + *(*v164 + class metadata base offset for CommonAppResolver + 32));
  sub_EEAC(v267, v164 + *(*v164 + class metadata base offset for CommonAppResolver + 40));
  sub_EEAC(v266, v164 + *(*v164 + class metadata base offset for CommonAppResolver + 48));
  v168 = sub_2CCF50();
  sub_306C(v266);
  sub_306C(v267);
  sub_306C(v268);
  sub_306C(&v269);
  sub_306C(&v272);
  sub_306C(&v281);
  sub_306C(v275);
  sub_306C(&v278);
  sub_306C(&v284);
  sub_306C(&v287);
  sub_306C(&v290);
  sub_306C(&v293);
  sub_306C(&v296);
  sub_306C(&v299);
  sub_306C(&v302);
  sub_306C(&v305);
  sub_2C9A00();
  *(&v303 + 1) = &type metadata for StringsBackedAppNameResolver;
  v304 = v159;
  *&v302 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v302 + 16);
  v300 = v160;
  v301 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v299);
  sub_2CC2A0();
  v297 = v160;
  v298 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v296);
  sub_2CC2A0();
  v169 = type metadata accessor for SiriAudioOutputProvider();
  v170 = swift_allocObject();
  sub_F338(&v296, v170 + 16);
  v298 = &off_337EB0;
  v297 = v169;
  *&v296 = v170;
  swift_setDeallocating();

  sub_1204FC();
  sub_20410(&qword_354B60, &unk_2D7060);
  v171 = swift_allocObject();
  v171[26] = 0;
  v171[2] = v168;
  v171[3] = v156;
  v171[4] = sub_107D74;
  v171[5] = 0;
  sub_F338(&v305, (v171 + 6));
  sub_F338(&v302, (v171 + 11));
  sub_F338(&v299, (v171 + 16));
  sub_F338(&v296, (v171 + 21));
  *&v323 = v171;
  sub_72068(&qword_354B68, &qword_354B60, &unk_2D7060, &unk_2D7C94);
  sub_2C9660();

  sub_2C9710();
  *&v323 = sub_10D758(v156);
  sub_20410(&qword_3515C8, &unk_2D4570);
  sub_72068(&qword_354B70, &qword_3515C8, &unk_2D4570, &unk_2D2FD8);
  sub_2C96B0();

  sub_2C9770();
  v244 = sub_1EA600();
  sub_2C9A00();
  v172 = sub_2CBB70();
  v173 = sub_2CBB60();
  v321 = v172;
  v322 = &protocol witness table for AccountProvider;
  *&v320 = v173;
  v174 = v263;
  v175 = sub_2CB490();
  v318 = v174;
  v319 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v317 = v175;
  v176 = v265;
  v315 = v265;
  v316 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v314);
  sub_2CC2A0();
  v177 = swift_allocObject();
  sub_F338(&v314, v177 + 16);
  sub_2CA430();
  sub_2CC2A0();
  v178 = v264;
  v312 = v264;
  v313 = &protocol witness table for StringsFileResolver;
  sub_F390(&v311);
  sub_2CC350();
  v179 = type metadata accessor for PlayMediaUnsupportedValueSnippetProvider();
  v180 = swift_allocObject();
  *(v180 + 56) = 0xD000000000000022;
  *(v180 + 64) = 0x80000000002DF170;
  sub_F338(&v311, v180 + 16);
  v313 = &off_337EB0;
  v312 = v169;
  *&v311 = v177;
  v310 = &off_334F38;
  v309 = v179;
  *&v308 = v180;
  v243 = type metadata accessor for PlayMedia.UnsupportedValueStrategy(0);
  v181 = swift_allocObject();
  v182 = sub_F9A0(&v311, v169);
  v232 = v228;
  __chkstk_darwin(v182);
  v184 = (v228 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = *(v185 + 16);
  v231 = v169;
  v186(v184);
  v187 = sub_F9A0(&v308, v309);
  v230 = v228;
  __chkstk_darwin(v187);
  v189 = (v228 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v190 + 16))(v189);
  v191 = *v184;
  v192 = *v189;
  v307 = &off_337EB0;
  v306 = v169;
  *&v305 = v191;
  v304 = &off_334F38;
  *(&v303 + 1) = v179;
  *&v302 = v192;
  v193 = swift_allocObject();
  v193[6] = 0xEF746E65746E4961;
  v194 = v262;
  v193[2] = 0xD000000000000011;
  v193[3] = v194;
  v193[4] = v244;
  v193[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v300 = v176;
  v301 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v299);
  sub_2CC2A0();
  v297 = v178;
  v298 = &protocol witness table for StringsFileResolver;
  sub_F390(&v296);
  sub_2CC350();
  v195 = v263;
  v196 = sub_2CB490();
  v295 = &protocol witness table for SiriKitTaskLoggingProvider;
  v294 = v195;
  *&v293 = v196;
  sub_2CBC60();
  v289 = &off_33CAE0;
  v197 = v255;
  v288 = v255;
  *&v287 = v256;
  v198 = swift_allocObject();
  v199 = sub_F9A0(&v287, v197);
  v251 = v228;
  __chkstk_darwin(v199);
  v200 = (v228 - v229);
  v252((v228 - v229));
  v201 = *v200;
  v286 = &off_33CAE0;
  v285 = v197;
  *&v284 = v201;
  v198[15] = v193;
  sub_EEAC(&v299, (v198 + 16));
  sub_EEAC(&v293, (v198 + 31));
  sub_EEAC(&v284, (v198 + 21));
  sub_EEAC(&v290, (v198 + 26));
  sub_EEAC(&v296, &v281);

  v202 = sub_2CB490();
  v280 = &protocol witness table for SiriKitTaskLoggingProvider;
  v279 = v195;
  *&v278 = v202;
  sub_306C(&v290);
  sub_306C(&v293);
  sub_306C(&v296);
  sub_306C(&v299);
  sub_306C(&v284);
  v198[13] = 0xD000000000000011;
  v198[14] = v194;
  v198[2] = v244;
  sub_F338(&v281, (v198 + 3));
  sub_F338(&v278, (v198 + 8));
  sub_306C(&v287);
  v181[2] = v198;
  sub_EEAC(&v323, &v299);
  v297 = v257;
  v298 = &protocol witness table for DeviceProvider;
  sub_F390(&v296);

  sub_2CB9C0();
  v294 = v265;
  v295 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v293);
  sub_2CC2A0();
  p_Kind = v264;
  v292 = &protocol witness table for StringsFileResolver;
  sub_F390(&v290);
  sub_2CC350();
  v203 = v247;
  sub_2CC640();
  sub_BBDC8(&v287);
  v204 = sub_F9A0(&v287, v288);
  v264 = v228;
  __chkstk_darwin(v204);
  v206 = (v228 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v207 + 16))(v206);
  v208 = *v206;
  v286 = &off_339240;
  v209 = v242;
  v285 = v242;
  *&v284 = v208;
  v210 = swift_allocObject();
  v211 = sub_F9A0(&v284, v209);
  __chkstk_darwin(v211);
  v212 = (v228 - v240);
  v238(v228 - v240);
  v213 = *v212;
  v283 = &off_339240;
  v282 = v209;
  *&v281 = v213;
  v210[28] = 0;
  sub_EEAC(&v296, (v210 + 8));
  sub_EEAC(&v299, (v210 + 13));
  sub_EEAC(&v290, &v278);
  v214 = v235;
  v215 = swift_allocObject();
  sub_F338(&v278, v215 + 16);
  v210[21] = v214;
  v210[22] = &off_33DFA8;
  v210[18] = v215;

  v236(v203, v259);
  sub_306C(&v299);
  sub_306C(&v296);
  sub_F338(&v293, (v210 + 23));
  sub_F338(&v290, (v210 + 29));
  v210[2] = v198;
  sub_F338(&v281, (v210 + 3));
  sub_306C(&v284);
  sub_306C(&v287);
  v181[3] = v210;
  sub_EEAC(&v323, (v181 + 4));
  sub_2CB5B0();
  sub_2C9C10();
  swift_allocObject();
  v216 = sub_2C9BF0();

  sub_306C(&v323);
  v181[9] = v216;
  sub_F338(&v320, (v181 + 10));
  sub_F338(&v317, (v181 + 15));
  sub_F338(&v305, (v181 + 20));
  sub_F338(&v314, (v181 + 25));
  v217 = v265;
  (*(v249 + 32))(v181 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_featureFlagProvider, v248, v265);
  sub_F338(&v302, v181 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider);
  sub_306C(&v308);
  sub_306C(&v311);
  *&v323 = v181;
  sub_1EE8EC(&qword_354B78, type metadata accessor for PlayMedia.UnsupportedValueStrategy, &protocol conformance descriptor for PlayMedia.UnsupportedValueStrategy);
  sub_2C96D0();

  v218 = v260;
  v219 = v261;
  sub_2C9740();
  v324 = v217;
  v325 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v323);
  sub_2CC2A0();
  v220 = v231;
  v221 = swift_allocObject();
  sub_F338(&v323, v221 + 16);
  v324 = v220;
  v325 = &off_337EB0;
  *&v323 = v221;
  sub_20410(&qword_354B80, &qword_2D7070);
  v222 = swift_allocObject();
  v222[8] = 0xD000000000000025;
  v222[9] = 0x80000000002DA520;
  v222[10] = 0x7461447475706E69;
  v222[11] = 0xE900000000000061;
  v222[2] = v245;
  sub_F338(&v323, (v222 + 3));
  *&v323 = v222;
  sub_72068(&qword_354B88, &qword_354B80, &qword_2D7070, &unk_2D0918);
  sub_2C9680();

  v223 = v219;
  sub_2C9730();
  v224 = v234;
  v225 = v218;
  (*(v234 + 16))(v233, v218, v223);
  sub_20410(&qword_354B90, &qword_2D7078);
  swift_allocObject();
  v226 = sub_2C96E0();

  (*(v224 + 8))(v225, v223);
  return v226;
}

uint64_t sub_1EE87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1EE8EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1EE938(uint64_t a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v2 - 8);
  v154 = &v135[-v3];
  v4 = sub_2CE000();
  v164 = *(v4 - 8);
  v165 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v135[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v135[-v9];
  v11 = __chkstk_darwin(v8);
  v143 = &v135[-v12];
  __chkstk_darwin(v11);
  v153 = &v135[-v13];
  v14 = sub_2CD4C0();
  v161 = *(v14 - 8);
  __chkstk_darwin(v14);
  v151 = &v135[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v16 = __chkstk_darwin(v162);
  v145 = &v135[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v160 = &v135[-v19];
  v20 = __chkstk_darwin(v18);
  v158 = &v135[-v21];
  __chkstk_darwin(v20);
  v159 = &v135[-v22];
  v23 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v24 = __chkstk_darwin(v23 - 8);
  v142 = &v135[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v147 = &v135[-v27];
  v28 = __chkstk_darwin(v26);
  v148 = &v135[-v29];
  v30 = __chkstk_darwin(v28);
  v144 = &v135[-v31];
  v32 = __chkstk_darwin(v30);
  v152 = &v135[-v33];
  v34 = __chkstk_darwin(v32);
  v149 = &v135[-v35];
  v36 = __chkstk_darwin(v34);
  v146 = &v135[-v37];
  v38 = __chkstk_darwin(v36);
  v156 = &v135[-v39];
  v40 = __chkstk_darwin(v38);
  v157 = &v135[-v41];
  v42 = __chkstk_darwin(v40);
  v150 = &v135[-v43];
  v44 = __chkstk_darwin(v42);
  v46 = &v135[-v45];
  __chkstk_darwin(v44);
  v48 = &v135[-v47];
  v49 = sub_2CA870();
  v50 = *(v49 - 8);
  v51 = __chkstk_darwin(v49);
  v53 = &v135[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v51);
  v55 = &v135[-v54];
  v163 = a1;
  sub_2CA790();
  v56 = (*(v50 + 88))(v55, v49);
  if (v56 != enum case for Parse.NLv3IntentOnly(_:) && v56 != enum case for Parse.uso(_:))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v57 = v165;
    v58 = sub_3ED0(v165, static Logger.default);
    swift_beginAccess();
    v59 = v164;
    (*(v164 + 16))(v7, v58, v57);
    v60 = sub_2CDFE0();
    v61 = sub_2CE680();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "AmbiguousDetermineFlow#on received non NLv3IntentOnly or Uso parse", v62, 2u);
    }

    (*(v59 + 8))(v7, v57);
    (*(v50 + 8))(v55, v49);
    return 0;
  }

  v63 = *(v50 + 8);
  v63(v55, v49);
  sub_2CA790();
  v64 = sub_D2F98(v53, &v166);
  (v63)(v53, v49, v64);
  if (!v167)
  {
    sub_30B8(&v166, &qword_34CF98, &unk_2D1A40);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v73 = v165;
    v74 = sub_3ED0(v165, static Logger.default);
    swift_beginAccess();
    v75 = v164;
    (*(v164 + 16))(v10, v74, v73);
    v76 = sub_2CDFE0();
    v77 = sub_2CE680();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "AmbiguousDetermineFlow#on received unsupported NLv3IntentOnly, USO parse", v78, 2u);
    }

    (*(v75 + 8))(v10, v73);
    return 0;
  }

  sub_420A4(&v166, &v168);
  sub_35E0(&v168, v169);
  sub_2CD840();
  v65 = v161;
  v139 = *(v161 + 104);
  v137 = v161 + 104;
  v139(v46, enum case for CommonAudio.Verb.determine(_:), v14);
  v66 = *(v65 + 56);
  v140 = v65 + 56;
  v138 = v66;
  v66(v46, 0, 1, v14);
  v67 = *(v162 + 48);
  v68 = v159;
  sub_F3F4(v48, v159, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v46, &v68[v67], &qword_34D6B8, &qword_2D15B0);
  v69 = *(v65 + 48);
  v70 = v69(v68, 1, v14);
  v141 = v69;
  if (v70 != 1)
  {
    v80 = v150;
    sub_F3F4(v68, v150, &qword_34D6B8, &qword_2D15B0);
    if (v69(&v68[v67], 1, v14) != 1)
    {
      v94 = v161;
      v95 = v151;
      (*(v161 + 32))(v151, &v68[v67], v14);
      sub_1F6A64();
      v136 = sub_2CE250();
      v96 = v80;
      v97 = *(v94 + 8);
      v97(v95, v14);
      sub_30B8(v46, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v48, &qword_34D6B8, &qword_2D15B0);
      v97(v96, v14);
      sub_30B8(v68, &qword_34D6B8, &qword_2D15B0);
      v72 = v164;
      v71 = v165;
      v81 = v160;
      if (v136)
      {
        goto LABEL_39;
      }

LABEL_21:
      sub_35E0(&v168, v169);
      v82 = v157;
      sub_2CD840();
      v83 = v156;
      v139(v156, enum case for CommonAudio.Verb.directedAcousticId(_:), v14);
      v138(v83, 0, 1, v14);
      v84 = *(v162 + 48);
      v85 = v158;
      sub_F3F4(v82, v158, &qword_34D6B8, &qword_2D15B0);
      sub_F3F4(v83, &v85[v84], &qword_34D6B8, &qword_2D15B0);
      v86 = v141;
      if (v141(v85, 1, v14) == 1)
      {
        sub_30B8(v83, &qword_34D6B8, &qword_2D15B0);
        v85 = v158;
        sub_30B8(v82, &qword_34D6B8, &qword_2D15B0);
        v87 = v86(&v85[v84], 1, v14);
        v71 = v165;
        if (v87 == 1)
        {
          v68 = v85;
          goto LABEL_38;
        }
      }

      else
      {
        v88 = v146;
        sub_F3F4(v85, v146, &qword_34D6B8, &qword_2D15B0);
        if (v86(&v85[v84], 1, v14) != 1)
        {
          v113 = v85;
          v114 = v161;
          v115 = v113 + v84;
          v116 = v151;
          (*(v161 + 32))(v151, v115, v14);
          sub_1F6A64();
          LODWORD(v164) = sub_2CE250();
          v117 = *(v114 + 8);
          v117(v116, v14);
          sub_30B8(v156, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v157, &qword_34D6B8, &qword_2D15B0);
          v117(v88, v14);
          v89 = v149;
          v81 = v160;
          sub_30B8(v113, &qword_34D6B8, &qword_2D15B0);
          v71 = v165;
          if (v164)
          {
            goto LABEL_39;
          }

LABEL_27:
          sub_35E0(&v168, v169);
          sub_2CD840();
          v90 = v152;
          v139(v152, enum case for CommonAudio.Verb.summarise(_:), v14);
          v138(v90, 0, 1, v14);
          v91 = *(v162 + 48);
          sub_F3F4(v89, v81, &qword_34D6B8, &qword_2D15B0);
          sub_F3F4(v90, &v81[v91], &qword_34D6B8, &qword_2D15B0);
          v92 = v141;
          if (v141(v81, 1, v14) == 1)
          {
            sub_30B8(v90, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v89, &qword_34D6B8, &qword_2D15B0);
            v93 = v92(&v81[v91], 1, v14);
            v71 = v165;
            if (v93 == 1)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v98 = v144;
            sub_F3F4(v81, v144, &qword_34D6B8, &qword_2D15B0);
            if (v92(&v81[v91], 1, v14) != 1)
            {
              v124 = v89;
              v125 = v161;
              v126 = &v81[v91];
              v127 = v151;
              (*(v161 + 32))(v151, v126, v14);
              sub_1F6A64();
              v128 = sub_2CE250();
              v129 = *(v125 + 8);
              v129(v127, v14);
              sub_30B8(v152, &qword_34D6B8, &qword_2D15B0);
              sub_30B8(v124, &qword_34D6B8, &qword_2D15B0);
              v129(v98, v14);
              sub_30B8(v160, &qword_34D6B8, &qword_2D15B0);
              v71 = v165;
              if (v128)
              {
                goto LABEL_39;
              }

LABEL_35:
              sub_35E0(&v168, v169);
              v99 = v148;
              sub_2CD840();
              v100 = v147;
              v139(v147, enum case for CommonAudio.Verb.request(_:), v14);
              v138(v100, 0, 1, v14);
              v101 = *(v162 + 48);
              v81 = v145;
              sub_F3F4(v99, v145, &qword_34D6B8, &qword_2D15B0);
              sub_F3F4(v100, &v81[v101], &qword_34D6B8, &qword_2D15B0);
              v102 = v141;
              if (v141(v81, 1, v14) == 1)
              {
                sub_30B8(v100, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v99, &qword_34D6B8, &qword_2D15B0);
                if (v102(&v81[v101], 1, v14) == 1)
                {
LABEL_37:
                  v68 = v81;
                  goto LABEL_38;
                }
              }

              else
              {
                v118 = v142;
                sub_F3F4(v81, v142, &qword_34D6B8, &qword_2D15B0);
                if (v102(&v81[v101], 1, v14) != 1)
                {
                  v130 = v161;
                  v131 = &v81[v101];
                  v132 = v151;
                  (*(v161 + 32))(v151, v131, v14);
                  sub_1F6A64();
                  v133 = sub_2CE250();
                  v134 = *(v130 + 8);
                  v134(v132, v14);
                  sub_30B8(v147, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v148, &qword_34D6B8, &qword_2D15B0);
                  v134(v118, v14);
                  sub_30B8(v81, &qword_34D6B8, &qword_2D15B0);
                  if (v133)
                  {
                    goto LABEL_39;
                  }

LABEL_49:
                  if (qword_34BF58 != -1)
                  {
                    swift_once();
                  }

                  v119 = sub_3ED0(v71, static Logger.default);
                  swift_beginAccess();
                  v120 = v143;
                  (*(v72 + 16))(v143, v119, v71);
                  v121 = sub_2CDFE0();
                  v122 = sub_2CE680();
                  if (os_log_type_enabled(v121, v122))
                  {
                    v123 = swift_slowAlloc();
                    *v123 = 0;
                    _os_log_impl(&dword_0, v121, v122, "AmbiguousDetermineFlow#on received non-determine verb", v123, 2u);
                  }

                  (*(v72 + 8))(v120, v71);
                  sub_306C(&v168);
                  return 0;
                }

                sub_30B8(v147, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v148, &qword_34D6B8, &qword_2D15B0);
                (*(v161 + 8))(v118, v14);
              }

              sub_30B8(v81, &qword_34D6B0, &unk_2D4FC0);
              goto LABEL_49;
            }

            sub_30B8(v152, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v89, &qword_34D6B8, &qword_2D15B0);
            (*(v161 + 8))(v98, v14);
            v71 = v165;
          }

          sub_30B8(v81, &qword_34D6B0, &unk_2D4FC0);
          goto LABEL_35;
        }

        sub_30B8(v156, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v157, &qword_34D6B8, &qword_2D15B0);
        (*(v161 + 8))(v88, v14);
      }

      sub_30B8(v85, &qword_34D6B0, &unk_2D4FC0);
      v89 = v149;
      goto LABEL_27;
    }

    sub_30B8(v46, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v48, &qword_34D6B8, &qword_2D15B0);
    (*(v161 + 8))(v80, v14);
LABEL_20:
    sub_30B8(v68, &qword_34D6B0, &unk_2D4FC0);
    v72 = v164;
    v81 = v160;
    goto LABEL_21;
  }

  sub_30B8(v46, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v48, &qword_34D6B8, &qword_2D15B0);
  if (v69(&v68[v67], 1, v14) != 1)
  {
    goto LABEL_20;
  }

  v72 = v164;
  v71 = v165;
LABEL_38:
  sub_30B8(v68, &qword_34D6B8, &qword_2D15B0);
LABEL_39:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v103 = sub_3ED0(v71, static Logger.default);
  swift_beginAccess();
  v104 = v153;
  (*(v72 + 16))(v153, v103, v71);
  v105 = sub_2CDFE0();
  v106 = sub_2CE670();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_0, v105, v106, "AmbiguousDetermineFlow#on Handling input", v107, 2u);
  }

  (*(v72 + 8))(v104, v71);
  v108 = sub_2CA7B0();
  v109 = *(v108 - 8);
  v110 = v154;
  (*(v109 + 16))(v154, v163, v108);
  (*(v109 + 56))(v110, 0, 1, v108);
  v111 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
  v112 = v155;
  swift_beginAccess();
  sub_A4888(v110, v112 + v111);
  swift_endAccess();
  sub_306C(&v168);
  return 1;
}

uint64_t sub_1EFFEC(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v327 = a2;
  v326 = a1;
  v325 = sub_2C9EC0();
  v324 = *(v325 - 8);
  __chkstk_darwin(v325);
  v323 = &v266 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v5 - 8);
  v301 = &v266 - v6;
  v7 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v7 - 8);
  v302 = &v266 - v8;
  v9 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v9 - 8);
  v303 = &v266 - v10;
  v316 = sub_2CB970();
  v311 = *(v316 - 8);
  __chkstk_darwin(v316);
  v310 = &v266 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_2CCB20();
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v292 = &v266 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_2CCB30();
  v308 = *(v309 - 8);
  __chkstk_darwin(v309);
  v305 = &v266 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = sub_2CCAC0();
  v306 = *(v307 - 8);
  __chkstk_darwin(v307);
  v300 = &v266 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_2CD500();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v266 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_2CD4C0();
  v317 = *(v319 - 8);
  __chkstk_darwin(v319);
  v286 = &v266 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v17 = __chkstk_darwin(v318);
  v282 = &v266 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v289 = &v266 - v20;
  v21 = __chkstk_darwin(v19);
  v290 = &v266 - v22;
  __chkstk_darwin(v21);
  v304 = &v266 - v23;
  v279 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v24 = __chkstk_darwin(v279);
  v278 = &v266 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v276 = &v266 - v27;
  v28 = __chkstk_darwin(v26);
  v284 = &v266 - v29;
  v30 = __chkstk_darwin(v28);
  v281 = &v266 - v31;
  v32 = __chkstk_darwin(v30);
  v280 = &v266 - v33;
  v34 = __chkstk_darwin(v32);
  v312 = &v266 - v35;
  v36 = __chkstk_darwin(v34);
  v287 = &v266 - v37;
  v38 = __chkstk_darwin(v36);
  v283 = &v266 - v39;
  v40 = __chkstk_darwin(v38);
  v298 = &v266 - v41;
  v42 = __chkstk_darwin(v40);
  v299 = &v266 - v43;
  v44 = __chkstk_darwin(v42);
  v285 = &v266 - v45;
  v46 = __chkstk_darwin(v44);
  v313 = &v266 - v47;
  __chkstk_darwin(v46);
  v314 = &v266 - v48;
  v328 = sub_2CE000();
  v329 = *(v328 - 8);
  v49 = __chkstk_darwin(v328);
  v322 = (&v266 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __chkstk_darwin(v49);
  v315 = &v266 - v52;
  v53 = __chkstk_darwin(v51);
  v288 = &v266 - v54;
  v55 = __chkstk_darwin(v53);
  v277 = &v266 - v56;
  v57 = __chkstk_darwin(v55);
  v275 = &v266 - v58;
  v59 = __chkstk_darwin(v57);
  v291 = &v266 - v60;
  __chkstk_darwin(v59);
  v320 = &v266 - v61;
  v62 = sub_2CA7B0();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v65 = &v266 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v66 - 8);
  v68 = &v266 - v67;
  v69 = sub_2CA870();
  v321 = *(v69 - 8);
  v70 = __chkstk_darwin(v69);
  v72 = &v266 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v70);
  v75 = &v266 - v74;
  __chkstk_darwin(v73);
  v77 = &v266 - v76;
  v78 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
  swift_beginAccess();
  v79 = v3 + v78;
  v80 = v3;
  sub_F3F4(v79, v68, &qword_34E480, &qword_2D2280);
  if ((*(v63 + 48))(v68, 1, v62))
  {
    sub_30B8(v68, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v81 = v328;
    v82 = sub_3ED0(v328, static Logger.default);
    swift_beginAccess();
    v83 = v329;
    v84 = v322;
    (*(v329 + 16))(v322, v82, v81);
    v85 = sub_2CDFE0();
    v86 = sub_2CE680();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "AmbiguousDetermineFlow#execute Parse is nil", v87, 2u);
    }

    (*(v83 + 8))(v84, v81);
    v88 = v323;
    sub_2C9EB0();
    v326(v88);
    return (v324[1])(v88, v325);
  }

  v90 = v320;
  v322 = v80;
  (*(v63 + 16))(v65, v68, v62);
  sub_30B8(v68, &qword_34E480, &qword_2D2280);
  sub_2CA790();
  (*(v63 + 8))(v65, v62);
  v91 = v321;
  (*(v321 + 32))(v77, v75, v69);
  (*(v91 + 16))(v72, v77, v69);
  v92 = (*(v91 + 88))(v72, v69);
  v93 = v69;
  v94 = v72;
  if (v92 != enum case for Parse.NLv3IntentOnly(_:) && v92 != enum case for Parse.uso(_:))
  {
    v95 = v328;
    v96 = v329;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v97 = sub_3ED0(v95, static Logger.default);
    swift_beginAccess();
    v98 = v315;
    (*(v96 + 16))(v315, v97, v95);
    v99 = sub_2CDFE0();
    v100 = sub_2CE680();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_0, v99, v100, "AmbiguousDetermineFlow#execute received non NLv3IntentOnly or Uso parse", v101, 2u);
    }

    (*(v96 + 8))(v98, v95);
    v102 = v323;
    sub_2C9EB0();
    v326(v102);
    (v324[1])(v102, v325);
    v103 = *(v91 + 8);
    v103(v77, v93);
    return (v103)(v94, v93);
  }

  v106 = *(v91 + 8);
  v104 = v91 + 8;
  v105 = v106;
  v106(v72, v69);
  sub_D2F98(v77, &v332);
  v107 = v328;
  v108 = v329;
  if (v333)
  {
    sub_420A4(&v332, &v334);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v109 = sub_3ED0(v107, static Logger.default);
    swift_beginAccess();
    v110 = *(v108 + 16);
    v269 = v109;
    v268 = v108 + 16;
    v267 = v110;
    v110(v90, v109, v107);
    sub_FE8E8(&v334, &v332);
    v111 = sub_2CDFE0();
    v112 = sub_2CE670();
    v113 = os_log_type_enabled(v111, v112);
    v273 = v93;
    v321 = v104;
    v272 = v77;
    v271 = v105;
    if (v113)
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v331 = v115;
      *v114 = 136315138;
      sub_FE8E8(&v332, v330);
      sub_20410(&qword_354CF0, qword_2D71A0);
      v116 = sub_2CE2A0();
      v118 = v117;
      sub_306C(&v332);
      v119 = sub_3F08(v116, v118, &v331);

      *(v114 + 4) = v119;
      _os_log_impl(&dword_0, v111, v112, "AmbiguousDetermineFlow#triggerDetermineStrategy audioIntent: %s", v114, 0xCu);
      sub_306C(v115);
    }

    else
    {

      sub_306C(&v332);
    }

    v270 = *(v329 + 8);
    v270(v90, v107);
    v126 = v317;
    v127 = v314;
    sub_35E0(&v334, v335);
    sub_2CD840();
    v128 = v126[13];
    v129 = v313;
    v130 = v319;
    v320 = (v126 + 13);
    v288 = v128;
    (v128)(v313, enum case for CommonAudio.Verb.determine(_:), v319);
    v131 = v126[7];
    v315 = (v126 + 7);
    v274 = v131;
    v131(v129, 0, 1, v130);
    v132 = *(v318 + 48);
    v133 = v304;
    sub_F3F4(v127, v304, &qword_34D6B8, &qword_2D15B0);
    sub_F3F4(v129, v133 + v132, &qword_34D6B8, &qword_2D15B0);
    v134 = v126[6];
    if (v134(v133, 1, v130) == 1)
    {
      sub_30B8(v129, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v127, &qword_34D6B8, &qword_2D15B0);
      v135 = v134(v133 + v132, 1, v130);
      v136 = v312;
      if (v135 == 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v137 = v285;
      sub_F3F4(v133, v285, &qword_34D6B8, &qword_2D15B0);
      v138 = v134(v133 + v132, 1, v130);
      v136 = v312;
      if (v138 != 1)
      {
        v151 = v317;
        v152 = v133 + v132;
        v153 = v286;
        (*(v317 + 32))(v286, v152, v130);
        sub_1F6A64();
        v154 = v137;
        v155 = sub_2CE250();
        v156 = *(v151 + 8);
        v156(v153, v319);
        sub_30B8(v313, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v314, &qword_34D6B8, &qword_2D15B0);
        v156(v154, v319);
        v130 = v319;
        sub_30B8(v133, &qword_34D6B8, &qword_2D15B0);
        v139 = v290;
        if (v155)
        {
          goto LABEL_48;
        }

LABEL_31:
        sub_35E0(&v334, v335);
        v140 = v299;
        sub_2CD840();
        v141 = v298;
        (v288)(v298, enum case for CommonAudio.Verb.directedAcousticId(_:), v130);
        v274(v141, 0, 1, v130);
        v142 = *(v318 + 48);
        sub_F3F4(v140, v139, &qword_34D6B8, &qword_2D15B0);
        sub_F3F4(v141, v139 + v142, &qword_34D6B8, &qword_2D15B0);
        if (v134(v139, 1, v130) == 1)
        {
          sub_30B8(v141, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v140, &qword_34D6B8, &qword_2D15B0);
          if (v134(v139 + v142, 1, v130) == 1)
          {
            v133 = v139;
LABEL_47:
            sub_30B8(v133, &qword_34D6B8, &qword_2D15B0);
LABEL_48:
            sub_35E0(&v334, v335);
            v162 = sub_2CD720();
            v163 = v296;
            v164 = *(v296 + 104);
            v165 = v295;
            v166 = v297;
            v164(v295, enum case for CommonAudio.Attribute.previous(_:), v297);
            v167 = sub_17F758(v165, v162);

            v168 = *(v163 + 8);
            v168(v165, v166);
            if (v167 & 1) != 0 || (sub_35E0(&v334, v335), v169 = sub_2CD720(), v164(v165, enum case for CommonAudio.Attribute.playLast(_:), v166), v170 = sub_17F758(v165, v169), , v168(v165, v166), (v170) || (sub_35E0(&v334, v335), v171 = sub_2CD720(), v164(v165, enum case for CommonAudio.Attribute.next(_:), v166), v172 = sub_17F758(v165, v171), , v168(v165, v166), (v172) || (sub_35E0(&v334, v335), v173 = sub_2CD720(), v164(v165, enum case for CommonAudio.Attribute.playNext(_:), v166), v174 = sub_17F758(v165, v173), , v168(v165, v166), (v174))
            {
              v175 = v291;
              v267(v291, v269, v328);
              v176 = sub_2CDFE0();
              v177 = sub_2CE670();
              v178 = os_log_type_enabled(v176, v177);
              v179 = v310;
              v180 = v309;
              v181 = v308;
              v182 = v307;
              v183 = v306;
              v184 = v305;
              if (v178)
              {
                v185 = swift_slowAlloc();
                *v185 = 0;
                _os_log_impl(&dword_0, v176, v177, "AmbiguousDetermineFlow#execute previous/next request so playback state of current item doesn't matter, triggering Determine strategy", v185, 2u);
              }

              v270(v175, v328);
              v186 = v300;
              (*(v183 + 104))(v300, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v182);
              (*(v181 + 104))(v184, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v180);
              v187 = v293;
              v188 = v292;
              v189 = v294;
              (*(v293 + 104))(v292, enum case for AdditionalMetricsDescription.StatusReason.hasPrevNext(_:), v294);
              v329 = sub_2CCAD0();
              v328 = v190;
              (*(v187 + 8))(v188, v189);
              (*(v181 + 8))(v184, v180);
              (*(v183 + 8))(v186, v182);
              v191 = v322[16];
              v325 = v322[17];
              v324 = sub_35E0(v322 + 13, v191);
              v192 = v311;
              (*(v311 + 104))(v179, enum case for TypeOfIntent.determine(_:), v316);
              v193 = enum case for ActivityType.start(_:);
              v194 = sub_2C9C20();
              v195 = *(v194 - 8);
              v196 = v179;
            }

            else
            {
              sub_35E0(&v334, v335);
              v248 = sub_2CDF10();
              v249 = v311;
              v250 = v310;
              v251 = v309;
              v252 = v308;
              v253 = v307;
              v254 = v306;
              v255 = v305;
              if ((v248 & 1) == 0)
              {
                v263 = v322;
                sub_35E0(v322 + 7, v322[10]);
                v264 = swift_allocObject();
                v265 = v326;
                v264[2] = v263;
                v264[3] = v265;
                v264[4] = v327;

                sub_2CC330();

                goto LABEL_56;
              }

              v256 = v275;
              v267(v275, v269, v328);
              v257 = sub_2CDFE0();
              v258 = sub_2CE670();
              if (os_log_type_enabled(v257, v258))
              {
                v259 = swift_slowAlloc();
                *v259 = 0;
                _os_log_impl(&dword_0, v257, v258, "AmbiguousDetermineFlow#execute homeAutomation nodes present so playback state of current item doesn't matter, triggering Determine strategy", v259, 2u);
                v256 = v275;
              }

              v270(v256, v328);
              v260 = v300;
              (*(v254 + 104))(v300, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v253);
              (*(v252 + 104))(v255, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v251);
              v329 = sub_2CCAE0();
              v328 = v261;
              (*(v252 + 8))(v255, v251);
              (*(v254 + 8))(v260, v253);
              v262 = v322[16];
              v325 = v322[17];
              v324 = sub_35E0(v322 + 13, v262);
              (*(v249 + 104))(v250, enum case for TypeOfIntent.determine(_:), v316);
              v193 = enum case for ActivityType.start(_:);
              v194 = sub_2C9C20();
              v195 = *(v194 - 8);
              v196 = v250;
              v192 = v249;
            }

            v197 = v195;
            v198 = v303;
            (*(v195 + 104))(v303, v193, v194);
            (*(v197 + 56))(v198, 0, 1, v194);
            v199 = sub_2CA130();
            v200 = v302;
            (*(*(v199 - 8) + 56))(v302, 1, 1, v199);
            v201 = enum case for SiriKitReliabilityCodes.inProgress(_:);
            v202 = sub_2C98F0();
            v203 = *(v202 - 8);
            v204 = v301;
            (*(v203 + 104))(v301, v201, v202);
            (*(v203 + 56))(v204, 0, 1, v202);
            sub_2CB4C0();

            sub_30B8(v204, &qword_34CB78, &unk_2D0D80);
            sub_30B8(v200, &qword_34CB80, &unk_2D0B30);
            sub_30B8(v198, &qword_34CB88, &unk_2D0D90);
            (*(v192 + 8))(v196, v316);
            sub_1F2D60(v326, v327);
LABEL_56:
            v271(v272, v273);
            return sub_306C(&v334);
          }
        }

        else
        {
          v143 = v283;
          sub_F3F4(v139, v283, &qword_34D6B8, &qword_2D15B0);
          if (v134(v139 + v142, 1, v130) != 1)
          {
            v205 = v139;
            v206 = v317;
            v207 = v205 + v142;
            v208 = v286;
            (*(v317 + 32))(v286, v207, v130);
            sub_1F6A64();
            v209 = sub_2CE250();
            v210 = *(v206 + 8);
            v210(v208, v319);
            sub_30B8(v298, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v299, &qword_34D6B8, &qword_2D15B0);
            v210(v143, v319);
            v130 = v319;
            sub_30B8(v205, &qword_34D6B8, &qword_2D15B0);
            if (v209)
            {
              goto LABEL_48;
            }

LABEL_37:
            sub_35E0(&v334, v335);
            v144 = v287;
            sub_2CD840();
            (v288)(v136, enum case for CommonAudio.Verb.summarise(_:), v130);
            v274(v136, 0, 1, v130);
            v145 = *(v318 + 48);
            v146 = v144;
            v147 = v136;
            v148 = v144;
            v149 = v289;
            sub_F3F4(v146, v289, &qword_34D6B8, &qword_2D15B0);
            v150 = v149;
            sub_F3F4(v147, v149 + v145, &qword_34D6B8, &qword_2D15B0);
            if (v134(v149, 1, v130) == 1)
            {
              sub_30B8(v147, &qword_34D6B8, &qword_2D15B0);
              v133 = v289;
              sub_30B8(v148, &qword_34D6B8, &qword_2D15B0);
              if (v134(v133 + v145, 1, v130) == 1)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v157 = v280;
              sub_F3F4(v149, v280, &qword_34D6B8, &qword_2D15B0);
              if (v134(v149 + v145, 1, v130) != 1)
              {
                v238 = v317;
                v239 = v150 + v145;
                v240 = v286;
                (*(v317 + 32))(v286, v239, v130);
                sub_1F6A64();
                v241 = sub_2CE250();
                v242 = *(v238 + 8);
                v242(v240, v319);
                sub_30B8(v312, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v287, &qword_34D6B8, &qword_2D15B0);
                v242(v157, v319);
                v130 = v319;
                sub_30B8(v150, &qword_34D6B8, &qword_2D15B0);
                if (v241)
                {
                  goto LABEL_48;
                }

LABEL_45:
                sub_35E0(&v334, v335);
                v158 = v281;
                sub_2CD840();
                v159 = v284;
                (v288)(v284, enum case for CommonAudio.Verb.request(_:), v130);
                v160 = v134;
                v274(v159, 0, 1, v130);
                v161 = *(v318 + 48);
                v133 = v282;
                sub_F3F4(v158, v282, &qword_34D6B8, &qword_2D15B0);
                sub_F3F4(v159, v133 + v161, &qword_34D6B8, &qword_2D15B0);
                if (v134(v133, 1, v130) == 1)
                {
                  sub_30B8(v159, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v158, &qword_34D6B8, &qword_2D15B0);
                  if (v134(v133 + v161, 1, v130) == 1)
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  v211 = v276;
                  sub_F3F4(v133, v276, &qword_34D6B8, &qword_2D15B0);
                  if (v160(v133 + v161, 1, v130) != 1)
                  {
                    v243 = v317;
                    v244 = v133 + v161;
                    v245 = v286;
                    (*(v317 + 32))(v286, v244, v130);
                    sub_1F6A64();
                    v246 = sub_2CE250();
                    v247 = *(v243 + 8);
                    v247(v245, v130);
                    sub_30B8(v284, &qword_34D6B8, &qword_2D15B0);
                    sub_30B8(v158, &qword_34D6B8, &qword_2D15B0);
                    v247(v211, v130);
                    sub_30B8(v133, &qword_34D6B8, &qword_2D15B0);
                    if (v246)
                    {
                      goto LABEL_48;
                    }

LABEL_62:
                    v212 = v277;
                    v213 = v328;
                    v267(v277, v269, v328);
                    v214 = sub_2CDFE0();
                    v215 = sub_2CE680();
                    if (os_log_type_enabled(v214, v215))
                    {
                      v216 = swift_slowAlloc();
                      *v216 = 0;
                      _os_log_impl(&dword_0, v214, v215, "AmbiguousDetermineFlow#execute received non-determine verb", v216, 2u);
                    }

                    v270(v212, v213);
                    v217 = v306;
                    v218 = v300;
                    v219 = v307;
                    (*(v306 + 104))(v300, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v307);
                    v220 = v308;
                    v221 = v305;
                    v222 = v309;
                    (*(v308 + 104))(v305, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v309);
                    sub_35E0(&v334, v335);
                    sub_2CD840();
                    sub_2CE2A0();
                    v329 = sub_2CCAE0();
                    v328 = v223;

                    (*(v220 + 8))(v221, v222);
                    (*(v217 + 8))(v218, v219);
                    v224 = v322[16];
                    v320 = v322[17];
                    sub_35E0(v322 + 13, v224);
                    v225 = v311;
                    v226 = v310;
                    (*(v311 + 104))(v310, enum case for TypeOfIntent.determine(_:), v316);
                    v227 = enum case for ActivityType.failed(_:);
                    v228 = sub_2C9C20();
                    v229 = *(v228 - 8);
                    v230 = v303;
                    (*(v229 + 104))(v303, v227, v228);
                    (*(v229 + 56))(v230, 0, 1, v228);
                    v231 = sub_2CA130();
                    v232 = v302;
                    (*(*(v231 - 8) + 56))(v302, 1, 1, v231);
                    v233 = enum case for SiriKitReliabilityCodes.genericError(_:);
                    v234 = sub_2C98F0();
                    v235 = *(v234 - 8);
                    v236 = v301;
                    (*(v235 + 104))(v301, v233, v234);
                    (*(v235 + 56))(v236, 0, 1, v234);
                    sub_2CB4C0();

                    sub_30B8(v236, &qword_34CB78, &unk_2D0D80);
                    sub_30B8(v232, &qword_34CB80, &unk_2D0B30);
                    sub_30B8(v230, &qword_34CB88, &unk_2D0D90);
                    (*(v225 + 8))(v226, v316);
                    v237 = v323;
                    sub_2C9EB0();
                    v326(v237);
                    (v324[1])(v237, v325);
                    goto LABEL_56;
                  }

                  sub_30B8(v284, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v158, &qword_34D6B8, &qword_2D15B0);
                  (*(v317 + 8))(v211, v130);
                }

                sub_30B8(v133, &qword_34D6B0, &unk_2D4FC0);
                goto LABEL_62;
              }

              sub_30B8(v312, &qword_34D6B8, &qword_2D15B0);
              v133 = v289;
              sub_30B8(v287, &qword_34D6B8, &qword_2D15B0);
              (*(v317 + 8))(v157, v130);
            }

            sub_30B8(v133, &qword_34D6B0, &unk_2D4FC0);
            goto LABEL_45;
          }

          sub_30B8(v298, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v299, &qword_34D6B8, &qword_2D15B0);
          (*(v317 + 8))(v143, v130);
        }

        sub_30B8(v139, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_37;
      }

      sub_30B8(v313, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v314, &qword_34D6B8, &qword_2D15B0);
      (*(v317 + 8))(v137, v130);
    }

    sub_30B8(v133, &qword_34D6B0, &unk_2D4FC0);
    v139 = v290;
    goto LABEL_31;
  }

  sub_30B8(&v332, &qword_34CF98, &unk_2D1A40);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v120 = sub_3ED0(v107, static Logger.default);
  swift_beginAccess();
  v121 = v288;
  (*(v108 + 16))(v288, v120, v107);
  v122 = sub_2CDFE0();
  v123 = sub_2CE680();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 0;
    _os_log_impl(&dword_0, v122, v123, "AmbiguousDetermineFlow#execute received unsupported NLv3IntentOnly, USO parse", v124, 2u);
  }

  (*(v108 + 8))(v121, v107);
  v125 = v323;
  sub_2C9EB0();
  v326(v125);
  (v324[1])(v125, v325);
  return (v105)(v77, v93);
}

uint64_t sub_1F2D60(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v4 = sub_2C9EC0();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2CE000();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CA870();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_2CA7B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
  swift_beginAccess();
  v20 = v3;
  sub_F3F4(v3 + v19, v11, &qword_34E480, &qword_2D2280);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_30B8(v11, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = v40;
    v22 = sub_3ED0(v40, static Logger.default);
    swift_beginAccess();
    v23 = v41;
    v24 = v42;
    (*(v42 + 16))(v41, v22, v21);
    v25 = sub_2CDFE0();
    v26 = sub_2CE680();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "AmbiguousDetermineFlow#triggerDetermineStrategy nil input issue", v27, 2u);
    }

    (*(v24 + 8))(v23, v21);
    v28 = v43;
    sub_2C9EB0();
    v46(v28);
    return (*(v44 + 8))(v28, v45);
  }

  else
  {
    v30 = v47;
    v44 = *(v13 + 32);
    (v44)(v18, v11, v12);
    v31 = v20;
    v45 = *(v20 + 96);
    v32 = v37;
    sub_2CA790();
    (*(v13 + 16))(v16, v18, v12);
    v33 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v34 = swift_allocObject();
    v35 = v46;
    v34[2] = v31;
    v34[3] = v35;
    v34[4] = v30;
    (v44)(v34 + v33, v16, v12);

    DetermineFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(v32, 0, sub_1F69D0, v34);

    (*(v38 + 8))(v32, v39);
    return (*(v13 + 8))(v18, v12);
  }
}

uint64_t sub_1F32D0(void *a1, char a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v101 = a5;
  v102 = a4;
  v92 = a3;
  v8 = sub_2C9EC0();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v98 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v10 - 8);
  v97 = v84 - v11;
  v12 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v12 - 8);
  v96 = v84 - v13;
  v14 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v14 - 8);
  v94 = v84 - v15;
  v103 = sub_2CB970();
  v95 = *(v103 - 8);
  __chkstk_darwin(v103);
  v93 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CCB20();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2CCB30();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2CCAC0();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v23 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = v84 - v29;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v31 = sub_3ED0(v24, static Logger.default);
    swift_beginAccess();
    (*(v25 + 16))(v28, v31, v24);
    swift_errorRetain();
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    sub_A41AC(a1, 1);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = a1;
      v36 = v35;
      v104 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v37 = sub_2CEEF0();
      v39 = sub_3F08(v37, v38, &v104);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_0, v32, v33, "AmbiguousDetermineFlow#triggerDetermineStrategy failed intent issue with error: %s", v34, 0xCu);
      sub_306C(v36);
    }

    (*(v25 + 8))(v28, v24);
    v40 = v88;
    v41 = v89;
    (*(v88 + 104))(v23, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v89);
    v42 = v90;
    v43 = v87;
    v44 = v91;
    (*(v90 + 104))(v87, enum case for AdditionalMetricsDescription.SourceFunction.trigDetStrat(_:), v91);
    swift_getErrorValue();
    sub_2CEEF0();
    v86 = sub_2CCAE0();
    v85 = v45;

    (*(v42 + 8))(v43, v44);
    (*(v40 + 8))(v23, v41);
    v46 = v92[16];
    v91 = v92[17];
    sub_35E0(v92 + 13, v46);
    v47 = v95;
    v48 = v93;
    (*(v95 + 104))(v93, enum case for TypeOfIntent.determine(_:), v103);
    v49 = enum case for ActivityType.failed(_:);
    v50 = sub_2C9C20();
    v51 = *(v50 - 8);
    v52 = v94;
    (*(v51 + 104))(v94, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    v53 = sub_2CA130();
    v54 = v96;
    (*(*(v53 - 8) + 56))(v96, 1, 1, v53);
    v55 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v56 = sub_2C98F0();
    v57 = *(v56 - 8);
    v58 = v97;
    (*(v57 + 104))(v97, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    sub_2CB4C0();

    sub_30B8(v58, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v54, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v52, &qword_34CB88, &unk_2D0D90);
    (*(v47 + 8))(v48, v103);
    v59 = v98;
    sub_2C9EB0();
  }

  else
  {
    v86 = a1;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v60 = sub_3ED0(v24, static Logger.default);
    swift_beginAccess();
    (*(v25 + 16))(v30, v60, v24);
    v61 = sub_2CDFE0();
    v62 = sub_2CE670();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "AmbiguousDetermineFlow#triggerDetermineStrategy successfully triggering with amended DetermineIntent", v63, 2u);
    }

    (*(v25 + 8))(v30, v24);
    v64 = v88;
    v65 = v89;
    (*(v88 + 104))(v23, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v89);
    v66 = v90;
    v67 = v87;
    v68 = v91;
    (*(v90 + 104))(v87, enum case for AdditionalMetricsDescription.SourceFunction.trigDetStrat(_:), v91);
    (*(v18 + 104))(v20, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v17);
    v84[1] = sub_2CCAD0();
    v84[0] = v69;
    (*(v18 + 8))(v20, v17);
    (*(v66 + 8))(v67, v68);
    (*(v64 + 8))(v23, v65);
    v70 = v92[16];
    v91 = v92[17];
    sub_35E0(v92 + 13, v70);
    v71 = v95;
    v72 = v93;
    (*(v95 + 104))(v93, enum case for TypeOfIntent.acousticID(_:), v103);
    v73 = enum case for ActivityType.start(_:);
    v74 = sub_2C9C20();
    v75 = *(v74 - 8);
    v76 = v94;
    (*(v75 + 104))(v94, v73, v74);
    (*(v75 + 56))(v76, 0, 1, v74);
    v77 = sub_2CA130();
    v78 = v96;
    (*(*(v77 - 8) + 56))(v96, 1, 1, v77);
    v79 = enum case for SiriKitReliabilityCodes.inProgress(_:);
    v80 = sub_2C98F0();
    v81 = *(v80 - 8);
    v82 = v97;
    (*(v81 + 104))(v97, v79, v80);
    (*(v81 + 56))(v82, 0, 1, v80);
    sub_2CB4C0();

    sub_30B8(v82, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v78, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v76, &qword_34CB88, &unk_2D0D90);
    (*(v71 + 8))(v72, v103);
    sub_136E6C(v86, v85);
    v59 = v98;
    sub_2C9EA0();
  }

  v102(v59);
  return (*(v99 + 8))(v59, v100);
}

uint64_t sub_1F40B8(unsigned int a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v140 = a3;
  v141 = a4;
  v139 = a2;
  v5 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v5 - 8);
  v123 = &v118 - v6;
  v125 = sub_2C9EC0();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CCB20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v121 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v11 - 8);
  v134 = &v118 - v12;
  v13 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v13 - 8);
  v135 = &v118 - v14;
  v15 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v15 - 8);
  v137 = &v118 - v16;
  v142 = sub_2CB970();
  v138 = *(v142 - 8);
  __chkstk_darwin(v142);
  v136 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CCB30();
  v132 = *(v18 - 8);
  v133 = v18;
  __chkstk_darwin(v18);
  v129 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CCAC0();
  v130 = *(v20 - 8);
  v131 = v20;
  __chkstk_darwin(v20);
  v128 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v126 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v120 = &v118 - v27;
  v28 = __chkstk_darwin(v26);
  v119 = &v118 - v29;
  __chkstk_darwin(v28);
  v31 = &v118 - v30;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v127 = *(v23 + 16);
  v127(v31, v32, v22);
  v33 = sub_2CDFE0();
  v34 = sub_2CE670();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v118 = v23;
    *v35 = 67240192;
    *(v35 + 4) = a1;
    _os_log_impl(&dword_0, v33, v34, "AmbiguousDetermineFlow#executeBasedOnPlaybackState playback state: %{public}u", v35, 8u);
    v23 = v118;
  }

  v36 = *(v23 + 8);
  v36(v31, v22);
  if (a1 > 3 || a1 == 1)
  {
    v94 = v119;
    v127(v119, v32, v22);
    v95 = sub_2CDFE0();
    v96 = sub_2CE670();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_0, v95, v96, "AmbiguousDetermineFlow#executeBasedOnPlaybackState playback state is playing, triggering Determine strategy", v97, 2u);
    }

    v36(v94, v22);
    v99 = v130;
    v98 = v131;
    v100 = v128;
    (*(v130 + 104))(v128, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v131);
    v102 = v132;
    v101 = v133;
    v103 = v129;
    (*(v132 + 104))(v129, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v133);
    v143 = a1;
    type metadata accessor for MRPlaybackState(0);
    sub_2CE2A0();
    v127 = sub_2CCAE0();
    v126 = v104;

    (*(v102 + 8))(v103, v101);
    (*(v99 + 8))(v100, v98);
    v105 = v139[17];
    v132 = v139[16];
    v133 = v105;
    sub_35E0(v139 + 13, v132);
    v106 = v138;
    v107 = v136;
    (*(v138 + 104))(v136, enum case for TypeOfIntent.determine(_:), v142);
    v108 = enum case for ActivityType.start(_:);
    v109 = sub_2C9C20();
    v110 = *(v109 - 8);
    v111 = v137;
    (*(v110 + 104))(v137, v108, v109);
    (*(v110 + 56))(v111, 0, 1, v109);
    v112 = sub_2CA130();
    v113 = v135;
    (*(*(v112 - 8) + 56))(v135, 1, 1, v112);
    v114 = enum case for SiriKitReliabilityCodes.inProgress(_:);
    v115 = sub_2C98F0();
    v116 = *(v115 - 8);
    v117 = v134;
    (*(v116 + 104))(v134, v114, v115);
    (*(v116 + 56))(v117, 0, 1, v115);
    sub_2CB4C0();

    sub_30B8(v117, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v113, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v111, &qword_34CB88, &unk_2D0D90);
    (*(v106 + 8))(v107, v142);
    return sub_1F2D60(v140, v141);
  }

  else if (sub_2CB650())
  {
    v37 = v120;
    v127(v120, v32, v22);
    v38 = sub_2CDFE0();
    v39 = sub_2CE670();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "AmbiguousDetermineFlow#executeBasedOnPlaybackState got back non playing state, and device doesn't have Shazam UI, responding with nothing playing dialog", v40, 2u);
    }

    v36(v37, v22);
    v42 = v130;
    v41 = v131;
    v43 = v128;
    (*(v130 + 104))(v128, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v131);
    v45 = v132;
    v44 = v133;
    v46 = v129;
    (*(v132 + 104))(v129, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v133);
    v127 = sub_2CCAE0();
    v126 = v47;
    (*(v45 + 8))(v46, v44);
    (*(v42 + 8))(v43, v41);
    v48 = v139[17];
    v132 = v139[16];
    v133 = v48;
    sub_35E0(v139 + 13, v132);
    v49 = v138;
    v50 = v136;
    (*(v138 + 104))(v136, enum case for TypeOfIntent.determine(_:), v142);
    v51 = enum case for ActivityType.start(_:);
    v52 = sub_2C9C20();
    v53 = *(v52 - 8);
    v54 = v137;
    (*(v53 + 104))(v137, v51, v52);
    (*(v53 + 56))(v54, 0, 1, v52);
    v55 = sub_2CA130();
    v56 = v135;
    (*(*(v55 - 8) + 56))(v135, 1, 1, v55);
    v57 = enum case for SiriKitReliabilityCodes.inProgress(_:);
    v58 = sub_2C98F0();
    v59 = *(v58 - 8);
    v60 = v134;
    (*(v59 + 104))(v134, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    sub_2CB4C0();

    sub_30B8(v60, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v56, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v54, &qword_34CB88, &unk_2D0D90);
    (*(v49 + 8))(v50, v142);
    v61 = swift_allocObject();
    swift_weakInit();
    v62 = swift_allocObject();
    v63 = v140;
    v64 = v141;
    v62[2] = v61;
    v62[3] = v63;
    v62[4] = v64;

    sub_985E0(sub_1F6ABC, v62);
  }

  else
  {
    v127(v126, v32, v22);
    v66 = sub_2CDFE0();
    v67 = sub_2CE670();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v66, v67, "AmbiguousDetermineFlow#executeBasedOnPlaybackState got back non playing state for Shazam UI device, triggering Acoustic ID Flow", v68, 2u);
    }

    v36(v126, v22);
    v70 = v130;
    v69 = v131;
    v71 = v128;
    (*(v130 + 104))(v128, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v131);
    v73 = v132;
    v72 = v133;
    v74 = v129;
    (*(v132 + 104))(v129, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v133);
    v75 = v121;
    (*(v9 + 104))(v121, enum case for AdditionalMetricsDescription.StatusReason.acstc(_:), v8);
    v127 = sub_2CCAD0();
    v126 = v76;
    (*(v9 + 8))(v75, v8);
    (*(v73 + 8))(v74, v72);
    (*(v70 + 8))(v71, v69);
    v77 = v139;
    v78 = v139[17];
    v132 = v139[16];
    v133 = v78;
    sub_35E0(v139 + 13, v132);
    v79 = v138;
    v80 = v136;
    (*(v138 + 104))(v136, enum case for TypeOfIntent.acousticID(_:), v142);
    v81 = enum case for ActivityType.start(_:);
    v82 = sub_2C9C20();
    v83 = *(v82 - 8);
    v84 = v137;
    (*(v83 + 104))(v137, v81, v82);
    (*(v83 + 56))(v84, 0, 1, v82);
    v85 = sub_2CA130();
    v86 = v135;
    (*(*(v85 - 8) + 56))(v135, 1, 1, v85);
    v87 = enum case for SiriKitReliabilityCodes.inProgress(_:);
    v88 = sub_2C98F0();
    v89 = *(v88 - 8);
    v90 = v134;
    (*(v89 + 104))(v134, v87, v88);
    (*(v89 + 56))(v90, 0, 1, v88);
    sub_2CB4C0();

    sub_30B8(v90, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v86, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v84, &qword_34CB88, &unk_2D0D90);
    (*(v79 + 8))(v80, v142);
    v91 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
    swift_beginAccess();
    v92 = v123;
    sub_F3F4(v77 + v91, v123, &qword_34E480, &qword_2D2280);
    sub_1371BC(v92);
    sub_30B8(v92, &qword_34E480, &qword_2D2280);
    v93 = v122;
    sub_2C9EA0();

    v140(v93);
    return (*(v124 + 8))(v93, v125);
  }
}

uint64_t sub_1F5384(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v23[-v12];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v11, v14, v7);
    v15 = sub_2CDFE0();
    v16 = sub_2CE690();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "AmbiguousDetermineFlow#nothingPlayingDialog", v17, 2u);
    }

    (*(v8 + 8))(v11, v7);
    sub_1F56A0(a1, a3, a4);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v13, v19, v7);
    v20 = sub_2CDFE0();
    v21 = sub_2CE680();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "AmbiguousDetermineFlow#nothingPlayingDialog self deallocated prematurely", v22, 2u);
    }

    return (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_1F56A0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v123 = a3;
  v124 = a2;
  v6 = sub_2C9EC0();
  v125 = *(v6 - 8);
  v126 = v6;
  __chkstk_darwin(v6);
  v122 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v8 - 8);
  v121 = &v101 - v9;
  v10 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v10 - 8);
  v119 = &v101 - v11;
  v12 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v12 - 8);
  v118 = &v101 - v13;
  v127 = sub_2CB970();
  v120 = *(v127 - 8);
  __chkstk_darwin(v127);
  v117 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2CCB20();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_2CCB30();
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v115 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CCAC0();
  v116 = *(v17 - 8);
  __chkstk_darwin(v17);
  v114 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  __chkstk_darwin(v19 - 8);
  v113 = &v101 - v20;
  v109 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v109);
  v22 = (&v101 - v21);
  v23 = sub_2CE000();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v103 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v110 = &v101 - v28;
  __chkstk_darwin(v27);
  v30 = &v101 - v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v23, static Logger.default);
  swift_beginAccess();
  v32 = *(v24 + 16);
  v108 = v31;
  v107 = v32;
  v32(v30, v31, v23);
  v33 = sub_2CDFE0();
  v34 = sub_2CE670();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v102 = a1;
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "ExecuteMusicOnRemoteFlow#handleDialogResult Handling dialog Result...", v35, 2u);
    a1 = v102;
  }

  v36 = *(v24 + 8);
  v36(v30, v23);
  sub_F3F4(a1, v22, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v22;
    v38 = v103;
    v107(v103, v108, v23);
    swift_errorRetain();
    v39 = sub_2CDFE0();
    v40 = v23;
    v41 = sub_2CE680();

    if (os_log_type_enabled(v39, v41))
    {
      v42 = swift_slowAlloc();
      v110 = v17;
      v109 = v4;
      v43 = v42;
      v44 = swift_slowAlloc();
      v130 = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v108 = v40;
      v128 = sub_2CEEF0();
      v129 = v45;
      v46 = sub_2CE3C0();
      v48 = sub_3F08(v46, v47, &v130);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_0, v39, v41, "AmbiguousDetermineFlow#handleDialogResult Could not properly create dialog %s, silently failing", v43, 0xCu);
      sub_306C(v44);

      v4 = v109;
      v17 = v110;

      v49 = v38;
      v50 = v108;
    }

    else
    {

      v49 = v38;
      v50 = v40;
    }

    v36(v49, v50);
    v81 = v116;
    v82 = v114;
    (*(v116 + 104))(v114, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v17);
    v83 = v112;
    v84 = v115;
    v85 = v111;
    (*(v112 + 104))(v115, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v111);
    v113 = v37;
    swift_getErrorValue();
    sub_2CEEF0();
    v110 = sub_2CCAE0();
    v109 = v86;

    (*(v83 + 8))(v84, v85);
    (*(v81 + 8))(v82, v17);
    v87 = v4[16];
    v116 = v4[17];
    sub_35E0(v4 + 13, v87);
    v88 = v120;
    v89 = v117;
    (*(v120 + 104))(v117, enum case for TypeOfIntent.determine(_:), v127);
    v90 = enum case for ActivityType.failed(_:);
    v91 = sub_2C9C20();
    v92 = *(v91 - 8);
    v93 = v118;
    (*(v92 + 104))(v118, v90, v91);
    (*(v92 + 56))(v93, 0, 1, v91);
    v94 = sub_2CA130();
    v95 = v119;
    (*(*(v94 - 8) + 56))(v119, 1, 1, v94);
    v96 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v97 = sub_2C98F0();
    v98 = *(v97 - 8);
    v99 = v121;
    (*(v98 + 104))(v121, v96, v97);
    (*(v98 + 56))(v99, 0, 1, v97);
    sub_2CB4C0();

    sub_30B8(v99, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v95, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v93, &qword_34CB88, &unk_2D0D90);
    (*(v88 + 8))(v89, v127);
    v100 = v122;
    sub_2C9EB0();
    v124(v100);

    return (*(v125 + 8))(v100, v126);
  }

  else
  {
    v51 = v22;
    v52 = v23;
    sub_24BE0(v51, v113);
    v53 = sub_2C9BD0();
    sub_35E0(v4 + 20, v4[23]);
    v109 = v53;
    sub_2CA3E0();
    v107(v110, v108, v52);
    v54 = sub_2CDFE0();
    v55 = sub_2CE690();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "AmbiguousDetermineFlow#handleDialogResult Dialog successfully generated, responding and exiting", v56, 2u);
    }

    v36(v110, v52);
    v57 = v116;
    v58 = v114;
    (*(v116 + 104))(v114, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v17);
    v59 = v112;
    v60 = v115;
    v61 = v111;
    (*(v112 + 104))(v115, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v111);
    v62 = v105;
    v63 = v104;
    v64 = v106;
    (*(v105 + 104))(v104, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v106);
    v110 = sub_2CCAD0();
    v108 = v65;
    (*(v62 + 8))(v63, v64);
    (*(v59 + 8))(v60, v61);
    (*(v57 + 8))(v58, v17);
    v66 = v4[16];
    v116 = v4[17];
    sub_35E0(v4 + 13, v66);
    v67 = v120;
    v68 = v117;
    (*(v120 + 104))(v117, enum case for TypeOfIntent.determine(_:), v127);
    v69 = enum case for ActivityType.completed(_:);
    v70 = sub_2C9C20();
    v71 = *(v70 - 8);
    v72 = v118;
    (*(v71 + 104))(v118, v69, v70);
    (*(v71 + 56))(v72, 0, 1, v70);
    v73 = sub_2CA130();
    v74 = v119;
    (*(*(v73 - 8) + 56))(v119, 1, 1, v73);
    v75 = enum case for SiriKitReliabilityCodes.success(_:);
    v76 = sub_2C98F0();
    v77 = *(v76 - 8);
    v78 = v121;
    (*(v77 + 104))(v121, v75, v76);
    (*(v77 + 56))(v78, 0, 1, v76);
    sub_2CB4C0();

    sub_30B8(v78, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v74, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v72, &qword_34CB88, &unk_2D0D90);
    (*(v67 + 8))(v68, v127);
    v79 = v122;
    sub_2C9EB0();
    v124(v79);

    (*(v125 + 8))(v79, v126);
    return sub_30B8(v113, &qword_34C6E8, &unk_2D0FF0);
  }
}

void *sub_1F675C()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);

  sub_306C(v0 + 13);

  sub_306C(v0 + 20);

  sub_306C(v0 + 26);
  sub_306C(v0 + 31);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input, &qword_34E480, &qword_2D2280);
  return v0;
}

uint64_t sub_1F67E4()
{
  sub_1F675C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AmbiguousDetermineFlow(uint64_t a1)
{
  result = qword_354BC8;
  if (!qword_354BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1F6890(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1F6994(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AmbiguousDetermineFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1F69D0(void *a1, char a2)
{
  v5 = *(sub_2CA7B0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1F32D0(a1, a2 & 1, v6, v7, v8, v9);
}

unint64_t sub_1F6A64()
{
  result = qword_34D708;
  if (!qword_34D708)
  {
    sub_2CD4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D708);
  }

  return result;
}

uint64_t sub_1F6AC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "SwitchPodcastNewsPreferenceFlow#on Handling input.", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v15 = sub_2CA7B0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, a1, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
  swift_beginAccess();
  sub_FECE8(v6, v2 + v17, &qword_34E480, &qword_2D2280);
  swift_endAccess();
  return sub_1FE6CC() & 1;
}

uint64_t sub_1F6D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v114 = a1;
  v115 = a2;
  v4 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v4 - 8);
  v113 = &v92 - v5;
  v6 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v6 - 8);
  v110 = &v92 - v7;
  v8 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v8 - 8);
  v109 = &v92 - v9;
  v10 = sub_2CB970();
  v111 = *(v10 - 8);
  v112 = v10;
  __chkstk_darwin(v10);
  v108 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2CCB30();
  v12 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CCAC0();
  v105 = *(v14 - 8);
  v106 = v14;
  __chkstk_darwin(v14);
  v103 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2CB380();
  v98 = *(v99 - 8);
  v16 = __chkstk_darwin(v99);
  v97 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = &v92 - v18;
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v94 = &v92 - v25;
  __chkstk_darwin(v24);
  v27 = &v92 - v26;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v29 = *(v20 + 16);
  v101 = v20 + 16;
  v102 = v28;
  v100 = v29;
  v29(v27, v28, v19);

  v30 = sub_2CDFE0();
  v31 = sub_2CE690();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v92 = v23;
    v33 = v32;
    v34 = swift_slowAlloc();
    v93 = v12;
    v35 = v34;
    v117 = v34;
    *v33 = 136315138;
    v116 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_httpCallAttemptState);
    v36 = sub_2CE2A0();
    v38 = sub_3F08(v36, v37, &v117);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "SwitchPodcastNewsPreferenceFlow#execute Reached this logic with httpCallState: %s.", v33, 0xCu);
    sub_306C(v35);
    v12 = v93;

    v23 = v92;
  }

  v39 = *(v20 + 8);
  v40 = v19;
  v39(v27, v19);
  sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_featureFlagProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_featureFlagProvider + 24));
  if ((sub_2CC560() & 1) == 0)
  {
    v100(v23, v102, v19);
    v69 = sub_2CDFE0();
    v70 = sub_2CE670();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_0, v69, v70, "SwitchPodcastNewsPreferenceFlow#execute Feature is not enabled, erroring out.", v71, 2u);
    }

    v39(v23, v19);
    v73 = v105;
    v72 = v106;
    v74 = v103;
    (*(v105 + 104))(v103, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v106);
    v75 = v104;
    v76 = v107;
    (*(v12 + 104))(v104, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v107);
    v102 = sub_2CCAE0();
    (*(v12 + 8))(v75, v76);
    (*(v73 + 8))(v74, v72);
    v95 = v3;
    v77 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v107 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v77);
    v79 = v111;
    v78 = v112;
    v80 = v108;
    (*(v111 + 104))(v108, enum case for TypeOfIntent.switchNewsPreference(_:), v112);
    v81 = enum case for ActivityType.completed(_:);
    v82 = sub_2C9C20();
    v83 = *(v82 - 8);
    v84 = v109;
    (*(v83 + 104))(v109, v81, v82);
    (*(v83 + 56))(v84, 0, 1, v82);
    v85 = sub_2CA130();
    v86 = v110;
    (*(*(v85 - 8) + 56))(v110, 1, 1, v85);
    v87 = sub_2C98F0();
    v88 = v113;
    (*(*(v87 - 8) + 56))(v113, 1, 1, v87);
    sub_2CB4C0();

    sub_30B8(v88, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v86, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v84, &qword_34CB88, &unk_2D0D90);
    (*(v79 + 8))(v80, v78);
    goto LABEL_13;
  }

  v93 = v20;
  v41 = v96;
  sub_2CB390();
  v42 = v98;
  v43 = v97;
  v44 = v99;
  (*(v98 + 104))(v97, enum case for NetworkAvailability.Status.unknown(_:), v99);
  sub_2035E8(&qword_354F20, &type metadata accessor for NetworkAvailability.Status, &protocol conformance descriptor for NetworkAvailability.Status);
  v45 = sub_2CE250();
  v46 = *(v42 + 8);
  v46(v43, v44);
  v46(v41, v44);
  if (v45)
  {
    v47 = v40;
    v48 = v94;
    v100(v94, v102, v47);
    v49 = sub_2CDFE0();
    v50 = sub_2CE680();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "SwitchPodcastNewsPreferenceFlow#execute device is offline, cannot set preference.", v51, 2u);
    }

    v39(v48, v47);
    v53 = v105;
    v52 = v106;
    v54 = v103;
    (*(v105 + 104))(v103, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v106);
    v55 = v104;
    v56 = v107;
    (*(v12 + 104))(v104, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v107);
    v102 = sub_2CCAE0();
    (*(v12 + 8))(v55, v56);
    (*(v53 + 8))(v54, v52);
    v95 = v3;
    v57 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v107 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v57);
    v58 = v111;
    v59 = v112;
    v60 = v108;
    (*(v111 + 104))(v108, enum case for TypeOfIntent.switchNewsPreference(_:), v112);
    v61 = enum case for ActivityType.failed(_:);
    v62 = sub_2C9C20();
    v63 = *(v62 - 8);
    v64 = v109;
    (*(v63 + 104))(v109, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    v65 = sub_2CA130();
    v66 = v110;
    (*(*(v65 - 8) + 56))(v110, 1, 1, v65);
    v67 = sub_2C98F0();
    v68 = v113;
    (*(*(v67 - 8) + 56))(v113, 1, 1, v67);
    sub_2CB4C0();

    sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v66, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v64, &qword_34CB88, &unk_2D0D90);
    (*(v58 + 8))(v60, v59);
LABEL_13:
    v89 = v114;
    v90 = v115;
    return sub_1FD78C(v89, v90);
  }

  if ((sub_1FE6CC() & 1) == 0)
  {
    v89 = v114;
    v90 = v115;
    return sub_1FD78C(v89, v90);
  }

  return sub_1F7B68(v114, v115);
}

uint64_t sub_1F7B68(uint64_t a1, uint64_t a2)
{
  v146 = a1;
  v147 = a2;
  v3 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v3 - 8);
  v145 = v119 - v4;
  v5 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v5 - 8);
  v143 = v119 - v6;
  v7 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v7 - 8);
  v141 = v119 - v8;
  v144 = sub_2CB970();
  v142 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CCB30();
  v138 = *(v10 - 8);
  v139 = v10;
  __chkstk_darwin(v10);
  v135 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CCAC0();
  v136 = *(v12 - 8);
  v137 = v12;
  __chkstk_darwin(v12);
  v134 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2CDFD0();
  v128 = *(v129 - 8);
  v14 = *(v128 + 64);
  v15 = __chkstk_darwin(v129);
  v126 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = v119 - v16;
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v125 = v119 - v23;
  __chkstk_darwin(v22);
  v130 = v119 - v24;
  v25 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v25 - 8);
  v27 = v119 - v26;
  v28 = sub_2C8D90();
  v132 = *(v28 - 8);
  v133 = v28;
  v29 = __chkstk_darwin(v28);
  v31 = v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v131 = (v119 - v32);
  v33 = sub_2C8C40();
  v34 = __chkstk_darwin(v33);
  v36 = v2;
  v38 = v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v36 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId + 8);
  v148 = v36;
  if (v39 && *(v36 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier + 8))
  {
    v120 = v18;
    v123 = v17;
    v121 = v35;
    v122 = v34;
    v119[0] = *(v36 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId);
    v119[1] = *(v36 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier);

    sub_2C8C30();
    sub_2C8C20();
    sub_2C8C00();
    sub_2C8C10();
    sub_20410(&qword_354F18, qword_2D7340);
    sub_2C8BD0();
    v124 = v38;
    *(swift_allocObject() + 16) = xmmword_2D10E0;
    sub_2C8BC0();

    sub_2C8BC0();

    sub_2C8BC0();
    sub_2C8BE0();
    sub_2C8BF0();
    v41 = v132;
    v40 = v133;
    if ((*(v132 + 48))(v27, 1, v133) == 1)
    {
      sub_30B8(v27, &unk_3519B0, &qword_2D1230);
      v42 = v123;
      v43 = v120;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v44 = sub_3ED0(v42, static Logger.default);
      swift_beginAccess();
      v45 = v125;
      (*(v43 + 16))(v125, v44, v42);
      v46 = sub_2CDFE0();
      v47 = sub_2CE680();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v148;
      if (v48)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_0, v46, v47, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference failed to create URL. Cannot make Media API call.", v50, 2u);
      }

      (*(v43 + 8))(v45, v42);
      v52 = v136;
      v51 = v137;
      v53 = v134;
      (*(v136 + 104))(v134, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v137);
      v55 = v138;
      v54 = v139;
      v56 = v135;
      (*(v138 + 104))(v135, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v139);
      v133 = sub_2CCAE0();
      (*(v55 + 8))(v56, v54);
      (*(v52 + 8))(v53, v51);
      v57 = *(v49 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
      v139 = *(v49 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v49 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v57);
      v58 = v142;
      v59 = v140;
      v60 = v144;
      (*(v142 + 104))(v140, enum case for TypeOfIntent.switchNewsPreference(_:), v144);
      v61 = enum case for ActivityType.failed(_:);
      v62 = sub_2C9C20();
      v63 = *(v62 - 8);
      v64 = v141;
      (*(v63 + 104))(v141, v61, v62);
      (*(v63 + 56))(v64, 0, 1, v62);
      v65 = sub_2CA130();
      v66 = v143;
      (*(*(v65 - 8) + 56))(v143, 1, 1, v65);
      v67 = sub_2C98F0();
      v68 = v145;
      (*(*(v67 - 8) + 56))(v145, 1, 1, v67);
      sub_2CB4C0();

      sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v66, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v64, &qword_34CB88, &unk_2D0D90);
      (*(v58 + 8))(v59, v60);
      sub_1FD750(v146, v147);
    }

    else
    {
      v93 = v131;
      (*(v41 + 32))(v131, v27, v40);
      v94 = v123;
      v95 = v120;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v96 = sub_3ED0(v94, static Logger.default);
      swift_beginAccess();
      v97 = v130;
      (*(v95 + 16))(v130, v96, v94);
      (*(v41 + 16))(v31, v93, v40);
      v98 = sub_2CDFE0();
      v99 = sub_2CE670();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = v41;
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v149 = v102;
        *v101 = 136315138;
        v103 = sub_2C8D40();
        v104 = v40;
        v106 = v105;
        v145 = *(v100 + 8);
        (v145)(v31, v104);
        v107 = sub_3F08(v103, v106, &v149);

        *(v101 + 4) = v107;
        _os_log_impl(&dword_0, v98, v99, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference setPodcastNewsPreferenceURL: %s", v101, 0xCu);
        sub_306C(v102);

        (*(v95 + 8))(v130, v123);
      }

      else
      {

        v145 = *(v41 + 8);
        (v145)(v31, v40);
        (*(v95 + 8))(v97, v94);
      }

      if (qword_34BF98 != -1)
      {
        swift_once();
      }

      v108 = qword_35F760;
      v109 = v127;
      sub_2CDFB0();
      v110 = v128;
      v111 = v126;
      v112 = v129;
      (*(v128 + 16))(v126, v109, v129);
      v113 = (*(v110 + 80) + 33) & ~*(v110 + 80);
      v114 = swift_allocObject();
      *(v114 + 16) = "switchNewsSourcePreferenceMediaAPICall";
      *(v114 + 24) = 38;
      *(v114 + 32) = 2;
      (*(v110 + 32))(v114 + v113, v111, v112);
      v115 = (v114 + ((v14 + v113 + 7) & 0xFFFFFFFFFFFFFFF8));
      v116 = v147;
      *v115 = v146;
      v115[1] = v116;

      sub_2CE9E0();
      sub_2CDFA0();
      v117 = swift_allocObject();
      *(v117 + 16) = sub_13CD4;
      *(v117 + 24) = v114;

      v118 = v131;
      sub_1F8EE4(sub_13D8C, v117, v148, v131);

      (*(v110 + 8))(v109, v112);
      (v145)(v118, v133);
    }

    return (*(v121 + 8))(v124, v122);
  }

  else
  {
    v69 = v36;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v70 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    (*(v18 + 16))(v21, v70, v17);
    v71 = sub_2CDFE0();
    v72 = sub_2CE680();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference did not receive correct podcast metadata. Cannot make Media API call.", v73, 2u);
    }

    (*(v18 + 8))(v21, v17);
    v75 = v136;
    v74 = v137;
    v76 = v134;
    (*(v136 + 104))(v134, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v137);
    v78 = v138;
    v77 = v139;
    v79 = v135;
    (*(v138 + 104))(v135, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v139);
    v133 = sub_2CCAE0();
    (*(v78 + 8))(v79, v77);
    (*(v75 + 8))(v76, v74);
    v80 = *(v69 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v139 = *(v69 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v69 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v80);
    v81 = v142;
    v82 = v140;
    v83 = v144;
    (*(v142 + 104))(v140, enum case for TypeOfIntent.switchNewsPreference(_:), v144);
    v84 = enum case for ActivityType.failed(_:);
    v85 = sub_2C9C20();
    v86 = *(v85 - 8);
    v87 = v141;
    (*(v86 + 104))(v141, v84, v85);
    (*(v86 + 56))(v87, 0, 1, v85);
    v88 = sub_2CA130();
    v89 = v143;
    (*(*(v88 - 8) + 56))(v143, 1, 1, v88);
    v90 = sub_2C98F0();
    v91 = v145;
    (*(*(v90 - 8) + 56))(v145, 1, 1, v90);
    sub_2CB4C0();

    sub_30B8(v91, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v89, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v87, &qword_34CB88, &unk_2D0D90);
    (*(v81 + 8))(v82, v83);
    return sub_1FD750(v146, v147);
  }
}

uint64_t sub_1F8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t a1))
{
  v43 = a4;
  v50 = a3;
  v47 = a1;
  v48 = a2;
  v46 = sub_2CE150();
  v53 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2C8D90();
  v5 = *(v42 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v42);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE990();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE180();
  v52 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = dispatch_group_create();
  sub_2CE170();
  sub_2CE980();
  v51 = sub_2CBA00();
  (*(v8 + 8))(v10, v7);
  v16 = *(v12 + 8);
  v49 = v12 + 8;
  v44 = v16;
  v16(v14, v11);
  v17 = swift_allocObject();
  v38 = v17;
  *(v17 + 16) = 0;
  *(v17 + 24) = 1;
  v18 = v15;
  dispatch_group_enter(v15);
  v19 = v41;
  v20 = v42;
  (*(v5 + 16))(v41, v43, v42);
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v22 = (v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v50;
  (*(v5 + 32))(v23 + v21, v19, v20);
  v24 = v38;
  *(v23 + v22) = v38;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v59 = sub_2034C8;
  v60 = v23;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v43 = &v57;
  v57 = sub_A4294;
  v58 = &unk_339100;
  v25 = _Block_copy(&aBlock);
  v26 = v18;
  v39 = v26;

  sub_2CE160();
  v54 = _swiftEmptyArrayStorage;
  v41 = sub_2035E8(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v40 = sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v28 = v45;
  v27 = v46;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v25);

  v29 = *(v53 + 8);
  v53 += 8;
  v42 = v29;
  (v29)(v28, v27);
  v30 = v44;
  v44(v14, v52);

  sub_334A0(0, &qword_34FF18, OS_dispatch_queue_ptr);
  v31 = sub_2CE9B0();
  v32 = swift_allocObject();
  v32[2] = v24;
  v33 = v47;
  v34 = v48;
  v32[3] = v50;
  v32[4] = v33;
  v32[5] = v34;
  v59 = sub_20357C;
  v60 = v32;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_A4294;
  v58 = &unk_339150;
  v35 = _Block_copy(&aBlock);

  sub_2CE160();
  v54 = _swiftEmptyArrayStorage;
  sub_2CEC10();
  v36 = v39;
  sub_2CE970();
  _Block_release(v35);

  (v42)(v28, v27);
  v30(v14, v52);
}

uint64_t sub_1F9584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  sub_35E0((a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_appleMediaServicesProvider), *(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_appleMediaServicesProvider + 24));
  v11 = sub_2C8D90();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  v14 = a4;
  sub_2CC9A0();

  return sub_30B8(v10, &unk_3519B0, &qword_2D1230);
}

uint64_t sub_1F9744(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v332 = a3;
  v333 = a4;
  v336 = a2;
  v319 = a1;
  v307 = sub_2C9EC0();
  v306 = *(v307 - 8);
  __chkstk_darwin(v307);
  v305 = &v298 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v5 - 8);
  v326 = &v298 - v6;
  v7 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v7 - 8);
  v327 = &v298 - v8;
  v9 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v9 - 8);
  v328 = &v298 - v10;
  v11 = sub_2CB970();
  v12 = *(v11 - 8);
  v330 = v11;
  v331 = v12;
  __chkstk_darwin(v11);
  v329 = &v298 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = sub_2CCB30();
  v322 = *(v321 - 8);
  __chkstk_darwin(v321);
  v320 = &v298 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = sub_2CCAC0();
  v325 = *(v324 - 8);
  __chkstk_darwin(v324);
  v323 = &v298 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20410(&qword_34E480, &qword_2D2280);
  v17 = __chkstk_darwin(v16 - 8);
  v300 = &v298 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v304 = &v298 - v19;
  v308 = sub_2CA7B0();
  v314 = *(v308 - 8);
  v20 = __chkstk_darwin(v308);
  v317 = &v298 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v302 = &v298 - v22;
  v23 = sub_20410(&qword_354F10, &unk_2D7330);
  v24 = __chkstk_darwin(v23 - 8);
  v316 = &v298 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v318 = &v298 - v26;
  v27 = sub_2CE000();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v310 = &v298 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v313 = &v298 - v32;
  v33 = __chkstk_darwin(v31);
  v312 = &v298 - v34;
  v35 = __chkstk_darwin(v33);
  v309 = &v298 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v298 - v38;
  v40 = __chkstk_darwin(v37);
  v315 = &v298 - v41;
  v42 = __chkstk_darwin(v40);
  v299 = &v298 - v43;
  v44 = __chkstk_darwin(v42);
  v303 = &v298 - v45;
  v46 = __chkstk_darwin(v44);
  v301 = &v298 - v47;
  v48 = __chkstk_darwin(v46);
  v311 = &v298 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = &v298 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = &v298 - v54;
  __chkstk_darwin(v53);
  v57 = &v298 - v56;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v58 = sub_3ED0(v27, static Logger.default);
  swift_beginAccess();
  v334 = *(v28 + 16);
  v335 = v58;
  v59 = v58;
  v60 = v27;
  v334(v57, v59, v27);
  v61 = sub_2CDFE0();
  v62 = sub_2CE670();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_0, v61, v62, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Completed Media API Call, checking response code.", v63, 2u);
  }

  v64 = *(v28 + 8);
  v65 = v60;
  v64(v57, v60);
  v66 = v319;
  swift_beginAccess();
  if (*(v66 + 24) == 1)
  {
    v334(v55, v335, v60);
    v67 = sub_2CDFE0();
    v68 = sub_2CE680();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Got back no response code from Media API call. Erroring out.", v69, 2u);
    }

    v64(v55, v60);
    v70 = v325;
    v71 = v323;
    v72 = v324;
    (v325[13])(v323, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v324);
    v73 = v322;
    v74 = v320;
    v75 = v321;
    (*(v322 + 104))(v320, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v321);
    v335 = sub_2CCAE0();
    (*(v73 + 8))(v74, v75);
    (v70[1])(v71, v72);
    v76 = *(v336 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v334 = *(v336 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v336 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v76);
    v78 = v330;
    v77 = v331;
    v79 = v329;
    (*(v331 + 104))(v329, enum case for TypeOfIntent.switchNewsPreference(_:), v330);
    v80 = enum case for ActivityType.failed(_:);
    v81 = sub_2C9C20();
    v82 = *(v81 - 8);
    v83 = v328;
    (*(v82 + 104))(v328, v80, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
    v84 = sub_2CA130();
    v85 = v327;
    (*(*(v84 - 8) + 56))(v327, 1, 1, v84);
    v86 = sub_2C98F0();
    v87 = v326;
    (*(*(v86 - 8) + 56))(v326, 1, 1, v86);
    sub_2CB4C0();

    sub_30B8(v87, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v85, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v83, &qword_34CB88, &unk_2D0D90);
    (*(v77 + 8))(v79, v78);
    return sub_1FD750(v332, v333);
  }

  v89 = *(v66 + 16);
  v90 = v334;
  if ((v89 - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v334(v52, v335, v60);
    v105 = sub_2CDFE0();
    v106 = sub_2CE670();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_0, v105, v106, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Successfully set news preference, initiating playback.", v107, 2u);
    }

    v319 = v28 + 8;
    v64(v52, v60);
    v108 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse;
    v109 = v336;
    swift_beginAccess();
    v110 = v318;
    sub_F3F4(v109 + v108, v318, &qword_354F10, &unk_2D7330);
    v111 = sub_2CA870();
    v112 = *(v111 - 8);
    v113 = (*(v112 + 48))(v110, 1, v111);
    v114 = v317;
    if (v113 == 1)
    {
      goto LABEL_19;
    }

    v163 = v316;
    sub_F3F4(v318, v316, &qword_354F10, &unk_2D7330);
    v164 = (*(v112 + 88))(v163, v111);
    if (v164 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v198 = v314;
      if (v164 != enum case for Parse.pommesResponse(_:))
      {
        (*(v112 + 8))(v163, v111);
LABEL_19:
        v115 = v315;
        v334(v315, v335, v65);
        v116 = sub_2CDFE0();
        v117 = sub_2CE680();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&dword_0, v116, v117, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Unexpected parse type.", v118, 2u);
        }

        v64(v115, v65);
        v119 = v325;
        v120 = v323;
        v121 = v324;
        (v325[13])(v323, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v324);
        v122 = v322;
        v123 = v320;
        v124 = v321;
        (*(v322 + 104))(v320, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v321);
        v335 = sub_2CCAE0();
        (*(v122 + 8))(v123, v124);
        (v119[1])(v120, v121);
        v125 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
        v334 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
        sub_35E0((v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v125);
        v127 = v330;
        v126 = v331;
        v128 = v329;
        (*(v331 + 104))(v329, enum case for TypeOfIntent.switchNewsPreference(_:), v330);
        v129 = enum case for ActivityType.failed(_:);
        v130 = sub_2C9C20();
        v131 = *(v130 - 8);
        v132 = v328;
        (*(v131 + 104))(v328, v129, v130);
        (*(v131 + 56))(v132, 0, 1, v130);
        v133 = sub_2CA130();
        v134 = v327;
        (*(*(v133 - 8) + 56))(v327, 1, 1, v133);
        v135 = sub_2C98F0();
        v136 = v326;
        (*(*(v135 - 8) + 56))(v326, 1, 1, v135);
        sub_2CB4C0();

        sub_30B8(v136, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v134, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v132, &qword_34CB88, &unk_2D0D90);
        (*(v126 + 8))(v128, v127);
        sub_1FD78C(v332, v333);
        return sub_30B8(v318, &qword_354F10, &unk_2D7330);
      }

      (*(v112 + 96))(v163, v111);
      v316 = *v163;
      v334(v303, v335, v65);
      v199 = sub_2CDFE0();
      v200 = sub_2CE670();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        *v201 = 0;
        _os_log_impl(&dword_0, v199, v200, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference received .pommesResponse parse.", v201, 2u);
      }

      v64(v303, v65);
      v202 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
      swift_beginAccess();
      v203 = v300;
      sub_F3F4(v109 + v202, v300, &qword_34E480, &qword_2D2280);
      v204 = v308;
      if ((*(v198 + 48))(v203, 1, v308) == 1)
      {
        sub_30B8(v203, &qword_34E480, &qword_2D2280);
      }

      else
      {
        (*(v198 + 32))(v114, v203, v204);
        v229 = sub_1B8014();
        if (v229)
        {
          v230 = v229;
          v231 = v325;
          v232 = v323;
          v233 = v324;
          (v325[13])(v323, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v324);
          v234 = v322;
          v235 = v320;
          v236 = v321;
          (*(v322 + 104))(v320, enum case for AdditionalMetricsDescription.SourceFunction.successfulSwitchPreference(_:), v321);
          v237 = sub_2CCAE0();
          v334 = v238;
          v335 = v237;
          (*(v234 + 8))(v235, v236);
          (v231[1])(v232, v233);
          v239 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
          v336 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
          v325 = sub_35E0((v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v239);
          v240 = v330;
          v241 = v331;
          v242 = v329;
          (*(v331 + 104))(v329, enum case for TypeOfIntent.switchNewsPreference(_:), v330);
          v243 = enum case for ActivityType.completed(_:);
          v244 = sub_2C9C20();
          v245 = *(v244 - 8);
          v246 = v328;
          (*(v245 + 104))(v328, v243, v244);
          (*(v245 + 56))(v246, 0, 1, v244);
          v247 = sub_2CA130();
          v248 = v327;
          (*(*(v247 - 8) + 56))(v327, 1, 1, v247);
          v249 = sub_2C98F0();
          v250 = v326;
          (*(*(v249 - 8) + 56))(v326, 1, 1, v249);
          sub_2CB4C0();

          sub_30B8(v250, &qword_34CB78, &unk_2D0D80);
          sub_30B8(v248, &qword_34CB80, &unk_2D0B30);
          sub_30B8(v246, &qword_34CB88, &unk_2D0D90);
          (*(v241 + 8))(v242, v240);
          v251 = v317;
          sub_1356F8(v317, v230);
          v252 = v305;
          sub_2C9EA0();
          v332(v252);

          (*(v306 + 8))(v252, v307);
          (*(v314 + 8))(v251, v308);
          return sub_30B8(v318, &qword_354F10, &unk_2D7330);
        }

        (*(v198 + 8))(v114, v204);
      }

      v276 = v299;
      v334(v299, v335, v65);
      v277 = sub_2CDFE0();
      v278 = sub_2CE680();
      if (os_log_type_enabled(v277, v278))
      {
        v279 = swift_slowAlloc();
        *v279 = 0;
        _os_log_impl(&dword_0, v277, v278, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Failed to build playMediaIntent.", v279, 2u);
      }

      v64(v276, v65);
      v280 = v325;
      v281 = v323;
      v282 = v324;
      (v325[13])(v323, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v324);
      v283 = v322;
      v284 = v320;
      v285 = v321;
      (*(v322 + 104))(v320, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v321);
      v335 = sub_2CCAE0();
      (*(v283 + 8))(v284, v285);
      (v280[1])(v281, v282);
      v286 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
      v334 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v286);
      v288 = v330;
      v287 = v331;
      v289 = v329;
      (*(v331 + 104))(v329, enum case for TypeOfIntent.switchNewsPreference(_:), v330);
      v290 = enum case for ActivityType.failed(_:);
      v291 = sub_2C9C20();
      v292 = *(v291 - 8);
      v293 = v328;
      (*(v292 + 104))(v328, v290, v291);
      (*(v292 + 56))(v293, 0, 1, v291);
      v294 = sub_2CA130();
      v295 = v327;
      (*(*(v294 - 8) + 56))(v327, 1, 1, v294);
      v296 = sub_2C98F0();
      v297 = v326;
      (*(*(v296 - 8) + 56))(v326, 1, 1, v296);
      sub_2CB4C0();

      sub_30B8(v297, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v295, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v293, &qword_34CB88, &unk_2D0D90);
      (*(v287 + 8))(v289, v288);
      sub_1FD78C(v332, v333);

      return sub_30B8(v318, &qword_354F10, &unk_2D7330);
    }

    (*(v112 + 96))(v163, v111);
    v165 = *(v163 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v166 = v334;
    v334(v311, v335, v65);
    v167 = sub_2CDFE0();
    v168 = sub_2CE670();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_0, v167, v168, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference received .NLv3IntentPlusServerConversion parse.", v169, 2u);
    }

    v64(v311, v65);
    v170 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
    swift_beginAccess();
    v171 = v109 + v170;
    v172 = v304;
    sub_F3F4(v171, v304, &qword_34E480, &qword_2D2280);
    v173 = v314;
    v174 = v308;
    v175 = (*(v314 + 48))(v172, 1, v308);
    v317 = v165;
    if (v175 == 1)
    {
      sub_30B8(v172, &qword_34E480, &qword_2D2280);
    }

    else
    {
      v205 = v302;
      (*(v173 + 32))(v302, v172, v174);
      v206 = sub_2CA830();
      objc_opt_self();
      v207 = swift_dynamicCastObjCClass();
      if (v207)
      {
        v335 = v206;
        v208 = v325;
        v209 = v325[13];
        v210 = v323;
        v334 = v207;
        v211 = v324;
        v209(v323, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v324);
        v212 = v322;
        v213 = v320;
        v214 = v321;
        (*(v322 + 104))(v320, enum case for AdditionalMetricsDescription.SourceFunction.successfulSwitchPreference(_:), v321);
        v319 = sub_2CCAE0();
        (*(v212 + 8))(v213, v214);
        (v208[1])(v210, v211);
        v215 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
        v336 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
        sub_35E0((v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v215);
        v217 = v330;
        v216 = v331;
        v218 = v329;
        (*(v331 + 104))(v329, enum case for TypeOfIntent.switchNewsPreference(_:), v330);
        v219 = enum case for ActivityType.completed(_:);
        v220 = sub_2C9C20();
        v221 = *(v220 - 8);
        v222 = v328;
        (*(v221 + 104))(v328, v219, v220);
        (*(v221 + 56))(v222, 0, 1, v220);
        v223 = sub_2CA130();
        v224 = v327;
        (*(*(v223 - 8) + 56))(v327, 1, 1, v223);
        v225 = sub_2C98F0();
        v226 = v326;
        (*(*(v225 - 8) + 56))(v326, 1, 1, v225);
        sub_2CB4C0();

        sub_30B8(v226, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v224, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v222, &qword_34CB88, &unk_2D0D90);
        (*(v216 + 8))(v218, v217);
        v227 = v302;
        sub_1356F8(v302, v334);
        v228 = v305;
        sub_2C9EA0();
        v332(v228);

        (*(v306 + 8))(v228, v307);
        (*(v314 + 8))(v227, v308);
LABEL_51:
        v275 = sub_2CAFE0();
        (*(*(v275 - 8) + 8))(v316, v275);
        return sub_30B8(v318, &qword_354F10, &unk_2D7330);
      }

      (*(v173 + 8))(v205, v174);
    }

    v253 = v301;
    v166(v301, v335, v65);
    v254 = sub_2CDFE0();
    v255 = sub_2CE680();
    if (os_log_type_enabled(v254, v255))
    {
      v256 = swift_slowAlloc();
      *v256 = 0;
      _os_log_impl(&dword_0, v254, v255, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Failed to build playMediaIntent.", v256, 2u);
    }

    v64(v253, v65);
    v257 = v325;
    v258 = v323;
    v259 = v324;
    (v325[13])(v323, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v324);
    v260 = v322;
    v261 = v320;
    v262 = v321;
    (*(v322 + 104))(v320, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v321);
    v335 = sub_2CCAE0();
    (*(v260 + 8))(v261, v262);
    (v257[1])(v258, v259);
    v263 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v334 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v263);
    v265 = v330;
    v264 = v331;
    v266 = v329;
    (*(v331 + 104))(v329, enum case for TypeOfIntent.switchNewsPreference(_:), v330);
    v267 = enum case for ActivityType.failed(_:);
    v268 = sub_2C9C20();
    v269 = *(v268 - 8);
    v270 = v328;
    (*(v269 + 104))(v328, v267, v268);
    (*(v269 + 56))(v270, 0, 1, v268);
    v271 = sub_2CA130();
    v272 = v327;
    (*(*(v271 - 8) + 56))(v327, 1, 1, v271);
    v273 = sub_2C98F0();
    v274 = v326;
    (*(*(v273 - 8) + 56))(v326, 1, 1, v273);
    sub_2CB4C0();

    sub_30B8(v274, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v272, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v270, &qword_34CB88, &unk_2D0D90);
    (*(v264 + 8))(v266, v265);
    sub_1FD78C(v332, v333);

    goto LABEL_51;
  }

  v334(v39, v335, v60);
  v91 = sub_2CDFE0();
  v92 = sub_2CE680();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 134217984;
    *(v93 + 4) = v89;
    _os_log_impl(&dword_0, v91, v92, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Media API call returned unsuccessful statusCode: %ld", v93, 0xCu);
  }

  v64(v39, v60);
  if ((v89 - 600) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v94 = v310;
    v90(v310, v335, v60);
    v95 = sub_2CDFE0();
    v96 = sub_2CE680();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 134217984;
      *(v97 + 4) = v89;
      _os_log_impl(&dword_0, v95, v96, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Media API call returned %ld, will not attempt a retry and log this as a failure.", v97, 0xCu);
    }

    v64(v94, v60);
    v98 = v325;
    v99 = v323;
    v100 = v324;
    (v325[13])(v323, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v324);
    v101 = v322;
    v102 = v320;
    v103 = v321;
    (*(v322 + 104))(v320, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v321);
    v338 = 0;
    v339 = 0xE000000000000000;
    sub_2CECB0(38);

    v338 = 0x6465766965636552;
    v339 = 0xE900000000000020;
    v337 = v89;
    v340._countAndFlagsBits = sub_2CEE70();
    sub_2CE350(v340);

    v341._countAndFlagsBits = 0xD00000000000001BLL;
    v341._object = 0x80000000002DF680;
    sub_2CE350(v341);
    v335 = sub_2CCAE0();

    (*(v101 + 8))(v102, v103);
    (v98[1])(v99, v100);
    v104 = (v336 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider);
LABEL_28:
    v151 = v104[3];
    v334 = v104[4];
    sub_35E0(v104, v151);
    v153 = v330;
    v152 = v331;
    v154 = v329;
    (*(v331 + 104))(v329, enum case for TypeOfIntent.switchNewsPreference(_:), v330);
    v155 = enum case for ActivityType.failed(_:);
    v156 = sub_2C9C20();
    v157 = *(v156 - 8);
    v158 = v328;
    (*(v157 + 104))(v328, v155, v156);
    (*(v157 + 56))(v158, 0, 1, v156);
    v159 = sub_2CA130();
    v160 = v327;
    (*(*(v159 - 8) + 56))(v327, 1, 1, v159);
    v161 = sub_2C98F0();
    v162 = v326;
    (*(*(v161 - 8) + 56))(v326, 1, 1, v161);
    sub_2CB4C0();

    sub_30B8(v162, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v160, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v158, &qword_34CB88, &unk_2D0D90);
    (*(v152 + 8))(v154, v153);
    return sub_1FC5F8(v332, v333);
  }

  v137 = v309;
  v90(v309, v335, v60);
  v138 = sub_2CDFE0();
  v139 = sub_2CE680();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 134217984;
    *(v140 + 4) = v89;
    _os_log_impl(&dword_0, v138, v139, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Media API call returned %ld, will attempt a retry if we haven't already done so once.", v140, 0xCu);
  }

  v64(v137, v60);
  v141 = v336;
  if (*(v336 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_httpCallAttemptState))
  {
    v90(v313, v335, v60);
    v142 = sub_2CDFE0();
    v143 = sub_2CE680();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_0, v142, v143, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Already attempted a retry of Media API call, will not do so again.", v144, 2u);
    }

    v64(v313, v60);
    v145 = v325;
    v146 = v323;
    v147 = v324;
    (v325[13])(v323, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v324);
    v148 = v322;
    v149 = v320;
    v150 = v321;
    (*(v322 + 104))(v320, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v321);
    v335 = sub_2CCAE0();
    (*(v148 + 8))(v149, v150);
    (v145[1])(v146, v147);
    v104 = (v141 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider);
    goto LABEL_28;
  }

  *(v336 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_httpCallAttemptState) = 1;
  v90(v312, v335, v60);
  v176 = sub_2CDFE0();
  v177 = sub_2CE670();
  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    *v178 = 0;
    _os_log_impl(&dword_0, v176, v177, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Attempting a retry of Media API call.", v178, 2u);
  }

  v64(v312, v60);
  v179 = v325;
  v180 = v323;
  v181 = v324;
  (v325[13])(v323, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v324);
  v182 = v322;
  v183 = v320;
  v184 = v321;
  (*(v322 + 104))(v320, enum case for AdditionalMetricsDescription.SourceFunction.retrySwitchPreference(_:), v321);
  v335 = sub_2CCAE0();
  (*(v182 + 8))(v183, v184);
  (v179[1])(v180, v181);
  v185 = *(v141 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
  v336 = *(v141 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0((v141 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v185);
  v187 = v330;
  v186 = v331;
  v188 = v329;
  (*(v331 + 104))(v329, enum case for TypeOfIntent.switchNewsPreference(_:), v330);
  v189 = enum case for ActivityType.failed(_:);
  v190 = sub_2C9C20();
  v191 = *(v190 - 8);
  v192 = v328;
  (*(v191 + 104))(v328, v189, v190);
  (*(v191 + 56))(v192, 0, 1, v190);
  v193 = sub_2CA130();
  v194 = v327;
  (*(*(v193 - 8) + 56))(v327, 1, 1, v193);
  v195 = sub_2C98F0();
  v196 = v326;
  (*(*(v195 - 8) + 56))(v326, 1, 1, v195);
  sub_2CB4C0();

  sub_30B8(v196, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v194, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v192, &qword_34CB88, &unk_2D0D90);
  (*(v186 + 8))(v188, v187);
  v197 = v305;
  sub_2C9E70();
  v332(v197);
  return (*(v306 + 8))(v197, v307);
}