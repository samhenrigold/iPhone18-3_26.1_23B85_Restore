unint64_t sub_188512534()
{
  result = qword_1EA90E788;
  if (!qword_1EA90E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E788);
  }

  return result;
}

unint64_t sub_18851258C()
{
  result = qword_1EA90E790;
  if (!qword_1EA90E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E790);
  }

  return result;
}

unint64_t sub_1885125E4()
{
  result = qword_1EA90E798;
  if (!qword_1EA90E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E798);
  }

  return result;
}

unint64_t sub_18851263C()
{
  result = qword_1EA90E7A0;
  if (!qword_1EA90E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E7A0);
  }

  return result;
}

uint64_t sub_1885126E8@<X0>(uint64_t a1@<X8>)
{

  return sub_188501174(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_188512708(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

void sub_188512720()
{

  _StringGuts.grow(_:)(25);
}

double sub_188512740()
{

  return result;
}

uint64_t sub_188512760()
{
  sub_1883F7120();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1885127C0(void *a1)
{
  v3 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_188514848();
  }

  v7 = *a1;
  v8 = *(v4 + 80);
  v9 = (v8 + 40) & ~v8;
  sub_1885151D4((*a1 + 16), *a1 + v9);
  if (!v1 && (v10 & 1) != 0)
  {
    v11 = *(v7 + 24);
    if ((v11 & 0x8000000000000000) == 0)
    {

      if (v11)
      {
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v12 + 16) = v11;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v13 = (v8 + 32) & ~v8;
      v25[1] = v11;
      v26 = 0;
      v25[0] = v12 + v13;
      sub_188515294((v7 + 16), v7 + v9, v25, &v26);
      if (v11 < v26)
      {
        goto LABEL_30;
      }

      *(v12 + 16) = v26;

      v27 = v12;
      sub_188512A30(&v27);
      v14 = v27;
      v24 = *(v7 + 24);
      if (v24 < 0)
      {
        goto LABEL_31;
      }

      v15 = v13;
      v16 = 0;
      v17 = *(v27 + 16);
      v22 = v27 + v15;
      v23 = v17;
      while (1)
      {
        if (v24 == v16 || v23 == v16)
        {

          return;
        }

        if (v16 >= *(v14 + 16))
        {
          break;
        }

        v19 = *(v4 + 72);
        sub_18840BC64(v22 + v19 * v16, v6);
        if (v16 >= *(v7 + 24))
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188514848();
        }

        v7 = *a1;
        v20 = *(*a1 + 32);
        if ((v16 + v20) >= *(*a1 + 16))
        {
          v21 = *(*a1 + 16);
        }

        else
        {
          v21 = 0;
        }

        sub_1885153D4(v6, v7 + v9 + (v16 + v20 - v21) * v19);
        sub_18840BD84(v6);
        ++v16;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

void sub_188512A30(uint64_t *a1)
{
  v2 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1885143E0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_188513178(v6);
  *a1 = v3;
}

void sub_188512AD8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  if (a1)
  {
    v9 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = a3;

    sub_188453610();
  }
}

uint64_t sub_188512BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_188512BEC, a4, 0);
}

uint64_t sub_188512BEC()
{
  sub_1883F7120();
  sub_188512C48(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_188512C48(uint64_t a1)
{
  v2 = v1;
  v24 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - v8);
  swift_beginAccess();
  v10 = *(v2 + 136);

  for (i = 0; ; ++i)
  {
    v13 = v10[3];
    if (i == v13)
    {
    }

    if (i >= v13)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v14 = v10[4];
    v15 = i + v14 >= v10[2] ? v10[2] : 0;
    v16 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v17 = *(v4 + 72);
    sub_18840BC64(v10 + v16 + (i + v14 - v15) * v17, v9);
    v18 = *v9;
    result = sub_18840BD84(v9);
    if (v18 == a1)
    {
      break;
    }
  }

  swift_beginAccess();
  result = *(v2 + 136);
  if (i >= *(result + 24))
  {
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_188514848();
  }

  v19 = *(v2 + 136);
  if (i >= v19[3])
  {
    goto LABEL_21;
  }

  v20 = v19[4];
  if (v20 + i >= v19[2])
  {
    v21 = v19[2];
  }

  else
  {
    v21 = 0;
  }

  sub_18840BC64(v19 + v16 + (v20 - v21 + i) * v17, v6);

  sub_188514940(i, i + 1, v19 + 2, v19 + v16);
  swift_endAccess();

  type metadata accessor for CancellationError();
  sub_18840BA1C(&qword_1EA90C1E0, 255, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v22 = swift_allocError();
  CancellationError.init()();
  v25 = v22;
  sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  CheckedContinuation.resume(throwing:)();
  return sub_18840BD84(v6);
}

uint64_t sub_188512F14()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

_BYTE *storeEnumTagSinglePayload for CKAsyncSerialQueue.OrderingPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
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

unint64_t sub_18851302C()
{
  result = qword_1EA90E7F0;
  if (!qword_1EA90E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E7F0);
  }

  return result;
}

uint64_t sub_18851308C@<X0>(uint64_t *a3@<X8>)
{
  result = Identifiable<>.id.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1885130B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18840F9FC;

  return sub_188512BCC(a1, v4, v5, v7, v6);
}

void sub_188513178(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1885134A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1885132A8(0, v2, 1, a1);
  }
}

void sub_1885132A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v31 = v20;
      v32 = a3;
      v29 = v23;
      v30 = v22;
      do
      {
        sub_18840BC64(v23, v17);
        sub_18840BC64(v20, v13);
        v24 = static TaskPriority.> infix(_:_:)();
        sub_18840BD84(v13);
        sub_18840BD84(v17);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        sub_18840C23C(v23, v10);
        swift_arrayInitWithTakeFrontToBack();
        sub_18840C23C(v10, v20);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1885134A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v100 = a1;
  v114 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  v108 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v98 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v98 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - v15;
  v110 = a3;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_98:
    a3 = *v100;
    if (!*v100)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v91 = v19 + 16;
      v92 = *(v19 + 2);
      for (i = v19; v92 >= 2; v19 = i)
      {
        if (!*v110)
        {
          goto LABEL_136;
        }

        v93 = &v19[16 * v92];
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_188513D00(*v110 + *(v108 + 72) * *v93, *v110 + *(v108 + 72) * *v95, *v110 + *(v108 + 72) * v96, a3);
        if (v5)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_124;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_125;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_126;
        }

        v92 = *v91 - 1;
        memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
      }

LABEL_108:

      return;
    }

LABEL_133:
    v19 = sub_188514144();
    goto LABEL_100;
  }

  v99 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v105 = &v98 - v15;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v101 = v18;
    if (v18 + 1 < v17)
    {
      v22 = *v110;
      v23 = *(v108 + 72);
      i = v17;
      v112 = v18 + 1;
      a3 = v18;
      v24 = v22 + v23 * v21;
      v25 = v22;
      v107 = v22;
      sub_18840BC64(v24, v16);
      sub_18840BC64(v25 + v23 * a3, v13);
      v26 = static TaskPriority.> infix(_:_:)();
      sub_18840BD84(v13);
      sub_18840BD84(v16);
      v27 = i;
      v28 = a3 + 2;
      v109 = v23;
      v29 = v107 + v23 * (a3 + 2);
      while (1)
      {
        v30 = v28;
        if (++v112 >= v27)
        {
          break;
        }

        sub_18840BC64(v29, v16);
        sub_18840BC64(v24, v13);
        a3 = static TaskPriority.> infix(_:_:)() & 1;
        sub_18840BD84(v13);
        sub_18840BD84(v16);
        v29 += v109;
        v24 += v109;
        v28 = v30 + 1;
        v27 = i;
        if ((v26 & 1) != a3)
        {
          if (v26)
          {
            goto LABEL_8;
          }

LABEL_28:
          v21 = v112;
          v20 = v101;
          goto LABEL_29;
        }
      }

      v112 = v27;
      if ((v26 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_8:
      v21 = v112;
      v20 = v101;
      if (v112 < v101)
      {
        goto LABEL_130;
      }

      if (v101 < v112)
      {
        i = v19;
        v98 = v5;
        if (v27 >= v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v27;
        }

        v32 = v101;
        v33 = v109 * (v31 - 1);
        v34 = v109 * v31;
        v35 = v101 * v109;
        do
        {
          if (v32 != --v21)
          {
            a3 = *v110;
            if (!*v110)
            {
              goto LABEL_137;
            }

            sub_18840C23C(a3 + v35, v104);
            v36 = v35 < v33 || a3 + v35 >= a3 + v34;
            if (v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_18840C23C(v104, a3 + v33);
          }

          ++v32;
          v33 -= v109;
          v34 -= v109;
          v35 += v109;
        }

        while (v32 < v21);
        v5 = v98;
        v19 = i;
        goto LABEL_28;
      }
    }

LABEL_29:
    v37 = v110[1];
    if (v21 < v37)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_129;
      }

      if (v21 - v20 < v99)
      {
        break;
      }
    }

LABEL_45:
    if (v21 < v20)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_188476DA8();
      v19 = v89;
    }

    a3 = *(v19 + 2);
    v48 = a3 + 1;
    if (a3 >= *(v19 + 3) >> 1)
    {
      sub_188476DA8();
      v19 = v90;
    }

    *(v19 + 2) = v48;
    v49 = v19 + 32;
    v50 = &v19[16 * a3 + 32];
    v51 = v112;
    *v50 = v101;
    *(v50 + 1) = v51;
    v109 = *v100;
    if (!v109)
    {
      goto LABEL_138;
    }

    if (a3)
    {
      i = v19;
      while (1)
      {
        v52 = v48 - 1;
        v53 = &v49[16 * v48 - 16];
        v54 = &v19[16 * v48];
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v55 = *(v19 + 4);
          v56 = *(v19 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_66:
          if (v58)
          {
            goto LABEL_115;
          }

          v70 = *v54;
          v69 = *(v54 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_118;
          }

          v74 = *(v53 + 1);
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_123;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v48 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v48 < 2)
        {
          goto LABEL_117;
        }

        v77 = *v54;
        v76 = *(v54 + 1);
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_81:
        if (v73)
        {
          goto LABEL_120;
        }

        v79 = *v53;
        v78 = *(v53 + 1);
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_122;
        }

        if (v80 < v72)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v52 - 1 >= v48)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v110)
        {
          goto LABEL_135;
        }

        v84 = &v49[16 * v52 - 16];
        v85 = *v84;
        a3 = v52;
        v86 = &v49[16 * v52];
        v87 = *(v86 + 1);
        sub_188513D00(*v110 + *(v108 + 72) * *v84, *v110 + *(v108 + 72) * *v86, *v110 + *(v108 + 72) * v87, v109);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v87 < v85)
        {
          goto LABEL_110;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_111;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        if (a3 >= v5)
        {
          goto LABEL_112;
        }

        v48 = v5 - 1;
        memmove(v86, v86 + 16, 16 * (v5 - 1 - a3));
        v19 = i;
        *(i + 16) = v5 - 1;
        v88 = v5 > 2;
        v5 = 0;
        v16 = v105;
        if (!v88)
        {
          goto LABEL_95;
        }
      }

      v59 = &v49[16 * v48];
      v60 = *(v59 - 8);
      v61 = *(v59 - 7);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_113;
      }

      v64 = *(v59 - 6);
      v63 = *(v59 - 5);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_114;
      }

      v66 = *(v54 + 1);
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_116;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_119;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = *(v53 + 1);
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_127;
        }

        if (v57 < v83)
        {
          v52 = v48 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v17 = v110[1];
    v18 = v112;
    if (v112 >= v17)
    {
      goto LABEL_98;
    }
  }

  v38 = v20 + v99;
  if (__OFADD__(v20, v99))
  {
    goto LABEL_131;
  }

  if (v38 >= v37)
  {
    v38 = v110[1];
  }

  if (v38 < v20)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v21 == v38)
  {
    goto LABEL_45;
  }

  i = v19;
  v98 = v5;
  a3 = *v110;
  v39 = *(v108 + 72);
  v40 = *v110 + v39 * (v21 - 1);
  v41 = -v39;
  v42 = v20 - v21;
  v102 = v39;
  v103 = v38;
  v43 = a3 + v21 * v39;
LABEL_38:
  v112 = v21;
  v106 = v43;
  v107 = v42;
  v109 = v40;
  v44 = v40;
  while (1)
  {
    sub_18840BC64(v43, v16);
    sub_18840BC64(v44, v13);
    v45 = static TaskPriority.> infix(_:_:)();
    sub_18840BD84(v13);
    sub_18840BD84(v16);
    if ((v45 & 1) == 0)
    {
LABEL_43:
      v21 = v112 + 1;
      v40 = v109 + v102;
      v42 = v107 - 1;
      v43 = v106 + v102;
      if (v112 + 1 == v103)
      {
        v21 = v103;
        v5 = v98;
        v19 = i;
        v20 = v101;
        goto LABEL_45;
      }

      goto LABEL_38;
    }

    if (!a3)
    {
      break;
    }

    v46 = v113;
    sub_18840C23C(v43, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_18840C23C(v46, v44);
    v44 += v41;
    v43 += v41;
    v36 = __CFADD__(v42++, 1);
    if (v36)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_188513D00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  MEMORY[0x1EEE9AC00](v49);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v43 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v52 = a1;
  v51 = a4;
  v19 = v17 / v15;
  v43[1] = v4;
  if ((a2 - a1) / v15 >= v17 / v15)
  {
    sub_1884776C4(a2, v17 / v15, a4);
    v25 = a4 + v19 * v15;
    v26 = -v15;
    v27 = v25;
    v28 = a3;
    v46 = v26;
    v47 = a4;
    v45 = a1;
LABEL_37:
    v29 = a2 + v26;
    v30 = v28;
    v43[0] = v27;
    v31 = v26;
    v48 = a2 + v26;
    while (1)
    {
      if (v25 <= a4)
      {
        v52 = a2;
        v50 = v27;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v44 = v27;
      v32 = v30 + v31;
      v33 = v25 + v31;
      v34 = v29;
      v35 = v25;
      sub_18840BC64(v25 + v31, v13);
      sub_18840BC64(v34, v10);
      v36 = static TaskPriority.> infix(_:_:)();
      v37 = v10;
      v38 = v36;
      v39 = v37;
      sub_18840BD84(v37);
      sub_18840BD84(v13);
      if (v38)
      {
        v43[0] = v35;
        v41 = v30 < a2 || v32 >= a2;
        v28 = v30 + v31;
        if (v41)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          a1 = v45;
          v10 = v39;
          v26 = v46;
          a4 = v47;
          v25 = v43[0];
        }

        else
        {
          a1 = v45;
          v27 = v44;
          v16 = v30 == a2;
          a2 = v48;
          v10 = v39;
          v26 = v46;
          a4 = v47;
          v25 = v43[0];
          if (!v16)
          {
            a2 = v48;
            v42 = v44;
            swift_arrayInitWithTakeBackToFront();
            v25 = v43[0];
            v27 = v42;
          }
        }

        goto LABEL_37;
      }

      if (v30 < v35 || v32 >= v35)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 += v31;
        v25 = v33;
        v27 = v33;
        v10 = v39;
        v31 = v46;
        a4 = v47;
        v29 = v48;
        a1 = v45;
      }

      else
      {
        v27 = v33;
        v16 = v35 == v30;
        v30 += v31;
        v25 = v33;
        v10 = v39;
        v31 = v46;
        a4 = v47;
        v29 = v48;
        a1 = v45;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v29 = v48;
          v30 = v32;
          v25 = v33;
          v27 = v33;
        }
      }
    }

    v52 = a2;
    v50 = v43[0];
  }

  else
  {
    sub_1884776C4(a1, (a2 - a1) / v15, a4);
    v20 = a4 + (a2 - a1) / v15 * v15;
    v50 = v20;
    while (a4 < v20 && a2 < a3)
    {
      sub_18840BC64(a2, v13);
      sub_18840BC64(a4, v10);
      v22 = static TaskPriority.> infix(_:_:)();
      sub_18840BD84(v10);
      sub_18840BD84(v13);
      if (v22)
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v51 = a4 + v15;
        a4 += v15;
      }

      a1 += v15;
      v52 = a1;
    }
  }

LABEL_59:
  sub_18851415C(&v52, &v51, &v50);
}

