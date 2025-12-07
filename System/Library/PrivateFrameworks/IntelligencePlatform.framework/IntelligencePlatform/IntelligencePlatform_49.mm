unint64_t sub_1ABE3C324()
{
  result = qword_1EB4DAE48;
  if (!qword_1EB4DAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE48);
  }

  return result;
}

unint64_t sub_1ABE3C378()
{
  result = qword_1EB4D0188;
  if (!qword_1EB4D0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0188);
  }

  return result;
}

unint64_t sub_1ABE3C3CC()
{
  result = qword_1EB4D0190;
  if (!qword_1EB4D0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0190);
  }

  return result;
}

unint64_t sub_1ABE3C450()
{
  result = qword_1EB4DAE60;
  if (!qword_1EB4DAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE60);
  }

  return result;
}

unint64_t sub_1ABE3C4A8()
{
  result = qword_1EB4DAE68;
  if (!qword_1EB4DAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE68);
  }

  return result;
}

uint64_t sub_1ABE3C538(uint64_t result, char a2)
{
  v2 = *(result + 104) & 0xE1 | (16 * (a2 & 1));
  *(result + 88) &= 1uLL;
  *(result + 104) = v2;
  return result;
}

uint64_t sub_1ABE3C568(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1ABE3C5B0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 105) = 1;
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
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 0;
      *(a1 + 88) = 2 * -a2;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABE3C660(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABE3C74C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE3C7FC()
{
  result = qword_1EB4DAE70;
  if (!qword_1EB4DAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE70);
  }

  return result;
}

unint64_t sub_1ABE3C854()
{
  result = qword_1EB4DAE78;
  if (!qword_1EB4DAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE78);
  }

  return result;
}

unint64_t sub_1ABE3C8AC()
{
  result = qword_1EB4DAE80;
  if (!qword_1EB4DAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE80);
  }

  return result;
}

unint64_t sub_1ABE3C904()
{
  result = qword_1EB4DAE88;
  if (!qword_1EB4DAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE88);
  }

  return result;
}

unint64_t sub_1ABE3C95C()
{
  result = qword_1EB4DAE90;
  if (!qword_1EB4DAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAE90);
  }

  return result;
}

unint64_t sub_1ABE3C9B4()
{
  result = qword_1EB4D0178;
  if (!qword_1EB4D0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0178);
  }

  return result;
}

unint64_t sub_1ABE3CA0C()
{
  result = qword_1EB4D0180;
  if (!qword_1EB4D0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0180);
  }

  return result;
}

unint64_t sub_1ABE3CA64()
{
  result = qword_1EB4D01E0;
  if (!qword_1EB4D01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01E0);
  }

  return result;
}

unint64_t sub_1ABE3CABC()
{
  result = qword_1EB4D01E8;
  if (!qword_1EB4D01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01E8);
  }

  return result;
}

unint64_t sub_1ABE3CB14()
{
  result = qword_1EB4D01B0;
  if (!qword_1EB4D01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01B0);
  }

  return result;
}

unint64_t sub_1ABE3CB6C()
{
  result = qword_1EB4D01B8;
  if (!qword_1EB4D01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01B8);
  }

  return result;
}

unint64_t sub_1ABE3CBC4()
{
  result = qword_1EB4D01C8;
  if (!qword_1EB4D01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01C8);
  }

  return result;
}

unint64_t sub_1ABE3CC1C()
{
  result = qword_1EB4D01D0;
  if (!qword_1EB4D01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01D0);
  }

  return result;
}

unint64_t sub_1ABE3CC74()
{
  result = qword_1EB4D0198;
  if (!qword_1EB4D0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0198);
  }

  return result;
}

unint64_t sub_1ABE3CCCC()
{
  result = qword_1EB4D01A0;
  if (!qword_1EB4D01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D01A0);
  }

  return result;
}

uint64_t type metadata accessor for QueryContext(uint64_t a1)
{
  result = qword_1ED86DEE8;
  if (!qword_1ED86DEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABE3CDA4(uint64_t a1)
{
  type metadata accessor for QueryTree();
  if (v1 <= 0x3F)
  {
    sub_1ABE3CEEC(319);
    if (v2 <= 0x3F)
    {
      sub_1ABF21EB4();
      if (v3 <= 0x3F)
      {
        sub_1ABE3CF44(319, qword_1ED86E0B8, &type metadata for IndexQuery, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1ABE3CF44(319, &qword_1ED86B9D8, &type metadata for KnosisInternalFact, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1ABE3CEEC(uint64_t a1)
{
  if (!qword_1ED86DF30)
  {
    type metadata accessor for ResultGraph();
    v1 = sub_1ABF247E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED86DF30);
    }
  }
}

void sub_1ABE3CF44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1ABE3CF94@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 1);
  v29 = *v1;
  if (v3)
  {

    v28 = v3;
  }

  else
  {
    type metadata accessor for ResultGraph();
    v4 = swift_allocObject();

    v5 = MEMORY[0x1E69E7CC0];
    *(v4 + 16) = sub_1ABF239C4();
    *(v4 + 24) = v5;
    v28 = v4;
  }

  v26 = *(v1 + 2);
  Context = type metadata accessor for QueryContext(0);
  v7 = Context[7];
  v8 = sub_1ABF21EB4();
  (*(*(v8 - 8) + 16))(&a1[v7], &v1[v7], v8);
  memcpy(__dst, &v1[Context[8]], 0x69uLL);
  v9 = *&v1[Context[9]];
  v25 = v1[Context[13]];
  v10 = Context[11];
  v21 = *&v1[Context[10]];
  v12 = *&v1[v10];
  v11 = *&v1[v10 + 8];
  v13 = *&v1[v10 + 24];
  v27 = v1[Context[14]];
  v14 = &a1[Context[8]];
  *(v14 + 10) = 0;
  *(v14 + 3) = 0u;
  *(v14 + 4) = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *v14 = 0u;
  *(v14 + 88) = xmmword_1ABF34940;
  v14[104] = 0;
  v24 = Context[10];
  v15 = &a1[Context[12]];
  *v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 1) = MEMORY[0x1E69E7CC0];
  *(v15 + 2) = v16;
  v22 = Context[13];
  v23 = Context[14];
  *a1 = v29;
  *(a1 + 1) = v28;
  *(a1 + 2) = v26;
  v17 = v1[v10 + 16];
  memcpy(v32, v14, 0x69uLL);

  sub_1ABB52954(__dst, v30);

  sub_1ABB3F4DC(v12, v11, v17);

  sub_1ABE1859C(v32);
  memcpy(v14, __dst, 0x69uLL);
  *&a1[Context[9]] = v9;
  a1[v22] = v25;

  *v15 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  *(v15 + 1) = MEMORY[0x1E69E7CC0];
  *(v15 + 2) = v19;
  *&a1[v24] = v21;
  v20 = &a1[Context[11]];
  *v20 = v12;
  *(v20 + 1) = v11;
  v20[16] = v17;
  *(v20 + 3) = v13;
  a1[v23] = v27;
  return result;
}

void sub_1ABE3D210(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  Context = type metadata accessor for QueryContext(0);
  v8 = v3 + Context[8];
  v9 = *(v8 + 88);
  v10 = *(v8 + 104) & 0x1E;
  if (v9 >> 1 == 0xFFFFFFFF && v10 == 0)
  {
    *a3 = xmmword_1ABF6B710;
    a3[2] = 0x80000001ABF93270;
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = 50 * v12;
    if ((v12 * 50) >> 64 == (50 * v12) >> 63)
    {
      v14 = Context[12];
      v15 = *(v3 + v14);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        v18 = *(a1 + 64);
        v19 = *(v3 + Context[10]);
        v20 = (v3 + Context[11]);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(v20 + 16);
        v24 = v20[3];
        *(v3 + v14) = v17;
        *(a1 + 80) = 1;
        v25 = *(v3 + Context[9]);
        v48 = v24;
        v49 = v25;
        LOBYTE(v46[0]) = v18;
        v46[1] = v13;
        v46[2] = v19;
        v46[3] = v22;
        v46[4] = v21;
        v47 = v23;
        memcpy(__dst, a2, 0x69uLL);

        v26 = sub_1ABA8FB04();
        sub_1ABB3F4DC(v26, v27, v28);

        sub_1ABD25C88(v46, __dst, a3);

        v42 = sub_1ABA8FB04();
        sub_1ABB3F860(v42, v43, v44);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    swift_once();
    v29 = sub_1ABF237F4();
    sub_1ABA7AA24(v29, qword_1ED86E460);
    v30 = a2;
    v31 = sub_1ABF237D4();
    v32 = sub_1ABF24664();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      __dst[0] = v34;
      *v33 = 136315138;
      v46[0] = a2;
      v35 = a2;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      v36 = sub_1ABF23C74();
      v38 = sub_1ABADD6D8(v36, v37, __dst);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1ABA78000, v31, v32, "QueryContext: indexExecute: error from index handler execution: %s", v33, 0xCu);
      sub_1ABA84B54(v34);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);
      MEMORY[0x1AC5AB8B0](v33, -1, -1);
    }

    swift_getErrorValue();
    v39 = sub_1ABF25154();
    v41 = v40;

    *a3 = 0;
    a3[1] = v39;
    a3[2] = v41;
  }
}

uint64_t sub_1ABE3D540(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A26C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE3DCFC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABE3D5AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (a1)
  {

    v6 = sub_1ABE8AC38();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  v15 = v5;
  v7 = sub_1ABE3D720(v6, &v15, a3);

  if (!v3)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v15 = MEMORY[0x1E69E7CC0];
      result = sub_1ABF24BC4();
      v10 = 0;
      v11 = (v7 + 40);
      while (v10 < *(v7 + 16))
      {
        ++v10;
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 2;
        v14 = v12;
        type metadata accessor for EntityResolutionRankingService.RankedEntities.ScoredEntity();
        swift_allocObject();
        EntityResolutionRankingService.RankedEntities.ScoredEntity.init(id:score:explanation:inferenceEventId:)(&v14, 0, 0, 0, v13);
        sub_1ABF24B94();
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        result = sub_1ABF24BA4();
        if (v9 == v10)
        {

          return v15;
        }
      }

      __break(1u);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1ABE3D720(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a2;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v75 = v12;
  v73 = v7;
  v74 = v6;
  v76 = v11;
  if (v10)
  {
    while (1)
    {
      v78 = v14;
LABEL_9:
      v77 = v13;
      v79 = *(*(v5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v10)))));
      v86 = v79;
      v16 = sub_1ABE3E22C(&v86);
      if (v4)
      {
LABEL_60:
      }

      v17 = v16;
      v86 = v6;
      v4 = 0;
      v85 = sub_1ABE3E22C(&v86);
      sub_1ABAD219C(&qword_1EB4DAE98, &unk_1ABF6B788);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34740;
      *(inited + 32) = v79;
      *(inited + 40) = v17;
      sub_1ABAD219C(&qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABB668FC();
      v19 = sub_1ABF239C4();
      v20 = *(v19 + 16);
      if (v20)
      {
        break;
      }

      v21 = MEMORY[0x1E69E7CC0];
LABEL_48:
      v57 = sub_1ABBFA4BC(v21);
      v58 = COERCE_DOUBLE(sub_1ABB2B9E4(v57));
      v60 = v59;

      if (v60)
      {
        v61 = 0.0;
      }

      else
      {
        v61 = v58;
      }

      v62 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD9BD4(0, *(v78 + 16) + 1, 1, v78);
        v62 = v67;
      }

      v11 = v76;
      v64 = *(v62 + 16);
      v63 = *(v62 + 24);
      v65 = v62;
      if (v64 >= v63 >> 1)
      {
        sub_1ABAD9BD4(v63 > 1, v64 + 1, 1, v62);
        v65 = v68;
      }

      v10 &= v10 - 1;
      *(v65 + 16) = v64 + 1;
      v14 = v65;
      v66 = v65 + 16 * v64;
      *(v66 + 32) = v79;
      *(v66 + 40) = v61;
      v13 = v77;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v86 = MEMORY[0x1E69E7CC0];
    sub_1ABADDFAC(0, v20, 0);
    v21 = v86;
    v24 = sub_1ABAB0E08();
    v25 = 0;
    v26 = v19 + 64;
    v27 = v85;
    v28 = *(v85 + 2);
    v29 = v85 + 32;
    v81 = v22;
    v82 = v20;
    v80 = v19 + 72;
    v30 = v19;
    v83 = v19 + 64;
    v84 = v19;
    while (1)
    {
      if (v24 < 0 || v24 >= 1 << *(v30 + 32))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:

        __break(1u);
        return result;
      }

      v31 = v24 >> 6;
      if ((*(v26 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
      {
        goto LABEL_62;
      }

      if (*(v30 + 36) != v22)
      {
        goto LABEL_63;
      }

      v32 = *(*(v30 + 48) + 8 * v24);
      v33 = *(*(v30 + 56) + 8 * v24);
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = (v33 + 32);
        v36 = 0.0;
        v37 = *(v33 + 16);
        do
        {
          v38 = *v35++;
          v36 = v36 + v38;
          --v37;
        }

        while (v37);
        if (!v28)
        {
          v39 = 0.0;
          goto LABEL_33;
        }
      }

      else
      {
        v36 = 0.0;
        v39 = 0.0;
        if (!v28)
        {
          goto LABEL_33;
        }
      }

      v40 = 0;
      v41 = 0.0;
      do
      {
        v42 = *&v29[8 * v40++];
        v41 = v41 + v42;
      }

      while (v28 != v40);
      v39 = 0.0;
      if (v36 != 0.0 && v41 != 0.0)
      {
        v43 = 0;
        v44 = v33 + 32;
        while (v34 != v43 && v28 != v43)
        {
          if (v43 >= *(v27 + 2))
          {
            __break(1u);
            goto LABEL_60;
          }

          v45 = *(v44 + 8 * v43) / v36;
          if (*&v29[8 * v43] / v41 < v45)
          {
            v45 = *&v29[8 * v43] / v41;
          }

          v39 = v39 + v45;
          ++v43;
        }
      }

LABEL_33:
      v86 = v21;
      v47 = *(v21 + 16);
      v46 = *(v21 + 24);
      if (v47 >= v46 >> 1)
      {
        v70 = v32;
        v71 = v22;
        v72 = v23;
        sub_1ABADDFAC(v46 > 1, v47 + 1, 1);
        v32 = v70;
        v22 = v71;
        v23 = v72;
        v26 = v83;
        v30 = v84;
        v21 = v86;
      }

      *(v21 + 16) = v47 + 1;
      v48 = v21 + 16 * v47;
      *(v48 + 32) = v32;
      *(v48 + 40) = v39;
      v4 = (1 << *(v30 + 32));
      if (v24 >= v4)
      {
        goto LABEL_64;
      }

      v49 = *(v26 + 8 * v31);
      if ((v49 & (1 << v24)) == 0)
      {
        goto LABEL_65;
      }

      if (*(v30 + 36) != v22)
      {
        goto LABEL_66;
      }

      v50 = v49 & (-2 << (v24 & 0x3F));
      if (v50)
      {
        sub_1ABAC933C(v24, v22, v23 & 1);
        v4 = (__clz(__rbit64(v50)) | v24 & 0x7FFFFFFFFFFFFFC0);
        v51 = v82;
      }

      else
      {
        v52 = v31 << 6;
        v53 = v31 + 1;
        v54 = (v80 + 8 * v31);
        v51 = v82;
        while (v53 < (v4 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v52 += 64;
          ++v53;
          if (v56)
          {
            sub_1ABAC933C(v24, v22, v23 & 1);
            v4 = (__clz(__rbit64(v55)) + v52);
            goto LABEL_45;
          }
        }

        sub_1ABAC933C(v24, v22, v23 & 1);
      }

LABEL_45:
      v23 = 0;
      ++v25;
      v24 = v4;
      v22 = v81;
      v27 = v85;
      v26 = v83;
      v30 = v84;
      if (v25 == v51)
      {

        v5 = v75;
        v4 = 0;
        v6 = v74;
        v7 = v73;
        goto LABEL_48;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_67;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v15);
    ++v13;
    if (v10)
    {
      v78 = v14;
      v13 = v15;
      goto LABEL_9;
    }
  }

  v86 = v14;

  sub_1ABE3D540(&v86);
  if (v4)
  {
    goto LABEL_68;
  }

  return v86;
}

uint64_t sub_1ABE3DCFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4DAEA0, &qword_1ABF6B798);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE34190(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1ABE34120(0, v2, 1, a1);
  }

  return result;
}

void sub_1ABE3DE10(uint64_t a1, double (*a2)(uint64_t *, void *, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1ABADDFAC(0, v3, 0);
    v31 = v34;
    v6 = sub_1ABAB0E08();
    v7 = 0;
    v30 = a1 + 64;
    v25 = v4;
    v26 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v8 = v6 >> 6;
      if ((*(v30 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_23;
      }

      v29 = v4;
      v28 = v5;
      v9 = *(*(a1 + 56) + 8 * v6);
      v32[0] = *(*(a1 + 48) + 8 * v6);
      v32[1] = v9;

      v10 = a2(&v33, v32, v9);

      v11 = v33;
      v12 = v31;
      v34 = v31;
      v14 = *(v31 + 16);
      v13 = *(v31 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1ABADDFAC(v13 > 1, v14 + 1, 1);
        v12 = v34;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
      v16 = 1 << *(a1 + 32);
      if (v6 >= v16)
      {
        goto LABEL_24;
      }

      v17 = *(v30 + 8 * v8);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v31 = v12;
      if (*(a1 + 36) != v29)
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v19 = v26;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = (a1 + 72 + 8 * v8);
        v19 = v26;
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1ABAC933C(v6, v29, v28 & 1);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        sub_1ABAC933C(v6, v29, v28 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v7;
      v6 = v16;
      v4 = v25;
      if (v7 == v19)
      {
        return;
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
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

char *sub_1ABE3E098(char *result, uint64_t *a2, uint64_t a3)
{
  v4 = *result;
  v5 = *a2;
  if (*result != *a2)
  {
    v13 = *result;
    result = sub_1ABE3E22C(&v13);
    if (!v3)
    {
      v6 = result;
      v13 = v5;
      sub_1ABE3E22C(&v13);
      sub_1ABAD219C(&qword_1EB4DAE98, &unk_1ABF6B788);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34740;
      *(inited + 32) = v4;
      *(inited + 40) = v6;
      sub_1ABAD219C(&qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABB668FC();
      v8 = sub_1ABF239C4();
      MEMORY[0x1EEE9AC00](v8);
      sub_1ABE3DE10(v9, sub_1ABE3E9D4);
      v11 = v10;

      v12 = sub_1ABBFA4BC(v11);
      sub_1ABB2B9E4(v12);
    }
  }

  return result;
}

char *sub_1ABE3E22C(uint64_t *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DAEA8, qword_1ABF6B7F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v57 = *a1;
  sub_1ABA81160("entity_popularity_day_of_week");
  if (!v1)
  {
    sub_1ABAD55A0();

    sub_1ABA7F5B0(v8);
    if (v15)
    {
      v59 = &unk_1F208F690;
      sub_1ABAD219C(&qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABA7D918();
      sub_1ABAB47C4(v16, &qword_1EB4DA270, &qword_1ABF65380, v17);
      sub_1ABF23814();
      sub_1ABA7F5B0(v8);
      if (!v15)
      {
        sub_1ABE3E9DC(v8);
      }
    }

    else
    {
      (*(v10 + 32))(v14, v8, v9);
    }

    v18 = sub_1ABAB47C4(&qword_1EB4DAEB8, &qword_1EB4D19B0, &unk_1ABF33B40, MEMORY[0x1E695FCF0]);
    v19 = sub_1ABA7C75C();
    v20 = sub_1ABB49D08(v19, &unk_1F208F6E0);

    if (v20)
    {
      v55 = v10;
      if (qword_1EB4CE7C0 != -1)
      {
        sub_1ABA7BFD0(&qword_1EB4CE7C0);
      }

      v21 = sub_1ABF237F4();
      sub_1ABA7AA24(v21, qword_1EB4CE7C8);
      v22 = sub_1ABF237D4();
      v23 = sub_1ABF24664();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v52 = v24;
        v54 = swift_slowAlloc();
        v59 = v54;
        *v24 = 136315138;
        v58 = v57;
        v53 = v22;
        v25 = EntityIdentifier.stringValue.getter();
        v27 = v5;
        v28 = v18;
        v29 = sub_1ABADD6D8(v25, v26, &v59);

        v30 = v52;
        *(v52 + 1) = v29;
        v18 = v28;
        v5 = v27;
        v31 = v23;
        v32 = v53;
        _os_log_impl(&dword_1ABA78000, v53, v31, "Failed to find embedding vector for %s in feature entity_popularity_day_of_week", v30, 0xCu);
        sub_1ABA84B54(v54);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {
      }

      v10 = v55;
    }

    sub_1ABA81160("entity_popularity_hour_of_day");
    sub_1ABAD55A0();

    sub_1ABA7F5B0(v5);
    if (v15)
    {
      v59 = &unk_1F208F708;
      sub_1ABAD219C(&qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABA7D918();
      sub_1ABAB47C4(v34, &qword_1EB4DA270, &qword_1ABF65380, v35);
      sub_1ABF23814();
      sub_1ABA7F5B0(v5);
      if (!v15)
      {
        sub_1ABE3E9DC(v5);
      }
    }

    else
    {
      (*(v10 + 32))(v56, v5, v9);
    }

    v36 = sub_1ABA7C75C();
    v37 = sub_1ABB49D08(v36, &unk_1F208F758);

    if (v37)
    {
      v55 = v10;
      if (qword_1EB4CE7C0 != -1)
      {
        sub_1ABA7BFD0(&qword_1EB4CE7C0);
      }

      v38 = sub_1ABF237F4();
      sub_1ABA7AA24(v38, qword_1EB4CE7C8);
      v39 = sub_1ABF237D4();
      v40 = sub_1ABF24664();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v54 = v18;
        v42 = v41;
        v43 = swift_slowAlloc();
        v59 = v43;
        *v42 = 136315138;
        v58 = v57;
        v44 = EntityIdentifier.stringValue.getter();
        v46 = sub_1ABADD6D8(v44, v45, &v59);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_1ABA78000, v39, v40, "Failed to find embedding vector for %s in feature entity_popularity_hour_of_day", v42, 0xCu);
        sub_1ABA84B54(v43);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      v10 = v55;
    }

    v47 = sub_1ABA7C75C();
    v48 = v56;
    v49 = sub_1ABF23834();
    v8 = sub_1ABE3E8BC(v47, v49);

    v50 = *(v10 + 8);
    v50(v48, v9);
    v50(v14, v9);
  }

  return v8;
}

uint64_t sub_1ABE3E8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a1 + 32;
  v6 = (a2 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v4)
    {
      v8 = *(v5 + 8 * v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD91B4();
        v7 = v14;
      }

      v9 = *(v7 + 16);
      v10 = v6;
      v11 = v4;
      do
      {
        v12 = *v10;
        if (v9 >= *(v7 + 24) >> 1)
        {
          sub_1ABAD91B4();
          v7 = v13;
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + 8 * v9 + 32) = v8 * v12;
        ++v10;
        ++v9;
        --v11;
      }

      while (v11);
    }

    ++v3;
  }

  while (v3 != v2);
  return v7;
}

uint64_t sub_1ABE3E9DC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DAEA8, qword_1ABF6B7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1ABE3EA44(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4DAEC0, &unk_1ABF6B7E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v46 - v7);
  v9 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  result = ViewService.entitySimilarityFeatureView.getter(&v61, v14);
  if (!v3)
  {
    v62 = v8;
    v51 = v16;
    v52 = v12;
    v54 = 0xD000000000000018;
    v55 = 0x80000001ABF81CC0;
    v56 = a2;
    v57 = a3;

    sub_1ABC3EE80();
    v19 = v18;
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (*(v19 + 16))
    {
      v46 = v10;
      v48 = v9;
      v49 = a2;
      v50 = a3;
      v20 = v19 + 64;
      v21 = 1 << *(v19 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(v19 + 64);
      v24 = (v21 + 63) >> 6;

      v25 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      v47 = v19;
      if (v23)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {

          return sub_1ABBFA494(v53);
        }

        v23 = *(v20 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          do
          {
LABEL_12:
            v27 = __clz(__rbit64(v23)) | (v25 << 6);
            v28 = *(v19 + 56);
            v29 = (*(v19 + 48) + 48 * v27);
            v30 = v29[1];
            v31 = v29[2];
            v32 = v29[3];
            v33 = v29[4];
            v34 = v29[5];
            v35 = *(v28 + 8 * v27);
            v54 = *v29;
            v55 = v30;
            v56 = v31;
            v57 = v32;
            v58 = v33;
            v59 = v34;
            v60 = v35;

            v36 = v35;
            v37 = v62;
            sub_1ABE3EF24(&v54, v49, v50, v62);

            if (sub_1ABA7E1E0(v37, 1, v48) == 1)
            {
              result = sub_1ABA925A4(v37, &qword_1EB4DAEC0, &unk_1ABF6B7E0);
            }

            else
            {
              v38 = v51;
              sub_1ABE3F4B0(v37, v51);
              v39 = v52;
              sub_1ABE3F4B0(v38, v52);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1ABAD9AC4(0, *(v53 + 16) + 1, 1, v53);
                v53 = v43;
              }

              v41 = *(v53 + 16);
              v40 = *(v53 + 24);
              if (v41 >= v40 >> 1)
              {
                sub_1ABAD9AC4(v40 > 1, v41 + 1, 1, v53);
                v53 = v44;
              }

              v42 = v53;
              *(v53 + 16) = v41 + 1;
              result = sub_1ABE3F4B0(v39, v42 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v41);
            }

            v23 &= v23 - 1;
            v19 = v47;
          }

          while (v23);
        }
      }

      __break(1u);
    }

    else
    {

      sub_1ABE3F520();
      swift_allocError();
      *v45 = a2;
      *(v45 + 8) = a3;
      *(v45 + 16) = 1;
      swift_willThrow();
    }
  }

  return result;
}

double sub_1ABE3EE88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  result = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v5 = (a1 + 32);
    v6 = *(a1 + 16);
    do
    {
      v7 = *v5++;
      v4 = v4 + v7;
      --v6;
    }

    while (v6);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (a2 + 32);
    v10 = 0.0;
    v11 = (a2 + 32);
    v12 = *(a2 + 16);
    do
    {
      v13 = *v11++;
      v10 = v10 + v13;
      --v12;
    }

    while (v12);
    result = 0.0;
    if (v4 != 0.0 && v10 != 0.0)
    {
      for (i = (a1 + 32); v2; --v2)
      {
        if (!v8)
        {
          break;
        }

        v15 = *i++;
        v16 = v15;
        v17 = *v9++;
        v18 = v16 / v4;
        v19 = v17 / v10;
        if (v17 / v10 < v18)
        {
          v18 = v19;
        }

        result = result + v18;
        --v8;
      }
    }
  }

  return result;
}

uint64_t sub_1ABE3EF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v43 = a2;
  v44 = a4;
  v6 = sub_1ABAD219C(&qword_1EB4DAEA8, qword_1ABF6B7F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v41 = *a1;
  v42 = v14;
  v16 = a1[4];
  v17 = a1[5];
  sub_1ABF24694();
  if (sub_1ABA7E1E0(v8, 1, v9) == 1)
  {
    v40 = v16;
    sub_1ABA925A4(v8, &qword_1EB4DAEA8, qword_1ABF6B7F0);
    if (qword_1EB4CE7C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1ABF237F4();
    sub_1ABA7AA24(v18, qword_1EB4CE7C8);

    v19 = sub_1ABF237D4();
    v20 = sub_1ABF24664();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_1ABADD6D8(v43, a3, &v47);
      *(v21 + 12) = 2080;
      v45 = v41;
      v46 = v13;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1AC5A9410](2084190844, 0xE400000000000000);
      MEMORY[0x1AC5A9410](v42, v15);
      MEMORY[0x1AC5A9410](2084190844, 0xE400000000000000);
      MEMORY[0x1AC5A9410](v40, v17);

      v23 = sub_1ABADD6D8(v45, v46, &v47);

      *(v21 + 14) = v23;
      _os_log_impl(&dword_1ABA78000, v19, v20, "Failed to load feature '%s' for %s.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5AB8B0](v22, -1, -1);
      MEMORY[0x1AC5AB8B0](v21, -1, -1);
    }
  }

  else
  {
    v24 = *(v10 + 32);
    v24(v12, v8, v9);

    EntityIdentifier.init(_:)(v16, v17, &v45);
    if ((v46 & 1) == 0)
    {
      v35 = v45;
      v36 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
      v37 = *(v36 + 48);
      v38 = v44;
      *v44 = v35;
      v24(v38 + v37, v12, v9);
      v33 = v38;
      v34 = 0;
      v32 = v36;
      return sub_1ABA7B9B4(v33, v34, 1, v32);
    }

    v25 = v16;
    if (qword_1EB4CE7C0 != -1)
    {
      swift_once();
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1EB4CE7C8);

    v27 = sub_1ABF237D4();
    v28 = sub_1ABF24664();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v25;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1ABADD6D8(v29, v17, &v45);
      _os_log_impl(&dword_1ABA78000, v27, v28, "Failed to parse identifier %s", v30, 0xCu);
      sub_1ABA84B54(v31);
      MEMORY[0x1AC5AB8B0](v31, -1, -1);
      MEMORY[0x1AC5AB8B0](v30, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }

  v32 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
  v33 = v44;
  v34 = 1;
  return sub_1ABA7B9B4(v33, v34, 1, v32);
}

uint64_t sub_1ABE3F4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABE3F520()
{
  result = qword_1EB4DAEC8;
  if (!qword_1EB4DAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAEC8);
  }

  return result;
}

uint64_t sub_1ABE3F574(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void RelationshipIdentifier.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v14 = 0;
LABEL_84:
    v49 = 0;
LABEL_85:
    *a3 = v14;
    *(a3 + 8) = v49;
    return;
  }

  v7 = a1;
  v8 = sub_1ABF23E64();

  if (v8)
  {
    v9 = sub_1ABF23D44();
    v10 = sub_1ABAA958C(v9, v7, a2);
    v7 = MEMORY[0x1AC5A9330](v10);
    v12 = v11;

    v13 = HIBYTE(v12);
    v6 = v7 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = HIBYTE(a2);
    v12 = a2;
  }

  v15 = v13 & 0xF;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v16 = v13 & 0xF;
  }

  else
  {
    v16 = v6;
  }

  if (!v16)
  {

    goto LABEL_77;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {

    v55 = 0;
    v50 = sub_1ABA7E79C();
    v14 = sub_1ABB81A68(v50, v51, 10);
    v35 = v52;
LABEL_76:

    if ((v35 & 1) == 0)
    {
LABEL_83:

      goto LABEL_84;
    }

LABEL_77:

    v36 = sub_1ABA7E79C();
    v38 = sub_1ABAAA650(v36, v37);
    if (v39)
    {
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178(&qword_1ED871B38);
      }

      v40 = sub_1ABF237F4();
      sub_1ABA7AA24(v40, qword_1ED871B40);

      v41 = sub_1ABF237D4();
      v42 = sub_1ABF24664();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v54[0] = v44;
        *v43 = 136380675;
        v45 = sub_1ABA7E79C();
        v48 = sub_1ABADD6D8(v45, v46, v47);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_1ABA78000, v41, v42, "RelationshipIdentifier: attempted initialization with non-numeric value: %{private}s", v43, 0xCu);
        sub_1ABA84B54(v44);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {
      }

      v14 = 0;
      v49 = 1;
      goto LABEL_85;
    }

    v14 = v38;
    goto LABEL_83;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v17 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {

      sub_1ABA7E79C();
      v17 = sub_1ABF24B74();
      v6 = v53;
    }

    v18 = *v17;
    if (v18 == 43)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          v14 = 0;
          if (v17)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v20 & v19)
              {
                goto LABEL_74;
              }

              sub_1ABA8FB14();
              if (!v20)
              {
                goto LABEL_74;
              }

              v14 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_74;
              }

              sub_1ABA7E4F0();
              if (v20)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_74;
      }

      goto LABEL_93;
    }

    if (v18 != 45)
    {
      if (v6)
      {
        v14 = 0;
        if (v17)
        {
          while (1)
          {
            v30 = *v17 - 48;
            if (v30 > 9)
            {
              goto LABEL_74;
            }

            v31 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_74;
            }

            v14 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_74;
            }

            ++v17;
            if (!--v6)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_74:
      v14 = 0;
      v23 = 1;
      goto LABEL_75;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        v14 = 0;
        if (v17)
        {
          while (1)
          {
            sub_1ABA7D44C();
            if (!v20 & v19)
            {
              goto LABEL_74;
            }

            sub_1ABA8FB14();
            if (!v20)
            {
              goto LABEL_74;
            }

            v14 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_74;
            }

            sub_1ABA7E4F0();
            if (v20)
            {
              goto LABEL_75;
            }
          }
        }

LABEL_73:
        v23 = 0;
LABEL_75:
        v55 = v23;
        v35 = v23;
        goto LABEL_76;
      }

      goto LABEL_74;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v54[0] = v7;
  v54[1] = v12 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v15)
      {
        v14 = 0;
        v32 = v54;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v15)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_74;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        sub_1ABA7C778();
        while (1)
        {
          sub_1ABA7D44C();
          if (!v20 & v19)
          {
            break;
          }

          sub_1ABA8FB14();
          if (!v20)
          {
            break;
          }

          v14 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v20)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    goto LABEL_92;
  }

  if (v15)
  {
    if (v15 != 1)
    {
      sub_1ABA7C778();
      while (1)
      {
        sub_1ABA7D44C();
        if (!v20 & v19)
        {
          break;
        }

        sub_1ABA8FB14();
        if (!v20)
        {
          break;
        }

        v14 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        sub_1ABA7E4F0();
        if (v20)
        {
          goto LABEL_75;
        }
      }
    }

    goto LABEL_74;
  }

