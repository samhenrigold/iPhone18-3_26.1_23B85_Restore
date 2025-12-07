Swift::Int sub_100096C74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000341C(&qword_10025F370, &qword_1001D41D0);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_100096E98(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_10004DD08(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_100095E10(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_10004DD08(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100097014(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_1000971C0()
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  dispatch thunk of GenerativePartnerServiceProvider.intendedDefaultLLM.getter();

  if (v7)
  {
    sub_100008198(&v6, v8);
    sub_100027874(v8, v8[3]);
    v0 = dispatch thunk of LLMProvider.localizedDisplayName()();
    sub_10000F4B4(v8);
  }

  else
  {
    sub_10000F500(&v6, &qword_1002651D0, &unk_1001DDA20);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000F34C(v1, qword_100276F08);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No LLM is available to show", v4, 2u);
    }

    return 0;
  }

  return v0;
}

uint64_t sub_100097334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000081F8(a1, &v21 - v13, &unk_100262450, &qword_1001CFAA0);
  sub_1000081F8(a2, &v14[v15], &unk_100262450, &qword_1001CFAA0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000081F8(v14, v10, &unk_100262450, &qword_1001CFAA0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1000997E0(&unk_10025F360, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10000F500(v14, &unk_100262450, &qword_1001CFAA0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10000F500(v14, &qword_10025F358, &qword_1001D4140);
    v17 = 1;
    return v17 & 1;
  }

  sub_10000F500(v14, &unk_100262450, &qword_1001CFAA0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100097654(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = type metadata accessor for String.Encoding();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  sub_10000341C(&unk_10025F3C0, &unk_1001D4320);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = type metadata accessor for PromptCompletion.ImageContent();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for PromptCompletion.TextContent();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for PromptCompletion.Content();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v7 = type metadata accessor for PromptCompletion.Segment();
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v8 = type metadata accessor for PromptCompletion();
  v2[34] = v8;
  v2[35] = *(v8 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v9 = type metadata accessor for PromptCompletion.Candidate();
  v2[38] = v9;
  v2[39] = *(v9 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = type metadata accessor for MainActor();
  v2[42] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[43] = v11;
  v2[44] = v10;

  return _swift_task_switch(sub_1000979DC, v11, v10);
}

uint64_t sub_1000979DC()
{
  v137 = v0;
  v1 = PromptCompletion.candidates.getter();
  if (!*(v1 + 16))
  {

    sub_100099280();
    swift_allocError();
    *v41 = 0xD00000000000001CLL;
    v41[1] = 0x80000001001E49F0;
    swift_willThrow();

    v42 = v0[1];

    return v42();
  }

  (*(v0[39] + 16))(v0[40], v1 + ((*(v0[39] + 80) + 32) & ~*(v0[39] + 80)), v0[38]);

  v2 = PromptCompletion.metadata.getter();
  if (!*(v2 + 16) || (v3 = sub_10000511C(0x73656369746F4ELL, 0xE700000000000000), (v4 & 1) == 0))
  {

    goto LABEL_20;
  }

  sub_10002B0D0(*(v2 + 56) + 32 * v3, (v0 + 2));

  sub_10000341C(&qword_10025F3F0, &qword_1001D4350);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v19 = 0;
    v20 = 0;
    goto LABEL_21;
  }

  v5 = v0[11];
  v6 = *(v5 + 16);
  if (!v6)
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  v7 = 0;
  v8 = v6 - 1;
  v9 = _swiftEmptyArrayStorage;
  do
  {
    v10 = v7;
    while (1)
    {
      if (v10 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      v11 = *(v5 + 32 + 8 * v10);
      if (*(v11 + 16))
      {
        break;
      }

LABEL_8:
      if (v6 == ++v10)
      {
        goto LABEL_59;
      }
    }

    v12 = sub_10000511C(0x6567617373656DLL, 0xE700000000000000);
    if ((v13 & 1) == 0)
    {

      goto LABEL_8;
    }

    v14 = (*(v11 + 56) + 16 * v12);
    v15 = v14[1];
    v129 = *v14;

    v133 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10017DD84(0, *(v9 + 2) + 1, 1, v9);
    }

    v17 = *(v9 + 2);
    v16 = *(v9 + 3);
    if (v17 >= v16 >> 1)
    {
      v9 = sub_10017DD84((v16 > 1), v17 + 1, 1, v9);
    }

    v7 = v10 + 1;
    *(v9 + 2) = v17 + 1;
    v18 = &v9[16 * v17];
    *(v18 + 4) = v129;
    *(v18 + 5) = v15;
    v8 = v133;
  }

  while (v133 != v10);
LABEL_59:

  v0[12] = v9;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for [A]);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v20 = v110;

LABEL_21:
  v0[45] = v19;
  v0[46] = v20;
  if (qword_10025A6E0 != -1)
  {
LABEL_61:
    swift_once();
  }

  v21 = v0[36];
  v22 = v0[37];
  v23 = v0[34];
  v24 = v0[35];
  v25 = v0[14];
  v26 = type metadata accessor for Logger();
  v0[47] = sub_10000F34C(v26, qword_100276F08);
  v27 = *(v24 + 16);
  v27(v22, v25, v23);
  v27(v21, v25, v23);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v130 = v29;
    v31 = v0[36];
    v30 = v0[37];
    v32 = v0[34];
    v33 = v0[35];
    v34 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v136 = v134;
    *v34 = 134218243;
    v35 = *(PromptCompletion.candidates.getter() + 16);

    v36 = *(v33 + 8);
    v36(v30, v32);
    *(v34 + 4) = v35;
    *(v34 + 12) = 2085;
    PromptCompletion.candidates.getter();
    v37 = Array.description.getter();
    v39 = v38;

    v36(v31, v32);
    v40 = sub_10002510C(v37, v39, &v136);

    *(v34 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v28, v130, "%ld candidate(s): %{sensitive}s", v34, 0x16u);
    sub_10000F4B4(v134);
  }

  else
  {
    v44 = v0[36];
    v45 = v0[34];
    v46 = *(v0[35] + 8);
    v46(v0[37], v45);

    v46(v44, v45);
  }

  v47 = PromptCompletion.Candidate.segments.getter();
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = v0[31];
    v50 = v0[27];
    v51 = v0[24];
    v54 = *(v49 + 16);
    v53 = v49 + 16;
    v52 = v54;
    v55 = v47 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
    v56 = *(v53 + 56);
    v131 = (v50 + 88);
    v128 = enum case for PromptCompletion.Content.text(_:);
    v126 = (v53 - 8);
    v120 = (v50 + 96);
    v122 = (v50 + 8);
    v116 = (v51 + 8);
    v118 = (v51 + 32);
    v135 = _swiftEmptyArrayStorage;
    v114 = v54;
    v124 = v56;
    do
    {
      v57 = v0[29];
      v58 = v0[26];
      v52(v0[33], v55, v0[30]);
      PromptCompletion.Segment.content.getter();
      v59 = (*v131)(v57, v58);
      v60 = v0[33];
      v61 = v0[29];
      v62 = v0[30];
      v63 = v0[26];
      if (v59 == v128)
      {
        v64 = v53;
        v65 = v0[25];
        v66 = v0[23];
        (*v120)(v0[29], v0[26]);
        (*v118)(v65, v61, v66);
        v67 = PromptCompletion.TextContent.value.getter();
        v69 = v68;
        (*v116)(v65, v66);
        (*v126)(v60, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = sub_10017DD84(0, *(v135 + 2) + 1, 1, v135);
        }

        v71 = *(v135 + 2);
        v70 = *(v135 + 3);
        v53 = v64;
        v56 = v124;
        if (v71 >= v70 >> 1)
        {
          v135 = sub_10017DD84((v70 > 1), v71 + 1, 1, v135);
        }

        v52 = v114;
        *(v135 + 2) = v71 + 1;
        v72 = &v135[16 * v71];
        *(v72 + 4) = v67;
        *(v72 + 5) = v69;
      }

      else
      {
        (*v126)(v0[33], v0[30]);
        (*v122)(v61, v63);
      }

      v55 += v56;
      --v48;
    }

    while (v48);
  }

  else
  {

    v135 = _swiftEmptyArrayStorage;
  }

  v73 = PromptCompletion.Candidate.segments.getter();
  v74 = *(v73 + 16);
  if (v74)
  {
    v75 = v0[31];
    v76 = v0[27];
    v77 = v0[21];
    v127 = *(v75 + 16);
    v78 = v73 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v123 = (v75 + 8);
    v125 = *(v75 + 72);
    v121 = (v76 + 88);
    v119 = enum case for PromptCompletion.Content.image(_:);
    v111 = (v76 + 96);
    v112 = (v76 + 8);
    v132 = (v77 + 32);
    v113 = v77;
    v115 = (v77 + 48);
    v117 = (v77 + 56);
    v79 = _swiftEmptyArrayStorage;
    v80 = &unk_10025F3C0;
    v81 = &unk_1001D4320;
    do
    {
      v82 = v79;
      v83 = v81;
      v84 = v80;
      v85 = v0[32];
      v86 = v0[30];
      v87 = v0[28];
      v88 = v0[26];
      v127(v85, v78, v86);
      PromptCompletion.Segment.content.getter();
      (*v123)(v85, v86);
      v89 = (*v121)(v87, v88);
      v90 = v0[28];
      v91 = v0[26];
      v92 = v0[20];
      v93 = v0[18];
      if (v89 == v119)
      {
        (*v111)(v0[28], v0[26]);
        (*v132)(v93, v90, v92);
        (*v117)(v93, 0, 1, v92);
      }

      else
      {
        (*v117)(v0[18], 1, 1, v0[20]);
        (*v112)(v90, v91);
      }

      v95 = v0[19];
      v94 = v0[20];
      v80 = v84;
      v96 = v84;
      v81 = v83;
      sub_10002A894(v0[18], v95, v96, v83);
      if ((*v115)(v95, 1, v94) == 1)
      {
        sub_10000F500(v0[19], v80, v83);
        v79 = v82;
      }

      else
      {
        v97 = *v132;
        (*v132)(v0[22], v0[19], v0[20]);
        v79 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_10017DD5C(0, v82[2] + 1, 1, v82);
        }

        v99 = v79[2];
        v98 = v79[3];
        if (v99 >= v98 >> 1)
        {
          v79 = sub_10017DD5C((v98 > 1), v99 + 1, 1, v79);
        }

        v100 = v0[22];
        v101 = v0[20];
        v79[2] = v99 + 1;
        v97(v79 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v99, v100, v101);
      }

      v78 += v125;
      --v74;
    }

    while (v74);
  }

  else
  {

    v79 = _swiftEmptyArrayStorage;
  }

  v0[48] = v79;
  v0[9] = v135;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for [A]);
  v102 = BidirectionalCollection<>.joined(separator:)();
  v104 = v103;

  v0[49] = v102;
  v0[50] = v104;
  v105 = sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
  v106 = static MainActor.shared.getter();
  v0[51] = v106;
  v107 = swift_task_alloc();
  v0[52] = v107;
  *(v107 + 16) = v79;
  v108 = sub_10000341C(&qword_10025F3E0, &qword_1001D4348);
  v109 = swift_task_alloc();
  v0[53] = v109;
  *v109 = v0;
  v109[1] = sub_1000986C0;
  v139 = v108;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 10, v105, v108, v106, &protocol witness table for MainActor, &unk_1001D4340, v107, v105);
}

uint64_t sub_1000986C0()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_100098D98;
  }

  else
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_100098854;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100098854(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 80);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v3 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "images: %ld", v6, 0xCu);
  }

  else
  {
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = String.count.getter();

    _os_log_impl(&_mh_execute_header, v7, v8, "text: %ld chars", v9, 0xCu);
  }

  else
  {
  }

  v10 = *(v2 + 400);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(v2 + 392) & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v18 = *(v2 + 312);
    v19 = *(v2 + 320);
    v20 = *(v2 + 304);

    sub_100099280();
    swift_allocError();
    *v22 = 0xD000000000000016;
    v22[1] = 0x80000001001E49D0;
    swift_willThrow();
    goto LABEL_13;
  }

  v13 = *(v2 + 128);
  v12 = *(v2 + 136);
  v14 = *(v2 + 120);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v15 = String.data(using:allowLossyConversion:)();
  v17 = v16;

  (*(v13 + 8))(v12, v14);
  if (v17 >> 60 == 15)
  {
    v18 = *(v2 + 312);
    v19 = *(v2 + 320);
    v20 = *(v2 + 304);

    sub_100099280();
    swift_allocError();
    *v21 = 0xD000000000000025;
    v21[1] = 0x80000001001E49A0;
    swift_willThrow();

LABEL_13:
    (*(v18 + 8))(v19, v20);
LABEL_16:

    v25 = *(v2 + 8);
    goto LABEL_17;
  }

  v23 = *(v2 + 432);
  sub_10009A06C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v24 = *(v2 + 368);
  if (v23)
  {
    (*(*(v2 + 312) + 8))(*(v2 + 320), *(v2 + 304));
    sub_10009A0C0(v15, v17);

    goto LABEL_16;
  }

  v30 = *(v2 + 360);
  v27 = *(v2 + 104);
  (*(*(v2 + 312) + 8))(*(v2 + 320), *(v2 + 304));
  sub_10009A0C0(v15, v17);

  v28 = *(v2 + 48);
  v29 = *(v2 + 56);

  *v27 = v28;
  *(v27 + 8) = v29;
  *(v27 + 24) = v3;
  *(v27 + 32) = v30;
  *(v27 + 40) = v24;
  v25 = *(v2 + 8);
LABEL_17:

  return v25();
}

uint64_t sub_100098D98(uint64_t a1, uint64_t a2)
{
  v4 = v2[39];
  v3 = v2[40];
  v5 = v2[38];

  (*(v4 + 8))(v3, v5);

  v6 = v2[1];

  return v6();
}

id sub_100098EC4()
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  dispatch thunk of GenerativePartnerServiceProvider.intendedDefaultLLM.getter();

  if (v10)
  {
    sub_100027874(v9, v10);
    dispatch thunk of LLMProvider.iconSymbolName.getter();
    v1 = v0;
    sub_10000F4B4(v9);
    if (v1)
    {
      v2 = String._bridgeToObjectiveC()();

      v3 = [objc_opt_self() _systemImageNamed:v2];

      return v3;
    }
  }

  else
  {
    sub_10000F500(v9, &qword_1002651D0, &unk_1001DDA20);
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F34C(v5, qword_100276F08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "There is no active LLM", v8, 2u);
  }

  return 0;
}

uint64_t sub_100099074(uint64_t a1)
{
  v2 = type metadata accessor for CompositionModel.Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000990D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000991B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100074EBC(v1);
}

void sub_1000991E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse) = v2;
  v4 = v2;
}

uint64_t sub_100099228(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100072700(v1, v2);
}

unint64_t sub_100099280()
{
  result = qword_10025F340;
  if (!qword_10025F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F340);
  }

  return result;
}

uint64_t sub_100099318()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100099358(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_10009445C(a1, v4, v5, v6);
}

uint64_t sub_1000995B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100099690(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100028688;

  return sub_10008F098(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1000997E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100099894()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100099960(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002B2A0;

  return sub_10008CD90(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100099AD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099B14()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100099B5C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

uint64_t sub_100099C68()
{
  v1 = type metadata accessor for CompositionModel.Session(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  v6 = *(v1 + 28);
  v7 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void *sub_100099DE0()
{
  v1 = *(type metadata accessor for CompositionModel.Session(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10008B380(v3, (v0 + v2), v4);
}

unint64_t sub_100099F30()
{
  result = qword_10025F3A8;
  if (!qword_10025F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F3A8);
  }

  return result;
}

uint64_t sub_100099FBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002B2A0;

  return sub_1000888F0(a1, a2, v6);
}

unint64_t sub_10009A06C()
{
  result = qword_10025F3E8;
  if (!qword_10025F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F3E8);
  }

  return result;
}

uint64_t sub_10009A0C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10004DD08(result, a2);
  }

  return result;
}

uint64_t sub_10009A0D4()
{
  v1 = type metadata accessor for PromptCompletion.ImageContent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10009A198(uint64_t a1)
{
  v4 = *(type metadata accessor for PromptCompletion.ImageContent() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100028688;

  return sub_1000895A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10009A2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F440, &qword_1001D43B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009A31C(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F440, &qword_1001D43B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009A3AC(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_10009A3EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009A494;

  return sub_100083A40(a1, v5, v4);
}

uint64_t sub_10009A494(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_10009A590()
{
  result = qword_10025F450;
  if (!qword_10025F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F450);
  }

  return result;
}

uint64_t sub_10009A5E4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009A70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009A774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10009A85C()
{
  result = qword_10025F468;
  if (!qword_10025F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F468);
  }

  return result;
}

uint64_t sub_10009A8B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void sub_10009A8F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000728D4(v1);
}

uint64_t sub_10009A928(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100073040(v1, v2);
}

uint64_t sub_10009A9F8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser) = *(v0 + 24);
}

uint64_t sub_10009AAB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000341C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009AB44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000341C(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009AC34()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements) = *(v0 + 24);
}

uint64_t sub_10009AC98(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_10009ACDC()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
  *v2 = v0[3];
  v2[1] = v1;
}

__n128 sub_10009ADF0()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void sub_10009AE14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString) = v2;
  v4 = v2;
}

