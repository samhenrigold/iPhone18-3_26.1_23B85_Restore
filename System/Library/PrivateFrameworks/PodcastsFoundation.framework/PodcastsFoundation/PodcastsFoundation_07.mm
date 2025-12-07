uint64_t (*sub_1D8DA4450(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1D8DA482C;
}

uint64_t sub_1D8DA4570()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D8DA45F0@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  swift_beginAccess();
  v6 = sub_1D8DA46BC(v4, v5);
  swift_endAccess();
  result = sub_1D8D7D28C(sub_1D8D7D560, &unk_1F5471340, sub_1D8D7D6AC, &block_descriptor_78_1);
  v8 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D8DA46BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D8D33C70(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F84E04(&qword_1ECAB7AD0, &unk_1D91A6BA0);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D8DA2AFC(v6, v8);
  *v3 = v8;
  return v9;
}

Swift::Bool __swiftcall AssetCache.containsAny(of:)(Swift::OpaquePointer of)
{
  sub_1D8DA4450(v3, v1, v2);
  swift_getAssociatedTypeWitness();
  sub_1D91786FC();
  swift_getWitnessTable();
  v4 = sub_1D91784CC();

  return v4 & 1;
}

id DiskAssetCache<>.containsAsset(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FileBasedAssetLocation.fileURL(in:)(v2 + qword_1EDCDE890, *(v4 + 80), a2, v8);
  v9 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v11 = [v9 fileExistsAtPath_];

  (*(v6 + 8))(v8, v5);
  return v11;
}

id sub_1D8DA4A44(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D8DA4C5C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D917939C();
  }

  else if (*(a2 + 16) && (sub_1D8D6B2FC(), v5 = sub_1D917913C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1D917914C();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D8DA4D64()
{
  sub_1D8D7DD58(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1D8D7A55C(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider));

  return v0;
}

uint64_t sub_1D8DA4E2C()
{
  sub_1D8DA4D64();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8DA50E8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v26 - v8;
  v9 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v13 = &v26 - v12;
  v15 = *(v14 + 56);
  v16 = *(v9 - 8);
  v17 = *(v16 + 16);
  v17(&v26 - v12, a1, v9, v11);
  (v17)(&v13[v15], v29, v9);
  v18 = *(v5 + 48);
  LODWORD(v17) = v18(v13, 1, v4);
  v19 = v18(&v13[v15], 1, v4);
  if (v17 == 1)
  {
    if (v19 == 1)
    {
      v20 = 0;
    }

    else
    {
      (*(v16 + 8))(&v13[v15], v9);
      v20 = 1;
    }
  }

  else if (v19 == 1)
  {
    (*(v5 + 8))(v13, v4);
    v20 = 1;
  }

  else
  {
    v21 = *(v5 + 32);
    v22 = v27;
    v21(v27, v13, v4);
    v23 = v28;
    v21(v28, &v13[v15], v4);
    v20 = (*(v2 + qword_1ECAB8620))(v22, v23);
    v24 = *(v5 + 8);
    v24(v23, v4);
    v24(v22, v4);
  }

  return v20 & 1;
}

BOOL sub_1D8DA53E0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v16 = *(a2 + 56);
  v17 = a1[7];
  v14 = *(a2 + 64);
  v15 = a1[8];
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D9179ACC() & 1) == 0)
  {
    return 1;
  }

  if (v3)
  {
    if (!v8)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 1;
    }
  }

  switch(v6)
  {
    case 0:
      return v11 != 0;
    case 1:
      return v11 != 1;
    case 2:
      return v11 != 2;
  }

  return v11 < 3 || ((v10 ^ v5) & 1) != 0 || (v4 != v9 || v6 != v11) && (sub_1D9179ACC() & 1) == 0 || ((v17 ^ v16) & 1) != 0 || v15 != v14;
}

uint64_t static FRPSectionInfo<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1D91781BC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FRPSectionInfo(0, a3, a4, a6);

  return sub_1D917870C();
}

unint64_t sub_1D8DA55EC(void *a1)
{
  v2 = sub_1D917744C();
  length = v2[-1].length;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v84 - v7;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [a1 contextName];
  v11 = [v9 contextForName_];

  if (!v11)
  {
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v2, qword_1ECAAFC48);
    swift_beginAccess();
    (*(length + 16))(v5, v30, v2);
    v31 = a1;
    v32 = sub_1D917741C();
    v33 = sub_1D9178CFC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "History transaction with not contextName. We won't be able to fetch the objects corresponding to this change. Transaction: %@", v34, 0xCu);
      sub_1D8D08A50(v35, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    (*(length + 8))(v5, v2);
    return 0;
  }

  v12 = [a1 changes];
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  v86 = sub_1D8CF2154(0, &qword_1EDCD0940, 0x1E695D690);
  v14 = sub_1D91785FC();

  v94 = MEMORY[0x1E69E7CC0];
  v88 = v8;
  if (v14 >> 62)
  {
    goto LABEL_69;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v16 = MEMORY[0x1E69E7CC0];
  v89 = v11;
  v87 = v2;
  if (v15)
  {
    v85 = length;
    length = 0;
    v90 = v14 & 0xC000000000000001;
    v11 = v14 & 0xFFFFFFFFFFFFFF8;
    v2 = @"MTEpisode";
    while (1)
    {
      if (v90)
      {
        v17 = MEMORY[0x1DA72AA90](length, v14);
      }

      else
      {
        if (length >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v17 = *(v14 + 8 * length + 32);
      }

      v18 = v17;
      v19 = length + 1;
      if (__OFADD__(length, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        v15 = sub_1D917935C();
        goto LABEL_5;
      }

      v20 = [v17 changedObjectID];
      v21 = [v20 entity];

      v22 = [v21 name];
      if (!v22)
      {
        break;
      }

      v23 = sub_1D917820C();
      v25 = v24;

      v26 = sub_1D917820C();
      if (!v25)
      {
        goto LABEL_8;
      }

      if (v23 == v26 && v25 == v27)
      {

LABEL_24:
        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        goto LABEL_10;
      }

      v29 = sub_1D9179ACC();

      if (v29)
      {
        goto LABEL_24;
      }

LABEL_9:

LABEL_10:
      ++length;
      if (v19 == v15)
      {
        v37 = v94;
        v11 = v89;
        v16 = MEMORY[0x1E69E7CC0];
        v2 = v87;
        length = v85;
        goto LABEL_35;
      }
    }

    sub_1D917820C();
LABEL_8:

    goto LABEL_9;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_35:

  v38 = v37 < 0 || (v37 & 0x4000000000000000) != 0;
  if (v38)
  {
    v14 = sub_1D917935C();
    if (v14)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v14 = *(v37 + 16);
    if (v14)
    {
LABEL_40:
      LODWORD(v90) = v38;
      if (qword_1ECAAFC40 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v2, qword_1ECAAFC48);
      swift_beginAccess();
      v40 = v88;
      (*(length + 16))(v88, v39, v2);

      v41 = sub_1D917741C();
      v42 = sub_1D9178CEC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = v42;
        v45 = swift_slowAlloc();
        v93 = v45;
        *v43 = 136315138;
        v46 = MEMORY[0x1DA729BD0](v37, v86);
        v48 = sub_1D8CFA924(v46, v47, &v93);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_1D8CEC000, v41, v44, "processing transaction with episode changes: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x1DA72CB90](v45, -1, -1);
        MEMORY[0x1DA72CB90](v43, -1, -1);

        v49 = *(length + 8);
        length += 8;
        v49(v88, v87);
      }

      else
      {

        v50 = *(length + 8);
        length += 8;
        v50(v40, v2);
      }

      v11 = 0;
      v93 = v16;
      v2 = (v37 & 0xC000000000000001);
      v51 = &selRef_setParent_;
      do
      {
        if (v2)
        {
          v52 = MEMORY[0x1DA72AA90](v11, v37);
        }

        else
        {
          if (v11 >= *(v37 + 16))
          {
            goto LABEL_68;
          }

          v52 = *(v37 + 8 * v11 + 32);
        }

        v53 = v52;
        v54 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_67;
        }

        if ([v52 v51[230]])
        {
        }

        else
        {
          v41 = &v93;
          sub_1D917959C();
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          v51 = &selRef_setParent_;
        }

        ++v11;
      }

      while (v54 != v14);
      v55 = v93;
      if (v93 < 0 || (v93 & 0x4000000000000000) != 0)
      {
        v56 = sub_1D917935C();
        if (v56)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v56 = *(v93 + 16);
        if (v56)
        {
LABEL_58:
          v93 = MEMORY[0x1E69E7CC0];
          sub_1D91795CC();
          if (v56 < 0)
          {
            __break(1u);

            __break(1u);
            return result;
          }

          v57 = 0;
          do
          {
            if ((v55 & 0xC000000000000001) != 0)
            {
              v58 = MEMORY[0x1DA72AA90](v57, v55);
            }

            else
            {
              v58 = *(v55 + 8 * v57 + 32);
            }

            v59 = v58;
            ++v57;
            v60 = [v58 changedObjectID];

            v41 = &v93;
            sub_1D917959C();
            sub_1D91795DC();
            sub_1D91795EC();
            sub_1D91795AC();
          }

          while (v56 != v57);

          v51 = &selRef_setParent_;
          goto LABEL_74;
        }
      }

LABEL_74:
      v61 = 0;
      v93 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v2)
        {
          v62 = MEMORY[0x1DA72AA90](v61, v37);
        }

        else
        {
          if (v61 >= *(v37 + 16))
          {
            goto LABEL_96;
          }

          v62 = *(v37 + 8 * v61 + 32);
        }

        v63 = v62;
        v64 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        if ([v62 v51[230]] == 1)
        {
          v41 = &v93;
          sub_1D917959C();
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          v51 = &selRef_setParent_;
        }

        else
        {
        }

        ++v61;
      }

      while (v64 != v14);
      v41 = v93;
      v93 = MEMORY[0x1E69E7CC8];
      if (v41 < 0 || (v41 & 0x4000000000000000) != 0)
      {
        goto LABEL_99;
      }

      for (i = *(v41 + 16); i; i = sub_1D917935C())
      {
        v66 = 0;
        while (1)
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x1DA72AA90](v66, v41);
          }

          else
          {
            if (v66 >= *(v41 + 16))
            {
              goto LABEL_98;
            }

            v67 = *(v41 + 8 * v66 + 32);
          }

          v68 = v67;
          v69 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            break;
          }

          v92 = v67;
          sub_1D9107A50(&v93, &v92);

          ++v66;
          if (v69 == i)
          {
            v70 = v93;
            goto LABEL_101;
          }
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        ;
      }

      v70 = MEMORY[0x1E69E7CC8];
LABEL_101:
      v88 = v70;

      v93 = MEMORY[0x1E69E7CC0];
      if (v90)
      {
        v71 = sub_1D917935C();
      }

      else
      {
        v71 = *(v37 + 16);
      }

      v72 = &selRef_setParent_;
      v73 = MEMORY[0x1E69E7CC0];
      if (v71)
      {
        v74 = 0;
        do
        {
          if (v2)
          {
            v75 = MEMORY[0x1DA72AA90](v74, v37);
          }

          else
          {
            if (v74 >= *(v37 + 16))
            {
              goto LABEL_129;
            }

            v75 = *(v37 + 8 * v74 + 32);
          }

          v76 = v75;
          v77 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if ([v75 v72[230]] == 2)
          {
            sub_1D917959C();
            sub_1D91795DC();
            sub_1D91795EC();
            sub_1D91795AC();
            v72 = &selRef_setParent_;
          }

          else
          {
          }

          ++v74;
        }

        while (v77 != v71);
        v71 = v93;
        v73 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v71 = MEMORY[0x1E69E7CC0];
      }

      v93 = v73;
      if (v71 < 0 || (v71 & 0x4000000000000000) != 0)
      {
        goto LABEL_132;
      }

      for (j = *(v71 + 16); j; j = sub_1D917935C())
      {
        v79 = 0;
        while (1)
        {
          if ((v71 & 0xC000000000000001) != 0)
          {
            v80 = MEMORY[0x1DA72AA90](v79, v71);
          }

          else
          {
            if (v79 >= *(v71 + 16))
            {
              goto LABEL_131;
            }

            v80 = *(v71 + 8 * v79 + 32);
          }

          v81 = v80;
          v82 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            break;
          }

          v92 = v80;
          sub_1D9107DD4(&v92, &v91);

          sub_1D8E303B0(v91);
          ++v79;
          if (v82 == j)
          {
            goto LABEL_133;
          }
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        ;
      }

LABEL_133:

      return v89;
    }
  }

  sub_1D8DA6194(v16);
  return v11;
}

unint64_t sub_1D8DA6194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4240, &qword_1D9188D88);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D8D698BC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D8DA628C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t __IMInitializeLogCategories_block_invoke()
{
  v0 = os_log_create("com.apple.podcasts", "iTunesMobile");
  v1 = IMLogCategoryDefault;
  IMLogCategoryDefault = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_1D8DA6318(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8DA636C@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = a3;
    if (qword_1EDCD41E0 != -1)
    {
      swift_once();
    }

    v17 = xmmword_1EDCD41E8;
    v18 = qword_1EDCD41F8;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v4;
    v10[4] = v5;
    v10[5] = v7;
    v10[6] = v6;
    v10[7] = v4;
    v10[8] = &v17;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1D9108F04;
    *(v11 + 24) = v10;
    aBlock[4] = sub_1D8D24508;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8D24488;
    aBlock[3] = &block_descriptor_17_8;
    v12 = _Block_copy(aBlock);
    v13 = v4;

    [v13 performBlockAndWait_];
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = v18;
      *v15 = v17;
      v15[2] = v14;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_1D8DA65F4()
{

  return swift_deallocObject();
}

char *sub_1D8DA6664(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA72AA90](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v29[0] = v6;
      sub_1D9108464(v29, a2, &v24);

      if (v24)
      {
        v21 = v26;
        v22 = v27;
        v23[0] = v28[0];
        *(v23 + 11) = *(v28 + 11);
        v19 = v24;
        v20 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D8ECDF14(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_1D8ECDF14((v9 > 1), v10 + 1, 1, v5);
        }

        v16 = v21;
        v17 = v22;
        *v18 = v23[0];
        *&v18[11] = *(v23 + 11);
        v11 = v19;
        v15 = v20;
        *(v5 + 2) = v10 + 1;
        v12 = &v5[96 * v10];
        *(v12 + 3) = v15;
        *(v12 + 107) = *&v18[11];
        *(v12 + 5) = v17;
        *(v12 + 6) = *v18;
        *(v12 + 4) = v16;
        *(v12 + 2) = v11;
      }

      else
      {
        v21 = v26;
        v22 = v27;
        v23[0] = v28[0];
        *(v23 + 11) = *(v28 + 11);
        v19 = v24;
        v20 = v25;
        sub_1D8D08A50(&v19, qword_1ECAB7300, &unk_1D91B9190);
      }

      ++v4;
      if (v8 == i)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8DA6894(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (v10 << 9) | (8 * v13);
    v15 = *(*(a1 + 56) + v14);
    v48 = *(*(a1 + 48) + v14);
    v16 = v48;

    sub_1D9108800(&v48, a2, a3, &v43);
    v49[0] = v43;
    v49[2] = v45;
    v49[3] = v46;
    v50[0] = v47[0];
    *(v50 + 11) = *(v47 + 11);
    v49[1] = v44;
    if (v43)
    {
      v38 = v45;
      v39 = v46;
      v40[0] = v47[0];
      *(v40 + 11) = *(v47 + 11);
      v36 = v43;
      v37 = v44;
      v41[2] = v45;
      v41[3] = v46;
      v42[0] = v47[0];
      *(v42 + 11) = *(v47 + 11);
      v41[0] = v43;
      v41[1] = v44;

      sub_1D8D088B4(v49, &v31, qword_1ECAB7300, &unk_1D91B9190);
      sub_1D8F4B778(v41);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D8ECE030(0, v11[2] + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v26 = sub_1D8ECE030((v17 > 1), v18 + 1, 1, v11);
        v19 = v18 + 1;
        v11 = v26;
      }

      v33 = v38;
      v34 = v39;
      *v35 = v40[0];
      *&v35[11] = *(v40 + 11);
      v20 = v36;
      v31 = v36;
      v32 = v37;
      v11[2] = v19;
      v21 = &v11[13 * v18];
      v23 = *v35;
      v22 = *&v35[16];
      v24 = v34;
      *(v21 + 4) = v33;
      *(v21 + 5) = v24;
      *(v21 + 6) = v23;
      *(v21 + 7) = v22;
      v25 = v32;
      *(v21 + 2) = v20;
      *(v21 + 3) = v25;
      v21[16] = v15;
    }

    else
    {
      v33 = v45;
      v34 = v46;
      *v35 = v47[0];
      *&v35[11] = *(v47 + 11);
      v31 = v43;
      v32 = v44;
      sub_1D8F4B778(&v31);
    }
  }

  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v12;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  if (v11[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
    v27 = sub_1D91797AC();
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC8];
  }

  *&v31 = v27;

  sub_1D8DA6C0C(v28, 1, &v31);

  return v31;
}

void sub_1D8DA6C0C(uint64_t a1, char a2, void *a3)
{
  v47 = a1;
  v29 = *(a1 + 16);
  if (!v29)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v47 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1D9179CFC();
      __break(1u);
      goto LABEL_24;
    }

    v6 = *(v47 + v5 + 80);
    *v41 = *(v47 + v5 + 64);
    *&v41[16] = v6;
    v7 = *(v47 + v5 + 48);
    v39 = *(v47 + v5 + 32);
    v40 = v7;
    v8 = *(v47 + v5);
    v38 = *(v47 + v5 + 16);
    __src = v8;
    v9 = *(v47 + v5 + 96);
    v42 = v9;
    v11 = *&v41[16];
    v10 = *&v41[24];
    v12 = *v41;
    v13 = *&v41[8];
    v32 = v39;
    v33 = v7;
    v31 = v38;
    v34 = v8;
    sub_1D8D088B4(&__src, v35, &qword_1ECAB4238, &qword_1D9188D80);
    if (!v34)
    {
      goto LABEL_18;
    }

    __src = v34;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    *v41 = v12;
    *&v41[8] = v13;
    *&v41[16] = v11;
    *&v41[24] = v10;
    v41[26] = BYTE2(v10);
    v14 = *a3;
    v45[3] = v33;
    *v46 = *v41;
    v45[1] = v31;
    v45[2] = v32;
    v45[0] = v34;
    *&v46[11] = *&v41[11];
    v16 = sub_1D8F071DC(v45);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_21;
    }

    v20 = v15;
    if (v14[3] < v19)
    {
      break;
    }

    if (a2)
    {
      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1D8F85AE8();
      if (v20)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v23 = *a3;
    *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    memmove((v23[6] + 96 * v16), &__src, 0x5BuLL);
    *(v23[7] + 8 * v16) = v9;
    v24 = v23[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    ++v4;
    v23[2] = v26;
    v5 += 104;
    a2 = 1;
    if (v29 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_1D900A2FC(v19, a2 & 1);
  v43[2] = v39;
  v43[3] = v40;
  v44[0] = *v41;
  *(v44 + 11) = *&v41[11];
  v43[0] = __src;
  v43[1] = v38;
  v21 = sub_1D8F071DC(v43);
  if ((v20 & 1) != (v22 & 1))
  {
    goto LABEL_23;
  }

  v16 = v21;
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v27 = swift_allocError();
  swift_willThrow();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v35[2] = v39;
    v35[3] = v40;
    v36[0] = *v41;
    *(v36 + 11) = *&v41[11];
    v35[0] = __src;
    v35[1] = v38;
    sub_1D8F0C970(v35);

    return;
  }

LABEL_24:
  *&v35[0] = 0;
  *(&v35[0] + 1) = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD00000000000001BLL, 0x80000001D91CDBE0);
  sub_1D917964C();
  MEMORY[0x1DA7298F0](39, 0xE100000000000000);
  sub_1D91796DC();
  __break(1u);
}

uint64_t sub_1D8DA6FD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t *sub_1D8DA7030@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8[16] = a2;

  result = sub_1D8DA70A8(v5, sub_1D9105224, v8);
  *a3 = v4;
  a3[1] = result;
  a3[2] = v6;
  return result;
}

