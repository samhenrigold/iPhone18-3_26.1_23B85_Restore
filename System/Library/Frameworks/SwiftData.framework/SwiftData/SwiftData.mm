void sub_1973F3438(uint64_t a1)
{
  sub_1975212CC();
  if (v1 <= 0x3F)
  {
    sub_1973F3504();
    if (v2 <= 0x3F)
    {
      sub_1973F3554(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1973F3504()
{
  if (!qword_1ED7CA7A8)
  {
    v0 = sub_197521F5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7CA7A8);
    }
  }
}

void sub_1973F3554(uint64_t a1)
{
  if (!qword_1ED7CA0C0)
  {
    type metadata accessor for Schema();
    v1 = sub_197521F5C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7CA0C0);
    }
  }
}

uint64_t sub_1973F35D0(uint64_t a1)
{
  result = type metadata accessor for EditingState(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1973F3724(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1973F3770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1975212CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1973F382C(uint64_t a1)
{
  sub_19752135C();
  if (v1 <= 0x3F)
  {
    sub_1973F3504();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for EditingState(uint64_t a1)
{
  result = qword_1ED7CA3C0;
  if (!qword_1ED7CA3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1973F3924(uint64_t a1, id *a2)
{
  result = sub_19752179C();
  *a2 = 0;
  return result;
}

uint64_t Schema.__allocating_init(versionedSchema:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  (*(a2 + 16))(&v9, a1, a2);
  v7 = v9;
  v8 = v10;
  v5 = swift_allocObject();
  Schema.init(_:version:)(v4, &v7);
  return v5;
}

uint64_t Schema.init(_:version:)(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  if (qword_1ED7C9B38 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v6 = qword_1ED7C9B50;
    *(v2 + 16) = xmmword_1ED7C9B40;
    *(v2 + 32) = v6;
    *(v2 + 40) = v4;
    v7 = MEMORY[0x1E69E7CC0];
    *(v2 + 56) = v5;
    v20 = v7;
    v19 = MEMORY[0x1E69E7CC8];
    v8 = *(a1 + 16);
    if (!v8)
    {
      break;
    }

    v9 = 0;
    v5 = 0;
    v10 = (a1 + 40);
    while (v9 < *(a1 + 16))
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = MEMORY[0x19A8E1370]();
      sub_1974D7B5C(v12, v11, &v19, &v20);
      ++v9;
      objc_autoreleasePoolPop(v13);
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    v17 = v4;
    swift_once();
    v4 = v17;
  }

LABEL_6:

  v18 = sub_1974153BC(v14);
  sub_1974174A8(&v18);
  v15 = v19;
  *(v2 + 64) = v18;
  *(v2 + 72) = v15;

  return v2;
}

uint64_t type metadata accessor for ModelConfiguration(uint64_t a1)
{
  result = qword_1ED7CA7B0;
  if (!qword_1ED7CA7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1973F3C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1975212CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1973F3D34(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_2(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_3(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_5(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_6(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_7(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1973F4028(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  sub_19752180C();
  v4 = sub_197522A9C();

  return sub_1973F40A0(a1, a2, v4);
}

unint64_t sub_1973F40A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_19752282C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1973F41BC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC8];
  *(v7 + 16) = MEMORY[0x1E69E7CC8];
  v136 = (v7 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = (v9 + 16);
  v121 = a1;
  v120 = a2;
  sub_1973F548C(a1, v7, v6, v3, v9, a1, a2);
  swift_beginAccess();
  v135 = (v6 + 16);
  v11 = *v135;
  if (*v135 >> 62)
  {
    goto LABEL_132;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A8E0960](v13, v11);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
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
LABEL_132:
          v12 = sub_1975220EC();
          goto LABEL_3;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_12;
        }
      }

      v16 = MEMORY[0x19A8E1370]();
      sub_1974F4F18(v14, v136);
      objc_autoreleasePoolPop(v16);

      ++v13;
    }

    while (v15 != v12);
  }

  swift_beginAccess();
  v17 = *v10;
  v19 = *(*v10 + 64);
  v10 = (*v10 + 64);
  v18 = v19;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v134 = v17;

  v24 = 0;
  v133 = v10;
  if (!v22)
  {
    goto LABEL_17;
  }

  do
  {
    v11 = v24;
LABEL_20:
    v25 = (v11 << 10) | (16 * __clz(__rbit64(v22)));
    v26 = (*(v134 + 48) + v25);
    v28 = *v26;
    v27 = v26[1];
    v29 = (*(v134 + 56) + v25);
    v30 = *v29;
    v31 = v29[1];
    swift_beginAccess();
    v32 = *v136;
    v33 = *(*v136 + 16);

    if (!v33 || (v34 = sub_1973F4028(v28, v27), (v35 & 1) == 0))
    {
      swift_endAccess();
      v139 = 0;
      v140 = 0xE000000000000000;
      sub_1975221EC();

      v139 = 0xD000000000000016;
      v140 = 0x8000000197529610;
      MEMORY[0x19A8DFF80](v28, v27);
      goto LABEL_138;
    }

    v36 = *(*(v32 + 56) + 8 * v34);
    swift_endAccess();
    swift_beginAccess();
    v37 = *v136;
    v38 = *(*v136 + 16);

    if (!v38 || (v39 = sub_1973F4028(v30, v31), (v40 & 1) == 0))
    {
      swift_endAccess();
      v139 = 0;
      v140 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x20797469746E45, 0xE700000000000000);
      MEMORY[0x19A8DFF80](v28, v27);
      MEMORY[0x19A8DFF80](0x6966696365707320, 0xEB00000000207365);
      MEMORY[0x19A8DFF80](v30, v31);
      MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197529630);
      v118 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v118);

      goto LABEL_138;
    }

    v22 &= v22 - 1;
    v41 = *(*(v37 + 56) + 8 * v39);
    swift_endAccess();

    swift_beginAccess();
    v42 = v41[8];
    swift_beginAccess();
    v139 = v42;
    swift_retain_n();

    sub_1974EE6F8(v43, sub_1973FA494, &qword_1EAF2B1C8, &unk_19752EA30);
    v44 = v139;
    swift_beginAccess();
    v36[9] = v44;

    sub_1974EF18C();

    swift_weakAssign();
    swift_beginAccess();
    v46 = v41[2];
    v45 = v41[3];

    swift_beginAccess();
    v36[5] = v46;
    v36[6] = v45;

    swift_beginAccess();

    sub_19747D134(v137, v36);
    swift_endAccess();

    v24 = v11;
    v10 = v133;
  }

  while (v22);
  while (1)
  {
LABEL_17:
    v11 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_122;
    }

    if (v11 >= v23)
    {
      break;
    }

    v22 = v10[v11];
    ++v24;
    if (v22)
    {
      goto LABEL_20;
    }
  }

  v47 = *v135;
  if (*v135 >> 62)
  {
    v117 = *v135;
    v48 = sub_1975220EC();
    v47 = v117;
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v123 = v47;

  if (v48)
  {
    v49 = 0;
    v136 = (v123 & 0xC000000000000001);
    v132 = v48;
    while (1)
    {
      while (1)
      {
        if (v136)
        {
          v11 = MEMORY[0x19A8E0960](v49, v123);
          v50 = __OFADD__(v49++, 1);
          if (v50)
          {
            goto LABEL_123;
          }
        }

        else
        {
          if (v49 >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_124;
          }

          v11 = *(v123 + 32 + 8 * v49);

          v50 = __OFADD__(v49++, 1);
          if (v50)
          {
            goto LABEL_123;
          }
        }

        v51 = *(v11 + 144);
        if (!v51)
        {
          v139 = 0;
          v140 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000023, 0x8000000197529680);
          v138 = v11;
          sub_19752235C();
          goto LABEL_138;
        }

        v52 = *(v11 + 152);
        if (qword_1ED7C95C8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v53 = qword_1ED7CE638;
        if (*(qword_1ED7CE638 + 16))
        {
          v54 = sub_1973F7950(v51, v52);
          if (v55)
          {
            break;
          }
        }

        swift_endAccess();
        v80 = *v135;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = qword_1ED7CE638;
        v138 = qword_1ED7CE638;
        qword_1ED7CE638 = 0x8000000000000000;
        v82 = v52;
        v83 = sub_1973F7950(v51, v52);
        v85 = v10[2];
        v86 = (v84 & 1) == 0;
        v50 = __OFADD__(v85, v86);
        v87 = v85 + v86;
        if (v50)
        {
          goto LABEL_125;
        }

        v88 = v84;
        if (v10[3] >= v87)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v10 = &v138;
            v107 = v83;
            sub_197479C3C();
            v83 = v107;
          }
        }

        else
        {
          sub_1974171F4(v87, isUniquelyReferenced_nonNull_native);
          v10 = v138;
          v83 = sub_1973F7950(v51, v82);
          if ((v88 & 1) != (v89 & 1))
          {
            goto LABEL_139;
          }
        }

        v48 = v132;
        v90 = v138;
        if ((v88 & 1) == 0)
        {
          *(v138 + 8 * (v83 >> 6) + 64) |= 1 << v83;
          v92 = (v90[6] + 16 * v83);
          *v92 = v51;
          v92[1] = v82;
          v93 = (v90[7] + 16 * v83);
          *v93 = v11;
          v93[1] = v80;
          v94 = v90[2];
          v50 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v50)
          {
            goto LABEL_127;
          }

LABEL_89:
          v90[2] = v95;
          goto LABEL_90;
        }

LABEL_87:
        v91 = (v90[7] + 16 * v83);
        v10 = *v91;
        *v91 = v11;
        v91[1] = v80;

LABEL_90:
        qword_1ED7CE638 = v90;
        swift_endAccess();
LABEL_91:

        if (v49 == v48)
        {
          goto LABEL_117;
        }
      }

      v56 = *(*(v53 + 56) + 16 * v54 + 8);
      swift_endAccess();
      v57 = v56;
      v58 = *v135;
      v59 = v56 & 0xFFFFFFFFFFFFFF8;
      v10 = (v56 >> 62);
      if (v10)
      {
        v108 = v57;
        v109 = sub_1975220EC();
        v57 = v108;
        v60 = v109;
      }

      else
      {
        v60 = *(v59 + 16);
      }

      if (v58 >> 62)
      {
        break;
      }

      if (v60 != *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

LABEL_42:
      if (!v60)
      {
        goto LABEL_91;
      }

      v61 = v57 & 0xFFFFFFFFFFFFFF8;
      v62 = (v57 & 0xFFFFFFFFFFFFFF8) + 32;
      v125 = v57 & 0xFFFFFFFFFFFFFF8;
      if (v57 < 0)
      {
        v61 = v57;
      }

      if (v10)
      {
        v62 = v61;
      }

      v63 = v58 & 0xFFFFFFFFFFFFFF8;
      v64 = (v58 & 0xFFFFFFFFFFFFFF8) + 32;
      v124 = v58 & 0xFFFFFFFFFFFFFF8;
      if (v58 < 0)
      {
        v63 = v58;
      }

      if (v58 >> 62)
      {
        v64 = v63;
      }

      if (v62 == v64)
      {
        goto LABEL_91;
      }

      if (v60 < 0)
      {
        goto LABEL_131;
      }

      v122 = v52;
      v127 = v58 & 0xC000000000000001;
      v128 = v57 & 0xC000000000000001;
      v130 = v57;

      v129 = v58;

      v65 = 4;
      v126 = v60;
      do
      {
        v66 = v65 - 4;
        v67 = v65 - 3;
        if (__OFADD__(v65 - 4, 1))
        {
          goto LABEL_126;
        }

        if (v128)
        {
          v68 = MEMORY[0x19A8E0960](v65 - 4, v130);
          if (v127)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v66 >= *(v125 + 16))
          {
            goto LABEL_128;
          }

          v68 = *(v130 + 8 * v65);

          if (v127)
          {
LABEL_57:
            v69 = MEMORY[0x19A8E0960](v65 - 4, v129);
            goto LABEL_62;
          }
        }

        if (v66 >= *(v124 + 16))
        {
          goto LABEL_129;
        }

        v69 = *(v129 + 8 * v65);

LABEL_62:
        swift_beginAccess();
        v10 = v68[2];
        v70 = v68[3];
        swift_beginAccess();
        v71 = v10 == v69[2] && v70 == v69[3];
        if (!v71 && (sub_19752282C() & 1) == 0)
        {

LABEL_95:
          v48 = v132;
          v52 = v122;
          v60 = v126;
          goto LABEL_96;
        }

        swift_beginAccess();
        v10 = v68[5];
        v72 = v68[6];
        swift_beginAccess();
        v73 = v69[6];
        if (v72)
        {
          if (!v73 || (v10 != v69[5] || v72 != v73) && (sub_19752282C() & 1) == 0)
          {
LABEL_93:

LABEL_94:

            goto LABEL_95;
          }
        }

        else if (v73)
        {
          goto LABEL_93;
        }

        swift_beginAccess();
        v10 = v68[10];
        swift_beginAccess();
        v74 = v69[10];

        v75 = sub_197415D98(v10, v74);

        if ((v75 & 1) == 0)
        {
          goto LABEL_93;
        }

        swift_beginAccess();
        v10 = v68[11];
        swift_beginAccess();
        v76 = v69[11];

        v77 = sub_19741616C(v10, v76);

        if ((v77 & 1) == 0)
        {
          goto LABEL_93;
        }

        swift_beginAccess();
        v10 = v68[4];
        swift_beginAccess();
        v78 = v69[4];

        v79 = sub_197416704(v10, v78);

        if ((v79 & 1) == 0)
        {
          goto LABEL_94;
        }

        ++v65;
      }

      while (v67 != v126);

      v48 = v132;
      if (v49 == v132)
      {
        goto LABEL_117;
      }
    }

    v131 = v57;
    v110 = sub_1975220EC();
    v57 = v131;
    if (v60 == v110)
    {
      goto LABEL_42;
    }

LABEL_96:
    if (*v135 >> 62)
    {
      if (v60 >= sub_1975220EC())
      {
        goto LABEL_91;
      }
    }

    else if (v60 >= *((*v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_91;
    }

    v80 = *v135;
    swift_beginAccess();

    v96 = swift_isUniquelyReferenced_nonNull_native();
    v10 = qword_1ED7CE638;
    v138 = qword_1ED7CE638;
    qword_1ED7CE638 = 0x8000000000000000;
    v97 = v52;
    v83 = sub_1973F7950(v51, v52);
    v99 = v10[2];
    v100 = (v98 & 1) == 0;
    v50 = __OFADD__(v99, v100);
    v101 = v99 + v100;
    if (v50)
    {
      goto LABEL_130;
    }

    v102 = v98;
    if (v10[3] >= v101)
    {
      if ((v96 & 1) == 0)
      {
        v10 = &v138;
        v111 = v83;
        sub_197479C3C();
        v83 = v111;
      }
    }

    else
    {
      sub_1974171F4(v101, v96);
      v10 = v138;
      v83 = sub_1973F7950(v51, v97);
      if ((v102 & 1) != (v103 & 1))
      {
        while (1)
        {
LABEL_139:
          sub_1975229CC();
          __break(1u);
LABEL_140:
          swift_endAccess();
          v139 = 0;
          v140 = 0xE000000000000000;
          sub_1975221EC();

          v139 = 0xD000000000000016;
          v140 = 0x80000001975296B0;
          v119 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v119);

LABEL_138:
          sub_1975223EC();
          __break(1u);
        }
      }
    }

    v48 = v132;
    v90 = v138;
    if ((v102 & 1) == 0)
    {
      *(v138 + 8 * (v83 >> 6) + 64) |= 1 << v83;
      v104 = (v90[6] + 16 * v83);
      *v104 = v51;
      v104[1] = v97;
      v105 = (v90[7] + 16 * v83);
      *v105 = v11;
      v105[1] = v80;
      v106 = v90[2];
      v50 = __OFADD__(v106, 1);
      v95 = v106 + 1;
      if (v50)
      {
        __break(1u);
        goto LABEL_134;
      }

      goto LABEL_89;
    }

    goto LABEL_87;
  }

LABEL_117:

  if (qword_1ED7C95C8 != -1)
  {
LABEL_134:
    swift_once();
  }

  swift_beginAccess();
  v112 = qword_1ED7CE638;
  if (!*(qword_1ED7CE638 + 16))
  {
    goto LABEL_140;
  }

  v113 = sub_1973F7950(v121, v120);
  if ((v114 & 1) == 0)
  {
    goto LABEL_140;
  }

  v115 = *(*(v112 + 56) + 16 * v113);
  swift_endAccess();

  return v115;
}

uint64_t sub_1973F5164()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1973F51A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1973F51F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1ED7CA0C8 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED7CE6B8;
  [qword_1ED7CE6B8 lock];
  if (qword_1ED7CA0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = off_1ED7C9B30;
  if (*(off_1ED7C9B30 + 2) && (v8 = sub_1973F7950(a1, a2), (v9 & 1) != 0))
  {
    v10 = v7[7] + 40 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v17 = *(v10 + 24);
    swift_endAccess();

    result = [v6 unlock];
    v15 = v17;
  }

  else
  {
    swift_endAccess();
    sub_1973F6688(a2, v19);
    v11 = v19[0];
    v12 = v19[1];
    v13 = v19[2];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = off_1ED7C9B30;
    off_1ED7C9B30 = 0x8000000000000000;
    sub_1973FA950(v19, a1, a2, isUniquelyReferenced_nonNull_native);
    off_1ED7C9B30 = v18;
    swift_endAccess();
    result = [v6 unlock];
    v15 = v20;
  }

  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_1973F53F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED7CE6C0 = result;
  return result;
}

id sub_1973F5444()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  qword_1ED7CE6B8 = result;
  return result;
}

uint64_t sub_1973F548C(unint64_t a1, unint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v111 = sub_1973F68A4(a6, a7);
  v13 = sub_1973F7AAC(v8);
  v15 = v14;
  swift_beginAccess();
  if (*(*(a2 + 16) + 16))
  {
    sub_1973F4028(v13, v15);
    if (v16)
    {
      swift_endAccess();
    }
  }

  v109 = a5;
  swift_endAccess();
  type metadata accessor for Schema.Entity();
  v17 = swift_allocObject();

  Schema.Entity.init(_:)(v13, v15);
  swift_beginAccess();

  MEMORY[0x19A8E00D0](v18);
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_92;
  }

  while (1)
  {
    sub_197521A4C();
    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v118[0] = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    v108 = v13;
    sub_1973FB0A0(v17, v13, v15, isUniquelyReferenced_nonNull_native);
    v102 = v15;

    *(a2 + 16) = *&v118[0];
    swift_endAccess();
    swift_getMetatypeMetadata();
    v17[16] = sub_19752238C();
    v17[17] = v20;

    v17[18] = a1;
    v17[19] = v7;
    v21 = sub_1975214CC();
    v101 = v7;
    v103 = a1;
    v104 = v8;
    v112 = a3;
    if (!v21)
    {
      goto LABEL_44;
    }

    v13 = v21;
    v119[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
    v15 = sub_1975217CC();
    v23 = v22;
    v24 = swift_conformsToProtocol2();
    if (v24)
    {
      v25 = v24;
      v98 = v15;
      v99 = v23;
      swift_beginAccess();
      if (*(*(a2 + 16) + 16))
      {
        sub_1973F4028(v15, v23);
        if (v26)
        {
          swift_endAccess();
          v25 = v102;
          v27 = v109;
LABEL_42:
          v15 = v98;
          v38 = v108;
LABEL_43:
          swift_beginAccess();

          v54 = swift_isUniquelyReferenced_nonNull_native();
          *&v118[0] = *(v27 + 16);
          *(v27 + 16) = 0x8000000000000000;
          sub_19747C744(v15, v99, v38, v25, v54);

          *(v27 + 16) = *&v118[0];
          swift_endAccess();
          goto LABEL_44;
        }
      }

      swift_endAccess();
      if (qword_1ED7C95C8 != -1)
      {
LABEL_94:
        swift_once();
      }

      swift_beginAccess();
      v28 = qword_1ED7CE638;
      if (!*(qword_1ED7CE638 + 16) || (v29 = sub_1973F7950(v13, v25), (v30 & 1) == 0))
      {
        swift_endAccess();
        v53 = a3;
        v27 = v109;
        sub_1973F548C(v13, a2, v53, a4, v109, v13, v25);
        v25 = v102;
        goto LABEL_42;
      }

      v31 = (*(v28 + 56) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      swift_endAccess();
      swift_beginAccess();
      swift_retain_n();
      v106 = v32;

      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v118[0] = *(a2 + 16);
      *(a2 + 16) = 0x8000000000000000;
      v15 = v98;
      sub_1973FB0A0(v33, v98, v99, v34);

      *(a2 + 16) = *&v118[0];
      swift_endAccess();
      swift_beginAccess();

      MEMORY[0x19A8E00D0](v35);
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1975219FC();
      }

      v36 = (a3 + 16);
      sub_197521A4C();
      swift_endAccess();
      v37 = v32;
      v38 = v108;
      v25 = v102;
      if (!(v106 >> 62))
      {
        v39 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          goto LABEL_17;
        }

        goto LABEL_96;
      }

      v36 = v106;
      v39 = sub_1975220EC();
      v37 = v106;
      if (!v39)
      {
LABEL_96:

        v27 = v109;
        goto LABEL_43;
      }

LABEL_17:
      if (v39 < 1)
      {
        __break(1u);
        objc_autoreleasePoolPop(v36);
        __break(1u);
        objc_autoreleasePoolPop(a3);
        __break(1u);
LABEL_98:
        v115 = 0;
        v116 = 0xE000000000000000;
        sub_1975221EC();
        v23 = &v115;
        MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197529810);
        sub_19752235C();
        while (1)
        {
LABEL_100:
          sub_1975223EC();
          __break(1u);
LABEL_101:
          sub_1975229CC();
          __break(1u);
LABEL_102:
          v119[0] = 0;
          v119[1] = 0xE000000000000000;
          v97 = v15;
          v15 = v23;
          v23 = v119;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0x7974206C65646F4DLL, 0xEB00000000206570);
          MEMORY[0x19A8DFF80](v108, v102);
          MEMORY[0x19A8DFF80](v25 + 34, 0x80000001975298A0);
          MEMORY[0x19A8DFF80](v97, v15);
          MEMORY[0x19A8DFF80](v25 + 2, 0x80000001975298E0);
          MEMORY[0x19A8DFF80](0x6574736973726550, 0xEF6C65646F4D746ELL);
          MEMORY[0x19A8DFF80](46, 0xE100000000000000);
        }
      }

      v15 = 0;
      v105 = v37 & 0xC000000000000001;
      v100 = v39;
      while (1)
      {
        if (v105)
        {
          v7 = MEMORY[0x19A8E0960](v15);
        }

        else
        {
          v7 = *(v37 + 8 * v15 + 32);
        }

        swift_beginAccess();
        v25 = *(v7 + 16);
        v13 = *(v7 + 24);
        swift_beginAccess();

        v8 = swift_isUniquelyReferenced_nonNull_native();
        *&v118[0] = *(a2 + 16);
        v40 = *&v118[0];
        *(a2 + 16) = 0x8000000000000000;
        a1 = sub_1973F4028(v25, v13);
        v42 = *(v40 + 16);
        v43 = (v41 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_91;
        }

        a3 = v41;
        if (*(v40 + 24) >= v44)
        {
          if (v8)
          {
            v47 = *&v118[0];
            if (v41)
            {
              goto LABEL_29;
            }
          }

          else
          {
            sub_197479C28();
            v47 = *&v118[0];
            if (a3)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_197417494(v44, v8);
          v23 = *&v118[0];
          v45 = sub_1973F4028(v25, v13);
          if ((a3 & 1) != (v46 & 1))
          {
            goto LABEL_101;
          }

          a1 = v45;
          v47 = *&v118[0];
          if (a3)
          {
LABEL_29:
            *(v47[7] + 8 * a1) = v7;

            goto LABEL_33;
          }
        }

        v47[(a1 >> 6) + 8] |= 1 << a1;
        v48 = (v47[6] + 16 * a1);
        *v48 = v25;
        v48[1] = v13;
        *(v47[7] + 8 * a1) = v7;
        v49 = v47[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          __break(1u);
          goto LABEL_94;
        }

        v47[2] = v51;
LABEL_33:
        *(a2 + 16) = v47;
        swift_endAccess();
        a3 = v112;
        swift_beginAccess();

        MEMORY[0x19A8E00D0](v52);
        a1 = v103;
        v8 = v104;
        v38 = v108;
        if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1975219FC();
        }

        ++v15;
        sub_197521A4C();
        swift_endAccess();

        v37 = v106;
        if (v100 == v15)
        {

          v7 = v101;
          v25 = v102;
          v27 = v109;
          v15 = v98;
          goto LABEL_43;
        }
      }
    }

    v25 = 0xD000000000000013;
    if ((v15 != 0xD000000000000013 || 0x8000000197529880 != v23) && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_102;
    }

LABEL_44:
    v13 = MEMORY[0x1E69E7CC0];
    v122 = MEMORY[0x1E69E7CC0];
    v123 = MEMORY[0x1E69E7CC0];
    v55 = v111;
    a3 = *(v111 + 16);
    if (!a3)
    {
      break;
    }

    v13 = 0;
    v15 = 0;
    v56 = v111 + 32;
    while (v13 < *(v55 + 16))
    {
      v57 = sub_1973F7E64(v56, v119);
      v58 = MEMORY[0x19A8E1370](v57);
      sub_1974F3888(v119, a2, v112, a4, v109, &v123, v8, v7);
      ++v13;
      objc_autoreleasePoolPop(v58);
      sub_1973F82A8(v119);
      v56 += 96;
      v55 = v111;
      if (a3 == v13)
      {
        v13 = v123;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    sub_1975219FC();
  }

  v15 = 0;
LABEL_50:
  v108 = *(v13 + 16);
  v109 = v13;
  if (v108)
  {
    v107 = v13 + 32;

    a2 = 0;
    a4 = MEMORY[0x1E69E7CC0];
    v113 = MEMORY[0x1E69E7CC8];
    do
    {
      if (a2 >= *(v13 + 16))
      {
        goto LABEL_89;
      }

      sub_1973FA430(v107 + 40 * a2, v119);
      v59 = v120;
      v60 = v121;
      __swift_project_boxed_opaque_existential_1(v119, v120);
      v61 = (*(v60 + 32))(v59, v60);
      v63 = v62;
      sub_1973FA430(v119, v118);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v115 = v113;
      sub_19747C5F0(v118, v61, v63, v64);

      v113 = v115;
      sub_1973FA430(v119, v118);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Attribute();
      if (swift_dynamicCast())
      {
        v65 = v114;
        swift_beginAccess();

        sub_197417B28(&v117, v114);
        swift_endAccess();

        swift_beginAccess();
        v66 = *(v114 + 16);
        a3 = *(v114 + 24);
        swift_beginAccess();

        v67 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v17[12];
        v17[12] = 0x8000000000000000;
        sub_1974184C4(v114, v66, a3, v67);

        v17[12] = v117;
        swift_endAccess();
        swift_beginAccess();
        v68 = *(v114 + 48);
        v69 = (v68 + 64);
        v70 = *(v68 + 16) + 1;
        while (--v70)
        {
          v71 = *v69;
          v69 += 40;
          if (v71 == 1)
          {
            goto LABEL_65;
          }
        }

LABEL_52:
      }

      else
      {
        type metadata accessor for Schema.Relationship();
        if (!swift_dynamicCast())
        {
          goto LABEL_98;
        }

        v65 = v114;
        swift_beginAccess();

        sub_19741DE84(&v117, v114);
        swift_endAccess();

        swift_beginAccess();
        v72 = *(v114 + 16);
        a3 = *(v114 + 24);
        swift_beginAccess();

        v73 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v17[13];
        v17[13] = 0x8000000000000000;
        sub_19741E9CC(v114, v72, a3, v73);

        v17[13] = v117;
        swift_endAccess();
        swift_beginAccess();
        v74 = *(v114 + 56);
        v75 = *(v74 + 16);
        v76 = (v74 + 32);
        do
        {
          if (!v75)
          {
            goto LABEL_52;
          }

          v77 = *v76++;
          --v75;
        }

        while (v77 != 1);
        if (*(v114 + 168) == 1)
        {
LABEL_65:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_19752C280;
          v79 = *(v65 + 24);
          *(v78 + 32) = *(v65 + 16);
          *(v78 + 40) = v79;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a4 = sub_19741E43C(0, a4[2] + 1, 1, a4);
          }

          a3 = a4[2];
          v80 = a4[3];
          if (a3 >= v80 >> 1)
          {
            a4 = sub_19741E43C((v80 > 1), a3 + 1, 1, a4);
          }

          a4[2] = a3 + 1;
          a4[a3 + 4] = v78;
          v122 = a4;
        }

        else
        {
          if (qword_1EAF2ADA8 != -1)
          {
            swift_once();
          }

          if (dyld_program_sdk_at_least())
          {
            v115 = 0;
            v116 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197529830);
            v25 = *(v114 + 16);
            v15 = *(v114 + 24);

            v23 = &v115;
            MEMORY[0x19A8DFF80](v25, v15);

            goto LABEL_100;
          }

          if (qword_1EAF2ACF0 != -1)
          {
            swift_once();
          }

          v81 = sub_19752157C();
          __swift_project_value_buffer(v81, qword_1EAF33E20);

          v82 = sub_19752155C();
          v83 = sub_197521DDC();

          if (os_log_type_enabled(v82, v83))
          {
            a3 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v115 = v84;
            *a3 = 136315138;
            v86 = *(v114 + 16);
            v85 = *(v114 + 24);

            v87 = sub_197462310(v86, v85, &v115);

            *(a3 + 4) = v87;
            a1 = v103;
            v8 = v104;
            _os_log_impl(&dword_1973F2000, v82, v83, "A toMany Relationship ([PersistentModel]) cannot be marked Unique - %s", a3, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm_5(v84);
            v88 = v84;
            v7 = v101;
            MEMORY[0x19A8E1B50](v88, -1, -1);
            MEMORY[0x19A8E1B50](a3, -1, -1);
          }
        }
      }

      ++a2;
      __swift_destroy_boxed_opaque_existential_1Tm_5(v118);
      __swift_destroy_boxed_opaque_existential_1Tm_5(v119);
      v13 = v109;
    }

    while (a2 != v108);

    v89 = v113;
  }

  else
  {

    v89 = MEMORY[0x1E69E7CC8];
  }

  swift_beginAccess();
  v17[14] = v89;

  swift_beginAccess();
  v17[8] = v13;

  sub_1974184F4();
  a3 = MEMORY[0x1E69E7CC0];
  v117 = MEMORY[0x1E69E7CC0];
  v90 = (*(v7 + 80))(v8, v7);
  v91 = v90;
  a2 = *(v90 + 16);
  if (a2)
  {
    v13 = 0;
    v92 = v90 + 32;
    do
    {
      if (v13 >= *(v91 + 16))
      {
        goto LABEL_90;
      }

      v93 = sub_1973F7E64(v92, v119);
      a3 = MEMORY[0x19A8E1370](v93);
      sub_1974F49B4(v119, &v117, a1, &v122, v8, v7);
      ++v13;
      objc_autoreleasePoolPop(a3);
      sub_1973F82A8(v119);
      v92 += 96;
    }

    while (a2 != v13);
    v94 = v117;
  }

  else
  {
    v94 = a3;
  }

  swift_beginAccess();
  v17[21] = v94;

  v95 = v122;
  swift_beginAccess();
  v17[20] = v95;
}

char *sub_1973F6688@<X0>(uint64_t a2@<X1>, char **a3@<X8>)
{
  v4 = (*(a2 + 80))();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v13 = sub_1973F7E64(v6, v27);
      v14 = MEMORY[0x19A8E1370](v13);
      v15 = sub_197521FFC();
      if (swift_conformsToProtocol2())
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        sub_1973F7E64(v27, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1973FB6DC(0, *(v7 + 2) + 1, 1, v7);
        }

        v18 = *(v7 + 2);
        v17 = *(v7 + 3);
        if (v18 >= v17 >> 1)
        {
          v7 = sub_1973FB6DC((v17 > 1), v18 + 1, 1, v7);
        }

        *(v7 + 2) = v18 + 1;
        v8 = &v7[96 * v18];
        v9 = v26[1];
        *(v8 + 2) = v26[0];
        *(v8 + 3) = v9;
        v10 = v26[2];
        v11 = v26[3];
        v12 = v26[5];
        *(v8 + 6) = v26[4];
        *(v8 + 7) = v12;
        *(v8 + 4) = v10;
        *(v8 + 5) = v11;
      }

      objc_autoreleasePoolPop(v14);
      sub_1973F82A8(v27);
      v6 += 96;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1973FB844(v19);
  v22 = v21;
  v23 = sub_1975214CC();

  if (v23)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    result = 0;
  }

  *a3 = v7;
  a3[1] = v20;
  a3[2] = v22;
  a3[3] = v25;
  a3[4] = result;
  return result;
}