uint64_t sub_10009AE54()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10009AEFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10009AF14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009AF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10009AFC0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009AFF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10009B1F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_10009B250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_10009B2C4()
{
  v9 = _swiftEmptyArrayStorage;
  v1 = [v0 length];
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10009C904;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10009C910;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB1C;
  aBlock[3] = &unk_10024D320;
  v4 = _Block_copy(aBlock);

  [v0 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v1 usingBlock:{0x100000, v4}];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

char *sub_10009B460()
{
  v1 = [v0 string];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    while (1)
    {
      String.index(before:)();
      v6 = String.subscript.getter();
      v8 = v7;

      if (v6 == 10 && v8 == 0xE100000000000000)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          return result;
        }
      }

      result = [v0 length];
      if (__OFSUB__(result, 1))
      {
        break;
      }

      [v0 deleteCharactersInRange:{result - 1, 1}];
      v12 = [v0 string];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }

  return result;
}

id sub_10009B604()
{
  result = [v0 length];
  if (result)
  {
    if ([v0 attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    sub_10009C830(v8, &v6);
    if (*(&v7 + 1))
    {
      sub_1000081B0(0, &qword_10025F518, NSParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v2 = [v5 textLists];
        sub_1000081B0(0, &qword_10025C310, NSTextList_ptr);
        v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v3 >> 62)
        {
          v4 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_10009C7C8(v8);
        return (v4 >= 1);
      }
    }

    else
    {
      sub_10009C7C8(&v6);
    }

    sub_10009C7C8(v8);
    return 0;
  }

  return result;
}

void sub_10009B798()
{
  if (sub_10009B604())
  {
    v1 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v1 setLineSpacing:3.0];
    [v1 setHeadIndent:18.0];
    sub_10000341C(&qword_10025F470, &qword_1001D1020);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1001D4820;
    sub_100006470(_swiftEmptyArrayStorage);
    v3 = objc_allocWithZone(NSTextTab);
    type metadata accessor for OptionKey(0);
    sub_10009C770();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = [v3 initWithTextAlignment:0 location:isa options:5.0];

    *(v2 + 32) = v5;
    sub_100006470(_swiftEmptyArrayStorage);
    v6 = objc_allocWithZone(NSTextTab);
    v7 = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = [v6 initWithTextAlignment:0 location:v7 options:18.0];

    *(v2 + 40) = v8;
    sub_1000081B0(0, &qword_10025F508, NSTextTab_ptr);
    v9 = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTabStops:v9];

    v10 = v1;
    [v0 addAttribute:NSParagraphStyleAttributeName value:v10 range:{0, objc_msgSend(v0, "length")}];
  }
}

void sub_10009BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10009C830(a1, v9);
  if (v10)
  {
    sub_1000081B0(0, &qword_10025F528, NSTextAttachment_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v8 image];
      if (v6)
      {
        v7 = v6;
        Image.init(uiImage:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(*a5 + 16) >= *(*a5 + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }

  else
  {
    sub_10009C7C8(v9);
  }
}

uint64_t sub_10009BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_100008150(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_10009C7C8(v13);
}

void sub_10009BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10009C830(a1, v9);
  if (v10)
  {
    sub_1000081B0(0, &qword_10025F518, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000081B0(0, &qword_10025C308, NSMutableParagraphStyle_ptr);
      swift_dynamicCast();
      [v8 setSecondaryLineBreakMode:2];
      [a5 removeAttribute:NSParagraphStyleAttributeName range:{a2, a3}];
      [a5 addAttribute:NSParagraphStyleAttributeName value:v8 range:{a2, a3}];
    }
  }

  else
  {
    sub_10009C7C8(v9);
  }
}

uint64_t sub_10009BD50(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5, double a6, double a7, double a8, double a9)
{
  if (a2)
  {
    return 0;
  }

  LODWORD(a8) = 1148846080;
  LODWORD(a9) = 1144750080;
  [a5 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:a4 verticalFittingPriority:{*&a1, 1.79769313e308, a8, a9}];
  if (v11 < *&a1)
  {
    v11 = *&a1;
  }

  return *&v11;
}

uint64_t sub_10009BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009C8A0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009BE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009C8A0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10009BEA8(uint64_t a1)
{
  sub_10009C8A0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10009BED4()
{
  result = qword_10025F500;
  if (!qword_10025F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F500);
  }

  return result;
}

id sub_10009BF28(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(UITextView) init];

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v12 = v10;
  sub_100152E2C(v10);

  if (a4)
  {
  }

  [v12 setWritingToolsBehavior:-1];
  [v12 setEditable:0];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setScrollEnabled:0];
  [v14 setIsAccessibilityElement:1];
  LODWORD(v16) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v17];
  [v14 frame];
  [v14 setFrame:?];

  return v14;
}

void sub_10009C1D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v34 = a3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v32 = v9;
    v33 = v8;
    v12 = [objc_opt_self() presentableAttributedString:a4 withAttributes:0];
    v13 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
    sub_10009B460();
    v14 = v13;
    v15 = [v14 length];
    [v14 removeAttribute:NSTrackingAttributeName range:{0, v15}];
    [v14 removeAttribute:NSKernAttributeName range:{0, v15}];
    v16 = [v14 length];

    v17 = [objc_opt_self() labelColor];
    [v14 addAttribute:NSForegroundColorAttributeName value:v17 range:{0, v16}];

    if (sub_10009B604())
    {
      sub_10009B798();
    }

    if ((a5 & 1) == 0)
    {

      v9 = v32;
      v8 = v33;
      goto LABEL_9;
    }

    v31 = NSParagraphStyleAttributeName;
    v18 = [v14 length];
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_10009C718;
    *(v20 + 24) = v19;
    aBlock[4] = sub_10009C730;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009BB1C;
    aBlock[3] = &unk_10024D2A8;
    v21 = _Block_copy(aBlock);
    v22 = v14;

    [v22 enumerateAttribute:v31 inRange:0 options:v18 usingBlock:{0, v21}];

    _Block_release(v21);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    v9 = v32;
    v8 = v33;
    v23 = v34;
    if ((v21 & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v14 = 0;
LABEL_9:
  v23 = v34;
LABEL_10:

  v24 = a2;
  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v24 = aBlock[0];
  }

  v26 = *(v24 + 96);
  if (v26)
  {
    if (!v14)
    {

      return;
    }

    v27 = v26;
    v28 = v14;
    v29 = [v27 isEqualToAttributedString:v28];

    if (v29)
    {

      return;
    }
  }

  else
  {
  }

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  sub_1001545B0(v14);
}

uint64_t sub_10009C6E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009C758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10009C770()
{
  result = qword_10025AF38;
  if (!qword_10025AF38)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AF38);
  }

  return result;
}

uint64_t sub_10009C7C8(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F510, &unk_1001D49B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009C830(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F510, &unk_1001D49B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009C8A0()
{
  result = qword_10025F520;
  if (!qword_10025F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F520);
  }

  return result;
}

__n128 sub_10009C92C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10009C940(uint64_t a1, int a2)
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

uint64_t sub_10009C988(uint64_t result, int a2, int a3)
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

uint64_t sub_10009C9E8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10009C9F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_10009CEFC(v7, v8) & 1;
}

uint64_t sub_10009CA4C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10009CA7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_10009CB1C(uint64_t a1)
{
  v2 = sub_10009CEA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009CB58(uint64_t a1)
{
  v2 = sub_10009CEA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009CB94(void *a1, uint64_t a2)
{
  v35 = sub_10000341C(&qword_10025F530, &qword_1001D4AC0);
  v24 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v24 - v5;
  sub_100027874(a1, a1[3]);
  sub_10009CEA8();
  v26 = v6;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  v25 = a2;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_12:
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v18 = v17 | (v14 << 6);
      v19 = (*(v25 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      sub_100028458(*(v25 + 56) + 40 * v18, v27);
      *&v28 = v21;
      *(&v28 + 1) = v20;
      sub_100008198(v27, &v29);

      v16 = v14;
LABEL_13:
      v32 = v28;
      v33[0] = v29;
      v33[1] = v30;
      v34 = v31;
      v22 = *(&v28 + 1);
      if (!*(&v28 + 1))
      {

        return (*(v24 + 8))(v26, v35);
      }

      v23 = v32;
      sub_100008198(v33, &v28);
      sub_100027874(&v28, *(&v29 + 1));
      *&v27[0] = v23;
      *(&v27[0] + 1) = v22;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v2)
      {
        break;
      }

      result = sub_10000F4B4(&v28);
      v13 = v16;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    (*(v24 + 8))(v26, v35);
    return sub_10000F4B4(&v28);
  }

  else
  {
LABEL_5:
    if (v11 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v11;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v10 = 0;
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        goto LABEL_13;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10009CEA8()
{
  result = qword_10025F538;
  if (!qword_10025F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F538);
  }

  return result;
}

uint64_t sub_10009CEFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = 0xE800000000000000;
  v7 = 0x74786554676E6F6CLL;
  if (*(a1 + 32) != 1)
  {
    v7 = 0x6F746F6870;
    v6 = 0xE500000000000000;
  }

  if (*(a1 + 32))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x78655474726F6873;
  }

  if (*(a1 + 32))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE900000000000074;
  }

  v10 = 0xE800000000000000;
  v11 = 0x74786554676E6F6CLL;
  if (*(a2 + 32) != 1)
  {
    v11 = 0x6F746F6870;
    v10 = 0xE500000000000000;
  }

  if (*(a2 + 32))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x78655474726F6873;
  }

  if (*(a2 + 32))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE900000000000074;
  }

  if (v8 == v12 && v9 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a1[7];
  v16 = *(a2 + 56);

  return sub_10017BAAC(v15, v16);
}

uint64_t sub_10009D09C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10009D0E4(uint64_t result, int a2, int a3)
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

unint64_t sub_10009D134()
{
  result = qword_10025F540;
  if (!qword_10025F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F540);
  }

  return result;
}

unint64_t sub_10009D18C()
{
  result = qword_10025F548;
  if (!qword_10025F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F548);
  }

  return result;
}

uint64_t sub_10009D1E0(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_6;
  }

  v4 = sub_10000511C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0 || (sub_10002B0D0(*(a1 + 56) + 32 * v4, v33), !swift_dynamicCast()))
  {
LABEL_6:
    v32 = 0;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a1 + 16))
    {
      v9 = sub_10000511C(v7, v8);
      v11 = v10;

      if ((v11 & 1) == 0 || (sub_10002B0D0(*(a1 + 56) + 32 * v9, v33), (swift_dynamicCast() & 1) == 0))
      {
LABEL_11:
        v12._countAndFlagsBits = 58;
        v12._object = 0xE100000000000000;
        String.append(_:)(v12);
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(a1 + 16))
        {
          v15 = sub_10000511C(v13, v14);
          v17 = v16;

          if ((v17 & 1) == 0 || (sub_10002B0D0(*(a1 + 56) + 32 * v15, v33), (swift_dynamicCast() & 1) == 0))
          {
LABEL_16:
            v18._countAndFlagsBits = 124;
            v18._object = 0xE100000000000000;
            String.append(_:)(v18);
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(a1 + 16))
            {
              v21 = sub_10000511C(v19, v20);
              v23 = v22;

              if ((v23 & 1) == 0 || (sub_10002B0D0(*(a1 + 56) + 32 * v21, v33), (swift_dynamicCast() & 1) == 0))
              {
LABEL_21:
                v24._countAndFlagsBits = 58;
                v24._object = 0xE100000000000000;
                String.append(_:)(v24);
                v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                if (*(a1 + 16))
                {
                  v27 = sub_10000511C(v25, v26);
                  v29 = v28;

                  if ((v29 & 1) == 0)
                  {
                    return v32;
                  }

                  sub_10002B0D0(*(a1 + 56) + 32 * v27, v33);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    return v32;
                  }

                  String.append(_:)(v31);
                }

                return v32;
              }

              String.append(_:)(v31);
            }

            goto LABEL_21;
          }

          String.append(_:)(v31);
        }

        goto LABEL_16;
      }

      String.append(_:)(v31);
    }

    goto LABEL_11;
  }

  return v32;
}

uint64_t sub_10009D508(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v4 = sub_10000511C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_10002B0D0(*(a1 + 56) + 32 * v4, v9);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009D5DC(uint64_t a1, void *a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v5 = sub_10000511C(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_10002B0D0(*(a1 + 56) + 32 * v5, v10);
  sub_10009D740();
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009D68C(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v4 = sub_10000511C(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_10002B0D0(*(a1 + 56) + 32 * v4, v9);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_10009D740()
{
  result = qword_10025F4B8;
  if (!qword_10025F4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025F4B8);
  }

  return result;
}

uint64_t sub_10009D78C(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F550, &qword_1001D5B10);
  v3 = __chkstk_darwin(v2 - 8);
  v87 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v86 = &v83 - v6;
  v7 = __chkstk_darwin(v5);
  v85 = &v83 - v8;
  v9 = __chkstk_darwin(v7);
  v84 = &v83 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v83 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v83 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v83 - v18;
  __chkstk_darwin(v17);
  v21 = &v83 - v20;
  v91 = 0;
  v92 = 0xE000000000000000;
  v89 = a1;
  sub_10009DF04(a1, &v83 - v20);
  v22 = type metadata accessor for InferenceEnvironmentInfo();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v21, 1, v22);
  v88 = v23;
  if (v25 == 1)
  {
    sub_10009DF74(v21);
  }

  else
  {
    v26 = InferenceEnvironmentInfo.baseModelIdentifier.getter();
    v28 = v27;
    (*(v23 + 8))(v21, v22);
    if (v28)
    {
      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);
    }
  }

  v30._countAndFlagsBits = 58;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  sub_10009DF04(v89, v19);
  if (v24(v19, 1, v22) == 1)
  {
    sub_10009DF74(v19);
  }

  else
  {
    v31 = InferenceEnvironmentInfo.baseModelVersion.getter();
    v33 = v32;
    (*(v88 + 8))(v19, v22);
    if (v33)
    {
      v34._countAndFlagsBits = v31;
      v34._object = v33;
      String.append(_:)(v34);
    }
  }

  v35._countAndFlagsBits = 124;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36 = v89;
  sub_10009DF04(v89, v16);
  if (v24(v16, 1, v22) == 1)
  {
    sub_10009DF74(v16);
    v37 = v88;
  }

  else
  {
    v38 = InferenceEnvironmentInfo.modelIdentifier.getter();
    v40 = v39;
    v37 = v88;
    (*(v88 + 8))(v16, v22);
    if (v40)
    {
      v41._countAndFlagsBits = v38;
      v41._object = v40;
      String.append(_:)(v41);
    }
  }

  v42._countAndFlagsBits = 58;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  sub_10009DF04(v36, v13);
  v43 = v24(v13, 1, v22);
  v44 = v85;
  if (v43 == 1)
  {
    sub_10009DF74(v13);
  }

  else
  {
    v45 = InferenceEnvironmentInfo.modelVersion.getter();
    v47 = v46;
    (*(v37 + 8))(v13, v22);
    if (v47)
    {
      v48._countAndFlagsBits = v45;
      v48._object = v47;
      String.append(_:)(v48);
    }
  }

  v49._countAndFlagsBits = 124;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  v50 = v84;
  sub_10009DF04(v36, v84);
  v51 = v24(v50, 1, v22);
  v52 = v86;
  if (v51 == 1)
  {
    sub_10009DF74(v50);
  }

  else
  {
    v53 = v50;
    v54 = InferenceEnvironmentInfo.tokenizerIdentifier.getter();
    v56 = v55;
    (*(v37 + 8))(v53, v22);
    if (v56)
    {
      v57._countAndFlagsBits = v54;
      v57._object = v56;
      String.append(_:)(v57);
    }
  }

  v58._countAndFlagsBits = 58;
  v58._object = 0xE100000000000000;
  String.append(_:)(v58);
  sub_10009DF04(v36, v44);
  if (v24(v44, 1, v22) == 1)
  {
    sub_10009DF74(v44);
  }

  else
  {
    v59 = InferenceEnvironmentInfo.tokenizerVersion.getter();
    v61 = v60;
    (*(v37 + 8))(v44, v22);
    if (v61)
    {
      v62._countAndFlagsBits = v59;
      v62._object = v61;
      String.append(_:)(v62);
    }
  }

  v63._countAndFlagsBits = 124;
  v63._object = 0xE100000000000000;
  String.append(_:)(v63);
  sub_10009DF04(v36, v52);
  if (v24(v52, 1, v22) == 1)
  {
    sub_10009DF74(v52);
  }

  else
  {
    v64 = InferenceEnvironmentInfo.draftModelIdentifier.getter();
    v66 = v65;
    (*(v37 + 8))(v52, v22);
    if (v66)
    {
      v67._countAndFlagsBits = v64;
      v67._object = v66;
      String.append(_:)(v67);
    }
  }

  v68._countAndFlagsBits = 58;
  v68._object = 0xE100000000000000;
  String.append(_:)(v68);
  v69 = v87;
  sub_10009DF04(v36, v87);
  if (v24(v69, 1, v22) == 1)
  {
    sub_10009DF74(v69);
  }

  else
  {
    v70 = InferenceEnvironmentInfo.draftModelVersion.getter();
    v72 = v71;
    (*(v37 + 8))(v69, v22);
    if (v72)
    {
      v73._countAndFlagsBits = v70;
      v73._object = v72;
      String.append(_:)(v73);
    }
  }

  v74._countAndFlagsBits = 124;
  v74._object = 0xE100000000000000;
  String.append(_:)(v74);
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_10000F34C(v75, qword_100276F80);
  v76 = v91;
  v77 = v92;

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v90 = v81;
    *v80 = 136315138;
    *(v80 + 4) = sub_10002510C(v76, v77, &v90);
    _os_log_impl(&_mh_execute_header, v78, v79, "Calculate model info string = %s", v80, 0xCu);
    sub_10000F4B4(v81);
  }

  return v76;
}

