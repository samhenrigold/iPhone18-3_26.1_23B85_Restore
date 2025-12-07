char *CollectionPlaceItem.init(store:customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, unsigned __int16 a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int16 a21)
{
  v22 = v21;
  v106 = a8;
  v107 = a7;
  v95 = a6;
  v123 = a4;
  v124 = a5;
  v109 = a3;
  v96 = a2;
  v115 = a21;
  v113 = a20;
  v119 = a19;
  v118 = a17;
  v110 = a16;
  v108 = a15;
  v121 = a18;
  v122 = a13;
  v117 = a14;
  v104 = a12;
  v116 = a11;
  v105 = a10;
  v94 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v101 = *(v26 - 8);
  v100 = *(v101 + 64);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v114 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v93 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v99 = *(v31 - 8);
  v32 = *(v99 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v111 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v93 - v34;
  v103 = a1;
  v36 = [v22 initWithStore_];
  v37 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v38 = *&v36[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v112 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v39 = v36;
  v120 = v36;
  v40 = v39;
  [v38 lock];
  v102 = *&v36[v37];
  v41 = &v40[OBJC_IVAR___MSCollectionPlaceItem__customName];
  v42 = v109;
  *v41 = a2;
  *(v41 + 1) = v42;

  v43 = &v40[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate];
  v45 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate];
  v44 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8];
  v46 = v123;
  v47 = v124;
  *v43 = v123;
  *(v43 + 1) = v47;
  sub_1B6291034(v46, v47);
  sub_1B6284F64(v45, v44);
  *&v40[OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal] = a6;
  v48 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__latitude];
  v49 = v107;
  *&v40[OBJC_IVAR___MSCollectionPlaceItem__latitude] = v107;
  v98 = v49;

  v50 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__longitude];
  v51 = v106;
  *&v40[OBJC_IVAR___MSCollectionPlaceItem__longitude] = v106;
  v97 = v51;

  v52 = &v40[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress];
  v53 = v105;
  *v52 = a9;
  *(v52 + 1) = v53;

  v54 = &v40[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory];
  v55 = v104;
  *v54 = v116;
  v54[1] = v55;

  v56 = v122;
  sub_1B628C510(v122, v35, &unk_1EB943210, &unk_1B63C3F50);
  v57 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v35, &v40[v57], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v58 = &v40[OBJC_IVAR___MSCollectionPlaceItem__mapItemName];
  v59 = v108;
  *v58 = v117;
  v58[1] = v59;

  v60 = *&v40[OBJC_IVAR___MSCollectionPlaceItem__muid];
  v61 = v110;
  *&v40[OBJC_IVAR___MSCollectionPlaceItem__muid] = v110;
  v93 = v61;

  *&v40[OBJC_IVAR___MSCollectionPlaceItem__origin] = v118;
  v62 = v121;
  sub_1B628C510(v121, v30, &unk_1EB943680, qword_1B63C4070);
  v63 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  swift_beginAccess();
  sub_1B6282DFC(v30, &v40[v63], &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  v64 = &v40[OBJC_IVAR___MSCollectionPlaceItem__placeItemNote];
  v65 = v113;
  *v64 = v119;
  v64[1] = v65;

  *&v40[OBJC_IVAR___MSCollectionPlaceItem__type] = v115;
  sub_1B628C510(v56, v111, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v62, v114, &unk_1EB943680, qword_1B63C4070);
  v66 = (*(v99 + 80) + 104) & ~*(v99 + 80);
  v67 = (v32 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v99 + 9) & 0xFFFFFFFFFFFFFFF8;
  v69 = (*(v101 + 80) + v68 + 2) & ~*(v101 + 80);
  v70 = (v100 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v109;
  *(v71 + 16) = v96;
  *(v71 + 24) = v72;
  v74 = v123;
  v73 = v124;
  *(v71 + 32) = v123;
  *(v71 + 40) = v73;
  *(v71 + 48) = v95;
  v75 = v106;
  *(v71 + 56) = v107;
  *(v71 + 64) = v75;
  v76 = v105;
  *(v71 + 72) = v94;
  *(v71 + 80) = v76;
  v77 = v104;
  *(v71 + 88) = v116;
  *(v71 + 96) = v77;
  sub_1B628A128(v111, v71 + v66, &unk_1EB943210, &unk_1B63C3F50);
  v78 = (v71 + v67);
  v79 = v108;
  *v78 = v117;
  v78[1] = v79;
  *(v71 + v99) = v110;
  *(v71 + v68) = v118;
  sub_1B628A128(v114, v71 + v69, &unk_1EB943680, qword_1B63C4070);
  v80 = (v71 + v70);
  v81 = v113;
  *v80 = v119;
  v80[1] = v81;
  *(v71 + ((v70 + 17) & 0xFFFFFFFFFFFFFFF8)) = v115;
  sub_1B6282B88();
  sub_1B6291034(v74, v73);
  v82 = v98;
  v83 = v97;
  v84 = v93;
  if (sub_1B63BEF24())
  {
    v85 = swift_allocObject();
    *(v85 + 16) = sub_1B62D9538;
    *(v85 + 24) = v71;
    v86 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v87 = *&v40[v86];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[v86] = v87;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v87 = sub_1B629A8E8(0, v87[2] + 1, 1, v87);
      *&v40[v86] = v87;
    }

    v90 = v87[2];
    v89 = v87[3];
    if (v90 >= v89 >> 1)
    {
      v87 = sub_1B629A8E8((v89 > 1), v90 + 1, 1, v87);
    }

    v87[2] = v90 + 1;
    v91 = &v87[2 * v90];
    v91[4] = sub_1B62B9488;
    v91[5] = v85;
    *&v40[v86] = v87;
    swift_endAccess();
  }

  [*&v120[v112] unlock];

  sub_1B6284F64(v123, v124);
  sub_1B6284EAC(v121, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v122, &unk_1EB943210, &unk_1B63C3F50);

  return v40;
}

void sub_1B62D0074(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v48 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v48 - v31;
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v49 = a2;
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    v35 = v49;
    if (a4)
    {
      v36 = sub_1B63BEBC4();
    }

    else
    {
      v36 = 0;
    }

    [v34 setCustomName_];

    if (a6 >> 60 == 15)
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_1B63BE904();
    }

    [v34 setDroppedPinCoordinate_];

    [v34 setDroppedPinFloorOrdinal_];
    [v34 setLatitude_];
    [v34 setLongitude_];
    if (a11)
    {
      v38 = sub_1B63BEBC4();
    }

    else
    {
      v38 = 0;
    }

    [v34 setMapItemAddress_];

    if (a13)
    {
      v39 = sub_1B63BEBC4();
    }

    else
    {
      v39 = 0;
    }

    [v34 setMapItemCategory_];

    sub_1B628C510(a14, v32, &unk_1EB943210, &unk_1B63C3F50);
    v40 = sub_1B63BE994();
    v41 = *(v40 - 8);
    v42 = 0;
    if ((*(v41 + 48))(v32, 1, v40) != 1)
    {
      v42 = sub_1B63BE954();
      (*(v41 + 8))(v32, v40);
    }

    [v34 setMapItemLastRefreshed_];

    if (a16)
    {
      v43 = sub_1B63BEBC4();
    }

    else
    {
      v43 = 0;
    }

    [v34 setMapItemName_];

    [v34 setMuid_];
    [v34 setOrigin_];
    sub_1B628C510(a19, v29, &unk_1EB943680, qword_1B63C4070);
    v44 = sub_1B63BEA04();
    v45 = *(v44 - 8);
    v46 = 0;
    if ((*(v45 + 48))(v29, 1, v44) != 1)
    {
      v46 = sub_1B63BE9C4();
      (*(v45 + 8))(v29, v44);
    }

    [v34 setOriginalIdentifier_];

    if (a21)
    {
      v47 = sub_1B63BEBC4();
    }

    else
    {
      v47 = 0;
    }

    [v34 setPlaceItemNote_];

    [v34 setType_];
  }
}

id sub_1B62D0934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__customName);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D7EBC;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B62D0AEC(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6294630(a1, a2);
  a1[1] = v4;
  return sub_1B62D0B34;
}

uint64_t sub_1B62D0BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate);
  v7 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8);
  v24 = v6;
  v25 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    sub_1B6291034(v6, v7);
    v10 = 0;
    v11 = 0;
    v12 = v6;
LABEL_17:
    sub_1B6284F64(v6, v7);
    sub_1B62B1F7C(v10, v11);
    return v12;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v23[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  [v5 lock];
  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v11;
  [v5 unlock];
  if (!v11)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v11 = swift_allocObject();
  v11[2] = v15;
  v11[3] = v18;
  v11[4] = &v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62D7EE0;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_34_1;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  sub_1B6295C20(v15);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v12 = v24;
    sub_1B6291034(v24, v25);
    v6 = v24;
    v7 = v25;
    v10 = sub_1B62D7EE0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62D101C(uint64_t a1, unint64_t a2)
{
  sub_1B62D7EEC(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62D1064(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B6291034(*a1, v2);
  sub_1B62D7EEC(v1, v2);

  return sub_1B6284F64(v1, v2);
}

void sub_1B62D10C0(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 droppedPinCoordinate]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BE924();
      v13 = v12;

      v14 = *a3;
      v15 = a3[1];
      *a3 = v11;
      a3[1] = v13;
      sub_1B6284F64(v14, v15);
    }

    else
    {
    }
  }

  else
  {
    v16 = v18[0];
    v17 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B62D11E4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1B63BE904();
    }

    v10 = v9;
    [v7 setDroppedPinCoordinate_];
  }
}

uint64_t (*sub_1B62D12A4(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62D0BD0(a1, a2);
  a1[1] = v4;
  return sub_1B62D12EC;
}

uint64_t sub_1B62D12EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1B6291034(v4, v3);
    sub_1B62D7EEC(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62D7EEC(v4, v3);
  }

  return sub_1B6284F64(v2, v3);
}

uint64_t sub_1B62D13D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal);
  [v1 unlock];
  return v2;
}

id sub_1B62D1480(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62D80BC;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62D161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setDroppedPinFloorOrdinal_];
  }

  return result;
}

id (*sub_1B62D1680(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62D1704;
}

id sub_1B62D1770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__latitude);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B62D80C4;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_51_0;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B62D80C4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62D1B30(void *a1)
{
  sub_1B62D80EC(a1);
}

void (*sub_1B62D1B68(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62D1770(a1, a2);
  return sub_1B62D1BB0;
}

id sub_1B62D1C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__longitude);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B62D829C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_61;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B62D829C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62D1FCC(void *a1)
{
  sub_1B62D82C4(a1);
}

void (*sub_1B62D2004(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62D1C0C(a1, a2);
  return sub_1B62D204C;
}

void sub_1B62D2064(id *a1, char a2, void (*a3)(id))
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    a3(v6);

    v5 = v4;
  }

  else
  {
    a3(*a1);
    v5 = v6;
  }
}

uint64_t sub_1B62D20FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress);
  v6 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62D8474;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_72;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B62D8474;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62D24A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D849C;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B62D2658(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62D20FC(a1, a2);
  a1[1] = v4;
  return sub_1B62D26A0;
}

uint64_t sub_1B62D26D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory);
  v6 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62D84C0;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_90;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B62D84C0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62D2A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D84E8;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B62D2C2C(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62D26D0(a1, a2);
  a1[1] = v4;
  return sub_1B62D2C74;
}

uint64_t sub_1B62D2DB4@<X0>(char *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v3 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B62D850C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_108;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

uint64_t sub_1B62D33B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B62D8518;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943210, &unk_1B63C3F50);
}

void sub_1B62D3684(void *a1, uint64_t a2, _BYTE *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BE994();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  v24[0] = 0;
  v13 = [a1 existingObjectWithID:a2 error:v24];
  v14 = v24[0];
  if (v13)
  {
    v15 = v13;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v16 = swift_dynamicCastClass();
    v17 = v14;
    if (v16 && (v18 = [v16 mapItemLastRefreshed]) != 0)
    {
      v19 = v18;
      sub_1B63BE974();

      v20 = *(v7 + 32);
      v20(v12, v10, v6);
      sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
      v20(a3, v12, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
    }

    else
    {
    }
  }

  else
  {
    v21 = v24[0];
    v22 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B62D38B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    sub_1B628C510(a3, v7, &unk_1EB943210, &unk_1B63C3F50);
    v10 = sub_1B63BE994();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    v13 = a2;
    v14 = 0;
    if (v12 != 1)
    {
      v14 = sub_1B63BE954();
      (*(v11 + 8))(v7, v10);
    }

    [v9 setMapItemLastRefreshed_];
  }
}

void (*sub_1B62D3A20(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B62D2DB4(v4);
  return sub_1B62D3ADC;
}

uint64_t sub_1B62D3B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName);
  v6 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62D8540;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_125_0;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B62D8540;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62D3EC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D8568;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B62D4078(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62D3B1C(a1, a2);
  a1[1] = v4;
  return sub_1B62D40C0;
}

id sub_1B62D411C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__muid);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B62D858C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_143;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B62D858C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62D44DC(void *a1)
{
  sub_1B62D85B4(a1);
}