LABEL_94:
  __break(1u);
}

unint64_t RelationshipIdentifier.init(entityClass:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);

  result = sub_1ABE4022C(0xFFFFFFFFFFFFFFuLL);
  *a2 = (result + 1) | (v3 << 56);
  return result;
}

uint64_t RelationshipIdentifier.init(entityClass:hash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 32);
  sub_1ABAD219C(&qword_1EB4D30A8, &qword_1ABF3F400);
  sub_1ABF23904();
  if (v10)
  {
    result = sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    v6 = sub_1ABF23914();
    (*(*(v6 - 8) + 8))(a2, v6);

    *(&v8 + 1) = v5;
    *&v8 = v9;
    *a3 = v8 >> 8;
  }

  return result;
}

uint64_t sub_1ABE3FC04(uint64_t a1)
{
  v2 = sub_1ABE402B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE3FC40(uint64_t a1)
{
  v2 = sub_1ABE402B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RelationshipIdentifier.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DAED0, &qword_1ABF6B958);
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE402B8();
  sub_1ABF252E4();
  sub_1ABF24FB4();
  return (*(v4 + 8))(v7, v2);
}

uint64_t RelationshipIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DAEE0, &qword_1ABF6B960);
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE402B8();
  sub_1ABF252C4();
  if (!v2)
  {
    v11 = sub_1ABF24E94();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABE3FF20(uint64_t a1)
{
  v2 = sub_1ABB34688();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABE3FF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABB34688();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t RelationshipIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v1);
  return sub_1ABF25294();
}

uint64_t RelationshipIdentifier.stringValue.getter()
{
  v0 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v0);

  return 3828082;
}

unint64_t RelationshipIdentifier.description.getter(__n128 a1)
{
  EntityClass.init(intValue:)(HIBYTE(*v1), &v9);
  v2 = v10;
  if (v10)
  {
    v4 = v11;
    v3 = v12;
    v5 = v9;

    sub_1ABAA8FA8(v5, v2, v4, v3);
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1ABF24AB4();

  v9 = 0xD00000000000001ALL;
  v10 = 0x80000001ABF93350;
  MEMORY[0x1AC5A9410](v4, v3);

  MEMORY[0x1AC5A9410](3830304, 0xE300000000000000);
  v6 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v6);

  MEMORY[0x1AC5A9410](3831328, 0xE300000000000000);
  v7 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v7);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v9;
}

unint64_t sub_1ABE4022C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1AC5AB8D0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1AC5AB8D0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABE402B8()
{
  result = qword_1EB4DAED8;
  if (!qword_1EB4DAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAED8);
  }

  return result;
}

unint64_t sub_1ABE40310()
{
  result = qword_1ED86FF08[0];
  if (!qword_1ED86FF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED86FF08);
  }

  return result;
}

unint64_t sub_1ABE40368()
{
  result = qword_1ED86D2C0;
  if (!qword_1ED86D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D2C0);
  }

  return result;
}

unint64_t sub_1ABE403BC()
{
  result = qword_1ED86FF00;
  if (!qword_1ED86FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86FF00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RelationshipIdentifier.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE404C0()
{
  result = qword_1EB4DAEE8;
  if (!qword_1EB4DAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAEE8);
  }

  return result;
}

unint64_t sub_1ABE40518()
{
  result = qword_1EB4DAEF0;
  if (!qword_1EB4DAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAEF0);
  }

  return result;
}

unint64_t sub_1ABE40570()
{
  result = qword_1EB4DAEF8[0];
  if (!qword_1EB4DAEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DAEF8);
  }

  return result;
}

uint64_t sub_1ABE40628(uint64_t a1, uint64_t a2)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = v2;
  *(v3 + 152) = a1;
  v4 = *v2;
  v5 = sub_1ABA7F974();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for InferenceMessageResponseError(0, v5, AssociatedConformanceWitness, v7);
  *(v3 + 176) = v8;
  *(v3 + 184) = *(v8 - 8);
  *(v3 + 192) = swift_task_alloc();
  v9 = sub_1ABA7F974();
  *(v3 + 200) = v9;
  v10 = v4[7];
  v11 = v4[8];
  v12 = v4[9];
  *(v3 + 16) = v9;
  *(v3 + 24) = v5;
  *(v3 + 32) = v10;
  *(v3 + 48) = AssociatedConformanceWitness;
  *(v3 + 56) = v11;
  *(v3 + 72) = v12;
  v13 = type metadata accessor for InferenceMessageRemoteServerResponse(0, v3 + 16);
  *(v3 + 208) = v13;
  *(v3 + 216) = *(v13 - 8);
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABE4082C, 0, 0);
}

void sub_1ABE4082C()
{
  v1 = objc_autoreleasePoolPush();
  sub_1ABE40EC0(v0 + 17, v13);
  v2 = v0[21];
  objc_autoreleasePoolPop(v1);
  v3 = v13[1];
  v0[30] = v13[0];
  v0[31] = v3;
  sub_1ABA93E20(v2 + 8, v2[11]);
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v0[11] = v5;
  v0[12] = v4;
  v0[13] = v6;
  v0[14] = v7;
  v0[15] = v8;
  v0[16] = v9;

  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_1ABE40A38;
  sub_1ABA7DA50();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_1ABE40A38(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[33] = a1;
  v4[34] = a2;
  v4[35] = v2;

  if (v2)
  {
    v5 = sub_1ABE40E3C;
  }

  else
  {
    v5 = sub_1ABE40B90;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1ABE40B90()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[21];
  v5 = objc_autoreleasePoolPush();
  sub_1ABE40FDC(v4, v3, v1, v0 + 18);
  if (v2)
  {
    v7 = v0[33];
    v6 = v0[34];
    v9 = v0[30];
    v8 = v0[31];
    objc_autoreleasePoolPop(v5);
    sub_1ABA96210(v7, v6);
    sub_1ABA96210(v9, v8);
  }

  else
  {
    v11 = v0[28];
    v10 = v0[29];
    v12 = v0[26];
    v13 = v0[27];
    objc_autoreleasePoolPop(v5);
    (*(v13 + 16))(v11, v10, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = v0[33];
    v15 = v0[34];
    v17 = v0[31];
    v34 = v0[30];
    v18 = v0[28];
    v20 = v0[26];
    v19 = v0[27];
    if (EnumCaseMultiPayload != 1)
    {
      v27 = v0[25];
      v28 = v0[19];
      (*(v19 + 8))(v0[29], v20);
      sub_1ABA96210(v16, v15);
      sub_1ABA96210(v34, v17);
      v31 = type metadata accessor for InferenceMessageResponse(0, v27, v29, v30);
      (*(*(v31 - 8) + 32))(v28, v18, v31);

      sub_1ABA7BBE0();
LABEL_6:
      sub_1ABA7DA50();

      __asm { BRAA            X1, X16 }
    }

    v32 = v0[31];
    v33 = v0[29];
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[22];
    (*(v21 + 32))(v22, v18, v23);
    swift_getWitnessTable();
    swift_allocError();
    (*(v21 + 16))(v24, v22, v23);
    swift_willThrow();
    sub_1ABA96210(v16, v15);
    sub_1ABA96210(v34, v32);
    (*(v21 + 8))(v22, v23);
    (*(v19 + 8))(v33, v20);
  }

  sub_1ABA7BBE0();
  goto LABEL_6;
}

uint64_t sub_1ABE40E3C()
{
  sub_1ABA96210(*(v0 + 240), *(v0 + 248));

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABE40EC0@<X0>(void *a2@<X2>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for InferenceMessageRequest(0, AssociatedTypeWitness, v7, v8);
  swift_getWitnessTable();
  result = sub_1ABF21834();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
    a3[1] = v10;
  }

  return result;
}

uint64_t sub_1ABE40FDC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13[0] = AssociatedTypeWitness;
  v13[1] = v6;
  v8 = v4[8];
  v14 = v4[7];
  v15 = AssociatedConformanceWitness;
  v9 = v4[9];
  v16 = v8;
  v17 = v9;
  type metadata accessor for InferenceMessageRemoteServerResponse(0, v13);
  swift_getWitnessTable();
  v10 = v18;
  result = sub_1ABF217D4();
  if (v10)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t sub_1ABE41164()
{

  sub_1ABA84B54((v0 + 64));

  return v0;
}

uint64_t sub_1ABE411C4()
{
  sub_1ABE41164();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE41210(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ABBD00C0;

  return sub_1ABE40628(a1, a2);
}

uint64_t sub_1ABE41308()
{
  v1 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewName);

  return v1;
}

uint64_t sub_1ABE41428@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewArtifactURL;
  v4 = sub_1ABF21CF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1ABE414F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewArtifactTableName);

  return v1;
}

id sub_1ABE4156C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1ABF21CF4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v5[OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewName];
  *v15 = a1;
  v15[1] = a2;
  sub_1ABF22064();
  (*(v12 + 32))(&v5[OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewArtifactURL], v14, v11);
  v16 = sub_1ABE4227C(a3);
  v17 = &v5[OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_viewArtifactTableName];
  *v17 = v16;
  v17[1] = v18;
  v19 = [a3 alwaysAvailable];
  v5[OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_alwaysAvailable] = v19;
  v20 = OBJC_IVAR____TtC20IntelligencePlatformP33_68BBD1BF2B042DA1870C4C06E01085D319ViewAccessAssertion_token;
  v21 = sub_1ABF22074();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v5[v20], a4, v21);
  v25.receiver = v5;
  v25.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v25, sel_init);

  (*(v22 + 8))(a4, v21);
  return v23;
}