uint64_t sub_18851415C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_18851423C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_188514268(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D690, &qword_1886F8660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1885143F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 < 0)
  {
LABEL_7:
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    v4 = __OFADD__(result, *a3);
    result += *a3;
    if (!v4)
    {
      return result;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v4 = __OFSUB__(result, *a3);
  if (result >= *a3)
  {
    result -= *a3;
    if (v4)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  return result;
}

void sub_188514434(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext(0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v9)
  {
    v12 = v5 < v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 72);
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 >= 1)
  {
    if (a4)
    {
      v15 = a4 + v13 * v4;
      v16 = a2;
      sub_1884776C4(v15, v10, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
  v16 = a2;
LABEL_16:
  if (v5 < v7 && v9 >= 1)
  {
    if (v14)
    {
      sub_1884776C4(v14, v9, v16 + v13 * v10);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

void *sub_188514554@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_188514614(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_188514738(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_188514848()
{
  v1 = *v0;
  v2 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  sub_18844E6FC(&qword_1EA90E7F8, &qword_1886FE298);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_188514738(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_188514940(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  sub_188514A24(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
    swift_arrayDestroy();
  }

  return sub_188514B04(a1, a2, a3, a4);
}

uint64_t sub_188514A24@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3[2];
  v7 = v6 + result;
  v8 = *a3;
  if (v6 + result >= *a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + a2;
  if (v10 >= v8)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v7 - v9;
    v15 = v10 - v11;
    if (v12)
    {
      v16 = v14 < v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v18 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
    v20 = *(v18 - 8);
    result = v18 - 8;
    v19 = v20;
    if (v17 == 1)
    {
      v21 = 0;
      v15 = 0;
LABEL_18:
      *a5 = a4 + *(v19 + 72) * v14;
      *(a5 + 8) = v12;
      *(a5 + 16) = v21;
      *(a5 + 24) = v15;
      *(a5 + 32) = v17;
      return result;
    }

    v12 = v8 - v14;
    if (!__OFSUB__(v8, v14))
    {
      v21 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188514B04(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v4 < 1)
  {
    return result;
  }

  v6 = result;
  v8 = a3[1];
  v7 = a3[2];
  v9 = *a3;
  if (v7 + result >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  if (v7 + a2 >= v9)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_85;
  }

  v14 = v7 + result - v10;
  v15 = v7 + a2 - v11;
  result = a3[2];
  if (v12 > v6)
  {
    result = sub_1885143F4(result, v4, a3);
    v12 = result;
    if (!v6)
    {
      goto LABEL_69;
    }

    if (v15 <= 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = v15;
    }

    if (v14 <= 0)
    {
      v17 = v9;
    }

    else
    {
      v17 = v14;
    }

    if (v7 >= v17)
    {
      if (v16 < result)
      {
        if (v14 > 0)
        {
          v32 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
          sub_1884776C4(a4, v14, a4 + *(*(v32 - 8) + 72) * v4);
          sub_1885143F4(0, v14, a3);
          sub_1885143F4(v4, v14, a3);
        }

        v14 = *a3 - v4;
        v33 = *(*(type metadata accessor for CKAsyncSerialQueue.WaitContext(0) - 8) + 72);
        sub_1884776C4(a4 + v33 * v14, v4, a4);
        sub_1885143F4(v14, v4, a3);
        result = sub_1885143F4(0, v4, a3);
        v19 = __OFSUB__(v6, v15);
        v6 -= v15;
        if (v19)
        {
          goto LABEL_88;
        }

        if (v6 < 1)
        {
          goto LABEL_69;
        }

        v14 = a3[2];
        v34 = a4 + v33 * v12;
        v35 = a4 + v14 * v33;
        goto LABEL_67;
      }

      if (__OFSUB__(0, v14))
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (v14 > 0)
      {
        v15 -= v14;
        v44 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
        sub_1884776C4(a4, v14, a4 + *(*(v44 - 8) + 72) * v15);
        sub_1885143F4(0, v14, a3);
        result = sub_1885143F4(v15, v14, a3);
      }

      v19 = __OFSUB__(v6, v14);
      v6 -= v14;
      if (v19)
      {
        goto LABEL_92;
      }

      goto LABEL_65;
    }

    if (v16 >= result)
    {
      if (v6 > 0)
      {
        v42 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
        sub_1884776C4(a4 + *(*(v42 - 8) + 72) * v7, v6, a4 + *(*(v42 - 8) + 72) * v12);
        v43 = v7;
LABEL_68:
        sub_1885143F4(v43, v6, a3);
        result = sub_1885143F4(v12, v6, a3);
        goto LABEL_69;
      }

      goto LABEL_69;
    }

    if (v15 > 0)
    {
      v14 = v9 - v4;
      v18 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
      sub_1884776C4(a4 + *(*(v18 - 8) + 72) * (v9 - v4), v15, a4);
      sub_1885143F4(v9 - v4, v15, a3);
      result = sub_1885143F4(0, v15, a3);
    }

    v19 = __OFSUB__(v6, v15);
    v6 -= v15;
    if (!v19)
    {
LABEL_65:
      if (v6 >= 1)
      {
        v14 = a3[2];
        v45 = *(*(type metadata accessor for CKAsyncSerialQueue.WaitContext(0) - 8) + 72);
        v34 = a4 + v45 * v12;
        v35 = a4 + v45 * v14;
LABEL_67:
        sub_1884776C4(v35, v6, v34);
        v43 = v14;
        goto LABEL_68;
      }

LABEL_69:
      a3[2] = v12;
      v46 = a3[1];
      v19 = __OFSUB__(v46, v4);
      v47 = v46 - v4;
      if (!v19)
      {
        goto LABEL_82;
      }

      __break(1u);
      goto LABEL_72;
    }

    __break(1u);
  }

  v52 = a4;
  result = sub_1885143F4(result, v8, a3);
  if (__OFSUB__(v8, v4))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v20 = v8 - v4 + v7;
  if (v20 >= v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  if (v12)
  {
    v22 = result;
    v23 = v20 - v21;
    if (v20 - v21 <= 0)
    {
      v24 = v9;
    }

    else
    {
      v24 = v20 - v21;
    }

    if (result <= 0)
    {
      v25 = v9;
    }

    else
    {
      v25 = result;
    }

    if (v15 >= v25)
    {
      v36 = v9 - v15;
      v37 = __OFSUB__(v9, v15);
      if (v24 >= v14)
      {
        if (v37)
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          return result;
        }

        if (v36 > 0)
        {
          v49 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
          sub_1884776C4(v52 + *(*(v49 - 8) + 72) * v15, v36, v52 + *(*(v49 - 8) + 72) * v14);
          sub_1885143F4(v15, v36, a3);
          result = sub_1885143F4(v14, v36, a3);
          v14 = result;
        }

        if (v22 >= 1)
        {
          v50 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
          sub_1884776C4(v52, v22, v52 + *(*(v50 - 8) + 72) * v14);
          sub_1885143F4(0, v22, a3);
          v30 = v14;
          v31 = v22;
          goto LABEL_79;
        }
      }

      else
      {
        if (v37)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (v36 > 0)
        {
          v38 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
          sub_1884776C4(v52 + *(*(v38 - 8) + 72) * v15, v9 - v15, v52 + *(*(v38 - 8) + 72) * v14);
          sub_1885143F4(v15, v9 - v15, a3);
          v14 = sub_1885143F4(v14, v9 - v15, a3);
        }

        v39 = *(*(type metadata accessor for CKAsyncSerialQueue.WaitContext(0) - 8) + 72);
        sub_1884776C4(v52, v4, v52 + v39 * v14);
        v40 = sub_1885143F4(0, v4, a3);
        result = sub_1885143F4(v14, v4, a3);
        if (v23 >= 1)
        {
          sub_1884776C4(v52 + v40 * v39, v23, v52);
          sub_1885143F4(v40, v23, a3);
          v30 = 0;
          v31 = v23;
          v41 = a3;
LABEL_80:
          result = sub_1885143F4(v30, v31, v41);
        }
      }
    }

    else
    {
      if (v24 >= v14)
      {
LABEL_72:
        if (v12 <= 0)
        {
          goto LABEL_81;
        }

        v48 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
        sub_1884776C4(v52 + *(*(v48 - 8) + 72) * v15, v12, v52 + *(*(v48 - 8) + 72) * v14);
        sub_1885143F4(v15, v12, a3);
        v30 = v14;
        v31 = v12;
        goto LABEL_79;
      }

      v26 = v9 - v14;
      if (__OFSUB__(v9, v14))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v26 > 0)
      {
        v27 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
        sub_1884776C4(v52 + *(*(v27 - 8) + 72) * v15, v26, v52 + *(*(v27 - 8) + 72) * v14);
        v15 = sub_1885143F4(v15, v26, a3);
        result = sub_1885143F4(v14, v26, a3);
      }

      v19 = __OFSUB__(v12, v26);
      v28 = v12 - v26;
      if (v19)
      {
        goto LABEL_94;
      }

      if (v28 >= 1)
      {
        v29 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
        sub_1884776C4(v52 + *(*(v29 - 8) + 72) * v15, v28, v52);
        sub_1885143F4(v15, v28, a3);
        v30 = 0;
        v31 = v28;
LABEL_79:
        v41 = a3;
        goto LABEL_80;
      }
    }
  }

LABEL_81:
  v51 = a3[1];
  v19 = __OFSUB__(v51, v4);
  v47 = v51 - v4;
  if (v19)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_82:
  a3[1] = v47;
  return result;
}

void sub_1885151D4(uint64_t *result, uint64_t a2)
{
  v2 = result[2];
  v3 = result[1] + v2;
  if (*result >= v3)
  {
    if (v3 < v2)
    {
      __break(1u);
    }

    else
    {
      v5 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext(0) - 8);
      if (!__OFSUB__(v3, v2))
      {
        v6[0] = a2 + *(v5 + 72) * v2;
        v6[1] = v3 - v2;
        sub_188513178(v6);
        return;
      }
    }

    __break(1u);
  }
}

void *sub_188515294(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_188514554(a1, a2, &v12);
  v7 = v13;
  if (v13 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    if (v13)
    {
      type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
      result = swift_arrayInitWithCopy();
    }
  }

  v8 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_20;
  }

  *a4 = v8;
  if (v16)
  {
    return result;
  }

  v9 = v15;
  if (__OFADD__(v7, v15))
  {
    goto LABEL_21;
  }

  v10 = v15;
  if (v7 + v15 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = v14;
  if (*a3)
  {
    result = (type metadata accessor for CKAsyncSerialQueue.WaitContext(0) - 8);
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else if (!v14)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    if (v10 < v9)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
    result = swift_arrayInitWithCopy();
    v8 = *a4;
  }

LABEL_16:
  if (__OFADD__(v8, v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *a4 = v8 + v9;
  return result;
}

uint64_t sub_1885153D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t static __CKLogSubsystem.name.getter()
{
  if (qword_1ED4B5CE0 != -1)
  {
    sub_1883F7604(&qword_1ED4B5CE0);
  }

  v0 = qword_1ED4B5CE8;

  return v0;
}

uint64_t sub_188515698()
{
  v0 = type metadata accessor for Logger();
  sub_188420F44(v0, qword_1EA90C238);
  sub_1883FDE5C(v0, qword_1EA90C238);
  if (qword_1ED4B5CE0 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1885157E0()
{
  v0 = type metadata accessor for Logger();
  sub_188420F44(v0, qword_1EA90E8E8);
  sub_1883FDE5C(v0, qword_1EA90E8E8);
  if (qword_1ED4B5CE0 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_18851597C()
{
  v0 = type metadata accessor for Logger();
  sub_188420F44(v0, qword_1EA90E930);
  sub_1883FDE5C(v0, qword_1EA90E930);
  if (qword_1ED4B5CE0 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

_BYTE *storeEnumTagSinglePayload for __CKLogSubsystem(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CKPersonaType.description.getter(uint64_t a1)
{
  v1 = CKPersonaTypeDescription(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t CKPersona.isDataSeparated.getter()
{
  v1 = [v0 isDataSeparated];
  if (v1 + 1 < 3)
  {
    return 0x10002u >> (8 * (v1 + 1));
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "CloudKit/CKPersona.swift", 24, 2, 86);
  __break(1u);
  return result;
}

unint64_t sub_188515C48()
{
  result = qword_1EA90E960;
  if (!qword_1EA90E960)
  {
    sub_18844E798(&qword_1EA90E968, &qword_1886FE2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E960);
  }

  return result;
}

uint64_t sub_188515CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_188515D70;

  return (sub_188515E6C)(a1, a2, a3);
}

uint64_t sub_188515D70(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_188515EB4(uint64_t a1, uint64_t a2)
{
  v10 = sub_18844E6FC(&qword_1EA90E970, &unk_1886FE3F0);
  v11 = sub_188479FD0(&qword_1EA90E978, &qword_1EA90E970, &unk_1886FE3F0, MEMORY[0x1E6969D60]);
  v9[0] = a1;
  v9[1] = a2;
  v4 = sub_188400B68(v9, v10);
  if (*v4)
  {
    v5 = v4[1] + *v4;
  }

  else
  {
    v5 = 0;
  }

  sub_18851749C(*v4, v5, &v8);
  v6 = v8;
  sub_1883FE944(v9);
  return v6;
}

uint64_t sub_188515F84(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for SHA256Digest();
  v9 = v3;
  v10 = sub_188518620(&qword_1EA90E980, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
  v4 = sub_188403664(v8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v4, a1, v3);
  sub_188400B68(v8, v9);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_1883FE944(v8);
  (*(v5 + 8))(a1, v3);
  return v7;
}

id sub_1885160C4()
{
  v6 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v6);
  v1 = v0;
  v5 = 0;
  v2 = [v0 CKMarkFilePurgeable_];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_188516178(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (String.count.getter())
  {
    type metadata accessor for CKError(0);
    *&v23 = 1;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_1883F9FD4();
    sub_188518620(v18, v19, &unk_1886F6978);
    _BridgedStoredNSError.init(_:userInfo:)();
    return swift_willThrow();
  }

  else
  {
    v2 = String.count.getter();
    v23 = xmmword_1886F7310;
    if (v2 < -1)
    {
      __break(1u);
    }

    v3 = 0;
    v4 = v2 / 2;
    if (v2 / 2)
    {
      while (1)
      {
        v5 = String.index(_:offsetBy:)();
        if (String.index(_:offsetBy:)() >> 14 < v5 >> 14)
        {
          break;
        }

        v6 = String.subscript.getter();
        v10 = v9;
        if (!((v6 ^ v7) >> 14))
        {
          goto LABEL_13;
        }

        v11 = v6;
        v12 = v7;
        v13 = v8;
        v14 = sub_1885180E4(v6, v7, v8, v9, 16);
        if ((v14 & 0x10000) != 0)
        {
          LOWORD(v14) = sub_18851769C(v11, v12, v13, v10, 16);
        }

        v15 = v14;

        if ((v15 & 0x100) != 0)
        {
          goto LABEL_14;
        }

        v16 = sub_18844E6FC(&qword_1EA90D2C0, &qword_1886F73F8);
        v22[3] = v16;
        v22[4] = sub_188479FD0(&qword_1EA90D2C8, &qword_1EA90D2C0, &qword_1886F73F8, MEMORY[0x1E696A0B0]);
        LOBYTE(v22[0]) = v15;
        sub_188400B68(v22, v16);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_1883FE944(v22);
        v3 += 2;
        if (!--v4)
        {
          return v23;
        }
      }

      __break(1u);
LABEL_13:

LABEL_14:
      type metadata accessor for CKError(0);
      sub_188498E9C(MEMORY[0x1E69E7CC0]);
      sub_1883F9FD4();
      sub_188518620(v20, v21, &unk_1886F6978);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      return sub_188423CCC(v23, *(&v23 + 1));
    }

    else
    {
      return v23;
    }
  }
}

BOOL sub_1885164AC(uint64_t a1)
{
  sub_1883F70DC();
  MEMORY[0x1EEE9AC00](v1);
  sub_1883F7100();
  (*(v4 + 16))(v3 - v2);
  type metadata accessor for CKError(0);
  result = 0;
  if (swift_dynamicCast())
  {
    sub_1883F9FD4();
    sub_188518620(v5, v6, &unk_1886F6978);
    _BridgedStoredNSError.code.getter();

    if (v8 == 2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t CKCheckedUnsafeObjectTransfer.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CKCheckedUnsafeObjectTransfer.init(_:)(a1);
  return v2;
}

uint64_t CKCheckedUnsafeObjectTransfer.extractValue()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F8844();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18[-v13];
  v15 = *(v3 + 88);
  sub_1883F8FD0();
  (*(v7 + 16))(v14, v1 + v15, v5);
  if (sub_1883F971C(v14, 1, v4) == 1)
  {
    result = (*(v7 + 8))(v14, v5);
    __break(1u);
  }

  else
  {
    sub_1883F7930();
    (*(v16 + 32))(a1, v14, v4);
    sub_1883F90F4(v11, 1, 1, v4);
    swift_beginAccess();
    (*(v7 + 40))(v1 + v15, v11, v5);
    return swift_endAccess();
  }

  return result;
}

Swift::String __swiftcall Data.ckLowercaseHexStringWithoutSpaces()()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa CKLowercaseHexStringWithoutSpaces];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.ckLowercaseHexStringWithoutSpaces()()
{
  v0 = type metadata accessor for SHA256();
  sub_1883F70DC();
  v46 = v1;
  MEMORY[0x1EEE9AC00](v2);
  sub_1883F7100();
  v5 = v4 - v3;
  type metadata accessor for SHA256Digest();
  sub_1883F70DC();
  v48 = v7;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F8844();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v45 - v12;
  v13 = type metadata accessor for String.Encoding();
  sub_1883F70DC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1883F7100();
  v19 = v18 - v17;
  String.lowercased()();
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v21 = v20;

  v22 = (*(v15 + 8))(v19, v13);
  if (v21 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_188518620(&qword_1EA90D2B8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    dispatch thunk of HashFunction.init()();
    v24 = sub_1884055F0();
    sub_188423C74(v24, v25);
    v26 = sub_1884055F0();
    sub_188517514(v26, v27);
    v28 = sub_1884055F0();
    sub_18841BA74(v28, v29);
    v30 = v47;
    dispatch thunk of HashFunction.finalize()();
    (*(v46 + 8))(v5, v0);
    v32 = v48;
    v31 = v49;
    v33.n128_f64[0] = (*(v48 + 16))(v10, v30, v49);
    v34 = sub_188515F84(v10, v33);
    v36 = v35;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_188423CCC(v34, v36);
    v38 = [(objc_class *)isa CKLowercaseHexStringWithoutSpaces];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_1884055F0();
    sub_18841BA74(v42, v43);
    (*(v32 + 8))(v30, v31);
    v22 = v39;
    v23 = v41;
  }

  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

os_activity_t CKActivityCreate(_:dso:)@<X0>(const char *a1@<X0>, char a2@<W2>, void *a3@<X3>, unint64_t a4@<X8>)
{
  if (a2)
  {
    a4 = a1 >> 32;
    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_24;
      }

      a4 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v8 = a1 + 1;
          goto LABEL_12;
        }

LABEL_17:
        v10 = (a1 & 0x3F) << 8;
        v11 = (a1 >> 6) + v10 + 33217;
        v12 = (v10 | (a1 >> 6) & 0x3F) << 8;
        v13 = (a1 >> 18) + ((v12 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v14 = (a1 >> 12) + v12 + 8487393;
        if (a4)
        {
          v8 = v13;
        }

        else
        {
          v8 = v14;
        }

        if (a1 < 0x800)
        {
          v8 = v11;
        }

LABEL_12:
        *description = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v8) & 0x18)));
        if (a3)
        {
          v9 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
          return _os_activity_create(a3, description, v9, OS_ACTIVITY_FLAG_DEFAULT);
        }

        goto LABEL_24;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_24:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "CloudKit/CKUtilities.swift", 26, 2, 58);
    __break(1u);
    return result;
  }

  v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return _os_activity_create(a3, a1, v6, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t CKCheckedUnsafeObjectTransfer.__allocating_init()()
{
  v0 = swift_allocObject();
  CKCheckedUnsafeObjectTransfer.init()();
  return v0;
}

uint64_t *CKCheckedUnsafeObjectTransfer.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *(v3 + 88);
  sub_1883F90F4(v1 + v11, 1, 1, v4);
  sub_1883F7930();
  (*(v12 + 32))(v10, a1, v4);
  sub_1883F90F4(v10, 0, 1, v4);
  swift_beginAccess();
  (*(v7 + 40))(v1 + v11, v10, v5);
  swift_endAccess();
  return v1;
}

char *CKCheckedUnsafeObjectTransfer.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  sub_1883F70DC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *(v1 + 88);
  sub_1883F8FD0();
  (*(v5 + 16))(v8, &v0[v9], v3);
  LODWORD(v1) = sub_1883F971C(v8, 1, v2);
  v10 = *(v5 + 8);
  result = v10(v8, v3);
  if (v1 == 1)
  {
    v10(&v0[v9], v3);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKCheckedUnsafeObjectTransfer.setValue(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F8844();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18[-v13];
  v15 = *(v3 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v14, v1 + v15, v5);
  LODWORD(v3) = sub_1883F971C(v14, 1, v4);
  result = (*(v7 + 8))(v14, v5);
  if (v3 == 1)
  {
    sub_1883F7930();
    (*(v17 + 16))(v11, a1, v4);
    sub_1883F90F4(v11, 0, 1, v4);
    swift_beginAccess();
    (*(v7 + 40))(v1 + v15, v11, v5);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_188517278(uint64_t a1, uint64_t a2)
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

  sub_18844E6FC(&qword_1EA90E358, qword_1886FE400);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1885172E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SHA256();
  sub_188518620(&qword_1EA90D2B8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1885173BC(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x18CFD43A0]();
      type metadata accessor for SHA256();
      sub_188518620(&qword_1EA90D2B8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18851749C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x18CFD4550]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x18CFD4560]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_188517514(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v5 = v6;
      goto LABEL_9;
    case 2uLL:
      v4 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v4;
LABEL_9:
      sub_1885173BC(a1, v5);
      if (v2)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v3 = 0;
      goto LABEL_5;
    default:
      v3 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1885172E8(a1, v3);
      if (v2)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_1885175B0(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

unsigned __int8 *sub_18851769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_18841E33C();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_188517C78(result, v7);
    v39 = v38;

    v9 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v23 = v10 - 1;
        if (v10 != 1)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            LOBYTE(v16) = 0;
            v27 = result + 1;
            v18 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v21 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v16 * a5;
              if ((v30 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v16 = v30 + (v28 + v29);
              if ((v16 >> 8))
              {
                goto LABEL_126;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_46:
            v18 = 0;
            v21 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v21 = 0;
        v18 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v31 = a5 + 48;
        v32 = a5 + 55;
        v33 = a5 + 87;
        if (a5 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          LOBYTE(v34) = 0;
          v18 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v21 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a5;
            if ((v37 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v34 = v37 + (v35 + v36);
            if ((v34 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v18 = 0;
          v21 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          LOBYTE(v16) = 0;
          v17 = result + 1;
          v18 = 1;
          while (1)
          {
            v19 = *v17;
            if (v19 < 0x30 || v19 >= v13)
            {
              if (v19 < 0x41 || v19 >= v14)
              {
                v21 = 0;
                if (v19 < 0x61 || v19 >= v15)
                {
                  goto LABEL_127;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v22 = v16 * a5;
            if ((v22 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v16 = v22 - (v19 + v20);
            if ((v16 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v21 = 0;
        v18 = 0;
LABEL_127:

        return (v21 | (v18 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v40 = HIBYTE(v9) & 0xF;
  v65 = v8;
  v66 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v40)
      {
        LOBYTE(v42) = 0;
        v58 = a5 + 48;
        v59 = a5 + 55;
        v60 = a5 + 87;
        if (a5 > 10)
        {
          v58 = 58;
        }

        else
        {
          v60 = 97;
          v59 = 65;
        }

        v61 = &v65;
        v18 = 1;
        while (1)
        {
          v62 = *v61;
          if (v62 < 0x30 || v62 >= v58)
          {
            if (v62 < 0x41 || v62 >= v59)
            {
              v21 = 0;
              if (v62 < 0x61 || v62 >= v60)
              {
                goto LABEL_127;
              }

              v63 = -87;
            }

            else
            {
              v63 = -55;
            }
          }

          else
          {
            v63 = -48;
          }

          v64 = v42 * a5;
          if ((v64 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v42 = v64 + (v62 + v63);
          if ((v42 >> 8))
          {
            goto LABEL_126;
          }

          v61 = (v61 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        LOBYTE(v42) = 0;
        v43 = a5 + 48;
        v44 = a5 + 55;
        v45 = a5 + 87;
        if (a5 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v65 + 1;
        v18 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v21 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_127;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v42 * a5;
          if ((v49 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v42 = v49 - (v47 + v48);
          if ((v42 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v46;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      LOBYTE(v42) = 0;
      v51 = a5 + 48;
      v52 = a5 + 55;
      v53 = a5 + 87;
      if (a5 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v65 + 1;
      v18 = 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v21 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_127;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = v42 * a5;
        if ((v57 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v42 = v57 + (v55 + v56);
        if ((v42 >> 8))
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v18 = 0;
      v21 = v42;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_188517C78(uint64_t a1, unint64_t a2)
{
  v2 = sub_188517CE4(sub_188517CE0, 0, a1, a2);
  v6 = sub_188517D18(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_188517D18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_188517278(v9, 0), v12 = sub_188517E78(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_188517E78(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_188518088(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_188518088(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_188518088(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_1883FA2B4(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x18CFD5190](15, a1 >> 16);
    sub_1883FA2B4(v3);
    return v4 | 8;
  }
}

uint64_t sub_1885180E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v14 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1885181C4(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v16 = BYTE1(result) & 1;
    v14 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v15[0]) = (a4 & 0x1000000000000000) != 0;
    return v14 | (LOBYTE(v15[0]) << 16);
  }

  return result;
}

uint64_t sub_1885181C4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_188518088(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_105;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_188518088(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_188518088(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_101;
  }

  if (v23 < a4 >> 16)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_100;
  }

  if (v24 < v18)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 87;
        if (a7 > 10)
        {
          v38 = a7 + 55;
        }

        else
        {
          v37 = 97;
          v38 = 65;
        }

        if (a7 <= 10)
        {
          v39 = a7 + 48;
        }

        else
        {
          v39 = 58;
        }

        if (v25)
        {
          LOBYTE(v30) = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v39)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                v36 = 1;
                if (v42 < 0x61 || v42 >= v37)
                {
                  return v35 | (v36 << 8);
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            if (((v30 * a7) & 0xFF00) != 0)
            {
              goto LABEL_97;
            }

            v30 = (v30 * a7) + (v42 + v43);
            if ((v30 >> 8))
            {
              goto LABEL_97;
            }

            ++v40;
            --v41;
          }

          while (v41);
LABEL_95:
          v36 = 0;
          v35 = v30;
          return v35 | (v36 << 8);
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    goto LABEL_104;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v44 = a7 + 87;
      if (a7 > 10)
      {
        v45 = a7 + 55;
      }

      else
      {
        v44 = 97;
        v45 = 65;
      }

      if (a7 <= 10)
      {
        v46 = a7 + 48;
      }

      else
      {
        v46 = 58;
      }

      if (v25)
      {
        LOBYTE(v30) = 0;
        while (1)
        {
          v47 = *v25;
          if (v47 < 0x30 || v47 >= v46)
          {
            if (v47 < 0x41 || v47 >= v45)
            {
              v35 = 0;
              v36 = 1;
              if (v47 < 0x61 || v47 >= v44)
              {
                return v35 | (v36 << 8);
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          if (((v30 * a7) & 0xFF00) != 0)
          {
            goto LABEL_97;
          }

          v30 = (v30 * a7) + (v47 + v48);
          if ((v30 >> 8))
          {
            goto LABEL_97;
          }

          ++v25;
          if (!--result)
          {
            goto LABEL_95;
          }
        }
      }

      goto LABEL_96;
    }

LABEL_97:
    v35 = 0;
    v36 = 1;
    return v35 | (v36 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 87;
      if (a7 > 10)
      {
        v28 = a7 + 55;
      }

      else
      {
        v27 = 97;
        v28 = 65;
      }

      if (a7 <= 10)
      {
        v29 = a7 + 48;
      }

      else
      {
        v29 = 58;
      }

      if (v25)
      {
        LOBYTE(v30) = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v29)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              v36 = 1;
              if (v33 < 0x61 || v33 >= v27)
              {
                return v35 | (v36 << 8);
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (((v30 * a7) & 0xFF00) != 0)
          {
            goto LABEL_97;
          }

          v30 = (v30 * a7) - (v33 + v34);
          if ((v30 & 0xFFFFFF00) != 0)
          {
            goto LABEL_97;
          }

          ++v31;
          if (!--v32)
          {
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      v35 = 0;
      v36 = 0;
      return v35 | (v36 << 8);
    }

    goto LABEL_97;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_188518620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_188518668(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA919B50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_188518700()
{
  v21 = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v0 = qword_1EA919B50;
  v17 = qword_1EA919B50;
  if (!qword_1EA919B50)
  {
    v11[1] = MEMORY[0x1E69E9820];
    v11[2] = 3221225472;
    v11[3] = sub_188518668;
    v11[4] = &unk_1E70BBE68;
    v12 = &v14;
    v13 = v11;
    v18 = xmmword_1E70BBE38;
    v19 = *off_1E70BBE48;
    v20 = 0;
    v15[3] = _sl_dlopen();
    qword_1EA919B50 = *(v12[1] + 24);
    v0 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v0)
  {
    v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *CloudKitTestingLibrary(void)");
    v7 = v4;
    v8 = v4;
    v9 = v6;
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v7, v10, v6, @"CKTestFrameworkLinking.m", 11, @"%s", v11[0]);

    __break(1u);
    goto LABEL_7;
  }

  v3 = v11[0];
  if (v11[0])
  {
LABEL_7:
    free(v3);
  }
}

void sub_1885188A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1885188C0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA919CB0;
  v7 = qword_1EA919CB0;
  if (!qword_1EA919CB0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1885189A0;
    v3[3] = &unk_1E70BBE90;
    v3[4] = &v4;
    sub_1885189A0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188518988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1885189A0(uint64_t a1)
{
  sub_188518700();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKTestContainer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919CB0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getCKTestContainerClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"CKTestFrameworkLinking.m", 13, @"Unable to find class %s", "CKTestContainer");

    __break(1u);
  }
}

id sub_188518A68()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA919CB8;
  v7 = qword_1EA919CB8;
  if (!qword_1EA919CB8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_188518B48;
    v3[3] = &unk_1E70BBE90;
    v3[4] = &v4;
    sub_188518B48(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188518B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188518B48(uint64_t a1)
{
  sub_188518700();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKTestDeviceReference");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919CB8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getCKTestDeviceReferenceClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"CKTestFrameworkLinking.m", 14, @"Unable to find class %s", "CKTestDeviceReference");

    __break(1u);
  }
}

id sub_188518C10()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA919CC0;
  v7 = qword_1EA919CC0;
  if (!qword_1EA919CC0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_188518CF0;
    v3[3] = &unk_1E70BBE90;
    v3[4] = &v4;
    sub_188518CF0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188518CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188518CF0(uint64_t a1)
{
  sub_188518700();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKTestServerManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919CC0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getCKTestServerManagerClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"CKTestFrameworkLinking.m", 15, @"Unable to find class %s", "CKTestServerManager");

    __break(1u);
  }
}

void sub_188519084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1885190A8(void *a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = objc_msgSend_checkElementType_error_(v6, a2, a3, &obj);
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[5] + 8) + 24) = v8;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_188519818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18851985C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v19 = a3;
  v8 = objc_msgSend_count(v19, v6, v7);
  if (v8 >= objc_msgSend_modifierLimitForInstallationIdentifierCheck(*(a1 + 32), v9, v10))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  if (objc_msgSend_count(v19, v11, v12) < 0x1F)
  {
    if (objc_msgSend_count(v19, v13, v14) < 0xB)
    {
      if (objc_msgSend_count(v19, v17, v18) < 6)
      {
        goto LABEL_10;
      }

      v15 = @"CKMultiValueMergeableDeltaRegisterInstallationIdentifierLowLimitExceededFault";
      v16 = &unk_1EFA2E488;
    }

    else
    {
      v15 = @"CKMultiValueMergeableDeltaRegisterInstallationIdentifierMediumLimitExceededFault";
      v16 = &unk_1EFA2E468;
    }
  }

  else
  {
    v15 = @"CKMultiValueMergeableDeltaRegisterInstallationIdentifierHighLimitExceededFault";
    v16 = &unk_1EFA2E448;
  }

  CKOncePerBoot(v15, v16);
LABEL_10:
}

void sub_188519944()
{
  v3 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v1 = 134217984;
    v2 = 30;
    _os_log_fault_impl(&dword_1883EA000, v0, OS_LOG_TYPE_FAULT, "Unique installation identifier count in CKMultiValueMergeableDeltaRegister exceeded high limit of %lu", &v1, 0xCu);
  }
}

void sub_188519A1C()
{
  v3 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v1 = 134217984;
    v2 = 10;
    _os_log_fault_impl(&dword_1883EA000, v0, OS_LOG_TYPE_FAULT, "Unique installation identifier count in CKMultiValueMergeableDeltaRegister exceeded medium limit of %lu", &v1, 0xCu);
  }
}

void sub_188519AF4()
{
  v3 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v1 = 134217984;
    v2 = 5;
    _os_log_fault_impl(&dword_1883EA000, v0, OS_LOG_TYPE_FAULT, "Unique installation identifier count in CKMultiValueMergeableDeltaRegister exceeded low limit of %lu", &v1, 0xCu);
  }
}

void sub_188519C70(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = objc_msgSend_checkElementType_error_(v2, a2, a2, &v10);
  v4 = v10;
  if ((v3 & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    objc_msgSend_raise_format_(v5, v9, v6, @"Failed to set contents on %@: %@", v8, v4);
  }
}

void sub_18851A400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18851A438(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a2;
  if (a3 < a3 + a4)
  {
    while (*(*(*(a1 + 48) + 8) + 24) < 2uLL)
    {
      v13 = [CKDistributedTimestamp alloc];
      v15 = objc_msgSend_initWithSiteIdentifierObject_clockValue_(v13, v14, v12, a3);
      v18 = objc_msgSend_copy(*(a1 + 32), v16, v17);
      objc_msgSend_setMetadata_(v18, v19, 0);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v20, v18, v15);
      ++*(*(*(a1 + 48) + 8) + 24);

      ++a3;
      if (!--a4)
      {
        goto LABEL_10;
      }
    }

    v21 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v11, @"CKErrorDomain", 1, @"Multi-value register delta has more than one CKDistributedTimestampAtomStatePresent timestamp");
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v24 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
    {
      v25 = *(a1 + 32);
      v26 = 138412290;
      v27 = v25;
      _os_log_fault_impl(&dword_1883EA000, v24, OS_LOG_TYPE_FAULT, "Multi-value register delta %@ has more than one CKDistributedTimestampAtomStatePresent timestamp", &v26, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a7 = 1;
  }

LABEL_10:
}

void sub_18851ABDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_18851AC14(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (objc_msgSend_includesTimestamp_(*(a1 + 32), v9, v7))
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 72) + 8);
    obj = *(v12 + 40);
    v13 = objc_msgSend_checkElementType_error_(v11, v10, v8, &obj);
    objc_storeStrong((v12 + 40), obj);
    if (v13)
    {
      v16 = objc_msgSend_mutableCopy(*(a1 + 48), v14, v15);
      v17 = MEMORY[0x1E696AC90];
      v20 = objc_msgSend_clockValue(v7, v18, v19);
      v22 = objc_msgSend_indexSetWithIndex_(v17, v21, v20);
      v25 = objc_msgSend_siteIdentifierObject(v7, v23, v24);
      objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v16, v26, v22, 1, v25);

      v27 = [CKMergeableDeltaMetadata alloc];
      v28 = [CKMergeableDeltaVectors alloc];
      v31 = objc_msgSend_vectors(*(a1 + 56), v29, v30);
      v34 = objc_msgSend_previous(v31, v32, v33);
      v37 = objc_msgSend_vectors(*(a1 + 56), v35, v36);
      v40 = objc_msgSend_removals(v37, v38, v39);
      v42 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v28, v41, v34, v16, v40, *(a1 + 64));
      v44 = objc_msgSend_initWithVectors_(v27, v43, v42);

      v47 = objc_msgSend_copy(v8, v45, v46);
      objc_msgSend_setMetadata_(v47, v48, v44);
      objc_msgSend_addObject_(*(*(*(a1 + 80) + 8) + 40), v49, v47);
    }

    else
    {
      v50 = *(*(a1 + 80) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = 0;

      *a4 = 1;
    }
  }
}

void sub_18851AF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_18851AF3C(uint64_t a1, const char *a2, void *a3)
{
  v5 = 0;
  result = objc_msgSend_contentSize_error_(a3, a2, &v5, 0);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) += v5;
  }

  return result;
}

void sub_18851BAB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AC90];
  v4 = a2;
  v7 = objc_msgSend_clockValue(v4, v5, v6);
  v13 = objc_msgSend_indexSetWithIndex_(v3, v8, v7);
  v11 = objc_msgSend_siteIdentifierObject(v4, v9, v10);

  objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v2, v12, v13, 1, v11);
}

void sub_18851BDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18851BE00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a6 - 1) <= 1)
  {
    v10 = *(a1 + 32);
    v11 = a2;
    v14 = objc_msgSend_vector(v10, v12, v13);
    v16 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v15, a3, a4);
    objc_msgSend_addClockValuesInIndexSet_withClockType_atomState_forSiteIdentifier_(v14, v17, v16, a5, *(a1 + 48), v11);

    *(*(*(a1 + 40) + 8) + 24) += a4;
  }
}

void sub_18851C3D4(uint64_t a1, void *a2)
{
  v9 = a2;
  v5 = objc_msgSend_vector(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_atomStateForTimestamp_(v5, v6, v9);

  if (v7 == 3)
  {
    objc_msgSend_addObject_(*(a1 + 40), v8, v9);
  }
}

void sub_18851C454(uint64_t a1, void *a2)
{
  v19 = a2;
  v5 = objc_msgSend_vector(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_atomStateForTimestamp_(v5, v6, v19);

  if (v7 == 2)
  {
    v10 = *(a1 + 40);
    v11 = MEMORY[0x1E696AC90];
    v12 = objc_msgSend_clockValue(v19, v8, v9);
    v14 = objc_msgSend_indexSetWithIndex_(v11, v13, v12);
    v17 = objc_msgSend_siteIdentifierObject(v19, v15, v16);
    objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v10, v18, v14, 1, v17);
  }
}

id sub_18851F928(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_valueForProperty_propertyInfo_inObject_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 56), *(a1 + 48));
  v6 = v3;
  if (!v3)
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v4, v9[10]);
    objc_msgSend_setValue_forProperty_propertyInfo_inObject_(v9, v11, v10, *(a1 + 40), *(a1 + 56), *(a1 + 48));

LABEL_6:
    v12 = *(a1 + 48);
    v18.receiver = *(a1 + 32);
    v18.super_class = CKPackageTableBase;
    v8 = objc_msgSendSuper2(&v18, sel_insertObject_, v12);
    goto LABEL_7;
  }

  if (objc_msgSend_unsignedLongLongValue(v3, v4, v5) == *(*(a1 + 32) + 80))
  {
    goto LABEL_6;
  }

  v8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKErrorDomain", 12, @"Package object %@ has invalid %@", *(a1 + 48), *(a1 + 40));
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18851FAB0;
  v17[3] = &unk_1E70BC048;
  v17[4] = v13;
  v14 = v13;
  objc_msgSend_addTransactionCompletionHandler_(v14, v15, v17);

  return v8;
}

uint64_t sub_18851FAB0(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    ++*(*(result + 32) + 80);
  }

  return result;
}

void sub_18851FC58(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_predicateWithFormat_(v2, v5, @"%@ = $ENTRYINDEX", v3);
  objc_msgSend_setSearchPredicate_(v4, v6, v7);
}

void sub_18851FE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18851FEB8(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18851FF8C;
  v15[3] = &unk_1E70BC098;
  v15[4] = v3;
  v5 = objc_msgSend_entriesWithValues_label_setupBlock_(v3, a2, v4, off_1EA90EAD8, v15);
  v8 = objc_msgSend_allObjects(v5, v6, v7);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v13 = objc_msgSend_error(v5, v11, v12);

  return v13;
}

void sub_18851FF8C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setLimit_(v3, v4, &unk_1EFA84F18);
  v10 = objc_msgSend_primaryKey(*(a1 + 32), v5, v6);
  objc_msgSend_orderAscendingByProperty_(v3, v7, v10);
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v10, @"%@ >= $STARTINDEX", v10);
  objc_msgSend_setSearchPredicate_(v3, v9, v8);
}

id sub_188520890(uint64_t a1)
{
  v3 = objc_alloc_init(CKPackageItem);
  if (*(a1 + 64))
  {
    v4 = 1;
    do
    {
      v5 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v2, v4 - 1);
      v8 = objc_msgSend_unsignedLongValue(v5, v6, v7);
      objc_msgSend_setPackageIndex_(v3, v9, v8);

      v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v10, v4 - 1);
      objc_msgSend_setFileURL_(v3, v12, v11);

      v14 = objc_msgSend_updateProperties_usingObject_label_(*(a1 + 48), v13, *(a1 + 56), v3, off_1EA90EB50);
      v15 = v14;
      if (v4 >= *(a1 + 64))
      {
        break;
      }

      ++v4;
    }

    while (!v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_188520A38(uint64_t a1, const char *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = @"INDEX";
  v3 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *(a1 + 48));
  v20[0] = v3;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v20, &v19, 1);

  v9 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), v6, v5, off_1EA90EB68, &unk_1EFA2E4E8);
  v10 = 0;
  while (1)
  {
    v11 = v10;
    v10 = objc_msgSend_nextObject(v9, v7, v8);

    if (!v10)
    {
      break;
    }

    (*(*(a1 + 40) + 16))();
    v16 = objc_msgSend_error(v9, v14, v15);
    if (v16)
    {

      break;
    }
  }

  v17 = objc_msgSend_error(v9, v12, v13);

  return v17;
}

void sub_188520B9C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v7 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"%@ = $INDEX", @"sectionIndex");
  objc_msgSend_setSearchPredicate_(v7, v5, v4);

  objc_msgSend_orderAscendingByProperty_(v7, v6, @"packageItemID");
}

id sub_188520CC4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [CKPackageTableEntryEnumerator alloc];
  v4 = objc_msgSend_initWithPackageTable_(v2, v3, *(a1 + 32));
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        objc_msgSend_setPackageIndex_(v12, v8, 0xFFFFFFFFLL, v17);
        v14 = objc_msgSend_insertObject_(*(a1 + 40), v13, v12);
        if (v14)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v17, v21, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

void sub_188521138(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  if (a1)
  {
    objc_storeStrong((a1 + 128), a3);
    v9 = objc_msgSend_packageID(v6, v7, v8);
    v10 = *(a1 + 144);
    *(a1 + 144) = v9;

    objc_storeStrong((a1 + 136), a2);
  }
}

id sub_188521E20(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_resetSectionPlanning(*(*(a1 + 32) + 152), a2, a3);
  if (!v4)
  {
    v4 = objc_msgSend_resetSectionPlanning(*(*(a1 + 32) + 160), v5, v6);
  }

  return v4;
}

id sub_188521F34(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_insertObject_(*(*(a1 + 32) + 160), a2, *(a1 + 40));
  if (!v4)
  {
    objc_msgSend_setPackage_(*(a1 + 40), v3, *(a1 + 32));
  }

  return v4;
}

void sub_1885226C8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_groupID(a2, a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

uint64_t sub_18852335C(uint64_t a1, const char *a2, uint64_t a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  if (byte_1EA90C538)
  {
    v4 = &unk_1EFA85068;
  }

  else
  {
    v4 = &unk_1EFA85080;
  }

  v35[0] = @"TYPE";
  v35[1] = @"NOW";
  v36[0] = v4;
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3);
  v36[1] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v36, v35, 2);

  v9 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), v8, v7, 0, &unk_1EFA2E548);
  v12 = objc_msgSend_allObjects(v9, v10, v11);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v34, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = objc_msgSend_deleteReference_(*(a1 + 32), v15, *(*(&v28 + 1) + 8 * i));
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v28, v34, 16);
    }

    while (v17);
  }

  v21 = objc_msgSend_error(v9, v15, v16);

  if (v21)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      v24 = v22;
      v27 = objc_msgSend_error(v9, v25, v26);
      *buf = 138412290;
      v33 = v27;
      _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "Error enumerating expired package references: %@", buf, 0xCu);
    }
  }

  return 0;
}

void sub_1885235BC(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v2, v4, @"(%@ = $TYPE) OR (%@ < $NOW)", @"referenceType", @"expirationDate");
  objc_msgSend_setSearchPredicate_(v3, v5, v6);
}

id sub_188523CA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = objc_msgSend_referenceID(*(a1 + 40), a2, a3);
  v7 = objc_msgSend_deletePrimaryKeyValue_(v4, v6, v5);

  if (!v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 40);
      *buf = 138412290;
      v27 = v24;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "Deleted package ref: %@", buf, 0xCu);
    }

    v11 = objc_msgSend_packageID(*(a1 + 40), v9, v10);
    v12 = *(a1 + 32);
    v25 = 0;
    IsZeroForPackageID_error = objc_msgSend_refcountIsZeroForPackageID_error_(v12, v13, v11, &v25);
    v15 = v25;
    v7 = v15;
    if ((IsZeroForPackageID_error & 1) == 0 && !v15)
    {
      v18 = objc_msgSend_tableGroup(*(a1 + 32), v16, v17);
      v21 = objc_msgSend_sqlitePackage(*(a1 + 40), v19, v20);
      v7 = objc_msgSend_refcountBecameZeroForPackage_packageID_(v18, v22, v21, v11);
    }
  }

  return v7;
}

void sub_1885240CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1885240E4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v17 = 0;
  v4 = objc_msgSend_newPackageInDatabase_error_(CKSQLitePackage, a2, v3, &v17);
  v5 = v17;
  v9 = objc_msgSend_packageID(v4, v6, v7);
  if (!v5)
  {
    v10 = *(*(a1 + 32) + 136);
    v16 = 0;
    v11 = objc_msgSend_newProcessReferenceForPackage_error_(v10, v8, v9, &v16);
    v5 = v16;
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (!v5)
    {
      objc_msgSend_setSqlitePackage_(*(*(*(a1 + 40) + 8) + 40), v14, v4);
    }
  }

  return v5;
}

void sub_188524328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188524340(void *a1, const char *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 128);
  v21 = 0;
  v5 = objc_msgSend_entryWithPrimaryKey_error_(v4, a2, v3, &v21);
  v7 = v21;
  if (v5)
  {
    v8 = a1[5];
    v9 = *(a1[4] + 136);
    v20 = v7;
    v10 = objc_msgSend_newProcessReferenceForPackage_error_(v9, v6, v8, &v20);
    v11 = v20;

    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    v14 = a1[4];
    v19 = v11;
    v16 = objc_msgSend_existingPackageInDatabase_packageInfo_error_(CKSQLitePackage, v15, v14, v5, &v19);
    v7 = v19;

    objc_msgSend_setSqlitePackage_(*(*(a1[6] + 8) + 40), v17, v16);
  }

  return v7;
}

void sub_1885245C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1885245E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v42[5] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_packageID(*(a1 + 32), a2, a3);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 40) + 136);
  v34 = 0;
  v8 = objc_msgSend_newAnchorReferenceForPackage_expirationDate_error_(v6, v7, v4, v5, &v34);
  v9 = v34;
  if (v9 || (objc_msgSend_extendExpirationOfPackage_forReference_(*(*(a1 + 40) + 128), v10, *(a1 + 32), v8), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v9;
  }

  else
  {
    v16 = objc_msgSend_bundleID(*(a1 + 40), v11, v12);
    v19 = objc_msgSend_creationDate(*(a1 + 40), v17, v18);
    v22 = objc_msgSend_referenceID(v8, v20, v21);
    v24 = v22;
    v25 = *(a1 + 48);
    if (v25)
    {
      v41[0] = @"packageID";
      v41[1] = @"bundleID";
      v42[0] = v4;
      v42[1] = v16;
      v41[2] = @"referenceID";
      v41[3] = @"expirationDate";
      v42[2] = v22;
      v42[3] = v25;
      v41[4] = @"packageDBCreationDate";
      v42[4] = v19;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v42, v41, 5);
    }

    else
    {
      v39[0] = @"packageID";
      v39[1] = @"bundleID";
      v40[0] = v4;
      v40[1] = v16;
      v39[2] = @"referenceID";
      v39[3] = @"packageDBCreationDate";
      v40[2] = v22;
      v40[3] = v19;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v40, v39, 4);
    }
    v26 = ;
    v33 = 0;
    v28 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v27, v26, 200, 0, &v33);
    v13 = v33;
    v29 = *(*(a1 + 56) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v31 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 40);
      *buf = 138412546;
      v36 = v24;
      v37 = 2112;
      v38 = v32;
      _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "Created new anchor referenceID:%@ to package %@", buf, 0x16u);
    }
  }

  v14 = v13;

  return v13;
}

id sub_1885248A0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v28 = 0;
  v6 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v5, v4, 0, 0, &v28);

  v7 = v28;
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v10 = objc_msgSend_objectForKey_(v6, v8, @"packageID");
    v11 = objc_msgSend_objectForKey_(v6, v14, @"referenceID");
    v12 = objc_msgSend_objectForKey_(v6, v15, @"bundleID");
    v17 = objc_msgSend_objectForKey_(v6, v16, @"packageDBCreationDate");
    v13 = v17;
    if (v10 && v12 && v17 && v11)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKErrorDomain", 12, @"Invalid anchor: %@", v6);
    }
  }

  v18 = objc_msgSend_objectForKey_(v6, v8, @"expirationDate");
  v21 = v18;
  if (!v9 && v18)
  {
    v22 = objc_msgSend_date(MEMORY[0x1E695DF00], v19, v20);
    v24 = objc_msgSend_compare_(v21, v23, v22);

    if (v24 != -1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 12, @"Anchor is expired: %@", v6);
  }

  if (a3 && v9)
  {
    v26 = v9;
    *a3 = v9;

    v6 = 0;
  }

LABEL_17:

  return v6;
}

void sub_188524F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188524F94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v19 = 0;
  v7 = objc_msgSend_packageReferenceFromAnchorDictionary_error_(v5, v6, a3, &v19);
  v10 = v19;
  if (v7)
  {
    v11 = objc_msgSend_packageID(v7, v8, v9);
    v18 = v10;
    v13 = objc_msgSend_existingPackage_error_(v5, v12, v11, &v18);
    v14 = v18;

    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v13;

    v10 = v14;
  }

  return v10;
}

void sub_188525230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188525250(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = 0;
  v7 = objc_msgSend_packageReferenceFromAnchorDictionary_error_(v5, v6, a3, &v13);
  v8 = v13;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (!v8)
  {
    v8 = objc_msgSend_deleteReference_(v5[17], v11, *(*(*(a1 + 32) + 8) + 40));
  }

  return v8;
}

void sub_188527CD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_sharedManager(CKProcessScopedStateManager, a2, a3);
  v5 = objc_msgSend_untrustedEntitlements(v8, v3, v4);
  byte_1ED4B60C0 = objc_msgSend_hasVFSOpenByIDEntitlement(v5, v6, v7);
}

void sub_18852FA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18852FA30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_18852FEF4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKErrorDomain", 12, @"Cannot append a zero-length segment to a streaming asset.");
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))(v4, 0);
    v3 = v5;
  }
}

void sub_18852FF78(uint64_t a1, const char *a2, uint64_t a3)
{
  v89 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAppending(*(a1 + 32), a2, a3))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v88 = v8;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Trying to append to streaming asset while already appending %@", buf, 0xCu);
    }

    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKErrorDomain", 1, @"An append is already in progress. Please wait until the current append has finished before appending again.");
  }

  else
  {
    v9 = objc_msgSend_streamingAsset(*(a1 + 32), v4, v5);
    v12 = objc_msgSend_uploadURL(v9, v10, v11);

    if (v12)
    {
      goto LABEL_19;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v79 = *(a1 + 32);
      v80 = v14;
      v83 = objc_msgSend_streamingAsset(v79, v81, v82);
      *buf = 138412290;
      v88 = v83;
      _os_log_error_impl(&dword_1883EA000, v80, OS_LOG_TYPE_ERROR, "Missing uploadURL appending to streaming asset %@", buf, 0xCu);
    }

    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKErrorDomain", 12, @"Missing upload URL for streaming asset. Try saving the streaming asset in a record to the server.");
  }
  v16 = ;
  if (v16)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v88 = v16;
      _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Error before starting streaming asset append: %@", buf, 0xCu);
    }

    v20 = objc_msgSend_callbackQueue(*(a1 + 32), v18, v19);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1885304F4;
    block[3] = &unk_1E70BC2E8;
    v21 = *(a1 + 64);
    v85 = v16;
    v86 = v21;
    v22 = v16;
    dispatch_async(v20, block);

    v23 = v86;
    goto LABEL_27;
  }