void sub_1B62D4514(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9)
    {
      v11 = [v9 *a4];

      if (v11)
      {
        v12 = *a3;
        *a3 = v11;
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v15[0];
    v14 = sub_1B63BE824();

    swift_willThrow();
  }
}

id sub_1B62D4628(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62D4698(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62D411C(a1, a2);
  return sub_1B62D46E0;
}

id sub_1B62D4764(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__origin) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62D8764;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B62D4900(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__origin);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62D4984;
}

uint64_t sub_1B62D4AD4@<X0>(char *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BEA04();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943680, qword_1B63C4070);
  sub_1B628C510(v3 + v13, v9, &unk_1EB943680, qword_1B63C4070);
  [v12 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
  }

  sub_1B628C510(v9, v7, &unk_1EB943680, qword_1B63C4070);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943680, qword_1B63C4070);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943680, qword_1B63C4070);
  }

  [v12 lock];
  v23 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B62D8788;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_161;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
  }

  return result;
}

uint64_t sub_1B62D50D4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943680, qword_1B63C4070);
  v12 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943680, qword_1B63C4070);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943680, qword_1B63C4070);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B62D8794;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943680, qword_1B63C4070);
}

uint64_t sub_1B62D53A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1B628C510(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

void sub_1B62D5450(void *a1, uint64_t a2, _BYTE *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BEA04();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  v24[0] = 0;
  v13 = [a1 existingObjectWithID:a2 error:v24];
  v14 = v24[0];
  if (v13)
  {
    v15 = v13;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v16 = swift_dynamicCastClass();
    v17 = v14;
    if (v16 && (v18 = [v16 originalIdentifier]) != 0)
    {
      v19 = v18;
      sub_1B63BE9E4();

      v20 = *(v7 + 32);
      v20(v12, v10, v6);
      sub_1B6284EAC(a3, &unk_1EB943680, qword_1B63C4070);
      v20(a3, v12, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
    }

    else
    {
    }
  }

  else
  {
    v21 = v24[0];
    v22 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B62D5680(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    sub_1B628C510(a3, v7, &unk_1EB943680, qword_1B63C4070);
    v10 = sub_1B63BEA04();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    v13 = a2;
    v14 = 0;
    if (v12 != 1)
    {
      v14 = sub_1B63BE9C4();
      (*(v11 + 8))(v7, v10);
    }

    [v9 setOriginalIdentifier_];
  }
}

void (*sub_1B62D57EC(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B62D4AD4(v4);
  return sub_1B62D58A8;
}

void sub_1B62D58D0(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2)
  {
    sub_1B628C510(v7, v6, a4, a5);
    a3(v6);
    sub_1B6284EAC(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

uint64_t sub_1B62D5984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote);
  v6 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62D8854;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_178;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B62D8854;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62D5D28(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B63BEBD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1B62D5DB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D887C;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B62D5F68(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v18];
  v7 = v18[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BEBD4();
      v15 = v14;

      *a3 = v13;
      a3[1] = v15;
    }

    else
    {
    }
  }

  else
  {
    v16 = v18[0];
    v17 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B62D608C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B62D6150(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62D5984(a1, a2);
  a1[1] = v4;
  return sub_1B62D6198;
}

uint64_t sub_1B62D61B0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id sub_1B62D6290(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__type) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62D88A0;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62D642C(uint64_t a1, uint64_t a2, __int16 a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62D649C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionPlaceItem__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62D6520;
}

void sub_1B62D65E8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62D67AC(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62D6664(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCollectionPlaceItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 mapItem]) != 0 && (v10 = v9, v11 = objc_msgSend(v9, sel_mapItemStorage), v10, v11))
    {
      v12 = sub_1B63BE924();
      v14 = v13;

      v15 = *a3;
      v16 = a3[1];
      *a3 = v12;
      a3[1] = v14;
      sub_1B6284F64(v15, v16);
    }

    else
    {
    }
  }

  else
  {
    v17 = v19[0];
    v18 = sub_1B63BE824();

    swift_willThrow();
  }
}

uint64_t sub_1B62D67AC(uint64_t a1, void *a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v84 - v7;
  v9 = sub_1B63BE994();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v86 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  sub_1B63BE984();
  v87 = a1;
  v88 = v10;
  if (a2)
  {
    v84 = v9;
    v85 = a2;
    v15 = v14;
    v16 = a2;
    [v16 coordinate];
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v19 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__latitude];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__latitude] = v18;

    [v16 coordinate];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v22 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__longitude];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__longitude] = v21;

    v23 = [v16 _muid];
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v25 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__muid];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__muid] = v24;

    v26 = [v16 addressObject];
    if (v26 && (v27 = v26, v28 = [v26 fullAddressWithMultiline_], v27, v28))
    {
      v29 = sub_1B63BEBD4();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress];
    *v32 = v29;
    *(v32 + 1) = v31;

    v33 = [v16 name];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1B63BEBD4();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v49 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemName];
    *v49 = v35;
    *(v49 + 1) = v37;

    v50 = v16;
    v51 = sub_1B6347B3C(v50);
    v53 = v52;

    v54 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory];
    *v54 = v51;
    *(v54 + 1) = v53;

    v55 = [v50 data];
    if (v55)
    {
      v56 = v55;
      v57 = sub_1B63BE924();
      v59 = v58;

      v60 = v50;
    }

    else
    {
      v60 = v50;

      v57 = 0;
      v59 = 0xF000000000000000;
    }

    v61 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage];
    v62 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage];
    v63 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage + 8];
    *v61 = v57;
    *(v61 + 1) = v59;
    sub_1B6284F64(v62, v63);
    v10 = v88;
    v47 = *(v88 + 16);
    v64 = v8;
    v65 = v8;
    v66 = v15;
    v67 = v15;
    v9 = v84;
    v47(v65, v67, v84);
    (*(v10 + 56))(v64, 0, 1, v9);
    v68 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    v69 = &a3[v68];
    v14 = v66;
    sub_1B6282DFC(v64, v69, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    a2 = v85;
    v48 = v60;
  }

  else
  {
    v38 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__latitude];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__latitude] = 0;

    v39 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__longitude];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__longitude] = 0;

    v40 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__muid];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__muid] = 0;

    v41 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress];
    *v41 = 0;
    *(v41 + 1) = 0;

    v42 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemName];
    *v42 = 0;
    *(v42 + 1) = 0;

    v43 = &a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory];
    *v43 = 0;
    *(v43 + 1) = 0;

    v44 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage];
    v45 = *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v44, v45);
    (*(v10 + 56))(v8, 1, 1, v9);
    v46 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v8, &a3[v46], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v47 = *(v10 + 16);
    v48 = 0;
  }

  v70 = v86;
  v47(v86, v14, v9);
  v71 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v72 = (v11 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  *(v73 + 16) = a2;
  (*(v10 + 32))(v73 + v71, v70, v9);
  *(v73 + v72) = a3;
  sub_1B6282B88();
  v74 = v48;
  v75 = a3;
  if (sub_1B63BEF24())
  {
    v76 = swift_allocObject();
    *(v76 + 16) = sub_1B62D93BC;
    *(v76 + 24) = v73;
    v77 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v78 = *&v75[v77];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v75[v77] = v78;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v78 = sub_1B629A8E8(0, v78[2] + 1, 1, v78);
      *&v75[v77] = v78;
    }

    v81 = v78[2];
    v80 = v78[3];
    if (v81 >= v80 >> 1)
    {
      v78 = sub_1B629A8E8((v80 > 1), v81 + 1, 1, v78);
    }

    v78[2] = v81 + 1;
    v82 = &v78[2 * v81];
    v82[4] = sub_1B62B9488;
    v82[5] = v76;
    *&v75[v77] = v78;
    swift_endAccess();
  }

  return (*(v88 + 8))(v14, v9);
}

void sub_1B62D6E8C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  if (!a3)
  {
    v44 = a2;
    v45 = [v8 mapItem];
    if (v45)
    {
      v46 = v45;
      [v45 setMapItemStorage_];
    }

    [v8 setLatitude_];
    [v8 setLongitude_];
    [v8 setMuid_];
    v50 = v44;
    v47 = sub_1B63BE954();
    [v8 setModificationTime_];

    [v8 setMapItemAddress_];
    [v8 setMapItemName_];
    [v8 setMapItemCategory_];
    [v8 setMapItemLastRefreshed_];
    goto LABEL_24;
  }

  ObjCClassFromObject = swift_getObjCClassFromObject();
  v50 = a2;
  v10 = a3;
  v11 = [ObjCClassFromObject strippedMapItemWith_];
  v12 = [v8 managedObjectContext];
  if (v12)
  {
    v13 = v12;
    [v11 coordinate];
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v8 setLatitude_];

    [v11 coordinate];
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v8 setLongitude_];

    v18 = [v11 _muid];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v8 setMuid_];

    v20 = [v11 addressObject];
    if (!v20 || (v21 = v20, v22 = [v20 fullAddressWithMultiline_], v21, !v22))
    {
      v22 = 0;
    }

    [v8 setMapItemAddress_];

    v23 = [v11 name];
    [v8 setMapItemName_];

    v24 = v11;
    sub_1B6347B3C(v24);

    v25 = sub_1B63BEBC4();

    [v8 setMapItemCategory_];

    v26 = sub_1B63BE954();
    [v8 setMapItemLastRefreshed_];

    v27 = [v8 mapItem];
    if (!v27)
    {
      type metadata accessor for MapsSyncManagedMixinMapItem();
      v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v8 setMapItem_];

      v29 = [v8 mapItem];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1B63BE954();
        [v30 setCreateTime_];
      }

      v32 = [v8 mapItem];
      if (!v32)
      {
        goto LABEL_13;
      }

      v33 = v32;
      v34 = sub_1B63BE954();
      [v33 setModificationTime_];

      v27 = v34;
    }

LABEL_13:
    v35 = [v8 mapItem];
    if (v35)
    {
      v36 = v35;
      [v24 coordinate];
      [v36 setLatitude_];
      [v24 coordinate];
      [v36 setLongitude_];
      v38 = [v24 data];
      if (v38)
      {
        v39 = v38;
        v40 = sub_1B63BE924();
        v42 = v41;

        v43 = sub_1B63BE904();
        sub_1B628BAC0(v40, v42);
      }

      else
      {
        v43 = 0;
      }

      [v36 setMapItemStorage_];

      v49 = sub_1B63BE954();
      [v36 setModificationTime_];
    }

LABEL_24:
    v48 = v50;
    goto LABEL_25;
  }

  v48 = v11;
LABEL_25:
}

void (*sub_1B62D7444(void **a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B6290B60(a1, a2);
  return sub_1B62D748C;
}

void sub_1B62D748C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62D67AC(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62D67AC(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

void *sub_1B62D755C(void *a1, void *a2, int a3, int a4)
{
  v9 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__customName);
  *v9 = 0;
  v9[1] = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate) = xmmword_1B63C3E40;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal) = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__latitude) = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__longitude) = 0;
  v10 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
  v13 = sub_1B63BE994();
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  v14 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__mapItemName);
  *v14 = 0;
  v14[1] = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__muid) = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__origin) = 0;
  v15 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  v16 = sub_1B63BEA04();
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  v17 = (v4 + OBJC_IVAR___MSCollectionPlaceItem__placeItemNote);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__type) = 0;
  *(v4 + OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage) = xmmword_1B63C3E40;

  return sub_1B628F5D4(a1, a2, a3, a4);
}

uint64_t sub_1B62D7770()
{

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate), *(v0 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8));

  sub_1B6284EAC(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier, &unk_1EB943680, qword_1B63C4070);

  v1 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage);
  v2 = *(v0 + OBJC_IVAR___MSCollectionPlaceItem__mapItemStorage + 8);

  return sub_1B6284F64(v1, v2);
}

id CollectionPlaceItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionPlaceItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B62D78C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20)
{
  v54 = a6;
  v55 = a7;
  v53 = a5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v47 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v47 - v27;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDB0F2A8;
  if (a2)
  {
    v49 = sub_1B63BEBC4();
  }

  else
  {
    v49 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v48 = 0;
    v29 = a11;
    v30 = a12;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_11:
    v47 = 0;
    if (v29)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_1B629119C(a3, a4);
  v48 = sub_1B63BE904();
  sub_1B6284F64(a3, a4);
  v29 = a11;
  v30 = a12;
  if (!a9)
  {
    goto LABEL_11;
  }

LABEL_8:
  v47 = sub_1B63BEBC4();

  if (v29)
  {
LABEL_9:
    v31 = sub_1B63BEBC4();

    goto LABEL_13;
  }

LABEL_12:
  v31 = 0;
LABEL_13:
  v50 = v30;
  sub_1B628C510(v30, v28, &unk_1EB943210, &unk_1B63C3F50);
  v32 = sub_1B63BE994();
  v33 = *(v32 - 8);
  v34 = 0;
  if ((*(v33 + 48))(v28, 1, v32) != 1)
  {
    v34 = sub_1B63BE954();
    (*(v33 + 8))(v28, v32);
  }

  if (a14)
  {
    v35 = sub_1B63BEBC4();
  }

  else
  {
    v35 = 0;
  }

  sub_1B628C510(a17, v25, &unk_1EB943680, qword_1B63C4070);
  v36 = sub_1B63BEA04();
  v37 = *(v36 - 8);
  v38 = 0;
  if ((*(v37 + 48))(v25, 1, v36) != 1)
  {
    v38 = sub_1B63BE9C4();
    (*(v37 + 8))(v25, v36);
  }

  if (a19)
  {
    v39 = sub_1B63BEBC4();
  }

  else
  {
    v39 = 0;
  }

  LOWORD(v46) = a20;
  LOWORD(v45) = a16;
  v40 = v47;
  v42 = v48;
  v41 = v49;
  v43 = [v52 initWithStore:v51 customName:v49 droppedPinCoordinate:v48 droppedPinFloorOrdinal:v53 latitude:v54 longitude:v55 mapItemAddress:v47 mapItemCategory:v31 mapItemLastRefreshed:v34 mapItemName:v35 muid:a15 origin:v45 originalIdentifier:v38 placeItemNote:v39 type:v46];

  sub_1B6284EAC(a17, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v50, &unk_1EB943210, &unk_1B63C3F50);
  return v43;
}

void sub_1B62D7CF4(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 9) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8);
  v11 = (*(v10 + 80) + v9 + 2) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B62D0074(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v9), v2 + v11, *(v2 + v12), *(v2 + v12 + 8), *(v2 + ((v12 + 17) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B62D7EEC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate);
  v8 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate);
  v9 = *(v3 + OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B62D94D8;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id sub_1B62D80EC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__latitude);
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D94B4;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62D82C4(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__longitude);
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D9490;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62D85B4(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCollectionPlaceItem__muid);
  *(v2 + OBJC_IVAR___MSCollectionPlaceItem__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62D946C;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

uint64_t sub_1B62D87BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t keypath_setTm_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void sub_1B62D93BC(uint64_t a1, void *a2)
{
  v5 = *(sub_1B63BE994() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1B62D6E8C(a1, a2, v8, v2 + v6, v7);
}

void *sub_1B62D953C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B62DAA00(a1, a2, v6, v5);
}

id CollectionTransitItem.__allocating_init(muid:transitLineStorage:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v9 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = v8;
    sub_1B629119C(a2, a3);
    v10 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
    v8 = v11;
  }

  v12 = [v8 initWithStore:v9 muid:a1 transitLineStorage:v10];
  sub_1B6284F64(a2, a3);

  return v12;
}

id CollectionTransitItem.init(muid:transitLineStorage:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    sub_1B629119C(a2, a3);
    v9 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
  }

  v10 = [v4 initWithStore:v8 muid:a1 transitLineStorage:v9];
  sub_1B6284F64(a2, a3);

  return v10;
}

char *CollectionTransitItem.init(store:muid:transitLineStorage:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = a1;
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  *&v13[OBJC_IVAR___MSCollectionTransitItem__muid] = a2;
  v14 = &v13[OBJC_IVAR___MSCollectionTransitItem__transitLineStorage];
  v15 = *&v13[OBJC_IVAR___MSCollectionTransitItem__transitLineStorage];
  v16 = *&v13[OBJC_IVAR___MSCollectionTransitItem__transitLineStorage + 8];
  *v14 = a3;
  *(v14 + 1) = a4;
  sub_1B6291034(a3, a4);
  sub_1B6284F64(v15, v16);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  sub_1B6282B88();
  sub_1B6291034(a3, a4);
  if (sub_1B63BEF24())
  {
    v27 = v9;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1B62DAFF0;
    *(v18 + 24) = v17;
    v26 = v18;
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v20 = *&v13[v19];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v19] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B629A8E8(0, v20[2] + 1, 1, v20);
      *&v13[v19] = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1B629A8E8((v22 > 1), v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = &v20[2 * v23];
    v24[4] = sub_1B62B8188;
    v24[5] = v26;
    *&v13[v19] = v20;
    swift_endAccess();

    v9 = v27;
  }

  else
  {
  }

  [*&v10[v11] unlock];
  sub_1B6284F64(a3, a4);

  return v13;
}

void sub_1B62D9B24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  type metadata accessor for MapsSyncManagedCollectionTransitItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    [v9 setMuid_];
    if (a5 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B63BE904();
    }

    v12 = v11;
    [v9 setTransitLineStorage_];
  }
}

void *sub_1B62D9CB4(void *a1, char a2, char a3)
{
  sub_1B6289B44(a1, a2, a3);
  type metadata accessor for MapsSyncManagedCollectionTransitItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = result;
    v8 = a1;
    v9 = [v7 muid];
    *(v3 + OBJC_IVAR___MSCollectionTransitItem__muid) = v9;
    if ((a2 & 1) != 0 || (v10 = [v7 transitLineStorage]) == 0)
    {

      v12 = 0;
      v14 = 0xF000000000000000;
    }

    else
    {
      v11 = v10;
      v12 = sub_1B63BE924();
      v14 = v13;
    }

    v15 = (v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
    v16 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
    v17 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage + 8);
    *v15 = v12;
    v15[1] = v14;

    return sub_1B6284F64(v16, v17);
  }

  return result;
}

uint64_t sub_1B62D9E94()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollectionTransitItem__muid);
  [v1 unlock];
  return v2;
}

id sub_1B62D9F40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionTransitItem__muid) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62DAFFC;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62DA0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCollectionTransitItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setMuid_];
  }

  return result;
}

id (*sub_1B62DA140(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionTransitItem__muid);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62DA1C4;
}

uint64_t sub_1B62DA26C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
  v7 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage + 8);
  v24 = v6;
  v25 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    sub_1B6291034(v6, v7);
    v10 = 0;
    v11 = 0;
    v12 = v6;
LABEL_17:
    sub_1B6284F64(v6, v7);
    sub_1B62B1F7C(v10, v11);
    return v12;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v23[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  [v5 lock];
  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v11;
  [v5 unlock];
  if (!v11)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v11 = swift_allocObject();
  v11[2] = v15;
  v11[3] = v18;
  v11[4] = &v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62DB004;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_5;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  sub_1B6295C20(v15);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v12 = v24;
    sub_1B6291034(v24, v25);
    v6 = v24;
    v7 = v25;
    v10 = sub_1B62DB004;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62DA6B8(uint64_t a1, unint64_t a2)
{
  sub_1B62DB010(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62DA700(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B6291034(*a1, v2);
  sub_1B62DB010(v1, v2);

  return sub_1B6284F64(v1, v2);
}

void sub_1B62DA75C(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCollectionTransitItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 transitLineStorage]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BE924();
      v13 = v12;

      v14 = *a3;
      v15 = a3[1];
      *a3 = v11;
      a3[1] = v13;
      sub_1B6284F64(v14, v15);
    }

    else
    {
    }
  }

  else
  {
    v16 = v18[0];
    v17 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B62DA880(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedCollectionTransitItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1B63BE904();
    }

    v10 = v9;
    [v7 setTransitLineStorage_];
  }
}

uint64_t (*sub_1B62DA940(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62DA26C(a1, a2);
  a1[1] = v4;
  return sub_1B62DA988;
}

uint64_t sub_1B62DA988(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1B6291034(v4, v3);
    sub_1B62DB010(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62DB010(v4, v3);
  }

  return sub_1B6284F64(v2, v3);
}

void *sub_1B62DAA00(void *a1, void *a2, int a3, int a4)
{
  v51 = a4;
  v52 = a3;
  v53 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  *&v4[OBJC_IVAR___MSCollectionTransitItem__muid] = 0;
  *&v4[OBJC_IVAR___MSCollectionTransitItem__transitLineStorage] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSCollectionItem__positionIndex] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v50 = &v46 - v12;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B7B68(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  *&v4[OBJC_IVAR___MSCollectionItem__collections] = v13;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v11;
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v16 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v18 = sub_1B63BEA04();
  v19 = *(*(v18 - 8) + 56);
  v19(&v4[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v21 = sub_1B63BE994();
  v22 = *(*(v21 - 8) + 56);
  v22(&v4[v20], 1, 1, v21);
  v22(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v21);
  v23 = v53;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v53;
  v24 = v52 & 1;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v52 & 1;
  v25 = type metadata accessor for MapsSyncObject(0);
  v54.receiver = v4;
  v54.super_class = v25;
  v26 = v23;
  v27 = objc_msgSendSuper2(&v54, sel_init);
  v28 = v27;
  if (a1)
  {
    v29 = v27;
    v30 = [a1 objectID];
    v31 = *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v30;

    (*((*MEMORY[0x1E69E7D40] & *v29) + 0x218))(a1, v24, v51 & 1);
  }

  else
  {
    v32 = v27;
    v33 = v50;
    sub_1B63BE9F4();
    v19(v33, 0, 1, v18);
    v34 = v47;
    sub_1B62B2C0C(v33, v47);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v34, &v32[v35]);
    swift_endAccess();
    v36 = v49;
    sub_1B62B2C0C(v33, v49);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_1B62B2CEC(v36, v38 + v37);
    v39 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v40 = *&v32[v39];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v39] = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1B629A8E8(0, v40[2] + 1, 1, v40);
      *&v32[v39] = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    v44 = &v40[2 * v43];
    v44[4] = sub_1B62B2D5C;
    v44[5] = v38;
    *&v32[v39] = v40;
    swift_endAccess();

    sub_1B62B2DF0(v33);
  }

  return v28;
}

id CollectionTransitItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionTransitItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B62DB010(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
  v8 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage);
  v9 = *(v3 + OBJC_IVAR___MSCollectionTransitItem__transitLineStorage + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B62DB360;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id CommunityID.__allocating_init(communityIdentifier:expired:positionIndex:usedCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  if (qword_1EDB0F2A0 != -1)
  {
    v17 = v11;
    swift_once();
    v11 = v17;
  }

  v12 = qword_1EDB0F2A8;
  if (a2)
  {
    v13 = v11;
    v14 = sub_1B63BEBC4();

    v11 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v11 initWithStore:v12 communityIdentifier:v14 expired:a3 & 1 positionIndex:a4 usedCount:a5];

  return v15;
}

id CommunityID.init(communityIdentifier:expired:positionIndex:usedCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EDB0F2A0 != -1)
  {
    v14 = a2;
    swift_once();
    a2 = v14;
  }

  v10 = qword_1EDB0F2A8;
  if (a2)
  {
    v11 = sub_1B63BEBC4();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithStore:v10 communityIdentifier:v11 expired:a3 & 1 positionIndex:a4 usedCount:a5];

  return v12;
}

char *CommunityID.__allocating_init(store:communityIdentifier:expired:positionIndex:usedCount:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = [objc_allocWithZone(v7) initWithStore_];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v15 = *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v16 = v13;
  [v15 lock];
  v17 = &v16[OBJC_IVAR___MSCommunityID__communityIdentifier];
  *v17 = a2;
  *(v17 + 1) = a3;

  v16[OBJC_IVAR___MSCommunityID__expired] = a4;
  *&v16[OBJC_IVAR___MSCommunityID__positionIndex] = a5;
  *&v16[OBJC_IVAR___MSCommunityID__usedCount] = a6;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B62DEA80;
    *(v19 + 24) = v18;
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v21 = *&v16[v20];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16[v20] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B629A8E8(0, v21[2] + 1, 1, v21);
      *&v16[v20] = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1B629A8E8((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v25 = &v21[2 * v24];
    v25[4] = sub_1B62B8188;
    v25[5] = v19;
    *&v16[v20] = v21;
    swift_endAccess();
  }

  [*&v13[v14] unlock];

  return v16;
}

char *CommunityID.init(store:communityIdentifier:expired:positionIndex:usedCount:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = [v7 initWithStore_];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v15 = *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v16 = v13;
  [v15 lock];
  v17 = &v16[OBJC_IVAR___MSCommunityID__communityIdentifier];
  *v17 = a2;
  *(v17 + 1) = a3;

  v16[OBJC_IVAR___MSCommunityID__expired] = a4;
  *&v16[OBJC_IVAR___MSCommunityID__positionIndex] = a5;
  *&v16[OBJC_IVAR___MSCommunityID__usedCount] = a6;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B62DF3F8;
    *(v19 + 24) = v18;
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v21 = *&v16[v20];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16[v20] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B629A8E8(0, v21[2] + 1, 1, v21);
      *&v16[v20] = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1B629A8E8((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v25 = &v21[2 * v24];
    v25[4] = sub_1B62B9488;
    v25[5] = v19;
    *&v16[v20] = v21;
    swift_endAccess();
  }

  [*&v13[v14] unlock];

  return v16;
}

void sub_1B62DBA98(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a2;
    if (a4)
    {
      a4 = sub_1B63BEBC4();
    }

    [v12 setCommunityIdentifier_];

    [v12 setExpired_];
    [v12 setPositionIndex_];
    [v12 setUsedCount_];
  }
}

uint64_t sub_1B62DBC30()
{
  v1 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = MEMORY[0x1E69E7CC0];

  v3 = OBJC_IVAR___MSCommunityID__rapRecordChanges;
  swift_beginAccess();
  *(v0 + v3) = v2;

  v4 = OBJC_IVAR___MSCommunityID__reviewedPlaceChanges;
  swift_beginAccess();
  *(v0 + v4) = v2;
}

uint64_t sub_1B62DBEC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCommunityID__communityIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSCommunityID__communityIdentifier + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62DEA94;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_6;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B62DEA94;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62DC2CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCommunityID__communityIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62DEAA0;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B62DC484(void *a1, uint64_t a2, uint64_t *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v16];
  v5 = v16[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCommunityID();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 communityIdentifier]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BEBD4();
      v13 = v12;

      *a3 = v11;
      a3[1] = v13;
    }

    else
    {
    }
  }

  else
  {
    v14 = v16[0];
    v15 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B62DC5A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4)
    {
      v9 = sub_1B63BEBC4();
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v7 setCommunityIdentifier_];
  }
}

