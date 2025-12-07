uint64_t CardInfo.init(options:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for CardInfo(0);
  result = sub_2601D0();
  *a2 = a1;
  return result;
}

uint64_t CardInfo.options.getter()
{
  v1 = *v0;
  type metadata accessor for CardInfo(0);

  v15 = &type metadata for String;
  *&v14 = sub_2601C0();
  *(&v14 + 1) = v2;
  sub_FBD8(&v14, &v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v1;
  v4 = sub_17450(&v12, v13);
  v5 = __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7, v5);
  sub_17CD8(*v7, v7[1], 0x65636E6174736E69, 0xEA00000000006449, isUniquelyReferenced_nonNull_native, &v11);
  sub_3080(&v12);
  return v11;
}

uint64_t sub_17450(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t CardInfo.init(with:alwaysPresentNewCardSet:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v54 = a3;
  v4 = sub_2607B0();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v9 = sub_260060();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CardInfo(0);
  v52 = *(v13 - 8);
  v53 = v13;
  __chkstk_darwin(v13);
  v50 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2E18(a1, a1[3]);
  sub_2608C0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v48 = v4;
    sub_17EBC(v8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_2E18(a1, a1[3]);
    v15 = sub_2608B0();
    if (v15)
    {
      v16 = v15;
      sub_2EF0(&qword_316540, &qword_268400);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2683F0;
      *(inited + 32) = 25705;
      *(inited + 40) = 0xE200000000000000;
      sub_2E18(a1, a1[3]);
      *(inited + 48) = sub_2606E0();
      *(inited + 56) = v18;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 7107189;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 96) = sub_260020();
      *(inited + 104) = v19;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x656372756F736572;
      *(inited + 136) = 0xE800000000000000;
      v20 = sub_2EF0(&qword_316548, &qword_268408);
      *(inited + 144) = v16;
      *(inited + 168) = v20;
      *(inited + 176) = 0xD000000000000017;
      *(inited + 184) = 0x8000000000290310;
      *(inited + 216) = &type metadata for Bool;
      *(inited + 192) = v51 & 1;
      v21 = sub_EAA0(inited);
      swift_setDeallocating();
      sub_2EF0(&qword_3161C0, &qword_267FA0);
      swift_arrayDestroy();
      v22 = v53;
      v23 = v50;
      sub_2601D0();
      (*(v10 + 8))(v12, v9);
      goto LABEL_14;
    }

    v48 = v4;
    (*(v10 + 8))(v12, v9);
  }

  v24 = a1[4];
  sub_2E18(a1, a1[3]);
  v45 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = sub_264A60();
  v49 = &v45;
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v45 - v28;
  sub_2606D0();
  v30 = *(AssociatedTypeWitness - 8);
  if ((*(v30 + 48))(v29, 1, AssociatedTypeWitness) != 1)
  {
    v55[3] = AssociatedTypeWitness;
    v55[4] = swift_getAssociatedConformanceWitness();
    sub_10934(v55);
    (*(v30 + 32))();
    swift_getAssociatedConformanceWitness();
    v31 = sub_260800();
    v33 = v32;
    sub_3080(v55);
    if (!v33)
    {
      goto LABEL_16;
    }

    sub_2E18(a1, a1[3]);
    v34 = sub_260860();
    if (v34)
    {
      v35 = v48;
      if (v34 != 1)
      {

        goto LABEL_16;
      }

      v36 = &enum case for MResourceType.books(_:);
    }

    else
    {
      v36 = &enum case for MResourceType.audiobooks(_:);
      v35 = v48;
    }

    v37 = *v36;
    v38 = v46;
    v39 = v47;
    v40 = *(v47 + 104);
    v48 = v35;
    v40(v46, v37, v35);
    sub_2EF0(&qword_316540, &qword_268400);
    v41 = swift_initStackObject();
    *(v41 + 32) = 0x644965726F7473;
    *(v41 + 16) = xmmword_2683F0;
    *(v41 + 40) = 0xE700000000000000;
    *(v41 + 48) = v31;
    *(v41 + 56) = v33;
    *(v41 + 72) = &type metadata for String;
    *(v41 + 80) = 1701869940;
    *(v41 + 88) = 0xE400000000000000;
    *(v41 + 96) = sub_2607A0();
    *(v41 + 104) = v42;
    *(v41 + 120) = &type metadata for String;
    *(v41 + 128) = 0x446B6E694C736168;
    *(v41 + 136) = 0xEB00000000617461;
    *(v41 + 144) = 1;
    *(v41 + 168) = &type metadata for Bool;
    *(v41 + 176) = 0xD000000000000017;
    *(v41 + 184) = 0x8000000000290310;
    *(v41 + 216) = &type metadata for Bool;
    *(v41 + 192) = v51 & 1;
    v21 = sub_EAA0(v41);
    swift_setDeallocating();
    sub_2EF0(&qword_3161C0, &qword_267FA0);
    swift_arrayDestroy();
    v22 = v53;
    v23 = v50;
    sub_2601D0();
    (*(v39 + 8))(v38, v48);
LABEL_14:
    *v23 = v21;
    v43 = v54;
    sub_17FA8(v23, v54);
    (*(v52 + 56))(v43, 0, 1, v22);
    return sub_3080(a1);
  }

  (*(v27 + 8))(v29, v26);
LABEL_16:
  sub_3080(a1);
  return (*(v52 + 56))(v54, 1, 1, v53);
}

_OWORD *sub_17CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v29 = &type metadata for String;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v10 = *a6;
  v12 = sub_D410(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      sub_3080(v19);
      return sub_FBD8(&v28, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    sub_14EC2C();
    goto LABEL_7;
  }

  sub_14D5DC(v15, a5 & 1);
  v21 = sub_D410(a3, a4);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_264FB0();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_17450(&v28, &type metadata for String);
  v24 = __chkstk_darwin(v23);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  sub_17F24(v12, a3, a4, *v26, v26[1], v18);

  return sub_3080(&v28);
}