LABEL_19:
  objc_msgSend_setAppending_(*(a1 + 32), v13, 1);
  objc_msgSend_setCurrentAppendCancelled_(*(a1 + 32), v24, 0);
  objc_msgSend_setCompletionHandler_(*(a1 + 32), v25, *(a1 + 64));
  v26 = objc_opt_class();
  v27 = *(a1 + 40);
  v30 = objc_msgSend_streamingAsset(*(a1 + 32), v28, v29);
  v33 = objc_msgSend_uploadURL(v30, v31, v32);
  v34 = *(a1 + 48);
  v37 = objc_msgSend_streamingAsset(*(a1 + 32), v35, v36);
  v40 = objc_msgSend_bytesUploaded(v37, v38, v39);
  v22 = objc_msgSend_requestToAppendSegmentData_uploadURL_requestUUID_offset_(v26, v41, v27, v33, v34, v40);

  v44 = objc_msgSend_length(*(a1 + 40), v42, v43);
  objc_msgSend_setCurrentSegmentLength_(*(a1 + 32), v45, v44);
  v48 = objc_msgSend_streamingAsset(*(a1 + 32), v46, v47);
  v51 = objc_msgSend_requestOptions(v48, v49, v50);
  v52 = v51;
  if (v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = objc_alloc_init(MEMORY[0x1E698F6D0]);
  }

  v23 = v53;

  v54 = MEMORY[0x1E696AEC0];
  v55 = objc_opt_class();
  v57 = objc_msgSend_stringWithFormat_(v54, v56, @"%@ requestUUID:%@", v55, *(a1 + 48));
  objc_msgSend_setIdentifier_(v23, v58, v57);

  objc_msgSend_setTlsPinning_(v23, v59, 1);
  v62 = objc_msgSend_sharedManager(MEMORY[0x1E698F6C8], v60, v61);
  v64 = objc_msgSend_createDataTaskWithRequest_options_delegate_sessionHandle_(v62, v63, v22, v23, *(a1 + 32), 0);
  objc_msgSend_setDataTask_(*(a1 + 32), v65, v64);

  objc_msgSend_setRequestUUID_(*(a1 + 32), v66, *(a1 + 48));
  objc_msgSend_setOsActivity_(*(a1 + 32), v67, *(a1 + 56));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v68 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v74 = *(a1 + 32);
    v75 = v68;
    v78 = objc_msgSend_dataTask(v74, v76, v77);
    *buf = 138412290;
    v88 = v78;
    _os_log_debug_impl(&dword_1883EA000, v75, OS_LOG_TYPE_DEBUG, "Will resume streaming asset append data task: %@", buf, 0xCu);
  }

  v71 = objc_msgSend_dataTask(*(a1 + 32), v69, v70);
  objc_msgSend_resume(v71, v72, v73);

