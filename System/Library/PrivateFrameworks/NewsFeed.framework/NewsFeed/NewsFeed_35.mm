uint64_t sub_1D5E6BE84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1600) = a1;
  *(v4 + 1608) = v1;

  if (v1)
  {

    v5 = sub_1D5E6C584;
  }

  else
  {
    v5 = sub_1D5E6BFE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E6BFE0()
{
  v77 = v0;
  v1 = *(v0 + 1600);
  *&v68 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1D7263BFC();
    v3 = *(v0 + 1600);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v3 + 32;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x1DA6FB460](v4, *(v0 + 1600));
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_17;
          }

          v8 = *(v7 + 8 * v4);
          swift_unknownObjectRetain();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v11 = v68;

            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_57;
          }
        }

        v1 = [v8 puzzleType];
        swift_getObjectType();
        v10 = FCPuzzleTypeProviding.isAllowed.getter();
        swift_unknownObjectRelease();
        if (v10)
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          v1 = &v68;
          sub_1D7263EAC();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
        if (v9 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_19:
  if ((v11 & 0x4000000000000000) != 0)
  {
LABEL_57:
    v12 = sub_1D7263BFC();
  }

  else
  {
    v12 = *(v11 + 16);
  }

  v13 = *(v0 + 1568);
  v14 = *(v0 + 1560);

  if (!v12)
  {
LABEL_47:

    v60 = *(v0 + 8);

    return v60(v13);
  }

  v15 = 0;
  v64 = v11 & 0xC000000000000001;
  v65 = v14;
  v62 = v12;
  v63 = v11;
  while (1)
  {
    if (v64)
    {
      v16 = MEMORY[0x1DA6FB460](v15, v11);
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v15 >= *(v11 + 16))
      {
        goto LABEL_54;
      }

      v16 = *(v11 + 8 * v15 + 32);
      swift_unknownObjectRetain();
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    v66 = v17;
    swift_getObjectType();
    v18 = [v16 identifier];
    v67 = sub_1D726207C();
    v20 = v19;

    v21 = [v16 identifier];
    v22 = sub_1D726207C();
    v24 = v23;

    if (*(v65 + 16))
    {
      v25 = sub_1D5B69D90(v22, v24);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(v65 + 56) + 8 * v25);
        swift_beginAccess();
        *(v0 + 448) = v28[2];
        v29 = v28[3];
        v30 = v28[4];
        v31 = v28[6];
        *(v0 + 496) = v28[5];
        *(v0 + 512) = v31;
        *(v0 + 464) = v29;
        *(v0 + 480) = v30;
        v32 = v28[7];
        v33 = v28[8];
        v34 = v28[10];
        *(v0 + 560) = v28[9];
        *(v0 + 576) = v34;
        *(v0 + 528) = v32;
        *(v0 + 544) = v33;
        memmove((v0 + 304), v28 + 2, 0x90uLL);
        nullsub_1();
        sub_1D5E9E6F8(v0 + 448, v0 + 592);
        v35 = *(v0 + 416);
        *(v0 + 112) = *(v0 + 400);
        *(v0 + 128) = v35;
        *(v0 + 144) = *(v0 + 432);
        v36 = *(v0 + 352);
        *(v0 + 48) = *(v0 + 336);
        *(v0 + 64) = v36;
        v37 = *(v0 + 384);
        *(v0 + 80) = *(v0 + 368);
        *(v0 + 96) = v37;
        v38 = *(v0 + 320);
        *(v0 + 16) = *(v0 + 304);
        *(v0 + 32) = v38;
        goto LABEL_33;
      }
    }

    else
    {
    }

    sub_1D5E9E664((v0 + 16));
LABEL_33:
    v39 = *(v0 + 128);
    v74 = *(v0 + 112);
    v75 = v39;
    v76 = *(v0 + 144);
    v40 = *(v0 + 64);
    v70 = *(v0 + 48);
    v71 = v40;
    v41 = *(v0 + 96);
    v72 = *(v0 + 80);
    v73 = v41;
    v42 = *(v0 + 32);
    v68 = *(v0 + 16);
    v69 = v42;
    v43 = FCPuzzleProviding.overridden(by:)(&v68);
    v44 = v75;
    *(v0 + 256) = v74;
    *(v0 + 272) = v44;
    *(v0 + 288) = v76;
    v45 = v71;
    *(v0 + 192) = v70;
    *(v0 + 208) = v45;
    v46 = v73;
    *(v0 + 224) = v72;
    *(v0 + 240) = v46;
    v47 = v69;
    *(v0 + 160) = v68;
    *(v0 + 176) = v47;
    sub_1D5E9E688(v0 + 160, &unk_1EDF123B0, &type metadata for FormatPuzzle.Overrides);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v68 = v13;
    v11 = sub_1D5B69D90(v67, v20);
    v50 = v13[2];
    v51 = (v49 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_55;
    }

    v53 = v49;
    if (v13[3] < v52)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v49)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1D6D7DB18();
      if (v53)
      {
LABEL_23:

        v13 = v68;
        *(*(v68 + 56) + 8 * v11) = v43;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_24;
      }
    }

LABEL_40:
    v13 = v68;
    *(v68 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v56 = (v13[6] + 16 * v11);
    *v56 = v67;
    v56[1] = v20;
    *(v13[7] + 8 * v11) = v43;
    swift_unknownObjectRelease();
    v57 = v13[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_56;
    }

    v13[2] = v59;
LABEL_24:
    ++v15;
    v11 = v63;
    if (v66 == v62)
    {
      goto LABEL_47;
    }
  }

  sub_1D6D66648(v52, isUniquelyReferenced_nonNull_native);
  v54 = sub_1D5B69D90(v67, v20);
  if ((v53 & 1) == (v55 & 1))
  {
    v11 = v54;
    if (v53)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  return sub_1D726493C();
}

uint64_t sub_1D5E6C584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6C6AC(a3, a4, a5);
}

uint64_t sub_1D5E6C6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  sub_1D5C2CA80(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  v4[9] = swift_task_alloc();
  sub_1D5CEFE04(0, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides, MEMORY[0x1E69E6720]);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6C7D4, 0, 0);
}

uint64_t sub_1D5E6C7D4(uint64_t a1)
{
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.puzzleTypes.getter(v2);

  v4 = sub_1D605A8F8(MEMORY[0x1E69E7CC0]);
  if (v3 >> 62)
  {
LABEL_29:
    v5 = sub_1D7263BFC();
    v47 = v1;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v1;
    if (v5)
    {
LABEL_3:
      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1DA6FB460](v6, v3);
          v1 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v8 = *(v3 + 8 * v6 + 32);

          v1 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = sub_1D5B69D90(v10, v9);
        v14 = v4[2];
        v15 = (v13 & 1) == 0;
        v16 = __OFADD__(v14, v15);
        v17 = v14 + v15;
        if (v16)
        {
          goto LABEL_27;
        }

        v18 = v13;
        if (v4[3] < v17)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v23 = v12;
        sub_1D6D7DFE8();
        v12 = v23;
        if (v18)
        {
LABEL_4:
          v7 = v12;

          *(v4[7] + 8 * v7) = v8;

          goto LABEL_5;
        }

LABEL_15:
        v4[(v12 >> 6) + 8] |= 1 << v12;
        v20 = (v4[6] + 16 * v12);
        *v20 = v10;
        v20[1] = v9;
        *(v4[7] + 8 * v12) = v8;

        v21 = v4[2];
        v16 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v16)
        {
          goto LABEL_28;
        }

        v4[2] = v22;
LABEL_5:
        ++v6;
        if (v1 == v5)
        {
          goto LABEL_30;
        }
      }

      sub_1D6D669C8(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1D5B69D90(v10, v9);
      if ((v18 & 1) != (v19 & 1))
      {

        return sub_1D726493C();
      }

LABEL_14:
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

LABEL_30:
  v47[11] = v4;

  if (v4[2])
  {
    v25 = v47[7];
    v26 = v47[6];
    v27 = sub_1D5E7935C(v47[5], v4, v47[8]);
    v29 = v28;
    v47[12] = v27;
    v47[13] = v28;
    v30 = *(v26 + *(type metadata accessor for FormatServiceOptions(0) + 52));
    sub_1D5C384A0(0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D7279970;
    v32 = *(v27 + 16);
    v33 = MEMORY[0x1E69E6530];
    v34 = MEMORY[0x1E69E65A8];
    *(v31 + 56) = MEMORY[0x1E69E6530];
    *(v31 + 64) = v34;
    *(v31 + 32) = v32;
    v35 = *(v29 + 16);
    *(v31 + 96) = v33;
    *(v31 + 104) = v34;
    *(v31 + 72) = v35;
    v37 = *v25;
    v36 = v25[1];
    *(v31 + 136) = MEMORY[0x1E69E6158];
    *(v31 + 144) = sub_1D5B7E2C0();
    *(v31 + 112) = v37;
    *(v31 + 120) = v36;

    v38 = sub_1D7262EDC();
    sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved puzzle types for %{public}@", 89, 2, &dword_1D5B42000, v30, v38, v31);

    if (*(v29 + 16))
    {
      v39 = v47[8];
      v40 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
      v47[14] = v40;
      v41 = v39[33];
      v42 = v39[34];
      __swift_project_boxed_opaque_existential_1(v39 + 30, v41);
      v43 = *(v42 + 128);
      v44 = v40;
      v48 = (v43 + *v43);
      v45 = swift_task_alloc();
      v47[15] = v45;
      *v45 = v47;
      v45[1] = sub_1D5E6CD08;

      return v48(v29, v40, 25, v41, v42);
    }
  }

  else
  {

    v27 = sub_1D605A8DC(MEMORY[0x1E69E7CC0]);
  }

  v46 = v47[1];

  return v46(v27);
}

uint64_t sub_1D5E6CD08(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = sub_1D5E6D3E8;
  }

  else
  {
    v5 = v3[14];

    v4 = sub_1D5E6CE28;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D5E6CE28()
{
  v61 = v0;
  v1 = v0[16];
  v60 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1D7263BFC();
    v3 = v0[16];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v11 = MEMORY[0x1E69E7CC0];

    if (v11 < 0)
    {
      goto LABEL_54;
    }

    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v1;
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = v0;
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v1 & 0xFFFFFFFFFFFFFF8;
  v8 = v3 + 32;
  while (!v6)
  {
    if (v5 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v9 = *(v8 + 8 * v5);
    swift_unknownObjectRetain();
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    swift_getObjectType();
    v1 = v9;
    if (FCPuzzleTypeProviding.isAllowed.getter())
    {
      sub_1D7263E9C();
      v0 = v60[2];
      sub_1D7263EDC();
      sub_1D7263EEC();
      v1 = &v60;
      sub_1D7263EAC();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v5;
    if (v10 == v2)
    {
      goto LABEL_14;
    }
  }

  v9 = MEMORY[0x1DA6FB460](v5, v4[16]);
  v10 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v11 = v60;
  v0 = v4;

  if (v11 < 0)
  {
LABEL_54:
    while (2)
    {
      v12 = sub_1D7263BFC();
      v13 = v0[11];
      if (!v12)
      {
        goto LABEL_55;
      }

LABEL_21:
      v52 = v13;
      v53 = v12;
      v14 = 0;
      v55 = v0[8];
      v56 = v11 & 0xC000000000000001;
      v15 = v0[12];
      v54 = v11;
LABEL_24:
      if (v56)
      {
        v16 = MEMORY[0x1DA6FB460](v14, v11);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_51;
        }

        v16 = *(v11 + 8 * v14 + 32);
        swift_unknownObjectRetain();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          continue;
        }
      }

      break;
    }

    v57 = v17;
    v18 = v0[11];
    swift_getObjectType();
    v19 = [v16 identifier];
    v20 = sub_1D726207C();
    v58 = v21;
    v59 = v20;

    v22 = [v16 identifier];
    v23 = sub_1D726207C();
    v25 = v24;

    if (*(v18 + 16))
    {
      v26 = sub_1D5B69D90(v23, v25);
      v28 = v27;

      v29 = v0;
      if (v28)
      {
        v31 = v0[9];
        v30 = v0[10];
        v32 = *(*(v52 + 56) + 8 * v26);
        v33 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
        swift_beginAccess();
        sub_1D5E9DB98(v32 + v33, v31, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
        sub_1D5CEFF38(v31, v30, type metadata accessor for FormatPuzzleType.Overrides);
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }
    }

    else
    {

      v34 = 1;
      v29 = v0;
    }

    v0 = v29;
    v11 = v29[10];
    v35 = type metadata accessor for FormatPuzzleType.Overrides(0);
    (*(*(v35 - 8) + 56))(v11, v34, 1, v35);
    v36 = FCPuzzleTypeProviding.overridden(by:assetManager:)(v11, *(v55 + 136));
    sub_1D5CF274C(v11, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v15;
    v39 = sub_1D5B69D90(v59, v58);
    v40 = v15[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_52;
    }

    v11 = v38;
    if (v15[3] >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v38 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_1D6D7D994();
        if ((v11 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_1D6D66390(v42, isUniquelyReferenced_nonNull_native);
      v43 = sub_1D5B69D90(v59, v58);
      if ((v11 & 1) != (v44 & 1))
      {

        return sub_1D726493C();
      }

      v39 = v43;
      if ((v11 & 1) == 0)
      {
LABEL_39:
        v15 = v60;
        v60[(v39 >> 6) + 8] |= 1 << v39;
        v45 = (v15[6] + 16 * v39);
        *v45 = v59;
        v45[1] = v58;
        *(v15[7] + 8 * v39) = v36;
        swift_unknownObjectRelease();
        v46 = v15[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_53;
        }

        v15[2] = v48;
        goto LABEL_23;
      }
    }

    v15 = v60;
    *(v60[7] + 8 * v39) = v36;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_23:
    ++v14;
    v11 = v54;
    if (v57 == v53)
    {
      goto LABEL_56;
    }

    goto LABEL_24;
  }

LABEL_19:
  if ((v11 & 0x4000000000000000) != 0)
  {
    goto LABEL_54;
  }

  v12 = *(v11 + 16);
  v13 = v0[11];
  if (v12)
  {
    goto LABEL_21;
  }

LABEL_55:
  v15 = v0[12];
LABEL_56:
  v50 = v0[14];

  v51 = v0[1];

  return v51(v15);
}

uint64_t sub_1D5E6D3E8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5E6D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E6D548;

  return sub_1D5E6D6B8(a3, a4, a5);
}

uint64_t sub_1D5E6D548(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5E6D694, 0, 0);
  }
}

uint64_t sub_1D5E6D6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for PuzzleStatistic(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6D788, 0, 0);
}

uint64_t sub_1D5E6D788(uint64_t a1)
{
  v1 = FormatContent.requirements.getter();
  v2 = Array<A>.puzzleStatistics.getter(v1);

  v3 = sub_1D605AB54(MEMORY[0x1E69E7CC0]);
  v11 = v3;
  v58 = *(v2 + 16);
  if (v58)
  {
    v12 = 0;
    v13 = (v2 + 64);
    v57 = v2;
    do
    {
      if (v12 >= *(v2 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return MEMORY[0x1EEE6DD58](v3, v4, v5, v6, v7, v8, v9, v10);
      }

      v59 = v12;
      v16 = *(v13 - 4);
      v15 = *(v13 - 3);
      v18 = *(v13 - 2);
      v17 = *(v13 - 1);
      v19 = *v13;
      v61 = *(v16 + 16);
      v62 = *(v16 + 24);

      MEMORY[0x1DA6F9910](v15, v18);

      v60 = v17;

      v64 = v19;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_1D5B69D90(v61, v62);
      v22 = v11[2];
      v23 = (v4 & 1) == 0;
      v3 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_31;
      }

      v24 = v4;
      if (v11[3] >= v3)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v4)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1D6D7E000();
          if (v24)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1D6D669E0(v3, isUniquelyReferenced_nonNull_native);
        v25 = sub_1D5B69D90(v61, v62);
        if ((v24 & 1) != (v26 & 1))
        {

          return sub_1D726493C();
        }

        v21 = v25;
        if (v24)
        {
LABEL_3:

          v14 = (v11[7] + 40 * v21);
          *v14 = v16;
          v14[1] = v15;
          v14[2] = v18;
          v14[3] = v60;
          v14[4] = v64;

          goto LABEL_4;
        }
      }

      v11[(v21 >> 6) + 8] |= 1 << v21;
      v27 = (v11[6] + 16 * v21);
      *v27 = v61;
      v27[1] = v62;
      v28 = (v11[7] + 40 * v21);
      *v28 = v16;
      v28[1] = v15;
      v28[2] = v18;
      v28[3] = v60;
      v28[4] = v64;

      v29 = v11[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_32;
      }

      v11[2] = v31;
LABEL_4:
      v12 = v59 + 1;
      v13 += 5;
      v2 = v57;
    }

    while (v58 != v59 + 1);
  }

  if (!v11[2])
  {

    v34 = sub_1D605A92C(MEMORY[0x1E69E7CC0]);
    v53 = v56;
LABEL_27:

    v55 = v53[1];

    return v55(v34);
  }

  v32 = v56[4];
  v33 = v56[5];
  v34 = sub_1D5E7994C(v56[3], v11);
  v36 = v35;

  v56[11] = v34;
  v56[12] = v36;
  v37 = *(v32 + *(type metadata accessor for FormatServiceOptions(0) + 52));
  sub_1D5C384A0(0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D7279970;
  v39 = *(v34 + 16);
  v40 = MEMORY[0x1E69E6530];
  v41 = MEMORY[0x1E69E65A8];
  *(v38 + 56) = MEMORY[0x1E69E6530];
  *(v38 + 64) = v41;
  *(v38 + 32) = v39;
  v42 = *(v36 + 16);
  *(v38 + 96) = v40;
  *(v38 + 104) = v41;
  *(v38 + 72) = v42;
  v44 = *v33;
  v43 = v33[1];
  *(v38 + 136) = MEMORY[0x1E69E6158];
  *(v38 + 144) = sub_1D5B7E2C0();
  *(v38 + 112) = v44;
  *(v38 + 120) = v43;

  v45 = sub_1D7262EDC();
  sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved puzzle statistics for %{public}@", 94, 2, &dword_1D5B42000, v37, v45, v38);

  if (!*(v36 + 16))
  {

    v53 = v56;
    goto LABEL_27;
  }

  v46 = v56[6];
  sub_1D5CEFE04(0, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720]);
  v48 = v47;
  sub_1D5CEFE04(0, &qword_1EDF04FF0, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E62F8]);
  v50 = v49;
  v51 = swift_task_alloc();
  v56[13] = v51;
  *(v51 + 16) = v36;
  *(v51 + 24) = v46;
  v52 = swift_task_alloc();
  v56[14] = v52;
  *v52 = v56;
  v52[1] = sub_1D5E6DD2C;
  v8 = &unk_1D7279D50;
  v3 = (v56 + 2);
  v4 = v48;
  v5 = v50;
  v6 = 0;
  v7 = 0;
  v9 = v51;
  v10 = v48;

  return MEMORY[0x1EEE6DD58](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5E6DD2C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_1D5E6E37C;
  }

  else
  {

    v2 = sub_1D5E6DE9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1D5E6DE9C()
{
  v45 = v0;
  result = v0[2];
  v40 = *(result + 16);
  if (v40)
  {
    v2 = 0;
    v39 = v0[8];
    v38 = result + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v3 = v0[11];
    v37 = v0[2];
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

      v5 = v0[10];
      v41 = *(v39 + 72);
      sub_1D5CEFE68(v38 + v41 * v2++, v5, type metadata accessor for PuzzleStatistic);
      v6 = [*v5 identifier];
      v7 = sub_1D726207C();
      v9 = v8;

      PuzzleStatisticCategory.statisticType.getter(&v42);
      v10 = 0x53646570756F7267;
      if (v42 != 9)
      {
        v10 = 0xD000000000000015;
      }

      v11 = 0x80000001D73B7480;
      if (v42 == 9)
      {
        v11 = 0xEC00000073746174;
      }

      if (v42 == 8)
      {
        v10 = 0xD00000000000001DLL;
      }

      v12 = 0x80000001D73B7430;
      if (v42 == 8)
      {
        v11 = 0x80000001D73B7450;
      }

      if (v42 == 6)
      {
        v13 = 0xD00000000000001CLL;
      }

      else
      {
        v13 = 0xD00000000000001DLL;
      }

      if (v42 == 6)
      {
        v12 = 0x80000001D73B7410;
      }

      if (v42 == 5)
      {
        v13 = 0xD00000000000001CLL;
        v12 = 0x80000001D73B73F0;
      }

      if (v42 <= 7u)
      {
        v10 = v13;
        v11 = v12;
      }

      v14 = 0x5374636566726570;
      if (v42 != 3)
      {
        v14 = 0x74615265766C6F73;
      }

      v15 = 0xE900000000000065;
      if (v42 == 3)
      {
        v15 = 0xED00006465766C6FLL;
      }

      if (v42 == 2)
      {
        v14 = 0x5373656C7A7A7570;
        v15 = 0xED00006465766C6FLL;
      }

      v16 = 0x53747365676E6F6CLL;
      if (v42)
      {
        v16 = 0x53746E6572727563;
      }

      if (v42 <= 1u)
      {
        v14 = v16;
        v15 = 0xED00006B61657274;
      }

      if (v42 <= 4u)
      {
        v17 = v14;
      }

      else
      {
        v17 = v10;
      }

      if (v42 <= 4u)
      {
        v18 = v15;
      }

      else
      {
        v18 = v11;
      }

      v20 = v0[9];
      v19 = v0[10];
      v43 = v7;
      v44 = v9;

      MEMORY[0x1DA6F9910](v17, v18);

      v22 = v43;
      v21 = v44;
      sub_1D5CEFE68(v19, v20, type metadata accessor for PuzzleStatistic);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v3;
      result = sub_1D5B69D90(v22, v21);
      v25 = v3[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_58;
      }

      v29 = v24;
      if (v3[3] < v28)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_44;
      }

      v35 = result;
      sub_1D6D7D940();
      result = v35;
      v31 = v0[9];
      if (v29)
      {
LABEL_3:
        v4 = result;

        v3 = v43;
        sub_1D5E9E39C(v31, v43[7] + v4 * v41);
        goto LABEL_4;
      }

LABEL_45:
      v3 = v43;
      v43[(result >> 6) + 8] |= 1 << result;
      v32 = (v3[6] + 16 * result);
      *v32 = v22;
      v32[1] = v21;
      result = sub_1D5CEFF38(v31, v3[7] + result * v41, type metadata accessor for PuzzleStatistic);
      v33 = v3[2];
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_59;
      }

      v3[2] = v34;
LABEL_4:
      sub_1D5EA08F4(v0[10], type metadata accessor for PuzzleStatistic);
      result = v37;
      if (v40 == v2)
      {

        goto LABEL_51;
      }
    }

    sub_1D6D6633C(v28, isUniquelyReferenced_nonNull_native);
    result = sub_1D5B69D90(v22, v21);
    if ((v29 & 1) != (v30 & 1))
    {

      return sub_1D726493C();
    }