uint64_t sub_10009DF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F550, &qword_1001D5B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DF74(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F550, &qword_1001D5B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009DFF0()
{
  result = qword_10025F558;
  if (!qword_10025F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F558);
  }

  return result;
}

double sub_10009E054(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t (*sub_10009E140(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10009E1C8;
}

void sub_10009E1C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_10009E218()
{
  result = qword_10025F560;
  if (!qword_10025F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F560);
  }

  return result;
}

Swift::Int sub_10009E26C(uint64_t *a1)
{
  v2 = *(sub_10000341C(&qword_10025F568, &qword_1001D4C90) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10009FF38(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10009E4B0(v6);
  *a1 = v3;
  return result;
}

void *sub_10009E320(uint64_t a1, uint64_t a2)
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

  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void *sub_10009E3A8(uint64_t a1, uint64_t a2)
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

  sub_10000341C(&qword_10025F588, &unk_1001D4CB0);
  v4 = *(sub_10000341C(&qword_10025F568, &qword_1001D4C90) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
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

Swift::Int sub_10009E4B0(int64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000341C(&qword_10025F568, &qword_1001D4C90);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10000341C(&qword_10025F568, &qword_1001D4C90) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10009E908(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10009E5F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10009E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  v9 = __chkstk_darwin(v8);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v52 = &v41 - v12;
  v13 = __chkstk_darwin(v11);
  v51 = &v41 - v14;
  v15 = __chkstk_darwin(v13);
  v56 = &v41 - v16;
  result = __chkstk_darwin(v15);
  v55 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v48 = -v21;
    v49 = v20;
    v23 = a1 - a3;
    v42 = v21;
    v24 = v20 + v21 * a3;
    v54 = v8;
LABEL_5:
    v46 = v22;
    v47 = a3;
    v44 = v24;
    v45 = v23;
    v25 = v24;
    v53 = v23;
    while (1)
    {
      v26 = v55;
      sub_1000A0B48(v25, v55);
      sub_1000A0B48(v22, v56);
      v27 = v51;
      sub_1000A0B48(v26, v51);
      v28 = *(v8 + 48);
      LayoutSubview.priority.getter();
      v30 = v29;
      v31 = type metadata accessor for LayoutSubview();
      v32 = *(*(v31 - 8) + 8);
      v32(v27 + v28, v31);
      v33 = v56;
      v34 = v52;
      sub_1000A0B48(v56, v52);
      v35 = *(v54 + 48);
      LayoutSubview.priority.getter();
      v37 = v36;
      v38 = v31;
      v8 = v54;
      v32(v34 + v35, v38);
      sub_1000A0BB8(v33);
      result = sub_1000A0BB8(v55);
      if (v37 >= v30)
      {
LABEL_4:
        a3 = v47 + 1;
        v22 = v46 + v42;
        v23 = v45 - 1;
        v24 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v39 = v50;
      sub_1000A0C20(v25, v50);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000A0C20(v39, v22);
      v22 += v48;
      v25 += v48;
      if (__CFADD__(v53++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10009E908(unint64_t *a1, uint64_t a2, int64_t *a3, int64_t a4)
{
  v5 = v4;
  v145 = a1;
  v160 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  v8 = *(v160 - 8);
  v9 = __chkstk_darwin(v160);
  v140 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v156 = &v140 - v12;
  v13 = __chkstk_darwin(v11);
  v159 = &v140 - v14;
  v15 = __chkstk_darwin(v13);
  v158 = &v140 - v16;
  v17 = __chkstk_darwin(v15);
  v157 = &v140 - v18;
  result = __chkstk_darwin(v17);
  v162 = &v140 - v20;
  v21 = a3[1];
  v147 = a3;
  if (v21 < 1)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_96:
    a4 = *v145;
    if (!*v145)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_98:
      v163 = v23;
      v136 = *(v23 + 2);
      if (v136 >= 2)
      {
        while (1)
        {
          v137 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          a3 = *&v23[16 * v136];
          v138 = *&v23[16 * v136 + 24];
          sub_10009F3CC(v137 + *(v8 + 72) * a3, v137 + *(v8 + 72) * *&v23[16 * v136 + 16], v137 + *(v8 + 72) * v138, a4);
          if (v5)
          {
          }

          if (v138 < a3)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_10009FA94(v23);
          }

          if (v136 - 2 >= *(v23 + 2))
          {
            goto LABEL_122;
          }

          v139 = &v23[16 * v136];
          *v139 = a3;
          *(v139 + 1) = v138;
          v163 = v23;
          result = sub_10009FA08(v136 - 1);
          v23 = v163;
          v136 = *(v163 + 2);
          a3 = v147;
          if (v136 <= 1)
          {
          }
        }
      }
    }

LABEL_128:
    result = sub_10009FA94(v23);
    v23 = result;
    goto LABEL_98;
  }

  v141 = a4;
  v22 = 0;
  v23 = _swiftEmptyArrayStorage;
  v142 = v8;
  while (1)
  {
    v24 = v22;
    if (v22 + 1 >= v21)
    {
      v45 = v22 + 1;
    }

    else
    {
      v153 = v21;
      v143 = v23;
      v144 = v5;
      v25 = v22;
      v146 = v22;
      v161 = *a3;
      v26 = v161;
      v27 = *(v8 + 72);
      v28 = v161 + v27 * (v22 + 1);
      v29 = v162;
      sub_1000A0B48(v28, v162);
      v30 = v157;
      sub_1000A0B48(v26 + v27 * v25, v157);
      v31 = v29;
      v32 = v158;
      sub_1000A0B48(v31, v158);
      v33 = *(v160 + 48);
      LayoutSubview.priority.getter();
      v35 = v34;
      v36 = type metadata accessor for LayoutSubview();
      v37 = *(v36 - 8);
      v38 = *(v37 + 8);
      v39 = v37 + 8;
      v38(v32 + v33, v36);
      v40 = v159;
      sub_1000A0B48(v30, v159);
      a4 = *(v160 + 48);
      LayoutSubview.priority.getter();
      v42 = v41;
      v150 = v38;
      v151 = v36;
      v149 = v39;
      v38(v40 + a4, v36);
      sub_1000A0BB8(v30);
      result = sub_1000A0BB8(v162);
      v43 = v146 + 2;
      v152 = v27;
      v44 = v161 + v27 * (v146 + 2);
      while (1)
      {
        v45 = v153;
        if (v153 == v43)
        {
          break;
        }

        LODWORD(v155) = v42 < v35;
        v46 = v162;
        v161 = v43;
        sub_1000A0B48(v44, v162);
        v154 = v28;
        v47 = v157;
        sub_1000A0B48(v28, v157);
        v48 = v158;
        sub_1000A0B48(v46, v158);
        v49 = v160;
        v50 = *(v160 + 48);
        LayoutSubview.priority.getter();
        v52 = v51;
        v53 = v150;
        a4 = v151;
        (v150)(v48 + v50, v151);
        v54 = v159;
        sub_1000A0B48(v47, v159);
        v55 = *(v49 + 48);
        LayoutSubview.priority.getter();
        v57 = v56;
        v53(v54 + v55, a4);
        sub_1000A0BB8(v47);
        result = sub_1000A0BB8(v162);
        v43 = v161 + 1;
        v44 += v152;
        v28 = v154 + v152;
        if (((v155 ^ (v57 >= v52)) & 1) == 0)
        {
          v45 = v161;
          break;
        }
      }

      v5 = v144;
      v8 = v142;
      v23 = v143;
      v24 = v146;
      a3 = v147;
      if (v42 < v35)
      {
        v58 = v140;
        if (v45 < v146)
        {
          goto LABEL_125;
        }

        if (v146 < v45)
        {
          v59 = v152 * (v45 - 1);
          v60 = v45 * v152;
          v153 = v45;
          v61 = v146;
          v62 = v146 * v152;
          do
          {
            if (v61 != --v45)
            {
              v63 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              a4 = v63 + v62;
              sub_1000A0C20(v63 + v62, v58);
              if (v62 < v59 || a4 >= (v63 + v60))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1000A0C20(v58, v63 + v59);
            }

            ++v61;
            v59 -= v152;
            v60 -= v152;
            v62 += v152;
          }

          while (v61 < v45);
          v5 = v144;
          v8 = v142;
          v23 = v143;
          v24 = v146;
          v45 = v153;
        }
      }
    }

    v64 = a3[1];
    if (v45 >= v64)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v45, v24))
    {
      goto LABEL_124;
    }

    if (v45 - v24 >= v141)
    {
LABEL_32:
      a4 = v45;
      if (v45 < v24)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v24, v141))
    {
      goto LABEL_126;
    }

    if (v24 + v141 >= v64)
    {
      a4 = a3[1];
    }

    else
    {
      a4 = v24 + v141;
    }

    if (a4 < v24)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v45 == a4)
    {
      goto LABEL_32;
    }

    v143 = v23;
    v144 = v5;
    v111 = *a3;
    v112 = *(v8 + 72);
    v113 = *a3 + v112 * (v45 - 1);
    v154 = -v112;
    v155 = v111;
    v146 = v24;
    v114 = v24 - v45;
    v148 = v112;
    v149 = a4;
    v115 = (v111 + v45 * v112);
    v116 = v160;
LABEL_87:
    v152 = v113;
    v153 = v45;
    v150 = v115;
    v151 = v114;
    v117 = v115;
    v118 = v114;
    v119 = v113;
LABEL_88:
    v161 = v118;
    v120 = v162;
    sub_1000A0B48(v117, v162);
    v121 = v157;
    sub_1000A0B48(v119, v157);
    v122 = v158;
    sub_1000A0B48(v120, v158);
    v123 = *(v116 + 48);
    LayoutSubview.priority.getter();
    v125 = v124;
    v126 = type metadata accessor for LayoutSubview();
    v127 = v116;
    v128 = *(*(v126 - 8) + 8);
    v128(v122 + v123, v126);
    v129 = v159;
    sub_1000A0B48(v121, v159);
    v130 = *(v127 + 48);
    LayoutSubview.priority.getter();
    v132 = v131;
    v128(v129 + v130, v126);
    sub_1000A0BB8(v121);
    result = sub_1000A0BB8(v162);
    if (v132 < v125)
    {
      break;
    }

    v116 = v160;
LABEL_86:
    v45 = v153 + 1;
    a4 = v149;
    v113 = v152 + v148;
    v114 = v151 - 1;
    v115 = &v150[v148];
    if (v153 + 1 != v149)
    {
      goto LABEL_87;
    }

    v5 = v144;
    v24 = v146;
    a3 = v147;
    v8 = v142;
    v23 = v143;
    if (v149 < v146)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v149 = a4;
    if ((result & 1) == 0)
    {
      result = sub_10009FBA4(0, *(v23 + 2) + 1, 1, v23);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v65 = *(v23 + 3);
    v66 = a4 + 1;
    if (a4 >= v65 >> 1)
    {
      result = sub_10009FBA4((v65 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v66;
    v67 = &v23[16 * a4];
    v68 = v149;
    *(v67 + 4) = v24;
    *(v67 + 5) = v68;
    if (!*v145)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      v69 = *v145;
      while (1)
      {
        a4 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v70 = *(v23 + 4);
          v71 = *(v23 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_53:
          if (v73)
          {
            goto LABEL_112;
          }

          v86 = &v23[16 * v66];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_115;
          }

          v92 = &v23[16 * a4 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_119;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              a4 = v66 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v96 = &v23[16 * v66];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_67:
        if (v91)
        {
          goto LABEL_114;
        }

        v99 = &v23[16 * a4];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_117;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_74:
        v107 = a4 - 1;
        if (a4 - 1 >= v66)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v108 = *&v23[16 * v107 + 32];
        v109 = *&v23[16 * a4 + 40];
        sub_10009F3CC(*a3 + *(v8 + 72) * v108, *a3 + *(v8 + 72) * *&v23[16 * a4 + 32], *a3 + *(v8 + 72) * v109, v69);
        if (v5)
        {
        }

        if (v109 < v108)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10009FA94(v23);
        }

        if (v107 >= *(v23 + 2))
        {
          goto LABEL_109;
        }

        v110 = &v23[16 * v107];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        v163 = v23;
        result = sub_10009FA08(a4);
        v23 = v163;
        v66 = *(v163 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v23[16 * v66 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_110;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_111;
      }

      v81 = &v23[16 * v66];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_113;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_116;
      }

      if (v85 >= v77)
      {
        v103 = &v23[16 * a4 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_120;
        }

        if (v72 < v106)
        {
          a4 = v66 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v21 = a3[1];
    v22 = v149;
    if (v149 >= v21)
    {
      goto LABEL_96;
    }
  }

  v133 = v161;
  if (v155)
  {
    v134 = v156;
    sub_1000A0C20(v117, v156);
    v116 = v160;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000A0C20(v134, v119);
    v119 += v154;
    v117 += v154;
    v135 = __CFADD__(v133, 1);
    v118 = v133 + 1;
    if (v135)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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
  return result;
}

uint64_t sub_10009F3CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v76 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  v8 = __chkstk_darwin(v76);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v69 = &v61 - v11;
  v12 = __chkstk_darwin(v10);
  v68 = &v61 - v13;
  result = __chkstk_darwin(v12);
  v72 = &v61 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v79 = a1;
  v78 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v21;
    if (v21 >= 1)
    {
      v40 = -v17;
      v41 = v39;
      v73 = a4;
      v74 = a1;
      v64 = v40;
      v42 = v68;
      while (2)
      {
        while (1)
        {
          v62 = v39;
          v43 = a2;
          v44 = a2 + v40;
          v75 = v44;
          v65 = v43;
          while (1)
          {
            if (v43 <= a1)
            {
              v79 = v43;
              v77 = v62;
              goto LABEL_59;
            }

            v63 = v39;
            v71 = a3 + v40;
            v45 = v41 + v40;
            v46 = v72;
            v67 = a3;
            sub_1000A0B48(v45, v72);
            v66 = v41;
            sub_1000A0B48(v44, v42);
            v47 = v69;
            sub_1000A0B48(v46, v69);
            v48 = v76;
            v49 = *(v76 + 48);
            LayoutSubview.priority.getter();
            v51 = v50;
            v52 = type metadata accessor for LayoutSubview();
            v53 = *(*(v52 - 8) + 8);
            v53(v47 + v49, v52);
            v54 = v70;
            sub_1000A0B48(v42, v70);
            v55 = *(v48 + 48);
            LayoutSubview.priority.getter();
            v57 = v56;
            v53(v54 + v55, v52);
            sub_1000A0BB8(v42);
            sub_1000A0BB8(v72);
            if (v57 < v51)
            {
              break;
            }

            v39 = v45;
            a3 = v71;
            v58 = v73;
            v59 = v45;
            if (v67 < v66 || v71 >= v66)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v74;
              v44 = v75;
              v40 = v64;
            }

            else
            {
              a1 = v74;
              v44 = v75;
              v40 = v64;
              if (v67 != v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v41 = v39;
            v43 = v65;
            if (v59 <= v58)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v41 = v66;
          a3 = v71;
          v60 = v73;
          if (v67 < v65 || v71 >= v65)
          {
            break;
          }

          a1 = v74;
          a2 = v75;
          v39 = v63;
          v40 = v64;
          if (v67 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v41 <= v60)
          {
            goto LABEL_58;
          }
        }

        a2 = v75;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v74;
        v39 = v63;
        v40 = v64;
        if (v41 > v60)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v79 = a2;
    v77 = v39;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = a4 + v20;
    v77 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v71 = a3;
      v66 = v17;
      do
      {
        v74 = a1;
        v75 = a2;
        v73 = a4;
        v23 = v72;
        sub_1000A0B48(a2, v72);
        v24 = v68;
        sub_1000A0B48(a4, v68);
        v25 = v69;
        sub_1000A0B48(v23, v69);
        v26 = v76;
        v27 = *(v76 + 48);
        LayoutSubview.priority.getter();
        v29 = v28;
        v30 = type metadata accessor for LayoutSubview();
        v31 = *(*(v30 - 8) + 8);
        v31(v25 + v27, v30);
        v32 = v70;
        sub_1000A0B48(v24, v70);
        v33 = *(v26 + 48);
        LayoutSubview.priority.getter();
        v35 = v34;
        v31(v32 + v33, v30);
        sub_1000A0BB8(v24);
        sub_1000A0BB8(v23);
        if (v35 >= v29)
        {
          v37 = v74;
          a2 = v75;
          v36 = v66;
          a4 = v73 + v66;
          if (v74 < v73 || v74 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v71;
          }

          else
          {
            v38 = v71;
            if (v74 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v78 = a4;
        }

        else
        {
          v36 = v66;
          v37 = v74;
          a2 = v75 + v66;
          a4 = v73;
          if (v74 < v75 || v74 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v71;
          }

          else
          {
            v38 = v71;
            if (v74 != v75)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 = v37 + v36;
        v79 = a1;
      }

      while (a4 < v67 && a2 < v38);
    }
  }

LABEL_59:
  sub_10009FABC(&v79, &v78, &v77, &qword_10025F568, &qword_1001D4C90);
  return 1;
}

uint64_t sub_10009FA08(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10009FA94(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10009FABC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = sub_10000341C(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10009FBA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_10025F580, &qword_1001D4CA8);
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

uint64_t sub_10009FCA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  v35 = *(v37 - 8);
  v8 = __chkstk_darwin(v37);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v36 = (&v33 - v12);
  v38 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v38;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(v14 - 32);
    v34 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v19 << 6);
      v26 = *(v38 + 56);
      v27 = (*(v38 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = type metadata accessor for LayoutSubview();
      (*(*(v30 - 8) + 16))(&v10[*(v37 + 48)], v26 + *(*(v30 - 8) + 72) * v25, v30);
      *v10 = v28;
      *(v10 + 1) = v29;
      a1 = v36;
      sub_1000A0C20(v10, v36);
      sub_1000A0C20(a1, a2);
      if (v21 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v35 + 72);
      result = v21;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v32 = v19 + 1;
    }

    else
    {
      v32 = v20;
    }

    v19 = v32 - 1;
    a3 = result;
LABEL_23:
    v16 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10009FF60(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v140 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  height = *(v140 - 8);
  v11 = __chkstk_darwin(v140);
  v13 = (v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v139 = (v129 - v14);
  v15 = type metadata accessor for LayoutSubview();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v129 - v21;
  __chkstk_darwin(v20);
  v24 = v129 - v23;
  type metadata accessor for LayoutSubviews();
  sub_1000A0AE8();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() == 3)
  {
    LayoutSubviews.subscript.getter();
    LayoutSubviews.subscript.getter();
    LayoutSubviews.subscript.getter();
    sub_10000341C(&qword_10025F578, &unk_1001D4C98);
    v132 = v19;
    v25 = sub_10000341C(&qword_10025AC70, &qword_1001CE940);
    v26 = *(*(v25 - 8) + 72);
    v27 = (*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80);
    v134 = v22;
    v28 = 2 * v26;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1001CF9F0;
    v30 = (v29 + v27);
    v31 = *(v25 + 48);
    static UnitPoint.leading.getter();
    *v30 = v32;
    *(v30 + 1) = v33;
    v133 = v16;
    v34 = v24;
    v35 = *(v16 + 16);
    v131 = v34;
    v35(&v30[v31]);
    v36 = &v30[v26];
    v37 = *(v25 + 48);
    static UnitPoint.trailing.getter();
    *v36 = v38;
    *(v36 + 1) = v39;
    (v35)(&v36[v37], v132, v15);
    v40 = &v30[v28];
    v41 = *(v25 + 48);
    static UnitPoint.center.getter();
    *v40 = v42;
    *(v40 + 1) = v43;
    v141 = v15;
    (v35)(&v30[v28 + v41], v134, v15);
    v44 = sub_100006598(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = sub_10009E3A8(*(v44 + 16), 0);
      v47 = sub_10009FCA8(&v143, v46 + ((*(*&height + 80) + 32) & ~*(*&height + 80)), v45, v44);
      v48 = v143;
      v49 = v144;

      sub_1000A0B40(v48, v49);
      if (v47 == v45)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    v46 = _swiftEmptyArrayStorage;
LABEL_6:
    v143 = v46;
    sub_10009E26C(&v143);
    v50 = v133;
    v129[1] = v44;
    v51 = v143;
    v52 = sub_100006790(_swiftEmptyArrayStorage);
    v146[0] = 0;
    v138 = *(v51 + 16);
    v130 = a6;
    if (v138)
    {
      v53 = 0;
      v137 = a5;
      v54 = a4 - (a6 + a6);
      v136 = *(v140 + 48);
      v135 = v51 + ((*(*&height + 80) + 32) & ~*(*&height + 80));
      v55 = (v50 + 32);
      while (v53 < *(v51 + 16))
      {
        v56 = v51;
        v57 = v139;
        sub_1000A0B48(v135 + *(*&height + 72) * v53, v139);
        v58 = *v57;
        v59 = v57[1];
        v60 = v141;
        v61 = *(v140 + 48);
        *v13 = *v57;
        v13[1] = v59;
        (*v55)(v13 + v61, v57 + v136, v60);
        v62 = v146[0];
        LOBYTE(v143) = v146[0];
        v145[0] = 0;
        LayoutSubview.sizeThatFits(_:)();
        v64 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v52;
        v67 = sub_100005224(v58, v59);
        v68 = v52[2];
        v69 = (v66 & 1) == 0;
        v70 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_41;
        }

        v71 = v66;
        if (v52[3] >= v70)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000F2CC4();
          }
        }

        else
        {
          sub_1000F0BF8(v70, isUniquelyReferenced_nonNull_native);
          v72 = sub_100005224(v58, v59);
          if ((v71 & 1) != (v73 & 1))
          {
            goto LABEL_60;
          }

          v67 = v72;
        }

        v51 = v56;
        v52 = v143;
        if (v71)
        {
          *(v143[7] + 8 * v67) = v64;
        }

        else
        {
          v143[(v67 >> 6) + 8] |= 1 << v67;
          v74 = (v52[6] + 16 * v67);
          *v74 = v58;
          v74[1] = v59;
          *(v52[7] + 8 * v67) = v64;
          v75 = v52[2];
          v76 = __OFADD__(v75, 1);
          v77 = v75 + 1;
          if (v76)
          {
            goto LABEL_42;
          }

          v52[2] = v77;
        }

        if (v62)
        {
          goto LABEL_59;
        }

        ++v53;
        sub_1000A0BB8(v13);
        v54 = v54 - v64;
        if (v138 == v53)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    else
    {
LABEL_21:
      static UnitPoint.leading.getter();
      if (v52[2])
      {
        v80 = sub_100005224(v78, v79);
        if (v81)
        {
          v82 = *(v52[7] + 8 * v80);
          v147.origin.x = a2;
          v147.origin.y = a3;
          v147.size.width = a4;
          v147.size.height = a5;
          MinX = CGRectGetMinX(v147);
          v148.origin.x = a2;
          v148.origin.y = a3;
          v148.size.width = a4;
          v148.size.height = a5;
          MaxX = CGRectGetMaxX(v148);
          static UnitPoint.trailing.getter();
          if (v52[2])
          {
            v87 = sub_100005224(v85, v86);
            if (v88)
            {
              v149.origin.y = a3;
              v89 = MaxX;
              v90 = *(v52[7] + 8 * v87);
              v149.origin.x = a2;
              v149.size.height = a5;
              y = v149.origin.y;
              v149.size.width = a4;
              height = v149.size.height;
              MidX = CGRectGetMidX(v149);
              static UnitPoint.center.getter();
              if (v52[2])
              {
                v95 = sub_100005224(v93, v94);
                if (v96)
                {
                  v97 = v82 + MinX;
                  v98 = v130;
                  v99 = MidX + *(v52[7] + 8 * v95) * -0.5;
                  v100 = v141;
                  v101 = v133;
                  v102 = v134;
                  v103 = v131;
                  if (v99 >= v97 + v130)
                  {
                    static UnitPoint.center.getter();
                    if (!v52[2])
                    {
LABEL_55:
                      __break(1u);
                      goto LABEL_56;
                    }

                    v106 = sub_100005224(v104, v105);
                    if ((v107 & 1) == 0)
                    {
LABEL_56:
                      __break(1u);
                      goto LABEL_57;
                    }

                    if (v89 - v90 - v98 < v99 + *(v52[7] + 8 * v106))
                    {
                      static UnitPoint.center.getter();
                      if (!v52[2])
                      {
LABEL_57:
                        __break(1u);
LABEL_58:
                        __break(1u);
LABEL_59:
                        __break(1u);
LABEL_60:
                        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                        __break(1u);
                        goto LABEL_61;
                      }

                      sub_100005224(v108, v109);
                      if ((v110 & 1) == 0)
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  v150.origin.x = a2;
                  v111 = y;
                  v150.origin.y = y;
                  v150.size.width = a4;
                  v112 = height;
                  v150.size.height = height;
                  CGRectGetMidY(v150);
                  static UnitPoint.leading.getter();
                  static UnitPoint.center.getter();
                  if (v52[2])
                  {
                    sub_100005224(v113, v114);
                    if (v115)
                    {
                      v151.origin.x = a2;
                      v151.origin.y = v111;
                      v151.size.width = a4;
                      v151.size.height = v112;
                      CGRectGetHeight(v151);
                      LOBYTE(v143) = 0;
                      v145[0] = 0;
                      LayoutSubview.place(at:anchor:proposal:)();
                      v152.origin.x = a2;
                      v152.origin.y = v111;
                      v152.size.width = a4;
                      v152.size.height = v112;
                      CGRectGetMinX(v152);
                      v153.origin.x = a2;
                      v153.origin.y = v111;
                      v153.size.width = a4;
                      v153.size.height = v112;
                      CGRectGetMidY(v153);
                      static UnitPoint.leading.getter();
                      static UnitPoint.leading.getter();
                      if (v52[2])
                      {
                        sub_100005224(v116, v117);
                        if (v118)
                        {
                          v154.origin.x = a2;
                          v154.origin.y = v111;
                          v154.size.width = a4;
                          v154.size.height = v112;
                          CGRectGetHeight(v154);
                          LOBYTE(v143) = 0;
                          v145[0] = 0;
                          LayoutSubview.place(at:anchor:proposal:)();
                          v155.origin.x = a2;
                          v155.origin.y = v111;
                          v155.size.width = a4;
                          v155.size.height = v112;
                          CGRectGetMaxX(v155);
                          v156.origin.x = a2;
                          v156.origin.y = v111;
                          v156.size.width = a4;
                          v156.size.height = v112;
                          CGRectGetMidY(v156);
                          static UnitPoint.trailing.getter();
                          static UnitPoint.trailing.getter();
                          if (v52[2])
                          {
                            sub_100005224(v119, v120);
                            v122 = v121;

                            if (v122)
                            {
                              v157.origin.x = a2;
                              v157.origin.y = v111;
                              v157.size.width = a4;
                              v157.size.height = v112;
                              CGRectGetHeight(v157);
                              LOBYTE(v143) = 0;
                              v145[0] = 0;
                              v123 = v132;
                              LayoutSubview.place(at:anchor:proposal:)();
                              v124 = *(v101 + 8);
                              v124(v123, v100);
                              v124(v102, v100);
                              v124(v103, v100);
                            }

                            goto LABEL_54;
                          }

LABEL_53:
                          __break(1u);
LABEL_54:
                          __break(1u);
                          goto LABEL_55;
                        }

LABEL_52:
                        __break(1u);
                        goto LABEL_53;
                      }

LABEL_51:
                      __break(1u);
                      goto LABEL_52;
                    }

LABEL_50:
                    __break(1u);
                    goto LABEL_51;
                  }

LABEL_49:
                  __break(1u);
                  goto LABEL_50;
                }

LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_61:
  v143 = 0;
  v144 = 0xE000000000000000;
  _StringGuts.grow(_:)(92);
  v126._countAndFlagsBits = 0xD000000000000033;
  v126._object = 0x80000001001E4F20;
  String.append(_:)(v126);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  *v146 = dispatch thunk of Collection.distance(from:to:)();
  v127._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v127);

  v128._object = 0x80000001001E4F60;
  v128._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v128);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1000A0AE8()
{
  result = qword_10025F570;
  if (!qword_10025F570)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F570);
  }

  return result;
}

uint64_t sub_1000A0B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0BB8(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A0C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for OutputDenyListBundle();
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for StringResponseSanitizer();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  type metadata accessor for InputDenyListBundle();
  v4[30] = swift_task_alloc();
  v9 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v4[31] = v9;
  v4[32] = *(v9 - 8);
  v4[33] = swift_task_alloc();
  v10 = type metadata accessor for StringRenderedPromptSanitizer();
  v4[34] = v10;
  v4[35] = *(v10 - 8);
  v4[36] = swift_task_alloc();
  sub_10000341C(&qword_10025F3A0, &qword_1001D42D8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v11 = type metadata accessor for SamplingParameters();
  v4[39] = v11;
  v4[40] = *(v11 - 8);
  v4[41] = swift_task_alloc();
  v12 = sub_10000341C(&qword_10025F650, &unk_1001D4D20);
  v4[42] = v12;
  v4[43] = *(v12 - 8);
  v4[44] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[45] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[46] = v14;
  v4[47] = v13;

  return _swift_task_switch(sub_1000A10B4, v14, v13);
}

uint64_t sub_1000A10B4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v48 = *(v0 + 320);
  v49 = *(v0 + 312);
  v3 = *(v0 + 296);
  v33 = *(v0 + 288);
  v46 = *(v0 + 280);
  v47 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 224);
  v30 = *(v0 + 248);
  v31 = *(v0 + 232);
  v32 = *(v0 + 216);
  v41 = *(v0 + 208);
  v44 = *(v0 + 200);
  v45 = *(v0 + 192);
  v36 = *(v0 + 176);
  v37 = *(v0 + 168);
  v34 = *(v0 + 184);
  v38 = *(v0 + 152);
  v39 = *(v0 + 144);
  v40 = *(v0 + 136);
  v43 = *(v0 + 112);
  v42 = *(v0 + 104);
  v7 = type metadata accessor for SamplingStrategy();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1000A386C(v2, v3);
  v35 = v1;
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  sub_10000F500(v2, &qword_10025F3A0, &qword_1001D42D8);
  static Catalog.Resource.TokenInputDenyList.WritingToolsComposeInputDenyList()();
  v8 = *(v0 + 40);
  v9 = sub_100027874((v0 + 16), v8);
  v10 = *(v8 - 8);
  v11 = swift_task_alloc();
  (*(v10 + 16))(v11, v9, v8, v12, v13, v14);
  InputDenyListBundle.init<A>(resource:)();

  StringRenderedPromptSanitizer.Overrides.init(denyList:)();
  sub_10000F4B4((v0 + 16));
  v15 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  (*(v4 + 104))(v5, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v30);
  v16 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v16 - 8) + 56))(v31, 1, 1, v16);
  (*(v6 + 104))(v31, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v32);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeOutputDenyList()();
  v17 = *(v0 + 80);
  v18 = sub_100027874((v0 + 56), v17);
  v19 = *(v17 - 8);
  v20 = swift_task_alloc();
  (*(v19 + 16))(v20, v18, v17, v21, v22, v23);
  OutputDenyListBundle.init<A>(resource:)();

  StringResponseSanitizer.Overrides.init(denyList:)();
  sub_10000F4B4((v0 + 56));
  v24 = type metadata accessor for StringResponseSanitizer.Overrides();
  (*(*(v24 - 8) + 56))(v34, 0, 1, v24);
  (*(v36 + 104))(v34, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v37);
  v25 = type metadata accessor for StringResponseSanitizer.Guardrails();
  (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
  (*(v39 + 104))(v38, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v40);
  StringResponseSanitizer.init(overrides:guardrails:)();
  v26 = swift_task_alloc();
  *(v26 + 16) = v43;
  *(v26 + 32) = v42;
  sub_1000A38FC();
  GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:query:)();

  (*(v44 + 8))(v41, v45);
  (*(v46 + 8))(v33, v47);
  (*(v48 + 8))(v35, v49);
  v27 = swift_task_alloc();
  *(v0 + 384) = v27;
  *v27 = v0;
  v27[1] = sub_1000A16B8;
  v28 = *(v0 + 336);

  return TokenStream.content()(v0 + 96, v28);
}

uint64_t sub_1000A16B8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 344);
  v5 = *(*v1 + 336);
  *(*v1 + 392) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 376);
  v7 = *(v2 + 368);
  if (v0)
  {
    v8 = sub_1000A1968;
  }

  else
  {
    v8 = sub_1000A1850;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000A1850(uint64_t a1, uint64_t a2)
{

  v5 = *(v2 + 96);

  v3 = *(v2 + 8);

  return v3(v5);
}

uint64_t sub_1000A1968(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000A1A74()
{
  v0 = sub_10000341C(&qword_10025F668, &qword_1001D4D50);
  sub_10002B2EC(v0, qword_100277050);
  sub_10000F34C(v0, qword_100277050);
  sub_10000341C(&qword_10025F670, &qword_1001D4D58);
  return Regex.init(_regexString:version:)();
}

void *sub_1000A1B04()
{
  v2 = v0;
  v3 = *v0;
  v63 = type metadata accessor for UUID();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SessionConfiguration();
  __chkstk_darwin(v5 - 8);
  v62 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt();
  __chkstk_darwin(v7 - 8);
  v57 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_10025F478, &unk_1001D4D30);
  __chkstk_darwin(v9 - 8);
  v56 = v48 - v10;
  v11 = type metadata accessor for Prompt.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for ChatMessageRole();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v54 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChatMessagePrompt();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = __chkstk_darwin(v14);
  v55 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v69 = v48 - v17;
  v18 = type metadata accessor for CachePolicy();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for SessionConfiguration();
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = __chkstk_darwin(v19);
  v53 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v66 = v48 - v22;
  v23 = sub_10000341C(&qword_10025F480, &qword_1001D4510);
  __chkstk_darwin(v23 - 8);
  v25 = v48 - v24;
  v26 = type metadata accessor for ModelBundle();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v65 = v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = OBJC_IVAR____TtC21WritingToolsUIService10SlotParser___observationRegistrar;
  ObservationRegistrar.init()();
  type metadata accessor for CompositionModel(0);
  sub_100071008(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_10000F500(v25, &qword_10025F480, &qword_1001D4510);
    sub_100099280();
    swift_allocError();
    *v29 = 0xD00000000000001DLL;
    v29[1] = 0x80000001001E4FF0;
    swift_willThrow();
LABEL_6:
    v46 = type metadata accessor for ObservationRegistrar();
    (*(*(v46 - 8) + 8))(v2 + v64, v46);
    swift_deallocPartialClassInstance();
    return v2;
  }

  v50 = v0;
  v48[1] = v3;
  v48[2] = v1;
  v30 = v65;
  (*(v27 + 32))(v65, v25, v26);
  sub_10000341C(&qword_10025F488, &qword_1001D4518);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001CF9D0;
  v33 = *(v27 + 16);
  v49 = v26;
  v33(v32 + v31, v30);
  static CachePolicy.inMemory.getter();
  v34 = v66;
  SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:parentOfOnBehalfOf:)();
  (*(v51 + 104))(v54, enum case for ChatMessageRole.system(_:), v52);
  Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v35);
  sub_10019B2F0(3u);
  v36 = type metadata accessor for Prompt.Component.Privacy();
  v37 = v56;
  (*(*(v36 - 8) + 56))(v56, 1, 1, v36);
  Prompt.StringInterpolation.appendInterpolation(_:priority:privacy:)();

  sub_10000F500(v37, &qword_10025F478, &unk_1001D4D30);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v38);
  Prompt.init(stringInterpolation:)();
  v39 = v69;
  ChatMessagePrompt.init(role:prompt:)();
  (*(v67 + 16))(v53, v34, v68);
  v41 = v58;
  v40 = v59;
  (*(v58 + 16))(v55, v39, v59);
  v42 = v60;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v61 + 8))(v42, v63);
  SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:)();
  type metadata accessor for GenerativeExperiencesSession();
  swift_allocObject();
  v43 = GenerativeExperiencesSession.init(configuration:)();
  if (!v43)
  {
    sub_100099280();
    swift_allocError();
    *v45 = 0xD000000000000020;
    v45[1] = 0x80000001001E5010;
    swift_willThrow();
    (*(v41 + 8))(v69, v40);
    (*(v67 + 8))(v66, v68);
    (*(v27 + 8))(v65, v49);
    v2 = v50;
    goto LABEL_6;
  }

  v44 = v43;
  (*(v41 + 8))(v69, v40);
  (*(v67 + 8))(v66, v68);
  (*(v27 + 8))(v65, v49);
  v2 = v50;
  v50[2] = v44;
  return v2;
}

uint64_t sub_1000A24D8()
{
  v1 = v0;
  type metadata accessor for GenerativeExperiencesSession();

  GenerativeExperiencesSession.sessionIdentifier()();

  v2 = static GenerativeExperiencesSession.terminateSession(for:)();

  if ((v2 & 1) == 0)
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F34C(v3, qword_100276F08);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "failed to terminate GES session", v6, 2u);
    }
  }

  v7 = OBJC_IVAR____TtC21WritingToolsUIService10SlotParser___observationRegistrar;
  v8 = type metadata accessor for ObservationRegistrar();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t sub_1000A2654()
{
  sub_1000A24D8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SlotParser(uint64_t a1)
{
  result = qword_10025F5C0;
  if (!qword_10025F5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A2700(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000A27A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a3;
  v17 = a2;
  v22 = a4;
  v5 = type metadata accessor for User();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChatMessagesPrompt();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = v17;
  v21 = v18;
  User.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v6 + 8))(v8, v5);
  sub_10000341C(&qword_10025F3B0, &unk_1001D4310);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001CF9D0;
  (*(v10 + 16))(v14 + v13, v12, v9);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000A29E8@<X0>(void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v39 = a2;
  v44 = a4;
  v4 = sub_10000341C(&qword_10025F478, &unk_1001D4D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for Prompt.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for Prompt();
  v42 = *(v8 - 8);
  v43 = v8 - 8;
  v9 = v42;
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  v40 = &v36 - v16;
  Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v17);
  v18 = type metadata accessor for Prompt.Component.Privacy();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  Prompt.StringInterpolation.appendInterpolation(_:priority:privacy:)();
  sub_10000F500(v6, &qword_10025F478, &unk_1001D4D30);
  v19._countAndFlagsBits = 2570;
  v19._object = 0xE200000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v19);
  Prompt.init(stringInterpolation:)();
  static CustomPromptBuilder.buildExpression(_:)();
  v20 = *(v9 + 8);
  v38 = v15;
  v20(v15, v8);
  v39 = v20;
  Prompt.init(stringLiteral:)();
  static CustomPromptBuilder.buildExpression(_:)();
  v37 = v12;
  v20(v12, v8);
  v45[0] = v41;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for [A]);
  v21 = BidirectionalCollection<>.joined(separator:)();
  v45[3] = &type metadata for String;
  v45[4] = &protocol witness table for String;
  v45[0] = v21;
  v45[1] = v22;
  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000F4B4(v45);
  sub_10000341C(&qword_10025F3B8, &qword_1001D4D40);
  v23 = *(v42 + 72);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = 2 * v23;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1001CF9F0;
  v27 = v26 + v24;
  v28 = *(v9 + 16);
  v29 = v40;
  v28(v27, v40, v8);
  v30 = v27 + v23;
  v31 = v38;
  v28(v30, v38, v8);
  v32 = v27 + v25;
  v33 = v37;
  v28(v32, v37, v8);
  static CustomPromptBuilder.buildBlock(_:)();

  v34 = v39;
  v39(v33, v8);
  v34(v31, v8);
  return (v34)(v29, v8);
}

uint64_t sub_1000A2E78()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_100277068);
  sub_10000F34C(v0, qword_100277068);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_1001CF9E0;
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_1000A2FC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000341C(&qword_10025F6B8, &qword_1001D4E90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100027874(a1, a1[3]);
  sub_1000A4340();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000A3154()
{
  if (*v0)
  {
    return 0x7972657571;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1000A3184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000A3268(uint64_t a1)
{
  v2 = sub_1000A4340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A32A4(uint64_t a1)
{
  v2 = sub_1000A4340();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A3304@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    v7 = type metadata accessor for GeneratedValues();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_1000A3464@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000A415C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000A34B4()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_100277080);
  sub_10000F34C(v0, qword_100277080);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_1001CF9D0;
  sub_10000341C(&qword_10025F688, &qword_1001D4E78);
  sub_1000A4084();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_1000A3624@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Schema();
  v7 = sub_10000F34C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1000A36C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10000341C(&qword_10025F688, &qword_1001D4E78);
  sub_1000A4084();
  GeneratedValues.extract<A>(field:)();
  v5 = type metadata accessor for GeneratedValues();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1000A37C0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000A386C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F3A0, &qword_1001D42D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A38FC()
{
  result = qword_10025F658;
  if (!qword_10025F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F658);
  }

  return result;
}

char *sub_1000A3970(uint64_t a1, uint64_t a2)
{
  v52 = sub_10000341C(&qword_10025F660, &qword_1001D4D48);
  v4 = *(v52 - 8);
  v5 = __chkstk_darwin(v52);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v45 - v8;
  *&v61[0] = a1;
  *(&v61[0] + 1) = a2;
  if (qword_10025A768 != -1)
  {
    swift_once();
  }

  v10 = sub_10000341C(&qword_10025F668, &qword_1001D4D50);
  sub_10000F34C(v10, qword_100277050);
  v11 = sub_10000341C(&qword_10025F670, &qword_1001D4D58);
  sub_1000A3F30();
  sub_100007120(&qword_10025F680, &qword_10025F668, &qword_1001D4D50, &protocol conformance descriptor for Regex<A>);
  v47 = v11;
  v12 = BidirectionalCollection<>.matches<A, B>(of:)();
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = 0;
    v18 = *(v4 + 16);
    v16 = v4 + 16;
    v17 = v18;
    v19 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v45[1] = v12;
    v20 = v12 + v19;
    v48 = *(v16 + 56);
    v54 = (v16 - 8);
    v55 = _swiftEmptyArrayStorage;
    *&v13 = 136315138;
    v46 = v13;
    v21 = v52;
    v51 = v7;
    v49 = v18;
    v50 = v16;
    do
    {
      v53 = v15;
      v17(v9, v20, v21);
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000F34C(v22, qword_100276F08);
      v23 = v9;
      v17(v7, v9, v21);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v60 = v27;
        *v26 = v46;
        Regex.Match.output.getter();
        v56 = v61[0];
        v57 = v61[1];
        v58 = v61[2];
        v59 = v61[3];
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = *v54;
        (*v54)(v51, v52);
        v32 = sub_10002510C(v28, v30, &v60);

        *(v26 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v24, v25, "match: %s", v26, 0xCu);
        sub_10000F4B4(v27);

        v21 = v52;
      }

      else
      {

        v31 = *v54;
        (*v54)(v7, v21);
      }

      v9 = v23;
      Regex.Match.output.getter();

      v33 = static String._fromSubstring(_:)();
      v35 = v34;

      *&v61[0] = v33;
      *(&v61[0] + 1) = v35;
      __chkstk_darwin(v36);
      v45[-2] = v61;
      v37 = v55;
      v15 = v53;
      if (sub_1000A37C0(sub_1000A3F84, &v45[-4], v55))
      {
        v31(v9, v21);

        v17 = v49;
        v7 = v51;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_10017DD84(0, *(v37 + 2) + 1, 1, v37);
        }

        v41 = *(v39 + 2);
        v40 = *(v39 + 3);
        v55 = v39;
        if (v41 >= v40 >> 1)
        {
          v55 = sub_10017DD84((v40 > 1), v41 + 1, 1, v55);
        }

        v31(v9, v21);
        v42 = v55;
        *(v55 + 2) = v41 + 1;
        v43 = &v42[16 * v41];
        *(v43 + 4) = v33;
        *(v43 + 5) = v35;
        v7 = v51;
        v17 = v49;
      }

      v20 += v48;
      --v14;
    }

    while (v14);

    return v55;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

unint64_t sub_1000A3F30()
{
  result = qword_10025F678;
  if (!qword_10025F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F678);
  }

  return result;
}

uint64_t sub_1000A3F84(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000A3FEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000A4034(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000A4084()
{
  result = qword_10025F690;
  if (!qword_10025F690)
  {
    sub_100003E34(&qword_10025F688, &qword_1001D4E78);
    sub_1000A4108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F690);
  }

  return result;
}

unint64_t sub_1000A4108()
{
  result = qword_10025F698;
  if (!qword_10025F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F698);
  }

  return result;
}

uint64_t sub_1000A415C(void *a1)
{
  v3 = sub_10000341C(&qword_10025F6A8, &qword_1001D4E88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_1000A4340();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000F4B4(a1);
  return v7;
}

unint64_t sub_1000A4340()
{
  result = qword_10025F6B0;
  if (!qword_10025F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F6B0);
  }

  return result;
}

unint64_t sub_1000A43A8()
{
  result = qword_10025F6C0;
  if (!qword_10025F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F6C0);
  }

  return result;
}

unint64_t sub_1000A4400()
{
  result = qword_10025F6C8;
  if (!qword_10025F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F6C8);
  }

  return result;
}

unint64_t sub_1000A4458()
{
  result = qword_10025F6D0;
  if (!qword_10025F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F6D0);
  }

  return result;
}

void sub_1000A44AC()
{
  v1 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    [v7 setDelegate:v0];
    *&v7[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_attachmentCollectionViewDelegate + 8] = &off_10024D5E0;
    swift_unknownObjectWeakAssign();
    v8 = objc_allocWithZone(sub_10000341C(&unk_10025F870, &unk_1001D50D0));
    v9 = v0;
    v10 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v11 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource;
    v12 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
    *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource) = v10;
    v13 = v10;

    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10024A978);
    v14 = *(v9 + v11);
    if (v14)
    {
      v15 = v14;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v2 + 8))(v4, v1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
    *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource) = 0;
  }
}

uint64_t sub_1000A46AC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v18[-v9];
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:isa];

  type metadata accessor for AttachmentCollectionViewCell(0);
  v14 = swift_dynamicCastClassUnconditional();
  type metadata accessor for AttachmentCollectionView();
  swift_dynamicCastClass();
  swift_unknownObjectWeakAssign();
  sub_1000A6690(a3, v10);
  v15 = type metadata accessor for Attachment(0);
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  v16 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_attachment;
  swift_beginAccess();
  sub_1000081F8(v14 + v16, v8, &qword_100263020, &qword_1001DA210);
  swift_beginAccess();
  sub_1000A66F4(v10, v14 + v16);
  swift_endAccess();
  sub_10003C9A8(v8);
  sub_10000F500(v8, &qword_100263020, &qword_1001DA210);
  sub_10000F500(v10, &qword_100263020, &qword_1001DA210);
  return v14;
}

void sub_1000A48EC(void *a1)
{
  v65 = a1;
  v2 = sub_10000341C(&qword_10025F830, &qword_1001D50A8);
  v3 = *(v2 - 8);
  v72 = v2;
  v73 = v3;
  v4 = __chkstk_darwin(v2);
  v70 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v69 = &v57 - v7;
  v8 = __chkstk_darwin(v6);
  v68 = &v57 - v9;
  __chkstk_darwin(v8);
  v67 = &v57 - v10;
  v11 = type metadata accessor for Attachment(0);
  v71 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v17 = sub_10000341C(&qword_10025F838, &qword_1001D50B0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v57 - v19;
  v21 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  __chkstk_darwin(v21);
  v24 = &v57 - v23;
  v25 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
  if (!v25)
  {
    return;
  }

  v66 = v14;
  v60 = v1;
  v62 = v18;
  v63 = v22;
  v26 = v25;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v74 = v65;
  v76 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  sub_10000341C(&qword_10025F848, &qword_1001D50C0);
  v64 = v17;
  sub_100007120(&qword_10025F850, &qword_10025F848, &qword_1001D50C0, &protocol conformance descriptor for [A]);
  sub_1000A6558();
  v27 = v64;
  BidirectionalCollection<>.difference<A>(from:)();

  sub_100007120(&qword_10025F860, &qword_10025F838, &qword_1001D50B0, &protocol conformance descriptor for CollectionDifference<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v74 == v76)
  {

    (*(v62 + 8))(v20, v27);
    (*(v63 + 8))(v24, v21);
    return;
  }

  v57 = v26;
  v61 = v24;
  v59 = v20;
  v28 = CollectionDifference.removals.getter();
  v29 = *(v28 + 16);
  v58 = v21;
  if (v29)
  {
    v74 = _swiftEmptyArrayStorage;
    v30 = v28;
    sub_100163CE0(0, v29, 0);
    v31 = 0;
    v32 = v74;
    v65 = (v30 + ((*(v73 + 80) + 32) & ~*(v73 + 80)));
    v33 = v16;
    while (v31 < *(v30 + 16))
    {
      v34 = v67;
      sub_1000081F8(v65 + *(v73 + 72) * v31, v67, &qword_10025F830, &qword_1001D50A8);
      v16 = v68;
      sub_1000081F8(v34, v68, &qword_10025F830, &qword_1001D50A8);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_30;
      }

      sub_10000F500(v34, &qword_10025F830, &qword_1001D50A8);
      v35 = sub_10000341C(&qword_10025F868, &qword_1001D50C8);
      sub_10003D784(&v16[*(v35 + 48)], v33);
      v74 = v32;
      v37 = v32[2];
      v36 = v32[3];
      v16 = (v37 + 1);
      if (v37 >= v36 >> 1)
      {
        sub_100163CE0((v36 > 1), v37 + 1, 1);
        v32 = v74;
      }

      ++v31;
      v32[2] = v16;
      sub_10003D784(v33, v32 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v37);
      if (v29 == v31)
      {

        v38 = v58;
        v27 = v64;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
    v38 = v21;
LABEL_13:
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v32);

    v39 = CollectionDifference.insertions.getter();
    v16 = *(v39 + 16);
    v41 = v69;
    v40 = v70;
    if (!v16)
    {

      v45 = v61;
LABEL_22:
      v74 = 0;
      v75 = 1;
      v50 = v45;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      v51 = v57;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
      v52 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
      v53 = v60;
      swift_beginAccess();
      v54 = *(v53 + v52);
      v55 = v59;
      if (v54)
      {
        swift_endAccess();
        v56 = v54;
        if ([v56 numberOfSections] >= 1)
        {
          [v56 setScrollEnabled:{objc_msgSend(v56, "numberOfItemsInSection:", 0) > 1}];
          [v56 setShowsHorizontalScrollIndicator:{objc_msgSend(v56, "numberOfItemsInSection:", 0) > 1}];
        }

        (*(v62 + 8))(v55, v27);
        (*(v63 + 8))(v61, v38);
      }

      else
      {
        (*(v62 + 8))(v59, v27);
        (*(v63 + 8))(v50, v38);
        swift_endAccess();
      }

      return;
    }

    v74 = _swiftEmptyArrayStorage;
    v42 = v39;
    sub_100163CE0(0, v16, 0);
    v43 = 0;
    v44 = v74;
    v68 = (v42 + ((*(v73 + 80) + 32) & ~*(v73 + 80)));
    v45 = v61;
    while (v43 < *(v42 + 16))
    {
      sub_1000081F8(&v68[*(v73 + 72) * v43], v41, &qword_10025F830, &qword_1001D50A8);
      sub_1000081F8(v41, v40, &qword_10025F830, &qword_1001D50A8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10000F500(v40, &qword_10025F830, &qword_1001D50A8);
        goto LABEL_32;
      }

      sub_10000F500(v41, &qword_10025F830, &qword_1001D50A8);
      v46 = sub_10000341C(&qword_10025F868, &qword_1001D50C8);
      v47 = v66;
      sub_10003D784(v40 + *(v46 + 48), v66);
      v74 = v44;
      v49 = v44[2];
      v48 = v44[3];
      if (v49 >= v48 >> 1)
      {
        sub_100163CE0((v48 > 1), v49 + 1, 1);
        v45 = v61;
        v44 = v74;
      }

      ++v43;
      v44[2] = v49 + 1;
      sub_10003D784(v47, v44 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v49);
      v41 = v69;
      v40 = v70;
      if (v16 == v43)
      {

        v38 = v58;
        v27 = v64;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_30:
  sub_10000F500(v16, &qword_10025F830, &qword_1001D50A8);
LABEL_32:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A5360(uint64_t a1)
{
  v1 = IntelligenceUI.PromptEntryView.textView.getter();
  v2 = [v1 text];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000341C(&unk_10025F820, &qword_1001D50A0);
    Binding.wrappedValue.setter();
  }

  else
  {
    __break(1u);
  }
}

UIMenu sub_1000A5424()
{
  sub_1000081B0(0, &qword_100262910, UIMenu_ptr);
  v0._countAndFlagsBits = 0;
  v0._object = 0xE000000000000000;
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v0, 0, v3, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v2);
}

uint64_t sub_1000A5494@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1000A5500()
{
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner + 120);
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.getter();
  v1();
}

unint64_t sub_1000A5588(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v2 = type metadata accessor for Attachment(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = v11;
    v31 = v3;
    v18 = *(result + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
    v19 = result;
    v20 = v18;

    if (v18)
    {
      v29 = v20;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      v21 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      (*(v7 + 8))(v9, v6);
      result = IndexPath.item.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v21 + 16))
      {
        sub_1000A6690(v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * result, v5);

        v22 = v30;
        v23 = *(v30 + 16);
        v23(v16, v5, v10);
        sub_10003D7E8(v5);
        v23(v14, v16, v10);
        v24 = type metadata accessor for PreviewProviderViewController(0);
        v25 = objc_allocWithZone(v24);
        v23(&v25[OBJC_IVAR____TtC21WritingToolsUIService29PreviewProviderViewController_url], v14, v10);
        v33.receiver = v25;
        v33.super_class = v24;
        v26 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
        [v26 setDataSource:v26];

        v27 = *(v22 + 8);
        v27(v14, v10);
        v27(v16, v10);
        return v26;
      }

      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

UIMenu sub_1000A590C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000081B0(0, &qword_100262910, UIMenu_ptr);
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001D1060;
  sub_1000081B0(0, &qword_10025F890, UIAction_ptr);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v7 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v11, 0, v15, 0, 0xFFFFFFFFFFFFFFFFLL, v7, v13);
}

void sub_1000A5B48(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = IndexPath.item.getter();
    v9 = *&v7[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource];
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      sub_10000341C(&qword_10025F898, &qword_1001DDE20);
      v12 = *(type metadata accessor for Attachment(0) - 8);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1001CF9D0;
      v16 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *(v16 + 16))
      {
        sub_1000A6690(v16 + v14 + v13 * v10, v15 + v14);

        NSDiffableDataSourceSnapshot.deleteItems(_:)(v15);

        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
        sub_100173BA0(v10);

        (*(v3 + 8))(v5, v2);
        goto LABEL_6;
      }

      __break(1u);
      return;
    }

LABEL_6:
  }
}

void *sub_1000A5E20(uint64_t a1)
{
  v2 = v1;
  v31 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v28 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
  swift_beginAccess();
  result = *(v2 + v14);
  if (!result)
  {
    goto LABEL_15;
  }

  result = [result indexPathForCell:a1];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v16 = result;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v8 + 32))(v13, v11, v7);
  v17 = IndexPath.item.getter();
  v18 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v17;
  v28 = v4;
  v29 = v8;
  v30 = v7;
  v20 = v18;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  sub_10000341C(&qword_10025F898, &qword_1001DDE20);
  v21 = *(type metadata accessor for Attachment(0) - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1001CF9D0;
  result = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v19 >= result[2])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000A6690(result + v23 + v22 * v19, v24 + v23);

  v25 = v31;
  NSDiffableDataSourceSnapshot.deleteItems(_:)(v24);

  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  sub_100173BA0(v19);

  (*(v28 + 8))(v6, v25);
  v8 = v29;
  v7 = v30;