LABEL_27:
}

uint64_t sub_1885304F4(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "On callback queue about to call completion handler for before starting append", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1885309CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v200 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = objc_msgSend_osActivity(*(a1 + 32), a2, a3);
  v5 = v4;
  if (v4)
  {
    os_activity_scope_enter(v4, &state);
  }

  else
  {
    v6 = _os_activity_create(&dword_1883EA000, "client/streaming-asset-didComplete", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);
  }

  if (*(a1 + 40))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138412546;
      v191 = v10;
      v192 = 2112;
      *v193 = v11;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Append task completed with error %@: %@", buf, 0x16u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v111 = *(a1 + 48);
      *buf = 138412290;
      v191 = v111;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Append task completed %@", buf, 0xCu);
    }
  }

  v13 = *(a1 + 48);
  v14 = objc_msgSend_dataTask(*(a1 + 32), v8, v9);
  LOBYTE(v13) = v13 == v14;

  if ((v13 & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 48);
      *buf = 138412290;
      v191 = v18;
      _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Received completion callback for task that is not ours: %@", buf, 0xCu);
    }

    goto LABEL_140;
  }

  v19 = objc_msgSend_response(*(a1 + 48), v15, v16);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_msgSend_response(*(a1 + 48), v21, v22), v23 = objc_claimAutoreleasedReturnValue(), (v26 = v23) == 0))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v97 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v112 = *(a1 + 32);
      *buf = 138412290;
      v191 = v112;
      _os_log_error_impl(&dword_1883EA000, v97, OS_LOG_TYPE_ERROR, "No response for %@", buf, 0xCu);
    }

    if (objc_msgSend_isCurrentAppendCancelled(*(a1 + 32), v98, v99))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v101 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1883EA000, v101, OS_LOG_TYPE_DEBUG, "Sending error back that the current append was cancelled", buf, 2u);
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v102, @"CKErrorDomain", 20, @"Append was cancelled");
    }

    else
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v100, @"CKErrorDomain", 34, @"No response appending to streaming asset");
    }
    v75 = ;
    v26 = 0;
    goto LABEL_126;
  }

  v27 = objc_msgSend_allHeaderFields(v23, v24, v25);
  v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"x-apple-sa-status");

  v32 = objc_msgSend_allHeaderFields(v26, v30, v31);
  v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, @"x-apple-sa-status");
  v37 = objc_msgSend_integerValue(v34, v35, v36);

  v40 = objc_msgSend_allHeaderFields(v26, v38, v39);
  v42 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"x-apple-sa-content-status");

  v45 = objc_msgSend_allHeaderFields(v26, v43, v44);
  v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"x-apple-sa-content-status");
  v179 = objc_msgSend_integerValue(v47, v48, v49);

  v52 = objc_msgSend_allHeaderFields(v26, v50, v51);
  v54 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"x-apple-sa-error-code");

  v57 = objc_msgSend_allHeaderFields(v26, v55, v56);
  v59 = objc_msgSend_objectForKeyedSubscript_(v57, v58, @"x-apple-sa-error-code");
  v181 = objc_msgSend_integerValue(v59, v60, v61);

  v64 = objc_msgSend_allHeaderFields(v26, v62, v63);
  v182 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"x-apple-sa-error-description");

  v67 = objc_msgSend_valueForHTTPHeaderField_(v26, v66, @"X-Apple-Request-UUID");
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v68 = ck_log_facility_ck;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    v178 = objc_msgSend_requestUUID(*(a1 + 32), v69, v70);
    v174 = objc_msgSend_statusCode(v26, v124, v125);
    if (v67)
    {
      v177 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @" requestUUID=%@", v67);
    }

    else
    {
      v177 = &stru_1EFA32970;
    }

    if (v29)
    {
      v176 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @" edgeStatus=%d", v37);
    }

    else
    {
      v176 = &stru_1EFA32970;
    }

    if (v42)
    {
      v146 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @" contentStatus=%d", v179);
    }

    else
    {
      v146 = &stru_1EFA32970;
    }

    v180 = v146;
    if (v54)
    {
      v147 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @" errorCode=%d errorDescription=%@", v181, v182);
      v146 = v180;
    }

    else
    {
      v147 = &stru_1EFA32970;
    }

    v148 = v174;
    v175 = v147;
    *buf = 138544642;
    v191 = v178;
    v192 = 1024;
    *v193 = v148;
    *&v193[4] = 2114;
    *&v193[6] = v177;
    v194 = 2114;
    v195 = v176;
    v196 = 2114;
    v197 = v146;
    v198 = 2114;
    v199 = v147;
    _os_log_debug_impl(&dword_1883EA000, v68, OS_LOG_TYPE_DEBUG, "Append request %{public}@ finished with httpStatus=%d%{public}@%{public}@%{public}@%{public}@", buf, 0x3Au);
    if (v54)
    {
    }

    if (v42)
    {
    }

    if (v29)
    {
    }

    if (v67)
    {
    }
  }

  if (objc_msgSend_statusCode(v26, v71, v72) != 200)
  {
    v76 = v67;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v103 = ck_log_facility_ck;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      v145 = objc_msgSend_allHeaderFields(v26, v104, v105);
      *buf = 138412290;
      v191 = v145;
      _os_log_error_impl(&dword_1883EA000, v103, OS_LOG_TYPE_ERROR, "Received unknown error appending to streaming asset. Headers=%@", buf, 0xCu);
    }

    v96 = CKErrorFromHTTPResponse(v26);
    v75 = objc_msgSend_CKClientSuitableError(v96, v106, v107);
    goto LABEL_57;
  }

  v75 = 0;
  v76 = v67;
  if (v37 <= 1)
  {
    if (v37)
    {
      if (v37 != 1)
      {
        goto LABEL_125;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v108 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v110 = *(a1 + 32);
        *buf = 138412290;
        v191 = v110;
        _os_log_impl(&dword_1883EA000, v108, OS_LOG_TYPE_INFO, "Upload was terminated by the uploader for %@", buf, 0xCu);
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v109, @"CKErrorDomain", 20, @"Streaming asset upload terminated: requestUUID=%@", v67);
      goto LABEL_124;
    }

    v119 = objc_msgSend_allHeaderFields(v26, v73, v74);
    v96 = objc_msgSend_objectForKeyedSubscript_(v119, v120, @"x-apple-sa-receipt");

    if (objc_msgSend_fakeMissingUploadReceipt(*(a1 + 32), v121, v122))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v123 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1883EA000, v123, OS_LOG_TYPE_INFO, "Pretending like we didn't get an upload receipt", buf, 2u);
      }
    }

    else if (v96)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v127 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v173 = *(a1 + 32);
        *buf = 138412290;
        v191 = v173;
        _os_log_debug_impl(&dword_1883EA000, v127, OS_LOG_TYPE_DEBUG, "Successfully appended to streaming asset %@", buf, 0xCu);
      }

      v130 = objc_msgSend_streamingAsset(*(a1 + 32), v128, v129);
      objc_msgSend_setUploadReceipt_(v130, v131, v96);

      v134 = objc_msgSend_streamingAsset(*(a1 + 32), v132, v133);
      v137 = objc_msgSend_currentSegmentLength(*(a1 + 32), v135, v136);
      v140 = objc_msgSend_size(v134, v138, v139);
      objc_msgSend_setSize_(v134, v141, v140 + v137);

      v75 = 0;
      goto LABEL_94;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v143 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v143, OS_LOG_TYPE_ERROR, "No upload receipt after appending to streaming asset", buf, 2u);
    }

    v75 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v144, @"CKErrorDomain", 1, @"Missing upload receipt after appending to streaming asset. Create a new streaming asset to continue: requestUUID=%@", v67);
    v96 = 0;
