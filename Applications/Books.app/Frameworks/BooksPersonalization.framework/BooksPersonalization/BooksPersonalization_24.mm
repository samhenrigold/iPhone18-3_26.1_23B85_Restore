uint64_t sub_1A0F18()
{
  memcpy(&v0[71], &v0[1], 0x460uLL);
  sub_2BF8(v0[141].i64);
  sub_2B54(v0[71].i64);
  v1 = v0[113].i64[0];
  v2 = v0[147].i64[0];
  v3 = v0[145].i64[1];
  v4 = v0[145].i64[0];
  v5 = swift_task_alloc();
  v0[148].i64[0] = v5;
  v5[1] = vextq_s8(v0[144], v0[144], 8uLL);
  v5[2].i64[0] = v2;
  v5[2].i64[1] = v4;
  v5[3].i64[0] = v1;
  v5[3].i64[1] = v3;
  v6 = swift_task_alloc();
  v0[148].i64[1] = v6;
  *v6 = v0;
  v6[1] = sub_1A1180;

  return withCheckedContinuation<A>(isolation:function:_:)(&v0[143].u64[1], 0, 0, 0xD000000000000019, 0x80000000001D8FB0, sub_1A25FC, v5, &type metadata for Int);
}

uint64_t sub_1A1058()
{
  sub_2BF8(v0[141].i64);
  v1 = v0[147].i64[0];
  v2 = v0[145].i64[1];
  v3 = v0[145].i64[0];
  v4 = swift_task_alloc();
  v0[148].i64[0] = v4;
  v4[1] = vextq_s8(v0[144], v0[144], 8uLL);
  v4[2].i64[0] = v1;
  v4[2].i64[1] = v3;
  v4[3].i64[0] = 0x4122750000000000;
  v4[3].i64[1] = v2;
  v5 = swift_task_alloc();
  v0[148].i64[1] = v5;
  *v5 = v0;
  v5[1] = sub_1A1180;

  return withCheckedContinuation<A>(isolation:function:_:)(&v0[143].u64[1], 0, 0, 0xD000000000000019, 0x80000000001D8FB0, sub_1A25FC, v4, &type metadata for Int);
}

uint64_t sub_1A1180()
{

  return _swift_task_switch(sub_1A1298, 0, 0);
}

uint64_t sub_1A1298()
{
  (*(v0[293] + 8))(v0[294], v0[292]);

  v1 = v0[1];

  return v1();
}

void sub_1A131C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v30 = a5;
  v31 = a6;
  v32 = a2;
  v33 = a3;
  v10 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v28 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v29 = &v28 - v13;
  v15 = sub_1B40C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a4, v15);
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v11 + 80) + v21 + 8) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = v32;
  *(v23 + 24) = v24;
  (*(v16 + 32))(v23 + v19, v18, v15);
  v25 = v29;
  *(v23 + v20) = v30;
  *(v23 + v21) = a7;
  (*(v11 + 32))(v23 + v22, v25, v28);
  *(v23 + ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  aBlock[4] = sub_1A279C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_221698;
  v26 = _Block_copy(aBlock);
  v27 = v32;

  [v27 performBlock:v26];
  _Block_release(v26);
}

void sub_1A1610(void *a1, uint64_t a2, double a3)
{
  type metadata accessor for CachedPersonalizationMetadataBISAC();
  aClass = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(aClass);
  if (!v5)
  {
    sub_1B47C4();
    v5 = sub_1B4794();
  }

  v6 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v5];

  v113 = v6;
  v7 = 0;
  v8 = sub_1B4E24();
  if (!v8)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  if (v8 >> 62)
  {
LABEL_32:
    v9 = sub_1B5284();
    v122 = a1;
    if (v9)
    {
LABEL_7:
      v10 = 0;
      v119 = _swiftEmptyDictionarySingleton;
      p_align = &stru_226FE8.align;
      do
      {
        v12 = v10;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v13 = sub_1B50B4();
          }

          else
          {
            if (v12 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_31;
            }

            v13 = *(v8 + 8 * v12 + 32);
          }

          v7 = v13;
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v14 = [v13 *(p_align + 288)];
          if (v14)
          {
            break;
          }

          ++v12;
          if (v10 == v9)
          {
            goto LABEL_34;
          }
        }

        v15 = v14;
        v16 = sub_1B47C4();
        v18 = v17;

        v124 = v7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126[0] = v119;
        v20 = v18;
        v21 = sub_3A678(v16, v18);
        v23 = v119[2];
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v27 = v22;
        if (v119[3] < v26)
        {
          sub_1849A4(v26, isUniquelyReferenced_nonNull_native);
          v28 = v20;
          v21 = sub_3A678(v16, v20);
          if ((v27 & 1) != (v29 & 1))
          {
LABEL_110:
            sub_1B5784();
            __break(1u);
            return;
          }

LABEL_23:
          v7 = v124;
          if (v27)
          {
            goto LABEL_24;
          }

LABEL_26:
          v34 = v126[0];
          *(v126[0] + (v21 >> 6) + 8) |= 1 << v21;
          v35 = (v34[6] + 16 * v21);
          *v35 = v16;
          v35[1] = v28;
          *(v34[7] + 8 * v21) = v7;

          v36 = v34[2];
          v25 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (!v25)
          {
            v119 = v34;
            v34[2] = v37;
            goto LABEL_28;
          }

LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v28 = v20;
          goto LABEL_23;
        }

        v33 = v21;
        sub_188768();
        v21 = v33;
        v28 = v20;
        v7 = v124;
        if ((v27 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_24:
        v30 = v21;

        v119 = v126[0];
        v31 = *(v126[0] + 7);
        v32 = *(v31 + 8 * v30);
        *(v31 + 8 * v30) = v7;

LABEL_28:
        a1 = v122;
        p_align = (&stru_226FE8 + 24);
      }

      while (v10 != v9);
      goto LABEL_34;
    }
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    v122 = a1;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v119 = _swiftEmptyDictionarySingleton;
LABEL_34:

  v38 = 1 << *(a2 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(a2 + 64);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  if (!v40)
  {
    goto LABEL_40;
  }

  while (1)
  {
LABEL_44:
    v44 = __clz(__rbit64(v40)) | (v42 << 6);
    v117 = *(*(a2 + 48) + 8 * v44);
    v45 = *(a2 + 56) + 48 * v44;
    v46 = *(v45 + 8);
    v115 = *(v45 + 16);
    v47 = *(v45 + 24);
    v114 = *(v45 + 32);
    v48 = *(v45 + 40);
    type metadata accessor for CachedPersonalizationMetadataBook();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v125 = v47;

    v50 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v50)
    {
      sub_1B47C4();
      v50 = sub_1B4794();
    }

    v40 &= v40 - 1;
    v51 = objc_opt_self();
    v7 = [v51 insertNewObjectForEntityForName:v50 inManagedObjectContext:a1];

    v52 = swift_dynamicCastClass();
    if (v52)
    {
      break;
    }

    if (qword_228368 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4644();
    sub_50E58(v53, qword_260C98);
    v54 = sub_1B4624();
    v55 = sub_1B4D94();
    a1 = v122;
    if (os_log_type_enabled(v54, v55))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v54, v55, "Failed to create metadata", v7, 2u);
    }

    if (!v40)
    {
      goto LABEL_40;
    }
  }

  if (v117 < 0)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    swift_once();
LABEL_97:
    v105 = sub_1B4644();
    sub_50E58(v105, qword_260C98);
    v106 = sub_1B4624();
    v107 = sub_1B4D94();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&dword_0, v106, v107, "Failed to insert BISAC code object into database", v108, 2u);
    }

    return;
  }

  v56 = v52;
  [v52 setAssetID:?];
  if (v48)
  {
    v57 = sub_1B4794();
  }

  else
  {
    v57 = 0;
  }

  [v56 setDeduplicationID:{v57, v109, v110}];

  if (v115)
  {
    v58 = 0;
  }

  else
  {
    v58 = [objc_allocWithZone(NSNumber) initWithDouble:v46];
  }

  [v56 setUlyssesEmbedding:v58];

  isa = sub_1B4034().super.isa;
  [v56 setDownloadTimestamp:isa];

  v60 = 0;
  v61 = v125 + 56;
  v62 = 1 << *(v125 + 32);
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & *(v125 + 56);
  v65 = (v62 + 63) >> 6;
  v109 = v65;
  v110 = v125 + 56;
  while (v64)
  {
LABEL_69:
    v69 = (*(v125 + 48) + ((v60 << 10) | (16 * __clz(__rbit64(v64)))));
    v116 = *v69;
    v118 = v69[1];
    v70 = v119[2];

    if (v70 && (v71 = sub_3A678(v116, v118), (v72 & 1) != 0))
    {
      v73 = *(v119[7] + 8 * v71);
    }

    else
    {
      v74 = NSStringFromClass(aClass);
      if (!v74)
      {
        sub_1B47C4();
        v74 = sub_1B4794();
      }

      v75 = [v51 insertNewObjectForEntityForName:v74 inManagedObjectContext:{v122, v109, v110}];
      v76 = v74;
      v77 = v75;

      v114 = v77;
      v78 = swift_dynamicCastClass();
      if (!v78)
      {
        goto LABEL_96;
      }

      v79 = v78;
      v80 = sub_1B4794();
      v81 = v79;
      v82 = v80;
      v111 = v81;
      [v81 setCode:v80];

      v83 = v114;
      LODWORD(v114) = swift_isUniquelyReferenced_nonNull_native();
      v126[0] = v119;
      v85 = sub_3A678(v116, v118);
      v86 = v119[2];
      v87 = (v84 & 1) == 0;
      v88 = v86 + v87;
      if (__OFADD__(v86, v87))
      {
        goto LABEL_104;
      }

      if (v119[3] >= v88)
      {
        v73 = v111;
        if ((v114 & 1) == 0)
        {
          v114 = v85;
          v121 = v84;
          sub_188768();
          v84 = v121;
          v85 = v114;
          v73 = v111;
        }

        v92 = v116;
        v91 = v118;
        if (v84)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v120 = v84;
        sub_1849A4(v88, v114);
        v89 = sub_3A678(v116, v118);
        if ((v120 & 1) != (v90 & 1))
        {
          goto LABEL_110;
        }

        v85 = v89;
        v92 = v116;
        v91 = v118;
        v73 = v111;
        if (v120)
        {
LABEL_62:
          v114 = v85;

          v119 = v126[0];
          v66 = *(v126[0] + 7);
          v67 = *(v66 + 8 * v114);
          *(v66 + 8 * v114) = v73;

          goto LABEL_63;
        }
      }

      v93 = v126[0];
      *(v126[0] + (v85 >> 6) + 8) |= 1 << v85;
      v94 = (v93[6] + 16 * v85);
      *v94 = v92;
      v94[1] = v91;
      *(v93[7] + 8 * v85) = v73;
      v95 = v93[2];
      v25 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v25)
      {
        __break(1u);
        goto LABEL_108;
      }

      v119 = v93;
      v93[2] = v96;
    }

LABEL_63:
    v64 &= v64 - 1;
    [v56 addBisacObject:{v73, v109, v110}];

    v65 = v109;
    v61 = v110;
  }

  while (1)
  {
    v68 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v68 >= v65)
    {
      break;
    }

    v64 = *(v61 + 8 * v68);
    ++v60;
    if (v64)
    {
      v60 = v68;
      goto LABEL_69;
    }
  }

  a1 = v122;
  if (v40)
  {
    goto LABEL_44;
  }

LABEL_40:
  while (2)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_96:

      if (qword_228368 == -1)
      {
        goto LABEL_97;
      }

      goto LABEL_109;
    }

    if (v43 < v41)
    {
      v40 = *(a2 + 64 + 8 * v43);
      ++v42;
      if (!v40)
      {
        continue;
      }

      v42 = v43;
      goto LABEL_44;
    }

    break;
  }

  sub_1A2CF4(a1, a3);
  if ([a1 hasChanges])
  {
    v126[0] = 0;
    if ([a1 save:v126])
    {
      v97 = v126[0];
      goto LABEL_94;
    }

    v98 = v126[0];
    sub_1B3E64();

    swift_willThrow();
    if (qword_228368 == -1)
    {
LABEL_91:
      v99 = sub_1B4644();
      sub_50E58(v99, qword_260C98);
      swift_errorRetain();
      v100 = sub_1B4624();
      v101 = sub_1B4D94();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v102 = 138412290;
        swift_errorRetain();
        v104 = _swift_stdlib_bridgeErrorToNSError();
        *(v102 + 4) = v104;
        *v103 = v104;
        _os_log_impl(&dword_0, v100, v101, "Failed to save cache insertions %@", v102, 0xCu);
        sub_1A306C(v103);
      }

      else
      {
      }

      goto LABEL_94;
    }

LABEL_106:
    swift_once();
    goto LABEL_91;
  }

LABEL_94:
  v126[0] = 0;
  sub_2B0C(&qword_22B248, &qword_1C3848);
  sub_1B4BE4();
}

uint64_t BooksPersonalizationMetadataCache.deinit()
{
  sub_2BF8((v0 + 40));

  sub_2BF8((v0 + 112));
  return v0;
}