LABEL_7:
  swift_beginAccess();
  v26 = *(v2 + v14);
  if (v26)
  {
    swift_endAccess();
    v27 = v26;
    if ([v27 numberOfSections] >= 1)
    {
      [v27 setScrollEnabled:{objc_msgSend(v27, "numberOfItemsInSection:", 0) > 1}];
      [v27 setShowsHorizontalScrollIndicator:{objc_msgSend(v27, "numberOfItemsInSection:", 0) > 1}];
    }

    return (*(v8 + 8))(v13, v7);
  }

  else
  {
    (*(v8 + 8))(v13, v7);
    return swift_endAccess();
  }
}

uint64_t type metadata accessor for PreviewProviderViewController(uint64_t a1)
{
  result = qword_10025F810;
  if (!qword_10025F810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A64C8(uint64_t a1)
{
  result = type metadata accessor for URL();
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

unint64_t sub_1000A6558()
{
  result = qword_10025F858;
  if (!qword_10025F858)
  {
    type metadata accessor for Attachment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F858);
  }

  return result;
}

id sub_1000A65B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1000A6600(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000081B0(0, &unk_10025F880, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_1000A6690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A66F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1000A6764(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  result = 0;
  if (*(a1 + 16) == 1)
  {
    v10 = *(v4 + 80);
    v11 = (v10 + 32) & ~v10;
    v31 = v6;
    v12 = swift_allocObject();
    v32 = v12;
    swift_unknownObjectWeakInit();
    v13 = a1;
    v28 = a1;
    v14 = *(v4 + 16);
    v14(v8, v13 + v11, v3);
    v29 = v1;
    v15 = (v10 + 24) & ~v10;
    v16 = swift_allocObject();
    v30 = v16;
    *(v16 + 16) = v12;
    v17 = *(v4 + 32);
    v17(v16 + v15, v8, v3);
    v18 = v28 + v11;
    v19 = v31;
    v14(v31, v18, v3);
    v20 = swift_allocObject();
    v21 = v29;
    *(v20 + 16) = v29;
    v17(v20 + v15, v19, v3);
    v22 = objc_opt_self();
    v37 = sub_1000A6AEC;
    v38 = v30;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1000A65B0;
    v36 = &unk_10024D668;
    v23 = _Block_copy(&aBlock);

    v24 = v21;

    v37 = sub_1000A6C14;
    v38 = v20;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1000A6600;
    v36 = &unk_10024D690;
    v25 = _Block_copy(&aBlock);

    v26 = [v22 configurationWithIdentifier:0 previewProvider:v23 actionProvider:v25];

    _Block_release(v25);
    _Block_release(v23);

    return v26;
  }

  return result;
}

uint64_t sub_1000A6AB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000A6AEC()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000A5588(v2, v3);
}

uint64_t sub_1000A6B50()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

UIMenu sub_1000A6C14(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000A590C(a1, v4, v5);
}

uint64_t sub_1000A6C88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A6CA4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000A6D68(uint64_t a1)
{
  type metadata accessor for IndexPath();
  v3 = *(v1 + 16);

  sub_1000A5B48(a1, v3);
}

id sub_1000A6F28(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t WritingToolsModel.__allocating_init(hostIsReady:writingToolsDelegate:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  swift_allocObject();
  v4 = sub_1000AA9F8(v3, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1000A7068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1000AA938(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1000A7124()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000A71C8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A72FC()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000A73A0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A74D4()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000A7578(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A76AC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + 72))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v0 + 48);
    v3 = *(v1 + 56);
    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    sub_10000F3F4(*(v1 + 48), v3, v4, *(v1 + 72));
    sub_100036534(v2, v3, v4, v5);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 72) >= 2u)
  {
    v7 = *(v1 + 48);
    if (*(v1 + 56) | *(v1 + 64) | v7)
    {
      if (v7 == 1 && *(v1 + 56) == 0)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v8 = *(v1 + 48);
        v9 = *(v1 + 56);
        v10 = *(v1 + 64);
        v11 = *(v1 + 72);
        sub_10000F3F4(v8, v9, v10, v11);
        sub_100036534(v8, v9, v10, v11);
      }
    }
  }

  return result;
}

uint64_t sub_1000A7918()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  sub_10000F3F4(v1, *(v3 + 56), *(v3 + 64), *(v3 + 72));
  return v1;
}