LABEL_94:
    objc_msgSend_setCurrentSegmentLength_(*(a1 + 32), v142, 0);
LABEL_57:

    goto LABEL_125;
  }

  switch(v37)
  {
    case 2:
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v113 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v115 = *(a1 + 32);
        *buf = 138412290;
        v191 = v115;
        _os_log_impl(&dword_1883EA000, v113, OS_LOG_TYPE_INFO, "Segment signature mismatch for %@", buf, 0xCu);
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v114, @"CKErrorDomain", 1, @"Segment signature mismatch: requestUUID=%@", v67);
      goto LABEL_124;
    case 3:
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v116 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v118 = *(a1 + 32);
        *buf = 138412290;
        v191 = v118;
        _os_log_impl(&dword_1883EA000, v116, OS_LOG_TYPE_INFO, "Vendor upload error for %@", buf, 0xCu);
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v117, @"CKErrorDomain", 1, @"Vendor upload error: requestUUID=%@", v67);
      goto LABEL_124;
    case 4:
      if (v181 == 48)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v149 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          v151 = *(a1 + 32);
          *buf = 138412290;
          v191 = v151;
          _os_log_impl(&dword_1883EA000, v149, OS_LOG_TYPE_INFO, "Append would exceed max length for %@", buf, 0xCu);
        }

        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v150, @"CKErrorDomain", 27, @"Append would exceed max length of streaming asset: requestUUID=%@", v67);
      }

      else
      {
        if (v181 == 42)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v77 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v80 = *(a1 + 32);
            *buf = 138412290;
            v191 = v80;
            _os_log_impl(&dword_1883EA000, v77, OS_LOG_TYPE_INFO, "Stream offset invalid for %@", buf, 0xCu);
          }

          v81 = objc_msgSend_allHeaderFields(v26, v78, v79);
          v83 = objc_msgSend_objectForKeyedSubscript_(v81, v82, @"x-apple-sa-current-length");

          if (objc_opt_respondsToSelector())
          {
            v86 = objc_msgSend_integerValue(v83, v84, v85);
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v87 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v191 = v86;
              _os_log_debug_impl(&dword_1883EA000, v87, OS_LOG_TYPE_DEBUG, "Offset was invalid, and we have a new length of the streaming asset (%ld)", buf, 0xCu);
            }

            v90 = objc_msgSend_streamingAsset(*(a1 + 32), v88, v89);
            v93 = objc_msgSend_copy(v90, v91, v92);

            objc_msgSend_setSize_(v93, v94, v86);
            v188 = @"CKServerStreamingAsset";
            v189 = v93;
            v96 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v95, &v189, &v188, 1);
          }

          else
          {
            v96 = 0;
          }

          v75 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v84, @"CKErrorDomain", 124, v96, @"Local streaming asset bytes uploaded doesn't match server: requestUUID=%@", v67);

          goto LABEL_57;
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v152 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          v154 = *(a1 + 32);
          *buf = 138412290;
          v191 = v154;
          _os_log_impl(&dword_1883EA000, v152, OS_LOG_TYPE_INFO, "Content error for %@", buf, 0xCu);
        }

        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v153, @"CKErrorDomain", 1, @"Content error: requestUUID=%@", v67);
      }

      v75 = LABEL_124:;
      v76 = v67;
      break;
  }