LABEL_44:
    v31 = v0[9];
    if (v29)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

  v3 = v0[11];
LABEL_51:

  v36 = v0[1];

  return v36(v3);
}

uint64_t sub_1D5E6E37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6E4A0(a3, a4, a5);
}

uint64_t sub_1D5E6E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5E6E4C0, 0, 0);
}

uint64_t sub_1D5E6E4C0(uint64_t a1)
{
  v2 = FormatContent.requirements.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    while (1)
    {
      if (v4[2].i8[0] == 19)
      {
        v5 = vorrq_s8(*v4, v4[1]);
        if (!(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v4[-1].i64[1]))
        {
          break;
        }
      }

      v4 += 3;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    v6 = v1[4];

    v7 = v6[47];
    v8 = v6[48];
    __swift_project_boxed_opaque_existential_1(v6 + 44, v7);
    v1[5] = (*(v8 + 8))(v7, v8);
    v9 = swift_task_alloc();
    v1[6] = v9;
    *v9 = v1;
    v9[1] = sub_1D5E6E638;

    return MEMORY[0x1EEE44EE0](v1 + 2);
  }

  else
  {
LABEL_9:

    v10 = sub_1D605ACB8(MEMORY[0x1E69E7CC0]);
    v11 = v1[1];

    return v11(v10);
  }
}

uint64_t sub_1D5E6E638()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5E6E770;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E6E770()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6E88C(a3, a4, a5);
}

uint64_t sub_1D5E6E88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E6E8B0, 0, 0);
}

uint64_t sub_1D5E6E8B0()
{
  v169 = v0;
  v1 = v0[9];
  v0[5] = MEMORY[0x1E69E7CC0];
  v2 = v1[15];

  sub_1D5E4FE10(v3);
  v5 = v4;
  v157 = v2;

  sub_1D6985104(v5);
  v6 = v1[16];

  sub_1D5E5004C(v7);
  v9 = v8;
  v166 = v6;

  sub_1D6985104(v9);
  v10 = v1[17];

  sub_1D5E5028C(v11);
  v13 = v12;
  v165 = v10;

  sub_1D6985104(v13);
  v14 = v1[18];

  sub_1D5E504CC(v15);
  v17 = v16;
  v164 = v14;

  sub_1D6985104(v17);
  v18 = v1[19];

  sub_1D5E5070C(v19);
  v21 = v20;
  v163 = v18;

  sub_1D6985104(v21);
  v22 = v1[20];

  sub_1D5E5094C(v23);
  v25 = v24;
  v162 = v22;

  sub_1D6985104(v25);
  v26 = v1[21];

  sub_1D5E50B90(v27);
  v29 = v28;

  sub_1D6985104(v29);
  v30 = MEMORY[0x1E69E7CD0];
  v0[6] = MEMORY[0x1E69E7CD0];
  v0[7] = v30;
  v31 = FormatContent.requirements.getter();
  v32 = Array<A>.scores.getter(v31);

  if (v32 >> 62)
  {
    goto LABEL_51;
  }

  v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v154 = v0;
  v34 = v157;
  v158 = v32;
  if (!v33)
  {
    v36 = MEMORY[0x1E69E7CC8];
LABEL_32:

    v154[13] = v36;
    v70 = FormatContent.requirements.getter();
    v71 = Array<A>.standings.getter(v70);

    v80 = v36;
    if (v71 >> 62)
    {
      v72 = sub_1D7263BFC();
      v81 = v72;
      v82 = v166;
      if (v72)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v81 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v82 = v166;
      if (v81)
      {
LABEL_34:
        if (v81 >= 1)
        {
          v83 = 0;
          while (1)
          {
            if ((v71 & 0xC000000000000001) != 0)
            {
              v86 = MEMORY[0x1DA6FB460](v83, v71);
              if (!*(v82 + 16))
              {
                goto LABEL_36;
              }
            }

            else
            {
              v86 = *(v71 + 8 * v83 + 32);

              if (!*(v82 + 16))
              {
                goto LABEL_36;
              }
            }

            sub_1D5B69D90(*(v86 + 16), *(v86 + 24));
            v82 = v166;
            if (v87)
            {

              goto LABEL_37;
            }

LABEL_36:
            v84 = *(v86 + 16);
            v85 = *(v86 + 24);

            sub_1D5B860D0(&v168, v84, v85);
            v82 = v166;

LABEL_37:
            if (v81 == ++v83)
            {
              goto LABEL_53;
            }
          }
        }

        __break(1u);
        goto LABEL_127;
      }
    }

LABEL_53:

    v89 = FormatContent.requirements.getter();
    v90 = Array<A>.brackets.getter(v89);

    if (v90 >> 62)
    {
      v72 = sub_1D7263BFC();
      v91 = v72;
      v92 = v165;
      if (v72)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v92 = v165;
      if (v91)
      {
LABEL_55:
        if (v91 < 1)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        for (i = 0; v91 != i; ++i)
        {
          if ((v90 & 0xC000000000000001) != 0)
          {
            v96 = MEMORY[0x1DA6FB460](i, v90);
            if (!*(v92 + 16))
            {
              goto LABEL_57;
            }
          }

          else
          {
            v96 = *(v90 + 8 * i + 32);

            if (!*(v92 + 16))
            {
              goto LABEL_57;
            }
          }

          sub_1D5B69D90(*(v96 + 16), *(v96 + 24));
          v92 = v165;
          if (v97)
          {

            continue;
          }

LABEL_57:
          v94 = *(v96 + 16);
          v95 = *(v96 + 24);

          sub_1D5B860D0(&v168, v94, v95);
          v92 = v165;
        }
      }
    }

    v98 = FormatContent.requirements.getter();
    v99 = Array<A>.boxScores.getter(v98);

    if (v99 >> 62)
    {
      v72 = sub_1D7263BFC();
      v100 = v72;
      v101 = v164;
      if (v72)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v101 = v164;
      if (v100)
      {
LABEL_68:
        if (v100 < 1)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        for (j = 0; v100 != j; ++j)
        {
          if ((v99 & 0xC000000000000001) != 0)
          {
            v105 = MEMORY[0x1DA6FB460](j, v99);
            if (!*(v101 + 16))
            {
              goto LABEL_70;
            }
          }

          else
          {
            v105 = *(v99 + 8 * j + 32);

            if (!*(v101 + 16))
            {
              goto LABEL_70;
            }
          }

          sub_1D5B69D90(*(v105 + 16), *(v105 + 24));
          v101 = v164;
          if (v106)
          {

            continue;
          }

LABEL_70:
          v103 = *(v105 + 16);
          v104 = *(v105 + 24);

          sub_1D5B860D0(&v168, v103, v104);
          v101 = v164;
        }
      }
    }

    v107 = FormatContent.requirements.getter();
    v108 = Array<A>.lineScores.getter(v107);

    if (v108 >> 62)
    {
      v72 = sub_1D7263BFC();
      v109 = v72;
      v110 = v163;
      if (v72)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v110 = v163;
      if (v109)
      {
LABEL_81:
        if (v109 < 1)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        for (k = 0; v109 != k; ++k)
        {
          if ((v108 & 0xC000000000000001) != 0)
          {
            v114 = MEMORY[0x1DA6FB460](k, v108);
            if (!*(v110 + 16))
            {
              goto LABEL_83;
            }
          }

          else
          {
            v114 = *(v108 + 8 * k + 32);

            if (!*(v110 + 16))
            {
              goto LABEL_83;
            }
          }

          sub_1D5B69D90(*(v114 + 16), *(v114 + 24));
          v110 = v163;
          if (v115)
          {

            continue;
          }

LABEL_83:
          v112 = *(v114 + 16);
          v113 = *(v114 + 24);

          sub_1D5B860D0(&v168, v112, v113);
          v110 = v163;
        }
      }
    }

    v116 = FormatContent.requirements.getter();
    v117 = Array<A>.injuryReports.getter(v116);

    if (v117 >> 62)
    {
      v72 = sub_1D7263BFC();
      v118 = v72;
      v119 = v162;
      if (v72)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v119 = v162;
      if (v118)
      {
LABEL_94:
        if (v118 < 1)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        for (m = 0; v118 != m; ++m)
        {
          if ((v117 & 0xC000000000000001) != 0)
          {
            v123 = MEMORY[0x1DA6FB460](m, v117);
            if (!*(v119 + 16))
            {
              goto LABEL_96;
            }
          }

          else
          {
            v123 = *(v117 + 8 * m + 32);

            if (!*(v119 + 16))
            {
              goto LABEL_96;
            }
          }

          sub_1D5B69D90(*(v123 + 16), *(v123 + 24));
          v119 = v162;
          if (v124)
          {

            continue;
          }

LABEL_96:
          v121 = *(v123 + 16);
          v122 = *(v123 + 24);

          sub_1D5B860D0(&v168, v121, v122);
          v119 = v162;
        }
      }
    }

    v125 = FormatContent.requirements.getter();
    v126 = Array<A>.keyPlayers.getter(v125);

    if (v126 >> 62)
    {
      v72 = sub_1D7263BFC();
      v127 = v72;
      if (v72)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v127)
      {
LABEL_107:
        if (v127 < 1)
        {
LABEL_131:
          __break(1u);
          return MEMORY[0x1EEE6DD58](v72, v73, v74, v75, v76, v77, v78, v79);
        }

        for (n = 0; v127 != n; ++n)
        {
          if ((v126 & 0xC000000000000001) != 0)
          {
            v131 = MEMORY[0x1DA6FB460](n, v126);
            if (!*(v26 + 16))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v131 = *(v126 + 8 * n + 32);

            if (!*(v26 + 16))
            {
              goto LABEL_109;
            }
          }

          sub_1D5B69D90(*(v131 + 16), *(v131 + 24));
          if (v132)
          {

            continue;
          }

LABEL_109:
          v129 = *(v131 + 16);
          v130 = *(v131 + 24);

          sub_1D5B860D0(&v168, v129, v130);
        }
      }
    }

    v133 = v154[10];
    v134 = v154[11];

    v135 = *(v133 + *(type metadata accessor for FormatServiceOptions(0) + 52));
    sub_1D5C384A0(0);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_1D7279970;
    v137 = v154[5];
    v138 = v154[6];
    v154[14] = v137;
    v139 = *(v137 + 16);
    v140 = MEMORY[0x1E69E6530];
    v141 = MEMORY[0x1E69E65A8];
    *(v136 + 56) = MEMORY[0x1E69E6530];
    *(v136 + 64) = v141;
    *(v136 + 32) = v139;
    v154[15] = v138;
    v142 = *(v138 + 16);
    *(v136 + 96) = v140;
    *(v136 + 104) = v141;
    *(v136 + 72) = v142;
    v144 = *v134;
    v143 = v134[1];
    *(v136 + 136) = MEMORY[0x1E69E6158];
    *(v136 + 144) = sub_1D5B7E2C0();
    *(v136 + 112) = v144;
    *(v136 + 120) = v143;

    v145 = sub_1D7262EDC();
    sub_1D725C30C("Format service will resolve %ld prefetched and %ld sport data visualizations fetches for %{public}@", 99, 2, &dword_1D5B42000, v135, v145, v136);

    v146 = *(v138 + 16);
    v147 = v154[7];
    v154[16] = v147;
    if (!v146 && !*(v147 + 16))
    {

      v153 = v154[1];

      return v153(v137);
    }

    v148 = v154[12];
    sub_1D5B5A7A0(0, &qword_1EDF1B050, &type metadata for SportsDataVisualization, MEMORY[0x1E69E62F8]);
    v150 = v149;
    v151 = swift_task_alloc();
    v154[17] = v151;
    v151[2] = v138;
    v151[3] = v148;
    v151[4] = v80;
    v151[5] = v147;
    v152 = swift_task_alloc();
    v154[18] = v152;
    *v152 = v154;
    v152[1] = sub_1D5E6F688;
    v73 = &type metadata for SportsDataVisualizationResult;
    v171 = v150;
    v77 = &unk_1D7279D10;
    v72 = (v154 + 8);
    v74 = v150;
    v75 = 0;
    v76 = 0;
    v78 = v151;
    v79 = &type metadata for SportsDataVisualizationResult;

    return MEMORY[0x1EEE6DD58](v72, v73, v74, v75, v76, v77, v78, v79);
  }

  v35 = 0;
  v161 = v32 & 0xC000000000000001;
  v156 = v32 & 0xFFFFFFFFFFFFFF8;
  v36 = MEMORY[0x1E69E7CC8];
  v155 = v32 + 32;
  v159 = v33;
  v160 = v26;
  while (1)
  {
    if (v161)
    {
      v39 = MEMORY[0x1DA6FB460](v35, v158);
      v40 = __OFADD__(v35++, 1);
      if (v40)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v35 >= *(v156 + 16))
      {
        goto LABEL_48;
      }

      v39 = *(v155 + 8 * v35);

      v40 = __OFADD__(v35++, 1);
      if (v40)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v33 = sub_1D7263BFC();
        goto LABEL_3;
      }
    }

    if (!*(v34 + 16) || (v41 = v39[4], v42 = v39[5], , v43 = sub_1D5B69D90(v41, v42), v45 = v44, , (v45 & 1) == 0))
    {
      v59 = v39[4];
      v58 = v39[5];
      swift_beginAccess();

      v61 = sub_1D5E50DD0(v60);

      v62 = *(v61 + 16);
      v63 = sub_1D5E9DF74();
      v64 = MEMORY[0x1DA6FA1E0](v62, &type metadata for SportsScoreDataVisualizationTrait, v63);
      v168 = v64;
      v65 = *(v61 + 16);
      if (v65)
      {
        v66 = 32;
        do
        {
          sub_1D5FE9B8C(&v167, *(v61 + v66++));
          --v65;
        }

        while (v65);

        v32 = v168;
      }

      else
      {
        v32 = v64;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = v36;
      sub_1D6D76EA8(v32, v59, v58, isUniquelyReferenced_nonNull_native);

      v36 = v168;
      v38 = v39[2];
      v0 = v39[3];

      sub_1D5B860D0(&v168, v38, v0);

      v26 = v160;
      goto LABEL_7;
    }

    v46 = *(*(v34 + 56) + 8 * v43);
    v0 = *(v46 + 40);
    v32 = *(v46 + 48);
    v47 = *(v46 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v168 = v36;
    v48 = sub_1D5B69D90(v0, v32);
    v50 = v36;
    v51 = v48;
    v52 = v36[2];
    v53 = (v49 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_49;
    }

    v55 = v49;
    if (v50[3] < v54)
    {
      break;
    }

    if (v26)
    {
      v26 = v160;
      if (v49)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_1D6D7E1B4();
      v26 = v160;
      if (v55)
      {
LABEL_27:

        v36 = v168;
        *(v168[7] + 8 * v51) = v47;

        v34 = v157;
        goto LABEL_7;
      }
    }

LABEL_29:
    v36 = v168;
    v168[(v51 >> 6) + 8] |= 1 << v51;
    v67 = (v36[6] + 16 * v51);
    *v67 = v0;
    v67[1] = v32;
    *(v36[7] + 8 * v51) = v47;

    v68 = v36[2];
    v40 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v40)
    {
      goto LABEL_50;
    }

    v36[2] = v69;
    v34 = v157;
LABEL_7:
    if (v35 == v159)
    {
      goto LABEL_32;
    }
  }

  sub_1D6D66CEC(v54, v26);
  v56 = sub_1D5B69D90(v0, v32);
  if ((v55 & 1) == (v57 & 1))
  {
    v51 = v56;
    v26 = v160;
    if (v55)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  return sub_1D726493C();
}