uint64_t sub_1000A79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  if (sub_1000AB31C(v9, v10, v11, v12, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_10000F428(a1, a2, a3, v5);
  }

  else
  {
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    *(v4 + 64) = a3;
    *(v4 + 72) = v5;
    sub_10000F428(v9, v10, v11, v12);

    return sub_1000A76AC();
  }
}

uint64_t sub_1000A7B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  v8 = *(a1 + 72);
  *(a1 + 72) = a5;
  sub_10000F3F4(a2, a3, a4, a5);
  sub_10000F428(v5, v6, v7, v8);
  return sub_1000A76AC();
}

uint64_t sub_1000A7C14()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = __chkstk_darwin(v2);
  v69 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = &v68 - v5;
  v6 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v73 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v68 - v10;
  v12 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v68 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v68 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel___observationRegistrar;
  v78[1] = v1;
  v75 = sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  v76 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v20 = *(v13 + 16);
  v20(v17, v1 + v19, v12);
  v21 = (*(v13 + 88))(v17, v12);
  v74 = v1;
  if (v21 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v13 + 96))(v17, v12);
    (*(v7 + 32))(v11, v17, v6);
    v22 = v6;
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F34C(v23, qword_100276EF0);
    v24 = v73;
    (*(v7 + 16))(v73, v11, v6);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v72 = v11;
      v28 = v27;
      v29 = swift_slowAlloc();
      v78[0] = v29;
      *v28 = 136315138;
      sub_1000AB590(&qword_10025FEA8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v24;
      v32 = v6;
      v34 = v33;
      v35 = *(v7 + 8);
      v35(v31, v32);
      v36 = sub_10002510C(v30, v34, v78);
      v22 = v32;

      *(v28 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "gmsAvailability returned restricted: [%s]", v28, 0xCu);
      sub_10000F4B4(v29);

      v11 = v72;
    }

    else
    {

      v35 = *(v7 + 8);
      v35(v24, v22);
    }

    v35(v11, v22);
