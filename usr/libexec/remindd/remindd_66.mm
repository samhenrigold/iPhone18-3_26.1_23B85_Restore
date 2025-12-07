void sub_1006087E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_100648E30(&v19->super, a3, v31, sub_1006AC484, sub_1003E0D00, type metadata accessor for REMCDListSection, sub_1005E8958, sub_100669CD8, sub_100393C74, sub_1003B6CA0, sub_1003B769C);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100608B44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_TtC7remindd19RDXPCStorePerformer *, uint64_t, uint64_t))
{
  v5 = v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = a2 + 64;
    v10 = 1 << *(a2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a2 + 64);

    swift_beginAccess();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v83 = v8;
    v79 = a2;
    if (v12)
    {
      while (1)
      {
        v82 = v5;
        v15 = v13;
LABEL_10:
        v16 = __clz(__rbit64(v12)) | (v15 << 6);
        v17 = (*(a2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a2 + 56) + 8 * v16);
        v21 = *(v83 + 144);
        v22 = *(v21 + 16);

        if (!v22)
        {
          goto LABEL_17;
        }

        v23 = sub_100005F4C(v19, v18);
        if ((v24 & 1) == 0)
        {
          v21, v24, v25, v26, v27, v28, v29, v30;
          v20, v47, v48, v49, v50, v51, v52, v53;
LABEL_17:
          v54 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v55._object = 0x80000001007FE1C0;
          v55._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v55);
          v56._countAndFlagsBits = v19;
          v56._object = v18;
          String.append(_:)(v56);
          v18, v57, v58, v59, v60, v61, v62, v63;
          v64 = String._bridgeToObjectiveC()();
          0xE000000000000000, v65, v66, v67, v68, v69, v70, v71;
          [v54 internalErrorWithDebugDescription:v64];

          swift_willThrow();

          goto LABEL_19;
        }

        v31 = v23;
        v18, v24, v25, v26, v27, v28, v29, v30;
        v32 = *(*(v21 + 56) + 8 * v31);

        v21, v33, v34, v35, v36, v37, v38, v39;
        a4(v20, a3, v32);
        v5 = v82;
        if (v82)
        {
          break;
        }

        v12 &= v12 - 1;
        v20, v40, v41, v42, v43, v44, v45, v46;

        v13 = v15;
        a2 = v79;
        if (!v12)
        {
          goto LABEL_6;
        }
      }

      v20, v72, v73, v74, v75, v76, v77, v78;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v14)
        {

          goto LABEL_19;
        }

        v12 = *(v9 + 8 * v15);
        ++v13;
        if (v12)
        {
          v82 = v5;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100608E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_10093CFE0, off_1008D4190, sub_10065FB04, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100609128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100940370, off_1008D4150, sub_100660CF4, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100609448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100940360, off_1008D4138, sub_1006615EC, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100609768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100940350, off_1008D4130, sub_100661EE4, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100609A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_10094F688, off_1008D4140, sub_1006627DC, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100609DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &unk_100938870, off_1008D4128, sub_1006630D4, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060A0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &unk_10093F790, off_1008D4158, sub_1006639CC, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060A3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100944EC8, off_1008D41F0, sub_1006642C4, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060A708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &unk_100944ED0, off_1008D41A0, sub_100664BBC, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060AA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100939DF0, off_1008D4188, sub_1006654B4, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060AD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_1006531A4(v19, a3, v31, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100940C50, off_1008D41C8, sub_100665DAC, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060B068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_100653BCC(v19, a3, v31, sub_1006B0238, sub_100759CB4, &qword_100942E50, off_1008D41E0, sub_1006670C8, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060B388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_100653BCC(v19, a3, v31, sub_1006B0238, sub_100759CB4, &qword_10094F150, off_1008D4178, sub_100667998, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065449C(v19, a3, v31, sub_1006B0238, sub_100759CB4, type metadata accessor for REMCDDueDateDeltaAlert, sub_100668268, sub_1005E60F0, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060B9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065449C(v19, a3, v31, sub_1006B0238, sub_100759CB4, type metadata accessor for REMCDTemplateSection, sub_100668B38, sub_1005E6E68, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060BD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065449C(v19, a3, v31, sub_1006B0238, sub_100759CB4, type metadata accessor for REMCDSmartListSection, sub_100669408, sub_1005E7BE0, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060C050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065449C(v19, a3, v31, sub_1006B0238, sub_100759CB4, type metadata accessor for REMCDListSection, sub_100669CD8, sub_1005E8958, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060C388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065449C(v19, a3, v31, sub_1006AC9C8, sub_100759CB4, type metadata accessor for REMCDSavedReminder, sub_10066B748, sub_1005EA438, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060C6C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006ACBCC(v18, v30);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060C97C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AD894(v18, v30, &qword_10093CFE0, off_1008D4190, sub_10065FB04, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060CC68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AE350(v18, v30, &qword_100940370, off_1008D4150, sub_100660CF4, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060CF54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AE350(v18, v30, &qword_100940360, off_1008D4138, sub_1006615EC, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060D240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AE350(v18, v30, &qword_100940350, off_1008D4130, sub_100661EE4, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060D52C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AE350(v18, v30, &qword_10094F688, off_1008D4140, sub_1006627DC, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060D818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AE350(v18, v30, &unk_100938870, off_1008D4128, sub_1006630D4, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060DB04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AD894(v18, v30, &unk_10093F790, off_1008D4158, sub_1006639CC, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060DDF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AD894(v18, v30, &qword_100944EC8, off_1008D41F0, sub_1006642C4, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060E0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AD894(v18, v30, &unk_100944ED0, off_1008D41A0, sub_100664BBC, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060E3C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AD894(v18, v30, &qword_100939DF0, off_1008D4188, sub_1006654B4, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060E6B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v79 = v6;
    v77 = a2;
    if (v10)
    {
      while (1)
      {
        v78 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v79 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {
          v19, v22, v23, v24, v25, v26, v27, v28;
          v18, v45, v46, v47, v48, v49, v50, v51;
LABEL_17:
          v52 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v53._object = 0x80000001007FE1C0;
          v53._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v53);
          v54._countAndFlagsBits = v17;
          v54._object = v16;
          String.append(_:)(v54);
          v16, v55, v56, v57, v58, v59, v60, v61;
          v62 = String._bridgeToObjectiveC()();
          0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
          [v52 internalErrorWithDebugDescription:v62];

          swift_willThrow();

          goto LABEL_19;
        }

        v29 = v21;
        v16, v22, v23, v24, v25, v26, v27, v28;
        v30 = *(*(v19 + 56) + 8 * v29);

        v19, v31, v32, v33, v34, v35, v36, v37;
        sub_1006AD894(v18, v30, &qword_100940C50, off_1008D41C8, sub_100665DAC, sub_100393C74);
        v3 = v78;
        if (v78)
        {
          break;
        }

        v10 &= v10 - 1;
        v18, v38, v39, v40, v41, v42, v43, v44;

        v11 = v13;
        a2 = v77;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v18, v70, v71, v72, v73, v74, v75, v76;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v78 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060E9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065B4C4(v19, a3, v31, sub_1006B021C, sub_100759CB4, &qword_100942E50, off_1008D41E0, sub_1006670C8, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060ECC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065B4C4(v19, a3, v31, sub_1006B021C, sub_100759CB4, &qword_10094F150, off_1008D4178, sub_100667998, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060EFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065C9B8(v19, a3, v31, sub_1006AFDC8, sub_100759CB4, type metadata accessor for REMCDDueDateDeltaAlert, sub_100668268, sub_1005E60F0, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060F318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065C9B8(v19, a3, v31, sub_1006AC208, sub_100759CB4, type metadata accessor for REMCDTemplateSection, sub_100668B38, sub_1005E6E68, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065C9B8(v19, a3, v31, sub_1006AC314, sub_100759CB4, type metadata accessor for REMCDSmartListSection, sub_100669408, sub_1005E7BE0, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060F988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065C9B8(v19, a3, v31, sub_1006AC448, sub_100759CB4, type metadata accessor for REMCDListSection, sub_100669CD8, sub_1005E8958, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060FCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065C9B8(v19, a3, v31, sub_1006AC584, sub_100759CB4, type metadata accessor for REMCDTemplate, sub_10066A5A8, sub_1005E96B8, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_10060FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065BF38(v19, a3, v31, sub_1006AC830, sub_100759CB4, &unk_10093F770, off_1008D41E8, sub_10066AE78, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100610318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065C9B8(v19, a3, v31, sub_1006AC98C, sub_100759CB4, type metadata accessor for REMCDSavedReminder, sub_10066B748, sub_1005EA438, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100610650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10065BF38(v19, a3, v31, sub_1006AF518, sub_100759CB4, &unk_100938880, off_1008D41A8, sub_10066C8E8, sub_100393C74);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100610970(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = v3;
  v563 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v566 = &v548 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v573 = &v548 - v12;
  v574 = type metadata accessor for UUID();
  v13 = *(v574 - 8);
  __chkstk_darwin(v574, v14);
  v568 = &v548 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v567 = &v548 - v18;
  v19 = *&a3->clientIdentity[8];
  v579 = *a3->clientIdentity;
  v565 = *&a3->clientIdentity[16];
  if (qword_100936008 != -1)
  {
    goto LABEL_132;
  }

LABEL_2:
  v558 = type metadata accessor for Logger();
  v20 = sub_100006654(v558, qword_100945730);

  v577 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v19, v23, v24, v25, v26, v27, v28, v29;
  v30 = os_log_type_enabled(v21, v22);
  v31 = v4;
  v575 = a3;
  v580 = a1;
  v572 = v13;
  v576 = (a1 >> 62);
  if (v30)
  {
    v4 = swift_slowAlloc();
    v571 = swift_slowAlloc();
    v581[0] = v571;
    *v4 = 136446978;
    *(v4 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v581);
    *(v4 + 12) = 2048;
    if (!(a1 >> 62))
    {
      a1 = v580;
      v39 = *((v580 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_135;
  }

  a1, v52, v53, v54, v55, v56, v57, v58;
  while (1)
  {
    v59 = v578;
    v19 = v576 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v60 = &_swiftEmptyArrayStorage;
    if (!v19)
    {
      break;
    }

    v581[0] = &_swiftEmptyArrayStorage;
    v21 = v581;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v19 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      a3 = (a1 & 0xC000000000000001);
      v579 = a1 & 0xFFFFFFFFFFFFFF8;
      a1 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v61 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (a3)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v579 + 16))
          {
            goto LABEL_129;
          }

          v62 = *&v580->clientIdentity[8 * v13 + 16];
        }

        v63 = v62;
        v64 = sub_1005E45B0([v62 remObjectID]);
        if (v31)
        {

          return;
        }

        v4 = v64;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v13;
        if (v61 == v19)
        {
          a1 = v580;
          v60 = v581[0];
          v4 = 0;
          v59 = v578;
          a3 = v575;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_135:
    a1 = v580;
    v39 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v4 + 14) = v39;
    a1, v32, v33, v34, v35, v36, v37, v38;
    *(v4 + 22) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v40 = [swift_getObjCClassFromMetadata() description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_10000668C(v41, v43, v581);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v4 + 24) = v44;
    *(v4 + 32) = 2082;
    *(v4 + 34) = sub_10000668C(v579, v19, v581);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v4, 0x2Au);
    v22 = v571;
    swift_arrayDestroy();

    v4 = v31;
    a3 = v575;
  }

LABEL_20:
  v562 = v60;
  v65 = *(v59 + 96);
  if (v65 > 1)
  {
    if ((v65 - 2) >= 3 && v65 != 4499 && v65 != 4599)
    {
      goto LABEL_138;
    }

    goto LABEL_27;
  }

  if (!v65)
  {
LABEL_27:
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v579 = v4;
      v70 = v69;
      v581[0] = v69;
      *v68 = 136315138;
      v71 = [type metadata accessor for REMCDSavedAttachment() cdEntityName];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = v72;
      a3 = v575;
      v76 = sub_10000668C(v75, v74, v581);
      v74, v77, v78, v79, v80, v81, v82, v83;
      *(v68 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v66, v67, "Performing fetch during upsert {CDType: %s}", v68, 0xCu);
      sub_10000607C(v70);
      v4 = v579;
    }

    v84 = v562;
    v85 = sub_10065E91C(v562, a3);
    if (v4)
    {
      v84, v86, v87, v88, v89, v90, v91, v92;
      return;
    }

    goto LABEL_35;
  }

  if (v65 == 1)
  {
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v579 = v4;
      v98 = v97;
      v581[0] = v97;
      *v96 = 136315138;
      v99 = [type metadata accessor for REMCDSavedAttachment() cdEntityName];
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;

      v103 = sub_10000668C(v100, v102, v581);
      v102, v104, v105, v106, v107, v108, v109, v110;
      *(v96 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v94, v95, "Skipping fetch during upsert {CDType: %s}", v96, 0xCu);
      sub_10000607C(v98);
      v4 = v579;
    }

    v85 = sub_10038F0D0(&_swiftEmptyArrayStorage);
LABEL_35:
    a3 = v85;
    if (v576)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      v579 = v4;
      if (!v19)
      {
LABEL_118:
        a3, v86, v87, v88, v89, v90, v91, v92;
        v562, v407, v408, v409, v410, v411, v412, v413;
        return;
      }
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v579 = v4;
      if (!v19)
      {
        goto LABEL_118;
      }
    }

    v13 = 0;
    v561 = a1 & 0xC000000000000001;
    v560 = a1 & 0xFFFFFFFFFFFFFF8;
    v564 = v572 + 1;
    v557 = v572 + 7;
    v556 = v572 + 6;
    *&v93 = 136446978;
    v552 = v93;
    *&v93 = 136446210;
    v551 = v93;
    *&v93 = 136447490;
    v550 = v93;
    *&v93 = 136447234;
    v548 = v93;
    *&v93 = 136446466;
    v549 = v93;
    v571 = a3;
    v559 = v19;
    while (1)
    {
      if (v561)
      {
        v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v560 + 16))
        {
          goto LABEL_131;
        }

        v111 = *&a1->clientIdentity[8 * v13 + 16];
      }

      v112 = v579;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_130;
      }

      v570 = (v13 + 1);
      v113 = v111;
      v114 = sub_1005E45B0([v113 remObjectID]);
      if (v112)
      {
        a3, v115, v116, v117, v118, v119, v120, v121;
        v562, v497, v498, v499, v500, v501, v502, v503;

        return;
      }

      v572 = v114;
      v569 = v13;
      v579 = 0;

      v576 = v113;
      v122 = [v113 accountID];
      v123 = [v122 uuid];

      v124 = v567;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = UUID.uuidString.getter();
      v127 = v126;
      isa = v564->isa;
      v129 = v574;
      (v564->isa)(v124, v574);
      v130 = [objc_opt_self() localInternalAccountID];
      v131 = [v130 uuid];

      v132 = v568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v133 = UUID.uuidString.getter();
      v135 = v134;
      isa(v132, v129);
      if (v125 == v133 && v127 == v135)
      {
        v135, v136, v137, v138, v139, v140, v141, v142;
      }

      else
      {
        v143 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v135, v144, v145, v146, v147, v148, v149, v150;
        if ((v143 & 1) == 0)
        {
          a3 = v571;
          v153 = v572;
          goto LABEL_59;
        }
      }

      v151 = *(v578 + 68);
      a3 = v571;
      if (v151 >> 14 >= 2)
      {
        v153 = v572;
        if (v151 >> 14 == 2)
        {
          v152 = *(v578 + 64) | (*(v578 + 68) << 32);
        }

        else
        {
          v152 = 0x7FFFFFFFLL;
        }
      }

      else
      {
        v152 = 2147483519;
        v153 = v572;
      }

      v154 = v579;
      sub_100009A40(2, v152);
      v579 = v154;
      if (v154)
      {
        v127, v155, v156, v157, v158, v159, v160, v161;

        a3, v518, v519, v520, v521, v522, v523, v524;
        v562, v525, v526, v527, v528, v529, v530, v531;

        return;
      }

LABEL_59:
      v162._rawValue = &off_1008DD6F0;
      v170 = sub_1005F6E20(v162, type metadata accessor for REMCDSavedAttachment);
      if (*a3->clientIdentity)
      {
        v171 = sub_100393C74();
        if (v163)
        {
          v172 = v171;
          v127, v163, v164, v165, v166, v167, v168, v169;
          v173 = *(*&a3->clientIdentity[40] + 8 * v172);
          v174 = v153;
          v175 = Logger.logObject.getter();
          v4 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v175, v4))
          {
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            v581[0] = v178;
            *v176 = v549;
            *(v176 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v581);
            *(v176 + 12) = 2114;
            *(v176 + 14) = v174;
            *v177 = v174;
            v179 = v174;
            _os_log_impl(&_mh_execute_header, v175, v4, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v176, 0x16u);
            sub_1000050A4(v177, &unk_100938E70, &unk_100797230);
            a3 = v571;

            sub_10000607C(v178);
          }

          else
          {
          }

          goto LABEL_42;
        }
      }

      if (v170 == 2)
      {
        goto LABEL_124;
      }

      if (v170)
      {
        v180 = 6911093;
      }

      else
      {
        v180 = 0x44497463656A626FLL;
      }

      if (v170)
      {
        v181 = 0xE300000000000000;
      }

      else
      {
        v181 = 0xE800000000000000;
      }

      v182 = 0xE800000000000000;
      if (v180 == 0x44497463656A626FLL && v181 == 0xE800000000000000)
      {
LABEL_72:
        v183 = v578;
        v127, v163, v164, v165, v166, v167, v168, v169;
        v182, v184, v185, v186, v187, v188, v189, v190;
        v181, v191, v192, v193, v194, v195, v196, v197;
        goto LABEL_78;
      }

      v198 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE800000000000000, v199, v200, v201, v202, v203, v204, v205;
      v181, v206, v207, v208, v209, v210, v211, v212;
      if ((v198 & 1) == 0)
      {
        v182 = 0xE300000000000000;
        if (v180 == 6911093 && v181 == 0xE300000000000000)
        {
          goto LABEL_72;
        }

        v213 = _stringCompareWithSmolCheck(_:_:expecting:)();
        0xE300000000000000, v214, v215, v216, v217, v218, v219, v220;
        v181, v221, v222, v223, v224, v225, v226, v227;
        if ((v213 & 1) == 0)
        {
LABEL_124:
          v562, v163, v164, v165, v166, v167, v168, v169;
          v127, v504, v505, v506, v507, v508, v509, v510;
          v571, v511, v512, v513, v514, v515, v516, v517;
          [objc_opt_self() noSuchObjectErrorWithObjectID:v153];
          swift_willThrow();

          return;
        }
      }

      v127, v163, v164, v165, v166, v167, v168, v169;
      v183 = v578;
LABEL_78:
      v228 = *(v183 + 88);
      type metadata accessor for REMCDSavedAttachment();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v230 = [ObjCClassFromMetadata entity];
      v231 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v230 insertIntoManagedObjectContext:v228];
      v232 = v565;
      [v228 assignObject:v231 toPersistentStore:v232];

      v233 = v231;
      v234 = [v153 uuid];
      v235 = v573;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v236 = v574;
      (v557->isa)(v235, 0, 1, v574);
      v237 = v566;
      sub_10018E470(v235, v566);
      LODWORD(v235) = (v556->isa)(v237, 1, v236);
      v238 = v233;
      v239 = 0;
      if (v235 != 1)
      {
        v240 = v566;
        v239 = UUID._bridgeToObjectiveC()().super.isa;
        isa(v240, v574);
      }

      [v238 setIdentifier:{v239, v548}];

      sub_1000050A4(v573, &unk_100939D90, "8\n\r");
      v241 = v153;
      v242 = v578;

      v243 = v238;
      v244 = Logger.logObject.getter();
      v245 = static os_log_type_t.default.getter();

      v246 = os_log_type_enabled(v244, v245);
      v572 = v241;
      if (v246)
      {
        v247 = swift_slowAlloc();
        v248 = swift_slowAlloc();
        v555 = swift_slowAlloc();
        v586 = v555;
        *v247 = v552;
        *(v247 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v586);
        *(v247 + 12) = 2082;
        v249 = *(v242 + 40);
        v584 = *(v242 + 24);
        *v585 = v249;
        *&v585[14] = *(v242 + 54);
        sub_100009DAC(&v584, v581);
        v250 = sub_1000063E8();
        v252 = v251;
        sub_1005812D4(&v584);
        v253 = sub_10000668C(v250, v252, &v586);
        v252, v254, v255, v256, v257, v258, v259, v260;
        *(v247 + 14) = v253;
        *(v247 + 22) = 2114;
        *(v247 + 24) = v241;
        *v248 = v241;
        *(v247 + 32) = 2112;
        v261 = v241;
        v262 = v243;
        v263 = [v243 objectID];
        *(v247 + 34) = v263;
        v248[1] = v263;
        _os_log_impl(&_mh_execute_header, v244, v245, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v247, 0x2Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();
      }

      else
      {
        v262 = v243;
      }

      v264 = v575;
      v265 = v579;
      v266 = v576;
      swift_beginAccess();
      v267 = *&v264->clientIdentity[32];
      v579 = v265;
      if ((v267 & 0xC000000000000001) != 0)
      {
        if (v267 < 0)
        {
          v268 = v267;
        }

        else
        {
          v268 = v267 & 0xFFFFFFFFFFFFFF8;
        }

        v269 = v572;
        v270 = v572;
        v271 = v262;
        v272 = v262;
        v273 = __CocoaDictionary.count.getter();
        if (__OFADD__(v273, 1))
        {
          __break(1u);
LABEL_137:
          swift_once();
LABEL_120:
          sub_100006654(v558, qword_100950D98);
          v414 = Logger.logObject.getter();
          v415 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v414, v415))
          {
            v416 = swift_slowAlloc();
            v581[0] = swift_slowAlloc();
            *v416 = v549;
            v424 = sub_100729CB0(1, v417, v418, v419, v420, v421, v422, v423);
            v426 = v425;
            v427 = sub_10000668C(v424, v425, v581);
            v426, v428, v429, v430, v431, v432, v433, v434;
            *(v416 + 4) = v427;
            *(v416 + 12) = 2082;
            v442 = sub_100729CB0(v244, v435, v436, v437, v438, v439, v440, v441);
            v444 = v443;
            v445 = sub_10000668C(v442, v443, v581);
            v444, v446, v447, v448, v449, v450, v451, v452;
            *(v416 + 14) = v445;
            _os_log_impl(&_mh_execute_header, v414, v415, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v416, 0x16u);
            swift_arrayDestroy();
          }

          v453 = v571;
          v454 = objc_opt_self();
          v455 = String._bridgeToObjectiveC()();
          sub_100729CB0(1, v456, v457, v458, v459, v460, v461, v462);
          v464 = v463;
          v465 = String._bridgeToObjectiveC()();
          v464, v466, v467, v468, v469, v470, v471, v472;
          sub_100729CB0(v244, v473, v474, v475, v476, v477, v478, v479);
          v481 = v480;
          v482 = String._bridgeToObjectiveC()();
          v481, v483, v484, v485, v486, v487, v488, v489;
          [v454 unauthorizedErrorWithMissingEntitlement:v455 requestedAccessLevel:v465 currentAccesslevel:v482];

          swift_willThrow();
          v453, v490, v491, v492, v493, v494, v495, v496;

LABEL_127:
          v562, v539, v540, v541, v542, v543, v544, v545;

          return;
        }

        *&v264->clientIdentity[32] = sub_10021CDBC(v268, v273 + 1);
        v274 = v578;
      }

      else
      {
        v269 = v572;
        v275 = v572;
        v271 = v262;
        v276 = v262;
        v274 = v578;
        v265 = v579;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v586 = *&v264->clientIdentity[32];
      sub_1002C8398(v271, v269, isUniquelyReferenced_nonNull_native);
      *&v264->clientIdentity[32] = v586;

      swift_endAccess();
      if (((*(v274 + 64) | (*(v274 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v278 = Logger.logObject.getter();
        v279 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v278, v279))
        {
          v280 = swift_slowAlloc();
          v281 = swift_slowAlloc();
          v581[0] = v281;
          *v280 = v551;
          LOBYTE(v586) = 0;
          v282 = String.init<A>(describing:)();
          v284 = v283;
          v285 = sub_10000668C(v282, v283, v581);
          v286 = v284;
          v264 = v575;
          v286, v287, v288, v289, v290, v291, v292, v293;
          *(v280 + 4) = v285;
          _os_log_impl(&_mh_execute_header, v278, v279, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v280, 0xCu);
          sub_10000607C(v281);

          v266 = v576;
        }

        v265 = v579;
        v274 = v578;
      }

      v244 = *(v274 + 64);
      if (*(v274 + 68) >> 14 == 2 && (v244 & 1) == 0)
      {
        goto LABEL_119;
      }

      if ((v244 & 0xFFFF000000000001 | (*(v274 + 68) << 32) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v294 = Logger.logObject.getter();
        v295 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v294, v295))
        {
          v296 = swift_slowAlloc();
          v297 = swift_slowAlloc();
          v581[0] = v297;
          *v296 = v551;
          LOBYTE(v586) = 1;
          v298 = String.init<A>(describing:)();
          v300 = v299;
          v301 = sub_10000668C(v298, v299, v581);
          v302 = v300;
          v264 = v575;
          v302, v303, v304, v305, v306, v307, v308, v309;
          *(v296 + 4) = v301;
          _os_log_impl(&_mh_execute_header, v294, v295, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v296, 0xCu);
          sub_10000607C(v297);

          v266 = v576;
        }

        v265 = v579;
        v274 = v578;
      }

      if (*(v274 + 68) >> 14 == 2)
      {
        LODWORD(v244) = *(v274 + 64);
        if ((v244 & 1) == 0)
        {
LABEL_119:
          if (qword_1009367A0 == -1)
          {
            goto LABEL_120;
          }

          goto LABEL_137;
        }
      }

      swift_retain_n();
      v269 = v269;
      v271 = v271;
      v310 = Logger.logObject.getter();
      v311 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v310, v311))
      {
        LODWORD(v555) = v311;
        v572 = v310;
        v312 = v274;
        v313 = swift_slowAlloc();
        v314 = swift_slowAlloc();
        v554 = swift_slowAlloc();
        v586 = v554;
        *v313 = v550;
        *(v313 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v586);
        *(v313 + 12) = 2082;
        v315 = *(v312 + 40);
        v582 = *(v312 + 24);
        *v583 = v315;
        *&v583[14] = *(v312 + 54);
        sub_100009DAC(&v582, v581);
        v316 = sub_1000063E8();
        v318 = v317;
        sub_1005812D4(&v582);
        v319 = sub_10000668C(v316, v318, &v586);
        v318, v320, v321, v322, v323, v324, v325, v326;
        *(v313 + 14) = v319;
        *(v313 + 22) = 2114;
        *(v313 + 24) = v269;
        *v314 = v269;
        *(v313 + 32) = 2112;
        v327 = v269;
        v328 = [v271 objectID];
        *(v313 + 34) = v328;
        v553 = v314;
        v314[1] = v328;
        *(v313 + 42) = 2082;
        v581[0] = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, 2, 0);
        v329 = v581[0];
        v331 = *(v581[0] + 16);
        v330 = *(v581[0] + 24);
        v332 = v330 >> 1;
        v333 = v331 + 1;
        if (v330 >> 1 <= v331)
        {
          sub_100026EF4((v330 > 1), v331 + 1, 1);
          v329 = v581[0];
          v330 = *(v581[0] + 24);
          v332 = v330 >> 1;
        }

        *(v329 + 16) = v333;
        v334 = v329 + 16 * v331;
        *(v334 + 32) = 0x44497463656A626FLL;
        *(v334 + 40) = 0xE800000000000000;
        v581[0] = v329;
        if (v332 <= v333)
        {
          sub_100026EF4((v330 > 1), v331 + 2, 1);
          v329 = v581[0];
        }

        *(v329 + 16) = v331 + 2;
        v335 = v329 + 16 * v333;
        *(v335 + 32) = 6911093;
        *(v335 + 40) = 0xE300000000000000;
        v336 = Array.description.getter();
        v338 = v337;

        v339 = sub_10000668C(v336, v338, &v586);
        v338, v340, v341, v342, v343, v344, v345, v346;
        *(v313 + 44) = v339;
        *(v313 + 52) = 1024;
        v347 = v578;
        v348 = *(v578 + 104);

        *(v313 + 54) = v348;

        v349 = v572;
        _os_log_impl(&_mh_execute_header, v572, v555, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v313, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v274 = v347;

        v265 = v579;
        v264 = v575;
        v266 = v576;
      }

      else
      {
      }

      sub_10022A984(v266, v271);
      v4 = v265;
      if (v265)
      {

        v571, v532, v533, v534, v535, v536, v537, v538;
        goto LABEL_127;
      }

      v350 = [v271 changedValues];

      v351 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      swift_beginAccess();
      v352 = v269;

      v353 = swift_isUniquelyReferenced_nonNull_native();
      v586 = *&v264->clientIdentity[40];
      *&v264->clientIdentity[40] = 0x8000000000000000;
      sub_1002C8688(v351, v352, v353);

      *&v264->clientIdentity[40] = v586;
      swift_endAccess();
      v361 = *(v274 + 104);
      v579 = 0;
      if (v361)
      {
        v351, v354, v355, v356, v357, v358, v359, v360;
        [v271 updateChangeCount];
      }

      else
      {

        v362 = v352;

        v363 = Logger.logObject.getter();
        v364 = static os_log_type_t.default.getter();
        v351, v365, v366, v367, v368, v369, v370, v371;

        if (!os_log_type_enabled(v363, v364))
        {
          v351, v372, v373, v374, v375, v376, v377, v378;

          goto LABEL_116;
        }

        v379 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v572 = swift_slowAlloc();
        v581[0] = v572;
        *v379 = v548;
        *(v379 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v581);
        *(v379 + 12) = 1024;
        *(v379 + 14) = 0;

        *(v379 + 18) = 1024;
        *(v379 + 20) = 1;
        *(v379 + 24) = 2114;
        *(v379 + 26) = v362;
        *v4 = v362;
        *(v379 + 34) = 2082;
        v555 = v362;
        v380 = v579;
        sub_1005E2810(v351);
        v382 = v381;
        v579 = v380;
        v351, v383, v384, v385, v386, v387, v388, v389;
        v390 = Array.description.getter();
        v392 = v391;
        v382, v391, v393, v394, v395, v396, v397, v398;
        v399 = sub_10000668C(v390, v392, v581);
        v392, v400, v401, v402, v403, v404, v405, v406;
        *(v379 + 36) = v399;
        _os_log_impl(&_mh_execute_header, v363, v364, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v379, 0x2Cu);
        sub_1000050A4(v4, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

LABEL_116:
      a1 = v580;
      a3 = v571;
LABEL_42:
      v13 = &v569->isa + 1;
      v19 = v559;
      if (v570 == v559)
      {
        goto LABEL_118;
      }
    }
  }

LABEL_138:
  v546 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v547 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("unknown mode", 12, 2, v546, v547);
  __break(1u);
}

void sub_100612898(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = v4;
  v7 = v3;
  v600 = a2;
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v10 - 8, v11);
  v598 = v576 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v601 = v576 - v15;
  v605 = type metadata accessor for Date();
  *&v597 = *(v605 - 8);
  __chkstk_darwin(v605, v16);
  v604 = v576 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v608 = type metadata accessor for UUID();
  v596 = *(v608 - 8);
  __chkstk_darwin(v608, v18);
  v599 = v576 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v606 = v576 - v22;
  v24 = a3[2];
  v23 = a3[3];
  v603 = a3;
  v594 = a3[4];
  if (qword_100936008 != -1)
  {
    goto LABEL_190;
  }

LABEL_2:
  v593 = type metadata accessor for Logger();
  v25 = sub_100006654(v593, qword_100945730);

  v611 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v23, v28, v29, v30, v31, v32, v33, v34;
  v35 = os_log_type_enabled(v26, v27);
  v36 = a1 >> 62;
  v609 = v7;
  v612 = a1;
  v602 = (a1 >> 62);
  if (v35)
  {
    v610 = v24;
    v5 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v613 = v24;
    *v5 = 136446978;
    *(v5 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v613);
    *(v5 + 6) = 2048;
    v607 = v6;
    if (!v36)
    {
      v44 = v612;
      v45 = *((v612 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_193;
  }

  a1, v58, v59, v60, v61, v62, v63, v64;
  while (1)
  {
    v23 = v36 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v65 = &_swiftEmptyArrayStorage;
    if (!v23)
    {
      break;
    }

    v613 = &_swiftEmptyArrayStorage;
    v26 = &v613;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v23 & 0x8000000000000000) == 0)
    {
      v66 = 0;
      v7 = a1 & 0xC000000000000001;
      v610 = (a1 & 0xFFFFFFFFFFFFFF8);
      v5 = off_1008D4190;
      while (1)
      {
        v67 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
          break;
        }

        if (v7)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v66 >= v610[2])
          {
            goto LABEL_187;
          }

          v68 = *(a1 + 8 * v66 + 32);
        }

        v69 = v68;
        sub_1005E3810([v68 remObjectID], &qword_10093CFE0, off_1008D4190);
        v24 = v6;
        if (v6)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v66;
        v6 = 0;
        a1 = v612;
        if (v67 == v23)
        {
          v65 = v613;
          v7 = v609;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_193:
    v44 = v612;
    v45 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v5 + 14) = v45;
    v44, v37, v38, v39, v40, v41, v42, v43;
    *(v5 + 11) = 2082;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v46 = [swift_getObjCClassFromMetadata() description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = sub_10000668C(v47, v49, &v613);
    v49, v51, v52, v53, v54, v55, v56, v57;
    v5[3] = v50;
    *(v5 + 16) = 2082;
    *(v5 + 34) = sub_10000668C(v610, v23, &v613);
    _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
    swift_arrayDestroy();

    v6 = v607;
    v7 = v609;
    a1 = v44;
    v36 = v602;
  }

LABEL_20:
  v70 = *(v7 + 96);
  if (v70 > 1)
  {
    if ((v70 - 2) >= 3 && v70 != 4499 && v70 != 4599)
    {
      goto LABEL_198;
    }

    goto LABEL_27;
  }

  if (!v70)
  {
LABEL_27:
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v613 = v74;
      *v73 = 136315138;
      v75 = [objc_opt_self() cdEntityName];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = sub_10000668C(v76, v78, &v613);
      v78, v80, v81, v82, v83, v84, v85, v86;
      *(v73 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v71, v72, "Performing fetch during upsert {CDType: %s}", v73, 0xCu);
      sub_10000607C(v74);
      a1 = v612;
    }

    v87 = sub_10065FB04(v65, v603);
    if (v6)
    {
LABEL_182:
      v65, v88, v89, v90, v91, v92, v93, v94;
      return;
    }

    goto LABEL_35;
  }

  if (v70 != 1)
  {
LABEL_198:
    v574 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v575 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v574, v575);
    __break(1u);
    return;
  }

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v613 = v99;
    *v98 = 136315138;
    v100 = [objc_opt_self() cdEntityName];
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = sub_10000668C(v101, v103, &v613);
    v103, v105, v106, v107, v108, v109, v110, v111;
    *(v98 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v96, v97, "Skipping fetch during upsert {CDType: %s}", v98, 0xCu);
    sub_10000607C(v99);
    a1 = v612;
  }

  v87 = sub_10038F780(&_swiftEmptyArrayStorage);
LABEL_35:
  v112 = v87;
  if (v602)
  {
    v113 = _CocoaArrayWrapper.endIndex.getter();
    if (!v113)
    {
      goto LABEL_181;
    }
  }

  else
  {
    v113 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v113)
    {
      goto LABEL_181;
    }
  }

  v114 = 0;
  v115 = a1 & 0xC000000000000001;
  v587 = a1 & 0xFFFFFFFFFFFFFF8;
  v586 = a1 + 32;
  v610 = (v596 + 8);
  v585 = v596 + 56;
  v584 = (v596 + 48);
  v595 = (v597 + 8);
  *&v95 = 136446978;
  v581 = v95;
  *&v95 = 136446210;
  v597 = v95;
  *&v95 = 136447490;
  v578 = v95;
  *&v95 = 136447234;
  v577 = v95;
  *&v95 = 136446466;
  v580 = v95;
  v591 = v65;
  v592 = v112;
  v583 = v113;
  v582 = a1 & 0xC000000000000001;
LABEL_40:
  if (!v115)
  {
    if (v114 >= *(v587 + 16))
    {
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v116 = *(v586 + 8 * v114);
    v117 = __OFADD__(v114, 1);
    v118 = v114 + 1;
    if (!v117)
    {
      goto LABEL_43;
    }

LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v117 = __OFADD__(v114, 1);
  v118 = v114 + 1;
  if (v117)
  {
    goto LABEL_194;
  }

LABEL_43:
  v119 = v116;
  v120 = sub_1005E3810([v119 remObjectID], &qword_10093CFE0, off_1008D4190);
  if (v6)
  {
    v112, v121, v122, v123, v124, v125, v126, v127;
    v65, v539, v540, v541, v542, v543, v544, v545;

    return;
  }

  v590 = v120;
  v588 = v118;
  v607 = 0;
  v596 = v119;

  v128 = [*(v600 + 16) uuid];
  v129 = v606;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v130 = UUID.uuidString.getter();
  v132 = v131;
  v133 = *v610;
  v134 = v608;
  (*v610)(v129, v608);
  v135 = [objc_opt_self() localInternalAccountID];
  v136 = [v135 uuid];

  v137 = v599;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v138 = UUID.uuidString.getter();
  v140 = v139;
  v602 = v133;
  (v133)(v137, v134);
  v148 = v132;
  if (v130 == v138 && v132 == v140)
  {
    v140, v141, v142, v143, v144, v145, v146, v147;
    v149 = v596;
    v150 = v590;
    v151 = v609;
  }

  else
  {
    v152 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v140, v153, v154, v155, v156, v157, v158, v159;
    v149 = v596;
    v150 = v590;
    v151 = v609;
    if ((v152 & 1) == 0)
    {
      v161 = v592;
      goto LABEL_55;
    }
  }

  v160 = *(v151 + 68);
  v161 = v592;
  if (v160 >> 14 >= 2)
  {
    v163 = v591;
    if (v160 >> 14 == 2)
    {
      v162 = *(v151 + 64) | (*(v151 + 68) << 32);
    }

    else
    {
      v162 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v162 = 2147483519;
    v163 = v591;
  }

  v164 = v607;
  sub_100009A40(2, v162);
  v607 = v164;
  if (v164)
  {
    v148, v165, v166, v167, v168, v169, v170, v171;

    v161, v546, v547, v548, v549, v550, v551, v552;
    v163, v553, v554, v555, v556, v557, v558, v559;

    return;
  }

LABEL_55:
  v172._rawValue = &off_1008DEE60;
  v180 = sub_1005F65A4(v172, &qword_10093CFE0, off_1008D4190);
  if (*v161->clientIdentity)
  {
    v181 = sub_100393C74();
    if (v173)
    {
      v182 = v181;
      v148, v173, v174, v175, v176, v177, v178, v179;
      v183 = *(*&v161->clientIdentity[40] + 8 * v182);
      v184 = v150;
      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v613 = v189;
        *v187 = v580;
        *(v187 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v613);
        *(v187 + 12) = 2114;
        *(v187 + 14) = v184;
        *v188 = v184;
        v190 = v184;
        _os_log_impl(&_mh_execute_header, v185, v186, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v187, 0x16u);
        sub_1000050A4(v188, &unk_100938E70, &unk_100797230);

        sub_10000607C(v189);
      }

      else
      {
      }

      goto LABEL_144;
    }
  }

  if (v180 == 4)
  {
    goto LABEL_185;
  }

  v191 = 0x6E6F697461657263;
  v192 = 0xEC00000065746144;
  v193 = 0xE800000000000000;
  v194 = 1701869940;
  if (v180 == 2)
  {
    v194 = 1701667182;
  }

  if (!v180)
  {
    v191 = 0x44497463656A626FLL;
    v192 = 0xE800000000000000;
  }

  if (v180 <= 1u)
  {
    v195 = v191;
  }

  else
  {
    v195 = v194;
  }

  if (v180 <= 1u)
  {
    v196 = v192;
  }

  else
  {
    v196 = 0xE400000000000000;
  }

  if (v195 == 0x44497463656A626FLL && v196 == 0xE800000000000000)
  {
    goto LABEL_72;
  }

  v205 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE800000000000000, v206, v207, v208, v209, v210, v211, v212;
  v196, v213, v214, v215, v216, v217, v218, v219;
  if ((v205 & 1) == 0)
  {
    v193 = 0xEC00000065746144;
    if (v180 > 1u)
    {
      v196 = 0xE400000000000000;
      if (v180 == 2)
      {
        v195 = 1701667182;
      }

      else
      {
        v195 = 1701869940;
      }
    }

    else
    {
      if (v180)
      {
        v195 = 0x6E6F697461657263;
      }

      else
      {
        v195 = 0x44497463656A626FLL;
      }

      if (v180)
      {
        v196 = 0xEC00000065746144;
      }

      else
      {
        v196 = 0xE800000000000000;
      }
    }

    if (v195 == 0x6E6F697461657263 && v196 == 0xEC00000065746144)
    {
      goto LABEL_72;
    }

    v304 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xEC00000065746144, v305, v306, v307, v308, v309, v310, v311;
    v196, v312, v313, v314, v315, v316, v317, v318;
    if (v304)
    {
      goto LABEL_74;
    }

    v193 = 0xE400000000000000;
    if (v180 > 1u)
    {
      v196 = 0xE400000000000000;
      v195 = v180 == 2 ? 1701667182 : 1701869940;
    }

    else
    {
      v195 = v180 ? 0x6E6F697461657263 : 0x44497463656A626FLL;
      v196 = (v180 ? 0xEC00000065746144 : 0xE800000000000000);
    }

    if (v195 == 1701667182 && v196 == 0xE400000000000000)
    {
      goto LABEL_72;
    }

    v416 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE400000000000000, v417, v418, v419, v420, v421, v422, v423;
    v196, v424, v425, v426, v427, v428, v429, v430;
    if (v416)
    {
      goto LABEL_74;
    }

    v193 = 0xE400000000000000;
    if (v180 > 1u)
    {
      v196 = 0xE400000000000000;
      v195 = v180 == 2 ? 1701667182 : 1701869940;
    }

    else
    {
      v195 = v180 ? 0x6E6F697461657263 : 0x44497463656A626FLL;
      v196 = (v180 ? 0xEC00000065746144 : 0xE800000000000000);
    }

    if (v195 == 1701869940 && v196 == 0xE400000000000000)
    {
LABEL_72:
      v148, v173, v195, v175, v176, v177, v178, v179;
      v193, v197, v198, v199, v200, v201, v202, v203;
      v204 = v196;
      goto LABEL_75;
    }

    v431 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE400000000000000, v432, v433, v434, v435, v436, v437, v438;
    v196, v439, v440, v441, v442, v443, v444, v445;
    v149 = v596;
    if (v431)
    {
      goto LABEL_74;
    }

LABEL_185:
    v591, v173, v174, v175, v176, v177, v178, v179;
    v148, v560, v561, v562, v563, v564, v565, v566;
    v161, v567, v568, v569, v570, v571, v572, v573;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v150];
    swift_willThrow();

    return;
  }

LABEL_74:
  v204 = v148;
LABEL_75:
  v204, v173, v174, v175, v176, v177, v178, v179;
  v220 = *(v151 + 88);
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v222 = [ObjCClassFromMetadata entity];
  v223 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v222 insertIntoManagedObjectContext:v220];
  v224 = v594;
  [v220 assignObject:v223 toPersistentStore:v224];

  v225 = v223;
  v226 = [v150 uuid];
  v227 = v601;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v228 = v608;
  (*v585)(v227, 0, 1, v608);
  v229 = v598;
  sub_10018E470(v227, v598);
  LODWORD(v229) = (*v584)(v229, 1, v228);
  v230 = v225;
  isa = 0;
  if (v229 != 1)
  {
    v232 = v598;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v602)(v232, v608);
  }

  [v230 setIdentifier:isa];

  sub_1000050A4(v601, &unk_100939D90, "8\n\r");
  v233 = v150;
  v7 = v609;

  v234 = v230;
  v235 = Logger.logObject.getter();
  v236 = static os_log_type_t.default.getter();

  v237 = os_log_type_enabled(v235, v236);
  v590 = v234;
  v589 = v233;
  if (v237)
  {
    v238 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    v579 = swift_slowAlloc();
    v618 = v579;
    *v238 = v581;
    *(v238 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v618);
    *(v238 + 12) = 2082;
    v240 = *(v7 + 40);
    v616 = *(v7 + 24);
    *v617 = v240;
    *&v617[14] = *(v7 + 54);
    sub_100009DAC(&v616, &v613);
    v241 = sub_1000063E8();
    v243 = v242;
    sub_1005812D4(&v616);
    v244 = sub_10000668C(v241, v243, &v618);
    v243, v245, v246, v247, v248, v249, v250, v251;
    *(v238 + 14) = v244;
    *(v238 + 22) = 2114;
    *(v238 + 24) = v233;
    *v239 = v233;
    *(v238 + 32) = 2112;
    v252 = v233;
    v253 = [v234 objectID];
    *(v238 + 34) = v253;
    v239[1] = v253;
    _os_log_impl(&_mh_execute_header, v235, v236, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v238, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v6 = v607;
  v24 = &off_1008E30C8;
  a1 = v603;
  swift_beginAccess();
  v254 = *(a1 + 48);
  if ((v254 & 0xC000000000000001) != 0)
  {
    if (v254 < 0)
    {
      v255 = *(a1 + 48);
    }

    else
    {
      v255 = v254 & 0xFFFFFFFFFFFFFF8;
    }

    v256 = v589;
    v257 = v589;
    v113 = v590;
    v258 = v590;
    v259 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v259, 1))
    {
      *(a1 + 48) = sub_10021CDBC(v255, v259 + 1);
      goto LABEL_86;
    }

LABEL_196:
    __break(1u);
LABEL_197:
    swift_once();
    goto LABEL_178;
  }

  v256 = v589;
  v260 = v589;
  v113 = v590;
  v261 = v590;
LABEL_86:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v618 = *(a1 + 48);
  sub_1002C8398(v113, v256, isUniquelyReferenced_nonNull_native);
  *(a1 + 48) = v618;

  swift_endAccess();
  v263 = 0;
  v264 = *(v7 + 64) | (*(v7 + 68) << 32);
  while (1)
  {
    if ((v264 & 0xC00000000001) == 0x800000000000)
    {
      v265 = *(&off_1008E30C8 + v263 + 32);
      v266 = Logger.logObject.getter();
      v267 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v266, v267))
      {
        a1 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        v613 = v268;
        *a1 = v597;
        LOBYTE(v618) = v265;
        v269 = String.init<A>(describing:)();
        v271 = v270;
        v272 = sub_10000668C(v269, v270, &v613);
        v273 = v271;
        v7 = v609;
        v273, v274, v275, v276, v277, v278, v279, v280;
        *(a1 + 4) = v272;
        v24 = &off_1008E30C8;
        _os_log_impl(&_mh_execute_header, v266, v267, "Client doesn't have permission to write key {changedValueKey: %{public}s}", a1, 0xCu);
        sub_10000607C(v268);
      }
    }

    v113 = *(v7 + 64);
    if (*(v7 + 68) >> 14 == 2 && (*(v7 + 64) & 1) == 0)
    {
      break;
    }

    ++v263;
    v264 = v113 & 0xFFFF0000FFFFFFFFLL | (*(v7 + 68) << 32);
    if (v263 == 4)
    {
      swift_retain_n();
      v282 = v589;
      v283 = v590;
      v284 = Logger.logObject.getter();
      v285 = static os_log_type_t.default.getter();

      v286 = os_log_type_enabled(v284, v285);
      v589 = v282;
      if (v286)
      {
        LODWORD(v579) = v285;
        v590 = v284;
        v607 = v6;
        v287 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        v289 = swift_slowAlloc();
        v618 = v289;
        *v287 = v578;
        *(v287 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v618);
        *(v287 + 12) = 2082;
        v290 = *(v7 + 40);
        v614 = *(v7 + 24);
        *v615 = v290;
        *&v615[14] = *(v7 + 54);
        sub_100009DAC(&v614, &v613);
        v291 = sub_1000063E8();
        v293 = v292;
        sub_1005812D4(&v614);
        v294 = sub_10000668C(v291, v293, &v618);
        v293, v295, v296, v297, v298, v299, v300, v301;
        *(v287 + 14) = v294;
        *(v287 + 22) = 2114;
        *(v287 + 24) = v282;
        *v288 = v282;
        *(v287 + 32) = 2112;
        v302 = v282;
        v303 = [v283 objectID];
        *(v287 + 34) = v303;
        v288[1] = v303;
        *(v287 + 42) = 2082;
        v613 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, 4, 0);
        v319 = v613;
        v321 = *v613->clientIdentity;
        v320 = *&v613->clientIdentity[8];
        v322 = v321 + 1;
        if (v321 >= v320 >> 1)
        {
          sub_100026EF4((v320 > 1), v321 + 1, 1);
          v319 = v613;
        }

        *v319->clientIdentity = v322;
        v323 = v319 + 16 * v321;
        *(v323 + 4) = 0x44497463656A626FLL;
        *(v323 + 5) = 0xE800000000000000;
        v576[1] = v289;
        v613 = v319;
        v324 = *&v319->clientIdentity[8];
        if (v322 >= v324 >> 1)
        {
          sub_100026EF4((v324 > 1), v321 + 2, 1);
          v319 = v613;
        }

        *v319->clientIdentity = v321 + 2;
        v325 = v319 + 16 * v322;
        strcpy(v325 + 32, "creationDate");
        v325[45] = 0;
        *(v325 + 23) = -5120;
        v613 = v319;
        v327 = *v319->clientIdentity;
        v326 = *&v319->clientIdentity[8];
        v328 = v327 + 1;
        if (v327 >= v326 >> 1)
        {
          sub_100026EF4((v326 > 1), v327 + 1, 1);
          v319 = v613;
        }

        *v319->clientIdentity = v328;
        v329 = v319 + 16 * v327;
        *(v329 + 4) = 1701667182;
        *(v329 + 5) = 0xE400000000000000;
        v613 = v319;
        v330 = *&v319->clientIdentity[8];
        if (v328 >= v330 >> 1)
        {
          sub_100026EF4((v330 > 1), v327 + 2, 1);
          v319 = v613;
        }

        *v319->clientIdentity = v327 + 2;
        v331 = v319 + 16 * v328;
        *(v331 + 4) = 1701869940;
        *(v331 + 5) = 0xE400000000000000;
        a1 = Array.description.getter();
        v333 = v332;

        v334 = sub_10000668C(a1, v333, &v618);
        v333, v335, v336, v337, v338, v339, v340, v341;
        *(v287 + 44) = v334;
        *(v287 + 52) = 1024;
        v7 = v609;
        v342 = *(v609 + 104);

        *(v287 + 54) = v342;

        v343 = v590;
        _os_log_impl(&_mh_execute_header, v590, v579, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v287, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v6 = v607;
        v24 = &off_1008E30C8;
      }

      else
      {
      }

      v23 = 0;
      v5 = v596;
      while (1)
      {
        if (*(&off_1008E30C8 + v23 + 32) > 1u)
        {
          if (*(&off_1008E30C8 + v23 + 32) != 2)
          {
            v357 = [v5 type];
            if (v357 < -32768)
            {
              goto LABEL_188;
            }

            if (v357 >= 0x8000)
            {
              goto LABEL_189;
            }

            [v283 setType:v357];
            goto LABEL_128;
          }

          v346.super.isa = [v5 name];
          if (!v346.super.isa)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            a1 = v349;
            v346.super.isa = String._bridgeToObjectiveC()();
            a1, v350, v351, v352, v353, v354, v355, v356;
          }

          [v283 setName:v346.super.isa];
        }

        else if (*(&off_1008E30C8 + v23 + 32))
        {
          v347 = [v5 creationDate];
          v348 = v604;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v346.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v595)(v348, v605);
          [v283 setCreationDate:v346.super.isa];
        }

        else
        {
          v344 = [v5 objectID];
          a1 = [v344 uuid];

          v345 = v606;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v346.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (v602)(v345, v608);
          [v283 setIdentifier:v346.super.isa];
        }

LABEL_128:
        if (++v23 == 4)
        {
          v358 = [v283 changedValues];

          v359 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          v360 = v603;
          swift_beginAccess();
          v361 = v589;

          v362 = swift_isUniquelyReferenced_nonNull_native();
          v618 = v360[7];
          v360[7] = 0x8000000000000000;
          sub_1002C8688(v359, v361, v362);

          v360[7] = v618;
          swift_endAccess();
          if (*(v7 + 104))
          {
            v359, v363, v364, v365, v366, v367, v368, v369;
            [v283 updateChangeCount];

            goto LABEL_145;
          }

          v607 = v6;

          v370 = v361;

          v371 = Logger.logObject.getter();
          v372 = static os_log_type_t.default.getter();
          v359, v373, v374, v375, v376, v377, v378, v379;

          if (os_log_type_enabled(v371, v372))
          {
            v387 = swift_slowAlloc();
            v388 = swift_slowAlloc();
            v602 = swift_slowAlloc();
            v613 = v602;
            *v387 = v577;
            *(v387 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v613);
            *(v387 + 12) = 1024;
            *(v387 + 14) = 0;

            *(v387 + 18) = 1024;
            *(v387 + 20) = 1;
            *(v387 + 24) = 2114;
            *(v387 + 26) = v370;
            *v388 = v370;
            *(v387 + 34) = 2082;
            v590 = v370;
            v389 = v607;
            sub_1005E2810(v359);
            v391 = v390;
            v6 = v389;
            v359, v392, v393, v394, v395, v396, v397, v398;
            v399 = Array.description.getter();
            v401 = v400;
            v391, v400, v402, v403, v404, v405, v406, v407;
            v408 = sub_10000668C(v399, v401, &v613);
            v401, v409, v410, v411, v412, v413, v414, v415;
            *(v387 + 36) = v408;
            _os_log_impl(&_mh_execute_header, v371, v372, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v387, 0x2Cu);
            sub_1000050A4(v388, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            goto LABEL_145;
          }

          v359, v380, v381, v382, v383, v384, v385, v386;

LABEL_144:
          v6 = v607;
LABEL_145:
          v112 = v592;
          LOWORD(v113) = v583;
          v114 = v588;
          v65 = v591;
          v115 = v582;
          if (v588 == v583)
          {
LABEL_181:
            v112, v88, v89, v90, v91, v92, v93, v94;
            goto LABEL_182;
          }

          goto LABEL_40;
        }
      }
    }
  }

  if (qword_1009367A0 != -1)
  {
    goto LABEL_197;
  }

LABEL_178:
  sub_100006654(v593, qword_100950D98);
  v446 = Logger.logObject.getter();
  v447 = static os_log_type_t.error.getter();
  v448 = os_log_type_enabled(v446, v447);
  v449 = v596;
  if (v448)
  {
    v450 = swift_slowAlloc();
    v613 = swift_slowAlloc();
    *v450 = v580;
    v458 = sub_100729CB0(1, v451, v452, v453, v454, v455, v456, v457);
    v460 = v459;
    v461 = sub_10000668C(v458, v459, &v613);
    v460, v462, v463, v464, v465, v466, v467, v468;
    *(v450 + 4) = v461;
    *(v450 + 12) = 2082;
    v476 = sub_100729CB0(v113, v469, v470, v471, v472, v473, v474, v475);
    v478 = v477;
    v479 = sub_10000668C(v476, v477, &v613);
    v478, v480, v481, v482, v483, v484, v485, v486;
    *(v450 + 14) = v479;
    _os_log_impl(&_mh_execute_header, v446, v447, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v450, 0x16u);
    swift_arrayDestroy();
  }

  v487 = v592;
  v488 = objc_opt_self();
  v489 = String._bridgeToObjectiveC()();
  sub_100729CB0(1, v490, v491, v492, v493, v494, v495, v496);
  v498 = v497;
  v499 = String._bridgeToObjectiveC()();
  v498, v500, v501, v502, v503, v504, v505, v506;
  sub_100729CB0(v113, v507, v508, v509, v510, v511, v512, v513);
  v515 = v514;
  v516 = String._bridgeToObjectiveC()();
  v515, v517, v518, v519, v520, v521, v522, v523;
  [v488 unauthorizedErrorWithMissingEntitlement:v489 requestedAccessLevel:v499 currentAccesslevel:v516];

  swift_willThrow();
  v487, v524, v525, v526, v527, v528, v529, v530;

  v591, v531, v532, v533, v534, v535, v536, v537;
  v538 = v590;
}

void sub_100614E10(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v670 = &v642 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v669 = &v642 - v12;
  v13 = type metadata accessor for UUID();
  v666 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = &v642 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = &v642 - v19;
  __chkstk_darwin(v21, v22);
  v24 = &v642 - v23;
  v25 = a3[3];
  v667 = a3[2];
  v674 = v25;
  v668 = a3[4];
  v675 = v3;
  v26 = *(v3 + 72);
  v673 = a2;
  *&v678.clientIdentity[8] = v26;
  *&v678.clientIdentity[16] = a2;
  *v678.clientIdentity = &v678.clientIdentity[16];

  v27 = v677;
  v33 = sub_100759CB4(sub_1006B021C, &v678, a1, v28, v29, v30, v31, v32);
  v676 = v27;
  if (!v27)
  {
    v34 = v33;
    v661 = v26;
    v664 = v24;
    v662 = v20;
    v659 = v16;
    v671 = v13;
    v665 = a3;
    if (qword_100936008 != -1)
    {
      goto LABEL_136;
    }

    while (1)
    {
      v653 = type metadata accessor for Logger();
      v35 = sub_100006654(v653, qword_100945730);

      v36 = v674;

      v672 = v35;
      v37 = Logger.logObject.getter();
      LOBYTE(v38) = static os_log_type_t.info.getter();
      v36, v39, v40, v41, v42, v43, v44, v45;
      v46 = os_log_type_enabled(v37, v38);
      v47 = v34 >> 62;
      v677 = v34;
      v48 = v676;
      v49 = v676;
      if (v46)
      {
        v48 = swift_slowAlloc();
        v660 = swift_slowAlloc();
        *&v678.clientIdentity[16] = v660;
        *v48 = 136446978;
        *(v48 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v678.clientIdentity[16]);
        *(v48 + 12) = 2048;
        if (v47)
        {
          goto LABEL_141;
        }

        v57 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        *(v48 + 14) = v57;
        v34, v50, v51, v52, v53, v54, v55, v56;
        *(v48 + 22) = 2082;
        type metadata accessor for REMCDManualSortHint();
        v58 = [swift_getObjCClassFromMetadata() description];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v34 = v677;
        v62 = sub_10000668C(v59, v61, &v678.clientIdentity[16]);
        v61, v63, v64, v65, v66, v67, v68, v69;
        *(v48 + 24) = v62;
        *(v48 + 32) = 2082;
        *(v48 + 34) = sub_10000668C(v667, v674, &v678.clientIdentity[16]);
        _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v48, 0x2Au);
        swift_arrayDestroy();

        v48 = v49;
      }

      else
      {

        v34, v70, v71, v72, v73, v74, v75, v76;
      }

      v77 = v47 ? _CocoaArrayWrapper.endIndex.getter() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v78 = &_swiftEmptyArrayStorage;
      v663 = v47;
      if (!v77)
      {
        break;
      }

      *&v678.clientIdentity[16] = &_swiftEmptyArrayStorage;
      v37 = &v678.clientIdentity[16];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v77 < 0)
      {
        goto LABEL_140;
      }

      v47 = 0;
      v79 = v34 & 0xC000000000000001;
      v674 = (v34 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v80 = (v47 + 1);
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v79)
        {
          v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v47 >= *v674->clientIdentity)
          {
            goto LABEL_135;
          }

          v81 = *&v34->clientIdentity[8 * v47 + 16];
        }

        v82 = v81;
        sub_1005E5350([v81 remObjectID]);
        if (v49)
        {

          v677, v84, v85, v86, v87, v88, v89, v90;

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v47;
        v34 = v677;
        if (v80 == v77)
        {
          v78 = *&v678.clientIdentity[16];
          v48 = 0;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      swift_once();
    }

LABEL_21:
    v657 = v78;
    v83 = *(v675 + 96);
    if (v83 <= 1)
    {
      if (v83)
      {
        if (v83 != 1)
        {
LABEL_144:
          v640 = sub_1001F67C8(&_swiftEmptyArrayStorage);
          v641 = sub_1001F67C8(&_swiftEmptyArrayStorage);
          sub_10054573C("unknown mode", 12, 2, v640, v641);
          __break(1u);
          return;
        }

        v676 = v48;
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v678.clientIdentity[16] = v47;
          *v128 = 136315138;
          v129 = [type metadata accessor for REMCDManualSortHint() cdEntityName];
          v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v132 = v131;

          v133 = sub_10000668C(v130, v132, &v678.clientIdentity[16]);
          v132, v134, v135, v136, v137, v138, v139, v140;
          *(v128 + 4) = v133;
          _os_log_impl(&_mh_execute_header, v126, v127, "Skipping fetch during upsert {CDType: %s}", v128, 0xCu);
          sub_10000607C(v47);

          v34 = v677;
        }

        v106 = v664;
        v125 = v666;
        v38 = sub_10038F8AC(&_swiftEmptyArrayStorage);
LABEL_37:
        if (v663)
        {
          v37 = _CocoaArrayWrapper.endIndex.getter();
          if (!v37)
          {
LABEL_121:
            v34, v109, v110, v111, v112, v113, v114, v115;
            v38, v448, v449, v450, v451, v452, v453, v454;
            v124 = v657;
            goto LABEL_122;
          }
        }

        else
        {
          v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v37)
          {
            goto LABEL_121;
          }
        }

        v49 = 0;
        v652 = v34 & 0xC000000000000001;
        v651 = v34 & 0xFFFFFFFFFFFFFF8;
        v663 = (v125 + 8);
        v647 = (v125 + 56);
        v646 = (v125 + 48);
        *&v116 = 136446978;
        v643 = v116;
        *&v116 = 136446210;
        v645 = v116;
        *&v116 = 136447490;
        v644 = v116;
        *&v116 = 136447234;
        v642 = v116;
        v667 = v38;
        v650 = v37;
        while (1)
        {
          if (v652)
          {
            v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v47 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              goto LABEL_138;
            }
          }

          else
          {
            if (v49 >= *(v651 + 16))
            {
              goto LABEL_139;
            }

            v141 = *&v34->clientIdentity[8 * v49 + 16];
            v47 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              v57 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_6;
            }
          }

          v142 = v141;
          v143 = [(RDXPCStorePerformer *)v142 remObjectID];
          v144 = v676;
          v666 = sub_1005E5350(v143);
          if (v144)
          {
            v34, v145, v146, v147, v148, v149, v150, v151;
            v667, v496, v497, v498, v499, v500, v501, v502;
            v657, v503, v504, v505, v506, v507, v508, v509;

            return;
          }

          v654 = v47;
          v655 = v49;
          v674 = v142;

          v656 = *v673->clientIdentity;
          v152 = [v656 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v676 = UUID.uuidString.getter();
          v154 = v153;
          v155 = *v663;
          v156 = v671;
          (*v663)(v106, v671);
          v157 = [objc_opt_self() localInternalAccountID];
          v158 = [v157 uuid];

          v159 = v662;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v160 = UUID.uuidString.getter();
          v162 = v161;
          v660 = v155;
          (v155)(v159, v156);
          v658 = v154;
          if (v676 == v160 && v154 == v162)
          {
            break;
          }

          v172 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v162, v173, v174, v175, v176, v177, v178, v179;
          v170 = 0;
          v171 = v666;
          if (v172)
          {
            goto LABEL_50;
          }

          v182 = v661;
          v180 = v675;
          v185 = v667;
          v183 = v671;
LABEL_57:
          v186 = [(RDXPCStorePerformer *)v674 remObjectID];
          v187 = v186;
          if (*(v182 + 16))
          {
            sub_10002B924(v186);
          }

          v188._rawValue = &off_1008E0BF0;
          v196 = sub_1005F6E20(v188, type metadata accessor for REMCDManualSortHint);
          v197 = *v185->clientIdentity;
          v676 = 0;
          if (v197)
          {
            v198 = sub_100393C74();
            if (v189)
            {
              v199 = v198;
              v658, v189, v190, v191, v192, v193, v194, v195;
              v200 = v185;
              v201 = *(*&v185->clientIdentity[40] + 8 * v199);
              goto LABEL_89;
            }
          }

          v202 = v171;
          v203 = v185;
          if (v196 == 2)
          {
            goto LABEL_133;
          }

          if (v196)
          {
            v204 = 0x6465696669646F6DLL;
          }

          else
          {
            v204 = 0x44497463656A626FLL;
          }

          if (v196)
          {
            v205 = 0xEC00000065746144;
          }

          else
          {
            v205 = 0xE800000000000000;
          }

          v206 = 0xE800000000000000;
          if (v204 != 0x44497463656A626FLL || v205 != 0xE800000000000000)
          {
            v222 = _stringCompareWithSmolCheck(_:_:expecting:)();
            0xE800000000000000, v223, v224, v225, v226, v227, v228, v229;
            v205, v230, v231, v232, v233, v234, v235, v236;
            if (v222)
            {
              goto LABEL_76;
            }

            v206 = 0xEC00000065746144;
            if (v204 != 0x6465696669646F6DLL || v205 != 0xEC00000065746144)
            {
              v237 = _stringCompareWithSmolCheck(_:_:expecting:)();
              0xEC00000065746144, v238, v239, v240, v241, v242, v243, v244;
              v205, v245, v246, v247, v248, v249, v250, v251;
              if ((v237 & 1) == 0)
              {
LABEL_133:
                v658, v189, v190, v191, v192, v193, v194, v195;
                v677, v619, v620, v621, v622, v623, v624, v625;
                v203, v626, v627, v628, v629, v630, v631, v632;
                v657, v633, v634, v635, v636, v637, v638, v639;
                [objc_opt_self() noSuchObjectErrorWithObjectID:v202];
                swift_willThrow();

                return;
              }

LABEL_76:
              v658, v189, v190, v191, v192, v193, v194, v195;
              v207 = v668;
              goto LABEL_77;
            }
          }

          v207 = v668;
          v658, v189, v190, v191, v192, v193, v194, v195;
          v206, v208, v209, v210, v211, v212, v213, v214;
          v205, v215, v216, v217, v218, v219, v220, v221;
LABEL_77:
          v252 = *(v180 + 88);
          type metadata accessor for REMCDManualSortHint();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v254 = [ObjCClassFromMetadata entity];
          v255 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v254 insertIntoManagedObjectContext:v252];
          v256 = v207;
          v257 = v255;
          [v252 assignObject:v257 toPersistentStore:v256];

          v258 = v257;
          v259 = [v202 uuid];
          v260 = v669;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v647)(v260, 0, 1, v183);
          v261 = v670;
          sub_10018E470(v260, v670);
          isa = 0;
          if ((*v646)(v261, 1, v183) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (v660)(v261, v183);
          }

          [v258 setIdentifier:isa];

          sub_1000050A4(v260, &unk_100939D90, "8\n\r");

          v263 = v202;
          v201 = v258;
          v264 = v180;
          v265 = Logger.logObject.getter();
          v266 = static os_log_type_t.default.getter();

          v267 = os_log_type_enabled(v265, v266);
          v170 = v676;
          if (v267)
          {
            v268 = swift_slowAlloc();
            v658 = v201;
            v269 = v268;
            v270 = swift_slowAlloc();
            v679 = swift_slowAlloc();
            *v269 = v643;
            *(v269 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v679);
            *(v269 + 12) = 2082;
            v271 = *(v264 + 40);
            *&v678.coreSuggestionsHandler[34] = *(v264 + 24);
            *&v678.publicCloudDatabaseController[10] = v271;
            *&v678.publicCloudDatabaseController[24] = *(v264 + 54);
            sub_100009DAC(&v678.coreSuggestionsHandler[34], &v678.clientIdentity[16]);
            v272 = sub_1000063E8();
            v274 = v273;
            sub_1005812D4(&v678.coreSuggestionsHandler[34]);
            v275 = sub_10000668C(v272, v274, &v679);
            v274, v276, v277, v278, v279, v280, v281, v282;
            *(v269 + 14) = v275;
            *(v269 + 22) = 2114;
            *(v269 + 24) = v263;
            *v270 = v263;
            *(v269 + 32) = 2112;
            v283 = v263;
            v284 = [(RDXPCStorePerformer *)v658 objectID];
            *(v269 + 34) = v284;
            v270[1] = v284;
            _os_log_impl(&_mh_execute_header, v265, v266, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v269, 0x2Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v201 = v658;
          }

          v285 = v665;
          swift_beginAccess();
          v286 = v285[6];
          v180 = v675;
          v200 = v667;
          if ((v286 & 0xC000000000000001) != 0)
          {
            if (v286 < 0)
            {
              v287 = v285[6];
            }

            else
            {
              v287 = v286 & 0xFFFFFFFFFFFFFF8;
            }

            v288 = v263;
            v289 = __CocoaDictionary.count.getter();
            if (__OFADD__(v289, 1))
            {
              __break(1u);
LABEL_143:
              swift_once();
LABEL_125:
              v455 = v201;
              sub_100006654(v653, qword_100950D98);
              v456 = Logger.logObject.getter();
              v457 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v456, v457))
              {
                v458 = swift_slowAlloc();
                *&v678.clientIdentity[16] = swift_slowAlloc();
                *v458 = 136446466;
                v466 = sub_100729CB0(1, v459, v460, v461, v462, v463, v464, v465);
                v468 = v467;
                v469 = v200;
                v470 = sub_10000668C(v466, v467, &v678.clientIdentity[16]);
                v468, v471, v472, v473, v474, v475, v476, v477;
                *(v458 + 4) = v470;
                *(v458 + 12) = 2082;
                v485 = sub_100729CB0(v263, v478, v479, v480, v481, v482, v483, v484);
                v487 = v486;
                v488 = sub_10000668C(v485, v486, &v678.clientIdentity[16]);
                v487, v489, v490, v491, v492, v493, v494, v495;
                *(v458 + 14) = v488;
                _os_log_impl(&_mh_execute_header, v456, v457, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v458, 0x16u);
                swift_arrayDestroy();
              }

              else
              {

                v469 = v200;
              }

              v510 = objc_opt_self();
              v511 = String._bridgeToObjectiveC()();
              sub_100729CB0(1, v512, v513, v514, v515, v516, v517, v518);
              v520 = v519;
              v521 = String._bridgeToObjectiveC()();
              v520, v522, v523, v524, v525, v526, v527, v528;
              sub_100729CB0(v263, v529, v530, v531, v532, v533, v534, v535);
              v537 = v536;
              v538 = String._bridgeToObjectiveC()();
              v537, v539, v540, v541, v542, v543, v544, v545;
              [v510 unauthorizedErrorWithMissingEntitlement:v511 requestedAccessLevel:v521 currentAccesslevel:v538];

              swift_willThrow();
              v677, v546, v547, v548, v549, v550, v551, v552;
              v469, v553, v554, v555, v556, v557, v558, v559;

LABEL_132:
              v657, v560, v561, v562, v563, v564, v565, v566;
              return;
            }

            v285[6] = sub_10021CDBC(v287, v289 + 1);
          }

          else
          {
            v290 = v263;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v679 = v285[6];
          sub_1002C8398(v201, v263, isUniquelyReferenced_nonNull_native);
          v285[6] = v679;

          swift_endAccess();
LABEL_89:
          if (((*(v180 + 64) | (*(v180 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
          {
            v292 = v170;
            v293 = Logger.logObject.getter();
            v294 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v293, v294))
            {
              v295 = swift_slowAlloc();
              v296 = swift_slowAlloc();
              v658 = v201;
              v297 = v296;
              *&v678.clientIdentity[16] = v296;
              *v295 = v645;
              LOBYTE(v679) = 0;
              v298 = String.init<A>(describing:)();
              v300 = v299;
              v301 = v200;
              v302 = sub_10000668C(v298, v299, &v678.clientIdentity[16]);
              v300, v303, v304, v305, v306, v307, v308, v309;
              *(v295 + 4) = v302;
              v200 = v301;
              _os_log_impl(&_mh_execute_header, v293, v294, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v295, 0xCu);
              sub_10000607C(v297);
              v201 = v658;
            }

            v170 = v292;
          }

          v263 = *(v180 + 64);
          if (*(v180 + 68) >> 14 == 2 && (v263 & 1) == 0)
          {
            goto LABEL_124;
          }

          if ((v263 & 0xFFFF000000000001 | (*(v180 + 68) << 32) & 0xFFFFC00000000001) == 0x800000000000)
          {
            v310 = v170;
            v311 = Logger.logObject.getter();
            v312 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v311, v312))
            {
              v313 = swift_slowAlloc();
              v314 = swift_slowAlloc();
              v658 = v201;
              v315 = v314;
              *&v678.clientIdentity[16] = v314;
              *v313 = v645;
              LOBYTE(v679) = 1;
              v316 = String.init<A>(describing:)();
              v318 = v317;
              v319 = v200;
              v320 = sub_10000668C(v316, v317, &v678.clientIdentity[16]);
              v318, v321, v322, v323, v324, v325, v326, v327;
              *(v313 + 4) = v320;
              v200 = v319;
              _os_log_impl(&_mh_execute_header, v311, v312, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v313, 0xCu);
              sub_10000607C(v315);
              v201 = v658;
            }

            v170 = v310;
          }

          if (*(v180 + 68) >> 14 == 2)
          {
            LODWORD(v263) = *(v180 + 64);
            if ((v263 & 1) == 0)
            {
LABEL_124:
              if (qword_1009367A0 == -1)
              {
                goto LABEL_125;
              }

              goto LABEL_143;
            }
          }

          swift_retain_n();
          v328 = v666;
          v329 = v201;
          v330 = v180;
          v331 = Logger.logObject.getter();
          v332 = static os_log_type_t.default.getter();

          v333 = os_log_type_enabled(v331, v332);
          v666 = v328;
          if (v333)
          {
            v649 = v332;
            v334 = swift_slowAlloc();
            v335 = v329;
            v336 = swift_slowAlloc();
            v648 = swift_slowAlloc();
            v679 = v648;
            *v334 = v644;
            *(v334 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v679);
            *(v334 + 12) = 2082;
            v337 = *(v330 + 40);
            *&v678.dataAccessRequestsWriter[2] = *(v330 + 24);
            *&v678.coreSuggestionsHandler[2] = v337;
            *&v678.coreSuggestionsHandler[16] = *(v330 + 54);
            sub_100009DAC(&v678.dataAccessRequestsWriter[2], &v678.clientIdentity[16]);
            v338 = sub_1000063E8();
            v340 = v339;
            sub_1005812D4(&v678.dataAccessRequestsWriter[2]);
            v341 = sub_10000668C(v338, v340, &v679);
            v340, v342, v343, v344, v345, v346, v347, v348;
            *(v334 + 14) = v341;
            *(v334 + 22) = 2114;
            *(v334 + 24) = v328;
            *v336 = v328;
            *(v334 + 32) = 2112;
            v349 = v328;
            v658 = v335;
            v350 = [(RDXPCStorePerformer *)v335 objectID];
            *(v334 + 34) = v350;
            v336[1] = v350;
            *(v334 + 42) = 2082;
            *&v678.clientIdentity[16] = &_swiftEmptyArrayStorage;
            sub_100026EF4(0, 2, 0);
            v351 = *&v678.clientIdentity[16];
            v353 = *(*&v678.clientIdentity[16] + 16);
            v352 = *(*&v678.clientIdentity[16] + 24);
            v354 = v352 >> 1;
            v355 = v353 + 1;
            if (v352 >> 1 <= v353)
            {
              sub_100026EF4((v352 > 1), v353 + 1, 1);
              v351 = *&v678.clientIdentity[16];
              v352 = *(*&v678.clientIdentity[16] + 24);
              v354 = v352 >> 1;
            }

            *(v351 + 16) = v355;
            v356 = v351 + 16 * v353;
            *(v356 + 32) = 0x44497463656A626FLL;
            *(v356 + 40) = 0xE800000000000000;
            *&v678.clientIdentity[16] = v351;
            if (v354 <= v355)
            {
              sub_100026EF4((v352 > 1), v353 + 2, 1);
              v351 = *&v678.clientIdentity[16];
            }

            *(v351 + 16) = v353 + 2;
            v357 = v351 + 16 * v355;
            strcpy((v357 + 32), "modifiedDate");
            *(v357 + 45) = 0;
            *(v357 + 46) = -5120;
            v358 = Array.description.getter();
            v360 = v359;

            v361 = sub_10000668C(v358, v360, &v679);
            v360, v362, v363, v364, v365, v366, v367, v368;
            *(v334 + 44) = v361;
            *(v334 + 52) = 1024;
            v369 = v675;
            LODWORD(v361) = *(v675 + 104);

            *(v334 + 54) = v361;

            _os_log_impl(&_mh_execute_header, v331, v649, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v334, 0x3Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v48 = v369;
            v170 = v676;
            v329 = v658;
          }

          else
          {

            v48 = v330;
          }

          v370 = v656;
          v371 = [v656 uuid];
          v372 = v659;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v373 = UUID.uuidString.getter();
          v375 = v374;
          (v660)(v372, v671);
          v376 = sub_1003DA134(v373, v375);
          v38 = v667;
          if (v170)
          {
            v375, v377, v378, v379, v380, v381, v382, v383;
            v677, v605, v606, v607, v608, v609, v610, v611;

            v38, v612, v613, v614, v615, v616, v617, v618;
            goto LABEL_132;
          }

          v384 = v376;
          v375, v377, v378, v379, v380, v381, v382, v383;
          if (!v384)
          {
            v567 = v674;
            v677, v385, v386, v387, v388, v389, v390, v391;
            v38, v568, v569, v570, v571, v572, v573, v574;
            v657, v575, v576, v577, v578, v579, v580, v581;
            v582 = objc_opt_self();
            *&v678.clientIdentity[16] = 0;
            *&v678.clientIdentity[24] = 0xE000000000000000;
            _StringGuts.grow(_:)(97);
            v583._countAndFlagsBits = 0xD00000000000005FLL;
            v583._object = 0x80000001007FE6B0;
            String.append(_:)(v583);
            v584 = [v370 description];
            v585 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v587 = v586;

            v588._countAndFlagsBits = v585;
            v588._object = v587;
            String.append(_:)(v588);
            v587, v589, v590, v591, v592, v593, v594, v595;
            v596 = *&v678.clientIdentity[24];
            v597 = String._bridgeToObjectiveC()();
            v596, v598, v599, v600, v601, v602, v603, v604;
            [v582 internalErrorWithDebugDescription:v597];

            swift_willThrow();
            return;
          }

          sub_1004A963C(v674, v329, v384);

          v392 = v329;
          v393 = [(RDXPCStorePerformer *)v392 changedValues];
          v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v394 = v665;
          swift_beginAccess();
          v395 = v666;

          v396 = swift_isUniquelyReferenced_nonNull_native();
          v679 = v394[7];
          v394[7] = 0x8000000000000000;
          sub_1002C8688(v47, v395, v396);

          v394[7] = v679;
          swift_endAccess();
          if (*(v48 + 104))
          {
            v676 = 0;
            v47, v397, v398, v399, v400, v401, v402, v403;
            [(RDXPCStorePerformer *)v392 updateChangeCount];
          }

          else
          {
            v404 = v38;

            v405 = v395;

            v406 = Logger.logObject.getter();
            v407 = static os_log_type_t.default.getter();
            v47, v408, v409, v410, v411, v412, v413, v414;

            if (!os_log_type_enabled(v406, v407))
            {
              v676 = 0;
              v47, v415, v416, v417, v418, v419, v420, v421;

              v106 = v664;
              v38 = v404;
              goto LABEL_116;
            }

            v422 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v666 = swift_slowAlloc();
            *&v678.clientIdentity[16] = v666;
            *v422 = v642;
            *(v422 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v678.clientIdentity[16]);
            *(v422 + 12) = 1024;
            *(v422 + 14) = 0;

            *(v422 + 18) = 1024;
            *(v422 + 20) = 0;
            *(v422 + 24) = 2114;
            *(v422 + 26) = v405;
            *v48 = v405;
            *(v422 + 34) = 2082;
            v660 = v405;
            sub_1005E2810(v47);
            v424 = v423;
            v676 = 0;
            v47, v425, v426, v427, v428, v429, v430, v431;
            v432 = Array.description.getter();
            v47 = v433;
            v424, v433, v434, v435, v436, v437, v438, v439;
            v440 = sub_10000668C(v432, v47, &v678.clientIdentity[16]);
            v47, v441, v442, v443, v444, v445, v446, v447;
            *(v422 + 36) = v440;
            _os_log_impl(&_mh_execute_header, v406, v407, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v422, 0x2Cu);
            sub_1000050A4(v48, &unk_100938E70, &unk_100797230);
            v38 = v667;

            swift_arrayDestroy();
          }

          v106 = v664;
LABEL_116:
          v49 = v655 + 1;
          v37 = v650;
          v34 = v677;
          if (v654 == v650)
          {
            goto LABEL_121;
          }
        }

        v162, v163, v164, v165, v166, v167, v168, v169;
        v170 = 0;
        v171 = v666;
LABEL_50:
        v180 = v675;
        v181 = *(v675 + 68);
        v182 = v661;
        v183 = v671;
        if (v181 >> 14 >= 2)
        {
          v185 = v667;
          if (v181 >> 14 == 2)
          {
            v184 = *(v675 + 64) | (*(v675 + 68) << 32);
          }

          else
          {
            v184 = 0x7FFFFFFFLL;
          }
        }

        else
        {
          v184 = 2147483519;
          v185 = v667;
        }

        sub_100009A40(2, v184);
        goto LABEL_57;
      }
    }

    else if ((v83 - 2) >= 3 && v83 != 4499 && v83 != 4599)
    {
      goto LABEL_144;
    }

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v678.clientIdentity[16] = v47;
      *v93 = 136315138;
      v94 = [type metadata accessor for REMCDManualSortHint() cdEntityName];
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      v98 = sub_10000668C(v95, v97, &v678.clientIdentity[16]);
      v97, v99, v100, v101, v102, v103, v104, v105;
      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v91, v92, "Performing fetch during upsert {CDType: %s}", v93, 0xCu);
      sub_10000607C(v47);

      v34 = v677;
    }

    v106 = v664;
    v107 = v657;
    v108 = sub_1006603FC(v657, v665);
    v676 = v48;
    if (v48)
    {
      v107, v109, v110, v111, v112, v113, v114, v115;
      v124 = v34;
LABEL_122:
      v124, v117, v118, v119, v120, v121, v122, v123;
      return;
    }

    v38 = v108;
    v125 = v666;
    goto LABEL_37;
  }
}

void sub_100616F70(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v543 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v541 = &v524 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v540 = &v524 - v12;
  v553 = type metadata accessor for UUID();
  v547 = *(v553 - 8);
  __chkstk_darwin(v553, v13);
  v542 = &v524 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v550 = &v524 - v17;
  v19 = *(a3 + 2);
  v18 = *(a3 + 3);
  v539 = *(a3 + 4);
  if (qword_100936008 != -1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v534 = type metadata accessor for Logger();
    v20 = sub_100006654(v534, qword_100945730);

    v554 = v20;
    v21 = Logger.logObject.getter();
    LOBYTE(v22) = static os_log_type_t.info.getter();
    v18, v23, v24, v25, v26, v27, v28, v29;
    v30 = os_log_type_enabled(v21, v22);
    v31 = a1 >> 62;
    v552 = a3;
    v557 = a1;
    v551 = (a1 >> 62);
    if (v30)
    {
      v549 = v19;
      v555 = v4;
      v19 = swift_slowAlloc();
      v558[0] = swift_slowAlloc();
      *v19 = 136446978;
      *(v19 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v558);
      *(v19 + 6) = 2048;
      if (v31)
      {
        goto LABEL_141;
      }

      v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      *(v19 + 14) = v39;
      a1, v32, v33, v34, v35, v36, v37, v38;
      *(v19 + 11) = 2082;
      sub_1000060C8(0, &qword_100940370, off_1008D4150);
      v40 = [swift_getObjCClassFromMetadata() description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      a1 = v557;
      v44 = sub_10000668C(v41, v43, v558);
      v43, v45, v46, v47, v48, v49, v50, v51;
      v19[3] = v44;
      *(v19 + 16) = 2082;
      *(v19 + 34) = sub_10000668C(v549, v18, v558);
      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v19, 0x2Au);
      swift_arrayDestroy();

      v4 = v555;
      a3 = v552;
      v31 = v551;
    }

    else
    {

      a1, v52, v53, v54, v55, v56, v57, v58;
    }

    v22 = v556;
    v18 = v31 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      break;
    }

    v558[0] = &_swiftEmptyArrayStorage;
    v21 = v558;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v18 < 0)
    {
      goto LABEL_139;
    }

    v19 = v4;
    v59 = 0;
    v60 = a1 & 0xC000000000000001;
    v555 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v4 = (v59 + 1);
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v60)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v59 >= *(v555 + 16))
        {
          goto LABEL_132;
        }

        v61 = *&a1->clientIdentity[8 * v59 + 16];
      }

      v62 = v61;
      sub_1005E3810([v61 remObjectID], &qword_100940370, off_1008D4150);
      if (v19)
      {

        return;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a3 = *(v558[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v59;
      a1 = v557;
      if (v4 == v18)
      {
        v538 = v558[0];
        v4 = 0;
        v22 = v556;
        a3 = v552;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    swift_once();
  }

  v538 = &_swiftEmptyArrayStorage;
LABEL_21:
  v63 = v22[12];
  if (v63 > 1)
  {
    if ((v63 - 2) >= 3 && v63 != 4499 && v63 != 4599)
    {
      goto LABEL_142;
    }

    goto LABEL_28;
  }

  if (!v63)
  {
LABEL_28:
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v558[0] = v67;
      *v66 = 136315138;
      v68 = a3;
      v69 = [objc_opt_self() cdEntityName];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = sub_10000668C(v19, v71, v558);
      v73 = v71;
      v22 = v556;
      v73, v74, v75, v76, v77, v78, v79, v80;
      *(v66 + 4) = v72;
      a3 = v68;
      _os_log_impl(&_mh_execute_header, v64, v65, "Performing fetch during upsert {CDType: %s}", v66, 0xCu);
      sub_10000607C(v67);
      a1 = v557;
    }

    v81 = v551;
    v82 = v538;
    v83 = sub_100660CF4(v538, a3);
    if (v4)
    {
      v82, v84, v85, v86, v87, v88, v89, v90;
      return;
    }

    goto LABEL_36;
  }

  if (v63 == 1)
  {
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v558[0] = v95;
      *v94 = 136315138;
      v96 = [objc_opt_self() cdEntityName];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;

      a3 = sub_10000668C(v19, v98, v558);
      v99 = v98;
      v22 = v556;
      v99, v100, v101, v102, v103, v104, v105, v106;
      *(v94 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v92, v93, "Skipping fetch during upsert {CDType: %s}", v94, 0xCu);
      sub_10000607C(v95);
      a1 = v557;
    }

    v81 = v551;
    v83 = sub_10038F8C0(&_swiftEmptyArrayStorage);
LABEL_36:
    v107 = v83;
    if (v81)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
LABEL_120:
        v107, v84, v85, v86, v87, v88, v89, v90;
        v538, v390, v391, v392, v393, v394, v395, v396;
        return;
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_120;
      }
    }

    v108 = 0;
    v537 = a1 & 0xC000000000000001;
    v536 = a1 & 0xFFFFFFFFFFFFFF8;
    v549 = (v547 + 8);
    v533 = v547 + 56;
    v532 = (v547 + 48);
    *&v91 = 136446978;
    v528 = v91;
    *&v91 = 136446210;
    v527 = v91;
    *&v91 = 136447490;
    v526 = v91;
    *&v91 = 136447234;
    v524 = v91;
    *&v91 = 136446466;
    v525 = v91;
    v548 = v107;
    v535 = v18;
    while (1)
    {
      if (v537)
      {
        v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a3 = (v108 + 1);
        if (__OFADD__(v108, 1))
        {
          goto LABEL_133;
        }
      }

      else
      {
        if (v108 >= *(v536 + 16))
        {
          goto LABEL_134;
        }

        v109 = *&a1->clientIdentity[8 * v108 + 16];
        a3 = (v108 + 1);
        if (__OFADD__(v108, 1))
        {
          goto LABEL_133;
        }
      }

      v110 = v109;
      v111 = sub_1005E3810([v110 remObjectID], &qword_100940370, off_1008D4150);
      if (v4)
      {
        v107, v112, v113, v114, v115, v116, v117, v118;
        v538, v487, v488, v489, v490, v491, v492, v493;
LABEL_127:

        return;
      }

      v547 = v111;
      v555 = 0;
      v544 = a3;
      v545 = v108;
      v551 = v110;

      v119 = [*(v543 + 16) uuid];
      v120 = v550;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v121 = UUID.uuidString.getter();
      v123 = v122;
      v124 = *v549;
      v125 = v553;
      (*v549)(v120, v553);
      v126 = [objc_opt_self() localInternalAccountID];
      v127 = [v126 uuid];

      v128 = v542;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v129 = UUID.uuidString.getter();
      v131 = v130;
      v546 = v124;
      v124(v128, v125);
      v139 = v123;
      if (v121 == v129 && v123 == v131)
      {
        break;
      }

      v140 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v131, v141, v142, v143, v144, v145, v146, v147;
      if (v140)
      {
        goto LABEL_52;
      }

      v107 = v548;
      v4 = v555;
      v19 = v547;
LABEL_59:
      v158._rawValue = &off_1008E1090;
      v166 = sub_1005F716C(v158, &qword_100940370, off_1008D4150);
      if (*(v107 + 16))
      {
        v167 = sub_100393C74();
        if (v159)
        {
          v168 = v167;
          v139, v159, v160, v161, v162, v163, v164, v165;
          v169 = *(*(v107 + 56) + 8 * v168);
          a3 = v19;
          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v558[0] = v173;
            *v172 = v525;
            *(v172 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v558);
            *(v172 + 12) = 2114;
            *(v172 + 14) = a3;
            *v19 = a3;
            a3 = a3;
            _os_log_impl(&_mh_execute_header, v170, v171, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v172, 0x16u);
            sub_1000050A4(v19, &unk_100938E70, &unk_100797230);

            sub_10000607C(v173);
            v22 = v556;
          }

          else
          {
          }

          a1 = v557;
          goto LABEL_43;
        }
      }

      if (v166 == 2)
      {
        goto LABEL_128;
      }

      if (v166)
      {
        v174 = 0x746E657665;
      }

      else
      {
        v174 = 0x44497463656A626FLL;
      }

      if (v166)
      {
        v175 = 0xE500000000000000;
      }

      else
      {
        v175 = 0xE800000000000000;
      }

      v176 = 0xE800000000000000;
      if (v174 != 0x44497463656A626FLL || v175 != 0xE800000000000000)
      {
        v192 = _stringCompareWithSmolCheck(_:_:expecting:)();
        0xE800000000000000, v193, v194, v195, v196, v197, v198, v199;
        v175, v200, v201, v202, v203, v204, v205, v206;
        if (v192)
        {
          goto LABEL_77;
        }

        v176 = 0xE500000000000000;
        if (v174 != 0x746E657665 || v175 != 0xE500000000000000)
        {
          v207 = _stringCompareWithSmolCheck(_:_:expecting:)();
          0xE500000000000000, v208, v209, v210, v211, v212, v213, v214;
          v175, v215, v216, v217, v218, v219, v220, v221;
          if ((v207 & 1) == 0)
          {
LABEL_128:
            v538, v159, v160, v161, v162, v163, v164, v165;
            v139, v494, v495, v496, v497, v498, v499, v500;
            v107, v501, v502, v503, v504, v505, v506, v507;
            [objc_opt_self() noSuchObjectErrorWithObjectID:v19];
            swift_willThrow();

LABEL_130:
            return;
          }

LABEL_77:
          v139, v159, v160, v161, v162, v163, v164, v165;
          v177 = v540;
          goto LABEL_78;
        }
      }

      v177 = v540;
      v139, v159, v160, v161, v162, v163, v164, v165;
      v176, v178, v179, v180, v181, v182, v183, v184;
      v175, v185, v186, v187, v188, v189, v190, v191;
LABEL_78:
      v222 = v22[11];
      sub_1000060C8(0, &qword_100940370, off_1008D4150);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v224 = [ObjCClassFromMetadata entity];
      v225 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v224 insertIntoManagedObjectContext:v222];
      v226 = v539;
      [v222 assignObject:v225 toPersistentStore:v226];

      v227 = v225;
      v228 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v229 = v553;
      (*v533)(v177, 0, 1, v553);
      v230 = v541;
      sub_10018E470(v177, v541);
      LODWORD(v229) = (*v532)(v230, 1, v229);
      v231 = v227;
      isa = 0;
      if (v229 != 1)
      {
        v233 = v541;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v546(v233, v553);
      }

      [v231 setIdentifier:{isa, v524}];

      sub_1000050A4(v177, &unk_100939D90, "8\n\r");
      v19 = v19;

      v234 = v231;
      v18 = Logger.logObject.getter();
      v235 = static os_log_type_t.default.getter();

      v236 = os_log_type_enabled(v18, v235);
      v547 = v234;
      v555 = v4;
      if (v236)
      {
        v237 = v234;
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v563 = swift_slowAlloc();
        *v238 = v528;
        *(v238 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v563);
        *(v238 + 12) = 2082;
        v240 = *(v556 + 40);
        v561 = *(v556 + 24);
        *v562 = v240;
        *&v562[14] = *(v556 + 54);
        sub_100009DAC(&v561, v558);
        v241 = sub_1000063E8();
        v243 = v242;
        sub_1005812D4(&v561);
        v244 = sub_10000668C(v241, v243, &v563);
        v243, v245, v246, v247, v248, v249, v250, v251;
        *(v238 + 14) = v244;
        *(v238 + 22) = 2114;
        *(v238 + 24) = v19;
        *v239 = v19;
        *(v238 + 32) = 2112;
        v252 = v19;
        v253 = [v237 objectID];
        *(v238 + 34) = v253;
        v239[1] = v253;
        _os_log_impl(&_mh_execute_header, v18, v235, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v238, 0x2Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
        v107 = v548;
        a3 = v552;

        swift_arrayDestroy();
        v22 = v556;

        a1 = v557;
      }

      else
      {

        a1 = v557;
        a3 = v552;
      }

      swift_beginAccess();
      v254 = *(a3 + 6);
      if ((v254 & 0xC000000000000001) != 0)
      {
        if (v254 < 0)
        {
          v21 = *(a3 + 6);
        }

        else
        {
          v21 = (v254 & 0xFFFFFFFFFFFFFF8);
        }

        v255 = v19;
        v256 = v547;
        v257 = v547;
        v258 = __CocoaDictionary.count.getter();
        if (__OFADD__(v258, 1))
        {
          goto LABEL_140;
        }

        *(a3 + 6) = sub_10021CDBC(v21, v258 + 1);
      }

      else
      {
        v259 = v19;
        v256 = v547;
        v260 = v547;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v563 = *(a3 + 6);
      sub_1002C8398(v256, v19, isUniquelyReferenced_nonNull_native);
      *(a3 + 6) = v563;

      swift_endAccess();
      if (((*(v22 + 16) | (*(v22 + 34) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v262 = Logger.logObject.getter();
        v263 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v262, v263))
        {
          v264 = swift_slowAlloc();
          a3 = swift_slowAlloc();
          v558[0] = a3;
          *v264 = v527;
          LOBYTE(v563) = 0;
          v265 = String.init<A>(describing:)();
          v267 = v266;
          v268 = sub_10000668C(v265, v266, v558);
          v269 = v267;
          a1 = v557;
          v269, v270, v271, v272, v273, v274, v275, v276;
          *(v264 + 4) = v268;
          v22 = v556;
          _os_log_impl(&_mh_execute_header, v262, v263, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v264, 0xCu);
          sub_10000607C(a3);

          v256 = v547;
        }
      }

      v277 = *(v22 + 16);
      if (*(v22 + 34) >> 14 == 2 && (v277 & 1) == 0)
      {
        goto LABEL_121;
      }

      if ((v277 & 0xFFFF000000000001 | (*(v22 + 34) << 32) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v278 = Logger.logObject.getter();
        v279 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v278, v279))
        {
          v280 = swift_slowAlloc();
          a3 = swift_slowAlloc();
          v558[0] = a3;
          *v280 = v527;
          LOBYTE(v563) = 1;
          v281 = String.init<A>(describing:)();
          v283 = v282;
          v284 = sub_10000668C(v281, v282, v558);
          v285 = v283;
          a1 = v557;
          v285, v286, v287, v288, v289, v290, v291, v292;
          *(v280 + 4) = v284;
          v22 = v556;
          _os_log_impl(&_mh_execute_header, v278, v279, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v280, 0xCu);
          sub_10000607C(a3);

          v256 = v547;
        }
      }

      if (*(v22 + 34) >> 14 == 2)
      {
        LODWORD(v277) = *(v22 + 16);
        if ((v277 & 1) == 0)
        {
LABEL_121:
          if (qword_1009367A0 != -1)
          {
            swift_once();
          }

          sub_100006654(v534, qword_100950D98);
          v397 = Logger.logObject.getter();
          v398 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v397, v398))
          {
            v399 = swift_slowAlloc();
            v558[0] = swift_slowAlloc();
            *v399 = v525;
            v407 = sub_100729CB0(1, v400, v401, v402, v403, v404, v405, v406);
            v409 = v408;
            v410 = sub_10000668C(v407, v408, v558);
            v409, v411, v412, v413, v414, v415, v416, v417;
            *(v399 + 4) = v410;
            *(v399 + 12) = 2082;
            v425 = sub_100729CB0(v277, v418, v419, v420, v421, v422, v423, v424);
            v427 = v426;
            v428 = sub_10000668C(v425, v426, v558);
            v427, v429, v430, v431, v432, v433, v434, v435;
            *(v399 + 14) = v428;
            _os_log_impl(&_mh_execute_header, v397, v398, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v399, 0x16u);
            swift_arrayDestroy();
          }

          v436 = v538;
          v437 = objc_opt_self();
          v438 = String._bridgeToObjectiveC()();
          sub_100729CB0(1, v439, v440, v441, v442, v443, v444, v445);
          v447 = v446;
          v448 = String._bridgeToObjectiveC()();
          v447, v449, v450, v451, v452, v453, v454, v455;
          sub_100729CB0(v277, v456, v457, v458, v459, v460, v461, v462);
          v464 = v463;
          v465 = String._bridgeToObjectiveC()();
          v464, v466, v467, v468, v469, v470, v471, v472;
          [v437 unauthorizedErrorWithMissingEntitlement:v438 requestedAccessLevel:v448 currentAccesslevel:v465];

          swift_willThrow();
          v107, v473, v474, v475, v476, v477, v478, v479;

          v436, v480, v481, v482, v483, v484, v485, v486;
          v110 = v547;

          goto LABEL_127;
        }
      }

      swift_retain_n();
      v19 = v19;
      v293 = v256;
      v294 = Logger.logObject.getter();
      v295 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v294, v295))
      {
        v531 = v295;
        a3 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        v530 = swift_slowAlloc();
        v563 = v530;
        *a3 = v526;
        *(a3 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v563);
        *(a3 + 6) = 2082;
        v297 = *(v22 + 5);
        v559 = *(v22 + 3);
        *v560 = v297;
        *&v560[14] = *(v22 + 54);
        sub_100009DAC(&v559, v558);
        v298 = sub_1000063E8();
        v300 = v299;
        sub_1005812D4(&v559);
        v301 = sub_10000668C(v298, v300, &v563);
        v300, v302, v303, v304, v305, v306, v307, v308;
        *(a3 + 14) = v301;
        *(a3 + 11) = 2114;
        *(a3 + 3) = v19;
        *v296 = v19;
        *(a3 + 16) = 2112;
        v547 = v19;
        v309 = v19;
        v310 = [v293 objectID];
        *(a3 + 34) = v310;
        v529 = v296;
        v296[1] = v310;
        *(a3 + 21) = 2082;
        v558[0] = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, 2, 0);
        v311 = v558[0];
        v313 = *(v558[0] + 16);
        v312 = *(v558[0] + 24);
        v314 = v312 >> 1;
        v315 = v313 + 1;
        if (v312 >> 1 <= v313)
        {
          sub_100026EF4((v312 > 1), v313 + 1, 1);
          v311 = v558[0];
          v312 = *(v558[0] + 24);
          v314 = v312 >> 1;
        }

        *(v311 + 16) = v315;
        v316 = v311 + 16 * v313;
        *(v316 + 32) = 0x44497463656A626FLL;
        *(v316 + 40) = 0xE800000000000000;
        v558[0] = v311;
        if (v314 <= v315)
        {
          sub_100026EF4((v312 > 1), v313 + 2, 1);
          v311 = v558[0];
        }

        *(v311 + 16) = v313 + 2;
        v317 = v311 + 16 * v315;
        *(v317 + 32) = 0x746E657665;
        *(v317 + 40) = 0xE500000000000000;
        v318 = Array.description.getter();
        v320 = v319;

        v321 = sub_10000668C(v318, v320, &v563);
        v320, v322, v323, v324, v325, v326, v327, v328;
        *(a3 + 44) = v321;
        *(a3 + 26) = 1024;
        v22 = v556;
        v329 = *(v556 + 104);

        *(a3 + 54) = v329;

        _os_log_impl(&_mh_execute_header, v294, v531, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", a3, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        a1 = v557;
        v19 = v547;
      }

      else
      {
      }

      v330 = v551;
      v331 = [v551 remObjectID];
      v18 = [v331 uuid];

      v332 = v550;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = UUID._bridgeToObjectiveC()().super.isa;
      v546(v332, v553);
      [v293 setIdentifier:v21];

      v333 = [v330 event];
      if (v333 < -32768)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v39 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_5;
      }

      if (v333 >= 0x8000)
      {
        goto LABEL_138;
      }

      [v293 setEvent:v333];
      v334 = [v293 changedValues];

      v335 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v336 = v552;
      swift_beginAccess();
      v337 = v19;

      v338 = swift_isUniquelyReferenced_nonNull_native();
      v563 = *(v336 + 7);
      *(v336 + 7) = 0x8000000000000000;
      sub_1002C8688(v335, v337, v338);

      *(v336 + 7) = v563;
      swift_endAccess();
      if (*(v22 + 104) == 1)
      {
        v335, v339, v340, v341, v342, v343, v344, v345;
        [v293 updateChangeCount];

        v4 = v555;
      }

      else
      {

        v19 = v22;
        v346 = v337;

        v347 = Logger.logObject.getter();
        a3 = static os_log_type_t.default.getter();
        v335, v348, v349, v350, v351, v352, v353, v354;

        if (os_log_type_enabled(v347, a3))
        {
          v362 = swift_slowAlloc();
          v363 = swift_slowAlloc();
          v547 = swift_slowAlloc();
          v558[0] = v547;
          *v362 = v524;
          *(v362 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v558);
          *(v362 + 12) = 1024;
          *(v362 + 14) = 0;

          *(v362 + 18) = 1024;
          *(v362 + 20) = 1;
          *(v362 + 24) = 2114;
          *(v362 + 26) = v346;
          *v363 = v346;
          *(v362 + 34) = 2082;
          v546 = v346;
          v364 = v555;
          sub_1005E2810(v335);
          v366 = v365;
          v4 = v364;
          v335, v367, v368, v369, v370, v371, v372, v373;
          v374 = Array.description.getter();
          v19 = v375;
          v366, v375, v376, v377, v378, v379, v380, v381;
          v382 = sub_10000668C(v374, v19, v558);
          v19, v383, v384, v385, v386, v387, v388, v389;
          *(v362 + 36) = v382;
          _os_log_impl(&_mh_execute_header, v347, a3, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v362, 0x2Cu);
          sub_1000050A4(v363, &unk_100938E70, &unk_100797230);
          a1 = v557;

          swift_arrayDestroy();

          v22 = v556;
        }

        else
        {
          v335, v355, v356, v357, v358, v359, v360, v361;

          v4 = v555;
          v22 = v19;
        }
      }

      v107 = v548;