id sub_1ABE41874(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_remoteAccessRequester] = a1;
  *&v2[OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_useCase] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteViewAccessRequester.reportUnknownError(_:)(Swift::String a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_remoteAccessRequester);
  v3 = sub_1ABF23BD4();
  v4 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_useCase);
  v7[0] = 0;
  LODWORD(v2) = [v2 reportUnknownError:v3 useCase:v4 error:v7];

  if (v2)
  {
    v5 = v7[0];
  }

  else
  {
    v6 = v7[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteViewAccessRequester.reportSQLiteError(_:sqliteErrorCode:)(Swift::String _, Swift::Int64 sqliteErrorCode)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_remoteAccessRequester);
  v5 = sub_1ABF23BD4();
  v6 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_useCase);
  v9[0] = 0;
  LODWORD(sqliteErrorCode) = [v4 reportSQLiteError:v5 sqliteErrorCode:sqliteErrorCode useCase:v6 error:v9];

  if (sqliteErrorCode)
  {
    v7 = v9[0];
  }

  else
  {
    v8 = v9[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }
}

id RemoteViewAccessRequester.requestAssertion(forViewName:)(uint64_t a1, uint64_t a2)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1ABF22074();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  sub_1ABF22044();
  if (!sub_1ABF22024())
  {
    v19 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_remoteAccessRequester);
    v20 = sub_1ABF23BD4();
    v21 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform25RemoteViewAccessRequester_useCase);
    v34[0] = 0;
    v16 = [v19 requestAssertionForViewName:v20 useCase:v21 error:v34];

    goto LABEL_8;
  }

  v31 = v4;
  v32 = v10;
  v11 = [objc_opt_self() current];
  v12 = [v11 canPerformGlobalMachLookup:*MEMORY[0x1E698E8E0] report:0];

  v13 = sub_1ABF23BD4();
  v14 = v13;
  if (!v12)
  {
    v34[0] = 0;
    v16 = sub_1ABA8FB28(v13, sel_requestAssertionForViewName_useCase_error_);

LABEL_8:
    if (v16)
    {
      v22 = v34[0];
      return v16;
    }

LABEL_10:
    v23 = v34[0];
    sub_1ABF21BE4();

    swift_willThrow();
    return v16;
  }

  v34[0] = 0;
  v15 = sub_1ABA8FB28(v13, sel_requestInfoForViewName_useCase_error_);

  v16 = v34[0];
  if (!v15)
  {
    goto LABEL_10;
  }

  v30 = v15;
  v17 = v34[0];
  v16 = sub_1ABF22094();
  sub_1ABF23C04();
  v18 = v33;
  sub_1ABF22054();

  if (v18)
  {
  }

  else
  {
    v25 = sub_1ABF22084();
    v27 = v26;
    v28 = v31;
    (*(v31 + 16))(v6, v9, v3);
    v29 = objc_allocWithZone(type metadata accessor for ViewAccessAssertion(0));
    v16 = sub_1ABE4156C(v25, v27, v30, v6);
    (*(v28 + 8))(v9, v3);
  }

  return v16;
}

uint64_t type metadata accessor for ViewAccessAssertion(uint64_t a1)
{
  result = qword_1EB4DAFC0;
  if (!qword_1EB4DAFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RemoteViewAccessRequester.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1ABE42108(uint64_t a1)
{
  result = sub_1ABF21CF4();
  if (v2 <= 0x3F)
  {
    result = sub_1ABF22074();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABE4227C(void *a1)
{
  v1 = [a1 tableName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF23C04();

  return v3;
}

uint64_t sub_1ABE422E4()
{
  strcpy(__src, "renderDateTime");
  HIBYTE(__src[0]) = -18;
  *&__src[1] = &unk_1F208E828;
  *(&__src[1] + 1) = 111;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD00000000000005ALL;
  *(&__src[3] + 1) = 0x80000001ABF93540;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABE423C4()
{
  v0 = sub_1ABE713BC();
  if (v0[2])
  {
    v1 = v0[5];
    v64 = v0[4];

    v2 = sub_1ABE713BC();
    v4 = *(v2 + 16);
    v53 = v2;
    if (v4)
    {
      v5 = (v2 + 40);
      *&v3 = 136315394;
      v56 = v3;
      v73 = MEMORY[0x1E69E7CC0];
      v61 = v1;
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;

        sub_1ABE427F4(v64, v1, v6, v7, &v85);
        v8 = v86;
        if (v86)
        {
          v9 = v87;
          v10 = v88;
          v67 = v85;
          v77 = v85;
          v81 = v86;

          v11 = MEMORY[0x1AC5A9410](126, 0xE100000000000000);
          sub_1ABA7F994(v11, v12, v13, v14, v15, v16, v17, v18, v50, v53, v56, *(&v56 + 1), v61, v64, v67, v71, v73, v77, v81);
          MEMORY[0x1AC5A9410](v9, v10);

          sub_1ABA7F994(v19, v20, v21, v22, v23, v24, v25, v26, v51, v54, v57, v59, v62, v65, v68, v9, v74, v78, v82);
          MEMORY[0x1AC5A9410](126, 0xE100000000000000);

          sub_1ABA7F994(v27, v28, v29, v30, v31, v32, v33, v34, v52, v55, v58, v60, v63, v66, v69, v72, v75, v79, v83);
          MEMORY[0x1AC5A9410](v6, v7);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v35 = v76;
          }

          else
          {
            sub_1ABAD8758();
            v35 = v43;
          }

          v36 = *(v35 + 16);
          if (v36 >= *(v35 + 24) >> 1)
          {
            sub_1ABAD8758();
            v35 = v44;
          }

          *(v35 + 16) = v36 + 1;
          v73 = v35;
          v37 = (v35 + 88 * v36);
          v37[4] = v80;
          v37[5] = v84;
          v37[6] = 0;
          v37[7] = v70;
          v37[8] = v8;
          v37[9] = 0;
          v37[10] = v71;
          v37[11] = v10;
          v37[12] = v6;
          v37[13] = v7;
          v37[14] = MEMORY[0x1E69E7CC0];
          v1 = v61;
        }

        else
        {
          if (qword_1ED86E458 != -1)
          {
            sub_1ABA7D0C4();
            swift_once();
          }

          v38 = sub_1ABF237F4();
          sub_1ABA7AA24(v38, qword_1ED86E460);

          v39 = sub_1ABF237D4();
          v40 = sub_1ABF24664();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *v41 = v56;
            v42 = sub_1ABADD6D8(v6, v7, &v85);

            *(v41 + 4) = v42;
            v1 = v61;
            *(v41 + 12) = 2080;
            *(v41 + 14) = sub_1ABADD6D8(v64, v61, &v85);
            _os_log_impl(&dword_1ABA78000, v39, v40, "Error converting %s of type %s to string value", v41, 0x16u);
            swift_arrayDestroy();
            sub_1ABA7BC34();
            sub_1ABA7BC34();
          }

          else
          {
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    else
    {
      v73 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for ResultGraph();
    v47 = swift_allocObject();
    v48 = MEMORY[0x1E69E7CC0];
    *(v47 + 16) = sub_1ABF239C4();
    *(v47 + 24) = v48;
    LOBYTE(v85) = 0;
    v46 = v73;
    sub_1ABE489A8(v73, &v85);
  }

  else
  {

    type metadata accessor for ResultGraph();
    v45 = swift_allocObject();
    v46 = MEMORY[0x1E69E7CC0];
    *(v45 + 16) = sub_1ABF239C4();
    *(v45 + 24) = v46;
  }

  return v46;
}

void sub_1ABE427F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1ABF21A74();
  sub_1ABA7BB64();
  v79 = v11;
  v80 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF21EB4();
  sub_1ABA7BB64();
  v84 = v14;
  v85 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v82 = &v73 - v24;
  v25 = sub_1ABF21FE4();
  sub_1ABA7BB64();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v81 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1ABB24D04(a3, a4);
  if (v30)
  {
    if (qword_1ED86E458 != -1)
    {
      sub_1ABA7D0C4();
      swift_once();
    }

    v31 = sub_1ABF237F4();
    sub_1ABA7AA24(v31, qword_1ED86E460);

    v32 = sub_1ABF237D4();
    v33 = sub_1ABF24664();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_7;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v87 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1ABADD6D8(a3, a4, &v87);
    _os_log_impl(&dword_1ABA78000, v32, v33, "cannot convert %s to Double", v34, 0xCu);
    sub_1ABA84B54(v35);
    sub_1ABA7BC34();
    goto LABEL_6;
  }

  v92 = 0;
  v93 = 0xE000000000000000;
  v78 = 279;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1ABA91D48(*_Records_GDEntityPredicate_records, *(_Records_GDEntityPredicate_records + 1), *(_Records_GDEntityPredicate_records + 2), &v87);

  v36 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v36 || (sub_1ABA7C78C(0x6E6F697461727564) & 1) != 0)
  {
    v75 = v27;
    v76 = a5;
    v77 = v25;
    sub_1ABF21FC4();
    sub_1ABF21EA4();
    sub_1ABF21EA4();
    sub_1ABF21E24();
    v37 = *(v85 + 8);
    v85 += 8;
    v74 = v37;
    v37(v20, v84);
    sub_1ABAD219C(&qword_1EB4D9148, &unk_1ABF6BDF0);
    v38 = sub_1ABF21FD4();
    sub_1ABA7BB64();
    v40 = v39;
    v42 = *(v41 + 72);
    v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1ABF3BFC0;
    v45 = v44 + v43;
    v46 = *(v40 + 104);
    v46(v45, *MEMORY[0x1E6969A68], v38);
    v46(v45 + v42, *MEMORY[0x1E6969A78], v38);
    v46(v45 + 2 * v42, *MEMORY[0x1E6969A48], v38);
    sub_1ABB2CB2C(v44);
    sub_1ABF21F74();

    v47 = sub_1ABF21A44();
    if ((v48 & 1) == 0)
    {
      v49 = v47;
      v50 = sub_1ABF21A54();
      if ((v51 & 1) == 0)
      {
        v52 = v50;
        v53 = sub_1ABF21A24();
        if ((v54 & 1) == 0)
        {
          v55 = v53;
          v87 = 0;
          v88 = 0xE000000000000000;
          sub_1ABF24AB4();

          v87 = 0x203A7372616559;
          v88 = 0xE700000000000000;
          v86 = v49;
          v56 = sub_1ABA81188();
          MEMORY[0x1AC5A9410](v56);

          MEMORY[0x1AC5A9410](0x7368746E6F4D202CLL, 0xEA0000000000203ALL);
          v86 = v52;
          v57 = sub_1ABA81188();
          MEMORY[0x1AC5A9410](v57);

          MEMORY[0x1AC5A9410](0x203A73796144202CLL, 0xE800000000000000);
          v86 = v55;
          v58 = sub_1ABA81188();
          MEMORY[0x1AC5A9410](v58);

          MEMORY[0x1AC5A9410](v87, v88);
        }
      }
    }

    v59 = v77;
    a5 = v76;
    if (v78 >= 0xB6)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[2172], *(_Records_GDEntityPredicate_records + 544), *(_Records_GDEntityPredicate_records + 545), &v87);
        (*(v79 + 8))(v13, v80);
        v60 = v84;
        v61 = v74;
        v74(v83, v84);
        v61(v82, v60);
        (*(v75 + 8))(v81, v59);
LABEL_21:
        v62 = v87;
        v63 = v88;
        v64 = v89;
        v65 = v90;
        v66 = v91;
        v67 = v93;
        *a5 = v92;
        *(a5 + 8) = v67;
        *(a5 + 16) = v62;
        *(a5 + 24) = v63;
        *(a5 + 32) = v64;
        *(a5 + 40) = v65;
        *(a5 + 48) = v66;
        return;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_34;
  }

  v68 = a1 == 0x656D697465746164 && a2 == 0xE800000000000000;
  if (!v68 && (sub_1ABA7C78C(0x656D697465746164) & 1) == 0)
  {
    if (qword_1ED86E458 == -1)
    {
LABEL_31:
      v70 = sub_1ABF237F4();
      sub_1ABA7AA24(v70, qword_1ED86E460);
      v32 = sub_1ABF237D4();
      v71 = sub_1ABF24664();
      if (!os_log_type_enabled(v32, v71))
      {
        goto LABEL_7;
      }

      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_1ABA78000, v32, v71, "unknown conversion type", v72, 2u);
LABEL_6:
      sub_1ABA7BC34();
LABEL_7:

      *(a5 + 48) = 0;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *a5 = 0u;
      return;
    }

LABEL_35:
    sub_1ABA7D0C4();
    swift_once();
    goto LABEL_31;
  }

  sub_1ABF21E04();
  v92 = sub_1ABF21E94();
  v93 = v69;
  if (v78 < 0x92)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v87);
    (*(v85 + 8))(v17, v84);
    goto LABEL_21;
  }

LABEL_38:
  __break(1u);
}

void sub_1ABE4308C(uint64_t a1)
{
  type metadata accessor for QueryContext(319);
  if (v1 <= 0x3F)
  {
    sub_1ABE431C0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ResultGraph();
      if (v3 <= 0x3F)
      {
        sub_1ABE4321C(319);
        if (v4 <= 0x3F)
        {
          sub_1ABE47CF0(319, &qword_1EB4D00C8, &type metadata for KnosisResult.Status, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1ABE47CF0(319, &qword_1EB4CF828, &type metadata for RouteFlag, MEMORY[0x1E69E62F8]);
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

void sub_1ABE431C0(uint64_t a1)
{
  if (!qword_1EB4CF820)
  {
    sub_1ABAE4254();
    v1 = sub_1ABF243D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4CF820);
    }
  }
}

void sub_1ABE4321C(uint64_t a1)
{
  if (!qword_1EB4CF788)
  {
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v1 = sub_1ABF247E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4CF788);
    }
  }
}

void *sub_1ABE43280(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  v5 = 32;
  v36 = xmmword_1ABF34740;
  v37 = v4;
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + v5), 0x70uLL);
    v6 = __dst[0];
    v7 = sub_1ABAF81A8();
    v9 = v3[2];
    v10 = (v8 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      goto LABEL_19;
    }

    v12 = v8;
    if (v3[3] >= v11)
    {
      v21 = v7;
      sub_1ABB345D8(__dst, v38);
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1ABB345D8(__dst, v38);
      sub_1ABC04098(v11, 1, v13, v14, v15, v16, v17, v18, v34, v35, v36, SBYTE4(v36));
      v3 = v40;
      v19 = sub_1ABAF81A8();
      if ((v12 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

      v21 = v19;
      if (v12)
      {
LABEL_11:
        v26 = v3[7];
        v27 = *(v26 + 8 * v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v26 + 8 * v21) = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAD89DC();
          v27 = v31;
          *(v26 + 8 * v21) = v31;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1ABA7BBEC(v29);
          sub_1ABAD89DC();
          v27 = v32;
          *(v26 + 8 * v21) = v32;
        }

        *(v27 + 16) = v30 + 1;
        memcpy((v27 + 112 * v30 + 32), __dst, 0x70uLL);
        v4 = v37;
        goto LABEL_16;
      }
    }

    sub_1ABAD219C(&qword_1EB4D17C0, &qword_1ABF33950);
    v22 = swift_allocObject();
    *(v22 + 16) = v36;
    memcpy((v22 + 32), __dst, 0x70uLL);
    sub_1ABA7D110(&v3[v21 >> 6]);
    *(v3[6] + 8 * v21) = v6;
    *(v3[7] + 8 * v21) = v22;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v3[2] = v25;
LABEL_16:
    v5 += 112;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE434CC@<X0>(uint64_t a1@<X8>)
{
  v111 = type metadata accessor for AnswerRenderIterator(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v2);
  v110 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v107 - v5;
  v6 = sub_1ABF23744();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v107 - v13;
  v15 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v22 = sub_1ABF23774();
  sub_1ABA7BB64();
  v113 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  v27 = v26 - v25;
  v112 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BC58();
  v115 = (v30 - v29);
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v31 = sub_1ABA7AA24(v15, qword_1ED871EF8);
    (*(v17 + 16))(v21, v31, v15);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v32 = sub_1ABF23764();
    v33 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      v34 = swift_slowAlloc();
      v108 = v8;
      v35 = a1;
      v36 = v22;
      v37 = v11;
      v38 = v6;
      v39 = v34;
      *v34 = 0;
      v40 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v32, v33, v40, "Knosis.renderAll", "", v39, 2u);
      v6 = v38;
      v11 = v37;
      v22 = v36;
      a1 = v35;
      v8 = v108;
      sub_1ABA7BC34();
    }

    (*(v8 + 16))(v11, v14, v6);
    sub_1ABF237B4();
    swift_allocObject();
    v41 = sub_1ABF237A4();
    (*(v8 + 8))(v14, v6);
    v42 = v115;
    *v115 = "Knosis.renderAll";
    v42[1] = 16;
    *(v42 + 16) = 2;
    v42[3] = v41;
    (*(v113 + 32))(v42 + *(v112 + 24), v27, v22);
    v43 = type metadata accessor for Renderer(0);
    v44 = v114;
    v45 = *(v114 + *(v43 + 28));
    if (v45)
    {
      v47 = *(*v114 + 16);
      v46 = *(*v114 + 24);
      v48 = *(*v114 + 40);
      v113 = *(*v114 + 32);
      Context = type metadata accessor for QueryContext(0);
      v50 = 0;
      v51 = 0;
      v52 = 0;
      if (*(v44 + *(Context + 52)) == 1)
      {
        v53 = (v44 + *(Context + 48));
        v50 = *v53;
        v51 = v53[1];
        v52 = v53[2];
      }

      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      *&v116[0] = v45;
      v54 = v45;

      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      sub_1ABF24C54();
      v56 = __dst[0];
      v55 = __dst[1];

      sub_1ABA94D44();
      *a1 = v47;
      *(a1 + 8) = v46;
      v57 = MEMORY[0x1E69E7CC0];
      *(a1 + 16) = v113;
      *(a1 + 24) = v48;
      *(a1 + 32) = v57;
      *(a1 + 40) = 2;
      *(a1 + 48) = v56;
      *(a1 + 56) = v55;
      sub_1ABA9A5B8();
      *(a1 + 144) = v50;
      *(a1 + 152) = v51;
      *(a1 + 160) = v52;
LABEL_22:
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      goto LABEL_23;
    }

    v58 = v43;
    if (*(v114 + *(v43 + 32)) == 4)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(v114 + *(v43 + 32));
    }

    v60 = sub_1ABE47EF0();
    v27 = v110;
    if (!v60)
    {
LABEL_14:
      switch(v59)
      {
        case 0:
        case 2:
          goto LABEL_18;
        case 1:
          goto LABEL_15;
        case 3:
          goto LABEL_17;
        default:
          JUMPOUT(0);
      }
    }

    switch(v59)
    {
      case 3:

LABEL_17:
        v59 = 3;
LABEL_18:
        sub_1ABF25054();
        sub_1ABAA4578();
        if (v33)
        {
          goto LABEL_19;
        }

        v112 = v59;
        v73 = *(*v44 + 88);
        v72 = *(*v44 + 96);
        v113 = *v44;
        v74 = sub_1ABE442C8(v72, v73);
        LODWORD(v108) = v75;
        v76 = v109;
        sub_1ABE4716C(v44, v109, type metadata accessor for QueryContext);
        v15 = *(v44 + *(v58 + 20));
        v14 = *(v44 + *(v58 + 40));
        v77 = *(v74 + 16);
        v78 = v111;
        v79 = v76 + v111[8];
        *(v76 + v111[5]) = v15;
        *(v76 + v78[6]) = v74;
        *(v76 + v78[7]) = v77;
        *v79 = 0;
        *(v79 + 8) = 1;
        *(v76 + v78[9]) = v14;
        sub_1ABA7F9B0();
        sub_1ABE4716C(v76, v27, v80);
        v17 = v78[6];
        v21 = *(v27 + v17);
        if (*(v21 + 16))
        {
          v22 = v27 + v78[8];

          v11 = MEMORY[0x1E69E7CC0];
          v6 = 112;
          while (1)
          {
            if (*(v22 + 8))
            {
              v8 = 0;
              *v22 = 0;
              *(v22 + 8) = 0;
LABEL_34:
              v15 = v27;
              sub_1ABE44B9C();
              goto LABEL_35;
            }

            v81 = *v22;
            if (*v22 >= *(v21 + 16) - 1)
            {
              goto LABEL_44;
            }

            *(v22 + 8) = 0;
            v8 = v81 + 1;
            *v22 = v81 + 1;
            if (v81 == -1)
            {
              v8 = 0;
              goto LABEL_34;
            }

            v82 = *(v27 + v111[7]);
            if (v82 && (v82 == -1 || !(v8 % v82)))
            {
              goto LABEL_34;
            }

LABEL_35:
            if (v8 < 0)
            {
              break;
            }

            v21 = *(v27 + v17);
            if (v8 >= *(v21 + 16))
            {
              goto LABEL_56;
            }

            memcpy(__dst, (v21 + 112 * v8 + 32), sizeof(__dst));
            sub_1ABAE441C(__dst, v116);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7BEF0();
              sub_1ABAD8BA4();
              v11 = v85;
            }

            v84 = *(v11 + 2);
            v83 = *(v11 + 3);
            v15 = v84 + 1;
            if (v84 >= v83 >> 1)
            {
              sub_1ABA7BBEC(v83);
              sub_1ABAD8BA4();
              v11 = v86;
            }

            *(v11 + 2) = v15;
            memcpy(&v11[112 * v84 + 32], __dst, 0x70uLL);
            if (!*(v21 + 16))
            {
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          swift_once();
          continue;
        }

        v11 = MEMORY[0x1E69E7CC0];
LABEL_44:
        sub_1ABA7DF8C();
        sub_1ABE471CC(v27, v87);
        v88 = *(v14 + 2);
        if (v88)
        {
          v89 = v14 + 32;
          if (qword_1EB4D0248 != -1)
          {
            sub_1ABA939C8();
            swift_once();
          }

          v90 = qword_1EB5495C0;
          do
          {
            ++v89;
            if (*(v90 + 16))
            {
              v91 = sub_1ABAF8268();
              if (v92)
              {
                sub_1ABA93E64(*(v90 + 56) + 40 * v91, v116);
                sub_1ABA946C0(v116, __dst);
                v93 = __dst[3];
                v94 = __dst[4];
                sub_1ABA93E20(__dst, __dst[3]);
                v95 = (*(v94 + 16))(v11, v114, v93, v94);

                sub_1ABA84B54(__dst);
                v11 = v95;
              }
            }

            --v88;
          }

          while (v88);
        }

        v96 = *(v113 + 24);
        v111 = *(v113 + 16);
        v98 = *(v113 + 32);
        v97 = *(v113 + 40);
        v99 = type metadata accessor for QueryContext(0);
        v100 = 0;
        v101 = 0;
        v102 = 0;
        if (*(v114 + *(v99 + 52)) == 1)
        {
          v103 = (v114 + *(v99 + 48));
          v100 = *v103;
          v101 = v103[1];
          v102 = v103[2];
        }

        v104 = *(v113 + 88);
        v105 = *(v113 + 96);

        sub_1ABA7DF8C();
        sub_1ABE471CC(v109, v106);
        *(a1 + 88) = 0u;
        *(a1 + 104) = 0u;
        *(a1 + 120) = 0u;
        *(a1 + 136) = 0u;
        *(a1 + 152) = 0u;
        *a1 = v111;
        *(a1 + 8) = v96;
        *(a1 + 16) = v98;
        *(a1 + 24) = v97;
        *(a1 + 32) = v11;
        *(a1 + 40) = v112;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0xE000000000000000;
        sub_1ABA9A5B8();
        *(a1 + 144) = v100;
        *(a1 + 152) = v101;
        *(a1 + 160) = v102;
        *(a1 + 64) = v104;
        *(a1 + 72) = v105;
        *(a1 + 80) = v108 & 1;
LABEL_23:
        v70 = v115;
        sub_1ABE44020(v115);
        return sub_1ABE471CC(v70, type metadata accessor for LogSignpost);
      default:
        sub_1ABF25054();
        sub_1ABAA4578();
        if (v33)
        {
          goto LABEL_14;
        }

LABEL_15:

LABEL_19:
        v62 = *(*v44 + 16);
        v61 = *(*v44 + 24);
        v64 = *(*v44 + 32);
        v63 = *(*v44 + 40);
        v65 = type metadata accessor for QueryContext(0);
        v66 = 0;
        v67 = 0;
        v68 = 0;
        if (*(v44 + *(v65 + 52)) == 1)
        {
          v69 = (v44 + *(v65 + 48));
          v66 = *v69;
          v67 = v69[1];
          v68 = v69[2];
        }

        sub_1ABA94D44();
        *a1 = v62;
        *(a1 + 8) = v61;
        *(a1 + 16) = v64;
        *(a1 + 24) = v63;
        *(a1 + 32) = MEMORY[0x1E69E7CC0];
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0xE000000000000000;

        sub_1ABA9A5B8();
        *(a1 + 144) = v66;
        *(a1 + 152) = v67;
        *(a1 + 160) = v68;
        goto LABEL_22;
    }
  }
}