uint64_t BooksPersonalizationMetadataCache.__deallocating_deinit()
{
  sub_2BF8((v0 + 40));

  sub_2BF8((v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t sub_1A22EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return BooksPersonalizationMetadataCache.fetchPersonalizationMetadata(for:)(a1);
}

uint64_t sub_1A2384(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226C;

  return BooksPersonalizationMetadataCache.contribute(cachableMetadata:)(a1);
}

uint64_t sub_1A241C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  *(a2 + 48) = v6;
  *a2 = v2;
}

uint64_t dispatch thunk of PersonalizationMetadataCaching.contribute(cachableMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226C;

  return v9(a1, a2, a3);
}

uint64_t sub_1A2610()
{
  v1 = sub_1B40C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

void sub_1A279C()
{
  v1 = *(sub_1B40C4() - 8);
  v2 = (((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_2B0C(&qword_22B248, &qword_1C3848);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + v2);

  sub_1A1610(v3, v4, v5);
}

uint64_t sub_1A28C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1A28D8(double a1)
{
  sub_2B0C(&qword_22B238, &unk_1C3808);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BFC80;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000000001D8FD0;
  *(v1 + 88) = sub_1B40C4();
  sub_40528((v1 + 64));
  sub_1B4054();
  v2 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v4 = [objc_opt_self() predicateWithFormat:v2 argumentArray:isa];

  return v4;
}

uint64_t sub_1A29F8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v61 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v42 = v9;
  v43 = v5;
  while (1)
  {
    v12 = v8;
    v13 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = __clz(__rbit64(v12)) | (v13 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    v17 = *(a1 + 56) + 48 * v15;
    v18 = *(v17 + 16);
    v20 = *(v17 + 24);
    v19 = *(v17 + 32);
    v21 = *(v17 + 40);
    v50 = v16;
    v51 = *v17;
    v52 = v18;
    v53 = v20;
    v54 = v19;
    v55 = v21;

    a2(v56, &v50);

    v22 = v58;
    if (!v58)
    {
LABEL_22:
      sub_417B8(a1);
    }

    v24 = v56[0];
    v23 = v56[1];
    v25 = v56[2];
    v46 = v57;
    v47 = v59;
    v48 = v60;
    v26 = *v61;
    v28 = sub_43124(v56[0]);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_187AC0();
      }
    }

    else
    {
      sub_1829C4(v31, a4 & 1);
      v33 = sub_43124(v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_26;
      }

      v28 = v33;
    }

    v35 = (v12 - 1) & v12;
    v36 = *v61;
    if (v32)
    {
      v11 = v36[7] + 48 * v28;
      *v11 = v23;
      *(v11 + 8) = v25;
      *(v11 + 16) = v46;
      *(v11 + 24) = v22;
      *(v11 + 32) = v47;
      *(v11 + 40) = v48;
    }

    else
    {
      v36[(v28 >> 6) + 8] |= 1 << v28;
      *(v36[6] + 8 * v28) = v24;
      v37 = v36[7] + 48 * v28;
      *v37 = v23;
      *(v37 + 8) = v25;
      *(v37 + 16) = v46;
      *(v37 + 24) = v22;
      *(v37 + 32) = v47;
      *(v37 + 40) = v48;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_25;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v10 = v13;
    v9 = v42;
    v5 = v43;
    v8 = v35;
  }

  v14 = v10;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_22;
    }

    v12 = *(v5 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

void sub_1A2CF4(void *a1, double a2)
{
  type metadata accessor for CachedPersonalizationMetadataBook();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    sub_1B47C4();
    v5 = sub_1B4794();
  }

  v23 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v5];

  v6 = sub_1A28D8(a2);
  v7 = [objc_opt_self() notPredicateWithSubpredicate:v6];

  [v23 setPredicate:v7];
  v8 = sub_1B4E24();
  v17 = v8;
  if (!(v8 >> 62))
  {
    v18 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_22:

    return;
  }

  v18 = sub_1B5284();
  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_8:
  v19 = 0;
  while (1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = sub_1B50B4();
    }

    else
    {
      if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    [a1 deleteObject:v20];

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  swift_once();
  v9 = sub_1B4644();
  sub_50E58(v9, qword_260C98);
  swift_errorRetain();
  v10 = sub_1B4624();
  v11 = sub_1B4D94();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1B5794();
    v16 = sub_60FF4(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "Failed to retire old cache entries %s", v12, 0xCu);
    sub_2BF8(v13);
  }

  else
  {
  }
}

uint64_t sub_1A306C(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22B250, &qword_1C3850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A30D4()
{
  v1 = sub_2B0C(&qword_22B288, &qword_1D1D30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1A31B0()
{
  sub_2B0C(&qword_22B288, &qword_1D1D30);

  sub_19EA18();
}

uint64_t sub_1A3260()
{
  v1 = *(type metadata accessor for PersonalizationMetadataRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_2B0C(&qword_22FA90, &unk_1D1D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + v4 + 8) & ~v7;
  v12 = v2 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_1B40F4();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v9 + 8, v12 | 7);
}

void sub_1A3428()
{
  v1 = *(type metadata accessor for PersonalizationMetadataRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_2B0C(&qword_22FA90, &unk_1D1D40) - 8);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = v0 + ((*(v6 + 80) + v5 + 8) & ~*(v6 + 80));

  sub_19EEA8(v0 + v2, v7, v9, v10, v8);
}

unint64_t sub_1A355C()
{
  result = qword_22FA98;
  if (!qword_22FA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_22FA98);
  }

  return result;
}

uint64_t sub_1A35A8()
{
  v1 = *(type metadata accessor for PersonalizationMetadataRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_2B0C(&qword_22FA90, &unk_1D1D40);
  v5 = *(v12 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6;
  v10 = v2 | v6;
  v11 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = sub_1B40F4();
  (*(*(v8 - 8) + 8))(v0 + v3, v8);

  (*(v5 + 8))(v0 + v7, v12);

  return _swift_deallocObject(v0, v7 + v11, v10 | 7);
}

uint64_t sub_1A3784(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizationMetadataRequest(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_2B0C(&qword_22FA90, &unk_1D1D40);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_226C;

  return sub_19FE00(a1, v12, v13, v1 + v4, v9, v10, v11, v14);
}

uint64_t sub_1A393C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Date.beginningOfDay(timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = sub_2B0C(&qword_22FAC0, &qword_1D1D68);
  __chkstk_darwin(v3 - 8);
  v83 = &v76 - v4;
  v80 = sub_1B3E14();
  v84 = *(v80 - 8);
  v5 = __chkstk_darwin(v80);
  v82 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = &v76 - v7;
  v8 = sub_1B41D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v12 = __chkstk_darwin(v11 - 8);
  v96 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v79 = &v76 - v15;
  __chkstk_darwin(v14);
  v95 = &v76 - v16;
  v17 = sub_1B4204();
  v85 = *(v17 - 8);
  v86 = v17;
  __chkstk_darwin(v17);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2B0C(&qword_22FAC8, &qword_1D1D70);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v90 = &v76 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v76 - v27;
  __chkstk_darwin(v26);
  v30 = &v76 - v29;
  if (qword_228378 != -1)
  {
    swift_once();
  }

  v31 = off_22FAB8;
  v32 = *(&dword_10 + off_22FAB8);
  v87 = a1;
  if (v32 && (v33 = sub_3A734(a1), (v34 & 1) != 0))
  {
    v35 = *&stru_20.segname[v31 + 16] + *(v9 + 72) * v33;
    v36 = v8;
    (*(v9 + 16))(v30, v35, v8);
    v37 = *(v9 + 56);
    v38 = v30;
    v39 = 0;
  }

  else
  {
    v37 = *(v9 + 56);
    v38 = v30;
    v39 = 1;
    v36 = v8;
  }

  v88 = v37;
  v37(v38, v39, 1, v8);
  sub_1A49B8(v30, v28);
  v40 = v9;
  v41 = *(v9 + 48);
  v42 = v41(v28, 1, v36);
  sub_42F48(v28, &qword_22FAC8, &qword_1D1D70);
  v43 = v8;
  if (v42 == 1)
  {
    if (qword_228370 != -1)
    {
      swift_once();
    }

    v44 = sub_50E58(v8, qword_22FAA0);
    v45 = v90;
    (*(v9 + 16))(v90, v44, v8);
    v43 = v8;
    v88(v45, 0, 1, v8);
    sub_1A4A28(v45, v30);
    if (!v41(v30, 1, v8))
    {
      (*(v85 + 16))(v19, v87, v86);
      sub_1B41B4();
      v43 = v8;
    }
  }

  v46 = sub_1B40C4();
  v89 = *(v46 - 8);
  v47 = v95;
  (*(v89 + 56))(v95, 1, 1, v46);
  v91 = v30;
  sub_1A49B8(v30, v23);
  if (v41(v23, 1, v43) == 1)
  {
    sub_42F48(v23, &qword_22FAC8, &qword_1D1D70);
  }

  else
  {
    v48 = v92;
    (*(v9 + 32))();
    sub_2B0C(&qword_22FAD0, &qword_1D1D78);
    v77 = v46;
    v49 = sub_1B41C4();
    v78 = v43;
    v50 = v49;
    v51 = *(v49 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1C00E0;
    v55 = v54 + v53;
    v56 = *(v51 + 104);
    v56(v55, enum case for Calendar.Component.year(_:), v50);
    v56(v55 + v52, enum case for Calendar.Component.month(_:), v50);
    v56(v55 + 2 * v52, enum case for Calendar.Component.day(_:), v50);
    sub_9E7C4(v54);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v57 = v81;
    v58 = v48;
    sub_1B41A4();

    v59 = v90;
    v60 = v78;
    (*(v40 + 16))(v90, v58, v78);
    v88(v59, 0, 1, v60);
    v62 = v85;
    v61 = v86;
    v63 = v83;
    (*(v85 + 16))(v83, v87, v86);
    (*(v62 + 56))(v63, 0, 1, v61);
    sub_1B3DE4();
    sub_1B3DF4();
    sub_1B3DC4();
    v64 = v82;
    sub_1B3E04();
    v65 = v79;
    sub_1B3DD4();
    v66 = *(v84 + 8);
    v67 = v64;
    v68 = v80;
    v66(v67, v80);
    v66(v57, v68);
    v47 = v95;
    (*(v40 + 8))(v92, v78);
    sub_42F48(v47, &qword_229528, &qword_1BC5A0);
    v69 = v65;
    v46 = v77;
    sub_E50D4(v69, v47);
  }

  v70 = v96;
  sub_E50D4(v47, v96);
  v71 = v89;
  v72 = *(v89 + 48);
  v73 = v72(v70, 1, v46);
  v74 = v91;
  if (v73 == 1)
  {
    (*(v71 + 16))(v94, v93, v46);
    if (v72(v96, 1, v46) != 1)
    {
      sub_42F48(v96, &qword_229528, &qword_1BC5A0);
    }
  }

  else
  {
    (*(v71 + 32))(v94, v96, v46);
  }

  return sub_42F48(v74, &qword_22FAC8, &qword_1D1D70);
}

uint64_t sub_1A43E4()
{
  v0 = sub_1B4184();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B41D4();
  sub_5EA10(v4, qword_22FAA0);
  sub_50E58(v4, qword_22FAA0);
  (*(v1 + 104))(v3, enum case for Calendar.Identifier.gregorian(_:), v0);
  sub_1B4194();
  return (*(v1 + 8))(v3, v0);
}

int *sub_1A4504()
{
  result = sub_1A4524();
  off_22FAB8 = result;
  return result;
}

void *sub_1A4524()
{
  v0 = sub_2B0C(&qword_22FAC0, &qword_1D1D68);
  v1 = __chkstk_darwin(v0 - 8);
  v48 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v49 = &v38 - v3;
  v4 = sub_1B4204();
  v50 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v47 = &v38 - v8;
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = sub_1B41D4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v38 - v17;
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  if (qword_228370 != -1)
  {
    swift_once();
  }

  v21 = sub_50E58(v11, qword_22FAA0);
  v45 = v12;
  v22 = *(v12 + 16);
  v22(v20, v21, v11);
  sub_1B41F4();
  sub_1B41B4();
  sub_1B41F4();
  v44 = v20;
  v22(v18, v20, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = _swiftEmptyDictionarySingleton;
  v43 = v18;
  sub_53A54(v18, v10, isUniquelyReferenced_nonNull_native);
  v24 = v50;
  v41 = *(v50 + 8);
  v41(v10, v4);
  v39 = v51;
  v40 = v11;
  v42 = v22;
  v22(v15, v21, v11);
  v25 = v49;
  sub_1B41E4();
  v26 = v15;
  v27 = v4;
  v28 = *(v24 + 48);
  result = v28(v25, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = *(v24 + 32);
    v30(v47, v25, v4);
    sub_1B41B4();
    v31 = v48;
    sub_1B41E4();
    result = v28(v31, 1, v4);
    if (result != 1)
    {
      v32 = v46;
      v30(v46, v31, v4);
      v33 = v43;
      v34 = v40;
      v42(v43, v26, v40);
      v35 = v39;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v35;
      sub_53A54(v33, v32, v36);
      v41(v32, v27);
      v37 = *(v45 + 8);
      v37(v26, v34);
      v37(v44, v34);
      return v51;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A49B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22FAC8, &qword_1D1D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22FAC8, &qword_1D1D70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4AC0(uint64_t result, void *a2)
{
  v2 = a2;
  if (result)
  {
  }

  else
  {
    v3 = a2[2];
    if (v3)
    {
      v4 = 0;
      v5 = a2 + 4;
      v2 = _swiftEmptyArrayStorage;
      do
      {
        v6 = &v5[8 * v4];
        for (i = v4; ; ++i)
        {
          if (i >= v3)
          {
            __break(1u);
LABEL_20:
            __break(1u);
            return result;
          }

          v8 = v6[1];
          v20 = *v6;
          v21 = v8;
          v9 = v6[3];
          v22 = v6[2];
          v23 = v9;
          v4 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_20;
          }

          if (*(&v23 + 1) >= 0.0)
          {
            break;
          }

          v6 += 4;
          if (v4 == v3)
          {
            return v2;
          }
        }

        sub_42BA4(&v20, v19);
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v2;
        if ((result & 1) == 0)
        {
          result = sub_375F8(0, v2[2] + 1, 1);
          v2 = v24;
        }

        v10 = v2[2];
        v11 = v2[3];
        v12 = v10 + 1;
        if (v10 >= v11 >> 1)
        {
          v17 = v10 + 1;
          v18 = v10;
          result = sub_375F8((v11 > 1), v10 + 1, 1);
          v10 = v18;
          v12 = v17;
          v2 = v24;
        }

        v2[2] = v12;
        v13 = &v2[8 * v10];
        v14 = v20;
        v15 = v21;
        v16 = v23;
        v13[4] = v22;
        v13[5] = v16;
        v13[2] = v14;
        v13[3] = v15;
      }

      while (v4 != v3);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

BooksPersonalization::Book::Rationale __swiftcall Book.Rationale.init(conditionalScore:seedBooksByMethodology:)(Swift::Double conditionalScore, Swift::OpaquePointer seedBooksByMethodology)
{
  *v2 = conditionalScore;
  *(v2 + 8) = seedBooksByMethodology;
  result.conditionalScore = conditionalScore;
  result.seedBooksByMethodology = seedBooksByMethodology;
  return result;
}

__n128 Book.init(storeID:mediaType:sources:rationale:content:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  *a6 = a1;
  *(a6 + 8) = v6;
  *(a6 + 32) = a3;
  result = *a4;
  *(a6 + 40) = *a4;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
  return result;
}

uint64_t Book.MediaType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F6F626F69647561;
  }

  else
  {
    return 0x6B6F6F6265;
  }
}

uint64_t sub_1A4C9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1A4CF4()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A4D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000000001D9090 == a2 || (sub_1B5604() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000001D80A0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B5604();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A4E14(uint64_t a1)
{
  v2 = sub_1A502C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A4E50(uint64_t a1)
{
  v2 = sub_1A502C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Rationale.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22FAD8, &qword_1D1D90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  v8 = *(v1 + 8);
  sub_2698(a1, a1[3]);
  sub_1A502C();
  sub_1B5884();
  v12 = 0;
  sub_1B5514();
  if (!v2)
  {
    v11 = v8;
    v10[15] = 1;
    sub_2B0C(&qword_22DA98, &qword_1CD278);
    sub_13708C();
    sub_1B5544();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A502C()
{
  result = qword_22FAE0;
  if (!qword_22FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FAE0);
  }

  return result;
}

uint64_t Book.Rationale.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FAE8, &qword_1D1D98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_2698(a1, a1[3]);
  sub_1A502C();
  sub_1B5864();
  if (!v2)
  {
    v15 = 0;
    sub_1B53D4();
    v10 = v9;
    sub_2B0C(&qword_22DA98, &qword_1CD278);
    v13[15] = 1;
    sub_1373D0();
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v10;
    *(a2 + 1) = v11;
  }

  return sub_2BF8(a1);
}

uint64_t sub_1A5298(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6F626F69647561;
  }

  else
  {
    v3 = 0x6B6F6F6265;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v5 = 0x6F6F626F69647561;
  }

  else
  {
    v5 = 0x6B6F6F6265;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006BLL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B5604();
  }

  return v8 & 1;
}

void sub_1A534C(uint64_t *a1@<X8>)
{
  v2 = 0x6B6F6F6265;
  if (*v1)
  {
    v2 = 0x6F6F626F69647561;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006BLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1A544C()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1A54D0(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_1A5540(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t Book.SaleType.rawValue.getter()
{
  if (*v0)
  {
    return 1684627824;
  }

  else
  {
    return 1701147238;
  }
}

void sub_1A55FC(uint64_t *a1@<X8>)
{
  v2 = 1701147238;
  if (*v1)
  {
    v2 = 1684627824;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

Swift::Int sub_1A56D4()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1A573C(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_1A5788(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1A57EC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684627824;
  }

  else
  {
    v2 = 1701147238;
  }

  if (*a2)
  {
    v3 = 1684627824;
  }

  else
  {
    v3 = 1701147238;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B5604();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1A5864(uint64_t a1)
{
  v2 = sub_1A5E50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A58A0(uint64_t a1)
{
  v2 = sub_1A5E50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1A58DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B6F6F6265 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6F626F69647561 && a2 == 0xE90000000000006BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A59BC(uint64_t a1)
{
  v2 = sub_1A5DFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A59F8(uint64_t a1)
{
  v2 = sub_1A5DFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1A5A34(uint64_t a1)
{
  v2 = sub_1A5F4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A5A70(uint64_t a1)
{
  v2 = sub_1A5F4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Content.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22FAF0, &qword_1D1DA0);
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  v6 = sub_2B0C(&qword_22FAF8, &qword_1D1DA8);
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v23 = sub_2B0C(&qword_22FB00, &qword_1D1DB0);
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v17 - v10;
  v22 = *v1;
  v12 = *(v1 + 8);
  sub_2698(a1, a1[3]);
  sub_1A5DFC();
  sub_1B5884();
  if (v12)
  {
    LOBYTE(v24) = 1;
    sub_1A5E50();
    v13 = v23;
    sub_1B5454();
    v24 = v22;
    sub_2B0C(&qword_22FB18, &qword_1D1DB8);
    sub_1A5EA4();
    v14 = v21;
    sub_1B5544();
    (*(v20 + 8))(v5, v14);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_1A5F4C();
    v13 = v23;
    sub_1B5454();
    v24 = v22;
    sub_2B0C(&qword_22FB18, &qword_1D1DB8);
    sub_1A5EA4();
    v15 = v19;
    sub_1B5544();
    (*(v18 + 8))(v8, v15);
  }

  return (*(v9 + 8))(v11, v13);
}

unint64_t sub_1A5DFC()
{
  result = qword_22FB08;
  if (!qword_22FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB08);
  }

  return result;
}

unint64_t sub_1A5E50()
{
  result = qword_22FB10;
  if (!qword_22FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB10);
  }

  return result;
}

unint64_t sub_1A5EA4()
{
  result = qword_22FB20;
  if (!qword_22FB20)
  {
    sub_1CC1C(&qword_22FB18, &qword_1D1DB8);
    sub_1A65B0(&qword_22FB28, &protocol conformance descriptor for JSON);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB20);
  }

  return result;
}

unint64_t sub_1A5F4C()
{
  result = qword_22FB30;
  if (!qword_22FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB30);
  }

  return result;
}

uint64_t Book.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_2B0C(&qword_22FB38, &qword_1D1DC0);
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  __chkstk_darwin(v3);
  v6 = &v27[-v5];
  v7 = sub_2B0C(&qword_22FB40, &qword_1D1DC8);
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27[-v8];
  v10 = sub_2B0C(&qword_22FB48, &unk_1D1DD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27[-v12];
  v14 = a1[3];
  v34 = a1;
  sub_2698(a1, v14);
  sub_1A5DFC();
  v15 = v33;
  sub_1B5864();
  if (!v15)
  {
    v16 = v32;
    v33 = v11;
    v17 = sub_1B5444();
    v18 = (2 * *(v17 + 16)) | 1;
    v35 = v17;
    v36 = v17 + 32;
    v37 = 0;
    v38 = v18;
    v19 = sub_A1170();
    if (v19 == 2 || v37 != v38 >> 1)
    {
      v21 = sub_1B5114();
      swift_allocError();
      v23 = v22;
      sub_2B0C(&qword_22ADB8, &qword_1C2520);
      *v23 = &type metadata for Book.Content;
      sub_1B5314();
      sub_1B50E4();
      (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
      swift_willThrow();
      (*(v33 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = v19;
      if (v19)
      {
        LOBYTE(v39) = 1;
        sub_1A5E50();
        sub_1B5304();
        v20 = v33;
        sub_2B0C(&qword_22FB18, &qword_1D1DB8);
        sub_1A6508();
        v26 = v30;
        sub_1B5404();
        (*(v31 + 8))(v6, v26);
        (*(v20 + 8))(v13, v10);
      }

      else
      {
        LOBYTE(v39) = 0;
        sub_1A5F4C();
        sub_1B5304();
        v25 = v33;
        sub_2B0C(&qword_22FB18, &qword_1D1DB8);
        sub_1A6508();
        sub_1B5404();
        (*(v29 + 8))(v9, v7);
        (*(v25 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v39;
      *(v16 + 8) = v28 & 1;
    }
  }

  return sub_2BF8(v34);
}

unint64_t sub_1A6508()
{
  result = qword_22FB50;
  if (!qword_22FB50)
  {
    sub_1CC1C(&qword_22FB18, &qword_1D1DB8);
    sub_1A65B0(&qword_22FB58, &protocol conformance descriptor for JSON);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB50);
  }

  return result;
}

uint64_t sub_1A65B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4334();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Book.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_43688(v2, v3);
}

uint64_t sub_1A6638()
{
  v1 = *v0;
  v2 = 0x444965726F7473;
  v3 = 0x746E65746E6F63;
  v4 = 0x73656372756F73;
  if (v1 != 3)
  {
    v4 = 0x6C616E6F69746172;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x707954616964656DLL;
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

uint64_t sub_1A66DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9B50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A6704(uint64_t a1)
{
  v2 = sub_1A6A84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A6740(uint64_t a1)
{
  v2 = sub_1A6A84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22FB60, &unk_1D1DE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v23 = *(v1 + 8);
  v20 = *(v1 + 16);
  v19 = *(v1 + 24);
  v8 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v8;
  v16 = *(v1 + 48);
  sub_2698(a1, a1[3]);
  sub_1A6A84();
  v9 = v4;
  sub_1B5884();
  LOBYTE(v21) = 0;
  sub_1B5574();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v19;
  v11 = v20;
  v12 = v17;
  v13 = v18;
  LOBYTE(v21) = v23;
  v24 = 1;
  sub_8E75C();
  sub_1B5544();
  v21 = v11;
  LOBYTE(v22) = v10;
  v24 = 2;
  sub_43688(v11, v10);
  sub_1A6AD8();
  sub_1B54B4();
  sub_43CE0(v21, v22);
  v21 = v13;
  v24 = 3;
  sub_2B0C(&qword_22AA88, &qword_1C12D0);
  sub_90D88(&qword_22AA90, sub_90E00, &protocol conformance descriptor for <A> [A]);
  sub_1B5544();
  v21 = v12;
  v22 = v16;
  v24 = 4;
  sub_1A6B2C();

  sub_1B54B4();

  return (*(v5 + 8))(v7, v9);
}

unint64_t sub_1A6A84()
{
  result = qword_22FB68;
  if (!qword_22FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB68);
  }

  return result;
}

unint64_t sub_1A6AD8()
{
  result = qword_22FB70;
  if (!qword_22FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB70);
  }

  return result;
}

unint64_t sub_1A6B2C()
{
  result = qword_22FB78;
  if (!qword_22FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB78);
  }

  return result;
}

uint64_t Book.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FB80, &qword_1D1DF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_2698(a1, a1[3]);
  sub_1A6A84();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v18) = 0;
  v9 = sub_1B5434();
  v21 = 1;
  sub_8E8C4();
  sub_1B5404();
  v10 = v18;
  v21 = 2;
  sub_1A6F00();
  sub_1B5374();
  v17 = v10;
  v11 = v18;
  v20 = v19;
  sub_2B0C(&qword_22AA88, &qword_1C12D0);
  v21 = 3;
  sub_90D88(&qword_22AAB0, sub_90EA8, &protocol conformance descriptor for <A> [A]);
  sub_1B5404();
  v16 = v18;
  v21 = 4;
  sub_1A6F54();
  sub_1B5374();
  (*(v6 + 8))(v8, v5);
  v12 = v18;
  v13 = v19;
  *a2 = v9;
  *(a2 + 8) = v17;
  v14 = v11;
  *(a2 + 16) = v11;
  LOBYTE(v11) = v20;
  *(a2 + 24) = v20;
  *(a2 + 32) = v16;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  sub_43688(v14, v11);

  sub_2BF8(a1);
  sub_43CE0(v14, v11);
}

unint64_t sub_1A6F00()
{
  result = qword_22FB88;
  if (!qword_22FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB88);
  }

  return result;
}

unint64_t sub_1A6F54()
{
  result = qword_22FB90;
  if (!qword_22FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB90);
  }

  return result;
}

uint64_t sub_1A70C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D7461657274 && a2 == 0xEB00000000444974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A714C(uint64_t a1)
{
  v2 = sub_1A7300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A7188(uint64_t a1)
{
  v2 = sub_1A7300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserInfo.encode(to:)(void *a1)
{
  v2 = sub_2B0C(&qword_22FB98, &qword_1D1DF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_2698(a1, a1[3]);
  sub_1A7300();
  sub_1B5884();
  sub_1B5464();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A7300()
{
  result = qword_22FBA0;
  if (!qword_22FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBA0);
  }

  return result;
}

uint64_t UserInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FBA8, &qword_1D1E00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_2698(a1, a1[3]);
  sub_1A7300();
  sub_1B5864();
  if (!v2)
  {
    v9 = sub_1B5324();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return sub_2BF8(a1);
}

uint64_t sub_1A7500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A758C(uint64_t a1)
{
  v2 = sub_1A7740();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A75C8(uint64_t a1)
{
  v2 = sub_1A7740();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t StoreInfo.encode(to:)(void *a1)
{
  v2 = sub_2B0C(&qword_22FBB0, &qword_1D1E08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_2698(a1, a1[3]);
  sub_1A7740();
  sub_1B5884();
  sub_1B54F4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A7740()
{
  result = qword_22FBB8;
  if (!qword_22FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBB8);
  }

  return result;
}

uint64_t StoreInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FBC0, &qword_1D1E10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_2698(a1, a1[3]);
  sub_1A7740();
  sub_1B5864();
  if (!v2)
  {
    v9 = sub_1B53B4();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return sub_2BF8(a1);
}

uint64_t BookRecommendationRequest.collection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1A796C(v8, v7);
}

__n128 BookRecommendationRequest.init(collection:allowNegativeScores:overrideSource:overrideScorer:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v7;
  *(a5 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = result;
  *(a5 + 74) = a2;
  *(a5 + 72) = v5;
  *(a5 + 73) = v6;
  return result;
}

unint64_t sub_1A79F8()
{
  result = qword_22FBC8;
  if (!qword_22FBC8)
  {
    sub_1CC1C(&qword_22FBD0, &qword_1D1F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBC8);
  }

  return result;
}

unint64_t sub_1A7A64()
{
  result = qword_22FBD8;
  if (!qword_22FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBD8);
  }

  return result;
}

unint64_t sub_1A7ABC()
{
  result = qword_22FBE0;
  if (!qword_22FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBE0);
  }

  return result;
}

unint64_t sub_1A7B14()
{
  result = qword_22FBE8;
  if (!qword_22FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBE8);
  }

  return result;
}

unint64_t sub_1A7B6C()
{
  result = qword_22FBF0;
  if (!qword_22FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBF0);
  }

  return result;
}

unint64_t sub_1A7BC4()
{
  result = qword_22FBF8;
  if (!qword_22FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBF8);
  }

  return result;
}

unint64_t sub_1A7C1C()
{
  result = qword_22FC00;
  if (!qword_22FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FC00);
  }

  return result;
}

uint64_t sub_1A7C70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0xFFFFFF80 | (*(a1 + 32) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A7DE4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7E60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 1 | (a2 << 61);
  *(result + 32) &= 0x101uLL;
  *(result + 48) = v2;
  return result;
}

__n128 sub_1A7EA4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A7EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0xFFFFFF80 | (*(a1 + 32) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A7F1C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 74) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 75) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of BookRecommendationServiceType.fetchRecommendations(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_441B4;

  return v9(a1, a2, a3);
}

uint64_t sub_1A80C8()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  sub_2BF8(v0 + 17);
  sub_2BF8(v0 + 22);

  return swift_deallocClassInstance();
}

unint64_t sub_1A81B8()
{
  result = qword_22FCC8;
  if (!qword_22FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCC8);
  }

  return result;
}

unint64_t sub_1A8210()
{
  result = qword_22FCD0;
  if (!qword_22FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCD0);
  }

  return result;
}

unint64_t sub_1A8268()
{
  result = qword_22FCD8;
  if (!qword_22FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCD8);
  }

  return result;
}

unint64_t sub_1A82C0()
{
  result = qword_22FCE0;
  if (!qword_22FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCE0);
  }

  return result;
}

unint64_t sub_1A8318()
{
  result = qword_22FCE8;
  if (!qword_22FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCE8);
  }

  return result;
}

unint64_t sub_1A8370()
{
  result = qword_22FCF0;
  if (!qword_22FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCF0);
  }

  return result;
}

unint64_t sub_1A83C8()
{
  result = qword_22FCF8;
  if (!qword_22FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCF8);
  }

  return result;
}

uint64_t sub_1A841C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(v3 + 4512) = a2[1];
  v5 = a2[3];
  *(v3 + 4528) = a2[2];
  *(v3 + 4544) = v5;
  *(v3 + 4992) = v2;
  *(v3 + 4984) = a1;
  *(v3 + 4560) = *(a2 + 8);
  *(v3 + 4496) = v4;
  *(v3 + 5091) = *(a2 + 36);
  *(v3 + 5093) = *(a2 + 74);
  return _swift_task_switch(sub_1A8478, 0, 0);
}

uint64_t sub_1A8478()
{
  v1 = *(v0 + 4992);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 5000) = v4;
  *v4 = v0;
  v4[1] = sub_1A85A8;

  return v6(v0 + 16, v2, v3);
}

uint64_t sub_1A85A8()
{
  *(*v1 + 5008) = v0;

  if (v0)
  {
    v2 = sub_1A92E0;
  }

  else
  {
    v2 = sub_1A86BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1A86BC()
{
  v1 = *(v0 + 5091);
  v2 = *(v0 + 4992);
  memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
  sub_2698((v2 + 56), *(v2 + 80));
  v3 = *(v0 + 4512);
  v4 = *(v0 + 4544);
  *(v0 + 4600) = *(v0 + 4528);
  *(v0 + 4616) = v4;
  *(v0 + 4632) = *(v0 + 4560);
  *(v0 + 4568) = *(v0 + 4496);
  *(v0 + 4584) = v3;
  memcpy((v0 + 2256), (v0 + 1136), 0x460uLL);
  *(v0 + 5089) = v1;
  sub_1A796C(v0 + 4496, v0 + 4640);
  v5 = swift_task_alloc();
  *(v0 + 5016) = v5;
  *v5 = v0;
  v5[1] = sub_1A87F8;

  return sub_15F0F0(v0 + 5088, (v0 + 4568), v0 + 2256, (v0 + 5089));
}

uint64_t sub_1A87F8(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2 + 4568);
  *(v3 + 5024) = a1;
  *(v3 + 5032) = v1;

  if (v1)
  {
    v5 = *(v3 + 4584);
    v6 = *(v3 + 4600);
    v7 = *(v3 + 4616);
    *(v3 + 4776) = *(v3 + 4632);
    v8 = *v4;
    *(v3 + 4744) = v6;
    *(v3 + 4760) = v7;
    *(v3 + 4712) = v8;
    *(v3 + 4728) = v5;
    sub_1A9D10(v3 + 4712);
    v9 = sub_1A8BC8;
  }

  else
  {
    *(v3 + 4784) = *v4;
    v10 = *(v3 + 4584);
    v11 = *(v3 + 4600);
    v12 = *(v3 + 4616);
    *(v3 + 4848) = *(v3 + 4632);
    *(v3 + 4832) = v12;
    *(v3 + 4816) = v11;
    *(v3 + 4800) = v10;
    sub_1A9D10(v3 + 4784);
    v9 = sub_1A8978;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1A8978()
{
  v1 = v0[624];
  v2 = v1[25];
  v3 = v1[26];
  sub_2698(v1 + 22, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[630] = v4;
  *v4 = v0;
  v4[1] = sub_1A8AA8;
  v5 = v0[628];

  return v7(v5, v2, v3);
}

uint64_t sub_1A8AA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 5048) = a1;
  *(v3 + 5056) = v1;

  if (v1)
  {
    v4 = sub_1A92F8;
  }

  else
  {

    v4 = sub_1A8C2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1A8BC8()
{
  sub_2B54(v0 + 1136);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A8C2C()
{
  v1 = *(v0 + 5092);
  if (v1 == 3)
  {
    v2 = *(v0 + 4544) >> 61;
    if (v2 <= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          LOBYTE(v1) = *(v0 + 1169);
        }

        else
        {
          LOBYTE(v1) = *(v0 + 1172);
        }
      }

      else
      {
        LOBYTE(v1) = *(v0 + 1170);
      }
    }

    else if (v2 > 4)
    {
      if (v2 == 5)
      {
        LOBYTE(v1) = *(v0 + 1185);
      }

      else
      {
        LOBYTE(v1) = *(v0 + 1201);
      }
    }

    else if (v2 == 3)
    {
      LOBYTE(v1) = *(v0 + 1174);
    }

    else
    {
      LOBYTE(v1) = *(v0 + 1176);
    }
  }

  sub_2698((*(v0 + 4992) + 136), *(*(v0 + 4992) + 160));
  memcpy((v0 + 3376), (v0 + 1136), 0x460uLL);
  *(v0 + 5090) = v1;
  v3 = swift_task_alloc();
  *(v0 + 5064) = v3;
  *v3 = v0;
  v3[1] = sub_1A8D74;
  v4 = *(v0 + 5048);

  return sub_8F880(v4, v0 + 3376, (v0 + 5090));
}

uint64_t sub_1A8D74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 5072) = a1;
  *(v3 + 5080) = v1;

  if (v1)
  {
    v4 = sub_1A927C;
  }

  else
  {
    v4 = sub_1A8E9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1A8E9C(uint64_t isUniquelyReferenced_nonNull_native)
{
  v38 = v2;
  v4 = *(v2 + 5072);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v2 + 4856);
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v9 = (v4 + 32 + (v6 << 6));
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      *(v2 + 4888) = v9[2];
      *(v2 + 4904) = v12;
      *v7 = v10;
      *(v2 + 4872) = v11;
      v13 = *(v2 + 4544) >> 61;
      if (v13 > 3)
      {
        v14 = (v2 + 4496);
        if (v13 != 4)
        {
          v14 = (v2 + 4512);
          if (v13 != 5)
          {
            v14 = (v2 + 4552);
          }
        }
      }

      else
      {
        v14 = (v2 + 4504);
        if ((v13 - 1) >= 3)
        {
          v1 = _swiftEmptySetSingleton;
          goto LABEL_12;
        }
      }

      v1 = *v14;

LABEL_12:
      ++v6;
      if (v1[2] && (v3 = *v7, v15 = sub_1B57E4(), v16 = -1 << *(v1 + 32), v17 = v15 & ~v16, ((*(v1 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (*(v1[6] + 8 * v17) != v3)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v1 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (v6 == v5)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_17:
        sub_42BA4(v2 + 4856, v2 + 4920);

        v37 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_375F8(0, *(v8 + 2) + 1, 1);
          v8 = v37;
        }

        v3 = *(v8 + 2);
        v19 = *(v8 + 3);
        v1 = (v3 + 1);
        if (v3 >= v19 >> 1)
        {
          sub_375F8((v19 > 1), v3 + 1, 1);
          v8 = v37;
        }

        *(v8 + 2) = v1;
        v20 = &v8[64 * v3];
        v21 = *v7;
        v22 = *(v2 + 4872);
        v23 = *(v2 + 4904);
        *(v20 + 4) = *(v2 + 4888);
        *(v20 + 5) = v23;
        *(v20 + 2) = v21;
        *(v20 + 3) = v22;
        if (v6 == v5)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_24:
  v24 = *(v2 + 5080);
  v25 = *(v2 + 5093);

  v26 = sub_1A4AC0(v25, v8);

  v37 = v26;

  sub_84C1C(&v37);
  if (v24)
  {
  }

  v8 = sub_43174();
  if ((v30 & 1) == 0)
  {
    goto LABEL_29;
  }

  v4 = v30;
  v3 = v29;
  v1 = v28;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = _swiftEmptyArrayStorage;
  }

  v34 = v33[2];

  if (__OFSUB__(v4 >> 1, v3))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v34 != (v4 >> 1) - v3)
  {
LABEL_42:
    swift_unknownObjectRelease();
    v30 = v4;
    v29 = v3;
    v28 = v1;
LABEL_29:
    sub_511BC(v8, v28, v29, v30);
    v32 = v31;
LABEL_36:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v32 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v32)
  {
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

LABEL_37:
  v35 = *(v2 + 4984);
  *v35 = v32;
  memcpy(v35 + 1, (v2 + 1136), 0x460uLL);
  v36 = *(v2 + 8);

  return v36();
}

uint64_t sub_1A927C()
{
  sub_2B54(v0 + 1136);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A92F8()
{

  sub_2B54(v0 + 1136);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9364(uint64_t a1, __int128 *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226C;

  return sub_1A841C(a1, a2);
}

uint64_t sub_1A9410(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 2288) = a1[1];
  v3 = a1[3];
  *(v1 + 2304) = a1[2];
  *(v1 + 2320) = v3;
  *(v1 + 2331) = *(a1 + 59);
  *(v1 + 2272) = v2;
  v4 = swift_task_alloc();
  *(v1 + 2352) = v4;
  *v4 = v1;
  v4[1] = sub_1A94D0;

  return sub_1A841C(v1 + 16, (v1 + 2272));
}

uint64_t sub_1A94D0()
{
  *(*v1 + 2360) = v0;

  if (v0)
  {
    v2 = sub_1A9668;
  }

  else
  {
    v2 = sub_1A95E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1A95E4()
{
  memcpy(v0 + 143, v0 + 2, 0x468uLL);
  v1 = v0[143];

  sub_1A9D40((v0 + 143));
  v2 = v0[1];

  return v2(v1);
}

unint64_t sub_1A9684()
{
  result = qword_22FD00;
  if (!qword_22FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD00);
  }

  return result;
}

unint64_t sub_1A96DC()
{
  result = qword_22FD08;
  if (!qword_22FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD08);
  }

  return result;
}

unint64_t sub_1A9734()
{
  result = qword_22FD10;
  if (!qword_22FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD10);
  }

  return result;
}

unint64_t sub_1A978C()
{
  result = qword_22FD18;
  if (!qword_22FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD18);
  }

  return result;
}

unint64_t sub_1A97E4()
{
  result = qword_22FD20;
  if (!qword_22FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD20);
  }

  return result;
}

unint64_t sub_1A983C()
{
  result = qword_22FD28;
  if (!qword_22FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD28);
  }

  return result;
}

unint64_t sub_1A9894()
{
  result = qword_22FD30;
  if (!qword_22FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD30);
  }

  return result;
}

unint64_t sub_1A98EC()
{
  result = qword_22FD38;
  if (!qword_22FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD38);
  }

  return result;
}

unint64_t sub_1A9944()
{
  result = qword_22FD40;
  if (!qword_22FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD40);
  }

  return result;
}

unint64_t sub_1A999C()
{
  result = qword_22FD48;
  if (!qword_22FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD48);
  }

  return result;
}

unint64_t sub_1A99F4()
{
  result = qword_22FD50;
  if (!qword_22FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD50);
  }

  return result;
}

unint64_t sub_1A9A4C()
{
  result = qword_22FD58;
  if (!qword_22FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD58);
  }

  return result;
}

unint64_t sub_1A9AA4()
{
  result = qword_22FD60;
  if (!qword_22FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD60);
  }

  return result;
}

unint64_t sub_1A9AFC()
{
  result = qword_22FD68;
  if (!qword_22FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD68);
  }

  return result;
}

uint64_t sub_1A9B50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616E6F69746172 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1A9D94()
{
  result = qword_22FD70;
  if (!qword_22FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD70);
  }

  return result;
}

unint64_t sub_1A9DE8()
{
  result = qword_22FD78;
  if (!qword_22FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD78);
  }

  return result;
}

char *sub_1A9E3C(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    memcpy(__dst, v6, 0x231uLL);
    memcpy(__src, v6, 0x231uLL);
    sub_4299C(__dst, v20);
    a1(&v21, __src);
    if (v3)
    {
      break;
    }

    memcpy(v20, __src, 0x231uLL);
    sub_2601C(v20);
    if (v23)
    {
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_3349C(0, *(v7 + 2) + 1, 1, v7);
      }

      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      if (v9 >= v8 >> 1)
      {
        v7 = sub_3349C((v8 > 1), v9 + 1, 1, v7);
      }

      v14 = v18;
      v15 = v19;
      v10 = v16;
      v13 = v17;
      *(v7 + 2) = v9 + 1;
      v11 = &v7[64 * v9];
      *(v11 + 4) = v14;
      *(v11 + 5) = v15;
      *(v11 + 2) = v10;
      *(v11 + 3) = v13;
    }

    else
    {
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      sub_42F48(&v16, &qword_22BC40, &unk_1C5DC0);
    }

    v6 += 568;
    if (!--v4)
    {
      return v7;
    }
  }

  memcpy(v20, __src, 0x231uLL);
  sub_2601C(v20);

  return v7;
}