LABEL_43:
      v18 = v535;
      v108 = v545 + 1;
      if (v544 == v535)
      {
        goto LABEL_120;
      }
    }

    v131, v132, v133, v134, v135, v136, v137, v138;
LABEL_52:
    v148 = *(v22 + 34);
    v107 = v548;
    v149 = v555;
    if (v148 >> 14 >= 2)
    {
      v19 = v547;
      if (v148 >> 14 == 2)
      {
        v150 = *(v22 + 16) | (*(v22 + 34) << 32);
      }

      else
      {
        v150 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v150 = 2147483519;
      v19 = v547;
    }

    sub_100009A40(2, v150);
    v4 = v149;
    if (v149)
    {
      v139, v151, v152, v153, v154, v155, v156, v157;

      v107, v508, v509, v510, v511, v512, v513, v514;
      v538, v515, v516, v517, v518, v519, v520, v521;
      goto LABEL_130;
    }

    goto LABEL_59;
  }

LABEL_142:
  v522 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v523 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("unknown mode", 12, 2, v522, v523);
  __break(1u);
}

void sub_10061904C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v574 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v571 = &v548 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v570 = &v548 - v14;
  v576 = type metadata accessor for UUID();
  v15 = *(v576 - 8);
  __chkstk_darwin(v576, v16);
  v573 = &v548 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v572 = &v548 - v20;
  v21 = a3[2];
  v22 = a3[3];
  v577 = a3;
  v569 = a3[4];
  if (qword_100936008 != -1)
  {
LABEL_148:
    swift_once();
  }

  v567 = type metadata accessor for Logger();
  v23 = sub_100006654(v567, qword_100945730);

  v578 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v22, v26, v27, v28, v29, v30, v31, v32;
  v33 = os_log_type_enabled(v24, v25);
  v34 = a1 >> 62;
  v580 = v6;
  v582 = a1;
  v575 = (a1 >> 62);
  v568 = v15;
  if (!v33)
  {

    a1, v55, v56, v57, v58, v59, v60, v61;
    goto LABEL_7;
  }

  *&v581 = v21;
  v21 = swift_slowAlloc();
  v583[0] = swift_slowAlloc();
  *v21 = 136446978;
  *(v21 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v583);
  *(v21 + 12) = 2048;
  v579 = v5;
  if (v34)
  {
    goto LABEL_151;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v21 + 14) = i;
    a1, v35, v36, v37, v38, v39, v40, v41;
    *(v21 + 22) = 2082;
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v43 = [swift_getObjCClassFromMetadata() description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_10000668C(v44, v46, v583);
    v46, v48, v49, v50, v51, v52, v53, v54;
    *(v21 + 24) = v47;
    a1 = v582;
    *(v21 + 32) = 2082;
    *(v21 + 34) = sub_10000668C(v581, v22, v583);
    _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v21, 0x2Au);
    swift_arrayDestroy();

    v5 = v579;
    v6 = v580;
    v34 = v575;