uint64_t sub_1D5E6F688()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_1D5E6F890;
  }

  else
  {

    v2 = sub_1D5E6F80C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E6F80C()
{
  v3 = v0[14];
  sub_1D6985104(v0[8]);

  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_1D5E6F890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6F8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6F9AC(a3, a4, a5);
}

uint64_t sub_1D5E6F9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_1D725891C();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  sub_1D5C2CA80(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  v4[28] = swift_task_alloc();
  type metadata accessor for FormatRecipeOverrides(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6FB18, 0, 0);
}

char *sub_1D5E6FB18()
{
  v1 = v0[24];
  v2 = v1[85];
  v3 = v1[86];
  __swift_project_boxed_opaque_existential_1(v1 + 82, v2);
  if (((*(v3 + 200))(v2, v3) & 1) == 0)
  {
    v50 = sub_1D605ACD0(MEMORY[0x1E69E7CC0]);
    goto LABEL_86;
  }

  v4 = v0[22];
  v5 = FormatContent.requirements.getter();
  v6 = Array<A>.recipes.getter(v5);

  v0[19] = v6;
  sub_1D5CEFE04(0, &unk_1EDF1B340, type metadata accessor for FormatRecipe, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B338, &unk_1EDF1B340, type metadata accessor for FormatRecipe);
  v7 = sub_1D72623CC();

  v0[20] = MEMORY[0x1E69E7CC0];
  v126 = v7;
  v8 = v7 >> 62;
  v108 = v4;
  if (*(v4 + 48))
  {
    if (v8)
    {
      goto LABEL_63;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_66;
    }

    goto LABEL_5;
  }

  v51 = *(v4 + 40);
  if (v8)
  {
    v52 = sub_1D7263BFC();
    if (!v52)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v52 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_66;
    }
  }

  v53 = 0;
  v107 = v0[24];
  v54 = *(v0[21] + 72);
  v124 = v7 & 0xC000000000000001;
  v121 = v7 & 0xFFFFFFFFFFFFFF8;
  v114 = (v0[26] + 8);
  v13 = MEMORY[0x1E69E7CC0];
  v122 = MEMORY[0x1E69E7CC8];
  v118 = v52;
  while (1)
  {
    if (v124)
    {
      v56 = MEMORY[0x1DA6FB460](v53, v126);
      v57 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      goto LABEL_48;
    }

    if (v53 >= *(v121 + 16))
    {
      goto LABEL_59;
    }

    v56 = *(v126 + 8 * v53 + 32);

    v57 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

LABEL_48:
    if (!*(v54 + 16))
    {
      goto LABEL_38;
    }

    v59 = *(v56 + 16);
    v58 = *(v56 + 24);

    v60 = sub_1D5B69D90(v59, v58);
    v62 = v61;

    if ((v62 & 1) == 0)
    {
      goto LABEL_38;
    }

    v63 = *(*(v54 + 56) + 8 * v60);
    v64 = [v63 fetchDate];
    if (!v64)
    {
      goto LABEL_37;
    }

    v65 = v64;
    sub_1D72588BC();

    sub_1D725887C();
    if (v51 < -v66)
    {
      (*v114)(v0[27], v0[25]);
LABEL_37:

      v52 = v118;
LABEL_38:

      MEMORY[0x1DA6F9CE0](v55);
      if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();

      v13 = v0[20];
      goto LABEL_41;
    }

    v120 = v13;
    v67 = v0[30];
    v68 = v0[28];
    v113 = *(v56 + 16);
    v116 = *(v56 + 24);
    v69 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
    swift_beginAccess();
    sub_1D5E9DB98(v56 + v69, v68, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v68, v67, type metadata accessor for FormatRecipeOverrides);
    v70 = *(v107 + 152);

    v71 = [objc_msgSend(v70 configurationManager)];
    result = swift_unknownObjectRelease();
    if (!v71)
    {
      goto LABEL_98;
    }

    v72 = v0[30];
    v110 = v0[25];
    v112 = v0[27];
    v73 = *(v107 + 136);
    swift_getObjectType();
    v74 = sub_1D6323068(v72, v71, v73, v63);
    swift_unknownObjectRelease();
    sub_1D5EA08F4(v72, type metadata accessor for FormatRecipeOverrides);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D6D76CF0(v74, v113, v116, isUniquelyReferenced_nonNull_native);

    (*v114)(v112, v110);
    v52 = v118;
    v13 = v120;
LABEL_41:
    ++v53;
    if (v57 == v52)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v9 = sub_1D7263BFC();
    if (!v9)
    {
LABEL_66:
      v13 = MEMORY[0x1E69E7CC0];
      v122 = MEMORY[0x1E69E7CC8];
LABEL_67:
      v0[32] = v122;
      v0[33] = v13;

      if (v13 >> 62)
      {
        v76 = sub_1D7263BFC();
      }

      else
      {
        v76 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v77 = v0[22];
      v78 = *(v77 + *(type metadata accessor for FormatServiceOptions(0) + 52));
      if (v76)
      {
        sub_1D5C384A0(0);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1D7270C10;
        v80 = v122[2];
        v81 = MEMORY[0x1E69E6530];
        v82 = MEMORY[0x1E69E65A8];
        *(v79 + 56) = MEMORY[0x1E69E6530];
        *(v79 + 64) = v82;
        *(v79 + 32) = v80;
        if (v13 >> 62)
        {
          v106 = v79;
          v83 = sub_1D7263BFC();
          v79 = v106;
        }

        else
        {
          v83 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v84 = v0[24];
        *(v79 + 96) = v81;
        *(v79 + 104) = v82;
        *(v79 + 72) = v83;
        sub_1D7262EDC();
        sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved recipes", v107, 0);

        sub_1D5B68374(v84 + 536, (v0 + 2));
        v85 = v0[5];
        v86 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v85);
        v87 = MEMORY[0x1E69E7CC0];
        if (v83)
        {
          v125 = v86;
          v127 = v85;
          v129 = MEMORY[0x1E69E7CC0];
          result = sub_1D5BFC364(0, v83 & ~(v83 >> 63), 0);
          if (v83 < 0)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            return result;
          }

          v88 = 0;
          v87 = v129;
          v89 = v13 & 0xC000000000000001;
          v90 = v13;
          do
          {
            if (v89)
            {
              v91 = MEMORY[0x1DA6FB460](v88, v13);
            }

            else
            {
              v91 = *(v13 + 8 * v88 + 32);
            }

            swift_beginAccess();
            v92 = *(v91 + 16);
            v93 = *(v91 + 24);

            v95 = *(v129 + 16);
            v94 = *(v129 + 24);
            if (v95 >= v94 >> 1)
            {
              sub_1D5BFC364((v94 > 1), v95 + 1, 1);
            }

            ++v88;
            *(v129 + 16) = v95 + 1;
            v96 = v129 + 16 * v95;
            *(v96 + 32) = v92;
            *(v96 + 40) = v93;
            v13 = v90;
          }

          while (v83 != v88);
          v86 = v125;
          v85 = v127;
        }

        v0[34] = v87;
        v97 = *(v108 + 40);
        v98 = *(v108 + 48);
        v99 = objc_opt_self();
        if (v98 == 1)
        {
          if (v97 == 0.0)
          {
            v100 = [v99 defaultCachePolicy];
          }

          else
          {
            v100 = [v99 cachedOnlyCachePolicy];
          }
        }

        else
        {
          v100 = [v99 cachePolicyWithSoftMaxAge_];
        }

        v104 = v100;
        v0[35] = v104;
        v128 = (*(v86 + 16) + **(v86 + 16));
        v105 = swift_task_alloc();
        v0[36] = v105;
        *v105 = v0;
        v105[1] = sub_1D5E70908;

        return v128(v87, v104, v85, v86);
      }

      v101 = v0[24];
      v102 = sub_1D7262EDC();
      sub_1D725C30C("Format service did not detect any recipes needing to be resolved", 64, 2, &dword_1D5B42000, v78, v102, MEMORY[0x1E69E7CC0]);

      v50 = sub_1D5E9DDB4(v122, v101);

LABEL_86:

      v103 = v0[1];

      return v103(v50);
    }

LABEL_5:
    v10 = 0;
    v11 = v0[24];
    v12 = *(v0[21] + 72);
    v13 = MEMORY[0x1E69E7CC0];
    v122 = MEMORY[0x1E69E7CC8];
    v123 = v12;
    v109 = v9;
    v111 = v11;
LABEL_9:
    if ((v126 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1DA6FB460](v10, v126);
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        continue;
      }
    }

    else
    {
      if (v10 >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v16 = *(v126 + 8 * v10 + 32);

      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        continue;
      }
    }

    break;
  }

  if (!*(v12 + 16) || (v19 = *(v16 + 16), v18 = *(v16 + 24), , v20 = sub_1D5B69D90(v19, v18), v22 = v21, v12 = v123, , (v22 & 1) == 0))
  {

    MEMORY[0x1DA6F9CE0](v45);
    if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
      v12 = v123;
    }

    sub_1D726278C();

    v13 = v0[20];
    goto LABEL_8;
  }

  v119 = v13;
  v23 = v0[31];
  v24 = v0[28];
  v25 = *(*(v123 + 56) + 8 * v20);
  v26 = *(v16 + 24);
  v117 = *(v16 + 16);
  v27 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5E9DB98(v16 + v27, v24, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5CEFF38(v24, v23, type metadata accessor for FormatRecipeOverrides);
  v28 = *(v11 + 152);
  v29 = v25;

  v30 = [objc_msgSend(v28 configurationManager)];
  result = swift_unknownObjectRelease();
  if (!v30)
  {
    goto LABEL_97;
  }

  v32 = v0[31];
  v33 = *(v11 + 136);
  swift_getObjectType();
  v115 = v29;
  v34 = sub_1D6323068(v32, v30, v33, v29);
  swift_unknownObjectRelease();
  sub_1D5EA08F4(v32, type metadata accessor for FormatRecipeOverrides);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v26;
  v38 = sub_1D5B69D90(v117, v26);
  v39 = v122[2];
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
    goto LABEL_61;
  }

  v42 = v37;
  if (v122[3] >= v41)
  {
    if (v35)
    {
      v11 = v111;
      if ((v37 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_6;
    }

    sub_1D6D7D928();
    v11 = v111;
    if (v42)
    {
      goto LABEL_6;
    }

LABEL_28:
    v122[(v38 >> 6) + 8] |= 1 << v38;
    v46 = (v122[6] + 16 * v38);
    *v46 = v117;
    v46[1] = v36;
    *(v122[7] + 8 * v38) = v34;

    v47 = v122[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_62;
    }

    v122[2] = v49;
LABEL_7:
    v13 = v119;
    v9 = v109;
    v12 = v123;
LABEL_8:
    ++v10;
    if (v17 == v9)
    {
      goto LABEL_67;
    }

    goto LABEL_9;
  }

  sub_1D6D66324(v41, v35);
  v43 = sub_1D5B69D90(v117, v36);
  if ((v42 & 1) == (v44 & 1))
  {
    v38 = v43;
    v11 = v111;
    if ((v42 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_6:

    v14 = v122[7];
    v15 = *(v14 + 8 * v38);
    *(v14 + 8 * v38) = v34;

    goto LABEL_7;
  }

  return sub_1D726493C();
}

uint64_t sub_1D5E70908(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 280);
  if (v1)
  {

    v6 = sub_1D5E71290;
  }

  else
  {

    v6 = sub_1D5E70A88;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5E70A88()
{
  v87 = v0;
  v1 = v0[37];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v1 >> 62)
  {
    goto LABEL_25;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v75 = v0;
  while (v2)
  {
    v3 = 0;
    v77 = v1 & 0xFFFFFFFFFFFFFF8;
    v81 = v1 & 0xC000000000000001;
    v76 = v0[37] + 32;
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v81)
      {
        v7 = MEMORY[0x1DA6FB460](v3, v75[37]);
      }

      else
      {
        if (v3 >= *(v77 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v76 + 8 * v3);
      }

      v1 = v7;
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v7 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      v12 = v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v4;
      v1 = v4;
      v14 = sub_1D5B69D90(v9, v11);
      v16 = v4[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_23;
      }

      v20 = v15;
      if (v4[3] < v19)
      {
        sub_1D6D66324(v19, isUniquelyReferenced_nonNull_native);
        v1 = v86;
        v14 = sub_1D5B69D90(v9, v11);
        if ((v20 & 1) != (v21 & 1))
        {
LABEL_70:

          return sub_1D726493C();
        }

LABEL_15:
        if (v20)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v1 = &v86;
      v25 = v14;
      sub_1D6D7D928();
      v14 = v25;
      if (v20)
      {
LABEL_4:
        v1 = v14;

        v4 = v86;
        v5 = *(v86 + 56);
        v6 = *(v5 + 8 * v1);
        *(v5 + 8 * v1) = v12;

        goto LABEL_5;
      }

LABEL_16:
      v4 = v86;
      *(v86 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v22 = (v4[6] + 16 * v14);
      *v22 = v9;
      v22[1] = v11;
      *(v4[7] + 8 * v14) = v12;

      v23 = v4[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v4[2] = v24;
LABEL_5:
      ++v3;
      if (v0 == v2)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v2 = sub_1D7263BFC();
    v75 = v0;
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_27:
  v26 = v75[33];

  v86 = MEMORY[0x1E69E7CC0];
  v27 = v75[33];
  v28 = v27 & 0xFFFFFFFFFFFFFF8;
  if (!(v26 >> 62))
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_29;
    }

LABEL_48:
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v29 = sub_1D7263BFC();
  v27 = v75[33];
  if (!v29)
  {
    goto LABEL_48;
  }

LABEL_29:
  v30 = 0;
  v31 = v75[24];
  v32 = v27 & 0xC000000000000001;
  v33 = v27 + 32;
  v34 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v82 = v34;
  v35 = v30;
  while (v32)
  {
    v34 = MEMORY[0x1DA6FB460](v35, v75[33]);
    v30 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_78;
    }

LABEL_35:
    if (v4[2])
    {
      v36 = sub_1D5B69D90(*(v34 + 16), *(v34 + 24));
      if (v37)
      {
        v38 = v75[28];
        v78 = v75[29];
        v83 = *(v4[7] + 8 * v36);
        v39 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
        swift_beginAccess();
        sub_1D5E9DB98(v34 + v39, v38, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
        sub_1D5CEFF38(v38, v78, type metadata accessor for FormatRecipeOverrides);
        v40 = *(v31 + 152);
        v84 = v83;
        v41 = [objc_msgSend(v40 configurationManager)];
        result = swift_unknownObjectRelease();
        if (!v41)
        {
          __break(1u);
          return result;
        }

        v43 = v75[29];
        v79 = *(v31 + 136);
        swift_getObjectType();
        sub_1D6323068(v43, v41, v79, v84);
        swift_unknownObjectRelease();

        v44 = sub_1D5EA08F4(v43, type metadata accessor for FormatRecipeOverrides);
        MEMORY[0x1DA6F9CE0](v44);
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v34 = v86;
        if (v30 == v29)
        {
          goto LABEL_49;
        }

        goto LABEL_30;
      }
    }

    ++v35;
    if (v30 == v29)
    {
      v34 = v82;
LABEL_49:

      if (v34 >> 62)
      {
        goto LABEL_84;
      }

      v45 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_51;
    }
  }

  if (v35 >= *(v28 + 16))
  {
    goto LABEL_79;
  }

  v34 = *(v33 + 8 * v35);

  v30 = v35 + 1;
  if (!__OFADD__(v35, 1))
  {
    goto LABEL_35;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  v45 = sub_1D7263BFC();
LABEL_51:
  v46 = v75[32];

  if (v45)
  {
    v47 = 0;
    v80 = v34 & 0xFFFFFFFFFFFFFF8;
    v85 = v34 & 0xC000000000000001;
    while (1)
    {
      if (v85)
      {
        v51 = MEMORY[0x1DA6FB460](v47, v34);
      }

      else
      {
        if (v47 >= *(v80 + 16))
        {
          goto LABEL_81;
        }

        v51 = *(v34 + 8 * v47 + 32);
      }

      v52 = v51;
      v53 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_80;
      }

      v54 = v34;
      v55 = [v51 identifier];
      v34 = sub_1D726207C();
      v57 = v56;

      v58 = v52;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v46;
      v60 = sub_1D5B69D90(v34, v57);
      v62 = v46[2];
      v63 = (v61 & 1) == 0;
      v18 = __OFADD__(v62, v63);
      v64 = v62 + v63;
      if (v18)
      {
        goto LABEL_82;
      }

      v65 = v61;
      if (v46[3] < v64)
      {
        break;
      }

      if (v59)
      {
        goto LABEL_64;
      }

      v70 = v60;
      sub_1D6D7D928();
      v60 = v70;
      if ((v65 & 1) == 0)
      {
LABEL_65:
        v46 = v86;
        *(v86 + 8 * (v60 >> 6) + 64) |= 1 << v60;
        v67 = (v46[6] + 16 * v60);
        *v67 = v34;
        v67[1] = v57;
        *(v46[7] + 8 * v60) = v58;

        v68 = v46[2];
        v18 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v18)
        {
          goto LABEL_83;
        }

        v46[2] = v69;
        goto LABEL_54;
      }

LABEL_53:
      v48 = v60;

      v46 = v86;
      v49 = *(v86 + 56);
      v50 = *(v49 + 8 * v48);
      *(v49 + 8 * v48) = v58;

LABEL_54:
      ++v47;
      v34 = v54;
      if (v53 == v45)
      {
        v71 = v75;
        goto LABEL_75;
      }
    }

    sub_1D6D66324(v64, v59);
    v60 = sub_1D5B69D90(v34, v57);
    if ((v65 & 1) != (v66 & 1))
    {
      goto LABEL_70;
    }

LABEL_64:
    if ((v65 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_53;
  }

  v71 = v75;
LABEL_75:
  v72 = v71[24];

  v73 = sub_1D5E9DDB4(v46, v72);

  v74 = v71[1];

  return v74(v73);
}

uint64_t sub_1D5E71290()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E71338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E713F0(a3, a4, a5);
}

uint64_t sub_1D5E713F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E71414, 0, 0);
}

char *sub_1D5E71414()
{
  v1 = v0[11];
  v2 = v1[85];
  v3 = v1[86];
  __swift_project_boxed_opaque_existential_1(v1 + 82, v2);
  if (((*(v3 + 200))(v2, v3) & 1) == 0)
  {
    v19 = sub_1D605AD18(MEMORY[0x1E69E7CC0]);
    goto LABEL_36;
  }

  v4 = FormatContent.requirements.getter();
  v5 = Array<A>.recipeLists.getter(v4);

  v0[7] = v5;
  sub_1D5B5A7A0(0, &qword_1EDF1B2C0, &type metadata for FormatRecipeList, MEMORY[0x1E69E62F8]);
  sub_1D5CF35A0(&qword_1EDF1B2B8, &qword_1EDF1B2C0, &type metadata for FormatRecipeList, MEMORY[0x1E69E6328]);
  v6 = sub_1D72623CC();

  v7 = FormatContent.requirements.getter();
  v8 = Array<A>.recipes.getter(v7);

  if (v8 >> 62)
  {
    v9 = sub_1D7263BFC();
    v64 = v6;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v6;
    if (v9)
    {
LABEL_4:
      v69 = MEMORY[0x1E69E7CC0];
      result = sub_1D5BFC364(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = 0;
      v12 = v69;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1DA6FB460](v11, v8);
        }

        else
        {
          v13 = *(v8 + 8 * v11 + 32);
        }

        v14 = *(v13 + 16);
        v15 = *(v13 + 24);

        v17 = *(v69 + 16);
        v16 = *(v69 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D5BFC364((v16 > 1), v17 + 1, 1);
        }

        ++v11;
        *(v69 + 16) = v17 + 1;
        v18 = v69 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
      }

      while (v9 != v11);

      v6 = v64;
      goto LABEL_16;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v65 = sub_1D5B86020(v12);
  v0[12] = v65;

  v20 = MEMORY[0x1E69E7CC0];
  v19 = sub_1D605AD18(MEMORY[0x1E69E7CC0]);
  v21 = *(v6 + 16);
  v68 = v0;
  if (v21)
  {
    v22 = *(v0[8] + 80);
    v23 = (v6 + 40);
    do
    {
      v29 = *(v23 - 1);
      v30 = *v23;
      v31 = *(v22 + 16);

      if (v31 && (, sub_1D5B69D90(v29, v30), v33 = v32, , (v33 & 1) != 0))
      {
        v24 = v68[10];
        v25 = v68[9];

        v27 = sub_1D5E77D10(v26, v25, v24, v65);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D6D76EC0(v27, v29, v30, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D698C88C(0, *(v20 + 2) + 1, 1, v20);
        }

        v35 = *(v20 + 2);
        v34 = *(v20 + 3);
        if (v35 >= v34 >> 1)
        {
          v20 = sub_1D698C88C((v34 > 1), v35 + 1, 1, v20);
        }

        *(v20 + 2) = v35 + 1;
        v36 = &v20[16 * v35];
        *(v36 + 4) = v29;
        *(v36 + 5) = v30;
      }

      v23 += 2;
      --v21;
    }

    while (v21);
  }

  v0 = v68;
  v68[13] = v19;
  v68[14] = v19;
  v37 = v68[9];
  v38 = v68[10];

  v39 = *(v37 + *(type metadata accessor for FormatServiceOptions(0) + 52));
  sub_1D5C384A0(0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D7279970;
  v41 = *(v19 + 16);
  v42 = MEMORY[0x1E69E6530];
  v43 = MEMORY[0x1E69E65A8];
  *(v40 + 56) = MEMORY[0x1E69E6530];
  *(v40 + 64) = v43;
  *(v40 + 32) = v41;
  v44 = *(v20 + 2);
  *(v40 + 96) = v42;
  *(v40 + 104) = v43;
  *(v40 + 72) = v44;
  v46 = *v38;
  v45 = v38[1];
  *(v40 + 136) = MEMORY[0x1E69E6158];
  *(v40 + 144) = sub_1D5B7E2C0();
  *(v40 + 112) = v46;
  *(v40 + 120) = v45;

  v47 = sub_1D7262EDC();
  sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved recipe lists for %{public}@", 89, 2, &dword_1D5B42000, v39, v47, v40);

  v48 = *(v20 + 2);
  if (v48)
  {
    sub_1D5B68374(v68[11] + 536, (v68 + 2));
    v66 = v68[6];
    v67 = v68[5];
    __swift_project_boxed_opaque_existential_1(v68 + 2, v67);
    v70 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v48, 0);
    v49 = 0;
    v50 = *(v70 + 16);
    v51 = 16 * v50;
    do
    {
      v52 = *&v20[v49 + 32];
      v53 = *&v20[v49 + 40];
      v54 = *(v70 + 24);

      if (v50 >= v54 >> 1)
      {
        sub_1D5BFC364((v54 > 1), v50 + 1, 1);
      }

      v68[15] = v70;
      *(v70 + 16) = v50 + 1;
      v55 = v70 + v51 + v49;
      *(v55 + 32) = v52;
      *(v55 + 40) = v53;
      v49 += 16;
      ++v50;
      --v48;
    }

    while (v48);
    v56 = v68[9];

    v57 = *(v56 + 40);
    LODWORD(v56) = *(v56 + 48);
    v58 = objc_opt_self();
    if (v56 == 1)
    {
      if (v57 == 0.0)
      {
        v59 = [v58 defaultCachePolicy];
      }

      else
      {
        v59 = [v58 cachedOnlyCachePolicy];
      }
    }

    else
    {
      v59 = [v58 cachePolicyWithSoftMaxAge_];
    }

    v61 = v59;
    v68[16] = v61;
    v63 = (*(v66 + 24) + **(v66 + 24));
    v62 = swift_task_alloc();
    v68[17] = v62;
    *v62 = v68;
    v62[1] = sub_1D5E71B5C;

    return v63(v70, v61, v67, v66);
  }

LABEL_36:
  v60 = v0[1];

  return v60(v19);
}

uint64_t sub_1D5E71B5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {

    v6 = sub_1D5E71EDC;
  }

  else
  {

    v6 = sub_1D5E71CE0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1D5E71CE0()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = 0;
  v4 = v1 + 64;
  v3 = *(v1 + 64);
  v24 = v1;
  v25 = v0;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v8 = (63 - v6) >> 6;
  v9 = v0[13];
  v10 = v0[14];
  if ((v5 & v3) != 0)
  {
    while (1)
    {
      v28 = v9;
      v11 = v2;
LABEL_9:
      v26 = v25[12];
      v13 = v25[9];
      v12 = v25[10];
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = (v11 << 9) | (8 * v14);
      v16 = *(*(v24 + 56) + v15);
      v27 = *(*(v24 + 48) + v15);

      v17 = [v27 identifier];
      v18 = sub_1D726207C();
      v20 = v19;

      v21 = sub_1D5E77D10(v16, v13, v12, v26);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D6D76EC0(v21, v18, v20, isUniquelyReferenced_nonNull_native);

      v9 = v28;
      v10 = v28;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v2;
    if (v7)
    {
      v28 = v9;
      v2 = v11;
      goto LABEL_9;
    }
  }

  v23 = v25[1];

  v23(v10);
}

uint64_t sub_1D5E71EDC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E71F40(uint64_t a1, void *a2)
{
  v4 = FormatContent.requirements.getter();
  v5 = Array<A>.webArchives.getter(v4);

  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v37 = a1;
    v38 = a2;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D699761C(0, v6, 0);
    v8 = v39;
    v9 = (v5 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v15 = *(v39 + 16);
      v14 = *(v39 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_1D699761C((v14 > 1), v15 + 1, 1);
      }

      v9 += 4;
      *(v39 + 16) = v15 + 1;
      v16 = (v39 + 32 * v15);
      v16[4] = v10;
      v16[5] = v11;
      v16[6] = v12;
      v16[7] = v13;
      --v6;
    }

    while (v6);

    v7 = MEMORY[0x1E69E7CC0];
    a2 = v38;
    a1 = v37;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(a1 + *(type metadata accessor for FormatServiceOptions(0) + 52));
  sub_1D5C384A0(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7270C10;
  v19 = *(v8 + 16);
  v20 = MEMORY[0x1E69E65A8];
  *(v18 + 56) = MEMORY[0x1E69E6530];
  *(v18 + 64) = v20;
  *(v18 + 32) = v19;
  v21 = *a2;
  v22 = a2[1];
  *(v18 + 96) = MEMORY[0x1E69E6158];
  *(v18 + 104) = sub_1D5B7E2C0();
  *(v18 + 72) = v21;
  *(v18 + 80) = v22;

  v23 = sub_1D7262EDC();
  sub_1D725C30C("Format service will resolve %ld web archives for %{public}@", 59, 2, &dword_1D5B42000, v17, v23, v18);

  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1D5E9C7CC(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  sub_1D725BDCC();
  v26 = sub_1D725B92C();
  sub_1D5E9C7CC(0, &unk_1EDF1B8F8, type metadata accessor for FormatWebArchiveResource.Resolved);
  sub_1D725BA8C();

  if (v19)
  {
    sub_1D5BFC364(0, v19, 0);
    v27 = v7;
    v28 = (v8 + 40);
    do
    {
      v30 = *(v28 - 1);
      v29 = *v28;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);

      if (v32 >= v31 >> 1)
      {
        sub_1D5BFC364((v31 > 1), v32 + 1, 1);
      }

      *(v27 + 16) = v32 + 1;
      v33 = v27 + 16 * v32;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      v28 += 4;
      --v19;
    }

    while (v19);
  }

  v34 = MEMORY[0x1E69E6158];
  sub_1D5B5A7A0(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5CF35A0(&qword_1EDF3C838, &qword_1EDF43BA0, v34, MEMORY[0x1E69E6328]);
  v35 = sub_1D725BA1C();

  return v35;
}

uint64_t sub_1D5E72324(uint64_t a1, uint64_t *a2)
{
  v4 = FormatContent.requirements.getter();
  v5 = Array<A>.resources.getter(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v27 = a1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v6, 0);
    v7 = v28;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v12 = *(v28 + 16);
      v11 = *(v28 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      }

      *(v28 + 16) = v12 + 1;
      v13 = v28 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v8 += 2;
      --v6;
    }

    while (v6);

    a1 = v27;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(a1 + *(type metadata accessor for FormatServiceOptions(0) + 52));
  sub_1D5C384A0(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7270C10;
  v16 = *(v7 + 16);
  v17 = MEMORY[0x1E69E65A8];
  *(v15 + 56) = MEMORY[0x1E69E6530];
  *(v15 + 64) = v17;
  *(v15 + 32) = v16;
  v18 = *a2;
  v19 = a2[1];
  v20 = MEMORY[0x1E69E6158];
  *(v15 + 96) = MEMORY[0x1E69E6158];
  *(v15 + 104) = sub_1D5B7E2C0();
  *(v15 + 72) = v18;
  *(v15 + 80) = v19;

  v21 = sub_1D7262EDC();
  sub_1D725C30C("Format service will resolve %ld resources for %{public}@", 56, 2, &dword_1D5B42000, v14, v21, v15);

  MEMORY[0x1EEE9AC00](v22, v23);
  sub_1D5C3C32C(0);
  sub_1D725BDCC();
  v24 = sub_1D725B92C();
  sub_1D5E9C7CC(0, &qword_1EDF1B920, type metadata accessor for FormatContentResource.Resolved);
  sub_1D725BA8C();

  sub_1D5B5A7A0(0, &qword_1EDF43BA0, v20, MEMORY[0x1E69E62F8]);
  sub_1D5CF35A0(&qword_1EDF3C838, &qword_1EDF43BA0, v20, MEMORY[0x1E69E6328]);
  v25 = sub_1D725BA1C();

  return v25;
}

uint64_t sub_1D5E72628(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for FormatContent(0) + 24));
  v4 = v3[1];
  if (v4 && *(a2 + 16) && (sub_1D5B69D90(*v3, v4), (v5 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5E7268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = sub_1D725895C();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = sub_1D72607EC();
  v6[22] = v8;
  v9 = *(v8 - 8);
  v6[23] = v9;
  v6[24] = *(v9 + 64);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v10 = sub_1D72608EC();
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v6[29] = *(v11 + 64);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v12 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, &qword_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720]);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  sub_1D5CEFE04(0, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v12);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], v12);
  v6[36] = swift_task_alloc();
  v13 = sub_1D72608BC();
  v6[37] = v13;
  v6[38] = *(v13 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E729AC, 0, 0);
}

uint64_t sub_1D5E729AC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 112);
  v5 = type metadata accessor for FormatContentPool(0);
  sub_1D5CF23F8(v4 + *(v5 + 108), v3, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v27 = *(v0 + 320);
    v28 = *(v0 + 296);
    v29 = *(v0 + 304);
    v30 = *(v0 + 104);
    v31 = *(v29 + 32);
    v31(v27, *(v0 + 288), v28);
    v31(v30, v27, v28);
    (*(v29 + 56))(v30, 0, 1, v28);
    goto LABEL_11;
  }

  v6 = *(v0 + 120);
  sub_1D5CF274C(*(v0 + 288), &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D72596FC();
  sub_1D72596DC();
  sub_1D72595EC();
  sub_1D72595DC();

  sub_1D72596CC();

  v7 = *(v0 + 368);
  v8 = type metadata accessor for FormatServiceOptions(0);
  *(v0 + 328) = v8;
  if ((*(v6 + *(v8 + 56)) & 1) == 0 && !v7)
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 128);
    v84 = *(v0 + 104);
    v86 = *(v0 + 296);
    v83 = *(*(v0 + 120) + *(v8 + 52));
    sub_1D5C384A0(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7274590;
    v12 = *v10;
    v13 = v10[1];
    v14 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1D5B7E2C0();
    *(v11 + 64) = v15;
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    v16 = type metadata accessor for FormatContent(0);
    v17 = (v10 + v16[6]);
    v18 = v17[1];
    *(v0 + 16) = *v17;
    *(v0 + 24) = v18;
    sub_1D5B5A7A0(0, &qword_1EDF43BE0, v14, MEMORY[0x1E69E6720]);

    v19 = sub_1D72620FC();
    *(v11 + 96) = v14;
    *(v11 + 104) = v15;
    *(v11 + 72) = v19;
    *(v11 + 80) = v20;
    v21 = *(v10 + v16[14]);
    sub_1D5B5A7A0(0, &qword_1EDF43BA0, v14, MEMORY[0x1E69E62F8]);
    v23 = v22;
    *(v11 + 136) = v22;
    v24 = sub_1D5CF35A0(&qword_1EDF1AF20, &qword_1EDF43BA0, v14, MEMORY[0x1E6969E28]);
    *(v11 + 144) = v24;
    *(v11 + 112) = v21;
    v25 = *(v10 + v16[15]);
    *(v11 + 176) = v23;
    *(v11 + 184) = v24;
    *(v11 + 152) = v25;

    v26 = sub_1D7262EDC();
    sub_1D725C30C("Format service will not resolve sponsorship because the content is not eligible for feed sponsorship, content=%{public}@, tag=%{public}@, iAdKeywords=%{public}@, superfeedKeywords=%{public}@", 190, 2, &dword_1D5B42000, v83, v26, v11);

    (*(v9 + 56))(v84, 1, 1, v86);
LABEL_11:

    v56 = *(v0 + 8);

    return v56();
  }

  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v34 = *(v0 + 264);
  v35 = *(v0 + 216);
  v36 = *(v0 + 224);
  v37 = *(v0 + 120);
  sub_1D5E9727C(*(v0 + 128), *(v0 + 136), v33);
  sub_1D5E974A4(v37, v34);
  sub_1D5CF23F8(v33, v32, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8]);
  if ((*(v36 + 48))(v32, 1, v35) == 1)
  {
    v38 = *(v0 + 272);
    v39 = *(v0 + 280);
    v40 = MEMORY[0x1E69E6720];
    sub_1D5CF274C(*(v0 + 264), &qword_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v41 = MEMORY[0x1E69B40D8];
    sub_1D5CF274C(v39, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v40, sub_1D5CEFE04);
    v42 = v38;
    v43 = &unk_1EDF3A9E8;
    v44 = v41;
    v45 = v40;
LABEL_10:
    sub_1D5CF274C(v42, v43, v44, v45, sub_1D5CEFE04);
    (*(*(v0 + 304) + 56))(*(v0 + 104), 1, 1, *(v0 + 296));
    goto LABEL_11;
  }

  v46 = *(v0 + 264);
  v47 = *(v0 + 256);
  v48 = *(v0 + 176);
  v49 = *(v0 + 184);
  v50 = *(*(v0 + 224) + 32);
  v50(*(v0 + 248), *(v0 + 272), *(v0 + 216));
  sub_1D5CF23F8(v46, v47, &qword_1EDF3AA10, MEMORY[0x1E69B4090]);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    v51 = *(v0 + 280);
    v53 = *(v0 + 256);
    v52 = *(v0 + 264);
    (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
    v54 = MEMORY[0x1E69B4090];
    v55 = MEMORY[0x1E69E6720];
    sub_1D5CF274C(v52, &qword_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    sub_1D5CF274C(v51, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v55, sub_1D5CEFE04);
    v42 = v53;
    v43 = &qword_1EDF3AA10;
    v44 = v54;
    v45 = v55;
    goto LABEL_10;
  }

  v76 = *(v0 + 240);
  v58 = *(v0 + 224);
  v74 = *(v0 + 248);
  v75 = *(v0 + 216);
  v59 = *(v0 + 208);
  v87 = *(v0 + 200);
  v60 = *(v0 + 184);
  v62 = *(v0 + 168);
  v61 = *(v0 + 176);
  v80 = v50;
  v63 = *(v0 + 160);
  v72 = *(v0 + 152);
  v73 = v61;
  v64 = *(v0 + 144);
  v77 = *(v0 + 192);
  v78 = *(v60 + 32);
  v78(v59, *(v0 + 256), v61);
  v85 = v64[75];
  v79 = v64[76];
  __swift_project_boxed_opaque_existential_1(v64 + 72, v85);
  sub_1D725894C();
  v65 = sub_1D725893C();
  v81 = v66;
  v82 = v65;
  *(v0 + 336) = v66;
  (*(v63 + 8))(v62, v72);
  (*(v60 + 16))(v87, v59, v61);
  (*(v58 + 16))(v76, v74, v75);
  v67 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v68 = (v77 + *(v58 + 80) + v67) & ~*(v58 + 80);
  v69 = swift_allocObject();
  *(v0 + 344) = v69;
  v78(v69 + v67, v87, v73);
  v80(v69 + v68, v76, v75);
  v88 = (*(v79 + 8) + **(v79 + 8));
  v70 = swift_task_alloc();
  *(v0 + 352) = v70;
  *v70 = v0;
  v70[1] = sub_1D5E732B0;
  v71 = *(v0 + 312);

  return v88(v71, v82, v81, sub_1D5E9D944, v69, v85, v79);
}

uint64_t sub_1D5E732B0()
{
  *(*v1 + 360) = v0;

  if (v0)
  {

    v2 = sub_1D5E737F8;
  }

  else
  {

    v2 = sub_1D5E73414;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E73414()
{
  v1 = v0[41];
  v2 = v0[15];
  v3 = v0[16];
  v4 = sub_1D726085C();
  v43 = *(v2 + *(v1 + 52));
  sub_1D5C384A0(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7274590;
  v6 = sub_1D72608DC();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D5B7E2C0();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v11 = *v3;
  v12 = v3[1];
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  v13 = (v3 + *(type metadata accessor for FormatContent(0) + 24));
  v14 = (v4 & 1) == 0;
  if (v4)
  {
    v15 = 10;
  }

  else
  {
    v15 = 8;
  }

  v16 = *v13;
  v17 = v13[1];
  v18 = 9;
  if (!v14)
  {
    v18 = 11;
  }

  v19 = 147;
  if (!v14)
  {
    v19 = 148;
  }

  v37 = v19;
  if (v14)
  {
    v20 = "Format service will resolve unfilled ad sponsorship, sponsorshipType=%{public}@, content=%{public}@, tag=%{public}@, sponsorshipKeywords=%{public}@";
  }

  else
  {
    v20 = "Format service will resolve fulfilled ad sponsorship, sponsorshipType=%{public}@, content=%{public}@, tag=%{public}@, sponsorshipKeywords=%{public}@";
  }

  v36 = v20;
  v0[v15] = v16;
  v0[v18] = v17;
  sub_1D5B5A7A0(0, &qword_1EDF43BE0, v9, MEMORY[0x1E69E6720]);

  v21 = sub_1D72620FC();
  v22 = v0[38];
  v41 = v0[37];
  v42 = v0[39];
  v38 = v0[33];
  v39 = v0[35];
  v23 = v0[31];
  v24 = v0[28];
  v34 = v0[26];
  v35 = v0[27];
  v26 = v0[22];
  v25 = v0[23];
  v40 = v0[13];
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 112) = v21;
  *(v5 + 120) = v27;
  v28 = sub_1D72608CC();
  sub_1D5B5A7A0(0, &qword_1EDF43BA0, v9, MEMORY[0x1E69E62F8]);
  *(v5 + 176) = v29;
  *(v5 + 184) = sub_1D5CF35A0(&qword_1EDF1AF20, &qword_1EDF43BA0, v9, MEMORY[0x1E6969E28]);
  *(v5 + 152) = v28;
  v30 = sub_1D7262EDC();
  sub_1D725C30C(v36, v37, 2, &dword_1D5B42000, v43, v30, v5);

  (*(v25 + 8))(v34, v26);
  (*(v24 + 8))(v23, v35);
  v31 = MEMORY[0x1E69E6720];
  sub_1D5CF274C(v38, &qword_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CF274C(v39, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v31, sub_1D5CEFE04);
  (*(v22 + 32))(v40, v42, v41);
  (*(v22 + 56))(v40, 0, 1, v41);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1D5E737F8()
{
  v24 = v0[45];
  v33 = v0[38];
  v34 = v0[37];
  v1 = v0[31];
  v28 = v0[28];
  v29 = v0[27];
  v30 = v0[33];
  v2 = v0[23];
  v26 = v0[22];
  v27 = v0[26];
  v3 = v0[16];
  v31 = v0[13];
  v32 = v0[35];
  v25 = *(v0[15] + *(v0[41] + 52));
  sub_1D5C384A0(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7279960;
  v5 = sub_1D72608DC();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v10 = *v3;
  v11 = v3[1];
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  v12 = (v3 + *(type metadata accessor for FormatContent(0) + 24));
  v13 = v12[1];
  v0[4] = *v12;
  v0[5] = v13;
  sub_1D5B5A7A0(0, &qword_1EDF43BE0, v8, MEMORY[0x1E69E6720]);

  v14 = sub_1D72620FC();
  *(v4 + 136) = v8;
  *(v4 + 144) = v9;
  *(v4 + 112) = v14;
  *(v4 + 120) = v15;
  v16 = sub_1D72608CC();
  sub_1D5B5A7A0(0, &qword_1EDF43BA0, v8, MEMORY[0x1E69E62F8]);
  *(v4 + 176) = v17;
  *(v4 + 184) = sub_1D5CF35A0(&qword_1EDF1AF20, &qword_1EDF43BA0, v8, MEMORY[0x1E6969E28]);
  v0[6] = 0;
  *(v4 + 152) = v16;
  v0[7] = 0xE000000000000000;
  v0[12] = v24;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v18 = v0[6];
  v19 = v0[7];
  *(v4 + 216) = v8;
  *(v4 + 224) = v9;
  *(v4 + 192) = v18;
  *(v4 + 200) = v19;
  v20 = sub_1D7262EDC();
  sub_1D725C30C("Format service failed to fetch ad sponsorship, sponsorshipType=%{public}@, content=%{public}@, tag=%{public}@, sponsorshipKeywords=%{public}@, error=%{public}@", 159, 2, &dword_1D5B42000, v25, v20, v4);

  (*(v2 + 8))(v27, v26);
  (*(v28 + 8))(v1, v29);
  v21 = MEMORY[0x1E69E6720];
  sub_1D5CF274C(v30, &qword_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CF274C(v32, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v21, sub_1D5CEFE04);
  (*(v33 + 56))(v31, 1, 1, v34);

  v22 = v0[1];

  return v22();
}

void *sub_1D5E73BE0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for FormatContent(0) + 28));
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v5 = sub_1D5B69D90(*v3, v4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a2 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

void *sub_1D5E73C48(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for FormatContent(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    if (a2 >> 62)
    {
      goto LABEL_20;
    }

    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = 0;
        v17 = a2 & 0xFFFFFFFFFFFFFF8;
        while ((a2 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1DA6FB460](v7, a2);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:

            return v8;
          }

LABEL_8:
          v10 = [v8 identifier];
          v11 = sub_1D726207C();
          v13 = v12;

          if (v11 == v5 && v4 == v13)
          {
            goto LABEL_18;
          }

          v15 = sub_1D72646CC();

          if (v15)
          {
            return v8;
          }

          swift_unknownObjectRelease();
          ++v7;
          if (v9 == v6)
          {
            return 0;
          }
        }

        if (v7 < *(v17 + 16))
        {
          break;
        }

        __break(1u);
LABEL_20:
        v6 = sub_1D7263BFC();
        if (!v6)
        {
          return 0;
        }
      }

      v8 = *(a2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }
  }

  return 0;
}

void *sub_1D5E73DC8(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for FormatContent(0) + 40));
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v5 = sub_1D5B69D90(*v3, v4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a2 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

uint64_t sub_1D5E73E30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FormatService.ThemePackage(0) + 24));
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5E73E7C(uint64_t a1)
{
  v2 = v1;
  sub_1D5CEFE04(0, &qword_1EDF330B0, type metadata accessor for FormatService.ThemePackage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v57 - v6;
  v68 = type metadata accessor for FormatService.ThemePackage(0);
  MEMORY[0x1EEE9AC00](v68, v8);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v57 - v13;
  v60 = MEMORY[0x1E69E7CC8];
  v61 = v12;
  v69 = MEMORY[0x1E69E7CC8];
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v63 = (v12 + 48);
  v64 = (v12 + 56);
  v66 = a1;

  v20 = 0;
  v65 = v7;
  while (1)
  {
    v21 = v20;
    if (!v17)
    {
      break;
    }

LABEL_9:
    v22 = __clz(__rbit64(v17)) | (v20 << 6);
    v23 = *(v66 + 56);
    v24 = (*(v66 + 48) + 16 * v22);
    v25 = v24[1];
    v62 = *v24;
    v26 = *(v23 + 8 * v22);
    v27 = qword_1EDF3CA50;
    v67 = v25;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDF3CA58);
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v57 - 2) = v31;

    v32 = v2;
    sub_1D62ECCD8(sub_1D5E9D924, (&v57 - 4), v26);
    sub_1D5C2AF10(&qword_1EDF43A50, 255, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
    v33 = sub_1D72626AC();

    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = v65;
      sub_1D5CEFE68(v33 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * (v34 - 1), v65, type metadata accessor for FormatService.ThemePackage);
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v35 = v65;
    }

    v17 &= v17 - 1;

    v37 = v36;
    v38 = v68;
    (*v64)(v35, v37, 1, v68);

    v39 = (*v63)(v35, 1, v38);
    v2 = v32;
    if (v39 == 1)
    {

      result = sub_1D5CF274C(v35, &qword_1EDF330B0, type metadata accessor for FormatService.ThemePackage, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }

    else
    {
      v40 = v58;
      sub_1D5CEFF38(v35, v58, type metadata accessor for FormatService.ThemePackage);
      sub_1D5CEFF38(v40, v59, type metadata accessor for FormatService.ThemePackage);
      v41 = v60[2];
      v42 = v67;
      if (v60[3] <= v41)
      {
        sub_1D6D66690(v41 + 1, 1);
      }

      v43 = v69;
      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v44 = v43 + 64;
      v60 = v43;
      v45 = -1 << *(v43 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v43 + 64 + 8 * (v46 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v45) >> 6;
        while (++v47 != v50 || (v49 & 1) == 0)
        {
          v51 = v47 == v50;
          if (v47 == v50)
          {
            v47 = 0;
          }

          v49 |= v51;
          v52 = *(v44 + 8 * v47);
          if (v52 != -1)
          {
            v48 = __clz(__rbit64(~v52)) + (v47 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v48 = __clz(__rbit64((-1 << v46) & ~*(v43 + 64 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v53 = v59;
      v54 = v60;
      v55 = (v60[6] + 16 * v48);
      v56 = v61;
      *v55 = v62;
      v55[1] = v42;
      result = sub_1D5CEFF38(v53, v54[7] + *(v56 + 72) * v48, type metadata accessor for FormatService.ThemePackage);
      ++v54[2];
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return v60;
    }

    v17 = *(v14 + 8 * v20);
    ++v21;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D5E74460(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v116 = &v86 - v5;
  v114 = sub_1D72585BC();
  v6 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v7);
  v98 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D7257C7C();
  v113 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebArchive(0);
  v109 = *(v12 - 8);
  v110 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE04(0, qword_1EDF25A60, type metadata accessor for FormatWebArchiveResource.Resolved, v2);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v86 - v18;
  v20 = type metadata accessor for FormatWebArchiveResource.Resolved(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v91 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v97 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v90 = &v86 - v29;
  sub_1D5E9B2C4(0, &qword_1EDF1B728, type metadata accessor for WebArchive, MEMORY[0x1E69E6158], "key value ");
  v112 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v92 = (&v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33, v34);
  v115 = &v86 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v106 = &v86 - v38;
  v40 = a1 + 64;
  v39 = *(a1 + 64);
  v41 = 1 << *(a1 + 32);
  v93 = MEMORY[0x1E69E7CC8];
  v117 = MEMORY[0x1E69E7CC8];
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & v39;
  v44 = (v41 + 63) >> 6;
  v104 = "web archives for %{public}@";
  v103 = (v6 + 48);
  v96 = (v6 + 32);
  v95 = (v6 + 16);
  v94 = (v6 + 8);
  v102 = (v113 + 8);
  v101 = (v21 + 56);
  v89 = v21;
  v100 = (v21 + 48);
  v113 = a1;

  v46 = 0;
  v99 = a1 + 64;
  v105 = v44;
  v107 = v20;
  v108 = v19;
  while (1)
  {
    v47 = v46;
    if (!v43)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v48 = v11;
      v46 = v47;
LABEL_11:
      v49 = __clz(__rbit64(v43)) | (v46 << 6);
      v50 = v112;
      v51 = (*(v113 + 48) + 16 * v49);
      v53 = *v51;
      v52 = v51[1];
      v54 = v106;
      sub_1D5CEFE68(*(v113 + 56) + *(v109 + 72) * v49, &v106[*(v112 + 48)], type metadata accessor for WebArchive);
      *v54 = v53;
      v54[1] = v52;
      v55 = v115;
      sub_1D5E9DAC8(v54, v115, &qword_1EDF1B728, type metadata accessor for WebArchive, MEMORY[0x1E69E6158], "key value ");
      v56 = (v55 + *(v50 + 48));
      v57 = *v56;
      v58 = v56[1];
      sub_1D5CEFE68(v56, v15, type metadata accessor for WebArchive);

      v11 = v48;
      sub_1D7257C6C();
      sub_1D7257C2C();
      v59 = sub_1D725841C();
      MEMORY[0x1DA6EF280](v59);

      sub_1D7257C5C();
      v60 = v116;
      sub_1D7257BDC();
      if ((*v103)(v60, 1, v114) == 1)
      {

        sub_1D5EA08F4(v15, type metadata accessor for WebArchive);
        (*v102)(v48, v111);
        sub_1D5CF274C(v116, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v61 = 1;
        v63 = v107;
        v62 = v108;
      }

      else
      {
        v64 = v98;
        v65 = v114;
        (*v96)(v98, v116, v114);
        v66 = v97;
        *v97 = v57;
        *(v66 + 1) = v58;
        v63 = v107;
        (*v95)(&v66[*(v107 + 20)], v64, v65);
        sub_1D725849C();
        sub_1D5EA08F4(v15, type metadata accessor for WebArchive);
        (*v94)(v64, v65);
        (*v102)(v11, v111);
        v67 = v66;
        v62 = v108;
        sub_1D5CEFF38(v67, v108, type metadata accessor for FormatWebArchiveResource.Resolved);
        v61 = 0;
      }

      v43 &= v43 - 1;
      (*v101)(v62, v61, 1, v63);
      v68 = (*v100)(v62, 1, v63);
      v44 = v105;
      if (v68 != 1)
      {
        break;
      }

      sub_1D5E9DB3C(v115, &qword_1EDF1B728, type metadata accessor for WebArchive, MEMORY[0x1E69E6158], "key value ");
      result = sub_1D5CF274C(v62, qword_1EDF25A60, type metadata accessor for FormatWebArchiveResource.Resolved, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v47 = v46;
      v40 = v99;
      if (!v43)
      {
LABEL_7:
        while (1)
        {
          v46 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v46 >= v44)
          {

            return v93;
          }

          v43 = *(v40 + 8 * v46);
          ++v47;
          if (v43)
          {
            v48 = v11;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    v69 = v90;
    sub_1D5CEFF38(v62, v90, type metadata accessor for FormatWebArchiveResource.Resolved);
    sub_1D5E9DAC8(v115, v92, &qword_1EDF1B728, type metadata accessor for WebArchive, MEMORY[0x1E69E6158], "key value ");
    sub_1D5CEFF38(v69, v91, type metadata accessor for FormatWebArchiveResource.Resolved);
    v70 = v93[2];
    if (v93[3] <= v70)
    {
      sub_1D6D66FFC(v70 + 1, 1);
    }

    v71 = v117;
    v72 = *v92;
    v88 = v92[1];
    sub_1D7264A0C();
    v87 = v72;
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v73 = v71 + 64;
    v93 = v71;
    v74 = -1 << *(v71 + 32);
    v75 = result & ~v74;
    v76 = v75 >> 6;
    if (((-1 << v75) & ~*(v71 + 64 + 8 * (v75 >> 6))) == 0)
    {
      break;
    }

    v77 = __clz(__rbit64((-1 << v75) & ~*(v71 + 64 + 8 * (v75 >> 6)))) | v75 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v82 = *(v112 + 48);
    *(v73 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v77;
    v83 = v93;
    v84 = (v93[6] + 16 * v77);
    v85 = v88;
    *v84 = v87;
    v84[1] = v85;
    sub_1D5CEFF38(v91, v83[7] + *(v89 + 72) * v77, type metadata accessor for FormatWebArchiveResource.Resolved);
    ++v83[2];
    result = sub_1D5EA08F4(v92 + v82, type metadata accessor for WebArchive);
    v40 = v99;
  }

  v78 = 0;
  v79 = (63 - v74) >> 6;
  while (++v76 != v79 || (v78 & 1) == 0)
  {
    v80 = v76 == v79;
    if (v76 == v79)
    {
      v76 = 0;
    }

    v78 |= v80;
    v81 = *(v73 + 8 * v76);
    if (v81 != -1)
    {
      v77 = __clz(__rbit64(~v81)) + (v76 << 6);
      goto LABEL_29;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D5E74FD8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = &v66 - v5;
  v84 = sub_1D72585BC();
  v6 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84 - 8, v7);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE04(0, qword_1EDF29AF0, type metadata accessor for FormatContentResource.Resolved, v2);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v66 - v11;
  v13 = type metadata accessor for FormatContentResource.Resolved(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v74 = (&v66 - v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v68 = &v66 - v22;
  v24 = a1 + 64;
  v23 = *(a1 + 64);
  v25 = 1 << *(a1 + 32);
  v70 = MEMORY[0x1E69E7CC8];
  v89 = MEMORY[0x1E69E7CC8];
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v80 = (v6 + 48);
  v72 = (v6 + 32);
  v29 = (v21 + 56);
  v67 = v21;
  v79 = (v21 + 48);
  v82 = a1;

  v31 = 0;
  v78 = v28;
  v75 = v12;
  v73 = a1 + 64;
  v71 = v29;
  while (2)
  {
    v32 = v31;
    if (!v27)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v31 = v32;
LABEL_10:
      v33 = __clz(__rbit64(v27)) | (v31 << 6);
      v34 = *(v82 + 56);
      v35 = (*(v82 + 48) + 16 * v33);
      v36 = v35[1];
      v77 = *v35;
      v37 = *(v34 + 8 * v33);
      v86 = v36;

      v85 = v37;
      v38 = [v85 resourceID];
      v39 = sub_1D726207C();
      v41 = v40;

      v87 = 0x7373612D7377656ELL;
      v88 = 0xEA00000000007465;
      MEMORY[0x1DA6F9910](3092282, 0xE300000000000000);
      v83 = v39;
      MEMORY[0x1DA6F9910](v39, v41);
      v42 = v81;
      sub_1D725855C();

      if ((*v80)(v42, 1, v84) == 1)
      {

        sub_1D5CF274C(v42, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v43 = 1;
      }

      else
      {
        v44 = v42;
        v45 = *v72;
        v46 = v76;
        v47 = v84;
        (*v72)(v76, v44, v84);
        v48 = v74;
        *v74 = v83;
        v48[1] = v41;
        v49 = v47;
        v12 = v75;
        v45(v48 + *(v13 + 20), v46, v49);
        v29 = v71;
        v50 = v48;
        v24 = v73;
        sub_1D5CEFF38(v50, v12, type metadata accessor for FormatContentResource.Resolved);
        v43 = 0;
      }

      v27 &= v27 - 1;
      (*v29)(v12, v43, 1, v13);

      if ((*v79)(v12, 1, v13) != 1)
      {
        break;
      }

      result = sub_1D5CF274C(v12, qword_1EDF29AF0, type metadata accessor for FormatContentResource.Resolved, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v32 = v31;
      v28 = v78;
      if (!v27)
      {
LABEL_7:
        while (1)
        {
          v31 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v31 >= v28)
          {

            return v70;
          }

          v27 = *(v24 + 8 * v31);
          ++v32;
          if (v27)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    v51 = v86;
    v52 = v68;
    sub_1D5CEFF38(v12, v68, type metadata accessor for FormatContentResource.Resolved);
    sub_1D5CEFF38(v52, v69, type metadata accessor for FormatContentResource.Resolved);
    v53 = v70[2];
    if (v70[3] <= v53)
    {
      sub_1D6D67050(v53 + 1, 1);
    }

    v54 = v89;
    sub_1D7264A0C();
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v55 = v54 + 64;
    v70 = v54;
    v56 = -1 << *(v54 + 32);
    v57 = result & ~v56;
    v58 = v57 >> 6;
    if (((-1 << v57) & ~*(v54 + 64 + 8 * (v57 >> 6))) != 0)
    {
      v59 = __clz(__rbit64((-1 << v57) & ~*(v54 + 64 + 8 * (v57 >> 6)))) | v57 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
      *(v55 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      v64 = v70;
      v65 = (v70[6] + 16 * v59);
      *v65 = v77;
      v65[1] = v51;
      result = sub_1D5CEFF38(v69, v64[7] + *(v67 + 72) * v59, type metadata accessor for FormatContentResource.Resolved);
      ++v64[2];
      v28 = v78;
      continue;
    }

    break;
  }

  v60 = 0;
  v61 = (63 - v56) >> 6;
  while (++v58 != v61 || (v60 & 1) == 0)
  {
    v62 = v58 == v61;
    if (v58 == v61)
    {
      v58 = 0;
    }

    v60 |= v62;
    v63 = *(v55 + 8 * v58);
    if (v63 != -1)
    {
      v59 = __clz(__rbit64(~v63)) + (v58 << 6);
      goto LABEL_29;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

double sub_1D5E75754@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *(a2 + *(type metadata accessor for FormatServiceOptions(0) + 52));
  sub_1D5C384A0(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7279970;
  v10 = *a3;
  v9 = a3[1];
  v11 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D5B7E2C0();
  *(v8 + 64) = v12;
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  v13 = *(a1 + *(type metadata accessor for FormatService.ThemePackage(0) + 24));
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 72) = v14;
  *(v8 + 80) = v15;

  v16 = sub_1D5E7587C();
  *(v8 + 136) = v11;
  *(v8 + 144) = v12;
  *(v8 + 112) = v16;
  *(v8 + 120) = v17;
  v18 = sub_1D7262EDC();
  sub_1D725C30C("FormatService content %{public}@ resolved theme package %{public}@ from reference %{public}@", 92, 2, &dword_1D5B42000, v7, v18, v8);

  *a4 = v13;

  return result;
}

unint64_t sub_1D5E7587C()
{
  sub_1D5CEFE04(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v32 - v3;
  v5 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE68(v0, v17, sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      sub_1D5EA08F4(&v17[*(v19 + 48)], type metadata accessor for FormatMetadata);
      sub_1D5EA08F4(v17, type metadata accessor for FormatPackage);
      return 0x6E693D657079747BLL;
    }

    else
    {
      return 0x69623D657079747BLL;
    }
  }

  else
  {
    sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v22 = *(v21 + 48);
    (*(v10 + 32))(v13, v17, v9);
    sub_1D5CEFF38(&v17[v22], v8, type metadata accessor for FormatMetadata);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1D7263D4C();

    v32 = 0xD000000000000013;
    v33 = 0x80000001D73BEEB0;
    sub_1D5CF23F8(v8 + *(v5 + 28), v4, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v23 = sub_1D725BD1C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      v25 = 0x3E656E6F6E3CLL;
      sub_1D5CF274C(v4, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v26 = 0xE600000000000000;
    }

    else
    {
      v25 = sub_1D725BC9C();
      v26 = v27;
      (*(v24 + 8))(v4, v23);
    }

    MEMORY[0x1DA6F9910](v25, v26);

    MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
    if (v8[1])
    {
      v28 = *v8;
      v29 = v8[1];
    }

    else
    {
      v28 = 0x3E656E6F6E3CLL;
      v29 = 0xE600000000000000;
    }

    MEMORY[0x1DA6F9910](v28, v29);

    MEMORY[0x1DA6F9910](0x3D6C7275202CLL, 0xE600000000000000);
    v30 = sub_1D72583DC();
    MEMORY[0x1DA6F9910](v30);

    MEMORY[0x1DA6F9910](125, 0xE100000000000000);
    v31 = v32;
    sub_1D5EA08F4(v8, type metadata accessor for FormatMetadata);
    (*(v10 + 8))(v13, v9);
    return v31;
  }
}

uint64_t sub_1D5E75DDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v95 = a6;
  v98 = a7;
  v92 = a8;
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E9B290(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v91 - v24;
  sub_1D5CEFE68(a2, &v91 - v24, sub_1D5C2AB28);
  *&v25[*(v18 + 56)] = a3;
  v99 = v25;
  sub_1D5CEFE68(v25, v21, sub_1D5E9B290);
  v26 = *&v21[*(v18 + 56)];
  sub_1D5CEFF38(v21, v16, sub_1D5C2AB28);
  v27 = *(type metadata accessor for FormatServiceOptions(0) + 52);
  v97 = a4;
  v94 = *&a4[v27];
  sub_1D5C384A0(0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7274590;
  v29 = *a5;
  v30 = a5[1];
  v31 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v32 = sub_1D5B7E2C0();
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v33 = *a1;
  v34 = a1[1];
  *(v28 + 96) = v31;
  *(v28 + 104) = v32;
  *(v28 + 64) = v32;
  *(v28 + 72) = v33;
  v91 = v33;
  *(v28 + 80) = v34;
  v35 = *(v26 + 16);
  v36 = *(v26 + 24);
  *(v28 + 136) = v31;
  *(v28 + 144) = v32;
  *(v28 + 112) = v35;
  *(v28 + 120) = v36;

  v93 = v34;

  v100 = v16;
  v37 = sub_1D5E7587C();
  *(v28 + 176) = v31;
  *(v28 + 184) = v32;
  v38 = v95;
  *(v28 + 152) = v37;
  *(v28 + 160) = v39;
  v40 = sub_1D7262EDC();
  sub_1D725C30C("FormatService content %{public}@ resolved subgroup %{public}@ with layout package %{public}@ from reference %{public}@", 118, 2, &dword_1D5B42000, v94, v40, v28);

  v41 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  LODWORD(v41) = *(v26 + v41);
  v42 = type metadata accessor for FormatContentSubgroup(0);
  v43 = *(a1 + v42[9]);
  v102 = v38;
  if (v41 != 4)
  {
    v66 = v96;
    sub_1D7196134(sub_1D5E9D8AC, v101, v43);
    v68 = v67;
    MEMORY[0x1EEE9AC00](v67, v69);
    *(&v91 - 4) = v26;
    *(&v91 - 3) = v38;
    v71 = v97;
    v70 = v98;
    *(&v91 - 2) = v97;
    *(&v91 - 1) = v70;
    v73 = sub_1D5FBBD68(sub_1D5E9D8C8, (&v91 - 6), v72);
    if (!v66)
    {
      v75 = v73;
      MEMORY[0x1EEE9AC00](v73, v74);
      *(&v91 - 4) = v26;
      *(&v91 - 3) = v38;
      *(&v91 - 2) = v71;
      *(&v91 - 1) = v70;
      v97 = sub_1D5FBBF90(sub_1D5E9D8E8, (&v91 - 6), v76);
      v94 = v75;
      v78 = *(a1 + v42[6]);
      MEMORY[0x1EEE9AC00](v97, v79);
      *(&v91 - 2) = v38;

      sub_1D7195F4C(sub_1D5E9D908, (&v91 - 4), v78);
      v96 = v80;
      v81 = v42[7];
      v98 = a1;
      v82 = *(a1 + v81);
      MEMORY[0x1EEE9AC00](v80, v83);
      *(&v91 - 2) = v84;

      sub_1D7195E7C(sub_1D5E9B334, (&v91 - 4), v78);
      v63 = sub_1D5BA8750(v85, v82);

      v103 = v94;
      sub_1D5D1E934(v68);
      sub_1D5B5A7A0(0, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
      sub_1D5CF35A0(&unk_1EDF1B290, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E6328]);
      v64 = sub_1D72623CC();
      sub_1D5EA08F4(v100, sub_1D5C2AB28);
      sub_1D5EA08F4(v99, sub_1D5E9B290);

      v65 = v26 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
      goto LABEL_7;
    }

LABEL_5:

    sub_1D5EA08F4(v100, sub_1D5C2AB28);
    return sub_1D5EA08F4(v99, sub_1D5E9B290);
  }

  v44 = v96;
  sub_1D7196134(sub_1D5EA21D0, v101, v43);
  v46 = v45;
  MEMORY[0x1EEE9AC00](v45, v47);
  *(&v91 - 4) = v26;
  *(&v91 - 3) = v38;
  v49 = v97;
  v48 = v98;
  *(&v91 - 2) = v97;
  *(&v91 - 1) = v48;
  v51 = sub_1D5FBBD68(sub_1D5EA2238, (&v91 - 6), v50);
  if (v44)
  {
    goto LABEL_5;
  }

  v53 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  *(&v91 - 4) = v26;
  *(&v91 - 3) = v38;
  *(&v91 - 2) = v49;
  *(&v91 - 1) = v48;
  v97 = sub_1D5FBBF90(sub_1D5EA2250, (&v91 - 6), v54);
  v94 = v53;
  v55 = *(a1 + v42[6]);
  MEMORY[0x1EEE9AC00](v97, v56);
  *(&v91 - 2) = v38;

  sub_1D7195F4C(sub_1D5EA21E8, (&v91 - 4), v55);
  v96 = v57;
  v58 = v42[7];
  v98 = a1;
  v59 = *(a1 + v58);
  MEMORY[0x1EEE9AC00](v57, v60);
  *(&v91 - 2) = v61;

  sub_1D7195E7C(sub_1D5EA2200, (&v91 - 4), v55);
  v63 = sub_1D5BA8750(v62, v59);

  v103 = v94;
  sub_1D5D1E934(v46);
  sub_1D5B5A7A0(0, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
  sub_1D5CF35A0(&unk_1EDF1B290, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E6328]);
  v64 = sub_1D72623CC();
  sub_1D5EA08F4(v100, sub_1D5C2AB28);
  sub_1D5EA08F4(v99, sub_1D5E9B290);

  v65 = v26 & 0xFFFFFFFFFFFFFF8;
LABEL_7:
  v86 = *(v98 + v42[11]);
  v88 = v91;
  v87 = v92;
  v89 = v93;
  *v92 = v91;
  v87[1] = v89;
  v87[2] = v88;
  v87[3] = v89;
  v87[4] = v65;
  v90 = v97;
  v87[5] = v96;
  v87[6] = v63;
  v87[7] = v64;
  v87[8] = v90;
  v87[9] = v86;
}

uint64_t sub_1D5E766CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatWebEmbed.Resolved(0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for FormatContent(0);
  v11 = (a1 + *(result + 36));
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = MEMORY[0x1E69E7CC0];
    v32 = MEMORY[0x1E69E7CC0];
    v15 = *(a2 + 16);
    if (v15)
    {
      v25 = a3;
      v16 = (a2 + 32);
      do
      {
        v17 = v16[1];
        v30[0] = *v16;
        v30[1] = v17;
        v18 = v16[4];
        *&v31[16] = v16[3];
        *&v31[32] = v18;
        *v31 = v16[2];
        v28[1] = v17;
        *(v29 + 8) = *&v31[8];
        *(&v29[1] + 8) = *&v31[24];
        *&v29[0] = *v31 & 0x7FFFFFFFFFFFFFFFLL;
        *(&v29[2] + 1) = *(&v18 + 1);
        v27[7] = v29[0];
        v27[8] = v29[1];
        v27[9] = v29[2];
        v28[0] = v30[0];
        v27[5] = v30[0];
        v27[6] = v17;
        sub_1D5CE9930(v30, v27);
        sub_1D5CE9930(v30, v27);
        sub_1D5CE9930(v30, v27);
        FormatContentSubgroup.Resolved.webEmbeds.getter();
        v20 = v19;
        sub_1D5CB71DC(v28);
        sub_1D5CEC67C(v30);
        sub_1D5CEC67C(v30);
        result = sub_1D5CF23B0(v20);
        v16 += 5;
        --v15;
      }

      while (v15);
      v14 = v32;
      a3 = v25;
    }

    v21 = *(v14 + 16);
    if (v21)
    {
      v22 = 0;
      while (v22 < *(v14 + 16))
      {
        sub_1D5CEFE68(v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v9, type metadata accessor for FormatWebEmbed.Resolved);
        v23 = *v9 == v13 && v12 == v9[1];
        if (v23 || (sub_1D72646CC() & 1) != 0)
        {

          sub_1D5CEFF38(v9, a3, type metadata accessor for FormatWebEmbed.Resolved);
          return (*(v26 + 56))(a3, 0, 1, v6);
        }

        ++v22;
        result = sub_1D5EA08F4(v9, type metadata accessor for FormatWebEmbed.Resolved);
        if (v21 == v22)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:

      return (*(v26 + 56))(a3, 1, 1, v6);
    }
  }

  else
  {
    v24 = *(v26 + 56);

    return v24(a3, 1, 1, v6);
  }

  return result;
}

uint64_t sub_1D5E769F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D5CEFE04(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
    v11 = (type metadata accessor for FormatOption(0) - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    v13 = (v10 + v12);
    *v13 = v4;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = 1;
    v14 = v11[9];
    v15 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v15 - 8) + 56))(v10 + v12 + v14, 1, 1, v15);
  }

  else
  {
    v7 = *(a2 + 88);
    if (!*(v7 + 16) || (v8 = sub_1D5B69D90(*a1, v5), (v9 & 1) == 0))
    {
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v10 = *(*(v7 + 56) + (v8 << 6) + 48);
  }

LABEL_8:
  *a3 = v10;
  return sub_1D5CFCFAC(v6);
}

uint64_t FormatService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  __swift_destroy_boxed_opaque_existential_1((v0 + 240));
  __swift_destroy_boxed_opaque_existential_1((v0 + 280));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));
  __swift_destroy_boxed_opaque_existential_1((v0 + 392));
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));

  __swift_destroy_boxed_opaque_existential_1((v0 + 496));
  __swift_destroy_boxed_opaque_existential_1((v0 + 536));
  __swift_destroy_boxed_opaque_existential_1((v0 + 576));
  __swift_destroy_boxed_opaque_existential_1((v0 + 616));
  __swift_destroy_boxed_opaque_existential_1((v0 + 656));
  __swift_destroy_boxed_opaque_existential_1((v0 + 696));
  return v0;
}

uint64_t FormatService.__deallocating_deinit()
{
  FormatService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5E76CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5BAF844;

  return FormatService.resolveResult(content:pool:options:)(a1, a2, a3);
}

uint64_t sub_1D5E76D88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5E74460(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D5E76DB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5E74FD8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D5E76DE0(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v29 = a3;
    v30 = a2;
    v31 = sub_1D7263BFC();
    a2 = v30;
    a3 = v29;
    if (!v31)
    {
      goto LABEL_4;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:

    return v4;
  }

  v6 = *(a2 + 64);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  v7 = a3;
  v32 = *(a2 + *(type metadata accessor for FormatServiceOptions(0) + 52));
  sub_1D5C384A0(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7270C10;
  v10 = *v7;
  v9 = v7[1];
  v34 = v10;
  v11 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D5B7E2C0();
  *(v8 + 64) = v12;
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  v33 = v9;
  swift_bridgeObjectRetain_n();
  v13 = FCTagFilterOptionsToNSString();
  v14 = sub_1D726207C();
  v16 = v15;

  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 72) = v14;
  *(v8 + 80) = v16;
  v17 = sub_1D7262EDC();
  sub_1D725C30C("Format service content %{public}@ creating tag filter with options %{public}@", 77, 2, &dword_1D5B42000, v32, v17, v8);

  v18 = objc_opt_self();
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  v19 = sub_1D726265C();
  v20 = [v18 filterTags:v19 options:v6 context:*(v3 + 152)];

  v21 = sub_1D726267C();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7279970;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = v12;
  *(v22 + 32) = v34;
  *(v22 + 40) = v33;
  if (v5)
  {
    v23 = sub_1D7263BFC();
  }

  else
  {
    v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x1E69E6530];
  v25 = MEMORY[0x1E69E65A8];
  *(v22 + 96) = MEMORY[0x1E69E6530];
  *(v22 + 104) = v25;
  *(v22 + 72) = v23;
  if (v21 >> 62)
  {
    v26 = sub_1D7263BFC();
  }

  else
  {
    v26 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v22 + 136) = v24;
  *(v22 + 144) = v25;
  *(v22 + 112) = v26;
  v27 = sub_1D7262EDC();
  sub_1D725C30C("Format service content %{public}@ finished filtering tags from %ld to %ld", 73, 2, &dword_1D5B42000, v32, v27, v22);

  return v21;
}

uint64_t sub_1D5E770A4(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1D5E780A8(a4, a1);
  v9 = v8;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return v9;
  }

  if (!sub_1D7263BFC())
  {
    return v9;
  }

LABEL_3:
  v56 = v9;
  v64 = a1;
  v10 = *(a2 + 56);
  v11 = type metadata accessor for FormatServiceOptions(0);
  v65 = *(a2 + *(v11 + 52));
  sub_1D5C384A0(0);
  v63 = v12;
  v13 = swift_allocObject();
  v60 = xmmword_1D7279970;
  *(v13 + 16) = xmmword_1D7279970;
  v58 = a3;
  v14 = *a3;
  v15 = a3[1];
  v16 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D5B7E2C0();
  *(v13 + 64) = v17;
  v61 = v15;
  v62 = v14;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  swift_bridgeObjectRetain_n();
  v55 = v10;
  v18 = FCFeedFilterOptionsToNSString();
  v19 = sub_1D726207C();
  v21 = v20;

  *(v13 + 96) = v16;
  *(v13 + 104) = v17;
  v59 = v17;
  *(v13 + 72) = v19;
  *(v13 + 80) = v21;
  v22 = *(v11 + 44);
  v57 = a2;
  v23 = *(a2 + v22);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E65A8];
  *(v13 + 136) = MEMORY[0x1E69E6530];
  *(v13 + 144) = v25;
  *(v13 + 112) = v24;
  sub_1D7262EDC();
  v26 = v65;
  sub_1D725C30C("Format service content %{public}@ creating headline filter transform with options %{public}@ and deduping against %ld headlines", 127, 2, &dword_1D5B42000);

  v27 = *(v4 + 152);
  v54 = [objc_msgSend(v27 configurationManager)];
  swift_unknownObjectRelease();
  v28 = *(v23 + 16);
  if (!v28)
  {
LABEL_6:
    v33 = objc_opt_self();
    v34 = MEMORY[0x1E69E6158];
    v35 = sub_1D726265C();

    v36 = [v33 transformationWithFilterOptions:v55 configuration:v54 context:v27 otherArticleIDs:v35];
    swift_unknownObjectRelease();

    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    v37 = sub_1D726265C();

    v38 = [v36 transformHeadlinesWithResult_];

    sub_1D5B5A498(0, &qword_1EDF1A758, 0x1E69B52F0);
    v39 = sub_1D726267C();

    MEMORY[0x1EEE9AC00](v40, v41);
    v53[2] = v57;
    v53[3] = v58;
    v42 = sub_1D5FBBBBC(sub_1D5E9E774, v53, v39);

    v66 = v42;
    sub_1D5B9EE48(0);
    sub_1D5C2AF10(&qword_1EDF1AE70, 255, sub_1D5B9EE48, MEMORY[0x1E69E6328]);
    v9 = sub_1D72623CC();

    v43 = swift_allocObject();
    *(v43 + 16) = v60;
    v44 = v59;
    *(v43 + 56) = v34;
    *(v43 + 64) = v44;
    v45 = v64;
    v46 = v64 >> 62;
    v47 = v61;
    *(v43 + 32) = v62;
    *(v43 + 40) = v47;
    if (v46)
    {
      v48 = sub_1D7263BFC();
    }

    else
    {
      v48 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = MEMORY[0x1E69E6530];
    v50 = MEMORY[0x1E69E65A8];
    *(v43 + 96) = MEMORY[0x1E69E6530];
    *(v43 + 104) = v50;
    *(v43 + 72) = v48;
    if (v9 >> 62)
    {
      v51 = sub_1D7263BFC();
    }

    else
    {
      v51 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v43 + 136) = v49;
    *(v43 + 144) = v50;
    *(v43 + 112) = v51;
    v52 = sub_1D7262EDC();
    sub_1D725C30C("Format service content %{public}@ finished filtering headlines from %ld to %ld", 78, 2, &dword_1D5B42000, v26, v52, v43);

    return v9;
  }

  v29 = sub_1D5B9A6D8(*(v23 + 16), 0);
  v30 = sub_1D5B9A6EC(&v66, v29 + 4, v28, v23);
  v31 = v66;

  result = sub_1D5B87E38(v31);
  if (v30 == v28)
  {
    v26 = v65;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E775A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E775CC, 0, 0);
}

uint64_t sub_1D5E775CC()
{
  v16 = v0;
  v1 = **(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = v2[15];
    v5 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v4);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = objc_opt_self();

    if (v7 == 1)
    {
      if (v6 == 0.0)
      {
        v9 = [v8 defaultCachePolicy];
      }

      else
      {
        v9 = [v8 cachedOnlyCachePolicy];
      }

LABEL_14:
      v13 = v9;
      *(v0 + 56) = (v5[3])(v1, v13, v4, v5);

      v14 = swift_task_alloc();
      *(v0 + 64) = v14;
      *v14 = v0;
      v14[1] = sub_1D5E7780C;

      return MEMORY[0x1EEE44EE0](v0 + 16);
    }

LABEL_8:
    v9 = [v8 cachePolicyWithSoftMaxAge_];
    goto LABEL_14;
  }

  v4 = *(v0 + 32);
  v1 = *(v4 + 16);
  if (v1)
  {
    v10 = sub_1D5C38490(*(v4 + 16), 0);
    v5 = sub_1D5C38498(v15, v10 + 4, v1, v4);
    v8 = v15[0];
    v6 = *&v15[1];

    sub_1D5B87E38(v8);
    if (v5 != v1)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1D5E7780C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5E77A38;
  }

  else
  {

    v2 = sub_1D5E77928;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E77928()
{
  v12 = v0;
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v1 + 16);
  if (v3)
  {
    v10 = v0[2];
    v4 = sub_1D5C38490(v3, 0);
    v5 = sub_1D5C38498(&v11, v4 + 4, v3, v1);
    v6 = v11;

    result = sub_1D5B87E38(v6);
    if (v5 != v3)
    {
      __break(1u);
      return result;
    }

    v2 = v10;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v11 = v4;
  sub_1D69856DC(v2);
  v8 = v11;
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1D5E77A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E77A9C(void *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v33 = a1;
  v34 = a2;
  v13 = type metadata accessor for FormatServiceOptions(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  v19 = a3[1];
  v20 = *a4;
  sub_1D5CEFE68(a6, v17, type metadata accessor for FormatServiceOptions);
  v21 = sub_1D5E770A4(v20, v17, a7, a8);
  sub_1D5EA08F4(v17, type metadata accessor for FormatServiceOptions);
  v22 = *(a6 + *(v14 + 60));
  sub_1D5C384A0(0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7279970;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1D5B7E2C0();
  *(v23 + 32) = v18;
  *(v23 + 40) = v19;
  if (v20 >> 62)
  {
    v24 = sub_1D7263BFC();
  }

  else
  {
    v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x1E69E6530];
  v26 = MEMORY[0x1E69E65A8];
  *(v23 + 96) = MEMORY[0x1E69E6530];
  *(v23 + 104) = v26;
  *(v23 + 72) = v24;
  if (v21 >> 62)
  {
    v27 = sub_1D7263BFC();
  }

  else
  {
    v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v23 + 136) = v25;
  *(v23 + 144) = v26;
  *(v23 + 112) = v27;
  v28 = v22;

  v29 = sub_1D7262EDC();
  sub_1D725C30C("Format service resolved tag feed %{public}@ with %ld filtered to %ld headlines", 78, 2, &dword_1D5B42000, v28, v29, v23);

  v31 = v33;
  v30 = v34;
  *v33 = v18;
  v31[1] = v19;
  *v30 = v21;
}

uint64_t sub_1D5E77CB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5E77D10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v4 = a4;
    v40 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      goto LABEL_42;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v32)
    {
      v6 = 0;
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      v37 = a1 & 0xC000000000000001;
      v34 = a1;
      v35 = a1 + 32;
      v7 = v4 + 56;
      while (1)
      {
        if (v37)
        {
          a1 = MEMORY[0x1DA6FB460](v6, v34, a3);
        }

        else
        {
          if (v6 >= *(v36 + 16))
          {
            goto LABEL_39;
          }

          a1 = *(v35 + 8 * v6);
        }

        v8 = a1;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v10 = [a1 identifier];
        v11 = sub_1D726207C();
        v13 = v12;

        if (*(v4 + 16))
        {
          sub_1D7264A0C();
          sub_1D72621EC();
          v14 = sub_1D7264A5C();
          v15 = -1 << *(v4 + 32);
          v16 = v14 & ~v15;
          if ((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = ~v15;
            while (1)
            {
              v18 = (*(v4 + 48) + 16 * v16);
              v19 = *v18 == v11 && v18[1] == v13;
              if (v19 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v16 = (v16 + 1) & v17;
              if (((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            goto LABEL_6;
          }
        }

LABEL_20:

        v20 = v38[81];
        __swift_project_boxed_opaque_existential_1(v38 + 77, v38[80]);
        v21 = *(v20 + 24);
        v8 = v8;
        v22 = v21();

        if (v22)
        {
LABEL_6:

          if (v6 == i)
          {
            return v40;
          }
        }

        else
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          a1 = sub_1D7263EAC();
          if (v6 == i)
          {
            return v40;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v32 = a1;
      i = sub_1D7263BFC();
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      v33 = a1;
      v24 = sub_1D7263BFC();
      a1 = v33;
      if (!v24)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    v25 = 0;
    v26 = a1 & 0xC000000000000001;
    v4 = a1;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v26)
      {
        a1 = MEMORY[0x1DA6FB460](v25, v4, a3);
      }

      else
      {
        if (v25 >= *(v27 + 16))
        {
          goto LABEL_41;
        }

        a1 = *(v4 + 8 * v25 + 32);
      }

      v28 = a1;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_40;
      }

      v30 = v38[80];
      v31 = v38[81];
      __swift_project_boxed_opaque_existential_1(v38 + 77, v30);
      if ((*(v31 + 24))(v28, v30, v31))
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        a1 = sub_1D7263EAC();
      }

      ++v25;
    }

    while (v29 != v24);
    return v39;
  }
}

unint64_t sub_1D5E780A8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (*(a1 + 16))
  {
    v23 = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
      goto LABEL_27;
    }

    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        v21 = v2 & 0xFFFFFFFFFFFFFF8;
        v22 = v2 & 0xC000000000000001;
        v20 = v2;
        v2 += 32;
        v6 = a1 + 56;
        while (v22)
        {
          v7 = MEMORY[0x1DA6FB460](v5, v20);
          v8 = __OFADD__(v5++, 1);
          if (v8)
          {
LABEL_23:
            __break(1u);
            return v23;
          }

LABEL_9:
          v9 = [v7 identifier];
          v10 = sub_1D726207C();
          v12 = v11;

          if (*(a1 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v13 = sub_1D7264A5C(), v14 = -1 << *(a1 + 32), v15 = v13 & ~v14, ((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
          {
            v16 = ~v14;
            while (1)
            {
              v17 = (*(a1 + 48) + 16 * v15);
              v18 = *v17 == v10 && v17[1] == v12;
              if (v18 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v15 = (v15 + 1) & v16;
              if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

            swift_unknownObjectRelease();

            if (v5 == v4)
            {
              return v23;
            }
          }

          else
          {
LABEL_5:

            sub_1D7263E9C();
            sub_1D7263EDC();
            sub_1D7263EEC();
            sub_1D7263EAC();
            if (v5 == v4)
            {
              return v23;
            }
          }
        }

        if (v5 < *(v21 + 16))
        {
          break;
        }

        __break(1u);
LABEL_27:
        v4 = sub_1D7263BFC();
        if (!v4)
        {
          return MEMORY[0x1E69E7CC0];
        }
      }

      v7 = *(v2 + 8 * v5);
      swift_unknownObjectRetain();
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  return v2;
}

id sub_1D5E782E0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  if ([*a1 isFiltered])
  {
    v23 = *(a2 + *(type metadata accessor for FormatServiceOptions(0) + 52));
    sub_1D5C384A0(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7279970;
    v10 = *a3;
    v9 = a3[1];
    v11 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v8 + 64) = v12;
    *(v8 + 32) = v10;
    *(v8 + 40) = v9;

    v13 = [objc_msgSend(v7 item)];
    swift_unknownObjectRelease();
    v14 = sub_1D726207C();
    v16 = v15;

    *(v8 + 96) = v11;
    *(v8 + 104) = v12;
    *(v8 + 72) = v14;
    *(v8 + 80) = v16;
    [v7 filteredReasons];
    v17 = FCFeedFilterOptionsToNSString();
    v18 = sub_1D726207C();
    v20 = v19;

    *(v8 + 136) = v11;
    *(v8 + 144) = v12;
    *(v8 + 112) = v18;
    *(v8 + 120) = v20;
    v21 = sub_1D7262EDC();
    sub_1D725C30C("Format service content %{public}@ filtered out headline %{public}@ because %{public}@", 85, 2, &dword_1D5B42000, v23, v21, v8);

    result = 0;
  }

  else
  {
    result = [v7 item];
  }

  *a4 = result;
  return result;
}

void sub_1D5E78490(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1D5E784F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  sub_1D5CEFE04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E785C0, 0, 0);
}

uint64_t sub_1D5E785C0()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 72);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = sub_1D726294C();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v6[5] = v1;
    v6[6] = v3;

    sub_1D5E78E54(v2, &unk_1D7279D20, v6);
    sub_1D5CF274C(v2, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  v7 = *(v0 + 64);
  if (*(v7 + 16))
  {
    v8 = *(v0 + 72);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = sub_1D726294C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = v7;
    v12[6] = v9;

    sub_1D5E78E54(v8, &unk_1D7279D30, v12);
    sub_1D5CF274C(v8, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  *(v0 + 16) = **(v0 + 32);
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  sub_1D5E9E270(0);
  v15 = v14;
  v16 = sub_1D5C2AF10(&qword_1EDF04878, 255, sub_1D5E9E270, MEMORY[0x1E69E8720]);
  *v13 = v0;
  v13[1] = sub_1D5E788C0;

  return MEMORY[0x1EEE453B0](v15, v16);
}

uint64_t sub_1D5E788C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1D5E78B90;
  }

  else
  {
    v4 = sub_1D5E789D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D5E789D4()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v14 = v0[3];

    *v14 = v4;

    v15 = v0[1];

    v15();
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_1D698BA80(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = *(v4 + 2);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_28;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_26;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      v0 = v16;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1D5E78B90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E78BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5E78C18, 0, 0);
}

uint64_t sub_1D5E78C18()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = sub_1D5E9939C(v1, v2);

  v5 = *(v3 + 344);
  ObjectType = swift_getObjectType();
  v0[6] = SportsDataServiceType.fetchDataVisualizations(requests:)(v4, ObjectType, v5);

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1D5E78D18;
  v8 = v0[2];

  return MEMORY[0x1EEE44EE0](v8);
}

uint64_t sub_1D5E78D18()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EA22A8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

double sub_1D5E78E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E85F0];
  sub_1D5CEFE04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v20 - v10;
  sub_1D5CF23F8(a1, v20 - v10, &qword_1EDF1ADB0, v7);
  v12 = sub_1D726294C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D5CF274C(v11, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1D726285C();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D726293C();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();

  return result;
}

uint64_t sub_1D5E79098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5E790BC, 0, 0);
}

uint64_t sub_1D5E790BC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = sub_1D5E99698(v1, v2);

  v5 = *(v3 + 344);
  ObjectType = swift_getObjectType();
  v0[6] = SportsDataServiceType.fetchDataVisualizations(requests:)(v4, ObjectType, v5);

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1D5E791BC;
  v8 = v0[2];

  return MEMORY[0x1EEE44EE0](v8);
}

uint64_t sub_1D5E791BC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E792F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5E792F8()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1D5E7935C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  sub_1D5C2CA80(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v66 = &v66 - v7;
  sub_1D5CEFE04(0, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v70 = &v66 - v10;
  v11 = sub_1D605A8DC(MEMORY[0x1E69E7CC0]);
  v12 = *(a1 + 56);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v69 = v12;

  v18 = 0;
  v71 = a2;
  v67 = v13;
  while (v16)
  {
    v19 = v18;
LABEL_11:
    v20 = (*(v69 + 48) + 16 * (__clz(__rbit64(v16)) | (v19 << 6)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(a2 + 16);

    swift_unknownObjectRetain();
    v72 = v22;
    v73 = v21;
    if (v23 && (v24 = sub_1D5B69D90(v22, v21), (v25 & 1) != 0))
    {
      v26 = *(*(a2 + 56) + 8 * v24);
      v27 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
      swift_beginAccess();
      v28 = v26 + v27;
      v29 = v66;
      sub_1D5E9DB98(v28, v66, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
      sub_1D5CEFF38(v29, v70, type metadata accessor for FormatPuzzleType.Overrides);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = type metadata accessor for FormatPuzzleType.Overrides(0);
    v32 = v70;
    (*(*(v31 - 8) + 56))(v70, v30, 1, v31);
    swift_getObjectType();
    v33 = FCPuzzleTypeProviding.overridden(by:assetManager:)(v32, *(v68 + 136));
    sub_1D5CF274C(v32, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v11;
    v36 = sub_1D5B69D90(v72, v73);
    v37 = v11[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_44;
    }

    v40 = v35;
    if (v11[3] >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6D7D994();
      }

      v41 = v73;
    }

    else
    {
      sub_1D6D66390(v39, isUniquelyReferenced_nonNull_native);
      v41 = v73;
      v42 = sub_1D5B69D90(v72, v73);
      if ((v40 & 1) != (v43 & 1))
      {
        goto LABEL_46;
      }

      v36 = v42;
    }

    v16 &= v16 - 1;
    if (v40)
    {

      v11 = v74;
      *(v74[7] + 8 * v36) = v33;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = v74;
      v74[(v36 >> 6) + 8] |= 1 << v36;
      v44 = (v11[6] + 16 * v36);
      *v44 = v72;
      v44[1] = v41;
      *(v11[7] + 8 * v36) = v33;
      swift_unknownObjectRelease();
      v45 = v11[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_45;
      }

      v11[2] = v47;
    }

    v18 = v19;
    a2 = v71;
    v13 = v67;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  v48 = a2 + 64;
  v49 = 1 << *(a2 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(a2 + 64);
  v52 = (v49 + 63) >> 6;

  v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  while (v51)
  {
    v55 = v53;
LABEL_33:
    v56 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v57 = (*(v71 + 48) + ((v55 << 10) | (16 * v56)));
    v59 = *v57;
    v58 = v57[1];
    v60 = v11[2];

    if (v60 && (sub_1D5B69D90(v59, v58), (v61 & 1) != 0))
    {

      v53 = v55;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1D5B858EC(0, *(v54 + 2) + 1, 1, v54);
      }

      v63 = *(v54 + 2);
      v62 = *(v54 + 3);
      if (v63 >= v62 >> 1)
      {
        v54 = sub_1D5B858EC((v62 > 1), v63 + 1, 1, v54);
      }

      *(v54 + 2) = v63 + 1;
      v64 = &v54[16 * v63];
      *(v64 + 4) = v59;
      *(v64 + 5) = v58;
      v53 = v55;
    }
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v55 >= v52)
    {

      return v11;
    }

    v51 = *(v48 + 8 * v55);
    ++v53;
    if (v51)
    {
      goto LABEL_33;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void *sub_1D5E7994C(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v101 = &v94 - v6;
  v100 = type metadata accessor for PuzzleStatistic(0);
  v107 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v7);
  v108 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v105 = &v94 - v11;
  sub_1D5CEFE04(0, &qword_1EDF05520, sub_1D5E9E5E0, v3);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v94 - v18);
  v20 = sub_1D605A92C(MEMORY[0x1E69E7CC0]);
  v21 = *(a1 + 64);
  v22 = *(v21 + 64);
  v103 = (v21 + 64);
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v106 = v21;

  v27 = 0;
  v104 = v15;
  if (!v25)
  {
    goto LABEL_7;
  }

LABEL_6:
  v29 = v27;
LABEL_14:
  v32 = __clz(__rbit64(v25));
  v25 &= v25 - 1;
  v33 = v32 | (v29 << 6);
  v34 = v105;
  v35 = (*(v106 + 48) + 16 * v33);
  v37 = *v35;
  v36 = v35[1];
  sub_1D5CEFE68(*(v106 + 56) + *(v107 + 72) * v33, v105, type metadata accessor for PuzzleStatistic);
  sub_1D5E9E5E0(0);
  v39 = v38;
  v40 = *(v38 + 48);
  v15 = v104;
  *v104 = v37;
  *(v15 + 1) = v36;
  sub_1D5CEFF38(v34, &v15[v40], type metadata accessor for PuzzleStatistic);
  (*(*(v39 - 8) + 56))(v15, 0, 1, v39);

  v31 = v29;
  while (1)
  {
    sub_1D5E9E84C(v15, v19, &qword_1EDF05520, sub_1D5E9E5E0, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    sub_1D5E9E5E0(0);
    if ((*(*(v39 - 8) + 48))(v19, 1, v39) == 1)
    {
      break;
    }

    v42 = *v19;
    v41 = v19[1];
    sub_1D5CEFF38(v19 + *(v39 + 48), v108, type metadata accessor for PuzzleStatistic);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v20;
    v44 = sub_1D5B69D90(v42, v41);
    v46 = v20[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_48;
    }

    v50 = v45;
    if (v20[3] < v49)
    {
      sub_1D6D6633C(v49, isUniquelyReferenced_nonNull_native);
      v44 = sub_1D5B69D90(v42, v41);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_50;
      }

LABEL_21:
      if (v50)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v56 = v44;
    sub_1D6D7D940();
    v44 = v56;
    if (v50)
    {
LABEL_5:
      v28 = v44;

      v20 = v109;
      sub_1D5E9E39C(v108, v109[7] + *(v107 + 72) * v28);
      v27 = v31;
      if (v25)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

LABEL_22:
    v20 = v109;
    v109[(v44 >> 6) + 8] |= 1 << v44;
    v52 = (v20[6] + 16 * v44);
    *v52 = v42;
    v52[1] = v41;
    sub_1D5CEFF38(v108, v20[7] + *(v107 + 72) * v44, type metadata accessor for PuzzleStatistic);
    v53 = v20[2];
    v48 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v48)
    {
      goto LABEL_49;
    }

    v20[2] = v54;
    v27 = v31;
    if (v25)
    {
      goto LABEL_6;
    }

LABEL_7:
    if (v26 <= v27 + 1)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = v26;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v29 >= v26)
      {
        break;
      }

      v25 = v103[v29];
      ++v27;
      if (v25)
      {
        goto LABEL_14;
      }
    }

    sub_1D5E9E5E0(0);
    v39 = v55;
    (*(*(v55 - 8) + 56))(v15, 1, 1, v55);
    v25 = 0;
  }

  v57 = v102 + 64;
  v58 = 1 << *(v102 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v102 + 64);
  v61 = (v58 + 63) >> 6;
  v106 = v107 + 56;

  v62 = 0;
  v103 = MEMORY[0x1E69E7CC0];
  v105 = v57;
  while (v60)
  {
    v63 = v62;
LABEL_36:
    v64 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    v65 = v64 | (v63 << 6);
    v66 = (*(v102 + 48) + 16 * v65);
    v67 = v66[1];
    v68 = (*(v102 + 56) + 40 * v65);
    v69 = *v68;
    v104 = v68[1];
    v71 = v68[2];
    v70 = v68[3];
    v72 = v68[4];
    v73 = v20[2];
    v108 = v71;
    if (v73)
    {
      v74 = *v66;
      swift_bridgeObjectRetain_n();

      v75 = sub_1D5B69D90(v74, v67);
      v76 = v69;
      v77 = v70;
      v79 = v78;

      if (v79)
      {
        v80 = v107;
        v81 = v20[7] + *(v107 + 72) * v75;
        v82 = v101;
        sub_1D5CEFE68(v81, v101, type metadata accessor for PuzzleStatistic);
        (*(v80 + 56))(v82, 0, 1, v100);

        sub_1D5CF274C(v82, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v62 = v63;
        v57 = v105;
        continue;
      }
    }

    else
    {

      v76 = v69;
      v77 = v70;
    }

    v96 = v67;
    v97 = v72;
    v98 = v77;
    v83 = v101;
    (*v106)(v101, 1, 1, v100);
    sub_1D5CF274C(v83, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v84 = v76;
    v85 = *(v76 + 16);
    v86 = *(v76 + 24);

    v87 = v108;

    v88 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v84;
    v95 = v85;
    if ((v88 & 1) == 0)
    {
      v103 = sub_1D698C75C(0, v103[2] + 1, 1, v103);
    }

    v57 = v105;
    v90 = v103[2];
    v89 = v103[3];
    if (v90 >= v89 >> 1)
    {
      v103 = sub_1D698C75C((v89 > 1), v90 + 1, 1, v103);
    }

    v91 = v103;
    v103[2] = v90 + 1;
    v92 = &v91[4 * v90];
    v92[4] = v95;
    v92[5] = v86;
    v92[6] = v104;
    v92[7] = v87;
    v62 = v63;
  }

  while (1)
  {
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v63 >= v61)
    {

      return v20;
    }

    v60 = *(v57 + 8 * v63);
    ++v62;
    if (v60)
    {
      goto LABEL_36;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D5E7A278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for PuzzleStatistic(0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720]);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], v6);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E7A430, 0, 0);
}

uint64_t sub_1D5E7A430()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 88);
    v26 = sub_1D726294C();
    v3 = *(v26 - 8);
    v24 = *(v3 + 56);
    v23 = (v3 + 48);
    v22 = (v3 + 8);
    v4 = (v1 + 56);
    do
    {
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);
      v9 = *(v4 - 2);
      v29 = *(v4 - 3);
      v30 = v2;
      v27 = *v4;
      v28 = *(v4 - 1);
      v24(v7, 1, 1, v26);
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v10;
      v11[5] = v29;
      v11[6] = v9;
      v11[7] = v28;
      v11[8] = v27;
      sub_1D5CF23F8(v7, v8, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
      LODWORD(v10) = (*v23)(v8, 1, v26);

      v13 = *(v0 + 168);
      if (v10 == 1)
      {
        sub_1D5CF274C(*(v0 + 168), &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D726293C();
        (*v22)(v13, v26);
        if (*v12)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_1D726285C();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:

      if (v15 | v14)
      {
        v5 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 176);
      *(v0 + 48) = 1;
      *(v0 + 56) = v5;
      *(v0 + 64) = v25;
      swift_task_create();

      sub_1D5CF274C(v6, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v4 += 4;
      v2 = v30 - 1;
    }

    while (v30 != 1);
  }

  *(v0 + 72) = **(v0 + 88);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  sub_1D5E9E4DC(0);
  v19 = v18;
  v20 = sub_1D5C2AF10(&qword_1EDF04890, 255, sub_1D5E9E4DC, MEMORY[0x1E69E8720]);
  *v17 = v0;
  v17[1] = sub_1D5E7A848;

  return MEMORY[0x1EEE453B0](v19, v20);
}

uint64_t sub_1D5E7A848(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_1D5E7AC10;
  }

  else
  {
    v4 = sub_1D5E7A95C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D5E7A95C()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v0 + 120);
    v17 = *(v3 + 72);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v0 + 152);
      v6 = *(v0 + 160);
      v8 = *(v0 + 112);
      sub_1D5CF23F8(v4, v6, qword_1EDF30E00, type metadata accessor for PuzzleStatistic);
      sub_1D5E9E84C(v6, v7, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = *(v0 + 152);
      if (v9 == 1)
      {
        sub_1D5CF274C(v10, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      else
      {
        sub_1D5CEFF38(v10, *(v0 + 128), type metadata accessor for PuzzleStatistic);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D698C9D8(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_1D698C9D8((v11 > 1), v12 + 1, 1, v5);
        }

        v13 = *(v0 + 128);
        v5[2] = v12 + 1;
        sub_1D5CEFF38(v13, v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for PuzzleStatistic);
      }

      v4 += v17;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 80) = v5;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D5E7AC10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E7ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5E7ACCC, 0, 0);
}

uint64_t sub_1D5E7ACCC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
    type metadata accessor for FormatServiceError(0);
    sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError, &protocol conformance descriptor for FormatServiceError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = Strong;
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  v5._countAndFlagsBits = v4;
  v5._object = v3;
  PuzzleStatisticType.init(rawValue:)(v5);
  *(v0 + 153) = v19;
  if (v19 == 11)
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    sub_1D5E9E58C();
    swift_allocError();
    *v8 = v6;
    v8[1] = v7;
    swift_willThrow();

LABEL_5:
    v9 = *(v0 + 8);

    return v9();
  }

  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v13 = v2[33];
  v14 = v2[34];
  __swift_project_boxed_opaque_existential_1(v2 + 30, v13);
  sub_1D5B5A7A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v0 + 96) = v15;
  *(v15 + 16) = xmmword_1D7273AE0;
  *(v15 + 32) = v12;
  *(v15 + 40) = v11;
  v16 = *(v14 + 104);

  v18 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  *v17 = v0;
  v17[1] = sub_1D5E7AFB0;

  return v18(v15, v13, v14);
}

uint64_t sub_1D5E7AFB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_1D5E7B514;
  }

  else
  {

    v4 = sub_1D5E7B0CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D5E7B0CC()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, *(v0 + 112));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 112) + 32);
    swift_unknownObjectRetain();
  }

  *(v0 + 128) = v3;

  swift_getObjectType();
  if (FCPuzzleTypeProviding.isAllowed.getter())
  {
    v4 = *(v0 + 153);
    v5 = *(v0 + 88);
    v6 = v5[38];
    v7 = v5[39];
    __swift_project_boxed_opaque_existential_1(v5 + 35, v6);
    *(v0 + 152) = v4;
    v13 = (*(v7 + 16) + **(v7 + 16));
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_1D5E7B34C;
    v9 = *(v0 + 40);

    return v13(v9, v0 + 152, v3, v6, v7);
  }

  swift_unknownObjectRelease();
LABEL_13:

  v10 = *(v0 + 40);
  v11 = type metadata accessor for PuzzleStatistic(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D5E7B34C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D5E7B580;
  }

  else
  {
    v2 = sub_1D5E7B460;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E7B460()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 40);
  v2 = type metadata accessor for PuzzleStatistic(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5E7B514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E7B580()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E7B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5E7B618, 0, 0);
}

uint64_t sub_1D5E7B618()
{
  type metadata accessor for FormatServicePackageState();
  v1 = swift_allocObject();
  v0[7] = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = MEMORY[0x1E69E7CD0];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1D5E7B6E0;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];

  return sub_1D5E7B834(v5, v3, v4, v1);
}

uint64_t sub_1D5E7B6E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1D5E77A38;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_1D5E7B810;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E7B834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[805] = v4;
  v5[799] = a4;
  v5[793] = a3;
  v5[787] = a2;
  v5[781] = a1;
  sub_1D5E9EA44(0);
  v5[811] = v6;
  v5[817] = swift_task_alloc();
  v5[823] = swift_task_alloc();
  v7 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v5[829] = v7;
  v5[835] = *(v7 + 64);
  v5[841] = swift_task_alloc();
  v5[847] = swift_task_alloc();
  v5[853] = swift_task_alloc();
  v5[859] = swift_task_alloc();
  v5[865] = swift_task_alloc();
  v5[871] = swift_task_alloc();
  v5[877] = swift_task_alloc();
  v5[883] = swift_task_alloc();
  v5[889] = swift_task_alloc();
  sub_1D5C2AB28(0);
  v5[895] = v8;
  v9 = *(v8 - 8);
  v5[901] = v9;
  v5[907] = *(v9 + 64);
  v5[913] = swift_task_alloc();
  v5[919] = swift_task_alloc();
  v5[925] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v11 = *(v10 - 8);
  v5[931] = v11;
  v5[937] = *(v11 + 64);
  v5[943] = swift_task_alloc();
  v5[949] = swift_task_alloc();
  v5[955] = swift_task_alloc();
  v5[961] = swift_task_alloc();
  v5[967] = swift_task_alloc();
  v5[973] = swift_task_alloc();
  v5[979] = swift_task_alloc();
  v5[985] = swift_task_alloc();
  v5[991] = swift_task_alloc();
  v5[997] = swift_task_alloc();
  v5[1003] = swift_task_alloc();
  sub_1D5E9EB74(0);
  v13 = *(v12 - 8);
  v5[1009] = v13;
  v5[1015] = *(v13 + 64);
  v5[1021] = swift_task_alloc();
  v5[1027] = swift_task_alloc();
  v5[1033] = swift_task_alloc();
  v5[1039] = swift_task_alloc();
  v5[1045] = swift_task_alloc();
  v5[1051] = swift_task_alloc();
  v5[1057] = swift_task_alloc();
  v5[1063] = swift_task_alloc();
  v5[1069] = swift_task_alloc();
  v5[1075] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E7BBF4, 0, 0);
}

uint64_t sub_1D5E7BBF4()
{
  if (qword_1EDF22230 != -1)
  {
    swift_once();
  }

  v1 = v0[781];
  v0[1081] = qword_1EDFFCA30;
  v2 = sub_1D61D40D8(v1);
  if (v2)
  {
    v10 = v2;
    sub_1D5B74328(0, 0);
    sub_1D5B74328(0, 0);
    sub_1D5B74328(0, 0);
    sub_1D5B74328(0, 0);
    sub_1D5B74328(0, 0);

    v3 = v0[1];

    return v3(v10);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[1087] = v5;
    *v5 = v0;
    v5[1] = sub_1D5E7BF60;
    v6 = v0[1075];
    v7 = v0[793];
    v8 = v0[787];
    v9 = v0[781];

    return sub_1D5E823E0(v6, v9, v8, v7);
  }
}

uint64_t sub_1D5E7BF60()
{
  *(*v1 + 8744) = v0;

  if (v0)
  {
    v2 = sub_1D5E7E468;
  }

  else
  {
    v2 = sub_1D5E7C074;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E7C074()
{
  sub_1D5CEFE68(v0[781], v0[925], sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[925];
      sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      sub_1D5EA08F4(v2 + *(v3 + 48), type metadata accessor for FormatMetadata);
      sub_1D5EA08F4(v2, type metadata accessor for FormatPackage);
    }

    v4 = v0[997];
    v5 = sub_1D72585BC();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v7 = v0[997];
    v8 = v0[925];
    sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v86 = *(v9 + 48);
    v5 = sub_1D72585BC();
    v10 = *(v5 - 8);
    v11 = *(v10 + 32);
    v11(v7, v8, v5);
    v12 = *(v10 + 56);
    v12(v7, 0, 1, v5);
    sub_1D5EA08F4(v8 + v86, type metadata accessor for FormatMetadata);
    if ((*(v10 + 48))(v7, 1, v5) != 1)
    {
      v13 = v0[1003];
      v11(v13, v0[997], v5);
      v12(v13, 0, 1, v5);
      goto LABEL_9;
    }
  }

  v6 = v0[997];
  sub_1D5CF23F8(v0[787], v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D72585BC();
  if ((*(*(v5 - 8) + 48))(v6, 1, v5) != 1)
  {
    sub_1D5CF274C(v0[997], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

LABEL_9:
  v81 = v0[1075];
  v79 = v0[1069];
  v46 = v0[1063];
  v51 = v0[1057];
  v54 = v0[1051];
  v57 = v0[1045];
  v60 = v0[1039];
  v63 = v0[1033];
  v66 = v0[1027];
  v69 = v0[1021];
  v14 = v0[1015];
  v77 = v14;
  v72 = v0[1009];
  v15 = v0[1003];
  v80 = v15;
  v16 = v0[991];
  v75 = v16;
  v45 = v0[985];
  v50 = v0[979];
  v53 = v0[973];
  v56 = v0[967];
  v59 = v0[961];
  v62 = v0[955];
  v65 = v0[949];
  v68 = v0[943];
  v76 = v0[937];
  v42 = v0[931];
  v17 = v0[919];
  v47 = v17;
  v85 = v0[901];
  v18 = v0[889];
  v41 = v18;
  v44 = v0[883];
  v49 = v0[877];
  v52 = v0[871];
  v55 = v0[865];
  v58 = v0[859];
  v61 = v0[853];
  v64 = v0[847];
  v67 = v0[841];
  v19 = v0[835];
  v20 = v0[829];
  v70 = v0[823];
  v71 = v0[805];
  v21 = v0[793];
  v82 = v21;
  v83 = v0[799];
  v22 = v0[781];
  sub_1D5CEFE68(v81, v79, sub_1D5E9EB74);
  v74 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v15, v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v21, v18, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v22, v17, sub_1D5C2AB28);
  v23 = *(v72 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v42 + 80);
  v27 = (v26 + v25 + 8) & ~v26;
  v43 = *(v20 + 80);
  v28 = (v27 + v76 + v43) & ~v43;
  v29 = (v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v85 + 80) + v29 + 8) & ~*(v85 + 80);
  v31 = swift_allocObject();
  v0[1099] = v31;
  sub_1D5CEFF38(v79, v31 + v24, sub_1D5E9EB74);
  *(v31 + v25) = v71;
  v87 = MEMORY[0x1E69E6720];
  sub_1D5E9E84C(v75, v31 + v27, &qword_1EDF45B40, v74, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v41, v31 + v28, type metadata accessor for FormatServiceOptions);
  *(v31 + v29) = v83;
  sub_1D5CEFF38(v47, v31 + v30, sub_1D5C2AB28);

  v48 = MEMORY[0x1E69E62F8];
  sub_1D5CEFE04(0, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v46, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v45, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v44, type metadata accessor for FormatServiceOptions);
  v84 = (v23 + 24) & ~v23;
  v78 = (v77 + v26 + v84) & ~v26;
  v73 = (v78 + v76 + v43) & ~v43;
  v32 = swift_allocObject();
  v0[1105] = v32;
  *(v32 + 16) = v71;
  sub_1D5CEFF38(v46, v32 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v45, v32 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v44, v32 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5E9EBBC(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v51, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v50, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v49, type metadata accessor for FormatServiceOptions);
  v33 = swift_allocObject();
  v0[1111] = v33;
  *(v33 + 16) = v71;
  sub_1D5CEFF38(v51, v33 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v50, v33 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v49, v33 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CBB104(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v54, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v53, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v52, type metadata accessor for FormatServiceOptions);
  v34 = swift_allocObject();
  v0[1117] = v34;
  *(v34 + 16) = v71;
  sub_1D5CEFF38(v54, v34 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v53, v34 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v52, v34 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CEFE04(0, &qword_1EDF1B360, sub_1D5C2C40C, v48);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v57, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v56, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v55, type metadata accessor for FormatServiceOptions);
  v35 = swift_allocObject();
  v0[1123] = v35;
  *(v35 + 16) = v71;
  sub_1D5CEFF38(v57, v35 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v56, v35 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v55, v35 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5C2C988(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v60, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v59, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v58, type metadata accessor for FormatServiceOptions);
  v36 = swift_allocObject();
  v0[1129] = v36;
  *(v36 + 16) = v71;
  sub_1D5CEFF38(v60, v36 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v59, v36 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v58, v36 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CA46B8(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v63, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v62, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v61, type metadata accessor for FormatServiceOptions);
  v37 = swift_allocObject();
  v0[1135] = v37;
  *(v37 + 16) = v71;
  sub_1D5CEFF38(v63, v37 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v62, v37 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v61, v37 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CDEC24(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v66, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v65, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v64, type metadata accessor for FormatServiceOptions);
  v38 = swift_allocObject();
  v0[1141] = v38;
  *(v38 + 16) = v71;
  sub_1D5CEFF38(v66, v38 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v65, v38 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v64, v38 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5C8CC30(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v69, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v68, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v67, type metadata accessor for FormatServiceOptions);
  v39 = swift_allocObject();
  v0[1147] = v39;
  *(v39 + 16) = v71;
  sub_1D5CEFF38(v69, v39 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v68, v39 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v67, v39 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CAF910(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v70, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 775, sub_1D5E7CFDC, v0 + 776);
}

uint64_t sub_1D5E7CFDC()
{
  v1[1153] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E7E710, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 48);
    v4 = v1[775];
    v1[1159] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 242, v1 + 733, sub_1D5E7D0A4, v1 + 836);
  }
}

uint64_t sub_1D5E7D0A4()
{
  v1[1165] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E7ED90, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 64);
    v4 = v1[733];
    v1[1171] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 402, v1 + 745, sub_1D5E7D16C, v1 + 896);
  }
}

uint64_t sub_1D5E7D16C()
{
  v1[1177] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E7F424, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 80);
    v4 = v1[745];
    v1[1183] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 562, v1 + 757, sub_1D5E7D244, v1 + 956);
  }
}

uint64_t sub_1D5E7D244()
{
  v1[1189] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E7FAC4, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 96);
    v4 = v1[757];
    v1[1195] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 769, sub_1D5E7D30C, v1 + 1016);
  }
}

uint64_t sub_1D5E7D30C()
{
  v1[1201] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E80178, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 112);
    v4 = v1[769];
    v1[1207] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 642, v1 + 727, sub_1D5E7D3E4, v1 + 1076);
  }
}

uint64_t sub_1D5E7D3E4()
{
  v1[1213] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E80838, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 128);
    v4 = v1[727];
    v1[1219] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 482, v1 + 763, sub_1D5E7D4AC, v1 + 1136);
  }
}

uint64_t sub_1D5E7D4AC()
{
  v1[1225] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E80F0C, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 144);
    v4 = v1[763];
    v1[1231] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 322, v1 + 751, sub_1D5E7D574, v1 + 1196);
  }
}

uint64_t sub_1D5E7D574()
{
  v1[1237] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E815EC, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 160);
    v4 = v1[751];
    v1[1243] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 162, v1 + 739, sub_1D5E7D63C, v1 + 1256);
  }
}

uint64_t sub_1D5E7D63C()
{
  *(v1 + 9992) = v0;
  if (v0)
  {
    v2 = sub_1D5E81CE0;
  }

  else
  {
    *(v1 + 10136) = *(*(v1 + 6488) + 176);
    v2 = sub_1D5E7D67C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E7D67C()
{
  v22 = *(v0 + 9992);
  v1 = *(v0 + 7304);
  v2 = *(v0 + 6584);
  v3 = *(v0 + 6536);
  v4 = *(v0 + 6488);
  v18 = *(v0 + 6248);
  *(v2 + *(v0 + 10136)) = *(v0 + 5912);
  sub_1D5CEFE68(v2, v3, sub_1D5E9EA44);
  v20 = *(v3 + v4[16]);
  v21 = *(v3 + v4[12]);
  v19 = *(v3 + v4[20]);
  v5 = *(v3 + v4[24]);
  v6 = *(v3 + v4[28]);
  v7 = *(v3 + v4[32]);
  v8 = *(v3 + v4[36]);
  v9 = *(v3 + v4[40]);
  v10 = *(v3 + v4[44]);
  sub_1D5CEFE68(v18, v1, sub_1D5C2AB28);

  v11 = sub_1D6C78DBC(v3, v21, v20, v19, v5, v6, v7, v8, v9, v10, v1);
  *(v0 + 10040) = v22;
  if (v22)
  {
    sub_1D5EA08F4(*(v0 + 6584), sub_1D5E9EA44);
    v12 = sub_1D5E7DE70;
    v13 = v0 + 1296;
    v14 = v0 + 5912;
    v15 = v0 + 10528;
  }

  else
  {
    v16 = *(v0 + 6584);
    *(v0 + 10088) = sub_1D61D465C(*(v0 + 6248), v11);

    sub_1D5EA08F4(v16, sub_1D5E9EA44);
    v12 = sub_1D5E7D888;
    v13 = v0 + 1296;
    v14 = v0 + 5912;
    v15 = v0 + 10912;
  }

  return MEMORY[0x1EEE6DEB0](v13, v14, v12, v15);
}

uint64_t sub_1D5E7DACC()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v8 = v0[1261];
  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  sub_1D5B74328(&unk_1D7279E10, v0[1123]);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v6 = v0[1];

  return v6(v8);
}

uint64_t sub_1D5E7E0B4()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E7E468()
{
  sub_1D5B74328(0, 0);
  sub_1D5B74328(0, 0);
  sub_1D5B74328(0, 0);
  sub_1D5B74328(0, 0);
  sub_1D5B74328(0, 0);
  sub_1D5B74328(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E7E710()
{
  sub_1D5EA08F4(*(v0 + 6584), sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E7E798, v0 + 6256);
}

uint64_t sub_1D5E7E9DC()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E7ED90()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E7EE2C, v0 + 6736);
}

uint64_t sub_1D5E7F070()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E7F424()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E7F4CC, v0 + 7216);
}

uint64_t sub_1D5E7F710()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E7FAC4()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E7FB80, v0 + 7696);
}