uint64_t sub_17EBC(uint64_t a1)
{
  v2 = sub_2EF0(&qword_322C70, &qword_272AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_17F24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_FBD8(&v12, (a6[7] + 32 * a1));
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

uint64_t sub_17FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18020(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2601E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_180E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2601E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_18184(uint64_t a1)
{
  sub_18208(319);
  if (v1 <= 0x3F)
  {
    sub_2601E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18208(uint64_t a1)
{
  if (!qword_3165B8)
  {
    sub_2F9C(&unk_3165C0, &qword_28B080);
    v1 = sub_2642E0();
    if (!v2)
    {
      atomic_store(v1, &qword_3165B8);
    }
  }
}

void GenericGeometryReference.init(frame:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

__n128 GenericGeometryReferenceBuilder.makeReference(context:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t GeometryCache.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_EBD0(_swiftEmptyArrayStorage);
  sub_2EF0(&qword_316608, &unk_268430);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t GeometryCache.init()()
{
  v1 = sub_EBD0(_swiftEmptyArrayStorage);
  sub_2EF0(&qword_316608, &unk_268430);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void sub_18394(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1AFF0((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

double sub_183F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_D488(a2);
    if (v6)
    {
      sub_30CC(*(v4 + 56) + 40 * v5, a3);
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_F7E4(a2, v6);
  sub_30CC(a3, v5);
  return sub_D180(v5, v6);
}

uint64_t GeometryCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t GeometryCache.size(for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1C680((v1 + 16), v7);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    sub_2E18(v7, v8);
    (*(v3 + 8))(v2, v3);
    v5 = v4;
    sub_3080(v7);
  }

  else
  {
    sub_8E80(v7, &qword_316110, &qword_267F00);
    return 0;
  }

  return v5;
}

uint64_t sub_18634()
{
  sub_1C238();
  sub_261CB0();
  return v1;
}

uint64_t View.geometryCache(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  sub_262A90();
}

void *sub_186F8@<X0>(void *a1@<X8>)
{
  sub_1C238();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_18748(uint64_t *a1)
{
  sub_1C238();

  return sub_261CC0();
}

uint64_t View.geometryCache(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  type metadata accessor for GeometryCache();
  sub_263C70();
  sub_264190();
  sub_262A90();
}

uint64_t View.cacheGeometry<A>(for:referenceBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a5;
  v20[0] = a3;
  v10 = *(a4 - 8);
  __chkstk_darwin(a1);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CacheGeometryViewModifier(0, v13, v14, v13);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v20 - v17;
  sub_1B09C(a1, v21);
  (*(v10 + 16))(v12, a2, a4);
  sub_18A14(v21, v12, a4, a6, v18);
  sub_262E30();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_18A14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 40) = 0;
  *(a5 + 48) = swift_getKeyPath();
  *(a5 + 56) = 0;
  *(a5 + 64) = swift_getKeyPath();
  *(a5 + 72) = 0;
  memset(&v18[3], 0, 32);
  v19 = 1;
  sub_18CA0(v18);
  v10 = v18[1];
  *(a5 + 80) = v18[0];
  *(a5 + 96) = v10;
  v11 = *a1;
  v12 = a1[1];
  *(a5 + 112) = v18[2];
  *(a5 + 128) = v11;
  *(a5 + 144) = v12;
  *(a5 + 160) = *(a1 + 4);
  v14 = type metadata accessor for CacheGeometryViewModifier(0, a3, a4, v13);
  v15 = *(*(a3 - 8) + 32);
  v16 = a5 + *(v14 + 52);

  return v15(v16, a2, a3);
}

BOOL sub_18B88(uint64_t a1, uint64_t a2)
{
  sub_1B09C(a1, v9);
  sub_1B09C(a2, &v11);
  if (v10)
  {
    sub_1B09C(v9, v8);
    if (*(&v12 + 1))
    {
      v6[0] = v11;
      v6[1] = v12;
      v7 = v13;
      v4 = sub_264B50();
      sub_F778(v6);
      sub_F778(v8);
      sub_8E80(v9, &qword_316610, &qword_268BA0);
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      return CGRectEqualToRect(*(a1 + 40), *(a2 + 40));
    }

    sub_F778(v8);
  }

  else if (!*(&v12 + 1))
  {
    sub_8E80(v9, &qword_316610, &qword_268BA0);
    return CGRectEqualToRect(*(a1 + 40), *(a2 + 40));
  }

  sub_8E80(v9, &qword_316880, &qword_2688B8);
  return 0;
}

double sub_18CA0@<D0>(uint64_t a2@<X8>)
{
  sub_2EF0(&qword_3167E0, qword_268710);
  sub_2631D0();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_18D20@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a1;
  v106 = a3;
  swift_getWitnessTable();
  v4 = sub_2620B0();
  v80 = *(v4 - 8);
  __chkstk_darwin(v4);
  v79 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v78 = &v77 - v7;
  v95 = a2;
  v8 = *(a2 - 8);
  a2 -= 8;
  v96 = v8;
  __chkstk_darwin(v9);
  v92 = v10;
  v94 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  type metadata accessor for CacheGeometryViewModifier.KeyFramePair(255, v11, v12, v13);
  swift_getWitnessTable();
  sub_262280();
  v14 = sub_261730();
  WitnessTable = swift_getWitnessTable();
  v126 = &protocol witness table for EmptyView;
  v127 = WitnessTable;
  v16 = swift_getWitnessTable();
  v97 = v14;
  v85 = v16;
  sub_261F60();
  v17 = sub_261730();
  v86 = *(v17 - 8);
  __chkstk_darwin(v17);
  v107 = &v77 - v18;
  v19 = sub_261730();
  v90 = *(v19 - 8);
  __chkstk_darwin(v19);
  v89 = &v77 - v20;
  v21 = sub_261730();
  v93 = *(v21 - 8);
  __chkstk_darwin(v21);
  v108 = &v77 - v22;
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v112 = v23;
  v124 = v23;
  v125 = v24;
  v87 = v17;
  v82 = swift_getWitnessTable();
  v122 = v82;
  v123 = &protocol witness table for _AppearanceActionModifier;
  v91 = v19;
  v83 = swift_getWitnessTable();
  v120 = v83;
  v121 = &protocol witness table for _AppearanceActionModifier;
  v25 = swift_getWitnessTable();
  v110 = v12;
  v26 = *(v12 + 8);
  v105 = v21;
  v116 = v21;
  v117 = v11;
  v113 = v11;
  v118 = v25;
  v119 = v26;
  v103 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v81 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v88 = &v77 - v30;
  v31 = sub_261C90();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = OpaqueTypeMetadata2;
  v101 = sub_261F90();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v77 - v35;
  v36 = *(v111 + 48);
  v37 = v111;
  LOBYTE(OpaqueTypeMetadata2) = *(v111 + 56);

  v104 = v25;
  if ((OpaqueTypeMetadata2 & 1) == 0)
  {
    sub_264900();
    v39 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    j__swift_release(v36);
    v38 = (*(v32 + 8))(v34, v31);
    v36 = v116;
  }

  if (v36)
  {
    __chkstk_darwin(v38);
    v40 = v110;
    *(&v77 - 4) = v113;
    *(&v77 - 3) = v40;
    v41 = v40;
    *(&v77 - 2) = v37;
    *(&v77 - 1) = v36;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2629F0();
    v85 = v4;
    v42 = v96;
    v43 = v37;
    v102 = *(v96 + 16);
    v44 = v94;
    v45 = v95;
    v102(v94, v43, v95);
    v46 = *(v42 + 80);
    v97 = (v46 + 32) & ~v46;
    v47 = (v92 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    *(v48 + 16) = v113;
    *(v48 + 24) = v41;
    v96 = *(v42 + 32);
    (v96)(v48 + ((v46 + 32) & ~v46), v44, v45);
    v109 = v36;
    *(v48 + v47) = v36;

    v49 = v89;
    v50 = v87;
    v51 = v107;
    sub_262AB0();

    (*(v86 + 8))(v51, v50);
    v102(v44, v111, v45);
    v52 = swift_allocObject();
    v53 = v110;
    *(v52 + 16) = v113;
    *(v52 + 24) = v53;
    (v96)(v52 + v97, v44, v45);
    *(v52 + v47) = v109;

    v54 = v91;
    sub_262E40();

    (*(v90 + 8))(v49, v54);
    v102(v44, v111, v45);
    v55 = v113;
    v56 = swift_allocObject();
    v57 = v110;
    *(v56 + 16) = v55;
    *(v56 + 24) = v57;
    (v96)(v56 + v97, v44, v45);
    *(v56 + v47) = v109;

    v58 = v81;
    v59 = v105;
    v60 = v104;
    v61 = v103;
    v62 = v108;
    sub_262E50();

    (*(v93 + 8))(v62, v59);
    v116 = v59;
    v117 = v55;
    v118 = v60;
    v119 = v61;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = v88;
    v65 = v99;
    sub_1609C();
    v66 = *(v84 + 8);
    v66(v58, v65);
    sub_1609C();
    v67 = v98;
    sub_1D738(v58, v65, v85, OpaqueTypeConformance2, v112);

    v66(v58, v65);
    v66(v64, v65);
  }

  else
  {
    v68 = v78;
    v69 = v112;
    sub_1609C();
    v70 = v79;
    sub_1609C();
    v59 = v105;
    v116 = v105;
    v117 = v113;
    v60 = v104;
    v61 = v103;
    v118 = v104;
    v119 = v103;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = v98;
    sub_1D830(v70, v99, v4, v71, v69);
    v73 = *(v80 + 8);
    v73(v70, v4);
    v74 = v4;
    v67 = v72;
    v73(v68, v74);
  }

  v116 = v59;
  v117 = v113;
  v118 = v60;
  v119 = v61;
  v114 = swift_getOpaqueTypeConformance2();
  v115 = v112;
  v75 = v101;
  swift_getWitnessTable();
  sub_1609C();
  return (*(v100 + 8))(v67, v75);
}

uint64_t sub_19A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  *&v27 = a4;
  v24 = a1;
  v25 = a2;
  v7 = type metadata accessor for CacheGeometryViewModifier(0, a3, a4, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  v23 = *(v8 + 16);
  v23(&v21 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v15 = v27;
  *(v14 + 16) = a3;
  *(v14 + 24) = v15;
  v22 = *(v8 + 32);
  v22(v14 + v13, v12, v7);
  (v23)(v12, v24, v7);
  v16 = swift_allocObject();
  v17 = v27;
  *(v16 + 16) = a3;
  *(v16 + 24) = v17;
  v22(v16 + v13, v12, v7);
  *(v16 + ((v13 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  type metadata accessor for CacheGeometryViewModifier.KeyFramePair(0, a3, v17, v18);

  swift_getWitnessTable();
  sub_262B90();

  v30 = v33;
  v27 = v34;
  v31 = v34;
  v32 = v35;
  sub_262280();
  sub_261730();
  WitnessTable = swift_getWitnessTable();
  v28 = &protocol witness table for EmptyView;
  v29 = WitnessTable;
  swift_getWitnessTable();
  sub_1609C();

  v33 = v36;
  v27 = v37;
  v34 = v37;
  v35 = v38;
  sub_1609C();
}

void sub_19DAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B09C(a2 + 128, v16);
  v10 = type metadata accessor for CacheGeometryViewModifier(0, a3, a4, v9);
  sub_19E3C(a1, v10);
  v11 = v16[1];
  *a5 = v16[0];
  *(a5 + 16) = v11;
  *(a5 + 32) = v17;
  *(a5 + 40) = v12;
  *(a5 + 48) = v13;
  *(a5 + 56) = v14;
  *(a5 + 64) = v15;
}

void sub_19E3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_262070();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261C90();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 + 24) + 32))(&v33, *(a2 + 16), v11);
  if (v33)
  {
    sub_261420();
    return;
  }

  v14 = *(v3 + 64);
  if (*(v3 + 72) == 1)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_264900();
    v27 = v8;
    v15 = sub_2624B0();
    v8 = v27;
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v14, 0);
    (*(v10 + 8))(v13, v9);
    if (LOBYTE(v30[0]) != 1)
    {
      goto LABEL_10;
    }
  }

  sub_4081C(&v28);
  if (v29)
  {
    sub_F7CC(&v28, v30);
    v16 = v31;
    v17 = v32;
    sub_2E18(v30, v31);
    sub_2621C0();
    sub_261440();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    (*(v6 + 8))(v8, v5);
    (*(v17 + 8))(v16, v17, v19, v21, v23, v25);
    sub_3080(v30);
    return;
  }

  sub_8E80(&v28, &qword_3167B8, &qword_268700);
LABEL_10:
  if (qword_315890 != -1)
  {
    swift_once();
  }

  v26 = sub_261620();
  sub_B080(v26, qword_3165F0);
  sub_261430();
}

uint64_t sub_1A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  v14 = sub_261C90();
  v33 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B09C(a1, &v35);
  if (!*(&v36 + 1))
  {
    return sub_8E80(&v35, &qword_316610, &qword_268BA0);
  }

  v38[0] = v35;
  v38[1] = v36;
  v39 = v37;
  v18 = *(a1 + 40);
  v31 = *(a1 + 56);
  v32 = v18;
  v19 = type metadata accessor for CacheGeometryViewModifier(0, a4, a5, v17);
  v20 = *(a5 + 32);
  v30 = *(v19 + 52);
  v20(&v35, a4, a5);
  v21 = v35;
  v22 = *(a2 + 64);
  if (*(a2 + 72) != 1)
  {
    v28 = v35;

    sub_264900();
    v27 = v14;
    v23 = sub_2624B0();
    v29 = a3;
    v24 = v23;
    sub_260D10();

    a3 = v29;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v22, 0);
    (*(v33 + 8))(v16, v27);
    v21 = v28;
    LOBYTE(v22) = v34;
  }

  v36 = v31;
  v35 = v32;
  LOBYTE(v37) = v21;
  BYTE1(v37) = v22 & 1;
  (*(a5 + 40))(&v35, a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AF3C(v13, v38, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  return sub_F778(v38);
}

uint64_t sub_1A51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B09C(a1 + 128, &v13);
  if (!*(&v14 + 1))
  {
    return sub_8E80(&v13, &qword_316610, &qword_268BA0);
  }

  v17[0] = v13;
  v17[1] = v14;
  v18 = v15;
  v5 = *(a2 + 16);
  __chkstk_darwin(v4);
  os_unfair_lock_lock((v5 + 24));
  sub_1C680((v5 + 16), &v13);
  os_unfair_lock_unlock((v5 + 24));
  v6 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v7 = v15;
    sub_2E18(&v13, *(&v14 + 1));
    (*(v7 + 8))(v6, v7);
    sub_3080(&v13);
  }

  else
  {
    sub_8E80(&v13, &qword_316110, &qword_267F00);
  }

  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v11 = *(a1 + 96);
  v13 = *(a1 + 80);
  v14 = v11;
  LOBYTE(v15) = v9;
  v16 = v10;
  sub_2EF0(&qword_3167F0, &qword_268778);
  v12 = sub_2631F0();
  __chkstk_darwin(v12);
  os_unfair_lock_lock((v5 + 24));
  sub_1BDE0();
  os_unfair_lock_unlock((v5 + 24));
  return sub_F778(v17);
}

uint64_t sub_1A704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v28[-v10];
  v12 = sub_261C90();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B09C(a1 + 128, &v39);
  if (!*(&v40 + 1))
  {
    return sub_8E80(&v39, &qword_316610, &qword_268BA0);
  }

  v35 = v13;
  v43[0] = v39;
  v43[1] = v40;
  v44 = v41;
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v18 = *(a1 + 96);
  v39 = *(a1 + 80);
  v40 = v18;
  LOBYTE(v41) = v16;
  v42 = v17;
  sub_2EF0(&qword_3167F0, &qword_268778);
  sub_2631E0();
  if ((v38 & 1) == 0)
  {
    v34 = v36;
    v33 = v37;
    v20 = type metadata accessor for CacheGeometryViewModifier(0, a3, a4, v19);
    v21 = *(a4 + 32);
    v32 = *(v20 + 52);
    v21(&v39, a3, a4);
    v22 = v39;
    v23 = *(a1 + 64);
    if ((*(a1 + 72) & 1) == 0)
    {
      v29 = v39;

      sub_264900();
      v30 = v9;
      v24 = sub_2624B0();
      v31 = a2;
      v25 = v24;
      v9 = v30;
      sub_260D10();

      a2 = v31;
      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(v23, 0);
      (*(v35 + 8))(v15, v12);
      v22 = v29;
      LOBYTE(v23) = v36;
    }

    v39 = v34;
    v40 = v33;
    LOBYTE(v41) = v22;
    BYTE1(v41) = v23 & 1;
    (*(a4 + 40))(&v39, a3, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1AF3C(v11, v43, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v11, AssociatedTypeWitness);
  }

  return sub_F778(v43);
}

uint64_t sub_1AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = v36 - v13;
  v15 = sub_261C90();
  v39 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B09C(a3 + 128, &v41);
  if (!*(&v42 + 1))
  {
    return sub_8E80(&v41, &qword_316610, &qword_268BA0);
  }

  v36[0] = v15;
  v36[1] = a2;
  v37 = v12;
  v38 = a4;
  v44[0] = v41;
  v44[1] = v42;
  v45 = v43;
  v19 = *(a4 + 16);
  __chkstk_darwin(v18);
  v36[-2] = v44;
  os_unfair_lock_lock((v19 + 24));
  sub_1C680((v19 + 16), &v41);
  os_unfair_lock_unlock((v19 + 24));
  v20 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v21 = v43;
    sub_2E18(&v41, *(&v42 + 1));
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_3080(&v41);
    (*(a6 + 32))(&v41, a5, a6);
    v29 = v41;
    v30 = *(a3 + 64);
    if (*(a3 + 72) != 1)
    {
      v31 = v41;

      sub_264900();
      v32 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(v30, 0);
      (*(v39 + 8))(v17, v36[0]);
      v29 = v31;
      LOBYTE(v30) = v40;
    }

    v33 = v37;
    *&v41 = v22;
    *(&v41 + 1) = v24;
    *&v42 = v26;
    *(&v42 + 1) = v28;
    LOBYTE(v43) = v29;
    BYTE1(v43) = v30 & 1;
    (*(a6 + 40))(&v41, a5, a6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1AF3C(v14, v44, v38, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v33 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    sub_8E80(&v41, &qword_316110, &qword_267F00);
  }

  return sub_F778(v44);
}

uint64_t sub_1AE78()
{
  v0 = sub_261620();
  sub_B600(v0, qword_3165F0);
  v1 = sub_B080(v0, qword_3165F0);
  sub_264B70();
  return (*(*(v0 - 8) + 104))(v1, enum case for CoordinateSpace.named(_:), v0);
}

uint64_t sub_1AF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[3] = a4;
  v11[4] = a5;
  v8 = sub_10934(v11);
  (*(*(a4 - 8) + 16))(v8, a1, a4);
  v9 = *(a3 + 16);
  os_unfair_lock_lock(v9 + 6);
  sub_1BDC4(&v9[4]);
  os_unfair_lock_unlock(v9 + 6);
  return sub_3080(v11);
}

void *sub_1B00C@<X0>(void *a1@<X8>)
{
  sub_1C238();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_1B09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316610, &qword_268BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B110()
{
  result = qword_316618;
  if (!qword_316618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316618);
  }

  return result;
}

unint64_t sub_1B180(uint64_t a1)
{
  result = sub_1B1A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B1A8()
{
  result = qword_316650;
  if (!qword_316650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316650);
  }

  return result;
}

__n128 sub_1B248(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B25C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B2A0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B3A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CacheGeometryViewModifier(255, a1[1], a1[3], a4);
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B468(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2F9C(a2, a3);
  sub_261730();
  sub_8E38(a4, a2, a3, a5);
  return swift_getWitnessTable();
}

void sub_1B510(uint64_t a1)
{
  sub_1BAE4(319, &qword_3167B0, &qword_3167B8, &qword_268700, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1BAE4(319, &qword_3167C0, &qword_3167C8, &qword_268708, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1BB48(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1BAE4(319, &qword_3167D8, &qword_3167E0, qword_268710, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_1BB48(319, &qword_3167E8, &type metadata for AnyHashable, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
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

uint64_t sub_1B6C4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v10 = ((v6 + 168) & ~v6) + v7;
  v11 = 8 * (((v6 - 88) & ~v6) + v7);
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((((v16 + 135) & 0xFFFFFFFFFFFFFFF8) + v6 + 40) & ~v6);
      }

      v17 = *(v16 + 120);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = v17 - 1;
      if (v18 < 0)
      {
        v18 = -1;
      }

      return (v18 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1B868(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 168) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * (((v9 - 88) & ~v9) + *(*(*(a4 + 16) - 8) + 64)))) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * (((v9 - 88) & ~v9) + *(*(*(a4 + 16) - 8) + 64))));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v7 > 0x7FFFFFFE)
  {
    v20 = *(v6 + 56);

    v20((((v19 + 135) & 0xFFFFFFFFFFFFFFF8) + v9 + 40) & ~v9);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(v19 + 120) = 0;
    *(v19 + 104) = 0u;
    *(v19 + 88) = 0u;
    *(v19 + 80) = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(v19 + 120) = a2;
  }
}

void sub_1BAE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BB48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BC38(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CacheGeometryViewModifier(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4 + v8, v9, v5, v6);
}

uint64_t sub_1BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for CacheGeometryViewModifier(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AA9C(a1, a2, v4 + v10, v11, v7, v8);
}

uint64_t sub_1BDE0()
{
  sub_F7E4(*(v0 + 16), v4);
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  return sub_D180(v2, v4);
}

uint64_t sub_1BE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for CacheGeometryViewModifier(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = v4 + v7;
  if (*(v4 + v7 + 40))
  {
    if (*(v8 + 24))
    {
      sub_3080((v4 + v7));
    }
  }

  else
  {
  }

  j__swift_release(*(v8 + 48));
  sub_4054(*(v8 + 64), *(v8 + 72));

  if (*(v8 + 152))
  {
    sub_3080((v8 + 128));
  }

  (*(*(v5 - 8) + 8))(v8 + *(v6 + 52), v5);

  return swift_deallocObject();
}

void sub_1BF80(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for CacheGeometryViewModifier(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_19DAC(a1, v9, v6, v7, a3);
}

uint64_t sub_1C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for CacheGeometryViewModifier(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = v4 + v7;
  if (*(v4 + v7 + 40))
  {
    if (*(v8 + 24))
    {
      sub_3080((v4 + v7));
    }
  }

  else
  {
  }

  j__swift_release(*(v8 + 48));
  sub_4054(*(v8 + 64), *(v8 + 72));

  if (*(v8 + 152))
  {
    sub_3080((v8 + 128));
  }

  (*(*(v5 - 8) + 8))(v8 + *(v6 + 52), v5);

  return swift_deallocObject();
}

uint64_t sub_1C170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CacheGeometryViewModifier(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A1DC(a1, v4 + v9, v10, v6, v7);
}

unint64_t sub_1C238()
{
  result = qword_3167F8[0];
  if (!qword_3167F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3167F8);
  }

  return result;
}

uint64_t sub_1C29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C2D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1C2FC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1C37C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1C3E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for CacheGeometryViewModifier(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_2620B0();
  type metadata accessor for CacheGeometryViewModifier.KeyFramePair(255, v4, v5, v6);
  swift_getWitnessTable();
  sub_262280();
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_261F60();
  sub_261730();
  sub_261730();
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_261F90();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

Swift::Int sub_1C698()
{
  sub_265050();
  sub_262730();
  sub_1D6F0(&qword_316188, &type metadata accessor for Font.TextStyle, &protocol conformance descriptor for Font.TextStyle);
  sub_264330();
  sub_261690();
  sub_1D6F0(&qword_316190, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  sub_264330();
  return sub_265080();
}

uint64_t sub_1C784(uint64_t a1)
{
  sub_262730();
  sub_1D6F0(&qword_316188, &type metadata accessor for Font.TextStyle, &protocol conformance descriptor for Font.TextStyle);
  sub_264330();
  sub_261690();
  sub_1D6F0(&qword_316190, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  return sub_264330();
}

Swift::Int sub_1C858(uint64_t a1)
{
  sub_265050();
  sub_262730();
  sub_1D6F0(&qword_316188, &type metadata accessor for Font.TextStyle, &protocol conformance descriptor for Font.TextStyle);
  sub_264330();
  sub_261690();
  sub_1D6F0(&qword_316190, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  sub_264330();
  return sub_265080();
}

uint64_t sub_1C940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_262720() & 1) == 0)
  {
    return 0;
  }

  return sub_261680();
}

int *sub_1C9A8()
{
  result = sub_ED04(_swiftEmptyArrayStorage);
  off_316888[0] = result;
  return result;
}

id sub_1C9D0()
{
  v1 = v0;
  v2 = sub_262730();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Font.TextStyle.largeTitle(_:))
  {
    v8 = &kCTUIFontTextStyleTitle0;
  }

  else if (v7 == enum case for Font.TextStyle.title(_:))
  {
    v8 = &kCTUIFontTextStyleTitle1;
  }

  else if (v7 == enum case for Font.TextStyle.title2(_:))
  {
    v8 = &kCTUIFontTextStyleTitle2;
  }

  else if (v7 == enum case for Font.TextStyle.title3(_:))
  {
    v8 = &kCTUIFontTextStyleTitle3;
  }

  else if (v7 == enum case for Font.TextStyle.headline(_:))
  {
    v8 = &kCTUIFontTextStyleHeadline;
  }

  else if (v7 == enum case for Font.TextStyle.subheadline(_:))
  {
    v8 = &kCTUIFontTextStyleSubhead;
  }

  else if (v7 == enum case for Font.TextStyle.body(_:))
  {
    v8 = &kCTUIFontTextStyleBody;
  }

  else if (v7 == enum case for Font.TextStyle.callout(_:))
  {
    v8 = &kCTUIFontTextStyleCallout;
  }

  else if (v7 == enum case for Font.TextStyle.footnote(_:))
  {
    v8 = &kCTUIFontTextStyleFootnote;
  }

  else if (v7 == enum case for Font.TextStyle.caption(_:))
  {
    v8 = &kCTUIFontTextStyleCaption1;
  }

  else
  {
    if (v7 != enum case for Font.TextStyle.caption2(_:))
    {
      v11 = *(v3 + 8);
      v12 = kCTUIFontTextStyleBody;
      v11(v6, v2);
      return v12;
    }

    v8 = &kCTUIFontTextStyleCaption2;
  }

  v9 = *v8;

  return v9;
}

id sub_1CC70()
{
  v1 = v0;
  v2 = sub_261690();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DynamicTypeSize.xSmall(_:))
  {
    v8 = &kCTFontContentSizeCategoryXS;
  }

  else if (v7 == enum case for DynamicTypeSize.small(_:))
  {
    v8 = &kCTFontContentSizeCategoryS;
  }

  else if (v7 == enum case for DynamicTypeSize.medium(_:))
  {
    v8 = &kCTFontContentSizeCategoryM;
  }

  else if (v7 == enum case for DynamicTypeSize.large(_:))
  {
    v8 = &kCTFontContentSizeCategoryL;
  }

  else if (v7 == enum case for DynamicTypeSize.xLarge(_:))
  {
    v8 = &kCTFontContentSizeCategoryXL;
  }

  else if (v7 == enum case for DynamicTypeSize.xxLarge(_:))
  {
    v8 = &kCTFontContentSizeCategoryXXL;
  }

  else if (v7 == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    v8 = &kCTFontContentSizeCategoryXXXL;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility1(_:))
  {
    v8 = &kCTFontContentSizeCategoryAccessibilityM;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility2(_:))
  {
    v8 = &kCTFontContentSizeCategoryAccessibilityL;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility3(_:))
  {
    v8 = &kCTFontContentSizeCategoryAccessibilityXL;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility4(_:))
  {
    v8 = &kCTFontContentSizeCategoryAccessibilityXXL;
  }

  else
  {
    if (v7 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      v11 = *(v3 + 8);
      v12 = kCTFontContentSizeCategoryL;
      v11(v6, v2);
      return v12;
    }

    v8 = &kCTFontContentSizeCategoryAccessibilityXXXL;
  }

  v9 = *v8;

  return v9;
}

double sub_1CF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_261690();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8RatioKeyVMa(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_262730();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  (*(v8 + 16))(&v14[*(v12 + 28)], a2, v7);
  if (qword_315898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = off_316888[0];
  if (*(off_316888[0] + &dword_10) && (v17 = sub_D4CC(v14), (v18 & 1) != 0))
  {
    v19 = *(*&stru_20.segname[v16 + 16] + 8 * v17);
  }

  else
  {
    swift_endAccess();
    v30 = 0.0;
    v31 = 0.0;
    v20 = sub_1C9D0();
    v21 = sub_1CC70();
    CTFontDescriptorGetTextStyleSize();

    v22 = sub_1C9D0();
    if (![objc_opt_self() _defaultContentSizeCategory])
    {
      v23 = UIContentSizeCategoryLarge;
    }

    sub_2616A0();
    v24 = *(v8 + 48);
    if (v24(v6, 1, v7) == 1)
    {
      (*(v8 + 104))(v10, enum case for DynamicTypeSize.large(_:), v7);
      if (v24(v6, 1, v7) != 1)
      {
        sub_1D3A8(v6);
      }
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
    }

    v25 = sub_1CC70();
    (*(v8 + 8))(v10, v7);
    CTFontDescriptorGetTextStyleSize();

    v19 = v31 / v30;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = off_316888[0];
    off_316888[0] = 0x8000000000000000;
    sub_DF94(v14, isUniquelyReferenced_nonNull_native, v19);
    off_316888[0] = v29;
  }

  swift_endAccess();
  sub_FABC(v14);
  return v19;
}

uint64_t _s8RatioKeyVMa(uint64_t a1)
{
  result = qword_3168F0;
  if (!qword_3168F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3A8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262730();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_261690();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D528(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262730();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_261690();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D624(uint64_t a1)
{
  result = sub_262730();
  if (v2 <= 0x3F)
  {
    result = sub_261690();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_261F70();
  v8 = __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_261F80();
}

uint64_t sub_1D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_261F70();
  v8 = __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_261F80();
}

void *sub_1D928(uint64_t a1)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 36);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_1FED0(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1DA84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316930, &qword_2689A0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_8198(v2 + *(a1 + 40), &v15 - v10, &qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_260640();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_264900();
    v14 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1DC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v2 + *(a1 + 44), v12, &qword_316BB0, &qword_268BA8);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v13;
  }

  else
  {
    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

__n128 BooksActionButton.init(role:action:label:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_2604E0();
  __chkstk_darwin(v14 - 8);
  sub_2604C0();
  sub_260420();
  v16 = type metadata accessor for BooksActionButton(0, a5, a6, v15);
  v17 = a7 + v16[9];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v16[10];
  *(a7 + v18) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v19 = a7 + v16[11];
  *v19 = swift_getKeyPath();
  *(v19 + 40) = 0;
  v20 = (a7 + v16[12]);
  v22 = type metadata accessor for CustomLabelButtonContent(0, a5, a6, v21);
  v20[3] = v22;
  v20[4] = swift_getWitnessTable();
  v23 = sub_10934(v20);
  sub_1FEDC(a1, v23);
  v24 = (v23 + *(v22 + 36));
  *v24 = a3;
  v24[1] = a4;
  v25 = a7 + v16[13];
  result = *a2;
  v27 = *(a2 + 16);
  *v25 = *a2;
  *(v25 + 16) = v27;
  *(v25 + 32) = *(a2 + 32);
  return result;
}

__n128 BooksActionButton.init<>(role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2604E0();
  __chkstk_darwin(v6 - 8);
  sub_2604C0();
  sub_260420();
  v7 = sub_2EF0(&qword_316938, &qword_274150);
  v8 = a3 + v7[9];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = v7[10];
  *(a3 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v7[11];
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  v11 = (a3 + v7[12]);
  v11[3] = type metadata accessor for DefaultLabelButtonContent(0);
  v11[4] = sub_1FE80(&qword_316940, type metadata accessor for DefaultLabelButtonContent, &unk_268B50);
  v12 = sub_10934(v11);
  v13 = sub_2610B0();
  (*(*(v13 - 8) + 32))(v12, a1, v13);
  v14 = a3 + v7[13];
  result = *a2;
  v16 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v16;
  *(v14 + 32) = *(a2 + 32);
  return result;
}

uint64_t BooksActionButton.init<A>(_:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v28 = a4;
  v29 = a3;
  v31 = a1;
  v32 = a2;
  v9 = sub_2604E0();
  __chkstk_darwin(v9 - 8);
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_316948, &qword_2689E0);
  v15 = (a6 + v14[12]);
  v33 = sub_2EF0(&qword_316950, &qword_2689E8);
  v15[3] = v33;
  v15[4] = sub_8E38(&qword_316958, &qword_316950, &qword_2689E8, &unk_268B6C);
  v30 = sub_10934(v15);
  sub_8198(a2, v30, &qword_316960, &unk_2689F0);
  v16 = v29;
  sub_8198(v29, a6 + v14[13], &qword_315D38, &unk_266E30);
  v17 = v31;
  v18 = v28;
  (*(v10 + 16))(v13, v31, v28);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = v34;
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  (*(v10 + 32))(v20 + v19, v13, v18);
  sub_2604C0();
  sub_260420();
  v22 = a6 + v14[9];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v14[10];
  *(a6 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v24 = a6 + v14[11];
  *v24 = swift_getKeyPath();
  *(v24 + 40) = 0;
  v25 = (v30 + *(v33 + 36));
  *v25 = sub_1F3E4;
  v25[1] = v20;
  sub_8E80(v16, &qword_315D38, &unk_266E30);
  sub_8E80(v32, &qword_316960, &unk_2689F0);
  return (*(v10 + 8))(v17, v18);
}

uint64_t sub_1E4BC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = __chkstk_darwin(a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_2628F0();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1E598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_260640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = sub_260620();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D928(a1);
  if (v14)
  {
    v15 = v14;
    v27 = v6;
    v16 = *(a1 + 52);
    sub_8198(v2 + v16, v30, &qword_315D38, &unk_266E30);
    if (v31)
    {
      sub_2EF0(&qword_316A30, &qword_2697B0);
      sub_2EF0(&qword_316BA8, &unk_275850);
      if (swift_dynamicCast())
      {
        if (*(&v33 + 1))
        {
          v25 = v5;
          v26 = a2;
          sub_F7CC(&v32, v35);
          v17 = v36;
          v18 = v37;
          sub_2E18(v35, v36);
          (*(v18 + 16))(v17, v18);
          v19 = v29;
          if ((*(v29 + 48))(v10, 1, v11) != 1)
          {
            (*(v19 + 32))(v13, v10, v11);
            v24[0] = v37;
            v24[1] = sub_2E18(v35, v36);
            v34 = 0;
            v32 = 0u;
            v33 = 0u;
            v22 = v15;
            v23 = v28;
            sub_1DA84(a1, v28);
            sub_1DC88(a1, v30);
            sub_260400();
            sub_263860();

            sub_8E80(v30, &qword_316A20, &qword_268A90);
            (*(v27 + 8))(v23, v25);
            sub_8E80(&v32, &qword_316610, &qword_268BA0);
            (*(v19 + 8))(v13, v11);
            return sub_3080(v35);
          }

          sub_8E80(v10, &qword_316B98, &unk_275840);
          sub_3080(v35);
          a2 = v26;
          goto LABEL_12;
        }
      }

      else
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
      }
    }

    else
    {

      sub_8E80(v30, &qword_315D38, &unk_266E30);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
    }

    sub_8E80(&v32, &qword_316BA0, &unk_268B90);
LABEL_12:
    v20 = v2 + v16;
    return sub_8198(v20, a2, &qword_315D38, &unk_266E30);
  }

  v20 = v2 + *(a1 + 52);
  return sub_8198(v20, a2, &qword_315D38, &unk_266E30);
}

uint64_t BooksActionButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_260AC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_2F9C(&qword_316968, &qword_268A00);
  v12 = sub_261F90();
  v33 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  if (sub_260770())
  {
    v15 = sub_1D928(a1);
    if (!v15)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = 0xD00000000000002ALL;
      *(v27 + 24) = 0x8000000000290390;
      v37[0] = sub_1F458;
      v37[1] = v27;
      v28 = sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
      WitnessTable = swift_getWitnessTable();
      sub_1D738(v37, v11, v4, v28, WitnessTable);

      goto LABEL_5;
    }
  }

  v16 = (v2 + *(a1 + 48));
  v31 = v10;
  v17 = a1;
  v19 = v16[3];
  v18 = v16[4];
  sub_2E18(v16, v19);
  v32 = v11;
  sub_1E598(v17, v37);
  (*(v18 + 24))(v37, v19, v18);
  sub_8E80(v37, &qword_315D38, &unk_266E30);
  v20 = swift_getWitnessTable();
  v21 = v31;
  sub_1609C();
  v22 = *(v5 + 8);
  v22(v7, v4);
  sub_1609C();
  v23 = sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
  sub_1D830(v7, v32, v4, v23, v20);
  v22(v7, v4);
  v22(v21, v4);
LABEL_5:
  v24 = sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
  v25 = swift_getWitnessTable();
  v35 = v24;
  v36 = v25;
  swift_getWitnessTable();
  sub_1609C();
  return (*(v33 + 8))(v14, v12);
}

uint64_t sub_1EE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316960, &unk_2689F0);
  __chkstk_darwin(v4 - 8);
  sub_8198(v2, &v8[-v5 - 8], &qword_316960, &unk_2689F0);
  sub_8198(a1, v8, &qword_315D38, &unk_266E30);

  return sub_260AA0();
}

uint64_t sub_1EF6C(uint64_t a1)
{
  v3 = sub_2610B0();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v1, v4);
  sub_8198(a1, v9, &qword_315D38, &unk_266E30);
  return sub_260AB0();
}

uint64_t sub_1F05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A40();
  *a1 = result;
  return result;
}

uint64_t sub_1F088@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A40();
  *a1 = result;
  return result;
}

uint64_t sub_1F15C(uint64_t a1)
{
  v2 = sub_260640();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_261A10();
}

uint64_t type metadata accessor for DefaultLabelButtonContent(uint64_t a1)
{
  result = qword_316A90;
  if (!qword_316A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F364()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1F420()
{

  return swift_deallocObject();
}

void sub_1F4A4(uint64_t a1)
{
  sub_260410();
  if (v1 <= 0x3F)
  {
    sub_1F8AC(319, &qword_316A00, &qword_316A08, &unk_277860, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1FDD4(319, &qword_316A10, &type metadata accessor for DataStack, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1F8AC(319, &qword_316A18, &qword_316A20, &qword_268A90, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_getExtendedExistentialTypeMetadata_unique();
          sub_1F8AC(319, &qword_316A28, &qword_316A30, &qword_2697B0, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1F664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260410();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(qword_316978, &unk_268A60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 40);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1F794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260410();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(qword_316978, &unk_268A60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 40);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1F8AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1F910(uint64_t *a1)
{
  sub_2F9C(&qword_316968, &qword_268A00);
  sub_260AC0();
  sub_261F90();
  sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1FA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2610B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1FA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2610B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1FB00(uint64_t a1)
{
  result = sub_2610B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1FB6C(uint64_t a1)
{
  sub_1FDD4(319, &qword_316B48, &type metadata accessor for ButtonRole, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_16D28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316960, &unk_2689F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1FD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316960, &unk_2689F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_1FDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1FE80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1FED0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1FEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316960, &unk_2689F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GridItemMetadata.titleAndAuthor(assetInfo:showOrdinal:titleLines:subtitleLines:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2E18(a1, a1[3]);
  v10 = sub_2609A0();
  v12 = v11;
  sub_2E18(a1, a1[3]);
  v13 = sub_2609B0();
  v15 = v14;
  v18[3] = &type metadata for GridItemMetadataTitleWithSubtitle;
  v18[4] = sub_2004C();
  v16 = swift_allocObject();
  v18[0] = v16;
  v16[2] = v10;
  v16[3] = v12;
  v16[4] = v13;
  v16[5] = v15;
  v16[6] = a3;
  v16[7] = a4;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  result = sub_200E0(v18, a5);
  *(a5 + 40) = a2;
  return result;
}

unint64_t sub_2004C()
{
  result = qword_316BB8;
  if (!qword_316BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316BB8);
  }

  return result;
}

uint64_t sub_200A0()
{

  return swift_deallocObject();
}

uint64_t sub_200E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316BC0, &qword_2707C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double ShelfHeaderTitleComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  sub_8198(v1 + 112, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t ShelfHeaderTitleComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for ShelfHeaderTitleComponentModel(0);
  sub_8198(v1 + *(v6 + 48), v5, &qword_315D40, &qword_288230);
  return sub_22148(v5, a1, &qword_315D48, &qword_266E40);
}

uint64_t type metadata accessor for ShelfHeaderTitleComponentModel(uint64_t a1)
{
  result = qword_316CA8;
  if (!qword_316CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for ShelfHeaderTitleComponentModel(0);
  sub_8198(a1 + *(v7 + 48), v6, &qword_315D40, &qword_288230);
  return sub_22148(v6, a2, &qword_315D48, &qword_266E40);
}

uint64_t ShelfHeaderTitleComponentModel.init(id:title:subtitle:preheader:showTitleBelowSubtitle:thumbnailAssetResource:useSmallHeader:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 104) = 0;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0;
  *(a9 + 112) = 0u;
  sub_34A0(v26, a9 + 112, &qword_315D38, &unk_266E30);
  v18 = *(type metadata accessor for ShelfHeaderTitleComponentModel(0) + 48);
  v19 = sub_263E50();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v20;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  sub_34A0(a12, a9 + 112, &qword_315D38, &unk_266E30);
  return sub_34A0(a13, a9 + v18, &qword_315D48, &qword_266E40);
}

__n128 sub_205D0@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    v4 = v3;
    v5 = sub_260830();
    sub_260810();
    if (v41)
    {
      sub_F7CC(&v40, v42);
      sub_2E18(v42, v42[3]);
      sub_260950();
      sub_30CC(v42, &v43);
      CoverViewModel.CoverImageInfo.init(assetInfo:)(&v43, v30);

      v36 = v30[4];
      v37 = v30[5];
      v38 = v30[6];
      v32 = v30[0];
      v33 = v30[1];
      v34 = v30[2];
      v35 = v30[3];
      v39.n128_u64[0] = v31;
      v39.n128_u64[1] = 0x4044000000000000;
      sub_230A8(&v32);
      v47 = v36;
      v48 = v37;
      v49 = v38;
      v50 = v39;
      v43 = v32;
      v44 = v33;
      v45 = v34;
      v46 = v35;
      v51 = v5 & 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v6 = v50;
      a1[6] = v49;
      a1[7] = v6;
      a1[8].n128_u8[0] = v51;
      v7 = v46;
      a1[2] = v45;
      a1[3] = v7;
      v8 = v48;
      a1[4] = v47;
      a1[5] = v8;
      v9 = v44;
      *a1 = v43;
      a1[1] = v9;
      sub_3080(v42);
      return result;
    }

    sub_8E80(&v40, &qword_316D40, &unk_268FC0);
    if (qword_315850 != -1)
    {
      swift_once();
    }

    v11 = sub_260D50();
    sub_B080(v11, qword_315FA0);
    v12 = v4;
    v13 = sub_260D30();
    v14 = sub_2648F0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v12;
      *v16 = v3;
      v17 = v12;
      _os_log_impl(&dword_0, v13, v14, "Failed to convert store asset to assetInfo: %{public}@", v15, 0xCu);
      sub_8E80(v16, &qword_316450, &qword_2681E0);
    }

    *&v30[0] = 0x4044000000000000;
    sub_23050(v30);
    v18 = [v12 pagesAreRTL];

    v32.n128_u64[0] = 0x4044000000000000;
    v32.n128_u8[8] = v18;
    sub_2307C(&v32);
    if (v5)
    {
      v19 = v30;
    }

    else
    {
      v19 = &v32;
    }

    v20 = v19[6];
    v29 = v19[7];
    v28 = v19[5];
    v21 = *v19;
    v26 = v19[1];
    v22 = v19[2];
    v27 = v19[3];
    v47 = v19[4];
    v48 = v28;
    v49 = v20;
    v50 = v29;
    v43 = v21;
    v44 = v26;
    v45 = v22;
    v46 = v27;
    v51 = v5 & 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  else
  {
    sub_222DC(&v43);
  }

  v23 = v50;
  a1[6] = v49;
  a1[7] = v23;
  a1[8].n128_u8[0] = v51;
  v24 = v46;
  a1[2] = v45;
  a1[3] = v24;
  v25 = v48;
  a1[4] = v47;
  a1[5] = v25;
  result = v44;
  *a1 = v43;
  a1[1] = result;
  return result;
}

unint64_t sub_20908(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 25705;
    v5 = 0x656C746974627573;
    if (a1 != 2)
    {
      v5 = 0x6564616568657270;
    }

    if (a1)
    {
      v4 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C6C616D53657375;
    v2 = 0x6575676573;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000016;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_20A38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22D64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20A6C(uint64_t a1)
{
  v2 = sub_21E30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20AA8(uint64_t a1)
{
  v2 = sub_21E30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfHeaderTitleComponentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v4);
  v6 = v32 - v5;
  v7 = sub_2EF0(&qword_316BC8, &qword_268BB8);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v10 = v32 - v9;
  v11 = type metadata accessor for ShelfHeaderTitleComponentModel(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[88] = 0;
  *(v14 + 7) = 0u;
  v14[104] = 0;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  *(v14 + 8) = 0u;
  *(v14 + 18) = 0;
  v36 = v14 + 112;
  sub_34A0(&v39, (v14 + 112), &qword_315D38, &unk_266E30);
  v15 = *(v12 + 56);
  v16 = sub_263E50();
  v17 = *(*(v16 - 8) + 56);
  v38 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = a1[3];
  v37 = a1;
  sub_2E18(a1, v18);
  sub_21E30();
  sub_265120();
  if (v2)
  {
    v21 = v36;
    sub_3080(v37);

    sub_8E80(v21, &qword_315D30, &qword_266E28);
    return sub_8E80(&v14[v38], &qword_315D40, &qword_288230);
  }

  else
  {
    v32[3] = v4;
    v19 = v6;
    sub_2EF0(&qword_315D28, &qword_266E20);
    v42 = 0;
    sub_8E38(&qword_315D60, &qword_315D28, &qword_266E20, &protocol conformance descriptor for CodeAnyHashable<A>);
    v20 = v34;
    sub_264DF0();
    v22 = v40;
    *v14 = v39;
    *(v14 + 1) = v22;
    *(v14 + 4) = v41;
    LOBYTE(v39) = 1;
    v23 = sub_264DC0();
    v24 = v36;
    *(v14 + 5) = v23;
    *(v14 + 6) = v25;
    LOBYTE(v39) = 2;
    *(v14 + 7) = sub_264D70();
    *(v14 + 8) = v26;
    LOBYTE(v39) = 3;
    v27 = sub_264D70();
    v32[2] = 0;
    *(v14 + 9) = v27;
    *(v14 + 10) = v28;
    LOBYTE(v39) = 4;
    v29 = sub_2EF0(&qword_316BD8, &qword_268BC0);
    v30 = sub_8E38(&qword_316BE0, &qword_316BD8, &qword_268BC0, &protocol conformance descriptor for _DecodeDefault_Wrapper<A>);
    sub_264DB0();
    v32[0] = v30;
    v32[1] = v29;
    v14[88] = v42 & 1;
    sub_2EF0(&qword_316BE8, &qword_268BC8);
    v42 = 5;
    sub_8E38(&qword_316BF0, &qword_316BE8, &qword_268BC8, &protocol conformance descriptor for _MResourceDecoder_OrNil<A>);
    sub_264DF0();
    *(v14 + 12) = v39;
    LOBYTE(v39) = 6;
    sub_264DB0();
    v14[104] = v42 & 1;
    sub_2EF0(&qword_315D30, &qword_266E28);
    v42 = 7;
    sub_8E38(&qword_315D68, &qword_315D30, &qword_266E28, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_264DF0();
    sub_34A0(&v39, v24, &qword_315D30, &qword_266E28);
    LOBYTE(v39) = 8;
    sub_8EE0();
    sub_264DF0();
    (*(v35 + 8))(v10, v20);
    sub_34A0(v19, &v14[v38], &qword_315D40, &qword_288230);
    sub_22214(v14, v33, type metadata accessor for ShelfHeaderTitleComponentModel);
    sub_3080(v37);
    return sub_2227C(v14, type metadata accessor for ShelfHeaderTitleComponentModel);
  }
}

uint64_t sub_21290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_8198(v2 + *(a1 + 48), &v9 - v6, &qword_315D40, &qword_288230);
  return sub_22148(v7, a2, &qword_315D48, &qword_266E40);
}

uint64_t ShelfHeaderTitleComponent.content(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v58 - v7;
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_316BF8, &qword_268BD8);
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for ShelfHeaderView(0);
  __chkstk_darwin(v15);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v22 = (&v58 - v21);
  if (*(a1 + 104) == 1)
  {
    sub_260BC0();
    sub_8198(a1 + 112, &v69, &qword_315D30, &qword_266E28);
    v23 = v22 + v15[14];
    v24 = v70;
    *v23 = v69;
    *(v23 + 1) = v24;
    *(v23 + 4) = v71;
    *v22 = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v25 = v15[5];
    *(v22 + v25) = swift_getKeyPath();
    sub_2EF0(&qword_316C08, &unk_26AEF0);
    swift_storeEnumTagMultiPayload();
    v26 = v15[6];
    *(v22 + v26) = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v27 = v22 + v15[7];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = v15[8];
    *(v22 + v28) = swift_getKeyPath();
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    v29 = *(v9 + 56);
    v29(v22 + v15[11], 1, 1, v8);
    v29(v22 + v15[9], 1, 1, v8);
    *(v22 + v15[12]) = 0;
    sub_222DC(&v69);
    v30 = v22 + v15[13];
    v31 = v76;
    *(v30 + 6) = v75;
    *(v30 + 7) = v31;
    v30[128] = v77;
    v32 = v72;
    *(v30 + 2) = v71;
    *(v30 + 3) = v32;
    v33 = v74;
    *(v30 + 4) = v73;
    *(v30 + 5) = v33;
    v34 = v70;
    *v30 = v69;
    *(v30 + 1) = v34;
    *(v22 + v15[15]) = 1;
    sub_22214(v22, v14, type metadata accessor for ShelfHeaderView);
    swift_storeEnumTagMultiPayload();
    sub_224A8(&qword_316C20, type metadata accessor for ShelfHeaderView, &protocol conformance descriptor for ShelfHeaderView);
    sub_261F80();
    v35 = v22;
  }

  else
  {
    v64 = v9;
    v61 = v20;
    v59 = v5;
    v36 = v8;
    v60 = v11;
    sub_260BC0();
    v37 = *(a1 + 64);
    v63 = v14;
    v62 = v12;
    if (v37)
    {

      v38 = v65;
      sub_260BC0();

      v39 = 0;
    }

    else
    {
      v39 = 1;
      v38 = v65;
    }

    v40 = *(v64 + 56);
    v41 = 1;
    v40(v38, v39, 1, v8);
    if (*(a1 + 80))
    {

      v42 = v59;
      sub_260BC0();

      v41 = 0;
    }

    else
    {
      v42 = v59;
    }

    v43 = v60;
    v40(v42, v41, 1, v8);
    v44 = *(a1 + 88);
    sub_205D0(&v69);
    sub_8198(a1 + 112, v67, &qword_315D30, &qword_266E28);
    v45 = v17 + v15[14];
    v46 = v67[1];
    *v45 = v67[0];
    *(v45 + 1) = v46;
    *(v45 + 4) = v68;
    *v17 = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v47 = v15[5];
    *(v17 + v47) = swift_getKeyPath();
    sub_2EF0(&qword_316C08, &unk_26AEF0);
    swift_storeEnumTagMultiPayload();
    v48 = v15[6];
    *(v17 + v48) = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v49 = v17 + v15[7];
    *v49 = swift_getKeyPath();
    v49[8] = 0;
    v50 = v15[8];
    *(v17 + v50) = swift_getKeyPath();
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    (*(v64 + 32))(v17 + v15[10], v43, v36);
    sub_22148(v65, v17 + v15[11], &qword_316208, &qword_268BD0);
    sub_22148(v42, v17 + v15[9], &qword_316208, &qword_268BD0);
    *(v17 + v15[12]) = v44;
    v51 = v17 + v15[13];
    v52 = v76;
    *(v51 + 6) = v75;
    *(v51 + 7) = v52;
    v51[128] = v77;
    v53 = v72;
    *(v51 + 2) = v71;
    *(v51 + 3) = v53;
    v54 = v74;
    *(v51 + 4) = v73;
    *(v51 + 5) = v54;
    v55 = v70;
    *v51 = v69;
    *(v51 + 1) = v55;
    *(v17 + v15[15]) = 0;
    v56 = v61;
    sub_221B0(v17, v61);
    sub_22214(v56, v63, type metadata accessor for ShelfHeaderView);
    swift_storeEnumTagMultiPayload();
    sub_224A8(&qword_316C20, type metadata accessor for ShelfHeaderView, &protocol conformance descriptor for ShelfHeaderView);
    sub_261F80();
    v35 = v56;
  }

  return sub_2227C(v35, type metadata accessor for ShelfHeaderView);
}

uint64_t sub_21BB4(uint64_t a1)
{
  sub_22540();

  return sub_260B30();
}

uint64_t sub_21BF8(char *a1)
{
  v2 = sub_261C90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *(v3 + 16);
  v10(&v13 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_261990();
  v11 = *(v3 + 8);
  v11(v5, v2);
  return (v11)(v9, v2);
}

uint64_t sub_21D40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_261C90();
  v5 = __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_21F65C(v7, a2);
}

unint64_t sub_21E30()
{
  result = qword_316BD0;
  if (!qword_316BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316BD0);
  }

  return result;
}

uint64_t sub_21F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_22084@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261660();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261660();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22148(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2EF0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_221B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2227C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_222DC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x7FFFFFCFELL;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_22304(uint64_t a1)
{
  result = sub_224A8(&qword_316C28, type metadata accessor for ShelfHeaderTitleComponentModel, &protocol conformance descriptor for ShelfHeaderTitleComponentModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_223A8()
{
  result = qword_316C38;
  if (!qword_316C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316C38);
  }

  return result;
}

uint64_t sub_224A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22540()
{
  result = qword_316C48;
  if (!qword_316C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316C48);
  }

  return result;
}

double sub_22594@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1, v5, &qword_315D28, &qword_266E20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_225EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1 + 112, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_226D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_315D40, &qword_288230);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_315D40, &qword_288230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22854(uint64_t a1)
{
  sub_9CAC();
  if (v1 <= 0x3F)
  {
    sub_22944();
    if (v2 <= 0x3F)
    {
      sub_22994(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        sub_229EC(319);
        if (v6 <= 0x3F)
        {
          sub_9D28(319);
          if (v7 <= 0x3F)
          {
            sub_9DD8(319);
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22944()
{
  if (!qword_316CB8)
  {
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_316CB8);
    }
  }
}

void sub_22994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_316CC0)
  {
    v4 = type metadata accessor for _DecodeDefault_Wrapper(0, &type metadata for DecodeDefault.Providers.False, &protocol witness table for DecodeDefault.Providers.False, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_316CC0);
    }
  }
}

void sub_229EC(uint64_t a1)
{
  if (!qword_316CC8)
  {
    v2 = sub_260840();
    v5 = type metadata accessor for _MResourceDecoder_OrNil(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_316CC8);
    }
  }
}

unint64_t sub_22A58()
{
  result = qword_316D18;
  if (!qword_316D18)
  {
    sub_2F9C(&qword_316D20, &qword_268EA0);
    sub_224A8(&qword_316C20, type metadata accessor for ShelfHeaderView, &protocol conformance descriptor for ShelfHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShelfHeaderTitleComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShelfHeaderTitleComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22C60()
{
  result = qword_316D28;
  if (!qword_316D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D28);
  }

  return result;
}

unint64_t sub_22CB8()
{
  result = qword_316D30;
  if (!qword_316D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D30);
  }

  return result;
}

unint64_t sub_22D10()
{
  result = qword_316D38;
  if (!qword_316D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D38);
  }

  return result;
}

uint64_t sub_22D64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564616568657270 && a2 == 0xE900000000000072 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000002903C0 == a2 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000002903E0 == a2 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6C616D53657375 && a2 == 0xEE00726564616548 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000028FFC0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_23050(uint64_t result)
{
  v1 = *(result + 48) & 1;
  v2 = *(result + 112) | 0x4000000000000000;
  *(result + 24) &= 0x301uLL;
  *(result + 48) = v1;
  *(result + 112) = v2;
  return result;
}

uint64_t sub_2307C(uint64_t result)
{
  v1 = *(result + 48) & 1;
  v2 = *(result + 112) | 0x8000000000000000;
  *(result + 24) &= 0x301uLL;
  *(result + 48) = v1;
  *(result + 112) = v2;
  return result;
}

uint64_t sub_230A8(uint64_t result)
{
  v1 = *(result + 112);
  v2 = *(result + 48) & 1;
  *(result + 24) &= 0x301uLL;
  *(result + 48) = v2;
  *(result + 112) = v1;
  return result;
}

uint64_t static GridItemViewModel.storeSwoosh(assetInfo:showAuthorName:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    sub_2E18(a1, a1[3]);
    v5 = sub_2609B0();
    v7 = v6;
    *(&v18 + 1) = &type metadata for GridItemMetadataTitleWithSubtitle;
    v19 = sub_2004C();
    v8 = swift_allocObject();
    *&v17 = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = xmmword_268FD0;
    v9 = 0uLL;
  }

  else
  {
    v19 = 0;
    v9 = 0uLL;
    v17 = 0u;
    v18 = 0u;
  }

  v20[0] = v9;
  v20[1] = v9;
  v21 = 0;
  sub_34A0(&v17, v20, &qword_316BC0, &qword_2707C0);
  v22 = 0;
  sub_232D0(v20, a3);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_30CC(a1, a3 + 96);
  sub_30CC(a1, v16);
  v10 = type metadata accessor for GridItemViewModel(0);
  CardInfo.init(with:alwaysPresentNewCardSet:)(v16, 1, a3 + v10[8]);
  v11 = v10[12];
  v12 = sub_260570();
  (*(*(v12 - 8) + 56))(a3 + v11, 1, 1, v12);
  v13 = v10[11];
  v14 = sub_2605C0();
  (*(*(v14 - 8) + 56))(a3 + v13, 1, 1, v14);
  *(a3 + 80) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 48) = 0u;
  sub_34A0(&v17, a3 + 48, &qword_316D48, &unk_28CD20);
  *(a3 + 88) = 0;
  *(a3 + v10[9]) = 0;
  *(a3 + v10[10]) = 0;
  return sub_2332C(v20);
}

uint64_t sub_23380()
{

  return swift_deallocObject();
}

CGFloat sub_233DC@<D0>(uint64_t a1@<X8>)
{
  CGAffineTransformMakeTranslation(&v6, *v1, v1[1]);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 sub_23438@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_23444(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 (*sub_23450(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_2347C;
}

__n128 sub_2347C(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

uint64_t sub_23490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23710();

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_2350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23710();

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

unint64_t sub_235FC()
{
  result = qword_316D50;
  if (!qword_316D50)
  {
    sub_2F9C(&qword_316D58, &qword_269068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D50);
  }

  return result;
}

unint64_t sub_23664()
{
  result = qword_316D60;
  if (!qword_316D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D60);
  }

  return result;
}

unint64_t sub_236BC()
{
  result = qword_316D68;
  if (!qword_316D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D68);
  }

  return result;
}

unint64_t sub_23710()
{
  result = qword_316D70;
  if (!qword_316D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D70);
  }

  return result;
}

uint64_t PageBackground.resolvedColorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v32 = sub_261180();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = sub_261C90();
  v31 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_316D98, &unk_269120);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for PageBackground(0);
  __chkstk_darwin(v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C224(v2, v20, type metadata accessor for PageBackground);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_30304(v20, type metadata accessor for PageBackground);
      return (*(v3 + 104))(v33, enum case for ColorScheme.dark(_:), v32);
    }

    else
    {

      v25 = *(sub_2EF0(&qword_316DA0, &unk_277640) + 48);

      return (*(v3 + 32))(v33, &v20[v25], v32);
    }
  }

  else
  {
    v30 = v5;
    v23 = sub_2EF0(&qword_316DA8, &qword_269130);
    sub_22148(&v20[*(v23 + 48)], v17, &qword_316D98, &unk_269120);
    sub_261C80();
    sub_8198(v17, v14, &qword_316D98, &unk_269120);
    v24 = v32;
    if ((*(v3 + 48))(v14, 1, v32) == 1)
    {
      sub_8E80(v14, &qword_316D98, &unk_269120);
    }

    else
    {
      (*(v3 + 32))(v8, v14, v24);
      (*(v3 + 16))(v30, v8, v24);
      sub_2619A0();
      (*(v3 + 8))(v8, v24);
    }

    v26 = v31;
    sub_263020();
    v27 = sub_263030();
    v28 = [objc_allocWithZone(UIColor) initWithCGColor:v27];

    v34 = 0.0;
    [v28 getWhite:&v34 alpha:0];

    (*(v26 + 8))(v11, v9);
    sub_8E80(v17, &qword_316D98, &unk_269120);
    if (v34 >= 0.7)
    {
      v29 = &enum case for ColorScheme.light(_:);
    }

    else
    {
      v29 = &enum case for ColorScheme.dark(_:);
    }

    return (*(v3 + 104))(v33, *v29, v24);
  }
}

uint64_t PagedFrame.id.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_2644B0();
}

uint64_t sub_23CD0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_23D24()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_23D80()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_23DD4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_23E28()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_23E84()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_23ED8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_2E18(v1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_23F34@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2E18(v1, v1[3]);
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_263310();
  *a1 = result;
  return result;
}

uint64_t sub_24010()
{
  v1 = v0;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  if (*(v0 + 32) <= 0.0)
  {
    return result;
  }

  swift_getKeyPath();
  sub_260380();

  v3 = *(v0 + 16);
  swift_getKeyPath();
  sub_260380();

  v4 = v3 + *(v0 + 40) * 0.5;
  swift_getKeyPath();
  sub_260380();

  v5 = v4 / *(v0 + 32);
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v0 + 48);
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = v5;
  if (v6 > v5)
  {
    result = swift_beginAccess();
    if (*(v1 + 24) != v7)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_260370();
    }
  }

  return result;
}

double sub_24274()
{
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  return *(v0 + 16);
}

double sub_24314@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_243BC(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;

    return sub_24010();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
    sub_260370();
  }
}

uint64_t PagedScrollViewModel.currentPageIndex.getter()
{
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_245B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t PagedScrollViewModel.currentPageIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
    sub_260370();
  }

  return result;
}

uint64_t sub_247F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 24) = v1;
  return result;
}

uint64_t (*PagedScrollViewModel.currentPageIndex.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC7BooksUI20PagedScrollViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  *v4 = v1;
  swift_getKeyPath();
  sub_2603A0();

  swift_beginAccess();
  return sub_24988;
}

void sub_24988(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_260390();

  free(v1);
}

double sub_24A0C()
{
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  return *(v0 + 32);
}

double sub_24AAC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_24B54(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
    sub_260370();
  }
}