unint64_t *sub_1D8DA70A8(uint64_t a1, uint64_t (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1D8DA7228(v9, v7, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1D9106704(v11, v7, v5, a2);
  result = MEMORY[0x1DA72CB90](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

unint64_t *sub_1D8DA7228(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t))
{
  v29 = 0;
  v28 = result;
  v4 = 0;
  v41 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(v41 + 56);
    v15 = (*(v41 + 48) + 96 * v13);
    v16 = v15[1];
    v37[0] = *v15;
    v37[1] = v16;
    v18 = v15[3];
    v17 = v15[4];
    v19 = v15[2];
    *(v38 + 11) = *(v15 + 75);
    v37[3] = v18;
    v38[0] = v17;
    v37[2] = v19;
    v20 = v15[1];
    v32 = *v15;
    v33 = v20;
    v21 = v15[2];
    v22 = v15[3];
    v23 = v15[4];
    *(v36 + 11) = *(v15 + 75);
    v35 = v22;
    v36[0] = v23;
    v34 = v21;
    v24 = *(v14 + 8 * v13);
    sub_1D8F0C914(v37, v31);

    v25 = a4(&v32, v24);

    v39[2] = v34;
    v39[3] = v35;
    v40[0] = v36[0];
    *(v40 + 11) = *(v36 + 11);
    v39[0] = v32;
    v39[1] = v33;
    result = sub_1D8F0C970(v39);
    if (v25)
    {
      *(v28 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_1D8DA7404(v28, a2, v29, v41);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1D8DA7404(v28, a2, v29, v41);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8DA7404(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
  result = sub_1D91797AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v31 = result + 64;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(v4 + 56);
    v17 = (*(v4 + 48) + 96 * v15);
    v18 = v17[1];
    v35 = *v17;
    v36 = v18;
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    *(v39 + 11) = *(v17 + 75);
    v38 = v20;
    v39[0] = v21;
    v37 = v19;
    v22 = *(v16 + 8 * v15);
    v23 = v17[3];
    *&v33[13] = v17[2];
    *&v33[15] = v23;
    v34[0] = v17[4];
    *(v34 + 11) = *(v17 + 75);
    v24 = v17[1];
    *&v33[9] = *v17;
    *&v33[11] = v24;
    sub_1D9179DBC();
    sub_1D8F0C914(&v35, v32);

    EpisodeStateModel.hash(into:)(v33);
    sub_1D9179E1C();
    result = sub_1D91792FC();
    *(v31 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v25 = (v9[6] + 96 * result);
    v26 = v36;
    *v25 = v35;
    v25[1] = v26;
    v27 = v37;
    v28 = v38;
    v29 = v39[0];
    *(v25 + 75) = *(v39 + 11);
    v25[3] = v28;
    v25[4] = v29;
    v25[2] = v27;
    *(v9[7] + 8 * result) = v22;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

BOOL sub_1D8DA7630(void *a1)
{
  if (*(*a1 + 16))
  {
    return 1;
  }

  if (*(a1[1] + 16))
  {
    return 1;
  }

  return *(a1[2] + 16) != 0;
}

uint64_t sub_1D8DA7674@<X0>(unint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_1D8DA76F0();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1D8DA76F0()
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = sub_1D917744C();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v65 - v9;
  v10 = sub_1D9177F1C();
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [objc_opt_self() fetchHistoryAfterToken_];
  v14 = v0[4];
  *&v72[0] = 0;
  v15 = [v14 executeRequest:v13 error:v72];
  v16 = *&v72[0];
  if (!v15)
  {
    v21 = *&v72[0];
    v22 = sub_1D9176A6C();

    swift_willThrow();
LABEL_7:
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v1, qword_1ECAAFC48);
    swift_beginAccess();
    (v2[2])(v4, v24, v1);
    v25 = v13;
    v26 = sub_1D917741C();
    v27 = sub_1D9178CFC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_1D8CEC000, v26, v27, "Cannot execute fetchHistoryRequest: %@", v28, 0xCu);
      sub_1D8D08A50(v29, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v29, -1, -1);
      MEMORY[0x1DA72CB90](v28, -1, -1);
    }

    (v2[1])(v4, v1);
    goto LABEL_32;
  }

  v17 = v15;
  v68 = v13;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    v23 = v16;

    v13 = v68;
    goto LABEL_7;
  }

  v19 = v18;
  v20 = v16;
  if ([v19 result])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  v72[0] = v70;
  v72[1] = v71;
  if (!*(&v71 + 1))
  {
    sub_1D8D08A50(v72, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA930, &qword_1D91B9170);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v42 = v2;
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v1, qword_1ECAAFC48);
    swift_beginAccess();
    (v2[2])(v7, v43, v1);
    v25 = v17;
    v44 = sub_1D917741C();
    v45 = sub_1D9178CFC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412546;
      *(v46 + 4) = v19;
      *v47 = v19;
      *(v46 + 12) = 2048;
      *(v46 + 14) = [v19 resultType];
      _os_log_impl(&dword_1D8CEC000, v44, v45, "NSPersistentHistoryResult.result does not contain an array of transactions: HistoryResult: %@; resultType %ld", v46, 0x16u);
      sub_1D8D08A50(v47, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v47, -1, -1);
      MEMORY[0x1DA72CB90](v46, -1, -1);
    }

    else
    {
    }

    (v42[1])(v7, v1);
    goto LABEL_31;
  }

  v31 = v69;
  if (!(v69 >> 62))
  {
    v32 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_17;
    }

LABEL_35:
    if (qword_1ECAAFC40 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v32 = sub_1D917935C();
  if (!v32)
  {
    goto LABEL_35;
  }

LABEL_17:
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_40;
  }

  v19 = v68;
  if ((v31 & 0xC000000000000001) != 0)
  {
LABEL_40:
    v35 = MEMORY[0x1DA72AA90](v34, v31);
    goto LABEL_22;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v34 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
LABEL_36:
    v49 = __swift_project_value_buffer(v1, qword_1ECAAFC48);
    swift_beginAccess();
    v50 = v2;
    v51 = v2[2];
    v52 = v66;
    v51(v66, v49, v1);

    v25 = v17;
    v53 = sub_1D917741C();
    v54 = sub_1D9178CFC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v70 = v67;
      *v55 = 136315394;
      v56 = sub_1D8CF2154(0, &qword_1EDCD0930, 0x1E695D6B0);
      v57 = MEMORY[0x1DA729BD0](v31, v56);
      v58 = v50;
      v60 = v59;

      v61 = sub_1D8CFA924(v57, v60, &v70);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2112;
      *(v55 + 14) = v19;
      v62 = v65;
      *v65 = v19;
      v63 = v25;
      _os_log_impl(&dword_1D8CEC000, v53, v54, "NSPersistentHistoryResult.result contains an empty list of transactions: historyTransactions: %s; historyResult: %@", v55, 0x16u);
      sub_1D8D08A50(v62, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v62, -1, -1);
      v64 = v67;
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x1DA72CB90](v64, -1, -1);
      MEMORY[0x1DA72CB90](v55, -1, -1);

      (v58[1])(v66, v1);
    }

    else
    {

      (v50[1])(v52, v1);
    }

LABEL_31:

LABEL_32:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  v35 = *(v31 + 8 * v34 + 32);
LABEL_22:
  v1 = v35;
  v36 = v0[3];
  *v12 = v36;
  v37 = v67;
  (v67[13])(v12, *MEMORY[0x1E69E8020], v10);
  v38 = v36;
  LOBYTE(v36) = sub_1D9177F4C();
  v39 = v37[1];
  v2 = v37 + 1;
  v39(v12, v10);
  if ((v36 & 1) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v40 = [v1 token];
  v41 = v0[5];
  v0[5] = v40;
  v25 = v40;

  sub_1D8D2545C();
LABEL_33:

  return v31;
}

uint64_t MTPodcastHidesPlayedEpisodesAppWideSetting()
{
  v0 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v1 = [v0 BOOLForKey:@"MTHidePlayedEpisodes"];

  return v1;
}

uint64_t MTPodcastHidesPlayedEpisodesResolved(int a1)
{
  if (a1)
  {
    return a1 == 2;
  }

  else
  {
    return MTPodcastHidesPlayedEpisodesAppWideSetting();
  }
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1D8DA8428()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D90F680C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1D8DA8564(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

uint64_t sub_1D8DA8588()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1D90F67A8;
  }

  else
  {
    v2 = sub_1D8DA869C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8DA869C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8DA8700()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D90F9D48;
  }

  else
  {
    v2 = sub_1D8DA8840;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8DA8840()
{
  (*(v0 + 104))(0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1D8DA88B4(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v6 = a1;
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD1098);
    sub_1D8D35688(a2, v35);
    v8 = a1;
    v9 = sub_1D917741C();
    v10 = sub_1D9178CFC();

    if (os_log_type_enabled(v9, v10))
    {
      v33 = a3;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v34 = v13;
      *v11 = 141558531;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v14 = *(v36 + 24);
      if (v14)
      {
        v15 = [v14 description];
        v16 = sub_1D917820C();
        v18 = v17;
      }

      else
      {
        v16 = 0x6974636120726F66;
        v18 = 0xEF72657375206576;
      }

      sub_1D8D330B0(v35);
      v29 = sub_1D8CFA924(v16, v18, &v34);

      *(v11 + 14) = v29;
      *(v11 + 22) = 2112;
      v30 = sub_1D9176A5C();
      *(v11 + 24) = v30;
      *v12 = v30;
      _os_log_impl(&dword_1D8CEC000, v9, v10, "Account %{private,mask.hash}s: Could not fetch and donate podcasts and stations with error: %@", v11, 0x20u);
      sub_1D8E262AC(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);

      a3 = v33;
    }

    else
    {

      sub_1D8D330B0(v35);
    }

    v31 = a1;
    a3(a1);
  }

  else
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD1098);
    sub_1D8D35688(a2, v35);
    v20 = sub_1D917741C();
    v21 = sub_1D9178D1C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v24 = *(v36 + 24);
      if (v24)
      {
        v25 = [v24 description];
        v26 = sub_1D917820C();
        v28 = v27;
      }

      else
      {
        v26 = 0x6974636120726F66;
        v28 = 0xEF72657375206576;
      }

      sub_1D8D330B0(v35);
      v32 = sub_1D8CFA924(v26, v28, &v34);

      *(v22 + 14) = v32;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Account %{private,mask.hash}s: Finished siri donation.", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    else
    {

      sub_1D8D330B0(v35);
    }

    a3(0);
  }
}

void sub_1D8DA8CE8(void *a1, _BYTE *a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    v53 = a1;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if ((swift_dynamicCast() & 1) != 0 && (v55 & 1) == 0)
    {
      v35 = v54;
      if (qword_1EDCD1090 != -1)
      {
        swift_once();
      }

      v36 = sub_1D917744C();
      __swift_project_value_buffer(v36, qword_1EDCD1098);
      sub_1D8D35688(a2, &v54);
      v11 = sub_1D917741C();
      v37 = sub_1D9178CFC();
      if (os_log_type_enabled(v11, v37))
      {
        v52 = v35;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v53 = v39;
        *v38 = 141558531;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2081;
        v40 = *(v55 + 24);
        if (v40)
        {
          v41 = [v40 description];
          v42 = sub_1D917820C();
          v44 = v43;
        }

        else
        {
          v42 = 0x6974636120726F66;
          v44 = 0xEF72657375206576;
        }

        sub_1D8D330B0(&v54);
        v48 = sub_1D8CFA924(v42, v44, &v53);

        *(v38 + 14) = v48;
        *(v38 + 22) = 2048;
        *(v38 + 24) = v52;
        _os_log_impl(&dword_1D8CEC000, v11, v37, "Donation Job completed for account: %{private,mask.hash}s with errors for %ld userId's.", v38, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1DA72CB90](v39, -1, -1);
        MEMORY[0x1DA72CB90](v38, -1, -1);

        goto LABEL_27;
      }
    }

    else
    {
      if (qword_1EDCD1090 != -1)
      {
        swift_once();
      }

      v9 = sub_1D917744C();
      __swift_project_value_buffer(v9, qword_1EDCD1098);
      sub_1D8D35688(a2, &v54);
      v10 = a1;
      v11 = sub_1D917741C();
      v12 = sub_1D9178CFC();

      if (os_log_type_enabled(v11, v12))
      {
        v51 = a4;
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v53 = v15;
        *v13 = 141558531;
        *(v13 + 4) = 1752392040;
        *(v13 + 12) = 2081;
        v16 = *(v55 + 24);
        if (v16)
        {
          v50 = v12;
          v17 = v14;
          v18 = v15;
          v19 = a2;
          v20 = a3;
          v21 = [v16 description];
          v22 = sub_1D917820C();
          v24 = v23;

          a3 = v20;
          a2 = v19;
          v15 = v18;
          v14 = v17;
          v12 = v50;
        }

        else
        {
          v22 = 0x6974636120726F66;
          v24 = 0xEF72657375206576;
        }

        sub_1D8D330B0(&v54);
        v45 = sub_1D8CFA924(v22, v24, &v53);

        *(v13 + 14) = v45;
        *(v13 + 22) = 2112;
        v46 = sub_1D9176A5C();
        *(v13 + 24) = v46;
        *v14 = v46;
        _os_log_impl(&dword_1D8CEC000, v11, v12, "Donation Job Failed for account: %{private,mask.hash}s with error: %@", v13, 0x20u);
        sub_1D8E262AC(v14);
        MEMORY[0x1DA72CB90](v14, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1DA72CB90](v15, -1, -1);
        MEMORY[0x1DA72CB90](v13, -1, -1);

        a4 = v51;
        goto LABEL_27;
      }
    }

    sub_1D8D330B0(&v54);
LABEL_27:
    v49 = *a2 == 1;
    swift_beginAccess();
    *(a3 + 16) = v49;
    goto LABEL_28;
  }

  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1EDCD1098);
  sub_1D8D35688(a2, &v54);
  v26 = sub_1D917741C();
  v27 = sub_1D9178D1C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v53 = v29;
    *v28 = 141558275;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    v30 = *(v55 + 24);
    if (v30)
    {
      v31 = [v30 description];
      v32 = sub_1D917820C();
      v34 = v33;
    }

    else
    {
      v32 = 0x6974636120726F66;
      v34 = 0xEF72657375206576;
    }

    sub_1D8D330B0(&v54);
    v47 = sub_1D8CFA924(v32, v34, &v53);

    *(v28 + 14) = v47;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "Donation Job completed for account: %{private,mask.hash}s with no errors.", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA72CB90](v29, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  else
  {

    sub_1D8D330B0(&v54);
  }

LABEL_28:
  dispatch_group_leave(a4);
}

uint64_t sub_1D8DA9384()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_workQueue);
  aBlock[4] = sub_1D8F6092C;
  v14 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_35_0;
  v8 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D8DA1F0C(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t objectdestroy_15Tm()
{

  sub_1D8CFEACC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80));
  sub_1D8D85E5C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));

  v3 = *(v1 + 112);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm_1()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D8DA9904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = v4 + 1;
  while (--v6)
  {
    v7 = v5 + 80;
    sub_1D8D35688(v5, v23);
    v8 = v23[0];
    sub_1D8D330B0(v23);
    v5 = v7;
    if (v8 == 1)
    {
      swift_beginAccess();
      if (*(a3 + 16))
      {
        if (qword_1EDCD1090 != -1)
        {
          swift_once();
        }

        v9 = sub_1D917744C();
        __swift_project_value_buffer(v9, qword_1EDCD1098);
        v10 = sub_1D917741C();
        v11 = sub_1D9178CFC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Encountered more than one failure for secondary user donation. Cannot set user defaults key for last date all secondary user data was donated.";
LABEL_13:
          _os_log_impl(&dword_1D8CEC000, v10, v11, v13, v12, 2u);
          MEMORY[0x1DA72CB90](v12, -1, -1);
          goto LABEL_19;
        }
      }

      else
      {
        if (qword_1EDCD1090 != -1)
        {
          swift_once();
        }

        v15 = sub_1D917744C();
        __swift_project_value_buffer(v15, qword_1EDCD1098);
        v16 = sub_1D917741C();
        v17 = sub_1D9178D1C();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1D8CEC000, v16, v17, "There were secondary user donations that were made, and all of them were successful. Setting the current date in User Defaults.", v18, 2u);
          MEMORY[0x1DA72CB90](v18, -1, -1);
        }

        v19 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
        sub_1D9176CDC();
        v21 = v20;
        v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
        [v19 setDouble:v10 forKey:v21];
      }

      goto LABEL_19;
    }
  }

  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1EDCD1098);
  v10 = sub_1D917741C();
  v11 = sub_1D9178D1C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "No secondary user donations were made.";
    goto LABEL_13;
  }

LABEL_19:

  return sub_1D8DA9C30();
}

uint64_t sub_1D8DA9C30()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9177E9C();
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator__donationInProgress;
  swift_beginAccess();
  v9 = *&v0[v8];
  os_unfair_lock_lock((v9 + 20));
  *(v9 + 16) = 0;
  os_unfair_lock_unlock((v9 + 20));
  swift_endAccess();
  v14[1] = *&v0[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1D8DAA074;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_26_4;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_1D9177E4C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD768(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v4, v11);
  _Block_release(v11);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v15);
}