LABEL_20:
    v64 = 0;
    v65 = 1;
    goto LABEL_23;
  }

  if (v21 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    (*(v13 + 96))(v17, v12);
    v37 = v70;
    v38 = v71;
    v39 = v72;
    (*(v70 + 32))(v72, v17, v71);
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000F34C(v40, qword_100276EF0);
    v41 = v69;
    (*(v37 + 16))(v69, v39, v38);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v78[0] = v45;
      *v44 = 136315138;
      sub_1000AB590(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v37;
      v49 = v48;
      v50 = *(v47 + 8);
      v50(v41, v38);
      v51 = sub_10002510C(v46, v49, v78);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v42, v43, "gmsAvailability returned unavailable: [%s]", v44, 0xCu);
      sub_10000F4B4(v45);
      v39 = v72;
    }

    else
    {

      v50 = *(v37 + 8);
      v50(v41, v38);
    }

    v50(v39, v38);
    goto LABEL_20;
  }

  if (v21 != enum case for GenerativeModelsAvailability.Availability.available(_:))
  {
    v52 = v20;
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000F34C(v53, qword_100276EF0);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v72 = v56;
      v73 = swift_slowAlloc();
      v78[0] = v73;
      *v56 = 136315138;
      swift_getKeyPath();
      v77 = v1;
      LODWORD(v71) = v55;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v57 = v68;
      v52(v68, v1 + v19, v12);
      sub_1000AB590(&qword_10025FEB8, &type metadata accessor for GenerativeModelsAvailability.Availability, &protocol conformance descriptor for GenerativeModelsAvailability.Availability);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = *(v13 + 8);
      v61(v57, v12);
      v62 = sub_10002510C(v58, v60, v78);

      v63 = v72;
      *(v72 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v71, "gmsAvailability returned unexpected value: [%s]", v63, 0xCu);
      sub_10000F4B4(v73);

      v61(v17, v12);
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }
  }

  v65 = 0;
  v64 = 3;
LABEL_23:
  swift_getKeyPath();
  v66 = v74;
  v78[0] = v74;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v65 | *(v66 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable)))
  {
    return v64;
  }

  else
  {
    return v64 & 1;
  }
}

uint64_t sub_1000A85D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000A86CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v5 = type metadata accessor for GenerativeModelsAvailability.Availability();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1000A87C4(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1000A8890(v4);
}

uint64_t sub_1000A8890(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1000AB590(&qword_10025FEB0, &type metadata accessor for GenerativeModelsAvailability.Availability, &protocol conformance descriptor for GenerativeModelsAvailability.Availability);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1000A8B30(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  v5 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000A8BCC()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  sub_1000AB590(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000A8E98()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1000A8F80()
{
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);
}

uint64_t sub_1000A9028@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);
  return result;
}

uint64_t sub_1000A9100(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000A9218()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = v0;
  sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  v10[0] = sub_1000A9464();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  v10[2] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable))
  {
    return v10[0];
  }

  result = v10[0];
  if (!v8)
  {
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  return result;
}

uint64_t sub_1000A9464()
{
  v1 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v90 = *(v1 - 8);
  v91 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v92 = v85 - v5;
  v6 = sub_10000341C(&qword_10025FE90, &qword_1001D52E8);
  __chkstk_darwin(v6 - 8);
  v88 = v85 - v7;
  v8 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v93 = *(v8 - 1);
  v94 = v8;
  v9 = __chkstk_darwin(v8);
  v87 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v85 - v11;
  v13 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v89 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v85 - v18;
  __chkstk_darwin(v17);
  v21 = v85 - v20;
  v22 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25, v0, v22);
  v26 = (*(v23 + 88))(v25, v22);
  if (v26 != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    if (v26 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v23 + 96))(v25, v22);
      v41 = v90;
      v42 = v91;
      v43 = v92;
      (*(v90 + 32))(v92, v25, v91);
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000F34C(v44, qword_100276EF0);
      (*(v41 + 16))(v4, v43, v42);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v42;
        v48 = v41;
        v49 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v95[0] = v94;
        *v49 = 136315138;
        sub_1000AB590(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        v53 = *(v48 + 8);
        v53(v4, v47);
        v42 = v47;
        v54 = sub_10002510C(v50, v52, v95);
        v43 = v92;

        *(v49 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v45, v46, "Got unavailable unexpectedly. [%s]", v49, 0xCu);
        sub_10000F4B4(v94);
      }

      else
      {

        v53 = *(v41 + 8);
        v53(v4, v42);
      }

      LocalizedStringKey.init(stringLiteral:)();
      v70 = Text.init(_:tableName:bundle:comment:)();
      v53(v43, v42);
      return v70;
    }

    if (v26 != enum case for GenerativeModelsAvailability.Availability.available(_:))
    {
      (*(v23 + 8))(v25, v22);
    }

    return 0;
  }

  (*(v23 + 96))(v25, v22);
  (*(v14 + 32))(v21, v25, v13);
  v27 = v21;
  if (qword_10025A6D8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000F34C(v28, qword_100276EF0);
  v85[0] = *(v14 + 16);
  (v85[0])(v19, v21, v13);
  v90 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v85[1] = v14;
  v86 = v13;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v91 = v27;
    v34 = v33;
    v35 = swift_slowAlloc();
    v95[0] = v35;
    *v34 = 136315138;
    sub_1000AB590(&qword_10025FEA8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v13;
    v39 = v38;
    v92 = *(v14 + 8);
    (v92)(v19, v37);
    v40 = sub_10002510C(v36, v39, v95);

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Restricted info: [%s]", v34, 0xCu);
    sub_10000F4B4(v35);

    v27 = v91;
  }

  else
  {

    v92 = *(v14 + 8);
    (v92)(v19, v13);
  }

  v55 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
  v56 = enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:);
  v58 = v93;
  v57 = v94;
  v59 = *(v93 + 104);
  v59(v12, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:), v94);
  v60 = v27;
  v61 = sub_100138244(v12, v55);
  v62 = v57;

  v63 = *(v58 + 8);
  v63(v12, v57);
  if (v61)
  {
    v59(v12, v56, v57);
LABEL_20:
    v70 = sub_1000AA6DC();
    v63(v12, v62);
    (v92)(v60, v86);
    return v70;
  }

  v64 = *(GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter() + 16);

  if (!v64)
  {
    (v92)(v60, v86);
    return 0;
  }

  v65 = *(GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter() + 16);

  if (v65 != 1)
  {
    v71 = v89;
    v91 = v60;
    v72 = v86;
    (v85[0])(v89, v60, v86);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v95[0] = v76;
      *v75 = 136315138;
      GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
      v77 = v71;
      v78 = v72;
      sub_1000AB590(&qword_10025FEA0, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v79 = Set.description.getter();
      v81 = v80;

      v82 = v77;
      v83 = v92;
      (v92)(v82, v72);
      v84 = sub_10002510C(v79, v81, v95);

      *(v75 + 4) = v84;
      v72 = v78;
      _os_log_impl(&_mh_execute_header, v73, v74, "Got more than one reasons, falling back to generic message. [%s]", v75, 0xCu);
      sub_10000F4B4(v76);
    }

    else
    {

      v83 = v92;
      (v92)(v71, v72);
    }

    LocalizedStringKey.init(stringLiteral:)();
    v70 = Text.init(_:tableName:bundle:comment:)();
    (v83)(v91, v72);
    return v70;
  }

  v66 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
  v67 = v88;
  sub_1000A7068(v66, v88);

  v68 = v93;
  v62 = v94;
  result = (*(v93 + 48))(v67, 1, v94);
  if (result != 1)
  {
    v12 = v87;
    (*(v68 + 32))(v87, v67, v62);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t WritingToolsModel.init(hostIsReady:writingToolsDelegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000AA9F8(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1000AA078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10015CCC8(0, 0, v10, &unk_1001D5320, v14);
}

uint64_t sub_1000AA274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v6 = type metadata accessor for NWPath.Status();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AA378, v8, v7);
}