double sub_24C6C()
{
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  return *(v0 + 40);
}

double sub_24D0C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
  sub_260380();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_24DB4(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
    sub_260370();
  }
}

uint64_t PagedScrollViewModel.__allocating_init(totalPages:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  sub_2603B0();
  *(v2 + 48) = a1;
  return v2;
}

uint64_t PagedScrollViewModel.init(totalPages:)(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  sub_2603B0();
  *(v1 + 48) = a1;
  return v1;
}

uint64_t PagedScrollViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC7BooksUI20PagedScrollViewModel___observationRegistrar;
  v2 = sub_2603C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PagedScrollViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7BooksUI20PagedScrollViewModel___observationRegistrar;
  v2 = sub_2603C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2505C()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_316D78 = v16;
  unk_316D80 = v18;
  return result;
}

uint64_t sub_252D8()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  *&xmmword_316D88 = v16;
  *(&xmmword_316D88 + 1) = v18;
  return result;
}

double sub_25558@<D0>(double *a1@<X8>)
{
  v2 = sub_261FC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2621A0();
  sub_261440();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  result = -v7;
  *a1 = -v7;
  return result;
}

uint64_t sub_25650(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for PagedScrollViewPositionObserverModifier(0) + 24));
  sub_261420();
  v5 = v4;
  sub_261410();
  v7 = v5 + v6;
  sub_261410();
  v9 = v7 + v8;
  if (v3[4] == v9)
  {
    v3[4] = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
    sub_260370();
  }

  sub_261410();
  if (v3[5] == v11)
  {
    v3[5] = v11;
  }

  else
  {
    v12 = swift_getKeyPath();
    __chkstk_darwin(v12);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
    sub_260370();
  }

  if (v3[2] == v2)
  {
    v3[2] = v2;
    return sub_24010();
  }

  else
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel, &protocol conformance descriptor for PagedScrollViewModel);
    sub_260370();
  }
}