uint64_t sub_1D8DA9FB0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  sub_1D8D4F5BC(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1D8DAA00C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CachingImageContentProvider(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_1D8DAC03C(v7, a4, type metadata accessor for CachingImageContentProvider);
}

uint64_t sub_1D8DAA090()
{
  v0 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v21[-1] - v4);
  v6 = type metadata accessor for CachingImageContentProvider(0);
  __swift_allocate_value_buffer(v6, qword_1EDCD60C0);
  v7 = __swift_project_value_buffer(v6, qword_1EDCD60C0);
  v8 = [objc_opt_self() artworkAssetURL];
  sub_1D9176B9C();

  v9 = [objc_opt_self() defaultCenter];
  sub_1D8DAA3BC(v2, 0, v9, v5);
  *(swift_allocObject() + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  swift_allocObject();
  v10 = sub_1D9177A5C();
  v21[3] = &type metadata for CGImageResizer;
  v21[4] = &protocol witness table for CGImageResizer;
  if (qword_1EDCD5B20 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDCD5B28;
  sub_1D8D088B4(v5, v7, &qword_1ECAB4908, &qword_1D918AFB0);
  v12 = (v7 + v6[5]);
  *v12 = sub_1D8E5149C;
  v12[1] = v10;
  sub_1D8CFD9D8(v21, v7 + v6[6]);
  *(v7 + v6[7]) = v11;
  v13 = v11;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1D8DABF0C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4910, &qword_1D918AFB8);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v15;
  *(v7 + v6[8]) = v16;
  v17 = sub_1D8DABF0C(v14);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;

  sub_1D8D08A50(v5, &qword_1ECAB4908, &qword_1D918AFB0);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  *(v18 + 16) = v17;

  *(v7 + v6[9]) = v18;
  return result;
}

void sub_1D8DAA3BC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9178FBC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 * 0.1;
  if (v15 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v15 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = a2 - v15;
  if (a2 >= v15)
  {
    sub_1D9178FCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65E8, &qword_1D91928A8);
    swift_allocObject();
    *a4 = sub_1D8DAA5E0(v17, v14);
    (*(v9 + 16))(v11, a1, v8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
    sub_1D8DAB230(v11, v16, a4 + *(v18 + 60));

    (*(v9 + 8))(a1, v8);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1D8DAA5E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8DAA7D4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65F0, &qword_1D91928B0);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8DAAEC4(v10);
  os_unfair_lock_unlock(v9);

  v11 = sub_1D9178FBC();
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

void sub_1D8DAA704(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v5 = [v3 BOOLForKey_];

    if (v5)
    {
      sub_1D8F8779C();
    }

    else
    {
      sub_1D8DAA8CC();
      sub_1D8DAAEA4();
    }
  }
}

unint64_t sub_1D8DAA7D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B8, &qword_1D9188F20);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D8F068B0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D8DAA8CC()
{
  v4 = sub_1D9177F1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ECAB1900 != -1)
  {
    swift_once();
  }

  v8 = qword_1ECAB1908;
  *v7 = qword_1ECAB1908;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  v10 = sub_1D9177F4C();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v11 = objc_opt_self();
  v12 = [v11 _applePodcastsFoundationSharedUserDefaults];
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v0 = [v12 stringForKey_];

  if (v0)
  {
    v2 = sub_1D917820C();
    v1 = v14;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  v15 = [v11 _applePodcastsFoundationSharedUserDefaults];
  v35 = "kMTDeviceIdentifierKey";
  v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [v15 stringForKey_];

  if (v7)
  {
    v17 = sub_1D917820C();
    v10 = v18;
    if (!v1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = 0;
    v10 = 0;
    if (!v1)
    {
      goto LABEL_18;
    }
  }

  v19 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v19 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v33 = v17;
    v34 = v11;
    v3 = sub_1D9178D1C();
    if (qword_1EDCD0700 == -1)
    {
LABEL_15:
      swift_beginAccess();
      v20 = qword_1EDCD0708;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D9189080;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1D8D34978();
      *(v21 + 32) = v2;
      *(v21 + 40) = v1;
      v22 = v20;
      sub_1D91772DC(v3, &dword_1D8CEC000, v22, "Initial set clientId with AMS %@", 32, 2, v21);

      v23 = sub_1D8F87480();
      if (qword_1EDCD2A88 != -1)
      {
        swift_once();
      }

      [v23 setIdentifier:v0 forKey:qword_1EDCD2A90];

      v11 = v34;
      v24 = [v34 _applePodcastsFoundationSharedUserDefaults];
      v0 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v24 setURL:0 forKey:v0];

      v17 = v33;
LABEL_18:

      if (!v10)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

LABEL_32:
    swift_once();
    goto LABEL_15;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_19:
  v25 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v25 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = sub_1D9178D1C();
    if (qword_1EDCD0700 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v27 = qword_1EDCD0708;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D9189080;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1D8D34978();
    *(v28 + 32) = v17;
    *(v28 + 40) = v10;
    v29 = v27;
    sub_1D91772DC(v26, &dword_1D8CEC000, v29, "Initial set userId with AMS %@", 30, 2, v28);

    v30 = sub_1D8F87480();
    if (qword_1EDCD2AA0 != -1)
    {
      swift_once();
    }

    [v30 setIdentifier:v7 forKey:qword_1EDCD2AA8];

    v31 = [v11 _applePodcastsFoundationSharedUserDefaults];
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v31 setURL:0 forKey:v7];
  }

  else
  {
  }

LABEL_30:
}

uint64_t sub_1D8DAAF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9177E0C();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177E9C();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB1900 != -1)
  {
    swift_once();
  }

  v13 = qword_1ECAB1908;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = a2;
  v11 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBD60(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v6, v11);
  _Block_release(v11);
  (*(v15 + 8))(v6, v4);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_1D8DAB1F8()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

id sub_1D8DAB230@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v50 = a1;
  v56 = a3;
  v5 = sub_1D9176C2C();
  v58 = *(v5 - 8);
  v6 = v58;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v46 - v9;
  v54 = sub_1D9178E0C();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1D9177E9C();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = *(v6 + 16);
  v55 = v6 + 16;
  v57 = v15;
  (v15)(a3, a1, v5, v14);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v48 = "disk.TTMLRequest";
  sub_1D9177E7C();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v49 + 104))(v11, *MEMORY[0x1E69E8090], v54);
  v54 = sub_1D9178E4C();
  v16 = v52;
  sub_1D9177A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65E8, &qword_1D91928A8);
  swift_allocObject();
  v17 = sub_1D8DAB978(v53, v16);
  v52 = v17;
  v19 = v50;
  v18 = v51;
  v57(v51, v50, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6430, &qword_1D91926C0);
  v20 = swift_allocObject();
  v21 = v58 + 32;
  v49 = *(v58 + 32);
  v47 = v5;
  (v49)(v20 + qword_1EDCDE890, v18, v5);
  v58 = v21;
  v22 = v20 + qword_1EDCDE888;
  *v22 = 0;
  *(v22 + 4) = 1;
  *(v20 + qword_1EDCD6AC0) = v54;
  *(v20 + qword_1EDCD6AC8) = v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0);
  v24 = v56;
  v23 = v57;
  *(v56 + v53[15]) = v20;
  v23(v18, v19, v5);
  v25 = swift_allocObject();
  v26 = v49;
  (v49)(v25 + qword_1EDCDE890, v18, v5);
  v27 = v25 + qword_1EDCDE888;
  *v27 = 512;
  *(v27 + 4) = 0;
  v28 = v54;
  *(v25 + qword_1EDCD6AC0) = v54;
  v29 = v52;
  *(v25 + qword_1EDCD6AC8) = v52;
  *(v24 + v53[16]) = v25;
  v30 = v47;
  v23(v18, v19, v47);
  v31 = swift_allocObject();
  v26(v31 + qword_1EDCDE890, v18, v30);
  v32 = v26;
  v33 = v31 + qword_1EDCDE888;
  *v33 = 1024;
  *(v33 + 4) = 0;
  *(v31 + qword_1EDCD6AC0) = v28;
  *(v31 + qword_1EDCD6AC8) = v29;
  v34 = v53;
  v36 = v56;
  v35 = v57;
  *(v56 + v53[17]) = v31;
  v35(v18, v19, v30);
  v37 = swift_allocObject();
  v38 = v18;
  v39 = v32;
  v32(v37 + qword_1EDCDE890, v38, v30);
  v40 = v37 + qword_1EDCDE888;
  *v40 = 2048;
  *(v40 + 4) = 0;
  *(v37 + qword_1EDCD6AC0) = v28;
  v41 = v52;
  *(v37 + qword_1EDCD6AC8) = v52;
  *(v36 + v34[18]) = v37;
  v42 = swift_allocObject();
  v39(v42 + qword_1EDCDE890, v19, v30);
  v43 = v42 + qword_1EDCDE888;
  *v43 = 0x8000;
  *(v43 + 4) = 0;
  *(v42 + qword_1EDCD6AC0) = v28;
  *(v42 + qword_1EDCD6AC8) = v41;
  *(v36 + v34[19]) = v42;
  swift_retain_n();
  v44 = v28;

  return v44;
}

uint64_t sub_1D8DAB978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8DAA7D4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65F0, &qword_1D91928B0);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8DABAA8(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

char *sub_1D8DABAEC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_1D9178D1C();
    if (qword_1EDCD0700 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EDCD0708;
    sub_1D91772DC(v3, &dword_1D8CEC000, v4, "Updating identifiers for analytics", 34, 2, MEMORY[0x1E69E7CC0]);

    v5 = sub_1D8F87480();
    v6 = [objc_opt_self() ams_sharedAccountStore];
    v7 = [v6 ams_activeiTunesAccount];

    [v5 setAccount_];
    v8 = [*&v2[OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_accountStore] ams_activeiTunesAccount];
    v9 = v8;
    if (v8)
    {
      if ([v8 ams:*MEMORY[0x1E698C4B0] accountFlagValueForAccountFlag:?])
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16 = v14;
      v17 = v15;
      if (*(&v15 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1D8D64450(&v16);
      }

      if ([v9 ams:*MEMORY[0x1E698C4B8] accountFlagValueForAccountFlag:v14])
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16 = v14;
      v17 = v15;
      if (*(&v15 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1D8D64450(&v16);
      }

      if ([v9 ams:*MEMORY[0x1E698C4A8] accountFlagValueForAccountFlag:v14])
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16 = v14;
      v17 = v15;
      if (*(&v15 + 1))
      {
        v10 = swift_dynamicCast();
LABEL_24:
        v11 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_promiseLock];
        MEMORY[0x1EEE9AC00](v10);
        MEMORY[0x1EEE9AC00](v12);

        os_unfair_lock_lock(v11 + 4);
        sub_1D8D04F5C(v13);
        os_unfair_lock_unlock(v11 + 4);
      }
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      sub_1D8D64450(&v16);
      v16 = 0u;
      v17 = 0u;
      sub_1D8D64450(&v16);
      v16 = 0u;
      v17 = 0u;
    }

    v10 = sub_1D8D64450(&v16);
    goto LABEL_24;
  }

  return result;
}

unint64_t sub_1D8DABF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43C0, &qword_1D9188F28);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, v11, &qword_1ECAB43C8, &unk_1D9188F30);
      result = sub_1D8F06844(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = memcpy((v3[6] + 264 * result), v11, 0x108uLL);
      *(v3[7] + 8 * v7) = v11[33];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 272;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D8DAC03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8DAC108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ImageContentProvider.url(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v7 = sub_1D9176C2C();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0);
  v5[43] = swift_task_alloc();
  v5[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  v5[45] = swift_task_alloc();
  v5[46] = type metadata accessor for ArtworkContent(0);
  v5[47] = swift_task_alloc();
  v8 = *(a3 - 8);
  v5[48] = v8;
  v5[49] = *(v8 + 64);
  v5[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v5[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8DAC380, 0, 0);
}

uint64_t sub_1D8DAC380()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  v7 = sub_1D917886C();
  v17 = *(v0 + 296);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  (*(v3 + 16))(v1, v5, v17);
  sub_1D8D41388(v6, v0 + 16);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v17;
  (*(v3 + 32))(v9 + v8, v1, v17);
  memcpy((v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), (v0 + 16), 0x108uLL);
  v10 = sub_1D8E56860(0, 0, v2, &unk_1D918B678, v9);
  *(v0 + 416) = v10;
  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  *v11 = v0;
  v11[1] = sub_1D8DADC8C;
  v14 = *(v0 + 368);
  v13 = *(v0 + 376);
  v15 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v13, v10, v14, v12, v15);
}

uint64_t sub_1D8DAC57C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;

  v6 = *(v0 + v4 + 32);
  if (v6 != 255)
  {
    sub_1D8DADC60(*(v5 + 16), *(v5 + 24), v6);
  }

  v7 = *(v5 + 64);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v5 + 56), v7);
  }

  v8 = *(v5 + 80);
  if (v8 != 255)
  {
    sub_1D8DADC78(*(v5 + 72), v8);
  }

  v9 = *(v5 + 96);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v5 + 88), v9);
  }

  v10 = *(v5 + 112);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v5 + 104), v10);
  }

  v11 = *(v5 + 128);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v5 + 120), v11);
  }

  if (*(v5 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 224));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DAC6F0(uint64_t a1, char a2, char a3, char a4)
{
  v8 = sub_1D8F87480();
  if (qword_1EDCD2A88 != -1)
  {
    swift_once();
  }

  v9 = [v8 identifierForKey_];

  v10 = sub_1D917820C();
  v12 = v11;

  v13 = qword_1EDCD2AA0;
  v14 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store);
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = [v14 identifierForKey_];

  v16 = sub_1D917820C();
  v18 = v17;

  v19 = type metadata accessor for AnalyticsUserIdentifier();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v21 = v10;
  v21[1] = v12;
  v22 = &v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v22 = v16;
  v22[1] = v18;
  v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = a2 & 1;
  v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = a3 & 1;
  v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = a4 & 1;
  v32.receiver = v20;
  v32.super_class = v19;

  v23 = objc_msgSendSuper2(&v32, sel_init);
  v24 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  [*(a1 + v24) finishWithResult_];
  v25 = sub_1D9178D1C();
  if (qword_1EDCD0700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = qword_1EDCD0708;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D918A530;
  v28 = MEMORY[0x1E69E6158];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v29 = sub_1D8D34978();
  *(v27 + 32) = v16;
  *(v27 + 40) = v18;
  *(v27 + 96) = v28;
  *(v27 + 104) = v29;
  *(v27 + 64) = v29;
  *(v27 + 72) = v10;
  *(v27 + 80) = v12;
  v30 = v26;
  sub_1D91772DC(v25, &dword_1D8CEC000, v30, "userId updated to %@. clientId updated to %@", 44, 2, v27);
}

uint64_t sub_1D8DAC9D8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = (*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D5FF18;

  return sub_1D8DACB00(a1, v8, v9, v1 + v6, v1 + v7, v4, v5);
}

uint64_t sub_1D8DACB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(a7 + 16) + **(a7 + 16));
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1D8D5FF18;

  return v14(a1, a5, a6, a7);
}

uint64_t sub_1D8DACC3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D58924;

  return CachingImageContentProvider.content(for:)(a1, a2);
}

uint64_t CachingImageContentProvider.content(for:)(uint64_t a1, uint64_t a2)
{
  v3[2198] = v2;
  v3[2197] = a2;
  v3[2196] = a1;
  v4 = type metadata accessor for ArtworkContent(0);
  v3[2199] = v4;
  v3[2200] = *(v4 - 8);
  v3[2201] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4918, &qword_1D918AFC8);
  v3[2202] = v5;
  v3[2203] = *(v5 - 8);
  v3[2204] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4920, &unk_1D918AFD0);
  v3[2205] = swift_task_alloc();
  v3[2206] = swift_task_alloc();
  v6 = sub_1D9176AAC();
  v3[2207] = v6;
  v3[2208] = *(v6 - 8);
  v3[2209] = swift_task_alloc();
  v7 = sub_1D9176C2C();
  v3[2210] = v7;
  v3[2211] = *(v7 - 8);
  v3[2212] = swift_task_alloc();
  v3[2213] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8DACF1C, 0, 0);
}

uint64_t sub_1D8DACF1C()
{
  v1 = *(v0 + 17576);
  v61.size.width = *(v1 + 176);
  v61.size.height = *(v1 + 184);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v60 = AVMakeRectWithAspectRatioInsideRect(*(v1 + 40), v61);
  ArtworkRequest.resized(to:displayScale:)(0.0, 1, v0 + 16768, v60.size.width, v60.size.height);
  sub_1D8D088B4(v0 + 16992, v0 + 17432, &qword_1ECAB4928, &qword_1D918B380);
  if (*(v0 + 17456))
  {
    sub_1D8D6BCE0((v0 + 17432), v0 + 17392);
  }

  else
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v2 = sub_1D917744C();
    v3 = __swift_project_value_buffer(v2, qword_1EDCD5E28);
    v4 = sub_1D9178CEC();
    SignpostAndLogTrace(domain:level:)(v3, v4, (v0 + 17392));
    if (*(v0 + 17456))
    {
      sub_1D8D08A50(v0 + 17432, &qword_1ECAB4928, &qword_1D918B380);
    }
  }

  v57 = (v0 + 4584);
  v56 = v0 + 8600;
  v55 = v0 + 10328;
  v53 = (v0 + 13112);
  v52 = (v0 + 15352);
  v51 = v0 + 16192;
  v5 = *(v0 + 17576);
  sub_1D8D412B0(v0 + 17392, v0 + 16992);
  v58 = v5;
  sub_1D8D088B4(v5 + 224, v0 + 17472, &qword_1ECAB4928, &qword_1D918B380);
  v6 = *(v0 + 17496);
  if (v6)
  {
    v7 = *(v0 + 17576);
    v8 = *(v0 + 17504);
    __swift_project_boxed_opaque_existential_1((v0 + 17472), *(v0 + 17496));
    (*(v8 + 16))("Processing ArtworkContent Request", 33, 2, *v7, v7[1], v6, v8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17472));
  }

  else
  {
    sub_1D8D08A50(v0 + 17472, &qword_1ECAB4928, &qword_1D918B380);
  }

  v9 = *(v0 + 17672);
  v10 = *(v0 + 17664);
  v11 = *(v0 + 17656);
  v12 = *(v0 + 17584);
  v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0) + 60);
  *(v0 + 17552) = ArtworkRequest.fileName.getter();
  *(v0 + 17560) = v14;
  (*(v10 + 104))(v9, *MEMORY[0x1E6968F70], v11);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v10 + 8))(v9, v11);

  v15 = *(v0 + 17696);
  v16 = *(v0 + 17688);
  v17 = *(v0 + 17680);
  sub_1D9176B4C();

  v18 = *(v16 + 8);
  *(v0 + 17712) = v18;
  *(v0 + 17720) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v15, v17);
  v19 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  LOBYTE(v15) = [v19 fileExistsAtPath_];

  if (v15)
  {
    (*(*(v0 + 17688) + 32))(*(v0 + 17568), *(v0 + 17704), *(v0 + 17680));
    swift_storeEnumTagMultiPayload();
    sub_1D8D58578(v0 + 16768);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 16800) + 1;
    v24 = *(v0 + 16960);
    v49 = qword_1D918B1E8[v23];
    ArtworkRequest.resized(to:displayScale:)(v24, 0, v0 + 17032, *(v0 + 16808), *(v0 + 16816));
    if (*(*(v0 + 16976) + 16))
    {
      v25 = sub_1D8E50394;
      v26 = 0;
    }

    else
    {
      v27 = *(v0 + 17584);
      v28 = v27 + *(type metadata accessor for CachingImageContentProvider(0) + 20);
      v25 = *v28;
      v26 = *(v28 + 8);
    }

    v54 = v13;
    *(v0 + 17728) = v26;
    if (qword_1EDCD7890 != -1)
    {
      swift_once();
    }

    v47 = 8 * v23;
    v29 = *(v0 + 17584);
    v30 = byte_1EDCD7898;
    ArtworkRequest.with(format:)(byte_1EDCD7898, (v0 + 16200));
    *(v0 + 16464) = v25;
    *(v0 + 16472) = v26;
    sub_1D8D41388(v0 + 17032, v0 + 16480);
    *(v0 + 16744) = v25;
    *(v0 + 16752) = v26;
    *(v0 + 16760) = 0;
    v50 = type metadata accessor for CachingImageContentProvider(0);
    v31 = *(v29 + v50[7]);
    *(v0 + 16192) = v31;
    sub_1D8D088B4(v51, v0 + 15616, &qword_1ECAB4930, &unk_1D918AFE0);
    swift_retain_n();
    v48 = v31;
    ArtworkRequest.with(format:)(v30, v52);
    sub_1D8D08A50(v51, &qword_1ECAB4930, &unk_1D918AFE0);
    *(v0 + 16185) = v30;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0);
    v33 = *(v0 + 17584);
    v34 = *(v13 + *(v32 + ((0xC04u >> v47) & 0xC) + 60));
    sub_1D8D088B4(v52, v53, &qword_1ECAB4940, &qword_1D918AFF0);
    sub_1D8D41388(v52, v0 + 13960);
    *(v0 + 13952) = v34;
    *(v0 + 14224) = 1;

    sub_1D8D08A50(v52, &qword_1ECAB4940, &qword_1D918AFF0);
    v35 = *(v33 + v50[8]);
    memcpy((v0 + 14232), v53, 0x459uLL);
    *(v0 + 11712) = v35;
    sub_1D8D088B4(v0 + 14232, v0 + 10592, &qword_1ECAB4948, &qword_1D918AFF8);
    sub_1D8D41388(v0 + 15080, v55);

    sub_1D8D08A50(v0 + 14232, &qword_1ECAB4948, &qword_1D918AFF8);
    v36 = *(v0 + 16944);
    v37 = *(v0 + 16952);
    v38 = *(v0 + 16984);
    sub_1D8CFD9D8(v33 + v50[6], v0 + 10288);
    sub_1D8D088B4(v55, v0 + 11720, &qword_1ECAB4950, &unk_1D918B000);
    sub_1D8D088B4(v0 + 11720, v0 + 8864, &qword_1ECAB4950, &unk_1D918B000);
    ArtworkRequest.resized(to:displayScale:)(v24, 0, v56, v36, v37);
    sub_1D8D08A50(v0 + 11720, &qword_1ECAB4950, &unk_1D918B000);
    sub_1D8D08A50(v55, &qword_1ECAB4950, &unk_1D918B000);
    *(v0 + 10256) = v36;
    *(v0 + 10264) = v37;
    *(v0 + 10272) = v24;
    *(v0 + 10280) = v38;
    v39 = *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0) + v49));
    sub_1D8D088B4(v56, v57, &qword_1ECAB4958, &unk_1D91926E0);
    sub_1D8D41388(v56, v0 + 6320);
    *(v0 + 6312) = v39;
    *(v0 + 6584) = 0;

    sub_1D8D08A50(v56, &qword_1ECAB4958, &unk_1D91926E0);
    v40 = *(v33 + v50[9]);
    memcpy((v0 + 6592), v57, 0x7D1uLL);
    *(v0 + 4576) = v40;
    sub_1D8D088B4(v0 + 6592, v0 + 2568, &qword_1ECAB4960, &qword_1D918B010);
    sub_1D8D41388(v0 + 8328, v0 + 2304);

    sub_1D8D08A50(v0 + 6592, &qword_1ECAB4960, &qword_1D918B010);
    memcpy((v0 + 24), (v0 + 2304), 0x8E8uLL);
    *(v0 + 16) = v48;
    v41 = v48;
    v42 = sub_1D8E45D30();
    sub_1D8D08A50(v0 + 16, &qword_1ECAB4968, &qword_1D918B018);
    sub_1D8D088B4(v58 + 224, v0 + 17512, &qword_1ECAB4928, &qword_1D918B380);
    *(v0 + 17296) = v42;
    sub_1D8D088B4(v0 + 17512, v0 + 17304, &qword_1ECAB4928, &qword_1D918B380);
    *(v0 + 17344) = "LoadArtworkContent";
    *(v0 + 17352) = 18;
    *(v0 + 17360) = 2;
    *(v0 + 17384) = 1;
    sub_1D8D08A50(v0 + 17512, &qword_1ECAB4928, &qword_1D918B380);
    *(v0 + 17368) = 0;
    *(v0 + 17376) = 0xE000000000000000;
    *(v0 + 17385) = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
    v44 = sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020, &protocol conformance descriptor for EmitLifecycle<A>);
    MEMORY[0x1DA729240](v43, v44);
    sub_1D8D08A50(v0 + 17296, &qword_1ECAB4970, &qword_1D918B020);
    v45 = swift_task_alloc();
    *(v0 + 17736) = v45;
    *v45 = v0;
    v45[1] = sub_1D8E454A4;
    v46 = *(v0 + 17648);

    return sub_1D8E46900(v46);
  }
}