uint64_t sub_1000AA378(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(v2 + 88);
    v4 = *(v2 + 96);
    v6 = *(v2 + 72);
    v7 = *(v2 + 80);
    NWPath.status.getter();
    (*(v7 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v6);
    v8 = static NWPath.Status.== infix(_:_:)() & 1;
    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    if (v8 == *(Strong + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable))
    {
      *(Strong + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable) = v8;
    }

    else
    {
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = Strong;
      *(v10 + 24) = v8;
      *(v2 + 40) = Strong;
      sub_1000AB590(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  **(v2 + 48) = Strong == 0;

  v11 = *(v2 + 8);

  return v11();
}

uint64_t WritingToolsModel.deinit(uint64_t a1, uint64_t a2)
{

  sub_10000F428(*(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
  v3 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability;
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  sub_100037D88(v2 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__writingToolsDelegate);

  v5 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  return v2;
}

uint64_t WritingToolsModel.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  WritingToolsModel.deinit(a1, a2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000AA6DC()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.assetIsNotReady(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.startupInProgress(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.shortOfStorage(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.useCaseDisabled(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.pendingEnrollment(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.mdmAndParentalControl(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.signInNotAllowed(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.signInRequired(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.workspaceNotAllowed(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.useCaseDoesNotAllowCurrentIPCountryCode(_:) && v6 != enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.forced(_:))
  {
    (*(v3 + 8))(v5, v2);
  }

  LocalizedStringKey.init(stringLiteral:)();
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_1000AA938@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1000AA9F8(int a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v39 = a1;
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GenerativeModelsAvailability();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  type metadata accessor for ProofreadingModel(0);
  swift_allocObject();
  *(v2 + 16) = sub_1001A8C78();
  type metadata accessor for CompositionModel(0);
  swift_allocObject();
  *(v2 + 32) = sub_1000947BC();
  *(v2 + 40) = 1;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__hostDidAddRemoteView) = 0;
  v14 = v2 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__auditedHostPID;
  *v14 = 0;
  *(v14 + 4) = 1;
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__isPopoverDetached) = 0;
  v15 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel_networkMonitor;
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v2 + v15) = NWPathMonitor.init()();
  v16 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel_networkQueue;
  sub_1000AB544();
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_1000AB590(&unk_10025A9D0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000341C(&qword_10025FEC0, &qword_1001CE1A8);
  sub_1000AB5D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v27 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  *(v2 + v16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable) = 1;
  ObservationRegistrar.init()();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  type metadata accessor for RewritingModel(0);
  swift_allocObject();
  v17 = v34;
  swift_unknownObjectRetain();
  v18 = sub_1000C4758(0, 0, 0, 0, v17);
  swift_unknownObjectRelease();
  *(v3 + 24) = v18;
  *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__hostIsReady) = v39;
  v19 = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__writingToolsDelegate;
  swift_unknownObjectRetain();
  sub_100037D88(v3 + v19);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  (*(v36 + 104))(v32, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v38);
  v20 = v30;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  v21 = v29;
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v35 + 8))(v20, v37);
  v22 = v40;
  GenerativeModelsAvailability.availability.getter();
  (*(v31 + 8))(v21, v33);
  (*(v41 + 32))(v3 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__gmsAvailability, v22, v42);
  swift_allocObject();
  swift_weakInit();

  NWPathMonitor.pathUpdateHandler.setter();

  v23 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel_networkQueue);

  v24 = v23;
  NWPathMonitor.start(queue:)();

  return v3;
}

uint64_t type metadata accessor for WritingToolsModel(uint64_t a1)
{
  result = qword_10025FA68;
  if (!qword_10025FA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AB14C(uint64_t a1)
{
  result = type metadata accessor for GenerativeModelsAvailability.Availability();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

BOOL sub_1000AB31C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 != 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return a6 || ((a3 ^ a7) & 1) != 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 1;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v9 ^ v10))
              {
                return 1;
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 != 2 || a7 | a6 | a5;
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 1;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 1;
      }

      if (!(a7 | a6))
      {
        return 0;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 1;
    }

    if (a3)
    {
      return !a7 || (a2 != a6 || a3 != a7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
    }

    if (!a7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000AB4CC()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1000AB508()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_1000AB544()
{
  result = qword_10025D5D0;
  if (!qword_10025D5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025D5D0);
  }

  return result;
}

uint64_t sub_1000AB590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000AB5D8()
{
  result = qword_10025A9E0;
  if (!qword_10025A9E0)
  {
    sub_100003E34(&qword_10025FEC0, &qword_1001CE1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025A9E0);
  }

  return result;
}

uint64_t sub_1000AB63C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB67C()
{
  v1 = type metadata accessor for NWPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AB748(uint64_t a1)
{
  v4 = *(type metadata accessor for NWPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100028688;

  return sub_1000AA274(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000AB840()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_1000AB894()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0);
  v3 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v4 = __chkstk_darwin(v3 - 8);
  v22 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - v7;
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_10000341C(&qword_10025F4E8, &unk_1001DF3A0);
  v11 = *(v1 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v23 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001CF9F0;
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  v14 = *(v2 + 48);
  result = v14(v10, 1, v0);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v21 = v13;
  v16 = v13 + v12;
  v17 = *(v2 + 32);
  v17(v16, v10, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v14(v8, 1, v0);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v18 = v23;
  v17(v16 + v23, v8, v0);
  static UTType.data.getter();
  v19 = v22;
  UTType.init(mimeType:conformingTo:)();
  result = v14(v19, 1, v0);
  if (result != 1)
  {
    result = (v17)(v16 + 2 * v18, v19, v0);
    qword_1002770A0 = v21;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000ABBD4()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v9 = objc_allocWithZone(NSData);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = [v9 initWithContentsOfURL:v11];

  if (!v13)
  {
    return 0;
  }

  URL.pathExtension.getter();
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  sub_1000AC404(v8, v6);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_10000F500(v6, &qword_10025F4E0, &unk_1001D1110);
  }

  else
  {
    UTType.identifier.getter();
    (*(v2 + 8))(v6, v1);
  }

  v16 = String._bridgeToObjectiveC()();

  v17 = CopyHTMLForIWorkDataWithUTI();

  if (!v17)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

LABEL_12:
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000F34C(v29, qword_100276EF0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to copy HTML for iWork file", v32, 2u);

LABEL_35:
      sub_10000F500(v8, &qword_10025F4E0, &unk_1001D1110);
      return 0;
    }

LABEL_34:
    goto LABEL_35;
  }

  v19 = v18;
  *&v49 = 0xD000000000000013;
  *(&v49 + 1) = 0x80000001001E56A0;
  v20 = [v18 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  result = swift_unknownObjectRelease();
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100008150(&v45, &v49);
    v42 = sub_1000081B0(0, &qword_10025FF68, NSData_ptr);
    swift_dynamicCast();
    v22 = *&v44[0];
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    v41 = v22;

    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    v27 = v26;
    result = sub_10004DD08(v23, v25);
    if (v27)
    {

      strcpy(&v45, "HTMLResources");
      HIWORD(v45) = -4864;
      v28 = [v19 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v28)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      v49 = v45;
      v50 = v46;
      if (*(&v46 + 1))
      {
        sub_1000081B0(0, &unk_10025FF70, NSDictionary_ptr);
        if (swift_dynamicCast())
        {
          v40 = *&v44[0];
          NSDictionary.makeIterator()();
          NSDictionary.Iterator.next()();
          v49 = v45;
          v50 = v46;
          v51 = v47;
          for (i = v48; *(&v46 + 1); i = v48)
          {
            sub_100008150(&v51, &v45);
            sub_100008150(&v49, v44);
            if ((swift_dynamicCast() & 1) != 0 && (v33._countAndFlagsBits = 0x2E77656976657270, v33._object = 0xEB00000000666470, v34 = String.hasSuffix(_:)(v33), , v34))
            {
              sub_100008150(&v45, v44);
              if (swift_dynamicCast())
              {
                sub_10000F500(v8, &qword_10025F4E0, &unk_1001D1110);

                return v43;
              }
            }

            else
            {
              sub_10000F4B4(&v45);
            }

            NSDictionary.Iterator.next()();
            v49 = v45;
            v50 = v46;
            v51 = v47;
          }

          sub_10000F500(v8, &qword_10025F4E0, &unk_1001D1110);

          return 0;
        }
      }

      else
      {
        sub_10000F500(&v49, &qword_10025F510, &unk_1001D49B0);
      }

      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000F34C(v35, qword_100276EF0);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to extract HTML resources", v38, 2u);

        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AC404(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AC474(uint64_t *a1, int a2)
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

uint64_t sub_1000AC4BC(uint64_t result, int a2, int a3)
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

uint64_t sub_1000AC528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_1000AC600@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_1000AC6D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 72);
  *(a2 + 24) = v7;
  return sub_10000F3F4(v4, v5, v6, v7);
}

uint64_t sub_1000AC794(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_10000F3F4(*a1, v2, v3, v4);
  return sub_1000A79E4(v1, v2, v3, v4);
}

uint64_t sub_1000AC7F8@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1000AC8AC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000AC978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v49 = a2;
  v55 = a1;
  v54 = a5;
  v5 = sub_10000341C(&qword_10025FF80, &qword_1001D5408);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = sub_10000341C(&qword_10025FF88, &qword_1001D5410);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_10000341C(&qword_10025FF90, &qword_1001D5418);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v45 = &v44 - v16;
  v47 = sub_10000341C(&qword_10025FF98, &qword_1001D5420);
  __chkstk_darwin(v47);
  v18 = &v44 - v17;
  v50 = sub_10000341C(&qword_10025FFA0, &qword_1001D5428);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v44 - v19;
  v52 = sub_10000341C(&qword_10025FFA8, &qword_1001D5430);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v44 - v20;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v21 = &v13[*(sub_10000341C(&qword_10025FFB0, &qword_1001D5438) + 44)];
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v22 = sub_10000341C(&qword_10025FFB8, &qword_1001D5440);
  sub_1000AD070(v55, v56, v57, &v10[*(v22 + 44)]);
  sub_1000081F8(v10, v8, &qword_10025FF80, &qword_1001D5408);
  *v21 = 0;
  v21[8] = 1;
  v23 = sub_10000341C(&qword_10025FFC0, &qword_1001D5448);
  sub_1000081F8(v8, &v21[*(v23 + 48)], &qword_10025FF80, &qword_1001D5408);
  v24 = &v21[*(v23 + 64)];
  *v24 = 0;
  v24[8] = 1;
  sub_10000F500(v10, &qword_10025FF80, &qword_1001D5408);
  sub_10000F500(v8, &qword_10025FF80, &qword_1001D5408);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v25 = v45;
  sub_10002A894(v13, v45, &qword_10025FF88, &qword_1001D5410);
  v26 = (v25 + *(v15 + 44));
  v27 = v67;
  v26[4] = v66;
  v26[5] = v27;
  v26[6] = v68;
  v28 = v63;
  *v26 = v62;
  v26[1] = v28;
  v29 = v65;
  v26[2] = v64;
  v26[3] = v29;
  v30 = static SafeAreaRegions.all.getter();
  LOBYTE(v8) = static Edge.Set.all.getter();
  sub_10002A894(v25, v18, &qword_10025FF90, &qword_1001D5418);
  v31 = v47;
  v32 = &v18[*(v47 + 36)];
  *v32 = v30;
  v32[8] = v8;
  v33 = type metadata accessor for WritingToolsModel(0);
  v34 = sub_1000ADC50();
  v35 = sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  v36 = v46;
  View.environment<A>(_:)();
  sub_10000F500(v18, &qword_10025FF98, &qword_1001D5420);
  v58 = v56;
  v59 = v57;
  sub_10000341C(&qword_10025FFE8, &qword_1001D5450);
  State.wrappedValue.getter();
  v37 = type metadata accessor for PresentationModel(0);
  v58 = v31;
  v59 = v33;
  v60 = v34;
  v61 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_1000ADE40(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  v40 = v48;
  v41 = v50;
  View.environment<A>(_:)();

  (*(v51 + 8))(v36, v41);
  type metadata accessor for CommonUIManager(0);
  v58 = v41;
  v59 = v37;
  v60 = OpaqueTypeConformance2;
  v61 = v39;
  swift_getOpaqueTypeConformance2();
  sub_1000ADE40(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  v42 = v52;
  View.environment<A>(_:)();
  return (*(v53 + 8))(v40, v42);
}

uint64_t sub_1000AD070@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_10000341C(&qword_10025FFF0, &qword_1001D5458);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_1000AD294(a1, a3, a4, &v24 - v14);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v27);
  v16 = &v15[*(v10 + 44)];
  v17 = v27[1];
  *v16 = v27[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v27[2];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v28);
  v25 = v30;
  v26 = v28;
  v18 = v33;
  v24 = v32;
  v36 = 1;
  v35 = v29;
  v34 = v31;
  sub_1000081F8(v15, v13, &qword_10025FFF0, &qword_1001D5458);
  v19 = v36;
  LOBYTE(a1) = v35;
  LOBYTE(a3) = v34;
  *a5 = 0;
  *(a5 + 8) = 1;
  v20 = sub_10000341C(&qword_10025FFF8, &qword_1001D5460);
  sub_1000081F8(v13, a5 + *(v20 + 48), &qword_10025FFF0, &qword_1001D5458);
  v21 = a5 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = v19;
  v22 = v25;
  *(v21 + 16) = v26;
  *(v21 + 24) = a1;
  *(v21 + 32) = v22;
  *(v21 + 40) = a3;
  *(v21 + 48) = v24;
  *(v21 + 56) = v18;
  sub_10000F500(v15, &qword_10025FFF0, &qword_1001D5458);
  return sub_10000F500(v13, &qword_10025FFF0, &qword_1001D5458);
}

uint64_t sub_1000AD294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(&v46 + 1) = a3;
  *&v46 = a2;
  v50 = a4;
  v47 = sub_10000341C(&qword_100260000, &qword_1001D5468);
  __chkstk_darwin(v47);
  v6 = &v43 - v5;
  v49 = sub_10000341C(&qword_100260008, &qword_1001D5470);
  __chkstk_darwin(v49);
  v8 = &v43 - v7;
  v9 = type metadata accessor for CompositionInputDashboardView(0);
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10000341C(&qword_100260010, &qword_1001D5478);
  __chkstk_darwin(v48);
  v13 = &v43 - v12;
  swift_getKeyPath();
  *&v61 = a1;
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  if (*(a1 + 72))
  {
    if (v17 == 1)
    {
      v43 = v8;
      v18 = v14;
      v45 = v14;
      swift_getKeyPath();
      *&v61 = a1;
      v19 = v18;
      v20 = v15;
      sub_10000F414(v19, v15);
      v44 = v16;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = *(a1 + 32);
      v55 = v46;

      sub_10000341C(&qword_10025FFE8, &qword_1001D5450);
      State.projectedValue.getter();
      sub_100157428(v21, v61, *(&v61 + 1), v62, v11);
      sub_1000ADDDC(v11, v6);
      swift_storeEnumTagMultiPayload();
      sub_1000ADE40(&qword_100260018, type metadata accessor for CompositionInputDashboardView, &unk_1001DD8B0);
      v22 = v43;
      _ConditionalContent<>.init(storage:)();
      sub_1000081F8(v22, v13, &qword_100260008, &qword_1001D5470);
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_100260020, &qword_1001D54D0);
      sub_1000ADE88();
      sub_1000ADFBC();
      _ConditionalContent<>.init(storage:)();
      sub_10000F428(v45, v20, v44, 1);
      sub_10000F500(v22, &qword_100260008, &qword_1001D5470);
      return sub_1000AE078(v11);
    }

    else if (v17 == 2 && v14 == 1 && !(v16 | v15))
    {
      swift_getKeyPath();
      *&v61 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_unknownObjectWeakLoadStrong();
      swift_getKeyPath();
      *&v61 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v27 = *(a1 + 16);
      type metadata accessor for PresentationModel(0);
      sub_1000ADE40(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);

      v28 = Environment.init<A>(_:)();
      v30 = v29;
      *&v55 = v27;
      type metadata accessor for ProofreadingModel(0);

      State.init(wrappedValue:)();
      v31 = v61;
      LOBYTE(v55) = 0;
      State.init(wrappedValue:)();

      swift_unknownObjectRelease();
      v54 = v30 & 1;
      v51 = 0;
      *&v55 = v28;
      BYTE8(v55) = v30 & 1;
      *(&v55 + 9) = *v53;
      HIDWORD(v55) = *&v53[3];
      v56 = v31;
      LOBYTE(v57) = v61;
      *(&v57 + 1) = *v52;
      DWORD1(v57) = *&v52[3];
      *(&v57 + 1) = *(&v61 + 1);
      v59 = v67;
      v58 = v66;
      v60 = 0;
      j__swift_retain(v28);
      sub_1000ADF14();
      sub_1000ADF68();

      _ConditionalContent<>.init(storage:)();
      v32 = v64;
      *(v13 + 2) = v63;
      *(v13 + 3) = v32;
      *(v13 + 32) = v65;
      v33 = v62;
      *v13 = v61;
      *(v13 + 1) = v33;
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_100260020, &qword_1001D54D0);
      sub_1000ADE88();
      sub_1000ADFBC();
      _ConditionalContent<>.init(storage:)();
      j__swift_release(v28, v30 & 1);
    }

    else
    {
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      sub_10000F3F4(v14, v15, v16, v17);
      _StringGuts.grow(_:)(54);
      v34._object = 0x80000001001E5790;
      v34._countAndFlagsBits = 0xD000000000000034;
      String.append(_:)(v34);
      swift_getKeyPath();
      *&v55 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = *(a1 + 48);
      v36 = *(a1 + 56);
      v37 = *(a1 + 64);
      v38 = *(a1 + 72);
      sub_10000F3F4(v35, v36, v37, v38);
      v39 = sub_100106A3C(v35, v36, v37, v38);
      v41 = v40;
      sub_10000F428(v35, v36, v37, v38);
      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v24 = *(a1 + 48);
    swift_getKeyPath();
    *&v61 = a1;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10019B2E4();
    v57 = v68;
    v58 = v69;
    v59 = v70;
    v56 = v67;
    v55 = v66;
    v53[0] = 1;
    v60 = 1;
    sub_1000AE0F0(&v66, &v61);
    sub_1000ADF14();
    sub_1000ADF68();
    _ConditionalContent<>.init(storage:)();
    v25 = v64;
    *(v13 + 2) = v63;
    *(v13 + 3) = v25;
    *(v13 + 32) = v65;
    v26 = v62;
    *v13 = v61;
    *(v13 + 1) = v26;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100260020, &qword_1001D54D0);
    sub_1000ADE88();
    sub_1000ADFBC();
    _ConditionalContent<>.init(storage:)();
    sub_10000F428(v24, v15, v16, 0);
    return sub_1000AE14C(&v66);
  }

  return result;
}

unint64_t sub_1000ADC50()
{
  result = qword_10025FFC8;
  if (!qword_10025FFC8)
  {
    sub_100003E34(&qword_10025FF98, &qword_1001D5420);
    sub_1000ADCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025FFC8);
  }

  return result;
}

unint64_t sub_1000ADCDC()
{
  result = qword_10025FFD0;
  if (!qword_10025FFD0)
  {
    sub_100003E34(&qword_10025FF90, &qword_1001D5418);
    sub_1000ADD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025FFD0);
  }

  return result;
}

unint64_t sub_1000ADD68()
{
  result = qword_10025FFD8;
  if (!qword_10025FFD8)
  {
    sub_100003E34(&qword_10025FF88, &qword_1001D5410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025FFD8);
  }

  return result;
}

uint64_t sub_1000ADDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionInputDashboardView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ADE40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000ADE88()
{
  result = qword_100260028;
  if (!qword_100260028)
  {
    sub_100003E34(&qword_100260020, &qword_1001D54D0);
    sub_1000ADF14();
    sub_1000ADF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260028);
  }

  return result;
}

unint64_t sub_1000ADF14()
{
  result = qword_100260030;
  if (!qword_100260030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260030);
  }

  return result;
}

unint64_t sub_1000ADF68()
{
  result = qword_100260038;
  if (!qword_100260038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260038);
  }

  return result;
}

unint64_t sub_1000ADFBC()
{
  result = qword_100260040;
  if (!qword_100260040)
  {
    sub_100003E34(&qword_100260008, &qword_1001D5470);
    sub_1000ADE40(&qword_100260018, type metadata accessor for CompositionInputDashboardView, &unk_1001DD8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260040);
  }

  return result;
}

uint64_t sub_1000AE078(uint64_t a1)
{
  v2 = type metadata accessor for CompositionInputDashboardView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AE214()
{
  sub_100003E34(&qword_10025FFA8, &qword_1001D5430);
  type metadata accessor for CommonUIManager(255);
  sub_100003E34(&qword_10025FFA0, &qword_1001D5428);
  type metadata accessor for PresentationModel(255);
  sub_100003E34(&qword_10025FF98, &qword_1001D5420);
  type metadata accessor for WritingToolsModel(255);
  sub_1000ADC50();
  sub_1000ADE40(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  swift_getOpaqueTypeConformance2();
  sub_1000ADE40(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  swift_getOpaqueTypeConformance2();
  sub_1000ADE40(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000AE3C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000AE3DC(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000AE408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AE450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000AE4E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AF7A8(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);
}

double sub_1000AE5C0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContainerBackgroundPlacement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_100260048, &qword_1001D5668);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_10000341C(&qword_100260050, &qword_1001D5670);
  sub_1000AE800(v2, &v10[*(v11 + 44)]);
  *&v15[0] = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  sub_100007120(&qword_100260058, &qword_100260048, &qword_1001D5668, &protocol conformance descriptor for HStack<A>);
  View.containerBackground<A>(_:for:)();
  (*(v5 + 8))(v7, v4);

  sub_10000F500(v10, &qword_100260048, &qword_1001D5668);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v15);
  v12 = (a1 + *(sub_10000341C(&qword_100260060, &qword_1001D5678) + 36));
  v13 = v15[1];
  *v12 = v15[0];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

uint64_t sub_1000AE800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100260068, &qword_1001D5680);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_10000341C(&qword_100260070, &qword_1001D5688);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_10000341C(&qword_100260078, &qword_1001D5690);
  sub_1000AEA38(a1, &v15[*(v16 + 44)]);
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_10000341C(&qword_100260080, &qword_1001D5698);
  sub_1000AF00C(a1, &v9[*(v17 + 44)]);
  sub_1000081F8(v15, v13, &qword_100260070, &qword_1001D5688);
  sub_1000AF6F4(v9, v7);
  sub_1000081F8(v13, a2, &qword_100260070, &qword_1001D5688);
  v18 = sub_10000341C(&qword_100260088, &qword_1001D56A0);
  sub_1000AF6F4(v7, a2 + *(v18 + 48));
  sub_10000F500(v9, &qword_100260068, &qword_1001D5680);
  sub_10000F500(v15, &qword_100260070, &qword_1001D5688);
  sub_10000F500(v7, &qword_100260068, &qword_1001D5680);
  return sub_10000F500(v13, &qword_100260070, &qword_1001D5688);
}

uint64_t sub_1000AEA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002600B0, &qword_1001DA0A0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  sub_1000AF764(a1, v21);
  v11 = swift_allocObject();
  v12 = v21[7];
  v11[7] = v21[6];
  v11[8] = v12;
  v11[9] = v21[8];
  v13 = v21[3];
  v11[3] = v21[2];
  v11[4] = v13;
  v14 = v21[5];
  v11[5] = v21[4];
  v11[6] = v14;
  v15 = v21[1];
  v11[1] = v21[0];
  v11[2] = v15;
  sub_10000341C(&qword_1002600B8, &qword_1001D56E0);
  sub_1000AF918();
  Button.init(action:label:)();
  v16 = *(v5 + 16);
  v16(v8, v10, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v17 = sub_10000341C(&qword_1002600E8, &qword_1001D5718);
  v16((a2 + *(v17 + 48)), v8, v4);
  v18 = a2 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = *(v5 + 8);
  v19(v10, v4);
  return (v19)(v8, v4);
}

uint64_t sub_1000AEC6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  swift_getKeyPath();
  *&v9 = v2;
  sub_1000AF7A8(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1001734FC();

  v3 = *(a1 + 136);
  v9 = *(a1 + 120);
  v10 = v3;
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.setter();
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  LOBYTE(v9) = *(a1 + 80);
  *(&v9 + 1) = v4;
  LOBYTE(v10) = v5;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  sub_1000081F8(a1, &v9, &qword_1002600A8, &unk_1001D56D0);
  v6 = v11;
  if (!v11)
  {
    return sub_10000F500(&v9, &qword_1002600A8, &unk_1001D56D0);
  }

  v7 = v12;
  sub_100027874(&v9, v11);
  (*(v7 + 8))(v6, v7);
  return sub_10000F4B4(&v9);
}

uint64_t sub_1000AEE88@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  sub_10000341C(&unk_100262F20, &qword_1001D56F8);
  TintShapeStyle.init()();
  *a1 = v2;
  v3 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(sub_10000341C(&unk_100262F10, &qword_1001D56F0) + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  LOBYTE(v3) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(sub_10000341C(&unk_100262F00, &qword_1001D56E8) + 36);
  *v14 = v3;
  *(v14 + 1) = v7;
  *(v14 + 2) = v9;
  *(v14 + 3) = v11;
  *(v14 + 4) = v13;
  v14[40] = 0;
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  v15 = qword_100277168;
  v16 = static Alignment.center.getter();
  v18 = v17;
  v19 = a1 + *(sub_10000341C(&qword_1002600B8, &qword_1001D56E0) + 36);
  *v19 = v15;
  *(v19 + 4) = 256;
  *(v19 + 2) = v16;
  *(v19 + 3) = v18;
}

uint64_t sub_1000AF00C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v3 = sub_10000341C(&qword_100260090, &qword_1001D56A8);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = __chkstk_darwin(v3);
  v46 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = &v33 - v6;
  v7 = *(a1 + 136);
  v50 = *(a1 + 120);
  *&v51 = v7;
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  v44 = v70;
  v42 = *(&v71 + 1);
  v43 = v71;
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  LOBYTE(v70) = *(a1 + 80);
  *(&v70 + 1) = v8;
  LOBYTE(v71) = v9;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  v40 = *(&v50 + 1);
  v41 = v50;
  v39 = v51;
  sub_1000AF764(a1, &v70);
  v10 = swift_allocObject();
  v11 = v77;
  v10[7] = v76;
  v10[8] = v11;
  v10[9] = v78;
  v12 = v73;
  v10[3] = v72;
  v10[4] = v12;
  v13 = v75;
  v10[5] = v74;
  v10[6] = v13;
  v14 = v71;
  v10[1] = v70;
  v10[2] = v14;
  type metadata accessor for WritingToolsModel(0);
  sub_1000AF7A8(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  v37 = Environment.init<A>(_:)();
  v35 = v15;
  type metadata accessor for CompositionModel(0);
  v38 = sub_1000AF7A8(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  v16 = Environment.init<A>(_:)();
  v18 = v17;
  LOBYTE(v50) = 0;
  State.init(wrappedValue:)();
  v34 = v70;
  v36 = *(&v70 + 1);
  LOBYTE(v50) = 0;
  State.init(wrappedValue:)();
  v19 = v70;
  v33 = *(&v70 + 1);
  LOBYTE(v50) = 0;
  State.init(wrappedValue:)();
  v20 = v70;
  v21 = *(&v70 + 1);
  *&v50 = _swiftEmptyArrayStorage;
  sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  State.init(wrappedValue:)();
  v69 = v35 & 1;
  v67 = v18 & 1;
  *&v50 = v37;
  BYTE8(v50) = v35 & 1;
  *(&v50 + 9) = *v68;
  HIDWORD(v50) = *&v68[3];
  *&v51 = v16;
  BYTE8(v51) = v18 & 1;
  *(&v51 + 9) = *v66;
  HIDWORD(v51) = *&v66[3];
  v52 = v44;
  *&v53 = v43;
  *(&v53 + 1) = v42;
  *&v54 = v41;
  *(&v54 + 1) = v40;
  LOWORD(v55) = v39;
  WORD3(v55) = v65;
  *(&v55 + 2) = *&v64[7];
  *(&v55 + 1) = sub_1000AF7A0;
  *&v56 = v10;
  BYTE8(v56) = 0;
  HIDWORD(v56) = *&v64[3];
  *(&v56 + 9) = *v64;
  LOBYTE(v57) = v34;
  *(&v57 + 1) = *v63;
  DWORD1(v57) = *&v63[3];
  *(&v57 + 1) = v36;
  LOBYTE(v58) = v19;
  DWORD1(v58) = *&v62[3];
  *(&v58 + 1) = *v62;
  *(&v58 + 1) = v33;
  LOBYTE(v59) = v20;
  DWORD1(v59) = *&v61[3];
  *(&v59 + 1) = *v61;
  *(&v59 + 1) = v21;
  v60 = v70;
  sub_1000AF7F0();
  v22 = v45;
  View.environment<A>(_:)();
  v78 = v58;
  v79 = v59;
  v80 = v60;
  v74 = v54;
  v75 = v55;
  v76 = v56;
  v77 = v57;
  v70 = v50;
  v71 = v51;
  v72 = v52;
  v73 = v53;
  sub_1000AF844(&v70);
  v24 = v46;
  v23 = v47;
  v25 = *(v47 + 16);
  v26 = v48;
  v25(v46, v22, v48);
  v27 = v49;
  *v49 = 0;
  *(v27 + 8) = 1;
  v28 = v27;
  v29 = sub_10000341C(&qword_1002600A0, &qword_1001D56C8);
  v25(&v28[*(v29 + 48)], v24, v26);
  v30 = &v28[*(v29 + 64)];
  *v30 = 0;
  v30[8] = 1;
  v31 = *(v23 + 8);
  v31(v22, v26);
  return (v31)(v24, v26);
}

uint64_t sub_1000AF544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081F8(a3, v8, &qword_1002600A8, &unk_1001D56D0);
  v5 = v9;
  if (!v9)
  {
    return sub_10000F500(v8, &qword_1002600A8, &unk_1001D56D0);
  }

  v6 = v10;
  sub_100027874(v8, v9);
  (*(v6 + 16))(a1, a2, v5, v6);
  return sub_10000F4B4(v8);
}

double sub_1000AF600@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  State.init(wrappedValue:)();
  *(a3 + 48) = v8;
  *(a3 + 56) = *(&v8 + 1);
  State.init(wrappedValue:)();
  *(a3 + 64) = v8;
  *(a3 + 72) = *(&v8 + 1);
  *(a3 + 80) = FocusState.init<>()() & 1;
  *(a3 + 88) = v5;
  *(a3 + 96) = v6 & 1;
  State.init(wrappedValue:)();
  *(a3 + 104) = v8;
  *(a3 + 112) = *(&v8 + 1);
  State.init(wrappedValue:)();
  result = *&v8;
  *(a3 + 120) = v8;
  *(a3 + 136) = v9;
  return result;
}

uint64_t sub_1000AF6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100260068, &qword_1001D5680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000AF7F0()
{
  result = qword_100262C60;
  if (!qword_100262C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262C60);
  }

  return result;
}

uint64_t sub_1000AF898(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 40))
  {
    sub_10000F4B4((v2 + 16));
  }

  return _swift_deallocObject(v2, 160, 7);
}

unint64_t sub_1000AF918()
{
  result = qword_100262EF0;
  if (!qword_100262EF0)
  {
    sub_100003E34(&qword_1002600B8, &qword_1001D56E0);
    sub_1000AF9D0();
    sub_100007120(&qword_1002600E0, &qword_100262F40, &qword_1001D5710, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262EF0);
  }

  return result;
}

unint64_t sub_1000AF9D0()
{
  result = qword_1002600C0;
  if (!qword_1002600C0)
  {
    sub_100003E34(&unk_100262F00, &qword_1001D56E8);
    sub_1000AFA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002600C0);
  }

  return result;
}

unint64_t sub_1000AFA5C()
{
  result = qword_1002600C8;
  if (!qword_1002600C8)
  {
    sub_100003E34(&unk_100262F10, &qword_1001D56F0);
    sub_1000AFB14();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002600C8);
  }

  return result;
}

unint64_t sub_1000AFB14()
{
  result = qword_1002600D0;
  if (!qword_1002600D0)
  {
    sub_100003E34(&unk_100262F20, &qword_1001D56F8);
    sub_100007120(&qword_1002600D8, &unk_100262F30, &unk_1001D5700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002600D0);
  }

  return result;
}

unint64_t sub_1000AFC08()
{
  result = qword_1002600F0;
  if (!qword_1002600F0)
  {
    sub_100003E34(&qword_100260060, &qword_1001D5678);
    sub_100003E34(&qword_100260048, &qword_1001D5668);
    sub_100007120(&qword_100260058, &qword_100260048, &qword_1001D5668, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002600F0);
  }

  return result;
}

char *sub_1000AFD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate;
  *&v4[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate] = 0;
  v7 = &v4[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_preferredContentSizeHandler];
  *v7 = a1;
  *(v7 + 1) = a2;
  *&v4[v6] = a3;
  *&v4[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_compositionModel] = a4;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  swift_unknownObjectRetain();
  swift_retain_n();

  sub_1000AF600(v19, a4, &v21);
  v8 = &v4[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_promptEntryView];
  v9 = v28;
  *(v8 + 6) = v27;
  *(v8 + 7) = v9;
  *(v8 + 8) = v29;
  v10 = v24;
  *(v8 + 2) = v23;
  *(v8 + 3) = v10;
  v11 = v26;
  *(v8 + 4) = v25;
  *(v8 + 5) = v11;
  v12 = v22;
  *v8 = v21;
  *(v8 + 1) = v12;
  v13 = type metadata accessor for PromptEntryViewController();
  v18.receiver = v4;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  *(&v22 + 1) = v13;
  *&v23 = &off_10024D8A0;
  v15 = v14;

  swift_unknownObjectRelease();

  *&v21 = v15;
  v16 = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_promptEntryView;
  swift_beginAccess();
  sub_1000B102C(&v21, v15 + v16);
  swift_endAccess();

  return v15;
}

void sub_1000AFEF0()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_promptEntryView;
  swift_beginAccess();
  sub_1000AF764(v0 + v3, v43);
  v4 = objc_allocWithZone(sub_10000341C(&qword_100260148, &unk_1001D57F8));
  v5 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = v5;
  v9 = [v8 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v7 addSubview:v9];

  v11 = [v8 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v1 addChildViewController:v8];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001CE090;
  v14 = [v8 view];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  *(v13 + 32) = v20;
  v21 = [v8 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v13 + 40) = v27;
  v28 = [v8 view];
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v13 + 48) = v34;
  v35 = [v8 view];

  if (!v35)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = [v35 bottomAnchor];

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 bottomAnchor];

    v41 = [v36 constraintEqualToAnchor:v40];
    *(v13 + 56) = v41;
    sub_1000B128C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v39 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}