uint64_t sub_2595C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_2C224(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagedScrollViewPositionObserverModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2E9A8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PagedScrollViewPositionObserverModifier);
  v10 = sub_2EF0(&qword_3171B0, &qword_269660);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = sub_2EF0(&qword_3171B8, &qword_269668);
  v12 = (a3 + *(result + 36));
  *v12 = sub_25558;
  v12[1] = 0;
  v12[2] = sub_2EA10;
  v12[3] = v9;
  return result;
}

uint64_t sub_25AF0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2E9A8(v10, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25CD4@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PagedScrollView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_25EDC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PagedScrollView(0) + 24));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_264900();
  v8 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_26038@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PagedScrollView(0);
  sub_8198(v1 + *(v7 + 28), v10, &qword_3173E0, &qword_26B890);
  if (v11 == 1)
  {
    return sub_F7CC(v10, a1);
  }

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_261B0@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC8, &qword_276F60);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PagedScrollView(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2E9A8(v9, a1, type metadata accessor for SizeConstants.Spacing);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

BOOL sub_2639C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PagedScrollView(0);
  v6 = v0 + *(v5 + 36);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if (v7)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[15])
    {
      return 0;
    }
  }

  v9 = v0 + *(v5 + 40);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if (v10)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v12 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v10, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[14])
    {
      return 0;
    }
  }

  return !UIAccessibilityIsReduceMotionEnabled();
}