uint64_t sub_1D8DADA18@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = sub_1D9176AAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[2] = ArtworkRequest.fileName.getter();
  v11[3] = v9;
  (*(v2 + 104))(v4, *MEMORY[0x1E6968F70], v1);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v2 + 8))(v4, v1);

  sub_1D9176B4C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D8DADC60(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_1D8DADC78(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_1D8DADC8C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {

    v3 = sub_1D8E56BD4;
  }

  else
  {
    sub_1D8DADDD4(*(v2 + 376));

    v3 = sub_1D8DADE30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8DADDD4(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8DADE30()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[35];
  (*(v0[38] + 8))(v0[37]);
  sub_1D8D088B4(v1 + *(v2 + 60), v4, &qword_1ECAB4938, &qword_1D918B9A0);
  sub_1D8D08A50(v1, &qword_1ECAB4908, &qword_1D918AFB0);
  (*(v5 + 16))(v3, v4, v6);
  sub_1D8D08A50(v4, &qword_1ECAB4938, &qword_1D918B9A0);
  sub_1D8DADA18(v7);
  (*(v5 + 8))(v3, v6);

  v8 = v0[1];

  return v8();
}

void sub_1D8DADFEC(void *a1, void *a2)
{
  v3 = sub_1D9178B6C();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setValue:v3 forKey:v4];
}

uint64_t ArtworkFormat.cgIdentifier.getter(unsigned __int8 a1)
{
  v2 = sub_1D91772BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 - 1 >= 2)
  {
    if (a1)
    {
      sub_1D917726C();
    }

    else
    {
      sub_1D917723C();
    }
  }

  else
  {
    sub_1D917727C();
  }

  sub_1D917721C();
  (*(v3 + 8))(v5, v2);
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v6;
}

unint64_t sub_1D8DAE1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43A8, &qword_1D9188F10);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, &v11, &qword_1ECAB43B0, &qword_1D9188F18);
      v5 = v11;
      result = sub_1D8DAE2CC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8D65618(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8DAE2CC(uint64_t a1)
{
  sub_1D9179DBC();
  type metadata accessor for CFString(0);
  sub_1D8F0CA8C(&unk_1EDCD5BB8, type metadata accessor for CFString, &unk_1D918796C);
  sub_1D917712C();
  v2 = sub_1D9179E1C();

  return sub_1D8DAE45C(a1, v2);
}

unint64_t sub_1D8DAE45C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D8F0CA8C(&unk_1EDCD5BB8, type metadata accessor for CFString, &unk_1D918796C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D917711C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

_OWORD *sub_1D8DAE5B8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D8DAE2CC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D8F822A8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D8DAE744(v13, a3 & 1);
    v8 = sub_1D8DAE2CC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_1D8D65618(a1, v19);
  }

  else
  {
    sub_1D8DAEA7C(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1D8DAE744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43A8, &qword_1D9188F10);
  result = sub_1D917978C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1D8D65618(v21, v31);
      }

      else
      {
        sub_1D8CFAD1C(v21, v31);
        v22 = v20;
      }

      sub_1D9179DBC();
      type metadata accessor for CFString(0);
      sub_1D8D111F4(&unk_1EDCD5BB8, type metadata accessor for CFString, &unk_1D918796C);
      sub_1D917712C();
      result = sub_1D9179E1C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1D8D65618(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_1D8DAEA7C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D8D65618(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

os_log_t _MTLogCategoryPrivacy()
{
  v0 = os_log_create("com.apple.podcasts", "Privacy");

  return v0;
}

uint64_t sub_1D8DAEBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8DAEC48()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0D70);
  __swift_project_value_buffer(v0, qword_1ECAB0D70);
  return sub_1D917742C();
}

uint64_t sub_1D8DAECC8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D8F41170;
  }

  else
  {
    v2 = sub_1D8F41078;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation5ColorOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation5ColorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t ArtworkRequest.init(model:targetSize:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:priority:trace:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  v11 = a7;
  v19 = a1[1];
  v61 = *a1;
  v62 = v19;
  v63 = *(a1 + 4);
  v20 = *(a1 + 5);
  v21 = *(a1 + 6);
  v22 = *(a1 + 136);
  v57 = *(a1 + 120);
  v58 = v22;
  v59 = *(a1 + 152);
  v60 = *(a1 + 21);
  v23 = *(a1 + 72);
  v53 = *(a1 + 56);
  v54 = v23;
  v24 = *(a1 + 104);
  v55 = *(a1 + 88);
  v56 = v24;
  v51 = *a3;
  v25 = *a6;
  sub_1D8D728EC(a7, v52);
  *(a8 + 224) = 0u;
  *(a8 + 201) = 16;
  *(a8 + 240) = 0u;
  *(a8 + 256) = 0;
  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, a11);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, a9);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, a10);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v20);
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v21);
  v65.width = 0.0;
  v65.height = 0.0;
  v64.width = a9;
  v64.height = a10;
  if (CGSizeEqualToSize(v64, v65))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1EDCD5E28);
    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v11;
      v30 = v25;
      v31 = a2;
      v32 = a4;
      v33 = a5;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v34, 2u);
      v35 = v34;
      a5 = v33;
      a4 = v32;
      a2 = v31;
      v25 = v30;
      v11 = v29;
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }
  }

  if (v20 == 0.0 || v21 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v36 = sub_1D917744C();
    __swift_project_value_buffer(v36, qword_1EDCD5E28);
    v37 = sub_1D917741C();
    v38 = sub_1D9178CFC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v11;
      v40 = v25;
      v41 = a2;
      v42 = a4;
      v43 = a5;
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D8CEC000, v37, v38, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v44, 2u);
      v45 = v44;
      a5 = v43;
      a4 = v42;
      a2 = v41;
      v25 = v40;
      v11 = v39;
      MEMORY[0x1DA72CB90](v45, -1, -1);
    }
  }

  sub_1D8D7621C(v11);
  v46 = v62;
  *a8 = v61;
  *(a8 + 16) = v46;
  *(a8 + 32) = v63;
  *(a8 + 40) = v20;
  *(a8 + 48) = v21;
  v47 = v58;
  *(a8 + 120) = v57;
  *(a8 + 136) = v47;
  *(a8 + 152) = v59;
  *(a8 + 168) = v60;
  v48 = v54;
  *(a8 + 56) = v53;
  *(a8 + 72) = v48;
  v49 = v56;
  *(a8 + 88) = v55;
  *(a8 + 104) = v49;
  *(a8 + 176) = a9;
  *(a8 + 184) = a10;
  *(a8 + 192) = a11;
  *(a8 + 200) = a2 & 1;
  *(a8 + 201) = v51;
  *(a8 + 202) = a4 & 1;
  *(a8 + 203) = v25;
  *(a8 + 208) = a5;
  *(a8 + 216) = 3;
  return sub_1D8D412B0(v52, a8 + 224);
}

CGSize __swiftcall UniformBucketingStrategy.bucketedSize(for:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  while (v6)
  {
    v8 = *v7++;
    v9 = v8;
    --v6;
    if (v8 >= width)
    {
      v10 = width;
      v11 = height;
      if (v9 > 0.0)
      {
        v11 = ceil(v9 * height / width);
        v10 = v9;
      }

      goto LABEL_8;
    }
  }

  v10 = width;
  v11 = height;
  if (v4 > 0.0)
  {
    v11 = ceil(v4 * height / width);
    v10 = *v1;
  }

LABEL_8:
  if (qword_1EDCD5E20 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD5E28);
  v13 = sub_1D917741C();
  v14 = sub_1D9178CEC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315394;
    v17 = sub_1D91790DC();
    v19 = sub_1D8CFA924(v17, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_1D91790DC();
    v22 = sub_1D8CFA924(v20, v21, &v26);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Performed uniform size bucketing: %s -> %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v16, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  v23 = v10;
  v24 = v11;
  result.height = v24;
  result.width = v23;
  return result;
}

uint64_t sub_1D8DAF458(__n128 a1)
{
  if ((a1.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
  {
    return 0;
  }

  sub_1D8DAF598(&v2, a1.n128_f64[0]);
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  v2 = 0;
  v3 = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x74616F6C464743, 0xE700000000000000);
  MEMORY[0x1DA7298F0](0xD00000000000001ELL, 0x80000001D91CD6D0);
  MEMORY[0x1DA7298F0](7630409, 0xE300000000000000);
  MEMORY[0x1DA7298F0](0xD00000000000002ELL, 0x80000001D91CD6F0);
  result = sub_1D91796DC();
  __break(1u);
  return result;
}

unint64_t sub_1D8DAF598(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v5)
  {
    LOBYTE(v4) = 0;
    v3 = 1;
    goto LABEL_30;
  }

  if (v3 == 2047)
  {
    goto LABEL_42;
  }

  if (v3)
  {
    if (v3 > 0x43E)
    {
      goto LABEL_42;
    }

    v5 = v3 - 1023;
    v6 = __clz(__rbit64(v4));
    if (v4)
    {
      v7 = 52 - v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    v8 = __clz(v4);
    v5 = -1011 - v8;
    v6 = __clz(__rbit64(v4));
    v7 = (v8 ^ 0x3F) - v6;
  }

  v3 = v5 >= v7;
  v9 = v7 + v6;
  v2 = v5 - v9;
  if (v9 > 63)
  {
    if (v2 < -64 || v2 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v2 < -64 || v2 > 64)
  {
    goto LABEL_16;
  }

  if (v2 < 0)
  {
    goto LABEL_37;
  }

  if (v2 != 64)
  {
    v4 <<= v2;
    if (v5 != 63)
    {
      goto LABEL_22;
    }

LABEL_39:
    if (a2 < 0.0 && !v4)
    {
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_16:
  if (v5 == 63)
  {
    if (a2 < 0.0)
    {
      LOBYTE(v4) = 0;
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

LABEL_42:
    v5 = 0;
    v3 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_30;
  }

  v2 = 0;
  v4 = 0;
  if (v5 < 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  v2 = 1 << v5;
LABEL_25:
  while (1)
  {
    v5 = v4 | v2;
    if (a2 >= 0.0)
    {
      break;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      LOBYTE(v4) = 0;
      v5 = -v5;
      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (v2 == -64)
    {
      goto LABEL_16;
    }

    v4 >>= -v2;
    if (v5 == 63)
    {
      goto LABEL_39;
    }

LABEL_22:
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v2 = 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  LOBYTE(v4) = 0;
LABEL_30:
  *a1 = v5;
  *(a1 + 8) = v4;
  return v3;
}

uint64_t Traceable.traced(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  sub_1D8CFD9D8(a1, v9);
  return (*(a3 + 16))(v9, a2, a3);
}

uint64_t sub_1D8DAF7F8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8DAF834@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *(a2 + 24) = result;
  *a2 = v3;
  return result;
}

void *sub_1D8DAF86C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

void sub_1D8DAF8AC(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [v3 integerForKey_];

  *a1 = v5;
}

void *sub_1D8DAF904@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

void sub_1D8DAF944(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *a1 = v3;
}

uint64_t sub_1D8DAF99C(uint64_t result, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *v2 + 32;
    do
    {
      sub_1D8CFD9D8(v6, v9);
      v7 = v10;
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v8 + 8))(v5, a2, v7, v8);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Void __swiftcall SignpostTrace.Interval.end(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = sub_1D91773AC();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32[-v8];
  v36 = sub_1D917734C();
  v10 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32[-v14];
  if (object)
  {
    v34 = countAndFlagsBits;
    type metadata accessor for SignpostTrace.Interval(0);
    v16 = *(v1 + 24);
    v17 = *(v1 + 8);

    v12 = sub_1D917737C();
    sub_1D91773DC();
    v33 = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      if (v16)
      {
        if (!(v17 >> 32))
        {
          v18 = v35;
          if ((v17 & 0xFFFFF800) == 0xD800)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          if (v17 >> 16 <= 0x10)
          {

            v17 = &v37;
            goto LABEL_15;
          }

          goto LABEL_32;
        }
      }

      else
      {

        if (v17)
        {
          v18 = v35;
LABEL_15:

          sub_1D917740C();

          if ((*(v18 + 88))(v9, v4) == *MEMORY[0x1E69E93E8])
          {
            v22 = 0;
            v23 = 0;
            v24 = "[Error] Interval already ended";
          }

          else
          {
            (*(v18 + 8))(v9, v4);
            v24 = "%s";
            v23 = 2;
            v22 = 1;
          }

          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v37 = v26;
          *v25 = v23;
          *(v25 + 1) = v22;
          *(v25 + 2) = 2080;
          *(v25 + 4) = sub_1D8CFA924(v34, object, &v37);
          v27 = sub_1D917732C();
          _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v12, v33, v27, v17, v24, v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x1DA72CB90](v26, -1, -1);
          MEMORY[0x1DA72CB90](v25, -1, -1);

          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_10:

LABEL_19:
    (*(v10 + 8))(v15, v36);
    return;
  }

  type metadata accessor for SignpostTrace.Interval(0);
  v19 = *(v1 + 24);
  v20 = *(v1 + 8);
  v21 = sub_1D917737C();
  sub_1D91773DC();
  v15 = sub_1D9178F4C();
  if (sub_1D917918C())
  {
    if (v19)
    {
      if (v20 >> 32)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ((v20 & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        return;
      }

      if (v20 >> 16 > 0x10)
      {
        goto LABEL_34;
      }

      v20 = &v38;
    }

    else if (!v20)
    {
      __break(1u);
      goto LABEL_10;
    }

    sub_1D917740C();

    v28 = v35;
    if ((*(v35 + 88))(v6, v4) == *MEMORY[0x1E69E93E8])
    {
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v28 + 8))(v6, v4);
      v29 = "";
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v21, v15, v31, v20, v29, v30, 2u);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  (*(v10 + 8))(v12, v36);
}

void sub_1D8DAFF38()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 9);
  sub_1D8DB01BC(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
}

uint64_t ArtworkModel.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1DA72B3C0](*&v6);
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  MEMORY[0x1DA72B3C0](*&v7);
  ArtworkCrop.cropCodeString.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  if (v3 == 255)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x1DA72B390](2);
      return MEMORY[0x1DA72B3C0](v2);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1DA72B390](v9);

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

void sub_1D8DB00D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 16) & 1) == 0)
  {
    v9 = *a1;
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    (*(v7 + 16))("ACTIVITY_END", 12, 2, a3, a4, v6, v7);
    os_activity_scope_leave(&v9);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }
}

uint64_t sub_1D8DB01E0(uint64_t a1)
{
  v2 = type metadata accessor for LoggerTrace(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8DB0240(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-v8];
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v2 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(v2 + v11, v16);
  v12 = v17;
  sub_1D8D740C4(v16);
  os_unfair_lock_unlock(v10 + 4);
  if (v12 < 2)
  {
    return sub_1D91777EC();
  }

  v14 = *v2;
  if (*(v2 + *(*v2 + 144)))
  {
    goto LABEL_6;
  }

  (*(*(v4 + 112) + 24))(v2 + *(*v2 + 184), *(v4 + 88));
  v15 = (*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness);
  (*(v7 + 8))(v9, v6);
  if (v15 == 1)
  {
    v14 = *v2;
LABEL_6:
    (*(*(v4 + 112) + 32))(a1, v2 + *(v14 + 184), *(v4 + 88));
  }

  return sub_1D91777AC();
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation18SubscriptionStatusO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t InMemoryAssetCache.store(asset:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v5 = *v3;
  v6 = *v3;
  v7 = sub_1D9176E3C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v5[11];
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = v5[10];
  *&v17 = v15;
  *(&v17 + 1) = v10;
  v31 = v5[14];
  v16 = v31;
  v24 = *(v6 + 6);
  v30 = v24;
  v29 = v17;
  type metadata accessor for InMemoryAssetCache.Record(0, &v29);
  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(*(&v24 + 1) + 8))(v10);
  sub_1D9176E0C();
  swift_allocObject();
  v19 = sub_1D8DB07EC(v14, v18, v9);
  v20 = v3[2];
  v26 = v23;
  v27 = v3;
  v28 = v19;
  *&v29 = v15;
  *(&v29 + 1) = v10;
  v30 = v24;
  v31 = v16;
  type metadata accessor for InMemoryAssetCache.SizedStore(0, &v29);
  sub_1D8D056BC(sub_1D8DB08E0, v25, v20);
}

uint64_t sub_1D8DB07EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(*v3 + 88) - 8) + 32))(v3 + *(*v3 + 120), a1);
  *(v3 + *(*v3 + 128)) = a2;
  v6 = *(*v3 + 136);
  v7 = sub_1D9176E3C();
  (*(*(v7 - 8) + 32))(v3 + v6, a3, v7);
  return v3;
}