uint64_t sub_1973F68A4(uint64_t a1, uint64_t a2)
{
  if (swift_getAssociatedTypeWitness() == a1)
  {
    sub_1973F51F0(a1, a2, v9);
    v6 = v9[0];
    v7 = v9[2];
    v11 = v9[1];
    sub_1973F7E04(&v11, &qword_1EAF2B570, &qword_19752E998);
    v10 = v7;
    sub_1973F7E04(&v10, &qword_1EAF2B578, &qword_19752E9A0);
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x1E69E7CC0];
    v5 = (v4 + 16);
    sub_1974CB990(a1, v4, a1, a1, a2, a2);
    swift_beginAccess();
    v6 = *v5;
  }

  return v6;
}

uint64_t sub_1973F69C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1973F69F8(unint64_t a1, uint64_t a2)
{
  if (qword_1ED7C9DD8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7CE6C0;
  os_unfair_lock_lock((qword_1ED7CE6C0 + 16));
  if (qword_1ED7C95C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1ED7CE638;
  if (*(qword_1ED7CE638 + 16) && (v6 = sub_1973F7950(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6 + 8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1973F41BC(a1, a2);
    v8 = v9;
  }

  os_unfair_lock_unlock(v4 + 4);
  return v8;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t Schema.Attribute.init(_:originalName:hashModifier:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 104) = 0;
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  *(v5 + 48) = a1;
  v10 = swift_beginAccess();
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  *(v5 + 56) = MEMORY[0x1E69E7CA0] + 8;
  *(v5 + 96) = 0;
  (*(*v5 + 448))(v10);
  return v5;
}

uint64_t sub_1973F6C38(uint64_t a1)
{
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 100;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 200;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 300;
  }

  if (swift_dynamicCastMetatype())
  {
    return 700;
  }

  if (swift_dynamicCastMetatype())
  {
    return 800;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 600;
  }

  sub_19752132C();
  if (swift_dynamicCastMetatype())
  {
    return 900;
  }

  type metadata accessor for Decimal(0);
  if (swift_dynamicCastMetatype())
  {
    return 400;
  }

  if (swift_dynamicCastMetatype())
  {
    return 500;
  }

  sub_19752135C();
  if (swift_dynamicCastMetatype())
  {
    return 1100;
  }

  sub_1975212CC();
  if (swift_dynamicCastMetatype())
  {
    return 1200;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1000;
  }

  return 0;
}

uint64_t sub_1973F6E44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4[1];
  *(a6 + 24) = *a4;
  *(a6 + 40) = v6;
  result = *a5;
  v8 = *(a5 + 16);
  *(a6 + 56) = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 72) = v8;
  *(a6 + 88) = *(a5 + 32);
  return result;
}

BOOL sub_1973F6EEC(uint64_t a1)
{
  v1 = a1;
  v6 = a1;
  v2 = swift_conformsToProtocol2();
  if (v2 && v1)
  {
    v3 = v2;
    do
    {
      sub_1973F732C(v1, &v6, v1, v3);
      v1 = v6;
      v3 = swift_conformsToProtocol2();
      if (v3)
      {
        v4 = v1 == 0;
      }

      else
      {
        v4 = 1;
      }
    }

    while (!v4);
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_19752132C();
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_19752135C();
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_1975212CC();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 1;
  }

  type metadata accessor for Decimal(0);
  return swift_dynamicCastMetatype() != 0;
}

uint64_t sub_1973F710C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v16[0] = v1;
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = v2;
    do
    {
      sub_1973F732C(v1, v16, v1, v4);
      v1 = v16[0];
      v4 = swift_conformsToProtocol2();
      if (v4)
      {
        v5 = v1 == 0;
      }

      else
      {
        v5 = 1;
      }
    }

    while (!v5);
  }

  result = swift_beginAccess();
  v7 = *(v0 + 48);
  v8 = (v7 + 32);
  v9 = *(v7 + 16) + 1;
  while (--v9)
  {
    v10 = *v8;
    v8 += 40;
    if (v10 == 1)
    {
      if ((*(v0 + 120) & 0x10) == 0)
      {
        *(v0 + 120) |= 0x10u;
      }

      return result;
    }
  }

  result = sub_1973F6EEC(v1);
  if (result)
  {
    if ((*(v0 + 120) & 0x20) == 0)
    {
      *(v0 + 120) |= 0x20u;
    }
  }

  else
  {
    v15 = v1;
    v11 = swift_conformsToProtocol2();
    if (v11 && v1)
    {
      v12 = v11;
      v13 = v1;
      do
      {
        sub_1973F732C(v13, &v15, v13, v12);
        v13 = v15;
        v12 = swift_conformsToProtocol2();
        if (v12)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }
      }

      while (!v14);
    }

    sub_197520C6C();
    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*(v0 + 120) & 0x40) == 0)
      {
        *(v0 + 120) |= 0x40u;
      }
    }

    else
    {
      result = sub_1973F6C38(v1);
      if (!result)
      {
        result = swift_conformsToProtocol2();
        if (result)
        {
          if (v1)
          {
            return sub_1974FC780(v1, v1, result, v0, v1, result);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1973F732C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = swift_beginAccess();
  *a2 = AssociatedTypeWitness;
  return result;
}

uint64_t sub_1973F73DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t static Schema.Attribute.Option.transformable(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCC0, &qword_197532068);
  result = sub_1975217CC();
  *a2 = 1;
  *(a2 + 8) = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t sub_1973F74D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1973F7598(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1973F75DC(void *a1)
{
  a1[1] = sub_1973F7598(&qword_1ED7CA310, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  a1[2] = sub_1973F7598(&qword_1ED7CA328, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  result = sub_1973F7598(&qword_1ED7CA320, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  a1[3] = result;
  return result;
}

uint64_t sub_1973F7720(void *a1)
{
  a1[1] = sub_1973F7598(&qword_1ED7C9198, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
  a1[2] = sub_1973F7598(qword_1ED7C91B0, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
  result = sub_1973F7598(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
  a1[3] = result;
  return result;
}

unint64_t sub_1973F7814(uint64_t a1)
{
  sub_19752202C();
  v2 = sub_1975216AC();
  return sub_1973F7884(a1, v2);
}

unint64_t sub_1973F7884(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_19752202C();
    do
    {
      if (sub_19752173C())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1973F7958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1973F79C8(char *a1, char *a2)
{
  v3 = v2;
  v6 = *(v2 + 16);

  os_unfair_lock_lock(v6 + 4);

  swift_beginAccess();
  v7 = *(v3 + 24);
  if (*(v7 + 16) && (v8 = sub_1973F7950(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = sub_1973F8C4C(a1, a2, a1, a2);
  }

  v11 = *(v3 + 16);

  os_unfair_lock_unlock(v11 + 4);

  return v10;
}

unint64_t sub_1973F7ADC(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](a1);
  v4 = sub_197522A9C();
  return sub_1973F7B4C(a1, a2, v4);
}

unint64_t sub_1973F7B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      if (*(*(v3 + 48) + 16 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1973F7BBC(uint64_t a1, char *a2, char *a3)
{
  v4 = v3;
  sub_19752202C();
  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x19A8E0730](a1, KeyPath);

  if (v9)
  {
    return 0;
  }

  if (qword_1ED7C9850 != -1)
  {
    swift_once();
  }

  v11 = sub_1973F79C8(a2, a3);

  swift_beginAccess();
  v12 = sub_1973F9DB4(a1, *(v11 + 16));
  if (v12)
  {
    v13 = v12;
    swift_endAccess();

    v10 = *(v13 + 24);
  }

  else
  {
    swift_endAccess();

    v10 = sub_1974D5858(a1, v4, a3);
  }

  return v10;
}

void *sub_1973F7D3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = PersistentModel.persistentModelID.getter(*(a1 + a2 - 16), *(a1 + a2 - 8), &v6);
  v5 = v7;
  *a3 = v6;
  *(a3 + 8) = v5;
  return result;
}

__n128 sub_1973F7D98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1973F7DA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973F7E04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973F7EC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_19752243C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void *sub_1973F8160(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t get_enum_tag_for_layout_string_9SwiftData14SchemaProperty_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1973F831C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1973F8364(uint64_t a1)
{
  v2 = sub_197521FFC();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return sub_1973F7BBC(a1, v2, v3);
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
  v6 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v6);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

unint64_t sub_1973F84A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B208, &qword_19752D398);
    v3 = sub_19752245C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_1973F7814(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_1973F8590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_19752243C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1973F883C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1973F4028(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      sub_19747BE2C(a5, a6);
      v17 = v25;
      goto LABEL_8;
    }

    sub_1973F7EC0(v22, a4 & 1, a5, a6);
    v17 = sub_1973F4028(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_1973F89B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B208, &qword_19752D398);
  v31 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v5;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_19752202C();
      result = sub_1975216AC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1973F8C4C(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v5 + 24);
  type metadata accessor for Schema.KeyPathCache.BobTheKeyPathBuilder();
  swift_initStackObject();

  sub_1973F9FD8(a1, a2, v10);
  *(v5 + 24) = sub_1973F9B50();

  swift_beginAccess();
  v11 = *(v5 + 24);
  if (*(v11 + 16) && (v12 = sub_1973F7950(a3, a4), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    return v14;
  }

  else
  {
    swift_endAccess();
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x8000000197528B80);
    v16 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v16);

    MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197528BA0);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1973F8E18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19752245C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1973F4028(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0Tm_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1973F8F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_197404D0C(a2), (v7 & 1) != 0))
  {
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  return swift_endAccess();
}

uint64_t sub_1973F9030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B198, &qword_197531230);
  v32 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v5;
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
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v32 & 1) == 0)
      {
      }

      sub_19752202C();
      result = sub_1975216AC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t *sub_1973F92D4(unint64_t a1)
{
  v3 = *v1;
  v15 = MEMORY[0x1E69E7CC8];
  v16 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_14:
    v12 = v3;
    v13 = sub_1975220EC();
    v3 = v12;
    v4 = v13;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x19A8E0960](v5, a1);
          v6 = v7;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v10 = v15;
            v11 = v16;
            goto LABEL_16;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v6 = *(a1 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_11;
          }
        }

        v9 = MEMORY[0x19A8E1370](v7);
        sub_1974D51B0(&v16, v6, &v15);
        objc_autoreleasePoolPop(v9);

        ++v5;
        if (v8 == v4)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC8];
  v11 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v1[2] = v11;
  v1[3] = v10;
  v1[4] = a1;
  return v1;
}

uint64_t sub_1973F9454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(*(v2 + 48) + 16))
  {
    sub_1973F7950(a1, a2);
    if (v6)
    {
      return swift_endAccess();
    }
  }

  swift_endAccess();
  v46 = MEMORY[0x1E69E7CC0];
  v7 = sub_1973F68A4(a1, a2);
  swift_beginAccess();
  v8 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v8;
  v37 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_4:
  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1973FA32C((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v36 = a1;
  *&v8[8 * v11 + 32] = a1;
  v38 = v3;
  *(v3 + 16) = v8;
  swift_endAccess();
  v41 = *(v7 + 16);
  if (v41)
  {
    v12 = 0;
    v39 = v7 + 32;
    v40 = v7;
    while (1)
    {
      if (v12 >= *(v7 + 16))
      {
        __break(1u);
LABEL_72:
        v8 = sub_1973FA32C(0, *(v8 + 2) + 1, 1, v8);
        *(v3 + 16) = v8;
        goto LABEL_4;
      }

      v42 = v12;
      sub_1973F7E64(v39 + 96 * v12, v44);
      a1 = v44[0];
      v13 = v44[1];
      v14 = v44[2];

      sub_197521FFC();
      v16 = v15;
      v43[0] = v15;
      v17 = swift_conformsToProtocol2();
      v3 = v17;
      if (v17)
      {
        v18 = v16 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18;
      v20 = v16;
      if (!v18)
      {
        v21 = v17;
        v20 = v16;
        do
        {
          sub_1973F732C(v20, v43, v20, v21);
          v20 = v43[0];
          v21 = swift_conformsToProtocol2();
          if (v21)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }
        }

        while (!v22);
      }

      type metadata accessor for Schema.KeyPathCacheEntry();
      v23 = swift_allocObject();
      v23[2] = v14;
      v23[3] = a1;
      v23[4] = v13;

      v8 = &v46;
      MEMORY[0x19A8E00D0](v24);
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
      }

      sub_197521A4C();
      v25 = v46;
      v43[0] = v16;
      if ((v19 & 1) == 0)
      {
        do
        {
          sub_1973F732C(v16, v43, v16, v3);
          v16 = v43[0];
          v3 = swift_conformsToProtocol2();
          if (v3)
          {
            v26 = v16 == 0;
          }

          else
          {
            v26 = 1;
          }
        }

        while (!v26);
      }

      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        sub_19752132C();
        if (!swift_dynamicCastMetatype())
        {
          sub_19752135C();
          if (!swift_dynamicCastMetatype())
          {
            sub_1975212CC();
            if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
            {
              type metadata accessor for Decimal(0);
              if (!swift_dynamicCastMetatype())
              {
                break;
              }
            }
          }
        }
      }

      sub_1973F82A8(v44);

LABEL_51:
      v7 = v40;
      v12 = v42 + 1;
      if (v42 + 1 == v41)
      {

        goto LABEL_69;
      }
    }

    v27 = swift_conformsToProtocol2();
    if (v27 && v20)
    {
      v3 = v27;
      swift_beginAccess();
      v8 = *(v38 + 48);
      if (!*(v8 + 2) || (sub_1973F7950(v20, v3), (v28 & 1) == 0))
      {
        swift_endAccess();
        swift_beginAccess();
        v8 = *(v38 + 24);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        *(v38 + 24) = v8;
        if ((v29 & 1) == 0)
        {
          v8 = sub_1973FA228(0, *(v8 + 2) + 1, 1, v8);
          *(v38 + 24) = v8;
        }

        v31 = *(v8 + 2);
        v30 = *(v8 + 3);
        if (v31 >= v30 >> 1)
        {
          v8 = sub_1973FA228((v30 > 1), v31 + 1, 1, v8);
        }

        *(v8 + 2) = v31 + 1;
        v32 = &v8[16 * v31];
        *(v32 + 4) = v20;
        *(v32 + 5) = v3;
        *(v38 + 24) = v8;
      }

      swift_endAccess();
    }

    else
    {

      sub_1973F9D44(&v45, v43);
      if (!v43[3])
      {
        sub_1973F82A8(v44);
        sub_1973FA4B8(v43, &qword_1EAF2BB80, &qword_197531238);
        goto LABEL_51;
      }

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Attribute();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_66:
    sub_1973F82A8(v44);
    goto LABEL_51;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_69:
  type metadata accessor for Schema.ModelKeyPathCache();
  v33 = swift_allocObject();
  sub_1973F92D4(v25);
  swift_beginAccess();
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v43[0] = *(v38 + 48);
  *(v38 + 48) = 0x8000000000000000;
  sub_197413438(v33, v36, v37, v34);
  *(v38 + 48) = v43[0];
  return swift_endAccess();
}

uint64_t sub_1973F9B50()
{
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  swift_beginAccess();
  if (*(v0[6] + 16) && (sub_1973F7950(v3, v2), (v4 & 1) != 0))
  {
    swift_endAccess();

    sub_1975221EC();
    v13 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v13);

    MEMORY[0x19A8DFF80](0xD000000000000064, 0x8000000197528BF0);
    type metadata accessor for Schema.ModelKeyPathCache();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    while (1)
    {
      swift_beginAccess();
      v5 = v1[3];
      if (!*(v5 + 2))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[3] = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        v7 = *(v5 + 2);
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v5 = sub_19751C0C8(v5);
        v7 = *(v5 + 2);
        if (!v7)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v8 = v7 - 1;
      v9 = &v5[16 * v8];
      v10 = *(v9 + 4);
      v11 = *(v9 + 5);
      *(v5 + 2) = v8;
      v1[3] = v5;
      swift_endAccess();
      sub_1973F9454(v10, v11);
    }

    swift_endAccess();
  }

  return result;
}

uint64_t sub_1973F9D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB80, &qword_197531238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1973F9DB4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_1975223CC();

    if (v2)
    {
      type metadata accessor for Schema.KeyPathCacheEntry();
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1973F7814(a1);
    if (v4)
    {
    }
  }

  return 0;
}

uint64_t sub_1973F9E68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

char **sub_1973F9FD8(char *a1, char *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7CC0];
  v24 = v5;
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v8 = (v5 + 16);
  v8[1] = v7;
  v9 = MEMORY[0x1E69E7CC8];
  v8[4] = a3;
  v8[5] = v9;
  v8[2] = a1;
  v8[3] = a2;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  swift_beginAccess();
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  if (v13)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      do
      {
LABEL_8:
        v11 = *(*(a3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v8 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_1973FA32C(0, *(v7 + 2) + 1, 1, v7);
          *v8 = v7;
        }

        v4 = *(v7 + 2);
        v18 = *(v7 + 3);
        if (v4 >= v18 >> 1)
        {
          v7 = sub_1973FA32C((v18 > 1), (v4 + 1), 1, v7);
        }

        v13 &= v13 - 1;
        *(v7 + 2) = v4 + 1;
        *&v7[8 * v4 + 32] = v11;
        *v8 = v7;
      }

      while (v13);
    }
  }

  swift_endAccess();

  v11 = (v8 + 1);
  v8 = v24;
  v23 = *(v24 + 32);
  swift_beginAccess();
  v4 = *(v24 + 24);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v4;
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_19:
  v4 = sub_1973FA228(0, *(v4 + 2) + 1, 1, v4);
  *v11 = v4;
LABEL_15:
  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = sub_1973FA228((v20 > 1), v21 + 1, 1, v4);
  }

  *(v4 + 2) = v21 + 1;
  *&v4[16 * v21 + 32] = v23;
  v8[3] = v4;
  swift_endAccess();
  return v8;
}

char *sub_1973FA228(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1A8, &qword_19752D338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1973FA32C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B190, &unk_19752D320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1973FA430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1973FA4B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973FA518(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973FA578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1973FA5E0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1973FA628(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1973FA674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B360, &unk_19752D510);
  v33 = v4;
  result = sub_19752243C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1973FA938(v24, v34);
      }

      else
      {
        sub_197421420(v24, v34);
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1973FA938(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1973FA938(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1973FA950(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F7950(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19747A08C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1973FAAB4(v16, a4 & 1);
    v11 = sub_1973F7950(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    *(v22 + 32) = *(a1 + 32);
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
  }

  else
  {

    return sub_1973FAD84(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1973FAAB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B288, &qword_19752D420);
  v35 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 16 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v36 = *(v22 + 24);
      v37 = v21;
      if ((v35 & 1) == 0)
      {
      }

      sub_197522A5C();
      MEMORY[0x19A8E1190](v37);
      result = sub_197522A9C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v37;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 24) = v36;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1973FAD84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1973FADF4()
{
  result = qword_1ED7CA0D8[0];
  if (!qword_1ED7CA0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7CA0D8);
  }

  return result;
}

unint64_t sub_1973FAE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B360, &unk_19752D510);
    v3 = sub_19752245C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1974047F8(v4, &v13, &qword_1EAF2B978, &unk_19752FCB0);
      v5 = v13;
      v6 = v14;
      result = sub_1973F4028(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_197402778(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1973FAFA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19752245C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1973F4028(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t Schema.Entity.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  swift_weakInit();
  *(v2 + 176) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v5 = MEMORY[0x1E69E7CD0];
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0] >> 62;
  v8 = MEMORY[0x1E69E7CD0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1975220EC())
    {
      v8 = sub_1974F7E80(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CD0];
    }
  }

  *(v2 + 32) = v8;
  *(v2 + 64) = v6;
  *(v2 + 112) = sub_1973FAE70(v6);
  *(v2 + 72) = v6;
  *(v2 + 120) = sub_1973FAE70(v6);
  if (v7)
  {
    if (sub_1975220EC())
    {
      v9 = sub_1974F828C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CD0];
    }

    *(v2 + 80) = v9;
    *(v2 + 96) = sub_1973FAE5C(MEMORY[0x1E69E7CC0]);
    if (sub_1975220EC())
    {
      v5 = sub_1974F864C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    *(v2 + 80) = v5;
    *(v2 + 96) = sub_1973FAE5C(MEMORY[0x1E69E7CC0]);
  }

  *(v2 + 88) = v5;
  *(v2 + 104) = sub_1973FAE48(v6);
  *(v2 + 160) = v6;
  *(v2 + 168) = v6;
  return v2;
}

uint64_t sub_1973FB21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = 0;
  *(v5 + 88) = 1;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 1;
  *(v5 + 136) = 0;
  *(v5 + 144) = 1;
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  if (a5)
  {
    swift_beginAccess();
    v9 = *(a5 + 32);
    v10 = *(a5 + 40);
  }

  else
  {
    v10 = a2;
    v9 = a1;
  }

  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  swift_beginAccess();
  *(v5 + 48) = a4;
  *(v5 + 64) = a3;
  if (a5)
  {
    swift_beginAccess();
    *(v5 + 56) = *(a5 + 56);
    swift_beginAccess();
    v11 = *(a5 + 88);
    swift_beginAccess();
    *(v5 + 88) = v11;
    swift_beginAccess();
    v12 = *(a5 + 112);
    if (v12)
    {

      v14 = sub_1973F8364(v13);
      v16 = v15;
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = v14;
        swift_beginAccess();
        *(v5 + 112) = v12;

        swift_beginAccess();
        *(v5 + 96) = v18;
        *(v5 + 104) = v16;
      }

      else
      {

        if (qword_1EAF2ADA0 != -1)
        {
          swift_once();
        }

        v19 = dyld_program_sdk_at_least();

        if (v19)
        {
          swift_beginAccess();
          *(v5 + 112) = 0;

          swift_beginAccess();
          *(v5 + 96) = 0;
          *(v5 + 104) = 0;

          *(v5 + 169) = 1;
        }
      }
    }

    else
    {
      if (*(a5 + 169))
      {
        *(v5 + 169) = 1;
      }
    }

    swift_beginAccess();
    v20 = *(a5 + 120);
    v21 = *(a5 + 128);
    swift_beginAccess();
    *(v5 + 120) = v20;
    *(v5 + 128) = v21;
    swift_beginAccess();
    v22 = *(a5 + 136);
    v23 = *(a5 + 144);
    swift_beginAccess();
    *(v5 + 136) = v22;
    *(v5 + 144) = v23;
    swift_beginAccess();
    v25 = *(a5 + 152);
    v24 = *(a5 + 160);

    swift_beginAccess();
    *(v5 + 152) = v25;
    *(v5 + 160) = v24;
  }

  else
  {
    *(v5 + 56) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    *(v5 + 88) = 1;
  }

  sub_1974178DC(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
  v26 = sub_1975217CC();
  v28 = v27;

  *(v5 + 72) = v26;
  *(v5 + 80) = v28;
  v39 = a3;
  v29 = swift_conformsToProtocol2();
  if (v29 && a3)
  {
    v30 = v29;
    do
    {
      sub_1973F732C(a3, &v39, a3, v30);
      a3 = v39;
      v30 = swift_conformsToProtocol2();
      if (v30)
      {
        v31 = a3 == 0;
      }

      else
      {
        v31 = 1;
      }
    }

    while (!v31);
  }

  v39 = a3;
  v32 = swift_conformsToProtocol2();
  if (v32)
  {
    v33 = a3 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = v32;
    do
    {
      sub_1973F732C(a3, &v39, a3, v34);
      a3 = v39;
      v34 = swift_conformsToProtocol2();
      if (v34)
      {
        v35 = a3 == 0;
      }

      else
      {
        v35 = 1;
      }
    }

    while (!v35);
  }

  if (swift_conformsToProtocol2())
  {
    v36 = a3 == 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = !v36;
  *(v5 + 168) = v37;
  return v5;
}

char *sub_1973FB6DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B290, &qword_19752D428);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t Schema.Index.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1973FB844(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1973F8490(MEMORY[0x1E69E7CC0]);
  v4 = sub_1973F84A4(v2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v3;
  }

  v6 = 0;
  for (i = a1 + 32; ; i += 96)
  {
    sub_1973F7E64(i, v38);
    v9 = v38[0];
    v8 = v38[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v3;
    v11 = sub_1973F4028(v9, v8);
    v13 = v3[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v3[3] < v16)
    {
      sub_1973F8828(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1973F4028(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_31;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v19 = v11;
    sub_19747A078();
    v11 = v19;
    v3 = v36;
    if (v17)
    {
LABEL_11:
      *(v3[7] + 8 * v11) = v6;
      goto LABEL_15;
    }

LABEL_13:
    v3[(v11 >> 6) + 8] |= 1 << v11;
    v20 = (v3[6] + 16 * v11);
    *v20 = v9;
    v20[1] = v8;
    *(v3[7] + 8 * v11) = v6;
    v21 = v3[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_28;
    }

    v3[2] = v22;

LABEL_15:
    v23 = v38[2];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v4;
    v25 = sub_1973F7814(v23);
    v27 = v4[2];
    v28 = (v26 & 1) == 0;
    v15 = __OFADD__(v27, v28);
    v29 = v27 + v28;
    if (v15)
    {
      goto LABEL_27;
    }

    v30 = v26;
    if (v4[3] < v29)
    {
      sub_1973F89B0(v29, v24);
      v25 = sub_1973F7814(v23);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_30;
      }

LABEL_20:
      if (v30)
      {
        goto LABEL_3;
      }

      goto LABEL_21;
    }

    if (v24)
    {
      goto LABEL_20;
    }

    v34 = v25;
    sub_197479F1C();
    v25 = v34;
    v4 = v37;
    if (v30)
    {
LABEL_3:
      *(v4[7] + 8 * v25) = v6;
      goto LABEL_4;
    }

LABEL_21:
    v4[(v25 >> 6) + 8] |= 1 << v25;
    *(v4[6] + 8 * v25) = v23;
    *(v4[7] + 8 * v25) = v6;
    v32 = v4[2];
    v15 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v15)
    {
      goto LABEL_29;
    }

    v4[2] = v33;

LABEL_4:
    ++v6;
    sub_1973F82A8(v38);
    if (v5 == v6)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_19752202C();
  sub_1975229CC();
  __break(1u);
LABEL_31:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t sub_1973FBAFC()
{
  type metadata accessor for Schema.KeyPathCache();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v0[2] = result;
  v0[3] = v2;
  v0[4] = MEMORY[0x1E69E7CD0];
  qword_1ED7C9858 = v0;
  return result;
}

uint64_t sub_1973FBB94(uint64_t a1)
{
  v3 = *(v1 + 240);
  type metadata accessor for TemporaryPersistentIdentifierImplementation();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  v7 = v4;
  v8 = 2;
  v5 = swift_allocObject();
  sub_1973FBC40(a1, &v7);
  return v5;
}

uint64_t *sub_1973FBC40(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  v2[3] = 0;
  *(v2 + 32) = -1;
  v2[5] = 0;
  *(v2 + 48) = 0;
  v7 = *(v4 + 240);
  type metadata accessor for KnownKeysDictionary();
  v8 = swift_allocObject();
  v9 = sub_1973FCD6C(a1, v7);
  v8[2] = v9;
  v8[3] = v10;
  memset(v14, 0, sizeof(v14));
  v8[4] = sub_1973FE64C(v14, v9[2]);
  v11 = v2[3];
  v2[2] = v8;
  v2[3] = v5;
  v12 = *(v2 + 32);
  *(v2 + 32) = v6;
  sub_1974A1014(v11, v12);
  return v2;
}

void static PersistentModel.createBackingData<A>()(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  if (_SD_get_faulting_backingdata_tsd())
  {
    type metadata accessor for _NullBackingData(0, a1, a2, v6);
    v7 = sub_1974346C4();
    _SD_remove_faulting_backingdata_tsd();
  }

  else
  {
    type metadata accessor for _KKMDBackingData(0, a1, a2, v6);
    v7 = sub_1973FBB94(a1);
  }

  *a3 = v7;
}

uint64_t dispatch thunk of BackingData.setValue<A>(forKey:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 112))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 128))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 120))(a1, a2, a3, a4, a5);
}

uint64_t sub_1973FBE18(void *a1, uint64_t a2)
{
  v8 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v4 = v8;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v4);

  sub_1973FCF28(v7, a1);
}

uint64_t PersistentModel.getValue<A>(forKey:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v9, a2))
  {
    sub_1974258A4(v9, a2);
  }

  if (PersistentModel.modelContext.getter(v9, a2))
  {
    sub_1974B2F38(a1, a2);
  }

  if (swift_getAssociatedTypeWitness() == v9)
  {
    (*(a2 + 56))(&v18, v9, a2);
    v15 = v20;
    v16 = v21;
    __swift_project_boxed_opaque_existential_1Tm_2(&v18, v20);
    (*(v16 + 64))(a1, *(v7 + *v8 + 8), a3, v15, v16);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v18);
  }

  else
  {
    sub_1974C2DAC(a1, a2, &v18);
    v10 = v19;
    v11 = sub_197521FFC();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v17 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v17);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C30BC(v11, v10, v3, v9, *(v7 + *v8 + 8), v11, a2, a3, v12);
      return sub_1973F82A8(&v18);
    }
  }

  return result;
}