uint64_t PagedScrollView.init(frames:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for PagedScrollView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a3 + v6[7];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  v10 = v6[8];
  *(a3 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v11 = a3 + v6[9];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = a3 + v6[10];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = a3 + v6[11];
  v34[0] = 0;
  v34[1] = 0;
  sub_2EF0(&qword_316DD0, &qword_2692C0);
  sub_2631D0();
  v14 = *v37;
  *v13 = v36;
  *(v13 + 2) = v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v32 = a2;
    v38 = _swiftEmptyArrayStorage;
    sub_2C204(0, v15, 0);
    v16 = _swiftEmptyArrayStorage;
    v31 = a1;
    v17 = a1 + 32;
    do
    {
      sub_30CC(v17, v34);
      v33 = v35;
      v18 = v35;
      v19 = sub_2E18(v34, v35);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      *&v37[8] = v33;
      v24 = sub_10934(&v36);
      (*(v20 + 32))(v24, v23, v18);
      sub_3080(v34);
      v38 = v16;
      v26 = v16[2];
      v25 = v16[3];
      if (v26 >= v25 >> 1)
      {
        sub_2C204((v25 > 1), v26 + 1, 1);
        v16 = v38;
      }

      v16[2] = v26 + 1;
      v27 = &v16[5 * v26];
      v28 = v36;
      v29 = *v37;
      v27[8] = *&v37[16];
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v17 += 40;
      --v15;
    }

    while (v15);

    a2 = v32;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  *(a3 + v6[12]) = v16;
  *(a3 + v6[13]) = a2;
  return sub_2601D0();
}

uint64_t PagedScrollView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PagedScrollView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_2C224(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagedScrollView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2E9A8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PagedScrollView);
  *a1 = sub_2C290;
  a1[1] = v7;
  return result;
}

uint64_t sub_26A4C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v5 = type metadata accessor for PagedScrollView(0);
  v71 = *(v5 - 8);
  __chkstk_darwin(v5);
  v72 = v6;
  v74 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_262320();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_262390();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2EF0(&qword_3172A8, &qword_269800);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v10 = &v50 - v9;
  v51 = sub_2EF0(&qword_3172B0, &qword_269808);
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v12 = &v50 - v11;
  v61 = sub_2EF0(&qword_3172B8, &qword_269810);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v50 = &v50 - v13;
  v66 = sub_2EF0(&qword_3172C0, &qword_269818);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v50 - v14;
  v59 = sub_2EF0(&qword_3172C8, &qword_269820);
  __chkstk_darwin(v59);
  v63 = &v50 - v15;
  v62 = sub_2EF0(&qword_3172D0, &qword_269828);
  __chkstk_darwin(v62);
  v67 = &v50 - v16;
  sub_2624E0();
  v76 = a2;
  v77 = a1;
  sub_2EF0(&qword_3172D8, &qword_269830);
  sub_2F2C0();
  sub_261130();
  v70 = v5;
  v17 = *(v5 + 44);
  v73 = a2;
  v18 = &a2[v17];
  v19 = *(v18 + 2);
  v82 = *v18;
  v83 = v19;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_263200();
  sub_263720();
  v20 = sub_8E38(&qword_317308, &qword_3172A8, &qword_269800, &protocol conformance descriptor for ScrollView<A>);
  v21 = v52;
  sub_262B40();
  v22 = v50;

  v23 = v56;

  v24 = v51;

  (*(v53 + 8))(v10, v21);
  v25 = v55;
  sub_262380();
  v78 = v21;
  v79 = &type metadata for String;
  v80 = v20;
  v81 = &protocol witness table for String;
  v26 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_262C90();
  (*(v58 + 8))(v25, v26);
  (*(v54 + 8))(v12, v24);
  sub_262300();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v10) = sub_2624E0();
  *(inited + 32) = v10;
  v29 = sub_2624C0();
  *(inited + 33) = v29;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v10)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v29)
  {
    sub_2624D0();
  }

  v78 = v24;
  v79 = v26;
  v80 = OpaqueTypeConformance2;
  v81 = &protocol witness table for PagingScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  v30 = v64;
  v31 = v61;
  sub_262BA0();
  (*(v68 + 8))(v23, v69);
  (*(v60 + 8))(v22, v31);
  v32 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v34 = v33;
  v35 = v63;
  v36 = &v63[*(v59 + 36)];
  v37 = v73;
  __chkstk_darwin(v32);
  *(&v50 - 2) = v37;
  sub_2A954(sub_2F434, v38, &v78);
  sub_2869C(&v78, v36);
  sub_8E80(&v78, &qword_317318, &qword_269850);
  v39 = (v36 + *(sub_2EF0(&qword_317320, &qword_269858) + 36));
  *v39 = v32;
  v39[1] = v34;
  (*(v65 + 32))(v35, v30, v66);
  v40 = sub_261740();
  v41 = sub_262500();
  v42 = v67;
  sub_22148(v35, v67, &qword_3172C8, &qword_269820);
  v43 = v42 + *(v62 + 36);
  *v43 = v40;
  *(v43 + 8) = v41;
  v44 = v74;
  sub_2C224(v37, v74, type metadata accessor for PagedScrollView);
  v45 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v46 = swift_allocObject();
  sub_2E9A8(v44, v46 + v45, type metadata accessor for PagedScrollView);
  v47 = v75;
  sub_22148(v42, v75, &qword_3172D0, &qword_269828);
  result = sub_2EF0(&qword_317328, &qword_269860);
  v49 = (v47 + *(result + 36));
  *v49 = sub_2F454;
  v49[1] = v46;
  v49[2] = 0;
  v49[3] = 0;
  return result;
}

uint64_t sub_274B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_262080();
  __chkstk_darwin(v6);
  v7 = sub_2EF0(&qword_3172E8, &qword_269838);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-v9];
  v21 = a1;
  v22 = a2;
  sub_261E50();
  LODWORD(v23) = 0;
  sub_2F3EC(&qword_317430, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_265250();
  sub_2EF0(&qword_317438, &qword_269910);
  v11 = sub_2F9C(&qword_317440, &qword_269918);
  v12 = sub_2FAE0();
  v23 = v11;
  v24 = v12;
  swift_getOpaqueTypeConformance2();
  sub_261100();
  sub_8E38(&qword_3172F0, &qword_3172E8, &qword_269838, &protocol conformance descriptor for LazyVStack<A>);
  sub_262C50();
  (*(v8 + 8))(v10, v7);
  v13 = type metadata accessor for PagedScrollView(0);
  v14 = *(*(a1 + *(v13 + 48)) + 16);
  v15 = *(a1 + *(v13 + 52));
  v16 = a3 + *(sub_2EF0(&qword_3172D8, &qword_269830) + 36);
  v17 = sub_261460();
  (*(*(v17 - 8) + 16))(v16, a2, v17);
  v18 = type metadata accessor for PagedScrollViewPositionObserverModifier(0);
  *(v16 + *(v18 + 20)) = v14;
  *(v16 + *(v18 + 24)) = v15;
}

uint64_t sub_277A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for PagedScrollView(0);
  v6 = v5 - 8;
  v26 = *(v5 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261460();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_317440, &qword_269918);
  v27 = *(v13 - 8);
  v28 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v32 = *(a1 + *(v6 + 56));
  (*(v10 + 16))(v12, a2, v9, v14);
  sub_2C224(a1, v8, type metadata accessor for PagedScrollView);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + *(v26 + 80) + v17) & ~*(v26 + 80);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v17, v12, v9);
  sub_2E9A8(v8, v19 + v18, type metadata accessor for PagedScrollView);

  sub_2EF0(&qword_3174B0, &qword_269948);
  sub_2EF0(&qword_3174B8, &qword_269950);
  sub_8E38(&qword_3174C0, &qword_3174B0, &qword_269948, &protocol conformance descriptor for [A]);
  v20 = sub_2F9C(&qword_317450, &qword_269920);
  v21 = sub_2FBA0();
  v30 = v20;
  v31 = v21;
  swift_getOpaqueTypeConformance2();
  sub_302B0();
  sub_2633C0();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v19) = sub_2624C0();
  *(inited + 32) = v19;
  v23 = sub_2624E0();
  *(inited + 33) = v23;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v19)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v23)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2FAE0();
  v24 = v28;
  sub_262D00();
  return (*(v27 + 8))(v16, v24);
}

uint64_t sub_27C0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a4;
  v80 = sub_2EF0(&qword_317450, &qword_269920);
  __chkstk_darwin(v80);
  v79 = v68 - v7;
  v78 = sub_2604E0();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageBackground(0);
  __chkstk_darwin(v9 - 8);
  v75 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for PagedScrollView(0);
  __chkstk_darwin(v84);
  *&v73 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v12 - 8);
  v14 = (v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_261460();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2EF0(&qword_317488, &qword_269938);
  __chkstk_darwin(v19);
  v21 = v68 - v20;
  v72 = sub_2EF0(&qword_317478, &qword_269930);
  __chkstk_darwin(v72);
  v74 = v68 - v22;
  v82 = sub_2EF0(&qword_317460, &qword_269928);
  v23 = __chkstk_darwin(v82);
  v83 = v68 - v24;
  v70 = v16;
  v25 = *(v16 + 16);
  v69 = v18;
  v71 = v15;
  v25(v18, a2, v15, v23);
  v27 = a1[3];
  v26 = a1[4];
  sub_2E18(a1, v27);
  v28 = (*(v26 + 32))(v27, v26);
  v29 = 0.0;
  if ((sub_2853C() & 1) == 0)
  {
    sub_261B0(v14);
    sub_30304(v14, type metadata accessor for SizeConstants.Spacing);
    v29 = 12.0;
  }

  v30 = a1[3];
  v31 = a1[4];
  sub_2E18(a1, v30);
  v32 = (*(v31 + 40))(v30, v31);
  v34 = v33;
  sub_2F4B4(a1, &v88);
  v35 = v73;
  sub_2C224(a3, v73, type metadata accessor for PagedScrollView);
  sub_2F4B4(a1, &v86);
  *&v21[v19[13]] = v28;
  v36 = &v21[v19[15]];
  *v36 = v32;
  v36[1] = v34;
  v37 = v69;
  v38 = v71;
  (v25)(v21, v69, v71);
  sub_2F4B4(&v88, &v21[v19[16]]);
  v39 = v19[17];
  sub_2F4B4(&v86, v85);
  sub_2869C(v85, &v21[v39]);
  sub_8E80(v85, &qword_317318, &qword_269850);
  sub_2F4EC(&v86);
  sub_30304(v35, type metadata accessor for PagedScrollView);
  sub_2F4EC(&v88);
  (*(v70 + 8))(v37, v38);
  *&v21[v19[14]] = v29;
  v40 = a1[3];
  v41 = a1[4];
  sub_2E18(a1, v40);
  v42 = (*(v41 + 16))(v40, v41);
  v44 = v43;
  v45 = (a3 + *(v84 + 44));
  v68[1] = a3;
  v46 = *(v45 + 2);
  v86 = *v45;
  v87 = v46;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_263200();
  v73 = v88;
  v47 = v89;
  v48 = v90;
  v49 = v74;
  sub_22148(v21, v74, &qword_317488, &qword_269938);
  v50 = v49 + *(v72 + 36);
  *v50 = v42;
  *(v50 + 8) = v44;
  *(v50 + 16) = v73;
  *(v50 + 32) = v47;
  *(v50 + 40) = v48;
  v51 = sub_263560();
  v53 = v52;
  v54 = v83 + *(v82 + 36);
  sub_2F4B4(a1, &v88);
  sub_2964C(&v88, v54);
  sub_8E80(&v88, &qword_317318, &qword_269850);
  KeyPath = swift_getKeyPath();
  v56 = a1[3];
  v57 = a1[4];
  sub_2E18(a1, v56);
  v58 = v75;
  (*(v57 + 24))(v56, v57);
  v59 = (v54 + *(sub_2EF0(&qword_3174D0, &qword_269958) + 36));
  v60 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  PageBackground.resolvedColorScheme.getter(v59 + *(v60 + 28));
  sub_30304(v58, type metadata accessor for PageBackground);
  *v59 = KeyPath;
  v61 = (v54 + *(sub_2EF0(&qword_3174A0, &qword_269940) + 36));
  *v61 = v51;
  v61[1] = v53;
  v62 = v83;
  sub_22148(v49, v83, &qword_317478, &qword_269930);
  sub_2605D0();
  sub_2EF0(&qword_3174D8, &unk_269960);
  *(swift_allocObject() + 16) = xmmword_267D30;
  v63 = a1[3];
  v64 = a1[4];
  sub_2E18(a1, v63);
  (*(v64 + 48))(v63, v64);
  sub_2601C0();
  v65 = v76;
  sub_2604D0();
  sub_2FCB0();
  sub_2F3EC(&qword_3174A8, &type metadata accessor for YearInReviewExposureEvent, &protocol conformance descriptor for YearInReviewExposureEvent);
  v66 = v79;
  sub_262980();
  sub_2FBA0();
  sub_262970();

  sub_8E80(v66, &qword_317450, &qword_269920);
  (*(v77 + 8))(v65, v78);
  return sub_8E80(v62, &qword_317460, &qword_269928);
}