uint64_t sub_1D5E7FDC4()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E80178()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E80240, v0 + 8176);
}

uint64_t sub_1D5E80484()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E80838()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E80914, v0 + 8656);
}

uint64_t sub_1D5E80B58()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E80F0C()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E80FF4, v0 + 9136);
}

uint64_t sub_1D5E81238()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E815EC()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E816E8, v0 + 9616);
}

uint64_t sub_1D5E8192C()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E81CE0()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E81DE8, v0 + 10096);
}

uint64_t sub_1D5E8202C()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v2 = v0[1147];
  v3 = v0[1141];
  v4 = v0[1135];
  v5 = v0[1129];
  v6 = v0[1123];
  sub_1D5B74328(&unk_1D7279E00, v0[1117]);
  sub_1D5B74328(&unk_1D7279E10, v6);
  sub_1D5B74328(&unk_1D7279E20, v5);
  sub_1D5B74328(&unk_1D7279E30, v4);
  sub_1D5B74328(&unk_1D7279E40, v3);
  sub_1D5B74328(&unk_1D7279E50, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D5E823E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  type metadata accessor for FormatMetadata(0);
  v5[10] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  sub_1D5C2AB28(0);
  v5[17] = v7;
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8259C, 0, 0);
}

uint64_t sub_1D5E8259C()
{
  sub_1D5CEFE68(v0[3], v0[18], sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[18];
      v3 = v0[2];
      sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      v5 = *(v4 + 48);
      sub_1D5CEFF38(v2, v3, type metadata accessor for FormatPackage);
      sub_1D5E9EB74(0);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
    }

    else
    {
      type metadata accessor for FormatServiceError(0);
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError, &protocol conformance descriptor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[10];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[11];
    v19 = v0[12];
    v20 = v0[9];
    sub_1D5CF23F8(v0[4], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[9];
    }

    else
    {
      v23 = v0[14];
      v36 = v21;
      v24 = v0[11];
      v25 = v0[12];
      v37 = v0[8];
      v26 = v0[7];
      v15(v23, v0[9], v24);
      sub_1D72583EC();
      (*(v25 + 16))(v26, v23, v24);
      (*(v25 + 56))(v26, 0, 1, v24);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v25 + 8))(v23, v24);
      if (v36(v37, 1, v24) != 1)
      {
        v33 = v0[15];
        v34 = v0[13];
        v35 = v0[11];
        v15(v34, v0[8], v35);
        v15(v33, v34, v35);
        goto LABEL_16;
      }

      v22 = v0[8];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[12] + 16))(v0[15], v0[16], v0[11]);