LABEL_125:

LABEL_126:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v155 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v155, OS_LOG_TYPE_DEBUG, "Finishing streaming asset append", buf, 2u);
  }

  objc_msgSend_setAppending_(*(a1 + 32), v156, 0);
  objc_msgSend_setRequestUUID_(*(a1 + 32), v157, 0);
  objc_msgSend_setOsActivity_(*(a1 + 32), v158, 0);
  v161 = objc_msgSend_completionHandler(*(a1 + 32), v159, v160);
  objc_msgSend_setCompletionHandler_(*(a1 + 32), v162, 0);
  if (v75)
  {
    v165 = 0;
  }

  else
  {
    v166 = objc_msgSend_streamingAsset(*(a1 + 32), v163, v164);
    v165 = objc_msgSend_copy(v166, v167, v168);
  }

  if (v161)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v169 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1883EA000, v169, OS_LOG_TYPE_DEBUG, "About to call back to adopter for streaming asset append completion", buf, 2u);
    }

    v172 = objc_msgSend_callbackQueue(*(a1 + 32), v170, v171);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188531AF8;
    block[3] = &unk_1E70BC338;
    v184 = v75;
    v186 = v161;
    v185 = v165;
    dispatch_async(v172, block);
  }

LABEL_140:
  os_activity_scope_leave(&state);
}

uint64_t sub_188531AF8(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = @" with error: ";
    if (!v4)
    {
      v5 = &stru_1EFA32970;
      v4 = &stru_1EFA32970;
    }

    v6 = 138543618;
    v7 = v5;
    v8 = 2112;
    v9 = v4;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "On callback queue for streaming asset append completion%{public}@%@", &v6, 0x16u);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_188531D48(uint64_t a1, const char *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_osActivity(*(a1 + 32), a2, a3, 0, 0);
  v5 = v4;
  if (v4)
  {
    os_activity_scope_enter(v4, &v34);
  }

  else
  {
    v6 = _os_activity_create(&dword_1883EA000, "client/streaming-asset-abort", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &v34);
  }

  objc_msgSend_setCurrentAppendCancelled_(*(a1 + 32), v7, 1);
  v10 = objc_msgSend_dataTask(*(a1 + 32), v8, v9);
  v11 = v10 == 0;

  if (v11)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      *buf = 138412290;
      v36 = v27;
      _os_log_impl(&dword_1883EA000, v26, OS_LOG_TYPE_INFO, "Trying to abort a streaming asset append with no data task %@", buf, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 32);
      *buf = 138412290;
      v36 = v32;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Aborting streaming asset append %@", buf, 0xCu);
    }

    v15 = objc_msgSend_dataTask(*(a1 + 32), v13, v14);
    v18 = objc_msgSend_state(v15, v16, v17) == 0;

    if (v18)
    {
      v28 = objc_msgSend_dataTask(*(a1 + 32), v19, v20);
      objc_msgSend_cancel(v28, v29, v30);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v31 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v33 = *(a1 + 32);
        *buf = 138412290;
        v36 = v33;
        _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "Did cancel data task for %@", buf, 0xCu);
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_ck;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = objc_msgSend_dataTask(*(a1 + 32), v22, v23);
        v25 = *(a1 + 32);
        *buf = 138412546;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        _os_log_impl(&dword_1883EA000, v21, OS_LOG_TYPE_INFO, "Trying to cancel a data task that isn't running %@ for %@", buf, 0x16u);
      }
    }
  }

  os_activity_scope_leave(&v34);
}

__CFString *CKStringFromPartition(uint64_t a1)
{
  v1 = @"Unknown Partition Type";
  if (a1 == 1)
  {
    v1 = @"Prod";
  }

  if (a1 == 2)
  {
    return @"Carry";
  }

  else
  {
    return v1;
  }
}

__CFString *CKStringFromDeviceToDeviceDataPrivacyStatus(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BC438[a1];
  }
}

__CFString *CKStringFromWalrusStatus(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BC438[a1];
  }
}

void sub_1885322B8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = 134218240;
    v8 = v5;
    v9 = 1024;
    v10 = geteuid();
    _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEFAULT, "Setting the in-memory account info validation counter to %ld for uid %u", &v7, 0x12u);
  }

  qword_1ED4B6018 = *(a1 + 32);
}

void *sub_1885323CC(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_188532744;
  v31[3] = &unk_1E70BC418;
  v31[4] = v3;
  CKOncePerBoot(@"CKAccountInfoCacheReset", v31);
  objc_opt_self();
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = geteuid();
  if (v5)
  {
    v8 = v5 == 501;
  }

  else
  {
    v8 = 1;
  }

  v9 = qword_1ED4B60D0;
  if (v8 && !qword_1ED4B60D0)
  {
    v10 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v6, v7);
    v12 = objc_msgSend_objectForKey_(v10, v11, @"CloudKitAccountInfoCache");
    v13 = qword_1ED4B60D0;
    qword_1ED4B60D0 = v12;

    v9 = qword_1ED4B60D0;
  }

  v14 = v9;
  objc_sync_exit(v4);

  v16 = objc_msgSend_objectForKey_(v14, v15, v2);

  if (!v16)
  {
    v18 = 0;
    objc_msgSend_setIsFromCache_(0, v17, 1);
    goto LABEL_26;
  }

  v30 = 0;
  v18 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(MEMORY[0x1E696ACD0], v17, v3, v16, &v30);
  v21 = v30;
  if (v21)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v21;
      _os_log_error_impl(&dword_1883EA000, v22, OS_LOG_TYPE_ERROR, "Failed to unarchive account info cache: %@", buf, 0xCu);
    }
  }

  else
  {
    valid = objc_msgSend_validAccountInfoValidationCounterValue(v3, v19, v20);
    v24 = valid;
    if (v18)
    {
      v25 = v18[2];
    }

    else
    {
      v25 = 0;
    }

    if (valid == v25)
    {
      goto LABEL_25;
    }

    if (!valid && qword_1ED4B60D8 != -1)
    {
      dispatch_once(&qword_1ED4B60D8, &unk_1EFA2E5E8);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      if (v18)
      {
        v29 = v18[2];
      }

      else
      {
        v29 = 0;
      }

      *buf = 134218240;
      v33 = v24;
      v34 = 2048;
      v35 = v29;
      _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "The cached account info is obsolete, not using it. currentValidationCounter: %zu, cached: %zu", buf, 0x16u);
    }
  }

  v18 = 0;
LABEL_25:

  objc_msgSend_setIsFromCache_(v18, v27, 1);
LABEL_26:

  return v18;
}

void sub_18853274C()
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_1883EA000, v0, OS_LOG_TYPE_FAULT, "Could not validate account info cache. (This is a potential performance issue.)", v1, 2u);
  }
}

void sub_1885329AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_sync_exit(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1885329D8(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_188532C14;
  v15[3] = &unk_1E70BBE90;
  v15[4] = &v16;
  CKOncePerBoot(@"AccountInfoValidationCounterReset", v15);
  if (v17[3])
  {
    v4 = 1;
  }

  else
  {
    if (__sTestOverridesAvailable)
    {
      v5 = @"TEST_AccountInfoValidationCounter";
    }

    else
    {
      v5 = @"AccountInfoValidationCounter";
    }

    v6 = v5;
    v8 = objc_msgSend_integerForKey_(v3, v7, v6);

    v4 = v8 + 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (__sTestOverridesAvailable)
  {
    v10 = @"TEST_AccountInfoValidationCounter";
  }

  else
  {
    v10 = @"AccountInfoValidationCounter";
  }

  v11 = v10;
  objc_msgSend_setInteger_forKey_(v3, v12, v9, v11);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v13 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v14 = *(*(*(a1 + 32) + 8) + 24);
    *buf = 134217984;
    v21 = v14;
    _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_INFO, "Invalidated adopter account info caches. validationCounter: %zu", buf, 0xCu);
  }

  _Block_object_dispose(&v16, 8);
}

void sub_188532BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CKSharingSummaryStringFromOptionsGroups(void *a1)
{
  v107 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v94 = [CKException alloc];
    v96 = objc_msgSend_initWithName_format_(v94, v95, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
    objc_exception_throw(v96);
  }

  v3 = v1;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v102, v106, 16);
  v98 = v3;
  if (!v4)
  {
    v92 = &stru_1EFA32970;
    goto LABEL_45;
  }

  v7 = v4;
  v100 = 0;
  v101 = 0;
  v8 = 0;
  isSelected = 0;
  v9 = 0;
  v10 = *v103;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v103 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v102 + 1) + 8 * i);
      v13 = objc_msgSend_identifier(v12, v5, v6);
      isEqualToString = objc_msgSend_isEqualToString_(v13, v14, @"CKSharingPermissionGroupID");

      if (isEqualToString)
      {
        v18 = v12;
        v21 = objc_msgSend_options(v18, v19, v20);
        v8 = objc_msgSend_count(v21, v22, v23);

        v26 = objc_msgSend_selectedOptionIdentifier(v18, v24, v25);
        v28 = objc_msgSend_isEqualToString_(v26, v27, @"CKSharingPermissionViewOnlyOptionID");

        if (v28)
        {
          v9 = @"RO";
        }

        else
        {
          v49 = objc_msgSend_selectedOptionIdentifier(v18, v29, v30);
          v51 = objc_msgSend_isEqualToString_(v49, v50, @"CKSharingPermissionCanMakeChangesOptionID");

          if (v51)
          {
            v9 = @"RW";
          }

          else
          {
            v68 = objc_msgSend_selectedOptionIdentifier(v18, v52, v53);
            v70 = objc_msgSend_isEqualToString_(v68, v69, @"CKSharingPermissionMixedOptionID");

            if (v70)
            {
              v9 = @"RO";
            }
          }
        }
      }

      else
      {
        v31 = objc_msgSend_identifier(v12, v16, v17);
        v33 = objc_msgSend_isEqualToString_(v31, v32, @"CKSharingWhoCanAccessGroupID");

        if (v33)
        {
          v18 = v12;
          v38 = objc_msgSend_options(v18, v36, v37);
          v100 = objc_msgSend_count(v38, v39, v40);

          v43 = objc_msgSend_selectedOptionIdentifier(v18, v41, v42);
          v45 = objc_msgSend_isEqualToString_(v43, v44, @"CKSharingAccessAnyoneWithLinkOptionID");

          if (v45)
          {
            v48 = @"anyone";
          }

          else
          {
            v65 = objc_msgSend_selectedOptionIdentifier(v18, v46, v47);
            v67 = objc_msgSend_isEqualToString_(v65, v66, @"CKSharingAccessSpecifiedRecipientsOnlyOptionID");

            v48 = v101;
            if (v67)
            {
              v48 = @"invited";
            }
          }

          v101 = v48;
        }

        else
        {
          v54 = objc_msgSend_identifier(v12, v34, v35);
          v56 = objc_msgSend_isEqualToString_(v54, v55, @"CKSharingAllowOthersToInviteGroupID");

          if (!v56)
          {
            continue;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v12;
            v61 = objc_msgSend_selectedOptionIdentifier(v18, v59, v60);
            if (objc_msgSend_isEqualToString_(v61, v62, @"CKSharingAllowOthersToInviteOptionID"))
            {
              isSelected = 1;
            }

            else
            {
              v81 = objc_msgSend_selectedOptionIdentifier(v18, v63, v64);
              v83 = objc_msgSend_isEqualToString_(v81, v82, @"CKSharingAllowOthersToInviteMixedOptionID");

              isSelected |= v83;
              v3 = v98;
            }
          }

          else
          {
            v71 = objc_msgSend_options(v12, v57, v58);
            v18 = objc_msgSend_firstObject(v71, v72, v73);

            v76 = objc_msgSend_identifier(v18, v74, v75);
            v78 = objc_msgSend_isEqualToString_(v76, v77, @"CKSharingAllowOthersToInviteOptionID");

            if (v78)
            {
              isSelected = objc_msgSend_isSelected(v18, v79, v80);
            }

            v3 = v98;
          }
        }
      }
    }

    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v102, v106, 16);
  }

  while (v7);
  if (v8 == 1 && v100 == 1 && objc_msgSend_isEqualToString_(v9, v5, @"RW") && objc_msgSend_isEqualToString_(v101, v5, @"invited"))
  {
    v84 = @"COLLABORATION_OPTIONS_SUMMARY_invited_RW_no_invite";
    if (isSelected)
    {
      v84 = @"COLLABORATION_OPTIONS_SUMMARY_invited_RW_allow_invite";
    }

    v91 = v84;
LABEL_43:
    v92 = CKLocalizedString(v91, &stru_1EFA32970, v85, v86, v87, v88, v89, v90, v97);
  }

  else
  {
    v92 = &stru_1EFA32970;
    if (v101)
    {
      if (v9)
      {
        v97 = v101;
        v91 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"COLLABORATION_OPTIONS_SUMMARY_%@_%@");
        if (v91)
        {
          goto LABEL_43;
        }
      }
    }
  }

LABEL_45:

  return v92;
}