LABEL_7:
    v15 = v34 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = &_swiftEmptyArrayStorage;
    if (!v15)
    {
      break;
    }

    v583[0] = &_swiftEmptyArrayStorage;
    v24 = v583;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      v6 = a1 & 0xC000000000000001;
      *&v581 = a1 & 0xFFFFFFFFFFFFFF8;
      v63 = off_1008D4138;
      while (1)
      {
        v64 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_146:

          v63, v532, v533, v534, v535, v536, v537, v538;
          v565, v539, v540, v541, v542, v543, v544, v545;

          return;
        }

        if (v6)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v581 + 16))
          {
            __break(1u);
            goto LABEL_148;
          }

          v65 = *&a1->clientIdentity[8 * v21 + 16];
        }

        v66 = v65;
        sub_1005E3810([v65 remObjectID], &qword_100940360, off_1008D4138);
        v22 = v5;
        if (v5)
        {

          return;
        }

        v24 = v583;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v582;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v21;
        v5 = 0;
        if (v64 == v15)
        {
          v62 = v583[0];
          v6 = v580;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_151:
    ;
  }

LABEL_20:
  v67 = *(v6 + 96);
  if (v67 > 1)
  {
    if ((v67 - 2) >= 3 && v67 != 4499 && v67 != 4599)
    {
      goto LABEL_156;
    }

LABEL_27:
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v583[0] = v22;
      *v70 = 136315138;
      v71 = [objc_opt_self() cdEntityName];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = sub_10000668C(v72, v74, v583);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v70 + 4) = v75;
      a1 = v582;
      _os_log_impl(&_mh_execute_header, v68, v69, "Performing fetch during upsert {CDType: %s}", v70, 0xCu);
      sub_10000607C(v22);
    }

    v83 = sub_1006615EC(v62, v577);
    if (v5)
    {
      goto LABEL_141;
    }

    goto LABEL_35;
  }

  if (!v67)
  {
    goto LABEL_27;
  }

  if (v67 != 1)
  {
LABEL_156:
    v546 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v547 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v546, v547);
    __break(1u);
    return;
  }

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v583[0] = v22;
    *v94 = 136315138;
    v95 = [objc_opt_self() cdEntityName];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    v99 = sub_10000668C(v96, v98, v583);
    v98, v100, v101, v102, v103, v104, v105, v106;
    *(v94 + 4) = v99;
    a1 = v582;
    _os_log_impl(&_mh_execute_header, v92, v93, "Skipping fetch during upsert {CDType: %s}", v94, 0xCu);
    sub_10000607C(v22);
  }

  v83 = sub_10038F8D4(&_swiftEmptyArrayStorage);