char *sub_1AA034(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; i += 568)
  {
    memcpy(v17, i, 0x231uLL);
    memcpy(v16, i, 0x231uLL);
    sub_4299C(v17, v14);
    a1(__src, v16);
    if (v3)
    {
      break;
    }

    memcpy(v13, v16, 0x231uLL);
    sub_2601C(v13);
    memcpy(v14, __src, 0x231uLL);
    if (sub_6153C(v14) == 1)
    {
      memcpy(__dst, __src, 0x231uLL);
      sub_42F48(__dst, &qword_229890, &qword_1BCCE0);
    }

    else
    {
      memcpy(__dst, __src, 0x231uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_33128(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_33128((v8 > 1), v9 + 1, 1, v6);
      }

      memcpy(v11, __dst, sizeof(v11));
      *(v6 + 2) = v9 + 1;
      memcpy(&v6[568 * v9 + 32], v11, 0x231uLL);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  memcpy(v14, v16, 0x231uLL);
  sub_2601C(v14);

  return v6;
}

uint64_t sub_1AA224(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_1B4414();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v20, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if (v21)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v19 = v21;
    v13 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_34EF4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v15 = v8[2];
    v14 = v8[3];
    v16 = v15 + 1;
    v17 = v19;
    if (v15 >= v14 >> 1)
    {
      v22 = v15 + 1;
      result = sub_34EF4((v14 > 1), v15 + 1, 1, v8);
      v17 = v19;
      v16 = v22;
      v8 = result;
    }

    v8[2] = v16;
    v18 = &v8[3 * v15];
    v18[4] = v13;
    *(v18 + 5) = v17;
  }

  while (v7 != v4);
  return v8;
}

uint64_t UserEncodingService.userEncodings()()
{
  v1[156] = v0;
  v2 = sub_1B4414();
  v1[157] = v2;
  v1[158] = *(v2 - 8);
  v1[159] = swift_task_alloc();
  v3 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  v1[160] = v3;
  v1[161] = *(v3 - 8);
  v1[162] = swift_task_alloc();
  v4 = sub_1B45D4();
  v1[163] = v4;
  v1[164] = *(v4 - 8);
  v1[165] = swift_task_alloc();

  return _swift_task_switch(sub_1AA554, 0, 0);
}

uint64_t sub_1AA554()
{
  sub_2698((v0[156] + 24), *(v0[156] + 48));
  v1 = swift_task_alloc();
  v0[166] = v1;
  *v1 = v0;
  v1[1] = sub_1AA600;
  v2 = v0[165];

  return sub_85E74(v2, 1);
}

uint64_t sub_1AA600()
{
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v2 = sub_1AAB34;
  }

  else
  {
    v2 = sub_1AA714;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1AA714()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1320);
  *(swift_task_alloc() + 16) = v2;
  sub_1B4444();
  if (v1)
  {
    v3 = *(v0 + 1320);
    v4 = *(v0 + 1312);
    v5 = *(v0 + 1304);

    (*(v4 + 8))(v3, v5);
LABEL_5:

    v18 = *(v0 + 8);

    return v18();
  }

  sub_1B4454();
  memcpy((v0 + 16), (v0 + 448), 0x1B0uLL);
  sub_87F64(v0 + 64, v0 + 1064);
  sub_726C8(v0 + 16);
  v6 = *(v0 + 208);
  *(v0 + 1008) = *(v0 + 192);
  *(v0 + 1024) = v6;
  *(v0 + 1040) = *(v0 + 224);
  *(v0 + 1056) = *(v0 + 240);
  v7 = *(v0 + 144);
  *(v0 + 944) = *(v0 + 128);
  *(v0 + 960) = v7;
  v8 = *(v0 + 176);
  *(v0 + 976) = *(v0 + 160);
  *(v0 + 992) = v8;
  v9 = *(v0 + 80);
  *(v0 + 880) = *(v0 + 64);
  *(v0 + 896) = v9;
  v10 = *(v0 + 112);
  *(v0 + 912) = *(v0 + 96);
  *(v0 + 928) = v10;
  if (sub_87EF8(v0 + 880) == 1)
  {
    v11 = *(v0 + 1320);
    v12 = *(v0 + 1312);
    v13 = *(v0 + 1304);
    v14 = *(v0 + 1296);
    v15 = *(v0 + 1288);
    v16 = *(v0 + 1280);
    sub_1AB030();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);

    goto LABEL_5;
  }

  v20 = *(v0 + 1056);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = *(v0 + 1264);
    sub_37ADC(0, v21, 0);
    v23 = v20 + 40;
    do
    {

      sub_1B43F4();
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        sub_37ADC((v24 > 1), v25 + 1, 1);
      }

      v26 = *(v0 + 1272);
      v27 = *(v0 + 1256);
      _swiftEmptyArrayStorage[2] = v25 + 1;
      (*(v22 + 32))(_swiftEmptyArrayStorage + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v25, v26, v27);
      v23 += 16;
      --v21;
    }

    while (v21);
  }

  sub_42F48(v0 + 64, &qword_22A610, &qword_1CF5C0);
  v28 = *(v0 + 1320);
  v29 = *(v0 + 1312);
  v30 = *(v0 + 1296);
  v31 = *(v0 + 1288);
  v32 = *(v0 + 1280);
  v36 = *(v0 + 1304);
  v33 = swift_task_alloc();
  *(v33 + 16) = v30;
  v34 = sub_1AA224(sub_1AB2B4, v33, _swiftEmptyArrayStorage);

  (*(v31 + 8))(v30, v32);
  (*(v29 + 8))(v28, v36);

  v35 = *(v0 + 8);

  return v35(v34);
}