LABEL_16:
  v27 = swift_task_alloc();
  v0[19] = v27;
  *v27 = v0;
  v27[1] = sub_1D5E82B5C;
  v28 = v0[15];
  v29 = v0[10];
  v31 = v0[5];
  v30 = v0[6];
  v32 = v0[2];

  return sub_1D5E8B2D0(v32, v28, v30, v31, v29);
}

uint64_t sub_1D5E82B5C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1D5EA21C8;
  }

  else
  {
    v2 = sub_1D5EA2280;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E82C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = a4;
  v5[42] = v4;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  type metadata accessor for FormatMetadata(0);
  v5[46] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[47] = v6;
  v5[48] = *(v6 - 8);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  sub_1D5C2CA80(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  v5[52] = v7;
  v5[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E82E58, 0, 0);
}

uint64_t sub_1D5E82E58()
{
  sub_1D5E9DB98(v0[39], v0[53], &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[53];
      v3 = v0[38];
      sub_1D5EA17B4(0, &qword_1EDF341E0, &type metadata for FormatGroup);
      v5 = *(v4 + 48);
      v40 = v2[6];
      v41 = v2[7];
      v42 = v2[8];
      v38 = v2[4];
      v39 = v2[5];
      v36 = v2[2];
      v37 = v2[3];
      v34 = *v2;
      v35 = v2[1];
      sub_1D5C2CA80(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      v3[6] = v40;
      v3[7] = v41;
      v3[8] = v42;
      v3[2] = v36;
      v3[3] = v37;
      v3[4] = v38;
      v3[5] = v39;
      *v3 = v34;
      v3[1] = v35;
    }

    else
    {
      type metadata accessor for FormatServiceError(0);
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError, &protocol conformance descriptor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[53];
  v9 = v0[51];
  v10 = v0[47];
  v11 = v0[48];
  v12 = v0[46];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[47];
    v19 = v0[48];
    v20 = v0[45];
    sub_1D5CF23F8(v0[40], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[45];
    }

    else
    {
      v32 = v21;
      v23 = v0[48];
      v24 = v0[49];
      v25 = v0[47];
      v33 = v0[44];
      v26 = v0[43];
      v15(v24, v0[45], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[50], v0[44], v0[47]);
        goto LABEL_16;
      }

      v22 = v0[44];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[48] + 16))(v0[50], v0[51], v0[47]);
LABEL_16:
  v27 = *(v0[42] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[54] = v29;

  v30 = swift_task_alloc();
  v0[55] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E83490;
  v31 = v0[41];

  return sub_1D5E8D02C((v0 + 2), v29, v31);
}

uint64_t sub_1D5E83490()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_1D5E8377C;
  }

  else
  {
    v2 = sub_1D5E835A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E835A4()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v5 = *(v0 + 368);
  v6 = *(v0 + 304);

  v7 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v7;
  *(v0 + 288) = *(v0 + 144);
  v8 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v8;
  v9 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v9;
  v10 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v10;
  sub_1D5C2CA80(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v11 + 36), type metadata accessor for FormatMetadata);
  *v6 = *(v0 + 160);
  v12 = *(v0 + 224);
  v14 = *(v0 + 176);
  v13 = *(v0 + 192);
  v6[3] = *(v0 + 208);
  v6[4] = v12;
  v6[1] = v14;
  v6[2] = v13;
  v15 = *(v0 + 288);
  v17 = *(v0 + 240);
  v16 = *(v0 + 256);
  v6[7] = *(v0 + 272);
  v6[8] = v15;
  v6[5] = v17;
  v6[6] = v16;
  v18 = *(v4 + 8);
  v18(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v18(v1, v3);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D5E8377C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v5 = *(v0 + 368);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E8389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = a4;
  v5[38] = v4;
  v5[35] = a2;
  v5[36] = a3;
  v5[34] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  type metadata accessor for FormatMetadata(0);
  v5[42] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  sub_1D5C2CA80(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  v5[48] = v7;
  v5[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E83A84, 0, 0);
}

uint64_t sub_1D5E83A84()
{
  sub_1D5E9DB98(v0[35], v0[49], &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[49];
      v3 = v0[34];
      sub_1D5EA17B4(0, &qword_1EDF34648, &type metadata for FormatItem);
      v5 = *(v4 + 48);
      v38 = v2[4];
      v39 = v2[5];
      *v40 = v2[6];
      *&v40[9] = *(v2 + 105);
      v34 = *v2;
      v35 = v2[1];
      v36 = v2[2];
      v37 = v2[3];
      sub_1D5C2CA80(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      v3[4] = v38;
      v3[5] = v39;
      v3[6] = *v40;
      *(v3 + 105) = *&v40[9];
      *v3 = v34;
      v3[1] = v35;
      v3[2] = v36;
      v3[3] = v37;
    }

    else
    {
      type metadata accessor for FormatServiceError(0);
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError, &protocol conformance descriptor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[49];
  v9 = v0[47];
  v10 = v0[43];
  v11 = v0[44];
  v12 = v0[42];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[43];
    v19 = v0[44];
    v20 = v0[41];
    sub_1D5CF23F8(v0[36], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[41];
    }

    else
    {
      v32 = v21;
      v23 = v0[44];
      v24 = v0[45];
      v25 = v0[43];
      v33 = v0[40];
      v26 = v0[39];
      v15(v24, v0[41], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[46], v0[40], v0[43]);
        goto LABEL_16;
      }

      v22 = v0[40];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[44] + 16))(v0[46], v0[47], v0[43]);
LABEL_16:
  v27 = *(v0[38] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[50] = v29;

  v30 = swift_task_alloc();
  v0[51] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E840BC;
  v31 = v0[37];

  return sub_1D5E8E1B8((v0 + 2), v29, v31);
}

uint64_t sub_1D5E840BC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1D5E843A8;
  }

  else
  {
    v2 = sub_1D5E841D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E841D0()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 272);

  v7 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v7;
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 249) = *(v0 + 121);
  v8 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v8;
  v9 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v9;
  sub_1D5C2CA80(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v10 + 36), type metadata accessor for FormatMetadata);
  v11 = *(v0 + 192);
  v13 = *(v0 + 144);
  v12 = *(v0 + 160);
  v6[2] = *(v0 + 176);
  v6[3] = v11;
  *v6 = v13;
  v6[1] = v12;
  v15 = *(v0 + 224);
  v14 = *(v0 + 240);
  v16 = *(v0 + 208);
  *(v6 + 105) = *(v0 + 249);
  v6[5] = v15;
  v6[6] = v14;
  v6[4] = v16;
  v17 = *(v4 + 8);
  v17(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v17(v1, v3);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D5E843A8()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 336);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E844C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  type metadata accessor for FormatMetadata(0);
  v5[28] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  sub_1D5C2CA80(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  v5[34] = v7;
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E846B0, 0, 0);
}