id (*sub_1B62DC660(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62DBEC0(a1, a2);
  a1[1] = v4;
  return sub_1B62DC6A8;
}

id sub_1B62DC6A8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B62DC2CC(*a1, v2);
  }

  sub_1B62DC2CC(v3, v2);
}

uint64_t sub_1B62DC78C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCommunityID__expired);
  [v1 unlock];
  return v2;
}

id sub_1B62DC838(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCommunityID__expired) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62DEAA8;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62DC9D4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setExpired_];
  }

  return result;
}

id (*sub_1B62DCA38(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCommunityID__expired);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62DCABC;
}

id sub_1B62DCB50(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCommunityID__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62DEAB0;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B62DCCEC(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCommunityID__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62DCD70;
}

id sub_1B62DCE00(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCommunityID__usedCount) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62DEAD4;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62DCF9C(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62DD00C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCommunityID__usedCount);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62DD090;
}

char *sub_1B62DD0B4()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B8F20(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v9 = v1;
  sub_1B629821C();
  v2 = *&v0[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v0;
  v4 = v0;
  v5 = v2;
  sub_1B6382218(inited, &v9, v4);

  swift_setDeallocating();
  swift_arrayDestroy();
  v6 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v6 lock];
  sub_1B62DED5C(v4, &v9, &OBJC_IVAR___MSCommunityID__rapRecordChanges, sub_1B62CAAB0, sub_1B62CC52C);
  [v6 unlock];
  v7 = sub_1B62B7A50(v9);

  return v7;
}

void sub_1B62DD248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B629E3F0(a1, v27);
  type metadata accessor for MapsSyncManagedRAPRecord();
  if (swift_dynamicCast())
  {
    v4 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    v5 = v27[5];
    v25 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
    v6 = objc_allocWithZone(type metadata accessor for RAPRecord(0));
    *&v6[OBJC_IVAR___MSRAPRecord__clientRevision] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__contentData] = xmmword_1B63C3E40;
    v7 = &v6[OBJC_IVAR___MSRAPRecord__countryCode];
    *v7 = 0;
    v7[1] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__positionIndex] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__rapResponse] = xmmword_1B63C3E40;
    v8 = &v6[OBJC_IVAR___MSRAPRecord__reportId];
    *v8 = 0;
    v8[1] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__status] = 0;
    v9 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
    v10 = sub_1B63BE994();
    v11 = *(*(v10 - 8) + 56);
    v11(&v6[v9], 1, 1, v10);
    v12 = &v6[OBJC_IVAR___MSRAPRecord__summary];
    *v12 = 0;
    v12[1] = 0;
    *&v6[OBJC_IVAR___MSRAPRecord__type] = 0;
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
    v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    v14 = objc_allocWithZone(MEMORY[0x1E696AD10]);
    v15 = v5;
    v16 = v4;
    *&v6[v13] = [v14 init];
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
    v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
    v18 = type metadata accessor for MapsSyncHashing(0);
    (*(*(v18 - 8) + 56))(&v6[v17], 1, 1, v18);
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    v20 = sub_1B63BEA04();
    (*(*(v20 - 8) + 56))(&v6[v19], 1, 1, v20);
    v11(&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v10);
    v11(&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v10);
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v16;
    v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v25;
    v26.receiver = v6;
    v26.super_class = type metadata accessor for MapsSyncObject(0);
    v21 = v16;
    v22 = objc_msgSendSuper2(&v26, sel_init);
    v23 = [v15 objectID];
    v24 = *(v22 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v22 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v23;

    (*((*MEMORY[0x1E69E7D40] & *v22) + 0x218))(v15, v25, 1);
    sub_1B62CAAB0(v27, v22);
  }
}

id sub_1B62DD7A8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v9 lock];
  v10 = OBJC_IVAR___MSCommunityID__rapRecordChanges;
  swift_beginAccess();
  v11 = *&v4[v10];
  v12 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v10] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1B62B1FF0(0, v11[2] + 1, 1, v11);
    *&v4[v10] = v11;
  }

  v15 = v11[2];
  v14 = v11[3];
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1B62B1FF0((v14 > 1), v15 + 1, 1, v11);
  }

  v11[2] = v15 + 1;
  v16 = &v11[2 * v15];
  *(v16 + 32) = a2 & 1;
  v16[5] = v12;
  *&v4[v10] = v11;
  swift_endAccess();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v12;
  v17[4] = a3;
  v17[5] = a4;
  sub_1B6282B88();
  v18 = v12;
  v19 = v4;

  if (sub_1B63BEF24())
  {
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1B62DF3BC;
    *(v20 + 24) = v17;
    v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v22 = *&v19[v21];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v21] = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1B629A8E8(0, v22[2] + 1, 1, v22);
      *&v19[v21] = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B629A8E8((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1B62B9488;
    v26[5] = v20;
    *&v19[v21] = v22;
    swift_endAccess();
  }

  return [v9 unlock];
}

char *sub_1B62DDA28()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B8734(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v9 = v1;
  sub_1B629821C();
  v2 = *&v0[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v0;
  v4 = v0;
  v5 = v2;
  sub_1B6382298(inited, &v9, v4);

  swift_setDeallocating();
  swift_arrayDestroy();
  v6 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v6 lock];
  sub_1B62DED5C(v4, &v9, &OBJC_IVAR___MSCommunityID__reviewedPlaceChanges, sub_1B62CAA74, sub_1B62CBFBC);
  [v6 unlock];
  v7 = sub_1B62B7A24(v9);

  return v7;
}

void sub_1B62DDBBC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, SEL *a5, id a6)
{
  if (!a1 && a2)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v23 = a6;
      v17 = a3;
      v18 = a4;
      v19 = a5;
      v20 = a2;
      v21 = sub_1B63BF044();
      a2 = v20;
      a5 = v19;
      a4 = v18;
      a3 = v17;
      a6 = v23;
      if (!v21)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = a5;
      v8 = a4;
      v9 = a3;
      v10 = a6;
      v11 = MEMORY[0x1B8C92830](0);
    }

    else
    {
      if (!*(v6 + 16))
      {
        __break(1u);
        return;
      }

      v7 = a5;
      v8 = a4;
      v9 = a3;
      v10 = a6;
      v11 = *(a2 + 32);
    }

    v22 = v11;
    type metadata accessor for MapsSyncManagedCommunityID();
    v12 = swift_dynamicCastClass();
    if (v12 && (v13 = [v12 *v7]) != 0)
    {
      v14 = v13;
      v15 = v8;
      sub_1B62DEC08(v14, v9, v15, v10);

      v16 = v15;
    }

    else
    {
      v16 = v22;
    }
  }
}

id sub_1B62DDD4C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a1;
  a3();

  a4(0);
  v7 = sub_1B63BEC94();

  return v7;
}

id sub_1B62DDF10(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v9 lock];
  v10 = OBJC_IVAR___MSCommunityID__reviewedPlaceChanges;
  swift_beginAccess();
  v11 = *&v4[v10];
  v12 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v10] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1B62B1FCC(0, v11[2] + 1, 1, v11);
    *&v4[v10] = v11;
  }

  v15 = v11[2];
  v14 = v11[3];
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1B62B1FCC((v14 > 1), v15 + 1, 1, v11);
  }

  v11[2] = v15 + 1;
  v16 = &v11[2 * v15];
  *(v16 + 32) = a2 & 1;
  v16[5] = v12;
  *&v4[v10] = v11;
  swift_endAccess();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v12;
  v17[4] = a3;
  v17[5] = a4;
  sub_1B6282B88();
  v18 = v12;
  v19 = v4;

  if (sub_1B63BEF24())
  {
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1B62DF340;
    *(v20 + 24) = v17;
    v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v22 = *&v19[v21];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v21] = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1B629A8E8(0, v22[2] + 1, 1, v22);
      *&v19[v21] = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B629A8E8((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1B62B9488;
    v26[5] = v20;
    *&v19[v21] = v22;
    swift_endAccess();
  }

  return [v9 unlock];
}

uint64_t sub_1B62DE178(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, id, uint64_t, uint64_t))
{
  v12 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = a4;
  v14 = a2;

  v15 = v12;
  v16 = a4;
  a7(inited, v14, a5, a6);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1B62DE284(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(void))
{
  if (!a1)
  {
    type metadata accessor for MapsSyncManagedCommunityID();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      if (a2)
      {
        v11 = a2 & 0xFFFFFFFFFFFFFF8;
        if (a2 >> 62)
        {
          v21 = v10;
          v17 = sub_1B63BF044();
          v11 = a2 & 0xFFFFFFFFFFFFFF8;
          v18 = v17;
          v10 = v21;
          if (!v18)
          {
            return;
          }
        }

        else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v12 = v10;
          v19 = a3;
          v15 = MEMORY[0x1B8C92830](0, a2);
        }

        else
        {
          if (!*(v11 + 16))
          {
            __break(1u);
            return;
          }

          v12 = v10;
          v13 = *(a2 + 32);
          v14 = a3;
          v15 = v13;
        }

        v20 = v15;
        a6(0);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          a4(v12, v16);
        }
      }
    }
  }
}

void *sub_1B62DE3C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B62DE420(a1, a2, v6, v5);
}

void *sub_1B62DE420(void *a1, void *a2, int a3, int a4)
{
  v50 = a4;
  v52 = a3;
  v51 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v46 - v11;
  v12 = &v4[OBJC_IVAR___MSCommunityID__communityIdentifier];
  *v12 = 0;
  v12[1] = 0;
  v4[OBJC_IVAR___MSCommunityID__expired] = 0;
  *&v4[OBJC_IVAR___MSCommunityID__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSCommunityID__usedCount] = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___MSCommunityID__rapRecordChanges] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___MSCommunityID__reviewedPlaceChanges] = v13;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v13;
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v16 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v18 = sub_1B63BEA04();
  v19 = *(*(v18 - 8) + 56);
  v19(&v4[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v21 = sub_1B63BE994();
  v22 = *(*(v21 - 8) + 56);
  v22(&v4[v20], 1, 1, v21);
  v22(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v21);
  v23 = v52;
  v24 = v51;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v23;
  v25 = type metadata accessor for MapsSyncObject(0);
  v53.receiver = v4;
  v53.super_class = v25;
  v26 = a2;
  v27 = objc_msgSendSuper2(&v53, sel_init);
  v28 = v27;
  if (v24)
  {
    v29 = v27;
    v30 = [v24 objectID];
    v31 = *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v30;

    (*((*MEMORY[0x1E69E7D40] & *v29) + 0x218))(v24, v23 & 1, v50 & 1);
  }

  else
  {
    v32 = v27;
    v33 = v49;
    sub_1B63BE9F4();
    v19(v33, 0, 1, v18);
    v34 = v46;
    sub_1B62B2C0C(v33, v46);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v34, &v32[v35]);
    swift_endAccess();
    v36 = v48;
    sub_1B62B2C0C(v33, v48);
    v37 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v38 = swift_allocObject();
    sub_1B62B2CEC(v36, v38 + v37);
    v39 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v40 = *&v32[v39];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v39] = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1B629A8E8(0, v40[2] + 1, 1, v40);
      *&v32[v39] = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    v44 = &v40[2 * v43];
    v44[4] = sub_1B62B2D5C;
    v44[5] = v38;
    *&v32[v39] = v40;
    swift_endAccess();

    sub_1B62B2DF0(v33);
  }

  return v28;
}