uint64_t sub_1AAB34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AABB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B40F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1B45D4();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v36 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B4414();
  v11 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 192);
  v39[8] = *(a1 + 176);
  v39[9] = v14;
  v40 = *(a1 + 208);
  v41 = *(a1 + 224);
  v15 = *(a1 + 128);
  v39[4] = *(a1 + 112);
  v39[5] = v15;
  v16 = *(a1 + 160);
  v39[6] = *(a1 + 144);
  v39[7] = v16;
  v17 = *(a1 + 64);
  v39[0] = *(a1 + 48);
  v39[1] = v17;
  v18 = *(a1 + 96);
  v39[2] = *(a1 + 80);
  v39[3] = v18;
  if (sub_87EF8(v39) == 1)
  {
    v19 = 0;
  }

  else
  {
    v33 = v8;
    v32 = a2;
    v20 = *(&v40 + 1);
    v21 = *(*(&v40 + 1) + 16);
    v22 = _swiftEmptyArrayStorage;
    if (v21)
    {
      v31[0] = v7;
      v31[1] = a3;
      v31[2] = v3;
      v38 = _swiftEmptyArrayStorage;
      sub_37ADC(0, v21, 0);
      v22 = v38;
      v23 = v20 + 40;
      v24 = v42;
      do
      {

        sub_1B43F4();
        v38 = v22;
        v26 = v22[2];
        v25 = v22[3];
        if (v26 >= v25 >> 1)
        {
          sub_37ADC((v25 > 1), v26 + 1, 1);
          v24 = v42;
          v22 = v38;
        }

        v22[2] = v26 + 1;
        (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, v13, v24);
        v23 += 16;
        --v21;
      }

      while (v21);
      v7 = v31[0];
    }

    v27 = v33;
    if (v22[2])
    {
      (*(v34 + 16))(v36, v32, v35);
      v28 = v37;
      sub_1B40E4();
      sub_1B40D4();
      (*(v27 + 8))(v28, v7);

      sub_40F30(v22);

      return sub_1B45A4();
    }

    v19 = 1;
  }

  sub_1AB030();
  swift_allocError();
  *v30 = v19;
  return swift_willThrow();
}