uint64_t sub_1ABE44020(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1ABF23744();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LogSignpost(0);
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = sub_1ABF23764();
  sub_1ABF23794();
  v18 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
LABEL_9:

      sub_1ABF237C4();

      v13 = v19;
      if ((*(v19 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v4, v2);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v11, v18, v16, v9, v14, v15, 2u);
      MEMORY[0x1AC5AB8B0](v15, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v9 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v20;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABE442C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Renderer(0);
  v5 = sub_1ABE48AE8(v4);
  v6 = *(v5 + 16);
  if (!v6)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v67 = v5 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v69 = a2;
  v64 = a2;
  v65 = *(v5 + 16);
  v66 = v5;
  while (v7 < *(v5 + 16))
  {
    if (a1 < 1)
    {
      v9 = v67 + 40 * v7;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 24);
      v13 = *(v9 + 32);
      if (a2 >= 1)
      {
        v14 = v69 - 1;
        if (__OFSUB__(v69, 1))
        {
          goto LABEL_39;
        }

        --v69;
        if (v14 < 0)
        {
LABEL_36:

          return v8;
        }
      }

      v77 = v13;
      v75 = v7;
      swift_bridgeObjectRetain_n();

      v76 = a1;
      if (sub_1ABF23E64() & 1) == 0 || (, EntityIdentifier.init(_:)(v11, v10, v85), (BYTE8(v85[0])))
      {
        sub_1ABA9AC84(v11, v10);
        if (v15)
        {
          v78 = v11;
          sub_1ABB7F054(v11, v10);
          if (v16)
          {
            v73 = 0;
            v74 = 0;
            v71 = 0;
            v72 = v10;
LABEL_18:
            sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
            sub_1ABAE4254();
            v70 = sub_1ABF239C4();

            sub_1ABE7A35C(v26);
            v28 = v27;

            *&v85[0] = v28;

            sub_1ABE48A4C(v85);

            v29 = *(*&v85[0] + 16);
            if (v29)
            {
              v68 = v8;
              v30 = v29 - 1;
              v31 = 32;
              v80 = MEMORY[0x1E69E7CC0];
              v32 = *&v85[0];
              v79 = *&v85[0];
              while (1)
              {
                memcpy(__dst, (v32 + v31), 0x58uLL);
                memcpy(v84, (v32 + v31), sizeof(v84));
                sub_1ABB242A4(__dst, v83);
                sub_1ABD8B724();
                v34 = v88;
                v33 = v89;
                v36 = v90;
                v35 = v91;
                v37 = v92;
                sub_1ABAD219C(&qword_1EB4DAFE0, &unk_1ABF6BE30);
                v38 = swift_allocObject();
                *(v38 + 16) = xmmword_1ABF34740;
                *(v38 + 32) = v34;
                *(v38 + 40) = v33;
                *(v38 + 48) = v36;
                *(v38 + 56) = v35;
                *(v38 + 64) = v37;
                sub_1ABAD219C(&qword_1EB4D1A58, &qword_1ABF33BE8);
                v39 = swift_allocObject();
                v40 = v85[0];
                v41 = v85[1];
                *(v39 + 16) = xmmword_1ABF34740;
                *(v39 + 32) = v40;
                v42 = v86;
                *(v39 + 48) = v41;
                *(v39 + 64) = v42;
                *(v39 + 80) = v87;
                *(v39 + 88) = v34;
                *(v39 + 96) = v33;
                *(v39 + 104) = v36;
                *(v39 + 112) = v35;
                *(v39 + 120) = v37;
                v43 = v93;
                v44 = v94;
                v45 = *v95;
                *(v39 + 168) = *&v95[14];
                *(v39 + 154) = v45;
                *(v39 + 138) = v44;
                *(v39 + 122) = v43;
                *(v38 + 72) = v39;

                v46 = sub_1ABF239C4();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABA7BEF0();
                  sub_1ABAD8BA4();
                  v80 = v52;
                }

                v48 = *(v80 + 16);
                v47 = *(v80 + 24);
                v32 = v79;
                if (v48 >= v47 >> 1)
                {
                  sub_1ABA7BBEC(v47);
                  sub_1ABAD8BA4();
                  v80 = v53;
                }

                *(v80 + 16) = v48 + 1;
                v49 = v80 + 112 * v48;
                *(v49 + 32) = 0u;
                *(v49 + 48) = 0u;
                *(v49 + 64) = 0;
                *(v49 + 66) = 4;
                *(v49 + 71) = v82;
                *(v49 + 67) = v81;
                *(v49 + 72) = 0u;
                *(v49 + 88) = 0u;
                *(v49 + 104) = v46;
                v50 = MEMORY[0x1E69E7CC0];
                *(v49 + 112) = MEMORY[0x1E69E7CC0];
                *(v49 + 120) = 0;
                *(v49 + 128) = 0;
                v51 = *v83;
                *(v49 + 132) = *&v83[3];
                *(v49 + 129) = v51;
                *(v49 + 136) = v50;
                if (!v30)
                {
                  break;
                }

                --v30;
                v31 += 88;
              }

              a2 = v64;
              v8 = v68;
            }

            else
            {

              v80 = MEMORY[0x1E69E7CC0];
            }

            *v83 = v84[0];
            v83[4] = BYTE4(v84[0]);
            __dst[0] = v85[0];
            *(__dst + 3) = *(v85 + 3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7BEF0();
              sub_1ABAD8BA4();
              v8 = v61;
            }

            v55 = *(v8 + 16);
            v54 = *(v8 + 24);
            v56 = v77;
            v57 = v78;
            if (v55 >= v54 >> 1)
            {
              sub_1ABA7BBEC(v54);
              sub_1ABAD8BA4();
              v57 = v78;
              v56 = v77;
              v8 = v62;
            }

            *(v8 + 16) = v55 + 1;
            v58 = v8 + 112 * v55;
            *(v58 + 32) = v57;
            *(v58 + 40) = v72;
            *(v58 + 48) = v74;
            *(v58 + 56) = v73;
            *(v58 + 64) = v71;
            *(v58 + 66) = BYTE4(v71);
            v59 = v83[4];
            *(v58 + 67) = *v83;
            *(v58 + 71) = v59;
            *(v58 + 72) = 0u;
            *(v58 + 88) = 0u;
            *(v58 + 104) = v70;
            *(v58 + 112) = v80;
            *(v58 + 120) = v12;
            *(v58 + 128) = v56;
            v60 = __dst[0];
            *(v58 + 132) = *(__dst + 3);
            *(v58 + 129) = v60;
            *(v58 + 136) = MEMORY[0x1E69E7CC0];
            v7 = v75;
            a1 = v76;
            v6 = v65;
            v5 = v66;
            goto LABEL_33;
          }

          sub_1ABAA5088();
          v22 = sub_1ABA84398();
          sub_1ABA8882C(v22, v23, v24, v25);
          sub_1ABA90B58();
          BYTE4(v71) = 3;
          v21 = v86;
        }

        else
        {
          sub_1ABAA5088();
          v17 = sub_1ABA84398();
          sub_1ABA91D48(v17, v18, v19, v20);
          sub_1ABA90B58();
          BYTE4(v71) = 2;
          v21 = v86;
        }

        LOWORD(v71) = v21;
        goto LABEL_18;
      }

      v78 = *&v85[0];

      v72 = 0;
      v73 = 0;
      v74 = 0;
      v71 = 0x100000000;
      goto LABEL_18;
    }

    --a1;
LABEL_33:
    if (++v7 == v6)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1ABE44A58(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for AnswerRenderIterator(0);
  v4 = v3[6];
  v5 = *(*(v1 + v4) + 16);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = (v1 + v3[8]);
  if (v6[1])
  {
    v7 = 0;
    *v6 = 0;
    *(v6 + 8) = 0;
    goto LABEL_4;
  }

  v10 = *v6;
  if (*v6 >= v5 - 1)
  {
LABEL_11:
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return;
  }

  *(v6 + 8) = 0;
  v7 = v10 + 1;
  *v6 = v10 + 1;
  if (v10 == -1)
  {
    v7 = 0;
  }

  else
  {
    v11 = *(v1 + v3[7]);
    if (v11 != -1 && (!v11 || v7 % v11))
    {
      goto LABEL_5;
    }
  }

LABEL_4:
  sub_1ABE44B9C();
LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v1 + v4);
    if (v7 < *(v8 + 16))
    {
      v9 = v8 + 112 * v7;
      memcpy(__dst, (v9 + 32), sizeof(__dst));
      memcpy(a1, (v9 + 32), 0x70uLL);
      sub_1ABAE441C(__dst, &v12);
      return;
    }
  }

  __break(1u);
}

void sub_1ABE44B9C()
{
  type metadata accessor for AnswerRenderIterator(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v260 = v6 - v5;
  v7 = (v0 + v4[8]);
  if (v7[1])
  {
    return;
  }

  v8 = *v7;
  v9 = *(v0 + v4[7]);
  v245 = v8;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v252 = v4[6];
  v2 = *(v0 + v252);
  if (v2[2] < v11)
  {
    v11 = v2[2];
  }

  v12 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  v254 = v4;
  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  sub_1ABF239C4();
  v253 = v0;
  v13 = *(v0 + v254[9]);
  v14 = *(v13 + 16);
  v243 = v13;
  v244 = v2;
  v15 = (v13 + 32);
  v242 = v13 + 32;
  while (1)
  {
    if (!v14)
    {
      if (*(v0 + *(type metadata accessor for QueryContext(0) + 56)))
      {
        goto LABEL_33;
      }

      if (v12 >= v245)
      {
        if (!__OFADD__(v12, 1))
        {
          sub_1ABDF015C();
          v18 = v17;
          v20 = v19 >> 1;
          v21 = MEMORY[0x1E69E7CC0];
          v2 = (v22 + 112 * v17);
          while (v20 != v18)
          {
            if (v18 >= v20)
            {
              goto LABEL_221;
            }

            memcpy(v295, v2, 0x70uLL);
            v23 = v295[0];
            v24 = 0xE000000000000000;
            v25 = 0;
            switch(BYTE2(v295[2]))
            {
              case 1:
                v26 = 3826797;
                if ((*&v295[0] & 0x80000000000000) == 0)
                {
                  v26 = 3828069;
                }

                *&v293[0] = v26;
                *(&v293[0] + 1) = 0xE300000000000000;
                __dst[0] = *&v295[0];
                sub_1ABAE441C(v295, v294);
                v27 = sub_1ABF24FF4();
                MEMORY[0x1AC5A9410](v27);

                sub_1ABC6D404(v295);
                v25 = *&v293[0];
                v24 = 0xE300000000000000;
                break;
              case 2:
              case 3:

                goto LABEL_26;
              case 4:
                break;
              default:
                sub_1ABAE4358(*&v295[0], *(&v295[0] + 1), *&v295[1], *(&v295[1] + 1), LOWORD(v295[2]), 0);
LABEL_26:
                v24 = *(&v23 + 1);
                v25 = v23;
                break;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7BEF0();
              sub_1ABAAA4F4();
              v21 = v31;
            }

            v29 = *(v21 + 16);
            v28 = *(v21 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_1ABA7BBEC(v28);
              sub_1ABAAA4F4();
              v21 = v32;
            }

            *(v21 + 16) = v29 + 1;
            v30 = v21 + 16 * v29;
            *(v30 + 32) = v25;
            *(v30 + 40) = v24;
            v2 += 14;
            ++v18;
          }

LABEL_172:
          swift_unknownObjectRelease();
          v180 = sub_1ABE8AE5C(v21);
          LOBYTE(v294[0]) = 0;
          v294[1] = v180;
          LOBYTE(v294[2]) = 0;
          v294[3] = 0;
          LOBYTE(v294[4]) = 0;
          v294[5] = 0;
          LOBYTE(v294[6]) = 0;
          v294[7] = 0;
          LOBYTE(v294[8]) = 0;
          v294[9] = 0;
          *&v295[0] = v294[0];
          *(&v295[0] + 1) = v180;
          v295[1] = v294[2];
          v295[2] = v294[4];
          v295[3] = v294[6];
          v295[4] = v294[8];
          *(&v295[5] + 1) = 0;
          BYTE8(v295[6]) = 32;
          sub_1ABE46684(v295);
          v2 = 0;
LABEL_180:
          v241 = v2;
          sub_1ABB420A4(v294);
          v2 = v244;
          goto LABEL_34;
        }

        goto LABEL_248;
      }

LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
      sub_1ABA7D0C4();
      swift_once();
      v181 = sub_1ABF237F4();
      sub_1ABA7AA24(v181, qword_1ED86E460);
      v182 = v2;
      v183 = sub_1ABF237D4();
      v184 = sub_1ABF24664();

      if (os_log_type_enabled(v183, v184))
      {
        v185 = swift_slowAlloc();
        v186 = sub_1ABA82874();
        *&v295[0] = v186;
        *v185 = 136315138;
        *&v293[0] = v2;
        v187 = v2;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        v188 = sub_1ABF23C74();
        sub_1ABADD6D8(v188, v189, v295);
        v190 = v2;
        sub_1ABAA5AAC();

        *(v185 + 4) = v2;
        sub_1ABAA5504(&dword_1ABA78000, v191, v192, "KGRenderer: getEntityFacts failed: %s");
        sub_1ABA84B54(v186);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
LABEL_185:

        return;
      }

      v203 = v2;
LABEL_188:

      return;
    }

    if (!*v15)
    {
      v16 = sub_1ABAA61E0();
      goto LABEL_12;
    }

    if (*v15 != 2)
    {
      break;
    }

    v16 = 0xD000000000000013;
LABEL_12:
    sub_1ABA81C38(v16);
    sub_1ABAA4578();
    ++v15;
    --v14;
    if (v1)
    {
      goto LABEL_33;
    }
  }

  sub_1ABA97DA8();

LABEL_33:
  v241 = 0;
LABEL_34:
  sub_1ABB668FC();
  sub_1ABF239C4();
  v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v33 setTimeStyle_];
  [v33 setDateStyle_];
  v34 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v34 setTimeStyle_];
  [v34 setDateStyle_];
  v35 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v35 setUnitsStyle_];
  [v35 setMaximumUnitCount_];
  sub_1ABF217F4();
  swift_allocObject();
  v236 = sub_1ABF217E4();
  v240 = *(v253 + *(type metadata accessor for QueryContext(0) + 56));
  v238 = v34;
  v239 = v33;
  v246 = v35;
  if (v240 != 1)
  {
    v251 = v12 + 1;
    v44 = __OFADD__(v12, 1);
    v45 = v33;
    v46 = v34;
    v47 = v35;
    if (v44)
    {
      goto LABEL_242;
    }

    goto LABEL_45;
  }

  if (v12 < v245)
  {
    goto LABEL_244;
  }

  if (__OFADD__(v12, 1))
  {
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  v251 = v12 + 1;
  LOBYTE(v34) = sub_1ABDF015C();
  v37 = v36;
  v39 = v38;
  *&v293[0] = MEMORY[0x1E69E7CC0];
  v41 = v40 >> 1;
  v232 = v239;
  v231 = v238;
  v230 = v246;
  v42 = (v37 + 112 * v39);
  while (v41 != v39)
  {
    if (v39 >= v41)
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
      goto LABEL_228;
    }

    memcpy(v295, v42, 0x70uLL);
    ++v39;
    memcpy(v294, v295, 0x70uLL);
    sub_1ABD86AC4();
    sub_1ABD7DCE0(v43);
    v42 += 112;
  }

  swift_unknownObjectRelease();
  v50 = sub_1ABE8AC38();
  sub_1ABD630B4();
  v233 = v51;
  sub_1ABDF015C();
  v297[0] = MEMORY[0x1E69E7CC0];
  v55 = v54 >> 1;
  v247 = v52;
  v249 = v50;
  v234 = v54 >> 1;