uint64_t sub_1B62DE994()
{
}

id CommunityID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunityID(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62DEAF8(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedCommunityID();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if ((a2 & 1) != 0 || (v8 = [v6 communityIdentifier]) == 0)
    {
      v10 = 0;
      v12 = 0;
    }

    else
    {
      v9 = v8;
      v10 = sub_1B63BEBD4();
      v12 = v11;
    }

    v13 = (v2 + OBJC_IVAR___MSCommunityID__communityIdentifier);
    *v13 = v10;
    v13[1] = v12;

    v14 = [v6 expired];
    *(v2 + OBJC_IVAR___MSCommunityID__expired) = v14;
    v15 = [v6 positionIndex];
    *(v2 + OBJC_IVAR___MSCommunityID__positionIndex) = v15;
    v16 = [v6 usedCount];

    *(v2 + OBJC_IVAR___MSCommunityID__usedCount) = v16;
  }
}

uint64_t sub_1B62DEC08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t))
{
  v8 = sub_1B63BE844();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B63BEEC4();
  sub_1B62B9380();
  while (1)
  {
    sub_1B63BEF64();
    if (!v15)
    {
      break;
    }

    sub_1B628E928(&v14, v13);
    a4(v13, a2, a3);
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
      return (*(v9 + 8))(v11, v8);
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B62DED5C(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(id *, void *), uint64_t (*a5)(void))
{
  v8 = *a3;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = (v10 + 40);
    do
    {
      v15 = *v12;
      if (*(v12 - 1))
      {
        v13 = v15;
        v14 = a5();
      }

      else
      {
        a4(&v16, v15);
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t type metadata accessor for CommunityID(uint64_t a1)
{
  result = qword_1EB9431F8;
  if (!qword_1EB9431F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_107Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id CuratedCollection.__allocating_init(curatedCollectionIdentifier:positionIndex:resultProviderIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    v11 = v8;
    swift_once();
    v8 = v11;
  }

  v9 = qword_1EDB0F2A8;

  return [v8 initWithStore:v9 curatedCollectionIdentifier:a1 positionIndex:a2 resultProviderIdentifier:a3];
}

id CuratedCollection.init(curatedCollectionIdentifier:positionIndex:resultProviderIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB0F2A8;

  return [v4 initWithStore:v8 curatedCollectionIdentifier:a1 positionIndex:a2 resultProviderIdentifier:a3];
}

char *CuratedCollection.__allocating_init(store:curatedCollectionIdentifier:positionIndex:resultProviderIdentifier:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(v5) initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  *&v13[OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier] = a2;
  *&v13[OBJC_IVAR___MSCuratedCollection__positionIndex] = a3;
  *&v13[OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier] = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B62E0AF0;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *&v13[v16];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v16] = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *&v13[v16] = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B8188;
    v21[5] = v15;
    *&v13[v16] = v17;
    swift_endAccess();
  }

  [*&v10[v11] unlock];

  return v13;
}

char *CuratedCollection.init(store:curatedCollectionIdentifier:positionIndex:resultProviderIdentifier:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = [v4 initWithStore_];
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v11 = *&v9[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v12 = v9;
  [v11 lock];
  *&v12[OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier] = a2;
  *&v12[OBJC_IVAR___MSCuratedCollection__positionIndex] = a3;
  *&v12[OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier] = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1B62E0E30;
    *(v14 + 24) = v13;
    v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v16 = *&v12[v15];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[v15] = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1B629A8E8(0, v16[2] + 1, 1, v16);
      *&v12[v15] = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1B629A8E8((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = sub_1B62B9488;
    v20[5] = v14;
    *&v12[v15] = v16;
    swift_endAccess();
  }

  [*&v9[v10] unlock];

  return v12;
}

void sub_1B62DF9C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapsSyncManagedCuratedCollection();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a2;
    [v10 setCuratedCollectionIdentifier_];
    [v10 setPositionIndex_];
    [v10 setResultProviderIdentifier_];
  }
}

id sub_1B62DFBE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E0AFC;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B62DFD84(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62DFE08;
}

id sub_1B62DFE98(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCuratedCollection__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E0B20;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62E0034(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62E00A4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCuratedCollection__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62E0128;
}

uint64_t sub_1B62E01BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier);
  [v1 unlock];
  return v2;
}

id sub_1B62E0268(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E0B44;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62E0404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setResultProviderIdentifier_];
  }

  return result;
}

id (*sub_1B62E0468(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E04EC;
}

void *sub_1B62E0514(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B62E0570(a1, a2, v6, v5);
}

void *sub_1B62E0570(void *a1, void *a2, int a3, int a4)
{
  v50 = a4;
  v51 = a3;
  v52 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v45 - v11;
  *&v4[OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier] = 0;
  *&v4[OBJC_IVAR___MSCuratedCollection__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v14 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v16 = sub_1B63BEA04();
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v19 = sub_1B63BE994();
  v20 = *(*(v19 - 8) + 56);
  v21 = &v4[v18];
  v22 = v51;
  v20(v21, 1, 1, v19);
  v20(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v19);
  v23 = v52;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
  v24 = type metadata accessor for MapsSyncObject(0);
  v53.receiver = v4;
  v53.super_class = v24;
  v25 = a2;
  v26 = objc_msgSendSuper2(&v53, sel_init);
  v27 = v26;
  if (v23)
  {
    v28 = v26;
    v29 = [v23 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v23, v22 & 1, v50 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v49;
    sub_1B63BE9F4();
    v17(v32, 0, 1, v16);
    v33 = v46;
    sub_1B62B2C0C(v32, v46);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v33, &v31[v34]);
    swift_endAccess();
    v35 = v48;
    sub_1B62B2C0C(v32, v48);
    v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v37 = swift_allocObject();
    sub_1B62B2CEC(v35, v37 + v36);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v31[v38];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v38] = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v31[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B62B2D5C;
    v43[5] = v37;
    *&v31[v38] = v39;
    swift_endAccess();

    sub_1B62B2DF0(v32);
  }

  return v27;
}

id CuratedCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CuratedCollection(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62E0D80(void *a1)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedCuratedCollection();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 curatedCollectionIdentifier];
    *(v1 + OBJC_IVAR___MSCuratedCollection__curatedCollectionIdentifier) = v6;
    v7 = [v4 positionIndex];
    *(v1 + OBJC_IVAR___MSCuratedCollection__positionIndex) = v7;
    LODWORD(v4) = [v4 resultProviderIdentifier];

    *(v1 + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier) = v4;
  }
}

id FavoriteItem.__allocating_init(customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20)
{
  v21 = v20;
  v54 = a4;
  v55 = a5;
  LODWORD(v53) = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v47 - v25;
  v51 = objc_allocWithZone(v21);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v49 = qword_1EDB0F2A8;
  if (a2)
  {
    v50 = sub_1B63BEBC4();

    v27 = a9;
    v28 = a10;
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_8:
    v48 = 0;
    if (v27)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v50 = 0;
  v27 = a9;
  v28 = a10;
  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_5:
  v48 = sub_1B63BEBC4();

  if (v27)
  {
LABEL_6:
    v47 = sub_1B63BEBC4();

    goto LABEL_10;
  }

LABEL_9:
  v47 = 0;
LABEL_10:
  v52 = v28;
  sub_1B628C510(v28, v26, &unk_1EB943210, &unk_1B63C3F50);
  v29 = sub_1B63BE994();
  v30 = *(v29 - 8);
  v31 = 0;
  if ((*(v30 + 48))(v26, 1, v29) != 1)
  {
    v31 = sub_1B63BE954();
    (*(v30 + 8))(v26, v29);
  }

  if (a12)
  {
    v32 = sub_1B63BEBC4();

    v33 = a18;
    if (a15)
    {
LABEL_14:
      v34 = sub_1B63BEBC4();

      goto LABEL_17;
    }
  }

  else
  {
    v32 = 0;
    v33 = a18;
    if (a15)
    {
      goto LABEL_14;
    }
  }

  v34 = 0;
LABEL_17:
  if (v33)
  {
    v35 = sub_1B63BEBC4();
  }

  else
  {
    v35 = 0;
  }

  WORD2(v46) = a20;
  LODWORD(v46) = a19;
  v45 = v34;
  v44 = v32;
  v36 = v34;
  v37 = v32;
  v38 = v47;
  v39 = v50;
  v40 = v48;
  v42 = v54;
  v41 = v55;
  v53 = [v51 initWithStore:v49 customName:v50 hidden:v53 & 1 latitude:v54 longitude:v55 mapItemAddress:v48 mapItemCategory:v47 mapItemLastRefreshed:v31 mapItemName:v44 muid:a13 originatingAddressString:v45 positionIndex:a16 shortcutIdentifier:v35 source:v46 type:? version:?];

  sub_1B6284EAC(v52, &unk_1EB943210, &unk_1B63C3F50);
  return v53;
}

id FavoriteItem.init(customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int16 a19, unsigned __int16 a20, __int16 a21)
{
  v23 = sub_1B62E88B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, __SPAIR32__(a20, a19), a21);

  return v23;
}

char *FavoriteItem.__allocating_init(store:customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int16 a20, unsigned __int16 a21, unsigned __int16 a22)
{
  v23 = v22;
  v106 = a8;
  v107 = a6;
  v114 = a7;
  v109 = a5;
  v24 = a4;
  v94 = a4;
  v96 = a2;
  v113 = a22;
  LODWORD(v120) = a21;
  LODWORD(v119) = a20;
  v117 = a17;
  v118 = a18;
  v111 = a16;
  v112 = a19;
  v110 = a14;
  v108 = a13;
  v121 = a11;
  v115 = a12;
  v116 = a15;
  v105 = a10;
  v93 = a9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v100 = *(v28 - 8);
  v29 = *(v100 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v97 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  v33 = objc_allocWithZone(v23);
  v104 = a1;
  v34 = [v33 initWithStore_];
  v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v36 = *&v34[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v101 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v37 = v34;
  v102 = v34;
  v38 = v37;
  [v36 lock];
  v103 = *&v34[v35];
  v39 = &v38[OBJC_IVAR___MSFavoriteItem__customName];
  *v39 = a2;
  *(v39 + 1) = a3;
  v95 = a3;

  v38[OBJC_IVAR___MSFavoriteItem__hidden] = v24;
  v40 = *&v38[OBJC_IVAR___MSFavoriteItem__latitude];
  v41 = v109;
  *&v38[OBJC_IVAR___MSFavoriteItem__latitude] = v109;
  v99 = v41;

  v42 = *&v38[OBJC_IVAR___MSFavoriteItem__longitude];
  v43 = v107;
  *&v38[OBJC_IVAR___MSFavoriteItem__longitude] = v107;
  v98 = v43;

  v44 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemAddress];
  v45 = v106;
  *v44 = v114;
  v44[1] = v45;

  v46 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemCategory];
  v47 = v105;
  *v46 = a9;
  *(v46 + 1) = v47;

  v48 = v121;
  sub_1B628C510(v121, v32, &unk_1EB943210, &unk_1B63C3F50);
  v49 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v38[v49], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v50 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemName];
  v51 = v108;
  *v50 = v115;
  v50[1] = v51;

  v52 = *&v38[OBJC_IVAR___MSFavoriteItem__muid];
  v53 = v110;
  *&v38[OBJC_IVAR___MSFavoriteItem__muid] = v110;
  v92 = v53;

  v54 = &v38[OBJC_IVAR___MSFavoriteItem__originatingAddressString];
  v55 = v111;
  *v54 = v116;
  v54[1] = v55;

  v56 = v118;
  *&v38[OBJC_IVAR___MSFavoriteItem__positionIndex] = v117;
  v57 = &v38[OBJC_IVAR___MSFavoriteItem__shortcutIdentifier];
  v58 = v112;
  *v57 = v56;
  v57[1] = v58;

  *&v38[OBJC_IVAR___MSFavoriteItem__source] = v119;
  *&v38[OBJC_IVAR___MSFavoriteItem__type] = v120;
  *&v38[OBJC_IVAR___MSFavoriteItem__version] = v113;
  v59 = v97;
  sub_1B628C510(v48, v97, &unk_1EB943210, &unk_1B63C3F50);
  v60 = (*(v100 + 80) + 88) & ~*(v100 + 80);
  v61 = (v29 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v95;
  *(v66 + 16) = v96;
  *(v66 + 24) = v67;
  *(v66 + 32) = v94;
  v68 = v107;
  *(v66 + 40) = v109;
  *(v66 + 48) = v68;
  v69 = v106;
  *(v66 + 56) = v114;
  *(v66 + 64) = v69;
  v70 = v105;
  *(v66 + 72) = v93;
  *(v66 + 80) = v70;
  sub_1B628A128(v59, v66 + v60, &unk_1EB943210, &unk_1B63C3F50);
  v71 = (v66 + v61);
  v72 = v108;
  *v71 = v115;
  v71[1] = v72;
  *(v66 + v62) = v110;
  v73 = (v66 + v63);
  v74 = v111;
  *v73 = v116;
  v73[1] = v74;
  v75 = v118;
  *(v66 + v64) = v117;
  v76 = (v66 + v65);
  v77 = v112;
  *v76 = v75;
  v76[1] = v77;
  v78 = (v66 + ((v65 + 17) & 0xFFFFFFFFFFFFFFF8));
  *v78 = v119;
  v78[1] = v120;
  v78[2] = v113;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v79 = v101;
  v80 = v102;
  v81 = v99;
  v82 = v98;
  v83 = v92;
  if (sub_1B63BEF24())
  {
    v84 = swift_allocObject();
    *(v84 + 16) = sub_1B62E8BD4;
    *(v84 + 24) = v66;
    v85 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v86 = *&v38[v85];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38[v85] = v86;
    v119 = v82;
    v120 = v81;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v86 = sub_1B629A8E8(0, v86[2] + 1, 1, v86);
      *&v38[v85] = v86;
    }

    v89 = v86[2];
    v88 = v86[3];
    if (v89 >= v88 >> 1)
    {
      v86 = sub_1B629A8E8((v88 > 1), v89 + 1, 1, v86);
    }

    v86[2] = v89 + 1;
    v90 = &v86[2 * v89];
    v90[4] = sub_1B62B8188;
    v90[5] = v84;
    *&v38[v85] = v86;
    swift_endAccess();
    v82 = v119;
    v81 = v120;
  }

  [*&v80[v79] unlock];

  sub_1B6284EAC(v121, &unk_1EB943210, &unk_1B63C3F50);
  return v38;
}