{
  v7 = *a1;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v9, a2))
  {
    sub_1974258A4(v9, a2);
  }

  if (PersistentModel.modelContext.getter(v9, a2))
  {
    sub_1974B3098(a1, a2);
  }

  if (swift_getAssociatedTypeWitness() == v9)
  {
    (*(a2 + 56))(&v19, v9, a2);
    v15 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1Tm_2(&v19, v21);
    v14 = (*(v16 + 80))(a1, *(*(v7 + *v8 + 8) + 16), a3, v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v19);
    return v14;
  }

  sub_1974C2DAC(a1, a2, &v19);
  v10 = v20;
  v11 = sub_197521FFC();
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = sub_1974C4DD8(v11, v10, v3, v9, *(*(v7 + *v8 + 8) + 16), v11, a2, a3, v12, 53, 0x74706F20646E6120, 0xEE00206C616E6F69, 186);
    sub_1973F82A8(&v19);
    return v14;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
  v18 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v18);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

{
  v7 = *a1;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v9, a2))
  {
    sub_1974258A4(v9, a2);
  }

  if (PersistentModel.modelContext.getter(v9, a2))
  {
    sub_1974B3098(a1, a2);
  }

  if (swift_getAssociatedTypeWitness() == v9)
  {
    (*(a2 + 56))(&v19, v9, a2);
    v15 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1Tm_2(&v19, v21);
    v14 = (*(v16 + 72))(a1, *(v7 + *v8 + 8), a3, v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v19);
    return v14;
  }

  sub_1974C2DAC(a1, a2, &v19);
  v10 = v20;
  v11 = sub_197521FFC();
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = sub_1974C47A8(v11, v10, v3, v9, *(v7 + *v8 + 8), v11, a2, a3, v12, 160);
    sub_1973F82A8(&v19);
    return v14;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
  v18 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v18);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1973FC1E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_197512E44();
  result = type metadata accessor for _ModelMetadata();
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1973FC218(void *a1)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a1;
  v7 = v2[2];
  v8 = *(v7 + 24);
  v9 = *(v8 + 16);

  v10 = MEMORY[0x1E69E77B0];
  if (!v9 || (v11 = sub_1973F7814(a1), (v12 & 1) == 0))
  {
    v36 = 0u;
    v37 = 0u;

LABEL_12:
    sub_1973FE5EC(&v36, &qword_1EAF2AF20, &unk_19752F320);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    goto LABEL_13;
  }

  v13 = *(*(v8 + 56) + 8 * v11);
  swift_beginAccess();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = *(v7 + 32);
  if (v13 >= *(v14 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_28;
  }

  sub_197413B20(v14 + 32 * v13 + 32, &v36);

  if (!*(&v37 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    goto LABEL_13;
  }

  if (!*(&v34 + 1))
  {
LABEL_13:
    sub_1973FE5EC(&v33, &qword_1EAF2C4E8, &qword_197534B58);
    goto LABEL_14;
  }

  sub_19743099C(&v33, &v36);
  v15 = v3[3];
  v16 = *(v3 + 32);
  sub_1974ADEAC(v15, *(v3 + 32));
  if (v16 != 255)
  {
    *&v33 = v3;
    WitnessTable = swift_getWitnessTable();
    v18 = *(sub_1973FE71C(v5, WitnessTable) + 16);

    if (v18)
    {
      v19 = __swift_project_boxed_opaque_existential_1Tm_5(&v36, *(&v37 + 1));
      v20 = *(v6 + *v10 + 8);
      v31 = v15;
      v32 = v16;
      *(&v34 + 1) = v20;
      v30 = v15;
      boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v33);
      sub_19742FAC8();

      sub_19742C568(v19, &v31, &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture, v20, boxed_opaque_existential_1Tm_1);

      sub_1973FCF28(&v33, a1);

      sub_1974A1014(v30, v16);

      __swift_destroy_boxed_opaque_existential_1Tm_7(&v36);
LABEL_14:
      v22 = v3[2];
      v23 = *(v22 + 24);
      v24 = *(v23 + 16);

      if (!v24 || (v25 = sub_1973F7814(a1), (v26 & 1) == 0))
      {
        v36 = 0u;
        v37 = 0u;
        goto LABEL_20;
      }

      v27 = *(*(v23 + 56) + 8 * v25);
      swift_beginAccess();
      if ((v27 & 0x8000000000000000) == 0)
      {
        v28 = *(v22 + 32);
        if (v27 < *(v28 + 16))
        {
          sub_197413B20(v28 + 32 * v27 + 32, &v36);
LABEL_20:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
          return swift_dynamicCast();
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000052, 0x800000019752B510);
    v32 = v16;
    sub_19752235C();
    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    v31 = a1;
    sub_197522B2C();
    sub_1975227FC();
  }

LABEL_28:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1973FC6F4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19752C280;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  sub_1974028EC(v7, v8);
  sub_197425CF8(inited, a2, a3);
  swift_setDeallocating();
  sub_197428E18(inited + 32);
  *&v25[0] = v7;
  BYTE8(v25[0]) = v8;
  sub_1974028EC(v7, v8);
  swift_getExtendedExistentialTypeMetadata();
  sub_197405108();
  sub_19752167C();

  sub_1974028C8(v7, v8);
  if (v24)
  {
    sub_197402778(&v23, v25);
    return sub_197402778(v25, a4);
  }

  else
  {
    if (qword_1EAF2AD00 != -1)
    {
      swift_once();
    }

    v11 = sub_19752157C();
    __swift_project_value_buffer(v11, qword_1EAF33E50);
    sub_1974028EC(v7, v8);
    v12 = sub_19752155C();
    v13 = sub_197521DDC();
    sub_1974028C8(v7, v8);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v23 = v22;
      *v14 = 136315138;
      *&v25[0] = v7;
      BYTE8(v25[0]) = v8;
      sub_1974028EC(v7, v8);
      v15 = sub_1975217CC();
      v17 = a3;
      v18 = sub_197462310(v15, v16, &v23);

      *(v14 + 4) = v18;
      a3 = v17;
      _os_log_impl(&dword_1973F2000, v12, v13, "Unable to fulfill future for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x19A8E1B50](v22, -1, -1);
      MEMORY[0x19A8E1B50](v14, -1, -1);
    }

    v20 = type metadata accessor for _InvalidFutureBackingData(0, a2, a3, v19);
    *&v25[0] = v7;
    BYTE8(v25[0]) = v8;
    sub_1974028EC(v7, v8);
    v21 = sub_197512F60(a2, v25);
    a4[3] = v20;
    result = swift_getWitnessTable();
    a4[4] = result;
    *a4 = v21;
  }

  return result;
}

unint64_t sub_1973FCC48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B438, &qword_19752D5F8);
    v3 = sub_19752245C();
    for (i = a1 + 32; ; i += 32)
    {
      sub_1974047F8(i, &v11, &qword_1EAF2B8C8, &unk_19752FB80);
      v10 = v11;
      result = sub_1973F7950(v11, *(&v11 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v10;
      result = sub_197480ED0(&v12, v3[7] + 16 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

void *sub_1973FCD6C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7C8350 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7C8358;
  os_unfair_lock_lock((qword_1ED7C8358 + 16));
  if (qword_1ED7C8360 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1ED7C8368;
  if (*(off_1ED7C8368 + 2) && (v6 = sub_1973F7950(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + 16 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v9 = sub_1973F68A4(a1, a2);
    v8 = sub_197439308(v9);
    v11 = v10;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = off_1ED7C8368;
    off_1ED7C8368 = 0x8000000000000000;
    sub_1974395F4(v8, v11, a1, a2, isUniquelyReferenced_nonNull_native);
    off_1ED7C8368 = v14;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v4 + 4);
  return v8;
}

uint64_t sub_1973FCF28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 24);
  if (!*(v4 + 16))
  {
    goto LABEL_10;
  }

  v6 = sub_1973F7814(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(*(v4 + 56) + 8 * v6);
  swift_beginAccess();
  v9 = *(v3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 32) = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = sub_19751C104(v9);
    *(v3 + 32) = v9;
    if ((v8 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v8 < v9[2])
      {
        sub_1973F7958(a1, &v9[4 * v8 + 4]);
        *(v3 + 32) = v9;
        swift_endAccess();
        return sub_1973F9E68(a1);
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197527BD0);
  sub_19752202C();
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1973FD110()
{
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = 1;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1975220EC())
  {
    v1 = sub_1974F8FFC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + 88) = v1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = sub_1973FCC48(MEMORY[0x1E69E7CC0]);
  *(v0 + 104) = sub_1974BF658(v2);
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_1973FD1A4(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1973FFD10(a1, a2);
  return v4;
}

uint64_t sub_1973FD1F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 232);
  v4 = *(v2 + 240);
  type metadata accessor for Schema.Entity();
  v85 = sub_1973FDF38(v3, v4);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  sub_1974ADEAC(v5, *(v1 + 32));
  v7 = &unk_19752C000;
  if (v6 == 255)
  {
    if (qword_1EAF2AC88 != -1)
    {
LABEL_77:
      swift_once();
    }

    v8 = sub_19752157C();
    __swift_project_value_buffer(v8, qword_1EAF33DD0);

    v9 = sub_19752155C();
    v10 = sub_197521DDC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v101[0] = v12;
      *v11 = v7[19];
      *&v97[0] = v1;

      v13 = sub_1975217CC();
      v15 = sub_197462310(v13, v14, v101);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1973F2000, v9, v10, "This backing data has no persistent identifier? %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v12);
      MEMORY[0x19A8E1B50](v12, -1, -1);
      MEMORY[0x19A8E1B50](v11, -1, -1);
    }
  }

  else
  {
    sub_1974A1014(v5, v6);
  }

  v100 = 0;
  v16 = *(sub_197512E44() + 16);

  if (v16)
  {
    v17 = *(v16 + 48);

    v84 = v17;
    v100 = v17;
  }

  else
  {
    if (qword_1EAF2AC88 != -1)
    {
      swift_once();
    }

    v18 = sub_19752157C();
    __swift_project_value_buffer(v18, qword_1EAF33DD0);
    v19 = sub_19752155C();
    v20 = sub_197521DDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1973F2000, v19, v20, "Illegal attempt to flip relationships to IDs when not bound to a context.", v21, 2u);
      MEMORY[0x19A8E1B50](v21, -1, -1);
    }

    v84 = 0;
  }

  swift_beginAccess();
  v22 = v85[11];
  if ((v22 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v22 = v101[0];
    v23 = v101[1];
    v24 = v101[2];
    v25 = v101[3];
    v26 = v101[4];
  }

  else
  {
    v27 = -1 << *(v22 + 32);
    v23 = v22 + 56;
    v28 = ~v27;
    v29 = -v27;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v26 = v30 & *(v22 + 56);

    v24 = v28;
    v25 = 0;
  }

  v31 = (v24 + 64) >> 6;
  v83 = v7[19];
  v87 = v22;
  v88 = v23;
  for (i = v31; ; v31 = i)
  {
    if (v22 < 0)
    {
      v36 = sub_19752212C();
      if (!v36 || (*&v95 = v36, type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v35 = *&v97[0], v89 = v26, v90 = v25, !*&v97[0]))
      {
LABEL_72:
        sub_1973FF47C(v22);

        *(v1 + 48) = 1;
        return result;
      }
    }

    else
    {
      v32 = v25;
      v33 = v26;
      v34 = v25;
      if (!v26)
      {
        while (1)
        {
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v34 >= v31)
          {
            goto LABEL_72;
          }

          v33 = *(v23 + 8 * v34);
          ++v32;
          if (v33)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_28:
      v89 = (v33 - 1) & v33;
      v90 = v34;
      v35 = *(*(v22 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));

      if (!v35)
      {
        goto LABEL_72;
      }
    }

    swift_beginAccess();
    v91 = v35;
    v37 = *(v35 + 48);
    if (!v37)
    {
      break;
    }

    v38 = *(v1 + 16);
    v39 = *(v38 + 24);
    v40 = *(v39 + 16);

    v92 = v37;
    if (v40 && (v41 = sub_1973F7814(v37), (v42 & 1) != 0))
    {
      v43 = *(*(v39 + 56) + 8 * v41);
      swift_beginAccess();
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      v44 = *(v38 + 32);
      if (v43 >= *(v44 + 16))
      {
        goto LABEL_76;
      }

      sub_197413B20(v44 + 32 * v43 + 32, &v95);
    }

    else
    {
      v95 = 0u;
      v96 = 0u;
    }

    v22 = v87;
    if (!*(&v96 + 1))
    {

      sub_1973FE5EC(&v95, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_22;
    }

    sub_1974028B8(&v95, v97);
    sub_197404860(v97, &v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (swift_dynamicCast())
    {
      v45 = v99;
      ObjectType = swift_getObjectType();
      PersistentModel.persistentModelID.getter(ObjectType, v45, &v95);
      v7 = v95;
      v47 = BYTE8(v95);
      *(&v96 + 1) = &type metadata for PersistentIdentifier;

      sub_1974028EC(v7, v47);
      sub_1973FCF28(&v95, v37);

      if (v47)
      {
        if (v47 == 1 && (*(v7 + 33) & 1) == 0)
        {
LABEL_59:
          __swift_destroy_boxed_opaque_existential_1Tm_7(v97);

          sub_1974028C8(v7, v47);

          swift_unknownObjectRelease();
          goto LABEL_22;
        }
      }

      else if (![v7 isTemporaryID])
      {
        goto LABEL_59;
      }

      if (v84)
      {
        if (qword_1EAF2AC88 != -1)
        {
          swift_once();
        }

        v48 = sub_19752157C();
        __swift_project_value_buffer(v48, qword_1EAF33DD0);

        sub_1974028EC(v7, v47);
        v49 = sub_19752155C();
        v50 = sub_197521DDC();
        sub_1974028C8(v7, v47);

        if (!os_log_type_enabled(v49, v50))
        {

          sub_1974028C8(v7, v47);

LABEL_70:

          swift_unknownObjectRelease();
          goto LABEL_71;
        }

        v51 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v98 = v81;
        *v51 = 136315394;
        *&v95 = v7;
        BYTE8(v95) = v47;
        sub_1974028EC(v7, v47);
        v52 = sub_1975217CC();
        v54 = sub_197462310(v52, v53, &v98);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2080;
        *&v95 = v1;

        v55 = sub_1975217CC();
        v57 = sub_197462310(v55, v56, &v98);

        *(v51 + 14) = v57;
        _os_log_impl(&dword_1973F2000, v49, v50, "Illegal attempt to flip a temporary object to a future %s: %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A8E1B50](v81, -1, -1);
        v58 = v51;
      }

      else
      {
        if (qword_1EAF2AC88 != -1)
        {
          swift_once();
        }

        v68 = sub_19752157C();
        __swift_project_value_buffer(v68, qword_1EAF33DD0);

        v69 = sub_19752155C();
        v70 = sub_197521DDC();

        if (!os_log_type_enabled(v69, v70))
        {

          sub_1974028C8(v7, v47);

          goto LABEL_70;
        }

        v71 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v95 = v82;
        *v71 = v83;
        v98 = v1;

        v72 = sub_1975217CC();
        v74 = sub_197462310(v72, v73, &v95);

        *(v71 + 4) = v74;
        v75 = v70;
        v49 = v69;
        _os_log_impl(&dword_1973F2000, v69, v75, "This backing data has retained a temporary object ID beyond the mutations to the context %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v82);
        MEMORY[0x19A8E1B50](v82, -1, -1);
        v58 = v71;
      }

      MEMORY[0x19A8E1B50](v58, -1, -1);

      swift_unknownObjectRelease();

      sub_1974028C8(v7, v47);
    }

    else
    {
      sub_197404860(v97, &v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm_7(v97);

        goto LABEL_22;
      }

      v59 = v98;
      v60 = *(v98 + 16);
      if (v60)
      {
        v94 = MEMORY[0x1E69E7CC0];
        sub_197411CB8(0, v60, 0);
        v61 = 0;
        v62 = v94;
        v93 = v59;
        while (v61 < *(v59 + 16))
        {
          v95 = *(v59 + 16 * v61 + 32);
          swift_unknownObjectRetain();
          v7 = v1;
          sub_19751516C(&v95, &v100, v1, &v98);
          swift_unknownObjectRelease();
          v63 = v98;
          v64 = v99;
          v66 = *(v94 + 16);
          v65 = *(v94 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_197411CB8((v65 > 1), v66 + 1, 1);
          }

          ++v61;
          *(v94 + 16) = v66 + 1;
          v67 = v94 + 16 * v66;
          *(v67 + 32) = v63;
          *(v67 + 40) = v64;
          v1 = v7;
          v59 = v93;
          if (v60 == v61)
          {

            v22 = v87;
            goto LABEL_66;
          }
        }

        goto LABEL_74;
      }

      v62 = MEMORY[0x1E69E7CC0];
LABEL_66:
      *(&v96 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      *&v95 = v62;

      sub_1973FCF28(&v95, v92);
    }

LABEL_71:
    __swift_destroy_boxed_opaque_existential_1Tm_7(v97);
LABEL_22:
    v26 = v89;
    v25 = v90;
    v23 = v88;
  }

  *&v97[0] = 0;
  *(&v97[0] + 1) = 0xE000000000000000;
  sub_1975221EC();
  swift_beginAccess();
  v78 = v85[2];
  v77 = v85[3];

  v98 = v78;
  v99 = v77;
  MEMORY[0x19A8DFF80](46, 0xE100000000000000);
  swift_beginAccess();
  v79 = *(v91 + 16);
  v80 = *(v91 + 24);

  MEMORY[0x19A8DFF80](v79, v80);

  MEMORY[0x19A8DFF80](0xD000000000000019, 0x800000019752B1D0);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1973FDED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1973FDF38(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7C9DD8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7CE6C0;
  os_unfair_lock_lock((qword_1ED7CE6C0 + 16));
  if (qword_1ED7C95C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1ED7CE638;
  if (*(qword_1ED7CE638 + 16) && (v6 = sub_1973F7950(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8 = sub_1973F41BC(a1, a2);
  }

  os_unfair_lock_unlock(v4 + 4);
  return v8;
}

uint64_t sub_1973FE074(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(v6, a1);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1Tm_2(v6, v7);
  v4 = sub_1973FE71C(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v6);
  return v4;
}

uint64_t sub_1973FE0E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1973FE14C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1973FE1B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1973FE21C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_3(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_5(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1973FE58C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973FE5EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973FE64C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      v4 = sub_197521A2C();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_197413B20(v3, v5);
        v5 += 32;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1973FE5EC(v3, &qword_1EAF2AF20, &unk_19752F320);
    return v4;
  }

  return result;
}

uint64_t sub_1973FE6F0(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 112);

  return v2;
}

uint64_t sub_1973FE71C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(v4, a1);
  type metadata accessor for _ModelMetadata();
  if (swift_dynamicCast())
  {
    return v3;
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2Tm_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1973FE8DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v79 = sub_1975212CC();
  MEMORY[0x1EEE9AC00](v79, v8);
  v78 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = -1 << *(v3 + 32);
  v12 = a3 & ~v11;
  v81 = v3 + 64;
  if (((*(v3 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return v12;
  }

  v80 = ~v11;
  v76 = v3;
  v77 = (v9 + 8);
  while (1)
  {
    v14 = *(v4 + 48) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (!*(v14 + 8))
    {
      if (!v6)
      {
        sub_1973FF680(0, &qword_1ED7C8630, 0x1E69E58C0);
        sub_1974028EC(a1, 0);
        sub_1974028EC(v15, 0);
        v13 = sub_197521F3C();
        sub_1974028C8(a1, 0);
        sub_1974028C8(v15, 0);
        if (v13)
        {
          return v12;
        }

        goto LABEL_74;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v22 = swift_allocObject();
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      sub_1974028EC(a1, v6);
      sub_1974028EC(v15, 0);
      v23 = [v15 persistentStore];
      if (v23 && (v24 = v23, v25 = [v23 identifier], v24, v25))
      {
        v26 = sub_1975217BC();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      *(v22 + 16) = v26;
      *(v22 + 24) = v28;
      *(v22 + 33) = [v15 isTemporaryID];
      *(v22 + 32) = 1;
      v46 = [v15 URIRepresentation];
      v47 = v78;
      sub_19752127C();

      v48 = sub_19752123C();
      v50 = v49;
      (*v77)(v47, v79);
      *(v22 + 56) = v48;
      *(v22 + 64) = v50;
      v51 = [v15 entityName];
      v52 = sub_1975217BC();
      v54 = v53;

      *(v22 + 72) = v52;
      *(v22 + 80) = v54;
      v36 = v6;
      goto LABEL_45;
    }

    if (v16 == 1)
    {
      if (v6 == 1)
      {
        v17 = v15[7] == a1[7] && v15[8] == a1[8];
        if (v17 || (sub_19752282C() & 1) != 0)
        {
          v18 = v15[9] == a1[9] && v15[10] == a1[10];
          if (v18 || (sub_19752282C() & 1) != 0)
          {
            v19 = v15[3];
            v20 = a1[3];
            if (v19)
            {
              if (v20)
              {
                v21 = v15[2] == a1[2] && v19 == v20;
                if (v21 || (sub_19752282C() & 1) != 0)
                {
                  return v12;
                }
              }
            }

            else if (!v20)
            {
              return v12;
            }
          }
        }

        goto LABEL_74;
      }

      sub_1974028EC(v15, 1);
      sub_1974028EC(a1, v6);
      sub_1974028EC(v15, 1);
      v22 = v15;
      v36 = v6;
      if (!v6)
      {
        goto LABEL_38;
      }

LABEL_45:
      if (v36 == 1)
      {
        sub_1974028EC(a1, 1);
        v37 = a1;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v37 = swift_allocObject();
        v37[5] = 0;
        v37[6] = 0;
        v37[7] = sub_19750A470();
        v37[8] = v55;
        v37[9] = sub_19750A588();
        v37[10] = v56;
        v37[2] = 0;
        v37[3] = 0;
        *(v37 + 16) = 256;
      }

      goto LABEL_50;
    }

    if (v6 != 2)
    {
      break;
    }

    sub_1974028EC(a1, 2);
    sub_1974028EC(v15, 2);
    v29 = sub_19750A470();
    v31 = v30;
    if (v29 == sub_19750A470() && v31 == v32)
    {
    }

    else
    {
      v34 = sub_19752282C();

      if ((v34 & 1) == 0)
      {
        v35 = 2;
        LOBYTE(v16) = 2;
LABEL_65:
        sub_1974028C8(a1, v35);
        sub_1974028C8(v15, v16);
        goto LABEL_74;
      }
    }

    v69 = sub_19750A588();
    v71 = v70;
    if (v69 == sub_19750A588() && v71 == v72)
    {

      v6 = 2;
      LOBYTE(v16) = 2;
      goto LABEL_79;
    }

    v74 = sub_19752282C();

    sub_1974028C8(a1, 2);
    sub_1974028C8(v15, 2);
    if (v74)
    {
      return v12;
    }

LABEL_74:
    v12 = (v12 + 1) & v80;
    if (((*(v81 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return v12;
    }
  }

  type metadata accessor for PersistentIdentifierImplementation();
  v22 = swift_allocObject();
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  sub_1974028EC(a1, v6);
  sub_1974028EC(v15, 2);
  *(v22 + 56) = sub_19750A470();
  *(v22 + 64) = v44;
  *(v22 + 72) = sub_19750A588();
  *(v22 + 80) = v45;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 256;
  v36 = v6;
  if (v6)
  {
    goto LABEL_45;
  }

LABEL_38:
  type metadata accessor for PersistentIdentifierImplementation();
  v37 = swift_allocObject();
  v37[5] = 0;
  v37[6] = 0;
  v38 = [a1 persistentStore];
  if (v38 && (v39 = v38, v40 = [v38 identifier], v39, v40))
  {
    v41 = sub_1975217BC();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v37[2] = v41;
  v37[3] = v43;
  *(v37 + 33) = [a1 isTemporaryID];
  *(v37 + 32) = 1;
  v57 = [a1 URIRepresentation];
  v58 = v78;
  sub_19752127C();

  v59 = sub_19752123C();
  v61 = v60;
  (*v77)(v58, v79);
  v37[7] = v59;
  v37[8] = v61;
  v62 = [a1 entityName];
  v63 = sub_1975217BC();
  v65 = v64;

  v37[9] = v63;
  v37[10] = v65;
  v4 = v76;
LABEL_50:
  if ((*(v22 + 56) != v37[7] || *(v22 + 64) != v37[8]) && (sub_19752282C() & 1) == 0 || (*(v22 + 72) != v37[9] || *(v22 + 80) != v37[10]) && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_62;
  }

  v66 = *(v22 + 24);
  v67 = v37[3];
  if (!v66)
  {

    if (!v67)
    {
      goto LABEL_78;
    }

    goto LABEL_64;
  }

  if (!v67)
  {
LABEL_62:

LABEL_64:

    v35 = v6;
    goto LABEL_65;
  }

  if (*(v22 + 16) != v37[2] || v66 != v67)
  {
    v68 = sub_19752282C();

    sub_1974028C8(a1, v6);
    sub_1974028C8(v15, v16);
    if (v68)
    {
      return v12;
    }

    goto LABEL_74;
  }

LABEL_78:

LABEL_79:
  sub_1974028C8(a1, v6);
  sub_1974028C8(v15, v16);
  return v12;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1973FF110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1E0, &qword_19752D370);
  v33 = v4;
  result = sub_19752243C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 48 * v20);
      if (v33)
      {
        sub_1974028A0(v24, v34);
      }

      else
      {
        sub_1973FDED4(v24, v34);
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1974028A0(v34, (*(v7 + 56) + 48 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1973FF3D4()
{
  result = qword_1ED7C77D0;
  if (!qword_1ED7C77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77D0);
  }

  return result;
}

unint64_t sub_1973FF428()
{
  result = qword_1ED7C77D8;
  if (!qword_1ED7C77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77D8);
  }

  return result;
}

_OWORD *sub_1973FF48C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1974028B8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1973FF4F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 32);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:
  sub_197404860(a1, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1973FF710(v19, a3, a4, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 32);
  *(v5 + 32) = 0x8000000000000000;
  sub_1973FF658(v14, v9, v10, v16);
  sub_1974028C8(v9, v10);
  *(v5 + 32) = v18;
  return swift_endAccess();
}

uint64_t sub_1973FF680(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1973FF6C8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_1973FF710(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F4028(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_197422CFC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1973FF860(v16, a4 & 1);
    v11 = sub_1973F4028(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v22);

    return sub_1974028B8(a1, v22);
  }

  else
  {
    sub_1973FF48C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1973FF860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B240, &qword_19752D3D0);
  v33 = v4;
  result = sub_19752243C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1974028B8(v24, v34);
      }

      else
      {
        sub_197404860(v24, v34);
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1974028B8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1973FFB18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B240, &qword_19752D3D0);
    v3 = sub_19752245C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1974047F8(v4, &v13, &qword_1EAF2B998, &qword_19752FD30);
      v5 = v13;
      v6 = v14;
      result = sub_1973F4028(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1974028B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1973FFC48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1973FFCAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1973FFD10(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = -1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v7 = *(v6 + 240);
  type metadata accessor for KnownKeysDictionary();
  v8 = swift_allocObject();
  v9 = sub_1973FCD6C(a1, v7);
  v8[2] = v9;
  v8[3] = v10;
  v86 = 0u;
  v87 = 0u;
  v8[4] = sub_1973FE64C(&v86, v9[2]);
  *(v3 + 16) = v8;
  v12 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm_5(a2, v12);
  (*(*(v11 + 8) + 24))(&v86, v12);
  v13 = BYTE8(v86);
  v14 = *(v3 + 24);
  *(v3 + 24) = v86;
  v15 = *(v3 + 32);
  v83 = v3;
  *(v3 + 32) = v13;
  sub_1974A1014(v14, v15);
  type metadata accessor for Schema.Entity();
  v16 = sub_1973FDF38(a1, v7);
  swift_beginAccess();
  v81 = v16;
  v17 = *(v16 + 80);
  if ((v17 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_19751E7F8(&qword_1ED7CA320, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
    sub_197521C1C();
    v17 = v92;
    v18 = v93;
    v19 = v94;
    v20 = v95;
    v21 = v96;
  }

  else
  {
    v22 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(v17 + 56);

    v20 = 0;
  }

  v25 = (v19 + 64) >> 6;
  v82 = a2;
  while (v17 < 0)
  {
    v30 = sub_19752212C();
    if (!v30)
    {
      goto LABEL_31;
    }

    *&v97 = v30;
    type metadata accessor for Schema.Attribute();
    swift_dynamicCast();
    v29 = v86;
    v28 = v20;
    v3 = v21;
    if (!v86)
    {
      goto LABEL_31;
    }

LABEL_17:
    v31 = *__swift_project_boxed_opaque_existential_1Tm_5(a2, a2[3]);
    swift_beginAccess();
    if (!*(v31 + 16) || (v84 = v3, v33 = *(v29 + 16), v32 = *(v29 + 24), , v34 = sub_1973F4028(v33, v32), v36 = v35, v3 = v84, , (v36 & 1) == 0))
    {

      v90 = 0u;
      v91 = 0u;
      goto LABEL_27;
    }

    sub_1973FDED4(*(v31 + 56) + 48 * v34, &v86);
    v37 = *(&v87 + 1);
    v38 = __swift_project_boxed_opaque_existential_1Tm_5(&v86, *(&v87 + 1));
    *(&v91 + 1) = v37;
    boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v90);
    (*(*(v37 - 8) + 16))(boxed_opaque_existential_1Tm_1, v38, v37);
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v86);
    if (*(&v91 + 1))
    {
      sub_1974028B8(&v90, &v97);
      v40 = *(v83 + 16);
      v20 = *(v29 + 16);
      v3 = *(v29 + 24);
      sub_197404860(&v97, &v86);
      v41 = *(v40 + 16);
      v42 = *(v41 + 16);

      if (!v42)
      {
        goto LABEL_67;
      }

      v43 = sub_1973F4028(v20, v3);
      if ((v44 & 1) == 0)
      {
        goto LABEL_67;
      }

      v45 = v43;

      v3 = *(*(v41 + 56) + 8 * v45);
      swift_beginAccess();
      v46 = *(v40 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v40 + 32) = v46;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v82;
        if (v3 < 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v46 = sub_19751C104(v46);
        *(v40 + 32) = v46;
        a2 = v82;
        if (v3 < 0)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (v3 >= v46[2])
      {
        goto LABEL_65;
      }

      sub_1973F7958(&v86, &v46[4 * v3 + 4]);
      *(v40 + 32) = v46;
      swift_endAccess();

      sub_1973FE5EC(&v86, &qword_1EAF2AF20, &unk_19752F320);
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v97);

      v20 = v28;
      v21 = v84;
    }

    else
    {

LABEL_27:
      sub_1973FE5EC(&v90, &qword_1EAF2AF20, &unk_19752F320);
      v20 = v28;
      v21 = v3;
    }
  }

  v26 = v20;
  v27 = v21;
  v28 = v20;
  if (v21)
  {
LABEL_13:
    v3 = (v27 - 1) & v27;
    v29 = *(*(v17 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

    if (!v29)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v28 >= v25)
    {
      break;
    }

    v27 = *(v18 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_13;
    }
  }

LABEL_31:
  sub_1973FF47C(v17);
  swift_beginAccess();
  v48 = *(v81 + 88);
  if ((v48 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v49 = *(&v97 + 1);
    v48 = v97;
    v50 = v98;
    v51 = v99;
    v52 = v100;
  }

  else
  {
    v53 = -1 << *(v48 + 32);
    v49 = v48 + 56;
    v50 = ~v53;
    v54 = -v53;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v52 = v55 & *(v48 + 56);

    v51 = 0;
  }

  v56 = (v50 + 64) >> 6;
  while (2)
  {
    if (v48 < 0)
    {
      v61 = sub_19752212C();
      if (!v61)
      {
        goto LABEL_62;
      }

      *&v90 = v61;
      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      v60 = v86;
      v3 = v51;
      v59 = v52;
      if (!v86)
      {
        goto LABEL_62;
      }

LABEL_50:
      v85 = v59;
      v62 = *__swift_project_boxed_opaque_existential_1Tm_5(a2, a2[3]);
      swift_beginAccess();
      if (*(v62 + 16) && (v63 = *(v60 + 16), v64 = *(v60 + 24), , v65 = sub_1973F4028(v63, v64), v20 = v66, , (v20 & 1) != 0))
      {
        sub_1973FDED4(*(v62 + 56) + 48 * v65, &v86);
        v67 = *(&v87 + 1);
        v68 = __swift_project_boxed_opaque_existential_1Tm_5(&v86, *(&v87 + 1));
        *(&v89 + 1) = v67;
        v69 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v88);
        (*(*(v67 - 8) + 16))(v69, v68, v67);
        __swift_destroy_boxed_opaque_existential_1Tm_7(&v86);
        if (*(&v89 + 1))
        {
          sub_1974028B8(&v88, &v90);
          v70 = *(v83 + 16);
          v20 = *(v60 + 16);
          v71 = *(v60 + 24);
          sub_197404860(&v90, &v86);
          v72 = *(v70 + 16);
          v73 = *(v72 + 16);

          if (!v73 || (v74 = sub_1973F4028(v20, v71), (v75 & 1) == 0))
          {
            *&v88 = 0;
            *(&v88 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v88 = 0xD000000000000029;
            *(&v88 + 1) = 0x8000000197527BD0;
            MEMORY[0x19A8DFF80](v20, v71);
            goto LABEL_69;
          }

          v76 = v74;

          v77 = *(*(v72 + 56) + 8 * v76);
          swift_beginAccess();
          v78 = *(v70 + 32);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          *(v70 + 32) = v78;
          if (v79)
          {
            a2 = v82;
            if ((v77 & 0x8000000000000000) != 0)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v78 = sub_19751C104(v78);
            *(v70 + 32) = v78;
            a2 = v82;
            if ((v77 & 0x8000000000000000) != 0)
            {
LABEL_61:
              __break(1u);
LABEL_62:

              sub_1973FF47C(v48);
              __swift_destroy_boxed_opaque_existential_1Tm_7(a2);
              return v83;
            }
          }

          if (v77 >= v78[2])
          {
            goto LABEL_66;
          }

          sub_1973F7958(&v86, &v78[4 * v77 + 4]);
          *(v70 + 32) = v78;
          swift_endAccess();

          sub_1973FE5EC(&v86, &qword_1EAF2AF20, &unk_19752F320);
          __swift_destroy_boxed_opaque_existential_1Tm_7(&v90);

          goto LABEL_40;
        }
      }

      else
      {

        v88 = 0u;
        v89 = 0u;
      }

      sub_1973FE5EC(&v88, &qword_1EAF2AF20, &unk_19752F320);
LABEL_40:
      v51 = v3;
      v52 = v85;
      continue;
    }

    break;
  }

  v57 = v51;
  v58 = v52;
  v3 = v51;
  if (v52)
  {
LABEL_46:
    v59 = (v58 - 1) & v58;
    v60 = *(*(v48 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v58)))));

    if (!v60)
    {
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  while (1)
  {
    v3 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v3 >= v56)
    {
      goto LABEL_62;
    }

    v58 = *(v49 + 8 * v3);
    ++v57;
    if (v58)
    {
      goto LABEL_46;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  *&v90 = 0;
  *(&v90 + 1) = 0xE000000000000000;
  sub_1975221EC();

  *&v90 = 0xD000000000000029;
  *(&v90 + 1) = 0x8000000197527BD0;
  MEMORY[0x19A8DFF80](v20, v3);
LABEL_69:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974006D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  sub_1973FFC48(a2, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B940, &qword_19752FC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8F0, &qword_19752FBD0);
  if (swift_dynamicCast())
  {
    v16 = v8;
    sub_197402778(v22, v27);
    if (swift_getAssociatedTypeWitness() == a5)
    {
      v18 = type metadata accessor for _KKMDBackingData(0, a5, a7, v17);
      sub_1973FFC48(v27, &v24);
      v19 = sub_1973FD1A4(a1, &v24);
      *(sub_197512E44() + 16) = v16;

      *(*(v19 + 40) + 80) = 0;
      sub_197430254(1);
    }

    else
    {
      v18 = type metadata accessor for _StitchedBackingData(0, a5, a7, v17);
      sub_1973FFC48(v27, &v24);
      v19 = sub_197512EB8(a1, &v24);
      *(*(v19 + 24) + 16) = v16;

      *(*(v19 + 24) + 80) = 0;
      sub_197512F08(1);
    }

    v25 = v18;
    WitnessTable = swift_getWitnessTable();
    *&v24 = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    return sub_197402778(&v24, a8);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_1974050A8(v22, &qword_1EAF2B8F8, &qword_19752FBD8);
    return sub_1974B1EEC(a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_197400928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_19752243C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_197400BC8(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_197403C30(a1, a2);
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
    sub_19747A77C();
    v8 = v11;
  }

  sub_1974028C8(*(*(v8 + 48) + 16 * v6), *(*(v8 + 48) + 16 * v6 + 8));
  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1974250D0(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_197400CA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  v7 = v6;
  v11 = a3;
  v14 = *v6;
  v15 = sub_197403C30(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_19747A790();
      v15 = v23;
      goto LABEL_8;
    }

    sub_197400E28(v20, a6 & 1);
    v15 = sub_197403C30(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_1975229CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    v28 = *(v26 + 16);
    *(v26 + 16) = v11;

    sub_1974028C8(v27, v28);
  }

  else
  {
    sub_1974120E4(v15, a4, a5, a1, a2, v11, v25);

    sub_1974028EC(a4, a5);
  }
}

uint64_t sub_197400E28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1D8, &qword_19752D368);
  v38 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
    v37 = v5;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 16 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v5 + 56) + 24 * v22;
      v27 = *v26;
      v40 = *(v26 + 8);
      v39 = *(v26 + 16);
      if ((v38 & 1) == 0)
      {
        sub_1974028EC(v24, v25);

        sub_1974028EC(v40, v39);
      }

      sub_197522A5C();
      if (v25)
      {
        if (v25 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_19752180C();
          sub_19752180C();
          if (v24[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v5 = v37;
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v27;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 16 * v15;
      *v17 = v24;
      *(v17 + 8) = v25;
      v18 = *(v7 + 56) + 24 * v15;
      *v18 = v16;
      *(v18 + 8) = v40;
      *(v18 + 16) = v39;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_42;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_42:
  *v3 = v7;
  return result;
}

id sub_197401268@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t sub_197401280(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1973F4028(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      sub_197438F7C(a5, a6);
      v17 = v25;
      goto LABEL_8;
    }

    sub_197400928(v22, a4 & 1, a5, a6);
    v17 = sub_1973F4028(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

unint64_t sub_197401438(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_197401480(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a7 + 24))(v74, a5, a7);
  v14 = v74[0];
  v15 = LOBYTE(v74[1]);
  v72 = v8;
  v68 = a4;
  if (LOBYTE(v74[1]))
  {
    if (LOBYTE(v74[1]) == 1)
    {
      v17 = *(v74[0] + 9);
      v16 = *(v74[0] + 10);
    }

    else
    {
      v17 = sub_19750A588();
      v16 = v20;
    }
  }

  else
  {
    v18 = [v74[0] entityName];
    v17 = sub_1975217BC();
    v16 = v19;
  }

  v21 = a6;
  v23 = v17 == sub_1973F7AAC(a6) && v16 == v22;
  v67 = a2;
  if (v23)
  {

    v25 = a2;
    v26 = a8;
    goto LABEL_27;
  }

  v24 = sub_19752282C();

  v25 = a2;
  v26 = a8;
  if (v24)
  {
    goto LABEL_27;
  }

  if (*(v72 + 16))
  {
    v27 = *(v72 + 16);
    v28 = v67;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v28 = v67;
    if (!Strong)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v27 = Strong;
  }

  v30 = *(v27 + 16);

  v31 = *(v30 + 72);

  if (v15)
  {
    if (v15 == 1)
    {
      v32 = v14[9];
      v33 = v14[10];
    }

    else
    {
      v32 = sub_19750A588();
      v33 = v36;
    }
  }

  else
  {
    v34 = [v14 entityName];
    v32 = sub_1975217BC();
    v33 = v35;
  }

  if (!*(v31 + 16))
  {

LABEL_44:
    v21 = 0xD00000000000001ELL;

    v74[0] = 0;
    v74[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000011, 0x80000001975271B0);
    if (v15)
    {
      if (v15 == 1)
      {
        v15 = v14[9];
        v14 = v14[10];
      }

      else
      {
        v15 = sub_19750A588();
        v14 = v57;
      }
    }

    else
    {
      v55 = [v14 entityName];
      v15 = sub_1975217BC();
      v14 = v56;
    }

    MEMORY[0x19A8DFF80](v15, v14);

    MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975271D0);
    if (*(v72 + 16))
    {
      v65 = *(v72 + 16);
    }

    else
    {
      v58 = swift_weakLoadStrong();
      if (!v58)
      {
        __break(1u);
        goto LABEL_52;
      }

      v65 = v58;
    }

    v66 = *(v65 + 16);

    v77 = v66;
    type metadata accessor for Schema();
    sub_19752235C();

    goto LABEL_62;
  }

  v37 = sub_1973F4028(v32, v33);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
    goto LABEL_44;
  }

  v40 = *(*(v31 + 56) + 8 * v37);

  type metadata accessor for Schema.Entity();
  v41 = sub_1973FDF38(v28, a8);
  if (_s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0(v41, v40))
  {
LABEL_53:

    goto LABEL_54;
  }

  sub_1974A9950(v41, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_54:
    v74[0] = 0;
    v74[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000060, 0x80000001975271F0);
    v77 = v14;
    v78 = v15;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197527260);
    v59 = sub_1973F7AAC(v21);
    MEMORY[0x19A8DFF80](v59);

    MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197527290);
    if (v15)
    {
      v60 = 7104878;
      if (v15 == 1 && (v61 = v14[3]) != 0)
      {
        v60 = v14[2];
      }

      else
      {
        v61 = 0xE300000000000000;
      }
    }

    else
    {
      v62 = [v14 storeIdentifier];
      v60 = sub_1975217BC();
      v61 = v63;
    }

    MEMORY[0x19A8DFF80](v60, v61);

    MEMORY[0x19A8DFF80](2606, 0xE200000000000000);
    sub_1975227FC();
    goto LABEL_62;
  }

  v25 = v40[18];
  if (!v25)
  {
    v74[0] = 0;
    v74[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000034, 0x80000001975272E0);
    v77 = v40;
    sub_19752235C();
    goto LABEL_62;
  }

  v26 = v40[19];

LABEL_27:
  v44 = v21;
  if ((a3 & 1) == 0)
  {
    goto LABEL_41;
  }

  v45 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v46 = *(v72 + v45);
  v47 = *(v46 + 16);
  if (!v47)
  {
    goto LABEL_33;
  }

  v48 = sub_197403C30(v14, v15);
  if ((v49 & 1) == 0)
  {

    LOBYTE(v47) = 0;
LABEL_33:
    *v74 = xmmword_19752EA60;
    v75 = 0;
    v76 = 0;
    goto LABEL_34;
  }

  sub_19742FE50(*(v46 + 56) + 32 * v48, v74);

  LOBYTE(v47) = v74[1] != 1;
  if (!v74[0])
  {
LABEL_34:
    if (v47)
    {
      goto LABEL_36;
    }

    sub_1974050A8(v74, &qword_1EAF2B640, &unk_19752F160);
LABEL_41:
    v53 = sub_197401E50(v25, v72, v14, v15, a1, v68, a5, v44, v25, a7, a8, v26);
    sub_1974028C8(v14, v15);
    return v53;
  }

LABEL_36:
  v50 = swift_unknownObjectWeakLoadStrong();
  v51 = v74[1];
  sub_1974050A8(v74, &qword_1EAF2B640, &unk_19752F160);
  if (!v50)
  {
    goto LABEL_41;
  }

  ObjectType = swift_getObjectType();
  if (!PersistentModel.hasChanges.getter(ObjectType, v51))
  {
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v74[0] = v50;
  v74[1] = v51;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  if (!swift_dynamicCast())
  {
    while (1)
    {
      v74[0] = 0;
      v74[1] = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x8000000197527320);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      sub_19752235C();
      MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
      v64 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v64);

      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
LABEL_62:
      sub_1975223EC();
      __break(1u);
    }
  }

  swift_unknownObjectRelease();
  sub_1974028C8(v14, v15);
  return v73;
}

uint64_t DataStoreFetchResult.init(descriptor:fetchedSnapshots:relatedSnapshots:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  Descriptor = type metadata accessor for FetchDescriptor(0, a4, a6, a4);
  (*(*(Descriptor - 8) + 32))(a8, a1, Descriptor);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  result = type metadata accessor for DataStoreFetchResult(0, v18);
  *(a8 + *(result + 52)) = a2;
  *(a8 + *(result + 56)) = a3;
  return result;
}

void *sub_197401E50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a6;
  v47 = a5;
  *&v48 = a1;
  v17 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v21 = *(a2 + v20);
  v22 = *(v21 + 16);
  v44 = a3;
  if (!v22)
  {
    goto LABEL_5;
  }

  v23 = sub_197403C30(a3, a4);
  if ((v24 & 1) == 0)
  {

    LOBYTE(v22) = 0;
LABEL_5:
    v25 = 0;
    v59 = xmmword_19752EA60;
    v60 = 0;
    v61 = 0;
    goto LABEL_6;
  }

  sub_19742FE50(*(v21 + 56) + 32 * v23, &v59);

  v25 = v59 != 0;
  LOBYTE(v22) = *(&v59 + 1) != 1;
LABEL_6:
  v45 = a4;
  if (v25 || (v22 & 1) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = *(&v59 + 1);
    sub_1974050A8(&v59, &qword_1EAF2B640, &unk_19752F160);
    if (!Strong)
    {
      goto LABEL_14;
    }

    *&v59 = Strong;
    *(&v59 + 1) = v27;
    v42 = v27;
    v43 = Strong;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (!swift_dynamicCast())
    {
      *&v59 = 0;
      *(&v59 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197527390);
      v56 = v43;
      v57 = v42;
      sub_19752235C();
      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      v56 = v44;
      LOBYTE(v57) = v45;
      sub_19752235C();
      MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
      v41 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v41);

      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      goto LABEL_23;
    }

    v28 = v56;
    sub_197434244(a8, a9, a11, a12, &v59);
    sub_1973FFC48(&v59, &v53);
    v49 = a9;
    swift_getExtendedExistentialTypeMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8E0, &qword_19752FBC0);
    if (swift_dynamicCast())
    {
      sub_197402778(&v50, &v56);
      (*(v17 + 16))(v19, v47, a7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8F0, &qword_19752FBD0);
      if (swift_dynamicCast())
      {
        sub_197402778(&v50, &v53);
        v29 = v58;
        __swift_project_boxed_opaque_existential_1(&v56, v58);
        (*(*(&v29 + 1) + 16))(&v53, v29, *(&v29 + 1));
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(&v53);
        v30 = &v59;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        __swift_destroy_boxed_opaque_existential_0Tm(&v56);
        return v28;
      }

      v52 = 0;
      v51 = 0u;
      v50 = 0u;
      sub_1974050A8(&v50, &qword_1EAF2B8F8, &qword_19752FBD8);
      __swift_destroy_boxed_opaque_existential_0Tm(&v56);
    }

    else
    {
      v52 = 0;
      v51 = 0u;
      v50 = 0u;
      sub_1974050A8(&v50, &qword_1EAF2B8E8, &qword_19752FBC8);
    }

    *&v55 = a7;
    *(&v55 + 1) = a10;
    boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(&v53);
    (*(v17 + 16))(boxed_opaque_existential_1Tm_0, v47, a7);
    sub_1974006D8(v48, &v53, v46, a7, a9, a10, a12, &v56);
    v34 = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(&v53);
    ObjectType = swift_getObjectType();
    v48 = v58;
    v36 = v58;
    v37 = __swift_project_boxed_opaque_existential_1(&v56, v58);
    v55 = v48;
    v38 = __swift_allocate_boxed_opaque_existential_1Tm_0(&v53);
    (*(*(v36 - 8) + 16))(v38, v37, v36);
    sub_1974C2050(&v53, ObjectType, v34);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(&v59);
    v30 = &v53;
    goto LABEL_19;
  }

  sub_1974050A8(&v59, &qword_1EAF2B640, &unk_19752F160);
LABEL_14:
  *&v58 = a7;
  *(&v58 + 1) = a10;
  v31 = __swift_allocate_boxed_opaque_existential_1Tm_0(&v56);
  (*(v17 + 16))(v31, v47, a7);
  sub_1974006D8(v48, &v56, v46, a7, a9, a10, a12, &v59);
  __swift_destroy_boxed_opaque_existential_0Tm(&v56);
  _SD_set_faulting_backingdata_tsd(1);
  sub_1973FFC48(&v59, &v56);
  v32 = (*(a12 + 48))(&v56, a9, a12);
  sub_19743371C(v32, a9, a12);
  v56 = v32;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v59);
    swift_unknownObjectRelease();
    return v53;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197527390);
  v53 = v32;
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
  v53 = v44;
  v54 = v45;
  sub_19752235C();
  MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
  v40 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v40);

  MEMORY[0x19A8DFF80](46, 0xE100000000000000);
LABEL_23:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197402778(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_197402790()
{
  sub_197411E30();

  return swift_deallocClassInstance();
}

uint64_t sub_1974027D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19752139C();
  v6 = sub_197521F5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

_OWORD *sub_1974028A0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

_OWORD *sub_1974028B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1974028C8(id a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_1974028EC(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_197402910@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v169 = a2;
  v153 = a4;
  v164 = a1;
  v7 = [a1 entity];
  v8 = [v7 name];

  if (v8)
  {
    v9 = sub_1975217BC();
    v11 = v10;

    v12 = *(*(v5 + 32) + 72);
    if (*(v12 + 16))
    {

      v13 = sub_1973F4028(v9, v11);
      v15 = v14;

      if (v15)
      {
        v16 = *(*(v12 + 56) + 8 * v13);

        v162 = [v164 objectID];
        v182[0] = MEMORY[0x1E69E7CC8];
        swift_beginAccess();
        v17 = *(v16 + 80);
        v172 = a3;
        if ((v17 & 0xC000000000000001) != 0)
        {

          sub_1975220AC();
          type metadata accessor for Schema.Attribute();
          sub_197413CBC(&qword_1ED7CA320, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
          sub_197521C1C();
          v17 = v182[1];
          v18 = v182[2];
          v19 = v182[3];
          v20 = v182[4];
          v21 = v182[5];
        }

        else
        {
          v22 = -1 << *(v17 + 32);
          v18 = v17 + 56;
          v19 = ~v22;
          v23 = -v22;
          if (v23 < 64)
          {
            v24 = ~(-1 << v23);
          }

          else
          {
            v24 = -1;
          }

          v21 = v24 & *(v17 + 56);

          v20 = 0;
        }

        v154 = v16;
        v163 = 0;
        v173 = v19;
        v25 = (v19 + 64) >> 6;
        if (v17 < 0)
        {
          goto LABEL_17;
        }

        while (1)
        {
          v26 = v20;
          v27 = v21;
          v28 = v20;
          if (!v21)
          {
            while (1)
            {
              v28 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v28 >= v25)
              {
                goto LABEL_21;
              }

              v27 = *(v18 + 8 * v28);
              ++v26;
              if (v27)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            sub_1975229CC();
            __break(1u);
LABEL_110:
            *&v177 = 0;
            *(&v177 + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000053, 0x8000000197523E30);
            MEMORY[0x19A8DFF80](v15, v16);
            MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
            v144 = [v164 description];
            v145 = sub_1975217BC();
            v147 = v146;

            MEMORY[0x19A8DFF80](v145, v147);

            goto LABEL_113;
          }

LABEL_15:
          v15 = (v27 - 1) & v27;
          v29 = *(*(v17 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

          if (!v29)
          {
            break;
          }

          while (1)
          {
            v16 = MEMORY[0x19A8E1370](v30);
            sub_197465CE4(v29, v164, v182, v172, v162, 0);
            objc_autoreleasePoolPop(v16);

            v20 = v28;
            v21 = v15;
            if ((v17 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_17:
            v31 = sub_19752212C();
            if (v31)
            {
              *&v174 = v31;
              type metadata accessor for Schema.Attribute();
              v30 = swift_dynamicCast();
              v29 = v177;
              v28 = v20;
              v15 = v21;
              if (v177)
              {
                continue;
              }
            }

            goto LABEL_21;
          }
        }

LABEL_21:
        sub_1973FF47C(v17);
        swift_beginAccess();
        v32 = *(v154 + 88);
        v33 = v172;
        if ((v32 & 0xC000000000000001) != 0)
        {

          sub_1975220AC();
          type metadata accessor for Schema.Relationship();
          sub_197413CBC(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
          sub_197521C1C();
          v32 = v182[6];
          v34 = v182[7];
          v35 = v182[8];
          v36 = v182[9];
          v37 = v182[10];
        }

        else
        {
          v38 = -1 << *(v32 + 32);
          v34 = v32 + 56;
          v35 = ~v38;
          v39 = -v38;
          if (v39 < 64)
          {
            v40 = ~(-1 << v39);
          }

          else
          {
            v40 = -1;
          }

          v37 = v40 & *(v32 + 56);

          v36 = 0;
        }

        v152 = v35;
        v41 = (v35 + 64) >> 6;
        v156 = v34;
        v157 = v41;
        v155 = v32;
        while (2)
        {
          if (v32 < 0)
          {
            v47 = sub_19752212C();
            if (!v47 || (*&v174 = v47, type metadata accessor for Schema.Relationship(), v46 = swift_dynamicCast(), v45 = v177, v160 = v37, v161 = v36, !v177))
            {
LABEL_100:

              result = sub_1973FF47C(v32);
              v141 = v182[0];
              v142 = v153;
              *(v153 + 16) = 0;
              v143 = v162;
              *v142 = v141;
              v142[1] = v143;
              return result;
            }
          }

          else
          {
            v42 = v36;
            v43 = v37;
            for (i = v36; !v43; ++v42)
            {
              i = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                goto LABEL_102;
              }

              if (i >= v41)
              {
                goto LABEL_100;
              }

              v43 = *(v34 + 8 * i);
            }

            v160 = (v43 - 1) & v43;
            v161 = i;
            v45 = *(*(v32 + 48) + ((i << 9) | (8 * __clz(__rbit64(v43)))));

            if (!v45)
            {
              goto LABEL_100;
            }
          }

          v48 = MEMORY[0x19A8E1370](v46);
          swift_beginAccess();
          v15 = *(v45 + 16);
          v16 = *(v45 + 24);

          v49 = sub_19752178C();
          v170 = v45;
          v50 = v49;
          v51 = [v164 objectIDsForRelationshipNamed_];

          sub_1973F3D34(0, qword_1ED7C7910, 0x1E695D630);
          v52 = sub_1975219CC();

          if (*(v170 + 168))
          {
            if (v52 >> 62)
            {
              if (sub_1975220EC() <= 0)
              {
                goto LABEL_28;
              }

              if (!sub_1975220EC())
              {
                goto LABEL_110;
              }

LABEL_42:
              v159 = v48;
              if ((v52 & 0xC000000000000001) != 0)
              {
                v53 = MEMORY[0x19A8E0960](0, v52);
              }

              else
              {
                if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_107;
                }

                v53 = *(v52 + 32);
              }

              v54 = v53;

              v55 = v33[4];

              v56 = sub_1974248B8(v15, v16, v55);

              if (v56)
              {
                v179 = &type metadata for PersistentIdentifier;
                v180 = sub_197412644();
                v181 = sub_197411E68();
                *&v177 = v54;
                BYTE8(v177) = 0;
                sub_1974028A0(&v177, &v174);
                v57 = v54;
                v58 = v182[0];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v176[0] = v58;
                v60 = __swift_mutable_project_boxed_opaque_existential_2(&v174, v175);
                MEMORY[0x1EEE9AC00](v60, v60);
                v62 = &v152 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v63 + 16))(v62);
                sub_197422EA0(*v62, v62[8], v15, v16, isUniquelyReferenced_nonNull_native, v176);

                __swift_destroy_boxed_opaque_existential_1Tm(&v174);
                v182[0] = v176[0];
                v64 = [v169 objectWithID_];
                sub_197424778(v64);
              }

              else
              {
                *&v177 = v162;
                BYTE8(v177) = 0;

                sub_19746C188(v54, &v177, v15, v16);

                v179 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
                v180 = sub_1973FF3D4();
                v181 = sub_1973FF428();
                *&v177 = v15;
                *(&v177 + 1) = v16;
                v178 = 3;
                sub_1974028A0(&v177, &v174);

                v79 = v182[0];
                v80 = swift_isUniquelyReferenced_nonNull_native();
                v176[0] = v79;
                v81 = __swift_mutable_project_boxed_opaque_existential_2(&v174, v175);
                MEMORY[0x1EEE9AC00](v81, v81);
                v83 = &v152 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v84 + 16))(v83);
                sub_197404514(*v83, *(v83 + 1), v83[16], v15, v16, v80, v176);

                __swift_destroy_boxed_opaque_existential_1Tm(&v174);
                v182[0] = v176[0];
              }

              v41 = v157;
              v48 = v159;
              v32 = v155;
            }

            else
            {
              if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_42;
              }

LABEL_28:
            }

LABEL_29:
            objc_autoreleasePoolPop(v48);

            v37 = v160;
            v36 = v161;
            continue;
          }

          break;
        }

        v171 = v52;
        v65 = v33[4];
        v66 = *(v65 + 16);
        v159 = v48;
        if (v66)
        {
          sub_197522A5C();

          sub_19752180C();
          v67 = sub_197522A9C();
          v68 = -1 << *(v65 + 32);
          v69 = v67 & ~v68;
          if ((*(v65 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
          {
            v70 = ~v68;
            while (1)
            {
              v71 = (*(v65 + 48) + 16 * v69);
              v72 = *v71 == v15 && v71[1] == v16;
              if (v72 || (sub_19752282C() & 1) != 0)
              {
                break;
              }

              v69 = (v69 + 1) & v70;
              if (((*(v65 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            v85 = v171;
            if (!(v171 >> 62))
            {
              v86 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v86)
              {
                goto LABEL_64;
              }

              goto LABEL_98;
            }

            v133 = v171;
            v86 = sub_1975220EC();
            v85 = v133;
            if (!v86)
            {
LABEL_98:

              v89 = MEMORY[0x1E69E7CC0];
LABEL_99:
              v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
              v180 = sub_197412698(&qword_1ED7C77C0, sub_197412644, MEMORY[0x1E69E6330]);
              v181 = sub_197412698(&qword_1ED7C77C8, sub_197411E68, MEMORY[0x1E69E6300]);
              *&v177 = v89;
              sub_1974028A0(&v177, &v174);
              v134 = v182[0];
              v135 = swift_isUniquelyReferenced_nonNull_native();
              v176[0] = v134;
              v136 = __swift_mutable_project_boxed_opaque_existential_2(&v174, v175);
              MEMORY[0x1EEE9AC00](v136, v136);
              v138 = (&v152 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v139 + 16))(v138);
              sub_197412800(*v138, v15, v16, v135, v176);

              __swift_destroy_boxed_opaque_existential_1Tm(&v174);
              v182[0] = v176[0];
              v41 = v157;
              v48 = v159;
              goto LABEL_29;
            }

LABEL_64:
            v87 = v85;
            *&v174 = MEMORY[0x1E69E7CC0];
            sub_197411CB8(0, v86 & ~(v86 >> 63), 0);
            if (v86 < 0)
            {
              goto LABEL_108;
            }

            v165 = v86;
            v166 = v16;
            v88 = 0;
            v89 = v174;
            v90 = v87;
            v167 = v15;
            v168 = v87 & 0xC000000000000001;
            v158 = v87 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              v91 = v88 + 1;
              if (__OFADD__(v88, 1))
              {
                goto LABEL_103;
              }

              if (v168)
              {
                v92 = MEMORY[0x19A8E0960](v88, v90);
              }

              else
              {
                if (v88 >= *(v158 + 16))
                {
                  goto LABEL_105;
                }

                v92 = *(v90 + 8 * v88 + 32);
              }

              v173 = v92;
              v93 = [v169 objectWithID_];
              v94 = [v93 objectID];
              swift_beginAccess();
              v95 = v33[2];
              if (!*(v95 + 16))
              {
                goto LABEL_75;
              }

              v96 = sub_197403C30(v94, 0);
              if ((v97 & 1) == 0)
              {
                break;
              }

              v98 = *(v95 + 56) + 24 * v96;
              v99 = *(v98 + 8);
              v100 = *(v98 + 16);

              sub_1974028EC(v99, v100);

              v101 = v99;
              v15 = v167;
              v102 = v100;
              v33 = v172;
              sub_1974028C8(v101, v102);
LABEL_86:
              v119 = v173;
              *&v174 = v89;
              v121 = *(v89 + 16);
              v120 = *(v89 + 24);
              if (v121 >= v120 >> 1)
              {
                sub_197411CB8((v120 > 1), v121 + 1, 1);
                v89 = v174;
              }

              *(v89 + 16) = v121 + 1;
              v122 = v89 + 16 * v121;
              *(v122 + 32) = v119;
              *(v122 + 40) = 0;
              ++v88;
              v16 = v166;
              v90 = v171;
              if (v91 == v165)
              {

                v32 = v155;
                v34 = v156;
                goto LABEL_99;
              }
            }

LABEL_75:
            swift_beginAccess();
            v103 = v93;
            v15 = swift_isUniquelyReferenced_nonNull_native();
            v176[0] = v33[3];
            v104 = v176[0];
            v33[3] = 0x8000000000000000;
            v106 = sub_197403C30(v94, 0);
            v107 = *(v104 + 16);
            v108 = (v105 & 1) == 0;
            v109 = v107 + v108;
            if (__OFADD__(v107, v108))
            {
              goto LABEL_104;
            }

            v16 = v105;
            if (*(v104 + 24) >= v109)
            {
              if ((v15 & 1) == 0)
              {
                sub_19747A77C();
              }
            }

            else
            {
              sub_197425540(v109, v15);
              v110 = sub_197403C30(v94, 0);
              if ((v16 & 1) != (v111 & 1))
              {
                goto LABEL_109;
              }

              v106 = v110;
            }

            v15 = v167;
            v112 = v176[0];
            if (v16)
            {
              v113 = *(v176[0] + 56);
              v114 = *(v113 + 8 * v106);
              *(v113 + 8 * v106) = v103;
            }

            else
            {
              *(v176[0] + 8 * (v106 >> 6) + 64) |= 1 << v106;
              v115 = v112[6] + 16 * v106;
              *v115 = v94;
              *(v115 + 8) = 0;
              *(v112[7] + 8 * v106) = v103;
              v116 = v112[2];
              v117 = __OFADD__(v116, 1);
              v118 = v116 + 1;
              if (v117)
              {
                goto LABEL_106;
              }

              v112[2] = v118;
            }

            v33 = v172;
            v172[3] = v112;
            swift_endAccess();

            goto LABEL_86;
          }

LABEL_56:
        }

        v73 = v33[5];
        swift_beginAccess();
        v74 = *(v73 + 48);
        v75 = *(v74 + 16);

        if (v75)
        {

          v76 = sub_197403C30(v162, 0);
          if (v77)
          {
            v78 = *(*(v74 + 56) + 8 * v76);

LABEL_92:

            v123 = v171;

            v124 = swift_isUniquelyReferenced_nonNull_native();
            *&v177 = v78;
            sub_197400C64(v123, v15, v16, v124);

            v125 = v177;
            swift_beginAccess();
            v126 = v162;
            sub_1974028EC(v162, 0);
            v127 = swift_isUniquelyReferenced_nonNull_native();
            *&v174 = *(v73 + 48);
            *(v73 + 48) = 0x8000000000000000;
            sub_1974013F4(v125, v126, 0, v127);

            *(v73 + 48) = v174;
            swift_endAccess();

            v179 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
            v180 = sub_1973FF3D4();
            v181 = sub_1973FF428();
            *&v177 = v15;
            *(&v177 + 1) = v16;
            v178 = 4;
            sub_1974028A0(&v177, &v174);

            v128 = v182[0];
            LOBYTE(v126) = swift_isUniquelyReferenced_nonNull_native();
            v176[0] = v128;
            v129 = __swift_mutable_project_boxed_opaque_existential_2(&v174, v175);
            MEMORY[0x1EEE9AC00](v129, v129);
            v131 = &v152 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v132 + 16))(v131);
            sub_197404514(*v131, *(v131 + 1), v131[16], v15, v16, v126, v176);

            __swift_destroy_boxed_opaque_existential_1Tm(&v174);
            v182[0] = v176[0];
            v34 = v156;
            v41 = v157;
            v48 = v159;
            goto LABEL_29;
          }
        }

        v78 = sub_19740141C(MEMORY[0x1E69E7CC0]);
        goto LABEL_92;
      }
    }
  }

  *&v177 = 0;
  *(&v177 + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197523DF0);
  *&v174 = v5;
  sub_19752235C();
  MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
  v148 = [v164 description];
  v149 = sub_1975217BC();
  v151 = v150;

  MEMORY[0x19A8DFF80](v149, v151);

LABEL_113:
  result = sub_1975223EC();
  __break(1u);
  return result;
}