LABEL_35:
  v63 = v83;
  if (v575)
  {
    v107 = _CocoaArrayWrapper.endIndex.getter();
    if (!v107)
    {
LABEL_140:
      v63, v84, v85, v86, v87, v88, v89, v90;
LABEL_141:
      v62, v84, v85, v86, v87, v88, v89, v90;
      return;
    }
  }

  else
  {
    v107 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v107)
    {
      goto LABEL_140;
    }
  }

  v108 = 0;
  v109 = a1 & 0xC000000000000001;
  v560 = a1 & 0xFFFFFFFFFFFFFF8;
  v559 = &a1->clientIdentity[16];
  v563 = (v568 + 8);
  v562 = 0x80000001007EA8C0;
  v558 = v568 + 56;
  v557 = (v568 + 48);
  *&v91 = 136446978;
  v554 = v91;
  *&v91 = 136446210;
  v581 = v91;
  *&v91 = 136447490;
  v551 = v91;
  *&v91 = 136447234;
  v550 = v91;
  *&v91 = 136446466;
  v553 = v91;
  v565 = v62;
  v566 = v63;
  v556 = v107;
  v555 = a1 & 0xC000000000000001;
  while (v109)
  {
    v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v111 = __OFADD__(v108, 1);
    v112 = v108 + 1;
    if (v111)
    {
      goto LABEL_152;
    }

LABEL_43:
    v561 = v112;
    v113 = v110;
    v114 = sub_1005E3810([v113 remObjectID], &qword_100940360, off_1008D4138);
    if (v5)
    {
      v63, v115, v116, v117, v118, v119, v120, v121;
      v62, v497, v498, v499, v500, v501, v502, v503;

      return;
    }

    v568 = v114;
    v579 = 0;
    v575 = v113;

    v122 = [*(v574 + 16) uuid];
    v123 = v572;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v124 = UUID.uuidString.getter();
    v126 = v125;
    v127 = *v563;
    v128 = v123;
    v129 = v576;
    (*v563)(v128, v576);
    v130 = [objc_opt_self() localInternalAccountID];
    v131 = [v130 uuid];

    v132 = v573;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v133 = UUID.uuidString.getter();
    v135 = v134;
    v564 = v127;
    (v127)(v132, v129);
    v143 = v126;
    if (v124 == v133 && v126 == v135)
    {
      v135, v136, v137, v138, v139, v140, v141, v142;
      v62 = v565;
      v144 = v568;
      v145 = v580;
    }

    else
    {
      v146 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v135, v147, v148, v149, v150, v151, v152, v153;
      v62 = v565;
      v144 = v568;
      v145 = v580;
      if ((v146 & 1) == 0)
      {
        v155 = v566;
        goto LABEL_55;
      }
    }

    v154 = *(v145 + 68);
    v155 = v566;
    if (v154 >> 14 >= 2)
    {
      if (v154 >> 14 == 2)
      {
        v156 = *(v145 + 64) | (*(v145 + 68) << 32);
      }

      else
      {
        v156 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v156 = 2147483519;
    }

    v157 = v579;
    sub_100009A40(2, v156);
    v579 = v157;
    if (v157)
    {
      v143, v158, v159, v160, v161, v162, v163, v164;

      v155, v504, v505, v506, v507, v508, v509, v510;
      v62, v511, v512, v513, v514, v515, v516, v517;

      return;
    }

LABEL_55:
    v172 = sub_1005F79C4();
    if (*v155->clientIdentity)
    {
      v173 = sub_100393C74();
      if (v165)
      {
        v174 = v173;
        v143, v165, v166, v167, v168, v169, v170, v171;
        v22 = *(*&v155->clientIdentity[40] + 8 * v174);
        v175 = v144;
        v176 = Logger.logObject.getter();
        v177 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v583[0] = v180;
          *v178 = v553;
          *(v178 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v583);
          *(v178 + 12) = 2114;
          *(v178 + 14) = v175;
          *v179 = v175;
          v181 = v175;
          _os_log_impl(&_mh_execute_header, v176, v177, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v178, 0x16u);
          sub_1000050A4(v179, &unk_100938E70, &unk_100797230);

          sub_10000607C(v180);
        }

        else
        {
        }

        v5 = v579;
        goto LABEL_120;
      }
    }

    if (v172 == 3)
    {
      goto LABEL_144;
    }

    v183 = 0xE800000000000000;
    if (v172)
    {
      if (v172 == 1)
      {
        v182 = v562;
      }

      else
      {
        v182 = 0xE900000000000079;
      }

      v194 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE800000000000000, v195, v196, v197, v198, v199, v200, v201;
      v182, v202, v203, v204, v205, v206, v207, v208;
      if (v194)
      {
        goto LABEL_68;
      }

      v183 = v562;
      if (v172 == 1)
      {
        v185 = 0xD000000000000012;
      }

      else
      {
        v185 = 0x74696D69786F7270;
      }

      if (v172 == 1)
      {
        v184 = v562;
      }

      else
      {
        v184 = 0xE900000000000079;
      }

      if (v185 != 0xD000000000000012 || v562 != v184)
      {
        v291 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v183, v292, v293, v294, v295, v296, v297, v298;
        v184, v299, v300, v301, v302, v303, v304, v305;
        if (v291)
        {
          goto LABEL_68;
        }

        v183 = 0xE900000000000079;
        v62 = v565;
        v185 = v172 == 1 ? 0xD000000000000012 : 0x74696D69786F7270;
        v184 = (v172 == 1 ? v562 : 0xE900000000000079);
        if (v185 != 0x74696D69786F7270 || v184 != 0xE900000000000079)
        {
          v390 = _stringCompareWithSmolCheck(_:_:expecting:)();
          0xE900000000000079, v391, v392, v393, v394, v395, v396, v397;
          v184, v398, v399, v400, v401, v402, v403, v404;
          if ((v390 & 1) == 0)
          {
LABEL_144:
            v143, v165, v166, v167, v168, v169, v170, v171;
            v155, v518, v519, v520, v521, v522, v523, v524;
            v62, v525, v526, v527, v528, v529, v530, v531;
            [objc_opt_self() noSuchObjectErrorWithObjectID:v144];
            swift_willThrow();

            return;
          }

LABEL_68:
          v186 = v570;
          goto LABEL_69;
        }
      }
    }

    else
    {
      v184 = 0xE800000000000000;
      v185 = 0x44497463656A626FLL;
    }

    v186 = v570;
    v143, v165, v185, v167, v168, v169, v170, v171;
    v183, v187, v188, v189, v190, v191, v192, v193;
    v143 = v184;
LABEL_69:
    v143, v165, v166, v167, v168, v169, v170, v171;
    v209 = *(v145 + 88);
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v211 = [ObjCClassFromMetadata entity];
    v212 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v211 insertIntoManagedObjectContext:v209];
    v213 = v569;
    [v209 assignObject:v212 toPersistentStore:v213];

    v214 = v212;
    v215 = [v144 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v216 = v576;
    (*v558)(v186, 0, 1, v576);
    v217 = v571;
    sub_10018E470(v186, v571);
    LODWORD(v216) = (*v557)(v217, 1, v216);
    v218 = v214;
    isa = 0;
    if (v216 != 1)
    {
      v220 = v571;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (v564)(v220, v576);
    }

    [v218 setIdentifier:isa];

    sub_1000050A4(v186, &unk_100939D90, "8\n\r");
    v221 = v144;
    v222 = v580;

    v223 = v218;
    v224 = Logger.logObject.getter();
    v225 = static os_log_type_t.default.getter();

    v226 = os_log_type_enabled(v224, v225);
    v568 = v223;
    v564 = v221;
    if (v226)
    {
      v227 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      v588 = swift_slowAlloc();
      *v227 = v554;
      *(v227 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v588);
      *(v227 + 12) = 2082;
      v229 = *(v222 + 40);
      v586 = *(v222 + 24);
      *v587 = v229;
      *&v587[14] = *(v222 + 54);
      sub_100009DAC(&v586, v583);
      v552 = v225;
      v230 = sub_1000063E8();
      v232 = v231;
      sub_1005812D4(&v586);
      v233 = sub_10000668C(v230, v232, &v588);
      v232, v234, v235, v236, v237, v238, v239, v240;
      *(v227 + 14) = v233;
      *(v227 + 22) = 2114;
      *(v227 + 24) = v221;
      *v228 = v221;
      *(v227 + 32) = 2112;
      v241 = v221;
      v242 = [v223 objectID];
      *(v227 + 34) = v242;
      v228[1] = v242;
      _os_log_impl(&_mh_execute_header, v224, v552, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v227, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v243 = v577;
    swift_beginAccess();
    v244 = v243[6];
    if ((v244 & 0xC000000000000001) != 0)
    {
      if (v244 < 0)
      {
        v245 = v243[6];
      }

      else
      {
        v245 = v244 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = v564;
      v246 = v564;
      v247 = v568;
      v248 = v568;
      v249 = __CocoaDictionary.count.getter();
      if (__OFADD__(v249, 1))
      {
        goto LABEL_154;
      }

      v243[6] = sub_10021CDBC(v245, v249 + 1);
    }

    else
    {
      v22 = v564;
      v250 = v564;
      v247 = v568;
      v251 = v568;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v588 = v243[6];
    sub_1002C8398(v247, v22, isUniquelyReferenced_nonNull_native);
    v243[6] = v588;

    swift_endAccess();
    v253 = 0;
    v254 = *(v222 + 64) | (*(v222 + 68) << 32);
    do
    {
      if ((v254 & 0xC00000000001) == 0x800000000000)
      {
        v255 = *(&off_1008E3140 + v253 + 32);
        v256 = Logger.logObject.getter();
        v257 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v256, v257))
        {
          v258 = swift_slowAlloc();
          v259 = swift_slowAlloc();
          v583[0] = v259;
          *v258 = v581;
          LOBYTE(v588) = v255;
          v260 = String.init<A>(describing:)();
          v262 = v261;
          v263 = sub_10000668C(v260, v261, v583);
          v264 = v262;
          v222 = v580;
          v264, v265, v266, v267, v268, v269, v270, v271;
          *(v258 + 4) = v263;
          _os_log_impl(&_mh_execute_header, v256, v257, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v258, 0xCu);
          sub_10000607C(v259);
        }
      }

      v22 = *(v222 + 64);
      if (*(v222 + 68) >> 14 == 2 && (*(v222 + 64) & 1) == 0)
      {
        if (qword_1009367A0 != -1)
        {
          goto LABEL_155;
        }

        goto LABEL_137;
      }

      ++v253;
      v254 = v22 & 0xFFFF0000FFFFFFFFLL | (*(v222 + 68) << 32);
    }

    while (v253 != 3);
    swift_retain_n();
    v22 = v564;
    v5 = v568;
    v273 = Logger.logObject.getter();
    v274 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v273, v274))
    {
      v552 = v274;
      v275 = swift_slowAlloc();
      v276 = swift_slowAlloc();
      v549 = swift_slowAlloc();
      v588 = v549;
      *v275 = v551;
      *(v275 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v588);
      *(v275 + 12) = 2082;
      v277 = *(v222 + 40);
      v584 = *(v222 + 24);
      *v585 = v277;
      *&v585[14] = *(v222 + 54);
      sub_100009DAC(&v584, v583);
      v278 = sub_1000063E8();
      v280 = v279;
      sub_1005812D4(&v584);
      v281 = sub_10000668C(v278, v280, &v588);
      v280, v282, v283, v284, v285, v286, v287, v288;
      *(v275 + 14) = v281;
      *(v275 + 22) = 2114;
      *(v275 + 24) = v22;
      *v276 = v22;
      *(v275 + 32) = 2112;
      v289 = v22;
      v290 = [v5 objectID];
      *(v275 + 34) = v290;
      v548 = v276;
      v276[1] = v290;
      *(v275 + 42) = 2082;
      v583[0] = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, 3, 0);
      v63 = v566;
      v564 = v273;
      v306 = v583[0];
      v308 = *(v583[0] + 16);
      v307 = *(v583[0] + 24);
      v309 = v308 + 1;
      if (v308 >= v307 >> 1)
      {
        sub_100026EF4((v307 > 1), v308 + 1, 1);
        v306 = v583[0];
      }

      *(v306 + 16) = v309;
      v310 = v306 + 16 * v308;
      *(v310 + 32) = 0x44497463656A626FLL;
      *(v310 + 40) = 0xE800000000000000;
      v568 = v5;
      v311 = v562;
      v583[0] = v306;
      v312 = *(v306 + 24);
      if (v309 >= v312 >> 1)
      {
        sub_100026EF4((v312 > 1), v308 + 2, 1);
        v306 = v583[0];
      }

      *(v306 + 16) = v308 + 2;
      v313 = v306 + 16 * v309;
      *(v313 + 32) = 0xD000000000000012;
      *(v313 + 40) = v311;
      v5 = v568;
      v583[0] = v306;
      v315 = *(v306 + 16);
      v314 = *(v306 + 24);
      if (v315 >= v314 >> 1)
      {
        sub_100026EF4((v314 > 1), v315 + 1, 1);
        v306 = v583[0];
      }

      *(v306 + 16) = v315 + 1;
      v316 = v306 + 16 * v315;
      *(v316 + 32) = 0x74696D69786F7270;
      *(v316 + 40) = 0xE900000000000079;
      v317 = Array.description.getter();
      v319 = v318;

      v320 = sub_10000668C(v317, v319, &v588);
      v319, v321, v322, v323, v324, v325, v326, v327;
      *(v275 + 44) = v320;
      *(v275 + 52) = 1024;
      v222 = v580;
      v328 = *(v580 + 104);

      *(v275 + 54) = v328;

      v329 = v564;
      _os_log_impl(&_mh_execute_header, v564, v552, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v275, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    else
    {

      v63 = v566;
    }

    v24 = v575;
    v330 = v579;
    sub_1001D4010(v575, v5, &off_1008E3140);
    if (v330)
    {
      goto LABEL_146;
    }

    v331 = [v5 changedValues];

    v332 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v333 = v577;
    swift_beginAccess();
    v334 = v22;

    v335 = swift_isUniquelyReferenced_nonNull_native();
    v588 = v333[7];
    v333[7] = 0x8000000000000000;
    sub_1002C8688(v332, v334, v335);

    v333[7] = v588;
    swift_endAccess();
    if (*(v222 + 104))
    {
      v332, v336, v337, v338, v339, v340, v341, v342;
      [v5 updateChangeCount];

      v5 = 0;
      v62 = v565;
      goto LABEL_121;
    }

    v343 = v334;

    v344 = Logger.logObject.getter();
    LOWORD(v22) = static os_log_type_t.default.getter();
    v332, v345, v346, v347, v348, v349, v350, v351;

    if (os_log_type_enabled(v344, v22))
    {
      v359 = swift_slowAlloc();
      v360 = swift_slowAlloc();
      v564 = v344;
      v361 = v360;
      v579 = swift_slowAlloc();
      v583[0] = v579;
      *v359 = v550;
      *(v359 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v583);
      *(v359 + 12) = 1024;
      *(v359 + 14) = 0;

      *(v359 + 18) = 1024;
      *(v359 + 20) = 1;
      *(v359 + 24) = 2114;
      *(v359 + 26) = v343;
      *v361 = v343;
      *(v359 + 34) = 2082;
      v362 = v343;
      sub_1005E2810(v332);
      v364 = v363;
      v332, v365, v366, v367, v368, v369, v370, v371;
      v372 = Array.description.getter();
      v374 = v373;
      v364, v373, v375, v376, v377, v378, v379, v380;
      v381 = sub_10000668C(v372, v374, v583);
      v374, v382, v383, v384, v385, v386, v387, v388;
      *(v359 + 36) = v381;
      v389 = v564;
      _os_log_impl(&_mh_execute_header, v564, v22, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v359, 0x2Cu);
      sub_1000050A4(v361, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v5 = 0;
    }

    else
    {
      v332, v352, v353, v354, v355, v356, v357, v358;

      v5 = 0;
    }

    v62 = v565;
LABEL_120:
    v63 = v566;
LABEL_121:
    v108 = v561;
    v109 = v555;
    if (v561 == v556)
    {
      goto LABEL_140;
    }
  }

  if (v108 >= *(v560 + 16))
  {
    goto LABEL_153;
  }

  v110 = *&v559[8 * v108];
  v111 = __OFADD__(v108, 1);
  v112 = v108 + 1;
  if (!v111)
  {
    goto LABEL_43;
  }

LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  swift_once();
LABEL_137:
  sub_100006654(v567, qword_100950D98);
  v405 = Logger.logObject.getter();
  v406 = static os_log_type_t.error.getter();
  v407 = os_log_type_enabled(v405, v406);
  v408 = v566;
  if (v407)
  {
    v409 = swift_slowAlloc();
    v583[0] = swift_slowAlloc();
    *v409 = v553;
    v417 = sub_100729CB0(1, v410, v411, v412, v413, v414, v415, v416);
    v419 = v418;
    v420 = sub_10000668C(v417, v418, v583);
    v419, v421, v422, v423, v424, v425, v426, v427;
    *(v409 + 4) = v420;
    *(v409 + 12) = 2082;
    v435 = sub_100729CB0(v22, v428, v429, v430, v431, v432, v433, v434);
    v437 = v436;
    v438 = sub_10000668C(v435, v436, v583);
    v437, v439, v440, v441, v442, v443, v444, v445;
    *(v409 + 14) = v438;
    _os_log_impl(&_mh_execute_header, v405, v406, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v409, 0x16u);
    swift_arrayDestroy();
  }

  v446 = objc_opt_self();
  v447 = String._bridgeToObjectiveC()();
  sub_100729CB0(1, v448, v449, v450, v451, v452, v453, v454);
  v456 = v455;
  v457 = String._bridgeToObjectiveC()();
  v456, v458, v459, v460, v461, v462, v463, v464;
  sub_100729CB0(v22, v465, v466, v467, v468, v469, v470, v471);
  v473 = v472;
  v474 = String._bridgeToObjectiveC()();
  v473, v475, v476, v477, v478, v479, v480, v481;
  [v446 unauthorizedErrorWithMissingEntitlement:v447 requestedAccessLevel:v457 currentAccesslevel:v474];

  swift_willThrow();
  v408, v482, v483, v484, v485, v486, v487, v488;

  v565, v489, v490, v491, v492, v493, v494, v495;
  v496 = v568;
}