unint64_t sub_1AB030()
{
  result = qword_22FD80;
  if (!qword_22FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD80);
  }

  return result;
}

uint64_t sub_1AB084@<X0>(uint64_t *a2@<X8>)
{
  sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  sub_9AEA0();
  v4 = sub_1B4504();
  if (v2)
  {
    if (qword_228308 != -1)
    {
      swift_once();
    }

    v5 = qword_22E350;
    v6 = sub_1B4D94();
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BCA80;
    sub_1B4414();
    sub_1B51F4();
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_76888();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    sub_1B4614("Unable to extract user feature %{public}@ from output", 53, 2, &dword_0, v5, v6, v7);

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v9 = v4;
    result = sub_1B4404();
    *a2 = result;
    a2[1] = v10;
    a2[2] = v9;
  }

  return result;
}

uint64_t sub_1AB224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_91B58;

  return UserEncodingService.userEncodings()();
}

uint64_t dispatch thunk of UserEncodingServiceType.userEncodings()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_441B4;

  return v7(a1, a2);
}

unint64_t sub_1AB438()
{
  result = qword_22FE30;
  if (!qword_22FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FE30);
  }

  return result;
}

uint64_t sub_1AB48C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionRecommendation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0x202020200A5BLL;
  v23 = 0xE600000000000000;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_3747C(0, v6, 0);
    v7 = v21;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_FF9B8(v8, v5);
      v10 = CollectionRecommendation.clusteringDebugDescription.getter();
      v12 = v11;
      sub_5DC0C(v5);
      v21 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_3747C((v13 > 1), v14 + 1, 1);
        v7 = v21;
      }

      v7[2] = v14 + 1;
      v15 = &v7[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v21 = v7;
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590, &protocol conformance descriptor for [A]);
  v16 = sub_1B4764();
  v18 = v17;

  v24._countAndFlagsBits = v16;
  v24._object = v18;
  sub_1B48D4(v24);

  v25._countAndFlagsBits = 93;
  v25._object = 0xE100000000000000;
  sub_1B48D4(v25);
  return v22;
}

_OWORD *CollectionRecommendation.books.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v2);
  v4 = (&v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-1] - v7;
  sub_FF9B8(v1, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0xCu:
      goto LABEL_2;
    case 2u:
      v14 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v16, v4 + *(v14 + 48), 0x231uLL);
      sub_2601C(v16);

LABEL_2:
      (*(v6 + 32))(v8, v4, v5);
      sub_1B4394();
      (*(v6 + 8))(v8, v5);
      result = v16[0];
      break;
    case 9u:
      sub_5DC0C(v4);
      result = _swiftEmptyArrayStorage;
      break;
    default:
      sub_2B0C(&qword_229368, &qword_1BC408);
      result = swift_allocObject();
      v10 = *v4;
      v11 = v4[1];
      result[1] = xmmword_1BCA80;
      result[2] = v10;
      v12 = v4[2];
      v13 = v4[3];
      result[3] = v11;
      result[4] = v12;
      result[5] = v13;
      break;
  }

  return result;
}

double sub_1AB914(long double a1)
{
  v2 = v1;
  v4 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  v8 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v2, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0xCu:
      goto LABEL_2;
    case 2u:
      v15 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v17, &v10[*(v15 + 48)], 0x231uLL);
      sub_2601C(v17);

LABEL_2:
      (*(v5 + 32))(v7, v10, v4);
      sub_1B03B0(a1);
      v12 = v11;
      (*(v5 + 8))(v7, v4);
      break;
    case 9u:
      v12 = *(v10 + 11);
      sub_CBD44(*(v10 + 2), *(v10 + 3), *(v10 + 4), *(v10 + 5), *(v10 + 6), *(v10 + 7), *(v10 + 8), *(v10 + 9), *(v10 + 10));
      break;
    default:
      v13 = *(v10 + 1);
      v17[0] = *v10;
      v17[1] = v13;
      v14 = *(v10 + 3);
      v17[2] = *(v10 + 2);
      v17[3] = v14;
      sub_43FF4(v17);
      v12 = *(&v17[3] + 1);
      break;
  }

  return v12;
}

__n128 ClusterableBook.init(scoredBook:authorIDs:genreIDs:methodologies:bisacCodes:seriesMembership:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a6 + 32);
  v8 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v8;
  v9 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v9;
  *(a7 + 64) = a2;
  *(a7 + 72) = a3;
  *(a7 + 80) = a4;
  *(a7 + 88) = a5;
  result = *a6;
  v11 = *(a6 + 16);
  *(a7 + 96) = *a6;
  *(a7 + 112) = v11;
  *(a7 + 128) = v7;
  return result;
}

uint64_t sub_1ABBA0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_111A38(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABCA4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_111CE0(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD84(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1129A0(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ClusteringOptions.MediaType.rawValue.getter()
{
  v1 = 0x6F6F626F69647561;
  if (*v0 != 1)
  {
    v1 = 0x646578696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6F6F6265;
  }
}

void *CollectionRecommendation.booksIDs.getter()
{
  v0 = CollectionRecommendation.books.getter();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = v0;
    sub_3741C(0, v1, 0);
    v3 = v2;
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 2;
    do
    {
      v6 = *&v3[v5];
      v7 = _swiftEmptyArrayStorage[3];
      if (v4 >= v7 >> 1)
      {
        sub_3741C((v7 > 1), v4 + 1, 1);
        v3 = v2;
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      _swiftEmptyArrayStorage[v4 + 4] = v6;
      v5 += 4;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *CollectionRecommendation.genreIDs.getter()
{
  v1 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v4 = *&v3[*(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48)];
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BCA80;
    *(v5 + 32) = v4;
    v6 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v6 - 8) + 8))(v3, v6);
    return v5;
  }

  else
  {
    sub_5DC0C(v3);
    return _swiftEmptyArrayStorage;
  }
}

void *CollectionRecommendation.seedBooks.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_FF9B8(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = sub_2B0C(&qword_228F40, &unk_1BB360);
    memcpy(v10, &v4[*(v5 + 48)], sizeof(v10));

    sub_2B0C(&qword_229218, &unk_1C0210);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BCA80;
    memcpy((v6 + 32), v10, 0x231uLL);
    v7 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v7 - 8) + 8))(v4, v7);
    return v6;
  }

  else
  {
    sub_5DC0C(v4);
    return _swiftEmptyArrayStorage;
  }
}

void *CollectionRecommendation.authorIDs.getter()
{
  v1 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v4 = *&v3[*(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48)];
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BCA80;
    *(v5 + 32) = v4;
    v6 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v6 - 8) + 8))(v3, v6);
    return v5;
  }

  else
  {
    sub_5DC0C(v3);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1AC3B0()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_22FE38);
  sub_50E58(v0, qword_22FE38);
  return sub_1B4634();
}