LABEL_49:
  if (v53 != v55)
  {
    if (v53 < v55)
    {
      v56 = v53;
      memcpy(__dst, (v52 + 112 * v53), 0x70uLL);
      v255 = v56 + 1;
      v261 = *(__dst[10] + 16);
      sub_1ABAE441C(__dst, v295);
      v57 = 0;
      v2 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v264 = v2;
        if (v57 == v261)
        {
          break;
        }

        sub_1ABC43DF0();
        sub_1ABAA4B70(v294);
        sub_1ABAA4B70(v293);
        sub_1ABAE441C(v294, v295);
        sub_1ABD7D6C8();
        v59 = v58;
        v60 = 0;
        v286 = *(v58 + 16);
        v275 = MEMORY[0x1E69E7CC0];
        v280 = v58;
LABEL_54:
        v61 = 144 * v60 + 32;
        while (v286 != v60)
        {
          v62 = *(v59 + 16);
          if (v60 >= v62)
          {
            __break(1u);
            goto LABEL_176;
          }

          v63 = v60;
          memcpy(v295, (v59 + v61), sizeof(v295));
          KnosisFact.splitSubentityIdentifier()(v308);
          v64 = v308[0];
          v65 = v308[1];
          v66 = *&v308[2];
          v67 = WORD4(v308[2]);
          v68 = *&v308[3];
          if (*&v308[1])
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7BEF0();
              sub_1ABAD8E08();
              v275 = v74;
            }

            v70 = *(v275 + 16);
            v69 = *(v275 + 24);
            v71 = v70 + 1;
            if (v70 >= v69 >> 1)
            {
              sub_1ABA7BBEC(v69);
              v257 = v75;
              sub_1ABAD8E08();
              v71 = v257;
              v72 = v63;
              v275 = v76;
            }

            else
            {
              v72 = v63;
            }

            v60 = v72 + 1;
            *(v275 + 16) = v71;
            v73 = v275 + 56 * v70;
            *(v73 + 32) = v64;
            *(v73 + 48) = v65;
            *(v73 + 64) = v66;
            *(v73 + 72) = v67;
            *(v73 + 80) = v68;
            v59 = v280;
            goto LABEL_54;
          }

          sub_1ABD0DCB0(*&v308[0], *(&v308[0] + 1), 0);
          v61 += 144;
          v60 = v63 + 1;
          v59 = v280;
        }

        sub_1ABC6D404(v294);

        v77 = *(v275 + 16);
        v2 = v264;
        v34 = v264[2];
        if (__OFADD__(v34, v77))
        {
          goto LABEL_217;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || (v78 = v264[3] >> 1, v78 < v34 + v77))
        {
          sub_1ABAD8E08();
          v2 = v79;
          v78 = v79[3] >> 1;
        }

        ++v57;
        if (!*(v275 + 16))
        {

          if (!v77)
          {
            continue;
          }

          goto LABEL_219;
        }

        v80 = v2[2];
        if (v78 - v80 < v77)
        {
          goto LABEL_220;
        }

        LOBYTE(v34) = v2 + 56 * v80;
        sub_1ABAD219C(&qword_1EB4D1A68, &unk_1ABF6BE10);
        swift_arrayInitWithCopy();

        if (v77)
        {
          v81 = v2[2];
          v10 = __OFADD__(v81, v77);
          v82 = v81 + v77;
          if (v10)
          {
            goto LABEL_224;
          }

          v2[2] = v82;
        }
      }

      v83 = 0;
      v287 = v2[2];
      v84 = v2 + 9;
      v268 = MEMORY[0x1E69E7CC0];
      while (v287 != v83)
      {
        if (v83 >= v2[2])
        {
          goto LABEL_218;
        }

        v86 = *(v84 - 4);
        v85 = *(v84 - 3);
        v87 = *(v84 - 2);
        v34 = *(v84 - 1);
        v88 = *v84;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1ABA7BEF0();
          sub_1ABAD8B6C(v92, v93, v94, v95);
          v268 = v96;
        }

        v90 = *(v268 + 16);
        v89 = *(v268 + 24);
        if (v90 >= v89 >> 1)
        {
          v97 = sub_1ABA7BBEC(v89);
          sub_1ABAD8B6C(v97, v90 + 1, 1, v268);
          v268 = v98;
        }

        *(v268 + 16) = v90 + 1;
        v91 = v268 + 40 * v90;
        *(v91 + 32) = v86;
        *(v91 + 40) = v85;
        *(v91 + 48) = v87;
        *(v91 + 56) = v34;
        *(v91 + 64) = v88;
        v84 += 28;
        ++v83;
        v2 = v264;
      }

      v99 = 0;
      v100 = MEMORY[0x1E69E7CC0];
      while (1)
      {
LABEL_85:
        if (v99 == v261)
        {
          *&v295[0] = v100;
          sub_1ABD7DC38(v268);
          sub_1ABC6D404(__dst);
          sub_1ABD7DC38(*&v295[0]);
          v2 = v244;
          v52 = v247;
          v50 = v249;
          v53 = v255;
          v55 = v234;
          goto LABEL_49;
        }

        v265 = v100;
        sub_1ABC43DF0();
        sub_1ABAA4B70(v308);
        v101 = v99 + 1;
        sub_1ABAA4B70(v298);
        sub_1ABAE441C(v308, v295);
        sub_1ABD7D6C8();
        v2 = v102;
        v103 = 0;
        v104 = v102[2];
        v105 = MEMORY[0x1E69E7CC0];
LABEL_87:
        v106 = 144 * v103 + 32;
        while (v104 != v103)
        {
          sub_1ABC43DF0();
          memcpy(v295, v2 + v106, sizeof(v295));
          v12 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            __break(1u);
LABEL_179:
            __break(1u);
            goto LABEL_180;
          }

          memcpy(v294, v2 + v106, sizeof(v294));
          sub_1ABAE42A8(v295, v293);
          KnosisFact.allQualifiers.getter();
          v108 = *(v107 + 16);

          if (v108)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v296 = v105;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1ABADDDBC(0, *(v105 + 16) + 1, 1);
              v105 = v296;
            }

            v111 = *(v105 + 16);
            v110 = *(v105 + 24);
            if (v111 >= v110 >> 1)
            {
              v112 = sub_1ABA7BBEC(v110);
              sub_1ABADDDBC(v112, v111 + 1, 1);
              v105 = v296;
            }

            *(v105 + 16) = v111 + 1;
            memcpy((v105 + 144 * v111 + 32), v295, 0x90uLL);
            ++v103;
            goto LABEL_87;
          }

          sub_1ABAE4304(v295);
          ++v103;
          v106 += 144;
        }

        v258 = v101;

        v12 = 0;
        v281 = *(v105 + 16);
        v113 = (v105 + 120);
        v114 = MEMORY[0x1E69E7CC0];
        v276 = v105;
        while (v281 != v12)
        {
          if (v12 >= *(v105 + 16))
          {
            goto LABEL_179;
          }

          v116 = *(v113 - 4);
          v115 = *(v113 - 3);
          v118 = *(v113 - 2);
          v117 = *(v113 - 1);
          v119 = *v113;

          v288 = v119;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_1ABA7BEF0();
            sub_1ABAD8B6C(v123, v124, v125, v114);
            v114 = v126;
          }

          v121 = *(v114 + 16);
          v120 = *(v114 + 24);
          v2 = (v121 + 1);
          if (v121 >= v120 >> 1)
          {
            v127 = sub_1ABA7BBEC(v120);
            sub_1ABAD8B6C(v127, v121 + 1, 1, v114);
            v114 = v128;
          }

          *(v114 + 16) = v2;
          v122 = v114 + 40 * v121;
          *(v122 + 32) = v116;
          *(v122 + 40) = v115;
          *(v122 + 48) = v118;
          *(v122 + 56) = v117;
          *(v122 + 64) = v288;
          v113 += 72;
          ++v12;
          v105 = v276;
        }

        sub_1ABC6D404(v308);

        v34 = *(v114 + 16);
        v100 = v265;
        v129 = *(v265 + 16);
        v130 = v129 + v34;
        if (__OFADD__(v129, v34))
        {
          goto LABEL_222;
        }

        v131 = swift_isUniquelyReferenced_nonNull_native();
        if ((v131 & 1) == 0 || (v132 = *(v265 + 24) >> 1, v132 < v130))
        {
          if (v129 <= v130)
          {
            v133 = v129 + v34;
          }

          else
          {
            v133 = v129;
          }

          sub_1ABAD8B6C(v131, v133, 1, v265);
          v100 = v134;
          v132 = *(v134 + 24) >> 1;
        }

        v99 = v258;
        if (!*(v114 + 16))
        {
          break;
        }

        if (v132 - *(v100 + 16) < v34)
        {
          goto LABEL_230;
        }

        swift_arrayInitWithCopy();

        if (v34)
        {
          v135 = *(v100 + 16);
          v10 = __OFADD__(v135, v34);
          v136 = v135 + v34;
          if (v10)
          {
            goto LABEL_231;
          }

          *(v100 + 16) = v136;
        }
      }

      if (!v34)
      {
        goto LABEL_85;
      }

      goto LABEL_223;
    }

LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  swift_unknownObjectRelease();
  v204 = sub_1ABD91E50(v297[0], v233);
  if (*(v50 + 16))
  {

    LOBYTE(v294[0]) = 0;
    v294[1] = v50;
    v294[2] = 0;
    LOBYTE(v294[3]) = 0;
    v294[4] = v204;
    LOBYTE(v294[5]) = 0;
    v294[6] = 0;
    LOBYTE(v294[7]) = 0;
    v294[8] = 0;
    LOBYTE(v294[9]) = 0;
    v294[10] = v204;
    LOBYTE(v294[11]) = 0;
    v294[12] = 0;
    LOBYTE(v294[13]) = 1;
    *&v295[0] = v294[0];
    *(&v295[0] + 1) = v50;
    v295[1] = __PAIR128__(v294[3], 0);
    v295[2] = __PAIR128__(v294[5], v204);
    v295[3] = __PAIR128__(v294[7], 0);
    v295[4] = __PAIR128__(v294[9], 0);
    v295[5] = v204;
    *&v295[6] = 0;
    BYTE8(v295[6]) = 65;
    LOBYTE(v293[0]) = 6;

    v205 = sub_1ABE4690C(v295, v293);
    sub_1ABE47224(v294);
    *&v293[0] = MEMORY[0x1E69E7CC0];
    v206 = v205 + 8;
    v207 = 1 << *(v205 + 32);
    v208 = -1;
    if (v207 < 64)
    {
      v208 = ~(-1 << v207);
    }

    v209 = v208 & v205[8];
    v210 = (v207 + 63) >> 6;
    v237 = v205;

    v211 = 0;
    v270 = v210;
    v274 = v205 + 8;
    if (v209)
    {
      while (1)
      {
        v212 = v211;
LABEL_198:
        v292 = (v209 - 1) & v209;
        v285 = v212;
        v213 = *(v237[7] + 8 * (__clz(__rbit64(v209)) | (v212 << 6)));
        v214 = *(v213 + 16);

        v215 = 0;
        v216 = 32;
        v2 = MEMORY[0x1E69E7CC0];
        while (v214 != v215)
        {
          if (v215 >= *(v213 + 16))
          {
            goto LABEL_234;
          }

          memcpy(v295, (v213 + v216), sizeof(v295));
          KnosisFact.extendedTriples()();
          v218 = *(v217 + 16);
          v219 = v2[2];
          if (__OFADD__(v219, v218))
          {
            goto LABEL_235;
          }

          v220 = v217;
          if (!swift_isUniquelyReferenced_nonNull_native() || (v221 = v2[3] >> 1, v221 < v219 + v218))
          {
            sub_1ABAD89DC();
            v2 = v222;
            v221 = v222[3] >> 1;
          }

          if (*(v220 + 16))
          {
            if (v221 - v2[2] < v218)
            {
              goto LABEL_239;
            }

            swift_arrayInitWithCopy();

            if (v218)
            {
              v223 = v2[2];
              v10 = __OFADD__(v223, v218);
              v224 = v223 + v218;
              if (v10)
              {
                goto LABEL_241;
              }

              v2[2] = v224;
            }
          }

          else
          {

            if (v218)
            {
              goto LABEL_236;
            }
          }

          v216 += 144;
          ++v215;
        }

        sub_1ABD7DB90(v2);
        v211 = v285;
        v2 = v244;
        v210 = v270;
        v206 = v274;
        v209 = v292;
        if (!v292)
        {
          goto LABEL_195;
        }
      }
    }

    while (1)
    {
LABEL_195:
      v212 = v211 + 1;
      if (__OFADD__(v211, 1))
      {
        goto LABEL_246;
      }

      if (v212 >= v210)
      {
        break;
      }

      v209 = v206[v212];
      ++v211;
      if (v209)
      {
        goto LABEL_198;
      }
    }

    sub_1ABE43280(v235);
    v225 = sub_1ABAD219C(&qword_1EB4D9510, &unk_1ABF60F20);
    swift_allocObject();
    v226 = sub_1ABAE6998();
    *(&v295[1] + 1) = v225;
    *&v295[2] = sub_1ABAB47C4(&qword_1EB4DAFD0, &qword_1EB4D9510, &unk_1ABF60F20, &protocol conformance descriptor for GraphObjectBareContext<A>);
    *&v295[0] = v226;
    type metadata accessor for K2TInProcessService();
    v34 = swift_allocObject();
    sub_1ABA946C0(v295, v34 + 16);
    *(v34 + 56) = v236;
    *(v34 + 64) = v232;
    *(v34 + 72) = v231;
    *(v34 + 80) = v230;

    v227 = v232;
    v228 = v231;
    v229 = v230;
    sub_1ABE47580(v249);
  }

  else
  {
  }

LABEL_45:
  v48 = v245;
  if (v251 < v245)
  {
    goto LABEL_243;
  }

  if (v245 == v251)
  {
    v49 = v246;
    goto LABEL_177;
  }

  while (2)
  {
    if (v48 >= v251)
    {
      goto LABEL_225;
    }

    v12 = v48 + 1;
    v21 = v242;
    v137 = *(v243 + 16);
    while (2)
    {
      if (!v137)
      {
        sub_1ABA8E4AC();
        v139 = &v2[14 * v48];
        switch(*(v139 + 66))
        {
          case 1:
            *&v295[0] = v139[4];
            EntityIdentifier.stringValue.getter();
            break;
          case 4:
            break;
          default:

            break;
        }

        v140 = sub_1ABAE3058();

        if (v140)
        {
          v141 = v140;
        }

        else
        {
          v141 = MEMORY[0x1E69E7CC0];
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v48 & 0x8000000000000000) == 0)
          {
LABEL_138:
            if (v48 >= v2[2])
            {
              goto LABEL_233;
            }

            sub_1ABD88954(v141);
            goto LABEL_140;
          }
        }

        else
        {
          sub_1ABD8EE54();
          v2 = v179;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_138;
          }
        }

        __break(1u);
        goto LABEL_172;
      }

      if (!*v21)
      {
        v138 = sub_1ABAA61E0();
LABEL_127:
        sub_1ABA81C38(v138);
        sub_1ABAA4578();
        ++v21;
        --v137;
        if (v34)
        {
          goto LABEL_141;
        }

        continue;
      }

      break;
    }

    if (*v21 == 2)
    {
      v138 = 0xD000000000000013;
      goto LABEL_127;
    }

    sub_1ABA97DA8();
LABEL_140:

LABEL_141:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABD8EE54();
      v2 = v176;
    }

    if (v245 < 0)
    {
      goto LABEL_226;
    }

    if (v48 >= v2[2])
    {
      goto LABEL_227;
    }

    sub_1ABD88238();
    sub_1ABA8E4AC();
    memcpy(v294, &v2[14 * v48 + 4], 0x70uLL);
    memcpy(v293, v294, 0x70uLL);
    sub_1ABAE441C(v294, __dst);
    sub_1ABD866BC();
    v143 = v142;
    memcpy(v295, v293, 0x70uLL);
    sub_1ABC6D404(v295);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABD8EE54();
      v2 = v177;
    }

    if (v48 >= v2[2])
    {
LABEL_228:
      __break(1u);
      goto LABEL_229;
    }

    v250 = v48 + 1;
    v144 = &v2[14 * v48];
    v144[17] = v143;

    *(v253 + v252) = v2;
    sub_1ABA7F9B0();
    sub_1ABE4716C(v145, v260, v146);
    v248 = v48;
    sub_1ABA8E4AC();
    memcpy(v293, v144 + 4, 0x70uLL);
    v147 = *(&v293[6] + 1);
    v148 = LOBYTE(v293[6]);
    v149 = *(&v293[5] + 1);
    v150 = *(&v293[4] + 1);
    v151 = *&v293[5];
    v282 = *(&v293[2] + 8);
    v289 = *(&v293[3] + 8);
    v271 = v293[0];
    v277 = v293[1];
    v152 = v293[2];
    v153 = BYTE2(v293[2]);
    v154 = *(v260 + v254[9]);
    v155 = *(v154 + 16);
    if (v155)
    {
      v244 = v2;
      sub_1ABAE441C(v293, __dst);
      sub_1ABAE441C(v293, __dst);
      if (qword_1EB4D0248 != -1)
      {
        sub_1ABA939C8();
        swift_once();
      }

      v156 = v154 + 32;
      v157 = qword_1EB5495C0;
      v159 = v282;
      v158 = v289;
      v161 = v271;
      v160 = v277;
      do
      {
        ++v156;
        if (*(v157 + 16))
        {
          v162 = v157;
          v283 = v159;
          v290 = v158;
          v272 = v161;
          v278 = v160;
          v269 = v156;
          v163 = sub_1ABAF8268();
          v156 = v269;
          v157 = v162;
          v161 = v272;
          v160 = v278;
          v159 = v283;
          v158 = v290;
          if (v164)
          {
            v308[0] = v272;
            v308[1] = v278;
            LOWORD(v308[2]) = v152;
            BYTE2(v308[2]) = v153;
            *(&v308[2] + 8) = v283;
            *(&v308[3] + 8) = v290;
            *(&v308[4] + 1) = v150;
            *&v308[5] = v151;
            *(&v308[5] + 1) = v149;
            LOBYTE(v308[6]) = v148;
            *(&v308[6] + 1) = v147;
            sub_1ABA93E64(*(v162 + 56) + 40 * v163, v309);
            sub_1ABA946C0(v309, v310);
            v262 = v153;
            v165 = v311;
            v259 = v148;
            v166 = v312;
            sub_1ABA93E20(v310, v311);
            memcpy(v297, v308, sizeof(v297));
            v266 = v150;
            v167 = *(v260 + v254[5]);
            v256 = v151;
            v168 = *(v166 + 8);
            sub_1ABAE441C(v308, &v296);
            v168(v298, v297, v260, v167, v165, v166);
            memcpy(__dst, v297, 0x70uLL);
            sub_1ABC6D404(__dst);
            v169 = v303;
            if (v303)
            {
              v147 = v307;
              v148 = v306;
              v149 = v305;
              v151 = v304;
              v284 = v301;
              v291 = v302;
              v153 = v300;
              v152 = v299;
              v273 = v298[0];
              v279 = v298[1];
              sub_1ABC6D404(v308);
              sub_1ABA84B54(v310);
              v161 = v273;
              v160 = v279;
              v159 = v284;
              v158 = v291;
              v150 = v169;
            }

            else
            {
              sub_1ABA84B54(v310);
              v151 = v256;
              v148 = v259;
              v159 = v283;
              v158 = v290;
              v153 = v262;
              v150 = v266;
              v161 = v272;
              v160 = v278;
            }

            v157 = v162;
            v156 = v269;
          }
        }

        --v155;
      }

      while (v155);
      v271 = v161;
      v277 = v160;
      v267 = v150;
      v170 = v152;
      v263 = v153;
      v282 = v159;
      v289 = v158;
      sub_1ABC6D404(v293);
      v2 = v244;
    }

    else
    {
      v267 = *(&v293[4] + 1);
      v170 = v293[2];
      v263 = BYTE2(v293[2]);
      sub_1ABAE441C(v293, __dst);
    }

    sub_1ABA7DF8C();
    sub_1ABE471CC(v260, v171);
    v172 = v2;
    LOBYTE(v34) = v248;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABD8EE54();
      v172 = v178;
    }

    if (v248 >= v172[2])
    {
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    v2 = v172;
    v173 = &v172[14 * v248];
    memcpy(__dst, v173 + 4, 0x70uLL);
    *(v173 + 2) = v271;
    *(v173 + 3) = v277;
    *(v173 + 32) = v170;
    *(v173 + 66) = v263;
    v174 = BYTE4(v296);
    *(v173 + 67) = v296;
    *(v173 + 71) = v174;
    *(v173 + 11) = v289;
    *(v173 + 9) = v282;
    v173[13] = v267;
    v173[14] = v151;
    v173[15] = v149;
    *(v173 + 128) = v148;
    v175 = *(v297 + 3);
    *(v173 + 129) = v297[0];
    *(v173 + 33) = v175;
    v173[17] = v147;
    sub_1ABC6D404(__dst);
    *(v253 + v252) = v2;
    if (!v240)
    {
      goto LABEL_168;
    }

    *&v308[0] = v236;
    *(&v308[0] + 1) = v239;
    *&v308[1] = v238;
    *(&v308[1] + 1) = v246;
    if (v248 >= v2[2])
    {
      goto LABEL_232;
    }

    LOBYTE(v34) = v241;
    sub_1ABD8728C();
    if (v241)
    {

      *(v253 + v252) = v2;
      if (qword_1ED86E458 != -1)
      {
        sub_1ABA7D0C4();
        swift_once();
      }

      v193 = sub_1ABF237F4();
      sub_1ABA7AA24(v193, qword_1ED86E460);
      v190 = v241;
      v194 = v241;
      v183 = sub_1ABF237D4();
      v195 = sub_1ABF24664();

      if (os_log_type_enabled(v183, v195))
      {
        v196 = swift_slowAlloc();
        v197 = sub_1ABA82874();
        *&v308[0] = v197;
        *v196 = 136315138;
        *&v298[0] = v241;
        v198 = v241;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        v199 = sub_1ABF23C74();
        sub_1ABADD6D8(v199, v200, v308);
        sub_1ABAA5AAC();

        *(v196 + 4) = v2;
        sub_1ABAA5504(&dword_1ABA78000, v201, v202, "KGRenderer: textualizing answer failed: %s");
        sub_1ABA84B54(v197);
        sub_1ABA7BC34();
        sub_1ABA7BC34();

        goto LABEL_185;
      }

      v203 = v241;
      goto LABEL_188;
    }

    *(v253 + v252) = v2;
LABEL_168:
    v62 = v246;
    if (v250 != v251)
    {
      v48 = v250;
      continue;
    }

    break;
  }