uint64_t sub_1D8DB0900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v34 = a4;
  v35 = a1;
  v5 = *a3;
  v6 = *(*a3 + 96);
  v7 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v29 - v11;
  v30 = *(v6 + 16);
  v31 = a2;
  v30(v7, v6, v10);
  v13 = *(v5 + 88);
  *&v14 = v7;
  v32 = *(v5 + 104);
  v33 = v13;
  *(&v14 + 1) = v13;
  *&v15 = v6;
  *(&v15 + 1) = v32;
  v16 = v5;
  v17 = v35;
  v18 = *(v16 + 112);
  v36[1] = v15;
  v36[0] = v14;
  v37 = v18;
  type metadata accessor for InMemoryAssetCache.Record(255, v36);
  v29[1] = sub_1D91780DC();
  sub_1D917807C();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  if (v38)
  {
    v19 = *(v38 + *(*v38 + 128));

    v21 = v17[1];
    v22 = v21 >= v19;
    v23 = v21 - v19;
    if (!v22)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    v17[1] = v23;
  }

  v24 = v34;
  v25 = *(*v34 + 128);
  result = sub_1D8DB0D00(*(v34 + v25), v17, v7, v33, v6, v32, v18);
  if (result)
  {
    v26 = *(v24 + v25);
    v27 = v17[1];
    v22 = __CFADD__(v27, v26);
    v28 = v27 + v26;
    if (v22)
    {
      goto LABEL_9;
    }

    v17[1] = v28;
    (v30)(v7, v6);
    *&v36[0] = v24;

    return sub_1D917810C();
  }

  return result;
}

uint64_t ArtworkCrop.cropCodeString.getter()
{
  result = 25186;
  switch(*v0)
  {
    case 1:
      result = 29299;
      break;
    case 2:
      result = 29555;
      break;
    case 3:
      result = 28006;
      break;
    case 4:
      result = 28262;
      break;
    case 5:
      result = 28518;
      break;
    case 6:
      result = 24934;
      break;
    case 7:
      result = 30309;
      break;
    case 8:
      result = 30053;
      break;
    case 9:
      result = 29797;
      break;
    case 0xA:
      result = 0x4D7370552E545053;
      break;
    case 0xB:
      result = 0x577370552E545053;
      break;
    case 0xC:
      result = 0x547370552E545053;
      break;
    case 0xD:
      result = 0x3042454C532E4553;
      break;
    case 0xE:
      result = 0x544C424C532E4253;
      break;
    case 0xF:
      result = 0x5452424C532E4253;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8DB0D00(unint64_t a1, unint64_t *a2, uint64_t a3, void (**a4)(char *, void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59[0] = a3;
  v59[1] = a4;
  v49 = a4;
  v50 = a6;
  v59[2] = a5;
  v59[3] = a6;
  v59[4] = a7;
  type metadata accessor for InMemoryAssetCache.Record(255, v59);
  v55 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  v56 = a2;
  v25 = *a2;
  v26 = *a2 == a1;
  if (*a2 < a1)
  {
    return v25 >= a1;
  }

  v53 = *a2;
  if (v26)
  {
    sub_1D8E63A60(v56, a3, v49, a5, v50, a7);
LABEL_20:
    v25 = v53;
    return v25 >= a1;
  }

  v45 = v22;
  v27 = v56[2];
  v51 = v56 + 2;
  v52 = a1;
  v59[0] = v27;
  v28 = sub_1D91780DC();
  WitnessTable = swift_getWitnessTable();
  v29 = MEMORY[0x1DA729A30](&v58, v28, WitnessTable);
  v48 = &v44;
  v47 = v58;
  v57 = v58;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v49;
  v30 = v50;
  *(&v44 - 6) = a3;
  *(&v44 - 5) = v31;
  *(&v44 - 4) = a5;
  *(&v44 - 3) = v30;
  *(&v44 - 2) = a7;
  v50 = v28;
  sub_1D917948C();
  swift_getWitnessTable();
  v32 = sub_1D91784AC();

  if (!sub_1D91786AC())
  {
LABEL_19:

    a1 = v52;
    goto LABEL_20;
  }

  v33 = 0;
  v48 = (v55 - 8);
  v49 = (v54 + 16);
  v47 = (v54 + 32);
  while (1)
  {
    v34 = sub_1D917868C();
    sub_1D917862C();
    if (v34)
    {
      (*(v54 + 16))(v24, v32 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v33, TupleTypeMetadata2);
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = sub_1D91794BC();
      if (v45 != 8)
      {
        goto LABEL_24;
      }

      v59[0] = result;
      (*v49)(v24, v59, TupleTypeMetadata2);
      swift_unknownObjectRelease();
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:
        (*(v54 + 8))(v20, TupleTypeMetadata2);
        goto LABEL_19;
      }
    }

    v36 = *(TupleTypeMetadata2 + 48);
    v37 = *&v24[v36];
    v38 = *(v55 - 8);
    result = (*(v38 + 32))(v20, v24);
    *&v20[v36] = v37;
    v40 = v56[1];
    if (__CFADD__(v40, v52))
    {
      break;
    }

    if (v53 >= v40 + v52)
    {
      goto LABEL_18;
    }

    sub_1D917807C();

    (*v47)(v17, v20, TupleTypeMetadata2);
    v41 = *&v17[*(TupleTypeMetadata2 + 48)];
    v42 = *(v41 + *(*v41 + 128));

    if (v40 < v42)
    {
      goto LABEL_23;
    }

    v43 = v55;
    v56[1] = v40 - v42;
    (*(v38 + 8))(v17, v43);
    ++v33;
    if (v35 == sub_1D91786AC())
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D8DB1210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a2;
  v43 = sub_1D9176E3C();
  v40 = *(v43 - 8);
  v13 = v40;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v39 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47[0] = a3;
  v47[1] = a4;
  v47[2] = a5;
  v47[3] = a6;
  v47[4] = a7;
  type metadata accessor for InMemoryAssetCache.Record(255, v47);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v39 - v22;
  v41 = &v39 - v22;
  v24 = *(v18 + 16);
  v24(&v39 - v22, a1, TupleTypeMetadata2, v21);
  v25 = *&v23[*(TupleTypeMetadata2 + 48)];
  v26 = *(*v25 + 136);
  swift_beginAccess();
  v27 = *(v13 + 16);
  v29 = v42;
  v28 = v43;
  v27(v42, v25 + v26, v43);

  v30 = v39;
  (v24)(v39, v46, TupleTypeMetadata2);
  v31 = *&v30[*(TupleTypeMetadata2 + 48)];
  v32 = v30;
  v33 = *(*v31 + 136);
  swift_beginAccess();
  v34 = v45;
  v27(v45, v31 + v33, v28);

  LOBYTE(v31) = sub_1D9176DAC();
  v35 = *(v40 + 8);
  v35(v34, v28);
  v35(v29, v28);
  v36 = AssociatedTypeWitness;
  v37 = *(*(AssociatedTypeWitness - 8) + 8);
  v37(v32, AssociatedTypeWitness);
  v37(v41, v36);
  return v31 & 1;
}

uint64_t sub_1D8DB1604(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = *v1;
  v23 = sub_1D917752C();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + v3[21]);
  v26 = v3[10];
  v27 = v3[11];
  v28 = v3[12];
  v29 = v3[13];
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata(0, &v31);
  sub_1D8D056BC(sub_1D8F2B068, v25, v7);
  v8 = (v2 + *(*v2 + 128));
  v9 = v8[3];
  v10 = v8[4];
  v22 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = v2 + *(*v2 + 136);
  v12 = *v11;
  v20 = *(v11 + 1);
  v21 = v12;
  HIDWORD(v19) = v11[16];
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1D917946C();
  v13 = (v2 + *(*v2 + 144));
  v15 = *v13;
  v14 = v13[1];

  v31 = v15;
  v32 = v14;
  MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91CD440);
  sub_1D8DB1938(v6);
  v16 = sub_1D917750C();
  (*(v4 + 8))(v6, v23);
  v30 = v16;
  v17 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v17);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  (*(v10 + 16))(v21, v20, HIDWORD(v19), v31, v32, v9, v10);

  return sub_1D91777AC();
}

uint64_t sub_1D8DB1938@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCDE880;
  swift_beginAccess();
  v4 = sub_1D917752C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D8DB19C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*v5 + 16);
  if (v6)
  {
    v11 = result;
    v12 = *v5 + 32;
    do
    {
      sub_1D8CFD9D8(v12, v15);
      v13 = v16;
      v14 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v14 + 16))(v11, a2, a3, a4, a5, v13, v14);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v12 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t SignpostTrace.emit(event:context:)(const char *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v28 - v15);
  v17 = 0;
  if (a5)
  {
    v18 = type metadata accessor for SignpostTrace(0);
    (*(v11 + 16))(v16, v5 + *(v18 + 20), v10);

    v13 = sub_1D917737C();
    v19 = sub_1D9178F6C();
    result = sub_1D917918C();
    if ((result & 1) == 0)
    {
LABEL_10:

      return (*(v11 + 8))(v16, v10);
    }

    if ((a3 & 1) == 0)
    {
      v5 = a4;

      if (!a1)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_15:
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1D8CFA924(v5, a5, &v28);
      v25 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v13, v19, v25, a1, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);

      return (*(v11 + 8))(v16, v10);
    }

    if (a1 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (a1 >> 16 <= 0x10)
      {
        v5 = a4;

        a1 = &v28;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_6:
  v21 = type metadata accessor for SignpostTrace(v17);
  (*(v11 + 16))(v13, v5 + *(v21 + 20), v10);
  v16 = sub_1D917737C();
  v22 = sub_1D9178F6C();
  result = sub_1D917918C();
  if (result)
  {
    if ((a3 & 1) == 0)
    {
      if (!a1)
      {
        __break(1u);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v29;
LABEL_21:
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v16, v22, v27, a1, "", v26, 2u);
        MEMORY[0x1DA72CB90](v26, -1, -1);
        goto LABEL_22;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1D8DB1DE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(v1 + *(*v1 + 168));
  v6 = *(v3 + 104);
  v9 = *(v3 + 80);
  v10 = *(v4 + 88);
  v11 = v6;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata(0, &v9);
  OSAllocatedUnfairLock.current.getter(v5, &v9);
  v7 = *(v2 + *(*v2 + 176));
  os_unfair_lock_lock(v7 + 24);
  sub_1D8DB26D0(&v7[4]);
  os_unfair_lock_unlock(v7 + 24);

  return sub_1D917778C();
}

double sub_1D8DB1F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(&v53 + 1) = a5;
  v54 = a6;
  v52 = *a3;
  *&v53 = a4;
  v9 = sub_1D917752C();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v52[12];
  v13 = v52[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = v12;
  swift_getAssociatedConformanceWitness();
  v15 = sub_1D91777CC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v42[-v18];
  (*(v16 + 16))(&v42[-v18], a2, v15, v17);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    sub_1D8D088B4(a1 + 40, &v57, &unk_1ECAB6E00, &qword_1D91952E0);
    if (v59)
    {
      sub_1D8D6BCE0(&v57, &v60);
      v20 = v63;
      v21 = v64;
      __swift_project_boxed_opaque_existential_1(&v60, v63);
      (*(v21 + 8))(0x53534543435553, 0xE700000000000000, v20, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(&v60);
    }

    else
    {
      sub_1D8D08A50(&v57, &unk_1ECAB6E00, &qword_1D91952E0);
      v24 = (a3 + *(*a3 + 128));
      v25 = v24[3];
      v26 = v24[4];
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v27 = a3 + *(*a3 + 136);
      v28 = *v27;
      v47 = *(v27 + 8);
      v48 = v28;
      LODWORD(v46) = *(v27 + 16);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_1D917946C();
      v55 = v60;
      v56 = v61;
      MEMORY[0x1DA7298F0](*(a3 + *(*a3 + 144)), *(a3 + *(*a3 + 144) + 8));
      MEMORY[0x1DA7298F0](0x2053534543435553, 0xE900000000000028);
      sub_1D8DB1938(v11);
      v29 = sub_1D917750C();
      (*(v49 + 8))(v11, v50);
      v60 = v29;
      v30 = sub_1D9179A4C();
      MEMORY[0x1DA7298F0](v30);

      MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
      v57 = v53;
      v58 = v54;
      v31 = v52[11];
      v32 = v52[13];
      v60 = v13;
      v61 = v31;
      v62 = v51;
      v63 = v32;
      type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata(0, &v60);
      swift_getWitnessTable();
      sub_1D9179A9C();
      (*(v26 + 16))(v48, v47, v46, v55, v56, v25, v26);
    }
  }

  else
  {
    sub_1D8D088B4(a1 + 40, &v57, &unk_1ECAB6E00, &qword_1D91952E0);
    if (v59)
    {
      sub_1D8D6BCE0(&v57, &v60);
      v22 = v63;
      v23 = v64;
      __swift_project_boxed_opaque_existential_1(&v60, v63);
      (*(v23 + 8))(0x4552554C494146, 0xE700000000000000, v22, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(&v60);
    }

    else
    {
      sub_1D8D08A50(&v57, &unk_1ECAB6E00, &qword_1D91952E0);
      v33 = (a3 + *(*a3 + 128));
      v34 = v33[4];
      v48 = v33[3];
      v46 = v34;
      v47 = __swift_project_boxed_opaque_existential_1(v33, v48);
      v35 = (a3 + *(*a3 + 136));
      v36 = v35[1];
      v45 = *v35;
      v44 = v36;
      v43 = *(v35 + 16);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_1D917946C();
      v55 = v60;
      v56 = v61;
      MEMORY[0x1DA7298F0](*(a3 + *(*a3 + 144)), *(a3 + *(*a3 + 144) + 8));
      MEMORY[0x1DA7298F0](0x204552554C494146, 0xE900000000000028);
      sub_1D8DB1938(v11);
      v37 = sub_1D917750C();
      (*(v49 + 8))(v11, v50);
      v60 = v37;
      v38 = sub_1D9179A4C();
      MEMORY[0x1DA7298F0](v38);

      MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
      v57 = v53;
      v58 = v54;
      v39 = v52[11];
      v40 = v52[13];
      v60 = v13;
      v61 = v39;
      v62 = v51;
      v63 = v40;
      type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata(0, &v60);
      swift_getWitnessTable();
      sub_1D9179A9C();
      (*(v46 + 16))(v45, v44, v43, v55, v56, v48);
    }

    (*(v16 + 8))(v19, v15);
  }

  sub_1D8D08A50(a1 + 40, &unk_1ECAB6E00, &qword_1D91952E0);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  sub_1D8D08A50(a1, qword_1ECAB6CD0, &unk_1D9195040);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1D8DB26F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v0[5];
  v6 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_1D8DB2794(v5, v6, v1, v2, v3);
}

uint64_t sub_1D8DB2794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16[-v13];
  (*(v11 + 16))(&v16[-v13], a2, AssociatedTypeWitness, v12);
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = v14;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917781C();
  sub_1D91780DC();
  sub_1D8D056BC(sub_1D8DB2A80, v16, a1);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1D8DB296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917781C();
  sub_1D91780DC();
  sub_1D917807C();
}

BOOL sub_1D8DB2AA4(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  if (v2 != v3 || result == a2 || v2 == 0)
  {
    return v2 == v3;
  }

  v6 = v2 - 1;
  if (v2 < v2 - 1)
  {
    v6 = *(result + 16);
  }

  if (v6 > 1)
  {
    v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
    v8 = v7;
    do
    {
      v8 -= 2;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
  }

  v9 = v2 - v7;
  while (v9)
  {
    if (!--v9)
    {
      return v2 == v3;
    }
  }

  __break(1u);
  return result;
}

void sub_1D8DB2B0C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D917820C();
  }

  v2 = objc_allocWithZone(MEMORY[0x1E698CAC8]);
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v2 initWithBundleIdentifier_];

  qword_1EDCD2AB8 = v4;
}

void RepublishingValueSubject.send(completion:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = sub_1D91777CC();
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 0;
    v12 = *(v6 - 8);
    v19[0] = v3;
    v13 = v12;
    (*(v12 + 16))(v10, a1, v6);
    (*(v13 + 56))(v10, 0, 1, v6);
    v14 = *(*v1 + 120);
    swift_beginAccess();
    (*(v8 + 40))(v1 + v14, v10, v7);
    swift_endAccess();
    v15 = v1 + *(*v1 + 128);
    swift_beginAccess();
    v16 = *v15;
    v17 = *(v15 + 8);
    swift_beginAccess();
    sub_1D8D546A0(v16, v17);
    type metadata accessor for ConduitList(0, *(v19[0] + 80), v4, v5);
    sub_1D8DB2F24();
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    MEMORY[0x1EEE9AC00](v18);
    v19[-2] = a1;
    sub_1D8D546BC(sub_1D8DB2F70, &v19[-4], v16, v17);
    sub_1D8D54860(v16, v17);
  }

  else
  {

    os_unfair_lock_unlock(v11 + 4);
  }
}

uint64_t sub_1D8DB2F24()
{
  result = sub_1D8D54860(*v0, *(v0 + 8));
  *v0 = 0;
  *(v0 + 8) = 2;
  return result;
}

void sub_1D8DB2FC4(uint64_t a1)
{
  v29 = a1;
  v2 = *v1;
  v3 = *(*v1 + 176);
  v28 = *(*v1 + 184);
  swift_getAssociatedConformanceWitness();
  v25 = sub_1D91777CC();
  v4 = sub_1D91791BC();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v24 - v5;
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = *&v1[*(v2 + 216)];
  os_unfair_lock_lock(v17 + 4);
  v18 = *(*v1 + 200);
  swift_beginAccess();
  (*(v7 + 16))(v12, &v1[v18], v6);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v7 + 8))(v12, v6);
    os_unfair_lock_unlock(v17 + 4);
  }

  else
  {
    (*(v13 + 32))(v16, v12, v3);
    if (v1[*(*v1 + 240)] == 1)
    {
      (*(v13 + 56))(v9, 1, 1, v3);
      swift_beginAccess();
      (*(v7 + 40))(&v1[v18], v9, v6);
      swift_endAccess();
      v19 = *(v1 + 2);
      *(v1 + 2) = 0;
      os_unfair_lock_unlock(v17 + 4);
      if (v19)
      {

        sub_1D8DB34BC(v1);
      }

      os_unfair_recursive_lock_lock_with_options();
      sub_1D917778C();
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v21 = v24;
      v20 = v25;
      v22 = *(v25 - 8);
      (*(v22 + 16))(v24, v29, v25);
      (*(v22 + 56))(v21, 0, 1, v20);
      v23 = *(*v1 + 248);
      swift_beginAccess();
      (*(v26 + 40))(&v1[v23], v21, v27);
      swift_endAccess();
      os_unfair_lock_unlock(v17 + 4);
    }

    (*(v13 + 8))(v16, v3);
  }
}