__n128 ClusterableBook.seriesMembership.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  result = *(v1 + 96);
  v4 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1AC444()
{
  v1 = *v0;
  v2 = 0x6F426465726F6373;
  v3 = 0x6C6F646F6874656DLL;
  v4 = 0x646F436361736962;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4449726F68747561;
  if (v1 != 1)
  {
    v5 = 0x73444965726E6567;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AC518@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B19D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AC540(uint64_t a1)
{
  v2 = sub_1B0630();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AC57C(uint64_t a1)
{
  v2 = sub_1B0630();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClusterableBook.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22FE50, &qword_1D3260);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = v1[1];
  v36 = *v1;
  v37 = v7;
  v8 = v1[3];
  v38 = v1[2];
  v39 = v8;
  v9 = *(v1 + 9);
  v22 = *(v1 + 8);
  v21 = v9;
  v10 = *(v1 + 11);
  v20 = *(v1 + 10);
  v19 = v10;
  v11 = v1[6];
  v17 = v1[7];
  v18 = v11;
  v16 = *(v1 + 128);
  sub_2698(a1, a1[3]);
  sub_42BA4(&v36, &v32);
  sub_1B0630();
  sub_1B5884();
  v32 = v36;
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v31 = 0;
  sub_11B7AC();
  v12 = v40;
  sub_1B5544();
  if (v12)
  {
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v30 = v35;
    sub_43FF4(&v27);
  }

  else
  {
    v13 = v21;
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v30 = v35;
    sub_43FF4(&v27);
    *&v23 = v22;
    v26 = 1;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
    sub_1B5544();
    *&v23 = v13;
    v26 = 2;
    sub_1B5544();
    *&v23 = v20;
    v26 = 3;
    sub_2B0C(&qword_22C730, &qword_1C6FB0);
    sub_11BBF0();
    sub_1B5544();
    *&v23 = v19;
    v26 = 4;
    sub_2B0C(&qword_22FE60, &qword_1D3268);
    sub_1B0684(&qword_22FE68, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    sub_1B5544();
    v24 = v17;
    v23 = v18;
    v25 = v16;
    v26 = 5;
    sub_8E870();
    sub_1B54B4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ClusterableBook.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FE70, &qword_1D3270);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v32 = a1;
  sub_2698(a1, v9);
  sub_1B0630();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(v32);
  }

  v31 = v6;
  v64 = 0;
  sub_11BE78();
  v10 = v5;
  sub_1B5404();
  v59 = v55;
  v60 = v56;
  v61 = v57;
  v62 = v58;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  LOBYTE(v33) = 1;
  sub_8E804(&qword_22A8F8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
  sub_1B5404();
  v30 = *&v42[0];
  LOBYTE(v33) = 2;
  sub_1B5404();
  v11 = *&v42[0];
  sub_2B0C(&qword_22C730, &qword_1C6FB0);
  LOBYTE(v33) = 3;
  sub_11BF74();
  sub_1B5404();
  v12 = v31;
  v29 = *&v42[0];
  sub_2B0C(&qword_22FE60, &qword_1D3268);
  LOBYTE(v33) = 4;
  sub_1B0684(&qword_22FE78, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
  sub_1B5404();
  v28 = *&v42[0];
  v63 = 5;
  sub_8E9E4();
  sub_1B5374();
  (*(v12 + 8))(v8, v10);
  v13 = *(&v52 + 1);
  v31 = v52;
  v26 = *(&v53 + 1);
  v27 = v53;
  v33 = v59;
  v34 = v60;
  v35 = v61;
  v36 = v62;
  v15 = v29;
  v14 = v30;
  *&v37 = v30;
  *(&v37 + 1) = v11;
  v16 = v28;
  *&v38 = v29;
  *(&v38 + 1) = v28;
  v39 = v52;
  v17 = v54;
  v40 = v53;
  v41 = v54;
  v18 = v52;
  v19 = v53;
  *(a2 + 128) = v54;
  *(a2 + 96) = v18;
  *(a2 + 112) = v19;
  v20 = v33;
  v21 = v34;
  v22 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v22;
  v23 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v23;
  *a2 = v20;
  *(a2 + 16) = v21;
  sub_429F8(&v33, v42);
  sub_2BF8(v32);
  v42[0] = v59;
  v42[1] = v60;
  v42[2] = v61;
  v42[3] = v62;
  v43 = v14;
  v44 = v11;
  v45 = v15;
  v46 = v16;
  v47 = v31;
  v48 = v13;
  v49 = v27;
  v50 = v26;
  v51 = v17;
  return sub_5C740(v42);
}

BooksPersonalization::ClusteringOptions::MediaType_optional __swiftcall ClusteringOptions.MediaType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_214110;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

void sub_1AD024(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE90000000000006BLL;
  v5 = 0x6F6F626F69647561;
  if (v2 != 1)
  {
    v5 = 0x646578696DLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B6F6F6265;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AD140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6F626F69647561;
  v4 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v3 = 0x646578696DLL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6B6F6F6265;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6F6F626F69647561;
  v8 = 0xE90000000000006BLL;
  if (*a2 != 1)
  {
    v7 = 0x646578696DLL;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6B6F6F6265;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_1AD240()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1AD2E0(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_1AD36C(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t ClusteringOptions.init(minBooksCount:maxBooksCount:booksInGenreAllowedGenres:optionsByCollectionRecommendationType:wildcardMaximumCount:overrideWildcardEnabledCollectionTypes:overrideWildcardMediaTypes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a4;
  a8[3] = a3;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1AD41C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x736B6F6F4278616DLL;
    if (v1 != 1)
    {
      v5 = 0xD000000000000025;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x736B6F6F426E696DLL;
    }
  }

  else
  {
    v2 = 0xD000000000000026;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000019;
    if (v1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1AD514@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1BF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AD53C(uint64_t a1)
{
  v2 = sub_1B06F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AD578(uint64_t a1)
{
  v2 = sub_1B06F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClusteringOptions.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22FE80, &unk_1D3278);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v24 = v1[2];
  v25 = v8;
  v10 = v1[5];
  v22 = v1[4];
  v23 = v9;
  v21 = v10;
  v11 = v1[6];
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  sub_2698(v13, v12);
  sub_1B06F0();
  sub_1B5884();
  LOBYTE(v27) = 0;
  sub_1B5534();
  if (!v2)
  {
    v16 = v23;
    v17 = v24;
    v20 = v11;
    LOBYTE(v27) = 1;
    sub_1B5534();
    v27 = v17;
    v26 = 2;
    sub_2B0C(&qword_22C580, &qword_1C6F00);
    sub_101798(&qword_22C588, sub_71620, sub_100B18, &protocol conformance descriptor for <> [A : B]);
    sub_1B5544();
    v27 = v16;
    v26 = 3;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
    sub_1B5544();
    LOBYTE(v27) = 4;
    sub_1B5534();
    v27 = v21;
    v26 = 5;
    sub_2B0C(&qword_22FE90, &qword_1D3288);
    sub_1B0744();
    sub_1B54B4();
    v27 = v20;
    v26 = 6;
    sub_2B0C(&qword_22C610, &qword_1D3290);
    sub_11B4F4();
    sub_1B54B4();
  }

  return (*(v5 + 8))(v7, v15);
}

uint64_t ClusteringOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FEA0, &qword_1D3298);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_2698(a1, a1[3]);
  sub_1B06F0();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v23) = 0;
  v9 = sub_1B53F4();
  LOBYTE(v23) = 1;
  v21 = sub_1B53F4();
  sub_2B0C(&qword_22C580, &qword_1C6F00);
  v22 = 2;
  sub_101798(&qword_22C5E0, sub_71328, sub_101828, &protocol conformance descriptor for <> [A : B]);
  sub_1B5404();
  v20 = v23;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  v22 = 3;
  sub_8E804(&qword_22A8F8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
  sub_1B5404();
  v19 = v23;
  LOBYTE(v23) = 4;
  v18 = sub_1B53F4();
  sub_2B0C(&qword_22FE90, &qword_1D3288);
  v22 = 5;
  sub_1B07C8();
  sub_1B5374();
  v11 = v23;
  sub_2B0C(&qword_22C610, &qword_1D3290);
  v22 = 6;
  sub_11B578();
  sub_1B5374();
  (*(v6 + 8))(v8, v5);
  v12 = v23;
  v14 = v20;
  v13 = v21;
  *a2 = v9;
  a2[1] = v13;
  v15 = v18;
  v16 = v19;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v15;
  a2[5] = v11;
  a2[6] = v12;

  sub_2BF8(a1);
}

uint64_t sub_1ADDC4()
{
  if (*v0)
  {
    return 0x64657463656C6573;
  }

  else
  {
    return 0x6E656D6D6F636572;
  }
}

uint64_t sub_1ADE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF7344496B6F6F42)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1ADF04(uint64_t a1)
{
  v2 = sub_1B084C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1ADF40(uint64_t a1)
{
  v2 = sub_1B084C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookClusteringResult.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22FEB0, &unk_1D32A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  sub_2698(a1, a1[3]);
  sub_1B084C();

  sub_1B5884();
  v12 = v8;
  v11 = 0;
  sub_2B0C(&qword_22C810, &qword_1C7038);
  sub_1B08A0(&qword_22C818, &qword_22C820, &protocol conformance descriptor for CollectionRecommendation, &protocol conformance descriptor for <A> [A]);
  sub_1B5544();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
    sub_1B5544();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t BookClusteringResult.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FEC0, &qword_1D32B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_2698(a1, a1[3]);
  sub_1B084C();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  sub_2B0C(&qword_22C810, &qword_1C7038);
  v13 = 0;
  sub_1B08A0(&qword_22C830, &qword_22C838, &protocol conformance descriptor for CollectionRecommendation, &protocol conformance descriptor for <A> [A]);
  sub_1B5404();
  v9 = v14;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  v13 = 1;
  sub_8E804(&qword_22A8F8, &protocol witness table for UInt64, &protocol conformance descriptor for <> Set<A>);
  sub_1B5404();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  sub_2BF8(a1);
}

unint64_t sub_1AE46C()
{
  v1 = *v0;
  v2 = 0x6B6F6F4264656573;
  v3 = 0x72756769666E6F63;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x54644965726E6567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1AE530@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1E40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AE558(uint64_t a1)
{
  v2 = sub_1B096C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AE594(uint64_t a1)
{
  v2 = sub_1B096C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookClusteringRequest.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22FEC8, &qword_1D32B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v24 = v1[1];
  memcpy(v35, v1 + 2, 0x460uLL);
  v8 = v1[142];
  v9 = v1[143];
  v10 = v1[145];
  v19 = v1[144];
  v20 = v10;
  v11 = v1[146];
  v17 = v9;
  v18 = v11;
  v21 = v1[147];
  v22 = v1[148];
  v23 = v8;
  v16 = v1[149];
  sub_2698(a1, a1[3]);
  sub_1B096C();

  sub_1B5884();
  v34[0] = v7;
  v33[0] = 0;
  sub_2B0C(&qword_229710, &unk_1D32C0);
  sub_11C3B0();
  v12 = v36;
  sub_1B5544();
  if (v12)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = v23;

    v34[0] = v24;
    v33[0] = 1;
    sub_2B0C(&qword_22AA48, &qword_1CD280);
    sub_1B09C0();
    sub_1B5544();
    memcpy(v34, v35, sizeof(v34));
    v33[1127] = 2;
    sub_84BC0(v35, v33);
    sub_1B0A44();
    sub_1B5544();
    v36 = v4;
    memcpy(v33, v34, 0x460uLL);
    sub_2B54(v33);
    v26 = v13;
    v27 = v17;
    v28 = v19;
    v29 = v20;
    v30 = v18;
    v31 = v21;
    v32 = v22;
    v25 = 3;
    sub_100AC4();

    sub_1B5544();

    v26 = v16;
    v25 = 4;
    sub_2B0C(&qword_22FEE0, &qword_1D32D0);
    sub_1B0B70(&qword_22FEE8, &protocol witness table for UInt64, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    sub_1B5544();
    return (*(v36 + 8))(v6, v3);
  }
}

uint64_t BookClusteringRequest.init(from:)(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_2B0C(&qword_22FEF0, &qword_1D32D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = v2[3];
  v29 = v2;
  sub_2698(v2, v9);
  sub_1B096C();
  sub_1B5864();
  if (v1)
  {
    return sub_2BF8(v29);
  }

  v10 = v6;
  sub_2B0C(&qword_229710, &unk_1D32C0);
  LOBYTE(v30[0]) = 0;
  sub_11C5F4();
  v11 = v5;
  sub_1B5404();
  v12 = v31;
  sub_2B0C(&qword_22AA48, &qword_1CD280);
  LOBYTE(v30[0]) = 1;
  sub_1B0A98();
  sub_1B5404();
  v28 = v12;
  v26 = v31;
  v36[1143] = 2;
  sub_1B0B1C();
  sub_1B5404();
  memcpy(v36, v35, 0x460uLL);
  LOBYTE(v30[0]) = 3;
  sub_101744();
  sub_1B5404();
  v22 = v32;
  v23 = v33[0];
  v20 = v31;
  v21 = v33[2];
  v24 = v33[1];
  v25 = v33[3];
  v27 = v33[4];
  sub_2B0C(&qword_22FEE0, &qword_1D32D0);
  v36[1142] = 4;
  sub_1B0B70(&qword_22FF00, &protocol witness table for UInt64, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
  sub_1B5404();
  (*(v10 + 8))(v8, v11);
  v13 = v34;
  v14 = v12;
  v30[0] = v12;
  v30[1] = v26;
  memcpy(&v30[2], v36, 0x460uLL);
  v15 = v20;
  v30[142] = v20;
  v16 = v23;
  v30[143] = v22;
  v30[144] = v23;
  v18 = v24;
  v17 = v25;
  v30[145] = v24;
  v30[146] = v21;
  v30[147] = v25;
  v30[148] = v27;
  v30[149] = v34;
  memcpy(v4, v30, 0x4B0uLL);
  sub_1B0BE0(v30, &v31);
  sub_2BF8(v29);
  v31 = v14;
  v32 = v26;
  memcpy(v33, v36, 0x460uLL);
  v33[140] = v15;
  v33[141] = v22;
  v33[142] = v16;
  v33[143] = v18;
  v33[144] = v21;
  v33[145] = v17;
  v33[146] = v27;
  v33[147] = v13;
  return sub_1B0C18(&v31);
}

void sub_1AEF58(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v174 = a2;
  v6 = type metadata accessor for CollectionRecommendation(0);
  v172 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v196 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  memcpy(v204, (a1 + 104), 0x16BuLL);
  v10 = *(a1 + 536);
  v11 = *(a1 + 544);
  v171 = *(a1 + 552);
  v12 = *(a1 + 560);
  v186 = *(a1 + 576);
  v187 = v10;
  v13 = *(a1 + 584);
  v179 = *(a1 + 592);
  v180 = v12;
  v14 = *(a1 + 600);
  v188 = *(a1 + 608);
  v189 = v14;
  v15 = *(a1 + 616);
  v16 = *(a1 + 624);
  v184 = *(a1 + 632);
  v185 = v13;
  v17 = *(a1 + 1152);
  v209 = *(a1 + 1136);
  v210 = v17;
  v211 = *(a1 + 1168);
  v212 = *(a1 + 1184);
  v177 = *(a1 + 1192);
  v198 = &v209;
  sub_50C90();
  v18 = sub_1B46C4();
  v176 = 0;
  v181 = *(&v209 + 1);
  v182 = v209;
  v178 = v211;
  v183 = *(&v210 + 1);
  v190 = *(&v211 + 1);
  v214 = *(&v211 + 1);
  v215 = *(&v210 + 1);
  v192 = v18;
  v193 = v212;
  v213 = v212;
  v203 = _swiftEmptySetSingleton;
  v19 = *(v9 + 16);
  sub_43050(&v215, v201, &qword_2292C8, &unk_1BCB00);
  sub_43050(&v214, v201, &qword_2296D0, &unk_1D3D50);
  sub_43050(&v213, v201, &qword_2296D8, &qword_1BCB10);
  v191 = v9;
  if (v19)
  {
    v173 = v8;
    Kind = 0;
    v21 = v9 + 32;
    v197 = v19;
    v195 = v9 + 32;
    do
    {
      if (Kind >= *(v9 + 16))
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

      memcpy(v201, (v21 + 568 * Kind), sizeof(v201));
      memcpy(v202, (v21 + 568 * Kind + 168), 0x179uLL);
      if (sub_42D84(v202) == 1)
      {
        goto LABEL_173;
      }

      memcpy(v200, v202, 0x179uLL);
      if (sub_DF2A8())
      {
        LODWORD(v2) = v201[64];
        if (v201[64] != 2)
        {
          v22 = *&v201[48];
          v23 = *&v201[56];
          v24 = *&v201[72];
          v4 = v201[80];
          v205[0] = *&v201[48];
          v205[1] = *&v201[56];
          v3 = (v201[64] & 1);
          v206 = v201[64] & 1;
          v207 = *&v201[72];
          v208 = v201[80] & 1;
          sub_4299C(v201, v200);
          sub_1130F8(v200, v205);
          if (v4)
          {
            sub_2601C(v201);
          }

          else
          {
            v9 = v203;
            sub_1B57F4();
            sub_1B5804(v22);
            sub_1B5834(v24);
            LODWORD(v194) = v2 & 1;
            sub_1B5814(v2 & 1);
            sub_1B5814(1u);
            sub_1B5834(v23);
            v25 = sub_1B5844();
            v26 = -1 << *(v9 + 32);
            v4 = v25 & ~v26;
            if ((*(v9 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
            {
              v27 = ~v26;
              v3 = (&stru_20 + 8);
              while (1)
              {
                v28 = *(v9 + 48) + 40 * v4;
                v29 = *v28 == v22 && *(v28 + 8) == v24;
                if (v29 && ((*(v28 + 16) ^ v2) & 1) == 0 && (*(v28 + 32) & 1) == 0 && *(v28 + 24) == v23)
                {
                  break;
                }

                v4 = (v4 + 1) & v27;
                if (((*(v9 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
                {
                  goto LABEL_24;
                }
              }

              sub_2601C(v201);
            }

            else
            {
              v3 = (&stru_20 + 8);
LABEL_24:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v199 = v9;
              v31 = *(v9 + 16);
              if (*(v9 + 24) <= v31)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  sub_115928(v31 + 1);
                }

                else
                {
                  sub_11A780(v31 + 1);
                }

                v9 = v199;
                sub_1B57F4();
                sub_1B5804(v22);
                sub_1B5834(v24);
                sub_1B5814(v194);
                sub_1B5814(1u);
                sub_1B5834(v23);
                v32 = sub_1B5844();
                v33 = -1 << *(v9 + 32);
                v4 = v32 & ~v33;
                if ((*(v9 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
                {
                  v34 = ~v33;
                  do
                  {
                    v35 = *(v9 + 48) + 40 * v4;
                    v36 = *v35 == v22 && *(v35 + 8) == v24;
                    if (v36 && ((*(v35 + 16) ^ v2) & 1) == 0 && (*(v35 + 32) & 1) == 0 && *(v35 + 24) == v23)
                    {
                      goto LABEL_174;
                    }

                    v4 = (v4 + 1) & v34;
                  }

                  while (((*(v9 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
                }
              }

              else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_118288();
                v9 = v199;
              }

              v37 = v194;
              *(v9 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v4;
              v38 = *(v9 + 48) + 40 * v4;
              *v38 = v22;
              *(v38 + 8) = v24;
              *(v38 + 16) = v37;
              *(v38 + 24) = v23;
              *(v38 + 32) = 0;
              sub_2601C(v201);
              v39 = *(v9 + 16);
              v40 = __OFADD__(v39, 1);
              v41 = v39 + 1;
              if (v40)
              {
                goto LABEL_170;
              }

              *(v9 + 16) = v41;
              v203 = v9;
            }

            v9 = v191;
          }

          v19 = v197;
          v21 = v195;
        }
      }

      ++Kind;
    }

    while (Kind != v19);
    v175 = v203;
    v8 = v173;
  }

  else
  {
    v175 = _swiftEmptySetSingleton;
  }

  v4 = v8;
  sub_1B1708(v8, v204);
  v3 = v42;
  v202[0] = _swiftEmptySetSingleton;
  if (!*(v192 + 16))
  {
    LODWORD(Kind) = 0;
LABEL_58:
    LODWORD(v2) = 0;
    goto LABEL_59;
  }

  v43 = sub_3AA80(0);
  v44 = v192;
  LODWORD(Kind) = 0;
  if (v45)
  {
    LODWORD(Kind) = 0;
    v46 = *(v192 + 56) + 24 * v43;
    if ((*(v46 + 8) & 1) == 0 && *v46 >= 1)
    {
      sub_112BEC(v201, 0);
      v44 = v192;
      LODWORD(Kind) = 1;
    }
  }

  if (!*(v44 + 16))
  {
    goto LABEL_58;
  }

  v47 = sub_3AA80(9);
  LODWORD(v2) = 0;
  if (v48)
  {
    v49 = *(v44 + 56) + 24 * v47;
    if ((*(v49 + 8) & 1) == 0 && *v49 >= 1)
    {
      sub_112BEC(v201, 9);
      v44 = v192;
      LODWORD(v2) = 1;
    }
  }

  if (*(v44 + 16))
  {
    v77 = sub_3AA80(10);
    v78 = v192;
    if (v79)
    {
      v80 = *(v192 + 56) + 24 * v77;
      if ((*(v80 + 8) & 1) == 0 && *v80 >= 1)
      {
        sub_112BEC(v201, 10);
        v78 = v192;
      }
    }

    if (*(v78 + 16))
    {
      v81 = sub_3AA80(11);
      if (v82)
      {
        v83 = *(v78 + 56) + 24 * v81;
        if ((*(v83 + 8) & 1) == 0 && *v83 >= 1)
        {
          sub_112BEC(v201, 11);
        }
      }
    }
  }

LABEL_59:
  v195 = v202[0];
  v50 = v187;
  if (!*(v202[0] + 16))
  {
    v50 = 0;
  }

  v194 = v50;
  if (qword_228380 != -1)
  {
    goto LABEL_171;
  }

  while (1)
  {
    v51 = sub_1B4644();
    v52 = sub_50E58(v51, qword_22FE38);
    swift_bridgeObjectRetain_n();

    v173 = v52;
    v53 = sub_1B4624();
    v54 = sub_1B4DB4();
    v55 = os_log_type_enabled(v53, v54);
    v197 = v3;
    if (!v55)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_121;
    }

    v170 = v54;
    v187 = v53;
    v9 = swift_slowAlloc();
    *v9 = 134220032;
    *(v9 + 4) = *(v4 + 16);

    *(v9 + 12) = 2048;
    *(v9 + 14) = v3[1].Kind;
    *(v9 + 22) = 1024;
    *(v9 + 24) = Kind;
    *(v9 + 28) = 1024;
    *(v9 + 30) = v2;
    *(v9 + 34) = 2048;
    *(v9 + 36) = v194;
    *(v9 + 44) = 2048;
    *(v9 + 46) = v11;
    *(v9 + 54) = 2048;
    Kind = v3[1].Kind;
    if (Kind)
    {
      v56 = 0;
      v57 = v3 + 2;
      v169 = Kind - 1;
      v58 = _swiftEmptyArrayStorage;
LABEL_65:
      v59 = v57;
      v4 = v57 + 136 * v56;
      v2 = v56;
      while (v2 < v3[1].Kind)
      {
        *v201 = *v4;
        v60 = *(v4 + 16);
        v61 = *(v4 + 32);
        v62 = *(v4 + 64);
        *&v201[48] = *(v4 + 48);
        *&v201[64] = v62;
        *&v201[16] = v60;
        *&v201[32] = v61;
        v63 = *(v4 + 80);
        v64 = *(v4 + 96);
        v65 = *(v4 + 112);
        v201[128] = *(v4 + 128);
        *&v201[96] = v64;
        *&v201[112] = v65;
        *&v201[80] = v63;
        if ((v201[8] & 1) == 0)
        {
          sub_429F8(v201, v200);

LABEL_72:
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v203 = v58;
          if ((v67 & 1) == 0)
          {
            sub_37574(0, v58[2] + 1, 1);
            v58 = v203;
          }

          v69 = v58[2];
          v68 = v58[3];
          if (v69 >= v68 >> 1)
          {
            sub_37574((v68 > 1), v69 + 1, 1);
            v58 = v203;
          }

          v56 = v2 + 1;
          v58[2] = v69 + 1;
          v70 = &v58[17 * v69];
          *(v70 + 2) = *v201;
          v71 = *&v201[16];
          v72 = *&v201[32];
          v73 = *&v201[64];
          *(v70 + 5) = *&v201[48];
          *(v70 + 6) = v73;
          *(v70 + 3) = v71;
          *(v70 + 4) = v72;
          v74 = *&v201[80];
          v75 = *&v201[96];
          v76 = *&v201[112];
          *(v70 + 160) = v201[128];
          *(v70 + 8) = v75;
          *(v70 + 9) = v76;
          *(v70 + 7) = v74;
          v3 = v197;
          v57 = v59;
          if (v169 != v2)
          {
            goto LABEL_65;
          }

          goto LABEL_90;
        }

        v66 = sub_1B5604();
        sub_429F8(v201, v200);

        if (v66)
        {
          goto LABEL_72;
        }

        ++v2;
        sub_5C740(v201);
        v4 += 136;
        v3 = v197;
        if (Kind == v2)
        {
          goto LABEL_90;
        }
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v58 = _swiftEmptyArrayStorage;
LABEL_90:
    v84 = v58[2];

    *(v9 + 56) = v84;

    *(v9 + 64) = 2048;
    Kind = v3[1].Kind;
    if (!Kind)
    {
      break;
    }

    v85 = 0;
    v86 = v3 + 2;
    v169 = Kind - 1;
    v87 = _swiftEmptyArrayStorage;
LABEL_92:
    v2 = v86 + 136 * v85;
    v4 = v85;
    while (v4 < v3[1].Kind)
    {
      *v201 = *v2;
      v88 = *(v2 + 16);
      v89 = *(v2 + 32);
      v90 = *(v2 + 64);
      *&v201[48] = *(v2 + 48);
      *&v201[64] = v90;
      *&v201[16] = v88;
      *&v201[32] = v89;
      v91 = *(v2 + 80);
      v92 = *(v2 + 96);
      v93 = *(v2 + 112);
      v201[128] = *(v2 + 128);
      *&v201[96] = v92;
      *&v201[112] = v93;
      *&v201[80] = v91;
      if (v201[8])
      {
        sub_429F8(v201, v200);

LABEL_99:
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v203 = v87;
        if ((v95 & 1) == 0)
        {
          sub_37574(0, v87[2] + 1, 1);
          v87 = v203;
        }

        v97 = v87[2];
        v96 = v87[3];
        if (v97 >= v96 >> 1)
        {
          sub_37574((v96 > 1), v97 + 1, 1);
          v87 = v203;
        }

        v85 = v4 + 1;
        v87[2] = v97 + 1;
        v98 = &v87[17 * v97];
        *(v98 + 2) = *v201;
        v99 = *&v201[16];
        v100 = *&v201[32];
        v101 = *&v201[64];
        *(v98 + 5) = *&v201[48];
        *(v98 + 6) = v101;
        *(v98 + 3) = v99;
        *(v98 + 4) = v100;
        v102 = *&v201[80];
        v103 = *&v201[96];
        v104 = *&v201[112];
        *(v98 + 160) = v201[128];
        *(v98 + 8) = v103;
        *(v98 + 9) = v104;
        *(v98 + 7) = v102;
        v3 = v197;
        if (v169 != v4)
        {
          goto LABEL_92;
        }

        goto LABEL_106;
      }

      v94 = sub_1B5604();
      sub_429F8(v201, v200);

      if (v94)
      {
        goto LABEL_99;
      }

      ++v4;
      sub_5C740(v201);
      v2 += 136;
      v3 = v197;
      if (Kind == v4)
      {
        goto LABEL_106;
      }
    }

LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    swift_once();
  }

  v87 = _swiftEmptyArrayStorage;
LABEL_106:
  v105 = v87[2];

  *(v9 + 66) = v105;

  *(v9 + 74) = 2048;
  Kind = v3[1].Kind;
  if (Kind)
  {
    v106 = 0;
    v2 = &v3[2];
    v107 = _swiftEmptyArrayStorage;
LABEL_108:
    v108 = v2 + 136 * v106;
    v4 = v106;
    while (v4 < v3[1].Kind)
    {
      *v201 = *v108;
      v109 = *(v108 + 16);
      v110 = *(v108 + 32);
      v111 = *(v108 + 64);
      *&v201[48] = *(v108 + 48);
      *&v201[64] = v111;
      *&v201[16] = v109;
      *&v201[32] = v110;
      v112 = *(v108 + 80);
      v113 = *(v108 + 96);
      v114 = *(v108 + 112);
      v201[128] = *(v108 + 128);
      *&v201[96] = v113;
      *&v201[112] = v114;
      *&v201[80] = v112;
      v106 = v4 + 1;
      if (v114 != 2)
      {
        sub_429F8(v201, v200);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v203 = v107;
        if ((v115 & 1) == 0)
        {
          sub_37574(0, v107[2] + 1, 1);
          v107 = v203;
        }

        v117 = v107[2];
        v116 = v107[3];
        if (v117 >= v116 >> 1)
        {
          sub_37574((v116 > 1), v117 + 1, 1);
          v107 = v203;
        }

        v107[2] = v117 + 1;
        v118 = &v107[17 * v117];
        *(v118 + 2) = *v201;
        v119 = *&v201[16];
        v120 = *&v201[32];
        v121 = *&v201[64];
        *(v118 + 5) = *&v201[48];
        *(v118 + 6) = v121;
        *(v118 + 3) = v119;
        *(v118 + 4) = v120;
        v122 = *&v201[80];
        v123 = *&v201[96];
        v124 = *&v201[112];
        *(v118 + 160) = v201[128];
        *(v118 + 8) = v123;
        *(v118 + 9) = v124;
        *(v118 + 7) = v122;
        v3 = v197;
        if (Kind - 1 != v4)
        {
          goto LABEL_108;
        }

        goto LABEL_120;
      }

      v108 += 136;
      ++v4;
      if (Kind == v106)
      {
        goto LABEL_120;
      }
    }

    goto LABEL_168;
  }

  v107 = _swiftEmptyArrayStorage;
LABEL_120:
  v125 = v107[2];

  *(v9 + 76) = v125;

  v126 = v187;
  _os_log_impl(&dword_0, v187, v170, "Clustering %ld books diversified=%ld allowSingleBooks=%{BOOL}d allowSeries=%{BOOL}d maxHighScoringItemCount=%ld thresholdRatio=%f books=%ld audiobooks=%ld seriesBooks=%ld", v9, 0x54u);

  v9 = v191;
LABEL_121:
  v191 = sub_1B02CC(v9);
  v127 = v193;
  if (!v190)
  {
    goto LABEL_128;
  }

  v128 = *(v190 + 16);
  if (!v128)
  {
    v189 = _swiftEmptyArrayStorage;
    if (!v193)
    {
      goto LABEL_129;
    }

LABEL_125:
    while (1)
    {
      v131 = *(v127 + 16);
      if (!v131)
      {
        break;
      }

      v188 = sub_35558(*(v127 + 16), 0);
      v132 = sub_4312C();
      v127 = *v201;

      sub_417B8(v127);
      if (v132 == v131)
      {
        goto LABEL_133;
      }

      __break(1u);
LABEL_128:

      if (!v127)
      {
        goto LABEL_129;
      }
    }

    v188 = _swiftEmptyArrayStorage;
LABEL_133:
    v133 = v179;

    v134 = sub_1B14F0(v177, v133);

    v136 = sub_40854(v135);

    v137 = *(v136 + 16);
    if (!v137)
    {

      v136 = sub_40854(v138);
    }

    v180 = v136;
    LODWORD(v187) = v137 != 0;
    v139 = v181;
    v140 = v182;
    *v201 = v182;
    *&v201[8] = v181;
    *&v201[16] = v192;
    *&v201[24] = v183;
    *&v201[32] = v178;
    *&v201[40] = v190;
    *&v201[48] = v193;
    v141 = sub_40854(v191);

    v191 = v134;
    v142 = sub_C91B4(v201, v141, v175, v136, v187, v197, v140, v139, v15, v16, v11, v195, v194, v186, v185, v189, v188, v134, v184);

    v2 = *(v142 + 16);
    Kind = _swiftEmptyArrayStorage;
    v194 = v142;
    if (!v2)
    {
LABEL_152:
      v152 = *(Kind + 2);
      if (v152)
      {
        *v201 = _swiftEmptyArrayStorage;
        sub_3741C(0, v152, 0);
        v153 = *v201;
        v154 = *(*v201 + 16);
        v155 = 32;
        v156 = v194;
        do
        {
          v157 = *&Kind[v155];
          *v201 = v153;
          v158 = v153[3];
          if (v154 >= v158 >> 1)
          {
            sub_3741C((v158 > 1), v154 + 1, 1);
            v153 = *v201;
          }

          v153[2] = v154 + 1;
          v153[v154 + 4] = v157;
          v155 += 64;
          ++v154;
          --v152;
        }

        while (v152);
      }

      else
      {

        v153 = _swiftEmptyArrayStorage;
        v156 = v194;
      }

      v159 = sub_40854(v153);

      v160 = sub_1B4624();
      v161 = sub_1B4DB4();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        *v201 = v163;
        *v162 = 136315138;
        v164 = sub_1AB48C(v156);
        v166 = sub_60FF4(v164, v165, v201);

        *(v162 + 4) = v166;
        _os_log_impl(&dword_0, v160, v161, "Clustered: %s", v162, 0xCu);
        sub_2BF8(v163);
      }

      v167 = v174;
      *v174 = v156;
      v167[1] = v159;
      return;
    }

    v143 = v142 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
    v9 = *(v172 + 72);
    v3 = &type metadata for ScoredBook;
    while (1)
    {
      v144 = v196;
      sub_FF9B8(v143, v196);
      v145 = CollectionRecommendation.books.getter();
      sub_5DC0C(v144);
      v146 = *(v145 + 2);
      v4 = *(Kind + 2);
      v147 = v4 + v146;
      if (__OFADD__(v4, v146))
      {
        goto LABEL_163;
      }

      v148 = swift_isUniquelyReferenced_nonNull_native();
      if (v148 && v147 <= *(Kind + 3) >> 1)
      {
        if (!*(v145 + 2))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v4 <= v147)
        {
          v149 = v4 + v146;
        }

        else
        {
          v149 = v4;
        }

        Kind = sub_3349C(v148, v149, 1, Kind);
        if (!*(v145 + 2))
        {
LABEL_137:

          if (v146)
          {
            goto LABEL_164;
          }

          goto LABEL_138;
        }
      }

      if ((*(Kind + 3) >> 1) - *(Kind + 2) < v146)
      {
        goto LABEL_165;
      }

      swift_arrayInitWithCopy();

      if (v146)
      {
        v150 = *(Kind + 2);
        v40 = __OFADD__(v150, v146);
        v151 = v150 + v146;
        if (v40)
        {
          goto LABEL_169;
        }

        *(Kind + 2) = v151;
      }

LABEL_138:
      v143 += v9;
      if (!--v2)
      {
        goto LABEL_152;
      }
    }
  }

  v189 = sub_3556C(*(v190 + 16), 0);
  v129 = sub_4312C();
  v130 = *v201;

  sub_417B8(v130);
  if (v129 == v128)
  {
    v127 = v193;
    if (v193)
    {
      goto LABEL_125;
    }

LABEL_129:

    goto LABEL_133;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  sub_1B5774();
  __break(1u);
}

void *sub_1B02CC(uint64_t a1)
{
  result = _swiftEmptyArrayStorage;
  v9 = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 200); ; i += 568)
    {
      memcpy(__dst, i, 0x179uLL);
      result = sub_42D84(__dst);
      if (result == 1)
      {
        break;
      }

      memcpy(v7, __dst, sizeof(v7));
      v5 = sub_DF2A8();
      v6 = _swiftEmptySetSingleton;
      if (v5)
      {
      }

      sub_6042C(v6);
      if (!--v3)
      {
        return v9;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1B03B0(long double a1)
{
  sub_2B0C(&qword_228F38, &qword_1BCB50);
  sub_1B4394();
  v2 = v19;
  v3 = *(v19 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v19 + 32);
    v6 = 0.0;
    while (v4 < *(v2 + 16))
    {
      v7 = *v5;
      v8 = v5[1];
      v9 = v5[3];
      v18[2] = v5[2];
      v18[3] = v9;
      v18[0] = v7;
      v18[1] = v8;
      v10 = v4 + 1;
      v12 = v5[2];
      v11 = v5[3];
      v14 = *v5;
      v13 = v5[1];
      v5 += 4;
      v19 = v4;
      v20 = v14;
      v21 = v13;
      v22 = v12;
      v23 = v11;
      v15 = *(&v11 + 1);
      v16 = pow(a1, v4);
      sub_42BA4(v18, &v17);
      sub_1B2018(&v19);
      v6 = v6 + v15 * v16;
      v4 = v10;
      if (v3 == v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1B04C0(_BYTE *a1, uint64_t a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = a4[2];
  if (CollectionRecommendationType.rawValue.getter() == 0xD000000000000011 && 0x80000000001D4780 == v12)
  {
  }

  else
  {
    v13 = sub_1B5604();

    if ((v13 & 1) == 0)
    {
      *a1 = v8;
      *a2 = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = v11;
    }
  }

  v14 = *(a5 + 16);
  if (!*(v14 + 16) || (result = sub_3AA80(5), (v16 & 1) == 0))
  {

LABEL_13:
    *a1 = 5;
    *a2 = v9;
    *(a2 + 8) = v10 & 1;
    *(a2 + 16) = v11;
    return result;
  }

  v17 = *(v14 + 56) + 24 * result;
  v18 = *(v17 + 16);
  v10 |= *(v17 + 8);
  if (v10)
  {
    v9 = 0;
LABEL_12:

    result = sub_1ABD84(v11, v18);
    v11 = result;
    goto LABEL_13;
  }

  v19 = *v17;
  v20 = __OFADD__(v19, v9);
  v9 += v19;
  if (!v20)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0630()
{
  result = qword_22FE58;
  if (!qword_22FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FE58);
  }

  return result;
}

uint64_t sub_1B0684(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22FE60, &qword_1D3268);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B06F0()
{
  result = qword_22FE88;
  if (!qword_22FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FE88);
  }

  return result;
}

unint64_t sub_1B0744()
{
  result = qword_22FE98;
  if (!qword_22FE98)
  {
    sub_1CC1C(&qword_22FE90, &qword_1D3288);
    sub_71620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FE98);
  }

  return result;
}

unint64_t sub_1B07C8()
{
  result = qword_22FEA8;
  if (!qword_22FEA8)
  {
    sub_1CC1C(&qword_22FE90, &qword_1D3288);
    sub_71328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FEA8);
  }

  return result;
}

unint64_t sub_1B084C()
{
  result = qword_22FEB8;
  if (!qword_22FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FEB8);
  }

  return result;
}

uint64_t sub_1B08A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22C810, &qword_1C7038);
    sub_1B0928(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B0928(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionRecommendation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B096C()
{
  result = qword_22FED0;
  if (!qword_22FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FED0);
  }

  return result;
}

unint64_t sub_1B09C0()
{
  result = qword_22AA50;
  if (!qword_22AA50)
  {
    sub_1CC1C(&qword_22AA48, &qword_1CD280);
    sub_90C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA50);
  }

  return result;
}

unint64_t sub_1B0A44()
{
  result = qword_22FED8;
  if (!qword_22FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FED8);
  }

  return result;
}

unint64_t sub_1B0A98()
{
  result = qword_22AA68;
  if (!qword_22AA68)
  {
    sub_1CC1C(&qword_22AA48, &qword_1CD280);
    sub_90CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA68);
  }

  return result;
}

unint64_t sub_1B0B1C()
{
  result = qword_22FEF8;
  if (!qword_22FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FEF8);
  }

  return result;
}

uint64_t sub_1B0B70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22FEE0, &qword_1D32D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0C90()
{
  result = qword_22FF10;
  if (!qword_22FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FF10);
  }

  return result;
}

__n128 sub_1B0CE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B0D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0DD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0E1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0E98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1200))
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

uint64_t sub_1B0EE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1192) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1200) = 1;
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

    *(result + 1200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B10D4()
{
  result = qword_22FFB8;
  if (!qword_22FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFB8);
  }

  return result;
}

unint64_t sub_1B112C()
{
  result = qword_22FFC0;
  if (!qword_22FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFC0);
  }

  return result;
}

unint64_t sub_1B1184()
{
  result = qword_22FFC8;
  if (!qword_22FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFC8);
  }

  return result;
}

unint64_t sub_1B11DC()
{
  result = qword_22FFD0;
  if (!qword_22FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFD0);
  }

  return result;
}

unint64_t sub_1B1234()
{
  result = qword_22FFD8;
  if (!qword_22FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFD8);
  }

  return result;
}

unint64_t sub_1B128C()
{
  result = qword_22FFE0;
  if (!qword_22FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFE0);
  }

  return result;
}

unint64_t sub_1B12E4()
{
  result = qword_22FFE8;
  if (!qword_22FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFE8);
  }

  return result;
}

unint64_t sub_1B133C()
{
  result = qword_22FFF0;
  if (!qword_22FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFF0);
  }

  return result;
}

unint64_t sub_1B1394()
{
  result = qword_22FFF8;
  if (!qword_22FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFF8);
  }

  return result;
}

unint64_t sub_1B13EC()
{
  result = qword_230000;
  if (!qword_230000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_230000);
  }

  return result;
}

unint64_t sub_1B1444()
{
  result = qword_230008;
  if (!qword_230008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_230008);
  }

  return result;
}

unint64_t sub_1B149C()
{
  result = qword_230010;
  if (!qword_230010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_230010);
  }

  return result;
}

uint64_t sub_1B14F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_13:
    v17 = __clz(__rbit64(v7)) | (v10 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    v19 = 1.0;
    if (*(a2 + 16))
    {
      v20 = sub_43124(*(*(a1 + 56) + 8 * v17));
      if (v21)
      {
        v19 = *(*(a2 + 56) + 8 * v20);
      }
    }

    v22 = _swiftEmptyDictionarySingleton[2];
    if (_swiftEmptyDictionarySingleton[3] <= v22)
    {
      sub_17F7E0(v22 + 1, 1);
    }

    result = sub_1B57E4();
    v11 = &_swiftEmptyDictionarySingleton[8];
    v12 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~_swiftEmptyDictionarySingleton[(v13 >> 6) + 8]) == 0)
    {
      v23 = 0;
      v24 = (63 - v12) >> 6;
      while (++v14 != v24 || (v23 & 1) == 0)
      {
        v25 = v14 == v24;
        if (v14 == v24)
        {
          v14 = 0;
        }

        v23 |= v25;
        v26 = v11[v14];
        if (v26 != -1)
        {
          v15 = __clz(__rbit64(~v26)) + (v14 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_28;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~_swiftEmptyDictionarySingleton[(v13 >> 6) + 8])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v7 &= v7 - 1;
    *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(_swiftEmptyDictionarySingleton[6] + 8 * v15) = v18;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v15) = v19;
    ++_swiftEmptyDictionarySingleton[2];
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v8)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v7 = *(v4 + 8 * v16);
    ++v10;
    if (v7)
    {
      v10 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1B1708(uint64_t a1, const void *a2)
{
  v4 = sub_15C8EC();
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_375F8(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (a1 + 32);
    do
    {
      v8 = v7[1];
      __dst[0] = *v7;
      __dst[1] = v8;
      v9 = v7[3];
      __dst[2] = v7[2];
      __dst[3] = v9;
      sub_42BA4(__dst, &v47);
      v45 = v6;
      v11 = v6[2];
      v10 = v6[3];
      if (v11 >= v10 >> 1)
      {
        sub_375F8((v10 > 1), v11 + 1, 1);
        v6 = v45;
      }

      v6[2] = v11 + 1;
      v12 = &v6[8 * v11];
      v13 = __dst[0];
      v14 = __dst[1];
      v15 = __dst[3];
      v12[4] = __dst[2];
      v12[5] = v15;
      v12[2] = v13;
      v12[3] = v14;
      v7 = (v7 + 136);
      --v5;
    }

    while (v5);
  }

  memcpy(__dst, a2, 0x16BuLL);
  v16 = sub_885C8(v6, __dst);

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v17 - 1;
    v20 = _swiftEmptyArrayStorage;
    do
    {
      v21 = (v16 + 32 + (v18 << 6));
      v22 = v18;
      while (1)
      {
        if (v22 >= *(v16 + 16))
        {
          __break(1u);
          return;
        }

        v23 = *v21;
        v24 = v21[1];
        v25 = v21[3];
        __dst[2] = v21[2];
        __dst[3] = v25;
        __dst[0] = v23;
        __dst[1] = v24;
        if (*(v4 + 16))
        {
          v26 = sub_43124(*&__dst[0]);
          if (v27)
          {
            break;
          }
        }

        ++v22;
        v21 += 4;
        if (v17 == v22)
        {
          goto LABEL_18;
        }
      }

      v44 = v19;
      v28 = *(v4 + 56) + 136 * v26;
      v29 = *(v28 + 64);
      v30 = *(v28 + 72);
      v31 = *(v28 + 80);
      v32 = *(v28 + 88);
      v41 = *(v28 + 112);
      v42 = *(v28 + 96);
      v40 = *(v28 + 128);
      v47 = __dst[0];
      v48 = __dst[1];
      v49 = __dst[2];
      v50 = __dst[3];
      sub_42BA4(__dst, &v45);

      v43 = v30;

      v33 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_33358(0, *(v20 + 2) + 1, 1, v20);
      }

      v35 = *(v20 + 2);
      v34 = *(v20 + 3);
      if (v35 >= v34 >> 1)
      {
        v20 = sub_33358((v34 > 1), v35 + 1, 1, v20);
      }

      v18 = v22 + 1;
      *(v20 + 2) = v35 + 1;
      v36 = &v20[136 * v35];
      v37 = v47;
      v38 = v48;
      v39 = v50;
      *(v36 + 4) = v49;
      *(v36 + 5) = v39;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      *(v36 + 12) = v33;
      *(v36 + 13) = v43;
      *(v36 + 14) = v31;
      *(v36 + 15) = v32;
      *(v36 + 8) = v42;
      *(v36 + 9) = v41;
      v36[160] = v40;
      v19 = v44;
    }

    while (v44 != v22);
  }

LABEL_18:
}

uint64_t sub_1B19D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F426465726F6373 && a2 == 0xEA00000000006B6FLL;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726F68747561 && a2 == 0xE900000000000073 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73444965726E6567 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F646F6874656DLL && a2 == 0xED0000736569676FLL || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F436361736962 && a2 == 0xEA00000000007365 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D6600 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B1BF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B6F6F426E696DLL && a2 == 0xED0000746E756F43;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B6F6F4278616DLL && a2 == 0xED0000746E756F43 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000025 && 0x80000000001D7B80 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000000001D91A0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000001D91C0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000026 && 0x80000000001D91E0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D9210 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1B1E40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000001D9230 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F6F4264656573 && a2 == 0xE900000000000073 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D7B60 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54644965726E6567 && a2 == 0xEE0068747065446FLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_1B5604();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B2018(uint64_t a1)
{
  v2 = sub_2B0C(&qword_230018, &unk_1D3D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B2080()
{
  result = qword_230020;
  if (!qword_230020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_230020);
  }

  return result;
}

uint64_t dispatch thunk of InternalBookRecommendationServiceType.fetchRecommendations(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226C;

  return v11(a1, a2, a3, a4);
}

id CachedPersonalizationBookMetadataSeriesMembership.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CachedPersonalizationMetadataBISAC.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationMetadataBISAC();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationMetadataBISAC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationMetadataBISAC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationMetadataBISAC.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

void sub_1B23FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 code];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B47C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B2464(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1B4794();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCode:?];
}

uint64_t sub_1B24D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CachedPersonalizationMetadataBISAC();
  result = sub_1B5094();
  *a2 = result;
  return result;
}

id sub_1B2538@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 books];
  *a2 = result;
  return result;
}