uint64_t sub_1D5E846B0()
{
  sub_1D5E9DB98(v0[21], v0[35], &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[35];
      v3 = v0[20];
      sub_1D5EA17B4(0, &qword_1EDF34010, &type metadata for FormatStyle);
      v5 = *(v4 + 48);
      v38 = *(v2 + 8);
      v36 = v2[2];
      v37 = v2[3];
      v34 = *v2;
      v35 = v2[1];
      sub_1D5C2CA80(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      *(v3 + 32) = v36;
      *(v3 + 48) = v37;
      *(v3 + 64) = v38;
      *v3 = v34;
      *(v3 + 16) = v35;
    }

    else
    {
      type metadata accessor for FormatServiceError(0);
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError, &protocol conformance descriptor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[35];
  v9 = v0[33];
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[28];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[29];
    v19 = v0[30];
    v20 = v0[27];
    sub_1D5CF23F8(v0[22], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[27];
    }

    else
    {
      v32 = v21;
      v23 = v0[30];
      v24 = v0[31];
      v25 = v0[29];
      v33 = v0[26];
      v26 = v0[25];
      v15(v24, v0[27], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[32], v0[26], v0[29]);
        goto LABEL_16;
      }

      v22 = v0[26];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[30] + 16))(v0[32], v0[33], v0[29]);
LABEL_16:
  v27 = *(v0[24] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[36] = v29;

  v30 = swift_task_alloc();
  v0[37] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E84CC8;
  v31 = v0[23];

  return sub_1D5E8FC98((v0 + 2), v29, v31);
}

uint64_t sub_1D5E84CC8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1D5E84FA8;
  }

  else
  {
    v2 = sub_1D5E84DDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E84DDC()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 160);

  v7 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v8 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v8;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v7;
  sub_1D5C2CA80(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v9 + 36), type metadata accessor for FormatMetadata);
  *v6 = *(v0 + 88);
  v10 = *(v0 + 120);
  v11 = *(v0 + 136);
  v12 = *(v0 + 104);
  *(v6 + 64) = *(v0 + 152);
  *(v6 + 32) = v10;
  *(v6 + 48) = v11;
  *(v6 + 16) = v12;
  v13 = *(v4 + 8);
  v13(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v13(v1, v3);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D5E84FA8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E850C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  type metadata accessor for FormatMetadata(0);
  v5[38] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[39] = v6;
  v5[40] = *(v6 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  sub_1D5C2CA80(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  v5[44] = v7;
  v5[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E852B0, 0, 0);
}

uint64_t sub_1D5E852B0()
{
  sub_1D5E9DB98(v0[31], v0[45], &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[45];
      v3 = v0[30];
      sub_1D5EA17B4(0, &qword_1EDF2BE08, &type metadata for FormatSupplementary);
      v5 = *(v4 + 48);
      v38 = v2[4];
      *v39 = v2[5];
      *&v39[9] = *(v2 + 89);
      v34 = *v2;
      v35 = v2[1];
      v36 = v2[2];
      v37 = v2[3];
      sub_1D5C2CA80(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      v3[4] = v38;
      v3[5] = *v39;
      *(v3 + 89) = *&v39[9];
      *v3 = v34;
      v3[1] = v35;
      v3[2] = v36;
      v3[3] = v37;
    }

    else
    {
      type metadata accessor for FormatServiceError(0);
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError, &protocol conformance descriptor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[45];
  v9 = v0[43];
  v10 = v0[39];
  v11 = v0[40];
  v12 = v0[38];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[39];
    v19 = v0[40];
    v20 = v0[37];
    sub_1D5CF23F8(v0[32], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[37];
    }

    else
    {
      v32 = v21;
      v23 = v0[40];
      v24 = v0[41];
      v25 = v0[39];
      v33 = v0[36];
      v26 = v0[35];
      v15(v24, v0[37], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[42], v0[36], v0[39]);
        goto LABEL_16;
      }

      v22 = v0[36];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[40] + 16))(v0[42], v0[43], v0[39]);
LABEL_16:
  v27 = *(v0[34] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[46] = v29;

  v30 = swift_task_alloc();
  v0[47] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E858D8;
  v31 = v0[33];

  return sub_1D5E90D28((v0 + 2), v29, v31);
}

uint64_t sub_1D5E858D8()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1D5E85BBC;
  }

  else
  {
    v2 = sub_1D5E859EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E859EC()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = *(v0 + 240);

  v7 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v7;
  *(v0 + 217) = *(v0 + 105);
  v8 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v9;
  sub_1D5C2CA80(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v10 + 36), type metadata accessor for FormatMetadata);
  v12 = *(v0 + 144);
  v11 = *(v0 + 160);
  *v6 = *(v0 + 128);
  v6[1] = v12;
  v6[2] = v11;
  v14 = *(v0 + 192);
  v13 = *(v0 + 208);
  v15 = *(v0 + 176);
  *(v6 + 89) = *(v0 + 217);
  v6[4] = v14;
  v6[5] = v13;
  v6[3] = v15;
  v16 = *(v4 + 8);
  v16(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v16(v1, v3);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D5E85BBC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E85CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  type metadata accessor for FormatMetadata(0);
  v5[32] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  sub_1D5C2CA80(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  v5[38] = v7;
  v5[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E85EC4, 0, 0);
}