uint64_t CKSharingAccessTypeFromOptionsGroups(void *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v40 = [CKException alloc];
    v42 = objc_msgSend_initWithName_format_(v40, v41, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
    goto LABEL_25;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v56, v60, 16);
  if (!v3)
  {

    goto LABEL_24;
  }

  v6 = v3;
  v7 = 0;
  v8 = 0;
  v9 = *v57;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v57 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v56 + 1) + 8 * i);
      v12 = objc_msgSend_identifier(v11, v4, v5);
      isEqualToString = objc_msgSend_isEqualToString_(v12, v13, @"CKSharingWhoCanAccessGroupID");

      if (isEqualToString)
      {
        v17 = v7;
        v7 = v11;
        v18 = v8;
      }

      else
      {
        v19 = objc_msgSend_identifier(v11, v15, v16);
        v21 = objc_msgSend_isEqualToString_(v19, v20, @"CKSharingPermissionGroupID");

        v17 = v8;
        v18 = v11;
        if (!v21)
        {
          continue;
        }
      }

      v22 = v11;

      v8 = v18;
    }

    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v56, v60, 16);
  }

  while (v6);

  if (!v7)
  {
LABEL_24:
    v43 = [CKException alloc];
    v42 = objc_msgSend_initWithName_format_(v43, v44, *MEMORY[0x1E695D940], @"Could not find any access picker group in optionsGroups: %@", obj);
    goto LABEL_25;
  }

  v25 = objc_msgSend_selectedOptionIdentifier(v7, v23, v24);
  v27 = objc_msgSend_isEqualToString_(v25, v26, @"CKSharingAccessAnyoneWithLinkOptionID");

  if (!v27)
  {
    v35 = 1;
    goto LABEL_21;
  }

  if (!v8)
  {
    v45 = [CKException alloc];
    v42 = objc_msgSend_initWithName_format_(v45, v46, *MEMORY[0x1E695D940], @"Could not find any permission picker group for anyone-with-link case optionsGroups: %@", obj);
LABEL_25:
    objc_exception_throw(v42);
  }

  v30 = objc_msgSend_selectedOptionIdentifier(v8, v28, v29);
  v32 = objc_msgSend_isEqualToString_(v30, v31, @"CKSharingPermissionViewOnlyOptionID");

  if (v32)
  {
    v35 = 2;
  }

  else
  {
    v36 = objc_msgSend_selectedOptionIdentifier(v8, v33, v34);
    v38 = objc_msgSend_isEqualToString_(v36, v37, @"CKSharingPermissionCanMakeChangesOptionID");

    if ((v38 & 1) == 0)
    {
      v47 = [CKException alloc];
      v48 = *MEMORY[0x1E695D940];
      v51 = objc_msgSend_selectedOptionIdentifier(v8, v49, v50);
      v53 = objc_msgSend_initWithName_format_(v47, v52, v48, @"Unknown permission group selected option %@ for anyone-with-link case optionsGroups: %@", v51, obj);
      v54 = v53;

      objc_exception_throw(v53);
    }

    v35 = 3;
  }

LABEL_21:

  return v35;
}

uint64_t CKSharingPermissionTypeFromOptionsGroups(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v35 = [CKException alloc];
    v34 = objc_msgSend_initWithName_format_(v35, v36, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
LABEL_20:
    objc_exception_throw(v34);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v2 = v1;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v45, v49, 16);
  if (!v4)
  {
    goto LABEL_10;
  }

  v7 = v4;
  v8 = *v46;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v46 != v8)
    {
      objc_enumerationMutation(v2);
    }

    v10 = *(*(&v45 + 1) + 8 * v9);
    v11 = objc_msgSend_identifier(v10, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"CKSharingPermissionGroupID");

    if (isEqualToString)
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v45, v49, 16);
      if (!v7)
      {
LABEL_10:

        goto LABEL_18;
      }

      goto LABEL_4;
    }
  }

  v14 = v10;

  if (!v14)
  {
LABEL_18:
    v32 = [CKException alloc];
    v34 = objc_msgSend_initWithName_format_(v32, v33, *MEMORY[0x1E695D940], @"Could not find any permission picker group in optionsGroups: %@", v2);
    goto LABEL_20;
  }

  v17 = objc_msgSend_selectedOptionIdentifier(v14, v15, v16);
  v19 = objc_msgSend_isEqualToString_(v17, v18, @"CKSharingPermissionViewOnlyOptionID");

  if (v19)
  {
LABEL_16:
    v27 = 2;
    goto LABEL_17;
  }

  v22 = objc_msgSend_selectedOptionIdentifier(v14, v20, v21);
  v24 = objc_msgSend_isEqualToString_(v22, v23, @"CKSharingPermissionCanMakeChangesOptionID");

  if ((v24 & 1) == 0)
  {
    v28 = objc_msgSend_selectedOptionIdentifier(v14, v25, v26);
    v30 = objc_msgSend_isEqualToString_(v28, v29, @"CKSharingPermissionMixedOptionID");

    if ((v30 & 1) == 0)
    {
      v37 = [CKException alloc];
      v38 = *MEMORY[0x1E695D940];
      v41 = objc_msgSend_selectedOptionIdentifier(v14, v39, v40);
      v43 = objc_msgSend_initWithName_format_(v37, v42, v38, @"Unknown permission group selected option %@ for optionsGroups: %@", v41, v2, v45);
      v44 = v43;

      objc_exception_throw(v43);
    }

    goto LABEL_16;
  }

  v27 = 3;
LABEL_17:

  return v27;
}

uint64_t CKSharingAllowOthersToInviteFromOptionsGroups(void *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v49 = [CKException alloc];
    v51 = objc_msgSend_initWithName_format_(v49, v50, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
    objc_exception_throw(v51);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v2 = v1;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v63, v67, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v64;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v64 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v63 + 1) + 8 * i);
        v11 = objc_msgSend_identifier(v10, v5, v6);
        isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"CKSharingAllowOthersToInviteGroupID");

        if (isEqualToString)
        {
          v14 = v10;
          goto LABEL_12;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v63, v67, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  v17 = objc_msgSend_options(v14, v15, v16);
  isSelected = objc_msgSend_count(v17, v18, v19);

  if (isSelected)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v14;
      v26 = objc_msgSend_selectedOptionIdentifier(v23, v24, v25);
      if (objc_msgSend_isEqualToString_(v26, v27, @"CKSharingAllowOthersToInviteOptionID"))
      {

LABEL_19:
        isSelected = 1;
        goto LABEL_22;
      }

      v40 = objc_msgSend_selectedOptionIdentifier(v23, v28, v29);
      v42 = objc_msgSend_isEqualToString_(v40, v41, @"CKSharingAllowOthersToInviteMixedOptionID");

      if (v42)
      {
        goto LABEL_19;
      }

      v45 = objc_msgSend_selectedOptionIdentifier(v23, v43, v44);
      v47 = objc_msgSend_isEqualToString_(v45, v46, @"CKSharingOnlyYouCanInviteOthersOptionID");

      if (v47)
      {
        isSelected = 0;
        goto LABEL_22;
      }

      v52 = [CKException alloc];
      v53 = *MEMORY[0x1E695D940];
      v56 = objc_msgSend_selectedOptionIdentifier(v23, v58, v59);
    }

    else
    {
      v30 = objc_msgSend_options(v14, v21, v22);
      v23 = objc_msgSend_firstObject(v30, v31, v32);

      v35 = objc_msgSend_identifier(v23, v33, v34);
      v37 = objc_msgSend_isEqualToString_(v35, v36, @"CKSharingAllowOthersToInviteOptionID");

      if (v37)
      {
        isSelected = objc_msgSend_isSelected(v23, v38, v39);
LABEL_22:

        goto LABEL_23;
      }

      v52 = [CKException alloc];
      v53 = *MEMORY[0x1E695D940];
      v56 = objc_msgSend_identifier(v23, v54, v55);
    }

    v60 = v56;
    v61 = objc_msgSend_initWithName_format_(v52, v57, v53, @"Unknown admin group selection option %@ for optionsGroups: %@", v56, v2, v63);
    v62 = v61;

    objc_exception_throw(v61);
  }

LABEL_23:

  return isSelected;
}

uint64_t CKSharingAllowAccessRequestsFromOptionsGroups(void *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v37 = [CKException alloc];
    v39 = objc_msgSend_initWithName_format_(v37, v38, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
    objc_exception_throw(v39);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v2 = v1;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v48, v52, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v49;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v11 = objc_msgSend_identifier(v10, v5, v6);
        isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"CKSharingAllowAccessRequestsGroupID");

        if (isEqualToString)
        {
          v14 = v10;
          goto LABEL_12;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v48, v52, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  v17 = objc_msgSend_options(v14, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = objc_msgSend_selectedOptionIdentifier(v14, v21, v22);
      isSelected = objc_msgSend_isEqualToString_(v23, v24, @"CKSharingAllowAccessRequestsOptionID");
    }

    else
    {
      v26 = objc_msgSend_options(v14, v21, v22);
      v23 = objc_msgSend_firstObject(v26, v27, v28);

      v31 = objc_msgSend_identifier(v23, v29, v30);
      v33 = objc_msgSend_isEqualToString_(v31, v32, @"CKSharingAllowAccessRequestsOptionID");

      if (!v33)
      {
        v40 = [CKException alloc];
        v41 = *MEMORY[0x1E695D940];
        v44 = objc_msgSend_identifier(v23, v42, v43);
        v46 = objc_msgSend_initWithName_format_(v40, v45, v41, @"Unknown access request option %@ in switch style group: %@", v44, v2, v48);
        v47 = v46;

        objc_exception_throw(v46);
      }

      isSelected = objc_msgSend_isSelected(v23, v34, v35);
    }

    v20 = isSelected;
  }

  return v20;
}

__CFString *CKStringFromServerEnvironment(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BCF68[a1];
  }
}

char *CKServerEnvironmentFromString(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_lowercaseString(a1, a2, a3);
  if (objc_msgSend_hasPrefix_(v3, v4, @"icloud"))
  {
    v6 = objc_msgSend_substringWithRange_(v3, v5, 6, 1);
    v9 = objc_msgSend_integerValue(v6, v7, v8);
    if ((v9 - 1) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__CFString *CKStringFromAccountChangeType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BCFA0[a1 - 1];
  }
}

__CFString *CKStringFromApplicationPermissionStatus(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown status";
  }

  else
  {
    return off_1E70BCFF0[a1];
  }
}

void sub_188537C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_188537CE0(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1883EA000, "CKStatusReport", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = WeakRetained;
      _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Building status report for %@", buf, 0xCu);
    }

    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = sub_1886CEDB0(v5);
    sub_188537F84(v6);

    v7 = sub_1886CEDB0(v5[8]);
    sub_188537F84(v7);

    v8 = sub_1886CEDB0(v5[9]);
    sub_188537F84(v8);

    v9 = sub_1886CEDB0(v5[10]);
    sub_188537F84(v9);

    v10 = sub_1886CEDB0(v5[11]);
    sub_188537F84(v10);

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v5[18];
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v23, 16);
    if (v13)
    {
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = sub_1886CEDB0(*(*(&v18 + 1) + 8 * i));
          sub_188537F84(v16);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v18, v23, 16);
      }

      while (v13);
    }

    objc_sync_exit(v5);
  }

  os_activity_scope_leave(&state);
}

void sub_188537F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state)
{
  objc_sync_exit(v17);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_188537F84(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v3 = 138543362;
      v4 = v1;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Status report from notification: %{public}@", &v3, 0xCu);
    }
  }
}

id sub_1885381D4(void *a1, void *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v60 = a3;
  v8 = a4;
  v58 = v8;
  if (a1)
  {
    if (v8)
    {
      v10 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v9, v8, 0);
      objc_msgSend_applyDefaultParametersToServiceURLComponents_(CKCodeFunctionInvokeOperationInfo, v11, v10);
      v14 = objc_msgSend_URL(v10, v12, v13);
    }

    else
    {
      v14 = 0;
    }

    v16 = a1;
    objc_sync_enter(v16);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v59 = v16;
    v19 = objc_msgSend_codeServiceImplementations(v16, v17, v18);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v61, v71, 16);
    if (v23)
    {
      v24 = *v62;
LABEL_8:
      v25 = 0;
      while (1)
      {
        if (*v62 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v61 + 1) + 8 * v25);
        v27 = objc_msgSend_serviceName(v26, v21, v22);
        isEqualToString = objc_msgSend_isEqualToString_(v27, v28, v7);

        if (isEqualToString)
        {
          v30 = objc_msgSend_boxedDatabaseScope(v26, v21, v22);
          v33 = v30;
          if (v30 == v60)
          {

LABEL_16:
            v37 = objc_msgSend_serviceInstanceURL(v26, v21, v22);
            v40 = v37;
            if (v37 == v14)
            {

LABEL_28:
              inited = v26;

              v49 = v59;
              goto LABEL_29;
            }

            v41 = objc_msgSend_serviceInstanceURL(v26, v38, v39);
            isEqual = objc_msgSend_isEqual_(v41, v42, v14);

            if (isEqual)
            {
              goto LABEL_28;
            }

            goto LABEL_18;
          }

          v34 = objc_msgSend_boxedDatabaseScope(v26, v31, v32);
          v36 = objc_msgSend_isEqual_(v34, v35, v60);

          if (v36)
          {
            goto LABEL_16;
          }
        }

LABEL_18:
        if (v23 == ++v25)
        {
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v61, v71, 16);
          if (v23)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v44 = ck_log_facility_ck;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v54 = objc_msgSend_intValue(v60, v45, v46);
      v57 = objc_msgSend_containerID(v59, v55, v56);
      *buf = 138412802;
      v66 = v7;
      v67 = 1024;
      v68 = v54;
      v69 = 2112;
      v70 = v57;
      _os_log_debug_impl(&dword_1883EA000, v44, OS_LOG_TYPE_DEBUG, "Creating code service implementation for serviceName %@ (scope: %d) in container %@", buf, 0x1Cu);
    }

    if (!v59[18])
    {
      v47 = objc_opt_new();
      v48 = v59[18];
      v59[18] = v47;
    }

    v49 = v59;
    v50 = [CKCodeServiceImplementation alloc];
    inited = objc_msgSend_initInternalWithContainerImplementation_serviceName_boxedDatabaseScope_serviceInstanceURL_(v50, v51, v59, v7, v60, v14);
    objc_msgSend_addObject_(v59[18], v52, inited);
LABEL_29:
    objc_sync_exit(v49);
  }

  else
  {
    inited = 0;
  }

  return inited;
}

void sub_1885387A0(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = v3;
  if (a1 && objc_msgSend_count(v3, v4, v5))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v6;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v23, v31, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend_longLongValue(*(*(&v23 + 1) + 8 * i), v10, v11, v23);
          sandbox_extension_release();
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v23, v31, 16);
      }

      while (v12);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v16 = v15;
      v19 = objc_msgSend_count(v7, v17, v18);
      v22 = objc_msgSend_containerID(a1, v20, v21);
      *buf = 134218242;
      v28 = v19;
      v29 = 2112;
      v30 = v22;
      _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Released %lu sandbox extensions for container %@", buf, 0x16u);
    }
  }
}

void sub_188539328(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v7 = objc_msgSend_ckShortDescription(v3, v5, v6);
    v9 = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v8, @"CKErrorDomain", 5, v4, @"Failed to perform block with persona %@", v7);
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_188539550(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_1885395C8(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188539654;
  v4[3] = &unk_1E70BC568;
  v5 = *(a1 + 32);
  objc_msgSend_getPersona_(a2, v3, v4);
}

void sub_188539654(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
    (*(v3 + 16))(v3, v5, v8);
  }
}

BOOL sub_1885397AC()
{
  result = _CKUseSystemInstalledBinaries();
  _sCKUseSystemInstalledBinaries = result;
  return result;
}

void sub_1885397D0(void *a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a1)
  {
    objc_initWeak(&location, a1);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_188539A7C;
    aBlock[3] = &unk_1E70BC5B8;
    objc_copyWeak(v34, &location);
    v34[1] = a3;
    v31 = v11;
    v35 = a2;
    v32 = v12;
    v14 = v13;
    v33 = v14;
    v15 = _Block_copy(aBlock);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_188539DA0;
    v26[3] = &unk_1E70BC5E0;
    v29 = a2;
    v27 = v14;
    v16 = v15;
    v28 = v16;
    v17 = v26;
    v18 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(a1, v19, v18) && __sTestOverridesAvailable == 1 && byte_1EA919CC8 == 1)
    {
      v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v20, v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, sel__getContainerScopedDaemonProxyCreatorSynchronous_completionHandler_, a1, @"CKContainer.m", 831, @"In a testing process, some silly code decided to xpc from a non-test CKContainer");
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_188539E5C;
    v37[3] = &unk_1E70BC658;
    v37[4] = a1;
    v24 = v17;
    v38 = v24;
    v39 = a2;
    objc_msgSend_performBlock_(a1, v25, v37);

    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }
}