char *FavoriteItem.init(store:customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int16 a20, unsigned __int16 a21, unsigned __int16 a22)
{
  v23 = v22;
  v108 = a8;
  v109 = a6;
  v115 = a7;
  v25 = a4;
  v95 = a4;
  v97 = a2;
  v114 = a22;
  LODWORD(v121) = a21;
  LODWORD(v120) = a20;
  v118 = a17;
  v119 = a18;
  v112 = a16;
  v113 = a19;
  v110 = a13;
  v111 = a14;
  v122 = a11;
  v116 = a12;
  v117 = a15;
  v107 = a10;
  v93 = a9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v102 = *(v29 - 8);
  v99 = *(v102 + 64);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v98 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v91 - v32;
  v106 = a1;
  v34 = [v23 initWithStore_];
  v35 = *&v34[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v104 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v37 = v34;
  v103 = v34;
  v38 = v37;
  [v35 lock];
  v105 = *&v34[v36];
  v39 = &v38[OBJC_IVAR___MSFavoriteItem__customName];
  *v39 = a2;
  *(v39 + 1) = a3;
  v96 = a3;

  v38[OBJC_IVAR___MSFavoriteItem__hidden] = v25;
  v40 = *&v38[OBJC_IVAR___MSFavoriteItem__latitude];
  v94 = a5;
  *&v38[OBJC_IVAR___MSFavoriteItem__latitude] = a5;
  v101 = a5;

  v41 = *&v38[OBJC_IVAR___MSFavoriteItem__longitude];
  v42 = v109;
  *&v38[OBJC_IVAR___MSFavoriteItem__longitude] = v109;
  v100 = v42;

  v43 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemAddress];
  v44 = v108;
  *v43 = v115;
  v43[1] = v44;

  v45 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemCategory];
  v46 = v107;
  *v45 = a9;
  *(v45 + 1) = v46;

  v47 = v122;
  sub_1B628C510(v122, v33, &unk_1EB943210, &unk_1B63C3F50);
  v48 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v33, &v38[v48], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v49 = &v38[OBJC_IVAR___MSFavoriteItem__mapItemName];
  v50 = v110;
  *v49 = v116;
  v49[1] = v50;

  v51 = *&v38[OBJC_IVAR___MSFavoriteItem__muid];
  v52 = v111;
  *&v38[OBJC_IVAR___MSFavoriteItem__muid] = v111;
  v92 = v52;

  v53 = &v38[OBJC_IVAR___MSFavoriteItem__originatingAddressString];
  v54 = v112;
  *v53 = v117;
  v53[1] = v54;

  v55 = v119;
  *&v38[OBJC_IVAR___MSFavoriteItem__positionIndex] = v118;
  v56 = &v38[OBJC_IVAR___MSFavoriteItem__shortcutIdentifier];
  v57 = v113;
  *v56 = v55;
  v56[1] = v57;

  *&v38[OBJC_IVAR___MSFavoriteItem__source] = v120;
  *&v38[OBJC_IVAR___MSFavoriteItem__type] = v121;
  *&v38[OBJC_IVAR___MSFavoriteItem__version] = v114;
  v58 = v98;
  sub_1B628C510(v47, v98, &unk_1EB943210, &unk_1B63C3F50);
  v59 = (*(v102 + 80) + 88) & ~*(v102 + 80);
  v60 = (v99 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v66 = v96;
  *(v65 + 16) = v97;
  *(v65 + 24) = v66;
  *(v65 + 32) = v95;
  v67 = v109;
  *(v65 + 40) = v94;
  *(v65 + 48) = v67;
  v68 = v108;
  *(v65 + 56) = v115;
  *(v65 + 64) = v68;
  v69 = v107;
  *(v65 + 72) = v93;
  *(v65 + 80) = v69;
  sub_1B628A128(v58, v65 + v59, &unk_1EB943210, &unk_1B63C3F50);
  v70 = (v65 + v60);
  v71 = v110;
  *v70 = v116;
  v70[1] = v71;
  *(v65 + v61) = v111;
  v72 = (v65 + v62);
  v73 = v112;
  *v72 = v117;
  v72[1] = v73;
  v74 = v119;
  *(v65 + v63) = v118;
  v75 = (v65 + v64);
  v76 = v113;
  *v75 = v74;
  v75[1] = v76;
  v77 = (v65 + ((v64 + 17) & 0xFFFFFFFFFFFFFFF8));
  v78 = v103;
  *v77 = v120;
  v77[1] = v121;
  v77[2] = v114;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v79 = v104;
  v80 = v101;
  v81 = v100;
  v82 = v92;
  if (sub_1B63BEF24())
  {
    v83 = swift_allocObject();
    *(v83 + 16) = sub_1B62EA1D8;
    *(v83 + 24) = v65;
    v84 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v85 = *&v38[v84];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38[v84] = v85;
    v120 = v81;
    v121 = v80;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v85 = sub_1B629A8E8(0, v85[2] + 1, 1, v85);
      *&v38[v84] = v85;
    }

    v88 = v85[2];
    v87 = v85[3];
    if (v88 >= v87 >> 1)
    {
      v85 = sub_1B629A8E8((v87 > 1), v88 + 1, 1, v85);
    }

    v85[2] = v88 + 1;
    v89 = &v85[2 * v88];
    v89[4] = sub_1B62B9488;
    v89[5] = v83;
    *&v38[v84] = v85;
    swift_endAccess();
    v81 = v120;
    v80 = v121;
  }

  [*&v78[v79] unlock];

  sub_1B6284EAC(v122, &unk_1EB943210, &unk_1B63C3F50);
  return v38;
}

void sub_1B62E2278(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21, __int16 a22, __int16 a23)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v43 - v29;
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v44 = a2;
    v33 = a2;
    if (a4)
    {
      v34 = sub_1B63BEBC4();
    }

    else
    {
      v34 = 0;
    }

    [v32 setCustomName_];

    [v32 setHidden_];
    [v32 setLatitude_];
    [v32 setLongitude_];
    if (a9)
    {
      v35 = sub_1B63BEBC4();
    }

    else
    {
      v35 = 0;
    }

    [v32 setMapItemAddress_];

    if (a11)
    {
      v36 = sub_1B63BEBC4();
    }

    else
    {
      v36 = 0;
    }

    [v32 setMapItemCategory_];

    sub_1B628C510(a12, v30, &unk_1EB943210, &unk_1B63C3F50);
    v37 = sub_1B63BE994();
    v38 = *(v37 - 8);
    v39 = 0;
    if ((*(v38 + 48))(v30, 1, v37) != 1)
    {
      v39 = sub_1B63BE954();
      (*(v38 + 8))(v30, v37);
    }

    [v32 setMapItemLastRefreshed_];

    if (a14)
    {
      v40 = sub_1B63BEBC4();
    }

    else
    {
      v40 = 0;
    }

    [v32 setMapItemName_];

    [v32 setMuid_];
    if (a17)
    {
      v41 = sub_1B63BEBC4();
    }

    else
    {
      v41 = 0;
    }

    [v32 setOriginatingAddressString_];

    [v32 setPositionIndex_];
    if (a20)
    {
      v42 = sub_1B63BEBC4();
    }

    else
    {
      v42 = 0;
    }

    [v32 setShortcutIdentifier_];

    [v32 setSource_];
    [v32 setType_];
    [v32 setVersion_];
  }
}

uint64_t sub_1B62E28E8()
{
  v1 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = MEMORY[0x1E69E7CC0];

  v3 = OBJC_IVAR___MSFavoriteItem__handleChanges;
  swift_beginAccess();
  *(v0 + v3) = v2;
}

id sub_1B62E2ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__customName);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62E8D3C;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B62E2C84(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6296C10(a1, a2);
  a1[1] = v4;
  return sub_1B62E2CCC;
}

id sub_1B62E2D38(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSFavoriteItem__hidden) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E8D60;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62E2EE4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setHidden_];
  }

  return result;
}

id (*sub_1B62E2F48(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__hidden);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E2FCC;
}

void sub_1B62E3094(void *a1)
{
  sub_1B62E8D90(a1);
}

void (*sub_1B62E30CC(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62A00E0(a1, a2);
  return sub_1B62E3114;
}

void sub_1B62E31CC(void *a1)
{
  sub_1B62E8F78(a1);
}

void (*sub_1B62E3204(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62A0488(a1, a2);
  return sub_1B62E324C;
}

uint64_t sub_1B62E327C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSFavoriteItem__mapItemAddress);
  v6 = *(v2 + OBJC_IVAR___MSFavoriteItem__mapItemAddress + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62E9138;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_62;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B62E9138;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62E3620(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B63BEBD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1B62E36A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__mapItemAddress);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62E9160;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B62E3870(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62E327C(a1, a2);
  a1[1] = v4;
  return sub_1B62E38B8;
}

uint64_t sub_1B62E38D0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t sub_1B62E3968(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSFavoriteItem__mapItemCategory);
  v6 = *(v2 + OBJC_IVAR___MSFavoriteItem__mapItemCategory + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62E9184;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_80;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B62E9184;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62E3D0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__mapItemCategory);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62E91AC;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B62E3ED4(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62E3968(a1, a2);
  a1[1] = v4;
  return sub_1B62E3F1C;
}

uint64_t sub_1B62E405C@<X0>(char *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v3 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B62E91D0;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_98;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

uint64_t sub_1B62E465C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B62E91DC;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943210, &unk_1B63C3F50);
}

uint64_t sub_1B62E493C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B628C510(a1, &v6 - v3, &unk_1EB943210, &unk_1B63C3F50);
  return sub_1B62E465C(v4);
}

