uint64_t sub_1ADF9C614(uint64_t *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *a1;
  v18 = a1[1];
  if (!a2 || (v43 = *a1, v44 = v18, , v21 = a2(&v43), sub_1ADDDCE80(a2, a3), (v21)) && (swift_beginAccess(), sub_1ADDD86D8(v17, v18), v22 = sub_1ADDE0110(&v37, v17, v18), swift_endAccess(), sub_1ADDCC35C(v37, v38), (v22))
  {
    v43 = v17;
    v44 = v18;
    (*(a14 + 56))(&v37, &v43, a12, a14);
    if (!v15)
    {
      v25 = v37;
      if (v37)
      {
        v37 = v17;
        v38 = v18;
        v39 = v25;
        v35 = *(a15 + 48);

        v35(&v43, &v37, &v39, &type metadata for AnyCRDT, &off_1F23C9418, a13, a15);

        v26 = v43;
        if (v43)
        {
          v27 = v44;
          v36 = v45;
          swift_beginAccess();
          sub_1ADDD86D8(v17, v18);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = *(a7 + 16);
          *(a7 + 16) = 0x8000000000000000;
          sub_1ADEBFB8C(v25, v26, v17, v18, isUniquelyReferenced_nonNull_native);
          sub_1ADDCC35C(v17, v18);
          *(a7 + 16) = v37;
          swift_endAccess();
          v37 = v17;
          v38 = v18;
          v39 = v27;
          v40 = v36;
          v41 = v26;
          (*(a14 + 48))(&v46, &v42, &v43, &v37, &v41, &v39, a12, a14);

          v29 = v46;
          v30 = HIBYTE(v46);
          v31 = v47;
          LOWORD(v37) = v46;
          BYTE2(v37) = v47;
          swift_beginAccess();
          v32 = &v37;
          MergeResult.merge(_:)(v32);
          swift_beginAccess();
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v39 = *(a9 + 16);
          *(a9 + 16) = 0x8000000000000000;
          if (v31)
          {
            v34 = 0x10000;
          }

          else
          {
            v34 = 0;
          }

          sub_1ADEBFA40(v34 | (v30 << 8) | v29, v17, v18, v33);
          *(a9 + 16) = v39;
          swift_endAccess();
          if (v29 > 1 || v30 >= 2)
          {
            swift_beginAccess();
            sub_1ADDD86D8(v17, v18);
            sub_1ADDE0110(&v39, v17, v18);
            swift_endAccess();
            sub_1ADDCC35C(v39, v40);
          }

          if (qword_1EB5B9920 != -1)
          {
            swift_once();
          }

          if (v29 == word_1EB5D750E && v30 == HIBYTE(word_1EB5D750E) && v31 == byte_1EB5D7510)
          {
            swift_beginAccess();
            sub_1ADDD86D8(v17, v18);
            sub_1ADDE0110(&v39, v17, v18);
            swift_endAccess();

            sub_1ADDCC35C(v39, v40);
          }

          else
          {
          }

          v23 = 1;
        }

        else
        {

          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

void sub_1ADF9CB28(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v121 = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CC0];
  v120 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v106 = a2;
  v19 = *(a2 + 16);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(a2 + 16) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;

  v28 = 0;
  v101 = v27;
  while (2)
  {
    v102 = v18;
    do
    {
      while (1)
      {
        if (v25)
        {
          goto LABEL_13;
        }

        do
        {
          v32 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:

            v99 = *(&v114 + 1);
            v98 = v114;
LABEL_95:
            sub_1ADDCC35C(v98, v99);
            return;
          }

          if (v32 >= v26)
          {

            swift_beginAccess();
            if (!*(v18 + 2))
            {
LABEL_93:

              return;
            }

            v70 = a14;
            v69 = a4;
            v71 = v106;
            while (2)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v72 = *(v18 + 2);
                if (!v72)
                {
                  goto LABEL_97;
                }
              }

              else
              {
                v18 = sub_1ADF79A04(v18);
                v72 = *(v18 + 2);
                if (!v72)
                {
                  goto LABEL_97;
                }
              }

              v73 = v72 - 1;
              v74 = &v18[16 * v73];
              v76 = *(v74 + 4);
              v75 = *(v74 + 5);
              *(v18 + 2) = v73;
              v120 = v18;
              sub_1ADDD86D8(v76, v75);
              v77 = sub_1ADDE0110(&v117, v76, v75);
              sub_1ADDCC35C(v117, *(&v117 + 1));
              if ((v77 & 1) == 0)
              {
                sub_1ADDCC35C(v76, v75);
                goto LABEL_93;
              }

              *&v117 = v76;
              *(&v117 + 1) = v75;
              sub_1ADF9C614(&v117, a5, a6, a7, v69, a8, a3, a9, v71, a10, a11, a12, a13, v70, a15);
              if (v16)
              {

                v98 = v76;
                v99 = v75;
                goto LABEL_95;
              }

              v78 = v18;
              swift_beginAccess();
              v79 = *(v71 + 16);
              if (!*(v79 + 16) || (v80 = sub_1ADDDE7CC(v76, v75), (v81 & 1) == 0))
              {
                swift_endAccess();
                goto LABEL_81;
              }

              v82 = (*(v79 + 56) + 3 * v80);
              v83 = *v82;
              v84 = v82[1];
              swift_endAccess();
              if (a1)
              {
                if (v83 <= 1 && v84 <= 1)
                {
                  goto LABEL_81;
                }

                goto LABEL_78;
              }

              if (v83 > 1)
              {
                if (v83 != 2)
                {
LABEL_78:
                  if (qword_1EB5B9920 != -1)
                  {
                    swift_once();
                  }

                  v86 = byte_1EB5D7510;
                  *(a9 + 16) = word_1EB5D750E;
                  *(a9 + 18) = v86;
                  swift_beginAccess();
                  sub_1ADDD86D8(v76, v75);
                  sub_1ADDE0110(v115, v76, v75);
                  swift_endAccess();
                  sub_1ADDCC35C(v115[0], v115[1]);
LABEL_81:
                  *&v117 = v76;
                  *(&v117 + 1) = v75;
                  (*(v70 + 56))(v115, &v117, a12, v70);
                  v87 = v115[0];
                  if (v115[0])
                  {
                    v88 = type metadata accessor for AllRefsVisitor();
                    v89 = swift_allocObject();
                    *(v89 + 24) = 0;
                    *(v89 + 16) = MEMORY[0x1E69E7CD0];
                    v90 = (v89 + 16);
                    v118 = v88;
                    v119 = &off_1F23C4500;
                    *&v117 = v89;
                    v91 = *(*v87 + 128);

                    v91(&v117);
                    __swift_destroy_boxed_opaque_existential_1(&v117);
                    swift_beginAccess();
                    v92 = *v90;

                    v93 = *(v92 + 16);
                    if (v93)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
                      v94 = swift_allocObject();
                      v95 = _swift_stdlib_malloc_size(v94);
                      v96 = v95 - 32;
                      if (v95 < 32)
                      {
                        v96 = v95 - 17;
                      }

                      *(v94 + 16) = v93;
                      *(v94 + 24) = 2 * (v96 >> 4);
                      v97 = sub_1AE03A790(&v117, (v94 + 32), v93, v92);
                      sub_1ADDDCE74(v117);
                      if (v97 != v93)
                      {
                        goto LABEL_98;
                      }
                    }

                    else
                    {

                      v94 = MEMORY[0x1E69E7CC0];
                    }

                    sub_1ADFB6D60(v94);
                    sub_1ADDCC35C(v76, v75);

                    v18 = v120;
                    v70 = a14;
                    v69 = a4;
                    v71 = v106;
                    if (!*(v120 + 2))
                    {
                      goto LABEL_93;
                    }
                  }

                  else
                  {
                    sub_1ADDCC35C(v76, v75);
                    v18 = v78;
                    if (!*(v78 + 2))
                    {
                      goto LABEL_93;
                    }
                  }

                  continue;
                }
              }

              else if (v83)
              {
                goto LABEL_78;
              }

              break;
            }

            if ((v84 & 0xFFFFFFFD) == 0)
            {
              goto LABEL_81;
            }

            goto LABEL_78;
          }

          v25 = *(v21 + 8 * v32);
          ++v28;
        }

        while (!v25);
        v28 = v32;
LABEL_13:
        v33 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v34 = v33 | (v28 << 6);
        v114 = *(*(v27 + 48) + 16 * v34);
        v35 = (*(v27 + 56) + 3 * v34);
        v36 = *v35;
        v37 = v35[1];
        if (a1)
        {
          break;
        }

        if (v36 > 1 || v37 > 1)
        {
          swift_beginAccess();
          v38 = *(a3 + 16);
          v39 = *(v38 + 16);
          sub_1ADDD86D8(v114, *(&v114 + 1));
          if (v39 && (v40 = sub_1ADDDE7CC(v114, *(&v114 + 1)), (v41 & 1) != 0))
          {
            v42 = (*(v38 + 56) + 16 * v40);
            v29 = *v42;
            v43 = v42[1];

            v31 = v43;
            v18 = v102;
            if (v29)
            {

              swift_endAccess();
              v50 = MEMORY[0x1E69E7D48];
              v51 = v29;
              v52 = v43;
              goto LABEL_31;
            }
          }

          else
          {
            v31 = 0;
            v18 = v102;
          }

          v30 = MEMORY[0x1E69E7D48];
LABEL_7:
          sub_1ADF9D98C(0, v31, v30);
          swift_endAccess();
          sub_1ADDCC35C(v114, *(&v114 + 1));
          v27 = v101;
        }
      }

      if (v36 > 1)
      {
        if (v36 == 2)
        {
          continue;
        }

        break;
      }

      if (v36)
      {
        break;
      }
    }

    while ((v37 & 0xFFFFFFFD) == 0);
    swift_beginAccess();
    v44 = *(a3 + 16);
    v45 = *(v44 + 16);
    sub_1ADDD86D8(v114, *(&v114 + 1));
    if (!v45 || (v46 = sub_1ADDDE7CC(v114, *(&v114 + 1)), (v47 & 1) == 0))
    {
      v29 = 0;
      v18 = v102;
LABEL_6:
      v30 = MEMORY[0x1E69E7D48];
      v31 = v29;
      goto LABEL_7;
    }

    v48 = (*(v44 + 56) + 16 * v46);
    v49 = *v48;
    v29 = v48[1];

    v18 = v102;
    if (!v49)
    {
      goto LABEL_6;
    }

    swift_endAccess();
    v50 = MEMORY[0x1E69E7D48];
    v51 = v49;
    v52 = v29;
LABEL_31:
    sub_1ADF9D98C(v51, v52, v50);
    v117 = v114;
    (*(a14 + 56))(v116, &v117, a12);
    if (v16)
    {
      goto LABEL_99;
    }

    if (!v116[0])
    {
      goto LABEL_105;
    }

    if (v29 == v116[0])
    {
      v54 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v53 = *(*v116[0] + 104);

      v54 = v53(v29);
    }

    v55 = *(v54 + 16);
    if (!v55)
    {

      v56 = MEMORY[0x1E69E7CC0];
LABEL_42:
      v105 = v56;
      v59 = *(v56 + 16);
      v60 = v18;
      v61 = *(v18 + 2);
      v100 = v59;
      v62 = v61 + v59;
      if (__OFADD__(v61, v59))
      {
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v64 = *(v60 + 3) >> 1, v64 >= v62))
      {
        v18 = v60;
      }

      else
      {
        if (v61 <= v62)
        {
          v65 = v62;
        }

        else
        {
          v65 = v61;
        }

        v18 = sub_1ADE5534C(isUniquelyReferenced_nonNull_native, v65, 1, v60);
        v64 = *(v18 + 3) >> 1;
      }

      if (*(v105 + 16))
      {
        if (v64 - *(v18 + 2) < v100)
        {
          goto LABEL_103;
        }

        swift_arrayInitWithCopy();

        if (v100)
        {
          v66 = *(v18 + 2);
          v67 = __OFADD__(v66, v100);
          v68 = v66 + v100;
          if (v67)
          {
            goto LABEL_104;
          }

          *(v18 + 2) = v68;
        }
      }

      else
      {

        if (v100)
        {
          goto LABEL_101;
        }
      }

      sub_1ADDCC35C(v114, *(&v114 + 1));

      v120 = v18;
      v27 = v101;
      continue;
    }

    break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  v103 = v54;
  v56 = swift_allocObject();
  v57 = _swift_stdlib_malloc_size(v56);
  v58 = v57 - 32;
  if (v57 < 32)
  {
    v58 = v57 - 17;
  }

  *(v56 + 16) = v55;
  *(v56 + 24) = 2 * (v58 >> 4);
  v104 = sub_1AE03A790(&v117, (v56 + 32), v55, v103);
  sub_1ADDDCE74(v117);
  if (v104 == v55)
  {
    goto LABEL_42;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

void sub_1ADF9D508(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4)
{
  sub_1ADF5F770(a4, &v7);
  sub_1ADF5F770(a3, &v11);
  v9 = v11;
  v10 = v12;
  v5 = &v9;
  MergeResult.merge(_:)(v5);
  v11 = v7;
  v12 = v8;
  swift_beginAccess();
  v6 = &v11;
  MergeResult.merge(_:)(v6);
}

unint64_t *sub_1ADF9D5AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1ADF9D824(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1ADF9D624(uint64_t a1)
{
  v1 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_17;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v5 = v20 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = *(v1 + 56) & v9;
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_12:
      *&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_1AE1B2384(v5, v3, v6, v1);
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_1AE1B2384(v5, v3, v6, v1);
      }

      v15 = *(v1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  v19 = sub_1ADF9D5AC(v18, v3, v1);

  MEMORY[0x1B26FDA50](v18, -1, -1);
  return v19;
}

unint64_t *sub_1ADF9D824(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = *(a3 + 56) & v9;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_14:

      return sub_1AE1B2384(v5, a2, v6, a3);
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      goto LABEL_14;
    }

    v15 = *(a3 + 56 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1ADF9D934()
{
  result = qword_1EB5B9508;
  if (!qword_1EB5B9508)
  {
    type metadata accessor for AnyReference();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9508);
  }

  return result;
}

uint64_t sub_1ADF9D98C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (result)
  {
    (a3)();

    return a3(a2);
  }

  return result;
}

void sub_1ADF9D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v19 = type metadata accessor for MissingTypedRefVisitor(0, a3, a4, a4);
  v23 = sub_1AE03D6C8(a2);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v21 = a4;
  swift_unknownObjectRetain();
  v22 = a1;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v24 = v5;
      v15 = v14;
LABEL_9:
      *v25 = *(*(v22 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
      v26 = v23;
      v16 = *(v21 + 96);
      v17 = v25[1];
      v18 = v25[0];
      sub_1ADDD86D8(v25[0], v25[1]);
      v16(v25, &v26, v19, &off_1F23C4578, a3, v21);
      v5 = v24;
      if (v24)
      {
        break;
      }

      v12 &= v12 - 1;
      sub_1ADDCC35C(v18, v17);
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_1ADDCC35C(v18, v17);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        swift_beginAccess();

        return;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        v24 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_1ADF9DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = type metadata accessor for CRStructEncoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[3] = MEMORY[0x1E69E7CC0];
  v10 = v8 + 3;
  v8[4] = v9;
  v8[2] = v6;
  v33[3] = v7;
  v33[4] = sub_1ADFA00FC();
  v33[0] = v8;
  v11 = v8;

  sub_1AE23CBAC();
  if (v34)
  {

    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    swift_beginAccess();
    v12 = *v10;
    v13 = v8 + 3;
    if (*(*v10 + 16))
    {
      v34 = v5;
      v14 = v11[4];

      sub_1AE03C634(v12, v14);
      v32[0] = v15;
      sub_1ADF7BDBC(v32);
      v16 = v9;

      v17 = v32[0];
      v18 = *(v32[0] + 16);
      if (v18)
      {
        v31 = v11;
        v32[0] = v16;
        sub_1ADE6F00C(0, v18, 0);
        v19 = v32[0];
        v20 = *(v32[0] + 16);
        v21 = 32;
        v22 = v18;
        do
        {
          v23 = *(v17 + v21);
          v32[0] = v19;
          v24 = *(v19 + 24);
          if (v20 >= v24 >> 1)
          {
            sub_1ADE6F00C((v24 > 1), v20 + 1, 1);
            v19 = v32[0];
          }

          *(v19 + 16) = v20 + 1;
          *(v19 + 8 * v20 + 32) = v23;
          v21 += 16;
          ++v20;
          --v22;
        }

        while (v22);
        *v13 = v19;

        v16 = MEMORY[0x1E69E7CC0];
        v32[0] = MEMORY[0x1E69E7CC0];
        sub_1AE23DB1C();
        v25 = 40;
        do
        {

          sub_1AE23DAEC();
          sub_1AE23DB2C();
          sub_1AE23DB3C();
          sub_1AE23DAFC();
          v25 += 16;
          --v18;
        }

        while (v18);

        v26 = v32[0];
        v11 = v31;
      }

      else
      {
        *v13 = v16;

        v26 = v16;
      }

      v11[4] = v26;

      v27 = *(v11[3] + 16);
    }

    else
    {
      v27 = 0;
      v16 = v9;
    }

    sub_1ADF7B940(0, v27);
    v28 = sub_1ADE522B8();

    if (v28)
    {
      *v13 = v16;
    }

    v29 = v11[3];
    v30 = v11[4];
    swift_beginAccess();

    sub_1AE1B6BF8(v29, v30);
    swift_endAccess();
  }
}

uint64_t sub_1ADF9DF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRStructEncoder.KeyedContainer(0, a2, a3, a4);

  swift_getWitnessTable();
  return sub_1AE23DD6C();
}

double sub_1ADF9DFCC(uint64_t a1, uint64_t a2, void *a3, int64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v56 = a7;
  v8 = a5;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v19 = v18;
  v20 = sub_1AE23E3DC();
  if (v21)
  {
    goto LABEL_34;
  }

  if (v20 < 0)
  {
    (*(v12 + 16))(v14, a1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
    v20 = swift_dynamicCast();
    if (v20)
    {
      a6 = 0;
      v30 = v59[0];
      v8 = v59[0] + 64;
      v31 = *(v59[0] + 64);
      v32 = 1 << *(v59[0] + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & v31;
      v35 = (v32 + 63) >> 6;
      v54 = v35;
      v55 = v59[0];
      if ((v33 & v31) != 0)
      {
LABEL_20:
        while (1)
        {
          v37 = (a6 << 9) | (8 * __clz(__rbit64(v34)));
          a4 = *(*(v30 + 48) + v37);
          if (a4 < 0)
          {
            break;
          }

          v38 = *(*(v30 + 56) + v37);
          swift_beginAccess();
          v39 = a3[3];
          v56 = v38;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a3[3] = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v39 = sub_1ADDF69D0(0, *(v39 + 2) + 1, 1, v39);
            a3[3] = v39;
          }

          v42 = *(v39 + 2);
          v41 = *(v39 + 3);
          if (v42 >= v41 >> 1)
          {
            v39 = sub_1ADDF69D0((v41 > 1), v42 + 1, 1, v39);
          }

          *(v39 + 2) = v42 + 1;
          *&v39[8 * v42 + 32] = a4;
          a3[3] = v39;
          v14 = a3[2];
          v43 = *(v14 + 14);
          a4 = *(v14 + 15);
          *(v14 + 15) = 0;
          *(v14 + 14) = 0;
          v44 = v60;
          v45 = (*(*v56 + 152))(a3[2]);
          v60 = v44;
          if (v44)
          {

LABEL_36:

            return result;
          }

          if (*(v14 + 15))
          {
            sub_1ADE42E40(v45, v46, v47);
            swift_allocError();
            *v53 = 0xD00000000000003DLL;
            *(v53 + 8) = 0x80000001AE260360;
            *(v53 + 16) = 3;
            swift_willThrow();

            return result;
          }

          if (!*(v14 + 14))
          {
            type metadata accessor for CREncoder.CRValueContainer();
            v48 = swift_allocObject();
            type metadata accessor for Proto_Value._StorageClass();
            inited = swift_initStaticObject();
            *(v48 + 16) = v14;
            *(v48 + 24) = inited;
            *(v14 + 14) = v48;
          }

          swift_beginAccess();
          *(v14 + 14) = v43;

          *(v14 + 15) = a4;

          v50 = swift_beginAccess();
          MEMORY[0x1B26FB860](v50);
          v51 = a3[4];
          if (*(v51 + 16) >= *(v51 + 24) >> 1)
          {
            a4 = *(v51 + 16);
            sub_1AE23D03C();
          }

          v34 &= v34 - 1;
          v19 = (a3 + 4);
          sub_1AE23D09C();
          swift_endAccess();

          v35 = v54;
          v30 = v55;
          if (!v34)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        while (1)
        {
          v36 = a6 + 1;
          if (__OFADD__(a6, 1))
          {
            break;
          }

          if (v36 >= v35)
          {
            goto LABEL_36;
          }

          v34 = *(v8 + 8 * v36);
          ++a6;
          if (v34)
          {
            a6 = v36;
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_34:
    sub_1ADE42E40(v20, v21, v22);
    swift_allocError();
    *v52 = xmmword_1AE24E080;
    *(v52 + 16) = 4;
    swift_willThrow();
    return result;
  }

  v14 = v20;
  (*(v12 + 16))(v17, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (!swift_dynamicCast())
  {
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    v20 = sub_1ADFA019C(v57);
    goto LABEL_34;
  }

  sub_1ADE23E6C(v57, v59);
  swift_beginAccess();
  v19 = a3[3];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  a3[3] = v19;
  if ((v23 & 1) == 0)
  {
LABEL_40:
    v23 = sub_1ADDF69D0(0, *(v19 + 2) + 1, 1, v19);
    v19 = v23;
    a3[3] = v23;
  }

  v25 = *(v19 + 2);
  v24 = *(v19 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1ADDF69D0((v24 > 1), v25 + 1, 1, v19);
    v19 = v23;
  }

  *(v19 + 2) = v25 + 1;
  *&v19[8 * v25 + 32] = v14;
  a3[3] = v19;
  MEMORY[0x1EEE9AC00](v23);
  *(&v54 - 6) = a4;
  *(&v54 - 5) = v8;
  v26 = v56;
  *(&v54 - 4) = a6;
  *(&v54 - 3) = v26;
  *(&v54 - 2) = v59;
  *(&v54 - 1) = a3;
  v27 = v60;
  sub_1ADE6B938(sub_1ADFA0284);
  if (!v27)
  {
    v28 = swift_beginAccess();
    MEMORY[0x1B26FB860](v28);
    if (*(a3[4] + 16) >= *(a3[4] + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  return result;
}

uint64_t sub_1ADF9E674@<X0>(uint64_t a1@<X1>, void *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X2>)
{
  a2[3] = &type metadata for CRStructEncoder.UnkeyedContanier;
  a2[4] = sub_1ADFA0090(a3, a1, a4);
  *a2 = a1;
}

uint64_t sub_1ADF9E6C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CRStructEncoder();
  a2[4] = sub_1ADFA00FC();
  *a2 = a1;
}

uint64_t sub_1ADF9E710@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CRStructEncoder();
  a2[4] = sub_1ADFA00FC();
  *a2 = a1;
}

double sub_1ADF9E7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  return sub_1ADF9DFCC(v6, a3, *v4, *(a4 + 16), MEMORY[0x1E69E6158], *(a4 + 24), MEMORY[0x1E69E6160]);
}

uint64_t sub_1ADF9EEBC(char a1, uint64_t a2)
{
  v6[3] = MEMORY[0x1E69E6370];
  v6[4] = &protocol witness table for Bool;
  LOBYTE(v6[0]) = a1;
  sub_1ADE6B938(sub_1ADFA0454);
  if (!v2)
  {
    v4 = swift_beginAccess();
    MEMORY[0x1B26FB860](v4);
    if (*(*(a2 + 32) + 16) >= *(*(a2 + 32) + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1ADF9EFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = MEMORY[0x1E69E6158];
  v7[4] = &protocol witness table for String;
  v7[0] = a1;
  v7[1] = a2;

  sub_1ADE6B938(sub_1ADFA0454);
  if (!v3)
  {
    v5 = swift_beginAccess();
    MEMORY[0x1B26FB860](v5);
    if (*(*(a3 + 32) + 16) >= *(*(a3 + 32) + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1ADF9F0A4(uint64_t a1, double a2)
{
  v6[3] = MEMORY[0x1E69E63B0];
  v6[4] = &protocol witness table for Double;
  *v6 = a2;
  sub_1ADE6B938(sub_1ADFA0454);
  if (!v2)
  {
    v4 = swift_beginAccess();
    MEMORY[0x1B26FB860](v4);
    if (*(*(a1 + 32) + 16) >= *(*(a1 + 32) + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1ADF9F194(uint64_t a1, float a2)
{
  v6[3] = MEMORY[0x1E69E6448];
  v6[4] = &protocol witness table for Float;
  *v6 = a2;
  sub_1ADE6B938(sub_1ADFA0454);
  if (!v2)
  {
    v4 = swift_beginAccess();
    MEMORY[0x1B26FB860](v4);
    if (*(*(a1 + 32) + 16) >= *(*(a1 + 32) + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1ADF9F284(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (swift_dynamicCast())
  {
    v7 = sub_1ADE23E6C(v14, v17);
    MEMORY[0x1EEE9AC00](v7);
    sub_1ADE6B938(a4);
    if (!v4)
    {
      v8 = swift_beginAccess();
      MEMORY[0x1B26FB860](v8);
      if (*(*(a2 + 32) + 16) >= *(*(a2 + 32) + 24) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      swift_endAccess();
    }

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v10 = sub_1ADFA019C(v14);
    sub_1ADE42E40(v10, v11, v12);
    swift_allocError();
    *v13 = xmmword_1AE24E080;
    *(v13 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF9F41C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (swift_dynamicCast())
  {
    v7 = sub_1ADE23E6C(v14, v17);
    MEMORY[0x1EEE9AC00](v7);
    sub_1ADE6B938(a4);
    if (!v4)
    {
      v8 = swift_beginAccess();
      MEMORY[0x1B26FB860](v8);
      if (*(*(a2 + 32) + 16) >= *(*(a2 + 32) + 24) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      swift_endAccess();
    }

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v10 = sub_1ADFA019C(v14);
    sub_1ADE42E40(v10, v11, v12);
    swift_allocError();
    *v13 = xmmword_1AE24E080;
    *(v13 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF9F5B4(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (swift_dynamicCast())
  {
    v7 = sub_1ADE23E6C(v14, v17);
    MEMORY[0x1EEE9AC00](v7);
    sub_1ADE6B938(a4);
    if (!v4)
    {
      v8 = swift_beginAccess();
      MEMORY[0x1B26FB860](v8);
      if (*(*(a2 + 32) + 16) >= *(*(a2 + 32) + 24) >> 1)
      {
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      swift_endAccess();
    }

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v10 = sub_1ADFA019C(v14);
    sub_1ADE42E40(v10, v11, v12);
    swift_allocError();
    *v13 = xmmword_1AE24E080;
    *(v13 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF9F74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9[3] = a3;
  v9[4] = a4;
  v9[0] = a1;
  sub_1ADE6B938(a5);
  if (!v5)
  {
    v7 = swift_beginAccess();
    MEMORY[0x1B26FB860](v7);
    if (*(*(a2 + 32) + 16) >= *(*(a2 + 32) + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1ADF9F81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB58, &qword_1AE24E550);
  if (swift_dynamicCast())
  {
    v8 = sub_1ADE23E6C(v16, v18);
    MEMORY[0x1EEE9AC00](v8);
    *&v16[-1] = v18;
    *(&v16[-1] + 1) = a2;
    sub_1ADE6B938(sub_1ADFA0204);
    if (!v3)
    {
      v9 = swift_beginAccess();
      MEMORY[0x1B26FB860](v9);
      v10 = *(a2 + 32);
      if (*(v10 + 16) >= *(v10 + 24) >> 1)
      {
        v18[6] = *(v10 + 16);
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      swift_endAccess();
    }

    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v12 = sub_1ADFA019C(v16);
    sub_1ADE42E40(v12, v13, v14);
    swift_allocError();
    *v15 = xmmword_1AE24E080;
    *(v15 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_1ADF9FA40()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 32) + 16);
}

uint64_t sub_1ADF9FE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t sub_1ADF9FE88@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for CRStructEncoder();
  a1[4] = sub_1ADFA00FC();
  *a1 = v3;
}

uint64_t sub_1ADF9FFE8@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = &type metadata for CRStructEncoder.UnkeyedContanier;
  a2[4] = a1();
  *a2 = v4;
}

unint64_t sub_1ADFA003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBB78;
  if (!qword_1EB5BBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB78);
  }

  return result;
}

unint64_t sub_1ADFA0090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBB80;
  if (!qword_1EB5BBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBB80);
  }

  return result;
}

unint64_t sub_1ADFA00FC()
{
  result = qword_1ED968040[0];
  if (!qword_1ED968040[0])
  {
    type metadata accessor for CRStructEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED968040);
  }

  return result;
}

uint64_t sub_1ADFA0150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFA019C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB88, &qword_1AE24EB68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADFA021C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(*(v2 + 16), v3, v4);
}

uint64_t sub_1ADFA0284()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(*(v2 + 16), v3, v4);
}

uint64_t sub_1ADFA046C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return sub_1ADE92304(v3, v4, v5, v6, v7);
}

double sub_1ADFA0518(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  v8 = v1[19];
  v9 = *(a1 + 16);
  *(v1 + 15) = *a1;
  *(v1 + 17) = v9;
  v1[19] = v3;
  return sub_1ADE92284(v4, v5, v6, v7, v8);
}

void sub_1ADFA0580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1ADFA04C4(v12);
  if (*(v7 + 32) != 1)
  {
    v13 = *(v2 + 72);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for Capsule(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
    Capsule.finalizeTimestamps(_:)(v13);
  }

  (v6)(v12, 0);
  v11 = objc_autoreleasePoolPush();
  sub_1ADFA06F8(v3, a1, a2, v12);
  objc_autoreleasePoolPop(v11);
}

void sub_1ADFA06F8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = a2;
  v20 = a3;
  v26 = *a1;
  v7 = *(v26 + 632);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - v9;
  sub_1ADFA046C(&v21);
  v11 = v25;
  if (v25 != 1)
  {
    v16 = a4;
    v12 = v21;
    v17 = v22;
    v18 = v21;
    v13 = v23;
    v14 = v24;
    (*(v8 + 16))(v10, &a1[*(*a1 + 656)], v7);
    v21 = v12;
    v15 = v17;
    v22 = v17;
    v23 = v13;
    v24 = v14;
    v25 = v11;
    (*(*(v26 + 640) + 32))(&v21, v19, *(a1 + 9), v20, v7);
    (*(v8 + 8))(v10, v7);
    sub_1ADE92284(v18, v15, v13, v14, v11);
    if (v4)
    {
      *v16 = v4;
    }
  }
}

uint64_t sub_1ADFA08D8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = *(*v4 + 632);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v19[-1] - v11;
  (*(v9 + 16))(&v19[-1] - v11, &v4[*(v7 + 656)], v8, v10);
  (*(*(v7 + 640) + 24))(v19, a1, *(v4 + 9), a2, v8);
  (*(v9 + 8))(v12, v8);
  if (!v3)
  {
    v13 = v19[0];
    v14 = v19[1];
    v15 = v19[2];
    v16 = v19[3];
    LOBYTE(v4) = sub_1AE215B78(v19);
    sub_1ADDCC35C(v13, v14);
    sub_1ADDCC35C(v15, v16);
  }

  return v4 & 1;
}

uint64_t sub_1ADFA0A90()
{
  v1 = *v0;
  v2.n128_f64[0] = sub_1ADE92284(v0[15], v0[16], v0[17], v0[18], v0[19]);
  v3 = *(*(*(v1 + 632) - 8) + 8);
  v4 = v0 + *(*v0 + 656);

  return v3(v4, v2);
}

id *sub_1ADFA0B20()
{
  v1 = *v0;
  v2 = sub_1AE213A10();
  v3 = sub_1ADE92284(v2[15], v2[16], v2[17], v2[18], v2[19]);
  (*(*(*(v1 + 632) - 8) + 8))(v2 + *(*v2 + 82), v3);
  return v2;
}

uint64_t sub_1ADFA0BB8()
{
  sub_1ADFA0B20();

  return swift_deallocClassInstance();
}

uint64_t *CRCustomFileSyncManager.__allocating_init(_:sync:at:customSync:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ADFA115C(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a4);

  return v7;
}

uint64_t *CRCustomFileSyncManager.init(_:sync:at:customSync:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = sub_1ADFA0FC8(a1, a2, a3, a4);
  (*(*(*(v7 + 80) - 8) + 8))(a4);

  return v8;
}

double CRCustomFileSyncManager.sync(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return sub_1AE213BD4(v4);
}

double CRCustomFileSyncManager.sync(_:finished:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return sub_1AE213F4C(v6, a2, a3);
}

uint64_t CRCustomFileSyncManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1ADFA0E20(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v11 = *v6;
  v12 = sub_1AE23BDDC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 4);
  *(v6 + 15) = 0u;
  *(v6 + 17) = 0u;
  v6[19] = 1;
  (*(*(*(v11 + 632) - 8) + 16))(v6 + *(v11 + 656), a4);
  v17 = *a2;
  v23[1] = a2[1];
  v23[0] = v17;
  v24 = v16;
  (*(v13 + 16))(v15, a3, v12);
  v18 = sub_1AE21BFC8(a1, v23, v15, v21, v22);
  (*(v13 + 8))(a3, v12);
  return v18;
}

uint64_t *sub_1ADFA0FC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_1AE23BDDC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 32);
  type metadata accessor for CRCustomFileSyncManagerInternals(0, *(v10 + 80), *(v10 + 88), v16);
  v17 = *a2;
  v21[1] = *(a2 + 16);
  v21[0] = v17;
  v22 = v15;
  (*(v12 + 16))(v14, a3, v11);
  swift_allocObject();
  v18 = sub_1ADFA0E20(a1, v21, v14, a4, 0, 0);
  (*(v12 + 8))(a3, v11);
  v5[2] = v18;
  return v5;
}

uint64_t sub_1ADFA1210(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1ADFA130C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v11 = a5;
  v15 = *(a1 + 16);
  if ((~v15 & 0xF000000000000007) != 0 && (v15 & 0xF000000000000000) == 0x2000000000000000)
  {
    v24 = (v15 & 0xFFFFFFFFFFFFFFFLL);
    v25 = v24[2];
    v26 = v24[3];
    v27 = v24[5];
    *&v37[48] = v24[4];
    v38 = v27;
    *&v37[16] = v25;
    *&v37[32] = v26;
    *v37 = v24[1];
    v33 = *(&v27 + 1);
    v34 = v27;
    v22 = v37[56];
    v31 = *&v37[24];
    v32 = *&v37[40];
    v30 = *&v37[8];
    v29 = *v37;
    v47 = a8;
    v35 = a2;
    sub_1ADFAEE10(v37, v36);
    v21 = v31;
    v23 = v32;
    v20 = v30;
    v17 = v29;
    v19 = v33;
    v18 = v34;
    v11 = a5;
    a2 = v35;
    a8 = v47;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v21 = 0uLL;
    v22 = 1;
    v23 = 0uLL;
  }

  v37[0] = v22;
  v40 = v17;
  v41 = v20;
  v42 = v21;
  v43 = v23;
  v44 = v22;
  v45 = v18;
  v46 = v19;
  sub_1ADE10DC0(&v40, a2, 0, 0, a3, a4, v11, a6, &v39, a7);

  if (!v8)
  {
    *a8 = v39;
  }
}

uint64_t sub_1ADFA14A4(uint64_t a1, void *a2)
{
  v6 = *v2;
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  v19[1] = v6;
  v8 = sub_1AE16CC2C(*(a1 + 16));
  v19[0] = 0;
  v9 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1ADFAD9A8(v8, a1, v19, a2, v9, WitnessTable, v20);

  if (!v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = swift_allocObject();
      v12 = *(inited + 16);
      *(v11 + 16) = v12;
      sub_1ADE5215C(v12);

      inited = v11;
    }

    v13 = swift_allocObject();
    v14 = v20[3];
    *(v13 + 48) = v20[2];
    *(v13 + 64) = v14;
    *(v13 + 80) = v20[4];
    v15 = v20[1];
    *(v13 + 16) = v20[0];
    *(v13 + 32) = v15;
    v16 = v13 | 0x2000000000000000;
    v17 = *(inited + 16);
    *(inited + 16) = v16;
    sub_1ADE52174(v17);
  }

  return inited;
}

uint64_t sub_1ADFA1604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  result = type metadata accessor for FinalizedTimestamp(0);
  v15 = *(result + 20);
  v16 = *(v4 + v15);
  if (*(a1 + v15) > v16)
  {
    v16 = *(a1 + v15);
  }

  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1ADDD2728(v4, type metadata accessor for FinalizedTimestamp);
    (*(v10 + 32))(v4, v13, v9);
    *(v4 + v15) = v17;
    (*(*(*(a3 + 16) - 8) + 24))(v4 + *(a3 + 36), a2);
    return sub_1ADDD2658(v4, a4, type metadata accessor for FinalizedTimestamp);
  }

  return result;
}

uint64_t sub_1ADFA17A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return sub_1ADECE30C(*(a2 + 16), *(*(a2 + 24) + 8));
  }

  (*(v9 + 32))(v13, v8, a2);
  v14 = sub_1ADF77EEC(*(v2 + *(a2 + 40)), *&v13[*(a2 + 40)]);
  (*(v9 + 8))(v13, a2);
  if (v14)
  {
    return sub_1ADECE30C(*(a2 + 16), *(*(a2 + 24) + 8));
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1ADFA199C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v12 - 8) + 56))(a6, 1, 1, v12);
  v14 = type metadata accessor for CRDictionaryElement.Delta(0, a4, a5, v13);
  v15 = *(v14 + 36);
  (*(*(a4 - 8) + 56))(a6 + v15, 1, 1, a4);
  sub_1ADF92F3C(a1, a6, &qword_1EB5BA460, &qword_1AE251020);
  v16 = sub_1AE23D7CC();
  result = (*(*(v16 - 8) + 40))(a6 + v15, a2, v16);
  *(a6 + *(v14 + 40)) = a3;
  return result;
}

uint64_t sub_1ADFA1ADC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = sub_1AE23D7CC();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v51 - v12;
  v13 = type metadata accessor for FinalizedTimestamp(0);
  v14 = *(v13 - 8);
  v58 = *(v14 + 56);
  v57 = v14 + 56;
  v58(a5, 1, 1, v13);
  v59 = a4;
  v16 = type metadata accessor for CRDictionaryElement.Delta(0, a3, a4, v15);
  v17 = *(a3 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v62 = *(v16 + 36);
  v66 = a5;
  v56 = v18;
  v18((a5 + v62), 1, 1, a3);
  v20 = a1[2];
  v21 = a1[3];
  v67 = a1;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  if (v20)
  {
    v23 = v21;
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v20, v21);

  v24 = v65;
  sub_1ADDF4A24(v22, v23, a2);
  if (v24)
  {

    v26 = v67;
    v76 = *v67;
    sub_1ADDCEDE0(&v76, &qword_1EB5BBD18, &qword_1AE24F340);
    v75 = v26[1];
    sub_1ADDCEDE0(&v75, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADE42CB8(v20, v21);
    v74 = v26[4];
    v27 = v66;
    sub_1ADDCEDE0(&v74, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADDCEDE0(v27, &qword_1EB5BA460, &qword_1AE251020);
    return (*(v63 + 8))(v27 + v62, v64);
  }

  v54 = v13;
  v53 = v19;
  v65 = a2;
  v55 = v21;
  v29 = v66;
  *(v66 + *(v16 + 40)) = v25;
  v30 = v67;
  v31 = v67[1];
  if (!v31)
  {

    v73 = *v30;
    sub_1ADDCEDE0(&v73, &qword_1EB5BBD18, &qword_1AE24F340);
    sub_1ADE42CB8(v20, v55);
    v72 = v30[4];
    return sub_1ADDCEDE0(&v72, qword_1EB5BBD20, &unk_1AE253900);
  }

  v32 = *(v31 + 16);
  if (v32 >> 60 || (v32 & 0xF000000000000007) == 0xF000000000000007)
  {
    v37 = &unk_1ED968480;
    swift_beginAccess();
    v36 = v61;
    if (byte_1ED9684A0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v33 = v67[1];
    v34 = v29;
    v35 = *(v32 + 16);
    swift_beginAccess();
    v36 = v61;
    if (*(v35 + 32))
    {
      v29 = v34;
      v31 = v33;
      goto LABEL_25;
    }

    v37 = *(v32 + 16);
    v29 = v34;
    v31 = v33;
  }

  swift_beginAccess();
  if (*(v37 + 32))
  {
    v38 = 0;
  }

  else
  {
    v38 = v37[2];
  }

  if (*(v37 + 32))
  {
    v39 = 0;
  }

  else
  {
    v39 = v37[3];
  }

  v40 = v65;

  sub_1ADE058D4(v38, v39, v40, v36);
  v58(v36, 0, 1, v54);
  sub_1ADF92F3C(v36, v29, &qword_1EB5BA460, &qword_1AE251020);
LABEL_25:
  v41 = *(v31 + 16);
  if (v41 >> 60 || (v41 & 0xF000000000000007) == 0xF000000000000007)
  {
    v43 = &unk_1ED968480;
    swift_beginAccess();
    if (qword_1ED9684A8)
    {
      goto LABEL_30;
    }

LABEL_32:

    v46 = v67;
    v71 = *v67;
    sub_1ADDCEDE0(&v71, &qword_1EB5BBD18, &qword_1AE24F340);

    sub_1ADE42CB8(v20, v55);
    v70 = v46[4];
    return sub_1ADDCEDE0(&v70, qword_1EB5BBD20, &unk_1AE253900);
  }

  v42 = *(v41 + 16);
  swift_beginAccess();
  if (!*(v42 + 40))
  {
    goto LABEL_32;
  }

  v43 = *(v41 + 16);
LABEL_30:
  v66 = v31;
  swift_beginAccess();
  v44 = v43[5];
  v52 = v20;
  if (v44)
  {
    inited = v44;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v47 = v65;

  v48 = sub_1ADE0262C(inited, v47);

  v49 = v60;
  (*(*(*(v59 + 8) + 8) + 8))(v48, a3);

  v50 = v67;
  v69 = *v67;
  sub_1ADDCEDE0(&v69, &qword_1EB5BBD18, &qword_1AE24F340);

  sub_1ADE42CB8(v52, v55);
  v68 = v50[4];
  sub_1ADDCEDE0(&v68, qword_1EB5BBD20, &unk_1AE253900);
  v56(v49, 0, 1, a3);
  return (*(v63 + 40))(v29 + v62, v49, v64);
}

void sub_1ADFA234C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v7 = *(a2 + 16);
  v8 = sub_1AE23D7CC();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  v69 = v7;
  v65 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v57 - v14;
  v16 = type metadata accessor for FinalizedTimestamp(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1ADF78ED0(v20, &v68);
  v67 = v68;
  sub_1ADDF5C7C(a1);
  v63 = v22;
  v64 = v21;

  sub_1ADE17348(v4, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1ADDCEDE0(v15, &qword_1EB5BA460, &qword_1AE251020);
    inited = 0;
    v25 = v69;
    v26 = v61;
  }

  else
  {
    sub_1ADE172E4(v15, v19);
    v58 = a1;
    v27 = sub_1ADDF66A8(v19);
    v57 = *&v19[*(v16 + 20)];
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v28 = *(inited + 16);
    if (v28 >> 60 || (v28 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v29 = swift_initStaticObject();
    }

    else
    {
      v29 = *(v28 + 16);
    }

    v25 = v69;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1ADDD2728(v19, type metadata accessor for FinalizedTimestamp);
    }

    else
    {
      type metadata accessor for Proto_Register._StorageClass();
      swift_allocObject();
      v30 = v27;

      v32 = sub_1ADDE8D20(v31);
      sub_1ADDD2728(v19, type metadata accessor for FinalizedTimestamp);

      v29 = v32;
      v27 = v30;
      v25 = v69;
    }

    swift_beginAccess();
    v33 = v57;
    *(v29 + 16) = v27;
    *(v29 + 24) = v33;
    *(v29 + 32) = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = swift_allocObject();
      v36 = *(inited + 16);
      *(v35 + 16) = v36;
      sub_1ADE5215C(v36);

      inited = v35;
    }

    a1 = v58;
    v37 = swift_allocObject();
    *(v37 + 16) = v29;
    v38 = *(inited + 16);
    *(inited + 16) = v37;
    v23.n128_f64[0] = sub_1ADE52174(v38);
  }

  v39 = v4 + *(a2 + 36);
  v40 = v62;
  (*(v26 + 16))(v10, v39, v62, v23);
  v41 = v65;
  if ((*(v65 + 48))(v10, 1, v25) == 1)
  {
    (*(v26 + 8))(v10, v40);
  }

  else
  {
    v42 = v59;
    v43 = (*(v41 + 32))();
    MEMORY[0x1EEE9AC00](v43);
    v44 = *(a2 + 24);
    *(&v57 - 4) = v25;
    *(&v57 - 3) = v44;
    *(&v57 - 2) = v42;
    *(&v57 - 1) = a1;
    v45 = v66;
    v46 = sub_1ADE6B938(sub_1ADE74060);
    if (v45)
    {
      (*(v41 + 8))(v42, v25);

      return;
    }

    v47 = v46;
    if (inited)
    {
      v48 = inited;
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v48 = swift_initStaticObject();
    }

    v49 = *(v48 + 16);
    if (v49 >> 60 || (v49 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v50 = swift_initStaticObject();
    }

    else
    {
      v50 = *(v49 + 16);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_Register._StorageClass();
      swift_allocObject();
      v50 = sub_1ADDE8D20(v50);
    }

    swift_beginAccess();
    *(v50 + 40) = v47;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v51 = swift_allocObject();
      v52 = *(v48 + 16);
      *(v51 + 16) = v52;
      sub_1ADE5215C(v52);

      v48 = v51;
    }

    v53 = swift_allocObject();
    *(v53 + 16) = v50;
    v54 = *(v48 + 16);
    *(v48 + 16) = v53;
    sub_1ADE52174(v54);

    (*(v41 + 8))(v42, v25);
    inited = v48;
  }

  v55 = v60;
  *v60 = 0;
  v55[1] = inited;
  v56 = v63;
  v55[2] = v64;
  v55[3] = v56;
  v55[4] = 0;
}

double sub_1ADFA2A18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v85 = a1;
  v4 = *(a2 + 16);
  v82 = sub_1AE23D7CC();
  v84 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v77 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v72 - v7;
  v81 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v20 = type metadata accessor for FinalizedTimestamp(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v72 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v72 - v26;
  v87 = a2;
  v27 = *(a2 + 24);
  v83 = v4;
  v80 = v27;
  v29 = type metadata accessor for CRDictionaryElement(255, v4, v27, v28);
  v30 = sub_1AE23D7CC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v72 - v32;
  v34 = *(v29 - 8);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v72 - v37;
  (*(v31 + 16))(v33, v85, v30, v36);
  v39 = (v21 + 48);
  if ((*(v34 + 48))(v33, 1, v29) == 1)
  {
    (*(v31 + 8))(v33, v30);
    v40 = v89;
    sub_1ADE17348(v89, v16);
    if ((*v39)(v16, 1, v20) == 1)
    {
      sub_1ADDCEDE0(v16, &qword_1EB5BA460, &qword_1AE251020);
LABEL_9:
      (*(v34 + 56))(v88, 1, 1, v29);
      return result;
    }

    v47 = v76;
    sub_1ADE172E4(v16, v76);
    v48 = v87;
    v49 = v84;
    v50 = v77;
    v51 = v82;
    (*(v84 + 16))(v77, v40 + *(v87 + 36), v82);
    v52 = v81;
    v46 = v83;
    if ((*(v81 + 48))(v50, 1, v83) == 1)
    {
      sub_1ADDD2728(v47, type metadata accessor for FinalizedTimestamp);
      (*(v49 + 8))(v50, v51);
      goto LABEL_9;
    }

    v67 = *(v52 + 32);
    v68 = v47;
    v69 = v74;
    v67(v74, v50, v46);
    v70 = v73;
    sub_1ADE172E4(v68, v73);
    v71 = v75;
    v67(v75, v69, v46);
    v63 = *(v40 + *(v48 + 40));
    v62 = v88;
    v64 = v88;
    v65 = v70;
    v66 = v71;
  }

  else
  {
    (*(v34 + 32))(v38, v33, v29);
    v41 = v89;
    sub_1ADE17348(v89, v19);
    v42 = *v39;
    v43 = v41;
    if ((*v39)(v19, 1, v20) == 1)
    {
      sub_1ADDD2658(v38, v86, type metadata accessor for FinalizedTimestamp);
      v44 = v42(v19, 1, v20);
      v46 = v83;
      v45 = v84;
      if (v44 != 1)
      {
        sub_1ADDCEDE0(v19, &qword_1EB5BA460, &qword_1AE251020);
      }
    }

    else
    {
      sub_1ADE172E4(v19, v86);
      v46 = v83;
      v45 = v84;
    }

    v54 = v87;
    v55 = v79;
    v56 = v82;
    (*(v45 + 16))(v79, v43 + *(v87 + 36), v82);
    v57 = v81;
    v58 = *(v81 + 48);
    if (v58(v55, 1, v46) == 1)
    {
      v59 = v78;
      (*(v57 + 16))(v78, &v38[*(v29 + 36)], v46);
      (*(v34 + 8))(v38, v29);
      v60 = v58(v55, 1, v46);
      v61 = v59;
      v54 = v87;
      if (v60 != 1)
      {
        (*(v84 + 8))(v55, v56);
      }
    }

    else
    {
      (*(v34 + 8))(v38, v29);
      v61 = v78;
      (*(v57 + 32))(v78, v55, v46);
    }

    v62 = v88;
    v63 = *(v89 + *(v54 + 40));
    v64 = v88;
    v65 = v86;
    v66 = v61;
  }

  sub_1ADE12F9C(v65, v66, v63, v46, v80, v64);
  (*(v34 + 56))(v62, 0, 1, v29);

  return result;
}

double sub_1ADFA323C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1ADFA234C(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_1ADFA3288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a5;
  v70 = *(a4 - 8);
  v71 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v9 + 16);
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v61 - v13;
  v14 = sub_1AE23D7CC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  v67 = type metadata accessor for FinalizedTimestamp(0);
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v26 = *a3;
  v25 = a3[1];
  v73 = v26;
  v74 = v25;
  v27 = *(a4 + 40);
  v66 = v5;
  v28 = *(v5 + v27);
  if ((sub_1ADF7974C(v28) & 1) == 0)
  {
    (*(v15 + 16))(v17, v71, v14);
    v40 = v70;
    if ((*(v70 + 48))(v17, 1, a4) == 1)
    {
      (*(v15 + 8))(v17, v14);
LABEL_11:
      v48 = type metadata accessor for CRDictionaryElement.Delta(0, v68, *(a4 + 24), v41);
      return (*(*(v48 - 8) + 56))(v69, 1, 1, v48);
    }

    v42 = v62;
    (*(v40 + 32))(v62, v17, a4);
    v43 = v66;
    v44 = v67;
    v45 = *(v67 + 20);
    v46 = *(v42 + v45);
    v47 = *(v66 + v45);
    if (v46 == v47)
    {
      if ((sub_1ADF5EB00(v42) & 1) == 0)
      {
LABEL_10:
        (*(v40 + 8))(v42, a4);
        goto LABEL_11;
      }
    }

    else if (v46 >= v47)
    {
      goto LABEL_10;
    }

    v49 = v64;
    sub_1ADDD2658(v43, v64, type metadata accessor for FinalizedTimestamp);
    (*(v63 + 56))(v49, 0, 1, v44);
    v50 = v68;
    v51 = v40;
    v52 = *(v68 - 8);
    v53 = v65;
    (*(v52 + 16))(v65, v43 + *(a4 + 36), v68);
    (*(v52 + 56))(v53, 0, 1, v50);
    v54 = *(a4 + 24);
    v55 = v69;
    sub_1ADFA199C(v49, v53, MEMORY[0x1E69E7CC0], v50, v54, v69);
    (*(v51 + 8))(v42, a4);
LABEL_19:
    v60 = type metadata accessor for CRDictionaryElement.Delta(0, v50, v54, v56);
    return (*(*(v60 - 8) + 56))(v55, 0, 1, v60);
  }

  v72 = v28;
  v73 = v26;
  v74 = v25;

  sub_1ADF777D8(&v73);
  v29 = v70;
  v30 = *(v70 + 48);
  v31 = v30(v71, 1, a4);
  v32 = v66;
  v33 = v67;
  if (v31 == 1)
  {
    goto LABEL_16;
  }

  sub_1ADDD2658(v66, v24, type metadata accessor for FinalizedTimestamp);
  (*(v15 + 16))(v20, v71, v14);
  result = v30(v20, 1, a4);
  if (result != 1)
  {
    v35 = v61;
    sub_1ADDD2658(v20, v61, type metadata accessor for FinalizedTimestamp);
    (*(v29 + 8))(v20, a4);
    v36 = *(v33 + 20);
    v37 = *(v35 + v36);
    v38 = *&v24[v36];
    if (v37 == v38)
    {
      v39 = sub_1ADF5EB00(v35);
    }

    else
    {
      v39 = v37 < v38;
    }

    sub_1ADDD2728(v35, type metadata accessor for FinalizedTimestamp);
    sub_1ADDD2728(v24, type metadata accessor for FinalizedTimestamp);
    if ((v39 & 1) == 0)
    {
      v57 = v64;
      (*(v63 + 56))(v64, 1, 1, v33);
      v50 = v68;
      v59 = v65;
      (*(*(v68 - 8) + 56))(v65, 1, 1, v68);
      goto LABEL_18;
    }

LABEL_16:
    v57 = v64;
    sub_1ADDD2658(v32, v64, type metadata accessor for FinalizedTimestamp);
    (*(v63 + 56))(v57, 0, 1, v33);
    v50 = v68;
    v58 = *(v68 - 8);
    v59 = v65;
    (*(v58 + 16))(v65, v32 + *(a4 + 36), v68);
    (*(v58 + 56))(v59, 0, 1, v50);
LABEL_18:
    v54 = *(a4 + 24);
    v55 = v69;
    sub_1ADFA199C(v57, v59, v72, v50, v54, v69);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADFA3A20(uint64_t a1)
{
  v7 = 0;
  v8 = 0xE000000000000000;
  MEMORY[0x1B26FB670](91, 0xE100000000000000);

  sub_1ADF78ED0(v1, &v6);
  v2 = CRVersion.description.getter();
  v4 = v3;

  MEMORY[0x1B26FB670](v2, v4);

  MEMORY[0x1B26FB670](4074845, 0xE300000000000000);
  sub_1AE23DFCC();
  return v7;
}

void *sub_1ADFA3BBC()
{
  v1 = v0;
  v2 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1ADDF5234(0, &v16);
  v14 = v16;
  sub_1ADDE1CB8(&v14);

  v5 = *(v0 + 16);
  v6 = qword_1ED967EE8;

  if (v6 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v7 = sub_1AE1FEFC0(&dword_1ED96F1F8, v5);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  swift_beginAccess();
  v8 = v1[4];
  *&v15 = v1[3];
  *(&v15 + 1) = v8;
  swift_beginAccess();
  v9 = v1[5];
  v10 = v1[6];
  v11 = qword_1ED96F250;
  swift_beginAccess();
  sub_1ADDD2658(v1 + v11, v4, type metadata accessor for FinalizedTimestamp);
  swift_allocObject();

  return sub_1ADE138D8(v7, &v15, v9, v10, v4);
}

uint64_t sub_1ADFA3E00(uint64_t (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v118 = a2;
  v107 = *v4;
  v7 = v107[55];
  v8 = v107[56];
  v110 = v107[59];
  v9 = type metadata accessor for CRDictionaryElement(255, v8, v110, a4);
  swift_getTupleTypeMetadata2();
  v10 = sub_1AE23D7CC();
  v115 = *(v10 - 8);
  v116 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v95 - v11;
  v102 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23C12C();
  v99 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v97 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v101);
  v105 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v7;
  v16 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v95 - v20;
  v112 = v9;
  v111 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v95 - v22;
  v113 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v113);
  v103 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v95 - v27;
  v29 = sub_1AE23D7CC();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v95 - v31;
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v108 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v95 - v38;
  (*(v30 + 16))(v32, a1, v29, v37);
  if ((*(v33 + 48))(v32, 1, v8) == 1)
  {
    v40 = *(v30 + 8);
    v40(v32, v29);
    v41 = v114;
    v42 = v118;
    sub_1AE16D8FC(v118, v114);
    (*(v16 + 8))(v42, v117);
    v40(a1, v29);
    return v115[1](v41, v116);
  }

  v96 = v30;
  v114 = v29;
  v115 = a1;
  v116 = v16;
  (*(v33 + 32))(v39, v32, v8);
  swift_beginAccess();
  v44 = v5;
  if (!*(*(v5 + 40) + 16) || (v45 = v107[58], , sub_1ADDFFB6C(v118, v117, v45), v47 = v46, , (v47 & 1) == 0))
  {
    v70 = qword_1ED96F278;
    v71 = sub_1AE23BFEC();
    (*(*(v71 - 8) + 16))(v28, v5 + v70, v71);
    v72 = v5 + qword_1ED96F250;
    swift_beginAccess();
    v73 = *(v113 + 20);
    v74 = *(v72 + v73);
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (!v75)
    {
      *&v28[v73] = v76;
      swift_beginAccess();
      sub_1ADFAF2E4(v28, v72);
      swift_endAccess();
      sub_1ADDD2658(v72, v28, type metadata accessor for FinalizedTimestamp);
      v77 = v108;
      (*(v33 + 16))(v108, v39, v8);
      v78 = v109;
      sub_1ADE12F9C(v28, v77, MEMORY[0x1E69E7CC0], v8, v110, v109);
      v79 = v118;
      sub_1AE16D0B0(v118, v78);
      (*(v116 + 8))(v79, v117);
      (*(v96 + 8))(v115, v114);
      (*(v111 + 8))(v78, v112);
      return (*(v33 + 8))(v39, v8);
    }

    __break(1u);
    goto LABEL_26;
  }

  v109 = v33;
  v110 = v8;
  v5 = v117;
  v48 = *(v116 + 16);
  v49 = v106;
  v48(v106, v118, v117);
  v50 = qword_1ED96F278;
  v51 = sub_1AE23BFEC();
  v52 = v103;
  (*(*(v51 - 8) + 16))(v103, v44 + v50, v51);
  v53 = v44 + qword_1ED96F250;
  swift_beginAccess();
  *(v52 + *(v113 + 20)) = *(v53 + *(v113 + 20));
  swift_beginAccess();
  v54 = v104;
  v48(v104, v49, v5);
  v55 = v112;
  sub_1AE23CADC();
  v56 = sub_1AE23CAEC();
  if ((*(v111 + 48))(v57, 1, v55) == 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v58 = v100;
  v113 = v39;
  sub_1ADFA1604(v52, v39, v55, v100);
  sub_1ADDD2728(v52, type metadata accessor for FinalizedTimestamp);
  v56(v119, 0);
  v59 = v116 + 8;
  v60 = *(v116 + 8);
  (v60)(v54, v5);
  a1 = v60;
  v116 = v59;
  (v60)(v106, v5);
  swift_endAccess();
  swift_beginAccess();
  sub_1ADFAF2E4(v58, v53);
  swift_endAccess();
  v61 = v105;
  sub_1ADE10580(v105);
  swift_beginAccess();
  if (!*(v61 + *(v102 + 20)))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v44 + 24);
    v63 = v120;
    *(v44 + 24) = 0x8000000000000000;
    v33 = sub_1ADDD8A6C(v61);
    v82 = v63[2];
    v83 = (v81 & 1) == 0;
    v84 = v82 + v83;
    if (!__OFADD__(v82, v83))
    {
      v85 = v81;
      if (v63[3] >= v84)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADDFB81C();
          v63 = v120;
        }
      }

      else
      {
        sub_1ADDDDED0(v84, isUniquelyReferenced_nonNull_native);
        v63 = v120;
        v86 = sub_1ADDD8A6C(v61);
        if ((v85 & 1) != (v87 & 1))
        {
          goto LABEL_30;
        }

        v33 = v86;
      }

      v89 = v114;
      v88 = v115;
      *(v44 + 24) = v63;
      if (v85)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    goto LABEL_27;
  }

  v62 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *(v44 + 32);
  v63 = v120;
  *(v44 + 32) = 0x8000000000000000;
  v33 = sub_1ADDD8A6C(v61);
  v65 = v63[2];
  v66 = (v64 & 1) == 0;
  v67 = v65 + v66;
  if (__OFADD__(v65, v66))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1ADDFB81C();
    v63 = v120;
LABEL_18:
    v89 = v114;
    v88 = v115;
    *(v44 + 32) = v63;
    if (v5)
    {
LABEL_19:
      v90 = v96;
      v91 = v105;
LABEL_24:
      v94 = v118;
      sub_1AE23C08C();
      sub_1ADDD2728(v91, type metadata accessor for Timestamp);
      swift_endAccess();
      (a1)(v94, v117);
      (*(v90 + 8))(v88, v89);
      return (*(v109 + 8))(v113, v110);
    }

LABEL_23:
    v92 = v97;
    sub_1AE23C11C();
    v91 = v105;
    v93 = v98;
    sub_1ADDD2658(v105, v98, type metadata accessor for Replica);
    sub_1ADDDE678(v33, v93, v92, v63);
    v90 = v96;
    goto LABEL_24;
  }

  LOBYTE(v5) = v64;
  if (v63[3] >= v67)
  {
    if (v62)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  sub_1ADDDDED0(v67, v62);
  v63 = v120;
  v68 = sub_1ADDD8A6C(v61);
  if ((v5 & 1) == (v69 & 1))
  {
    v33 = v68;
    goto LABEL_18;
  }

LABEL_30:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADFA4AD4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a3;
  v18 = a2;
  v19 = a1;
  v21 = a5;
  v6 = *(*v5 + 448);
  v7 = type metadata accessor for CRDictionaryElement(255, v6, *(*v5 + 472), a4);
  v20 = sub_1AE23D7CC();
  v8 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v17 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  swift_beginAccess();

  sub_1AE23CB7C();

  if ((*(*(v7 - 8) + 48))(v10, 1, v7))
  {
    v15 = (*(v8 + 8))(v10, v20);
    return v18(v15);
  }

  else
  {
    (*(v11 + 16))(v14, &v10[*(v7 + 36)], v6);
    (*(v8 + 8))(v10, v20);
    return (*(v11 + 32))(v21, v14, v6);
  }
}

uint64_t sub_1ADFA4D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(*v3 + 440);
  v7 = *(*v3 + 448);
  v8 = type metadata accessor for CRDictionaryElement(255, v7, *(*v3 + 472), a2);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_1AE23D7CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  sub_1AE16D8FC(a1, &v17 - v12);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
  {
    (*(v11 + 8))(v13, v10);
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }

  else
  {
    v15 = &v13[*(TupleTypeMetadata2 + 48)];
    v16 = *(v7 - 8);
    (*(v16 + 16))(a3, &v15[*(v8 + 36)], v7);
    (*(*(v8 - 8) + 8))(v15, v8);
    (*(v16 + 56))(a3, 0, 1, v7);
    return (*(*(v6 - 8) + 8))(v13, v6);
  }
}

uint64_t sub_1ADFA5020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v25 = a3;
  v6 = *v3;
  v7 = type metadata accessor for FinalizedTimestamp(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  sub_1AE16B474(a1, a2, &v26);
  v17 = qword_1ED96F250;
  swift_beginAccess();
  sub_1ADDD2658(v3 + v17, v13, type metadata accessor for FinalizedTimestamp);
  v18 = qword_1ED96F250;
  swift_beginAccess();
  sub_1ADDD2658(a2 + v18, v10, type metadata accessor for FinalizedTimestamp);
  v19 = *(v8 + 28);
  v20 = *&v10[v19];
  v21 = *&v13[v19];
  if (v20 != v21)
  {
    if (v20 >= v21)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = v10;
    v10 = v13;
    goto LABEL_6;
  }

  if (sub_1ADF5EB00(v10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = v13;
LABEL_6:
  sub_1ADDD2728(v22, type metadata accessor for FinalizedTimestamp);
  sub_1ADE172E4(v10, v16);
  return sub_1ADFA5220(&v26, v16, v6[55], v6[56], v6[57], v6[58], v6[59], v6[60], v25);
}

uint64_t sub_1ADFA5220@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v11 = a1[1];
  *a9 = *a1;
  a9[1] = v11;
  a9[2] = a1[2];
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v12 = type metadata accessor for CRDictionary.MergeableDelta(0, v14);
  return sub_1ADE172E4(a2, a9 + *(v12 + 68));
}

uint64_t sub_1ADFA5284()
{
  sub_1ADDD2728(v0 + qword_1ED96F250, type metadata accessor for FinalizedTimestamp);
  v1 = qword_1ED96F278;
  v2 = sub_1AE23BFEC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t CRDictionary.copy(renamingReferences:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v67 = a1;
  v61 = a3;
  v5 = *(a2 + 24);
  v74 = sub_1AE23D7CC();
  v81 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v68 = &v60 - v6;
  v7 = *(a2 + 16);
  v71 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  *&v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v60 = v20;
  v21 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v65 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - v24;
  v26 = *v3;
  v27 = *(a2 + 32);
  v29 = *(a2 + 48);
  v28 = *(a2 + 56);
  v75 = a2;
  v78 = v27;
  v79 = v7;
  v30 = v27;
  v77 = v28;
  CRDictionary.init()(v7, v5, v27, *(&v27 + 1), v29, v28, &v87);
  v31 = *v67;
  v76 = (v11 + 48);
  v73 = (v71 + 4);
  v32 = *(v31 + 16);
  v72 = v5 - 8;
  ++v71;
  v70 = (v81 + 8);
  v69 = (v11 + 8);
  v80 = v29;
  v81 = v5;
  if (v32)
  {
    *&v82 = v26;
    CRDictionary.makeIterator()(&v86);
    v33 = v5;
    v34 = v60;
    v35 = v30;
    while (1)
    {
      *&v82 = v79;
      *(&v82 + 1) = v33;
      v83 = v78;
      v84 = v80;
      v85 = v77;
      v36 = type metadata accessor for CRDictionary.Iterator(0, &v82);
      CRDictionary.Iterator.next()(v36, v37, v25);
      if ((*v76)(v25, 1, v34) == 1)
      {
        break;
      }

      v38 = *(v34 + 48);
      v39 = v79;
      (*v73)(v19, v25, v79);
      v40 = *(v33 - 8);
      (*(v40 + 32))(&v19[v38], &v25[v38], v33);
      v41 = v66;
      v42 = v67;
      (*(*(v35 + 8) + 24))(v67, v39);
      v43 = v68;
      v44 = v42;
      v33 = v81;
      (*(*(v80 + 8) + 24))(v44, v81);
      (*(v40 + 56))(v43, 0, 1, v33);
      sub_1ADFAEA78(v43, v41, v75);
      (*v71)(v41, v39);
      (*v70)(v43, v74);
      (*v69)(v19, v34);
    }
  }

  else
  {
    v63 = v16;
    v64 = v13;
    *&v82 = v26;
    CRDictionary.makeIterator()(&v86);
    v62 = (v11 + 16);
    *&v45 = v79;
    *(&v45 + 1) = v5;
    v66 = v45;
    v46 = v60;
    v47 = v79;
    while (1)
    {
      v82 = v66;
      v83 = v78;
      v84 = v80;
      v85 = v77;
      v48 = type metadata accessor for CRDictionary.Iterator(0, &v82);
      v49 = v65;
      CRDictionary.Iterator.next()(v48, v50, v65);
      if ((*v76)(v49, 1, v46) == 1)
      {
        break;
      }

      v51 = *(v46 + 48);
      (*v73)(v19, v49, v47);
      v52 = *(v5 - 8);
      v53 = *(v52 + 32);
      v53(&v19[v51], v49 + v51, v5);
      v54 = *v62;
      v55 = v63;
      (*v62)(v63, v19, v46);
      v67 = *(v46 + 48);
      v56 = v64;
      v54(v64, v19, v46);
      v57 = v68;
      v53(v68, &v56[*(v46 + 48)], v81);
      (*(v52 + 56))(v57, 0, 1, v81);
      sub_1ADFAEA78(v57, v55, v75);
      v58 = *v71;
      (*v71)(v55, v47);
      (*v70)(v57, v74);
      (*v69)(v19, v46);
      v58(v56, v47);
      v5 = v81;
      (*(v52 + 8))(v67 + v55, v81);
    }
  }

  result = sub_1ADDDCE74(v86);
  *v61 = v87;
  return result;
}

double CRDictionary.makeIterator()@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = -1 << *(v4 + 32);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = -v5;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  *a1 = v4;
  a1[1] = v4 + 64;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v9 & v7;

  return result;
}

void CRDictionary.Iterator.next()(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = a1[6];
  v84 = a1[3];
  v7 = type metadata accessor for CRDictionaryElement(0, v84, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v72 - v9;
  v10 = *(a1[2] - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14;
  v17 = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v19);
  v20 = TupleTypeMetadata2;
  v93 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v73 = &v72 - v26;
  v27 = *v3;
  v28 = v3[1];
  v91 = v15;
  v92 = v28;
  v29 = v3[3];
  v94 = v3[2];
  v30 = v3[4];
  v31 = v29;
  v85 = a3;
  v86 = v24;
  v77 = v8;
  v78 = v17;
  v80 = v10;
  v75 = v32;
  v76 = v33;
  v83 = v34;
  v74 = v35;
  v89 = v30;
  v90 = v29;
  v87 = v20;
  v88 = v27;
  if (v30)
  {
LABEL_10:
    v82 = (v30 - 1) & v30;
    v42 = __clz(__rbit64(v30)) | (v31 << 6);
    v43 = *(v27 + 48) + *(v10 + 72) * v42;
    v44 = *(v10 + 16);
    v45 = v13;
    v79 = v13;
    v46 = v27;
    v47 = v24;
    v44(v45, v43, v15, v25);
    v48 = *(v46 + 56) + *(v8 + 72) * v42;
    v49 = v81;
    (*(v8 + 16))(v81, v48, v17);
    v50 = *(v20 + 48);
    (*(v10 + 32))(v47, v79, v15);
    (*(v8 + 32))(v47 + v50, v49, v17);
    v51 = v93;
    (*(v93 + 56))(v47, 0, 1, v20);
    v81 = v31;
    v41 = v92;
LABEL_11:
    v52 = *v3;
    v53 = v88;
    v54 = v94;
    sub_1ADFAEBFC(v88);
    sub_1ADDDCE74(v52);
    *v3 = v53;
    v3[1] = v41;
    v56 = v81;
    v55 = v82;
    v3[2] = v54;
    v3[3] = v56;
    v3[4] = v55;
    v57 = v86;
    v58 = v87;
    if ((*(v51 + 48))(v86, 1, v87) == 1)
    {
      (*(v74 + 8))(v57, v75);
      v59 = swift_getTupleTypeMetadata2();
      (*(*(v59 - 8) + 56))(v85, 1, 1, v59);
    }

    else
    {
      v93 = *(v51 + 32);
      v60 = v73;
      (v93)(v73, v57, v58);
      v61 = v91;
      v62 = v84;
      v63 = swift_getTupleTypeMetadata2();
      v92 = *(v63 + 48);
      v64 = v83;
      (*(v51 + 16))(v83, v60, v58);
      v94 = *(v58 + 48);
      v65 = v80;
      v66 = v85;
      (*(v80 + 32))(v85, v64, v61);
      v67 = v76;
      (v93)(v76, v60, v58);
      v68 = v67 + *(v58 + 48);
      v69 = v78;
      (*(*(v62 - 8) + 16))(v66 + v92, v68 + *(v78 + 36), v62);
      v70 = *(v77 + 8);
      v70(v68, v69);
      (*(*(v63 - 8) + 56))(v66, 0, 1, v63);
      (*(v65 + 8))(v67, v61);
      v70(v83 + v94, v69);
    }
  }

  else
  {
    v36 = v13;
    v37 = (v94 + 64) >> 6;
    if (v37 <= v29 + 1)
    {
      v38 = v29 + 1;
    }

    else
    {
      v38 = (v94 + 64) >> 6;
    }

    v39 = (v38 - 1);
    v40 = v29;
    v41 = v92;
    while (1)
    {
      v31 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v31 >= v37)
      {
        v51 = v93;
        v71 = *(v93 + 56);
        v81 = v39;
        v71(v24, 1, 1, v20, v25);
        v82 = 0;
        goto LABEL_11;
      }

      v30 = *(v92 + 8 * v31);
      ++v40;
      if (v30)
      {
        v15 = v91;
        v10 = v80;
        v13 = v36;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t CRDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADFAEA78(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t CRDictionary.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRDictionary.copy(renamingReferences:)(&v7, a2, a3);
}

double CRDictionary.version.getter@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;

  return result;
}

void CRDictionary.init(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  CRDictionary.init()(a2, a3, a4, a5, a6, a7, &v10);

  *a8 = v10;
}

void *CRDictionary.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = CRDictionary.init()(a1, a2, a3, a4, a5, a6, &v9);
  *a7 = v9;
  return result;
}

void CRDictionary.MutatingAction.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  if (*(a1 + 64))
  {
    v60 = a4;
    v61 = a6;
    v62 = a5;
    v55 = a8;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v56 = inited;
    sub_1ADDE78C8();
    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && (v14 & 0xF000000000000000) == 0x1000000000000000)
    {
      v21 = (v14 & 0xFFFFFFFFFFFFFFFLL);
      v22 = v21[3];
      v16 = v21[5];
      v17 = v21[6];
      v18 = v21[10];
      v19 = v21[11];
      v57 = a7;
      v63 = v22;

      sub_1ADE42C78(v16, v17);
      sub_1ADE42C78(v18, v19);
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v63 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42CB8(v16, v17);
    v23 = sub_1ADE42CB8(v18, v19);
    v58 = &v52;
    v65 = v63;
    MEMORY[0x1EEE9AC00](v23);
    v45 = a2;
    v46 = a3;
    v47 = v60;
    v48 = v62;
    v49 = v61;
    v50 = a7;
    v51 = a1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v26 = v24;
    v27 = sub_1ADE11630();
    v28 = v59;
    v29 = sub_1ADE08EB0(sub_1ADFAEC04, v44, v26, a2, v25, v27, MEMORY[0x1E69E7288], &v64);
    if (v28)
    {
    }

    else
    {
      v30 = v29;
      v52 = v27;
      v53 = v26;
      v57 = a7;
      v59 = a3;

      v65 = v30;
      sub_1AE23D11C();
      swift_getWitnessTable();
      v63 = sub_1AE23D39C();
      sub_1ADDE78C8();
      v32 = 0;
      v33 = v31[2];
      v54 = a2;
      if ((~v33 & 0xF000000000000007) != 0)
      {
        v34 = MEMORY[0x1E69E7CC0];
        v35 = 0;
        v36 = 0;
        v37 = 0;
        if ((v33 & 0xF000000000000000) == 0x1000000000000000)
        {
          v38 = (v33 & 0xFFFFFFFFFFFFFFFLL);
          v34 = v38[4];
          v32 = v38[5];
          v35 = v38[6];
          v36 = v38[10];
          v37 = v38[11];
          v58 = v31;

          sub_1ADE42C78(v32, v35);
          sub_1ADE42C78(v36, v37);
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
        v35 = 0;
        v36 = 0;
        v37 = 0;
      }

      sub_1ADE42CB8(v32, v35);
      v39 = sub_1ADE42CB8(v36, v37);
      v56 = &v52;
      v58 = v34;
      v65 = v34;
      MEMORY[0x1EEE9AC00](v39);
      v45 = v54;
      v46 = v59;
      v47 = v60;
      v48 = v62;
      v49 = v61;
      v50 = v57;
      v51 = a1;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v41 = sub_1ADE08EB0(sub_1ADFAEC30, v44, v53, TupleTypeMetadata2, v25, v52, MEMORY[0x1E69E7288], &v64);

      v65 = v41;
      sub_1AE23D11C();
      swift_getWitnessTable();
      v42 = sub_1AE23CA4C();

      v43 = v55;
      *v55 = v63;
      v43[1] = v42;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v20 = 0xD000000000000014;
    *(v20 + 8) = 0x80000001AE25FB50;
    *(v20 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ADFA6998(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v14 = sub_1ADE0262C(inited, a2);

  result = (*(*(*(a5 + 8) + 8) + 8))(v14, a3);
  if (v9)
  {
    *a9 = v9;
  }

  return result;
}

double sub_1ADFA6A8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v12 = a1[1];
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v14 = swift_initStaticObject();
  }

  v15 = *(v14 + 16);
  if (v15 >> 60)
  {
    v16 = 1;
  }

  else
  {
    v16 = (v15 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v16)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v17 = swift_initStaticObject();
  }

  else
  {
    v17 = *(v15 + 16);
  }

  swift_beginAccess();
  if (*(v17 + 40))
  {
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    swift_initStaticObject();
  }

  swift_allocObject();

  v19 = sub_1ADE0262C(v18, a2);

  v20 = *(*(a5 + 8) + 8);
  v21 = *(v20 + 8);

  v21(v22, a3, v20);
  if (v26)
  {

    *a9 = v26;
  }

  else
  {
    swift_getTupleTypeMetadata2();
    (*(*(*(a7 + 8) + 8) + 8))(v19, a4);
  }

  return result;
}

uint64_t CRDictionary.MutatingAction.encode(to:)(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  result = sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v10 = result;
    v45 = v7;
    v65 = v38;
    v46[0] = v8;
    MEMORY[0x1EEE9AC00](result);
    v11 = a2[3];
    v31 = a2[2];
    v32 = v11;
    v42 = v11;
    v12 = a2[5];
    v41 = a2[4];
    v33 = v41;
    v34 = v12;
    v13 = a2[7];
    v40 = a2[6];
    v35 = v40;
    v36 = v13;
    v39 = v13;
    v37 = a1;
    v43 = v31;
    v14 = sub_1AE23D38C();

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v44 = v15;
    v38[0] = sub_1ADE08EB0(sub_1ADFAEC5C, &v30, v14, &type metadata for Proto_Set.Element, v15, WitnessTable, MEMORY[0x1E69E7288], &v55);
    v38[1] = v10;

    v65 = v38;
    v55 = v45;
    MEMORY[0x1EEE9AC00](v17);
    v31 = v43;
    v32 = v42;
    v33 = v41;
    v34 = v12;
    v35 = v40;
    v36 = v39;
    v37 = a1;
    MEMORY[0x1EEE9AC00](v18);
    v29[2] = v19;
    v29[3] = v20;
    v29[4] = v21;
    v29[5] = v12;
    v29[6] = v22;
    v29[7] = v23;
    v29[8] = sub_1ADFAED3C;
    v29[9] = v24;
    v25 = sub_1AE23CB1C();

    v26 = swift_getWitnessTable();
    v27 = sub_1ADE08EB0(sub_1ADFAED70, v29, v25, &type metadata for Proto_Set.Element, v44, v26, MEMORY[0x1E69E7288], v47);

    v28 = v38[0];
    *&v57 = 0;
    *(&v57 + 1) = v38[0];
    v58 = v27;
    v59 = 0u;
    v60 = 0u;
    v61 = 1;
    *v62 = *v56;
    *&v62[3] = *&v56[3];
    v63 = 0;
    v64 = 0;
    swift_beginAccess();
    sub_1ADFAEE10(&v57, v48);
    sub_1AE1B7950(&v57);
    swift_endAccess();

    v48[0] = 0;
    v48[1] = v28;
    v48[2] = v27;
    v49 = 0u;
    v50 = 0u;
    v51 = 1;
    *v52 = *v56;
    *&v52[3] = *&v56[3];
    v53 = 0;
    v54 = 0;
    return sub_1ADFAECE8(v48);
  }

  return result;
}

void sub_1ADFA718C(uint64_t *a1@<X8>)
{
  v3 = sub_1ADE6B938(sub_1ADFB0288);
  if (!v1)
  {
    v14 = v3;
    MEMORY[0x1EEE9AC00](v3);
    v4 = sub_1ADE6B938(sub_1ADFB0048);
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v6 = *(inited + 16);
    if (v6 >> 60 || (v6 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v7 = swift_initStaticObject();
    }

    else
    {
      v7 = *(v6 + 16);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_Register._StorageClass();
      swift_allocObject();

      v9 = sub_1ADDE8D20(v8);

      v7 = v9;
    }

    swift_beginAccess();
    *(v7 + 40) = v4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = swift_allocObject();
      v11 = *(inited + 16);
      *(v10 + 16) = v11;
      sub_1ADE5215C(v11);

      inited = v10;
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    v13 = *(inited + 16);
    *(inited + 16) = v12;
    sub_1ADE52174(v13);
    *a1 = v14;
    a1[1] = inited;
    a1[3] = 0;
    a1[4] = 0;
    a1[2] = 0;
  }
}

void CRDictionary.actionUndoingDifference(from:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2;
  v116 = a3;
  v6 = 0;
  v160 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v8 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v118 = &v113 - v9;
  v10 = v4[6];
  v124 = v7;
  v11 = v10;
  v13 = type metadata accessor for CRDictionaryElement(255, v7, v10, v12);
  v122 = sub_1AE23D7CC();
  v147 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v137 = &v113 - v14;
  v129 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v132 = &v113 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v113 - v20;
  v128 = *(v4[2] - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v113 - v25;
  v150 = v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v140 = sub_1AE23D7CC();
  v138 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v149 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v145 = &v113 - v29;
  v30 = *a1;
  v31 = *v3;
  if (*(*v3 + 48) == v30[6])
  {
    v114 = 0;
    swift_retain_n();
  }

  else
  {
    if (qword_1ED96B308 != -1)
    {
LABEL_43:
      swift_once();
    }

    sub_1AE23D6AC();
    v114 = v6;
    v32 = v157;
    v33 = BYTE8(v157);
    v34 = v158;
    v30 = sub_1AE16CB8C(v157, SBYTE8(v157), v158);

    v31 = sub_1AE16CB8C(v32, v33, v34);
  }

  v35 = v4[5];

  v36 = v150;
  v156 = sub_1AE23C9EC();
  v37 = v124;
  v155 = sub_1AE23C9CC();
  v159 = 0;
  v157 = 0u;
  v158 = 0u;
  MEMORY[0x1EEE9AC00](v155);
  *(&v113 - 8) = v36;
  *(&v113 - 7) = v37;
  *(&v113 - 6) = v4[4];
  *(&v113 - 5) = v35;
  v143 = v35;
  v38 = v4[7];
  *(&v113 - 4) = v11;
  *(&v113 - 3) = v38;
  *(&v113 - 2) = &v156;
  MEMORY[0x1EEE9AC00](v39);
  v120 = v40;
  *(&v113 - 4) = v40;
  *(&v113 - 3) = &v155;
  *(&v113 - 2) = v30;
  sub_1AE1710B0(v30, &v157, sub_1ADFB0284, v41, sub_1ADFAEE6C, (&v113 - 6));

  sub_1ADDCEDE0(&v157, &qword_1EB5BAA40, &unk_1AE24EC50);
  swift_beginAccess();
  v42 = v31[5];

  v115 = v31;

  v43 = *(v42 + 64);
  v142 = v42 + 64;
  v127 = v42;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v141 = v30;
  swift_beginAccess();
  v4 = 0;
  v47 = (v44 + 63) >> 6;
  v139 = TupleTypeMetadata2 - 8;
  v130 = (v128 + 16);
  v125 = v129 + 16;
  v148 = (v128 + 32);
  v144 = (v129 + 32);
  v138 += 4;
  v135 = (v129 + 48);
  v117 = v37 - 8;
  v134 = (v129 + 8);
  v133 = (v128 + 8);
  v119 = (v147 + 8);
  v48 = v132;
  v147 = v23;
  v6 = v149;
  v136 = v47;
  v121 = v13;
  while (1)
  {
    if (!v46)
    {
      v11 = v13;
      if (v47 <= v4 + 1)
      {
        v50 = v4 + 1;
      }

      else
      {
        v50 = v47;
      }

      v51 = v50 - 1;
      v13 = TupleTypeMetadata2;
      v52 = v145;
      v53 = v144;
      while (1)
      {
        v49 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v49 >= v47)
        {
          v46 = 0;
          v64 = 1;
          v4 = v51;
          goto LABEL_21;
        }

        v46 = *(v142 + 8 * v49);
        v4 = (v4 + 1);
        if (v46)
        {
          v4 = v49;
          v13 = v11;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v49 = v4;
LABEL_20:
    v54 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v55 = v54 | (v49 << 6);
    v56 = v127;
    v57 = v128;
    (*(v128 + 16))(v131, *(v127 + 48) + *(v128 + 72) * v55, v150);
    v58 = v129;
    v59 = *(v56 + 56) + *(v129 + 72) * v55;
    v60 = v126;
    (*(v129 + 16))(v126, v59, v13);
    v61 = v13;
    v13 = TupleTypeMetadata2;
    v62 = *(TupleTypeMetadata2 + 48);
    v6 = v149;
    (*(v57 + 32))();
    v63 = *(v58 + 32);
    v11 = v61;
    v53 = v144;
    v63(&v6[v62], v60, v61);
    v64 = 0;
    v23 = v147;
    v52 = v145;
    v48 = v132;
LABEL_21:
    v65 = *(v13 - 8);
    (*(v65 + 56))(v6, v64, 1, v13);
    (*v138)(v52, v6, v140);
    if ((*(v65 + 48))(v52, 1, v13) == 1)
    {
      break;
    }

    v66 = *(v13 + 48);
    v67 = v52;
    v68 = v52;
    v69 = v150;
    (*v148)(v23, v67, v150);
    v70 = *v53;
    v71 = &v68[v66];
    v13 = v11;
    (*v53)(v48, v71, v11);

    v72 = v137;
    sub_1AE23CB7C();

    if ((*v135)(v72, 1, v13) == 1)
    {
      (*v134)(v48, v13);
      (*v133)(v23, v69);
      (*v119)(v72, v122);
      goto LABEL_9;
    }

    v73 = v13;
    v74 = v48;
    v75 = v123;
    v70(v123, v72, v73);
    v76 = *(v73 + 36);
    if (sub_1AE23CCBC())
    {
LABEL_35:
      v107 = *v134;
      v106 = v121;
      (*v134)(v75, v121);
      v107(v74, v106);
      v23 = v147;
      (*v133)(v147, v150);
      goto LABEL_36;
    }

    v77 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
    v78 = *&v75[v77];
    v79 = *&v48[v77];
    if (v78 == v79)
    {
      v153 = sub_1AE23BFCC();
      LOWORD(v154) = v80;
      BYTE2(v154) = v81;
      BYTE3(v154) = v82;
      BYTE4(v154) = v83;
      BYTE5(v154) = v84;
      BYTE6(v154) = v85;
      HIBYTE(v154) = v86;
      v151 = sub_1AE23BFCC();
      LOWORD(v152) = v87;
      BYTE2(v152) = v88;
      BYTE3(v152) = v89;
      BYTE4(v152) = v90;
      BYTE5(v152) = v91;
      BYTE6(v152) = v92;
      HIBYTE(v152) = v93;
      v94 = bswap64(v153);
      v95 = bswap64(v151);
      if (v94 == v95 && (v94 = bswap64(v154), v95 = bswap64(v152), v94 == v95))
      {
        v96 = 0;
      }

      else if (v94 < v95)
      {
        v96 = -1;
      }

      else
      {
        v96 = 1;
      }

      v75 = v123;
      v74 = v132;
      if ((v96 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v78 >= v79)
    {
      goto LABEL_35;
    }

    v97 = v147;
    v98 = v150;
    (*v130)(v131, v147, v150);
    v99 = v124;
    v100 = *(v124 - 8);
    v101 = &v75[v76];
    v102 = v118;
    (*(v100 + 16))(v118, v101, v124);
    (*(v100 + 56))(v102, 0, 1, v99);
    v103 = v98;
    sub_1AE23CB1C();
    sub_1AE23CB8C();
    v104 = *v134;
    v105 = v75;
    v23 = v97;
    v106 = v121;
    (*v134)(v105, v121);
    v104(v74, v106);
    (*v133)(v97, v103);
LABEL_36:
    v48 = v74;
    v13 = v106;
LABEL_9:
    v47 = v136;
    v6 = v149;
  }

  v108 = v156;
  if (sub_1AE23D32C() >= 1)
  {

    goto LABEL_40;
  }

  v109 = sub_1AE23CA7C();

  if (v109 < 1)
  {

    v112 = v116;
    *v116 = 0;
    v112[1] = 0;
  }

  else
  {
LABEL_40:
    v110 = v155;
    v111 = v116;
    *v116 = v108;
    v111[1] = v110;
  }
}

uint64_t sub_1ADFA829C(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a2;
  v4 = *a3;
  v5 = *(*a3 + 88);
  v6 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = *(v5 + 16);
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = *(v4 + 80);
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v21 - v16, a1, v13, v15);
  swift_beginAccess();

  sub_1AE23CB7C();
  v18 = *(v5 - 8);
  result = (*(v18 + 48))(v8, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v20 = *(v9 - 8);
    (*(v20 + 16))(v12, &v8[*(v5 + 36)], v9);
    (*(v20 + 56))(v12, 0, 1, v9);
    sub_1AE23CB1C();
    sub_1AE23CB8C();
    return (*(v18 + 8))(v8, v5);
  }

  return result;
}

void CRDictionary.apply(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = a2[2];
  v7 = a2[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v91 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = v80 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v89 = v80 - v14;
  v81 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v98 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v97 = v80 - v21;
  v111 = v7;
  v104 = sub_1AE23D7CC();
  v22 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v80 - v23;
  v109 = v6;
  v24 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v80 - v25;
  v27 = *a1;
  if (!*a1)
  {
    return;
  }

  v95 = TupleTypeMetadata2;
  v108 = v9;
  v96 = v17;
  v28 = a1[1];
  sub_1ADFA9038(a2);
  v29 = v27;
  v102 = a2;
  v107 = v28;
  if ((v27 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    sub_1AE23D36C();
    v29 = v112;
    v30 = v113;
    v31 = v114;
    v110 = v115;
    v32 = v116;
  }

  else
  {
    v33 = -1 << *(v27 + 32);
    v30 = v27 + 56;
    v31 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v29 + 56);

    v110 = 0;
  }

  v36 = (v83 + 56);
  v106 = v31;
  v82 = v83 + 16;
  v100 = (v22 + 8);
  v101 = (v83 + 8);
  v37 = v109;
  v38 = v29;
  while (v29 < 0)
  {
    if (!sub_1AE23D9AC())
    {
      goto LABEL_21;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_11:
    (*v36)(v26, 0, 1, v37);
    sub_1ADFA9038(v102);
    v41 = v103;
    sub_1ADFA4D68(v26, v42, v103);
    (*v101)(v26, v37);
    (*v100)(v41, v104);
    v29 = v38;
  }

  if (v32)
  {
    v39 = v110;
LABEL_10:
    v40 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    (*(v83 + 16))(v26, *(v29 + 48) + *(v83 + 72) * (v40 | (v39 << 6)), v37);
    goto LABEL_11;
  }

  v43 = v110;
  while (1)
  {
    v39 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_48;
    }

    if (v39 >= ((v31 + 64) >> 6))
    {
      break;
    }

    v32 = *(v30 + 8 * v39);
    ++v43;
    if (v32)
    {
      v110 = v39;
      goto LABEL_10;
    }
  }

LABEL_21:
  (*v36)(v26, 1, 1, v37);
  sub_1ADDDCE74(v29);
  v88 = v3;
  if ((v107 & 0xC000000000000001) != 0)
  {
    v44 = sub_1AE23DC1C();
    v110 = 0;
    v45 = 0;
    v46 = 0;
    v99 = v44 | 0x8000000000000000;
  }

  else
  {
    v47 = -1 << *(v107 + 32);
    v45 = ~v47;
    v48 = *(v107 + 64);
    v110 = v107 + 64;
    v49 = -v47;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v46 = v50 & v48;
    v99 = v107;
  }

  v51 = v96;
  v52 = v98;
  v106 = (v83 + 32);
  v105 = (v81 + 32);
  v93 = (v108 + 56);
  v80[1] = v45;
  v94 = (v45 + 64) >> 6;
  v80[2] = v81 + 16;
  v92 = (v108 + 48);
  v87 = (v108 + 16);
  v86 = (v81 + 56);
  v85 = (v108 + 8);
  v84 = (v81 + 8);

  v53 = 0;
  v54 = v111;
  while (2)
  {
    if ((v99 & 0x8000000000000000) != 0)
    {
      v64 = sub_1AE23DC3C();
      v57 = v95;
      if (!v64)
      {
        (*v93)(v97, 1, 1, v95);
LABEL_45:
        sub_1ADDDCE74(v99);
        return;
      }

      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v54 = v111;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v56 = v53;
      v108 = v46;
      v61 = v51;
      goto LABEL_40;
    }

    v55 = v46;
    v56 = v53;
    v57 = v95;
    if (v46)
    {
LABEL_37:
      v108 = (v55 - 1) & v55;
      v61 = v51;
      v62 = __clz(__rbit64(v55)) | (v56 << 6);
      v63 = v99;
      (*(v83 + 16))(v52, *(v99 + 48) + *(v83 + 72) * v62, v109);
      (*(v81 + 16))(v61, *(v63 + 56) + *(v81 + 72) * v62, v54);
LABEL_40:
      v65 = *(v57 + 48);
      v66 = v97;
      (*v106)();
      (*v105)(&v66[v65], v61, v54);
      v67 = 0;
      v59 = v56;
LABEL_41:
      (*v93)(v66, v67, 1, v57);
      if ((*v92)(v66, 1, v57) == 1)
      {
        goto LABEL_45;
      }

      v68 = *(v57 + 48);
      v69 = v89;
      v70 = v109;
      (*v106)(v89, v66, v109);
      v107 = v59;
      v71 = *v105;
      (*v105)(&v69[v68], &v66[v68], v111);
      v72 = *v87;
      v73 = v90;
      (*v87)(v90, v69, v57);
      v74 = *(v57 + 48);
      v75 = v91;
      v72(v91, v69, v57);
      v76 = v103;
      v71(v103, &v75[*(v57 + 48)], v111);
      (*v86)(v76, 0, 1, v111);
      sub_1ADFAEA78(v76, v73, v102);
      v77 = *v101;
      (*v101)(v73, v70);
      (*v100)(v76, v104);
      (*v85)(v69, v57);
      v51 = v96;
      v78 = v70;
      v54 = v111;
      v77(v75, v78);
      v79 = v73 + v74;
      v52 = v98;
      (*v84)(v79, v54);
      v53 = v107;
      v46 = v108;
      continue;
    }

    break;
  }

  if (v94 <= (v53 + 1))
  {
    v58 = v53 + 1;
  }

  else
  {
    v58 = v94;
  }

  v59 = v58 - 1;
  v60 = v53;
  while (1)
  {
    v56 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v56 >= v94)
    {
      v108 = 0;
      v67 = 1;
      v66 = v97;
      goto LABEL_41;
    }

    v55 = *(v110 + 8 * v56);
    ++v60;
    if (v55)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_1ADFA9038(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[2];
  v5[0] = a1[1];
  v5[1] = v3;
  v5[2] = a1[3];
  type metadata accessor for CRDictionaryRef(0, v5);
  if ((sub_1AE23DFBC() & 1) == 0)
  {
    v4 = sub_1ADFA3BBC();

    *v2 = v4;
  }
}

uint64_t sub_1ADFA90E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v5 = *(a2 + a3 - 32);
  v8[0] = *(a2 + a3 - 48);
  v8[1] = v5;
  v8[2] = *(a2 + a3 - 16);
  type metadata accessor for CRDictionary(0, v8);
  return CRDictionary.subscript.getter(v6, a4);
}

uint64_t sub_1ADFA9154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v9[0] = *(a3 + a4 - 48);
  v9[1] = v6;
  v9[2] = *(a3 + a4 - 16);
  v7 = type metadata accessor for CRDictionary(0, v9);
  return sub_1ADFAEA78(a1, a3, v7);
}

void (*CRDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_1AE23D7CC();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v8[5] = v12;
  v14 = *(a3 + 16);
  v8[6] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v8[7] = v15;
  if (v6)
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(*(v15 + 64));
  }

  v8[8] = v17;
  (*(v16 + 16))();
  sub_1ADE15640(v18, v13);
  return sub_1ADFA9360;
}

void sub_1ADFA9360(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    sub_1ADFAEA78(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_1ADFAEA78((*a1)[5], v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CRDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4[2];
  v7[1] = a4[1];
  v7[2] = v5;
  v7[3] = a4[3];
  v8 = a2;
  v9 = a3;
  return sub_1ADFA4AD4(a1, sub_1ADFAEE78, v7, a4, a5);
}

uint64_t CRDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ADFAF178(a1, a2, a5);
  (*(*(*(a5 + 16) - 8) + 8))(a2);
  v8 = *(*(*(a5 + 24) - 8) + 8);

  return v8(a1);
}

void (*CRDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x98uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[10] = a5;
  v10[11] = v5;
  v12 = *(a5 + 24);
  v10[12] = v12;
  v13 = *(v12 - 8);
  v10[13] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[14] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[14] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  *(v11 + 120) = v15;
  v17 = *(a5 + 16);
  *(v11 + 128) = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  *(v11 + 136) = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  *(v11 + 144) = v20;
  (*(v19 + 16))();
  *(v11 + 16) = v17;
  *(v11 + 24) = v12;
  *(v11 + 32) = *(a5 + 32);
  *(v11 + 40) = *(a5 + 40);
  *(v11 + 56) = *(a5 + 56);
  *(v11 + 64) = a3;
  *(v11 + 72) = a4;
  sub_1ADFA4AD4(a2, sub_1ADFAEE78, v11, v21, v16);
  return sub_1ADFA9788;
}

void sub_1ADFA9788(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 136);
  v3 = *(*a1 + 144);
  v5 = *(*a1 + 120);
  v6 = *(*a1 + 128);
  v8 = *(*a1 + 104);
  v7 = *(*a1 + 112);
  v9 = *(*a1 + 96);
  v10 = *(*a1 + 80);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 112), v5, v9);
    sub_1ADFAF178(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_1ADFAF178(*(*a1 + 120), v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CRDictionary.index(where:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = a1;
  v39 = a2;
  v34 = a4;
  v7 = a3[3];
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v10 + 16);
  v11 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *v4;
  v15 = v48;
  CRDictionary.startIndex.getter(v16, &v51);
  v43 = v15;
  v45 = v15;
  CRDictionary.endIndex.getter(a3, &v48);
  v40 = v48;
  v41 = v49;
  v42 = v50;
  v35 = (v8 + 8);
  v36 = (v11 + 8);
  v17 = v51;
  v18 = v52;
  v19 = v53;
  while (1)
  {
    LOBYTE(v48) = v19 & 1;
    sub_1ADFAF2D8(v17, v18, v19 & 1);
    v20 = v7;
    type metadata accessor for CRDictionaryElement(0, v7, a3[6], v21);
    v22 = sub_1AE23CA5C();
    sub_1ADDFFBC8(v17, v18, v48);
    v23 = v51;
    v24 = v52;
    v25 = v53;
    if (v22)
    {
      sub_1ADDFFBC8(v51, v52, v53);
      result = sub_1ADDFFBC8(v40, v41, v42);
      v31 = v34;
      *v34 = 0;
      v31[1] = 0;
      *(v31 + 16) = -1;
      return result;
    }

    v45 = v43;
    v48 = v51;
    v49 = v52;
    v50 = v53;
    sub_1ADFAF2D8(v51, v52, v53);
    v26 = v37;
    CRDictionary.subscript.getter(v14, v37, &v48, a3);
    sub_1ADDFFBC8(v23, v24, v25);
    v27 = v38(v14, v26);
    if (v5)
    {
      sub_1ADDFFBC8(v40, v41, v42);
      (*v35)(v26, v20);
      (*v36)(v14, v44);
      return sub_1ADDFFBC8(v23, v24, v25);
    }

    v28 = v27;
    v29 = v26;
    v7 = v20;
    (*v35)(v29, v20);
    (*v36)(v14, v44);
    if (v28)
    {
      break;
    }

    v54 = v43;
    v45 = v23;
    v46 = v24;
    v47 = v25;
    sub_1ADFAF2D8(v23, v24, v25);
    CRDictionary.index(after:)(a3, &v48);
    sub_1ADDFFBC8(v23, v24, v25);
    sub_1ADDFFBC8(v23, v24, v25);
    v17 = v48;
    v18 = v49;
    v19 = v50;
    v51 = v48;
    v52 = v49;
    v53 = v50;
  }

  result = sub_1ADDFFBC8(v40, v41, v42);
  v32 = v34;
  *v34 = v23;
  v32[1] = v24;
  *(v32 + 16) = v25;
  return result;
}

uint64_t sub_1ADFA9CB0@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[2];
  v8 = type metadata accessor for CRDictionaryElement(0, a1[3], a1[6], v7);
  v9 = a1[5];

  v11 = a2(v10, v6, v8, v9);
  v13 = v12;
  LOBYTE(v6) = v14;

  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t CRDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v29 = a2;
  v4 = a4[3];
  v25 = a4[2];
  v27 = a1;
  v28 = v4;
  v5 = type metadata accessor for CRDictionaryElement(255, v4, a4[6], a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  swift_beginAccess();

  v14 = v25;
  sub_1AE23CB9C();

  v15 = v24;
  (*(v7 + 16))(v24, v13, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = *(v14 - 8);
  v18 = v15;
  (*(v17 + 32))(v27, v15, v14);
  v19 = v26;
  (*(v7 + 32))(v26, v13, TupleTypeMetadata2);
  v20 = &v19[*(TupleTypeMetadata2 + 48)];
  (*(*(v28 - 8) + 16))(v29, &v20[*(v5 + 36)]);
  v21 = *(*(v5 - 8) + 8);
  v21(v20, v5);
  (*(v17 + 8))(v19, v14);
  return (v21)(&v18[v16], v5);
}

uint64_t CRDictionary.index(after:)@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  type metadata accessor for CRDictionaryElement(0, a2[3], a2[6], v5);

  v6 = sub_1AE23CA8C();
  v8 = v7;
  v10 = v9;

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10 & 1;
  return result;
}

void CRDictionary.merge(_:)(void *a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v46 = a3;
  v44 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v43 - v15;
  v48[0] = *a1;
  v16 = v48[0];
  if (*v4 == v48[0])
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v26 = word_1ED96F220;
    v27 = HIBYTE(word_1ED96F220);
    v28 = byte_1ED96F222;
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v18 = sub_1AE1755D4(v48, a2, WitnessTable);
    v19 = *v4;
    swift_beginAccess();
    v20 = *(v19 + 24);
    v21 = *(v19 + 32);
    swift_beginAccess();
    v22 = v18[3];
    v47[0] = 0;

    sub_1ADF6457C(v23, v47, v21);
    sub_1ADF6457C(v22, v47, v20);

    if (v47[0] == 3)
    {
      sub_1ADFA9038(a2);

      sub_1AE16F8E0(v18, v47);

      v26 = LOBYTE(v47[0]);
      v27 = BYTE1(v47[0]);
      v28 = BYTE2(v47[0]);
    }

    else
    {
      if (v47[0] == 2)
      {
        if (qword_1EB5B9908 != -1)
        {
          swift_once();
        }

        v25 = &word_1EB5D7508;
      }

      else if (v47[0] == 1)
      {

        sub_1ADFABF30(v24, a2);
        if (qword_1EB5B9910 != -1)
        {
          swift_once();
        }

        v25 = &word_1EB5D750B;
      }

      else
      {
        if (qword_1ED9670C0 != -1)
        {
          swift_once();
        }

        v25 = &word_1ED96F220;
      }

      v26 = *v25;
      v27 = *(v25 + 1);
      v28 = *(v25 + 2);
    }
  }

  v29 = v26 > 1;
  if (v27 > 1)
  {
    v29 = 1;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
LABEL_23:
      if (v29)
      {
        v30 = *v4;
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  else if (v26)
  {
    goto LABEL_23;
  }

  if (v29)
  {
    v30 = *v4;
    if ((v27 & 0xFFFFFFFD) == 0)
    {
      v39 = qword_1ED96F250;
      swift_beginAccess();
      v40 = v16 + v39;
      v41 = v43;
      sub_1ADDD2658(v40, v43, type metadata accessor for FinalizedTimestamp);
      v42 = qword_1ED96F250;
      swift_beginAccess();
      sub_1ADFAF2E4(v41, v30 + v42);
      goto LABEL_34;
    }

LABEL_28:
    v31 = qword_1ED96F250;
    swift_beginAccess();
    sub_1ADDD2658(v30 + v31, v11, type metadata accessor for FinalizedTimestamp);
    v32 = qword_1ED96F250;
    swift_beginAccess();
    sub_1ADDD2658(v16 + v32, v8, type metadata accessor for FinalizedTimestamp);
    v33 = *(v44 + 20);
    v34 = *&v8[v33];
    v35 = *&v11[v33];
    if (v34 == v35)
    {
      if ((sub_1ADF5EB00(v8) & 1) == 0)
      {
LABEL_30:
        v36 = v11;
LABEL_33:
        sub_1ADDD2728(v36, type metadata accessor for FinalizedTimestamp);
        v37 = v45;
        sub_1ADE172E4(v8, v45);
        swift_beginAccess();
        sub_1ADFAF2E4(v37, v30 + v31);
LABEL_34:
        swift_endAccess();
        goto LABEL_35;
      }
    }

    else if (v34 >= v35)
    {
      goto LABEL_30;
    }

    v36 = v8;
    v8 = v11;
    goto LABEL_33;
  }

LABEL_35:
  v38 = v46;
  *v46 = v26;
  v38[1] = v27;
  v38[2] = v28;
}

uint64_t CRDictionary.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if ((*(*(*(a2 + 48) + 8) + 80))())
  {
    return sub_1AE1705C0(v2);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

void CRDictionary.finalizeTimestamps(_:)(uint64_t a1, _OWORD *a2)
{

  v4 = sub_1ADDFB6C0();

  if (v4)
  {
    sub_1ADFA9038(a2);
    sub_1AE1741D4(a1);
  }
}

uint64_t CRDictionary.description.getter(void *a1)
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1AE23DA2C();
  v25 = v23;
  v26 = v24;
  MEMORY[0x1B26FB670](0x6F69746369445243, 0xED0000287972616ELL);
  v8 = *(v7 + 16);
  v9 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v4 + 16))(v6, v8 + v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v11 = MEMORY[0x1E69E7508];
  v12 = MEMORY[0x1E69E7558];
  *(v10 + 56) = MEMORY[0x1E69E7508];
  *(v10 + 64) = v12;
  *(v10 + 32) = v13;
  sub_1AE23BFCC();
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v14;
  v15 = sub_1AE23CD3C();
  v17 = v16;
  (*(v4 + 8))(v6, v3);
  MEMORY[0x1B26FB670](v15, v17);

  MEMORY[0x1B26FB670](0x6E6F697372657620, 0xEB000000005B203ALL);
  swift_beginAccess();
  v22 = *(v7 + 24);
  v18 = CRVersion.description.getter();
  MEMORY[0x1B26FB670](v18);

  MEMORY[0x1B26FB670](0x7265736E69202C5DLL, 0xEF203A736E6F6974);
  swift_beginAccess();
  v21[1] = *(v7 + 40);
  type metadata accessor for CRDictionaryElement(255, a1[3], a1[6], v19);
  sub_1AE23CB1C();
  swift_getWitnessTable();
  sub_1AE23DFDC();
  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return v25;
}

uint64_t CRDictionary.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *v4;
  v24 = *a2;
  v25 = v8;

  CRDictionary.finalizeTimestamps(_:)(a1, a3);
  CRDictionary.finalizeTimestamps(_:)(a1, a3);
  v9 = v25;
  v23[3] = v25;
  CRDictionary.version.getter(&v20);
  v10 = v20;
  v23[2] = v24;
  CRDictionary.version.getter(v23);
  v11 = v23[0];
  sub_1ADF637A8(*(&v10 + 1), v23[1]);
  if (v12)
  {
  }

  else
  {
    sub_1ADF637A8(v10, v11);
    v14 = v13;

    if ((v14 & 1) == 0)
    {

      v18 = a3[2];
      v20 = a3[1];
      v21 = v18;
      v22 = a3[3];
      v16 = type metadata accessor for CRDictionary.MergeableDelta(0, &v20);
      v17 = 1;
      return (*(*(v16 - 8) + 56))(a4, v17, 1);
    }
  }

  sub_1ADFA5020(a1, v9, a4);

  v15 = a3[2];
  v20 = a3[1];
  v21 = v15;
  v22 = a3[3];
  v16 = type metadata accessor for CRDictionary.MergeableDelta(0, &v20);
  v17 = 0;
  return (*(*(v16 - 8) + 56))(a4, v17, 1);
}

uint64_t CRDictionary.canMerge(delta:)(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;

  LOBYTE(v1) = sub_1AE17261C(v3);

  return v1 & 1;
}

uint64_t CRDictionary.merge(delta:)(void *a1, _OWORD *a2)
{
  v26 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v25 - v8;
  sub_1ADFA9038(a2);
  v9 = *v2;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  v13 = a1[5];
  *&v28 = *a1;
  *(&v28 + 1) = v10;
  *&v29 = v11;
  *(&v29 + 1) = v12;
  *&v30 = v14;
  *(&v30 + 1) = v13;

  v15 = sub_1AE1727BC(&v28);

  if (v15)
  {
    v16 = qword_1ED96F250;
    swift_beginAccess();
    sub_1ADDD2658(v9 + v16, v6, type metadata accessor for FinalizedTimestamp);
    v17 = a2[2];
    v28 = a2[1];
    v29 = v17;
    v30 = a2[3];
    v18 = a1 + *(type metadata accessor for CRDictionary.MergeableDelta(0, &v28) + 68);
    v19 = *(v26 + 20);
    v20 = *&v18[v19];
    v21 = *&v6[v19];
    if (v20 == v21)
    {
      if ((sub_1ADF5EB00(v18) & 1) == 0)
      {
LABEL_4:
        sub_1ADDD2728(v6, type metadata accessor for FinalizedTimestamp);
        v22 = v27;
        sub_1ADDD2658(v18, v27, type metadata accessor for FinalizedTimestamp);
LABEL_7:
        swift_beginAccess();
        sub_1ADFAF2E4(v22, v9 + v16);
        swift_endAccess();
        return v15 & 1;
      }
    }

    else if (v20 >= v21)
    {
      goto LABEL_4;
    }

    v23 = v6;
    v22 = v27;
    sub_1ADE172E4(v23, v27);
    goto LABEL_7;
  }

  return v15 & 1;
}

void CRDictionary.observableDifference(from:with:)(char **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v145 = a1;
  v155 = *MEMORY[0x1E69E9840];
  v8 = a3[6];
  v9 = a3[3];
  v115 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v114 = &v109 - v11;
  v130 = v9;
  v13 = type metadata accessor for CRDictionaryElement(255, v9, v8, v12);
  v121 = sub_1AE23D7CC();
  v14 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v16 = &v109 - v15;
  v129 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v109 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v109 - v22;
  v23 = a3[2];
  v128 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v109 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v140 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v140);
  MEMORY[0x1EEE9AC00](v29);
  v147 = &v109 - v32;
  v33 = *v145;
  v34 = *v4;
  v116 = a2;
  if (!*(a2 + 24) && v34 == v33)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v138 = v30;
  v135 = v16;
  v110 = a4;
  v124 = v14;
  v35 = a3[5];
  v36 = v33;
  v37 = v31;
  v154 = sub_1AE23C9EC();
  v153 = sub_1AE23C9EC();
  v152 = sub_1AE23C9CC();
  MEMORY[0x1EEE9AC00](v152);
  v38 = v130;
  *(&v109 - 8) = v23;
  *(&v109 - 7) = v38;
  *(&v109 - 6) = a3[4];
  *(&v109 - 5) = v35;
  v39 = a3[7];
  *(&v109 - 4) = v8;
  *(&v109 - 3) = v39;
  *(&v109 - 2) = &v154;
  MEMORY[0x1EEE9AC00](v40);
  *(&v109 - 8) = v23;
  *(&v109 - 7) = v41;
  *(&v109 - 6) = v42;
  *(&v109 - 5) = v35;
  v143 = v35;
  *(&v109 - 4) = v8;
  *(&v109 - 3) = v43;
  v119 = v43;
  *(&v109 - 2) = &v153;
  sub_1AE1710B0(v36, v116, sub_1ADFB0284, v44, sub_1ADFAF388, (&v109 - 10));
  swift_beginAccess();
  v45 = *(v36 + 40);
  v46 = *(v45 + 64);
  v139 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v46;
  v125 = v45;

  v134 = v34;
  swift_beginAccess();
  v50 = 0;
  v113 = (v47 + 63) >> 6;
  v51 = TupleTypeMetadata2;
  v137 = TupleTypeMetadata2 - 8;
  v141 = (v128 + 16);
  v122 = v129 + 16;
  v144 = (v129 + 32);
  v145 = (v128 + 32);
  v136 = (v37 + 32);
  v133 = (v129 + 48);
  v132 = (v129 + 8);
  v131 = (v128 + 8);
  v112 = v115 + 40;
  v118 = (v124 + 8);
  v52 = v111;
  v124 = v23;
  v123 = v13;
  v53 = v127;
  v146 = TupleTypeMetadata2;
  while (1)
  {
    v55 = v147;
    if (!v49)
    {
      if (v113 <= v50 + 1)
      {
        v57 = v50 + 1;
      }

      else
      {
        v57 = v113;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v56 >= v113)
        {
          v74 = v23;
          v49 = 0;
          v76 = 1;
          v50 = v58;
          v71 = v138;
          goto LABEL_19;
        }

        v49 = *(v139 + 8 * v56);
        ++v50;
        if (v49)
        {
          v50 = v56;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v56 = v50;
LABEL_18:
    v59 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v60 = v59 | (v56 << 6);
    v61 = v125;
    v62 = v128;
    v63 = v142;
    v64 = v124;
    (*(v128 + 16))(v142, *(v125 + 48) + *(v128 + 72) * v60, v124);
    v65 = *(v61 + 56);
    v66 = v129;
    v67 = v126;
    v13 = v123;
    (*(v129 + 16))(v126, v65 + *(v129 + 72) * v60, v123);
    v68 = *(v146 + 48);
    v69 = *(v62 + 32);
    v70 = v64;
    v71 = v138;
    v72 = v63;
    v73 = v146;
    v74 = v70;
    v69(v138, v72);
    v75 = *(v66 + 32);
    v51 = v73;
    v75(v71 + v68, v67, v13);
    v76 = 0;
    v53 = v127;
    v55 = v147;
LABEL_19:
    v77 = *(v51 - 8);
    (*(v77 + 56))(v71, v76, 1, v51);
    (*v136)(v55, v71, v140);
    if ((*(v77 + 48))(v55, 1, v51) == 1)
    {
      break;
    }

    v78 = *(v51 + 48);
    v23 = v74;
    (*v145)(v53, v55, v74);
    v79 = *v144;
    (*v144)(v52, &v55[v78], v13);

    v80 = v135;
    sub_1AE23CB7C();

    if ((*v133)(v80, 1, v13) == 1)
    {
      (*v132)(v52, v13);
      (*v131)(v53, v74);
      (*v118)(v80, v121);
      goto LABEL_35;
    }

    v81 = v120;
    v79();
    v82 = *(v13 + 36);
    if (sub_1AE23CCBC())
    {
      goto LABEL_7;
    }

    v83 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
    v84 = *&v52[v83];
    v85 = *&v81[v83];
    if (v84 == v85)
    {
      v150 = sub_1AE23BFCC();
      LOWORD(v151) = v86;
      BYTE2(v151) = v87;
      BYTE3(v151) = v88;
      BYTE4(v151) = v89;
      BYTE5(v151) = v90;
      BYTE6(v151) = v91;
      HIBYTE(v151) = v92;
      v148 = sub_1AE23BFCC();
      LOWORD(v149) = v93;
      BYTE2(v149) = v94;
      BYTE3(v149) = v95;
      BYTE4(v149) = v96;
      BYTE5(v149) = v97;
      BYTE6(v149) = v98;
      HIBYTE(v149) = v99;
      v100 = bswap64(v150);
      v101 = bswap64(v148);
      if (v100 == v101 && (v100 = bswap64(v151), v101 = bswap64(v149), v100 == v101))
      {
        v102 = 0;
      }

      else if (v100 < v101)
      {
        v102 = -1;
      }

      else
      {
        v102 = 1;
      }

      v52 = v111;
      if ((v102 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_7:
      (*v141)(v142, v53, v74);
      (*(v115 + 40))(&v52[v82], v116, v130);
      sub_1AE23CB1C();
      v51 = v146;
      sub_1AE23CB8C();
      v54 = *v132;
      (*v132)(v81, v13);
      v54(v52, v13);
      (*v131)(v53, v74);
    }

    else
    {
      if (v84 < v85)
      {
        goto LABEL_7;
      }

LABEL_34:
      v103 = *v132;
      (*v132)(v81, v13);
      v103(v52, v13);
      (*v131)(v53, v74);
LABEL_35:
      v51 = v146;
    }
  }

  v104 = v154;
  if (sub_1AE23D32C() > 0 || sub_1AE23D32C() > 0 || sub_1AE23CA7C() >= 1)
  {
    v106 = v152;
    v105 = v153;
    v107 = v110;
    *v110 = v104;
    v107[1] = v105;
    v107[2] = v106;
    return;
  }

LABEL_42:

  v108 = v110;
  *v110 = 0;
  v108[1] = 0;
  v108[2] = 0;
}

void CRDictionary.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a8@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64D2C(a2, a3, a4, a5, a6, &v18);
    swift_setDeallocating();

    if (!v8)
    {
      *a8 = v18;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v16 = 0xD000000000000014;
    *(v16 + 8) = 0x80000001AE25FB50;
    *(v16 + 16) = 0;
    swift_willThrow();
  }
}

double CRDictionary.encode(to:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v14 = v6;
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    v13 = a2[6];
    v12 = a2[7];

    sub_1ADE6BD38(&v14, v8, v9, v10, v11, v13, v12);
  }

  return result;
}

BOOL CRDictionary.isDefaultState.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

void sub_1ADFABF30(uint64_t a1, _OWORD *a2)
{
  v3 = a2[2];
  v5[0] = a2[1];
  v5[1] = v3;
  v5[2] = a2[3];
  type metadata accessor for CRDictionaryRef(0, v5);
  v4 = swift_dynamicCastClassUnconditional();

  *v2 = v4;
}

uint64_t sub_1ADFABF9C()
{
  sub_1ADFAEA70();
}

uint64_t sub_1ADFABFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(v7 + 16))(v9, v11);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v7 + 8))(v13, a3);
}

uint64_t sub_1ADFAC0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v38 = a8;
  v42 = a9;
  v17 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v39 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADFAEE10(a1, v40);
  v20 = type metadata accessor for CRDictionaryElement(0, a4, a7, v19);

  WitnessTable = swift_getWitnessTable();
  sub_1AE174904(a1, a2, a3, v20, a5, a6, WitnessTable, v41);
  if (v9)
  {

    return sub_1ADFAECE8(a1);
  }

  else
  {
    v33 = a4;
    v34 = a5;
    v35 = a6;
    v36 = a7;
    sub_1ADFAECE8(a1);
    v23 = v41[1];
    v24 = v41[2];
    v25 = v41[3];
    v26 = v41[4];
    v27 = v41[5];
    v28 = v42;
    v37 = v41[0];
    *v42 = v41[0];
    v28[1] = v23;
    v28[2] = v24;
    v28[3] = v25;
    if (*(a1 + 56))
    {
      v29 = 0;
    }

    else
    {
      v29 = *(a1 + 40);
    }

    if (*(a1 + 56))
    {
      v30 = 0;
    }

    else
    {
      v30 = *(a1 + 48);
    }

    v28[4] = v26;
    v28[5] = v27;
    v31 = v39;
    sub_1ADE058D4(v29, v30, a2, v39);
    v40[0] = a3;
    v40[1] = v33;
    v40[2] = v34;
    v40[3] = v35;
    v40[4] = v36;
    v40[5] = v38;
    v32 = type metadata accessor for CRDictionary.MergeableDelta(0, v40);
    return sub_1ADE172E4(v31, v42 + *(v32 + 68));
  }
}

void CRDictionary.MergeableDelta.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *v42 = a2;
  *&v42[8] = a3;
  *&v42[16] = a4;
  *&v42[24] = a5;
  *&v42[32] = a6;
  *&v42[40] = a7;
  v40 = a7;
  v15 = type metadata accessor for CRDictionary.MergeableDelta(0, v42);
  MEMORY[0x1EEE9AC00](v15);
  v21 = (&v37 - v20);
  if (*(a1 + 64))
  {
    v37 = v19;
    v38 = v16;
    v39 = a8;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v24 = *(v23 + 16);
    if ((~v24 & 0xF000000000000007) != 0 && (v24 & 0xF000000000000000) == 0x1000000000000000)
    {
      v33 = (v24 & 0xFFFFFFFFFFFFFFFLL);
      v34 = v33[3];
      *&v42[16] = v33[2];
      *&v42[32] = v34;
      v35 = v33[5];
      *&v42[48] = v33[4];
      v43 = v35;
      *v42 = v33[1];
      sub_1ADFAEE10(v42, &v41);

      v31 = v43;
      v30 = *&v42[40];
      v29 = v42[56];
      v28 = *&v42[24];
      v27 = *&v42[8];
      v26 = *v42;
    }

    else
    {

      v26 = 0;
      v27 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
      v28 = 0uLL;
      v29 = 1;
      v30 = 0uLL;
      v31 = 0uLL;
    }

    v42[0] = v29;
    v44 = v26;
    v45 = v27;
    v46 = v28;
    v47 = v30;
    v48 = v29;
    v49 = v31;
    v36 = v50;
    sub_1ADFAC0FC(&v44, a1, a2, a3, a4, a5, a6, v40, v21);

    if (!v36)
    {
      (*(v37 + 32))(v39, v21, v38);
    }
  }

  else
  {
    sub_1ADE42E40(v16, v17, v18);
    swift_allocError();
    *v32 = 0xD000000000000014;
    *(v32 + 8) = 0x80000001AE25FB50;
    *(v32 + 16) = 0;
    swift_willThrow();
  }
}

double sub_1ADFAC5BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4[1];
  v7 = v4[2];
  v9 = v4[3];
  v8 = v4[4];
  v10 = v4[5];
  v27 = *v4;
  v28 = v6;
  v29 = v7;
  v30 = v9;
  v31 = v8;
  v32 = v10;
  v22 = *(a2 + 16);
  v11 = type metadata accessor for CRDictionaryElement(255, *(a2 + 24), *(a2 + 48), a3);

  WitnessTable = swift_getWitnessTable();
  v24[0] = v22;
  v24[1] = v11;
  v25 = *(a2 + 32);
  v26 = WitnessTable;
  v13 = type metadata accessor for CRSetRefMergeableDelta(0, v24);
  sub_1AE174F20(a1, v13, v33);

  if (!v23)
  {
    v15 = v4 + *(a2 + 68);
    v16 = sub_1ADDF66A8(v15);
    v17 = *(v15 + *(type metadata accessor for FinalizedTimestamp(0) + 20));
    v18 = v34;
    v19 = v33[1];
    *a4 = v33[0];
    *(a4 + 16) = v19;
    *(a4 + 32) = v18;
    *(a4 + 40) = v16;
    *(a4 + 48) = v17;
    *(a4 + 56) = 0;
    result = v35[0];
    *(a4 + 57) = *v35;
    *(a4 + 72) = *(&v35[1] + 7);
  }

  return result;
}

double CRDictionary.MergeableDelta.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {

    sub_1ADFAC5BC(a1, a2, v7, v8);
    swift_beginAccess();
    sub_1AE1B7950(v8);
    swift_endAccess();
  }

  return result;
}

void CRDictionary.MergeableDelta.visitReferences(_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = a1;
  v6 = a2[3];
  v77 = a2[6];
  v78 = v6;
  v7 = type metadata accessor for CRDictionaryElement.Delta(0, v6, v77, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v65 - v12;
  v79 = a2;
  v13 = a2[2];
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v65 - v19;
  v92 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v65 - v25;
  v26 = *(v4 + 40);
  v27 = *(v26 + 64);
  v67 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v66 = (v28 + 63) >> 6;
  v89 = TupleTypeMetadata2;
  v85 = TupleTypeMetadata2 - 8;
  v31 = v10;
  v69 = v14 + 16;
  v68 = v8 + 16;
  v90 = (v8 + 32);
  v91 = (v14 + 32);
  v84 = (v24 + 32);
  v75 = v8;
  v80 = (v8 + 8);
  v72 = v14;
  v82 = (v14 + 8);
  v76 = v26;

  v32 = 0;
  v74 = v17;
  v70 = v10;
  v81 = v13;
  if (v30)
  {
    while (1)
    {
      v33 = v32;
LABEL_12:
      v39 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v40 = v39 | (v33 << 6);
      v41 = v76;
      v42 = v72;
      v43 = v71;
      (*(v72 + 16))(v71, *(v76 + 48) + *(v72 + 72) * v40, v13);
      v44 = v75;
      v45 = *(v41 + 56) + *(v75 + 72) * v40;
      v46 = v73;
      v47 = v92;
      (*(v75 + 16))(v73, v45, v92);
      v36 = v89;
      v48 = *(v89 + 48);
      v49 = *(v42 + 32);
      v37 = v88;
      v49(v88, v43, v13);
      (*(v44 + 32))(&v37[v48], v46, v47);
      v50 = 0;
      v35 = v33;
      v17 = v74;
      v31 = v70;
      v38 = v87;
LABEL_13:
      v51 = *(v36 - 8);
      (*(v51 + 56))(v37, v50, 1, v36);
      (*v84)(v38, v37, v86);
      if ((*(v51 + 48))(v38, 1, v36) == 1)
      {
        break;
      }

      v93 = v35;
      v52 = *(v36 + 48);
      v53 = v81;
      (*v91)(v17, v38, v81);
      v54 = v31;
      v55 = v31;
      v56 = v92;
      (*v90)(v55, &v38[v52]);
      v57 = v83;
      v58 = v17;
      v60 = v83[3];
      v59 = v83[4];
      __swift_project_boxed_opaque_existential_1(v83, v60);
      if ((*(v59 + 8))(v60, v59) & 1) != 0 || ((*(*(v79[4] + 8) + 48))(v57, v53), v61 = v57[3], v62 = v57[4], __swift_project_boxed_opaque_existential_1(v57, v61), ((*(v62 + 8))(v61, v62)))
      {

        (*v80)(v54, v56);
        (*v82)(v58, v53);
        return;
      }

      v63 = v56;
      v64 = sub_1AE23D7CC();
      v31 = v54;
      Optional<A>.visitReferences(_:)(v57, v64, v77);
      (*v80)(v54, v63);
      (*v82)(v58, v53);
      v32 = v93;
      v13 = v53;
      v17 = v58;
      if (!v30)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v66 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    else
    {
      v34 = v66;
    }

    v35 = v34 - 1;
    v37 = v88;
    v36 = v89;
    v38 = v87;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v66)
      {
        v30 = 0;
        v50 = 1;
        goto LABEL_13;
      }

      v30 = *(v67 + 8 * v33);
      ++v32;
      if (v30)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double sub_1ADFACFA4@<D0>(void *a1@<X8>)
{
  CRDictionary.makeIterator()(a1);

  return result;
}

uint64_t sub_1ADFACFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1ADFAD024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1AE23836C(v3, a1, WitnessTable);

  return v6;
}

uint64_t sub_1ADFAD0F0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v17 = type metadata accessor for CRDictionaryElement(0, a4, a7, a4);

  return a9(v11, v12, v13, v14, v15, v16, a3, v17, a6);
}

uint64_t CRDictionary.Index.hash(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRDictionaryElement(0, a2[3], a2[6], a4);

  return sub_1AE23CA6C();
}

uint64_t CRDictionary.Index.hashValue.getter(void *a1)
{
  v3 = *(v1 + 16);
  v8 = *v1;
  v9 = v3;
  sub_1AE23E31C();
  CRDictionary.Index.hash(into:)(v7, a1, v4, v5);
  return sub_1AE23E34C();
}

uint64_t sub_1ADFAD290(uint64_t a1, void *a2)
{
  sub_1AE23E31C();
  CRDictionary.Index.hash(into:)(v6, a2, v3, v4);
  return sub_1AE23E34C();
}

uint64_t CRDictionary.count.getter(void *a1)
{
  swift_beginAccess();
  type metadata accessor for CRDictionaryElement(0, a1[3], a1[6], v2);

  v3 = sub_1AE23CA7C();

  return v3;
}

uint64_t CRDictionary.insertionCount.getter(uint64_t a1)
{
  swift_beginAccess();
  type metadata accessor for CRDictionaryElement(255, *(a1 + 24), *(a1 + 48), v2);
  sub_1AE23CB1C();

  swift_getWitnessTable();
  sub_1AE23CF2C();

  return v4;
}

uint64_t sub_1ADFAD478@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v10 = type metadata accessor for CRDictionaryElement(255, a4, a5, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = v22 - v13;
  v15 = *a1;
  (*(v16 + 16))(v22 - v13, a2, TupleTypeMetadata2, v12);
  v17 = &v14[*(TupleTypeMetadata2 + 48)];
  v18 = *&v17[*(v10 + 40)];
  v19 = *(*(v10 - 8) + 8);

  v19(v17, v10);
  v20 = *(v18 + 16);

  if (__OFADD__(v15, v20))
  {
    __break(1u);
  }

  else
  {
    result = (*(*(a3 - 8) + 8))(v14, a3);
    *a6 = v15 + v20;
  }

  return result;
}

void (*sub_1ADFAD628(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = a3[2];
  v9 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_1ADFAD834(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_1ADFAD7BC;
}

void sub_1ADFAD7BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1ADFAD834(uint64_t *a1, uint64_t *a2, void *a3))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  CRDictionary.subscript.getter(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1ADE022F8;
}

uint64_t sub_1ADFAD944(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  CRDictionary.index(after:)(a2, a1);

  return sub_1ADDFFBC8(v2, v3, v4);
}

__n128 sub_1ADFAD9A8@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v82 = a4;
  v83 = a6;
  v80 = a5;
  v81 = a3;
  v106 = a2;
  v76 = a7;
  v75 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23D7CC();
  v78 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  v79 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AE23BFEC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *v7;
  v104 = 1;
  v20 = a1[2];
  v21 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v22 = v20 + v21;
  v23 = v106;
  (*(v17 + 16))(v19, v22, v16);
  v86 = sub_1ADDF66A8(v19);
  v24 = v16;
  v25 = v78;
  (*(v17 + 8))(v19, v24);
  swift_beginAccess();
  v26 = a1[4];
  v93 = a1[3];
  v94 = v26;

  sub_1ADDF5C7C(v23);
  v84 = v27;
  v29 = v28;

  sub_1ADE42CB8(0, 0);
  (*(v25 + 16))(v13, v81, v11);
  v30 = v79;
  v31 = v80;
  if ((*(v79 + 48))(v13, 1) == 1)
  {
    v81 = v29;
    (*(v25 + 8))(v13, v11);
    v32 = swift_beginAccess();
    v93 = a1[5];
    MEMORY[0x1EEE9AC00](v32);
    v33 = v82;
    v34 = v83;
    v36 = v82[2];
    v35 = v82[3];
    *(&v72 - 10) = v36;
    *(&v72 - 9) = v35;
    v37 = v33[4];
    v38 = v33[5];
    *(&v72 - 8) = v31;
    *(&v72 - 7) = v37;
    v39 = v33[6];
    v40 = v33[7];
    *(&v72 - 6) = v38;
    *(&v72 - 5) = v39;
    *(&v72 - 4) = v40;
    *(&v72 - 3) = v34;
    *(&v72 - 2) = v106;
    MEMORY[0x1EEE9AC00](v41);
    *(&v72 - 10) = v36;
    *(&v72 - 9) = v42;
    *(&v72 - 8) = v31;
    *(&v72 - 7) = v43;
    *(&v72 - 6) = v38;
    *(&v72 - 5) = v44;
    *(&v72 - 4) = v45;
    *(&v72 - 3) = v46;
    *(&v72 - 2) = sub_1ADFB00F0;
    *(&v72 - 1) = v47;
    type metadata accessor for CRDictionaryElement(255, v42, v44, v48);
    v49 = sub_1AE23CB1C();

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v52 = v85;
    v53 = sub_1ADE08EB0(sub_1ADFB012C, (&v72 - 12), v49, &type metadata for Proto_Set.Element, v50, WitnessTable, MEMORY[0x1E69E7288], &v88);
    if (v52)
    {

      v29 = v81;
LABEL_5:
      v93 = v86;
      v94 = MEMORY[0x1E69E7CC0];
      v95 = MEMORY[0x1E69E7CC0];
      v96 = v84;
      v98 = 0;
      v99 = 0;
      v97 = v29;
      v100 = v104;
      *v101 = v105[0];
      *&v101[3] = *(v105 + 3);
      v102 = 0;
      v103 = 0;
      sub_1ADFAECE8(&v93);
      return result;
    }

    v63 = v53;

    v29 = v81;
  }

  else
  {
    v54 = v77;
    v55 = v13;
    v56 = v31;
    v57 = (*(v30 + 32))(v77, v55, v31);
    v81 = &v72;
    MEMORY[0x1EEE9AC00](v57);
    v58 = v82[7];
    *(&v72 - 6) = v31;
    *(&v72 - 5) = v58;
    v59 = v83;
    v60 = v106;
    *(&v72 - 4) = v83;
    *(&v72 - 3) = v60;
    *(&v72 - 2) = a1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v62 = v85;
    v63 = sub_1ADE13AA8(sub_1ADFB0170, (&v72 - 8), v56, &type metadata for Proto_Set.Element, v61, v59, MEMORY[0x1E69E7288], &v93);
    (*(v30 + 8))(v54, v56);
    if (v62)
    {
      goto LABEL_5;
    }
  }

  v65 = qword_1ED96F250;
  v66 = v73;
  swift_beginAccess();
  v67 = v74;
  sub_1ADDD2658(v66 + v65, v74, type metadata accessor for FinalizedTimestamp);
  v68 = sub_1ADDF66A8(v67);
  v69 = *(v67 + *(v75 + 20));
  sub_1ADDD2728(v67, type metadata accessor for FinalizedTimestamp);
  v104 = 0;
  *&v88 = v86;
  *(&v88 + 1) = v63;
  *(&v91 + 9) = v105[0];
  HIDWORD(v91) = *(v105 + 3);
  v89.n128_u64[0] = MEMORY[0x1E69E7CC0];
  v89.n128_u64[1] = v84;
  *&v90 = v29;
  *(&v90 + 1) = v68;
  *&v91 = v69;
  BYTE8(v91) = 0;
  v92 = 0uLL;
  v93 = v86;
  v94 = v63;
  v95 = MEMORY[0x1E69E7CC0];
  v96 = v84;
  v97 = v29;
  v98 = v68;
  v99 = v69;
  v100 = 0;
  *v101 = v105[0];
  *&v101[3] = *(v105 + 3);
  v102 = 0;
  v103 = 0;
  sub_1ADFAEE10(&v88, &v87);
  sub_1ADFAECE8(&v93);
  v70 = v91;
  v71 = v76;
  *(v76 + 32) = v90;
  *(v71 + 48) = v70;
  *(v71 + 64) = v92;
  result = v89;
  *v71 = v88;
  *(v71 + 16) = result;
  return result;
}

void sub_1ADFAE100(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a9;
  v28 = a1;
  v31 = a4;
  v32 = a5;
  v43 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v29 = a10;
  v37 = a11;
  v38 = a12;
  v39 = a2;
  v40 = a3;
  v14 = sub_1ADE6B9FC(sub_1ADFB0198, v30);
  if (!v12)
  {
    v26 = v14;
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](v14);
    v15 = v29;
    v16 = sub_1ADE6B938(sub_1ADFB01D0);
    type metadata accessor for CRDictionaryElement(0, v43, v15, v17);

    sub_1ADF78ED0(v18, &v42);
    v41 = v42;
    sub_1ADDF5C7C(a3);
    v20 = v19;
    v22 = v21;

    v23 = v26;
    v24 = v27;
    *v27 = v16;
    v24[1] = v23;
    v24[2] = v20;
    v24[3] = v22;
    v24[4] = 0;
  }
}

double sub_1ADFAE2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CRDictionaryElement(0, a4, a8, v19);
  (*(v15 + 16))(v18, a1 + *(v20 + 36), a4);
  sub_1ADDD2658(a1, v14, type metadata accessor for FinalizedTimestamp);
  sub_1ADDD22FC(v18, v14, a4, a8, &v26);
  v22 = type metadata accessor for CRRegister(0, a4, a8, v21);
  CRRegister.encode(to:)(a2, v22, v23);

  return result;
}

uint64_t sub_1ADFAE444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, _OWORD *a8@<X8>)
{
  v25 = a7;
  v26 = a5;
  v27 = a2;
  v28 = a4;
  v24 = a8;
  v10 = *a3;
  v11 = *a3;
  v12 = *(*a3 + 88);
  v13 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  swift_beginAccess();
  v16 = *(v10 + 80);
  v17 = *(v10 + 104);

  sub_1AE23CB7C();
  v18 = *(v12 - 8);
  result = (*(v18 + 48))(v15, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v20 = v31;
    sub_1ADFAE100(a1, v15, v27, v16, *(v12 + 16), v28, *(v11 + 96), v17, v29, *(v12 + 24), v26, a6);
    result = (*(v18 + 8))(v15, v12);
    if (v20)
    {
      *v25 = v20;
    }

    else
    {
      v21 = v29[1];
      v22 = v24;
      *v24 = v29[0];
      v22[1] = v21;
      *(v22 + 4) = v30;
    }
  }

  return result;
}

double sub_1ADFAE674@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  type metadata accessor for CRDictionaryElement(255, a4, a6, a3);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v16, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v9)
  {
    *a9 = v9;
  }

  else
  {
    result = *v16;
    v15 = v16[1];
    *a5 = v16[0];
    *(a5 + 16) = v15;
    *(a5 + 32) = v17;
  }

  return result;
}

uint64_t CRDictionary<>.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40[0] = *v4;
  v8 = a2[3];
  v30 = a2[2];
  v31 = v8;
  v9 = a2[5];
  v32 = a2[4];
  v33 = a3;
  v10 = a2[6];
  v11 = a2[7];
  v34 = v9;
  v35 = v10;
  v36 = a4;
  v37 = v11;
  v19 = v30;
  v20 = v8;
  v21 = v32;
  v22 = a3;
  v23 = v9;
  v24 = v10;
  v25 = a4;
  v26 = v11;
  v27 = sub_1ADFAF414;
  v28 = &v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v40[0] = sub_1ADE08EB0(sub_1ADFAF4B4, v18, a2, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);
  sub_1AE23D11C();
  swift_getWitnessTable();
  v15 = sub_1AE23CA4C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3BC();
  v40[7] = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_1AE23CB1C();
  v38 = a3;
  v39 = a4;
  swift_getWitnessTable();
  sub_1AE23E06C();

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

void sub_1ADFAE974()
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  sub_1AE23DC5C();
  __break(1u);
}

uint64_t sub_1ADFAEA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - v8);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADFA9038(a3);
  (*(v11 + 16))(v14, a2, v10);
  (*(v7 + 16))(v9, a1, v6);
  return sub_1ADFA3E00(v9, v14, v15, v16);
}

double sub_1ADFAEC5C@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1ADE6B938(sub_1ADFB0090);
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    *a2 = v5;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
  }

  return result;
}

double sub_1ADFAED70@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(v3 + 64);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8(v12, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    result = *v12;
    v11 = v12[1];
    *a3 = v12[0];
    *(a3 + 16) = v11;
    *(a3 + 32) = v13;
  }

  return result;
}

uint64_t sub_1ADFAEEA0(uint64_t a1, __int128 *a2, __int128 *a3, _BYTE *a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v11 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a5 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = *(a1 + *(a5 + 40));
  v33 = *a3;
  v34 = v19;
  v21 = sub_1ADF772F0(&v34, v20, &v33);
  v22 = *(v11 + 20);
  v23 = *(v6 + v22);
  v24 = *(a1 + v22);
  if (v23 != v24)
  {
    if (v23 >= v24)
    {
      goto LABEL_3;
    }

LABEL_7:
    (*(v15 + 16))(v18, a1 + *(a5 + 36), v14);
    v28 = *(a5 + 36);
    (*(*(a5 + 24) + 16))(v6 + v28, v14);
    (*(v15 + 40))(v6 + v28, v18, v14);
    result = sub_1ADFAFFE4(a1, v6);
    v29 = v32;
    v30 = *v32 | (v21 >> 8);
    goto LABEL_10;
  }

  if (sub_1ADF5EB00(v6))
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1ADDD2658(v6, v13, type metadata accessor for FinalizedTimestamp);
  v25 = *&v13[*(v11 + 20)];
  if (v24 == v25)
  {
    v26 = sub_1ADF5EB00(a1);
    sub_1ADDD2728(v13, type metadata accessor for FinalizedTimestamp);
    if ((v26 & 1) == 0)
    {
      return (*(*(a5 + 24) + 16))(a1 + *(a5 + 36), v14);
    }
  }

  else
  {
    sub_1ADDD2728(v13, type metadata accessor for FinalizedTimestamp);
    if (v24 >= v25)
    {
      return (*(*(a5 + 24) + 16))(a1 + *(a5 + 36), v14);
    }
  }

  result = (*(*(a5 + 24) + 16))(a1 + *(a5 + 36), v14);
  v29 = v32;
  LOBYTE(v30) = *v32 | v21;
LABEL_10:
  *v29 = v30 & 1;
  return result;
}

uint64_t sub_1ADFAF178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  sub_1ADFA9038(a3);
  v11 = *(v6 - 8);
  (*(v11 + 16))(v10, a1, v6);
  (*(v11 + 56))(v10, 0, 1, v6);
  sub_1ADFAEA78(v10, a2, a3);
  return (*(v8 + 8))(v10, v7);
}

double sub_1ADFAF2D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1ADFAF2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADFAF414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  (*(*(v8 - 8) + 16))(a1, a3);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t sub_1ADFAF4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 80);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_1ADFAF58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFAF638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFAF68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFAF6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for CRDictionaryElement(255, *(a1 + 24), *(a1 + 48), a4);
  WitnessTable = swift_getWitnessTable();
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v14 = WitnessTable;
  result = type metadata accessor for CRSetRefMergeableDelta(319, &v11);
  if (v9 <= 0x3F)
  {
    v15 = 0;
    v11 = result;
    result = type metadata accessor for FinalizedTimestamp(319);
    if (v10 <= 0x3F)
    {
      v16 = 0;
      v12 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADFAF7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFAF820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1ADFAF87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

uint64_t sub_1ADFAF8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFAF92C(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1ADFAF974(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1ADFAF9D0(uint64_t a1)
{
  sub_1ADFAFF70(319);
  if (v1 <= 0x3F)
  {
    sub_1AE23D7CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1ADFAFA60(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1AE23BFEC() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  if (v8)
  {
    v15 = 8;
  }

  else
  {
    v15 = 9;
  }

  v16 = *(v6 + 64);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (!v12)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + v17;
  v20 = v18 + 7;
  if (v14 < a2)
  {
    v21 = ((v20 + (v19 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v22 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v14 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v21);
        if (v26)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = *(a1 + v21);
        if (v26)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v25)
    {
      v26 = *(a1 + v21);
      if (v26)
      {
LABEL_33:
        v27 = v26 - 1;
        if (v22)
        {
          v27 = 0;
          v28 = *a1;
        }

        else
        {
          v28 = 0;
        }

        return v14 + (v28 | v27) + 1;
      }
    }
  }

  if (v9 == v14)
  {
    if (v8 >= 2)
    {
      v29 = (*(v7 + 48))(a1);
      goto LABEL_49;
    }

    return 0;
  }

  v30 = (a1 + v19) & ~v17;
  if (v13 == v14)
  {
    if (v12 >= 2)
    {
      v29 = (*(v11 + 48))(v30, v12);
LABEL_49:
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v32 = *((v20 + v30) & 0xFFFFFFFFFFFFFFF8);
  if (v32 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  return (v32 + 1);
}

void sub_1ADFAFCB0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1AE23BFEC() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13)
  {
    v17 = v13 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + 8;
  v21 = v19 + 9;
  if (v10)
  {
    v21 = v20;
  }

  v22 = v21 + v15;
  if (!v13)
  {
    ++v16;
  }

  v23 = v16 + 7;
  v24 = ((v23 + (v22 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v23 + (v22 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v25 = a3 - v18 + 1;
  }

  else
  {
    v25 = 2;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v18 < a3)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (a2 > v18)
  {
    if (((v23 + (v22 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a2 - v18;
    }

    else
    {
      v29 = 1;
    }

    if (((v23 + (v22 & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v30 = ~v18 + a2;
      bzero(a1, ((v23 + (v22 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v30;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        *(a1 + v24) = v29;
      }

      else
      {
        *(a1 + v24) = v29;
      }
    }

    else if (v28)
    {
      *(a1 + v24) = v29;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v24) = 0;
  }

  else if (v28)
  {
    *(a1 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v11 == v18)
  {
    v31 = a2 - v10;
    if (a2 >= v10)
    {
      if (v20)
      {
        bzero(a1, v20);
        *a1 = v31;
      }
    }

    else
    {
      v32 = *(v9 + 56);

      v32(a1, a2 + 1);
    }
  }

  else
  {
    v33 = (a1 + v22) & ~v15;
    if (v17 == v18)
    {
      v34 = *(v12 + 56);

      v34(v33, a2 + 1, v13);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v35 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v35 = a2 - 1;
      }

      *((v23 + v33) & 0xFFFFFFFFFFFFFFF8) = v35;
    }
  }
}

void sub_1ADFAFF70(uint64_t a1)
{
  if (!qword_1ED96A3C0)
  {
    type metadata accessor for FinalizedTimestamp(255);
    v1 = sub_1AE23D7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED96A3C0);
    }
  }
}

uint64_t sub_1ADFAFFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADFB0218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD00000000000001DLL;
  *(v3 + 8) = 0x80000001AE2618E0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB030C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000025;
  *(v3 + 8) = 0x80000001AE261CD0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0374()
{
  sub_1AE23DA2C();

  v0 = MEMORY[0x1B26FB670](0xD00000000000001FLL, 0x80000001AE261900);
  sub_1ADE42E40(v0, v1, v2);
  swift_allocError();
  *v3 = 0x6574636172616843;
  *(v3 + 8) = 0xE900000000000072;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0430(uint64_t a1, uint64_t a2)
{
  sub_1AE23DA2C();

  v4 = MEMORY[0x1B26FB670](0xD00000000000001FLL, 0x80000001AE261900);
  sub_1ADE42E40(v4, v5, v6);
  swift_allocError();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = 0;
  return swift_willThrow();
}

uint64_t CRCodable.init(defaultState:)(uint64_t a1)
{
  sub_1AE23DA2C();
  v1 = sub_1AE23E40C();
  v3 = v2;

  v4 = MEMORY[0x1B26FB670](0xD00000000000001FLL, 0x80000001AE261900);
  sub_1ADE42E40(v4, v5, v6);
  swift_allocError();
  *v7 = v1;
  *(v7 + 8) = v3;
  *(v7 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000026;
  *(v3 + 8) = 0x80000001AE261B80;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000028;
  *(v3 + 8) = 0x80000001AE261CA0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB06E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000028;
  *(v3 + 8) = 0x80000001AE261C70;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD00000000000002DLL;
  *(v3 + 8) = 0x80000001AE261920;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB07B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD00000000000002FLL;
  *(v3 + 8) = 0x80000001AE261980;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ADFB0430(0x3436746E49, 0xE500000000000000);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ADFB0864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ADFB0430(1953384789, 0xE400000000000000);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ADFB089C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ADFB0430(0x3436746E4955, 0xE600000000000000);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1ADFB08D8()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_1ADFB08F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ADFB0374();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1ADFB0924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000023;
  *(v3 + 8) = 0x80000001AE261C40;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB098C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD00000000000002BLL;
  *(v3 + 8) = 0x80000001AE261C10;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

BOOL sub_1ADFB09F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    v5 = v1;
    v6 = v1 >> 32;
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }
  }

  return v7 != v6;
}

uint64_t sub_1ADFB0A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000023;
  *(v3 + 8) = 0x80000001AE261BE0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000022;
  *(v3 + 8) = 0x80000001AE261BB0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD00000000000002ALL;
  *(v3 + 8) = 0x80000001AE261950;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD00000000000002CLL;
  *(v3 + 8) = 0x80000001AE261A50;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000035;
  *(v3 + 8) = 0x80000001AE2619B0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD00000000000002CLL;
  *(v3 + 8) = 0x80000001AE261A20;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD00000000000002DLL;
  *(v3 + 8) = 0x80000001AE2619F0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000031;
  *(v3 + 8) = 0x80000001AE261B40;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD00000000000002DLL;
  *(v3 + 8) = 0x80000001AE261B10;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000026;
  *(v3 + 8) = 0x80000001AE261AE0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000029;
  *(v3 + 8) = 0x80000001AE261AB0;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v3 = 0xD000000000000026;
  *(v3 + 8) = 0x80000001AE261A80;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB1024(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AE23D7CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1AE23D34C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1ADFB10FC(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  result = sub_1AE23D0AC();
  if (result)
  {
    v11 = 0;
    do
    {
      v12 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v12)
      {
        result = (*(v4 + 16))(v9, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v3);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        if (v15 != 8)
        {
          __break(1u);
          return result;
        }

        v17 = result;
        (*(v4 + 16))(v9, &v17, v3);
        result = swift_unknownObjectRelease();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      sub_1AE23D33C();
      (*(v4 + 8))(v6, v3);
      result = sub_1AE23D0AC();
      ++v11;
    }

    while (v13 != result);
  }

  return result;
}

uint64_t sub_1ADFB12F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = type metadata accessor for TreeNode(255, v6, v5, v7);
  v9 = sub_1AE23D7CC();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v14 = *(v8 - 8);
  (*(v14 + 16))(v19 - v12, a2, v8, v11);
  (*(v14 + 56))(v13, 0, 1, v8);
  WitnessTable = swift_getWitnessTable();
  v19[0] = v6;
  v19[1] = v8;
  v19[2] = v5;
  v19[3] = v7;
  v19[4] = &off_1F23C93F8;
  v19[5] = WitnessTable;
  v16 = type metadata accessor for CRDictionary(0, v19);
  sub_1ADFAEA78(v13, a1, v16);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1ADFB14A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, v7);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v3 + 8))(v9, v2);
}

void CRUnorderedTree.insert(_:inParent:)(void (*a1)(void, void), uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = a3[2];
  v9 = a3[4];
  v86 = a3[3];
  v90 = v9;
  v10 = type metadata accessor for TreeNode(0, v8, v86, v9);
  v94 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v69 - v13;
  v91 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v69 - v21;
  v89 = sub_1AE23D7CC();
  v97 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v80 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v85 = v10;
  v88 = sub_1AE23D7CC();
  v96 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v77 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v69 - v28;
  v30 = *v4;
  v31 = v4[1];
  v32 = v4[2];
  v81 = v4 + 2;
  v98 = v30;
  v99 = v31;
  v100 = v32;

  LOBYTE(v31) = sub_1AE1823DC(a1, a2, a3);

  if (v31)
  {
    v92 = a1;
    v76 = a3;
    sub_1AE182774(a1, a3);
    v93 = v4;
    v33 = v25;
    v34 = v8;
    v35 = v97 + 16;
    v78 = *(v97 + 16);
    v36 = v89;
    (v78)(v33, a2, v89);
    v37 = v86;
    v38 = v90;
    sub_1ADE1E114(v33, v34, v29);
    v39 = v85;
    (*(v94 + 56))(v29, 0, 1, v85);
    WitnessTable = swift_getWitnessTable();
    v98 = v34;
    v99 = v39;
    v100 = v37;
    v101 = v38;
    v102 = &off_1F23C93F8;
    v103 = WitnessTable;
    v70 = type metadata accessor for CRDictionary(0, &v98);
    sub_1ADFAEA78(v29, v92, v70);
    v41 = *(v96 + 8);
    v96 += 8;
    v71 = v41;
    v41(v29, v88);
    v75 = a2;
    v97 = v35;
    (v78)(v33, a2, v36);
    v42 = v87;
    sub_1ADE1E114(v33, v34, v87);
    v43 = swift_allocObject();
    v43[2] = v34;
    v43[3] = v37;
    v43[4] = v38;
    v44 = *(v91 + 16);
    v73 = v91 + 16;
    v72 = v44;
    v44(v95, v92, v34);
    v45 = swift_allocObject();
    v45[2] = v34;
    v45[3] = v37;
    v45[4] = v38;
    v45[5] = sub_1ADFB21B0;
    v74 = v43;
    v45[6] = v43;
    v46 = v93;
    swift_isUniquelyReferenced_nonNull_native();
    v47 = v46;
    v48 = v46[1];
    v98 = v48;
    v49 = swift_getWitnessTable();
    v86 = sub_1ADDFFB6C(v42, v39, v49);
    if (__OFADD__(*(v48 + 16), (v50 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v51 = v50;
      v90 = sub_1AE23D38C();
      sub_1AE23DC0C();
      v52 = sub_1AE23DBEC();
      if (v52)
      {
        v52 = sub_1ADDFFB6C(v42, v39, v49);
        v86 = v52;
        v54 = v91;
        if ((v51 & 1) != (v53 & 1))
        {
LABEL_17:
          sub_1AE23E27C();
          __break(1u);
          return;
        }

        v55 = v47;
        v56 = v94;
      }

      else
      {
        v55 = v47;
        v56 = v94;
        v54 = v91;
      }

      v57 = v95;
      v55[1] = v98;
      if ((v51 & 1) == 0)
      {
        v98 = (v45[5])(v52, v57);
        (*(v56 + 16))(v79, v42, v39);
        sub_1AE23DBFC();
      }

      v58 = v84;
      sub_1AE23D33C();
      (*(v56 + 8))(v42, v39);
      v59 = *(v54 + 8);
      v59(v58, v34);
      v60 = *(v54 + 48);
      v61 = v60(v75, 1, v34);
      v62 = v76;
      v63 = v92;
      if (v61 == 1)
      {
        goto LABEL_12;
      }

      v64 = v80;
      v78();
      if (v60(v64, 1, v34) != 1)
      {
        v66 = v77;
        CRDictionary.subscript.getter(v65, v77);
        v67 = (*(v94 + 48))(v66, 1, v39);
        v71(v66, v88);
        v59(v64, v34);
        if (v67 != 1)
        {
LABEL_13:
          sub_1AE182D10(v63, v62);

          return;
        }

LABEL_12:
        v72(v83, v63, v34);
        v68 = v82;
        sub_1AE23D33C();
        v59(v68, v34);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_1ADFB1EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v6 = sub_1AE18F13C(v5, a1, a3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  return v6;
}

uint64_t sub_1ADFB1F18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t CRUnorderedTree.children(of:)(uint64_t a1, void *a2)
{
  v14 = a1;
  v3 = a2[2];
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TreeNode(0, v3, a2[3], a2[4]);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v5 + 16))(v7, v14, v4, v10);
  sub_1ADE1E114(v7, v3, v12);
  sub_1AE23D38C();
  swift_getWitnessTable();
  sub_1AE23CB7C();
  (*(v9 + 8))(v12, v8);
  result = v15;
  if (!v15)
  {
    return sub_1AE23C9EC();
  }

  return result;
}

uint64_t sub_1ADFB2144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static CRDT.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1ADFB21C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1ADFB2204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void CRDictionary_v1.init(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  CRDictionary.init()(a2, a3, a4, a5, a6, a7, &v11);
  v10 = v11;

  *a8 = v10;
}

void *CRDictionary_v1.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = CRDictionary.init()(a1, a2, a3, a4, a5, a6, &v9);
  *a7 = v9;
  return result;
}

void *CRDictionary_v1.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = CRDictionary.init()(a1, a2, a3, a4, a5, a6, &v9);
  *a7 = v9;
  return result;
}

void CRDictionary_v1.copy(renamingReferences:)(void *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v10 = *v3;

  v7 = a2[2];
  v9[0] = a2[1];
  v9[1] = v7;
  v9[2] = a2[3];
  v8 = type metadata accessor for CRDictionary(0, v9);
  CRDictionary.copy(renamingReferences:)(a1, v8, v9);

  *a3 = *&v9[0];
}

uint64_t CRDictionary_v1.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRDictionary_v1.copy(renamingReferences:)(&v7, a2, a3);
}

double CRDictionary_v1.actionUndoingDifference(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v11[1] = *v3;
  v11[0] = v6;

  v7 = a2[2];
  v10[0] = a2[1];
  v10[1] = v7;
  v10[2] = a2[3];
  v8 = type metadata accessor for CRDictionary(0, v10);
  CRDictionary.actionUndoingDifference(from:)(v11, v8, a3);

  return result;
}

void CRDictionary_v1.apply(_:)(__int128 *a1, _OWORD *a2)
{
  v5 = *a1;
  v2 = a2[2];
  v4[0] = a2[1];
  v4[1] = v2;
  v4[2] = a2[3];
  v3 = type metadata accessor for CRDictionary(0, v4);
  CRDictionary.apply(_:)(&v5, v3);
}

uint64_t CRDictionary_v1.subscript.getter@<X0>(_OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *v3;
  v5 = a2[2];
  v8[0] = a2[1];
  v8[1] = v5;
  v8[2] = a2[3];
  type metadata accessor for CRDictionary(0, v8);
  return CRDictionary.subscript.getter(v6, a3);
}

uint64_t sub_1ADFB258C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v5 = *(a2 + a3 - 32);
  v8[0] = *(a2 + a3 - 48);
  v8[1] = v5;
  v8[2] = *(a2 + a3 - 16);
  v6 = type metadata accessor for CRDictionary_v1(0, v8);
  return CRDictionary_v1.subscript.getter(v6, a4);
}

uint64_t sub_1ADFB25FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v9[0] = *(a3 + a4 - 48);
  v9[1] = v6;
  v9[2] = *(a3 + a4 - 16);
  v7 = type metadata accessor for CRDictionary_v1(0, v9);
  return sub_1ADFB4480(a1, a3, v7);
}

uint64_t CRDictionary_v1.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADFB4480(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*CRDictionary_v1.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_1AE23D7CC();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v8[5] = v12;
  v14 = *(a3 + 16);
  v8[6] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v8[7] = v15;
  if (v6)
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(*(v15 + 64));
  }

  v8[8] = v17;
  (*(v16 + 16))();
  CRDictionary_v1.subscript.getter(a3, v13);
  return sub_1ADFB28D0;
}

uint64_t CRDictionary_v1.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *v5;
  v9 = a4[3];
  v15 = a4[2];
  v16 = v9;
  v10 = a4[5];
  v17 = a4[4];
  v18 = v10;
  v11 = a4[7];
  v19 = a4[6];
  v20 = v11;
  v21 = a2;
  v22 = a3;
  v23[6] = v8;
  v23[0] = v15;
  v23[1] = v9;
  v23[2] = v17;
  v23[3] = v10;
  v23[4] = v19;
  v23[5] = v11;
  v12 = type metadata accessor for CRDictionary(0, v23);
  return CRDictionary.subscript.getter(a1, sub_1ADFAEE78, &v14, v12, a5);
}

uint64_t CRDictionary_v1.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ADFB44E0(a1, a2, a5);
  (*(*(*(a5 + 16) - 8) + 8))(a2);
  v8 = *(*(*(a5 + 24) - 8) + 8);

  return v8(a1);
}

void (*CRDictionary_v1.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5))(uint64_t **a1, uint64_t a2)
{
  v10 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x48uLL);
  }

  v12 = v11;
  *a1 = v11;
  *v11 = a5;
  v11[1] = v5;
  v13 = a5[3];
  v11[2] = v13;
  v14 = *(v13 - 8);
  v11[3] = v14;
  v15 = *(v14 + 64);
  if (v10)
  {
    v11[4] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[4] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v12[5] = v16;
  v18 = a5[2];
  v12[6] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v12[7] = v19;
  if (v10)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v12[8] = v21;
  (*(v20 + 16))();
  CRDictionary_v1.subscript.getter(a2, a3, a4, a5, v17);
  return sub_1ADFB2BF0;
}

void sub_1ADFB2C08(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t))
{
  v4 = *a1;
  v6 = (*a1)[7];
  v5 = (*a1)[8];
  v7 = (*a1)[5];
  v13 = (*a1)[6];
  v9 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v9 + 16))(v4[4], v7, v4[2]);
    a3(v8, v5, v11);
    (*(v6 + 8))(v5, v13);
    v12 = *(v9 + 8);
    v12(v8, v10);
    v12(v7, v10);
  }

  else
  {
    a3(v7, v5, *v4);
    (*(v6 + 8))(v5, v13);
    (*(v9 + 8))(v7, v10);
  }

  free(v5);
  free(v7);
  free(v8);

  free(v4);
}

uint64_t CRDictionary_v1.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[2];
  v8[0] = a2[1];
  v8[1] = v5;
  v8[2] = a2[3];
  v6 = type metadata accessor for CRDictionary(0, v8);
  return CRDictionary.removeValue(forKey:)(a1, v6, a3);
}

double CRDictionary_v1.index(where:)@<D0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = *v4;

  v9 = a3[2];
  v12[0] = a3[1];
  v12[1] = v9;
  v12[2] = a3[3];
  v10 = type metadata accessor for CRDictionary(0, v12);
  CRDictionary.index(where:)(a1, a2, v10, a4);

  return result;
}

double CRDictionary_v1.merge(_:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;

  v6 = a2[2];
  v11[0] = a2[1];
  v11[1] = v6;
  v11[2] = a2[3];
  v7 = type metadata accessor for CRDictionary(0, v11);
  sub_1ADFA9038(v7);
  *&v11[0] = v5;
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1AE1755D4(v11, v7, WitnessTable);

  sub_1ADFAEA70();

  sub_1AE16F8E0(v9, a3);

  return result;
}

uint64_t CRDictionary_v1.newRefs(from:)(uint64_t *a1, _OWORD *a2)
{
  v4 = *v2;
  v10[0] = *a1;
  v10[1] = v4;

  v5 = a2[2];
  v9[0] = a2[1];
  v9[1] = v5;
  v9[2] = a2[3];
  v6 = type metadata accessor for CRDictionary(0, v9);
  v7 = CRDictionary.newRefs(from:)(v10, v6);

  return v7;
}

double CRDictionary_v1.visitReferences(_:)(void *a1, _OWORD *a2)
{
  v11 = *v2;

  v5 = a2[2];
  v10[0] = a2[1];
  v10[1] = v5;
  v10[2] = a2[3];
  v6 = type metadata accessor for CRDictionary(0, v10);
  CRDictionary.visitReferences(_:)(a1, v6, v7, v8);

  return result;
}

Swift::Bool __swiftcall CRDictionary_v1.needToFinalizeTimestamps()()
{
  v2 = v0;
  v6 = *v1;

  v3 = v2[2];
  v5[0] = v2[1];
  v5[1] = v3;
  v5[2] = v2[3];
  type metadata accessor for CRDictionary(0, v5);
  LOBYTE(v2) = CRDictionary.needToFinalizeTimestamps()();

  return v2 & 1;
}

void CRDictionary_v1.finalizeTimestamps(_:)(uint64_t a1, _OWORD *a2)
{
  v3 = a2[2];
  v5[0] = a2[1];
  v5[1] = v3;
  v5[2] = a2[3];
  v4 = type metadata accessor for CRDictionary(0, v5);
  CRDictionary.finalizeTimestamps(_:)(a1, v4);
}

uint64_t static CRDictionary_v1.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;

  v3 = static CRDictionary.== infix(_:_:)(&v6, &v5);

  return v3 & 1;
}

uint64_t CRDictionary_v1.description.getter(_OWORD *a1)
{
  v6 = *v1;
  v2 = a1[2];
  v5[0] = a1[1];
  v5[1] = v2;
  v5[2] = a1[3];
  v3 = type metadata accessor for CRDictionary(0, v5);
  return CRDictionary.description.getter(v3);
}

uint64_t CRDictionary_v1.hasDelta(from:)(uint64_t *a1, void *a2)
{
  v3 = *v2;
  v18 = *a1;
  v19 = v3;
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v9 = a2[7];

  v17[0] = v4;
  v17[1] = v5;
  v17[2] = v7;
  v17[3] = v6;
  v17[4] = v8;
  v17[5] = v9;
  type metadata accessor for CRDictionary(0, v17);
  v10 = CRDictionary.hasDelta(from:)(&v18);

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v19 = v3;
    v12 = sub_1ADFAEA70();
    v13 = swift_beginAccess();
    v16 = &v16;
    v18 = *(v12 + 40);
    MEMORY[0x1EEE9AC00](v13);
    type metadata accessor for CRDictionaryElement(255, v5, v8, v14);
    sub_1AE23CB1C();

    swift_getWitnessTable();
    v11 = sub_1AE23CF4C();
  }

  return v11 & 1;
}

double CRDictionary_v1.delta(_:from:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a2;
  v13[1] = *v4;
  v13[0] = v8;

  v9 = a3[2];
  v12[0] = a3[1];
  v12[1] = v9;
  v12[2] = a3[3];
  v10 = type metadata accessor for CRDictionary(0, v12);
  CRDictionary.delta(_:from:)(a1, v13, v10, a4);

  return result;
}

uint64_t CRDictionary_v1.canMerge(delta:)(uint64_t *a1, _OWORD *a2)
{
  v8 = *v2;

  v5 = a2[2];
  v7[0] = a2[1];
  v7[1] = v5;
  v7[2] = a2[3];
  type metadata accessor for CRDictionary(0, v7);
  LOBYTE(a2) = CRDictionary.canMerge(delta:)(a1);

  return a2 & 1;
}

uint64_t CRDictionary_v1.merge(delta:)(void *a1, _OWORD *a2)
{
  v3 = a2[2];
  v6[0] = a2[1];
  v6[1] = v3;
  v6[2] = a2[3];
  v4 = type metadata accessor for CRDictionary(0, v6);
  return CRDictionary.merge(delta:)(a1, v4) & 1;
}

double CRDictionary_v1.observableDifference(from:with:)@<D0>(char **a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v13[1] = *v4;
  v13[0] = v8;

  v9 = a3[2];
  v12[0] = a3[1];
  v12[1] = v9;
  v12[2] = a3[3];
  v10 = type metadata accessor for CRDictionary(0, v12);
  CRDictionary.observableDifference(from:with:)(v13, a2, v10, a4);

  return result;
}

void CRDictionary_v1.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a8@<X8>)
{
  CRDictionary.init(from:)(a1, a2, a3, a4, a5, a6, &v10);
  if (!v8)
  {
    *a8 = v10;
  }
}

double CRDictionary_v1.encode(to:)(uint64_t a1, _OWORD *a2)
{
  v10 = *v2;

  v5 = a2[2];
  v9[0] = a2[1];
  v9[1] = v5;
  v9[2] = a2[3];
  v6 = type metadata accessor for CRDictionary(0, v9);
  CRDictionary.encode(to:)(a1, v6, v7);

  return result;
}

uint64_t sub_1ADFB373C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *), uint64_t a7, void (*a8)(char *, uint64_t, uint64_t))
{
  v75 = a1;
  v72 = a6;
  v73 = a8;
  v70 = a2;
  v71 = a5;
  v63 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRDictionaryElement(255, a4, a7, v13);
  v15 = sub_1AE23D7CC();
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v61 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v26 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v69 = &v58 - v28;
  v76[8] = v70;
  v76[0] = a3;
  v76[1] = a4;
  v70 = a4;
  v76[2] = v71;
  v76[3] = v72;
  v64 = a7;
  v76[4] = a7;
  v76[5] = v73;
  type metadata accessor for CRDictionary(0, v76);
  sub_1ADFAEA70();
  v29 = *(v19 + 16);
  v71 = v19 + 16;
  v73 = v29;
  v29(v25, v75, TupleTypeMetadata2);
  v30 = v14;
  v31 = TupleTypeMetadata2;
  v32 = *(TupleTypeMetadata2 + 48);
  swift_beginAccess();

  sub_1AE23CB7C();

  v33 = (v26 + 8);
  if ((*(v26 + 48))(v17, 1, v30) == 1)
  {
    v65[1](v17, v66);
    (*v33)(&v25[v32], v30);
    (*(*(a3 - 1) + 8))(v25, a3);
    v34 = 0;
  }

  else
  {
    (*(v26 + 32))(v69, v17, v30);
    v35 = v32;
    v36 = *(v26 + 8);
    v36(&v25[v35], v30);
    v59 = v30;
    v37 = *(a3 - 1);
    v72 = *(v37 + 8);
    v66 = v37 + 8;
    v72(v25, a3);
    v38 = v74;
    v39 = v75;
    v73(v74, v75, v31);
    v40 = *(v31 + 48);
    v41 = v33;
    v42 = v67;
    sub_1ADED0548(&v38[v40], v67);
    v43 = &v38[v40];
    v44 = v59;
    v65 = v41;
    v60 = v36;
    (v36)(v43);
    v45 = v69;
    v46 = *(v68 + 20);
    v47 = *(v69 + v46);
    v48 = *(v42 + v46);
    v49 = v39;
    if (v47 == v48)
    {
      v50 = sub_1ADF5EB00(v69);
    }

    else
    {
      v50 = v47 < v48;
    }

    sub_1ADE173B8(v42);
    v72(v74, a3);
    if (v50)
    {
      v60(v45, v44);
      v34 = 1;
    }

    else
    {
      v74 = a3;
      v51 = v61;
      v73(v61, v49, v31);
      v52 = &v51[*(v31 + 48)];
      v53 = v62;
      v54 = v63;
      v55 = v70;
      (*(v63 + 16))(v62, &v52[*(v44 + 36)], v70);
      v56 = v60;
      v60(v52, v44);
      v34 = (*(v64 + 24))(v45 + *(v44 + 36), v55);
      (*(v54 + 8))(v53, v55);
      v56(v45, v44);
      v72(v51, v74);
    }
  }

  return v34 & 1;
}

double CRDictionary_v1.makeIterator()@<D0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v7 = *v2;
  v4 = a1[2];
  v6[0] = a1[1];
  v6[1] = v4;
  v6[2] = a1[3];
  type metadata accessor for CRDictionary(0, v6);
  CRDictionary.makeIterator()(a2);

  return result;
}

double sub_1ADFB3E34@<D0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  CRDictionary_v1.makeIterator()(a1, a2);

  return result;
}

uint64_t sub_1ADFB3E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1ADFB3EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1AE23836C(v3, a1, WitnessTable);

  return v6;
}

uint64_t sub_1ADFB3F40(_OWORD *a1, uint64_t (*a2)(uint64_t))
{
  v8 = *v2;
  v4 = a1[2];
  v7[0] = a1[1];
  v7[1] = v4;
  v7[2] = a1[3];
  v5 = type metadata accessor for CRDictionary(0, v7);
  return a2(v5);
}

uint64_t CRDictionary_v1.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v18 = *v4;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  sub_1ADFAF2D8(v8, v9, v10);
  v11 = a4[2];
  v14[0] = a4[1];
  v14[1] = v11;
  v14[2] = a4[3];
  v12 = type metadata accessor for CRDictionary(0, v14);
  CRDictionary.subscript.getter(a1, a2, &v15, v12);
  return sub_1ADDFFBC8(v15, v16, v17);
}