void sub_188539A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_188539A7C(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained || !objc_msgSend_CKIsXPCConnectionError(v3, v4, v5))
  {
    goto LABEL_16;
  }

  sub_188539C88(WeakRetained, v7, v8);
  if (!*(a1 + 64) || (v9 = *(a1 + 32)) != 0 && !(*(v9 + 16))(v9, v3))
  {
    if (!*(a1 + 40))
    {
      goto LABEL_17;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v3;
      _os_log_debug_impl(&dword_1883EA000, v11, OS_LOG_TYPE_DEBUG, "Exhausted automatic retries getting container proxy, failing with error for %@: %@", &v12, 0x16u);
    }

LABEL_16:
    (*(*(a1 + 40) + 16))();
    goto LABEL_17;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v10 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = WeakRetained;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1883EA000, v10, OS_LOG_TYPE_INFO, "Automatically retrying getting container proxy due to error for %@: %@", &v12, 0x16u);
  }

  sub_1885397D0(WeakRetained, *(a1 + 72), (*(a1 + 64) - 1), *(a1 + 32), *(a1 + 40), *(a1 + 48));
LABEL_17:
}

void sub_188539C88(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(*(a1 + 240), a2, a3);
  v4 = *(a1 + 57);
  *(a1 + 57) = 0;
  objc_msgSend_unlock(*(a1 + 240), v5, v6);
  if (v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = a1;
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v16, 0xCu);
    }

    v10 = objc_msgSend_deviceContext(a1, v8, v9);
    v13 = objc_msgSend_deviceScopedStateManager(v10, v11, v12);
    objc_msgSend_resetThrottles(v13, v14, v15);
  }
}

void sub_188539DA0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_188539E5C(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v5 = *(a1 + 32);
    objc_sync_enter(v5);
    v6 = *(a1 + 32);
    if (!v6 || !v6[27])
    {
      objc_initWeak(location, v6);
      v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_18853A1F0;
      v32[3] = &unk_1E70BC608;
      objc_copyWeak(&v33, location);
      v11 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v9, v10, @"CKXPCConnectionInterrupted", 0, 0, v32);
      v12 = *(a1 + 32);
      if (v12)
      {
        objc_storeStrong((v12 + 216), v11);
      }

      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }

    objc_sync_exit(v5);

    v15 = *(a1 + 32);
    if (v15)
    {
      objc_msgSend_lock(*(v15 + 240), v13, v14);
    }

    else
    {
      objc_msgSend_lock(0, v13, v14);
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      if (*(v18 + 57))
      {
        v19 = *(v18 + 208);
        v18 = *(a1 + 32);
        if (!v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v19 = 0;
      }

      objc_msgSend_unlock(*(v18 + 240), v16, v17);
LABEL_20:
      if (v19)
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v20 = sub_1885AADF8([CKContainerCallbackProxy alloc], *(a1 + 32));
        v23 = objc_msgSend_connection(*(a1 + 32), v21, v22);
        v26 = objc_msgSend_setupInfo(*(a1 + 32), v24, v25);
        v27 = *(a1 + 48);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_18853A2DC;
        v30[3] = &unk_1E70BC630;
        v30[4] = *(a1 + 32);
        v31 = *(a1 + 40);
        objc_msgSend_getContainerScopedDaemonProxyCreatorForContainerSetupInfo_exportedProxy_synchronous_completionHandler_(v23, v28, v26, v20, v27, v30);
      }

      goto LABEL_24;
    }

    v19 = 0;
LABEL_27:
    objc_msgSend_unlock(0, v16, v17);
    goto LABEL_20;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v29 = *(a1 + 32);
    *location = 138412546;
    *&location[4] = v29;
    v35 = 2112;
    v36 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Failed to get container proxy for %@: %@", location, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_24:
}

void sub_18853A1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

void sub_18853A1F0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted for %@", &v5, 0xCu);
    }

    sub_188539C88(WeakRetained, v3, v4);
  }
}

void sub_18853A2DC(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v9 = a3;
  if (v6)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      objc_msgSend_lock(*(v10 + 240), v7, v8);
    }

    else
    {
      objc_msgSend_lock(0, v7, v8);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 208);
      if (v12)
      {
        v13 = *(a1 + 32);
        if (v13)
        {
          v14 = *(v13 + 57);

          if (v14)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v15 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
            {
              v16 = *(a1 + 32);
              v28 = 138412546;
              v29 = v16;
              v30 = 2112;
              v31 = v6;
              _os_log_impl(&dword_1883EA000, v15, OS_LOG_TYPE_INFO, "Ignoring superfluous container proxy for %@: %@", &v28, 0x16u);
            }

            v17 = *(a1 + 32);
            if (v17)
            {
              v17 = v17[26];
            }

            v18 = v17;

            v6 = v18;
LABEL_29:
            v27 = *(a1 + 32);
            if (v27)
            {
              objc_msgSend_unlock(*(v27 + 240), v19, v20);
            }

            else
            {
              objc_msgSend_unlock(0, v19, v20);
            }

            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      v23 = *(a1 + 32);
      if (v23)
      {
        objc_storeStrong((v23 + 208), a2);
        v24 = *(a1 + 32);
        if (v24)
        {
          *(v24 + 57) = 1;
        }
      }
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 32);
      v28 = 138412546;
      v29 = v26;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_1883EA000, v25, OS_LOG_TYPE_INFO, "Got a container proxy for %@: %@", &v28, 0x16u);
    }

    goto LABEL_29;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v22 = *(a1 + 32);
    v28 = 138412546;
    v29 = v22;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_1883EA000, v21, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get container proxy for %@: %@", &v28, 0x16u);
  }

  v6 = 0;
LABEL_31:
  (*(*(a1 + 40) + 16))();
}

void sub_18853A86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18853A8B8(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = WeakRetained;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Discretionary connection was interrupted: %@", &v3, 0xCu);
  }
}

void sub_18853A998(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v7, 0xCu);
    }

    objc_msgSend_lock(WeakRetained[30], v3, v4);
    *(WeakRetained + 58) = 0;
    objc_msgSend_unlock(WeakRetained[30], v5, v6);
  }
}

void sub_18853B2A0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853B318(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18853B3A8;
  v5[3] = &unk_1E70BC6A8;
  v3 = *(a1 + 40);
  v6 = *(a1 + 32);
  objc_msgSend_statusGroupsForApplicationPermission_completionHandler_(a2, v4, v3, v5);
}

void sub_18853B3A8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_18853B598(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 1, v4);
  }
}

void sub_18853B610(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18853B6B0;
  v6[3] = &unk_1E70BC6F8;
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  objc_msgSend_setApplicationPermission_enabled_completionHandler_(a2, v5, v4, v3, v6);
}

void sub_18853B6B0(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
    (*(v3 + 16))(v3, a2, v5);
  }
}

void sub_18853B888(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853B8FC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853B988;
  v4[3] = &unk_1E70BC540;
  v5 = *(a1 + 32);
  objc_msgSend_resetAllApplicationPermissionsWithCompletionHandler_(a2, v3, v4);
}

void sub_18853B988(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853BB58(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853BBCC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853BC58;
  v4[3] = &unk_1E70BC540;
  v5 = *(a1 + 32);
  objc_msgSend_tossConfigWithCompletionHandler_(a2, v3, v4);
}

void sub_18853BC58(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853C064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, os_activity_scope_state_s state)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_18853C094(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch server preferred push environment: %@", &v12, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "Successfully fetched server preferred push environment: %{public}@", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    objc_msgSend_setPushEnvironment_(WeakRetained, v10, v5);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }
}

void sub_18853C4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18853C4F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_18853C6E0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853C758(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853C7E4;
  v4[3] = &unk_1E70BC798;
  v5 = *(a1 + 32);
  objc_msgSend_serverPreferredPushEnvironmentWithCompletionHandler_(a2, v3, v4);
}

void sub_18853C7E4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_18853C9E4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "IRONY. Errored out talking to daemon while trying to set a fake error for class name %{public}@, check your syslog", &v6, 0xCu);
  }
}

void sub_18853CCA4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "IRONY. Errored out talking to daemon while trying to set a fake operation result for class name %{public}@, check your syslog", &v6, 0xCu);
  }
}

void sub_18853CF10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853CF88(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853D014;
  v4[3] = &unk_1E70BC830;
  v5 = *(a1 + 32);
  objc_msgSend_getOutstandingOperationCountWithCompletionHandler_(a2, v3, v4);
}

void sub_18853D014(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_18853D1D8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853D250(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853D2DC;
  v4[3] = &unk_1E70BC830;
  v5 = *(a1 + 32);
  objc_msgSend_getRegisteredItemCountWithCompletionHandler_(a2, v3, v4);
}

void sub_18853D2DC(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_18853D4A0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853D514(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853D5A0;
  v4[3] = &unk_1E70BC540;
  v5 = *(a1 + 32);
  objc_msgSend_dropDetachedContainersWithCompletionHandler_(a2, v3, v4);
}

void sub_18853D5A0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_18853D694(uint64_t a1, CKSignatureGenerator *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = a2;
    v6 = [CKSignatureGenerator alloc];
    a2 = objc_msgSend_initWithBoundaryKey_(v6, v7, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_18853D900(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Error fetching boundary key: %@", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
    (*(v7 + 16))(v7, 0, v8);
  }
}

void sub_18853DA20(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853DAAC;
  v4[3] = &unk_1E70BC858;
  v5 = *(a1 + 32);
  objc_msgSend_globalPerUserBoundaryKeyWithCompletionHandler_(a2, v3, v4);
}

void sub_18853DAAC(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v7;
    v16 = objc_msgSend_length(v5, v14, v15);
    v18 = objc_msgSend_stringWithFormat_(v12, v17, @"<%lu bytes>", v16);
    v19 = @". Error was ";
    v20 = &stru_1EFA32970;
    *buf = 138543874;
    v22 = v18;
    if (v6)
    {
      v20 = v6;
    }

    else
    {
      v19 = &stru_1EFA32970;
    }

    v23 = 2114;
    v24 = v19;
    v25 = 2112;
    v26 = v20;
    _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Boundary key is %{public}@%{public}@%@", buf, 0x20u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = objc_msgSend_CKClientSuitableError(v6, v8, v9);
    (*(v10 + 16))(v10, v5, v11);
  }
}

void sub_18853DFE0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing metadata cache, check your syslog", v4, 2u);
  }
}

void sub_18853E19C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing PILS cache, check your syslog", v4, 2u);
  }
}

void sub_18853E3AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while requesting dataclass status from account, check your syslog", v9, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
    (*(v7 + 16))(v7, 0, v8);
  }
}

void sub_18853E494(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853E520;
  v4[3] = &unk_1E70BC8C8;
  v5 = *(a1 + 32);
  objc_msgSend_representativeDataclassEnabledWithCompletionHandler_(a2, v3, v4);
}

void sub_18853E520(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_18853E6E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while retrieving session validity error, check your syslog", v9, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
    (*(v7 + 16))(v7, 0, v8);
  }
}

void sub_18853E7CC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853E858;
  v4[3] = &unk_1E70BC8F0;
  v5 = *(a1 + 32);
  objc_msgSend_getCloudCoreSessionValidityError_(a2, v3, v4);
}

void sub_18853E858(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v11 = objc_msgSend_CKClientSuitableError(a2, v6, v7);
  v10 = objc_msgSend_CKClientSuitableError(v5, v8, v9);

  (*(v4 + 16))(v4, v11, v10);
}

void sub_18853EA44(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, -1, v4);
  }
}

void sub_18853EABC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853EB48;
  v4[3] = &unk_1E70BC6F8;
  v5 = *(a1 + 32);
  objc_msgSend_serverEnvironmentWithCompletionHandler_(a2, v3, v4);
}

void sub_18853EB48(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_18853ED0C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853ED84(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853EE10;
  v4[3] = &unk_1E70BC798;
  v5 = *(a1 + 32);
  objc_msgSend_currentDeviceIDWithCompletionHandler_(a2, v3, v4);
}

void sub_18853EE10(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_18853EFE8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

void sub_18853F064(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853F0F0;
  v4[3] = &unk_1E70BC918;
  v5 = *(a1 + 32);
  objc_msgSend_displayInfoOnAccountWithCompletionHandler_(a2, v3, v4);
}

void sub_18853F0F0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v8 = a3;
    v9 = a2;
    v12 = objc_msgSend_CKClientSuitableError(a5, v10, v11);
    (*(v5 + 16))(v5, v9, v8, v12);
  }
}

void sub_18853F2F4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

void sub_18853F370(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853F3FC;
  v4[3] = &unk_1E70BC918;
  v5 = *(a1 + 32);
  objc_msgSend_displayInfoOnAccountWithCompletionHandler_(a2, v3, v4);
}

void sub_18853F3FC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v8 = a4;
    v9 = a2;
    v12 = objc_msgSend_CKClientSuitableError(a5, v10, v11);
    (*(v5 + 16))(v5, v9, v8, v12);
  }
}

void sub_18853F9A4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v10 = objc_msgSend_metricUUID(v6, v8, v9);
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Error reaching cloudd to submit CKEventMetric %{public}@: %@", &v11, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_18853FAD8(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = v3 == 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18853FB84;
  v7[3] = &unk_1E70BC940;
  v5 = a1[4];
  v7[4] = a1[5];
  v8 = v3;
  objc_msgSend_submitClientEventMetric_completeWhenQueued_completionHandler_(a2, v6, v5, v4, v7);
}

uint64_t sub_18853FB84(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_18853FE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18853FE4C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error retrieving daemon to get network transfer endpoint: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

uint64_t sub_18853FF48(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_18853FFBC;
  v3[3] = &unk_1E70BC9B8;
  v4 = *(a1 + 32);
  return objc_msgSend_networkTransferEndpointWithCompletionHandler_(a2, a2, v3);
}

void sub_18853FFBC(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v22 = v17;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Error getting network transfer endpoint: %@", buf, 0xCu);
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
    goto LABEL_16;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_ck;
  if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_14:
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKInternalErrorDomain", 1000, @"No endpoint dictionary received from daemon");
    goto LABEL_15;
  }

  v18 = *(*(*(a1 + 40) + 8) + 40);
  *buf = 138412290;
  v22 = v18;
  _os_log_debug_impl(&dword_1883EA000, v11, OS_LOG_TYPE_DEBUG, "Received network transfer endpoint: %@", buf, 0xCu);
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_11:
  v13 = nw_endpoint_create_from_dictionary();
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKInternalErrorDomain", 1000, @"Failed to convert endpoint dictionary: %@", v5);
    v19 = LABEL_15:;
    v20 = *(*(a1 + 32) + 8);
    v10 = *(v20 + 40);
    *(v20 + 40) = v19;
LABEL_16:
  }
}

void sub_188540494(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18854050C(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188540598;
  v4[3] = &unk_1E70BC798;
  v5 = *(a1 + 32);
  objc_msgSend_frameworkCachesDirectoryWithCompletionHandler_(a2, v3, v4);
}

void sub_188540598(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
    (*(v3 + 16))(v3, v5, v8);
  }
}

void sub_188540B88(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_188540BE8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188540C78;
  v5[3] = &unk_1E70BC540;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_msgSend_dumpDaemonStatusReportToFileHandle_completionHandler_(a2, v4, v3, v5);
}

void sub_188540C78(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_188541074(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Failed to simulate memory pressure with error: %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_188541178(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188541208;
  v5[3] = &unk_1E70BC540;
  v3 = *(a1 + 40);
  v6 = *(a1 + 32);
  objc_msgSend_handleMemoryPressure_completionHandler_(a2, v4, v3, v5);
}

void sub_188541208(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Failed to simulate memory pressure with error: %@", &v7, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Successfully simulated memory pressure", &v7, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t sub_1885417B4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v8 = v5;
    if (a3)
    {
      v5 = objc_msgSend_setOrgAdminUserID_(a1, v5, v5);
    }

    else
    {
      v5 = objc_msgSend_setContainerScopedUserID_(a1, v5, v5);
    }

    v6 = v8;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

id sub_188541820(void *a1, uint64_t a2, id a3)
{
  if (a1)
  {
    if (a2 == 1)
    {
      v3 = objc_msgSend_orgAdminUserID(a1, 1, a3);
    }

    else
    {
      if (a2)
      {
        goto LABEL_7;
      }

      v3 = objc_msgSend_containerScopedUserID(a1, 0, a3);
    }

    a3 = v3;
  }

  else
  {
    a3 = 0;
  }

LABEL_7:

  return a3;
}