void sub_1B62E49E8(void *a1, uint64_t a2, _BYTE *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BE994();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  v24[0] = 0;
  v13 = [a1 existingObjectWithID:a2 error:v24];
  v14 = v24[0];
  if (v13)
  {
    v15 = v13;
    type metadata accessor for MapsSyncManagedFavoriteItem();
    v16 = swift_dynamicCastClass();
    v17 = v14;
    if (v16 && (v18 = [v16 mapItemLastRefreshed]) != 0)
    {
      v19 = v18;
      sub_1B63BE974();

      v20 = *(v7 + 32);
      v20(v12, v10, v6);
      sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
      v20(a3, v12, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
    }

    else
    {
    }
  }

  else
  {
    v21 = v24[0];
    v22 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B62E4C18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    sub_1B628C510(a3, v7, &unk_1EB943210, &unk_1B63C3F50);
    v10 = sub_1B63BE994();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    v13 = a2;
    v14 = 0;
    if (v12 != 1)
    {
      v14 = sub_1B63BE954();
      (*(v11 + 8))(v7, v10);
    }

    [v9 setMapItemLastRefreshed_];
  }
}

void (*sub_1B62E4D84(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B62E405C(v4);
  return sub_1B62E4E40;
}

void sub_1B62E4E40(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B628C510(*(a1 + 16), v2, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B62E465C(v2);
    sub_1B6284EAC(v3, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    sub_1B62E465C(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_1B62E4EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSFavoriteItem__mapItemName);
  v6 = *(v2 + OBJC_IVAR___MSFavoriteItem__mapItemName + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B62E9268;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_115;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B62E9268;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62E5298(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__mapItemName);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62E9290;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B62E5460(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62E4EF4(a1, a2);
  a1[1] = v4;
  return sub_1B62E54A8;
}

id sub_1B62E5504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSFavoriteItem__muid);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B62E92B4;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_133;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B62E92B4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62E58C4(void *a1)
{
  sub_1B62E92DC(a1);
}

void sub_1B62E58FC(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedFavoriteItem();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9)
    {
      v11 = [v9 *a4];

      if (v11)
      {
        v12 = *a3;
        *a3 = v11;
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v15[0];
    v14 = sub_1B63BE824();

    swift_willThrow();
  }
}

id sub_1B62E5A10(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62E5A80(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62E5504(a1, a2);
  return sub_1B62E5AC8;
}

void sub_1B62E5AE0(id *a1, char a2, void (*a3)(id))
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    a3(v6);

    v5 = v4;
  }

  else
  {
    a3(*a1);
    v5 = v6;
  }
}

id sub_1B62E5B78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSFavoriteItem__originatingAddressString);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62E94C4;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B62E5D40(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B629700C(a1, a2);
  a1[1] = v4;
  return sub_1B62E5D88;
}

uint64_t sub_1B62E5E10()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSFavoriteItem__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B62E5EBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSFavoriteItem__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E94E8;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62E6068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B62E60CC(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62E6150;
}

void sub_1B62E618C(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v18];
  v7 = v18[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedFavoriteItem();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BEBD4();
      v15 = v14;

      *a3 = v13;
      a3[1] = v15;
    }

    else
    {
    }
  }

  else
  {
    v16 = v18[0];
    v17 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B62E62B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B62E6374(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B6295E78(a1, a2);
  a1[1] = v4;
  return sub_1B62E63BC;
}

id (*sub_1B62E6434(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__source);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E64B8;
}

id (*sub_1B62E6534(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E65B8;
}

id sub_1B62E664C(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSFavoriteItem__version) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62E9584;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62E67F8(uint64_t a1, uint64_t a2, __int16 a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62E6868(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSFavoriteItem__version);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62E68EC;
}

void sub_1B62E69B4(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62E6B74(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62E6A2C(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedFavoriteItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 mapItem]) != 0 && (v10 = v9, v11 = objc_msgSend(v9, sel_mapItemStorage), v10, v11))
    {
      v12 = sub_1B63BE924();
      v14 = v13;

      v15 = *a3;
      v16 = a3[1];
      *a3 = v12;
      a3[1] = v14;
      sub_1B6284F64(v15, v16);
    }

    else
    {
    }
  }

  else
  {
    v17 = v19[0];
    v18 = sub_1B63BE824();

    swift_willThrow();
  }
}

uint64_t sub_1B62E6B74(uint64_t a1, void *a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v84 - v7;
  v9 = sub_1B63BE994();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v86 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  sub_1B63BE984();
  v87 = a1;
  v88 = v10;
  if (a2)
  {
    v84 = v9;
    v85 = a2;
    v15 = v14;
    v16 = a2;
    [v16 coordinate];
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v19 = *&a3[OBJC_IVAR___MSFavoriteItem__latitude];
    *&a3[OBJC_IVAR___MSFavoriteItem__latitude] = v18;

    [v16 coordinate];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v22 = *&a3[OBJC_IVAR___MSFavoriteItem__longitude];
    *&a3[OBJC_IVAR___MSFavoriteItem__longitude] = v21;

    v23 = [v16 _muid];
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v25 = *&a3[OBJC_IVAR___MSFavoriteItem__muid];
    *&a3[OBJC_IVAR___MSFavoriteItem__muid] = v24;

    v26 = [v16 addressObject];
    if (v26 && (v27 = v26, v28 = [v26 fullAddressWithMultiline_], v27, v28))
    {
      v29 = sub_1B63BEBD4();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemAddress];
    *v32 = v29;
    *(v32 + 1) = v31;

    v33 = [v16 name];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1B63BEBD4();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v49 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemName];
    *v49 = v35;
    *(v49 + 1) = v37;

    v50 = v16;
    v51 = sub_1B6347B3C(v50);
    v53 = v52;

    v54 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemCategory];
    *v54 = v51;
    *(v54 + 1) = v53;

    v55 = [v50 data];
    if (v55)
    {
      v56 = v55;
      v57 = sub_1B63BE924();
      v59 = v58;

      v60 = v50;
    }

    else
    {
      v60 = v50;

      v57 = 0;
      v59 = 0xF000000000000000;
    }

    v61 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage];
    v62 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage];
    v63 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage + 8];
    *v61 = v57;
    *(v61 + 1) = v59;
    sub_1B6284F64(v62, v63);
    v10 = v88;
    v47 = *(v88 + 16);
    v64 = v8;
    v65 = v8;
    v66 = v15;
    v67 = v15;
    v9 = v84;
    v47(v65, v67, v84);
    (*(v10 + 56))(v64, 0, 1, v9);
    v68 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
    swift_beginAccess();
    v69 = &a3[v68];
    v14 = v66;
    sub_1B6282DFC(v64, v69, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    a2 = v85;
    v48 = v60;
  }

  else
  {
    v38 = *&a3[OBJC_IVAR___MSFavoriteItem__latitude];
    *&a3[OBJC_IVAR___MSFavoriteItem__latitude] = 0;

    v39 = *&a3[OBJC_IVAR___MSFavoriteItem__longitude];
    *&a3[OBJC_IVAR___MSFavoriteItem__longitude] = 0;

    v40 = *&a3[OBJC_IVAR___MSFavoriteItem__muid];
    *&a3[OBJC_IVAR___MSFavoriteItem__muid] = 0;

    v41 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemAddress];
    *v41 = 0;
    *(v41 + 1) = 0;

    v42 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemName];
    *v42 = 0;
    *(v42 + 1) = 0;

    v43 = &a3[OBJC_IVAR___MSFavoriteItem__mapItemCategory];
    *v43 = 0;
    *(v43 + 1) = 0;

    v44 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage];
    v45 = *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSFavoriteItem__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v44, v45);
    (*(v10 + 56))(v8, 1, 1, v9);
    v46 = OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v8, &a3[v46], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v47 = *(v10 + 16);
    v48 = 0;
  }

  v70 = v86;
  v47(v86, v14, v9);
  v71 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v72 = (v11 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  *(v73 + 16) = a2;
  (*(v10 + 32))(v73 + v71, v70, v9);
  *(v73 + v72) = a3;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v74 = v48;
  v75 = a3;
  if (sub_1B63BEF24())
  {
    v76 = swift_allocObject();
    *(v76 + 16) = sub_1B62EA024;
    *(v76 + 24) = v73;
    v77 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v78 = *&v75[v77];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v75[v77] = v78;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v78 = sub_1B629A8E8(0, v78[2] + 1, 1, v78);
      *&v75[v77] = v78;
    }

    v81 = v78[2];
    v80 = v78[3];
    if (v81 >= v80 >> 1)
    {
      v78 = sub_1B629A8E8((v80 > 1), v81 + 1, 1, v78);
    }

    v78[2] = v81 + 1;
    v82 = &v78[2 * v81];
    v82[4] = sub_1B62B9488;
    v82[5] = v76;
    *&v75[v77] = v78;
    swift_endAccess();
  }

  return (*(v88 + 8))(v14, v9);
}

void sub_1B62E7264(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  if (!a3)
  {
    v49 = a2;
    v44 = [v8 mapItem];
    if (v44)
    {
      v45 = v44;
      [v44 setMapItemStorage_];
    }

    [v8 setLatitude_];
    [v8 setLongitude_];
    [v8 setMuid_];
    v46 = sub_1B63BE954();
    [v8 setModificationTime_];

    [v8 setMapItemAddress_];
    [v8 setMapItemName_];
    [v8 setMapItemCategory_];
    [v8 setMapItemLastRefreshed_];
    goto LABEL_24;
  }

  ObjCClassFromObject = swift_getObjCClassFromObject();
  v49 = a2;
  v10 = a3;
  v11 = [ObjCClassFromObject strippedMapItemWith_];
  v12 = [v8 managedObjectContext];
  if (v12)
  {
    v13 = v12;
    [v11 coordinate];
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v8 setLatitude_];

    [v11 coordinate];
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v8 setLongitude_];

    v18 = [v11 _muid];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v8 setMuid_];

    v20 = [v11 addressObject];
    if (!v20 || (v21 = v20, v22 = [v20 fullAddressWithMultiline_], v21, !v22))
    {
      v22 = 0;
    }

    [v8 setMapItemAddress_];

    v23 = [v11 name];
    [v8 setMapItemName_];

    v24 = v11;
    sub_1B6347B3C(v24);

    v25 = sub_1B63BEBC4();

    [v8 setMapItemCategory_];

    v26 = sub_1B63BE954();
    [v8 setMapItemLastRefreshed_];

    v27 = [v8 mapItem];
    if (!v27)
    {
      type metadata accessor for MapsSyncManagedMixinMapItem();
      v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v8 setMapItem_];

      v29 = [v8 mapItem];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1B63BE954();
        [v30 setCreateTime_];
      }

      v32 = [v8 mapItem];
      if (!v32)
      {
        goto LABEL_13;
      }

      v33 = v32;
      v34 = sub_1B63BE954();
      [v33 setModificationTime_];

      v27 = v34;
    }

LABEL_13:
    v35 = [v8 mapItem];
    if (v35)
    {
      v36 = v35;
      [v24 coordinate];
      [v36 setLatitude_];
      [v24 coordinate];
      [v36 setLongitude_];
      v38 = [v24 data];
      if (v38)
      {
        v39 = v38;
        v40 = sub_1B63BE924();
        v42 = v41;

        v43 = sub_1B63BE904();
        sub_1B628BAC0(v40, v42);
      }

      else
      {
        v43 = 0;
      }

      [v36 setMapItemStorage_];

      v48 = sub_1B63BE954();
      [v36 setModificationTime_];
    }

LABEL_24:
    v47 = v49;
    goto LABEL_25;
  }

  v47 = v11;
LABEL_25:
}