double CRDictionary_v1.index(after:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v12 = *v3;
  v10[3] = *a1;
  v11 = v6;

  v7 = a2[2];
  v10[0] = a2[1];
  v10[1] = v7;
  v10[2] = a2[3];
  v8 = type metadata accessor for CRDictionary(0, v10);
  CRDictionary.index(after:)(v8, a3);

  return result;
}

void (*sub_1ADFB40D0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_1ADFB4264(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_1ADFAD7BC;
}

void (*sub_1ADFB4264(uint64_t *a1, uint64_t a2, _OWORD *a3))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  CRDictionary_v1.subscript.getter(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1ADE022F8;
}

uint64_t sub_1ADFB4360(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *&v6 = *a1;
  v2 = v6;
  *(&v6 + 1) = v3;
  v7 = v4;
  CRDictionary_v1.index(after:)(&v6, a2, a1);

  return sub_1ADDFFBC8(v2, v3, v4);
}

double CRDictionary_v1<>.encode(to:)(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v13 = *v4;

  v9 = a2[2];
  v12[0] = a2[1];
  v12[1] = v9;
  v12[2] = a2[3];
  v10 = type metadata accessor for CRDictionary(0, v12);
  CRDictionary<>.encode(to:)(a1, v10, a3, a4);

  return result;
}

uint64_t sub_1ADFB4480(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = a3[2];
  v8[0] = a3[1];
  v8[1] = v5;
  v8[2] = a3[3];
  v6 = type metadata accessor for CRDictionary(0, v8);
  return sub_1ADFAEA78(a1, a2, v6);
}

uint64_t sub_1ADFB44E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  v12 = *(v6 - 8);
  (*(v12 + 16))(v16 - v10, a1, v6, v9);
  (*(v12 + 56))(v11, 0, 1, v6);
  v16[0] = *(a3 + 16);
  v16[1] = v6;
  v13 = *(a3 + 48);
  v17 = *(a3 + 32);
  v18 = v13;
  v14 = type metadata accessor for CRDictionary(0, v16);
  sub_1ADFAEA78(v11, a2, v14);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1ADFB4690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1ADFB4744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1ADFB47A8(uint64_t a1, uint64_t a2)
{
  v289 = 0;
  __s1[2] = *MEMORY[0x1E69E9840];
  v332 = sub_1AE23C12C();
  v4 = *(v332 - 8);
  MEMORY[0x1EEE9AC00](v332);
  v302 = &v279 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v306 = &v279 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v328 = &v279 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v303 = &v279 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v279 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v279 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v321 = &v279 - v19;
  v20 = type metadata accessor for Replica(0);
  v320 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v279 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v279 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v319 = &v279 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v314 = &v279 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v315 = &v279 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v279 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v312 = &v279 - v36;
  v288 = *(a1 + 16);
  if (!v288)
  {
    goto LABEL_205;
  }

  v37 = 0;
  v38 = a1 + 32;
  v298 = a2 + 32;
  v326 = v4 + 16;
  v331 = (v4 + 32);
  v329 = (v4 + 8);
  v307 = v14;
  v317 = v17;
  v325 = v22;
  v282 = a1;
  v281 = a2;
  v327 = v4;
  v310 = v25;
  v316 = v34;
  v280 = a1 + 32;
  do
  {
    v291 = v37;
    v39 = (v38 + 32 * v37);
    v40 = *v39;
    if (!*v39)
    {
      return;
    }

    v41 = v39[1];
    v42 = v39[2];
    v43 = v39[3];
    v44 = *(a2 + 16);
    v318 = *v39;
    v322 = v41;
    sub_1ADE42C78(v40, v41);
    v292 = v42;
    v293 = v43;
    sub_1ADDD86D8(v42, v43);
    v297 = v44;
    if (!v44)
    {
LABEL_340:
      sub_1ADE42CB8(v318, v322);
      v277 = v292;
      v278 = v293;
      goto LABEL_341;
    }

    v45 = 0;
    ++v291;
    v46 = v293 >> 62;
    if (v292)
    {
      v47 = 0;
    }

    else
    {
      v47 = v293 == 0xC000000000000000;
    }

    v48 = !v47;
    v287 = v48;
    v284 = HIDWORD(v292);
    v49 = __OFSUB__(HIDWORD(v292), v292);
    v286 = v49;
    v285 = HIDWORD(v292) - v292;
    v290 = BYTE6(v293);
    v50 = v292;
    v51 = v292 >> 32;
    v283 = (v292 >> 32) - v292;
    v295 = v293 >> 62;
    v294 = v292;
    v296 = v292 >> 32;
    while (1)
    {
      v53 = (v298 + 32 * v45);
      v54 = *v53;
      v55 = v53[1];
      v57 = v53[2];
      v56 = v53[3];
      v313 = v55;
      if (v54)
      {
        v299 = v45;
        v58 = *(v55 + 64);
        v308 = v55 + 64;
        v59 = v55;
        v60 = v56;
        v61 = 1 << *(v55 + 32);
        if (v61 < 64)
        {
          v62 = ~(-1 << v61);
        }

        else
        {
          v62 = -1;
        }

        v63 = v62 & v58;
        v309 = v54;
        sub_1ADE42C78(v54, v59);
        v300 = v57;
        v301 = v60;
        sub_1ADDD86D8(v57, v60);
        v305 = (v61 + 63) >> 6;

        v311 = 0;
        v64 = 0;
        v65 = 0;
        v66 = v317;
        while (1)
        {
          v324 = v65;
          if (v63)
          {
            v69 = v64;
LABEL_35:
            v73 = __clz(__rbit64(v63));
            v63 &= v63 - 1;
            v74 = v73 | (v69 << 6);
            v75 = v313;
            v76 = v319;
            sub_1ADDDE768(*(v313 + 48) + v320[9] * v74, v319);
            v77 = v327;
            v78 = v321;
            v79 = v332;
            (*(v327 + 16))(v321, *(v75 + 56) + *(v327 + 72) * v74, v332);
            v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            v81 = *(v80 + 48);
            v82 = v76;
            v72 = v316;
            sub_1ADDD8010(v82, v316);
            (*(v77 + 32))(v72 + v81, v78, v79);
            (*(*(v80 - 8) + 56))(v72, 0, 1, v80);
            v66 = v317;
            v22 = v325;
          }

          else
          {
            v70 = v305 <= v64 + 1 ? v64 + 1 : v305;
            v71 = v70 - 1;
            v72 = v316;
            while (1)
            {
              v69 = v64 + 1;
              if (__OFADD__(v64, 1))
              {
                __break(1u);
LABEL_343:
                __break(1u);
                return;
              }

              if (v69 >= v305)
              {
                break;
              }

              v63 = *(v308 + 8 * v69);
              ++v64;
              if (v63)
              {
                v64 = v69;
                goto LABEL_35;
              }
            }

            v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            (*(*(v97 - 8) + 56))(v72, 1, 1, v97);
            v63 = 0;
            v64 = v71;
          }

          v83 = v312;
          sub_1ADFBA458(v72, v312);
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          v84 = *(v67 - 8);
          v323 = *(v84 + 48);
          v85 = (v323)(v83, 1, v67);
          v330 = v67;
          if (v85 == 1)
          {
            break;
          }

          v86 = *v331;
          (*v331)(v66, v83 + *(v67 + 48), v332);
          v87 = v310;
          sub_1ADDD8010(v83, v310);
          if (*(v322 + 16) && (v88 = sub_1ADDD8A6C(v87), (v89 & 1) != 0))
          {
            v90 = v303;
            v91 = v332;
            (*(v327 + 16))(v303, *(v322 + 56) + *(v327 + 72) * v88, v332);
            sub_1ADDF1F8C(v87);
            v92 = v90;
            v93 = v307;
            v86(v307, v92, v91);
            if (sub_1AE23C0BC())
            {
              v94 = sub_1AE23C04C();
              v95 = 2 * (v94 != sub_1AE23C04C());
              v67 = v330;
              v96 = v311;
            }

            else
            {
              v98 = sub_1AE23C04C();
              v99 = sub_1AE23C04C();
              v67 = v330;
              v96 = v311;
              if (v99 < v98 && (sub_1AE23C0BC() & 1) != 0)
              {
                v95 = 1;
              }

              else
              {
                v95 = 3;
              }
            }

            v68 = *v329;
            (*v329)(v93, v332);
            v100 = __OFADD__(v96, 1);
            v101 = (v96 + 1);
            if (v100)
            {
              __break(1u);
LABEL_346:
              __break(1u);
LABEL_347:
              __break(1u);
LABEL_348:
              __break(1u);
LABEL_349:
              __break(1u);
LABEL_350:
              __break(1u);
LABEL_351:
              __break(1u);
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
              __break(1u);
LABEL_371:
              __break(1u);
LABEL_372:
              __break(1u);
LABEL_373:
              __break(1u);
LABEL_374:
              __break(1u);
LABEL_375:
              __break(1u);
LABEL_376:
              __break(1u);
LABEL_377:
              __break(1u);
LABEL_378:
              __break(1u);
LABEL_379:
              __break(1u);
LABEL_380:
              __break(1u);
            }

            v311 = v101;
            v22 = v325;
            v65 = v95 | v324;
            v66 = v317;
          }

          else
          {
            sub_1ADDF1F8C(v87);
            v65 = v324 | 1;
            v67 = v330;
            v68 = *v329;
          }

          v68(v66, v332);
          if (v65 == 3)
          {

            v106 = 3;
            goto LABEL_64;
          }
        }

        if (v311 == *(v322 + 16))
        {
          v106 = v324;
        }

        else
        {
          v106 = v324 | 2;
        }

LABEL_64:
        v107 = *(v309 + 64);
        v305 = v309 + 64;
        v108 = 1 << *(v309 + 32);
        if (v108 < 64)
        {
          v109 = ~(-1 << v108);
        }

        else
        {
          v109 = -1;
        }

        v110 = v109 & v107;
        v304 = (v108 + 63) >> 6;
        v311 = (v84 + 56);

        v308 = 0;
        v111 = 0;
        v112 = v314;
        while (1)
        {
          if (v110)
          {
            v324 = v106;
            v114 = v111;
LABEL_80:
            v118 = __clz(__rbit64(v110));
            v110 &= v110 - 1;
            v119 = v118 | (v114 << 6);
            v120 = v309;
            v121 = v319;
            sub_1ADDDE768(*(v309 + 48) + v320[9] * v119, v319);
            v122 = v327;
            v123 = *(v120 + 56) + *(v327 + 72) * v119;
            v124 = v321;
            v125 = v332;
            (*(v327 + 16))(v321, v123, v332);
            v126 = v330;
            v127 = *(v330 + 48);
            v128 = v121;
            v112 = v314;
            sub_1ADDD8010(v128, v314);
            v129 = *(v122 + 32);
            v67 = v126;
            v129(v112 + v127, v124, v125);
            v130 = 0;
            v106 = v324;
            v22 = v325;
            v117 = v315;
          }

          else
          {
            v115 = v304 <= v111 + 1 ? v111 + 1 : v304;
            v116 = v115 - 1;
            v117 = v315;
            while (1)
            {
              v114 = v111 + 1;
              if (__OFADD__(v111, 1))
              {
                goto LABEL_343;
              }

              if (v114 >= v304)
              {
                break;
              }

              v110 = *(v305 + 8 * v114);
              ++v111;
              if (v110)
              {
                v324 = v106;
                v111 = v114;
                goto LABEL_80;
              }
            }

            v110 = 0;
            v130 = 1;
            v111 = v116;
          }

          (*v311)(v112, v130, 1, v67);
          sub_1ADFBA458(v112, v117);
          if ((v323)(v117, 1, v67) == 1)
          {
            break;
          }

          v131 = *v331;
          (*v331)(v328, v117 + *(v67 + 48), v332);
          sub_1ADDD8010(v117, v22);
          if (v318[2] && (v132 = sub_1ADDD8A6C(v22), (v133 & 1) != 0))
          {
            v134 = v302;
            v135 = v332;
            (*(v327 + 16))(v302, &v318[7][*(v327 + 72) * v132], v332);
            sub_1ADDF1F8C(v22);
            v136 = v306;
            v131(v306, v134, v135);
            if (sub_1AE23C0BC())
            {
              v137 = sub_1AE23C04C();
              v138 = 2 * (v137 != sub_1AE23C04C());
              v139 = v136;
            }

            else
            {
              v140 = sub_1AE23C04C();
              if (sub_1AE23C04C() < v140 && (sub_1AE23C0BC() & 1) != 0)
              {
                v138 = 1;
              }

              else
              {
                v138 = 3;
              }

              v139 = v306;
            }

            v22 = v325;
            v112 = v314;
            v67 = v330;
            v113 = *v329;
            (*v329)(v139, v332);
            if (__OFADD__(v308, 1))
            {
              goto LABEL_346;
            }

            ++v308;
            v106 |= v138;
          }

          else
          {
            sub_1ADDF1F8C(v22);
            v106 |= 1uLL;
            v113 = *v329;
          }

          v113(v328, v332);
          if (v106 == 3)
          {
            v52 = v309;

            sub_1ADE42CB8(v52, v313);
            sub_1ADDCC35C(v300, v301);
            goto LABEL_16;
          }
        }

        v141 = v309;

        v142 = v318[2];
        sub_1ADE42CB8(v141, v313);
        sub_1ADDCC35C(v300, v301);
        if (v308 == v142)
        {
          v45 = v299;
          v46 = v295;
          v50 = v294;
          v51 = v296;
          if ((v106 & 2) == 0)
          {
            goto LABEL_200;
          }
        }

        else
        {
LABEL_16:
          v45 = v299;
          v46 = v295;
          v50 = v294;
          v51 = v296;
        }

        goto LABEL_17;
      }

      v102 = v56 >> 62;
      if (v56 >> 62 == 3)
      {
        if (v57)
        {
          v103 = 0;
        }

        else
        {
          v103 = v56 == 0xC000000000000000;
        }

        v105 = !v103 || v46 < 3;
        if (((v105 | v287) & 1) == 0)
        {
          sub_1ADE42CB8(v318, v322);
          v202 = 0;
          v203 = 0xC000000000000000;
          goto LABEL_202;
        }

LABEL_107:
        v143 = 0;
        if (v46 <= 1)
        {
          goto LABEL_104;
        }

        goto LABEL_108;
      }

      if (v102 > 1)
      {
        if (v102 != 2)
        {
          goto LABEL_107;
        }

        v145 = *(v57 + 16);
        v144 = *(v57 + 24);
        v100 = __OFSUB__(v144, v145);
        v143 = v144 - v145;
        if (v100)
        {
          goto LABEL_354;
        }

        if (v46 <= 1)
        {
LABEL_104:
          v146 = v290;
          if (v46)
          {
            v146 = v285;
            if (v286)
            {
              goto LABEL_350;
            }
          }

          goto LABEL_110;
        }
      }

      else if (v102)
      {
        LODWORD(v143) = HIDWORD(v57) - v57;
        if (__OFSUB__(HIDWORD(v57), v57))
        {
          goto LABEL_353;
        }

        v143 = v143;
        if (v46 <= 1)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v143 = BYTE6(v56);
        if (v46 <= 1)
        {
          goto LABEL_104;
        }
      }

LABEL_108:
      if (v46 != 2)
      {
        if (!v143)
        {
          goto LABEL_200;
        }

        goto LABEL_17;
      }

      v148 = *(v292 + 16);
      v147 = *(v292 + 24);
      v100 = __OFSUB__(v147, v148);
      v146 = v147 - v148;
      if (v100)
      {
        goto LABEL_349;
      }

LABEL_110:
      if (v143 != v146)
      {
        goto LABEL_17;
      }

      if (v143 < 1)
      {
        goto LABEL_200;
      }

      if (v102 > 1)
      {
        break;
      }

      if (v102)
      {
        if (v57 > v57 >> 32)
        {
          goto LABEL_356;
        }

        sub_1ADE42C78(0, v313);
        v300 = v57;
        sub_1ADDD86D8(v57, v56);
        v154 = sub_1AE23BB7C();
        v301 = v56;
        if (v154)
        {
          v155 = v154;
          v156 = sub_1AE23BBAC();
          if (__OFSUB__(v57, v156))
          {
            goto LABEL_360;
          }

          v153 = (v57 - v156 + v155);
        }

        else
        {
          v153 = 0;
        }

        v51 = v296;
        sub_1AE23BB9C();
        if (v46 != 2)
        {
          if (v46 != 1)
          {
            LODWORD(__s1[0]) = v292;
            v161 = (v293 >> 40);
            BYTE4(__s1[0]) = v284;
            *(__s1 + 5) = *(&v292 + 5);
            HIBYTE(__s1[0]) = HIBYTE(v292);
            LODWORD(__s1[1]) = v293;
            WORD2(__s1[1]) = WORD2(v293);
            if (!v153)
            {
              goto LABEL_396;
            }

            goto LABEL_180;
          }

          if (v51 < v50)
          {
            goto LABEL_371;
          }

          v165 = sub_1AE23BB7C();
          if (v165)
          {
            v170 = sub_1AE23BBAC();
            if (__OFSUB__(v50, v170))
            {
              goto LABEL_380;
            }

            v165 += v50 - v170;
          }

          v51 = v296;
          v171 = sub_1AE23BB9C();
          v161 = v283;
          if (v171 < v283)
          {
            v161 = v171;
          }

          if (!v153)
          {
            goto LABEL_398;
          }

          v168 = v322;
          v169 = v318;
          if (!v165)
          {
            goto LABEL_397;
          }

LABEL_160:
          if (v153 == v165)
          {
            goto LABEL_204;
          }

          v172 = v161;
          v173 = v153;
          v174 = v165;
LABEL_181:
          v195 = memcmp(v173, v174, v172);
          sub_1ADE42CB8(0, v313);
          sub_1ADDCC35C(v300, v301);
          if (!v195)
          {
            goto LABEL_200;
          }

          goto LABEL_17;
        }

        v190 = *(v292 + 16);
        v191 = *(v292 + 24);
        v192 = sub_1AE23BB7C();
        v299 = v45;
        if (v192)
        {
          v193 = v192;
          v194 = sub_1AE23BBAC();
          if (__OFSUB__(v190, v194))
          {
            goto LABEL_378;
          }

          v189 = (v190 - v194 + v193);
        }

        else
        {
          v189 = 0;
        }

        v100 = __OFSUB__(v191, v190);
        v198 = (v191 - v190);
        if (v100)
        {
          goto LABEL_372;
        }

        v199 = sub_1AE23BB9C();
        if (v199 >= v198)
        {
          v161 = v198;
        }

        else
        {
          v161 = v199;
        }

        if (!v153)
        {
          goto LABEL_400;
        }

        v168 = v322;
        v169 = v318;
        v46 = v295;
        v50 = v294;
        v51 = v296;
        if (!v189)
        {
          goto LABEL_399;
        }

        goto LABEL_198;
      }

      __s1[0] = v57;
      LOWORD(__s1[1]) = v56;
      BYTE2(__s1[1]) = BYTE2(v56);
      BYTE3(__s1[1]) = BYTE3(v56);
      BYTE4(__s1[1]) = BYTE4(v56);
      BYTE5(__s1[1]) = BYTE5(v56);
      if (!v46)
      {
        goto LABEL_135;
      }

      v300 = v57;
      if (v46 == 1)
      {
        if (v51 < v50)
        {
          goto LABEL_367;
        }

        sub_1ADE42C78(0, v313);
        goto LABEL_167;
      }

      v175 = v56;
      v176 = *(v292 + 24);
      v330 = *(v292 + 16);
      v324 = v176;
      v177 = v313;
      sub_1ADE42C78(0, v313);
      v301 = v175;
      sub_1ADDD86D8(v57, v175);
      v178 = v289;
      v179 = sub_1ADFB9F04(v330, v324, v293 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      v161 = &v321;
      v289 = v178;
      if (v178)
      {
        goto LABEL_401;
      }

      v180 = v179;
      sub_1ADE42CB8(0, v177);
      sub_1ADDCC35C(v300, v301);
      if (v180)
      {
LABEL_200:
        sub_1ADE42CB8(v318, v322);
        v202 = v292;
        v201 = &v325;
        goto LABEL_201;
      }

LABEL_17:
      if (++v45 == v297)
      {
        goto LABEL_340;
      }
    }

    if (v102 != 2)
    {
      memset(__s1, 0, 14);
      if (!v46)
      {
LABEL_135:
        __s2 = v292;
        v335 = v284;
        v336 = *(&v292 + 5);
        v337 = HIBYTE(v292);
        v338 = v293;
        v339 = WORD2(v293);
        if (!memcmp(__s1, &__s2, v290))
        {
          goto LABEL_200;
        }

        goto LABEL_17;
      }

      if (v46 == 2)
      {
        v157 = *(v292 + 24);
        v330 = *(v292 + 16);
        sub_1ADE42C78(0, v313);
        v301 = v56;
        sub_1ADDD86D8(v57, v56);
        v158 = v157;
        v159 = v289;
        v160 = sub_1ADFB9F04(v330, v158, v293 & 0x3FFFFFFFFFFFFFFFLL, __s1);
        v161 = &v321;
        v289 = v159;
        if (v159)
        {
          goto LABEL_401;
        }

        v162 = v160;
        sub_1ADE42CB8(0, v313);
        v163 = v57;
        v164 = v301;
      }

      else
      {
        if (v51 < v50)
        {
          goto LABEL_368;
        }

        sub_1ADE42C78(0, v313);
        v300 = v57;
LABEL_167:
        sub_1ADDD86D8(v57, v56);
        v181 = v289;
        v182 = sub_1ADFB9F04(v50, v51, v293 & 0x3FFFFFFFFFFFFFFFLL, __s1);
        v161 = &v321;
        v289 = v181;
        if (v181)
        {
          goto LABEL_401;
        }

        v183 = v56;
        v162 = v182;
        sub_1ADE42CB8(0, v313);
        v163 = v300;
        v164 = v183;
      }

      sub_1ADDCC35C(v163, v164);
      if (v162)
      {
        goto LABEL_200;
      }

      goto LABEL_17;
    }

    v149 = *(v57 + 16);
    sub_1ADE42C78(0, v313);
    v300 = v57;
    sub_1ADDD86D8(v57, v56);
    v150 = sub_1AE23BB7C();
    v301 = v56;
    if (v150)
    {
      v151 = v150;
      v152 = sub_1AE23BBAC();
      if (__OFSUB__(v149, v152))
      {
        goto LABEL_359;
      }

      v153 = (v149 - v152 + v151);
    }

    else
    {
      v153 = 0;
    }

    v51 = v296;
    sub_1AE23BB9C();
    if (v46 != 2)
    {
      if (v46 == 1)
      {
        if (v51 < v50)
        {
          goto LABEL_369;
        }

        v165 = sub_1AE23BB7C();
        if (v165)
        {
          v166 = sub_1AE23BBAC();
          if (__OFSUB__(v50, v166))
          {
            goto LABEL_379;
          }

          v165 += v50 - v166;
        }

        v51 = v296;
        v167 = sub_1AE23BB9C();
        v161 = v283;
        if (v167 < v283)
        {
          v161 = v167;
        }

        if (!v153)
        {
          goto LABEL_393;
        }

        v168 = v322;
        v169 = v318;
        if (!v165)
        {
          goto LABEL_392;
        }

        goto LABEL_160;
      }

      LODWORD(__s1[0]) = v292;
      v161 = (v293 >> 40);
      BYTE4(__s1[0]) = v284;
      *(__s1 + 5) = *(&v292 + 5);
      HIBYTE(__s1[0]) = HIBYTE(v292);
      LODWORD(__s1[1]) = v293;
      WORD2(__s1[1]) = WORD2(v293);
      if (!v153)
      {
LABEL_391:
        __break(1u);
LABEL_392:
        __break(1u);
LABEL_393:
        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
LABEL_396:
        __break(1u);
LABEL_397:
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
LABEL_400:
        __break(1u);
LABEL_401:

        __break(1u);
        return;
      }

LABEL_180:
      v174 = __s1;
      v173 = v153;
      v172 = v290;
      goto LABEL_181;
    }

    v184 = *(v292 + 16);
    v185 = *(v292 + 24);
    v186 = sub_1AE23BB7C();
    v299 = v45;
    if (v186)
    {
      v187 = v186;
      v188 = sub_1AE23BBAC();
      if (__OFSUB__(v184, v188))
      {
        goto LABEL_377;
      }

      v189 = (v184 - v188 + v187);
    }

    else
    {
      v189 = 0;
    }

    v100 = __OFSUB__(v185, v184);
    v196 = (v185 - v184);
    if (v100)
    {
      goto LABEL_370;
    }

    v197 = sub_1AE23BB9C();
    if (v197 >= v196)
    {
      v161 = v196;
    }

    else
    {
      v161 = v197;
    }

    if (!v153)
    {
      goto LABEL_395;
    }

    v168 = v322;
    v169 = v318;
    v46 = v295;
    v50 = v294;
    v51 = v296;
    if (!v189)
    {
      goto LABEL_394;
    }

LABEL_198:
    if (v153 != v189)
    {
      v200 = memcmp(v153, v189, v161);
      sub_1ADE42CB8(0, v313);
      sub_1ADDCC35C(v300, v301);
      v45 = v299;
      if (!v200)
      {
        goto LABEL_200;
      }

      goto LABEL_17;
    }

LABEL_204:
    sub_1ADE42CB8(v169, v168);
    sub_1ADDCC35C(v292, v293);
    sub_1ADE42CB8(0, v313);
    v202 = v300;
    v201 = &v333;
LABEL_201:
    v203 = *(v201 - 32);
LABEL_202:
    sub_1ADDCC35C(v202, v203);
    v37 = v291;
    a1 = v282;
    a2 = v281;
    v38 = v280;
  }

  while (v291 != v288);
LABEL_205:
  v319 = *(a2 + 16);
  if (!v319)
  {
    return;
  }

  v204 = 0;
  v205 = (a2 + 32);
  v320 = (a1 + 56);
  v317 = (a2 + 32);
  while (2)
  {
    v206 = &v205[32 * v204];
    v207 = *v206;
    v208 = *v206 != 0;
    if (!*v206)
    {
      return;
    }

    v327 = v204;
    LODWORD(v321) = v208;
    v209 = *(v206 + 1);
    v210 = *(v206 + 2);
    v211 = *(v206 + 3);
    v331 = v207;
    v332 = v209;
    sub_1ADE42C78(v207, v209);
    sub_1ADDD86D8(v210, v211);
    if (!v288)
    {
LABEL_339:
      sub_1ADE42CB8(v331, v332);
      v277 = v210;
      v278 = v211;
LABEL_341:
      sub_1ADDCC35C(v277, v278);
      return;
    }

    if (v210)
    {
      v212 = 0;
    }

    else
    {
      v212 = v211 == 0xC000000000000000;
    }

    v213 = !v212;
    LODWORD(v329) = v213;
    v214 = v211 >> 62;
    v322 = HIDWORD(v210);
    v215 = __OFSUB__(HIDWORD(v210), v210);
    LODWORD(v325) = v215;
    v330 = BYTE6(v211);
    v326 = v210;
    ++v327;
    v323 = v210 >> 32;
    v324 = HIDWORD(v210) - v210;
    v318 = ((v210 >> 32) - v210);
    v216 = v320;
    v217 = v288;
    v328 = v211;
    while (1)
    {
      v218 = *(v216 - 3);
      v219 = *(v216 - 2);
      v220 = *(v216 - 1);
      v221 = *v216;
      if (v218)
      {
        __s1[0] = 0;
        sub_1ADE42C78(v218, v219);
        sub_1ADDD86D8(v220, v221);
        sub_1ADF6457C(v219, __s1, v332);
        sub_1ADF6457C(v218, __s1, v331);
        sub_1ADE42CB8(v218, v219);
        sub_1ADDCC35C(v220, v221);
        if ((__s1[0] & 2) == 0)
        {
          goto LABEL_333;
        }

        goto LABEL_220;
      }

      v222 = v221 >> 62;
      if (v221 >> 62 == 3)
      {
        if (v220)
        {
          v223 = 0;
        }

        else
        {
          v223 = v221 == 0xC000000000000000;
        }

        v225 = !v223 || v214 < 3;
        if (((v225 | v329) & 1) == 0)
        {
          sub_1ADE42CB8(v331, v332);
          v273 = 0;
          v274 = 0xC000000000000000;
          goto LABEL_334;
        }

LABEL_244:
        v226 = 0;
        if (v214 <= 1)
        {
          goto LABEL_241;
        }

        goto LABEL_245;
      }

      if (v222 > 1)
      {
        if (v222 != 2)
        {
          goto LABEL_244;
        }

        v228 = *(v220 + 16);
        v227 = *(v220 + 24);
        v100 = __OFSUB__(v227, v228);
        v226 = v227 - v228;
        if (v100)
        {
          goto LABEL_351;
        }

        if (v214 <= 1)
        {
          goto LABEL_241;
        }
      }

      else if (v222)
      {
        LODWORD(v226) = HIDWORD(v220) - v220;
        if (__OFSUB__(HIDWORD(v220), v220))
        {
          goto LABEL_352;
        }

        v226 = v226;
        if (v214 <= 1)
        {
LABEL_241:
          v229 = v330;
          if (v214)
          {
            v229 = v324;
            if (v325)
            {
              goto LABEL_347;
            }
          }

          goto LABEL_247;
        }
      }

      else
      {
        v226 = BYTE6(v221);
        if (v214 <= 1)
        {
          goto LABEL_241;
        }
      }

LABEL_245:
      if (v214 != 2)
      {
        if (!v226)
        {
          goto LABEL_333;
        }

        goto LABEL_220;
      }

      v231 = *(v210 + 16);
      v230 = *(v210 + 24);
      v100 = __OFSUB__(v230, v231);
      v229 = v230 - v231;
      if (v100)
      {
        goto LABEL_348;
      }

LABEL_247:
      if (v226 != v229)
      {
        goto LABEL_220;
      }

      if (v226 < 1)
      {
        goto LABEL_333;
      }

      if (v222 <= 1)
      {
        break;
      }

      if (v222 != 2)
      {
        memset(__s1, 0, 14);
        if (!v214)
        {
LABEL_273:
          LOWORD(__s2) = v210;
          BYTE2(__s2) = BYTE2(v210);
          HIBYTE(__s2) = BYTE3(v210);
          v335 = v322;
          LOBYTE(v336) = BYTE5(v210);
          HIBYTE(v336) = BYTE6(v210);
          v337 = HIBYTE(v210);
          LOWORD(v338) = v211;
          BYTE2(v338) = BYTE2(v211);
          HIBYTE(v338) = BYTE3(v211);
          LOBYTE(v339) = BYTE4(v211);
          HIBYTE(v339) = BYTE5(v211);
          if (!memcmp(__s1, &__s2, v330))
          {
            goto LABEL_333;
          }

          goto LABEL_220;
        }

        if (v214 == 2)
        {
LABEL_270:
          v241 = *(v210 + 16);
          v242 = *(v210 + 24);
          sub_1ADE42C78(0, v219);
          sub_1ADDD86D8(v220, v221);
          v243 = v211 & 0x3FFFFFFFFFFFFFFFLL;
          v244 = v289;
          v245 = sub_1ADFB9F04(v241, v242, v243, __s1);
          v161 = &v321;
          v289 = v244;
          if (v244)
          {
            goto LABEL_401;
          }

          v246 = v245;
          sub_1ADE42CB8(0, v219);
          sub_1ADDCC35C(v220, v221);
          v211 = v328;
          if (v246)
          {
            goto LABEL_333;
          }

          goto LABEL_220;
        }

        v232 = v326;
        v233 = v323;
        if (v323 < v326)
        {
          goto LABEL_361;
        }

        goto LABEL_301;
      }

      v234 = *(v220 + 16);
      sub_1ADE42C78(0, *(v216 - 2));
      sub_1ADDD86D8(v220, v221);
      v235 = sub_1AE23BB7C();
      if (v235)
      {
        v236 = v235;
        v237 = sub_1AE23BBAC();
        if (__OFSUB__(v234, v237))
        {
          goto LABEL_357;
        }

        v316 = (v234 - v237 + v236);
      }

      else
      {
        v316 = 0;
      }

      v211 = v328;
      sub_1AE23BB9C();
      v247 = v326;
      if (v214 == 2)
      {
        v260 = *(v210 + 16);
        v315 = *(v210 + 24);
        v248 = sub_1AE23BB7C();
        if (v248)
        {
          v261 = sub_1AE23BBAC();
          if (__OFSUB__(v260, v261))
          {
            goto LABEL_373;
          }

          v248 += v260 - v261;
        }

        v100 = __OFSUB__(v315, v260);
        v262 = &v315[-v260];
        if (v100)
        {
          goto LABEL_364;
        }

        v263 = sub_1AE23BB9C();
        if (v263 >= v262)
        {
          v161 = v262;
        }

        else
        {
          v161 = v263;
        }

        v251 = v316;
        if (!v316)
        {
          goto LABEL_382;
        }

        if (!v248)
        {
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
          goto LABEL_391;
        }
      }

      else
      {
        if (v214 != 1)
        {
          v255 = v316;
          LOWORD(__s1[0]) = v210;
          BYTE2(__s1[0]) = BYTE2(v210);
          BYTE3(__s1[0]) = BYTE3(v210);
          v161 = (v211 >> 40);
          BYTE4(__s1[0]) = v322;
          BYTE5(__s1[0]) = BYTE5(v210);
          BYTE6(__s1[0]) = BYTE6(v210);
          HIBYTE(__s1[0]) = HIBYTE(v210);
          LOWORD(__s1[1]) = v211;
          BYTE2(__s1[1]) = BYTE2(v211);
          BYTE3(__s1[1]) = BYTE3(v211);
          BYTE4(__s1[1]) = BYTE4(v211);
          BYTE5(__s1[1]) = BYTE5(v211);
          if (!v316)
          {
            goto LABEL_386;
          }

          goto LABEL_322;
        }

        if (v323 < v326)
        {
          goto LABEL_363;
        }

        v248 = sub_1AE23BB7C();
        if (v248)
        {
          v249 = sub_1AE23BBAC();
          if (__OFSUB__(v247, v249))
          {
            goto LABEL_374;
          }

          v248 += v247 - v249;
        }

        v250 = sub_1AE23BB9C();
        v161 = v318;
        if (v250 < v318)
        {
          v161 = v250;
        }

        v251 = v316;
        if (!v316)
        {
          goto LABEL_388;
        }

        if (!v248)
        {
          goto LABEL_387;
        }
      }

      if (v251 == v248)
      {
        sub_1ADE42CB8(v331, v332);
        v275 = v210;
        v276 = v328;
        goto LABEL_338;
      }

      v264 = memcmp(v251, v248, v161);
      sub_1ADE42CB8(0, v219);
      sub_1ADDCC35C(v220, v221);
      v211 = v328;
      if (!v264)
      {
        goto LABEL_333;
      }

LABEL_220:
      v216 += 4;
      if (!--v217)
      {
        goto LABEL_339;
      }
    }

    if (!v222)
    {
      __s1[0] = *(v216 - 1);
      LOWORD(__s1[1]) = v221;
      BYTE2(__s1[1]) = BYTE2(v221);
      BYTE3(__s1[1]) = BYTE3(v221);
      BYTE4(__s1[1]) = BYTE4(v221);
      BYTE5(__s1[1]) = BYTE5(v221);
      if (!v214)
      {
        goto LABEL_273;
      }

      if (v214 != 1)
      {
        goto LABEL_270;
      }

      v232 = v326;
      v233 = v323;
      if (v323 < v326)
      {
        goto LABEL_362;
      }

LABEL_301:
      sub_1ADE42C78(0, v219);
      sub_1ADDD86D8(v220, v221);
      v256 = v211 & 0x3FFFFFFFFFFFFFFFLL;
      v257 = v289;
      v258 = sub_1ADFB9F04(v232, v233, v256, __s1);
      v161 = &v321;
      v289 = v257;
      if (v257)
      {
        goto LABEL_401;
      }

      v259 = v258;
      sub_1ADE42CB8(0, v219);
      sub_1ADDCC35C(v220, v221);
      v211 = v328;
      if (v259)
      {
LABEL_333:
        sub_1ADE42CB8(v331, v332);
        v273 = v210;
        v274 = v211;
        goto LABEL_334;
      }

      goto LABEL_220;
    }

    if (v220 > v220 >> 32)
    {
      goto LABEL_355;
    }

    sub_1ADE42C78(0, *(v216 - 2));
    sub_1ADDD86D8(v220, v221);
    v238 = sub_1AE23BB7C();
    if (v238)
    {
      v239 = v238;
      v240 = sub_1AE23BBAC();
      if (__OFSUB__(v220, v240))
      {
        goto LABEL_358;
      }

      v316 = (v220 - v240 + v239);
    }

    else
    {
      v316 = 0;
    }

    v211 = v328;
    sub_1AE23BB9C();
    if (v214 != 2)
    {
      if (v214 == 1)
      {
        if (v323 < v326)
        {
          goto LABEL_365;
        }

        v252 = sub_1AE23BB7C();
        if (v252)
        {
          v253 = sub_1AE23BBAC();
          if (__OFSUB__(v326, v253))
          {
            goto LABEL_376;
          }

          v252 += v326 - v253;
        }

        v254 = sub_1AE23BB9C();
        v161 = v318;
        if (v254 < v318)
        {
          v161 = v254;
        }

        v255 = v316;
        if (!v316)
        {
          goto LABEL_385;
        }

        if (!v252)
        {
          goto LABEL_384;
        }

        if (v316 == v252)
        {
          goto LABEL_337;
        }

LABEL_331:
        v269 = v161;
        v268 = v252;
      }

      else
      {
        v255 = v316;
        LOWORD(__s1[0]) = v210;
        BYTE2(__s1[0]) = BYTE2(v210);
        BYTE3(__s1[0]) = BYTE3(v210);
        v161 = (v211 >> 40);
        BYTE4(__s1[0]) = v322;
        BYTE5(__s1[0]) = BYTE5(v210);
        BYTE6(__s1[0]) = BYTE6(v210);
        HIBYTE(__s1[0]) = HIBYTE(v210);
        LOWORD(__s1[1]) = v211;
        BYTE2(__s1[1]) = BYTE2(v211);
        BYTE3(__s1[1]) = BYTE3(v211);
        BYTE4(__s1[1]) = BYTE4(v211);
        BYTE5(__s1[1]) = BYTE5(v211);
        if (!v316)
        {
          goto LABEL_383;
        }

LABEL_322:
        v268 = __s1;
        v269 = v330;
      }

      v272 = memcmp(v255, v268, v269);
      sub_1ADE42CB8(0, v219);
      sub_1ADDCC35C(v220, v221);
      if (!v272)
      {
        goto LABEL_333;
      }

      goto LABEL_220;
    }

    v265 = *(v210 + 24);
    v315 = *(v210 + 16);
    v314 = v265;
    v252 = sub_1AE23BB7C();
    if (v252)
    {
      v266 = sub_1AE23BBAC();
      v267 = v315;
      if (__OFSUB__(v315, v266))
      {
        goto LABEL_375;
      }

      v252 += &v315[-v266];
    }

    else
    {
      v267 = v315;
    }

    v270 = (v314 - v267);
    if (__OFSUB__(v314, v267))
    {
      goto LABEL_366;
    }

    v271 = sub_1AE23BB9C();
    if (v271 >= v270)
    {
      v161 = v270;
    }

    else
    {
      v161 = v271;
    }

    v255 = v316;
    if (!v316)
    {
      goto LABEL_390;
    }

    if (!v252)
    {
      goto LABEL_389;
    }

    v211 = v328;
    if (v316 != v252)
    {
      goto LABEL_331;
    }

LABEL_337:
    sub_1ADE42CB8(v331, v332);
    v275 = v210;
    v276 = v211;
LABEL_338:
    sub_1ADDCC35C(v275, v276);
    sub_1ADE42CB8(0, v219);
    v273 = v220;
    v274 = v221;
LABEL_334:
    sub_1ADDCC35C(v273, v274);
    v204 = v327;
    v205 = v317;
    if (v327 != v319)
    {
      continue;
    }

    break;
  }
}