id CachedPersonalizationMetadataBook.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationMetadataBook();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationMetadataBook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationMetadataBook();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationMetadataBook.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

void sub_1B2708(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 deduplicationID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B47C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B2770(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1B4794();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDeduplicationID:?];
}

uint64_t sub_1B27E0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 downloadTimestamp];
  if (v3)
  {
    v4 = v3;
    sub_1B4084();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B40C4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B2884(uint64_t a1, void **a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_16E4D8(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B40C4();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = sub_1B4034().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setDownloadTimestamp:isa];
}

uint64_t sub_1B29B0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CachedPersonalizationMetadataBook();
  result = sub_1B5094();
  *a2 = result;
  return result;
}

id sub_1B2A00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assetID];
  *a2 = result;
  return result;
}

id sub_1B2A7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ulyssesEmbedding];
  *a2 = result;
  return result;
}

id sub_1B2AD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bisac];
  *a2 = result;
  return result;
}

id CachedPersonalizationBookMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationBookMetadata();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationBookMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationBookMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationBookMetadata.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1B2CA8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastAccessDate];
  if (v3)
  {
    v4 = v3;
    sub_1B4084();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B40C4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B2D4C(uint64_t a1, void **a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_16E4D8(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B40C4();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = sub_1B4034().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLastAccessDate:isa];
}

uint64_t sub_1B2E78@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CachedPersonalizationBookMetadata();
  result = sub_1B5094();
  *a2 = result;
  return result;
}