void (*sub_1B62E780C(void **a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B6296250(a1, a2);
  return sub_1B62E7854;
}

void sub_1B62E7854(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62E6B74(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62E6B74(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

id sub_1B62E7924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = OBJC_IVAR___MSFavoriteItem__handleChanges;
  swift_beginAccess();
  v8 = *(v3 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B62B2148(0, v8[2] + 1, 1, v8);
    *(v3 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B62B2148((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[3 * v11];
  *(v12 + 32) = 0;
  v12[5] = a1;
  v12[6] = a2;
  *(v3 + v7) = v8;
  swift_endAccess();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);

  if (sub_1B63BEF24())
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1B62E95B4;
    *(v14 + 24) = v13;
    v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v16 = *(v3 + v15);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v15) = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_1B629A8E8(0, v16[2] + 1, 1, v16);
      *(v3 + v15) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1B629A8E8((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = sub_1B62B9488;
    v20[5] = v14;
    *(v3 + v15) = v16;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B62E7B80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v12 = a2;
    v7 = [v12 managedObjectContext];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for MapsSyncManagedContactHandle();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v10 = sub_1B63BEBC4();
      [v9 setHandle_];

      [v6 addContactHandlesObject_];
      v11 = v9;
    }

    else
    {
      v11 = v12;
    }
  }
}

id sub_1B62E7CB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = OBJC_IVAR___MSFavoriteItem__handleChanges;
  swift_beginAccess();
  v8 = *(v3 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B62B2148(0, v8[2] + 1, 1, v8);
    *(v3 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B62B2148((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[3 * v11];
  *(v12 + 32) = 1;
  v12[5] = a1;
  v12[6] = a2;
  *(v3 + v7) = v8;
  swift_endAccess();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);

  if (sub_1B63BEF24())
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1B62E95BC;
    *(v14 + 24) = v13;
    v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v16 = *(v3 + v15);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v15) = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_1B629A8E8(0, v16[2] + 1, 1, v16);
      *(v3 + v15) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1B629A8E8((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = sub_1B62B9488;
    v20[5] = v14;
    *(v3 + v15) = v16;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B62E7F18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v20 = a2;
  v9 = [v20 managedObjectContext];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for MapsSyncManagedContactHandle();
    v11 = [swift_getObjCClassFromMetadata() fetchRequest];
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B63C3D50;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1B6281318();
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;

    v13 = sub_1B63BED94();
    [v11 setPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
    v14 = sub_1B63BEEA4();
    v15 = sub_1B63A2E3C(v14);

    if (!v15)
    {
      goto LABEL_16;
    }

    if (v15 >> 62)
    {
      v16 = sub_1B63BF044();
      if (v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_8:
        if (v16 < 1)
        {
          __break(1u);
          return;
        }

        v17 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1B8C92830](v17, v15);
          }

          else
          {
            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          ++v17;
          [v8 removeContactHandlesObject_];
          [v10 deleteObject_];
        }

        while (v16 != v17);
      }
    }

LABEL_16:
  }
}

uint64_t sub_1B62E81C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B63BEBD4();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1B62E8230()
{

  sub_1B6284EAC(v0 + OBJC_IVAR___MSFavoriteItem__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSFavoriteItem__mapItemStorage), *(v0 + OBJC_IVAR___MSFavoriteItem__mapItemStorage + 8));
}

id FavoriteItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoriteItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B62E8374(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943700, &unk_1B63C3EE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1B62E83F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t *sub_1B62E84B4(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_1B63BF004();
  a5(0);
  sub_1B62EA140(a6, a7, MEMORY[0x1E69E81B8]);
  result = sub_1B63BED74();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_1B63BF074())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void *sub_1B62E8724(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1B62E88B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20)
{
  v48 = a5;
  v46 = a4;
  v45 = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v40 - v23;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDB0F2A8;
  if (a2)
  {
    v42 = sub_1B63BEBC4();

    v25 = a9;
    v26 = a10;
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_8:
    v41 = 0;
    if (v25)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v42 = 0;
  v25 = a9;
  v26 = a10;
  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_5:
  v41 = sub_1B63BEBC4();

  if (v25)
  {
LABEL_6:
    v40 = sub_1B63BEBC4();

    goto LABEL_10;
  }

LABEL_9:
  v40 = 0;
LABEL_10:
  v44 = v26;
  sub_1B628C510(v26, v24, &unk_1EB943210, &unk_1B63C3F50);
  v27 = sub_1B63BE994();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v24, 1, v27) != 1)
  {
    v29 = sub_1B63BE954();
    (*(v28 + 8))(v24, v27);
  }

  if (a12)
  {
    v30 = sub_1B63BEBC4();

    v31 = a18;
    if (a15)
    {
LABEL_14:
      v32 = sub_1B63BEBC4();

      goto LABEL_17;
    }
  }

  else
  {
    v30 = 0;
    v31 = a18;
    if (a15)
    {
      goto LABEL_14;
    }
  }

  v32 = 0;
LABEL_17:
  if (v31)
  {
    v33 = sub_1B63BEBC4();
  }

  else
  {
    v33 = 0;
  }

  WORD2(v39) = a20;
  LODWORD(v39) = a19;
  v34 = v40;
  v35 = v42;
  v36 = v41;
  v37 = [v47 initWithStore:v43 customName:v42 hidden:v45 & 1 latitude:v46 longitude:v48 mapItemAddress:v41 mapItemCategory:v40 mapItemLastRefreshed:v29 mapItemName:v30 muid:a13 originatingAddressString:v32 positionIndex:a16 shortcutIdentifier:v33 source:v39 type:? version:?];

  sub_1B6284EAC(v44, &unk_1EB943210, &unk_1B63C3F50);
  return v37;
}

void sub_1B62E8BD8(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 17) & 0xFFFFFFFFFFFFFFF8;
  sub_1B62E2278(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + v10), *(v2 + v11), *(v2 + v11 + 8), *(v2 + v12), HIWORD(*(v2 + v12)), *(v2 + v12 + 4));
}

id sub_1B62E8D90(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSFavoriteItem__latitude);
  *(v2 + OBJC_IVAR___MSFavoriteItem__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62EA11C;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62E8F78(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSFavoriteItem__longitude);
  *(v2 + OBJC_IVAR___MSFavoriteItem__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62EA0F8;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

void sub_1B62E91DC(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B62E4C18(a1, a2, v6);
}

id sub_1B62E92DC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSFavoriteItem__muid);
  *(v2 + OBJC_IVAR___MSFavoriteItem__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62EA0D4;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

uint64_t keypath_setTm_2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id keypath_get_247Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, _WORD *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  LOWORD(a2) = *(v5 + *a2);
  result = [*(v5 + v6) unlock];
  *a3 = a2;
  return result;
}

void sub_1B62EA024(uint64_t a1, void *a2)
{
  v5 = *(sub_1B63BE994() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1B62E7264(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1B62EA140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id HistoryCuratedCollection.__allocating_init(curatedCollectionIdentifier:resultProviderIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  if (qword_1EDB0F2A0 != -1)
  {
    v9 = v6;
    swift_once();
    v6 = v9;
  }

  v7 = qword_1EDB0F2A8;

  return [v6 initWithStore:v7 curatedCollectionIdentifier:a1 resultProviderIdentifier:a2];
}

id HistoryCuratedCollection.init(curatedCollectionIdentifier:resultProviderIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDB0F2A8;

  return [v3 initWithStore:v6 curatedCollectionIdentifier:a1 resultProviderIdentifier:a2];
}

char *HistoryCuratedCollection.__allocating_init(store:curatedCollectionIdentifier:resultProviderIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return HistoryCuratedCollection.init(store:curatedCollectionIdentifier:resultProviderIdentifier:)(a1, a2, v4);
}

char *HistoryCuratedCollection.init(store:curatedCollectionIdentifier:resultProviderIdentifier:)(void *a1, uint64_t a2, int a3)
{
  v7 = [v3 initWithStore_];
  v8 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v9 = *&v7[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v10 = v7;
  [v9 lock];
  *&v10[OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier] = a2;
  *&v10[OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier] = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1B62EB00C;
    *(v12 + 24) = v11;
    v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v14 = *&v10[v13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v13] = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1B629A8E8(0, v14[2] + 1, 1, v14);
      *&v10[v13] = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1B629A8E8((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    v18 = &v14[2 * v17];
    v18[4] = sub_1B62B8188;
    v18[5] = v12;
    *&v10[v13] = v14;
    swift_endAccess();
  }

  [*&v7[v8] unlock];

  return v10;
}

void sub_1B62EA5CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    [v8 setCuratedCollectionIdentifier_];
    [v8 setResultProviderIdentifier_];
  }
}

uint64_t sub_1B62EA7CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier);
  [v1 unlock];
  return v2;
}

id sub_1B62EA878(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62EB018;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62EAA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setCuratedCollectionIdentifier_];
  }

  return result;
}

id (*sub_1B62EAA78(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62EAAFC;
}

uint64_t sub_1B62EAB90()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier);
  [v1 unlock];
  return v2;
}

id sub_1B62EAC3C(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62EB020;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B62EADD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setResultProviderIdentifier_];
  }

  return result;
}

id (*sub_1B62EAE3C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62EAEC0;
}

void *sub_1B62EAEE8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier] = 0;
  *&v9[OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier] = 0;
  return sub_1B62F0450(a1, a2, v6, v5);
}

id HistoryCuratedCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryCuratedCollection(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62EB1A8(void *a1)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    [v4 position];
    *(v1 + OBJC_IVAR___MSHistoryItem__position) = v6;
    v7 = [v4 positionIndex];

    *(v1 + OBJC_IVAR___MSHistoryItem__positionIndex) = v7;
  }

  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 curatedCollectionIdentifier];
    *(v1 + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier) = v11;
    LODWORD(v9) = [v9 resultProviderIdentifier];

    *(v1 + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier) = v9;
  }
}

id HistoryDirectionsItem.__allocating_init(navigationInterrupted:routeRequestStorage:sharedETAData:)(char a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  if (qword_1EDB0F2A0 != -1)
  {
    v16 = v10;
    swift_once();
    v10 = v16;
  }

  v11 = qword_1EDB0F2A8;
  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v13 = v10;
    sub_1B629119C(a3, a4);
    v12 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
    v10 = v13;
  }

  v14 = [v10 initWithStore:v11 navigationInterrupted:a1 & 1 routeRequestStorage:a2 sharedETAData:v12];
  sub_1B6284F64(a3, a4);

  return v14;
}

id HistoryDirectionsItem.init(navigationInterrupted:routeRequestStorage:sharedETAData:)(char a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDB0F2A8;
  if (a4 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    sub_1B629119C(a3, a4);
    v11 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
  }

  v12 = [v5 initWithStore:v10 navigationInterrupted:a1 & 1 routeRequestStorage:a2 sharedETAData:v11];
  sub_1B6284F64(a3, a4);

  return v12;
}

char *HistoryDirectionsItem.__allocating_init(store:navigationInterrupted:routeRequestStorage:sharedETAData:)(void *a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v11 = [objc_allocWithZone(v6) initWithStore_];
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v13 = *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v14 = v11;
  [v13 lock];
  v39 = v12;
  v15 = a2 & 1;
  v14[OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted] = a2;
  if (a3 && (v16 = [a3 data]) != 0)
  {
    v17 = v16;
    v18 = sub_1B63BE924();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = &v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage];
  v22 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage];
  v23 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8];
  *v21 = v18;
  v21[1] = v20;
  sub_1B6284F64(v22, v23);
  v24 = &v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData];
  v25 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData];
  v26 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8];
  *v24 = a4;
  *(v24 + 1) = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v25, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v15;
  *(v27 + 24) = a3;
  *(v27 + 32) = a4;
  *(v27 + 40) = a5;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  sub_1B6291034(a4, a5);
  v28 = a3;
  if (sub_1B63BEF24())
  {
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1B62ED748;
    *(v29 + 24) = v27;
    v30 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v31 = *&v14[v30];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v14[v30] = v31;
    v37 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_1B629A8E8(0, v31[2] + 1, 1, v31);
      *&v14[v30] = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_1B629A8E8((v33 > 1), v34 + 1, 1, v31);
    }

    v31[2] = v34 + 1;
    v35 = &v31[2 * v34];
    v35[4] = sub_1B62B8188;
    v35[5] = v29;
    *&v14[v30] = v31;
    swift_endAccess();

    v28 = v37;
  }

  else
  {
  }

  [*&v11[v39] unlock];
  sub_1B6284F64(a4, a5);

  return v14;
}

char *HistoryDirectionsItem.init(store:navigationInterrupted:routeRequestStorage:sharedETAData:)(void *a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v11 = [v6 initWithStore_];
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v13 = *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v14 = v11;
  [v13 lock];
  v39 = v12;
  v15 = a2 & 1;
  v14[OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted] = a2;
  if (a3 && (v16 = [a3 data]) != 0)
  {
    v17 = v16;
    v18 = sub_1B63BE924();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = &v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage];
  v22 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage];
  v23 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8];
  *v21 = v18;
  v21[1] = v20;
  sub_1B6284F64(v22, v23);
  v24 = &v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData];
  v25 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData];
  v26 = *&v14[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8];
  *v24 = a4;
  *(v24 + 1) = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v25, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v15;
  *(v27 + 24) = a3;
  *(v27 + 32) = a4;
  *(v27 + 40) = a5;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  sub_1B6291034(a4, a5);
  v28 = a3;
  if (sub_1B63BEF24())
  {
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1B62EDDAC;
    *(v29 + 24) = v27;
    v30 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v31 = *&v14[v30];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v14[v30] = v31;
    v37 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_1B629A8E8(0, v31[2] + 1, 1, v31);
      *&v14[v30] = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_1B629A8E8((v33 > 1), v34 + 1, 1, v31);
    }

    v31[2] = v34 + 1;
    v35 = &v31[2 * v34];
    v35[4] = sub_1B62B9488;
    v35[5] = v29;
    *&v14[v30] = v31;
    swift_endAccess();

    v28 = v37;
  }

  else
  {
  }

  [*&v11[v39] unlock];
  sub_1B6284F64(a4, a5);

  return v14;
}

void sub_1B62EBB7C(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, unint64_t a6)
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = a2;
    [v11 setNavigationInterrupted_];
    if (a4)
    {
      v13 = [a4 data];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1B63BE924();
        v17 = v16;

        a4 = sub_1B63BE904();
        sub_1B628BAC0(v15, v17);
      }

      else
      {
        a4 = 0;
      }
    }

    [v11 setRouteRequestStorage_];

    if (a6 >> 60 == 15)
    {
      v18 = 0;
    }

    else
    {
      v18 = sub_1B63BE904();
    }

    v19 = v18;
    [v11 setSharedETAData_];
  }
}

uint64_t sub_1B62EBE88()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted);
  [v1 unlock];
  return v2;
}

id sub_1B62EBF34(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62ED758;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}