uint64_t sub_2853C()
{
  v1 = type metadata accessor for PagedScrollView(0);
  v2 = (v0 + *(v1 + 44));
  v3 = *(v2 + 2);
  v16 = *v2;
  v17 = v3;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  v4 = v21;
  v5 = *(v0 + *(v1 + 48));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v20;
    sub_2F4B4(v5 + 40 * v6 - 8, &v16);
    v8 = v18;
    v9 = v19;
    sub_2E18(&v16, v18);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    sub_2F4EC(&v16);
    if (v4)
    {
      if (v12)
      {
        if (v7 == v10 && v4 == v12)
        {

          v14 = 1;
        }

        else
        {
          v14 = sub_264F10();
        }

        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v12)
    {
      v14 = 0;
      goto LABEL_15;
    }
  }

  else if (v21)
  {
LABEL_10:
    v14 = 0;
LABEL_15:

    return v14 & 1;
  }

  v14 = 1;
  return v14 & 1;
}

uint64_t sub_2869C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v113 = sub_2EF0(&qword_317330, &qword_269868);
  __chkstk_darwin(v113);
  v114 = &v91 - v3;
  v116 = sub_2EF0(&qword_317338, &qword_269870);
  __chkstk_darwin(v116);
  v5 = &v91 - v4;
  v112 = sub_2EF0(&qword_317340, &qword_269878);
  __chkstk_darwin(v112);
  v97 = (&v91 - v6);
  v98 = sub_2EF0(&qword_317348, &qword_269880);
  __chkstk_darwin(v98);
  v100 = (&v91 - v7);
  v99 = sub_2EF0(&qword_317350, &qword_269888);
  __chkstk_darwin(v99);
  v93 = &v91 - v8;
  v110 = sub_2EF0(&qword_317358, &qword_269890);
  __chkstk_darwin(v110);
  v101 = &v91 - v9;
  v10 = sub_2EF0(&qword_317360, &qword_269898);
  __chkstk_darwin(v10);
  v12 = &v91 - v11;
  v108 = sub_2EF0(&qword_317368, &qword_2698A0);
  __chkstk_darwin(v108);
  v109 = &v91 - v13;
  v14 = sub_2EF0(&qword_317370, &qword_2698A8);
  __chkstk_darwin(v14);
  v111 = &v91 - v15;
  v115 = sub_261180();
  v106 = *(v115 - 8);
  __chkstk_darwin(v115);
  v95 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v94 = (&v91 - v18);
  v107 = sub_2EF0(&qword_317378, &unk_2698B0);
  __chkstk_darwin(v107);
  v20 = (&v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v96 = &v91 - v22;
  v23 = sub_2EF0(&qword_316D98, &unk_269120);
  __chkstk_darwin(v23 - 8);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v105 = &v91 - v27;
  v28 = type metadata accessor for PageBackground(0);
  __chkstk_darwin(v28);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(a1, &v148, &qword_317318, &qword_269850);
  v31 = *(&v149 + 1);
  if (!*(&v149 + 1))
  {
    sub_8E80(&v148, &qword_317318, &qword_269850);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_317380, &qword_317340, &qword_269878, &protocol conformance descriptor for ZStack<A>);
    sub_261F80();
    sub_8198(v5, v12, &qword_317338, &qword_269870);
    swift_storeEnumTagMultiPayload();
    sub_2F51C();
    sub_2F800();
    sub_261F80();
    return sub_8E80(v5, &qword_317338, &qword_269870);
  }

  v92 = v5;
  v102 = v10;
  v103 = v14;
  v104 = v12;
  v32 = v150;
  sub_2E18(&v148, *(&v149 + 1));
  (*(v32 + 24))(v31, v32);
  sub_2F4EC(&v148);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v34 = v115;
    if (EnumCaseMultiPayload != 1)
    {
      v55 = *v30;
      v56 = *(v30 + 1);
      v57 = sub_2EF0(&qword_316DA0, &unk_277640);
      v58 = *(v57 + 48);
      v111 = *&v30[*(v57 + 64)];
      v59 = v111;
      v60 = v106;
      v61 = &v30[v58];
      v62 = v95;
      (*(v106 + 32))(v95, v61, v34);
      v63 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      v64 = v97;
      *v97 = v63;
      *(v64 + 8) = v65;
      v66 = sub_2EF0(&qword_3173D8, &unk_2698D0);
      sub_2AE78(v59, v62, v55, v56, v64 + *(v66 + 44));

      sub_8198(v64, v114, &qword_317340, &qword_269878);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_317380, &qword_317340, &qword_269878, &protocol conformance descriptor for ZStack<A>);
      v67 = v92;
      sub_261F80();
      sub_8198(v67, v104, &qword_317338, &qword_269870);
      swift_storeEnumTagMultiPayload();
      sub_2F51C();
      sub_2F800();
      sub_261F80();

      sub_8E80(v67, &qword_317338, &qword_269870);
      sub_8E80(v64, &qword_317340, &qword_269878);
      return (*(v60 + 8))(v62, v34);
    }

    v35 = *(v30 + 5);
    v144 = *(v30 + 4);
    v145 = v35;
    v36 = *(v30 + 7);
    v146 = *(v30 + 6);
    v147 = v36;
    v37 = *(v30 + 1);
    v140 = *v30;
    v141 = v37;
    v38 = *(v30 + 3);
    v142 = *(v30 + 2);
    v143 = v38;
    v154 = v146;
    v155 = v36;
    v152 = v144;
    v153 = v35;
    v150 = v142;
    v151 = v38;
    v148 = v140;
    v149 = v37;
    if (sub_2F8B8(&v148))
    {
      sub_2F8C4(&v140);
      v39 = swift_allocObject();
      *(v39 + 16) = 0xD00000000000002FLL;
      *(v39 + 24) = 0x80000000002904D0;
      v40 = v100;
      *v100 = sub_1F458;
      v40[1] = v39;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_2F718();
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
      v41 = v101;
      sub_261F80();
    }

    else
    {
      v75 = sub_2F950(&v148);
      v76 = v75[5];
      if (v76)
      {
        v77 = v75[4];
        v78 = v75[5];
      }

      else
      {
        v77 = *v75;
        v78 = v75[1];
      }

      sub_26038(&v133);
      v79 = *(&v134 + 1);
      v80 = v135;
      sub_2E18(&v133, *(&v134 + 1));
      sub_2F8C4(&v140);
      *&v126 = v77;
      *(&v126 + 1) = v78;
      LOBYTE(v127) = v76 != 0;
      v125[4] = v144;
      v125[5] = v145;
      v125[6] = v146;
      v125[7] = v147;
      v125[0] = v140;
      v125[1] = v141;
      v125[2] = v142;
      v125[3] = v143;
      v81 = sub_2F950(v125);
      v82 = *(v81 + 120);
      v83 = v82 * *(v81 + 16);
      v84 = sub_25EDC();
      BYTE2(v118) = -2;
      LOWORD(v118) = -772;
      v85 = (*(v80 + 16))(&v126, &v118, v79, v80, v83, v82, v84);
      sub_6204(v77, v78);
      v86 = [objc_opt_self() systemGrayColor];
      v87 = sub_262EE0();
      sub_7D47C(v85, v87, 0, &v126);
      sub_3080(&v133);
      v122 = v130;
      v123 = v131;
      v124 = v132;
      v118 = v126;
      v119 = v127;
      v120 = v128;
      v121 = v129;
      sub_2EF0(&qword_3173C0, &unk_2698C0);
      sub_8E38(&qword_3173B8, &qword_3173C0, &unk_2698C0, &protocol conformance descriptor for BackdropView<A>);
      v88 = v93;
      sub_262C60();
      v137 = v122;
      v138 = v123;
      v139 = v124;
      v133 = v118;
      v134 = v119;
      v135 = v120;
      v136 = v121;
      sub_8E80(&v133, &qword_3173C0, &unk_2698C0);
      sub_8198(v88, v100, &qword_317350, &qword_269888);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_2F718();
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
      v41 = v101;
      sub_261F80();
      sub_8E80(v88, &qword_317350, &qword_269888);
    }

    sub_8198(v41, v109, &qword_317358, &qword_269890);
    swift_storeEnumTagMultiPayload();
    sub_2F5A8();
    sub_2F660();
    v89 = v41;
    v90 = v111;
    sub_261F80();
    sub_8198(v90, v104, &qword_317370, &qword_2698A8);
    swift_storeEnumTagMultiPayload();
    sub_2F51C();
    sub_2F800();
    sub_261F80();
    sub_8E80(v90, &qword_317370, &qword_2698A8);
    v74 = v89;
    v72 = &qword_317358;
    v73 = &qword_269890;
  }

  else
  {
    v43 = *v30;
    v44 = sub_2EF0(&qword_316DA8, &qword_269130);
    v45 = v105;
    sub_22148(&v30[*(v44 + 48)], v105, &qword_316D98, &unk_269120);
    KeyPath = swift_getKeyPath();
    sub_8198(v45, v25, &qword_316D98, &unk_269120);
    v47 = v106;
    v48 = *(v106 + 48);
    v49 = v115;
    if (v48(v25, 1, v115) == 1)
    {
      v114 = v43;
      v50 = KeyPath;
      v51 = v94;
      sub_25CD4(v94);
      v52 = v48(v25, 1, v49);
      v53 = v51;
      KeyPath = v50;
      v43 = v114;
      v54 = v47;
      if (v52 != 1)
      {
        sub_8E80(v25, &qword_316D98, &unk_269120);
      }
    }

    else
    {
      v53 = v94;
      (*(v47 + 32))(v94, v25, v49);
      v54 = v47;
    }

    v68 = (v20 + *(v107 + 36));
    v69 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
    (*(v54 + 32))(v68 + *(v69 + 28), v53, v49);
    *v68 = KeyPath;
    *v20 = v43;
    v70 = v96;
    sub_22148(v20, v96, &qword_317378, &unk_2698B0);
    sub_8198(v70, v109, &qword_317378, &unk_2698B0);
    swift_storeEnumTagMultiPayload();
    sub_2F5A8();
    sub_2F660();

    v71 = v111;
    sub_261F80();
    sub_8198(v71, v104, &qword_317370, &qword_2698A8);
    swift_storeEnumTagMultiPayload();
    sub_2F51C();
    sub_2F800();
    sub_261F80();

    sub_8E80(v71, &qword_317370, &qword_2698A8);
    sub_8E80(v70, &qword_317378, &unk_2698B0);
    v72 = &qword_316D98;
    v73 = &unk_269120;
    v74 = v105;
  }

  return sub_8E80(v74, v72, v73);
}