void sub_1D8DB34BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 4);
  if (*(v1 + 24) == 1)
  {
    swift_beginAccess();
    v5 = type metadata accessor for ConduitList(0, v3[10], v3[11], v3[12]);
    sub_1D8F34DFC(a1, v5);
    swift_endAccess();
    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {

    os_unfair_lock_unlock(v4 + 4);
  }
}

uint64_t sub_1D8DB35B8()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E4C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBD60(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1ECAB1908 = result;
  return result;
}

void sub_1D8DB3838(uint64_t a1)
{
  v2 = v1[2];
  os_unfair_lock_lock(v2 + 4);
  v3 = *(*v1 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(v1 + v3, v4);
  if (v5 >= 2)
  {
    sub_1D8D740C4(v4);
    memset(v4, 0, sizeof(v4));
    v5 = xmmword_1D918BEE0;
    swift_beginAccess();
    sub_1D8D74118(v4, v1 + v3);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    sub_1D917778C();
  }

  else
  {
    sub_1D8D740C4(v4);
    os_unfair_lock_unlock(v2 + 4);
  }
}

uint64_t sub_1D8DB399C()
{
  sub_1D8DB3A44();

  return swift_deallocClassInstance();
}

id sub_1D8DB39F0()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_1D8DB3A44()
{
  MEMORY[0x1DA72CB90](*(v0 + *(*v0 + 224)), -1, -1);
  v1 = sub_1D8D698B4();

  v2 = *(*v1 + 200);
  v3 = sub_1D91791BC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  v4 = *(*v1 + 248);
  swift_getAssociatedConformanceWitness();
  sub_1D91777CC();
  v5 = sub_1D91791BC();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t sub_1D8DB3BD0()
{
  sub_1D8DB3C2C();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D8DB3C2C()
{
  v1 = *v0;

  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 136));
  v2 = *(*v0 + 160);
  v3 = sub_1D91791BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1D8D740C4(v0 + *(*v0 + 168));
  v4 = *(*v0 + 184);
  v5 = *(v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v4, AssociatedTypeWitness);
  (*(*(v5 - 8) + 8))(v0 + *(*v0 + 192), v5);
  return v0;
}

uint64_t *EmitLifecycle.LifecycleEmitting.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 176));

  os_unfair_lock_lock(v3 + 24);
  sub_1D8D088B4(&v3[14], &v9, &unk_1ECAB6E00, &qword_1D91952E0);
  if (v10)
  {
    sub_1D8D6BCE0(&v9, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 8))(0x434F4C4C414544, 0xE700000000000000, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    sub_1D8D08A50(&v9, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  os_unfair_lock_unlock(v3 + 24);

  v6 = qword_1EDCDE880;
  v7 = sub_1D917752C();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  (*(*(*(v2 + 88) - 8) + 8))(v1 + *(*v1 + 120));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + *(*v1 + 128)));

  return v1;
}

uint64_t NSManagedObjectContext.fetchListAndPublish<A, B>(entityName:predicate:sortDescriptors:limit:receiveOn:transform:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D9177A2C();
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = v10;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a7;
  v17[11] = a8;
  v17[12] = a6;
  v18 = v10;

  v19 = a3;

  v20 = a6;
  return sub_1D9177A3C();
}

uint64_t sub_1D8DB411C()
{

  return swift_deallocObject();
}

uint64_t EmitLifecycle.LifecycleEmitting.__deallocating_deinit()
{
  EmitLifecycle.LifecycleEmitting.deinit();

  return swift_deallocClassInstance();
}

uint64_t RepublishingValueSubject.__deallocating_deinit()
{
  RepublishingValueSubject.deinit();

  return swift_deallocClassInstance();
}

uint64_t *RepublishingValueSubject.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 144);
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    do
    {
      sub_1D8CFD9D8(v6, v10);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_1D91777BC();
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v7 = *(*v0 + 120);
  sub_1D91777CC();
  v8 = sub_1D91791BC();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  sub_1D8D54860(*(v1 + *(*v1 + 128)), *(v1 + *(*v1 + 128) + 8));
  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 136));

  return v1;
}

void sub_1D8DB443C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v18 = swift_allocObject();
  v18[2] = a12;
  v18[3] = a13;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v18[8] = a8;
  v18[9] = a3;
  v18[10] = a9;
  v18[11] = a10;
  v18[12] = a11;
  v18[13] = a1;
  v18[14] = a2;
  aBlock[4] = sub_1D8FC31CC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_18_1;
  v19 = _Block_copy(aBlock);

  v20 = a6;

  v21 = a3;

  v22 = a11;

  [v21 performBlock_];
  _Block_release(v19);
}

uint64_t sub_1D8DB45A0()
{

  return swift_deallocObject();
}

uint64_t Publishers.PFCombineLatest5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a10;
  v24[4] = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v21 = type metadata accessor for Publishers.PFCombineLatest5(0, v24);
  (*(*(a7 - 8) + 32))(a9 + v21[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v21[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v21[28], a5, a11);
}

uint64_t EyebrowBuilder.__allocating_init(episode:style:explicitSymbol:hostingViewHasLimitedSpace:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v11 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  sub_1D8CFD9D8(a1, v20);
  swift_storeEnumTagMultiPayload();
  HIBYTE(v19) = a2;
  v14 = v21;
  v15 = v22;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v17 = sub_1D8DB48F4(v16, v13, &v19 + 7, a3, a4, 1, v6, 0, v5, v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v17;
}

uint64_t sub_1D8DB48F4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v23 = a8;
  HIDWORD(v21) = a6;
  v16 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a9);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a1, a10);
  return sub_1D8D41A30(v18, a2, a3, a4, a5, SBYTE4(v21), v22, v23, v19, a10, a11);
}

uint64_t Publishers.PFCombineLatest5.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  v80 = a1;
  v88 = *(a2 + 32);
  AssociatedTypeWitness = v88;
  v93 = *(a2 + 72);
  v85 = v93;
  v86 = *(a2 + 16);
  v57[1] = *(&v86 + 1);
  v64 = v86;
  v90 = v86;
  v87 = *(a2 + 56);
  v69 = v87;
  v92 = v87;
  v66 = *(&v87 + 1);
  v89 = sub_1D917753C();
  v5 = *(a2 + 40);
  v82 = *(a2 + 48);
  v83 = MEMORY[0x1E695BC70];
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 80);
  v93 = *(a2 + 88);
  v71 = v6;
  v68 = v93;
  v84 = sub_1D917753C();
  *&v90 = swift_getAssociatedTypeWitness();
  v7 = *(&v86 + 1);
  *(&v90 + 1) = swift_getAssociatedTypeWitness();
  v8 = v88;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = v5;
  *&v92 = swift_getAssociatedTypeWitness();
  *(&v92 + 1) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = v84;
  v73 = swift_getWitnessTable();
  v75 = sub_1D917768C();
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v70 = v57 - v10;
  v65 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v63 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v60 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v83 = v57 - v16;
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v64;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v57 - v34;
  v37 = v72;
  (*(v36 + 16))(v28, v72, v25, v33);
  (*(v21 + 16))(v24, v37 + *(a2 + 100), v20);
  (*(v17 + 16))(v59, v37 + *(a2 + 104), v88);
  v58 = v35;
  sub_1D917754C();
  (*(v81 + 16))(v31, v35, v89);
  v38 = v62;
  (*(v61 + 16))(v60, v37 + *(a2 + 108), v62);
  v39 = v37 + *(a2 + 112);
  v40 = v82;
  (*(v65 + 16))(v63, v39, v82);
  v41 = v68;
  v42 = v38;
  v43 = v71;
  sub_1D917754C();
  v44 = swift_allocObject();
  v45 = v88;
  *&v46 = v88;
  *(&v46 + 1) = v42;
  *(v44 + 32) = v46;
  *(v44 + 16) = v86;
  v48 = v78;
  v47 = v79;
  *(v44 + 48) = v40;
  *(v44 + 56) = v48;
  v49 = v85;
  *&v46 = v85;
  *(&v46 + 1) = v43;
  *(v44 + 80) = v46;
  *(v44 + 64) = v87;
  *(v44 + 96) = v41;
  *(v44 + 104) = v47;
  v50 = swift_allocObject();
  v51 = v87;
  *(v50 + 16) = v86;
  *(v50 + 32) = v45;
  *(v50 + 40) = v42;
  *(v50 + 48) = v40;
  *(v50 + 56) = v48;
  *(v50 + 64) = v51;
  *(v50 + 80) = v49;
  *(v50 + 88) = v43;
  *(v50 + 96) = v41;
  *(v50 + 104) = v47;
  *(v50 + 112) = sub_1D8F2C7C8;
  *(v50 + 120) = v44;
  v52 = v70;
  v54 = v83;
  v53 = v84;
  sub_1D9177B9C();

  v55 = v75;
  sub_1D917767C();
  (*(v76 + 8))(v52, v55);
  (*(v67 + 8))(v54, v53);
  return (*(v81 + 8))(v58, v89);
}

uint64_t sub_1D8DB5348()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8DB5394(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8DB53D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

_DWORD *sub_1D8DB5418(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    *(result + v8) = a2 + 1;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t EyebrowBuilder.subscriptionBadge.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D8DB5634(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for EpisodeStateMachine(0, *(*v3 + 80), *(*v3 + 88), *(*v3 + 96));
  sub_1D9178E2C();
  return v5;
}

void sub_1D8DB5710(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v71 = a5;
  v9 = *a1;
  v10 = *(*a1 + 80);
  v74 = sub_1D91791BC();
  v64 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v12 = &v55 - v11;
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v55 - v16;
  v69 = sub_1D917734C();
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = a2;
  v76 = a2;
  v81 = a2;
  v82 = a3;
  v66 = a4;
  LOBYTE(a2) = a4 & 1;
  v83 = a4 & 1;

  v19 = a3;
  sub_1D8DB5EC8(v18, a3, a2);
  v20 = *(v9 + 88);
  v21 = *(v9 + 96);
  v75 = v10;
  v22 = type metadata accessor for EpisodeStateMachine(0, v10, v20, v21);
  v23 = sub_1D8D1EEC4();
  sub_1D91780FC();
  v24 = v19;
  v25 = v76;

  sub_1D8DB5FC8(v25, v24, a2);
  v26 = v77;
  if (!v77)
  {
    v61 = v21;
    v62 = v20;
    v59 = v23;
    v60 = v22;
    v73 = v24;
    v63 = a1;
    sub_1D9178F5C();
    if (qword_1EDCD0728 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      swift_beginAccess();
      v27 = *(v63 + qword_1EDCD3490);
      v28 = *(v63 + qword_1EDCD3490 + 8);
      v29 = *(v63 + qword_1EDCD3490 + 16);
      v30 = qword_1EDCD0730;
      v31 = v68;
      sub_1D8DB5FD8(v68);
      v58 = v27;
      v57 = v28;
      v56 = v29;
      sub_1D91772FC();

      v32 = *(v72 + 8);
      v72 += 8;
      v55 = v32;
      v32(v31, v69);
      v33 = v75;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v35 = v70;
      (*(AssociatedConformanceWitness + 16))(v33, AssociatedConformanceWitness);
      type metadata accessor for AnyEpisodeStateDataSource(0, v33, AssociatedConformanceWitness, v36);

      if (!sub_1D91786AC())
      {
        break;
      }

      v37 = 0;
      v38 = v66 & 1;
      v39 = (v67 + 48);
      v40 = (v64 + 8);
      while (1)
      {
        v41 = sub_1D917868C();
        sub_1D917862C();
        if (v41)
        {
        }

        else
        {
          sub_1D91794BC();
        }

        v42 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        sub_1D8DB6238(v76, v73, v38);

        if ((*v39)(v12, 1, v75) != 1)
        {
          v43 = v67;
          v35 = v70;
          v33 = v75;
          (*(v67 + 8))(v70, v75);

          (*(v43 + 32))(v35, v12, v33);
          v44 = v63;
          v45 = v66;
          goto LABEL_15;
        }

        (*v40)(v12, v74);
        ++v37;
        if (v42 == sub_1D91786AC())
        {
          v33 = v75;
          v35 = v70;
          v45 = v66;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      swift_once();
    }

    v45 = v66;
    v38 = v66 & 1;
LABEL_14:

    v44 = v63;
    v43 = v67;
LABEL_15:
    v46 = v65;
    (*(v43 + 16))(v65, v35, v33);
    v47 = v44[4];
    v48 = v43;
    v49 = v45 & 1;
    v50 = v76;
    v51 = v46;
    v52 = v73;
    sub_1D8DB5EC8(v76, v73, v45 & 1);

    v26 = EpisodeStateMachine.__allocating_init(identifier:initialState:rules:)(v50, v52, v38, v51, v47);
    v84 = v26;
    v78 = v50;
    v79 = v52;
    v80 = v49;
    swift_beginAccess();
    sub_1D8DB5EC8(v50, v52, v49);
    sub_1D91780DC();

    sub_1D917810C();
    swift_endAccess();
    sub_1D9178F4C();
    v53 = qword_1EDCD0730;
    v54 = v68;
    sub_1D8DB5FD8(v68);
    sub_1D91772FC();

    v55(v54, v69);
    (*(v48 + 8))(v70, v75);
  }

  *v71 = v26;
}

uint64_t sub_1D8DB5EC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D8DB5ED8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1D9179DBC();
  if (v3 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v2);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8DB5F68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v3 == v4 && v6 == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

double sub_1D8DB5FC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D8DB5FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = qword_1EDCD3488;
  swift_beginAccess();
  sub_1D8D25D6C(v1 + v9, v8);
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1D8D25DDC(v8);
  sub_1D90FE554(v1);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1D8D25E44(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1D8DB61B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6E00, &qword_1D91952E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8DB6264(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, a6);
  (*(a7 + 56))(a1, a2, a3 & 1, a6, a7);
  return (*(v12 + 8))(v14, a6);
}

void sub_1D8DB63D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v8 = [objc_opt_self() keyWithName:v7 crossDeviceSync:a4 & 1];

  *a5 = v8;
}

void sub_1D8DB6448(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D8DB649C();
  }
}

uint64_t sub_1D8DB649C()
{
  v1 = sub_1D9177E0C();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1D916002C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_29_1;
  v8 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void EpisodeStateRepository.enqueueEpisodeStateFetch(for:)(unint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  v13 = *(v3 + 48);
  if (v13 == 255)
  {
    goto LABEL_15;
  }

  if ((v13 & 1) == 0)
  {
    if ((a3 & 1) == 0 && v11 == a1)
    {
      goto LABEL_10;
    }

LABEL_15:
    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
    v28 = a3 & 1;
    *(v3 + 48) = a3 & 1;
    sub_1D8DB6BF0(v11, v12, v13);
    sub_1D8DB5EC8(a1, a2, a3 & 1);
    v29 = sub_1D8DB6C3C(a1, a2, a3 & 1);
    v30 = *(v3 + 16);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = a1;
    *(v32 + 32) = a2;
    *(v32 + 40) = v28;
    *(v32 + 48) = v29;
    aBlock[4] = sub_1D910A6E8;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_12_1;
    v33 = _Block_copy(aBlock);
    sub_1D8DB5EC8(a1, a2, v28);
    v34 = v29;

    [v30 performBlock_];
    _Block_release(v33);

    return;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v11 != a1 || v12 != a2)
  {
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    v17 = sub_1D9179ACC();
    LOBYTE(v13) = v16;
    v12 = v15;
    v18 = v17;
    v11 = v14;
    if ((v18 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_10:
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v8 + 16))(v10, v19, v7);
  v20 = a3 & 1;
  sub_1D8DB5EC8(a1, a2, a3 & 1);
  v21 = sub_1D917741C();
  v22 = sub_1D9178CDC();
  sub_1D8DB5FC8(a1, a2, v20);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136380675;
    v35[0] = a1;
    v35[1] = a2;
    v36 = v20;
    sub_1D8DB5EC8(a1, a2, v20);
    v25 = sub_1D917826C();
    v27 = sub_1D8CFA924(v25, v26, &v37);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1D8CEC000, v21, v22, "Skip refetch for id: %{private}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1DA72CB90](v24, -1, -1);
    MEMORY[0x1DA72CB90](v23, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D8DB6B6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DB6BA4()
{

  sub_1D8DB5FC8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

double sub_1D8DB6BF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D8DB5FC8(a1, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1D8DB6C3C(unint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = objc_opt_self();
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v5 = [v3 predicateForEpisodeUuid_];

LABEL_5:
    v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v7 = v5;
    v8 = [v6 initWithEntityName_];
    [v8 setPredicate_];

    return v8;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v5 = [objc_opt_self() predicateForEpisodeStoreTrackId_];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8DB6D60()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CFD888();
  sub_1D9177E4C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1ECAAFDB8 = result;
  return result;
}

uint64_t StorageAnalyticsResponder.init(mediaSpaceCalculator:analyticsChannel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  a3[2] = result;
  return result;
}

uint64_t EpisodeStateMachine.__allocating_init(identifier:initialState:rules:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  EpisodeStateMachine.init(identifier:initialState:rules:)(a1, a2, a3 & 1, a4, a5);
  return v10;
}

Swift::Void __swiftcall StorageAnalyticsResponder.beginObserving()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8DB742C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1D8DB70EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A48, &qword_1D9194350);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  result = *a1;
  if (*a1)
  {

    swift_beginAccess();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
    sub_1D9177AAC();
    swift_endAccess();
    *(swift_allocObject() + 16) = a3;
    sub_1D915122C();
    v10 = sub_1D9177D9C();

    result = (*(v6 + 8))(v8, v5);
    *a1 = v10;
  }

  return result;
}

uint64_t sub_1D8DB7284()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t EpisodeStateMachine.init(identifier:initialState:rules:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*v5 + 120);
  v12 = *(*v5 + 80);
  type metadata accessor for StateMachineChangeObserverAction(0, v12, *(*v5 + 88), *(*v5 + 96));
  *(v5 + v11) = sub_1D917866C();
  v13 = *(*v5 + 136);
  *(v5 + v13) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3 & 1;
  (*(*(v12 - 8) + 32))(v5 + *(*v5 + 112), a4, v12);
  *(v5 + *(*v5 + 128)) = a5;
  return v5;
}

uint64_t sub_1D8DB7470()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for EpisodeStateMachine(0, v1, *(*v0 + 88), *(*v0 + 96));
  return Lockable.locked<A>(perform:)(sub_1D8DB801C, v0, v2, v1, &protocol witness table for EpisodeStateMachine<A, B>);
}

uint64_t AutoDownloadProcessorDataSource.init(context:accountDataSource:workQueue:capacityMonitor:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  strcpy((v5 + 16), "AutoDownload");
  *(v5 + 29) = 0;
  *(v5 + 30) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D9189060;
  *(v10 + 32) = sub_1D917820C();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_1D917820C();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_1D917820C();
  *(v10 + 72) = v13;
  *(v5 + 48) = v10;
  *(v5 + 56) = 0;
  *(v5 + 96) = 1;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = 2;
  *(v5 + 88) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v5;
  v15 = a3;
  swift_retain_n();
  v16 = v15;
  v17 = a1;
  swift_unknownObjectRetain();
  v18 = a4;
  sub_1D8DB77B0(v18, v16, v5);
  v19 = *&v18[OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers];

  os_unfair_lock_lock(v19 + 6);
  sub_1D8D48B78();
  os_unfair_lock_unlock(v19 + 6);

  swift_unknownObjectRelease();

  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  return v5;
}

uint64_t sub_1D8DB7770()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DB77B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  if (*(a1 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource))
  {
    v15 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v16 = *(a1 + v15);
    v17 = a2;

    os_unfair_lock_lock((v16 + 24));
    v18 = *(v16 + 16);
    os_unfair_lock_unlock((v16 + 24));

    sub_1D8DB7CDC(v18, v17, a3);
  }

  else
  {
    v30 = *(a1 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
    v19 = swift_allocObject();
    v29 = v6;
    v20 = v19;
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v28 = v20;
    v21[2] = v20;
    v21[3] = sub_1D8E6EDA4;
    v21[4] = v14;
    aBlock[4] = sub_1D9160118;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_70_3;
    v27 = _Block_copy(aBlock);
    v22 = a2;

    sub_1D9177E4C();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    v26 = v10;
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v23 = v29;
    sub_1D91792CC();
    v24 = v27;
    MEMORY[0x1DA72A400](0, v13, v9, v27);
    _Block_release(v24);
    (*(v7 + 8))(v9, v23);
    (*(v11 + 8))(v13, v26);
  }
}

uint64_t sub_1D8DB7B8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DB7BD0()
{
  sub_1D8DB7FB4();

  return swift_unknownObjectRetain();
}

uint64_t Lockable.locked<A>(perform:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  [v8(a3 a5)];
  v9 = swift_unknownObjectRelease();
  a1(v9);
  [v8(a3 a5)];
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8DB7CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1D8E6EFE8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_26_0;
  v13 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_1D8DB7F7C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DB7FB4()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1D8DB8044(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D8DB8144@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1D8DB81F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v5 = type metadata accessor for EpisodeStateMachine(0, v4[10], v4[11], v4[12]);
  return Lockable.locked<A>(perform:)(sub_1D8DB83B8, v7, v5, MEMORY[0x1E69E7CA8] + 8, &protocol witness table for EpisodeStateMachine<A, B>);
}

void *AutoDownloadProcessorDownloader.init(reachability:context:capacityMonitor:downloader:analyticsChannel:workQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EA0, &qword_1D918DB70);
  result = swift_allocObject();
  result[2] = 0xD000000000000035;
  result[3] = 0x80000001D91CAD10;
  result[4] = 209715200;
  result[5] = v14;
  result[6] = &type metadata for Int64Transform;
  result[7] = &off_1F5485EB0;
  a7[5] = a6;
  a7[6] = result;
  *a7 = a3;
  a7[1] = a1;
  a7[2] = a4;
  a7[3] = a2;
  a7[4] = a5;
  return result;
}

uint64_t DebouncedEpisodeAndShowProcessor.init(interval:dataSource:storage:delegate:workQueue:inverseBatchSize:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v37 = a5;
  v10 = a1[3];
  v35 = a1[4];
  v36 = a4;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = a2[3];
  v34 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v23 = a3[3];
  v22 = a3[4];
  v24 = __swift_mutable_project_boxed_opaque_existential_1(a3, v23);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  v32 = v22;
  v29 = v36;
  v30 = sub_1D8DB866C(v14, v20, v27, v36, v37, v38, v16, v10, a6, v23, v34, v35, v32);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v30;
}

uint64_t sub_1D8DB866C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v48 = a3;
  v49 = a5;
  v47 = sub_1D9178E0C();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v42 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[3] = a8;
  v54[4] = a12;
  v41 = a12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
  v25 = *(*(a8 - 8) + 32);
  v40 = boxed_opaque_existential_0;
  v25(boxed_opaque_existential_0, a1, a8);
  v53[3] = a7;
  v53[4] = a11;
  v26 = __swift_allocate_boxed_opaque_existential_0(v53);
  (*(*(a7 - 8) + 32))(v26, a2, a7);
  v52[3] = a10;
  v52[4] = a13;
  v27 = __swift_allocate_boxed_opaque_existential_0(v52);
  (*(*(a10 - 8) + 32))(v27, v48, a10);
  *(a6 + 152) = 0u;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0;
  *(a6 + 216) = 0u;
  *(a6 + 232) = 0u;
  *(a6 + 248) = 0;
  *(a6 + 256) = 5;
  *(a6 + 272) = 0;
  *(a6 + 280) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  swift_allocObject();
  *(a6 + 192) = sub_1D91778DC();
  swift_allocObject();
  *(a6 + 200) = sub_1D91778DC();
  sub_1D8CFD9D8(v54, a6 + 24);
  sub_1D8CFD9D8(v53, a6 + 64);
  if (a4)
  {
    v28 = a4;
  }

  else
  {
    sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1D917946C();

    v50 = 0xD00000000000001DLL;
    v51 = 0x80000001D91CA5F0;
    v29 = (*(v41 + 8))(a8);
    MEMORY[0x1DA7298F0](v29);

    sub_1D9177E4C();
    v50 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
    sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
    sub_1D91792CC();
    (*(v46 + 104))(v45, *MEMORY[0x1E69E8090], v47);
    v28 = sub_1D9178E4C();
  }

  *(a6 + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B38, &qword_1D918C0F8);
  v30 = swift_allocObject();
  *(v30 + 20) = 0;
  *(v30 + 16) = 3;
  *(a6 + 264) = v30;
  v31 = objc_opt_self();
  v32 = a4;
  v50 = [v31 falsePredicate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B40, &qword_1D918C100);
  swift_allocObject();
  *(a6 + 208) = sub_1D917795C();
  sub_1D8CFD9D8(v52, a6 + 112);
  *(a6 + 104) = v49;
  v33 = *(a6 + 96);
  __swift_project_boxed_opaque_existential_1((a6 + 64), *(a6 + 88));
  v34 = *(a6 + 48);
  v35 = *(a6 + 56);
  __swift_project_boxed_opaque_existential_1((a6 + 24), v34);
  (*(v35 + 16))(v34, v35);
  (*(v33 + 24))();

  v36 = *(a6 + 96);
  __swift_project_boxed_opaque_existential_1((a6 + 64), *(a6 + 88));
  v37 = *(a6 + 48);
  v38 = *(a6 + 56);
  __swift_project_boxed_opaque_existential_1((a6 + 24), v37);
  (*(v38 + 24))(v37, v38);
  (*(v36 + 32))();

  sub_1D8D01824(a9);
  sub_1D8D0F278(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return a6;
}

uint64_t sub_1D8DB8CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a4 + 80);
  v7 = *(*a4 + 88);
  v8 = *(*a4 + 96);

  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v14 = a2;
  v15 = a3;
  v9 = type metadata accessor for StateMachineChangeObserverAction(0, v6, v7, v8);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v12, v13, v9);
  swift_beginAccess();
  sub_1D91786FC();
  sub_1D91786BC();
  swift_endAccess();
  return (*(v10 + 8))(v13, v9);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8DB8E78()
{
  v1 = *(*v0 + 16);

  return v1;
}

void sub_1D8DB8F7C()
{
  v1 = *(v0 + 264);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v2 & 0xFE) == 2)
  {

    sub_1D8D01ED4();
  }
}