id sub_1B2EBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assetID];
  *a2 = result;
  return result;
}

id sub_1B2F10@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 genresKnown];
  *a2 = result;
  return result;
}

id sub_1B2F78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mappedAssetID];
  *a2 = result;
  return result;
}

id sub_1B2FCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

id sub_1B3020@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authors];
  *a2 = result;
  return result;
}

id sub_1B307C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 leafGenres];
  *a2 = result;
  return result;
}

id sub_1B30D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 seriesMembership];
  *a2 = result;
  return result;
}

id CachedPersonalizationBookMetadataAuthor.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationBookMetadataAuthor();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationBookMetadataAuthor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationBookMetadataAuthor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationBookMetadataAuthor.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1B32A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CachedPersonalizationBookMetadataAuthor();
  result = sub_1B5094();
  *a2 = result;
  return result;
}

id sub_1B32F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authorID];
  *a2 = result;
  return result;
}

id sub_1B334C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 metadatas];
  *a2 = result;
  return result;
}

id CachedPersonalizationBookMetadataGenre.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationBookMetadataGenre();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationBookMetadataGenre.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationBookMetadataGenre();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationBookMetadataGenre.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

void sub_1B351C(uint64_t a1, void **a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_16E4D8(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B40C4();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = sub_1B4034().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLastAccessDate:isa];
}

uint64_t sub_1B3648@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CachedPersonalizationBookMetadataGenre();
  result = sub_1B5094();
  *a2 = result;
  return result;
}

id sub_1B3698@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 genreID];
  *a2 = result;
  return result;
}

id sub_1B36F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

id sub_1B3744@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 metadatas];
  *a2 = result;
  return result;
}

id CachedPersonalizationBookMetadataSeriesMembership.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationBookMetadataSeriesMembership();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationBookMetadataSeriesMembership.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationBookMetadataSeriesMembership();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationBookMetadataSeriesMembership.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1B3914@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CachedPersonalizationBookMetadataSeriesMembership();
  result = sub_1B5094();
  *a2 = result;
  return result;
}

id sub_1B3964@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isOrdered];
  *a2 = result;
  return result;
}

id sub_1B39B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mappedSeriesID];
  *a2 = result;
  return result;
}

id sub_1B3A0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ordinal];
  *a2 = result;
  return result;
}

id sub_1B3A60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 seriesID];
  *a2 = result;
  return result;
}

id sub_1B3AB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 book];
  *a2 = result;
  return result;
}