uint64_t sub_2964C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a1;
  v145 = a2;
  v3 = sub_2EF0(&qword_3174E0, &qword_26B310);
  __chkstk_darwin(v3);
  v5 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v110 - v7;
  v9 = sub_261690();
  v140 = *(v9 - 8);
  __chkstk_darwin(v9);
  v139 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = &v110 - v12;
  v13 = sub_2EF0(&qword_3174E8, &qword_269970);
  __chkstk_darwin(v13);
  v141 = &v110 - v14;
  v15 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v15 - 8);
  v137 = (&v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2EF0(&qword_316D98, &unk_269120);
  __chkstk_darwin(v17 - 8);
  v128 = &v110 - v18;
  v19 = sub_261180();
  v125 = *(v19 - 8);
  __chkstk_darwin(v19);
  v132 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v131 = &v110 - v22;
  v135 = sub_263640();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v129 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v24 - 8);
  v26 = (&v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = sub_2EF0(&qword_3174F0, &qword_269978);
  __chkstk_darwin(v123);
  v28 = (&v110 - v27);
  v124 = sub_2EF0(&qword_3174F8, &qword_269980);
  __chkstk_darwin(v124);
  v127 = &v110 - v29;
  v126 = sub_2EF0(&qword_317500, &qword_269988);
  __chkstk_darwin(v126);
  v133 = &v110 - v30;
  v130 = sub_2EF0(&qword_317508, &qword_269990);
  __chkstk_darwin(v130);
  v136 = &v110 - v31;
  v143 = sub_2EF0(&qword_317510, &qword_269998);
  __chkstk_darwin(v143);
  v142 = &v110 - v32;
  v122 = sub_2EF0(&qword_317518, &qword_2699A0);
  v119 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = &v110 - v33;
  v34 = sub_2EF0(&qword_317520, &qword_2699A8);
  v144 = *(v34 - 8);
  __chkstk_darwin(v34);
  v121 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v120 = &v110 - v37;
  if (sub_2853C())
  {
    v38 = v145;
    v39 = *(v144 + 56);

    return v39(v38, 1, 1, v34);
  }

  v111 = v34;
  v112 = v8;
  v115 = v9;
  v113 = v5;
  v114 = v3;
  v116 = v13;
  v41 = sub_2630B0();
  sub_2626A0();
  v42 = sub_2625A0();

  KeyPath = swift_getKeyPath();
  v44 = (v28 + *(sub_2EF0(&qword_317528, &unk_2699E0) + 36));
  v45 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v46 = enum case for Image.Scale.large(_:);
  v47 = sub_2630F0();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  *v44 = swift_getKeyPath();
  *v28 = v41;
  v28[1] = KeyPath;
  v28[2] = v42;
  sub_25AF0(v26);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v48 = sub_263000();

  sub_30304(v26, type metadata accessor for ColorConstants);
  *(v28 + *(v123 + 36)) = v48;
  v49 = v128;
  sub_2AB6C(v128);
  v50 = v125;
  v51 = *(v125 + 48);
  if (v51(v49, 1, v19) == 1)
  {
    v52 = v131;
    sub_25CD4(v131);
    v53 = v51(v49, 1, v19);
    v54 = v138;
    v55 = v136;
    if (v53 != 1)
    {
      sub_8E80(v49, &qword_316D98, &unk_269120);
    }
  }

  else
  {
    v52 = v131;
    (*(v50 + 32))(v131, v49, v19);
    v54 = v138;
    v55 = v136;
  }

  v56 = v132;
  (*(v50 + 104))(v132, enum case for ColorScheme.light(_:), v19);
  v57 = sub_261170();
  v58 = *(v50 + 8);
  v58(v56, v19);
  v58(v52, v19);
  v59 = v134;
  v60 = &enum case for BlendMode.plusDarker(_:);
  if ((v57 & 1) == 0)
  {
    v60 = &enum case for BlendMode.plusLighter(_:);
  }

  v61 = v129;
  v62 = v135;
  (*(v134 + 104))(v129, *v60, v135);
  v63 = v127;
  (*(v59 + 32))(&v127[*(v124 + 36)], v61, v62);
  sub_22148(v28, v63, &qword_3174F0, &qword_269978);
  LOBYTE(v62) = sub_262520();
  v64 = v137;
  sub_261B0(v137);
  sub_30304(v64, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v133;
  sub_22148(v63, v133, &qword_3174F8, &qword_269980);
  v74 = v73 + *(v126 + 36);
  *v74 = v62;
  *(v74 + 8) = v66;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v72;
  *(v74 + 40) = 0;
  v75 = sub_2AA14();
  v76 = v116;
  v77 = v115;
  if ((v75 & 1) == 0 || (v78 = 15.0, (sub_2AD18(v117) & 1) == 0))
  {
    v78 = 0.0;
  }

  sub_22148(v73, v55, &qword_317500, &qword_269988);
  v79 = (v55 + *(v130 + 36));
  *v79 = 0.0;
  v79[1] = v78;
  v80 = sub_2639C();
  v82 = v142;
  v81 = v143;
  v83 = v139;
  if (v80 && (sub_2AA14() & 1) != 0)
  {
    sub_263610();
    sub_2635B0();

    v84 = sub_2635A0();
  }

  else
  {
    v84 = 0;
  }

  v85 = v2 + *(type metadata accessor for PagedScrollView(0) + 44);
  v86 = *(v85 + 16);
  v146 = *v85;
  v147 = v86;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  v87 = v149;
  v88 = v150;
  sub_22148(v55, v82, &qword_317508, &qword_269990);
  v89 = (v82 + *(v81 + 36));
  *v89 = v84;
  v89[1] = v87;
  v89[2] = v88;
  v90 = v140;
  v91 = v140 + 104;
  v92 = *(v140 + 104);
  v92(v54, enum case for DynamicTypeSize.small(_:), v77);
  v92(v83, enum case for DynamicTypeSize.xxxLarge(_:), v77);
  sub_2F3EC(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((sub_264380() & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v93 = *(v90 + 32);
  v94 = v112;
  v93(v112, v54, v77);
  v95 = v114;
  v93((v94 + *(v114 + 48)), v83, v77);
  v96 = v76;
  v97 = v113;
  sub_8198(v94, v113, &qword_3174E0, &qword_26B310);
  v98 = *(v95 + 48);
  v93(v141, v97, v77);
  v99 = *(v90 + 8);
  v99(v97 + v98, v77);
  sub_22148(v94, v97, &qword_3174E0, &qword_26B310);
  v100 = *(v95 + 48);
  v83 = v143;
  v101 = v141;
  v93(&v141[*(v96 + 36)], (v97 + v100), v77);
  v102 = v97;
  v76 = v96;
  v99(v102, v77);
  v91 = sub_30374();
  v88 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
  v54 = v118;
  v103 = v142;
  sub_262B70();
  sub_8E80(v101, &qword_3174E8, &qword_269970);
  sub_8E80(v103, &qword_317510, &qword_269998);
  if (qword_3158A0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v149 = qword_316D78;
  v150 = unk_316D80;
  *&v146 = v83;
  *(&v146 + 1) = v76;
  v147 = v91;
  v148 = v88;
  swift_getOpaqueTypeConformance2();
  sub_10A84();
  v104 = v121;
  v105 = v122;
  sub_262C00();
  (*(v119 + 8))(v54, v105);
  v106 = v111;
  if (qword_3158A8 != -1)
  {
    swift_once();
  }

  v146 = xmmword_316D88;
  v107 = v120;
  sub_2616F0();
  sub_8E80(v104, &qword_317520, &qword_2699A8);
  v108 = v107;
  v109 = v145;
  sub_22148(v108, v145, &qword_317520, &qword_2699A8);
  return (*(v144 + 56))(v109, 0, 1, v106);
}

uint64_t sub_2A680(uint64_t a1)
{
  v2 = sub_261180();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2619A0();
}

uint64_t sub_2A748(uint64_t a1)
{
  v2 = type metadata accessor for PagedScrollView(0);
  v3 = *(a1 + *(v2 + 48));
  if (*(v3 + 16))
  {
    sub_2F4B4(v3 + 32, &v9);
    v4 = v11;
    v5 = v12;
    sub_2E18(&v9, v11);
    (*(v5 + 16))(v4, v5);
    sub_2F4EC(&v9);
  }

  v6 = (a1 + *(v2 + 44));
  v7 = *(v6 + 2);
  v9 = *v6;
  v10 = v7;
  sub_2EF0(&qword_317300, &unk_269840);
  return sub_2631F0();
}

uint64_t sub_2A834(void *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_2E18(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v6 = v5;
  type metadata accessor for PagedScrollView(0);
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  if (v11)
  {
    if (v4 == v10 && v11 == v6)
    {

      v8 = 1;
    }

    else
    {
      v8 = sub_264F10();
    }
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2A954@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_2F4B4(v7, v9);
      result = v6(v9);
      if (v3)
      {
        return sub_2F4EC(v9);
      }

      if (result)
      {
        break;
      }

      result = sub_2F4EC(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v10;
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2AA14()
{
  v1 = type metadata accessor for PagedScrollView(0);
  v2 = (v0 + *(v1 + 44));
  v3 = *(v2 + 2);
  v15 = *v2;
  v16 = v3;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  v4 = v20;
  v5 = *(v0 + *(v1 + 48));
  if (*(v5 + 16))
  {
    v6 = v19;
    sub_2F4B4(v5 + 32, &v15);
    v7 = v17;
    v8 = v18;
    sub_2E18(&v15, v17);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    sub_2F4EC(&v15);
    if (v4)
    {
      if (v11)
      {
        if (v6 == v9 && v4 == v11)
        {

          v13 = 1;
        }

        else
        {
          v13 = sub_264F10();
        }

        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v11)
    {
      v13 = 0;
      goto LABEL_15;
    }
  }

  else if (v20)
  {
LABEL_10:
    v13 = 0;
LABEL_15:

    return v13 & 1;
  }

  v13 = 1;
  return v13 & 1;
}

uint64_t sub_2AB6C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PageBackground(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + *(type metadata accessor for PagedScrollView(0) + 48));
  v13 = v1;
  sub_2A954(sub_30B94, v6, v14);
  v7 = v15;
  if (v15)
  {
    v8 = v16;
    sub_2E18(v14, v15);
    (*(v8 + 24))(v7, v8);
    sub_2F4EC(v14);
    PageBackground.resolvedColorScheme.getter(a1);
    sub_30304(v5, type metadata accessor for PageBackground);
    v9 = sub_261180();
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    sub_8E80(v14, &qword_317318, &qword_269850);
    v11 = sub_261180();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_2AD18(uint64_t a1)
{
  sub_8198(a1, &v14, &qword_317318, &qword_269850);
  if (!*(&v15 + 1))
  {
    sub_8E80(&v14, &qword_317318, &qword_269850);
LABEL_10:
    v10 = 0;
    return v10 & 1;
  }

  v17[0] = v14;
  v17[1] = v15;
  v2 = v16;
  v18 = v16;
  v3 = *(&v15 + 1);
  sub_2E18(v17, *(&v15 + 1));
  v4 = (*(v2 + 16))(v3, v2);
  v6 = v5;
  v7 = (v1 + *(type metadata accessor for PagedScrollView(0) + 44));
  v8 = *(v7 + 2);
  v14 = *v7;
  *&v15 = v8;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  if (!v13)
  {

    sub_2F4EC(v17);
    goto LABEL_10;
  }

  if (v4 == v12 && v13 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_264F10();
  }

  sub_2F4EC(v17);
  return v10 & 1;
}

uint64_t sub_2AE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43[1] = a4;
  v43[2] = a3;
  v43[0] = a2;
  v51 = a5;
  v6 = sub_2630C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_260D00();
  __chkstk_darwin(v10 - 8);
  v11 = sub_2EF0(&qword_3173E8, &qword_2698E0);
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v44 = v43 - v12;
  v45 = sub_2EF0(&qword_3173F0, &qword_2698E8);
  __chkstk_darwin(v45);
  v14 = v43 - v13;
  v15 = sub_2EF0(&qword_3173F8, &qword_2698F0);
  __chkstk_darwin(v15 - 8);
  v50 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = v43 - v18;
  v19 = sub_2EF0(&qword_317378, &unk_2698B0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v48 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (v43 - v23);
  KeyPath = swift_getKeyPath();
  v26 = (v24 + *(v20 + 44));
  v27 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v28 = sub_261180();
  (*(*(v28 - 8) + 16))(v26 + v27, v43[0], v28);
  *v26 = KeyPath;
  *v24 = a1;
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = objc_opt_self();

  v31 = [v30 bundleForClass:ObjCClassFromMetadata];
  sub_260CF0();
  sub_263120();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v32 = sub_263100();

  (*(v7 + 8))(v9, v6);
  v52 = v32;
  v53 = 0;
  v54 = 257;
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  v34 = sub_2624C0();
  *(inited + 32) = v34;
  v35 = sub_2624E0();
  *(inited + 33) = v35;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v34)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v35)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2EF0(&qword_317400, &qword_2698F8);
  sub_2F960();
  v36 = v44;
  sub_262D00();

  (*(v46 + 32))(v14, v36, v47);
  *&v14[*(v45 + 36)] = 0;
  sub_2F9E4();
  v37 = v49;
  sub_262C60();
  sub_8E80(v14, &qword_3173F0, &qword_2698E8);
  v38 = v48;
  sub_8198(v24, v48, &qword_317378, &unk_2698B0);
  v39 = v50;
  sub_8198(v37, v50, &qword_3173F8, &qword_2698F0);
  v40 = v51;
  sub_8198(v38, v51, &qword_317378, &unk_2698B0);
  v41 = sub_2EF0(&qword_317428, &qword_269908);
  sub_8198(v39, v40 + *(v41 + 48), &qword_3173F8, &qword_2698F0);
  sub_8E80(v37, &qword_3173F8, &qword_2698F0);
  sub_8E80(v24, &qword_317378, &unk_2698B0);
  sub_8E80(v39, &qword_3173F8, &qword_2698F0);
  return sub_8E80(v38, &qword_317378, &unk_2698B0);
}

uint64_t sub_2B4D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_2C224(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagedScrollView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2E9A8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PagedScrollView);
  *a2 = sub_30BF4;
  a2[1] = v7;
  return result;
}

uint64_t sub_2B5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v4 = *(a1 + 24);
  sub_261730();
  v5 = *(a1 + 16);
  sub_261730();
  sub_2F9C(&qword_3171D8, &qword_26B730);
  sub_261730();
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  v6 = sub_263300();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v15 - v11;
  v15[4] = v5;
  v15[5] = v4;
  v16 = *(a1 + 32);
  v17 = v2;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2632F0();
  swift_getWitnessTable();
  sub_1609C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_1609C();
  return (v13)(v12, v6);
}

uint64_t sub_2B824@<X0>(char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v48 = a4;
  v35[1] = a2;
  v43 = sub_261730();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v35 - v9;
  sub_2F9C(&qword_3171D8, &qword_26B730);
  v10 = sub_261730();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v41 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v44 = v35 - v13;
  v14 = sub_261730();
  v36 = *(v14 - 8);
  v15 = v36;
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v37 = v35 - v19;
  v52 = a2;
  v53 = a3;
  v54 = v48;
  v55 = a5;
  type metadata accessor for FrameView(0, &v52);
  sub_262500();
  sub_262CB0();
  v51[6] = a5;
  v51[7] = &protocol witness table for _SafeAreaIgnoringLayout;
  WitnessTable = swift_getWitnessTable();
  sub_1609C();
  v39 = *(v15 + 8);
  v40 = v15 + 8;
  v39(v17, v14);
  sub_261420();
  sub_261420();
  v20 = v42;
  v21 = v48;
  sub_262DA0();
  v51[4] = v21;
  v51[5] = &protocol witness table for _FrameLayout;
  v22 = v43;
  v23 = swift_getWitnessTable();
  v24 = v41;
  v25 = View.animateIn()(v22, v23);
  (*(v45 + 8))(v20, v22, v25);
  v26 = sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v51[2] = v23;
  v51[3] = v26;
  v27 = v10;
  v28 = swift_getWitnessTable();
  v29 = v44;
  sub_1609C();
  v30 = v46;
  v31 = *(v46 + 8);
  v31(v24, v10);
  v32 = v37;
  (*(v36 + 16))(v17, v37, v14);
  v52 = v17;
  (*(v30 + 16))(v24, v29, v27);
  v53 = v24;
  v51[0] = v14;
  v51[1] = v27;
  v49 = WitnessTable;
  v50 = v28;
  sub_10E998(&v52, 2uLL, v51);
  v31(v29, v27);
  v33 = v39;
  v39(v32, v14);
  v31(v24, v27);
  return v33(v17, v14);
}

uint64_t sub_2BD54()
{
  sub_2F264();
  sub_261CB0();
  return v1;
}

uint64_t sub_2BD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_2EF0(&qword_3171C0, &qword_269710);
  sub_263320();
  if (v12)
  {
    if (v11 == *v2 && v12 == v2[1])
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_264F10();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2EF0(&qword_3171C8, &qword_269718);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_2EF0(&qword_3171D0, &unk_269720);
  v10 = a2 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = v7 & 1;
  return result;
}

uint64_t sub_2BF4C(uint64_t a1)
{
  sub_30CC(a1, v3);
  sub_30CC(v3, &v2);
  sub_30824();
  sub_261CC0();
  return sub_3080(v3);
}

uint64_t sub_2C144@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2C174@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2C1A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2C1D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BF0();
  *a1 = result & 1;
  return result;
}

char *sub_2C204(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2DED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2C224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2C300(uint64_t a1)
{
  sub_2C37C(319);
  if (v1 <= 0x3F)
  {
    sub_2C3F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2C37C(uint64_t a1)
{
  if (!qword_316E58)
  {
    sub_2F9C(&qword_316D98, &unk_269120);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_316E58);
    }
  }
}

void sub_2C3F4(uint64_t a1)
{
  if (!qword_316E60)
  {
    sub_261180();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_316E60);
    }
  }
}

uint64_t sub_2C4E8(uint64_t a1)
{
  result = sub_2603C0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2C5D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F70, &unk_2693C0);
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

  v14 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[12]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_2601E0();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[14];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_2C7C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_316F70, &unk_2693C0);
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

  result = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[12]) = (a2 - 1);
  }

  else
  {
    v17 = sub_2601E0();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[14];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_2C9A4(uint64_t a1)
{
  sub_2CC00(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_2CC00(319, &qword_316FF0, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_2CCB8(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_2CC54(319, &qword_316FF8, &qword_317000, &qword_2693E0, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_2CC00(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
          if (v5 <= 0x3F)
          {
            sub_2CCB8(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_2CC54(319, &qword_317010, &qword_316DD0, &qword_2692C0, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_2CCB8(319, &unk_317018, &type metadata for AnyPagedFrame, &type metadata accessor for Array);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for PagedScrollViewModel(319);
                  if (v9 <= 0x3F)
                  {
                    sub_2601E0();
                    if (v10 <= 0x3F)
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
    }
  }
}

void sub_2CC00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2CC54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2CCB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2CD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261460();
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

uint64_t sub_2CE30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_261460();
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

uint64_t sub_2CF08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2CF40(uint64_t a1)
{
  result = sub_261460();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PagedScrollViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_2CFCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2CFE0(uint64_t a1, int a2)
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

uint64_t sub_2D028(uint64_t result, int a2, int a3)
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

uint64_t sub_2D08C(uint64_t a1)
{
  result = sub_261460();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2D144(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_261460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(*(v6 - 8) + 64);
  v15 = *(v10 + 80);
  v16 = *(v13 + 80);
  if (*(v13 + 84) <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v15 + 16;
  v19 = *(*(*(a3 + 16) - 8) + 64) + v16;
  if (a2 > v17)
  {
    v20 = ((v19 + ((v18 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v16) + *(*(v9 - 8) + 64);
    v21 = 8 * v20;
    if (v20 <= 3)
    {
      v23 = ((a2 - v17 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v23))
      {
        v22 = *(a1 + v20);
        if (!v22)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 > 0xFF)
      {
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 < 2)
      {
LABEL_30:
        if (v17)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v22 = *(a1 + v20);
    if (!*(a1 + v20))
    {
      goto LABEL_30;
    }

LABEL_17:
    v24 = (v22 - 1) << v21;
    if (v20 > 3)
    {
      v24 = 0;
    }

    if (v20)
    {
      if (v20 <= 3)
      {
        v25 = v20;
      }

      else
      {
        v25 = 4;
      }

      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v26 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v26 = *a1;
        }
      }

      else if (v25 == 1)
      {
        v26 = *a1;
      }

      else
      {
        v26 = *a1;
      }
    }

    else
    {
      v26 = 0;
    }

    return v17 + (v26 | v24) + 1;
  }

LABEL_31:
  if (v8 == v17)
  {
    v27 = *(v7 + 48);
    v28 = v6;
    v29 = a1;
    v30 = *(v7 + 84);

    return v27(v29, v30, v28);
  }

  v32 = (v18 + ((((((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  if (v11 != v17)
  {
    v27 = *(v13 + 48);
    v29 = ((v19 + v32) & ~v16);
    v30 = *(v13 + 84);
    v28 = *(a3 + 24);

    return v27(v29, v30, v28);
  }

  v33 = *(v10 + 48);

  return v33(v32);
}

void sub_2D464(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_261460();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v11 - 8);
  if (v14 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = *(v11 - 8);
  v18 = *(v15 + 84);
  v19 = *(*(v8 - 8) + 64);
  v20 = *(v12 + 80);
  v21 = *(v12 + 64);
  v22 = *(v15 + 80);
  v23 = *(v15 + 64);
  if (v18 <= v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = *(v15 + 84);
  }

  v25 = v21 + v22;
  v26 = ((v21 + v22 + ((v20 + 16 + ((((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v22) + v23;
  if (a3 <= v24)
  {
    v27 = 0;
  }

  else if (v26 <= 3)
  {
    v30 = ((a3 - v24 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v30))
    {
      v27 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v27 = v31;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 1;
  }

  if (v24 < a2)
  {
    v28 = ~v24 + a2;
    if (v26 < 4)
    {
      v29 = (v28 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v28 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v27 > 1)
            {
LABEL_53:
              if (v27 == 2)
              {
                *&a1[v26] = v29;
              }

              else
              {
                *&a1[v26] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v27 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v27)
    {
      a1[v26] = v29;
    }

    return;
  }

  if (v27 <= 1)
  {
    if (v27)
    {
      a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v27 == 2)
  {
    *&a1[v26] = 0;
    goto LABEL_33;
  }

  *&a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v24)
  {
    v33 = *(v9 + 56);
    v34 = v8;
    v35 = a1;
    v36 = a2;
    v37 = v10;

LABEL_37:
    v33(v35, v36, v37, v34);
    return;
  }

  v38 = (v20 + 16 + (((((&a1[v19 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20;
  if (v14 != v24)
  {
    v33 = *(v17 + 56);
    v35 = ((v25 + v38) & ~v22);
    v36 = a2;
    v37 = v18;
    v34 = v11;

    goto LABEL_37;
  }

  v39 = *(v13 + 56);

  v39(v38, a2);
}

__n128 sub_2D830(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2D844(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2D88C(uint64_t result, int a2, int a3)
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

unint64_t sub_2D90C(uint64_t a1)
{
  result = sub_2D934();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2D934()
{
  result = qword_317198;
  if (!qword_317198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317198);
  }

  return result;
}

void *sub_2DA04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2DFF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DA24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2EEC8(a1, a2, a3, *v3, &qword_317258, &unk_27A660, &qword_316A30, &qword_2697B0);
  *v3 = result;
  return result;
}

void *sub_2DA64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2EEC8(a1, a2, a3, *v3, &qword_317248, &qword_269798, &qword_317250, &unk_2697A0);
  *v3 = result;
  return result;
}

char *sub_2DAA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2E12C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2DAC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2E238(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2DAE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2E344(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DB04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2E448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DB24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2E620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DB44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2E76C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DB64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2EEC8(a1, a2, a3, *v3, &qword_317228, &qword_269778, &qword_317230, &qword_269780);
  *v3 = result;
  return result;
}

char *sub_2DBA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2F010(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DBC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2F130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2DBE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317288, &qword_2697E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2DCE8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2EF0(&qword_317278, &unk_278FE0);
  v10 = *(sub_2EF0(&qword_317280, &qword_2697E0) - 8);
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
  v15 = *(sub_2EF0(&qword_317280, &qword_2697E0) - 8);
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

char *sub_2DED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_3175D0, &qword_269A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2DFF8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2EF0(&qword_317268, &qword_2697C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_317270, &unk_2697D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2E12C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317240, &qword_269790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2E238(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317290, &qword_2697F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2E344(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317220, &qword_269770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2E448(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2EF0(&qword_317298, &qword_2697F8);
  v10 = *(sub_262430() - 8);
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
  v15 = *(sub_262430() - 8);
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

void *sub_2E620(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2EF0(&qword_317260, &qword_2697B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_3160F8, &qword_2697C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2E76C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2EF0(&qword_3171A0, &unk_269650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_3171A8, &unk_282E00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2E8C0()
{
  v1 = *(type metadata accessor for PagedScrollViewPositionObserverModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_261460();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_2E9A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2EA10(double *a1)
{
  v3 = *(type metadata accessor for PagedScrollViewPositionObserverModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25650(a1, v4);
}

double sub_2EAAC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

double sub_2EAE8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_2EB74()
{
  v1 = type metadata accessor for PagedScrollView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_261180();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  sub_3074(*(v3 + v1[6]), *(v3 + v1[6] + 8));
  v7 = v3 + v1[7];
  if (*(v7 + 40))
  {
    sub_3080(v7);
  }

  else
  {
  }

  v8 = v3 + v1[8];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v10 = sub_261690();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  sub_3074(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  sub_3074(*(v3 + v1[10]), *(v3 + v1[10] + 8));

  v11 = v1[14];
  v12 = sub_2601E0();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);

  return swift_deallocObject();
}

uint64_t sub_2EE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PagedScrollView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_26A4C(a1, v6, a2);
}

void *sub_2EEC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2EF0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2F010(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317238, &qword_269788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2F130(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2EF0(&qword_317218, &unk_269760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_3160D0, &unk_270CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2F264()
{
  result = qword_3172A0;
  if (!qword_3172A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3172A0);
  }

  return result;
}

unint64_t sub_2F2C0()
{
  result = qword_3172E0;
  if (!qword_3172E0)
  {
    sub_2F9C(&qword_3172D8, &qword_269830);
    sub_2F9C(&qword_3172E8, &qword_269838);
    sub_8E38(&qword_3172F0, &qword_3172E8, &qword_269838, &protocol conformance descriptor for LazyVStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_2F3EC(&qword_3172F8, type metadata accessor for PagedScrollViewPositionObserverModifier, &unk_2695FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3172E0);
  }

  return result;
}

uint64_t sub_2F3EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2F454()
{
  v1 = *(type metadata accessor for PagedScrollView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2A748(v2);
}

unint64_t sub_2F51C()
{
  result = qword_317388;
  if (!qword_317388)
  {
    sub_2F9C(&qword_317370, &qword_2698A8);
    sub_2F5A8();
    sub_2F660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317388);
  }

  return result;
}

unint64_t sub_2F5A8()
{
  result = qword_317390;
  if (!qword_317390)
  {
    sub_2F9C(&qword_317378, &unk_2698B0);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317390);
  }

  return result;
}

unint64_t sub_2F660()
{
  result = qword_3173A8;
  if (!qword_3173A8)
  {
    sub_2F9C(&qword_317358, &qword_269890);
    sub_2F718();
    sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3173A8);
  }

  return result;
}

unint64_t sub_2F718()
{
  result = qword_3173B0;
  if (!qword_3173B0)
  {
    sub_2F9C(&qword_317350, &qword_269888);
    sub_8E38(&qword_3173B8, &qword_3173C0, &unk_2698C0, &protocol conformance descriptor for BackdropView<A>);
    sub_2F3EC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3173B0);
  }

  return result;
}

unint64_t sub_2F800()
{
  result = qword_3173D0;
  if (!qword_3173D0)
  {
    sub_2F9C(&qword_317338, &qword_269870);
    sub_8E38(&qword_317380, &qword_317340, &qword_269878, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3173D0);
  }

  return result;
}

uint64_t sub_2F918()
{

  return swift_deallocObject();
}

unint64_t sub_2F960()
{
  result = qword_317408;
  if (!qword_317408)
  {
    sub_2F9C(&qword_317400, &qword_2698F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317408);
  }

  return result;
}

unint64_t sub_2F9E4()
{
  result = qword_317410;
  if (!qword_317410)
  {
    sub_2F9C(&qword_3173F0, &qword_2698E8);
    sub_2F9C(&qword_317400, &qword_2698F8);
    sub_2F960();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317418, &qword_317420, &qword_269900, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317410);
  }

  return result;
}

unint64_t sub_2FAE0()
{
  result = qword_317448;
  if (!qword_317448)
  {
    sub_2F9C(&qword_317440, &qword_269918);
    sub_2F9C(&qword_317450, &qword_269920);
    sub_2FBA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317448);
  }

  return result;
}

unint64_t sub_2FBA0()
{
  result = qword_317458;
  if (!qword_317458)
  {
    sub_2F9C(&qword_317450, &qword_269920);
    sub_2F9C(&qword_317460, &qword_269928);
    sub_2605D0();
    sub_2FCB0();
    sub_2F3EC(&qword_3174A8, &type metadata accessor for YearInReviewExposureEvent, &protocol conformance descriptor for YearInReviewExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317458);
  }

  return result;
}

unint64_t sub_2FCB0()
{
  result = qword_317468;
  if (!qword_317468)
  {
    sub_2F9C(&qword_317460, &qword_269928);
    sub_2FD68();
    sub_8E38(&qword_317498, &qword_3174A0, &qword_269940, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317468);
  }

  return result;
}

unint64_t sub_2FD68()
{
  result = qword_317470;
  if (!qword_317470)
  {
    sub_2F9C(&qword_317478, &qword_269930);
    sub_8E38(&qword_317480, &qword_317488, &qword_269938, &unk_26955C);
    sub_2FE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317470);
  }

  return result;
}

unint64_t sub_2FE20()
{
  result = qword_317490;
  if (!qword_317490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317490);
  }

  return result;
}

uint64_t sub_2FE74()
{
  v1 = sub_261460();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for PagedScrollView(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v7;
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261180();
    (*(*(v9 - 8) + 8))(v0 + v7, v9);
  }

  else
  {
  }

  v10 = v5[5];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  sub_3074(*(v8 + v5[6]), *(v8 + v5[6] + 8));
  v12 = v8 + v5[7];
  if (*(v12 + 40))
  {
    sub_3080(v12);
  }

  else
  {
  }

  v13 = v8 + v5[8];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v15 = sub_261690();
    (*(*(v15 - 8) + 8))(v13 + v14, v15);
  }

  else
  {
  }

  sub_3074(*(v8 + v5[9]), *(v8 + v5[9] + 8));
  sub_3074(*(v8 + v5[10]), *(v8 + v5[10] + 8));

  v16 = v5[14];
  v17 = sub_2601E0();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);

  return swift_deallocObject();
}

uint64_t sub_301CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_261460() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PagedScrollView(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_27C0C(a1, v2 + v6, v9, a2);
}

unint64_t sub_302B0()
{
  result = qword_3174C8;
  if (!qword_3174C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3174C8);
  }

  return result;
}

uint64_t sub_30304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_30374()
{
  result = qword_317540;
  if (!qword_317540)
  {
    sub_2F9C(&qword_317510, &qword_269998);
    sub_3042C();
    sub_8E38(&qword_3175B8, &qword_3175C0, &qword_269A40, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317540);
  }

  return result;
}

unint64_t sub_3042C()
{
  result = qword_317548;
  if (!qword_317548)
  {
    sub_2F9C(&qword_317508, &qword_269990);
    sub_304E4();
    sub_8E38(&qword_3175A8, &qword_3175B0, &qword_269A38, &protocol conformance descriptor for _IgnoredByLayoutEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317548);
  }

  return result;
}

unint64_t sub_304E4()
{
  result = qword_317550;
  if (!qword_317550)
  {
    sub_2F9C(&qword_317500, &qword_269988);
    sub_30570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317550);
  }

  return result;
}

unint64_t sub_30570()
{
  result = qword_317558;
  if (!qword_317558)
  {
    sub_2F9C(&qword_3174F8, &qword_269980);
    sub_305FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317558);
  }

  return result;
}

unint64_t sub_305FC()
{
  result = qword_317560;
  if (!qword_317560)
  {
    sub_2F9C(&qword_3174F0, &qword_269978);
    sub_306B4();
    sub_8E38(&qword_317598, &qword_3175A0, &qword_269A30, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317560);
  }

  return result;
}

unint64_t sub_306B4()
{
  result = qword_317568;
  if (!qword_317568)
  {
    sub_2F9C(&qword_317528, &unk_2699E0);
    sub_3076C();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317568);
  }

  return result;
}

unint64_t sub_3076C()
{
  result = qword_317570;
  if (!qword_317570)
  {
    sub_2F9C(&qword_317578, &unk_269A20);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317570);
  }

  return result;
}

unint64_t sub_30824()
{
  result = qword_3175D8;
  if (!qword_3175D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3175D8);
  }

  return result;
}

unint64_t sub_3088C()
{
  result = qword_3175E0;
  if (!qword_3175E0)
  {
    sub_2F9C(&qword_3171B8, &qword_269668);
    sub_8E38(&qword_3175E8, &qword_3171B0, &qword_269660, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_3175F0, &qword_3175F8, &qword_288A00, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3175E0);
  }

  return result;
}

unint64_t sub_30974()
{
  result = qword_317600;
  if (!qword_317600)
  {
    sub_2F9C(&qword_3171D0, &unk_269720);
    sub_8E38(&qword_317608, &qword_3171C8, &qword_269718, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317600);
  }

  return result;
}

uint64_t sub_30A58(uint64_t *a1)
{
  sub_261730();
  sub_261730();
  sub_2F9C(&qword_3171D8, &qword_26B730);
  sub_261730();
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  sub_263300();

  return swift_getWitnessTable();
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.init(date:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  *(a2 + *(v6 + 24)) = 0;
  v7 = sub_2601B0();
  result = (*(*(v7 - 8) + 32))(a2, a1, v7);
  *(a2 + *(v6 + 20)) = a3;
  return result;
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2601B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.description.getter()
{
  v0 = sub_2600F0();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_260140();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_260110();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260150();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_264BC0(18);

  v36 = 0x203A65746164;
  v37 = 0xE600000000000000;
  sub_25FE30();
  sub_260100();
  sub_2600C0();
  (*(v5 + 8))(v7, v28);
  v21 = *(v9 + 8);
  v21(v11, v8);
  sub_260120();
  sub_2600D0();
  (*(v29 + 8))(v4, v30);
  v21(v14, v8);
  v22 = v31;
  sub_2600E0();
  sub_2600A0();
  (*(v32 + 8))(v22, v33);
  v21(v17, v8);
  sub_38088(&qword_317648, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  v23 = v34;
  sub_260190();
  v21(v20, v8);
  sub_264530(v35);

  v38._countAndFlagsBits = 0x203A65756C617620;
  v38._object = 0xE800000000000000;
  sub_264530(v38);
  sub_2EF0(&qword_316420, &qword_2681A0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_267D30;
  v25 = *(v23 + *(type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0) + 20));
  *(v24 + 56) = &type metadata for Double;
  *(v24 + 64) = &protocol witness table for Double;
  *(v24 + 32) = v25;
  v39._countAndFlagsBits = sub_264470();
  sub_264530(v39);

  return v36;
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.axLabel.getter()
{
  v0 = sub_260140();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_260010();
  __chkstk_darwin(v2 - 8);
  v3 = sub_260300();
  __chkstk_darwin(v3 - 8);
  v4 = sub_2602E0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_260290();
  __chkstk_darwin(v5 - 8);
  v6 = sub_2EF0(&qword_317650, &qword_269AB8);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_2EF0(&qword_317658, &qword_269AC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_260150();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  v19 = sub_260090();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = sub_260080();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_260250();
  sub_2602C0();
  sub_2602F0();
  sub_260000();
  sub_2600B0();
  v21 = v24;
  sub_260130();
  sub_2600D0();
  (*(v25 + 8))(v21, v26);
  v22 = *(v13 + 8);
  v22(v15, v12);
  sub_38088(&qword_317648, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_260190();
  v22(v18, v12);
  return v27;
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.axValue.getter()
{
  v0 = sub_265190();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265170();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2651F0();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_265200();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  v12 = sub_265220();
  v17[0] = v13;
  v17[1] = v12;
  sub_2EF0(&qword_317660, &unk_269AC8);
  sub_2651C0();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269100;
  sub_2651B0();
  sub_2651A0();
  sub_37D68(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2651D0();
  sub_265160();
  sub_265180();
  sub_25FE40();

  (*(v22 + 8))(v2, v23);
  (*(v20 + 8))(v5, v21);
  (*(v6 + 8))(v8, v19);
  sub_38088(&qword_317668, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
  v15 = v18;
  sub_265210();
  (*(v9 + 8))(v11, v15);
  return v24;
}

uint64_t static TotalMonthlyReadingFrameViewModel.MonthTotal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_260180() & 1) != 0 && (v4 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_31A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_260180() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t TotalMonthlyReadingFrameViewModel.init(monthlyTotals:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TotalMonthlyReadingFrameViewModel(0) + 20);
  v6 = sub_260550();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_31B88()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_31E08()
{
  v1 = v0;
  v2 = sub_260140();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_260150();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v31 - v7;
  v8 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  v21 = *v1;
  v22 = *(*v1 + 16);
  if (!v22)
  {
    return 0;
  }

  v32 = v4;
  v23 = v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  result = sub_38110(v23, v14, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
  if (v22 == 1)
  {
LABEL_3:
    sub_390C0(v14, v17, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
    sub_390C0(v17, v20, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
    v25 = v33;
    sub_25FE30();
    v26 = v34;
    sub_260130();
    v27 = v35;
    sub_2600D0();
    (*(v36 + 8))(v26, v37);
    v28 = *(v38 + 8);
    v29 = v32;
    v28(v25, v32);
    sub_38088(&qword_317648, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_260190();
    v28(v27, v29);
    sub_39D0C(v20, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
    return v39;
  }

  else
  {
    v30 = 1;
    while (v30 < *(v21 + 16))
    {
      sub_38110(v23 + *(v9 + 72) * v30, v11, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      if (*&v14[*(v8 + 20)] >= *&v11[*(v8 + 20)])
      {
        result = sub_39D0C(v11, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      }

      else
      {
        sub_39D0C(v14, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
        result = sub_390C0(v11, v14, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      }

      if (v22 == ++v30)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}