void sub_1D8DB8FE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__deferring))
    {
      *(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__deferring) = 0;
      v3 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__tasks;
      swift_beginAccess();
      v24 = *(*&v2[v3] + 16);
      if (qword_1EDCD2400 != -1)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v4 = sub_1D917744C();
        __swift_project_value_buffer(v4, qword_1EDCDE818);
        v5 = sub_1D917741C();
        v6 = sub_1D9178CDC();
        v25 = v2;
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 134349056;
          *(v7 + 4) = v24;
          _os_log_impl(&dword_1D8CEC000, v5, v6, "Starting %{public}ld tasks.", v7, 0xCu);
          v8 = v7;
          v2 = v25;
          MEMORY[0x1DA72CB90](v8, -1, -1);
        }

        v9 = *&v2[v3];
        v10 = *(v9 + 16);

        if (!v10)
        {
          break;
        }

        v3 = 0;
        v11 = (v9 + 48);
        while (v3 < *(v9 + 16))
        {
          v13 = *(v11 - 2);
          v12 = *(v11 - 1);
          v14 = *v11;

          v15 = v14;
          v16 = sub_1D917741C();
          v17 = sub_1D9178CDC();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 134349312;
            *(v18 + 4) = v3;
            *(v18 + 12) = 2050;
            *(v18 + 14) = v24;
            _os_log_impl(&dword_1D8CEC000, v16, v17, "Starting %{public}ld of %{public}ld tasks.", v18, 0x16u);
            v19 = v18;
            v2 = v25;
            MEMORY[0x1DA72CB90](v19, -1, -1);
          }

          ++v3;

          sub_1D8DB935C(v13, v12, v15);

          v11 += 3;
          if (v10 == v3)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_21:
        swift_once();
      }

LABEL_17:
    }

    else
    {
      if (qword_1EDCD2400 != -1)
      {
        swift_once();
      }

      v20 = sub_1D917744C();
      __swift_project_value_buffer(v20, qword_1EDCDE818);
      v21 = sub_1D917741C();
      v22 = sub_1D9178CDC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D8CEC000, v21, v22, "Tasks have already run. Nothing to do here.", v23, 2u);
        MEMORY[0x1DA72CB90](v23, -1, -1);
      }

      v2 = v21;
    }
  }
}

uint64_t sub_1D8DB935C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177E0C();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = ObjectType;
  aBlock[4] = sub_1D8DB96C8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_46_0;
  v14 = _Block_copy(aBlock);

  a3;
  sub_1D9177E4C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v9, v14);
  _Block_release(v14);
  (*(v18 + 8))(v9, v7);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_1D8DB9638()
{

  return swift_deallocObject();
}

uint64_t AssetRemovalProcessorDataSource.init(managedObjectContext:receiverQueue:)(uint64_t a1, uint64_t a2)
{
  strcpy((v2 + 32), "AssetRemoval");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 48) = xmmword_1D918BEE0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AssetRemovalProcessorDelegate.init(episodeAndShowStorage:library:workQueue:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D8D6BCE0(a1, a4);
  result = sub_1D8D6BCE0(a2, a4 + 40);
  *(a4 + 80) = a3;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

void sub_1D8DB9740(uint64_t (*a1)(void))
{
  if (qword_1EDCD2400 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCDE818);
  v3 = sub_1D917741C();
  v4 = sub_1D9178CEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "Starting task.", v5, 2u);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  a1();
  oslog = sub_1D917741C();
  v6 = sub_1D9178CEC();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D8CEC000, oslog, v6, "Finishing task.", v7, 2u);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }
}

uint64_t sub_1D8DB98C0()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1D8DB9908()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D918A530;
    *(v2 + 32) = sub_1D917820C();
    *(v2 + 40) = v3;
    *(v2 + 48) = sub_1D917820C();
    *(v2 + 56) = v4;
    *(v0 + 48) = v2;
  }

  sub_1D8DB9ADC(v1);
  return v2;
}

void sub_1D8DB99AC(uint64_t a1, Swift::Int64 a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v12 = URL.volumeAvailableCapacityForOpportunisticUsage()();
    value = v12.value;
    is_nil = v12.is_nil;
    swift_endAccess();
    if (!is_nil)
    {
      if (a3)
      {
        if (value > 0)
        {
          goto LABEL_5;
        }
      }

      else if (value > a2)
      {
        goto LABEL_5;
      }

      v9 = 2;
      goto LABEL_8;
    }

LABEL_5:
    v9 = 0;
LABEL_8:
    v10 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v11 = *&v6[v10];
    os_unfair_lock_lock((v11 + 24));
    *(v11 + 16) = v9;
    os_unfair_lock_unlock((v11 + 24));
    swift_endAccess();
  }
}

uint64_t sub_1D8DB9ADC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

Swift::Int64_optional __swiftcall URL.volumeAvailableCapacityForOpportunisticUsage()()
{
  v0 = sub_1D8DB9BC0(MEMORY[0x1E695DD58], MEMORY[0x1E69688B8], "Failed to query volumeAvailableCapacityForOpportunisticUsageKey: %s", v2);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t sub_1D8DB9B24()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(&qword_1EDCD0B48, &qword_1ECAB4B30, &unk_1D918E010, MEMORY[0x1E695BF80]);
  sub_1D9177A6C();
}

uint64_t sub_1D8DB9BC0(void **a1, uint64_t (*a2)(uint64_t), const char *a3, ...)
{
  v5 = sub_1D917697C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1D9176B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AB8, &qword_1D9194688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = v9;
  v11 = v9;
  sub_1D8DB9EE8(inited);
  swift_setDeallocating();
  sub_1D8DBA0E0(inited + 32);
  sub_1D9176ADC();

  v13 = a2(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

void sub_1D8DB9EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8518, &qword_1D91A1A68);
    v3 = sub_1D917942C();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_1D917820C();
      sub_1D9179DBC();
      v26 = v7;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v8 = sub_1D9179E1C();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = sub_1D917820C();
        v17 = v16;
        if (v15 == sub_1D917820C() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_1D9179ACC();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t sub_1D8DBA0E0(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8DBA14C()
{
  v1 = *(sub_1D9177EDC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D8DBA2B0(v2, v3);
}

uint64_t Cache.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D8D498FC(a1, a2);
  (*(*(*(v5 + 80) - 8) + 8))(a2);
  v6 = sub_1D91791BC();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void sub_1D8DBA2B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__timeoutScheduled) == 1)
    {
      if (qword_1EDCD2400 != -1)
      {
        swift_once();
      }

      v5 = sub_1D917744C();
      __swift_project_value_buffer(v5, qword_1EDCDE818);
      v6 = sub_1D917741C();
      v7 = sub_1D9178CFC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v10 = v9;
        *v8 = 136446210;
        *(v8 + 4) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D98C0, &v10);
        _os_log_impl(&dword_1D8CEC000, v6, v7, "%{public}s called twice. Ignoring the second call.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x1DA72CB90](v9, -1, -1);
        MEMORY[0x1DA72CB90](v8, -1, -1);
      }
    }

    else
    {
      *(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__timeoutScheduled) = 1;
      sub_1D8DBA4C8(a2);
    }
  }
}

uint64_t CacheDomain.DiskCaches.directory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9176C2C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D8DBA4C8(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1D9177E0C();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E9C();
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  aBlock[4] = sub_1D915D71C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_40_3;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A360](v20, v9, v6, v13);
  _Block_release(v13);

  (*(v19 + 8))(v6, v4);
  (*(v17 + 8))(v9, v18);
}

uint64_t sub_1D8DBA7D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DBA884()
{
  v0 = sub_1D917744C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDCD0690);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "Force fetching latest channel updates", v7, 2u);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_1D8DBAA4C(0);
}

uint64_t sub_1D8DBAA4C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1 & 1;
  *(v11 + 32) = ObjectType;
  aBlock[4] = sub_1D8DBB1A4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_70;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  sub_1D9177E4C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD720(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_1D8DBAD54()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DBADF0()
{
  v1 = v0;
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-v7];
  v9 = *(v1 + OBJC_IVAR___MTPurchaseControllerWrapper_purchaseController);
  v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0xA8);
  swift_beginAccess();
  v11 = *(v9 + v10);

  os_unfair_lock_lock((v11 + 20));
  LODWORD(v10) = *(v11 + 16);
  os_unfair_lock_unlock((v11 + 20));

  if (v10 == 1)
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_1EDCD0690);
    swift_beginAccess();
    (*(v3 + 16))(v8, v12, v2);
    v13 = sub_1D917741C();
    v14 = sub_1D9178D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D8CEC000, v13, v14, "receivedEntitlementsNotification = true, force fetching latest channel updates", v15, 2u);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return sub_1D8DBA884();
  }

  else
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v2, qword_1EDCD0690);
    swift_beginAccess();
    (*(v3 + 16))(v5, v17, v2);
    v18 = sub_1D917741C();
    v19 = sub_1D9178D1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "receivedEntitlementsNotification = false, not force fetching latest channel updates", v20, 2u);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t static DownloadEnvironment.live.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EDCD4208 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1D8DBBEB4(&unk_1EDCD4210, v2);
}

id sub_1D8DBB1B4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = type metadata accessor for CoreDataDownloadPersistence();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v11 = v2;
  v12 = &protocol witness table for CoreDataDownloadPersistence;
  *&v10 = v3;
  v4 = [objc_opt_self() defaultManager];
  v8 = sub_1D8DBBB40();
  v9 = &protocol witness table for NSFileManager;
  *&v7 = v4;
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDCD0998;
  sub_1D8D6BCE0(&v10, &unk_1EDCD4210);
  sub_1D8D6BCE0(&v7, &unk_1EDCD4238);
  qword_1EDCD4260 = v6;

  return v6;
}

void sub_1D8DBB318(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1D917744C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = [objc_opt_self() ams_sharedAccountStore];
  v17 = [v16 ams_activeiTunesAccount];

  if (v17)
  {

    if (([objc_opt_self() acknowledgementNeededForPrivacyIdentifier_] & 1) == 0)
    {
      if (a2)
      {
        v52 = a1;
        v22 = swift_allocObject();
        v51 = v22;
        *(v22 + 16) = MEMORY[0x1E69E7CC0];
        v23 = v22 + 16;
        if (qword_1EDCD5AA8 != -1)
        {
          swift_once();
        }

        v24 = __swift_project_value_buffer(v6, qword_1EDCD0690);
        swift_beginAccess();
        v25 = *(v7 + 16);
        v48 = v7 + 16;
        v49 = v24;
        v47 = v25;
        v25(v12, v24, v6);
        v26 = sub_1D917741C();
        v27 = sub_1D9178D1C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1D8CEC000, v26, v27, "Fetching all channels for personalization.", v28, 2u);
          MEMORY[0x1DA72CB90](v28, -1, -1);
        }

        v46 = *(v7 + 8);
        v46(v12, v6);
        v29 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
        v30 = [objc_opt_self() predicateWithValue_];
        [v29 setPredicate_];

        v31 = [objc_opt_self() sharedInstance];
        v32 = [v31 privateQueueContext];

        v33 = swift_allocObject();
        v33[2] = v29;
        v33[3] = v23;
        v33[4] = a3;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_1D9076224;
        *(v34 + 24) = v33;
        v57 = sub_1D8D24508;
        v58 = v34;
        aBlock = MEMORY[0x1E69E9820];
        v54 = 1107296256;
        v55 = sub_1D8D24488;
        v56 = &block_descriptor_17_7;
        v35 = _Block_copy(&aBlock);
        v50 = v29;

        [v32 performBlockAndWait_];

        _Block_release(v35);
        LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

        if (v29)
        {
          __break(1u);
        }

        else
        {
          v36 = v52;
          if (*(*v23 + 16))
          {
            v47(v9, v49, v6);
            v37 = sub_1D917741C();
            v38 = sub_1D9178D1C();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              *v39 = 0;
              _os_log_impl(&dword_1D8CEC000, v37, v38, "Retrieving personalized polling interval.", v39, 2u);
              MEMORY[0x1DA72CB90](v39, -1, -1);
            }

            v46(v9, v6);
            v40 = [objc_opt_self() sharedInstance];
            v41 = [v40 personalizedChannelPollingInterval];

            v42 = [v41 asyncValuePromiseOnQueue_];
            v43 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v44 = swift_allocObject();
            *(v44 + 16) = v51;
            *(v44 + 24) = v43;
            v57 = sub_1D9076230;
            v58 = v44;
            aBlock = MEMORY[0x1E69E9820];
            v54 = 1107296256;
            v55 = sub_1D8D5960C;
            v56 = &block_descriptor_24_8;
            v45 = _Block_copy(&aBlock);

            [v42 addFinishBlock_];
            _Block_release(v45);
          }

          else
          {
          }
        }
      }

      else
      {
        sub_1D9071A38();
      }
    }
  }

  else
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v6, qword_1EDCD0690);
    swift_beginAccess();
    (*(v7 + 16))(v15, v18, v6);
    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Resetting subscription cache since user is not signed in.", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
    sub_1D8DBBB8C();
  }
}