LABEL_176:
  v49 = v62;
LABEL_177:
}

void *sub_1ABE46684(const void *a1)
{
  LOBYTE(v35) = 6;
  v3 = sub_1ABE4690C(a1, &v35);
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v4;
  sub_1ABE47278(v3, sub_1ABE4753C, 0, isUniquelyReferenced_nonNull_native, &v35);
  v6 = v35;
  LOBYTE(v35) = 4;
  sub_1ABE4690C(a1, &v35);
  sub_1ABAA5AAC();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v6;
  sub_1ABE47278(v1, sub_1ABE4753C, 0, v7, &v35);
  v8 = v35;
  LOBYTE(v35) = 7;
  v9 = sub_1ABE4690C(a1, &v35);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v8;
  sub_1ABE47278(v9, sub_1ABE4753C, 0, v10, &v35);
  v11 = v35;
  sub_1ABAD219C(&qword_1EB4D5728, &qword_1ABF6BE20);
  result = sub_1ABF24D24();
  v13 = result;
  v14 = 0;
  v33 = result;
  v34 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v11 + 64;
  v18 = v16 & *(v11 + 64);
  v19 = (v15 + 63) >> 6;
  v32 = result + 8;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_10:
      v23 = v20 | (v14 << 6);
      v24 = (*(v34 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      swift_bridgeObjectRetain_n();

      sub_1ABE8AD8C();
      sub_1ABB454B0(v27);
      sub_1ABAA5AAC();

      v13 = v33;
      *(v32 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (v33[6] + 16 * v23);
      *v28 = v25;
      v28[1] = v26;
      *(v33[7] + 8 * v23) = v1;
      v29 = v33[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v33[2] = v31;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        return v13;
      }

      v22 = *(v17 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1ABE46BF8(char *a1, const void *a2)
{
  v3 = v2;
  v4 = *a1;
  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1ABF239C4();
  Context = type metadata accessor for QueryContext(0);
  v8 = v3 + *(Context + 44);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v82[0] = *(v3 + *(Context + 36));
  LOBYTE(v81[0]) = v4;
  v81[1] = -50;
  v81[2] = v5;
  v81[3] = v9;
  v81[4] = v10;
  LOBYTE(v81[5]) = v11;
  v81[6] = v12;
  memcpy(__dst, a2, 0x69uLL);
  v13 = sub_1ABA996B8();
  sub_1ABB3F4DC(v13, v14, v15);

  v16 = v85;
  sub_1ABD25C88(v81, __dst, v84);
  if (v16)
  {

    v17 = sub_1ABA996B8();
    sub_1ABB3F860(v17, v18, v19);

    return v6;
  }

  v73 = v3;

  v21 = sub_1ABA996B8();
  sub_1ABB3F860(v21, v22, v23);

  v24 = v84[0];
  if (!v84[0])
  {

    return v6;
  }

  v85 = 0;

  __src = 0;
  v25 = 0;
  v71 = v24 + 32;
  v72 = *(v24 + 16);
  v26 = v3;
  v70 = v24;
  while (1)
  {
    if (v25 == v72)
    {

      sub_1ABAC9398(__src, 0);
      return v6;
    }

    if (v25 >= *(v24 + 16))
    {
      break;
    }

    memcpy(v84, (v71 + 88 * v25), 0x58uLL);
    memcpy(v82, (v71 + 88 * v25), sizeof(v82));
    sub_1ABB242A4(v84, v81);
    sub_1ABB242A4(v84, v81);
    v27 = v85;
    sub_1ABD8B724();
    v85 = v27;
    if (v27)
    {
      sub_1ABB24250(v84);

      sub_1ABAC9398(__src, 0);
      return v6;
    }

    ++v25;
    memcpy(v81, __dst, sizeof(v81));
    v28 = *(v26 + *(type metadata accessor for AnswerRenderIterator(0) + 20));
    if (*(v28 + 16))
    {
      v30 = v81[7];
      v29 = v81[8];
      sub_1ABF25234();

      sub_1ABF23D34();
      v31 = sub_1ABF25294();
      v32 = ~(-1 << *(v28 + 32));
      while (1)
      {
        v33 = v31 & v32;
        if (((*(v28 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
        {
          break;
        }

        v34 = (*(v28 + 48) + 40 * v33);
        if (*v34 != v30 || v34[1] != v29)
        {
          v36 = sub_1ABF25054();
          v31 = v33 + 1;
          if ((v36 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      sub_1ABB24250(v84);
      sub_1ABAE4304(v81);

      v26 = v73;
      v24 = v70;
    }

    else
    {
LABEL_18:
      v38 = v84[3];
      v37 = v84[4];

      sub_1ABAC9398(__src, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v45 = sub_1ABA94FC8(v38, v37, v39, v40, v41, v42, v43, v44, v69, v70, v71, v72, v73, __src, v6, v78, v79, v80);
      if (__OFADD__(v6[2], (v46 & 1) == 0))
      {
        goto LABEL_36;
      }

      v47 = v45;
      v48 = v46;
      sub_1ABAD219C(&qword_1EB4DAFD8, &qword_1ABF6BE28);
      v6 = v77;
      if (sub_1ABF24C64())
      {
        v55 = sub_1ABA94FC8(v38, v37, v49, v50, v51, v52, v53, v54, v69, v70, v71, v72, v73, __srca, v77, v78, v79, v80);
        if ((v48 & 1) != (v56 & 1))
        {
          goto LABEL_38;
        }

        v47 = v55;
      }

      if (v48)
      {
      }

      else
      {
        sub_1ABA7D110(&v6[v47 >> 6]);
        v57 = (v6[6] + 16 * v47);
        *v57 = v38;
        v57[1] = v37;
        *(v6[7] + 8 * v47) = MEMORY[0x1E69E7CC0];
        v58 = v6[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_37;
        }

        v6[2] = v60;
      }

      v61 = v6[7];
      v62 = *(v61 + 8 * v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v61 + 8 * v47) = v62;
      v26 = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAD88DC();
        v62 = v67;
        *(v61 + 8 * v47) = v67;
      }

      v65 = *(v62 + 16);
      v64 = *(v62 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1ABA7BBEC(v64);
        sub_1ABAD88DC();
        *(v61 + 8 * v47) = v68;
      }

      sub_1ABB24250(v84);
      v66 = *(v61 + 8 * v47);
      *(v66 + 16) = v65 + 1;
      memcpy((v66 + 144 * v65 + 32), v81, 0x90uLL);
      __src = sub_1ABAB9874;
      v24 = v70;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE4713C()
{
  sub_1ABE44A34();
  sub_1ABA7DF8C();
  return sub_1ABE471CC(v0, v1);
}

uint64_t sub_1ABE4716C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1ABE471CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1ABE47278(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_1ABAB4C04(&v81);
  v9 = v82;
  v10 = v84;
  v11 = v85;
  v69 = v86;
  v71 = v81;
  v73 = v87;
  v55 = v83;
  v12 = (v83 + 64) >> 6;
  v59 = a1;

  v57 = a3;

  v63 = v12;
  v65 = v9;
  v67 = a5;
  if (v11)
  {
    while (1)
    {
      v89 = a4;
      v13 = v10;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v13 << 6);
      v16 = (*(v71 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(v71 + 56) + 8 * v15);
      v78 = *v16;
      v79 = v17;
      v80 = v18;

      v69(&v75, &v78);

      v19 = v75;
      v20 = v76;
      v21 = v77;
      v22 = *a5;
      v36 = sub_1ABA94FC8(v75, v76, v23, v24, v25, v26, v27, v28, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73);
      v37 = *(v22 + 16);
      v38 = (v29 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        break;
      }

      v40 = v29;
      if (*(v22 + 24) >= v39)
      {
        if ((v89 & 1) == 0)
        {
          sub_1ABAD219C(&qword_1EB4DAFD8, &qword_1ABF6BE28);
          sub_1ABF24C74();
        }
      }

      else
      {
        sub_1ABC0425C(v39, v89 & 1, v30, v31, v32, v33, v34, v35, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
        v47 = sub_1ABA94FC8(v19, v20, v41, v42, v43, v44, v45, v46, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
        if ((v40 & 1) != (v48 & 1))
        {
          goto LABEL_24;
        }

        v36 = v47;
      }

      v11 &= v11 - 1;
      v49 = *a5;
      if (v40)
      {
        v78 = *(v49[7] + 8 * v36);

        sub_1ABD7D9A8(v21);

        *(v49[7] + 8 * v36) = v78;
      }

      else
      {
        sub_1ABA7D110(&v49[v36 >> 6]);
        v50 = (v49[6] + 16 * v36);
        *v50 = v19;
        v50[1] = v20;
        *(v49[7] + 8 * v36) = v21;
        v51 = v49[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_23;
        }

        v49[2] = v53;
      }

      a4 = 1;
      v10 = v13;
      v9 = v65;
      a5 = v67;
      v12 = v63;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v14 = v10;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        sub_1ABAB4C48(v71);
      }

      v11 = *(v9 + 8 * v13);
      ++v14;
      if (v11)
      {
        v89 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE4753C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABDBF944(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1ABE47580(uint64_t a1)
{
  v43 = sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  v44 = sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20, MEMORY[0x1E69E6508]);
  v42[0] = a1;
  v2 = sub_1ABA93E20(v42, v43);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v34 - v4;
  (*(v6 + 16))(v34 - v4, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1ABA93DC0(v39);
  v8 = -1 << *(*v5 + 32);
  v9 = ~v8;
  v10 = (*v5 + 56);
  v11 = *v10;
  v12 = -v8;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  *v7 = *v5;
  v7[1] = v10;
  v7[2] = v9;
  v7[3] = 0;
  v7[4] = v13 & v11;

  v35 = MEMORY[0x1E69E7CC8];
  *&v14 = 136315138;
  v36 = v14;
  while (1)
  {
    do
    {
      sub_1ABA94E50(v39, AssociatedTypeWitness);
      sub_1ABF24864();
      if (v38)
      {
        sub_1ABA84B54(v39);
        sub_1ABA84B54(v42);
        return v35;
      }

      v15 = v37;
      v16 = sub_1ABD5B590(&v37);
      v18 = v17;
    }

    while (!v17);
    v19 = v16;
    v20 = v35;
    v34[1] = swift_isUniquelyReferenced_nonNull_native();
    v37 = v20;
    v21 = sub_1ABAF81A8();
    if (__OFADD__(*(v20 + 16), (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    LODWORD(v35) = v22;
    sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
    if (sub_1ABF24C64())
    {
      v24 = sub_1ABAF81A8();
      v26 = v35;
      if ((v35 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v23 = v24;
    }

    else
    {
      v26 = v35;
    }

    v27 = v37;
    v35 = v37;
    if (v26)
    {
      v28 = (v37[7] + 16 * v23);
      *v28 = v19;
      v28[1] = v18;
    }

    else
    {
      v37[(v23 >> 6) + 8] |= 1 << v23;
      *(v27[6] + 8 * v23) = v15;
      v29 = (v27[7] + 16 * v23);
      *v29 = v19;
      v29[1] = v18;
      v30 = v27[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_18;
      }

      v27[2] = v32;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE47A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = type metadata accessor for QueryContext(0);
  if (*(*(Context - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, Context);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABE47B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for QueryContext(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1ABE47BB8(uint64_t a1)
{
  type metadata accessor for QueryContext(319);
  if (v1 <= 0x3F)
  {
    sub_1ABE431C0(319);
    if (v2 <= 0x3F)
    {
      sub_1ABE47CF0(319, &qword_1EB4CF838, &type metadata for KnosisAnswer, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1ABE47CF0(319, &qword_1EB4CF7F0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1ABE47CF0(319, &qword_1EB4CF828, &type metadata for RouteFlag, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1ABE47CF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1ABE47D44()
{
  result = qword_1EB4DAFE8;
  if (!qword_1EB4DAFE8)
  {
    type metadata accessor for AnswerRenderIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DAFE8);
  }

  return result;
}

uint64_t IndexResult.init(facts:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t IndexResult.init(errMsg:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

unint64_t IndexResult.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  sub_1ABF24AB4();

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = MEMORY[0x1AC5A9750](v4, &type metadata for KnosisInternalFact);
  v7 = v6;

  MEMORY[0x1AC5A9410](v5, v7);

  MEMORY[0x1AC5A9410](0x7373654D72726520, 0xEC0000003A656761);
  if (v3)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1AC5A9410](v8, v9);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1ABE47F28(uint64_t a1)
{
  v2 = v1;
  result = sub_1ABE47EF0();
  if ((result & 1) == 0)
  {
    if (sub_1ABE47EF0())
    {
      sub_1ABE48DC0(a1);
    }

    sub_1ABA7F2A0(a1 + 16, v87);
    v5 = *(a1 + 16);
    v6 = v5 + 64;
    sub_1ABA7D32C();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;

    v12 = 0;
    v13 = 40;
    v71 = v11;
    v73 = v5;
    while (v9)
    {
LABEL_10:
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(v5 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(v5 + 56) + v16 * v13;
      v20 = *v17;
      v21 = *(v19 + 8);
      v75 = *v19;
      v22 = *(v19 + 16);
      HIDWORD(v77) = *(v19 + 32);
      sub_1ABA811C4(v2 + 16, v85);
      v23 = *(*(v2 + 16) + 16);

      v81 = v21;

      v79 = v22;

      if (v23 && (sub_1ABA94FC8(v20, v18, v24, v25, v26, v27, v28, v29, v69, v71, v73, v75, v77, v22, v21, v83, v84, v85[0]), (v30 & 1) != 0))
      {
        swift_endAccess();
        sub_1ABA7C32C(v2 + 16, v86);
        v31 = sub_1ABAF7064(v85);
        if (*(v32 + 8))
        {

          sub_1ABE7A35C(v33);
          v35 = v34;

          sub_1ABE7200C(v35);
          (v31)(v85, 0);
          swift_endAccess();
        }

        else
        {
          (v31)(v85, 0);
          swift_endAccess();
        }

        v13 = 40;
        v11 = v71;
        v5 = v73;
      }

      else
      {
        swift_endAccess();
        sub_1ABA7C32C(v2 + 16, v85);
        swift_isUniquelyReferenced_nonNull_native();
        v86[0] = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        sub_1ABA94FC8(v20, v18, v36, v37, v38, v39, v40, v41, v69, v71, v73, v75, v77, v79, v81, v20, v18, v85[0]);
        sub_1ABA7BC80();
        if (__OFADD__(v44, v45))
        {
          goto LABEL_33;
        }

        v13 = v42;
        v46 = v43;
        sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
        if (sub_1ABF24C64())
        {
          sub_1ABA94FC8(v83, v84, v47, v48, v49, v50, v51, v52, v70, v72, v74, v76, v78, v80, v82, v83, v84, v85[0]);
          sub_1ABA81C70();
          if (!v54)
          {
            goto LABEL_35;
          }

          v13 = v53;
        }

        v55 = v86[0];
        if (v46)
        {
          sub_1ABA996C8();
          sub_1ABA7DFA4(v56, v70, v72, v74, v76, v78, SBYTE4(v78), v80, v82);
        }

        else
        {
          sub_1ABA7D110(v86[0] + 8 * (v13 >> 6));
          v57 = (*(v55 + 48) + 16 * v13);
          *v57 = v83;
          v57[1] = v84;
          sub_1ABA996C8();
          sub_1ABA7DFA4(v58, v70, v72, v74, v76, v78, SBYTE4(v78), v80, v82);
          v59 = *(v55 + 16);
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            goto LABEL_34;
          }

          *(v55 + 16) = v61;
        }

        *(v2 + 16) = v55;
        swift_endAccess();
        sub_1ABA7C32C(v2 + 24, v85);
        v62 = *(v2 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 24) = v62;
        v5 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v62 = v67;
          *(v2 + 24) = v67;
        }

        v65 = *(v62 + 16);
        v64 = *(v62 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_1ABA7BBEC(v64);
          sub_1ABAAA4F4();
          v62 = v68;
        }

        *(v62 + 16) = v65 + 1;
        v66 = v62 + 16 * v65;
        *(v66 + 32) = v83;
        *(v66 + 40) = v84;
        *(v2 + 24) = v62;
        swift_endAccess();
        v11 = v71;
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v9 = *(v6 + 8 * v14);
      ++v12;
      if (v9)
      {
        v12 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABE48330()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1ABF239C4();
  sub_1ABA8C160(v0 + 16, v5);
  *(v0 + 16) = v2;

  sub_1ABA8C160(v0 + 24, &v4);
  *(v0 + 24) = v1;
}

uint64_t sub_1ABE483B8(uint64_t a1)
{
  v2 = v1;
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = sub_1ABF239C4();
  v143 = (inited + 16);
  *(inited + 24) = v5;
  sub_1ABA7F2A0(a1 + 24, v147);
  v6 = *(a1 + 24);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_46;
  }

  v8 = sub_1ABE48AB8();
  v123 = v1;
  v126 = (inited + 24);
  if (v8 < sub_1ABE48AB8())
  {
    v116 = inited;

    v112 = v6;
    v9 = (v6 + 40);
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      sub_1ABA811C4(v2 + 16, v146);
      if (!*(*(v2 + 16) + 16))
      {
        goto LABEL_21;
      }

      sub_1ABA94FC8(v11, v12, v13, v14, v15, v16, v17, v18, v109, v112, v116, v119, v123, v126, v129, v133, v138, v141);
      if (v19)
      {
        break;
      }

      swift_endAccess();

LABEL_22:
      v9 += 2;
      if (!--v7)
      {
        goto LABEL_45;
      }
    }

    sub_1ABA7F8DC();
    v23 = v21 + v20 * v22;
    v134 = *v23;
    LODWORD(v138) = *(v23 + 32);
    swift_endAccess();
    sub_1ABA7C32C(v143, v146);

    swift_isUniquelyReferenced_nonNull_native();
    v145[0] = *v143;
    sub_1ABA94FC8(v11, v12, v24, v25, v26, v27, v28, v29, v109, v112, v116, v119, v123, v126, v10, v134, v138, v11);
    sub_1ABA7BC80();
    if (__OFADD__(v32, v33))
    {
      __break(1u);
      goto LABEL_48;
    }

    v34 = v30;
    v35 = v31;
    sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
    if (sub_1ABF24C64())
    {
      sub_1ABA94FC8(v141, v12, v36, v37, v38, v39, v40, v41, v110, v113, v117, v120, v124, v127, v130, v135, v139, v141);
      sub_1ABA81C70();
      if (!v43)
      {
        goto LABEL_51;
      }

      v34 = v42;
    }

    v44 = v145[0];
    if (v35)
    {
      sub_1ABA7F8DC();
      sub_1ABA7EBC0(v45 + v34 * v46, v110, v113, v117, v120, v124, v127, v130, v135, v139);
    }

    else
    {
      sub_1ABA7D110(v145[0] + 8 * (v34 >> 6));
      v47 = (*(v145[0] + 48) + 16 * v34);
      *v47 = v141;
      v47[1] = v12;
      sub_1ABA7F8DC();
      sub_1ABA7EBC0(v48 + v34 * v49, v110, v113, v117, v120, v124, v127, v130, v135, v139);
      v50 = *(v44 + 16);
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_49;
      }

      *(v44 + 16) = v52;
    }

    *v143 = v44;
    swift_endAccess();
    sub_1ABA7C32C(v126, v146);
    v10 = v129;
    v2 = v123;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v10 = v56;
    }

    v54 = *(v10 + 16);
    v53 = *(v10 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_1ABA7BBEC(v53);
      sub_1ABAAA4F4();
      v10 = v57;
    }

    *(v10 + 16) = v54 + 1;
    v55 = v10 + 16 * v54;
    *(v55 + 32) = v141;
    *(v55 + 40) = v12;
    *v126 = v10;
LABEL_21:
    swift_endAccess();
    goto LABEL_22;
  }

  sub_1ABA7F2A0(v1 + 24, v146);
  v58 = *(*(v1 + 24) + 16);
  if (!v58)
  {
LABEL_46:
    sub_1ABE48DC0(inited);
  }

  v116 = inited;

  v59 = (v114 + 40);
  v60 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v61 = *(v59 - 1);
    v62 = *v59;
    sub_1ABA811C4(a1 + 16, v145);
    v63 = *(a1 + 16);
    if (!*(v63 + 16))
    {
      goto LABEL_43;
    }

    v70 = sub_1ABA94FC8(v61, v62, v64, v65, v66, v67, v68, v69, v109, v114, v116, v119, v123, v126, v129, v133, v138, v141);
    if (v71)
    {
      break;
    }

    swift_endAccess();

LABEL_44:
    v59 += 2;
    if (!--v58)
    {
LABEL_45:

      inited = v116;
      goto LABEL_46;
    }
  }

  v121 = v60;
  v72 = v61;
  v73 = *(v63 + 56) + 40 * v70;
  v74 = *(v73 + 8);
  v131 = *v73;
  v75 = *(v73 + 16);
  LODWORD(v141) = *(v73 + 32);
  swift_endAccess();
  sub_1ABA7C32C(v143, v145);
  v136 = v74;

  swift_isUniquelyReferenced_nonNull_native();
  v144 = *v143;
  v76 = v72;
  sub_1ABA94FC8(v72, v62, v77, v78, v79, v80, v81, v82, v109, v114, v116, v121, v123, v126, v131, v136, v75, v141);
  sub_1ABA7BC80();
  if (!__OFADD__(v85, v86))
  {
    v87 = v83;
    v88 = v84;
    sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
    if (sub_1ABF24C64())
    {
      sub_1ABA94FC8(v76, v62, v89, v90, v91, v92, v93, v94, v111, v115, v118, v122, v125, v128, v132, v137, v140, v142);
      sub_1ABA81C70();
      if (!v43)
      {
        goto LABEL_51;
      }

      v87 = v95;
    }

    if (v88)
    {
      sub_1ABA7F8DC();
      sub_1ABA811A4(v96 + v87 * v97, v111, v115, v118, v122, v125, v128, v132, v137, v140, v142);
    }

    else
    {
      sub_1ABA7D110(v144 + 8 * (v87 >> 6));
      v98 = (*(v144 + 48) + 16 * v87);
      *v98 = v76;
      v98[1] = v62;
      sub_1ABA7F8DC();
      sub_1ABA811A4(v99 + v87 * v100, v111, v115, v118, v122, v125, v128, v132, v137, v140, v142);
      v101 = *(v144 + 16);
      v51 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v51)
      {
        goto LABEL_50;
      }

      *(v144 + 16) = v102;
    }

    *v143 = v144;
    swift_endAccess();
    sub_1ABA7C32C(v126, v145);
    v60 = v119;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v60 = v106;
    }

    v104 = *(v60 + 16);
    v103 = *(v60 + 24);
    if (v104 >= v103 >> 1)
    {
      sub_1ABA7BBEC(v103);
      sub_1ABAAA4F4();
      v60 = v107;
    }

    *(v60 + 16) = v104 + 1;
    v105 = v60 + 16 * v104;
    *(v105 + 32) = v76;
    *(v105 + 40) = v62;
    *v126 = v60;
LABEL_43:
    swift_endAccess();
    goto LABEL_44;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE489AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8EE6C();
    v4 = v7;
  }

  v5 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v5;

  sub_1ABE49AB8(v8, a2);
  *a1 = v4;
}

uint64_t sub_1ABE48A4C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A23C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE49BF0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABE48AE8(uint64_t a1)
{
  v2 = v1;
  sub_1ABE4933C();
  sub_1ABA7F2A0(v1 + 24, v37);
  v3 = *(*(v1 + 24) + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = (v35 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *(v4 - 1);
    v7 = *v4;
    sub_1ABA811C4(v2 + 16, v36);
    v8 = *(v2 + 16);
    v9 = *(v8 + 16);

    if (v9 && (v16 = sub_1ABA94FC8(v6, v7, v10, v11, v12, v13, v14, v15, v34, v35, v36[0], v36[1], v36[2], v37[0], v37[1], v37[2], v37[3], v37[4]), (v17 & 1) != 0))
    {
      v18 = *(v8 + 56) + 40 * v16;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      swift_endAccess();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1ABA7BEF0();
        sub_1ABAD8FCC(v27, v28, v29, v5);
        v5 = v30;
      }

      v25 = *(v5 + 16);
      v24 = *(v5 + 24);
      if (v25 >= v24 >> 1)
      {
        v31 = sub_1ABA7BBEC(v24);
        sub_1ABAD8FCC(v31, v25 + 1, 1, v5);
        v5 = v32;
      }

      *(v5 + 16) = v25 + 1;
      v26 = v5 + 40 * v25;
      *(v26 + 32) = v20;
      *(v26 + 40) = v19;
      *(v26 + 48) = v21;
      *(v26 + 56) = v22;
      *(v26 + 64) = v23;
    }

    else
    {
      swift_endAccess();
    }

    v4 += 2;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t sub_1ABE48C84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v2;
  v19 = *(a1 + 32);
  v3 = v18[0];
  sub_1ABA811C4(v1 + 16, v16);
  v4 = *(*(v1 + 16) + 16);
  swift_bridgeObjectRetain_n();
  if (v4 && (sub_1ABA94FC8(v3, *(&v3 + 1), v5, v6, v7, v8, v9, v10, v16[0], v16[1], v16[2], v16[3], v16[4], v17[0], v17[1], v17[2], *&v18[0], *(&v18[0] + 1)), (v11 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1ABA7C32C(v1 + 24, v16);
    sub_1ABB4DC20();
    v12 = *(*(v1 + 24) + 16);
    sub_1ABB4E024(v12);
    v13 = *(v1 + 24);
    *(v13 + 16) = v12 + 1;
    *(v13 + 16 * v12 + 32) = v3;
    *(v1 + 24) = v13;
    swift_endAccess();
  }

  sub_1ABA7C32C(v1 + 16, v17);
  sub_1ABE4B4F8(v18, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = *(v1 + 16);
  sub_1ABAFACA8(v18, v3, *(&v3 + 1), isUniquelyReferenced_nonNull_native);
  *(v1 + 16) = v16[0];

  return swift_endAccess();
}

uint64_t sub_1ABE48DC0(uint64_t a1)
{
  sub_1ABA7F2A0(a1 + 16, v9);
  v3 = *(a1 + 16);
  sub_1ABA8C160(v1 + 16, v8);
  *(v1 + 16) = v3;

  sub_1ABA7F2A0(a1 + 24, v7);
  v4 = *(a1 + 24);
  sub_1ABA8C160(v1 + 24, &v6);
  *(v1 + 24) = v4;
}

unint64_t sub_1ABE48E88(unint64_t a1)
{
  v2 = v1;
  result = sub_1ABE48AB8();
  if (result > a1)
  {
    if (!a1)
    {
      if (qword_1ED86E458 != -1)
      {
        swift_once();
      }

      v5 = sub_1ABF237F4();
      sub_1ABA7AA24(v5, qword_1ED86E460);
      v6 = sub_1ABF237D4();
      v7 = sub_1ABF24664();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1ABA78000, v6, v7, "limit 0 on operator should be avoided", v8, 2u);
        MEMORY[0x1AC5AB8B0](v8, -1, -1);
      }
    }

    sub_1ABE4933C();
    v9 = sub_1ABE48AB8();
    if (v9 >= a1)
    {
      v32 = a1;
      if (v9 == a1)
      {
LABEL_16:
        sub_1ABA7F2A0(v2 + 24, v34);
        sub_1ABDF015C();
        v25 = v24;
        v27 = v26;
        if ((v26 & 1) == 0)
        {
LABEL_17:
          sub_1ABB62CE0();
          v29 = v28;
          goto LABEL_24;
        }

        sub_1ABF25094();
        swift_unknownObjectRetain_n();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          swift_unknownObjectRelease();
          v30 = MEMORY[0x1E69E7CC0];
        }

        v31 = *(v30 + 16);

        if (!__OFSUB__(v27 >> 1, v25))
        {
          if (v31 == (v27 >> 1) - v25)
          {
            v29 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v29)
            {
LABEL_25:
              sub_1ABA8C160(v2 + 24, v33);
              *(v2 + 24) = v29;
            }

            v29 = MEMORY[0x1E69E7CC0];
LABEL_24:
            swift_unknownObjectRelease();
            goto LABEL_25;
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      v10 = v9;
      v11 = a1;
      if (v9 <= a1)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      sub_1ABA7F2A0(v2 + 24, v35);
      v12 = 16 * a1;
      while (1)
      {
        v13 = *(v2 + 24);
        if (v11 >= *(v13 + 16))
        {
          break;
        }

        v14 = v13 + v12;
        v15 = *(v14 + 32);
        v16 = *(v14 + 40);
        sub_1ABA7C32C(v2 + 16, v34);

        sub_1ABA94FC8(v15, v16, v17, v18, v19, v20, v21, v22, v32, v33[0], v33[1], v33[2], v34[0], v34[1], v34[2], v35[0], v35[1], v35[2]);
        if (v23)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v33[0] = *(v2 + 16);
          *(v2 + 16) = 0x8000000000000000;
          sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
          sub_1ABF24C64();

          sub_1ABA7F8DC();

          sub_1ABF24C84();
          *(v2 + 16) = v33[0];
        }

        ++v11;
        swift_endAccess();

        v12 += 16;
        if (v10 == v11)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1ABE491D0()
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1ABA7F2A0(v0 + 16, v14);
  v1 = *(v0 + 16);
  sub_1ABA7D32C();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  for (i = 0; v4; i = v8)
  {
    v8 = i;
LABEL_6:
    v9 = *(*(v1 + 56) + 40 * (__clz(__rbit64(v4)) | (v8 << 6)) + 16);

    swift_bridgeObjectRetain_n();
    sub_1ABE7A35C(v9);
    v11 = v10;

    v13 = v11;

    sub_1ABE48A4C(&v13);
    v4 &= v4 - 1;

    sub_1ABD7E05C(v13);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v15;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1ABE4933C()
{
  sub_1ABA7C32C(v0 + 24, v2);

  sub_1ABE489AC((v0 + 24), v0);
  return swift_endAccess();
}

unint64_t sub_1ABE4938C()
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_1ABF24AB4();

  v6 = 0xD000000000000017;
  v7 = 0x80000001ABF93620;
  sub_1ABA7F2A0(v0 + 16, v5);

  v1 = sub_1ABF23984();
  v3 = v2;

  MEMORY[0x1AC5A9410](v1, v3);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v6;
}

uint64_t sub_1ABE49464(uint64_t result, char *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *a2;
    v4 = (result + 32);
    do
    {
      memcpy(__dst, v4, 0x58uLL);
      memcpy(__src, v4, sizeof(__src));
      v6 = v3;
      sub_1ABB242A4(__dst, v5);
      sub_1ABE494F4(__src, &v6, 0);
      result = sub_1ABB24250(__dst);
      v4 += 88;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1ABE494F4(void *__src, char *a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *a2;
  if (!*a2)
  {

    goto LABEL_10;
  }

  v8 = sub_1ABF25054();

  if (v8)
  {
LABEL_10:
    v9 = __dst[3];
    v10 = __dst[4];
    goto LABEL_11;
  }

  if (__dst[9])
  {
    v9 = __dst[8];
  }

  else
  {
    v9 = 0;
  }

  if (__dst[9])
  {
    v10 = __dst[9];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

LABEL_11:

  sub_1ABA811C4(v4 + 16, v37);
  if (*(*(v4 + 16) + 16))
  {
    v17 = sub_1ABA94FC8(v9, v10, v11, v12, v13, v14, v15, v16, v34, v35, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7]);
    v19 = v18;

    if (v19)
    {
      sub_1ABA7F8DC();
      v22 = (v20 + v17 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      swift_endAccess();
      v38 = v24;
      v39 = v23;
      v40 = v25;
      v41 = v26;

      if ((a3 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  swift_endAccess();
  swift_bridgeObjectRetain_n();
  sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
  v27 = sub_1ABF239C4();
  v38 = v9;
  v39 = v10;
  v40 = v27;
  v41 = 0;
  sub_1ABA7C32C(v4 + 24, v37);
  sub_1ABB4DC20();
  v28 = *(*(v4 + 24) + 16);
  sub_1ABB4E024(v28);
  v29 = *(v4 + 24);
  *(v29 + 16) = v28 + 1;
  v30 = v29 + 16 * v28;
  *(v30 + 32) = v9;
  *(v30 + 40) = v10;
  *(v4 + 24) = v29;
  swift_endAccess();
  if (a3)
  {
LABEL_17:
    v41 = __dst[2];
  }

LABEL_18:
  v42 = v7;
  sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  memcpy((inited + 32), __dst, 0x58uLL);
  sub_1ABB242A4(__dst, v37);
  sub_1ABE7200C(inited);
  swift_setDeallocating();
  sub_1ABB4DB0C();
  sub_1ABA7C32C(v4 + 16, v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v4 + 16);
  sub_1ABAFACA8(&v38, v9, v10, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v36;

  return swift_endAccess();
}

uint64_t sub_1ABE497D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  swift_beginAccess();
  v14 = *(a3 + 16);
  if (*(v14 + 16) && (v15 = sub_1ABA94FC8(v5, v4, v8, v9, v10, v11, v12, v13, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46), (v16 & 1) != 0))
  {
    v17 = *(v14 + 56) + 40 * v15;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 24);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
    sub_1ABF239C4();
    v19 = 0;
    v20 = 0.0;
    v18 = 0xE000000000000000;
  }

  swift_beginAccess();
  v27 = *(a3 + 16);
  if (*(v27 + 16) && (v28 = sub_1ABA94FC8(v6, v7, v21, v22, v23, v24, v25, v26, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46), (v29 & 1) != 0))
  {
    v30 = *(v27 + 56) + 40 * v28;
    v32 = *v30;
    v31 = *(v30 + 8);
    v33 = *(v30 + 24);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
    sub_1ABF239C4();
    v32 = 0;
    v31 = 0xE000000000000000;
    v33 = 0.0;
  }

  if (v20 == v33)
  {
    if (v32 == v19 && v31 == v18)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_1ABF25054();
    }
  }

  else
  {

    v35 = v33 < v20;
  }

  return v35 & 1;
}

uint64_t sub_1ABE49A14()
{

  return v0;
}

uint64_t sub_1ABE49A3C()
{
  sub_1ABE49A14();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE49AB8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1ABF24FE4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1ABF24164();
        *(v8 + 16) = v7;
      }

      v9[0] = v8 + 32;
      v9[1] = v7;

      sub_1ABE49F28(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1ABE49CE4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1ABE49BF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE4A8D8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1ABE49E1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABE49CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = (*a4 + 16 * a3);
    v10 = a1 - a3;
    while (2)
    {
      v23 = a3;
      v11 = (v8 + 16 * a3);
      v12 = *v11;
      v13 = v11[1];
      v19 = v10;
      v20 = v9;
      do
      {
        v22[0] = v12;
        v22[1] = v13;
        v14 = *(v9 - 1);
        v21[0] = *(v9 - 2);
        v21[1] = v14;

        v15 = sub_1ABE497D4(v22, v21, a5);
        if (v5)
        {
        }

        v16 = v15;

        if ((v16 & 1) == 0)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        v12 = *v9;
        v13 = v9[1];
        *v9 = *(v9 - 1);
        *(v9 - 1) = v13;
        *(v9 - 2) = v12;
        v9 -= 2;
      }

      while (!__CFADD__(v10++, 1));
      a3 = v23 + 1;
      v9 = v20 + 2;
      v10 = v19 - 1;
      if (v23 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1ABE49E1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3 - 88;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 + 88);
        v11 = *(v10 + 104);
        v12 = *(v10 + 16);
        if (v11 >= v12)
        {
          if (v11 != v12)
          {
            break;
          }

          if (result == *v10 && *(v10 + 96) == *(v10 + 8))
          {
            break;
          }

          result = sub_1ABF25054();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, (v10 + 88), sizeof(__dst));
        memcpy((v10 + 88), v10, 0x58uLL);
        result = memcpy(v10, __dst, 0x58uLL);
        v10 -= 88;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1ABE49F28(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v153 = a3;
  v5 = a5;
  v144 = a1;
  v6 = a3[1];
  v163 = a5;
  if (v6 < 1)
  {
    swift_retain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v156 = *v144;
    if (*v144)
    {
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_110;
    }

    goto LABEL_154;
  }

  v141 = a4;
  swift_retain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v146 = v8;
    v11 = *v153;
    v12 = v10;
    v13 = (*v153 + 16 * v10);
    v14 = v13[1];
    v161 = *v13;
    v162 = v14;
    v15 = (v11 + 16 * v9);
    v16 = v15[1];
    v159 = *v15;
    v160 = v16;

    v17 = sub_1ABE497D4(&v161, &v159, v5);
    if (v154)
    {

LABEL_120:
    }

    v18 = v17;

    v19 = 16 * v9;
    v20 = v9;
    v21 = v15 + 3;
    v142 = v20;
    v22 = v20 + 2;
    v10 = v12;
    do
    {
      v23 = v22;
      if (v10 + 1 >= v6)
      {
        v10 = v6;
        if ((v18 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_9:
        v9 = v142;
        if (v10 >= v142)
        {
          v8 = v146;
          if (v142 < v10)
          {
            if (v6 >= v23)
            {
              v28 = v23;
            }

            else
            {
              v28 = v6;
            }

            v29 = 16 * v28;
            v30 = v10;
            v31 = v142;
            do
            {
              if (v31 != --v30)
              {
                v32 = *v153;
                if (!*v153)
                {
                  goto LABEL_152;
                }

                v33 = (v32 + v19);
                v34 = v32 + v29;
                v35 = *v33;
                v36 = v33[1];
                *v33 = *(v34 - 16);
                *(v34 - 16) = v35;
                *(v34 - 8) = v36;
              }

              ++v31;
              v29 -= 16;
              v19 += 16;
            }

            while (v31 < v30);
          }

          goto LABEL_22;
        }

        goto LABEL_148;
      }

      v24 = v10;
      v25 = v21[2];
      v161 = v21[1];
      v162 = v25;
      v26 = *v21;
      v159 = *(v21 - 1);
      v160 = v26;

      v27 = sub_1ABE497D4(&v161, &v159, v163);

      v21 += 2;
      v10 = v24 + 1;
      v22 = v23 + 1;
    }

    while (((v18 ^ v27) & 1) == 0);
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_21:
    v8 = v146;
    v9 = v142;
LABEL_22:
    v37 = v153[1];
    if (v10 < v37)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_144;
      }

      if (v10 - v9 < v141)
      {
        v38 = v9 + v141;
        if (__OFADD__(v9, v141))
        {
          __break(1u);
        }

        else
        {
          if (v38 >= v37)
          {
            v38 = v153[1];
          }

          if (v38 >= v9)
          {
            if (v10 == v38)
            {
              goto LABEL_55;
            }

            v145 = v38;
            v147 = v8;
            v155 = *v153;
            v39 = (*v153 + 16 * v10);
            v143 = v9;
            v40 = v9 - v10;
            while (1)
            {
              v150 = v39;
              v151 = v10;
              v41 = (v155 + 16 * v10);
              v42 = *v41;
              v43 = v41[1];
              v149 = v40;
              while (1)
              {
                v44 = *(v39 - 2);
                v45 = *(v39 - 1);
                v46 = v163;
                swift_beginAccess();
                v47 = *(v46 + 16);
                v48 = *(v47 + 16);

                if (v48 && (v55 = sub_1ABA94FC8(v42, v43, v49, v50, v51, v52, v53, v54, v140, v141, v143, v144, v145, v147, v149, v150, v151, v153), (v56 & 1) != 0))
                {
                  v57 = *(v47 + 56) + 40 * v55;
                  v58 = *(v57 + 8);
                  v156 = *v57;
                  v59 = *(v57 + 24);
                  swift_endAccess();
                }

                else
                {
                  swift_endAccess();
                  sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
                  v156 = 0;
                  sub_1ABF239C4();
                  v59 = 0.0;
                  v58 = 0xE000000000000000;
                }

                v60 = v163;
                swift_beginAccess();
                v67 = *(v60 + 16);
                if (*(v67 + 16) && (v68 = sub_1ABA94FC8(v44, v45, v61, v62, v63, v64, v65, v66, v140, v141, v143, v144, v145, v147, v149, v150, v151, v153), (v69 & 1) != 0))
                {
                  v70 = *(v67 + 56) + 40 * v68;
                  v71 = *v70;
                  v72 = *(v70 + 8);
                  v73 = *(v70 + 24);
                  swift_endAccess();
                }

                else
                {
                  swift_endAccess();
                  sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
                  sub_1ABF239C4();
                  v71 = 0;
                  v72 = 0xE000000000000000;
                  v73 = 0.0;
                }

                if (v59 != v73)
                {

                  if (v73 >= v59)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_48;
                }

                if (v71 == v156 && v72 == v58)
                {
                  break;
                }

                v75 = sub_1ABF25054();

                if ((v75 & 1) == 0)
                {
                  goto LABEL_53;
                }

LABEL_48:
                if (!v155)
                {
                  goto LABEL_149;
                }

                v42 = *v39;
                v43 = v39[1];
                *v39 = *(v39 - 1);
                *(v39 - 1) = v43;
                *(v39 - 2) = v42;
                v39 -= 2;
                if (__CFADD__(v40++, 1))
                {
                  goto LABEL_53;
                }
              }

LABEL_53:
              v10 = v151 + 1;
              v39 = (v150 + 16);
              v40 = v149 - 1;
              if (v151 + 1 == v145)
              {
                v10 = v145;
                v8 = v147;
                v9 = v143;
                goto LABEL_55;
              }
            }
          }
        }

        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:

        __break(1u);
LABEL_150:

        __break(1u);
LABEL_151:

        __break(1u);
LABEL_152:

        __break(1u);
LABEL_153:

        __break(1u);
LABEL_154:

        __break(1u);
        return result;
      }
    }

LABEL_55:
    if (v10 < v9)
    {
      goto LABEL_143;
    }

    v152 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABAD8820();
      v8 = v125;
    }

    v77 = *(v8 + 2);
    v78 = v77 + 1;
    if (v77 >= *(v8 + 3) >> 1)
    {
      sub_1ABAD8820();
      v8 = v126;
    }

    *(v8 + 2) = v78;
    v79 = v8 + 32;
    v80 = &v8[16 * v77 + 32];
    *v80 = v9;
    *(v80 + 1) = v152;
    v157 = *v144;
    if (!*v144)
    {
      goto LABEL_153;
    }

    if (v77)
    {
      break;
    }

LABEL_105:
    v7 = v152;
    v6 = v153[1];
    v5 = v163;
    if (v152 >= v6)
    {
      goto LABEL_108;
    }
  }

  v156 = v8 + 32;
  while (1)
  {
    v81 = v78 - 1;
    v82 = &v79[16 * v78 - 16];
    v83 = &v8[16 * v78];
    if (v78 >= 4)
    {
      v88 = &v79[16 * v78];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_131;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_132;
      }

      v95 = *(v83 + 1);
      v96 = v95 - *v83;
      if (__OFSUB__(v95, *v83))
      {
        goto LABEL_134;
      }

      v94 = __OFADD__(v86, v96);
      v97 = v86 + v96;
      if (v94)
      {
        goto LABEL_137;
      }

      if (v97 >= v91)
      {
        v111 = *v82;
        v110 = *(v82 + 1);
        v94 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v94)
        {
          goto LABEL_142;
        }

        if (v86 < v112)
        {
          v81 = v78 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_76;
    }

    if (v78 == 3)
    {
      v84 = *(v8 + 4);
      v85 = *(v8 + 5);
      v94 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      v87 = v94;
LABEL_76:
      if (v87)
      {
        goto LABEL_133;
      }

      v99 = *v83;
      v98 = *(v83 + 1);
      v100 = __OFSUB__(v98, v99);
      v101 = v98 - v99;
      v102 = v100;
      if (v100)
      {
        goto LABEL_136;
      }

      v103 = *(v82 + 1);
      v104 = v103 - *v82;
      if (__OFSUB__(v103, *v82))
      {
        goto LABEL_139;
      }

      if (__OFADD__(v101, v104))
      {
        goto LABEL_141;
      }

      if (v101 + v104 >= v86)
      {
        if (v86 < v104)
        {
          v81 = v78 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_91;
    }

    if (v78 < 2)
    {
      goto LABEL_135;
    }

    v106 = *v83;
    v105 = *(v83 + 1);
    v94 = __OFSUB__(v105, v106);
    v101 = v105 - v106;
    v102 = v94;
LABEL_91:
    if (v102)
    {
      goto LABEL_138;
    }

    v108 = *v82;
    v107 = *(v82 + 1);
    v94 = __OFSUB__(v107, v108);
    v109 = v107 - v108;
    if (v94)
    {
      goto LABEL_140;
    }

    if (v109 < v101)
    {
      goto LABEL_105;
    }

LABEL_98:
    if (v81 - 1 >= v78)
    {
      break;
    }

    v113 = *v153;
    if (!*v153)
    {
      goto LABEL_150;
    }

    v114 = v8;
    v115 = &v79[16 * v81 - 16];
    v116 = *v115;
    v117 = v81;
    v118 = &v79[16 * v81];
    v119 = *(v118 + 1);
    v120 = (v113 + 16 * *v115);
    v121 = (v113 + 16 * *v118);
    v122 = v113 + 16 * v119;
    v123 = v163;

    sub_1ABE4AFB0(v120, v121, v122, v157, v123);
    if (v154)
    {

      goto LABEL_120;
    }

    if (v119 < v116)
    {
      goto LABEL_125;
    }

    v8 = v114;
    v124 = *(v114 + 2);
    if (v117 > v124)
    {
      goto LABEL_126;
    }

    *v115 = v116;
    *(v115 + 1) = v119;
    if (v117 >= v124)
    {
      goto LABEL_127;
    }

    v78 = v124 - 1;
    sub_1ABE7A0CC(v118 + 16, v124 - 1 - v117, v118);
    *(v114 + 2) = v124 - 1;
    v79 = v156;
    if (v124 <= 2)
    {
      goto LABEL_105;
    }
  }

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
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
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
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  v8 = sub_1ABE7A0B4();
LABEL_110:
  v127 = v8 + 16;
  v128 = *(v8 + 2);
  for (i = v8; ; v8 = i)
  {
    if (v128 < 2)
    {
    }

    v129 = *v153;
    if (!*v153)
    {
      goto LABEL_151;
    }

    v130 = &v8[16 * v128];
    v131 = *v130;
    v132 = v127;
    v133 = &v127[16 * v128];
    v134 = *(v133 + 1);
    v135 = (v129 + 16 * *v130);
    v158 = (v129 + 16 * *v133);
    v136 = v129 + 16 * v134;
    v137 = v163;

    sub_1ABE4AFB0(v135, v158, v136, v156, v137);
    if (v154)
    {
      break;
    }

    if (v134 < v131)
    {
      goto LABEL_128;
    }

    if (v128 - 2 >= *v132)
    {
      goto LABEL_129;
    }

    v127 = v132;
    *v130 = v131;
    *(v130 + 1) = v134;
    v138 = *v132 - v128;
    if (*v132 < v128)
    {
      goto LABEL_130;
    }

    v128 = *v132 - 1;
    sub_1ABE7A0CC(v133 + 16, v138, v133);
    *v132 = v128;
  }
}

void sub_1ABE4A8D8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = *a3 + 88 * v6;
        v11 = *(v10 + 16);
        v12 = *a3 + 88 * v8;
        v13 = *(v12 + 16);
        if (v11 >= v13)
        {
          if (v11 != v13 || (*v10 == *v12 ? (v15 = *(v10 + 8) == *(v12 + 8)) : (v15 = 0), v15))
          {
            v14 = 0;
          }

          else
          {
            v14 = sub_1ABF25054();
          }
        }

        else
        {
          v14 = 1;
        }

        v6 = v8 + 2;
        v16 = 88 * v8;
        v17 = (v9 + 88 * v8 + 192);
        while (v6 < v5)
        {
          v18 = *(v17 - 11);
          if (*v17 >= v18)
          {
            if (*v17 != v18 || (*(v17 - 2) == *(v17 - 13) ? (v19 = *(v17 - 1) == *(v17 - 12)) : (v19 = 0), v19))
            {
              if (v14)
              {
                goto LABEL_28;
              }
            }

            else if ((v14 & 1) != (sub_1ABF25054() & 1))
            {
              break;
            }
          }

          else if ((v14 & 1) == 0)
          {
            goto LABEL_35;
          }

          ++v6;
          v17 += 11;
        }

        if (v14)
        {
LABEL_28:
          if (v6 < v8)
          {
            goto LABEL_133;
          }

          if (v8 < v6)
          {
            v20 = 88 * v6 - 88;
            v21 = v6;
            v22 = v8;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_136;
                }

                memcpy(__dst, (v23 + v16), sizeof(__dst));
                memmove((v23 + v16), (v23 + v20), 0x58uLL);
                memcpy((v23 + v20), __dst, 0x58uLL);
              }

              ++v22;
              v20 -= 88;
              v16 += 88;
            }

            while (v22 < v21);
          }
        }
      }

LABEL_35:
      v24 = a3[1];
      if (v6 < v24)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_130;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_131;
          }

          if (v8 + a4 >= v24)
          {
            v25 = a3[1];
          }

          else
          {
            v25 = v8 + a4;
          }

          if (v25 < v8)
          {
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            return;
          }

          if (v6 != v25)
          {
            v81 = v7;
            v26 = *a3;
            v27 = *a3 + 88 * v6 - 88;
            v28 = v8 - v6;
            do
            {
              v29 = v28;
              v30 = v27;
              do
              {
                v31 = *(v30 + 104);
                v32 = *(v30 + 16);
                if (v31 >= v32)
                {
                  if (v31 != v32)
                  {
                    break;
                  }

                  v33 = *(v30 + 88) == *v30 && *(v30 + 96) == *(v30 + 8);
                  if (v33 || (sub_1ABF25054() & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v26)
                {
                  goto LABEL_134;
                }

                memcpy(__dst, (v30 + 88), sizeof(__dst));
                memcpy((v30 + 88), v30, 0x58uLL);
                memcpy(v30, __dst, 0x58uLL);
                v30 -= 88;
              }

              while (!__CFADD__(v29++, 1));
              ++v6;
              v27 += 88;
              --v28;
            }

            while (v6 != v25);
            v6 = v25;
            v7 = v81;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v7 = v77;
      }

      v35 = v7[2];
      v36 = v35 + 1;
      if (v35 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v78;
      }

      v7[2] = v36;
      v37 = v7 + 4;
      v38 = &v7[2 * v35 + 4];
      *v38 = v8;
      v38[1] = v6;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_137;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          v40 = &v37[2 * v36 - 2];
          v41 = &v7[2 * v36];
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v42 = v7[4];
            v43 = v7[5];
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_78:
            if (v45)
            {
              goto LABEL_119;
            }

            v57 = *v41;
            v56 = v41[1];
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_122;
            }

            v61 = v40[1];
            v62 = v61 - *v40;
            if (__OFSUB__(v61, *v40))
            {
              goto LABEL_125;
            }

            if (__OFADD__(v59, v62))
            {
              goto LABEL_127;
            }

            if (v59 + v62 >= v44)
            {
              if (v44 < v62)
              {
                v39 = v36 - 2;
              }

              goto LABEL_100;
            }

            goto LABEL_93;
          }

          if (v36 < 2)
          {
            goto LABEL_121;
          }

          v64 = *v41;
          v63 = v41[1];
          v52 = __OFSUB__(v63, v64);
          v59 = v63 - v64;
          v60 = v52;
LABEL_93:
          if (v60)
          {
            goto LABEL_124;
          }

          v66 = *v40;
          v65 = v40[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_126;
          }

          if (v67 < v59)
          {
            goto LABEL_107;
          }

LABEL_100:
          if (v39 - 1 >= v36)
          {
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

          if (!*a3)
          {
            goto LABEL_135;
          }

          v71 = v7;
          v72 = &v37[2 * v39 - 2];
          v73 = *v72;
          v74 = &v37[2 * v39];
          v75 = v74[1];
          sub_1ABE4B30C((*a3 + 88 * *v72), (*a3 + 88 * *v74), (*a3 + 88 * v75), v82);
          if (v4)
          {
            goto LABEL_112;
          }

          if (v75 < v73)
          {
            goto LABEL_114;
          }

          v76 = v71[2];
          if (v39 > v76)
          {
            goto LABEL_115;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v39 >= v76)
          {
            goto LABEL_116;
          }

          v36 = v76 - 1;
          memmove(&v37[2 * v39], v74 + 2, 16 * (v76 - 1 - v39));
          v7 = v71;
          v71[2] = v76 - 1;
          if (v76 <= 2)
          {
            goto LABEL_107;
          }
        }

        v46 = &v37[2 * v36];
        v47 = *(v46 - 8);
        v48 = *(v46 - 7);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_117;
        }

        v51 = *(v46 - 6);
        v50 = *(v46 - 5);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_118;
        }

        v53 = v41[1];
        v54 = v53 - *v41;
        if (__OFSUB__(v53, *v41))
        {
          goto LABEL_120;
        }

        v52 = __OFADD__(v44, v54);
        v55 = v44 + v54;
        if (v52)
        {
          goto LABEL_123;
        }

        if (v55 >= v49)
        {
          v69 = *v40;
          v68 = v40[1];
          v52 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v52)
          {
            goto LABEL_128;
          }

          if (v44 < v70)
          {
            v39 = v36 - 2;
          }

          goto LABEL_100;
        }

        goto LABEL_78;
      }

LABEL_107:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v85 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_138;
  }

  sub_1ABE4AE78(&v85, *a1, a3);
LABEL_112:
}

uint64_t sub_1ABE4AE78(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABE4B30C((*a3 + 88 * *v4), (*a3 + 88 * *v9), (*a3 + 88 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABE4AFB0(char *a1, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v52 = a5;
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v9 < v11)
  {
    sub_1ABAC9278(a1, (a2 - a1) / 16, a4);
    v12 = &v6[2 * v9];
    v13 = a3;
    while (1)
    {
      if (v6 >= v12 || v7 >= v13)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v15 = v7[1];
      v16 = v7;
      v50 = *v7;
      v51 = v15;
      v17 = v6[1];
      v48 = *v6;
      v49 = v17;

      v18 = sub_1ABE497D4(&v50, &v48, v52);
      if (v5)
      {

        v38 = (v12 - v6) / 16;
        if (v8 < v6 || v8 >= &v6[2 * v38])
        {
          v36 = 16 * v38;
          v37 = v8;
          v40 = v6;
          goto LABEL_54;
        }

        if (v8 != v6)
        {
          v36 = 16 * v38;
          v37 = v8;
LABEL_51:
          v40 = v6;
LABEL_54:
          memmove(v37, v40, v36);
        }

        goto LABEL_55;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v16;
      v7 = v16 + 2;
      v13 = a3;
      if (v8 != v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 16;
    }

    v20 = v6;
    v21 = v8 == v6;
    v6 += 2;
    v13 = a3;
    v7 = v16;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v20;
    goto LABEL_13;
  }

  sub_1ABAC9278(a2, (a3 - a2) / 16, a4);
  v47 = &v6[2 * v11];
  v22 = a3;
  __src = v6;
LABEL_15:
  v23 = 0;
  v44 = v7 - 2;
  while (1)
  {
    v12 = &v47[v23 / 8];
    if (&v47[v23 / 8] <= v6 || v7 <= a1)
    {
LABEL_29:
      v34 = (v12 - v6) / 16;
      if (v7 < v6 || v7 >= &v6[2 * v34])
      {
        memmove(v7, v6, 16 * v34);
      }

      else if (v7 != v6)
      {
        v36 = 16 * v34;
        v37 = v7;
        goto LABEL_51;
      }

      goto LABEL_55;
    }

    v25 = v22;
    v27 = *(v12 - 1);
    v26 = v12 - 2;
    v50 = *(v12 - 2);
    v51 = v27;
    v28 = *(v7 - 1);
    v29 = v7;
    v48 = *(v7 - 2);
    v49 = v28;

    v30 = sub_1ABE497D4(&v50, &v48, v52);
    if (v5)
    {
      break;
    }

    v31 = v30;

    v32 = (v25 + v23);
    v33 = (v25 + v23 - 16);
    if (v31)
    {
      v47 = (v47 + v23);
      v22 = v25 + v23 - 16;
      v6 = __src;
      v7 = v44;
      if (v32 != v29)
      {
        *v33 = *v44;
        v7 = v44;
        v22 = v33;
      }

      goto LABEL_15;
    }

    v22 = v25;
    if (&v47[v23 / 8] != (v25 + v23))
    {
      *v33 = *v26;
    }

    v23 -= 16;
    v6 = __src;
    v7 = v29;
  }

  v40 = __src;
  v41 = (v47 - __src + v23) / 16;
  if (v7 < __src || v7 >= &__src[2 * v41])
  {
    v36 = 16 * v41;
    v37 = v7;
    goto LABEL_54;
  }

  if (v7 != __src)
  {
    v36 = 16 * v41;
    v37 = v7;
    goto LABEL_54;
  }

LABEL_55:

  return 1;
}

uint64_t sub_1ABE4B30C(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1ABADD380(a1, (a2 - a1) / 88, a4);
    v10 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v16 = v7;
        goto LABEL_40;
      }

      v12 = *(v6 + 2);
      v13 = *(v4 + 2);
      if (v12 < v13)
      {
        break;
      }

      if (v12 == v13)
      {
        v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
        if (!v15 && (sub_1ABF25054() & 1) != 0)
        {
          break;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 88;
      if (!v15)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 88;
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 88;
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v7, v14, 0x58uLL);
    goto LABEL_10;
  }

  sub_1ABADD380(a2, (a3 - a2) / 88, a4);
  v10 = &v4[88 * v9];
LABEL_21:
  v16 = v6;
  v6 -= 88;
  for (v5 -= 11; v10 > v4 && v16 > v7; v5 -= 11)
  {
    v18 = *(v10 - 9);
    v19 = *(v16 - 9);
    if (v18 < v19 || v18 == v19 && (*(v10 - 11) == *(v16 - 11) ? (v20 = *(v10 - 10) == *(v16 - 10)) : (v20 = 0), !v20 && (sub_1ABF25054() & 1) != 0))
    {
      if (v5 + 11 != v16)
      {
        memmove(v5, v6, 0x58uLL);
      }

      goto LABEL_21;
    }

    if (v10 != (v5 + 11))
    {
      memmove(v5, v10 - 88, 0x58uLL);
    }

    v10 -= 88;
  }

LABEL_40:
  v21 = (v10 - v4) / 88;
  if (v16 != v4 || v16 >= &v4[88 * v21])
  {
    memmove(v16, v4, 88 * v21);
  }

  return 1;
}

uint64_t sub_1ABE4B5BC@<X0>(uint64_t a1@<X8>)
{
  sub_1ABB33F2C(0x7463656A627573, 0xE700000000000000);
  sub_1ABB34118();
  sub_1ABB33F60(0x6E6F6974616C6572, 0xEE00644970696873);
  sub_1ABB34118();
  sub_1ABB32E40();
  v3 = v2;
  v5 = v4;

  *a1 = v18;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v12;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = v3;
  *(a1 + 104) = v5;
  return result;
}

uint64_t sub_1ABE4B78C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_1ABE4B7D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_1ABE4B858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1ABE4B8D8()
{
  result = qword_1EB4DB000;
  if (!qword_1EB4DB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB000);
  }

  return result;
}

unint64_t sub_1ABE4B92C()
{
  result = qword_1EB4DB008;
  if (!qword_1EB4DB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB008);
  }

  return result;
}

unint64_t sub_1ABE4B9AC()
{
  result = qword_1EB4CEC00;
  if (!qword_1EB4CEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC00);
  }

  return result;
}

unint64_t sub_1ABE4BA00()
{
  result = qword_1EB4CEC08;
  if (!qword_1EB4CEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC08);
  }

  return result;
}

uint64_t sub_1ABE4BA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABE4BABC()
{
  result = qword_1EB4CEBE0;
  if (!qword_1EB4CEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBE0);
  }

  return result;
}

unint64_t sub_1ABE4BB10()
{
  result = qword_1EB4CEBE8;
  if (!qword_1EB4CEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBE8);
  }

  return result;
}

uint64_t sub_1ABE4BB64(void *__src, __int128 *a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_getObjectType();
  sub_1ABF241F4();
  result = sub_1ABF22464();
  if (!v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1ABE4BC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, const void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v37 = a1;
  v40 = a7;
  v12 = a5;
  v35 = a9;
  v16 = sub_1ABF22924();
  v55 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v35 - v19;
  v39 = v20;
  if (a4 == 1)
  {
    v43 = 0;
    v41 = 0;
    v36 = 0;
    v42 = 1;
  }

  else
  {
    v42 = a3;
    v43 = a2;
    v41 = a4;
    v36 = v12;
  }

  v54 = *a6;
  v21 = *(a10 + 32);
  sub_1ABB3E558(&v54, v50);
  sub_1ABE4C0D8(a2, a3, a4);
  v22 = v21(a8, a10);
  v24 = v23;
  v25 = v54;
  v51[3] = sub_1ABF22424();
  v51[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v51);
  memcpy(__dst, v40, 0x69uLL);
  memcpy(v50, v40, 0x69uLL);
  v47 = v25;
  v48 = v22;
  v49 = v24;
  sub_1ABE10DCC(__dst, &v46);
  TriplesQuery.Clause.Impl.graphIdentifierSQLExpression(config:)(&v47);
  memcpy(v52, v50, 0x69uLL);
  sub_1ABE4C0EC(v52);

  v26 = v45;
  sub_1ABF221C4();
  sub_1ABA84B54(v51);
  if (v41)
  {
    v50[0] = v41;
    LOBYTE(v50[1]) = v36 & 1;
    TriplesSort.sqlOrdering.getter();
    v27 = v39;
    swift_getWitnessTable();
    v28 = v44;
    sub_1ABF224A4();

    v29 = v55;
    (*(v55 + 8))(v26, v27);
    (*(v29 + 32))(v26, v28, v27);

    v31 = v43;
  }

  else
  {

    v29 = v55;
    v31 = v43;
    v28 = v44;
    v27 = v39;
  }

  if ((v42 & 1) == 0)
  {
    if (v31 < 0)
    {
      __break(1u);
      return result;
    }

    swift_getWitnessTable();
    sub_1ABF22754();
    (*(v29 + 8))(v26, v27);
    (*(v29 + 32))(v26, v28, v27);
  }

  swift_getWitnessTable();
  v32 = v38;
  v33 = sub_1ABF22234();
  if (v32)
  {
    return (*(v29 + 8))(v26, v27);
  }

  v34 = v33;
  result = (*(v29 + 8))(v26, v27);
  *v35 = v34;
  return result;
}