uint64_t sub_1D8DBBAFC()
{

  return swift_deallocObject();
}

unint64_t sub_1D8DBBB40()
{
  result = qword_1EDCD0A10;
  if (!qword_1EDCD0A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD0A10);
  }

  return result;
}

uint64_t sub_1D8DBBB8C()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1D8DBC264;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_60_2;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_1D9177E4C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD720(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_1D8DBBE78()
{

  return swift_deallocObject();
}

void sub_1D8DBBF44(void *a1)
{
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EDCD0690);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "Resetting all subs to not subscribed state", v9, 2u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_1D8DBC35C(MEMORY[0x1E69E7CC0]);

  *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x90)) = 1;
}

void *DownloadConsistency.init(issueIdentifier:resolutionStrategy:effectApplicator:downloadEnvironment:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___PFDownloadConsistency_listener] = 0;
  sub_1D8CFD9D8(a1, &v4[OBJC_IVAR___PFDownloadConsistency_identifier]);
  sub_1D8CFD9D8(a2, &v4[OBJC_IVAR___PFDownloadConsistency_resolutionStrategy]);
  sub_1D8CFD9D8(a3, &v4[OBJC_IVAR___PFDownloadConsistency_effectApplicator]);
  sub_1D8DBBEB4(a4, &v4[OBJC_IVAR___PFDownloadConsistency_environment]);
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DownloadConsistency();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1D8DBC210(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_1D8DBC324()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DBC35C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1D917744C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CD0];
  v23 = v7 + 16;
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v9 = [objc_opt_self() predicateWithValue_];
  [v8 setPredicate_];

  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 privateQueueContext];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = v8;
  v13[5] = v7;
  v13[6] = ObjectType;
  aBlock[4] = sub_1D90762E8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_54_1;
  v14 = _Block_copy(aBlock);

  v15 = v8;

  [v11 performBlockAndWaitWithSave_];
  _Block_release(v14);

  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v3, qword_1EDCD0690);
  swift_beginAccess();
  (*(v4 + 16))(v6, v16, v3);
  v17 = sub_1D917741C();
  v18 = sub_1D9178D1C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "Finished updating subscriptions.", v19, 2u);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    v20 = v15;
  }

  else
  {
    v20 = v17;
    v17 = v15;
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  v21 = *(v7 + 16);

  return v21;
}

uint64_t sub_1D8DBC728()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DBC760()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DBC7B0(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v70 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5360, &unk_1D918EDC0);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v47 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5368, &qword_1D918EDD0);
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v47 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5370, &qword_1D918EDD8);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v47 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5378, &qword_1D918EDE0);
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v47 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5380, &qword_1D918EDE8);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v56 = &v47 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5388, &unk_1D918EDF0);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v47 - v10;
  v11 = v2 + OBJC_IVAR___PFDownloadConsistency_environment;
  v49 = v2 + OBJC_IVAR___PFDownloadConsistency_environment;
  v12 = OBJC_IVAR___PFDownloadConsistency_identifier;
  swift_beginAccess();
  v50 = v2;
  sub_1D8CFD9D8(v2 + v12, &v72);
  v13 = *(&v73 + 1);
  v14 = v74;
  __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
  v79 = (*(v14 + 8))(v11, v13, v14);
  sub_1D8CFD9D8(v2 + OBJC_IVAR___PFDownloadConsistency_resolutionStrategy, &v78);
  v15 = swift_allocObject();
  sub_1D8D6BCE0(&v78, v15 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D8E84BBC;
  *(v16 + 24) = v15;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52E0, &qword_1D918EB70);
  type metadata accessor for DownloadConsistency.IssueResolution(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5200, &qword_1D918EE00);
  v17 = MEMORY[0x1E695BED8];
  v48 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1EDCD0BB0, &qword_1ECAB52E0, &qword_1D918EB70, MEMORY[0x1E695BED8]);
  sub_1D8CF48EC(&qword_1EDCD0BB8, &qword_1ECAB5200, &qword_1D918EE00, v17);
  v18 = v51;
  sub_1D9177CBC();

  __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  v47 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1EDCD0C48, &qword_1ECAB5368, &qword_1D918EDD0, MEMORY[0x1E695BE40]);
  v19 = v52;
  v20 = v53;
  sub_1D9177C4C();
  (*(v54 + 8))(v18, v20);
  v21 = v49;
  sub_1D8DBBEB4(v49, &v72);
  v22 = swift_allocObject();
  v23 = v50;
  *(v22 + 16) = v50;
  v24 = v75;
  *(v22 + 56) = v74;
  *(v22 + 72) = v24;
  *(v22 + 88) = v76;
  *(v22 + 104) = v77;
  v25 = v73;
  *(v22 + 24) = v72;
  *(v22 + 40) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D8E85684;
  *(v26 + 24) = v22;
  v27 = v23;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5390, &qword_1D918EE08);
  v28 = MEMORY[0x1E695BDE0];
  sub_1D8CF48EC(&qword_1EDCD0C68, &qword_1ECAB5370, &qword_1D918EDD8, MEMORY[0x1E695BDE0]);
  sub_1D8CF48EC(&qword_1EDCD0B90, &qword_1ECAB5390, &qword_1D918EE08, v48);
  v29 = v55;
  v30 = v57;
  sub_1D9177CAC();

  (*(v58 + 8))(v19, v30);
  sub_1D8CF48EC(&qword_1EDCD0C40, &qword_1ECAB5378, &qword_1D918EDE0, v47);
  v31 = v56;
  v32 = v59;
  sub_1D9177C4C();
  (*(v60 + 8))(v29, v32);
  v33 = *(v21 + 80);
  v34 = sub_1D9178DBC();
  v35 = v64;
  (*(*(v34 - 8) + 56))(v64, 1, 1, v34);
  *&v72 = v33;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0C60, &qword_1ECAB5380, &qword_1D918EDE8, v28);
  sub_1D8D02DF0();
  v36 = v67;
  v37 = v62;
  v38 = v31;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09C0, &qword_1ECAB5360, &unk_1D918EDC0, MEMORY[0x1E695BCB8]);
  v39 = v61;
  v40 = v68;
  sub_1D9177CEC();
  (*(v69 + 8))(v36, v40);
  sub_1D8D08A50(v35, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v63 + 8))(v38, v37);
  v41 = swift_allocObject();
  v42 = v70;
  v43 = v71;
  *(v41 + 16) = v70;
  *(v41 + 24) = v43;
  sub_1D8D1F93C(v42, v43);
  sub_1D8CF48EC(&unk_1ECAB03D8, &qword_1ECAB5388, &unk_1D918EDF0, MEMORY[0x1E695BE98]);
  v44 = v65;
  v45 = sub_1D9177BCC();

  (*(v66 + 8))(v39, v44);
  *&v27[OBJC_IVAR___PFDownloadConsistency_listener] = v45;
}

uint64_t sub_1D8DBD2A8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DBD2E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DBD318()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D8DBD368()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t type metadata accessor for DownloadedAssetEffect(uint64_t a1)
{
  result = qword_1EDCD37D0;
  if (!qword_1EDCD37D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8DBD4A0(uint64_t a1)
{
  sub_1D8DBD55C();
  if (v1 <= 0x3F)
  {
    sub_1D8DBD514();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8DBD514()
{
  if (!qword_1ECAB2CB8)
  {
    v0 = sub_1D9176C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB2CB8);
    }
  }
}

uint64_t sub_1D8DBD55C()
{
  result = qword_1ECAB0130;
  if (!qword_1ECAB0130)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ECAB0130);
  }

  return result;
}

uint64_t sub_1D8DBD5D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v84 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4168, &qword_1D9188BD8);
  v7 = *(v6 - 8);
  v81 = v6;
  v82 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v56 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4170, &unk_1D9188BE0);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4178, &qword_1D9188BF0);
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4180, &qword_1D9188BF8);
  v17 = *(v16 - 8);
  v74 = v16;
  v75 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v56 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4188, &qword_1D9188C00);
  v20 = *(v19 - 8);
  v76 = v19;
  v77 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v56 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4190, &qword_1D9188C08);
  v23 = *(v22 - 8);
  v78 = v22;
  v79 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v56 - v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4198, &unk_1D9188C10);
  swift_allocObject();

  v26 = sub_1D9177A5C();
  v65 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_workQueue);
  v27 = v65;
  v64 = sub_1D9178DBC();
  v28 = *(v64 - 8);
  v63 = *(v28 + 56);
  v66 = v28 + 56;
  v63(v13, 1, 1, v64);
  v85 = v26;
  v86 = v27;
  v29 = sub_1D8CFD888();
  v58 = MEMORY[0x1E695C038];
  sub_1D8CF48EC(&qword_1ECAB0218, &qword_1ECAB4198, &unk_1D9188C10, MEMORY[0x1E695C038]);
  v30 = sub_1D8CFBB20(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  v61 = v29;
  v60 = v30;
  sub_1D9177D3C();
  v62 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB09E8, &qword_1ECAB4170, &unk_1D9188BE0, MEMORY[0x1E695BCB8]);
  v31 = v15;
  v32 = v13;
  v59 = v13;
  v33 = v69;
  sub_1D9177CEC();

  (*(v67 + 8))(v10, v33);
  sub_1D8D08A50(v32, &qword_1ECAB4D70, &unk_1D918BCE0);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1D8E25F8C;
  *(v34 + 24) = a1;
  v57 = a1;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A8, &qword_1D9188C20);
  v69 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0410, &qword_1ECAB4178, &qword_1D9188BF0, MEMORY[0x1E695BE98]);
  v35 = v58;
  sub_1D8CF48EC(&qword_1ECAB0268, &qword_1ECAB41A8, &qword_1D9188C20, v58);
  v36 = v68;
  v37 = v70;
  sub_1D9177CBC();

  (*(v72 + 8))(v31, v37);
  v38 = swift_allocObject();
  v39 = v57;
  *(v38 + 16) = sub_1D8E25FB8;
  *(v38 + 24) = v39;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B0, &qword_1D9188C28);
  v40 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&unk_1ECAB0590, &qword_1ECAB4180, &qword_1D9188BF8, MEMORY[0x1E695BE40]);
  sub_1D8CF48EC(&qword_1ECAB0210, &qword_1ECAB41B0, &qword_1D9188C28, v35);
  v41 = v71;
  v42 = v74;
  sub_1D9177CAC();

  (*(v75 + 8))(v36, v42);
  v43 = v59;
  v63(v59, 1, 1, v64);
  v86 = v65;
  sub_1D8CF48EC(&qword_1ECAB0578, &qword_1ECAB4188, &qword_1D9188C00, v40);
  v44 = v80;
  v45 = v76;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09A0, &qword_1ECAB4168, &qword_1D9188BD8, v62);
  v46 = v73;
  v47 = v81;
  sub_1D9177CEC();
  (*(v82 + 8))(v44, v47);
  sub_1D8D08A50(v43, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v77 + 8))(v41, v45);
  v48 = swift_allocObject();
  v50 = v83;
  v49 = v84;
  *(v48 + 16) = v83;
  *(v48 + 24) = v49;
  v51 = swift_allocObject();
  v51[2] = v39;
  v51[3] = v50;
  v51[4] = v49;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1D8E25FEC;
  *(v52 + 24) = v51;
  sub_1D8D1F93C(v50, v49);

  sub_1D8D1F93C(v50, v49);
  sub_1D8CF48EC(&qword_1ECAB03C0, &qword_1ECAB4190, &qword_1D9188C08, v69);
  v53 = v78;
  v54 = sub_1D9177BCC();

  (*(v79 + 8))(v46, v53);
  *(v39 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_syncSession) = v54;
}

uint64_t sub_1D8DBE078()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DBE0B0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DBE0F0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_1D8DBE194(uint64_t a1)
{
  type metadata accessor for DownloadConsistency.Issue(319);
  if (v1 <= 0x3F)
  {
    sub_1D8DBE570(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D8DBE23C(uint64_t (*a1)(uint64_t *), uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  if (a3)
  {

    v15 = 0;
    v16 = 0;
    return a1(&v15);
  }

  else
  {
    v13 = sub_1D917886C();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a4;
    v14[5] = sub_1D8D49C40;
    v14[6] = v11;

    sub_1D8E91268(0, 0, v10, &unk_1D9188C48, v14);
  }
}

uint64_t sub_1D8DBE3C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1D8DBE410(uint64_t a1)
{
  sub_1D8DBE490(319);
  if (v1 <= 0x3F)
  {
    sub_1D8DBE4FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8DBE490(uint64_t a1)
{
  if (!qword_1ECAB2C60)
  {
    sub_1D9176EAC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECAB2C60);
    }
  }
}

void sub_1D8DBE4FC(uint64_t a1)
{
  if (!qword_1ECAB2C68)
  {
    sub_1D9176EAC();
    sub_1D9176C2C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECAB2C68);
    }
  }
}

void sub_1D8DBE570(uint64_t a1)
{
  if (!qword_1ECAAFF48)
  {
    type metadata accessor for DownloadedAssetEffect(255);
    v1 = sub_1D91786FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAAFF48);
    }
  }
}

uint64_t sub_1D8DBE5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1D8DBFCEC;

  return sub_1D8DBFB30();
}

uint64_t sub_1D8DBE65C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D58924;

  return sub_1D8DBE5C8(a1, v4, v5, v6, v7, v8);
}

uint64_t CompoundDownloadedAssetIssueIdentifier.startIdentifyingIssues(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52B8, &unk_1D918EB40);
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52C0, &qword_1D918EB50);
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52C8, &qword_1D918EB58);
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v29 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52D0, &qword_1D918EB60);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  *&v37[0] = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52D8, &qword_1D918EB68);
  sub_1D8CF48EC(&qword_1EDCD0A70, &qword_1ECAB52D8, &qword_1D918EB68, MEMORY[0x1E69E6328]);
  sub_1D917773C();
  v18 = *(a1 + 80);
  v19 = sub_1D9178DBC();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  *&v37[0] = v18;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1EDCD0C18, &qword_1ECAB52C0, &qword_1D918EB50, MEMORY[0x1E695BE60]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0990, &qword_1ECAB52B8, &unk_1D918EB40, MEMORY[0x1E695BCB8]);
  v20 = v31;
  sub_1D9177CEC();
  (*(v32 + 8))(v6, v20);
  sub_1D8D2210C(v9);
  (*(v30 + 8))(v12, v10);
  sub_1D8DBBEB4(a1, v37);
  v21 = swift_allocObject();
  v22 = v37[3];
  *(v21 + 48) = v37[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v37[4];
  *(v21 + 96) = v38;
  v23 = v37[1];
  *(v21 + 16) = v37[0];
  *(v21 + 32) = v23;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52E0, &qword_1D918EB70);
  sub_1D8CF48EC(&qword_1ECAB03B0, &qword_1ECAB52C8, &qword_1D918EB58, MEMORY[0x1E695BE98]);
  sub_1D8CF48EC(&qword_1EDCD0BB0, &qword_1ECAB52E0, &qword_1D918EB70, MEMORY[0x1E695BED8]);
  v24 = v33;
  v25 = v29;
  sub_1D9177DCC();

  (*(v36 + 8))(v25, v24);
  sub_1D8CF48EC(&qword_1ECAB05E8, &qword_1ECAB52D0, &qword_1D918EB60, MEMORY[0x1E695BE40]);
  v26 = v34;
  v27 = sub_1D9177B1C();
  (*(v35 + 8))(v17, v26);
  return v27;
}

uint64_t sub_1D8DBED08()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D8DBED50(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1D8DBEE54()
{
  v1 = [*(v0 + 160) fetchCategoriesSyncThresholdValue];
  *(v0 + 168) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D8DBF220;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D8D5F354;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v2;
  [v1 asyncValueWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D8DBEFF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D8DBED50;

  return IMURLBag.getCategoriesSyncThreshold()();
}

uint64_t sub_1D8DBF084()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1D8DBF9B4;

  return v6(v2, v3);
}

uint64_t sub_1D8DBF1B4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D8DBF220()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1D8E26074;
  }

  else
  {
    v2 = sub_1D8DBF1B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8DBF330()
{
  v51 = v0;
  v1 = *(v0 + 72);
  v49 = 0.0;
  v50 = 1;
  MEMORY[0x1DA72A000](v1, &v49);
  if (v50)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 72);
    v3 = sub_1D917744C();
    __swift_project_value_buffer(v3, qword_1ECAB0BF8);
    v4 = v2;
    v5 = sub_1D917741C();
    v6 = sub_1D9178CFC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 72);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[Categories Sync] Unable to convert threshold bag value to type Double. Threshold bag value: %@", v8, 0xCu);
      sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    v11 = 0;
LABEL_21:
    sub_1D8DBFC08();
    swift_allocError();
    *v38 = v11;
    v39 = *(v0 + 72);
    swift_willThrow();

    v40 = *(v0 + 8);
    goto LABEL_22;
  }

  v12 = v49;
  if (v49 < 0.0)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0BF8);
    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[Categories Sync] Received a negative threshold value. Not syncing. ", v16, 2u);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    v11 = 3;
    goto LABEL_21;
  }

  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v17 = sub_1D917744C();
  __swift_project_value_buffer(v17, qword_1ECAB0BF8);
  v18 = sub_1D917741C();
  v19 = sub_1D9178D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v12;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "[Categories sync] Got threshold value from the bag: %f", v20, 0xCu);
    MEMORY[0x1DA72CB90](v20, -1, -1);
  }

  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);
  v26 = *(v0 + 16);
  v25 = *(v0 + 24);

  sub_1D9176E0C();
  v47 = *(v24 + 16);
  v48 = v26;
  v46 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate;
  v47(v23, v26 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate, v25);
  sub_1D9176DBC();
  v27 = *(v24 + 8);
  v27(v23, v25);
  sub_1D8CFBB20(&qword_1EDCD5940, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v28 = sub_1D917818C();
  v27(v22, v25);
  v27(v21, v25);
  if (v28)
  {

    v29 = sub_1D917741C();
    v30 = sub_1D9178D1C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 56);
      v32 = *(v0 + 24);
      v33 = swift_slowAlloc();
      v45 = COERCE_DOUBLE(swift_slowAlloc());
      v49 = v45;
      *v33 = 136315138;
      v47(v31, v48 + v46, v32);
      sub_1D8CFBB20(&qword_1EDCD5930, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v34 = sub_1D9179A4C();
      v36 = v35;
      v27(v31, v32);
      v37 = sub_1D8CFA924(v34, v36, &v49);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1D8CEC000, v29, v30, "[Categories Sync] Not syncing because not past threshold -- last synced at: %s.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(*&v45);
      MEMORY[0x1DA72CB90](*&v45, -1, -1);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    v11 = 1;
    goto LABEL_21;
  }

  v42 = sub_1D917741C();
  v43 = sub_1D9178D1C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1D8CEC000, v42, v43, "[Categories Sync] Past threshold -- Syncing Categories.", v44, 2u);
    MEMORY[0x1DA72CB90](v44, -1, -1);
  }

  v40 = *(v0 + 8);
LABEL_22:

  return v40();
}